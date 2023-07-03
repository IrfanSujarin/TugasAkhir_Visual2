unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ExtCtrls,
  frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    Label14: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    DBGrid1: TDBGrid;
    Button6: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
     procedure bersih;
     procedure posisiawal;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  id:string;
  Form7: TForm7;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm7.Button6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
posisiawal;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.bersih;
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
end;

procedure TForm7.posisiawal;
begin
  button1.Enabled := True;
  button2.Enabled := False;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := False;
  button7.Enabled := True;
  edit1.Enabled := False;
  edit2.Enabled := False;
  edit3.Enabled := False;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
edit1.Text := ZQuery1.FieldList[1].AsString;
edit2.Text := ZQuery1.FieldList[2].AsString;
edit3.Text := ZQuery1.FieldList[3].AsString;

  button1.Enabled := False;
  button2.Enabled := False;
  button3.Enabled := True;
  button4.Enabled := True;
  button5.Enabled := True;
  button7.Enabled := True;
  edit1.Enabled := True;
  edit2.Enabled := True;
  edit3.Enabled := True;
end;

procedure TForm7.Button1Click(Sender: TObject);
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
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if edit1.Text =''then
begin
  ShowMessage('NAMA POIN TIDAK BOLEH KOSONG');
  end else
if edit2.Text =''then
begin
  ShowMessage('TOTAL TIDAK BOLEH KOSONG');
  end else
if edit3.Text =''then
begin
  ShowMessage('KETERANGAN TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into data_poin values(null,"'+edit1.text+'","'+edit2.text+'","'+edit3.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from data_poin');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
if (edit1.Text= '')or(edit2.Text= '')or(edit3.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update data_poin set nama_poin="'+edit1.Text+'",total="'+edit2.Text+'",keterangan="'+edit3.Text+'" where id_poin ="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from data_poin');
  ZQuery1.Open;
  posisiawal;
end;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from data_poin where id ="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from data_poin');
  ZQuery1.Open;
  ShowMessage('Data Berhasil Dihapus');
  posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

end.
