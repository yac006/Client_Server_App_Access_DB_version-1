unit Unit_bdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, acHeaderControl, sStatusBar, ExtCtrls, Grids, sPanel,
  StdCtrls, sGroupBox, jpeg, sEdit, Buttons, IBDatabase, DB,
  IBCustomDataSet, IBTable, DBGrids, DBCtrls, Mask, ADODB;

type
  TForm_bdd = class(TForm)
    sGroupBox1: TsGroupBox;
    sStatusBar1: TsStatusBar;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sPanel1: TsPanel;
    sEdit1: TsEdit;
    sPanel2: TsPanel;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    DBImage1: TDBImage;
    BitBtn1: TBitBtn;
    ADOTable1: TADOTable;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_bdd: TForm_bdd;

implementation

uses Unit_principale, Unit_loading;

{$R *.dfm}

procedure TForm_bdd.SpeedButton1Click(Sender: TObject);
begin
    Form_principale.Show;
    Form_bdd.Close ;
end;

procedure TForm_bdd.Button1Click(Sender: TObject);
begin
    ADOTable1.Close;
    ADOTable1.Open;

end;

procedure TForm_bdd.BitBtn1Click(Sender: TObject);
begin
    Loading_form.ADOConnection1.Connected := false ;
    ADOTable1.close;

    Loading_form.ADOConnection1.Connected := true ;
    ADOTable1.open ;
end;

procedure TForm_bdd.FormShow(Sender: TObject);
begin
      ADOTable1.Close;
      ADOTable1.TableName := 'Utilisateurs';
      ADOTable1.open;
end;

end.
