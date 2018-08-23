object MovimentoRelForm: TMovimentoRelForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Abastecimento (Venda)'
  ClientHeight = 507
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 32
        Width = 60
        Height = 14
        Caption = 'Cod. Venda'
      end
      object RLLabel2: TRLLabel
        Left = 69
        Top = 32
        Width = 62
        Height = 14
        Caption = 'Data'
      end
      object RLLabel3: TRLLabel
        Left = 296
        Top = 32
        Width = 39
        Height = 14
        Caption = 'Tanque'
      end
      object RLLabel4: TRLLabel
        Left = 342
        Top = 32
        Width = 36
        Height = 14
        Caption = 'Bomba'
      end
      object RLLabel5: TRLLabel
        Left = 383
        Top = 32
        Width = 96
        Height = 14
        Caption = 'Combust'#237'vel'
      end
      object RLLabel6: TRLLabel
        Left = 486
        Top = 32
        Width = 39
        Height = 14
        Caption = 'Volume'
      end
      object RLLabel7: TRLLabel
        Left = 534
        Top = 32
        Width = 40
        Height = 14
        Caption = 'R$ Litro'
      end
      object RLLabel8: TRLLabel
        Left = 582
        Top = 32
        Width = 35
        Height = 14
        Caption = '% Imp.'
      end
      object RLLabel9: TRLLabel
        Left = 623
        Top = 32
        Width = 88
        Height = 14
        Caption = 'R$ Venda'
      end
      object RLLabel10: TRLLabel
        Left = 133
        Top = 32
        Width = 160
        Height = 14
        Caption = 'Frentista'
      end
      object RLLabel11: TRLLabel
        Left = 614
        Top = 5
        Width = 28
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 648
        Top = 5
        Width = 57
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
      Top = 89
      Width = 718
      Height = 33
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 122
      Width = 718
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
    end
    object rliDivisao: TRLDraw
      Left = 41
      Top = 83
      Width = 713
      Height = 8
      DrawKind = dkLine
      HoldStyle = hsHorizontally
      Pen.Style = psDot
    end
    object RLDraw1: TRLDraw
      Left = 41
      Top = 115
      Width = 713
      Height = 8
      DrawKind = dkLine
      HoldStyle = hsHorizontally
      Pen.Style = psDot
    end
  end
end
