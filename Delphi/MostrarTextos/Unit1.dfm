object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exibidor de Textos'
  ClientHeight = 300
  ClientWidth = 400
  Position = poScreenCenter
  object MemoTexto: TMemo
    Left = 10
    Top = 10
    Width = 380
    Height = 220
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnMostrar: TButton
    Left = 150
    Top = 240
    Width = 100
    Height = 30
    Caption = 'Mostrar Texto'
    TabOrder = 1
    OnClick = btnMostrarClick
  end
end
