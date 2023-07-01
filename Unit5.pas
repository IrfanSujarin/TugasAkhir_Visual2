unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button4: TButton;
    Label5: TLabel;
    Button5: TButton;
    Label6: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2, Unit3, Unit4, TugasAkhir, Unit7, Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
form1.show;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
form6.show;
end;

end.
