object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 300
  ClientWidth = 250
  Position = poScreenCenter
  object edtResultado: TEdit
    Left = 20
    Top = 20
    Width = 210
    Height = 30
    Font.Size = 14
    TextAlign = taRightJustify
  end
  object btn1: TButton
    Left = 20
    Top = 70
    Width = 50
    Height = 50
    Caption = '1'
    OnClick = btnNumerosClick
  end
  object btn2: TButton
    Left = 80
    Top = 70
    Width = 50
    Height = 50
    Caption = '2'
    OnClick = btnNumerosClick
  end
  object btn3: TButton
    Left = 140
    Top = 70
    Width = 50
    Height = 50
    Caption = '3'
    OnClick = btnNumerosClick
  end
  object btn4: TButton
    Left = 20
    Top = 130
    Width = 50
    Height = 50
    Caption = '4'
    OnClick = btnNumerosClick
  end
  object btn5: TButton
    Left = 80
    Top = 130
    Width = 50
    Height = 50
    Caption = '5'
    OnClick = btnNumerosClick
  end
  object btn6: TButton
    Left = 140
    Top = 130
    Width = 50
    Height = 50
    Caption = '6'
    OnClick = btnNumerosClick
  end
  object btn7: TButton
    Left = 20
    Top = 190
    Width = 50
    Height = 50
    Caption = '7'
    OnClick = btnNumerosClick
  end
  object btn8: TButton
    Left = 80
    Top = 190
    Width = 50
    Height = 50
    Caption = '8'
    OnClick = btnNumerosClick
  end
  object btn9: TButton
    Left = 140
    Top = 190
    Width = 50
    Height = 50
    Caption = '9'
    OnClick = btnNumerosClick
  end
  object btn0: TButton
    Left = 80
    Top = 250
    Width = 50
    Height = 50
    Caption = '0'
    OnClick = btnNumerosClick
  end
  object btnSoma: TButton
    Left = 200
    Top = 70
    Width = 50
    Height = 50
    Caption = '+'
    OnClick = btnOperadoresClick
  end
  object btnSubtracao: TButton
    Left = 200
    Top = 130
    Width = 50
    Height = 50
    Caption = '-'
    OnClick = btnOperadoresClick
  end
  object btnMultiplicacao: TButton
    Left = 200
    Top = 190
    Width = 50
    Height = 50
    Caption = '*'
    OnClick = btnOperadoresClick
  end
  object btnDivisao: TButton
    Left = 200
    Top = 250
    Width = 50
    Height = 50
    Caption = '/'
    OnClick = btnOperadoresClick
  end
  object btnIgual: TButton
    Left = 20
    Top = 250
    Width = 50
    Height = 50
    Caption = '='
    OnClick = btnIgualClick
  end
  object btnLimpar: TButton
    Left = 140
    Top = 250
    Width = 50
    Height = 50
    Caption = 'C'
    OnClick = btnLimparClick
  end
end
