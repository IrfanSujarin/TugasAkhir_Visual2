object Form3: TForm3
  Left = 225
  Top = 373
  Width = 976
  Height = 661
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 264
    Top = 32
    Width = 414
    Height = 31
    Caption = 'DATA ORANG TUA/WALI SISWA'
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
    Width = 817
    Height = 281
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 48
      Width = 56
      Height = 17
      Caption = 'NIP/NIK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 80
      Width = 46
      Height = 17
      Caption = 'NAMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 112
      Width = 112
      Height = 17
      Caption = 'JENIS KELAMIN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 40
      Top = 144
      Width = 94
      Height = 17
      Caption = 'PENDIDIKAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 448
      Top = 48
      Width = 84
      Height = 17
      Caption = 'NO TELPON'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 448
      Top = 80
      Width = 87
      Height = 17
      Caption = 'PEKERJAAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 448
      Top = 112
      Width = 62
      Height = 17
      Caption = 'ALAMAT'
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
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 184
      Top = 72
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 184
      Top = 104
      Width = 185
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 184
      Top = 136
      Width = 185
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 584
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 584
      Top = 72
      Width = 185
      Height = 21
      TabOrder = 5
    end
    object Button1: TButton
      Left = 40
      Top = 192
      Width = 113
      Height = 41
      Caption = 'BARU'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 192
      Top = 192
      Width = 113
      Height = 41
      Caption = 'SIMPAN'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 344
      Top = 192
      Width = 113
      Height = 41
      Caption = 'EDIT'
      TabOrder = 8
    end
    object Button4: TButton
      Left = 504
      Top = 192
      Width = 113
      Height = 41
      Caption = 'HAPUS'
      TabOrder = 9
    end
    object Button5: TButton
      Left = 656
      Top = 192
      Width = 113
      Height = 41
      Caption = 'BATAL'
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 584
      Top = 104
      Width = 185
      Height = 21
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 400
    Width = 817
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button6: TButton
    Left = 64
    Top = 544
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
    Connected = True
    HostName = 'localhost'
    Port = 8111
    Database = 'lapora_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Tugas Kuliah\visual 2\UAS\libmysql.dll'
    Left = 704
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from data_ortu')
    Params = <>
    Left = 760
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 816
    Top = 56
  end
end
