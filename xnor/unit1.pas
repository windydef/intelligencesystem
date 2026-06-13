unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  oddfunc, wij, output : integer;
  thd, wij1, u: array [1..128] of integer;
  weight: array[1..128, 1..7] of integer;
  threshold: array[1..64] of integer =
  (1,1,1,3,1,3,3,3,1,3,3,3,3,3,3,5,1,3,3,3,3,3,3,5,3,3,3,5,3,5,5,5,1,3,3,3,3,3,3,5,3,3,3,5,3,5,5,5,3,3,3,
  5,3,5,5,5,3,5,5,5,5,5,5,7);
  threshold2: integer;
  input: array [1..128, 1..7] of integer =
    ((0,0,0,0,0,0,0),
    (0,0,0,0,0,0,1),
    (0,0,0,0,0,1,0),
    (0,0,0,0,0,1,1),
    (0,0,0,0,1,0,0),
    (0,0,0,0,1,0,1),
    (0,0,0,0,1,1,0),
    (0,0,0,0,1,1,1),
    (0,0,0,1,0,0,0),
    (0,0,0,1,0,0,1),
    (0,0,0,1,0,1,0),
    (0,0,0,1,0,1,1),
    (0,0,0,1,1,0,0),
    (0,0,0,1,1,0,1),
    (0,0,0,1,1,1,0),
    (0,0,0,1,1,1,1),
    (0,0,1,0,0,0,0),
    (0,0,1,0,0,0,1),
    (0,0,1,0,0,1,0),
    (0,0,1,0,0,1,1),
    (0,0,1,0,1,0,0),
    (0,0,1,0,1,0,1),
    (0,0,1,0,1,1,0),
    (0,0,1,0,1,1,1),
    (0,0,1,1,0,0,0),
    (0,0,1,1,0,0,1),
    (0,0,1,1,0,1,0),
    (0,0,1,1,0,1,1),
    (0,0,1,1,1,0,0),
    (0,0,1,1,1,0,1),
    (0,0,1,1,1,1,0),
    (0,0,1,1,1,1,1),
    (0,1,0,0,0,0,0),
    (0,1,0,0,0,0,1),
    (0,1,0,0,0,1,0),
    (0,1,0,0,0,1,1),
    (0,1,0,0,1,0,0),
    (0,1,0,0,1,0,1),
    (0,1,0,0,1,1,0),
    (0,1,0,0,1,1,1),
    (0,1,0,1,0,0,0),
    (0,1,0,1,0,0,1),
    (0,1,0,1,0,1,0),
    (0,1,0,1,0,1,1),
    (0,1,0,1,1,0,0),
    (0,1,0,1,1,0,1),
    (0,1,0,1,1,1,0),
    (0,1,0,1,1,1,1),
    (0,1,1,0,0,0,0),
    (0,1,1,0,0,0,1),
    (0,1,1,0,0,1,0),
    (0,1,1,0,0,1,1),
    (0,1,1,0,1,0,0),
    (0,1,1,0,1,0,1),
    (0,1,1,0,1,1,0),
    (0,1,1,0,1,1,1),
    (0,1,1,1,0,0,0),
    (0,1,1,1,0,0,1),
    (0,1,1,1,0,1,0),
    (0,1,1,1,0,1,1),
    (0,1,1,1,1,0,0),
    (0,1,1,1,1,0,1),
    (0,1,1,1,1,1,0),
    (0,1,1,1,1,1,1),
    (1,0,0,0,0,0,0),
    (1,0,0,0,0,0,1),
    (1,0,0,0,0,1,0),
    (1,0,0,0,0,1,1),
    (1,0,0,0,1,0,0),
    (1,0,0,0,1,0,1),
    (1,0,0,0,1,1,0),
    (1,0,0,0,1,1,1),
    (1,0,0,1,0,0,0),
    (1,0,0,1,0,0,1),
    (1,0,0,1,0,1,0),
    (1,0,0,1,0,1,1),
    (1,0,0,1,1,0,0),
    (1,0,0,1,1,0,1),
    (1,0,0,1,1,1,0),
    (1,0,0,1,1,1,1),
    (1,0,1,0,0,0,0),
    (1,0,1,0,0,0,1),
    (1,0,1,0,0,1,0),
    (1,0,1,0,0,1,1),
    (1,0,1,0,1,0,0),
    (1,0,1,0,1,0,1),
    (1,0,1,0,1,1,0),
    (1,0,1,0,1,1,1),
    (1,0,1,1,0,0,0),
    (1,0,1,1,0,0,1),
    (1,0,1,1,0,1,0),
    (1,0,1,1,0,1,1),
    (1,0,1,1,1,0,0),
    (1,0,1,1,1,0,1),
    (1,0,1,1,1,1,0),
    (1,0,1,1,1,1,1),
    (1,1,0,0,0,0,0),
    (1,1,0,0,0,0,1),
    (1,1,0,0,0,1,0),
    (1,1,0,0,0,1,1),
    (1,1,0,0,1,0,0),
    (1,1,0,0,1,0,1),
    (1,1,0,0,1,1,0),
    (1,1,0,0,1,1,1),
    (1,1,0,1,0,0,0),
    (1,1,0,1,0,0,1),
    (1,1,0,1,0,1,0),
    (1,1,0,1,0,1,1),
    (1,1,0,1,1,0,0),
    (1,1,0,1,1,0,1),
    (1,1,0,1,1,1,0),
    (1,1,0,1,1,1,1),
    (1,1,1,0,0,0,0),
    (1,1,1,0,0,0,1),
    (1,1,1,0,0,1,0),
    (1,1,1,0,0,1,1),
    (1,1,1,0,1,0,0),
    (1,1,1,0,1,0,1),
    (1,1,1,0,1,1,0),
    (1,1,1,0,1,1,1),
    (1,1,1,1,0,0,0),
    (1,1,1,1,0,0,1),
    (1,1,1,1,0,1,0),
    (1,1,1,1,0,1,1),
    (1,1,1,1,1,0,0),
    (1,1,1,1,1,0,1),
    (1,1,1,1,1,1,0),
    (1,1,1,1,1,1,1));




implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var
  i,j: integer;
begin
      j:= 0;
      for i:=1 to 128 do
      begin
           oddfunc:= input[i,1] + input[i,2] + input[i,3] + input[i,4] + input[i,5] + input[i,6] + input[i,7];
           if ( oddfunc mod 2 = 1) then
           begin
             j:= j+1;
             thd[j]:= oddfunc;
                      if (input[i,1]= 1) then
                      begin
                        weight[i,1]:= 1;
                      end else weight[i,1]:= -1;

                      if (input[i,2]= 1) then
                      begin
                        weight[i,2]:= 1;
                      end else weight[i,2]:= -1;

                      if (input[i,3]= 1) then
                      begin
                        weight[i,3]:= 1;
                      end else weight[i,3]:= -1;

                      if (input[i,4]= 1) then
                      begin
                        weight[i,4]:= 1;
                      end else weight[i,4]:= -1;

                      if (input[i,5]= 1) then
                      begin
                        weight[i,5]:= 1;
                      end else weight[i,5]:= -1;

                      if (input[i,6]= 1) then
                      begin
                        weight[i,6]:= 1;
                      end else weight[i,6]:= -1;

                      if (input[i,7]= 1) then
                      begin
                        weight[i,7]:= 1;
                      end else weight[i,7]:= -1;

           wij:= (input[i,1]* weight[i,1]) + (input[i,2]* weight[i,2]) + (input[i,3]* weight[i,3]) + (input[i,4]* weight[i,4]) + (input[i,5]* weight[i,5]) + (input[i,6]* weight[i,6]) + (input[i,7]* weight[i,7]);
           wij1[j]:= wij;
           Listbox1.Items.Add(inttoStr(+wij1[j]));
           button3.Caption:=(inttostr(j));
           Listbox2.Items.Add(inttostr(threshold[j]));
           if (wij1[j] >= threshold[j]) then
           begin
              u[j]:= 1;
           end else
              u[j]:= 0;
           Listbox3.Items.Add(inttostr(u[j]));
            threshold2:= 64;
            button4.Caption:= (inttostr(threshold2));
            output:= output + u[j];
           if (output >= threshold2) then
           begin
              button1.Caption:=(inttostr(1));
           end else
              button1.Caption:=(inttostr(0));
           end;
      end;




end;



end.

