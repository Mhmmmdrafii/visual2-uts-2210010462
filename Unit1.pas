unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt3: TEdit;
    lbl3: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.bersih;
begin
   edt1.Clear;
   edt2.Clear;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 bersih;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= True;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;

procedure TForm1.posisiawal;
begin
  bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn5.Enabled := False;
  btn4.Enabled := False;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Kategori Tidak Boleh Kosong!');
end
else if edt2.Text = '' then
begin
  ShowMessage('Deskripsi Barang Tidak Boleh Kosong!');
end
else if DataModule2.Zsatuan.Locate('nama', edt1.Text, []) then
begin
  ShowMessage('Nama Kategori '+ edt1.Text +' Sudah Ada Didalam Sistem');
end
else if DataModule2.Zsatuan.Locate('nama', edt2.Text, []) then
begin
  ShowMessage('Nilai '+ edt2.Text +' Sudah Ada Didalam Sistem');
end
else
begin
  with DataModule2.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('insert into satuan values(null, "'+ edt1.Text +'", "'+ edt2.Text +'")');
    ExecSQL;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Kategori Tidak Boleh Kosong!');
end
else if edt3.Text = '' then
begin
  ShowMessage('Deskripsi Barang Tidak Boleh Kosong!');
end else
if (edt1.Text = DataModule2.Zsatuan.Fields[1].AsString) and
   (edt2.Text = DataModule2.Zsatuan.Fields[2].AsString) then
begin
  ShowMessage('Tidak Ada Perubahan pada Nama Kategori dan Deskripsi');
end
else
begin
  with DataModule2.zsatuan do
  begin
    SQL.Clear;
    SQL.Add('update satuan set nama ="'+ edt1.Text +'", deskripsi ="'+ edt2.Text +'" where id= "'+ a +'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
end;
posisiawal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end
else if edt2.Text = '' then
begin
  ShowMessage('Deskripsi Barang Tidak Boleh Kosong!');
end
else
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModule2.zsatuan do
    begin
      SQL.Clear;
      SQL.Add('delete from satuan where nama = "'+ edt1.Text +'" and deskripsi = "'+ edt2 .Text +'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Dihapus!');
  end
  else
  begin
    ShowMessage('Data Batal Dihapus!');
  end;
end;
posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 posisiawal;
 edt1.Clear;
 edt2.Clear;
end;

procedure TForm1.edt3Change(Sender: TObject);
begin
with DataModule2.zsatuan do
begin
SQL.Clear;
SQL.Add('select * from satuan where nama like "%'+edt3.Text+'%"');
Open;
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule2.zsatuan.Fields[1].AsString;
edt2.Text:= DataModule2.zsatuan.Fields[2].AsString;
a := DataModule2.zsatuan.Fields[0].AsString;
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn5.Enabled := True;
  btn4.Enabled := False;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;

end;

end.
