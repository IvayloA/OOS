unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, Windows, Messages, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;
type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Num1: TEdit;
    Num2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;
  // TFunc - funtsionalna promenliva.
 TFunc = function(i,j:integer):integer; stdcall;
var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
function Max(i,j:integer):integer; stdcall; external 'MinMaxdll.dll';

procedure TForm1.Button1Click(Sender: TObject);
 var
   i,j:integer;
begin
   i := strtoint(Num1.Text);
   j:= strtoint(Num2.Text);
  Label1.Caption := 'Max=' + inttostr(Max(i,j));

end;


procedure TForm1.Button2Click(Sender: TObject);

 var
    i,j: integer;
 begin
  i:= strtoint(Num1.Text);
  j:= strtoint(Num1.Text);
 Label1.Caption := 'Min=' + inttostr(Min(i,j));
 end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Num1.Clear;
  Num2.Clear;
  Label1.Caption := 'Result';
end;

end.

