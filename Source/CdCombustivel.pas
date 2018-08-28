unit CdCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCombustivelCdForm = class(TModeloCdForm)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblPrecoLitro: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    edtPrecoLitro: TDBEdit;
    lblImposto: TLabel;
    edtImposto: TDBEdit;
    fdQryCadastroCOD_COMBUSTIVEL: TFDAutoIncField;
    fdQryCadastroDES_COMBUSTIVEL: TStringField;
    fdQryCadastroPRC_COMBUSTIVEL: TBCDField;
    fdQryCadastroIMPOSTO: TBCDField;
    fdQryCadastroDAT_EXCLUSAO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CombustivelCdForm: TCombustivelCdForm;

implementation

{$R *.dfm}

end.
