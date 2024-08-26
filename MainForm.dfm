object MainPFPForm: TMainPFPForm
  Left = 307
  Top = 103
  Caption = #1056#1072#1089#1095#1077#1090' '#1055#1060#1055' '#1084#1077#1090#1086#1076#1086#1084' '#1084#1086#1076#1080#1092#1080#1094#1080#1088#1086#1074#1072#1085#1085#1086#1075#1086' '#1072#1073#1089#1086#1083#1102#1090#1085#1086#1075#1086' '#1088#1072#1089#1095#1077#1090#1072
  ClientHeight = 499
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Bevel1: TBevel
    Left = 256
    Top = 96
    Width = 50
    Height = 50
  end
  object Bevel2: TBevel
    Left = 216
    Top = 120
    Width = 50
    Height = 50
  end
  object SB: TStatusBar
    Left = 0
    Top = 480
    Width = 678
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Text = #1050#1086#1083'-'#1074#1086' '#1074#1072#1088#1080#1072#1085#1090#1086#1074':'
        Width = 100
      end
      item
        Width = 62
      end
      item
        Text = #1042#1088#1077#1084#1103' '#1088#1072#1089#1095#1077#1090#1072':'
        Width = 84
      end
      item
        Width = 53
      end
      item
        Text = #1054#1073#1097#1080#1077' '#1079#1072#1090#1088#1072#1090#1099' '#1074'-'#1095':'
        Width = 110
      end
      item
        Width = 55
      end
      item
        Text = #1050#1086#1083'-'#1074#1086' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1081':'
        Width = 110
      end
      item
        Width = 50
      end>
    UseSystemFont = False
    ExplicitTop = 471
    ExplicitWidth = 672
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 678
    Height = 27
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
    ExplicitWidth = 672
  end
  object PC: TPageControl
    Left = 0
    Top = 59
    Width = 678
    Height = 402
    ActivePage = tsData
    Align = alClient
    HotTrack = True
    Style = tsFlatButtons
    TabOrder = 2
    ExplicitWidth = 672
    ExplicitHeight = 393
    object tsData: TTabSheet
      Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      object Splitter1: TSplitter
        Left = 0
        Top = 171
        Width = 670
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        ExplicitTop = 165
      end
      object Panel1: TPanel
        Left = 0
        Top = 176
        Width = 670
        Height = 195
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 186
        object Splitter2: TSplitter
          Left = 455
          Top = 0
          Width = 5
          Height = 195
          Align = alRight
          Beveled = True
          ExplicitLeft = 461
          ExplicitHeight = 236
        end
        object Panel5: TPanel
          Left = 460
          Top = 0
          Width = 210
          Height = 195
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 454
          ExplicitHeight = 186
          object Panel6: TPanel
            Left = 183
            Top = 0
            Width = 27
            Height = 195
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 186
            object ActionToolBar1: TActionToolBar
              Left = 0
              Top = 0
              Width = 27
              Height = 195
              ActionManager = ActionManager1
              Align = alClient
              Caption = 'ActionToolBar1'
              Color = clMenuBar
              ColorMap.DisabledFontColor = 7171437
              ColorMap.HighlightColor = clWhite
              ColorMap.BtnSelectedFont = clBlack
              ColorMap.UnusedColor = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              ExplicitHeight = 186
            end
          end
          object MarLB: TListBox
            Left = 0
            Top = 0
            Width = 183
            Height = 195
            Align = alClient
            ItemHeight = 13
            TabOrder = 1
            ExplicitHeight = 186
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 455
          Height = 195
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 449
          ExplicitHeight = 186
          object VSG: TStringGrid
            Left = 0
            Top = 0
            Width = 428
            Height = 195
            Align = alClient
            DefaultColWidth = 40
            DefaultRowHeight = 19
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor]
            TabOrder = 0
            OnDrawCell = VSGDrawCell
            OnSelectCell = VSGSelectCell
            ExplicitWidth = 422
            ExplicitHeight = 186
          end
          object ActionToolBar4: TActionToolBar
            Left = 428
            Top = 0
            Width = 27
            Height = 195
            ActionManager = ActionManager1
            Align = alRight
            Caption = 'ActionToolBar4'
            Color = clMenuBar
            ColorMap.DisabledFontColor = 7171437
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedFont = clBlack
            ColorMap.UnusedColor = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Spacing = 0
            ExplicitLeft = 422
            ExplicitHeight = 186
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 670
        Height = 171
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 664
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 670
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 664
          object Label1: TLabel
            Left = 128
            Top = 12
            Width = 142
            Height = 13
            Caption = #1055#1088#1080#1084#1077#1088#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1088#1072#1089#1095#1077#1090#1072': '
          end
          object Label2: TLabel
            Left = 269
            Top = 12
            Width = 3
            Height = 13
          end
          object Label4: TLabel
            Left = 0
            Top = 36
            Width = 56
            Height = 13
            Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          end
          object Label5: TLabel
            Left = 128
            Top = 36
            Width = 91
            Height = 13
            Caption = #1083#1091#1095#1096#1080#1093' '#1074#1072#1088#1080#1072#1085#1090#1086#1074
          end
          object Label6: TLabel
            Left = 8
            Top = 12
            Width = 42
            Height = 13
            Caption = #1057#1090#1072#1085#1094#1080#1081
          end
          object SEST: TSpinEdit
            Left = 64
            Top = 8
            Width = 57
            Height = 22
            MaxValue = 12
            MinValue = 3
            TabOrder = 0
            Value = 4
            OnChange = SESTChange
          end
          object SEBC: TSpinEdit
            Left = 65
            Top = 32
            Width = 56
            Height = 22
            MaxValue = 100
            MinValue = 1
            TabOrder = 1
            Value = 5
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 65
          Width = 670
          Height = 106
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel4'
          TabOrder = 1
          ExplicitWidth = 664
          object CTSG: TStringGrid
            Left = 0
            Top = 0
            Width = 670
            Height = 106
            Align = alClient
            DefaultColWidth = 40
            DefaultRowHeight = 19
            RowCount = 3
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor]
            TabOrder = 0
            ExplicitWidth = 664
          end
        end
      end
    end
    object tsRes: TTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      ImageIndex = 1
      object pcRes: TPageControl
        Left = 0
        Top = 31
        Width = 670
        Height = 340
        ActivePage = tsPFP
        Align = alClient
        HotTrack = True
        Style = tsFlatButtons
        TabOrder = 0
        object tsPFP: TTabSheet
          Caption = #1055#1060#1055
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 662
            Height = 309
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object ResImg: TImage
              Left = 0
              Top = 0
              Width = 169
              Height = 286
              AutoSize = True
              PopupMenu = PopupMenu1
              Transparent = True
            end
          end
        end
        object tsShowings: TTabSheet
          Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080
          ImageIndex = 1
          object sgShw: TStringGrid
            Left = 0
            Top = 32
            Width = 662
            Height = 277
            Align = alClient
            DefaultColWidth = 45
            DefaultRowHeight = 19
            TabOrder = 0
          end
          object ActionToolBar3: TActionToolBar
            Left = 0
            Top = 0
            Width = 662
            Height = 32
            ActionManager = ActionManager1
            Caption = 'ActionToolBar3'
            Color = clMenuBar
            ColorMap.DisabledFontColor = 7171437
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedFont = clBlack
            ColorMap.UnusedColor = clWhite
            EdgeBorders = [ebTop]
            EdgeOuter = esLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Spacing = 0
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 670
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 72
          Height = 13
          Caption = #1042#1072#1088#1080#1072#1085#1090' '#1055#1060#1055
        end
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 670
          Height = 29
          Align = alTop
          Shape = bsBottomLine
          ExplicitWidth = 676
        end
        object PFPCB: TComboBox
          Left = 88
          Top = 4
          Width = 113
          Height = 21
          Style = csDropDownList
          DropDownCount = 20
          TabOrder = 0
          OnChange = PFPCBChange
        end
      end
    end
  end
  object ActionToolBar2: TActionToolBar
    Left = 0
    Top = 27
    Width = 678
    Height = 32
    ActionManager = ActionManager1
    Caption = 'ActionToolBar2'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebBottom]
    EdgeOuter = esLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Spacing = 0
    ExplicitWidth = 672
  end
  object SBN: TStatusBar
    Left = 0
    Top = 461
    Width = 678
    Height = 19
    Panels = <>
    SimplePanel = True
    SizeGrip = False
    ExplicitTop = 452
    ExplicitWidth = 672
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ANew
                ImageIndex = 0
              end
              item
                Caption = '-'
              end
              item
                Action = ALoad
                ImageIndex = 1
              end
              item
                Action = ASave
                ImageIndex = 2
              end
              item
                Action = ASaveAs
                ImageIndex = 2
              end
              item
                Caption = '-'
              end
              item
                Action = AClose
                ImageIndex = 6
              end>
            Caption = '&'#1056#1072#1089#1095#1077#1090
          end
          item
            Items = <
              item
                Action = ATreeMar
                ImageIndex = 37
              end
              item
                Caption = '-'
              end
              item
                Action = AAddMar
                ImageIndex = 60
              end
              item
                Action = ARemMar
                ImageIndex = 61
              end
              item
                Caption = '-'
              end
              item
                Action = AClearMar
                ImageIndex = 14
              end>
            Caption = '&'#1052#1072#1088#1096#1088#1091#1090#1099
          end
          item
            Items = <
              item
                Action = AForceNaz
                ImageIndex = 62
              end
              item
                Action = AExcudedNaz
                ImageIndex = 63
              end
              item
                Caption = '-'
              end
              item
                Action = ACalcPFP
                ImageIndex = 40
              end>
            Caption = '&'#1055#1083#1072#1085' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1077#1079#1076#1086#1074
          end
          item
            Items = <
              item
                Items = <
                  item
                    Action = A1Way
                    Caption = '&x1 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A2Way
                    Caption = 'x&2 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A3Way
                    Caption = 'x&4 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A4Way
                    Caption = 'x&8 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A5Way
                    Caption = 'x&16 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A6Way
                    Caption = 'x&32 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A7Way
                    Caption = 'x&64 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A8Way
                    ImageIndex = 7
                  end
                  item
                    Action = A9Way
                    Caption = 'x2&56 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end
                  item
                    Action = A10Way
                    ImageIndex = 7
                  end
                  item
                    Action = A11Way
                    Caption = 'x1&024 '#1088#1072#1089#1095#1077#1090
                    ImageIndex = 7
                  end>
                Action = AMultThrd
                ImageIndex = 21
              end
              item
                Action = ABTest
                ImageIndex = 64
              end>
            Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
          end
          item
            Items = <
              item
                Action = AAbout
                ImageIndex = 7
              end>
            Caption = '&?'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items.CaptionOptions = coAll
        Items = <
          item
            Action = ANew
            ImageIndex = 0
          end
          item
            Caption = '-'
          end
          item
            Action = ALoad
            ImageIndex = 1
          end
          item
            Action = ASave
            ImageIndex = 2
          end
          item
            Caption = '-'
          end
          item
            Action = ACalcPFP
            ImageIndex = 40
          end>
        ActionBar = ActionToolBar2
      end
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = ATreeMar
            ImageIndex = 37
          end
          item
            Action = AAddMar
            ImageIndex = 60
          end
          item
            Action = ARemMar
            ImageIndex = 61
          end
          item
            Action = AClearMar
            ImageIndex = 14
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = AExcel
            Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1074' &Excel'
            ImageIndex = 59
          end>
        ActionBar = ActionToolBar3
      end
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = AForceNaz
            ImageIndex = 62
          end
          item
            Action = AExcudedNaz
            ImageIndex = 63
          end>
        ActionBar = ActionToolBar4
      end>
    Images = ImageList2
    Left = 232
    Top = 168
    StyleName = 'XP Style'
    object AClose: TAction
      Category = '&'#1056#1072#1089#1095#1077#1090
      Caption = '&'#1042#1099#1093#1086#1076
      ImageIndex = 6
      OnExecute = ACloseExecute
    end
    object ANew: TAction
      Category = '&'#1056#1072#1089#1095#1077#1090
      Caption = '&'#1053#1086#1074#1099#1081
      ImageIndex = 0
      OnExecute = ANewExecute
    end
    object ALoad: TAction
      Category = '&'#1056#1072#1089#1095#1077#1090
      Caption = '&'#1054#1090#1082#1088#1099#1090#1100'...'
      ImageIndex = 1
      OnExecute = ALoadExecute
    end
    object A2Way: TAction
      Tag = 2
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x2 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A3Way: TAction
      Tag = 2
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x4 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A4Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x8 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A5Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x16 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A6Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x32 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A7Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x64 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A8Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x128 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A9Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x256 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A10Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x512 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object A11Way: TAction
      Tag = 3
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x1024 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
    object ASave: TAction
      Category = '&'#1056#1072#1089#1095#1077#1090
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 2
      OnExecute = ASaveExecute
      OnUpdate = ASaveUpdate
    end
    object ASaveAs: TAction
      Category = '&'#1056#1072#1089#1095#1077#1090
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      ImageIndex = 2
      OnExecute = ASaveAsExecute
    end
    object ACalcPFP: TAction
      Category = '&'#1055#1083#1072#1085' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1077#1079#1076#1086#1074
      Caption = '&'#1056#1072#1089#1089#1095#1080#1090#1072#1090#1100'...'
      ImageIndex = 40
      OnExecute = ACalcPFPExecute
    end
    object AAbout: TAction
      Category = '&?'
      Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      ImageIndex = 7
      OnExecute = AAboutExecute
    end
    object AHelp: TAction
      Category = '&?'
      Caption = '&'#1055#1086#1084#1086#1097#1100
      ImageIndex = 20
    end
    object AMultThrd: TAction
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = #1055#1072#1088#1072#1083#1083#1077#1083#1100#1085#1099#1077' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103
      ImageIndex = 21
      OnExecute = AMultThrdExecute
    end
    object ABTest: TAction
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = '&'#1058#1077#1089#1090' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1080'...'
      ImageIndex = 64
      OnExecute = ABTestExecute
    end
    object AAddMar: TAction
      Category = '&'#1052#1072#1088#1096#1088#1091#1090#1099
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      ImageIndex = 60
      OnExecute = AAddMarExecute
      OnUpdate = AAddMarUpdate
    end
    object ARemMar: TAction
      Category = '&'#1052#1072#1088#1096#1088#1091#1090#1099
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      ImageIndex = 61
      OnExecute = ARemMarExecute
      OnUpdate = ARemMarUpdate
    end
    object AClearMar: TAction
      Category = '&'#1052#1072#1088#1096#1088#1091#1090#1099
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1084#1072#1088#1096#1088#1091#1090#1099
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1084#1072#1088#1096#1088#1091#1090#1099
      ImageIndex = 14
      OnExecute = AClearMarExecute
      OnUpdate = AClearMarUpdate
    end
    object ATreeMar: TAction
      Category = '&'#1052#1072#1088#1096#1088#1091#1090#1099
      Caption = '&'#1056#1072#1079#1074#1077#1090#1074#1083#1077#1085#1085#1099#1081' '#1087#1086#1083#1080#1075#1086#1085
      Hint = #1056#1072#1079#1074#1077#1090#1074#1083#1077#1085#1085#1099#1081' '#1087#1086#1083#1080#1075#1086#1085
      ImageIndex = 37
      OnExecute = ATreeMarExecute
      OnUpdate = ATreeMarUpdate
    end
    object AExcel: TAction
      Category = '&'#1055#1083#1072#1085' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1077#1079#1076#1086#1074
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1074' Excel'
      ImageIndex = 59
      OnExecute = AExcelExecute
    end
    object ASuperThrd: TAction
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = 'ASuperThrd'
      ImageIndex = 7
      OnExecute = ASuperThrdExecute
    end
    object AForceNaz: TAction
      Category = '&'#1055#1083#1072#1085' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1077#1079#1076#1086#1074
      Caption = '&'#1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      Hint = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      ImageIndex = 62
      OnExecute = AForceNazExecute
      OnUpdate = AForceNazUpdate
    end
    object AExcudedNaz: TAction
      Category = '&'#1055#1083#1072#1085' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1086#1077#1079#1076#1086#1074
      Caption = '&'#1047#1072#1087#1088#1077#1097#1077#1085#1085#1086#1077' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      Hint = #1047#1072#1087#1088#1077#1097#1077#1085#1085#1086#1077' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      ImageIndex = 63
      OnExecute = AExcudedNazExecute
      OnUpdate = AExcudedNazUpdate
    end
    object A1Way: TAction
      Category = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      AutoCheck = True
      Caption = 'x1 '#1088#1072#1089#1095#1077#1090
      GroupIndex = 2
      ImageIndex = 7
      OnExecute = A2WayExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList2
    Left = 136
    Top = 128
    object N1: TMenuItem
      Caption = '&'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 12
      OnClick = N1Click
    end
  end
  object OD: TOpenDialog
    Filter = #1056#1072#1089#1095#1077#1090#1099' '#1055#1060#1055'|*.abspfp'
    Left = 292
    Top = 67
  end
  object SD: TSaveDialog
    DefaultExt = 'abspfp'
    Filter = #1056#1072#1089#1095#1077#1090#1099' '#1055#1060#1055'|*.abspfp'
    Left = 404
    Top = 67
  end
  object ImageList2: TImageList
    Left = 304
    Top = 112
    Bitmap = {
      494C010141004500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001001000001002000000000000010
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084840000000000000000007B7B7B00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000000000000000007B7B7B000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00000000007B7B7B00000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      0000BDBDBD000000000000FFFF00008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000007B7B
      7B0000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000BDBDBD000000
      000000FFFF000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000000000007B7B7B000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD0000000000000000000000
      0000000000007B7B7B000000000000000000BDBDBD000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      00000000000000000000BDBDBD000000000000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD000000000000FFFF00008484000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000008400000000
      0000000000000000000000000000000000000000000000000000000000000084
      00000084000000000000008400000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000000000000000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000840000008400000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000008400000000
      0000000000000000000000000000000000000000000000000000000000000084
      00000084000000000000008400000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000008400000000
      0000000000000000000000000000000000000000000000000000000000000084
      00000000000000000000008400000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000000000000000000000FF00000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF000000FF00
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF000000FF00
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000FF0000000000
      00000000000000000000FF000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000008484000084
      840000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000008484000084
      8400000000000000000000000000FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000008484000084
      8400008484000084840000848400FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000084
      8400000000000000000000000000FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000FFFF00000000000084
      8400008484000084840000848400FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF0000840000848484000084000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000084
      8400000000000000000000000000FF0000008400000084000000840000008400
      00008400000084000000FF0000000000000000000000FFFFFF0000FFFF00FFFF
      FF00008484000084840000848400FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000084000084848400008400008484
      8400008400008484840000840000FFFFFF00008400008484840000840000FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000084
      8400008484000084840000848400FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000840000000084
      8400008484000084840000848400008484000084840000848400008484008400
      0000840000008400000000000000000000008484840000840000848484000084
      00008484840000840000FFFFFF00008400008484840000840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000008484000084
      8400000000000000000000000000FF0000008400000084000000840000008400
      00008400000084000000FF0000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000FF0000008400000084000000840000008400
      00008400000084000000FF000000000000000000000000000000840000000084
      8400000000000000000000000000000000000000000000000000000000008400
      0000008484000084840000000000000000000084000084848400008400008484
      840000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000840000000000
      0000008484000084840000000000000000000000000000000000008484000084
      8400000000000084840000000000000000000000000000840000848484000084
      0000FFFFFF000084000084848400008400008484840000840000FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      00000000000000848400FF0000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FF0000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000840000000000
      0000000000000000000000848400008484000084840000848400000000000000
      000000000000008484000000000000000000000000000000000000840000FFFF
      FF0000840000848484000084000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000840000000000
      0000000000000000000000848400008484000084840000848400000000000000
      0000000000000084840000000000000000000000000000840000FFFFFF000084
      00008484840000840000848484000084000084848400C6C6C600FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000084840000000000000000000000000000000000008484000084
      84000000000000848400000000000000000000840000FFFFFF00008400008484
      8400008400008484840000840000848484000084000084848400C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000008484840000840000848484000084
      000084848400FFFFFF0084848400008400008484840000840000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000084000084848400008400008484
      8400FFFFFF00FFFFFF00FFFFFF00848484000084000084848400FFFFFF00FFFF
      FF0084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      84000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000084000000840000008400
      0000840000008400000084000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400848484000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600848484000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000FF000000FF00000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600848484000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600848484000000FF00C6C6C600848484000000
      FF00C6C6C600C6C6C600C6C6C600000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6000000FF00C6C6C6000000FF00C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000084000000840000008400
      0000840000008400000084000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600848484000000FF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000FFFF000000000000FFFFFF00C6C6C600FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000FFFF000000000000FFFFFF00C6C6C600C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6000000FF000000FF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000000000000084848400848484008484
      8400848484008484840084848400848484000000000084848400848484000000
      0000000000008484840000000000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF000000000000FFFF000000000000C6C6C600FFFFFF00FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000008400000084000000840084848400C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084000000000000000000
      0000000000000000000000000000840000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000FFFF00000000
      000000000000FFFF00000000000000000000FFFF000000000000C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600000000000000840000008400000084000000
      840000008400000084000000840000008400000084000000840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084000000000000000000
      0000000000000000000000000000840000000000000084848400848484000000
      0000000000008484840084848400000000000000000000000000000000008484
      84008484840084848400000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF000000000000FFFF
      FF0000000000000000000000000000000000000084000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000C6C6
      C600848484008484840084848400000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084000000000000000000
      0000000000000000000000000000840000000000000084848400000000000000
      0000000000008484840084848400000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0084848400FFFFFF0000000000000000000000000000008400000084000000
      840000008400000084000000840000008400000084000000840000000000C6C6
      C600000000000000840000008400000000008400000000000000000000000000
      0000000000000000000084000000000000000000000084000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000848484008484840084848400000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400848484008484840084848400C6C6
      C600000000000000FF0000008400000000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000840000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      8400FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      000084000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000008400
      000084000000840000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000840000000000
      0000840000000000000084000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000084000000840000008400000084000000
      8400000084000000840000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000084000000840000008400000084000000
      8400000084000000840000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000084000000840000008400000084000000
      8400000084000000840000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000084000000840000008400000084000000
      8400000084000000840000000000000000000000000084000000000000000000
      0000840000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000084000000840000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000840000008400000000000000840000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000084000000840000008400000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B000000007B7B00007B7B00007B7B007B000000007B7B00007B7B00007B
      7B007B0000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000840000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B0000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000008400
      0000840000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B0000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000000000000000000000000000000000008400000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00007B0000007B0000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000084000000000000000000
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
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000084848400848484008484840084848400848484000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0084848400FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000008400000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000084000000
      0000000084000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000084000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000008400000000000000
      0000000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      00007B7B00007B7B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B00000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      0000FFFF0000007B00007B7B00007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000007B0000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      0000007B0000FFFF0000FFFF0000007B00007B7B00007B7B00007B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B000000000000007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000007B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000007B0000000000000000000000
      0000000000007B000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000007B0000007B00007B7B
      00007B7B00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000007B0000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B0000007B
      0000007B0000FFFF0000FFFF0000007B0000007B0000007B0000007B0000007B
      0000007B00007B7B000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B0000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000000000000000007B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000007B0000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B0000007B
      0000FFFF0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B00007B7B00000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000000000000000000000000000000000000000007B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000007B0000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B000000000000000000000000007B7B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B00007B7B000000000000000000007B0000007B000000000000007B00
      00007B0000007B000000000000007B000000000000007B0000007B0000007B00
      0000000000007B0000007B00000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B0000000000000000007B7B0000007B
      0000FFFF0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      00007B7B0000000000000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B00007B7B
      0000007B0000FFFF0000FFFF0000007B0000007B0000007B00007B7B00007B7B
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B0000000000000000000000000000007B7B
      7B000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF00007B7B00007B7B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00000000007B000000000000007B7B7B00000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B00000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      00007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00007B0000007B
      0000007B000000007B0000007B0000007B0000007B0000007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00007B0000007B
      000000007B00007B0000007B000000007B00007B0000007B7B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00007B00000000
      7B00007B0000007B0000007B000000007B00007B0000007B7B00000000000000
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B0000007B00007B
      0000007B0000007B0000007B000000007B00007B0000007B7B00000000000000
      000000007B000000000000000000000000000000000000000000000000000000
      000000000000007B0000007B00007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B00007B0000007B
      0000007B0000007B0000007B000000007B00007B0000007B7B00000000000000
      00000000000000007B0000000000000000000000000000000000000000000000
      000000000000007B0000007B0000007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B00007B0000007B
      0000007B0000007B0000007B000000007B00007B0000007B7B00000000000000
      00000000000000007B0000000000000000000000000000000000000000000000
      000000000000007B0000007B0000007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000007B000000007B7B00007B7B00007B7B007B000000007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B7B00007B
      7B00007B7B007B0000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B00007B7B00007B
      7B00007B7B007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000007B00000000000000
      000000000000000000000000000000007B000000000000000000000000000000
      00000000000000007B0000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B00007B0000007B00
      00007B0000007B0000000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000084000000840000000000000000007B00000000000000
      000000000000000000000000000000007B000000000000000000000000000000
      00000000000000007B0000000000000000000000000000000000000000000000
      000000000000007B0000007B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C600000000008400000084000000000000000000000000007B000000
      000000000000000000000000000000007B000000000000000000000000000000
      000000007B000000000000000000000000000000000000000000000000000000
      000000000000007B0000007B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60084000000840000000000000000000000000000000000
      7B0000000000000000000000000000007B000000000000000000000000000000
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000007B0000007B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      0000C6C6C6000000000084000000840000000000000000000000000000000000
      000000007B00000000000000000000007B00000000000000000000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FF000000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FF000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FF000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FF000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000000000007B7B7B00FFFF0000FF000000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FF000000FF000000FFFF0000FFFF0000FFFF0000FF000000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FF000000FF00
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF00000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000FFFFFF00FFFF0000FF000000FFFF00000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFF0000FF000000FFFF0000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFF0000FF000000FFFF00000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFF0000FF000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FF000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B007B007B7B7B007B007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B00007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B007B007B7B7B00FFFFFF00FFFFFF00BDBDBD007B007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B00007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD007B00
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000007B007B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD007B7B7B0000000000BDBDBD00BDBDBD00BDBD
      BD007B007B000000000000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00BDBDBD007B7B7B00000000007B007B007B007B0000000000BDBDBD00BDBD
      BD00BDBDBD007B007B0000000000000000000000000000000000000000000000
      0000000000007B7B00007B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD007B7B
      7B00000000007B007B007B007B007B007B007B007B007B007B0000000000BDBD
      BD00BDBDBD00BDBDBD007B007B00000000000000000000000000000000000000
      0000000000007B7B00007B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000000000007B7B7B00000000007B00
      7B007B007B007B007B0000FFFF007B007B007B007B007B007B007B007B007B00
      7B00BDBDBD00BDBDBD00BDBDBD000000000000000000000000007B7B00007B7B
      00007B7B00007B7B00007B7B00007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000007B007B007B007B007B007B007B00
      7B007B007B007B007B007B007B00007B7B007B007B007B007B007B007B007B00
      7B0000000000BDBDBD00BDBDBD000000000000000000000000007B7B00007B7B
      00007B7B00007B7B00007B7B00007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B0000007B0000007B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B007B007B007B007B00
      7B007B007B007B007B007B007B0000FFFF0000FFFF0000FFFF007B007B007B00
      7B007B007B0000000000BDBDBD000000000000000000000000007B7B00007B7B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00007B0000007B0000007B
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000000000007B007B007B00
      7B007B007B007B007B007B007B00007B7B007B007B00007B7B0000FFFF007B00
      7B007B007B007B007B00000000000000000000000000000000007B7B00007B7B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000007B00
      7B007B007B007B007B007B007B0000FFFF00007B7B00007B7B0000FFFF007B00
      7B007B007B007B007B007B007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00007B007B007B007B007B007B007B007B0000FFFF0000FFFF007B007B007B00
      7B007B007B007B007B00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000007B007B007B007B007B007B007B007B007B007B007B007B007B00
      7B000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00007B0000007B0000007B
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B007B007B007B007B007B007B007B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B0000007B0000007B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B007B000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B00007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000007B7B00007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B0000000000000000000000000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000007B7B00007B7B0000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000007B7B0000000000000000000000000000000000007B00
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000000000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000007B7B00007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B00000000000000000000000000007B0000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000007B7B00007B7B0000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000007B7B00000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000007B7B00007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B00000000000000000000000000007B0000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000007B7B00007B7B0000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000007B7B0000000000000000000000000000000000007B00
      0000000000000000000000000000000000007B0000007B000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B00007B7B000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B00007B7B
      00007B7B00007B7B00007B7B0000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000007B7B00007B7B000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B00007B7B
      00007B7B00007B7B00007B7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B00000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF00000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B00000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B000000FFFFFF007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF000000000000000000FFFF
      FF007B0000007B0000007B0000007B00000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B000000FFFFFF007B00000000000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B00007B7B007B7B7B00007B7B007B7B7B00007B7B007B7B
      7B00007B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B000000000000000000000000000000007B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00000000007B0000007B0000007B0000007B0000007B00
      00007B000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00007B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B007B7B7B00007B
      7B000000000000FFFF00000000000000000000FFFF00000000007B7B7B00007B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000000000000000007B00000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000000000000000007B000000000000007B000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000000000000000007B000000000000007B000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B000000000000007B000000000000000000
      00007B000000000000000000000000000000000000000000000000000000FF00
      0000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000FF00000000000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF0000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000FF00000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000FF00000000000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000000000000000000000000000000000000000000000000000FF000000
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B000000000000000000FFFF00007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00FFFF0000FFFF0000000000007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B000000
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B000000FF0000007B0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF0000000000007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00000000000000000000000000000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000007B000000
      FF0000007B000000FF0000007B00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B00000000007B7B7B000000
      7B000000FF0000007B000000FF0000007B000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF0000000000007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B0000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000007B000000FF0000007B00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000007B7B00007B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000007B0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B0000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100100000100010000000000800800000000000000000000
      000000000000000000000000FFFFFF00FF7F000000000000FF5F000000000000
      FD0F000000000000FD07000000000000F403000000000000F401000000000000
      D001000000000000D00400000000000040070000000000004013000000000000
      001F000000000000004F000000000000807F000000000000C13F000000000000
      E1FF000000000000F4FF000000000000FFFFFFFFFFEFFFEFFFFCFFFCDFE5DFE5
      FFF8FFF8C001C001FFF9FFF9DFE5DFE5FFF7FFF7DFEDDFEDDDCDDDCDDDDDDDDD
      8000800080008000DDDDDDDDDDDDDDDDE7FFFFFFE7FFFFFFE7FFFFFFE7FFFFFF
      E7FFFFFFE7FFFFFF00FF00FF00FF00FF00FF00FF00FF00FFE7FFFFFFE7FFFFFF
      E7FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFFFFFFFFFFFFFE000C001FFFFCFF3E000
      80010001B7EDE00080010001B7EDE00080010001CFE3E0008001000180000000
      80010001C003000080010000CFE300008E010001D3CB80008EF100FDDC3BC000
      8F010101DC3B80008FF18FF103CB00008FF1FFF98FF300008FF5FF7580030001
      8001FF8FDFFFE003FFFFFFFFDFFFE007E000E000FF83FFFFE000E00001BF9FFF
      E000E0007DBFCFFBE000E00045BFE7F3E000E0004583F3E7E000E0007DBFF9CF
      E000E00001BFFC9F8000E000FF83FE3F8000E000FFFFFC3F8000E0000180809B
      800000007DBE81C18000000045A299E3000000006DB6B9C7000100007DBEF18F
      E003E0010180E1FFE007E003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FF01
      E007E007E001FF01E007E0078001FF01E007E0078001FF01E007E0078001FF01
      E007E0078001FF01E007E0078001FF01E007E007800180F7C007E007800180E3
      C007E007800180D5E007E007800380F7E00FE00F8007800FE01FE01F800F80FF
      E03FE03F803F80FFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFDFFBDFFBFFFFFFFF
      AFF5AFF5FFFFE007DFFBDFFBF007E00700000000F007E007EE03EF83F007E007
      C003C783F007E007BE03EF83F007E007C003B783F007E007EE03F283F007C007
      FFAFBC03F007C007FFAFBE83F007E007FF27DF83FFFFE00FFFAF5FFFFFFFE01F
      FFDFBFFFFFFFE03FFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC7FFF01FC7FFFFF
      FC7FFF01FE1FFFFFFC7FE001E00383FFFC7FF001F00183FFFC7FF001F00183FF
      F83FF00FF00183FFF01FF00FF00383FFF01FF00FF00F83BBF01FFFEFFFEF83D7
      F83FF39FF39F800FFC7FF39FF39F83D7FFFFF39FF39F83BBFFFFF01FF01FFFFF
      FFFFF83FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFBF7
      E3FFFC7FC003F7F7E0FFF83FC07BEFFBE01FFABFC07BDFFB8007FEFFC07BDFFD
      C003CEE7C07BBFFDC0039FF3C07B77FDC0030281C07B67FEC0079FF3DFFB97F6
      C00FCEE7DFFBEDB6803FFEFFDFFBEDB2F87FFABFDFFBD9B5F7FFF83FDFFBD9B7
      FFFFFC7FC003E58FFFFFFEFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFF000F803F
      F803F8037FEF803FF803F803482F801FF803F8037FEF802FF803F803482F8037
      F803F8037FEF803BF803F8037F6F803BF803F8034EAF8003C003C0035544BEFB
      C003C0036AA8BEFBF9FFFFFF0554DEF7F9FFFFFFFAA8EEEFF9FFFFFFFD50F6DF
      FFFFFFFFFE04F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFC007E7F7EFE7C0CF
      BC6BE7E7E7E780CF0005E7C7E3E79C3F7E31E787E1E7981F6215E707E0E7940F
      0006E607E0678007700AE407E02780038004E407E0274001C002E607E0670000
      E001E707E0E70000E007E787E1E78001F007E7C7E3E7C003F003E7E7E7E7E00F
      F803E7F7EFE7F07FFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFDFFBFFFFFFF801
      FF9FF9FFE007E3FDFF1FF8FFEFF78A1DFE1FF87FE877ABFDFC1FF83FEFF7AA05
      F81FF81FE817ABFDF01FF80FEFF7AA05F01FF80FE817ABFDF81FF81FEFF7AA3D
      FC1FF83FE8F7ABE1FE1FF87FEF87AA6BFF1FF8FFE9AFABE7FF9FF9FFEF9FA80F
      FFDFFBFFE03FA03FFFFFFFFFFFFF80FFFF7FFFFFFFFFFFFFFC3FF801FFFFFFFF
      F01FF86DE003E003C00FF901E003E0030007F96DE003E0030003F901E003E003
      0001F9FFE003E0030000C001E003E0030001C06DE003E0038001CF01E003E003
      C001CF6DE003E003E0008701E003E003F00187FFE003E003F80787FFE00FE00F
      FC1F87FFE00FE01FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FC01FFFF
      FFFFFDFDFDFDFFFFFFFFFC01FC010000FFFFF80DFDCD0000EFFFFC01FC010000
      EF83800D801D0000DFC3BE01B6010000DFE3802D803D0000DFD3B881B0810000
      EF3B802F803F0000F0FFB3BFB03F0000FFFF803F803F0000FFFFBFBFBFBFFFFF
      FFFF803F803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFF
      FE008000EFFDFFFFFE000000C7FFFFFFFE000000C3FBFFFF80000000E3F7FFF7
      80000001F1E7C1F780000003F8CFC3FB80000003FC1FC7FB80010003FE3FCBFB
      80030003FC1FDCF780070FC3F8CFFF0F807F0003E1E7FFFF80FF8007C3F3FFFF
      81FFF87FC7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007FFFFF9FF
      FFFFFFFFFFFFF6CFFFFFFFFFF01FF6B7E007E007FBDFF6B7F7DFF7DFFDFFF8B7
      E78FE757FEFFFE8FD7DFD78FFF7FFE3FF7DFF78FFF7FFF7FEF8FEF57FEFFFE3F
      DFDFDFDFFDFFFEBFE007E007FBDFFC9FFFFFFFFFF01FFDDFFFFFFFFFFFFFFDDF
      E007E007FFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007000CFFFFFFFF
      BFEB0008FFFFFFFF00050001FFFFFE7F7E310063FFFFFE7F7E3500C1CD5BFFFF
      000601EBBD57FE7F7FEA016B86D7FE7F80140023B557FF3FC00A0067CD53FF9F
      E001000FFFF7F99FE007000FFFDFF99FF007000FFFFFFC3FF003005FFFFFFFFF
      F803003FFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C000
      E003001F8031BFE1E003000F80310002E003000780317E01E003000380017E00
      E003000180010010E003000080017FAAE003001F8FF18004E003001F8FF1C00A
      E003001F8FF1E001E0038FF18FF1E007E007FFF98FF1F007E00FFF758FF5F803
      E01FFF8F8001F803FFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
end
