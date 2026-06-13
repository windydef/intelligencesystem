unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
x : array [0..2, 1..4] of integer ;
xtemp : array [0..2] of integer ;
wtemp : array [0..2] of extended ;
y  : array [1..4] of integer ;
w : array [0..2,1..5] of extended ;
d,v,e : array [1..4] of extended ;
error_kuadrat:array [0..100000] of extended;
miu,epsilon,temp,error,vtemp:extended;
ytemp,epoch,k,i,flag,n:integer;



implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
chart1lineseries1.Clear;
//series1.Clear;

//inisialisasi

x[0,1]:=1; x[0,2]:=1; x[0,3]:=1; x[0,4]:=1;
x[1,1]:=0; x[1,2]:=0; x[1,3]:=1; x[1,4]:=1;
x[2,1]:=0; x[2,2]:=1; x[2,3]:=0; x[2,4]:=1;

//d[1]:=0; d[2]:=0; d[3]:=0; d[4]:=1;

//and
d[1]:=-0.1; d[2]:=-0.1; d[3]:=-0.1; d[4]:=0.1;

//or
//d[1]:=-0.1; d[2]:=0.1; d[3]:=0.1; d[4]:=0.1;

randomize;
//weight awal w(k=1)
w[0,1]:=(randg(0,0.05));
w[1,1]:=(randg(0,0.05));
w[2,1]:=(randg(0,0.05));
edit1.Text:=floattostr(w[0,1]);
edit2.Text:=floattostr(w[1,1]);
edit3.Text:=floattostr(w[2,1]);

//miu dan epsilon
miu:=strtofloat(edit6.Text);
epsilon:=strtofloat(edit7.Text);

epoch:=0;
timer1.Enabled:= true;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //proses training
  for k:=1 to 4 do
  begin
    //menghitung v(k)
    temp:=0;
    for i:=0 to 2 do
    begin
        temp := temp + w[i,k]*x[i,k];
    end;
    v[k] := temp;

    //menghitung e(k)
    e[k] := d[k]-v[k];

    //update w(k+1)
    for i:=0 to 2 do
    begin
        w[i,k+1]:= w[i,k]+miu*e[k]*x[i,k]; //weight baru
        wtemp[i]:= w[i,k];  //menyimpan weight terakhir
    end;
  end;
  //akhir training untuk keseluruhan training set


  //menampilkan weight terakhir
  edit16.Text:=floattostr(wtemp[0]);
  edit17.Text:=floattostr(wtemp[1]);
  edit18.Text:=floattostr(wtemp[2]);

  //menghitung output menggunakan weight terakhir
  for k:=1 to 4 do
  begin
    temp:=0;
    for i:=0 to 2 do
    begin
        temp := temp + wtemp[i]*x[i,k];
    end;
    v[k] := temp;
    edit8.Text:=floattostr(v[1]);
    edit9.Text:=floattostr(v[2]);
    edit10.Text:=floattostr(v[3]);
    edit11.Text:=floattostr(v[4]);

    if v[k]<0 then y[k]:=0;
    if v[k]>=0 then y[k]:=1;
    edit12.Text:=floattostr(y[1]);
    edit13.Text:=floattostr(y[2]);
    edit14.Text:=floattostr(y[3]);
    edit15.Text:=floattostr(y[4]);
  end;

  //mengecek konvergensi atau menghitung error kuadrat(mse)
  error:=0;
  for k:=1 to 4 do
  begin
    error:=error+0.5*sqr(e[k]);
  end;
  error_kuadrat[epoch]:=(error);
  edit5.Text:=inttostr(epoch);
  edit4.Text:=floattostr(error_kuadrat[epoch]);
  chart1lineseries1.AddXY(epoch,error_kuadrat[epoch]);

  epoch:=epoch+1;

  if (error_kuadrat[epoch-1]<epsilon)then
  begin
      timer1.Enabled:= false;
  end
  else
  begin
     for i:=0 to 2 do
     begin
        w[i,1]:= w[i,5];//memindah update weight untuk k=1
    end;
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:=false;
end;

//testing
procedure TForm1.Button3Click(Sender: TObject);
begin
    xtemp[0]:=1;
    xtemp[1]:=strtoint(edit19.Text);
    xtemp[2]:=strtoint(edit20.Text);
    temp:=0;
    for i:=0 to 2 do
    begin
       temp:=temp + wtemp[i]*xtemp[i];
    end;
    vtemp:=temp;
    edit21.Text:=floattostr(vtemp);
    if vtemp<0 then ytemp:=0;
    if vtemp>=0 then ytemp:=1;
    edit22.Text:=floattostr(ytemp);
end;

end.

