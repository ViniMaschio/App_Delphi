unit UEditoras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFEditoras = class(TForm)
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BSair: TButton;
    BNovo: TButton;
    BDeletetar: TButton;
    BEditar: TButton;
    procedure BSairClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BDeletetarClick(Sender: TObject);

    procedure BEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditoras: TFEditoras;

implementation

{$R *.dfm}

uses UTelaPrincipal, UCadastroEditoras;

procedure TFEditoras.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFEditoras.BNovoClick(Sender: TObject);
begin
  FCadastroEditoras := TFCadastroEditoras.Create(Self);
  FCadastroEditoras.FDQuery1.Open;
  FCadastroEditoras.FDQuery1.Insert;
  FCadastroEditoras.ShowModal;
  FreeAndNil(FCadastroEditoras);
  FDQuery1.Refresh;
end;



procedure TFEditoras.BDeletetarClick(Sender: TObject);
begin

  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;

  FCadastroEditoras := TFCadastroEditoras.Create(self);
  FCadastroEditoras.FDQuery1.ParamByName('editora_id').AsInteger :=  FDQuery1.FieldByName('editora_id').AsInteger ;
  FCadastroEditoras.FDQuery1.Open;
  FCadastroEditoras.FDQuery1.Delete;
  FCadastroEditoras.FDQuery1.Close;

  FreeAndNil(FCadastroEditoras);

  FDQuery1.Refresh;

end;

procedure TFEditoras.BEditarClick(Sender: TObject);
begin
  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;


  FCadastroEditoras := TFCadastroEditoras.Create(self);
  FCadastroEditoras.FDQuery1.ParamByName('editora_id').AsInteger := FDQuery1.FieldByName('editora_id').AsInteger;
  FcadastroEditoras.FDQuery1.Open;
  FcadastroEditoras.FDQuery1.Edit;
  FCadastroEditoras.ShowModal;

  FreeAndNil(FCadastroEditoras);

  FDQuery1.Refresh;

end;

end.


