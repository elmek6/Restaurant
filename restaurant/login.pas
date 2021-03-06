unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmLogin = class(TForm)
    stbLogin: TStatusBar;
    Timer1: TTimer;
    Panel1: TPanel;
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
    SpeedButton1: TSpeedButton;
    lblCode: TStaticText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button1: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cmdsClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    FCode :String;
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses frmAdmin, order;

{$R *.dfm}

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '1':cmd1.Click;
    '2':cmd2.Click;
    '3':cmd3.Click;
    '4':cmd4.Click;
    '5':cmd5.Click;
    '6':cmd6.Click;
    '7':cmd7.Click;
    '8':cmd8.Click;
    '9':cmd9.Click;
    '0':cmd0.Click;
    #13:cmdOK.Click;
    #27:cmdC.Click;
  end;
//ShowMessage(inttostr(ord(key)));
end;

procedure TfrmLogin.cmdsClick(Sender: TObject);
  var
    no  :Integer;
begin
  no:=(Sender as TSpeedButton).Tag;

  case no of
    0..9:FCode := FCode + inttostr(no);
      -1:FCode :='';
     100:if FCode='123' then
           frmYonetim.ShowModal
         else if FCode='11' then
           frmOrder.ShowModal
         else
           FCode :='';
     999:close;
  end;

  if Length(FCode)>9 then FCode :='';

  lblCode.Caption := Copy('XXXXXXXXX',1,Length(FCode));
end;

procedure TfrmLogin.Timer1Timer(Sender: TObject);
begin
  stbLogin.Panels.Items[5].Text :=
    FormatDateTime('"Date:" dddd, mmmm d, yyyy    "Time:" hh:mm AM/PM', Now );
end;
procedure TfrmLogin.Button1Click(Sender: TObject);
begin
 close

end;

end.
