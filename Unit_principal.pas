unit Unit_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sStatusBar, ToolWin, sToolBar, StdCtrls, sLabel,
  Buttons, sSpeedButton, ExtCtrls, sPanel;

type
  TForm_principale2 = class(TForm)
    sPanel1: TsPanel;
    sWebLabel1: TsWebLabel;
    sPanel2: TsPanel;
    sWebLabel2: TsWebLabel;
    sPanel3: TsPanel;
    sWebLabel3: TsWebLabel;
    sToolBar1: TsToolBar;
    sStatusBar1: TsStatusBar;
    Button1: TButton;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form_principale2: TForm_principale2;

implementation

uses Unit_verification, Unit_principale;

{$R *.dfm}

procedure TForm_principale2.sSpeedButton1Click(Sender: TObject);
begin
     Form_Verification.Show;
     Form_principale2.close ;
end;

procedure TForm_principale2.Button1Click(Sender: TObject);
begin
    Form_Verification.Show;
    
end;

end.
