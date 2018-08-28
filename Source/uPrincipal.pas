unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Vcl.Menus, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, dxGDIPlusClasses;

type
  TPrincipalForm = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Cadastro2: TMenuItem;
    Movimento1: TMenuItem;
    Relatrio1: TMenuItem;
    Sair1: TMenuItem;
    anque1: TMenuItem;
    Bomba1: TMenuItem;
    Frentista1: TMenuItem;
    Abastecer1: TMenuItem;
    RelaodeAbastecimento1: TMenuItem;
    Combustvel1: TMenuItem;
    Image1: TImage;
    procedure anque1Click(Sender: TObject);
    procedure Bomba1Click(Sender: TObject);
    procedure Abastecer1Click(Sender: TObject);
    procedure Combustvel1Click(Sender: TObject);
    procedure Frentista1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure RelaodeAbastecimento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

{$R *.dfm}

uses RelMovimento, PmMovimento, CdTanque, CdBomba,
     CdCombustivel, CdFrentista, PrVenda;

procedure TPrincipalForm.Abastecer1Click(Sender: TObject);
begin
  VendaPrForm := TVendaPrForm.Create(Self);
  VendaPrForm.ShowModal;
end;

procedure TPrincipalForm.anque1Click(Sender: TObject);
begin
  TanqueCdForm := TTanqueCdForm.Create(Self);
  TanqueCdForm.ShowModal;
end;

procedure TPrincipalForm.Bomba1Click(Sender: TObject);
begin
  BombaCdForm := TBombaCdForm.Create(Self);
  BombaCdForm.ShowModal;
end;

procedure TPrincipalForm.Combustvel1Click(Sender: TObject);
begin
  CombustivelCdForm := TCombustivelCdForm.Create(Self);
  CombustivelCdForm.ShowModal;
end;

procedure TPrincipalForm.Frentista1Click(Sender: TObject);
begin
  FrentistaCdForm := TFrentistaCdForm.Create(Self);
  FrentistaCdForm.ShowModal;
end;

procedure TPrincipalForm.RelaodeAbastecimento1Click(Sender: TObject);
begin
  MovimentoPmForm := TMovimentoPMForm.Create(Self);
  MovimentoPmForm.LabelTitulo.Caption := (Sender as TMenuItem).Caption;
  MovimentoPmForm.ShowModal;
end;

procedure TPrincipalForm.Sair1Click(Sender: TObject);
begin
  if MessageBox(handle,'Deseja realmente sair do programa?','Atenção',MB_YESNO+MB_ICONQUESTION) <> IDYES then
    Exit
  else
    Application.Terminate;
end;

end.
