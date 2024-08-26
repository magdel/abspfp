object ProcTestForm: TProcTestForm
  Left = 380
  Top = 178
  BorderIcons = []
  Caption = #1058#1077#1089#1090
  ClientHeight = 275
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 89
    Width = 368
    Height = 186
    BackWall.Brush.Style = bsClear
    Legend.Visible = False
    Title.Text.Strings = (
      #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' (per core)')
    View3D = False
    Zoom.Allow = False
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 362
    ExplicitHeight = 177
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      27
      15
      27)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      HoverElement = []
      Legend.Visible = False
      ShowInLegend = False
      SideMargins = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      HoverElement = []
      Legend.Visible = False
      Marks.Visible = False
      ShowInLegend = False
      SideMargins = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 89
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 362
    object Label4: TLabel
      Left = 8
      Top = 67
      Width = 30
      Height = 13
      Caption = 'Cores:'
    end
    object Label5: TLabel
      Left = 54
      Top = 67
      Width = 32
      Height = 13
      Caption = 'Label5'
      Visible = False
    end
    object Label3: TLabel
      Left = 55
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'MemPR:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 216
      Height = 13
      Caption = #1048#1076#1077#1090' '#1086#1094#1077#1085#1082#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1080'... '#1078#1076#1080#1090#1077
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 40
      Height = 13
      Caption = 'CPUPR:'
    end
    object Label7: TLabel
      Left = 54
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Label5'
      Visible = False
    end
    object Button1: TButton
      Left = 149
      Top = 58
      Width = 75
      Height = 25
      Caption = '&'#1047#1072#1082#1088#1099#1090#1100
      ModalResult = 1
      TabOrder = 0
      Visible = False
    end
  end
end
