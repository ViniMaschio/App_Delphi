unit ULivros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFLivros = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BntNovo: TButton;
    BntEditar: TButton;
    BntApagar: TButton;
    BntSair: TButton;
    procedure BntNovoClick(Sender: TObject);
    procedure BntEditarClick(Sender: TObject);
    procedure BntApagarClick(Sender: TObject);
    procedure BntSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLivros: TFLivros;

implementation

{$R *.dfm}

uses UTelaPrincipal, UCadastroLivros;

procedure TFLivros.BntNovoClick(Sender: TObject);
begin
  FCadastroLivros := TFCadastroLivros.Create(Self);
  FCadastroLivros.FDQuery1.Open;
  FCadastroLivros.FDQuery1.Insert;
  FCadastroLivros.ShowModal;
  FreeAndNil(FCadastroLivros);
  FDQuery1.Refresh;
end;

procedure TFLivros.BntEditarClick(Sender: TObject);
begin
  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;


  FCadastroLivros := TFCadastroLivros.Create(self);
  FCadastroLivros.FDQuery1.ParamByName('livro_id').AsInteger := FDQuery1.FieldByName('livro_id').AsInteger;
  FCadastroLivros.FDQuery1.Open;
  FCadastroLivros.FDQuery1.Edit;
  FCadastroLivros.ShowModal;

  FreeAndNil(FCadastroLivros);

  FDQuery1.Refresh;

end;

procedure TFLivros.BntApagarClick(Sender: TObject);
begin

  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;

  FCadastroLivros := TFCadastroLivros.Create(self);
  FCadastroLivros.FDQuery1.ParamByName('livro_id').AsInteger :=  FDQuery1.FieldByName('livro_id').AsInteger ;
  FCadastroLivros.FDQuery1.Open;
  FCadastroLivros.FDQuery1.Delete;
  FCadastroLivros.FDQuery1.Close;

  FreeAndNil(FCadastroLivros);

  FDQuery1.Refresh;

end;

procedure TFLivros.BntSairClick(Sender: TObject);
begin
  Close;
end;

end.
