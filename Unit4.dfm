object Form4: TForm4
  Left = 192
  Top = 125
  Width = 1005
  Height = 675
  Caption = 'Form4'
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
    Left = 352
    Top = 32
    Width = 248
    Height = 31
    Caption = 'DATA WALI KELAS'
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
    Height = 281
    TabOrder = 0
    object Label1: TLabel
      Left = 448
      Top = 40
      Width = 131
      Height = 17
      Caption = 'MATA PELAJARAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 40
      Width = 27
      Height = 17
      Caption = 'NIK'
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
      Top = 104
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
      Top = 136
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
      Top = 72
      Width = 116
      Height = 17
      Caption = 'TINGKAT KELAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 448
      Top = 104
      Width = 66
      Height = 17
      Caption = 'JABATAN'
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
      Left = 600
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 600
      Top = 72
      Width = 185
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 600
      Top = 104
      Width = 185
      Height = 21
      TabOrder = 6
    end
    object Button1: TButton
      Left = 40
      Top = 192
      Width = 113
      Height = 41
      Caption = 'BARU'
      TabOrder = 7
    end
    object Button2: TButton
      Left = 192
      Top = 192
      Width = 113
      Height = 41
      Caption = 'SIMPAN'
      TabOrder = 8
    end
    object Button3: TButton
      Left = 352
      Top = 192
      Width = 113
      Height = 41
      Caption = 'EDIT'
      TabOrder = 9
    end
    object Button4: TButton
      Left = 512
      Top = 192
      Width = 113
      Height = 41
      Caption = 'HAPUS'
      TabOrder = 10
    end
    object Button5: TButton
      Left = 672
      Top = 192
      Width = 113
      Height = 41
      Caption = 'BATAL'
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 400
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
      'select * from data_walkel')
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
