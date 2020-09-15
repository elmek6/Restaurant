unit order;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ComCtrls, Aligrid;

type
  TfrmOrder = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    sgCategory: TStringGrid;
    BitBtn1: TBitBtn;
    UpDown1: TUpDown;
    memReceipt: TMemo;
    BitBtn2: TBitBtn;
    sagItems: TStringAlignGrid;
    procedure FormShow(Sender: TObject);
    procedure sgCategorySelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure sgCategoryClick(Sender: TObject);
    procedure sagItemsClick(Sender: TObject);
  private
    { Private declarations }
  public
  published
    procedure GosterItems;
    { Public declarations }
  end;

var
  frmOrder: TfrmOrder;

implementation

uses dmMain, options, global;

{$R *.dfm}

procedure TfrmOrder.FormShow(Sender: TObject);
  var
    col, row,
    i  :integer;
begin

  col := 0;
  row := 0;

  dm_Main.zqCategory.First;
  for i := 1 to dm_Main.zqCategory.RecordCount do
  begin

    if col>=sgCategory.ColCount then begin
      col := 0;
      inc(row);
    end;

    sgCategory.Cells[col, row] := dm_Main.zqCategory.FieldValues['Name'];
    dm_Main.zqCategory.Next;
    inc(col);
  end;

  memReceipt.Lines.Clear;



end;

procedure TfrmOrder.sgCategorySelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GosterItems;
  frmorder.caption := format('name %s', [sgCategory.Cells[ACol, ARow]]);
end;

procedure TfrmOrder.GosterItems;
  var
    col, row  :integer;
    i         :integer;
begin

  col := 0;
  row := 0;

  dm_Main.zqItems.First;
  for i := 1 to dm_Main.zqItems.RecordCount do
  begin

    if col>=sagItems.ColCount then begin
      col := 0;
      inc(row);
    end;

    sagItems.Cells[col, row] := dm_Main.zqItems.FieldValues['Name'];
    sagItems.CellBrush[Col, Row].Color := dm_Main.zqItems.FieldValues['Color'];
    dm_Main.zqItems.Next;
    inc(col);
  end;


end;

procedure TfrmOrder.BitBtn1Click(Sender: TObject);
  var a:TItem;
begin
  memReceipt.Lines := a.Fis;

end;

procedure TfrmOrder.sgCategoryClick(Sender: TObject);
begin
    memReceipt.Lines.Add('eklenen group')
end;

procedure TfrmOrder.sagItemsClick(Sender: TObject);
begin
  memReceipt.Lines.Add(' eklenen 2');

//if opsiyonvarmi then
  frmOptions.ShowModal;
//  else
//  ListBox1.AddItem(sgItems.Cells[Acol, Arow], nil);

end;

END.
