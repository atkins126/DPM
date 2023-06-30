unit DPM.IDE.GroupEditorViewFrame;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ToolsApi,
  Spring.Container,
  Spring.Collections,
  VSoft.Awaitable,
  DPM.Core.Package.Interfaces,
  DPM.Core.Dependency.Interfaces,
  DPM.IDE.Details.Interfaces,
  DPM.IDE.ProjectTreeManager,
  DPM.IDE.Logger,
  DPM.IDE.BaseEditViewFrame, Vcl.ExtCtrls, DPM.IDE.GroupPackageDetailsFrame;

{$I ..\DPMIDE.inc}

type
  TDPMGroupEditViewFrame = class(TDPMBaseEditViewFrame, IDetailsHost)
    PackageDetailsFrame: TGroupPackageDetailsFrame;
  private
    FLogger : IDPMIDELogger;
  protected
    function IsProjectGroup : boolean;override;
    function GetPackageDetailsView : IPackageDetailsView;override;
    function DoGetPackageReferences : IPackageReference;override;
    procedure ConfigureSearchBar;override;
  public
    constructor Create(AOwner : TComponent); override;
    procedure Configure(const projectOrGroup : IOTAProject; const container : TContainer; const projectTreeManager : IDPMProjectTreeManager);override;
    procedure ViewSelected;override;
    procedure ViewDeselected;override;
    procedure Closing;override;
    procedure ProjectChanged;override;
    procedure ThemeChanged;override;
  end;

implementation

{$R *.dfm}

uses
  DPM.Core.Types,
  DPM.Core.Project.Interfaces,
  DPM.Core.Project.Editor,
  DPM.Core.Dependency.Graph,
  DPM.IDE.Types;


{ TDPMGroupEditViewFrame }

procedure TDPMGroupEditViewFrame.Closing;
begin
  inherited;
end;

procedure TDPMGroupEditViewFrame.Configure(const projectOrGroup: IOTAProject; const container: TContainer; const projectTreeManager: IDPMProjectTreeManager);
begin
  inherited;
  FLogger := container.Resolve<IDPMIDELogger>;
  //CurrentPlatform := SearchBar.Platform;
end;

procedure TDPMGroupEditViewFrame.ConfigureSearchBar;
var
  platforms : TDPMPlatforms;
  i : integer;
  projectEditor : IProjectEditor;
begin
  //it would be nice to use the open tools api to do this, but so far
  // - Project.SupportedPlatforms returns all platforms, whether they are enabled for the project or not
  // - BuildConfig.Platforms is empty.

  //doing it this way is not ideal, as it requires that the project has been saved after a platform was added.
  projectEditor := TProjectEditor.Create(Logger, Configuration, IDECompilerVersion);
  platforms := [];//TDPMPlatform.Win32,TDPMPlatform.Win64, TDPMPlatform.OSX32];
  for i := 0 to ProjectGroup.ProjectCount -1 do
  begin
    projectEditor.LoadProject(ProjectGroup.Projects[i].FileName, [TProjectElement.Platforms]);
    platforms := platforms + projectEditor.Platforms;
  end;

  SearchBar.Configure(Logger, DPMIDEOptions, Configuration, ConfigurationManager, SearchOptions.ConfigFile, platforms);
end;

constructor TDPMGroupEditViewFrame.Create(AOwner: TComponent);
begin
  inherited;

end;



function TDPMGroupEditViewFrame.GetPackageDetailsView: IPackageDetailsView;
begin
  result := PackageDetailsFrame as IPackageDetailsView;
end;

function TDPMGroupEditViewFrame.DoGetPackageReferences: IPackageReference;
var
  projectEditor : IProjectEditor;
  proj : IOTAProject;
  i : integer;
  packageReference : IPackageReference;
  sProjectId : string;
begin
  projectEditor := TProjectEditor.Create(Logger, Configuration, IDECompilerVersion);
  result := TPackageReference.CreateRoot(IDECompilerVersion, CurrentPlatform);

  for i := 0 to ProjectGroup.ProjectCount -1 do
  begin
    proj := ProjectGroup.Projects[i];
    sProjectId := proj.FileName;
    projectEditor.LoadProject(sProjectId);
    packageReference := projectEditor.GetPackageReferences(CurrentPlatform); //NOTE : Can return nil. Will change internals to return empty root node.
    if packageReference <> nil then
    begin
      sProjectId := ChangeFileExt(ExtractFileName(sProjectId), '');
      Result.AddExistingReference(LowerCase(sProjectId), packageReference);
    end;
  end;

end;

function TDPMGroupEditViewFrame.IsProjectGroup: boolean;
begin
  result := true;
end;

procedure TDPMGroupEditViewFrame.ProjectChanged;
begin
  inherited;
  FLogger.Debug('DPMGroupEditViewFrame.ProjectReloaded');
//  DoPlatformChange(SearchBar.Platform);
// ConfigureSearchBar;

end;

procedure TDPMGroupEditViewFrame.ThemeChanged;
begin
  inherited;

end;

procedure TDPMGroupEditViewFrame.ViewDeselected;
begin
  inherited;
end;

procedure TDPMGroupEditViewFrame.ViewSelected;
begin
  inherited;
end;

end.
