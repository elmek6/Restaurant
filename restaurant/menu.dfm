object frmMenu: TfrmMenu
  Left = 135
  Top = 16
  Width = 1004
  Height = 753
  Caption = 'frmMenu'
  Color = 13290239
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 384
    Top = 660
    Width = 109
    Height = 41
    Caption = 'Add Group'
  end
  object SpeedButton2: TSpeedButton
    Left = 500
    Top = 660
    Width = 109
    Height = 41
    Caption = 'Delete'
  end
  object Label1: TLabel
    Left = 4
    Top = 12
    Width = 55
    Height = 16
    Caption = 'Category'
  end
  object Label2: TLabel
    Left = 268
    Top = 12
    Width = 32
    Height = 16
    Caption = 'Items'
  end
  object Label3: TLabel
    Left = 268
    Top = 296
    Width = 46
    Height = 16
    Caption = 'Options'
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 28
    Width = 237
    Height = 509
    DataSource = dm_Main.dsCategory
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OptionsType'
        Width = 87
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 268
    Top = 32
    Width = 713
    Height = 229
    DataSource = dm_Main.dsItems
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Category'
        PickList.Strings = (
          'Group1'
          'Group2'
          'Group3'
          'Group4')
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Scale'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OptionsType'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 268
    Top = 316
    Width = 713
    Height = 225
    DataSource = dm_Main.dsOptions
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OptionsType'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color3'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 284
    Top = 564
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 364
    Top = 564
    Width = 121
    Height = 24
    TabOrder = 4
    Text = 'Edit1'
  end
  object BitBtn2: TBitBtn
    Left = 600
    Top = 564
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 65408
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 616
    Width = 240
    Height = 25
    DataSource = dm_Main.dsOptions
    TabOrder = 6
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 492
    Top = 564
  end
end
