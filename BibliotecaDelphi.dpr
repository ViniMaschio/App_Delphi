program BibliotecaDelphi;

uses
  Vcl.Forms,
  UTelaPrincipal in 'UTelaPrincipal.pas' {FTelaPrincipal},
  UCadastroAutor in 'UCadastroAutor.pas' {FCadastroAutor},
  UCadastroEditoras in 'UCadastroEditoras.pas' {FCadastroEditoras},
  UEditoras in 'UEditoras.pas' {FEditoras},
  UAutor in 'UAutor.pas' {FAutor},
  ULivros in 'ULivros.pas' {FLivros},
  UCadastroLivros in 'UCadastroLivros.pas' {FCadastroLivros},
  UExemplares in 'UExemplares.pas' {FExemplares},
  UCadastroExemplares in 'UCadastroExemplares.pas' {FCadastroExemplares};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTelaPrincipal, FTelaPrincipal);
  Application.CreateForm(TFCadastroAutor, FCadastroAutor);
  Application.CreateForm(TFCadastroEditoras, FCadastroEditoras);
  Application.CreateForm(TFEditoras, FEditoras);
  Application.CreateForm(TFAutor, FAutor);
  Application.CreateForm(TFLivros, FLivros);
  Application.CreateForm(TFCadastroLivros, FCadastroLivros);
  Application.CreateForm(TFExemplares, FExemplares);
  Application.CreateForm(TFCadastroExemplares, FCadastroExemplares);
  Application.Run;
end.
