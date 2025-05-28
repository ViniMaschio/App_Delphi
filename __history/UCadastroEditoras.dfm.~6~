object FCadastroEditoras: TFCadastroEditoras
  Left = 0
  Top = 0
  Caption = 'Cadastro Editoras'
  ClientHeight = 263
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object ID: TLabel
    Left = 24
    Top = 16
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object EditoraNome: TLabel
    Left = 24
    Top = 72
    Width = 89
    Height = 15
    Caption = 'Nome da Editora'
    FocusControl = TxtEditoraNome
  end
  object EditoraCidade: TLabel
    Left = 24
    Top = 128
    Width = 93
    Height = 15
    Caption = 'Cidade da Editora'
    FocusControl = TxtEditoraCidade
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 62
    Height = 23
    DataField = 'EDITORA_ID'
    DataSource = DataSource1
    TabOrder = 0
  end
  object TxtEditoraNome: TDBEdit
    Left = 24
    Top = 88
    Width = 467
    Height = 23
    DataField = 'EDITORA_NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object TxtEditoraCidade: TDBEdit
    Left = 24
    Top = 144
    Width = 467
    Height = 23
    DataField = 'EDITORA_CIDADE'
    DataSource = DataSource1
    TabOrder = 2
  end
  object BntCancelar: TButton
    Left = 128
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BntCancelarClick
  end
  object BntSalvar: TButton
    Left = 296
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BntSalvarClick
  end
  object FDQuery1: TFDQuery
    Connection = FTelaPrincipal.FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.AutoIncFields = 'editora_id'
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from editora'
      'where editora_id like :editora_id')
    Left = 200
    Top = 8
    ParamData = <
      item
        Name = 'EDITORA_ID'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object FDQuery1EDITORA_ID: TFDAutoIncField
      FieldName = 'EDITORA_ID'
      Origin = 'EDITORA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object FDQuery1EDITORA_NOME: TStringField
      FieldName = 'EDITORA_NOME'
      Origin = 'EDITORA_NOME'
      Required = True
      Size = 50
    end
    object FDQuery1EDITORA_CIDADE: TStringField
      FieldName = 'EDITORA_CIDADE'
      Origin = 'EDITORA_CIDADE'
      Required = True
      Size = 50
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FTelaPrincipal.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO EDITORA'
      '(EDITORA_NOME, EDITORA_CIDADE)'
      'VALUES (:NEW_EDITORA_NOME, :NEW_EDITORA_CIDADE)'
      'RETURNING EDITORA_ID, EDITORA_NOME, EDITORA_CIDADE')
    ModifySQL.Strings = (
      'UPDATE EDITORA'
      
        'SET EDITORA_NOME = :NEW_EDITORA_NOME, EDITORA_CIDADE = :NEW_EDIT' +
        'ORA_CIDADE'
      'WHERE EDITORA_ID = :OLD_EDITORA_ID'
      'RETURNING EDITORA_ID, EDITORA_NOME, EDITORA_CIDADE')
    DeleteSQL.Strings = (
      'DELETE FROM EDITORA'
      'WHERE EDITORA_ID = :OLD_EDITORA_ID')
    FetchRowSQL.Strings = (
      'SELECT EDITORA_ID, EDITORA_NOME, EDITORA_CIDADE'
      'FROM EDITORA'
      'WHERE EDITORA_ID = :OLD_EDITORA_ID')
    Left = 368
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 280
    Top = 16
  end
end
