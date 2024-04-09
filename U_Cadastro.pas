unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    Conexao: TFDConnection;
    Q_cadastro: TFDQuery;
    Ds_cadastro: TDataSource;
    Q_cadastroID_CONTATO: TIntegerField;
    Q_cadastroNOME: TStringField;
    Q_cadastroTELEFONE: TStringField;
    Q_cadastroCELULAR: TStringField;
    Q_cadastroEMAIL: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn8: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_Pesquisa;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

 if messagedlg ('Deseja editar este registro?', mtConfirmation, [mbOk,mbNo],0)=mrOk then

 begin

   Q_cadastro.Edit;

 end

 else

    abort;

Q_cadastro.Edit;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);

var prox:integer;

begin

Q_cadastro.active:= true;
Q_cadastro.Last;
prox:=Q_cadastroID_CONTATO.AsInteger + 1;
Q_cadastro.Append;
Q_cadastroID_CONTATO.AsInteger:=prox;
db_nome.SetFocus;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

 if messagedlg ('Deseja deletar este registro?', mtConfirmation, [mbOk,mbNo],0)=mrOk then

 begin

   Q_cadastro.Delete;

 end

 else

    abort;

end;


procedure TForm1.BitBtn4Click(Sender: TObject);
begin

Q_cadastro.Post;
Messagedlg('Registro gravado com sucesso!', mtInformation, [mbOk],0);

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin

Q_cadastro.Cancel;

end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin

Q_cadastro.Refresh;
Messagedlg('Registro Atualizado com sucesso!', mtInformation, [mbOk],0);

end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin

 if messagedlg ('Deseja fechar esta tela?', mtConfirmation, [mbOk,mbNo],0)=mrOk then

   begin

     Application.Terminate;

   end;


end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin

 Frm_pesquisa:=Tfrm_pesquisa.Create(self);
 Frm_pesquisa.ShowModal;
try

finally
 Frm_pesquisa.free;
 Frm_pesquisa:=nil;
end;
end;

end.
