unit PmMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBClient, Vcl.ComCtrls, RLPreview;

type
  TMovimentoPmForm = class(TForm)
    ImprimeBtn: TBitBtn;
    VisualizaBtn: TBitBtn;
    FechaBtn: TBitBtn;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    procedure FechaBtnClick(Sender: TObject);
    procedure ChamaImpressao(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  protected
    procedure Critica; virtual;
    procedure Processa; virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MovimentoPmForm: TMovimentoPmForm;

implementation

{$R *.dfm}

uses RelMovimento;

{ TModelo1PmForm }

procedure TMovimentoPmForm.FechaBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TMovimentoPmForm.ChamaImpressao(Sender: TObject);
begin
{  Panel1.SetFocus;
  Critica;

  if (Sender as TBitBtn).Name = 'ImprimeBtn' then
    begin
      if MessageBox(Handle,'Confirma Impressão ?','Confirmação',MB_ICONQUESTION+MB_YESNO) <> ID_YES then
        Exit;
    end;

  Processa;  }
  MovimentoRelForm := TMovimentoRelForm.Create(Self);
  MovimentoRelForm.RLReport1.Preview();
  FreeAndNil(MovimentoRelForm);
end;

procedure TMovimentoPmForm.Critica;
begin

end;

procedure TMovimentoPmForm.Processa;
begin

end;

procedure TMovimentoPmForm.FormCreate(Sender: TObject);
begin
  LabelTitulo.Caption := Self.Caption;
  Caption := 'Relatório';
end;

procedure TMovimentoPmForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      FechaBtn.Click;
    VK_RETURN:
      Perform(wm_NextDlgCtl,0,0);
    VK_NEXT:
      ChamaImpressao(VisualizaBtn);
  end;
end;

end.
