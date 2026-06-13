object Form1: TForm1
  Left = 327
  Height = 516
  Top = 214
  Width = 727
  Caption = 'Form1'
  ClientHeight = 516
  ClientWidth = 727
  LCLVersion = '6.3'
  object Button1: TButton
    Left = 8
    Height = 25
    Top = 16
    Width = 144
    Caption = 'New Data'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Button2: TButton
    Left = 368
    Height = 25
    Top = 24
    Width = 75
    Caption = 'STOP'
    OnClick = Button2Click
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 69
    Height = 23
    Top = 72
    Width = 80
    TabOrder = 2
    Text = '10'
  end
  object Edit2: TEdit
    Left = 69
    Height = 23
    Top = 104
    Width = 80
    TabOrder = 3
    Text = '1000'
  end
  object Edit3: TEdit
    Left = 69
    Height = 23
    Top = 136
    Width = 80
    TabOrder = 4
    Text = '2'
  end
  object Edit4: TEdit
    Left = 69
    Height = 23
    Top = 168
    Width = 80
    TabOrder = 5
    Text = '0,0001'
  end
  object Edit5: TEdit
    Left = 69
    Height = 23
    Top = 232
    Width = 80
    TabOrder = 6
    Text = '0'
  end
  object Edit6: TEdit
    Left = 69
    Height = 23
    Top = 264
    Width = 80
    TabOrder = 7
    Text = '1'
  end
  object Edit7: TEdit
    Left = 599
    Height = 23
    Top = 64
    Width = 80
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 599
    Height = 23
    Top = 88
    Width = 80
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 599
    Height = 23
    Top = 112
    Width = 80
    TabOrder = 10
  end
  object Edit10: TEdit
    Left = 599
    Height = 23
    Top = 168
    Width = 80
    TabOrder = 11
  end
  object Edit11: TEdit
    Left = 599
    Height = 23
    Top = 192
    Width = 80
    TabOrder = 12
  end
  object Edit12: TEdit
    Left = 599
    Height = 23
    Top = 216
    Width = 80
    TabOrder = 13
  end
  object Edit13: TEdit
    Left = 599
    Height = 23
    Top = 280
    Width = 80
    TabOrder = 14
    Text = '1'
  end
  object Edit14: TEdit
    Left = 599
    Height = 23
    Top = 304
    Width = 80
    TabOrder = 15
    Text = '1'
  end
  object Edit15: TEdit
    Left = 599
    Height = 23
    Top = 328
    Width = 80
    TabOrder = 16
  end
  object Chart1: TChart
    Left = 152
    Height = 225
    Top = 64
    Width = 384
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
      end    
      item
        Alignment = calBottom
        Minors = <>
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    object Chart1LineSeries1: TLineSeries
    end
  end
  object Button3: TButton
    Left = 604
    Height = 25
    Top = 360
    Width = 75
    Caption = 'Test'
    OnClick = Button3Click
    TabOrder = 18
  end
  object Label1: TLabel
    Left = 29
    Height = 15
    Top = 78
    Width = 27
    Caption = 'Miu0'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 37
    Height = 15
    Top = 104
    Width = 19
    Caption = 'Tau'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 25
    Height = 15
    Top = 136
    Width = 31
    Caption = 'Alpha'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 43
    Height = 15
    Top = 168
    Width = 13
    Caption = 'EP'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 33
    Height = 15
    Top = 232
    Width = 23
    Caption = 'MSE'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 8
    Height = 15
    Top = 264
    Width = 48
    Caption = 'k (iterasi)'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 567
    Height = 15
    Top = 44
    Width = 144
    Caption = 'Weight dan Threshold awal'
    ParentColor = False
  end
  object Label8: TLabel
    Left = 552
    Height = 15
    Top = 152
    Width = 170
    Caption = 'Weight dan Threshold optimum'
    ParentColor = False
  end
  object Label9: TLabel
    Left = 567
    Height = 15
    Top = 72
    Width = 11
    Caption = 'th'
    ParentColor = False
  end
  object Label10: TLabel
    Left = 567
    Height = 15
    Top = 96
    Width = 15
    Caption = 'w1'
    ParentColor = False
  end
  object Label11: TLabel
    Left = 567
    Height = 15
    Top = 120
    Width = 15
    Caption = 'w2'
    ParentColor = False
  end
  object Label12: TLabel
    Left = 567
    Height = 15
    Top = 176
    Width = 11
    Caption = 'th'
    ParentColor = False
  end
  object Label13: TLabel
    Left = 567
    Height = 15
    Top = 200
    Width = 15
    Caption = 'w1'
    ParentColor = False
  end
  object Label14: TLabel
    Left = 567
    Height = 15
    Top = 224
    Width = 15
    Caption = 'w2'
    ParentColor = False
  end
  object Label15: TLabel
    Left = 623
    Height = 15
    Top = 264
    Width = 26
    Caption = 'TEST'
    ParentColor = False
  end
  object Label16: TLabel
    Left = 571
    Height = 15
    Top = 288
    Width = 11
    Caption = 'x1'
    ParentColor = False
  end
  object Label17: TLabel
    Left = 571
    Height = 15
    Top = 312
    Width = 11
    Caption = 'x2'
    ParentColor = False
  end
  object Label18: TLabel
    Left = 576
    Height = 15
    Top = 336
    Width = 6
    Caption = 'y'
    ParentColor = False
  end
  object ListBox1: TListBox
    Left = 168
    Height = 143
    Top = 344
    Width = 368
    ItemHeight = 0
    TabOrder = 19
  end
  object Button4: TButton
    Left = 17
    Height = 40
    Top = 400
    Width = 143
    Caption = 'LOAD FILE'
    OnClick = Button4Click
    TabOrder = 20
  end
  object Button5: TButton
    Left = 16
    Height = 41
    Top = 352
    Width = 144
    Caption = 'SAVE FILE'
    OnClick = Button5Click
    TabOrder = 21
  end
  object Button7: TButton
    Left = 600
    Height = 25
    Top = 8
    Width = 75
    Caption = 'LOAD DATA'
    OnClick = Button7Click
    TabOrder = 22
  end
  object Button9: TButton
    Left = 264
    Height = 25
    Top = 24
    Width = 75
    Caption = 'START'
    OnClick = Button9Click
    TabOrder = 23
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 695
    Top = 200
  end
  object OpenDialog1: TOpenDialog
    Left = 695
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 695
    Top = 96
  end
  object SaveDialog2: TSaveDialog
    Left = 695
    Top = 136
  end
  object OpenDialog2: TOpenDialog
    Left = 695
    Top = 248
  end
end
