unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, Grids, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
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
    Label3: TLabel;
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
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    ListBox7: TListBox;
    ListBox8: TListBox;
    ListBox9: TListBox;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  filename1,filename2, filename3, filename4:textfile;
sw1, sw11, sw22, sw33,sth1, sth11, sth22, sth33, sw2,sth2,sw3,sth3:string;
j,i,k,l,m,n,o,p,col,row,iterasi,q:integer;
w1,w2,w3,wt1,wt2,wt3, w11, w22, w33 :array[1..50,1..200]of extended;
th1,th2,th3,tht1,tht2,tht3, th11, th22, th33:array[1..50]of extended;
v1,v11,v22,v33,v2,v3 :array[1..50]of extended;
y1,y11,y22,y2,y3 : array[1..50]of extended;
g1,g11,g22,g33,g2,g3:array[1..50]of extended;
er,error:array[1..50]of extended;
l1, p1, k1, o1, l2, p2: integer;
error_char: array [1..144] of integer;
F, noise, ber: extended;

delta1,delta2,delta3:array[1..50]of extended;
miu,alpha,epsilon,temp,e_kuadrat,mse_total:extended;

  E : array[1..144] of integer = (1,1,1,1,1,1,1,0,0,0,0,0,
                                  1,1,1,1,1,1,1,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,1,1,1,1,1,0,0,0,0,0,
                                  1,1,1,1,1,1,1,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,0,0,0,0,0,0,0,0,0,0,
                                  1,1,1,1,1,1,1,0,0,0,0,0,
                                  1,1,1,1,1,1,1,0,0,0,0,0);

  H : array[1..144] of integer = (0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,1,1,1,1,1,1,0,0,
                                  0,0,1,1,1,1,1,1,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0,
                                  0,0,1,1,0,0,0,0,1,1,0,0);

  T : array[1..144] of integer = (0,1,1,1,1,1,1,1,1,1,1,0,
                                  0,1,1,1,1,1,1,1,1,1,1,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0,
                                  0,0,0,0,0,1,1,0,0,0,0,0);

  Oo : array[1..144] of integer = (0,0,0,1,1,1,1,1,1,0,0,0,
                                  0,0,1,1,1,1,1,1,1,1,0,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,1,1,1,0,0,0,0,1,1,1,0,
                                  0,0,1,1,1,1,1,1,1,1,0,0,
                                  0,0,0,1,1,1,1,1,1,0,0,0);

 Point : array[1..144] of integer = (0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,0,0,0,0,0,0,0,0,
                                      0,0,0,0,1,1,1,0,0,0,0,0,
                                      0,0,0,0,1,1,1,0,0,0,0,0,
                                      0,0,0,0,1,1,1,0,0,0,0,0);

x:array[1..200,1..5]of integer;
d:array[1..5,1..5]of integer;
yy3, y33 :array[1..5,1..5]of extended;



implementation

{$R *.frm}

{ TForm1 }

//save file//
procedure TForm1.Button1Click(Sender: TObject);
begin
  m:=144;
  n:=strtoint(edit1.Text);
  o:=strtoint(edit2.text);
  p:=5;

  if savedialog1.Execute then
  begin
    assignfile(filename1,savedialog1.filename);
    rewrite(filename1);
    //save inisilisasi w1
   //writeln(filename1,'       w1     ');
    for j:= 1 to n do
    begin
      for i:= 1 to m do
      begin
        w1[j,i]:=randg(0,0.05);
        writeln(filename1,floattostr(w1[j,i]));
        //listbox1.Items.Add(floattostr(w1[j,i]));
      end;
    end;
    //save inisilisasi th1
    //writeln(filename1,'      th1    ');
    for j:= 1 to n do
    begin
      th1[j]:=randg(0,0.05);
      writeln(filename1,floattostr(th1[j]));
     // listbox1.Items.Add(floattostr(w1[j,i]));
    end;
    //save inisilisasi w2
    //writeln(filename1,'       w2     ');
    for k:= 1 to o do
    begin
      for j:= 1 to n do
      begin
        w2[k,j]:=randg(0,0.05);
        writeln(filename1,floattostr(w2[k,j]));
      end;
    end;
    //save inisilisasi th2
   // writeln(filename1,'      th2    ');
    for k:= 1 to o do
    begin
      th2[k]:=randg(0,0.05);
      writeln(filename1,floattostr(th2[k]));
    end;
    //save inisilisasi w3
   // writeln(filename1,'       w3     ');
    for l:= 1 to p do
    begin
      for k:= 1 to o do
      begin
        w3[l,k]:=randg(0,0.05);
        writeln(filename1,floattostr(w3[l,k]));
      end;
    end;
    //save inisilisasi th2
    //writeln(filename1,'      th3    ');
    for l:= 1 to p do
    begin
      th3[l]:=randg(0,0.05);
      writeln(filename1,floattostr(th3[l]));
    end;
    closefile(filename1);
  end;
