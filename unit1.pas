unit UNIT1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, ExtCtrls, ZConnection, ZDataset, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    email: TEdit;
    Image1: TImage;
    Image2: TImage;
    Kelas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NIS: TEdit;
    Nama: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure NISChange(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Zquery2.SQL.Clear;
  try
    ZQuery2.SQL.add('insert into tugaspd5 values("'+NIS.text+'","'+Nama.text+'","'+Kelas.text+'","'+Email.text+'")');
    ZQuery2.ExecSQL;
    Showmessage('Success :) ');
  except
    showmessage('Failed :( ');

  end;
  ZQuery1.refresh;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Zquery2.SQL.Clear;
  try
    ZQuery2.SQL.add('update tugaspd5 set NIS="'+NIS.text+'",Nama="'+Nama.text+'",Kelas="'+Kelas.text+'",Email="'+Email.text+'" where NIS="'+NIS.text+'"');
    ZQuery2.ExecSQL;
    Showmessage('Success :)');
  except
    showmessage('Failed :( ');
  end;
  ZQuery1.refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Userstring: string;
begin
  if inputquery('Hapus data', ' Masukan NIS yang akan dihapus', Userstring)
  then
      begin
      Zquery2.SQL.Clear;
      try
       ZQuery2.SQL.add('delete from tugaspd5 where NIS="'+userstring+'"');
       ZQuery2.ExecSQL;
       Showmessage('Success :)');
      except
       showmessage('Failed :( ');
      end;
      ZQuery1.refresh
      end
  else begin end
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.NISChange(Sender: TObject);
begin

end;

procedure TForm1.ZConnection1AfterConnect(Sender: TObject);
begin

end;

end.

