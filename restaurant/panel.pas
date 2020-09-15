unit panel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TfrmPanel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPanel: TfrmPanel;

implementation

{$R *.dfm}

end.
