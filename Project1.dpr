program Project1;

uses
  Forms,
  UPrincipalView in 'View\UPrincipalView.pas' {frmAtacado},
  UClienteView in 'View\UClienteView.pas' {frmCliente},
  UProdutoView in 'View\UProdutoView.pas' {frmProduto},
  UTransportadoraView in 'View\UTransportadoraView.pas' {frmTransportadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtacado, frmAtacado);
  Application.Run;
end.
