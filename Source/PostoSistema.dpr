program PostoSistema;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {PrincipalForm},
  PrMovimento in 'PrMovimento.pas' {MovimentoPrForm},
  PmMovimento in 'PmMovimento.pas' {MovimentoPmForm},
  RelMovimento in 'RelMovimento.pas' {MovimentoRelForm},
  DmDados in 'DmDados.pas' {DadosDm: TDataModule},
  EdConfig in 'EdConfig.pas' {ConfigEdForm},
  CdModelo in 'CdModelo.pas' {ModeloCdForm},
  CdTanque in 'CdTanque.pas' {TanqueCdForm},
  CdBomba in 'CdBomba.pas' {BombaCdForm},
  CdFrentista in 'CdFrentista.pas' {FrentistaCdForm},
  PrVenda in 'PrVenda.pas' {VendaPrForm},
  CdCombustivel in 'CdCombustivel.pas' {CombustivelCdForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.CreateForm(TConfigEdForm, ConfigEdForm);
  Application.CreateForm(TDadosDm, DadosDm);
  Application.Run;
end.
