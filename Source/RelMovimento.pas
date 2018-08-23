unit RelMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

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
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    rliDivisao: TRLDraw;
    RLDraw1: TRLDraw;
    RLLabel12: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MovimentoRelForm: TMovimentoRelForm;

implementation

{$R *.dfm}

end.
