inherited CombustivelEdForm: TCombustivelEdForm
  Caption = 'Cadastro - Combust'#237'vel'
  ClientHeight = 191
  ExplicitHeight = 220
  PixelsPerInch = 96
  TextHeight = 13
  inherited AjudaBtn: TBitBtn
    Top = 159
    ExplicitTop = 159
  end
  inherited Panel2: TPanel
    Height = 121
    ExplicitHeight = 121
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
    object Label3: TLabel
      Left = 11
      Top = 64
      Width = 68
      Height = 13
      Caption = 'R$ Pre'#231'o Litro'
    end
    object Label4: TLabel
      Left = 107
      Top = 64
      Width = 48
      Height = 13
      Caption = '% Imposto'
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
    object DBEdit3: TDBEdit
      Left = 11
      Top = 79
      Width = 86
      Height = 21
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 79
      Width = 86
      Height = 21
      TabOrder = 3
    end
  end
  inherited FechaBtn: TBitBtn
    Top = 158
    ExplicitTop = 158
  end
  inherited aDataSource: TDataSource
    Left = 169
    Top = 147
  end
  inherited aDataSet: TClientDataSet
    Left = 202
    Top = 147
  end
end
