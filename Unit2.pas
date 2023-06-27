unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button6: TButton;
     procedure bersih;
     procedure posisiawal;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id : string;
  Form2: TForm2;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm2.Button6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm2.bersih;
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
  edit5.clear;
  datetimepicker1.CleanupInstance;
  edit6.clear;
  edit7.clear;
  edit8.clear;
  edit9.clear;
  edit10.clear;
  edit11.clear;
end;

procedure TForm2.posisiawal;
begin
bersih;
  button1.Enabled := True;
  button2.Enabled := False;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := False;
  edit1.Enabled := False;
  edit2.Enabled := False;
  edit3.Enabled := False;
  edit4.Enabled := False;
  edit5.Enabled := False;
  edit6.Enabled := False;
  edit7.Enabled := False;
  edit8.Enabled := False;
  edit9.Enabled := False;
  edit10.Enabled := False;
  edit11.Enabled := False;
  edit12.Enabled := False;
  datetimepicker1.Enabled := False;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  button1.Enabled := False;
  button2.Enabled := True;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := True;
  edit1.Enabled := True;
  edit2.Enabled := True;
  edit3.Enabled := True;
  edit4.Enabled := True;
  edit5.Enabled := True;
  edit6.Enabled := True;
  edit7.Enabled := True;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if edit1.Text =''then
begin
  ShowMessage('NISN TIDAK BOLEH KOSONG');
  end else
if edit2.Text =''then
begin
  ShowMessage('NIS TIDAK BOLEH KOSONG');
  end else
if edit3.Text =''then
begin
  ShowMessage('NIK TIDAK BOLEH KOSONG');
  end else
if edit4.Text =''then
begin
  ShowMessage('NAMA TIDAK BOLEH KOSONG');
  end else
if edit5.Text =''then
begin
  ShowMessage('TEMPAT LAHIR TIDAK BOLEH KOSONG');
  end else
if edit6.Text =''then
begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG');
  end else
if edit7.Text =''then
begin
  ShowMessage('KELAS TIDAK BOLEH KOSONG');
  end else
if edit8.Text =''then
begin
  ShowMessage('JURUSAN TIDAK BOLEH KOSONG');
  end else
if edit9.Text =''then
begin
  ShowMessage('WALI KELAS TIDAK BOLEH KOSONG');
  end else
if edit10.Text =''then
begin
  ShowMessage('ALAMAT TIDAK BOLEH KOSONG');
  end else
if edit11.Text =''then
begin
  ShowMessage('NO TELPON TIDAK BOLEH KOSONG');
  end else
if edit12.Text =''then
begin
  ShowMessage('STATUS TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into data_siswa values(null,"'+edit1.text+'","'+edit2.text+'","'+edit3.text+'","'+edit4.text+'","'+edit5.text+'","'+formatdatetime('yyyy-mm-dd',datetimepicker1.date)+'","'+edit6.text+'","'+edit7.text+'","'+edit8.text+'","'+edit9.text+'","'+edit10.text+'","'+edit11.text+'","'+edit12.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from data_siswa');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
edit1.Text := ZQuery1.FieldList[1].AsString;
edit2.Text := ZQuery1.FieldList[2].AsString;
edit3.Text := ZQuery1.FieldList[3].AsString;
edit4.Text := ZQuery1.FieldList[4].AsString;
edit5.Text := ZQuery1.FieldList[5].AsString;
datetimepicker1.Date := ZQuery1.FieldList[6].AsDateTime;
edit6.Text := ZQuery1.FieldList[7].AsString;
edit7.Text := ZQuery1.FieldList[8].AsString;
edit8.Text := ZQuery1.FieldList[9].AsString;
edit9.Text := ZQuery1.FieldList[10].AsString;
edit10.Text := ZQuery1.FieldList[11].AsString;
edit11.Text := ZQuery1.FieldList[12].AsString;
edit12.Text := ZQuery1.FieldList[13].AsString;

  button1.Enabled := False;
  button2.Enabled := False;
  button3.Enabled := True;
  button4.Enabled := True;
  button5.Enabled := True;
  edit1.Enabled := True;
  edit2.Enabled := True;
  edit3.Enabled := True;
  edit4.Enabled := True;
  edit5.Enabled := True;
  edit6.Enabled := True;
  edit7.Enabled := True;
  edit8.Enabled := True;
  edit9.Enabled := True;
  edit10.Enabled := True;
  edit11.Enabled := True;
  edit12.Enabled := True;
  datetimepicker1.Enabled := True;
end;

end.
