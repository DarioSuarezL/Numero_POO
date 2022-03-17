object Formulario: TFormulario
  Left = 429
  Top = 266
  Caption = 'Formulario'
  ClientHeight = 501
  ClientWidth = 647
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menú
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 21
    Width = 66
    Height = 13
    Caption = 'Resultados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 21
    Width = 53
    Height = 13
    Caption = 'Entradas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 75
    Width = 42
    Height = 13
    Caption = 'Posici'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 112
    Top = 75
    Width = 31
    Height = 13
    Caption = 'D'#237'gito:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 117
    Width = 27
    Height = 13
    Caption = 'Base:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 12
    Top = 280
    Width = 141
    Height = 16
    Caption = 'Cambios en tiempo real:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 160
    Top = 320
    Width = 15
    Height = 29
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 272
    Top = 40
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    OnClick = Edit2Click
  end
  object Edit3: TEdit
    Left = 8
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 2
    OnClick = Edit3Click
  end
  object Edit4: TEdit
    Left = 112
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 3
    OnClick = Edit4Click
  end
  object Edit5: TEdit
    Left = 8
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Menú: TMainMenu
    Left = 8
    Top = 8
    object Mtodos1: TMenuItem
      Caption = 'M'#233'todos: '
      object SetValor1: TMenuItem
        Caption = 'SetValor'
        OnClick = SetValor1Click
      end
      object GetValor1: TMenuItem
        Caption = 'GetValor'
        OnClick = GetValor1Click
      end
      object InsertarDig1: TMenuItem
        Caption = 'InsertarDig'
        OnClick = InsertarDig1Click
      end
      object ModificarDig1: TMenuItem
        Caption = 'ModificarDig'
        OnClick = ModificarDig1Click
      end
      object EliminarDig1: TMenuItem
        Caption = 'EliminarDig'
        OnClick = EliminarDig1Click
      end
      object DigitoEnPos1: TMenuItem
        Caption = 'DigitoEnPos'
        OnClick = DigitoEnPos1Click
      end
      object InvertirNum1: TMenuItem
        Caption = 'InvertirNum'
        OnClick = InvertirNum1Click
      end
      object CantidadDig1: TMenuItem
        Caption = 'CantidadDig'
        OnClick = CantidadDig1Click
      end
      object DgitosPares1: TMenuItem
        Caption = 'D'#237'gitosPares'
        OnClick = DgitosPares1Click
      end
      object DigitoMayor1: TMenuItem
        Caption = 'Digito Mayor'
        OnClick = DigitoMayor1Click
      end
      object DigitoMenor1: TMenuItem
        Caption = 'Digito Menor'
        OnClick = DigitoMenor1Click
      end
      object InsertarIzq1: TMenuItem
        Caption = 'Insertar Izq'
        OnClick = InsertarIzq1Click
      end
      object InsertarDer1: TMenuItem
        Caption = 'Insertar Der'
        OnClick = InsertarDer1Click
      end
      object Ascendente1: TMenuItem
        Caption = 'Ascendente'
        OnClick = Ascendente1Click
      end
      object Descendente1: TMenuItem
        Caption = 'Descendente'
        OnClick = Descendente1Click
      end
      object Intercalado1: TMenuItem
        Caption = 'Intercalado'
        OnClick = Intercalado1Click
      end
    end
    object Metodosparte21: TMenuItem
      Caption = 'M'#233'todos_base:'
      object DecimalaBinario1: TMenuItem
        Caption = 'Decimal a Binario'
        OnClick = DecimalaBinario1Click
      end
      object Decimalaoctal1: TMenuItem
        Caption = 'Decimal a Octal'
        OnClick = Decimalaoctal1Click
      end
      object DecimalaHexadecimal1: TMenuItem
        Caption = 'Decimal a Hexadecimal'
        OnClick = DecimalaHexadecimal1Click
      end
      object DecimalaBaseN1: TMenuItem
        Caption = 'Decimal a Base N'
        OnClick = DecimalaBaseN1Click
      end
    end
    object Mtodosescritura1: TMenuItem
      Caption = 'M'#233'todos_escritura:'
      object Ennumeroromano1: TMenuItem
        Caption = 'En numero romano'
        OnClick = Ennumeroromano1Click
      end
      object EnLiteral1: TMenuItem
        Caption = 'En Literal'
        OnClick = EnLiteral1Click
      end
    end
    object Examen11: TMenuItem
      Caption = 'Examen 1'
      object IntercalarPrimos1: TMenuItem
        Caption = 'Eliminar ceros'
        OnClick = IntercalarPrimos1Click
      end
    end
  end
end
