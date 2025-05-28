unit UAutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFAutor = class(TForm)
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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
  FAutor: TFAutor;

implementation

{$R *.dfm}

uses UTelaPrincipal, UCadastroAutor;

procedure TFAutor.Button1Click(Sender: TObject);
begin
  FCadastroAutor := tFCadastroAutor.Create(Self);
  FCadastroAutor.FDQuery1.Open;
  FCadastroAutor.FDQuery1.Insert;
  FCadastroAutor.ShowModal;
  FreeAndNil(FCadastroAutor);
  FDQuery1.Refresh;
end;

procedure TFAutor.Button2Click(Sender: TObject);
begin
  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;


  FCadastroAutor := TFCadastroAutor.Create(self);
  FCadastroAutor.FDQuery1.ParamByName('autor_id').AsInteger := FDQuery1.FieldByName('autor_id').AsInteger;
  FCadastroAutor.FDQuery1.Open;
  FCadastroAutor.FDQuery1.Edit;
  FCadastroAutor.ShowModal;

  FreeAndNil(FCadastroAutor);

  FDQuery1.Refresh;

end;

procedure TFAutor.Button3Click(Sender: TObject);
begin

  var msg: string := 'Selecione um campo';
  if(FDQuery1.IsEmpty) then
  begin
    MessageDlg(msg,mtError,[mbOk],0);
    abort;
  end;

  FCadastroAutor := TFCadastroAutor.Create(self);
  FCadastroAutor.FDQuery1.ParamByName('autor_id').AsInteger :=  FDQuery1.FieldByName('autor_id').AsInteger ;
  FCadastroAutor.FDQuery1.Open;
  FCadastroAutor.FDQuery1.Delete;
  FCadastroAutor.FDQuery1.Close;

  FreeAndNil(FCadastroAutor);

  FDQuery1.Refresh;

end;

procedure TFAutor.Button4Click(Sender: TObject);
begin
  Close;
end;

end.
