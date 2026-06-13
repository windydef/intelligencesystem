unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, TATools, Forms,
  Controls, Graphics, Dialogs, StdCtrls, ComCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1ConstantLine1: TConstantLine;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Chart1LineSeries4: TLineSeries;
    Chart2: TChart;
    Chart2ConstantLine1: TConstantLine;
    Chart2LineSeries1: TLineSeries;
    Chart2LineSeries2: TLineSeries;
    Chart2LineSeries3: TLineSeries;
    Chart2LineSeries4: TLineSeries;
    Chart3: TChart;
    Chart3AreaSeries1: TAreaSeries;
    Chart3AreaSeries2: TAreaSeries;
    Chart3AreaSeries3: TAreaSeries;
    Chart3AreaSeries4: TAreaSeries;
    Chart3ConstantLine1: TConstantLine;
    Chart3LineSeries1: TLineSeries;
    Chart3LineSeries2: TLineSeries;
    Chart3LineSeries3: TLineSeries;
    Chart3LineSeries4: TLineSeries;
    Chart4: TChart;
    Chart4AreaSeries1: TAreaSeries;
    Chart4AreaSeries2: TAreaSeries;
    Chart4AreaSeries3: TAreaSeries;
    Chart4AreaSeries4: TAreaSeries;
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
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PLOTDISTANCE;
    procedure PLOTSPEED;
    procedure PLOTBRAKE;
    procedure SPEED;
    procedure DISTANCE;
    procedure CENTROID;
    procedure RULES;

    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  final,finall,finalll,finallll,akhir,akhir2,akhir3,a,b,c,d,e,f,g,h,ii:array [1..150] of extended;
  tempatas,tempbawah,centroatas,centrobawah,centro : extended;
  u,y:integer;
  imf1: array[1..4,1..3] of extended = ((5,5,15),(5,15,25),(15,25,35),(25,35,35));
  imf2 : array[1..4,1..3] of extended = ((20,20,40),(20,40,80),(40,80,100),(80,100,100));
  omfdis : array[1..4,1..3] of extended = ((10,10,25),(10,25,50),(25,50,80),(50,70,100));
  miu,miuu,miuuu: array[1..20,1..102] of extended;
  miur,miuc,miu1,miu2,omf : array[1..103] of extended;

implementation

{$R *.frm}


procedure Tform1.PLOTDISTANCE;
var i: integer;
begin
  chart1lineseries1.Clear;
  chart1lineseries2.Clear;
  chart1lineseries3.Clear;
  chart1lineseries4.Clear;
  u := 0;
  for u:= 0 to 100 do begin
  for i := 1 to 4 do
  begin
  a[i] := imf1[i,1];
  b[i] := imf1[i,2];
  c[i] := imf1[i,3];
    if u <= a[i] then begin
      if (i = 1) then miu[i,u] := 1;
      if (i<>1) then miu[i,u] := 0;
    end;

    if (u > a[i]) and (u <= b[i]) then begin
      if (i = 1)  then miu[i,u] := 1;
      if (i<> 1) then miu[i,u] := (u-a[i])/(b[i]-a[i]);
    end;

    if (u > b[i]) and (u <= c[i]) then begin
    if (i = 4)  then miu[i,u] := 1;
    if (i <> 4) then miu[i,u] := -1*((u-b[i])/(c[i]-b[i]))+1;
    end;

    if u > c[i] then begin
      if (i = 4)  then miu[i,u] := 1;
      if (i <> 4) then miu[i,u] := 0;
    end;
    end;
    chart1lineseries1.AddXY(u,miu[1,u]);
    chart1lineseries2.AddXY(u,miu[2,u]);
    chart1lineseries3.AddXY(u,miu[3,u]);
    chart1lineseries4.AddXY(u,miu[4,u]);
    end;
end;

