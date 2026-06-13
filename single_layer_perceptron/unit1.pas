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
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button9: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit2: TEdit;
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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  miu: array [0..20000] of extended ;
x : array [1..2, 1..4] of integer ;
xtemp : array [1..2] of integer ;
wtemp : array [1..2] of extended ;
y,mse: array [1..4] of extended ;
w : array [1..2] of extended ;
d,v,e : array [1..4] of extended ;
mse2,miunol,tau,epsilon,temp,error,vtemp,alpha,ytemp,mse_total:extended;
th,thtemp:extended;
k,i,n,a:integer;
f, fileop, fileawal, fileopawal: textfile;


implementation

{$R *.frm}

{ TForm1 }


//RUN PROGRAM
procedure TForm1.Button1Click(Sender: TObject);
begin

//weight dan theta awal
th:=(randg(0,0.01));
w[1]:=(randg(0,0.01));
w[2]:=(randg(0,0.01));
edit7.Text:=floattostr(th);
edit8.Text:=floattostr(w[1]);
edit9.Text:=floattostr(w[2]);

  if savedialog2.Execute then
       begin
       assignfile(fileawal, savedialog2.FileName);
       rewrite(fileawal);
       writeln(fileawal,floattostr(th));
       writeln(fileawal,floattostr(w[1]));
       writeln(fileawal,floattostr(w[2]));
       closefile(fileawal);
       end;

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //proses training
  for n:=1 to 4 do
  begin
    //menghitung miu(k)
  miu[k]:= (miunol/(1+(k/tau)));

    //menghitung v(n)
    temp:=0;
    for i:=1 to 2 do
    begin
        temp:=temp+w[i]*x[i,n];
    end;
    v[n]:=temp+th;

    //menghitung y
    y[n]:=1/(1+exp(-alpha*v[n]));

    //menghitung e
    e[n] := d[n]-y[n];

    //menghitung error kuadrat(mse)
{    mse[n]:=0.5*(sqr(e[n]));
    edit12.Text:=inttostr(k);
    edit1.Text:=floattostr(mse[n]);
    series1.AddXY(k,mse[n]);
}
    mse2:=mse2+0.5*(sqr(e[n]));
    edit6.Text:= inttostr(k);
    edit5.Text:= floattostr(mse2);
    chart1lineseries1.AddXY(k,mse2);


    //update w dan th
    for i:=1 to 2 do
    begin
        w[i]:= w[i]+miu[k]*e[n]*alpha*y[n]*(1-y[n])*x[i,n]; //weight baru
        wtemp[i]:=w[i];
    end;
    th:= th+miu[k]*e[n]*alpha*y[n]*(1-y[n]); //theta baru
    thtemp:=th;
    k:= k+1;
  end;
  //akhir training untuk keseluruhan training set

  //menampilkan weight terakhir
  edit10.Text:=floattostr(thtemp);
  edit11.Text:=floattostr(wtemp[1]);
  edit12.Text:=floattostr(wtemp[2]);

  //mengecek konvergensi atau menghitung error kuadrat(mse)
{  mse_total:=mse[1]+mse[2]+mse[3]+mse[4];
  if (mse_total<epsilon)then
  begin
      timer1.Enabled:=false;
  end;
}
  if (mse2<epsilon)then
  begin
      timer1.Enabled:=false;
  end;
  mse2:=0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:=false;
end;

//testing
procedure TForm1.Button3Click(Sender: TObject);
begin
    xtemp[1]:=strtoint(edit13.Text);
    xtemp[2]:=strtoint(edit14.Text);
    temp:=0;
    for i:=1 to 2 do
    begin
       temp:=temp + wtemp[i]*xtemp[i];
    end;
    vtemp:=temp+thtemp;
    ytemp:=1/(1+exp(-alpha*vtemp));
    edit15.Text:=floattostr(ytemp);
end;


