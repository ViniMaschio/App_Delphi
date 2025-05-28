object FAutor: TFAutor
  Left = 0
  Top = 0
  Caption = 'Formulario Autor'
  ClientHeight = 362
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 713
    Height = 257
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
    Left = 24
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
    OnClick = BntNovoClick
  end
  object BntEditor: TButton
    Left = 136
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = BntEditorClick
  end
  object BntDeletar: TButton
    Left = 248
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = BntDeletarClick
  end
  object BntSair: TButton
    Left = 616
    Top = 312
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
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.AutoIncFields = 'autor_id'
    SQL.Strings = (
      
        'select autor_id as ID, autor_nome as Nome, autor_sobrenome  as S' +
        'obrenome '
      'from autor')
    Left = 456
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 320
    Top = 72
  end
end