procedure TForm1.PLOTSPEED;
var i: integer;
begin
 chart2lineseries1.Clear;
 chart2lineseries2.Clear;
 chart2lineseries3.Clear;
 chart2lineseries4.Clear;
  u := 0;
  for u := 0 to 100 do begin
  for i := 1 to 4 do
  begin
  d[i] := imf2[i,1];
  e[i] := imf2[i,2];
  f[i] := imf2[i,3];
    if u <= d[i] then begin
      if (i = 1) then miuu[i,u] := 1;
      if (i<>1) then miuu[i,u] := 0;
    end;

    if (u > d[i]) and (u <= e[i]) then begin
      if (i = 1)  then miuu[i,u] := 1;
      if (i<> 1) then miuu[i,u] := (u-d[i])/(e[i]-d[i]);
    end;

    if (u > e[i]) and (u <= f[i]) then begin
    if (i = 4)  then miuu[i,u] := 1;
    if (i <> 4) then miuu[i,u] := -1*((u-e[i])/(f[i]-e[i]))+1;
    end;

    if u > f[i] then begin
      if (i = 4)  then miuu[i,u] := 1;
      if (i <> 4) then miuu[i,u] := 0;
    end;
    end;
    chart2lineseries1.AddXY(u,miuu[1,u]);
    chart2lineseries2.AddXY(u,miuu[2,u]);
    chart2lineseries3.AddXY(u,miuu[3,u]);
    chart2lineseries4.AddXY(u,miuu[4,u]);
    end;
    end;

procedure TForm1.PLOTBRAKE;
var i : integer;
begin
  chart3lineseries1.Clear;
  chart3lineseries2.Clear;
  chart3lineseries3.Clear;
  chart3lineseries4.Clear;
  u := 0;
  for u := 0 to 100 do begin
  for i := 1 to 4 do
  begin
  g[i] := omfdis[i,1];
  h[i] := omfdis[i,2];
  ii[i] := omfdis[i,3];
    if u <= g[i] then begin
      if (i = 1) then miuuu[i,u] := 1;
      if (i<>1) then miuuu[i,u] := 0;
    end;

    if (u > g[i]) and (u <= h[i]) then begin
      if (i = 1)  then miuuu[i,u] := 1;
      if (i<> 1) then miuuu[i,u] := (u-g[i])/(h[i]-g[i]);
    end;

    if (u > h[i]) and (u <= ii[i]) then begin
    if (i = 4)  then miuuu[i,u] := 1;
    if (i <> 4) then miuuu[i,u] := -1*((u-h[i])/(ii[i]-h[i]))+1;
    end;

    if u > ii[i] then begin
      if (i = 4)  then miuuu[i,u] := 1;
      if (i <> 4) then miuuu[i,u] := 0;
    end;
    end;
    chart3lineseries1.AddXY(u,miuuu[1,u]);
    //chart5lineseries1.AddXY(u,miuuu[1,u]);
    miuc[1] := miuuu[1,u];
    chart3lineseries2.AddXY(u,miuuu[2,u]);
    //chart5lineseries2.AddXY(u,miuuu[2,u]);
    miuc[2] := miuuu[2,u];
    chart3lineseries3.AddXY(u,miuuu[3,u]);
   // chart5lineseries3.AddXY(u,miuuu[3,u]);
    miuc[3] := miuuu[3,u];
    chart3lineseries4.AddXY(u,miuuu[4,u]);
    //chart5lineseries4.AddXY(u,miuuu[4,u]);
    miuc[4] := miuuu[4,u];
    end;
    end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  PLOTDISTANCE;
  PLOTSPEED;
  PLOTBRAKE;
//rule
  stringgrid2.Cells[0,1] := 'LOW';
  stringgrid2.Cells[0,2] := 'MEDIUM';
  stringgrid2.Cells[0,3] := 'HIGH';
  stringgrid2.Cells[0,4] := 'VERY HIGH';
  stringgrid2.Cells[1,0] := 'SHORT';
  stringgrid2.Cells[2,0] := 'MEDIUM';
  stringgrid2.Cells[3,0] := 'LONG';
  stringgrid2.Cells[4,0] := 'VERY LONG';

  stringgrid1.Cells[0,1] := 'LOW';
  stringgrid1.Cells[0,2] := 'MEDIUM';
  stringgrid1.Cells[0,3] := 'HIGH';
  stringgrid1.Cells[0,4] := 'VERY HIGH';
  stringgrid1.Cells[1,0] := 'SHORT';
  stringgrid1.Cells[2,0] := 'MEDIUM';
  stringgrid1.Cells[3,0] := 'LONG';
  stringgrid1.Cells[4,0] := 'VERY LONG';
  stringgrid1.Cells[1,1] := 'SOFT';
  stringgrid1.Cells[2,1] := 'SOFT';
  stringgrid1.Cells[3,1] := 'NO BRAKE';
  stringgrid1.Cells[4,1] := 'NO BRAKE';
  stringgrid1.Cells[1,2] := 'MODERATE';
  stringgrid1.Cells[2,2] := 'SOFT';
  stringgrid1.Cells[3,2] := 'NO BRAKE';
  stringgrid1.Cells[4,2] := 'NO BRAKE';
  stringgrid1.Cells[1,3] := 'HARD';
  stringgrid1.Cells[2,3] := 'MODERATE';
  stringgrid1.Cells[3,3] := 'MODERATE';
  stringgrid1.Cells[4,3] := 'MODERATE';
  stringgrid1.Cells[1,4] := 'HARD';
  stringgrid1.Cells[2,4] := 'MODERATE';
  stringgrid1.Cells[3,4] := 'MODERATE';
  stringgrid1.Cells[4,4] := 'MODERATE';
