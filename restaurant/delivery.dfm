object Form1: TForm1
  Left = 207
  Top = 170
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 36
    Top = 64
    Width = 341
    Height = 313
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Receipt'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Waiting'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Address'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 424
    Top = 64
    Width = 413
    Height = 313
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Driver'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Order Qty'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Left ...'
        Visible = True
      end>
  end
end
