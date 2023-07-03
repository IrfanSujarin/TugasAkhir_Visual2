object Form1: TForm1
  Left = 527
  Top = 256
  Width = 547
  Height = 270
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 40
    Width = 164
    Height = 19
    Caption = '- LAPORAN SISWA -'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 136
    Top = 96
    Width = 105
    Height = 41
    Caption = 'MASUK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 96
    Width = 105
    Height = 41
    Caption = 'KELUAR'
    TabOrder = 1
    OnClick = Button2Click
  end
end
