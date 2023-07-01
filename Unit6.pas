unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ExtCtrls,
  frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Label14: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
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
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Button6: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label5: TLabel;
    Edit8: TEdit;
    Button7: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure bersih;
    procedure posisiawal;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm6.Button6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
posisiawal;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.bersih;
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
  edit5.clear;
  edit6.clear;
  edit7.clear;
  edit8.clear;
end;

procedure TForm6.posisiawal;
begin
  button1.Enabled := True;
  button2.Enabled := False;
  button3.Enabled := False;
  button4.Enabled := False;
  button5.Enabled := False;
  button7.Enabled := False;
  edit1.Enabled := False;
  edit2.Enabled := False;
  edit3.Enabled := False;
  edit4.Enabled := False;
  edit5.Enabled := False;
  edit6.Enabled := False;
  edit7.Enabled := False;
  edit8.Enabled := False;
end;

procedure TForm6.Button1Click(Sender: TObject);
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
  edit8.Enabled := True;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if edit1.Text =''then
begin
  ShowMessage('TANGGAL TIDAK BOLEH KOSONG');
  end else
if edit2.Text =''then
begin
  ShowMessage('SEMESTER TIDAK BOLEH KOSONG');
  end else
if edit3.Text =''then
begin
  ShowMessage('ID SISWA TIDAK BOLEH KOSONG');
  end else
if edit4.Text =''then
begin
  ShowMessage('ID WALI KELAS TIDAK BOLEH KOSONG');
  end else
if edit5.Text =''then
begin
  ShowMessage('ID ORTU ATAU WALI TIDAK BOLEH KOSONG');
  end else
if edit6.Text =''then
begin
  ShowMessage('ID POINT TIDAK BOLEH KOSONG');
  end else
if edit7.Text =''then
begin
  ShowMessage('JABATAN TIDAK BOLEH KOSONG');
  end else
if edit8.Text =''then
begin
  ShowMessage('STATUS TIDAK BOLEH KOSONG');
  end else
begin
  //simpan
end;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into data_catatan values(null,"'+edit1.text+'","'+edit2.text+'","'+edit3.text+'","'+edit4.text+'","'+edit5.text+'","'+edit6.text+'","'+edit7.text+'","'+edit8.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from data_catatan');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;

end;

end.