end;

procedure Tform1.DISTANCE;
var k : integer;
begin
  k:= trackbar1.Position;
  chart1constantline1.Position:= k;
  edit1.Text:=floattostr(k);
  edit2.Text:=floattostr(miu[1,k]);
  miu1[1] := miu[1,k];
  edit3.Text:=floattostr(miu[2,k]);
  miu1[2] := miu[2,k];
  edit4.Text:=floattostr(miu[3,k]);
  miu1[3] := miu[3,k];
  edit5.Text:=floattostr(miu[4,k]);
  miu1[4] := miu[4,k];
end;


procedure Tform1.SPEED;
var j : integer;
begin
  j:=trackbar2.Position;
  chart2constantline1.Position:= j;
  edit6.Text:=floattostr(j);
  edit7.Text:=floattostr(miuu[1,j]);
  miu2[1] := miuu[1,j];
  edit8.Text:=floattostr(miuu[2,j]);
  miu2[2] := miuu[2,j];
  edit9.Text:=floattostr(miuu[3,j]);
  miu2[3] := miuu[3,j];
  edit10.Text:=floattostr(miuu[4,j]);
  miu2[4] := miuu[4,j];
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  SPEED;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 DISTANCE;
end;

procedure TForm1.CENTROID;
var i : integer;
begin
  centroatas := 0;
  centrobawah := 0;
  for i := 0 to 100 do
  begin
    centroatas := centroatas + (i*akhir3[i]);
    centrobawah := centrobawah  + (akhir3[i]);
  end;
  centro := centroatas/centrobawah;
  Edit15.Text := floattostr(centro);
  chart3constantline1.Position:= centro;
end;

procedure TForm1.RULES;
var i,x : integer;
begin
  chart3areaseries1.Clear;
  chart3areaseries2.Clear;
  chart3areaseries3.Clear;
  chart3areaseries4.Clear;
  chart4areaseries1.Clear;
