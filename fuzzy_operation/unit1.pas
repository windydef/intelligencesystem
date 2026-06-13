unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, TARadialSeries, Forms,
  Controls, Graphics, Dialogs, StdCtrls;

type
   arraybaru= array [0..1, 0..4] of real;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    Chart1BarSeries10: TBarSeries;
    Chart1BarSeries11: TBarSeries;
    Chart1BarSeries12: TBarSeries;
    Chart1BarSeries13: TBarSeries;
    Chart1BarSeries14: TBarSeries;
    Chart1BarSeries2: TBarSeries;
    Chart1BarSeries3: TBarSeries;
    Chart1BarSeries4: TBarSeries;
    Chart1BarSeries5: TBarSeries;
    Chart1BarSeries6: TBarSeries;
    Chart1BarSeries7: TBarSeries;
    Chart1BarSeries8: TBarSeries;
    Chart1BarSeries9: TBarSeries;
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
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBox1: TListBox;
    ListBox10: TListBox;
    ListBox11: TListBox;
    ListBox12: TListBox;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    ListBox16: TListBox;
    ListBox17: TListBox;
    ListBox18: TListBox;
    ListBox19: TListBox;
    ListBox2: TListBox;
    ListBox20: TListBox;
    ListBox21: TListBox;
    ListBox22: TListBox;
    ListBox23: TListBox;
    ListBox24: TListBox;
    ListBox25: TListBox;
    ListBox26: TListBox;
    ListBox27: TListBox;
    ListBox28: TListBox;
    ListBox29: TListBox;
    ListBox3: TListBox;
    ListBox30: TListBox;
    ListBox31: TListBox;
    ListBox32: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    ListBox9: TListBox;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure UNION(Ain: arraybaru; Bin: arraybaru);
    procedure INTERSECTION(Ain: arraybaru; Bin: arraybaru);
    procedure COMPLEMENT (x: arraybaru);
  private

  public

  end;

var
  Form1: TForm1;
  i, j: integer;
  A: arraybaru =
    ((0, 1, 0.5, 0.3, 0.2), (1,2,3,4,5));
  B: arraybaru = ((0, 0.5, 0.7, 0.2, 0.4), (1,2,3,4,5));
  Ain, Bin, Unionout, com, Inter, Abar, Bbar: arraybaru;



implementation

{$R *.frm}

{ TForm1 }

//SHOW DATA//
procedure TForm1.Button1Click(Sender: TObject);
begin
  for j:= 0 to 4 do begin
    listbox1.Items.Add(floattostr(A[0,j]));
    listbox2.Items.Add(floattostr(A[1,j]));
    listbox3.Items.Add(floattostr(B[0,j]));
    listbox4.Items.Add(floattostr(B[1,j]));
  end;
end;

//PROCEDURE UNION//
procedure TForm1.UNION(Ain: arraybaru; Bin: arraybaru);
begin
     for i:= 0 to 1 do begin
       for j:= 0 to 4 do begin
       if (Ain[0,j] > Bin[0,j]) then begin
            Unionout[i,j] := Ain[i,j];
            end else
            Unionout[i,j] := Bin[i,j];
       end;
     end;
end;

//PROCEDURE INTERSECTION//
procedure TForm1.INTERSECTION(Ain: arraybaru; Bin: arraybaru);
begin
     for i:= 0 to 1 do begin
       for j:= 0 to 4 do begin
       if (Ain[i,j] < Bin[i,j]) then begin
            Inter[i,j] := Ain[i,j];
            end else
            Inter[i,j] := Bin[i,j];
       end;
     end;
end;

//PROCEDURE COMPLEMENT//
procedure TForm1.COMPLEMENT (x: arraybaru);
begin
     for i:= 0 to 1 do begin
     for j:= 0 to 4 do begin
       Com[0, j]:= 1- x[0,j];
       Com[1, j]:= x[i,j];
end;
end;
end;

//UNION//
procedure TForm1.Button2Click(Sender: TObject);
begin
  UNION(A,B);
  for j:=0 to 4 do begin
  listbox5.items.add(floattostr(Unionout[0,j]));
  listbox6.items.add(floattostr(Unionout[1,j]));
  chart1barseries1.AddXY(Unionout[1,j],Unionout[0,j]);
  end;
  end;

//INTERSECTION//
procedure TForm1.Button3Click(Sender: TObject);
begin
     INTERSECTION(A, B);
     for j:=0 to 4 do begin
            listbox7.items.add(floattostr(Inter[0,j]));
            listbox8.items.add(floattostr(Inter[1,j]));
            chart1barseries1.Active:= false;
            chart1barseries2.AddXY(Inter[1,j],Inter[0,j]); ;
  end;
end;

//A COMPLEMENT//
procedure TForm1.Button4Click(Sender: TObject);
begin
     COMPLEMENT(A);
  for j:=0 to 4 do begin
       listbox9.Items.Add(floattostr(com[0,j]));
       listbox10.Items.Add(floattostr(com[1,j]));
       chart1barseries2.Active:= false;
       chart1barseries3.AddXY(com[1,j],com[0,j]);
  end;
