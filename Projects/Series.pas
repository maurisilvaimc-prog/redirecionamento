//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Series;

interface

uses
  SysUtils, Classes, Chart, TeEngine, TeCanvas, Series;

type
  TSeriesPointerStyle = (psRectangle, psCircle, psTriangle, psDownTriangle, psCross, psDiagCross, psStar, psDiamond, psSmallDot);
  TOnGetPointerStyle = function(Sender:TChartSeries; ValueIndex:Integer):TSeriesPointerStyle of object;;
  TSeriesPointer = class(TPersistent)
  public
    Dark3D:Boolean;//f4
    Draw3D:Boolean;//f5
    Brush:TChartBrush;//f8
    HorizSize:Integer;//fC
    InflateMargins:Boolean;//f10
    FOwner:TChartSeries;//f14
    Pen:TChartPen;//f18
    Style:TSeriesPointerStyle;//f1C
    VertSize:Integer;//f20
    Visible:Boolean;//f24
    AllowChangeSize:Boolean;//f25
    destructor Destroy; virtual;//0054E860
    procedure Assign(Source:TPersistent); virtual;//v8//0054F140
    constructor Create(AOwner:TChartSeries);//0054E7D4
    procedure SetBooleanProperty(var Variable:Boolean; Value:Boolean);//0054E898
    procedure SetIntegerProperty(var Variable:Integer; Value:Integer);//0054E8A4
    procedure CheckPointerSize(Value:Integer);//0054E8B0
    procedure SetHorizSize(Value:Integer);//0054E908
    procedure SetInflateMargins(Value:Boolean);//0054E928
    procedure SetVertSize(Value:Integer);//0054E934
    procedure SetPen(Value:TChartPen);//0054E954
    procedure SetBrush(Value:TChartBrush);//0054E960
    procedure SetDark3D(Value:Boolean);//0054E96C
    procedure SetDraw3D(Value:Boolean);//0054E978
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);//0054E984
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);//0054E9B8
    procedure SetVisible(Value:Boolean);//0054E9EC
    procedure SetStyle(Value:TSeriesPointerStyle);//0054E9F8
    procedure PrepareCanvas(ColorValue:TColor);//0054EA0C
    procedure DrawPointer(Is3D:Boolean; px:Integer; py:Integer; tmpHoriz:Integer; tmpVert:Integer; ColorValue:TColor; AStyle:TSeriesPointerStyle);//0054ECDC
    procedure Draw(px:Integer; py:Integer; ColorValue:TColor; AStyle:TSeriesPointerStyle);//0054F114
    procedure DrawLegendShape(AColor:TColor; const Rect:TRect; DrawPen:Boolean);//0054F1AC
  end;
  TSeriesClickPointerEvent = procedure(Sender:TCustomSeries; ValueIndex:Integer; X:Integer; Y:Integer) of object;;
  TCustomSeries = class(TChartSeries)
  public
    FAreaBrush:TBrushStyle;//f108
    FAreaColor:TColor;//f10C
    FAreaLinesPen:TChartPen;//f110
    FClickableLine:Boolean;//f114
    FDark3D:Boolean;//f115
    FDrawArea:Boolean;//f116
    FDrawLine:Boolean;//f117
    FInvertedStairs:Boolean;//f118
    FLineBrush:TBrushStyle;//f119
    FLineHeight:Integer;//f11C
    FLinePen:TChartPen;//f120
    FPointer:TSeriesPointer;//f124
    FStairs:Boolean;//f128
    FOnClickPointer:TSeriesClickPointerEvent;//f130
    OnGetPointerStyle:TOnGetPointerStyle;//f138
    BottomPos:Integer;//f140
    OldBottomPos:Integer;//f144
    OldX:Integer;//f148
    OldY:Integer;//f14C
    OldColor:TColor;//f150
    tmpDark3DRatio:Double;//f158
    destructor Destroy; virtual;//0054F2E4
    procedure Assign(Source:TPersistent); virtual;//v8//0054F398
    constructor Create(AOwner:TComponent); virtual;//v2C//0054F258
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//0054F32C
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//00550374
    function GetEditorClass:AnsiString; virtual;//vE0//005506BC
    function Clicked(x:Integer; y:Integer):Integer; virtual;//vF4//0054F640
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect); virtual;//v12C//0054F9A8
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer); virtual;//v134//005506EC
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer); virtual;//v138//00550754
    function ClickedPointer(ValueIndex:Integer; tmpX:Integer; tmpY:Integer; x:Integer; y:Integer):Boolean; virtual;//v14C//0054F360
    procedure DrawPointer(AX:Integer; AY:Integer; AColor:TColor; ValueIndex:Integer); virtual;//v150//0055065C
    function GetOriginPos(ValueIndex:Integer):Integer; virtual;//v154//005507D4
    procedure SetPointer(Value:TSeriesPointer);//0054F898
    procedure SetLinePen(Value:TChartPen);//0054F8B4
    procedure SetAreaColor(Value:TColor);//0054F8F0
    procedure SetBrushProperty(var ABrush:TBrushStyle; Value:TBrushStyle);//0054F900
    procedure SetAreaBrush(Value:TBrushStyle);//0054F90C
    procedure SetLineBrush(Value:TBrushStyle);//0054F91C
    procedure LinePrepareCanvas(tmpCanvas:TCanvas3D; tmpColor:TColor);//0054FA5C
    function GetAreaBrushColor(AColor:TColor):TColor;//0054FABC
    procedure SetLineHeight(Value:Integer);//00551328
    procedure SetAreaLinesPen(Value:TChartPen);//00551818
  end;
  TLineSeries = class(TCustomSeries)
  public
    procedure Assign(Source:TPersistent); virtual;//v8//0055086C
    constructor Create(AOwner:TComponent); virtual;//v2C//005507F0
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle); virtual;//v130//00550840
    procedure SetStairs(Value:Boolean);//0054F8D0
    procedure SetInvertedStairs(Value:Boolean);//0054F8E0
    procedure SetDark3D(Value:Boolean);//005507E0
  end;
  TPointSeries = class(TCustomSeries)
  public
    procedure Assign(Source:TPersistent); virtual;//v8//0055090C
    constructor Create(AOwner:TComponent); virtual;//v2C//005508B0
    procedure SetColorEachPoint(Value:Boolean); virtual;//v78//005509C8
    procedure PrepareForGallery(IsEnabled:Boolean); virtual;//vDC//00550970
    function GetEditorClass:AnsiString; virtual;//vE0//0055093C
  end;
  TMultiArea = (maNone, maStacked, maStacked100);
  TAreaSeries = class(TCustomSeries)
  public
    MultiArea:TMultiArea;//f160
    procedure Assign(Source:TPersistent); virtual;//v8//00550A98
    constructor Create(AOwner:TComponent); virtual;//v2C//005509F4
    function MaxYValue:Double; virtual;//vC4//00550C9C
    function MinYValue:Double; virtual;//vD0//00550D2C
    function GetEditorClass:AnsiString; virtual;//vE0//00550B18
    function CalcYPos(ValueIndex:Integer):Integer; virtual;//vE8//00550D54
    procedure CalcZOrder; virtual;//v114//00550AF8
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle); virtual;//v130//00550A4C
    function GetOriginPos(ValueIndex:Integer):Integer; virtual;//v154//00550C80
    procedure SetDrawArea(Value:Boolean);//0054F888
    procedure SetMultiArea(Value:TMultiArea);//00550BB4
    function InternalCalcStackedYPos(ValueIndex:Integer; Value:Double):Integer;//00550BE4
  end;
  BarException = class(Exception)
  end;
  TMultiBar = (mbNone, mbSide, mbStacked, mbStacked100);
  TBarStyle = (bsRectangle, bsPyramid, bsInvPyramid, bsCilinder, bsEllipse, bsArrow, bsRectGradient);
  TGetBarStyleEvent = procedure(Sender:TCustomBarSeries; ValueIndex:Integer; var TheBarStyle:TBarStyle) of object;;
  TCustomBarSeries = class(TChartSeries)
  public
    AutoBarSize:Boolean;//f108
    AutoMarkPosition:Boolean;//f109
    BarBrush:TChartBrush;//f10C
    BarPen:TChartPen;//f110
    BarStyle:TBarStyle;//f114
    BarWidthPercent:Integer;//f118
    Dark3D:Boolean;//f11C
    MultiBar:TMultiBar;//f11D
    OffsetPercent:Integer;//f120
    SideMargins:Boolean;//f124
    UseYOrigin:Boolean;//f125
    YOrigin:Double;//f128
    OnGetBarStyle:TGetBarStyleEvent;//f130
    FBarBounds:TRect;//f138
    FCustomBarSize:Integer;//f148
    IBarSize:Integer;//f14C
    NormalBarColor:TColor;//f150
    destructor Destroy; virtual;//00550E64
    procedure Assign(Source:TPersistent); virtual;//v8//00551914
    constructor Create(AOwner:TComponent); virtual;//v2C//00550D8C
    //function vD8:?; virtual;//vD8//00550F44
    procedure PrepareForGallery(IsEnabled:Boolean); virtual;//vDC//00551338
    function GetEditorClass:AnsiString; virtual;//vE0//00551860
    function Clicked(x:Integer; y:Integer):Integer; virtual;//vF4//005513DC
    function PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double; virtual;//v100//005515AC
    procedure CalcZOrder; virtual;//v114//00550EB0
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect); virtual;//v12C//005515F0
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle); virtual;//v130//00551638
    procedure InternalCalcMarkLength; virtual; abstract;//v14C//0066AC84
    //function v150:?; virtual;//v150//005510B4
    procedure SetBarPen(Value:TChartPen);//0054F8A8
    procedure SetDark3d(Value:Boolean);//0054F8C0
    procedure SetBarWidthPercent(Value:Integer);//00550F4C
    procedure SetOffsetPercent(Value:Integer);//00550FBC
    procedure SetBarStyle(Value:TBarStyle);//0055103C
    function BarOrderPos:Integer;//00551050
    procedure CalcBarWidth;//005510B8
    function CalcMarkLength(ValueIndex:Integer):Integer;//00551240
    procedure SetUseYOrigin(Value:Boolean);//005512A4
    procedure SetSideMargins(Value:Boolean);//005512B4
    procedure SetOrigin(Value:Double; const Value:Double);//0055135C
    function BarSeriesCount:Integer;//00551374
    procedure SetOtherMultiBar;//00551484
    procedure SetMultiBar(Value:TMultiBar);//005514D8
    function InternalGetOriginPos(ValueIndex:Integer; DefaultOrigin:Integer):Integer;//005514FC
    procedure SetPenBrushBar(BarColor:TColor);//00551694
    procedure BarRectangle(BarColor:TColor; ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer);//0055171C
    function GetBarStyle(ValueIndex:Integer):TBarStyle;//00551824
    procedure SetBarBrush(Value:TChartBrush);//00551854
    function BarMargin:Integer;//00551890
    function ApplyBarOffset(Position:Integer):Integer;//005518B0
    procedure SetAutoMarkPosition(Value:Boolean);//005518F4
    procedure SetAutoBarSize(Value:Boolean);//00551904
    procedure AdjustGradientRectPen(var R:TRect);//005519E8
    function MaxMandatoryValue(AList:TChartValueList; const Value:Double):Double;//00551A14
    function MinMandatoryValue(const Value:Double):Double;//00551AD4
    procedure InternalApplyBarMargin(var MarginA:Integer; var MarginB:Integer);//00551B30
  end;
  TBarSeries = class(TCustomBarSeries)
  public
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//00551CE4
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//005521D4
    function MaxYValue:Double; virtual;//vC4//00551BD4
    function MinYValue:Double; virtual;//vD0//00551C00
    function CalcXPos(ValueIndex:Integer):Integer; virtual;//vE4//00551B50
    function CalcYPos(ValueIndex:Integer):Integer; virtual;//vE8//00552268
    function DrawValuesForward:Boolean; virtual;//v108//00552430
    function DrawSeriesForward(ValueIndex:Integer):Boolean; virtual;//v10C//0055243C
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer); virtual;//v134//00551C28
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer); virtual;//v138//00551C4C
    function InternalCalcMarkLength(ValueIndex:Integer):Integer; virtual;//v14C//00551CD4
    function InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean; virtual;//v150//00552328
    procedure DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer); virtual;//v154//00551D54
    procedure SetCustomBarWidth(Value:Integer);//0055102C
    function GetOriginPos(ValueIndex:Integer):Integer;//00552318
  end;
  THorizBarSeries = class(TCustomBarSeries)
  public
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//0055280C
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//00552D3C
    procedure FillSampleValues(NumValues:Integer); virtual;//vA4//00552DD0
    function MaxXValue:Double; virtual;//vC0//0055274C
    function MinXValue:Double; virtual;//vCC//00552778
    function CalcXPos(ValueIndex:Integer):Integer; virtual;//vE4//00552500
    function CalcYPos(ValueIndex:Integer):Integer; virtual;//vE8//005525C0
    //function v104:?; virtual;//v104//0055245C
    function DrawValuesForward:Boolean; virtual;//v108//00552F00
    function DrawSeriesForward(ValueIndex:Integer):Boolean; virtual;//v10C//00552F0C
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer); virtual;//v134//00552464
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer); virtual;//v138//005524DC
    function InternalCalcMarkLength(ValueIndex:Integer):Integer; virtual;//v14C//005527A0
    function InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean; virtual;//v150//00552638
    procedure DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer); virtual;//v154//0055289C
    function GetOriginPos(ValueIndex:Integer):Integer;//005525B0
  end;
  TCircledSeries = class(TChartSeries)
  public
    Circled:Boolean;//f108
    FRotationAngle:Integer;//f10C
    CustomXRadius:Integer;//f110
    CustomYRadius:Integer;//f114
    FXRadius:Integer;//f118
    FYRadius:Integer;//f11C
    FCircleBackColor:TColor;//f120
    IRotDegree:Double;//f128
    FCircleWidth:Integer;//f130
    FCircleHeight:Integer;//f134
    FCircleXCenter:Integer;//f138
    FCircleYCenter:Integer;//f13C
    FCircleRect:TRect;//f140
    destructor Destroy; virtual;//00552F88
    procedure Assign(Source:TPersistent); virtual;//v8//00553880
    constructor Create(AOwner:TComponent); virtual;//v2C//00552F2C
    procedure DoBeforeDrawValues; virtual;//v4C//005535D0
    procedure SetActive(Value:Boolean); virtual;//v74//005538E4
    procedure SetParentChart(Value:TCustomAxisPanel); virtual;//v7C//00553314
    //function AssociatedToAxis(Axis:TCustomChartAxis):?; virtual;//v94//00553350
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle); virtual;//v130//00553774
    //function v13C:?; virtual;//v13C//00553158
    procedure SetParentProperties(EnableParentProps:Boolean); virtual;//v14C//005531F8
    procedure SetCircled(Value:Boolean);//00552FBC
    procedure SetOtherCustomRadius(IsXRadius:Boolean; Value:Integer);//005530E0
    procedure SetCustomXRadius(Value:Integer);//0055315C
    procedure SetCustomYRadius(Value:Integer);//00553180
    procedure AdjustCircleRect;//00553354
    procedure CalcRadius;//00553638
    procedure SetCircleBackColor(Value:TColor);//005536D4
    procedure AngleToPos(var X:Integer; var Y:Integer; const Angle:Double; const AXRadius:Double; const AYRadius:Double);//005536E4
    function CalcCircleBackColor:TColor;//00553740
    function PointToAngle(x:Integer; y:Integer):Double;//0055378C
  end;
  PieException = class(ChartException)
  end;
  TPieAngles = array of ?;
//elSize = 18;
  TExplodedSlices = class(TList)
  public
    OwnerSeries:TChartSeries;//f10
    function GetValue(Index:Integer):Integer;//00553900
    procedure SetValue(Index:Integer; Value:Integer);//0055392C
  end;
  TPieOtherStyle = (poNone, poBelowPercent, poBelowValue);
  TPieOtherSlice = class(TPersistent)
  public
    Style:TPieOtherStyle;//f4
    Text:String;//f8
    Value:Double;//f10
    FOwner:TChartSeries;//f18
    procedure Assign(Source:TPersistent); virtual;//v8//005539C4
    constructor Create(AOwner:TChartSeries);//0055396C
    procedure SetStyle(Value:TPieOtherStyle);//00553A00
    procedure SetText(const Value:AnsiString);//00553A14
    procedure SetValue(Value:Double; const Value:Double);//00553A24
  end;
  TPieSeries = class(TCircledSeries)
  public
    Dark3D:Boolean;//f150
    FExplodedSlice:TExplodedSlices;//f154
    ExplodeBiggest:Integer;//f158
    PiePen:TChartPen;//f15C
    OtherSlice:TPieOtherSlice;//f160
    UsePatterns:Boolean;//f164
    FAngles:TPieAngles;//f168
    IniX:Integer;//f16C
    IniY:Integer;//f170
    EndX:Integer;//f174
    EndY:Integer;//f178
    IsExploded:Boolean;//f17C
    destructor Destroy; virtual;//00553AFC
    procedure Assign(Source:TPersistent); virtual;//v8//00554A1C
    constructor Create(AOwner:TComponent); virtual;//v2C//00553A3C
    procedure ClearLists; virtual;//v3C//00553BA8
    procedure DoBeforeDrawChart; virtual;//v48//00554A94
    procedure DrawAllValues; virtual;//v50//00554350
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//00554004
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//00554860
    function CountLegendItems:Integer; virtual;//v9C//00553D80
    procedure FillSampleValues(NumValues:Integer); virtual;//vA4//00553C10
    function LegendToValueIndex(LegendIndex:Integer):Integer; virtual;//vB4//00553DBC
    function MaxXValue:Double; virtual;//vC0//0055492C
    function MaxYValue:Double; virtual;//vC4//00554964
    function MinXValue:Double; virtual;//vCC//00554948
    function MinYValue:Double; virtual;//vD0//00554980
    //function vD8:?; virtual;//vD8//00553BA0
    procedure PrepareForGallery(IsEnabled:Boolean); virtual;//vDC//005549C8
    function GetEditorClass:AnsiString; virtual;//vE0//005548DC
    function CalcXPos(ValueIndex:Integer):Integer; virtual;//vE4//00553B60
    function Clicked(x:Integer; y:Integer):Integer; virtual;//vF4//00553D58
    procedure SwapValueIndex(a:Integer; b:Integer); virtual;//v110//00554C1C
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle); virtual;//v130//00553BC4
    procedure DrawPie(ValueIndex:Integer); virtual;//v150//0055452C
    procedure SetRotationAngle(Value:Integer);//00553028
    function CalcClickedPie(x:Integer; y:Integer):Integer;//00553C78
    function BelongsToOtherSlice(ValueIndex:Integer):Boolean;//00553E0C
    procedure CalcAngles;//00553E34
    procedure CalcExplodedRadius(ValueIndex:Integer; var AXRadius:Integer; var AYRadius:Integer);//00553F94
    procedure CalcExplodedOffset(ValueIndex:Integer; var OffsetX:Integer; var OffsetY:Integer);//005546D4
    procedure CalcExplodeBiggest;//005547F0
    procedure SetExplodeBiggest(Value:Integer);//0055482C
    procedure SetPiePen(Value:TChartPen);//00554848
    procedure SetOtherSlice(Value:TPieOtherSlice);//00554854
    procedure SetUsePatterns(Value:Boolean);//005548CC
    function GetPieValues:TChartValueList;//0055490C
    procedure SetPieValues(Value:TChartValueList);//00554914
    procedure SetDark3D(Value:Boolean);//0055491C
  end;
  TFastLineSeries = class(TChartSeries)
  public
    AutoRepaint:Boolean;//f108
    LinePen:TChartPen;//f10C
    OldX:Integer;//f110
    OldY:Integer;//f114
    destructor Destroy; virtual;//00554CC0
    procedure Assign(Source:TPersistent); virtual;//v8//00554FC8
    constructor Create(AOwner:TComponent); virtual;//v2C//00554C68
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//005550F8
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//00554E48
    procedure NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer); virtual;//v6C//00554D18
    procedure SetSeriesColor(AColor:TColor); virtual;//v80//00554F7C
    function GetEditorClass:AnsiString; virtual;//vE0//00554DD0
    function Clicked(x:Integer; y:Integer):Integer; virtual;//vF4//0055500C
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect); virtual;//v12C//00554F9C
    procedure SetLinePen(Value:TChartPen);//00554CF0
  end;
    @@Pies@Initialize; stdcall;//0054C5CC
    @@Pies@Finalize; stdcall;//0054C5DC
    destructor Destroy;//0054E860
    procedure DrawDiagonalCross;//0054EA74
    procedure DrawCross;//0054EB50
    procedure DoTriangle3D(DeltaY:Integer);//0054EC08
    procedure Assign(Source:TPersistent);//0054F140
    constructor Create(AOwner:TComponent);//0054F258
    destructor Destroy;//0054F2E4
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//0054F32C
    function ClickedPointer(ValueIndex:Integer; tmpX:Integer; tmpY:Integer; x:Integer; y:Integer):Boolean;//0054F360
    procedure Assign(Source:TPersistent);//0054F398
    function PointInVertLine(x0:Integer; y0:Integer; y1:Integer):Boolean;//0054F470
    function PointInHorizLine(x0:Integer; y0:Integer; x1:Integer):Boolean;//0054F488
    function CheckPointInLine:Boolean;//0054F4A0
    function Clicked(x:Integer; y:Integer):Integer;//0054F640
    procedure DrawLine(DrawRectangle:Boolean);//0054F92C
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect);//0054F9A8
    function CalcYPosLeftRight(AnotherIndex:Integer; const YLimit:Double):Integer;//0054FAD8
    procedure InternalDrawArea(BrushStyle:TBrushStyle; BrushColor:TColor);//0054FB88
    procedure DrawPoint(DrawOldPointer:Boolean);//0054FDD0
    procedure DrawValue(ValueIndex:Integer);//00550374
    procedure DrawPointer(AX:Integer; AY:Integer; AColor:TColor; ValueIndex:Integer);//0055065C
    function GetEditorClass:AnsiString;//005506BC
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);//005506EC
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);//00550754
    function GetOriginPos(ValueIndex:Integer):Integer;//005507D4
    constructor Create(AOwner:TComponent);//005507F0
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);//00550840
    procedure Assign(Source:TPersistent);//0055086C
    constructor Create(AOwner:TComponent);//005508B0
    procedure Assign(Source:TPersistent);//0055090C
    function GetEditorClass:AnsiString;//0055093C
    procedure PrepareForGallery(IsEnabled:Boolean);//00550970
    procedure SetColorEachPoint(Value:Boolean);//005509C8
    constructor Create(AOwner:TComponent);//005509F4
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);//00550A4C
    procedure Assign(Source:TPersistent);//00550A98
    procedure CalcZOrder;//00550AF8
    function GetEditorClass:AnsiString;//00550B18
    procedure SetOtherMultiArea;//00550B48
    function GetOriginPos(ValueIndex:Integer):Integer;//00550C80
    function MaxYValue:Double;//00550C9C
    function MinYValue:Double;//00550D2C
    function CalcYPos(ValueIndex:Integer):Integer;//00550D54
    constructor Create(AOwner:TComponent);//00550D8C
    destructor Destroy;//00550E64
    procedure CalcZOrder;//00550EB0
    //function sub_00550F44:?;//00550F44
    //function sub_005510B4:?;//005510B4
    procedure PrepareForGallery(IsEnabled:Boolean);//00551338
    function Clicked(x:Integer; y:Integer):Integer;//005513DC
    function PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double;//005515AC
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect);//005515F0
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);//00551638
    function GetEditorClass:AnsiString;//00551860
    procedure Assign(Source:TPersistent);//00551914
    function CalcXPos(ValueIndex:Integer):Integer;//00551B50
    function MaxYValue:Double;//00551BD4
    function MinYValue:Double;//00551C00
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);//00551C28
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);//00551C4C
    function InternalCalcMarkLength(ValueIndex:Integer):Integer;//00551CD4
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//00551CE4
    procedure DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer);//00551D54
    procedure DrawValue(ValueIndex:Integer);//005521D4
    function CalcYPos(ValueIndex:Integer):Integer;//00552268
    function InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean;//00552328
    function DrawValuesForward:Boolean;//00552430
    function DrawSeriesForward(ValueIndex:Integer):Boolean;//0055243C
    //function sub_0055245C:?;//0055245C
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);//00552464
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);//005524DC
    function CalcXPos(ValueIndex:Integer):Integer;//00552500
    function CalcYPos(ValueIndex:Integer):Integer;//005525C0
    function InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean;//00552638
    function MaxXValue:Double;//0055274C
    function MinXValue:Double;//00552778
    function InternalCalcMarkLength(ValueIndex:Integer):Integer;//005527A0
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//0055280C
    procedure DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer);//0055289C
    procedure DrawValue(ValueIndex:Integer);//00552D3C
    procedure FillSampleValues(NumValues:Integer);//00552DD0
    function DrawValuesForward:Boolean;//00552F00
    function DrawSeriesForward(ValueIndex:Integer):Boolean;//00552F0C
    constructor Create(AOwner:TComponent);//00552F2C
    destructor Destroy;//00552F88
    //function sub_00553158:?;//00553158
    function AllCircled:Boolean;//005531A4
    procedure SetParentProperties(EnableParentProps:Boolean);//005531F8
    procedure SetParentChart(Value:TCustomAxisPanel);//00553314
    //function AssociatedToAxis(Axis:TCustomChartAxis):?;//00553350
    procedure CalcCircledRatio;//005533D0
    procedure AdjustCircleMarks;//00553510
    procedure DoBeforeDrawValues;//005535D0
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);//00553774
    procedure Assign(Source:TPersistent);//00553880
    procedure SetActive(Value:Boolean);//005538E4
    procedure Assign(Source:TPersistent);//005539C4
    constructor Create(AOwner:TComponent);//00553A3C
    destructor Destroy;//00553AFC
    function CalcXPos(ValueIndex:Integer):Integer;//00553B60
    //function sub_00553BA0:?;//00553BA0
    procedure ClearLists;//00553BA8
    procedure PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);//00553BC4
    procedure DrawAllValues;//00553BFC
    procedure FillSampleValues(NumValues:Integer);//00553C10
    function Clicked(x:Integer; y:Integer):Integer;//00553D58
    function CountLegendItems:Integer;//00553D80
    function LegendToValueIndex(LegendIndex:Integer):Integer;//00553DBC
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//00554004
    function GetAngleSlice(Index:Integer):Double;//00554180
    function CompareSliceAngle(A:Integer; B:Integer):Integer;//00554224
    procedure SortSlices(l:Integer; r:Integer);//00554280
    procedure DrawAllValues;//00554350
    procedure DrawPie(ValueIndex:Integer);//0055452C
    procedure DrawValue(ValueIndex:Integer);//00554860
    function GetEditorClass:AnsiString;//005548DC
    function MaxXValue:Double;//0055492C
    function MinXValue:Double;//00554948
    function MaxYValue:Double;//00554964
    function MinYValue:Double;//00554980
    procedure DrawAllValues;//0055499C
    procedure PrepareForGallery(IsEnabled:Boolean);//005549C8
    procedure Assign(Source:TPersistent);//00554A1C
    procedure DoBeforeDrawChart;//00554A94
    procedure SwapValueIndex(a:Integer; b:Integer);//00554C1C
    constructor Create(AOwner:TComponent);//00554C68
    destructor Destroy;//00554CC0
    procedure NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer);//00554D18
    function GetEditorClass:AnsiString;//00554DD0
    procedure GalleryChanged3D(Is3D:Boolean);//00554E04
    procedure GalleryChanged3D(Is3D:Boolean);//00554E34
    procedure DrawValue(ValueIndex:Integer);//00554E48
    procedure SetSeriesColor(AColor:TColor);//00554F7C
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect);//00554F9C
    procedure Assign(Source:TPersistent);//00554FC8
    function Clicked(x:Integer; y:Integer):Integer;//0055500C
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//005550F8
    procedure RegisterStandardSeries;//00555118
    procedure _NF__5B4;//005552A0
    procedure Finalization;//005552E4

implementation

//0054E7D4
constructor TSeriesPointer.Create(AOwner:TChartSeries);
begin
{*
 0054E7D4    push        ebx
 0054E7D5    push        esi
 0054E7D6    push        edi
 0054E7D7    test        dl,dl
>0054E7D9    je          0054E7E3
 0054E7DB    add         esp,0FFFFFFF0
 0054E7DE    call        @ClassCreate
 0054E7E3    mov         esi,ecx
 0054E7E5    mov         ebx,edx
 0054E7E7    mov         edi,eax
 0054E7E9    xor         edx,edx
 0054E7EB    mov         eax,edi
 0054E7ED    call        TObject.Create
 0054E7F2    mov         byte ptr [edi+25],1
 0054E7F6    mov         dword ptr [edi+14],esi
 0054E7F9    mov         byte ptr [edi+10],1
 0054E7FD    mov         byte ptr [edi+24],1
 0054E801    mov         dword ptr [edi+0C],4
 0054E808    mov         dword ptr [edi+20],4
 0054E80F    mov         byte ptr [edi+4],1
 0054E813    mov         byte ptr [edi+5],1
 0054E817    mov         byte ptr [edi+1C],0
 0054E81B    mov         eax,dword ptr [edi+14]
 0054E81E    call        TChartSeries.CreateChartPen
 0054E823    mov         dword ptr [edi+18],eax
 0054E826    mov         eax,dword ptr [edi+14]
 0054E829    push        eax
 0054E82A    mov         eax,dword ptr [eax]
 0054E82C    mov         eax,dword ptr [eax+144]
 0054E832    push        eax
 0054E833    mov         dl,1
 0054E835    mov         eax,[00555FDC];TChartBrush
 0054E83A    call        TChartBrush.Create
 0054E83F    mov         dword ptr [edi+8],eax
 0054E842    mov         eax,edi
 0054E844    test        bl,bl
>0054E846    je          0054E857
 0054E848    call        @AfterConstruction
 0054E84D    pop         dword ptr fs:[0]
 0054E854    add         esp,0C
 0054E857    mov         eax,edi
 0054E859    pop         edi
 0054E85A    pop         esi
 0054E85B    pop         ebx
 0054E85C    ret
*}
end;

//0054E860
destructor TSeriesPointer.Destroy;
begin
{*
 0054E860    push        ebx
 0054E861    push        esi
 0054E862    call        @BeforeDestruction
 0054E867    mov         ebx,edx
 0054E869    mov         esi,eax
 0054E86B    mov         eax,dword ptr [esi+18]
 0054E86E    call        TObject.Free
 0054E873    mov         eax,dword ptr [esi+8]
 0054E876    call        TObject.Free
 0054E87B    mov         edx,ebx
 0054E87D    and         dl,0FC
 0054E880    mov         eax,esi
 0054E882    call        TPersistent.Destroy
 0054E887    test        bl,bl
>0054E889    jle         0054E892
 0054E88B    mov         eax,esi
 0054E88D    call        @ClassDestroy
 0054E892    pop         esi
 0054E893    pop         ebx
 0054E894    ret
*}
end;

//0054E898
procedure TSeriesPointer.SetBooleanProperty(var Variable:Boolean; Value:Boolean);
begin
{*
 0054E898    mov         eax,dword ptr [eax+14]
 0054E89B    call        TChartSeries.SetBooleanProperty
 0054E8A0    ret
*}
end;

//0054E8A4
procedure TSeriesPointer.SetIntegerProperty(var Variable:Integer; Value:Integer);
begin
{*
 0054E8A4    mov         eax,dword ptr [eax+14]
 0054E8A7    call        TChartSeries.SetIntegerProperty
 0054E8AC    ret
*}
end;

//0054E8B0
procedure TSeriesPointer.CheckPointerSize(Value:Integer);
begin
{*
 0054E8B0    push        ebp
 0054E8B1    mov         ebp,esp
 0054E8B3    push        0
 0054E8B5    xor         eax,eax
 0054E8B7    push        ebp
 0054E8B8    push        54E8FD
 0054E8BD    push        dword ptr fs:[eax]
 0054E8C0    mov         dword ptr fs:[eax],esp
 0054E8C3    dec         edx
>0054E8C4    jge         0054E8E7
 0054E8C6    lea         edx,[ebp-4]
 0054E8C9    mov         eax,[006E9DA8]
 0054E8CE    call        LoadResString
 0054E8D3    mov         ecx,dword ptr [ebp-4]
 0054E8D6    mov         dl,1
 0054E8D8    mov         eax,[00567B78];ChartException
 0054E8DD    call        Exception.Create
 0054E8E2    call        @RaiseExcept
 0054E8E7    xor         eax,eax
 0054E8E9    pop         edx
 0054E8EA    pop         ecx
 0054E8EB    pop         ecx
 0054E8EC    mov         dword ptr fs:[eax],edx
 0054E8EF    push        54E904
 0054E8F4    lea         eax,[ebp-4]
 0054E8F7    call        @LStrClr
 0054E8FC    ret
>0054E8FD    jmp         @HandleFinally
>0054E902    jmp         0054E8F4
 0054E904    pop         ecx
 0054E905    pop         ebp
 0054E906    ret
*}
end;

//0054E908
procedure TSeriesPointer.SetHorizSize(Value:Integer);
begin
{*
 0054E908    push        ebx
 0054E909    push        esi
 0054E90A    mov         esi,edx
 0054E90C    mov         ebx,eax
 0054E90E    mov         edx,esi
 0054E910    mov         eax,ebx
 0054E912    call        TSeriesPointer.CheckPointerSize
 0054E917    lea         edx,[ebx+0C]
 0054E91A    mov         ecx,esi
 0054E91C    mov         eax,ebx
 0054E91E    call        TSeriesPointer.SetBooleanProperty
 0054E923    pop         esi
 0054E924    pop         ebx
 0054E925    ret
*}
end;

//0054E928
procedure TSeriesPointer.SetInflateMargins(Value:Boolean);
begin
{*
 0054E928    lea         ecx,[eax+10];TSeriesPointer.InflateMargins:Boolean
 0054E92B    xchg        ecx,edx
 0054E92D    call        TSeriesPointer.SetIntegerProperty
 0054E932    ret
*}
end;

//0054E934
procedure TSeriesPointer.SetVertSize(Value:Integer);
begin
{*
 0054E934    push        ebx
 0054E935    push        esi
 0054E936    mov         esi,edx
 0054E938    mov         ebx,eax
 0054E93A    mov         edx,esi
 0054E93C    mov         eax,ebx
 0054E93E    call        TSeriesPointer.CheckPointerSize
 0054E943    lea         edx,[ebx+20]
 0054E946    mov         ecx,esi
 0054E948    mov         eax,ebx
 0054E94A    call        TSeriesPointer.SetBooleanProperty
 0054E94F    pop         esi
 0054E950    pop         ebx
 0054E951    ret
*}
end;

//0054E954
procedure TSeriesPointer.SetPen(Value:TChartPen);
begin
{*
 0054E954    mov         eax,dword ptr [eax+18]
 0054E957    mov         ecx,dword ptr [eax]
 0054E959    call        dword ptr [ecx+8]
 0054E95C    ret
*}
end;

//0054E960
procedure TSeriesPointer.SetBrush(Value:TChartBrush);
begin
{*
 0054E960    mov         eax,dword ptr [eax+8]
 0054E963    mov         ecx,dword ptr [eax]
 0054E965    call        dword ptr [ecx+8]
 0054E968    ret
*}
end;

//0054E96C
procedure TSeriesPointer.SetDark3D(Value:Boolean);
begin
{*
 0054E96C    lea         ecx,[eax+4];TSeriesPointer.Dark3D:Boolean
 0054E96F    xchg        ecx,edx
 0054E971    call        TSeriesPointer.SetIntegerProperty
 0054E976    ret
*}
end;

//0054E978
procedure TSeriesPointer.SetDraw3D(Value:Boolean);
begin
{*
 0054E978    lea         ecx,[eax+5];TSeriesPointer.Draw3D:Boolean
 0054E97B    xchg        ecx,edx
 0054E97D    call        TSeriesPointer.SetIntegerProperty
 0054E982    ret
*}
end;

//0054E984
procedure TSeriesPointer.CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);
begin
{*
 0054E984    push        ebx
 0054E985    push        esi
 0054E986    push        edi
 0054E987    mov         edi,ecx
 0054E989    mov         esi,edx
 0054E98B    mov         ebx,eax
 0054E98D    cmp         byte ptr [ebx+24],0
>0054E991    je          0054E9B3
 0054E993    cmp         byte ptr [ebx+10],0
>0054E997    je          0054E9B3
 0054E999    mov         edx,dword ptr [ebx+0C]
 0054E99C    inc         edx
 0054E99D    mov         eax,dword ptr [esi]
 0054E99F    call        0056EDD0
 0054E9A4    mov         dword ptr [esi],eax
 0054E9A6    mov         edx,dword ptr [ebx+0C]
 0054E9A9    inc         edx
 0054E9AA    mov         eax,dword ptr [edi]
 0054E9AC    call        0056EDD0
 0054E9B1    mov         dword ptr [edi],eax
 0054E9B3    pop         edi
 0054E9B4    pop         esi
 0054E9B5    pop         ebx
 0054E9B6    ret
*}
end;

//0054E9B8
procedure TSeriesPointer.CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);
begin
{*
 0054E9B8    push        ebx
 0054E9B9    push        esi
 0054E9BA    push        edi
 0054E9BB    mov         edi,ecx
 0054E9BD    mov         esi,edx
 0054E9BF    mov         ebx,eax
 0054E9C1    cmp         byte ptr [ebx+24],0
>0054E9C5    je          0054E9E7
 0054E9C7    cmp         byte ptr [ebx+10],0
>0054E9CB    je          0054E9E7
 0054E9CD    mov         edx,dword ptr [ebx+20]
 0054E9D0    inc         edx
 0054E9D1    mov         eax,dword ptr [esi]
 0054E9D3    call        0056EDD0
 0054E9D8    mov         dword ptr [esi],eax
 0054E9DA    mov         edx,dword ptr [ebx+20]
 0054E9DD    inc         edx
 0054E9DE    mov         eax,dword ptr [edi]
 0054E9E0    call        0056EDD0
 0054E9E5    mov         dword ptr [edi],eax
 0054E9E7    pop         edi
 0054E9E8    pop         esi
 0054E9E9    pop         ebx
 0054E9EA    ret
*}
end;

//0054E9EC
procedure TSeriesPointer.SetVisible(Value:Boolean);
begin
{*
 0054E9EC    lea         ecx,[eax+24]
 0054E9EF    xchg        ecx,edx
 0054E9F1    call        TSeriesPointer.SetIntegerProperty
 0054E9F6    ret
*}
end;

//0054E9F8
procedure TSeriesPointer.SetStyle(Value:TSeriesPointerStyle);
begin
{*
 0054E9F8    cmp         dl,byte ptr [eax+1C]
>0054E9FB    je          0054EA08
 0054E9FD    mov         byte ptr [eax+1C],dl
 0054EA00    mov         eax,dword ptr [eax+14]
 0054EA03    call        TChartSeries.Repaint
 0054EA08    ret
*}
end;

//0054EA0C
procedure TSeriesPointer.PrepareCanvas(ColorValue:TColor);
begin
{*
 0054EA0C    push        ebx
 0054EA0D    push        esi
 0054EA0E    push        edi
 0054EA0F    push        ebp
 0054EA10    mov         ebp,edx
 0054EA12    mov         ebx,eax
 0054EA14    mov         eax,dword ptr [ebx+14]
 0054EA17    mov         eax,dword ptr [eax+68]
 0054EA1A    mov         esi,dword ptr [eax+280]
 0054EA20    mov         edx,dword ptr [ebx+18]
 0054EA23    mov         eax,esi
 0054EA25    call        TTeeCanvas.AssignVisiblePen
 0054EA2A    mov         edi,dword ptr [ebx+18]
 0054EA2D    cmp         byte ptr [edi+21],0
>0054EA31    je          0054EA4B
 0054EA33    mov         eax,edi
 0054EA35    call        TPen.GetColor
 0054EA3A    cmp         eax,20000000
>0054EA3F    jne         0054EA4B
 0054EA41    mov         edx,ebp
 0054EA43    mov         eax,dword ptr [esi+0C]
 0054EA46    call        TPen.SetColor
 0054EA4B    mov         edx,dword ptr [ebx+8]
 0054EA4E    mov         eax,dword ptr [esi+10]
 0054EA51    mov         ecx,dword ptr [eax]
 0054EA53    call        dword ptr [ecx+8]
 0054EA56    mov         eax,dword ptr [esi+10]
 0054EA59    call        TBrush.GetColor
 0054EA5E    cmp         eax,20000000
>0054EA63    jne         0054EA6F
 0054EA65    mov         edx,ebp
 0054EA67    mov         eax,dword ptr [esi+10]
 0054EA6A    call        TBrush.SetColor
 0054EA6F    pop         ebp
 0054EA70    pop         edi
 0054EA71    pop         esi
 0054EA72    pop         ebx
 0054EA73    ret
*}
end;

//0054EA74
procedure DrawDiagonalCross;
begin
{*
 0054EA74    push        ebp
 0054EA75    mov         ebp,esp
 0054EA77    push        ebx
 0054EA78    push        esi
 0054EA79    push        edi
 0054EA7A    mov         eax,dword ptr [ebp+8]
 0054EA7D    mov         eax,dword ptr [eax-4]
 0054EA80    mov         ebx,dword ptr [eax+14]
 0054EA83    mov         eax,dword ptr [ebx+68]
 0054EA86    mov         esi,dword ptr [eax+280]
 0054EA8C    mov         eax,dword ptr [ebp+8]
 0054EA8F    mov         edx,dword ptr [eax+0C]
 0054EA92    mov         eax,dword ptr [esi+0C]
 0054EA95    call        TPen.SetColor
 0054EA9A    mov         eax,dword ptr [ebp+8]
 0054EA9D    cmp         byte ptr [eax-5],0
>0054EAA1    je          0054EAFF
 0054EAA3    mov         eax,dword ptr [ebp+8]
 0054EAA6    mov         eax,dword ptr [eax-14]
 0054EAA9    inc         eax
 0054EAAA    push        eax
 0054EAAB    mov         eax,dword ptr [ebp+8]
 0054EAAE    mov         eax,dword ptr [eax-18]
 0054EAB1    inc         eax
 0054EAB2    push        eax
 0054EAB3    mov         eax,dword ptr [ebx+0FC]
 0054EAB9    push        eax
 0054EABA    mov         eax,dword ptr [ebp+8]
 0054EABD    mov         ecx,dword ptr [eax-10]
 0054EAC0    mov         eax,dword ptr [ebp+8]
 0054EAC3    mov         edx,dword ptr [eax-0C]
 0054EAC6    mov         eax,esi
 0054EAC8    mov         edi,dword ptr [eax]
 0054EACA    call        dword ptr [edi+0E8]
 0054EAD0    mov         eax,dword ptr [ebp+8]
 0054EAD3    mov         eax,dword ptr [eax-0C]
 0054EAD6    dec         eax
 0054EAD7    push        eax
 0054EAD8    mov         eax,dword ptr [ebp+8]
 0054EADB    mov         eax,dword ptr [eax-18]
 0054EADE    inc         eax
 0054EADF    push        eax
 0054EAE0    mov         eax,dword ptr [ebx+0FC]
 0054EAE6    push        eax
 0054EAE7    mov         eax,dword ptr [ebp+8]
 0054EAEA    mov         ecx,dword ptr [eax-10]
 0054EAED    mov         eax,dword ptr [ebp+8]
 0054EAF0    mov         edx,dword ptr [eax-14]
 0054EAF3    mov         eax,esi
 0054EAF5    mov         ebx,dword ptr [eax]
 0054EAF7    call        dword ptr [ebx+0E8]
>0054EAFD    jmp         0054EB4B
 0054EAFF    mov         eax,dword ptr [ebp+8]
 0054EB02    mov         eax,dword ptr [eax-14]
 0054EB05    inc         eax
 0054EB06    push        eax
 0054EB07    mov         eax,dword ptr [ebp+8]
 0054EB0A    mov         eax,dword ptr [eax-18]
 0054EB0D    inc         eax
 0054EB0E    push        eax
 0054EB0F    mov         eax,dword ptr [ebp+8]
 0054EB12    mov         ecx,dword ptr [eax-10]
 0054EB15    mov         eax,dword ptr [ebp+8]
 0054EB18    mov         edx,dword ptr [eax-0C]
 0054EB1B    mov         eax,esi
 0054EB1D    mov         ebx,dword ptr [eax]
 0054EB1F    call        dword ptr [ebx+84]
 0054EB25    mov         eax,dword ptr [ebp+8]
 0054EB28    mov         eax,dword ptr [eax-0C]
 0054EB2B    dec         eax
 0054EB2C    push        eax
 0054EB2D    mov         eax,dword ptr [ebp+8]
 0054EB30    mov         eax,dword ptr [eax-18]
 0054EB33    inc         eax
 0054EB34    push        eax
 0054EB35    mov         eax,dword ptr [ebp+8]
 0054EB38    mov         ecx,dword ptr [eax-10]
 0054EB3B    mov         eax,dword ptr [ebp+8]
 0054EB3E    mov         edx,dword ptr [eax-14]
 0054EB41    mov         eax,esi
 0054EB43    mov         ebx,dword ptr [eax]
 0054EB45    call        dword ptr [ebx+84]
 0054EB4B    pop         edi
 0054EB4C    pop         esi
 0054EB4D    pop         ebx
 0054EB4E    pop         ebp
 0054EB4F    ret
*}
end;

//0054EB50
procedure DrawCross;
begin
{*
 0054EB50    push        ebp
 0054EB51    mov         ebp,esp
 0054EB53    push        ebx
 0054EB54    push        esi
 0054EB55    push        edi
 0054EB56    mov         eax,dword ptr [ebp+8]
 0054EB59    mov         eax,dword ptr [eax-4]
 0054EB5C    mov         esi,dword ptr [eax+14]
 0054EB5F    mov         eax,dword ptr [esi+68]
 0054EB62    mov         ebx,dword ptr [eax+280]
 0054EB68    mov         eax,dword ptr [ebp+8]
 0054EB6B    mov         edx,dword ptr [eax+0C]
 0054EB6E    mov         eax,dword ptr [ebx+0C]
 0054EB71    call        TPen.SetColor
 0054EB76    mov         eax,dword ptr [ebp+8]
 0054EB79    cmp         byte ptr [eax-5],0
>0054EB7D    je          0054EBCB
 0054EB7F    mov         eax,dword ptr [ebp+8]
 0054EB82    mov         eax,dword ptr [eax-18]
 0054EB85    inc         eax
 0054EB86    push        eax
 0054EB87    mov         eax,dword ptr [esi+0FC]
 0054EB8D    push        eax
 0054EB8E    mov         eax,dword ptr [ebp+8]
 0054EB91    mov         ecx,dword ptr [eax-10]
 0054EB94    mov         eax,dword ptr [ebp+8]
 0054EB97    mov         edx,dword ptr [eax-1C]
 0054EB9A    mov         eax,ebx
 0054EB9C    mov         edi,dword ptr [eax]
 0054EB9E    call        dword ptr [edi+0D4]
 0054EBA4    mov         eax,dword ptr [ebp+8]
 0054EBA7    mov         eax,dword ptr [eax+18]
 0054EBAA    push        eax
 0054EBAB    mov         eax,dword ptr [esi+0FC]
 0054EBB1    push        eax
 0054EBB2    mov         eax,dword ptr [ebp+8]
 0054EBB5    mov         ecx,dword ptr [eax-14]
 0054EBB8    inc         ecx
 0054EBB9    mov         eax,dword ptr [ebp+8]
 0054EBBC    mov         edx,dword ptr [eax-0C]
 0054EBBF    mov         eax,ebx
 0054EBC1    mov         ebx,dword ptr [eax]
 0054EBC3    call        dword ptr [ebx+0D0]
>0054EBC9    jmp         0054EC01
 0054EBCB    mov         eax,dword ptr [ebp+8]
 0054EBCE    mov         eax,dword ptr [eax-18]
 0054EBD1    inc         eax
 0054EBD2    push        eax
 0054EBD3    mov         eax,dword ptr [ebp+8]
 0054EBD6    mov         ecx,dword ptr [eax-10]
 0054EBD9    mov         eax,dword ptr [ebp+8]
 0054EBDC    mov         edx,dword ptr [eax-1C]
 0054EBDF    mov         eax,ebx
 0054EBE1    mov         esi,dword ptr [eax]
 0054EBE3    call        dword ptr [esi+74]
 0054EBE6    mov         eax,dword ptr [ebp+8]
 0054EBE9    mov         eax,dword ptr [eax+18]
 0054EBEC    push        eax
 0054EBED    mov         eax,dword ptr [ebp+8]
 0054EBF0    mov         ecx,dword ptr [eax-14]
 0054EBF3    inc         ecx
 0054EBF4    mov         eax,dword ptr [ebp+8]
 0054EBF7    mov         edx,dword ptr [eax-0C]
 0054EBFA    mov         eax,ebx
 0054EBFC    mov         ebx,dword ptr [eax]
 0054EBFE    call        dword ptr [ebx+6C]
 0054EC01    pop         edi
 0054EC02    pop         esi
 0054EC03    pop         ebx
 0054EC04    pop         ebp
 0054EC05    ret
*}
end;

//0054EC08
procedure DoTriangle3D(DeltaY:Integer);
begin
{*
 0054EC08    push        ebp
 0054EC09    mov         ebp,esp
 0054EC0B    add         esp,0FFFFFFE8
 0054EC0E    push        ebx
 0054EC0F    push        esi
 0054EC10    push        edi
 0054EC11    mov         esi,eax
 0054EC13    mov         eax,dword ptr [ebp+8]
 0054EC16    mov         eax,dword ptr [eax-4]
 0054EC19    mov         ebx,dword ptr [eax+14]
 0054EC1C    mov         eax,dword ptr [ebx+68]
 0054EC1F    mov         edi,dword ptr [eax+280]
 0054EC25    mov         eax,dword ptr [ebp+8]
 0054EC28    mov         eax,dword ptr [eax-4]
 0054EC2B    cmp         byte ptr [eax+5],0
>0054EC2F    je          0054EC74
 0054EC31    mov         eax,dword ptr [ebp+8]
 0054EC34    mov         eax,dword ptr [eax+18]
 0054EC37    sub         eax,esi
 0054EC39    push        eax
 0054EC3A    mov         eax,dword ptr [ebp+8]
 0054EC3D    mov         eax,dword ptr [eax-14]
 0054EC40    push        eax
 0054EC41    mov         eax,dword ptr [ebp+8]
 0054EC44    add         esi,dword ptr [eax+18]
 0054EC47    push        esi
 0054EC48    mov         eax,dword ptr [ebx+0FC]
 0054EC4E    push        eax
 0054EC4F    mov         eax,dword ptr [ebx+104]
 0054EC55    push        eax
 0054EC56    mov         eax,dword ptr [ebp+8]
 0054EC59    mov         eax,dword ptr [eax-4]
 0054EC5C    mov         al,byte ptr [eax+4]
 0054EC5F    push        eax
 0054EC60    mov         eax,dword ptr [ebp+8]
 0054EC63    mov         ecx,dword ptr [eax-0C]
 0054EC66    mov         dl,1
 0054EC68    mov         eax,edi
 0054EC6A    mov         ebx,dword ptr [eax]
 0054EC6C    call        dword ptr [ebx+108]
>0054EC72    jmp         0054ECD3
 0054EC74    lea         ecx,[ebp-8]
 0054EC77    mov         eax,dword ptr [ebp+8]
 0054EC7A    mov         edx,dword ptr [eax+18]
 0054EC7D    sub         edx,esi
 0054EC7F    mov         eax,dword ptr [ebp+8]
 0054EC82    mov         eax,dword ptr [eax-1C]
 0054EC85    call        Point
 0054EC8A    lea         eax,[ebp-8]
 0054EC8D    push        eax
 0054EC8E    mov         eax,dword ptr [ebx+0FC]
 0054EC94    push        eax
 0054EC95    lea         ecx,[ebp-10]
 0054EC98    mov         eax,dword ptr [ebp+8]
 0054EC9B    mov         edx,dword ptr [eax+18]
 0054EC9E    add         edx,esi
 0054ECA0    mov         eax,dword ptr [ebp+8]
 0054ECA3    mov         eax,dword ptr [eax-14]
 0054ECA6    call        Point
 0054ECAB    lea         eax,[ebp-10]
 0054ECAE    push        eax
 0054ECAF    lea         ecx,[ebp-18]
 0054ECB2    mov         eax,dword ptr [ebp+8]
 0054ECB5    mov         edx,dword ptr [eax+18]
 0054ECB8    add         edx,esi
 0054ECBA    mov         eax,dword ptr [ebp+8]
 0054ECBD    mov         eax,dword ptr [eax-0C]
 0054ECC0    call        Point
 0054ECC5    lea         edx,[ebp-18]
 0054ECC8    mov         eax,edi
 0054ECCA    pop         ecx
 0054ECCB    mov         ebx,dword ptr [eax]
 0054ECCD    call        dword ptr [ebx+12C]
 0054ECD3    pop         edi
 0054ECD4    pop         esi
 0054ECD5    pop         ebx
 0054ECD6    mov         esp,ebp
 0054ECD8    pop         ebp
 0054ECD9    ret
*}
end;

//0054ECDC
procedure TSeriesPointer.DrawPointer(Is3D:Boolean; px:Integer; py:Integer; tmpHoriz:Integer; tmpVert:Integer; ColorValue:TColor; AStyle:TSeriesPointerStyle);
begin
{*
 0054ECDC    push        ebp
 0054ECDD    mov         ebp,esp
 0054ECDF    add         esp,0FFFFFF74
 0054ECE5    push        ebx
 0054ECE6    push        esi
 0054ECE7    push        edi
 0054ECE8    mov         dword ptr [ebp-1C],ecx
 0054ECEB    mov         byte ptr [ebp-5],dl
 0054ECEE    mov         dword ptr [ebp-4],eax
 0054ECF1    mov         edx,dword ptr [ebp+8]
 0054ECF4    mov         eax,dword ptr [ebp+10]
 0054ECF7    mov         edi,dword ptr [ebp+14]
 0054ECFA    mov         ecx,dword ptr [ebp-1C]
 0054ECFD    sub         ecx,edi
 0054ECFF    mov         dword ptr [ebp-0C],ecx
 0054ED02    mov         ecx,dword ptr [ebp-1C]
 0054ED05    add         ecx,edi
 0054ED07    mov         dword ptr [ebp-14],ecx
 0054ED0A    mov         ecx,dword ptr [ebp+18]
 0054ED0D    sub         ecx,eax
 0054ED0F    mov         dword ptr [ebp-10],ecx
 0054ED12    mov         ecx,dword ptr [ebp+18]
 0054ED15    add         ecx,eax
 0054ED17    mov         dword ptr [ebp-18],ecx
 0054ED1A    mov         ecx,dword ptr [ebp-4]
 0054ED1D    mov         esi,dword ptr [ecx+14]
 0054ED20    mov         ecx,dword ptr [esi+68]
 0054ED23    mov         ecx,dword ptr [ecx+280]
 0054ED29    mov         dword ptr [ebp-20],ecx
 0054ED2C    cmp         byte ptr [ebp-5],0
>0054ED30    je          0054EF06
 0054ED36    and         edx,7F
 0054ED39    cmp         edx,8
>0054ED3C    ja          0054F108
 0054ED42    jmp         dword ptr [edx*4+54ED49]
 0054ED42    dd          0054ED6D
 0054ED42    dd          0054EDDA
 0054ED42    dd          0054EE41
 0054ED42    dd          0054EE4D
 0054ED42    dd          0054EE5B
 0054ED42    dd          0054EE67
 0054ED42    dd          0054EE73
 0054ED42    dd          0054EE86
 0054ED42    dd          0054EEE5
 0054ED6D    mov         eax,dword ptr [ebp-4]
 0054ED70    cmp         byte ptr [eax+5],0
>0054ED74    je          0054EDA9
 0054ED76    mov         eax,dword ptr [ebp-10]
 0054ED79    push        eax
 0054ED7A    mov         eax,dword ptr [ebp-18]
 0054ED7D    push        eax
 0054ED7E    mov         eax,dword ptr [esi+0FC]
 0054ED84    push        eax
 0054ED85    mov         eax,dword ptr [esi+104]
 0054ED8B    push        eax
 0054ED8C    mov         eax,dword ptr [ebp-4]
 0054ED8F    mov         al,byte ptr [eax+4]
 0054ED92    push        eax
 0054ED93    mov         ecx,dword ptr [ebp-14]
 0054ED96    mov         edx,dword ptr [ebp-0C]
 0054ED99    mov         eax,dword ptr [ebp-20]
 0054ED9C    mov         ebx,dword ptr [eax]
 0054ED9E    call        dword ptr [ebx+0C8]
>0054EDA4    jmp         0054F108
 0054EDA9    mov         eax,dword ptr [ebp-18]
 0054EDAC    inc         eax
 0054EDAD    push        eax
 0054EDAE    lea         eax,[ebp-30]
 0054EDB1    push        eax
 0054EDB2    mov         ecx,dword ptr [ebp-14]
 0054EDB5    inc         ecx
 0054EDB6    mov         edx,dword ptr [ebp-10]
 0054EDB9    mov         eax,dword ptr [ebp-0C]
 0054EDBC    call        Rect
 0054EDC1    lea         edx,[ebp-30]
 0054EDC4    mov         ecx,dword ptr [esi+0FC]
 0054EDCA    mov         eax,dword ptr [ebp-20]
 0054EDCD    mov         ebx,dword ptr [eax]
 0054EDCF    call        dword ptr [ebx+10C]
>0054EDD5    jmp         0054F108
 0054EDDA    mov         eax,dword ptr [ebp-4]
 0054EDDD    cmp         byte ptr [eax+5],0
>0054EDE1    je          0054EE1C
 0054EDE3    mov         eax,dword ptr [ebp-20]
 0054EDE6    mov         edx,dword ptr [eax]
 0054EDE8    call        dword ptr [edx+98]
 0054EDEE    test        al,al
>0054EDF0    je          0054EE1C
 0054EDF2    mov         eax,dword ptr [esi+100]
 0054EDF8    push        eax
 0054EDF9    mov         dword ptr [ebp-34],edi
 0054EDFC    fild        dword ptr [ebp-34]
 0054EDFF    add         esp,0FFFFFFF8
 0054EE02    fstp        qword ptr [esp]
 0054EE05    wait
 0054EE06    mov         ecx,dword ptr [ebp+18]
 0054EE09    mov         edx,dword ptr [ebp-1C]
 0054EE0C    mov         eax,dword ptr [ebp-20]
 0054EE0F    mov         ebx,dword ptr [eax]
 0054EE11    call        dword ptr [ebx+11C]
>0054EE17    jmp         0054F108
 0054EE1C    mov         eax,dword ptr [ebp-14]
 0054EE1F    push        eax
 0054EE20    mov         eax,dword ptr [ebp-18]
 0054EE23    push        eax
 0054EE24    mov         eax,dword ptr [esi+0FC]
 0054EE2A    push        eax
 0054EE2B    mov         ecx,dword ptr [ebp-10]
 0054EE2E    mov         edx,dword ptr [ebp-0C]
 0054EE31    mov         eax,dword ptr [ebp-20]
 0054EE34    mov         ebx,dword ptr [eax]
 0054EE36    call        dword ptr [ebx+0DC]
>0054EE3C    jmp         0054F108
 0054EE41    push        ebp
 0054EE42    call        DoTriangle3D
 0054EE47    pop         ecx
>0054EE48    jmp         0054F108
 0054EE4D    push        ebp
 0054EE4E    neg         eax
 0054EE50    call        DoTriangle3D
 0054EE55    pop         ecx
>0054EE56    jmp         0054F108
 0054EE5B    push        ebp
 0054EE5C    call        DrawCross
 0054EE61    pop         ecx
>0054EE62    jmp         0054F108
 0054EE67    push        ebp
 0054EE68    call        DrawDiagonalCross
 0054EE6D    pop         ecx
>0054EE6E    jmp         0054F108
 0054EE73    push        ebp
 0054EE74    call        DrawCross
 0054EE79    pop         ecx
 0054EE7A    push        ebp
 0054EE7B    call        DrawDiagonalCross
 0054EE80    pop         ecx
>0054EE81    jmp         0054F108
 0054EE86    lea         ecx,[ebp-3C]
 0054EE89    mov         edx,dword ptr [ebp+18]
 0054EE8C    mov         eax,dword ptr [ebp-14]
 0054EE8F    call        Point
 0054EE94    lea         eax,[ebp-3C]
 0054EE97    push        eax
 0054EE98    lea         ecx,[ebp-44]
 0054EE9B    mov         edx,dword ptr [ebp-18]
 0054EE9E    mov         eax,dword ptr [ebp-1C]
 0054EEA1    call        Point
 0054EEA6    lea         eax,[ebp-44]
 0054EEA9    push        eax
 0054EEAA    mov         eax,dword ptr [esi+0FC]
 0054EEB0    push        eax
 0054EEB1    lea         ecx,[ebp-4C]
 0054EEB4    mov         edx,dword ptr [ebp-10]
 0054EEB7    mov         eax,dword ptr [ebp-1C]
 0054EEBA    call        Point
 0054EEBF    lea         eax,[ebp-4C]
 0054EEC2    push        eax
 0054EEC3    lea         ecx,[ebp-54]
 0054EEC6    mov         edx,dword ptr [ebp+18]
 0054EEC9    mov         eax,dword ptr [ebp-0C]
 0054EECC    call        Point
 0054EED1    lea         edx,[ebp-54]
 0054EED4    mov         eax,dword ptr [ebp-20]
 0054EED7    pop         ecx
 0054EED8    mov         ebx,dword ptr [eax]
 0054EEDA    call        dword ptr [ebx+0FC]
>0054EEE0    jmp         0054F108
 0054EEE5    mov         eax,dword ptr [esi+100]
 0054EEEB    push        eax
 0054EEEC    mov         eax,dword ptr [ebp+0C]
 0054EEEF    push        eax
 0054EEF0    mov         ecx,dword ptr [ebp+18]
 0054EEF3    mov         edx,dword ptr [ebp-1C]
 0054EEF6    mov         eax,dword ptr [ebp-20]
 0054EEF9    mov         ebx,dword ptr [eax]
 0054EEFB    call        dword ptr [ebx+94]
>0054EF01    jmp         0054F108
 0054EF06    xor         eax,eax
 0054EF08    mov         al,dl
 0054EF0A    cmp         eax,8
>0054EF0D    ja          0054F108
 0054EF13    jmp         dword ptr [eax*4+54EF1A]
 0054EF13    dd          0054EF3E
 0054EF13    dd          0054EF5B
 0054EF13    dd          0054EF76
 0054EF13    dd          0054EFDC
 0054EF13    dd          0054F042
 0054EF13    dd          0054F04E
 0054EF13    dd          0054F05A
 0054EF13    dd          0054F06D
 0054EF13    dd          0054F0F6
 0054EF3E    mov         eax,dword ptr [ebp-14]
 0054EF41    inc         eax
 0054EF42    push        eax
 0054EF43    mov         eax,dword ptr [ebp-18]
 0054EF46    inc         eax
 0054EF47    push        eax
 0054EF48    mov         ecx,dword ptr [ebp-10]
 0054EF4B    mov         edx,dword ptr [ebp-0C]
 0054EF4E    mov         eax,dword ptr [ebp-20]
 0054EF51    mov         ebx,dword ptr [eax]
 0054EF53    call        dword ptr [ebx+50]
>0054EF56    jmp         0054F108
 0054EF5B    mov         eax,dword ptr [ebp-14]
 0054EF5E    push        eax
 0054EF5F    mov         eax,dword ptr [ebp-18]
 0054EF62    push        eax
 0054EF63    mov         ecx,dword ptr [ebp-10]
 0054EF66    mov         edx,dword ptr [ebp-0C]
 0054EF69    mov         eax,dword ptr [ebp-20]
 0054EF6C    mov         ebx,dword ptr [eax]
 0054EF6E    call        dword ptr [ebx+38]
>0054EF71    jmp         0054F108
 0054EF76    lea         ecx,[ebp-3C]
 0054EF79    mov         edx,dword ptr [ebp-18]
 0054EF7C    mov         eax,dword ptr [ebp-0C]
 0054EF7F    call        Point
 0054EF84    mov         eax,dword ptr [ebp-3C]
 0054EF87    mov         dword ptr [ebp-6C],eax
 0054EF8A    mov         eax,dword ptr [ebp-38]
 0054EF8D    mov         dword ptr [ebp-68],eax
 0054EF90    lea         ecx,[ebp-44]
 0054EF93    mov         edx,dword ptr [ebp-18]
 0054EF96    mov         eax,dword ptr [ebp-14]
 0054EF99    call        Point
 0054EF9E    mov         eax,dword ptr [ebp-44]
 0054EFA1    mov         dword ptr [ebp-64],eax
 0054EFA4    mov         eax,dword ptr [ebp-40]
 0054EFA7    mov         dword ptr [ebp-60],eax
 0054EFAA    lea         ecx,[ebp-4C]
 0054EFAD    mov         edx,dword ptr [ebp-10]
 0054EFB0    mov         eax,dword ptr [ebp-1C]
 0054EFB3    call        Point
 0054EFB8    mov         eax,dword ptr [ebp-4C]
 0054EFBB    mov         dword ptr [ebp-5C],eax
 0054EFBE    mov         eax,dword ptr [ebp-48]
 0054EFC1    mov         dword ptr [ebp-58],eax
 0054EFC4    lea         edx,[ebp-6C]
 0054EFC7    mov         ecx,2
 0054EFCC    mov         eax,dword ptr [ebp-20]
 0054EFCF    mov         ebx,dword ptr [eax]
 0054EFD1    call        dword ptr [ebx+88]
>0054EFD7    jmp         0054F108
 0054EFDC    lea         ecx,[ebp-3C]
 0054EFDF    mov         edx,dword ptr [ebp-10]
 0054EFE2    mov         eax,dword ptr [ebp-0C]
 0054EFE5    call        Point
 0054EFEA    mov         eax,dword ptr [ebp-3C]
 0054EFED    mov         dword ptr [ebp-6C],eax
 0054EFF0    mov         eax,dword ptr [ebp-38]
 0054EFF3    mov         dword ptr [ebp-68],eax
 0054EFF6    lea         ecx,[ebp-44]
 0054EFF9    mov         edx,dword ptr [ebp-10]
 0054EFFC    mov         eax,dword ptr [ebp-14]
 0054EFFF    call        Point
 0054F004    mov         eax,dword ptr [ebp-44]
 0054F007    mov         dword ptr [ebp-64],eax
 0054F00A    mov         eax,dword ptr [ebp-40]
 0054F00D    mov         dword ptr [ebp-60],eax
 0054F010    lea         ecx,[ebp-4C]
 0054F013    mov         edx,dword ptr [ebp-18]
 0054F016    mov         eax,dword ptr [ebp-1C]
 0054F019    call        Point
 0054F01E    mov         eax,dword ptr [ebp-4C]
 0054F021    mov         dword ptr [ebp-5C],eax
 0054F024    mov         eax,dword ptr [ebp-48]
 0054F027    mov         dword ptr [ebp-58],eax
 0054F02A    lea         edx,[ebp-6C]
 0054F02D    mov         ecx,2
 0054F032    mov         eax,dword ptr [ebp-20]
 0054F035    mov         ebx,dword ptr [eax]
 0054F037    call        dword ptr [ebx+88]
>0054F03D    jmp         0054F108
 0054F042    push        ebp
 0054F043    call        DrawCross
 0054F048    pop         ecx
>0054F049    jmp         0054F108
 0054F04E    push        ebp
 0054F04F    call        DrawDiagonalCross
 0054F054    pop         ecx
>0054F055    jmp         0054F108
 0054F05A    push        ebp
 0054F05B    call        DrawCross
 0054F060    pop         ecx
 0054F061    push        ebp
 0054F062    call        DrawDiagonalCross
 0054F067    pop         ecx
>0054F068    jmp         0054F108
 0054F06D    lea         ecx,[ebp-3C]
 0054F070    mov         edx,dword ptr [ebp+18]
 0054F073    mov         eax,dword ptr [ebp-0C]
 0054F076    call        Point
 0054F07B    mov         eax,dword ptr [ebp-3C]
 0054F07E    mov         dword ptr [ebp-8C],eax
 0054F084    mov         eax,dword ptr [ebp-38]
 0054F087    mov         dword ptr [ebp-88],eax
 0054F08D    lea         ecx,[ebp-44]
 0054F090    mov         edx,dword ptr [ebp-10]
 0054F093    mov         eax,dword ptr [ebp-1C]
 0054F096    call        Point
 0054F09B    mov         eax,dword ptr [ebp-44]
 0054F09E    mov         dword ptr [ebp-84],eax
 0054F0A4    mov         eax,dword ptr [ebp-40]
 0054F0A7    mov         dword ptr [ebp-80],eax
 0054F0AA    lea         ecx,[ebp-4C]
 0054F0AD    mov         edx,dword ptr [ebp+18]
 0054F0B0    mov         eax,dword ptr [ebp-14]
 0054F0B3    call        Point
 0054F0B8    mov         eax,dword ptr [ebp-4C]
 0054F0BB    mov         dword ptr [ebp-7C],eax
 0054F0BE    mov         eax,dword ptr [ebp-48]
 0054F0C1    mov         dword ptr [ebp-78],eax
 0054F0C4    lea         ecx,[ebp-54]
 0054F0C7    mov         edx,dword ptr [ebp-18]
 0054F0CA    mov         eax,dword ptr [ebp-1C]
 0054F0CD    call        Point
 0054F0D2    mov         eax,dword ptr [ebp-54]
 0054F0D5    mov         dword ptr [ebp-74],eax
 0054F0D8    mov         eax,dword ptr [ebp-50]
 0054F0DB    mov         dword ptr [ebp-70],eax
 0054F0DE    lea         edx,[ebp-8C]
 0054F0E4    mov         ecx,3
 0054F0E9    mov         eax,dword ptr [ebp-20]
 0054F0EC    mov         ebx,dword ptr [eax]
 0054F0EE    call        dword ptr [ebx+88]
>0054F0F4    jmp         0054F108
 0054F0F6    mov         eax,dword ptr [ebp+0C]
 0054F0F9    push        eax
 0054F0FA    mov         ecx,dword ptr [ebp+18]
 0054F0FD    mov         edx,dword ptr [ebp-1C]
 0054F100    mov         eax,dword ptr [ebp-20]
 0054F103    mov         ebx,dword ptr [eax]
 0054F105    call        dword ptr [ebx+24]
 0054F108    pop         edi
 0054F109    pop         esi
 0054F10A    pop         ebx
 0054F10B    mov         esp,ebp
 0054F10D    pop         ebp
 0054F10E    ret         14
*}
end;

//0054F114
procedure TSeriesPointer.Draw(px:Integer; py:Integer; ColorValue:TColor; AStyle:TSeriesPointerStyle);
begin
{*
 0054F114    push        ebp
 0054F115    mov         ebp,esp
 0054F117    push        ecx
 0054F118    mov         ecx,dword ptr [eax+0C]
 0054F11B    push        ecx
 0054F11C    mov         ecx,dword ptr [eax+20]
 0054F11F    push        ecx
 0054F120    mov         ecx,dword ptr [ebp+0C]
 0054F123    push        ecx
 0054F124    mov         cl,byte ptr [ebp+8]
 0054F127    push        ecx
 0054F128    mov         ecx,dword ptr [eax+14]
 0054F12B    mov         ecx,dword ptr [ecx+68]
 0054F12E    mov         cl,byte ptr [ecx+270]
 0054F134    xchg        ecx,edx
 0054F136    call        TSeriesPointer.DrawPointer
 0054F13B    pop         ebp
 0054F13C    ret         8
*}
end;

//0054F140
procedure TSeriesPointer.Assign(Source:TPersistent);
begin
{*
 0054F140    push        ebx
 0054F141    push        esi
 0054F142    push        edi
 0054F143    mov         esi,edx
 0054F145    mov         ebx,eax
 0054F147    mov         eax,esi
 0054F149    mov         edx,dword ptr ds:[54C6D0];TSeriesPointer
 0054F14F    call        @IsClass
 0054F154    test        al,al
>0054F156    je          0054F19C
 0054F158    mov         edi,esi
 0054F15A    mov         edx,dword ptr [edi+8]
 0054F15D    mov         eax,dword ptr [ebx+8]
 0054F160    mov         ecx,dword ptr [eax]
 0054F162    call        dword ptr [ecx+8]
 0054F165    mov         al,byte ptr [edi+4]
 0054F168    mov         byte ptr [ebx+4],al
 0054F16B    mov         al,byte ptr [edi+5]
 0054F16E    mov         byte ptr [ebx+5],al
 0054F171    mov         eax,dword ptr [edi+0C]
 0054F174    mov         dword ptr [ebx+0C],eax
 0054F177    mov         al,byte ptr [edi+10]
 0054F17A    mov         byte ptr [ebx+10],al
 0054F17D    mov         edx,dword ptr [edi+18]
 0054F180    mov         eax,dword ptr [ebx+18]
 0054F183    mov         ecx,dword ptr [eax]
 0054F185    call        dword ptr [ecx+8]
 0054F188    mov         al,byte ptr [edi+1C]
 0054F18B    mov         byte ptr [ebx+1C],al
 0054F18E    mov         eax,dword ptr [edi+20]
 0054F191    mov         dword ptr [ebx+20],eax
 0054F194    mov         al,byte ptr [edi+24]
 0054F197    mov         byte ptr [ebx+24],al
>0054F19A    jmp         0054F1A5
 0054F19C    mov         edx,esi
 0054F19E    mov         eax,ebx
 0054F1A0    call        TPersistent.Assign
 0054F1A5    pop         edi
 0054F1A6    pop         esi
 0054F1A7    pop         ebx
 0054F1A8    ret
*}
end;

//0054F1AC
procedure TSeriesPointer.DrawLegendShape(AColor:TColor; const Rect:TRect; DrawPen:Boolean);
begin
{*
 0054F1AC    push        ebp
 0054F1AD    mov         ebp,esp
 0054F1AF    add         esp,0FFFFFFF8
 0054F1B2    push        ebx
 0054F1B3    push        esi
 0054F1B4    push        edi
 0054F1B5    mov         ebx,ecx
 0054F1B7    mov         dword ptr [ebp-4],edx
 0054F1BA    mov         esi,eax
 0054F1BC    mov         edx,dword ptr [ebp-4]
 0054F1BF    mov         eax,esi
 0054F1C1    call        TSeriesPointer.PrepareCanvas
 0054F1C6    cmp         byte ptr [ebp+8],0
>0054F1CA    je          0054F1EE
 0054F1CC    mov         eax,dword ptr [ebx+8]
 0054F1CF    sub         eax,dword ptr [ebx]
 0054F1D1    mov         ecx,3
 0054F1D6    cdq
 0054F1D7    idiv        eax,ecx
 0054F1D9    mov         edi,eax
 0054F1DB    mov         eax,dword ptr [ebx+0C]
 0054F1DE    sub         eax,dword ptr [ebx+4]
 0054F1E1    mov         ecx,3
 0054F1E6    cdq
 0054F1E7    idiv        eax,ecx
 0054F1E9    mov         dword ptr [ebp-8],eax
>0054F1EC    jmp         0054F20C
 0054F1EE    mov         edi,dword ptr [ebx+8]
 0054F1F1    sub         edi,dword ptr [ebx]
 0054F1F3    sar         edi,1
>0054F1F5    jns         0054F1FA
 0054F1F7    adc         edi,0
 0054F1FA    inc         edi
 0054F1FB    mov         eax,dword ptr [ebx+0C]
 0054F1FE    sub         eax,dword ptr [ebx+4]
 0054F201    sar         eax,1
>0054F203    jns         0054F208
 0054F205    adc         eax,0
 0054F208    inc         eax
 0054F209    mov         dword ptr [ebp-8],eax
 0054F20C    mov         eax,dword ptr [ebx+4]
 0054F20F    add         eax,dword ptr [ebx+0C]
 0054F212    sar         eax,1
>0054F214    jns         0054F219
 0054F216    adc         eax,0
 0054F219    push        eax
 0054F21A    mov         edx,edi
 0054F21C    mov         eax,dword ptr [esi+0C]
 0054F21F    call        0056EDD8
 0054F224    push        eax
 0054F225    mov         edx,dword ptr [ebp-8]
 0054F228    mov         eax,dword ptr [esi+20]
 0054F22B    call        0056EDD8
 0054F230    push        eax
 0054F231    mov         eax,dword ptr [ebp-4]
 0054F234    push        eax
 0054F235    mov         al,byte ptr [esi+1C]
 0054F238    push        eax
 0054F239    mov         ecx,dword ptr [ebx]
 0054F23B    add         ecx,dword ptr [ebx+8]
 0054F23E    sar         ecx,1
>0054F240    jns         0054F245
 0054F242    adc         ecx,0
 0054F245    xor         edx,edx
 0054F247    mov         eax,esi
 0054F249    call        TSeriesPointer.DrawPointer
 0054F24E    pop         edi
 0054F24F    pop         esi
 0054F250    pop         ebx
 0054F251    pop         ecx
 0054F252    pop         ecx
 0054F253    pop         ebp
 0054F254    ret         4
*}
end;

//0054F258
constructor TCustomSeries.Create(AOwner:TComponent);
begin
{*
 0054F258    push        ebx
 0054F259    push        esi
 0054F25A    test        dl,dl
>0054F25C    je          0054F266
 0054F25E    add         esp,0FFFFFFF0
 0054F261    call        @ClassCreate
 0054F266    mov         ebx,edx
 0054F268    mov         esi,eax
 0054F26A    xor         edx,edx
 0054F26C    mov         eax,esi
 0054F26E    call        TChartSeries.Create
 0054F273    mov         byte ptr [esi+114],1
 0054F27A    mov         byte ptr [esi+0F9],1
 0054F281    mov         ecx,esi
 0054F283    mov         dl,1
 0054F285    mov         eax,[0054C6D0];TSeriesPointer
 0054F28A    call        TSeriesPointer.Create
 0054F28F    mov         dword ptr [esi+124],eax
 0054F295    mov         eax,esi
 0054F297    call        TChartSeries.CreateChartPen
 0054F29C    mov         dword ptr [esi+110],eax
 0054F2A2    mov         eax,esi
 0054F2A4    call        TChartSeries.CreateChartPen
 0054F2A9    mov         dword ptr [esi+120],eax
 0054F2AF    xor         eax,eax
 0054F2B1    mov         dword ptr [esi+11C],eax
 0054F2B7    mov         dword ptr [esi+10C],20000000
 0054F2C1    mov         byte ptr [esi+115],1
 0054F2C8    mov         eax,esi
 0054F2CA    test        bl,bl
>0054F2CC    je          0054F2DD
 0054F2CE    call        @AfterConstruction
 0054F2D3    pop         dword ptr fs:[0]
 0054F2DA    add         esp,0C
 0054F2DD    mov         eax,esi
 0054F2DF    pop         esi
 0054F2E0    pop         ebx
 0054F2E1    ret
*}
end;

//0054F2E4
destructor TCustomSeries.Destroy;
begin
{*
 0054F2E4    push        ebx
 0054F2E5    push        esi
 0054F2E6    call        @BeforeDestruction
 0054F2EB    mov         ebx,edx
 0054F2ED    mov         esi,eax
 0054F2EF    mov         eax,dword ptr [esi+120]
 0054F2F5    call        TObject.Free
 0054F2FA    mov         eax,dword ptr [esi+110]
 0054F300    call        TObject.Free
 0054F305    mov         eax,dword ptr [esi+124]
 0054F30B    call        TObject.Free
 0054F310    mov         edx,ebx
 0054F312    and         dl,0FC
 0054F315    mov         eax,esi
 0054F317    call        TChartSeries.Destroy
 0054F31C    test        bl,bl
>0054F31E    jle         0054F327
 0054F320    mov         eax,esi
 0054F322    call        @ClassDestroy
 0054F327    pop         esi
 0054F328    pop         ebx
 0054F329    ret
*}
end;

//0054F32C
procedure TCustomSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 0054F32C    push        ebp
 0054F32D    mov         ebp,esp
 0054F32F    push        ecx
 0054F330    push        ebx
 0054F331    push        esi
 0054F332    mov         dword ptr [ebp-4],ecx
 0054F335    mov         esi,dword ptr [ebp+8]
 0054F338    mov         ecx,dword ptr [eax+64]
 0054F33B    mov         ebx,dword ptr [eax+0FC]
 0054F341    mov         dword ptr [ecx+2C],ebx
 0054F344    mov         ebx,dword ptr [ecx+8]
 0054F347    sub         dword ptr [esi+20],ebx
 0054F34A    sub         dword ptr [esi+10],ebx
 0054F34D    push        esi
 0054F34E    mov         ecx,dword ptr [ebp-4]
 0054F351    call        TChartSeries.DrawMark
 0054F356    pop         esi
 0054F357    pop         ebx
 0054F358    pop         ecx
 0054F359    pop         ebp
 0054F35A    ret         4
*}
end;

//0054F360
function TCustomSeries.ClickedPointer(ValueIndex:Integer; tmpX:Integer; tmpY:Integer; x:Integer; y:Integer):Boolean;
begin
{*
 0054F360    push        ebp
 0054F361    mov         ebp,esp
 0054F363    push        ebx
 0054F364    push        esi
 0054F365    mov         ebx,eax
 0054F367    mov         eax,ecx
 0054F369    sub         eax,dword ptr [ebp+0C]
 0054F36C    cdq
 0054F36D    xor         eax,edx
 0054F36F    sub         eax,edx
 0054F371    mov         esi,dword ptr [ebx+124]
 0054F377    cmp         eax,dword ptr [esi+0C]
>0054F37A    jge         0054F38C
 0054F37C    mov         eax,dword ptr [ebp+10]
 0054F37F    sub         eax,dword ptr [ebp+8]
 0054F382    cdq
 0054F383    xor         eax,edx
 0054F385    sub         eax,edx
 0054F387    cmp         eax,dword ptr [esi+20]
>0054F38A    jl          0054F390
 0054F38C    xor         eax,eax
>0054F38E    jmp         0054F392
 0054F390    mov         al,1
 0054F392    pop         esi
 0054F393    pop         ebx
 0054F394    pop         ebp
 0054F395    ret         0C
*}
end;

//0054F398
procedure TCustomSeries.Assign(Source:TPersistent);
begin
{*
 0054F398    push        ebx
 0054F399    push        esi
 0054F39A    push        edi
 0054F39B    mov         esi,edx
 0054F39D    mov         ebx,eax
 0054F39F    mov         eax,esi
 0054F3A1    mov         edx,dword ptr ds:[54C8F4];TCustomSeries
 0054F3A7    call        @IsClass
 0054F3AC    test        al,al
>0054F3AE    je          0054F461
 0054F3B4    mov         edi,esi
 0054F3B6    mov         al,byte ptr [edi+114]
 0054F3BC    mov         byte ptr [ebx+114],al
 0054F3C2    mov         al,byte ptr [edi+108]
 0054F3C8    mov         byte ptr [ebx+108],al
 0054F3CE    mov         eax,dword ptr [edi+10C]
 0054F3D4    mov         dword ptr [ebx+10C],eax
 0054F3DA    mov         edx,dword ptr [edi+110]
 0054F3E0    mov         eax,dword ptr [ebx+110]
 0054F3E6    mov         ecx,dword ptr [eax]
 0054F3E8    call        dword ptr [ecx+8]
 0054F3EB    mov         al,byte ptr [edi+115]
 0054F3F1    mov         byte ptr [ebx+115],al
 0054F3F7    mov         al,byte ptr [edi+116]
 0054F3FD    mov         byte ptr [ebx+116],al
 0054F403    mov         al,byte ptr [edi+117]
 0054F409    mov         byte ptr [ebx+117],al
 0054F40F    mov         al,byte ptr [edi+118]
 0054F415    mov         byte ptr [ebx+118],al
 0054F41B    mov         edx,dword ptr [edi+120]
 0054F421    mov         eax,dword ptr [ebx+120]
 0054F427    mov         ecx,dword ptr [eax]
 0054F429    call        dword ptr [ecx+8]
 0054F42C    mov         al,byte ptr [edi+119]
 0054F432    mov         byte ptr [ebx+119],al
 0054F438    mov         eax,dword ptr [edi+11C]
 0054F43E    mov         dword ptr [ebx+11C],eax
 0054F444    mov         edx,dword ptr [edi+124]
 0054F44A    mov         eax,dword ptr [ebx+124]
 0054F450    mov         ecx,dword ptr [eax]
 0054F452    call        dword ptr [ecx+8]
 0054F455    mov         al,byte ptr [edi+128]
 0054F45B    mov         byte ptr [ebx+128],al
 0054F461    mov         edx,esi
 0054F463    mov         eax,ebx
 0054F465    call        TChartSeries.Assign
 0054F46A    pop         edi
 0054F46B    pop         esi
 0054F46C    pop         ebx
 0054F46D    ret
*}
end;

//0054F470
function PointInVertLine(x0:Integer; y0:Integer; y1:Integer):Boolean;
begin
{*
 0054F470    push        ebp
 0054F471    mov         ebp,esp
 0054F473    push        eax
 0054F474    push        ecx
 0054F475    mov         ecx,dword ptr [ebp+8]
 0054F478    mov         ecx,dword ptr [ecx+8]
 0054F47B    add         ecx,0FFFFFFF8
 0054F47E    xchg        eax,ecx
 0054F47F    xchg        ecx,edx
 0054F481    call        PointInLine
 0054F486    pop         ebp
 0054F487    ret
*}
end;

//0054F488
function PointInHorizLine(x0:Integer; y0:Integer; x1:Integer):Boolean;
begin
{*
 0054F488    push        ebp
 0054F489    mov         ebp,esp
 0054F48B    push        ecx
 0054F48C    push        edx
 0054F48D    mov         ecx,dword ptr [ebp+8]
 0054F490    mov         ecx,dword ptr [ecx+8]
 0054F493    add         ecx,0FFFFFFF8
 0054F496    xchg        eax,ecx
 0054F497    xchg        ecx,edx
 0054F499    call        PointInLine
 0054F49E    pop         ebp
 0054F49F    ret
*}
end;

//0054F4A0
function CheckPointInLine:Boolean;
begin
{*
 0054F4A0    push        ebp
 0054F4A1    mov         ebp,esp
 0054F4A3    add         esp,0FFFFFFC0
 0054F4A6    push        ebx
 0054F4A7    mov         eax,dword ptr [ebp+8]
 0054F4AA    mov         eax,dword ptr [eax-0C]
 0054F4AD    mov         ebx,dword ptr [eax+68]
 0054F4B0    cmp         byte ptr [ebx+270],0
>0054F4B7    je          0054F56D
 0054F4BD    lea         ecx,[ebp-28]
 0054F4C0    mov         eax,dword ptr [ebp+8]
 0054F4C3    mov         edx,dword ptr [eax-14]
 0054F4C6    mov         eax,dword ptr [ebp+8]
 0054F4C9    mov         eax,dword ptr [eax-10]
 0054F4CC    call        Point
 0054F4D1    mov         eax,dword ptr [ebp-28]
 0054F4D4    mov         dword ptr [ebp-20],eax
 0054F4D7    mov         eax,dword ptr [ebp-24]
 0054F4DA    mov         dword ptr [ebp-1C],eax
 0054F4DD    lea         ecx,[ebp-30]
 0054F4E0    mov         eax,dword ptr [ebp+8]
 0054F4E3    mov         edx,dword ptr [eax-14]
 0054F4E6    sub         edx,dword ptr [ebx+33C]
 0054F4EC    mov         eax,dword ptr [ebp+8]
 0054F4EF    mov         eax,dword ptr [eax-10]
 0054F4F2    add         eax,dword ptr [ebx+338]
 0054F4F8    call        Point
 0054F4FD    mov         eax,dword ptr [ebp-30]
 0054F500    mov         dword ptr [ebp-18],eax
 0054F503    mov         eax,dword ptr [ebp-2C]
 0054F506    mov         dword ptr [ebp-14],eax
 0054F509    lea         ecx,[ebp-38]
 0054F50C    mov         eax,dword ptr [ebp+8]
 0054F50F    mov         edx,dword ptr [eax-1C]
 0054F512    sub         edx,dword ptr [ebx+33C]
 0054F518    mov         eax,dword ptr [ebp+8]
 0054F51B    mov         eax,dword ptr [eax-18]
 0054F51E    add         eax,dword ptr [ebx+338]
 0054F524    call        Point
 0054F529    mov         eax,dword ptr [ebp-38]
 0054F52C    mov         dword ptr [ebp-10],eax
 0054F52F    mov         eax,dword ptr [ebp-34]
 0054F532    mov         dword ptr [ebp-0C],eax
 0054F535    lea         ecx,[ebp-40]
 0054F538    mov         eax,dword ptr [ebp+8]
 0054F53B    mov         edx,dword ptr [eax-1C]
 0054F53E    mov         eax,dword ptr [ebp+8]
 0054F541    mov         eax,dword ptr [eax-18]
 0054F544    call        Point
 0054F549    mov         eax,dword ptr [ebp-40]
 0054F54C    mov         dword ptr [ebp-8],eax
 0054F54F    mov         eax,dword ptr [ebp-3C]
 0054F552    mov         dword ptr [ebp-4],eax
 0054F555    lea         edx,[ebp-20]
 0054F558    mov         eax,dword ptr [ebp+8]
 0054F55B    add         eax,0FFFFFFF8
 0054F55E    mov         ecx,3
 0054F563    call        PointInPolygon
>0054F568    jmp         0054F638
 0054F56D    mov         eax,dword ptr [ebp+8]
 0054F570    mov         eax,dword ptr [eax-0C]
 0054F573    cmp         byte ptr [eax+128],0
>0054F57A    je          0054F613
 0054F580    mov         eax,dword ptr [ebp+8]
 0054F583    mov         eax,dword ptr [eax-0C]
 0054F586    cmp         byte ptr [eax+118],0
>0054F58D    je          0054F5D1
 0054F58F    push        ebp
 0054F590    mov         eax,dword ptr [ebp+8]
 0054F593    mov         ecx,dword ptr [eax-14]
 0054F596    mov         eax,dword ptr [ebp+8]
 0054F599    mov         edx,dword ptr [eax-1C]
 0054F59C    mov         eax,dword ptr [ebp+8]
 0054F59F    mov         eax,dword ptr [eax-18]
 0054F5A2    call        PointInVertLine
 0054F5A7    pop         ecx
 0054F5A8    test        al,al
>0054F5AA    jne         0054F5CD
 0054F5AC    push        ebp
 0054F5AD    mov         eax,dword ptr [ebp+8]
 0054F5B0    mov         ecx,dword ptr [eax-10]
 0054F5B3    mov         eax,dword ptr [ebp+8]
 0054F5B6    mov         edx,dword ptr [eax-14]
 0054F5B9    mov         eax,dword ptr [ebp+8]
 0054F5BC    mov         eax,dword ptr [eax-18]
 0054F5BF    call        PointInHorizLine
 0054F5C4    pop         ecx
 0054F5C5    test        al,al
>0054F5C7    jne         0054F5CD
 0054F5C9    xor         eax,eax
>0054F5CB    jmp         0054F638
 0054F5CD    mov         al,1
>0054F5CF    jmp         0054F638
 0054F5D1    push        ebp
 0054F5D2    mov         eax,dword ptr [ebp+8]
 0054F5D5    mov         ecx,dword ptr [eax-10]
 0054F5D8    mov         eax,dword ptr [ebp+8]
 0054F5DB    mov         edx,dword ptr [eax-1C]
 0054F5DE    mov         eax,dword ptr [ebp+8]
 0054F5E1    mov         eax,dword ptr [eax-18]
 0054F5E4    call        PointInHorizLine
 0054F5E9    pop         ecx
 0054F5EA    test        al,al
>0054F5EC    jne         0054F60F
 0054F5EE    push        ebp
 0054F5EF    mov         eax,dword ptr [ebp+8]
 0054F5F2    mov         ecx,dword ptr [eax-14]
 0054F5F5    mov         eax,dword ptr [ebp+8]
 0054F5F8    mov         edx,dword ptr [eax-1C]
 0054F5FB    mov         eax,dword ptr [ebp+8]
 0054F5FE    mov         eax,dword ptr [eax-10]
 0054F601    call        PointInVertLine
 0054F606    pop         ecx
 0054F607    test        al,al
>0054F609    jne         0054F60F
 0054F60B    xor         eax,eax
>0054F60D    jmp         0054F638
 0054F60F    mov         al,1
>0054F611    jmp         0054F638
 0054F613    mov         eax,dword ptr [ebp+8]
 0054F616    mov         eax,dword ptr [eax-18]
 0054F619    push        eax
 0054F61A    mov         eax,dword ptr [ebp+8]
 0054F61D    mov         eax,dword ptr [eax-1C]
 0054F620    push        eax
 0054F621    mov         eax,dword ptr [ebp+8]
 0054F624    mov         ecx,dword ptr [eax-14]
 0054F627    mov         eax,dword ptr [ebp+8]
 0054F62A    mov         edx,dword ptr [eax-10]
 0054F62D    mov         eax,dword ptr [ebp+8]
 0054F630    add         eax,0FFFFFFF8
 0054F633    call        PointInLine
 0054F638    pop         ebx
 0054F639    mov         esp,ebp
 0054F63B    pop         ebp
 0054F63C    ret
*}
end;

//0054F640
function TCustomSeries.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 0054F640    push        ebp
 0054F641    mov         ebp,esp
 0054F643    add         esp,0FFFFFF98
 0054F646    push        ebx
 0054F647    push        esi
 0054F648    push        edi
 0054F649    mov         dword ptr [ebp-24],ecx
 0054F64C    mov         dword ptr [ebp-20],edx
 0054F64F    mov         dword ptr [ebp-0C],eax
 0054F652    mov         eax,dword ptr [ebp-0C]
 0054F655    mov         eax,dword ptr [eax+68]
 0054F658    test        eax,eax
>0054F65A    je          0054F67A
 0054F65C    mov         edx,dword ptr [ebp-0C]
 0054F65F    mov         edx,dword ptr [edx+0FC]
 0054F665    push        edx
 0054F666    lea         ecx,[ebp-24]
 0054F669    lea         edx,[ebp-20]
 0054F66C    mov         eax,dword ptr [eax+280]
 0054F672    mov         ebx,dword ptr [eax]
 0054F674    call        dword ptr [ebx+0A0]
 0054F67A    mov         ecx,dword ptr [ebp-24]
 0054F67D    mov         edx,dword ptr [ebp-20]
 0054F680    mov         eax,dword ptr [ebp-0C]
 0054F683    call        TChartSeries.Clicked
 0054F688    mov         dword ptr [ebp-28],eax
 0054F68B    cmp         dword ptr [ebp-28],0FFFFFFFF
>0054F68F    jne         0054F87B
 0054F695    mov         eax,dword ptr [ebp-0C]
 0054F698    cmp         dword ptr [eax+4C],0FFFFFFFF
>0054F69C    jle         0054F87B
 0054F6A2    mov         eax,dword ptr [ebp-0C]
 0054F6A5    cmp         dword ptr [eax+5C],0FFFFFFFF
>0054F6A9    jle         0054F87B
 0054F6AF    xor         eax,eax
 0054F6B1    mov         dword ptr [ebp-18],eax
 0054F6B4    xor         eax,eax
 0054F6B6    mov         dword ptr [ebp-1C],eax
 0054F6B9    mov         eax,dword ptr [ebp-0C]
 0054F6BC    xor         edx,edx
 0054F6BE    mov         dword ptr [eax+144],edx
 0054F6C4    mov         eax,dword ptr [ebp-20]
 0054F6C7    mov         dword ptr [ebp-8],eax
 0054F6CA    mov         eax,dword ptr [ebp-24]
 0054F6CD    mov         dword ptr [ebp-4],eax
 0054F6D0    mov         eax,dword ptr [ebp-0C]
 0054F6D3    mov         ebx,dword ptr [eax+4C]
 0054F6D6    mov         eax,dword ptr [ebp-0C]
 0054F6D9    mov         esi,dword ptr [eax+5C]
 0054F6DC    sub         esi,ebx
>0054F6DE    jl          0054F87B
 0054F6E4    inc         esi
 0054F6E5    mov         edx,ebx
 0054F6E7    mov         eax,dword ptr [ebp-0C]
 0054F6EA    mov         ecx,dword ptr [eax]
 0054F6EC    call        dword ptr [ecx+0E4]
 0054F6F2    mov         dword ptr [ebp-10],eax
 0054F6F5    mov         edx,ebx
 0054F6F7    mov         eax,dword ptr [ebp-0C]
 0054F6FA    mov         ecx,dword ptr [eax]
 0054F6FC    call        dword ptr [ecx+0E8]
 0054F702    mov         dword ptr [ebp-14],eax
 0054F705    mov         eax,dword ptr [ebp-0C]
 0054F708    mov         eax,dword ptr [eax+124]
 0054F70E    cmp         byte ptr [eax+24],0
>0054F712    je          0054F765
 0054F714    mov         eax,dword ptr [ebp-14]
 0054F717    push        eax
 0054F718    mov         eax,dword ptr [ebp-20]
 0054F71B    push        eax
 0054F71C    mov         eax,dword ptr [ebp-24]
 0054F71F    push        eax
 0054F720    mov         ecx,dword ptr [ebp-10]
 0054F723    mov         edx,ebx
 0054F725    mov         eax,dword ptr [ebp-0C]
 0054F728    mov         edi,dword ptr [eax]
 0054F72A    call        dword ptr [edi+14C]
 0054F730    test        al,al
>0054F732    je          0054F765
 0054F734    mov         eax,dword ptr [ebp-0C]
 0054F737    cmp         word ptr [eax+132],0
>0054F73F    je          0054F75D
 0054F741    mov         eax,dword ptr [ebp-20]
 0054F744    push        eax
 0054F745    mov         eax,dword ptr [ebp-24]
 0054F748    push        eax
 0054F749    mov         esi,dword ptr [ebp-0C]
 0054F74C    mov         ecx,ebx
 0054F74E    mov         edx,dword ptr [ebp-0C]
 0054F751    mov         eax,dword ptr [esi+134]
 0054F757    call        dword ptr [esi+130]
 0054F75D    mov         dword ptr [ebp-28],ebx
>0054F760    jmp         0054F87B
 0054F765    mov         eax,dword ptr [ebp-10]
 0054F768    cmp         eax,dword ptr [ebp-20]
>0054F76B    jne         0054F77D
 0054F76D    mov         eax,dword ptr [ebp-14]
 0054F770    cmp         eax,dword ptr [ebp-24]
>0054F773    jne         0054F77D
 0054F775    mov         dword ptr [ebp-28],ebx
>0054F778    jmp         0054F87B
 0054F77D    mov         eax,dword ptr [ebp-0C]
 0054F780    cmp         ebx,dword ptr [eax+4C]
>0054F783    jle         0054F855
 0054F789    mov         eax,dword ptr [ebp-0C]
 0054F78C    cmp         byte ptr [eax+114],0
>0054F793    je          0054F855
 0054F799    push        ebp
 0054F79A    call        CheckPointInLine
 0054F79F    pop         ecx
 0054F7A0    test        al,al
>0054F7A2    jne         0054F84D
 0054F7A8    mov         eax,dword ptr [ebp-0C]
 0054F7AB    cmp         byte ptr [eax+116],0
>0054F7B2    je          0054F855
 0054F7B8    lea         ecx,[ebp-50]
 0054F7BB    mov         edx,dword ptr [ebp-1C]
 0054F7BE    mov         eax,dword ptr [ebp-18]
 0054F7C1    call        Point
 0054F7C6    mov         eax,dword ptr [ebp-50]
 0054F7C9    mov         dword ptr [ebp-48],eax
 0054F7CC    mov         eax,dword ptr [ebp-4C]
 0054F7CF    mov         dword ptr [ebp-44],eax
 0054F7D2    lea         ecx,[ebp-58]
 0054F7D5    mov         edx,dword ptr [ebp-14]
 0054F7D8    mov         eax,dword ptr [ebp-10]
 0054F7DB    call        Point
 0054F7E0    mov         eax,dword ptr [ebp-58]
 0054F7E3    mov         dword ptr [ebp-40],eax
 0054F7E6    mov         eax,dword ptr [ebp-54]
 0054F7E9    mov         dword ptr [ebp-3C],eax
 0054F7EC    mov         edx,ebx
 0054F7EE    mov         eax,dword ptr [ebp-0C]
 0054F7F1    mov         ecx,dword ptr [eax]
 0054F7F3    call        dword ptr [ecx+154]
 0054F7F9    mov         edx,eax
 0054F7FB    lea         ecx,[ebp-60]
 0054F7FE    mov         eax,dword ptr [ebp-10]
 0054F801    call        Point
 0054F806    mov         eax,dword ptr [ebp-60]
 0054F809    mov         dword ptr [ebp-38],eax
 0054F80C    mov         eax,dword ptr [ebp-5C]
 0054F80F    mov         dword ptr [ebp-34],eax
 0054F812    mov         edx,ebx
 0054F814    dec         edx
 0054F815    mov         eax,dword ptr [ebp-0C]
 0054F818    mov         ecx,dword ptr [eax]
 0054F81A    call        dword ptr [ecx+154]
 0054F820    mov         edx,eax
 0054F822    lea         ecx,[ebp-68]
 0054F825    mov         eax,dword ptr [ebp-18]
 0054F828    call        Point
 0054F82D    mov         eax,dword ptr [ebp-68]
 0054F830    mov         dword ptr [ebp-30],eax
 0054F833    mov         eax,dword ptr [ebp-64]
 0054F836    mov         dword ptr [ebp-2C],eax
 0054F839    lea         edx,[ebp-48]
 0054F83C    lea         eax,[ebp-8]
 0054F83F    mov         ecx,3
 0054F844    call        PointInPolygon
 0054F849    test        al,al
>0054F84B    je          0054F855
 0054F84D    mov         eax,ebx
 0054F84F    dec         eax
 0054F850    mov         dword ptr [ebp-28],eax
>0054F853    jmp         0054F87B
 0054F855    mov         eax,dword ptr [ebp-10]
 0054F858    mov         dword ptr [ebp-18],eax
 0054F85B    mov         eax,dword ptr [ebp-14]
 0054F85E    mov         dword ptr [ebp-1C],eax
 0054F861    mov         eax,dword ptr [ebp-0C]
 0054F864    mov         eax,dword ptr [eax+140]
 0054F86A    mov         edx,dword ptr [ebp-0C]
 0054F86D    mov         dword ptr [edx+144],eax
 0054F873    inc         ebx
 0054F874    dec         esi
>0054F875    jne         0054F6E5
 0054F87B    mov         eax,dword ptr [ebp-28]
 0054F87E    pop         edi
 0054F87F    pop         esi
 0054F880    pop         ebx
 0054F881    mov         esp,ebp
 0054F883    pop         ebp
 0054F884    ret
*}
end;

//0054F888
procedure TAreaSeries.SetDrawArea(Value:Boolean);
begin
{*
 0054F888    lea         ecx,[eax+116];TAreaSeries.FDrawArea:Boolean
 0054F88E    xchg        ecx,edx
 0054F890    call        TChartSeries.SetIntegerProperty
 0054F895    ret
*}
end;

//0054F898
procedure TCustomSeries.SetPointer(Value:TSeriesPointer);
begin
{*
 0054F898    push        esi
 0054F899    mov         esi,eax
 0054F89B    mov         eax,dword ptr [esi+124]
 0054F8A1    mov         ecx,dword ptr [eax]
 0054F8A3    call        dword ptr [ecx+8]
 0054F8A6    pop         esi
 0054F8A7    ret
*}
end;

//0054F8A8
procedure TCustomBarSeries.SetBarPen(Value:TChartPen);
begin
{*
 0054F8A8    mov         eax,dword ptr [eax+110]
 0054F8AE    mov         ecx,dword ptr [eax]
 0054F8B0    call        dword ptr [ecx+8]
 0054F8B3    ret
*}
end;

//0054F8B4
procedure TCustomSeries.SetLinePen(Value:TChartPen);
begin
{*
 0054F8B4    mov         eax,dword ptr [eax+120]
 0054F8BA    mov         ecx,dword ptr [eax]
 0054F8BC    call        dword ptr [ecx+8]
 0054F8BF    ret
*}
end;

//0054F8C0
procedure TCustomBarSeries.SetDark3d(Value:Boolean);
begin
{*
 0054F8C0    lea         ecx,[eax+11C]
 0054F8C6    xchg        ecx,edx
 0054F8C8    call        TChartSeries.SetBooleanProperty
 0054F8CD    ret
*}
end;

//0054F8D0
procedure TLineSeries.SetStairs(Value:Boolean);
begin
{*
 0054F8D0    lea         ecx,[eax+128];TLineSeries.FStairs:Boolean
 0054F8D6    xchg        ecx,edx
 0054F8D8    call        TChartSeries.SetIntegerProperty
 0054F8DD    ret
*}
end;

//0054F8E0
procedure TLineSeries.SetInvertedStairs(Value:Boolean);
begin
{*
 0054F8E0    lea         ecx,[eax+118];TLineSeries.FInvertedStairs:Boolean
 0054F8E6    xchg        ecx,edx
 0054F8E8    call        TChartSeries.SetIntegerProperty
 0054F8ED    ret
*}
end;

//0054F8F0
procedure TCustomSeries.SetAreaColor(Value:TColor);
begin
{*
 0054F8F0    lea         ecx,[eax+10C]
 0054F8F6    xchg        ecx,edx
 0054F8F8    call        TChartSeries.SetColorProperty
 0054F8FD    ret
*}
end;

//0054F900
procedure TCustomSeries.SetBrushProperty(var ABrush:TBrushStyle; Value:TBrushStyle);
begin
{*
 0054F900    cmp         cl,byte ptr [edx]
>0054F902    je          0054F90B
 0054F904    mov         byte ptr [edx],cl
 0054F906    call        TChartSeries.Repaint
 0054F90B    ret
*}
end;

//0054F90C
procedure TCustomSeries.SetAreaBrush(Value:TBrushStyle);
begin
{*
 0054F90C    lea         ecx,[eax+108]
 0054F912    xchg        ecx,edx
 0054F914    call        TCustomSeries.SetBrushProperty
 0054F919    ret
*}
end;

//0054F91C
procedure TCustomSeries.SetLineBrush(Value:TBrushStyle);
begin
{*
 0054F91C    lea         ecx,[eax+119]
 0054F922    xchg        ecx,edx
 0054F924    call        TCustomSeries.SetBrushProperty
 0054F929    ret
*}
end;

//0054F92C
procedure DrawLine(DrawRectangle:Boolean);
begin
{*
 0054F92C    push        ebp
 0054F92D    mov         ebp,esp
 0054F92F    push        ebx
 0054F930    mov         ebx,eax
 0054F932    mov         eax,dword ptr [ebp+8]
 0054F935    mov         ecx,dword ptr [eax-8]
 0054F938    mov         eax,dword ptr [ebp+8]
 0054F93B    mov         eax,dword ptr [eax-4]
 0054F93E    mov         eax,dword ptr [eax+68]
 0054F941    mov         edx,dword ptr [eax+280]
 0054F947    mov         eax,dword ptr [ebp+8]
 0054F94A    mov         eax,dword ptr [eax-4]
 0054F94D    call        TCustomSeries.LinePrepareCanvas
 0054F952    mov         eax,dword ptr [ebp+8]
 0054F955    mov         eax,dword ptr [eax-4]
 0054F958    mov         eax,dword ptr [eax+68]
 0054F95B    mov         eax,dword ptr [eax+280]
 0054F961    test        bl,bl
>0054F963    je          0054F973
 0054F965    mov         edx,dword ptr [ebp+8]
 0054F968    mov         edx,dword ptr [edx-0C]
 0054F96B    mov         ecx,dword ptr [eax]
 0054F96D    call        dword ptr [ecx+70]
 0054F970    pop         ebx
 0054F971    pop         ebp
 0054F972    ret
 0054F973    mov         edx,dword ptr [ebp+8]
 0054F976    mov         edx,dword ptr [edx-0C]
 0054F979    mov         edx,dword ptr [edx+4]
 0054F97C    mov         ecx,dword ptr [ebp+8]
 0054F97F    mov         ecx,dword ptr [ecx-0C]
 0054F982    add         edx,dword ptr [ecx+0C]
 0054F985    sar         edx,1
>0054F987    jns         0054F98C
 0054F989    adc         edx,0
 0054F98C    push        edx
 0054F98D    mov         edx,dword ptr [ebp+8]
 0054F990    mov         ecx,dword ptr [edx-0C]
 0054F993    mov         ecx,dword ptr [ecx+8]
 0054F996    mov         edx,dword ptr [ebp+8]
 0054F999    mov         edx,dword ptr [edx-0C]
 0054F99C    mov         edx,dword ptr [edx]
 0054F99E    mov         ebx,dword ptr [eax]
 0054F9A0    call        dword ptr [ebx+6C]
 0054F9A3    pop         ebx
 0054F9A4    pop         ebp
 0054F9A5    ret
*}
end;

//0054F9A8
procedure TCustomSeries.DrawLegendShape(ValueIndex:Integer; const Rect:TRect);
begin
{*
 0054F9A8    push        ebp
 0054F9A9    mov         ebp,esp
 0054F9AB    add         esp,0FFFFFFF4
 0054F9AE    push        ebx
 0054F9AF    mov         dword ptr [ebp-0C],ecx
 0054F9B2    mov         ebx,edx
 0054F9B4    mov         dword ptr [ebp-4],eax
 0054F9B7    cmp         ebx,0FFFFFFFF
>0054F9BA    jne         0054F9C7
 0054F9BC    mov         eax,dword ptr [ebp-4]
 0054F9BF    mov         eax,dword ptr [eax+34]
 0054F9C2    mov         dword ptr [ebp-8],eax
>0054F9C5    jmp         0054F9D4
 0054F9C7    mov         edx,ebx
 0054F9C9    mov         eax,dword ptr [ebp-4]
 0054F9CC    mov         ecx,dword ptr [eax]
 0054F9CE    call        dword ptr [ecx+5C]
 0054F9D1    mov         dword ptr [ebp-8],eax
 0054F9D4    mov         eax,dword ptr [ebp-4]
 0054F9D7    mov         eax,dword ptr [eax+124]
 0054F9DD    cmp         byte ptr [eax+24],0
>0054F9E1    je          0054FA1B
 0054F9E3    mov         eax,dword ptr [ebp-4]
 0054F9E6    cmp         byte ptr [eax+117],0
>0054F9ED    je          0054F9F8
 0054F9EF    push        ebp
 0054F9F0    xor         eax,eax
 0054F9F2    call        DrawLine
 0054F9F7    pop         ecx
 0054F9F8    mov         eax,dword ptr [ebp-4]
 0054F9FB    mov         eax,dword ptr [eax+120]
 0054FA01    mov         al,byte ptr [eax+21]
 0054FA04    push        eax
 0054FA05    mov         ecx,dword ptr [ebp-0C]
 0054FA08    mov         eax,dword ptr [ebp-4]
 0054FA0B    mov         eax,dword ptr [eax+124]
 0054FA11    mov         edx,dword ptr [ebp-8]
 0054FA14    call        TSeriesPointer.DrawLegendShape
>0054FA19    jmp         0054FA55
 0054FA1B    mov         eax,dword ptr [ebp-4]
 0054FA1E    cmp         byte ptr [eax+117],0
>0054FA25    je          0054FA48
 0054FA27    mov         eax,dword ptr [ebp-4]
 0054FA2A    cmp         byte ptr [eax+116],0
>0054FA31    jne         0054FA48
 0054FA33    push        ebp
 0054FA34    mov         eax,dword ptr [ebp-4]
 0054FA37    mov         eax,dword ptr [eax+68]
 0054FA3A    mov         al,byte ptr [eax+270]
 0054FA40    call        DrawLine
 0054FA45    pop         ecx
>0054FA46    jmp         0054FA55
 0054FA48    mov         ecx,dword ptr [ebp-0C]
 0054FA4B    mov         edx,ebx
 0054FA4D    mov         eax,dword ptr [ebp-4]
 0054FA50    call        TChartSeries.DrawLegendShape
 0054FA55    pop         ebx
 0054FA56    mov         esp,ebp
 0054FA58    pop         ebp
 0054FA59    ret
*}
end;

//0054FA5C
procedure TCustomSeries.LinePrepareCanvas(tmpCanvas:TCanvas3D; tmpColor:TColor);
begin
{*
 0054FA5C    push        ebx
 0054FA5D    push        esi
 0054FA5E    push        edi
 0054FA5F    mov         edi,ecx
 0054FA61    mov         esi,edx
 0054FA63    mov         ebx,eax
 0054FA65    mov         edx,dword ptr [ebx+120]
 0054FA6B    mov         eax,esi
 0054FA6D    call        TTeeCanvas.AssignVisiblePen
 0054FA72    mov         edx,dword ptr [esi+0C]
 0054FA75    mov         eax,dword ptr [ebx+68]
 0054FA78    call        TCustomTeePanel.CheckPenWidth
 0054FA7D    mov         eax,dword ptr [ebx+68]
 0054FA80    cmp         byte ptr [eax+270],0
>0054FA87    je          0054FAA3
 0054FA89    mov         dl,byte ptr [ebx+119]
 0054FA8F    mov         eax,dword ptr [esi+10]
 0054FA92    call        TBrush.SetStyle
 0054FA97    mov         edx,edi
 0054FA99    mov         eax,dword ptr [esi+10]
 0054FA9C    call        TBrush.SetColor
>0054FAA1    jmp         0054FAB7
 0054FAA3    mov         dl,1
 0054FAA5    mov         eax,dword ptr [esi+10]
 0054FAA8    call        TBrush.SetStyle
 0054FAAD    mov         edx,edi
 0054FAAF    mov         eax,dword ptr [esi+0C]
 0054FAB2    call        TPen.SetColor
 0054FAB7    pop         edi
 0054FAB8    pop         esi
 0054FAB9    pop         ebx
 0054FABA    ret
*}
end;

//0054FABC
function TCustomSeries.GetAreaBrushColor(AColor:TColor):TColor;
begin
{*
 0054FABC    cmp         byte ptr [eax+38],0
>0054FAC0    jne         0054FACE
 0054FAC2    cmp         dword ptr [eax+10C],20000000
>0054FACC    jne         0054FAD1
 0054FACE    mov         eax,edx
 0054FAD0    ret
 0054FAD1    mov         eax,dword ptr [eax+10C]
 0054FAD7    ret
*}
end;

//0054FAD8
function CalcYPosLeftRight(AnotherIndex:Integer; const YLimit:Double):Integer;
begin
{*
 0054FAD8    push        ebp
 0054FAD9    mov         ebp,esp
 0054FADB    add         esp,0FFFFFFE8
 0054FADE    push        ebx
 0054FADF    mov         ebx,eax
 0054FAE1    mov         eax,dword ptr [ebp+10]
 0054FAE4    mov         eax,dword ptr [eax-4]
 0054FAE7    mov         edx,ebx
 0054FAE9    mov         ecx,dword ptr [eax]
 0054FAEB    call        dword ptr [ecx+64]
 0054FAEE    fstp        qword ptr [ebp-8]
 0054FAF1    wait
 0054FAF2    mov         eax,dword ptr [ebp+10]
 0054FAF5    mov         edx,dword ptr [eax-8]
 0054FAF8    mov         eax,dword ptr [ebp+10]
 0054FAFB    mov         eax,dword ptr [eax-4]
 0054FAFE    mov         ecx,dword ptr [eax]
 0054FB00    call        dword ptr [ecx+64]
 0054FB03    fsub        qword ptr [ebp-8]
 0054FB06    fstp        qword ptr [ebp-18]
 0054FB09    wait
 0054FB0A    fld         qword ptr [ebp-18]
 0054FB0D    fcomp       dword ptr ds:[54FB80]
 0054FB13    fnstsw      al
 0054FB15    sahf
>0054FB16    jne         0054FB2A
 0054FB18    mov         eax,dword ptr [ebp+10]
 0054FB1B    mov         eax,dword ptr [eax-4]
 0054FB1E    mov         edx,ebx
 0054FB20    mov         ecx,dword ptr [eax]
 0054FB22    call        dword ptr [ecx+0E8]
>0054FB28    jmp         0054FB77
 0054FB2A    mov         eax,dword ptr [ebp+10]
 0054FB2D    mov         eax,dword ptr [eax-4]
 0054FB30    mov         edx,ebx
 0054FB32    mov         ecx,dword ptr [eax]
 0054FB34    call        dword ptr [ecx+68]
 0054FB37    fstp        qword ptr [ebp-10]
 0054FB3A    wait
 0054FB3B    mov         eax,dword ptr [ebp+10]
 0054FB3E    mov         edx,dword ptr [eax-8]
 0054FB41    mov         eax,dword ptr [ebp+10]
 0054FB44    mov         eax,dword ptr [eax-4]
 0054FB47    mov         ecx,dword ptr [eax]
 0054FB49    call        dword ptr [ecx+68]
 0054FB4C    fsub        qword ptr [ebp-10]
 0054FB4F    fld         qword ptr [ebp+8]
 0054FB52    fsub        qword ptr [ebp-8]
 0054FB55    fmulp       st(1),st
 0054FB57    fdiv        qword ptr [ebp-18]
 0054FB5A    fld         dword ptr ds:[54FB84]
 0054FB60    fmul        qword ptr [ebp-10]
 0054FB63    faddp       st(1),st
 0054FB65    add         esp,0FFFFFFF8
 0054FB68    fstp        qword ptr [esp]
 0054FB6B    wait
 0054FB6C    mov         eax,dword ptr [ebp+10]
 0054FB6F    mov         eax,dword ptr [eax-4]
 0054FB72    call        TChartSeries.CalcYPosValue
 0054FB77    pop         ebx
 0054FB78    mov         esp,ebp
 0054FB7A    pop         ebp
 0054FB7B    ret         8
*}
end;

//0054FB88
procedure InternalDrawArea(BrushStyle:TBrushStyle; BrushColor:TColor);
begin
{*
 0054FB88    push        ebp
 0054FB89    mov         ebp,esp
 0054FB8B    add         esp,0FFFFFFC4
 0054FB8E    push        ebx
 0054FB8F    push        esi
 0054FB90    push        edi
 0054FB91    mov         dword ptr [ebp-8],edx
 0054FB94    mov         byte ptr [ebp-1],al
 0054FB97    mov         esi,dword ptr [ebp+8]
 0054FB9A    add         esi,0FFFFFFFC
 0054FB9D    mov         eax,dword ptr [esi]
 0054FB9F    mov         ebx,dword ptr [eax+68]
 0054FBA2    mov         eax,dword ptr [esi]
 0054FBA4    mov         eax,dword ptr [eax+34]
 0054FBA7    push        eax
 0054FBA8    mov         cl,byte ptr [ebp-1]
 0054FBAB    mov         edx,dword ptr [ebp-8]
 0054FBAE    mov         eax,ebx
 0054FBB0    call        TCustomTeePanel.SetBrushCanvas
 0054FBB5    cmp         byte ptr [ebx+270],0
>0054FBBC    je          0054FBFC
 0054FBBE    mov         eax,dword ptr [ebp+8]
 0054FBC1    cmp         byte ptr [eax-9],0
>0054FBC5    je          0054FBFC
 0054FBC7    mov         eax,dword ptr [esi]
 0054FBC9    mov         eax,dword ptr [eax+140]
 0054FBCF    push        eax
 0054FBD0    mov         eax,dword ptr [esi]
 0054FBD2    mov         eax,dword ptr [eax+0FC]
 0054FBD8    push        eax
 0054FBD9    mov         eax,dword ptr [esi]
 0054FBDB    mov         eax,dword ptr [eax+104]
 0054FBE1    push        eax
 0054FBE2    mov         eax,dword ptr [ebp+8]
 0054FBE5    mov         ecx,dword ptr [eax-14]
 0054FBE8    mov         eax,dword ptr [ebp+8]
 0054FBEB    mov         edx,dword ptr [eax-10]
 0054FBEE    mov         eax,dword ptr [ebx+280]
 0054FBF4    mov         edi,dword ptr [eax]
 0054FBF6    call        dword ptr [edi+114]
 0054FBFC    mov         eax,dword ptr [esi]
 0054FBFE    cmp         byte ptr [eax+128],0
>0054FC05    je          0054FCBB
 0054FC0B    mov         eax,dword ptr [esi]
 0054FC0D    cmp         byte ptr [eax+118],0
>0054FC14    je          0054FC21
 0054FC16    mov         eax,dword ptr [ebp+8]
 0054FC19    mov         eax,dword ptr [eax-14]
 0054FC1C    mov         dword ptr [ebp-0C],eax
>0054FC1F    jmp         0054FC2C
 0054FC21    mov         eax,dword ptr [esi]
 0054FC23    mov         eax,dword ptr [eax+14C]
 0054FC29    mov         dword ptr [ebp-0C],eax
 0054FC2C    mov         ebx,dword ptr [ebx+280]
 0054FC32    mov         eax,dword ptr [ebp-0C]
 0054FC35    push        eax
 0054FC36    lea         eax,[ebp-1C]
 0054FC39    push        eax
 0054FC3A    mov         eax,dword ptr [ebp+8]
 0054FC3D    mov         ecx,dword ptr [eax-10]
 0054FC40    inc         ecx
 0054FC41    mov         eax,dword ptr [esi]
 0054FC43    mov         edx,dword ptr [eax+140]
 0054FC49    mov         eax,dword ptr [esi]
 0054FC4B    mov         eax,dword ptr [eax+148]
 0054FC51    call        Rect
 0054FC56    lea         edx,[ebp-1C]
 0054FC59    mov         eax,dword ptr [esi]
 0054FC5B    mov         ecx,dword ptr [eax+0FC]
 0054FC61    mov         eax,ebx
 0054FC63    mov         edi,dword ptr [eax]
 0054FC65    call        dword ptr [edi+10C]
 0054FC6B    mov         eax,ebx
 0054FC6D    mov         edx,dword ptr [eax]
 0054FC6F    call        dword ptr [edx+98]
 0054FC75    test        al,al
>0054FC77    je          0054FDC9
 0054FC7D    mov         eax,dword ptr [ebp-0C]
 0054FC80    push        eax
 0054FC81    lea         eax,[ebp-1C]
 0054FC84    push        eax
 0054FC85    mov         eax,dword ptr [ebp+8]
 0054FC88    mov         ecx,dword ptr [eax-10]
 0054FC8B    inc         ecx
 0054FC8C    mov         eax,dword ptr [esi]
 0054FC8E    mov         edx,dword ptr [eax+140]
 0054FC94    mov         eax,dword ptr [esi]
 0054FC96    mov         eax,dword ptr [eax+148]
 0054FC9C    call        Rect
 0054FCA1    lea         edx,[ebp-1C]
 0054FCA4    mov         eax,dword ptr [esi]
 0054FCA6    mov         ecx,dword ptr [eax+104]
 0054FCAC    mov         eax,ebx
 0054FCAE    mov         ebx,dword ptr [eax]
 0054FCB0    call        dword ptr [ebx+10C]
>0054FCB6    jmp         0054FDC9
 0054FCBB    mov         ebx,dword ptr [ebx+280]
 0054FCC1    lea         ecx,[ebp-24]
 0054FCC4    mov         eax,dword ptr [ebp+8]
 0054FCC7    mov         edx,dword ptr [eax-14]
 0054FCCA    mov         eax,dword ptr [ebp+8]
 0054FCCD    mov         eax,dword ptr [eax-10]
 0054FCD0    call        Point
 0054FCD5    lea         eax,[ebp-24]
 0054FCD8    push        eax
 0054FCD9    lea         ecx,[ebp-2C]
 0054FCDC    mov         eax,dword ptr [esi]
 0054FCDE    mov         edx,dword ptr [eax+140]
 0054FCE4    mov         eax,dword ptr [ebp+8]
 0054FCE7    mov         eax,dword ptr [eax-10]
 0054FCEA    call        Point
 0054FCEF    lea         eax,[ebp-2C]
 0054FCF2    push        eax
 0054FCF3    mov         eax,dword ptr [esi]
 0054FCF5    mov         eax,dword ptr [eax+0FC]
 0054FCFB    push        eax
 0054FCFC    lea         ecx,[ebp-34]
 0054FCFF    mov         eax,dword ptr [esi]
 0054FD01    mov         edx,dword ptr [eax+14C]
 0054FD07    mov         eax,dword ptr [esi]
 0054FD09    mov         eax,dword ptr [eax+148]
 0054FD0F    call        Point
 0054FD14    lea         eax,[ebp-34]
 0054FD17    push        eax
 0054FD18    lea         ecx,[ebp-3C]
 0054FD1B    mov         eax,dword ptr [esi]
 0054FD1D    mov         edx,dword ptr [eax+144]
 0054FD23    mov         eax,dword ptr [esi]
 0054FD25    mov         eax,dword ptr [eax+148]
 0054FD2B    call        Point
 0054FD30    lea         edx,[ebp-3C]
 0054FD33    mov         eax,ebx
 0054FD35    pop         ecx
 0054FD36    mov         edi,dword ptr [eax]
 0054FD38    call        dword ptr [edi+0FC]
 0054FD3E    mov         eax,ebx
 0054FD40    mov         edx,dword ptr [eax]
 0054FD42    call        dword ptr [edx+98]
 0054FD48    test        al,al
>0054FD4A    je          0054FDC9
 0054FD4C    lea         ecx,[ebp-24]
 0054FD4F    mov         eax,dword ptr [ebp+8]
 0054FD52    mov         edx,dword ptr [eax-14]
 0054FD55    mov         eax,dword ptr [ebp+8]
 0054FD58    mov         eax,dword ptr [eax-10]
 0054FD5B    call        Point
 0054FD60    lea         eax,[ebp-24]
 0054FD63    push        eax
 0054FD64    lea         ecx,[ebp-2C]
 0054FD67    mov         eax,dword ptr [esi]
 0054FD69    mov         edx,dword ptr [eax+14C]
 0054FD6F    mov         eax,dword ptr [esi]
 0054FD71    mov         eax,dword ptr [eax+148]
 0054FD77    call        Point
 0054FD7C    lea         eax,[ebp-2C]
 0054FD7F    push        eax
 0054FD80    mov         eax,dword ptr [esi]
 0054FD82    mov         eax,dword ptr [eax+104]
 0054FD88    push        eax
 0054FD89    lea         ecx,[ebp-34]
 0054FD8C    mov         eax,dword ptr [esi]
 0054FD8E    mov         edx,dword ptr [eax+140]
 0054FD94    mov         eax,dword ptr [ebp+8]
 0054FD97    mov         eax,dword ptr [eax-10]
 0054FD9A    call        Point
 0054FD9F    lea         eax,[ebp-34]
 0054FDA2    push        eax
 0054FDA3    lea         ecx,[ebp-3C]
 0054FDA6    mov         eax,dword ptr [esi]
 0054FDA8    mov         edx,dword ptr [eax+144]
 0054FDAE    mov         eax,dword ptr [esi]
 0054FDB0    mov         eax,dword ptr [eax+148]
 0054FDB6    call        Point
 0054FDBB    lea         edx,[ebp-3C]
 0054FDBE    mov         eax,ebx
 0054FDC0    pop         ecx
 0054FDC1    mov         ebx,dword ptr [eax]
 0054FDC3    call        dword ptr [ebx+0FC]
 0054FDC9    pop         edi
 0054FDCA    pop         esi
 0054FDCB    pop         ebx
 0054FDCC    mov         esp,ebp
 0054FDCE    pop         ebp
 0054FDCF    ret
*}
end;

//0054FDD0
procedure DrawPoint(DrawOldPointer:Boolean);
begin
{*
 0054FDD0    push        ebp
 0054FDD1    mov         ebp,esp
 0054FDD3    add         esp,0FFFFFFB8
 0054FDD6    push        ebx
 0054FDD7    push        esi
 0054FDD8    push        edi
 0054FDD9    mov         byte ptr [ebp-1],al
 0054FDDC    mov         edi,dword ptr [ebp+8]
 0054FDDF    add         edi,0FFFFFFFC
 0054FDE2    mov         eax,dword ptr [ebp+8]
 0054FDE5    mov         eax,dword ptr [eax-10]
 0054FDE8    mov         edx,dword ptr [edi]
 0054FDEA    cmp         eax,dword ptr [edx+148]
>0054FDF0    jne         0054FE06
 0054FDF2    mov         eax,dword ptr [ebp+8]
 0054FDF5    mov         eax,dword ptr [eax-14]
 0054FDF8    mov         edx,dword ptr [edi]
 0054FDFA    cmp         eax,dword ptr [edx+14C]
>0054FE00    je          005502EE
 0054FE06    mov         eax,dword ptr [ebp+8]
 0054FE09    cmp         dword ptr [eax-18],1FFFFFFF
>0054FE10    je          005502EE
 0054FE16    mov         eax,dword ptr [edi]
 0054FE18    mov         eax,dword ptr [eax+68]
 0054FE1B    mov         dword ptr [ebp-20],eax
 0054FE1E    mov         eax,dword ptr [ebp-20]
 0054FE21    mov         esi,dword ptr [eax+280]
 0054FE27    mov         eax,dword ptr [ebp-20]
 0054FE2A    cmp         byte ptr [eax+270],0
>0054FE31    je          005501AB
 0054FE37    mov         eax,dword ptr [edi]
 0054FE39    cmp         byte ptr [eax+116],0
>0054FE40    jne         0054FE60
 0054FE42    mov         eax,dword ptr [edi]
 0054FE44    cmp         byte ptr [eax+117],0
>0054FE4B    je          005501AB
 0054FE51    mov         eax,dword ptr [edi]
 0054FE53    cmp         byte ptr [eax+119],1
>0054FE5A    je          005501AB
 0054FE60    mov         eax,dword ptr [ebp+8]
 0054FE63    mov         edx,dword ptr [eax-18]
 0054FE66    mov         eax,dword ptr [edi]
 0054FE68    call        TCustomSeries.GetAreaBrushColor
 0054FE6D    mov         edx,eax
 0054FE6F    mov         eax,dword ptr [esi+10]
 0054FE72    call        TBrush.SetColor
 0054FE77    mov         eax,dword ptr [esi+10]
 0054FE7A    call        TBrush.GetColor
 0054FE7F    mov         dword ptr [ebp-18],eax
 0054FE82    mov         eax,dword ptr [edi]
 0054FE84    mov         edx,dword ptr [eax+120]
 0054FE8A    mov         eax,esi
 0054FE8C    call        TTeeCanvas.AssignVisiblePen
 0054FE91    mov         eax,dword ptr [edi]
 0054FE93    mov         eax,dword ptr [eax+120]
 0054FE99    cmp         byte ptr [eax+21],0
>0054FE9D    je          0054FEAA
 0054FE9F    mov         edx,dword ptr [esi+0C]
 0054FEA2    mov         eax,dword ptr [ebp-20]
 0054FEA5    call        TCustomTeePanel.CheckPenWidth
 0054FEAA    mov         eax,dword ptr [edi]
 0054FEAC    mov         dl,byte ptr [eax+119]
 0054FEB2    mov         eax,dword ptr [esi+10]
 0054FEB5    call        TBrush.SetStyle
 0054FEBA    mov         eax,dword ptr [ebp+8]
 0054FEBD    mov         eax,dword ptr [eax-10]
 0054FEC0    mov         dword ptr [ebp-9],eax
 0054FEC3    mov         eax,dword ptr [ebp+8]
 0054FEC6    mov         eax,dword ptr [eax-14]
 0054FEC9    mov         dword ptr [ebp-5],eax
 0054FECC    mov         eax,dword ptr [edi]
 0054FECE    mov         eax,dword ptr [eax+148]
 0054FED4    mov         dword ptr [ebp-11],eax
 0054FED7    mov         eax,dword ptr [edi]
 0054FED9    mov         ebx,dword ptr [eax+14C]
 0054FEDF    mov         dword ptr [ebp-0D],ebx
 0054FEE2    mov         eax,dword ptr [edi]
 0054FEE4    cmp         byte ptr [eax+128],0
>0054FEEB    je          00550035
 0054FEF1    mov         eax,dword ptr [edi]
 0054FEF3    cmp         byte ptr [eax+118],0
>0054FEFA    je          0054FF98
 0054FF00    mov         eax,dword ptr [edi]
 0054FF02    cmp         byte ptr [eax+115],0
>0054FF09    je          0054FF2A
 0054FF0B    mov         eax,dword ptr [esi+10]
 0054FF0E    call        TBrush.GetColor
 0054FF13    mov         edx,dword ptr ds:[6E9CD8]
 0054FF19    mov         dl,byte ptr [edx]
 0054FF1B    call        ApplyDark
 0054FF20    mov         edx,eax
 0054FF22    mov         eax,dword ptr [esi+10]
 0054FF25    call        TBrush.SetColor
 0054FF2A    mov         eax,dword ptr [ebp+8]
 0054FF2D    mov         eax,dword ptr [eax-14]
 0054FF30    push        eax
 0054FF31    mov         eax,dword ptr [edi]
 0054FF33    mov         eax,dword ptr [eax+0FC]
 0054FF39    push        eax
 0054FF3A    mov         eax,dword ptr [edi]
 0054FF3C    mov         eax,dword ptr [eax+104]
 0054FF42    push        eax
 0054FF43    mov         ecx,ebx
 0054FF45    mov         edx,dword ptr [ebp-11]
 0054FF48    mov         eax,esi
 0054FF4A    mov         ebx,dword ptr [eax]
 0054FF4C    call        dword ptr [ebx+114]
 0054FF52    mov         eax,dword ptr [edi]
 0054FF54    cmp         byte ptr [eax+115],0
>0054FF5B    je          0054FF68
 0054FF5D    mov         edx,dword ptr [ebp-18]
 0054FF60    mov         eax,dword ptr [esi+10]
 0054FF63    call        TBrush.SetColor
 0054FF68    mov         eax,dword ptr [edi]
 0054FF6A    mov         eax,dword ptr [eax+148]
 0054FF70    push        eax
 0054FF71    mov         eax,dword ptr [edi]
 0054FF73    mov         eax,dword ptr [eax+0FC]
 0054FF79    push        eax
 0054FF7A    mov         eax,dword ptr [edi]
 0054FF7C    mov         eax,dword ptr [eax+104]
 0054FF82    push        eax
 0054FF83    mov         ecx,dword ptr [ebp-5]
 0054FF86    mov         edx,dword ptr [ebp-9]
 0054FF89    mov         eax,esi
 0054FF8B    mov         ebx,dword ptr [eax]
 0054FF8D    call        dword ptr [ebx+110]
>0054FF93    jmp         005501AB
 0054FF98    mov         eax,dword ptr [ebp+8]
 0054FF9B    mov         eax,dword ptr [eax-10]
 0054FF9E    push        eax
 0054FF9F    mov         eax,dword ptr [edi]
 0054FFA1    mov         eax,dword ptr [eax+0FC]
 0054FFA7    push        eax
 0054FFA8    mov         eax,dword ptr [edi]
 0054FFAA    mov         eax,dword ptr [eax+104]
 0054FFB0    push        eax
 0054FFB1    mov         ecx,ebx
 0054FFB3    mov         edx,dword ptr [ebp-11]
 0054FFB6    mov         eax,esi
 0054FFB8    mov         ebx,dword ptr [eax]
 0054FFBA    call        dword ptr [ebx+110]
 0054FFC0    mov         eax,dword ptr [edi]
 0054FFC2    cmp         byte ptr [eax+115],0
>0054FFC9    je          0054FFEB
 0054FFCB    mov         ebx,dword ptr [esi+10]
 0054FFCE    mov         eax,ebx
 0054FFD0    call        TBrush.GetColor
 0054FFD5    mov         edx,dword ptr ds:[6E9CD8]
 0054FFDB    mov         dl,byte ptr [edx]
 0054FFDD    call        ApplyDark
 0054FFE2    mov         edx,eax
 0054FFE4    mov         eax,ebx
 0054FFE6    call        TBrush.SetColor
 0054FFEB    mov         eax,dword ptr [edi]
 0054FFED    mov         eax,dword ptr [eax+14C]
 0054FFF3    push        eax
 0054FFF4    mov         eax,dword ptr [edi]
 0054FFF6    mov         eax,dword ptr [eax+0FC]
 0054FFFC    push        eax
 0054FFFD    mov         eax,dword ptr [edi]
 0054FFFF    mov         eax,dword ptr [eax+104]
 00550005    push        eax
 00550006    mov         ecx,dword ptr [ebp-5]
 00550009    mov         edx,dword ptr [ebp-9]
 0055000C    mov         eax,esi
 0055000E    mov         ebx,dword ptr [eax]
 00550010    call        dword ptr [ebx+114]
 00550016    mov         eax,dword ptr [edi]
 00550018    cmp         byte ptr [eax+115],0
>0055001F    je          005501AB
 00550025    mov         edx,dword ptr [ebp-18]
 00550028    mov         eax,dword ptr [esi+10]
 0055002B    call        TBrush.SetColor
>00550030    jmp         005501AB
 00550035    mov         eax,dword ptr [edi]
 00550037    mov         eax,dword ptr [eax+11C]
 0055003D    test        eax,eax
>0055003F    jle         005500D5
 00550045    mov         edx,dword ptr [edi]
 00550047    cmp         byte ptr [edx+116],0
>0055004E    jne         005500D5
 00550054    mov         edx,dword ptr [ebp-9]
 00550057    mov         dword ptr [ebp-40],edx
 0055005A    mov         edx,dword ptr [ebp-5]
 0055005D    mov         dword ptr [ebp-3C],edx
 00550060    mov         edx,dword ptr [ebp-11]
 00550063    mov         dword ptr [ebp-38],edx
 00550066    mov         edx,dword ptr [ebp-0D]
 00550069    mov         dword ptr [ebp-34],edx
 0055006C    mov         edx,dword ptr [ebp-11]
 0055006F    mov         dword ptr [ebp-30],edx
 00550072    mov         edx,eax
 00550074    add         edx,dword ptr [ebp-0D]
 00550077    mov         dword ptr [ebp-2C],edx
 0055007A    mov         edx,dword ptr [ebp-9]
 0055007D    mov         dword ptr [ebp-28],edx
 00550080    add         eax,dword ptr [ebp-5]
 00550083    mov         dword ptr [ebp-24],eax
 00550086    mov         eax,dword ptr [edi]
 00550088    mov         eax,dword ptr [eax+0FC]
 0055008E    push        eax
 0055008F    mov         ecx,eax
 00550091    lea         edx,[ebp-40]
 00550094    mov         eax,esi
 00550096    mov         ebx,dword ptr [eax]
 00550098    call        dword ptr [ebx+100]
 0055009E    mov         eax,dword ptr [ebp+8]
 005500A1    cmp         byte ptr [eax-9],0
>005500A5    je          005500D5
 005500A7    mov         eax,dword ptr [edi]
 005500A9    mov         eax,dword ptr [eax+11C]
 005500AF    add         eax,dword ptr [ebp-5]
 005500B2    push        eax
 005500B3    mov         eax,dword ptr [edi]
 005500B5    mov         eax,dword ptr [eax+0FC]
 005500BB    push        eax
 005500BC    mov         eax,dword ptr [edi]
 005500BE    mov         eax,dword ptr [eax+104]
 005500C4    push        eax
 005500C5    mov         ecx,dword ptr [ebp-5]
 005500C8    mov         edx,dword ptr [ebp-9]
 005500CB    mov         eax,esi
 005500CD    mov         ebx,dword ptr [eax]
 005500CF    call        dword ptr [ebx+114]
 005500D5    mov         eax,dword ptr [edi]
 005500D7    cmp         byte ptr [eax+115],0
>005500DE    je          005500EE
 005500E0    mov         eax,esi
 005500E2    mov         edx,dword ptr [eax]
 005500E4    call        dword ptr [edx+98]
 005500EA    test        al,al
>005500EC    je          005500F2
 005500EE    xor         eax,eax
>005500F0    jmp         005500F4
 005500F2    mov         al,1
 005500F4    mov         byte ptr [ebp-19],al
 005500F7    cmp         byte ptr [ebp-19],0
>005500FB    je          00550178
 005500FD    mov         edx,dword ptr [ebp-9]
 00550100    sub         edx,dword ptr [ebp-11]
 00550103    test        edx,edx
>00550105    je          00550178
 00550107    mov         eax,dword ptr [edi]
 00550109    fld         qword ptr [eax+158]
 0055010F    fcomp       dword ptr ds:[550370]
 00550115    fnstsw      al
 00550117    sahf
>00550118    je          00550178
 0055011A    mov         eax,dword ptr [ebp-0D]
 0055011D    sub         eax,dword ptr [ebp-5]
 00550120    mov         dword ptr [ebp-44],eax
 00550123    fild        dword ptr [ebp-44]
 00550126    mov         dword ptr [ebp-48],edx
 00550129    fild        dword ptr [ebp-48]
 0055012C    fdivp       st(1),st
 0055012E    mov         eax,dword ptr [edi]
 00550130    fcomp       qword ptr [eax+158]
 00550136    fnstsw      al
 00550138    sahf
>00550139    jbe         00550178
 0055013B    mov         ebx,dword ptr [esi+10]
 0055013E    mov         eax,ebx
 00550140    call        TBrush.GetColor
 00550145    mov         edx,dword ptr ds:[6E9CD8]
 0055014B    mov         dl,byte ptr [edx]
 0055014D    call        ApplyDark
 00550152    mov         edx,eax
 00550154    mov         eax,ebx
 00550156    call        TBrush.SetColor
 0055015B    mov         eax,dword ptr [edi]
 0055015D    mov         eax,dword ptr [eax+11C]
 00550163    test        eax,eax
>00550165    jle         00550178
 00550167    mov         edx,dword ptr [edi]
 00550169    cmp         byte ptr [edx+116],0
>00550170    jne         00550178
 00550172    add         dword ptr [ebp-5],eax
 00550175    add         dword ptr [ebp-0D],eax
 00550178    mov         eax,dword ptr [edi]
 0055017A    mov         eax,dword ptr [eax+0FC]
 00550180    push        eax
 00550181    mov         eax,dword ptr [edi]
 00550183    mov         eax,dword ptr [eax+104]
 00550189    push        eax
 0055018A    lea         ecx,[ebp-11]
 0055018D    lea         edx,[ebp-9]
 00550190    mov         eax,esi
 00550192    mov         ebx,dword ptr [eax]
 00550194    call        dword ptr [ebx+0F8]
 0055019A    cmp         byte ptr [ebp-19],0
>0055019E    je          005501AB
 005501A0    mov         edx,dword ptr [ebp-18]
 005501A3    mov         eax,dword ptr [esi+10]
 005501A6    call        TBrush.SetColor
 005501AB    mov         eax,dword ptr [edi]
 005501AD    cmp         byte ptr [eax+116],0
>005501B4    je          00550228
 005501B6    mov         eax,dword ptr [ebp+8]
 005501B9    mov         edx,dword ptr [eax-18]
 005501BC    mov         eax,dword ptr [edi]
 005501BE    call        TCustomSeries.GetAreaBrushColor
 005501C3    mov         edx,eax
 005501C5    mov         eax,dword ptr [esi+10]
 005501C8    call        TBrush.SetColor
 005501CD    mov         eax,dword ptr [edi]
 005501CF    mov         edx,dword ptr [eax+110]
 005501D5    mov         eax,esi
 005501D7    call        TTeeCanvas.AssignVisiblePen
 005501DC    mov         eax,dword ptr [esi+0C]
 005501DF    call        TPen.GetColor
 005501E4    cmp         eax,20000000
>005501E9    je          005501F9
 005501EB    mov         eax,dword ptr [edi]
 005501ED    mov         eax,dword ptr [eax+110]
 005501F3    cmp         byte ptr [eax+21],0
>005501F7    jne         00550207
 005501F9    mov         eax,dword ptr [ebp+8]
 005501FC    mov         edx,dword ptr [eax-18]
 005501FF    mov         eax,dword ptr [esi+0C]
 00550202    call        TPen.SetColor
 00550207    mov         eax,dword ptr [ebp+8]
 0055020A    push        eax
 0055020B    mov         eax,dword ptr [esi+10]
 0055020E    call        TBrush.GetColor
 00550213    mov         edx,eax
 00550215    mov         eax,dword ptr [edi]
 00550217    mov         al,byte ptr [eax+108]
 0055021D    call        InternalDrawArea
 00550222    pop         ecx
>00550223    jmp         005502EE
 00550228    mov         eax,dword ptr [ebp-20]
 0055022B    cmp         byte ptr [eax+270],0
>00550232    jne         005502EE
 00550238    mov         eax,dword ptr [edi]
 0055023A    cmp         byte ptr [eax+117],0
>00550241    je          005502EE
 00550247    mov         eax,dword ptr [ebp+8]
 0055024A    mov         ecx,dword ptr [eax-18]
 0055024D    mov         eax,dword ptr [ebp-20]
 00550250    mov         edx,dword ptr [eax+280]
 00550256    mov         eax,dword ptr [edi]
 00550258    call        TCustomSeries.LinePrepareCanvas
 0055025D    mov         eax,dword ptr [edi]
 0055025F    cmp         byte ptr [eax+128],0
>00550266    je          005502C6
 00550268    mov         eax,dword ptr [edi]
 0055026A    cmp         byte ptr [eax+118],0
>00550271    je          00550293
 00550273    mov         eax,dword ptr [ebp+8]
 00550276    mov         eax,dword ptr [eax-14]
 00550279    push        eax
 0055027A    mov         eax,dword ptr [edi]
 0055027C    mov         ecx,dword ptr [eax+14C]
 00550282    mov         eax,dword ptr [edi]
 00550284    mov         edx,dword ptr [eax+148]
 0055028A    mov         eax,esi
 0055028C    mov         ebx,dword ptr [eax]
 0055028E    call        dword ptr [ebx+74]
>00550291    jmp         005502B1
 00550293    mov         eax,dword ptr [edi]
 00550295    mov         eax,dword ptr [eax+14C]
 0055029B    push        eax
 0055029C    mov         eax,dword ptr [ebp+8]
 0055029F    mov         ecx,dword ptr [eax-10]
 005502A2    mov         eax,dword ptr [edi]
 005502A4    mov         edx,dword ptr [eax+148]
 005502AA    mov         eax,esi
 005502AC    mov         ebx,dword ptr [eax]
 005502AE    call        dword ptr [ebx+6C]
 005502B1    mov         eax,dword ptr [ebp+8]
 005502B4    mov         ecx,dword ptr [eax-14]
 005502B7    mov         eax,dword ptr [ebp+8]
 005502BA    mov         edx,dword ptr [eax-10]
 005502BD    mov         eax,esi
 005502BF    mov         ebx,dword ptr [eax]
 005502C1    call        dword ptr [ebx+44]
>005502C4    jmp         005502EE
 005502C6    mov         eax,dword ptr [ebp+8]
 005502C9    mov         eax,dword ptr [eax-10]
 005502CC    push        eax
 005502CD    mov         eax,dword ptr [ebp+8]
 005502D0    mov         eax,dword ptr [eax-14]
 005502D3    push        eax
 005502D4    mov         eax,dword ptr [edi]
 005502D6    mov         ecx,dword ptr [eax+14C]
 005502DC    mov         eax,dword ptr [edi]
 005502DE    mov         edx,dword ptr [eax+148]
 005502E4    mov         eax,esi
 005502E6    mov         ebx,dword ptr [eax]
 005502E8    call        dword ptr [ebx+84]
 005502EE    mov         eax,dword ptr [edi]
 005502F0    mov         eax,dword ptr [eax+124]
 005502F6    mov         al,byte ptr [eax+24]
 005502F9    and         al,byte ptr [ebp-1]
>005502FC    je          00550369
 005502FE    mov         eax,dword ptr [edi]
 00550300    mov         eax,dword ptr [eax+150]
 00550306    cmp         eax,1FFFFFFF
>0055030B    je          00550330
 0055030D    push        eax
 0055030E    mov         eax,dword ptr [ebp+8]
 00550311    mov         eax,dword ptr [eax-8]
 00550314    dec         eax
 00550315    push        eax
 00550316    mov         eax,dword ptr [edi]
 00550318    mov         ecx,dword ptr [eax+14C]
 0055031E    mov         eax,dword ptr [edi]
 00550320    mov         edx,dword ptr [eax+148]
 00550326    mov         eax,dword ptr [edi]
 00550328    mov         ebx,dword ptr [eax]
 0055032A    call        dword ptr [ebx+150]
 00550330    mov         eax,dword ptr [ebp+8]
 00550333    cmp         byte ptr [eax-9],0
>00550337    je          00550369
 00550339    mov         eax,dword ptr [ebp+8]
 0055033C    cmp         dword ptr [eax-18],1FFFFFFF
>00550343    je          00550369
 00550345    mov         eax,dword ptr [ebp+8]
 00550348    mov         eax,dword ptr [eax-18]
 0055034B    push        eax
 0055034C    mov         eax,dword ptr [ebp+8]
 0055034F    mov         eax,dword ptr [eax-8]
 00550352    push        eax
 00550353    mov         eax,dword ptr [ebp+8]
 00550356    mov         ecx,dword ptr [eax-14]
 00550359    mov         eax,dword ptr [ebp+8]
 0055035C    mov         edx,dword ptr [eax-10]
 0055035F    mov         eax,dword ptr [edi]
 00550361    mov         ebx,dword ptr [eax]
 00550363    call        dword ptr [ebx+150]
 00550369    pop         edi
 0055036A    pop         esi
 0055036B    pop         ebx
 0055036C    mov         esp,ebp
 0055036E    pop         ebp
 0055036F    ret
*}
end;

//00550374
procedure TCustomSeries.DrawValue(ValueIndex:Integer);
begin
{*
 00550374    push        ebp
 00550375    mov         ebp,esp
 00550377    add         esp,0FFFFFFE8
 0055037A    push        ebx
 0055037B    push        esi
 0055037C    push        edi
 0055037D    mov         dword ptr [ebp-8],edx
 00550380    mov         dword ptr [ebp-4],eax
 00550383    lea         esi,[ebp-4]
 00550386    mov         eax,dword ptr [esi]
 00550388    mov         eax,dword ptr [eax+68]
 0055038B    mov         ebx,dword ptr [eax+280]
 00550391    mov         edx,dword ptr [ebp-8]
 00550394    mov         eax,dword ptr [esi]
 00550396    mov         ecx,dword ptr [eax]
 00550398    call        dword ptr [ecx+5C]
 0055039B    mov         dword ptr [ebp-18],eax
 0055039E    mov         edx,dword ptr [ebp-8]
 005503A1    mov         eax,dword ptr [esi]
 005503A3    mov         ecx,dword ptr [eax]
 005503A5    call        dword ptr [ecx+0E4]
 005503AB    mov         dword ptr [ebp-10],eax
 005503AE    mov         edx,dword ptr [ebp-8]
 005503B1    mov         eax,dword ptr [esi]
 005503B3    mov         ecx,dword ptr [eax]
 005503B5    call        dword ptr [ecx+0E8]
 005503BB    mov         dword ptr [ebp-14],eax
 005503BE    cmp         dword ptr [ebp-10],0FFFF8001
>005503C5    jle         00550647
 005503CB    cmp         dword ptr [ebp-10],7FFF
>005503D2    jge         00550647
 005503D8    cmp         dword ptr [ebp-14],0FFFF8001
>005503DF    jle         00550647
 005503E5    cmp         dword ptr [ebp-14],7FFF
>005503EC    jge         00550647
 005503F2    xor         edx,edx
 005503F4    mov         eax,dword ptr [ebx+0C]
 005503F7    call        TPen.SetColor
 005503FC    mov         edx,dword ptr [ebp-18]
 005503FF    mov         eax,dword ptr [ebx+10]
 00550402    call        TBrush.SetColor
 00550407    mov         eax,dword ptr [esi]
 00550409    cmp         dword ptr [eax+150],1FFFFFFF
>00550413    jne         0055042B
 00550415    mov         eax,dword ptr [esi]
 00550417    mov         edx,dword ptr [ebp-10]
 0055041A    mov         dword ptr [eax+148],edx
 00550420    mov         eax,dword ptr [esi]
 00550422    mov         edx,dword ptr [ebp-14]
 00550425    mov         dword ptr [eax+14C],edx
 0055042B    mov         eax,dword ptr [esi]
 0055042D    mov         eax,dword ptr [eax+5C]
 00550430    cmp         eax,dword ptr [ebp-8]
 00550433    sete        byte ptr [ebp-9]
 00550437    mov         edx,dword ptr [ebp-8]
 0055043A    mov         eax,dword ptr [esi]
 0055043C    mov         ecx,dword ptr [eax]
 0055043E    call        dword ptr [ecx+154]
 00550444    mov         edx,dword ptr [esi]
 00550446    mov         dword ptr [edx+140],eax
 0055044C    mov         eax,dword ptr [esi]
 0055044E    mov         eax,dword ptr [eax+4C]
 00550451    cmp         eax,dword ptr [ebp-8]
>00550454    jne         00550618
 0055045A    mov         eax,dword ptr [esi]
 0055045C    cmp         byte ptr [eax+115],0
>00550463    je          005504A2
 00550465    mov         eax,dword ptr [esi]
 00550467    mov         edi,dword ptr [eax+68]
 0055046A    cmp         dword ptr [edi+338],0
>00550471    je          0055048E
 00550473    fild        dword ptr [edi+33C]
 00550479    fild        dword ptr [edi+338]
 0055047F    fdivp       st(1),st
 00550481    fabs
 00550483    mov         eax,dword ptr [esi]
 00550485    fstp        qword ptr [eax+158]
 0055048B    wait
>0055048C    jmp         005504A2
 0055048E    mov         eax,dword ptr [esi]
 00550490    xor         edx,edx
 00550492    mov         dword ptr [eax+158],edx
 00550498    mov         dword ptr [eax+15C],3FF00000
 005504A2    cmp         dword ptr [ebp-8],0
>005504A6    jle         00550598
 005504AC    mov         eax,dword ptr [esi]
 005504AE    cmp         byte ptr [eax+116],0
>005504B5    je          005504FE
 005504B7    mov         edx,dword ptr [ebp-8]
 005504BA    dec         edx
 005504BB    mov         eax,dword ptr [esi]
 005504BD    mov         ecx,dword ptr [eax]
 005504BF    call        dword ptr [ecx+0E4]
 005504C5    mov         edx,dword ptr [esi]
 005504C7    mov         dword ptr [edx+148],eax
 005504CD    mov         edx,dword ptr [ebp-8]
 005504D0    dec         edx
 005504D1    mov         eax,dword ptr [esi]
 005504D3    mov         ecx,dword ptr [eax]
 005504D5    call        dword ptr [ecx+0E8]
 005504DB    mov         edx,dword ptr [esi]
 005504DD    mov         dword ptr [edx+14C],eax
 005504E3    mov         edx,dword ptr [ebp-8]
 005504E6    dec         edx
 005504E7    mov         eax,dword ptr [esi]
 005504E9    mov         ecx,dword ptr [eax]
 005504EB    call        dword ptr [ecx+154]
 005504F1    mov         edx,dword ptr [esi]
 005504F3    mov         dword ptr [edx+144],eax
>005504F9    jmp         00550580
 005504FE    mov         eax,dword ptr [esi]
 00550500    mov         eax,dword ptr [eax+50]
 00550503    cmp         byte ptr [eax+8D],0
>0055050A    je          00550521
 0055050C    mov         eax,dword ptr [esi]
 0055050E    mov         eax,dword ptr [eax+68]
 00550511    mov         eax,dword ptr [eax+28E]
 00550517    mov         edx,dword ptr [esi]
 00550519    mov         dword ptr [edx+148],eax
>0055051F    jmp         00550534
 00550521    mov         eax,dword ptr [esi]
 00550523    mov         eax,dword ptr [eax+68]
 00550526    mov         eax,dword ptr [eax+286]
 0055052C    mov         edx,dword ptr [esi]
 0055052E    mov         dword ptr [edx+148],eax
 00550534    mov         eax,dword ptr [esi]
 00550536    cmp         byte ptr [eax+128],0
>0055053D    je          00550557
 0055053F    mov         edx,dword ptr [ebp-8]
 00550542    dec         edx
 00550543    mov         eax,dword ptr [esi]
 00550545    mov         ecx,dword ptr [eax]
 00550547    call        dword ptr [ecx+0E8]
 0055054D    mov         edx,dword ptr [esi]
 0055054F    mov         dword ptr [edx+14C],eax
>00550555    jmp         00550580
 00550557    push        ebp
 00550558    mov         eax,dword ptr [esi]
 0055055A    mov         edx,dword ptr [eax+148]
 00550560    mov         eax,dword ptr [esi]
 00550562    call        TChartSeries.XScreenToValue
 00550567    add         esp,0FFFFFFF8
 0055056A    fstp        qword ptr [esp]
 0055056D    wait
 0055056E    mov         eax,dword ptr [ebp-8]
 00550571    dec         eax
 00550572    call        CalcYPosLeftRight
 00550577    pop         ecx
 00550578    mov         edx,dword ptr [esi]
 0055057A    mov         dword ptr [edx+14C],eax
 00550580    mov         edx,dword ptr [ebp-8]
 00550583    dec         edx
 00550584    mov         eax,dword ptr [esi]
 00550586    call        TChartSeries.IsNull
 0055058B    test        al,al
>0055058D    jne         00550598
 0055058F    push        ebp
 00550590    xor         eax,eax
 00550592    call        DrawPoint
 00550597    pop         ecx
 00550598    cmp         byte ptr [ebp-9],0
>0055059C    je          005505C4
 0055059E    mov         eax,dword ptr [esi]
 005505A0    mov         eax,dword ptr [eax+124]
 005505A6    cmp         byte ptr [eax+24],0
>005505AA    je          005505C4
 005505AC    mov         eax,dword ptr [ebp-18]
 005505AF    push        eax
 005505B0    mov         eax,dword ptr [ebp-8]
 005505B3    push        eax
 005505B4    mov         ecx,dword ptr [ebp-14]
 005505B7    mov         edx,dword ptr [ebp-10]
 005505BA    mov         eax,dword ptr [esi]
 005505BC    mov         edi,dword ptr [eax]
 005505BE    call        dword ptr [edi+150]
 005505C4    mov         eax,ebx
 005505C6    mov         edx,dword ptr [eax]
 005505C8    call        dword ptr [edx+98]
 005505CE    test        al,al
>005505D0    je          00550621
 005505D2    mov         eax,dword ptr [esi]
 005505D4    cmp         byte ptr [eax+116],0
>005505DB    je          00550621
 005505DD    mov         eax,dword ptr [esi]
 005505DF    mov         eax,dword ptr [eax+68]
 005505E2    cmp         byte ptr [eax+270],0
>005505E9    je          00550621
 005505EB    mov         eax,dword ptr [esi]
 005505ED    mov         eax,dword ptr [eax+140]
 005505F3    push        eax
 005505F4    mov         eax,dword ptr [esi]
 005505F6    mov         eax,dword ptr [eax+0FC]
 005505FC    push        eax
 005505FD    mov         eax,dword ptr [esi]
 005505FF    mov         eax,dword ptr [eax+104]
 00550605    push        eax
 00550606    mov         ecx,dword ptr [ebp-14]
 00550609    mov         edx,dword ptr [ebp-10]
 0055060C    mov         eax,ebx
 0055060E    mov         ebx,dword ptr [eax]
 00550610    call        dword ptr [ebx+114]
>00550616    jmp         00550621
 00550618    push        ebp
 00550619    mov         al,1
 0055061B    call        DrawPoint
 00550620    pop         ecx
 00550621    mov         eax,dword ptr [esi]
 00550623    mov         edx,dword ptr [ebp-10]
 00550626    mov         dword ptr [eax+148],edx
 0055062C    mov         eax,dword ptr [esi]
 0055062E    mov         edx,dword ptr [ebp-14]
 00550631    mov         dword ptr [eax+14C],edx
 00550637    mov         eax,dword ptr [esi]
 00550639    mov         eax,dword ptr [eax+140]
 0055063F    mov         edx,dword ptr [esi]
 00550641    mov         dword ptr [edx+144],eax
 00550647    mov         eax,dword ptr [esi]
 00550649    mov         edx,dword ptr [ebp-18]
 0055064C    mov         dword ptr [eax+150],edx
 00550652    pop         edi
 00550653    pop         esi
 00550654    pop         ebx
 00550655    mov         esp,ebp
 00550657    pop         ebp
 00550658    ret
*}
end;

//0055065C
procedure TCustomSeries.DrawPointer(AX:Integer; AY:Integer; AColor:TColor; ValueIndex:Integer);
begin
{*
 0055065C    push        ebp
 0055065D    mov         ebp,esp
 0055065F    add         esp,0FFFFFFF8
 00550662    push        ebx
 00550663    mov         dword ptr [ebp-8],ecx
 00550666    mov         dword ptr [ebp-4],edx
 00550669    mov         ebx,eax
 0055066B    mov         edx,dword ptr [ebp+0C]
 0055066E    mov         eax,dword ptr [ebx+124]
 00550674    call        TSeriesPointer.PrepareCanvas
 00550679    cmp         word ptr [ebx+13A],0
>00550681    je          00550696
 00550683    mov         ecx,dword ptr [ebp+8]
 00550686    mov         edx,ebx
 00550688    mov         eax,dword ptr [ebx+13C]
 0055068E    call        dword ptr [ebx+138]
>00550694    jmp         0055069F
 00550696    mov         eax,dword ptr [ebx+124]
 0055069C    mov         al,byte ptr [eax+1C]
 0055069F    mov         edx,dword ptr [ebp+0C]
 005506A2    push        edx
 005506A3    push        eax
 005506A4    mov         ecx,dword ptr [ebp-8]
 005506A7    mov         edx,dword ptr [ebp-4]
 005506AA    mov         eax,dword ptr [ebx+124]
 005506B0    call        TSeriesPointer.Draw
 005506B5    pop         ebx
 005506B6    pop         ecx
 005506B7    pop         ecx
 005506B8    pop         ebp
 005506B9    ret         8
*}
end;

//005506BC
function TCustomSeries.GetEditorClass:AnsiString;
begin
{*
 005506BC    push        ebx
 005506BD    mov         ebx,edx
 005506BF    mov         eax,ebx
 005506C1    mov         edx,5506D8;'TCustomSeriesEditor'
 005506C6    call        @LStrAsg
 005506CB    pop         ebx
 005506CC    ret
*}
end;

//005506EC
procedure TCustomSeries.CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);
begin
{*
 005506EC    push        ebx
 005506ED    push        esi
 005506EE    push        edi
 005506EF    mov         edi,ecx
 005506F1    mov         esi,edx
 005506F3    mov         ebx,eax
 005506F5    mov         ecx,edi
 005506F7    mov         edx,esi
 005506F9    mov         eax,ebx
 005506FB    call        TChartSeries.CalcHorizMargins
 00550700    mov         ecx,edi
 00550702    mov         edx,esi
 00550704    mov         eax,dword ptr [ebx+124]
 0055070A    call        TSeriesPointer.CalcHorizMargins
 0055070F    cmp         byte ptr [ebx+128],0
>00550716    je          0055074D
 00550718    cmp         byte ptr [ebx+117],0
>0055071F    je          0055074D
 00550721    mov         eax,dword ptr [ebx+120]
 00550727    call        TPen.GetWidth
 0055072C    mov         edx,eax
 0055072E    mov         eax,dword ptr [esi]
 00550730    call        0056EDD0
 00550735    mov         dword ptr [esi],eax
 00550737    mov         eax,dword ptr [ebx+120]
 0055073D    call        TPen.GetWidth
 00550742    mov         edx,eax
 00550744    mov         eax,dword ptr [edi]
 00550746    call        0056EDD0
 0055074B    mov         dword ptr [edi],eax
 0055074D    pop         edi
 0055074E    pop         esi
 0055074F    pop         ebx
 00550750    ret
*}
end;

//00550754
procedure TCustomSeries.CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);
begin
{*
 00550754    push        ebx
 00550755    push        esi
 00550756    push        edi
 00550757    mov         esi,ecx
 00550759    mov         edi,edx
 0055075B    mov         ebx,eax
 0055075D    mov         ecx,esi
 0055075F    mov         edx,edi
 00550761    mov         eax,ebx
 00550763    call        TChartSeries.CalcVerticalMargins
 00550768    mov         ecx,esi
 0055076A    mov         edx,edi
 0055076C    mov         eax,dword ptr [ebx+124]
 00550772    call        TSeriesPointer.CalcVerticalMargins
 00550777    cmp         byte ptr [ebx+128],0
>0055077E    je          005507B6
 00550780    cmp         byte ptr [ebx+117],0
>00550787    je          005507B6
 00550789    mov         eax,dword ptr [ebx+120]
 0055078F    call        TPen.GetWidth
 00550794    mov         edx,eax
 00550796    mov         eax,dword ptr [edi]
 00550798    call        0056EDD0
 0055079D    mov         dword ptr [edi],eax
 0055079F    mov         eax,dword ptr [ebx+120]
 005507A5    call        TPen.GetWidth
 005507AA    mov         edx,eax
 005507AC    inc         edx
 005507AD    mov         eax,dword ptr [esi]
 005507AF    call        0056EDD0
 005507B4    mov         dword ptr [esi],eax
 005507B6    mov         eax,dword ptr [ebx+11C]
 005507BC    test        eax,eax
>005507BE    jle         005507CF
 005507C0    cmp         byte ptr [ebx+116],0
>005507C7    jne         005507CF
 005507C9    cmp         eax,dword ptr [esi]
>005507CB    jle         005507CF
 005507CD    mov         dword ptr [esi],eax
 005507CF    pop         edi
 005507D0    pop         esi
 005507D1    pop         ebx
 005507D2    ret
*}
end;

//005507D4
function TCustomSeries.GetOriginPos(ValueIndex:Integer):Integer;
begin
{*
 005507D4    mov         eax,dword ptr [eax+54]
 005507D7    mov         eax,dword ptr [eax+0D8]
 005507DD    ret
*}
end;

//005507E0
procedure TLineSeries.SetDark3D(Value:Boolean);
begin
{*
 005507E0    lea         ecx,[eax+115];TLineSeries.FDark3D:Boolean
 005507E6    xchg        ecx,edx
 005507E8    call        TChartSeries.SetIntegerProperty
 005507ED    ret
*}
end;

//005507F0
constructor TLineSeries.Create(AOwner:TComponent);
begin
{*
 005507F0    push        ebx
 005507F1    push        esi
 005507F2    test        dl,dl
>005507F4    je          005507FE
 005507F6    add         esp,0FFFFFFF0
 005507F9    call        @ClassCreate
 005507FE    mov         ebx,edx
 00550800    mov         esi,eax
 00550802    xor         edx,edx
 00550804    mov         eax,esi
 00550806    call        TCustomSeries.Create
 0055080B    mov         byte ptr [esi+117],1
 00550812    mov         byte ptr [esi+0FA],0
 00550819    mov         eax,dword ptr [esi+124]
 0055081F    xor         edx,edx
 00550821    call        TSeriesPointer.SetVisible
 00550826    mov         eax,esi
 00550828    test        bl,bl
>0055082A    je          0055083B
 0055082C    call        @AfterConstruction
 00550831    pop         dword ptr fs:[0]
 00550838    add         esp,0C
 0055083B    mov         eax,esi
 0055083D    pop         esi
 0055083E    pop         ebx
 0055083F    ret
*}
end;

//00550840
procedure TLineSeries.PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);
begin
{*
 00550840    push        ebp
 00550841    mov         ebp,esp
 00550843    push        ebx
 00550844    mov         ebx,eax
 00550846    mov         eax,dword ptr [ebx+68]
 00550849    mov         eax,dword ptr [eax+280]
 0055084F    mov         edx,dword ptr [ebx+120]
 00550855    call        TTeeCanvas.AssignVisiblePen
 0055085A    mov         eax,dword ptr [ebp+8]
 0055085D    mov         dl,byte ptr [ebx+119]
 00550863    mov         byte ptr [eax],dl
 00550865    pop         ebx
 00550866    pop         ebp
 00550867    ret         4
*}
end;

//0055086C
procedure TLineSeries.Assign(Source:TPersistent);
begin
{*
 0055086C    push        ebx
 0055086D    push        esi
 0055086E    mov         esi,edx
 00550870    mov         ebx,eax
 00550872    mov         edx,esi
 00550874    mov         eax,ebx
 00550876    call        TCustomSeries.Assign
 0055087B    mov         eax,ebx
 0055087D    call        TObject.ClassType
 00550882    mov         edx,eax
 00550884    mov         eax,esi
 00550886    call        @IsClass
 0055088B    test        al,al
>0055088D    jne         0055089C
 0055088F    xor         edx,edx
 00550891    mov         eax,dword ptr [ebx+124]
 00550897    call        TSeriesPointer.SetVisible
 0055089C    mov         byte ptr [ebx+116],0
 005508A3    mov         byte ptr [ebx+117],1
 005508AA    pop         esi
 005508AB    pop         ebx
 005508AC    ret
*}
end;

//005508B0
constructor TPointSeries.Create(AOwner:TComponent);
begin
{*
 005508B0    push        ebx
 005508B1    push        esi
 005508B2    test        dl,dl
>005508B4    je          005508BE
 005508B6    add         esp,0FFFFFFF0
 005508B9    call        @ClassCreate
 005508BE    mov         ebx,edx
 005508C0    mov         esi,eax
 005508C2    xor         edx,edx
 005508C4    mov         eax,esi
 005508C6    call        TCustomSeries.Create
 005508CB    mov         byte ptr [esi+117],0
 005508D2    mov         eax,dword ptr [esi+64]
 005508D5    xor         edx,edx
 005508D7    call        TSeriesMarks.SetArrowLength
 005508DC    mov         byte ptr [esi+114],0
 005508E3    mov         eax,dword ptr [esi+124]
 005508E9    mov         dl,1
 005508EB    call        TSeriesPointer.SetVisible
 005508F0    mov         eax,esi
 005508F2    test        bl,bl
>005508F4    je          00550905
 005508F6    call        @AfterConstruction
 005508FB    pop         dword ptr fs:[0]
 00550902    add         esp,0C
 00550905    mov         eax,esi
 00550907    pop         esi
 00550908    pop         ebx
 00550909    ret
*}
end;

//0055090C
procedure TPointSeries.Assign(Source:TPersistent);
begin
{*
 0055090C    push        ebx
 0055090D    mov         ebx,eax
 0055090F    mov         eax,ebx
 00550911    call        TCustomSeries.Assign
 00550916    mov         dl,1
 00550918    mov         eax,dword ptr [ebx+124]
 0055091E    call        TSeriesPointer.SetVisible
 00550923    mov         byte ptr [ebx+116],0
 0055092A    mov         byte ptr [ebx+117],0
 00550931    mov         byte ptr [ebx+114],0
 00550938    pop         ebx
 00550939    ret
*}
end;

//0055093C
function TPointSeries.GetEditorClass:AnsiString;
begin
{*
 0055093C    push        ebx
 0055093D    mov         ebx,edx
 0055093F    mov         eax,ebx
 00550941    mov         edx,550958;'TSeriesPointerEditor'
 00550946    call        @LStrAsg
 0055094B    pop         ebx
 0055094C    ret
*}
end;

//00550970
procedure TPointSeries.PrepareForGallery(IsEnabled:Boolean);
begin
{*
 00550970    push        ebx
 00550971    push        esi
 00550972    mov         ebx,eax
 00550974    mov         eax,ebx
 00550976    call        TChartSeries.PrepareForGallery
 0055097B    mov         edx,6
 00550980    mov         eax,dword ptr [ebx+124]
 00550986    call        TSeriesPointer.SetHorizSize
 0055098B    mov         edx,6
 00550990    mov         eax,dword ptr [ebx+124]
 00550996    call        TSeriesPointer.SetVertSize
 0055099B    mov         esi,dword ptr [ebx+68]
 0055099E    mov         eax,esi
 005509A0    call        TCustomAxisPanel.SeriesCount
 005509A5    dec         eax
>005509A6    jle         005509C5
 005509A8    mov         edx,1
 005509AD    mov         eax,esi
 005509AF    call        TCustomAxisPanel.GetSeries
 005509B4    cmp         ebx,eax
>005509B6    jne         005509C5
 005509B8    mov         dl,2
 005509BA    mov         eax,dword ptr [ebx+124]
 005509C0    call        TSeriesPointer.SetStyle
 005509C5    pop         esi
 005509C6    pop         ebx
 005509C7    ret
*}
end;

//005509C8
procedure TPointSeries.SetColorEachPoint(Value:Boolean);
begin
{*
 005509C8    push        ebx
 005509C9    push        esi
 005509CA    mov         ebx,edx
 005509CC    mov         esi,eax
 005509CE    mov         edx,ebx
 005509D0    mov         eax,esi
 005509D2    call        TChartSeries.SetColorEachPoint
 005509D7    test        bl,bl
>005509D9    je          005509EE
 005509DB    mov         eax,dword ptr [esi+124]
 005509E1    mov         eax,dword ptr [eax+8]
 005509E4    mov         edx,20000000
 005509E9    call        TBrush.SetColor
 005509EE    pop         esi
 005509EF    pop         ebx
 005509F0    ret
*}
end;

//005509F4
constructor TAreaSeries.Create(AOwner:TComponent);
begin
{*
 005509F4    push        ebx
 005509F5    push        esi
 005509F6    test        dl,dl
>005509F8    je          00550A02
 005509FA    add         esp,0FFFFFFF0
 005509FD    call        @ClassCreate
 00550A02    mov         ebx,edx
 00550A04    mov         esi,eax
 00550A06    xor         edx,edx
 00550A08    mov         eax,esi
 00550A0A    call        TCustomSeries.Create
 00550A0F    mov         byte ptr [esi+116],1
 00550A16    mov         byte ptr [esi+0FA],0
 00550A1D    mov         byte ptr [esi+160],0
 00550A24    mov         eax,dword ptr [esi+124]
 00550A2A    xor         edx,edx
 00550A2C    call        TSeriesPointer.SetVisible
 00550A31    mov         eax,esi
 00550A33    test        bl,bl
>00550A35    je          00550A46
 00550A37    call        @AfterConstruction
 00550A3C    pop         dword ptr fs:[0]
 00550A43    add         esp,0C
 00550A46    mov         eax,esi
 00550A48    pop         esi
 00550A49    pop         ebx
 00550A4A    ret
*}
end;

//00550A4C
procedure TAreaSeries.PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);
begin
{*
 00550A4C    push        ebp
 00550A4D    mov         ebp,esp
 00550A4F    push        ebx
 00550A50    push        esi
 00550A51    mov         esi,ecx
 00550A53    mov         ebx,eax
 00550A55    mov         eax,dword ptr [ebx+68]
 00550A58    mov         eax,dword ptr [eax+280]
 00550A5E    mov         eax,dword ptr [eax+10]
 00550A61    call        TBrush.GetColor
 00550A66    mov         edx,eax
 00550A68    mov         eax,ebx
 00550A6A    call        TCustomSeries.GetAreaBrushColor
 00550A6F    mov         dword ptr [esi],eax
 00550A71    mov         eax,dword ptr [ebx+68]
 00550A74    mov         eax,dword ptr [eax+280]
 00550A7A    mov         edx,dword ptr [ebx+110]
 00550A80    call        TTeeCanvas.AssignVisiblePen
 00550A85    mov         eax,dword ptr [ebp+8]
 00550A88    mov         dl,byte ptr [ebx+108]
 00550A8E    mov         byte ptr [eax],dl
 00550A90    pop         esi
 00550A91    pop         ebx
 00550A92    pop         ebp
 00550A93    ret         4
*}
end;

//00550A98
procedure TAreaSeries.Assign(Source:TPersistent);
begin
{*
 00550A98    push        ebx
 00550A99    push        esi
 00550A9A    mov         esi,edx
 00550A9C    mov         ebx,eax
 00550A9E    mov         eax,esi
 00550AA0    mov         edx,dword ptr ds:[54D0B8];TAreaSeries
 00550AA6    call        @IsClass
 00550AAB    test        al,al
>00550AAD    je          00550ABB
 00550AAF    mov         al,byte ptr [esi+160]
 00550AB5    mov         byte ptr [ebx+160],al
 00550ABB    mov         edx,esi
 00550ABD    mov         eax,ebx
 00550ABF    call        TCustomSeries.Assign
 00550AC4    mov         byte ptr [ebx+116],1
 00550ACB    mov         byte ptr [ebx+117],1
 00550AD2    mov         eax,ebx
 00550AD4    call        TObject.ClassType
 00550AD9    mov         edx,eax
 00550ADB    mov         eax,esi
 00550ADD    call        @IsClass
 00550AE2    test        al,al
>00550AE4    jne         00550AF3
 00550AE6    xor         edx,edx
 00550AE8    mov         eax,dword ptr [ebx+124]
 00550AEE    call        TSeriesPointer.SetVisible
 00550AF3    pop         esi
 00550AF4    pop         ebx
 00550AF5    ret
*}
end;

//00550AF8
procedure TAreaSeries.CalcZOrder;
begin
{*
 00550AF8    cmp         byte ptr [eax+160],0
>00550AFF    jne         00550B07
 00550B01    call        TChartSeries.CalcZOrder
 00550B06    ret
 00550B07    mov         edx,dword ptr [eax+68]
 00550B0A    mov         edx,dword ptr [edx+334]
 00550B10    mov         dword ptr [eax+0F4],edx
 00550B16    ret
*}
end;

//00550B18
function TAreaSeries.GetEditorClass:AnsiString;
begin
{*
 00550B18    push        ebx
 00550B19    mov         ebx,edx
 00550B1B    mov         eax,ebx
 00550B1D    mov         edx,550B34;'TAreaSeriesEditor'
 00550B22    call        @LStrAsg
 00550B27    pop         ebx
 00550B28    ret
*}
end;

//00550B48
procedure SetOtherMultiArea;
begin
{*
 00550B48    push        ebp
 00550B49    mov         ebp,esp
 00550B4B    push        ebx
 00550B4C    push        esi
 00550B4D    push        edi
 00550B4E    mov         eax,dword ptr [ebp+8]
 00550B51    mov         eax,dword ptr [eax-4]
 00550B54    mov         eax,dword ptr [eax+68]
 00550B57    test        eax,eax
>00550B59    je          00550BAF
 00550B5B    mov         edx,dword ptr [ebp+8]
 00550B5E    mov         edi,eax
 00550B60    mov         eax,edi
 00550B62    call        TCustomAxisPanel.SeriesCount
 00550B67    mov         esi,eax
 00550B69    dec         esi
 00550B6A    test        esi,esi
>00550B6C    jl          00550BAF
 00550B6E    inc         esi
 00550B6F    xor         ebx,ebx
 00550B71    mov         edx,ebx
 00550B73    mov         eax,edi
 00550B75    call        TCustomAxisPanel.GetSeries
 00550B7A    call        TObject.ClassType
 00550B7F    mov         edx,eax
 00550B81    mov         eax,dword ptr [ebp+8]
 00550B84    mov         eax,dword ptr [eax-4]
 00550B87    call        @IsClass
 00550B8C    test        al,al
>00550B8E    je          00550BAB
 00550B90    mov         edx,ebx
 00550B92    mov         eax,edi
 00550B94    call        TCustomAxisPanel.GetSeries
 00550B99    mov         edx,dword ptr [ebp+8]
 00550B9C    mov         edx,dword ptr [edx-4]
 00550B9F    mov         dl,byte ptr [edx+160]
 00550BA5    mov         byte ptr [eax+160],dl
 00550BAB    inc         ebx
 00550BAC    dec         esi
>00550BAD    jne         00550B71
 00550BAF    pop         edi
 00550BB0    pop         esi
 00550BB1    pop         ebx
 00550BB2    pop         ebp
 00550BB3    ret
*}
end;

//00550BB4
procedure TAreaSeries.SetMultiArea(Value:TMultiArea);
begin
{*
 00550BB4    push        ebp
 00550BB5    mov         ebp,esp
 00550BB7    push        ecx
 00550BB8    mov         dword ptr [ebp-4],eax
 00550BBB    mov         eax,dword ptr [ebp-4]
 00550BBE    cmp         dl,byte ptr [eax+160]
>00550BC4    je          00550BDE
 00550BC6    mov         eax,dword ptr [ebp-4]
 00550BC9    mov         byte ptr [eax+160],dl
 00550BCF    push        ebp
 00550BD0    call        SetOtherMultiArea
 00550BD5    pop         ecx
 00550BD6    mov         eax,dword ptr [ebp-4]
 00550BD9    call        TChartSeries.Repaint
 00550BDE    pop         ecx
 00550BDF    pop         ebp
 00550BE0    ret
*}
end;

//00550BE4
function TAreaSeries.InternalCalcStackedYPos(ValueIndex:Integer; Value:Double):Integer;
begin
{*
 00550BE4    push        ebp
 00550BE5    mov         ebp,esp
 00550BE7    add         esp,0FFFFFFF8
 00550BEA    push        ebx
 00550BEB    push        esi
 00550BEC    push        edi
 00550BED    mov         esi,edx
 00550BEF    mov         ebx,eax
 00550BF1    xor         ecx,ecx
 00550BF3    mov         edx,esi
 00550BF5    mov         eax,ebx
 00550BF7    mov         edi,dword ptr [eax]
 00550BF9    call        dword ptr [edi+100]
 00550BFF    fadd        qword ptr [ebp+8]
 00550C02    fstp        qword ptr [ebp+8]
 00550C05    wait
 00550C06    cmp         byte ptr [ebx+160],1
>00550C0D    jne         00550C2E
 00550C0F    push        dword ptr [ebp+0C]
 00550C12    push        dword ptr [ebp+8]
 00550C15    mov         eax,ebx
 00550C17    call        TChartSeries.CalcYPosValue
 00550C1C    mov         edx,eax
 00550C1E    mov         eax,dword ptr [ebx+54]
 00550C21    mov         eax,dword ptr [eax+0D8]
 00550C27    call        0056EDD8
>00550C2C    jmp         00550C6C
 00550C2E    mov         cl,1
 00550C30    mov         edx,esi
 00550C32    mov         eax,ebx
 00550C34    mov         esi,dword ptr [eax]
 00550C36    call        dword ptr [esi+100]
 00550C3C    fstp        qword ptr [ebp-8]
 00550C3F    wait
 00550C40    fld         qword ptr [ebp-8]
 00550C43    fcomp       dword ptr ds:[550C78]
 00550C49    fnstsw      al
 00550C4B    sahf
>00550C4C    je          00550C6A
 00550C4E    fld         qword ptr [ebp+8]
 00550C51    fmul        dword ptr ds:[550C7C]
 00550C57    fdiv        qword ptr [ebp-8]
 00550C5A    add         esp,0FFFFFFF8
 00550C5D    fstp        qword ptr [esp]
 00550C60    wait
 00550C61    mov         eax,ebx
 00550C63    call        TChartSeries.CalcYPosValue
>00550C68    jmp         00550C6C
 00550C6A    xor         eax,eax
 00550C6C    pop         edi
 00550C6D    pop         esi
 00550C6E    pop         ebx
 00550C6F    pop         ecx
 00550C70    pop         ecx
 00550C71    pop         ebp
 00550C72    ret         8
*}
end;

//00550C80
function TAreaSeries.GetOriginPos(ValueIndex:Integer):Integer;
begin
{*
 00550C80    cmp         byte ptr [eax+160],0
>00550C87    jne         00550C8F
 00550C89    call        TCustomSeries.GetOriginPos
 00550C8E    ret
 00550C8F    push        0
 00550C91    push        0
 00550C93    call        TAreaSeries.InternalCalcStackedYPos
 00550C98    ret
*}
end;

//00550C9C
function TAreaSeries.MaxYValue:Double;
begin
{*
 00550C9C    push        ebx
 00550C9D    push        esi
 00550C9E    push        edi
 00550C9F    push        ebp
 00550CA0    add         esp,0FFFFFFF0
 00550CA3    mov         ebx,eax
 00550CA5    cmp         byte ptr [ebx+160],2
>00550CAC    jne         00550CBD
 00550CAE    xor         eax,eax
 00550CB0    mov         dword ptr [esp],eax
 00550CB3    mov         dword ptr [esp+4],40590000
>00550CBB    jmp         00550D1E
 00550CBD    mov         eax,ebx
 00550CBF    call        TChartSeries.MaxYValue
 00550CC4    fstp        qword ptr [esp]
 00550CC7    wait
 00550CC8    cmp         byte ptr [ebx+160],1
>00550CCF    jne         00550D1E
 00550CD1    mov         eax,ebx
 00550CD3    call        TChartSeries.Count
 00550CD8    mov         edi,eax
 00550CDA    dec         edi
 00550CDB    test        edi,edi
>00550CDD    jl          00550D1E
 00550CDF    inc         edi
 00550CE0    xor         esi,esi
 00550CE2    push        dword ptr [esp+4]
 00550CE6    push        dword ptr [esp+4]
 00550CEA    xor         ecx,ecx
 00550CEC    mov         edx,esi
 00550CEE    mov         eax,ebx
 00550CF0    mov         ebp,dword ptr [eax]
 00550CF2    call        dword ptr [ebp+100]
 00550CF8    fstp        qword ptr [esp+10]
 00550CFC    wait
 00550CFD    mov         edx,esi
 00550CFF    mov         eax,ebx
 00550D01    mov         ecx,dword ptr [eax]
 00550D03    call        dword ptr [ecx+68]
 00550D06    fadd        qword ptr [esp+10]
 00550D0A    add         esp,0FFFFFFF8
 00550D0D    fstp        qword ptr [esp]
 00550D10    wait
 00550D11    call        MaxDouble
 00550D16    fstp        qword ptr [esp]
 00550D19    wait
 00550D1A    inc         esi
 00550D1B    dec         edi
>00550D1C    jne         00550CE2
 00550D1E    fld         qword ptr [esp]
 00550D21    add         esp,10
 00550D24    pop         ebp
 00550D25    pop         edi
 00550D26    pop         esi
 00550D27    pop         ebx
 00550D28    ret
*}
end;

//00550D2C
function TAreaSeries.MinYValue:Double;
begin
{*
 00550D2C    add         esp,0FFFFFFF8
 00550D2F    cmp         byte ptr [eax+160],2
>00550D36    jne         00550D43
 00550D38    xor         eax,eax
 00550D3A    mov         dword ptr [esp],eax
 00550D3D    mov         dword ptr [esp+4],eax
>00550D41    jmp         00550D4C
 00550D43    call        TChartSeries.MinYValue
 00550D48    fstp        qword ptr [esp]
 00550D4B    wait
 00550D4C    fld         qword ptr [esp]
 00550D4F    pop         ecx
 00550D50    pop         edx
 00550D51    ret
*}
end;

//00550D54
function TAreaSeries.CalcYPos(ValueIndex:Integer):Integer;
begin
{*
 00550D54    push        ebx
 00550D55    push        esi
 00550D56    mov         esi,edx
 00550D58    mov         ebx,eax
 00550D5A    cmp         byte ptr [ebx+160],0
>00550D61    jne         00550D6F
 00550D63    mov         edx,esi
 00550D65    mov         eax,ebx
 00550D67    call        TChartSeries.CalcYPos
 00550D6C    pop         esi
 00550D6D    pop         ebx
 00550D6E    ret
 00550D6F    mov         edx,esi
 00550D71    mov         eax,ebx
 00550D73    mov         ecx,dword ptr [eax]
 00550D75    call        dword ptr [ecx+68]
 00550D78    add         esp,0FFFFFFF8
 00550D7B    fstp        qword ptr [esp]
 00550D7E    wait
 00550D7F    mov         edx,esi
 00550D81    mov         eax,ebx
 00550D83    call        TAreaSeries.InternalCalcStackedYPos
 00550D88    pop         esi
 00550D89    pop         ebx
 00550D8A    ret
*}
end;

//00550D8C
constructor TCustomBarSeries.Create(AOwner:TComponent);
begin
{*
 00550D8C    push        ebp
 00550D8D    mov         ebp,esp
 00550D8F    push        ecx
 00550D90    push        ebx
 00550D91    push        esi
 00550D92    test        dl,dl
>00550D94    je          00550D9E
 00550D96    add         esp,0FFFFFFF0
 00550D99    call        @ClassCreate
 00550D9E    mov         byte ptr [ebp-1],dl
 00550DA1    mov         ebx,eax
 00550DA3    xor         edx,edx
 00550DA5    mov         eax,ebx
 00550DA7    call        TChartSeries.Create
 00550DAC    mov         eax,ebx
 00550DAE    call        TChartSeries.CreateChartPen
 00550DB3    mov         dword ptr [ebx+110],eax
 00550DB9    push        ebx
 00550DBA    mov         eax,dword ptr [ebx]
 00550DBC    mov         eax,dword ptr [eax+144]
 00550DC2    push        eax
 00550DC3    mov         dl,1
 00550DC5    mov         eax,[00555FDC];TChartBrush
 00550DCA    call        TChartBrush.Create
 00550DCF    mov         dword ptr [ebx+10C],eax
 00550DD5    mov         dword ptr [ebx+118],46
 00550DDF    mov         byte ptr [ebx+114],0
 00550DE6    mov         byte ptr [ebx+125],1
 00550DED    mov         byte ptr [ebx+11D],1
 00550DF4    mov         byte ptr [ebx+108],0
 00550DFB    mov         byte ptr [ebx+109],1
 00550E02    mov         eax,dword ptr [ebx+64]
 00550E05    mov         dl,1
 00550E07    call        TSeriesMarks.SetVisible
 00550E0C    mov         eax,dword ptr [ebx+64]
 00550E0F    mov         edx,14
 00550E14    call        TSeriesMarks.SetArrowLength
 00550E19    mov         byte ptr [ebx+11C],1
 00550E20    mov         byte ptr [ebx+124],1
 00550E27    mov         eax,ebx
 00550E29    mov         edx,dword ptr [eax]
 00550E2B    call        dword ptr [edx+104]
 00550E31    mov         esi,eax
 00550E33    lea         edx,[esi+28]
 00550E36    mov         eax,[006E9DC0]
 00550E3B    call        LoadResString
 00550E40    mov         byte ptr [esi+2C],0
 00550E44    mov         eax,ebx
 00550E46    cmp         byte ptr [ebp-1],0
>00550E4A    je          00550E5B
 00550E4C    call        @AfterConstruction
 00550E51    pop         dword ptr fs:[0]
 00550E58    add         esp,0C
 00550E5B    mov         eax,ebx
 00550E5D    pop         esi
 00550E5E    pop         ebx
 00550E5F    pop         ecx
 00550E60    pop         ebp
 00550E61    ret
*}
end;

//00550E64
destructor TCustomBarSeries.Destroy;
begin
{*
 00550E64    push        ebx
 00550E65    push        esi
 00550E66    call        @BeforeDestruction
 00550E6B    mov         ebx,edx
 00550E6D    mov         esi,eax
 00550E6F    mov         eax,dword ptr [esi+110]
 00550E75    call        TObject.Free
 00550E7A    mov         eax,dword ptr [esi+10C]
 00550E80    call        TBrush.GetBitmap
 00550E85    call        TObject.Free
 00550E8A    mov         eax,dword ptr [esi+10C]
 00550E90    call        TObject.Free
 00550E95    mov         edx,ebx
 00550E97    and         dl,0FC
 00550E9A    mov         eax,esi
 00550E9C    call        TChartSeries.Destroy
 00550EA1    test        bl,bl
>00550EA3    jle         00550EAC
 00550EA5    mov         eax,esi
 00550EA7    call        @ClassDestroy
 00550EAC    pop         esi
 00550EAD    pop         ebx
 00550EAE    ret
*}
end;

//00550EB0
procedure TCustomBarSeries.CalcZOrder;
begin
{*
 00550EB0    push        ebx
 00550EB1    push        esi
 00550EB2    push        edi
 00550EB3    push        ebp
 00550EB4    mov         ebx,eax
 00550EB6    cmp         byte ptr [ebx+11D],0
>00550EBD    jne         00550EC8
 00550EBF    mov         eax,ebx
 00550EC1    call        TChartSeries.CalcZOrder
>00550EC6    jmp         00550F3D
 00550EC8    or          ebp,0FFFFFFFF
 00550ECB    mov         eax,dword ptr [ebx+68]
 00550ECE    call        TCustomAxisPanel.SeriesCount
 00550ED3    mov         edi,eax
 00550ED5    dec         edi
 00550ED6    test        edi,edi
>00550ED8    jl          00550F29
 00550EDA    inc         edi
 00550EDB    xor         esi,esi
 00550EDD    mov         edx,esi
 00550EDF    mov         eax,dword ptr [ebx+68]
 00550EE2    call        TCustomAxisPanel.GetSeries
 00550EE7    cmp         byte ptr [eax+30],0
>00550EEB    je          00550F25
 00550EED    mov         edx,esi
 00550EEF    mov         eax,dword ptr [ebx+68]
 00550EF2    call        TCustomAxisPanel.GetSeries
 00550EF7    cmp         ebx,eax
>00550EF9    je          00550F29
 00550EFB    mov         edx,esi
 00550EFD    mov         eax,dword ptr [ebx+68]
 00550F00    call        TCustomAxisPanel.GetSeries
 00550F05    mov         edx,eax
 00550F07    mov         eax,ebx
 00550F09    call        TChartSeries.SameClass
 00550F0E    test        al,al
>00550F10    je          00550F25
 00550F12    mov         edx,esi
 00550F14    mov         eax,dword ptr [ebx+68]
 00550F17    call        TCustomAxisPanel.GetSeries
 00550F1C    call        TChartSeries.GetZOrder
 00550F21    mov         ebp,eax
>00550F23    jmp         00550F29
 00550F25    inc         esi
 00550F26    dec         edi
>00550F27    jne         00550EDD
 00550F29    cmp         ebp,0FFFFFFFF
>00550F2C    jne         00550F37
 00550F2E    mov         eax,ebx
 00550F30    call        TChartSeries.CalcZOrder
>00550F35    jmp         00550F3D
 00550F37    mov         dword ptr [ebx+0F4],ebp
 00550F3D    pop         ebp
 00550F3E    pop         edi
 00550F3F    pop         esi
 00550F40    pop         ebx
 00550F41    ret
*}
end;

//00550F44
{*function sub_00550F44:?;
begin
 00550F44    mov         eax,6
 00550F49    ret
end;*}

//00550F4C
procedure TCustomBarSeries.SetBarWidthPercent(Value:Integer);
begin
{*
 00550F4C    push        ebp
 00550F4D    mov         ebp,esp
 00550F4F    push        0
 00550F51    xor         ecx,ecx
 00550F53    push        ebp
 00550F54    push        550FAF
 00550F59    push        dword ptr fs:[ecx]
 00550F5C    mov         dword ptr fs:[ecx],esp
 00550F5F    cmp         edx,1
>00550F62    jl          00550F69
 00550F64    cmp         edx,64
>00550F67    jle         00550F8C
 00550F69    lea         edx,[ebp-4]
 00550F6C    mov         eax,[006E9D20]
 00550F71    call        LoadResString
 00550F76    mov         ecx,dword ptr [ebp-4]
 00550F79    mov         dl,1
 00550F7B    mov         eax,[0054D438];BarException
 00550F80    call        Exception.Create
 00550F85    call        @RaiseExcept
>00550F8A    jmp         00550F99
 00550F8C    lea         ecx,[eax+118]
 00550F92    xchg        ecx,edx
 00550F94    call        TChartSeries.SetBooleanProperty
 00550F99    xor         eax,eax
 00550F9B    pop         edx
 00550F9C    pop         ecx
 00550F9D    pop         ecx
 00550F9E    mov         dword ptr fs:[eax],edx
 00550FA1    push        550FB6
 00550FA6    lea         eax,[ebp-4]
 00550FA9    call        @LStrClr
 00550FAE    ret
>00550FAF    jmp         @HandleFinally
>00550FB4    jmp         00550FA6
 00550FB6    pop         ecx
 00550FB7    pop         ebp
 00550FB8    ret
*}
end;

//00550FBC
procedure TCustomBarSeries.SetOffsetPercent(Value:Integer);
begin
{*
 00550FBC    push        ebp
 00550FBD    mov         ebp,esp
 00550FBF    push        0
 00550FC1    xor         ecx,ecx
 00550FC3    push        ebp
 00550FC4    push        55101F
 00550FC9    push        dword ptr fs:[ecx]
 00550FCC    mov         dword ptr fs:[ecx],esp
 00550FCF    cmp         edx,0FFFFFF9C
>00550FD2    jl          00550FD9
 00550FD4    cmp         edx,64
>00550FD7    jle         00550FFC
 00550FD9    lea         edx,[ebp-4]
 00550FDC    mov         eax,[006E9D24];^gvar_0056EEE8
 00550FE1    call        LoadResString
 00550FE6    mov         ecx,dword ptr [ebp-4]
 00550FE9    mov         dl,1
 00550FEB    mov         eax,[0054D438];BarException
 00550FF0    call        Exception.Create;BarException.Create
 00550FF5    call        @RaiseExcept
>00550FFA    jmp         00551009
 00550FFC    lea         ecx,[eax+120];TCustomBarSeries.OffsetPercent:Integer
 00551002    xchg        ecx,edx
 00551004    call        TChartSeries.SetBooleanProperty
 00551009    xor         eax,eax
 0055100B    pop         edx
 0055100C    pop         ecx
 0055100D    pop         ecx
 0055100E    mov         dword ptr fs:[eax],edx
 00551011    push        551026
 00551016    lea         eax,[ebp-4]
 00551019    call        @LStrClr
 0055101E    ret
>0055101F    jmp         @HandleFinally
>00551024    jmp         00551016
 00551026    pop         ecx
 00551027    pop         ebp
 00551028    ret
*}
end;

//0055102C
procedure TBarSeries.SetCustomBarWidth(Value:Integer);
begin
{*
 0055102C    lea         ecx,[eax+148];TBarSeries.FCustomBarSize:Integer
 00551032    xchg        ecx,edx
 00551034    call        TChartSeries.SetBooleanProperty
 00551039    ret
*}
end;

//0055103C
procedure TCustomBarSeries.SetBarStyle(Value:TBarStyle);
begin
{*
 0055103C    cmp         dl,byte ptr [eax+114]
>00551042    je          0055104F
 00551044    mov         byte ptr [eax+114],dl
 0055104A    call        TChartSeries.Repaint
 0055104F    ret
*}
end;

//00551050
function TCustomBarSeries.BarOrderPos:Integer;
begin
{*
 00551050    push        ebx
 00551051    push        esi
 00551052    push        edi
 00551053    push        ebp
 00551054    push        ecx
 00551055    mov         ebp,eax
 00551057    mov         dword ptr [esp],1
 0055105E    mov         edi,dword ptr [ebp+68]
 00551061    mov         eax,edi
 00551063    call        TCustomAxisPanel.SeriesCount
 00551068    mov         esi,eax
 0055106A    dec         esi
 0055106B    test        esi,esi
>0055106D    jl          005510AB
 0055106F    inc         esi
 00551070    xor         ebx,ebx
 00551072    mov         edx,ebx
 00551074    mov         eax,edi
 00551076    call        TCustomAxisPanel.GetSeries
 0055107B    cmp         byte ptr [eax+30],0
>0055107F    je          005510A7
 00551081    mov         edx,ebx
 00551083    mov         eax,edi
 00551085    call        TCustomAxisPanel.GetSeries
 0055108A    cmp         ebp,eax
>0055108C    je          005510AB
 0055108E    mov         edx,ebx
 00551090    mov         eax,edi
 00551092    call        TCustomAxisPanel.GetSeries
 00551097    mov         edx,eax
 00551099    mov         eax,ebp
 0055109B    call        TChartSeries.SameClass
 005510A0    test        al,al
>005510A2    je          005510A7
 005510A4    inc         dword ptr [esp]
 005510A7    inc         ebx
 005510A8    dec         esi
>005510A9    jne         00551072
 005510AB    mov         eax,dword ptr [esp]
 005510AE    pop         edx
 005510AF    pop         ebp
 005510B0    pop         edi
 005510B1    pop         esi
 005510B2    pop         ebx
 005510B3    ret
*}
end;

//005510B4
{*function sub_005510B4:?;
begin
 005510B4    xor         eax,eax
 005510B6    ret
end;*}

//005510B8
procedure TCustomBarSeries.CalcBarWidth;
begin
{*
 005510B8    push        ebx
 005510B9    push        esi
 005510BA    push        edi
 005510BB    push        ebp
 005510BC    add         esp,0FFFFFFF4
 005510BF    mov         ebx,eax
 005510C1    mov         eax,dword ptr [ebx+148]
 005510C7    test        eax,eax
>005510C9    je          005510D6
 005510CB    mov         dword ptr [ebx+14C],eax
>005510D1    jmp         00551226
 005510D6    mov         dword ptr [esp],1
 005510DD    mov         eax,ebx
 005510DF    call        TChartSeries.Count
 005510E4    mov         edi,eax
 005510E6    mov         eax,dword ptr [ebx+68]
 005510E9    test        eax,eax
>005510EB    je          00551179
 005510F1    mov         esi,eax
 005510F3    cmp         byte ptr [ebx+11D],1
>005510FA    jne         0055116D
 005510FC    xor         eax,eax
 005510FE    mov         dword ptr [esp],eax
 00551101    or          edi,0FFFFFFFF
 00551104    mov         eax,esi
 00551106    call        TCustomAxisPanel.SeriesCount
 0055110B    dec         eax
 0055110C    test        eax,eax
>0055110E    jl          0055116D
 00551110    inc         eax
 00551111    mov         dword ptr [esp+4],eax
 00551115    xor         ebp,ebp
 00551117    mov         edx,ebp
 00551119    mov         eax,esi
 0055111B    call        TCustomAxisPanel.GetSeries
 00551120    cmp         byte ptr [eax+30],0
>00551124    je          00551166
 00551126    mov         edx,ebp
 00551128    mov         eax,esi
 0055112A    call        TCustomAxisPanel.GetSeries
 0055112F    mov         edx,eax
 00551131    mov         eax,ebx
 00551133    call        TChartSeries.SameClass
 00551138    test        al,al
>0055113A    je          00551166
 0055113C    inc         dword ptr [esp]
 0055113F    cmp         edi,0FFFFFFFF
>00551142    je          00551156
 00551144    mov         edx,ebp
 00551146    mov         eax,esi
 00551148    call        TCustomAxisPanel.GetSeries
 0055114D    call        TChartSeries.Count
 00551152    cmp         edi,eax
>00551154    jge         00551166
 00551156    mov         edx,ebp
 00551158    mov         eax,esi
 0055115A    call        TCustomAxisPanel.GetSeries
 0055115F    call        TChartSeries.Count
 00551164    mov         edi,eax
 00551166    inc         ebp
 00551167    dec         dword ptr [esp+4]
>0055116B    jne         00551117
 0055116D    mov         eax,dword ptr [esi+32C]
 00551173    test        eax,eax
>00551175    jle         00551179
 00551177    mov         edi,eax
 00551179    test        edi,edi
>0055117B    jle         0055121E
 00551181    cmp         byte ptr [ebx+124],0
>00551188    je          0055118B
 0055118A    inc         edi
 0055118B    mov         eax,ebx
 0055118D    mov         edx,dword ptr [eax]
 0055118F    call        dword ptr [edx+104]
 00551195    cmp         eax,dword ptr [ebx+84]
>0055119B    jne         005511A2
 0055119D    mov         esi,dword ptr [ebx+54]
>005511A0    jmp         005511A5
 005511A2    mov         esi,dword ptr [ebx+50]
 005511A5    cmp         byte ptr [ebx+108],0
>005511AC    je          005511CB
 005511AE    fld         dword ptr ds:[551230]
 005511B4    fadd        qword ptr [esi+10]
 005511B7    fsub        qword ptr [esi+18]
 005511BA    fild        dword ptr [esi+0DC]
 005511C0    fdivrp      st(1),st
 005511C2    call        @ROUND
 005511C7    mov         esi,eax
>005511C9    jmp         005511D6
 005511CB    mov         eax,dword ptr [esi+0DC]
 005511D1    cdq
 005511D2    idiv        eax,edi
 005511D4    mov         esi,eax
 005511D6    mov         eax,dword ptr [esp]
 005511D9    cdq
 005511DA    push        edx
 005511DB    push        eax
 005511DC    fild        dword ptr [ebx+118]
 005511E2    fld         tbyte ptr ds:[551234]
 005511E8    fmulp       st(1),st
 005511EA    mov         dword ptr [esp+10],esi
 005511EE    fild        dword ptr [esp+10]
 005511F2    fmulp       st(1),st
 005511F4    call        @ROUND
 005511F9    call        @_lldiv
 005511FE    mov         edi,eax
 00551200    mov         dword ptr [ebx+14C],edi
 00551206    and         edi,80000001
>0055120C    jns         00551213
 0055120E    dec         edi
 0055120F    or          edi,0FFFFFFFE
 00551212    inc         edi
 00551213    dec         edi
>00551214    jne         00551226
 00551216    inc         dword ptr [ebx+14C]
>0055121C    jmp         00551226
 0055121E    xor         eax,eax
 00551220    mov         dword ptr [ebx+14C],eax
 00551226    add         esp,0C
 00551229    pop         ebp
 0055122A    pop         edi
 0055122B    pop         esi
 0055122C    pop         ebx
 0055122D    ret
*}
end;

//00551240
function TCustomBarSeries.CalcMarkLength(ValueIndex:Integer):Integer;
begin
{*
 00551240    push        ebx
 00551241    push        esi
 00551242    push        edi
 00551243    mov         esi,edx
 00551245    mov         ebx,eax
 00551247    mov         eax,ebx
 00551249    call        TChartSeries.Count
 0055124E    test        eax,eax
>00551250    jle         00551299
 00551252    mov         eax,dword ptr [ebx+64]
 00551255    cmp         byte ptr [eax+28],0
>00551259    je          00551299
 0055125B    mov         eax,dword ptr [ebx+64]
 0055125E    mov         edx,dword ptr [eax+18]
 00551261    mov         eax,dword ptr [ebx+68]
 00551264    mov         ecx,dword ptr [eax]
 00551266    call        dword ptr [ecx+0D8]
 0055126C    mov         edx,esi
 0055126E    mov         eax,ebx
 00551270    mov         ecx,dword ptr [eax]
 00551272    call        dword ptr [ecx+14C]
 00551278    mov         edx,dword ptr [ebx+64]
 0055127B    add         eax,dword ptr [edx+8]
 0055127E    mov         esi,eax
 00551280    mov         eax,dword ptr [ebx+64]
 00551283    mov         edi,dword ptr [eax+14]
 00551286    cmp         byte ptr [edi+21],0
>0055128A    je          0055129B
 0055128C    mov         eax,edi
 0055128E    call        TPen.GetWidth
 00551293    add         eax,eax
 00551295    add         esi,eax
>00551297    jmp         0055129B
 00551299    xor         esi,esi
 0055129B    mov         eax,esi
 0055129D    pop         edi
 0055129E    pop         esi
 0055129F    pop         ebx
 005512A0    ret
*}
end;

//005512A4
procedure TCustomBarSeries.SetUseYOrigin(Value:Boolean);
begin
{*
 005512A4    lea         ecx,[eax+125];TCustomBarSeries.UseYOrigin:Boolean
 005512AA    xchg        ecx,edx
 005512AC    call        TChartSeries.SetIntegerProperty
 005512B1    ret
*}
end;

//005512B4
procedure TCustomBarSeries.SetSideMargins(Value:Boolean);
begin
{*
 005512B4    push        ebx
 005512B5    push        esi
 005512B6    push        edi
 005512B7    push        ebp
 005512B8    mov         ebx,eax
 005512BA    lea         eax,[ebx+124];TCustomBarSeries.SideMargins:Boolean
 005512C0    mov         ecx,edx
 005512C2    mov         edx,ebx
 005512C4    xchg        eax,edx
 005512C5    call        TChartSeries.SetIntegerProperty
 005512CA    mov         eax,dword ptr [ebx+68];TCustomBarSeries.ParentChart:TCustomAxisPanel
 005512CD    test        eax,eax
>005512CF    je          00551320
 005512D1    mov         edi,eax
 005512D3    mov         eax,edi
 005512D5    call        TCustomAxisPanel.SeriesCount
 005512DA    mov         ebp,eax
 005512DC    dec         ebp
 005512DD    test        ebp,ebp
>005512DF    jl          00551320
 005512E1    inc         ebp
 005512E2    xor         esi,esi
 005512E4    mov         edx,esi
 005512E6    mov         eax,edi
 005512E8    call        TCustomAxisPanel.GetSeries
 005512ED    cmp         ebx,eax
>005512EF    je          0055131C
 005512F1    mov         edx,esi
 005512F3    mov         eax,edi
 005512F5    call        TCustomAxisPanel.GetSeries
 005512FA    mov         edx,eax
 005512FC    mov         eax,ebx
 005512FE    call        TChartSeries.SameClass
 00551303    test        al,al
>00551305    je          0055131C
 00551307    mov         edx,esi
 00551309    mov         eax,edi
 0055130B    call        TCustomAxisPanel.GetSeries
 00551310    mov         dl,byte ptr [ebx+124];TCustomBarSeries.SideMargins:Boolean
 00551316    mov         byte ptr [eax+124],dl
 0055131C    inc         esi
 0055131D    dec         ebp
>0055131E    jne         005512E4
 00551320    pop         ebp
 00551321    pop         edi
 00551322    pop         esi
 00551323    pop         ebx
 00551324    ret
*}
end;

//00551328
procedure TCustomSeries.SetLineHeight(Value:Integer);
begin
{*
 00551328    lea         ecx,[eax+11C]
 0055132E    xchg        ecx,edx
 00551330    call        TChartSeries.SetIntegerProperty
 00551335    ret
*}
end;

//00551338
procedure TCustomBarSeries.PrepareForGallery(IsEnabled:Boolean);
begin
{*
 00551338    push        ebx
 00551339    mov         ebx,eax
 0055133B    mov         eax,ebx
 0055133D    call        TChartSeries.PrepareForGallery
 00551342    mov         edx,55
 00551347    mov         eax,ebx
 00551349    call        TCustomBarSeries.SetBarWidthPercent
 0055134E    xor         edx,edx
 00551350    mov         eax,ebx
 00551352    call        TCustomBarSeries.SetMultiBar
 00551357    pop         ebx
 00551358    ret
*}
end;

//0055135C
procedure TCustomBarSeries.SetOrigin(Value:Double; const Value:Double);
begin
{*
 0055135C    push        ebp
 0055135D    mov         ebp,esp
 0055135F    push        dword ptr [ebp+0C]
 00551362    push        dword ptr [ebp+8]
 00551365    lea         edx,[eax+128]
 0055136B    call        TChartSeries.SetDoubleProperty
 00551370    pop         ebp
 00551371    ret         8
*}
end;

//00551374
function TCustomBarSeries.BarSeriesCount:Integer;
begin
{*
 00551374    push        ebx
 00551375    push        esi
 00551376    push        edi
 00551377    push        ebp
 00551378    push        ecx
 00551379    mov         ebp,eax
 0055137B    cmp         byte ptr [ebp+11D],1
>00551382    jne         005513CB
 00551384    xor         eax,eax
 00551386    mov         dword ptr [esp],eax
 00551389    mov         esi,dword ptr [ebp+68]
 0055138C    mov         eax,esi
 0055138E    call        TCustomAxisPanel.SeriesCount
 00551393    mov         edi,eax
 00551395    dec         edi
 00551396    test        edi,edi
>00551398    jl          005513D2
 0055139A    inc         edi
 0055139B    xor         ebx,ebx
 0055139D    mov         edx,ebx
 0055139F    mov         eax,esi
 005513A1    call        TCustomAxisPanel.GetSeries
 005513A6    cmp         byte ptr [eax+30],0
>005513AA    je          005513C5
 005513AC    mov         edx,ebx
 005513AE    mov         eax,esi
 005513B0    call        TCustomAxisPanel.GetSeries
 005513B5    mov         edx,eax
 005513B7    mov         eax,ebp
 005513B9    call        TChartSeries.SameClass
 005513BE    test        al,al
>005513C0    je          005513C5
 005513C2    inc         dword ptr [esp]
 005513C5    inc         ebx
 005513C6    dec         edi
>005513C7    jne         0055139D
>005513C9    jmp         005513D2
 005513CB    mov         dword ptr [esp],1
 005513D2    mov         eax,dword ptr [esp]
 005513D5    pop         edx
 005513D6    pop         ebp
 005513D7    pop         edi
 005513D8    pop         esi
 005513D9    pop         ebx
 005513DA    ret
*}
end;

//005513DC
function TCustomBarSeries.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 005513DC    push        ebx
 005513DD    push        esi
 005513DE    push        edi
 005513DF    push        ebp
 005513E0    add         esp,0FFFFFFEC
 005513E3    mov         dword ptr [esp+4],ecx
 005513E7    mov         dword ptr [esp],edx
 005513EA    mov         ebx,eax
 005513EC    mov         eax,dword ptr [ebx+68]
 005513EF    test        eax,eax
>005513F1    je          00551410
 005513F3    mov         edx,dword ptr [ebx+0FC]
 005513F9    push        edx
 005513FA    lea         ecx,[esp+8]
 005513FE    lea         edx,[esp+4]
 00551402    mov         eax,dword ptr [eax+280]
 00551408    mov         esi,dword ptr [eax]
 0055140A    call        dword ptr [esi+0A0]
 00551410    mov         ecx,dword ptr [esp+4]
 00551414    mov         edx,dword ptr [esp]
 00551417    mov         eax,ebx
 00551419    call        TChartSeries.Clicked
 0055141E    mov         dword ptr [esp+8],eax
 00551422    cmp         dword ptr [esp+8],0FFFFFFFF
>00551427    jne         00551478
 00551429    cmp         dword ptr [ebx+4C],0FFFFFFFF
>0055142D    jle         00551478
 0055142F    cmp         dword ptr [ebx+5C],0FFFFFFFF
>00551433    jle         00551478
 00551435    mov         eax,dword ptr [esp]
 00551438    mov         dword ptr [esp+0C],eax
 0055143C    mov         eax,dword ptr [esp+4]
 00551440    mov         dword ptr [esp+10],eax
 00551444    mov         esi,dword ptr [ebx+4C]
 00551447    mov         edi,dword ptr [ebx+5C]
 0055144A    sub         edi,esi
>0055144C    jl          00551478
 0055144E    inc         edi
 0055144F    mov         eax,ebx
 00551451    call        TChartSeries.Count
 00551456    cmp         esi,eax
>00551458    jge         00551474
 0055145A    lea         ecx,[esp+0C]
 0055145E    mov         edx,esi
 00551460    mov         eax,ebx
 00551462    mov         ebp,dword ptr [eax]
 00551464    call        dword ptr [ebp+150]
 0055146A    test        al,al
>0055146C    je          00551474
 0055146E    mov         dword ptr [esp+8],esi
>00551472    jmp         00551478
 00551474    inc         esi
 00551475    dec         edi
>00551476    jne         0055144F
 00551478    mov         eax,dword ptr [esp+8]
 0055147C    add         esp,14
 0055147F    pop         ebp
 00551480    pop         edi
 00551481    pop         esi
 00551482    pop         ebx
 00551483    ret
*}
end;

//00551484
procedure TCustomBarSeries.SetOtherMultiBar;
begin
{*
 00551484    push        ebx
 00551485    push        esi
 00551486    push        edi
 00551487    push        ebp
 00551488    mov         ebx,eax
 0055148A    mov         eax,dword ptr [ebx+68]
 0055148D    test        eax,eax
>0055148F    je          005514D3
 00551491    mov         ebp,eax
 00551493    mov         eax,ebp
 00551495    call        TCustomAxisPanel.SeriesCount
 0055149A    mov         edi,eax
 0055149C    dec         edi
 0055149D    test        edi,edi
>0055149F    jl          005514D3
 005514A1    inc         edi
 005514A2    xor         esi,esi
 005514A4    mov         edx,esi
 005514A6    mov         eax,ebp
 005514A8    call        TCustomAxisPanel.GetSeries
 005514AD    mov         edx,eax
 005514AF    mov         eax,ebx
 005514B1    call        TChartSeries.SameClass
 005514B6    test        al,al
>005514B8    je          005514CF
 005514BA    mov         edx,esi
 005514BC    mov         eax,ebp
 005514BE    call        TCustomAxisPanel.GetSeries
 005514C3    mov         dl,byte ptr [ebx+11D]
 005514C9    mov         byte ptr [eax+11D],dl
 005514CF    inc         esi
 005514D0    dec         edi
>005514D1    jne         005514A4
 005514D3    pop         ebp
 005514D4    pop         edi
 005514D5    pop         esi
 005514D6    pop         ebx
 005514D7    ret
*}
end;

//005514D8
procedure TCustomBarSeries.SetMultiBar(Value:TMultiBar);
begin
{*
 005514D8    push        ebx
 005514D9    mov         ebx,eax
 005514DB    cmp         dl,byte ptr [ebx+11D]
>005514E1    je          005514F7
 005514E3    mov         byte ptr [ebx+11D],dl
 005514E9    mov         eax,ebx
 005514EB    call        TCustomBarSeries.SetOtherMultiBar
 005514F0    mov         eax,ebx
 005514F2    call        TChartSeries.Repaint
 005514F7    pop         ebx
 005514F8    ret
*}
end;

//005514FC
function TCustomBarSeries.InternalGetOriginPos(ValueIndex:Integer; DefaultOrigin:Integer):Integer;
begin
{*
 005514FC    push        ebx
 005514FD    push        esi
 005514FE    push        edi
 005514FF    push        ebp
 00551500    add         esp,0FFFFFFF0
 00551503    mov         edi,ecx
 00551505    mov         esi,edx
 00551507    mov         ebx,eax
 00551509    xor         ecx,ecx
 0055150B    mov         edx,esi
 0055150D    mov         eax,ebx
 0055150F    mov         ebp,dword ptr [eax]
 00551511    call        dword ptr [ebp+100]
 00551517    fstp        qword ptr [esp+8]
 0055151B    wait
 0055151C    mov         al,byte ptr [ebx+11D]
 00551522    sub         al,2
>00551524    je          0055152C
 00551526    dec         al
>00551528    je          0055153D
>0055152A    jmp         0055157E
 0055152C    push        dword ptr [esp+0C]
 00551530    push        dword ptr [esp+0C]
 00551534    mov         eax,ebx
 00551536    call        TChartSeries.CalcPosValue
>0055153B    jmp         0055159A
 0055153D    mov         cl,1
 0055153F    mov         edx,esi
 00551541    mov         eax,ebx
 00551543    mov         esi,dword ptr [eax]
 00551545    call        dword ptr [esi+100]
 0055154B    fstp        qword ptr [esp]
 0055154E    wait
 0055154F    fld         qword ptr [esp]
 00551552    fcomp       dword ptr ds:[5515A4]
 00551558    fnstsw      al
 0055155A    sahf
>0055155B    je          0055157A
 0055155D    fld         qword ptr [esp+8]
 00551561    fmul        dword ptr ds:[5515A8]
 00551567    fdiv        qword ptr [esp]
 0055156A    add         esp,0FFFFFFF8
 0055156D    fstp        qword ptr [esp]
 00551570    wait
 00551571    mov         eax,ebx
 00551573    call        TChartSeries.CalcPosValue
>00551578    jmp         0055159A
 0055157A    xor         eax,eax
>0055157C    jmp         0055159A
 0055157E    cmp         byte ptr [ebx+125],0
>00551585    je          00551598
 00551587    push        dword ptr [esp+0C]
 0055158B    push        dword ptr [esp+0C]
 0055158F    mov         eax,ebx
 00551591    call        TChartSeries.CalcPosValue
>00551596    jmp         0055159A
 00551598    mov         eax,edi
 0055159A    add         esp,10
 0055159D    pop         ebp
 0055159E    pop         edi
 0055159F    pop         esi
 005515A0    pop         ebx
 005515A1    ret
*}
end;

//005515AC
function TCustomBarSeries.PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double;
begin
{*
 005515AC    add         esp,0FFFFFFF0
 005515AF    mov         byte ptr [esp],cl
 005515B2    mov         cl,byte ptr [eax+11D]
 005515B8    cmp         cl,2
>005515BB    je          005515C2
 005515BD    cmp         cl,3
>005515C0    jne         005515D1
 005515C2    mov         cl,byte ptr [esp]
 005515C5    call        TChartSeries.PointOrigin
 005515CA    fstp        qword ptr [esp+8]
 005515CE    wait
>005515CF    jmp         005515E5
 005515D1    mov         edx,dword ptr [eax+128]
 005515D7    mov         dword ptr [esp+8],edx
 005515DB    mov         edx,dword ptr [eax+12C]
 005515E1    mov         dword ptr [esp+0C],edx
 005515E5    fld         qword ptr [esp+8]
 005515E9    add         esp,10
 005515EC    ret
*}
end;

//005515F0
procedure TCustomBarSeries.DrawLegendShape(ValueIndex:Integer; const Rect:TRect);
begin
{*
 005515F0    push        ebx
 005515F1    push        esi
 005515F2    push        edi
 005515F3    mov         edi,ecx
 005515F5    mov         esi,edx
 005515F7    mov         ebx,eax
 005515F9    mov         eax,dword ptr [ebx+10C]
 005515FF    call        TChartBrush.HasBitmap
 00551604    test        al,al
>00551606    je          00551626
 00551608    mov         eax,dword ptr [ebx+10C]
 0055160E    call        TBrush.GetBitmap
 00551613    mov         edx,eax
 00551615    mov         eax,dword ptr [ebx+68]
 00551618    mov         eax,dword ptr [eax+280]
 0055161E    mov         eax,dword ptr [eax+10]
 00551621    call        TBrush.SetBitmap
 00551626    mov         ecx,edi
 00551628    mov         edx,esi
 0055162A    mov         eax,ebx
 0055162C    call        TChartSeries.DrawLegendShape
 00551631    pop         edi
 00551632    pop         esi
 00551633    pop         ebx
 00551634    ret
*}
end;

//00551638
procedure TCustomBarSeries.PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);
begin
{*
 00551638    push        ebp
 00551639    mov         ebp,esp
 0055163B    push        ebx
 0055163C    push        esi
 0055163D    mov         esi,ecx
 0055163F    mov         ebx,eax
 00551641    mov         eax,dword ptr [ebx+68]
 00551644    mov         eax,dword ptr [eax+280]
 0055164A    mov         edx,dword ptr [ebx+110]
 00551650    call        TTeeCanvas.AssignVisiblePen
 00551655    mov         eax,dword ptr [ebx+10C]
 0055165B    call        TBrush.GetStyle
 00551660    mov         edx,dword ptr [ebp+8]
 00551663    mov         byte ptr [edx],al
 00551665    mov         eax,dword ptr [ebx+10C]
 0055166B    call        TBrush.GetColor
 00551670    cmp         eax,20000000
>00551675    jne         00551681
 00551677    mov         eax,dword ptr [ebx+68]
 0055167A    mov         eax,dword ptr [eax+70]
 0055167D    mov         dword ptr [esi],eax
>0055167F    jmp         0055168E
 00551681    mov         eax,dword ptr [ebx+10C]
 00551687    call        TBrush.GetColor
 0055168C    mov         dword ptr [esi],eax
 0055168E    pop         esi
 0055168F    pop         ebx
 00551690    pop         ebp
 00551691    ret         4
*}
end;

//00551694
procedure TCustomBarSeries.SetPenBrushBar(BarColor:TColor);
begin
{*
 00551694    push        ebx
 00551695    push        esi
 00551696    push        edi
 00551697    push        ebp
 00551698    mov         ebp,edx
 0055169A    mov         ebx,eax
 0055169C    mov         esi,dword ptr [ebx+68]
 0055169F    mov         edx,dword ptr [ebx+110]
 005516A5    mov         eax,dword ptr [esi+280]
 005516AB    call        TTeeCanvas.AssignVisiblePen
 005516B0    mov         eax,dword ptr [ebx+10C]
 005516B6    call        TChartBrush.HasBitmap
 005516BB    test        al,al
>005516BD    je          005516DC
 005516BF    mov         eax,dword ptr [ebx+10C]
 005516C5    call        TBrush.GetBitmap
 005516CA    mov         edx,eax
 005516CC    mov         eax,dword ptr [esi+280]
 005516D2    mov         eax,dword ptr [eax+10]
 005516D5    call        TBrush.SetBitmap
>005516DA    jmp         00551717
 005516DC    mov         eax,dword ptr [ebx+10C]
 005516E2    call        TBrush.GetColor
 005516E7    cmp         eax,20000000
>005516EC    jne         005516F3
 005516EE    mov         edi,dword ptr [esi+70]
>005516F1    jmp         00551700
 005516F3    mov         eax,dword ptr [ebx+10C]
 005516F9    call        TBrush.GetColor
 005516FE    mov         edi,eax
 00551700    push        edi
 00551701    mov         eax,dword ptr [ebx+10C]
 00551707    call        TBrush.GetStyle
 0055170C    mov         ecx,eax
 0055170E    mov         edx,ebp
 00551710    mov         eax,esi
 00551712    call        TCustomTeePanel.SetBrushCanvas
 00551717    pop         ebp
 00551718    pop         edi
 00551719    pop         esi
 0055171A    pop         ebx
 0055171B    ret
*}
end;

//0055171C
procedure TCustomBarSeries.BarRectangle(BarColor:TColor; ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer);
begin
{*
 0055171C    push        ebp
 0055171D    mov         ebp,esp
 0055171F    push        ecx
 00551720    push        ebx
 00551721    push        esi
 00551722    mov         dword ptr [ebp-4],ecx
 00551725    mov         esi,eax
 00551727    mov         eax,dword ptr [esi+68]
 0055172A    mov         ebx,dword ptr [eax+280]
 00551730    mov         eax,dword ptr [esi+10C]
 00551736    call        TBrush.GetStyle
 0055173B    test        al,al
>0055173D    jne         005517F9
 00551743    mov         eax,dword ptr [ebp+0C]
 00551746    cmp         eax,dword ptr [ebp-4]
>00551749    je          00551753
 0055174B    mov         eax,dword ptr [ebp+10]
 0055174E    cmp         eax,dword ptr [ebp+8]
>00551751    jne         00551795
 00551753    mov         eax,dword ptr [ebx+10]
 00551756    call        TBrush.GetColor
 0055175B    mov         edx,eax
 0055175D    mov         eax,dword ptr [ebx+0C]
 00551760    call        TPen.SetColor
 00551765    mov         eax,dword ptr [ebx+0C]
 00551768    call        TPen.GetStyle
 0055176D    cmp         al,5
>0055176F    jne         0055177B
 00551771    xor         edx,edx
 00551773    mov         eax,dword ptr [ebx+0C]
 00551776    call        TPen.SetStyle
 0055177B    mov         eax,dword ptr [ebp+0C]
 0055177E    push        eax
 0055177F    mov         eax,dword ptr [ebp+8]
 00551782    push        eax
 00551783    mov         ecx,dword ptr [ebp+10]
 00551786    mov         edx,dword ptr [ebp-4]
 00551789    mov         eax,ebx
 0055178B    mov         esi,dword ptr [eax]
 0055178D    call        dword ptr [esi+84]
>00551793    jmp         005517F9
 00551795    mov         eax,dword ptr [ebx+0C]
 00551798    call        TPen.GetWidth
 0055179D    mov         ecx,eax
 0055179F    mov         eax,dword ptr [ebp+0C]
 005517A2    sub         eax,dword ptr [ebp-4]
 005517A5    cdq
 005517A6    xor         eax,edx
 005517A8    sub         eax,edx
 005517AA    cmp         ecx,eax
>005517AC    jg          005517C7
 005517AE    mov         eax,dword ptr [ebx+0C]
 005517B1    call        TPen.GetWidth
 005517B6    mov         ecx,eax
 005517B8    mov         eax,dword ptr [ebp+8]
 005517BB    sub         eax,dword ptr [ebp+10]
 005517BE    cdq
 005517BF    xor         eax,edx
 005517C1    sub         eax,edx
 005517C3    cmp         ecx,eax
>005517C5    jle         005517F9
 005517C7    mov         eax,dword ptr [ebx+10]
 005517CA    call        TBrush.GetColor
 005517CF    mov         edx,eax
 005517D1    mov         eax,dword ptr [ebx+0C]
 005517D4    call        TPen.SetColor
 005517D9    mov         eax,dword ptr [ebx+0C]
 005517DC    call        TPen.GetStyle
 005517E1    cmp         al,5
>005517E3    jne         005517EF
 005517E5    xor         edx,edx
 005517E7    mov         eax,dword ptr [ebx+0C]
 005517EA    call        TPen.SetStyle
 005517EF    mov         dl,1
 005517F1    mov         eax,dword ptr [ebx+10]
 005517F4    call        TBrush.SetStyle
 005517F9    mov         eax,dword ptr [ebp+0C]
 005517FC    push        eax
 005517FD    mov         eax,dword ptr [ebp+8]
 00551800    push        eax
 00551801    mov         ecx,dword ptr [ebp+10]
 00551804    mov         edx,dword ptr [ebp-4]
 00551807    mov         eax,ebx
 00551809    mov         ebx,dword ptr [eax]
 0055180B    call        dword ptr [ebx+50]
 0055180E    pop         esi
 0055180F    pop         ebx
 00551810    pop         ecx
 00551811    pop         ebp
 00551812    ret         0C
*}
end;

//00551818
procedure TCustomSeries.SetAreaLinesPen(Value:TChartPen);
begin
{*
 00551818    mov         eax,dword ptr [eax+110]
 0055181E    mov         ecx,dword ptr [eax]
 00551820    call        dword ptr [ecx+8]
 00551823    ret
*}
end;

//00551824
function TCustomBarSeries.GetBarStyle(ValueIndex:Integer):TBarStyle;
begin
{*
 00551824    push        ebx
 00551825    push        ecx
 00551826    mov         cl,byte ptr [eax+114]
 0055182C    mov         byte ptr [esp],cl
 0055182F    cmp         word ptr [eax+132],0
>00551837    je          0055184C
 00551839    push        esp
 0055183A    mov         ebx,eax
 0055183C    mov         ecx,edx
 0055183E    mov         edx,eax
 00551840    mov         eax,dword ptr [ebx+134]
 00551846    call        dword ptr [ebx+130]
 0055184C    mov         al,byte ptr [esp]
 0055184F    pop         edx
 00551850    pop         ebx
 00551851    ret
*}
end;

//00551854
procedure TCustomBarSeries.SetBarBrush(Value:TChartBrush);
begin
{*
 00551854    mov         eax,dword ptr [eax+10C]
 0055185A    mov         ecx,dword ptr [eax]
 0055185C    call        dword ptr [ecx+8]
 0055185F    ret
*}
end;

//00551860
function TCustomBarSeries.GetEditorClass:AnsiString;
begin
{*
 00551860    push        ebx
 00551861    mov         ebx,edx
 00551863    mov         eax,ebx
 00551865    mov         edx,55187C;'TBarSeriesEditor'
 0055186A    call        @LStrAsg
 0055186F    pop         ebx
 00551870    ret
*}
end;

//00551890
function TCustomBarSeries.BarMargin:Integer;
begin
{*
 00551890    push        ebx
 00551891    mov         ebx,eax
 00551893    mov         eax,ebx
 00551895    call        TCustomBarSeries.BarSeriesCount
 0055189A    imul        dword ptr [ebx+14C]
 005518A0    cmp         byte ptr [ebx+124],0
>005518A7    jne         005518AB
 005518A9    shr         eax,1
 005518AB    pop         ebx
 005518AC    ret
*}
end;

//005518B0
function TCustomBarSeries.ApplyBarOffset(Position:Integer):Integer;
begin
{*
 005518B0    push        ebx
 005518B1    push        esi
 005518B2    push        edi
 005518B3    push        ecx
 005518B4    mov         ebx,eax
 005518B6    mov         esi,edx
 005518B8    mov         edi,dword ptr [ebx+120]
 005518BE    test        edi,edi
>005518C0    je          005518DE
 005518C2    imul        edi,dword ptr [ebx+14C]
 005518C9    mov         dword ptr [esp],edi
 005518CC    fild        dword ptr [esp]
 005518CF    fld         tbyte ptr ds:[5518E8]
 005518D5    fmulp       st(1),st
 005518D7    call        @ROUND
 005518DC    add         esi,eax
 005518DE    mov         eax,esi
 005518E0    pop         edx
 005518E1    pop         edi
 005518E2    pop         esi
 005518E3    pop         ebx
 005518E4    ret
*}
end;

//005518F4
procedure TCustomBarSeries.SetAutoMarkPosition(Value:Boolean);
begin
{*
 005518F4    lea         ecx,[eax+109];TCustomBarSeries.AutoMarkPosition:Boolean
 005518FA    xchg        ecx,edx
 005518FC    call        TChartSeries.SetIntegerProperty
 00551901    ret
*}
end;

//00551904
procedure TCustomBarSeries.SetAutoBarSize(Value:Boolean);
begin
{*
 00551904    lea         ecx,[eax+108];TCustomBarSeries.AutoBarSize:Boolean
 0055190A    xchg        ecx,edx
 0055190C    call        TChartSeries.SetIntegerProperty
 00551911    ret
*}
end;

//00551914
procedure TCustomBarSeries.Assign(Source:TPersistent);
begin
{*
 00551914    push        ebx
 00551915    push        esi
 00551916    push        edi
 00551917    mov         esi,edx
 00551919    mov         ebx,eax
 0055191B    mov         eax,esi
 0055191D    mov         edx,dword ptr ds:[54D5B0];TCustomBarSeries
 00551923    call        @IsClass
 00551928    test        al,al
>0055192A    je          005519D8
 00551930    mov         edi,esi
 00551932    mov         al,byte ptr [edi+109]
 00551938    mov         byte ptr [ebx+109],al
 0055193E    mov         eax,dword ptr [edi+118]
 00551944    mov         dword ptr [ebx+118],eax
 0055194A    mov         al,byte ptr [edi+114]
 00551950    mov         byte ptr [ebx+114],al
 00551956    mov         edx,dword ptr [edi+110]
 0055195C    mov         eax,dword ptr [ebx+110]
 00551962    mov         ecx,dword ptr [eax]
 00551964    call        dword ptr [ecx+8]
 00551967    mov         edx,dword ptr [edi+10C]
 0055196D    mov         eax,dword ptr [ebx+10C]
 00551973    mov         ecx,dword ptr [eax]
 00551975    call        dword ptr [ecx+8]
 00551978    mov         eax,dword ptr [edi+148]
 0055197E    mov         dword ptr [ebx+148],eax
 00551984    mov         al,byte ptr [edi+11C]
 0055198A    mov         byte ptr [ebx+11C],al
 00551990    mov         al,byte ptr [edi+11D]
 00551996    mov         byte ptr [ebx+11D],al
 0055199C    mov         eax,dword ptr [edi+120]
 005519A2    mov         dword ptr [ebx+120],eax
 005519A8    mov         eax,dword ptr [edi+128]
 005519AE    mov         dword ptr [ebx+128],eax
 005519B4    mov         eax,dword ptr [edi+12C]
 005519BA    mov         dword ptr [ebx+12C],eax
 005519C0    mov         al,byte ptr [edi+124]
 005519C6    mov         byte ptr [ebx+124],al
 005519CC    mov         al,byte ptr [edi+125]
 005519D2    mov         byte ptr [ebx+125],al
 005519D8    mov         edx,esi
 005519DA    mov         eax,ebx
 005519DC    call        TChartSeries.Assign
 005519E1    pop         edi
 005519E2    pop         esi
 005519E3    pop         ebx
 005519E4    ret
*}
end;

//005519E8
procedure TCustomBarSeries.AdjustGradientRectPen(var R:TRect);
begin
{*
 005519E8    push        ebx
 005519E9    push        esi
 005519EA    mov         ebx,edx
 005519EC    mov         esi,eax
 005519EE    inc         dword ptr [ebx]
 005519F0    inc         dword ptr [ebx+4]
 005519F3    mov         eax,dword ptr [esi+110]
 005519F9    call        TPen.GetWidth
 005519FE    dec         eax
 005519FF    sub         dword ptr [ebx+8],eax
 00551A02    mov         eax,dword ptr [esi+110]
 00551A08    call        TPen.GetWidth
 00551A0D    dec         eax
 00551A0E    sub         dword ptr [ebx+0C],eax
 00551A11    pop         esi
 00551A12    pop         ebx
 00551A13    ret
*}
end;

//00551A14
function TCustomBarSeries.MaxMandatoryValue(AList:TChartValueList; const Value:Double):Double;
begin
{*
 00551A14    push        ebp
 00551A15    mov         ebp,esp
 00551A17    add         esp,0FFFFFFDC
 00551A1A    push        ebx
 00551A1B    push        esi
 00551A1C    push        edi
 00551A1D    mov         dword ptr [ebp-4],edx
 00551A20    mov         ebx,eax
 00551A22    mov         al,byte ptr [ebx+11D]
 00551A28    cmp         al,3
>00551A2A    jne         00551A3D
 00551A2C    xor         eax,eax
 00551A2E    mov         dword ptr [ebp-10],eax
 00551A31    mov         dword ptr [ebp-0C],40590000
>00551A38    jmp         00551AC8
 00551A3D    mov         edx,dword ptr [ebp+8]
 00551A40    mov         dword ptr [ebp-10],edx
 00551A43    mov         edx,dword ptr [ebp+0C]
 00551A46    mov         dword ptr [ebp-0C],edx
 00551A49    cmp         al,2
>00551A4B    jne         00551A9F
 00551A4D    mov         eax,ebx
 00551A4F    call        TChartSeries.Count
 00551A54    dec         eax
 00551A55    test        eax,eax
>00551A57    jl          00551A9F
 00551A59    inc         eax
 00551A5A    mov         dword ptr [ebp-1C],eax
 00551A5D    xor         esi,esi
 00551A5F    xor         ecx,ecx
 00551A61    mov         edx,esi
 00551A63    mov         eax,ebx
 00551A65    mov         edi,dword ptr [eax]
 00551A67    call        dword ptr [edi+100]
 00551A6D    fstp        qword ptr [ebp-24]
 00551A70    wait
 00551A71    mov         edx,esi
 00551A73    mov         eax,dword ptr [ebp-4]
 00551A76    mov         ecx,dword ptr [eax]
 00551A78    call        dword ptr [ecx+0C]
 00551A7B    fadd        qword ptr [ebp-24]
 00551A7E    fstp        qword ptr [ebp-18]
 00551A81    wait
 00551A82    fld         qword ptr [ebp-18]
 00551A85    fcomp       qword ptr [ebp-10]
 00551A88    fnstsw      al
 00551A8A    sahf
>00551A8B    jbe         00551A99
 00551A8D    mov         eax,dword ptr [ebp-18]
 00551A90    mov         dword ptr [ebp-10],eax
 00551A93    mov         eax,dword ptr [ebp-14]
 00551A96    mov         dword ptr [ebp-0C],eax
 00551A99    inc         esi
 00551A9A    dec         dword ptr [ebp-1C]
>00551A9D    jne         00551A5F
 00551A9F    cmp         byte ptr [ebx+125],0
>00551AA6    je          00551AC8
 00551AA8    fld         qword ptr [ebp-10]
 00551AAB    fcomp       qword ptr [ebx+128]
 00551AB1    fnstsw      al
 00551AB3    sahf
>00551AB4    jae         00551AC8
 00551AB6    mov         eax,dword ptr [ebx+128]
 00551ABC    mov         dword ptr [ebp-10],eax
 00551ABF    mov         eax,dword ptr [ebx+12C]
 00551AC5    mov         dword ptr [ebp-0C],eax
 00551AC8    fld         qword ptr [ebp-10]
 00551ACB    pop         edi
 00551ACC    pop         esi
 00551ACD    pop         ebx
 00551ACE    mov         esp,ebp
 00551AD0    pop         ebp
 00551AD1    ret         8
*}
end;

//00551AD4
function TCustomBarSeries.MinMandatoryValue(const Value:Double):Double;
begin
{*
 00551AD4    push        ebp
 00551AD5    mov         ebp,esp
 00551AD7    add         esp,0FFFFFFF8
 00551ADA    mov         edx,eax
 00551ADC    cmp         byte ptr [edx+11D],3
>00551AE3    jne         00551AEF
 00551AE5    xor         eax,eax
 00551AE7    mov         dword ptr [ebp-8],eax
 00551AEA    mov         dword ptr [ebp-4],eax
>00551AED    jmp         00551B24
 00551AEF    mov         eax,dword ptr [ebp+8]
 00551AF2    mov         dword ptr [ebp-8],eax
 00551AF5    mov         eax,dword ptr [ebp+0C]
 00551AF8    mov         dword ptr [ebp-4],eax
 00551AFB    cmp         byte ptr [edx+125],0
>00551B02    je          00551B24
 00551B04    fld         qword ptr [ebp-8]
 00551B07    fcomp       qword ptr [edx+128]
 00551B0D    fnstsw      al
 00551B0F    sahf
>00551B10    jbe         00551B24
 00551B12    mov         eax,dword ptr [edx+128]
 00551B18    mov         dword ptr [ebp-8],eax
 00551B1B    mov         eax,dword ptr [edx+12C]
 00551B21    mov         dword ptr [ebp-4],eax
 00551B24    fld         qword ptr [ebp-8]
 00551B27    pop         ecx
 00551B28    pop         ecx
 00551B29    pop         ebp
 00551B2A    ret         8
*}
end;

//00551B30
procedure TCustomBarSeries.InternalApplyBarMargin(var MarginA:Integer; var MarginB:Integer);
begin
{*
 00551B30    push        ebx
 00551B31    push        esi
 00551B32    push        edi
 00551B33    mov         edi,ecx
 00551B35    mov         esi,edx
 00551B37    mov         ebx,eax
 00551B39    mov         eax,ebx
 00551B3B    call        TCustomBarSeries.CalcBarWidth
 00551B40    mov         eax,ebx
 00551B42    call        TCustomBarSeries.BarMargin
 00551B47    add         dword ptr [esi],eax
 00551B49    add         dword ptr [edi],eax
 00551B4B    pop         edi
 00551B4C    pop         esi
 00551B4D    pop         ebx
 00551B4E    ret
*}
end;

//00551B50
function TBarSeries.CalcXPos(ValueIndex:Integer):Integer;
begin
{*
 00551B50    push        ebx
 00551B51    push        esi
 00551B52    add         esp,0FFFFFFEC
 00551B55    mov         ebx,eax
 00551B57    mov         eax,ebx
 00551B59    call        TChartSeries.CalcXPos
 00551B5E    mov         esi,eax
 00551B60    cmp         byte ptr [ebx+11D],1
>00551B67    jne         00551BAD
 00551B69    mov         eax,ebx
 00551B6B    call        TCustomBarSeries.BarOrderPos
 00551B70    mov         dword ptr [esp],eax
 00551B73    fild        dword ptr [esp]
 00551B76    fstp        tbyte ptr [esp+4]
 00551B7A    wait
 00551B7B    mov         eax,ebx
 00551B7D    call        TCustomBarSeries.BarSeriesCount
 00551B82    mov         dword ptr [esp+10],eax
 00551B86    fild        dword ptr [esp+10]
 00551B8A    fmul        dword ptr ds:[551BCC]
 00551B90    fld         tbyte ptr [esp+4]
 00551B94    fsubrp      st(1),st
 00551B96    fsub        dword ptr ds:[551BD0]
 00551B9C    fild        dword ptr [ebx+14C]
 00551BA2    fmulp       st(1),st
 00551BA4    call        @ROUND
 00551BA9    add         esi,eax
>00551BAB    jmp         00551BB7
 00551BAD    mov         eax,dword ptr [ebx+14C]
 00551BB3    shr         eax,1
 00551BB5    sub         esi,eax
 00551BB7    mov         edx,esi
 00551BB9    mov         eax,ebx
 00551BBB    call        TCustomBarSeries.ApplyBarOffset
 00551BC0    mov         esi,eax
 00551BC2    mov         eax,esi
 00551BC4    add         esp,14
 00551BC7    pop         esi
 00551BC8    pop         ebx
 00551BC9    ret
*}
end;

//00551BD4
function TBarSeries.MaxYValue:Double;
begin
{*
 00551BD4    push        ebx
 00551BD5    add         esp,0FFFFFFF8
 00551BD8    mov         ebx,eax
 00551BDA    mov         eax,ebx
 00551BDC    call        TChartSeries.MaxYValue
 00551BE1    add         esp,0FFFFFFF8
 00551BE4    fstp        qword ptr [esp]
 00551BE7    wait
 00551BE8    mov         edx,dword ptr [ebx+8C]
 00551BEE    mov         eax,ebx
 00551BF0    call        TCustomBarSeries.MaxMandatoryValue
 00551BF5    fstp        qword ptr [esp]
 00551BF8    wait
 00551BF9    fld         qword ptr [esp]
 00551BFC    pop         ecx
 00551BFD    pop         edx
 00551BFE    pop         ebx
 00551BFF    ret
*}
end;

//00551C00
function TBarSeries.MinYValue:Double;
begin
{*
 00551C00    push        ebx
 00551C01    add         esp,0FFFFFFF8
 00551C04    mov         ebx,eax
 00551C06    mov         eax,ebx
 00551C08    call        TChartSeries.MinYValue
 00551C0D    add         esp,0FFFFFFF8
 00551C10    fstp        qword ptr [esp]
 00551C13    wait
 00551C14    mov         eax,ebx
 00551C16    call        TCustomBarSeries.MinMandatoryValue
 00551C1B    fstp        qword ptr [esp]
 00551C1E    wait
 00551C1F    fld         qword ptr [esp]
 00551C22    pop         ecx
 00551C23    pop         edx
 00551C24    pop         ebx
 00551C25    ret
*}
end;

//00551C28
procedure TBarSeries.CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);
begin
{*
 00551C28    push        ebx
 00551C29    push        esi
 00551C2A    push        edi
 00551C2B    mov         edi,ecx
 00551C2D    mov         esi,edx
 00551C2F    mov         ebx,eax
 00551C31    mov         ecx,edi
 00551C33    mov         edx,esi
 00551C35    mov         eax,ebx
 00551C37    call        TChartSeries.CalcHorizMargins
 00551C3C    mov         ecx,edi
 00551C3E    mov         edx,esi
 00551C40    mov         eax,ebx
 00551C42    call        TCustomBarSeries.InternalApplyBarMargin
 00551C47    pop         edi
 00551C48    pop         esi
 00551C49    pop         ebx
 00551C4A    ret
*}
end;

//00551C4C
procedure TBarSeries.CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);
begin
{*
 00551C4C    push        ebx
 00551C4D    push        esi
 00551C4E    push        edi
 00551C4F    push        ebp
 00551C50    mov         ebp,ecx
 00551C52    mov         edi,edx
 00551C54    mov         ebx,eax
 00551C56    mov         ecx,ebp
 00551C58    mov         edx,edi
 00551C5A    mov         eax,ebx
 00551C5C    call        TChartSeries.CalcVerticalMargins
 00551C61    xor         edx,edx
 00551C63    mov         eax,ebx
 00551C65    call        TCustomBarSeries.CalcMarkLength
 00551C6A    mov         esi,eax
 00551C6C    test        esi,esi
>00551C6E    jle         00551CCD
 00551C70    inc         esi
 00551C71    cmp         byte ptr [ebx+125],0
>00551C78    je          00551C9F
 00551C7A    mov         eax,ebx
 00551C7C    call        TChartSeries.MinYValue
 00551C81    fcomp       qword ptr [ebx+128]
 00551C87    fnstsw      al
 00551C89    sahf
>00551C8A    jae         00551C9F
 00551C8C    mov         eax,dword ptr [ebx+54]
 00551C8F    cmp         byte ptr [eax+8D],0
>00551C96    je          00551C9C
 00551C98    add         dword ptr [edi],esi
>00551C9A    jmp         00551C9F
 00551C9C    add         dword ptr [ebp],esi
 00551C9F    cmp         byte ptr [ebx+125],0
>00551CA6    je          00551CBA
 00551CA8    mov         eax,ebx
 00551CAA    call        TChartSeries.MaxYValue
 00551CAF    fcomp       qword ptr [ebx+128]
 00551CB5    fnstsw      al
 00551CB7    sahf
>00551CB8    jbe         00551CCD
 00551CBA    mov         eax,dword ptr [ebx+54]
 00551CBD    cmp         byte ptr [eax+8D],0
>00551CC4    je          00551CCB
 00551CC6    add         dword ptr [ebp],esi
>00551CC9    jmp         00551CCD
 00551CCB    add         dword ptr [edi],esi
 00551CCD    pop         ebp
 00551CCE    pop         edi
 00551CCF    pop         esi
 00551CD0    pop         ebx
 00551CD1    ret
*}
end;

//00551CD4
function TBarSeries.InternalCalcMarkLength(ValueIndex:Integer):Integer;
begin
{*
 00551CD4    mov         eax,dword ptr [eax+68]
 00551CD7    mov         eax,dword ptr [eax+280]
 00551CDD    call        TTeeCanvas.FontHeight
 00551CE2    ret
*}
end;

//00551CE4
procedure TBarSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 00551CE4    push        ebp
 00551CE5    mov         ebp,esp
 00551CE7    add         esp,0FFFFFFF4
 00551CEA    push        ebx
 00551CEB    push        esi
 00551CEC    push        edi
 00551CED    mov         dword ptr [ebp-8],ecx
 00551CF0    mov         dword ptr [ebp-4],edx
 00551CF3    mov         esi,eax
 00551CF5    mov         ebx,dword ptr [ebp+8]
 00551CF8    mov         eax,dword ptr [esi+14C]
 00551CFE    sar         eax,1
>00551D00    jns         00551D05
 00551D02    adc         eax,0
 00551D05    mov         dword ptr [ebp-0C],eax
 00551D08    mov         eax,dword ptr [esi+64]
 00551D0B    mov         edi,dword ptr [eax+8]
 00551D0E    mov         edx,dword ptr [ebp-4]
 00551D11    mov         eax,esi
 00551D13    call        TBarSeries.GetOriginPos
 00551D18    cmp         eax,dword ptr [ebx+8]
>00551D1B    jge         00551D22
 00551D1D    neg         edi
 00551D1F    sub         edi,dword ptr [ebx+18]
 00551D22    mov         eax,dword ptr [ebp-0C]
 00551D25    add         dword ptr [ebx+1C],eax
 00551D28    sub         dword ptr [ebx+20],edi
 00551D2B    mov         eax,dword ptr [ebp-0C]
 00551D2E    add         dword ptr [ebx+0C],eax
 00551D31    sub         dword ptr [ebx+10],edi
 00551D34    mov         eax,dword ptr [ebp-0C]
 00551D37    add         dword ptr [ebx+4],eax
 00551D3A    push        ebx
 00551D3B    mov         ecx,dword ptr [ebp-8]
 00551D3E    mov         edx,dword ptr [ebp-4]
 00551D41    mov         eax,esi
 00551D43    call        TChartSeries.DrawMark
 00551D48    pop         edi
 00551D49    pop         esi
 00551D4A    pop         ebx
 00551D4B    mov         esp,ebp
 00551D4D    pop         ebp
 00551D4E    ret         4
*}
end;

//00551D54
procedure TBarSeries.DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer);
begin
{*
 00551D54    push        ebp
 00551D55    mov         ebp,esp
 00551D57    add         esp,0FFFFFFA4
 00551D5A    push        ebx
 00551D5B    push        esi
 00551D5C    push        edi
 00551D5D    mov         dword ptr [ebp-4],ecx
 00551D60    mov         ebx,edx
 00551D62    mov         esi,eax
 00551D64    mov         edx,dword ptr [esi+150]
 00551D6A    mov         eax,esi
 00551D6C    call        TCustomBarSeries.SetPenBrushBar
 00551D71    mov         eax,dword ptr [esi+68]
 00551D74    mov         edx,dword ptr [eax+280]
 00551D7A    mov         dword ptr [ebp-0C],edx
 00551D7D    lea         edi,[esi+138]
 00551D83    mov         edx,dword ptr [edi]
 00551D85    add         edx,dword ptr [edi+8]
 00551D88    shr         edx,1
 00551D8A    mov         dword ptr [ebp-8],edx
 00551D8D    cmp         byte ptr [eax+270],0
>00551D94    je          00551FE6
 00551D9A    mov         edx,ebx
 00551D9C    mov         eax,esi
 00551D9E    call        TCustomBarSeries.GetBarStyle
 00551DA3    and         eax,7F
 00551DA6    cmp         eax,6
>00551DA9    ja          005521CB
 00551DAF    jmp         dword ptr [eax*4+551DB6]
 00551DAF    dd          00551DD2
 00551DAF    dd          00551E04
 00551DAF    dd          00551E39
 00551DAF    dd          00551E6E
 00551DAF    dd          00551EA3
 00551DAF    dd          00551EC7
 00551DAF    dd          00551F11
 00551DD2    mov         eax,dword ptr [ebp-4]
 00551DD5    push        eax
 00551DD6    mov         eax,dword ptr [ebp+8]
 00551DD9    push        eax
 00551DDA    mov         eax,dword ptr [esi+0FC]
 00551DE0    push        eax
 00551DE1    mov         eax,dword ptr [esi+104]
 00551DE7    push        eax
 00551DE8    mov         al,byte ptr [esi+11C]
 00551DEE    push        eax
 00551DEF    mov         ecx,dword ptr [edi+8]
 00551DF2    mov         edx,dword ptr [edi]
 00551DF4    mov         eax,dword ptr [ebp-0C]
 00551DF7    mov         ebx,dword ptr [eax]
 00551DF9    call        dword ptr [ebx+0C8]
>00551DFF    jmp         005521CB
 00551E04    mov         eax,dword ptr [ebp-4]
 00551E07    push        eax
 00551E08    mov         eax,dword ptr [edi+8]
 00551E0B    push        eax
 00551E0C    mov         eax,dword ptr [ebp+8]
 00551E0F    push        eax
 00551E10    mov         eax,dword ptr [esi+0FC]
 00551E16    push        eax
 00551E17    mov         eax,dword ptr [esi+104]
 00551E1D    push        eax
 00551E1E    mov         al,byte ptr [esi+11C]
 00551E24    push        eax
 00551E25    mov         ecx,dword ptr [edi]
 00551E27    mov         dl,1
 00551E29    mov         eax,dword ptr [ebp-0C]
 00551E2C    mov         ebx,dword ptr [eax]
 00551E2E    call        dword ptr [ebx+108]
>00551E34    jmp         005521CB
 00551E39    mov         eax,dword ptr [ebp+8]
 00551E3C    push        eax
 00551E3D    mov         eax,dword ptr [edi+8]
 00551E40    push        eax
 00551E41    mov         eax,dword ptr [ebp-4]
 00551E44    push        eax
 00551E45    mov         eax,dword ptr [esi+0FC]
 00551E4B    push        eax
 00551E4C    mov         eax,dword ptr [esi+104]
 00551E52    push        eax
 00551E53    mov         al,byte ptr [esi+11C]
 00551E59    push        eax
 00551E5A    mov         ecx,dword ptr [edi]
 00551E5C    mov         dl,1
 00551E5E    mov         eax,dword ptr [ebp-0C]
 00551E61    mov         ebx,dword ptr [eax]
 00551E63    call        dword ptr [ebx+108]
>00551E69    jmp         005521CB
 00551E6E    mov         eax,dword ptr [edi+4]
 00551E71    push        eax
 00551E72    mov         eax,dword ptr [edi+8]
 00551E75    push        eax
 00551E76    mov         eax,dword ptr [edi+0C]
 00551E79    push        eax
 00551E7A    mov         eax,dword ptr [esi+0FC]
 00551E80    push        eax
 00551E81    mov         eax,dword ptr [esi+104]
 00551E87    push        eax
 00551E88    mov         al,byte ptr [esi+11C]
 00551E8E    push        eax
 00551E8F    mov         ecx,dword ptr [edi]
 00551E91    mov         dl,1
 00551E93    mov         eax,dword ptr [ebp-0C]
 00551E96    mov         ebx,dword ptr [eax]
 00551E98    call        dword ptr [ebx+0CC]
>00551E9E    jmp         005521CB
 00551EA3    mov         eax,dword ptr [edi+8]
 00551EA6    push        eax
 00551EA7    mov         eax,dword ptr [edi+0C]
 00551EAA    push        eax
 00551EAB    mov         eax,dword ptr [esi+100]
 00551EB1    push        eax
 00551EB2    mov         ecx,dword ptr [edi+4]
 00551EB5    mov         edx,dword ptr [edi]
 00551EB7    mov         eax,dword ptr [ebp-0C]
 00551EBA    mov         ebx,dword ptr [eax]
 00551EBC    call        dword ptr [ebx+0DC]
>00551EC2    jmp         005521CB
 00551EC7    lea         ecx,[ebp-24]
 00551ECA    mov         edx,dword ptr [ebp-4]
 00551ECD    mov         eax,dword ptr [ebp-8]
 00551ED0    call        Point
 00551ED5    lea         eax,[ebp-24]
 00551ED8    push        eax
 00551ED9    mov         ebx,dword ptr [edi+8]
 00551EDC    sub         ebx,dword ptr [edi]
 00551EDE    push        ebx
 00551EDF    sar         ebx,1
>00551EE1    jns         00551EE6
 00551EE3    adc         ebx,0
 00551EE6    push        ebx
 00551EE7    mov         eax,dword ptr [esi+100]
 00551EED    push        eax
 00551EEE    lea         ecx,[ebp-2C]
 00551EF1    mov         edx,dword ptr [ebp+8]
 00551EF4    mov         eax,dword ptr [ebp-8]
 00551EF7    call        Point
 00551EFC    lea         ecx,[ebp-2C]
 00551EFF    mov         dl,1
 00551F01    mov         eax,dword ptr [ebp-0C]
 00551F04    mov         ebx,dword ptr [eax]
 00551F06    call        dword ptr [ebx+0BC]
>00551F0C    jmp         005521CB
 00551F11    mov         eax,dword ptr [ebp-4]
 00551F14    push        eax
 00551F15    mov         eax,dword ptr [ebp+8]
 00551F18    push        eax
 00551F19    mov         eax,dword ptr [esi+0FC]
 00551F1F    push        eax
 00551F20    mov         eax,dword ptr [esi+104]
 00551F26    push        eax
 00551F27    mov         al,byte ptr [esi+11C]
 00551F2D    push        eax
 00551F2E    mov         ecx,dword ptr [edi+8]
 00551F31    mov         edx,dword ptr [edi]
 00551F33    mov         eax,dword ptr [ebp-0C]
 00551F36    mov         ebx,dword ptr [eax]
 00551F38    call        dword ptr [ebx+0C8]
 00551F3E    mov         eax,dword ptr [ebp-0C]
 00551F41    mov         edx,dword ptr [eax]
 00551F43    call        dword ptr [edx+98]
 00551F49    test        al,al
>00551F4B    jne         00551F5D
 00551F4D    mov         eax,dword ptr [ebp-0C]
 00551F50    mov         eax,dword ptr [eax+18]
 00551F53    cmp         byte ptr [eax+0C],0
>00551F57    je          005521CB
 00551F5D    lea         ebx,[esi+138]
 00551F63    mov         eax,dword ptr [esi+0FC]
 00551F69    push        eax
 00551F6A    lea         eax,[ebp-24]
 00551F6D    push        eax
 00551F6E    mov         edx,dword ptr [ebx]
 00551F70    mov         ecx,dword ptr [ebp-4]
 00551F73    mov         eax,dword ptr [ebp-0C]
 00551F76    mov         edi,dword ptr [eax]
 00551F78    call        dword ptr [edi+0A4]
 00551F7E    mov         eax,dword ptr [ebp-24]
 00551F81    mov         dword ptr [ebp-1C],eax
 00551F84    mov         eax,dword ptr [ebp-20]
 00551F87    mov         dword ptr [ebp-18],eax
 00551F8A    mov         eax,dword ptr [esi+0FC]
 00551F90    push        eax
 00551F91    lea         eax,[ebp-24]
 00551F94    push        eax
 00551F95    mov         edx,dword ptr [ebx+8]
 00551F98    mov         ecx,dword ptr [ebp+8]
 00551F9B    mov         eax,dword ptr [ebp-0C]
 00551F9E    mov         ebx,dword ptr [eax]
 00551FA0    call        dword ptr [ebx+0A4]
 00551FA6    mov         eax,dword ptr [ebp-24]
 00551FA9    mov         dword ptr [ebp-14],eax
 00551FAC    mov         eax,dword ptr [ebp-20]
 00551FAF    mov         dword ptr [ebp-10],eax
 00551FB2    mov         eax,dword ptr [esi+110]
 00551FB8    cmp         byte ptr [eax+21],0
>00551FBC    je          00551FC8
 00551FBE    lea         edx,[ebp-1C]
 00551FC1    mov         eax,esi
 00551FC3    call        TCustomBarSeries.AdjustGradientRectPen
 00551FC8    mov         eax,dword ptr [esi+150]
 00551FCE    push        eax
 00551FCF    push        1
 00551FD1    lea         edx,[ebp-1C]
 00551FD4    mov         ecx,0FFFFFF
 00551FD9    mov         eax,dword ptr [ebp-0C]
 00551FDC    mov         ebx,dword ptr [eax]
 00551FDE    call        dword ptr [ebx+7C]
>00551FE1    jmp         005521CB
 00551FE6    mov         edx,ebx
 00551FE8    mov         eax,esi
 00551FEA    call        TCustomBarSeries.GetBarStyle
 00551FEF    and         eax,7F
 00551FF2    cmp         eax,6
>00551FF5    ja          005521CB
 00551FFB    jmp         dword ptr [eax*4+552002]
 00551FFB    dd          0055201E
 00551FFB    dd          0055203E
 00551FFB    dd          005520A3
 00551FFB    dd          0055201E
 00551FFB    dd          00552108
 00551FFB    dd          00552122
 00551FFB    dd          00552169
 0055201E    mov         eax,dword ptr [edi+4]
 00552021    push        eax
 00552022    mov         eax,dword ptr [edi+8]
 00552025    push        eax
 00552026    mov         eax,dword ptr [edi+0C]
 00552029    push        eax
 0055202A    mov         ecx,dword ptr [edi]
 0055202C    mov         edx,dword ptr [esi+150]
 00552032    mov         eax,esi
 00552034    call        TCustomBarSeries.BarRectangle
>00552039    jmp         005521CB
 0055203E    lea         ecx,[ebp-24]
 00552041    mov         edx,dword ptr [ebp+8]
 00552044    mov         eax,dword ptr [edi]
 00552046    call        Point
 0055204B    mov         eax,dword ptr [ebp-24]
 0055204E    mov         dword ptr [ebp-44],eax
 00552051    mov         eax,dword ptr [ebp-20]
 00552054    mov         dword ptr [ebp-40],eax
 00552057    lea         ecx,[ebp-2C]
 0055205A    mov         edx,dword ptr [ebp-4]
 0055205D    mov         eax,dword ptr [ebp-8]
 00552060    call        Point
 00552065    mov         eax,dword ptr [ebp-2C]
 00552068    mov         dword ptr [ebp-3C],eax
 0055206B    mov         eax,dword ptr [ebp-28]
 0055206E    mov         dword ptr [ebp-38],eax
 00552071    lea         ecx,[ebp-4C]
 00552074    mov         edx,dword ptr [ebp+8]
 00552077    mov         eax,dword ptr [edi+8]
 0055207A    call        Point
 0055207F    mov         eax,dword ptr [ebp-4C]
 00552082    mov         dword ptr [ebp-34],eax
 00552085    mov         eax,dword ptr [ebp-48]
 00552088    mov         dword ptr [ebp-30],eax
 0055208B    lea         edx,[ebp-44]
 0055208E    mov         ecx,2
 00552093    mov         eax,dword ptr [ebp-0C]
 00552096    mov         ebx,dword ptr [eax]
 00552098    call        dword ptr [ebx+88]
>0055209E    jmp         005521CB
 005520A3    lea         ecx,[ebp-24]
 005520A6    mov         edx,dword ptr [ebp-4]
 005520A9    mov         eax,dword ptr [edi]
 005520AB    call        Point
 005520B0    mov         eax,dword ptr [ebp-24]
 005520B3    mov         dword ptr [ebp-44],eax
 005520B6    mov         eax,dword ptr [ebp-20]
 005520B9    mov         dword ptr [ebp-40],eax
 005520BC    lea         ecx,[ebp-2C]
 005520BF    mov         edx,dword ptr [ebp+8]
 005520C2    mov         eax,dword ptr [ebp-8]
 005520C5    call        Point
 005520CA    mov         eax,dword ptr [ebp-2C]
 005520CD    mov         dword ptr [ebp-3C],eax
 005520D0    mov         eax,dword ptr [ebp-28]
 005520D3    mov         dword ptr [ebp-38],eax
 005520D6    lea         ecx,[ebp-4C]
 005520D9    mov         edx,dword ptr [ebp-4]
 005520DC    mov         eax,dword ptr [edi+8]
 005520DF    call        Point
 005520E4    mov         eax,dword ptr [ebp-4C]
 005520E7    mov         dword ptr [ebp-34],eax
 005520EA    mov         eax,dword ptr [ebp-48]
 005520ED    mov         dword ptr [ebp-30],eax
 005520F0    lea         edx,[ebp-44]
 005520F3    mov         ecx,2
 005520F8    mov         eax,dword ptr [ebp-0C]
 005520FB    mov         ebx,dword ptr [eax]
 005520FD    call        dword ptr [ebx+88]
>00552103    jmp         005521CB
 00552108    mov         eax,dword ptr [edi+8]
 0055210B    push        eax
 0055210C    mov         eax,dword ptr [edi+0C]
 0055210F    push        eax
 00552110    mov         ecx,dword ptr [edi+4]
 00552113    mov         edx,dword ptr [edi]
 00552115    mov         eax,dword ptr [ebp-0C]
 00552118    mov         ebx,dword ptr [eax]
 0055211A    call        dword ptr [ebx+38]
>0055211D    jmp         005521CB
 00552122    lea         ecx,[ebp-24]
 00552125    mov         edx,dword ptr [ebp-4]
 00552128    mov         eax,dword ptr [ebp-8]
 0055212B    call        Point
 00552130    lea         eax,[ebp-24]
 00552133    push        eax
 00552134    mov         ebx,dword ptr [edi+8]
 00552137    sub         ebx,dword ptr [edi]
 00552139    push        ebx
 0055213A    sar         ebx,1
>0055213C    jns         00552141
 0055213E    adc         ebx,0
 00552141    push        ebx
 00552142    mov         eax,dword ptr [esi+100]
 00552148    push        eax
 00552149    lea         ecx,[ebp-2C]
 0055214C    mov         edx,dword ptr [ebp+8]
 0055214F    mov         eax,dword ptr [ebp-8]
 00552152    call        Point
 00552157    lea         ecx,[ebp-2C]
 0055215A    mov         dl,1
 0055215C    mov         eax,dword ptr [ebp-0C]
 0055215F    mov         ebx,dword ptr [eax]
 00552161    call        dword ptr [ebx+0BC]
>00552167    jmp         005521CB
 00552169    mov         eax,dword ptr [esi+150]
 0055216F    push        eax
 00552170    push        1
 00552172    mov         eax,dword ptr [ebp+8]
 00552175    push        eax
 00552176    lea         eax,[ebp-5C]
 00552179    push        eax
 0055217A    mov         ecx,dword ptr [edi+8]
 0055217D    mov         edx,dword ptr [ebp-4]
 00552180    mov         eax,dword ptr [edi]
 00552182    call        Rect
 00552187    lea         edx,[ebp-5C]
 0055218A    mov         ecx,0FFFFFF
 0055218F    mov         eax,dword ptr [ebp-0C]
 00552192    mov         ebx,dword ptr [eax]
 00552194    call        dword ptr [ebx+7C]
 00552197    mov         eax,dword ptr [esi+110]
 0055219D    cmp         byte ptr [eax+21],0
>005521A1    je          005521CB
 005521A3    mov         eax,dword ptr [ebp-0C]
 005521A6    mov         eax,dword ptr [eax+10]
 005521A9    mov         dl,1
 005521AB    call        TBrush.SetStyle
 005521B0    mov         eax,dword ptr [edi+4]
 005521B3    push        eax
 005521B4    mov         eax,dword ptr [edi+8]
 005521B7    push        eax
 005521B8    mov         eax,dword ptr [edi+0C]
 005521BB    push        eax
 005521BC    mov         ecx,dword ptr [edi]
 005521BE    mov         edx,dword ptr [esi+150]
 005521C4    mov         eax,esi
 005521C6    call        TCustomBarSeries.BarRectangle
 005521CB    pop         edi
 005521CC    pop         esi
 005521CD    pop         ebx
 005521CE    mov         esp,ebp
 005521D0    pop         ebp
 005521D1    ret         4
*}
end;

//005521D4
procedure TBarSeries.DrawValue(ValueIndex:Integer);
begin
{*
 005521D4    push        ebx
 005521D5    push        esi
 005521D6    push        edi
 005521D7    push        ebp
 005521D8    mov         edi,edx
 005521DA    mov         ebx,eax
 005521DC    mov         edx,edi
 005521DE    mov         eax,ebx
 005521E0    call        TChartSeries.DrawValue
 005521E5    mov         edx,edi
 005521E7    mov         eax,ebx
 005521E9    mov         ecx,dword ptr [eax]
 005521EB    call        dword ptr [ecx+5C]
 005521EE    mov         esi,eax
 005521F0    mov         dword ptr [ebx+150],esi
 005521F6    cmp         esi,1FFFFFFF
>005521FC    je          00552261
 005521FE    lea         esi,[ebx+138]
 00552204    mov         edx,edi
 00552206    mov         eax,ebx
 00552208    mov         ecx,dword ptr [eax]
 0055220A    call        dword ptr [ecx+0E4]
 00552210    mov         ebp,eax
 00552212    mov         dword ptr [esi],ebp
 00552214    add         ebp,dword ptr [ebx+14C]
 0055221A    mov         dword ptr [esi+8],ebp
 0055221D    mov         edx,edi
 0055221F    mov         eax,ebx
 00552221    mov         ecx,dword ptr [eax]
 00552223    call        dword ptr [ecx+0E8]
 00552229    mov         dword ptr [esi+4],eax
 0055222C    mov         edx,edi
 0055222E    mov         eax,ebx
 00552230    call        TBarSeries.GetOriginPos
 00552235    mov         ebp,eax
 00552237    mov         dword ptr [esi+0C],ebp
 0055223A    mov         eax,dword ptr [esi+4]
 0055223D    cmp         ebp,eax
>0055223F    jle         00552252
 00552241    push        ebp
 00552242    mov         ecx,eax
 00552244    mov         edx,edi
 00552246    mov         eax,ebx
 00552248    mov         ebx,dword ptr [eax]
 0055224A    call        dword ptr [ebx+154]
>00552250    jmp         00552261
 00552252    push        eax
 00552253    mov         ecx,ebp
 00552255    mov         edx,edi
 00552257    mov         eax,ebx
 00552259    mov         ebx,dword ptr [eax]
 0055225B    call        dword ptr [ebx+154]
 00552261    pop         ebp
 00552262    pop         edi
 00552263    pop         esi
 00552264    pop         ebx
 00552265    ret
*}
end;

//00552268
function TBarSeries.CalcYPos(ValueIndex:Integer):Integer;
begin
{*
 00552268    push        ebx
 00552269    push        esi
 0055226A    push        edi
 0055226B    add         esp,0FFFFFFE8
 0055226E    mov         esi,edx
 00552270    mov         ebx,eax
 00552272    mov         al,byte ptr [ebx+11D]
 00552278    test        al,al
>0055227A    je          00552280
 0055227C    cmp         al,1
>0055227E    jne         0055228B
 00552280    mov         edx,esi
 00552282    mov         eax,ebx
 00552284    call        TChartSeries.CalcYPos
>00552289    jmp         00552309
 0055228B    xor         ecx,ecx
 0055228D    mov         edx,esi
 0055228F    mov         eax,ebx
 00552291    mov         edi,dword ptr [eax]
 00552293    call        dword ptr [edi+100]
 00552299    fstp        qword ptr [esp+10]
 0055229D    wait
 0055229E    mov         edx,esi
 005522A0    mov         eax,ebx
 005522A2    mov         ecx,dword ptr [eax]
 005522A4    call        dword ptr [ecx+68]
 005522A7    fadd        qword ptr [esp+10]
 005522AB    fstp        qword ptr [esp+8]
 005522AF    wait
 005522B0    cmp         byte ptr [ebx+11D],2
>005522B7    jne         005522CA
 005522B9    push        dword ptr [esp+0C]
 005522BD    push        dword ptr [esp+0C]
 005522C1    mov         eax,ebx
 005522C3    call        TChartSeries.CalcYPosValue
>005522C8    jmp         00552309
 005522CA    mov         cl,1
 005522CC    mov         edx,esi
 005522CE    mov         eax,ebx
 005522D0    mov         esi,dword ptr [eax]
 005522D2    call        dword ptr [esi+100]
 005522D8    fstp        qword ptr [esp]
 005522DB    wait
 005522DC    fld         qword ptr [esp]
 005522DF    fcomp       dword ptr ds:[552310]
 005522E5    fnstsw      al
 005522E7    sahf
>005522E8    je          00552307
 005522EA    fld         qword ptr [esp+8]
 005522EE    fmul        dword ptr ds:[552314]
 005522F4    fdiv        qword ptr [esp]
 005522F7    add         esp,0FFFFFFF8
 005522FA    fstp        qword ptr [esp]
 005522FD    wait
 005522FE    mov         eax,ebx
 00552300    call        TChartSeries.CalcYPosValue
>00552305    jmp         00552309
 00552307    xor         eax,eax
 00552309    add         esp,18
 0055230C    pop         edi
 0055230D    pop         esi
 0055230E    pop         ebx
 0055230F    ret
*}
end;

//00552318
function TBarSeries.GetOriginPos(ValueIndex:Integer):Integer;
begin
{*
 00552318    mov         ecx,dword ptr [eax+54]
 0055231B    mov         ecx,dword ptr [ecx+0D8]
 00552321    call        TCustomBarSeries.InternalGetOriginPos
 00552326    ret
*}
end;

//00552328
function TBarSeries.InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean;
begin
{*
 00552328    push        ebx
 00552329    push        esi
 0055232A    push        edi
 0055232B    push        ebp
 0055232C    add         esp,0FFFFFFE4
 0055232F    mov         edi,ecx
 00552331    mov         dword ptr [esp],edx
 00552334    mov         ebx,eax
 00552336    mov         byte ptr [esp+4],0
 0055233B    mov         edx,dword ptr [esp]
 0055233E    mov         eax,ebx
 00552340    mov         ecx,dword ptr [eax]
 00552342    call        dword ptr [ecx+0E4]
 00552348    mov         esi,eax
 0055234A    mov         eax,dword ptr [edi]
 0055234C    cmp         esi,eax
>0055234E    jg          00552422
 00552354    mov         edx,dword ptr [ebx+14C]
 0055235A    add         edx,esi
 0055235C    cmp         eax,edx
>0055235E    jg          00552422
 00552364    mov         edx,dword ptr [esp]
 00552367    mov         eax,ebx
 00552369    mov         ecx,dword ptr [eax]
 0055236B    call        dword ptr [ecx+0E8]
 00552371    mov         ebp,eax
 00552373    mov         edx,dword ptr [esp]
 00552376    mov         eax,ebx
 00552378    call        TBarSeries.GetOriginPos
 0055237D    mov         dword ptr [esp+8],eax
 00552381    cmp         ebp,dword ptr [esp+8]
>00552385    jle         00552391
 00552387    mov         eax,dword ptr [esp+8]
 0055238B    mov         dword ptr [esp+8],ebp
 0055238F    mov         ebp,eax
 00552391    mov         al,byte ptr [ebx+114]
 00552397    dec         al
>00552399    je          005523C2
 0055239B    dec         al
>0055239D    je          005523A5
 0055239F    sub         al,2
>005523A1    je          005523DF
>005523A3    jmp         0055240B
 005523A5    push        ebp
 005523A6    mov         eax,dword ptr [esp+0C]
 005523AA    push        eax
 005523AB    mov         ecx,dword ptr [ebx+14C]
 005523B1    add         ecx,esi
 005523B3    mov         eax,edi
 005523B5    mov         edx,esi
 005523B7    call        PointInTriangle
 005523BC    mov         byte ptr [esp+4],al
>005523C0    jmp         00552422
 005523C2    mov         eax,dword ptr [esp+8]
 005523C6    push        eax
 005523C7    push        ebp
 005523C8    mov         ecx,dword ptr [ebx+14C]
 005523CE    add         ecx,esi
 005523D0    mov         eax,edi
 005523D2    mov         edx,esi
 005523D4    call        PointInTriangle
 005523D9    mov         byte ptr [esp+4],al
>005523DD    jmp         00552422
 005523DF    mov         eax,dword ptr [esp+8]
 005523E3    push        eax
 005523E4    lea         eax,[esp+10]
 005523E8    push        eax
 005523E9    mov         ecx,dword ptr [ebx+14C]
 005523EF    add         ecx,esi
 005523F1    mov         edx,ebp
 005523F3    mov         eax,esi
 005523F5    call        Rect
 005523FA    lea         edx,[esp+0C]
 005523FE    mov         eax,edi
 00552400    call        PointInEllipse
 00552405    mov         byte ptr [esp+4],al
>00552409    jmp         00552422
 0055240B    mov         eax,dword ptr [edi+4]
 0055240E    cmp         ebp,eax
>00552410    jg          00552418
 00552412    cmp         eax,dword ptr [esp+8]
>00552416    jle         0055241C
 00552418    xor         eax,eax
>0055241A    jmp         0055241E
 0055241C    mov         al,1
 0055241E    mov         byte ptr [esp+4],al
 00552422    mov         al,byte ptr [esp+4]
 00552426    add         esp,1C
 00552429    pop         ebp
 0055242A    pop         edi
 0055242B    pop         esi
 0055242C    pop         ebx
 0055242D    ret
*}
end;

//00552430
function TBarSeries.DrawValuesForward:Boolean;
begin
{*
 00552430    mov         eax,dword ptr [eax+50]
 00552433    mov         al,byte ptr [eax+8D]
 00552439    xor         al,1
 0055243B    ret
*}
end;

//0055243C
function TBarSeries.DrawSeriesForward(ValueIndex:Integer):Boolean;
begin
{*
 0055243C    mov         dl,byte ptr [eax+11D]
 00552442    test        dl,dl
>00552444    je          0055244B
 00552446    cmp         dl,1
>00552449    jne         0055244E
 0055244B    mov         al,1
 0055244D    ret
 0055244E    mov         eax,dword ptr [eax+54]
 00552451    mov         al,byte ptr [eax+8D]
 00552457    xor         al,1
 00552459    ret
*}
end;

//0055245C
{*function sub_0055245C:?;
begin
 0055245C    mov         eax,dword ptr [eax+84];THorizBarSeries.FX:TChartValueList
 00552462    ret
end;*}

//00552464
procedure THorizBarSeries.CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);
begin
{*
 00552464    push        ebx
 00552465    push        esi
 00552466    push        edi
 00552467    push        ebp
 00552468    mov         ebp,ecx
 0055246A    mov         edi,edx
 0055246C    mov         ebx,eax
 0055246E    mov         ecx,ebp
 00552470    mov         edx,edi
 00552472    mov         eax,ebx
 00552474    call        TChartSeries.CalcHorizMargins
 00552479    or          edx,0FFFFFFFF
 0055247C    mov         eax,ebx
 0055247E    call        TCustomBarSeries.CalcMarkLength
 00552483    mov         esi,eax
 00552485    test        esi,esi
>00552487    jle         0055248A
 00552489    inc         esi
 0055248A    cmp         byte ptr [ebx+125],0
>00552491    je          005524A7
 00552493    mov         eax,ebx
 00552495    call        TChartSeries.MinXValue
 0055249A    fcomp       qword ptr [ebx+128]
 005524A0    fnstsw      al
 005524A2    sahf
>005524A3    jae         005524A7
 005524A5    add         dword ptr [edi],esi
 005524A7    cmp         byte ptr [ebx+125],0
>005524AE    je          005524C2
 005524B0    mov         eax,ebx
 005524B2    call        TChartSeries.MaxXValue
 005524B7    fcomp       qword ptr [ebx+128]
 005524BD    fnstsw      al
 005524BF    sahf
>005524C0    jbe         005524D5
 005524C2    mov         eax,dword ptr [ebx+50]
 005524C5    cmp         byte ptr [eax+8D],0
>005524CC    je          005524D2
 005524CE    add         dword ptr [edi],esi
>005524D0    jmp         005524D5
 005524D2    add         dword ptr [ebp],esi
 005524D5    pop         ebp
 005524D6    pop         edi
 005524D7    pop         esi
 005524D8    pop         ebx
 005524D9    ret
*}
end;

//005524DC
procedure THorizBarSeries.CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);
begin
{*
 005524DC    push        ebx
 005524DD    push        esi
 005524DE    push        edi
 005524DF    mov         edi,ecx
 005524E1    mov         esi,edx
 005524E3    mov         ebx,eax
 005524E5    mov         ecx,edi
 005524E7    mov         edx,esi
 005524E9    mov         eax,ebx
 005524EB    call        TChartSeries.CalcVerticalMargins
 005524F0    mov         ecx,edi
 005524F2    mov         edx,esi
 005524F4    mov         eax,ebx
 005524F6    call        TCustomBarSeries.InternalApplyBarMargin
 005524FB    pop         edi
 005524FC    pop         esi
 005524FD    pop         ebx
 005524FE    ret
*}
end;

//00552500
function THorizBarSeries.CalcXPos(ValueIndex:Integer):Integer;
begin
{*
 00552500    push        ebx
 00552501    push        esi
 00552502    push        edi
 00552503    add         esp,0FFFFFFE8
 00552506    mov         esi,edx
 00552508    mov         ebx,eax
 0055250A    mov         al,byte ptr [ebx+11D]
 00552510    test        al,al
>00552512    je          00552518
 00552514    cmp         al,1
>00552516    jne         00552523
 00552518    mov         edx,esi
 0055251A    mov         eax,ebx
 0055251C    call        TChartSeries.CalcXPos
>00552521    jmp         005525A1
 00552523    xor         ecx,ecx
 00552525    mov         edx,esi
 00552527    mov         eax,ebx
 00552529    mov         edi,dword ptr [eax]
 0055252B    call        dword ptr [edi+100]
 00552531    fstp        qword ptr [esp+10]
 00552535    wait
 00552536    mov         edx,esi
 00552538    mov         eax,ebx
 0055253A    mov         ecx,dword ptr [eax]
 0055253C    call        dword ptr [ecx+64]
 0055253F    fadd        qword ptr [esp+10]
 00552543    fstp        qword ptr [esp+8]
 00552547    wait
 00552548    cmp         byte ptr [ebx+11D],2
>0055254F    jne         00552562
 00552551    push        dword ptr [esp+0C]
 00552555    push        dword ptr [esp+0C]
 00552559    mov         eax,ebx
 0055255B    call        TChartSeries.CalcXPosValue
>00552560    jmp         005525A1
 00552562    mov         cl,1
 00552564    mov         edx,esi
 00552566    mov         eax,ebx
 00552568    mov         esi,dword ptr [eax]
 0055256A    call        dword ptr [esi+100]
 00552570    fstp        qword ptr [esp]
 00552573    wait
 00552574    fld         qword ptr [esp]
 00552577    fcomp       dword ptr ds:[5525A8]
 0055257D    fnstsw      al
 0055257F    sahf
>00552580    je          0055259F
 00552582    fld         qword ptr [esp+8]
 00552586    fmul        dword ptr ds:[5525AC]
 0055258C    fdiv        qword ptr [esp]
 0055258F    add         esp,0FFFFFFF8
 00552592    fstp        qword ptr [esp]
 00552595    wait
 00552596    mov         eax,ebx
 00552598    call        TChartSeries.CalcXPosValue
>0055259D    jmp         005525A1
 0055259F    xor         eax,eax
 005525A1    add         esp,18
 005525A4    pop         edi
 005525A5    pop         esi
 005525A6    pop         ebx
 005525A7    ret
*}
end;

//005525B0
function THorizBarSeries.GetOriginPos(ValueIndex:Integer):Integer;
begin
{*
 005525B0    mov         ecx,dword ptr [eax+50]
 005525B3    mov         ecx,dword ptr [ecx+0D4]
 005525B9    call        TCustomBarSeries.InternalGetOriginPos
 005525BE    ret
*}
end;

//005525C0
function THorizBarSeries.CalcYPos(ValueIndex:Integer):Integer;
begin
{*
 005525C0    push        ebx
 005525C1    push        esi
 005525C2    add         esp,0FFFFFFEC
 005525C5    mov         ebx,eax
 005525C7    mov         eax,ebx
 005525C9    call        TChartSeries.CalcYPos
 005525CE    mov         esi,eax
 005525D0    cmp         byte ptr [ebx+11D],1
>005525D7    jne         00552617
 005525D9    mov         eax,ebx
 005525DB    call        TCustomBarSeries.BarSeriesCount
 005525E0    mov         dword ptr [esp],eax
 005525E3    fild        dword ptr [esp]
 005525E6    fmul        dword ptr ds:[552634]
 005525EC    fstp        tbyte ptr [esp+4]
 005525F0    wait
 005525F1    mov         eax,ebx
 005525F3    call        TCustomBarSeries.BarOrderPos
 005525F8    mov         dword ptr [esp+10],eax
 005525FC    fild        dword ptr [esp+10]
 00552600    fld         tbyte ptr [esp+4]
 00552604    fsubrp      st(1),st
 00552606    fild        dword ptr [ebx+14C]
 0055260C    fmulp       st(1),st
 0055260E    call        @ROUND
 00552613    add         esi,eax
>00552615    jmp         00552621
 00552617    mov         eax,dword ptr [ebx+14C]
 0055261D    shr         eax,1
 0055261F    sub         esi,eax
 00552621    mov         edx,esi
 00552623    mov         eax,ebx
 00552625    call        TCustomBarSeries.ApplyBarOffset
 0055262A    mov         esi,eax
 0055262C    mov         eax,esi
 0055262E    add         esp,14
 00552631    pop         esi
 00552632    pop         ebx
 00552633    ret
*}
end;

//00552638
function THorizBarSeries.InternalClicked(ValueIndex:Integer; const APoint:TPoint):Boolean;
begin
{*
 00552638    push        ebx
 00552639    push        esi
 0055263A    push        edi
 0055263B    push        ebp
 0055263C    add         esp,0FFFFFFE4
 0055263F    mov         edi,ecx
 00552641    mov         ebp,edx
 00552643    mov         ebx,eax
 00552645    mov         byte ptr [esp],0
 00552649    mov         edx,ebp
 0055264B    mov         eax,ebx
 0055264D    mov         ecx,dword ptr [eax]
 0055264F    call        dword ptr [ecx+0E8]
 00552655    mov         esi,eax
 00552657    mov         eax,dword ptr [edi+4]
 0055265A    cmp         esi,eax
>0055265C    jg          0055273E
 00552662    mov         edx,dword ptr [ebx+14C]
 00552668    add         edx,esi
 0055266A    cmp         eax,edx
>0055266C    jg          0055273E
 00552672    mov         edx,ebp
 00552674    mov         eax,ebx
 00552676    mov         ecx,dword ptr [eax]
 00552678    call        dword ptr [ecx+0E4]
 0055267E    mov         dword ptr [esp+4],eax
 00552682    mov         edx,ebp
 00552684    mov         eax,ebx
 00552686    call        THorizBarSeries.GetOriginPos
 0055268B    mov         dword ptr [esp+8],eax
 0055268F    mov         eax,dword ptr [esp+8]
 00552693    cmp         eax,dword ptr [esp+4]
>00552697    jge         005526A6
 00552699    lea         edx,[esp+8]
 0055269D    lea         eax,[esp+4]
 005526A1    call        SwapLongint
 005526A6    mov         al,byte ptr [ebx+114]
 005526AC    dec         al
>005526AE    je          005526DA
 005526B0    dec         al
>005526B2    je          005526BA
 005526B4    sub         al,2
>005526B6    je          005526FA
>005526B8    jmp         00552727
 005526BA    mov         eax,dword ptr [esp+8]
 005526BE    push        eax
 005526BF    mov         eax,dword ptr [esp+8]
 005526C3    push        eax
 005526C4    mov         ecx,dword ptr [ebx+14C]
 005526CA    add         ecx,esi
 005526CC    mov         eax,edi
 005526CE    mov         edx,esi
 005526D0    call        PointInHorizTriangle
 005526D5    mov         byte ptr [esp],al
>005526D8    jmp         0055273E
 005526DA    mov         eax,dword ptr [esp+4]
 005526DE    push        eax
 005526DF    mov         eax,dword ptr [esp+0C]
 005526E3    push        eax
 005526E4    mov         ecx,dword ptr [ebx+14C]
 005526EA    add         ecx,esi
 005526EC    mov         eax,edi
 005526EE    mov         edx,esi
 005526F0    call        PointInHorizTriangle
 005526F5    mov         byte ptr [esp],al
>005526F8    jmp         0055273E
 005526FA    mov         eax,dword ptr [ebx+14C]
 00552700    add         eax,esi
 00552702    push        eax
 00552703    lea         eax,[esp+10]
 00552707    push        eax
 00552708    mov         ecx,dword ptr [esp+10]
 0055270C    mov         edx,esi
 0055270E    mov         eax,dword ptr [esp+0C]
 00552712    call        Rect
 00552717    lea         edx,[esp+0C]
 0055271B    mov         eax,edi
 0055271D    call        PointInEllipse
 00552722    mov         byte ptr [esp],al
>00552725    jmp         0055273E
 00552727    mov         eax,dword ptr [edi]
 00552729    cmp         eax,dword ptr [esp+4]
>0055272D    jl          00552735
 0055272F    cmp         eax,dword ptr [esp+8]
>00552733    jle         00552739
 00552735    xor         eax,eax
>00552737    jmp         0055273B
 00552739    mov         al,1
 0055273B    mov         byte ptr [esp],al
 0055273E    mov         al,byte ptr [esp]
 00552741    add         esp,1C
 00552744    pop         ebp
 00552745    pop         edi
 00552746    pop         esi
 00552747    pop         ebx
 00552748    ret
*}
end;

//0055274C
function THorizBarSeries.MaxXValue:Double;
begin
{*
 0055274C    push        ebx
 0055274D    add         esp,0FFFFFFF8
 00552750    mov         ebx,eax
 00552752    mov         eax,ebx
 00552754    call        TChartSeries.MaxXValue
 00552759    add         esp,0FFFFFFF8
 0055275C    fstp        qword ptr [esp]
 0055275F    wait
 00552760    mov         edx,dword ptr [ebx+84]
 00552766    mov         eax,ebx
 00552768    call        TCustomBarSeries.MaxMandatoryValue
 0055276D    fstp        qword ptr [esp]
 00552770    wait
 00552771    fld         qword ptr [esp]
 00552774    pop         ecx
 00552775    pop         edx
 00552776    pop         ebx
 00552777    ret
*}
end;

//00552778
function THorizBarSeries.MinXValue:Double;
begin
{*
 00552778    push        ebx
 00552779    add         esp,0FFFFFFF8
 0055277C    mov         ebx,eax
 0055277E    mov         eax,ebx
 00552780    call        TChartSeries.MinXValue
 00552785    add         esp,0FFFFFFF8
 00552788    fstp        qword ptr [esp]
 0055278B    wait
 0055278C    mov         eax,ebx
 0055278E    call        TCustomBarSeries.MinMandatoryValue
 00552793    fstp        qword ptr [esp]
 00552796    wait
 00552797    fld         qword ptr [esp]
 0055279A    pop         ecx
 0055279B    pop         edx
 0055279C    pop         ebx
 0055279D    ret
*}
end;

//005527A0
function THorizBarSeries.InternalCalcMarkLength(ValueIndex:Integer):Integer;
begin
{*
 005527A0    push        ebp
 005527A1    mov         ebp,esp
 005527A3    push        0
 005527A5    push        ebx
 005527A6    push        esi
 005527A7    mov         esi,edx
 005527A9    mov         ebx,eax
 005527AB    xor         eax,eax
 005527AD    push        ebp
 005527AE    push        5527FE
 005527B3    push        dword ptr fs:[eax]
 005527B6    mov         dword ptr fs:[eax],esp
 005527B9    cmp         esi,0FFFFFFFF
>005527BC    je          005527DF
 005527BE    lea         ecx,[ebp-4]
 005527C1    mov         edx,esi
 005527C3    mov         eax,ebx
 005527C5    call        TChartSeries.GetMarkText
 005527CA    mov         edx,dword ptr [ebp-4]
 005527CD    mov         eax,dword ptr [ebx+68]
 005527D0    mov         eax,dword ptr [eax+280]
 005527D6    mov         ecx,dword ptr [eax]
 005527D8    call        dword ptr [ecx+60]
 005527DB    mov         ebx,eax
>005527DD    jmp         005527E8
 005527DF    mov         eax,ebx
 005527E1    call        TChartSeries.MaxMarkWidth
 005527E6    mov         ebx,eax
 005527E8    xor         eax,eax
 005527EA    pop         edx
 005527EB    pop         ecx
 005527EC    pop         ecx
 005527ED    mov         dword ptr fs:[eax],edx
 005527F0    push        552805
 005527F5    lea         eax,[ebp-4]
 005527F8    call        @LStrClr
 005527FD    ret
>005527FE    jmp         @HandleFinally
>00552803    jmp         005527F5
 00552805    mov         eax,ebx
 00552807    pop         esi
 00552808    pop         ebx
 00552809    pop         ecx
 0055280A    pop         ebp
 0055280B    ret
*}
end;

//0055280C
procedure THorizBarSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 0055280C    push        ebp
 0055280D    mov         ebp,esp
 0055280F    add         esp,0FFFFFFF4
 00552812    push        ebx
 00552813    push        esi
 00552814    push        edi
 00552815    mov         dword ptr [ebp-8],ecx
 00552818    mov         dword ptr [ebp-4],edx
 0055281B    mov         esi,eax
 0055281D    mov         ebx,dword ptr [ebp+8]
 00552820    mov         eax,dword ptr [esi+14C]
 00552826    sar         eax,1
>00552828    jns         0055282D
 0055282A    adc         eax,0
 0055282D    mov         dword ptr [ebp-0C],eax
 00552830    mov         eax,dword ptr [esi+64]
 00552833    mov         edi,dword ptr [eax+8]
 00552836    mov         edx,dword ptr [ebp-4]
 00552839    mov         eax,esi
 0055283B    call        THorizBarSeries.GetOriginPos
 00552840    cmp         eax,dword ptr [ebx+4]
>00552843    jle         0055284A
 00552845    neg         edi
 00552847    sub         edi,dword ptr [ebx+24]
 0055284A    mov         eax,dword ptr [ebx+1C]
 0055284D    add         eax,edi
 0055284F    mov         edx,dword ptr [ebx+24]
 00552852    sar         edx,1
>00552854    jns         00552859
 00552856    adc         edx,0
 00552859    add         eax,edx
 0055285B    mov         dword ptr [ebx+1C],eax
 0055285E    mov         eax,dword ptr [ebx+20]
 00552861    add         eax,dword ptr [ebp-0C]
 00552864    mov         edx,dword ptr [ebx+18]
 00552867    sar         edx,1
>00552869    jns         0055286E
 0055286B    adc         edx,0
 0055286E    add         eax,edx
 00552870    mov         dword ptr [ebx+20],eax
 00552873    add         dword ptr [ebx+0C],edi
 00552876    mov         eax,dword ptr [ebp-0C]
 00552879    add         dword ptr [ebx+10],eax
 0055287C    mov         eax,dword ptr [ebp-0C]
 0055287F    add         dword ptr [ebx+8],eax
 00552882    push        ebx
 00552883    mov         ecx,dword ptr [ebp-8]
 00552886    mov         edx,dword ptr [ebp-4]
 00552889    mov         eax,esi
 0055288B    call        TChartSeries.DrawMark
 00552890    pop         edi
 00552891    pop         esi
 00552892    pop         ebx
 00552893    mov         esp,ebp
 00552895    pop         ebp
 00552896    ret         4
*}
end;

//0055289C
procedure THorizBarSeries.DrawBar(BarIndex:Integer; StartPos:Integer; EndPos:Integer);
begin
{*
 0055289C    push        ebp
 0055289D    mov         ebp,esp
 0055289F    add         esp,0FFFFFFA0
 005528A2    push        ebx
 005528A3    push        esi
 005528A4    push        edi
 005528A5    mov         dword ptr [ebp-8],ecx
 005528A8    mov         dword ptr [ebp-4],edx
 005528AB    mov         esi,eax
 005528AD    mov         edx,dword ptr [esi+150]
 005528B3    mov         eax,esi
 005528B5    call        TCustomBarSeries.SetPenBrushBar
 005528BA    mov         eax,dword ptr [esi+68]
 005528BD    mov         dword ptr [ebp-0C],eax
 005528C0    mov         eax,dword ptr [ebp-0C]
 005528C3    mov         eax,dword ptr [eax+280]
 005528C9    mov         dword ptr [ebp-10],eax
 005528CC    lea         edi,[esi+138]
 005528D2    mov         ebx,dword ptr [edi+4]
 005528D5    add         ebx,dword ptr [edi+0C]
 005528D8    shr         ebx,1
 005528DA    mov         eax,dword ptr [ebp-0C]
 005528DD    cmp         byte ptr [eax+270],0
>005528E4    je          00552B47
 005528EA    mov         edx,dword ptr [ebp-4]
 005528ED    mov         eax,esi
 005528EF    call        TCustomBarSeries.GetBarStyle
 005528F4    and         eax,7F
 005528F7    cmp         eax,6
>005528FA    ja          00552D33
 00552900    jmp         dword ptr [eax*4+552907]
 00552900    dd          00552923
 00552900    dd          00552956
 00552900    dd          0055298C
 00552900    dd          005529C2
 00552900    dd          005529F7
 00552900    dd          00552A1B
 00552900    dd          00552A6A
 00552923    mov         eax,dword ptr [edi+4]
 00552926    push        eax
 00552927    mov         eax,dword ptr [edi+0C]
 0055292A    push        eax
 0055292B    mov         eax,dword ptr [esi+0FC]
 00552931    push        eax
 00552932    mov         eax,dword ptr [esi+104]
 00552938    push        eax
 00552939    mov         al,byte ptr [esi+11C]
 0055293F    push        eax
 00552940    mov         ecx,dword ptr [ebp+8]
 00552943    mov         edx,dword ptr [ebp-8]
 00552946    mov         eax,dword ptr [ebp-10]
 00552949    mov         ebx,dword ptr [eax]
 0055294B    call        dword ptr [ebx+0C8]
>00552951    jmp         00552D33
 00552956    mov         eax,dword ptr [edi+4]
 00552959    push        eax
 0055295A    mov         eax,dword ptr [ebp+8]
 0055295D    push        eax
 0055295E    mov         eax,dword ptr [edi+0C]
 00552961    push        eax
 00552962    mov         eax,dword ptr [esi+0FC]
 00552968    push        eax
 00552969    mov         eax,dword ptr [esi+104]
 0055296F    push        eax
 00552970    mov         al,byte ptr [esi+11C]
 00552976    push        eax
 00552977    mov         ecx,dword ptr [ebp-8]
 0055297A    xor         edx,edx
 0055297C    mov         eax,dword ptr [ebp-10]
 0055297F    mov         ebx,dword ptr [eax]
 00552981    call        dword ptr [ebx+108]
>00552987    jmp         00552D33
 0055298C    mov         eax,dword ptr [edi+4]
 0055298F    push        eax
 00552990    mov         eax,dword ptr [ebp-8]
 00552993    push        eax
 00552994    mov         eax,dword ptr [edi+0C]
 00552997    push        eax
 00552998    mov         eax,dword ptr [esi+0FC]
 0055299E    push        eax
 0055299F    mov         eax,dword ptr [esi+104]
 005529A5    push        eax
 005529A6    mov         al,byte ptr [esi+11C]
 005529AC    push        eax
 005529AD    mov         ecx,dword ptr [ebp+8]
 005529B0    xor         edx,edx
 005529B2    mov         eax,dword ptr [ebp-10]
 005529B5    mov         ebx,dword ptr [eax]
 005529B7    call        dword ptr [ebx+108]
>005529BD    jmp         00552D33
 005529C2    mov         eax,dword ptr [edi+4]
 005529C5    push        eax
 005529C6    mov         eax,dword ptr [edi+8]
 005529C9    push        eax
 005529CA    mov         eax,dword ptr [edi+0C]
 005529CD    push        eax
 005529CE    mov         eax,dword ptr [esi+0FC]
 005529D4    push        eax
 005529D5    mov         eax,dword ptr [esi+104]
 005529DB    push        eax
 005529DC    mov         al,byte ptr [esi+11C]
 005529E2    push        eax
 005529E3    mov         ecx,dword ptr [edi]
 005529E5    xor         edx,edx
 005529E7    mov         eax,dword ptr [ebp-10]
 005529EA    mov         ebx,dword ptr [eax]
 005529EC    call        dword ptr [ebx+0CC]
>005529F2    jmp         00552D33
 005529F7    mov         eax,dword ptr [edi+8]
 005529FA    push        eax
 005529FB    mov         eax,dword ptr [edi+0C]
 005529FE    push        eax
 005529FF    mov         eax,dword ptr [esi+100]
 00552A05    push        eax
 00552A06    mov         ecx,dword ptr [edi+4]
 00552A09    mov         edx,dword ptr [edi]
 00552A0B    mov         eax,dword ptr [ebp-10]
 00552A0E    mov         ebx,dword ptr [eax]
 00552A10    call        dword ptr [ebx+0DC]
>00552A16    jmp         00552D33
 00552A1B    lea         ecx,[ebp-28]
 00552A1E    mov         edx,ebx
 00552A20    mov         eax,dword ptr [ebp+8]
 00552A23    call        Point
 00552A28    lea         eax,[ebp-28]
 00552A2B    push        eax
 00552A2C    mov         eax,dword ptr [edi+0C]
 00552A2F    sub         eax,dword ptr [edi+4]
 00552A32    push        eax
 00552A33    mov         eax,dword ptr [edi+0C]
 00552A36    sub         eax,dword ptr [edi+4]
 00552A39    sar         eax,1
>00552A3B    jns         00552A40
 00552A3D    adc         eax,0
 00552A40    push        eax
 00552A41    mov         eax,dword ptr [esi+100]
 00552A47    push        eax
 00552A48    lea         ecx,[ebp-30]
 00552A4B    mov         edx,ebx
 00552A4D    mov         eax,dword ptr [ebp-8]
 00552A50    call        Point
 00552A55    lea         ecx,[ebp-30]
 00552A58    mov         dl,1
 00552A5A    mov         eax,dword ptr [ebp-10]
 00552A5D    mov         ebx,dword ptr [eax]
 00552A5F    call        dword ptr [ebx+0BC]
>00552A65    jmp         00552D33
 00552A6A    mov         eax,dword ptr [edi+4]
 00552A6D    push        eax
 00552A6E    mov         eax,dword ptr [edi+0C]
 00552A71    push        eax
 00552A72    mov         eax,dword ptr [esi+0FC]
 00552A78    push        eax
 00552A79    mov         eax,dword ptr [esi+104]
 00552A7F    push        eax
 00552A80    mov         al,byte ptr [esi+11C]
 00552A86    push        eax
 00552A87    mov         ecx,dword ptr [ebp+8]
 00552A8A    mov         edx,dword ptr [ebp-8]
 00552A8D    mov         eax,dword ptr [ebp-10]
 00552A90    mov         ebx,dword ptr [eax]
 00552A92    call        dword ptr [ebx+0C8]
 00552A98    mov         eax,dword ptr [ebp-0C]
 00552A9B    mov         eax,dword ptr [eax+280]
 00552AA1    mov         edx,dword ptr [eax]
 00552AA3    call        dword ptr [edx+98]
 00552AA9    test        al,al
>00552AAB    jne         00552ABD
 00552AAD    mov         eax,dword ptr [ebp-10]
 00552AB0    mov         eax,dword ptr [eax+18]
 00552AB3    cmp         byte ptr [eax+0C],0
>00552AB7    je          00552D33
 00552ABD    lea         ebx,[esi+138]
 00552AC3    mov         eax,dword ptr [esi+0FC]
 00552AC9    push        eax
 00552ACA    lea         eax,[ebp-28]
 00552ACD    push        eax
 00552ACE    mov         ecx,dword ptr [ebx+4]
 00552AD1    mov         edx,dword ptr [ebp-8]
 00552AD4    mov         eax,dword ptr [ebp-10]
 00552AD7    mov         edi,dword ptr [eax]
 00552AD9    call        dword ptr [edi+0A4]
 00552ADF    mov         eax,dword ptr [ebp-28]
 00552AE2    mov         dword ptr [ebp-20],eax
 00552AE5    mov         eax,dword ptr [ebp-24]
 00552AE8    mov         dword ptr [ebp-1C],eax
 00552AEB    mov         eax,dword ptr [esi+0FC]
 00552AF1    push        eax
 00552AF2    lea         eax,[ebp-28]
 00552AF5    push        eax
 00552AF6    mov         ecx,dword ptr [ebx+0C]
 00552AF9    mov         edx,dword ptr [ebp+8]
 00552AFC    mov         eax,dword ptr [ebp-10]
 00552AFF    mov         ebx,dword ptr [eax]
 00552B01    call        dword ptr [ebx+0A4]
 00552B07    mov         eax,dword ptr [ebp-28]
 00552B0A    mov         dword ptr [ebp-18],eax
 00552B0D    mov         eax,dword ptr [ebp-24]
 00552B10    mov         dword ptr [ebp-14],eax
 00552B13    mov         eax,dword ptr [esi+110]
 00552B19    cmp         byte ptr [eax+21],0
>00552B1D    je          00552B29
 00552B1F    lea         edx,[ebp-20]
 00552B22    mov         eax,esi
 00552B24    call        TCustomBarSeries.AdjustGradientRectPen
 00552B29    mov         eax,dword ptr [esi+150]
 00552B2F    push        eax
 00552B30    push        2
 00552B32    lea         edx,[ebp-20]
 00552B35    mov         ecx,0FFFFFF
 00552B3A    mov         eax,dword ptr [ebp-10]
 00552B3D    mov         ebx,dword ptr [eax]
 00552B3F    call        dword ptr [ebx+7C]
>00552B42    jmp         00552D33
 00552B47    mov         edx,dword ptr [ebp-4]
 00552B4A    mov         eax,esi
 00552B4C    call        TCustomBarSeries.GetBarStyle
 00552B51    and         eax,7F
 00552B54    cmp         eax,6
>00552B57    ja          00552D33
 00552B5D    jmp         dword ptr [eax*4+552B64]
 00552B5D    dd          00552B80
 00552B5D    dd          00552BA0
 00552B5D    dd          00552C05
 00552B5D    dd          00552B80
 00552B5D    dd          00552C6A
 00552B5D    dd          00552C84
 00552B5D    dd          00552CD0
 00552B80    mov         eax,dword ptr [edi+4]
 00552B83    push        eax
 00552B84    mov         eax,dword ptr [edi+8]
 00552B87    push        eax
 00552B88    mov         eax,dword ptr [edi+0C]
 00552B8B    push        eax
 00552B8C    mov         ecx,dword ptr [edi]
 00552B8E    mov         edx,dword ptr [esi+150]
 00552B94    mov         eax,esi
 00552B96    call        TCustomBarSeries.BarRectangle
>00552B9B    jmp         00552D33
 00552BA0    lea         ecx,[ebp-28]
 00552BA3    mov         edx,dword ptr [edi+4]
 00552BA6    mov         eax,dword ptr [ebp-8]
 00552BA9    call        Point
 00552BAE    mov         eax,dword ptr [ebp-28]
 00552BB1    mov         dword ptr [ebp-48],eax
 00552BB4    mov         eax,dword ptr [ebp-24]
 00552BB7    mov         dword ptr [ebp-44],eax
 00552BBA    lea         ecx,[ebp-30]
 00552BBD    mov         edx,ebx
 00552BBF    mov         eax,dword ptr [ebp+8]
 00552BC2    call        Point
 00552BC7    mov         eax,dword ptr [ebp-30]
 00552BCA    mov         dword ptr [ebp-40],eax
 00552BCD    mov         eax,dword ptr [ebp-2C]
 00552BD0    mov         dword ptr [ebp-3C],eax
 00552BD3    lea         ecx,[ebp-50]
 00552BD6    mov         edx,dword ptr [edi+0C]
 00552BD9    mov         eax,dword ptr [ebp-8]
 00552BDC    call        Point
 00552BE1    mov         eax,dword ptr [ebp-50]
 00552BE4    mov         dword ptr [ebp-38],eax
 00552BE7    mov         eax,dword ptr [ebp-4C]
 00552BEA    mov         dword ptr [ebp-34],eax
 00552BED    lea         edx,[ebp-48]
 00552BF0    mov         ecx,2
 00552BF5    mov         eax,dword ptr [ebp-10]
 00552BF8    mov         ebx,dword ptr [eax]
 00552BFA    call        dword ptr [ebx+88]
>00552C00    jmp         00552D33
 00552C05    lea         ecx,[ebp-28]
 00552C08    mov         edx,dword ptr [edi+4]
 00552C0B    mov         eax,dword ptr [ebp+8]
 00552C0E    call        Point
 00552C13    mov         eax,dword ptr [ebp-28]
 00552C16    mov         dword ptr [ebp-48],eax
 00552C19    mov         eax,dword ptr [ebp-24]
 00552C1C    mov         dword ptr [ebp-44],eax
 00552C1F    lea         ecx,[ebp-30]
 00552C22    mov         edx,ebx
 00552C24    mov         eax,dword ptr [ebp-8]
 00552C27    call        Point
 00552C2C    mov         eax,dword ptr [ebp-30]
 00552C2F    mov         dword ptr [ebp-40],eax
 00552C32    mov         eax,dword ptr [ebp-2C]
 00552C35    mov         dword ptr [ebp-3C],eax
 00552C38    lea         ecx,[ebp-50]
 00552C3B    mov         edx,dword ptr [edi+0C]
 00552C3E    mov         eax,dword ptr [ebp+8]
 00552C41    call        Point
 00552C46    mov         eax,dword ptr [ebp-50]
 00552C49    mov         dword ptr [ebp-38],eax
 00552C4C    mov         eax,dword ptr [ebp-4C]
 00552C4F    mov         dword ptr [ebp-34],eax
 00552C52    lea         edx,[ebp-48]
 00552C55    mov         ecx,2
 00552C5A    mov         eax,dword ptr [ebp-10]
 00552C5D    mov         ebx,dword ptr [eax]
 00552C5F    call        dword ptr [ebx+88]
>00552C65    jmp         00552D33
 00552C6A    mov         eax,dword ptr [edi+8]
 00552C6D    push        eax
 00552C6E    mov         eax,dword ptr [edi+0C]
 00552C71    push        eax
 00552C72    mov         ecx,dword ptr [edi+4]
 00552C75    mov         edx,dword ptr [edi]
 00552C77    mov         eax,dword ptr [ebp-10]
 00552C7A    mov         ebx,dword ptr [eax]
 00552C7C    call        dword ptr [ebx+38]
>00552C7F    jmp         00552D33
 00552C84    lea         ecx,[ebp-28]
 00552C87    mov         edx,ebx
 00552C89    mov         eax,dword ptr [ebp+8]
 00552C8C    call        Point
 00552C91    lea         eax,[ebp-28]
 00552C94    push        eax
 00552C95    mov         eax,dword ptr [edi+0C]
 00552C98    sub         eax,dword ptr [edi+4]
 00552C9B    push        eax
 00552C9C    mov         eax,dword ptr [edi+0C]
 00552C9F    sub         eax,dword ptr [edi+4]
 00552CA2    sar         eax,1
>00552CA4    jns         00552CA9
 00552CA6    adc         eax,0
 00552CA9    push        eax
 00552CAA    mov         eax,dword ptr [esi+100]
 00552CB0    push        eax
 00552CB1    lea         ecx,[ebp-30]
 00552CB4    mov         edx,ebx
 00552CB6    mov         eax,dword ptr [ebp-8]
 00552CB9    call        Point
 00552CBE    lea         ecx,[ebp-30]
 00552CC1    mov         dl,1
 00552CC3    mov         eax,dword ptr [ebp-10]
 00552CC6    mov         ebx,dword ptr [eax]
 00552CC8    call        dword ptr [ebx+0BC]
>00552CCE    jmp         00552D33
 00552CD0    mov         eax,dword ptr [esi+150]
 00552CD6    push        eax
 00552CD7    push        2
 00552CD9    mov         eax,dword ptr [edi+0C]
 00552CDC    push        eax
 00552CDD    lea         eax,[ebp-60]
 00552CE0    push        eax
 00552CE1    mov         ecx,dword ptr [ebp+8]
 00552CE4    mov         edx,dword ptr [edi+4]
 00552CE7    mov         eax,dword ptr [ebp-8]
 00552CEA    call        Rect
 00552CEF    lea         edx,[ebp-60]
 00552CF2    mov         ecx,0FFFFFF
 00552CF7    mov         eax,dword ptr [ebp-10]
 00552CFA    mov         ebx,dword ptr [eax]
 00552CFC    call        dword ptr [ebx+7C]
 00552CFF    mov         eax,dword ptr [esi+110]
 00552D05    cmp         byte ptr [eax+21],0
>00552D09    je          00552D33
 00552D0B    mov         eax,dword ptr [ebp-10]
 00552D0E    mov         eax,dword ptr [eax+10]
 00552D11    mov         dl,1
 00552D13    call        TBrush.SetStyle
 00552D18    mov         eax,dword ptr [edi+4]
 00552D1B    push        eax
 00552D1C    mov         eax,dword ptr [edi+8]
 00552D1F    push        eax
 00552D20    mov         eax,dword ptr [edi+0C]
 00552D23    push        eax
 00552D24    mov         ecx,dword ptr [edi]
 00552D26    mov         edx,dword ptr [esi+150]
 00552D2C    mov         eax,esi
 00552D2E    call        TCustomBarSeries.BarRectangle
 00552D33    pop         edi
 00552D34    pop         esi
 00552D35    pop         ebx
 00552D36    mov         esp,ebp
 00552D38    pop         ebp
 00552D39    ret         4
*}
end;

//00552D3C
procedure THorizBarSeries.DrawValue(ValueIndex:Integer);
begin
{*
 00552D3C    push        ebx
 00552D3D    push        esi
 00552D3E    push        edi
 00552D3F    push        ebp
 00552D40    mov         edi,edx
 00552D42    mov         ebx,eax
 00552D44    mov         edx,edi
 00552D46    mov         eax,ebx
 00552D48    call        TChartSeries.DrawValue
 00552D4D    mov         edx,edi
 00552D4F    mov         eax,ebx
 00552D51    mov         ecx,dword ptr [eax]
 00552D53    call        dword ptr [ecx+5C]
 00552D56    mov         esi,eax
 00552D58    mov         dword ptr [ebx+150],esi
 00552D5E    cmp         esi,1FFFFFFF
>00552D64    je          00552DC9
 00552D66    lea         esi,[ebx+138]
 00552D6C    mov         edx,edi
 00552D6E    mov         eax,ebx
 00552D70    mov         ecx,dword ptr [eax]
 00552D72    call        dword ptr [ecx+0E8]
 00552D78    mov         ebp,eax
 00552D7A    mov         dword ptr [esi+4],ebp
 00552D7D    add         ebp,dword ptr [ebx+14C]
 00552D83    mov         dword ptr [esi+0C],ebp
 00552D86    mov         edx,edi
 00552D88    mov         eax,ebx
 00552D8A    mov         ecx,dword ptr [eax]
 00552D8C    call        dword ptr [ecx+0E4]
 00552D92    mov         dword ptr [esi+8],eax
 00552D95    mov         edx,edi
 00552D97    mov         eax,ebx
 00552D99    call        THorizBarSeries.GetOriginPos
 00552D9E    mov         ebp,eax
 00552DA0    mov         dword ptr [esi],ebp
 00552DA2    mov         eax,dword ptr [esi+8]
 00552DA5    cmp         ebp,eax
>00552DA7    jge         00552DBA
 00552DA9    push        eax
 00552DAA    mov         ecx,ebp
 00552DAC    mov         edx,edi
 00552DAE    mov         eax,ebx
 00552DB0    mov         ebx,dword ptr [eax]
 00552DB2    call        dword ptr [ebx+154]
>00552DB8    jmp         00552DC9
 00552DBA    push        ebp
 00552DBB    mov         ecx,eax
 00552DBD    mov         edx,edi
 00552DBF    mov         eax,ebx
 00552DC1    mov         ebx,dword ptr [eax]
 00552DC3    call        dword ptr [ebx+154]
 00552DC9    pop         ebp
 00552DCA    pop         edi
 00552DCB    pop         esi
 00552DCC    pop         ebx
 00552DCD    ret
*}
end;

//00552DD0
procedure THorizBarSeries.FillSampleValues(NumValues:Integer);
begin
{*
 00552DD0    push        ebp
 00552DD1    mov         ebp,esp
 00552DD3    add         esp,0FFFFFFC4
 00552DD6    push        ebx
 00552DD7    push        esi
 00552DD8    push        edi
 00552DD9    xor         ecx,ecx
 00552DDB    mov         dword ptr [ebp-24],ecx
 00552DDE    mov         ebx,edx
 00552DE0    mov         esi,eax
 00552DE2    xor         eax,eax
 00552DE4    push        ebp
 00552DE5    push        552EF1
 00552DEA    push        dword ptr fs:[eax]
 00552DED    mov         dword ptr fs:[eax],esp
 00552DF0    test        ebx,ebx
>00552DF2    jg          00552E15
 00552DF4    lea         edx,[ebp-24]
 00552DF7    mov         eax,[006E9CF0]
 00552DFC    call        LoadResString
 00552E01    mov         ecx,dword ptr [ebp-24]
 00552E04    mov         dl,1
 00552E06    mov         eax,[0054D438];BarException
 00552E0B    call        Exception.Create
 00552E10    call        @RaiseExcept
 00552E15    mov         eax,esi
 00552E17    mov         edx,dword ptr [eax]
 00552E19    call        dword ptr [edx+98]
 00552E1F    mov         eax,dword ptr [esi+54]
 00552E22    mov         edx,dword ptr [eax+18]
 00552E25    mov         dword ptr [ebp-10],edx
 00552E28    mov         edx,dword ptr [eax+1C]
 00552E2B    mov         dword ptr [ebp-0C],edx
 00552E2E    xor         eax,eax
 00552E30    mov         dword ptr [ebp-18],eax
 00552E33    mov         dword ptr [ebp-14],408F4000
 00552E3A    fld         qword ptr [ebp-18]
 00552E3D    call        @ROUND
 00552E42    call        @RandInt
 00552E47    mov         dword ptr [ebp-28],eax
 00552E4A    fild        dword ptr [ebp-28]
 00552E4D    fadd        qword ptr [ebp-18]
 00552E50    fstp        qword ptr [ebp-8]
 00552E53    wait
 00552E54    xor         eax,eax
 00552E56    mov         dword ptr [ebp-20],eax
 00552E59    mov         dword ptr [ebp-1C],3FF00000
 00552E60    test        ebx,ebx
>00552E62    jle         00552ED4
 00552E64    push        0
 00552E66    push        2
 00552E68    fld         qword ptr [ebp-18]
 00552E6B    call        @ROUND
 00552E70    call        @_lldiv
 00552E75    call        @RandInt
 00552E7A    mov         dword ptr [ebp-28],eax
 00552E7D    fild        dword ptr [ebp-28]
 00552E80    fadd        qword ptr [ebp-8]
 00552E83    fstp        tbyte ptr [ebp-34]
 00552E86    wait
 00552E87    push        0
 00552E89    push        4
 00552E8B    fld         qword ptr [ebp-18]
 00552E8E    call        @ROUND
 00552E93    call        @_lldiv
 00552E98    mov         dword ptr [ebp-3C],eax
 00552E9B    mov         dword ptr [ebp-38],edx
 00552E9E    fild        qword ptr [ebp-3C]
 00552EA1    fld         tbyte ptr [ebp-34]
 00552EA4    fsubrp      st(1),st
 00552EA6    fstp        qword ptr [ebp-8]
 00552EA9    wait
 00552EAA    push        dword ptr [ebp-4]
 00552EAD    push        dword ptr [ebp-8]
 00552EB0    push        dword ptr [ebp-0C]
 00552EB3    push        dword ptr [ebp-10]
 00552EB6    mov         ecx,20000000
 00552EBB    xor         edx,edx
 00552EBD    mov         eax,esi
 00552EBF    mov         edi,dword ptr [eax]
 00552EC1    call        dword ptr [edi+90]
 00552EC7    fld         qword ptr [ebp-10]
 00552ECA    fadd        qword ptr [ebp-20]
 00552ECD    fstp        qword ptr [ebp-10]
 00552ED0    wait
 00552ED1    dec         ebx
>00552ED2    jne         00552E64
 00552ED4    mov         eax,esi
 00552ED6    call        TChartSeries.RefreshSeries
 00552EDB    xor         eax,eax
 00552EDD    pop         edx
 00552EDE    pop         ecx
 00552EDF    pop         ecx
 00552EE0    mov         dword ptr fs:[eax],edx
 00552EE3    push        552EF8
 00552EE8    lea         eax,[ebp-24]
 00552EEB    call        @LStrClr
 00552EF0    ret
>00552EF1    jmp         @HandleFinally
>00552EF6    jmp         00552EE8
 00552EF8    pop         edi
 00552EF9    pop         esi
 00552EFA    pop         ebx
 00552EFB    mov         esp,ebp
 00552EFD    pop         ebp
 00552EFE    ret
*}
end;

//00552F00
function THorizBarSeries.DrawValuesForward:Boolean;
begin
{*
 00552F00    mov         eax,dword ptr [eax+54]
 00552F03    mov         al,byte ptr [eax+8D]
 00552F09    xor         al,1
 00552F0B    ret
*}
end;

//00552F0C
function THorizBarSeries.DrawSeriesForward(ValueIndex:Integer):Boolean;
begin
{*
 00552F0C    mov         dl,byte ptr [eax+11D]
 00552F12    test        dl,dl
>00552F14    je          00552F1B
 00552F16    cmp         dl,1
>00552F19    jne         00552F1E
 00552F1B    mov         al,1
 00552F1D    ret
 00552F1E    mov         eax,dword ptr [eax+50]
 00552F21    mov         al,byte ptr [eax+8D]
 00552F27    xor         al,1
 00552F29    ret
*}
end;

//00552F2C
constructor TCircledSeries.Create(AOwner:TComponent);
begin
{*
 00552F2C    push        ebx
 00552F2D    push        esi
 00552F2E    test        dl,dl
>00552F30    je          00552F3A
 00552F32    add         esp,0FFFFFFF0
 00552F35    call        @ClassCreate
 00552F3A    mov         ebx,edx
 00552F3C    mov         esi,eax
 00552F3E    xor         edx,edx
 00552F40    mov         eax,esi
 00552F42    call        TChartSeries.Create
 00552F47    mov         byte ptr [esi+0F8],0
 00552F4E    mov         eax,dword ptr [esi+84]
 00552F54    lea         edx,[eax+28]
 00552F57    mov         eax,[006E9DC4]
 00552F5C    call        LoadResString
 00552F61    mov         dword ptr [esi+120],20000000
 00552F6B    mov         eax,esi
 00552F6D    test        bl,bl
>00552F6F    je          00552F80
 00552F71    call        @AfterConstruction
 00552F76    pop         dword ptr fs:[0]
 00552F7D    add         esp,0C
 00552F80    mov         eax,esi
 00552F82    pop         esi
 00552F83    pop         ebx
 00552F84    ret
*}
end;

//00552F88
destructor TCircledSeries.Destroy;
begin
{*
 00552F88    push        ebx
 00552F89    push        esi
 00552F8A    call        @BeforeDestruction
 00552F8F    mov         ebx,edx
 00552F91    mov         esi,eax
 00552F93    mov         dl,1
 00552F95    mov         eax,esi
 00552F97    mov         ecx,dword ptr [eax]
 00552F99    call        dword ptr [ecx+14C]
 00552F9F    mov         edx,ebx
 00552FA1    and         dl,0FC
 00552FA4    mov         eax,esi
 00552FA6    call        TChartSeries.Destroy
 00552FAB    test        bl,bl
>00552FAD    jle         00552FB6
 00552FAF    mov         eax,esi
 00552FB1    call        @ClassDestroy
 00552FB6    pop         esi
 00552FB7    pop         ebx
 00552FB8    ret
*}
end;

//00552FBC
procedure TCircledSeries.SetCircled(Value:Boolean);
begin
{*
 00552FBC    push        ebx
 00552FBD    push        esi
 00552FBE    push        edi
 00552FBF    push        ebp
 00552FC0    push        ecx
 00552FC1    mov         byte ptr [esp],dl
 00552FC4    mov         ebp,eax
 00552FC6    lea         edx,[ebp+108];TCircledSeries.Circled:Boolean
 00552FCC    mov         cl,byte ptr [esp]
 00552FCF    mov         eax,ebp
 00552FD1    call        TChartSeries.SetIntegerProperty
 00552FD6    mov         eax,dword ptr [ebp+68];TCircledSeries.ParentChart:TCustomAxisPanel
 00552FD9    test        eax,eax
>00552FDB    je          00553021
 00552FDD    mov         ebx,eax
 00552FDF    mov         eax,ebx
 00552FE1    call        TCustomAxisPanel.SeriesCount
 00552FE6    mov         edi,eax
 00552FE8    dec         edi
 00552FE9    test        edi,edi
>00552FEB    jl          00553021
 00552FED    inc         edi
 00552FEE    xor         esi,esi
 00552FF0    mov         edx,esi
 00552FF2    mov         eax,ebx
 00552FF4    call        TCustomAxisPanel.GetSeries
 00552FF9    call        TObject.ClassType
 00552FFE    mov         edx,eax
 00553000    mov         eax,ebp
 00553002    call        @IsClass
 00553007    test        al,al
>00553009    je          0055301D
 0055300B    mov         edx,esi
 0055300D    mov         eax,ebx
 0055300F    call        TCustomAxisPanel.GetSeries
 00553014    mov         dl,byte ptr [esp]
 00553017    mov         byte ptr [eax+108],dl
 0055301D    inc         esi
 0055301E    dec         edi
>0055301F    jne         00552FF0
 00553021    pop         edx
 00553022    pop         ebp
 00553023    pop         edi
 00553024    pop         esi
 00553025    pop         ebx
 00553026    ret
*}
end;

//00553028
procedure TPieSeries.SetRotationAngle(Value:Integer);
begin
{*
 00553028    push        ebp
 00553029    mov         ebp,esp
 0055302B    add         esp,0FFFFFFF0
 0055302E    push        ebx
 0055302F    xor         ecx,ecx
 00553031    mov         dword ptr [ebp-0C],ecx
 00553034    mov         dword ptr [ebp-10],ecx
 00553037    mov         ecx,edx
 00553039    mov         ebx,eax
 0055303B    xor         eax,eax
 0055303D    push        ebp
 0055303E    push        5530D2
 00553043    push        dword ptr fs:[eax]
 00553046    mov         dword ptr fs:[eax],esp
 00553049    test        ecx,ecx
>0055304B    jge         0055308B
 0055304D    lea         edx,[ebp-0C]
 00553050    mov         eax,[006E9D58];^gvar_0056EF50
 00553055    call        LoadResString
 0055305A    mov         eax,dword ptr [ebp-0C]
 0055305D    mov         dword ptr [ebp-8],eax
 00553060    mov         byte ptr [ebp-4],0B
 00553064    lea         eax,[ebp-8]
 00553067    push        eax
 00553068    push        0
 0055306A    lea         edx,[ebp-10]
 0055306D    mov         eax,[006E9CF4];^gvar_0056EE88
 00553072    call        LoadResString
 00553077    mov         ecx,dword ptr [ebp-10]
 0055307A    mov         dl,1
 0055307C    mov         eax,[0054E000];PieException
 00553081    call        Exception.CreateFmt;PieException.Create
 00553086    call        @RaiseExcept
 0055308B    mov         eax,ecx
 0055308D    mov         ecx,168
 00553092    cdq
 00553093    idiv        eax,ecx
 00553095    mov         ecx,edx
 00553097    lea         edx,[ebx+10C];TPieSeries.FRotationAngle:Integer
 0055309D    mov         eax,ebx
 0055309F    call        TChartSeries.SetBooleanProperty
 005530A4    fild        dword ptr [ebx+10C];TPieSeries.FRotationAngle:Integer
 005530AA    fmul        qword ptr ds:[6E37BC]
 005530B0    fstp        qword ptr [ebx+128];TPieSeries.IRotDegree:Double
 005530B6    wait
 005530B7    xor         eax,eax
 005530B9    pop         edx
 005530BA    pop         ecx
 005530BB    pop         ecx
 005530BC    mov         dword ptr fs:[eax],edx
 005530BF    push        5530D9
 005530C4    lea         eax,[ebp-10]
 005530C7    mov         edx,2
 005530CC    call        @LStrArrayClr
 005530D1    ret
>005530D2    jmp         @HandleFinally
>005530D7    jmp         005530C4
 005530D9    pop         ebx
 005530DA    mov         esp,ebp
 005530DC    pop         ebp
 005530DD    ret
*}
end;

//005530E0
procedure TCircledSeries.SetOtherCustomRadius(IsXRadius:Boolean; Value:Integer);
begin
{*
 005530E0    push        ebx
 005530E1    push        esi
 005530E2    push        edi
 005530E3    push        ebp
 005530E4    add         esp,0FFFFFFF4
 005530E7    mov         dword ptr [esp+4],ecx
 005530EB    mov         byte ptr [esp],dl
 005530EE    mov         edi,eax
 005530F0    mov         eax,dword ptr [edi+68]
 005530F3    test        eax,eax
>005530F5    je          0055314F
 005530F7    mov         dword ptr [esp+8],eax
 005530FB    mov         eax,dword ptr [esp+8]
 005530FF    call        TCustomAxisPanel.SeriesCount
 00553104    mov         esi,eax
 00553106    dec         esi
 00553107    test        esi,esi
>00553109    jl          0055314F
 0055310B    inc         esi
 0055310C    xor         ebp,ebp
 0055310E    mov         edx,ebp
 00553110    mov         eax,dword ptr [esp+8]
 00553114    call        TCustomAxisPanel.GetSeries
 00553119    mov         ebx,eax
 0055311B    mov         eax,ebx
 0055311D    call        TObject.ClassType
 00553122    mov         edx,eax
 00553124    mov         eax,edi
 00553126    call        @IsClass
 0055312B    test        al,al
>0055312D    je          0055314B
 0055312F    cmp         byte ptr [esp],0
>00553133    je          00553141
 00553135    mov         eax,dword ptr [esp+4]
 00553139    mov         dword ptr [ebx+110],eax
>0055313F    jmp         0055314B
 00553141    mov         eax,dword ptr [esp+4]
 00553145    mov         dword ptr [ebx+114],eax
 0055314B    inc         ebp
 0055314C    dec         esi
>0055314D    jne         0055310E
 0055314F    add         esp,0C
 00553152    pop         ebp
 00553153    pop         edi
 00553154    pop         esi
 00553155    pop         ebx
 00553156    ret
*}
end;

//00553158
{*function sub_00553158:?;
begin
 00553158    xor         eax,eax
 0055315A    ret
end;*}

//0055315C
procedure TCircledSeries.SetCustomXRadius(Value:Integer);
begin
{*
 0055315C    push        ebx
 0055315D    push        esi
 0055315E    mov         esi,edx
 00553160    mov         ebx,eax
 00553162    lea         edx,[ebx+110]
 00553168    mov         ecx,esi
 0055316A    mov         eax,ebx
 0055316C    call        TChartSeries.SetLongintProperty
 00553171    mov         ecx,esi
 00553173    mov         dl,1
 00553175    mov         eax,ebx
 00553177    call        TCircledSeries.SetOtherCustomRadius
 0055317C    pop         esi
 0055317D    pop         ebx
 0055317E    ret
*}
end;

//00553180
procedure TCircledSeries.SetCustomYRadius(Value:Integer);
begin
{*
 00553180    push        ebx
 00553181    push        esi
 00553182    mov         esi,edx
 00553184    mov         ebx,eax
 00553186    lea         edx,[ebx+114]
 0055318C    mov         ecx,esi
 0055318E    mov         eax,ebx
 00553190    call        TChartSeries.SetLongintProperty
 00553195    mov         ecx,esi
 00553197    xor         edx,edx
 00553199    mov         eax,ebx
 0055319B    call        TCircledSeries.SetOtherCustomRadius
 005531A0    pop         esi
 005531A1    pop         ebx
 005531A2    ret
*}
end;

//005531A4
function AllCircled:Boolean;
begin
{*
 005531A4    push        ebp
 005531A5    mov         ebp,esp
 005531A7    push        ecx
 005531A8    push        ebx
 005531A9    push        esi
 005531AA    push        edi
 005531AB    xor         ebx,ebx
 005531AD    mov         eax,dword ptr [ebp+8]
 005531B0    mov         eax,dword ptr [eax-4]
 005531B3    mov         eax,dword ptr [eax+68]
 005531B6    mov         dword ptr [ebp-4],eax
 005531B9    mov         eax,dword ptr [ebp-4]
 005531BC    call        TCustomAxisPanel.SeriesCount
 005531C1    mov         esi,eax
 005531C3    dec         esi
 005531C4    test        esi,esi
>005531C6    jl          005531ED
 005531C8    inc         esi
 005531C9    xor         edi,edi
 005531CB    mov         edx,edi
 005531CD    mov         eax,dword ptr [ebp-4]
 005531D0    call        TCustomAxisPanel.GetSeries
 005531D5    mov         edx,dword ptr ds:[54DDB8];TCircledSeries
 005531DB    call        @IsClass
 005531E0    mov         ebx,eax
 005531E2    xor         bl,1
 005531E5    test        bl,bl
>005531E7    je          005531ED
 005531E9    inc         edi
 005531EA    dec         esi
>005531EB    jne         005531CB
 005531ED    mov         eax,ebx
 005531EF    pop         edi
 005531F0    pop         esi
 005531F1    pop         ebx
 005531F2    pop         ecx
 005531F3    pop         ebp
 005531F4    ret
*}
end;

//005531F8
procedure TCircledSeries.SetParentProperties(EnableParentProps:Boolean);
begin
{*
 005531F8    push        ebp
 005531F9    mov         ebp,esp
 005531FB    push        ecx
 005531FC    push        ebx
 005531FD    push        esi
 005531FE    push        edi
 005531FF    mov         ebx,edx
 00553201    mov         dword ptr [ebp-4],eax
 00553204    mov         eax,dword ptr [ebp-4]
 00553207    mov         eax,dword ptr [eax+68]
 0055320A    test        eax,eax
>0055320C    je          0055330D
 00553212    mov         esi,eax
 00553214    test        byte ptr [esi+1C],8
>00553218    jne         0055330D
 0055321E    test        bl,bl
>00553220    je          00553231
 00553222    push        ebp
 00553223    call        AllCircled
 00553228    pop         ecx
 00553229    test        al,al
>0055322B    jne         0055330D
 00553231    mov         edx,ebx
 00553233    mov         eax,esi
 00553235    call        TCustomAxisPanel.SetAxisVisible
 0055323A    mov         edx,ebx
 0055323C    mov         eax,esi
 0055323E    call        TCustomAxisPanel.SetClipPoints
 00553243    mov         edx,ebx
 00553245    mov         eax,esi
 00553247    call        TCustomAxisPanel.SetView3DWalls
 0055324C    mov         eax,dword ptr [ebp-4]
 0055324F    mov         edi,dword ptr [eax+68]
 00553252    mov         eax,edi
 00553254    mov         edx,dword ptr ds:[556B60];TCustomChart
 0055325A    call        @IsClass
 0055325F    test        al,al
>00553261    je          005532BC
 00553263    mov         eax,edi
 00553265    call        TCustomChart.GetFrame
 0055326A    test        eax,eax
>0055326C    je          0055327C
 0055326E    mov         eax,edi
 00553270    call        TCustomChart.GetFrame
 00553275    mov         edx,ebx
 00553277    call        TChartPen.SetVisible
 0055327C    mov         eax,dword ptr [edi+34C]
 00553282    test        eax,eax
>00553284    je          005532A0
 00553286    test        bl,bl
>00553288    je          00553296
 0055328A    mov         eax,dword ptr [eax+8]
 0055328D    xor         edx,edx
 0055328F    call        TBrush.SetStyle
>00553294    jmp         005532A0
 00553296    mov         eax,dword ptr [eax+8]
 00553299    mov         dl,1
 0055329B    call        TBrush.SetStyle
 005532A0    mov         eax,ebx
 005532A2    mov         byte ptr [edi+2AD],al
 005532A8    test        al,al
>005532AA    je          005532B5
 005532AC    mov         byte ptr [edi+2AE],3
>005532B3    jmp         005532BC
 005532B5    mov         byte ptr [edi+2AE],0
 005532BC    mov         eax,dword ptr [esi+280]
 005532C2    mov         edx,dword ptr [eax]
 005532C4    call        dword ptr [edx+98]
 005532CA    test        al,al
>005532CC    jne         0055330D
 005532CE    mov         eax,dword ptr [esi+274]
 005532D4    test        eax,eax
>005532D6    je          0055330D
 005532D8    mov         ebx,eax
 005532DA    xor         edx,edx
 005532DC    mov         eax,ebx
 005532DE    call        TView3DOptions.SetOrthogonal
 005532E3    mov         edx,168
 005532E8    mov         eax,ebx
 005532EA    call        TView3DOptions.SetRotation
 005532EF    mov         edx,13B
 005532F4    mov         eax,ebx
 005532F6    call        TView3DOptions.SetElevation
 005532FB    xor         edx,edx
 005532FD    mov         eax,ebx
 005532FF    call        TView3DOptions.SetPerspective
 00553304    xor         edx,edx
 00553306    mov         eax,ebx
 00553308    call        TView3DOptions.SetTilt
 0055330D    pop         edi
 0055330E    pop         esi
 0055330F    pop         ebx
 00553310    pop         ecx
 00553311    pop         ebp
 00553312    ret
*}
end;

//00553314
procedure TCircledSeries.SetParentChart(Value:TCustomAxisPanel);
begin
{*
 00553314    push        ebx
 00553315    push        esi
 00553316    mov         esi,edx
 00553318    mov         ebx,eax
 0055331A    test        esi,esi
>0055331C    jne         0055332A
 0055331E    mov         dl,1
 00553320    mov         eax,ebx
 00553322    mov         ecx,dword ptr [eax]
 00553324    call        dword ptr [ecx+14C]
 0055332A    cmp         esi,dword ptr [ebx+68]
>0055332D    je          0055334A
 0055332F    mov         edx,esi
 00553331    mov         eax,ebx
 00553333    call        TChartSeries.SetParentChart
 00553338    cmp         dword ptr [ebx+68],0
>0055333C    je          0055334A
 0055333E    xor         edx,edx
 00553340    mov         eax,ebx
 00553342    mov         ecx,dword ptr [eax]
 00553344    call        dword ptr [ecx+14C]
 0055334A    pop         esi
 0055334B    pop         ebx
 0055334C    ret
*}
end;

//00553350
{*function TCircledSeries.AssociatedToAxis(Axis:TCustomChartAxis):?;
begin
 00553350    mov         al,1
 00553352    ret
end;*}

//00553354
procedure TCircledSeries.AdjustCircleRect;
begin
{*
 00553354    push        ebx
 00553355    lea         edx,[eax+140]
 0055335B    mov         ecx,dword ptr [edx+8]
 0055335E    sub         ecx,dword ptr [edx]
 00553360    test        cl,1
>00553363    je          00553368
 00553365    dec         dword ptr [edx+8]
 00553368    mov         ecx,dword ptr [edx+0C]
 0055336B    sub         ecx,dword ptr [edx+4]
 0055336E    test        cl,1
>00553371    je          00553376
 00553373    dec         dword ptr [edx+0C]
 00553376    mov         ebx,dword ptr [edx+8]
 00553379    mov         ecx,dword ptr [edx]
 0055337B    sub         ebx,ecx
 0055337D    cmp         ebx,4
>00553380    jge         00553388
 00553382    add         ecx,4
 00553385    mov         dword ptr [edx+8],ecx
 00553388    mov         ebx,dword ptr [edx+0C]
 0055338B    mov         ecx,dword ptr [edx+4]
 0055338E    sub         ebx,ecx
 00553390    cmp         ebx,4
>00553393    jge         0055339B
 00553395    add         ecx,4
 00553398    mov         dword ptr [edx+0C],ecx
 0055339B    mov         ecx,dword ptr [edx+8]
 0055339E    sub         ecx,dword ptr [edx]
 005533A0    mov         dword ptr [eax+130],ecx
 005533A6    mov         ecx,dword ptr [edx+0C]
 005533A9    sub         ecx,dword ptr [edx+4]
 005533AC    mov         dword ptr [eax+134],ecx
 005533B2    mov         ecx,dword ptr [edx]
 005533B4    add         ecx,dword ptr [edx+8]
 005533B7    shr         ecx,1
 005533B9    mov         dword ptr [eax+138],ecx
 005533BF    mov         ecx,dword ptr [edx+4]
 005533C2    add         ecx,dword ptr [edx+0C]
 005533C5    shr         ecx,1
 005533C7    mov         dword ptr [eax+13C],ecx
 005533CD    pop         ebx
 005533CE    ret
*}
end;

//005533D0
procedure CalcCircledRatio;
begin
{*
 005533D0    push        ebp
 005533D1    mov         ebp,esp
 005533D3    add         esp,0FFFFFFDC
 005533D6    push        ebx
 005533D7    push        esi
 005533D8    push        edi
 005533D9    mov         esi,dword ptr [ebp+8]
 005533DC    add         esi,0FFFFFFFC
 005533DF    push        0
 005533E1    call        USER32.GetSystemMetrics
 005533E6    mov         dword ptr [ebp-14],eax
 005533E9    fild        dword ptr [ebp-14]
 005533EC    fmul        dword ptr ds:[553508]
 005533F2    fstp        tbyte ptr [ebp-20]
 005533F5    wait
 005533F6    push        1
 005533F8    call        USER32.GetSystemMetrics
 005533FD    mov         dword ptr [ebp-24],eax
 00553400    fild        dword ptr [ebp-24]
 00553403    fld         tbyte ptr [ebp-20]
 00553406    fdivrp      st(1),st
 00553408    fstp        qword ptr [ebp-10]
 0055340B    wait
 0055340C    mov         eax,dword ptr [esi]
 0055340E    mov         eax,dword ptr [eax+68]
 00553411    mov         eax,dword ptr [eax+280]
 00553417    mov         edx,dword ptr [eax]
 00553419    call        dword ptr [edx+8]
 0055341C    mov         ebx,eax
 0055341E    push        4
 00553420    push        ebx
 00553421    call        GDI32.GetDeviceCaps
 00553426    mov         edi,eax
 00553428    push        6
 0055342A    push        ebx
 0055342B    call        GDI32.GetDeviceCaps
 00553430    test        eax,eax
>00553432    je          0055346A
 00553434    mov         dword ptr [ebp-14],edi
 00553437    fild        dword ptr [ebp-14]
 0055343A    fmul        dword ptr ds:[553508]
 00553440    mov         dword ptr [ebp-24],eax
 00553443    fild        dword ptr [ebp-24]
 00553446    fdivp       st(1),st
 00553448    fstp        qword ptr [ebp-8]
 0055344B    wait
 0055344C    fld         qword ptr [ebp-8]
 0055344F    fcomp       dword ptr ds:[55350C]
 00553455    fnstsw      al
 00553457    sahf
>00553458    je          0055346A
 0055345A    fld         dword ptr ds:[553508]
 00553460    fmul        qword ptr [ebp-10]
 00553463    fdiv        qword ptr [ebp-8]
 00553466    fstp        qword ptr [ebp-10]
 00553469    wait
 0055346A    mov         eax,dword ptr [esi]
 0055346C    call        TCircledSeries.CalcRadius
 00553471    mov         eax,dword ptr [esi]
 00553473    mov         edi,dword ptr [eax+11C]
 00553479    mov         dword ptr [ebp-14],edi
 0055347C    fild        dword ptr [ebp-14]
 0055347F    fmul        qword ptr [ebp-10]
 00553482    call        @ROUND
 00553487    push        edx
 00553488    push        eax
 00553489    mov         eax,dword ptr [esi]
 0055348B    mov         ebx,dword ptr [eax+118]
 00553491    mov         eax,ebx
 00553493    cdq
 00553494    cmp         edx,dword ptr [esp+4]
>00553498    jne         005534A3
 0055349A    cmp         eax,dword ptr [esp]
 0055349D    pop         edx
 0055349E    pop         eax
>0055349F    jbe         005534CF
>005534A1    jmp         005534A7
 005534A3    pop         edx
 005534A4    pop         eax
>005534A5    jle         005534CF
 005534A7    mov         eax,dword ptr [esi]
 005534A9    fild        dword ptr [eax+11C]
 005534AF    fmul        qword ptr [ebp-10]
 005534B2    call        @ROUND
 005534B7    push        eax
 005534B8    mov         eax,ebx
 005534BA    pop         edx
 005534BB    sub         eax,edx
 005534BD    mov         edx,dword ptr [esi]
 005534BF    add         dword ptr [edx+140],eax
 005534C5    mov         edx,dword ptr [esi]
 005534C7    sub         dword ptr [edx+148],eax
>005534CD    jmp         005534F9
 005534CF    mov         dword ptr [ebp-14],ebx
 005534D2    fild        dword ptr [ebp-14]
 005534D5    fmul        dword ptr ds:[553508]
 005534DB    fdiv        qword ptr [ebp-10]
 005534DE    call        @ROUND
 005534E3    push        eax
 005534E4    mov         eax,edi
 005534E6    pop         edx
 005534E7    sub         eax,edx
 005534E9    mov         edx,dword ptr [esi]
 005534EB    add         dword ptr [edx+144],eax
 005534F1    mov         edx,dword ptr [esi]
 005534F3    sub         dword ptr [edx+14C],eax
 005534F9    mov         eax,dword ptr [esi]
 005534FB    call        TCircledSeries.AdjustCircleRect
 00553500    pop         edi
 00553501    pop         esi
 00553502    pop         ebx
 00553503    mov         esp,ebp
 00553505    pop         ebp
 00553506    ret
*}
end;

//00553510
procedure AdjustCircleMarks;
begin
{*
 00553510    push        ebp
 00553511    mov         ebp,esp
 00553513    push        ebx
 00553514    push        esi
 00553515    push        edi
 00553516    mov         eax,dword ptr [ebp+8]
 00553519    mov         eax,dword ptr [eax-4]
 0055351C    mov         eax,dword ptr [eax+64]
 0055351F    mov         esi,dword ptr [eax+8]
 00553522    mov         edx,dword ptr [ebp+8]
 00553525    mov         ebx,dword ptr [eax+14]
 00553528    cmp         byte ptr [ebx+21],0
>0055352C    je          00553539
 0055352E    mov         eax,ebx
 00553530    call        TPen.GetWidth
 00553535    add         eax,eax
 00553537    add         esi,eax
 00553539    mov         eax,dword ptr [ebp+8]
 0055353C    mov         eax,dword ptr [eax-4]
 0055353F    mov         ebx,dword ptr [eax+68]
 00553542    mov         eax,dword ptr [ebp+8]
 00553545    mov         eax,dword ptr [eax-4]
 00553548    mov         eax,dword ptr [eax+64]
 0055354B    mov         edx,dword ptr [eax+18]
 0055354E    mov         eax,ebx
 00553550    mov         ecx,dword ptr [eax]
 00553552    call        dword ptr [ecx+0D8]
 00553558    mov         eax,dword ptr [ebx+280]
 0055355E    call        TTeeCanvas.FontHeight
 00553563    add         eax,esi
 00553565    mov         edx,dword ptr [ebp+8]
 00553568    mov         edx,dword ptr [edx-4]
 0055356B    add         dword ptr [edx+144],eax
 00553571    mov         edx,dword ptr [ebp+8]
 00553574    mov         edx,dword ptr [edx-4]
 00553577    sub         dword ptr [edx+14C],eax
 0055357D    mov         edx,5535CC;'W'
 00553582    mov         eax,dword ptr [ebx+280]
 00553588    mov         ecx,dword ptr [eax]
 0055358A    call        dword ptr [ecx+60]
 0055358D    mov         edi,eax
 0055358F    mov         eax,ebx
 00553591    call        TCustomAxisPanel.MaxMarkWidth
 00553596    add         edi,eax
 00553598    mov         eax,edi
 0055359A    add         eax,esi
 0055359C    mov         edx,dword ptr [ebp+8]
 0055359F    mov         edx,dword ptr [edx-4]
 005535A2    add         dword ptr [edx+140],eax
 005535A8    mov         edx,dword ptr [ebp+8]
 005535AB    mov         edx,dword ptr [edx-4]
 005535AE    sub         dword ptr [edx+148],eax
 005535B4    mov         eax,dword ptr [ebp+8]
 005535B7    mov         eax,dword ptr [eax-4]
 005535BA    call        TCircledSeries.AdjustCircleRect
 005535BF    pop         edi
 005535C0    pop         esi
 005535C1    pop         ebx
 005535C2    pop         ebp
 005535C3    ret
*}
end;

//005535D0
procedure TCircledSeries.DoBeforeDrawValues;
begin
{*
 005535D0    push        ebp
 005535D1    mov         ebp,esp
 005535D3    push        ecx
 005535D4    push        esi
 005535D5    push        edi
 005535D6    mov         dword ptr [ebp-4],eax
 005535D9    mov         eax,dword ptr [ebp-4]
 005535DC    call        TChartSeries.DoBeforeDrawValues
 005535E1    mov         eax,dword ptr [ebp-4]
 005535E4    mov         eax,dword ptr [eax+68]
 005535E7    mov         edx,dword ptr [ebp-4]
 005535EA    lea         esi,[eax+286]
 005535F0    lea         edi,[edx+140]
 005535F6    movs        dword ptr [edi],dword ptr [esi]
 005535F7    movs        dword ptr [edi],dword ptr [esi]
 005535F8    movs        dword ptr [edi],dword ptr [esi]
 005535F9    movs        dword ptr [edi],dword ptr [esi]
 005535FA    mov         eax,dword ptr [ebp-4]
 005535FD    call        TCircledSeries.AdjustCircleRect
 00553602    mov         eax,dword ptr [ebp-4]
 00553605    mov         eax,dword ptr [eax+64]
 00553608    cmp         byte ptr [eax+28],0
>0055360C    je          00553615
 0055360E    push        ebp
 0055360F    call        AdjustCircleMarks
 00553614    pop         ecx
 00553615    mov         eax,dword ptr [ebp-4]
 00553618    cmp         byte ptr [eax+108],0
>0055361F    je          00553628
 00553621    push        ebp
 00553622    call        CalcCircledRatio
 00553627    pop         ecx
 00553628    mov         eax,dword ptr [ebp-4]
 0055362B    call        TCircledSeries.CalcRadius
 00553630    pop         edi
 00553631    pop         esi
 00553632    pop         ecx
 00553633    pop         ebp
 00553634    ret
*}
end;

//00553638
procedure TCircledSeries.CalcRadius;
begin
{*
 00553638    mov         edx,dword ptr [eax+110]
 0055363E    test        edx,edx
>00553640    je          00553656
 00553642    mov         ecx,edx
 00553644    mov         dword ptr [eax+118],ecx
 0055364A    mov         edx,ecx
 0055364C    add         edx,edx
 0055364E    mov         dword ptr [eax+130],edx
>00553654    jmp         00553664
 00553656    mov         edx,dword ptr [eax+130]
 0055365C    shr         edx,1
 0055365E    mov         dword ptr [eax+118],edx
 00553664    mov         edx,dword ptr [eax+114]
 0055366A    test        edx,edx
>0055366C    je          00553682
 0055366E    mov         ecx,edx
 00553670    mov         dword ptr [eax+11C],ecx
 00553676    mov         edx,ecx
 00553678    add         edx,edx
 0055367A    mov         dword ptr [eax+134],edx
>00553680    jmp         00553690
 00553682    mov         edx,dword ptr [eax+134]
 00553688    shr         edx,1
 0055368A    mov         dword ptr [eax+11C],edx
 00553690    lea         edx,[eax+140]
 00553696    mov         ecx,dword ptr [eax+138]
 0055369C    sub         ecx,dword ptr [eax+118]
 005536A2    mov         dword ptr [edx],ecx
 005536A4    mov         ecx,dword ptr [eax+138]
 005536AA    add         ecx,dword ptr [eax+118]
 005536B0    mov         dword ptr [edx+8],ecx
 005536B3    mov         ecx,dword ptr [eax+13C]
 005536B9    sub         ecx,dword ptr [eax+11C]
 005536BF    mov         dword ptr [edx+4],ecx
 005536C2    mov         ecx,dword ptr [eax+13C]
 005536C8    add         ecx,dword ptr [eax+11C]
 005536CE    mov         dword ptr [edx+0C],ecx
 005536D1    ret
*}
end;

//005536D4
procedure TCircledSeries.SetCircleBackColor(Value:TColor);
begin
{*
 005536D4    lea         ecx,[eax+120]
 005536DA    xchg        ecx,edx
 005536DC    call        TChartSeries.SetColorProperty
 005536E1    ret
*}
end;

//005536E4
procedure TCircledSeries.AngleToPos(var X:Integer; var Y:Integer; const Angle:Double; const AXRadius:Double; const AYRadius:Double);
begin
{*
 005536E4    push        ebp
 005536E5    mov         ebp,esp
 005536E7    add         esp,0FFFFFFE0
 005536EA    push        ebx
 005536EB    push        esi
 005536EC    push        edi
 005536ED    mov         edi,ecx
 005536EF    mov         esi,edx
 005536F1    mov         ebx,eax
 005536F3    fld         qword ptr [ebx+128]
 005536F9    fadd        qword ptr [ebp+18]
 005536FC    add         esp,0FFFFFFF4
 005536FF    fstp        tbyte ptr [esp]
 00553702    wait
 00553703    lea         edx,[ebp-20]
 00553706    lea         eax,[ebp-10]
 00553709    call        SinCos
 0055370E    fld         tbyte ptr [ebp-20]
 00553711    fmul        qword ptr [ebp+10]
 00553714    call        @ROUND
 00553719    add         eax,dword ptr [ebx+138]
 0055371F    mov         dword ptr [esi],eax
 00553721    fld         tbyte ptr [ebp-10]
 00553724    fmul        qword ptr [ebp+8]
 00553727    call        @ROUND
 0055372C    mov         edx,dword ptr [ebx+13C]
 00553732    sub         edx,eax
 00553734    mov         dword ptr [edi],edx
 00553736    pop         edi
 00553737    pop         esi
 00553738    pop         ebx
 00553739    mov         esp,ebp
 0055373B    pop         ebp
 0055373C    ret         18
*}
end;

//00553740
function TCircledSeries.CalcCircleBackColor:TColor;
begin
{*
 00553740    push        ebx
 00553741    mov         ebx,eax
 00553743    mov         eax,dword ptr [ebx+120]
 00553749    cmp         eax,20000000
>0055374E    jne         00553763
 00553750    mov         eax,dword ptr [ebx+68]
 00553753    mov         edx,dword ptr ds:[556B60];TCustomChart
 00553759    call        @AsClass
 0055375E    call        TCustomChart.GetBackColor
 00553763    cmp         eax,20000000
>00553768    jne         00553770
 0055376A    mov         eax,dword ptr [ebx+68]
 0055376D    mov         eax,dword ptr [eax+70]
 00553770    pop         ebx
 00553771    ret
*}
end;

//00553774
procedure TCircledSeries.PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);
begin
{*
 00553774    push        ebp
 00553775    mov         ebp,esp
 00553777    push        ebx
 00553778    push        esi
 00553779    mov         esi,ecx
 0055377B    mov         ebx,eax
 0055377D    mov         eax,ebx
 0055377F    call        TCircledSeries.CalcCircleBackColor
 00553784    mov         dword ptr [esi],eax
 00553786    pop         esi
 00553787    pop         ebx
 00553788    pop         ebp
 00553789    ret         4
*}
end;

//0055378C
function TCircledSeries.PointToAngle(x:Integer; y:Integer):Double;
begin
{*
 0055378C    push        ebx
 0055378D    push        esi
 0055378E    push        edi
 0055378F    push        ebp
 00553790    add         esp,0FFFFFFEC
 00553793    mov         ebp,ecx
 00553795    mov         edi,edx
 00553797    mov         ebx,eax
 00553799    mov         eax,edi
 0055379B    sub         eax,dword ptr [ebx+138]
>005537A1    jne         005537CE
 005537A3    cmp         ebp,dword ptr [ebx+13C]
>005537A9    jle         005537B9
 005537AB    fld         qword ptr ds:[6E37B4]
 005537B1    fchs
 005537B3    fstp        qword ptr [esp]
 005537B6    wait
>005537B7    jmp         0055382E
 005537B9    mov         eax,dword ptr ds:[6E37B4]
 005537BF    mov         dword ptr [esp],eax
 005537C2    mov         eax,dword ptr ds:[6E37B8]
 005537C8    mov         dword ptr [esp+4],eax
>005537CC    jmp         0055382E
 005537CE    mov         esi,dword ptr [ebx+11C]
 005537D4    test        esi,esi
>005537D6    je          005537DC
 005537D8    test        esi,esi
>005537DA    jne         005537E7
 005537DC    xor         eax,eax
 005537DE    mov         dword ptr [esp],eax
 005537E1    mov         dword ptr [esp+4],eax
>005537E5    jmp         0055382E
 005537E7    mov         eax,dword ptr [ebx+13C]
 005537ED    sub         eax,ebp
 005537EF    mov         dword ptr [esp+8],eax
 005537F3    fild        dword ptr [esp+8]
 005537F7    mov         dword ptr [esp+0C],esi
 005537FB    fild        dword ptr [esp+0C]
 005537FF    fdivp       st(1),st
 00553801    add         esp,0FFFFFFF4
 00553804    fstp        tbyte ptr [esp]
 00553807    wait
 00553808    sub         edi,dword ptr [ebx+138]
 0055380E    mov         dword ptr [esp+1C],edi
 00553812    fild        dword ptr [esp+1C]
 00553816    fild        dword ptr [ebx+118]
 0055381C    fdivp       st(1),st
 0055381E    add         esp,0FFFFFFF4
 00553821    fstp        tbyte ptr [esp]
 00553824    wait
 00553825    call        ArcTan2
 0055382A    fstp        qword ptr [esp]
 0055382D    wait
 0055382E    fld         qword ptr [esp]
 00553831    fcomp       dword ptr ds:[55387C]
 00553837    fnstsw      al
 00553839    sahf
>0055383A    jae         00553849
 0055383C    fld         qword ptr ds:[6E37AC]
 00553842    fadd        qword ptr [esp]
 00553845    fstp        qword ptr [esp]
 00553848    wait
 00553849    fld         qword ptr [esp]
 0055384C    fsub        qword ptr [ebx+128]
 00553852    fstp        qword ptr [esp]
 00553855    wait
 00553856    fld         qword ptr [esp]
 00553859    fcomp       dword ptr ds:[55387C]
 0055385F    fnstsw      al
 00553861    sahf
>00553862    jae         00553871
 00553864    fld         qword ptr ds:[6E37AC]
 0055386A    fadd        qword ptr [esp]
 0055386D    fstp        qword ptr [esp]
 00553870    wait
 00553871    fld         qword ptr [esp]
 00553874    add         esp,14
 00553877    pop         ebp
 00553878    pop         edi
 00553879    pop         esi
 0055387A    pop         ebx
 0055387B    ret
*}
end;

//00553880
procedure TCircledSeries.Assign(Source:TPersistent);
begin
{*
 00553880    push        ebx
 00553881    push        esi
 00553882    mov         esi,edx
 00553884    mov         ebx,eax
 00553886    mov         eax,esi
 00553888    mov         edx,dword ptr ds:[54DDB8];TCircledSeries
 0055388E    call        @IsClass
 00553893    test        al,al
>00553895    je          005538D5
 00553897    mov         eax,esi
 00553899    mov         dl,byte ptr [eax+108]
 0055389F    mov         byte ptr [ebx+108],dl
 005538A5    mov         edx,dword ptr [eax+10C]
 005538AB    mov         dword ptr [ebx+10C],edx
 005538B1    mov         edx,dword ptr [eax+110]
 005538B7    mov         dword ptr [ebx+110],edx
 005538BD    mov         edx,dword ptr [eax+114]
 005538C3    mov         dword ptr [ebx+114],edx
 005538C9    mov         eax,dword ptr [eax+120]
 005538CF    mov         dword ptr [ebx+120],eax
 005538D5    mov         edx,esi
 005538D7    mov         eax,ebx
 005538D9    call        TChartSeries.Assign
 005538DE    pop         esi
 005538DF    pop         ebx
 005538E0    ret
*}
end;

//005538E4
procedure TCircledSeries.SetActive(Value:Boolean);
begin
{*
 005538E4    push        ebx
 005538E5    mov         ebx,eax
 005538E7    mov         eax,ebx
 005538E9    call        TChartSeries.SetActive
 005538EE    mov         dl,byte ptr [ebx+30]
 005538F1    xor         dl,1
 005538F4    mov         eax,ebx
 005538F6    mov         ecx,dword ptr [eax]
 005538F8    call        dword ptr [ecx+14C]
 005538FE    pop         ebx
 005538FF    ret
*}
end;

//00553900
function TExplodedSlices.GetValue(Index:Integer):Integer;
begin
{*
 00553900    push        ebx
 00553901    push        esi
 00553902    mov         esi,edx
 00553904    mov         ebx,eax
 00553906    cmp         esi,dword ptr [ebx+8]
>00553909    jge         00553924
 0055390B    mov         edx,esi
 0055390D    mov         eax,ebx
 0055390F    call        TList.Get
 00553914    test        eax,eax
>00553916    je          00553924
 00553918    mov         edx,esi
 0055391A    mov         eax,ebx
 0055391C    call        TList.Get
 00553921    pop         esi
 00553922    pop         ebx
 00553923    ret
 00553924    xor         eax,eax
 00553926    pop         esi
 00553927    pop         ebx
 00553928    ret
*}
end;

//0055392C
procedure TExplodedSlices.SetValue(Index:Integer; Value:Integer);
begin
{*
 0055392C    push        ebx
 0055392D    push        esi
 0055392E    push        edi
 0055392F    mov         edi,ecx
 00553931    mov         esi,edx
 00553933    mov         ebx,eax
>00553935    jmp         00553940
 00553937    xor         edx,edx
 00553939    mov         eax,ebx
 0055393B    call        TList.Add
 00553940    cmp         esi,dword ptr [ebx+8]
>00553943    jge         00553937
 00553945    mov         edx,esi
 00553947    mov         eax,ebx
 00553949    call        TExplodedSlices.GetValue
 0055394E    cmp         edi,eax
>00553950    je          00553965
 00553952    mov         ecx,edi
 00553954    mov         edx,esi
 00553956    mov         eax,ebx
 00553958    call        TList.Put
 0055395D    mov         eax,dword ptr [ebx+10]
 00553960    call        TChartSeries.Repaint
 00553965    pop         edi
 00553966    pop         esi
 00553967    pop         ebx
 00553968    ret
*}
end;

//0055396C
constructor TPieOtherSlice.Create(AOwner:TChartSeries);
begin
{*
 0055396C    push        ebx
 0055396D    push        esi
 0055396E    push        edi
 0055396F    test        dl,dl
>00553971    je          0055397B
 00553973    add         esp,0FFFFFFF0
 00553976    call        @ClassCreate
 0055397B    mov         esi,ecx
 0055397D    mov         ebx,edx
 0055397F    mov         edi,eax
 00553981    xor         edx,edx
 00553983    mov         eax,edi
 00553985    call        TObject.Create
 0055398A    mov         dword ptr [edi+18],esi
 0055398D    lea         edx,[edi+8]
 00553990    mov         eax,[006E9DB0]
 00553995    call        LoadResString
 0055399A    mov         byte ptr [edi+4],0
 0055399E    xor         eax,eax
 005539A0    mov         dword ptr [edi+10],eax
 005539A3    mov         dword ptr [edi+14],eax
 005539A6    mov         eax,edi
 005539A8    test        bl,bl
>005539AA    je          005539BB
 005539AC    call        @AfterConstruction
 005539B1    pop         dword ptr fs:[0]
 005539B8    add         esp,0C
 005539BB    mov         eax,edi
 005539BD    pop         edi
 005539BE    pop         esi
 005539BF    pop         ebx
 005539C0    ret
*}
end;

//005539C4
procedure TPieOtherSlice.Assign(Source:TPersistent);
begin
{*
 005539C4    push        ebx
 005539C5    push        esi
 005539C6    push        edi
 005539C7    mov         esi,edx
 005539C9    mov         ebx,eax
 005539CB    mov         eax,esi
 005539CD    mov         edx,dword ptr ds:[54E13C];TPieOtherSlice
 005539D3    call        @IsClass
 005539D8    test        al,al
>005539DA    je          005539FB
 005539DC    mov         edi,esi
 005539DE    mov         al,byte ptr [edi+4]
 005539E1    mov         byte ptr [ebx+4],al
 005539E4    lea         eax,[ebx+8]
 005539E7    mov         edx,dword ptr [edi+8]
 005539EA    call        @LStrAsg
 005539EF    mov         eax,dword ptr [edi+10]
 005539F2    mov         dword ptr [ebx+10],eax
 005539F5    mov         eax,dword ptr [edi+14]
 005539F8    mov         dword ptr [ebx+14],eax
 005539FB    pop         edi
 005539FC    pop         esi
 005539FD    pop         ebx
 005539FE    ret
*}
end;

//00553A00
procedure TPieOtherSlice.SetStyle(Value:TPieOtherStyle);
begin
{*
 00553A00    cmp         dl,byte ptr [eax+4]
>00553A03    je          00553A10
 00553A05    mov         byte ptr [eax+4],dl
 00553A08    mov         eax,dword ptr [eax+18]
 00553A0B    call        TChartSeries.Repaint
 00553A10    ret
*}
end;

//00553A14
procedure TPieOtherSlice.SetText(const Value:AnsiString);
begin
{*
 00553A14    lea         ecx,[eax+8]
 00553A17    mov         eax,dword ptr [eax+18]
 00553A1A    xchg        ecx,edx
 00553A1C    call        TChartSeries.SetStringProperty
 00553A21    ret
*}
end;

//00553A24
procedure TPieOtherSlice.SetValue(Value:Double; const Value:Double);
begin
{*
 00553A24    push        ebp
 00553A25    mov         ebp,esp
 00553A27    push        dword ptr [ebp+0C]
 00553A2A    push        dword ptr [ebp+8]
 00553A2D    lea         edx,[eax+10]
 00553A30    mov         eax,dword ptr [eax+18]
 00553A33    call        TChartSeries.SetDoubleProperty
 00553A38    pop         ebp
 00553A39    ret         8
*}
end;

//00553A3C
constructor TPieSeries.Create(AOwner:TComponent);
begin
{*
 00553A3C    push        ebp
 00553A3D    mov         ebp,esp
 00553A3F    push        ecx
 00553A40    push        ebx
 00553A41    push        esi
 00553A42    test        dl,dl
>00553A44    je          00553A4E
 00553A46    add         esp,0FFFFFFF0
 00553A49    call        @ClassCreate
 00553A4E    mov         byte ptr [ebp-1],dl
 00553A51    mov         ebx,eax
 00553A53    xor         edx,edx
 00553A55    mov         eax,ebx
 00553A57    call        TCircledSeries.Create
 00553A5C    mov         eax,ebx
 00553A5E    call        TChartSeries.CreateChartPen
 00553A63    mov         dword ptr [ebx+15C],eax
 00553A69    mov         dl,1
 00553A6B    mov         eax,[0054E084];TExplodedSlices
 00553A70    call        TObject.Create
 00553A75    mov         esi,eax
 00553A77    mov         dword ptr [ebx+154],esi
 00553A7D    mov         dword ptr [esi+10],ebx
 00553A80    mov         ecx,ebx
 00553A82    mov         dl,1
 00553A84    mov         eax,[0054E13C];TPieOtherSlice
 00553A89    call        TPieOtherSlice.Create
 00553A8E    mov         dword ptr [ebx+160],eax
 00553A94    mov         eax,dword ptr [ebx+84]
 00553A9A    add         eax,28
 00553A9D    call        @LStrClr
 00553AA2    mov         eax,dword ptr [ebx+8C]
 00553AA8    lea         edx,[eax+28]
 00553AAB    mov         eax,[006E9DBC]
 00553AB0    call        LoadResString
 00553AB5    mov         eax,dword ptr [ebx+64]
 00553AB8    mov         dl,1
 00553ABA    call        TSeriesMarks.SetVisible
 00553ABF    mov         eax,dword ptr [ebx+64]
 00553AC2    mov         edx,8
 00553AC7    call        TSeriesMarks.SetArrowLength
 00553ACC    mov         byte ptr [ebx+150],1
 00553AD3    mov         dl,1
 00553AD5    mov         eax,ebx
 00553AD7    mov         ecx,dword ptr [eax]
 00553AD9    call        dword ptr [ecx+78]
 00553ADC    mov         eax,ebx
 00553ADE    cmp         byte ptr [ebp-1],0
>00553AE2    je          00553AF3
 00553AE4    call        @AfterConstruction
 00553AE9    pop         dword ptr fs:[0]
 00553AF0    add         esp,0C
 00553AF3    mov         eax,ebx
 00553AF5    pop         esi
 00553AF6    pop         ebx
 00553AF7    pop         ecx
 00553AF8    pop         ebp
 00553AF9    ret
*}
end;

//00553AFC
destructor TPieSeries.Destroy;
begin
{*
 00553AFC    push        ebx
 00553AFD    push        esi
 00553AFE    call        @BeforeDestruction
 00553B03    mov         ebx,edx
 00553B05    mov         esi,eax
 00553B07    push        0
 00553B09    lea         eax,[esi+168]
 00553B0F    mov         ecx,1
 00553B14    mov         edx,dword ptr ds:[54E05C];TPieAngles
 00553B1A    call        @DynArraySetLength
 00553B1F    add         esp,4
 00553B22    lea         eax,[esi+154]
 00553B28    call        FreeAndNil
 00553B2D    mov         eax,dword ptr [esi+160]
 00553B33    call        TObject.Free
 00553B38    mov         eax,dword ptr [esi+15C]
 00553B3E    call        TObject.Free
 00553B43    mov         edx,ebx
 00553B45    and         dl,0FC
 00553B48    mov         eax,esi
 00553B4A    call        TCircledSeries.Destroy
 00553B4F    test        bl,bl
>00553B51    jle         00553B5A
 00553B53    mov         eax,esi
 00553B55    call        @ClassDestroy
 00553B5A    pop         esi
 00553B5B    pop         ebx
 00553B5C    ret
*}
end;

//00553B60
function TPieSeries.CalcXPos(ValueIndex:Integer):Integer;
begin
{*
 00553B60    push        ebx
 00553B61    push        esi
 00553B62    mov         esi,edx
 00553B64    mov         ebx,eax
 00553B66    mov         edx,esi
 00553B68    mov         eax,dword ptr [ebx+84]
 00553B6E    mov         ecx,dword ptr [eax]
 00553B70    call        dword ptr [ecx+0C]
 00553B73    fld         tbyte ptr ds:[553B94]
 00553B79    fcompp
 00553B7B    fnstsw      al
 00553B7D    sahf
>00553B7E    jne         00553B85
 00553B80    xor         eax,eax
 00553B82    pop         esi
 00553B83    pop         ebx
 00553B84    ret
 00553B85    mov         edx,esi
 00553B87    mov         eax,ebx
 00553B89    call        TChartSeries.CalcXPos
 00553B8E    pop         esi
 00553B8F    pop         ebx
 00553B90    ret
*}
end;

//00553BA0
{*function sub_00553BA0:?;
begin
 00553BA0    mov         eax,8
 00553BA5    ret
end;*}

//00553BA8
procedure TPieSeries.ClearLists;
begin
{*
 00553BA8    push        ebx
 00553BA9    mov         ebx,eax
 00553BAB    mov         eax,ebx
 00553BAD    call        TChartSeries.ClearLists
 00553BB2    mov         eax,dword ptr [ebx+154]
 00553BB8    test        eax,eax
>00553BBA    je          00553BC1
 00553BBC    mov         edx,dword ptr [eax]
 00553BBE    call        dword ptr [edx+8]
 00553BC1    pop         ebx
 00553BC2    ret
*}
end;

//00553BC4
procedure TPieSeries.PrepareLegendCanvas(ValueIndex:Integer; var BackColor:TColor; var BrushStyle:TBrushStyle);
begin
{*
 00553BC4    push        ebp
 00553BC5    mov         ebp,esp
 00553BC7    push        ecx
 00553BC8    push        ebx
 00553BC9    push        esi
 00553BCA    push        edi
 00553BCB    mov         dword ptr [ebp-4],ecx
 00553BCE    mov         esi,edx
 00553BD0    mov         ebx,eax
 00553BD2    mov         edi,dword ptr [ebp+8]
 00553BD5    push        edi
 00553BD6    mov         ecx,dword ptr [ebp-4]
 00553BD9    mov         edx,esi
 00553BDB    mov         eax,ebx
 00553BDD    call        TCircledSeries.PrepareLegendCanvas
 00553BE2    cmp         byte ptr [ebx+164],0
>00553BE9    je          00553BF4
 00553BEB    mov         eax,esi
 00553BED    call        GetDefaultPattern
 00553BF2    mov         byte ptr [edi],al
 00553BF4    pop         edi
 00553BF5    pop         esi
 00553BF6    pop         ebx
 00553BF7    pop         ecx
 00553BF8    pop         ebp
 00553BF9    ret         4
*}
end;

//00553BFC
procedure TFastLineSeries.DrawAllValues;
begin
{*
 00553BFC    push        ebx
 00553BFD    mov         ebx,eax
 00553BFF    mov         eax,ebx
 00553C01    call        TFastLineSeries.PrepareCanvas
 00553C06    mov         eax,ebx
 00553C08    call        TChartSeries.DrawAllValues
 00553C0D    pop         ebx
 00553C0E    ret
*}
end;

//00553C10
procedure TPieSeries.FillSampleValues(NumValues:Integer);
begin
{*
 00553C10    push        ebx
 00553C11    push        esi
 00553C12    push        edi
 00553C13    push        ebp
 00553C14    push        ecx
 00553C15    mov         ebx,edx
 00553C17    mov         edi,eax
 00553C19    mov         eax,edi
 00553C1B    mov         edx,dword ptr [eax]
 00553C1D    call        dword ptr [edx+98]
 00553C23    dec         ebx
 00553C24    test        ebx,ebx
>00553C26    jl          00553C6B
 00553C28    inc         ebx
 00553C29    xor         esi,esi
 00553C2B    mov         eax,3E8
 00553C30    call        @RandInt
 00553C35    inc         eax
 00553C36    mov         dword ptr [esp],eax
 00553C39    fild        dword ptr [esp]
 00553C3C    add         esp,0FFFFFFF8
 00553C3F    fstp        qword ptr [esp]
 00553C42    wait
 00553C43    mov         eax,esi
 00553C45    and         eax,80000007
>00553C4A    jns         00553C51
 00553C4C    dec         eax
 00553C4D    or          eax,0FFFFFFF8
 00553C50    inc         eax
 00553C51    mov         edx,dword ptr [eax*4+6E37C4]
 00553C58    mov         ecx,20000000
 00553C5D    mov         eax,edi
 00553C5F    mov         ebp,dword ptr [eax]
 00553C61    call        dword ptr [ebp+84]
 00553C67    inc         esi
 00553C68    dec         ebx
>00553C69    jne         00553C2B
 00553C6B    mov         eax,edi
 00553C6D    call        TChartSeries.RefreshSeries
 00553C72    pop         edx
 00553C73    pop         ebp
 00553C74    pop         edi
 00553C75    pop         esi
 00553C76    pop         ebx
 00553C77    ret
*}
end;

//00553C78
function TPieSeries.CalcClickedPie(x:Integer; y:Integer):Integer;
begin
{*
 00553C78    push        ebx
 00553C79    push        esi
 00553C7A    push        edi
 00553C7B    add         esp,0FFFFFFE0
 00553C7E    mov         dword ptr [esp+4],ecx
 00553C82    mov         dword ptr [esp],edx
 00553C85    mov         ebx,eax
 00553C87    mov         dword ptr [esp+8],0FFFFFFFF
 00553C8F    mov         eax,dword ptr [ebx+68]
 00553C92    test        eax,eax
>00553C94    je          00553CAE
 00553C96    push        0
 00553C98    lea         ecx,[esp+8]
 00553C9C    lea         edx,[esp+4]
 00553CA0    mov         eax,dword ptr [eax+280]
 00553CA6    mov         esi,dword ptr [eax]
 00553CA8    call        dword ptr [esi+0A0]
 00553CAE    mov         ecx,dword ptr [esp+4]
 00553CB2    mov         edx,dword ptr [esp]
 00553CB5    mov         eax,ebx
 00553CB7    call        TCircledSeries.PointToAngle
 00553CBC    fstp        qword ptr [esp+10]
 00553CC0    wait
 00553CC1    mov         eax,ebx
 00553CC3    call        TChartSeries.Count
 00553CC8    mov         edi,eax
 00553CCA    dec         edi
 00553CCB    test        edi,edi
>00553CCD    jl          00553D4A
 00553CCF    inc         edi
 00553CD0    xor         esi,esi
 00553CD2    lea         eax,[esp+1C]
 00553CD6    push        eax
 00553CD7    lea         ecx,[esp+1C]
 00553CDB    mov         edx,esi
 00553CDD    mov         eax,ebx
 00553CDF    call        TPieSeries.CalcExplodedOffset
 00553CE4    mov         eax,dword ptr [esp]
 00553CE7    sub         eax,dword ptr [ebx+138]
 00553CED    cdq
 00553CEE    xor         eax,edx
 00553CF0    sub         eax,edx
 00553CF2    mov         edx,dword ptr [ebx+118]
 00553CF8    add         edx,dword ptr [esp+18]
 00553CFC    cmp         eax,edx
>00553CFE    jge         00553D46
 00553D00    mov         eax,dword ptr [esp+4]
 00553D04    sub         eax,dword ptr [ebx+13C]
 00553D0A    cdq
 00553D0B    xor         eax,edx
 00553D0D    sub         eax,edx
 00553D0F    mov         edx,dword ptr [ebx+11C]
 00553D15    add         edx,dword ptr [esp+1C]
 00553D19    cmp         eax,edx
>00553D1B    jge         00553D46
 00553D1D    lea         eax,[esi+esi*2]
 00553D20    mov         edx,dword ptr [ebx+168]
 00553D26    lea         edx,[edx+eax*8]
 00553D29    fld         qword ptr [esp+10]
 00553D2D    fcomp       qword ptr [edx]
 00553D2F    fnstsw      al
 00553D31    sahf
>00553D32    jb          00553D46
 00553D34    fld         qword ptr [esp+10]
 00553D38    fcomp       qword ptr [edx+10]
 00553D3B    fnstsw      al
 00553D3D    sahf
>00553D3E    ja          00553D46
 00553D40    mov         dword ptr [esp+8],esi
>00553D44    jmp         00553D4A
 00553D46    inc         esi
 00553D47    dec         edi
>00553D48    jne         00553CD2
 00553D4A    mov         eax,dword ptr [esp+8]
 00553D4E    add         esp,20
 00553D51    pop         edi
 00553D52    pop         esi
 00553D53    pop         ebx
 00553D54    ret
*}
end;

//00553D58
function TPieSeries.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 00553D58    push        ebx
 00553D59    push        esi
 00553D5A    push        edi
 00553D5B    mov         edi,ecx
 00553D5D    mov         esi,edx
 00553D5F    mov         ebx,eax
 00553D61    mov         ecx,edi
 00553D63    mov         edx,esi
 00553D65    mov         eax,ebx
 00553D67    call        TChartSeries.Clicked
 00553D6C    cmp         eax,0FFFFFFFF
>00553D6F    jne         00553D7C
 00553D71    mov         ecx,edi
 00553D73    mov         edx,esi
 00553D75    mov         eax,ebx
 00553D77    call        TPieSeries.CalcClickedPie
 00553D7C    pop         edi
 00553D7D    pop         esi
 00553D7E    pop         ebx
 00553D7F    ret
*}
end;

//00553D80
function TPieSeries.CountLegendItems:Integer;
begin
{*
 00553D80    push        ebx
 00553D81    push        esi
 00553D82    push        edi
 00553D83    push        ebp
 00553D84    mov         edi,eax
 00553D86    mov         eax,edi
 00553D88    call        TChartSeries.Count
 00553D8D    mov         ebp,eax
 00553D8F    mov         eax,edi
 00553D91    call        TChartSeries.Count
 00553D96    mov         ebx,eax
 00553D98    dec         ebx
 00553D99    test        ebx,ebx
>00553D9B    jl          00553DB2
 00553D9D    inc         ebx
 00553D9E    xor         esi,esi
 00553DA0    mov         edx,esi
 00553DA2    mov         eax,edi
 00553DA4    call        TPieSeries.BelongsToOtherSlice
 00553DA9    test        al,al
>00553DAB    je          00553DAE
 00553DAD    dec         ebp
 00553DAE    inc         esi
 00553DAF    dec         ebx
>00553DB0    jne         00553DA0
 00553DB2    mov         eax,ebp
 00553DB4    pop         ebp
 00553DB5    pop         edi
 00553DB6    pop         esi
 00553DB7    pop         ebx
 00553DB8    ret
*}
end;

//00553DBC
function TPieSeries.LegendToValueIndex(LegendIndex:Integer):Integer;
begin
{*
 00553DBC    push        ebx
 00553DBD    push        esi
 00553DBE    push        edi
 00553DBF    push        ebp
 00553DC0    add         esp,0FFFFFFF8
 00553DC3    mov         dword ptr [esp],edx
 00553DC6    mov         edi,eax
 00553DC8    mov         eax,dword ptr [esp]
 00553DCB    mov         dword ptr [esp+4],eax
 00553DCF    or          ebp,0FFFFFFFF
 00553DD2    mov         eax,edi
 00553DD4    call        TChartSeries.Count
 00553DD9    mov         ebx,eax
 00553DDB    dec         ebx
 00553DDC    test        ebx,ebx
>00553DDE    jl          00553E00
 00553DE0    inc         ebx
 00553DE1    xor         esi,esi
 00553DE3    mov         edx,esi
 00553DE5    mov         eax,edi
 00553DE7    call        TPieSeries.BelongsToOtherSlice
 00553DEC    test        al,al
>00553DEE    jne         00553DFC
 00553DF0    inc         ebp
 00553DF1    cmp         ebp,dword ptr [esp]
>00553DF4    jne         00553DFC
 00553DF6    mov         dword ptr [esp+4],esi
>00553DFA    jmp         00553E00
 00553DFC    inc         esi
 00553DFD    dec         ebx
>00553DFE    jne         00553DE3
 00553E00    mov         eax,dword ptr [esp+4]
 00553E04    pop         ecx
 00553E05    pop         edx
 00553E06    pop         ebp
 00553E07    pop         edi
 00553E08    pop         esi
 00553E09    pop         ebx
 00553E0A    ret
*}
end;

//00553E0C
function TPieSeries.BelongsToOtherSlice(ValueIndex:Integer):Boolean;
begin
{*
 00553E0C    push        ebx
 00553E0D    push        esi
 00553E0E    mov         esi,edx
 00553E10    mov         ebx,eax
 00553E12    mov         edx,esi
 00553E14    mov         eax,dword ptr [ebx+84]
 00553E1A    mov         ecx,dword ptr [eax]
 00553E1C    call        dword ptr [ecx+0C]
 00553E1F    fcomp       dword ptr ds:[553E30]
 00553E25    fnstsw      al
 00553E27    sahf
 00553E28    sete        al
 00553E2B    pop         esi
 00553E2C    pop         ebx
 00553E2D    ret
*}
end;

//00553E34
procedure TPieSeries.CalcAngles;
begin
{*
 00553E34    push        ebx
 00553E35    push        esi
 00553E36    push        edi
 00553E37    push        ebp
 00553E38    add         esp,0FFFFFFE8
 00553E3B    mov         edi,eax
 00553E3D    xor         eax,eax
 00553E3F    mov         dword ptr [esp+8],eax
 00553E43    mov         dword ptr [esp+0C],eax
 00553E47    mov         eax,dword ptr [edi+8C]
 00553E4D    call        TChartValueList.GetTotalABS
 00553E52    fstp        qword ptr [esp]
 00553E55    wait
 00553E56    fld         qword ptr [esp]
 00553E59    fcomp       dword ptr ds:[553F8C]
 00553E5F    fnstsw      al
 00553E61    sahf
>00553E62    je          00553E74
 00553E64    fld         qword ptr ds:[6E37AC]
 00553E6A    fdiv        qword ptr [esp]
 00553E6D    fstp        qword ptr [esp+10]
 00553E71    wait
>00553E72    jmp         00553E7E
 00553E74    xor         eax,eax
 00553E76    mov         dword ptr [esp+10],eax
 00553E7A    mov         dword ptr [esp+14],eax
 00553E7E    mov         eax,edi
 00553E80    call        TChartSeries.Count
 00553E85    push        eax
 00553E86    lea         eax,[edi+168]
 00553E8C    mov         ecx,1
 00553E91    mov         edx,dword ptr ds:[54E05C];TPieAngles
 00553E97    call        @DynArraySetLength
 00553E9C    add         esp,4
 00553E9F    mov         eax,edi
 00553EA1    call        TChartSeries.Count
 00553EA6    mov         ebp,eax
 00553EA8    dec         ebp
 00553EA9    test        ebp,ebp
>00553EAB    jl          00553F82
 00553EB1    inc         ebp
 00553EB2    xor         esi,esi
 00553EB4    lea         eax,[esi+esi*2]
 00553EB7    mov         edx,dword ptr [edi+168]
 00553EBD    lea         ebx,[edx+eax*8]
 00553EC0    test        esi,esi
>00553EC2    jne         00553ECD
 00553EC4    xor         eax,eax
 00553EC6    mov         dword ptr [ebx],eax
 00553EC8    mov         dword ptr [ebx+4],eax
>00553ECB    jmp         00553EE0
 00553ECD    mov         edx,dword ptr [edi+168]
 00553ED3    mov         ecx,dword ptr [edx+eax*8-8]
 00553ED7    mov         dword ptr [ebx],ecx
 00553ED9    mov         ecx,dword ptr [edx+eax*8-4]
 00553EDD    mov         dword ptr [ebx+4],ecx
 00553EE0    fld         qword ptr [esp]
 00553EE3    fcomp       dword ptr ds:[553F8C]
 00553EE9    fnstsw      al
 00553EEB    sahf
>00553EEC    je          00553F59
 00553EEE    mov         edx,esi
 00553EF0    mov         eax,edi
 00553EF2    call        TPieSeries.BelongsToOtherSlice
 00553EF7    test        al,al
>00553EF9    jne         00553F0F
 00553EFB    mov         edx,esi
 00553EFD    mov         eax,edi
 00553EFF    mov         ecx,dword ptr [eax]
 00553F01    call        dword ptr [ecx+68]
 00553F04    fabs
 00553F06    fadd        qword ptr [esp+8]
 00553F0A    fstp        qword ptr [esp+8]
 00553F0E    wait
 00553F0F    fld         qword ptr [esp+8]
 00553F13    fcomp       qword ptr [esp]
 00553F16    fnstsw      al
 00553F18    sahf
>00553F19    jne         00553F2F
 00553F1B    mov         eax,dword ptr ds:[6E37AC]
 00553F21    mov         dword ptr [ebx+10],eax
 00553F24    mov         eax,dword ptr ds:[6E37B0]
 00553F2A    mov         dword ptr [ebx+14],eax
>00553F2D    jmp         00553F3B
 00553F2F    fld         qword ptr [esp+8]
 00553F33    fmul        qword ptr [esp+10]
 00553F37    fstp        qword ptr [ebx+10]
 00553F3A    wait
 00553F3B    fld         qword ptr [ebx+10]
 00553F3E    fsub        qword ptr [ebx]
 00553F40    fcomp       qword ptr ds:[6E37AC]
 00553F46    fnstsw      al
 00553F48    sahf
>00553F49    jbe         00553F6B
 00553F4B    fld         qword ptr [ebx]
 00553F4D    fadd        qword ptr ds:[6E37AC]
 00553F53    fstp        qword ptr [ebx+10]
 00553F56    wait
>00553F57    jmp         00553F6B
 00553F59    mov         eax,dword ptr ds:[6E37AC]
 00553F5F    mov         dword ptr [ebx+10],eax
 00553F62    mov         eax,dword ptr ds:[6E37B0]
 00553F68    mov         dword ptr [ebx+14],eax
 00553F6B    fld         qword ptr [ebx]
 00553F6D    fadd        qword ptr [ebx+10]
 00553F70    fmul        dword ptr ds:[553F90]
 00553F76    fstp        qword ptr [ebx+8]
 00553F79    wait
 00553F7A    inc         esi
 00553F7B    dec         ebp
>00553F7C    jne         00553EB4
 00553F82    add         esp,18
 00553F85    pop         ebp
 00553F86    pop         edi
 00553F87    pop         esi
 00553F88    pop         ebx
 00553F89    ret
*}
end;

//00553F94
procedure TPieSeries.CalcExplodedRadius(ValueIndex:Integer; var AXRadius:Integer; var AYRadius:Integer);
begin
{*
 00553F94    push        ebp
 00553F95    mov         ebp,esp
 00553F97    add         esp,0FFFFFFF4
 00553F9A    push        ebx
 00553F9B    push        esi
 00553F9C    push        edi
 00553F9D    mov         edi,ecx
 00553F9F    mov         esi,edx
 00553FA1    mov         ebx,eax
 00553FA3    mov         edx,esi
 00553FA5    mov         eax,dword ptr [ebx+154]
 00553FAB    call        TExplodedSlices.GetValue
 00553FB0    mov         dword ptr [ebp-0C],eax
 00553FB3    fild        dword ptr [ebp-0C]
 00553FB6    fld         tbyte ptr ds:[553FF4]
 00553FBC    fmulp       st(1),st
 00553FBE    fadd        dword ptr ds:[554000]
 00553FC4    fstp        qword ptr [ebp-8]
 00553FC7    wait
 00553FC8    fild        dword ptr [ebx+118]
 00553FCE    fmul        qword ptr [ebp-8]
 00553FD1    call        @ROUND
 00553FD6    mov         dword ptr [edi],eax
 00553FD8    fild        dword ptr [ebx+11C]
 00553FDE    fmul        qword ptr [ebp-8]
 00553FE1    call        @ROUND
 00553FE6    mov         edx,dword ptr [ebp+8]
 00553FE9    mov         dword ptr [edx],eax
 00553FEB    pop         edi
 00553FEC    pop         esi
 00553FED    pop         ebx
 00553FEE    mov         esp,ebp
 00553FF0    pop         ebp
 00553FF1    ret         4
*}
end;

//00554004
procedure TPieSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 00554004    push        ebp
 00554005    mov         ebp,esp
 00554007    add         esp,0FFFFFFDC
 0055400A    push        ebx
 0055400B    push        esi
 0055400C    push        edi
 0055400D    mov         dword ptr [ebp-8],ecx
 00554010    mov         dword ptr [ebp-4],edx
 00554013    mov         ebx,eax
 00554015    mov         esi,dword ptr [ebp+8]
 00554018    mov         edx,dword ptr [ebp-4]
 0055401B    mov         eax,ebx
 0055401D    call        TPieSeries.BelongsToOtherSlice
 00554022    test        al,al
>00554024    jne         0055415E
 0055402A    mov         edi,dword ptr [ebx+68]
 0055402D    mov         eax,dword ptr [ebp-4]
 00554030    lea         eax,[eax+eax*2]
 00554033    mov         edx,dword ptr [ebx+168]
 00554039    lea         eax,[edx+eax*8]
 0055403C    mov         dword ptr [ebp-1C],eax
 0055403F    lea         eax,[ebp-10]
 00554042    push        eax
 00554043    lea         ecx,[ebp-0C]
 00554046    mov         edx,dword ptr [ebp-4]
 00554049    mov         eax,ebx
 0055404B    call        TPieSeries.CalcExplodedRadius
 00554050    mov         eax,dword ptr [edi+280]
 00554056    mov         edx,dword ptr [eax]
 00554058    call        dword ptr [edx+98]
 0055405E    test        al,al
>00554060    je          00554086
 00554062    fld         tbyte ptr ds:[554168]
 00554068    mov         eax,dword ptr [ebp-1C]
 0055406B    fadd        qword ptr [eax+8]
 0055406E    fadd        qword ptr ds:[6E37B4]
 00554074    fstp        qword ptr [ebp-18]
 00554077    wait
 00554078    mov         eax,dword ptr [ebx+64]
 0055407B    mov         edx,dword ptr [ebx+0FC]
 00554081    mov         dword ptr [eax+2C],edx
>00554084    jmp         005540A1
 00554086    mov         eax,dword ptr [ebp-1C]
 00554089    mov         edx,dword ptr [eax+8]
 0055408C    mov         dword ptr [ebp-18],edx
 0055408F    mov         edx,dword ptr [eax+0C]
 00554092    mov         dword ptr [ebp-14],edx
 00554095    mov         eax,dword ptr [ebx+64]
 00554098    mov         edx,dword ptr [ebx+104]
 0055409E    mov         dword ptr [eax+2C],edx
 005540A1    push        dword ptr [ebp-14]
 005540A4    push        dword ptr [ebp-18]
 005540A7    mov         eax,dword ptr [edi+280]
 005540AD    mov         edx,55417C;'W'
 005540B2    mov         ecx,dword ptr [eax]
 005540B4    call        dword ptr [ecx+60]
 005540B7    add         eax,dword ptr [ebp-0C]
 005540BA    mov         edx,dword ptr [ebx+64]
 005540BD    add         eax,dword ptr [edx+8]
 005540C0    mov         dword ptr [ebp-20],eax
 005540C3    fild        dword ptr [ebp-20]
 005540C6    add         esp,0FFFFFFF8
 005540C9    fstp        qword ptr [esp]
 005540CC    wait
 005540CD    mov         eax,dword ptr [edi+280]
 005540D3    call        TTeeCanvas.FontHeight
 005540D8    add         eax,dword ptr [ebp-10]
 005540DB    mov         edx,dword ptr [ebx+64]
 005540DE    add         eax,dword ptr [edx+8]
 005540E1    mov         dword ptr [ebp-24],eax
 005540E4    fild        dword ptr [ebp-24]
 005540E7    add         esp,0FFFFFFF8
 005540EA    fstp        qword ptr [esp]
 005540ED    wait
 005540EE    lea         ecx,[esi+10]
 005540F1    lea         edx,[esi+0C]
 005540F4    mov         eax,ebx
 005540F6    call        TCircledSeries.AngleToPos
 005540FB    push        dword ptr [ebp-14]
 005540FE    push        dword ptr [ebp-18]
 00554101    fild        dword ptr [ebp-0C]
 00554104    add         esp,0FFFFFFF8
 00554107    fstp        qword ptr [esp]
 0055410A    wait
 0055410B    fild        dword ptr [ebp-10]
 0055410E    add         esp,0FFFFFFF8
 00554111    fstp        qword ptr [esp]
 00554114    wait
 00554115    lea         ecx,[esi+8]
 00554118    lea         edx,[esi+4]
 0055411B    mov         eax,ebx
 0055411D    call        TCircledSeries.AngleToPos
 00554122    lea         eax,[esi+0C]
 00554125    mov         edx,dword ptr [eax]
 00554127    cmp         edx,dword ptr [ebx+138]
>0055412D    jle         00554134
 0055412F    mov         dword ptr [esi+1C],edx
>00554132    jmp         0055413A
 00554134    sub         edx,dword ptr [esi+24]
 00554137    mov         dword ptr [esi+1C],edx
 0055413A    mov         edx,dword ptr [eax+4]
 0055413D    cmp         edx,dword ptr [ebx+13C]
>00554143    jle         0055414A
 00554145    mov         dword ptr [esi+20],edx
>00554148    jmp         00554150
 0055414A    sub         edx,dword ptr [esi+18]
 0055414D    mov         dword ptr [esi+20],edx
 00554150    push        esi
 00554151    mov         ecx,dword ptr [ebp-8]
 00554154    mov         edx,dword ptr [ebp-4]
 00554157    mov         eax,ebx
 00554159    call        TChartSeries.DrawMark
 0055415E    pop         edi
 0055415F    pop         esi
 00554160    pop         ebx
 00554161    mov         esp,ebp
 00554163    pop         ebp
 00554164    ret         4
*}
end;

//00554180
function GetAngleSlice(Index:Integer):Double;
begin
{*
 00554180    push        ebp
 00554181    mov         ebp,esp
 00554183    add         esp,0FFFFFFF8
 00554186    lea         eax,[eax+eax*2]
 00554189    mov         edx,dword ptr [ebp+8]
 0055418C    mov         edx,dword ptr [edx+8]
 0055418F    mov         edx,dword ptr [edx-4]
 00554192    mov         edx,dword ptr [edx+168]
 00554198    fld         qword ptr [edx+eax*8+8]
 0055419C    mov         eax,dword ptr [ebp+8]
 0055419F    mov         eax,dword ptr [eax+8]
 005541A2    mov         eax,dword ptr [eax-4]
 005541A5    fadd        qword ptr [eax+128]
 005541AB    fstp        qword ptr [ebp-8]
 005541AE    wait
 005541AF    fld         qword ptr [ebp-8]
 005541B2    fcomp       qword ptr ds:[6E37AC]
 005541B8    fnstsw      al
 005541BA    sahf
>005541BB    jbe         005541CA
 005541BD    fld         qword ptr [ebp-8]
 005541C0    fsub        qword ptr ds:[6E37AC]
 005541C6    fstp        qword ptr [ebp-8]
 005541C9    wait
 005541CA    fld         qword ptr [ebp-8]
 005541CD    fcomp       qword ptr ds:[6E37B4]
 005541D3    fnstsw      al
 005541D5    sahf
>005541D6    jbe         00554202
 005541D8    fld         qword ptr [ebp-8]
 005541DB    fsub        qword ptr ds:[6E37B4]
 005541E1    fstp        qword ptr [ebp-8]
 005541E4    wait
 005541E5    fld         tbyte ptr ds:[554218]
 005541EB    fcomp       qword ptr [ebp-8]
 005541EE    fnstsw      al
 005541F0    sahf
>005541F1    jae         0055420F
 005541F3    fld         qword ptr ds:[6E37AC]
 005541F9    fsub        qword ptr [ebp-8]
 005541FC    fstp        qword ptr [ebp-8]
 005541FF    wait
>00554200    jmp         0055420F
 00554202    fld         qword ptr ds:[6E37B4]
 00554208    fsub        qword ptr [ebp-8]
 0055420B    fstp        qword ptr [ebp-8]
 0055420E    wait
 0055420F    fld         qword ptr [ebp-8]
 00554212    pop         ecx
 00554213    pop         ecx
 00554214    pop         ebp
 00554215    ret
*}
end;

//00554224
function CompareSliceAngle(A:Integer; B:Integer):Integer;
begin
{*
 00554224    push        ebp
 00554225    mov         ebp,esp
 00554227    add         esp,0FFFFFFF0
 0055422A    push        ebx
 0055422B    mov         ebx,edx
 0055422D    push        ebp
 0055422E    mov         edx,dword ptr [ebp+8]
 00554231    mov         eax,dword ptr [edx+eax*4-1008]
 00554238    call        GetAngleSlice
 0055423D    pop         ecx
 0055423E    fstp        qword ptr [ebp-8]
 00554241    wait
 00554242    push        ebp
 00554243    mov         eax,dword ptr [ebp+8]
 00554246    mov         eax,dword ptr [eax+ebx*4-1008]
 0055424D    call        GetAngleSlice
 00554252    pop         ecx
 00554253    fstp        qword ptr [ebp-10]
 00554256    wait
 00554257    fld         qword ptr [ebp-8]
 0055425A    fcomp       qword ptr [ebp-10]
 0055425D    fnstsw      al
 0055425F    sahf
>00554260    jae         00554267
 00554262    or          eax,0FFFFFFFF
>00554265    jmp         0055427B
 00554267    fld         qword ptr [ebp-8]
 0055426A    fcomp       qword ptr [ebp-10]
 0055426D    fnstsw      al
 0055426F    sahf
>00554270    jbe         00554279
 00554272    mov         eax,1
>00554277    jmp         0055427B
 00554279    xor         eax,eax
 0055427B    pop         ebx
 0055427C    mov         esp,ebp
 0055427E    pop         ebp
 0055427F    ret
*}
end;

//00554280
procedure SortSlices(l:Integer; r:Integer);
begin
{*
 00554280    push        ebp
 00554281    mov         ebp,esp
 00554283    add         esp,0FFFFFFF8
 00554286    push        ebx
 00554287    push        esi
 00554288    push        edi
 00554289    mov         dword ptr [ebp-8],edx
 0055428C    mov         dword ptr [ebp-4],eax
 0055428F    mov         esi,dword ptr [ebp+8]
 00554292    add         esi,0FFFFEFF4
 00554298    mov         edi,dword ptr [ebp+8]
 0055429B    add         edi,0FFFFEFF0
 005542A1    mov         ebx,dword ptr [ebp-4]
 005542A4    mov         eax,dword ptr [ebp-8]
 005542A7    mov         dword ptr [esi],eax
 005542A9    mov         eax,dword ptr [esi]
 005542AB    add         eax,ebx
 005542AD    shr         eax,1
 005542AF    mov         dword ptr [edi],eax
 005542B1    cmp         ebx,dword ptr [esi]
>005542B3    jge         0055431C
>005542B5    jmp         005542B8
 005542B7    inc         ebx
 005542B8    mov         eax,dword ptr [ebp+8]
 005542BB    push        eax
 005542BC    mov         edx,dword ptr [edi]
 005542BE    mov         eax,ebx
 005542C0    call        CompareSliceAngle
 005542C5    pop         ecx
 005542C6    test        eax,eax
>005542C8    jl          005542B7
>005542CA    jmp         005542CE
 005542CC    dec         dword ptr [esi]
 005542CE    mov         eax,dword ptr [ebp+8]
 005542D1    push        eax
 005542D2    mov         edx,dword ptr [esi]
 005542D4    mov         eax,dword ptr [edi]
 005542D6    call        CompareSliceAngle
 005542DB    pop         ecx
 005542DC    test        eax,eax
>005542DE    jl          005542CC
 005542E0    cmp         ebx,dword ptr [esi]
>005542E2    jge         00554311
 005542E4    mov         eax,dword ptr [esi]
 005542E6    mov         edx,dword ptr [ebp+8]
 005542E9    lea         edx,[edx+eax*4-1008]
 005542F0    mov         eax,dword ptr [ebp+8]
 005542F3    lea         eax,[eax+ebx*4-1008]
 005542FA    call        SwapInteger
 005542FF    cmp         ebx,dword ptr [edi]
>00554301    jne         00554309
 00554303    mov         eax,dword ptr [esi]
 00554305    mov         dword ptr [edi],eax
>00554307    jmp         00554311
 00554309    mov         eax,dword ptr [esi]
 0055430B    cmp         eax,dword ptr [edi]
>0055430D    jne         00554311
 0055430F    mov         dword ptr [edi],ebx
 00554311    cmp         ebx,dword ptr [esi]
>00554313    jg          00554318
 00554315    inc         ebx
 00554316    dec         dword ptr [esi]
 00554318    cmp         ebx,dword ptr [esi]
>0055431A    jl          005542B8
 0055431C    mov         eax,dword ptr [esi]
 0055431E    cmp         eax,dword ptr [ebp-4]
>00554321    jle         00554332
 00554323    mov         eax,dword ptr [ebp+8]
 00554326    push        eax
 00554327    mov         edx,dword ptr [esi]
 00554329    mov         eax,dword ptr [ebp-4]
 0055432C    call        SortSlices
 00554331    pop         ecx
 00554332    cmp         ebx,dword ptr [ebp-8]
>00554335    jge         00554346
 00554337    mov         eax,dword ptr [ebp+8]
 0055433A    push        eax
 0055433B    mov         edx,dword ptr [ebp-8]
 0055433E    mov         eax,ebx
 00554340    call        SortSlices
 00554345    pop         ecx
 00554346    pop         edi
 00554347    pop         esi
 00554348    pop         ebx
 00554349    pop         ecx
 0055434A    pop         ecx
 0055434B    pop         ebp
 0055434C    ret
*}
end;

//00554350
procedure TPieSeries.DrawAllValues;
begin
{*
 00554350    push        ebp
 00554351    mov         ebp,esp
 00554353    add         esp,0FFFFF004
 00554359    push        eax
 0055435A    add         esp,0FFFFFFDC
 0055435D    push        ebx
 0055435E    push        esi
 0055435F    push        edi
 00554360    mov         dword ptr [ebp-4],eax
 00554363    mov         eax,dword ptr [ebp-4]
 00554366    cmp         dword ptr [eax+158],0
>0055436D    jle         00554377
 0055436F    mov         eax,dword ptr [ebp-4]
 00554372    call        TPieSeries.CalcExplodeBiggest
 00554377    mov         dword ptr [ebp-1018],0FFFFFFFF
 00554381    xor         edi,edi
 00554383    mov         eax,dword ptr [ebp-4]
 00554386    call        TChartSeries.Count
 0055438B    dec         eax
 0055438C    mov         dword ptr [ebp-1014],eax
 00554392    mov         ebx,dword ptr [ebp-1014]
 00554398    test        ebx,ebx
>0055439A    jl          005543E0
 0055439C    inc         ebx
 0055439D    xor         esi,esi
 0055439F    mov         eax,dword ptr [ebp-4]
 005543A2    mov         eax,dword ptr [eax+154]
 005543A8    mov         edx,esi
 005543AA    call        TExplodedSlices.GetValue
 005543AF    cmp         edi,eax
>005543B1    jge         005543DC
 005543B3    mov         eax,dword ptr [ebp-4]
 005543B6    mov         eax,dword ptr [eax+154]
 005543BC    mov         edx,esi
 005543BE    call        TExplodedSlices.GetValue
 005543C3    mov         dword ptr [ebp-1024],eax
 005543C9    fild        dword ptr [ebp-1024]
 005543CF    call        @ROUND
 005543D4    mov         edi,eax
 005543D6    mov         dword ptr [ebp-1018],esi
 005543DC    inc         esi
 005543DD    dec         ebx
>005543DE    jne         0055439F
 005543E0    mov         eax,dword ptr [ebp-4]
 005543E3    call        TPieSeries.CalcAngles
 005543E8    cmp         dword ptr [ebp-1018],0FFFFFFFF
 005543EF    setne       al
 005543F2    mov         edx,dword ptr [ebp-4]
 005543F5    mov         byte ptr [edx+17C],al
 005543FB    test        al,al
>005543FD    je          00554462
 005543FF    lea         eax,[ebp-1020]
 00554405    push        eax
 00554406    lea         ecx,[ebp-101C]
 0055440C    mov         edx,dword ptr [ebp-1018]
 00554412    mov         eax,dword ptr [ebp-4]
 00554415    call        TPieSeries.CalcExplodedOffset
 0055441A    mov         eax,dword ptr [ebp-1020]
 00554420    cdq
 00554421    xor         eax,edx
 00554423    sub         eax,edx
 00554425    neg         eax
 00554427    sar         eax,1
>00554429    jns         0055442E
 0055442B    adc         eax,0
 0055442E    push        eax
 0055442F    mov         eax,dword ptr [ebp-101C]
 00554435    cdq
 00554436    xor         eax,edx
 00554438    sub         eax,edx
 0055443A    neg         eax
 0055443C    sar         eax,1
>0055443E    jns         00554443
 00554440    adc         eax,0
 00554443    push        eax
 00554444    mov         eax,dword ptr [ebp-4]
 00554447    add         eax,140
 0055444C    push        eax
 0055444D    call        USER32.InflateRect
 00554452    mov         eax,dword ptr [ebp-4]
 00554455    call        TCircledSeries.AdjustCircleRect
 0055445A    mov         eax,dword ptr [ebp-4]
 0055445D    call        TCircledSeries.CalcRadius
 00554462    push        0
 00554464    push        0
 00554466    mov         eax,dword ptr [ebp-4]
 00554469    fild        dword ptr [eax+118]
 0055446F    add         esp,0FFFFFFF8
 00554472    fstp        qword ptr [esp]
 00554475    wait
 00554476    mov         eax,dword ptr [ebp-4]
 00554479    fild        dword ptr [eax+11C]
 0055447F    add         esp,0FFFFFFF8
 00554482    fstp        qword ptr [esp]
 00554485    wait
 00554486    mov         eax,dword ptr [ebp-4]
 00554489    lea         ecx,[eax+170]
 0055448F    mov         eax,dword ptr [ebp-4]
 00554492    lea         edx,[eax+16C]
 00554498    mov         eax,dword ptr [ebp-4]
 0055449B    call        TCircledSeries.AngleToPos
 005544A0    mov         eax,dword ptr [ebp-4]
 005544A3    mov         ebx,dword ptr [eax+68]
 005544A6    cmp         byte ptr [ebx+270],0
>005544AD    je          0055451B
 005544AF    mov         eax,dword ptr [ebp-4]
 005544B2    cmp         byte ptr [eax+17C],0
>005544B9    je          0055451B
 005544BB    mov         eax,dword ptr [ebx+280]
 005544C1    mov         edx,dword ptr [eax]
 005544C3    call        dword ptr [edx+98]
 005544C9    test        al,al
>005544CB    jne         0055451B
 005544CD    mov         ebx,dword ptr [ebp-1014]
 005544D3    test        ebx,ebx
>005544D5    jl          005544E9
 005544D7    inc         ebx
 005544D8    xor         esi,esi
 005544DA    lea         eax,[ebp-1008]
 005544E0    mov         dword ptr [eax],esi
 005544E2    inc         esi
 005544E3    add         eax,4
 005544E6    dec         ebx
>005544E7    jne         005544E0
 005544E9    push        ebp
 005544EA    mov         edx,dword ptr [ebp-1014]
 005544F0    xor         eax,eax
 005544F2    call        SortSlices
 005544F7    pop         ecx
 005544F8    mov         ebx,dword ptr [ebp-1014]
 005544FE    test        ebx,ebx
>00554500    jl          00554523
 00554502    inc         ebx
 00554503    lea         esi,[ebp-1008]
 00554509    mov         edx,dword ptr [esi]
 0055450B    mov         eax,dword ptr [ebp-4]
 0055450E    mov         ecx,dword ptr [eax]
 00554510    call        dword ptr [ecx+58]
 00554513    add         esi,4
 00554516    dec         ebx
>00554517    jne         00554509
>00554519    jmp         00554523
 0055451B    mov         eax,dword ptr [ebp-4]
 0055451E    call        TPieSeries.DisableRotation
 00554523    pop         edi
 00554524    pop         esi
 00554525    pop         ebx
 00554526    mov         esp,ebp
 00554528    pop         ebp
 00554529    ret
*}
end;

//0055452C
procedure TPieSeries.DrawPie(ValueIndex:Integer);
begin
{*
 0055452C    push        ebx
 0055452D    push        esi
 0055452E    push        edi
 0055452F    add         esp,0FFFFFFF8
 00554532    mov         esi,edx
 00554534    mov         ebx,eax
 00554536    mov         eax,dword ptr [ebx+68]
 00554539    mov         eax,dword ptr [eax+280]
 0055453F    mov         edx,dword ptr [ebx+15C]
 00554545    call        TTeeCanvas.AssignVisiblePen
 0055454A    lea         eax,[esp+4]
 0055454E    push        eax
 0055454F    lea         ecx,[esp+4]
 00554553    mov         edx,esi
 00554555    mov         eax,ebx
 00554557    call        TPieSeries.CalcExplodedOffset
 0055455C    lea         eax,[esi+esi*2]
 0055455F    mov         edx,dword ptr [ebx+168]
 00554565    lea         eax,[edx+eax*8]
 00554568    mov         esi,eax
 0055456A    mov         eax,dword ptr [ebx+68]
 0055456D    mov         edi,dword ptr [eax+280]
 00554573    cmp         byte ptr [eax+270],0
>0055457A    je          005545E8
 0055457C    mov         eax,dword ptr [ebx+118]
 00554582    push        eax
 00554583    mov         eax,dword ptr [ebx+11C]
 00554589    push        eax
 0055458A    mov         eax,dword ptr [ebx+0FC]
 00554590    push        eax
 00554591    mov         eax,dword ptr [ebx+104]
 00554597    push        eax
 00554598    fld         qword ptr [esi]
 0055459A    fadd        qword ptr [ebx+128]
 005545A0    add         esp,0FFFFFFF8
 005545A3    fstp        qword ptr [esp]
 005545A6    wait
 005545A7    fld         qword ptr [esi+10]
 005545AA    fadd        qword ptr [ebx+128]
 005545B0    add         esp,0FFFFFFF8
 005545B3    fstp        qword ptr [esp]
 005545B6    wait
 005545B7    mov         al,byte ptr [ebx+150]
 005545BD    push        eax
 005545BE    mov         al,byte ptr [ebx+17C]
 005545C4    push        eax
 005545C5    mov         ecx,dword ptr [ebx+13C]
 005545CB    sub         ecx,dword ptr [esp+2C]
 005545CF    mov         edx,dword ptr [ebx+138]
 005545D5    add         edx,dword ptr [esp+28]
 005545D9    mov         eax,edi
 005545DB    mov         ebx,dword ptr [eax]
 005545DD    call        dword ptr [ebx+0F4]
>005545E3    jmp         005546C8
 005545E8    push        dword ptr [esi+14]
 005545EB    push        dword ptr [esi+10]
 005545EE    fild        dword ptr [ebx+118]
 005545F4    add         esp,0FFFFFFF8
 005545F7    fstp        qword ptr [esp]
 005545FA    wait
 005545FB    fild        dword ptr [ebx+11C]
 00554601    add         esp,0FFFFFFF8
 00554604    fstp        qword ptr [esp]
 00554607    wait
 00554608    lea         ecx,[ebx+178]
 0055460E    lea         edx,[ebx+174]
 00554614    mov         eax,ebx
 00554616    call        TCircledSeries.AngleToPos
 0055461B    mov         eax,dword ptr [ebx+16C]
 00554621    cmp         eax,dword ptr [ebx+174]
>00554627    jne         0055465B
 00554629    mov         eax,dword ptr [ebx+170]
 0055462F    cmp         eax,dword ptr [ebx+178]
>00554635    jne         0055465B
 00554637    mov         eax,ebx
 00554639    call        TChartSeries.Count
 0055463E    dec         eax
>0055463F    je          0055465B
 00554641    mov         eax,ebx
 00554643    call        TChartSeries.Count
 00554648    dec         eax
>00554649    jle         005546C8
 0055464B    fld         qword ptr [esi+10]
 0055464E    fsub        qword ptr [esi]
 00554650    fcomp       dword ptr ds:[5546D0]
 00554656    fnstsw      al
 00554658    sahf
>00554659    jbe         005546C8
 0055465B    lea         esi,[ebx+140]
 00554661    mov         eax,dword ptr [esi+8]
 00554664    add         eax,dword ptr [esp]
 00554667    push        eax
 00554668    mov         eax,dword ptr [esi+0C]
 0055466B    sub         eax,dword ptr [esp+8]
 0055466F    push        eax
 00554670    mov         eax,dword ptr [ebx+16C]
 00554676    add         eax,dword ptr [esp+8]
 0055467A    push        eax
 0055467B    mov         eax,dword ptr [ebx+170]
 00554681    sub         eax,dword ptr [esp+10]
 00554685    push        eax
 00554686    mov         eax,dword ptr [ebx+174]
 0055468C    add         eax,dword ptr [esp+10]
 00554690    push        eax
 00554691    mov         eax,dword ptr [ebx+178]
 00554697    sub         eax,dword ptr [esp+18]
 0055469B    push        eax
 0055469C    mov         ecx,dword ptr [esi+4]
 0055469F    sub         ecx,dword ptr [esp+1C]
 005546A3    mov         edx,dword ptr [esi]
 005546A5    add         edx,dword ptr [esp+18]
 005546A9    mov         eax,edi
 005546AB    mov         esi,dword ptr [eax]
 005546AD    call        dword ptr [esi+4C]
 005546B0    mov         eax,dword ptr [ebx+174]
 005546B6    mov         dword ptr [ebx+16C],eax
 005546BC    mov         eax,dword ptr [ebx+178]
 005546C2    mov         dword ptr [ebx+170],eax
 005546C8    pop         ecx
 005546C9    pop         edx
 005546CA    pop         edi
 005546CB    pop         esi
 005546CC    pop         ebx
 005546CD    ret
*}
end;

//005546D4
procedure TPieSeries.CalcExplodedOffset(ValueIndex:Integer; var OffsetX:Integer; var OffsetY:Integer);
begin
{*
 005546D4    push        ebp
 005546D5    mov         ebp,esp
 005546D7    add         esp,0FFFFFFC0
 005546DA    push        ebx
 005546DB    push        esi
 005546DC    push        edi
 005546DD    mov         esi,ecx
 005546DF    mov         dword ptr [ebp-4],edx
 005546E2    mov         ebx,eax
 005546E4    mov         edi,dword ptr [ebp+8]
 005546E7    xor         eax,eax
 005546E9    mov         dword ptr [esi],eax
 005546EB    xor         eax,eax
 005546ED    mov         dword ptr [edi],eax
 005546EF    cmp         byte ptr [ebx+17C],0
>005546F6    je          005547C8
 005546FC    mov         edx,dword ptr [ebp-4]
 005546FF    mov         eax,dword ptr [ebx+154]
 00554705    call        TExplodedSlices.GetValue
 0055470A    mov         dword ptr [ebp-40],eax
 0055470D    fild        dword ptr [ebp-40]
 00554710    fstp        qword ptr [ebp-10]
 00554713    wait
 00554714    fld         qword ptr [ebp-10]
 00554717    fcomp       dword ptr ds:[5547D4]
 0055471D    fnstsw      al
 0055471F    sahf
>00554720    jbe         005547C8
 00554726    mov         eax,dword ptr [ebp-4]
 00554729    lea         eax,[eax+eax*2]
 0055472C    mov         edx,dword ptr [ebx+168]
 00554732    lea         eax,[edx+eax*8]
 00554735    mov         dword ptr [ebp-3C],eax
 00554738    mov         eax,dword ptr [ebx+68]
 0055473B    mov         eax,dword ptr [eax+280]
 00554741    mov         edx,dword ptr [eax]
 00554743    call        dword ptr [edx+98]
 00554749    test        al,al
>0055474B    je          00554767
 0055474D    mov         eax,dword ptr [ebp-3C]
 00554750    fld         qword ptr [eax+8]
 00554753    fadd        qword ptr ds:[6E37B4]
 00554759    fld         tbyte ptr ds:[5547D8]
 0055475F    faddp       st(1),st
 00554761    fstp        qword ptr [ebp-38]
 00554764    wait
>00554765    jmp         00554776
 00554767    mov         eax,dword ptr [ebp-3C]
 0055476A    mov         edx,dword ptr [eax+8]
 0055476D    mov         dword ptr [ebp-38],edx
 00554770    mov         edx,dword ptr [eax+0C]
 00554773    mov         dword ptr [ebp-34],edx
 00554776    fld         qword ptr [ebp-38]
 00554779    fadd        qword ptr [ebx+128]
 0055477F    add         esp,0FFFFFFF4
 00554782    fstp        tbyte ptr [esp]
 00554785    wait
 00554786    lea         edx,[ebp-30]
 00554789    lea         eax,[ebp-20]
 0055478C    call        SinCos
 00554791    fld         tbyte ptr ds:[5547E4]
 00554797    fmul        qword ptr [ebp-10]
 0055479A    fstp        qword ptr [ebp-10]
 0055479D    wait
 0055479E    fild        dword ptr [ebx+118]
 005547A4    fmul        qword ptr [ebp-10]
 005547A7    fld         tbyte ptr [ebp-30]
 005547AA    fmulp       st(1),st
 005547AC    call        @ROUND
 005547B1    mov         dword ptr [esi],eax
 005547B3    fild        dword ptr [ebx+11C]
 005547B9    fmul        qword ptr [ebp-10]
 005547BC    fld         tbyte ptr [ebp-20]
 005547BF    fmulp       st(1),st
 005547C1    call        @ROUND
 005547C6    mov         dword ptr [edi],eax
 005547C8    pop         edi
 005547C9    pop         esi
 005547CA    pop         ebx
 005547CB    mov         esp,ebp
 005547CD    pop         ebp
 005547CE    ret         4
*}
end;

//005547F0
procedure TPieSeries.CalcExplodeBiggest;
begin
{*
 005547F0    push        ebx
 005547F1    push        esi
 005547F2    mov         ebx,eax
 005547F4    mov         esi,dword ptr [ebx+8C]
 005547FA    mov         eax,esi
 005547FC    call        TChartValueList.GetMaxValue
 00554801    add         esp,0FFFFFFF8
 00554804    fstp        qword ptr [esp]
 00554807    wait
 00554808    mov         eax,esi
 0055480A    call        TChartValueList.Locate
 0055480F    cmp         eax,0FFFFFFFF
>00554812    je          00554827
 00554814    mov         ecx,dword ptr [ebx+158]
 0055481A    mov         edx,eax
 0055481C    mov         eax,dword ptr [ebx+154]
 00554822    call        TExplodedSlices.SetValue
 00554827    pop         esi
 00554828    pop         ebx
 00554829    ret
*}
end;

//0055482C
procedure TPieSeries.SetExplodeBiggest(Value:Integer);
begin
{*
 0055482C    push        ebx
 0055482D    mov         ebx,eax
 0055482F    lea         eax,[ebx+158];TPieSeries.ExplodeBiggest:Integer
 00554835    mov         ecx,edx
 00554837    mov         edx,ebx
 00554839    xchg        eax,edx
 0055483A    call        TChartSeries.SetBooleanProperty
 0055483F    mov         eax,ebx
 00554841    call        TPieSeries.CalcExplodeBiggest
 00554846    pop         ebx
 00554847    ret
*}
end;

//00554848
procedure TPieSeries.SetPiePen(Value:TChartPen);
begin
{*
 00554848    mov         eax,dword ptr [eax+15C]
 0055484E    mov         ecx,dword ptr [eax]
 00554850    call        dword ptr [ecx+8]
 00554853    ret
*}
end;

//00554854
procedure TPieSeries.SetOtherSlice(Value:TPieOtherSlice);
begin
{*
 00554854    mov         eax,dword ptr [eax+160]
 0055485A    mov         ecx,dword ptr [eax]
 0055485C    call        dword ptr [ecx+8]
 0055485F    ret
*}
end;

//00554860
procedure TPieSeries.DrawValue(ValueIndex:Integer);
begin
{*
 00554860    push        ebx
 00554861    push        esi
 00554862    push        edi
 00554863    mov         esi,edx
 00554865    mov         edi,eax
 00554867    cmp         dword ptr [edi+130],4
>0055486E    jle         005548C5
 00554870    cmp         dword ptr [edi+134],4
>00554877    jle         005548C5
 00554879    mov         edx,esi
 0055487B    mov         eax,edi
 0055487D    call        TPieSeries.BelongsToOtherSlice
 00554882    test        al,al
>00554884    jne         005548C5
 00554886    cmp         byte ptr [edi+164],0
>0055488D    je          0055489A
 0055488F    mov         eax,esi
 00554891    call        GetDefaultPattern
 00554896    mov         ebx,eax
>00554898    jmp         0055489C
 0055489A    xor         ebx,ebx
 0055489C    mov         eax,edi
 0055489E    call        TCircledSeries.CalcCircleBackColor
 005548A3    push        eax
 005548A4    mov         edx,esi
 005548A6    mov         eax,edi
 005548A8    mov         ecx,dword ptr [eax]
 005548AA    call        dword ptr [ecx+5C]
 005548AD    mov         edx,eax
 005548AF    mov         ecx,ebx
 005548B1    mov         eax,dword ptr [edi+68]
 005548B4    call        TCustomTeePanel.SetBrushCanvas
 005548B9    mov         edx,esi
 005548BB    mov         eax,edi
 005548BD    mov         ecx,dword ptr [eax]
 005548BF    call        dword ptr [ecx+150]
 005548C5    pop         edi
 005548C6    pop         esi
 005548C7    pop         ebx
 005548C8    ret
*}
end;

//005548CC
procedure TPieSeries.SetUsePatterns(Value:Boolean);
begin
{*
 005548CC    lea         ecx,[eax+164];TPieSeries.UsePatterns:Boolean
 005548D2    xchg        ecx,edx
 005548D4    call        TChartSeries.SetIntegerProperty
 005548D9    ret
*}
end;

//005548DC
function TPieSeries.GetEditorClass:AnsiString;
begin
{*
 005548DC    push        ebx
 005548DD    mov         ebx,edx
 005548DF    mov         eax,ebx
 005548E1    mov         edx,5548F8;'TPieSeriesEditor'
 005548E6    call        @LStrAsg
 005548EB    pop         ebx
 005548EC    ret
*}
end;

//0055490C
function TPieSeries.GetPieValues:TChartValueList;
begin
{*
 0055490C    mov         eax,dword ptr [eax+8C]
 00554912    ret
*}
end;

//00554914
procedure TPieSeries.SetPieValues(Value:TChartValueList);
begin
{*
 00554914    call        TChartSeries.SetYValues
 00554919    ret
*}
end;

//0055491C
procedure TPieSeries.SetDark3D(Value:Boolean);
begin
{*
 0055491C    lea         ecx,[eax+150];TPieSeries.Dark3D:Boolean
 00554922    xchg        ecx,edx
 00554924    call        TChartSeries.SetIntegerProperty
 00554929    ret
*}
end;

//0055492C
function TPieSeries.MaxXValue:Double;
begin
{*
 0055492C    add         esp,0FFFFFFF8
 0055492F    mov         eax,dword ptr [eax+50]
 00554932    mov         edx,dword ptr [eax+10]
 00554935    mov         dword ptr [esp],edx
 00554938    mov         edx,dword ptr [eax+14]
 0055493B    mov         dword ptr [esp+4],edx
 0055493F    fld         qword ptr [esp]
 00554942    pop         ecx
 00554943    pop         edx
 00554944    ret
*}
end;

//00554948
function TPieSeries.MinXValue:Double;
begin
{*
 00554948    add         esp,0FFFFFFF8
 0055494B    mov         eax,dword ptr [eax+50]
 0055494E    mov         edx,dword ptr [eax+18]
 00554951    mov         dword ptr [esp],edx
 00554954    mov         edx,dword ptr [eax+1C]
 00554957    mov         dword ptr [esp+4],edx
 0055495B    fld         qword ptr [esp]
 0055495E    pop         ecx
 0055495F    pop         edx
 00554960    ret
*}
end;

//00554964
function TPieSeries.MaxYValue:Double;
begin
{*
 00554964    add         esp,0FFFFFFF8
 00554967    mov         eax,dword ptr [eax+54]
 0055496A    mov         edx,dword ptr [eax+10]
 0055496D    mov         dword ptr [esp],edx
 00554970    mov         edx,dword ptr [eax+14]
 00554973    mov         dword ptr [esp+4],edx
 00554977    fld         qword ptr [esp]
 0055497A    pop         ecx
 0055497B    pop         edx
 0055497C    ret
*}
end;

//00554980
function TPieSeries.MinYValue:Double;
begin
{*
 00554980    add         esp,0FFFFFFF8
 00554983    mov         eax,dword ptr [eax+54]
 00554986    mov         edx,dword ptr [eax+18]
 00554989    mov         dword ptr [esp],edx
 0055498C    mov         edx,dword ptr [eax+1C]
 0055498F    mov         dword ptr [esp+4],edx
 00554993    fld         qword ptr [esp]
 00554996    pop         ecx
 00554997    pop         edx
 00554998    ret
*}
end;

//0055499C
procedure TChartSeries.DrawAllValues;
begin
{*
 0055499C    push        ebx
 0055499D    mov         eax,dword ptr [eax+68]
 005549A0    mov         ebx,dword ptr [eax+274]
 005549A6    xor         edx,edx
 005549A8    mov         eax,ebx
 005549AA    call        TView3DOptions.SetOrthogonal
 005549AF    xor         edx,edx
 005549B1    mov         eax,ebx
 005549B3    call        TView3DOptions.SetRotation
 005549B8    mov         edx,131
 005549BD    mov         eax,ebx
 005549BF    call        TView3DOptions.SetElevation
 005549C4    pop         ebx
 005549C5    ret
*}
end;

//005549C8
procedure TPieSeries.PrepareForGallery(IsEnabled:Boolean);
begin
{*
 005549C8    push        ebx
 005549C9    push        esi
 005549CA    mov         ebx,edx
 005549CC    mov         esi,eax
 005549CE    mov         edx,ebx
 005549D0    mov         eax,esi
 005549D2    call        TChartSeries.PrepareForGallery
 005549D7    mov         edx,8
 005549DC    mov         eax,esi
 005549DE    mov         ecx,dword ptr [eax]
 005549E0    call        dword ptr [ecx+0A4];TPieSeries.FillSampleValues
 005549E6    mov         edx,4B
 005549EB    mov         eax,dword ptr [esi+68];TPieSeries.ParentChart:TCustomAxisPanel
 005549EE    call        TCustomTeePanel.Set3DPercent
 005549F3    mov         eax,dword ptr [esi+68];TPieSeries.ParentChart:TCustomAxisPanel
 005549F6    mov         dl,byte ptr [eax+270];TCustomAxisPanel.FView3D:Boolean
 005549FC    xor         dl,1
 005549FF    mov         eax,esi
 00554A01    call        TCircledSeries.SetCircled
 00554A06    mov         eax,esi
 00554A08    call        TChartSeries.DrawAllValues
 00554A0D    mov         edx,ebx
 00554A0F    mov         eax,esi
 00554A11    mov         ecx,dword ptr [eax]
 00554A13    call        dword ptr [ecx+78];TChartSeries.SetColorEachPoint
 00554A16    pop         esi
 00554A17    pop         ebx
 00554A18    ret
*}
end;

//00554A1C
procedure TPieSeries.Assign(Source:TPersistent);
begin
{*
 00554A1C    push        ebx
 00554A1D    push        esi
 00554A1E    push        edi
 00554A1F    mov         esi,edx
 00554A21    mov         ebx,eax
 00554A23    mov         eax,esi
 00554A25    mov         edx,dword ptr ds:[54E240];TPieSeries
 00554A2B    call        @IsClass
 00554A30    test        al,al
>00554A32    je          00554A7C
 00554A34    mov         edi,esi
 00554A36    mov         al,byte ptr [edi+150]
 00554A3C    mov         byte ptr [ebx+150],al
 00554A42    mov         al,byte ptr [edi+164]
 00554A48    mov         byte ptr [ebx+164],al
 00554A4E    mov         edx,dword ptr [edi+15C]
 00554A54    mov         eax,dword ptr [ebx+15C]
 00554A5A    mov         ecx,dword ptr [eax]
 00554A5C    call        dword ptr [ecx+8]
 00554A5F    mov         eax,dword ptr [edi+158]
 00554A65    mov         dword ptr [ebx+158],eax
 00554A6B    mov         edx,dword ptr [edi+160]
 00554A71    mov         eax,dword ptr [ebx+160]
 00554A77    mov         ecx,dword ptr [eax]
 00554A79    call        dword ptr [ecx+8]
 00554A7C    mov         edx,esi
 00554A7E    mov         eax,ebx
 00554A80    call        TCircledSeries.Assign
 00554A85    mov         dl,1
 00554A87    mov         eax,ebx
 00554A89    mov         ecx,dword ptr [eax]
 00554A8B    call        dword ptr [ecx+78]
 00554A8E    pop         edi
 00554A8F    pop         esi
 00554A90    pop         ebx
 00554A91    ret
*}
end;

//00554A94
procedure TPieSeries.DoBeforeDrawChart;
begin
{*
 00554A94    push        ebx
 00554A95    push        esi
 00554A96    push        edi
 00554A97    add         esp,0FFFFFFF0
 00554A9A    mov         ebx,eax
 00554A9C    mov         eax,ebx
 00554A9E    call        TPieSeries.GetPieValues
 00554AA3    cmp         byte ptr [eax+2C],0
>00554AA7    je          00554AAE
 00554AA9    call        TChartValueList.Sort
 00554AAE    mov         eax,ebx
 00554AB0    call        TChartSeries.Count
 00554AB5    mov         edi,eax
 00554AB7    dec         edi
 00554AB8    test        edi,edi
>00554ABA    jl          00554AEB
 00554ABC    inc         edi
 00554ABD    xor         esi,esi
 00554ABF    mov         edx,esi
 00554AC1    mov         eax,dword ptr [ebx+84]
 00554AC7    mov         ecx,dword ptr [eax]
 00554AC9    call        dword ptr [ecx+0C]
 00554ACC    fld         tbyte ptr ds:[554C08]
 00554AD2    fcompp
 00554AD4    fnstsw      al
 00554AD6    sahf
>00554AD7    jne         00554AE7
 00554AD9    mov         edx,esi
 00554ADB    mov         eax,ebx
 00554ADD    mov         ecx,dword ptr [eax]
 00554ADF    call        dword ptr [ecx+0A0]
>00554AE5    jmp         00554AEB
 00554AE7    inc         esi
 00554AE8    dec         edi
>00554AE9    jne         00554ABF
 00554AEB    mov         eax,dword ptr [ebx+84]
 00554AF1    call        TChartValueList.FillSequence
 00554AF6    mov         eax,dword ptr [ebx+160]
 00554AFC    cmp         byte ptr [eax+4],0
>00554B00    je          00554BFF
 00554B06    mov         eax,dword ptr [ebx+8C]
 00554B0C    call        TChartValueList.GetTotalABS
 00554B11    fcomp       dword ptr ds:[554C14]
 00554B17    fnstsw      al
 00554B19    sahf
>00554B1A    jbe         00554BFF
 00554B20    xor         eax,eax
 00554B22    mov         dword ptr [esp+8],eax
 00554B26    mov         dword ptr [esp+0C],eax
 00554B2A    mov         eax,ebx
 00554B2C    call        TChartSeries.Count
 00554B31    mov         edi,eax
 00554B33    dec         edi
 00554B34    test        edi,edi
>00554B36    jl          00554BB1
 00554B38    inc         edi
 00554B39    xor         esi,esi
 00554B3B    mov         edx,esi
 00554B3D    mov         eax,dword ptr [ebx+8C]
 00554B43    mov         ecx,dword ptr [eax]
 00554B45    call        dword ptr [ecx+0C]
 00554B48    fstp        qword ptr [esp]
 00554B4B    wait
 00554B4C    mov         eax,dword ptr [ebx+160]
 00554B52    cmp         byte ptr [eax+4],1
>00554B56    jne         00554B72
 00554B58    mov         eax,dword ptr [ebx+8C]
 00554B5E    call        TChartValueList.GetTotalABS
 00554B63    fld         qword ptr [esp]
 00554B66    fmul        dword ptr ds:[554C18]
 00554B6C    fdivrp      st(1),st
 00554B6E    fstp        qword ptr [esp]
 00554B71    wait
 00554B72    fld         qword ptr [esp]
 00554B75    mov         eax,dword ptr [ebx+160]
 00554B7B    fcomp       qword ptr [eax+10]
 00554B7E    fnstsw      al
 00554B80    sahf
>00554B81    jae         00554BAD
 00554B83    mov         edx,esi
 00554B85    mov         eax,dword ptr [ebx+8C]
 00554B8B    mov         ecx,dword ptr [eax]
 00554B8D    call        dword ptr [ecx+0C]
 00554B90    fadd        qword ptr [esp+8]
 00554B94    fstp        qword ptr [esp+8]
 00554B98    wait
 00554B99    push        0BFF00000
 00554B9E    push        0
 00554BA0    mov         edx,esi
 00554BA2    mov         eax,dword ptr [ebx+84]
 00554BA8    mov         ecx,dword ptr [eax]
 00554BAA    call        dword ptr [ecx+10]
 00554BAD    inc         esi
 00554BAE    dec         edi
>00554BAF    jne         00554B3B
 00554BB1    fld         qword ptr [esp+8]
 00554BB5    fcomp       dword ptr ds:[554C14]
 00554BBB    fnstsw      al
 00554BBD    sahf
>00554BBE    je          00554BFF
 00554BC0    push        41DFFFFF
 00554BC5    push        0FFC00000
 00554BCA    push        dword ptr [esp+14]
 00554BCE    push        dword ptr [esp+14]
 00554BD2    mov         eax,dword ptr [ebx+160]
 00554BD8    mov         edx,dword ptr [eax+8]
 00554BDB    mov         ecx,20000000
 00554BE0    mov         eax,ebx
 00554BE2    mov         esi,dword ptr [eax]
 00554BE4    call        dword ptr [esi+90]
 00554BEA    mov         ebx,dword ptr [ebx+8C]
 00554BF0    mov         eax,ebx
 00554BF2    call        TChartValueList.GetTotalABS
 00554BF7    fsub        qword ptr [esp+8]
 00554BFB    fstp        qword ptr [ebx+48]
 00554BFE    wait
 00554BFF    add         esp,10
 00554C02    pop         edi
 00554C03    pop         esi
 00554C04    pop         ebx
 00554C05    ret
*}
end;

//00554C1C
procedure TPieSeries.SwapValueIndex(a:Integer; b:Integer);
begin
{*
 00554C1C    push        ebx
 00554C1D    push        esi
 00554C1E    push        edi
 00554C1F    push        ebp
 00554C20    push        ecx
 00554C21    mov         dword ptr [esp],ecx
 00554C24    mov         ebp,edx
 00554C26    mov         edi,eax
 00554C28    mov         ecx,dword ptr [esp]
 00554C2B    mov         edx,ebp
 00554C2D    mov         eax,edi
 00554C2F    call        TChartSeries.SwapValueIndex
 00554C34    mov         ebx,dword ptr [edi+154]
>00554C3A    jmp         00554C47
 00554C3C    xor         ecx,ecx
 00554C3E    mov         edx,esi
 00554C40    mov         eax,ebx
 00554C42    call        TExplodedSlices.SetValue
 00554C47    mov         eax,edi
 00554C49    call        TChartSeries.Count
 00554C4E    mov         esi,dword ptr [ebx+8]
 00554C51    cmp         eax,esi
>00554C53    jg          00554C3C
 00554C55    mov         ecx,dword ptr [esp]
 00554C58    mov         edx,ebp
 00554C5A    mov         eax,ebx
 00554C5C    call        TList.Exchange
 00554C61    pop         edx
 00554C62    pop         ebp
 00554C63    pop         edi
 00554C64    pop         esi
 00554C65    pop         ebx
 00554C66    ret
*}
end;

//00554C68
constructor TFastLineSeries.Create(AOwner:TComponent);
begin
{*
 00554C68    push        ebx
 00554C69    push        esi
 00554C6A    test        dl,dl
>00554C6C    je          00554C76
 00554C6E    add         esp,0FFFFFFF0
 00554C71    call        @ClassCreate
 00554C76    mov         ebx,edx
 00554C78    mov         esi,eax
 00554C7A    xor         edx,edx
 00554C7C    mov         eax,esi
 00554C7E    call        TChartSeries.Create
 00554C83    mov         eax,esi
 00554C85    call        TChartSeries.CreateChartPen
 00554C8A    mov         dword ptr [esi+10C],eax
 00554C90    mov         byte ptr [esi+0FA],0
 00554C97    mov         byte ptr [esi+0F9],1
 00554C9E    mov         byte ptr [esi+108],1
 00554CA5    mov         eax,esi
 00554CA7    test        bl,bl
>00554CA9    je          00554CBA
 00554CAB    call        @AfterConstruction
 00554CB0    pop         dword ptr fs:[0]
 00554CB7    add         esp,0C
 00554CBA    mov         eax,esi
 00554CBC    pop         esi
 00554CBD    pop         ebx
 00554CBE    ret
*}
end;

//00554CC0
destructor TFastLineSeries.Destroy;
begin
{*
 00554CC0    push        ebx
 00554CC1    push        esi
 00554CC2    call        @BeforeDestruction
 00554CC7    mov         ebx,edx
 00554CC9    mov         esi,eax
 00554CCB    mov         eax,dword ptr [esi+10C]
 00554CD1    call        TObject.Free
 00554CD6    mov         edx,ebx
 00554CD8    and         dl,0FC
 00554CDB    mov         eax,esi
 00554CDD    call        TChartSeries.Destroy
 00554CE2    test        bl,bl
>00554CE4    jle         00554CED
 00554CE6    mov         eax,esi
 00554CE8    call        @ClassDestroy
 00554CED    pop         esi
 00554CEE    pop         ebx
 00554CEF    ret
*}
end;

//00554CF0
procedure TFastLineSeries.SetLinePen(Value:TChartPen);
begin
{*
 00554CF0    push        ebx
 00554CF1    mov         ebx,eax
 00554CF3    mov         eax,dword ptr [ebx+10C]
 00554CF9    mov         ecx,dword ptr [eax]
 00554CFB    call        dword ptr [ecx+8]
 00554CFE    mov         eax,dword ptr [ebx+10C]
 00554D04    call        TPen.GetColor
 00554D09    mov         edx,eax
 00554D0B    mov         eax,ebx
 00554D0D    mov         ecx,dword ptr [eax]
 00554D0F    call        dword ptr [ecx+80]
 00554D15    pop         ebx
 00554D16    ret
*}
end;

//00554D18
procedure TFastLineSeries.NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer);
begin
{*
 00554D18    push        ebx
 00554D19    push        esi
 00554D1A    push        edi
 00554D1B    push        ebp
 00554D1C    push        ecx
 00554D1D    mov         edi,ecx
 00554D1F    mov         esi,eax
 00554D21    cmp         byte ptr [esi+108],0
>00554D28    je          00554D38
 00554D2A    mov         ecx,edi
 00554D2C    mov         eax,esi
 00554D2E    call        TChartSeries.NotifyNewValue
>00554D33    jmp         00554DC7
 00554D38    mov         eax,dword ptr [esi+68]
 00554D3B    mov         dword ptr [esp],eax
 00554D3E    mov         eax,dword ptr [esp]
 00554D41    mov         ebp,dword ptr [eax+280]
 00554D47    mov         eax,dword ptr [ebp+0C]
 00554D4A    mov         edx,dword ptr [esi+10C]
 00554D50    mov         ecx,dword ptr [eax]
 00554D52    call        dword ptr [ecx+8]
 00554D55    test        edi,edi
>00554D57    jne         00554D5D
 00554D59    xor         ebx,ebx
>00554D5B    jmp         00554D60
 00554D5D    mov         ebx,edi
 00554D5F    dec         ebx
 00554D60    mov         eax,dword ptr [esp]
 00554D63    cmp         byte ptr [eax+270],0
>00554D6A    je          00554D9B
 00554D6C    mov         eax,dword ptr [esi+100]
 00554D72    push        eax
 00554D73    mov         edx,ebx
 00554D75    mov         eax,esi
 00554D77    mov         ecx,dword ptr [eax]
 00554D79    call        dword ptr [ecx+0E8]
 00554D7F    push        eax
 00554D80    mov         edx,ebx
 00554D82    mov         eax,esi
 00554D84    mov         ecx,dword ptr [eax]
 00554D86    call        dword ptr [ecx+0E4]
 00554D8C    mov         edx,eax
 00554D8E    mov         eax,ebp
 00554D90    pop         ecx
 00554D91    mov         ebx,dword ptr [eax]
 00554D93    call        dword ptr [ebx+0EC]
>00554D99    jmp         00554DBE
 00554D9B    mov         edx,ebx
 00554D9D    mov         eax,esi
 00554D9F    mov         ecx,dword ptr [eax]
 00554DA1    call        dword ptr [ecx+0E8]
 00554DA7    push        eax
 00554DA8    mov         edx,ebx
 00554DAA    mov         eax,esi
 00554DAC    mov         ecx,dword ptr [eax]
 00554DAE    call        dword ptr [ecx+0E4]
 00554DB4    mov         edx,eax
 00554DB6    mov         eax,ebp
 00554DB8    pop         ecx
 00554DB9    mov         ebx,dword ptr [eax]
 00554DBB    call        dword ptr [ebx+48]
 00554DBE    mov         edx,edi
 00554DC0    mov         eax,esi
 00554DC2    mov         ecx,dword ptr [eax]
 00554DC4    call        dword ptr [ecx+58]
 00554DC7    pop         edx
 00554DC8    pop         ebp
 00554DC9    pop         edi
 00554DCA    pop         esi
 00554DCB    pop         ebx
 00554DCC    ret
*}
end;

//00554DD0
function TFastLineSeries.GetEditorClass:AnsiString;
begin
{*
 00554DD0    push        ebx
 00554DD1    mov         ebx,edx
 00554DD3    mov         eax,ebx
 00554DD5    mov         edx,554DEC;'TFastLineSeriesEditor'
 00554DDA    call        @LStrAsg
 00554DDF    pop         ebx
 00554DE0    ret
*}
end;

//00554E04
procedure TChartSeries.GalleryChanged3D(Is3D:Boolean);
begin
{*
 00554E04    push        ebx
 00554E05    push        esi
 00554E06    mov         esi,dword ptr [eax+68]
 00554E09    mov         ebx,dword ptr [esi+280]
 00554E0F    mov         edx,dword ptr [eax+10C]
 00554E15    mov         eax,ebx
 00554E17    call        TTeeCanvas.AssignVisiblePen
 00554E1C    mov         edx,dword ptr [ebx+0C]
 00554E1F    mov         eax,esi
 00554E21    call        TCustomTeePanel.CheckPenWidth
 00554E26    mov         dl,1
 00554E28    mov         eax,dword ptr [ebx+10]
 00554E2B    call        TBrush.SetStyle
 00554E30    pop         esi
 00554E31    pop         ebx
 00554E32    ret
*}
end;

//00554E34
procedure TPieSeries.GalleryChanged3D(Is3D:Boolean);
begin
{*
 00554E34    push        ebx
 00554E35    mov         ebx,eax
 00554E37    mov         eax,ebx
 00554E39    call        TChartSeries.GalleryChanged3D
 00554E3E    mov         eax,ebx
 00554E40    call        TPieSeries.DisableRotation
 00554E45    pop         ebx
 00554E46    ret
*}
end;

//00554E48
procedure TFastLineSeries.DrawValue(ValueIndex:Integer);
begin
{*
 00554E48    push        ebx
 00554E49    push        esi
 00554E4A    push        edi
 00554E4B    push        ebp
 00554E4C    add         esp,0FFFFFFF0
 00554E4F    mov         ebx,edx
 00554E51    mov         esi,eax
 00554E53    mov         edx,ebx
 00554E55    mov         eax,esi
 00554E57    mov         ecx,dword ptr [eax]
 00554E59    call        dword ptr [ecx+0E4]
 00554E5F    mov         edi,eax
 00554E61    mov         edx,ebx
 00554E63    mov         eax,esi
 00554E65    mov         ecx,dword ptr [eax]
 00554E67    call        dword ptr [ecx+0E8]
 00554E6D    mov         dword ptr [esp],eax
 00554E70    mov         eax,dword ptr [esi+68]
 00554E73    mov         dl,byte ptr [eax+270]
 00554E79    mov         byte ptr [esp+0C],dl
 00554E7D    mov         ebp,dword ptr [eax+280]
 00554E83    cmp         ebx,dword ptr [esi+4C]
>00554E86    jne         00554F25
 00554E8C    test        ebx,ebx
>00554E8E    jle         00554EF7
 00554E90    mov         edx,ebx
 00554E92    dec         edx
 00554E93    mov         eax,esi
 00554E95    mov         ecx,dword ptr [eax]
 00554E97    call        dword ptr [ecx+0E4]
 00554E9D    mov         dword ptr [esp+4],eax
 00554EA1    mov         edx,ebx
 00554EA3    dec         edx
 00554EA4    mov         eax,esi
 00554EA6    mov         ecx,dword ptr [eax]
 00554EA8    call        dword ptr [ecx+0E8]
 00554EAE    mov         dword ptr [esp+8],eax
 00554EB2    cmp         byte ptr [esp+0C],0
>00554EB7    je          00554EDD
 00554EB9    push        edi
 00554EBA    mov         eax,dword ptr [esp+4]
 00554EBE    push        eax
 00554EBF    mov         eax,dword ptr [esi+100]
 00554EC5    push        eax
 00554EC6    mov         ecx,dword ptr [esp+14]
 00554ECA    mov         edx,dword ptr [esp+10]
 00554ECE    mov         eax,ebp
 00554ED0    mov         ebx,dword ptr [eax]
 00554ED2    call        dword ptr [ebx+0E8]
>00554ED8    jmp         00554F64
 00554EDD    push        edi
 00554EDE    mov         eax,dword ptr [esp+4]
 00554EE2    push        eax
 00554EE3    mov         ecx,dword ptr [esp+10]
 00554EE7    mov         edx,dword ptr [esp+0C]
 00554EEB    mov         eax,ebp
 00554EED    mov         ebx,dword ptr [eax]
 00554EEF    call        dword ptr [ebx+84]
>00554EF5    jmp         00554F64
 00554EF7    cmp         byte ptr [esp+0C],0
>00554EFC    je          00554F17
 00554EFE    mov         eax,dword ptr [esi+100]
 00554F04    push        eax
 00554F05    mov         ecx,dword ptr [esp+4]
 00554F09    mov         edx,edi
 00554F0B    mov         eax,ebp
 00554F0D    mov         ebx,dword ptr [eax]
 00554F0F    call        dword ptr [ebx+0EC]
>00554F15    jmp         00554F64
 00554F17    mov         ecx,dword ptr [esp]
 00554F1A    mov         edx,edi
 00554F1C    mov         eax,ebp
 00554F1E    mov         ebx,dword ptr [eax]
 00554F20    call        dword ptr [ebx+48]
>00554F23    jmp         00554F64
 00554F25    cmp         edi,dword ptr [esi+110]
>00554F2B    jne         00554F38
 00554F2D    mov         eax,dword ptr [esp]
 00554F30    cmp         eax,dword ptr [esi+114]
>00554F36    je          00554F73
 00554F38    cmp         byte ptr [esp+0C],0
>00554F3D    je          00554F58
 00554F3F    mov         eax,dword ptr [esi+100]
 00554F45    push        eax
 00554F46    mov         ecx,dword ptr [esp+4]
 00554F4A    mov         edx,edi
 00554F4C    mov         eax,ebp
 00554F4E    mov         ebx,dword ptr [eax]
 00554F50    call        dword ptr [ebx+0F0]
>00554F56    jmp         00554F64
 00554F58    mov         ecx,dword ptr [esp]
 00554F5B    mov         edx,edi
 00554F5D    mov         eax,ebp
 00554F5F    mov         ebx,dword ptr [eax]
 00554F61    call        dword ptr [ebx+44]
 00554F64    mov         dword ptr [esi+110],edi
 00554F6A    mov         eax,dword ptr [esp]
 00554F6D    mov         dword ptr [esi+114],eax
 00554F73    add         esp,10
 00554F76    pop         ebp
 00554F77    pop         edi
 00554F78    pop         esi
 00554F79    pop         ebx
 00554F7A    ret
*}
end;

//00554F7C
procedure TFastLineSeries.SetSeriesColor(AColor:TColor);
begin
{*
 00554F7C    push        ebx
 00554F7D    push        esi
 00554F7E    mov         esi,edx
 00554F80    mov         ebx,eax
 00554F82    mov         edx,esi
 00554F84    mov         eax,ebx
 00554F86    call        TChartSeries.SetSeriesColor
 00554F8B    mov         edx,esi
 00554F8D    mov         eax,dword ptr [ebx+10C]
 00554F93    call        TPen.SetColor
 00554F98    pop         esi
 00554F99    pop         ebx
 00554F9A    ret
*}
end;

//00554F9C
procedure TFastLineSeries.DrawLegendShape(ValueIndex:Integer; const Rect:TRect);
begin
{*
 00554F9C    push        ebx
 00554F9D    push        esi
 00554F9E    mov         ebx,ecx
 00554FA0    mov         esi,eax
 00554FA2    mov         eax,esi
 00554FA4    call        TChartSeries.GalleryChanged3D
 00554FA9    mov         eax,dword ptr [ebx+4];TRect.Top:Longint
 00554FAC    add         eax,dword ptr [ebx+0C]
 00554FAF    shr         eax,1
 00554FB1    push        eax
 00554FB2    mov         ecx,dword ptr [ebx+8];TRect.Right:Longint
 00554FB5    mov         edx,dword ptr [ebx]
 00554FB7    mov         eax,dword ptr [esi+68];TFastLineSeries.ParentChart:TCustomAxisPanel
 00554FBA    mov         eax,dword ptr [eax+280];TCustomAxisPanel.InternalCanvas:TCanvas3D
 00554FC0    mov         ebx,dword ptr [eax]
 00554FC2    call        dword ptr [ebx+6C];TCanvas3D.DoHorizLine
 00554FC5    pop         esi
 00554FC6    pop         ebx
 00554FC7    ret
*}
end;

//00554FC8
procedure TFastLineSeries.Assign(Source:TPersistent);
begin
{*
 00554FC8    push        ebx
 00554FC9    push        esi
 00554FCA    mov         esi,edx
 00554FCC    mov         ebx,eax
 00554FCE    mov         eax,esi
 00554FD0    mov         edx,dword ptr ds:[54E578];TFastLineSeries
 00554FD6    call        @IsClass
 00554FDB    test        al,al
>00554FDD    je          00554FFE
 00554FDF    mov         eax,esi
 00554FE1    mov         dl,byte ptr [eax+108]
 00554FE7    mov         byte ptr [ebx+108],dl
 00554FED    mov         edx,dword ptr [eax+10C]
 00554FF3    mov         eax,dword ptr [ebx+10C]
 00554FF9    mov         ecx,dword ptr [eax]
 00554FFB    call        dword ptr [ecx+8]
 00554FFE    mov         edx,esi
 00555000    mov         eax,ebx
 00555002    call        TChartSeries.Assign
 00555007    pop         esi
 00555008    pop         ebx
 00555009    ret
*}
end;

//0055500C
function TFastLineSeries.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 0055500C    push        ebx
 0055500D    push        esi
 0055500E    push        edi
 0055500F    push        ebp
 00555010    add         esp,0FFFFFFE0
 00555013    mov         dword ptr [esp+4],ecx
 00555017    mov         dword ptr [esp],edx
 0055501A    mov         ebx,eax
 0055501C    mov         dword ptr [esp+8],0FFFFFFFF
 00555024    cmp         dword ptr [ebx+4C],0FFFFFFFF
>00555028    jle         005550EB
 0055502E    cmp         dword ptr [ebx+5C],0FFFFFFFF
>00555032    jle         005550EB
 00555038    mov         eax,dword ptr [ebx+68]
 0055503B    test        eax,eax
>0055503D    je          0055505C
 0055503F    mov         edx,dword ptr [ebx+100]
 00555045    push        edx
 00555046    lea         ecx,[esp+8]
 0055504A    lea         edx,[esp+4]
 0055504E    mov         eax,dword ptr [eax+280]
 00555054    mov         esi,dword ptr [eax]
 00555056    call        dword ptr [esi+0A0]
 0055505C    xor         eax,eax
 0055505E    mov         dword ptr [esp+0C],eax
 00555062    xor         eax,eax
 00555064    mov         dword ptr [esp+10],eax
 00555068    mov         eax,dword ptr [esp]
 0055506B    mov         dword ptr [esp+14],eax
 0055506F    mov         eax,dword ptr [esp+4]
 00555073    mov         dword ptr [esp+18],eax
 00555077    mov         esi,dword ptr [ebx+4C]
 0055507A    mov         eax,dword ptr [ebx+5C]
 0055507D    sub         eax,esi
>0055507F    jl          005550EB
 00555081    inc         eax
 00555082    mov         dword ptr [esp+1C],eax
 00555086    mov         edx,esi
 00555088    mov         eax,ebx
 0055508A    mov         ecx,dword ptr [eax]
 0055508C    call        dword ptr [ecx+0E4]
 00555092    mov         edi,eax
 00555094    mov         edx,esi
 00555096    mov         eax,ebx
 00555098    mov         ecx,dword ptr [eax]
 0055509A    call        dword ptr [ecx+0E8]
 005550A0    mov         ebp,eax
 005550A2    cmp         edi,dword ptr [esp]
>005550A5    jne         005550B3
 005550A7    cmp         ebp,dword ptr [esp+4]
>005550AB    jne         005550B3
 005550AD    mov         dword ptr [esp+8],esi
>005550B1    jmp         005550EB
 005550B3    cmp         esi,dword ptr [ebx+4C]
>005550B6    jle         005550DC
 005550B8    mov         eax,dword ptr [esp+0C]
 005550BC    push        eax
 005550BD    mov         eax,dword ptr [esp+14]
 005550C1    push        eax
 005550C2    lea         eax,[esp+1C]
 005550C6    mov         ecx,ebp
 005550C8    mov         edx,edi
 005550CA    call        PointInLine
 005550CF    test        al,al
>005550D1    je          005550DC
 005550D3    mov         eax,esi
 005550D5    dec         eax
 005550D6    mov         dword ptr [esp+8],eax
>005550DA    jmp         005550EB
 005550DC    mov         dword ptr [esp+0C],edi
 005550E0    mov         dword ptr [esp+10],ebp
 005550E4    inc         esi
 005550E5    dec         dword ptr [esp+1C]
>005550E9    jne         00555086
 005550EB    mov         eax,dword ptr [esp+8]
 005550EF    add         esp,20
 005550F2    pop         ebp
 005550F3    pop         edi
 005550F4    pop         esi
 005550F5    pop         ebx
 005550F6    ret
*}
end;

//005550F8
procedure TFastLineSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 005550F8    push        ebp
 005550F9    mov         ebp,esp
 005550FB    push        ebx
 005550FC    push        esi
 005550FD    mov         esi,dword ptr [ebp+8]
 00555100    mov         ebx,dword ptr [eax+64]
 00555103    mov         ebx,dword ptr [ebx+8]
 00555106    sub         dword ptr [esi+10],ebx
 00555109    sub         dword ptr [esi+20],ebx
 0055510C    push        esi
 0055510D    call        TChartSeries.DrawMark
 00555112    pop         esi
 00555113    pop         ebx
 00555114    pop         ebp
 00555115    ret         4
*}
end;

//00555118
procedure RegisterStandardSeries;
begin
{*
 00555118    push        ebp
 00555119    mov         ebp,esp
 0055511B    mov         ecx,7
 00555120    push        0
 00555122    push        0
 00555124    dec         ecx
>00555125    jne         00555120
 00555127    xor         eax,eax
 00555129    push        ebp
 0055512A    push        555292
 0055512F    push        dword ptr fs:[eax]
 00555132    mov         dword ptr fs:[eax],esp
 00555135    push        2
 00555137    lea         edx,[ebp-4]
 0055513A    mov         eax,[006E9D7C]
 0055513F    call        LoadResString
 00555144    mov         eax,dword ptr [ebp-4]
 00555147    push        eax
 00555148    lea         edx,[ebp-8]
 0055514B    mov         eax,[006E9D3C]
 00555150    call        LoadResString
 00555155    mov         edx,dword ptr [ebp-8]
 00555158    mov         eax,[0054CAFC];TLineSeries
 0055515D    pop         ecx
 0055515E    call        RegisterTeeSeries
 00555163    push        2
 00555165    lea         edx,[ebp-0C]
 00555168    mov         eax,[006E9D7C]
 0055516D    call        LoadResString
 00555172    mov         eax,dword ptr [ebp-0C]
 00555175    push        eax
 00555176    lea         edx,[ebp-10]
 00555179    mov         eax,[006E9D48]
 0055517E    call        LoadResString
 00555183    mov         edx,dword ptr [ebp-10]
 00555186    mov         eax,[0054D9B4];TBarSeries
 0055518B    pop         ecx
 0055518C    call        RegisterTeeSeries
 00555191    push        2
 00555193    lea         edx,[ebp-14]
 00555196    mov         eax,[006E9D7C]
 0055519B    call        LoadResString
 005551A0    mov         eax,dword ptr [ebp-14]
 005551A3    push        eax
 005551A4    lea         edx,[ebp-18]
 005551A7    mov         eax,[006E9D4C]
 005551AC    call        LoadResString
 005551B1    mov         edx,dword ptr [ebp-18]
 005551B4    mov         eax,[0054DBB0];THorizBarSeries
 005551B9    pop         ecx
 005551BA    call        RegisterTeeSeries
 005551BF    push        2
 005551C1    lea         edx,[ebp-1C]
 005551C4    mov         eax,[006E9D7C]
 005551C9    call        LoadResString
 005551CE    mov         eax,dword ptr [ebp-1C]
 005551D1    push        eax
 005551D2    lea         edx,[ebp-20]
 005551D5    mov         eax,[006E9D44]
 005551DA    call        LoadResString
 005551DF    mov         edx,dword ptr [ebp-20]
 005551E2    mov         eax,[0054D0B8];TAreaSeries
 005551E7    pop         ecx
 005551E8    call        RegisterTeeSeries
 005551ED    push        2
 005551EF    lea         edx,[ebp-24]
 005551F2    mov         eax,[006E9D7C]
 005551F7    call        LoadResString
 005551FC    mov         eax,dword ptr [ebp-24]
 005551FF    push        eax
 00555200    lea         edx,[ebp-28]
 00555203    mov         eax,[006E9D40]
 00555208    call        LoadResString
 0055520D    mov         edx,dword ptr [ebp-28]
 00555210    mov         eax,[0054CE0C];TPointSeries
 00555215    pop         ecx
 00555216    call        RegisterTeeSeries
 0055521B    push        1
 0055521D    lea         edx,[ebp-2C]
 00555220    mov         eax,[006E9D7C]
 00555225    call        LoadResString
 0055522A    mov         eax,dword ptr [ebp-2C]
 0055522D    push        eax
 0055522E    lea         edx,[ebp-30]
 00555231    mov         eax,[006E9D50]
 00555236    call        LoadResString
 0055523B    mov         edx,dword ptr [ebp-30]
 0055523E    mov         eax,[0054E240];TPieSeries
 00555243    pop         ecx
 00555244    call        RegisterTeeSeries
 00555249    push        2
 0055524B    lea         edx,[ebp-34]
 0055524E    mov         eax,[006E9D7C]
 00555253    call        LoadResString
 00555258    mov         eax,dword ptr [ebp-34]
 0055525B    push        eax
 0055525C    lea         edx,[ebp-38]
 0055525F    mov         eax,[006E9D54]
 00555264    call        LoadResString
 00555269    mov         edx,dword ptr [ebp-38]
 0055526C    mov         eax,[0054E578];TFastLineSeries
 00555271    pop         ecx
 00555272    call        RegisterTeeSeries
 00555277    xor         eax,eax
 00555279    pop         edx
 0055527A    pop         ecx
 0055527B    pop         ecx
 0055527C    mov         dword ptr fs:[eax],edx
 0055527F    push        555299
 00555284    lea         eax,[ebp-38]
 00555287    mov         edx,0E
 0055528C    call        @LStrArrayClr
 00555291    ret
>00555292    jmp         @HandleFinally
>00555297    jmp         00555284
 00555299    mov         esp,ebp
 0055529B    pop         ebp
 0055529C    ret
*}
end;

//005552A0
procedure _NF__5B4;
begin
{*
 005552A0    or          byte ptr [eax],al
 005552A2    add         byte ptr [eax],al
 005552A4    loopne      005552DD
 005552A6    outs        dl,byte ptr [esi]
 005552A7    add         byte ptr [eax-63],bh
 005552AA    outs        dl,byte ptr [esi]
 005552AB    add         ah,bl
 005552AD    aaa
 005552AE    outs        dl,byte ptr [esi]
 005552AF    add         byte ptr [ebp+ebx*4+6E],dh
 005552B3    add         al,bl
 005552B5    aaa
 005552B6    outs        dl,byte ptr [esi]
 005552B7    add         byte ptr [eax-63],dh
 005552BA    outs        dl,byte ptr [esi]
 005552BB    add         ah,dl
 005552BD    aaa
 005552BE    outs        dl,byte ptr [esi]
 005552BF    add         byte ptr [ebp+ebx*4+6E],ch
 005552C3    add         al,dl
 005552C5    aaa
 005552C6    outs        dl,byte ptr [esi]
 005552C7    add         byte ptr [eax-63],ch
 005552CA    outs        dl,byte ptr [esi]
 005552CB    add         ah,cl
 005552CD    aaa
 005552CE    outs        dl,byte ptr [esi]
 005552CF    add         byte ptr [ebp+ebx*4+6E],ah
 005552D3    add         al,cl
 005552D5    aaa
 005552D6    outs        dl,byte ptr [esi]
 005552D7    add         byte ptr [eax-63],ah
 005552DA    outs        dl,byte ptr [esi]
 005552DB    add         ah,al
 005552DD    aaa
 005552DE    outs        dl,byte ptr [esi]
 005552DF    add         byte ptr [ebp+ebx*4+6E],bl
 005552E3    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

//005552E4
procedure Finalization;
begin
{*
 005552E4    push        ebp
 005552E5    mov         ebp,esp
 005552E7    xor         eax,eax
 005552E9    push        ebp
 005552EA    push        555320
 005552EF    push        dword ptr fs:[eax]
 005552F2    mov         dword ptr fs:[eax],esp
 005552F5    inc         dword ptr ds:[6ECC70]
>005552FB    jne         00555312
 005552FD    mov         eax,6E37C4
 00555302    mov         ecx,8
 00555307    mov         edx,dword ptr ds:[668E7C];String
 0055530D    call        @FinalizeArray
 00555312    xor         eax,eax
 00555314    pop         edx
 00555315    pop         ecx
 00555316    pop         ecx
 00555317    mov         dword ptr fs:[eax],edx
 0055531A    push        555327
 0055531F    ret
>00555320    jmp         @HandleFinally
>00555325    jmp         0055531F
 00555327    pop         ebp
 00555328    ret
*}
end;

end.