end;


//open file//
procedure TForm1.Button2Click(Sender: TObject);
begin
  m:=144;
  n:=strtoint(edit1.Text);
  o:=strtoint(edit2.text);
  p:=5;

  if opendialog1.Execute then
  begin
    assignfile(filename2,opendialog1.filename);
    reset(filename2);
    //open inisilisasi w1
    listbox1.Items.Add('== w layer 1 ==');
    for j:= 1 to n do
    begin
      for i:= 1 to m do
      begin
        readln(filename2,sw1);
        w1[j,i]:= strtofloat(sw1);
        //readln(filename2,w1[j,i]);
        listbox1.Items.Add('w['+inttostr(j)+','+inttostr(i)+']='+floattostr(w1[j,i]));
      end;
    end;
    //open inisilisasi th1

    listbox1.Items.Add('== th layer 1 ==');
    for j:= 1 to n do
    begin
      readln(filename2,sth1);
      th1[j]:= strtofloat(sth1);
      //readln(filename2,th1[j]);
      listbox1.Items.Add('th['+inttostr(j)+']='+floattostr(th1[j]));
    end;

    //open inisilisasi w2
    listbox2.Items.Add('== w layer 2 ==');
    for k:= 1 to o do
    begin
      for j:= 1 to n do
      begin
        readln(filename2,sw2);
        w2[k,j]:= strtofloat(sw2);
        listbox2.Items.Add('w['+inttostr(k)+','+inttostr(j)+']='+floattostr(w2[k,j]));
      end;
    end;
    //open inisilisasi th2
    listbox2.Items.Add('== th layer 2 ==');
    for k:= 1 to o do
    begin
      readln(filename2,sth2);
      th2[k]:= strtofloat(sth2);
      listbox2.Items.Add('th['+inttostr(k)+']='+floattostr(th2[k]));
    end;

    //open inisilisasi w3
    listbox3.Items.Add('== w layer 3 ==');
    for l:= 1 to p do
    begin
      for k:= 1 to o do
      begin
        readln(filename2,sw3);
        w3[l,k]:= strtofloat(sw3);
        listbox3.Items.Add('w['+inttostr(l)+','+inttostr(k)+']='+floattostr(w3[l,k]));
      end;
    end;
    //open inisilisasi th3
    listbox3.Items.Add('== th layer 3 ==');
    for l:= 1 to p do
    begin
      readln(filename2,sth3);
      th3[l]:= strtofloat(sth3);
      listbox3.Items.Add('th['+inttostr(l)+']='+floattostr(th3[l]));
    end;

    closefile(filename2);
    end;
end;


//KARAKTER//
procedure TForm1.Button3Click(Sender: TObject);
begin

  
  //ambil karakter asli//
  for i:= 1 to 144 do
  begin
    if radiobutton1.Checked= true then error_char[i]:= E[i];
    if radiobutton2.Checked= true then error_char[i]:= T[i];
    if radiobutton3.Checked= true then error_char[i]:= H[i];
    if radiobutton4.Checked= true then error_char[i]:= Oo[i];
    if radiobutton5.Checked= true then error_char[i]:= point[i];
  end;

  //random process//
  ber:= strtofloat(edit8.Text);
  ber:= ber/100;
  F:= 1- ber;
  for i:= 1 to 144 do
  begin
    noise:= random(100)/100;
    if noise >= f then
    begin
      if error_char[i]= 1 then error_char[i]:= 0
      else
      error_char[i] := 1;
    end;
  end;

  //tampil
  for i:= 1 to 144 do
  begin
    if radiobutton1.Checked= true then x[i,1]:= error_char[i];
    if radiobutton2.Checked= true then x[i,2]:= error_char[i];
    if radiobutton3.Checked= true then x[i,3]:= error_char[i];
    if radiobutton4.Checked= true then x[i,4]:= error_char[i];
    if radiobutton5.Checked= true then x[i,5]:= error_char[i];
