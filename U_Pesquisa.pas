unit U_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.StdCtrls, Vcl.Buttons, frxSmartMemo, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses;

type
  TFrm_pesquisa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ActionManager1: TActionManager;
    DBNavigator1: TDBNavigator;
    ed_pesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    bt_pesquisa: TBitBtn;
    bt_imprimir: TBitBtn;
    cb_opcao: TComboBox;
    Label3: TLabel;
    Relatorio: TfrxReport;
    Frx_cadastro: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesquisa: TFrm_pesquisa;

implementation

{$R *.dfm}

uses U_Cadastro;

procedure TFrm_pesquisa.bt_imprimirClick(Sender: TObject);
begin

 relatorio.ShowReport();

end;

procedure TFrm_pesquisa.bt_pesquisaClick(Sender: TObject);
begin

 Form1.Q_cadastro.Close;
 Form1.Q_cadastro.Params.Clear;
 Form1.Q_cadastro.SQL.Add('');
 Form1.Q_cadastro.SQL.Clear;
 Form1.Q_cadastro.SQL.Add('Select * from contato');

 case cb_opcao.ItemIndex of
  0:begin

   Form1.Q_cadastro.SQL.Add('where id_contato =:pcodigo');
   Form1.Q_cadastro.ParamByName('pcodigo') .AsInteger:=strtoint (ed_pesquisa.Text);
   
 end;

  1:begin

   Form1.Q_cadastro.SQL.Add('where nome =:pnome');
   Form1.Q_cadastro.ParamByName('pnome') .AsString:=(ed_pesquisa.Text);
   
  end;

  2:begin

   Form1.Q_cadastro.SQL.Add('order by id_contato');

  end;

 end;

   Form1.Q_cadastro.Open;

   if Form1.Q_cadastro.IsEmpty then
      begin
        Messagedlg('Nenhum registro encontrado!', mtInformation, [mbok],0);
      end;


end;

end.
