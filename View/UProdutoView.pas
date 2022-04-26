unit UProdutoView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls;

type
  TfrmProduto = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnConsultar: TButton;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    Panel2: TPanel;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    chkProdutoAtivo: TCheckBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblUnidade: TLabel;
    edtUnidade: TEdit;
    lblDescricao: TLabel;
    memoDescricao: TDBMemo;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

procedure TfrmProduto.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