end;


  //karakter E
  if radiobutton1.Checked=true then
  begin
    i:=1;
    for col:=0 to 11 do
    begin
      for row:=0 to 11 do
      begin
        stringgrid1.Cells[row,col]:=inttostr(x[i,1]);
        if x[i,1]=1 then stringgrid1.Cells[row,col]:='X';
        if x[i,1]=0 then stringgrid1.Cells[row,col]:=' ';
        i:=i+1;
      end;
    end;
  end;
  //karakter T
  if radiobutton2.Checked=true then
  begin
    i:=1;
    for col:=0 to 11 do
    begin
      for row:=0 to 11 do
      begin
        stringgrid1.Cells[row,col]:=inttostr(x[i,2]);
        if x[i,2]=1 then stringgrid1.Cells[row,col]:='X';
        if x[i,2]=0 then stringgrid1.Cells[row,col]:=' ';
        i:=i+1;
      end;
    end;
  end;
  //karakter H
  if radiobutton3.Checked=true then
  begin
    i:=1;
    for col:=0 to 11 do
    begin
      for row:=0 to 11 do
      begin
        stringgrid1.Cells[row,col]:=inttostr(x[i,3]);
        if x[i,3]=1 then stringgrid1.Cells[row,col]:='X';
        if x[i,3]=0 then stringgrid1.Cells[row,col]:=' ';
        i:=i+1;
      end;
    end;
  end;
  //karakter O
  if radiobutton4.Checked=true then
  begin
    i:=1;
    for col:=0 to 11 do
    begin
      for row:=0 to 11 do
      begin
        stringgrid1.Cells[row,col]:=inttostr(x[i,4]);
        if x[i,4]=1 then stringgrid1.Cells[row,col]:='X';
        if x[i,4]=0 then stringgrid1.Cells[row,col]:=' ';
        i:=i+1;
      end;
    end;
  end;
  //karakter point
  if radiobutton5.Checked=true then
  begin
    i:=1;
    for col:=0 to 11 do
    begin
      for row:=0 to 11 do
      begin
        stringgrid1.Cells[row,col]:=inttostr(x[i,5]);
        if x[i,5]=1 then stringgrid1.Cells[row,col]:='X';
        if x[i,5]=0 then stringgrid1.Cells[row,col]:=' ';
        i:=i+1;
      end;
    end;
  end;
end;

//START//
procedure TForm1.Button4Click(Sender: TObject);
begin
  chart1lineseries1.Clear;
  miu:=strtofloat(edit3.Text);
  alpha:=strtofloat(edit4.Text);
  Epsilon:=strtofloat(edit5.Text);
  Iterasi:=0;
  mse_total:=0;
  timer1.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  timer1.Enabled:=false;
end;


//OPEN WEIGHT OPTIMUM
procedure TForm1.Button6Click(Sender: TObject);
begin
   m:=144;
  n:=strtoint(edit1.Text);
  o:=strtoint(edit2.text);
  p:=5;

  if opendialog2.Execute then
  begin
    assignfile(filename4,opendialog2.filename);
    reset(filename4);
    //open inisilisasi w1
    listbox4.Items.Add('== w layer 1 ==');
    for j:= 1 to n do
    begin
      for i:= 1 to m do
      begin
        readln(filename4,sw11);
        w11[j,i]:= strtofloat(sw11);
        //readln(filename2,w1[j,i]);
        listbox4.Items.Add('w['+inttostr(j)+','+inttostr(i)+']='+floattostr(w11[j,i]));
      end;
    end;
    //open inisilisasi th1

    listbox4.Items.Add('== th layer 1 ==');
    for j:= 1 to n do
    begin
      readln(filename4,sth11);
      th11[j]:= strtofloat(sth11);
      //readln(filename2,th1[j]);
      listbox4.Items.Add('th['+inttostr(j)+']='+floattostr(th11[j]));
    end;

    //open inisilisasi w2
    listbox5.Items.Add('== w layer 2 ==');
    for k:= 1 to o do
    begin
      for j:= 1 to n do
      begin
        readln(filename4,sw22);
        w22[k,j]:= strtofloat(sw22);
        listbox5.Items.Add('w['+inttostr(k)+','+inttostr(j)+']='+floattostr(w22[k,j]));
      end;
    end;
    //open inisilisasi th2
    listbox5.Items.Add('== th layer 2 ==');
    for k:= 1 to o do
    begin
      readln(filename4,sth22);
      th22[k]:= strtofloat(sth22);
      listbox5.Items.Add('th['+inttostr(k)+']='+floattostr(th22[k]));
    end;

    //open inisilisasi w3
    listbox6.Items.Add('== w layer 3 ==');
    for l:= 1 to p do
    begin
      for k:= 1 to o do
      begin
        readln(filename4,sw33);
        w33[l,k]:= strtofloat(sw33);
        listbox6.Items.Add('w['+inttostr(l)+','+inttostr(k)+']='+floattostr(w33[l,k]));
      end;
    end;
    //open inisilisasi th3
    listbox6.Items.Add('== th layer 3 ==');
    for l:= 1 to p do
    begin
      readln(filename4,sth33);
      th33[l]:= strtofloat(sth33);
      listbox6.Items.Add('th['+inttostr(l)+']='+floattostr(th33[l]));
    end;

    closefile(filename4);
    end;
