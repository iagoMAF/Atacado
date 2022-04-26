program Project1;

uses
  Forms,
  UPrincipalView in 'View\UPrincipalView.pas' {frmAtacado};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtacado, frmAtacado);
  Application.Run;
end.
