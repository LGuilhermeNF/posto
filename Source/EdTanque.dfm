inherited TanqueEdForm: TTanqueEdForm
  Caption = 'Cadastro - Tanque'
  ClientHeight = 184
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited AjudaBtn: TBitBtn
    Top = 152
  end
  inherited Panel2: TPanel
    Height = 114
    ExplicitLeft = 24
    ExplicitTop = 36
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 74
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 11
      Top = 64
      Width = 69
      Height = 13
      Caption = 'Volume (Litros)'
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 31
      Width = 54
      Height = 21
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 31
      Width = 307
      Height = 21
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 11
      Top = 79
      Width = 86
      Height = 21
      TabOrder = 2
    end
  end
  inherited FechaBtn: TBitBtn
    Top = 151
  end
  inherited aDataSource: TDataSource
    Top = 91
  end
  inherited aDataSet: TClientDataSet
    Top = 91
  end
end
