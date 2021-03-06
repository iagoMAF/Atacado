object frmCliente: TfrmCliente
  Left = 841
  Top = 235
  Width = 575
  Height = 402
  Caption = 'Cadastro de Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stbStatusCliente: TStatusBar
    Left = 0
    Top = 344
    Width = 559
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 267
    Width = 559
    Height = 77
    Align = alBottom
    TabOrder = 2
    object btnIncluir: TButton
      Left = 230
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TButton
      Left = 230
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TButton
      Left = 310
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnConsultar: TButton
      Left = 310
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object btnCancelar: TButton
      Left = 469
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnSair: TButton
      Left = 469
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
    object btnConfirmar: TButton
      Left = 390
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 6
      OnClick = btnConfirmarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 559
    Height = 267
    Align = alClient
    TabOrder = 1
    object lblCodigo: TLabel
      Left = 18
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lblNome: TLabel
      Left = 18
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCpfCnpj: TLabel
      Left = 18
      Top = 88
      Width = 53
      Height = 13
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TEdit
      Left = 57
      Top = 21
      Width = 82
      Height = 21
      TabOrder = 0
    end
    object chkAtivo: TCheckBox
      Left = 154
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Cliente Ativo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtNome: TEdit
      Left = 57
      Top = 51
      Width = 472
      Height = 21
      TabOrder = 3
    end
    object edtCPFCNPJ: TMaskEdit
      Left = 76
      Top = 83
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object gbrEndereco: TGroupBox
      Left = 8
      Top = 112
      Width = 537
      Height = 145
      Caption = ' Endere'#231'o '
      TabOrder = 5
      object lblEndereco: TLabel
        Left = 11
        Top = 27
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNumero: TLabel
        Left = 11
        Top = 56
        Width = 44
        Height = 13
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblComplemento: TLabel
        Left = 146
        Top = 55
        Width = 79
        Height = 13
        Caption = 'Complemento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBairro: TLabel
        Left = 11
        Top = 83
        Width = 34
        Height = 13
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUF: TLabel
        Left = 12
        Top = 109
        Width = 14
        Height = 13
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCidade: TLabel
        Left = 165
        Top = 109
        Width = 38
        Height = 13
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtEndereco: TEdit
        Left = 68
        Top = 22
        Width = 453
        Height = 21
        TabOrder = 0
      end
      object edtNumero: TEdit
        Left = 68
        Top = 50
        Width = 71
        Height = 21
        TabOrder = 1
      end
      object edtComplemento: TEdit
        Left = 232
        Top = 50
        Width = 289
        Height = 21
        TabOrder = 2
      end
      object edtBairro: TEdit
        Left = 67
        Top = 77
        Width = 454
        Height = 21
        TabOrder = 3
      end
      object cmbUF: TComboBox
        Left = 67
        Top = 104
        Width = 86
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'SP'
          'MG'
          'RJ')
      end
      object edtCidade: TEdit
        Left = 211
        Top = 104
        Width = 310
        Height = 21
        TabOrder = 5
      end
    end
    object rdgTipoPessoa: TRadioGroup
      Left = 256
      Top = 13
      Width = 153
      Height = 33
      Caption = ' Tipo de Pessoa '
      Columns = 2
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 2
      OnClick = rdgTipoPessoaClick
    end
  end
end
