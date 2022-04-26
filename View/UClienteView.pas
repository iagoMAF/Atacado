unit UClienteView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uMessageUtil, UEnumerationUtil,
  UCriptografiaUtil, UClassFuncoes, Consts, Mask;

type
  TfrmCliente = class(TForm)
    stbStatusCliente: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnConsultar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    chkAtivo: TCheckBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblCpfCnpj: TLabel;
    edtCPFCNPJ: TMaskEdit;
    gbrEndereco: TGroupBox;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblUF: TLabel;
    cmbUF: TComboBox;
    lblCidade: TLabel;
    edtCidade: TEdit;
    rdgTipoPessoa: TRadioGroup;
    btnConfirmar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }

    vKey        : Word;

    vEstadoTela : TEstadoTela;

    procedure CamposEnabled(pOpcao : Boolean);
    procedure LimparTela;
    procedure DefineEstadoTela;

  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.FormShow(Sender: TObject);
begin
   DefineEstadoTela;
end;

procedure TfrmCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   vKey := Key;

   case vKey of

      VK_RETURN:
      begin
         Perform(WM_NEXTDlgCtl, 0, 0);
      end;

      VK_ESCAPE:
      begin
         if (vEstadoTela <> etPadrao) then
         begin
            if (TMessageUtil.Pergunta(
               'Deseja realmente abortar essa operação? ')) then
            begin
               vEstadoTela := etPadrao;
               //DefineEstadoTela;
            end;
         end
         else
         begin
            if (TMessageUtil.Pergunta(
               'Deseja realmente sair dessa rotina? ')) then
               Close;
         end;
      end;
   end;
end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action     := caFree;
   frmCliente := nil;
end;

procedure TfrmCliente.CamposEnabled(pOpcao: Boolean);
var
   i : Integer;
begin
   for i := 0 to pred(ComponentCount) do
   begin

      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Enabled       := pOpcao;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Enabled   := pOpcao;

      if (Components[i] is TCheckBox) then
         (Components[i] as TCheckBox).Enabled   := pOpcao;

      if (Components[i] is TComboBox) then
         (Components[i] as TComboBox).Enabled   := pOpcao;

      if (Components[i] is TRadioGroup) then
         (Components[i] as TRadioGroup).Enabled := pOpcao;

   end;

   gbrEndereco.Enabled := pOpcao;

end;

procedure TfrmCliente.LimparTela;
var
   i : Integer;
begin
   for i := 0 to pred(ComponentCount) do
   begin

      if (Components[i] is TEdit) then
         (Components[i] as TEdit).Text            := EmptyStr;

      if (Components[i] is TMaskEdit) then
         (Components[i] as TMaskEdit).Text        := EmptyStr;

      if (Components[i] is TCheckBox) then
         (Components[i] as TCheckBox).Checked     := False;

      if (Components[i] is TComboBox) then
      begin
         (Components[i] as TComboBox).Clear;
         (Components[i] as TComboBox).ItemIndex   := -1;
      end;

      if (Components[i] is TRadioGroup) then
         (Components[i] as TRadioGroup).ItemIndex := 0;

   end;

end;

procedure TfrmCliente.DefineEstadoTela;
begin
   btnIncluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnAlterar.Enabled   := (vEstadoTela in [etPadrao]);
   btnExcluir.Enabled   := (vEstadoTela in [etPadrao]);
   btnConsultar.Enabled := (vEstadoTela in [etPadrao]);

   btnConfirmar.Enabled :=
      vEstadoTela in [etIncluir, etExcluir, etConsultar];

   btnCancelar.Enabled  :=
      vEstadoTela in [etIncluir, etExcluir, etConsultar];

   case vEstadoTela of

      etPadrao:
      begin
         CamposEnabled(False);
         LimparTela;

         stbStatusCliente.Panels[0].Text := EmptyStr;

         if (frmCliente <> nil) and
            (frmCliente.Active) and
            (btnIncluir.CanFocus) then
            (btnIncluir.SetFocus);

         Application.ProcessMessages;
      end;

      etIncluir:
      begin
         stbStatusCliente.Panels[0].Text := 'Inclusão';
         CamposEnabled(True);

         edtCodigo.Enabled := False;
         chkAtivo.Checked  := True;

         if (edtNome.CanFocus) then
            (edtNome.SetFocus);
      end;

   end;

end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
   vEstadoTela := etPadrao;
end;

procedure TfrmCliente.btnIncluirClick(Sender: TObject);
begin
   vEstadoTela := etIncluir;
   DefineEstadoTela;
end;

procedure TfrmCliente.btnAlterarClick(Sender: TObject);
begin
   //Alterar
end;

procedure TfrmCliente.btnExcluirClick(Sender: TObject);
begin
   //Excluir
end;

procedure TfrmCliente.btnConsultarClick(Sender: TObject);
begin
   //Consultar
end;

procedure TfrmCliente.btnConfirmarClick(Sender: TObject);
begin
   //Confirmar
end;

procedure TfrmCliente.btnCancelarClick(Sender: TObject);
begin
   vEstadoTela := etPadrao;
   DefineEstadoTela;
end;

procedure TfrmCliente.btnSairClick(Sender: TObject);
begin
   Close
end;

end.
