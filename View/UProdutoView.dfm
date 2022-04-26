object frmProduto: TfrmProduto
  Left = 491
  Top = 285
  Width = 500
  Height = 249
  Caption = 'Cadastro de Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 191
    Width = 484
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 119
    Width = 484
    Height = 72
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 160
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 240
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
    end
    object Button7: TButton
      Left = 400
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 119
    Align = alClient
    TabOrder = 2
    object lblCodigo: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Nome: TLabel
      Left = 16
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label1: TLabel
      Left = 16
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Unidade'
    end
    object edtCodigo: TEdit
      Left = 55
      Top = 10
      Width = 82
      Height = 21
      TabOrder = 0
    end
    object chkProdutoAtivo: TCheckBox
      Left = 146
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Produto Ativo'
      TabOrder = 1
    end
    object edtNome: TEdit
      Left = 55
      Top = 42
      Width = 378
      Height = 21
      TabOrder = 2
    end
    object edtUnidade: TEdit
      Left = 64
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
end
