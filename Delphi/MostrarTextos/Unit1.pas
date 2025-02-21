unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MemoTexto: TMemo;
    btnMostrar: TButton;
    procedure btnMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMostrarClick(Sender: TObject);
begin
  MemoTexto.Lines.Clear;
  MemoTexto.Lines.Add('Este é um exemplo de texto exibido no Delphi.');
  MemoTexto.Lines.Add('Você pode mostrar quantas linhas desejar.');
  MemoTexto.Lines.Add('Use este projeto como base para exibir seus próprios textos.');
end;

end.