end;


procedure TForm1.Button7Click(Sender: TObject);
begin
  listbox12.Clear;
  listbox13.Clear;
  listbox14.Clear;
  listbox15.Clear;
  listbox16.Clear;
  miu:=strtofloat(edit3.Text);
  alpha:=strtofloat(edit4.Text);
  Epsilon:=strtofloat(edit5.Text);
  Iterasi:=0;
  mse_total:=0;
  //mengecek output y3[l,q] menggunakan w dan th terakhir
  for q:=1 to 5 do
  begin
    //forward
    //menghitung output layer 1
    for j:=1 to n do
    begin
   	  temp:=0;
   	  for i:=1 to m do
   	  begin
        temp:=temp+x[i,q]*wt1[j,i];  //q input pattern
   	  end;
   	  v1[j]:= temp+tht1[j];
   	  y1[j]:= 1/(1+exp(-alpha*v1[j]));
    end;

    //menghitung output layer 2
    for k:=1 to o do
    begin
   	  temp:=0;
   	  for j:=1 to n do
   	  begin
        temp:=temp+y1[j]*wt2[k,j];
   	  end;
   	  v2[k]:= temp+tht2[k];
   	  y2[k]:= 1/(1+exp(-alpha*v2[k]));
		  g2[k]:= alpha*y2[k]*(1-y2[k]);
    end;

    //menghitung output layer 3
    for l:=1 to p do
    begin
   	  temp:=0;
   	  for k:=1 to o do
   	  begin
        temp:=temp+y2[k]*wt3[l,k];
   	  end;
   	  v3[l]:= temp+tht3[l];
   	  yy3[l,q]:= 1/(1+exp(-alpha*v3[l]));
    end;
    //iterasi:=iterasi+1;
    //edit7.Text:=inttostr(iterasi);

  end;
  for l:= 1 to 5 do begin
    listbox12.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,1]));
          listbox13.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,2]));
          listbox14.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,3]));
          listbox15.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,4]));
          listbox16.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,5]));
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if savedialog2.Execute then
  begin
    assignfile(filename3,savedialog2.filename);
    rewrite(filename3);

    //writeln(filename3,'                w1                 ');
    listbox4.Items.Add('                w1                 ');
    for j:= 1 to n do
    begin
      for i:= 1 to m do
      begin
        listbox4.Items.Add(floattostr(w1[j,i]));
        writeln(filename3,floattostr(w1[j,i]))
      end;
    end;
    listbox4.Items.Add('                th1                 ');
    //writeln(filename3,'                th1                 ');
    for j:= 1 to n do begin
    listbox4.Items.Add(floattostr(th1[j]));
    writeln(filename3,floattostr(th1[j]));
    end;


     listbox5.Items.Add('                w2                 ');
    //writeln(filename3,'                w2                 ');
    for k:= 1 to o do
    begin
      for j:= 1 to n do
      begin
        listbox5.Items.Add(floattostr(w2[k,j]));
        writeln(filename3,floattostr(w2[k,j]));
      end;
    end;
    listbox5.Items.Add('                th2                 ');
   // writeln(filename3,'                th2                 ');
    for k:= 1 to o do begin
    listbox5.Items.Add(floattostr(th2[k]));
    writeln(filename3,floattostr(th2[k]));
    end;

    listbox6.Items.Add('                w3                 ');
    //writeln(filename3,'                w3                 ');
    for l:= 1 to p do
    begin
      for k:= 1 to o do
      begin
      listbox6.Items.Add(floattostr(w3[l,k]));
      writeln(filename3,floattostr(w3[l,k]));
      end;
      end ;
    listbox6.Items.Add('                th3                 ');
    //writeln(filename3,'                th3                 ');
    for l:= 1 to p do
    begin
    listbox6.Items.Add(floattostr(th3[l]));
    writeln(filename3,floattostr(th3[l]));
    end;
