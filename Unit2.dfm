object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 261
  Top = 145
  Height = 196
  Width = 325
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    Port = 3306
    Database = 'penjualan1'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\pipon\Downloads\Compressed\libmysql.dll'
    Left = 32
    Top = 16
  end
  object zsatuan: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 96
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = zsatuan
    Left = 96
    Top = 72
  end
end
