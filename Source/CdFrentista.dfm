inherited FrentistaCdForm: TFrentistaCdForm
  Caption = 'Cadastro - Frentisita'
  ClientHeight = 120
  ClientWidth = 475
  ExplicitWidth = 481
  ExplicitHeight = 149
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
  inherited pnlCadastro: TPanel
    Width = 475
    DesignSize = (
      475
      41)
    inherited btnSair: TBitBtn
      Left = 392
    end
  end
  object edtCodigo: TDBEdit [3]
    Left = 17
    Top = 77
    Width = 83
    Height = 21
    CharCase = ecLowerCase
    DataField = 'COD_FRENTISTA'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtDescricao: TDBEdit [4]
    Left = 106
    Top = 77
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DES_FRENTISTA'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 360
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FRENTISTA_ID'
    UpdateOptions.AutoIncFields = 'COD_FRENTISTA'
    SQL.Strings = (
      'SELECT * FROM FRENTISTA')
    Left = 304
    object fdQryCadastroCOD_FRENTISTA: TFDAutoIncField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_FRENTISTA: TStringField
      FieldName = 'DES_FRENTISTA'
      Origin = 'DES_FRENTISTA'
      Size = 50
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 408
  end
  inherited dsCadastro: TDataSource
    Left = 248
  end
end
