program PostoSistema;

uses
  Vcl.Forms,
  DmDados in 'DmDados.pas' {s: TDataModule},
  EdBomba in 'EdBomba.pas' {BombaEdForm},
  EdCombustivel in 'EdCombustivel.pas' {CombustivelEdForm},
  EdConfig in 'EdConfig.pas' {Form1},
  EdFrentista in 'EdFrentista.pas' {FrentistaEdForm},
  EdModel in 'EdModel.pas' {ModelEdForm},
  EdMovimento in 'EdMovimento.pas' {MovimentoEdForm},
  EdTanque in 'EdTanque.pas' {TanqueEdForm},
  uPrincipal in 'uPrincipal.pas' {PrincipalForm},
  PrMovimento in 'PrMovimento.pas' {MovimentoPrForm},
  PmMovimento in 'PmMovimento.pas' {MovimentoPmForm},
  RelMovimento in 'RelMovimento.pas' {MovimentoRelForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.Run;
end.
