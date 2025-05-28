object FCadastroExemplares: TFCadastroExemplares
  Left = 0
  Top = 0
  Caption = 'Cadastro Exemplares'
  ClientHeight = 401
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object Label1: TLabel
    Left = 18
    Top = 11
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = TxtId
  end
  object Label2: TLabel
    Left = 18
    Top = 179
    Width = 42
    Height = 15
    Caption = 'EDICAO'
    FocusControl = TxtEdicao
  end
  object Label3: TLabel
    Left = 18
    Top = 229
    Width = 26
    Height = 15
    Caption = 'ANO'
    FocusControl = TxtAno
  end
  object Label4: TLabel
    Left = 18
    Top = 272
    Width = 25
    Height = 15
    Caption = 'ISBN'
    FocusControl = TxtIsbn
  end
  object Label5: TLabel
    Left = 18
    Top = 72
    Width = 79
    Height = 15
    Caption = 'Nome do Livro'
    FocusControl = TxtId
  end
  object Label6: TLabel
    Left = 18
    Top = 122
    Width = 89
    Height = 15
    Caption = 'Nome da Editora'
    FocusControl = TxtId
  end
  object TxtId: TDBEdit
    Left = 18
    Top = 32
    Width = 154
    Height = 23
    DataField = 'EXEMPLAR_ID'
    DataSource = DataSource1
    TabOrder = 0
  end
  object TxtEdicao: TDBEdit
    Left = 18
    Top = 200
    Width = 154
    Height = 23
    DataField = 'EDICAO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object TxtAno: TDBEdit
    Left = 18
    Top = 243
    Width = 154
    Height = 23
    DataField = 'ANO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object TxtIsbn: TDBEdit
    Left = 18
    Top = 293
    Width = 347
    Height = 23
    DataField = 'ISBN'
    DataSource = DataSource1
    TabOrder = 3
  end
  object CBoxLivroNome: TDBLookupComboBox
    Left = 18
    Top = 93
    Width = 145
    Height = 23
    DataField = 'EXEMPLAR_LIVRO_ID'
    DataSource = DataSource1
    KeyField = 'LIVRO_ID'
    ListField = 'LIVRO_TITULO'
    ListSource = DataSourceLivros
    TabOrder = 4
  end
  object CBoxEditoraNome: TDBLookupComboBox
    Left = 18
    Top = 143
    Width = 145
    Height = 23
    DataField = 'EXEMPLAR_EDITORA_ID'
    DataSource = DataSource1
    KeyField = 'EDITORA_ID'
    ListField = 'EDITORA_NOME'
    ListSource = DataSourceEditora
    TabOrder = 5
  end
  object BntCancelar: TButton
    Left = 80
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = BntCancelarClick
  end
  object BntSalvar: TButton
    Left = 232
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = BntSalvarClick
  end
  object FDQuery1: TFDQuery
    Connection = FTelaPrincipal.FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.AutoIncFields = 'exemplar_id'
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from exemplares'
      'where exemplar_id like :exemplar_id')
    Left = 200
    Top = 16
    ParamData = <
      item
        Name = 'EXEMPLAR_ID'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object FDQuery1EXEMPLAR_ID: TIntegerField
      FieldName = 'EXEMPLAR_ID'
      Origin = 'EXEMPLAR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1EDICAO: TSmallintField
      FieldName = 'EDICAO'
      Origin = 'EDICAO'
      Required = True
    end
    object FDQuery1ANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object FDQuery1ISBN: TStringField
      FieldName = 'ISBN'
      Origin = 'ISBN'
      Size = 30
    end
    object FDQuery1EXEMPLAR_LIVRO_ID: TIntegerField
      FieldName = 'EXEMPLAR_LIVRO_ID'
      Origin = 'EXEMPLAR_LIVRO_ID'
      Required = True
    end
    object FDQuery1EXEMPLAR_EDITORA_ID: TIntegerField
      FieldName = 'EXEMPLAR_EDITORA_ID'
      Origin = 'EXEMPLAR_EDITORA_ID'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 280
    Top = 16
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FTelaPrincipal.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EXEMPLARES'
      '(EXEMPLAR_LIVRO_ID, EXEMPLAR_EDITORA_ID, EDICAO, '
      '  ANO, ISBN)'
      
        'VALUES (:NEW_EXEMPLAR_LIVRO_ID, :NEW_EXEMPLAR_EDITORA_ID, :NEW_E' +
        'DICAO, '
      '  :NEW_ANO, :NEW_ISBN)'
      
        'RETURNING EXEMPLAR_ID, EXEMPLAR_LIVRO_ID, EXEMPLAR_EDITORA_ID, E' +
        'DICAO, ANO, ISBN')
    ModifySQL.Strings = (
      'UPDATE EXEMPLARES'
      
        'SET EXEMPLAR_LIVRO_ID = :NEW_EXEMPLAR_LIVRO_ID, EXEMPLAR_EDITORA' +
        '_ID = :NEW_EXEMPLAR_EDITORA_ID, '
      '  EDICAO = :NEW_EDICAO, ANO = :NEW_ANO, ISBN = :NEW_ISBN'
      'WHERE EXEMPLAR_ID = :OLD_EXEMPLAR_ID'
      
        'RETURNING EXEMPLAR_ID, EXEMPLAR_LIVRO_ID, EXEMPLAR_EDITORA_ID, E' +
        'DICAO, ANO, ISBN')
    DeleteSQL.Strings = (
      'DELETE FROM EXEMPLARES'
      'WHERE EXEMPLAR_ID = :OLD_EXEMPLAR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT EXEMPLAR_ID, EXEMPLAR_LIVRO_ID, EXEMPLAR_EDITORA_ID, EDIC' +
        'AO, '
      '  ANO, ISBN'
      'FROM EXEMPLARES'
      'WHERE EXEMPLAR_ID = :OLD_EXEMPLAR_ID')
    Left = 256
    Top = 72
  end
  object QueryLivros: TFDQuery
    Active = True
    Connection = FTelaPrincipal.FDConnection1
    SQL.Strings = (
      'select * from livros')
    Left = 208
    Top = 136
  end
  object DataSourceLivros: TDataSource
    DataSet = QueryLivros
    Left = 304
    Top = 136
  end
  object QueryEditora: TFDQuery
    Active = True
    Connection = FTelaPrincipal.FDConnection1
    SQL.Strings = (
      'select * from editora')
    Left = 216
    Top = 208
  end
  object DataSourceEditora: TDataSource
    DataSet = QueryEditora
    Left = 312
    Top = 208
  end
end
