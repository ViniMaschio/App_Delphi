object FEditoras: TFEditoras
  Left = 0
  Top = 0
  Caption = 'Editoras'
  ClientHeight = 340
  ClientWidth = 740
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
    Top = 8
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
  object BntSair: TButton
    Left = 592
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = BntSairClick
  end
  object BNovo: TButton
    Left = 40
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = BNovoClick
  end
  object BntDeletar: TButton
    Left = 232
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = BntDeletarClick
  end
  object BntEditar: TButton
    Left = 136
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
    OnClick = BntEditarClick
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FTelaPrincipal.FDConnection1
    SQL.Strings = (
      
        'select editora_id as ID, editora_nome as Nome, editora_cidade as' +
        ' Cidade '
      'from editora;')
    Left = 312
    Top = 136
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQuery1
    Left = 408
    Top = 128
  end
end
