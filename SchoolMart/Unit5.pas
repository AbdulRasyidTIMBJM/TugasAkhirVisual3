unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    NIK: TLabel;
    NAMA: TLabel;
    USERNAME: TLabel;
    PASSWORD: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Button4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label1: TLabel;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_transaksi values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_transaksi');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM tabel_transaksi WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tabel_transaksi');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('id_transaksi').Text := edit1.Text;
  zqry1.FieldByName('id_barang').Text := edit2.Text;
  zqry1.FieldByName('tanggal_transaksi').Text := edit3.Text;
  zqry1.FieldByName('jumlah_beli').Text := edit4.Text;
  zqry1.FieldByName('total harga').Text := edit5.Text;
  zqry1.Post;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=zqry1.FieldList[1].AsString;
   edit2.Text:=zqry1.FieldList[2].AsString;
   edit3.Text:=zqry1.FieldList[3].AsString;
   edit4.Text:=zqry1.FieldList[4].AsString;
   edit5.Text:=zqry1.FieldList[5].AsString;

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
