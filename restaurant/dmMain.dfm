object dm_Main: Tdm_Main
  OldCreateOrder = False
  Left = 288
  Top = 147
  Height = 367
  Width = 555
  object zcMain: TZConnection
    Protocol = 'mysql-4.1'
    Port = 3306
    Database = 'alara'
    User = 'root'
    Catalog = 'alara'
    Connected = True
    Left = 252
    Top = 12
  end
  object zqCategory: TZQuery
    Connection = zcMain
    Active = True
    SQL.Strings = (
      'select * from Category')
    Params = <>
    Left = 84
    Top = 104
    object zqCategoryCode: TIntegerField
      FieldName = 'Code'
    end
    object zqCategoryName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object zqCategoryOptionsType: TStringField
      FieldName = 'OptionsType'
      Size = 30
    end
  end
  object dsCategory: TDataSource
    DataSet = zqCategory
    Left = 84
    Top = 60
  end
  object zqItems: TZQuery
    Connection = zcMain
    Active = True
    SQL.Strings = (
      'select * from Items;')
    Params = <>
    Left = 172
    Top = 104
  end
  object dsItems: TDataSource
    DataSet = zqItems
    Left = 172
    Top = 60
  end
  object dsOptions: TDataSource
    DataSet = cdsOptions
    Left = 340
    Top = 56
  end
  object cdsOptions: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'No'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'OptionsType'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Name1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Price1'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 24
      end
      item
        Name = 'Color1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Name2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Price2'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 24
      end
      item
        Name = 'Color2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Name3'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end
      item
        Name = 'Price3'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 24
      end
      item
        Name = 'Color3'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 24
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 340
    Top = 112
    Data = {
      B60200009619E0BD01000000180000000B0003000000030000007201024E6F04
      000100100000000B4F7074696F6E735479706501004900100001000557494454
      48020002001800054E616D653101004900100001000557494454480200020018
      00065072696365310E0005001000010005574944544802000200180006436F6C
      6F72310100490010000100055749445448020002001800054E616D6532010049
      0010000100055749445448020002001800065072696365320E00050010000100
      05574944544802000200180006436F6C6F723201004900100001000557494454
      48020002001800054E616D653301004900100001000557494454480200020018
      00065072696365330E0005001000010005574944544802000200180006436F6C
      6F7233010049001000010005574944544802000200180003000D44454641554C
      545F4F524445520400820001000000010000000B5052494D4152595F4B455904
      0082000100000001000000044C43494402000100090800000000010000000253
      4C054E4F20475018000000000000000000000000011800000009243030303046
      4638300247501800000000000000000000000001180000000924303030304141
      3830035847501800000000000000000000000001180000000924303030304444
      3830000000000200000002534C054E4F204F4E18000000000000000000000000
      011800000009243030383046463030024F4E1800000000000000000000000002
      180000000924303030304242383003584F4E1800000000000000000000000001
      1800000009243030303045453830000000000300000002534C054E4F20424F18
      00000000000000000000000001000000000924303030303830464602424F1800
      00000000000000000000000200000000092430303030434338300358424F1800
      0000000000000000000000010000000009243030303046463030}
    object cdsOptionsNo: TIntegerField
      FieldName = 'No'
    end
    object cdsOptionsOptionsType: TStringField
      FieldName = 'OptionsType'
      Size = 24
    end
    object cdsOptionsName1: TStringField
      FieldName = 'Name1'
      Size = 24
    end
    object cdsOptionsPrice1: TBCDField
      FieldName = 'Price1'
      Precision = 24
      Size = 0
    end
    object cdsOptionsColor1: TStringField
      FieldName = 'Color1'
      Size = 24
    end
    object cdsOptionsName2: TStringField
      FieldName = 'Name2'
      Size = 24
    end
    object cdsOptionsPrice2: TBCDField
      FieldName = 'Price2'
      Precision = 24
      Size = 0
    end
    object cdsOptionsColor2: TStringField
      FieldName = 'Color2'
      Size = 24
    end
    object cdsOptionsName3: TStringField
      FieldName = 'Name3'
      Size = 24
    end
    object cdsOptionsPrice3: TBCDField
      FieldName = 'Price3'
      Precision = 24
      Size = 0
    end
    object cdsOptionsColor3: TStringField
      FieldName = 'Color3'
      Size = 24
    end
  end
end
