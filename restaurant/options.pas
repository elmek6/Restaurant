unit options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons, ExtCtrls, StdCtrls, Aligrid;

type
  TfrmOptions = class(TForm)
    Panel10: TPanel;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    cmd1: TSpeedButton;
    cmd2: TSpeedButton;
    cmd4: TSpeedButton;
    cmd5: TSpeedButton;
    cmd7: TSpeedButton;
    cmd8: TSpeedButton;
    cmdC: TSpeedButton;
    cmd0: TSpeedButton;
    cmd3: TSpeedButton;
    cmd6: TSpeedButton;
    cmd9: TSpeedButton;
    cmdOK: TSpeedButton;
    lblCode: TStaticText;
    Panel3: TPanel;
    Shape1: TShape;
    Image2: TImage;
    Image1: TImage;
    Label13: TLabel;
    Bevel3: TBevel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    sagTopics: TStringAlignGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sagTopicsDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sagTopicsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

uses dmMain;

{$R *.dfm}

procedure TfrmOptions.BitBtn1Click(Sender: TObject);
  var i     :integer;
      c, r  :integer;
begin
  r := 0;
  c := 0;
  for i := 1 to dm_main.cdsOptions.RecordCount do
  begin
    dm_Main.cdsOptions.RecNo := i;
    sagTopics.Cells[c,r] := dm_Main.cdsOptionsName1.AsString;
    sagTopics.CellBrush[c, r].Color := dm_Main.cdsOptionsColor1.AsInteger;

    sagTopics.HintCell[c, r] := '1';

    if c>=sagTopics.ColCount-1 then begin
      inc(r);
      c := 0;
    end else
      inc(c);
  end;

end;

procedure TfrmOptions.FormShow(Sender: TObject);
begin
   BitBtn1Click(sender);
end;

procedure TfrmOptions.sagTopicsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var
    sira :Integer;
begin
//  sagTopics.CellBrush[].Bitmap.TransparentMode





{
  sira := (ARow) * sagTopics.ColCount + ACol+1;

  if (sira >0) and (sira<=dm_Main.cdsOptions.RecordCount) then begin
    dm_Main.cdsOptions.RecNo := sira;
    sagTopics.Canvas.Brush.Color := dm_Main.cdsOptionsColor1.AsInteger;
    sagTopics.Canvas.TextRect(Rect, (Rect.Right+Rect.Left) DIV 2, (Rect.Top+Rect.Bottom) DIV 2, sagTopics.cells[acol, arow]);
  end;
 }
end;

procedure TfrmOptions.sagTopicsClick(Sender: TObject);
  var
    top, left :Integer;
    h :string;
begin
  top := sagTopics.Selection.Top;
  left := sagTopics.Selection.Left;


  h:= sagTopics.HintCell[left, top];
  if h='' then exit;

  dm_Main.cdsOptions.RecNo := sagTopics.ColCount* Top+ Left +1;



  case h[1] of
    '3':begin
          sagTopics.Cells[left, top] := dm_Main.cdsOptionsName1.AsString;
          sagTopics.CellBrush[left, top].Color := dm_Main.cdsOptionsColor1.AsInteger;
          sagTopics.HintCell[left, top]:= '1';
        end;

    '1':begin
          sagTopics.Cells[left, top] := dm_Main.cdsOptionsName2.AsString;
          sagTopics.CellBrush[left, top].Color := dm_Main.cdsOptionsColor2.AsInteger;
          sagTopics.HintCell[left, top]:= '2';
        end;
    '2':begin
          sagTopics.Cells[left, top] := dm_Main.cdsOptionsName3.AsString;
          sagTopics.CellBrush[left, top].Color := dm_Main.cdsOptionsColor3.AsInteger;
          sagTopics.HintCell[left, top]:= '3';
        end;
  end;
end;

end.
