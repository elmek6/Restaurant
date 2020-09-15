unit layout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, Buttons, ExtCtrls, jpeg;

type
  TfrmLayout = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    ListView1: TListView;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    imgTest: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure imgTestMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLayout: TfrmLayout;

implementation

{$R *.dfm}

procedure TfrmLayout.SpeedButton2Click(Sender: TObject);
begin
//  ImgTest.Picture := ListView1.Selected.ImageIndex;
ImageList1.GetBitmap(ListView1.Selected.Index,
ImgTest.Picture.Bitmap);
end;

procedure TfrmLayout.imgTestMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ImgTest.Top := Y;
  ImgTest.Left := X;

end;

end.
