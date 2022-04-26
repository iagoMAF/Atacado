unit UPrincipalView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, ExtCtrls, ComCtrls, UClienteView, UProdutoView,
  UTransportadoraView;

type
  TfrmAtacado = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    jhgj1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    ransportadora1: TMenuItem;
    stbBarraStatus: TStatusBar;
    Sair2: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure ransportadora1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtacado: TfrmAtacado;

implementation

{$R *.dfm}

procedure TfrmAtacado.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmAtacado.FormShow(Sender: TObject);
begin
   stbBarraStatus.Panels[0].Text := 'Tela inicial - Atacado';
end;

procedure TfrmAtacado.Cliente1Click(Sender: TObject);
begin
   try

      Screen.Cursor := crHourGlass;

      if frmCliente  = nil then
         frmCliente := TfrmCliente.Create(Application);

      frmCliente.Show;

   finally

      Screen.Cursor := crDefault;

   end;
end;

procedure TfrmAtacado.Produto1Click(Sender: TObject);
begin
   try

      Screen.Cursor := crHourGlass;

      if frmProduto = nil then
         frmProduto := TfrmProduto.Create(Application);

      frmProduto.Show;

   finally

      Screen.Cursor := crDefault;

   end;
end;

procedure TfrmAtacado.ransportadora1Click(Sender: TObject);
begin
   try

      Screen.Cursor := crHourGlass;

      if frmTransportadora = nil then
         frmTransportadora := TfrmTransportadora.Create(Application);

      frmTransportadora.Show;

   finally

      Screen.Cursor := crDefault;

   end;
end;

procedure TfrmAtacado.Sair2Click(Sender: TObject);
begin
   Close;
end;

end.
