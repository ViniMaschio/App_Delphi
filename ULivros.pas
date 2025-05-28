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
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

procedure TFLivros.Button1Click(Sender: TObject);
begin
  FCadastroLivros := TFCadastroLivros.Create(Self);
  FCadastroLivros.FDQuery1.Open;
  FCadastroLivros.FDQuery1.Insert;
  FCadastroLivros.ShowModal;
  FreeAndNil(FCadastroLivros);
  FDQuery1.Refresh;
end;

procedure TFLivros.Button2Click(Sender: TObject);
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

procedure TFLivros.Button3Click(Sender: TObject);
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

procedure TFLivros.Button4Click(Sender: TObject);
begin
  Close;
end;

end.
