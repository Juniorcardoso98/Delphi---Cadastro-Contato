program Contato;

uses
  Vcl.Forms,
  U_Cadastro in '..\Forms\U_Cadastro.pas' {Form1},
  U_Pesquisa in '..\Forms\U_Pesquisa.pas' {Frm_pesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrm_pesquisa, Frm_pesquisa);
  Application.Run;
end.
