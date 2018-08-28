object ModeloCdForm: TModeloCdForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 287
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCadastro: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 595
    DesignSize = (
      471
      41)
    object btnNovo: TBitBtn
      Left = 7
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 88
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 169
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 250
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 388
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
      ExplicitLeft = 512
    end
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = DadosDm.fdCon
    Left = 224
    Top = 72
  end
  object fdQryCadastro: TFDQuery
    Connection = DadosDm.fdCon
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    Left = 168
    Top = 72
  end
  object fdTransaction: TFDTransaction
    Connection = DadosDm.fdCon
    Left = 272
    Top = 72
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 112
    Top = 72
  end
end
