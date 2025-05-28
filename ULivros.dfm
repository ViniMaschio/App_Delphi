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
  object BntNovo: TButton
    Left = 32
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = BntNovoClick
  end
  object BntEditar: TButton
    Left = 128
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = BntEditarClick
  end
  object BntApagar: TButton
    Left = 224
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 3
    OnClick = BntApagarClick
  end
  object BntSair: TButton
    Left = 800
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BntSairClick
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FTelaPrincipal.FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    SQL.Strings = (
      'SELECT'
      '    LIVROS.LIVRO_ID as ID,'
      '    LIVROS.LIVRO_TITULO as Titulo,'
      '    LIVROS.LIVRO_SUBTITULO as Subtitulo,'
      '    AUTOR.AUTOR_NOME as Autor'
      'FROM'
      '    LIVROS'
      'INNER JOIN'
      '    AUTOR ON LIVROS.LIVRO_AUTOR_ID = AUTOR.AUTOR_ID')
    Left = 272
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 328
    Top = 144
  end
end