DISTANCE;
SPEED;
 //Mamdani
  //Implikasi - Min
  i:=0;
  for y:=1 to 4 do
  begin
    for x:=1 to 4 do
    begin
      inc(i);
      miur[i]:=0;
      if (miu1[x]<>0)and(miu2[y]<>0) then
      begin
        if miu1[x]<=miu2[y] then miur[i]:=miu1[x] else miur[i]:=miu2[y];
      end;
    end;
    stringgrid2.Cells[1,1] := floattostr(miur[1]);
    stringgrid2.Cells[2,1] := floattostr(miur[2]);
    stringgrid2.Cells[3,1] := floattostr(miur[3]);
    stringgrid2.Cells[4,1] := floattostr(miur[4]);
    stringgrid2.Cells[1,2] := floattostr(miur[5]);
    stringgrid2.Cells[2,2] := floattostr(miur[6]);
    stringgrid2.Cells[3,2] := floattostr(miur[7]);
    stringgrid2.Cells[4,2] := floattostr(miur[8]);
    stringgrid2.Cells[1,3] := floattostr(miur[9]);
    stringgrid2.Cells[2,3] := floattostr(miur[10]);
    stringgrid2.Cells[3,3] := floattostr(miur[11]);
    stringgrid2.Cells[4,3] := floattostr(miur[12]);
    stringgrid2.Cells[1,4] := floattostr(miur[13]);
    stringgrid2.Cells[2,4] := floattostr(miur[14]);
    stringgrid2.Cells[3,4] := floattostr(miur[15]);
    stringgrid2.Cells[4,4] := floattostr(miur[16]);

  end;
  //Agregasi - Max
  //No Break
  if miur[3]>=miur[4] then
  begin
    miuc[1]:=miur[3];
    if miur[7]>=miuc[1] then miuc[1]:=miur[7];
    if miur[8]>=miuc[1] then miuc[1]:=miur[8];
  end else
  begin
    miuc[1]:=miur[4];
    if miur[7]>=miuc[1] then miuc[1]:=miur[7];
    if miur[8]>=miuc[1] then miuc[1]:=miur[8];
  end;
  //Soft
  if miur[1]>=miur[2] then
  begin
    miuc[2]:=miur[1];
    if miur[6]>=miuc[2] then miuc[2]:=miur[6];
  end else
  begin
    miuc[2]:=miur[2];
    if miur[6]>=miuc[2] then miuc[2]:=miur[6];
  end;
  //Moderate
  if miur[5]>=miur[10] then
  begin
    miuc[3]:=miur[5];
    if miur[11]>=miuc[3] then miuc[3]:=miur[11];
    if miur[12]>=miuc[3] then miuc[3]:=miur[12];
    if miur[14]>=miuc[3] then miuc[3]:=miur[14];
    if miur[15]>=miuc[3] then miuc[3]:=miur[15];
    if miur[16]>=miuc[3] then miuc[3]:=miur[16];
  end else
  begin
    miuc[3]:=miur[10];
    if miur[11]>=miuc[3] then miuc[3]:=miur[11];
    if miur[12]>=miuc[3] then miuc[3]:=miur[12];
    if miur[14]>=miuc[3] then miuc[3]:=miur[14];
    if miur[15]>=miuc[3] then miuc[3]:=miur[15];
    if miur[16]>=miuc[3] then miuc[3]:=miur[16];
  end;
  //Hard
  if miur[9]>=miur[13] then
  begin
    miuc[4]:=miur[9];
  end else
  begin
    miuc[4]:=miur[13];
  end;
  edit11.Text:=floattostr(miuc[1]);
  edit12.Text:=floattostr(miuc[2]);
  edit13.Text:=floattostr(miuc[3]);
  edit14.Text:=floattostr(miuc[4]);

  for u := 0 to 100 do
  begin
  if miuc[1] > miuuu[1,u] then final[u] := miuuu[1,u] else final[u]  := miuc[1];
  if miuc[2] > miuuu[2,u] then finall[u] := miuuu[2,u] else finall[u] := miuc[2];
  if miuc[3] > miuuu[3,u] then finalll[u] := miuuu[3,u] else finalll[u] := miuc[3];
  if miuc[4] > miuuu[4,u] then finallll[u] := miuuu[4,u] else finallll[u] := miuc[4];
  if final[u] > finall[u] then akhir[u] := final[u] else akhir[u] := finall[u];
  if akhir[u] > finalll[u] then akhir2[u] := akhir[u] else akhir2[u] := finalll[u];
  if akhir2[u] > finallll[u] then akhir3[u] := akhir2[u] else akhir3[u] := finallll[u];
  chart3areaseries1.AddXY(u,final[u]);
  chart3areaseries2.AddXY(u,finall[u]);
  chart3areaseries3.AddXY(u,finalll[u]);
  chart3areaseries4.AddXY(u,finallll[u]);
  chart4areaseries1.AddXY(u,akhir3[u]);

 { chart5areaseries1.AddXY(u, miur[1]);
  chart5areaseries2.AddXY(u, miur[2]);
  chart5areaseries3.AddXY(u, miur[3]);
  chart5areaseries4.AddXY(u, miur[4]);
  chart5areaseries5.AddXY(u, miur[5]);
  chart5areaseries6.AddXY(u, miur[6]);
  chart5areaseries7.AddXY(u, miur[7]);
  chart5areaseries8.AddXY(u, miur[8]);
  chart5areaseries9.AddXY(u, miur[9]);
  chart5areaseries10.AddXY(u, miur[10]);
  chart5areaseries11.AddXY(u, miur[11]);
  chart5areaseries12.AddXY(u, miur[12]);
  chart5areaseries13.AddXY(u, miur[13]);
  chart5areaseries14.AddXY(u, miur[14]);
  chart5areaseries15.AddXY(u, miur[15]);
  chart5areaseries16.AddXY(u, miur[16]);}
  end;
  centroid;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  RULES;
end;

end.

