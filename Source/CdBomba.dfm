inherited BombaCdForm: TBombaCdForm
  Caption = 'Cadastro - Bomba de Combust'#237'vel'
  ClientHeight = 119
  ClientWidth = 473
  ExplicitWidth = 479
  ExplicitHeight = 148
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
    Width = 473
    DesignSize = (
      473
      41)
    inherited btnSair: TBitBtn
      ExplicitLeft = 520
    end
  end
  object edtCodigo: TDBEdit [3]
    Left = 17
    Top = 77
    Width = 83
    Height = 21
    DataField = 'COD_BOMBA'
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
    DataField = 'DES_BOMBA'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 352
    Top = 40
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_BOMBA_ID'
    UpdateOptions.AutoIncFields = 'COD_BOMBA'
    SQL.Strings = (
      'SELECT * FROM BOMBA')
    Left = 288
    Top = 40
    object fdQryCadastroCOD_BOMBA: TFDAutoIncField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_BOMBA: TStringField
      FieldName = 'DES_BOMBA'
      Origin = 'DES_BOMBA'
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 416
    Top = 40
  end
  inherited dsCadastro: TDataSource
    Left = 224
    Top = 40
  end
end
