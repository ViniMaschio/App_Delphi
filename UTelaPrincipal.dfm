object FTelaPrincipal: TFTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 494
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 272
    Top = 112
    Width = 248
    Height = 65
    Caption = 'Bem Vindo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 810
    Height = 29
    ButtonHeight = 23
    ButtonWidth = 67
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object BnovoLivro: TToolButton
      Left = 0
      Top = 0
      Caption = 'Livro'
      ImageIndex = 0
      OnClick = BnovoLivroClick
    end
    object BntNovoAutor: TToolButton
      Left = 67
      Top = 0
      Caption = 'Autor'
      ImageIndex = 1
      OnClick = BntNovoAutorClick
    end
    object BntNovoEditoras: TToolButton
      Left = 134
      Top = 0
      Caption = 'Editoras'
      ImageIndex = 2
      OnClick = BntNovoEditorasClick
    end
    object BntNovoExemplares: TToolButton
      Left = 201
      Top = 0
      Caption = 'Exemplares'
      ImageIndex = 3
      OnClick = BntNovoExemplaresClick
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Vinicius Maschio\Desktop\trabalho Dhelp\Banco ' +
        'De dados\bancoBliblioteca.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 248
    Top = 312
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = FDConnection1
    Left = 272
    Top = 248
  end
end
