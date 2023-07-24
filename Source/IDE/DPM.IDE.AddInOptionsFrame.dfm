object DPMOptionsFrame: TDPMOptionsFrame
  Left = 0
  Top = 0
  Width = 668
  Height = 504
  TabOrder = 0
  object pgOptions: TPageControl
    Left = 0
    Top = 0
    Width = 668
    Height = 504
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = tsSources
    Align = alClient
    TabHeight = 24
    TabOrder = 0
    object tsSources: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = ' Package Sources '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 660
        Height = 89
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          660
          89)
        object lblPackageSources: TLabel
          Left = 16
          Top = 61
          Width = 108
          Height = 13
          Caption = ' DPM Package Sources'
        end
        object Label3: TLabel
          Left = 16
          Top = 12
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Package cache folder :'
        end
        object SpeedButton1: TSpeedButton
          Left = 479
          Top = 61
          Width = 41
          Height = 24
          Action = actAddSource
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          ExplicitLeft = 520
        end
        object SpeedButton2: TSpeedButton
          Left = 524
          Top = 61
          Width = 41
          Height = 24
          Action = actRemoveSource
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          ExplicitLeft = 565
        end
        object SpeedButton3: TSpeedButton
          Left = 569
          Top = 61
          Width = 41
          Height = 24
          Action = actMoveSourceUp
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          ExplicitLeft = 610
        end
        object SpeedButton4: TSpeedButton
          Left = 614
          Top = 61
          Width = 41
          Height = 24
          Action = actMoveSourceDown
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          ExplicitLeft = 655
        end
        object txtPackageCacheLocation: TButtonedEdit
          Left = 16
          Top = 28
          Width = 409
          Height = 21
          DoubleBuffered = True
          Images = dpmOptionsImageList
          ParentDoubleBuffered = False
          RightButton.Hint = 'Sected Folder'
          RightButton.ImageIndex = 4
          RightButton.Visible = True
          TabOrder = 0
          OnRightButtonClick = txtPackageCacheLocationRightButtonClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 259
        Width = 660
        Height = 211
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 6
          Width = 70
          Height = 13
          Caption = 'Source Name :'
        end
        object Label2: TLabel
          Left = 24
          Top = 49
          Width = 94
          Height = 13
          Caption = 'Source Path or Uri :'
        end
        object Label5: TLabel
          Left = 24
          Top = 97
          Width = 92
          Height = 13
          Caption = 'Source UserName :'
        end
        object Label6: TLabel
          Left = 24
          Top = 145
          Width = 158
          Height = 13
          Caption = 'Source Password/Access Token :'
        end
        object Label8: TLabel
          Left = 481
          Top = 6
          Width = 67
          Height = 13
          Caption = 'Source Type :'
        end
        object txtName: TEdit
          Left = 24
          Top = 22
          Width = 409
          Height = 21
          TabOrder = 0
          OnChange = txtNameChange
        end
        object txtUri: TButtonedEdit
          Left = 24
          Top = 65
          Width = 409
          Height = 21
          Images = dpmOptionsImageList
          RightButton.ImageIndex = 4
          RightButton.Visible = True
          TabOrder = 1
          OnChange = txtUriChange
          OnRightButtonClick = txtUriRightButtonClick
        end
        object txtUserName: TEdit
          Left = 24
          Top = 113
          Width = 409
          Height = 21
          TabOrder = 2
          OnChange = txtUserNameChange
        end
        object txtPassword: TEdit
          Left = 24
          Top = 161
          Width = 409
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
          OnChange = txtPasswordChange
        end
        object cboSourceType: TComboBox
          Left = 480
          Top = 22
          Width = 171
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Folder'
          OnChange = cboSourceTypeChange
          Items.Strings = (
            'Folder'
            'DPMServer'
            'DPMGithub'
            'DNGithub')
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 89
        Width = 660
        Height = 170
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 2
        object lvSources: TListView
          Left = 0
          Top = 0
          Width = 660
          Height = 170
          Align = alClient
          BevelInner = bvNone
          Checkboxes = True
          Columns = <
            item
              Caption = 'Name'
              MinWidth = 100
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'Uri'
            end
            item
              Caption = 'Type'
              MinWidth = 100
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'UserName'
              MinWidth = 100
            end>
          ColumnClick = False
          RowSelect = True
          ShowWorkAreas = True
          TabOrder = 0
          ViewStyle = vsReport
          OnSelectItem = lvSourcesSelectItem
        end
      end
    end
    object tsIDEOptions: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = ' IDE Options '
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlIDEOptions: TPanel
        Left = 0
        Top = 0
        Width = 660
        Height = 470
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlIDEOptions'
        ShowCaption = False
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 24
          Width = 65
          Height = 13
          Caption = 'Logging Level'
        end
        object Label7: TLabel
          Left = 24
          Top = 88
          Width = 95
          Height = 13
          Caption = 'Show Log View for :'
        end
        object Label9: TLabel
          Left = 264
          Top = 131
          Width = 132
          Height = 13
          Caption = 'Auto Close Delay (seconds)'
        end
        object Label10: TLabel
          Left = 24
          Top = 196
          Width = 79
          Height = 13
          Caption = 'Project Manager'
        end
        object Label11: TLabel
          Left = 56
          Top = 238
          Width = 239
          Height = 13
          Caption = 'Experimental - very slow for large project groups.'
          Enabled = False
        end
        object chkShowForInstall: TCheckBox
          Left = 40
          Top = 132
          Width = 97
          Height = 17
          Caption = 'Install'
          TabOrder = 0
        end
        object chkShowForRestore: TCheckBox
          Left = 40
          Top = 107
          Width = 97
          Height = 17
          Caption = 'Restore'
          TabOrder = 1
        end
        object chkShowForUninstall: TCheckBox
          Left = 40
          Top = 158
          Width = 97
          Height = 17
          Caption = 'Uninstall'
          TabOrder = 2
        end
        object spAutoCloseDelay: TSpinEdit
          Left = 264
          Top = 150
          Width = 121
          Height = 22
          MaxValue = 30
          MinValue = 0
          TabOrder = 3
          Value = 0
        end
        object chkAutoClose: TCheckBox
          Left = 240
          Top = 107
          Width = 177
          Height = 17
          Caption = 'Auto Close Log View on success'
          TabOrder = 4
          OnClick = chkAutoCloseClick
        end
        object cboLogLevel: TComboBox
          Left = 24
          Top = 43
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 5
          Text = 'Normal'
          Items.Strings = (
            'Quiet'
            'Normal'
            'Detailed'
            'Debug')
        end
        object chkShowOnProjectTree: TCheckBox
          Left = 40
          Top = 215
          Width = 241
          Height = 17
          Caption = 'Show DPM Node in Project Manager'
          TabOrder = 6
        end
      end
    end
  end
  object dpmOptionsActionList: TActionList
    Images = dpmOptionsImageList
    OnUpdate = dpmOptionsActionListUpdate
    Left = 576
    Top = 128
    object actAddSource: TAction
      Hint = 'Add Source'
      ImageIndex = 0
      OnExecute = actAddSourceExecute
    end
    object actRemoveSource: TAction
      Hint = 'Remove Source'
      ImageIndex = 1
      OnExecute = actRemoveSourceExecute
    end
    object actMoveSourceUp: TAction
      Hint = 'Move Up'
      ImageIndex = 2
      OnExecute = actMoveSourceUpExecute
    end
    object actMoveSourceDown: TAction
      Hint = 'Move Down'
      ImageIndex = 3
      OnExecute = actMoveSourceDownExecute
    end
  end
  object dpmOptionsImageList: TImageList
    Left = 568
    Top = 64
    Bitmap = {
      494C010105000900140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000238FBB00218B
      B7002187B2002187B2002187B2002187B2002187B2002187B2002889B3002A8A
      B3002C8BB3002F8CB40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB800259DCA002CAC
      DB0031AEDC0035B0DC0041B5DF004BB9E00057BEE20060C2E40072C8E70077CB
      E7007ECDE90083CFEA0039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80030A5D0004AB8
      E0005BC0E3006AC6E6007BCDE80086D1EA0092D5EC0097D7ED009DDAEE00A2DC
      EF00A8DEF000ADE0F10039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80037A8D10064C3
      E50080CEE9008CD3EB0096D7ED009BD9EE00A1DBEF00A6DDF000ACE0F100B1E2
      F200B7E4F300BCE6F40039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80039A5CE007ECE
      E9009DDAEE00A2DCEF00A8DEF000ACE0F100B2E2F200B7E4F300BDE7F400C1E8
      F500C6EAF600CBECF70039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80039A5CE009DDA
      EE00A9DFF000AEE1F100B4E3F200B8E5F300BEE7F400C4E9F600C9ECF600CFEE
      F800D4F0F800DAF2FA0039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80039A5CE00CFEE
      F800E6F8FC00E6F8FC00CEEEF700CDEDF700D1EFF800D6F1F900DCF3FA00E1F5
      FB00E7F8FC00ECFAFD0039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80039A5CE0039A5
      CE0039A5CE0039A5CE0029ADD600DAF3FA00E6F8FC00E6F8FC00EBF9FD00F0FB
      FE00F5FDFE00F7FEFE0039A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB8002BADD80036B1
      DD0054BDE3006EC7E70069C5E50039A5CE0039A5CE0039A5CE0081521D008152
      1D0081521D0081521D0081521D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB80043B7DC0080CE
      EA0092D5ED009EDAEE00A8DEF00094D6EB008DD4EA008DD4EA0081521D00FFFF
      FF0022A1220022A1220081521D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000248CB8004EB8DB00AADF
      F000C0E8F400E6F8FC00E6F8FC00CBECF60039A5CE000000000081521D0022A1
      220027B5270027B5270081521D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039A5CE0039A5
      CE0039A5CE0039A5CE0039A5CE0039A5CE00000000000000000081521D0027B5
      2700FFFFFF0027B5270022A12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000081521D008152
      1D0081521D0081521D0027B5270022A122000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000027B527000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000000000000000
      000000000000D0A2840098867100988671009886710098867100988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6A584009C84730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      000000000000000000000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFC99200FFC99200FFC99200988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6A58400FFCEA500EFBD8C009C847300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6A58400FFCEA500FFBD8400FFBD8400FFB57B00FFB57B00EFBD8C009C84
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8400FFCEA500FFBD8400FFBD8400FFBD8400FFB57B00FFB57B00FFB57B00EFBD
      8C009C8473000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      0000000000000000000000000000000000000000000000000000D6A58400FFCE
      A500FFCE9400FFCE9400FFCE9400FFBD8400FFB57B00EFBD8C00EFBD8C00EFBD
      8C00EFBD8C009C8473000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      00000000000000000000000000000000000000000000D6A58400D6A58400D6A5
      8400D6A58400D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473009C84
      73009C8473009C8473009C847300000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      00000000000000000000000000000000000000000000D0A28400D0A28400D0A2
      8400D0A28400D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671009886
      7100988671009886710098867100000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000D0A28400F9CA
      A700FFC99200FFC99200FFC99200FFBB8100FFB47B00EEBA8E00EEBA8E00EEBA
      8E00EEBA8E009886710000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F70000000000000000000000000000000000000000000000000000000000D0A2
      8400F9CAA700FFBB8100FFBB8100FFBB8100FFB47B00FFB47B00FFB47B00EEBA
      8E00988671000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F7000000000000000000000000000000000000000000000000000000
      0000D0A28400F9CAA700FFBB8100FFBB8100FFB47B00FFB47B00EEBA8E009886
      7100000000000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000000000000000
      000000000000D0A28400F9CAA700FFBB8100FFB47B00EEBA8E00988671000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFBD8400FFB57B00EFBD8C009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0A28400F9CAA700EEBA8E0098867100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A58400FFCEA500FFCE9400FFCE9400FFCE94009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0A284009886710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A584009C8473009C8473009C8473009C8473009C8473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      C003000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      800100000000000080010000000000008041000000000000C0C1000000000000
      FFC0000000000000FFFE000000000000FFFFFFFCF81FFE7FFC3F9FF9F81FFC3F
      FC3F8FF3F81FF81FFC3F87E7F81FF00FFC3FC3CFF81FE007FC3FF11FF81FC003
      8001F83FF81F80018001FC7FF81FF81F8001F83F8001F81F8001F19FC003F81F
      FC3FE3CFE007F81FFC3FC7E7F00FF81FFC3F8FFBF81FF81FFC3F1FFFFC3FF81F
      FC3F3FFFFE7FF81FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object FolderSelectDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoPathMustExist, fdoCreatePrompt, fdoShareAware]
    Title = 'Select Folder'
    Left = 560
    Top = 376
  end
end
