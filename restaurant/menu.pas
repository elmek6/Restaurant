unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, Grids, DBGrids, StdCtrls, DB, DBClient,
  ExtCtrls, DBCtrls;

type
  TfrmMenu = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    ColorDialog1: TColorDialog;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses dmMain;

{$R *.dfm}

procedure TfrmMenu.BitBtn1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    edit1.Text := ColorToString(ColorDialog1.Color);
end;

procedure TfrmMenu.BitBtn2Click(Sender: TObject);
  var
    i :integer;
begin
  ShowMessageFmt('Rec Count %d', [dm_main.cdsOptions.RecordCount]);
//  ClientDataSet1.MoveBy()    ;
  for i := dm_main.cdsOptions.RecordCount downto 1 do
  begin
    dm_main.cdsOptions.RecNo := i;
    ShowMessageFmt('code %d name %s',[dm_main.cdsOptionsNo.Value,

    dm_main.cdsOptionsName1.Value
    ]);
  end;



end;

end.
