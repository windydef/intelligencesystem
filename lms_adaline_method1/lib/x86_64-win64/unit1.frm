object Form1: TForm1
  Left = 328
  Height = 457
  Top = 204
  Width = 897
  Caption = 'Form1'
  ClientHeight = 457
  ClientWidth = 897
  LCLVersion = '6.3'
  object Button1: TButton
    Left = 13
    Height = 25
    Top = 16
    Width = 75
    Caption = 'Start'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Button2: TButton
    Left = 120
    Height = 25
    Top = 16
    Width = 75
    Caption = 'Stop'
    OnClick = Button2Click
    TabOrder = 1
  end
  object Chart1: TChart
    Left = 184
    Height = 345
    Top = 87
    Width = 544
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'MSE'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Epoch'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    object Chart1LineSeries1: TLineSeries
      Pointer.Visible = False
    end
  end
  object Edit1: TEdit
    Left = 752
    Height = 23
    Top = 63
    Width = 80
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 752
    Height = 23
    Top = 87
    Width = 80
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 752
    Height = 23
    Top = 110
    Width = 80
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 72
    Height = 23
    Top = 144
    Width = 80
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 72
    Height = 23
    Top = 176
    Width = 80
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 72
    Height = 23
    Top = 64
    Width = 80
    TabOrder = 8
    Text = '0,01'
  end
  object Edit7: TEdit
    Left = 72
    Height = 23
    Top = 96
    Width = 80
    TabOrder = 9
    Text = '0,006'
  end
  object Edit8: TEdit
    Left = 72
    Height = 23
    Top = 216
    Width = 80
    TabOrder = 10
  end
  object Edit9: TEdit
    Left = 72
    Height = 23
    Top = 240
    Width = 80
    TabOrder = 11
  end
  object Edit10: TEdit
    Left = 72
    Height = 23
    Top = 264
    Width = 80
    TabOrder = 12
  end
  object Edit11: TEdit
    Left = 72
    Height = 23
    Top = 288
    Width = 80
    TabOrder = 13
  end
  object Edit12: TEdit
    Left = 72
    Height = 23
    Top = 336
    Width = 80
    TabOrder = 14
  end
  object Edit13: TEdit
    Left = 72
    Height = 23
    Top = 360
    Width = 80
    TabOrder = 15
  end
  object Edit14: TEdit
    Left = 72
    Height = 23
    Top = 384
    Width = 80
    TabOrder = 16
  end
  object Edit15: TEdit
    Left = 72
    Height = 23
    Top = 408
    Width = 80
    TabOrder = 17
  end
  object Edit16: TEdit
    Left = 752
    Height = 23
    Top = 168
    Width = 80
    TabOrder = 18
  end
  object Edit17: TEdit
    Left = 752
    Height = 23
    Top = 192
    Width = 80
    TabOrder = 19
  end
  object Edit18: TEdit
    Left = 752
    Height = 23
    Top = 216
    Width = 80
    TabOrder = 20
  end
  object Edit19: TEdit
    Left = 752
    Height = 23
    Top = 272
    Width = 80
    TabOrder = 21
    Text = '0'
  end
  object Edit20: TEdit
    Left = 752
    Height = 23
    Top = 296
    Width = 80
    TabOrder = 22
    Text = '0'
  end
  object Edit21: TEdit
    Left = 752
    Height = 23
    Top = 336
    Width = 80
    TabOrder = 23
  end
  object Edit22: TEdit
    Left = 752
    Height = 23
    Top = 360
    Width = 80
    TabOrder = 24
  end
  object Button3: TButton
    Left = 752
    Height = 25
    Top = 406
    Width = 80
    Caption = 'TEST'
    OnClick = Button3Click
    TabOrder = 25
  end
  object Label1: TLabel
    Left = 24
    Height = 15
    Top = 72
    Width = 21
    Caption = 'Miu'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 11
    Height = 15
    Top = 104
    Width = 38
    Caption = 'Epsilon'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 22
    Height = 15
    Top = 152
    Width = 23
    Caption = 'MSE'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 16
    Height = 15
    Top = 176
    Width = 31
    Caption = 'Iterasi'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 32
    Height = 15
    Top = 216
    Width = 12
    Caption = 'v1'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 32
    Height = 15
    Top = 240
    Width = 12
    Caption = 'v2'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 32
    Height = 15
    Top = 264
    Width = 12
    Caption = 'v3'
    ParentColor = False
  end
  object Label8: TLabel
    Left = 32
    Height = 15
    Top = 288
    Width = 12
    Caption = 'v4'
    ParentColor = False
  end
  object Label9: TLabel
    Left = 32
    Height = 15
    Top = 336
    Width = 12
    Caption = 'y1'
    ParentColor = False
  end
  object Label10: TLabel
    Left = 32
    Height = 15
    Top = 360
    Width = 12
    Caption = 'y2'
    ParentColor = False
  end
  object Label11: TLabel
    Left = 32
    Height = 15
    Top = 384
    Width = 12
    Caption = 'y3'
    ParentColor = False
  end
  object Label12: TLabel
    Left = 33
    Height = 15
    Top = 408
    Width = 12
    Caption = 'y4'
    ParentColor = False
  end
  object Label13: TLabel
    Left = 760
    Height = 15
    Top = 48
    Width = 67
    Caption = 'Weight Awal'
    ParentColor = False
  end
  object Label14: TLabel
    Left = 744
    Height = 15
    Top = 152
    Width = 93
    Caption = 'Weight Optimum'
    ParentColor = False
  end
  object Label15: TLabel
    Left = 856
    Height = 15
    Top = 64
    Width = 15
    Caption = 'w0'
    ParentColor = False
  end
  object Label16: TLabel
    Left = 856
    Height = 15
    Top = 91
    Width = 15
    Caption = 'w1'
    ParentColor = False
  end
  object Label17: TLabel
    Left = 856
    Height = 15
    Top = 119
    Width = 15
    Caption = 'w2'
    ParentColor = False
  end
  object Label18: TLabel
    Left = 856
    Height = 15
    Top = 168
    Width = 15
    Caption = 'w0'
    ParentColor = False
  end
  object Label19: TLabel
    Left = 856
    Height = 15
    Top = 195
    Width = 15
    Caption = 'w1'
    ParentColor = False
  end
  object Label20: TLabel
    Left = 856
    Height = 15
    Top = 223
    Width = 15
    Caption = 'w2'
    ParentColor = False
  end
  object Label21: TLabel
    Left = 860
    Height = 15
    Top = 272
    Width = 11
    Caption = 'x1'
    ParentColor = False
  end
  object Label22: TLabel
    Left = 860
    Height = 15
    Top = 304
    Width = 11
    Caption = 'x2'
    ParentColor = False
  end
  object Label23: TLabel
    Left = 863
    Height = 15
    Top = 344
    Width = 6
    Caption = 'v'
    ParentColor = False
  end
  object Label24: TLabel
    Left = 864
    Height = 15
    Top = 368
    Width = 6
    Caption = 'y'
    ParentColor = False
  end
  object Label25: TLabel
    Left = 304
    Height = 34
    Top = 16
    Width = 349
    Caption = 'LMS ADALINE METODE 1'
    Font.CharSet = ANSI_CHARSET
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 848
    Top = 8
  end
end
