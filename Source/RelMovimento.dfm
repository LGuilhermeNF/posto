object MovimentoRelForm: TMovimentoRelForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Abastecimento (Venda)'
  ClientHeight = 507
  ClientWidth = 1227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    DataSource = dsQryAux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 67
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 4
        Top = 42
        Width = 66
        Height = 14
        Caption = 'Cod. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 69
        Top = 42
        Width = 26
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 320
        Top = 42
        Width = 44
        Height = 14
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 365
        Top = 42
        Width = 41
        Height = 14
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 407
        Top = 42
        Width = 73
        Height = 14
        Caption = 'Combust'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 596
        Top = 42
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 661
        Top = 42
        Width = 45
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 726
        Top = 42
        Width = 39
        Height = 14
        Alignment = taRightJustify
        Caption = '% Imp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 979
        Top = 42
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 133
        Top = 42
        Width = 52
        Height = 14
        Caption = 'Frentista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 944
        Top = 6
        Width = 29
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBTextData: TRLDBText
        Left = 979
        Top = 6
        Width = 61
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel13: TRLLabel
        Left = 824
        Top = 42
        Width = 65
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Imposto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rliDivisao: TRLDraw
        Left = 0
        Top = 59
        Width = 1047
        Height = 8
        Align = faBottom
        DrawKind = dkLine
        HoldStyle = hsHorizontally
        Pen.Style = psDot
      end
      object RLDBTextInfo: TRLDBText
        Left = 4
        Top = 6
        Width = 69
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 1047
      Height = 33
      object RLDBText2: TRLDBText
        Left = 3
        Top = 11
        Width = 61
        Height = 14
        Alignment = taRightJustify
        DataField = 'COD_MOVIMENTO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 69
        Top = 11
        Width = 62
        Height = 14
        DataField = 'DAT_MOVIMENTO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 133
        Top = 11
        Width = 184
        Height = 14
        DataField = 'DES_FRENTISTA'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 320
        Top = 13
        Width = 39
        Height = 14
        Alignment = taCenter
        DataField = 'COD_TANQUE'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 365
        Top = 13
        Width = 36
        Height = 14
        Alignment = taCenter
        DataField = 'Cod_Bomba'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 407
        Top = 13
        Width = 137
        Height = 14
        DataField = 'DES_COMBUSTIVEL'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 550
        Top = 13
        Width = 92
        Height = 14
        Alignment = taRightJustify
        DataField = 'QTD_LITRO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 648
        Top = 13
        Width = 58
        Height = 14
        Alignment = taRightJustify
        DataField = 'PRC_LITRO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 717
        Top = 13
        Width = 48
        Height = 14
        Alignment = taRightJustify
        DataField = 'IMPOSTO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 895
        Top = 13
        Width = 138
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_VENDA'
        DataSource = dsQryAux
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 813
        Top = 13
        Width = 76
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_IMPOSTO'
        DataSource = dsQryAux
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 138
      Width = 1047
      Height = 31
      BandType = btSummary
      object RLLabel12: TRLLabel
        Left = 2
        Top = 12
        Width = 30
        Height = 14
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 550
        Top = 14
        Width = 92
        Height = 14
        Alignment = taRightJustify
        DataField = 'QTD_LITRO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 771
        Top = 14
        Width = 118
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_IMPOSTO'
        DataSource = dsQryAux
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 895
        Top = 14
        Width = 138
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_VENDA'
        DataSource = dsQryAux
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 1047
        Height = 8
        Align = faTop
        DrawKind = dkLine
        HoldStyle = hsHorizontally
        Pen.Style = psDot
      end
    end
  end
  object fdTransaction: TFDTransaction
    Connection = DadosDm.fdCon
    Left = 144
    Top = 256
  end
  object dsQryAux: TDataSource
    DataSet = fdQryAux
    Left = 208
    Top = 257
  end
  object fdQryAux: TFDQuery
    Connection = DadosDm.fdCon
    UpdateTransaction = fdTransaction
    Left = 264
    Top = 255
    object fdQryAuxCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Origin = 'COD_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryAuxDAT_MOVIMENTO: TSQLTimeStampField
      FieldName = 'DAT_MOVIMENTO'
      Origin = 'DAT_MOVIMENTO'
    end
    object fdQryAuxCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
    end
    object fdQryAuxCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
    end
    object fdQryAuxCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
    end
    object fdQryAuxQTD_LITRO: TIntegerField
      FieldName = 'QTD_LITRO'
      Origin = 'QTD_LITRO'
    end
    object fdQryAuxPRC_LITRO: TBCDField
      FieldName = 'PRC_LITRO'
      Origin = 'PRC_LITRO'
      Precision = 18
    end
    object fdQryAuxVAL_VENDA: TBCDField
      FieldName = 'VAL_VENDA'
      Origin = 'VAL_VENDA'
      Precision = 18
    end
    object fdQryAuxCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object fdQryAuxIMPOSTO: TBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
    end
    object fdQryAuxDAT_EXCLUSAO: TSQLTimeStampField
      FieldName = 'DAT_EXCLUSAO'
      Origin = 'DAT_EXCLUSAO'
    end
    object fdQryAuxDES_TANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_TANQUE'
      Origin = 'DES_TANQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_BOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_BOMBA'
      Origin = 'DES_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_COMBUSTIVEL'
      Origin = 'DES_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_FRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_FRENTISTA'
      Origin = 'DES_FRENTISTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdQryAuxVAL_IMPOSTO: TBCDField
      FieldName = 'VAL_IMPOSTO'
      Origin = 'VAL_IMPOSTO'
      Precision = 18
    end
  end
end
