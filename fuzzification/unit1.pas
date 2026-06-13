unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TADbSource,
  TAFuncSeries, TASeries, Forms, Controls, Graphics, Dialogs, StdCtrls, Types;

type


  { TForm1 }

  TForm1 = class(TForm)
    Chart1: TChart;
    Chart1ConstantLine1: TConstantLine;
    Chart1FuncSeries1: TFuncSeries;
    Chart1FuncSeries2: TFuncSeries;
    Chart1FuncSeries3: TFuncSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ScrollBar1: TScrollBar;
    procedure Chart1BarSeries1BeforeDrawBar(ASender: TBarSeries;
      ACanvas: TCanvas; const ARect: TRect; APointIndex, AStackIndex: Integer;
      var ADoDefaultDrawing: Boolean);
    procedure Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart1FuncSeries2Calculate(const AX: Double; out AY: Double);
    procedure Chart1FuncSeries3Calculate(const AX: Double; out AY: Double);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  bb: array [0..1, 0..2] of real;
  //uringan, unormal, uberat: real;
  x: real;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
   x:= scrollbar1.Position;
  edit1.Text:= floattostr(x);
  chart1constantline1.Position:= x;
  if (x < 45) then
  begin
    bb[0,0]:= 1;
    bb[0,1]:= 0;
    bb[0,2]:= 1;
  end else
  if (45 < x) and ( x < 55) then
  begin
    bb[0,0]:= (55 - x)/(55-45);
    bb[0,1]:= (x - 45)/(55-45);
    bb[0,2]:= 0;
  end else
  if (x=55) then
  begin
    bb[0,0]:= 0;
    bb[0,1]:= 1;
    bb[0,2]:= 0;
  end else
  if (55 < x) and (x< 65) then
  begin
    bb[0,0]:= 0;
    bb[0,1]:= (65-x)/ (65-55);
    bb[0,2]:= (x-55)/(65-55);
  end else
  if (x > 65) then
  begin
    bb[0,0]:= 0;
    bb[0,1]:= 0;
    bb[0,2]:= 1;
  end;
    edit2.Text:= floattostr(bb[0,0]);
    edit3.Text:= floattostr(bb[0,1]);
    edit4.Text:= floattostr(bb[0,2]);
end;


procedure TForm1.Chart1BarSeries1BeforeDrawBar(ASender: TBarSeries;
  ACanvas: TCanvas; const ARect: TRect; APointIndex, AStackIndex: Integer;
  var ADoDefaultDrawing: Boolean);
begin

end;

procedure TForm1.Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
  if AX < 45 then
  begin
    AY:= 1;
  end else
  if (AX >45) then
  begin
    AY:= (55-AX)/ (55-45);
  end;
end;

procedure TForm1.Chart1FuncSeries2Calculate(const AX: Double; out AY: Double);
begin
  if (AX > 45) and (AX<55) then
  begin
    AY:= (AX-45)/(55-45);
  end else
  if (AX > 55) and (AX<65) then
  begin
    AY:= (65-AX)/(65-55);
  end else
end;

procedure TForm1.Chart1FuncSeries3Calculate(const AX: Double; out AY: Double);
begin
  if (AX< 65) and (AX>55) then
  begin
    AY:= (AX-55)/(65-55);
  end else
  if AX> 65 then
  AY:= 1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bb[1,0]:= 1;
  bb[1,1]:= 2;
  bb[1,2]:= 3;
end;

end.

