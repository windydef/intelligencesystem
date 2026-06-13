object Form1: TForm1
  Left = 114
  Height = 704
  Top = 14
  Width = 1153
  HorzScrollBar.Page = 1088
  HorzScrollBar.Range = 1088
  VertScrollBar.Page = 656
  VertScrollBar.Range = 656
  Caption = 'Form1'
  ClientHeight = 704
  ClientWidth = 1153
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object Edit1: TEdit
    Left = 8
    Height = 23
    Top = 120
    Width = 104
    TabOrder = 0
    Text = '50'
  end
  object Edit2: TEdit
    Left = 8
    Height = 23
    Top = 72
    Width = 104
    TabOrder = 1
    Text = '50'
  end
  object Button1: TButton
    Left = 8
    Height = 25
    Top = 152
    Width = 104
    Caption = 'Save Random'
    OnClick = Button1Click
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Height = 25
    Top = 184
    Width = 104
    Caption = 'Open Random'
    OnClick = Button2Click
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 728
    Height = 19
    Top = 248
    Width = 80
    Caption = 'E Character'
    TabOrder = 4
  end
  object RadioButton2: TRadioButton
    Left = 728
    Height = 19
    Top = 272
    Width = 81
    Caption = 'T Character'
    TabOrder = 5
  end
  object RadioButton3: TRadioButton
    Left = 728
    Height = 19
    Top = 296
    Width = 83
    Caption = 'H Character'
    TabOrder = 6
  end
  object RadioButton4: TRadioButton
    Left = 728
    Height = 19
    Top = 320
    Width = 83
    Caption = 'O Character'
    TabOrder = 7
  end
  object RadioButton5: TRadioButton
    Left = 728
    Height = 19
    Top = 344
    Width = 71
    Caption = 'Character'
    TabOrder = 8
  end
  object Button3: TButton
    Left = 728
    Height = 25
    Top = 424
    Width = 92
    Caption = 'GENERATE'
    OnClick = Button3Click
    TabOrder = 9
  end
  object Edit3: TEdit
    Left = 8
    Height = 23
    Top = 244
    Width = 104
    TabOrder = 10
    Text = '0,5'
  end
  object Edit4: TEdit
    Left = 8
    Height = 23
    Top = 288
    Width = 104
    TabOrder = 11
    Text = '2'
  end
  object Edit5: TEdit
    Left = 8
    Height = 23
    Top = 336
    Width = 104
    TabOrder = 12
    Text = '0,00001'
  end
  object Button4: TButton
    Left = 8
    Height = 25
    Top = 368
    Width = 104
    Caption = 'START'
    OnClick = Button4Click
    TabOrder = 13
  end
  object Button5: TButton
    Left = 8
    Height = 25
    Top = 392
    Width = 104
    Caption = 'STOP'
    OnClick = Button5Click
    TabOrder = 14
  end
  object StringGrid1: TStringGrid
    Left = 832
    Height = 272
    Top = 240
    Width = 280
    ColCount = 12
    DefaultColWidth = 23
    RowCount = 12
    TabOrder = 15
  end
  object Chart1: TChart
    Left = 136
    Height = 272
    Top = 240
    Width = 570
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
  object ListBox1: TListBox
    Left = 184
    Height = 160
    Top = 64
    Width = 116
    ItemHeight = 0
    TabOrder = 17
  end
  object ListBox2: TListBox
    Left = 312
    Height = 160
    Top = 64
    Width = 120
    ItemHeight = 0
    TabOrder = 18
  end
  object ListBox3: TListBox
    Left = 448
    Height = 160
    Top = 64
    Width = 116
    ItemHeight = 0
    TabOrder = 19
  end
  object ListBox4: TListBox
    Left = 696
    Height = 160
    Top = 64
    Width = 120
    ItemHeight = 0
    TabOrder = 20
  end
  object ListBox5: TListBox
    Left = 832
    Height = 160
    Top = 64
    Width = 120
    ItemHeight = 0
    TabOrder = 21
  end
  object ListBox6: TListBox
    Left = 968
    Height = 160
    Top = 64
    Width = 120
    ItemHeight = 0
    TabOrder = 22
  end
  object Edit6: TEdit
    Left = 8
    Height = 23
    Top = 448
    Width = 104
    TabOrder = 23
    Text = '0'
  end
  object Edit7: TEdit
    Left = 8
    Height = 23
    Top = 489
    Width = 104
    TabOrder = 24
    Text = '0'
  end
  object Label1: TLabel
    Left = 408
    Height = 32
    Top = 8
    Width = 280
    Caption = 'Multilayer Perceptron'
    Font.CharSet = ANSI_CHARSET
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Height = 15
    Top = 56
    Width = 141
    Caption = 'n = Jumlah Hidden Layer 1'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Height = 15
    Top = 104
    Width = 141
    Caption = 'o = Jumlah Hidden Layer 2'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 40
    Height = 15
    Top = 228
    Width = 21
    Caption = 'Miu'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 40
    Height = 15
    Top = 272
    Width = 31
    Caption = 'Alpha'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 40
    Height = 15
    Top = 320
    Width = 38
    Caption = 'Epsilon'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 8
    Height = 15
    Top = 432
    Width = 55
    Caption = 'MSE Total:'
    ParentColor = False
  end
  object Label8: TLabel
    Left = 8
    Height = 1
    Top = 475
    Width = 1
    ParentColor = False
  end
  object Label9: TLabel
    Left = 8
    Height = 15
    Top = 472
    Width = 34
    Caption = 'Iterasi:'
    ParentColor = False
  end
  object Label10: TLabel
    Left = 328
    Height = 15
    Top = 45
    Width = 80
    Caption = 'W dan Th Awal'
    ParentColor = False
  end
  object Label11: TLabel
    Left = 840
    Height = 15
    Top = 45
    Width = 106
    Caption = 'W dan Th Optimum'
    ParentColor = False
  end
  object Edit8: TEdit
    Left = 728
    Height = 23
    Top = 392
    Width = 88
    TabOrder = 25
    Text = '0'
  end
  object Button7: TButton
    Left = 728
    Height = 24
    Top = 456
    Width = 88
    Caption = 'Test'
    OnClick = Button7Click
    TabOrder = 26
  end
  object Button8: TButton
    Left = 616
    Height = 25
    Top = 64
    Width = 75
    Caption = 'Save'
    OnClick = Button8Click
    TabOrder = 27
  end
  object Button6: TButton
    Left = 616
    Height = 25
    Top = 96
    Width = 75
    Caption = 'Show'
    OnClick = Button6Click
    TabOrder = 28
  end
  object GroupBox1: TGroupBox
    Left = 0
    Height = 181
    Top = 520
    Width = 608
    Caption = 'OUTPUT'
    ClientHeight = 161
    ClientWidth = 604
    TabOrder = 29
    object Label16: TLabel
      Left = 496
      Height = 15
      Top = 522
      Width = 101
      Caption = 'Output Y3 -> Point'
      ParentColor = False
    end
    object ListBox7: TListBox
      Left = 8
      Height = 136
      Top = 16
      Width = 112
      ItemHeight = 0
      TabOrder = 0
    end
    object Label15: TLabel
      Left = 32
      Height = 15
      Top = 0
      Width = 79
      Caption = 'Output Y3 -> E'
      ParentColor = False
    end
    object ListBox11: TListBox
      Left = 488
      Height = 136
      Top = 16
      Width = 109
      ItemHeight = 0
      TabOrder = 1
    end
    object ListBox8: TListBox
      Left = 127
      Height = 136
      Top = 16
      Width = 113
      ItemHeight = 0
      TabOrder = 2
    end
    object ListBox9: TListBox
      Left = 248
      Height = 136
      Top = 16
      Width = 112
      ItemHeight = 0
      TabOrder = 3
    end
    object ListBox10: TListBox
      Left = 368
      Height = 136
      Top = 16
      Width = 116
      ItemHeight = 0
      TabOrder = 4
    end
    object Label12: TLabel
      Left = 152
      Height = 15
      Top = 0
      Width = 80
      Caption = 'Output Y3 -> T'
      ParentColor = False
    end
    object Label13: TLabel
      Left = 264
      Height = 15
      Top = 0
      Width = 82
      Caption = 'Output Y3 -> H'
      ParentColor = False
    end
    object Label14: TLabel
      Left = 392
      Height = 15
      Top = 0
      Width = 82
      Caption = 'Output Y3 -> O'
      ParentColor = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 616
    Height = 181
    Top = 520
    Width = 536
    Caption = 'OUTPUT SETELAH BER DIUBAH'
    ClientHeight = 161
    ClientWidth = 532
    TabOrder = 30
    object ListBox12: TListBox
      Left = 8
      Height = 136
      Top = 15
      Width = 100
      ItemHeight = 0
      TabOrder = 0
    end
    object ListBox13: TListBox
      Left = 112
      Height = 136
      Top = 15
      Width = 100
      ItemHeight = 0
      TabOrder = 1
    end
    object ListBox14: TListBox
      Left = 216
      Height = 136
      Top = 15
      Width = 100
      ItemHeight = 0
      TabOrder = 2
    end
    object ListBox15: TListBox
      Left = 320
      Height = 136
      Top = 15
      Width = 100
      ItemHeight = 0
      TabOrder = 3
    end
    object ListBox16: TListBox
      Left = 424
      Height = 136
      Top = 15
      Width = 100
      ItemHeight = 0
      TabOrder = 4
    end
    object Label17: TLabel
      Left = 16
      Height = 15
      Top = 0
      Width = 79
      Caption = 'Output Y3 -> E'
      ParentColor = False
    end
    object Label18: TLabel
      Left = 120
      Height = 15
      Top = 0
      Width = 80
      Caption = 'Output Y3 -> T'
      ParentColor = False
    end
    object Label19: TLabel
      Left = 224
      Height = 15
      Top = -3
      Width = 82
      Caption = 'Output Y3 -> H'
      ParentColor = False
    end
    object Label20: TLabel
      Left = 328
      Height = 15
      Top = -3
      Width = 82
      Caption = 'Output Y3 -> O'
      ParentColor = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 83
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 51
    Top = 8
  end
  object SaveDialog2: TSaveDialog
    Left = 112
    Top = 8
  end
  object OpenDialog2: TOpenDialog
    Left = 144
    Top = 8
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 176
    Top = 8
  end
end
