unit CdTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTanqueCdForm = class(TModeloCdForm)
    fdQryCadastroCOD_TANQUE: TIntegerField;
    fdQryCadastroDES_TANQUE: TStringField;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    lblVolume: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    edtVolume: TDBEdit;
    fdQryCadastroQTD_VOLUME: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TanqueCdForm: TTanqueCdForm;

implementation

{$R *.dfm}

end.
