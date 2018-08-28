unit PrVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TVendaPrForm = class(TModeloCdForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtCodigo: TDBEdit;
    lblCodigo: TLabel;
    lblDataMovimento: TLabel;
    edtDataMovimento: TDBEdit;
    edtPrecoLitro: TDBEdit;
    lblPrecoLitro: TLabel;
    lblQtdeLitro: TLabel;
    edtTotalVenda: TMaskEdit;
    lblTotalVenda: TLabel;
    edtQtdeLitro: TEdit;
    fdQryAux: TFDQuery;
    dsQryAux: TDataSource;
    cbxFrentista: TComboBox;
    cbxCombustivel: TComboBox;
    cbxTanque: TComboBox;
    cbxBomba: TComboBox;
    fdQryCadastroCOD_MOVIMENTO: TFDAutoIncField;
    fdQryCadastroDAT_MOVIMENTO: TSQLTimeStampField;
    fdQryCadastroCOD_TANQUE: TIntegerField;
    fdQryCadastroCOD_BOMBA: TIntegerField;
    fdQryCadastroCOD_COMBUSTIVEL: TIntegerField;
    fdQryCadastroQTD_LITRO: TIntegerField;
    fdQryCadastroPRC_LITRO: TBCDField;
    fdQryCadastroVAL_VENDA: TBCDField;
    fdQryCadastroCOD_FRENTISTA: TIntegerField;
    fdQryCadastroIMPOSTO: TBCDField;
    edtImposto: TDBEdit;
    lblImposto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtValImpopsto: TDBEdit;
    lblValImposto: TLabel;
    fdQryCadastroDAT_EXCLUSAO: TSQLTimeStampField;
    fdQryCadastroVAL_IMPOSTO: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure cbxCombustivelChange(Sender: TObject);
    procedure edtQtdeLitroExit(Sender: TObject);
    procedure fdQryCadastroAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PreencherComboBox(pComboBox : TComboBox; pField, pTable: String);
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  VendaPrForm: TVendaPrForm;
  vFrentista,
  vTanque,
  vBomba,
  vCombustivel: String;
implementation

{$R *.dfm}

procedure TVendaPrForm.btnNovoClick(Sender: TObject);
begin
  edtDataMovimento.Text := DateToStr(Date);
  inherited;
end;



procedure TVendaPrForm.cbxCombustivelChange(Sender: TObject);
begin
  fdQryAux.Close;
  fdQryAux.Open('select Prc_Combustivel, Imposto from COMBUSTIVEL where Cod_Combustivel = ' + cbxCombustivel.Text);
  edtPrecoLitro.Text     := fdQryAux.FieldByName('Prc_Combustivel').AsString;
  edtImposto.Text        := fdQryAux.FieldByName('Imposto').AsString;
end;

procedure TVendaPrForm.edtQtdeLitroExit(Sender: TObject);
var
  vImposto,
  vValorLitro: Currency;
  vQtdeLitro: Integer;
begin
  inherited;
  vValorLitro         := StrToFloat(edtPrecoLitro.Text);
  vQtdeLitro          := StrToInt(edtQtdeLitro.Text);
  vImposto            := StrToFloat(edtImposto.Text) /100;
  edtValImpopsto.Text := FloatToStr((vValorLitro * vImposto) * vQtdeLitro);
  edtTotalVenda.Text  := FloatToStr((vValorLitro  * vQtdeLitro) + (vValorLitro * vImposto));
  FormatFloat('R$ #,##0.00',StrToFloat(edtValImpopsto.Text));
  FormatFloat('R$ #,##0.00',StrToFloat(edtTotalVenda.Text));

end;

procedure TVendaPrForm.fdQryCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  LimparCampos;
end;

procedure TVendaPrForm.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroVAL_VENDA.AsFloat         := StrToFloat(edtTotalVenda.Text);
  fdQryCadastroDAT_MOVIMENTO.AsDateTime  := StrToDate(edtDataMovimento.Text);
  fdQryCadastroCOD_TANQUE.AsInteger      := StrToInt(cbxTanque.Text);
  fdQryCadastroCOD_BOMBA.AsInteger       := StrToInt(cbxBomba.Text);
  fdQryCadastroCOD_COMBUSTIVEL.AsInteger := StrToInt(cbxCombustivel.Text);
  fdQryCadastroQTD_LITRO.AsInteger       := StrToInt(edtQtdeLitro.Text);
  fdQryCadastroCOD_FRENTISTA.AsInteger   := StrToInt(cbxFrentista.Text);
end;

procedure TVendaPrForm.FormShow(Sender: TObject);
begin
  PreencherComboBox(cbxFrentista,'Cod_Frentista','Frentista');
  PreencherComboBox(cbxCombustivel,'Cod_Combustivel','Combustivel');
  PreencherComboBox(cbxTanque,'Cod_Tanque','Tanque');
  PreencherComboBox(cbxBomba,'Cod_Bomba','Bomba');
end;

procedure TVendaPrForm.LimparCampos;
begin
  cbxFrentista.ItemIndex   := -1;
  cbxCombustivel.ItemIndex := -1;
  cbxTanque.ItemIndex      := -1;
  cbxBomba.ItemIndex       := -1;
  edtPrecoLitro.Text       := '';
  edtImposto.Text          := '';
  edtQtdeLitro.Text        := '';
  edtTotalVenda.Text       := '';
end;

procedure TVendaPrForm.PreencherComboBox(pComboBox: TComboBox; pField, pTable: String);
begin
  fdQryAux.Close;
  fdQryAux.Open('select '+ pField + ' from ' + pTable);

  if not fdQryAux.IsEmpty then
    begin
      fdQryAux.First;
      while not fdQryAux.Eof do
        begin
          pComboBox.Items.Add(fdQryAux.FieldByName(pField).AsString);
          fdQryAux.Next;
        end;
    end;
end;

end.
