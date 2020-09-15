unit frmAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TfrmYonetim = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmYonetim: TfrmYonetim;

implementation

uses menu, layout;

{$R *.dfm}

procedure TfrmYonetim.SpeedButton3Click(Sender: TObject);
begin
  frmMenu.ShowModal;
end;

procedure TfrmYonetim.SpeedButton4Click(Sender: TObject);
begin
  frmLayout.ShowModal;
end;

end.
