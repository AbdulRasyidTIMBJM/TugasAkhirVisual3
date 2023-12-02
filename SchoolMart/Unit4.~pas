unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    DBGrid1: TDBGrid;
    Button4: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
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
  Form4: TForm4;
  id : string;
implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into peminjaman values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edit6.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from peminjaman');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM peminjaman WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from peminjaman');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('username').Text := edit1.Text;
  zqry1.FieldByName('tgl_peminjaman').Text := edit2.Text;
  zqry1.FieldByName('tgl_pengembalian').Text := edit3.Text;
  zqry1.FieldByName('jumlah_pinjam').Text := edit4.Text;
  zqry1.FieldByName('total_barang').Text := edit5.Text;
  zqry1.FieldByName('denda').Text := edit6.Text;
  zqry1.Post;
  end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=zqry1.FieldList[1].AsString;
   edit2.Text:=zqry1.FieldList[2].AsString;
   edit3.Text:=zqry1.FieldList[3].AsString;
   edit4.Text:=zqry1.FieldList[4].AsString;
   edit5.Text:=zqry1.FieldList[5].AsString;
   edit6.Text:=zqry1.FieldList[6].AsString;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
