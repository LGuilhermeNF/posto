inherited CombustivelCdForm: TCombustivelCdForm
  Caption = 'Cadastro - Combust'#237'vel'
  ClientHeight = 168
  ClientWidth = 473
  ExplicitWidth = 479
  ExplicitHeight = 197
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
  object lblPrecoLitro: TLabel [2]
    Left = 17
    Top = 114
    Width = 37
    Height = 13
    Caption = 'R$ Litro'
  end
  object lblImposto: TLabel [3]
    Left = 99
    Top = 114
    Width = 61
    Height = 13
    Caption = '(%) Imposto'
  end
  inherited pnlCadastro: TPanel
    Width = 473
    ExplicitWidth = 473
    DesignSize = (
      473
      41)
    inherited btnSair: TBitBtn
      Left = 390
      ExplicitLeft = 390
    end
  end
  object edtCodigo: TDBEdit [5]
    Left = 17
    Top = 77
    Width = 83
    Height = 21
    DataField = 'COD_COMBUSTIVEL'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtDescricao: TDBEdit [6]
    Left = 106
    Top = 77
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DES_COMBUSTIVEL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtPrecoLitro: TDBEdit [7]
    Left = 17
    Top = 129
    Width = 76
    Height = 21
    DataField = 'PRC_COMBUSTIVEL'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object edtImposto: TDBEdit [8]
    Left = 99
    Top = 129
    Width = 83
    Height = 21
    DataField = 'IMPOSTO'
    DataSource = dsCadastro
    TabOrder = 4
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 360
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_COMBUSTIVEL_ID'
    UpdateOptions.AutoIncFields = 'COD_COMBUSTIVEL'
    SQL.Strings = (
      'SELECT * FROM COMBUSTIVEL')
    Left = 304
    object fdQryCadastroCOD_COMBUSTIVEL: TFDAutoIncField
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_COMBUSTIVEL: TStringField
      FieldName = 'DES_COMBUSTIVEL'
      Origin = 'DES_COMBUSTIVEL'
    end
    object fdQryCadastroPRC_COMBUSTIVEL: TBCDField
      FieldName = 'PRC_COMBUSTIVEL'
      Origin = 'PRC_COMBUSTIVEL'
      Precision = 18
    end
    object fdQryCadastroIMPOSTO: TBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
    end
    object fdQryCadastroDAT_EXCLUSAO: TSQLTimeStampField
      FieldName = 'DAT_EXCLUSAO'
      Origin = 'DAT_EXCLUSAO'
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 416
  end
  inherited dsCadastro: TDataSource
    Left = 248
  end
end
