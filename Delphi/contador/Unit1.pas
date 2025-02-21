unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblContador: TLabel;
    btnIniciar: TButton;
    btnParar: TButton;
    btnResetar: TButton;
    Timer1: TTimer;
    procedure btnIniciarClick(Sender: TObject);
    procedure btnPararClick(Sender: TObject);
    procedure btnResetarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    Contador: Integer;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnIniciarClick(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TForm1.btnPararClick(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm1.btnResetarClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  Contador := 0;
  lblContador.Caption := '0';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Inc(Contador);
  lblContador.Caption := IntToStr(Contador);
end;

end.
