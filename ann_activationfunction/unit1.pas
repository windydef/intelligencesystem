unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAFuncSeries, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls, TADrawUtils, TACustomSeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Chart1: TChart;
    Chart1FuncSeries1: TFuncSeries;
    Chart2: TChart;
    Chart2FuncSeries1: TFuncSeries;
    Chart3: TChart;
    Chart3FuncSeries1: TFuncSeries;
    Chart4: TChart;
    Chart4FuncSeries1: TFuncSeries;
    Chart5: TChart;
    Chart5FuncSeries1: TFuncSeries;
    Chart6: TChart;
    Chart6FuncSeries1: TFuncSeries;
    Chart7: TChart;
    Chart7FuncSeries1: TFuncSeries;
    Chart8: TChart;
    Chart8FuncSeries1: TFuncSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart2FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart3FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart4FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart5FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart6FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart7FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Chart8FuncSeries1Calculate(const AX: Double; out AY: Double);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  alpha, alpha1, alpha2: integer;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    if button1.Tag = 0
     then begin
     chart1funcseries1.active:= true;
     button1.tag:= 1;
     end else
     begin
     chart1funcseries1.active:= false;
     button1.tag:= 0 ;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     if button2.Tag = 0
     then begin
     chart2funcseries1.active:= true;
     button2.tag:= 1;
     end else
     begin
     chart2funcseries1.active:= false;
     button2.tag:= 0 ;
     end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
       if button3.Tag = 0
     then begin
     chart3funcseries1.active:= true;
     button3.tag:= 1;
     end else
     begin
     chart3funcseries1.active:= false;
     button3.tag:= 0 ;
     end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if button4.Tag = 0
     then begin
     chart4funcseries1.active:= true;
     chart6funcseries1.active:= true;
     button4.tag:= 1;
     end else
     begin
     chart4funcseries1.active:= false;
     chart6funcseries1.active:= false;
     button4.tag:= 0 ;
     end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   if button1.Tag = 0
     then begin
     chart5funcseries1.active:= true;
     button1.tag:= 1;
     end else
     begin
     chart5funcseries1.active:= false;
     button1.tag:= 0 ;
     end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if button6.Tag = 0
     then begin
     chart7funcseries1.active:= true;
     chart8funcseries1.active:= true;
     button6.tag:= 1;
     end else
     begin
     chart7funcseries1.active:= false;
     chart8funcseries1.active:= false;
     button6.tag:= 0 ;
     end;
end;

procedure TForm1.Chart1FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
    AY:=AX;
end;

procedure TForm1.Chart2FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
         if AX < 0 then
         begin AY:= -1;
         end
         else if AX = 0 then
          begin AY:= 0;
          end
         else if AX > 0 then
          begin AY:= 1;
          end
end;

procedure TForm1.Chart3FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
  if AX < -1 then
   begin AY:= -1;
   end
  else if AX > 1 then
   begin AY:= 1;
   end else
   begin
   AY:= AX;
   end
   end;

procedure TForm1.Chart4FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
  alpha:= strtoint(edit1.Text);
      AY:= 1/ (1+ exp(-(alpha)*AX));
end;

procedure TForm1.Chart5FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
 if AX < 0 then
         begin AY:= 0;
         end
         else if AX > 0 then
          begin AY:= 1;
          end
end;

procedure TForm1.Chart6FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
    alpha1:= strtoint(edit1.Text);
    //AY:= 1/ (1+ exp(-(alpha1)*AX));
    AY:= ((alpha1)*(exp(-(alpha1)*AX))/ ((1 + exp(-(alpha1)*AX))*(1 + exp(-(alpha1)*AX))));
end;

procedure TForm1.Chart7FuncSeries1Calculate(const AX: Double; out AY: Double);
begin
  alpha2:= strtoint(edit2.Text);
  AY:= (1- exp(-2*alpha2*AX))/ (1+ exp(-2*alpha2*AX));
end;

procedure TForm1.Chart8FuncSeries1Calculate(const AX: Double; out AY: Double);
var
  AX1: double;
begin
      alpha2:= strtoint(edit2.Text);
      AX1:= (1- exp(-2*alpha2*AX)) / (1+ exp(-2*alpha2*AX));
      AY:= alpha2* (1+ (AX1*AX))* (1- (AX1*AX));
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label6Click(Sender: TObject);
begin

end;

end.

