unit UExemplares;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFExemplares = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BntNovo: TButton;
    BntEditar: TButton;
    BntDeletar: TButton;
    BntSair: TButton;
    procedure BntNovoClick(Sender: TObject);
    procedure BntEditarClick(Sender: TObject);
    procedure BntDeletarClick(Sender: TObject);
    procedure BntSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExemplares: TFExemplares;

implementation

{$R *.dfm}

uses UTelaPrincipal, UCadastroExemplares;

procedure TFExemplares.BntNovoClick(Sender: TObject);
begin
  FCadastroExemplares := TFCadastroExemplares.Create(Self);
  FCadastroExemplares.FDQuery1.Open;
  FCadastroExemplares.FDQuery1.Insert;
  FCadastroExemplares.ShowModal;
  FreeAndNil(FCadastroExemplares);
  FDQuery1.Refresh;
end;

procedure TFExemplares.BntEditarClick(Sender: TObject);
begin
  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;


  FCadastroExemplares := TFCadastroExemplares.Create(self);
  FCadastroExemplares.FDQuery1.ParamByName('EXEMPLAR_ID').AsInteger := FDQuery1.FieldByName('EXEMPLAR_ID').AsInteger;
  FCadastroExemplares.FDQuery1.Open;
  FCadastroExemplares.FDQuery1.Edit;
  FCadastroExemplares.ShowModal;

  FreeAndNil(FCadastroExemplares);

  FDQuery1.Refresh;

end;

procedure TFExemplares.BntDeletarClick(Sender: TObject);
begin

  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;

  FCadastroExemplares := TFCadastroExemplares.Create(self);
  FCadastroExemplares.FDQuery1.ParamByName('EXEMPLAR_ID').AsInteger :=  FDQuery1.FieldByName('EXEMPLAR_ID').AsInteger ;
  FCadastroExemplares.FDQuery1.Open;
  FCadastroExemplares.FDQuery1.Delete;
  FCadastroExemplares.FDQuery1.Close;

  FreeAndNil(FCadastroExemplares);

  FDQuery1.Refresh;

end;

procedure TFExemplares.BntSairClick(Sender: TObject);
begin
  Close;
end;

end.
