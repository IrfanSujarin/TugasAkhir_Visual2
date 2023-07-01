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

end.
