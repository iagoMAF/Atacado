object frmProduto: TfrmProduto
  Left = 885
  Top = 242
  Width = 486
  Height = 363
  Caption = 'Cadastro de Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 305
    Width = 470
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 233
    Width = 470
    Height = 72
    Align = alBottom
    TabOrder = 1
    object btnIncluir: TButton
      Left = 143
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 143
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnExcluir: TButton
      Left = 223
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnConsultar: TButton
      Left = 223
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
    end
    object btnConfirmar: TButton
      Left = 303
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
    end
    object btnCancelar: TButton
      Left = 383
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
    end
    object btnSair: TButton
      Left = 383
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
      OnClick = btnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 233
    Align = alClient
    TabOrder = 2
    object lblCodigo: TLabel
      Left = 12
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lblNome: TLabel
      Left = 12
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object lblUnidade: TLabel
      Left = 11
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Unidade'
    end
    object lblDescricao: TLabel
      Left = 11
      Top = 112
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtCodigo: TEdit
      Left = 62
      Top = 10
      Width = 82
      Height = 21
      TabOrder = 0
    end
    object chkProdutoAtivo: TCheckBox
      Left = 153
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Produto Ativo'
      TabOrder = 1
    end
    object edtNome: TEdit
      Left = 63
      Top = 42
      Width = 394
      Height = 21
      TabOrder = 2
    end
    object edtUnidade: TEdit
      Left = 64
      Top = 74
      Width = 81
      Height = 21
      TabOrder = 3
    end
    object memoDescricao: TDBMemo
      Left = 65
      Top = 112
      Width = 393
      Height = 113
      TabOrder = 4
    end
  end
end
