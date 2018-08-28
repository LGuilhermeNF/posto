unit CdModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DmDados, uPrincipal, Vcl.ComCtrls;

type
  TModeloCdForm = class(TForm)
    fdUpdCadastro: TFDUpdateSQL;
    fdQryCadastro: TFDQuery;
    pnlCadastro: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModeloCdForm: TModeloCdForm;

implementation

{$R *.dfm}

procedure TModeloCdForm.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
    begin
      fdQryCadastro.Cancel;
      fdTransaction.RollbackRetaining;
    end;
end;

procedure TModeloCdForm.btnExcluirClick(Sender: TObject);
begin
   fdQryCadastro.Edit;
   fdQryCadastro.FieldByName('Dat_Exclusao').AsDateTime := Date;
   fdTransaction.StartTransaction;
   fdQryCadastro.Post;
   fdTransaction.CommitRetaining;
   MessageBox(handle,'Registro excluído com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
end;

procedure TModeloCdForm.btnGravarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
    begin
      fdTransaction.StartTransaction;
      fdQryCadastro.Post;
      fdTransaction.CommitRetaining;
      MessageBox(handle,'Registro gravado com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
    end;
end;

procedure TModeloCdForm.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then
    begin
      fdQryCadastro.Insert;
    end;
end;

procedure TModeloCdForm.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TModeloCdForm.FormCreate(Sender: TObject);
begin
  fdQryCadastro.Open();
end;

procedure TModeloCdForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      Self.Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