end;
end;

//inisialisasi//
procedure TForm1.FormCreate(Sender: TObject);
begin
  timer2.Enabled:= false;
  m:=144;
  for i:=1 to m do
  begin
    //x[i,q]
    x[i,1]:=E[i];
    x[i,2]:=T[i];
    x[i,3]:=H[i];
    x[i,4]:=Oo[i];
    x[i,5]:=point[i];
  end;
  //d[l,q]
  d[1,1]:=1;d[1,2]:=0;d[1,3]:=0;d[1,4]:=0;d[1,5]:=0;
  d[2,1]:=0;d[2,2]:=1;d[2,3]:=0;d[2,4]:=0;d[2,5]:=0;
  d[3,1]:=0;d[3,2]:=0;d[3,3]:=1;d[3,4]:=0;d[3,5]:=0;
  d[4,1]:=0;d[4,2]:=0;d[4,3]:=0;d[4,4]:=1;d[4,5]:=0;
  d[5,1]:=0;d[5,2]:=0;d[5,3]:=0;d[5,4]:=0;d[5,5]:=1;
end;




//PROSES TRAINING//
procedure TForm1.Timer1Timer(Sender: TObject);
begin
   //muali trainning
  for q:=1 to 5 do
  begin
    //forward
    //menghitung output layer 1
    for j:=1 to n do
    begin
   	  temp:=0;
   	  for i:=1 to m do
   	  begin
        temp:=temp+x[i,q]*w1[j,i];  //q input pattern
   	  end;
   	  v1[j]:= temp+th1[j];
   	  y1[j]:= 1/(1+exp(-alpha*v1[j]));
		  g1[j]:= alpha*y1[j]*(1-y1[j]);
    end;

    //menghitung output layer 2
    for k:=1 to o do
    begin
   	  temp:=0;
   	  for j:=1 to n do
   	  begin
        temp:=temp+y1[j]*w2[k,j];
   	  end;
   	  v2[k]:= temp+th2[k];
   	  y2[k]:= 1/(1+exp(-alpha*v2[k]));
		  g2[k]:= alpha*y2[k]*(1-y2[k]);
    end;

    //menghitung output layer 3
    for l:=1 to p do
    begin
   	  temp:=0;
   	  for k:=1 to o do
   	  begin
        temp:=temp+y2[k]*w3[l,k];
   	  end;
   	  v3[l]:= temp+th3[l];
   	  y3[l]:= 1/(1+exp(-alpha*v3[l]));
		  g3[l]:= alpha*y3[l]*(1-y3[l]);
    end;

    //backward

    //menghitung error
    e_kuadrat:=0;
    for l:=1 to p do
    begin
      er[l]:=d[l,q]-y3[l];
      e_kuadrat:=e_kuadrat+sqr(er[l]);
    end;
    error[q]:=0.5*e_kuadrat;
    chart1lineseries1.AddXY(iterasi,error[q]);

    //menghitung delta error
    //delta error layer3
    for l:=1 to p do
    begin
      delta3[l]:= (d[l,q]-y3[l])*g3[l];
    end;

    //delta error layer2
    for k:=1 to o do
    begin
      temp:=0;
      for l:=1 to p do
      begin
        temp:=temp+delta3[l]*w3[l,k];
      end;
      delta2[k]:= temp*g2[k];
    end;

    //delta error layer1
    for j:=1 to n do
    begin
      temp:=0;
      for k:=1 to o do
      begin
        temp:=temp+delta2[k]*w2[k,j];
      end;
      delta1[j]:= temp*g1[j];
    end;

    //update w dan th layer 3
    for l:= 1 to p do
    begin
      for k:= l to o do
      begin
        wt3[l,k]:=w3[l,k];
        w3[l,k]:=w3[l,k]+miu*delta3[l]*y2[k];
      end;
      tht3[l]:=th3[l];
      th3[l]:=th3[l]+miu*delta3[l];
    end;

    //update w dan th layer 2
    for k:= 1 to o do
    begin
      for j:= l to n do
      begin
        wt2[k,j]:=w2[k,j];
        w2[k,j]:=w2[k,j]+miu*delta2[k]*y1[j];
      end;
      tht2[k]:=th2[k];
      th2[k]:=th2[k]+miu*delta2[k];
    end;


    //update w dan th layer 1

    for j:= 1 to n do
    begin
      for i:= l to m do
      begin
        wt1[j,i]:=w1[j,i];
        w1[j,i]:=w1[j,i]+miu*delta1[j]*x[i,q];
      end;
      tht1[j]:=th1[j];
      th1[j]:=th1[j]+miu*delta1[j];
    end;
  end;
  //akhir training

  //mengecek output y3[l,q] menggunakan w dan th terakhir
  for q:=1 to 5 do
  begin
    //forward
    //menghitung output layer 1
    for j:=1 to n do
    begin
   	  temp:=0;
   	  for i:=1 to m do
   	  begin
        temp:=temp+x[i,q]*wt1[j,i];  //q input pattern
   	  end;
   	  v1[j]:= temp+tht1[j];
   	  y1[j]:= 1/(1+exp(-alpha*v1[j]));
    end;

    //menghitung output layer 2
    for k:=1 to o do
    begin
   	  temp:=0;
   	  for j:=1 to n do
   	  begin
        temp:=temp+y1[j]*wt2[k,j];
   	  end;
   	  v2[k]:= temp+tht2[k];
   	  y2[k]:= 1/(1+exp(-alpha*v2[k]));
		  g2[k]:= alpha*y2[k]*(1-y2[k]);
    end;

    listbox7.Clear;
    listbox8.Clear;
    listbox9.Clear;
    listbox10.Clear;
    listbox11.Clear;
    //menghitung output layer 3
    for l:=1 to p do
    begin
   	  temp:=0;
   	  for k:=1 to o do
   	  begin
        temp:=temp+y2[k]*wt3[l,k];
   	  end;
   	  v3[l]:= temp+tht3[l];
   	  yy3[l,q]:= 1/(1+exp(-alpha*v3[l]));
      listbox7.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,1]));
      listbox8.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,2]));
      listbox9.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,3]));
      listbox10.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,4]));
      listbox11.Items.Add('y3['+inttostr(l)+']='+floattostr(yy3[l,5]));
    end;
    iterasi:=iterasi+1;
    edit7.Text:=inttostr(iterasi);

  end;

    //menghitung mse total
  mse_total:=0;
  for q:=1 to 5 do
  begin
    mse_total:=mse_total+error[q];
  end;
  //series1.AddXY(iterasi,mse_total);
  edit6.Text:=floattostr(mse_total);

  //konvergen??
  if mse_total<epsilon then begin
  timer1.Enabled:=false;
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  for q:=1 to 5 do
  begin
    //forward
    //menghitung output layer 1
    for j:=1 to n do
    begin
   	  temp:=0;
   	  for i:=1 to m do
   	  begin
        temp:=temp+x[i,q]*w11[j,i];  //q input pattern
   	  end;
   	  v11[j]:= temp+th11[j];
   	  y11[j]:= 1/(1+exp(-alpha*v11[j]));
    end;

    //menghitung output layer 2
    for k:=1 to o do
    begin
   	  temp:=0;
   	  for j:=1 to n do
   	  begin
        temp:=temp+y11[j]*w22[k,j];
   	  end;
   	  v22[k]:= temp+th22[k];
   	  y22[k]:= 1/(1+exp(-alpha*v22[k]));
		  g22[k]:= alpha*y22[k]*(1-y22[k]);
    end;

    //menghitung output layer 3
    for l:=1 to p do
    begin
   	  temp:=0;
   	  for k:=1 to o do
   	  begin
        temp:=temp+y22[k]*w33[l,k];
   	  end;
   	  v33[l]:= temp+th33[l];
   	  y33[l,q]:= 1/(1+exp(-alpha*v33[l]));
      end;
      listbox7.Items.Add('y3['+inttostr(l)+']='+floattostr(y33[l,1]));
      listbox8.Items.Add('y3['+inttostr(l)+']='+floattostr(y33[l,2]));
      listbox9.Items.Add('y3['+inttostr(l)+']='+floattostr(y33[l,3]));
      listbox10.Items.Add('y3['+inttostr(l)+']='+floattostr(y33[l,4]));
      listbox11.Items.Add('y3['+inttostr(l)+']='+floattostr(y33[l,5]));
end;
  timer2.Enabled:= false;
end;

end.

