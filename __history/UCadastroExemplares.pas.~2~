unit UCadastroExemplares;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFCadastroExemplares = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDUpdateSQL1: TFDUpdateSQL;
    FDQuery1EXEMPLAR_ID: TIntegerField;
    FDQuery1EDICAO: TSmallintField;
    FDQuery1ANO: TSmallintField;
    FDQuery1ISBN: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    FDQuery1EXEMPLAR_LIVRO_ID: TIntegerField;
    FDQuery1EXEMPLAR_EDITORA_ID: TIntegerField;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    FDQuery3: TFDQuery;
    DataSource3: TDataSource;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroExemplares: TFCadastroExemplares;

implementation

{$R *.dfm}

uses UTelaPrincipal;



procedure TFCadastroExemplares.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFCadastroExemplares.Button2Click(Sender: TObject);
begin

  var msg : string := 'campos vazios';

  if (DBEdit2.Field.Text.IsEmpty or DBEdit3.Field.Text.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    Abort;
  end;

  FDQuery1.Post;

  Close;

end;

procedure TFCadastroExemplares.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if  FDQuery1.state in [dsEdit, dsInsert] then
  FDQuery1.Cancel;

  Close;
end;

end.
