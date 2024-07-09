object Form1: TForm1
  Left = 241
  Top = 141
  Width = 1044
  Height = 600
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 208
    Top = 40
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 184
    Top = 80
    Width = 72
    Height = 18
    Caption = 'DESKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 120
    Top = 360
    Width = 33
    Height = 18
    Caption = 'CARI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 264
    Top = 40
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 264
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 72
    Top = 160
    Width = 97
    Height = 33
    Caption = 'NEW'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 160
    Width = 97
    Height = 33
    Caption = 'INSERT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 328
    Top = 160
    Width = 97
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 456
    Top = 160
    Width = 97
    Height = 33
    Caption = 'DELATE'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 584
    Top = 160
    Width = 97
    Height = 33
    Caption = 'CANCEL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 144
    Top = 224
    Width = 337
    Height = 113
    DataSource = DataModule2.dssatuan
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 176
    Top = 360
    Width = 321
    Height = 21
    TabOrder = 8
    OnChange = edt3Change
  end
end
