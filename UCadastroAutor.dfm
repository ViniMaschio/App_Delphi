object FCadastroAutor: TFCadastroAutor
  Left = 0
  Top = 0
  Caption = 'Cadastro Autor'
  ClientHeight = 265
  ClientWidth = 505
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
    Left = 8
    Top = 16
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 83
    Height = 15
    Caption = 'Nome do Autor'
    FocusControl = TxtAutorNome
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 111
    Height = 15
    Caption = 'Sobrenome do Autor'
    FocusControl = TxtAutorSobrenome
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 32
    Width = 53
    Height = 23
    DataField = 'AUTOR_ID'
    DataSource = DataSource1
    TabOrder = 0
  end
  object TxtAutorNome: TDBEdit
    Left = 8
    Top = 88
    Width = 481
    Height = 23
    DataField = 'AUTOR_NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object TxtAutorSobrenome: TDBEdit
    Left = 8
    Top = 157
    Width = 481
    Height = 23
    DataField = 'AUTOR_SOBRENOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object BntCancelar: TButton
    Left = 136
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BntCancelarClick
  end
  object BntSalvar: TButton
    Left = 272
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
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from autor '
      'where autor_id like :autor_id')
    Left = 400
    Top = 32
    ParamData = <
      item
        Name = 'AUTOR_ID'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object FDQuery1AUTOR_ID: TFDAutoIncField
      FieldName = 'AUTOR_ID'
      Origin = 'AUTOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object FDQuery1AUTOR_NOME: TStringField
      FieldName = 'AUTOR_NOME'
      Origin = 'AUTOR_NOME'
      Required = True
      Size = 50
    end
    object FDQuery1AUTOR_SOBRENOME: TStringField
      FieldName = 'AUTOR_SOBRENOME'
      Origin = 'AUTOR_SOBRENOME'
      Required = True
      Size = 50
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FTelaPrincipal.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO AUTOR'
      '(AUTOR_NOME, AUTOR_SOBRENOME)'
      'VALUES (:NEW_AUTOR_NOME, :NEW_AUTOR_SOBRENOME)'
      'RETURNING AUTOR_ID, AUTOR_NOME, AUTOR_SOBRENOME')
    ModifySQL.Strings = (
      'UPDATE AUTOR'
      
        'SET AUTOR_ID = :NEW_AUTOR_ID, AUTOR_NOME = :NEW_AUTOR_NOME, AUTO' +
        'R_SOBRENOME = :NEW_AUTOR_SOBRENOME'
      'WHERE AUTOR_ID = :OLD_AUTOR_ID'
      'RETURNING AUTOR_ID, AUTOR_NOME, AUTOR_SOBRENOME')
    DeleteSQL.Strings = (
      'DELETE FROM AUTOR'
      'WHERE AUTOR_ID = :OLD_AUTOR_ID')
    FetchRowSQL.Strings = (
      'SELECT AUTOR_ID, AUTOR_NOME, AUTOR_SOBRENOME'
      'FROM AUTOR'
      'WHERE AUTOR_ID = :OLD_AUTOR_ID')
    Left = 304
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 208
    Top = 32
  end
end
