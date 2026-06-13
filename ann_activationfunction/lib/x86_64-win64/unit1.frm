object Form1: TForm1
  Left = 228
  Height = 1200
  Top = 0
  Width = 889
  Caption = 'Form1'
  ClientHeight = 1200
  ClientWidth = 889
  Color = clCream
  Constraints.MaxHeight = 1500
  Constraints.MaxWidth = 1000
  Constraints.MinHeight = 1200
  OnCreate = FormCreate
  LCLVersion = '6.3'
  Visible = True
  object Button1: TButton
    Left = 112
    Height = 25
    Top = 24
    Width = 75
    Caption = 'Show'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Chart1: TChart
    Left = 18
    Height = 168
    Top = 64
    Width = 270
    AxisList = <    
      item
        Arrow.Visible = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Flin'
      end    
      item
        TickInnerLength = 3
        Alignment = calBottom
        Arrow.Visible = True
        Minors = <>
        Range.Max = 5
        Range.Min = -5
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart1FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart1FuncSeries1Calculate
    end
  end
  object Chart2: TChart
    Left = 304
    Height = 168
    Top = 56
    Width = 284
    AxisList = <    
      item
        Arrow.Visible = True
        AtDataOnly = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Fshl'
      end    
      item
        Alignment = calBottom
        Arrow.Visible = True
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart2FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart2FuncSeries1Calculate
    end
  end
  object Button2: TButton
    Left = 408
    Height = 25
    Top = 24
    Width = 75
    Caption = 'Show'
    OnClick = Button2Click
    TabOrder = 3
  end
  object Chart3: TChart
    Left = 18
    Height = 184
    Top = 304
    Width = 272
    AllowZoom = False
    AxisList = <    
      item
        Arrow.Visible = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Fssl'
      end    
      item
        Alignment = calBottom
        Arrow.Visible = True
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart3FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart3FuncSeries1Calculate
    end
  end
  object Button3: TButton
    Left = 112
    Height = 25
    Top = 272
    Width = 75
    Caption = 'Show'
    OnClick = Button3Click
    TabOrder = 5
  end
  object Chart4: TChart
    Left = 296
    Height = 184
    Top = 304
    Width = 276
    AxisList = <    
      item
        Arrow.Visible = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Fbs'
      end    
      item
        Alignment = calBottom
        Arrow.Visible = True
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart4FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart4FuncSeries1Calculate
    end
  end
  object Button4: TButton
    Left = 584
    Height = 25
    Top = 272
    Width = 75
    Caption = 'Show'
    OnClick = Button4Click
    TabOrder = 7
  end
  object Label1: TLabel
    Left = 128
    Height = 15
    Top = 240
    Width = 34
    Caption = 'LINIER'
    ParentColor = False
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 376
    Height = 15
    Top = 232
    Width = 147
    Caption = 'SYMMETRIC HARD LIMITER'
    ParentColor = False
    OnClick = Label2Click
  end
  object Label3: TLabel
    Left = 80
    Height = 15
    Top = 488
    Width = 162
    Caption = 'SYMMETRIC PIECEWISE LINIER'
    ParentColor = False
    OnClick = Label3Click
  end
  object Label4: TLabel
    Left = 400
    Height = 15
    Top = 488
    Width = 92
    Caption = 'BINARY SIGMOID'
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 488
    Height = 23
    Top = 272
    Width = 80
    NumbersOnly = True
    OnChange = Edit1Change
    TabOrder = 8
    Text = 'input alpha'
    TextHint = 'alpha'
  end
  object Chart5: TChart
    Left = 600
    Height = 168
    Top = 56
    Width = 248
    AxisList = <    
      item
        Arrow.Visible = True
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Fhl'
        Title.PositionOnMarks = True
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart5FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart5FuncSeries1Calculate
    end
  end
  object Button5: TButton
    Left = 696
    Height = 25
    Top = 24
    Width = 75
    Caption = 'Show'
    OnClick = Button5Click
    TabOrder = 10
  end
  object Label5: TLabel
    Left = 696
    Height = 15
    Top = 232
    Width = 78
    Caption = 'HARD LIMITER'
    ParentColor = False
  end
  object Chart6: TChart
    Left = 576
    Height = 184
    Top = 304
    Width = 256
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Gbs'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.UseYMax = True
    Extent.UseYMin = True
    Extent.XMax = 5
    Extent.XMin = -5
    Extent.YMax = 5
    Extent.YMin = -5
    ExtentSizeLimit.XMax = 5
    ExtentSizeLimit.XMin = -5
    ExtentSizeLimit.YMax = 5
    ExtentSizeLimit.YMin = -5
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    Color = clCream
    object Chart6FuncSeries1: TFuncSeries
      Active = False
      OnCalculate = Chart6FuncSeries1Calculate
    end
  end
  object Label6: TLabel
    Left = 616
    Height = 15
    Top = 488
    Width = 199
    Caption = 'Derivative of Binary Sigmoid Function'
    ParentColor = False
    OnClick = Label6Click
  end
  object Chart7: TChart
    Left = 112
    Height = 160
    Top = 560
    Width = 260
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Fhts'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    object Chart7FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 2
      Extent.XMin = -2
      Extent.YMax = 2
      Extent.YMin = -2
      Pen.Width = 3
      OnCalculate = Chart7FuncSeries1Calculate
    end
  end
  object Label7: TLabel
    Left = 160
    Height = 15
    Top = 536
    Width = 176
    Caption = 'HYPERBOLIC TANGENT SIGMOID'
    ParentColor = False
  end
  object Edit2: TEdit
    Left = 392
    Height = 23
    Top = 616
    Width = 80
    TabOrder = 13
    Text = 'input alpha'
  end
  object Chart8: TChart
    Left = 507
    Height = 160
    Top = 560
    Width = 264
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Ghts'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Vq'
      end>
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Text.Strings = (
      'TAChart'
    )
    object Chart8FuncSeries1: TFuncSeries
      Active = False
      Extent.UseXMax = True
      Extent.UseXMin = True
      Extent.UseYMax = True
      Extent.UseYMin = True
      Extent.XMax = 20
      Extent.XMin = -20
      Extent.YMax = 20
      Extent.YMin = -20
      Pen.Width = 3
      OnCalculate = Chart8FuncSeries1Calculate
    end
  end
  object Label8: TLabel
    Left = 504
    Height = 15
    Top = 536
    Width = 267
    Caption = 'Derivative of Hiperbolic Tangent Sigmoid Function'
    ParentColor = False
  end
  object Button6: TButton
    Left = 392
    Height = 25
    Top = 648
    Width = 80
    Caption = 'Show'
    OnClick = Button6Click
    TabOrder = 15
  end
end