end;

//B COMPLEMENT//
procedure TForm1.Button8Click(Sender: TObject);
begin
  COMPLEMENT(B);
  for j:=0 to 4 do begin
       listbox17.Items.Add(floattostr(com[0,j]));
       listbox18.Items.Add(floattostr(com[1,j]));
       chart1barseries3.Active:= false;
       chart1barseries4.AddXY(com[1,j], com[0,j]);
  end;
end;

//A|B//
procedure TForm1.Button6Click(Sender: TObject);
begin
  COMPLEMENT(B);
  INTERSECTION(A,com);
  for j:= 0 to 4 do begin
            listbox11.items.add(floattostr(Inter[0,j]));
            listbox12.items.add(floattostr(Inter[1,j]));
            chart1barseries4.Active:= false;
            chart1barseries5.AddXY(Inter[1,j], Inter[0,j]);
  end;
end;

//B|A//
procedure TForm1.Button9Click(Sender: TObject);

begin
  COMPLEMENT(A);
  INTERSECTION(B,com);
  for j:= 0 to 4 do begin
            listbox19.items.add(floattostr(Inter[0,j]));
            listbox20.items.add(floattostr(Inter[1, j]));
            chart1barseries5.Active:= false;
            chart1barseries6.AddXY(Inter[1,j], Inter[0,j]);
  end;
end;


//DE MORGAN UNION//
procedure TForm1.Button5Click(Sender: TObject);
begin
  UNION(A, B);
  COMPLEMENT(Unionout);
  for j:= 0 to 4 do begin
      listbox13.Items.Add(floattostr(com[0, j]));
      listbox14.Items.Add(floattostr(com[1,j]));
      chart1barseries6.Active:= false;
      chart1barseries7.AddXY(com[1,j], com[0,i]);
  end;
end;

// MORGAN INTERSECTION//
procedure TForm1.Button12Click(Sender: TObject);
begin
     COMPLEMENT(A);
     Abar:= Com;
     COMPLEMENT(B);
     Bbar:= com;
     INTERSECTION(Abar, Bbar);
     for j:= 0 to 4 do begin
         listbox25.Items.add(floattostr(Inter[0,j]));
         listbox26.Items.add(floattostr(Inter[1,j]));
         chart1barseries7.Active:= false;
         chart1barseries8.AddXY(Inter[1,j], Inter[0,j]);
     end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     INTERSECTION(A, B);
     COMPLEMENT(Inter);
  for j:= 0 to 4 do begin
      listbox23.Items.add(floattostr(com[0,j]));
     listbox24.Items.add(floattostr(com[1,j]));
      chart1barseries8.Active:= false;
      chart1barseries9.AddXY(com[1,j], com[0,j]);
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  UNION(Abar, Bbar);
  for j:= 0 to 4 do begin
      listbox27.items.add(floattostr(Unionout[0,j]));
      listbox28.Items.add(floattostr(Unionout[1,j]));
      chart1barseries9.Active:= false;
      chart1barseries10.AddXY(Unionout[1,j], Unionout[0,j]);
  end;
end;


//EXCLUSIVE MIDDLE LAW//
procedure TForm1.Button7Click(Sender: TObject);
begin
  COMPLEMENT(A);
  UNION(com, A);
  for j:= 0 to 4 do begin
      ListBox15.items.add(floattostr(Unionout[0,j]));
      listbox16.Items.add(floattostr(Unionout[1,j]));
      chart1barseries10.Active:= false;
      chart1barseries11.AddXY(Unionout[1,j], Unionout[0,j]);
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  COMPLEMENT(B);
  INTERSECTION(com, B);
   for j:= 0 to 4 do begin
      ListBox21.items.add(floattostr(Inter[0,j]));
      listbox22.Items.add(floattostr(Inter[1,j]));
      chart1barseries11.Active:= false;
      chart1barseries12.AddXY(Inter[1,j], Inter[0,j]);
   end;
end;


procedure TForm1.Button14Click(Sender: TObject);
begin
  COMPLEMENT(A);
  INTERSECTION(com, A);
     for j:= 0 to 4 do begin
           listbox29.Items.add(floattostr(Inter[0,j]));
           listbox30.Items.add(floattostr(Inter[1,j]));
           chart1barseries12.Active:= false;
           chart1barseries13.AddXY(Inter[1,j], Inter[0,j]);
     end;
end;


procedure TForm1.Button15Click(Sender: TObject);
begin
   COMPLEMENT(B);
   UNION(com, B);
     for j:= 0 to 4 do begin
           listbox31.Items.add(floattostr(Unionout[0,j]));
           listbox32.Items.add(floattostr(Unionout[1,j]));
           chart1barseries13.Active:= false;
           chart1barseries14.AddXY(Inter[1,j], Unionout[0,j]);
     end;
end;

end.

