unit RelMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DmDados, Datasnap.DBClient;

type
  TMovimentoRelForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBTextData: TRLDBText;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    fdTransaction: TFDTransaction;
    dsQryAux: TDataSource;
    fdQryAux: TFDQuery;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    fdQryAuxCOD_MOVIMENTO: TIntegerField;
    fdQryAuxDAT_MOVIMENTO: TSQLTimeStampField;
    fdQryAuxCOD_TANQUE: TIntegerField;
    fdQryAuxCOD_BOMBA: TIntegerField;
    fdQryAuxCOD_COMBUSTIVEL: TIntegerField;
    fdQryAuxQTD_LITRO: TIntegerField;
    fdQryAuxPRC_LITRO: TBCDField;
    fdQryAuxVAL_VENDA: TBCDField;
    fdQryAuxCOD_FRENTISTA: TIntegerField;
    fdQryAuxIMPOSTO: TBCDField;
    fdQryAuxDAT_EXCLUSAO: TSQLTimeStampField;
    fdQryAuxDES_TANQUE: TStringField;
    fdQryAuxDES_BOMBA: TStringField;
    fdQryAuxDES_COMBUSTIVEL: TStringField;
    fdQryAuxDES_FRENTISTA: TStringField;
    fdQryAuxVAL_IMPOSTO: TBCDField;
    RLDBText1: TRLDBText;
    RLLabel13: TRLLabel;
    rliDivisao: TRLDraw;
    RLDBTextInfo: TRLDBText;
    RLDraw1: TRLDraw;
    procedure FormShow(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FSql,
    FInfoRelatorio: String;
  end;

var
  MovimentoRelForm: TMovimentoRelForm;

implementation

{$R *.dfm}

{ TMovimentoRelForm }

procedure TMovimentoRelForm.FormShow(Sender: TObject);
begin
  fdQryAux.Open;
end;

procedure TMovimentoRelForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBTextInfo.Text := FInfoRelatorio;
  RLDBTextData.Text := DateToStr(Date);
  fdQryAux.SQL.Add(FSql);
  fdQryAux.Open;
end;

end.
