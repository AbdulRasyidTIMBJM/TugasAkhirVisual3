unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM user WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('req_account').Text := edit1.Text;
  zqry1.FieldByName('edit_account').Text := edit2.Text;
  zqry1.FieldByName('req_peminjaman').Text := edit3.Text;
  zqry1.Post;

end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=zqry1.FieldList[1].AsString;
   edit2.Text:=zqry1.FieldList[2].AsString;
   edit3.Text:=zqry1.FieldList[3].AsString;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
