object FExemplares: TFExemplares
  Left = 0
  Top = 0
  Caption = 'Exemplares'
  ClientHeight = 623
  ClientWidth = 1044
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
    Width = 1025
    Height = 521
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
    Left = 40
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = BntNovoClick
  end
  object BntEditar: TButton
    Left = 144
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = BntEditarClick
  end
  object BntDeletar: TButton
    Left = 248
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = BntDeletarClick
  end
  object BntSair: TButton
    Left = 944
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BntSairClick
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FTelaPrincipal.FDConnection1
    SQL.Strings = (
      'SELECT '
      '    E.EXEMPLAR_ID as ID,'
      '    L.LIVRO_TITULO as titulo,'
      '    ED.EDITORA_NOME as editora,'
      '    E.EDICAO,'
      '    E.ANO,'
      '    E.ISBN'
      'FROM '
      '    EXEMPLARES E'
      'JOIN '
      '    LIVROS L ON E.EXEMPLAR_LIVRO_ID = L.LIVRO_ID'
      'JOIN '
      '    EDITORA ED ON E.EXEMPLAR_EDITORA_ID = ED.EDITORA_ID;'
      '')
    Left = 496
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 608
    Top = 72
  end
end