//SAVE FILE
procedure TForm1.Button5Click(Sender: TObject);
begin
  //timer1.Enabled:= false;
  //chart1lineseries1.Clear;

if savedialog1.Execute then
    begin
    assignfile(f, savedialog1.FileName);
    rewrite(f);
    writeln(f, floattostr(miunol));
    writeln(f,floattostr(tau));
    writeln(f, floattostr(alpha));
    writeln(f, floattostr(epsilon));
    writeln(f,floattostr(th));
    writeln(f,floattostr(w[1]));
    writeln(f,floattostr(w[2]));
    writeln(f, floattostr(thtemp));
    writeln(f, floattostr(wtemp[1]));
    writeln(f, floattostr(wtemp[2]));
    closefile(f);
    end;
end;


procedure TForm1.Button9Click(Sender: TObject);
begin
  //miunol, tau, alpha dan epsilon
miunol:=strtofloat(edit1.Text);
tau:=strtofloat(edit2.Text);
alpha:=strtofloat(edit3.Text);
epsilon:=strtofloat(edit4.Text);


//inisialisasi

x[1,1]:=0; x[1,2]:=0; x[1,3]:=1; x[1,4]:=1;
x[2,1]:=0; x[2,2]:=1; x[2,3]:=0; x[2,4]:=1;

//and
d[1]:=0; d[2]:=0; d[3]:=0; d[4]:=1;
//or
//d[1]:=0; d[2]:=1; d[3]:=1; d[4]:=1;

k:=1;//iterasi
mse2:=0;
timer1.Enabled:= true;
end;

//OPEN FILE
procedure TForm1.Button4Click(Sender: TObject);
var
input: string;
data : array [0..9] of real;
begin
  timer1.Enabled:= false;
  if opendialog1.Execute then
  begin
  assignfile(fileop, opendialog1.FileName);
  reset(fileop);
  while not eof(fileop) and (i < 10) do
             begin
              readln(fileop,input);
              data[i] := strtofloat(input);
              inc(i);
             end;

       closefile(fileop);
       th := data[4];
       edit7.text:= (floattostr(th));
       w[1] := data[5];
       edit8.text:= (floattostr(w[1]));
       w[2]:= data[6];
       edit9.text:= (floattostr(w[2]));

       listbox1.Items.Add('miunol =' +floattostr(data[0]));
       listbox1.Items.Add('tau =' +floattostr(data[1]));
       listbox1.Items.Add('alpha =' +floattostr(data[2]));
       listbox1.Items.Add('epsilon =' +floattostr(data[3]));
       listbox1.Items.Add('th =' +floattostr(data[4]));
       listbox1.Items.Add('w1[1] =' +floattostr(data[5]));
       listbox1.Items.Add('w1[2] =' +floattostr(data[6]));
       listbox1.Items.Add('th optimum=' +floattostr(data[7]));
       listbox1.Items.Add('w1 optimum=' +floattostr(data[8]));
       listbox1.Items.Add('w1 optimum=' +floattostr(data[9]));
  end;
  end;

procedure TForm1.Button7Click(Sender: TObject);
var
input2: string;
databaru : array [0..2] of real;
begin
  chart1lineseries1.clear;
  edit7.Clear;
  edit8.Clear;
  edit9.Clear;
  edit10.Clear;
  edit11.Clear;
  edit12.Clear;
  if opendialog2.Execute then
  begin
  assignfile(fileopawal, opendialog2.FileName);
  //input2:= opendialog1.FileName;
  reset(fileopawal);
  while not eof(fileopawal) and (a <= 2) do
             begin
              readln(fileopawal,input2);
              databaru[a] := strtofloat(input2);
              inc(a);
             end;
       closefile(fileopawal);
       th:= databaru[0];
       edit7.text:= (floattostr(th));
       w[1] := databaru[1];
       edit8.text:= (floattostr(w[1]));
       w[2]:= databaru[2];
       edit9.text:= (floattostr(w[2]));
end;
end;

end.

