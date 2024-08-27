{***************************************************************************}
{                                                                           }
{           Delphi Package Manager - DPM                                    }
{                                                                           }
{           Copyright � 2019 Vincent Parrett and contributors               }
{                                                                           }
{           vincent@finalbuilder.com                                        }
{           https://www.finalbuilder.com                                    }
{                                                                           }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  Licensed under the Apache License, Version 2.0 (the "License");          }
{  you may not use this file except in compliance with the License.         }
{  You may obtain a copy of the License at                                  }
{                                                                           }
{      http://www.apache.org/licenses/LICENSE-2.0                           }
{                                                                           }
{  Unless required by applicable law or agreed to in writing, software      }
{  distributed under the License is distributed on an "AS IS" BASIS,        }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. }
{  See the License for the specific language governing permissions and      }
{  limitations under the License.                                           }
{                                                                           }
{***************************************************************************}

unit DPM.Core.Compiler.BOM;

interface

uses
  DPM.Core.Logging,
  DPM.Core.Dependency.Interfaces;


type
  TBOMFile = class
  public
    class function LoadFromFile(const logger : ILogger; const fileName : string) : IPackageReference;
    class function SaveToFile(const logger : ILogger; const fileName : string; const packageReference : IPackageReference) : boolean;
  end;


implementation

uses
  JsonDataObjects,
  System.SysUtils,
  Spring.Collections,
  DPM.Core.Types,
  DPM.Core.Dependency.Reference,
  DPM.Core.Dependency.Version;

const
  cBOMFileHeader = '# DPM Bill Of Materials - THIS IS AN AUTOGENERATED FILE. DO NOT EDIT THIS FILE DIRECTLY.';


{ TBOMFile }

class function TBOMFile.LoadFromFile(const logger : ILogger; const fileName: string): IPackageReference;
var
  jsonObj : TJsonObject;
  depArray : TJsonArray;
  sId : string;
  sVersion : string;
  version : TPackageVersion;
  platform : TDPMPlatform;
  i : integer;
begin
  result := nil;
  if not FileExists(fileName) then
  begin
    Logger.Error('BOM File [' + fileName + '] does not exist');
    exit;
  end;
  try
    jsonObj := TJsonObject.ParseFromFile(fileName) as TJsonObject;
    try
      sId := jsonObj.S['id'];
      sVersion := jsonObj.S['version'];
      version := TPackageVersion.Parse(sVersion);
      platform := StringToDPMPlatform(jsonObj.S['platform']);

      //we don't need the compiler version for this - if that changes we will need to pass it it.
      result := TPackageReference.Create(nil,sId, version, platform, TCompilerVersion.UnknownVersion, TVersionRange.Empty,false);

      if jsonObj.Contains('dependencies') then
      begin
        depArray := jsonObj.A['dependencies'];
        for i := 0 to depArray.Count - 1 do
        begin
          sId := depArray.Values[i].S['id'];
          sVersion := depArray.Values[i].S['version'];
          version := TPackageVersion.Parse(sVersion);
          result.AddChild(sId,version, TVersionRange.Empty);
        end;
      end;
    finally
      jsonObj.Free;
    end;
  except
    on e : Exception do
    begin
      Logger.Error('Error parsing BOM json : ' + e.Message);
      result := nil;
    end;
  end;

end;

class function TBOMFile.SaveToFile(const logger : ILogger; const fileName: string; const packageReference : IPackageReference): boolean;
var
  jsonObj : TJsonObject;

begin
  jsonObj := TJsonObject.Create;
  try
    try
      jsonObj.S['id'] := packageReference.Id;
      jsonObj.S['version'] := packageReference.Version.ToStringNoMeta;
      jsonObj.S['platform'] := DPMPlatformToString(packageReference.Platform);
      if packageReference.HasChildren then
      begin
        packageReference.Children.ForEach(
          procedure(const dependency : IPackageReference)
          var
            depObj : TJsonObject;
          begin
            depObj := jsonObj.A['dependencies'].AddObject;
            depObj.S['id'] := dependency.Id;
            depObj.S['version'] := dependency.Version.ToStringNoMeta;
          end);
      end;
      jsonObj.SaveToFile(fileName, false, TEncoding.UTF8);
      result := true;

    finally
      jsonObj.Free;
    end;
  except
    on e : Exception do
    begin
      Logger.Error('Error parsing BOM json : ' + e.Message);
      result := false;
    end;
  end;

end;

end.
