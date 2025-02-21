unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtResultado: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    btnSoma: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    btnIgual: TButton;
    btnLimpar: TButton;
    procedure btnNumerosClick(Sender: TObject);
    procedure btnOperadoresClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    FOperador: string;
    FNumero1: Double;
    FNumero2: Double;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnNumerosClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text + (Sender as TButton).Caption;
end;

procedure TForm1.btnOperadoresClick(Sender: TObject);
begin
  FNumero1 := StrToFloat(edtResultado.Text);
  FOperador := (Sender as TButton).Caption;
  edtResultado.Clear;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  FNumero2 := StrToFloat(edtResultado.Text);
  if FOperador = '+' then
    edtResultado.Text := FloatToStr(FNumero1 + FNumero2)
  else if FOperador = '-' then
    edtResultado.Text := FloatToStr(FNumero1 - FNumero2)
  else if FOperador = '*' then
    edtResultado.Text := FloatToStr(FNumero1 * FNumero2)
  else if FOperador = '/' then
    edtResultado.Text := FloatToStr(FNumero1 / FNumero2);
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  edtResultado.Clear;
  FNumero1 := 0;
  FNumero2 := 0;
  FOperador := '';
end;

end.
