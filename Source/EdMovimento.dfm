inherited MovimentoEdForm: TMovimentoEdForm
  Caption = 'Movimento - Venda'
  ClientHeight = 364
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited AjudaBtn: TBitBtn
    Top = 332
  end
  inherited Panel2: TPanel
    Height = 294
    ExplicitTop = 50
    ExplicitHeight = 294
    object Label2: TLabel
      Left = 106
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Data Movimento'
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
      Top = 126
      Width = 69
      Height = 13
      Caption = 'Volume (Litros)'
    end
    object Label4: TLabel
      Left = 201
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Tanque'
    end
    object Label5: TLabel
      Left = 298
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Bomba'
    end
    object Label6: TLabel
      Left = 11
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Combust'#237'vel'
    end
    object Label7: TLabel
      Left = 201
      Top = 73
      Width = 37
      Height = 13
      Caption = 'R$ Litro'
    end
    object Label8: TLabel
      Left = 298
      Top = 73
      Width = 78
      Height = 13
      Caption = 'Quantidade Litro'
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 11
      Top = 141
      Width = 86
      Height = 21
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 201
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 298
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 4
    end
    object DBComboBox1: TDBComboBox
      Left = 11
      Top = 88
      Width = 182
      Height = 21
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 201
      Top = 88
      Width = 87
      Height = 21
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 298
      Top = 88
      Width = 87
      Height = 21
      TabOrder = 7
    end
  end
  inherited FechaBtn: TBitBtn
    Top = 331
  end
  inherited aDataSource: TDataSource
    Top = 315
  end
  inherited aDataSet: TClientDataSet
    Top = 315
  end
end
