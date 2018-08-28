inherited TanqueCdForm: TTanqueCdForm
  Caption = 'Cadastro - Tanque de Combust'#237'vel'
  ClientHeight = 170
  ClientWidth = 479
  ExplicitWidth = 485
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel [0]
    Left = 17
    Top = 58
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lblDescricao: TLabel [1]
    Left = 111
    Top = 58
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object lblVolume: TLabel [2]
    Left = 17
    Top = 114
    Width = 71
    Height = 13
    Caption = 'Volume (Litros)'
  end
  inherited pnlCadastro: TPanel
    Width = 479
    ExplicitWidth = 489
    DesignSize = (
      479
      41)
    inherited btnSair: TBitBtn
      Left = 399
      ExplicitLeft = 409
    end
  end
  object edtCodigo: TDBEdit [4]
    Left = 17
    Top = 77
    Width = 83
    Height = 21
    DataField = 'COD_TANQUE'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtDescricao: TDBEdit [5]
    Left = 106
    Top = 77
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DES_TANQUE'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtVolume: TDBEdit [6]
    Left = 17
    Top = 133
    Width = 121
    Height = 21
    DataField = 'QTD_VOLUME'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TANQUE'
      '(COD_TANQUE, DES_TANQUE, QTD_VOLUME)'
      'VALUES (:NEW_COD_TANQUE, :NEW_DES_TANQUE, :NEW_QTD_VOLUME)')
    ModifySQL.Strings = (
      'UPDATE TANQUE'
      'SET COD_TANQUE = :NEW_COD_TANQUE, DES_TANQUE = :NEW_DES_TANQUE, '
      '  QTD_VOLUME = :NEW_QTD_VOLUME'
      'WHERE COD_TANQUE = :OLD_COD_TANQUE')
    DeleteSQL.Strings = (
      'DELETE FROM TANQUE'
      'WHERE COD_TANQUE = :OLD_COD_TANQUE')
    FetchRowSQL.Strings = (
      'SELECT COD_TANQUE, DES_TANQUE, QTD_VOLUME'
      'FROM TANQUE'
      'WHERE COD_TANQUE = :COD_TANQUE')
    Left = 329
    Top = 102
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_TANQUE_ID'
    UpdateOptions.AutoIncFields = 'COD_TANQUE'
    SQL.Strings = (
      'SELECT * FROM TANQUE')
    Left = 249
    Top = 102
    object fdQryCadastroCOD_TANQUE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCadastroDES_TANQUE: TStringField
      FieldName = 'DES_TANQUE'
      Origin = 'DES_TANQUE'
      Required = True
    end
    object fdQryCadastroQTD_VOLUME: TIntegerField
      FieldName = 'QTD_VOLUME'
      Origin = 'QTD_VOLUME'
      Required = True
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 409
    Top = 102
  end
  inherited dsCadastro: TDataSource
    Left = 176
    Top = 104
  end
end
