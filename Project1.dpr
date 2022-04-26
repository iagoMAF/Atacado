program Project1;

uses
  Forms,
  UPrincipalView in 'View\UPrincipalView.pas' {frmAtacado},
  UClienteView in 'View\UClienteView.pas' {frmCliente},
  UProdutoView in 'View\UProdutoView.pas' {frmProduto},
  UTransportadoraView in 'View\UTransportadoraView.pas' {frmTransportadora},
  Consts in 'Model\Util\Consts.pas',
  UClassFuncoes in 'Model\Util\UClassFuncoes.pas',
  UCriptografiaUtil in 'Model\Util\UCriptografiaUtil.pas',
  UEnumerationUtil in 'Model\Util\UEnumerationUtil.pas',
  uMessageUtil in 'Model\Util\uMessageUtil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtacado, frmAtacado);
  Application.Run;
end.
