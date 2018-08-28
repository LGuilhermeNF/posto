inherited VendaPrForm: TVendaPrForm
  Caption = 'Movimento - Abastecimento (Venda)'
  ClientHeight = 255
  ClientWidth = 453
  OnShow = FormShow
  ExplicitWidth = 459
  ExplicitHeight = 284
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCadastro: TPanel
    Width = 453
    ExplicitWidth = 420
    inherited btnSair: TBitBtn
      Left = 370
      ExplicitLeft = 337
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 41
    Width = 453
    Height = 72
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    ExplicitWidth = 420
    object lblCodigo: TLabel
      Left = 11
      Top = 19
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lblDataMovimento: TLabel
      Left = 107
      Top = 19
      Width = 78
      Height = 13
      Caption = 'Data Movimento'
    end
    object Label4: TLabel
      Left = 207
      Top = 19
      Width = 43
      Height = 13
      Caption = 'Frentista'
    end
    object edtCodigo: TDBEdit
      Left = 11
      Top = 34
      Width = 87
      Height = 21
      DataField = 'COD_MOVIMENTO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object edtDataMovimento: TDBEdit
      Left = 107
      Top = 34
      Width = 87
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object cbxFrentista: TComboBox
      Left = 205
      Top = 34
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 113
    Width = 453
    Height = 73
    Align = alClient
    Caption = 'Produto'
    TabOrder = 2
    ExplicitWidth = 420
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Combust'#237'vel'
    end
    object Label2: TLabel
      Left = 107
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Tanque'
    end
    object Label3: TLabel
      Left = 205
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Bomba'
    end
    object cbxCombustivel: TComboBox
      Left = 11
      Top = 34
      Width = 87
      Height = 21
      TabOrder = 0
      OnChange = cbxCombustivelChange
    end
    object cbxTanque: TComboBox
      Left = 107
      Top = 34
      Width = 87
      Height = 21
      TabOrder = 1
    end
    object cbxBomba: TComboBox
      Left = 205
      Top = 34
      Width = 87
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [3]
    Left = 0
    Top = 186
    Width = 453
    Height = 69
    Align = alBottom
    Caption = 'Venda'
    TabOrder = 3
    ExplicitWidth = 420
    object lblPrecoLitro: TLabel
      Left = 96
      Top = 17
      Width = 44
      Height = 16
      Caption = 'R$ Litro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblQtdeLitro: TLabel
      Left = 12
      Top = 17
      Width = 60
      Height = 16
      Caption = 'Qtde. Litro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblTotalVenda: TLabel
      Left = 308
      Top = 11
      Width = 88
      Height = 16
      Caption = 'R$ Total Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblImposto: TLabel
      Left = 180
      Top = 17
      Width = 42
      Height = 16
      Caption = '% Imp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblValImposto: TLabel
      Left = 226
      Top = 17
      Width = 65
      Height = 16
      Caption = 'R$ Imposto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtPrecoLitro: TDBEdit
      Left = 96
      Top = 33
      Width = 78
      Height = 24
      DataField = 'PRC_LITRO'
      DataSource = dsCadastro
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtTotalVenda: TMaskEdit
      Left = 308
      Top = 33
      Width = 105
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = ''
    end
    object edtQtdeLitro: TEdit
      Left = 12
      Top = 33
      Width = 78
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = edtQtdeLitroExit
    end
    object edtImposto: TDBEdit
      Left = 180
      Top = 33
      Width = 42
      Height = 24
      DataField = 'IMPOSTO'
      DataSource = dsCadastro
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtValImpopsto: TDBEdit
      Left = 226
      Top = 33
      Width = 78
      Height = 24
      DataField = 'VAL_IMPOSTO'
      DataSource = dsCadastro
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 344
    Top = 128
  end
  inherited fdQryCadastro: TFDQuery
    BeforePost = fdQryCadastroBeforePost
    AfterPost = fdQryCadastroAfterPost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ID'
    UpdateOptions.AutoIncFields = 'COD_MOVIMENTO'
    SQL.Strings = (
      'select * from venda')
    Left = 264
    Top = 54
    object fdQryCadastroCOD_MOVIMENTO: TFDAutoIncField
      FieldName = 'COD_MOVIMENTO'
      Origin = 'COD_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDAT_MOVIMENTO: TSQLTimeStampField
      FieldName = 'DAT_MOVIMENTO'
      Origin = 'DAT_MOVIMENTO'
    end
    object fdQryCadastroCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
    end
    object fdQryCadastroCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
    end
    object fdQryCadastroCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
    end
    object fdQryCadastroQTD_LITRO: TIntegerField
      FieldName = 'QTD_LITRO'
      Origin = 'QTD_LITRO'
    end
    object fdQryCadastroPRC_LITRO: TBCDField
      FieldName = 'PRC_LITRO'
      Origin = 'PRC_LITRO'
      Precision = 18
    end
    object fdQryCadastroVAL_VENDA: TBCDField
      FieldName = 'VAL_VENDA'
      Origin = 'VAL_VENDA'
      Precision = 18
    end
    object fdQryCadastroCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
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
    object fdQryCadastroVAL_IMPOSTO: TBCDField
      FieldName = 'VAL_IMPOSTO'
      Origin = 'VAL_IMPOSTO'
      Precision = 18
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 264
    Top = 128
  end
  inherited dsCadastro: TDataSource
    Left = 224
    Top = 136
  end
  object fdQryAux: TFDQuery
    Connection = DadosDm.fdCon
    UpdateTransaction = fdTransaction
    Left = 320
    Top = 55
  end
  object dsQryAux: TDataSource
    DataSet = fdQryAux
    Left = 376
    Top = 57
  end
end
