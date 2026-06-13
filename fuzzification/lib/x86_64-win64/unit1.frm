object Form1: TForm1
  Left = 304
  Height = 407
  Top = 187
  Width = 565
  Caption = 'Form1'
  ClientHeight = 407
  ClientWidth = 565
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object ScrollBar1: TScrollBar
    Left = 8
    Height = 24
    Top = 208
    Width = 521
    Min = 35
    PageSize = 0
    ParentShowHint = False
    Position = 35
    TabOrder = 0
    OnChange = ScrollBar1Change
  end
  object Edit1: TEdit
    Left = 160
    Height = 23
    Top = 240
    Width = 80
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 160
    Height = 23
    Top = 296
    Width = 80
    TabOrder = 2
    Text = 'Ringan'
  end
  object Edit3: TEdit
    Left = 296
    Height = 23
    Top = 296
    Width = 80
    TabOrder = 3
    Text = 'Normal'
  end
  object Edit4: TEdit
    Left = 424
    Height = 23
    Top = 296
    Width = 80
    TabOrder = 4
    Text = 'Berat'
  end
  object Chart1: TChart
    Left = 15
    Height = 178
    Top = 20
    Width = 529
    AxisList = <    
      item
        Arrow.Visible = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'miuX'
      end    
      item
        Alignment = calBottom
        Arrow.Visible = True
        Minors = <>
        Title.Visible = True
        Title.Caption = 'kilograms'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.UseYMax = True
    Extent.XMax = 100
    Extent.XMin = 35
    Extent.YMax = 2
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    object Chart1FuncSeries1: TFuncSeries
      Pen.Width = 3
      OnCalculate = Chart1FuncSeries1Calculate
    end
    object Chart1FuncSeries2: TFuncSeries
      Pen.Color = clBlue
      Pen.Width = 3
      OnCalculate = Chart1FuncSeries2Calculate
    end
    object Chart1FuncSeries3: TFuncSeries
      Pen.Color = clYellow
      Pen.Width = 3
      OnCalculate = Chart1FuncSeries3Calculate
    end
    object Chart1ConstantLine1: TConstantLine
      LineStyle = lsVertical
      Pen.Color = clRed
      Pen.Width = 2
      Position = 0
    end
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 296
    Width = 136
    Caption = 'DERAJAT KEANGGOTAAN'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 81
    Height = 15
    Top = 248
    Width = 77
    Caption = 'BERAT BADAN'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 248
    Height = 15
    Top = 248
    Width = 13
    Caption = 'kg'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 56
    Height = 15
    Top = 312
    Width = 36
    Caption = '(miuX)'
    ParentColor = False
  end
end
