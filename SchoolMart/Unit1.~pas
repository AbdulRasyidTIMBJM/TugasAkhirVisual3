unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    menu1: TMenuItem;
    DataAkun1: TMenuItem;
    DataBarang1: TMenuItem;
    DataPeminjaman1: TMenuItem;
    DataPerpanjangan1: TMenuItem;
    DataUser1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    Logout1: TMenuItem;
    procedure DataAkun1Click(Sender: TObject);
    procedure DataBarang1Click(Sender: TObject);
    procedure DataPeminjaman1Click(Sender: TObject);
    procedure DataPerpanjangan1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}



procedure TForm1.DataAkun1Click(Sender: TObject);
begin
if Form2=nil then
Form2:=TForm2.Create(Application);
Form2.Show;
end;

procedure TForm1.DataBarang1Click(Sender: TObject);
begin
if Form3=nil then
Form3:=TForm3.Create(Application);
Form3.Show;
end;

procedure TForm1.DataPeminjaman1Click(Sender: TObject);
begin
if Form4=nil then
Form4:=TForm4.Create(Application);
Form4.Show;
end;

procedure TForm1.DataPerpanjangan1Click(Sender: TObject);
begin
if Form5=nil then
Form5:=TForm5.Create(Application);
Form5.Show;
end;

procedure TForm1.DataUser1Click(Sender: TObject);
begin
if Form6=nil then
Form6:=TForm6.Create(Application);
Form6.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (edit1.Text='nata') and (edit2.Text='1234') then
   Menu1.Visible:=True;
   GroupBox1.Visible:=False;
   Logout1.Visible:=True;
end;

procedure TForm1.Logout1Click(Sender: TObject);
begin
Menu1.Visible:=False;
   GroupBox1.Visible:=True;
   Logout1.Visible:=False;
    Showmessage(' BERHASIL LOGOUT');
end;

end.
