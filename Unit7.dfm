object Form7: TForm7
  Left = 192
  Top = 125
  Width = 1012
  Height = 675
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 384
    Top = 32
    Width = 146
    Height = 31
    Caption = 'DATA POIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 64
    Top = 88
    Width = 849
    Height = 241
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 40
      Width = 70
      Height = 17
      Caption = 'TANGGAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 72
      Width = 75
      Height = 17
      Caption = 'SEMESTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 104
      Width = 64
      Height = 17
      Caption = 'ID SISWA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 184
      Top = 40
      Width = 609
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 184
      Top = 72
      Width = 609
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 184
      Top = 104
      Width = 609
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 40
      Top = 160
      Width = 113
      Height = 41
      Caption = 'BARU'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 168
      Top = 160
      Width = 113
      Height = 41
      Caption = 'SIMPAN'
      TabOrder = 4
    end
    object Button3: TButton
      Left = 296
      Top = 160
      Width = 113
      Height = 41
      Caption = 'EDIT'
      TabOrder = 5
    end
    object Button4: TButton
      Left = 424
      Top = 160
      Width = 113
      Height = 41
      Caption = 'HAPUS'
      TabOrder = 6
    end
    object Button5: TButton
      Left = 552
      Top = 160
      Width = 113
      Height = 41
      Caption = 'BATAL'
      TabOrder = 7
    end
    object Button7: TButton
      Left = 680
      Top = 160
      Width = 113
      Height = 41
      Caption = 'LAPORAN'
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 360
    Width = 849
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button6: TButton
    Left = 64
    Top = 504
    Width = 113
    Height = 41
    Caption = 'KEMBALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button6Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 8111
    Database = 'lapora_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Tugas Kuliah\visual 2\UAS\libmysql.dll'
    Left = 648
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from data_poin')
    Params = <>
    Left = 712
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 768
    Top = 40
  end
end
