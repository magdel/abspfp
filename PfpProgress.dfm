object ThrdProgressForm: TThrdProgressForm
  Left = 338
  Top = 254
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1061#1086#1076' '#1088#1072#1089#1095#1077#1090#1072
  ClientHeight = 167
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 146
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 96
    Top = 134
    Width = 137
    Height = 25
    Caption = '&'#1054#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object PrChart: TChart
    Left = 8
    Top = 1
    Width = 314
    Height = 127
    BackWall.Brush.Style = bsClear
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Text.Strings = (
      #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' % '#1087#1086#1076#1079#1072#1076#1072#1095)
    Chart3DPercent = 10
    Zoom.Allow = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: THorizBarSeries
      HoverElement = []
      Legend.Visible = False
      BarBrush.Gradient.Direction = gdLeftRight
      Marks.Style = smsValue
      SeriesColor = 6579368
      ShowInLegend = False
      Title = #1042#1099#1087#1086#1083#1085#1077#1085#1086
      Gradient.Direction = gdLeftRight
      XValues.Name = 'Bar'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      HoverElement = [heCurrent]
      Legend.Visible = False
      Marks.Style = smsXValue
      SeriesColor = 5329192
      ShowInLegend = False
      Brush.BackColor = clDefault
      Dark3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      DataSources = (
        'Series1')
      object TeeFunction1: TAverageTeeFunction
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 16
    Top = 80
  end
end
