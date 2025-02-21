object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Contador'
  ClientHeight = 200
  ClientWidth = 300
  Position = poScreenCenter
  OnCreate = FormCreate
  object lblContador: TLabel
    Left = 130
    Top = 20
    Width = 40
    Height = 25
    Caption = '0'
    Font.Size = 14
  end
  object btnIniciar: TButton
    Left = 20
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    OnClick = btnIniciarClick
  end
  object btnParar: TButton
    Left = 110
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Parar'
    OnClick = btnPararClick
  end
  object btnResetar: TButton
    Left = 200
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Resetar'
    OnClick = btnResetarClick
  end
  object Timer1: TTimer
    Interval = 1000
    OnTimer = Timer1Timer
  end
end
