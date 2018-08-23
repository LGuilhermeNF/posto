unit EdModel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, DBCtrls, Mask, DB, DBClient;

type
  TModelEdForm = class(TForm)
    Panel1: TPanel;
    EdInsertBtn: TSpeedButton;
    EdDeleteBtn: TSpeedButton;
    EdEditBtn: TSpeedButton;
    EdCancelBtn: TSpeedButton;
    AjudaBtn: TBitBtn;
    Panel2: TPanel;
    FechaBtn: TBitBtn;
    aDataSource: TDataSource;
    aDataSet: TClientDataSet;
    EdPostBtn: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EdDeleteBtnClick(Sender: TObject);
    procedure EdEditBtnClick(Sender: TObject);
    procedure EdPostBtnClick(Sender: TObject);
    procedure EdCancelBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FechaBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChamaRecocileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
//    procedure TblStateChange(Sender: TObject);
  public
    { Public declarations }
    PCaption: String;
    PRotina: Integer;
    procedure PontoDecimalKeyPress(Sender: TObject; var Key: Char);
  end;

var
  ModelEdForm: TModelEdForm;
  _WGravaReg:    Boolean;   // No onCloseQuery confirama a gravacao do registro

implementation

{$R *.DFM}

procedure TModelEdForm.FormShow(Sender: TObject);
begin
  if PCaption = '' then
    PCaption := Caption;
  if FechaBtn.Visible then
    FechaBtn.SetFocus;
end;

procedure TModelEdForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    aDataSource.DataSet.Close;
    aDataSource.OnStateChange := nil;
  except
  end;
end;

procedure TModelEdForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  WOpc: Byte;
begin
  _WGravaReg := false;
  if aDataSource.DataSet.State in dsEditModes then
    if aDataSource.DataSet.Modified then
      begin
        WOpc := MessageBox(Handle,'Deseja salvar as alterações ?','Confirmação',
                           MB_ICONQUESTION+MB_YESNOCANCEL);
        if WOpc = ID_YES then
          _WGravaReg := true
        else
        if WOpc = ID_NO then
          aDataSource.DataSet.Cancel
        else
          CanClose := false;
      end
    else
      aDataSource.DataSet.Cancel;
end;

procedure TModelEdForm.EdDeleteBtnClick(Sender: TObject);
begin
  if MessageBox(handle,'Deseja realmente excluir o registro?', 'Atenção', MB_YESNO+MB_ICONQUESTION) <> IDYES then
    Exit
  else
    aDataSource.DataSet.Delete;
  try
    (aDataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
  except

  end;

  Close;
end;

procedure TModelEdForm.EdEditBtnClick(Sender: TObject);
begin
  aDataSource.DataSet.Refresh;
  aDataSource.DataSet.Edit;
end;

procedure TModelEdForm.EdPostBtnClick(Sender: TObject);
begin
  aDataSource.DataSet.UpdateRecord;
  if not aDataSource.DataSet.Modified then
    Exit;
  if FechaBtn.Visible then
    FechaBtn.SetFocus;
end;

procedure TModelEdForm.EdCancelBtnClick(Sender: TObject);
begin
  if Sender <> nil then
    if aDataSource.DataSet.Modified then
      if MessageBox(handle,'Cancela edição?','Atenção',MB_YESNO+MB_ICONQUESTION) <> IDYES then
        Exit
      else
        aDataSource.DataSet.Cancel;
  (aDataSource.DataSet as TClientDataSet).CancelUpdates;
  aDataSource.DataSet.Refresh;
  aDataSource.OnStateChange(nil);
  if FechaBtn.Visible then
    FechaBtn.SetFocus;
end;

procedure TModelEdForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if aDataSource.DataSet.State = dsBrowse then
    if Shift = [ssAlt] then
      case Key of
        VK_RETURN:
          if EdEditBtn.Visible and EdEditBtn.Enabled then
            EdEditBtn.Click;
      end
    else
      case Key of
        VK_ESCAPE:
          if FechaBtn.Visible then
            FechaBtn.Click;
        VK_INSERT:
          if EdInsertBtn.Visible and EdInsertBtn.Enabled then
            EdInsertBtn.Click;
        VK_DELETE:
          if EdDeleteBtn.Visible and EdDeleteBtn.Enabled then
            EdDeleteBtn.Click;
      end
  else
    if aDataSource.DataSet.State in dsEditModes then
      case Key of
        VK_RETURN:
          keybd_event(VK_TAB, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
        VK_NEXT:
          if EdPostBtn.Visible and EdPostBtn.Enabled then
            EdPostBtn.Click;
        VK_ESCAPE:
          if EdCancelBtn.Visible and EdCancelBtn.Enabled then
            EdCancelBtn.Click;
      end;
end;

procedure TModelEdForm.FechaBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TModelEdForm.ChamaRecocileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  //GlobalDm.MsgFly('');
  //GlobalDm.TrataReconcileError(DataSet, E, UpdateKind, Action);
end;

procedure TModelEdForm.PontoDecimalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
    Key := ',';
end;

end.
