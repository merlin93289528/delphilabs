object Form1: TForm1
  Left = 192
  Top = 117
  Width = 418
  Height = 442
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 13
    Caption = #1056#1086#1079#1084#1110#1088#1085#1110#1089#1090#1100
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 24
    Width = 305
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object Button1: TButton
    Left = 320
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 48
    Width = 385
    Height = 225
    FixedColor = clBtnHighlight
    FixedCols = 0
    RowCount = 6
    FixedRows = 0
    TabOrder = 2
    RowHeights = (
      24
      24
      25
      24
      24
      24)
  end
  object Memo1: TMemo
    Left = 8
    Top = 280
    Width = 393
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 8
    Top = 376
    Width = 393
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
end
