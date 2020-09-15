object frmOrder: TfrmOrder
  Left = 89
  Top = 11
  Width = 1032
  Height = 802
  Caption = 'frmOrder'
  Color = 16759929
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object SpeedButton1: TSpeedButton
    Left = 316
    Top = 8
    Width = 61
    Height = 61
    GroupIndex = 1
    Down = True
    Caption = '1'
    Flat = True
  end
  object SpeedButton2: TSpeedButton
    Left = 316
    Top = 72
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '2'
    Flat = True
  end
  object SpeedButton3: TSpeedButton
    Left = 316
    Top = 136
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '3'
    Flat = True
  end
  object SpeedButton4: TSpeedButton
    Left = 316
    Top = 200
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '4'
    Flat = True
  end
  object SpeedButton5: TSpeedButton
    Left = 316
    Top = 264
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '5'
    Flat = True
  end
  object SpeedButton6: TSpeedButton
    Left = 316
    Top = 328
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '6'
    Flat = True
  end
  object SpeedButton7: TSpeedButton
    Left = 316
    Top = 392
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '7'
    Flat = True
  end
  object SpeedButton8: TSpeedButton
    Left = 316
    Top = 456
    Width = 61
    Height = 61
    GroupIndex = 1
    Caption = '8'
    Flat = True
  end
  object sgCategory: TStringGrid
    Left = 384
    Top = 8
    Width = 633
    Height = 307
    DefaultColWidth = 125
    DefaultRowHeight = 75
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    TabOrder = 0
    OnClick = sgCategoryClick
    OnSelectCell = sgCategorySelectCell
  end
  object BitBtn1: TBitBtn
    Left = 308
    Top = 532
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8454143
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object UpDown1: TUpDown
    Left = 4
    Top = 12
    Width = 73
    Height = 241
    Min = 0
    Position = 0
    TabOrder = 2
    Wrap = False
  end
  object memReceipt: TMemo
    Left = 80
    Top = 12
    Width = 225
    Height = 597
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 172
    Top = 620
    Width = 121
    Height = 73
    Caption = 'BitBtn2'
    TabOrder = 4
  end
  object sagItems: TStringAlignGrid
    Left = 384
    Top = 344
    Width = 633
    Height = 381
    Ctl3D = True
    DefaultColWidth = 125
    DefaultRowHeight = 75
    FixedCols = 0
    FixedRows = 0
    ParentCtl3D = False
    ScrollBars = ssNone
    TabOrder = 5
    OnClick = sagItemsClick
    Alignment = alCenter
    Wordwrap = ww_wordwrap
    Editable = False
    SelectedCellColor = clGray
    SelectEditText = False
    AfterLastCellEdit = lc_stop
    DrawSelection = False
    PropCell = ()
    PropCol = ()
    PropRow = ()
    PropFixedCol = ()
    PropFixedRow = ()
  end
end
