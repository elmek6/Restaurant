program siena;

uses
  Forms,
  login in 'login.pas' {frmLogin},
  frmAdmin in 'frmAdmin.pas' {frmYonetim},
  menu in 'menu.pas' {frmMenu},
  layout in 'layout.pas' {frmLayout},
  order in 'order.pas' {frmOrder},
  dmMain in 'dmMain.pas' {dm_Main: TDataModule},
  options in 'options.pas' {frmOptions},
  global in 'global.pas',
  delivery in 'delivery.pas' {Form1},
  panel in 'panel.pas' {frmPanel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmYonetim, frmYonetim);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmLayout, frmLayout);
  Application.CreateForm(TfrmOrder, frmOrder);
  Application.CreateForm(Tdm_Main, dm_Main);
  Application.CreateForm(TfrmOptions, frmOptions);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPanel, frmPanel);
  Application.Run;
end.
