unit CdFrentista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrentistaCdForm = class(TModeloCdForm)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    fdQryCadastroCOD_FRENTISTA: TFDAutoIncField;
    fdQryCadastroDES_FRENTISTA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrentistaCdForm: TFrentistaCdForm;

implementation

{$R *.dfm}

end.
