object SelMarshForm: TSelMarshForm
  Left = 321
  Top = 228
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1088#1096#1088#1091#1090#1072
  ClientHeight = 178
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 3
    Width = 66
    Height = 170
    Caption = #1057#1090#1072#1085#1094#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 62
      Height = 153
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object lSt: TListBox
        Left = 4
        Top = 4
        Width = 54
        Height = 145
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        Sorted = True
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 104
    Top = 3
    Width = 65
    Height = 170
    Caption = #1052#1072#1088#1096#1088#1091#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 61
      Height = 153
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object lM: TListBox
        Left = 4
        Top = 4
        Width = 53
        Height = 145
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Add1: TButton
    Left = 78
    Top = 23
    Width = 20
    Height = 20
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Add1Click
  end
  object Add2: TButton
    Left = 78
    Top = 49
    Width = 20
    Height = 20
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Add2Click
  end
  object Del1: TButton
    Left = 78
    Top = 75
    Width = 20
    Height = 20
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Del1Click
  end
  object Del2: TButton
    Left = 78
    Top = 101
    Width = 20
    Height = 20
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Del2Click
  end
  object Button5: TButton
    Left = 175
    Top = 10
    Width = 61
    Height = 20
    Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
    Default = True
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 175
    Top = 36
    Width = 61
    Height = 20
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 175
    Top = 62
    Width = 61
    Height = 20
    Caption = #1055#1086#1084#1086#1097#1100
    TabOrder = 8
    Visible = False
  end
end
