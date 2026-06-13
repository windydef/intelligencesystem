object Form1: TForm1
  Left = 327
  Height = 678
  Top = 214
  Width = 1034
  Caption = 'Form1'
  ClientHeight = 678
  ClientWidth = 1034
  Color = clHighlightText
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object Button1: TButton
    Left = 616
    Height = 25
    Top = 648
    Width = 375
    Caption = 'GENERATE'
    Color = 14133369
    Default = True
    OnClick = Button1Click
    TabOrder = 0
  end
  object Chart1: TChart
    Left = 8
    Height = 193
    Top = 40
    Width = 328
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'miu (x)'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'distance (meter)'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.XMax = 100
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Legend.Alignment = laBottomLeft
    Legend.GroupTitles.Strings = (
      'Short, Medium, Long, Very long'
    )
    Legend.Visible = True
    Title.Brush.Color = clBtnFace
    Title.Font.CharSet = SHIFTJIS_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -19
    Title.Font.Name = '@Adobe Fan Heiti Std B'
    Title.Font.Pitch = fpVariable
    Title.Font.Quality = fqDraft
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'DISTANCE'
    )
    Title.Visible = True
    Color = clHighlightText
    object Chart1LineSeries1: TLineSeries
      Title = 'short'
      LinePen.Color = clRed
      LinePen.Width = 2
      Pointer.Pen.Color = clRed
      Pointer.Pen.Width = 2
    end
    object Chart1LineSeries2: TLineSeries
      Title = 'med'
      LinePen.Color = clBlue
      LinePen.Width = 2
      Pointer.Pen.Color = clRed
      Pointer.Pen.Width = 2
    end
    object Chart1LineSeries3: TLineSeries
      Title = 'long'
      LinePen.Color = clFuchsia
      LinePen.Width = 2
      Pointer.Pen.Color = clRed
      Pointer.Pen.Width = 2
    end
    object Chart1LineSeries4: TLineSeries
      Title = 'v.long'
      LinePen.Color = clYellow
      LinePen.Width = 2
      Pointer.Pen.Color = clRed
      Pointer.Pen.Width = 2
    end
    object Chart1ConstantLine1: TConstantLine
      AxisIndexX = 1
      LineStyle = lsVertical
      Pen.Width = 2
      Position = 0
    end
  end
  object Chart2: TChart
    Left = 504
    Height = 193
    Top = 40
    Width = 336
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'miu (y)'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'speed (km/hour)'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.XMin = 100
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Legend.Alignment = laBottomLeft
    Legend.ItemFillOrder = lfoRowCol
    Legend.Visible = True
    Title.Brush.Color = clBtnFace
    Title.Font.CharSet = SHIFTJIS_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -19
    Title.Font.Name = '@Adobe Fan Heiti Std B'
    Title.Font.Pitch = fpVariable
    Title.Font.Quality = fqDraft
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'SPEED'
    )
    Title.Visible = True
    Color = clHighlightText
    object Chart2LineSeries1: TLineSeries
      Title = 'low'
      LinePen.Color = clRed
      LinePen.Width = 2
    end
    object Chart2LineSeries2: TLineSeries
      Title = 'med'
      LinePen.Color = clBlue
      LinePen.Width = 2
    end
    object Chart2LineSeries3: TLineSeries
      Title = 'high'
      LinePen.Color = clFuchsia
      LinePen.Width = 2
    end
    object Chart2LineSeries4: TLineSeries
      Title = 'v,high'
      LinePen.Color = clYellow
      LinePen.Width = 2
    end
    object Chart2ConstantLine1: TConstantLine
      LineStyle = lsVertical
      Pen.Width = 2
      Position = 0
    end
  end
  object Chart3: TChart
    Left = 504
    Height = 192
    Top = 272
    Width = 328
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'miu (z)'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'breaking level'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.XMax = 100
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Legend.Alignment = laBottomLeft
    Legend.Visible = True
    Title.Brush.Color = clBtnFace
    Title.Font.CharSet = SHIFTJIS_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -19
    Title.Font.Name = '@Adobe Fan Heiti Std B'
    Title.Font.Pitch = fpVariable
    Title.Font.Quality = fqDraft
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'BRAKE'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart3LineSeries1: TLineSeries
      Title = 'no break'
      LinePen.Color = clRed
      LinePen.Width = 2
    end
    object Chart3LineSeries2: TLineSeries
      Title = 'soft'
      LinePen.Color = clBlue
      LinePen.Width = 2
    end
    object Chart3LineSeries3: TLineSeries
      Title = 'mod'
      LinePen.Color = clFuchsia
      LinePen.Width = 2
    end
    object Chart3LineSeries4: TLineSeries
      Title = 'hard'
      LinePen.Color = clYellow
      LinePen.Width = 2
    end
    object Chart3ConstantLine1: TConstantLine
      LineStyle = lsVertical
      Pen.Width = 2
      Position = 0
    end
    object Chart3AreaSeries1: TAreaSeries
      AreaBrush.Color = clRed
    end
    object Chart3AreaSeries2: TAreaSeries
      AreaBrush.Color = clBlue
    end
    object Chart3AreaSeries3: TAreaSeries
      AreaBrush.Color = clFuchsia
    end
    object Chart3AreaSeries4: TAreaSeries
      AreaBrush.Color = clYellow
    end
  end
  object Chart4: TChart
    Left = 512
    Height = 160
    Top = 472
    Width = 477
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'miu (z)'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'breaking level'
      end>
    Extent.UseXMax = True
    Extent.UseXMin = True
    Extent.UseYMax = True
    Extent.UseYMin = True
    Extent.XMax = 100
    Extent.YMax = 1
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.CharSet = SHIFTJIS_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -19
    Title.Font.Name = '@Adobe Fan Heiti Std B'
    Title.Font.Pitch = fpVariable
    Title.Font.Quality = fqDraft
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'BRAKING LEVEL'
    )
    Title.Visible = True
    Color = clHighlightText
    object Chart4AreaSeries1: TAreaSeries
      AreaBrush.Color = clSkyBlue
    end
    object Chart4AreaSeries2: TAreaSeries
      AreaBrush.Color = clSkyBlue
    end
    object Chart4AreaSeries3: TAreaSeries
      AreaBrush.Color = clSkyBlue
    end
    object Chart4AreaSeries4: TAreaSeries
      AreaBrush.Color = clSkyBlue
    end
  end
  object TrackBar2: TTrackBar
    Left = 608
    Height = 25
    Top = 232
    Width = 272
    Max = 100
    OnChange = TrackBar2Change
    Position = 0
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 400
    Height = 23
    Top = 63
    Width = 80
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 400
    Height = 23
    Top = 127
    Width = 80
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 400
    Height = 23
    Top = 151
    Width = 80
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 400
    Height = 23
    Top = 175
    Width = 80
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 400
    Height = 23
    Top = 199
    Width = 80
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 901
    Height = 23
    Top = 63
    Width = 80
    TabOrder = 11
  end
  object Edit7: TEdit
    Left = 903
    Height = 23
    Top = 127
    Width = 80
    TabOrder = 12
  end
  object Edit8: TEdit
    Left = 903
    Height = 23
    Top = 151
    Width = 80
    TabOrder = 13
  end
  object Edit9: TEdit
    Left = 903
    Height = 23
    Top = 175
    Width = 80
    TabOrder = 14
  end
  object Edit10: TEdit
    Left = 903
    Height = 23
    Top = 198
    Width = 80
    TabOrder = 15
  end
  object TrackBar1: TTrackBar
    Left = 64
    Height = 25
    Top = 240
    Width = 264
    Max = 100
    OnChange = TrackBar1Change
    Position = 1
    TabOrder = 16
  end
  object StringGrid1: TStringGrid
    Left = 70
    Height = 160
    Top = 304
    Width = 387
    Color = clBtnHighlight
    DefaultColWidth = 75
    DefaultRowHeight = 30
    TabOrder = 17
  end
  object Edit11: TEdit
    Left = 901
    Height = 23
    Top = 320
    Width = 80
    TabOrder = 18
  end
  object Edit12: TEdit
    Left = 901
    Height = 23
    Top = 344
    Width = 80
    TabOrder = 19
  end
  object Edit13: TEdit
    Left = 901
    Height = 23
    Top = 368
    Width = 80
    TabOrder = 20
  end
  object Edit14: TEdit
    Left = 901
    Height = 23
    Top = 391
    Width = 80
    TabOrder = 21
  end
  object Edit15: TEdit
    Left = 528
    Height = 23
    Top = 648
    Width = 80
    TabOrder = 22
  end
  object Label1: TLabel
    Left = 221
    Height = 24
    Top = 280
    Width = 54
    Caption = 'RULES'
    Font.CharSet = SHIFTJIS_CHARSET
    Font.Height = -19
    Font.Name = '@Adobe Fan Heiti Std B'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 480
    Height = 15
    Top = 71
    Width = 11
    Caption = 'm'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 400
    Height = 15
    Top = 48
    Width = 45
    Caption = 'Distance'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 400
    Height = 15
    Top = 112
    Width = 20
    Caption = 'IMF'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 344
    Height = 15
    Top = 136
    Width = 28
    Caption = 'Short'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 344
    Height = 15
    Top = 159
    Width = 45
    Caption = 'Medium'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 344
    Height = 15
    Top = 183
    Width = 27
    Caption = 'Long'
    ParentColor = False
  end
  object Label8: TLabel
    Left = 344
    Height = 15
    Top = 207
    Width = 49
    Caption = 'Very long'
    ParentColor = False
  end
  object Label9: TLabel
    Left = 901
    Height = 15
    Top = 48
    Width = 32
    Caption = 'Speed'
    ParentColor = False
  end
  object Label10: TLabel
    Left = 981
    Height = 15
    Top = 71
    Width = 50
    Caption = 'KM/Hour'
    ParentColor = False
  end
  object Label11: TLabel
    Left = 903
    Height = 15
    Top = 112
    Width = 20
    Caption = 'IMF'
    ParentColor = False
  end
  object Label12: TLabel
    Left = 847
    Height = 15
    Top = 135
    Width = 22
    Caption = 'Low'
    ParentColor = False
  end
  object Label13: TLabel
    Left = 847
    Height = 15
    Top = 159
    Width = 45
    Caption = 'Medium'
    ParentColor = False
  end
  object Label14: TLabel
    Left = 847
    Height = 15
    Top = 183
    Width = 26
    Caption = 'High'
    ParentColor = False
  end
  object Label15: TLabel
    Left = 847
    Height = 15
    Top = 206
    Width = 51
    Caption = 'Very High'
    ParentColor = False
  end
  object Label16: TLabel
    Left = 840
    Height = 15
    Top = 328
    Width = 48
    Caption = 'No brake'
    ParentColor = False
  end
  object Label17: TLabel
    Left = 840
    Height = 15
    Top = 352
    Width = 21
    Caption = 'Soft'
    ParentColor = False
  end
  object Label18: TLabel
    Left = 840
    Height = 15
    Top = 376
    Width = 51
    Caption = 'Moderate'
    ParentColor = False
  end
  object Label19: TLabel
    Left = 872
    Height = 15
    Top = 399
    Width = 26
    Caption = 'Hard'
    ParentColor = False
  end
  object Label20: TLabel
    Left = 901
    Height = 15
    Top = 304
    Width = 26
    Caption = 'OMF'
    ParentColor = False
  end
  object Label21: TLabel
    Left = 528
    Height = 15
    Top = 632
    Width = 76
    Caption = 'Breaking Level'
    ParentColor = False
  end
  object Label22: TLabel
    Left = 352
    Height = 26
    Top = 8
    Width = 306
    Caption = 'AUTOMATIC BREAKING SYSTEM'
    Font.CharSet = SHIFTJIS_CHARSET
    Font.Height = -21
    Font.Name = '@Adobe Gothic Std B'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object StringGrid2: TStringGrid
    Left = 70
    Height = 160
    Top = 496
    Width = 387
    DefaultColWidth = 75
    DefaultRowHeight = 30
    TabOrder = 23
  end
  object Label23: TLabel
    Left = 221
    Height = 15
    Top = 480
    Width = 54
    Caption = 'IMPLIKASI'
    ParentColor = False
  end
end
