object FLivros: TFLivros
  Left = 0
  Top = 0
  Caption = 'Livros'
  ClientHeight = 440
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 897
    Height = 345
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 800
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = Button4Click
  end
  object FDQuery1: TFDQuery
    Connection = FTelaPrincipal.FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    SQL.Strings = (
      'SELECT'
      '    LIVROS.LIVRO_ID,'
      '    LIVROS.LIVRO_TITULO,'
      '    LIVROS.LIVRO_SUBTITULO,'
      '    AUTOR.AUTOR_NOME'
      'FROM'
      '    LIVROS'
      'INNER JOIN'
      '    AUTOR ON LIVROS.LIVRO_AUTOR_ID = AUTOR.AUTOR_ID')
    Left = 280
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 488
    Top = 80
  end
end
