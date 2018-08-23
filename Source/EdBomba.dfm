inherited BombaEdForm: TBombaEdForm
  Caption = 'Cadastro - Bomba'
  ClientHeight = 145
  ExplicitHeight = 174
  PixelsPerInch = 96
  TextHeight = 13
  inherited AjudaBtn: TBitBtn
    Top = 113
  end
  inherited Panel2: TPanel
    Height = 75
    object Label2: TLabel
      Left = 74
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 31
      Width = 307
      Height = 21
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 31
      Width = 54
      Height = 21
      TabOrder = 1
    end
  end
  inherited FechaBtn: TBitBtn
    Top = 112
  end
  inherited aDataSource: TDataSource
    Top = 99
  end
  inherited aDataSet: TClientDataSet
    Top = 99
  end
end
