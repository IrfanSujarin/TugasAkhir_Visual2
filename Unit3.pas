unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
    Edit7: TEdit;
    Label1: TLabel;
    Button7: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
     procedure bersih;
     procedure posisiawal;
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id : string;
  Form3: TForm3;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm3.bersih;
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
  edit5.clear;
  edit6.clear;
  edit7.clear;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm3.posisiawal;
begin
bersih;
  button1.Enabled := True;
  button2.Enabled := False;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := False;
  button6.Enabled := False;
  edit1.Enabled := False;
  edit2.Enabled := False;
  edit3.Enabled := False;
  edit4.Enabled := False;
  edit5.Enabled := False;
  edit6.Enabled := False;
  edit7.Enabled := False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
edit1.Text := ZQuery1.FieldList[1].AsString;
edit2.Text := ZQuery1.FieldList[2].AsString;
edit3.Text := ZQuery1.FieldList[3].AsString;
edit4.Text := ZQuery1.FieldList[4].AsString;
edit5.Text := ZQuery1.FieldList[5].AsString;
edit6.Text := ZQuery1.FieldList[6].AsString;
edit7.Text := ZQuery1.FieldList[7].AsString;


  button1.Enabled := False;
  button2.Enabled := False;
  button3.Enabled := True;
  button4.Enabled := True;
  button5.Enabled := True;
  button7.Enabled := True;
  edit1.Enabled := True;
  edit2.Enabled := True;
  edit3.Enabled := True;
  edit4.Enabled := True;
  edit5.Enabled := True;
  edit6.Enabled := True;
  edit7.Enabled := True;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  button1.Enabled := False;
  button2.Enabled := True;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := True;
  button7.Enabled := True;
  edit1.Enabled := True;
  edit2.Enabled := True;
  edit3.Enabled := True;
  edit4.Enabled := True;
  edit5.Enabled := True;
  edit6.Enabled := True;
  edit7.Enabled := True;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if edit1.Text =''then
begin
  ShowMessage('NIP/NIK TIDAK BOLEH KOSONG');
  end else
if edit2.Text =''then
begin
  ShowMessage('NAMA TIDAK BOLEH KOSONG');
  end else
if edit3.Text =''then
begin
  ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG');
  end else
if edit4.Text =''then
begin
  ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG');
  end else
if edit5.Text =''then
begin
  ShowMessage(' NO TELPON TIDAK BOLEH KOSONG');
  end else
if edit6.Text =''then
begin
  ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG');
  end else
if edit7.Text =''then
begin
  ShowMessage('ALAMAT TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into data_ortu values(null,"'+edit1.text+'","'+edit2.text+'","'+edit3.text+'","'+edit4.text+'","'+edit5.text+'","'+edit6.text+'","'+edit7.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from data_ortu');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if (edit1.Text= '')or(edit2.Text= '')or(edit3.Text= '')or(edit4.Text= '')or(edit5.Text= '')or(edit6.Text= '')or(edit7.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update data_siswa set nik="'+edit1.Text+'",nama="'+edit2.Text+'",jenis_kelamin="'+edit3.Text+'",pendidikan="'+edit4.Text+'",no_telpon="'+edit5.Text+'",pekerjaan="'+edit6.Text+'",alamat="'+edit7.Text+'" where id ="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from data_siswa');
  ZQuery1.Open;
  posisiawal;
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from data_ortu where id ="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from data_ortu');
  ZQuery1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
posisiawal;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
