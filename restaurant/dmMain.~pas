unit dmMain;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBClient;

type
  Tdm_Main = class(TDataModule)
    zcMain: TZConnection;
    zqCategory: TZQuery;
    dsCategory: TDataSource;
    zqItems: TZQuery;
    dsItems: TDataSource;
    zqCategoryCode: TIntegerField;
    zqCategoryName: TStringField;
    zqCategoryOptionsType: TStringField;
    dsOptions: TDataSource;
    cdsOptions: TClientDataSet;
    cdsOptionsNo: TIntegerField;
    cdsOptionsOptionsType: TStringField;
    cdsOptionsName1: TStringField;
    cdsOptionsPrice1: TBCDField;
    cdsOptionsColor1: TStringField;
    cdsOptionsName2: TStringField;
    cdsOptionsPrice2: TBCDField;
    cdsOptionsColor2: TStringField;
    cdsOptionsName3: TStringField;
    cdsOptionsPrice3: TBCDField;
    cdsOptionsColor3: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Main: Tdm_Main;

implementation

{$R *.dfm}

end.
