//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TeEngine;

interface

uses
  SysUtils, Classes, TeEngine, TeCanvas, Graphics;

type
  TSeriesMarksStyle = (smsValue, smsPercent, smsLabel, smsLabelPercent, smsLabelValue, smsLegend, smsPercentTotal, smsLabelPercentTotal, smsXValue);
  TChartClickedPartStyle = (cpNone, cpLegend, cpAxis, cpSeries, cpTitle, cpFoot, cpChartRect);
  TSeriesRecalcOptions = set of _Enum_27_21;
  TChartListOrder = (loNone, loAscending, loDescending);
  TChartValueList = class(TPersistent)
  public
    DateTime:Boolean;//f4
    FList:TList;//f8
    FMaxValue:Double;//f10
    FMinValue:Double;//f18
    Multiplier:Double;//f20
    Name:String;//f28
    Order:TChartListOrder;//f2C
    FOwner:TChartSeries;//f30
    FTempValue:Double;//f38
    FTotal:Double;//f40
    FTotalABS:Double;//f48
    ValueSource:String;//f50
    IDirtyStats:Boolean;//f54
    destructor Destroy; virtual;//00561D24
    procedure Assign(Source:TPersistent); virtual;//v8//00562368
    function GetValue(ValueIndex:Integer):Double; virtual;//vC//00561EF8
    procedure SetValue(ValueIndex:Integer; const AValue:Double); virtual;//v10//00561F58
    procedure ClearValues; virtual;//v14//0056212C
    function AddChartValue(const Value:Double):Integer; virtual;//v18//00561DE0
    procedure InsertChartValue(ValueIndex:Integer; const Value:Double); virtual;//v1C//00561DAC
    constructor Create(AOwner:TChartSeries; const AName:AnsiString); virtual;//v20//00561CA0
    //function v24:?; virtual;//v24//00561D54
    procedure Delete(ValueIndex:Integer); virtual;//v28//00561D80
    procedure Scroll; virtual;//v2C//00562178
    function Last:Double;//00561D5C
    procedure SetMultiplier(Value:Double; const Value:Double);//00561EBC
    function Locate(const Value:Double):Integer;//00561F1C
    function GetMaxValue:Double;//00561F8C
    function GetMinValue:Double;//00561FB4
    function GetTotal:Double;//00561FDC
    function GetTotalABS:Double;//00562004
    procedure RecalcStats;//0056202C
    procedure SetDateTime(Value:Boolean);//0056211C
    procedure SetValueSource(const Value:AnsiString);//005621C8
    procedure FillSequence;//005621F0
    procedure Sort;//00562340
  end;
  TChartAxisTitle = class(TChartFontObject)
  public
    Angle:Integer;//fC
    FAxis:TCustomChartAxis;//f10
    Caption:String;//f14
    procedure Assign(Source:TPersistent); virtual;//v8//0055DBD4
    function IsAngleStored(Value:Integer):Boolean;//0055DC14
    procedure SetAngle(Value:Integer);//0055DC24
    procedure SetCaption(const Value:AnsiString);//0055DC88
  end;
  AxisException = class(Exception)
  end;
  TAxisLabelStyle = (talAuto, talNone, talValue, talMark, talText);
  TCustomChartAxis = class(TPersistent)
  public
    FAutomatic:Boolean;//f4
    FAutomaticMaximum:Boolean;//f5
    FAutomaticMinimum:Boolean;//f6
    FDesiredIncrement:Double;//f8
    FMaximumValue:Double;//f10
    FMinimumValue:Double;//f18
    FLogarithmic:Boolean;//f20
    FLogarithmicBase:Integer;//f24
    FAxis:TChartAxisPen;//f28
    FPosAxis:Integer;//f2C
    FAxisTitle:TChartAxisTitle;//f30
    FTitleSize:Integer;//f34
    FPosTitle:Integer;//f38
    FGrid:TDottedGrayPen;//f3C
    FGridCentered:Boolean;//f40
    FLabels:Boolean;//f41
    FLabelsAngle:Integer;//f44
    FLabelsFont:TFont;//f48
    FLabelsOnAxis:Boolean;//f4C
    FLabelsSeparation:Integer;//f50
    FLabelsSize:Integer;//f54
    FLabelStyle:TAxisLabelStyle;//f58
    FPosLabels:Integer;//f5C
    FAxisValuesFormat:String;//f60
    FDateTimeFormat:String;//f64
    FExactDateTime:Boolean;//f68
    FRoundFirstLabel:Boolean;//f69
    FLabelsMultiLine:Boolean;//f6A
    FMinorGrid:TChartHiddenPen;//f6C
    FMinorTickCount:Integer;//f70
    FMinorTickLength:Integer;//f74
    FMinorTicks:TDarkGrayPen;//f78
    FTicks:TDarkGrayPen;//f7C
    FTicksInner:TDarkGrayPen;//f80
    FTickInnerLength:Integer;//f84
    FTickLength:Integer;//f88
    FTickOnLabelsOnly:Boolean;//f8C
    FInverted:Boolean;//f8D
    FHorizontal:Boolean;//f8E
    FOtherSide:Boolean;//f8F
    FParentChart:TCustomAxisPanel;//f90
    FVisible:Boolean;//f94
    FStartPosition:Double;//f98
    FEndPosition:Double;//fA0
    FPositionPercent:Double;//fA8
    IMaximum:Double;//fB0
    IMinimum:Double;//fB8
    IRange:Double;//fC0
    IAxisDateTime:Boolean;//fC8
    ICenterPos:Integer;//fCC
    IDefaultTitleAngle:Integer;//fD0
    IStartPos:Integer;//fD4
    IEndPos:Integer;//fD8
    IAxisSize:Integer;//fDC
    IsDepthAxis:Boolean;//fE0
    destructor Destroy; virtual;//0055DF84
    procedure Assign(Source:TPersistent); virtual;//v8//0055E9A4
    constructor Create(AOwner:TCustomAxisPanel);//0055DC98
    procedure IncDecDateTime(Increment:Boolean; tmpWhichDateTime:TDateTimeStep; var Value:Double; const AnIncrement:Double);//0055DE78
    function IsDateTime:Boolean;//0055DEB4
    procedure SetTicks(Value:TDarkGrayPen);//0055DF28
    procedure SetMinorTicks(Value:TDarkGrayPen);//0055DF34
    procedure SetTicksInner(Value:TDarkGrayPen);//0055DF40
    procedure SetGrid(Value:TDottedGrayPen);//0055DF4C
    procedure SetMinorGrid(Value:TChartHiddenPen);//0055DF58
    procedure SetGridCentered(Value:Boolean);//0055DF64
    procedure SetAxis(Value:TChartAxisPen);//0055DF78
    function IsPosStored(Value:Double):Boolean;//0055DFEC
    function IsStartStored(Value:Double):Boolean;//0055E008
    function IsEndStored(Value:Double):Boolean;//0055E024
    function CalcPosPoint(Value:Integer):Double;//0055E0A8
    procedure SetDateTimeFormat(const Value:AnsiString);//0055E294
    procedure SetAxisTitle(Value:TChartAxisTitle);//0055E2A8
    procedure SetStartPosition(Value:Double; const Value:Double);//0055E2B4
    procedure SetEndPosition(Value:Double; const Value:Double);//0055E2D4
    procedure SetPositionPercent(Value:Double; const Value:Double);//0055E2F4
    procedure SetRoundFirstLabel(Value:Boolean);//0055E314
    procedure SetLabelsMultiLine(Value:Boolean);//0055E328
    procedure SetTickOnLabelsOnly(Value:Boolean);//0055E33C
    function CalcDateTimeIncrement(MaxNumLabels:Integer):Double;//0055E350
    function CalcLabelsIncrement(MaxNumLabels:Integer):Double;//0055E530
    function LabelWidth(const Value:Double):Integer;//0055E59C
    function LabelHeight(const Value:Double):Integer;//0055E62C
    function IsMaxStored(Value:Double):Boolean;//0055E6B8
    function IsMinStored(Value:Double):Boolean;//0055E6CC
    function CalcXYIncrement(MaxLabelSize:Integer):Double;//0055E6E0
    function CalcIncrement:Double;//0055E760
    procedure AdjustMaxMinRect(const Rect:TRect);//0055E854
    procedure CalcMinMax(var AMin:Double; var AMax:Double);//0055E900
    procedure AdjustMaxMin;//0055E958
    function LabelValue(const Value:Double):AnsiString;//0055EB80
    function CalcLabelStyle:TAxisLabelStyle;//0055EC74
    function MaxLabelsWidth:Integer;//0055EF4C
    procedure SetLabels(Value:Boolean);//0055EF9C
    procedure SetLabelsFont(Value:TFont);//0055EFB0
    function IsFontStored(Value:TFont):Boolean;//0055EFC0
    procedure SetAutomatic(Value:Boolean);//0055EFD0
    procedure SetAutomaticMinimum(Value:Boolean);//0055EFFC
    procedure SetAutomaticMaximum(Value:Boolean);//0055F02C
    function IsAxisValuesFormatStored(Value:String):Boolean;//0055F05C
    procedure SetValuesFormat(const Value:AnsiString);//0055F0B4
    procedure SetInverted(Value:Boolean);//0055F0C8
    procedure SetLogarithmicBase(Value:Integer);//0055F0DC
    procedure SetLogarithmic(Value:Boolean);//0055F148
    procedure SetLabelsAngle(Value:Integer);//0055F220
    procedure SetLabelsSeparation(Value:Integer);//0055F284
    procedure SetLabelsSize(Value:Integer);//0055F2EC
    procedure SetTitleSize(Value:Integer);//0055F300
    procedure SetLabelsOnAxis(Value:Boolean);//0055F314
    procedure SetExactDateTime(Value:Boolean);//0055F328
    procedure SetLabelStyle(Value:TAxisLabelStyle);//0055F33C
    procedure SetVisible(Value:Boolean);//0055F354
    procedure SetDesiredIncrement(Value:Double; const Value:Double);//0055F368
    procedure SetMinimum(Value:Double; const Value:Double);//0055F40C
    procedure InternalSetMinimum(const Value:Double);//0055F488
    procedure SetMaximum(Value:Double; const Value:Double);//0055F4A4
    procedure SetMinMax(AMin:Double; AMax:Double);//0055F520
    procedure InternalSetMaximum(const Value:Double);//0055F5A0
    procedure SetTickLength(Value:Integer);//0055F5BC
    procedure SetMinorTickLength(Value:Integer);//0055F5D0
    procedure SetMinorTickCount(Value:Integer);//0055F5E4
    procedure SetTickInnerLength(Value:Integer);//0055F5F8
    procedure DrawTitle(x:Integer; y:Integer);//0055F60C
    procedure DrawAxisLabel(x:Integer; y:Integer; Angle:Integer; const St:AnsiString);//0055F6A8
    procedure Scroll(CheckLimits:Boolean; const Offset:Double);//0055FA28
    function InternalCalcLog(var LogMax:Double; var LogMin:Double):Double;//0055FAC8
    function InternalCalcDepthPosValue(const Value:Double):Integer;//0055FB3C
    function InternalCalcLogPosValue(IsX:Boolean; const Value:Double):Integer;//0055FBBC
    function CalcPosValue(const Value:Double):Integer;//0055FC88
    function CalcXPosValue(const Value:Double):Integer;//0055FCB0
    function CalcYPosValue(const Value:Double):Integer;//0055FCF4
    function InternalCalcPosValue(FromEnd:Boolean; const Value:Double):Integer;//0055FD3C
    function Clicked(x:Integer; y:Integer):Boolean;//0055FDD4
    procedure RecalcSizeCenter;//0055FEA0
    procedure InternalCalcPositions;//0055FF44
    function ApplyPosition(APos:Integer; const R:TRect):Integer;//0055FF94
    function GetRectangleEdge(const R:TRect):Integer;//00560010
    procedure Draw(CalcPosAxis:Boolean);//0056174C
    function SizeTickAxis:Integer;//00561954
    function SizeTitle:Integer;//0056198C
    function SizeLabels:Integer;//005619A4
    function InternalCalcSize(tmpFont:TFont; tmpAngle:Integer; const tmpText:AnsiString; tmpSize:Integer):Integer;//005619B8
    procedure CalcRect(var R:TRect; InflateChartRectangle:Boolean);//00561B2C
  end;
  TChartAxis = class(TCustomChartAxis)
  end;
  TChartDepthAxis = class(TCustomChartAxis)
  end;
  TAxisOnGetLabel = procedure(Sender:TChartAxis; Series:TChartSeries; ValueIndex:Integer; var LabelText:String) of object;;
  TAxisOnGetNextLabel = procedure(Sender:TChartAxis; LabelIndex:Integer; var LabelValue:Double; var Stop:Boolean) of object;;
  TSeriesClick = procedure(Sender:TChartSeries; ValueIndex:Integer; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer) of object;;
  THorizAxis = (aTopAxis, aBottomAxis, aBothHorizAxis, aCustomHorizAxis);
  TVertAxis = (aLeftAxis, aRightAxis, aBothVertAxis, aCustomVertAxis);
  TChartSeriesList = class(TList)
  public
    FOwner:TCustomAxisPanel;//f10
    function GetSeries(Index:Integer):TChartSeries;//005662BC
    function CountActive:Integer;//005662D0
  end;
  TCustomAxisPanel = class(TCustomTeePanelExtended)
  public
    FSeriesList:TChartSeriesList;//f2E0
    FDepthAxis:TChartDepthAxis;//f2E4
    FTopAxis:TChartAxis;//f2E8
    FBottomAxis:TChartAxis;//f2EC
    FLeftAxis:TChartAxis;//f2F0
    FRightAxis:TChartAxis;//f2F4
    FView3DWalls:Boolean;//f2F8
    FClipPoints:Boolean;//f2F9
    FAxisVisible:Boolean;//f2FA
    FOnGetAxisLabel:TAxisOnGetLabel;//f300
    FOnGetNextAxisLabel:TAxisOnGetNextLabel;//f308
    FOnPageChange:TNotifyEvent;//f310
    FOnBeforeDrawAxes:TNotifyEvent;//f318
    FOnBeforeDrawSeries:TNotifyEvent;//f320
    FPage:Integer;//f328
    FMaxPointsPerPage:Integer;//f32C
    FScaleLastPage:Boolean;//f330
    FMaxZOrder:Integer;//f334
    FSeriesWidth3D:Integer;//f338
    FSeriesHeight3D:Integer;//f33C
    FAxes:TList;//f340
    LegendColor:TColor;//f344
    destructor Destroy; virtual;//005666C8
    procedure Assign(Source:TPersistent); virtual;//v8//00567A40
    constructor Create(AOwner:TComponent); virtual;//v2C//00566300
    procedure InternalDraw(const UserRectangle:TRect); virtual;//vC8//00567484
    procedure SetPage(Value:Integer); virtual;//v100//0056645C
    procedure CheckDatasource(ASeries:TChartSeries); virtual;//v104//005679F0
    procedure v108; virtual;//v108//005677C8
    function IsValidDataSource(ASeries:TChartSeries; AComponent:TComponent):Boolean; virtual;//v110//005679B8
    procedure NumPages; dynamic;//00566578
    procedure sub_005676C0; dynamic;//005676C0
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent); dynamic;//00567670
    procedure SetScaleLastPage(Value:Boolean);//005664B4
    procedure SetMaxPointsPerPage(Value:Integer);//00566608
    procedure FreeAllSeries;//00566698
    function IsAxisVisible(Axis:TCustomChartAxis):Boolean;//00566730
    function NoActiveSeries(AAxis:TCustomChartAxis):Boolean;//005667CC
    function InternalMinMax(AAxis:TCustomChartAxis; IsMin:Boolean; IsX:Boolean):Double;//0056681C
    function MaxXValue(AAxis:TChartAxis):Double;//00566B34
    function MaxYValue(AAxis:TChartAxis):Double;//00566B4C
    function MinXValue(AAxis:TChartAxis):Double;//00566B64
    function MinYValue(AAxis:TChartAxis):Double;//00566B7C
    function ActiveSeriesLegend(ItemIndex:Integer):TChartSeries;//00566B94
    function SeriesTitleLegend(SeriesIndex:Integer):AnsiString;//00566BE4
    function MaxTextWidth:Integer;//00566C84
    function MaxMarkWidth:Integer;//00566D50
    function GetSeries(Index:Integer):TChartSeries;//00566DA0
    procedure CalcSize3DWalls;//00566DB8
    procedure SetView3DWalls(Value:Boolean);//00567660
    procedure SetClipPoints(Value:Boolean);//005676C4
    procedure SetLeftAxis(Value:TChartAxis);//005676D4
    procedure SetDepthAxis(Value:TChartDepthAxis);//005676E0
    procedure SetRightAxis(Value:TChartAxis);//005676EC
    procedure SetTopAxis(Value:TChartAxis);//005676F8
    procedure SetBottomAxis(Value:TChartAxis);//00567704
    procedure RemoveSeries(ASeries:TChartSeries);//00567710
    function GetAxisSeries(Axis:TCustomChartAxis):TChartSeries;//00567768
    function GetFreeSeriesColor(CheckBackground:Boolean):TColor;//005677D0
    procedure InternalAddSeries(ASeries:TChartSeries);//00567808
    function GetMaxValuesCount:Integer;//00567884
    procedure SetAxisVisible(Value:Boolean);//005678E8
    procedure CheckOtherSeries(Dest:TChartSeries; Source:TChartSeries);//005678F8
    function SeriesCount:Integer;//00567A2C
  end;
  TSeriesMarkPosition = class(TObject)
  public
    ArrowFrom:TPoint;//f4
    ArrowTo:TPoint;//fC
    Custom:Boolean;//f14
    Height:Integer;//f18
    LeftTop:TPoint;//f1C
    Width:Integer;//f24
    procedure Assign(Source:TSeriesMarkPosition);//00561C50
    function Bounds:TRect;//00561C84
  end;
  TSeriesMarksPositions = class(TList)
    function GetPosition(Index:Integer):TSeriesMarkPosition;//005623AC
  end;
  TSeriesMarks = class(TPersistent)
  public
    Arrow:TChartArrowPen;//f4
    ArrowLength:Integer;//f8
    BackColor:TColor;//fC
    Transparent:Boolean;//f10
    Clip:Boolean;//f11
    Frame:TChartPen;//f14
    Font:TFont;//f18
    Style:TSeriesMarksStyle;//f1C
    FParent:TChartSeries;//f20
    FPositions:TSeriesMarksPositions;//f24
    Visible:Boolean;//f28
    FZPosition:Integer;//f2C
    destructor Destroy; virtual;//005625E4
    procedure Assign(Source:TPersistent); virtual;//v8//00562474
    constructor Create(AOwner:TChartSeries);//005623D8
    function IsFontStored(Value:TFont):Boolean;//005624E4
    procedure SetVisible(Value:Boolean);//005624F4
    procedure SetFrame(Value:TChartPen);//00562504
    procedure SetArrow(Value:TChartArrowPen);//00562510
    procedure SetArrowLength(Value:Integer);//0056251C
    procedure SetBackColor(Value:TColor);//0056252C
    procedure SetTransparent(Value:Boolean);//0056253C
    procedure UsePosition(Index:Integer; var MarkPosition:TSeriesMarkPosition);//0056254C
    procedure ClearPositions;//005625B4
    procedure SetFont(Value:TFont);//00562630
    procedure SetStyle(Value:TSeriesMarksStyle);//00562640
    procedure SetClip(Value:Boolean);//00562654
    procedure Draw(Index:Integer; AColor:TColor; const St:AnsiString; APosition:TSeriesMarkPosition);//00562800
  end;
  TSeriesOnBeforeAdd = function(Sender:TChartSeries):Boolean of object;;
  TSeriesOnAfterAdd = procedure(Sender:TChartSeries; ValueIndex:Integer) of object;;
  TSeriesOnClear = procedure(Sender:TChartSeries) of object;;
  TSeriesOnGetMarkText = procedure(Sender:TChartSeries; ValueIndex:Integer; var MarkText:String) of object;;
  _Enum_27_21 = (rOnDelete, rOnModify, rOnInsert, rOnClear);
  TFunctionPeriodStyle = (psNumPoints, psRange);
  TFunctionPeriodAlign = (paFirst, paCenter, paLast);
  TTeeFunction = class(TComponent)
  public
    Period:Double;//f30
    PeriodStyle:TFunctionPeriodStyle;//f38
    PeriodAlign:TFunctionPeriodAlign;//f39
    FParent:TChartSeries;//f3C
    FUpdating:Boolean;//f40
    CanUsePeriod:Boolean;//f41
    MovingFunction:Boolean;//f42
    procedure Assign(Source:TPersistent); virtual;//v8//00563160
    constructor Create(AOwner:TComponent); virtual;//v2C//00562A3C
    procedure CalculatePeriod(Source:TChartSeries; FirstIndex:Integer; const tmpX:Double; LastIndex:Integer); virtual;//v30//00562CC4
    procedure CalculateAllPoints(Source:TChartSeries; NotMandatorySource:TChartValueList); virtual;//v34//00562B30
    procedure CalculateByPeriod(Source:TChartSeries; NotMandatorySource:TChartValueList); virtual;//v38//00562D08
    function Calculate(Series:TChartSeries; First:Integer; Last:Integer):Double; virtual;//v3C//00562AA0
    function CalculateMany(SeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//0056314C
    procedure AddPoints(Source:TChartSeries); virtual;//v44//00563074
    procedure sub_0056324C; dynamic;//0056324C
    procedure sub_0056323C; dynamic;//0056323C
    procedure SetParentComponent(Value:TComponent); dynamic;//00563240
    procedure ReCalculate;//00562A88
    function ValueList(ASeries:TChartSeries):TChartValueList;//00562AB8
    procedure AddFunctionXY(YMandatorySource:Boolean; tmpX:Double; tmpY:Double);//00562EE8
    procedure SetParentSeries(AParent:TChartSeries);//00563128
    procedure SetPeriod(Value:Double; const Value:Double);//00563194
    procedure SetPeriodAlign(Value:TFunctionPeriodAlign);//0056321C
    procedure SetPeriodStyle(Value:TFunctionPeriodStyle);//0056322C
  end;
  TChartValueLists = class(TList)
    function GetValueList(Index:Integer):TChartValueList;//00563250
  end;
  TLegendTextStyle = (ltsPlain, ltsLeftValue, ltsRightValue, ltsLeftPercent, ltsRightPercent, ltsXValue);
  TChartSeries = class(TComponent)
  public
    Active:Boolean;//f30
    SeriesColor:TColor;//f34
    ColorEachPoint:Boolean;//f38
    FColors:TList;//f3C
    ColorSource:String;//f40
    Cursor:TCursor;//f44
    FDataSources:TList;//f48
    FFirstVisibleIndex:Integer;//f4C
    FGetHorizAxis:TChartAxis;//f50
    FGetVertAxis:TChartAxis;//f54
    XLabelsSource:String;//f58
    FLastVisibleIndex:Integer;//f5C
    FLinkedSeries:TList;//f60
    Marks:TSeriesMarks;//f64
    ParentChart:TCustomAxisPanel;//f68
    PercentFormat:String;//f6C
    ShowInLegend:Boolean;//f70
    FTempDataSources:TStringList;//f74
    Title:String;//f78
    ValueFormat:String;//f7C
    FValuesList:TChartValueLists;//f80
    FX:TChartValueList;//f84
    FXLabels:TList;//f88
    FY:TChartValueList;//f8C
    HorizAxis:THorizAxis;//f90
    FCustomHorizAxis:TChartAxis;//f94
    FCustomVertAxis:TChartAxis;//f98
    FZOrder:Integer;//f9C
    VertAxis:TVertAxis;//fA0
    FRecalcOptions:TSeriesRecalcOptions;//fA1
    FTeeFunction:TTeeFunction;//fA4
    FStyle:TChartSeriesStyle;//fA8
    AfterDrawValues:TNotifyEvent;//fB0
    BeforeDrawValues:TNotifyEvent;//fB8
    OnAfterAdd:TSeriesOnAfterAdd;//fC0
    OnBeforeAdd:TSeriesOnBeforeAdd;//fC8
    OnClearValues:TSeriesOnClear;//fD0
    OnClick:TSeriesClick;//fD8
    OnDblClick:TSeriesClick;//fE0
    OnGetMarkText:TSeriesOnGetMarkText;//fE8
    FIdentifier:String;//fF0
    IZOrder:Integer;//fF4
    CalcVisiblePoints:Boolean;//fF8
    DrawBetweenPoints:Boolean;//fF9
    AllowSinglePoint:Boolean;//fFA
    HasZValues:Boolean;//fFB
    StartZ:Integer;//fFC
    MiddleZ:Integer;//f100
    EndZ:Integer;//f104
    destructor Destroy; virtual;//005661CC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005634F4
    procedure Assign(Source:TPersistent); virtual;//v8//005654B8
    procedure Loaded; virtual;//vC//00566118
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005634BC
    constructor Create(AOwner:TComponent); virtual;//v2C//00563264
    function AddChartValue(Source:TChartSeries; ValueIndex:Integer):Integer; virtual;//v30//00564294
    procedure AddedValue(Source:TChartSeries; ValueIndex:Integer); virtual;//v34//00564374
    procedure AddValues(Source:TChartSeries); virtual;//v38//00564610
    procedure ClearLists; virtual;//v3C//0056593C
    procedure DeletedValue(Source:TChartSeries; ValueIndex:Integer); virtual;//v40//00564248
    procedure DoAfterDrawValues; virtual;//v44//005647BC
    procedure v48; virtual;//v48//00564798
    procedure DoBeforeDrawValues; virtual;//v4C//0056479C
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition); virtual;//v54//00564A0C
    procedure DrawValue(ValueIndex:Integer); virtual;//v58//00564188
    function GetValueColor(ValueIndex:Integer):TColor; virtual;//v5C//00565864
    function GetXLabel(Index:Integer):AnsiString; virtual;//v60//00565820
    function GetxValue(Index:Integer):Double; virtual;//v64//005657F0
    function GetyValue(Index:Integer):Double; virtual;//v68//00565808
    procedure NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer); virtual;//v6C//00564B5C
    function MoreSameZOrder:Boolean; virtual;//v70//005646C8
    procedure SetActive(Value:Boolean); virtual;//v74//0056418C
    procedure SetColorEachPoint(Value:Boolean); virtual;//v78//0056579C
    procedure SetParentChart(Value:TCustomAxisPanel); virtual;//v7C//005658A0
    procedure SetSeriesColor(AColor:TColor); virtual;//v80//00565EB0
    function Add(const ALabel:AnsiString; AColor:TColor; const AValue:Double):Integer; virtual;//v84//00564BEC
    function AddNull(const ALabel:AnsiString):Integer; virtual;//v88//00564BB4
    function AddNullXY(const ALabel:AnsiString; const X:Double; const Y:Double):Integer; virtual;//v8C//00564BC8
    function AddXY(const ALabel:AnsiString; AColor:TColor; const AXValue:Double; const AYValue:Double):Integer; virtual;//v90//00564AB0
    function AssociatedToAxis(Axis:TCustomChartAxis):Boolean; virtual;//v94//00565A10
    procedure Clear; virtual;//v98//005659C4
    procedure v9C; virtual;//v9C//00564CC4
    procedure Delete(ValueIndex:Integer); virtual;//vA0//00565D8C
    procedure FillSampleValues(NumValues:Integer); virtual;//vA4//00565304
    //function vAC(?:?):Boolean; virtual;//vAC//00563CE4
    //function vB0:?; virtual;//vB0//00563CEC
    //function vB4(?:?):?; virtual;//vB4//00564420
    procedure vB8; virtual;//vB8//00565AC0
    function LegendString(LegendIndex:Integer; LegendTextStyle:TLegendTextStyle):AnsiString; virtual;//vBC//00564424
    function MaxXValue:Double; virtual;//vC0//00565EBC
    function MaxYValue:Double; virtual;//vC4//00565ED4
    function MaxZValue:Double; virtual;//vC8//00565F1C
    function MinXValue:Double; virtual;//vCC//00565EEC
    function MinYValue:Double; virtual;//vD0//00565F04
    function MinZValue:Double; virtual;//vD4//00565F40
    //function vD8:?; virtual;//vD8//0056511C
    procedure PrepareForGallery(IsEnabled:Boolean); virtual;//vDC//005650E0
    function GetEditorClass:AnsiString; virtual;//vE0//005646BC
    function CalcXPos(ValueIndex:Integer):Integer; virtual;//vE4//00565CA0
    function CalcYPos(ValueIndex:Integer):Integer; virtual;//vE8//00565D68
    procedure AddValue(ValueIndex:Integer); virtual;//vEC//00564254
    function GetYValueList(AListName:AnsiString):TChartValueList; virtual;//vF0//00563CF8
    function Clicked(x:Integer; y:Integer):Integer; virtual;//vF4//00563DD0
    function GetOriginValue(ValueIndex:Integer):Double; virtual;//vF8//00564DE4
    function GetMarkValue(ValueIndex:Integer):Double; virtual;//vFC//00564DFC
    function PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double; virtual;//v100//005638B4
    //function v104:?; virtual;//v104//00563820
    //function v108:?; virtual;//v108//00563828
    //function v10C:?; virtual;//v10C//0056382C
    procedure SwapValueIndex(a:Integer; b:Integer); virtual;//v110//00565E24
    procedure CalcZOrder; virtual;//v114//00565BC8
    procedure v118; virtual;//v118//00565CC4
    function DoSeriesClick(Sender:TChartSeries; ValueIndex:Integer; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer):Boolean; virtual;//v11C//00565CD4
    procedure v120; virtual;//v120//00565CCC
    procedure ClearTempValue(ValueList:TChartValueList); virtual;//v124//00565EA4
    procedure DrawLegend(ValueIndex:Integer; const Rect:TRect); virtual;//v128//00565AC8
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect); virtual;//v12C//00565A5C
    procedure v130; virtual;//v130//00565BC0
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer); virtual;//v134//005649F4
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer); virtual;//v138//00564A00
    //function v13C:?; virtual;//v13C//00566114
    procedure SetFunction(AFunction:TTeeFunction); virtual;//v140//00563490
    procedure v144; virtual;//v144//00563CF0
    procedure v148; virtual;//v148//005657E8
    procedure sub_0056348C; dynamic;//0056348C
    procedure sub_00563464; dynamic;//00563464
    procedure SetParentComponent(AParent:TComponent); dynamic;//00563468
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent); dynamic;//00563438
    procedure ReadIdentifier(Reader:TReader);//005635B0
    procedure WriteIdentifier(Writer:TWriter);//00563604
    procedure ReadStyle(Reader:TReader);//00563614
    procedure WriteStyle(Writer:TWriter);//005636EC
    procedure ReadData(Reader:TReader);//00563740
    procedure WriteData(Writer:TWriter);//005637C8
    function YMandatory:Boolean;//00563808
    function SameClass(tmpSeries:TChartSeries):Boolean;//0056387C
    function CreateChartPen:TChartPen;//0056396C
    procedure CheckDataSource;//00563984
    procedure SetColorSource(const Value:AnsiString);//0056399C
    procedure SetLabelsSource(const Value:AnsiString);//005639D0
    function GetDataSource:TComponent;//00563A04
    procedure InternalAddDataSource(Value:TComponent);//00563A28
    procedure RemoveAllLinkedSeries;//00563A64
    procedure SetDataSource(Value:TComponent);//00563CBC
    procedure CheckOtherSeries(Source:TChartSeries);//00563DC0
    procedure RecalcGetAxis;//00563DD4
    procedure SetHorizAxis(Value:THorizAxis);//00563E58
    procedure SetVertAxis(Value:TVertAxis);//00563E7C
    procedure SetChartValueList(var AValueList:TChartValueList; Value:TChartValueList);//00563EA0
    procedure SetXValues(Value:TChartValueList);//00563EBC
    procedure SetYValues(Value:TChartValueList);//00563ECC
    procedure SetTitle(Value:AnsiString);//00563EDC
    function GetValue(IsX:Boolean; ValueIndex:Integer):Double;//00563F2C
    procedure CalcFirstLastVisibleIndex;//00563FD8
    procedure Repaint;//00564170
    function IsValueFormatStored(Value:String):Boolean;//00564198
    function IsPercentFormatStored(Value:String):Boolean;//005641F0
    procedure AssignValues(Source:TChartSeries);//005646A8
    procedure RefreshSeries;//005646B0
    function FirstInZOrder:Boolean;//00564730
    procedure DrawMarks;//005647DC
    procedure SetBooleanProperty(var Variable:Boolean; Value:Boolean);//00564A3C
    procedure SetLongintProperty(var Variable:Integer; Value:Integer);//00564A48
    procedure SetStringProperty(var Variable:AnsiString; const Value:AnsiString);//00564A54
    procedure SetIntegerProperty(var Variable:Integer; Value:Integer);//00564A7C
    procedure InsertLabel(ValueIndex:Integer; const ALabel:AnsiString);//00564A88
    function IsNull(ValueIndex:Integer):Boolean;//00564B98
    function AddX(const ALabel:AnsiString; AColor:TColor; const AXValue:Double):Integer;//00564C30
    function AddY(const ALabel:AnsiString; AColor:TColor; const AYValue:Double):Integer;//00564C74
    function Count:Integer;//00564CB8
    function MarkPercent(ValueIndex:Integer; AddTotal:Boolean):AnsiString;//00564CCC
    function GetMarkText(ValueIndex:Integer):AnsiString;//00564E70
    procedure SetValueFormat(const Value:AnsiString);//005650C8
    procedure SetPercentFormat(const Value:AnsiString);//005650D4
    procedure CalcRandomBounds(NumValues:Integer; var tmpX:Double; var StepX:Double; var tmpY:Double; var MinY:Double; var DifY:Double);//00565124
    procedure SetDoubleProperty(var Variable:Double; const Value:Double);//00565444
    procedure SetColorProperty(var Variable:TColor; Value:TColor);//0056546C
    procedure SetShowInLegend(Value:Boolean);//005657DC
    procedure SetValueColor(ValueIndex:Integer; AColor:TColor);//005658D4
    function GetMemLabel(const ALabel:AnsiString):PChar;//005658E8
    procedure FreeXLabel(ValueIndex:Integer);//00565914
    function CalcXPosValue(const Value:Double):Integer;//00565C24
    function XScreenToValue(ScreenPos:Integer):Double;//00565C3C
    function CalcYPosValue(const Value:Double):Integer;//00565C54
    function CalcPosValue(const Value:Double):Integer;//00565C6C
    procedure SetMarks(Value:TSeriesMarks);//00565E94
    function MaxMarkWidth:Integer;//00565F64
    procedure AddLinkedSeries(ASeries:TChartSeries);//00565FF4
    procedure RemoveDataSource(Value:TComponent);//00566014
    procedure RemoveLinkedSeries(ASeries:TChartSeries);//00566028
    procedure NotifyValue(ValueEvent:TValueEvent; ValueIndex:Integer);//00566038
    function GetZOrder:Integer;//005662A4
  end;
  TTicks = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    procedure sub_0055B878;//0055B878
    procedure Assign(Source:TPersistent);//0055DBD4
    destructor Destroy;//0055DF84
    function InternalCalcPos(const A:Double; const B:Double):Double;//0055E040
    procedure InternalCalcLabelsIncrement;//0055E424
    procedure RecalcAdjustedMinMax(Pos1:Integer; Pos2:Integer);//0055E7E0
    procedure Assign(Source:TPersistent);//0055E9A4
    function MaxLabelsValueWidth:Integer;//0055EDB8
    procedure DoCalculation(AStartPos:Integer; ASize:Integer);//0055FECC
    procedure DrawGridLine(tmp:Integer);//00560064
    procedure DrawGrids;//00560260
    procedure InternalDrawTick(tmp:Integer; Delta:Integer; tmpTickLength:Integer);//00560350
    procedure DrawAxisLine;//005604B4
    procedure AProc(APos:Integer);//0056069C
    procedure ProcessMinorTicks(IsGrid:Boolean);//00560754
    procedure ProcessTicks(APen:TChartPen; AOffset:Integer; ALength:Integer);//00560988
    procedure ProcessMinor(APen:TChartPen; IsGrid:Boolean);//005609F8
    procedure DrawTicksGrid;//00560A3C
    procedure AddTick(APos:Integer);//00560AEC
    procedure DrawThisLabel(LabelPos:Integer; const tmpSt:AnsiString);//00560B08
    function GetAxisSeriesLabel(AIndex:Integer; var ALabel:AnsiString; var AValue:Double):Boolean;//00560C2C
    procedure CalcAllSeries;//00560D64
    procedure CalcFirstLastAllSeries(var tmpFirst:Integer; var tmpLast:Integer);//00560DEC
    procedure AxisLabelsSeries;//00560E78
    procedure InternalDrawLabel(DecValue:Boolean);//005610B8
    function IntPower(Exponent:Integer; const Base:Extended):Extended;//005611A4
    function LogBaseN(const Base:Extended; const X:Extended):Extended;//005611D4
    procedure DoDefaultLogLabels;//005611EC
    procedure DoDefaultLabels;//005612F8
    procedure DoNotCustomLabels;//0056144C
    procedure DoCustomLabels;//0056148C
    procedure DrawAxisTitle;//00561570
    procedure DepthAxisLabels;//00561610
    procedure InflateAxisRect(Value:Integer);//00561A70
    function InflateAxisPos(Value:Integer; Amount:Integer):Integer;//00561ACC
    function CalcLabelsRect(tmpSize:Integer):Integer;//00561B0C
    constructor Create(AOwner:TChartSeries; const AName:AnsiString);//00561CA0
    destructor Destroy;//00561D24
    //function sub_00561D54:?;//00561D54
    procedure Delete(ValueIndex:Integer);//00561D80
    procedure InsertChartValue(ValueIndex:Integer; const Value:Double);//00561DAC
    function AddChartValue(const Value:Double):Integer;//00561DE0
    function GetValue(ValueIndex:Integer):Double;//00561EF8
    procedure SetValue(ValueIndex:Integer; const AValue:Double);//00561F58
    procedure ClearValues;//0056212C
    procedure Scroll;//00562178
    function CompareValueIndex(a:Integer; b:Integer):Integer;//00562228
    procedure PrivateSort(l:Integer; r:Integer);//0056228C
    procedure Assign(Source:TPersistent);//00562368
    procedure Assign(Source:TPersistent);//00562474
    destructor Destroy;//005625E4
    procedure DrawLine(const LineSt:AnsiString);//00562664
    procedure DrawMarkText;//005626CC
    constructor Create(AOwner:TComponent);//00562A3C
    function Calculate(Series:TChartSeries; First:Integer; Last:Integer):Double;//00562AA0
    procedure CalculateAllPoints(Source:TChartSeries; NotMandatorySource:TChartValueList);//00562B30
    procedure CalculatePeriod(Source:TChartSeries; FirstIndex:Integer; const tmpX:Double; LastIndex:Integer);//00562CC4
    procedure CalculateByPeriod(Source:TChartSeries; NotMandatorySource:TChartValueList);//00562D08
    procedure CalculateMovingFunction;//00562F20
    procedure CalculateFunctionMany;//00562FA4
    procedure AddPoints(Source:TChartSeries);//00563074
    function CalculateMany(SeriesList:TList; ValueIndex:Integer):Double;//0056314C
    procedure Assign(Source:TPersistent);//00563160
    procedure sub_0056323C;//0056323C
    procedure SetParentComponent(Value:TComponent);//00563240
    procedure sub_0056324C;//0056324C
    constructor Create(AOwner:TComponent);//00563264
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent);//00563438
    procedure sub_00563464;//00563464
    procedure SetParentComponent(AParent:TComponent);//00563468
    procedure sub_0056348C;//0056348C
    procedure SetFunction(AFunction:TTeeFunction);//00563490
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005634BC
    procedure DefineProperties(Filer:TFiler);//005634F4
    //function sub_00563820:?;//00563820
    //function sub_00563828:?;//00563828
    //function sub_0056382C:?;//0056382C
    procedure DisableRotation;//00563830
    function PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double;//005638B4
    procedure ClearDataSources;//00563ABC
    procedure InternalRemoveDataSource;//00563ADC
    procedure InternalSetDataSource;//00563B5C
    //function sub_00563CE4(?:?):Boolean;//00563CE4
    //function sub_00563CEC:?;//00563CEC
    procedure sub_00563CF0;//00563CF0
    function GetYValueList(AListName:AnsiString):TChartValueList;//00563CF8
    function Clicked(x:Integer; y:Integer):Integer;//00563DD0
    function CalcMinMaxValue(A:Integer; B:Integer; C:Integer; D:Integer):Double;//00563F54
    procedure DrawValue(ValueIndex:Integer);//00564188
    procedure SetActive(Value:Boolean);//0056418C
    procedure DeletedValue(Source:TChartSeries; ValueIndex:Integer);//00564248
    procedure AddValue(ValueIndex:Integer);//00564254
    function AddChartValue(Source:TChartSeries; ValueIndex:Integer):Integer;//00564294
    procedure AddedValue(Source:TChartSeries; ValueIndex:Integer);//00564374
    //function sub_00564420(?:?):?;//00564420
    function LegendString(LegendIndex:Integer; LegendTextStyle:TLegendTextStyle):AnsiString;//00564424
    procedure AddValues(Source:TChartSeries);//00564610
    function GetEditorClass:AnsiString;//005646BC
    function MoreSameZOrder:Boolean;//005646C8
    procedure sub_00564798;//00564798
    procedure DoBeforeDrawValues;//0056479C
    procedure DoAfterDrawValues;//005647BC
    procedure CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);//005649F4
    procedure CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);//00564A00
    procedure DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);//00564A0C
    function AddXY(const ALabel:AnsiString; AColor:TColor; const AXValue:Double; const AYValue:Double):Integer;//00564AB0
    procedure NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer);//00564B5C
    function AddNull(const ALabel:AnsiString):Integer;//00564BB4
    function AddNullXY(const ALabel:AnsiString; const X:Double; const Y:Double):Integer;//00564BC8
    function Add(const ALabel:AnsiString; AColor:TColor; const AValue:Double):Integer;//00564BEC
    procedure sub_00564CC4;//00564CC4
    function GetOriginValue(ValueIndex:Integer):Double;//00564DE4
    function GetMarkValue(ValueIndex:Integer):Double;//00564DFC
    function XLabelOrValue(ValueIndex:Integer):AnsiString;//00564E24
    procedure PrepareForGallery(IsEnabled:Boolean);//005650E0
    //function sub_0056511C:?;//0056511C
    procedure FillSampleValues(NumValues:Integer);//00565304
    procedure PrepareCanvas;//00565424
    procedure SelfSetDataSources(Value:TList);//00565478
    procedure Assign(Source:TPersistent);//005654B8
    procedure SetColorEachPoint(Value:Boolean);//0056579C
    procedure sub_005657E8;//005657E8
    function GetxValue(Index:Integer):Double;//005657F0
    function GetyValue(Index:Integer):Double;//00565808
    function GetXLabel(Index:Integer):AnsiString;//00565820
    function GetValueColor(ValueIndex:Integer):TColor;//00565864
    procedure SetParentChart(Value:TCustomAxisPanel);//005658A0
    procedure ClearLists;//0056593C
    procedure Clear;//005659C4
    function AssociatedToAxis(Axis:TCustomChartAxis):Boolean;//00565A10
    procedure DrawLegendShape(ValueIndex:Integer; const Rect:TRect);//00565A5C
    procedure sub_00565AC0;//00565AC0
    procedure DrawLegend(ValueIndex:Integer; const Rect:TRect);//00565AC8
    procedure sub_00565BC0;//00565BC0
    procedure CalcZOrder;//00565BC8
    function CalcXPos(ValueIndex:Integer):Integer;//00565CA0
    procedure sub_00565CC4;//00565CC4
    procedure sub_00565CCC;//00565CCC
    function DoSeriesClick(Sender:TChartSeries; ValueIndex:Integer; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer):Boolean;//00565CD4
    function CalcYPos(ValueIndex:Integer):Integer;//00565D68
    procedure Delete(ValueIndex:Integer);//00565D8C
    procedure SwapValueIndex(a:Integer; b:Integer);//00565E24
    procedure ClearTempValue(ValueList:TChartValueList);//00565EA4
    procedure SetSeriesColor(AColor:TColor);//00565EB0
    function MaxXValue:Double;//00565EBC
    function MaxYValue:Double;//00565ED4
    function MinXValue:Double;//00565EEC
    function MinYValue:Double;//00565F04
    function MaxZValue:Double;//00565F1C
    function MinZValue:Double;//00565F40
    //function sub_00566114:?;//00566114
    procedure Loaded;//00566118
    destructor Destroy;//005661CC
    constructor Create(AOwner:TComponent);//00566300
    procedure SetPage(Value:Integer);//0056645C
    function CalcNumPages(AAxis:TChartAxis):Integer;//005664C4
    procedure NumPages;//00566578
    destructor Destroy;//005666C8
    procedure ClipRegionCreate;//00566E8C
    procedure ClipRegionDone;//00566EE4
    procedure TryDrawSeries(ASeries:TChartSeries);//00566F10
    procedure DrawAllSeriesValue(ValueIndex:Integer);//00566F58
    procedure DrawMarksSeries(ASeries:TChartSeries);//0056700C
    procedure DrawSeries(TheSeries:TChartSeries);//00567048
    procedure SetSeriesZOrder;//00567298
    procedure SetSeriesZPositions;//00567388
    procedure DrawAllAxis;//00567408
    procedure InternalDraw(const UserRectangle:TRect);//00567484
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent);//00567670
    procedure sub_005676C0;//005676C0
    procedure sub_005677C8;//005677C8
    function IsValidDataSource(ASeries:TChartSeries; AComponent:TComponent):Boolean;//005679B8
    procedure CheckDatasource(ASeries:TChartSeries);//005679F0
    procedure Assign(Source:TPersistent);//00567A40
    procedure Finalization;//00567B08

implementation

//0055B878
procedure sub_0055B878;
begin
{*
 0055B878    push        ebp
 0055B879    mov         ebp,esp
 0055B87B    mov         ecx,5
 0055B880    push        0
 0055B882    push        0
 0055B884    dec         ecx
>0055B885    jne         0055B880
 0055B887    push        ecx
 0055B888    xor         eax,eax
 0055B88A    push        ebp
 0055B88B    push        55B9DC
 0055B890    push        dword ptr fs:[eax]
 0055B893    mov         dword ptr fs:[eax],esp
 0055B896    sub         dword ptr ds:[6ECC88],1
>0055B89D    jae         0055B9C1
 0055B8A3    xor         eax,eax
 0055B8A5    mov         [006ECC84],eax;TeeSeriesTypes:TTeeSeriesTypes
 0055B8AA    xor         eax,eax
 0055B8AC    mov         dword ptr ds:[6ECC78],eax;AnimatedZoomFactor:Double
 0055B8B2    mov         dword ptr ds:[6ECC7C],40080000;gvar_006ECC7C
 0055B8BC    mov         byte ptr ds:[6ECC80],0;TeeZoomMouseButton:TMouseButton
 0055B8C3    mov         byte ptr ds:[6ECC81],1;TeeScrollMouseButton:TMouseButton
 0055B8CA    mov         al,[0055B9E8];0x0 gvar_0055B9E8
 0055B8CF    mov         [006ECC82],al;TeeZoomKeyShift:TShiftState
 0055B8D4    mov         al,[0055B9E8];0x0 gvar_0055B9E8
 0055B8D9    mov         [006ECC83],al;TeeScrollKeyShift:TShiftState
 0055B8DE    mov         eax,[00556474];TChartLegend
 0055B8E3    mov         dword ptr [ebp-10],eax
 0055B8E6    mov         eax,[00567EE8];TChartGradient
 0055B8EB    mov         dword ptr [ebp-0C],eax
 0055B8EE    mov         eax,[00556118];TChartWall
 0055B8F3    mov         dword ptr [ebp-8],eax
 0055B8F6    mov         eax,[005567B0];TChartTitle
 0055B8FB    mov         dword ptr [ebp-4],eax
 0055B8FE    lea         eax,[ebp-10]
 0055B901    mov         edx,3
 0055B906    call        006443A8
 0055B90B    lea         edx,[ebp-14]
 0055B90E    mov         eax,[006E9D88];^gvar_0056EFB0
 0055B913    call        LoadResString
 0055B918    mov         edx,dword ptr [ebp-14]
 0055B91B    mov         eax,[00555348];TAddTeeFunction
 0055B920    call        RegisterTeeBasicFunction
 0055B925    lea         edx,[ebp-18]
 0055B928    mov         eax,[006E9D8C];^gvar_0056EFB8
 0055B92D    call        LoadResString
 0055B932    mov         edx,dword ptr [ebp-18]
 0055B935    mov         eax,[005554FC];TSubtractTeeFunction
 0055B93A    call        RegisterTeeBasicFunction
 0055B93F    lea         edx,[ebp-1C]
 0055B942    mov         eax,[006E9D90];^gvar_0056EFC0
 0055B947    call        LoadResString
 0055B94C    mov         edx,dword ptr [ebp-1C]
 0055B94F    mov         eax,[005555DC];TMultiplyTeeFunction
 0055B954    call        RegisterTeeBasicFunction
 0055B959    lea         edx,[ebp-20]
 0055B95C    mov         eax,[006E9D94];^gvar_0056EFC8
 0055B961    call        LoadResString
 0055B966    mov         edx,dword ptr [ebp-20]
 0055B969    mov         eax,[005556BC];TDivideTeeFunction
 0055B96E    call        RegisterTeeBasicFunction
 0055B973    lea         edx,[ebp-24]
 0055B976    mov         eax,[006E9D98];^gvar_0056EFD0
 0055B97B    call        LoadResString
 0055B980    mov         edx,dword ptr [ebp-24]
 0055B983    mov         eax,[00555798];THighTeeFunction
 0055B988    call        RegisterTeeBasicFunction
 0055B98D    lea         edx,[ebp-28]
 0055B990    mov         eax,[006E9D9C];^gvar_0056EFD8
 0055B995    call        LoadResString
 0055B99A    mov         edx,dword ptr [ebp-28]
 0055B99D    mov         eax,[0055586C];TLowTeeFunction
 0055B9A2    call        RegisterTeeBasicFunction
 0055B9A7    lea         edx,[ebp-2C]
 0055B9AA    mov         eax,[006E9DA0];^gvar_0056EFE0
 0055B9AF    call        LoadResString
 0055B9B4    mov         edx,dword ptr [ebp-2C]
 0055B9B7    mov         eax,[0055593C];TAverageTeeFunction
 0055B9BC    call        RegisterTeeBasicFunction
 0055B9C1    xor         eax,eax
 0055B9C3    pop         edx
 0055B9C4    pop         ecx
 0055B9C5    pop         ecx
 0055B9C6    mov         dword ptr fs:[eax],edx
 0055B9C9    push        55B9E3
 0055B9CE    lea         eax,[ebp-2C]
 0055B9D1    mov         edx,7
 0055B9D6    call        @LStrArrayClr
 0055B9DB    ret
>0055B9DC    jmp         @HandleFinally
>0055B9E1    jmp         0055B9CE
 0055B9E3    mov         esp,ebp
 0055B9E5    pop         ebp
 0055B9E6    ret
*}
end;

//0055DBD4
procedure TChartAxisTitle.Assign(Source:TPersistent);
begin
{*
 0055DBD4    push        ebx
 0055DBD5    push        esi
 0055DBD6    push        edi
 0055DBD7    mov         esi,edx
 0055DBD9    mov         ebx,eax
 0055DBDB    mov         eax,esi
 0055DBDD    mov         edx,dword ptr ds:[55C070];TChartAxisTitle
 0055DBE3    call        @IsClass
 0055DBE8    test        al,al
>0055DBEA    je          0055DC05
 0055DBEC    mov         edi,esi
 0055DBEE    mov         eax,dword ptr [edi+10]
 0055DBF1    mov         dword ptr [ebx+10],eax
 0055DBF4    mov         eax,dword ptr [edi+0C]
 0055DBF7    mov         dword ptr [ebx+0C],eax
 0055DBFA    lea         eax,[ebx+14]
 0055DBFD    mov         edx,dword ptr [edi+14]
 0055DC00    call        @LStrAsg
 0055DC05    mov         edx,esi
 0055DC07    mov         eax,ebx
 0055DC09    call        TChartFontObject.Assign
 0055DC0E    pop         edi
 0055DC0F    pop         esi
 0055DC10    pop         ebx
 0055DC11    ret
*}
end;

//0055DC14
function TChartAxisTitle.IsAngleStored(Value:Integer):Boolean;
begin
{*
 0055DC14    mov         edx,dword ptr [eax+10]
 0055DC17    mov         edx,dword ptr [edx+0D0]
 0055DC1D    cmp         edx,dword ptr [eax+0C]
 0055DC20    setne       al
 0055DC23    ret
*}
end;

//0055DC24
procedure TChartAxisTitle.SetAngle(Value:Integer);
begin
{*
 0055DC24    push        ebp
 0055DC25    mov         ebp,esp
 0055DC27    push        0
 0055DC29    push        ebx
 0055DC2A    push        esi
 0055DC2B    mov         esi,edx
 0055DC2D    mov         ebx,eax
 0055DC2F    xor         eax,eax
 0055DC31    push        ebp
 0055DC32    push        55DC79
 0055DC37    push        dword ptr fs:[eax]
 0055DC3A    mov         dword ptr fs:[eax],esp
 0055DC3D    cmp         esi,dword ptr [ebx+0C]
>0055DC40    je          0055DC63
 0055DC42    lea         edx,[ebp-4]
 0055DC45    mov         eax,[006E9D34]
 0055DC4A    call        LoadResString
 0055DC4F    mov         edx,dword ptr [ebp-4]
 0055DC52    mov         eax,esi
 0055DC54    call        TeeCheckAngle
 0055DC59    mov         dword ptr [ebx+0C],esi
 0055DC5C    mov         eax,ebx
 0055DC5E    call        TChartFontObject.Repaint
 0055DC63    xor         eax,eax
 0055DC65    pop         edx
 0055DC66    pop         ecx
 0055DC67    pop         ecx
 0055DC68    mov         dword ptr fs:[eax],edx
 0055DC6B    push        55DC80
 0055DC70    lea         eax,[ebp-4]
 0055DC73    call        @LStrClr
 0055DC78    ret
>0055DC79    jmp         @HandleFinally
>0055DC7E    jmp         0055DC70
 0055DC80    pop         esi
 0055DC81    pop         ebx
 0055DC82    pop         ecx
 0055DC83    pop         ebp
 0055DC84    ret
*}
end;

//0055DC88
procedure TChartAxisTitle.SetCaption(const Value:AnsiString);
begin
{*
 0055DC88    lea         ecx,[eax+14]
 0055DC8B    mov         eax,dword ptr [eax+4]
 0055DC8E    xchg        ecx,edx
 0055DC90    call        TCustomTeePanel.SetStringProperty
 0055DC95    ret
*}
end;

//0055DC98
constructor TCustomChartAxis.Create(AOwner:TCustomAxisPanel);
begin
{*
 0055DC98    push        ebx
 0055DC99    push        esi
 0055DC9A    push        edi
 0055DC9B    test        dl,dl
>0055DC9D    je          0055DCA7
 0055DC9F    add         esp,0FFFFFFF0
 0055DCA2    call        @ClassCreate
 0055DCA7    mov         esi,ecx
 0055DCA9    mov         ebx,edx
 0055DCAB    mov         edi,eax
 0055DCAD    xor         edx,edx
 0055DCAF    mov         eax,edi
 0055DCB1    call        TObject.Create
 0055DCB6    mov         dword ptr [edi+90],esi
 0055DCBC    mov         byte ptr [edi+41],1
 0055DCC0    mov         dword ptr [edi+24],0A
 0055DCC7    mov         byte ptr [edi+4],1
 0055DCCB    mov         byte ptr [edi+5],1
 0055DCCF    mov         byte ptr [edi+6],1
 0055DCD3    mov         dword ptr [edi+50],0A
 0055DCDA    lea         edx,[edi+60]
 0055DCDD    mov         eax,[006E9D30]
 0055DCE2    call        LoadResString
 0055DCE7    mov         byte ptr [edi+58],0
 0055DCEB    mov         byte ptr [edi+4C],1
 0055DCEF    mov         eax,dword ptr [edi+90]
 0055DCF5    push        eax
 0055DCF6    mov         eax,dword ptr [eax]
 0055DCF8    mov         eax,dword ptr [eax+0CC]
 0055DCFE    push        eax
 0055DCFF    call        CreateDefaultFont
 0055DD04    mov         dword ptr [edi+48],eax
 0055DD07    mov         byte ptr [edi+8C],1
 0055DD0E    xor         eax,eax
 0055DD10    mov         dword ptr [edi+0D0],eax
 0055DD16    mov         ecx,dword ptr [edi+90]
 0055DD1C    mov         dl,1
 0055DD1E    mov         eax,[0055C070];TChartAxisTitle
 0055DD23    call        TChartFontObject.Create
 0055DD28    mov         esi,eax
 0055DD2A    mov         dword ptr [edi+30],esi
 0055DD2D    mov         dword ptr [esi+10],edi
 0055DD30    mov         eax,dword ptr [edi+90]
 0055DD36    push        eax
 0055DD37    mov         eax,dword ptr [eax]
 0055DD39    mov         eax,dword ptr [eax+0CC]
 0055DD3F    push        eax
 0055DD40    mov         dl,1
 0055DD42    mov         eax,[0056A5E0];TDarkGrayPen
 0055DD47    call        TDarkGrayPen.Create
 0055DD4C    mov         dword ptr [edi+7C],eax
 0055DD4F    mov         dword ptr [edi+88],4
 0055DD59    mov         eax,dword ptr [edi+90]
 0055DD5F    push        eax
 0055DD60    mov         eax,dword ptr [eax]
 0055DD62    mov         eax,dword ptr [eax+0CC]
 0055DD68    push        eax
 0055DD69    mov         dl,1
 0055DD6B    mov         eax,[0056A5E0];TDarkGrayPen
 0055DD70    call        TDarkGrayPen.Create
 0055DD75    mov         dword ptr [edi+78],eax
 0055DD78    mov         dword ptr [edi+74],2
 0055DD7F    mov         dword ptr [edi+70],3
 0055DD86    mov         eax,dword ptr [edi+90]
 0055DD8C    push        eax
 0055DD8D    mov         eax,dword ptr [eax]
 0055DD8F    mov         eax,dword ptr [eax+0CC]
 0055DD95    push        eax
 0055DD96    mov         dl,1
 0055DD98    mov         eax,[0056A5E0];TDarkGrayPen
 0055DD9D    call        TDarkGrayPen.Create
 0055DDA2    mov         dword ptr [edi+80],eax
 0055DDA8    mov         eax,dword ptr [edi+90]
 0055DDAE    push        eax
 0055DDAF    mov         eax,dword ptr [eax]
 0055DDB1    mov         eax,dword ptr [eax+0CC]
 0055DDB7    push        eax
 0055DDB8    mov         dl,1
 0055DDBA    mov         eax,[0056A50C];TDottedGrayPen
 0055DDBF    call        TDottedGrayPen.Create
 0055DDC4    mov         dword ptr [edi+3C],eax
 0055DDC7    mov         eax,dword ptr [edi+90]
 0055DDCD    push        eax
 0055DDCE    mov         eax,dword ptr [eax]
 0055DDD0    mov         eax,dword ptr [eax+0CC]
 0055DDD6    push        eax
 0055DDD7    mov         dl,1
 0055DDD9    mov         eax,[0056A458];TChartHiddenPen
 0055DDDE    call        TChartHiddenPen.Create
 0055DDE3    mov         dword ptr [edi+6C],eax
 0055DDE6    mov         eax,dword ptr [edi+90]
 0055DDEC    push        eax
 0055DDED    mov         eax,dword ptr [eax]
 0055DDEF    mov         eax,dword ptr [eax+0CC]
 0055DDF5    push        eax
 0055DDF6    mov         dl,1
 0055DDF8    mov         eax,[0056A744];TChartAxisPen
 0055DDFD    call        TChartAxisPen.Create
 0055DE02    mov         dword ptr [edi+28],eax
 0055DE05    mov         byte ptr [edi+94],1
 0055DE0C    mov         dl,1
 0055DE0E    mov         eax,edi
 0055DE10    call        TCustomChartAxis.SetRoundFirstLabel
 0055DE15    mov         byte ptr [edi+68],1
 0055DE19    mov         eax,dword ptr [edi+90]
 0055DE1F    mov         eax,dword ptr [eax+340]
 0055DE25    mov         edx,edi
 0055DE27    call        TList.Add
 0055DE2C    xor         eax,eax
 0055DE2E    mov         dword ptr [edi+98],eax
 0055DE34    mov         dword ptr [edi+9C],eax
 0055DE3A    xor         eax,eax
 0055DE3C    mov         dword ptr [edi+0A0],eax
 0055DE42    mov         dword ptr [edi+0A4],40590000
 0055DE4C    xor         eax,eax
 0055DE4E    mov         dword ptr [edi+0A8],eax
 0055DE54    mov         dword ptr [edi+0AC],eax
 0055DE5A    mov         eax,edi
 0055DE5C    test        bl,bl
>0055DE5E    je          0055DE6F
 0055DE60    call        @AfterConstruction
 0055DE65    pop         dword ptr fs:[0]
 0055DE6C    add         esp,0C
 0055DE6F    mov         eax,edi
 0055DE71    pop         edi
 0055DE72    pop         esi
 0055DE73    pop         ebx
 0055DE74    ret
*}
end;

//0055DE78
procedure TCustomChartAxis.IncDecDateTime(Increment:Boolean; tmpWhichDateTime:TDateTimeStep; var Value:Double; const AnIncrement:Double);
begin
{*
 0055DE78    push        ebp
 0055DE79    mov         ebp,esp
 0055DE7B    push        esi
 0055DE7C    push        edi
 0055DE7D    mov         edi,ecx
 0055DE7F    mov         esi,eax
 0055DE81    mov         eax,dword ptr [ebp+8]
 0055DE84    push        dword ptr [ebp+10]
 0055DE87    push        dword ptr [ebp+0C]
 0055DE8A    push        eax
 0055DE8B    cmp         byte ptr [esi+68],0
>0055DE8F    je          0055DE9E
 0055DE91    cmp         byte ptr [esi+0C8],0
>0055DE98    je          0055DE9E
 0055DE9A    cmp         al,12
>0055DE9C    jae         0055DEA2
 0055DE9E    xor         eax,eax
>0055DEA0    jmp         0055DEA4
 0055DEA2    mov         al,1
 0055DEA4    mov         ecx,edi
 0055DEA6    call        TeeDateTimeIncrement
 0055DEAB    pop         edi
 0055DEAC    pop         esi
 0055DEAD    pop         ebp
 0055DEAE    ret         0C
*}
end;

//0055DEB4
function TCustomChartAxis.IsDateTime:Boolean;
begin
{*
 0055DEB4    push        ebx
 0055DEB5    push        esi
 0055DEB6    push        edi
 0055DEB7    push        ebp
 0055DEB8    push        ecx
 0055DEB9    mov         dword ptr [esp],eax
 0055DEBC    mov         eax,dword ptr [esp]
 0055DEBF    mov         ebp,dword ptr [eax+90]
 0055DEC5    mov         eax,dword ptr [ebp+2E0]
 0055DECB    mov         esi,dword ptr [eax+8]
 0055DECE    dec         esi
 0055DECF    test        esi,esi
>0055DED1    jl          0055DF1E
 0055DED3    inc         esi
 0055DED4    xor         edi,edi
 0055DED6    mov         edx,edi
 0055DED8    mov         eax,ebp
 0055DEDA    call        TCustomAxisPanel.GetSeries
 0055DEDF    mov         ebx,eax
 0055DEE1    cmp         byte ptr [ebx+30],0
>0055DEE5    je          0055DF1A
 0055DEE7    mov         edx,dword ptr [esp]
 0055DEEA    mov         eax,ebx
 0055DEEC    mov         ecx,dword ptr [eax]
 0055DEEE    call        dword ptr [ecx+94]
 0055DEF4    test        al,al
>0055DEF6    je          0055DF1A
 0055DEF8    mov         eax,dword ptr [esp]
 0055DEFB    cmp         byte ptr [eax+8E],0
>0055DF02    je          0055DF0F
 0055DF04    mov         eax,dword ptr [ebx+84]
 0055DF0A    mov         al,byte ptr [eax+4]
>0055DF0D    jmp         0055DF20
 0055DF0F    mov         eax,dword ptr [ebx+8C]
 0055DF15    mov         al,byte ptr [eax+4]
>0055DF18    jmp         0055DF20
 0055DF1A    inc         edi
 0055DF1B    dec         esi
>0055DF1C    jne         0055DED6
 0055DF1E    xor         eax,eax
 0055DF20    pop         edx
 0055DF21    pop         ebp
 0055DF22    pop         edi
 0055DF23    pop         esi
 0055DF24    pop         ebx
 0055DF25    ret
*}
end;

//0055DF28
procedure TCustomChartAxis.SetTicks(Value:TDarkGrayPen);
begin
{*
 0055DF28    mov         eax,dword ptr [eax+7C]
 0055DF2B    mov         ecx,dword ptr [eax]
 0055DF2D    call        dword ptr [ecx+8]
 0055DF30    ret
*}
end;

//0055DF34
procedure TCustomChartAxis.SetMinorTicks(Value:TDarkGrayPen);
begin
{*
 0055DF34    mov         eax,dword ptr [eax+78]
 0055DF37    mov         ecx,dword ptr [eax]
 0055DF39    call        dword ptr [ecx+8]
 0055DF3C    ret
*}
end;

//0055DF40
procedure TCustomChartAxis.SetTicksInner(Value:TDarkGrayPen);
begin
{*
 0055DF40    mov         eax,dword ptr [eax+80]
 0055DF46    mov         ecx,dword ptr [eax]
 0055DF48    call        dword ptr [ecx+8]
 0055DF4B    ret
*}
end;

//0055DF4C
procedure TCustomChartAxis.SetGrid(Value:TDottedGrayPen);
begin
{*
 0055DF4C    mov         eax,dword ptr [eax+3C]
 0055DF4F    mov         ecx,dword ptr [eax]
 0055DF51    call        dword ptr [ecx+8]
 0055DF54    ret
*}
end;

//0055DF58
procedure TCustomChartAxis.SetMinorGrid(Value:TChartHiddenPen);
begin
{*
 0055DF58    mov         eax,dword ptr [eax+6C]
 0055DF5B    mov         ecx,dword ptr [eax]
 0055DF5D    call        dword ptr [ecx+8]
 0055DF60    ret
*}
end;

//0055DF64
procedure TCustomChartAxis.SetGridCentered(Value:Boolean);
begin
{*
 0055DF64    lea         ecx,[eax+40]
 0055DF67    mov         eax,dword ptr [eax+90]
 0055DF6D    xchg        ecx,edx
 0055DF6F    call        TCustomTeePanel.SetBooleanProperty
 0055DF74    ret
*}
end;

//0055DF78
procedure TCustomChartAxis.SetAxis(Value:TChartAxisPen);
begin
{*
 0055DF78    mov         eax,dword ptr [eax+28]
 0055DF7B    mov         ecx,dword ptr [eax]
 0055DF7D    call        dword ptr [ecx+8]
 0055DF80    ret
*}
end;

//0055DF84
destructor TCustomChartAxis.Destroy;
begin
{*
 0055DF84    push        ebx
 0055DF85    push        esi
 0055DF86    call        @BeforeDestruction
 0055DF8B    mov         ebx,edx
 0055DF8D    mov         esi,eax
 0055DF8F    mov         eax,dword ptr [esi+78]
 0055DF92    call        TObject.Free
 0055DF97    mov         eax,dword ptr [esi+7C]
 0055DF9A    call        TObject.Free
 0055DF9F    mov         eax,dword ptr [esi+80]
 0055DFA5    call        TObject.Free
 0055DFAA    mov         eax,dword ptr [esi+3C]
 0055DFAD    call        TObject.Free
 0055DFB2    mov         eax,dword ptr [esi+6C]
 0055DFB5    call        TObject.Free
 0055DFBA    mov         eax,dword ptr [esi+28]
 0055DFBD    call        TObject.Free
 0055DFC2    mov         eax,dword ptr [esi+30]
 0055DFC5    call        TObject.Free
 0055DFCA    mov         eax,dword ptr [esi+48]
 0055DFCD    call        TObject.Free
 0055DFD2    mov         edx,ebx
 0055DFD4    and         dl,0FC
 0055DFD7    mov         eax,esi
 0055DFD9    call        TPersistent.Destroy
 0055DFDE    test        bl,bl
>0055DFE0    jle         0055DFE9
 0055DFE2    mov         eax,esi
 0055DFE4    call        @ClassDestroy
 0055DFE9    pop         esi
 0055DFEA    pop         ebx
 0055DFEB    ret
*}
end;

//0055DFEC
function TCustomChartAxis.IsPosStored(Value:Double):Boolean;
begin
{*
 0055DFEC    mov         edx,eax
 0055DFEE    fld         qword ptr [edx+0A0]
 0055DFF4    fcomp       dword ptr ds:[55E004]
 0055DFFA    fnstsw      al
 0055DFFC    sahf
 0055DFFD    setne       al
 0055E000    ret
*}
end;

//0055E008
function TCustomChartAxis.IsStartStored(Value:Double):Boolean;
begin
{*
 0055E008    mov         edx,eax
 0055E00A    fld         qword ptr [edx+0A0]
 0055E010    fcomp       dword ptr ds:[55E020]
 0055E016    fnstsw      al
 0055E018    sahf
 0055E019    setne       al
 0055E01C    ret
*}
end;

//0055E024
function TCustomChartAxis.IsEndStored(Value:Double):Boolean;
begin
{*
 0055E024    mov         edx,eax
 0055E026    fld         qword ptr [edx+0A0]
 0055E02C    fcomp       dword ptr ds:[55E03C]
 0055E032    fnstsw      al
 0055E034    sahf
 0055E035    setne       al
 0055E038    ret
*}
end;

//0055E040
function InternalCalcPos(const A:Double; const B:Double):Double;
begin
{*
 0055E040    push        ebp
 0055E041    mov         ebp,esp
 0055E043    add         esp,0FFFFFFF8
 0055E046    mov         eax,dword ptr [ebp+18]
 0055E049    mov         eax,dword ptr [eax-4]
 0055E04C    cmp         byte ptr [eax+8E],0
>0055E053    je          0055E064
 0055E055    mov         eax,dword ptr [ebp+18]
 0055E058    mov         eax,dword ptr [eax-4]
 0055E05B    cmp         byte ptr [eax+8D],0
>0055E062    jne         0055E082
 0055E064    mov         eax,dword ptr [ebp+18]
 0055E067    mov         eax,dword ptr [eax-4]
 0055E06A    cmp         byte ptr [eax+8E],0
>0055E071    jne         0055E090
 0055E073    mov         eax,dword ptr [ebp+18]
 0055E076    mov         eax,dword ptr [eax-4]
 0055E079    cmp         byte ptr [eax+8D],0
>0055E080    jne         0055E090
 0055E082    mov         eax,dword ptr [ebp+10]
 0055E085    mov         dword ptr [ebp-8],eax
 0055E088    mov         eax,dword ptr [ebp+14]
 0055E08B    mov         dword ptr [ebp-4],eax
>0055E08E    jmp         0055E09C
 0055E090    mov         eax,dword ptr [ebp+8]
 0055E093    mov         dword ptr [ebp-8],eax
 0055E096    mov         eax,dword ptr [ebp+0C]
 0055E099    mov         dword ptr [ebp-4],eax
 0055E09C    fld         qword ptr [ebp-8]
 0055E09F    pop         ecx
 0055E0A0    pop         ecx
 0055E0A1    pop         ebp
 0055E0A2    ret         10
*}
end;

//0055E0A8
function TCustomChartAxis.CalcPosPoint(Value:Integer):Double;
begin
{*
 0055E0A8    push        ebp
 0055E0A9    mov         ebp,esp
 0055E0AB    add         esp,0FFFFFFD4
 0055E0AE    push        ebx
 0055E0AF    mov         ebx,edx
 0055E0B1    mov         dword ptr [ebp-4],eax
 0055E0B4    mov         eax,dword ptr [ebp-4]
 0055E0B7    cmp         byte ptr [eax+20],0
>0055E0BB    je          0055E1F3
 0055E0C1    mov         eax,dword ptr [ebp-4]
 0055E0C4    cmp         ebx,dword ptr [eax+0D4]
>0055E0CA    jne         0055E0FA
 0055E0CC    push        ebp
 0055E0CD    mov         eax,dword ptr [ebp-4]
 0055E0D0    push        dword ptr [eax+0B4]
 0055E0D6    push        dword ptr [eax+0B0]
 0055E0DC    mov         eax,dword ptr [ebp-4]
 0055E0DF    push        dword ptr [eax+0BC]
 0055E0E5    push        dword ptr [eax+0B8]
 0055E0EB    call        InternalCalcPos
 0055E0F0    pop         ecx
 0055E0F1    fstp        qword ptr [ebp-10]
 0055E0F4    wait
>0055E0F5    jmp         0055E286
 0055E0FA    mov         eax,dword ptr [ebp-4]
 0055E0FD    cmp         ebx,dword ptr [eax+0D8]
>0055E103    jne         0055E133
 0055E105    push        ebp
 0055E106    mov         eax,dword ptr [ebp-4]
 0055E109    push        dword ptr [eax+0BC]
 0055E10F    push        dword ptr [eax+0B8]
 0055E115    mov         eax,dword ptr [ebp-4]
 0055E118    push        dword ptr [eax+0B4]
 0055E11E    push        dword ptr [eax+0B0]
 0055E124    call        InternalCalcPos
 0055E129    pop         ecx
 0055E12A    fstp        qword ptr [ebp-10]
 0055E12D    wait
>0055E12E    jmp         0055E286
 0055E133    lea         ecx,[ebp-20]
 0055E136    lea         edx,[ebp-28]
 0055E139    mov         eax,dword ptr [ebp-4]
 0055E13C    call        TCustomChartAxis.InternalCalcLog
 0055E141    fstp        qword ptr [ebp-18]
 0055E144    wait
 0055E145    fld         qword ptr [ebp-18]
 0055E148    fcomp       dword ptr ds:[55E290]
 0055E14E    fnstsw      al
 0055E150    sahf
>0055E151    jne         0055E16D
 0055E153    mov         eax,dword ptr [ebp-4]
 0055E156    mov         edx,dword ptr [eax+0B8]
 0055E15C    mov         dword ptr [ebp-10],edx
 0055E15F    mov         edx,dword ptr [eax+0BC]
 0055E165    mov         dword ptr [ebp-0C],edx
>0055E168    jmp         0055E286
 0055E16D    mov         eax,dword ptr [ebp-4]
 0055E170    cmp         byte ptr [eax+8D],0
>0055E177    je          0055E19E
 0055E179    mov         eax,dword ptr [ebp-4]
 0055E17C    mov         eax,dword ptr [eax+0D8]
 0055E182    sub         eax,ebx
 0055E184    mov         dword ptr [ebp-2C],eax
 0055E187    fild        dword ptr [ebp-2C]
 0055E18A    fmul        qword ptr [ebp-18]
 0055E18D    mov         eax,dword ptr [ebp-4]
 0055E190    fild        dword ptr [eax+0DC]
 0055E196    fdivp       st(1),st
 0055E198    fstp        qword ptr [ebp-18]
 0055E19B    wait
>0055E19C    jmp         0055E1BF
 0055E19E    mov         eax,dword ptr [ebp-4]
 0055E1A1    sub         ebx,dword ptr [eax+0D4]
 0055E1A7    mov         dword ptr [ebp-2C],ebx
 0055E1AA    fild        dword ptr [ebp-2C]
 0055E1AD    fmul        qword ptr [ebp-18]
 0055E1B0    mov         eax,dword ptr [ebp-4]
 0055E1B3    fild        dword ptr [eax+0DC]
 0055E1B9    fdivp       st(1),st
 0055E1BB    fstp        qword ptr [ebp-18]
 0055E1BE    wait
 0055E1BF    mov         eax,dword ptr [ebp-4]
 0055E1C2    cmp         byte ptr [eax+8E],0
>0055E1C9    je          0055E1DF
 0055E1CB    fld         qword ptr [ebp-20]
 0055E1CE    fadd        qword ptr [ebp-18]
 0055E1D1    call        @EXP
 0055E1D6    fstp        qword ptr [ebp-10]
 0055E1D9    wait
>0055E1DA    jmp         0055E286
 0055E1DF    fld         qword ptr [ebp-28]
 0055E1E2    fsub        qword ptr [ebp-18]
 0055E1E5    call        @EXP
 0055E1EA    fstp        qword ptr [ebp-10]
 0055E1ED    wait
>0055E1EE    jmp         0055E286
 0055E1F3    mov         eax,dword ptr [ebp-4]
 0055E1F6    mov         eax,dword ptr [eax+0DC]
 0055E1FC    test        eax,eax
>0055E1FE    jle         0055E27E
 0055E200    mov         edx,dword ptr [ebp-4]
 0055E203    cmp         byte ptr [edx+8D],0
>0055E20A    je          0055E223
 0055E20C    mov         edx,dword ptr [ebp-4]
 0055E20F    mov         edx,dword ptr [edx+0D8]
 0055E215    sub         edx,ebx
 0055E217    mov         dword ptr [ebp-2C],edx
 0055E21A    fild        dword ptr [ebp-2C]
 0055E21D    fstp        qword ptr [ebp-18]
 0055E220    wait
>0055E221    jmp         0055E236
 0055E223    mov         edx,dword ptr [ebp-4]
 0055E226    sub         ebx,dword ptr [edx+0D4]
 0055E22C    mov         dword ptr [ebp-2C],ebx
 0055E22F    fild        dword ptr [ebp-2C]
 0055E232    fstp        qword ptr [ebp-18]
 0055E235    wait
 0055E236    fld         qword ptr [ebp-18]
 0055E239    mov         edx,dword ptr [ebp-4]
 0055E23C    fmul        qword ptr [edx+0C0]
 0055E242    mov         dword ptr [ebp-2C],eax
 0055E245    fild        dword ptr [ebp-2C]
 0055E248    fdivp       st(1),st
 0055E24A    fstp        qword ptr [ebp-18]
 0055E24D    wait
 0055E24E    mov         eax,dword ptr [ebp-4]
 0055E251    cmp         byte ptr [eax+8E],0
>0055E258    je          0055E26C
 0055E25A    mov         eax,dword ptr [ebp-4]
 0055E25D    fld         qword ptr [eax+0B8]
 0055E263    fadd        qword ptr [ebp-18]
 0055E266    fstp        qword ptr [ebp-10]
 0055E269    wait
>0055E26A    jmp         0055E286
 0055E26C    mov         eax,dword ptr [ebp-4]
 0055E26F    fld         qword ptr [eax+0B0]
 0055E275    fsub        qword ptr [ebp-18]
 0055E278    fstp        qword ptr [ebp-10]
 0055E27B    wait
>0055E27C    jmp         0055E286
 0055E27E    xor         eax,eax
 0055E280    mov         dword ptr [ebp-10],eax
 0055E283    mov         dword ptr [ebp-0C],eax
 0055E286    fld         qword ptr [ebp-10]
 0055E289    pop         ebx
 0055E28A    mov         esp,ebp
 0055E28C    pop         ebp
 0055E28D    ret
*}
end;

//0055E294
procedure TCustomChartAxis.SetDateTimeFormat(const Value:AnsiString);
begin
{*
 0055E294    lea         ecx,[eax+64]
 0055E297    mov         eax,dword ptr [eax+90]
 0055E29D    xchg        ecx,edx
 0055E29F    call        TCustomTeePanel.SetStringProperty
 0055E2A4    ret
*}
end;

//0055E2A8
procedure TCustomChartAxis.SetAxisTitle(Value:TChartAxisTitle);
begin
{*
 0055E2A8    mov         eax,dword ptr [eax+30]
 0055E2AB    mov         ecx,dword ptr [eax]
 0055E2AD    call        dword ptr [ecx+8]
 0055E2B0    ret
*}
end;

//0055E2B4
procedure TCustomChartAxis.SetStartPosition(Value:Double; const Value:Double);
begin
{*
 0055E2B4    push        ebp
 0055E2B5    mov         ebp,esp
 0055E2B7    push        dword ptr [ebp+0C]
 0055E2BA    push        dword ptr [ebp+8]
 0055E2BD    lea         edx,[eax+98]
 0055E2C3    mov         eax,dword ptr [eax+90]
 0055E2C9    call        TCustomTeePanel.SetDoubleProperty
 0055E2CE    pop         ebp
 0055E2CF    ret         8
*}
end;

//0055E2D4
procedure TCustomChartAxis.SetEndPosition(Value:Double; const Value:Double);
begin
{*
 0055E2D4    push        ebp
 0055E2D5    mov         ebp,esp
 0055E2D7    push        dword ptr [ebp+0C]
 0055E2DA    push        dword ptr [ebp+8]
 0055E2DD    lea         edx,[eax+0A0]
 0055E2E3    mov         eax,dword ptr [eax+90]
 0055E2E9    call        TCustomTeePanel.SetDoubleProperty
 0055E2EE    pop         ebp
 0055E2EF    ret         8
*}
end;

//0055E2F4
procedure TCustomChartAxis.SetPositionPercent(Value:Double; const Value:Double);
begin
{*
 0055E2F4    push        ebp
 0055E2F5    mov         ebp,esp
 0055E2F7    push        dword ptr [ebp+0C]
 0055E2FA    push        dword ptr [ebp+8]
 0055E2FD    lea         edx,[eax+0A8]
 0055E303    mov         eax,dword ptr [eax+90]
 0055E309    call        TCustomTeePanel.SetDoubleProperty
 0055E30E    pop         ebp
 0055E30F    ret         8
*}
end;

//0055E314
procedure TCustomChartAxis.SetRoundFirstLabel(Value:Boolean);
begin
{*
 0055E314    lea         ecx,[eax+69]
 0055E317    mov         eax,dword ptr [eax+90]
 0055E31D    xchg        ecx,edx
 0055E31F    call        TCustomTeePanel.SetBooleanProperty
 0055E324    ret
*}
end;

//0055E328
procedure TCustomChartAxis.SetLabelsMultiLine(Value:Boolean);
begin
{*
 0055E328    lea         ecx,[eax+6A]
 0055E32B    mov         eax,dword ptr [eax+90]
 0055E331    xchg        ecx,edx
 0055E333    call        TCustomTeePanel.SetBooleanProperty
 0055E338    ret
*}
end;

//0055E33C
procedure TCustomChartAxis.SetTickOnLabelsOnly(Value:Boolean);
begin
{*
 0055E33C    lea         ecx,[eax+8C]
 0055E342    mov         eax,dword ptr [eax+90]
 0055E348    xchg        ecx,edx
 0055E34A    call        TCustomTeePanel.SetBooleanProperty
 0055E34F    ret
*}
end;

//0055E350
function TCustomChartAxis.CalcDateTimeIncrement(MaxNumLabels:Integer):Double;
begin
{*
 0055E350    push        ebx
 0055E351    push        esi
 0055E352    push        edi
 0055E353    add         esp,0FFFFFFF8
 0055E356    mov         esi,edx
 0055E358    mov         edi,eax
 0055E35A    push        dword ptr [edi+0C]
 0055E35D    push        dword ptr [edi+8]
 0055E360    mov         eax,[006E9CD4]
 0055E365    push        dword ptr [eax+4]
 0055E368    push        dword ptr [eax]
 0055E36A    call        MaxDouble
 0055E36F    fstp        qword ptr [esp]
 0055E372    wait
 0055E373    fld         qword ptr [esp]
 0055E376    fcomp       dword ptr ds:[55E418]
 0055E37C    fnstsw      al
 0055E37E    sahf
>0055E37F    jbe         0055E3F4
 0055E381    test        esi,esi
>0055E383    jle         0055E3F4
 0055E385    fld         qword ptr [edi+0C0]
 0055E38B    fdiv        qword ptr [esp]
 0055E38E    fcomp       dword ptr ds:[55E41C]
 0055E394    fnstsw      al
 0055E396    sahf
>0055E397    jbe         0055E3A9
 0055E399    fld         qword ptr [edi+0C0]
 0055E39F    fdiv        dword ptr ds:[55E41C]
 0055E3A5    fstp        qword ptr [esp]
 0055E3A8    wait
 0055E3A9    fld         qword ptr [edi+0C0]
 0055E3AF    fdiv        qword ptr [esp]
 0055E3B2    call        @ROUND
 0055E3B7    mov         ebx,eax
 0055E3B9    cmp         esi,ebx
>0055E3BB    jge         0055E3F0
 0055E3BD    fld         qword ptr [esp]
 0055E3C0    mov         eax,[006E9CD4]
 0055E3C5    fcomp       qword ptr [eax+0C0]
 0055E3CB    fnstsw      al
 0055E3CD    sahf
>0055E3CE    jae         0055E3E3
 0055E3D0    push        dword ptr [esp+4]
 0055E3D4    push        dword ptr [esp+4]
 0055E3D8    call        NextDateTimeStep
 0055E3DD    fstp        qword ptr [esp]
 0055E3E0    wait
>0055E3E1    jmp         0055E3F0
 0055E3E3    fld         dword ptr ds:[55E420]
 0055E3E9    fmul        qword ptr [esp]
 0055E3EC    fstp        qword ptr [esp]
 0055E3EF    wait
 0055E3F0    cmp         esi,ebx
>0055E3F2    jl          0055E3A9
 0055E3F4    push        dword ptr [esp+4]
 0055E3F8    push        dword ptr [esp+4]
 0055E3FC    mov         eax,[006E9CD4]
 0055E401    push        dword ptr [eax+4]
 0055E404    push        dword ptr [eax]
 0055E406    call        MaxDouble
 0055E40B    fstp        qword ptr [esp]
 0055E40E    wait
 0055E40F    fld         qword ptr [esp]
 0055E412    pop         ecx
 0055E413    pop         edx
 0055E414    pop         edi
 0055E415    pop         esi
 0055E416    pop         ebx
 0055E417    ret
*}
end;

//0055E424
procedure InternalCalcLabelsIncrement;
begin
{*
 0055E424    push        ebp
 0055E425    mov         ebp,esp
 0055E427    add         esp,0FFFFFFF8
 0055E42A    push        ebx
 0055E42B    push        esi
 0055E42C    mov         esi,dword ptr [ebp+8]
 0055E42F    add         esi,0FFFFFFF0
 0055E432    mov         eax,dword ptr [ebp+8]
 0055E435    mov         eax,dword ptr [eax-4]
 0055E438    fld         qword ptr [eax+8]
 0055E43B    fcomp       dword ptr ds:[55E51C]
 0055E441    fnstsw      al
 0055E443    sahf
>0055E444    ja          0055E480
 0055E446    mov         eax,dword ptr [ebp+8]
 0055E449    mov         eax,dword ptr [eax-4]
 0055E44C    fld         qword ptr [eax+0C0]
 0055E452    fabs
 0055E454    fstp        qword ptr [esi]
 0055E456    wait
 0055E457    fld         qword ptr [esi]
 0055E459    fcomp       dword ptr ds:[55E520]
 0055E45F    fnstsw      al
 0055E461    sahf
>0055E462    jae         0055E473
 0055E464    mov         dword ptr [esi],812DEA11
 0055E46A    mov         dword ptr [esi+4],3D719799
>0055E471    jmp         0055E491
 0055E473    xor         eax,eax
 0055E475    mov         dword ptr [esi],eax
 0055E477    mov         dword ptr [esi+4],3FF00000
>0055E47E    jmp         0055E491
 0055E480    mov         eax,dword ptr [ebp+8]
 0055E483    mov         eax,dword ptr [eax-4]
 0055E486    mov         edx,dword ptr [eax+8]
 0055E489    mov         dword ptr [esi],edx
 0055E48B    mov         edx,dword ptr [eax+0C]
 0055E48E    mov         dword ptr [esi+4],edx
 0055E491    mov         eax,dword ptr [ebp+8]
 0055E494    mov         ebx,dword ptr [eax-14]
 0055E497    inc         ebx
 0055E498    mov         eax,dword ptr [ebp+8]
 0055E49B    mov         eax,dword ptr [eax-4]
 0055E49E    cmp         dword ptr [eax+50],0
>0055E4A2    jle         0055E4FE
 0055E4A4    mov         eax,dword ptr [ebp+8]
 0055E4A7    mov         eax,dword ptr [eax-4]
 0055E4AA    fld         qword ptr [eax+0C0]
 0055E4B0    fdiv        qword ptr [esi]
 0055E4B2    fstp        qword ptr [ebp-8]
 0055E4B5    wait
 0055E4B6    fld         qword ptr [ebp-8]
 0055E4B9    fabs
 0055E4BB    fld         tbyte ptr ds:[55E524]
 0055E4C1    fcompp
 0055E4C3    fnstsw      al
 0055E4C5    sahf
>0055E4C6    jbe         0055E4E9
 0055E4C8    fld         qword ptr [ebp-8]
 0055E4CB    call        @ROUND
 0055E4D0    mov         ebx,eax
 0055E4D2    mov         eax,dword ptr [ebp+8]
 0055E4D5    cmp         ebx,dword ptr [eax-14]
>0055E4D8    jle         0055E4F6
 0055E4DA    push        dword ptr [esi+4]
 0055E4DD    push        dword ptr [esi]
 0055E4DF    call        TeeNextStep
 0055E4E4    fstp        qword ptr [esi]
 0055E4E6    wait
>0055E4E7    jmp         0055E4F6
 0055E4E9    push        dword ptr [esi+4]
 0055E4EC    push        dword ptr [esi]
 0055E4EE    call        TeeNextStep
 0055E4F3    fstp        qword ptr [esi]
 0055E4F5    wait
 0055E4F6    mov         eax,dword ptr [ebp+8]
 0055E4F9    cmp         ebx,dword ptr [eax-14]
>0055E4FC    jg          0055E4A4
 0055E4FE    push        dword ptr [esi+4]
 0055E501    push        dword ptr [esi]
 0055E503    push        3D719799
 0055E508    push        812DEA11
 0055E50D    call        MaxDouble
 0055E512    fstp        qword ptr [esi]
 0055E514    wait
 0055E515    pop         esi
 0055E516    pop         ebx
 0055E517    pop         ecx
 0055E518    pop         ecx
 0055E519    pop         ebp
 0055E51A    ret
*}
end;

//0055E530
function TCustomChartAxis.CalcLabelsIncrement(MaxNumLabels:Integer):Double;
begin
{*
 0055E530    push        ebp
 0055E531    mov         ebp,esp
 0055E533    add         esp,0FFFFFFEC
 0055E536    mov         dword ptr [ebp-14],edx
 0055E539    mov         dword ptr [ebp-4],eax
 0055E53C    cmp         dword ptr [ebp-14],0
>0055E540    jle         0055E568
 0055E542    mov         eax,dword ptr [ebp-4]
 0055E545    cmp         byte ptr [eax+0C8],0
>0055E54C    je          0055E55F
 0055E54E    mov         edx,dword ptr [ebp-14]
 0055E551    mov         eax,dword ptr [ebp-4]
 0055E554    call        TCustomChartAxis.CalcDateTimeIncrement
 0055E559    fstp        qword ptr [ebp-10]
 0055E55C    wait
>0055E55D    jmp         0055E594
 0055E55F    push        ebp
 0055E560    call        InternalCalcLabelsIncrement
 0055E565    pop         ecx
>0055E566    jmp         0055E594
 0055E568    mov         eax,dword ptr [ebp-4]
 0055E56B    cmp         byte ptr [eax+0C8],0
>0055E572    je          0055E586
 0055E574    mov         eax,[006E9CD4]
 0055E579    mov         edx,dword ptr [eax]
 0055E57B    mov         dword ptr [ebp-10],edx
 0055E57E    mov         edx,dword ptr [eax+4]
 0055E581    mov         dword ptr [ebp-0C],edx
>0055E584    jmp         0055E594
 0055E586    mov         dword ptr [ebp-10],812DEA11
 0055E58D    mov         dword ptr [ebp-0C],3D719799
 0055E594    fld         qword ptr [ebp-10]
 0055E597    mov         esp,ebp
 0055E599    pop         ebp
 0055E59A    ret
*}
end;

//0055E59C
function TCustomChartAxis.LabelWidth(const Value:Double):Integer;
begin
{*
 0055E59C    push        ebp
 0055E59D    mov         ebp,esp
 0055E59F    add         esp,0FFFFFFF8
 0055E5A2    push        ebx
 0055E5A3    push        esi
 0055E5A4    xor         edx,edx
 0055E5A6    mov         dword ptr [ebp-8],edx
 0055E5A9    mov         ebx,eax
 0055E5AB    xor         eax,eax
 0055E5AD    push        ebp
 0055E5AE    push        55E618
 0055E5B3    push        dword ptr fs:[eax]
 0055E5B6    mov         dword ptr fs:[eax],esp
 0055E5B9    push        dword ptr [ebp+0C]
 0055E5BC    push        dword ptr [ebp+8]
 0055E5BF    lea         edx,[ebp-8]
 0055E5C2    mov         eax,ebx
 0055E5C4    call        TCustomChartAxis.LabelValue
 0055E5C9    mov         edx,dword ptr [ebp-8]
 0055E5CC    lea         ecx,[ebp-4]
 0055E5CF    mov         eax,dword ptr [ebx+90]
 0055E5D5    call        TCustomTeePanel.MultiLineTextWidth
 0055E5DA    mov         esi,eax
 0055E5DC    mov         eax,dword ptr [ebx+44]
 0055E5DF    cmp         eax,5A
>0055E5E2    je          0055E5EB
 0055E5E4    cmp         eax,10E
>0055E5E9    jne         0055E602
 0055E5EB    mov         eax,dword ptr [ebx+90]
 0055E5F1    mov         eax,dword ptr [eax+280]
 0055E5F7    call        TTeeCanvas.FontHeight
 0055E5FC    mov         esi,eax
 0055E5FE    imul        esi,dword ptr [ebp-4]
 0055E602    xor         eax,eax
 0055E604    pop         edx
 0055E605    pop         ecx
 0055E606    pop         ecx
 0055E607    mov         dword ptr fs:[eax],edx
 0055E60A    push        55E61F
 0055E60F    lea         eax,[ebp-8]
 0055E612    call        @LStrClr
 0055E617    ret
>0055E618    jmp         @HandleFinally
>0055E61D    jmp         0055E60F
 0055E61F    mov         eax,esi
 0055E621    pop         esi
 0055E622    pop         ebx
 0055E623    pop         ecx
 0055E624    pop         ecx
 0055E625    pop         ebp
 0055E626    ret         8
*}
end;

//0055E62C
function TCustomChartAxis.LabelHeight(const Value:Double):Integer;
begin
{*
 0055E62C    push        ebp
 0055E62D    mov         ebp,esp
 0055E62F    add         esp,0FFFFFFF8
 0055E632    push        ebx
 0055E633    push        esi
 0055E634    xor         edx,edx
 0055E636    mov         dword ptr [ebp-8],edx
 0055E639    mov         ebx,eax
 0055E63B    xor         eax,eax
 0055E63D    push        ebp
 0055E63E    push        55E6A7
 0055E643    push        dword ptr fs:[eax]
 0055E646    mov         dword ptr fs:[eax],esp
 0055E649    push        dword ptr [ebp+0C]
 0055E64C    push        dword ptr [ebp+8]
 0055E64F    lea         edx,[ebp-8]
 0055E652    mov         eax,ebx
 0055E654    call        TCustomChartAxis.LabelValue
 0055E659    mov         edx,dword ptr [ebp-8]
 0055E65C    lea         ecx,[ebp-4]
 0055E65F    mov         eax,dword ptr [ebx+90]
 0055E665    call        TCustomTeePanel.MultiLineTextWidth
 0055E66A    mov         esi,eax
 0055E66C    mov         eax,dword ptr [ebx+44]
 0055E66F    test        eax,eax
>0055E671    je          0055E67A
 0055E673    cmp         eax,0B4
>0055E678    jne         0055E691
 0055E67A    mov         eax,dword ptr [ebx+90]
 0055E680    mov         eax,dword ptr [eax+280]
 0055E686    call        TTeeCanvas.FontHeight
 0055E68B    mov         esi,eax
 0055E68D    imul        esi,dword ptr [ebp-4]
 0055E691    xor         eax,eax
 0055E693    pop         edx
 0055E694    pop         ecx
 0055E695    pop         ecx
 0055E696    mov         dword ptr fs:[eax],edx
 0055E699    push        55E6AE
 0055E69E    lea         eax,[ebp-8]
 0055E6A1    call        @LStrClr
 0055E6A6    ret
>0055E6A7    jmp         @HandleFinally
>0055E6AC    jmp         0055E69E
 0055E6AE    mov         eax,esi
 0055E6B0    pop         esi
 0055E6B1    pop         ebx
 0055E6B2    pop         ecx
 0055E6B3    pop         ecx
 0055E6B4    pop         ebp
 0055E6B5    ret         8
*}
end;

//0055E6B8
function TCustomChartAxis.IsMaxStored(Value:Double):Boolean;
begin
{*
 0055E6B8    cmp         byte ptr [eax+4],0
>0055E6BC    jne         0055E6C4
 0055E6BE    cmp         byte ptr [eax+5],0
>0055E6C2    je          0055E6C7
 0055E6C4    xor         eax,eax
 0055E6C6    ret
 0055E6C7    mov         al,1
 0055E6C9    ret
*}
end;

//0055E6CC
function TCustomChartAxis.IsMinStored(Value:Double):Boolean;
begin
{*
 0055E6CC    cmp         byte ptr [eax+4],0
>0055E6D0    jne         0055E6D8
 0055E6D2    cmp         byte ptr [eax+6],0
>0055E6D6    je          0055E6DB
 0055E6D8    xor         eax,eax
 0055E6DA    ret
 0055E6DB    mov         al,1
 0055E6DD    ret
*}
end;

//0055E6E0
function TCustomChartAxis.CalcXYIncrement(MaxLabelSize:Integer):Double;
begin
{*
 0055E6E0    push        ebx
 0055E6E1    push        esi
 0055E6E2    push        edi
 0055E6E3    add         esp,0FFFFFFF0
 0055E6E6    mov         esi,edx
 0055E6E8    mov         ebx,eax
 0055E6EA    test        esi,esi
>0055E6EC    jle         0055E733
 0055E6EE    mov         edi,dword ptr [ebx+50]
 0055E6F1    test        edi,edi
>0055E6F3    jle         0055E716
 0055E6F5    mov         dword ptr [esp+8],edi
 0055E6F9    fild        dword ptr [esp+8]
 0055E6FD    fld         tbyte ptr ds:[55E750]
 0055E703    fmulp       st(1),st
 0055E705    mov         dword ptr [esp+0C],esi
 0055E709    fild        dword ptr [esp+0C]
 0055E70D    fmulp       st(1),st
 0055E70F    call        @ROUND
 0055E714    add         esi,eax
 0055E716    fild        dword ptr [ebx+0DC]
 0055E71C    fmul        dword ptr ds:[55E75C]
 0055E722    mov         dword ptr [esp+8],esi
 0055E726    fild        dword ptr [esp+8]
 0055E72A    fdivp       st(1),st
 0055E72C    call        @ROUND
>0055E731    jmp         0055E738
 0055E733    mov         eax,1
 0055E738    mov         edx,eax
 0055E73A    mov         eax,ebx
 0055E73C    call        TCustomChartAxis.CalcLabelsIncrement
 0055E741    fstp        qword ptr [esp]
 0055E744    wait
 0055E745    fld         qword ptr [esp]
 0055E748    add         esp,10
 0055E74B    pop         edi
 0055E74C    pop         esi
 0055E74D    pop         ebx
 0055E74E    ret
*}
end;

//0055E760
function TCustomChartAxis.CalcIncrement:Double;
begin
{*
 0055E760    push        ebx
 0055E761    add         esp,0FFFFFFF8
 0055E764    mov         ebx,eax
 0055E766    cmp         byte ptr [ebx+8E],0
>0055E76D    je          0055E79E
 0055E76F    push        dword ptr [ebx+0B4]
 0055E775    push        dword ptr [ebx+0B0]
 0055E77B    mov         eax,ebx
 0055E77D    call        TCustomChartAxis.LabelWidth
 0055E782    push        eax
 0055E783    push        dword ptr [ebx+0BC]
 0055E789    push        dword ptr [ebx+0B8]
 0055E78F    mov         eax,ebx
 0055E791    call        TCustomChartAxis.LabelWidth
 0055E796    pop         edx
 0055E797    call        0056EDD0
>0055E79C    jmp         0055E7CB
 0055E79E    push        dword ptr [ebx+0B4]
 0055E7A4    push        dword ptr [ebx+0B0]
 0055E7AA    mov         eax,ebx
 0055E7AC    call        TCustomChartAxis.LabelHeight
 0055E7B1    push        eax
 0055E7B2    push        dword ptr [ebx+0BC]
 0055E7B8    push        dword ptr [ebx+0B8]
 0055E7BE    mov         eax,ebx
 0055E7C0    call        TCustomChartAxis.LabelHeight
 0055E7C5    pop         edx
 0055E7C6    call        0056EDD0
 0055E7CB    mov         edx,eax
 0055E7CD    mov         eax,ebx
 0055E7CF    call        TCustomChartAxis.CalcXYIncrement
 0055E7D4    fstp        qword ptr [esp]
 0055E7D7    wait
 0055E7D8    fld         qword ptr [esp]
 0055E7DB    pop         ecx
 0055E7DC    pop         edx
 0055E7DD    pop         ebx
 0055E7DE    ret
*}
end;

//0055E7E0
procedure RecalcAdjustedMinMax(Pos1:Integer; Pos2:Integer);
begin
{*
 0055E7E0    push        ebp
 0055E7E1    mov         ebp,esp
 0055E7E3    push        ecx
 0055E7E4    push        ebx
 0055E7E5    push        esi
 0055E7E6    push        edi
 0055E7E7    mov         dword ptr [ebp-4],edx
 0055E7EA    mov         edi,dword ptr [ebp+8]
 0055E7ED    add         edi,0FFFFFFFC
 0055E7F0    mov         edx,dword ptr [edi]
 0055E7F2    mov         ebx,dword ptr [edx+0D4]
 0055E7F8    mov         edx,dword ptr [edi]
 0055E7FA    mov         esi,dword ptr [edx+0D8]
 0055E800    mov         edx,dword ptr [edi]
 0055E802    add         dword ptr [edx+0D4],eax
 0055E808    mov         eax,dword ptr [edi]
 0055E80A    mov         edx,dword ptr [ebp-4]
 0055E80D    sub         dword ptr [eax+0D8],edx
 0055E813    mov         eax,dword ptr [edi]
 0055E815    mov         eax,dword ptr [eax+0D8]
 0055E81B    mov         edx,dword ptr [edi]
 0055E81D    sub         eax,dword ptr [edx+0D4]
 0055E823    mov         edx,dword ptr [edi]
 0055E825    mov         dword ptr [edx+0DC],eax
 0055E82B    mov         eax,dword ptr [edi]
 0055E82D    mov         edx,ebx
 0055E82F    call        TCustomChartAxis.CalcPosPoint
 0055E834    mov         eax,dword ptr [ebp+8]
 0055E837    fstp        qword ptr [eax-10]
 0055E83A    wait
 0055E83B    mov         eax,dword ptr [edi]
 0055E83D    mov         edx,esi
 0055E83F    call        TCustomChartAxis.CalcPosPoint
 0055E844    mov         eax,dword ptr [ebp+8]
 0055E847    fstp        qword ptr [eax-18]
 0055E84A    wait
 0055E84B    pop         edi
 0055E84C    pop         esi
 0055E84D    pop         ebx
 0055E84E    pop         ecx
 0055E84F    pop         ebp
 0055E850    ret
*}
end;

//0055E854
procedure TCustomChartAxis.AdjustMaxMinRect(const Rect:TRect);
begin
{*
 0055E854    push        ebp
 0055E855    mov         ebp,esp
 0055E857    add         esp,0FFFFFFE8
 0055E85A    push        ebx
 0055E85B    mov         dword ptr [ebp-4],eax
 0055E85E    lea         ebx,[ebp-4]
 0055E861    mov         eax,dword ptr [ebx]
 0055E863    cmp         byte ptr [eax+8E],0
>0055E86A    je          0055E87A
 0055E86C    push        ebp
 0055E86D    mov         eax,dword ptr [edx]
 0055E86F    mov         edx,dword ptr [edx+8]
 0055E872    call        RecalcAdjustedMinMax
 0055E877    pop         ecx
>0055E878    jmp         0055E887
 0055E87A    push        ebp
 0055E87B    mov         eax,dword ptr [edx+4]
 0055E87E    mov         edx,dword ptr [edx+0C]
 0055E881    call        RecalcAdjustedMinMax
 0055E886    pop         ecx
 0055E887    mov         eax,dword ptr [ebx]
 0055E889    call        TCustomChartAxis.InternalCalcPositions
 0055E88E    mov         eax,dword ptr [ebx]
 0055E890    mov         edx,dword ptr [ebp-10]
 0055E893    mov         dword ptr [eax+0B8],edx
 0055E899    mov         edx,dword ptr [ebp-0C]
 0055E89C    mov         dword ptr [eax+0BC],edx
 0055E8A2    mov         eax,dword ptr [ebx]
 0055E8A4    mov         edx,dword ptr [ebp-18]
 0055E8A7    mov         dword ptr [eax+0B0],edx
 0055E8AD    mov         edx,dword ptr [ebp-14]
 0055E8B0    mov         dword ptr [eax+0B4],edx
 0055E8B6    mov         eax,dword ptr [ebx]
 0055E8B8    fld         qword ptr [eax+0B8]
 0055E8BE    mov         eax,dword ptr [ebx]
 0055E8C0    fcomp       qword ptr [eax+0B0]
 0055E8C6    fnstsw      al
 0055E8C8    sahf
>0055E8C9    jbe         0055E8DF
 0055E8CB    mov         eax,dword ptr [ebx]
 0055E8CD    lea         edx,[eax+0B0]
 0055E8D3    mov         eax,dword ptr [ebx]
 0055E8D5    add         eax,0B8
 0055E8DA    call        SwapDouble
 0055E8DF    mov         eax,dword ptr [ebx]
 0055E8E1    fld         qword ptr [eax+0B0]
 0055E8E7    mov         eax,dword ptr [ebx]
 0055E8E9    fsub        qword ptr [eax+0B8]
 0055E8EF    mov         eax,dword ptr [ebx]
 0055E8F1    fstp        qword ptr [eax+0C0]
 0055E8F7    wait
 0055E8F8    pop         ebx
 0055E8F9    mov         esp,ebp
 0055E8FB    pop         ebp
 0055E8FC    ret
*}
end;

//0055E900
procedure TCustomChartAxis.CalcMinMax(var AMin:Double; var AMax:Double);
begin
{*
 0055E900    push        ebx
 0055E901    push        esi
 0055E902    push        edi
 0055E903    mov         edi,ecx
 0055E905    mov         esi,edx
 0055E907    mov         ebx,eax
 0055E909    cmp         byte ptr [ebx+4],0
>0055E90D    jne         0055E915
 0055E90F    cmp         byte ptr [ebx+5],0
>0055E913    je          0055E92E
 0055E915    mov         al,byte ptr [ebx+8E]
 0055E91B    push        eax
 0055E91C    xor         ecx,ecx
 0055E91E    mov         edx,ebx
 0055E920    mov         eax,dword ptr [ebx+90]
 0055E926    call        TCustomAxisPanel.InternalMinMax
 0055E92B    fstp        qword ptr [edi]
 0055E92D    wait
 0055E92E    cmp         byte ptr [ebx+4],0
>0055E932    jne         0055E93A
 0055E934    cmp         byte ptr [ebx+6],0
>0055E938    je          0055E953
 0055E93A    mov         al,byte ptr [ebx+8E]
 0055E940    push        eax
 0055E941    mov         cl,1
 0055E943    mov         edx,ebx
 0055E945    mov         eax,dword ptr [ebx+90]
 0055E94B    call        TCustomAxisPanel.InternalMinMax
 0055E950    fstp        qword ptr [esi]
 0055E952    wait
 0055E953    pop         edi
 0055E954    pop         esi
 0055E955    pop         ebx
 0055E956    ret
*}
end;

//0055E958
procedure TCustomChartAxis.AdjustMaxMin;
begin
{*
 0055E958    push        ebx
 0055E959    mov         ebx,eax
 0055E95B    lea         ecx,[ebx+10]
 0055E95E    lea         edx,[ebx+18]
 0055E961    mov         eax,ebx
 0055E963    call        TCustomChartAxis.CalcMinMax
 0055E968    mov         eax,dword ptr [ebx+10]
 0055E96B    mov         dword ptr [ebx+0B0],eax
 0055E971    mov         eax,dword ptr [ebx+14]
 0055E974    mov         dword ptr [ebx+0B4],eax
 0055E97A    mov         eax,dword ptr [ebx+18]
 0055E97D    mov         dword ptr [ebx+0B8],eax
 0055E983    mov         eax,dword ptr [ebx+1C]
 0055E986    mov         dword ptr [ebx+0BC],eax
 0055E98C    fld         qword ptr [ebx+0B0]
 0055E992    fsub        qword ptr [ebx+0B8]
 0055E998    fstp        qword ptr [ebx+0C0]
 0055E99E    wait
 0055E99F    pop         ebx
 0055E9A0    ret
*}
end;

//0055E9A4
procedure TCustomChartAxis.Assign(Source:TPersistent);
begin
{*
 0055E9A4    push        ebx
 0055E9A5    push        esi
 0055E9A6    push        edi
 0055E9A7    mov         esi,edx
 0055E9A9    mov         ebx,eax
 0055E9AB    mov         eax,esi
 0055E9AD    mov         edx,dword ptr ds:[55C228];TCustomChartAxis
 0055E9B3    call        @IsClass
 0055E9B8    test        al,al
>0055E9BA    je          0055EB70
 0055E9C0    mov         edi,esi
 0055E9C2    mov         edx,dword ptr [edi+28]
 0055E9C5    mov         eax,dword ptr [ebx+28]
 0055E9C8    mov         ecx,dword ptr [eax]
 0055E9CA    call        dword ptr [ecx+8]
 0055E9CD    mov         al,byte ptr [edi+41]
 0055E9D0    mov         byte ptr [ebx+41],al
 0055E9D3    mov         eax,dword ptr [edi+44]
 0055E9D6    mov         dword ptr [ebx+44],eax
 0055E9D9    mov         edx,dword ptr [edi+48]
 0055E9DC    mov         eax,dword ptr [ebx+48]
 0055E9DF    mov         ecx,dword ptr [eax]
 0055E9E1    call        dword ptr [ecx+8]
 0055E9E4    mov         al,byte ptr [edi+6A]
 0055E9E7    mov         byte ptr [ebx+6A],al
 0055E9EA    mov         eax,dword ptr [edi+50]
 0055E9ED    mov         dword ptr [ebx+50],eax
 0055E9F0    mov         eax,dword ptr [edi+54]
 0055E9F3    mov         dword ptr [ebx+54],eax
 0055E9F6    mov         al,byte ptr [edi+58]
 0055E9F9    mov         byte ptr [ebx+58],al
 0055E9FC    mov         al,byte ptr [edi+4C]
 0055E9FF    mov         byte ptr [ebx+4C],al
 0055EA02    mov         edx,dword ptr [edi+7C]
 0055EA05    mov         eax,dword ptr [ebx+7C]
 0055EA08    mov         ecx,dword ptr [eax]
 0055EA0A    call        dword ptr [ecx+8]
 0055EA0D    mov         edx,dword ptr [edi+80]
 0055EA13    mov         eax,dword ptr [ebx+80]
 0055EA19    mov         ecx,dword ptr [eax]
 0055EA1B    call        dword ptr [ecx+8]
 0055EA1E    mov         eax,dword ptr [edi+34]
 0055EA21    mov         dword ptr [ebx+34],eax
 0055EA24    mov         edx,dword ptr [edi+3C]
 0055EA27    mov         eax,dword ptr [ebx+3C]
 0055EA2A    mov         ecx,dword ptr [eax]
 0055EA2C    call        dword ptr [ecx+8]
 0055EA2F    mov         edx,dword ptr [edi+78]
 0055EA32    mov         eax,dword ptr [ebx+78]
 0055EA35    mov         ecx,dword ptr [eax]
 0055EA37    call        dword ptr [ecx+8]
 0055EA3A    mov         edx,dword ptr [edi+6C]
 0055EA3D    mov         eax,dword ptr [ebx+6C]
 0055EA40    mov         ecx,dword ptr [eax]
 0055EA42    call        dword ptr [ecx+8]
 0055EA45    mov         eax,dword ptr [edi+88]
 0055EA4B    mov         dword ptr [ebx+88],eax
 0055EA51    mov         eax,dword ptr [edi+74]
 0055EA54    mov         dword ptr [ebx+74],eax
 0055EA57    mov         eax,dword ptr [edi+70]
 0055EA5A    mov         dword ptr [ebx+70],eax
 0055EA5D    mov         eax,dword ptr [edi+84]
 0055EA63    mov         dword ptr [ebx+84],eax
 0055EA69    lea         eax,[ebx+60]
 0055EA6C    mov         edx,dword ptr [edi+60]
 0055EA6F    call        @LStrAsg
 0055EA74    mov         eax,dword ptr [edi+8]
 0055EA77    mov         dword ptr [ebx+8],eax
 0055EA7A    mov         eax,dword ptr [edi+0C]
 0055EA7D    mov         dword ptr [ebx+0C],eax
 0055EA80    mov         eax,dword ptr [edi+10]
 0055EA83    mov         dword ptr [ebx+10],eax
 0055EA86    mov         eax,dword ptr [edi+14]
 0055EA89    mov         dword ptr [ebx+14],eax
 0055EA8C    mov         eax,dword ptr [edi+18]
 0055EA8F    mov         dword ptr [ebx+18],eax
 0055EA92    mov         eax,dword ptr [edi+1C]
 0055EA95    mov         dword ptr [ebx+1C],eax
 0055EA98    mov         al,byte ptr [edi+4]
 0055EA9B    mov         byte ptr [ebx+4],al
 0055EA9E    mov         al,byte ptr [edi+5]
 0055EAA1    mov         byte ptr [ebx+5],al
 0055EAA4    mov         al,byte ptr [edi+6]
 0055EAA7    mov         byte ptr [ebx+6],al
 0055EAAA    mov         edx,dword ptr [edi+30]
 0055EAAD    mov         eax,dword ptr [ebx+30]
 0055EAB0    mov         ecx,dword ptr [eax]
 0055EAB2    call        dword ptr [ecx+8]
 0055EAB5    lea         eax,[ebx+64]
 0055EAB8    mov         edx,dword ptr [edi+64]
 0055EABB    call        @LStrAsg
 0055EAC0    mov         al,byte ptr [edi+40]
 0055EAC3    mov         byte ptr [ebx+40],al
 0055EAC6    mov         al,byte ptr [edi+20]
 0055EAC9    mov         byte ptr [ebx+20],al
 0055EACC    mov         eax,dword ptr [edi+24]
 0055EACF    mov         dword ptr [ebx+24],eax
 0055EAD2    mov         al,byte ptr [edi+8D]
 0055EAD8    mov         byte ptr [ebx+8D],al
 0055EADE    mov         al,byte ptr [edi+68]
 0055EAE1    mov         byte ptr [ebx+68],al
 0055EAE4    mov         al,byte ptr [edi+69]
 0055EAE7    mov         byte ptr [ebx+69],al
 0055EAEA    mov         al,byte ptr [edi+8C]
 0055EAF0    mov         byte ptr [ebx+8C],al
 0055EAF6    mov         al,byte ptr [edi+0E0]
 0055EAFC    mov         byte ptr [ebx+0E0],al
 0055EB02    mov         eax,dword ptr [edi+98]
 0055EB08    mov         dword ptr [ebx+98],eax
 0055EB0E    mov         eax,dword ptr [edi+9C]
 0055EB14    mov         dword ptr [ebx+9C],eax
 0055EB1A    mov         eax,dword ptr [edi+0A0]
 0055EB20    mov         dword ptr [ebx+0A0],eax
 0055EB26    mov         eax,dword ptr [edi+0A4]
 0055EB2C    mov         dword ptr [ebx+0A4],eax
 0055EB32    mov         eax,dword ptr [edi+0A8]
 0055EB38    mov         dword ptr [ebx+0A8],eax
 0055EB3E    mov         eax,dword ptr [edi+0AC]
 0055EB44    mov         dword ptr [ebx+0AC],eax
 0055EB4A    mov         al,byte ptr [edi+94]
 0055EB50    mov         byte ptr [ebx+94],al
 0055EB56    mov         al,byte ptr [edi+8E]
 0055EB5C    mov         byte ptr [ebx+8E],al
 0055EB62    mov         al,byte ptr [edi+8F]
 0055EB68    mov         byte ptr [ebx+8F],al
>0055EB6E    jmp         0055EB79
 0055EB70    mov         edx,esi
 0055EB72    mov         eax,ebx
 0055EB74    call        TPersistent.Assign
 0055EB79    pop         edi
 0055EB7A    pop         esi
 0055EB7B    pop         ebx
 0055EB7C    ret
*}
end;

//0055EB80
function TCustomChartAxis.LabelValue(const Value:Double):AnsiString;
begin
{*
 0055EB80    push        ebp
 0055EB81    mov         ebp,esp
 0055EB83    push        0
 0055EB85    push        ebx
 0055EB86    push        esi
 0055EB87    push        edi
 0055EB88    mov         esi,edx
 0055EB8A    mov         ebx,eax
 0055EB8C    xor         eax,eax
 0055EB8E    push        ebp
 0055EB8F    push        55EC54
 0055EB94    push        dword ptr fs:[eax]
 0055EB97    mov         dword ptr fs:[eax],esp
 0055EB9A    cmp         byte ptr [ebx+0C8],0
>0055EBA1    je          0055EBF3
 0055EBA3    fld         qword ptr [ebp+8]
 0055EBA6    fcomp       dword ptr ds:[55EC64]
 0055EBAC    fnstsw      al
 0055EBAE    sahf
>0055EBAF    jb          0055EBEA
 0055EBB1    cmp         dword ptr [ebx+64],0
>0055EBB5    jne         0055EBCD
 0055EBB7    push        dword ptr [ebx+0C4]
 0055EBBD    push        dword ptr [ebx+0C0]
 0055EBC3    lea         eax,[ebp-4]
 0055EBC6    call        DateTimeDefaultFormat
>0055EBCB    jmp         0055EBD8
 0055EBCD    lea         eax,[ebp-4]
 0055EBD0    mov         edx,dword ptr [ebx+64]
 0055EBD3    call        @LStrLAsg
 0055EBD8    push        dword ptr [ebp+0C]
 0055EBDB    push        dword ptr [ebp+8]
 0055EBDE    mov         eax,esi
 0055EBE0    mov         edx,dword ptr [ebp-4]
 0055EBE3    call        DateTimeToString
>0055EBE8    jmp         0055EC07
 0055EBEA    mov         eax,esi
 0055EBEC    call        @LStrClr
>0055EBF1    jmp         0055EC07
 0055EBF3    fld         qword ptr [ebp+8]
 0055EBF6    add         esp,0FFFFFFF4
 0055EBF9    fstp        tbyte ptr [esp]
 0055EBFC    wait
 0055EBFD    mov         edx,esi
 0055EBFF    mov         eax,dword ptr [ebx+60]
 0055EC02    call        FormatFloat
 0055EC07    mov         eax,dword ptr [ebx+90]
 0055EC0D    cmp         word ptr [eax+302],0
>0055EC15    je          0055EC2C
 0055EC17    push        0FF
 0055EC19    push        esi
 0055EC1A    mov         edi,eax
 0055EC1C    xor         ecx,ecx
 0055EC1E    mov         edx,ebx
 0055EC20    mov         eax,dword ptr [edi+304]
 0055EC26    call        dword ptr [edi+300]
 0055EC2C    cmp         byte ptr [ebx+6A],0
>0055EC30    je          0055EC3E
 0055EC32    mov         eax,esi
 0055EC34    mov         edx,55EC70;' '
 0055EC39    call        TeeSplitInLines
 0055EC3E    xor         eax,eax
 0055EC40    pop         edx
 0055EC41    pop         ecx
 0055EC42    pop         ecx
 0055EC43    mov         dword ptr fs:[eax],edx
 0055EC46    push        55EC5B
 0055EC4B    lea         eax,[ebp-4]
 0055EC4E    call        @LStrClr
 0055EC53    ret
>0055EC54    jmp         @HandleFinally
>0055EC59    jmp         0055EC4B
 0055EC5B    pop         edi
 0055EC5C    pop         esi
 0055EC5D    pop         ebx
 0055EC5E    pop         ecx
 0055EC5F    pop         ebp
 0055EC60    ret         8
*}
end;

//0055EC74
function TCustomChartAxis.CalcLabelStyle:TAxisLabelStyle;
begin
{*
 0055EC74    push        ebx
 0055EC75    push        esi
 0055EC76    push        edi
 0055EC77    push        ebp
 0055EC78    add         esp,0FFFFFFF4
 0055EC7B    mov         ebx,eax
 0055EC7D    mov         al,byte ptr [ebx+58]
 0055EC80    test        al,al
>0055EC82    jne         0055EDA8
 0055EC88    cmp         byte ptr [ebx+0E0],0
>0055EC8F    je          0055ED15
 0055EC95    mov         byte ptr [esp],4
 0055EC99    mov         esi,dword ptr [ebx+90]
 0055EC9F    mov         eax,dword ptr [esi+2E0]
 0055ECA5    call        TChartSeriesList.CountActive
 0055ECAA    test        eax,eax
>0055ECAC    jle         0055EDAB
 0055ECB2    mov         eax,dword ptr [esi+2E0]
 0055ECB8    mov         edi,dword ptr [eax+8]
 0055ECBB    dec         edi
 0055ECBC    test        edi,edi
>0055ECBE    jl          0055EDAB
 0055ECC4    inc         edi
 0055ECC5    xor         ebp,ebp
 0055ECC7    mov         edx,ebp
 0055ECC9    mov         eax,esi
 0055ECCB    call        TCustomAxisPanel.GetSeries
 0055ECD0    mov         ebx,eax
 0055ECD2    cmp         byte ptr [ebx+30],0
>0055ECD6    je          0055ED0C
 0055ECD8    cmp         byte ptr [ebx+0FB],0
>0055ECDF    jne         0055ED03
 0055ECE1    mov         eax,ebx
 0055ECE3    mov         edx,dword ptr [eax]
 0055ECE5    call        dword ptr [edx+0D4]
 0055ECEB    fstp        qword ptr [esp+4]
 0055ECEF    wait
 0055ECF0    mov         eax,ebx
 0055ECF2    mov         edx,dword ptr [eax]
 0055ECF4    call        dword ptr [edx+0C8]
 0055ECFA    fcomp       qword ptr [esp+4]
 0055ECFE    fnstsw      al
 0055ED00    sahf
>0055ED01    je          0055ED0C
 0055ED03    mov         byte ptr [esp],2
>0055ED07    jmp         0055EDAB
 0055ED0C    inc         ebp
 0055ED0D    dec         edi
>0055ED0E    jne         0055ECC7
>0055ED10    jmp         0055EDAB
 0055ED15    mov         byte ptr [esp],1
 0055ED19    mov         eax,dword ptr [ebx+90]
 0055ED1F    mov         eax,dword ptr [eax+2E0]
 0055ED25    mov         edi,dword ptr [eax+8]
 0055ED28    dec         edi
 0055ED29    test        edi,edi
>0055ED2B    jl          0055EDAB
 0055ED2D    inc         edi
 0055ED2E    xor         ebp,ebp
 0055ED30    mov         edx,ebp
 0055ED32    mov         eax,dword ptr [ebx+90]
 0055ED38    call        TCustomAxisPanel.GetSeries
 0055ED3D    mov         esi,eax
 0055ED3F    cmp         byte ptr [esi+30],0
>0055ED43    je          0055EDA2
 0055ED45    mov         edx,ebx
 0055ED47    mov         eax,esi
 0055ED49    mov         ecx,dword ptr [eax]
 0055ED4B    call        dword ptr [ecx+94]
 0055ED51    test        al,al
>0055ED53    je          0055EDA2
 0055ED55    mov         byte ptr [esp],2
 0055ED59    cmp         byte ptr [ebx+8E],0
>0055ED60    je          0055ED6D
 0055ED62    mov         eax,esi
 0055ED64    call        TChartSeries.YMandatory
 0055ED69    test        al,al
>0055ED6B    jne         0055ED81
 0055ED6D    cmp         byte ptr [ebx+8E],0
>0055ED74    jne         0055EDA2
 0055ED76    mov         eax,esi
 0055ED78    call        TChartSeries.YMandatory
 0055ED7D    test        al,al
>0055ED7F    jne         0055EDA2
 0055ED81    mov         eax,dword ptr [esi+88]
 0055ED87    cmp         dword ptr [eax+8],0
>0055ED8B    jle         0055EDA2
 0055ED8D    mov         eax,dword ptr [esi+88]
 0055ED93    call        TList.First
 0055ED98    test        eax,eax
>0055ED9A    je          0055EDA2
 0055ED9C    mov         byte ptr [esp],4
>0055EDA0    jmp         0055EDAB
 0055EDA2    inc         ebp
 0055EDA3    dec         edi
>0055EDA4    jne         0055ED30
>0055EDA6    jmp         0055EDAB
 0055EDA8    mov         byte ptr [esp],al
 0055EDAB    mov         al,byte ptr [esp]
 0055EDAE    add         esp,0C
 0055EDB1    pop         ebp
 0055EDB2    pop         edi
 0055EDB3    pop         esi
 0055EDB4    pop         ebx
 0055EDB5    ret
*}
end;

//0055EDB8
function MaxLabelsValueWidth:Integer;
begin
{*
 0055EDB8    push        ebp
 0055EDB9    mov         ebp,esp
 0055EDBB    add         esp,0FFFFFFD4
 0055EDBE    push        ebx
 0055EDBF    push        esi
 0055EDC0    push        edi
 0055EDC1    xor         eax,eax
 0055EDC3    mov         dword ptr [ebp-2C],eax
 0055EDC6    mov         dword ptr [ebp-28],eax
 0055EDC9    xor         eax,eax
 0055EDCB    push        ebp
 0055EDCC    push        55EF2F
 0055EDD1    push        dword ptr fs:[eax]
 0055EDD4    mov         dword ptr fs:[eax],esp
 0055EDD7    mov         eax,dword ptr [ebp+8]
 0055EDDA    mov         eax,dword ptr [eax-4]
 0055EDDD    call        TCustomChartAxis.IsDateTime
 0055EDE2    test        al,al
>0055EDE4    je          0055EDF2
 0055EDE6    mov         eax,dword ptr [ebp+8]
 0055EDE9    mov         eax,dword ptr [eax-4]
 0055EDEC    cmp         byte ptr [eax+68],0
>0055EDF0    jne         0055EDFE
 0055EDF2    mov         eax,dword ptr [ebp+8]
 0055EDF5    mov         eax,dword ptr [eax-4]
 0055EDF8    cmp         byte ptr [eax+69],0
>0055EDFC    je          0055EE45
 0055EDFE    mov         eax,dword ptr [ebp+8]
 0055EE01    mov         eax,dword ptr [eax-4]
 0055EE04    call        TCustomChartAxis.CalcIncrement
 0055EE09    fstp        qword ptr [ebp-8]
 0055EE0C    wait
 0055EE0D    mov         eax,dword ptr [ebp+8]
 0055EE10    mov         eax,dword ptr [eax-4]
 0055EE13    fld         qword ptr [eax+0B8]
 0055EE19    fdiv        qword ptr [ebp-8]
 0055EE1C    call        @INT
 0055EE21    fmul        qword ptr [ebp-8]
 0055EE24    fstp        qword ptr [ebp-10]
 0055EE27    wait
 0055EE28    mov         eax,dword ptr [ebp+8]
 0055EE2B    mov         eax,dword ptr [eax-4]
 0055EE2E    fld         qword ptr [eax+0B0]
 0055EE34    fdiv        qword ptr [ebp-8]
 0055EE37    call        @INT
 0055EE3C    fmul        qword ptr [ebp-8]
 0055EE3F    fstp        qword ptr [ebp-18]
 0055EE42    wait
>0055EE43    jmp         0055EE75
 0055EE45    mov         eax,dword ptr [ebp+8]
 0055EE48    mov         eax,dword ptr [eax-4]
 0055EE4B    mov         edx,dword ptr [eax+0B8]
 0055EE51    mov         dword ptr [ebp-10],edx
 0055EE54    mov         edx,dword ptr [eax+0BC]
 0055EE5A    mov         dword ptr [ebp-0C],edx
 0055EE5D    mov         eax,dword ptr [ebp+8]
 0055EE60    mov         eax,dword ptr [eax-4]
 0055EE63    mov         edx,dword ptr [eax+0B0]
 0055EE69    mov         dword ptr [ebp-18],edx
 0055EE6C    mov         edx,dword ptr [eax+0B4]
 0055EE72    mov         dword ptr [ebp-14],edx
 0055EE75    mov         eax,dword ptr [ebp+8]
 0055EE78    mov         eax,dword ptr [eax-4]
 0055EE7B    mov         ebx,dword ptr [eax+90]
 0055EE81    mov         eax,dword ptr [ebx+300]
 0055EE87    mov         dword ptr [ebp-20],eax
 0055EE8A    mov         eax,dword ptr [ebx+304]
 0055EE90    mov         dword ptr [ebp-1C],eax
 0055EE93    xor         eax,eax
 0055EE95    mov         dword ptr [ebx+300],eax
 0055EE9B    mov         dword ptr [ebx+304],eax
 0055EEA1    mov         esi,dword ptr [ebx+280]
 0055EEA7    push        dword ptr [ebp-14]
 0055EEAA    push        dword ptr [ebp-18]
 0055EEAD    lea         edx,[ebp-28]
 0055EEB0    mov         eax,dword ptr [ebp+8]
 0055EEB3    mov         eax,dword ptr [eax-4]
 0055EEB6    call        TCustomChartAxis.LabelValue
 0055EEBB    mov         edx,dword ptr [ebp-28]
 0055EEBE    lea         ecx,[ebp-24]
 0055EEC1    mov         eax,ebx
 0055EEC3    call        TCustomTeePanel.MultiLineTextWidth
 0055EEC8    push        eax
 0055EEC9    push        dword ptr [ebp-0C]
 0055EECC    push        dword ptr [ebp-10]
 0055EECF    lea         edx,[ebp-2C]
 0055EED2    mov         eax,dword ptr [ebp+8]
 0055EED5    mov         eax,dword ptr [eax-4]
 0055EED8    call        TCustomChartAxis.LabelValue
 0055EEDD    mov         edx,dword ptr [ebp-2C]
 0055EEE0    lea         ecx,[ebp-24]
 0055EEE3    mov         eax,ebx
 0055EEE5    call        TCustomTeePanel.MultiLineTextWidth
 0055EEEA    pop         edx
 0055EEEB    call        0056EDD0
 0055EEF0    mov         edi,eax
 0055EEF2    mov         edx,55EF48;' '
 0055EEF7    mov         eax,esi
 0055EEF9    mov         ecx,dword ptr [eax]
 0055EEFB    call        dword ptr [ecx+60]
 0055EEFE    add         edi,eax
 0055EF00    mov         esi,edi
 0055EF02    mov         eax,dword ptr [ebp-20]
 0055EF05    mov         dword ptr [ebx+300],eax
 0055EF0B    mov         eax,dword ptr [ebp-1C]
 0055EF0E    mov         dword ptr [ebx+304],eax
 0055EF14    xor         eax,eax
 0055EF16    pop         edx
 0055EF17    pop         ecx
 0055EF18    pop         ecx
 0055EF19    mov         dword ptr fs:[eax],edx
 0055EF1C    push        55EF36
 0055EF21    lea         eax,[ebp-2C]
 0055EF24    mov         edx,2
 0055EF29    call        @LStrArrayClr
 0055EF2E    ret
>0055EF2F    jmp         @HandleFinally
>0055EF34    jmp         0055EF21
 0055EF36    mov         eax,esi
 0055EF38    pop         edi
 0055EF39    pop         esi
 0055EF3A    pop         ebx
 0055EF3B    mov         esp,ebp
 0055EF3D    pop         ebp
 0055EF3E    ret
*}
end;

//0055EF4C
function TCustomChartAxis.MaxLabelsWidth:Integer;
begin
{*
 0055EF4C    push        ebp
 0055EF4D    mov         ebp,esp
 0055EF4F    push        ecx
 0055EF50    mov         dword ptr [ebp-4],eax
 0055EF53    mov         eax,dword ptr [ebp-4]
 0055EF56    call        TCustomChartAxis.CalcLabelStyle
 0055EF5B    sub         al,2
>0055EF5D    je          0055EF69
 0055EF5F    dec         al
>0055EF61    je          0055EF73
 0055EF63    dec         al
>0055EF65    je          0055EF84
>0055EF67    jmp         0055EF95
 0055EF69    push        ebp
 0055EF6A    call        MaxLabelsValueWidth
 0055EF6F    pop         ecx
 0055EF70    pop         ecx
 0055EF71    pop         ebp
 0055EF72    ret
 0055EF73    mov         eax,dword ptr [ebp-4]
 0055EF76    mov         eax,dword ptr [eax+90]
 0055EF7C    call        TCustomAxisPanel.MaxMarkWidth
 0055EF81    pop         ecx
 0055EF82    pop         ebp
 0055EF83    ret
 0055EF84    mov         eax,dword ptr [ebp-4]
 0055EF87    mov         eax,dword ptr [eax+90]
 0055EF8D    call        TCustomAxisPanel.MaxTextWidth
 0055EF92    pop         ecx
 0055EF93    pop         ebp
 0055EF94    ret
 0055EF95    xor         eax,eax
 0055EF97    pop         ecx
 0055EF98    pop         ebp
 0055EF99    ret
*}
end;

//0055EF9C
procedure TCustomChartAxis.SetLabels(Value:Boolean);
begin
{*
 0055EF9C    lea         ecx,[eax+41]
 0055EF9F    mov         eax,dword ptr [eax+90]
 0055EFA5    xchg        ecx,edx
 0055EFA7    call        TCustomTeePanel.SetBooleanProperty
 0055EFAC    ret
*}
end;

//0055EFB0
procedure TCustomChartAxis.SetLabelsFont(Value:TFont);
begin
{*
 0055EFB0    push        esi
 0055EFB1    mov         esi,eax
 0055EFB3    mov         eax,dword ptr [esi+48]
 0055EFB6    mov         ecx,dword ptr [eax]
 0055EFB8    call        dword ptr [ecx+8]
 0055EFBB    pop         esi
 0055EFBC    ret
*}
end;

//0055EFC0
function TCustomChartAxis.IsFontStored(Value:TFont):Boolean;
begin
{*
 0055EFC0    push        ebx
 0055EFC1    mov         ebx,eax
 0055EFC3    mov         eax,dword ptr [ebx+48]
 0055EFC6    call        IsDefaultFont
 0055EFCB    xor         al,1
 0055EFCD    pop         ebx
 0055EFCE    ret
*}
end;

//0055EFD0
procedure TCustomChartAxis.SetAutomatic(Value:Boolean);
begin
{*
 0055EFD0    push        ebx
 0055EFD1    push        esi
 0055EFD2    mov         ebx,edx
 0055EFD4    mov         esi,eax
 0055EFD6    lea         edx,[esi+4]
 0055EFD9    mov         ecx,ebx
 0055EFDB    mov         eax,dword ptr [esi+90]
 0055EFE1    call        TCustomTeePanel.SetBooleanProperty
 0055EFE6    mov         eax,dword ptr [esi+90]
 0055EFEC    test        byte ptr [eax+1C],1
>0055EFF0    jne         0055EFF8
 0055EFF2    mov         byte ptr [esi+6],bl
 0055EFF5    mov         byte ptr [esi+5],bl
 0055EFF8    pop         esi
 0055EFF9    pop         ebx
 0055EFFA    ret
*}
end;

//0055EFFC
procedure TCustomChartAxis.SetAutomaticMinimum(Value:Boolean);
begin
{*
 0055EFFC    push        ebx
 0055EFFD    push        esi
 0055EFFE    mov         ebx,edx
 0055F000    mov         esi,eax
 0055F002    lea         edx,[esi+6]
 0055F005    mov         ecx,ebx
 0055F007    mov         eax,dword ptr [esi+90]
 0055F00D    call        TCustomTeePanel.SetBooleanProperty
 0055F012    test        bl,bl
>0055F014    je          0055F023
 0055F016    cmp         byte ptr [esi+5],0
>0055F01A    je          0055F027
 0055F01C    mov         byte ptr [esi+4],1
 0055F020    pop         esi
 0055F021    pop         ebx
 0055F022    ret
 0055F023    mov         byte ptr [esi+4],0
 0055F027    pop         esi
 0055F028    pop         ebx
 0055F029    ret
*}
end;

//0055F02C
procedure TCustomChartAxis.SetAutomaticMaximum(Value:Boolean);
begin
{*
 0055F02C    push        ebx
 0055F02D    push        esi
 0055F02E    mov         ebx,edx
 0055F030    mov         esi,eax
 0055F032    lea         edx,[esi+5]
 0055F035    mov         ecx,ebx
 0055F037    mov         eax,dword ptr [esi+90]
 0055F03D    call        TCustomTeePanel.SetBooleanProperty
 0055F042    test        bl,bl
>0055F044    je          0055F053
 0055F046    cmp         byte ptr [esi+6],0
>0055F04A    je          0055F057
 0055F04C    mov         byte ptr [esi+4],1
 0055F050    pop         esi
 0055F051    pop         ebx
 0055F052    ret
 0055F053    mov         byte ptr [esi+4],0
 0055F057    pop         esi
 0055F058    pop         ebx
 0055F059    ret
*}
end;

//0055F05C
function TCustomChartAxis.IsAxisValuesFormatStored(Value:String):Boolean;
begin
{*
 0055F05C    push        ebp
 0055F05D    mov         ebp,esp
 0055F05F    push        0
 0055F061    push        ebx
 0055F062    mov         ebx,eax
 0055F064    xor         eax,eax
 0055F066    push        ebp
 0055F067    push        55F0A5
 0055F06C    push        dword ptr fs:[eax]
 0055F06F    mov         dword ptr fs:[eax],esp
 0055F072    lea         edx,[ebp-4]
 0055F075    mov         eax,[006E9D30]
 0055F07A    call        LoadResString
 0055F07F    mov         edx,dword ptr [ebp-4]
 0055F082    mov         eax,dword ptr [ebx+60]
 0055F085    call        @LStrCmp
 0055F08A    setne       al
 0055F08D    mov         ebx,eax
 0055F08F    xor         eax,eax
 0055F091    pop         edx
 0055F092    pop         ecx
 0055F093    pop         ecx
 0055F094    mov         dword ptr fs:[eax],edx
 0055F097    push        55F0AC
 0055F09C    lea         eax,[ebp-4]
 0055F09F    call        @LStrClr
 0055F0A4    ret
>0055F0A5    jmp         @HandleFinally
>0055F0AA    jmp         0055F09C
 0055F0AC    mov         eax,ebx
 0055F0AE    pop         ebx
 0055F0AF    pop         ecx
 0055F0B0    pop         ebp
 0055F0B1    ret
*}
end;

//0055F0B4
procedure TCustomChartAxis.SetValuesFormat(const Value:AnsiString);
begin
{*
 0055F0B4    lea         ecx,[eax+60]
 0055F0B7    mov         eax,dword ptr [eax+90]
 0055F0BD    xchg        ecx,edx
 0055F0BF    call        TCustomTeePanel.SetStringProperty
 0055F0C4    ret
*}
end;

//0055F0C8
procedure TCustomChartAxis.SetInverted(Value:Boolean);
begin
{*
 0055F0C8    lea         ecx,[eax+8D]
 0055F0CE    mov         eax,dword ptr [eax+90]
 0055F0D4    xchg        ecx,edx
 0055F0D6    call        TCustomTeePanel.SetBooleanProperty
 0055F0DB    ret
*}
end;

//0055F0DC
procedure TCustomChartAxis.SetLogarithmicBase(Value:Integer);
begin
{*
 0055F0DC    push        ebp
 0055F0DD    mov         ebp,esp
 0055F0DF    push        0
 0055F0E1    xor         ecx,ecx
 0055F0E3    push        ebp
 0055F0E4    push        55F13C
 0055F0E9    push        dword ptr fs:[ecx]
 0055F0EC    mov         dword ptr fs:[ecx],esp
 0055F0EF    cmp         dword ptr [eax+24],2
>0055F0F3    jge         0055F116
 0055F0F5    lea         edx,[ebp-4]
 0055F0F8    mov         eax,[006E9D10]
 0055F0FD    call        LoadResString
 0055F102    mov         ecx,dword ptr [ebp-4]
 0055F105    mov         dl,1
 0055F107    mov         eax,[0055C178];AxisException
 0055F10C    call        Exception.Create
 0055F111    call        @RaiseExcept
 0055F116    lea         ecx,[eax+24]
 0055F119    mov         eax,dword ptr [eax+90]
 0055F11F    xchg        ecx,edx
 0055F121    call        TCustomTeePanel.SetIntegerProperty
 0055F126    xor         eax,eax
 0055F128    pop         edx
 0055F129    pop         ecx
 0055F12A    pop         ecx
 0055F12B    mov         dword ptr fs:[eax],edx
 0055F12E    push        55F143
 0055F133    lea         eax,[ebp-4]
 0055F136    call        @LStrClr
 0055F13B    ret
>0055F13C    jmp         @HandleFinally
>0055F141    jmp         0055F133
 0055F143    pop         ecx
 0055F144    pop         ebp
 0055F145    ret
*}
end;

//0055F148
procedure TCustomChartAxis.SetLogarithmic(Value:Boolean);
begin
{*
 0055F148    push        ebp
 0055F149    mov         ebp,esp
 0055F14B    push        0
 0055F14D    push        0
 0055F14F    push        ebx
 0055F150    push        esi
 0055F151    mov         ebx,edx
 0055F153    mov         esi,eax
 0055F155    xor         eax,eax
 0055F157    push        ebp
 0055F158    push        55F20C
 0055F15D    push        dword ptr fs:[eax]
 0055F160    mov         dword ptr fs:[eax],esp
 0055F163    test        bl,bl
>0055F165    je          0055F193
 0055F167    mov         eax,esi
 0055F169    call        TCustomChartAxis.IsDateTime
 0055F16E    test        al,al
>0055F170    je          0055F193
 0055F172    lea         edx,[ebp-4]
 0055F175    mov         eax,[006E9CF8]
 0055F17A    call        LoadResString
 0055F17F    mov         ecx,dword ptr [ebp-4]
 0055F182    mov         dl,1
 0055F184    mov         eax,[0055C178];AxisException
 0055F189    call        Exception.Create
 0055F18E    call        @RaiseExcept
 0055F193    test        bl,bl
>0055F195    je          0055F1E1
 0055F197    mov         eax,esi
 0055F199    call        TCustomChartAxis.AdjustMaxMin
 0055F19E    fld         qword ptr [esi+0B8]
 0055F1A4    fcomp       dword ptr ds:[55F21C]
 0055F1AA    fnstsw      al
 0055F1AC    sahf
>0055F1AD    jb          0055F1C0
 0055F1AF    fld         qword ptr [esi+0B0]
 0055F1B5    fcomp       dword ptr ds:[55F21C]
 0055F1BB    fnstsw      al
 0055F1BD    sahf
>0055F1BE    jae         0055F1E1
 0055F1C0    lea         edx,[ebp-8]
 0055F1C3    mov         eax,[006E9CFC]
 0055F1C8    call        LoadResString
 0055F1CD    mov         ecx,dword ptr [ebp-8]
 0055F1D0    mov         dl,1
 0055F1D2    mov         eax,[0055C178];AxisException
 0055F1D7    call        Exception.Create
 0055F1DC    call        @RaiseExcept
 0055F1E1    lea         edx,[esi+20]
 0055F1E4    mov         ecx,ebx
 0055F1E6    mov         eax,dword ptr [esi+90]
 0055F1EC    call        TCustomTeePanel.SetBooleanProperty
 0055F1F1    xor         eax,eax
 0055F1F3    pop         edx
 0055F1F4    pop         ecx
 0055F1F5    pop         ecx
 0055F1F6    mov         dword ptr fs:[eax],edx
 0055F1F9    push        55F213
 0055F1FE    lea         eax,[ebp-8]
 0055F201    mov         edx,2
 0055F206    call        @LStrArrayClr
 0055F20B    ret
>0055F20C    jmp         @HandleFinally
>0055F211    jmp         0055F1FE
 0055F213    pop         esi
 0055F214    pop         ebx
 0055F215    pop         ecx
 0055F216    pop         ecx
 0055F217    pop         ebp
 0055F218    ret
*}
end;

//0055F220
procedure TCustomChartAxis.SetLabelsAngle(Value:Integer);
begin
{*
 0055F220    push        ebp
 0055F221    mov         ebp,esp
 0055F223    push        0
 0055F225    push        ebx
 0055F226    push        esi
 0055F227    mov         esi,edx
 0055F229    mov         ebx,eax
 0055F22B    xor         eax,eax
 0055F22D    push        ebp
 0055F22E    push        55F276
 0055F233    push        dword ptr fs:[eax]
 0055F236    mov         dword ptr fs:[eax],esp
 0055F239    lea         edx,[ebp-4]
 0055F23C    mov         eax,[006E9D38]
 0055F241    call        LoadResString
 0055F246    mov         edx,dword ptr [ebp-4]
 0055F249    mov         eax,esi
 0055F24B    call        TeeCheckAngle
 0055F250    lea         edx,[ebx+44]
 0055F253    mov         ecx,esi
 0055F255    mov         eax,dword ptr [ebx+90]
 0055F25B    call        TCustomTeePanel.SetIntegerProperty
 0055F260    xor         eax,eax
 0055F262    pop         edx
 0055F263    pop         ecx
 0055F264    pop         ecx
 0055F265    mov         dword ptr fs:[eax],edx
 0055F268    push        55F27D
 0055F26D    lea         eax,[ebp-4]
 0055F270    call        @LStrClr
 0055F275    ret
>0055F276    jmp         @HandleFinally
>0055F27B    jmp         0055F26D
 0055F27D    pop         esi
 0055F27E    pop         ebx
 0055F27F    pop         ecx
 0055F280    pop         ebp
 0055F281    ret
*}
end;

//0055F284
procedure TCustomChartAxis.SetLabelsSeparation(Value:Integer);
begin
{*
 0055F284    push        ebp
 0055F285    mov         ebp,esp
 0055F287    push        0
 0055F289    xor         ecx,ecx
 0055F28B    push        ebp
 0055F28C    push        55F2E2
 0055F291    push        dword ptr fs:[ecx]
 0055F294    mov         dword ptr fs:[ecx],esp
 0055F297    test        edx,edx
>0055F299    jge         0055F2BC
 0055F29B    lea         edx,[ebp-4]
 0055F29E    mov         eax,[006E9D00]
 0055F2A3    call        LoadResString
 0055F2A8    mov         ecx,dword ptr [ebp-4]
 0055F2AB    mov         dl,1
 0055F2AD    mov         eax,[0055C178];AxisException
 0055F2B2    call        Exception.Create
 0055F2B7    call        @RaiseExcept
 0055F2BC    lea         ecx,[eax+50]
 0055F2BF    mov         eax,dword ptr [eax+90]
 0055F2C5    xchg        ecx,edx
 0055F2C7    call        TCustomTeePanel.SetIntegerProperty
 0055F2CC    xor         eax,eax
 0055F2CE    pop         edx
 0055F2CF    pop         ecx
 0055F2D0    pop         ecx
 0055F2D1    mov         dword ptr fs:[eax],edx
 0055F2D4    push        55F2E9
 0055F2D9    lea         eax,[ebp-4]
 0055F2DC    call        @LStrClr
 0055F2E1    ret
>0055F2E2    jmp         @HandleFinally
>0055F2E7    jmp         0055F2D9
 0055F2E9    pop         ecx
 0055F2EA    pop         ebp
 0055F2EB    ret
*}
end;

//0055F2EC
procedure TCustomChartAxis.SetLabelsSize(Value:Integer);
begin
{*
 0055F2EC    lea         ecx,[eax+54]
 0055F2EF    mov         eax,dword ptr [eax+90]
 0055F2F5    xchg        ecx,edx
 0055F2F7    call        TCustomTeePanel.SetIntegerProperty
 0055F2FC    ret
*}
end;

//0055F300
procedure TCustomChartAxis.SetTitleSize(Value:Integer);
begin
{*
 0055F300    lea         ecx,[eax+34]
 0055F303    mov         eax,dword ptr [eax+90]
 0055F309    xchg        ecx,edx
 0055F30B    call        TCustomTeePanel.SetIntegerProperty
 0055F310    ret
*}
end;

//0055F314
procedure TCustomChartAxis.SetLabelsOnAxis(Value:Boolean);
begin
{*
 0055F314    lea         ecx,[eax+4C]
 0055F317    mov         eax,dword ptr [eax+90]
 0055F31D    xchg        ecx,edx
 0055F31F    call        TCustomTeePanel.SetBooleanProperty
 0055F324    ret
*}
end;

//0055F328
procedure TCustomChartAxis.SetExactDateTime(Value:Boolean);
begin
{*
 0055F328    lea         ecx,[eax+68]
 0055F32B    mov         eax,dword ptr [eax+90]
 0055F331    xchg        ecx,edx
 0055F333    call        TCustomTeePanel.SetBooleanProperty
 0055F338    ret
*}
end;

//0055F33C
procedure TCustomChartAxis.SetLabelStyle(Value:TAxisLabelStyle);
begin
{*
 0055F33C    cmp         dl,byte ptr [eax+58]
>0055F33F    je          0055F352
 0055F341    mov         byte ptr [eax+58],dl
 0055F344    mov         eax,dword ptr [eax+90]
 0055F34A    mov         edx,dword ptr [eax]
 0055F34C    call        dword ptr [edx+80]
 0055F352    ret
*}
end;

//0055F354
procedure TCustomChartAxis.SetVisible(Value:Boolean);
begin
{*
 0055F354    lea         ecx,[eax+94]
 0055F35A    mov         eax,dword ptr [eax+90]
 0055F360    xchg        ecx,edx
 0055F362    call        TCustomTeePanel.SetBooleanProperty
 0055F367    ret
*}
end;

//0055F368
procedure TCustomChartAxis.SetDesiredIncrement(Value:Double; const Value:Double);
begin
{*
 0055F368    push        ebp
 0055F369    mov         ebp,esp
 0055F36B    push        0
 0055F36D    push        0
 0055F36F    push        ebx
 0055F370    mov         ebx,eax
 0055F372    xor         eax,eax
 0055F374    push        ebp
 0055F375    push        55F3F7
 0055F37A    push        dword ptr fs:[eax]
 0055F37D    mov         dword ptr fs:[eax],esp
 0055F380    fld         qword ptr [ebp+8]
 0055F383    fcomp       dword ptr ds:[55F408]
 0055F389    fnstsw      al
 0055F38B    sahf
>0055F38C    jae         0055F3AF
 0055F38E    lea         edx,[ebp-4]
 0055F391    mov         eax,[006E9D04]
 0055F396    call        LoadResString
 0055F39B    mov         ecx,dword ptr [ebp-4]
 0055F39E    mov         dl,1
 0055F3A0    mov         eax,[0055C178];AxisException
 0055F3A5    call        Exception.Create
 0055F3AA    call        @RaiseExcept
 0055F3AF    mov         eax,ebx
 0055F3B1    call        TCustomChartAxis.IsDateTime
 0055F3B6    test        al,al
>0055F3B8    je          0055F3C8
 0055F3BA    push        dword ptr [ebp+0C]
 0055F3BD    push        dword ptr [ebp+8]
 0055F3C0    lea         eax,[ebp-8]
 0055F3C3    call        DateTimeToStr
 0055F3C8    push        dword ptr [ebp+0C]
 0055F3CB    push        dword ptr [ebp+8]
 0055F3CE    lea         edx,[ebx+8]
 0055F3D1    mov         eax,dword ptr [ebx+90]
 0055F3D7    call        TCustomTeePanel.SetDoubleProperty
 0055F3DC    xor         eax,eax
 0055F3DE    pop         edx
 0055F3DF    pop         ecx
 0055F3E0    pop         ecx
 0055F3E1    mov         dword ptr fs:[eax],edx
 0055F3E4    push        55F3FE
 0055F3E9    lea         eax,[ebp-8]
 0055F3EC    mov         edx,2
 0055F3F1    call        @LStrArrayClr
 0055F3F6    ret
>0055F3F7    jmp         @HandleFinally
>0055F3FC    jmp         0055F3E9
 0055F3FE    pop         ebx
 0055F3FF    pop         ecx
 0055F400    pop         ecx
 0055F401    pop         ebp
 0055F402    ret         8
*}
end;

//0055F40C
procedure TCustomChartAxis.SetMinimum(Value:Double; const Value:Double);
begin
{*
 0055F40C    push        ebp
 0055F40D    mov         ebp,esp
 0055F40F    push        0
 0055F411    mov         edx,eax
 0055F413    xor         eax,eax
 0055F415    push        ebp
 0055F416    push        55F47C
 0055F41B    push        dword ptr fs:[eax]
 0055F41E    mov         dword ptr fs:[eax],esp
 0055F421    mov         eax,dword ptr [edx+90]
 0055F427    test        byte ptr [eax+1C],2
>0055F42B    jne         0055F459
 0055F42D    fld         qword ptr [ebp+8]
 0055F430    fcomp       qword ptr [edx+10]
 0055F433    fnstsw      al
 0055F435    sahf
>0055F436    jbe         0055F459
 0055F438    lea         edx,[ebp-4]
 0055F43B    mov         eax,[006E9D08]
 0055F440    call        LoadResString
 0055F445    mov         ecx,dword ptr [ebp-4]
 0055F448    mov         dl,1
 0055F44A    mov         eax,[0055C178];AxisException
 0055F44F    call        Exception.Create
 0055F454    call        @RaiseExcept
 0055F459    push        dword ptr [ebp+0C]
 0055F45C    push        dword ptr [ebp+8]
 0055F45F    mov         eax,edx
 0055F461    call        TCustomChartAxis.InternalSetMinimum
 0055F466    xor         eax,eax
 0055F468    pop         edx
 0055F469    pop         ecx
 0055F46A    pop         ecx
 0055F46B    mov         dword ptr fs:[eax],edx
 0055F46E    push        55F483
 0055F473    lea         eax,[ebp-4]
 0055F476    call        @LStrClr
 0055F47B    ret
>0055F47C    jmp         @HandleFinally
>0055F481    jmp         0055F473
 0055F483    pop         ecx
 0055F484    pop         ebp
 0055F485    ret         8
*}
end;

//0055F488
procedure TCustomChartAxis.InternalSetMinimum(const Value:Double);
begin
{*
 0055F488    push        ebp
 0055F489    mov         ebp,esp
 0055F48B    push        dword ptr [ebp+0C]
 0055F48E    push        dword ptr [ebp+8]
 0055F491    lea         edx,[eax+18]
 0055F494    mov         eax,dword ptr [eax+90]
 0055F49A    call        TCustomTeePanel.SetDoubleProperty
 0055F49F    pop         ebp
 0055F4A0    ret         8
*}
end;

//0055F4A4
procedure TCustomChartAxis.SetMaximum(Value:Double; const Value:Double);
begin
{*
 0055F4A4    push        ebp
 0055F4A5    mov         ebp,esp
 0055F4A7    push        0
 0055F4A9    mov         edx,eax
 0055F4AB    xor         eax,eax
 0055F4AD    push        ebp
 0055F4AE    push        55F514
 0055F4B3    push        dword ptr fs:[eax]
 0055F4B6    mov         dword ptr fs:[eax],esp
 0055F4B9    mov         eax,dword ptr [edx+90]
 0055F4BF    test        byte ptr [eax+1C],2
>0055F4C3    jne         0055F4F1
 0055F4C5    fld         qword ptr [ebp+8]
 0055F4C8    fcomp       qword ptr [edx+18]
 0055F4CB    fnstsw      al
 0055F4CD    sahf
>0055F4CE    jae         0055F4F1
 0055F4D0    lea         edx,[ebp-4]
 0055F4D3    mov         eax,[006E9D0C]
 0055F4D8    call        LoadResString
 0055F4DD    mov         ecx,dword ptr [ebp-4]
 0055F4E0    mov         dl,1
 0055F4E2    mov         eax,[0055C178];AxisException
 0055F4E7    call        Exception.Create
 0055F4EC    call        @RaiseExcept
 0055F4F1    push        dword ptr [ebp+0C]
 0055F4F4    push        dword ptr [ebp+8]
 0055F4F7    mov         eax,edx
 0055F4F9    call        TCustomChartAxis.InternalSetMaximum
 0055F4FE    xor         eax,eax
 0055F500    pop         edx
 0055F501    pop         ecx
 0055F502    pop         ecx
 0055F503    mov         dword ptr fs:[eax],edx
 0055F506    push        55F51B
 0055F50B    lea         eax,[ebp-4]
 0055F50E    call        @LStrClr
 0055F513    ret
>0055F514    jmp         @HandleFinally
>0055F519    jmp         0055F50B
 0055F51B    pop         ecx
 0055F51C    pop         ebp
 0055F51D    ret         8
*}
end;

//0055F520
procedure TCustomChartAxis.SetMinMax(AMin:Double; AMax:Double);
begin
{*
 0055F520    push        ebp
 0055F521    mov         ebp,esp
 0055F523    push        ebx
 0055F524    mov         ebx,eax
 0055F526    mov         byte ptr [ebx+4],0
 0055F52A    mov         byte ptr [ebx+6],0
 0055F52E    mov         byte ptr [ebx+5],0
 0055F532    fld         qword ptr [ebp+10]
 0055F535    fcomp       qword ptr [ebp+8]
 0055F538    fnstsw      al
 0055F53A    sahf
>0055F53B    jbe         0055F548
 0055F53D    lea         edx,[ebp+8]
 0055F540    lea         eax,[ebp+10]
 0055F543    call        SwapDouble
 0055F548    push        dword ptr [ebp+14]
 0055F54B    push        dword ptr [ebp+10]
 0055F54E    mov         eax,ebx
 0055F550    call        TCustomChartAxis.InternalSetMinimum
 0055F555    push        dword ptr [ebp+0C]
 0055F558    push        dword ptr [ebp+8]
 0055F55B    mov         eax,ebx
 0055F55D    call        TCustomChartAxis.InternalSetMaximum
 0055F562    fld         qword ptr [ebx+10]
 0055F565    fsub        qword ptr [ebx+18]
 0055F568    fld         tbyte ptr ds:[55F594]
 0055F56E    fcompp
 0055F570    fnstsw      al
 0055F572    sahf
>0055F573    jbe         0055F58C
 0055F575    fld         tbyte ptr ds:[55F594]
 0055F57B    fadd        qword ptr [ebx+18]
 0055F57E    add         esp,0FFFFFFF8
 0055F581    fstp        qword ptr [esp]
 0055F584    wait
 0055F585    mov         eax,ebx
 0055F587    call        TCustomChartAxis.InternalSetMaximum
 0055F58C    pop         ebx
 0055F58D    pop         ebp
 0055F58E    ret         10
*}
end;

//0055F5A0
procedure TCustomChartAxis.InternalSetMaximum(const Value:Double);
begin
{*
 0055F5A0    push        ebp
 0055F5A1    mov         ebp,esp
 0055F5A3    push        dword ptr [ebp+0C]
 0055F5A6    push        dword ptr [ebp+8]
 0055F5A9    lea         edx,[eax+10]
 0055F5AC    mov         eax,dword ptr [eax+90]
 0055F5B2    call        TCustomTeePanel.SetDoubleProperty
 0055F5B7    pop         ebp
 0055F5B8    ret         8
*}
end;

//0055F5BC
procedure TCustomChartAxis.SetTickLength(Value:Integer);
begin
{*
 0055F5BC    lea         ecx,[eax+88]
 0055F5C2    mov         eax,dword ptr [eax+90]
 0055F5C8    xchg        ecx,edx
 0055F5CA    call        TCustomTeePanel.SetIntegerProperty
 0055F5CF    ret
*}
end;

//0055F5D0
procedure TCustomChartAxis.SetMinorTickLength(Value:Integer);
begin
{*
 0055F5D0    lea         ecx,[eax+74]
 0055F5D3    mov         eax,dword ptr [eax+90]
 0055F5D9    xchg        ecx,edx
 0055F5DB    call        TCustomTeePanel.SetIntegerProperty
 0055F5E0    ret
*}
end;

//0055F5E4
procedure TCustomChartAxis.SetMinorTickCount(Value:Integer);
begin
{*
 0055F5E4    lea         ecx,[eax+70]
 0055F5E7    mov         eax,dword ptr [eax+90]
 0055F5ED    xchg        ecx,edx
 0055F5EF    call        TCustomTeePanel.SetIntegerProperty
 0055F5F4    ret
*}
end;

//0055F5F8
procedure TCustomChartAxis.SetTickInnerLength(Value:Integer);
begin
{*
 0055F5F8    lea         ecx,[eax+84]
 0055F5FE    mov         eax,dword ptr [eax+90]
 0055F604    xchg        ecx,edx
 0055F606    call        TCustomTeePanel.SetIntegerProperty
 0055F60B    ret
*}
end;

//0055F60C
procedure TCustomChartAxis.DrawTitle(x:Integer; y:Integer);
begin
{*
 0055F60C    push        ebx
 0055F60D    push        esi
 0055F60E    push        edi
 0055F60F    add         esp,0FFFFFFF8
 0055F612    mov         dword ptr [esp+4],ecx
 0055F616    mov         dword ptr [esp],edx
 0055F619    mov         ebx,eax
 0055F61B    mov         eax,dword ptr [ebx+90]
 0055F621    mov         edx,dword ptr [eax+280]
 0055F627    cmp         byte ptr [eax+268],0
>0055F62E    je          0055F646
 0055F630    mov         eax,dword ptr [edx+8]
 0055F633    cmp         dword ptr [eax+18],0FFFFFF
>0055F63A    jne         0055F646
 0055F63C    mov         eax,dword ptr [edx+8]
 0055F63F    xor         edx,edx
 0055F641    call        TFont.SetColor
 0055F646    mov         esi,dword ptr [ebx+30]
 0055F649    cmp         byte ptr [ebx+0E0],0
>0055F650    je          0055F68A
 0055F652    mov         ebx,dword ptr [esi+4]
 0055F655    mov         edi,dword ptr [ebx+280]
 0055F65B    xor         edx,edx
 0055F65D    mov         eax,edi
 0055F65F    mov         ecx,dword ptr [eax]
 0055F661    call        dword ptr [ecx+28]
 0055F664    mov         eax,dword ptr [ebx+278]
 0055F66A    sar         eax,1
>0055F66C    jns         0055F671
 0055F66E    adc         eax,0
 0055F671    push        eax
 0055F672    mov         eax,dword ptr [esi+14]
 0055F675    push        eax
 0055F676    mov         ecx,dword ptr [esp+0C]
 0055F67A    mov         edx,dword ptr [esp+8]
 0055F67E    mov         eax,edi
 0055F680    mov         ebx,dword ptr [eax]
 0055F682    call        dword ptr [ebx+124]
>0055F688    jmp         0055F6A1
 0055F68A    mov         eax,dword ptr [esi+0C]
 0055F68D    push        eax
 0055F68E    mov         eax,dword ptr [esi+14]
 0055F691    push        eax
 0055F692    mov         ecx,dword ptr [esp+0C]
 0055F696    mov         edx,dword ptr [esp+8]
 0055F69A    mov         eax,ebx
 0055F69C    call        TCustomChartAxis.DrawAxisLabel
 0055F6A1    pop         ecx
 0055F6A2    pop         edx
 0055F6A3    pop         edi
 0055F6A4    pop         esi
 0055F6A5    pop         ebx
 0055F6A6    ret
*}
end;

//0055F6A8
procedure TCustomChartAxis.DrawAxisLabel(x:Integer; y:Integer; Angle:Integer; const St:AnsiString);
begin
{*
 0055F6A8    push        ebp
 0055F6A9    mov         ebp,esp
 0055F6AB    add         esp,0FFFFFFD8
 0055F6AE    push        ebx
 0055F6AF    push        esi
 0055F6B0    push        edi
 0055F6B1    xor         ebx,ebx
 0055F6B3    mov         dword ptr [ebp-28],ebx
 0055F6B6    mov         dword ptr [ebp-14],ebx
 0055F6B9    mov         dword ptr [ebp-18],ebx
 0055F6BC    mov         dword ptr [ebp-8],ecx
 0055F6BF    mov         dword ptr [ebp-4],edx
 0055F6C2    mov         esi,eax
 0055F6C4    mov         ebx,dword ptr [ebp+0C]
 0055F6C7    xor         eax,eax
 0055F6C9    push        ebp
 0055F6CA    push        55FA12
 0055F6CF    push        dword ptr fs:[eax]
 0055F6D2    mov         dword ptr fs:[eax],esp
 0055F6D5    mov         eax,dword ptr [esi+90]
 0055F6DB    mov         eax,dword ptr [eax+280]
 0055F6E1    call        TTeeCanvas.FontHeight
 0055F6E6    sar         eax,1
>0055F6E8    jns         0055F6ED
 0055F6EA    adc         eax,0
 0055F6ED    mov         edx,ebx
 0055F6EF    sub         edx,1
>0055F6F2    jb          0055F70C
 0055F6F4    sub         edx,59
>0055F6F7    je          0055F739
 0055F6F9    sub         edx,5A
>0055F6FC    je          0055F76A
 0055F6FE    sub         edx,5A
>0055F701    je          0055F794
>0055F707    jmp         0055F7C6
 0055F70C    xor         ecx,ecx
 0055F70E    mov         cl,byte ptr [esi+8F]
 0055F714    mov         dl,byte ptr [esi+8E]
 0055F71A    mov         edi,edx
 0055F71C    and         edi,7F
 0055F71F    lea         edi,[edi*8+6E3800]
 0055F726    mov         edi,dword ptr [edi+ecx*4]
 0055F729    test        dl,dl
>0055F72B    jne         0055F7C8
 0055F731    sub         dword ptr [ebp-8],eax
>0055F734    jmp         0055F7C8
 0055F739    cmp         byte ptr [esi+8E],0
>0055F740    je          0055F756
 0055F742    xor         edx,edx
 0055F744    mov         dl,byte ptr [esi+8F]
 0055F74A    mov         edi,dword ptr [edx*4+6E3800]
 0055F751    sub         dword ptr [ebp-4],eax
>0055F754    jmp         0055F7C8
 0055F756    mov         al,byte ptr [esi+8F]
 0055F75C    xor         al,1
 0055F75E    and         eax,7F
 0055F761    mov         edi,dword ptr [eax*4+6E3808]
>0055F768    jmp         0055F7C8
 0055F76A    mov         cl,byte ptr [esi+8F]
 0055F770    xor         cl,1
 0055F773    and         ecx,7F
 0055F776    mov         dl,byte ptr [esi+8E]
 0055F77C    mov         edi,edx
 0055F77E    and         edi,7F
 0055F781    lea         edi,[edi*8+6E3800]
 0055F788    mov         edi,dword ptr [edi+ecx*4]
 0055F78B    test        dl,dl
>0055F78D    jne         0055F7C8
 0055F78F    add         dword ptr [ebp-8],eax
>0055F792    jmp         0055F7C8
 0055F794    cmp         byte ptr [esi+8E],0
>0055F79B    je          0055F7B5
 0055F79D    mov         dl,byte ptr [esi+8F]
 0055F7A3    xor         dl,1
 0055F7A6    and         edx,7F
 0055F7A9    mov         edi,dword ptr [edx*4+6E3800]
 0055F7B0    add         dword ptr [ebp-4],eax
>0055F7B3    jmp         0055F7C8
 0055F7B5    xor         eax,eax
 0055F7B7    mov         al,byte ptr [esi+8F]
 0055F7BD    mov         edi,dword ptr [eax*4+6E3808]
>0055F7C4    jmp         0055F7C8
 0055F7C6    xor         edi,edi
 0055F7C8    mov         eax,dword ptr [esi+90]
 0055F7CE    mov         edx,dword ptr [eax+280]
 0055F7D4    mov         dword ptr [ebp-1C],edx
 0055F7D7    cmp         byte ptr [esi+8F],0
>0055F7DE    je          0055F7EB
 0055F7E0    mov         eax,dword ptr [eax+278]
 0055F7E6    mov         dword ptr [ebp-10],eax
>0055F7E9    jmp         0055F7F0
 0055F7EB    xor         eax,eax
 0055F7ED    mov         dword ptr [ebp-10],eax
 0055F7F0    mov         edx,edi
 0055F7F2    mov         eax,dword ptr [ebp-1C]
 0055F7F5    mov         ecx,dword ptr [eax]
 0055F7F7    call        dword ptr [ecx+28]
 0055F7FA    mov         eax,dword ptr [ebp+8]
 0055F7FD    call        TeeNumTextLines
 0055F802    mov         edi,eax
 0055F804    mov         eax,dword ptr [ebp-1C]
 0055F807    call        TTeeCanvas.FontHeight
 0055F80C    mov         dword ptr [ebp-0C],eax
 0055F80F    cmp         ebx,0B4
>0055F815    je          0055F81F
 0055F817    cmp         ebx,10E
>0055F81D    jne         0055F822
 0055F81F    neg         dword ptr [ebp-0C]
 0055F822    mov         eax,dword ptr [ebp-0C]
 0055F825    imul        edi
 0055F827    mov         dword ptr [ebp-24],eax
 0055F82A    fild        dword ptr [ebp-24]
 0055F82D    call        @ROUND
 0055F832    cmp         byte ptr [esi+8E],0
>0055F839    je          0055F8AE
 0055F83B    test        ebx,ebx
>0055F83D    jne         0055F85B
 0055F83F    cmp         byte ptr [esi+8F],0
>0055F846    je          0055F850
 0055F848    sub         dword ptr [ebp-8],eax
>0055F84B    jmp         0055F913
 0055F850    mov         eax,dword ptr [ebp-0C]
 0055F853    sub         dword ptr [ebp-8],eax
>0055F856    jmp         0055F913
 0055F85B    cmp         ebx,0B4
>0055F861    jne         0055F87F
 0055F863    cmp         byte ptr [esi+8F],0
>0055F86A    je          0055F877
 0055F86C    mov         eax,dword ptr [ebp-0C]
 0055F86F    sub         dword ptr [ebp-8],eax
>0055F872    jmp         0055F913
 0055F877    sub         dword ptr [ebp-8],eax
>0055F87A    jmp         0055F913
 0055F87F    cmp         ebx,5A
>0055F882    je          0055F890
 0055F884    cmp         ebx,10E
>0055F88A    jne         0055F913
 0055F890    fild        dword ptr [ebp-0C]
 0055F893    fmul        dword ptr ds:[55FA24]
 0055F899    lea         eax,[edi+1]
 0055F89C    mov         dword ptr [ebp-24],eax
 0055F89F    fild        dword ptr [ebp-24]
 0055F8A2    fmulp       st(1),st
 0055F8A4    call        @ROUND
 0055F8A9    sub         dword ptr [ebp-4],eax
>0055F8AC    jmp         0055F913
 0055F8AE    test        ebx,ebx
>0055F8B0    je          0055F8BA
 0055F8B2    cmp         ebx,0B4
>0055F8B8    jne         0055F8D8
 0055F8BA    fild        dword ptr [ebp-0C]
 0055F8BD    fmul        dword ptr ds:[55FA24]
 0055F8C3    lea         eax,[edi+1]
 0055F8C6    mov         dword ptr [ebp-24],eax
 0055F8C9    fild        dword ptr [ebp-24]
 0055F8CC    fmulp       st(1),st
 0055F8CE    call        @ROUND
 0055F8D3    sub         dword ptr [ebp-8],eax
>0055F8D6    jmp         0055F913
 0055F8D8    cmp         byte ptr [esi+8F],0
>0055F8DF    je          0055F8FB
 0055F8E1    cmp         ebx,5A
>0055F8E4    jne         0055F8EE
 0055F8E6    mov         eax,dword ptr [ebp-0C]
 0055F8E9    sub         dword ptr [ebp-4],eax
>0055F8EC    jmp         0055F913
 0055F8EE    cmp         ebx,10E
>0055F8F4    jne         0055F913
 0055F8F6    sub         dword ptr [ebp-4],eax
>0055F8F9    jmp         0055F913
 0055F8FB    cmp         ebx,5A
>0055F8FE    jne         0055F905
 0055F900    sub         dword ptr [ebp-4],eax
>0055F903    jmp         0055F913
 0055F905    cmp         ebx,10E
>0055F90B    jne         0055F913
 0055F90D    mov         eax,dword ptr [ebp-0C]
 0055F910    sub         dword ptr [ebp-4],eax
 0055F913    lea         eax,[ebp-14]
 0055F916    mov         edx,dword ptr [ebp+8]
 0055F919    call        @LStrLAsg
 0055F91E    test        edi,edi
>0055F920    jle         0055F9E5
 0055F926    mov         dword ptr [ebp-20],edi
 0055F929    lea         eax,[ebp-28]
 0055F92C    mov         edx,dword ptr ds:[6E9CD0]
 0055F932    mov         dl,byte ptr [edx]
 0055F934    call        @LStrFromChar
 0055F939    mov         eax,dword ptr [ebp-28]
 0055F93C    mov         edx,dword ptr [ebp-14]
 0055F93F    call        AnsiPos
 0055F944    mov         esi,eax
 0055F946    test        esi,esi
>0055F948    jle         0055F960
 0055F94A    lea         eax,[ebp-18]
 0055F94D    push        eax
 0055F94E    mov         ecx,esi
 0055F950    dec         ecx
 0055F951    mov         edx,1
 0055F956    mov         eax,dword ptr [ebp-14]
 0055F959    call        @LStrCopy
>0055F95E    jmp         0055F96B
 0055F960    lea         eax,[ebp-18]
 0055F963    mov         edx,dword ptr [ebp-14]
 0055F966    call        @LStrLAsg
 0055F96B    test        ebx,ebx
>0055F96D    jne         0055F990
 0055F96F    mov         eax,dword ptr [ebp-0C]
 0055F972    add         dword ptr [ebp-8],eax
 0055F975    mov         eax,dword ptr [ebp-10]
 0055F978    push        eax
 0055F979    mov         eax,dword ptr [ebp-18]
 0055F97C    push        eax
 0055F97D    mov         ecx,dword ptr [ebp-8]
 0055F980    mov         edx,dword ptr [ebp-4]
 0055F983    mov         eax,dword ptr [ebp-1C]
 0055F986    mov         edi,dword ptr [eax]
 0055F988    call        dword ptr [edi+124]
>0055F98E    jmp         0055F9CD
 0055F990    cmp         ebx,0B4
>0055F996    jne         0055F9A0
 0055F998    mov         eax,dword ptr [ebp-0C]
 0055F99B    add         dword ptr [ebp-8],eax
>0055F99E    jmp         0055F9B3
 0055F9A0    cmp         ebx,5A
>0055F9A3    je          0055F9AD
 0055F9A5    cmp         ebx,10E
>0055F9AB    jne         0055F9B3
 0055F9AD    mov         eax,dword ptr [ebp-0C]
 0055F9B0    add         dword ptr [ebp-4],eax
 0055F9B3    mov         eax,dword ptr [ebp-10]
 0055F9B6    push        eax
 0055F9B7    mov         eax,dword ptr [ebp-18]
 0055F9BA    push        eax
 0055F9BB    push        ebx
 0055F9BC    mov         ecx,dword ptr [ebp-8]
 0055F9BF    mov         edx,dword ptr [ebp-4]
 0055F9C2    mov         eax,dword ptr [ebp-1C]
 0055F9C5    mov         edi,dword ptr [eax]
 0055F9C7    call        dword ptr [edi+118]
 0055F9CD    lea         eax,[ebp-14]
 0055F9D0    mov         ecx,esi
 0055F9D2    mov         edx,1
 0055F9D7    call        @LStrDelete
 0055F9DC    dec         dword ptr [ebp-20]
>0055F9DF    jne         0055F929
 0055F9E5    xor         edx,edx
 0055F9E7    mov         eax,dword ptr [ebp-1C]
 0055F9EA    mov         ecx,dword ptr [eax]
 0055F9EC    call        dword ptr [ecx+28]
 0055F9EF    xor         eax,eax
 0055F9F1    pop         edx
 0055F9F2    pop         ecx
 0055F9F3    pop         ecx
 0055F9F4    mov         dword ptr fs:[eax],edx
 0055F9F7    push        55FA19
 0055F9FC    lea         eax,[ebp-28]
 0055F9FF    call        @LStrClr
 0055FA04    lea         eax,[ebp-18]
 0055FA07    mov         edx,2
 0055FA0C    call        @LStrArrayClr
 0055FA11    ret
>0055FA12    jmp         @HandleFinally
>0055FA17    jmp         0055F9FC
 0055FA19    pop         edi
 0055FA1A    pop         esi
 0055FA1B    pop         ebx
 0055FA1C    mov         esp,ebp
 0055FA1E    pop         ebp
 0055FA1F    ret         8
*}
end;

//0055FA28
procedure TCustomChartAxis.Scroll(CheckLimits:Boolean; const Offset:Double);
begin
{*
 0055FA28    push        ebp
 0055FA29    mov         ebp,esp
 0055FA2B    push        ebx
 0055FA2C    push        esi
 0055FA2D    mov         ebx,edx
 0055FA2F    mov         esi,eax
 0055FA31    test        bl,bl
>0055FA33    je          0055FA8D
 0055FA35    fld         qword ptr [ebp+8]
 0055FA38    fcomp       dword ptr ds:[55FAC4]
 0055FA3E    fnstsw      al
 0055FA40    sahf
>0055FA41    jbe         0055FA61
 0055FA43    mov         al,byte ptr [esi+8E]
 0055FA49    push        eax
 0055FA4A    xor         ecx,ecx
 0055FA4C    mov         edx,esi
 0055FA4E    mov         eax,dword ptr [esi+90]
 0055FA54    call        TCustomAxisPanel.InternalMinMax
 0055FA59    fcomp       qword ptr [esi+10]
 0055FA5C    fnstsw      al
 0055FA5E    sahf
>0055FA5F    ja          0055FA8D
 0055FA61    fld         qword ptr [ebp+8]
 0055FA64    fcomp       dword ptr ds:[55FAC4]
 0055FA6A    fnstsw      al
 0055FA6C    sahf
>0055FA6D    jae         0055FABB
 0055FA6F    mov         al,byte ptr [esi+8E]
 0055FA75    push        eax
 0055FA76    mov         cl,1
 0055FA78    mov         edx,esi
 0055FA7A    mov         eax,dword ptr [esi+90]
 0055FA80    call        TCustomAxisPanel.InternalMinMax
 0055FA85    fcomp       qword ptr [esi+18]
 0055FA88    fnstsw      al
 0055FA8A    sahf
>0055FA8B    jae         0055FABB
 0055FA8D    mov         byte ptr [esi+4],0
 0055FA91    mov         byte ptr [esi+5],0
 0055FA95    fld         qword ptr [esi+10]
 0055FA98    fadd        qword ptr [ebp+8]
 0055FA9B    fstp        qword ptr [esi+10]
 0055FA9E    wait
 0055FA9F    mov         byte ptr [esi+6],0
 0055FAA3    fld         qword ptr [esi+18]
 0055FAA6    fadd        qword ptr [ebp+8]
 0055FAA9    fstp        qword ptr [esi+18]
 0055FAAC    wait
 0055FAAD    mov         eax,dword ptr [esi+90]
 0055FAB3    mov         edx,dword ptr [eax]
 0055FAB5    call        dword ptr [edx+80]
 0055FABB    pop         esi
 0055FABC    pop         ebx
 0055FABD    pop         ebp
 0055FABE    ret         8
*}
end;

//0055FAC8
function TCustomChartAxis.InternalCalcLog(var LogMax:Double; var LogMin:Double):Double;
begin
{*
 0055FAC8    push        ebx
 0055FAC9    push        esi
 0055FACA    push        edi
 0055FACB    add         esp,0FFFFFFF8
 0055FACE    mov         edi,ecx
 0055FAD0    mov         esi,edx
 0055FAD2    mov         ebx,eax
 0055FAD4    fld         qword ptr [ebx+0B8]
 0055FADA    fcomp       dword ptr ds:[55FB38]
 0055FAE0    fnstsw      al
 0055FAE2    sahf
>0055FAE3    ja          0055FAEE
 0055FAE5    xor         eax,eax
 0055FAE7    mov         dword ptr [edi],eax
 0055FAE9    mov         dword ptr [edi+4],eax
>0055FAEC    jmp         0055FAFD
 0055FAEE    fld         qword ptr [ebx+0B8]
 0055FAF4    fldln2
 0055FAF6    fxch        st(1)
 0055FAF8    fyl2x
 0055FAFA    fstp        qword ptr [edi]
 0055FAFC    wait
 0055FAFD    fld         qword ptr [ebx+0B0]
 0055FB03    fcomp       dword ptr ds:[55FB38]
 0055FB09    fnstsw      al
 0055FB0B    sahf
>0055FB0C    ja          0055FB17
 0055FB0E    xor         eax,eax
 0055FB10    mov         dword ptr [esi],eax
 0055FB12    mov         dword ptr [esi+4],eax
>0055FB15    jmp         0055FB26
 0055FB17    fld         qword ptr [ebx+0B0]
 0055FB1D    fldln2
 0055FB1F    fxch        st(1)
 0055FB21    fyl2x
 0055FB23    fstp        qword ptr [esi]
 0055FB25    wait
 0055FB26    fld         qword ptr [esi]
 0055FB28    fsub        qword ptr [edi]
 0055FB2A    fstp        qword ptr [esp]
 0055FB2D    wait
 0055FB2E    fld         qword ptr [esp]
 0055FB31    pop         ecx
 0055FB32    pop         edx
 0055FB33    pop         edi
 0055FB34    pop         esi
 0055FB35    pop         ebx
 0055FB36    ret
*}
end;

//0055FB3C
function TCustomChartAxis.InternalCalcDepthPosValue(const Value:Double):Integer;
begin
{*
 0055FB3C    push        ebp
 0055FB3D    mov         ebp,esp
 0055FB3F    add         esp,0FFFFFFF8
 0055FB42    push        ebx
 0055FB43    push        esi
 0055FB44    mov         ebx,eax
 0055FB46    mov         esi,dword ptr [ebx+90]
 0055FB4C    fld         qword ptr [ebx+0C0]
 0055FB52    fcomp       dword ptr ds:[55FBB4]
 0055FB58    fnstsw      al
 0055FB5A    sahf
>0055FB5B    jne         0055FB6C
 0055FB5D    mov         eax,dword ptr [esi+278]
 0055FB63    sar         eax,1
>0055FB65    jns         0055FBAB
 0055FB67    adc         eax,0
>0055FB6A    jmp         0055FBAB
 0055FB6C    cmp         byte ptr [ebx+8D],0
>0055FB73    je          0055FB84
 0055FB75    fld         qword ptr [ebx+0B0]
 0055FB7B    fsub        qword ptr [ebp+8]
 0055FB7E    fstp        qword ptr [ebp-8]
 0055FB81    wait
>0055FB82    jmp         0055FB91
 0055FB84    fld         qword ptr [ebp+8]
 0055FB87    fsub        qword ptr [ebx+0B8]
 0055FB8D    fstp        qword ptr [ebp-8]
 0055FB90    wait
 0055FB91    fild        dword ptr [esi+278]
 0055FB97    fmul        dword ptr ds:[55FBB8]
 0055FB9D    fmul        qword ptr [ebp-8]
 0055FBA0    fdiv        qword ptr [ebx+0C0]
 0055FBA6    call        @ROUND
 0055FBAB    pop         esi
 0055FBAC    pop         ebx
 0055FBAD    pop         ecx
 0055FBAE    pop         ecx
 0055FBAF    pop         ebp
 0055FBB0    ret         8
*}
end;

//0055FBBC
function TCustomChartAxis.InternalCalcLogPosValue(IsX:Boolean; const Value:Double):Integer;
begin
{*
 0055FBBC    push        ebp
 0055FBBD    mov         ebp,esp
 0055FBBF    add         esp,0FFFFFFE0
 0055FBC2    push        ebx
 0055FBC3    push        esi
 0055FBC4    mov         ebx,edx
 0055FBC6    mov         esi,eax
 0055FBC8    lea         ecx,[ebp-20]
 0055FBCB    lea         edx,[ebp-18]
 0055FBCE    mov         eax,esi
 0055FBD0    call        TCustomChartAxis.InternalCalcLog
 0055FBD5    fstp        qword ptr [ebp-8]
 0055FBD8    wait
 0055FBD9    fld         qword ptr [ebp-8]
 0055FBDC    fcomp       dword ptr ds:[55FC84]
 0055FBE2    fnstsw      al
 0055FBE4    sahf
>0055FBE5    jne         0055FBF2
 0055FBE7    mov         eax,dword ptr [esi+0CC]
>0055FBED    jmp         0055FC7C
 0055FBF2    fld         qword ptr [ebp+8]
 0055FBF5    fcomp       dword ptr ds:[55FC84]
 0055FBFB    fnstsw      al
 0055FBFD    sahf
>0055FBFE    ja          0055FC2A
 0055FC00    test        bl,bl
>0055FC02    je          0055FC0D
 0055FC04    cmp         byte ptr [esi+8D],0
>0055FC0B    jne         0055FC1A
 0055FC0D    test        bl,bl
>0055FC0F    jne         0055FC22
 0055FC11    cmp         byte ptr [esi+8D],0
>0055FC18    jne         0055FC22
 0055FC1A    mov         eax,dword ptr [esi+0D8]
>0055FC20    jmp         0055FC7C
 0055FC22    mov         eax,dword ptr [esi+0D4]
>0055FC28    jmp         0055FC7C
 0055FC2A    cmp         byte ptr [esi+8D],0
>0055FC31    je          0055FC45
 0055FC33    fld         qword ptr [ebp+8]
 0055FC36    fldln2
 0055FC38    fxch        st(1)
 0055FC3A    fyl2x
 0055FC3C    fsubr       qword ptr [ebp-18]
 0055FC3F    fstp        qword ptr [ebp-10]
 0055FC42    wait
>0055FC43    jmp         0055FC55
 0055FC45    fld         qword ptr [ebp+8]
 0055FC48    fldln2
 0055FC4A    fxch        st(1)
 0055FC4C    fyl2x
 0055FC4E    fsub        qword ptr [ebp-20]
 0055FC51    fstp        qword ptr [ebp-10]
 0055FC54    wait
 0055FC55    fild        dword ptr [esi+0DC]
 0055FC5B    fmul        qword ptr [ebp-10]
 0055FC5E    fdiv        qword ptr [ebp-8]
 0055FC61    call        @ROUND
 0055FC66    test        bl,bl
>0055FC68    je          0055FC72
 0055FC6A    add         eax,dword ptr [esi+0D4]
>0055FC70    jmp         0055FC7C
 0055FC72    mov         edx,dword ptr [esi+0D8]
 0055FC78    sub         edx,eax
 0055FC7A    mov         eax,edx
 0055FC7C    pop         esi
 0055FC7D    pop         ebx
 0055FC7E    mov         esp,ebp
 0055FC80    pop         ebp
 0055FC81    ret         8
*}
end;

//0055FC88
function TCustomChartAxis.CalcPosValue(const Value:Double):Integer;
begin
{*
 0055FC88    push        ebp
 0055FC89    mov         ebp,esp
 0055FC8B    cmp         byte ptr [eax+8E],0
>0055FC92    je          0055FCA1
 0055FC94    push        dword ptr [ebp+0C]
 0055FC97    push        dword ptr [ebp+8]
 0055FC9A    call        TCustomChartAxis.CalcXPosValue
>0055FC9F    jmp         0055FCAC
 0055FCA1    push        dword ptr [ebp+0C]
 0055FCA4    push        dword ptr [ebp+8]
 0055FCA7    call        TCustomChartAxis.CalcYPosValue
 0055FCAC    pop         ebp
 0055FCAD    ret         8
*}
end;

//0055FCB0
function TCustomChartAxis.CalcXPosValue(const Value:Double):Integer;
begin
{*
 0055FCB0    push        ebp
 0055FCB1    mov         ebp,esp
 0055FCB3    cmp         byte ptr [eax+0E0],0
>0055FCBA    je          0055FCC9
 0055FCBC    push        dword ptr [ebp+0C]
 0055FCBF    push        dword ptr [ebp+8]
 0055FCC2    call        TCustomChartAxis.InternalCalcDepthPosValue
>0055FCC7    jmp         0055FCEF
 0055FCC9    cmp         byte ptr [eax+20],0
>0055FCCD    je          0055FCDE
 0055FCCF    push        dword ptr [ebp+0C]
 0055FCD2    push        dword ptr [ebp+8]
 0055FCD5    mov         dl,1
 0055FCD7    call        TCustomChartAxis.InternalCalcLogPosValue
>0055FCDC    jmp         0055FCEF
 0055FCDE    push        dword ptr [ebp+0C]
 0055FCE1    push        dword ptr [ebp+8]
 0055FCE4    mov         dl,byte ptr [eax+8D]
 0055FCEA    call        TCustomChartAxis.InternalCalcPosValue
 0055FCEF    pop         ebp
 0055FCF0    ret         8
*}
end;

//0055FCF4
function TCustomChartAxis.CalcYPosValue(const Value:Double):Integer;
begin
{*
 0055FCF4    push        ebp
 0055FCF5    mov         ebp,esp
 0055FCF7    cmp         byte ptr [eax+0E0],0
>0055FCFE    je          0055FD0D
 0055FD00    push        dword ptr [ebp+0C]
 0055FD03    push        dword ptr [ebp+8]
 0055FD06    call        TCustomChartAxis.InternalCalcDepthPosValue
>0055FD0B    jmp         0055FD36
 0055FD0D    cmp         byte ptr [eax+20],0
>0055FD11    je          0055FD22
 0055FD13    push        dword ptr [ebp+0C]
 0055FD16    push        dword ptr [ebp+8]
 0055FD19    xor         edx,edx
 0055FD1B    call        TCustomChartAxis.InternalCalcLogPosValue
>0055FD20    jmp         0055FD36
 0055FD22    push        dword ptr [ebp+0C]
 0055FD25    push        dword ptr [ebp+8]
 0055FD28    mov         dl,byte ptr [eax+8D]
 0055FD2E    xor         dl,1
 0055FD31    call        TCustomChartAxis.InternalCalcPosValue
 0055FD36    pop         ebp
 0055FD37    ret         8
*}
end;

//0055FD3C
function TCustomChartAxis.InternalCalcPosValue(FromEnd:Boolean; const Value:Double):Integer;
begin
{*
 0055FD3C    push        ebp
 0055FD3D    mov         ebp,esp
 0055FD3F    add         esp,0FFFFFFF8
 0055FD42    push        ebx
 0055FD43    push        esi
 0055FD44    mov         ebx,edx
 0055FD46    mov         esi,eax
 0055FD48    fld         qword ptr [esi+0C0]
 0055FD4E    fcomp       dword ptr ds:[55FDC4]
 0055FD54    fnstsw      al
 0055FD56    sahf
>0055FD57    jne         0055FD61
 0055FD59    mov         eax,dword ptr [esi+0CC]
>0055FD5F    jmp         0055FDBC
 0055FD61    fld         qword ptr [ebp+8]
 0055FD64    fsub        qword ptr [esi+0B8]
 0055FD6A    fild        dword ptr [esi+0DC]
 0055FD70    fmulp       st(1),st
 0055FD72    fdiv        qword ptr [esi+0C0]
 0055FD78    fstp        qword ptr [ebp-8]
 0055FD7B    wait
 0055FD7C    fld         qword ptr [ebp-8]
 0055FD7F    fabs
 0055FD81    fld         tbyte ptr ds:[55FDC8]
 0055FD87    fcompp
 0055FD89    fnstsw      al
 0055FD8B    sahf
>0055FD8C    ja          0055FD96
 0055FD8E    mov         eax,dword ptr [esi+0CC]
>0055FD94    jmp         0055FDBC
 0055FD96    test        bl,bl
>0055FD98    je          0055FDAE
 0055FD9A    fld         qword ptr [ebp-8]
 0055FD9D    call        @ROUND
 0055FDA2    push        eax
 0055FDA3    mov         eax,dword ptr [esi+0D8]
 0055FDA9    pop         edx
 0055FDAA    sub         eax,edx
>0055FDAC    jmp         0055FDBC
 0055FDAE    fld         qword ptr [ebp-8]
 0055FDB1    call        @ROUND
 0055FDB6    add         eax,dword ptr [esi+0D4]
 0055FDBC    pop         esi
 0055FDBD    pop         ebx
 0055FDBE    pop         ecx
 0055FDBF    pop         ecx
 0055FDC0    pop         ebp
 0055FDC1    ret         8
*}
end;

//0055FDD4
function TCustomChartAxis.Clicked(x:Integer; y:Integer):Boolean;
begin
{*
 0055FDD4    push        ebx
 0055FDD5    push        esi
 0055FDD6    push        edi
 0055FDD7    push        ebp
 0055FDD8    add         esp,0FFFFFFDC
 0055FDDB    mov         dword ptr [esp+4],ecx
 0055FDDF    mov         dword ptr [esp],edx
 0055FDE2    mov         ebx,eax
 0055FDE4    mov         edx,ebx
 0055FDE6    mov         eax,dword ptr [ebx+90]
 0055FDEC    call        TCustomAxisPanel.IsAxisVisible
 0055FDF1    test        al,al
>0055FDF3    je          0055FE94
 0055FDF9    mov         eax,dword ptr [ebx+0D8]
 0055FDFF    mov         edx,dword ptr [ebx+0D4]
 0055FE05    cmp         eax,edx
>0055FE07    jge         0055FE0F
 0055FE09    mov         esi,eax
 0055FE0B    mov         ebp,edx
>0055FE0D    jmp         0055FE13
 0055FE0F    mov         esi,edx
 0055FE11    mov         ebp,eax
 0055FE13    mov         eax,dword ptr [ebx+5C]
 0055FE16    mov         edx,dword ptr [ebx+2C]
 0055FE19    cmp         eax,edx
>0055FE1B    jge         0055FE2B
 0055FE1D    mov         edi,eax
 0055FE1F    add         edx,dword ptr ds:[6E37F8]
 0055FE25    mov         dword ptr [esp+8],edx
>0055FE29    jmp         0055FE37
 0055FE2B    mov         edi,edx
 0055FE2D    sub         edi,dword ptr ds:[6E37F8]
 0055FE33    mov         dword ptr [esp+8],eax
 0055FE37    cmp         byte ptr [ebx+8E],0
>0055FE3E    je          0055FE57
 0055FE40    mov         eax,dword ptr [esp+8]
 0055FE44    push        eax
 0055FE45    lea         eax,[esp+10]
 0055FE49    push        eax
 0055FE4A    mov         ecx,ebp
 0055FE4C    mov         edx,edi
 0055FE4E    mov         eax,esi
 0055FE50    call        Rect
>0055FE55    jmp         0055FE6A
 0055FE57    push        ebp
 0055FE58    lea         eax,[esp+10]
 0055FE5C    push        eax
 0055FE5D    mov         ecx,dword ptr [esp+10]
 0055FE61    mov         edx,esi
 0055FE63    mov         eax,edi
 0055FE65    call        Rect
 0055FE6A    lea         ecx,[esp+1C]
 0055FE6E    mov         edx,dword ptr [esp+4]
 0055FE72    mov         eax,dword ptr [esp]
 0055FE75    call        Point
 0055FE7A    push        dword ptr [esp+20]
 0055FE7E    push        dword ptr [esp+20]
 0055FE82    lea         eax,[esp+14]
 0055FE86    push        eax
 0055FE87    call        USER32.PtInRect
 0055FE8C    cmp         eax,1
 0055FE8F    sbb         eax,eax
 0055FE91    inc         eax
>0055FE92    jmp         0055FE96
 0055FE94    xor         eax,eax
 0055FE96    add         esp,24
 0055FE99    pop         ebp
 0055FE9A    pop         edi
 0055FE9B    pop         esi
 0055FE9C    pop         ebx
 0055FE9D    ret
*}
end;

//0055FEA0
procedure TCustomChartAxis.RecalcSizeCenter;
begin
{*
 0055FEA0    mov         edx,dword ptr [eax+0D8]
 0055FEA6    sub         edx,dword ptr [eax+0D4]
 0055FEAC    mov         dword ptr [eax+0DC],edx
 0055FEB2    mov         edx,dword ptr [eax+0D4]
 0055FEB8    add         edx,dword ptr [eax+0D8]
 0055FEBE    sar         edx,1
>0055FEC0    jns         0055FEC5
 0055FEC2    adc         edx,0
 0055FEC5    mov         dword ptr [eax+0CC],edx
 0055FECB    ret
*}
end;

//0055FECC
procedure DoCalculation(AStartPos:Integer; ASize:Integer);
begin
{*
 0055FECC    push        ebp
 0055FECD    mov         ebp,esp
 0055FECF    push        ecx
 0055FED0    push        ebx
 0055FED1    push        esi
 0055FED2    mov         esi,edx
 0055FED4    mov         ebx,eax
 0055FED6    mov         dword ptr [ebp-4],esi
 0055FED9    fild        dword ptr [ebp-4]
 0055FEDC    fld         tbyte ptr ds:[55FF38]
 0055FEE2    fmulp       st(1),st
 0055FEE4    mov         eax,dword ptr [ebp+8]
 0055FEE7    mov         eax,dword ptr [eax-4]
 0055FEEA    fmul        qword ptr [eax+98]
 0055FEF0    call        @ROUND
 0055FEF5    add         eax,ebx
 0055FEF7    mov         edx,dword ptr [ebp+8]
 0055FEFA    mov         edx,dword ptr [edx-4]
 0055FEFD    mov         dword ptr [edx+0D4],eax
 0055FF03    mov         dword ptr [ebp-4],esi
 0055FF06    fild        dword ptr [ebp-4]
 0055FF09    fld         tbyte ptr ds:[55FF38]
 0055FF0F    fmulp       st(1),st
 0055FF11    mov         eax,dword ptr [ebp+8]
 0055FF14    mov         eax,dword ptr [eax-4]
 0055FF17    fmul        qword ptr [eax+0A0]
 0055FF1D    call        @ROUND
 0055FF22    add         ebx,eax
 0055FF24    mov         eax,dword ptr [ebp+8]
 0055FF27    mov         eax,dword ptr [eax-4]
 0055FF2A    mov         dword ptr [eax+0D8],ebx
 0055FF30    pop         esi
 0055FF31    pop         ebx
 0055FF32    pop         ecx
 0055FF33    pop         ebp
 0055FF34    ret
*}
end;

//0055FF44
procedure TCustomChartAxis.InternalCalcPositions;
begin
{*
 0055FF44    push        ebp
 0055FF45    mov         ebp,esp
 0055FF47    push        ecx
 0055FF48    mov         dword ptr [ebp-4],eax
 0055FF4B    mov         eax,dword ptr [ebp-4]
 0055FF4E    mov         eax,dword ptr [eax+90]
 0055FF54    mov         edx,dword ptr [ebp-4]
 0055FF57    cmp         byte ptr [edx+8E],0
>0055FF5E    je          0055FF75
 0055FF60    push        ebp
 0055FF61    mov         edx,dword ptr [eax+238]
 0055FF67    mov         eax,dword ptr [eax+286]
 0055FF6D    call        DoCalculation
 0055FF72    pop         ecx
>0055FF73    jmp         0055FF88
 0055FF75    push        ebp
 0055FF76    mov         edx,dword ptr [eax+23C]
 0055FF7C    mov         eax,dword ptr [eax+28A]
 0055FF82    call        DoCalculation
 0055FF87    pop         ecx
 0055FF88    mov         eax,dword ptr [ebp-4]
 0055FF8B    call        TCustomChartAxis.RecalcSizeCenter
 0055FF90    pop         ecx
 0055FF91    pop         ebp
 0055FF92    ret
*}
end;

//0055FF94
function TCustomChartAxis.ApplyPosition(APos:Integer; const R:TRect):Integer;
begin
{*
 0055FF94    push        ebx
 0055FF95    push        esi
 0055FF96    push        edi
 0055FF97    push        ebp
 0055FF98    push        ecx
 0055FF99    mov         edi,edx
 0055FF9B    mov         ebp,eax
 0055FF9D    mov         edx,edi
 0055FF9F    fld         qword ptr [ebp+0A8]
 0055FFA5    fcomp       dword ptr ds:[560000]
 0055FFAB    fnstsw      al
 0055FFAD    sahf
>0055FFAE    je          0055FFF6
 0055FFB0    mov         bl,byte ptr [ebp+8E]
 0055FFB6    test        bl,bl
>0055FFB8    je          0055FFC2
 0055FFBA    mov         esi,dword ptr [ecx+0C]
 0055FFBD    sub         esi,dword ptr [ecx+4]
>0055FFC0    jmp         0055FFC7
 0055FFC2    mov         esi,dword ptr [ecx+8]
 0055FFC5    sub         esi,dword ptr [ecx]
 0055FFC7    fld         tbyte ptr ds:[560004]
 0055FFCD    fmul        qword ptr [ebp+0A8]
 0055FFD3    mov         dword ptr [esp],esi
 0055FFD6    fild        dword ptr [esp]
 0055FFD9    fmulp       st(1),st
 0055FFDB    call        @ROUND
 0055FFE0    mov         esi,eax
 0055FFE2    cmp         byte ptr [ebp+8F],0
>0055FFE9    je          0055FFED
 0055FFEB    neg         esi
 0055FFED    test        bl,bl
>0055FFEF    je          0055FFF3
 0055FFF1    neg         esi
 0055FFF3    lea         edx,[esi+edi]
 0055FFF6    mov         eax,edx
 0055FFF8    pop         edx
 0055FFF9    pop         ebp
 0055FFFA    pop         edi
 0055FFFB    pop         esi
 0055FFFC    pop         ebx
 0055FFFD    ret
*}
end;

//00560010
function TCustomChartAxis.GetRectangleEdge(const R:TRect):Integer;
begin
{*
 00560010    cmp         byte ptr [eax+8F],0
>00560017    je          0056002B
 00560019    cmp         byte ptr [eax+8E],0
>00560020    je          00560027
 00560022    mov         eax,dword ptr [edx+4]
>00560025    jmp         0056003B
 00560027    mov         eax,dword ptr [edx+8]
 0056002A    ret
 0056002B    cmp         byte ptr [eax+8E],0
>00560032    je          00560039
 00560034    mov         eax,dword ptr [edx+0C]
>00560037    jmp         0056003B
 00560039    mov         eax,dword ptr [edx]
 0056003B    ret
*}
end;

//00560064
procedure DrawGridLine(tmp:Integer);
begin
{*
 00560064    push        ebp
 00560065    mov         ebp,esp
 00560067    add         esp,0FFFFFFF8
 0056006A    push        ebx
 0056006B    push        esi
 0056006C    push        edi
 0056006D    mov         dword ptr [ebp-4],eax
 00560070    mov         eax,dword ptr [ebp+8]
 00560073    mov         eax,dword ptr [eax+8]
 00560076    mov         eax,dword ptr [eax-4]
 00560079    mov         esi,dword ptr [eax+90]
 0056007F    mov         eax,dword ptr [esi+280]
 00560085    mov         dword ptr [ebp-8],eax
 00560088    lea         ebx,[esi+286]
 0056008E    mov         eax,dword ptr [ebp+8]
 00560091    mov         eax,dword ptr [eax+8]
 00560094    mov         eax,dword ptr [eax-4]
 00560097    cmp         byte ptr [eax+0E0],0
>0056009E    je          005600D5
 005600A0    mov         eax,dword ptr [ebx+0C]
 005600A3    push        eax
 005600A4    mov         eax,dword ptr [ebp-4]
 005600A7    push        eax
 005600A8    mov         ecx,dword ptr [ebx+4]
 005600AB    mov         edx,dword ptr [ebx]
 005600AD    mov         eax,dword ptr [ebp-8]
 005600B0    mov         esi,dword ptr [eax]
 005600B2    call        dword ptr [esi+0D4]
 005600B8    mov         eax,dword ptr [ebx+0C]
 005600BB    push        eax
 005600BC    mov         eax,dword ptr [ebp-4]
 005600BF    push        eax
 005600C0    mov         ecx,dword ptr [ebx+8]
 005600C3    mov         edx,dword ptr [ebx]
 005600C5    mov         eax,dword ptr [ebp-8]
 005600C8    mov         ebx,dword ptr [eax]
 005600CA    call        dword ptr [ebx+0D0]
>005600D0    jmp         00560259
 005600D5    mov         eax,dword ptr [ebp+8]
 005600D8    mov         eax,dword ptr [eax+8]
 005600DB    mov         eax,dword ptr [eax-4]
 005600DE    cmp         byte ptr [eax+8E],0
>005600E5    je          005601AB
 005600EB    cmp         byte ptr [esi+270],0
>005600F2    je          00560194
 005600F8    mov         eax,dword ptr [ebp+8]
 005600FB    mov         eax,dword ptr [eax+8]
 005600FE    mov         eax,dword ptr [eax-4]
 00560101    cmp         byte ptr [eax+8F],0
>00560108    je          0056012B
 0056010A    mov         eax,dword ptr [ebx+0C]
 0056010D    push        eax
 0056010E    mov         eax,dword ptr [esi+278]
 00560114    push        eax
 00560115    mov         ecx,dword ptr [ebx+4]
 00560118    mov         edx,dword ptr [ebp-4]
 0056011B    mov         eax,dword ptr [ebp-8]
 0056011E    mov         ebx,dword ptr [eax]
 00560120    call        dword ptr [ebx+0D4]
>00560126    jmp         00560259
 0056012B    cmp         byte ptr ds:[6E37F0],0
>00560132    je          00560178
 00560134    push        0
 00560136    mov         eax,dword ptr [esi+278]
 0056013C    push        eax
 0056013D    mov         eax,dword ptr [ebp+8]
 00560140    mov         eax,dword ptr [eax+8]
 00560143    mov         eax,dword ptr [eax-4]
 00560146    mov         ecx,dword ptr [eax+2C]
 00560149    mov         edx,dword ptr [ebp-4]
 0056014C    mov         eax,dword ptr [ebp-8]
 0056014F    mov         edi,dword ptr [eax]
 00560151    call        dword ptr [edi+0D8]
 00560157    mov         eax,dword ptr [ebx+0C]
 0056015A    push        eax
 0056015B    mov         eax,dword ptr [esi+278]
 00560161    push        eax
 00560162    mov         ecx,dword ptr [ebx+4]
 00560165    mov         edx,dword ptr [ebp-4]
 00560168    mov         eax,dword ptr [ebp-8]
 0056016B    mov         ebx,dword ptr [eax]
 0056016D    call        dword ptr [ebx+0D4]
>00560173    jmp         00560259
 00560178    mov         eax,dword ptr [ebx+0C]
 0056017B    push        eax
 0056017C    push        0
 0056017E    mov         ecx,dword ptr [ebx+4]
 00560181    mov         edx,dword ptr [ebp-4]
 00560184    mov         eax,dword ptr [ebp-8]
 00560187    mov         ebx,dword ptr [eax]
 00560189    call        dword ptr [ebx+0D4]
>0056018F    jmp         00560259
 00560194    mov         eax,dword ptr [ebx+0C]
 00560197    push        eax
 00560198    mov         ecx,dword ptr [ebx+4]
 0056019B    mov         edx,dword ptr [ebp-4]
 0056019E    mov         eax,dword ptr [ebp-8]
 005601A1    mov         ebx,dword ptr [eax]
 005601A3    call        dword ptr [ebx+74]
>005601A6    jmp         00560259
 005601AB    cmp         byte ptr [esi+270],0
>005601B2    je          00560248
 005601B8    mov         eax,dword ptr [ebp+8]
 005601BB    mov         eax,dword ptr [eax+8]
 005601BE    mov         eax,dword ptr [eax-4]
 005601C1    cmp         byte ptr [eax+8F],0
>005601C8    je          005601E7
 005601CA    mov         eax,dword ptr [ebp-4]
 005601CD    push        eax
 005601CE    mov         eax,dword ptr [esi+278]
 005601D4    push        eax
 005601D5    mov         ecx,dword ptr [ebx+8]
 005601D8    mov         edx,dword ptr [ebx]
 005601DA    mov         eax,dword ptr [ebp-8]
 005601DD    mov         ebx,dword ptr [eax]
 005601DF    call        dword ptr [ebx+0D0]
>005601E5    jmp         00560259
 005601E7    cmp         byte ptr ds:[6E37F0],0
>005601EE    je          00560230
 005601F0    push        0
 005601F2    mov         eax,dword ptr [esi+278]
 005601F8    push        eax
 005601F9    mov         eax,dword ptr [ebp+8]
 005601FC    mov         eax,dword ptr [eax+8]
 005601FF    mov         eax,dword ptr [eax-4]
 00560202    mov         edx,dword ptr [eax+2C]
 00560205    mov         ecx,dword ptr [ebp-4]
 00560208    mov         eax,dword ptr [ebp-8]
 0056020B    mov         edi,dword ptr [eax]
 0056020D    call        dword ptr [edi+0D8]
 00560213    mov         eax,dword ptr [ebp-4]
 00560216    push        eax
 00560217    mov         eax,dword ptr [esi+278]
 0056021D    push        eax
 0056021E    mov         ecx,dword ptr [ebx+8]
 00560221    mov         edx,dword ptr [ebx]
 00560223    mov         eax,dword ptr [ebp-8]
 00560226    mov         ebx,dword ptr [eax]
 00560228    call        dword ptr [ebx+0D0]
>0056022E    jmp         00560259
 00560230    mov         eax,dword ptr [ebp-4]
 00560233    push        eax
 00560234    push        0
 00560236    mov         ecx,dword ptr [ebx+8]
 00560239    mov         edx,dword ptr [ebx]
 0056023B    mov         eax,dword ptr [ebp-8]
 0056023E    mov         ebx,dword ptr [eax]
 00560240    call        dword ptr [ebx+0D0]
>00560246    jmp         00560259
 00560248    mov         eax,dword ptr [ebp-4]
 0056024B    push        eax
 0056024C    mov         ecx,dword ptr [ebx+8]
 0056024F    mov         edx,dword ptr [ebx]
 00560251    mov         eax,dword ptr [ebp-8]
 00560254    mov         ebx,dword ptr [eax]
 00560256    call        dword ptr [ebx+6C]
 00560259    pop         edi
 0056025A    pop         esi
 0056025B    pop         ebx
 0056025C    pop         ecx
 0056025D    pop         ecx
 0056025E    pop         ebp
 0056025F    ret
*}
end;

//00560260
procedure DrawGrids;
begin
{*
 00560260    push        ebp
 00560261    mov         ebp,esp
 00560263    push        ecx
 00560264    push        ebx
 00560265    push        esi
 00560266    push        edi
 00560267    mov         edi,dword ptr [ebp+8]
 0056026A    mov         edi,dword ptr [edi+8]
 0056026D    add         edi,0FFFFFFFC
 00560270    mov         eax,dword ptr [edi]
 00560272    mov         esi,dword ptr [eax+90]
 00560278    mov         ebx,dword ptr [esi+280]
 0056027E    mov         eax,dword ptr [ebx+10]
 00560281    mov         dl,1
 00560283    call        TBrush.SetStyle
 00560288    mov         dl,1
 0056028A    mov         eax,ebx
 0056028C    mov         ecx,dword ptr [eax]
 0056028E    call        dword ptr [ecx+1C]
 00560291    mov         eax,dword ptr [edi]
 00560293    mov         edx,dword ptr [eax+3C]
 00560296    mov         eax,ebx
 00560298    call        TTeeCanvas.AssignVisiblePen
 0056029D    mov         edx,dword ptr [ebx+0C]
 005602A0    mov         eax,esi
 005602A2    call        TCustomTeePanel.CheckPenWidth
 005602A7    mov         eax,dword ptr [ebx+0C]
 005602AA    call        TPen.GetColor
 005602AF    cmp         eax,20000000
>005602B4    jne         005602C3
 005602B6    mov         eax,dword ptr [ebx+0C]
 005602B9    mov         edx,808080
 005602BE    call        TPen.SetColor
 005602C3    mov         eax,dword ptr [ebp+8]
 005602C6    mov         eax,dword ptr [eax+8]
 005602C9    mov         esi,dword ptr [eax-8]
 005602CC    dec         esi
 005602CD    test        esi,esi
>005602CF    jl          00560330
 005602D1    inc         esi
 005602D2    xor         ebx,ebx
 005602D4    mov         eax,dword ptr [edi]
 005602D6    cmp         byte ptr [eax+40],0
>005602DA    je          00560316
 005602DC    test        ebx,ebx
>005602DE    jle         0056032C
 005602E0    mov         eax,dword ptr [ebp+8]
 005602E3    push        eax
 005602E4    mov         eax,dword ptr [ebp+8]
 005602E7    mov         eax,dword ptr [eax+8]
 005602EA    mov         eax,dword ptr [eax-0C]
 005602ED    mov         eax,dword ptr [eax+ebx*4]
 005602F0    mov         edx,dword ptr [ebp+8]
 005602F3    mov         edx,dword ptr [edx+8]
 005602F6    mov         edx,dword ptr [edx-0C]
 005602F9    add         eax,dword ptr [edx+ebx*4-4]
 005602FD    mov         dword ptr [ebp-4],eax
 00560300    fild        dword ptr [ebp-4]
 00560303    fmul        dword ptr ds:[56034C]
 00560309    call        @ROUND
 0056030E    call        DrawGridLine
 00560313    pop         ecx
>00560314    jmp         0056032C
 00560316    mov         eax,dword ptr [ebp+8]
 00560319    push        eax
 0056031A    mov         eax,dword ptr [ebp+8]
 0056031D    mov         eax,dword ptr [eax+8]
 00560320    mov         eax,dword ptr [eax-0C]
 00560323    mov         eax,dword ptr [eax+ebx*4]
 00560326    call        DrawGridLine
 0056032B    pop         ecx
 0056032C    inc         ebx
 0056032D    dec         esi
>0056032E    jne         005602D4
 00560330    mov         eax,dword ptr [edi]
 00560332    mov         eax,dword ptr [eax+90]
 00560338    mov         eax,dword ptr [eax+280]
 0056033E    mov         dl,2
 00560340    mov         ecx,dword ptr [eax]
 00560342    call        dword ptr [ecx+1C]
 00560345    pop         edi
 00560346    pop         esi
 00560347    pop         ebx
 00560348    pop         ecx
 00560349    pop         ebp
 0056034A    ret
*}
end;

//00560350
procedure InternalDrawTick(tmp:Integer; Delta:Integer; tmpTickLength:Integer);
begin
{*
 00560350    push        ebp
 00560351    mov         ebp,esp
 00560353    push        ecx
 00560354    push        ebx
 00560355    push        esi
 00560356    push        edi
 00560357    mov         dword ptr [ebp-4],ecx
 0056035A    mov         ecx,dword ptr [ebp+8]
 0056035D    mov         ecx,dword ptr [ecx+8]
 00560360    mov         ecx,dword ptr [ecx-4]
 00560363    mov         esi,dword ptr [ecx+90]
 00560369    mov         edi,dword ptr [esi+280]
 0056036F    mov         ecx,dword ptr [ebp+8]
 00560372    mov         ecx,dword ptr [ecx+8]
 00560375    mov         ecx,dword ptr [ecx-4]
 00560378    cmp         byte ptr [ecx+0E0],0
>0056037F    je          005603B5
 00560381    mov         ecx,dword ptr [esi+292]
 00560387    push        ecx
 00560388    push        eax
 00560389    mov         eax,dword ptr [ebp+8]
 0056038C    mov         eax,dword ptr [eax+8]
 0056038F    mov         eax,dword ptr [eax-4]
 00560392    mov         ecx,dword ptr [eax+2C]
 00560395    add         ecx,edx
 00560397    add         ecx,dword ptr [ebp-4]
 0056039A    mov         eax,dword ptr [ebp+8]
 0056039D    mov         eax,dword ptr [eax+8]
 005603A0    mov         eax,dword ptr [eax-4]
 005603A3    add         edx,dword ptr [eax+2C]
 005603A6    mov         eax,edi
 005603A8    mov         ebx,dword ptr [eax]
 005603AA    call        dword ptr [ebx+0D0]
>005603B0    jmp         005604AC
 005603B5    mov         ecx,dword ptr [ebp+8]
 005603B8    mov         ecx,dword ptr [ecx+8]
 005603BB    mov         ecx,dword ptr [ecx-4]
 005603BE    cmp         byte ptr [ecx+8F],0
>005603C5    je          00560441
 005603C7    mov         ecx,dword ptr [ebp+8]
 005603CA    mov         ecx,dword ptr [ecx+8]
 005603CD    mov         ecx,dword ptr [ecx-4]
 005603D0    cmp         byte ptr [ecx+8E],0
>005603D7    je          00560410
 005603D9    mov         ecx,dword ptr [ebp+8]
 005603DC    mov         ecx,dword ptr [ecx+8]
 005603DF    mov         ecx,dword ptr [ecx-4]
 005603E2    mov         ecx,dword ptr [ecx+2C]
 005603E5    sub         ecx,edx
 005603E7    sub         ecx,dword ptr [ebp-4]
 005603EA    push        ecx
 005603EB    mov         ecx,dword ptr [esi+278]
 005603F1    push        ecx
 005603F2    mov         ecx,dword ptr [ebp+8]
 005603F5    mov         ecx,dword ptr [ecx+8]
 005603F8    mov         ecx,dword ptr [ecx-4]
 005603FB    mov         ecx,dword ptr [ecx+2C]
 005603FE    sub         ecx,edx
 00560400    mov         edx,edi
 00560402    xchg        eax,edx
 00560403    mov         ebx,dword ptr [eax]
 00560405    call        dword ptr [ebx+0D4]
>0056040B    jmp         005604AC
 00560410    push        eax
 00560411    mov         eax,dword ptr [esi+278]
 00560417    push        eax
 00560418    mov         eax,dword ptr [ebp+8]
 0056041B    mov         eax,dword ptr [eax+8]
 0056041E    mov         eax,dword ptr [eax-4]
 00560421    mov         ecx,dword ptr [eax+2C]
 00560424    add         ecx,edx
 00560426    add         ecx,dword ptr [ebp-4]
 00560429    mov         eax,dword ptr [ebp+8]
 0056042C    mov         eax,dword ptr [eax+8]
 0056042F    mov         eax,dword ptr [eax-4]
 00560432    add         edx,dword ptr [eax+2C]
 00560435    mov         eax,edi
 00560437    mov         ebx,dword ptr [eax]
 00560439    call        dword ptr [ebx+0D0]
>0056043F    jmp         005604AC
 00560441    mov         ecx,dword ptr [ebp+8]
 00560444    add         edx,dword ptr [ecx-4]
 00560447    mov         ecx,dword ptr [ebp+8]
 0056044A    mov         ecx,dword ptr [ecx+8]
 0056044D    mov         ecx,dword ptr [ecx-4]
 00560450    cmp         byte ptr [ecx+8E],0
>00560457    je          00560484
 00560459    mov         ecx,dword ptr [ebp+8]
 0056045C    mov         ecx,dword ptr [ecx+8]
 0056045F    mov         ecx,dword ptr [ecx-4]
 00560462    mov         esi,dword ptr [ecx+2C]
 00560465    add         esi,edx
 00560467    mov         ecx,esi
 00560469    add         ecx,dword ptr [ebp-4]
 0056046C    push        ecx
 0056046D    push        0
 0056046F    mov         ecx,dword ptr [ebp+8]
 00560472    mov         ecx,dword ptr [ecx+8]
 00560475    mov         ecx,esi
 00560477    mov         edx,edi
 00560479    xchg        eax,edx
 0056047A    mov         ebx,dword ptr [eax]
 0056047C    call        dword ptr [ebx+0D4]
>00560482    jmp         005604AC
 00560484    push        eax
 00560485    push        0
 00560487    mov         eax,dword ptr [ebp+8]
 0056048A    mov         eax,dword ptr [eax+8]
 0056048D    mov         eax,dword ptr [eax-4]
 00560490    mov         esi,dword ptr [eax+2C]
 00560493    sub         esi,edx
 00560495    mov         ecx,esi
 00560497    sub         ecx,dword ptr [ebp-4]
 0056049A    mov         eax,dword ptr [ebp+8]
 0056049D    mov         eax,dword ptr [eax+8]
 005604A0    mov         edx,esi
 005604A2    mov         eax,edi
 005604A4    mov         ebx,dword ptr [eax]
 005604A6    call        dword ptr [ebx+0D0]
 005604AC    pop         edi
 005604AD    pop         esi
 005604AE    pop         ebx
 005604AF    pop         ecx
 005604B0    pop         ebp
 005604B1    ret
*}
end;

//005604B4
procedure DrawAxisLine;
begin
{*
 005604B4    push        ebp
 005604B5    mov         ebp,esp
 005604B7    add         esp,0FFFFFFF8
 005604BA    push        ebx
 005604BB    push        esi
 005604BC    push        edi
 005604BD    mov         eax,dword ptr [ebp+8]
 005604C0    mov         eax,dword ptr [eax+8]
 005604C3    mov         eax,dword ptr [eax-4]
 005604C6    mov         ebx,dword ptr [eax+90]
 005604CC    mov         esi,dword ptr [ebx+280]
 005604D2    mov         eax,dword ptr [ebp+8]
 005604D5    mov         eax,dword ptr [eax+8]
 005604D8    mov         eax,dword ptr [eax-4]
 005604DB    cmp         byte ptr [eax+0E0],0
>005604E2    je          0056053A
 005604E4    lea         eax,[ebx+286]
 005604EA    mov         dword ptr [ebp-8],eax
 005604ED    mov         edx,dword ptr [ebx+2EC]
 005604F3    mov         eax,ebx
 005604F5    mov         ecx,dword ptr [eax]
 005604F7    call        dword ptr [ecx+0F4]
 005604FD    mov         edx,dword ptr [ebp-8]
 00560500    add         eax,dword ptr [edx+0C]
 00560503    mov         dword ptr [ebp-4],eax
 00560506    push        0
 00560508    mov         eax,dword ptr [ebp-8]
 0056050B    mov         edx,dword ptr [eax+8]
 0056050E    mov         ecx,dword ptr [ebp-4]
 00560511    mov         eax,esi
 00560513    mov         edi,dword ptr [eax]
 00560515    call        dword ptr [edi+0EC]
 0056051B    mov         eax,dword ptr [ebx+278]
 00560521    push        eax
 00560522    mov         eax,dword ptr [ebp-8]
 00560525    mov         edx,dword ptr [eax+8]
 00560528    mov         ecx,dword ptr [ebp-4]
 0056052B    mov         eax,esi
 0056052D    mov         ebx,dword ptr [eax]
 0056052F    call        dword ptr [ebx+0F0]
>00560535    jmp         00560694
 0056053A    mov         eax,dword ptr [ebp+8]
 0056053D    mov         eax,dword ptr [eax+8]
 00560540    mov         eax,dword ptr [eax-4]
 00560543    cmp         byte ptr [eax+8E],0
>0056054A    je          005605F7
 00560550    mov         eax,dword ptr [ebp+8]
 00560553    mov         eax,dword ptr [eax+8]
 00560556    mov         eax,dword ptr [eax-4]
 00560559    cmp         byte ptr [eax+8F],0
>00560560    je          005605A3
 00560562    mov         eax,dword ptr [ebp+8]
 00560565    mov         eax,dword ptr [eax+8]
 00560568    mov         eax,dword ptr [eax-4]
 0056056B    mov         eax,dword ptr [eax+2C]
 0056056E    push        eax
 0056056F    mov         eax,dword ptr [ebx+278]
 00560575    push        eax
 00560576    mov         eax,dword ptr [ebp+8]
 00560579    mov         eax,dword ptr [eax+8]
 0056057C    mov         eax,dword ptr [eax-4]
 0056057F    mov         ecx,dword ptr [eax+0D8]
 00560585    mov         eax,dword ptr [ebp+8]
 00560588    mov         eax,dword ptr [eax+8]
 0056058B    mov         eax,dword ptr [eax-4]
 0056058E    mov         edx,dword ptr [eax+0D4]
 00560594    mov         eax,esi
 00560596    mov         ebx,dword ptr [eax]
 00560598    call        dword ptr [ebx+0D0]
>0056059E    jmp         00560694
 005605A3    mov         eax,dword ptr [ebp+8]
 005605A6    mov         eax,dword ptr [eax+8]
 005605A9    mov         eax,dword ptr [eax-4]
 005605AC    mov         eax,dword ptr [eax+2C]
 005605AF    mov         edx,dword ptr [ebp+8]
 005605B2    add         eax,dword ptr [edx-4]
 005605B5    push        eax
 005605B6    push        0
 005605B8    mov         edx,dword ptr [ebx+2F0]
 005605BE    mov         eax,ebx
 005605C0    mov         ecx,dword ptr [eax]
 005605C2    call        dword ptr [ecx+0F4]
 005605C8    mov         edx,dword ptr [ebp+8]
 005605CB    mov         edx,dword ptr [edx+8]
 005605CE    mov         edx,dword ptr [edx-4]
 005605D1    mov         edx,dword ptr [edx+0D4]
 005605D7    sub         edx,eax
 005605D9    mov         eax,dword ptr [ebp+8]
 005605DC    mov         eax,dword ptr [eax+8]
 005605DF    mov         eax,dword ptr [eax-4]
 005605E2    mov         ecx,dword ptr [eax+0D8]
 005605E8    mov         eax,esi
 005605EA    mov         ebx,dword ptr [eax]
 005605EC    call        dword ptr [ebx+0D0]
>005605F2    jmp         00560694
 005605F7    mov         eax,dword ptr [ebp+8]
 005605FA    mov         eax,dword ptr [eax+8]
 005605FD    mov         eax,dword ptr [eax-4]
 00560600    cmp         byte ptr [eax+8F],0
>00560607    je          00560647
 00560609    mov         eax,dword ptr [ebp+8]
 0056060C    mov         eax,dword ptr [eax+8]
 0056060F    mov         eax,dword ptr [eax-4]
 00560612    mov         eax,dword ptr [eax+0D8]
 00560618    push        eax
 00560619    mov         eax,dword ptr [ebx+278]
 0056061F    push        eax
 00560620    mov         eax,dword ptr [ebp+8]
 00560623    mov         eax,dword ptr [eax+8]
 00560626    mov         eax,dword ptr [eax-4]
 00560629    mov         ecx,dword ptr [eax+0D4]
 0056062F    mov         eax,dword ptr [ebp+8]
 00560632    mov         eax,dword ptr [eax+8]
 00560635    mov         eax,dword ptr [eax-4]
 00560638    mov         edx,dword ptr [eax+2C]
 0056063B    mov         eax,esi
 0056063D    mov         ebx,dword ptr [eax]
 0056063F    call        dword ptr [ebx+0D4]
>00560645    jmp         00560694
 00560647    mov         edx,dword ptr [ebx+2EC]
 0056064D    mov         eax,ebx
 0056064F    mov         ecx,dword ptr [eax]
 00560651    call        dword ptr [ecx+0F4]
 00560657    mov         edx,dword ptr [ebp+8]
 0056065A    mov         edx,dword ptr [edx+8]
 0056065D    mov         edx,dword ptr [edx-4]
 00560660    add         eax,dword ptr [edx+0D8]
 00560666    push        eax
 00560667    push        0
 00560669    mov         eax,dword ptr [ebp+8]
 0056066C    mov         eax,dword ptr [eax+8]
 0056066F    mov         eax,dword ptr [eax-4]
 00560672    mov         edx,dword ptr [eax+2C]
 00560675    mov         eax,dword ptr [ebp+8]
 00560678    sub         edx,dword ptr [eax-4]
 0056067B    mov         eax,dword ptr [ebp+8]
 0056067E    mov         eax,dword ptr [eax+8]
 00560681    mov         eax,dword ptr [eax-4]
 00560684    mov         ecx,dword ptr [eax+0D4]
 0056068A    mov         eax,esi
 0056068C    mov         ebx,dword ptr [eax]
 0056068E    call        dword ptr [ebx+0D4]
 00560694    pop         edi
 00560695    pop         esi
 00560696    pop         ebx
 00560697    pop         ecx
 00560698    pop         ecx
 00560699    pop         ebp
 0056069A    ret
*}
end;

//0056069C
procedure AProc(APos:Integer);
begin
{*
 0056069C    push        ebp
 0056069D    mov         ebp,esp
 0056069F    mov         edx,dword ptr [ebp+8]
 005606A2    mov         edx,dword ptr [edx+8]
 005606A5    mov         edx,dword ptr [edx+8]
 005606A8    mov         edx,dword ptr [edx-4]
 005606AB    cmp         byte ptr [edx+8E],0
>005606B2    je          005606E4
 005606B4    mov         edx,dword ptr [ebp+8]
 005606B7    mov         edx,dword ptr [edx+8]
 005606BA    mov         edx,dword ptr [edx+8]
 005606BD    mov         edx,dword ptr [edx-4]
 005606C0    cmp         eax,dword ptr [edx+0D4]
>005606C6    jle         005606DC
 005606C8    mov         edx,dword ptr [ebp+8]
 005606CB    mov         edx,dword ptr [edx+8]
 005606CE    mov         edx,dword ptr [edx+8]
 005606D1    mov         edx,dword ptr [edx-4]
 005606D4    cmp         eax,dword ptr [edx+0D8]
>005606DA    jl          005606E0
 005606DC    xor         edx,edx
>005606DE    jmp         00560712
 005606E0    mov         dl,1
>005606E2    jmp         00560712
 005606E4    mov         edx,dword ptr [ebp+8]
 005606E7    mov         edx,dword ptr [edx+8]
 005606EA    mov         edx,dword ptr [edx+8]
 005606ED    mov         edx,dword ptr [edx-4]
 005606F0    cmp         eax,dword ptr [edx+0D4]
>005606F6    jle         0056070C
 005606F8    mov         edx,dword ptr [ebp+8]
 005606FB    mov         edx,dword ptr [edx+8]
 005606FE    mov         edx,dword ptr [edx+8]
 00560701    mov         edx,dword ptr [edx-4]
 00560704    cmp         eax,dword ptr [edx+0D8]
>0056070A    jl          00560710
 0056070C    xor         edx,edx
>0056070E    jmp         00560712
 00560710    mov         dl,1
 00560712    test        dl,dl
>00560714    je          0056074F
 00560716    mov         edx,dword ptr [ebp+8]
 00560719    cmp         byte ptr [edx-1],0
>0056071D    je          0056072E
 0056071F    mov         edx,dword ptr [ebp+8]
 00560722    mov         edx,dword ptr [edx+8]
 00560725    push        edx
 00560726    call        DrawGridLine
 0056072B    pop         ecx
>0056072C    jmp         0056074F
 0056072E    mov         edx,dword ptr [ebp+8]
 00560731    mov         edx,dword ptr [edx+8]
 00560734    push        edx
 00560735    mov         edx,dword ptr [ebp+8]
 00560738    mov         edx,dword ptr [edx+8]
 0056073B    mov         edx,dword ptr [edx+8]
 0056073E    mov         edx,dword ptr [edx-4]
 00560741    mov         ecx,dword ptr [edx+74]
 00560744    mov         edx,1
 00560749    call        InternalDrawTick
 0056074E    pop         ecx
 0056074F    pop         ebp
 00560750    ret
*}
end;

//00560754
procedure ProcessMinorTicks(IsGrid:Boolean);
begin
{*
 00560754    push        ebp
 00560755    mov         ebp,esp
 00560757    add         esp,0FFFFFFDC
 0056075A    push        ebx
 0056075B    push        esi
 0056075C    push        edi
 0056075D    mov         byte ptr [ebp-1],al
 00560760    mov         eax,dword ptr [ebp+8]
 00560763    mov         eax,dword ptr [eax+8]
 00560766    cmp         dword ptr [eax-8],1
>0056076A    jle         0056082A
 00560770    mov         eax,dword ptr [ebp+8]
 00560773    mov         eax,dword ptr [eax+8]
 00560776    mov         eax,dword ptr [eax-4]
 00560779    cmp         byte ptr [eax+20],0
>0056077D    jne         0056082A
 00560783    mov         edx,dword ptr [ebp+8]
 00560786    mov         edx,dword ptr [edx+8]
 00560789    mov         edx,dword ptr [edx-0C]
 0056078C    mov         edx,dword ptr [edx+4]
 0056078F    mov         ecx,dword ptr [ebp+8]
 00560792    mov         ecx,dword ptr [ecx+8]
 00560795    mov         ecx,dword ptr [ecx-0C]
 00560798    sub         edx,dword ptr [ecx]
 0056079A    mov         dword ptr [ebp-20],edx
 0056079D    fild        dword ptr [ebp-20]
 005607A0    fmul        dword ptr ds:[560984]
 005607A6    mov         eax,dword ptr [ebp+8]
 005607A9    mov         eax,dword ptr [eax+8]
 005607AC    mov         eax,dword ptr [eax-4]
 005607AF    mov         eax,dword ptr [eax+70]
 005607B2    mov         edx,eax
 005607B4    inc         edx
 005607B5    mov         dword ptr [ebp-24],edx
 005607B8    fild        dword ptr [ebp-24]
 005607BB    fdivp       st(1),st
 005607BD    fstp        qword ptr [ebp-10]
 005607C0    wait
 005607C1    mov         edx,dword ptr [ebp+8]
 005607C4    mov         edx,dword ptr [edx+8]
 005607C7    test        eax,eax
>005607C9    jle         0056082A
 005607CB    mov         dword ptr [ebp-1C],eax
 005607CE    mov         edi,1
 005607D3    push        ebp
 005607D4    mov         dword ptr [ebp-20],edi
 005607D7    fild        dword ptr [ebp-20]
 005607DA    fmul        qword ptr [ebp-10]
 005607DD    call        @ROUND
 005607E2    mov         ebx,eax
 005607E4    mov         eax,dword ptr [ebp+8]
 005607E7    mov         eax,dword ptr [eax+8]
 005607EA    mov         eax,dword ptr [eax-0C]
 005607ED    mov         eax,dword ptr [eax]
 005607EF    sub         eax,ebx
 005607F1    call        AProc
 005607F6    pop         ecx
 005607F7    push        ebp
 005607F8    mov         dword ptr [ebp-20],edi
 005607FB    fild        dword ptr [ebp-20]
 005607FE    fmul        qword ptr [ebp-10]
 00560801    call        @ROUND
 00560806    mov         eax,ebx
 00560808    mov         edx,dword ptr [ebp+8]
 0056080B    mov         edx,dword ptr [edx+8]
 0056080E    mov         edx,dword ptr [edx-8]
 00560811    mov         ecx,dword ptr [ebp+8]
 00560814    mov         ecx,dword ptr [ecx+8]
 00560817    mov         ecx,dword ptr [ecx-0C]
 0056081A    add         eax,dword ptr [ecx+edx*4-4]
 0056081E    call        AProc
 00560823    pop         ecx
 00560824    inc         edi
 00560825    dec         dword ptr [ebp-1C]
>00560828    jne         005607D3
 0056082A    mov         eax,dword ptr [ebp+8]
 0056082D    mov         eax,dword ptr [eax+8]
 00560830    mov         eax,dword ptr [eax-8]
 00560833    dec         eax
 00560834    test        eax,eax
>00560836    jle         0056097C
 0056083C    mov         dword ptr [ebp-1C],eax
 0056083F    mov         edi,1
 00560844    mov         eax,dword ptr [ebp+8]
 00560847    mov         eax,dword ptr [eax+8]
 0056084A    mov         eax,dword ptr [eax-4]
 0056084D    cmp         byte ptr [eax+20],0
>00560851    je          005608F8
 00560857    mov         eax,dword ptr [ebp+8]
 0056085A    mov         eax,dword ptr [eax+8]
 0056085D    mov         eax,dword ptr [eax-0C]
 00560860    mov         edx,dword ptr [eax+edi*4-4]
 00560864    mov         eax,dword ptr [ebp+8]
 00560867    mov         eax,dword ptr [eax+8]
 0056086A    mov         eax,dword ptr [eax-4]
 0056086D    call        TCustomChartAxis.CalcPosPoint
 00560872    fstp        qword ptr [ebp-18]
 00560875    wait
 00560876    mov         edx,dword ptr [ebp+8]
 00560879    mov         edx,dword ptr [edx+8]
 0056087C    mov         edx,dword ptr [edx-4]
 0056087F    fild        dword ptr [edx+24]
 00560882    fmul        qword ptr [ebp-18]
 00560885    fsub        qword ptr [ebp-18]
 00560888    mov         eax,dword ptr [ebp+8]
 0056088B    mov         eax,dword ptr [eax+8]
 0056088E    mov         eax,dword ptr [eax-4]
 00560891    mov         eax,dword ptr [eax+70]
 00560894    mov         edx,eax
 00560896    inc         edx
 00560897    mov         dword ptr [ebp-20],edx
 0056089A    fild        dword ptr [ebp-20]
 0056089D    fdivp       st(1),st
 0056089F    fstp        qword ptr [ebp-10]
 005608A2    wait
 005608A3    mov         edx,dword ptr [ebp+8]
 005608A6    mov         edx,dword ptr [edx+8]
 005608A9    mov         ebx,eax
 005608AB    test        ebx,ebx
>005608AD    jle         00560972
 005608B3    fld         qword ptr [ebp-18]
 005608B6    fadd        qword ptr [ebp-10]
 005608B9    fstp        qword ptr [ebp-18]
 005608BC    wait
 005608BD    fld         qword ptr [ebp-18]
 005608C0    mov         eax,dword ptr [ebp+8]
 005608C3    mov         eax,dword ptr [eax+8]
 005608C6    mov         eax,dword ptr [eax-4]
 005608C9    fcomp       qword ptr [eax+0B0]
 005608CF    fnstsw      al
 005608D1    sahf
>005608D2    ja          00560972
 005608D8    push        ebp
 005608D9    push        dword ptr [ebp-14]
 005608DC    push        dword ptr [ebp-18]
 005608DF    mov         eax,dword ptr [ebp+8]
 005608E2    mov         eax,dword ptr [eax+8]
 005608E5    mov         eax,dword ptr [eax-4]
 005608E8    call        TCustomChartAxis.CalcPosValue
 005608ED    call        AProc
 005608F2    pop         ecx
 005608F3    dec         ebx
>005608F4    jne         005608B3
>005608F6    jmp         00560972
 005608F8    mov         edx,dword ptr [ebp+8]
 005608FB    mov         edx,dword ptr [edx+8]
 005608FE    mov         edx,dword ptr [edx-0C]
 00560901    mov         edx,dword ptr [edx+edi*4]
 00560904    mov         ecx,dword ptr [ebp+8]
 00560907    mov         ecx,dword ptr [ecx+8]
 0056090A    mov         ecx,dword ptr [ecx-0C]
 0056090D    sub         edx,dword ptr [ecx+edi*4-4]
 00560911    mov         dword ptr [ebp-20],edx
 00560914    fild        dword ptr [ebp-20]
 00560917    fmul        dword ptr ds:[560984]
 0056091D    mov         eax,dword ptr [ebp+8]
 00560920    mov         eax,dword ptr [eax+8]
 00560923    mov         eax,dword ptr [eax-4]
 00560926    mov         eax,dword ptr [eax+70]
 00560929    mov         edx,eax
 0056092B    inc         edx
 0056092C    mov         dword ptr [ebp-24],edx
 0056092F    fild        dword ptr [ebp-24]
 00560932    fdivp       st(1),st
 00560934    fstp        qword ptr [ebp-10]
 00560937    wait
 00560938    mov         edx,dword ptr [ebp+8]
 0056093B    mov         edx,dword ptr [edx+8]
 0056093E    mov         ebx,eax
 00560940    test        ebx,ebx
>00560942    jle         00560972
 00560944    mov         esi,1
 00560949    push        ebp
 0056094A    mov         dword ptr [ebp-20],esi
 0056094D    fild        dword ptr [ebp-20]
 00560950    fmul        qword ptr [ebp-10]
 00560953    call        @ROUND
 00560958    push        eax
 00560959    mov         eax,dword ptr [ebp+8]
 0056095C    mov         eax,dword ptr [eax+8]
 0056095F    mov         eax,dword ptr [eax-0C]
 00560962    mov         eax,dword ptr [eax+edi*4]
 00560965    pop         edx
 00560966    sub         eax,edx
 00560968    call        AProc
 0056096D    pop         ecx
 0056096E    inc         esi
 0056096F    dec         ebx
>00560970    jne         00560949
 00560972    inc         edi
 00560973    dec         dword ptr [ebp-1C]
>00560976    jne         00560844
 0056097C    pop         edi
 0056097D    pop         esi
 0056097E    pop         ebx
 0056097F    mov         esp,ebp
 00560981    pop         ebp
 00560982    ret
*}
end;

//00560988
procedure ProcessTicks(APen:TChartPen; AOffset:Integer; ALength:Integer);
begin
{*
 00560988    push        ebp
 00560989    mov         ebp,esp
 0056098B    add         esp,0FFFFFFF8
 0056098E    push        ebx
 0056098F    push        esi
 00560990    push        edi
 00560991    mov         dword ptr [ebp-8],ecx
 00560994    mov         edi,edx
 00560996    mov         dword ptr [ebp-4],eax
 00560999    mov         eax,dword ptr [ebp-4]
 0056099C    cmp         byte ptr [eax+21],0
>005609A0    je          005609EF
 005609A2    mov         eax,dword ptr [ebp+8]
 005609A5    mov         eax,dword ptr [eax+8]
 005609A8    mov         eax,dword ptr [eax-4]
 005609AB    mov         eax,dword ptr [eax+90]
 005609B1    mov         eax,dword ptr [eax+280]
 005609B7    mov         edx,dword ptr [ebp-4]
 005609BA    call        TTeeCanvas.AssignVisiblePen
 005609BF    mov         eax,dword ptr [ebp+8]
 005609C2    mov         eax,dword ptr [eax+8]
 005609C5    mov         ebx,dword ptr [eax-8]
 005609C8    dec         ebx
 005609C9    test        ebx,ebx
>005609CB    jl          005609EF
 005609CD    inc         ebx
 005609CE    xor         esi,esi
 005609D0    mov         eax,dword ptr [ebp+8]
 005609D3    push        eax
 005609D4    mov         eax,dword ptr [ebp+8]
 005609D7    mov         eax,dword ptr [eax+8]
 005609DA    mov         eax,dword ptr [eax-0C]
 005609DD    mov         eax,dword ptr [eax+esi*4]
 005609E0    mov         ecx,dword ptr [ebp-8]
 005609E3    mov         edx,edi
 005609E5    call        InternalDrawTick
 005609EA    pop         ecx
 005609EB    inc         esi
 005609EC    dec         ebx
>005609ED    jne         005609D0
 005609EF    pop         edi
 005609F0    pop         esi
 005609F1    pop         ebx
 005609F2    pop         ecx
 005609F3    pop         ecx
 005609F4    pop         ebp
 005609F5    ret
*}
end;

//005609F8
procedure ProcessMinor(APen:TChartPen; IsGrid:Boolean);
begin
{*
 005609F8    push        ebp
 005609F9    mov         ebp,esp
 005609FB    push        ebx
 005609FC    mov         ebx,edx
 005609FE    mov         edx,dword ptr [ebp+8]
 00560A01    mov         edx,dword ptr [edx+8]
 00560A04    cmp         dword ptr [edx-8],0
>00560A08    jle         00560A37
 00560A0A    cmp         byte ptr [eax+21],0
>00560A0E    je          00560A37
 00560A10    mov         edx,dword ptr [ebp+8]
 00560A13    mov         edx,dword ptr [edx+8]
 00560A16    mov         edx,dword ptr [edx-4]
 00560A19    mov         edx,dword ptr [edx+90]
 00560A1F    mov         edx,dword ptr [edx+280]
 00560A25    xchg        eax,edx
 00560A26    call        TTeeCanvas.AssignVisiblePen
 00560A2B    mov         eax,dword ptr [ebp+8]
 00560A2E    push        eax
 00560A2F    mov         eax,ebx
 00560A31    call        ProcessMinorTicks
 00560A36    pop         ecx
 00560A37    pop         ebx
 00560A38    pop         ebp
 00560A39    ret
*}
end;

//00560A3C
procedure DrawTicksGrid;
begin
{*
 00560A3C    push        ebp
 00560A3D    mov         ebp,esp
 00560A3F    push        ecx
 00560A40    push        ebx
 00560A41    mov         ebx,dword ptr [ebp+8]
 00560A44    add         ebx,0FFFFFFFC
 00560A47    mov         edx,dword ptr [ebx]
 00560A49    mov         eax,dword ptr [ebx]
 00560A4B    mov         eax,dword ptr [eax+90]
 00560A51    mov         ecx,dword ptr [eax]
 00560A53    call        dword ptr [ecx+0F4]
 00560A59    mov         dword ptr [ebp-4],eax
 00560A5C    mov         eax,dword ptr [ebx]
 00560A5E    mov         eax,dword ptr [eax+28]
 00560A61    cmp         byte ptr [eax+21],0
>00560A65    je          00560A83
 00560A67    mov         edx,eax
 00560A69    mov         eax,dword ptr [ebx]
 00560A6B    mov         eax,dword ptr [eax+90]
 00560A71    mov         eax,dword ptr [eax+280]
 00560A77    call        TTeeCanvas.AssignVisiblePen
 00560A7C    push        ebp
 00560A7D    call        DrawAxisLine
 00560A82    pop         ecx
 00560A83    push        ebp
 00560A84    mov         eax,dword ptr [ebx]
 00560A86    mov         ecx,dword ptr [eax+88]
 00560A8C    mov         eax,dword ptr [ebx]
 00560A8E    mov         eax,dword ptr [eax+7C]
 00560A91    mov         edx,1
 00560A96    call        ProcessTicks
 00560A9B    pop         ecx
 00560A9C    mov         eax,dword ptr [ebx]
 00560A9E    mov         eax,dword ptr [eax+3C]
 00560AA1    cmp         byte ptr [eax+21],0
>00560AA5    je          00560AAE
 00560AA7    push        ebp
 00560AA8    call        DrawGrids
 00560AAD    pop         ecx
 00560AAE    push        ebp
 00560AAF    mov         eax,dword ptr [ebx]
 00560AB1    mov         ecx,dword ptr [eax+84]
 00560AB7    neg         ecx
 00560AB9    mov         eax,dword ptr [ebx]
 00560ABB    mov         eax,dword ptr [eax+80]
 00560AC1    or          edx,0FFFFFFFF
 00560AC4    call        ProcessTicks
 00560AC9    pop         ecx
 00560ACA    push        ebp
 00560ACB    mov         eax,dword ptr [ebx]
 00560ACD    mov         eax,dword ptr [eax+78]
 00560AD0    xor         edx,edx
 00560AD2    call        ProcessMinor
 00560AD7    pop         ecx
 00560AD8    push        ebp
 00560AD9    mov         eax,dword ptr [ebx]
 00560ADB    mov         eax,dword ptr [eax+6C]
 00560ADE    mov         dl,1
 00560AE0    call        ProcessMinor
 00560AE5    pop         ecx
 00560AE6    pop         ebx
 00560AE7    pop         ecx
 00560AE8    pop         ebp
 00560AE9    ret
*}
end;

//00560AEC
procedure AddTick(APos:Integer);
begin
{*
 00560AEC    push        ebp
 00560AED    mov         ebp,esp
 00560AEF    mov         edx,dword ptr [ebp+8]
 00560AF2    mov         edx,dword ptr [edx-8]
 00560AF5    mov         ecx,dword ptr [ebp+8]
 00560AF8    mov         ecx,dword ptr [ecx-0C]
 00560AFB    mov         dword ptr [ecx+edx*4],eax
 00560AFE    mov         eax,dword ptr [ebp+8]
 00560B01    inc         dword ptr [eax-8]
 00560B04    pop         ebp
 00560B05    ret
*}
end;

//00560B08
procedure DrawThisLabel(LabelPos:Integer; const tmpSt:AnsiString);
begin
{*
 00560B08    push        ebp
 00560B09    mov         ebp,esp
 00560B0B    add         esp,0FFFFFFF8
 00560B0E    push        ebx
 00560B0F    push        esi
 00560B10    push        edi
 00560B11    mov         dword ptr [ebp-8],edx
 00560B14    mov         dword ptr [ebp-4],eax
 00560B17    mov         eax,dword ptr [ebp+8]
 00560B1A    mov         eax,dword ptr [eax-4]
 00560B1D    cmp         byte ptr [eax+8C],0
>00560B24    je          00560B33
 00560B26    mov         eax,dword ptr [ebp+8]
 00560B29    push        eax
 00560B2A    mov         eax,dword ptr [ebp-4]
 00560B2D    call        AddTick
 00560B32    pop         ecx
 00560B33    mov         eax,dword ptr [ebp+8]
 00560B36    mov         eax,dword ptr [eax-4]
 00560B39    mov         esi,dword ptr [eax+90]
 00560B3F    mov         ebx,dword ptr [esi+280]
 00560B45    mov         eax,dword ptr [ebp+8]
 00560B48    mov         eax,dword ptr [eax-4]
 00560B4B    mov         edx,dword ptr [eax+48]
 00560B4E    mov         eax,esi
 00560B50    mov         ecx,dword ptr [eax]
 00560B52    call        dword ptr [ecx+0D8]
 00560B58    mov         eax,dword ptr [ebp+8]
 00560B5B    mov         eax,dword ptr [eax-4]
 00560B5E    mov         eax,dword ptr [eax+90]
 00560B64    mov         edx,dword ptr [eax+70]
 00560B67    mov         eax,dword ptr [ebx+10]
 00560B6A    call        TBrush.SetColor
 00560B6F    mov         dl,1
 00560B71    mov         eax,dword ptr [ebx+10]
 00560B74    call        TBrush.SetStyle
 00560B79    cmp         byte ptr [esi+268],0
>00560B80    je          00560B98
 00560B82    mov         eax,dword ptr [ebx+8]
 00560B85    cmp         dword ptr [eax+18],0FFFFFF
>00560B8C    jne         00560B98
 00560B8E    xor         edx,edx
 00560B90    mov         eax,dword ptr [ebx+8]
 00560B93    call        TFont.SetColor
 00560B98    mov         eax,dword ptr [ebp+8]
 00560B9B    mov         eax,dword ptr [eax-4]
 00560B9E    mov         edi,dword ptr [eax+5C]
 00560BA1    mov         eax,dword ptr [ebp+8]
 00560BA4    mov         eax,dword ptr [eax-4]
 00560BA7    cmp         byte ptr [eax+0E0],0
>00560BAE    je          00560BD5
 00560BB0    xor         edx,edx
 00560BB2    mov         eax,ebx
 00560BB4    mov         ecx,dword ptr [eax]
 00560BB6    call        dword ptr [ecx+28]
 00560BB9    mov         eax,dword ptr [ebp-4]
 00560BBC    push        eax
 00560BBD    mov         eax,dword ptr [ebp-8]
 00560BC0    push        eax
 00560BC1    mov         ecx,dword ptr [esi+292]
 00560BC7    mov         edx,edi
 00560BC9    mov         eax,ebx
 00560BCB    mov         ebx,dword ptr [eax]
 00560BCD    call        dword ptr [ebx+124]
>00560BD3    jmp         00560C22
 00560BD5    mov         eax,dword ptr [ebp+8]
 00560BD8    mov         eax,dword ptr [eax-4]
 00560BDB    cmp         byte ptr [eax+8E],0
>00560BE2    je          00560C04
 00560BE4    mov         eax,dword ptr [ebp+8]
 00560BE7    mov         eax,dword ptr [eax-4]
 00560BEA    mov         eax,dword ptr [eax+44]
 00560BED    push        eax
 00560BEE    mov         eax,dword ptr [ebp-8]
 00560BF1    push        eax
 00560BF2    mov         eax,dword ptr [ebp+8]
 00560BF5    mov         eax,dword ptr [eax-4]
 00560BF8    mov         ecx,edi
 00560BFA    mov         edx,dword ptr [ebp-4]
 00560BFD    call        TCustomChartAxis.DrawAxisLabel
>00560C02    jmp         00560C22
 00560C04    mov         eax,dword ptr [ebp+8]
 00560C07    mov         eax,dword ptr [eax-4]
 00560C0A    mov         eax,dword ptr [eax+44]
 00560C0D    push        eax
 00560C0E    mov         eax,dword ptr [ebp-8]
 00560C11    push        eax
 00560C12    mov         eax,dword ptr [ebp+8]
 00560C15    mov         eax,dword ptr [eax-4]
 00560C18    mov         ecx,dword ptr [ebp-4]
 00560C1B    mov         edx,edi
 00560C1D    call        TCustomChartAxis.DrawAxisLabel
 00560C22    pop         edi
 00560C23    pop         esi
 00560C24    pop         ebx
 00560C25    pop         ecx
 00560C26    pop         ecx
 00560C27    pop         ebp
 00560C28    ret
*}
end;

//00560C2C
function GetAxisSeriesLabel(AIndex:Integer; var ALabel:AnsiString; var AValue:Double):Boolean;
begin
{*
 00560C2C    push        ebp
 00560C2D    mov         ebp,esp
 00560C2F    add         esp,0FFFFFFE4
 00560C32    push        ebx
 00560C33    push        esi
 00560C34    xor         ebx,ebx
 00560C36    mov         dword ptr [ebp-1C],ebx
 00560C39    mov         dword ptr [ebp-18],ebx
 00560C3C    mov         dword ptr [ebp-0C],ecx
 00560C3F    mov         dword ptr [ebp-8],edx
 00560C42    mov         dword ptr [ebp-4],eax
 00560C45    xor         eax,eax
 00560C47    push        ebp
 00560C48    push        560D53
 00560C4D    push        dword ptr fs:[eax]
 00560C50    mov         dword ptr fs:[eax],esp
 00560C53    mov         byte ptr [ebp-0D],0
 00560C57    mov         eax,dword ptr [ebp+8]
 00560C5A    mov         eax,dword ptr [eax-10]
 00560C5D    mov         esi,dword ptr [eax+8]
 00560C60    dec         esi
 00560C61    test        esi,esi
>00560C63    jl          00560D38
 00560C69    inc         esi
 00560C6A    mov         dword ptr [ebp-14],0
 00560C71    mov         eax,dword ptr [ebp+8]
 00560C74    mov         eax,dword ptr [eax-10]
 00560C77    mov         edx,dword ptr [ebp-14]
 00560C7A    call        TList.Get
 00560C7F    mov         ebx,eax
 00560C81    mov         eax,dword ptr [ebx+88]
 00560C87    mov         eax,dword ptr [eax+8]
 00560C8A    cmp         eax,dword ptr [ebp-4]
>00560C8D    jle         00560D2E
 00560C93    mov         eax,dword ptr [ebp+8]
 00560C96    mov         al,byte ptr [eax-11]
 00560C99    sub         al,3
>00560C9B    je          00560CA3
 00560C9D    dec         al
>00560C9F    je          00560CBD
>00560CA1    jmp         00560CD5
 00560CA3    lea         ecx,[ebp-18]
 00560CA6    mov         edx,dword ptr [ebp-4]
 00560CA9    mov         eax,ebx
 00560CAB    call        TChartSeries.GetMarkText
 00560CB0    mov         edx,dword ptr [ebp-18]
 00560CB3    mov         eax,dword ptr [ebp-0C]
 00560CB6    call        @LStrAsg
>00560CBB    jmp         00560CD5
 00560CBD    lea         ecx,[ebp-1C]
 00560CC0    mov         edx,dword ptr [ebp-4]
 00560CC3    mov         eax,ebx
 00560CC5    mov         esi,dword ptr [eax]
 00560CC7    call        dword ptr [esi+60]
 00560CCA    mov         edx,dword ptr [ebp-1C]
 00560CCD    mov         eax,dword ptr [ebp-0C]
 00560CD0    call        @LStrAsg
 00560CD5    mov         esi,dword ptr [ebx+68]
 00560CD8    cmp         word ptr [esi+302],0
>00560CE0    je          00560D0C
 00560CE2    mov         eax,dword ptr [ebp-4]
 00560CE5    push        eax
 00560CE6    mov         eax,dword ptr [ebp-0C]
 00560CE9    push        eax
 00560CEA    mov         eax,dword ptr [ebp+8]
 00560CED    mov         eax,dword ptr [eax-10]
 00560CF0    mov         edx,dword ptr [ebp-14]
 00560CF3    call        TList.Get
 00560CF8    mov         ecx,eax
 00560CFA    mov         eax,dword ptr [ebp+8]
 00560CFD    mov         edx,dword ptr [eax-4]
 00560D00    mov         eax,dword ptr [esi+304]
 00560D06    call        dword ptr [esi+300]
 00560D0C    mov         eax,dword ptr [ebp+8]
 00560D0F    mov         eax,dword ptr [eax-4]
 00560D12    mov         dl,byte ptr [eax+8E]
 00560D18    mov         ecx,dword ptr [ebp-4]
 00560D1B    mov         eax,ebx
 00560D1D    call        TChartSeries.GetValue
 00560D22    mov         eax,dword ptr [ebp-8]
 00560D25    fstp        qword ptr [eax]
 00560D27    wait
 00560D28    mov         byte ptr [ebp-0D],1
>00560D2C    jmp         00560D38
 00560D2E    inc         dword ptr [ebp-14]
 00560D31    dec         esi
>00560D32    jne         00560C71
 00560D38    xor         eax,eax
 00560D3A    pop         edx
 00560D3B    pop         ecx
 00560D3C    pop         ecx
 00560D3D    mov         dword ptr fs:[eax],edx
 00560D40    push        560D5A
 00560D45    lea         eax,[ebp-1C]
 00560D48    mov         edx,2
 00560D4D    call        @LStrArrayClr
 00560D52    ret
>00560D53    jmp         @HandleFinally
>00560D58    jmp         00560D45
 00560D5A    mov         al,byte ptr [ebp-0D]
 00560D5D    pop         esi
 00560D5E    pop         ebx
 00560D5F    mov         esp,ebp
 00560D61    pop         ebp
 00560D62    ret
*}
end;

//00560D64
procedure CalcAllSeries;
begin
{*
 00560D64    push        ebp
 00560D65    mov         ebp,esp
 00560D67    push        ecx
 00560D68    push        ebx
 00560D69    push        esi
 00560D6A    push        edi
 00560D6B    mov         eax,dword ptr [ebp+8]
 00560D6E    mov         eax,dword ptr [eax-10]
 00560D71    mov         edx,dword ptr [eax]
 00560D73    call        dword ptr [edx+8]
 00560D76    mov         eax,dword ptr [ebp+8]
 00560D79    mov         eax,dword ptr [eax-4]
 00560D7C    mov         eax,dword ptr [eax+90]
 00560D82    mov         dword ptr [ebp-4],eax
 00560D85    mov         eax,dword ptr [ebp-4]
 00560D88    mov         eax,dword ptr [eax+2E0]
 00560D8E    mov         esi,dword ptr [eax+8]
 00560D91    dec         esi
 00560D92    test        esi,esi
>00560D94    jl          00560DE6
 00560D96    inc         esi
 00560D97    xor         edi,edi
 00560D99    mov         edx,edi
 00560D9B    mov         eax,dword ptr [ebp-4]
 00560D9E    call        TCustomAxisPanel.GetSeries
 00560DA3    mov         ebx,eax
 00560DA5    cmp         byte ptr [ebx+30],0
>00560DA9    je          00560DE2
 00560DAB    mov         eax,dword ptr [ebp+8]
 00560DAE    mov         edx,dword ptr [eax-4]
 00560DB1    mov         eax,ebx
 00560DB3    mov         ecx,dword ptr [eax]
 00560DB5    call        dword ptr [ecx+94]
 00560DBB    test        al,al
>00560DBD    je          00560DE2
 00560DBF    mov         eax,dword ptr [ebx+88]
 00560DC5    cmp         dword ptr [eax+8],0
>00560DC9    jle         00560DE2
 00560DCB    mov         edx,edi
 00560DCD    mov         eax,dword ptr [ebp-4]
 00560DD0    call        TCustomAxisPanel.GetSeries
 00560DD5    mov         edx,eax
 00560DD7    mov         eax,dword ptr [ebp+8]
 00560DDA    mov         eax,dword ptr [eax-10]
 00560DDD    call        TList.Add
 00560DE2    inc         edi
 00560DE3    dec         esi
>00560DE4    jne         00560D99
 00560DE6    pop         edi
 00560DE7    pop         esi
 00560DE8    pop         ebx
 00560DE9    pop         ecx
 00560DEA    pop         ebp
 00560DEB    ret
*}
end;

//00560DEC
procedure CalcFirstLastAllSeries(var tmpFirst:Integer; var tmpLast:Integer);
begin
{*
 00560DEC    push        ebp
 00560DED    mov         ebp,esp
 00560DEF    add         esp,0FFFFFFF8
 00560DF2    push        ebx
 00560DF3    push        esi
 00560DF4    push        edi
 00560DF5    mov         esi,edx
 00560DF7    mov         dword ptr [ebp-4],eax
 00560DFA    mov         eax,dword ptr [ebp-4]
 00560DFD    mov         dword ptr [eax],0FFFFFFFF
 00560E03    mov         dword ptr [esi],0FFFFFFFF
 00560E09    mov         eax,dword ptr [ebp+8]
 00560E0C    mov         eax,dword ptr [eax-10]
 00560E0F    mov         edi,dword ptr [eax+8]
 00560E12    dec         edi
 00560E13    test        edi,edi
>00560E15    jl          00560E6E
 00560E17    inc         edi
 00560E18    mov         dword ptr [ebp-8],0
 00560E1F    mov         eax,dword ptr [ebp+8]
 00560E22    mov         eax,dword ptr [eax-10]
 00560E25    mov         edx,dword ptr [ebp-8]
 00560E28    call        TList.Get
 00560E2D    mov         ebx,eax
 00560E2F    mov         eax,ebx
 00560E31    call        TChartSeries.CalcFirstLastVisibleIndex
 00560E36    mov         eax,dword ptr [ebp-4]
 00560E39    cmp         dword ptr [eax],0FFFFFFFF
>00560E3C    jne         00560E57
 00560E3E    mov         eax,dword ptr [ebx+4C]
 00560E41    cmp         eax,0FFFFFFFF
>00560E44    je          00560E4B
 00560E46    mov         edx,dword ptr [ebp-4]
 00560E49    mov         dword ptr [edx],eax
 00560E4B    mov         edx,dword ptr [ebp-4]
 00560E4E    cmp         eax,dword ptr [edx]
>00560E50    jge         00560E57
 00560E52    mov         edx,dword ptr [ebp-4]
 00560E55    mov         dword ptr [edx],eax
 00560E57    cmp         dword ptr [esi],0FFFFFFFF
>00560E5A    je          00560E63
 00560E5C    mov         eax,dword ptr [esi]
 00560E5E    cmp         eax,dword ptr [ebx+5C]
>00560E61    jge         00560E68
 00560E63    mov         eax,dword ptr [ebx+5C]
 00560E66    mov         dword ptr [esi],eax
 00560E68    inc         dword ptr [ebp-8]
 00560E6B    dec         edi
>00560E6C    jne         00560E1F
 00560E6E    pop         edi
 00560E6F    pop         esi
 00560E70    pop         ebx
 00560E71    pop         ecx
 00560E72    pop         ecx
 00560E73    pop         ebp
 00560E74    ret
*}
end;

//00560E78
procedure AxisLabelsSeries;
begin
{*
 00560E78    push        ebp
 00560E79    mov         ebp,esp
 00560E7B    add         esp,0FFFFFFD4
 00560E7E    push        ebx
 00560E7F    push        esi
 00560E80    push        edi
 00560E81    xor         eax,eax
 00560E83    mov         dword ptr [ebp-10],eax
 00560E86    xor         eax,eax
 00560E88    push        ebp
 00560E89    push        56109D
 00560E8E    push        dword ptr fs:[eax]
 00560E91    mov         dword ptr fs:[eax],esp
 00560E94    mov         dl,1
 00560E96    mov         eax,[006422A4];TList
 00560E9B    call        TObject.Create
 00560EA0    mov         edx,dword ptr [ebp+8]
 00560EA3    mov         dword ptr [edx-10],eax
 00560EA6    mov         eax,dword ptr [ebp+8]
 00560EA9    push        eax
 00560EAA    call        CalcAllSeries
 00560EAF    pop         ecx
 00560EB0    mov         eax,dword ptr [ebp+8]
 00560EB3    push        eax
 00560EB4    lea         edx,[ebp-0C]
 00560EB7    lea         eax,[ebp-8]
 00560EBA    call        CalcFirstLastAllSeries
 00560EBF    pop         ecx
 00560EC0    cmp         dword ptr [ebp-8],0FFFFFFFF
>00560EC4    je          0056107C
 00560ECA    mov         dword ptr [ebp-1C],0FFFFFFFF
 00560ED1    xor         eax,eax
 00560ED3    mov         dword ptr [ebp-20],eax
 00560ED6    mov         eax,dword ptr [ebp+8]
 00560ED9    mov         eax,dword ptr [eax-4]
 00560EDC    mov         al,byte ptr [eax+8E]
 00560EE2    mov         byte ptr [ebp-25],al
 00560EE5    mov         eax,dword ptr [ebp+8]
 00560EE8    mov         eax,dword ptr [eax-4]
 00560EEB    mov         eax,dword ptr [eax+44]
 00560EEE    sub         eax,5A
>00560EF1    je          00560EFA
 00560EF3    sub         eax,0B4
>00560EF8    jne         00560F02
 00560EFA    mov         al,byte ptr [ebp-25]
 00560EFD    xor         al,1
 00560EFF    mov         byte ptr [ebp-25],al
 00560F02    mov         esi,dword ptr [ebp-8]
 00560F05    mov         ebx,dword ptr [ebp-0C]
 00560F08    sub         ebx,esi
>00560F0A    jl          0056107C
 00560F10    inc         ebx
 00560F11    mov         eax,dword ptr [ebp+8]
 00560F14    push        eax
 00560F15    lea         ecx,[ebp-10]
 00560F18    lea         edx,[ebp-18]
 00560F1B    mov         eax,esi
 00560F1D    call        GetAxisSeriesLabel
 00560F22    pop         ecx
 00560F23    test        al,al
>00560F25    je          00561074
 00560F2B    fld         qword ptr [ebp-18]
 00560F2E    mov         eax,dword ptr [ebp+8]
 00560F31    mov         eax,dword ptr [eax-4]
 00560F34    fcomp       qword ptr [eax+0B8]
 00560F3A    fnstsw      al
 00560F3C    sahf
>00560F3D    jb          00561074
 00560F43    fld         qword ptr [ebp-18]
 00560F46    mov         eax,dword ptr [ebp+8]
 00560F49    mov         eax,dword ptr [eax-4]
 00560F4C    fcomp       qword ptr [eax+0B0]
 00560F52    fnstsw      al
 00560F54    sahf
>00560F55    ja          00561074
 00560F5B    push        dword ptr [ebp-14]
 00560F5E    push        dword ptr [ebp-18]
 00560F61    mov         eax,dword ptr [ebp+8]
 00560F64    mov         eax,dword ptr [eax-4]
 00560F67    call        TCustomChartAxis.CalcPosValue
 00560F6C    mov         edi,eax
 00560F6E    mov         eax,dword ptr [ebp+8]
 00560F71    mov         eax,dword ptr [eax-4]
 00560F74    cmp         byte ptr [eax+8C],0
>00560F7B    jne         00560F89
 00560F7D    mov         eax,dword ptr [ebp+8]
 00560F80    push        eax
 00560F81    mov         eax,edi
 00560F83    call        AddTick
 00560F88    pop         ecx
 00560F89    mov         eax,dword ptr [ebp+8]
 00560F8C    mov         eax,dword ptr [eax-4]
 00560F8F    cmp         byte ptr [eax+41],0
>00560F93    je          00561074
 00560F99    mov         eax,dword ptr [ebp+8]
 00560F9C    mov         eax,dword ptr [eax-4]
 00560F9F    mov         eax,dword ptr [eax+90]
 00560FA5    mov         edx,dword ptr [eax+280]
 00560FAB    mov         dword ptr [ebp-2C],edx
 00560FAE    lea         ecx,[ebp-4]
 00560FB1    mov         edx,dword ptr [ebp+8]
 00560FB4    mov         edx,dword ptr [ebp-10]
 00560FB7    call        TCustomTeePanel.MultiLineTextWidth
 00560FBC    mov         dword ptr [ebp-24],eax
 00560FBF    cmp         byte ptr [ebp-25],0
>00560FC3    jne         00560FD3
 00560FC5    mov         eax,dword ptr [ebp-2C]
 00560FC8    call        TTeeCanvas.FontHeight
 00560FCD    imul        dword ptr [ebp-4]
 00560FD0    mov         dword ptr [ebp-24],eax
 00560FD3    mov         eax,dword ptr [ebp+8]
 00560FD6    mov         eax,dword ptr [eax-4]
 00560FD9    cmp         dword ptr [eax+50],0
>00560FDD    je          00561055
 00560FDF    cmp         dword ptr [ebp-1C],0FFFFFFFF
>00560FE3    je          00561055
 00560FE5    fild        dword ptr [ebp-24]
 00560FE8    fld         tbyte ptr ds:[5610AC]
 00560FEE    fmulp       st(1),st
 00560FF0    mov         eax,dword ptr [ebp+8]
 00560FF3    mov         eax,dword ptr [eax-4]
 00560FF6    fild        dword ptr [eax+50]
 00560FF9    fmulp       st(1),st
 00560FFB    call        @TRUNC
 00561000    add         dword ptr [ebp-24],eax
 00561003    mov         eax,dword ptr [ebp-24]
 00561006    sar         eax,1
>00561008    jns         0056100D
 0056100A    adc         eax,0
 0056100D    mov         dword ptr [ebp-24],eax
 00561010    cmp         edi,dword ptr [ebp-1C]
>00561013    jl          00561027
 00561015    mov         eax,edi
 00561017    sub         eax,dword ptr [ebp-24]
 0056101A    mov         edx,dword ptr [ebp-1C]
 0056101D    add         edx,dword ptr [ebp-20]
 00561020    cmp         eax,edx
 00561022    setge       al
>00561025    jmp         00561037
 00561027    mov         eax,dword ptr [ebp-24]
 0056102A    add         eax,edi
 0056102C    mov         edx,dword ptr [ebp-1C]
 0056102F    sub         edx,dword ptr [ebp-20]
 00561032    cmp         eax,edx
 00561034    setle       al
 00561037    test        al,al
>00561039    je          00561074
 0056103B    mov         eax,dword ptr [ebp+8]
 0056103E    push        eax
 0056103F    mov         edx,dword ptr [ebp-10]
 00561042    mov         eax,edi
 00561044    call        DrawThisLabel
 00561049    pop         ecx
 0056104A    mov         dword ptr [ebp-1C],edi
 0056104D    mov         eax,dword ptr [ebp-24]
 00561050    mov         dword ptr [ebp-20],eax
>00561053    jmp         00561074
 00561055    mov         eax,dword ptr [ebp+8]
 00561058    push        eax
 00561059    mov         edx,dword ptr [ebp-10]
 0056105C    mov         eax,edi
 0056105E    call        DrawThisLabel
 00561063    pop         ecx
 00561064    mov         dword ptr [ebp-1C],edi
 00561067    mov         eax,dword ptr [ebp-24]
 0056106A    sar         eax,1
>0056106C    jns         00561071
 0056106E    adc         eax,0
 00561071    mov         dword ptr [ebp-20],eax
 00561074    inc         esi
 00561075    dec         ebx
>00561076    jne         00560F11
 0056107C    mov         eax,dword ptr [ebp+8]
 0056107F    mov         eax,dword ptr [eax-10]
 00561082    call        TObject.Free
 00561087    xor         eax,eax
 00561089    pop         edx
 0056108A    pop         ecx
 0056108B    pop         ecx
 0056108C    mov         dword ptr fs:[eax],edx
 0056108F    push        5610A4
 00561094    lea         eax,[ebp-10]
 00561097    call        @LStrClr
 0056109C    ret
>0056109D    jmp         @HandleFinally
>005610A2    jmp         00561094
 005610A4    pop         edi
 005610A5    pop         esi
 005610A6    pop         ebx
 005610A7    mov         esp,ebp
 005610A9    pop         ebp
 005610AA    ret
*}
end;

//005610B8
procedure InternalDrawLabel(DecValue:Boolean);
begin
{*
 005610B8    push        ebp
 005610B9    mov         ebp,esp
 005610BB    push        0
 005610BD    push        ebx
 005610BE    push        esi
 005610BF    mov         ebx,eax
 005610C1    xor         eax,eax
 005610C3    push        ebp
 005610C4    push        561197
 005610C9    push        dword ptr fs:[eax]
 005610CC    mov         dword ptr fs:[eax],esp
 005610CF    mov         eax,dword ptr [ebp+8]
 005610D2    push        dword ptr [eax-1C]
 005610D5    push        dword ptr [eax-20]
 005610D8    mov         eax,dword ptr [ebp+8]
 005610DB    mov         eax,dword ptr [eax-4]
 005610DE    call        TCustomChartAxis.CalcPosValue
 005610E3    mov         esi,eax
 005610E5    mov         eax,dword ptr [ebp+8]
 005610E8    mov         eax,dword ptr [eax-4]
 005610EB    cmp         byte ptr [eax+4C],0
>005610EF    jne         0056110D
 005610F1    mov         eax,dword ptr [ebp+8]
 005610F4    mov         eax,dword ptr [eax-4]
 005610F7    cmp         esi,dword ptr [eax+0D4]
>005610FD    jle         0056115A
 005610FF    mov         eax,dword ptr [ebp+8]
 00561102    mov         eax,dword ptr [eax-4]
 00561105    cmp         esi,dword ptr [eax+0D8]
>0056110B    jge         0056115A
 0056110D    mov         eax,dword ptr [ebp+8]
 00561110    mov         eax,dword ptr [eax-4]
 00561113    cmp         byte ptr [eax+8C],0
>0056111A    jne         00561128
 0056111C    mov         eax,dword ptr [ebp+8]
 0056111F    push        eax
 00561120    mov         eax,esi
 00561122    call        AddTick
 00561127    pop         ecx
 00561128    mov         eax,dword ptr [ebp+8]
 0056112B    mov         eax,dword ptr [eax-4]
 0056112E    cmp         byte ptr [eax+41],0
>00561132    je          0056115A
 00561134    mov         eax,dword ptr [ebp+8]
 00561137    push        eax
 00561138    mov         eax,dword ptr [ebp+8]
 0056113B    push        dword ptr [eax-1C]
 0056113E    push        dword ptr [eax-20]
 00561141    lea         edx,[ebp-4]
 00561144    mov         eax,dword ptr [ebp+8]
 00561147    mov         eax,dword ptr [eax-4]
 0056114A    call        TCustomChartAxis.LabelValue
 0056114F    mov         edx,dword ptr [ebp-4]
 00561152    mov         eax,esi
 00561154    call        DrawThisLabel
 00561159    pop         ecx
 0056115A    test        bl,bl
>0056115C    je          00561181
 0056115E    mov         eax,dword ptr [ebp+8]
 00561161    push        dword ptr [eax-24]
 00561164    push        dword ptr [eax-28]
 00561167    mov         eax,dword ptr [ebp+8]
 0056116A    mov         al,byte ptr [eax-29]
 0056116D    push        eax
 0056116E    mov         eax,dword ptr [ebp+8]
 00561171    lea         ecx,[eax-20]
 00561174    mov         eax,dword ptr [ebp+8]
 00561177    mov         eax,dword ptr [eax-4]
 0056117A    xor         edx,edx
 0056117C    call        TCustomChartAxis.IncDecDateTime
 00561181    xor         eax,eax
 00561183    pop         edx
 00561184    pop         ecx
 00561185    pop         ecx
 00561186    mov         dword ptr fs:[eax],edx
 00561189    push        56119E
 0056118E    lea         eax,[ebp-4]
 00561191    call        @LStrClr
 00561196    ret
>00561197    jmp         @HandleFinally
>0056119C    jmp         0056118E
 0056119E    pop         esi
 0056119F    pop         ebx
 005611A0    pop         ecx
 005611A1    pop         ebp
 005611A2    ret
*}
end;

//005611A4
function IntPower(Exponent:Integer; const Base:Extended):Extended;
begin
{*
 005611A4    push        ebp
 005611A5    mov         ebp,esp
 005611A7    mov         ecx,eax
 005611A9    cdq
 005611AA    fld1
 005611AC    xor         eax,edx
 005611AE    sub         eax,edx
>005611B0    je          005611CC
 005611B2    fld         tbyte ptr [ebp+8]
>005611B5    jmp         005611B9
 005611B7    fmul        st,st(0)
 005611B9    shr         eax,1
>005611BB    jae         005611B7
 005611BD    fmul        st(1),st
>005611BF    jne         005611B7
 005611C1    fstp        st(0)
 005611C3    cmp         ecx,0
>005611C6    jge         005611CC
 005611C8    fld1
 005611CA    fdivrp      st(1),st
 005611CC    wait
 005611CD    pop         ebp
 005611CE    ret         0C
*}
end;

//005611D4
function LogBaseN(const Base:Extended; const X:Extended):Extended;
begin
{*
 005611D4    push        ebp
 005611D5    mov         ebp,esp
 005611D7    fld1
 005611D9    fld         tbyte ptr [ebp+8]
 005611DC    fyl2x
 005611DE    fld1
 005611E0    fld         tbyte ptr [ebp+14]
 005611E3    fyl2x
 005611E5    fdivp       st(1),st
 005611E7    wait
 005611E8    pop         ebp
 005611E9    ret         18
*}
end;

//005611EC
procedure DoDefaultLogLabels;
begin
{*
 005611EC    push        ebp
 005611ED    mov         ebp,esp
 005611EF    push        ebx
 005611F0    push        esi
 005611F1    mov         ebx,dword ptr [ebp+8]
 005611F4    add         ebx,0FFFFFFFC
 005611F7    mov         esi,dword ptr [ebp+8]
 005611FA    add         esi,0FFFFFFE0
 005611FD    mov         eax,dword ptr [ebx]
 005611FF    fld         qword ptr [eax+0B8]
 00561205    mov         eax,dword ptr [ebx]
 00561207    fcomp       qword ptr [eax+0B0]
 0056120D    fnstsw      al
 0056120F    sahf
>00561210    je          005612EE
 00561216    mov         eax,dword ptr [ebx]
 00561218    fld         qword ptr [eax+0B8]
 0056121E    fcomp       dword ptr ds:[5612F4]
 00561224    fnstsw      al
 00561226    sahf
>00561227    ja          0056127F
 00561229    mov         eax,dword ptr [ebx]
 0056122B    fld         qword ptr [eax+0B8]
 00561231    fcomp       dword ptr ds:[5612F4]
 00561237    fnstsw      al
 00561239    sahf
>0056123A    jne         00561254
 0056123C    mov         eax,dword ptr [ebx]
 0056123E    mov         dword ptr [eax+0B8],9999999A
 00561248    mov         dword ptr [eax+0BC],3FB99999
>00561252    jmp         0056126A
 00561254    mov         eax,dword ptr [ebx]
 00561256    mov         dword ptr [eax+0B8],0D9D7BDBB
 00561260    mov         dword ptr [eax+0BC],3DDB7CDF
 0056126A    mov         eax,dword ptr [ebx]
 0056126C    mov         edx,dword ptr [eax+0B8]
 00561272    mov         dword ptr [esi],edx
 00561274    mov         edx,dword ptr [eax+0BC]
 0056127A    mov         dword ptr [esi+4],edx
>0056127D    jmp         005612DF
 0056127F    mov         eax,dword ptr [ebx]
 00561281    fild        dword ptr [eax+24]
 00561284    add         esp,0FFFFFFF4
 00561287    fstp        tbyte ptr [esp]
 0056128A    wait
 0056128B    mov         eax,dword ptr [ebx]
 0056128D    fild        dword ptr [eax+24]
 00561290    add         esp,0FFFFFFF4
 00561293    fstp        tbyte ptr [esp]
 00561296    wait
 00561297    mov         eax,dword ptr [ebx]
 00561299    fld         qword ptr [eax+0B8]
 0056129F    add         esp,0FFFFFFF4
 005612A2    fstp        tbyte ptr [esp]
 005612A5    wait
 005612A6    call        LogBaseN
 005612AB    call        @ROUND
 005612B0    call        IntPower
 005612B5    fstp        qword ptr [esi]
 005612B7    wait
>005612B8    jmp         005612DF
 005612BA    fld         qword ptr [esi]
 005612BC    mov         eax,dword ptr [ebx]
 005612BE    fcomp       qword ptr [eax+0B8]
 005612C4    fnstsw      al
 005612C6    sahf
>005612C7    jb          005612D5
 005612C9    mov         eax,dword ptr [ebp+8]
 005612CC    push        eax
 005612CD    xor         eax,eax
 005612CF    call        InternalDrawLabel
 005612D4    pop         ecx
 005612D5    mov         eax,dword ptr [ebx]
 005612D7    fild        dword ptr [eax+24]
 005612DA    fmul        qword ptr [esi]
 005612DC    fstp        qword ptr [esi]
 005612DE    wait
 005612DF    fld         qword ptr [esi]
 005612E1    mov         eax,dword ptr [ebx]
 005612E3    fcomp       qword ptr [eax+0B0]
 005612E9    fnstsw      al
 005612EB    sahf
>005612EC    jbe         005612BA
 005612EE    pop         esi
 005612EF    pop         ebx
 005612F0    pop         ebp
 005612F1    ret
*}
end;

//005612F8
procedure DoDefaultLabels;
begin
{*
 005612F8    push        ebp
 005612F9    mov         ebp,esp
 005612FB    add         esp,0FFFFFFF0
 005612FE    push        ebx
 005612FF    push        esi
 00561300    mov         ebx,dword ptr [ebp+8]
 00561303    add         ebx,0FFFFFFFC
 00561306    mov         esi,dword ptr [ebp+8]
 00561309    add         esi,0FFFFFFE0
 0056130C    mov         eax,dword ptr [ebx]
 0056130E    fld         qword ptr [eax+0B0]
 00561314    mov         eax,dword ptr [ebp+8]
 00561317    fdiv        qword ptr [eax-28]
 0056131A    fstp        qword ptr [esi]
 0056131C    wait
 0056131D    mov         eax,dword ptr [ebx]
 0056131F    fld         qword ptr [eax+0C0]
 00561325    mov         eax,dword ptr [ebp+8]
 00561328    fdiv        qword ptr [eax-28]
 0056132B    fabs
 0056132D    fcomp       dword ptr ds:[561430]
 00561333    fnstsw      al
 00561335    sahf
>00561336    jae         00561428
 0056133C    mov         eax,dword ptr [ebx]
 0056133E    cmp         byte ptr [eax+0C8],0
>00561345    je          0056137F
 00561347    mov         eax,dword ptr [ebx]
 00561349    cmp         byte ptr [eax+68],0
>0056134D    je          0056137F
 0056134F    mov         eax,dword ptr [ebp+8]
 00561352    cmp         byte ptr [eax-29],19
>00561356    je          0056137F
 00561358    mov         eax,dword ptr [ebp+8]
 0056135B    cmp         byte ptr [eax-29],0E
>0056135F    jb          0056137F
 00561361    mov         eax,dword ptr [ebx]
 00561363    push        dword ptr [eax+0B4]
 00561369    push        dword ptr [eax+0B0]
 0056136F    mov         eax,dword ptr [ebp+8]
 00561372    mov         al,byte ptr [eax-29]
 00561375    call        TeeRoundDate
 0056137A    fstp        qword ptr [esi]
 0056137C    wait
>0056137D    jmp         005613E7
 0056137F    mov         eax,dword ptr [ebx]
 00561381    fld         qword ptr [eax+0B8]
 00561387    mov         eax,dword ptr [ebx]
 00561389    fcomp       qword ptr [eax+0B0]
 0056138F    fnstsw      al
 00561391    sahf
>00561392    je          0056139C
 00561394    mov         eax,dword ptr [ebx]
 00561396    cmp         byte ptr [eax+69],0
>0056139A    jne         005613B1
 0056139C    mov         eax,dword ptr [ebx]
 0056139E    mov         edx,dword ptr [eax+0B0]
 005613A4    mov         dword ptr [esi],edx
 005613A6    mov         edx,dword ptr [eax+0B4]
 005613AC    mov         dword ptr [esi+4],edx
>005613AF    jmp         005613E7
 005613B1    fld         qword ptr [esi]
 005613B3    call        @TRUNC
 005613B8    mov         dword ptr [ebp-10],eax
 005613BB    mov         dword ptr [ebp-0C],edx
 005613BE    fild        qword ptr [ebp-10]
 005613C1    mov         eax,dword ptr [ebp+8]
 005613C4    fmul        qword ptr [eax-28]
 005613C7    fstp        qword ptr [esi]
 005613C9    wait
>005613CA    jmp         005613E7
 005613CC    mov         eax,dword ptr [ebp+8]
 005613CF    push        dword ptr [eax-24]
 005613D2    push        dword ptr [eax-28]
 005613D5    mov         eax,dword ptr [ebp+8]
 005613D8    mov         al,byte ptr [eax-29]
 005613DB    push        eax
 005613DC    mov         ecx,esi
 005613DE    mov         eax,dword ptr [ebx]
 005613E0    xor         edx,edx
 005613E2    call        TCustomChartAxis.IncDecDateTime
 005613E7    fld         qword ptr [esi]
 005613E9    mov         eax,dword ptr [ebx]
 005613EB    fcomp       qword ptr [eax+0B0]
 005613F1    fnstsw      al
 005613F3    sahf
>005613F4    ja          005613CC
 005613F6    fld         tbyte ptr ds:[561434]
 005613FC    mov         eax,dword ptr [ebx]
 005613FE    fsubr       qword ptr [eax+0B8]
 00561404    fld         tbyte ptr ds:[561440]
 0056140A    fdivp       st(1),st
 0056140C    fstp        qword ptr [ebp-8]
 0056140F    wait
>00561410    jmp         0056141E
 00561412    mov         eax,dword ptr [ebp+8]
 00561415    push        eax
 00561416    mov         al,1
 00561418    call        InternalDrawLabel
 0056141D    pop         ecx
 0056141E    fld         qword ptr [esi]
 00561420    fcomp       qword ptr [ebp-8]
 00561423    fnstsw      al
 00561425    sahf
>00561426    jae         00561412
 00561428    pop         esi
 00561429    pop         ebx
 0056142A    mov         esp,ebp
 0056142C    pop         ebp
 0056142D    ret
*}
end;

//0056144C
procedure DoNotCustomLabels;
begin
{*
 0056144C    push        ebp
 0056144D    mov         ebp,esp
 0056144F    mov         eax,dword ptr [ebp+8]
 00561452    mov         eax,dword ptr [eax-4]
 00561455    cmp         byte ptr [eax+20],0
>00561459    je          0056147B
 0056145B    mov         eax,dword ptr [ebp+8]
 0056145E    mov         eax,dword ptr [eax-4]
 00561461    fld         qword ptr [eax+8]
 00561464    fcomp       dword ptr ds:[561488]
 0056146A    fnstsw      al
 0056146C    sahf
>0056146D    jne         0056147B
 0056146F    mov         eax,dword ptr [ebp+8]
 00561472    push        eax
 00561473    call        DoDefaultLogLabels
 00561478    pop         ecx
 00561479    pop         ebp
 0056147A    ret
 0056147B    mov         eax,dword ptr [ebp+8]
 0056147E    push        eax
 0056147F    call        DoDefaultLabels
 00561484    pop         ecx
 00561485    pop         ebp
 00561486    ret
*}
end;

//0056148C
procedure DoCustomLabels;
begin
{*
 0056148C    push        ebp
 0056148D    mov         ebp,esp
 0056148F    push        ecx
 00561490    push        ebx
 00561491    push        esi
 00561492    mov         eax,dword ptr [ebp+8]
 00561495    mov         edx,dword ptr [ebp+8]
 00561498    mov         edx,dword ptr [edx-4]
 0056149B    mov         ecx,dword ptr [edx+0B8]
 005614A1    mov         dword ptr [eax-20],ecx
 005614A4    mov         ecx,dword ptr [edx+0BC]
 005614AA    mov         dword ptr [eax-1C],ecx
 005614AD    mov         byte ptr [ebp-1],1
 005614B1    xor         esi,esi
 005614B3    xor         ebx,ebx
 005614B5    mov         eax,dword ptr [ebp+8]
 005614B8    add         eax,0FFFFFFE0
 005614BB    push        eax
 005614BC    lea         eax,[ebp-1]
 005614BF    push        eax
 005614C0    mov         eax,dword ptr [ebp+8]
 005614C3    mov         eax,dword ptr [eax-4]
 005614C6    mov         ebx,dword ptr [eax+90]
 005614CC    mov         eax,dword ptr [ebp+8]
 005614CF    mov         edx,dword ptr [eax-4]
 005614D2    mov         ecx,esi
 005614D4    mov         eax,dword ptr [ebx+30C]
 005614DA    call        dword ptr [ebx+308]
 005614E0    cmp         byte ptr [ebp-1],0
>005614E4    je          005614F6
 005614E6    test        esi,esi
>005614E8    jne         0056155D
 005614EA    mov         eax,dword ptr [ebp+8]
 005614ED    push        eax
 005614EE    call        DoNotCustomLabels
 005614F3    pop         ecx
>005614F4    jmp         0056155D
 005614F6    fld         tbyte ptr ds:[561564]
 005614FC    mov         eax,dword ptr [ebp+8]
 005614FF    mov         eax,dword ptr [eax-4]
 00561502    fsubr       qword ptr [eax+0B8]
 00561508    mov         eax,dword ptr [ebp+8]
 0056150B    fcomp       qword ptr [eax-20]
 0056150E    fnstsw      al
 00561510    sahf
>00561511    ja          00561530
 00561513    fld         tbyte ptr ds:[561564]
 00561519    mov         eax,dword ptr [ebp+8]
 0056151C    mov         eax,dword ptr [eax-4]
 0056151F    fadd        qword ptr [eax+0B0]
 00561525    mov         eax,dword ptr [ebp+8]
 00561528    fcomp       qword ptr [eax-20]
 0056152B    fnstsw      al
 0056152D    sahf
>0056152E    jae         00561534
 00561530    xor         ebx,ebx
>00561532    jmp         00561536
 00561534    mov         bl,1
 00561536    test        bl,bl
>00561538    je          00561546
 0056153A    mov         eax,dword ptr [ebp+8]
 0056153D    push        eax
 0056153E    xor         eax,eax
 00561540    call        InternalDrawLabel
 00561545    pop         ecx
 00561546    inc         esi
 00561547    test        bl,bl
>00561549    je          0056155D
 0056154B    cmp         esi,7D0
>00561551    jg          0056155D
 00561553    cmp         byte ptr [ebp-1],0
>00561557    je          005614B5
 0056155D    pop         esi
 0056155E    pop         ebx
 0056155F    pop         ecx
 00561560    pop         ebp
 00561561    ret
*}
end;

//00561570
procedure DrawAxisTitle;
begin
{*
 00561570    push        ebp
 00561571    mov         ebp,esp
 00561573    push        ebx
 00561574    push        esi
 00561575    mov         esi,dword ptr [ebp+8]
 00561578    add         esi,0FFFFFFFC
 0056157B    mov         eax,dword ptr [esi]
 0056157D    mov         ebx,dword ptr [eax+90]
 00561583    mov         eax,dword ptr [esi]
 00561585    mov         eax,dword ptr [eax+30]
 00561588    mov         edx,dword ptr [eax+8]
 0056158B    mov         eax,ebx
 0056158D    mov         ecx,dword ptr [eax]
 0056158F    call        dword ptr [ecx+0D8]
 00561595    mov         eax,dword ptr [ebx+280]
 0056159B    mov         eax,dword ptr [eax+10]
 0056159E    mov         edx,dword ptr [ebx+70]
 005615A1    call        TBrush.SetColor
 005615A6    mov         eax,dword ptr [ebx+280]
 005615AC    mov         eax,dword ptr [eax+10]
 005615AF    mov         dl,1
 005615B1    call        TBrush.SetStyle
 005615B6    mov         eax,dword ptr [esi]
 005615B8    cmp         byte ptr [eax+0E0],0
>005615BF    je          005615D5
 005615C1    mov         eax,dword ptr [esi]
 005615C3    mov         edx,dword ptr [eax+38]
 005615C6    mov         eax,dword ptr [esi]
 005615C8    mov         ecx,dword ptr [ebx+292]
 005615CE    call        TCustomChartAxis.DrawTitle
>005615D3    jmp         0056160A
 005615D5    mov         eax,dword ptr [esi]
 005615D7    cmp         byte ptr [eax+8E],0
>005615DE    je          005615F6
 005615E0    mov         eax,dword ptr [esi]
 005615E2    mov         ecx,dword ptr [eax+38]
 005615E5    mov         eax,dword ptr [esi]
 005615E7    mov         edx,dword ptr [eax+0CC]
 005615ED    mov         eax,dword ptr [esi]
 005615EF    call        TCustomChartAxis.DrawTitle
>005615F4    jmp         0056160A
 005615F6    mov         eax,dword ptr [esi]
 005615F8    mov         ecx,dword ptr [eax+0CC]
 005615FE    mov         eax,dword ptr [esi]
 00561600    mov         edx,dword ptr [eax+38]
 00561603    mov         eax,dword ptr [esi]
 00561605    call        TCustomChartAxis.DrawTitle
 0056160A    pop         esi
 0056160B    pop         ebx
 0056160C    pop         ebp
 0056160D    ret
*}
end;

//00561610
procedure DepthAxisLabels;
begin
{*
 00561610    push        ebp
 00561611    mov         ebp,esp
 00561613    add         esp,0FFFFFFF4
 00561616    push        ebx
 00561617    push        esi
 00561618    push        edi
 00561619    xor         eax,eax
 0056161B    mov         dword ptr [ebp-8],eax
 0056161E    xor         eax,eax
 00561620    push        ebp
 00561621    push        561738
 00561626    push        dword ptr fs:[eax]
 00561629    mov         dword ptr fs:[eax],esp
 0056162C    mov         eax,dword ptr [ebp+8]
 0056162F    mov         eax,dword ptr [eax-4]
 00561632    mov         eax,dword ptr [eax+90]
 00561638    mov         eax,dword ptr [eax+2E0]
 0056163E    call        TChartSeriesList.CountActive
 00561643    test        eax,eax
>00561645    jle         00561722
 0056164B    mov         eax,dword ptr [ebp+8]
 0056164E    mov         eax,dword ptr [eax-4]
 00561651    fld         qword ptr [eax+0B8]
 00561657    call        @TRUNC
 0056165C    mov         ebx,eax
 0056165E    mov         eax,dword ptr [ebp+8]
 00561661    mov         eax,dword ptr [eax-4]
 00561664    fld         qword ptr [eax+0B0]
 0056166A    call        @TRUNC
 0056166F    mov         esi,eax
 00561671    sub         esi,ebx
>00561673    jl          00561722
 00561679    inc         esi
 0056167A    mov         dword ptr [ebp-0C],ebx
 0056167D    fild        dword ptr [ebp-0C]
 00561680    mov         eax,dword ptr [ebp+8]
 00561683    mov         eax,dword ptr [eax-4]
 00561686    fsubr       qword ptr [eax+0B0]
 0056168C    fsub        dword ptr ds:[561748]
 00561692    add         esp,0FFFFFFF8
 00561695    fstp        qword ptr [esp]
 00561698    wait
 00561699    mov         eax,dword ptr [ebp+8]
 0056169C    mov         eax,dword ptr [eax-4]
 0056169F    call        TCustomChartAxis.InternalCalcDepthPosValue
 005616A4    mov         dword ptr [ebp-4],eax
 005616A7    mov         eax,dword ptr [ebp+8]
 005616AA    mov         eax,dword ptr [eax-4]
 005616AD    cmp         byte ptr [eax+8C],0
>005616B4    jne         005616C3
 005616B6    mov         eax,dword ptr [ebp+8]
 005616B9    push        eax
 005616BA    mov         eax,dword ptr [ebp-4]
 005616BD    call        AddTick
 005616C2    pop         ecx
 005616C3    mov         eax,dword ptr [ebp+8]
 005616C6    mov         eax,dword ptr [eax-4]
 005616C9    cmp         byte ptr [eax+41],0
>005616CD    je          0056171A
 005616CF    mov         eax,dword ptr [ebp+8]
 005616D2    mov         eax,dword ptr [eax-4]
 005616D5    mov         edi,dword ptr [eax+90]
 005616DB    lea         ecx,[ebp-8]
 005616DE    mov         edx,ebx
 005616E0    mov         eax,edi
 005616E2    call        TCustomAxisPanel.SeriesTitleLegend
 005616E7    cmp         word ptr [edi+302],0
>005616EF    je          0056170A
 005616F1    push        ebx
 005616F2    lea         eax,[ebp-8]
 005616F5    push        eax
 005616F6    mov         eax,dword ptr [ebp+8]
 005616F9    mov         edx,dword ptr [eax-4]
 005616FC    xor         ecx,ecx
 005616FE    mov         eax,dword ptr [edi+304]
 00561704    call        dword ptr [edi+300]
 0056170A    mov         eax,dword ptr [ebp+8]
 0056170D    push        eax
 0056170E    mov         edx,dword ptr [ebp-8]
 00561711    mov         eax,dword ptr [ebp-4]
 00561714    call        DrawThisLabel
 00561719    pop         ecx
 0056171A    inc         ebx
 0056171B    dec         esi
>0056171C    jne         0056167A
 00561722    xor         eax,eax
 00561724    pop         edx
 00561725    pop         ecx
 00561726    pop         ecx
 00561727    mov         dword ptr fs:[eax],edx
 0056172A    push        56173F
 0056172F    lea         eax,[ebp-8]
 00561732    call        @LStrClr
 00561737    ret
>00561738    jmp         @HandleFinally
>0056173D    jmp         0056172F
 0056173F    pop         edi
 00561740    pop         esi
 00561741    pop         ebx
 00561742    mov         esp,ebp
 00561744    pop         ebp
 00561745    ret
*}
end;

//0056174C
procedure TCustomChartAxis.Draw(CalcPosAxis:Boolean);
begin
{*
 0056174C    push        ebp
 0056174D    mov         ebp,esp
 0056174F    add         esp,0FFFFFFD4
 00561752    push        ebx
 00561753    push        esi
 00561754    push        edi
 00561755    xor         ecx,ecx
 00561757    mov         dword ptr [ebp-0C],ecx
 0056175A    mov         ebx,edx
 0056175C    mov         dword ptr [ebp-4],eax
 0056175F    lea         edi,[ebp-4]
 00561762    xor         eax,eax
 00561764    push        ebp
 00561765    push        561940
 0056176A    push        dword ptr fs:[eax]
 0056176D    mov         dword ptr fs:[eax],esp
 00561770    mov         eax,dword ptr [edi]
 00561772    mov         esi,dword ptr [eax+90]
 00561778    mov         eax,dword ptr [edi]
 0056177A    call        TCustomChartAxis.IsDateTime
 0056177F    mov         edx,dword ptr [edi]
 00561781    mov         byte ptr [edx+0C8],al
 00561787    mov         eax,dword ptr [edi]
 00561789    mov         edx,dword ptr [eax+48]
 0056178C    mov         eax,esi
 0056178E    mov         ecx,dword ptr [eax]
 00561790    call        dword ptr [ecx+0D8]
 00561796    mov         eax,dword ptr [edi]
 00561798    call        TCustomChartAxis.CalcIncrement
 0056179D    fstp        qword ptr [ebp-28]
 005617A0    wait
 005617A1    test        bl,bl
>005617A3    je          005617C6
 005617A5    lea         edx,[esi+286]
 005617AB    mov         eax,dword ptr [edi]
 005617AD    call        TCustomChartAxis.GetRectangleEdge
 005617B2    mov         edx,eax
 005617B4    lea         ecx,[esi+286]
 005617BA    mov         eax,dword ptr [edi]
 005617BC    call        TCustomChartAxis.ApplyPosition
 005617C1    mov         edx,dword ptr [edi]
 005617C3    mov         dword ptr [edx+2C],eax
 005617C6    mov         eax,dword ptr [edi]
 005617C8    mov         eax,dword ptr [eax+30]
 005617CB    cmp         dword ptr [eax+14],0
>005617CF    je          005617D8
 005617D1    push        ebp
 005617D2    call        DrawAxisTitle
 005617D7    pop         ecx
 005617D8    mov         eax,dword ptr [edi]
 005617DA    cmp         byte ptr [eax+0C8],0
>005617E1    je          00561834
 005617E3    mov         eax,dword ptr [edi]
 005617E5    cmp         byte ptr [eax+68],0
>005617E9    je          00561834
 005617EB    mov         eax,dword ptr [edi]
 005617ED    fld         qword ptr [eax+8]
 005617F0    fcomp       dword ptr ds:[561950]
 005617F6    fnstsw      al
 005617F8    sahf
>005617F9    je          00561834
 005617FB    mov         eax,dword ptr [edi]
 005617FD    push        dword ptr [eax+0C]
 00561800    push        dword ptr [eax+8]
 00561803    call        FindDateTimeStep
 00561808    mov         byte ptr [ebp-29],al
 0056180B    cmp         byte ptr [ebp-29],19
>0056180F    je          00561838
>00561811    jmp         00561816
 00561813    inc         byte ptr [ebp-29]
 00561816    fld         qword ptr [ebp-28]
 00561819    xor         eax,eax
 0056181B    mov         al,byte ptr [ebp-29]
 0056181E    mov         edx,dword ptr ds:[6E9CD4]
 00561824    fcomp       qword ptr [edx+eax*8]
 00561827    fnstsw      al
 00561829    sahf
>0056182A    jbe         00561838
 0056182C    cmp         byte ptr [ebp-29],18
>00561830    jne         00561813
>00561832    jmp         00561838
 00561834    mov         byte ptr [ebp-29],19
 00561838    xor         eax,eax
 0056183A    mov         dword ptr [ebp-8],eax
 0056183D    push        7D0
 00561842    lea         eax,[ebp-0C]
 00561845    mov         ecx,1
 0056184A    mov         edx,dword ptr ds:[56003C];TTicks
 00561850    call        @DynArraySetLength
 00561855    add         esp,4
 00561858    xor         eax,eax
 0056185A    push        ebp
 0056185B    push        56191D
 00561860    push        dword ptr fs:[eax]
 00561863    mov         dword ptr fs:[eax],esp
 00561866    fld         qword ptr [ebp-28]
 00561869    fcomp       dword ptr ds:[561950]
 0056186F    fnstsw      al
 00561871    sahf
>00561872    ja          00561880
 00561874    cmp         byte ptr [ebp-29],12
>00561878    jb          005618F0
 0056187A    cmp         byte ptr [ebp-29],18
>0056187E    ja          005618F0
 00561880    mov         eax,dword ptr [edi]
 00561882    fld         qword ptr [eax+0B0]
 00561888    mov         eax,dword ptr [edi]
 0056188A    fcomp       qword ptr [eax+0B8]
 00561890    fnstsw      al
 00561892    sahf
>00561893    jb          005618F0
 00561895    mov         eax,dword ptr [edi]
 00561897    call        TCustomChartAxis.CalcLabelStyle
 0056189C    mov         byte ptr [ebp-11],al
 0056189F    mov         al,byte ptr [ebp-11]
 005618A2    sub         al,2
>005618A4    je          005618B0
 005618A6    dec         al
>005618A8    je          005618CC
 005618AA    dec         al
>005618AC    je          005618D5
>005618AE    jmp         005618F0
 005618B0    cmp         word ptr [esi+30A],0
>005618B8    je          005618C3
 005618BA    push        ebp
 005618BB    call        DoCustomLabels
 005618C0    pop         ecx
>005618C1    jmp         005618F0
 005618C3    push        ebp
 005618C4    call        DoNotCustomLabels
 005618C9    pop         ecx
>005618CA    jmp         005618F0
 005618CC    push        ebp
 005618CD    call        AxisLabelsSeries
 005618D2    pop         ecx
>005618D3    jmp         005618F0
 005618D5    mov         eax,dword ptr [edi]
 005618D7    cmp         byte ptr [eax+0E0],0
>005618DE    je          005618E9
 005618E0    push        ebp
 005618E1    call        DepthAxisLabels
 005618E6    pop         ecx
>005618E7    jmp         005618F0
 005618E9    push        ebp
 005618EA    call        AxisLabelsSeries
 005618EF    pop         ecx
 005618F0    push        ebp
 005618F1    call        DrawTicksGrid
 005618F6    pop         ecx
 005618F7    xor         eax,eax
 005618F9    pop         edx
 005618FA    pop         ecx
 005618FB    pop         ecx
 005618FC    mov         dword ptr fs:[eax],edx
 005618FF    push        561924
 00561904    push        0
 00561906    lea         eax,[ebp-0C]
 00561909    mov         ecx,1
 0056190E    mov         edx,dword ptr ds:[56003C];TTicks
 00561914    call        @DynArraySetLength
 00561919    add         esp,4
 0056191C    ret
>0056191D    jmp         @HandleFinally
>00561922    jmp         00561904
 00561924    xor         eax,eax
 00561926    pop         edx
 00561927    pop         ecx
 00561928    pop         ecx
 00561929    mov         dword ptr fs:[eax],edx
 0056192C    push        561947
 00561931    lea         eax,[ebp-0C]
 00561934    mov         edx,dword ptr ds:[56003C];TTicks
 0056193A    call        @DynArrayClear
 0056193F    ret
>00561940    jmp         @HandleFinally
>00561945    jmp         00561931
 00561947    pop         edi
 00561948    pop         esi
 00561949    pop         ebx
 0056194A    mov         esp,ebp
 0056194C    pop         ebp
 0056194D    ret
*}
end;

//00561954
function TCustomChartAxis.SizeTickAxis:Integer;
begin
{*
 00561954    push        ebx
 00561955    mov         ebx,eax
 00561957    mov         eax,dword ptr [ebx+28]
 0056195A    cmp         byte ptr [eax+21],0
>0056195E    je          00561967
 00561960    call        TPen.GetWidth
>00561965    jmp         00561969
 00561967    xor         eax,eax
 00561969    mov         edx,dword ptr [ebx+7C]
 0056196C    cmp         byte ptr [edx+21],0
>00561970    je          00561978
 00561972    add         eax,dword ptr [ebx+88]
 00561978    mov         edx,dword ptr [ebx+78]
 0056197B    cmp         byte ptr [edx+21],0
>0056197F    je          00561989
 00561981    mov         edx,dword ptr [ebx+74]
 00561984    call        0056EDD0
 00561989    pop         ebx
 0056198A    ret
*}
end;

//0056198C
function TCustomChartAxis.SizeTitle:Integer;
begin
{*
 0056198C    mov         edx,dword ptr [eax+30]
 0056198F    mov         ecx,dword ptr [edx+14]
 00561992    push        ecx
 00561993    mov         ecx,dword ptr [eax+34]
 00561996    push        ecx
 00561997    mov         ecx,dword ptr [edx+0C]
 0056199A    mov         edx,dword ptr [edx+8]
 0056199D    call        TCustomChartAxis.InternalCalcSize
 005619A2    ret
*}
end;

//005619A4
function TCustomChartAxis.SizeLabels:Integer;
begin
{*
 005619A4    push        0
 005619A6    mov         edx,dword ptr [eax+54]
 005619A9    push        edx
 005619AA    mov         ecx,dword ptr [eax+44]
 005619AD    mov         edx,dword ptr [eax+48]
 005619B0    call        TCustomChartAxis.InternalCalcSize
 005619B5    ret
*}
end;

//005619B8
function TCustomChartAxis.InternalCalcSize(tmpFont:TFont; tmpAngle:Integer; const tmpText:AnsiString; tmpSize:Integer):Integer;
begin
{*
 005619B8    push        ebp
 005619B9    mov         ebp,esp
 005619BB    add         esp,0FFFFFFF4
 005619BE    push        esi
 005619BF    push        edi
 005619C0    mov         dword ptr [ebp-8],ecx
 005619C3    mov         dword ptr [ebp-4],edx
 005619C6    mov         esi,eax
 005619C8    mov         eax,dword ptr [ebp+8]
 005619CB    test        eax,eax
>005619CD    jne         00561A66
 005619D3    mov         edi,dword ptr [esi+90]
 005619D9    mov         eax,dword ptr [edi+280]
 005619DF    mov         dword ptr [ebp-0C],eax
 005619E2    mov         edx,dword ptr [ebp-4]
 005619E5    mov         eax,edi
 005619E7    mov         ecx,dword ptr [eax]
 005619E9    call        dword ptr [ecx+0D8]
 005619EF    cmp         byte ptr [esi+8E],0
>005619F6    je          00561A30
 005619F8    mov         eax,dword ptr [ebp-8]
 005619FB    sub         eax,1
>005619FE    jb          00561A07
 00561A00    sub         eax,0B3
>00561A05    jne         00561A11
 00561A07    mov         eax,dword ptr [ebp-0C]
 00561A0A    call        TTeeCanvas.FontHeight
>00561A0F    jmp         00561A66
 00561A11    cmp         dword ptr [ebp+0C],0
>00561A15    jne         00561A20
 00561A17    mov         eax,esi
 00561A19    call        TCustomChartAxis.MaxLabelsWidth
>00561A1E    jmp         00561A66
 00561A20    mov         edx,dword ptr [ebp+0C]
 00561A23    mov         eax,dword ptr [edi+280]
 00561A29    mov         ecx,dword ptr [eax]
 00561A2B    call        dword ptr [ecx+60]
>00561A2E    jmp         00561A66
 00561A30    mov         eax,dword ptr [ebp-8]
 00561A33    sub         eax,5A
>00561A36    je          00561A3F
 00561A38    sub         eax,0B4
>00561A3D    jne         00561A49
 00561A3F    mov         eax,dword ptr [ebp-0C]
 00561A42    call        TTeeCanvas.FontHeight
>00561A47    jmp         00561A66
 00561A49    cmp         dword ptr [ebp+0C],0
>00561A4D    jne         00561A58
 00561A4F    mov         eax,esi
 00561A51    call        TCustomChartAxis.MaxLabelsWidth
>00561A56    jmp         00561A66
 00561A58    mov         edx,dword ptr [ebp+0C]
 00561A5B    mov         eax,dword ptr [edi+280]
 00561A61    mov         ecx,dword ptr [eax]
 00561A63    call        dword ptr [ecx+60]
 00561A66    pop         edi
 00561A67    pop         esi
 00561A68    mov         esp,ebp
 00561A6A    pop         ebp
 00561A6B    ret         8
*}
end;

//00561A70
procedure InflateAxisRect(Value:Integer);
begin
{*
 00561A70    push        ebp
 00561A71    mov         ebp,esp
 00561A73    mov         edx,dword ptr [ebp+8]
 00561A76    mov         edx,dword ptr [edx-4]
 00561A79    cmp         byte ptr [edx+8E],0
>00561A80    je          00561AA7
 00561A82    mov         edx,dword ptr [ebp+8]
 00561A85    mov         edx,dword ptr [edx-4]
 00561A88    cmp         byte ptr [edx+8F],0
>00561A8F    je          00561A9C
 00561A91    mov         edx,dword ptr [ebp+8]
 00561A94    mov         edx,dword ptr [edx-8]
 00561A97    add         dword ptr [edx+4],eax
>00561A9A    jmp         00561AC9
 00561A9C    mov         edx,dword ptr [ebp+8]
 00561A9F    mov         edx,dword ptr [edx-8]
 00561AA2    sub         dword ptr [edx+0C],eax
 00561AA5    pop         ebp
 00561AA6    ret
 00561AA7    mov         edx,dword ptr [ebp+8]
 00561AAA    mov         edx,dword ptr [edx-4]
 00561AAD    cmp         byte ptr [edx+8F],0
>00561AB4    je          00561AC1
 00561AB6    mov         edx,dword ptr [ebp+8]
 00561AB9    mov         edx,dword ptr [edx-8]
 00561ABC    sub         dword ptr [edx+8],eax
>00561ABF    jmp         00561AC9
 00561AC1    mov         edx,dword ptr [ebp+8]
 00561AC4    mov         edx,dword ptr [edx-8]
 00561AC7    add         dword ptr [edx],eax
 00561AC9    pop         ebp
 00561ACA    ret
*}
end;

//00561ACC
function InflateAxisPos(Value:Integer; Amount:Integer):Integer;
begin
{*
 00561ACC    push        ebp
 00561ACD    mov         ebp,esp
 00561ACF    mov         ecx,dword ptr [ebp+8]
 00561AD2    mov         ecx,dword ptr [ecx-4]
 00561AD5    cmp         byte ptr [ecx+8E],0
>00561ADC    je          00561AF5
 00561ADE    mov         ecx,dword ptr [ebp+8]
 00561AE1    mov         ecx,dword ptr [ecx-4]
 00561AE4    cmp         byte ptr [ecx+8F],0
>00561AEB    je          00561AF1
 00561AED    sub         eax,edx
>00561AEF    jmp         00561B0A
 00561AF1    add         eax,edx
 00561AF3    pop         ebp
 00561AF4    ret
 00561AF5    mov         ecx,dword ptr [ebp+8]
 00561AF8    mov         ecx,dword ptr [ecx-4]
 00561AFB    cmp         byte ptr [ecx+8F],0
>00561B02    je          00561B08
 00561B04    add         eax,edx
>00561B06    jmp         00561B0A
 00561B08    sub         eax,edx
 00561B0A    pop         ebp
 00561B0B    ret
*}
end;

//00561B0C
function CalcLabelsRect(tmpSize:Integer):Integer;
begin
{*
 00561B0C    push        ebp
 00561B0D    mov         ebp,esp
 00561B0F    mov         edx,dword ptr [ebp+8]
 00561B12    push        edx
 00561B13    call        InflateAxisRect
 00561B18    pop         ecx
 00561B19    mov         eax,dword ptr [ebp+8]
 00561B1C    mov         edx,dword ptr [eax-8]
 00561B1F    mov         eax,dword ptr [ebp+8]
 00561B22    mov         eax,dword ptr [eax-4]
 00561B25    call        TCustomChartAxis.GetRectangleEdge
 00561B2A    pop         ebp
 00561B2B    ret
*}
end;

//00561B2C
procedure TCustomChartAxis.CalcRect(var R:TRect; InflateChartRectangle:Boolean);
begin
{*
 00561B2C    push        ebp
 00561B2D    mov         ebp,esp
 00561B2F    add         esp,0FFFFFFF8
 00561B32    push        ebx
 00561B33    push        esi
 00561B34    push        edi
 00561B35    mov         ebx,ecx
 00561B37    mov         dword ptr [ebp-8],edx
 00561B3A    mov         dword ptr [ebp-4],eax
 00561B3D    lea         edi,[ebp-4]
 00561B40    mov         eax,dword ptr [edi]
 00561B42    call        TCustomChartAxis.IsDateTime
 00561B47    mov         edx,dword ptr [edi]
 00561B49    mov         byte ptr [edx+0C8],al
 00561B4F    test        bl,bl
>00561B51    je          00561BFC
 00561B57    mov         eax,dword ptr [edi]
 00561B59    cmp         byte ptr [eax+0E0],0
>00561B60    je          00561B6F
 00561B62    mov         eax,dword ptr [ebp-8]
 00561B65    mov         eax,dword ptr [eax+8]
 00561B68    mov         edx,dword ptr [edi]
 00561B6A    mov         dword ptr [edx+38],eax
>00561B6D    jmp         00561B8D
 00561B6F    mov         eax,dword ptr [edi]
 00561B71    mov         ebx,dword ptr [eax+30]
 00561B74    cmp         dword ptr [ebx+14],0
>00561B78    je          00561B8D
 00561B7A    push        ebp
 00561B7B    mov         eax,dword ptr [edi]
 00561B7D    call        TCustomChartAxis.SizeTitle
 00561B82    call        CalcLabelsRect
 00561B87    pop         ecx
 00561B88    mov         edx,dword ptr [edi]
 00561B8A    mov         dword ptr [edx+38],eax
 00561B8D    mov         eax,dword ptr [edi]
 00561B8F    cmp         byte ptr [eax+41],0
>00561B93    je          00561BA8
 00561B95    push        ebp
 00561B96    mov         eax,dword ptr [edi]
 00561B98    call        TCustomChartAxis.SizeLabels
 00561B9D    call        CalcLabelsRect
 00561BA2    pop         ecx
 00561BA3    mov         edx,dword ptr [edi]
 00561BA5    mov         dword ptr [edx+5C],eax
 00561BA8    mov         eax,dword ptr [edi]
 00561BAA    call        TCustomChartAxis.SizeTickAxis
 00561BAF    mov         ebx,eax
 00561BB1    mov         eax,dword ptr [edi]
 00561BB3    mov         eax,dword ptr [eax+90]
 00561BB9    mov         edx,dword ptr [edi]
 00561BBB    mov         ecx,dword ptr [eax]
 00561BBD    call        dword ptr [ecx+0F4]
 00561BC3    add         ebx,eax
 00561BC5    test        ebx,ebx
>00561BC7    jle         00561BD2
 00561BC9    push        ebp
 00561BCA    mov         eax,ebx
 00561BCC    call        InflateAxisRect
 00561BD1    pop         ecx
 00561BD2    mov         ecx,dword ptr [ebp-8]
 00561BD5    mov         eax,dword ptr [edi]
 00561BD7    mov         edx,dword ptr [eax+38]
 00561BDA    mov         eax,dword ptr [edi]
 00561BDC    call        TCustomChartAxis.ApplyPosition
 00561BE1    mov         edx,dword ptr [edi]
 00561BE3    mov         dword ptr [edx+38],eax
 00561BE6    mov         ecx,dword ptr [ebp-8]
 00561BE9    mov         eax,dword ptr [edi]
 00561BEB    mov         edx,dword ptr [eax+5C]
 00561BEE    mov         eax,dword ptr [edi]
 00561BF0    call        TCustomChartAxis.ApplyPosition
 00561BF5    mov         edx,dword ptr [edi]
 00561BF7    mov         dword ptr [edx+5C],eax
>00561BFA    jmp         00561C49
 00561BFC    mov         edx,dword ptr [ebp-8]
 00561BFF    mov         eax,dword ptr [edi]
 00561C01    call        TCustomChartAxis.GetRectangleEdge
 00561C06    mov         edx,eax
 00561C08    mov         ecx,dword ptr [ebp-8]
 00561C0B    mov         eax,dword ptr [edi]
 00561C0D    call        TCustomChartAxis.ApplyPosition
 00561C12    mov         ebx,eax
 00561C14    mov         eax,dword ptr [edi]
 00561C16    mov         dword ptr [eax+2C],ebx
 00561C19    push        ebp
 00561C1A    mov         eax,dword ptr [edi]
 00561C1C    call        TCustomChartAxis.SizeTickAxis
 00561C21    mov         edx,eax
 00561C23    mov         eax,ebx
 00561C25    call        InflateAxisPos
 00561C2A    pop         ecx
 00561C2B    mov         esi,eax
 00561C2D    mov         eax,dword ptr [edi]
 00561C2F    mov         dword ptr [eax+5C],esi
 00561C32    push        ebp
 00561C33    mov         eax,dword ptr [edi]
 00561C35    call        TCustomChartAxis.SizeLabels
 00561C3A    mov         edx,eax
 00561C3C    mov         eax,esi
 00561C3E    call        InflateAxisPos
 00561C43    pop         ecx
 00561C44    mov         edx,dword ptr [edi]
 00561C46    mov         dword ptr [edx+38],eax
 00561C49    pop         edi
 00561C4A    pop         esi
 00561C4B    pop         ebx
 00561C4C    pop         ecx
 00561C4D    pop         ecx
 00561C4E    pop         ebp
 00561C4F    ret
*}
end;

//00561C50
procedure TSeriesMarkPosition.Assign(Source:TSeriesMarkPosition);
begin
{*
 00561C50    mov         ecx,dword ptr [edx+4]
 00561C53    mov         dword ptr [eax+4],ecx
 00561C56    mov         ecx,dword ptr [edx+8]
 00561C59    mov         dword ptr [eax+8],ecx
 00561C5C    mov         ecx,dword ptr [edx+0C]
 00561C5F    mov         dword ptr [eax+0C],ecx
 00561C62    mov         ecx,dword ptr [edx+10]
 00561C65    mov         dword ptr [eax+10],ecx
 00561C68    mov         ecx,dword ptr [edx+1C]
 00561C6B    mov         dword ptr [eax+1C],ecx
 00561C6E    mov         ecx,dword ptr [edx+20]
 00561C71    mov         dword ptr [eax+20],ecx
 00561C74    mov         ecx,dword ptr [edx+18]
 00561C77    mov         dword ptr [eax+18],ecx
 00561C7A    mov         edx,dword ptr [edx+24]
 00561C7D    mov         dword ptr [eax+24],edx
 00561C80    ret
*}
end;

//00561C84
function TSeriesMarkPosition.Bounds:TRect;
begin
{*
 00561C84    push        ebx
 00561C85    push        esi
 00561C86    mov         esi,edx
 00561C88    mov         ebx,eax
 00561C8A    mov         eax,dword ptr [ebx+18]
 00561C8D    push        eax
 00561C8E    push        esi
 00561C8F    mov         ecx,dword ptr [ebx+24]
 00561C92    mov         edx,dword ptr [ebx+20]
 00561C95    mov         eax,dword ptr [ebx+1C]
 00561C98    call        Bounds
 00561C9D    pop         esi
 00561C9E    pop         ebx
 00561C9F    ret
*}
end;

//00561CA0
constructor TChartValueList.Create(AOwner:TChartSeries; const AName:AnsiString);
begin
{*
 00561CA0    push        ebp
 00561CA1    mov         ebp,esp
 00561CA3    push        ebx
 00561CA4    push        esi
 00561CA5    push        edi
 00561CA6    test        dl,dl
>00561CA8    je          00561CB2
 00561CAA    add         esp,0FFFFFFF0
 00561CAD    call        @ClassCreate
 00561CB2    mov         esi,ecx
 00561CB4    mov         ebx,edx
 00561CB6    mov         edi,eax
 00561CB8    xor         edx,edx
 00561CBA    mov         eax,edi
 00561CBC    call        TObject.Create
 00561CC1    mov         byte ptr [edi+54],1
 00561CC5    xor         eax,eax
 00561CC7    mov         dword ptr [edi+20],eax
 00561CCA    mov         dword ptr [edi+24],3FF00000
 00561CD1    mov         eax,esi
 00561CD3    mov         dword ptr [edi+30],eax
 00561CD6    mov         eax,dword ptr [eax+80]
 00561CDC    mov         edx,edi
 00561CDE    call        TList.Add
 00561CE3    lea         eax,[edi+28]
 00561CE6    mov         edx,dword ptr [ebp+8]
 00561CE9    call        @LStrAsg
 00561CEE    mov         dl,1
 00561CF0    mov         eax,[006422A4];TList
 00561CF5    call        TObject.Create
 00561CFA    mov         dword ptr [edi+8],eax
 00561CFD    mov         eax,edi
 00561CFF    mov         edx,dword ptr [eax]
 00561D01    call        dword ptr [edx+14]
 00561D04    mov         eax,edi
 00561D06    test        bl,bl
>00561D08    je          00561D19
 00561D0A    call        @AfterConstruction
 00561D0F    pop         dword ptr fs:[0]
 00561D16    add         esp,0C
 00561D19    mov         eax,edi
 00561D1B    pop         edi
 00561D1C    pop         esi
 00561D1D    pop         ebx
 00561D1E    pop         ebp
 00561D1F    ret         4
*}
end;

//00561D24
destructor TChartValueList.Destroy;
begin
{*
 00561D24    push        ebx
 00561D25    push        esi
 00561D26    call        @BeforeDestruction
 00561D2B    mov         ebx,edx
 00561D2D    mov         esi,eax
 00561D2F    mov         eax,dword ptr [esi+8]
 00561D32    call        TObject.Free
 00561D37    mov         edx,ebx
 00561D39    and         dl,0FC
 00561D3C    mov         eax,esi
 00561D3E    call        TPersistent.Destroy
 00561D43    test        bl,bl
>00561D45    jle         00561D4E
 00561D47    mov         eax,esi
 00561D49    call        @ClassDestroy
 00561D4E    pop         esi
 00561D4F    pop         ebx
 00561D50    ret
*}
end;

//00561D54
{*function sub_00561D54:?;
begin
 00561D54    mov         eax,dword ptr [eax+8];TChartValueList.FList:TList
 00561D57    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00561D5A    ret
end;*}

//00561D5C
function TChartValueList.Last:Double;
begin
{*
 00561D5C    push        ebx
 00561D5D    add         esp,0FFFFFFF8
 00561D60    mov         ebx,eax
 00561D62    mov         eax,ebx
 00561D64    mov         edx,dword ptr [eax]
 00561D66    call        dword ptr [edx+24]
 00561D69    mov         edx,eax
 00561D6B    dec         edx
 00561D6C    mov         eax,ebx
 00561D6E    mov         ecx,dword ptr [eax]
 00561D70    call        dword ptr [ecx+0C]
 00561D73    fstp        qword ptr [esp]
 00561D76    wait
 00561D77    fld         qword ptr [esp]
 00561D7A    pop         ecx
 00561D7B    pop         edx
 00561D7C    pop         ebx
 00561D7D    ret
*}
end;

//00561D80
procedure TChartValueList.Delete(ValueIndex:Integer);
begin
{*
 00561D80    push        ebx
 00561D81    push        esi
 00561D82    mov         esi,edx
 00561D84    mov         ebx,eax
 00561D86    mov         edx,esi
 00561D88    mov         eax,dword ptr [ebx+8]
 00561D8B    call        TList.Get
 00561D90    mov         edx,8
 00561D95    call        @FreeMem
 00561D9A    mov         edx,esi
 00561D9C    mov         eax,dword ptr [ebx+8]
 00561D9F    call        TList.Delete
 00561DA4    mov         byte ptr [ebx+54],1
 00561DA8    pop         esi
 00561DA9    pop         ebx
 00561DAA    ret
*}
end;

//00561DAC
procedure TChartValueList.InsertChartValue(ValueIndex:Integer; const Value:Double);
begin
{*
 00561DAC    push        ebp
 00561DAD    mov         ebp,esp
 00561DAF    push        ebx
 00561DB0    push        esi
 00561DB1    mov         esi,edx
 00561DB3    mov         ebx,eax
 00561DB5    mov         eax,8
 00561DBA    call        @GetMem
 00561DBF    mov         edx,dword ptr [ebp+8]
 00561DC2    mov         dword ptr [eax],edx
 00561DC4    mov         edx,dword ptr [ebp+0C]
 00561DC7    mov         dword ptr [eax+4],edx
 00561DCA    mov         ecx,eax
 00561DCC    mov         edx,esi
 00561DCE    mov         eax,dword ptr [ebx+8]
 00561DD1    call        TList.Insert
 00561DD6    mov         byte ptr [ebx+54],1
 00561DDA    pop         esi
 00561DDB    pop         ebx
 00561DDC    pop         ebp
 00561DDD    ret         8
*}
end;

//00561DE0
function TChartValueList.AddChartValue(const Value:Double):Integer;
begin
{*
 00561DE0    push        ebp
 00561DE1    mov         ebp,esp
 00561DE3    push        ebx
 00561DE4    push        esi
 00561DE5    push        edi
 00561DE6    mov         ebx,eax
 00561DE8    mov         eax,8
 00561DED    call        @GetMem
 00561DF2    mov         edi,eax
 00561DF4    mov         eax,dword ptr [ebp+8]
 00561DF7    mov         dword ptr [edi],eax
 00561DF9    mov         eax,dword ptr [ebp+0C]
 00561DFC    mov         dword ptr [edi+4],eax
 00561DFF    cmp         byte ptr [ebx+2C],0
>00561E03    jne         00561E16
 00561E05    mov         edx,edi
 00561E07    mov         eax,dword ptr [ebx+8]
 00561E0A    call        TList.Add
 00561E0F    mov         esi,eax
>00561E11    jmp         00561EAD
 00561E16    mov         eax,dword ptr [ebx+8]
 00561E19    mov         esi,dword ptr [eax+8]
 00561E1C    dec         esi
 00561E1D    cmp         esi,0FFFFFFFF
>00561E20    je          00561E56
 00561E22    cmp         byte ptr [ebx+2C],1
>00561E26    jne         00561E3C
 00561E28    mov         edx,esi
 00561E2A    mov         eax,dword ptr [ebx+8]
 00561E2D    call        TList.Get
 00561E32    fld         qword ptr [eax]
 00561E34    fcomp       qword ptr [ebp+8]
 00561E37    fnstsw      al
 00561E39    sahf
>00561E3A    jbe         00561E56
 00561E3C    cmp         byte ptr [ebx+2C],2
>00561E40    jne         00561E64
 00561E42    mov         edx,esi
 00561E44    mov         eax,dword ptr [ebx+8]
 00561E47    call        TList.Get
 00561E4C    fld         qword ptr [eax]
 00561E4E    fcomp       qword ptr [ebp+8]
 00561E51    fnstsw      al
 00561E53    sahf
>00561E54    jb          00561E64
 00561E56    mov         edx,edi
 00561E58    mov         eax,dword ptr [ebx+8]
 00561E5B    call        TList.Add
 00561E60    mov         esi,eax
>00561E62    jmp         00561EAD
 00561E64    cmp         byte ptr [ebx+2C],1
>00561E68    jne         00561E88
>00561E6A    jmp         00561E6D
 00561E6C    dec         esi
 00561E6D    test        esi,esi
>00561E6F    jl          00561EA0
 00561E71    mov         edx,esi
 00561E73    mov         eax,dword ptr [ebx+8]
 00561E76    call        TList.Get
 00561E7B    fld         qword ptr [eax]
 00561E7D    fcomp       qword ptr [ebp+8]
 00561E80    fnstsw      al
 00561E82    sahf
>00561E83    ja          00561E6C
>00561E85    jmp         00561EA0
 00561E87    dec         esi
 00561E88    test        esi,esi
>00561E8A    jl          00561EA0
 00561E8C    mov         edx,esi
 00561E8E    mov         eax,dword ptr [ebx+8]
 00561E91    call        TList.Get
 00561E96    fld         qword ptr [eax]
 00561E98    fcomp       qword ptr [ebp+8]
 00561E9B    fnstsw      al
 00561E9D    sahf
>00561E9E    jb          00561E87
 00561EA0    inc         esi
 00561EA1    mov         ecx,edi
 00561EA3    mov         edx,esi
 00561EA5    mov         eax,dword ptr [ebx+8]
 00561EA8    call        TList.Insert
 00561EAD    mov         byte ptr [ebx+54],1
 00561EB1    mov         eax,esi
 00561EB3    pop         edi
 00561EB4    pop         esi
 00561EB5    pop         ebx
 00561EB6    pop         ebp
 00561EB7    ret         8
*}
end;

//00561EBC
procedure TChartValueList.SetMultiplier(Value:Double; const Value:Double);
begin
{*
 00561EBC    push        ebp
 00561EBD    mov         ebp,esp
 00561EBF    push        ebx
 00561EC0    mov         ebx,eax
 00561EC2    fld         qword ptr [ebp+8]
 00561EC5    fcomp       qword ptr [ebx+20]
 00561EC8    fnstsw      al
 00561ECA    sahf
>00561ECB    je          00561EF1
 00561ECD    mov         eax,dword ptr [ebp+8]
 00561ED0    mov         dword ptr [ebx+20],eax
 00561ED3    mov         eax,dword ptr [ebp+0C]
 00561ED6    mov         dword ptr [ebx+24],eax
 00561ED9    mov         byte ptr [ebx+54],1
 00561EDD    xor         ecx,ecx
 00561EDF    mov         dl,3
 00561EE1    mov         eax,dword ptr [ebx+30]
 00561EE4    call        TChartSeries.NotifyValue
 00561EE9    mov         eax,dword ptr [ebx+30]
 00561EEC    call        TChartSeries.Repaint
 00561EF1    pop         ebx
 00561EF2    pop         ebp
 00561EF3    ret         8
*}
end;

//00561EF8
function TChartValueList.GetValue(ValueIndex:Integer):Double;
begin
{*
 00561EF8    push        ebx
 00561EF9    push        esi
 00561EFA    add         esp,0FFFFFFF8
 00561EFD    mov         esi,edx
 00561EFF    mov         ebx,eax
 00561F01    mov         edx,esi
 00561F03    mov         eax,dword ptr [ebx+8]
 00561F06    call        TList.Get
 00561F0B    fld         qword ptr [eax]
 00561F0D    fmul        qword ptr [ebx+20]
 00561F10    fstp        qword ptr [esp]
 00561F13    wait
 00561F14    fld         qword ptr [esp]
 00561F17    pop         ecx
 00561F18    pop         edx
 00561F19    pop         esi
 00561F1A    pop         ebx
 00561F1B    ret
*}
end;

//00561F1C
function TChartValueList.Locate(const Value:Double):Integer;
begin
{*
 00561F1C    push        ebp
 00561F1D    mov         ebp,esp
 00561F1F    push        ebx
 00561F20    push        esi
 00561F21    push        edi
 00561F22    mov         edi,eax
 00561F24    mov         eax,edi
 00561F26    mov         edx,dword ptr [eax]
 00561F28    call        dword ptr [edx+24]
 00561F2B    mov         esi,eax
 00561F2D    dec         esi
 00561F2E    test        esi,esi
>00561F30    jl          00561F4E
 00561F32    inc         esi
 00561F33    xor         ebx,ebx
 00561F35    mov         edx,ebx
 00561F37    mov         eax,edi
 00561F39    mov         ecx,dword ptr [eax]
 00561F3B    call        dword ptr [ecx+0C]
 00561F3E    fcomp       qword ptr [ebp+8]
 00561F41    fnstsw      al
 00561F43    sahf
>00561F44    jne         00561F4A
 00561F46    mov         eax,ebx
>00561F48    jmp         00561F51
 00561F4A    inc         ebx
 00561F4B    dec         esi
>00561F4C    jne         00561F35
 00561F4E    or          eax,0FFFFFFFF
 00561F51    pop         edi
 00561F52    pop         esi
 00561F53    pop         ebx
 00561F54    pop         ebp
 00561F55    ret         8
*}
end;

//00561F58
procedure TChartValueList.SetValue(ValueIndex:Integer; const AValue:Double);
begin
{*
 00561F58    push        ebp
 00561F59    mov         ebp,esp
 00561F5B    push        ebx
 00561F5C    push        esi
 00561F5D    mov         esi,edx
 00561F5F    mov         ebx,eax
 00561F61    mov         edx,esi
 00561F63    mov         eax,dword ptr [ebx+8]
 00561F66    call        TList.Get
 00561F6B    mov         edx,dword ptr [ebp+8]
 00561F6E    mov         dword ptr [eax],edx
 00561F70    mov         edx,dword ptr [ebp+0C]
 00561F73    mov         dword ptr [eax+4],edx
 00561F76    mov         byte ptr [ebx+54],1
 00561F7A    mov         ecx,esi
 00561F7C    mov         dl,4
 00561F7E    mov         eax,dword ptr [ebx+30]
 00561F81    call        TChartSeries.NotifyValue
 00561F86    pop         esi
 00561F87    pop         ebx
 00561F88    pop         ebp
 00561F89    ret         8
*}
end;

//00561F8C
function TChartValueList.GetMaxValue:Double;
begin
{*
 00561F8C    push        ebx
 00561F8D    add         esp,0FFFFFFF8
 00561F90    mov         ebx,eax
 00561F92    cmp         byte ptr [ebx+54],0
>00561F96    je          00561F9F
 00561F98    mov         eax,ebx
 00561F9A    call        TChartValueList.RecalcStats
 00561F9F    mov         eax,dword ptr [ebx+10]
 00561FA2    mov         dword ptr [esp],eax
 00561FA5    mov         eax,dword ptr [ebx+14]
 00561FA8    mov         dword ptr [esp+4],eax
 00561FAC    fld         qword ptr [esp]
 00561FAF    pop         ecx
 00561FB0    pop         edx
 00561FB1    pop         ebx
 00561FB2    ret
*}
end;

//00561FB4
function TChartValueList.GetMinValue:Double;
begin
{*
 00561FB4    push        ebx
 00561FB5    add         esp,0FFFFFFF8
 00561FB8    mov         ebx,eax
 00561FBA    cmp         byte ptr [ebx+54],0
>00561FBE    je          00561FC7
 00561FC0    mov         eax,ebx
 00561FC2    call        TChartValueList.RecalcStats
 00561FC7    mov         eax,dword ptr [ebx+18]
 00561FCA    mov         dword ptr [esp],eax
 00561FCD    mov         eax,dword ptr [ebx+1C]
 00561FD0    mov         dword ptr [esp+4],eax
 00561FD4    fld         qword ptr [esp]
 00561FD7    pop         ecx
 00561FD8    pop         edx
 00561FD9    pop         ebx
 00561FDA    ret
*}
end;

//00561FDC
function TChartValueList.GetTotal:Double;
begin
{*
 00561FDC    push        ebx
 00561FDD    add         esp,0FFFFFFF8
 00561FE0    mov         ebx,eax
 00561FE2    cmp         byte ptr [ebx+54],0
>00561FE6    je          00561FEF
 00561FE8    mov         eax,ebx
 00561FEA    call        TChartValueList.RecalcStats
 00561FEF    mov         eax,dword ptr [ebx+40]
 00561FF2    mov         dword ptr [esp],eax
 00561FF5    mov         eax,dword ptr [ebx+44]
 00561FF8    mov         dword ptr [esp+4],eax
 00561FFC    fld         qword ptr [esp]
 00561FFF    pop         ecx
 00562000    pop         edx
 00562001    pop         ebx
 00562002    ret
*}
end;

//00562004
function TChartValueList.GetTotalABS:Double;
begin
{*
 00562004    push        ebx
 00562005    add         esp,0FFFFFFF8
 00562008    mov         ebx,eax
 0056200A    cmp         byte ptr [ebx+54],0
>0056200E    je          00562017
 00562010    mov         eax,ebx
 00562012    call        TChartValueList.RecalcStats
 00562017    mov         eax,dword ptr [ebx+48]
 0056201A    mov         dword ptr [esp],eax
 0056201D    mov         eax,dword ptr [ebx+4C]
 00562020    mov         dword ptr [esp+4],eax
 00562024    fld         qword ptr [esp]
 00562027    pop         ecx
 00562028    pop         edx
 00562029    pop         ebx
 0056202A    ret
*}
end;

//0056202C
procedure TChartValueList.RecalcStats;
begin
{*
 0056202C    push        ebx
 0056202D    push        esi
 0056202E    push        edi
 0056202F    add         esp,0FFFFFFF8
 00562032    mov         ebx,eax
 00562034    mov         eax,ebx
 00562036    mov         edx,dword ptr [eax]
 00562038    call        dword ptr [edx+24]
 0056203B    test        eax,eax
>0056203D    jle         005620F2
 00562043    xor         edx,edx
 00562045    mov         eax,ebx
 00562047    mov         ecx,dword ptr [eax]
 00562049    call        dword ptr [ecx+0C]
 0056204C    fstp        qword ptr [esp]
 0056204F    wait
 00562050    mov         eax,dword ptr [esp]
 00562053    mov         dword ptr [ebx+18],eax
 00562056    mov         eax,dword ptr [esp+4]
 0056205A    mov         dword ptr [ebx+1C],eax
 0056205D    mov         eax,dword ptr [esp]
 00562060    mov         dword ptr [ebx+10],eax
 00562063    mov         eax,dword ptr [esp+4]
 00562067    mov         dword ptr [ebx+14],eax
 0056206A    mov         eax,dword ptr [esp]
 0056206D    mov         dword ptr [ebx+40],eax
 00562070    mov         eax,dword ptr [esp+4]
 00562074    mov         dword ptr [ebx+44],eax
 00562077    fld         qword ptr [esp]
 0056207A    fabs
 0056207C    fstp        qword ptr [ebx+48]
 0056207F    wait
 00562080    mov         eax,ebx
 00562082    mov         edx,dword ptr [eax]
 00562084    call        dword ptr [edx+24]
 00562087    mov         esi,eax
 00562089    dec         esi
 0056208A    test        esi,esi
>0056208C    jle         00562112
 00562092    mov         edi,1
 00562097    mov         edx,edi
 00562099    mov         eax,ebx
 0056209B    mov         ecx,dword ptr [eax]
 0056209D    call        dword ptr [ecx+0C]
 005620A0    fstp        qword ptr [esp]
 005620A3    wait
 005620A4    fld         qword ptr [esp]
 005620A7    fcomp       qword ptr [ebx+18]
 005620AA    fnstsw      al
 005620AC    sahf
>005620AD    jae         005620BE
 005620AF    mov         eax,dword ptr [esp]
 005620B2    mov         dword ptr [ebx+18],eax
 005620B5    mov         eax,dword ptr [esp+4]
 005620B9    mov         dword ptr [ebx+1C],eax
>005620BC    jmp         005620D6
 005620BE    fld         qword ptr [esp]
 005620C1    fcomp       qword ptr [ebx+10]
 005620C4    fnstsw      al
 005620C6    sahf
>005620C7    jbe         005620D6
 005620C9    mov         eax,dword ptr [esp]
 005620CC    mov         dword ptr [ebx+10],eax
 005620CF    mov         eax,dword ptr [esp+4]
 005620D3    mov         dword ptr [ebx+14],eax
 005620D6    fld         qword ptr [ebx+40]
 005620D9    fadd        qword ptr [esp]
 005620DC    fstp        qword ptr [ebx+40]
 005620DF    wait
 005620E0    fld         qword ptr [esp]
 005620E3    fabs
 005620E5    fadd        qword ptr [ebx+48]
 005620E8    fstp        qword ptr [ebx+48]
 005620EB    wait
 005620EC    inc         edi
 005620ED    dec         esi
>005620EE    jne         00562097
>005620F0    jmp         00562112
 005620F2    xor         eax,eax
 005620F4    mov         dword ptr [ebx+18],eax
 005620F7    mov         dword ptr [ebx+1C],eax
 005620FA    xor         eax,eax
 005620FC    mov         dword ptr [ebx+10],eax
 005620FF    mov         dword ptr [ebx+14],eax
 00562102    xor         eax,eax
 00562104    mov         dword ptr [ebx+40],eax
 00562107    mov         dword ptr [ebx+44],eax
 0056210A    xor         eax,eax
 0056210C    mov         dword ptr [ebx+48],eax
 0056210F    mov         dword ptr [ebx+4C],eax
 00562112    mov         byte ptr [ebx+54],0
 00562116    pop         ecx
 00562117    pop         edx
 00562118    pop         edi
 00562119    pop         esi
 0056211A    pop         ebx
 0056211B    ret
*}
end;

//0056211C
procedure TChartValueList.SetDateTime(Value:Boolean);
begin
{*
 0056211C    lea         ecx,[eax+4]
 0056211F    mov         eax,dword ptr [eax+30]
 00562122    xchg        ecx,edx
 00562124    call        TChartSeries.SetIntegerProperty
 00562129    ret
*}
end;

//0056212C
procedure TChartValueList.ClearValues;
begin
{*
 0056212C    push        ebx
 0056212D    push        esi
 0056212E    push        edi
 0056212F    mov         esi,eax
 00562131    mov         eax,dword ptr [esi+8]
 00562134    mov         ebx,dword ptr [eax+8]
 00562137    dec         ebx
 00562138    test        ebx,ebx
>0056213A    jl          00562157
 0056213C    inc         ebx
 0056213D    xor         edi,edi
 0056213F    mov         edx,edi
 00562141    mov         eax,dword ptr [esi+8]
 00562144    call        TList.Get
 00562149    mov         edx,8
 0056214E    call        @FreeMem
 00562153    inc         edi
 00562154    dec         ebx
>00562155    jne         0056213F
 00562157    mov         eax,dword ptr [esi+8]
 0056215A    mov         edx,dword ptr [eax]
 0056215C    call        dword ptr [edx+8]
 0056215F    mov         edx,dword ptr ds:[6E37FC]
 00562165    mov         eax,dword ptr [esi+8]
 00562168    call        TList.SetCapacity
 0056216D    mov         byte ptr [esi+54],1
 00562171    pop         edi
 00562172    pop         esi
 00562173    pop         ebx
 00562174    ret
*}
end;

//00562178
procedure TChartValueList.Scroll;
begin
{*
 00562178    push        ebx
 00562179    push        esi
 0056217A    push        edi
 0056217B    push        ebp
 0056217C    mov         ebx,dword ptr [eax+8]
 0056217F    cmp         dword ptr [ebx+8],0
>00562183    jle         005621C3
 00562185    xor         edx,edx
 00562187    mov         eax,ebx
 00562189    call        TList.Get
 0056218E    mov         ebp,eax
 00562190    mov         edi,dword ptr [ebx+8]
 00562193    dec         edi
 00562194    test        edi,edi
>00562196    jle         005621B6
 00562198    mov         esi,1
 0056219D    mov         edx,esi
 0056219F    mov         eax,ebx
 005621A1    call        TList.Get
 005621A6    mov         ecx,eax
 005621A8    mov         edx,esi
 005621AA    dec         edx
 005621AB    mov         eax,ebx
 005621AD    call        TList.Put
 005621B2    inc         esi
 005621B3    dec         edi
>005621B4    jne         0056219D
 005621B6    mov         edx,dword ptr [ebx+8]
 005621B9    dec         edx
 005621BA    mov         ecx,ebp
 005621BC    mov         eax,ebx
 005621BE    call        TList.Put
 005621C3    pop         ebp
 005621C4    pop         edi
 005621C5    pop         esi
 005621C6    pop         ebx
 005621C7    ret
*}
end;

//005621C8
procedure TChartValueList.SetValueSource(const Value:AnsiString);
begin
{*
 005621C8    push        ebx
 005621C9    push        esi
 005621CA    mov         esi,edx
 005621CC    mov         ebx,eax
 005621CE    mov         eax,dword ptr [ebx+50]
 005621D1    mov         edx,esi
 005621D3    call        @LStrCmp
>005621D8    je          005621EC
 005621DA    lea         eax,[ebx+50]
 005621DD    mov         edx,esi
 005621DF    call        @LStrAsg
 005621E4    mov         eax,dword ptr [ebx+30]
 005621E7    call        TChartSeries.CheckDataSource
 005621EC    pop         esi
 005621ED    pop         ebx
 005621EE    ret
*}
end;

//005621F0
procedure TChartValueList.FillSequence;
begin
{*
 005621F0    push        ebx
 005621F1    push        esi
 005621F2    push        edi
 005621F3    push        ecx
 005621F4    mov         edi,eax
 005621F6    mov         eax,edi
 005621F8    mov         edx,dword ptr [eax]
 005621FA    call        dword ptr [edx+24]
 005621FD    mov         esi,eax
 005621FF    dec         esi
 00562200    test        esi,esi
>00562202    jl          00562221
 00562204    inc         esi
 00562205    xor         ebx,ebx
 00562207    mov         dword ptr [esp],ebx
 0056220A    fild        dword ptr [esp]
 0056220D    add         esp,0FFFFFFF8
 00562210    fstp        qword ptr [esp]
 00562213    wait
 00562214    mov         edx,ebx
 00562216    mov         eax,edi
 00562218    mov         ecx,dword ptr [eax]
 0056221A    call        dword ptr [ecx+10]
 0056221D    inc         ebx
 0056221E    dec         esi
>0056221F    jne         00562207
 00562221    pop         edx
 00562222    pop         edi
 00562223    pop         esi
 00562224    pop         ebx
 00562225    ret
*}
end;

//00562228
function CompareValueIndex(a:Integer; b:Integer):Integer;
begin
{*
 00562228    push        ebp
 00562229    mov         ebp,esp
 0056222B    add         esp,0FFFFFFF0
 0056222E    push        ebx
 0056222F    mov         ebx,edx
 00562231    mov         edx,dword ptr [ebp+8]
 00562234    mov         edx,dword ptr [edx-4]
 00562237    xchg        eax,edx
 00562238    mov         ecx,dword ptr [eax]
 0056223A    call        dword ptr [ecx+0C]
 0056223D    fstp        qword ptr [ebp-8]
 00562240    wait
 00562241    mov         eax,dword ptr [ebp+8]
 00562244    mov         eax,dword ptr [eax-4]
 00562247    mov         edx,ebx
 00562249    mov         ecx,dword ptr [eax]
 0056224B    call        dword ptr [ecx+0C]
 0056224E    fstp        qword ptr [ebp-10]
 00562251    wait
 00562252    fld         qword ptr [ebp-8]
 00562255    fcomp       qword ptr [ebp-10]
 00562258    fnstsw      al
 0056225A    sahf
>0056225B    jae         00562262
 0056225D    or          eax,0FFFFFFFF
>00562260    jmp         00562276
 00562262    fld         qword ptr [ebp-8]
 00562265    fcomp       qword ptr [ebp-10]
 00562268    fnstsw      al
 0056226A    sahf
>0056226B    jbe         00562274
 0056226D    mov         eax,1
>00562272    jmp         00562276
 00562274    xor         eax,eax
 00562276    mov         edx,dword ptr [ebp+8]
 00562279    mov         edx,dword ptr [edx-4]
 0056227C    cmp         byte ptr [edx+2C],2
>00562280    jne         00562284
 00562282    neg         eax
 00562284    pop         ebx
 00562285    mov         esp,ebp
 00562287    pop         ebp
 00562288    ret
*}
end;

//0056228C
procedure PrivateSort(l:Integer; r:Integer);
begin
{*
 0056228C    push        ebp
 0056228D    mov         ebp,esp
 0056228F    add         esp,0FFFFFFF4
 00562292    push        ebx
 00562293    push        esi
 00562294    push        edi
 00562295    mov         dword ptr [ebp-8],edx
 00562298    mov         dword ptr [ebp-4],eax
 0056229B    mov         ebx,dword ptr [ebp-4]
 0056229E    mov         esi,dword ptr [ebp-8]
 005622A1    lea         eax,[esi+ebx]
 005622A4    shr         eax,1
 005622A6    mov         dword ptr [ebp-0C],eax
 005622A9    cmp         esi,ebx
>005622AB    jle         0056230E
>005622AD    jmp         005622B0
 005622AF    inc         ebx
 005622B0    mov         eax,dword ptr [ebp+8]
 005622B3    push        eax
 005622B4    mov         edx,dword ptr [ebp-0C]
 005622B7    mov         eax,ebx
 005622B9    call        CompareValueIndex
 005622BE    pop         ecx
 005622BF    test        eax,eax
>005622C1    jl          005622AF
>005622C3    jmp         005622C6
 005622C5    dec         esi
 005622C6    mov         eax,dword ptr [ebp+8]
 005622C9    push        eax
 005622CA    mov         edx,esi
 005622CC    mov         eax,dword ptr [ebp-0C]
 005622CF    call        CompareValueIndex
 005622D4    pop         ecx
 005622D5    test        eax,eax
>005622D7    jl          005622C5
 005622D9    cmp         esi,ebx
>005622DB    jle         00562304
 005622DD    mov         eax,dword ptr [ebp+8]
 005622E0    mov         eax,dword ptr [eax-4]
 005622E3    mov         eax,dword ptr [eax+30]
 005622E6    mov         ecx,esi
 005622E8    mov         edx,ebx
 005622EA    mov         edi,dword ptr [eax]
 005622EC    call        dword ptr [edi+110]
 005622F2    cmp         ebx,dword ptr [ebp-0C]
>005622F5    jne         005622FC
 005622F7    mov         dword ptr [ebp-0C],esi
>005622FA    jmp         00562304
 005622FC    cmp         esi,dword ptr [ebp-0C]
>005622FF    jne         00562304
 00562301    mov         dword ptr [ebp-0C],ebx
 00562304    cmp         esi,ebx
>00562306    jl          0056230A
 00562308    inc         ebx
 00562309    dec         esi
 0056230A    cmp         esi,ebx
>0056230C    jg          005622B0
 0056230E    cmp         esi,dword ptr [ebp-4]
>00562311    jle         00562322
 00562313    mov         eax,dword ptr [ebp+8]
 00562316    push        eax
 00562317    mov         edx,esi
 00562319    mov         eax,dword ptr [ebp-4]
 0056231C    call        PrivateSort
 00562321    pop         ecx
 00562322    cmp         ebx,dword ptr [ebp-8]
>00562325    jge         00562336
 00562327    mov         eax,dword ptr [ebp+8]
 0056232A    push        eax
 0056232B    mov         edx,dword ptr [ebp-8]
 0056232E    mov         eax,ebx
 00562330    call        PrivateSort
 00562335    pop         ecx
 00562336    pop         edi
 00562337    pop         esi
 00562338    pop         ebx
 00562339    mov         esp,ebp
 0056233B    pop         ebp
 0056233C    ret
*}
end;

//00562340
procedure TChartValueList.Sort;
begin
{*
 00562340    push        ebp
 00562341    mov         ebp,esp
 00562343    push        ecx
 00562344    mov         dword ptr [ebp-4],eax
 00562347    mov         eax,dword ptr [ebp-4]
 0056234A    cmp         byte ptr [eax+2C],0
>0056234E    je          00562364
 00562350    push        ebp
 00562351    mov         eax,dword ptr [ebp-4]
 00562354    mov         edx,dword ptr [eax]
 00562356    call        dword ptr [edx+24]
 00562359    mov         edx,eax
 0056235B    dec         edx
 0056235C    xor         eax,eax
 0056235E    call        PrivateSort
 00562363    pop         ecx
 00562364    pop         ecx
 00562365    pop         ebp
 00562366    ret
*}
end;

//00562368
procedure TChartValueList.Assign(Source:TPersistent);
begin
{*
 00562368    push        ebx
 00562369    push        esi
 0056236A    push        edi
 0056236B    mov         esi,edx
 0056236D    mov         ebx,eax
 0056236F    mov         eax,esi
 00562371    mov         edx,dword ptr ds:[55BEF0];TChartValueList
 00562377    call        @IsClass
 0056237C    test        al,al
>0056237E    je          005623A5
 00562380    mov         edi,esi
 00562382    mov         al,byte ptr [edi+2C]
 00562385    mov         byte ptr [ebx+2C],al
 00562388    mov         al,byte ptr [edi+4]
 0056238B    mov         byte ptr [ebx+4],al
 0056238E    mov         eax,dword ptr [edi+20]
 00562391    mov         dword ptr [ebx+20],eax
 00562394    mov         eax,dword ptr [edi+24]
 00562397    mov         dword ptr [ebx+24],eax
 0056239A    lea         eax,[ebx+50]
 0056239D    mov         edx,dword ptr [edi+50]
 005623A0    call        @LStrAsg
 005623A5    pop         edi
 005623A6    pop         esi
 005623A7    pop         ebx
 005623A8    ret
*}
end;

//005623AC
function TSeriesMarksPositions.GetPosition(Index:Integer):TSeriesMarkPosition;
begin
{*
 005623AC    push        ebx
 005623AD    push        esi
 005623AE    mov         esi,edx
 005623B0    mov         ebx,eax
 005623B2    cmp         esi,dword ptr [ebx+8]
>005623B5    jge         005623D0
 005623B7    mov         edx,esi
 005623B9    mov         eax,ebx
 005623BB    call        TList.Get
 005623C0    test        eax,eax
>005623C2    je          005623D0
 005623C4    mov         edx,esi
 005623C6    mov         eax,ebx
 005623C8    call        TList.Get
 005623CD    pop         esi
 005623CE    pop         ebx
 005623CF    ret
 005623D0    xor         eax,eax
 005623D2    pop         esi
 005623D3    pop         ebx
 005623D4    ret
*}
end;

//005623D8
constructor TSeriesMarks.Create(AOwner:TChartSeries);
begin
{*
 005623D8    push        ebx
 005623D9    push        esi
 005623DA    push        edi
 005623DB    test        dl,dl
>005623DD    je          005623E7
 005623DF    add         esp,0FFFFFFF0
 005623E2    call        @ClassCreate
 005623E7    mov         esi,ecx
 005623E9    mov         ebx,edx
 005623EB    mov         edi,eax
 005623ED    xor         edx,edx
 005623EF    mov         eax,edi
 005623F1    call        TObject.Create
 005623F6    mov         dword ptr [edi+20],esi
 005623F9    mov         byte ptr [edi+1C],2
 005623FD    mov         eax,dword ptr [edi+20]
 00562400    call        TChartSeries.CreateChartPen
 00562405    mov         dword ptr [edi+14],eax
 00562408    mov         dword ptr [edi+0C],80FFFF
 0056240F    mov         eax,dword ptr [edi+20]
 00562412    push        eax
 00562413    mov         eax,dword ptr [eax]
 00562415    mov         eax,dword ptr [eax+144]
 0056241B    push        eax
 0056241C    mov         dl,1
 0056241E    mov         eax,[0056A690];TChartArrowPen
 00562423    call        TChartArrowPen.Create
 00562428    mov         dword ptr [edi+4],eax
 0056242B    mov         dword ptr [edi+8],8
 00562432    mov         eax,dword ptr [edi+20]
 00562435    push        eax
 00562436    mov         eax,dword ptr [eax]
 00562438    mov         eax,dword ptr [eax+144]
 0056243E    push        eax
 0056243F    call        CreateDefaultFont
 00562444    mov         dword ptr [edi+18],eax
 00562447    mov         dl,1
 00562449    mov         eax,[0055D398];TSeriesMarksPositions
 0056244E    call        TObject.Create
 00562453    mov         dword ptr [edi+24],eax
 00562456    mov         eax,edi
 00562458    test        bl,bl
>0056245A    je          0056246B
 0056245C    call        @AfterConstruction
 00562461    pop         dword ptr fs:[0]
 00562468    add         esp,0C
 0056246B    mov         eax,edi
 0056246D    pop         edi
 0056246E    pop         esi
 0056246F    pop         ebx
 00562470    ret
*}
end;

//00562474
procedure TSeriesMarks.Assign(Source:TPersistent);
begin
{*
 00562474    push        ebx
 00562475    push        esi
 00562476    push        edi
 00562477    mov         esi,edx
 00562479    mov         ebx,eax
 0056247B    mov         eax,esi
 0056247D    mov         edx,dword ptr ds:[55D40C];TSeriesMarks
 00562483    call        @IsClass
 00562488    test        al,al
>0056248A    je          005624D5
 0056248C    mov         edi,esi
 0056248E    mov         edx,dword ptr [edi+4]
 00562491    mov         eax,dword ptr [ebx+4]
 00562494    mov         ecx,dword ptr [eax]
 00562496    call        dword ptr [ecx+8]
 00562499    mov         eax,dword ptr [edi+8]
 0056249C    mov         dword ptr [ebx+8],eax
 0056249F    mov         eax,dword ptr [edi+0C]
 005624A2    mov         dword ptr [ebx+0C],eax
 005624A5    mov         al,byte ptr [edi+10]
 005624A8    mov         byte ptr [ebx+10],al
 005624AB    mov         al,byte ptr [edi+11]
 005624AE    mov         byte ptr [ebx+11],al
 005624B1    mov         edx,dword ptr [edi+14]
 005624B4    mov         eax,dword ptr [ebx+14]
 005624B7    mov         ecx,dword ptr [eax]
 005624B9    call        dword ptr [ecx+8]
 005624BC    mov         edx,dword ptr [edi+18]
 005624BF    mov         eax,dword ptr [ebx+18]
 005624C2    mov         ecx,dword ptr [eax]
 005624C4    call        dword ptr [ecx+8]
 005624C7    mov         al,byte ptr [edi+1C]
 005624CA    mov         byte ptr [ebx+1C],al
 005624CD    mov         al,byte ptr [edi+28]
 005624D0    mov         byte ptr [ebx+28],al
>005624D3    jmp         005624DE
 005624D5    mov         edx,esi
 005624D7    mov         eax,ebx
 005624D9    call        TPersistent.Assign
 005624DE    pop         edi
 005624DF    pop         esi
 005624E0    pop         ebx
 005624E1    ret
*}
end;

//005624E4
function TSeriesMarks.IsFontStored(Value:TFont):Boolean;
begin
{*
 005624E4    push        ebx
 005624E5    mov         ebx,eax
 005624E7    mov         eax,dword ptr [ebx+18]
 005624EA    call        IsDefaultFont
 005624EF    xor         al,1
 005624F1    pop         ebx
 005624F2    ret
*}
end;

//005624F4
procedure TSeriesMarks.SetVisible(Value:Boolean);
begin
{*
 005624F4    lea         ecx,[eax+28]
 005624F7    mov         eax,dword ptr [eax+20]
 005624FA    xchg        ecx,edx
 005624FC    call        TChartSeries.SetIntegerProperty
 00562501    ret
*}
end;

//00562504
procedure TSeriesMarks.SetFrame(Value:TChartPen);
begin
{*
 00562504    mov         eax,dword ptr [eax+14]
 00562507    mov         ecx,dword ptr [eax]
 00562509    call        dword ptr [ecx+8]
 0056250C    ret
*}
end;

//00562510
procedure TSeriesMarks.SetArrow(Value:TChartArrowPen);
begin
{*
 00562510    mov         eax,dword ptr [eax+4]
 00562513    mov         ecx,dword ptr [eax]
 00562515    call        dword ptr [ecx+8]
 00562518    ret
*}
end;

//0056251C
procedure TSeriesMarks.SetArrowLength(Value:Integer);
begin
{*
 0056251C    lea         ecx,[eax+8]
 0056251F    mov         eax,dword ptr [eax+20]
 00562522    xchg        ecx,edx
 00562524    call        TChartSeries.SetBooleanProperty
 00562529    ret
*}
end;

//0056252C
procedure TSeriesMarks.SetBackColor(Value:TColor);
begin
{*
 0056252C    lea         ecx,[eax+0C]
 0056252F    mov         eax,dword ptr [eax+20]
 00562532    xchg        ecx,edx
 00562534    call        TChartSeries.SetColorProperty
 00562539    ret
*}
end;

//0056253C
procedure TSeriesMarks.SetTransparent(Value:Boolean);
begin
{*
 0056253C    lea         ecx,[eax+10];TSeriesMarks.Transparent:Boolean
 0056253F    mov         eax,dword ptr [eax+20];TSeriesMarks.FParent:TChartSeries
 00562542    xchg        ecx,edx
 00562544    call        TChartSeries.SetIntegerProperty
 00562549    ret
*}
end;

//0056254C
procedure TSeriesMarks.UsePosition(Index:Integer; var MarkPosition:TSeriesMarkPosition);
begin
{*
 0056254C    push        ebx
 0056254D    push        esi
 0056254E    push        edi
 0056254F    mov         edi,ecx
 00562551    mov         esi,edx
 00562553    mov         ebx,dword ptr [eax+24]
>00562556    jmp         00562561
 00562558    xor         edx,edx
 0056255A    mov         eax,ebx
 0056255C    call        TList.Add
 00562561    cmp         esi,dword ptr [ebx+8]
>00562564    jge         00562558
 00562566    mov         edx,esi
 00562568    mov         eax,ebx
 0056256A    call        TList.Get
 0056256F    test        eax,eax
>00562571    jne         0056258E
 00562573    mov         dl,1
 00562575    mov         eax,[0055D338];TSeriesMarkPosition
 0056257A    call        TObject.Create
 0056257F    mov         byte ptr [eax+14],0
 00562583    mov         ecx,eax
 00562585    mov         edx,esi
 00562587    mov         eax,ebx
 00562589    call        TList.Put
 0056258E    mov         edx,esi
 00562590    mov         eax,ebx
 00562592    call        TSeriesMarksPositions.GetPosition
 00562597    cmp         byte ptr [eax+14],0
>0056259B    je          005625A7
 0056259D    mov         edx,dword ptr [edi]
 0056259F    xchg        eax,edx
 005625A0    call        TSeriesMarkPosition.Assign
>005625A5    jmp         005625AE
 005625A7    mov         edx,dword ptr [edi]
 005625A9    call        TSeriesMarkPosition.Assign
 005625AE    pop         edi
 005625AF    pop         esi
 005625B0    pop         ebx
 005625B1    ret
*}
end;

//005625B4
procedure TSeriesMarks.ClearPositions;
begin
{*
 005625B4    push        ebx
 005625B5    push        esi
 005625B6    push        edi
 005625B7    mov         edi,dword ptr [eax+24]
 005625BA    mov         ebx,dword ptr [edi+8]
 005625BD    dec         ebx
 005625BE    test        ebx,ebx
>005625C0    jl          005625D7
 005625C2    inc         ebx
 005625C3    xor         esi,esi
 005625C5    mov         edx,esi
 005625C7    mov         eax,edi
 005625C9    call        TSeriesMarksPositions.GetPosition
 005625CE    call        TObject.Free
 005625D3    inc         esi
 005625D4    dec         ebx
>005625D5    jne         005625C5
 005625D7    mov         eax,edi
 005625D9    mov         edx,dword ptr [eax]
 005625DB    call        dword ptr [edx+8]
 005625DE    pop         edi
 005625DF    pop         esi
 005625E0    pop         ebx
 005625E1    ret
*}
end;

//005625E4
destructor TSeriesMarks.Destroy;
begin
{*
 005625E4    push        ebx
 005625E5    push        esi
 005625E6    call        @BeforeDestruction
 005625EB    mov         ebx,edx
 005625ED    mov         esi,eax
 005625EF    mov         eax,dword ptr [esi+18]
 005625F2    call        TObject.Free
 005625F7    mov         eax,dword ptr [esi+14]
 005625FA    call        TObject.Free
 005625FF    mov         eax,dword ptr [esi+4]
 00562602    call        TObject.Free
 00562607    mov         eax,esi
 00562609    call        TSeriesMarks.ClearPositions
 0056260E    mov         eax,dword ptr [esi+24]
 00562611    call        TObject.Free
 00562616    mov         edx,ebx
 00562618    and         dl,0FC
 0056261B    mov         eax,esi
 0056261D    call        TPersistent.Destroy
 00562622    test        bl,bl
>00562624    jle         0056262D
 00562626    mov         eax,esi
 00562628    call        @ClassDestroy
 0056262D    pop         esi
 0056262E    pop         ebx
 0056262F    ret
*}
end;

//00562630
procedure TSeriesMarks.SetFont(Value:TFont);
begin
{*
 00562630    push        esi
 00562631    mov         esi,eax
 00562633    mov         eax,dword ptr [esi+18]
 00562636    mov         ecx,dword ptr [eax]
 00562638    call        dword ptr [ecx+8]
 0056263B    pop         esi
 0056263C    ret
*}
end;

//00562640
procedure TSeriesMarks.SetStyle(Value:TSeriesMarksStyle);
begin
{*
 00562640    cmp         dl,byte ptr [eax+1C]
>00562643    je          00562650
 00562645    mov         byte ptr [eax+1C],dl
 00562648    mov         eax,dword ptr [eax+20]
 0056264B    call        TChartSeries.Repaint
 00562650    ret
*}
end;

//00562654
procedure TSeriesMarks.SetClip(Value:Boolean);
begin
{*
 00562654    lea         ecx,[eax+11];TSeriesMarks.Clip:Boolean
 00562657    mov         eax,dword ptr [eax+20];TSeriesMarks.FParent:TChartSeries
 0056265A    xchg        ecx,edx
 0056265C    call        TChartSeries.SetIntegerProperty
 00562661    ret
*}
end;

//00562664
procedure DrawLine(const LineSt:AnsiString);
begin
{*
 00562664    push        ebp
 00562665    mov         ebp,esp
 00562667    push        ebx
 00562668    push        esi
 00562669    mov         esi,eax
 0056266B    mov         eax,dword ptr [ebp+8]
 0056266E    mov         eax,dword ptr [eax+8]
 00562671    mov         eax,dword ptr [eax-4]
 00562674    mov         eax,dword ptr [eax+20]
 00562677    mov         eax,dword ptr [eax+68]
 0056267A    mov         ebx,dword ptr [eax+280]
 00562680    mov         eax,ebx
 00562682    mov         edx,dword ptr [eax]
 00562684    call        dword ptr [edx+9C]
 0056268A    test        al,al
>0056268C    je          005626B4
 0056268E    mov         eax,dword ptr [ebp+8]
 00562691    mov         eax,dword ptr [eax+8]
 00562694    mov         eax,dword ptr [eax-4]
 00562697    mov         eax,dword ptr [eax+2C]
 0056269A    push        eax
 0056269B    push        esi
 0056269C    mov         eax,dword ptr [ebp+8]
 0056269F    mov         ecx,dword ptr [eax-8]
 005626A2    mov         eax,dword ptr [ebp+8]
 005626A5    mov         edx,dword ptr [eax-4]
 005626A8    mov         eax,ebx
 005626AA    mov         ebx,dword ptr [eax]
 005626AC    call        dword ptr [ebx+124]
>005626B2    jmp         005626C8
 005626B4    push        esi
 005626B5    mov         eax,dword ptr [ebp+8]
 005626B8    mov         ecx,dword ptr [eax-8]
 005626BB    mov         eax,dword ptr [ebp+8]
 005626BE    mov         edx,dword ptr [eax-4]
 005626C1    mov         eax,ebx
 005626C3    mov         ebx,dword ptr [eax]
 005626C5    call        dword ptr [ebx+5C]
 005626C8    pop         esi
 005626C9    pop         ebx
 005626CA    pop         ebp
 005626CB    ret
*}
end;

//005626CC
procedure DrawMarkText;
begin
{*
 005626CC    push        ebp
 005626CD    mov         ebp,esp
 005626CF    xor         ecx,ecx
 005626D1    push        ecx
 005626D2    push        ecx
 005626D3    push        ecx
 005626D4    push        ecx
 005626D5    push        ecx
 005626D6    push        ecx
 005626D7    push        ebx
 005626D8    push        esi
 005626D9    xor         eax,eax
 005626DB    push        ebp
 005626DC    push        5627F0
 005626E1    push        dword ptr fs:[eax]
 005626E4    mov         dword ptr fs:[eax],esp
 005626E7    mov         eax,dword ptr [ebp+8]
 005626EA    mov         eax,dword ptr [eax+8]
 005626ED    mov         eax,dword ptr [eax+1C]
 005626F0    mov         edx,dword ptr [ebp+8]
 005626F3    mov         edx,dword ptr [edx+8]
 005626F6    mov         edx,dword ptr [edx+24]
 005626F9    sar         edx,1
>005626FB    jns         00562700
 005626FD    adc         edx,0
 00562700    add         eax,edx
 00562702    mov         dword ptr [ebp-4],eax
 00562705    mov         eax,dword ptr [ebp+8]
 00562708    mov         eax,dword ptr [eax+8]
 0056270B    mov         eax,dword ptr [eax+20]
 0056270E    mov         dword ptr [ebp-8],eax
 00562711    lea         eax,[ebp-10]
 00562714    mov         edx,dword ptr ds:[6E9CD0]
 0056271A    mov         dl,byte ptr [edx]
 0056271C    call        @LStrFromChar
 00562721    mov         eax,dword ptr [ebp-10]
 00562724    mov         edx,dword ptr [ebp+8]
 00562727    mov         edx,dword ptr [edx+0C]
 0056272A    call        AnsiPos
 0056272F    mov         ebx,eax
 00562731    test        ebx,ebx
>00562733    jle         005627C8
 00562739    lea         eax,[ebp-0C]
 0056273C    mov         edx,dword ptr [ebp+8]
 0056273F    mov         edx,dword ptr [edx+0C]
 00562742    call        @LStrLAsg
 00562747    mov         eax,dword ptr [ebp+8]
 0056274A    mov         eax,dword ptr [eax-4]
 0056274D    mov         eax,dword ptr [eax+20]
 00562750    mov         eax,dword ptr [eax+68]
 00562753    mov         eax,dword ptr [eax+280]
 00562759    call        TTeeCanvas.FontHeight
 0056275E    mov         esi,eax
 00562760    push        ebp
 00562761    lea         eax,[ebp-14]
 00562764    push        eax
 00562765    mov         ecx,ebx
 00562767    dec         ecx
 00562768    mov         edx,1
 0056276D    mov         eax,dword ptr [ebp-0C]
 00562770    call        @LStrCopy
 00562775    mov         eax,dword ptr [ebp-14]
 00562778    call        DrawLine
 0056277D    pop         ecx
 0056277E    lea         eax,[ebp-0C]
 00562781    push        eax
 00562782    lea         edx,[ebx+1]
 00562785    mov         ecx,0FF
 0056278A    mov         eax,dword ptr [ebp-0C]
 0056278D    call        @LStrCopy
 00562792    add         dword ptr [ebp-8],esi
 00562795    lea         eax,[ebp-18]
 00562798    mov         edx,dword ptr ds:[6E9CD0]
 0056279E    mov         dl,byte ptr [edx]
 005627A0    call        @LStrFromChar
 005627A5    mov         eax,dword ptr [ebp-18]
 005627A8    mov         edx,dword ptr [ebp-0C]
 005627AB    call        AnsiPos
 005627B0    mov         ebx,eax
 005627B2    test        ebx,ebx
>005627B4    jne         00562760
 005627B6    cmp         dword ptr [ebp-0C],0
>005627BA    je          005627D5
 005627BC    push        ebp
 005627BD    mov         eax,dword ptr [ebp-0C]
 005627C0    call        DrawLine
 005627C5    pop         ecx
>005627C6    jmp         005627D5
 005627C8    push        ebp
 005627C9    mov         eax,dword ptr [ebp+8]
 005627CC    mov         eax,dword ptr [eax+0C]
 005627CF    call        DrawLine
 005627D4    pop         ecx
 005627D5    xor         eax,eax
 005627D7    pop         edx
 005627D8    pop         ecx
 005627D9    pop         ecx
 005627DA    mov         dword ptr fs:[eax],edx
 005627DD    push        5627F7
 005627E2    lea         eax,[ebp-18]
 005627E5    mov         edx,4
 005627EA    call        @LStrArrayClr
 005627EF    ret
>005627F0    jmp         @HandleFinally
>005627F5    jmp         005627E2
 005627F7    pop         esi
 005627F8    pop         ebx
 005627F9    mov         esp,ebp
 005627FB    pop         ebp
 005627FC    ret
*}
end;

//00562800
procedure TSeriesMarks.Draw(Index:Integer; AColor:TColor; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 00562800    push        ebp
 00562801    mov         ebp,esp
 00562803    add         esp,0FFFFFFD0
 00562806    push        ebx
 00562807    push        esi
 00562808    push        edi
 00562809    mov         dword ptr [ebp-8],ecx
 0056280C    mov         dword ptr [ebp-4],eax
 0056280F    lea         ecx,[ebp+8]
 00562812    mov         eax,dword ptr [ebp-4]
 00562815    call        TSeriesMarks.UsePosition
 0056281A    mov         eax,dword ptr [ebp-4]
 0056281D    mov         esi,dword ptr [eax+20]
 00562820    mov         eax,dword ptr [esi+68]
 00562823    mov         ebx,dword ptr [eax+280]
 00562829    mov         al,byte ptr [eax+270]
 0056282F    mov         byte ptr [ebp-15],al
 00562832    mov         eax,dword ptr [ebp-4]
 00562835    mov         eax,dword ptr [eax+4]
 00562838    cmp         byte ptr [eax+21],0
>0056283C    je          005628EF
 00562842    mov         edx,eax
 00562844    mov         eax,dword ptr [ebx+0C]
 00562847    mov         ecx,dword ptr [eax]
 00562849    call        dword ptr [ecx+8]
 0056284C    mov         dl,1
 0056284E    mov         eax,dword ptr [ebx+10]
 00562851    call        TBrush.SetStyle
 00562856    cmp         byte ptr ds:[6E37F4],0
>0056285D    je          00562898
 0056285F    mov         eax,dword ptr [ebx+0C]
 00562862    call        TPen.GetColor
 00562867    cmp         eax,dword ptr [ebp-8]
>0056286A    je          0056287C
 0056286C    mov         eax,dword ptr [ebx+0C]
 0056286F    call        TPen.GetColor
 00562874    mov         edx,dword ptr [esi+68]
 00562877    cmp         eax,dword ptr [edx+70]
>0056287A    jne         00562898
 0056287C    mov         eax,dword ptr [esi+68]
 0056287F    cmp         dword ptr [eax+70],0
 00562883    sete        al
 00562886    and         eax,7F
 00562889    mov         edx,dword ptr [eax*4+6E3810]
 00562890    mov         eax,dword ptr [ebx+0C]
 00562893    call        TPen.SetColor
 00562898    cmp         byte ptr [ebp-15],0
>0056289C    je          005628CB
 0056289E    mov         eax,dword ptr [ebp+8]
 005628A1    mov         eax,dword ptr [eax+0C]
 005628A4    push        eax
 005628A5    mov         eax,dword ptr [ebp+8]
 005628A8    mov         eax,dword ptr [eax+10]
 005628AB    push        eax
 005628AC    mov         eax,dword ptr [ebp-4]
 005628AF    mov         eax,dword ptr [eax+2C]
 005628B2    push        eax
 005628B3    mov         eax,dword ptr [ebp+8]
 005628B6    mov         ecx,dword ptr [eax+8]
 005628B9    mov         eax,dword ptr [ebp+8]
 005628BC    mov         edx,dword ptr [eax+4]
 005628BF    mov         eax,ebx
 005628C1    mov         esi,dword ptr [eax]
 005628C3    call        dword ptr [esi+0E8]
>005628C9    jmp         005628EF
 005628CB    mov         eax,dword ptr [ebp+8]
 005628CE    mov         eax,dword ptr [eax+0C]
 005628D1    push        eax
 005628D2    mov         eax,dword ptr [ebp+8]
 005628D5    mov         eax,dword ptr [eax+10]
 005628D8    push        eax
 005628D9    mov         eax,dword ptr [ebp+8]
 005628DC    mov         ecx,dword ptr [eax+8]
 005628DF    mov         eax,dword ptr [ebp+8]
 005628E2    mov         edx,dword ptr [eax+4]
 005628E5    mov         eax,ebx
 005628E7    mov         esi,dword ptr [eax]
 005628E9    call        dword ptr [esi+84]
 005628EF    cmp         byte ptr [ebp-15],0
>005628F3    je          00562961
 005628F5    mov         eax,ebx
 005628F7    mov         edx,dword ptr [eax]
 005628F9    call        dword ptr [edx+9C]
 005628FF    test        al,al
>00562901    jne         00562961
 00562903    mov         eax,dword ptr [ebp+8]
 00562906    mov         esi,dword ptr [eax+0C]
 00562909    mov         eax,dword ptr [ebp+8]
 0056290C    sub         esi,dword ptr [eax+1C]
 0056290F    mov         eax,dword ptr [ebp+8]
 00562912    mov         eax,dword ptr [eax+10]
 00562915    mov         edx,dword ptr [ebp+8]
 00562918    sub         eax,dword ptr [edx+20]
 0056291B    mov         dword ptr [ebp-14],eax
 0056291E    mov         eax,dword ptr [ebp-4]
 00562921    mov         eax,dword ptr [eax+2C]
 00562924    push        eax
 00562925    lea         eax,[ebp-10]
 00562928    push        eax
 00562929    mov         eax,dword ptr [ebp+8]
 0056292C    mov         ecx,dword ptr [eax+10]
 0056292F    mov         eax,dword ptr [ebp+8]
 00562932    mov         edx,dword ptr [eax+0C]
 00562935    mov         eax,ebx
 00562937    mov         edi,dword ptr [eax]
 00562939    call        dword ptr [edi+0A4]
 0056293F    lea         ecx,[ebp-20]
 00562942    mov         edx,dword ptr [ebp-0C]
 00562945    sub         edx,dword ptr [ebp-14]
 00562948    mov         eax,dword ptr [ebp-10]
 0056294B    sub         eax,esi
 0056294D    call        Point
 00562952    mov         eax,dword ptr [ebp+8]
 00562955    mov         edx,dword ptr [ebp-20]
 00562958    mov         dword ptr [eax+1C],edx
 0056295B    mov         edx,dword ptr [ebp-1C]
 0056295E    mov         dword ptr [eax+20],edx
 00562961    mov         eax,dword ptr [ebp-4]
 00562964    mov         eax,dword ptr [eax+14]
 00562967    cmp         byte ptr [eax+21],0
>0056296B    jne         0056297A
 0056296D    mov         eax,dword ptr [ebp-4]
 00562970    cmp         byte ptr [eax+10],0
>00562974    jne         00562A0D
 0056297A    mov         eax,dword ptr [ebp-4]
 0056297D    mov         edx,dword ptr [eax+0C]
 00562980    mov         eax,dword ptr [ebx+10]
 00562983    call        TBrush.SetColor
 00562988    mov         eax,dword ptr [ebp-4]
 0056298B    movzx       eax,byte ptr [eax+10]
 0056298F    mov         dl,byte ptr [eax+6E3818]
 00562995    mov         eax,dword ptr [ebx+10]
 00562998    call        TBrush.SetStyle
 0056299D    mov         eax,dword ptr [ebp-4]
 005629A0    mov         edx,dword ptr [eax+14]
 005629A3    mov         eax,ebx
 005629A5    call        TTeeCanvas.AssignVisiblePen
 005629AA    cmp         byte ptr [ebp-15],0
>005629AE    je          005629DF
 005629B0    mov         eax,ebx
 005629B2    mov         edx,dword ptr [eax]
 005629B4    call        dword ptr [edx+9C]
 005629BA    test        al,al
>005629BC    je          005629DF
 005629BE    lea         edx,[ebp-30]
 005629C1    mov         eax,dword ptr [ebp+8]
 005629C4    call        TSeriesMarkPosition.Bounds
 005629C9    lea         edx,[ebp-30]
 005629CC    mov         eax,dword ptr [ebp-4]
 005629CF    mov         ecx,dword ptr [eax+2C]
 005629D2    inc         ecx
 005629D3    mov         eax,ebx
 005629D5    mov         esi,dword ptr [eax]
 005629D7    call        dword ptr [esi+10C]
>005629DD    jmp         005629F4
 005629DF    lea         edx,[ebp-30]
 005629E2    mov         eax,dword ptr [ebp+8]
 005629E5    call        TSeriesMarkPosition.Bounds
 005629EA    lea         edx,[ebp-30]
 005629ED    mov         eax,ebx
 005629EF    mov         ecx,dword ptr [eax]
 005629F1    call        dword ptr [ecx+70]
 005629F4    mov         eax,dword ptr [ebp-4]
 005629F7    mov         esi,dword ptr [eax+14]
 005629FA    cmp         byte ptr [esi+21],0
>005629FE    je          00562A0D
 00562A00    mov         eax,esi
 00562A02    call        TPen.GetWidth
 00562A07    mov         edx,dword ptr [ebp+8]
 00562A0A    add         dword ptr [edx+20],eax
 00562A0D    mov         dl,1
 00562A0F    mov         eax,dword ptr [ebx+10]
 00562A12    call        TBrush.SetStyle
 00562A17    mov         edx,6
 00562A1C    mov         eax,ebx
 00562A1E    mov         ecx,dword ptr [eax]
 00562A20    call        dword ptr [ecx+28]
 00562A23    push        ebp
 00562A24    call        DrawMarkText
 00562A29    pop         ecx
 00562A2A    xor         edx,edx
 00562A2C    mov         eax,ebx
 00562A2E    mov         ecx,dword ptr [eax]
 00562A30    call        dword ptr [ecx+28]
 00562A33    pop         edi
 00562A34    pop         esi
 00562A35    pop         ebx
 00562A36    mov         esp,ebp
 00562A38    pop         ebp
 00562A39    ret         8
*}
end;

//00562A3C
constructor TTeeFunction.Create(AOwner:TComponent);
begin
{*
 00562A3C    push        ebx
 00562A3D    push        esi
 00562A3E    test        dl,dl
>00562A40    je          00562A4A
 00562A42    add         esp,0FFFFFFF0
 00562A45    call        @ClassCreate
 00562A4A    mov         ebx,edx
 00562A4C    mov         esi,eax
 00562A4E    xor         edx,edx
 00562A50    mov         eax,esi
 00562A52    call        TComponent.Create
 00562A57    mov         byte ptr [esi+41],1
 00562A5B    mov         byte ptr [esi+39],1
 00562A5F    mov         byte ptr [esi+38],0
 00562A63    xor         eax,eax
 00562A65    mov         dword ptr [esi+30],eax
 00562A68    mov         dword ptr [esi+34],eax
 00562A6B    mov         eax,esi
 00562A6D    test        bl,bl
>00562A6F    je          00562A80
 00562A71    call        @AfterConstruction
 00562A76    pop         dword ptr fs:[0]
 00562A7D    add         esp,0C
 00562A80    mov         eax,esi
 00562A82    pop         esi
 00562A83    pop         ebx
 00562A84    ret
*}
end;

//00562A88
procedure TTeeFunction.ReCalculate;
begin
{*
 00562A88    cmp         byte ptr [eax+40],0
>00562A8C    jne         00562A9C
 00562A8E    mov         edx,dword ptr [eax+3C]
 00562A91    test        edx,edx
>00562A93    je          00562A9C
 00562A95    mov         eax,edx
 00562A97    call        TChartSeries.CheckDataSource
 00562A9C    ret
*}
end;

//00562AA0
function TTeeFunction.Calculate(Series:TChartSeries; First:Integer; Last:Integer):Double;
begin
{*
 00562AA0    push        ebp
 00562AA1    mov         ebp,esp
 00562AA3    add         esp,0FFFFFFF8
 00562AA6    xor         eax,eax
 00562AA8    mov         dword ptr [ebp-8],eax
 00562AAB    mov         dword ptr [ebp-4],eax
 00562AAE    fld         qword ptr [ebp-8]
 00562AB1    pop         ecx
 00562AB2    pop         ecx
 00562AB3    pop         ebp
 00562AB4    ret         4
*}
end;

//00562AB8
function TTeeFunction.ValueList(ASeries:TChartSeries):TChartValueList;
begin
{*
 00562AB8    push        ebp
 00562AB9    mov         ebp,esp
 00562ABB    push        0
 00562ABD    push        ebx
 00562ABE    push        esi
 00562ABF    mov         esi,edx
 00562AC1    mov         ebx,eax
 00562AC3    xor         eax,eax
 00562AC5    push        ebp
 00562AC6    push        562B20
 00562ACB    push        dword ptr fs:[eax]
 00562ACE    mov         dword ptr fs:[eax],esp
 00562AD1    mov         eax,dword ptr [ebx+3C]
 00562AD4    mov         edx,dword ptr [eax]
 00562AD6    call        dword ptr [edx+104]
 00562ADC    mov         edx,dword ptr [eax+50]
 00562ADF    lea         eax,[ebp-4]
 00562AE2    call        @LStrLAsg
 00562AE7    cmp         dword ptr [ebp-4],0
>00562AEB    jne         00562AFB
 00562AED    mov         eax,esi
 00562AEF    mov         edx,dword ptr [eax]
 00562AF1    call        dword ptr [edx+104]
 00562AF7    mov         ebx,eax
>00562AF9    jmp         00562B0A
 00562AFB    mov         edx,dword ptr [ebp-4]
 00562AFE    mov         eax,esi
 00562B00    mov         ecx,dword ptr [eax]
 00562B02    call        dword ptr [ecx+0F0]
 00562B08    mov         ebx,eax
 00562B0A    xor         eax,eax
 00562B0C    pop         edx
 00562B0D    pop         ecx
 00562B0E    pop         ecx
 00562B0F    mov         dword ptr fs:[eax],edx
 00562B12    push        562B27
 00562B17    lea         eax,[ebp-4]
 00562B1A    call        @LStrClr
 00562B1F    ret
>00562B20    jmp         @HandleFinally
>00562B25    jmp         00562B17
 00562B27    mov         eax,ebx
 00562B29    pop         esi
 00562B2A    pop         ebx
 00562B2B    pop         ecx
 00562B2C    pop         ebp
 00562B2D    ret
*}
end;

//00562B30
procedure TTeeFunction.CalculateAllPoints(Source:TChartSeries; NotMandatorySource:TChartValueList);
begin
{*
 00562B30    push        ebx
 00562B31    push        esi
 00562B32    push        edi
 00562B33    push        ebp
 00562B34    add         esp,0FFFFFFD8
 00562B37    mov         edi,ecx
 00562B39    mov         esi,edx
 00562B3B    mov         ebx,eax
 00562B3D    mov         eax,dword ptr [ebx+3C]
 00562B40    mov         dword ptr [esp+10],eax
 00562B44    push        0FF
 00562B46    or          ecx,0FFFFFFFF
 00562B49    mov         edx,esi
 00562B4B    mov         eax,ebx
 00562B4D    mov         ebp,dword ptr [eax]
 00562B4F    call        dword ptr [ebp+3C]
 00562B52    fstp        qword ptr [esp+8]
 00562B56    wait
 00562B57    mov         eax,dword ptr [esp+10]
 00562B5B    cmp         byte ptr [eax+0FA],0
>00562B62    jne         00562BBF
 00562B64    mov         eax,edi
 00562B66    call        TChartValueList.GetMinValue
 00562B6B    fstp        qword ptr [esp]
 00562B6E    wait
 00562B6F    push        dword ptr [esp+4]
 00562B73    push        dword ptr [esp+4]
 00562B77    push        dword ptr [esp+14]
 00562B7B    push        dword ptr [esp+14]
 00562B7F    mov         eax,esi
 00562B81    call        TChartSeries.YMandatory
 00562B86    mov         edx,eax
 00562B88    mov         eax,ebx
 00562B8A    call        TTeeFunction.AddFunctionXY
 00562B8F    mov         eax,edi
 00562B91    call        TChartValueList.GetMaxValue
 00562B96    fstp        qword ptr [esp]
 00562B99    wait
 00562B9A    push        dword ptr [esp+4]
 00562B9E    push        dword ptr [esp+4]
 00562BA2    push        dword ptr [esp+14]
 00562BA6    push        dword ptr [esp+14]
 00562BAA    mov         eax,esi
 00562BAC    call        TChartSeries.YMandatory
 00562BB1    mov         edx,eax
 00562BB3    mov         eax,ebx
 00562BB5    call        TTeeFunction.AddFunctionXY
>00562BBA    jmp         00562CB5
 00562BBF    mov         eax,esi
 00562BC1    call        TChartSeries.YMandatory
 00562BC6    test        al,al
>00562BC8    jne         00562C31
 00562BCA    mov         eax,dword ptr [ebx+3C]
 00562BCD    call        TChartSeries.YMandatory
 00562BD2    test        al,al
>00562BD4    je          00562C31
 00562BD6    mov         eax,edi
 00562BD8    call        TChartValueList.GetMaxValue
 00562BDD    fstp        qword ptr [esp+14]
 00562BE1    wait
 00562BE2    mov         eax,edi
 00562BE4    call        TChartValueList.GetMinValue
 00562BE9    fsubr       qword ptr [esp+14]
 00562BED    fmul        dword ptr ds:[562CC0]
 00562BF3    fstp        tbyte ptr [esp+1C]
 00562BF7    wait
 00562BF8    mov         eax,edi
 00562BFA    call        TChartValueList.GetMinValue
 00562BFF    fld         tbyte ptr [esp+1C]
 00562C03    faddp       st(1),st
 00562C05    fstp        qword ptr [esp]
 00562C08    wait
 00562C09    push        dword ptr [esp+4]
 00562C0D    push        dword ptr [esp+4]
 00562C11    push        dword ptr [esp+14]
 00562C15    push        dword ptr [esp+14]
 00562C19    mov         ecx,20000000
 00562C1E    xor         edx,edx
 00562C20    mov         eax,dword ptr [esp+20]
 00562C24    mov         ebx,dword ptr [eax]
 00562C26    call        dword ptr [ebx+90]
>00562C2C    jmp         00562CB5
 00562C31    mov         eax,edi
 00562C33    call        TChartValueList.GetMaxValue
 00562C38    fstp        qword ptr [esp+14]
 00562C3C    wait
 00562C3D    mov         eax,edi
 00562C3F    call        TChartValueList.GetMinValue
 00562C44    fsubr       qword ptr [esp+14]
 00562C48    fmul        dword ptr ds:[562CC0]
 00562C4E    fstp        tbyte ptr [esp+1C]
 00562C52    wait
 00562C53    mov         eax,edi
 00562C55    call        TChartValueList.GetMinValue
 00562C5A    fld         tbyte ptr [esp+1C]
 00562C5E    faddp       st(1),st
 00562C60    fstp        qword ptr [esp]
 00562C63    wait
 00562C64    mov         eax,dword ptr [ebx+3C]
 00562C67    call        TChartSeries.YMandatory
 00562C6C    test        al,al
>00562C6E    je          00562C92
 00562C70    push        dword ptr [esp+4]
 00562C74    push        dword ptr [esp+4]
 00562C78    push        dword ptr [esp+14]
 00562C7C    push        dword ptr [esp+14]
 00562C80    mov         eax,esi
 00562C82    call        TChartSeries.YMandatory
 00562C87    mov         edx,eax
 00562C89    mov         eax,ebx
 00562C8B    call        TTeeFunction.AddFunctionXY
>00562C90    jmp         00562CB5
 00562C92    push        dword ptr [esp+0C]
 00562C96    push        dword ptr [esp+0C]
 00562C9A    push        dword ptr [esp+0C]
 00562C9E    push        dword ptr [esp+0C]
 00562CA2    mov         ecx,20000000
 00562CA7    xor         edx,edx
 00562CA9    mov         eax,dword ptr [esp+20]
 00562CAD    mov         ebx,dword ptr [eax]
 00562CAF    call        dword ptr [ebx+90]
 00562CB5    add         esp,28
 00562CB8    pop         ebp
 00562CB9    pop         edi
 00562CBA    pop         esi
 00562CBB    pop         ebx
 00562CBC    ret
*}
end;

//00562CC4
procedure TTeeFunction.CalculatePeriod(Source:TChartSeries; FirstIndex:Integer; const tmpX:Double; LastIndex:Integer);
begin
{*
 00562CC4    push        ebp
 00562CC5    mov         ebp,esp
 00562CC7    push        ecx
 00562CC8    push        ebx
 00562CC9    push        esi
 00562CCA    push        edi
 00562CCB    mov         dword ptr [ebp-4],ecx
 00562CCE    mov         esi,edx
 00562CD0    mov         ebx,eax
 00562CD2    push        dword ptr [ebp+10]
 00562CD5    push        dword ptr [ebp+0C]
 00562CD8    mov         eax,dword ptr [ebp+8]
 00562CDB    push        eax
 00562CDC    mov         ecx,dword ptr [ebp-4]
 00562CDF    mov         edx,esi
 00562CE1    mov         eax,ebx
 00562CE3    mov         edi,dword ptr [eax]
 00562CE5    call        dword ptr [edi+3C]
 00562CE8    add         esp,0FFFFFFF8
 00562CEB    fstp        qword ptr [esp]
 00562CEE    wait
 00562CEF    mov         eax,esi
 00562CF1    call        TChartSeries.YMandatory
 00562CF6    mov         edx,eax
 00562CF8    mov         eax,ebx
 00562CFA    call        TTeeFunction.AddFunctionXY
 00562CFF    pop         edi
 00562D00    pop         esi
 00562D01    pop         ebx
 00562D02    pop         ecx
 00562D03    pop         ebp
 00562D04    ret         0C
*}
end;

//00562D08
procedure TTeeFunction.CalculateByPeriod(Source:TChartSeries; NotMandatorySource:TChartValueList);
begin
{*
 00562D08    push        ebx
 00562D09    push        esi
 00562D0A    push        edi
 00562D0B    push        ebp
 00562D0C    add         esp,0FFFFFFC8
 00562D0F    mov         dword ptr [esp+4],ecx
 00562D13    mov         dword ptr [esp],edx
 00562D16    mov         esi,eax
 00562D18    mov         eax,dword ptr [esi+3C]
 00562D1B    mov         dword ptr [esp+34],eax
 00562D1F    xor         eax,eax
 00562D21    mov         dword ptr [esp+10],eax
 00562D25    mov         eax,dword ptr [esp]
 00562D28    call        TChartSeries.Count
 00562D2D    mov         edi,eax
 00562D2F    mov         edx,dword ptr [esp+10]
 00562D33    mov         eax,dword ptr [esp+4]
 00562D37    mov         ecx,dword ptr [eax]
 00562D39    call        dword ptr [ecx+0C]
 00562D3C    fstp        qword ptr [esp+18]
 00562D40    wait
 00562D41    push        dword ptr [esi+34]
 00562D44    push        dword ptr [esi+30]
 00562D47    call        FindDateTimeStep
 00562D4C    mov         byte ptr [esp+30],al
 00562D50    xor         eax,eax
 00562D52    mov         dword ptr [esp+28],eax
 00562D56    mov         dword ptr [esp+2C],eax
 00562D5A    cmp         byte ptr [esi+38],0
>00562D5E    jne         00562D97
 00562D60    fld         qword ptr [esi+30]
 00562D63    call        @ROUND
 00562D68    mov         ebx,eax
 00562D6A    add         ebx,dword ptr [esp+10]
 00562D6E    dec         ebx
 00562D6F    mov         edx,dword ptr [esp+10]
 00562D73    mov         eax,dword ptr [esp+4]
 00562D77    mov         ecx,dword ptr [eax]
 00562D79    call        dword ptr [ecx+0C]
 00562D7C    fstp        qword ptr [esp+20]
 00562D80    wait
 00562D81    cmp         edi,ebx
>00562D83    jle         00562DF9
 00562D85    mov         edx,ebx
 00562D87    mov         eax,dword ptr [esp+4]
 00562D8B    mov         ecx,dword ptr [eax]
 00562D8D    call        dword ptr [ecx+0C]
 00562D90    fstp        qword ptr [esp+28]
 00562D94    wait
>00562D95    jmp         00562DF9
 00562D97    mov         ebx,dword ptr [esp+10]
 00562D9B    mov         eax,dword ptr [esp+18]
 00562D9F    mov         dword ptr [esp+20],eax
 00562DA3    mov         eax,dword ptr [esp+1C]
 00562DA7    mov         dword ptr [esp+24],eax
 00562DAB    push        dword ptr [esi+34]
 00562DAE    push        dword ptr [esi+30]
 00562DB1    mov         al,byte ptr [esp+38]
 00562DB5    push        eax
 00562DB6    lea         ecx,[esp+24]
 00562DBA    mov         eax,dword ptr [esp+40]
 00562DBE    mov         eax,dword ptr [eax+50]
 00562DC1    mov         dl,1
 00562DC3    call        TCustomChartAxis.IncDecDateTime
 00562DC8    fld         tbyte ptr ds:[562ED8]
 00562DCE    fmul        qword ptr [esi+30]
 00562DD1    fsubr       qword ptr [esp+18]
 00562DD5    fstp        qword ptr [esp+28]
 00562DD9    wait
>00562DDA    jmp         00562DF2
 00562DDC    lea         edx,[ebx+1]
 00562DDF    mov         eax,dword ptr [esp+4]
 00562DE3    mov         ecx,dword ptr [eax]
 00562DE5    call        dword ptr [ecx+0C]
 00562DE8    fcomp       qword ptr [esp+18]
 00562DEC    fnstsw      al
 00562DEE    sahf
>00562DEF    jae         00562DF9
 00562DF1    inc         ebx
 00562DF2    mov         eax,edi
 00562DF4    dec         eax
 00562DF5    cmp         ebx,eax
>00562DF7    jl          00562DDC
 00562DF9    mov         byte ptr [esp+31],0
 00562DFE    cmp         edi,ebx
>00562E00    jle         00562EAE
 00562E06    mov         al,byte ptr [esi+39]
 00562E09    test        al,al
>00562E0B    jne         00562E1F
 00562E0D    mov         eax,dword ptr [esp+20]
 00562E11    mov         dword ptr [esp+8],eax
 00562E15    mov         eax,dword ptr [esp+24]
 00562E19    mov         dword ptr [esp+0C],eax
>00562E1D    jmp         00562E48
 00562E1F    cmp         al,2
>00562E21    jne         00562E35
 00562E23    mov         eax,dword ptr [esp+28]
 00562E27    mov         dword ptr [esp+8],eax
 00562E2B    mov         eax,dword ptr [esp+2C]
 00562E2F    mov         dword ptr [esp+0C],eax
>00562E33    jmp         00562E48
 00562E35    fld         qword ptr [esp+20]
 00562E39    fadd        qword ptr [esp+28]
 00562E3D    fmul        dword ptr ds:[562EE4]
 00562E43    fstp        qword ptr [esp+8]
 00562E47    wait
 00562E48    cmp         byte ptr [esi+38],1
>00562E4C    jne         00562E69
 00562E4E    mov         edx,dword ptr [esp+10]
 00562E52    mov         eax,dword ptr [esp+4]
 00562E56    mov         ecx,dword ptr [eax]
 00562E58    call        dword ptr [ecx+0C]
 00562E5B    fcomp       qword ptr [esp+18]
 00562E5F    fnstsw      al
 00562E61    sahf
>00562E62    jae         00562E69
 00562E64    mov         byte ptr [esp+31],1
 00562E69    cmp         byte ptr [esi+38],0
 00562E6D    sete        al
 00562E70    or          al,byte ptr [esp+31]
>00562E74    je          00562E90
 00562E76    push        dword ptr [esp+0C]
 00562E7A    push        dword ptr [esp+0C]
 00562E7E    push        ebx
 00562E7F    mov         ecx,dword ptr [esp+1C]
 00562E83    mov         edx,dword ptr [esp+0C]
 00562E87    mov         eax,esi
 00562E89    mov         ebp,dword ptr [eax]
 00562E8B    call        dword ptr [ebp+30]
>00562E8E    jmp         00562EAE
 00562E90    push        dword ptr [esp+0C]
 00562E94    push        dword ptr [esp+0C]
 00562E98    push        0
 00562E9A    push        0
 00562E9C    mov         eax,dword ptr [esp+10]
 00562EA0    call        TChartSeries.YMandatory
 00562EA5    mov         edx,eax
 00562EA7    mov         eax,esi
 00562EA9    call        TTeeFunction.AddFunctionXY
 00562EAE    cmp         byte ptr [esi+38],0
 00562EB2    sete        al
 00562EB5    or          al,byte ptr [esp+31]
>00562EB9    je          00562EC0
 00562EBB    inc         ebx
 00562EBC    mov         dword ptr [esp+10],ebx
 00562EC0    mov         eax,edi
 00562EC2    dec         eax
 00562EC3    cmp         eax,dword ptr [esp+10]
>00562EC7    jge         00562D50
 00562ECD    add         esp,38
 00562ED0    pop         ebp
 00562ED1    pop         edi
 00562ED2    pop         esi
 00562ED3    pop         ebx
 00562ED4    ret
*}
end;

//00562EE8
procedure TTeeFunction.AddFunctionXY(YMandatorySource:Boolean; tmpX:Double; tmpY:Double);
begin
{*
 00562EE8    push        ebp
 00562EE9    mov         ebp,esp
 00562EEB    push        ebx
 00562EEC    mov         ebx,eax
 00562EEE    test        dl,dl
>00562EF0    jne         00562EFD
 00562EF2    lea         edx,[ebp+8]
 00562EF5    lea         eax,[ebp+10]
 00562EF8    call        SwapDouble
 00562EFD    push        dword ptr [ebp+14]
 00562F00    push        dword ptr [ebp+10]
 00562F03    push        dword ptr [ebp+0C]
 00562F06    push        dword ptr [ebp+8]
 00562F09    mov         ecx,20000000
 00562F0E    xor         edx,edx
 00562F10    mov         eax,dword ptr [ebx+3C]
 00562F13    mov         ebx,dword ptr [eax]
 00562F15    call        dword ptr [ebx+90]
 00562F1B    pop         ebx
 00562F1C    pop         ebp
 00562F1D    ret         10
*}
end;

//00562F20
procedure CalculateMovingFunction;
begin
{*
 00562F20    push        ebp
 00562F21    mov         ebp,esp
 00562F23    push        ecx
 00562F24    push        ebx
 00562F25    push        esi
 00562F26    push        edi
 00562F27    mov         eax,dword ptr [ebp+8]
 00562F2A    mov         eax,dword ptr [eax-4]
 00562F2D    fld         qword ptr [eax+30]
 00562F30    call        @ROUND
 00562F35    mov         dword ptr [ebp-4],eax
 00562F38    mov         ebx,dword ptr [ebp-4]
 00562F3B    dec         ebx
 00562F3C    mov         eax,dword ptr [ebp+8]
 00562F3F    mov         eax,dword ptr [eax-8]
 00562F42    call        TChartSeries.Count
 00562F47    mov         esi,eax
 00562F49    dec         esi
 00562F4A    sub         esi,ebx
>00562F4C    jl          00562F9E
 00562F4E    inc         esi
 00562F4F    mov         eax,dword ptr [ebp+8]
 00562F52    mov         eax,dword ptr [eax-0C]
 00562F55    mov         edx,ebx
 00562F57    mov         ecx,dword ptr [eax]
 00562F59    call        dword ptr [ecx+0C]
 00562F5C    add         esp,0FFFFFFF8
 00562F5F    fstp        qword ptr [esp]
 00562F62    wait
 00562F63    push        ebx
 00562F64    mov         ecx,ebx
 00562F66    sub         ecx,dword ptr [ebp-4]
 00562F69    inc         ecx
 00562F6A    mov         eax,dword ptr [ebp+8]
 00562F6D    mov         edx,dword ptr [eax-8]
 00562F70    mov         eax,dword ptr [ebp+8]
 00562F73    mov         eax,dword ptr [eax-4]
 00562F76    mov         edi,dword ptr [eax]
 00562F78    call        dword ptr [edi+3C]
 00562F7B    add         esp,0FFFFFFF8
 00562F7E    fstp        qword ptr [esp]
 00562F81    wait
 00562F82    mov         eax,dword ptr [ebp+8]
 00562F85    mov         eax,dword ptr [eax-8]
 00562F88    call        TChartSeries.YMandatory
 00562F8D    mov         edx,eax
 00562F8F    mov         eax,dword ptr [ebp+8]
 00562F92    mov         eax,dword ptr [eax-4]
 00562F95    call        TTeeFunction.AddFunctionXY
 00562F9A    inc         ebx
 00562F9B    dec         esi
>00562F9C    jne         00562F4F
 00562F9E    pop         edi
 00562F9F    pop         esi
 00562FA0    pop         ebx
 00562FA1    pop         ecx
 00562FA2    pop         ebp
 00562FA3    ret
*}
end;

//00562FA4
procedure CalculateFunctionMany;
begin
{*
 00562FA4    push        ebp
 00562FA5    mov         ebp,esp
 00562FA7    add         esp,0FFFFFFEC
 00562FAA    push        ebx
 00562FAB    push        esi
 00562FAC    push        edi
 00562FAD    xor         eax,eax
 00562FAF    mov         dword ptr [ebp-14],eax
 00562FB2    xor         eax,eax
 00562FB4    push        ebp
 00562FB5    push        563066
 00562FBA    push        dword ptr fs:[eax]
 00562FBD    mov         dword ptr fs:[eax],esp
 00562FC0    mov         eax,dword ptr [ebp+8]
 00562FC3    mov         eax,dword ptr [eax-8]
 00562FC6    call        TChartSeries.Count
 00562FCB    mov         esi,eax
 00562FCD    dec         esi
 00562FCE    test        esi,esi
>00562FD0    jl          00563050
 00562FD2    inc         esi
 00562FD3    xor         ebx,ebx
 00562FD5    mov         eax,dword ptr [ebp+8]
 00562FD8    mov         eax,dword ptr [eax-0C]
 00562FDB    mov         edx,ebx
 00562FDD    mov         ecx,dword ptr [eax]
 00562FDF    call        dword ptr [ecx+0C]
 00562FE2    fstp        qword ptr [ebp-8]
 00562FE5    wait
 00562FE6    mov         eax,dword ptr [ebp+8]
 00562FE9    mov         eax,dword ptr [eax-4]
 00562FEC    mov         eax,dword ptr [eax+3C]
 00562FEF    mov         edx,dword ptr [eax+48]
 00562FF2    mov         eax,dword ptr [ebp+8]
 00562FF5    mov         eax,dword ptr [eax-4]
 00562FF8    mov         ecx,ebx
 00562FFA    mov         edi,dword ptr [eax]
 00562FFC    call        dword ptr [edi+40]
 00562FFF    fstp        qword ptr [ebp-10]
 00563002    wait
 00563003    mov         eax,dword ptr [ebp+8]
 00563006    cmp         byte ptr [eax-0D],0
>0056300A    jne         00563017
 0056300C    lea         edx,[ebp-10]
 0056300F    lea         eax,[ebp-8]
 00563012    call        SwapDouble
 00563017    push        dword ptr [ebp-4]
 0056301A    push        dword ptr [ebp-8]
 0056301D    push        dword ptr [ebp-0C]
 00563020    push        dword ptr [ebp-10]
 00563023    lea         ecx,[ebp-14]
 00563026    mov         eax,dword ptr [ebp+8]
 00563029    mov         eax,dword ptr [eax-8]
 0056302C    mov         edx,ebx
 0056302E    mov         edi,dword ptr [eax]
 00563030    call        dword ptr [edi+60]
 00563033    mov         edx,dword ptr [ebp-14]
 00563036    mov         eax,dword ptr [ebp+8]
 00563039    mov         eax,dword ptr [eax-4]
 0056303C    mov         eax,dword ptr [eax+3C]
 0056303F    mov         ecx,20000000
 00563044    mov         edi,dword ptr [eax]
 00563046    call        dword ptr [edi+90]
 0056304C    inc         ebx
 0056304D    dec         esi
>0056304E    jne         00562FD5
 00563050    xor         eax,eax
 00563052    pop         edx
 00563053    pop         ecx
 00563054    pop         ecx
 00563055    mov         dword ptr fs:[eax],edx
 00563058    push        56306D
 0056305D    lea         eax,[ebp-14]
 00563060    call        @LStrClr
 00563065    ret
>00563066    jmp         @HandleFinally
>0056306B    jmp         0056305D
 0056306D    pop         edi
 0056306E    pop         esi
 0056306F    pop         ebx
 00563070    mov         esp,ebp
 00563072    pop         ebp
 00563073    ret
*}
end;

//00563074
procedure TTeeFunction.AddPoints(Source:TChartSeries);
begin
{*
 00563074    push        ebp
 00563075    mov         ebp,esp
 00563077    add         esp,0FFFFFFF0
 0056307A    push        ebx
 0056307B    mov         dword ptr [ebp-8],edx
 0056307E    mov         dword ptr [ebp-4],eax
 00563081    cmp         dword ptr [ebp-8],0
>00563085    je          0056311E
 0056308B    mov         eax,dword ptr [ebp-4]
 0056308E    mov         ebx,dword ptr [eax+3C]
 00563091    mov         eax,dword ptr [ebp-8]
 00563094    call        TChartSeries.YMandatory
 00563099    mov         byte ptr [ebp-0D],al
 0056309C    cmp         byte ptr [ebp-0D],0
>005630A0    je          005630B0
 005630A2    mov         eax,dword ptr [ebp-8]
 005630A5    mov         eax,dword ptr [eax+84]
 005630AB    mov         dword ptr [ebp-0C],eax
>005630AE    jmp         005630BC
 005630B0    mov         eax,dword ptr [ebp-8]
 005630B3    mov         eax,dword ptr [eax+8C]
 005630B9    mov         dword ptr [ebp-0C],eax
 005630BC    mov         eax,dword ptr [ebx+48]
 005630BF    cmp         dword ptr [eax+8],1
>005630C3    jle         005630CE
 005630C5    push        ebp
 005630C6    call        CalculateFunctionMany
 005630CB    pop         ecx
>005630CC    jmp         0056311E
 005630CE    mov         eax,dword ptr [ebp-8]
 005630D1    call        TChartSeries.Count
 005630D6    test        eax,eax
>005630D8    jle         0056311E
 005630DA    mov         eax,dword ptr [ebx+0A4]
 005630E0    cmp         byte ptr [eax+42],0
>005630E4    je          005630EF
 005630E6    push        ebp
 005630E7    call        CalculateMovingFunction
 005630EC    pop         ecx
>005630ED    jmp         0056311E
 005630EF    mov         eax,dword ptr [ebp-4]
 005630F2    fld         qword ptr [eax+30]
 005630F5    fcomp       dword ptr ds:[563124]
 005630FB    fnstsw      al
 005630FD    sahf
>005630FE    jne         00563110
 00563100    mov         ecx,dword ptr [ebp-0C]
 00563103    mov         edx,dword ptr [ebp-8]
 00563106    mov         eax,dword ptr [ebp-4]
 00563109    mov         ebx,dword ptr [eax]
 0056310B    call        dword ptr [ebx+34]
>0056310E    jmp         0056311E
 00563110    mov         ecx,dword ptr [ebp-0C]
 00563113    mov         edx,dword ptr [ebp-8]
 00563116    mov         eax,dword ptr [ebp-4]
 00563119    mov         ebx,dword ptr [eax]
 0056311B    call        dword ptr [ebx+38]
 0056311E    pop         ebx
 0056311F    mov         esp,ebp
 00563121    pop         ebp
 00563122    ret
*}
end;

//00563128
procedure TTeeFunction.SetParentSeries(AParent:TChartSeries);
begin
{*
 00563128    push        esi
 00563129    mov         esi,eax
 0056312B    mov         eax,dword ptr [esi+3C]
 0056312E    cmp         edx,eax
>00563130    je          0056314A
 00563132    test        eax,eax
>00563134    je          0056313E
 00563136    xor         ecx,ecx
 00563138    mov         dword ptr [eax+0A4],ecx
 0056313E    mov         eax,edx
 00563140    mov         edx,esi
 00563142    mov         ecx,dword ptr [eax]
 00563144    call        dword ptr [ecx+140]
 0056314A    pop         esi
 0056314B    ret
*}
end;

//0056314C
function TTeeFunction.CalculateMany(SeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 0056314C    add         esp,0FFFFFFF8
 0056314F    xor         eax,eax
 00563151    mov         dword ptr [esp],eax
 00563154    mov         dword ptr [esp+4],eax
 00563158    fld         qword ptr [esp]
 0056315B    pop         ecx
 0056315C    pop         edx
 0056315D    ret
*}
end;

//00563160
procedure TTeeFunction.Assign(Source:TPersistent);
begin
{*
 00563160    push        ebx
 00563161    push        esi
 00563162    mov         esi,edx
 00563164    mov         ebx,eax
 00563166    mov         eax,esi
 00563168    mov         edx,dword ptr ds:[55D7A0];TTeeFunction
 0056316E    call        @IsClass
 00563173    test        al,al
>00563175    je          00563191
 00563177    mov         eax,esi
 00563179    mov         edx,dword ptr [eax+30]
 0056317C    mov         dword ptr [ebx+30],edx
 0056317F    mov         edx,dword ptr [eax+34]
 00563182    mov         dword ptr [ebx+34],edx
 00563185    mov         dl,byte ptr [eax+38]
 00563188    mov         byte ptr [ebx+38],dl
 0056318B    mov         al,byte ptr [eax+39]
 0056318E    mov         byte ptr [ebx+39],al
 00563191    pop         esi
 00563192    pop         ebx
 00563193    ret
*}
end;

//00563194
procedure TTeeFunction.SetPeriod(Value:Double; const Value:Double);
begin
{*
 00563194    push        ebp
 00563195    mov         ebp,esp
 00563197    push        0
 00563199    mov         edx,eax
 0056319B    xor         eax,eax
 0056319D    push        ebp
 0056319E    push        56320C
 005631A3    push        dword ptr fs:[eax]
 005631A6    mov         dword ptr fs:[eax],esp
 005631A9    fld         qword ptr [ebp+8]
 005631AC    fcomp       dword ptr ds:[563218]
 005631B2    fnstsw      al
 005631B4    sahf
>005631B5    jae         005631D8
 005631B7    lea         edx,[ebp-4]
 005631BA    mov         eax,[006E9DAC]
 005631BF    call        LoadResString
 005631C4    mov         ecx,dword ptr [ebp-4]
 005631C7    mov         dl,1
 005631C9    mov         eax,[00567B78];ChartException
 005631CE    call        Exception.Create
 005631D3    call        @RaiseExcept
 005631D8    fld         qword ptr [edx+30]
 005631DB    fcomp       qword ptr [ebp+8]
 005631DE    fnstsw      al
 005631E0    sahf
>005631E1    je          005631F6
 005631E3    mov         eax,dword ptr [ebp+8]
 005631E6    mov         dword ptr [edx+30],eax
 005631E9    mov         eax,dword ptr [ebp+0C]
 005631EC    mov         dword ptr [edx+34],eax
 005631EF    mov         eax,edx
 005631F1    call        TTeeFunction.ReCalculate
 005631F6    xor         eax,eax
 005631F8    pop         edx
 005631F9    pop         ecx
 005631FA    pop         ecx
 005631FB    mov         dword ptr fs:[eax],edx
 005631FE    push        563213
 00563203    lea         eax,[ebp-4]
 00563206    call        @LStrClr
 0056320B    ret
>0056320C    jmp         @HandleFinally
>00563211    jmp         00563203
 00563213    pop         ecx
 00563214    pop         ebp
 00563215    ret         8
*}
end;

//0056321C
procedure TTeeFunction.SetPeriodAlign(Value:TFunctionPeriodAlign);
begin
{*
 0056321C    cmp         dl,byte ptr [eax+39]
>0056321F    je          00563229
 00563221    mov         byte ptr [eax+39],dl
 00563224    call        TTeeFunction.ReCalculate
 00563229    ret
*}
end;

//0056322C
procedure TTeeFunction.SetPeriodStyle(Value:TFunctionPeriodStyle);
begin
{*
 0056322C    cmp         dl,byte ptr [eax+38]
>0056322F    je          00563239
 00563231    mov         byte ptr [eax+38],dl
 00563234    call        TTeeFunction.ReCalculate
 00563239    ret
*}
end;

//0056323C
procedure TTeeFunction.sub_0056323C;
begin
{*
 0056323C    mov         eax,dword ptr [eax+3C];TTeeFunction.FParent:TChartSeries
 0056323F    ret
*}
end;

//00563240
procedure TTeeFunction.SetParentComponent(Value:TComponent);
begin
{*
 00563240    test        edx,edx
>00563242    je          00563249
 00563244    call        TTeeFunction.SetParentSeries
 00563249    ret
*}
end;

//0056324C
procedure TTeeFunction.sub_0056324C;
begin
{*
 0056324C    mov         al,1
 0056324E    ret
*}
end;

//00563250
function TChartValueLists.GetValueList(Index:Integer):TChartValueList;
begin
{*
 00563250    push        ebx
 00563251    push        esi
 00563252    mov         esi,edx
 00563254    mov         ebx,eax
 00563256    mov         edx,esi
 00563258    mov         eax,ebx
 0056325A    call        TList.Get
 0056325F    pop         esi
 00563260    pop         ebx
 00563261    ret
*}
end;

//00563264
constructor TChartSeries.Create(AOwner:TComponent);
begin
{*
 00563264    push        ebp
 00563265    mov         ebp,esp
 00563267    push        0
 00563269    push        0
 0056326B    push        0
 0056326D    push        ebx
 0056326E    push        esi
 0056326F    test        dl,dl
>00563271    je          0056327B
 00563273    add         esp,0FFFFFFF0
 00563276    call        @ClassCreate
 0056327B    mov         byte ptr [ebp-1],dl
 0056327E    mov         ebx,eax
 00563280    xor         eax,eax
 00563282    push        ebp
 00563283    push        56340A
 00563288    push        dword ptr fs:[eax]
 0056328B    mov         dword ptr fs:[eax],esp
 0056328E    xor         edx,edx
 00563290    mov         eax,ebx
 00563292    call        TComponent.Create
 00563297    mov         dword ptr [ebx+9C],0FFFFFFFF
 005632A1    xor         eax,eax
 005632A3    mov         dword ptr [ebx+0F4],eax
 005632A9    mov         byte ptr [ebx+30],1
 005632AD    mov         byte ptr [ebx+90],1
 005632B4    xor         eax,eax
 005632B6    mov         dword ptr [ebx+50],eax
 005632B9    mov         byte ptr [ebx+0A0],0
 005632C0    xor         eax,eax
 005632C2    mov         dword ptr [ebx+54],eax
 005632C5    mov         dl,1
 005632C7    mov         eax,[0055D8EC];TChartValueLists
 005632CC    call        TObject.Create
 005632D1    mov         dword ptr [ebx+80],eax
 005632D7    lea         edx,[ebp-8]
 005632DA    mov         eax,[006E9DB4]
 005632DF    call        LoadResString
 005632E4    mov         eax,dword ptr [ebp-8]
 005632E7    push        eax
 005632E8    mov         ecx,ebx
 005632EA    mov         dl,1
 005632EC    mov         eax,[0055BEF0];TChartValueList
 005632F1    call        TChartValueList.Create
 005632F6    mov         esi,eax
 005632F8    mov         dword ptr [ebx+84],esi
 005632FE    mov         byte ptr [esi+4],0
 00563302    mov         byte ptr [esi+2C],1
 00563306    lea         edx,[ebp-0C]
 00563309    mov         eax,[006E9DB8]
 0056330E    call        LoadResString
 00563313    mov         eax,dword ptr [ebp-0C]
 00563316    push        eax
 00563317    mov         ecx,ebx
 00563319    mov         dl,1
 0056331B    mov         eax,[0055BEF0];TChartValueList
 00563320    call        TChartValueList.Create
 00563325    mov         dword ptr [ebx+8C],eax
 0056332B    mov         dl,1
 0056332D    mov         eax,[006422A4];TList
 00563332    call        TObject.Create
 00563337    mov         dword ptr [ebx+3C],eax
 0056333A    mov         dl,1
 0056333C    mov         eax,[006422A4];TList
 00563341    call        TObject.Create
 00563346    mov         dword ptr [ebx+88],eax
 0056334C    mov         dword ptr [ebx+34],20000000
 00563353    mov         byte ptr [ebx+70],1
 00563357    mov         word ptr [ebx+44],0
 0056335D    mov         ecx,ebx
 0056335F    mov         dl,1
 00563361    mov         eax,[0055D40C];TSeriesMarks
 00563366    call        TSeriesMarks.Create
 0056336B    mov         dword ptr [ebx+64],eax
 0056336E    lea         edx,[ebx+7C]
 00563371    mov         eax,[006E9D30]
 00563376    call        LoadResString
 0056337B    lea         edx,[ebx+6C]
 0056337E    mov         eax,[006E9D2C]
 00563383    call        LoadResString
 00563388    mov         dl,1
 0056338A    mov         eax,[006422A4];TList
 0056338F    call        TObject.Create
 00563394    mov         dword ptr [ebx+48],eax
 00563397    xor         eax,eax
 00563399    mov         dword ptr [ebx+74],eax
 0056339C    mov         dl,1
 0056339E    mov         eax,[006422A4];TList
 005633A3    call        TObject.Create
 005633A8    mov         dword ptr [ebx+60],eax
 005633AB    mov         al,[00563430]
 005633B0    mov         byte ptr [ebx+0A1],al
 005633B6    mov         dword ptr [ebx+4C],0FFFFFFFF
 005633BD    mov         dword ptr [ebx+5C],0FFFFFFFF
 005633C4    mov         byte ptr [ebx+0FA],1
 005633CB    mov         byte ptr [ebx+0F8],1
 005633D2    mov         byte ptr [ebx+0FB],0
 005633D9    lea         eax,[ebx+0F0]
 005633DF    call        @LStrClr
 005633E4    mov         al,[00563434]
 005633E9    mov         byte ptr [ebx+0A8],al
 005633EF    xor         eax,eax
 005633F1    pop         edx
 005633F2    pop         ecx
 005633F3    pop         ecx
 005633F4    mov         dword ptr fs:[eax],edx
 005633F7    push        563411
 005633FC    lea         eax,[ebp-0C]
 005633FF    mov         edx,2
 00563404    call        @LStrArrayClr
 00563409    ret
>0056340A    jmp         @HandleFinally
>0056340F    jmp         005633FC
 00563411    mov         eax,ebx
 00563413    cmp         byte ptr [ebp-1],0
>00563417    je          00563428
 00563419    call        @AfterConstruction
 0056341E    pop         dword ptr fs:[0]
 00563425    add         esp,0C
 00563428    mov         eax,ebx
 0056342A    pop         esi
 0056342B    pop         ebx
 0056342C    mov         esp,ebp
 0056342E    pop         ebp
 0056342F    ret
*}
end;

//00563438
procedure TChartSeries.GetChildren(Proc:TGetChildProc; Root:TComponent);
begin
{*
 00563438    push        ebp
 00563439    mov         ebp,esp
 0056343B    push        ebx
 0056343C    mov         ebx,eax
 0056343E    push        dword ptr [ebp+0C]
 00563441    push        dword ptr [ebp+8]
 00563444    mov         eax,ebx
 00563446    call        TComponent.GetChildren
 0056344B    mov         eax,dword ptr [ebx+0A4]
 00563451    test        eax,eax
>00563453    je          0056345D
 00563455    mov         edx,eax
 00563457    mov         eax,dword ptr [ebp+0C]
 0056345A    call        dword ptr [ebp+8]
 0056345D    pop         ebx
 0056345E    pop         ebp
 0056345F    ret         8
*}
end;

//00563464
procedure TChartSeries.sub_00563464;
begin
{*
 00563464    mov         eax,dword ptr [eax+68];TChartSeries.ParentChart:TCustomAxisPanel
 00563467    ret
*}
end;

//00563468
procedure TChartSeries.SetParentComponent(AParent:TComponent);
begin
{*
 00563468    push        ebx
 00563469    push        esi
 0056346A    mov         esi,edx
 0056346C    mov         ebx,eax
 0056346E    mov         eax,esi
 00563470    mov         edx,dword ptr ds:[55D184];TCustomAxisPanel
 00563476    call        @IsClass
 0056347B    test        al,al
>0056347D    je          00563488
 0056347F    mov         edx,esi
 00563481    mov         eax,ebx
 00563483    mov         ecx,dword ptr [eax]
 00563485    call        dword ptr [ecx+7C]
 00563488    pop         esi
 00563489    pop         ebx
 0056348A    ret
*}
end;

//0056348C
procedure TChartSeries.sub_0056348C;
begin
{*
 0056348C    mov         al,1
 0056348E    ret
*}
end;

//00563490
procedure TChartSeries.SetFunction(AFunction:TTeeFunction);
begin
{*
 00563490    push        ebx
 00563491    push        esi
 00563492    mov         esi,edx
 00563494    mov         ebx,eax
 00563496    mov         eax,dword ptr [ebx+0A4]
 0056349C    call        TObject.Free
 005634A1    mov         eax,esi
 005634A3    mov         dword ptr [ebx+0A4],eax
 005634A9    test        eax,eax
>005634AB    je          005634B0
 005634AD    mov         dword ptr [eax+3C],ebx
 005634B0    mov         eax,ebx
 005634B2    call        TChartSeries.CheckDataSource
 005634B7    pop         esi
 005634B8    pop         ebx
 005634B9    ret
*}
end;

//005634BC
procedure TChartSeries.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005634BC    push        ebx
 005634BD    push        esi
 005634BE    push        edi
 005634BF    mov         ebx,ecx
 005634C1    mov         edi,edx
 005634C3    mov         esi,eax
 005634C5    mov         ecx,ebx
 005634C7    mov         edx,edi
 005634C9    mov         eax,esi
 005634CB    call        TComponent.Notification
 005634D0    cmp         bl,1
>005634D3    jne         005634ED
 005634D5    mov         eax,esi
 005634D7    call        TChartSeries.GetDataSource
 005634DC    test        eax,eax
>005634DE    je          005634ED
 005634E0    cmp         eax,edi
>005634E2    jne         005634ED
 005634E4    xor         edx,edx
 005634E6    mov         eax,esi
 005634E8    call        TChartSeries.SetDataSource
 005634ED    pop         edi
 005634EE    pop         esi
 005634EF    pop         ebx
 005634F0    ret
*}
end;

//005634F4
procedure TChartSeries.DefineProperties(Filer:TFiler);
begin
{*
 005634F4    push        ebx
 005634F5    push        esi
 005634F6    push        edi
 005634F7    mov         esi,edx
 005634F9    mov         ebx,eax
 005634FB    mov         edx,esi
 005634FD    mov         eax,ebx
 005634FF    call        TComponent.DefineProperties
 00563504    push        ebx
 00563505    push        563740;TChartSeries.ReadData
 0056350A    push        ebx
 0056350B    push        5637C8;TChartSeries.WriteData
 00563510    mov         eax,dword ptr [ebx+48]
 00563513    cmp         dword ptr [eax+8],1
 00563517    setg        cl
 0056351A    mov         edx,56357C;'DataSources'
 0056351F    mov         eax,esi
 00563521    mov         edi,dword ptr [eax]
 00563523    call        dword ptr [edi+4]
 00563526    push        ebx
 00563527    push        5635B0;TChartSeries.ReadIdentifier
 0056352C    push        ebx
 0056352D    push        563604;TChartSeries.WriteIdentifier
 00563532    cmp         dword ptr [ebx+0F0],0
 00563539    setne       cl
 0056353C    mov         edx,563590;'Identifier'
 00563541    mov         eax,esi
 00563543    mov         edi,dword ptr [eax]
 00563545    call        dword ptr [edi+4]
 00563548    push        ebx
 00563549    push        563614;TChartSeries.ReadStyle
 0056354E    push        ebx
 0056354F    push        5636EC;TChartSeries.WriteStyle
 00563554    mov         al,[0056359C]
 00563559    cmp         al,byte ptr [ebx+0A8]
 0056355F    setne       cl
 00563562    mov         edx,5635A8;'Style'
 00563567    mov         eax,esi
 00563569    mov         ebx,dword ptr [eax]
 0056356B    call        dword ptr [ebx+4]
 0056356E    pop         edi
 0056356F    pop         esi
 00563570    pop         ebx
 00563571    ret
*}
end;

//005635B0
procedure TChartSeries.ReadIdentifier(Reader:TReader);
begin
{*
 005635B0    push        ebp
 005635B1    mov         ebp,esp
 005635B3    push        0
 005635B5    push        ebx
 005635B6    push        esi
 005635B7    mov         esi,edx
 005635B9    mov         ebx,eax
 005635BB    xor         eax,eax
 005635BD    push        ebp
 005635BE    push        5635F7
 005635C3    push        dword ptr fs:[eax]
 005635C6    mov         dword ptr fs:[eax],esp
 005635C9    lea         edx,[ebp-4]
 005635CC    mov         eax,esi
 005635CE    call        TReader.ReadString
 005635D3    mov         edx,dword ptr [ebp-4]
 005635D6    lea         eax,[ebx+0F0]
 005635DC    call        @LStrAsg
 005635E1    xor         eax,eax
 005635E3    pop         edx
 005635E4    pop         ecx
 005635E5    pop         ecx
 005635E6    mov         dword ptr fs:[eax],edx
 005635E9    push        5635FE
 005635EE    lea         eax,[ebp-4]
 005635F1    call        @LStrClr
 005635F6    ret
>005635F7    jmp         @HandleFinally
>005635FC    jmp         005635EE
 005635FE    pop         esi
 005635FF    pop         ebx
 00563600    pop         ecx
 00563601    pop         ebp
 00563602    ret
*}
end;

//00563604
procedure TChartSeries.WriteIdentifier(Writer:TWriter);
begin
{*
 00563604    mov         eax,dword ptr [eax+0F0]
 0056360A    xchg        eax,edx
 0056360B    call        TWriter.WriteString
 00563610    ret
*}
end;

//00563614
procedure TChartSeries.ReadStyle(Reader:TReader);
begin
{*
 00563614    push        ebx
 00563615    push        esi
 00563616    mov         ebx,eax
 00563618    mov         eax,edx
 0056361A    call        TReader.ReadInteger
 0056361F    mov         esi,eax
 00563621    mov         al,[005636D0]
 00563626    mov         byte ptr [ebx+0A8],al
 0056362C    mov         eax,esi
 0056362E    and         eax,1
 00563631    dec         eax
>00563632    jne         00563645
 00563634    mov         al,[005636D4]
 00563639    or          al,byte ptr [ebx+0A8]
 0056363F    mov         byte ptr [ebx+0A8],al
 00563645    mov         eax,esi
 00563647    and         eax,2
 0056364A    cmp         eax,2
>0056364D    jne         00563660
 0056364F    mov         al,[005636D8]
 00563654    or          al,byte ptr [ebx+0A8]
 0056365A    mov         byte ptr [ebx+0A8],al
 00563660    mov         eax,esi
 00563662    and         eax,4
 00563665    cmp         eax,4
>00563668    jne         0056367B
 0056366A    mov         al,[005636DC]
 0056366F    or          al,byte ptr [ebx+0A8]
 00563675    mov         byte ptr [ebx+0A8],al
 0056367B    mov         eax,esi
 0056367D    and         eax,8
 00563680    cmp         eax,8
>00563683    jne         00563696
 00563685    mov         al,[005636E0]
 0056368A    or          al,byte ptr [ebx+0A8]
 00563690    mov         byte ptr [ebx+0A8],al
 00563696    mov         eax,esi
 00563698    and         eax,10
 0056369B    cmp         eax,10
>0056369E    jne         005636B1
 005636A0    mov         al,[005636E4]
 005636A5    or          al,byte ptr [ebx+0A8]
 005636AB    mov         byte ptr [ebx+0A8],al
 005636B1    and         esi,20
 005636B4    cmp         esi,20
>005636B7    jne         005636CA
 005636B9    mov         al,[005636E8]
 005636BE    or          al,byte ptr [ebx+0A8]
 005636C4    mov         byte ptr [ebx+0A8],al
 005636CA    pop         esi
 005636CB    pop         ebx
 005636CC    ret
*}
end;

//005636EC
procedure TChartSeries.WriteStyle(Writer:TWriter);
begin
{*
 005636EC    push        esi
 005636ED    xor         esi,esi
 005636EF    test        byte ptr [eax+0A8],1
>005636F6    je          005636F9
 005636F8    inc         esi
 005636F9    test        byte ptr [eax+0A8],2
>00563700    je          00563705
 00563702    add         esi,2
 00563705    test        byte ptr [eax+0A8],4
>0056370C    je          00563711
 0056370E    add         esi,4
 00563711    test        byte ptr [eax+0A8],8
>00563718    je          0056371D
 0056371A    add         esi,8
 0056371D    test        byte ptr [eax+0A8],10
>00563724    je          00563729
 00563726    add         esi,10
 00563729    test        byte ptr [eax+0A8],20
>00563730    je          00563735
 00563732    add         esi,20
 00563735    mov         eax,edx
 00563737    mov         edx,esi
 00563739    call        TWriter.WriteInteger
 0056373E    pop         esi
 0056373F    ret
*}
end;

//00563740
procedure TChartSeries.ReadData(Reader:TReader);
begin
{*
 00563740    push        ebp
 00563741    mov         ebp,esp
 00563743    push        0
 00563745    push        ebx
 00563746    push        esi
 00563747    push        edi
 00563748    mov         ebx,edx
 0056374A    mov         esi,eax
 0056374C    xor         eax,eax
 0056374E    push        ebp
 0056374F    push        5637B9
 00563754    push        dword ptr fs:[eax]
 00563757    mov         dword ptr fs:[eax],esp
 0056375A    mov         eax,ebx
 0056375C    call        TReader.ReadListBegin
 00563761    mov         dl,1
 00563763    mov         eax,[006428B0];TStringList
 00563768    call        TObject.Create
 0056376D    mov         edi,eax
 0056376F    mov         dword ptr [esi+74],edi
 00563772    mov         esi,edi
 00563774    mov         eax,esi
 00563776    mov         edx,dword ptr [eax]
 00563778    call        dword ptr [edx+44]
>0056377B    jmp         00563791
 0056377D    lea         edx,[ebp-4]
 00563780    mov         eax,ebx
 00563782    call        TReader.ReadString
 00563787    mov         edx,dword ptr [ebp-4]
 0056378A    mov         eax,esi
 0056378C    mov         ecx,dword ptr [eax]
 0056378E    call        dword ptr [ecx+38]
 00563791    mov         eax,ebx
 00563793    call        TReader.EndOfList
 00563798    test        al,al
>0056379A    je          0056377D
 0056379C    mov         eax,ebx
 0056379E    call        TReader.ReadListEnd
 005637A3    xor         eax,eax
 005637A5    pop         edx
 005637A6    pop         ecx
 005637A7    pop         ecx
 005637A8    mov         dword ptr fs:[eax],edx
 005637AB    push        5637C0
 005637B0    lea         eax,[ebp-4]
 005637B3    call        @LStrClr
 005637B8    ret
>005637B9    jmp         @HandleFinally
>005637BE    jmp         005637B0
 005637C0    pop         edi
 005637C1    pop         esi
 005637C2    pop         ebx
 005637C3    pop         ecx
 005637C4    pop         ebp
 005637C5    ret
*}
end;

//005637C8
procedure TChartSeries.WriteData(Writer:TWriter);
begin
{*
 005637C8    push        ebx
 005637C9    push        esi
 005637CA    push        edi
 005637CB    push        ebp
 005637CC    mov         edi,edx
 005637CE    mov         ebx,eax
 005637D0    mov         eax,edi
 005637D2    call        TWriter.WriteListBegin
 005637D7    mov         ebp,dword ptr [ebx+48]
 005637DA    mov         ebx,dword ptr [ebp+8]
 005637DD    dec         ebx
 005637DE    test        ebx,ebx
>005637E0    jl          005637FC
 005637E2    inc         ebx
 005637E3    xor         esi,esi
 005637E5    mov         edx,esi
 005637E7    mov         eax,ebp
 005637E9    call        TList.Get
 005637EE    mov         edx,dword ptr [eax+8]
 005637F1    mov         eax,edi
 005637F3    call        TWriter.WriteString
 005637F8    inc         esi
 005637F9    dec         ebx
>005637FA    jne         005637E5
 005637FC    mov         eax,edi
 005637FE    call        TWriter.WriteListEnd
 00563803    pop         ebp
 00563804    pop         edi
 00563805    pop         esi
 00563806    pop         ebx
 00563807    ret
*}
end;

//00563808
function TChartSeries.YMandatory:Boolean;
begin
{*
 00563808    push        ebx
 00563809    mov         ebx,eax
 0056380B    mov         eax,ebx
 0056380D    mov         edx,dword ptr [eax]
 0056380F    call        dword ptr [edx+104]
 00563815    cmp         eax,dword ptr [ebx+8C]
 0056381B    sete        al
 0056381E    pop         ebx
 0056381F    ret
*}
end;

//00563820
{*function sub_00563820:?;
begin
 00563820    mov         eax,dword ptr [eax+8C];TChartSeries.FY:TChartValueList
 00563826    ret
end;*}

//00563828
{*function sub_00563828:?;
begin
 00563828    mov         al,1
 0056382A    ret
end;*}

//0056382C
{*function sub_0056382C:?;
begin
 0056382C    mov         al,1
 0056382E    ret
end;*}

//00563830
procedure TPieSeries.DisableRotation;
begin
{*
 00563830    push        ebx
 00563831    push        esi
 00563832    push        edi
 00563833    mov         edi,eax
 00563835    mov         eax,edi
 00563837    mov         edx,dword ptr [eax]
 00563839    call        dword ptr [edx+108]
 0056383F    test        al,al
>00563841    je          0056385D
 00563843    mov         esi,dword ptr [edi+4C]
 00563846    mov         ebx,dword ptr [edi+5C]
 00563849    sub         ebx,esi
>0056384B    jl          00563875
 0056384D    inc         ebx
 0056384E    mov         edx,esi
 00563850    mov         eax,edi
 00563852    mov         ecx,dword ptr [eax]
 00563854    call        dword ptr [ecx+58]
 00563857    inc         esi
 00563858    dec         ebx
>00563859    jne         0056384E
>0056385B    jmp         00563875
 0056385D    mov         esi,dword ptr [edi+5C]
 00563860    mov         ebx,dword ptr [edi+4C]
 00563863    sub         ebx,esi
>00563865    jg          00563875
 00563867    dec         ebx
 00563868    mov         edx,esi
 0056386A    mov         eax,edi
 0056386C    mov         ecx,dword ptr [eax]
 0056386E    call        dword ptr [ecx+58]
 00563871    dec         esi
 00563872    inc         ebx
>00563873    jne         00563868
 00563875    pop         edi
 00563876    pop         esi
 00563877    pop         ebx
 00563878    ret
*}
end;

//0056387C
function TChartSeries.SameClass(tmpSeries:TChartSeries):Boolean;
begin
{*
 0056387C    push        ebx
 0056387D    push        esi
 0056387E    mov         esi,edx
 00563880    mov         ebx,eax
 00563882    mov         eax,esi
 00563884    call        TObject.ClassType
 00563889    mov         edx,eax
 0056388B    mov         eax,ebx
 0056388D    call        @IsClass
 00563892    test        al,al
>00563894    jne         005638AF
 00563896    mov         eax,ebx
 00563898    call        TObject.ClassType
 0056389D    mov         edx,eax
 0056389F    mov         eax,esi
 005638A1    call        @IsClass
 005638A6    test        al,al
>005638A8    jne         005638AF
 005638AA    xor         eax,eax
 005638AC    pop         esi
 005638AD    pop         ebx
 005638AE    ret
 005638AF    mov         al,1
 005638B1    pop         esi
 005638B2    pop         ebx
 005638B3    ret
*}
end;

//005638B4
function TChartSeries.PointOrigin(ValueIndex:Integer; SumAll:Boolean):Double;
begin
{*
 005638B4    push        ebx
 005638B5    push        esi
 005638B6    push        edi
 005638B7    push        ebp
 005638B8    add         esp,0FFFFFFE4
 005638BB    mov         byte ptr [esp+4],cl
 005638BF    mov         dword ptr [esp],edx
 005638C2    mov         esi,eax
 005638C4    xor         eax,eax
 005638C6    mov         dword ptr [esp+8],eax
 005638CA    mov         dword ptr [esp+0C],eax
 005638CE    mov         eax,dword ptr [esi+68]
 005638D1    test        eax,eax
>005638D3    je          0056395B
 005638D9    mov         dword ptr [esp+18],eax
 005638DD    mov         eax,dword ptr [esp+18]
 005638E1    mov         eax,dword ptr [eax+2E0]
 005638E7    mov         edi,dword ptr [eax+8]
 005638EA    dec         edi
 005638EB    test        edi,edi
>005638ED    jl          0056395B
 005638EF    inc         edi
 005638F0    xor         ebp,ebp
 005638F2    mov         edx,ebp
 005638F4    mov         eax,dword ptr [esp+18]
 005638F8    call        TCustomAxisPanel.GetSeries
 005638FD    mov         ebx,eax
 005638FF    cmp         byte ptr [esp+4],0
>00563904    jne         0056390A
 00563906    cmp         esi,ebx
>00563908    je          0056395B
 0056390A    cmp         byte ptr [ebx+30],0
>0056390E    je          00563957
 00563910    mov         edx,esi
 00563912    mov         eax,ebx
 00563914    call        TChartSeries.SameClass
 00563919    test        al,al
>0056391B    je          00563957
 0056391D    mov         eax,ebx
 0056391F    call        TChartSeries.Count
 00563924    cmp         eax,dword ptr [esp]
>00563927    jle         00563957
 00563929    mov         edx,dword ptr [esp]
 0056392C    mov         eax,ebx
 0056392E    mov         ecx,dword ptr [eax]
 00563930    call        dword ptr [ecx+0F8]
 00563936    fstp        qword ptr [esp+10]
 0056393A    wait
 0056393B    fld         qword ptr [esp+10]
 0056393F    fcomp       dword ptr ds:[563968]
 00563945    fnstsw      al
 00563947    sahf
>00563948    jbe         00563957
 0056394A    fld         qword ptr [esp+8]
 0056394E    fadd        qword ptr [esp+10]
 00563952    fstp        qword ptr [esp+8]
 00563956    wait
 00563957    inc         ebp
 00563958    dec         edi
>00563959    jne         005638F2
 0056395B    fld         qword ptr [esp+8]
 0056395F    add         esp,1C
 00563962    pop         ebp
 00563963    pop         edi
 00563964    pop         esi
 00563965    pop         ebx
 00563966    ret
*}
end;

//0056396C
function TChartSeries.CreateChartPen:TChartPen;
begin
{*
 0056396C    push        eax
 0056396D    mov         eax,dword ptr [eax]
 0056396F    mov         eax,dword ptr [eax+144]
 00563975    push        eax
 00563976    mov         dl,1
 00563978    mov         eax,[0056A388];TChartPen
 0056397D    call        TChartPen.Create
 00563982    ret
*}
end;

//00563984
procedure TChartSeries.CheckDataSource;
begin
{*
 00563984    push        esi
 00563985    mov         esi,dword ptr [eax+68]
 00563988    test        esi,esi
>0056398A    je          00563998
 0056398C    mov         edx,eax
 0056398E    mov         eax,esi
 00563990    mov         ecx,dword ptr [eax]
 00563992    call        dword ptr [ecx+104]
 00563998    pop         esi
 00563999    ret
*}
end;

//0056399C
procedure TChartSeries.SetColorSource(const Value:AnsiString);
begin
{*
 0056399C    push        ebx
 0056399D    push        esi
 0056399E    mov         esi,edx
 005639A0    mov         ebx,eax
 005639A2    mov         eax,dword ptr [ebx+40]
 005639A5    mov         edx,esi
 005639A7    call        @LStrCmp
>005639AC    je          005639CB
 005639AE    lea         eax,[ebx+40]
 005639B1    mov         edx,esi
 005639B3    call        @LStrAsg
 005639B8    mov         esi,dword ptr [ebx+68]
 005639BB    test        esi,esi
>005639BD    je          005639CB
 005639BF    mov         edx,ebx
 005639C1    mov         eax,esi
 005639C3    mov         ecx,dword ptr [eax]
 005639C5    call        dword ptr [ecx+104]
 005639CB    pop         esi
 005639CC    pop         ebx
 005639CD    ret
*}
end;

//005639D0
procedure TChartSeries.SetLabelsSource(const Value:AnsiString);
begin
{*
 005639D0    push        ebx
 005639D1    push        esi
 005639D2    mov         esi,edx
 005639D4    mov         ebx,eax
 005639D6    mov         eax,dword ptr [ebx+58]
 005639D9    mov         edx,esi
 005639DB    call        @LStrCmp
>005639E0    je          005639FF
 005639E2    lea         eax,[ebx+58]
 005639E5    mov         edx,esi
 005639E7    call        @LStrAsg
 005639EC    mov         esi,dword ptr [ebx+68]
 005639EF    test        esi,esi
>005639F1    je          005639FF
 005639F3    mov         edx,ebx
 005639F5    mov         eax,esi
 005639F7    mov         ecx,dword ptr [eax]
 005639F9    call        dword ptr [ecx+104]
 005639FF    pop         esi
 00563A00    pop         ebx
 00563A01    ret
*}
end;

//00563A04
function TChartSeries.GetDataSource:TComponent;
begin
{*
 00563A04    push        ebx
 00563A05    push        esi
 00563A06    mov         ebx,eax
 00563A08    mov         esi,dword ptr [ebx+48]
 00563A0B    test        esi,esi
>00563A0D    je          00563A21
 00563A0F    cmp         dword ptr [esi+8],0
>00563A13    jle         00563A21
 00563A15    xor         edx,edx
 00563A17    mov         eax,esi
 00563A19    call        TList.Get
 00563A1E    pop         esi
 00563A1F    pop         ebx
 00563A20    ret
 00563A21    xor         eax,eax
 00563A23    pop         esi
 00563A24    pop         ebx
 00563A25    ret
*}
end;

//00563A28
procedure TChartSeries.InternalAddDataSource(Value:TComponent);
begin
{*
 00563A28    push        ebx
 00563A29    push        esi
 00563A2A    mov         ebx,edx
 00563A2C    mov         esi,eax
 00563A2E    test        ebx,ebx
>00563A30    je          00563A61
 00563A32    mov         edx,ebx
 00563A34    mov         eax,dword ptr [esi+48]
 00563A37    call        TList.Add
 00563A3C    mov         eax,ebx
 00563A3E    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 00563A44    call        @IsClass
 00563A49    test        al,al
>00563A4B    je          00563A58
 00563A4D    mov         edx,esi
 00563A4F    mov         eax,ebx
 00563A51    call        TChartSeries.AddLinkedSeries
>00563A56    jmp         00563A61
 00563A58    mov         edx,esi
 00563A5A    mov         eax,ebx
 00563A5C    call        TComponent.FreeNotification
 00563A61    pop         esi
 00563A62    pop         ebx
 00563A63    ret
*}
end;

//00563A64
procedure TChartSeries.RemoveAllLinkedSeries;
begin
{*
 00563A64    push        ebx
 00563A65    push        esi
 00563A66    push        edi
 00563A67    mov         ebx,eax
 00563A69    mov         eax,dword ptr [ebx+48]
 00563A6C    test        eax,eax
>00563A6E    je          00563AB7
 00563A70    mov         edi,dword ptr [eax+8]
 00563A73    dec         edi
 00563A74    test        edi,edi
>00563A76    jl          00563AB7
 00563A78    inc         edi
 00563A79    xor         esi,esi
 00563A7B    mov         edx,esi
 00563A7D    mov         eax,dword ptr [ebx+48]
 00563A80    call        TList.Get
 00563A85    test        eax,eax
>00563A87    je          00563AB3
 00563A89    mov         edx,esi
 00563A8B    mov         eax,dword ptr [ebx+48]
 00563A8E    call        TList.Get
 00563A93    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 00563A99    call        @IsClass
 00563A9E    test        al,al
>00563AA0    je          00563AB3
 00563AA2    mov         edx,esi
 00563AA4    mov         eax,dword ptr [ebx+48]
 00563AA7    call        TList.Get
 00563AAC    mov         edx,ebx
 00563AAE    call        TChartSeries.RemoveLinkedSeries
 00563AB3    inc         esi
 00563AB4    dec         edi
>00563AB5    jne         00563A7B
 00563AB7    pop         edi
 00563AB8    pop         esi
 00563AB9    pop         ebx
 00563ABA    ret
*}
end;

//00563ABC
procedure ClearDataSources;
begin
{*
 00563ABC    push        ebp
 00563ABD    mov         ebp,esp
 00563ABF    mov         eax,dword ptr [ebp+8]
 00563AC2    mov         eax,dword ptr [eax-4]
 00563AC5    call        TChartSeries.RemoveAllLinkedSeries
 00563ACA    mov         eax,dword ptr [ebp+8]
 00563ACD    mov         eax,dword ptr [eax-4]
 00563AD0    mov         eax,dword ptr [eax+48]
 00563AD3    mov         edx,dword ptr [eax]
 00563AD5    call        dword ptr [edx+8]
 00563AD8    pop         ebp
 00563AD9    ret
*}
end;

//00563ADC
procedure InternalRemoveDataSource;
begin
{*
 00563ADC    push        ebp
 00563ADD    mov         ebp,esp
 00563ADF    push        ebx
 00563AE0    push        esi
 00563AE1    mov         ebx,dword ptr [ebp+8]
 00563AE4    add         ebx,0FFFFFFFC
 00563AE7    mov         eax,dword ptr [ebx]
 00563AE9    cmp         dword ptr [eax+68],0
>00563AED    je          00563B13
 00563AEF    mov         eax,dword ptr [ebx]
 00563AF1    call        TChartSeries.GetDataSource
 00563AF6    test        eax,eax
>00563AF8    je          00563B13
 00563AFA    mov         eax,dword ptr [ebx]
 00563AFC    call        TChartSeries.GetDataSource
 00563B01    mov         ecx,eax
 00563B03    mov         edx,dword ptr [ebx]
 00563B05    mov         eax,dword ptr [ebx]
 00563B07    mov         eax,dword ptr [eax+68]
 00563B0A    mov         si,0FFB2
 00563B0E    call        @CallDynaInst
 00563B13    mov         eax,dword ptr [ebp+8]
 00563B16    push        eax
 00563B17    call        ClearDataSources
 00563B1C    pop         ecx
 00563B1D    mov         eax,dword ptr [ebx]
 00563B1F    mov         eax,dword ptr [eax+68]
 00563B22    test        eax,eax
>00563B24    je          00563B44
 00563B26    test        byte ptr [eax+1C],10
>00563B2A    je          00563B44
 00563B2C    mov         eax,dword ptr [ebx]
 00563B2E    mov         edx,dword ptr [eax]
 00563B30    call        dword ptr [edx+0D8]
 00563B36    mov         edx,eax
 00563B38    mov         eax,dword ptr [ebx]
 00563B3A    mov         ecx,dword ptr [eax]
 00563B3C    call        dword ptr [ecx+0A4]
>00563B42    jmp         00563B4E
 00563B44    mov         eax,dword ptr [ebx]
 00563B46    mov         edx,dword ptr [eax]
 00563B48    call        dword ptr [edx+98]
 00563B4E    mov         eax,dword ptr [ebx]
 00563B50    call        TChartSeries.Repaint
 00563B55    pop         esi
 00563B56    pop         ebx
 00563B57    pop         ebp
 00563B58    ret
*}
end;

//00563B5C
procedure InternalSetDataSource;
begin
{*
 00563B5C    push        ebp
 00563B5D    mov         ebp,esp
 00563B5F    add         esp,0FFFFFFF0
 00563B62    push        ebx
 00563B63    xor         eax,eax
 00563B65    mov         dword ptr [ebp-10],eax
 00563B68    mov         dword ptr [ebp-4],eax
 00563B6B    xor         eax,eax
 00563B6D    push        ebp
 00563B6E    push        563CAF
 00563B73    push        dword ptr fs:[eax]
 00563B76    mov         dword ptr fs:[eax],esp
 00563B79    mov         eax,dword ptr [ebp+8]
 00563B7C    mov         eax,dword ptr [eax-4]
 00563B7F    mov         ebx,dword ptr [eax+68]
 00563B82    test        ebx,ebx
>00563B84    jne         00563BAC
 00563B86    lea         edx,[ebp-4]
 00563B89    mov         eax,[006E9CE8]
 00563B8E    call        LoadResString
 00563B93    mov         ecx,dword ptr [ebp-4]
 00563B96    mov         dl,1
 00563B98    mov         eax,[00567B78];ChartException
 00563B9D    call        Exception.Create
 00563BA2    call        @RaiseExcept
>00563BA7    jmp         00563C91
 00563BAC    mov         eax,dword ptr [ebp+8]
 00563BAF    mov         ecx,dword ptr [eax-8]
 00563BB2    mov         eax,dword ptr [ebp+8]
 00563BB5    mov         edx,dword ptr [eax-4]
 00563BB8    mov         eax,dword ptr [ebp+8]
 00563BBB    mov         eax,ebx
 00563BBD    mov         ebx,dword ptr [eax]
 00563BBF    call        dword ptr [ebx+110]
 00563BC5    test        al,al
>00563BC7    je          00563C5A
 00563BCD    mov         eax,dword ptr [ebp+8]
 00563BD0    mov         edx,dword ptr [eax-8]
 00563BD3    mov         eax,dword ptr [ebp+8]
 00563BD6    mov         eax,dword ptr [eax-4]
 00563BD9    mov         eax,dword ptr [eax+48]
 00563BDC    call        TList.IndexOf
 00563BE1    inc         eax
>00563BE2    jne         00563C91
 00563BE8    mov         eax,dword ptr [ebp+8]
 00563BEB    mov         eax,dword ptr [eax-8]
 00563BEE    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 00563BF4    call        @IsClass
 00563BF9    test        al,al
>00563BFB    je          00563C0E
 00563BFD    mov         eax,dword ptr [ebp+8]
 00563C00    mov         edx,dword ptr [eax-8]
 00563C03    mov         eax,dword ptr [ebp+8]
 00563C06    mov         eax,dword ptr [eax-4]
 00563C09    call        TChartSeries.CheckOtherSeries
 00563C0E    mov         eax,dword ptr [ebp+8]
 00563C11    mov         eax,dword ptr [eax-4]
 00563C14    test        byte ptr [eax+1C],1
>00563C18    jne         00563C24
 00563C1A    mov         eax,dword ptr [ebp+8]
 00563C1D    push        eax
 00563C1E    call        ClearDataSources
 00563C23    pop         ecx
 00563C24    mov         eax,dword ptr [ebp+8]
 00563C27    mov         edx,dword ptr [eax-8]
 00563C2A    mov         eax,dword ptr [ebp+8]
 00563C2D    mov         eax,dword ptr [eax-4]
 00563C30    call        TChartSeries.InternalAddDataSource
 00563C35    mov         eax,dword ptr [ebp+8]
 00563C38    mov         eax,dword ptr [eax-4]
 00563C3B    test        byte ptr [eax+1C],1
>00563C3F    jne         00563C91
 00563C41    mov         eax,dword ptr [ebp+8]
 00563C44    mov         edx,dword ptr [eax-4]
 00563C47    mov         eax,dword ptr [ebp+8]
 00563C4A    mov         eax,dword ptr [eax-4]
 00563C4D    mov         eax,dword ptr [eax+68]
 00563C50    mov         ecx,dword ptr [eax]
 00563C52    call        dword ptr [ecx+104]
>00563C58    jmp         00563C91
 00563C5A    mov         eax,dword ptr [ebp+8]
 00563C5D    mov         eax,dword ptr [eax-8]
 00563C60    mov         eax,dword ptr [eax+8]
 00563C63    mov         dword ptr [ebp-0C],eax
 00563C66    mov         byte ptr [ebp-8],0B
 00563C6A    lea         eax,[ebp-0C]
 00563C6D    push        eax
 00563C6E    push        0
 00563C70    lea         edx,[ebp-10]
 00563C73    mov         eax,[006E9CEC]
 00563C78    call        LoadResString
 00563C7D    mov         ecx,dword ptr [ebp-10]
 00563C80    mov         dl,1
 00563C82    mov         eax,[00567B78];ChartException
 00563C87    call        Exception.CreateFmt
 00563C8C    call        @RaiseExcept
 00563C91    xor         eax,eax
 00563C93    pop         edx
 00563C94    pop         ecx
 00563C95    pop         ecx
 00563C96    mov         dword ptr fs:[eax],edx
 00563C99    push        563CB6
 00563C9E    lea         eax,[ebp-10]
 00563CA1    call        @LStrClr
 00563CA6    lea         eax,[ebp-4]
 00563CA9    call        @LStrClr
 00563CAE    ret
>00563CAF    jmp         @HandleFinally
>00563CB4    jmp         00563C9E
 00563CB6    pop         ebx
 00563CB7    mov         esp,ebp
 00563CB9    pop         ebp
 00563CBA    ret
*}
end;

//00563CBC
procedure TChartSeries.SetDataSource(Value:TComponent);
begin
{*
 00563CBC    push        ebp
 00563CBD    mov         ebp,esp
 00563CBF    add         esp,0FFFFFFF8
 00563CC2    mov         dword ptr [ebp-8],edx
 00563CC5    mov         dword ptr [ebp-4],eax
 00563CC8    cmp         dword ptr [ebp-8],0
>00563CCC    jne         00563CD7
 00563CCE    push        ebp
 00563CCF    call        InternalRemoveDataSource
 00563CD4    pop         ecx
>00563CD5    jmp         00563CDE
 00563CD7    push        ebp
 00563CD8    call        InternalSetDataSource
 00563CDD    pop         ecx
 00563CDE    pop         ecx
 00563CDF    pop         ecx
 00563CE0    pop         ebp
 00563CE1    ret
*}
end;

//00563CE4
{*function sub_00563CE4(?:?):Boolean;
begin
 00563CE4    cmp         eax,edx
 00563CE6    setne       al
 00563CE9    ret
end;*}

//00563CEC
{*function sub_00563CEC:?;
begin
 00563CEC    mov         al,1
 00563CEE    ret
end;*}

//00563CF0
procedure sub_00563CF0;
begin
{*
 00563CF0    call        TChartSeries.Repaint
 00563CF5    ret
*}
end;

//00563CF8
function TChartSeries.GetYValueList(AListName:AnsiString):TChartValueList;
begin
{*
 00563CF8    push        ebp
 00563CF9    mov         ebp,esp
 00563CFB    add         esp,0FFFFFFF0
 00563CFE    push        ebx
 00563CFF    push        esi
 00563D00    push        edi
 00563D01    xor         ecx,ecx
 00563D03    mov         dword ptr [ebp-10],ecx
 00563D06    mov         dword ptr [ebp-0C],ecx
 00563D09    mov         dword ptr [ebp-4],edx
 00563D0C    mov         ebx,eax
 00563D0E    mov         eax,dword ptr [ebp-4]
 00563D11    call        @LStrAddRef
 00563D16    xor         eax,eax
 00563D18    push        ebp
 00563D19    push        563DAE
 00563D1E    push        dword ptr fs:[eax]
 00563D21    mov         dword ptr fs:[eax],esp
 00563D24    mov         eax,dword ptr [ebx+8C]
 00563D2A    mov         dword ptr [ebp-8],eax
 00563D2D    lea         edx,[ebp-0C]
 00563D30    mov         eax,dword ptr [ebp-4]
 00563D33    call        AnsiUpperCase
 00563D38    mov         edx,dword ptr [ebp-0C]
 00563D3B    lea         eax,[ebp-4]
 00563D3E    call        @LStrLAsg
 00563D43    mov         edi,dword ptr [ebx+80]
 00563D49    mov         esi,dword ptr [edi+8]
 00563D4C    dec         esi
 00563D4D    sub         esi,2
>00563D50    jl          00563D8B
 00563D52    inc         esi
 00563D53    mov         ebx,2
 00563D58    mov         edx,ebx
 00563D5A    mov         eax,edi
 00563D5C    call        TChartValueLists.GetValueList
 00563D61    mov         eax,dword ptr [eax+28]
 00563D64    lea         edx,[ebp-10]
 00563D67    call        AnsiUpperCase
 00563D6C    mov         edx,dword ptr [ebp-10]
 00563D6F    mov         eax,dword ptr [ebp-4]
 00563D72    call        @LStrCmp
>00563D77    jne         00563D87
 00563D79    mov         edx,ebx
 00563D7B    mov         eax,edi
 00563D7D    call        TChartValueLists.GetValueList
 00563D82    mov         dword ptr [ebp-8],eax
>00563D85    jmp         00563D8B
 00563D87    inc         ebx
 00563D88    dec         esi
>00563D89    jne         00563D58
 00563D8B    xor         eax,eax
 00563D8D    pop         edx
 00563D8E    pop         ecx
 00563D8F    pop         ecx
 00563D90    mov         dword ptr fs:[eax],edx
 00563D93    push        563DB5
 00563D98    lea         eax,[ebp-10]
 00563D9B    mov         edx,2
 00563DA0    call        @LStrArrayClr
 00563DA5    lea         eax,[ebp-4]
 00563DA8    call        @LStrClr
 00563DAD    ret
>00563DAE    jmp         @HandleFinally
>00563DB3    jmp         00563D98
 00563DB5    mov         eax,dword ptr [ebp-8]
 00563DB8    pop         edi
 00563DB9    pop         esi
 00563DBA    pop         ebx
 00563DBB    mov         esp,ebp
 00563DBD    pop         ebp
 00563DBE    ret
*}
end;

//00563DC0
procedure TChartSeries.CheckOtherSeries(Source:TChartSeries);
begin
{*
 00563DC0    mov         ecx,dword ptr [eax+68]
 00563DC3    test        ecx,ecx
>00563DC5    je          00563DCF
 00563DC7    xchg        eax,ecx
 00563DC8    xchg        ecx,edx
 00563DCA    call        TCustomAxisPanel.CheckOtherSeries
 00563DCF    ret
*}
end;

//00563DD0
function TChartSeries.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 00563DD0    or          eax,0FFFFFFFF
 00563DD3    ret
*}
end;

//00563DD4
procedure TChartSeries.RecalcGetAxis;
begin
{*
 00563DD4    mov         edx,dword ptr [eax+68]
 00563DD7    test        edx,edx
>00563DD9    je          00563E4A
 00563DDB    mov         edx,dword ptr [edx+2EC]
 00563DE1    mov         dword ptr [eax+50],edx
 00563DE4    mov         dl,byte ptr [eax+90]
 00563DEA    sub         dl,1
>00563DED    jb          00563DF6
 00563DEF    sub         dl,2
>00563DF2    je          00563E04
>00563DF4    jmp         00563E11
 00563DF6    mov         edx,dword ptr [eax+68]
 00563DF9    mov         edx,dword ptr [edx+2E8]
 00563DFF    mov         dword ptr [eax+50],edx
>00563E02    jmp         00563E11
 00563E04    mov         edx,dword ptr [eax+94]
 00563E0A    test        edx,edx
>00563E0C    je          00563E11
 00563E0E    mov         dword ptr [eax+50],edx
 00563E11    mov         edx,dword ptr [eax+68]
 00563E14    mov         edx,dword ptr [edx+2F0]
 00563E1A    mov         dword ptr [eax+54],edx
 00563E1D    mov         dl,byte ptr [eax+0A0]
 00563E23    dec         dl
>00563E25    je          00563E2E
 00563E27    sub         dl,2
>00563E2A    je          00563E3C
>00563E2C    jmp         00563E54
 00563E2E    mov         edx,dword ptr [eax+68]
 00563E31    mov         edx,dword ptr [edx+2F4]
 00563E37    mov         dword ptr [eax+54],edx
>00563E3A    jmp         00563E54
 00563E3C    mov         edx,dword ptr [eax+98]
 00563E42    test        edx,edx
>00563E44    je          00563E54
 00563E46    mov         dword ptr [eax+54],edx
 00563E49    ret
 00563E4A    xor         edx,edx
 00563E4C    mov         dword ptr [eax+50],edx
 00563E4F    xor         edx,edx
 00563E51    mov         dword ptr [eax+54],edx
 00563E54    ret
*}
end;

//00563E58
procedure TChartSeries.SetHorizAxis(Value:THorizAxis);
begin
{*
 00563E58    push        ebx
 00563E59    mov         ebx,eax
 00563E5B    cmp         dl,byte ptr [ebx+90]
>00563E61    je          00563E77
 00563E63    mov         byte ptr [ebx+90],dl
 00563E69    mov         eax,ebx
 00563E6B    call        TChartSeries.RecalcGetAxis
 00563E70    mov         eax,ebx
 00563E72    call        TChartSeries.Repaint
 00563E77    pop         ebx
 00563E78    ret
*}
end;

//00563E7C
procedure TChartSeries.SetVertAxis(Value:TVertAxis);
begin
{*
 00563E7C    push        ebx
 00563E7D    mov         ebx,eax
 00563E7F    cmp         dl,byte ptr [ebx+0A0]
>00563E85    je          00563E9B
 00563E87    mov         byte ptr [ebx+0A0],dl
 00563E8D    mov         eax,ebx
 00563E8F    call        TChartSeries.RecalcGetAxis
 00563E94    mov         eax,ebx
 00563E96    call        TChartSeries.Repaint
 00563E9B    pop         ebx
 00563E9C    ret
*}
end;

//00563EA0
procedure TChartSeries.SetChartValueList(var AValueList:TChartValueList; Value:TChartValueList);
begin
{*
 00563EA0    push        esi
 00563EA1    push        edi
 00563EA2    mov         edi,edx
 00563EA4    mov         esi,eax
 00563EA6    mov         eax,dword ptr [edi]
 00563EA8    mov         edx,ecx
 00563EAA    mov         ecx,dword ptr [eax]
 00563EAC    call        dword ptr [ecx+8]
 00563EAF    mov         eax,esi
 00563EB1    call        TChartSeries.Repaint
 00563EB6    pop         edi
 00563EB7    pop         esi
 00563EB8    ret
*}
end;

//00563EBC
procedure TChartSeries.SetXValues(Value:TChartValueList);
begin
{*
 00563EBC    lea         ecx,[eax+84]
 00563EC2    xchg        ecx,edx
 00563EC4    call        TChartSeries.SetChartValueList
 00563EC9    ret
*}
end;

//00563ECC
procedure TChartSeries.SetYValues(Value:TChartValueList);
begin
{*
 00563ECC    lea         ecx,[eax+8C]
 00563ED2    xchg        ecx,edx
 00563ED4    call        TChartSeries.SetChartValueList
 00563ED9    ret
*}
end;

//00563EDC
procedure TChartSeries.SetTitle(Value:AnsiString);
begin
{*
 00563EDC    push        ebp
 00563EDD    mov         ebp,esp
 00563EDF    push        ecx
 00563EE0    push        ebx
 00563EE1    mov         dword ptr [ebp-4],edx
 00563EE4    mov         ebx,eax
 00563EE6    mov         eax,dword ptr [ebp-4]
 00563EE9    call        @LStrAddRef
 00563EEE    xor         eax,eax
 00563EF0    push        ebp
 00563EF1    push        563F1F
 00563EF6    push        dword ptr fs:[eax]
 00563EF9    mov         dword ptr fs:[eax],esp
 00563EFC    lea         edx,[ebx+78]
 00563EFF    mov         ecx,dword ptr [ebp-4]
 00563F02    mov         eax,ebx
 00563F04    call        TChartSeries.SetStringProperty
 00563F09    xor         eax,eax
 00563F0B    pop         edx
 00563F0C    pop         ecx
 00563F0D    pop         ecx
 00563F0E    mov         dword ptr fs:[eax],edx
 00563F11    push        563F26
 00563F16    lea         eax,[ebp-4]
 00563F19    call        @LStrClr
 00563F1E    ret
>00563F1F    jmp         @HandleFinally
>00563F24    jmp         00563F16
 00563F26    pop         ebx
 00563F27    pop         ecx
 00563F28    pop         ebp
 00563F29    ret
*}
end;

//00563F2C
function TChartSeries.GetValue(IsX:Boolean; ValueIndex:Integer):Double;
begin
{*
 00563F2C    add         esp,0FFFFFFF8
 00563F2F    test        dl,dl
>00563F31    je          00563F40
 00563F33    mov         edx,ecx
 00563F35    mov         ecx,dword ptr [eax]
 00563F37    call        dword ptr [ecx+64]
 00563F3A    fstp        qword ptr [esp]
 00563F3D    wait
>00563F3E    jmp         00563F4B
 00563F40    mov         edx,ecx
 00563F42    mov         ecx,dword ptr [eax]
 00563F44    call        dword ptr [ecx+68]
 00563F47    fstp        qword ptr [esp]
 00563F4A    wait
 00563F4B    fld         qword ptr [esp]
 00563F4E    pop         ecx
 00563F4F    pop         edx
 00563F50    ret
*}
end;

//00563F54
function CalcMinMaxValue(A:Integer; B:Integer; C:Integer; D:Integer):Double;
begin
{*
 00563F54    push        ebp
 00563F55    mov         ebp,esp
 00563F57    add         esp,0FFFFFFF8
 00563F5A    push        ebx
 00563F5B    push        esi
 00563F5C    push        edi
 00563F5D    mov         edi,ecx
 00563F5F    mov         esi,edx
 00563F61    mov         ebx,eax
 00563F63    mov         eax,dword ptr [ebp+0C]
 00563F66    mov         eax,dword ptr [eax-4]
 00563F69    call        TChartSeries.YMandatory
 00563F6E    test        al,al
>00563F70    je          00563F9E
 00563F72    mov         eax,dword ptr [ebp+0C]
 00563F75    mov         eax,dword ptr [eax-4]
 00563F78    mov         eax,dword ptr [eax+50]
 00563F7B    cmp         byte ptr [eax+8D],0
>00563F82    je          00563F91
 00563F84    mov         edx,edi
 00563F86    call        TCustomChartAxis.CalcPosPoint
 00563F8B    fstp        qword ptr [ebp-8]
 00563F8E    wait
>00563F8F    jmp         00563FC9
 00563F91    mov         edx,ebx
 00563F93    call        TCustomChartAxis.CalcPosPoint
 00563F98    fstp        qword ptr [ebp-8]
 00563F9B    wait
>00563F9C    jmp         00563FC9
 00563F9E    mov         eax,dword ptr [ebp+0C]
 00563FA1    mov         eax,dword ptr [eax-4]
 00563FA4    mov         eax,dword ptr [eax+54]
 00563FA7    cmp         byte ptr [eax+8D],0
>00563FAE    je          00563FBD
 00563FB0    mov         edx,esi
 00563FB2    call        TCustomChartAxis.CalcPosPoint
 00563FB7    fstp        qword ptr [ebp-8]
 00563FBA    wait
>00563FBB    jmp         00563FC9
 00563FBD    mov         edx,dword ptr [ebp+8]
 00563FC0    call        TCustomChartAxis.CalcPosPoint
 00563FC5    fstp        qword ptr [ebp-8]
 00563FC8    wait
 00563FC9    fld         qword ptr [ebp-8]
 00563FCC    pop         edi
 00563FCD    pop         esi
 00563FCE    pop         ebx
 00563FCF    pop         ecx
 00563FD0    pop         ecx
 00563FD1    pop         ebp
 00563FD2    ret         4
*}
end;

//00563FD8
procedure TChartSeries.CalcFirstLastVisibleIndex;
begin
{*
 00563FD8    push        ebp
 00563FD9    mov         ebp,esp
 00563FDB    add         esp,0FFFFFFE8
 00563FDE    push        ebx
 00563FDF    push        esi
 00563FE0    push        edi
 00563FE1    mov         dword ptr [ebp-4],eax
 00563FE4    lea         edi,[ebp-4]
 00563FE7    mov         eax,dword ptr [edi]
 00563FE9    mov         dword ptr [eax+4C],0FFFFFFFF
 00563FF0    mov         eax,dword ptr [edi]
 00563FF2    mov         dword ptr [eax+5C],0FFFFFFFF
 00563FF9    mov         eax,dword ptr [edi]
 00563FFB    call        TChartSeries.Count
 00564000    test        eax,eax
>00564002    jle         00564167
 00564008    mov         eax,dword ptr [edi]
 0056400A    call        TChartSeries.Count
 0056400F    mov         ebx,eax
 00564011    dec         ebx
 00564012    mov         eax,dword ptr [edi]
 00564014    call        TChartSeries.YMandatory
 00564019    test        al,al
>0056401B    je          0056402E
 0056401D    mov         eax,dword ptr [edi]
 0056401F    mov         eax,dword ptr [eax+84]
 00564025    cmp         byte ptr [eax+2C],0
 00564029    setne       al
>0056402C    jmp         0056403D
 0056402E    mov         eax,dword ptr [edi]
 00564030    mov         eax,dword ptr [eax+8C]
 00564036    cmp         byte ptr [eax+2C],0
 0056403A    setne       al
 0056403D    mov         edx,dword ptr [edi]
 0056403F    test        byte ptr [edx+0F8],al
>00564045    je          0056415B
 0056404B    mov         eax,dword ptr [edi]
 0056404D    xor         edx,edx
 0056404F    mov         dword ptr [eax+4C],edx
 00564052    mov         eax,dword ptr [edi]
 00564054    mov         eax,dword ptr [eax+68]
 00564057    add         eax,286
 0056405C    push        ebp
 0056405D    mov         edx,dword ptr [eax+0C]
 00564060    push        edx
 00564061    mov         ecx,dword ptr [eax+8]
 00564064    mov         edx,dword ptr [eax+4]
 00564067    mov         eax,dword ptr [eax]
 00564069    call        CalcMinMaxValue
 0056406E    pop         ecx
 0056406F    fstp        qword ptr [ebp-10]
 00564072    wait
 00564073    mov         eax,dword ptr [edi]
 00564075    call        TChartSeries.YMandatory
 0056407A    test        al,al
>0056407C    je          00564088
 0056407E    mov         eax,dword ptr [edi]
 00564080    mov         esi,dword ptr [eax+84]
>00564086    jmp         005640A9
 00564088    mov         eax,dword ptr [edi]
 0056408A    mov         esi,dword ptr [eax+8C]
>00564090    jmp         005640A9
 00564092    mov         eax,dword ptr [edi]
 00564094    inc         dword ptr [eax+4C]
 00564097    mov         eax,dword ptr [edi]
 00564099    cmp         ebx,dword ptr [eax+4C]
>0056409C    jge         005640A9
 0056409E    mov         eax,dword ptr [edi]
 005640A0    mov         dword ptr [eax+4C],0FFFFFFFF
>005640A7    jmp         005640BD
 005640A9    mov         eax,dword ptr [edi]
 005640AB    mov         edx,dword ptr [eax+4C]
 005640AE    mov         eax,esi
 005640B0    mov         ecx,dword ptr [eax]
 005640B2    call        dword ptr [ecx+0C]
 005640B5    fcomp       qword ptr [ebp-10]
 005640B8    fnstsw      al
 005640BA    sahf
>005640BB    jb          00564092
 005640BD    mov         eax,dword ptr [edi]
 005640BF    cmp         dword ptr [eax+4C],0
>005640C3    jl          00564167
 005640C9    mov         eax,dword ptr [edi]
 005640CB    mov         eax,dword ptr [eax+68]
 005640CE    add         eax,286
 005640D3    push        ebp
 005640D4    mov         edx,dword ptr [eax+4]
 005640D7    push        edx
 005640D8    mov         ecx,dword ptr [eax]
 005640DA    mov         edx,dword ptr [eax+0C]
 005640DD    push        edx
 005640DE    mov         eax,dword ptr [eax+8]
 005640E1    pop         edx
 005640E2    call        CalcMinMaxValue
 005640E7    pop         ecx
 005640E8    fstp        qword ptr [ebp-18]
 005640EB    wait
 005640EC    mov         eax,esi
 005640EE    call        TChartValueList.Last
 005640F3    fcomp       qword ptr [ebp-18]
 005640F6    fnstsw      al
 005640F8    sahf
>005640F9    ja          00564102
 005640FB    mov         eax,dword ptr [edi]
 005640FD    mov         dword ptr [eax+5C],ebx
>00564100    jmp         00564167
 00564102    mov         eax,dword ptr [edi]
 00564104    mov         eax,dword ptr [eax+4C]
 00564107    mov         edx,dword ptr [edi]
 00564109    mov         dword ptr [edx+5C],eax
>0056410C    jmp         00564121
 0056410E    mov         eax,dword ptr [edi]
 00564110    inc         dword ptr [eax+5C]
 00564113    mov         eax,dword ptr [edi]
 00564115    cmp         ebx,dword ptr [eax+5C]
>00564118    jge         00564121
 0056411A    mov         eax,dword ptr [edi]
 0056411C    mov         dword ptr [eax+5C],ebx
>0056411F    jmp         00564135
 00564121    mov         eax,dword ptr [edi]
 00564123    mov         edx,dword ptr [eax+5C]
 00564126    mov         eax,esi
 00564128    mov         ecx,dword ptr [eax]
 0056412A    call        dword ptr [ecx+0C]
 0056412D    fcomp       qword ptr [ebp-18]
 00564130    fnstsw      al
 00564132    sahf
>00564133    jb          0056410E
 00564135    mov         eax,dword ptr [edi]
 00564137    cmp         byte ptr [eax+0F9],0
>0056413E    jne         00564167
 00564140    mov         eax,dword ptr [edi]
 00564142    mov         edx,dword ptr [eax+5C]
 00564145    mov         eax,esi
 00564147    mov         ecx,dword ptr [eax]
 00564149    call        dword ptr [ecx+0C]
 0056414C    fcomp       qword ptr [ebp-18]
 0056414F    fnstsw      al
 00564151    sahf
>00564152    jbe         00564167
 00564154    mov         eax,dword ptr [edi]
 00564156    dec         dword ptr [eax+5C]
>00564159    jmp         00564167
 0056415B    mov         eax,dword ptr [edi]
 0056415D    xor         edx,edx
 0056415F    mov         dword ptr [eax+4C],edx
 00564162    mov         eax,dword ptr [edi]
 00564164    mov         dword ptr [eax+5C],ebx
 00564167    pop         edi
 00564168    pop         esi
 00564169    pop         ebx
 0056416A    mov         esp,ebp
 0056416C    pop         ebp
 0056416D    ret
*}
end;

//00564170
procedure TChartSeries.Repaint;
begin
{*
 00564170    push        esi
 00564171    push        edi
 00564172    mov         esi,eax
 00564174    mov         edi,dword ptr [esi+68]
 00564177    test        edi,edi
>00564179    je          00564182
 0056417B    mov         eax,edi
 0056417D    mov         edx,dword ptr [eax]
 0056417F    call        dword ptr [edx+7C]
 00564182    pop         edi
 00564183    pop         esi
 00564184    ret
*}
end;

//00564188
procedure TChartSeries.DrawValue(ValueIndex:Integer);
begin
{*
 00564188    ret
*}
end;

//0056418C
procedure TChartSeries.SetActive(Value:Boolean);
begin
{*
 0056418C    lea         ecx,[eax+30]
 0056418F    xchg        ecx,edx
 00564191    call        TChartSeries.SetIntegerProperty
 00564196    ret
*}
end;

//00564198
function TChartSeries.IsValueFormatStored(Value:String):Boolean;
begin
{*
 00564198    push        ebp
 00564199    mov         ebp,esp
 0056419B    push        0
 0056419D    push        ebx
 0056419E    mov         ebx,eax
 005641A0    xor         eax,eax
 005641A2    push        ebp
 005641A3    push        5641E1
 005641A8    push        dword ptr fs:[eax]
 005641AB    mov         dword ptr fs:[eax],esp
 005641AE    lea         edx,[ebp-4]
 005641B1    mov         eax,[006E9D30]
 005641B6    call        LoadResString
 005641BB    mov         edx,dword ptr [ebp-4]
 005641BE    mov         eax,dword ptr [ebx+7C]
 005641C1    call        @LStrCmp
 005641C6    setne       al
 005641C9    mov         ebx,eax
 005641CB    xor         eax,eax
 005641CD    pop         edx
 005641CE    pop         ecx
 005641CF    pop         ecx
 005641D0    mov         dword ptr fs:[eax],edx
 005641D3    push        5641E8
 005641D8    lea         eax,[ebp-4]
 005641DB    call        @LStrClr
 005641E0    ret
>005641E1    jmp         @HandleFinally
>005641E6    jmp         005641D8
 005641E8    mov         eax,ebx
 005641EA    pop         ebx
 005641EB    pop         ecx
 005641EC    pop         ebp
 005641ED    ret
*}
end;

//005641F0
function TChartSeries.IsPercentFormatStored(Value:String):Boolean;
begin
{*
 005641F0    push        ebp
 005641F1    mov         ebp,esp
 005641F3    push        0
 005641F5    push        ebx
 005641F6    mov         ebx,eax
 005641F8    xor         eax,eax
 005641FA    push        ebp
 005641FB    push        564239
 00564200    push        dword ptr fs:[eax]
 00564203    mov         dword ptr fs:[eax],esp
 00564206    lea         edx,[ebp-4]
 00564209    mov         eax,[006E9D2C]
 0056420E    call        LoadResString
 00564213    mov         edx,dword ptr [ebp-4]
 00564216    mov         eax,dword ptr [ebx+6C]
 00564219    call        @LStrCmp
 0056421E    setne       al
 00564221    mov         ebx,eax
 00564223    xor         eax,eax
 00564225    pop         edx
 00564226    pop         ecx
 00564227    pop         ecx
 00564228    mov         dword ptr fs:[eax],edx
 0056422B    push        564240
 00564230    lea         eax,[ebp-4]
 00564233    call        @LStrClr
 00564238    ret
>00564239    jmp         @HandleFinally
>0056423E    jmp         00564230
 00564240    mov         eax,ebx
 00564242    pop         ebx
 00564243    pop         ecx
 00564244    pop         ebp
 00564245    ret
*}
end;

//00564248
procedure TChartSeries.DeletedValue(Source:TChartSeries; ValueIndex:Integer);
begin
{*
 00564248    mov         edx,ecx
 0056424A    mov         ecx,dword ptr [eax]
 0056424C    call        dword ptr [ecx+0A0]
 00564252    ret
*}
end;

//00564254
procedure TChartSeries.AddValue(ValueIndex:Integer);
begin
{*
 00564254    push        esi
 00564255    push        edi
 00564256    push        ebp
 00564257    push        ecx
 00564258    mov         dword ptr [esp],edx
 0056425B    mov         ebp,dword ptr [eax+80]
 00564261    mov         esi,dword ptr [ebp+8]
 00564264    dec         esi
 00564265    sub         esi,2
>00564268    jl          0056428C
 0056426A    inc         esi
 0056426B    mov         edi,2
 00564270    mov         edx,edi
 00564272    mov         eax,ebp
 00564274    call        TChartValueLists.GetValueList
 00564279    push        dword ptr [eax+3C]
 0056427C    push        dword ptr [eax+38]
 0056427F    mov         edx,dword ptr [esp+8]
 00564283    mov         ecx,dword ptr [eax]
 00564285    call        dword ptr [ecx+1C]
 00564288    inc         edi
 00564289    dec         esi
>0056428A    jne         00564270
 0056428C    pop         edx
 0056428D    pop         ebp
 0056428E    pop         edi
 0056428F    pop         esi
 00564290    ret
*}
end;

//00564294
function TChartSeries.AddChartValue(Source:TChartSeries; ValueIndex:Integer):Integer;
begin
{*
 00564294    push        ebx
 00564295    push        esi
 00564296    push        edi
 00564297    add         esp,0FFFFFFE4
 0056429A    mov         dword ptr [esp],ecx
 0056429D    mov         edi,edx
 0056429F    mov         ebx,eax
 005642A1    mov         eax,dword ptr [edi+84]
 005642A7    mov         edx,dword ptr [esp]
 005642AA    mov         ecx,dword ptr [eax]
 005642AC    call        dword ptr [ecx+0C]
 005642AF    fstp        qword ptr [esp+8]
 005642B3    wait
 005642B4    mov         eax,dword ptr [edi+8C]
 005642BA    mov         edx,dword ptr [esp]
 005642BD    mov         ecx,dword ptr [eax]
 005642BF    call        dword ptr [ecx+0C]
 005642C2    fstp        qword ptr [esp+10]
 005642C6    wait
 005642C7    mov         eax,ebx
 005642C9    call        TChartSeries.YMandatory
 005642CE    push        eax
 005642CF    mov         eax,edi
 005642D1    call        TChartSeries.YMandatory
 005642D6    pop         edx
 005642D7    cmp         dl,al
>005642D9    je          005642E8
 005642DB    lea         edx,[esp+10]
 005642DF    lea         eax,[esp+8]
 005642E3    call        SwapDouble
 005642E8    push        dword ptr [esp+0C]
 005642EC    push        dword ptr [esp+0C]
 005642F0    mov         eax,dword ptr [ebx+84]
 005642F6    mov         edx,dword ptr [eax]
 005642F8    call        dword ptr [edx+18]
 005642FB    mov         dword ptr [esp+4],eax
 005642FF    push        dword ptr [esp+14]
 00564303    push        dword ptr [esp+14]
 00564307    mov         eax,dword ptr [ebx+8C]
 0056430D    mov         edx,dword ptr [esp+0C]
 00564311    mov         ecx,dword ptr [eax]
 00564313    call        dword ptr [ecx+1C]
 00564316    mov         eax,dword ptr [ebx+80]
 0056431C    mov         dword ptr [esp+18],eax
 00564320    mov         eax,dword ptr [esp+18]
 00564324    mov         esi,dword ptr [eax+8]
 00564327    dec         esi
 00564328    sub         esi,2
>0056432B    jl          00564367
 0056432D    inc         esi
 0056432E    mov         ebx,2
 00564333    mov         eax,dword ptr [edi+80]
 00564339    mov         edx,ebx
 0056433B    call        TChartValueLists.GetValueList
 00564340    mov         edx,dword ptr [esp]
 00564343    mov         ecx,dword ptr [eax]
 00564345    call        dword ptr [ecx+0C]
 00564348    add         esp,0FFFFFFF8
 0056434B    fstp        qword ptr [esp]
 0056434E    wait
 0056434F    mov         edx,ebx
 00564351    mov         eax,dword ptr [esp+20]
 00564355    call        TChartValueLists.GetValueList
 0056435A    mov         edx,dword ptr [esp+0C]
 0056435E    mov         ecx,dword ptr [eax]
 00564360    call        dword ptr [ecx+1C]
 00564363    inc         ebx
 00564364    dec         esi
>00564365    jne         00564333
 00564367    mov         eax,dword ptr [esp+4]
 0056436B    add         esp,1C
 0056436E    pop         edi
 0056436F    pop         esi
 00564370    pop         ebx
 00564371    ret
*}
end;

//00564374
procedure TChartSeries.AddedValue(Source:TChartSeries; ValueIndex:Integer);
begin
{*
 00564374    push        ebp
 00564375    mov         ebp,esp
 00564377    add         esp,0FFFFFFF4
 0056437A    push        ebx
 0056437B    push        esi
 0056437C    push        edi
 0056437D    xor         ebx,ebx
 0056437F    mov         dword ptr [ebp-0C],ebx
 00564382    mov         dword ptr [ebp-4],ecx
 00564385    mov         esi,edx
 00564387    mov         ebx,eax
 00564389    xor         eax,eax
 0056438B    push        ebp
 0056438C    push        564412
 00564391    push        dword ptr fs:[eax]
 00564394    mov         dword ptr fs:[eax],esp
 00564397    mov         ecx,dword ptr [ebp-4]
 0056439A    mov         edx,esi
 0056439C    mov         eax,ebx
 0056439E    mov         edi,dword ptr [eax]
 005643A0    call        dword ptr [edi+30]
 005643A3    mov         dword ptr [ebp-8],eax
 005643A6    mov         edi,dword ptr [esi+3C]
 005643A9    mov         eax,dword ptr [edi+8]
 005643AC    cmp         eax,dword ptr [ebp-4]
>005643AF    jle         005643C8
 005643B1    mov         edx,dword ptr [ebp-4]
 005643B4    mov         eax,edi
 005643B6    call        TList.Get
 005643BB    mov         ecx,eax
 005643BD    mov         edx,dword ptr [ebp-8]
 005643C0    mov         eax,dword ptr [ebx+3C]
 005643C3    call        TList.Insert
 005643C8    mov         eax,dword ptr [esi+88]
 005643CE    mov         eax,dword ptr [eax+8]
 005643D1    cmp         eax,dword ptr [ebp-4]
>005643D4    jle         005643F0
 005643D6    lea         ecx,[ebp-0C]
 005643D9    mov         edx,dword ptr [ebp-4]
 005643DC    mov         eax,esi
 005643DE    mov         esi,dword ptr [eax]
 005643E0    call        dword ptr [esi+60]
 005643E3    mov         ecx,dword ptr [ebp-0C]
 005643E6    mov         edx,dword ptr [ebp-8]
 005643E9    mov         eax,ebx
 005643EB    call        TChartSeries.InsertLabel
 005643F0    mov         ecx,dword ptr [ebp-8]
 005643F3    mov         edx,ebx
 005643F5    mov         eax,ebx
 005643F7    mov         ebx,dword ptr [eax]
 005643F9    call        dword ptr [ebx+6C]
 005643FC    xor         eax,eax
 005643FE    pop         edx
 005643FF    pop         ecx
 00564400    pop         ecx
 00564401    mov         dword ptr fs:[eax],edx
 00564404    push        564419
 00564409    lea         eax,[ebp-0C]
 0056440C    call        @LStrClr
 00564411    ret
>00564412    jmp         @HandleFinally
>00564417    jmp         00564409
 00564419    pop         edi
 0056441A    pop         esi
 0056441B    pop         ebx
 0056441C    mov         esp,ebp
 0056441E    pop         ebp
 0056441F    ret
*}
end;

//00564420
{*function sub_00564420(?:?):?;
begin
 00564420    mov         eax,edx
 00564422    ret
end;*}

//00564424
function TChartSeries.LegendString(LegendIndex:Integer; LegendTextStyle:TLegendTextStyle):AnsiString;
begin
{*
 00564424    push        ebp
 00564425    mov         ebp,esp
 00564427    add         esp,0FFFFFFE0
 0056442A    push        ebx
 0056442B    push        esi
 0056442C    push        edi
 0056442D    xor         ebx,ebx
 0056442F    mov         dword ptr [ebp-1C],ebx
 00564432    mov         dword ptr [ebp-20],ebx
 00564435    mov         byte ptr [ebp-1],cl
 00564438    mov         ebx,eax
 0056443A    xor         eax,eax
 0056443C    push        ebp
 0056443D    push        5645EB
 00564442    push        dword ptr fs:[eax]
 00564445    mov         dword ptr fs:[eax],esp
 00564448    mov         eax,ebx
 0056444A    mov         ecx,dword ptr [eax]
 0056444C    call        dword ptr [ecx+0B4]
 00564452    mov         esi,eax
 00564454    mov         ecx,dword ptr [ebp+8]
 00564457    mov         edx,esi
 00564459    mov         eax,ebx
 0056445B    mov         edi,dword ptr [eax]
 0056445D    call        dword ptr [edi+60]
 00564460    cmp         byte ptr [ebp-1],0
>00564464    je          005645D0
 0056446A    mov         edx,esi
 0056446C    mov         eax,ebx
 0056446E    mov         ecx,dword ptr [eax]
 00564470    call        dword ptr [ecx+0FC]
 00564476    fstp        qword ptr [ebp-10]
 00564479    wait
 0056447A    fld         qword ptr [ebp-10]
 0056447D    add         esp,0FFFFFFF4
 00564480    fstp        tbyte ptr [esp]
 00564483    wait
 00564484    lea         edx,[ebp-1C]
 00564487    mov         eax,dword ptr [ebx+7C]
 0056448A    call        FormatFloat
 0056448F    cmp         byte ptr [ebp-1],3
>00564493    je          0056449B
 00564495    cmp         byte ptr [ebp-1],4
>00564499    jne         005644F2
 0056449B    mov         eax,ebx
 0056449D    mov         edx,dword ptr [eax]
 0056449F    call        dword ptr [edx+104]
 005644A5    mov         edi,eax
 005644A7    mov         eax,edi
 005644A9    call        TChartValueList.GetTotalABS
 005644AE    fcomp       dword ptr ds:[5645FC]
 005644B4    fnstsw      al
 005644B6    sahf
>005644B7    jne         005644C7
 005644B9    xor         eax,eax
 005644BB    mov         dword ptr [ebp-18],eax
 005644BE    mov         dword ptr [ebp-14],40590000
>005644C5    jmp         005644DD
 005644C7    mov         eax,edi
 005644C9    call        TChartValueList.GetTotalABS
 005644CE    fld         dword ptr ds:[564600]
 005644D4    fmul        qword ptr [ebp-10]
 005644D7    fdivrp      st(1),st
 005644D9    fstp        qword ptr [ebp-18]
 005644DC    wait
 005644DD    fld         qword ptr [ebp-18]
 005644E0    add         esp,0FFFFFFF4
 005644E3    fstp        tbyte ptr [esp]
 005644E6    wait
 005644E7    lea         edx,[ebp-20]
 005644EA    mov         eax,dword ptr [ebx+6C]
 005644ED    call        FormatFloat
 005644F2    xor         eax,eax
 005644F4    mov         al,byte ptr [ebp-1]
 005644F7    cmp         eax,5
>005644FA    ja          005645D0
 00564500    jmp         dword ptr [eax*4+564507]
 00564500    dd          005645D0
 00564500    dd          0056451F
 00564500    dd          0056453E
 00564500    dd          0056455A
 00564500    dd          00564576
 00564500    dd          00564592
 0056451F    push        dword ptr [ebp-1C]
 00564522    push        56460C;' '
 00564527    mov         eax,dword ptr [ebp+8]
 0056452A    push        dword ptr [eax]
 0056452C    mov         eax,dword ptr [ebp+8]
 0056452F    mov         edx,3
 00564534    call        @LStrCatN
>00564539    jmp         005645D0
 0056453E    mov         eax,dword ptr [ebp+8]
 00564541    push        dword ptr [eax]
 00564543    push        56460C;' '
 00564548    push        dword ptr [ebp-1C]
 0056454B    mov         eax,dword ptr [ebp+8]
 0056454E    mov         edx,3
 00564553    call        @LStrCatN
>00564558    jmp         005645D0
 0056455A    push        dword ptr [ebp-20]
 0056455D    push        56460C;' '
 00564562    mov         eax,dword ptr [ebp+8]
 00564565    push        dword ptr [eax]
 00564567    mov         eax,dword ptr [ebp+8]
 0056456A    mov         edx,3
 0056456F    call        @LStrCatN
>00564574    jmp         005645D0
 00564576    mov         eax,dword ptr [ebp+8]
 00564579    push        dword ptr [eax]
 0056457B    push        56460C;' '
 00564580    push        dword ptr [ebp-20]
 00564583    mov         eax,dword ptr [ebp+8]
 00564586    mov         edx,3
 0056458B    call        @LStrCatN
>00564590    jmp         005645D0
 00564592    mov         edi,dword ptr [ebx+50]
 00564595    test        edi,edi
>00564597    jne         005645B6
 00564599    mov         edx,esi
 0056459B    mov         eax,ebx
 0056459D    mov         ecx,dword ptr [eax]
 0056459F    call        dword ptr [ecx+64]
 005645A2    add         esp,0FFFFFFF4
 005645A5    fstp        tbyte ptr [esp]
 005645A8    wait
 005645A9    mov         edx,dword ptr [ebp+8]
 005645AC    mov         eax,dword ptr [ebx+7C]
 005645AF    call        FormatFloat
>005645B4    jmp         005645D0
 005645B6    mov         edx,esi
 005645B8    mov         eax,ebx
 005645BA    mov         ecx,dword ptr [eax]
 005645BC    call        dword ptr [ecx+64]
 005645BF    add         esp,0FFFFFFF8
 005645C2    fstp        qword ptr [esp]
 005645C5    wait
 005645C6    mov         edx,dword ptr [ebp+8]
 005645C9    mov         eax,edi
 005645CB    call        TCustomChartAxis.LabelValue
 005645D0    xor         eax,eax
 005645D2    pop         edx
 005645D3    pop         ecx
 005645D4    pop         ecx
 005645D5    mov         dword ptr fs:[eax],edx
 005645D8    push        5645F2
 005645DD    lea         eax,[ebp-20]
 005645E0    mov         edx,2
 005645E5    call        @LStrArrayClr
 005645EA    ret
>005645EB    jmp         @HandleFinally
>005645F0    jmp         005645DD
 005645F2    pop         edi
 005645F3    pop         esi
 005645F4    pop         ebx
 005645F5    mov         esp,ebp
 005645F7    pop         ebp
 005645F8    ret         4
*}
end;

//00564610
procedure TChartSeries.AddValues(Source:TChartSeries);
begin
{*
 00564610    push        ebx
 00564611    push        esi
 00564612    push        edi
 00564613    push        ebp
 00564614    push        ecx
 00564615    mov         esi,edx
 00564617    mov         ebx,eax
 00564619    mov         edx,esi
 0056461B    mov         eax,ebx
 0056461D    mov         ecx,dword ptr [eax]
 0056461F    call        dword ptr [ecx+0AC]
 00564625    test        al,al
>00564627    je          005646A2
 00564629    mov         eax,ebx
 0056462B    mov         edx,dword ptr [eax]
 0056462D    call        dword ptr [edx+98]
 00564633    cmp         dword ptr [ebx+0A4],0
>0056463A    jne         00564666
 0056463C    mov         eax,esi
 0056463E    call        TChartSeries.Count
 00564643    mov         edi,eax
 00564645    dec         edi
 00564646    test        edi,edi
>00564648    jl          0056469B
 0056464A    inc         edi
 0056464B    mov         dword ptr [esp],0
 00564652    mov         ecx,dword ptr [esp]
 00564655    mov         edx,esi
 00564657    mov         eax,ebx
 00564659    mov         ebp,dword ptr [eax]
 0056465B    call        dword ptr [ebp+34]
 0056465E    inc         dword ptr [esp]
 00564661    dec         edi
>00564662    jne         00564652
>00564664    jmp         0056469B
 00564666    mov         eax,dword ptr [esi+84]
 0056466C    mov         dl,byte ptr [eax+4]
 0056466F    mov         eax,dword ptr [ebx+84]
 00564675    call        TChartValueList.SetDateTime
 0056467A    mov         eax,dword ptr [esi+8C]
 00564680    mov         dl,byte ptr [eax+4]
 00564683    mov         eax,dword ptr [ebx+8C]
 00564689    call        TChartValueList.SetDateTime
 0056468E    mov         edx,esi
 00564690    mov         eax,dword ptr [ebx+0A4]
 00564696    mov         ecx,dword ptr [eax]
 00564698    call        dword ptr [ecx+44]
 0056469B    mov         eax,ebx
 0056469D    call        TChartSeries.RefreshSeries
 005646A2    pop         edx
 005646A3    pop         ebp
 005646A4    pop         edi
 005646A5    pop         esi
 005646A6    pop         ebx
 005646A7    ret
*}
end;

//005646A8
procedure TChartSeries.AssignValues(Source:TChartSeries);
begin
{*
 005646A8    mov         ecx,dword ptr [eax]
 005646AA    call        dword ptr [ecx+38]
 005646AD    ret
*}
end;

//005646B0
procedure TChartSeries.RefreshSeries;
begin
{*
 005646B0    xor         ecx,ecx
 005646B2    mov         dl,3
 005646B4    call        TChartSeries.NotifyValue
 005646B9    ret
*}
end;

//005646BC
function TChartSeries.GetEditorClass:AnsiString;
begin
{*
 005646BC    push        ebx
 005646BD    mov         ebx,edx
 005646BF    mov         eax,ebx
 005646C1    call        @LStrClr
 005646C6    pop         ebx
 005646C7    ret
*}
end;

//005646C8
function TChartSeries.MoreSameZOrder:Boolean;
begin
{*
 005646C8    push        ebx
 005646C9    push        esi
 005646CA    push        edi
 005646CB    push        ebp
 005646CC    mov         ebx,eax
 005646CE    mov         eax,dword ptr [ebx+68]
 005646D1    cmp         byte ptr [eax+224],0
>005646D8    je          00564726
 005646DA    mov         eax,dword ptr [eax+2E0]
 005646E0    mov         edi,dword ptr [eax+8]
 005646E3    dec         edi
 005646E4    test        edi,edi
>005646E6    jl          00564726
 005646E8    inc         edi
 005646E9    xor         ebp,ebp
 005646EB    mov         edx,ebp
 005646ED    mov         eax,dword ptr [ebx+68]
 005646F0    call        TCustomAxisPanel.GetSeries
 005646F5    mov         esi,eax
 005646F7    cmp         ebx,esi
>005646F9    je          00564722
 005646FB    cmp         byte ptr [esi+30],0
>005646FF    je          00564722
 00564701    cmp         byte ptr [esi+0FB],0
>00564708    jne         00564722
 0056470A    mov         eax,esi
 0056470C    call        TChartSeries.GetZOrder
 00564711    push        eax
 00564712    mov         eax,ebx
 00564714    call        TChartSeries.GetZOrder
 00564719    pop         edx
 0056471A    cmp         edx,eax
>0056471C    jne         00564722
 0056471E    mov         al,1
>00564720    jmp         00564728
 00564722    inc         ebp
 00564723    dec         edi
>00564724    jne         005646EB
 00564726    xor         eax,eax
 00564728    pop         ebp
 00564729    pop         edi
 0056472A    pop         esi
 0056472B    pop         ebx
 0056472C    ret
*}
end;

//00564730
function TChartSeries.FirstInZOrder:Boolean;
begin
{*
 00564730    push        ebx
 00564731    push        esi
 00564732    push        edi
 00564733    push        ebp
 00564734    push        ecx
 00564735    mov         ebx,eax
 00564737    cmp         byte ptr [ebx+30],0
>0056473B    je          0056478B
 0056473D    mov         byte ptr [esp],1
 00564741    mov         eax,dword ptr [ebx+68]
 00564744    mov         eax,dword ptr [eax+2E0]
 0056474A    mov         edi,dword ptr [eax+8]
 0056474D    dec         edi
 0056474E    test        edi,edi
>00564750    jl          0056478F
 00564752    inc         edi
 00564753    xor         ebp,ebp
 00564755    mov         edx,ebp
 00564757    mov         eax,dword ptr [ebx+68]
 0056475A    call        TCustomAxisPanel.GetSeries
 0056475F    mov         esi,eax
 00564761    cmp         ebx,esi
>00564763    je          0056478F
 00564765    cmp         byte ptr [esi+30],0
>00564769    je          00564785
 0056476B    mov         eax,esi
 0056476D    call        TChartSeries.GetZOrder
 00564772    push        eax
 00564773    mov         eax,ebx
 00564775    call        TChartSeries.GetZOrder
 0056477A    pop         edx
 0056477B    cmp         edx,eax
>0056477D    jne         00564785
 0056477F    mov         byte ptr [esp],0
>00564783    jmp         0056478F
 00564785    inc         ebp
 00564786    dec         edi
>00564787    jne         00564755
>00564789    jmp         0056478F
 0056478B    mov         byte ptr [esp],0
 0056478F    mov         al,byte ptr [esp]
 00564792    pop         edx
 00564793    pop         ebp
 00564794    pop         edi
 00564795    pop         esi
 00564796    pop         ebx
 00564797    ret
*}
end;

//00564798
procedure sub_00564798;
begin
{*
 00564798    ret
*}
end;

//0056479C
procedure TChartSeries.DoBeforeDrawValues;
begin
{*
 0056479C    push        ebx
 0056479D    cmp         word ptr [eax+0BA],0
>005647A5    je          005647B7
 005647A7    mov         ebx,eax
 005647A9    mov         edx,eax
 005647AB    mov         eax,dword ptr [ebx+0BC]
 005647B1    call        dword ptr [ebx+0B8]
 005647B7    pop         ebx
 005647B8    ret
*}
end;

//005647BC
procedure TChartSeries.DoAfterDrawValues;
begin
{*
 005647BC    push        ebx
 005647BD    cmp         word ptr [eax+0B2],0
>005647C5    je          005647D7
 005647C7    mov         ebx,eax
 005647C9    mov         edx,eax
 005647CB    mov         eax,dword ptr [ebx+0B4]
 005647D1    call        dword ptr [ebx+0B0]
 005647D7    pop         ebx
 005647D8    ret
*}
end;

//005647DC
procedure TChartSeries.DrawMarks;
begin
{*
 005647DC    push        ebp
 005647DD    mov         ebp,esp
 005647DF    add         esp,0FFFFFFE4
 005647E2    push        ebx
 005647E3    push        esi
 005647E4    push        edi
 005647E5    xor         edx,edx
 005647E7    mov         dword ptr [ebp-8],edx
 005647EA    mov         ebx,eax
 005647EC    xor         eax,eax
 005647EE    push        ebp
 005647EF    push        5649CC
 005647F4    push        dword ptr fs:[eax]
 005647F7    mov         dword ptr fs:[eax],esp
 005647FA    mov         dl,1
 005647FC    mov         eax,[0055D338];TSeriesMarkPosition
 00564801    call        TObject.Create
 00564806    mov         esi,eax
 00564808    mov         eax,dword ptr [ebx+68]
 0056480B    mov         dword ptr [ebp-10],eax
 0056480E    mov         eax,dword ptr [ebx+64]
 00564811    mov         dword ptr [ebp-14],eax
 00564814    mov         eax,dword ptr [ebx+4C]
 00564817    mov         edx,dword ptr [ebx+5C]
 0056481A    sub         edx,eax
>0056481C    jl          005649AF
 00564822    inc         edx
 00564823    mov         dword ptr [ebp-18],edx
 00564826    mov         dword ptr [ebp-4],eax
 00564829    mov         edx,dword ptr [ebp-4]
 0056482C    mov         eax,ebx
 0056482E    call        TChartSeries.IsNull
 00564833    test        al,al
>00564835    jne         005649A3
 0056483B    lea         ecx,[ebp-8]
 0056483E    mov         edx,dword ptr [ebp-4]
 00564841    mov         eax,ebx
 00564843    call        TChartSeries.GetMarkText
 00564848    cmp         dword ptr [ebp-8],0
>0056484C    je          005649A3
 00564852    mov         eax,dword ptr [ebp-14]
 00564855    mov         edx,dword ptr [eax+18]
 00564858    mov         eax,dword ptr [ebp-10]
 0056485B    mov         ecx,dword ptr [eax]
 0056485D    call        dword ptr [ecx+0D8]
 00564863    mov         eax,dword ptr [ebp-10]
 00564866    cmp         byte ptr [eax+270],0
>0056486D    je          005648DC
 0056486F    mov         eax,dword ptr [ebp-10]
 00564872    mov         eax,dword ptr [eax+280]
 00564878    mov         edx,dword ptr [eax]
 0056487A    call        dword ptr [edx+9C]
 00564880    test        al,al
>00564882    jne         005648DC
 00564884    mov         eax,dword ptr [ebp-10]
 00564887    mov         eax,dword ptr [eax+274]
 0056488D    cmp         byte ptr [eax+24],0
>00564891    je          005648DC
 00564893    mov         eax,dword ptr [ebp-10]
 00564896    mov         eax,dword ptr [eax+280]
 0056489C    mov         edi,dword ptr [eax+8]
 0056489F    mov         eax,edi
 005648A1    call        TFont.GetSize
 005648A6    mov         dword ptr [ebp-1C],eax
 005648A9    fild        dword ptr [ebp-1C]
 005648AC    mov         eax,dword ptr [ebp-10]
 005648AF    mov         eax,dword ptr [eax+274]
 005648B5    fild        dword ptr [eax+20]
 005648B8    fld         tbyte ptr ds:[5649DC]
 005648BE    fmulp       st(1),st
 005648C0    fmulp       st(1),st
 005648C2    call        @ROUND
 005648C7    mov         edx,eax
 005648C9    mov         eax,1
 005648CE    call        0056EDD0
 005648D3    mov         edx,eax
 005648D5    mov         eax,edi
 005648D7    call        TFont.SetSize
 005648DC    lea         ecx,[ebp-0C]
 005648DF    mov         edx,dword ptr [ebp-8]
 005648E2    mov         eax,dword ptr [ebp-10]
 005648E5    call        TCustomTeePanel.MultiLineTextWidth
 005648EA    mov         edi,eax
 005648EC    mov         eax,dword ptr [ebp-10]
 005648EF    mov         eax,dword ptr [eax+280]
 005648F5    mov         edx,5649F0;'W'
 005648FA    mov         ecx,dword ptr [eax]
 005648FC    call        dword ptr [ecx+60]
 005648FF    add         edi,eax
 00564901    mov         eax,dword ptr [ebp-10]
 00564904    mov         eax,dword ptr [eax+280]
 0056490A    call        TTeeCanvas.FontHeight
 0056490F    imul        dword ptr [ebp-0C]
 00564912    mov         dword ptr [ebp-0C],eax
 00564915    mov         eax,dword ptr [ebp-14]
 00564918    mov         edx,dword ptr [eax+14]
 0056491B    mov         eax,dword ptr [ebp-10]
 0056491E    mov         eax,dword ptr [eax+280]
 00564924    call        TTeeCanvas.AssignVisiblePen
 00564929    mov         eax,dword ptr [ebp-14]
 0056492C    mov         eax,dword ptr [eax+14]
 0056492F    cmp         byte ptr [eax+21],0
>00564933    je          00564947
 00564935    mov         eax,dword ptr [ebp-14]
 00564938    mov         eax,dword ptr [eax+14]
 0056493B    call        TPen.GetWidth
 00564940    add         eax,eax
 00564942    add         edi,eax
 00564944    add         dword ptr [ebp-0C],eax
 00564947    mov         dword ptr [esi+24],edi
 0056494A    mov         eax,dword ptr [ebp-0C]
 0056494D    mov         dword ptr [esi+18],eax
 00564950    mov         edx,dword ptr [ebp-4]
 00564953    mov         eax,ebx
 00564955    mov         ecx,dword ptr [eax]
 00564957    call        dword ptr [ecx+0E4]
 0056495D    mov         dword ptr [esi+0C],eax
 00564960    mov         edx,dword ptr [ebp-4]
 00564963    mov         eax,ebx
 00564965    mov         ecx,dword ptr [eax]
 00564967    call        dword ptr [ecx+0E8]
 0056496D    mov         dword ptr [esi+10],eax
 00564970    mov         eax,dword ptr [esi+0C]
 00564973    mov         dword ptr [esi+4],eax
 00564976    mov         eax,dword ptr [esi+10]
 00564979    mov         dword ptr [esi+8],eax
 0056497C    sar         edi,1
>0056497E    jns         00564983
 00564980    adc         edi,0
 00564983    mov         eax,dword ptr [esi+0C]
 00564986    sub         eax,edi
 00564988    mov         dword ptr [esi+1C],eax
 0056498B    mov         eax,dword ptr [esi+10]
 0056498E    sub         eax,dword ptr [ebp-0C]
 00564991    inc         eax
 00564992    mov         dword ptr [esi+20],eax
 00564995    push        esi
 00564996    mov         ecx,dword ptr [ebp-8]
 00564999    mov         edx,dword ptr [ebp-4]
 0056499C    mov         eax,ebx
 0056499E    mov         edi,dword ptr [eax]
 005649A0    call        dword ptr [edi+54]
 005649A3    inc         dword ptr [ebp-4]
 005649A6    dec         dword ptr [ebp-18]
>005649A9    jne         00564829
 005649AF    mov         eax,esi
 005649B1    call        TObject.Free
 005649B6    xor         eax,eax
 005649B8    pop         edx
 005649B9    pop         ecx
 005649BA    pop         ecx
 005649BB    mov         dword ptr fs:[eax],edx
 005649BE    push        5649D3
 005649C3    lea         eax,[ebp-8]
 005649C6    call        @LStrClr
 005649CB    ret
>005649CC    jmp         @HandleFinally
>005649D1    jmp         005649C3
 005649D3    pop         edi
 005649D4    pop         esi
 005649D5    pop         ebx
 005649D6    mov         esp,ebp
 005649D8    pop         ebp
 005649D9    ret
*}
end;

//005649F4
procedure TChartSeries.CalcHorizMargins(var LeftMargin:Integer; var RightMargin:Integer);
begin
{*
 005649F4    xor         eax,eax
 005649F6    mov         dword ptr [edx],eax
 005649F8    xor         eax,eax
 005649FA    mov         dword ptr [ecx],eax
 005649FC    ret
*}
end;

//00564A00
procedure TChartSeries.CalcVerticalMargins(var TopMargin:Integer; var BottomMargin:Integer);
begin
{*
 00564A00    xor         eax,eax
 00564A02    mov         dword ptr [edx],eax
 00564A04    xor         eax,eax
 00564A06    mov         dword ptr [ecx],eax
 00564A08    ret
*}
end;

//00564A0C
procedure TChartSeries.DrawMark(ValueIndex:Integer; const St:AnsiString; APosition:TSeriesMarkPosition);
begin
{*
 00564A0C    push        ebp
 00564A0D    mov         ebp,esp
 00564A0F    push        ebx
 00564A10    push        esi
 00564A11    push        edi
 00564A12    mov         edi,ecx
 00564A14    mov         esi,edx
 00564A16    mov         ebx,eax
 00564A18    push        edi
 00564A19    mov         eax,dword ptr [ebp+8]
 00564A1C    push        eax
 00564A1D    mov         edx,esi
 00564A1F    mov         eax,ebx
 00564A21    mov         ecx,dword ptr [eax]
 00564A23    call        dword ptr [ecx+5C]
 00564A26    mov         ecx,eax
 00564A28    mov         edx,esi
 00564A2A    mov         eax,dword ptr [ebx+64]
 00564A2D    call        TSeriesMarks.Draw
 00564A32    pop         edi
 00564A33    pop         esi
 00564A34    pop         ebx
 00564A35    pop         ebp
 00564A36    ret         4
*}
end;

//00564A3C
procedure TChartSeries.SetBooleanProperty(var Variable:Boolean; Value:Boolean);
begin
{*
 00564A3C    cmp         ecx,dword ptr [edx]
>00564A3E    je          00564A47
 00564A40    mov         dword ptr [edx],ecx
 00564A42    call        TChartSeries.Repaint
 00564A47    ret
*}
end;

//00564A48
procedure TChartSeries.SetLongintProperty(var Variable:Integer; Value:Integer);
begin
{*
 00564A48    cmp         ecx,dword ptr [edx]
>00564A4A    je          00564A53
 00564A4C    mov         dword ptr [edx],ecx
 00564A4E    call        TChartSeries.Repaint
 00564A53    ret
*}
end;

//00564A54
procedure TChartSeries.SetStringProperty(var Variable:AnsiString; const Value:AnsiString);
begin
{*
 00564A54    push        ebx
 00564A55    push        esi
 00564A56    push        edi
 00564A57    mov         edi,ecx
 00564A59    mov         esi,edx
 00564A5B    mov         ebx,eax
 00564A5D    mov         eax,dword ptr [esi]
 00564A5F    mov         edx,edi
 00564A61    call        @LStrCmp
>00564A66    je          00564A78
 00564A68    mov         eax,esi
 00564A6A    mov         edx,edi
 00564A6C    call        @LStrAsg
 00564A71    mov         eax,ebx
 00564A73    call        TChartSeries.Repaint
 00564A78    pop         edi
 00564A79    pop         esi
 00564A7A    pop         ebx
 00564A7B    ret
*}
end;

//00564A7C
procedure TChartSeries.SetIntegerProperty(var Variable:Integer; Value:Integer);
begin
{*
 00564A7C    cmp         cl,byte ptr [edx]
>00564A7E    je          00564A87
 00564A80    mov         byte ptr [edx],cl
 00564A82    call        TChartSeries.Repaint
 00564A87    ret
*}
end;

//00564A88
procedure TChartSeries.InsertLabel(ValueIndex:Integer; const ALabel:AnsiString);
begin
{*
 00564A88    push        ebx
 00564A89    push        esi
 00564A8A    push        edi
 00564A8B    mov         edi,ecx
 00564A8D    mov         esi,edx
 00564A8F    mov         ebx,eax
 00564A91    mov         edx,edi
 00564A93    mov         eax,ebx
 00564A95    call        TChartSeries.GetMemLabel
 00564A9A    mov         ecx,eax
 00564A9C    mov         edx,esi
 00564A9E    mov         eax,dword ptr [ebx+88]
 00564AA4    call        TList.Insert
 00564AA9    pop         edi
 00564AAA    pop         esi
 00564AAB    pop         ebx
 00564AAC    ret
*}
end;

//00564AB0
function TChartSeries.AddXY(const ALabel:AnsiString; AColor:TColor; const AXValue:Double; const AYValue:Double):Integer;
begin
{*
 00564AB0    push        ebp
 00564AB1    mov         ebp,esp
 00564AB3    add         esp,0FFFFFFF8
 00564AB6    push        ebx
 00564AB7    push        esi
 00564AB8    push        edi
 00564AB9    mov         dword ptr [ebp-8],ecx
 00564ABC    mov         dword ptr [ebp-4],edx
 00564ABF    mov         ebx,eax
 00564AC1    or          esi,0FFFFFFFF
 00564AC4    mov         eax,dword ptr [ebx+84]
 00564ACA    mov         edx,dword ptr [ebp+10]
 00564ACD    mov         dword ptr [eax+38],edx
 00564AD0    mov         edx,dword ptr [ebp+14]
 00564AD3    mov         dword ptr [eax+3C],edx
 00564AD6    mov         eax,dword ptr [ebx+8C]
 00564ADC    mov         edx,dword ptr [ebp+8]
 00564ADF    mov         dword ptr [eax+38],edx
 00564AE2    mov         edx,dword ptr [ebp+0C]
 00564AE5    mov         dword ptr [eax+3C],edx
 00564AE8    cmp         word ptr [ebx+0CA],0
>00564AF0    je          00564B04
 00564AF2    mov         edx,ebx
 00564AF4    mov         eax,dword ptr [ebx+0CC]
 00564AFA    call        dword ptr [ebx+0C8]
 00564B00    test        al,al
>00564B02    je          00564B50
 00564B04    mov         eax,dword ptr [ebx+84]
 00564B0A    push        dword ptr [eax+3C]
 00564B0D    push        dword ptr [eax+38]
 00564B10    mov         edx,dword ptr [eax]
 00564B12    call        dword ptr [edx+18]
 00564B15    mov         esi,eax
 00564B17    mov         edi,dword ptr [ebx+8C]
 00564B1D    push        dword ptr [edi+3C]
 00564B20    push        dword ptr [edi+38]
 00564B23    mov         edx,esi
 00564B25    mov         eax,edi
 00564B27    mov         ecx,dword ptr [eax]
 00564B29    call        dword ptr [ecx+1C]
 00564B2C    mov         ecx,dword ptr [ebp-8]
 00564B2F    mov         edx,esi
 00564B31    mov         eax,dword ptr [ebx+3C]
 00564B34    call        TList.Insert
 00564B39    mov         ecx,dword ptr [ebp-4]
 00564B3C    mov         edx,esi
 00564B3E    mov         eax,ebx
 00564B40    call        TChartSeries.InsertLabel
 00564B45    mov         ecx,esi
 00564B47    mov         edx,ebx
 00564B49    mov         eax,ebx
 00564B4B    mov         ebx,dword ptr [eax]
 00564B4D    call        dword ptr [ebx+6C]
 00564B50    mov         eax,esi
 00564B52    pop         edi
 00564B53    pop         esi
 00564B54    pop         ebx
 00564B55    pop         ecx
 00564B56    pop         ecx
 00564B57    pop         ebp
 00564B58    ret         10
*}
end;

//00564B5C
procedure TChartSeries.NotifyNewValue(Sender:TChartSeries; ValueIndex:Integer);
begin
{*
 00564B5C    push        ebx
 00564B5D    push        esi
 00564B5E    mov         esi,ecx
 00564B60    mov         ebx,eax
 00564B62    cmp         word ptr [ebx+0C2],0
>00564B6A    je          00564B7A
 00564B6C    mov         ecx,esi
 00564B6E    mov         eax,dword ptr [ebx+0C4]
 00564B74    call        dword ptr [ebx+0C0]
 00564B7A    mov         ecx,esi
 00564B7C    mov         dl,1
 00564B7E    mov         eax,ebx
 00564B80    call        TChartSeries.NotifyValue
 00564B85    cmp         byte ptr [ebx+30],0
>00564B89    je          00564B92
 00564B8B    mov         eax,ebx
 00564B8D    call        TChartSeries.Repaint
 00564B92    pop         esi
 00564B93    pop         ebx
 00564B94    ret
*}
end;

//00564B98
function TChartSeries.IsNull(ValueIndex:Integer):Boolean;
begin
{*
 00564B98    push        ebx
 00564B99    push        esi
 00564B9A    mov         esi,edx
 00564B9C    mov         ebx,eax
 00564B9E    mov         edx,esi
 00564BA0    mov         eax,ebx
 00564BA2    mov         ecx,dword ptr [eax]
 00564BA4    call        dword ptr [ecx+5C]
 00564BA7    cmp         eax,1FFFFFFF
 00564BAC    sete        al
 00564BAF    pop         esi
 00564BB0    pop         ebx
 00564BB1    ret
*}
end;

//00564BB4
function TChartSeries.AddNull(const ALabel:AnsiString):Integer;
begin
{*
 00564BB4    push        ebx
 00564BB5    push        0
 00564BB7    push        0
 00564BB9    mov         ecx,1FFFFFFF
 00564BBE    mov         ebx,dword ptr [eax]
 00564BC0    call        dword ptr [ebx+84]
 00564BC6    pop         ebx
 00564BC7    ret
*}
end;

//00564BC8
function TChartSeries.AddNullXY(const ALabel:AnsiString; const X:Double; const Y:Double):Integer;
begin
{*
 00564BC8    push        ebp
 00564BC9    mov         ebp,esp
 00564BCB    push        ebx
 00564BCC    push        dword ptr [ebp+14]
 00564BCF    push        dword ptr [ebp+10]
 00564BD2    push        dword ptr [ebp+0C]
 00564BD5    push        dword ptr [ebp+8]
 00564BD8    mov         ecx,1FFFFFFF
 00564BDD    mov         ebx,dword ptr [eax]
 00564BDF    call        dword ptr [ebx+90]
 00564BE5    pop         ebx
 00564BE6    pop         ebp
 00564BE7    ret         10
*}
end;

//00564BEC
function TChartSeries.Add(const ALabel:AnsiString; AColor:TColor; const AValue:Double):Integer;
begin
{*
 00564BEC    push        ebp
 00564BED    mov         ebp,esp
 00564BEF    push        ebx
 00564BF0    push        esi
 00564BF1    push        edi
 00564BF2    mov         edi,ecx
 00564BF4    mov         esi,edx
 00564BF6    mov         ebx,eax
 00564BF8    mov         eax,ebx
 00564BFA    call        TChartSeries.YMandatory
 00564BFF    test        al,al
>00564C01    je          00564C16
 00564C03    push        dword ptr [ebp+0C]
 00564C06    push        dword ptr [ebp+8]
 00564C09    mov         ecx,edi
 00564C0B    mov         edx,esi
 00564C0D    mov         eax,ebx
 00564C0F    call        TChartSeries.AddY
>00564C14    jmp         00564C27
 00564C16    push        dword ptr [ebp+0C]
 00564C19    push        dword ptr [ebp+8]
 00564C1C    mov         ecx,edi
 00564C1E    mov         edx,esi
 00564C20    mov         eax,ebx
 00564C22    call        TChartSeries.AddX
 00564C27    pop         edi
 00564C28    pop         esi
 00564C29    pop         ebx
 00564C2A    pop         ebp
 00564C2B    ret         8
*}
end;

//00564C30
function TChartSeries.AddX(const ALabel:AnsiString; AColor:TColor; const AXValue:Double):Integer;
begin
{*
 00564C30    push        ebp
 00564C31    mov         ebp,esp
 00564C33    push        ecx
 00564C34    push        ebx
 00564C35    push        esi
 00564C36    push        edi
 00564C37    mov         edi,ecx
 00564C39    mov         esi,edx
 00564C3B    mov         ebx,eax
 00564C3D    push        dword ptr [ebp+0C]
 00564C40    push        dword ptr [ebp+8]
 00564C43    mov         eax,dword ptr [ebx+84]
 00564C49    mov         edx,dword ptr [eax]
 00564C4B    call        dword ptr [edx+24]
 00564C4E    mov         dword ptr [ebp-4],eax
 00564C51    fild        dword ptr [ebp-4]
 00564C54    add         esp,0FFFFFFF8
 00564C57    fstp        qword ptr [esp]
 00564C5A    wait
 00564C5B    mov         ecx,edi
 00564C5D    mov         edx,esi
 00564C5F    mov         eax,ebx
 00564C61    mov         ebx,dword ptr [eax]
 00564C63    call        dword ptr [ebx+90]
 00564C69    pop         edi
 00564C6A    pop         esi
 00564C6B    pop         ebx
 00564C6C    pop         ecx
 00564C6D    pop         ebp
 00564C6E    ret         8
*}
end;

//00564C74
function TChartSeries.AddY(const ALabel:AnsiString; AColor:TColor; const AYValue:Double):Integer;
begin
{*
 00564C74    push        ebp
 00564C75    mov         ebp,esp
 00564C77    push        ecx
 00564C78    push        ebx
 00564C79    push        esi
 00564C7A    push        edi
 00564C7B    mov         edi,ecx
 00564C7D    mov         esi,edx
 00564C7F    mov         ebx,eax
 00564C81    mov         eax,dword ptr [ebx+84]
 00564C87    mov         edx,dword ptr [eax]
 00564C89    call        dword ptr [edx+24]
 00564C8C    mov         dword ptr [ebp-4],eax
 00564C8F    fild        dword ptr [ebp-4]
 00564C92    add         esp,0FFFFFFF8
 00564C95    fstp        qword ptr [esp]
 00564C98    wait
 00564C99    push        dword ptr [ebp+0C]
 00564C9C    push        dword ptr [ebp+8]
 00564C9F    mov         ecx,edi
 00564CA1    mov         edx,esi
 00564CA3    mov         eax,ebx
 00564CA5    mov         ebx,dword ptr [eax]
 00564CA7    call        dword ptr [ebx+90]
 00564CAD    pop         edi
 00564CAE    pop         esi
 00564CAF    pop         ebx
 00564CB0    pop         ecx
 00564CB1    pop         ebp
 00564CB2    ret         8
*}
end;

//00564CB8
function TChartSeries.Count:Integer;
begin
{*
 00564CB8    mov         eax,dword ptr [eax+84]
 00564CBE    mov         edx,dword ptr [eax]
 00564CC0    call        dword ptr [edx+24]
 00564CC3    ret
*}
end;

//00564CC4
procedure sub_00564CC4;
begin
{*
 00564CC4    call        TChartSeries.Count
 00564CC9    ret
*}
end;

//00564CCC
function TChartSeries.MarkPercent(ValueIndex:Integer; AddTotal:Boolean):AnsiString;
begin
{*
 00564CCC    push        ebp
 00564CCD    mov         ebp,esp
 00564CCF    add         esp,0FFFFFFCC
 00564CD2    push        ebx
 00564CD3    push        esi
 00564CD4    push        edi
 00564CD5    xor         ebx,ebx
 00564CD7    mov         dword ptr [ebp-30],ebx
 00564CDA    mov         dword ptr [ebp-34],ebx
 00564CDD    mov         byte ptr [ebp-5],cl
 00564CE0    mov         dword ptr [ebp-4],edx
 00564CE3    mov         ebx,eax
 00564CE5    mov         edi,dword ptr [ebp+8]
 00564CE8    xor         eax,eax
 00564CEA    push        ebp
 00564CEB    push        564DCA
 00564CF0    push        dword ptr fs:[eax]
 00564CF3    mov         dword ptr fs:[eax],esp
 00564CF6    mov         eax,ebx
 00564CF8    mov         edx,dword ptr [eax]
 00564CFA    call        dword ptr [edx+104]
 00564D00    mov         esi,eax
 00564D02    mov         eax,esi
 00564D04    call        TChartValueList.GetTotalABS
 00564D09    fcomp       dword ptr ds:[564DDC]
 00564D0F    fnstsw      al
 00564D11    sahf
>00564D12    je          00564D3F
 00564D14    mov         edx,dword ptr [ebp-4]
 00564D17    mov         eax,ebx
 00564D19    mov         ecx,dword ptr [eax]
 00564D1B    call        dword ptr [ecx+0FC]
 00564D21    fabs
 00564D23    fmul        dword ptr ds:[564DE0]
 00564D29    fstp        tbyte ptr [ebp-1C]
 00564D2C    wait
 00564D2D    mov         eax,esi
 00564D2F    call        TChartValueList.GetTotalABS
 00564D34    fld         tbyte ptr [ebp-1C]
 00564D37    fdivrp      st(1),st
 00564D39    fstp        qword ptr [ebp-10]
 00564D3C    wait
>00564D3D    jmp         00564D4B
 00564D3F    xor         eax,eax
 00564D41    mov         dword ptr [ebp-10],eax
 00564D44    mov         dword ptr [ebp-0C],40590000
 00564D4B    fld         qword ptr [ebp-10]
 00564D4E    add         esp,0FFFFFFF4
 00564D51    fstp        tbyte ptr [esp]
 00564D54    wait
 00564D55    mov         edx,edi
 00564D57    mov         eax,dword ptr [ebx+6C]
 00564D5A    call        FormatFloat
 00564D5F    cmp         byte ptr [ebp-5],0
>00564D63    je          00564DAF
 00564D65    push        1
 00564D67    mov         eax,dword ptr [edi]
 00564D69    mov         dword ptr [ebp-2C],eax
 00564D6C    mov         byte ptr [ebp-28],0B
 00564D70    mov         eax,esi
 00564D72    call        TChartValueList.GetTotalABS
 00564D77    add         esp,0FFFFFFF4
 00564D7A    fstp        tbyte ptr [esp]
 00564D7D    wait
 00564D7E    lea         edx,[ebp-30]
 00564D81    mov         eax,dword ptr [ebx+7C]
 00564D84    call        FormatFloat
 00564D89    mov         eax,dword ptr [ebp-30]
 00564D8C    mov         dword ptr [ebp-24],eax
 00564D8F    mov         byte ptr [ebp-20],0B
 00564D93    lea         eax,[ebp-2C]
 00564D96    push        eax
 00564D97    lea         edx,[ebp-34]
 00564D9A    mov         eax,[006E9D28]
 00564D9F    call        LoadResString
 00564DA4    mov         edx,dword ptr [ebp-34]
 00564DA7    mov         eax,edi
 00564DA9    pop         ecx
 00564DAA    call        FmtStr
 00564DAF    xor         eax,eax
 00564DB1    pop         edx
 00564DB2    pop         ecx
 00564DB3    pop         ecx
 00564DB4    mov         dword ptr fs:[eax],edx
 00564DB7    push        564DD1
 00564DBC    lea         eax,[ebp-34]
 00564DBF    mov         edx,2
 00564DC4    call        @LStrArrayClr
 00564DC9    ret
>00564DCA    jmp         @HandleFinally
>00564DCF    jmp         00564DBC
 00564DD1    pop         edi
 00564DD2    pop         esi
 00564DD3    pop         ebx
 00564DD4    mov         esp,ebp
 00564DD6    pop         ebp
 00564DD7    ret         4
*}
end;

//00564DE4
function TChartSeries.GetOriginValue(ValueIndex:Integer):Double;
begin
{*
 00564DE4    add         esp,0FFFFFFF8
 00564DE7    mov         ecx,dword ptr [eax]
 00564DE9    call        dword ptr [ecx+0FC]
 00564DEF    fstp        qword ptr [esp]
 00564DF2    wait
 00564DF3    fld         qword ptr [esp]
 00564DF6    pop         ecx
 00564DF7    pop         edx
 00564DF8    ret
*}
end;

//00564DFC
function TChartSeries.GetMarkValue(ValueIndex:Integer):Double;
begin
{*
 00564DFC    push        ebx
 00564DFD    push        esi
 00564DFE    add         esp,0FFFFFFF8
 00564E01    mov         esi,edx
 00564E03    mov         ebx,eax
 00564E05    mov         eax,ebx
 00564E07    mov         edx,dword ptr [eax]
 00564E09    call        dword ptr [edx+104]
 00564E0F    mov         edx,esi
 00564E11    mov         ecx,dword ptr [eax]
 00564E13    call        dword ptr [ecx+0C]
 00564E16    fstp        qword ptr [esp]
 00564E19    wait
 00564E1A    fld         qword ptr [esp]
 00564E1D    pop         ecx
 00564E1E    pop         edx
 00564E1F    pop         esi
 00564E20    pop         ebx
 00564E21    ret
*}
end;

//00564E24
function XLabelOrValue(ValueIndex:Integer):AnsiString;
begin
{*
 00564E24    push        ebp
 00564E25    mov         ebp,esp
 00564E27    push        ebx
 00564E28    push        esi
 00564E29    push        edi
 00564E2A    mov         ebx,edx
 00564E2C    mov         esi,eax
 00564E2E    mov         ecx,ebx
 00564E30    mov         eax,dword ptr [ebp+8]
 00564E33    mov         eax,dword ptr [eax-4]
 00564E36    mov         edx,esi
 00564E38    mov         edi,dword ptr [eax]
 00564E3A    call        dword ptr [edi+60]
 00564E3D    cmp         dword ptr [ebx],0
>00564E40    jne         00564E69
 00564E42    mov         eax,dword ptr [ebp+8]
 00564E45    mov         eax,dword ptr [eax-4]
 00564E48    mov         edx,esi
 00564E4A    mov         ecx,dword ptr [eax]
 00564E4C    call        dword ptr [ecx+0FC]
 00564E52    add         esp,0FFFFFFF4
 00564E55    fstp        tbyte ptr [esp]
 00564E58    wait
 00564E59    mov         edx,ebx
 00564E5B    mov         eax,dword ptr [ebp+8]
 00564E5E    mov         eax,dword ptr [eax-4]
 00564E61    mov         eax,dword ptr [eax+7C]
 00564E64    call        FormatFloat
 00564E69    pop         edi
 00564E6A    pop         esi
 00564E6B    pop         ebx
 00564E6C    pop         ebp
 00564E6D    ret
*}
end;

//00564E70
function TChartSeries.GetMarkText(ValueIndex:Integer):AnsiString;
begin
{*
 00564E70    push        ebp
 00564E71    mov         ebp,esp
 00564E73    push        ecx
 00564E74    mov         ecx,4
 00564E79    push        0
 00564E7B    push        0
 00564E7D    dec         ecx
>00564E7E    jne         00564E79
 00564E80    xchg        ecx,dword ptr [ebp-4]
 00564E83    push        ebx
 00564E84    push        esi
 00564E85    mov         dword ptr [ebp-8],ecx
 00564E88    mov         ebx,edx
 00564E8A    mov         dword ptr [ebp-4],eax
 00564E8D    xor         eax,eax
 00564E8F    push        ebp
 00564E90    push        5650AC
 00564E95    push        dword ptr fs:[eax]
 00564E98    mov         dword ptr fs:[eax],esp
 00564E9B    mov         eax,dword ptr [ebp-4]
 00564E9E    mov         eax,dword ptr [eax+64]
 00564EA1    movzx       eax,byte ptr [eax+1C]
 00564EA5    cmp         eax,8
>00564EA8    ja          00565064
 00564EAE    jmp         dword ptr [eax*4+564EB5]
 00564EAE    dd          00564ED9
 00564EAE    dd          00564F00
 00564EAE    dd          00564F15
 00564EAE    dd          00564F31
 00564EAE    dd          00564F6A
 00564EAE    dd          00564FB5
 00564EAE    dd          00564FD1
 00564EAE    dd          00564FE6
 00564EAE    dd          0056501C
 00564ED9    mov         edx,ebx
 00564EDB    mov         eax,dword ptr [ebp-4]
 00564EDE    mov         ecx,dword ptr [eax]
 00564EE0    call        dword ptr [ecx+0FC]
 00564EE6    add         esp,0FFFFFFF4
 00564EE9    fstp        tbyte ptr [esp]
 00564EEC    wait
 00564EED    mov         edx,dword ptr [ebp-8]
 00564EF0    mov         eax,dword ptr [ebp-4]
 00564EF3    mov         eax,dword ptr [eax+7C]
 00564EF6    call        FormatFloat
>00564EFB    jmp         0056506C
 00564F00    mov         eax,dword ptr [ebp-8]
 00564F03    push        eax
 00564F04    xor         ecx,ecx
 00564F06    mov         edx,ebx
 00564F08    mov         eax,dword ptr [ebp-4]
 00564F0B    call        TChartSeries.MarkPercent
>00564F10    jmp         0056506C
 00564F15    push        ebp
 00564F16    lea         edx,[ebp-0C]
 00564F19    mov         eax,ebx
 00564F1B    call        XLabelOrValue
 00564F20    pop         ecx
 00564F21    mov         edx,dword ptr [ebp-0C]
 00564F24    mov         eax,dword ptr [ebp-8]
 00564F27    call        @LStrAsg
>00564F2C    jmp         0056506C
 00564F31    push        ebp
 00564F32    lea         edx,[ebp-10]
 00564F35    mov         eax,ebx
 00564F37    call        XLabelOrValue
 00564F3C    pop         ecx
 00564F3D    push        dword ptr [ebp-10]
 00564F40    push        5650C4;' '
 00564F45    lea         eax,[ebp-14]
 00564F48    push        eax
 00564F49    xor         ecx,ecx
 00564F4B    mov         edx,ebx
 00564F4D    mov         eax,dword ptr [ebp-4]
 00564F50    call        TChartSeries.MarkPercent
 00564F55    push        dword ptr [ebp-14]
 00564F58    mov         eax,dword ptr [ebp-8]
 00564F5B    mov         edx,3
 00564F60    call        @LStrCatN
>00564F65    jmp         0056506C
 00564F6A    push        ebp
 00564F6B    lea         edx,[ebp-18]
 00564F6E    mov         eax,ebx
 00564F70    call        XLabelOrValue
 00564F75    pop         ecx
 00564F76    push        dword ptr [ebp-18]
 00564F79    push        5650C4;' '
 00564F7E    mov         edx,ebx
 00564F80    mov         eax,dword ptr [ebp-4]
 00564F83    mov         ecx,dword ptr [eax]
 00564F85    call        dword ptr [ecx+0FC]
 00564F8B    add         esp,0FFFFFFF4
 00564F8E    fstp        tbyte ptr [esp]
 00564F91    wait
 00564F92    lea         edx,[ebp-1C]
 00564F95    mov         eax,dword ptr [ebp-4]
 00564F98    mov         eax,dword ptr [eax+7C]
 00564F9B    call        FormatFloat
 00564FA0    push        dword ptr [ebp-1C]
 00564FA3    mov         eax,dword ptr [ebp-8]
 00564FA6    mov         edx,3
 00564FAB    call        @LStrCatN
>00564FB0    jmp         0056506C
 00564FB5    mov         eax,dword ptr [ebp-8]
 00564FB8    push        eax
 00564FB9    mov         eax,dword ptr [ebp-4]
 00564FBC    mov         eax,dword ptr [eax+68]
 00564FBF    mov         ecx,ebx
 00564FC1    mov         edx,dword ptr [ebp-4]
 00564FC4    mov         esi,dword ptr [eax]
 00564FC6    call        dword ptr [esi+108]
>00564FCC    jmp         0056506C
 00564FD1    mov         eax,dword ptr [ebp-8]
 00564FD4    push        eax
 00564FD5    mov         cl,1
 00564FD7    mov         edx,ebx
 00564FD9    mov         eax,dword ptr [ebp-4]
 00564FDC    call        TChartSeries.MarkPercent
>00564FE1    jmp         0056506C
 00564FE6    push        ebp
 00564FE7    lea         edx,[ebp-20]
 00564FEA    mov         eax,ebx
 00564FEC    call        XLabelOrValue
 00564FF1    pop         ecx
 00564FF2    push        dword ptr [ebp-20]
 00564FF5    push        5650C4;' '
 00564FFA    lea         eax,[ebp-24]
 00564FFD    push        eax
 00564FFE    mov         cl,1
 00565000    mov         edx,ebx
 00565002    mov         eax,dword ptr [ebp-4]
 00565005    call        TChartSeries.MarkPercent
 0056500A    push        dword ptr [ebp-24]
 0056500D    mov         eax,dword ptr [ebp-8]
 00565010    mov         edx,3
 00565015    call        @LStrCatN
>0056501A    jmp         0056506C
 0056501C    mov         eax,dword ptr [ebp-4]
 0056501F    mov         esi,dword ptr [eax+50]
 00565022    test        esi,esi
>00565024    jne         00565047
 00565026    mov         edx,ebx
 00565028    mov         eax,dword ptr [ebp-4]
 0056502B    mov         ecx,dword ptr [eax]
 0056502D    call        dword ptr [ecx+64]
 00565030    add         esp,0FFFFFFF4
 00565033    fstp        tbyte ptr [esp]
 00565036    wait
 00565037    mov         edx,dword ptr [ebp-8]
 0056503A    mov         eax,dword ptr [ebp-4]
 0056503D    mov         eax,dword ptr [eax+7C]
 00565040    call        FormatFloat
>00565045    jmp         0056506C
 00565047    mov         edx,ebx
 00565049    mov         eax,dword ptr [ebp-4]
 0056504C    mov         ecx,dword ptr [eax]
 0056504E    call        dword ptr [ecx+64]
 00565051    add         esp,0FFFFFFF8
 00565054    fstp        qword ptr [esp]
 00565057    wait
 00565058    mov         edx,dword ptr [ebp-8]
 0056505B    mov         eax,esi
 0056505D    call        TCustomChartAxis.LabelValue
>00565062    jmp         0056506C
 00565064    mov         eax,dword ptr [ebp-8]
 00565067    call        @LStrClr
 0056506C    mov         eax,dword ptr [ebp-4]
 0056506F    cmp         word ptr [eax+0EA],0
>00565077    je          00565091
 00565079    mov         eax,dword ptr [ebp-8]
 0056507C    push        eax
 0056507D    mov         esi,dword ptr [ebp-4]
 00565080    mov         ecx,ebx
 00565082    mov         edx,dword ptr [ebp-4]
 00565085    mov         eax,dword ptr [esi+0EC]
 0056508B    call        dword ptr [esi+0E8]
 00565091    xor         eax,eax
 00565093    pop         edx
 00565094    pop         ecx
 00565095    pop         ecx
 00565096    mov         dword ptr fs:[eax],edx
 00565099    push        5650B3
 0056509E    lea         eax,[ebp-24]
 005650A1    mov         edx,7
 005650A6    call        @LStrArrayClr
 005650AB    ret
>005650AC    jmp         @HandleFinally
>005650B1    jmp         0056509E
 005650B3    pop         esi
 005650B4    pop         ebx
 005650B5    mov         esp,ebp
 005650B7    pop         ebp
 005650B8    ret
*}
end;

//005650C8
procedure TChartSeries.SetValueFormat(const Value:AnsiString);
begin
{*
 005650C8    lea         ecx,[eax+7C]
 005650CB    xchg        ecx,edx
 005650CD    call        TChartSeries.SetStringProperty
 005650D2    ret
*}
end;

//005650D4
procedure TChartSeries.SetPercentFormat(const Value:AnsiString);
begin
{*
 005650D4    lea         ecx,[eax+6C]
 005650D7    xchg        ecx,edx
 005650D9    call        TChartSeries.SetStringProperty
 005650DE    ret
*}
end;

//005650E0
procedure TChartSeries.PrepareForGallery(IsEnabled:Boolean);
begin
{*
 005650E0    push        ebx
 005650E1    push        esi
 005650E2    mov         ebx,edx
 005650E4    mov         esi,eax
 005650E6    mov         edx,4
 005650EB    mov         eax,esi
 005650ED    mov         ecx,dword ptr [eax]
 005650EF    call        dword ptr [ecx+0A4]
 005650F5    xor         edx,edx
 005650F7    mov         eax,dword ptr [esi+64]
 005650FA    call        TSeriesMarks.SetVisible
 005650FF    mov         byte ptr [esi+38],0
 00565103    test        bl,bl
>00565105    jne         00565116
 00565107    mov         edx,0C0C0C0
 0056510C    mov         eax,esi
 0056510E    mov         ecx,dword ptr [eax]
 00565110    call        dword ptr [ecx+80]
 00565116    pop         esi
 00565117    pop         ebx
 00565118    ret
*}
end;

//0056511C
{*function sub_0056511C:?;
begin
 0056511C    mov         eax,1A
 00565121    ret
end;*}

//00565124
procedure TChartSeries.CalcRandomBounds(NumValues:Integer; var tmpX:Double; var StepX:Double; var tmpY:Double; var MinY:Double; var DifY:Double);
begin
{*
 00565124    push        ebp
 00565125    mov         ebp,esp
 00565127    add         esp,0FFFFFFDC
 0056512A    push        ebx
 0056512B    push        esi
 0056512C    push        edi
 0056512D    mov         dword ptr [ebp-8],ecx
 00565130    mov         dword ptr [ebp-4],edx
 00565133    mov         ebx,eax
 00565135    mov         esi,dword ptr [ebp+8]
 00565138    mov         edi,dword ptr [ebp+0C]
 0056513B    call        Randomize
 00565140    xor         eax,eax
 00565142    mov         dword ptr [edi],eax
 00565144    mov         dword ptr [edi+4],eax
 00565147    xor         eax,eax
 00565149    mov         dword ptr [ebp-20],eax
 0056514C    mov         dword ptr [ebp-1C],408F4000
 00565153    cmp         dword ptr [ebx+68],0
>00565157    je          0056520B
 0056515D    mov         eax,dword ptr [ebx+68]
 00565160    call        TCustomAxisPanel.GetMaxValuesCount
 00565165    test        eax,eax
>00565167    jle         0056520B
 0056516D    mov         edx,dword ptr [ebx+54]
 00565170    mov         eax,dword ptr [ebx+68]
 00565173    call        TCustomAxisPanel.MinYValue
 00565178    fstp        qword ptr [edi]
 0056517A    wait
 0056517B    mov         edx,dword ptr [ebx+54]
 0056517E    mov         eax,dword ptr [ebx+68]
 00565181    call        TCustomAxisPanel.MaxYValue
 00565186    fstp        qword ptr [ebp-20]
 00565189    wait
 0056518A    fld         qword ptr [ebp-20]
 0056518D    fcomp       qword ptr [edi]
 0056518F    fnstsw      al
 00565191    sahf
>00565192    jne         005651BC
 00565194    fld         qword ptr [ebp-20]
 00565197    fcomp       dword ptr ds:[5652E0]
 0056519D    fnstsw      al
 0056519F    sahf
>005651A0    jne         005651B0
 005651A2    xor         eax,eax
 005651A4    mov         dword ptr [ebp-20],eax
 005651A7    mov         dword ptr [ebp-1C],408F4000
>005651AE    jmp         005651BC
 005651B0    fld         dword ptr ds:[5652E4]
 005651B6    fmul        qword ptr [edi]
 005651B8    fstp        qword ptr [ebp-20]
 005651BB    wait
 005651BC    mov         edx,dword ptr [ebx+50]
 005651BF    mov         eax,dword ptr [ebx+68]
 005651C2    call        TCustomAxisPanel.MinXValue
 005651C7    fstp        qword ptr [ebp-10]
 005651CA    wait
 005651CB    mov         edx,dword ptr [ebx+50]
 005651CE    mov         eax,dword ptr [ebx+68]
 005651D1    call        TCustomAxisPanel.MaxXValue
 005651D6    fstp        qword ptr [ebp-18]
 005651D9    wait
 005651DA    fld         qword ptr [ebp-18]
 005651DD    fcomp       qword ptr [ebp-10]
 005651E0    fnstsw      al
 005651E2    sahf
>005651E3    jne         00565248
 005651E5    fld         qword ptr [ebp-18]
 005651E8    fcomp       dword ptr ds:[5652E0]
 005651EE    fnstsw      al
 005651F0    sahf
>005651F1    jne         005651FC
 005651F3    fild        dword ptr [ebp-4]
 005651F6    fstp        qword ptr [ebp-18]
 005651F9    wait
>005651FA    jmp         00565248
 005651FC    fld         dword ptr ds:[5652E4]
 00565202    fmul        qword ptr [ebp-10]
 00565205    fstp        qword ptr [ebp-18]
 00565208    wait
>00565209    jmp         00565248
 0056520B    mov         eax,dword ptr [ebx+84]
 00565211    cmp         byte ptr [eax+4],0
>00565215    je          00565232
 00565217    call        Date
 0056521C    fstp        qword ptr [ebp-10]
 0056521F    wait
 00565220    fild        dword ptr [ebp-4]
 00565223    fadd        qword ptr [ebp-10]
 00565226    fsub        dword ptr ds:[5652E8]
 0056522C    fstp        qword ptr [ebp-18]
 0056522F    wait
>00565230    jmp         00565248
 00565232    xor         eax,eax
 00565234    mov         dword ptr [ebp-10],eax
 00565237    mov         dword ptr [ebp-0C],eax
 0056523A    mov         eax,dword ptr [ebp-4]
 0056523D    dec         eax
 0056523E    mov         dword ptr [ebp-24],eax
 00565241    fild        dword ptr [ebp-24]
 00565244    fstp        qword ptr [ebp-18]
 00565247    wait
 00565248    fld         qword ptr [ebp-18]
 0056524B    fsub        qword ptr [ebp-10]
 0056524E    mov         eax,dword ptr [ebp+14]
 00565251    fstp        qword ptr [eax]
 00565253    wait
 00565254    cmp         dword ptr [ebp-4],1
>00565258    jle         0056526F
 0056525A    mov         eax,dword ptr [ebp-4]
 0056525D    dec         eax
 0056525E    mov         dword ptr [ebp-24],eax
 00565261    fild        dword ptr [ebp-24]
 00565264    mov         eax,dword ptr [ebp+14]
 00565267    fdivr       qword ptr [eax]
 00565269    mov         eax,dword ptr [ebp+14]
 0056526C    fstp        qword ptr [eax]
 0056526E    wait
 0056526F    fld         qword ptr [ebp-20]
 00565272    fsub        qword ptr [edi]
 00565274    fstp        qword ptr [esi]
 00565276    wait
 00565277    fld         tbyte ptr ds:[5652EC]
 0056527D    fcomp       qword ptr [esi]
 0056527F    fnstsw      al
 00565281    sahf
>00565282    jae         00565293
 00565284    mov         dword ptr [esi],0FFC00000
 0056528A    mov         dword ptr [esi+4],41DFFFFF
>00565291    jmp         005652AD
 00565293    fld         tbyte ptr ds:[5652F8]
 00565299    fcomp       qword ptr [esi]
 0056529B    fnstsw      al
 0056529D    sahf
>0056529E    jbe         005652AD
 005652A0    mov         dword ptr [esi],0FFC00000
 005652A6    mov         dword ptr [esi+4],0C1DFFFFF
 005652AD    fld         qword ptr [esi]
 005652AF    call        @ROUND
 005652B4    call        @RandInt
 005652B9    mov         dword ptr [ebp-24],eax
 005652BC    fild        dword ptr [ebp-24]
 005652BF    fadd        qword ptr [edi]
 005652C1    mov         eax,dword ptr [ebp+10]
 005652C4    fstp        qword ptr [eax]
 005652C6    wait
 005652C7    mov         eax,dword ptr [ebp-8]
 005652CA    mov         edx,dword ptr [ebp-10]
 005652CD    mov         dword ptr [eax],edx
 005652CF    mov         edx,dword ptr [ebp-0C]
 005652D2    mov         dword ptr [eax+4],edx
 005652D5    pop         edi
 005652D6    pop         esi
 005652D7    pop         ebx
 005652D8    mov         esp,ebp
 005652DA    pop         ebp
 005652DB    ret         10
*}
end;

//00565304
procedure TChartSeries.FillSampleValues(NumValues:Integer);
begin
{*
 00565304    push        ebp
 00565305    mov         ebp,esp
 00565307    add         esp,0FFFFFFC4
 0056530A    push        ebx
 0056530B    push        esi
 0056530C    push        edi
 0056530D    xor         ecx,ecx
 0056530F    mov         dword ptr [ebp-34],ecx
 00565312    mov         esi,edx
 00565314    mov         ebx,eax
 00565316    xor         eax,eax
 00565318    push        ebp
 00565319    push        565413
 0056531E    push        dword ptr fs:[eax]
 00565321    mov         dword ptr fs:[eax],esp
 00565324    test        esi,esi
>00565326    jg          00565349
 00565328    lea         edx,[ebp-34]
 0056532B    mov         eax,[006E9CF0]
 00565330    call        LoadResString
 00565335    mov         ecx,dword ptr [ebp-34]
 00565338    mov         dl,1
 0056533A    mov         eax,[00567B78];ChartException
 0056533F    call        Exception.Create
 00565344    call        @RaiseExcept
 00565349    mov         eax,ebx
 0056534B    mov         edx,dword ptr [eax]
 0056534D    call        dword ptr [edx+98]
 00565353    lea         eax,[ebp-10]
 00565356    push        eax
 00565357    lea         eax,[ebp-20]
 0056535A    push        eax
 0056535B    lea         eax,[ebp-28]
 0056535E    push        eax
 0056535F    lea         eax,[ebp-30]
 00565362    push        eax
 00565363    lea         ecx,[ebp-18]
 00565366    mov         edx,esi
 00565368    mov         eax,ebx
 0056536A    call        TChartSeries.CalcRandomBounds
 0056536F    push        0
 00565371    push        4
 00565373    fld         qword ptr [ebp-30]
 00565376    call        @ROUND
 0056537B    call        @_lldiv
 00565380    mov         dword ptr [ebp-4],eax
 00565383    mov         eax,dword ptr [ebx+68]
 00565386    test        eax,eax
>00565388    je          00565391
 0056538A    mov         byte ptr [eax+284],0
 00565391    test        esi,esi
>00565393    jle         005653E8
 00565395    mov         eax,dword ptr [ebp-4]
 00565398    call        @RandInt
 0056539D    mov         dword ptr [ebp-38],eax
 005653A0    fild        dword ptr [ebp-38]
 005653A3    fadd        qword ptr [ebp-20]
 005653A6    mov         eax,dword ptr [ebp-4]
 005653A9    sar         eax,1
>005653AB    jns         005653B0
 005653AD    adc         eax,0
 005653B0    mov         dword ptr [ebp-3C],eax
 005653B3    fild        dword ptr [ebp-3C]
 005653B6    fsubp       st(1),st
 005653B8    fabs
 005653BA    fstp        qword ptr [ebp-20]
 005653BD    wait
 005653BE    push        dword ptr [ebp-14]
 005653C1    push        dword ptr [ebp-18]
 005653C4    push        dword ptr [ebp-1C]
 005653C7    push        dword ptr [ebp-20]
 005653CA    mov         ecx,20000000
 005653CF    xor         edx,edx
 005653D1    mov         eax,ebx
 005653D3    mov         edi,dword ptr [eax]
 005653D5    call        dword ptr [edi+90]
 005653DB    fld         qword ptr [ebp-18]
 005653DE    fadd        qword ptr [ebp-10]
 005653E1    fstp        qword ptr [ebp-18]
 005653E4    wait
 005653E5    dec         esi
>005653E6    jne         00565395
 005653E8    mov         eax,dword ptr [ebx+68]
 005653EB    test        eax,eax
>005653ED    je          005653F6
 005653EF    mov         byte ptr [eax+284],1
 005653F6    mov         eax,ebx
 005653F8    call        TChartSeries.RefreshSeries
 005653FD    xor         eax,eax
 005653FF    pop         edx
 00565400    pop         ecx
 00565401    pop         ecx
 00565402    mov         dword ptr fs:[eax],edx
 00565405    push        56541A
 0056540A    lea         eax,[ebp-34]
 0056540D    call        @LStrClr
 00565412    ret
>00565413    jmp         @HandleFinally
>00565418    jmp         0056540A
 0056541A    pop         edi
 0056541B    pop         esi
 0056541C    pop         ebx
 0056541D    mov         esp,ebp
 0056541F    pop         ebp
 00565420    ret
*}
end;

//00565424
procedure TFastLineSeries.PrepareCanvas;
begin
{*
 00565424    push        ebx
 00565425    push        esi
 00565426    mov         ebx,edx
 00565428    mov         esi,dword ptr [eax+68]
 0056542B    mov         edx,ebx
 0056542D    mov         eax,esi
 0056542F    call        TCustomTeePanel.SetView3D
 00565434    mov         edx,ebx
 00565436    xor         dl,1
 00565439    mov         eax,esi
 0056543B    call        TCustomAxisPanel.SetClipPoints
 00565440    pop         esi
 00565441    pop         ebx
 00565442    ret
*}
end;

//00565444
procedure TChartSeries.SetDoubleProperty(var Variable:Double; const Value:Double);
begin
{*
 00565444    push        ebp
 00565445    mov         ebp,esp
 00565447    mov         ecx,eax
 00565449    fld         qword ptr [edx]
 0056544B    fcomp       qword ptr [ebp+8]
 0056544E    fnstsw      al
 00565450    sahf
>00565451    je          00565465
 00565453    mov         eax,dword ptr [ebp+8]
 00565456    mov         dword ptr [edx],eax
 00565458    mov         eax,dword ptr [ebp+0C]
 0056545B    mov         dword ptr [edx+4],eax
 0056545E    mov         eax,ecx
 00565460    call        TChartSeries.Repaint
 00565465    pop         ebp
 00565466    ret         8
*}
end;

//0056546C
procedure TChartSeries.SetColorProperty(var Variable:TColor; Value:TColor);
begin
{*
 0056546C    cmp         ecx,dword ptr [edx]
>0056546E    je          00565477
 00565470    mov         dword ptr [edx],ecx
 00565472    call        TChartSeries.Repaint
 00565477    ret
*}
end;

//00565478
procedure SelfSetDataSources(Value:TList);
begin
{*
 00565478    push        ebp
 00565479    mov         ebp,esp
 0056547B    push        ebx
 0056547C    push        esi
 0056547D    push        edi
 0056547E    mov         edi,eax
 00565480    mov         eax,dword ptr [ebp+8]
 00565483    mov         eax,dword ptr [eax-4]
 00565486    mov         eax,dword ptr [eax+48]
 00565489    mov         edx,dword ptr [eax]
 0056548B    call        dword ptr [edx+8]
 0056548E    mov         ebx,dword ptr [edi+8]
 00565491    dec         ebx
 00565492    test        ebx,ebx
>00565494    jl          005654B3
 00565496    inc         ebx
 00565497    xor         esi,esi
 00565499    mov         edx,esi
 0056549B    mov         eax,edi
 0056549D    call        TList.Get
 005654A2    mov         edx,eax
 005654A4    mov         eax,dword ptr [ebp+8]
 005654A7    mov         eax,dword ptr [eax-4]
 005654AA    call        TChartSeries.InternalAddDataSource
 005654AF    inc         esi
 005654B0    dec         ebx
>005654B1    jne         00565499
 005654B3    pop         edi
 005654B4    pop         esi
 005654B5    pop         ebx
 005654B6    pop         ebp
 005654B7    ret
*}
end;

//005654B8
procedure TChartSeries.Assign(Source:TPersistent);
begin
{*
 005654B8    push        ebp
 005654B9    mov         ebp,esp
 005654BB    add         esp,0FFFFFFF4
 005654BE    push        ebx
 005654BF    push        esi
 005654C0    push        edi
 005654C1    xor         ecx,ecx
 005654C3    mov         dword ptr [ebp-0C],ecx
 005654C6    mov         ebx,edx
 005654C8    mov         dword ptr [ebp-4],eax
 005654CB    xor         eax,eax
 005654CD    push        ebp
 005654CE    push        56578B
 005654D3    push        dword ptr fs:[eax]
 005654D6    mov         dword ptr fs:[eax],esp
 005654D9    mov         eax,ebx
 005654DB    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 005654E1    call        @IsClass
 005654E6    test        al,al
>005654E8    je          0056576B
 005654EE    mov         eax,dword ptr [ebx+0C]
 005654F1    mov         edx,dword ptr [ebp-4]
 005654F4    mov         dword ptr [edx+0C],eax
 005654F7    xor         edx,edx
 005654F9    mov         eax,dword ptr [ebp-4]
 005654FC    call        TChartSeries.SetDataSource
 00565501    mov         eax,dword ptr [ebp-4]
 00565504    call        TChartSeries.YMandatory
 00565509    test        al,al
>0056550B    je          00565544
 0056550D    mov         eax,ebx
 0056550F    call        TChartSeries.YMandatory
 00565514    test        al,al
>00565516    je          00565544
 00565518    mov         esi,ebx
 0056551A    mov         edx,dword ptr [esi+84]
 00565520    mov         eax,dword ptr [ebp-4]
 00565523    mov         eax,dword ptr [eax+84]
 00565529    mov         ecx,dword ptr [eax]
 0056552B    call        dword ptr [ecx+8]
 0056552E    mov         edx,dword ptr [esi+8C]
 00565534    mov         eax,dword ptr [ebp-4]
 00565537    mov         eax,dword ptr [eax+8C]
 0056553D    mov         ecx,dword ptr [eax]
 0056553F    call        dword ptr [ecx+8]
>00565542    jmp         0056556E
 00565544    mov         esi,ebx
 00565546    mov         edx,dword ptr [esi+84]
 0056554C    mov         eax,dword ptr [ebp-4]
 0056554F    mov         eax,dword ptr [eax+8C]
 00565555    mov         ecx,dword ptr [eax]
 00565557    call        dword ptr [ecx+8]
 0056555A    mov         edx,dword ptr [esi+8C]
 00565560    mov         eax,dword ptr [ebp-4]
 00565563    mov         eax,dword ptr [eax+84]
 00565569    mov         ecx,dword ptr [eax]
 0056556B    call        dword ptr [ecx+8]
 0056556E    mov         eax,dword ptr [ebp-4]
 00565571    add         eax,58
 00565574    mov         esi,ebx
 00565576    mov         edx,dword ptr [esi+58]
 00565579    call        @LStrAsg
 0056557E    mov         eax,dword ptr [ebp-4]
 00565581    add         eax,40
 00565584    mov         edx,dword ptr [esi+40]
 00565587    call        @LStrAsg
 0056558C    mov         eax,dword ptr [esi+80]
 00565592    mov         edx,dword ptr [eax+8]
 00565595    dec         edx
 00565596    mov         eax,dword ptr [ebp-4]
 00565599    mov         eax,dword ptr [eax+80]
 0056559F    mov         eax,dword ptr [eax+8]
 005655A2    dec         eax
 005655A3    call        0056EDD8
 005655A8    sub         eax,2
>005655AB    jl          005655E0
 005655AD    inc         eax
 005655AE    mov         dword ptr [ebp-8],eax
 005655B1    mov         esi,2
 005655B6    mov         eax,dword ptr [ebx+80]
 005655BC    mov         edx,esi
 005655BE    call        TChartValueLists.GetValueList
 005655C3    push        eax
 005655C4    mov         eax,dword ptr [ebp-4]
 005655C7    mov         eax,dword ptr [eax+80]
 005655CD    mov         edx,esi
 005655CF    call        TChartValueLists.GetValueList
 005655D4    pop         edx
 005655D5    mov         ecx,dword ptr [eax]
 005655D7    call        dword ptr [ecx+8]
 005655DA    inc         esi
 005655DB    dec         dword ptr [ebp-8]
>005655DE    jne         005655B6
 005655E0    mov         esi,ebx
 005655E2    mov         eax,dword ptr [esi+0A4]
 005655E8    test        eax,eax
>005655EA    je          00565600
 005655EC    mov         edx,dword ptr [ebp-4]
 005655EF    cmp         dword ptr [edx+0A4],0
>005655F6    jne         00565600
 005655F8    mov         edx,dword ptr [ebp-4]
 005655FB    call        TTeeFunction.SetParentSeries
 00565600    mov         eax,esi
 00565602    call        TChartSeries.GetDataSource
 00565607    test        eax,eax
>00565609    jne         0056569F
 0056560F    test        byte ptr [esi+1C],10
>00565613    jne         005656A9
 00565619    mov         eax,dword ptr [ebp-4]
 0056561C    mov         eax,dword ptr [eax+3C]
 0056561F    mov         edx,dword ptr [eax]
 00565621    call        dword ptr [edx+8]
 00565624    mov         eax,dword ptr [esi+3C]
 00565627    mov         eax,dword ptr [eax+8]
 0056562A    dec         eax
 0056562B    test        eax,eax
>0056562D    jl          00565652
 0056562F    inc         eax
 00565630    mov         dword ptr [ebp-8],eax
 00565633    xor         esi,esi
 00565635    mov         eax,dword ptr [ebx+3C]
 00565638    mov         edx,esi
 0056563A    call        TList.Get
 0056563F    mov         edx,eax
 00565641    mov         eax,dword ptr [ebp-4]
 00565644    mov         eax,dword ptr [eax+3C]
 00565647    call        TList.Add
 0056564C    inc         esi
 0056564D    dec         dword ptr [ebp-8]
>00565650    jne         00565635
 00565652    mov         eax,dword ptr [ebp-4]
 00565655    mov         eax,dword ptr [eax+88]
 0056565B    mov         edx,dword ptr [eax]
 0056565D    call        dword ptr [edx+8]
 00565660    mov         eax,dword ptr [ebx+88]
 00565666    mov         eax,dword ptr [eax+8]
 00565669    dec         eax
 0056566A    test        eax,eax
>0056566C    jl          00565693
 0056566E    inc         eax
 0056566F    mov         dword ptr [ebp-8],eax
 00565672    xor         esi,esi
 00565674    lea         ecx,[ebp-0C]
 00565677    mov         edx,esi
 00565679    mov         eax,ebx
 0056567B    mov         edi,dword ptr [eax]
 0056567D    call        dword ptr [edi+60]
 00565680    mov         ecx,dword ptr [ebp-0C]
 00565683    mov         edx,esi
 00565685    mov         eax,dword ptr [ebp-4]
 00565688    call        TChartSeries.InsertLabel
 0056568D    inc         esi
 0056568E    dec         dword ptr [ebp-8]
>00565691    jne         00565674
 00565693    mov         edx,ebx
 00565695    mov         eax,dword ptr [ebp-4]
 00565698    call        TChartSeries.AssignValues
>0056569D    jmp         005656A9
 0056569F    push        ebp
 005656A0    mov         eax,dword ptr [esi+48]
 005656A3    call        SelfSetDataSources
 005656A8    pop         ecx
 005656A9    mov         esi,ebx
 005656AB    mov         edx,dword ptr [esi+64]
 005656AE    mov         eax,dword ptr [ebp-4]
 005656B1    mov         eax,dword ptr [eax+64]
 005656B4    mov         ecx,dword ptr [eax]
 005656B6    call        dword ptr [ecx+8]
 005656B9    mov         eax,dword ptr [esi+34]
 005656BC    mov         edx,dword ptr [ebp-4]
 005656BF    mov         dword ptr [edx+34],eax
 005656C2    mov         al,byte ptr [esi+38]
 005656C5    mov         edx,dword ptr [ebp-4]
 005656C8    mov         byte ptr [edx+38],al
 005656CB    mov         eax,dword ptr [ebp-4]
 005656CE    add         eax,78
 005656D1    mov         edx,dword ptr [esi+78]
 005656D4    call        @LStrAsg
 005656D9    mov         eax,dword ptr [ebp-4]
 005656DC    add         eax,7C
 005656DF    mov         edx,dword ptr [esi+7C]
 005656E2    call        @LStrAsg
 005656E7    mov         eax,dword ptr [ebp-4]
 005656EA    add         eax,6C
 005656ED    mov         edx,dword ptr [esi+6C]
 005656F0    call        @LStrAsg
 005656F5    mov         al,byte ptr [esi+30]
 005656F8    mov         edx,dword ptr [ebp-4]
 005656FB    mov         byte ptr [edx+30],al
 005656FE    mov         al,byte ptr [esi+90]
 00565704    mov         edx,dword ptr [ebp-4]
 00565707    mov         byte ptr [edx+90],al
 0056570D    mov         al,byte ptr [esi+0A0]
 00565713    mov         edx,dword ptr [ebp-4]
 00565716    mov         byte ptr [edx+0A0],al
 0056571C    mov         al,byte ptr [esi+0A1]
 00565722    mov         edx,dword ptr [ebp-4]
 00565725    mov         byte ptr [edx+0A1],al
 0056572B    mov         ax,word ptr [esi+44]
 0056572F    mov         edx,dword ptr [ebp-4]
 00565732    mov         word ptr [edx+44],ax
 00565736    mov         al,byte ptr [esi+70]
 00565739    mov         edx,dword ptr [ebp-4]
 0056573C    mov         byte ptr [edx+70],al
 0056573F    mov         al,byte ptr [esi+0A8]
 00565745    mov         edx,dword ptr [ebp-4]
 00565748    mov         byte ptr [edx+0A8],al
 0056574E    mov         eax,dword ptr [ebp-4]
 00565751    add         eax,0F0
 00565756    mov         edx,dword ptr [esi+0F0]
 0056575C    call        @LStrAsg
 00565761    mov         eax,dword ptr [ebp-4]
 00565764    call        TChartSeries.CheckDataSource
>00565769    jmp         00565775
 0056576B    mov         edx,ebx
 0056576D    mov         eax,dword ptr [ebp-4]
 00565770    call        TPersistent.Assign
 00565775    xor         eax,eax
 00565777    pop         edx
 00565778    pop         ecx
 00565779    pop         ecx
 0056577A    mov         dword ptr fs:[eax],edx
 0056577D    push        565792
 00565782    lea         eax,[ebp-0C]
 00565785    call        @LStrClr
 0056578A    ret
>0056578B    jmp         @HandleFinally
>00565790    jmp         00565782
 00565792    pop         edi
 00565793    pop         esi
 00565794    pop         ebx
 00565795    mov         esp,ebp
 00565797    pop         ebp
 00565798    ret
*}
end;

//0056579C
procedure TChartSeries.SetColorEachPoint(Value:Boolean);
begin
{*
 0056579C    push        ebx
 0056579D    push        esi
 0056579E    push        edi
 0056579F    mov         ebx,eax
 005657A1    lea         eax,[ebx+38]
 005657A4    mov         ecx,edx
 005657A6    mov         edx,ebx
 005657A8    xchg        eax,edx
 005657A9    call        TChartSeries.SetIntegerProperty
 005657AE    cmp         byte ptr [ebx+38],0
>005657B2    jne         005657D7
 005657B4    mov         eax,ebx
 005657B6    call        TChartSeries.Count
 005657BB    mov         esi,eax
 005657BD    dec         esi
 005657BE    test        esi,esi
>005657C0    jl          005657D7
 005657C2    inc         esi
 005657C3    xor         edi,edi
 005657C5    mov         ecx,20000000
 005657CA    mov         edx,edi
 005657CC    mov         eax,ebx
 005657CE    call        TChartSeries.SetValueColor
 005657D3    inc         edi
 005657D4    dec         esi
>005657D5    jne         005657C5
 005657D7    pop         edi
 005657D8    pop         esi
 005657D9    pop         ebx
 005657DA    ret
*}
end;

//005657DC
procedure TChartSeries.SetShowInLegend(Value:Boolean);
begin
{*
 005657DC    lea         ecx,[eax+70];TChartSeries.ShowInLegend:Boolean
 005657DF    xchg        ecx,edx
 005657E1    call        TChartSeries.SetIntegerProperty
 005657E6    ret
*}
end;

//005657E8
procedure sub_005657E8;
begin
{*
 005657E8    call        TeeGetClassNameBitmap
 005657ED    ret
*}
end;

//005657F0
function TChartSeries.GetxValue(Index:Integer):Double;
begin
{*
 005657F0    add         esp,0FFFFFFF8
 005657F3    mov         eax,dword ptr [eax+84]
 005657F9    mov         ecx,dword ptr [eax]
 005657FB    call        dword ptr [ecx+0C]
 005657FE    fstp        qword ptr [esp]
 00565801    wait
 00565802    fld         qword ptr [esp]
 00565805    pop         ecx
 00565806    pop         edx
 00565807    ret
*}
end;

//00565808
function TChartSeries.GetyValue(Index:Integer):Double;
begin
{*
 00565808    add         esp,0FFFFFFF8
 0056580B    mov         eax,dword ptr [eax+8C]
 00565811    mov         ecx,dword ptr [eax]
 00565813    call        dword ptr [ecx+0C]
 00565816    fstp        qword ptr [esp]
 00565819    wait
 0056581A    fld         qword ptr [esp]
 0056581D    pop         ecx
 0056581E    pop         edx
 0056581F    ret
*}
end;

//00565820
function TChartSeries.GetXLabel(Index:Integer):AnsiString;
begin
{*
 00565820    push        ebx
 00565821    push        esi
 00565822    push        edi
 00565823    push        ebp
 00565824    mov         ebp,ecx
 00565826    mov         esi,edx
 00565828    mov         ebx,eax
 0056582A    mov         edi,dword ptr [ebx+88]
 00565830    cmp         esi,dword ptr [edi+8]
>00565833    jge         00565842
 00565835    mov         edx,esi
 00565837    mov         eax,edi
 00565839    call        TList.Get
 0056583E    test        eax,eax
>00565840    jne         0056584B
 00565842    mov         eax,ebp
 00565844    call        @LStrClr
>00565849    jmp         0056585F
 0056584B    mov         edx,esi
 0056584D    mov         eax,dword ptr [ebx+88]
 00565853    call        TList.Get
 00565858    mov         edx,ebp
 0056585A    call        StrPas
 0056585F    pop         ebp
 00565860    pop         edi
 00565861    pop         esi
 00565862    pop         ebx
 00565863    ret
*}
end;

//00565864
function TChartSeries.GetValueColor(ValueIndex:Integer):TColor;
begin
{*
 00565864    push        ebx
 00565865    push        esi
 00565866    push        edi
 00565867    mov         esi,edx
 00565869    mov         ebx,eax
 0056586B    mov         edi,dword ptr [ebx+3C]
 0056586E    cmp         esi,dword ptr [edi+8]
>00565871    jge         00565897
 00565873    mov         edx,esi
 00565875    mov         eax,edi
 00565877    call        TList.Get
 0056587C    cmp         eax,20000000
>00565881    jne         0056589A
 00565883    cmp         byte ptr [ebx+38],0
>00565887    je          00565892
 00565889    mov         eax,esi
 0056588B    call        GetDefaultColor
>00565890    jmp         0056589A
 00565892    mov         eax,dword ptr [ebx+34]
>00565895    jmp         0056589A
 00565897    mov         eax,dword ptr [ebx+34]
 0056589A    pop         edi
 0056589B    pop         esi
 0056589C    pop         ebx
 0056589D    ret
*}
end;

//005658A0
procedure TChartSeries.SetParentChart(Value:TCustomAxisPanel);
begin
{*
 005658A0    push        ebx
 005658A1    push        esi
 005658A2    mov         esi,edx
 005658A4    mov         ebx,eax
 005658A6    mov         eax,dword ptr [ebx+68]
 005658A9    cmp         esi,eax
>005658AB    je          005658D0
 005658AD    test        eax,eax
>005658AF    je          005658B8
 005658B1    mov         edx,ebx
 005658B3    call        TCustomAxisPanel.RemoveSeries
 005658B8    mov         dword ptr [ebx+68],esi
 005658BB    mov         eax,ebx
 005658BD    call        TChartSeries.RecalcGetAxis
 005658C2    mov         eax,dword ptr [ebx+68]
 005658C5    test        eax,eax
>005658C7    je          005658D0
 005658C9    mov         edx,ebx
 005658CB    call        TCustomAxisPanel.InternalAddSeries
 005658D0    pop         esi
 005658D1    pop         ebx
 005658D2    ret
*}
end;

//005658D4
procedure TChartSeries.SetValueColor(ValueIndex:Integer; AColor:TColor);
begin
{*
 005658D4    push        ebx
 005658D5    mov         ebx,eax
 005658D7    mov         eax,dword ptr [ebx+3C]
 005658DA    call        TList.Put
 005658DF    mov         eax,ebx
 005658E1    call        TChartSeries.Repaint
 005658E6    pop         ebx
 005658E7    ret
*}
end;

//005658E8
function TChartSeries.GetMemLabel(const ALabel:AnsiString):PChar;
begin
{*
 005658E8    push        ebx
 005658E9    push        esi
 005658EA    mov         ebx,edx
 005658EC    test        ebx,ebx
>005658EE    jne         005658F4
 005658F0    xor         esi,esi
>005658F2    jmp         0056590C
 005658F4    mov         eax,ebx
 005658F6    call        @LStrLen
 005658FB    inc         eax
 005658FC    call        @GetMem
 00565901    mov         esi,eax
 00565903    mov         edx,ebx
 00565905    mov         eax,esi
 00565907    call        StrPCopy
 0056590C    mov         eax,esi
 0056590E    pop         esi
 0056590F    pop         ebx
 00565910    ret
*}
end;

//00565914
procedure TChartSeries.FreeXLabel(ValueIndex:Integer);
begin
{*
 00565914    push        ebx
 00565915    mov         eax,dword ptr [eax+88]
 0056591B    call        TList.Get
 00565920    mov         ebx,eax
 00565922    test        ebx,ebx
>00565924    je          00565937
 00565926    mov         eax,ebx
 00565928    call        StrLen
 0056592D    mov         edx,eax
 0056592F    inc         edx
 00565930    mov         eax,ebx
 00565932    call        @FreeMem
 00565937    pop         ebx
 00565938    ret
*}
end;

//0056593C
procedure TChartSeries.ClearLists;
begin
{*
 0056593C    push        ebx
 0056593D    push        esi
 0056593E    push        edi
 0056593F    push        ebp
 00565940    mov         edi,eax
 00565942    mov         ebp,dword ptr [edi+80]
 00565948    mov         ebx,dword ptr [ebp+8]
 0056594B    dec         ebx
 0056594C    test        ebx,ebx
>0056594E    jl          00565965
 00565950    inc         ebx
 00565951    xor         esi,esi
 00565953    mov         edx,esi
 00565955    mov         eax,ebp
 00565957    call        TChartValueLists.GetValueList
 0056595C    mov         edx,dword ptr [eax]
 0056595E    call        dword ptr [edx+14]
 00565961    inc         esi
 00565962    dec         ebx
>00565963    jne         00565953
 00565965    mov         eax,dword ptr [edi+3C]
 00565968    mov         edx,dword ptr [eax]
 0056596A    call        dword ptr [edx+8]
 0056596D    mov         eax,dword ptr [edi+3C]
 00565970    mov         edx,dword ptr ds:[6E37FC]
 00565976    call        TList.SetCapacity
 0056597B    mov         eax,dword ptr [edi+88]
 00565981    mov         ebx,dword ptr [eax+8]
 00565984    dec         ebx
 00565985    test        ebx,ebx
>00565987    jl          00565999
 00565989    inc         ebx
 0056598A    xor         esi,esi
 0056598C    mov         edx,esi
 0056598E    mov         eax,edi
 00565990    call        TChartSeries.FreeXLabel
 00565995    inc         esi
 00565996    dec         ebx
>00565997    jne         0056598C
 00565999    mov         eax,dword ptr [edi+88]
 0056599F    mov         edx,dword ptr [eax]
 005659A1    call        dword ptr [edx+8]
 005659A4    mov         eax,dword ptr [edi+88]
 005659AA    mov         edx,dword ptr ds:[6E37FC]
 005659B0    call        TList.SetCapacity
 005659B5    mov         eax,dword ptr [edi+64]
 005659B8    call        TSeriesMarks.ClearPositions
 005659BD    pop         ebp
 005659BE    pop         edi
 005659BF    pop         esi
 005659C0    pop         ebx
 005659C1    ret
*}
end;

//005659C4
procedure TChartSeries.Clear;
begin
{*
 005659C4    push        ebx
 005659C5    mov         ebx,eax
 005659C7    mov         eax,ebx
 005659C9    mov         edx,dword ptr [eax]
 005659CB    call        dword ptr [edx+3C]
 005659CE    cmp         word ptr [ebx+0D2],0
>005659D6    je          005659E6
 005659D8    mov         edx,ebx
 005659DA    mov         eax,dword ptr [ebx+0D4]
 005659E0    call        dword ptr [ebx+0D0]
 005659E6    xor         ecx,ecx
 005659E8    xor         edx,edx
 005659EA    mov         eax,ebx
 005659EC    call        TChartSeries.NotifyValue
 005659F1    cmp         byte ptr [ebx+30],0
>005659F5    je          00565A0D
 005659F7    cmp         dword ptr [ebx+68],0
>005659FB    je          00565A0D
 005659FD    mov         eax,dword ptr [ebx+68]
 00565A00    test        byte ptr [eax+1C],8
>00565A04    jne         00565A0D
 00565A06    mov         eax,ebx
 00565A08    call        TChartSeries.Repaint
 00565A0D    pop         ebx
 00565A0E    ret
*}
end;

//00565A10
function TChartSeries.AssociatedToAxis(Axis:TCustomChartAxis):Boolean;
begin
{*
 00565A10    push        ebx
 00565A11    push        esi
 00565A12    mov         esi,edx
 00565A14    mov         ebx,eax
 00565A16    mov         eax,ebx
 00565A18    mov         edx,dword ptr [eax]
 00565A1A    call        dword ptr [edx+13C]
 00565A20    test        al,al
>00565A22    je          00565A52
 00565A24    cmp         byte ptr [esi+8E],0
>00565A2B    je          00565A3B
 00565A2D    cmp         byte ptr [ebx+90],2
>00565A34    je          00565A57
 00565A36    cmp         esi,dword ptr [ebx+50]
>00565A39    je          00565A57
 00565A3B    cmp         byte ptr [esi+8E],0
>00565A42    jne         00565A52
 00565A44    cmp         byte ptr [ebx+0A0],2
>00565A4B    je          00565A57
 00565A4D    cmp         esi,dword ptr [ebx+54]
>00565A50    je          00565A57
 00565A52    xor         eax,eax
 00565A54    pop         esi
 00565A55    pop         ebx
 00565A56    ret
 00565A57    mov         al,1
 00565A59    pop         esi
 00565A5A    pop         ebx
 00565A5B    ret
*}
end;

//00565A5C
procedure TChartSeries.DrawLegendShape(ValueIndex:Integer; const Rect:TRect);
begin
{*
 00565A5C    push        ebx
 00565A5D    push        esi
 00565A5E    push        edi
 00565A5F    mov         edi,ecx
 00565A61    mov         esi,dword ptr [eax+68]
 00565A64    mov         ebx,dword ptr [esi+280]
 00565A6A    mov         edx,edi
 00565A6C    mov         eax,ebx
 00565A6E    mov         ecx,dword ptr [eax]
 00565A70    call        dword ptr [ecx+70]
 00565A73    mov         eax,dword ptr [ebx+10]
 00565A76    call        TBrush.GetColor
 00565A7B    cmp         eax,dword ptr [esi+344]
>00565A81    jne         00565AB9
 00565A83    mov         eax,dword ptr [ebx+10]
 00565A86    call        TBrush.GetColor
 00565A8B    test        eax,eax
>00565A8D    jne         00565A9C
 00565A8F    mov         edx,0FFFFFF
 00565A94    mov         eax,dword ptr [ebx+0C]
 00565A97    call        TPen.SetColor
 00565A9C    mov         dl,1
 00565A9E    mov         eax,dword ptr [ebx+10]
 00565AA1    call        TBrush.SetStyle
 00565AA6    mov         edx,edi
 00565AA8    mov         eax,ebx
 00565AAA    mov         ecx,dword ptr [eax]
 00565AAC    call        dword ptr [ecx+70]
 00565AAF    xor         edx,edx
 00565AB1    mov         eax,dword ptr [ebx+0C]
 00565AB4    call        TPen.SetColor
 00565AB9    pop         edi
 00565ABA    pop         esi
 00565ABB    pop         ebx
 00565ABC    ret
*}
end;

//00565AC0
procedure sub_00565AC0;
begin
{*
 00565AC0    mov         ecx,dword ptr [eax]
 00565AC2    call        dword ptr [ecx+5C];TChartSeries.GetValueColor
 00565AC5    ret
*}
end;

//00565AC8
procedure TChartSeries.DrawLegend(ValueIndex:Integer; const Rect:TRect);
begin
{*
 00565AC8    push        ebx
 00565AC9    push        esi
 00565ACA    push        edi
 00565ACB    add         esp,0FFFFFFF4
 00565ACE    mov         dword ptr [esp],ecx
 00565AD1    mov         esi,edx
 00565AD3    mov         ebx,eax
 00565AD5    cmp         esi,0FFFFFFFF
>00565AD8    jne         00565AE4
 00565ADA    cmp         byte ptr [ebx+38],0
>00565ADE    jne         00565BB6
 00565AE4    mov         eax,dword ptr [ebx+68]
 00565AE7    mov         eax,dword ptr [eax+280]
 00565AED    mov         edi,dword ptr [eax+10]
 00565AF0    cmp         esi,0FFFFFFFF
>00565AF3    jne         00565B01
 00565AF5    mov         edx,dword ptr [ebx+34]
 00565AF8    mov         eax,edi
 00565AFA    call        TBrush.SetColor
>00565AFF    jmp         00565B16
 00565B01    mov         edx,esi
 00565B03    mov         eax,ebx
 00565B05    mov         ecx,dword ptr [eax]
 00565B07    call        dword ptr [ecx+0B8]
 00565B0D    mov         edx,eax
 00565B0F    mov         eax,edi
 00565B11    call        TBrush.SetColor
 00565B16    mov         eax,dword ptr [ebx+68]
 00565B19    mov         eax,dword ptr [eax+280]
 00565B1F    mov         eax,dword ptr [eax+10]
 00565B22    call        TBrush.GetColor
 00565B27    cmp         eax,1FFFFFFF
>00565B2C    je          00565BB6
 00565B32    mov         eax,dword ptr [ebx+68]
 00565B35    mov         eax,dword ptr [eax+344]
 00565B3B    mov         dword ptr [esp+4],eax
 00565B3F    mov         byte ptr [esp+8],0
 00565B44    lea         eax,[esp+8]
 00565B48    push        eax
 00565B49    lea         ecx,[esp+8]
 00565B4D    mov         edx,esi
 00565B4F    mov         eax,ebx
 00565B51    mov         edi,dword ptr [eax]
 00565B53    call        dword ptr [edi+130]
 00565B59    cmp         dword ptr [esp+4],20000000
>00565B61    jne         00565B84
 00565B63    mov         eax,dword ptr [ebx+68]
 00565B66    mov         eax,dword ptr [eax+344]
 00565B6C    mov         dword ptr [esp+4],eax
 00565B70    cmp         dword ptr [esp+4],20000000
>00565B78    jne         00565B84
 00565B7A    mov         eax,dword ptr [ebx+68]
 00565B7D    mov         eax,dword ptr [eax+70]
 00565B80    mov         dword ptr [esp+4],eax
 00565B84    mov         edi,dword ptr [ebx+68]
 00565B87    mov         eax,dword ptr [esp+4]
 00565B8B    push        eax
 00565B8C    mov         eax,dword ptr [edi+280]
 00565B92    mov         eax,dword ptr [eax+10]
 00565B95    call        TBrush.GetColor
 00565B9A    mov         edx,eax
 00565B9C    mov         cl,byte ptr [esp+0C]
 00565BA0    mov         eax,edi
 00565BA2    call        TCustomTeePanel.SetBrushCanvas
 00565BA7    mov         ecx,dword ptr [esp]
 00565BAA    mov         edx,esi
 00565BAC    mov         eax,ebx
 00565BAE    mov         ebx,dword ptr [eax]
 00565BB0    call        dword ptr [ebx+12C]
 00565BB6    add         esp,0C
 00565BB9    pop         edi
 00565BBA    pop         esi
 00565BBB    pop         ebx
 00565BBC    ret
*}
end;

//00565BC0
procedure sub_00565BC0;
begin
{*
 00565BC0    push        ebp
 00565BC1    mov         ebp,esp
 00565BC3    pop         ebp
 00565BC4    ret         4
*}
end;

//00565BC8
procedure TChartSeries.CalcZOrder;
begin
{*
 00565BC8    push        ebx
 00565BC9    mov         ebx,eax
 00565BCB    cmp         dword ptr [ebx+9C],0FFFFFFFF
>00565BD2    jne         00565C01
 00565BD4    mov         eax,dword ptr [ebx+68]
 00565BD7    cmp         byte ptr [eax+270],0
>00565BDE    je          00565BF7
 00565BE0    inc         dword ptr [eax+334]
 00565BE6    mov         eax,dword ptr [ebx+68]
 00565BE9    mov         eax,dword ptr [eax+334]
 00565BEF    mov         dword ptr [ebx+0F4],eax
>00565BF5    jmp         00565C21
 00565BF7    xor         eax,eax
 00565BF9    mov         dword ptr [ebx+0F4],eax
 00565BFF    pop         ebx
 00565C00    ret
 00565C01    mov         eax,ebx
 00565C03    call        TChartSeries.GetZOrder
 00565C08    mov         edx,eax
 00565C0A    mov         eax,dword ptr [ebx+68]
 00565C0D    mov         eax,dword ptr [eax+334]
 00565C13    call        0056EDD0
 00565C18    mov         edx,dword ptr [ebx+68]
 00565C1B    mov         dword ptr [edx+334],eax
 00565C21    pop         ebx
 00565C22    ret
*}
end;

//00565C24
function TChartSeries.CalcXPosValue(const Value:Double):Integer;
begin
{*
 00565C24    push        ebp
 00565C25    mov         ebp,esp
 00565C27    push        dword ptr [ebp+0C]
 00565C2A    push        dword ptr [ebp+8]
 00565C2D    mov         eax,dword ptr [eax+50]
 00565C30    call        TCustomChartAxis.CalcXPosValue
 00565C35    pop         ebp
 00565C36    ret         8
*}
end;

//00565C3C
function TChartSeries.XScreenToValue(ScreenPos:Integer):Double;
begin
{*
 00565C3C    add         esp,0FFFFFFF8
 00565C3F    mov         eax,dword ptr [eax+50]
 00565C42    call        TCustomChartAxis.CalcPosPoint
 00565C47    fstp        qword ptr [esp]
 00565C4A    wait
 00565C4B    fld         qword ptr [esp]
 00565C4E    pop         ecx
 00565C4F    pop         edx
 00565C50    ret
*}
end;

//00565C54
function TChartSeries.CalcYPosValue(const Value:Double):Integer;
begin
{*
 00565C54    push        ebp
 00565C55    mov         ebp,esp
 00565C57    push        dword ptr [ebp+0C]
 00565C5A    push        dword ptr [ebp+8]
 00565C5D    mov         eax,dword ptr [eax+54]
 00565C60    call        TCustomChartAxis.CalcYPosValue
 00565C65    pop         ebp
 00565C66    ret         8
*}
end;

//00565C6C
function TChartSeries.CalcPosValue(const Value:Double):Integer;
begin
{*
 00565C6C    push        ebp
 00565C6D    mov         ebp,esp
 00565C6F    push        ebx
 00565C70    mov         ebx,eax
 00565C72    mov         eax,ebx
 00565C74    call        TChartSeries.YMandatory
 00565C79    test        al,al
>00565C7B    je          00565C8C
 00565C7D    push        dword ptr [ebp+0C]
 00565C80    push        dword ptr [ebp+8]
 00565C83    mov         eax,ebx
 00565C85    call        TChartSeries.CalcYPosValue
>00565C8A    jmp         00565C99
 00565C8C    push        dword ptr [ebp+0C]
 00565C8F    push        dword ptr [ebp+8]
 00565C92    mov         eax,ebx
 00565C94    call        TChartSeries.CalcXPosValue
 00565C99    pop         ebx
 00565C9A    pop         ebp
 00565C9B    ret         8
*}
end;

//00565CA0
function TChartSeries.CalcXPos(ValueIndex:Integer):Integer;
begin
{*
 00565CA0    push        ebx
 00565CA1    push        esi
 00565CA2    mov         esi,edx
 00565CA4    mov         ebx,eax
 00565CA6    mov         edx,esi
 00565CA8    mov         eax,ebx
 00565CAA    mov         ecx,dword ptr [eax]
 00565CAC    call        dword ptr [ecx+64]
 00565CAF    add         esp,0FFFFFFF8
 00565CB2    fstp        qword ptr [esp]
 00565CB5    wait
 00565CB6    mov         eax,dword ptr [ebx+50]
 00565CB9    call        TCustomChartAxis.CalcXPosValue
 00565CBE    pop         esi
 00565CBF    pop         ebx
 00565CC0    ret
*}
end;

//00565CC4
procedure sub_00565CC4;
begin
{*
 00565CC4    push        ebp
 00565CC5    mov         ebp,esp
 00565CC7    pop         ebp
 00565CC8    ret         4
*}
end;

//00565CCC
procedure sub_00565CCC;
begin
{*
 00565CCC    push        ebp
 00565CCD    mov         ebp,esp
 00565CCF    pop         ebp
 00565CD0    ret         8
*}
end;

//00565CD4
function TChartSeries.DoSeriesClick(Sender:TChartSeries; ValueIndex:Integer; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer):Boolean;
begin
{*
 00565CD4    push        ebp
 00565CD5    mov         ebp,esp
 00565CD7    push        ecx
 00565CD8    push        ebx
 00565CD9    push        esi
 00565CDA    mov         dword ptr [ebp-4],ecx
 00565CDD    mov         esi,edx
 00565CDF    mov         ebx,eax
 00565CE1    mov         eax,dword ptr [ebp+10]
 00565CE4    mov         edx,dword ptr [ebx+68]
 00565CE7    mov         byte ptr [edx+285],0
 00565CEE    test        al,40
>00565CF0    je          00565D26
 00565CF2    cmp         word ptr [ebx+0E2],0
>00565CFA    je          00565D26
 00565CFC    mov         edx,dword ptr [ebx+68]
 00565CFF    mov         byte ptr [edx+285],1
 00565D06    mov         dl,byte ptr [ebp+14]
 00565D09    push        edx
 00565D0A    push        eax
 00565D0B    mov         eax,dword ptr [ebp+0C]
 00565D0E    push        eax
 00565D0F    mov         eax,dword ptr [ebp+8]
 00565D12    push        eax
 00565D13    mov         ecx,dword ptr [ebp-4]
 00565D16    mov         edx,esi
 00565D18    mov         eax,dword ptr [ebx+0E4]
 00565D1E    call        dword ptr [ebx+0E0]
>00565D24    jmp         00565D58
 00565D26    cmp         word ptr [ebx+0DA],0
>00565D2E    je          00565D58
 00565D30    mov         edx,dword ptr [ebx+68]
 00565D33    mov         byte ptr [edx+285],1
 00565D3A    mov         dl,byte ptr [ebp+14]
 00565D3D    push        edx
 00565D3E    push        eax
 00565D3F    mov         eax,dword ptr [ebp+0C]
 00565D42    push        eax
 00565D43    mov         eax,dword ptr [ebp+8]
 00565D46    push        eax
 00565D47    mov         ecx,dword ptr [ebp-4]
 00565D4A    mov         edx,esi
 00565D4C    mov         eax,dword ptr [ebx+0DC]
 00565D52    call        dword ptr [ebx+0D8]
 00565D58    mov         eax,dword ptr [ebx+68]
 00565D5B    mov         al,byte ptr [eax+285]
 00565D61    pop         esi
 00565D62    pop         ebx
 00565D63    pop         ecx
 00565D64    pop         ebp
 00565D65    ret         10
*}
end;

//00565D68
function TChartSeries.CalcYPos(ValueIndex:Integer):Integer;
begin
{*
 00565D68    push        ebx
 00565D69    push        esi
 00565D6A    mov         esi,edx
 00565D6C    mov         ebx,eax
 00565D6E    mov         edx,esi
 00565D70    mov         eax,ebx
 00565D72    mov         ecx,dword ptr [eax]
 00565D74    call        dword ptr [ecx+68]
 00565D77    add         esp,0FFFFFFF8
 00565D7A    fstp        qword ptr [esp]
 00565D7D    wait
 00565D7E    mov         eax,dword ptr [ebx+54]
 00565D81    call        TCustomChartAxis.CalcYPosValue
 00565D86    pop         esi
 00565D87    pop         ebx
 00565D88    ret
*}
end;

//00565D8C
procedure TChartSeries.Delete(ValueIndex:Integer);
begin
{*
 00565D8C    push        ebx
 00565D8D    push        esi
 00565D8E    push        edi
 00565D8F    push        ebp
 00565D90    push        ecx
 00565D91    mov         ebx,edx
 00565D93    mov         edi,eax
 00565D95    mov         eax,dword ptr [edi+80]
 00565D9B    mov         dword ptr [esp],eax
 00565D9E    mov         eax,dword ptr [esp]
 00565DA1    mov         esi,dword ptr [eax+8]
 00565DA4    dec         esi
 00565DA5    test        esi,esi
>00565DA7    jl          00565DC1
 00565DA9    inc         esi
 00565DAA    xor         ebp,ebp
 00565DAC    mov         edx,ebp
 00565DAE    mov         eax,dword ptr [esp]
 00565DB1    call        TChartValueLists.GetValueList
 00565DB6    mov         edx,ebx
 00565DB8    mov         ecx,dword ptr [eax]
 00565DBA    call        dword ptr [ecx+28]
 00565DBD    inc         ebp
 00565DBE    dec         esi
>00565DBF    jne         00565DAC
 00565DC1    mov         eax,dword ptr [edi+3C]
 00565DC4    cmp         ebx,dword ptr [eax+8]
>00565DC7    jge         00565DD0
 00565DC9    mov         edx,ebx
 00565DCB    call        TList.Delete
 00565DD0    mov         eax,dword ptr [edi+88]
 00565DD6    cmp         ebx,dword ptr [eax+8]
>00565DD9    jge         00565DF1
 00565DDB    mov         edx,ebx
 00565DDD    mov         eax,edi
 00565DDF    call        TChartSeries.FreeXLabel
 00565DE4    mov         eax,dword ptr [edi+88]
 00565DEA    mov         edx,ebx
 00565DEC    call        TList.Delete
 00565DF1    mov         eax,dword ptr [edi+64]
 00565DF4    mov         eax,dword ptr [eax+24]
 00565DF7    cmp         ebx,dword ptr [eax+8]
>00565DFA    jge         00565E03
 00565DFC    mov         edx,ebx
 00565DFE    call        TList.Delete
 00565E03    mov         ecx,ebx
 00565E05    mov         dl,2
 00565E07    mov         eax,edi
 00565E09    call        TChartSeries.NotifyValue
 00565E0E    cmp         byte ptr [edi+30],0
>00565E12    je          00565E1B
 00565E14    mov         eax,edi
 00565E16    call        TChartSeries.Repaint
 00565E1B    pop         edx
 00565E1C    pop         ebp
 00565E1D    pop         edi
 00565E1E    pop         esi
 00565E1F    pop         ebx
 00565E20    ret
*}
end;

//00565E24
procedure TChartSeries.SwapValueIndex(a:Integer; b:Integer);
begin
{*
 00565E24    push        ebx
 00565E25    push        esi
 00565E26    push        edi
 00565E27    push        ebp
 00565E28    add         esp,0FFFFFFF8
 00565E2B    mov         ebp,ecx
 00565E2D    mov         edi,edx
 00565E2F    mov         dword ptr [esp],eax
 00565E32    mov         eax,dword ptr [esp]
 00565E35    mov         eax,dword ptr [eax+80]
 00565E3B    mov         dword ptr [esp+4],eax
 00565E3F    mov         eax,dword ptr [esp+4]
 00565E43    mov         ebx,dword ptr [eax+8]
 00565E46    dec         ebx
 00565E47    test        ebx,ebx
>00565E49    jl          00565E69
 00565E4B    inc         ebx
 00565E4C    xor         esi,esi
 00565E4E    mov         edx,esi
 00565E50    mov         eax,dword ptr [esp+4]
 00565E54    call        TChartValueLists.GetValueList
 00565E59    mov         eax,dword ptr [eax+8]
 00565E5C    mov         ecx,ebp
 00565E5E    mov         edx,edi
 00565E60    call        TList.Exchange
 00565E65    inc         esi
 00565E66    dec         ebx
>00565E67    jne         00565E4E
 00565E69    mov         eax,dword ptr [esp]
 00565E6C    mov         eax,dword ptr [eax+3C]
 00565E6F    mov         ecx,ebp
 00565E71    mov         edx,edi
 00565E73    call        TList.Exchange
 00565E78    mov         eax,dword ptr [esp]
 00565E7B    mov         eax,dword ptr [eax+88]
 00565E81    mov         ecx,ebp
 00565E83    mov         edx,edi
 00565E85    call        TList.Exchange
 00565E8A    pop         ecx
 00565E8B    pop         edx
 00565E8C    pop         ebp
 00565E8D    pop         edi
 00565E8E    pop         esi
 00565E8F    pop         ebx
 00565E90    ret
*}
end;

//00565E94
procedure TChartSeries.SetMarks(Value:TSeriesMarks);
begin
{*
 00565E94    push        esi
 00565E95    mov         esi,eax
 00565E97    mov         eax,dword ptr [esi+64]
 00565E9A    mov         ecx,dword ptr [eax]
 00565E9C    call        dword ptr [ecx+8]
 00565E9F    pop         esi
 00565EA0    ret
*}
end;

//00565EA4
procedure TChartSeries.ClearTempValue(ValueList:TChartValueList);
begin
{*
 00565EA4    xor         eax,eax
 00565EA6    mov         dword ptr [edx+38],eax
 00565EA9    mov         dword ptr [edx+3C],eax
 00565EAC    ret
*}
end;

//00565EB0
procedure TChartSeries.SetSeriesColor(AColor:TColor);
begin
{*
 00565EB0    lea         ecx,[eax+34]
 00565EB3    xchg        ecx,edx
 00565EB5    call        TChartSeries.SetColorProperty
 00565EBA    ret
*}
end;

//00565EBC
function TChartSeries.MaxXValue:Double;
begin
{*
 00565EBC    add         esp,0FFFFFFF8
 00565EBF    mov         eax,dword ptr [eax+84]
 00565EC5    call        TChartValueList.GetMaxValue
 00565ECA    fstp        qword ptr [esp]
 00565ECD    wait
 00565ECE    fld         qword ptr [esp]
 00565ED1    pop         ecx
 00565ED2    pop         edx
 00565ED3    ret
*}
end;

//00565ED4
function TChartSeries.MaxYValue:Double;
begin
{*
 00565ED4    add         esp,0FFFFFFF8
 00565ED7    mov         eax,dword ptr [eax+8C]
 00565EDD    call        TChartValueList.GetMaxValue
 00565EE2    fstp        qword ptr [esp]
 00565EE5    wait
 00565EE6    fld         qword ptr [esp]
 00565EE9    pop         ecx
 00565EEA    pop         edx
 00565EEB    ret
*}
end;

//00565EEC
function TChartSeries.MinXValue:Double;
begin
{*
 00565EEC    add         esp,0FFFFFFF8
 00565EEF    mov         eax,dword ptr [eax+84]
 00565EF5    call        TChartValueList.GetMinValue
 00565EFA    fstp        qword ptr [esp]
 00565EFD    wait
 00565EFE    fld         qword ptr [esp]
 00565F01    pop         ecx
 00565F02    pop         edx
 00565F03    ret
*}
end;

//00565F04
function TChartSeries.MinYValue:Double;
begin
{*
 00565F04    add         esp,0FFFFFFF8
 00565F07    mov         eax,dword ptr [eax+8C]
 00565F0D    call        TChartValueList.GetMinValue
 00565F12    fstp        qword ptr [esp]
 00565F15    wait
 00565F16    fld         qword ptr [esp]
 00565F19    pop         ecx
 00565F1A    pop         edx
 00565F1B    ret
*}
end;

//00565F1C
function TChartSeries.MaxZValue:Double;
begin
{*
 00565F1C    push        ebx
 00565F1D    add         esp,0FFFFFFF4
 00565F20    mov         ebx,eax
 00565F22    mov         eax,ebx
 00565F24    call        TChartSeries.GetZOrder
 00565F29    mov         dword ptr [esp+8],eax
 00565F2D    fild        dword ptr [esp+8]
 00565F31    fstp        qword ptr [esp]
 00565F34    wait
 00565F35    fld         qword ptr [esp]
 00565F38    add         esp,0C
 00565F3B    pop         ebx
 00565F3C    ret
*}
end;

//00565F40
function TChartSeries.MinZValue:Double;
begin
{*
 00565F40    push        ebx
 00565F41    add         esp,0FFFFFFF4
 00565F44    mov         ebx,eax
 00565F46    mov         eax,ebx
 00565F48    call        TChartSeries.GetZOrder
 00565F4D    mov         dword ptr [esp+8],eax
 00565F51    fild        dword ptr [esp+8]
 00565F55    fstp        qword ptr [esp]
 00565F58    wait
 00565F59    fld         qword ptr [esp]
 00565F5C    add         esp,0C
 00565F5F    pop         ebx
 00565F60    ret
*}
end;

//00565F64
function TChartSeries.MaxMarkWidth:Integer;
begin
{*
 00565F64    push        ebp
 00565F65    mov         ebp,esp
 00565F67    add         esp,0FFFFFFF4
 00565F6A    push        ebx
 00565F6B    push        esi
 00565F6C    xor         edx,edx
 00565F6E    mov         dword ptr [ebp-0C],edx
 00565F71    mov         ebx,eax
 00565F73    xor         eax,eax
 00565F75    push        ebp
 00565F76    push        565FE3
 00565F7B    push        dword ptr fs:[eax]
 00565F7E    mov         dword ptr fs:[eax],esp
 00565F81    xor         eax,eax
 00565F83    mov         dword ptr [ebp-4],eax
 00565F86    mov         eax,ebx
 00565F88    call        TChartSeries.Count
 00565F8D    mov         esi,eax
 00565F8F    dec         esi
 00565F90    test        esi,esi
>00565F92    jl          00565FCD
 00565F94    inc         esi
 00565F95    mov         dword ptr [ebp-8],0
 00565F9C    lea         ecx,[ebp-0C]
 00565F9F    mov         edx,dword ptr [ebp-8]
 00565FA2    mov         eax,ebx
 00565FA4    call        TChartSeries.GetMarkText
 00565FA9    mov         edx,dword ptr [ebp-0C]
 00565FAC    mov         eax,dword ptr [ebx+68]
 00565FAF    mov         eax,dword ptr [eax+280]
 00565FB5    mov         ecx,dword ptr [eax]
 00565FB7    call        dword ptr [ecx+60]
 00565FBA    mov         edx,eax
 00565FBC    mov         eax,dword ptr [ebp-4]
 00565FBF    call        0056EDD0
 00565FC4    mov         dword ptr [ebp-4],eax
 00565FC7    inc         dword ptr [ebp-8]
 00565FCA    dec         esi
>00565FCB    jne         00565F9C
 00565FCD    xor         eax,eax
 00565FCF    pop         edx
 00565FD0    pop         ecx
 00565FD1    pop         ecx
 00565FD2    mov         dword ptr fs:[eax],edx
 00565FD5    push        565FEA
 00565FDA    lea         eax,[ebp-0C]
 00565FDD    call        @LStrClr
 00565FE2    ret
>00565FE3    jmp         @HandleFinally
>00565FE8    jmp         00565FDA
 00565FEA    mov         eax,dword ptr [ebp-4]
 00565FED    pop         esi
 00565FEE    pop         ebx
 00565FEF    mov         esp,ebp
 00565FF1    pop         ebp
 00565FF2    ret
*}
end;

//00565FF4
procedure TChartSeries.AddLinkedSeries(ASeries:TChartSeries);
begin
{*
 00565FF4    push        ebx
 00565FF5    push        esi
 00565FF6    mov         esi,edx
 00565FF8    mov         ebx,eax
 00565FFA    mov         edx,esi
 00565FFC    mov         eax,dword ptr [ebx+60]
 00565FFF    call        TList.IndexOf
 00566004    inc         eax
>00566005    jne         00566011
 00566007    mov         edx,esi
 00566009    mov         eax,dword ptr [ebx+60]
 0056600C    call        TList.Add
 00566011    pop         esi
 00566012    pop         ebx
 00566013    ret
*}
end;

//00566014
procedure TChartSeries.RemoveDataSource(Value:TComponent);
begin
{*
 00566014    push        ebx
 00566015    mov         ebx,eax
 00566017    mov         eax,dword ptr [ebx+48]
 0056601A    call        TList.Remove
 0056601F    mov         eax,ebx
 00566021    call        TChartSeries.CheckDataSource
 00566026    pop         ebx
 00566027    ret
*}
end;

//00566028
procedure TChartSeries.RemoveLinkedSeries(ASeries:TChartSeries);
begin
{*
 00566028    mov         ecx,dword ptr [eax+60]
 0056602B    test        ecx,ecx
>0056602D    je          00566036
 0056602F    mov         eax,ecx
 00566031    call        TList.Remove
 00566036    ret
*}
end;

//00566038
procedure TChartSeries.NotifyValue(ValueEvent:TValueEvent; ValueIndex:Integer);
begin
{*
 00566038    push        ebx
 00566039    push        esi
 0056603A    push        edi
 0056603B    add         esp,0FFFFFFF4
 0056603E    mov         dword ptr [esp+8],ecx
 00566042    mov         byte ptr [esp+4],dl
 00566046    mov         dword ptr [esp],eax
 00566049    mov         eax,dword ptr [esp]
 0056604C    mov         eax,dword ptr [eax+60]
 0056604F    mov         ebx,dword ptr [eax+8]
 00566052    dec         ebx
 00566053    test        ebx,ebx
>00566055    jl          0056610B
 0056605B    inc         ebx
 0056605C    xor         esi,esi
 0056605E    mov         eax,dword ptr [esp]
 00566061    mov         eax,dword ptr [eax+60]
 00566064    mov         edx,esi
 00566066    call        TList.Get
 0056606B    xor         edx,edx
 0056606D    mov         dl,byte ptr [esp+4]
 00566071    cmp         edx,4
>00566074    ja          00566103
 0056607A    jmp         dword ptr [edx*4+566081]
 0056607A    dd          00566095
 0056607A    dd          005660C8
 0056607A    dd          005660A8
 0056607A    dd          005660FB
 0056607A    dd          005660E8
 00566095    test        byte ptr [eax+0A1],8
>0056609C    je          00566103
 0056609E    mov         edx,dword ptr [eax]
 005660A0    call        dword ptr [edx+98]
>005660A6    jmp         00566103
 005660A8    test        byte ptr [eax+0A1],1
>005660AF    je          00566103
 005660B1    cmp         dword ptr [eax+0A4],0
>005660B8    jne         00566103
 005660BA    mov         ecx,dword ptr [esp+8]
 005660BE    mov         edx,dword ptr [esp]
 005660C1    mov         edi,dword ptr [eax]
 005660C3    call        dword ptr [edi+40]
>005660C6    jmp         00566103
 005660C8    test        byte ptr [eax+0A1],4
>005660CF    je          00566103
 005660D1    cmp         dword ptr [eax+0A4],0
>005660D8    jne         00566103
 005660DA    mov         ecx,dword ptr [esp+8]
 005660DE    mov         edx,dword ptr [esp]
 005660E1    mov         edi,dword ptr [eax]
 005660E3    call        dword ptr [edi+34]
>005660E6    jmp         00566103
 005660E8    test        byte ptr [eax+0A1],2
>005660EF    je          00566103
 005660F1    mov         edx,dword ptr [esp]
 005660F4    mov         ecx,dword ptr [eax]
 005660F6    call        dword ptr [ecx+38]
>005660F9    jmp         00566103
 005660FB    mov         edx,dword ptr [esp]
 005660FE    mov         ecx,dword ptr [eax]
 00566100    call        dword ptr [ecx+38]
 00566103    inc         esi
 00566104    dec         ebx
>00566105    jne         0056605E
 0056610B    add         esp,0C
 0056610E    pop         edi
 0056610F    pop         esi
 00566110    pop         ebx
 00566111    ret
*}
end;

//00566114
{*function sub_00566114:?;
begin
 00566114    mov         al,1
 00566116    ret
end;*}

//00566118
procedure TChartSeries.Loaded;
begin
{*
 00566118    push        ebp
 00566119    mov         ebp,esp
 0056611B    add         esp,0FFFFFFF8
 0056611E    push        ebx
 0056611F    push        esi
 00566120    push        edi
 00566121    xor         edx,edx
 00566123    mov         dword ptr [ebp-8],edx
 00566126    mov         ebx,eax
 00566128    xor         eax,eax
 0056612A    push        ebp
 0056612B    push        5661BB
 00566130    push        dword ptr fs:[eax]
 00566133    mov         dword ptr fs:[eax],esp
 00566136    mov         eax,ebx
 00566138    call        TComponent.Loaded
 0056613D    mov         esi,dword ptr [ebx+74]
 00566140    test        esi,esi
>00566142    je          0056619E
 00566144    mov         eax,esi
 00566146    mov         edx,dword ptr [eax]
 00566148    call        dword ptr [edx+14]
 0056614B    test        eax,eax
>0056614D    jle         00566196
 0056614F    mov         eax,dword ptr [ebx+48]
 00566152    mov         edx,dword ptr [eax]
 00566154    call        dword ptr [edx+8]
 00566157    mov         eax,dword ptr [ebx+74]
 0056615A    mov         edx,dword ptr [eax]
 0056615C    call        dword ptr [edx+14]
 0056615F    mov         esi,eax
 00566161    dec         esi
 00566162    test        esi,esi
>00566164    jl          00566196
 00566166    inc         esi
 00566167    mov         dword ptr [ebp-4],0
 0056616E    lea         ecx,[ebp-8]
 00566171    mov         edx,dword ptr [ebp-4]
 00566174    mov         eax,dword ptr [ebx+74]
 00566177    mov         edi,dword ptr [eax]
 00566179    call        dword ptr [edi+0C]
 0056617C    mov         edx,dword ptr [ebp-8]
 0056617F    mov         eax,dword ptr [ebx+4]
 00566182    call        TComponent.FindComponent
 00566187    mov         edx,eax
 00566189    mov         eax,ebx
 0056618B    call        TChartSeries.InternalAddDataSource
 00566190    inc         dword ptr [ebp-4]
 00566193    dec         esi
>00566194    jne         0056616E
 00566196    mov         eax,dword ptr [ebx+74]
 00566199    call        TObject.Free
 0056619E    mov         eax,ebx
 005661A0    call        TChartSeries.CheckDataSource
 005661A5    xor         eax,eax
 005661A7    pop         edx
 005661A8    pop         ecx
 005661A9    pop         ecx
 005661AA    mov         dword ptr fs:[eax],edx
 005661AD    push        5661C2
 005661B2    lea         eax,[ebp-8]
 005661B5    call        @LStrClr
 005661BA    ret
>005661BB    jmp         @HandleFinally
>005661C0    jmp         005661B2
 005661C2    pop         edi
 005661C3    pop         esi
 005661C4    pop         ebx
 005661C5    pop         ecx
 005661C6    pop         ecx
 005661C7    pop         ebp
 005661C8    ret
*}
end;

//005661CC
destructor TChartSeries.Destroy;
begin
{*
 005661CC    push        ebx
 005661CD    push        esi
 005661CE    push        edi
 005661CF    push        ebp
 005661D0    push        ecx
 005661D1    call        @BeforeDestruction
 005661D6    mov         byte ptr [esp],dl
 005661D9    mov         ebp,eax
 005661DB    lea         eax,[ebp+0A4]
 005661E1    call        FreeAndNil
 005661E6    mov         eax,ebp
 005661E8    call        TChartSeries.RemoveAllLinkedSeries
 005661ED    lea         eax,[ebp+48]
 005661F0    call        FreeAndNil
 005661F5    mov         eax,dword ptr [ebp+60]
 005661F8    mov         esi,dword ptr [eax+8]
 005661FB    dec         esi
 005661FC    test        esi,esi
>005661FE    jl          00566218
 00566200    inc         esi
 00566201    xor         edi,edi
 00566203    mov         eax,dword ptr [ebp+60]
 00566206    mov         edx,edi
 00566208    call        TList.Get
 0056620D    mov         edx,ebp
 0056620F    call        TChartSeries.RemoveDataSource
 00566214    inc         edi
 00566215    dec         esi
>00566216    jne         00566203
 00566218    mov         eax,ebp
 0056621A    mov         edx,dword ptr [eax]
 0056621C    call        dword ptr [edx+98]
 00566222    lea         eax,[ebp+60]
 00566225    call        FreeAndNil
 0056622A    mov         ebx,dword ptr [ebp+80]
 00566230    mov         esi,dword ptr [ebx+8]
 00566233    dec         esi
 00566234    test        esi,esi
>00566236    jl          0056624D
 00566238    inc         esi
 00566239    xor         edi,edi
 0056623B    mov         edx,edi
 0056623D    mov         eax,ebx
 0056623F    call        TChartValueLists.GetValueList
 00566244    call        TObject.Free
 00566249    inc         edi
 0056624A    dec         esi
>0056624B    jne         0056623B
 0056624D    mov         eax,dword ptr [ebp+80]
 00566253    call        TObject.Free
 00566258    mov         eax,dword ptr [ebp+3C]
 0056625B    call        TObject.Free
 00566260    mov         eax,dword ptr [ebp+88]
 00566266    call        TObject.Free
 0056626B    mov         eax,dword ptr [ebp+64]
 0056626E    call        TObject.Free
 00566273    cmp         dword ptr [ebp+68],0
>00566277    je          00566282
 00566279    xor         edx,edx
 0056627B    mov         eax,ebp
 0056627D    mov         ecx,dword ptr [eax]
 0056627F    call        dword ptr [ecx+7C]
 00566282    mov         dl,byte ptr [esp]
 00566285    and         dl,0FC
 00566288    mov         eax,ebp
 0056628A    call        TComponent.Destroy
 0056628F    cmp         byte ptr [esp],0
>00566293    jle         0056629C
 00566295    mov         eax,ebp
 00566297    call        @ClassDestroy
 0056629C    pop         edx
 0056629D    pop         ebp
 0056629E    pop         edi
 0056629F    pop         esi
 005662A0    pop         ebx
 005662A1    ret
*}
end;

//005662A4
function TChartSeries.GetZOrder:Integer;
begin
{*
 005662A4    mov         edx,dword ptr [eax+9C]
 005662AA    cmp         edx,0FFFFFFFF
>005662AD    jne         005662B6
 005662AF    mov         eax,dword ptr [eax+0F4]
 005662B5    ret
 005662B6    mov         eax,edx
 005662B8    ret
*}
end;

//005662BC
function TChartSeriesList.GetSeries(Index:Integer):TChartSeries;
begin
{*
 005662BC    push        ebx
 005662BD    push        esi
 005662BE    mov         esi,edx
 005662C0    mov         ebx,eax
 005662C2    mov         edx,esi
 005662C4    mov         eax,ebx
 005662C6    call        TList.Get
 005662CB    pop         esi
 005662CC    pop         ebx
 005662CD    ret
*}
end;

//005662D0
function TChartSeriesList.CountActive:Integer;
begin
{*
 005662D0    push        ebx
 005662D1    push        esi
 005662D2    push        edi
 005662D3    push        ebp
 005662D4    mov         edi,eax
 005662D6    xor         ebp,ebp
 005662D8    mov         ebx,dword ptr [edi+8]
 005662DB    dec         ebx
 005662DC    test        ebx,ebx
>005662DE    jl          005662F7
 005662E0    inc         ebx
 005662E1    xor         esi,esi
 005662E3    mov         edx,esi
 005662E5    mov         eax,edi
 005662E7    call        TList.Get
 005662EC    cmp         byte ptr [eax+30],0
>005662F0    je          005662F3
 005662F2    inc         ebp
 005662F3    inc         esi
 005662F4    dec         ebx
>005662F5    jne         005662E3
 005662F7    mov         eax,ebp
 005662F9    pop         ebp
 005662FA    pop         edi
 005662FB    pop         esi
 005662FC    pop         ebx
 005662FD    ret
*}
end;

//00566300
constructor TCustomAxisPanel.Create(AOwner:TComponent);
begin
{*
 00566300    push        ebp
 00566301    mov         ebp,esp
 00566303    push        ecx
 00566304    push        ebx
 00566305    push        esi
 00566306    test        dl,dl
>00566308    je          00566312
 0056630A    add         esp,0FFFFFFF0
 0056630D    call        @ClassCreate
 00566312    mov         byte ptr [ebp-1],dl
 00566315    mov         ebx,eax
 00566317    xor         edx,edx
 00566319    mov         eax,ebx
 0056631B    call        TCustomTeePanelExtended.Create
 00566320    mov         byte ptr [ebx+2FA],1
 00566327    mov         dl,1
 00566329    mov         eax,[0055D0E8];TChartSeriesList
 0056632E    call        TObject.Create
 00566333    mov         esi,eax
 00566335    mov         dword ptr [ebx+2E0],esi
 0056633B    mov         dword ptr [esi+10],ebx
 0056633E    mov         byte ptr [ebx+2F8],1
 00566345    mov         byte ptr [ebx+2F9],1
 0056634C    mov         dl,1
 0056634E    mov         eax,[006422A4];TList
 00566353    call        TObject.Create
 00566358    mov         dword ptr [ebx+340],eax
 0056635E    mov         ecx,ebx
 00566360    mov         dl,1
 00566362    mov         eax,[0055C2D8];TChartAxis
 00566367    call        TCustomChartAxis.Create
 0056636C    mov         esi,eax
 0056636E    mov         dword ptr [ebx+2EC],esi
 00566374    mov         byte ptr [esi+8E],1
 0056637B    mov         ecx,ebx
 0056637D    mov         dl,1
 0056637F    mov         eax,[0055C2D8];TChartAxis
 00566384    call        TCustomChartAxis.Create
 00566389    mov         esi,eax
 0056638B    mov         dword ptr [ebx+2E8],esi
 00566391    mov         eax,esi
 00566393    mov         byte ptr [eax+8E],1
 0056639A    mov         byte ptr [eax+8F],1
 005663A1    mov         ecx,ebx
 005663A3    mov         dl,1
 005663A5    mov         eax,[0055C2D8];TChartAxis
 005663AA    call        TCustomChartAxis.Create
 005663AF    mov         esi,eax
 005663B1    mov         dword ptr [ebx+2F0],esi
 005663B7    mov         eax,dword ptr [esi+30]
 005663BA    mov         dword ptr [eax+0C],5A
 005663C1    mov         dword ptr [esi+0D0],5A
 005663CB    mov         ecx,ebx
 005663CD    mov         dl,1
 005663CF    mov         eax,[0055C2D8];TChartAxis
 005663D4    call        TCustomChartAxis.Create
 005663D9    mov         esi,eax
 005663DB    mov         dword ptr [ebx+2F4],esi
 005663E1    mov         eax,esi
 005663E3    mov         edx,dword ptr [eax+30]
 005663E6    mov         dword ptr [edx+0C],10E
 005663ED    mov         dword ptr [eax+0D0],10E
 005663F7    mov         byte ptr [eax+8F],1
 005663FE    mov         ecx,ebx
 00566400    mov         dl,1
 00566402    mov         eax,[0055C92C];TChartDepthAxis
 00566407    call        TCustomChartAxis.Create
 0056640C    mov         esi,eax
 0056640E    mov         dword ptr [ebx+2E4],esi
 00566414    mov         eax,esi
 00566416    mov         byte ptr [eax+94],0
 0056641D    mov         byte ptr [eax+0E0],1
 00566424    mov         byte ptr [eax+8F],1
 0056642B    mov         dword ptr [ebx+328],1
 00566435    mov         byte ptr [ebx+330],1
 0056643C    mov         eax,ebx
 0056643E    cmp         byte ptr [ebp-1],0
>00566442    je          00566453
 00566444    call        @AfterConstruction
 00566449    pop         dword ptr fs:[0]
 00566450    add         esp,0C
 00566453    mov         eax,ebx
 00566455    pop         esi
 00566456    pop         ebx
 00566457    pop         ecx
 00566458    pop         ebp
 00566459    ret
*}
end;

//0056645C
procedure TCustomAxisPanel.SetPage(Value:Integer);
begin
{*
 0056645C    push        ebx
 0056645D    push        esi
 0056645E    push        edi
 0056645F    mov         edi,edx
 00566461    mov         ebx,eax
 00566463    mov         eax,ebx
 00566465    mov         si,0FFB1
 00566469    call        @CallDynaInst
 0056646E    cmp         eax,edi
>00566470    jge         00566474
 00566472    mov         edi,eax
 00566474    cmp         edi,1
>00566477    jge         0056647E
 00566479    mov         edi,1
 0056647E    cmp         edi,dword ptr [ebx+328]
>00566484    je          005664AD
 00566486    lea         edx,[ebx+328]
 0056648C    mov         ecx,edi
 0056648E    mov         eax,ebx
 00566490    call        TCustomTeePanel.SetLongintProperty
 00566495    cmp         word ptr [ebx+312],0
>0056649D    je          005664AD
 0056649F    mov         edx,ebx
 005664A1    mov         eax,dword ptr [ebx+314]
 005664A7    call        dword ptr [ebx+310]
 005664AD    pop         edi
 005664AE    pop         esi
 005664AF    pop         ebx
 005664B0    ret
*}
end;

//005664B4
procedure TCustomAxisPanel.SetScaleLastPage(Value:Boolean);
begin
{*
 005664B4    lea         ecx,[eax+330]
 005664BA    xchg        ecx,edx
 005664BC    call        TCustomTeePanel.SetBooleanProperty
 005664C1    ret
*}
end;

//005664C4
function CalcNumPages(AAxis:TChartAxis):Integer;
begin
{*
 005664C4    push        ebp
 005664C5    mov         ebp,esp
 005664C7    add         esp,0FFFFFFF0
 005664CA    push        ebx
 005664CB    push        esi
 005664CC    push        edi
 005664CD    mov         dword ptr [ebp-4],eax
 005664D0    mov         dword ptr [ebp-8],1
 005664D7    xor         eax,eax
 005664D9    mov         dword ptr [ebp-0C],eax
 005664DC    mov         byte ptr [ebp-0D],1
 005664E0    mov         eax,dword ptr [ebp+8]
 005664E3    mov         eax,dword ptr [eax-4]
 005664E6    mov         eax,dword ptr [eax+2E0]
 005664EC    mov         esi,dword ptr [eax+8]
 005664EF    dec         esi
 005664F0    test        esi,esi
>005664F2    jl          00566541
 005664F4    inc         esi
 005664F5    xor         edi,edi
 005664F7    mov         eax,dword ptr [ebp+8]
 005664FA    mov         eax,dword ptr [eax-4]
 005664FD    mov         edx,edi
 005664FF    call        TCustomAxisPanel.GetSeries
 00566504    mov         ebx,eax
 00566506    cmp         byte ptr [ebx+30],0
>0056650A    je          0056653D
 0056650C    mov         edx,dword ptr [ebp-4]
 0056650F    mov         eax,ebx
 00566511    mov         ecx,dword ptr [eax]
 00566513    call        dword ptr [ecx+94]
 00566519    test        al,al
>0056651B    je          0056653D
 0056651D    cmp         byte ptr [ebp-0D],0
>00566521    jne         0056652F
 00566523    mov         eax,ebx
 00566525    call        TChartSeries.Count
 0056652A    cmp         eax,dword ptr [ebp-0C]
>0056652D    jle         0056653D
 0056652F    mov         eax,ebx
 00566531    call        TChartSeries.Count
 00566536    mov         dword ptr [ebp-0C],eax
 00566539    mov         byte ptr [ebp-0D],0
 0056653D    inc         edi
 0056653E    dec         esi
>0056653F    jne         005664F7
 00566541    cmp         dword ptr [ebp-0C],0
>00566545    jle         0056656C
 00566547    mov         eax,dword ptr [ebp+8]
 0056654A    mov         eax,dword ptr [eax-4]
 0056654D    mov         ecx,dword ptr [eax+32C]
 00566553    mov         eax,dword ptr [ebp-0C]
 00566556    cdq
 00566557    idiv        eax,ecx
 00566559    mov         dword ptr [ebp-8],eax
 0056655C    mov         eax,dword ptr [ebp+8]
 0056655F    mov         eax,dword ptr [ebp-0C]
 00566562    cdq
 00566563    idiv        eax,ecx
 00566565    test        edx,edx
>00566567    jle         0056656C
 00566569    inc         dword ptr [ebp-8]
 0056656C    mov         eax,dword ptr [ebp-8]
 0056656F    pop         edi
 00566570    pop         esi
 00566571    pop         ebx
 00566572    mov         esp,ebp
 00566574    pop         ebp
 00566575    ret
*}
end;

//00566578
procedure TCustomAxisPanel.NumPages;
begin
{*
 00566578    push        ebp
 00566579    mov         ebp,esp
 0056657B    push        ecx
 0056657C    mov         dword ptr [ebp-4],eax
 0056657F    mov         eax,dword ptr [ebp-4]
 00566582    cmp         dword ptr [eax+32C],0
>00566589    jle         00566600
 0056658B    mov         eax,dword ptr [ebp-4]
 0056658E    mov         eax,dword ptr [eax+2E0]
 00566594    cmp         dword ptr [eax+8],0
>00566598    jle         00566600
 0056659A    xor         edx,edx
 0056659C    mov         eax,dword ptr [ebp-4]
 0056659F    call        TCustomAxisPanel.GetSeries
 005665A4    call        TChartSeries.YMandatory
 005665A9    test        al,al
>005665AB    je          005665D6
 005665AD    push        ebp
 005665AE    mov         eax,dword ptr [ebp-4]
 005665B1    mov         eax,dword ptr [eax+2EC]
 005665B7    call        CalcNumPages
 005665BC    pop         ecx
 005665BD    push        eax
 005665BE    push        ebp
 005665BF    mov         eax,dword ptr [ebp-4]
 005665C2    mov         eax,dword ptr [eax+2E8]
 005665C8    call        CalcNumPages
 005665CD    pop         ecx
 005665CE    pop         edx
 005665CF    call        0056EDD0
>005665D4    jmp         00566605
 005665D6    push        ebp
 005665D7    mov         eax,dword ptr [ebp-4]
 005665DA    mov         eax,dword ptr [eax+2F4]
 005665E0    call        CalcNumPages
 005665E5    pop         ecx
 005665E6    push        eax
 005665E7    push        ebp
 005665E8    mov         eax,dword ptr [ebp-4]
 005665EB    mov         eax,dword ptr [eax+2F0]
 005665F1    call        CalcNumPages
 005665F6    pop         ecx
 005665F7    pop         edx
 005665F8    call        0056EDD0
 005665FD    pop         ecx
 005665FE    pop         ebp
 005665FF    ret
 00566600    mov         eax,1
 00566605    pop         ecx
 00566606    pop         ebp
 00566607    ret
*}
end;

//00566608
procedure TCustomAxisPanel.SetMaxPointsPerPage(Value:Integer);
begin
{*
 00566608    push        ebp
 00566609    mov         ebp,esp
 0056660B    push        0
 0056660D    push        esi
 0056660E    push        edi
 0056660F    mov         edi,eax
 00566611    xor         eax,eax
 00566613    push        ebp
 00566614    push        56668B
 00566619    push        dword ptr fs:[eax]
 0056661C    mov         dword ptr fs:[eax],esp
 0056661F    test        edx,edx
>00566621    jge         00566646
 00566623    lea         edx,[ebp-4]
 00566626    mov         eax,[006E9D14]
 0056662B    call        LoadResString
 00566630    mov         ecx,dword ptr [ebp-4]
 00566633    mov         dl,1
 00566635    mov         eax,[00567B78];ChartException
 0056663A    call        Exception.Create
 0056663F    call        @RaiseExcept
>00566644    jmp         00566675
 00566646    lea         eax,[edi+32C]
 0056664C    mov         ecx,edx
 0056664E    mov         edx,edi
 00566650    xchg        eax,edx
 00566651    call        TCustomTeePanel.SetLongintProperty
 00566656    mov         eax,edi
 00566658    mov         si,0FFB1
 0056665C    call        @CallDynaInst
 00566661    cmp         eax,dword ptr [edi+328]
>00566667    jge         00566675
 00566669    mov         edx,eax
 0056666B    mov         eax,edi
 0056666D    mov         ecx,dword ptr [eax]
 0056666F    call        dword ptr [ecx+100]
 00566675    xor         eax,eax
 00566677    pop         edx
 00566678    pop         ecx
 00566679    pop         ecx
 0056667A    mov         dword ptr fs:[eax],edx
 0056667D    push        566692
 00566682    lea         eax,[ebp-4]
 00566685    call        @LStrClr
 0056668A    ret
>0056668B    jmp         @HandleFinally
>00566690    jmp         00566682
 00566692    pop         edi
 00566693    pop         esi
 00566694    pop         ecx
 00566695    pop         ebp
 00566696    ret
*}
end;

//00566698
procedure TCustomAxisPanel.FreeAllSeries;
begin
{*
 00566698    push        ebx
 00566699    push        esi
 0056669A    mov         esi,eax
>0056669C    jmp         005666B9
 0056669E    xor         edx,edx
 005666A0    mov         eax,esi
 005666A2    call        TCustomAxisPanel.GetSeries
 005666A7    mov         ebx,eax
 005666A9    xor         edx,edx
 005666AB    mov         eax,ebx
 005666AD    mov         ecx,dword ptr [eax]
 005666AF    call        dword ptr [ecx+7C]
 005666B2    mov         eax,ebx
 005666B4    call        TObject.Free
 005666B9    mov         eax,esi
 005666BB    call        TCustomAxisPanel.SeriesCount
 005666C0    test        eax,eax
>005666C2    jg          0056669E
 005666C4    pop         esi
 005666C5    pop         ebx
 005666C6    ret
*}
end;

//005666C8
destructor TCustomAxisPanel.Destroy;
begin
{*
 005666C8    push        ebx
 005666C9    push        esi
 005666CA    push        edi
 005666CB    call        @BeforeDestruction
 005666D0    mov         ebx,edx
 005666D2    mov         esi,eax
 005666D4    mov         eax,esi
 005666D6    call        TCustomAxisPanel.FreeAllSeries
 005666DB    mov         eax,dword ptr [esi+2E0]
 005666E1    call        TObject.Free
 005666E6    mov         edi,dword ptr [esi+340]
>005666EC    jmp         00566703
 005666EE    mov         eax,edi
 005666F0    call        TList.First
 005666F5    call        TObject.Free
 005666FA    xor         edx,edx
 005666FC    mov         eax,edi
 005666FE    call        TList.Delete
 00566703    cmp         dword ptr [edi+8],0
>00566707    jg          005666EE
 00566709    mov         eax,dword ptr [esi+340]
 0056670F    call        TObject.Free
 00566714    mov         edx,ebx
 00566716    and         dl,0FC
 00566719    mov         eax,esi
 0056671B    call        TCustomTeePanelExtended.Destroy
 00566720    test        bl,bl
>00566722    jle         0056672B
 00566724    mov         eax,esi
 00566726    call        @ClassDestroy
 0056672B    pop         edi
 0056672C    pop         esi
 0056672D    pop         ebx
 0056672E    ret
*}
end;

//00566730
function TCustomAxisPanel.IsAxisVisible(Axis:TCustomChartAxis):Boolean;
begin
{*
 00566730    push        ebx
 00566731    push        esi
 00566732    push        edi
 00566733    push        ebp
 00566734    add         esp,0FFFFFFF8
 00566737    mov         dword ptr [esp],edx
 0056673A    mov         esi,eax
 0056673C    cmp         byte ptr [esi+2FA],0
>00566743    je          00566751
 00566745    mov         eax,dword ptr [esp]
 00566748    cmp         byte ptr [eax+94],0
>0056674F    jne         00566755
 00566751    xor         ebx,ebx
>00566753    jmp         00566757
 00566755    mov         bl,1
 00566757    test        bl,bl
>00566759    je          005667C1
 0056675B    mov         eax,dword ptr [esp]
 0056675E    cmp         byte ptr [eax+0E0],0
>00566765    je          0056676F
 00566767    mov         bl,byte ptr [esi+270]
>0056676D    jmp         005667C1
 0056676F    mov         eax,dword ptr [esi+2E0]
 00566775    mov         ebp,dword ptr [eax+8]
 00566778    dec         ebp
 00566779    test        ebp,ebp
>0056677B    jl          005667C1
 0056677D    inc         ebp
 0056677E    mov         dword ptr [esp+4],0
 00566786    mov         edx,dword ptr [esp+4]
 0056678A    mov         eax,esi
 0056678C    call        TCustomAxisPanel.GetSeries
 00566791    mov         edi,eax
 00566793    cmp         byte ptr [edi+30],0
>00566797    je          005667BA
 00566799    mov         eax,edi
 0056679B    mov         edx,dword ptr [eax]
 0056679D    call        dword ptr [edx+13C]
 005667A3    test        al,al
>005667A5    je          005667BA
 005667A7    mov         edx,dword ptr [esp]
 005667AA    mov         eax,edi
 005667AC    mov         ecx,dword ptr [eax]
 005667AE    call        dword ptr [ecx+94]
 005667B4    mov         ebx,eax
 005667B6    test        bl,bl
>005667B8    jne         005667C1
 005667BA    inc         dword ptr [esp+4]
 005667BE    dec         ebp
>005667BF    jne         00566786
 005667C1    mov         eax,ebx
 005667C3    pop         ecx
 005667C4    pop         edx
 005667C5    pop         ebp
 005667C6    pop         edi
 005667C7    pop         esi
 005667C8    pop         ebx
 005667C9    ret
*}
end;

//005667CC
function TCustomAxisPanel.NoActiveSeries(AAxis:TCustomChartAxis):Boolean;
begin
{*
 005667CC    push        ebx
 005667CD    push        esi
 005667CE    push        edi
 005667CF    push        ebp
 005667D0    push        ecx
 005667D1    mov         dword ptr [esp],edx
 005667D4    mov         ebp,eax
 005667D6    mov         eax,dword ptr [ebp+2E0]
 005667DC    mov         esi,dword ptr [eax+8]
 005667DF    dec         esi
 005667E0    test        esi,esi
>005667E2    jl          00566811
 005667E4    inc         esi
 005667E5    xor         edi,edi
 005667E7    mov         edx,edi
 005667E9    mov         eax,ebp
 005667EB    call        TCustomAxisPanel.GetSeries
 005667F0    mov         ebx,eax
 005667F2    cmp         byte ptr [ebx+30],0
>005667F6    je          0056680D
 005667F8    mov         edx,dword ptr [esp]
 005667FB    mov         eax,ebx
 005667FD    mov         ecx,dword ptr [eax]
 005667FF    call        dword ptr [ecx+94]
 00566805    test        al,al
>00566807    je          0056680D
 00566809    xor         eax,eax
>0056680B    jmp         00566813
 0056680D    inc         edi
 0056680E    dec         esi
>0056680F    jne         005667E7
 00566811    mov         al,1
 00566813    pop         edx
 00566814    pop         ebp
 00566815    pop         edi
 00566816    pop         esi
 00566817    pop         ebx
 00566818    ret
*}
end;

//0056681C
function TCustomAxisPanel.InternalMinMax(AAxis:TCustomChartAxis; IsMin:Boolean; IsX:Boolean):Double;
begin
{*
 0056681C    push        ebp
 0056681D    mov         ebp,esp
 0056681F    add         esp,0FFFFFFD0
 00566822    push        ebx
 00566823    push        esi
 00566824    push        edi
 00566825    mov         byte ptr [ebp-5],cl
 00566828    mov         dword ptr [ebp-4],edx
 0056682B    mov         ebx,eax
 0056682D    mov         eax,dword ptr [ebp-4]
 00566830    cmp         byte ptr [eax+0E0],0
>00566837    je          005668D2
 0056683D    mov         eax,dword ptr [ebp-4]
 00566840    call        TCustomChartAxis.CalcLabelStyle
 00566845    cmp         al,2
>00566847    jne         005668A6
 00566849    xor         eax,eax
 0056684B    mov         dword ptr [ebp-10],eax
 0056684E    mov         dword ptr [ebp-0C],eax
 00566851    mov         eax,dword ptr [ebx+2E0]
 00566857    mov         edi,dword ptr [eax+8]
 0056685A    dec         edi
 0056685B    test        edi,edi
>0056685D    jl          00566B22
 00566863    inc         edi
 00566864    xor         esi,esi
 00566866    mov         edx,esi
 00566868    mov         eax,ebx
 0056686A    call        TCustomAxisPanel.GetSeries
 0056686F    cmp         byte ptr [eax+30],0
>00566873    je          0056689D
 00566875    cmp         byte ptr [ebp-5],0
>00566879    je          0056688C
 0056687B    mov         edx,dword ptr [eax]
 0056687D    call        dword ptr [edx+0D4]
 00566883    fstp        qword ptr [ebp-10]
 00566886    wait
>00566887    jmp         00566B22
 0056688C    mov         edx,dword ptr [eax]
 0056688E    call        dword ptr [edx+0C8]
 00566894    fstp        qword ptr [ebp-10]
 00566897    wait
>00566898    jmp         00566B22
 0056689D    inc         esi
 0056689E    dec         edi
>0056689F    jne         00566866
>005668A1    jmp         00566B22
 005668A6    cmp         byte ptr [ebp-5],0
>005668AA    je          005668BD
 005668AC    xor         eax,eax
 005668AE    mov         dword ptr [ebp-10],eax
 005668B1    mov         dword ptr [ebp-0C],0BFE00000
>005668B8    jmp         00566B22
 005668BD    fild        dword ptr [ebx+334]
 005668C3    fadd        dword ptr ds:[566B30]
 005668C9    fstp        qword ptr [ebp-10]
 005668CC    wait
>005668CD    jmp         00566B22
 005668D2    xor         eax,eax
 005668D4    mov         dword ptr [ebp-10],eax
 005668D7    mov         dword ptr [ebp-0C],eax
 005668DA    mov         edx,dword ptr [ebp-4]
 005668DD    mov         eax,ebx
 005668DF    call        TCustomAxisPanel.GetAxisSeries
 005668E4    mov         esi,eax
 005668E6    test        esi,esi
>005668E8    je          00566901
 005668EA    mov         eax,esi
 005668EC    call        TChartSeries.YMandatory
 005668F1    test        al,al
>005668F3    je          005668FA
 005668F5    mov         al,byte ptr [ebp+8]
>005668F8    jmp         00566904
 005668FA    mov         al,byte ptr [ebp+8]
 005668FD    xor         al,1
>005668FF    jmp         00566904
 00566901    mov         al,byte ptr [ebp+8]
 00566904    cmp         dword ptr [ebx+32C],0
 0056690B    setg        dl
 0056690E    test        dl,al
>00566910    je          00566A09
 00566916    test        esi,esi
>00566918    je          00566B22
 0056691E    mov         eax,esi
 00566920    call        TChartSeries.Count
 00566925    test        eax,eax
>00566927    jle         00566B22
 0056692D    mov         edi,dword ptr [ebx+328]
 00566933    dec         edi
 00566934    imul        edi,dword ptr [ebx+32C]
 0056693B    mov         eax,esi
 0056693D    call        TChartSeries.Count
 00566942    mov         dword ptr [ebp-18],eax
 00566945    cmp         edi,dword ptr [ebp-18]
>00566948    jl          00566967
 0056694A    mov         eax,dword ptr [ebp-18]
 0056694D    cdq
 0056694E    idiv        eax,dword ptr [ebx+32C]
 00566954    mov         edx,eax
 00566956    dec         edx
 00566957    xor         eax,eax
 00566959    call        0056EDD0
 0056695E    mov         edi,eax
 00566960    imul        edi,dword ptr [ebx+32C]
 00566967    mov         ecx,dword ptr [ebx+32C]
 0056696D    mov         eax,ecx
 0056696F    add         eax,edi
 00566971    dec         eax
 00566972    mov         dword ptr [ebp-2C],eax
 00566975    mov         eax,dword ptr [ebp-18]
 00566978    cmp         eax,dword ptr [ebp-2C]
>0056697B    jg          00566989
 0056697D    mov         eax,dword ptr [ebp-18]
 00566980    cdq
 00566981    idiv        eax,ecx
 00566983    add         edx,edi
 00566985    dec         edx
 00566986    mov         dword ptr [ebp-2C],edx
 00566989    cmp         byte ptr [ebp-5],0
>0056698D    je          005669A4
 0056698F    mov         ecx,edi
 00566991    mov         dl,byte ptr [ebp+8]
 00566994    mov         eax,esi
 00566996    call        TChartSeries.GetValue
 0056699B    fstp        qword ptr [ebp-10]
 0056699E    wait
>0056699F    jmp         00566B22
 005669A4    mov         ecx,dword ptr [ebp-2C]
 005669A7    mov         dl,byte ptr [ebp+8]
 005669AA    mov         eax,esi
 005669AC    call        TChartSeries.GetValue
 005669B1    fstp        qword ptr [ebp-10]
 005669B4    wait
 005669B5    cmp         byte ptr [ebx+330],0
>005669BC    jne         00566B22
 005669C2    mov         eax,dword ptr [ebp-2C]
 005669C5    sub         eax,edi
 005669C7    inc         eax
 005669C8    mov         dword ptr [ebp-30],eax
 005669CB    mov         eax,dword ptr [ebp-30]
 005669CE    cmp         eax,dword ptr [ebx+32C]
>005669D4    jge         00566B22
 005669DA    mov         ecx,edi
 005669DC    mov         dl,byte ptr [ebp+8]
 005669DF    mov         eax,esi
 005669E1    call        TChartSeries.GetValue
 005669E6    fstp        qword ptr [ebp-28]
 005669E9    wait
 005669EA    fld         qword ptr [ebp-10]
 005669ED    fsub        qword ptr [ebp-28]
 005669F0    fild        dword ptr [ebx+32C]
 005669F6    fmulp       st(1),st
 005669F8    fild        dword ptr [ebp-30]
 005669FB    fdivp       st(1),st
 005669FD    fadd        qword ptr [ebp-28]
 00566A00    fstp        qword ptr [ebp-10]
 00566A03    wait
>00566A04    jmp         00566B22
 00566A09    mov         byte ptr [ebp-19],1
 00566A0D    mov         eax,dword ptr [ebx+2E0]
 00566A13    mov         edi,dword ptr [eax+8]
 00566A16    dec         edi
 00566A17    test        edi,edi
>00566A19    jl          00566B22
 00566A1F    inc         edi
 00566A20    mov         dword ptr [ebp-14],0
 00566A27    mov         edx,dword ptr [ebp-14]
 00566A2A    mov         eax,ebx
 00566A2C    call        TCustomAxisPanel.GetSeries
 00566A31    mov         esi,eax
 00566A33    cmp         byte ptr [esi+30],0
>00566A37    jne         00566A4B
 00566A39    mov         edx,dword ptr [ebp-4]
 00566A3C    mov         eax,ebx
 00566A3E    call        TCustomAxisPanel.NoActiveSeries
 00566A43    test        al,al
>00566A45    je          00566B18
 00566A4B    mov         eax,esi
 00566A4D    call        TChartSeries.Count
 00566A52    test        eax,eax
>00566A54    jle         00566B18
 00566A5A    cmp         byte ptr [ebp+8],0
>00566A5E    je          00566A71
 00566A60    cmp         byte ptr [esi+90],2
>00566A67    je          00566A90
 00566A69    mov         eax,dword ptr [esi+50]
 00566A6C    cmp         eax,dword ptr [ebp-4]
>00566A6F    je          00566A90
 00566A71    cmp         byte ptr [ebp+8],0
>00566A75    jne         00566B18
 00566A7B    cmp         byte ptr [esi+0A0],2
>00566A82    je          00566A90
 00566A84    mov         eax,dword ptr [esi+54]
 00566A87    cmp         eax,dword ptr [ebp-4]
>00566A8A    jne         00566B18
 00566A90    cmp         byte ptr [ebp-5],0
>00566A94    je          00566ABC
 00566A96    cmp         byte ptr [ebp+8],0
>00566A9A    je          00566AAC
 00566A9C    mov         eax,esi
 00566A9E    mov         edx,dword ptr [eax]
 00566AA0    call        dword ptr [edx+0CC]
 00566AA6    fstp        qword ptr [ebp-28]
 00566AA9    wait
>00566AAA    jmp         00566AE0
 00566AAC    mov         eax,esi
 00566AAE    mov         edx,dword ptr [eax]
 00566AB0    call        dword ptr [edx+0D0]
 00566AB6    fstp        qword ptr [ebp-28]
 00566AB9    wait
>00566ABA    jmp         00566AE0
 00566ABC    cmp         byte ptr [ebp+8],0
>00566AC0    je          00566AD2
 00566AC2    mov         eax,esi
 00566AC4    mov         edx,dword ptr [eax]
 00566AC6    call        dword ptr [edx+0C0]
 00566ACC    fstp        qword ptr [ebp-28]
 00566ACF    wait
>00566AD0    jmp         00566AE0
 00566AD2    mov         eax,esi
 00566AD4    mov         edx,dword ptr [eax]
 00566AD6    call        dword ptr [edx+0C4]
 00566ADC    fstp        qword ptr [ebp-28]
 00566ADF    wait
 00566AE0    cmp         byte ptr [ebp-19],0
>00566AE4    jne         00566B08
 00566AE6    cmp         byte ptr [ebp-5],0
>00566AEA    je          00566AF7
 00566AEC    fld         qword ptr [ebp-28]
 00566AEF    fcomp       qword ptr [ebp-10]
 00566AF2    fnstsw      al
 00566AF4    sahf
>00566AF5    jb          00566B08
 00566AF7    cmp         byte ptr [ebp-5],0
>00566AFB    jne         00566B18
 00566AFD    fld         qword ptr [ebp-28]
 00566B00    fcomp       qword ptr [ebp-10]
 00566B03    fnstsw      al
 00566B05    sahf
>00566B06    jbe         00566B18
 00566B08    mov         eax,dword ptr [ebp-28]
 00566B0B    mov         dword ptr [ebp-10],eax
 00566B0E    mov         eax,dword ptr [ebp-24]
 00566B11    mov         dword ptr [ebp-0C],eax
 00566B14    mov         byte ptr [ebp-19],0
 00566B18    inc         dword ptr [ebp-14]
 00566B1B    dec         edi
>00566B1C    jne         00566A27
 00566B22    fld         qword ptr [ebp-10]
 00566B25    pop         edi
 00566B26    pop         esi
 00566B27    pop         ebx
 00566B28    mov         esp,ebp
 00566B2A    pop         ebp
 00566B2B    ret         4
*}
end;

//00566B34
function TCustomAxisPanel.MaxXValue(AAxis:TChartAxis):Double;
begin
{*
 00566B34    add         esp,0FFFFFFF8
 00566B37    push        1
 00566B39    xor         ecx,ecx
 00566B3B    call        TCustomAxisPanel.InternalMinMax
 00566B40    fstp        qword ptr [esp]
 00566B43    wait
 00566B44    fld         qword ptr [esp]
 00566B47    pop         ecx
 00566B48    pop         edx
 00566B49    ret
*}
end;

//00566B4C
function TCustomAxisPanel.MaxYValue(AAxis:TChartAxis):Double;
begin
{*
 00566B4C    add         esp,0FFFFFFF8
 00566B4F    push        0
 00566B51    xor         ecx,ecx
 00566B53    call        TCustomAxisPanel.InternalMinMax
 00566B58    fstp        qword ptr [esp]
 00566B5B    wait
 00566B5C    fld         qword ptr [esp]
 00566B5F    pop         ecx
 00566B60    pop         edx
 00566B61    ret
*}
end;

//00566B64
function TCustomAxisPanel.MinXValue(AAxis:TChartAxis):Double;
begin
{*
 00566B64    add         esp,0FFFFFFF8
 00566B67    push        1
 00566B69    mov         cl,1
 00566B6B    call        TCustomAxisPanel.InternalMinMax
 00566B70    fstp        qword ptr [esp]
 00566B73    wait
 00566B74    fld         qword ptr [esp]
 00566B77    pop         ecx
 00566B78    pop         edx
 00566B79    ret
*}
end;

//00566B7C
function TCustomAxisPanel.MinYValue(AAxis:TChartAxis):Double;
begin
{*
 00566B7C    add         esp,0FFFFFFF8
 00566B7F    push        0
 00566B81    mov         cl,1
 00566B83    call        TCustomAxisPanel.InternalMinMax
 00566B88    fstp        qword ptr [esp]
 00566B8B    wait
 00566B8C    fld         qword ptr [esp]
 00566B8F    pop         ecx
 00566B90    pop         edx
 00566B91    ret
*}
end;

//00566B94
function TCustomAxisPanel.ActiveSeriesLegend(ItemIndex:Integer):TChartSeries;
begin
{*
 00566B94    push        ebx
 00566B95    push        esi
 00566B96    push        edi
 00566B97    push        ebp
 00566B98    push        ecx
 00566B99    mov         dword ptr [esp],edx
 00566B9C    mov         edi,eax
 00566B9E    xor         ebp,ebp
 00566BA0    mov         eax,dword ptr [edi+2E0]
 00566BA6    mov         ebx,dword ptr [eax+8]
 00566BA9    dec         ebx
 00566BAA    test        ebx,ebx
>00566BAC    jl          00566BDB
 00566BAE    inc         ebx
 00566BAF    xor         esi,esi
 00566BB1    mov         edx,esi
 00566BB3    mov         eax,edi
 00566BB5    call        TCustomAxisPanel.GetSeries
 00566BBA    cmp         byte ptr [eax+30],0
>00566BBE    je          00566BD7
 00566BC0    cmp         byte ptr [eax+70],0
>00566BC4    je          00566BD7
 00566BC6    cmp         ebp,dword ptr [esp]
>00566BC9    jne         00566BD6
 00566BCB    mov         edx,esi
 00566BCD    mov         eax,edi
 00566BCF    call        TCustomAxisPanel.GetSeries
>00566BD4    jmp         00566BDD
 00566BD6    inc         ebp
 00566BD7    inc         esi
 00566BD8    dec         ebx
>00566BD9    jne         00566BB1
 00566BDB    xor         eax,eax
 00566BDD    pop         edx
 00566BDE    pop         ebp
 00566BDF    pop         edi
 00566BE0    pop         esi
 00566BE1    pop         ebx
 00566BE2    ret
*}
end;

//00566BE4
function TCustomAxisPanel.SeriesTitleLegend(SeriesIndex:Integer):AnsiString;
begin
{*
 00566BE4    push        ebp
 00566BE5    mov         ebp,esp
 00566BE7    push        0
 00566BE9    push        ebx
 00566BEA    push        esi
 00566BEB    push        edi
 00566BEC    mov         esi,ecx
 00566BEE    mov         edi,edx
 00566BF0    xor         edx,edx
 00566BF2    push        ebp
 00566BF3    push        566C64
 00566BF8    push        dword ptr fs:[edx]
 00566BFB    mov         dword ptr fs:[edx],esp
 00566BFE    mov         edx,edi
 00566C00    call        TCustomAxisPanel.ActiveSeriesLegend
 00566C05    mov         ebx,eax
 00566C07    test        ebx,ebx
>00566C09    je          00566C47
 00566C0B    cmp         dword ptr [ebx+78],0
>00566C0F    jne         00566C3B
 00566C11    mov         eax,esi
 00566C13    mov         edx,dword ptr [ebx+8]
 00566C16    call        @LStrAsg
 00566C1B    cmp         dword ptr [esi],0
>00566C1E    jne         00566C4E
 00566C20    lea         edx,[ebp-4]
 00566C23    mov         eax,edi
 00566C25    call        IntToStr
 00566C2A    mov         ecx,dword ptr [ebp-4]
 00566C2D    mov         eax,esi
 00566C2F    mov         edx,566C7C;'Series '
 00566C34    call        @LStrCat3
>00566C39    jmp         00566C4E
 00566C3B    mov         eax,esi
 00566C3D    mov         edx,dword ptr [ebx+78]
 00566C40    call        @LStrAsg
>00566C45    jmp         00566C4E
 00566C47    mov         eax,esi
 00566C49    call        @LStrClr
 00566C4E    xor         eax,eax
 00566C50    pop         edx
 00566C51    pop         ecx
 00566C52    pop         ecx
 00566C53    mov         dword ptr fs:[eax],edx
 00566C56    push        566C6B
 00566C5B    lea         eax,[ebp-4]
 00566C5E    call        @LStrClr
 00566C63    ret
>00566C64    jmp         @HandleFinally
>00566C69    jmp         00566C5B
 00566C6B    pop         edi
 00566C6C    pop         esi
 00566C6D    pop         ebx
 00566C6E    pop         ecx
 00566C6F    pop         ebp
 00566C70    ret
*}
end;

//00566C84
function TCustomAxisPanel.MaxTextWidth:Integer;
begin
{*
 00566C84    push        ebp
 00566C85    mov         ebp,esp
 00566C87    add         esp,0FFFFFFE4
 00566C8A    push        ebx
 00566C8B    push        esi
 00566C8C    push        edi
 00566C8D    xor         edx,edx
 00566C8F    mov         dword ptr [ebp-1C],edx
 00566C92    mov         dword ptr [ebp-4],eax
 00566C95    xor         eax,eax
 00566C97    push        ebp
 00566C98    push        566D3F
 00566C9D    push        dword ptr fs:[eax]
 00566CA0    mov         dword ptr fs:[eax],esp
 00566CA3    xor         eax,eax
 00566CA5    mov         dword ptr [ebp-8],eax
 00566CA8    mov         eax,dword ptr [ebp-4]
 00566CAB    mov         eax,dword ptr [eax+2E0]
 00566CB1    mov         eax,dword ptr [eax+8]
 00566CB4    dec         eax
 00566CB5    test        eax,eax
>00566CB7    jl          00566D29
 00566CB9    inc         eax
 00566CBA    mov         dword ptr [ebp-18],eax
 00566CBD    mov         dword ptr [ebp-0C],0
 00566CC4    mov         edx,dword ptr [ebp-0C]
 00566CC7    mov         eax,dword ptr [ebp-4]
 00566CCA    call        TCustomAxisPanel.GetSeries
 00566CCF    mov         esi,eax
 00566CD1    mov         eax,dword ptr [esi+88]
 00566CD7    cmp         dword ptr [eax+8],0
>00566CDB    jle         00566D21
 00566CDD    mov         eax,esi
 00566CDF    call        TChartSeries.Count
 00566CE4    mov         ebx,eax
 00566CE6    dec         ebx
 00566CE7    test        ebx,ebx
>00566CE9    jl          00566D21
 00566CEB    inc         ebx
 00566CEC    mov         dword ptr [ebp-10],0
 00566CF3    lea         ecx,[ebp-1C]
 00566CF6    mov         edx,dword ptr [ebp-10]
 00566CF9    mov         eax,esi
 00566CFB    mov         edi,dword ptr [eax]
 00566CFD    call        dword ptr [edi+60]
 00566D00    mov         edx,dword ptr [ebp-1C]
 00566D03    lea         ecx,[ebp-14]
 00566D06    mov         eax,dword ptr [ebp-4]
 00566D09    call        TCustomTeePanel.MultiLineTextWidth
 00566D0E    mov         edx,eax
 00566D10    mov         eax,dword ptr [ebp-8]
 00566D13    call        0056EDD0
 00566D18    mov         dword ptr [ebp-8],eax
 00566D1B    inc         dword ptr [ebp-10]
 00566D1E    dec         ebx
>00566D1F    jne         00566CF3
 00566D21    inc         dword ptr [ebp-0C]
 00566D24    dec         dword ptr [ebp-18]
>00566D27    jne         00566CC4
 00566D29    xor         eax,eax
 00566D2B    pop         edx
 00566D2C    pop         ecx
 00566D2D    pop         ecx
 00566D2E    mov         dword ptr fs:[eax],edx
 00566D31    push        566D46
 00566D36    lea         eax,[ebp-1C]
 00566D39    call        @LStrClr
 00566D3E    ret
>00566D3F    jmp         @HandleFinally
>00566D44    jmp         00566D36
 00566D46    mov         eax,dword ptr [ebp-8]
 00566D49    pop         edi
 00566D4A    pop         esi
 00566D4B    pop         ebx
 00566D4C    mov         esp,ebp
 00566D4E    pop         ebp
 00566D4F    ret
*}
end;

//00566D50
function TCustomAxisPanel.MaxMarkWidth:Integer;
begin
{*
 00566D50    push        ebx
 00566D51    push        esi
 00566D52    push        edi
 00566D53    push        ebp
 00566D54    push        ecx
 00566D55    mov         ebp,eax
 00566D57    xor         eax,eax
 00566D59    mov         dword ptr [esp],eax
 00566D5C    mov         eax,dword ptr [ebp+2E0]
 00566D62    mov         esi,dword ptr [eax+8]
 00566D65    dec         esi
 00566D66    test        esi,esi
>00566D68    jl          00566D96
 00566D6A    inc         esi
 00566D6B    xor         edi,edi
 00566D6D    mov         edx,edi
 00566D6F    mov         eax,ebp
 00566D71    call        TCustomAxisPanel.GetSeries
 00566D76    mov         ebx,eax
 00566D78    cmp         byte ptr [ebx+30],0
>00566D7C    je          00566D92
 00566D7E    mov         eax,ebx
 00566D80    call        TChartSeries.MaxMarkWidth
 00566D85    mov         edx,eax
 00566D87    mov         eax,dword ptr [esp]
 00566D8A    call        0056EDD0
 00566D8F    mov         dword ptr [esp],eax
 00566D92    inc         edi
 00566D93    dec         esi
>00566D94    jne         00566D6D
 00566D96    mov         eax,dword ptr [esp]
 00566D99    pop         edx
 00566D9A    pop         ebp
 00566D9B    pop         edi
 00566D9C    pop         esi
 00566D9D    pop         ebx
 00566D9E    ret
*}
end;

//00566DA0
function TCustomAxisPanel.GetSeries(Index:Integer):TChartSeries;
begin
{*
 00566DA0    push        ebx
 00566DA1    push        esi
 00566DA2    mov         esi,edx
 00566DA4    mov         ebx,eax
 00566DA6    mov         edx,esi
 00566DA8    mov         eax,dword ptr [ebx+2E0]
 00566DAE    call        TList.Get
 00566DB3    pop         esi
 00566DB4    pop         ebx
 00566DB5    ret
*}
end;

//00566DB8
procedure TCustomAxisPanel.CalcSize3DWalls;
begin
{*
 00566DB8    push        ebx
 00566DB9    push        esi
 00566DBA    add         esp,0FFFFFFF8
 00566DBD    mov         ebx,eax
 00566DBF    cmp         byte ptr [ebx+270],0
>00566DC6    je          00566E54
 00566DCC    fild        dword ptr [ebx+220]
 00566DD2    fld         tbyte ptr ds:[566E7C]
 00566DD8    fmulp       st(1),st
 00566DDA    fstp        qword ptr [esp]
 00566DDD    wait
 00566DDE    mov         eax,dword ptr [ebx+274]
 00566DE4    cmp         byte ptr [eax+0C],0
>00566DE8    jne         00566DF7
 00566DEA    fld         qword ptr [esp]
 00566DED    fmul        dword ptr ds:[566E88]
 00566DF3    fstp        qword ptr [esp]
 00566DF6    wait
 00566DF7    fild        dword ptr [ebx+238]
 00566DFD    fmul        qword ptr [esp]
 00566E00    call        @ROUND
 00566E05    mov         esi,eax
 00566E07    mov         dword ptr [ebx+338],esi
 00566E0D    mov         dword ptr [ebx+33C],esi
 00566E13    cmp         byte ptr [ebx+224],0
>00566E1A    je          00566E2F
 00566E1C    mov         edx,dword ptr [ebx+334]
 00566E22    inc         edx
 00566E23    mov         eax,1
 00566E28    call        0056EDD0
>00566E2D    jmp         00566E34
 00566E2F    mov         eax,1
 00566E34    mov         edx,dword ptr [ebx+33C]
 00566E3A    imul        edx,eax
 00566E3D    mov         dword ptr [ebx+24C],edx
 00566E43    mov         edx,dword ptr [ebx+338]
 00566E49    imul        edx,eax
 00566E4C    mov         dword ptr [ebx+278],edx
>00566E52    jmp         00566E74
 00566E54    xor         eax,eax
 00566E56    mov         dword ptr [ebx+338],eax
 00566E5C    xor         eax,eax
 00566E5E    mov         dword ptr [ebx+33C],eax
 00566E64    xor         eax,eax
 00566E66    mov         dword ptr [ebx+278],eax
 00566E6C    xor         eax,eax
 00566E6E    mov         dword ptr [ebx+24C],eax
 00566E74    pop         ecx
 00566E75    pop         edx
 00566E76    pop         esi
 00566E77    pop         ebx
 00566E78    ret
*}
end;

//00566E8C
procedure ClipRegionCreate;
begin
{*
 00566E8C    push        ebp
 00566E8D    mov         ebp,esp
 00566E8F    push        ebx
 00566E90    mov         eax,dword ptr [ebp+8]
 00566E93    mov         eax,dword ptr [eax+8]
 00566E96    mov         eax,dword ptr [eax-4]
 00566E99    call        TCustomTeePanel.CanClip
 00566E9E    test        al,al
>00566EA0    je          00566EE1
 00566EA2    mov         eax,dword ptr [ebp+8]
 00566EA5    mov         eax,dword ptr [eax+8]
 00566EA8    mov         eax,dword ptr [eax-4]
 00566EAB    mov         eax,dword ptr [eax+278]
 00566EB1    push        eax
 00566EB2    mov         eax,dword ptr [ebp+8]
 00566EB5    mov         eax,dword ptr [eax+8]
 00566EB8    mov         eax,dword ptr [eax-4]
 00566EBB    lea         edx,[eax+286]
 00566EC1    mov         eax,dword ptr [ebp+8]
 00566EC4    mov         eax,dword ptr [eax+8]
 00566EC7    mov         eax,dword ptr [eax-4]
 00566ECA    mov         eax,dword ptr [eax+280]
 00566ED0    xor         ecx,ecx
 00566ED2    mov         ebx,dword ptr [eax]
 00566ED4    call        dword ptr [ebx+0C0]
 00566EDA    mov         eax,dword ptr [ebp+8]
 00566EDD    mov         byte ptr [eax-1],1
 00566EE1    pop         ebx
 00566EE2    pop         ebp
 00566EE3    ret
*}
end;

//00566EE4
procedure ClipRegionDone;
begin
{*
 00566EE4    push        ebp
 00566EE5    mov         ebp,esp
 00566EE7    mov         eax,dword ptr [ebp+8]
 00566EEA    cmp         byte ptr [eax-1],0
>00566EEE    je          00566F0E
 00566EF0    mov         eax,dword ptr [ebp+8]
 00566EF3    mov         eax,dword ptr [eax+8]
 00566EF6    mov         eax,dword ptr [eax-4]
 00566EF9    mov         eax,dword ptr [eax+280]
 00566EFF    mov         edx,dword ptr [eax]
 00566F01    call        dword ptr [edx+90]
 00566F07    mov         eax,dword ptr [ebp+8]
 00566F0A    mov         byte ptr [eax-1],0
 00566F0E    pop         ebp
 00566F0F    ret
*}
end;

//00566F10
procedure TryDrawSeries(ASeries:TChartSeries);
begin
{*
 00566F10    push        ebp
 00566F11    mov         ebp,esp
 00566F13    push        ebx
 00566F14    push        esi
 00566F15    mov         ebx,eax
 00566F17    cmp         byte ptr [ebx+30],0
>00566F1B    je          00566F54
 00566F1D    mov         eax,ebx
 00566F1F    call        TChartSeries.GetZOrder
 00566F24    mov         esi,eax
 00566F26    mov         eax,dword ptr [ebp+8]
 00566F29    mov         eax,dword ptr [eax+8]
 00566F2C    mov         eax,dword ptr [eax-8]
 00566F2F    call        TChartSeries.GetZOrder
 00566F34    cmp         esi,eax
>00566F36    jne         00566F54
 00566F38    mov         eax,ebx
 00566F3A    call        TChartSeries.Count
 00566F3F    mov         edx,dword ptr [ebp+8]
 00566F42    cmp         eax,dword ptr [edx-4]
>00566F45    jle         00566F54
 00566F47    mov         eax,dword ptr [ebp+8]
 00566F4A    mov         edx,dword ptr [eax-4]
 00566F4D    mov         eax,ebx
 00566F4F    mov         ecx,dword ptr [eax]
 00566F51    call        dword ptr [ecx+58]
 00566F54    pop         esi
 00566F55    pop         ebx
 00566F56    pop         ebp
 00566F57    ret
*}
end;

//00566F58
procedure DrawAllSeriesValue(ValueIndex:Integer);
begin
{*
 00566F58    push        ebp
 00566F59    mov         ebp,esp
 00566F5B    push        ecx
 00566F5C    push        ebx
 00566F5D    push        esi
 00566F5E    push        edi
 00566F5F    mov         dword ptr [ebp-4],eax
 00566F62    mov         edi,dword ptr [ebp+8]
 00566F65    mov         edi,dword ptr [edi+8]
 00566F68    add         edi,0FFFFFFFC
 00566F6B    mov         eax,dword ptr [ebp+8]
 00566F6E    mov         edx,dword ptr [eax-8]
 00566F71    mov         eax,dword ptr [edi]
 00566F73    mov         eax,dword ptr [eax+2E0]
 00566F79    call        TList.IndexOf
 00566F7E    mov         ebx,eax
 00566F80    mov         eax,dword ptr [edi]
 00566F82    mov         eax,dword ptr [eax+2E0]
 00566F88    mov         esi,dword ptr [eax+8]
 00566F8B    dec         esi
 00566F8C    mov         eax,dword ptr [ebp+8]
 00566F8F    mov         eax,dword ptr [eax-8]
 00566F92    call        TChartSeries.Count
 00566F97    cmp         eax,dword ptr [ebp-4]
>00566F9A    jle         00566FE9
 00566F9C    mov         eax,dword ptr [ebp+8]
 00566F9F    mov         eax,dword ptr [eax-8]
 00566FA2    mov         edx,dword ptr [ebp-4]
 00566FA5    mov         ecx,dword ptr [eax]
 00566FA7    call        dword ptr [ecx+10C]
 00566FAD    test        al,al
>00566FAF    je          00566FCE
 00566FB1    sub         esi,ebx
>00566FB3    jl          00567004
 00566FB5    inc         esi
 00566FB6    xchg        ebx,esi
 00566FB8    push        ebp
 00566FB9    mov         eax,dword ptr [edi]
 00566FBB    mov         edx,esi
 00566FBD    call        TCustomAxisPanel.GetSeries
 00566FC2    call        TryDrawSeries
 00566FC7    pop         ecx
 00566FC8    inc         esi
 00566FC9    dec         ebx
>00566FCA    jne         00566FB8
>00566FCC    jmp         00567004
 00566FCE    sub         ebx,esi
>00566FD0    jg          00567004
 00566FD2    dec         ebx
 00566FD3    push        ebp
 00566FD4    mov         eax,dword ptr [edi]
 00566FD6    mov         edx,esi
 00566FD8    call        TCustomAxisPanel.GetSeries
 00566FDD    call        TryDrawSeries
 00566FE2    pop         ecx
 00566FE3    dec         esi
 00566FE4    inc         ebx
>00566FE5    jne         00566FD3
>00566FE7    jmp         00567004
 00566FE9    sub         esi,ebx
>00566FEB    jl          00567004
 00566FED    inc         esi
 00566FEE    xchg        ebx,esi
 00566FF0    push        ebp
 00566FF1    mov         eax,dword ptr [edi]
 00566FF3    mov         edx,esi
 00566FF5    call        TCustomAxisPanel.GetSeries
 00566FFA    call        TryDrawSeries
 00566FFF    pop         ecx
 00567000    inc         esi
 00567001    dec         ebx
>00567002    jne         00566FF0
 00567004    pop         edi
 00567005    pop         esi
 00567006    pop         ebx
 00567007    pop         ecx
 00567008    pop         ebp
 00567009    ret
*}
end;

//0056700C
procedure DrawMarksSeries(ASeries:TChartSeries);
begin
{*
 0056700C    push        ebp
 0056700D    mov         ebp,esp
 0056700F    push        ebx
 00567010    push        esi
 00567011    mov         esi,eax
 00567013    mov         ebx,dword ptr [esi+64]
 00567016    cmp         byte ptr [ebx+28],0
>0056701A    je          00567043
 0056701C    cmp         byte ptr [ebx+11],0
>00567020    je          0056702C
 00567022    mov         eax,dword ptr [ebp+8]
 00567025    push        eax
 00567026    call        ClipRegionCreate
 0056702B    pop         ecx
 0056702C    mov         eax,esi
 0056702E    call        TChartSeries.DrawMarks
 00567033    cmp         byte ptr [ebx+11],0
>00567037    je          00567043
 00567039    mov         eax,dword ptr [ebp+8]
 0056703C    push        eax
 0056703D    call        ClipRegionDone
 00567042    pop         ecx
 00567043    pop         esi
 00567044    pop         ebx
 00567045    pop         ebp
 00567046    ret
*}
end;

//00567048
procedure DrawSeries(TheSeries:TChartSeries);
begin
{*
 00567048    push        ebp
 00567049    mov         ebp,esp
 0056704B    add         esp,0FFFFFFF0
 0056704E    push        ebx
 0056704F    push        esi
 00567050    push        edi
 00567051    mov         dword ptr [ebp-8],eax
 00567054    mov         byte ptr [ebp-1],0
 00567058    mov         eax,dword ptr [ebp+8]
 0056705B    mov         eax,dword ptr [eax-4]
 0056705E    cmp         byte ptr [eax+270],0
>00567065    je          00567232
 0056706B    mov         eax,dword ptr [ebp-8]
 0056706E    mov         edx,dword ptr [eax]
 00567070    call        dword ptr [edx+70]
 00567073    test        al,al
>00567075    je          00567232
 0056707B    mov         eax,dword ptr [ebp-8]
 0056707E    call        TChartSeries.FirstInZOrder
 00567083    test        al,al
>00567085    je          00567291
 0056708B    mov         byte ptr [ebp-1],0
 0056708F    mov         dword ptr [ebp-0C],0FFFFFFFF
 00567096    mov         dword ptr [ebp-10],0FFFFFFFF
 0056709D    mov         eax,dword ptr [ebp+8]
 005670A0    mov         eax,dword ptr [eax-4]
 005670A3    mov         eax,dword ptr [eax+2E0]
 005670A9    mov         edx,dword ptr [ebp-8]
 005670AC    call        TList.IndexOf
 005670B1    mov         esi,eax
 005670B3    mov         eax,dword ptr [ebp+8]
 005670B6    mov         eax,dword ptr [eax-4]
 005670B9    mov         eax,dword ptr [eax+2E0]
 005670BF    mov         ebx,dword ptr [eax+8]
 005670C2    dec         ebx
 005670C3    sub         ebx,esi
>005670C5    jl          00567164
 005670CB    inc         ebx
 005670CC    mov         eax,dword ptr [ebp+8]
 005670CF    mov         eax,dword ptr [eax-4]
 005670D2    mov         edx,esi
 005670D4    call        TCustomAxisPanel.GetSeries
 005670D9    mov         edi,eax
 005670DB    cmp         byte ptr [edi+30],0
>005670DF    je          0056715C
 005670E1    mov         eax,edi
 005670E3    call        TChartSeries.GetZOrder
 005670E8    push        eax
 005670E9    mov         eax,dword ptr [ebp-8]
 005670EC    call        TChartSeries.GetZOrder
 005670F1    pop         edx
 005670F2    cmp         edx,eax
>005670F4    jne         0056715C
 005670F6    mov         eax,edi
 005670F8    call        TChartSeries.CalcFirstLastVisibleIndex
 005670FD    mov         eax,dword ptr [edi+4C]
 00567100    cmp         eax,0FFFFFFFF
>00567103    je          0056715C
 00567105    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00567109    jne         00567110
 0056710B    mov         dword ptr [ebp-0C],eax
>0056710E    jmp         0056711D
 00567110    mov         edx,eax
 00567112    mov         eax,dword ptr [ebp-0C]
 00567115    call        0056EDD0
 0056711A    mov         dword ptr [ebp-0C],eax
 0056711D    cmp         dword ptr [ebp-10],0FFFFFFFF
>00567121    jne         0056712B
 00567123    mov         eax,dword ptr [edi+5C]
 00567126    mov         dword ptr [ebp-10],eax
>00567129    jmp         00567139
 0056712B    mov         edx,dword ptr [edi+5C]
 0056712E    mov         eax,dword ptr [ebp-10]
 00567131    call        0056EDD0
 00567136    mov         dword ptr [ebp-10],eax
 00567139    mov         eax,edi
 0056713B    mov         edx,dword ptr [eax]
 0056713D    call        dword ptr [edx+4C]
 00567140    mov         eax,dword ptr [ebp+8]
 00567143    mov         eax,dword ptr [eax-4]
 00567146    cmp         byte ptr [eax+2F9],0
>0056714D    je          0056715C
 0056714F    cmp         byte ptr [ebp-1],0
>00567153    jne         0056715C
 00567155    push        ebp
 00567156    call        ClipRegionCreate
 0056715B    pop         ecx
 0056715C    inc         esi
 0056715D    dec         ebx
>0056715E    jne         005670CC
 00567164    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00567168    je          005671AB
 0056716A    mov         eax,dword ptr [ebp-8]
 0056716D    mov         edx,dword ptr [eax]
 0056716F    call        dword ptr [edx+108]
 00567175    test        al,al
>00567177    je          00567193
 00567179    mov         esi,dword ptr [ebp-0C]
 0056717C    mov         ebx,dword ptr [ebp-10]
 0056717F    sub         ebx,esi
>00567181    jl          005671AB
 00567183    inc         ebx
 00567184    push        ebp
 00567185    mov         eax,esi
 00567187    call        DrawAllSeriesValue
 0056718C    pop         ecx
 0056718D    inc         esi
 0056718E    dec         ebx
>0056718F    jne         00567184
>00567191    jmp         005671AB
 00567193    mov         esi,dword ptr [ebp-10]
 00567196    mov         ebx,dword ptr [ebp-0C]
 00567199    sub         ebx,esi
>0056719B    jg          005671AB
 0056719D    dec         ebx
 0056719E    push        ebp
 0056719F    mov         eax,esi
 005671A1    call        DrawAllSeriesValue
 005671A6    pop         ecx
 005671A7    dec         esi
 005671A8    inc         ebx
>005671A9    jne         0056719E
 005671AB    push        ebp
 005671AC    call        ClipRegionDone
 005671B1    pop         ecx
 005671B2    mov         eax,dword ptr [ebp+8]
 005671B5    mov         eax,dword ptr [eax-4]
 005671B8    mov         eax,dword ptr [eax+2E0]
 005671BE    mov         edx,dword ptr [ebp-8]
 005671C1    call        TList.IndexOf
 005671C6    mov         esi,eax
 005671C8    mov         eax,dword ptr [ebp+8]
 005671CB    mov         eax,dword ptr [eax-4]
 005671CE    mov         eax,dword ptr [eax+2E0]
 005671D4    mov         ebx,dword ptr [eax+8]
 005671D7    dec         ebx
 005671D8    sub         ebx,esi
>005671DA    jl          00567291
 005671E0    inc         ebx
 005671E1    mov         eax,dword ptr [ebp+8]
 005671E4    mov         eax,dword ptr [eax-4]
 005671E7    mov         edx,esi
 005671E9    call        TCustomAxisPanel.GetSeries
 005671EE    mov         edi,eax
 005671F0    cmp         byte ptr [edi+30],0
>005671F4    je          0056722C
 005671F6    mov         eax,edi
 005671F8    call        TChartSeries.GetZOrder
 005671FD    push        eax
 005671FE    mov         eax,dword ptr [ebp-8]
 00567201    call        TChartSeries.GetZOrder
 00567206    pop         edx
 00567207    cmp         edx,eax
>00567209    jne         0056722C
 0056720B    cmp         dword ptr [edi+4C],0FFFFFFFF
>0056720F    je          0056722C
 00567211    push        ebp
 00567212    mov         eax,dword ptr [ebp+8]
 00567215    mov         eax,dword ptr [eax-4]
 00567218    mov         edx,esi
 0056721A    call        TCustomAxisPanel.GetSeries
 0056721F    call        DrawMarksSeries
 00567224    pop         ecx
 00567225    mov         eax,edi
 00567227    mov         edx,dword ptr [eax]
 00567229    call        dword ptr [edx+44]
 0056722C    inc         esi
 0056722D    dec         ebx
>0056722E    jne         005671E1
>00567230    jmp         00567291
 00567232    mov         eax,dword ptr [ebp-8]
 00567235    call        TChartSeries.CalcFirstLastVisibleIndex
 0056723A    mov         eax,dword ptr [ebp-8]
 0056723D    cmp         dword ptr [eax+4C],0FFFFFFFF
>00567241    je          00567291
 00567243    mov         eax,dword ptr [ebp-8]
 00567246    mov         edx,dword ptr [eax]
 00567248    call        dword ptr [edx+4C]
 0056724B    mov         eax,dword ptr [ebp+8]
 0056724E    mov         eax,dword ptr [eax-4]
 00567251    cmp         byte ptr [eax+2F9],0
>00567258    je          00567261
 0056725A    push        ebp
 0056725B    call        ClipRegionCreate
 00567260    pop         ecx
 00567261    mov         eax,dword ptr [ebp-8]
 00567264    mov         edx,dword ptr [eax]
 00567266    call        dword ptr [edx+50]
 00567269    mov         eax,dword ptr [ebp+8]
 0056726C    mov         eax,dword ptr [eax-4]
 0056726F    cmp         byte ptr [eax+2F9],0
>00567276    je          0056727F
 00567278    push        ebp
 00567279    call        ClipRegionDone
 0056727E    pop         ecx
 0056727F    push        ebp
 00567280    mov         eax,dword ptr [ebp-8]
 00567283    call        DrawMarksSeries
 00567288    pop         ecx
 00567289    mov         eax,dword ptr [ebp-8]
 0056728C    mov         edx,dword ptr [eax]
 0056728E    call        dword ptr [edx+44]
 00567291    pop         edi
 00567292    pop         esi
 00567293    pop         ebx
 00567294    mov         esp,ebp
 00567296    pop         ebp
 00567297    ret
*}
end;

//00567298
procedure SetSeriesZOrder;
begin
{*
 00567298    push        ebp
 00567299    mov         ebp,esp
 0056729B    push        ebx
 0056729C    push        esi
 0056729D    push        edi
 0056729E    mov         eax,dword ptr [ebp+8]
 005672A1    mov         eax,dword ptr [eax-4]
 005672A4    xor         edx,edx
 005672A6    mov         dword ptr [eax+334],edx
 005672AC    mov         eax,dword ptr [ebp+8]
 005672AF    mov         eax,dword ptr [eax-4]
 005672B2    cmp         byte ptr [eax+224],0
>005672B9    je          00567310
 005672BB    mov         eax,dword ptr [ebp+8]
 005672BE    mov         eax,dword ptr [eax-4]
 005672C1    cmp         byte ptr [eax+270],0
>005672C8    je          00567310
 005672CA    mov         eax,dword ptr [ebp+8]
 005672CD    mov         eax,dword ptr [eax-4]
 005672D0    mov         dword ptr [eax+334],0FFFFFFFF
 005672DA    mov         eax,dword ptr [ebp+8]
 005672DD    mov         eax,dword ptr [eax-4]
 005672E0    mov         eax,dword ptr [eax+2E0]
 005672E6    mov         ebx,dword ptr [eax+8]
 005672E9    dec         ebx
 005672EA    test        ebx,ebx
>005672EC    jl          00567310
 005672EE    inc         ebx
 005672EF    xor         edi,edi
 005672F1    mov         eax,dword ptr [ebp+8]
 005672F4    mov         eax,dword ptr [eax-4]
 005672F7    mov         edx,edi
 005672F9    call        TCustomAxisPanel.GetSeries
 005672FE    cmp         byte ptr [eax+30],0
>00567302    je          0056730C
 00567304    mov         edx,dword ptr [eax]
 00567306    call        dword ptr [edx+114]
 0056730C    inc         edi
 0056730D    dec         ebx
>0056730E    jne         005672F1
 00567310    mov         eax,dword ptr [ebp+8]
 00567313    mov         eax,dword ptr [eax-4]
 00567316    mov         eax,dword ptr [eax+2E0]
 0056731C    mov         ebx,dword ptr [eax+8]
 0056731F    dec         ebx
 00567320    test        ebx,ebx
>00567322    jl          00567383
 00567324    inc         ebx
 00567325    xor         edi,edi
 00567327    mov         eax,dword ptr [ebp+8]
 0056732A    mov         eax,dword ptr [eax-4]
 0056732D    mov         edx,edi
 0056732F    call        TCustomAxisPanel.GetSeries
 00567334    mov         esi,eax
 00567336    cmp         byte ptr [esi+30],0
>0056733A    je          0056737F
 0056733C    mov         eax,dword ptr [ebp+8]
 0056733F    mov         eax,dword ptr [eax-4]
 00567342    cmp         byte ptr [eax+270],0
>00567349    je          00567377
 0056734B    mov         eax,dword ptr [ebp+8]
 0056734E    mov         eax,dword ptr [eax-4]
 00567351    cmp         byte ptr [eax+224],0
>00567358    je          00567377
 0056735A    mov         eax,esi
 0056735C    call        TChartSeries.GetZOrder
 00567361    mov         edx,dword ptr [ebp+8]
 00567364    mov         edx,dword ptr [edx-4]
 00567367    mov         edx,dword ptr [edx+334]
 0056736D    sub         edx,eax
 0056736F    mov         dword ptr [esi+0F4],edx
>00567375    jmp         0056737F
 00567377    xor         eax,eax
 00567379    mov         dword ptr [esi+0F4],eax
 0056737F    inc         edi
 00567380    dec         ebx
>00567381    jne         00567327
 00567383    pop         edi
 00567384    pop         esi
 00567385    pop         ebx
 00567386    pop         ebp
 00567387    ret
*}
end;

//00567388
procedure SetSeriesZPositions;
begin
{*
 00567388    push        ebp
 00567389    mov         ebp,esp
 0056738B    push        ebx
 0056738C    push        esi
 0056738D    mov         eax,dword ptr [ebp+8]
 00567390    mov         eax,dword ptr [eax-4]
 00567393    mov         eax,dword ptr [eax+2E0]
 00567399    mov         ebx,dword ptr [eax+8]
 0056739C    dec         ebx
 0056739D    test        ebx,ebx
>0056739F    jl          00567403
 005673A1    inc         ebx
 005673A2    xor         esi,esi
 005673A4    mov         eax,dword ptr [ebp+8]
 005673A7    mov         eax,dword ptr [eax-4]
 005673AA    mov         edx,esi
 005673AC    call        TCustomAxisPanel.GetSeries
 005673B1    cmp         byte ptr [eax+30],0
>005673B5    je          005673FF
 005673B7    mov         edx,dword ptr [ebp+8]
 005673BA    mov         edx,dword ptr [edx-4]
 005673BD    mov         edx,dword ptr [edx+338]
 005673C3    imul        edx,dword ptr [eax+0F4]
 005673CA    mov         dword ptr [eax+0FC],edx
 005673D0    mov         ecx,dword ptr [ebp+8]
 005673D3    mov         ecx,dword ptr [ecx-4]
 005673D6    mov         ecx,dword ptr [ecx+338]
 005673DC    add         ecx,edx
 005673DE    mov         dword ptr [eax+104],ecx
 005673E4    mov         edx,dword ptr [eax+0FC]
 005673EA    add         edx,ecx
 005673EC    sar         edx,1
>005673EE    jns         005673F3
 005673F0    adc         edx,0
 005673F3    mov         dword ptr [eax+100],edx
 005673F9    mov         ecx,dword ptr [eax+64]
 005673FC    mov         dword ptr [ecx+2C],edx
 005673FF    inc         esi
 00567400    dec         ebx
>00567401    jne         005673A4
 00567403    pop         esi
 00567404    pop         ebx
 00567405    pop         ebp
 00567406    ret
*}
end;

//00567408
procedure DrawAllAxis;
begin
{*
 00567408    push        ebp
 00567409    mov         ebp,esp
 0056740B    push        ecx
 0056740C    push        ebx
 0056740D    push        esi
 0056740E    push        edi
 0056740F    mov         eax,dword ptr [ebp+8]
 00567412    mov         eax,dword ptr [eax-4]
 00567415    cmp         word ptr [eax+31A],0
>0056741D    je          00567437
 0056741F    mov         eax,dword ptr [ebp+8]
 00567422    mov         ebx,dword ptr [eax-4]
 00567425    mov         eax,dword ptr [ebp+8]
 00567428    mov         edx,dword ptr [eax-4]
 0056742B    mov         eax,dword ptr [ebx+31C]
 00567431    call        dword ptr [ebx+318]
 00567437    mov         eax,dword ptr [ebp+8]
 0056743A    mov         eax,dword ptr [eax-4]
 0056743D    mov         eax,dword ptr [eax+340]
 00567443    mov         dword ptr [ebp-4],eax
 00567446    mov         eax,dword ptr [ebp-4]
 00567449    mov         esi,dword ptr [eax+8]
 0056744C    dec         esi
 0056744D    test        esi,esi
>0056744F    jl          0056747E
 00567451    inc         esi
 00567452    xor         edi,edi
 00567454    mov         edx,edi
 00567456    mov         eax,dword ptr [ebp-4]
 00567459    call        TList.Get
 0056745E    mov         ebx,eax
 00567460    mov         eax,dword ptr [ebp+8]
 00567463    mov         eax,dword ptr [eax-4]
 00567466    mov         edx,ebx
 00567468    call        TCustomAxisPanel.IsAxisVisible
 0056746D    test        al,al
>0056746F    je          0056747A
 00567471    mov         dl,1
 00567473    mov         eax,ebx
 00567475    call        TCustomChartAxis.Draw
 0056747A    inc         edi
 0056747B    dec         esi
>0056747C    jne         00567454
 0056747E    pop         edi
 0056747F    pop         esi
 00567480    pop         ebx
 00567481    pop         ecx
 00567482    pop         ebp
 00567483    ret
*}
end;

//00567484
procedure TCustomAxisPanel.InternalDraw(const UserRectangle:TRect);
begin
{*
 00567484    push        ebp
 00567485    mov         ebp,esp
 00567487    add         esp,0FFFFFFEC
 0056748A    push        ebx
 0056748B    push        esi
 0056748C    push        edi
 0056748D    mov         dword ptr [ebp-4],eax
 00567490    mov         eax,dword ptr [ebp-4]
 00567493    mov         ecx,dword ptr [eax]
 00567495    call        dword ptr [ecx+0E8]
 0056749B    mov         eax,dword ptr [ebp-4]
 0056749E    mov         eax,dword ptr [eax+2E0]
 005674A4    mov         ebx,dword ptr [eax+8]
 005674A7    dec         ebx
 005674A8    test        ebx,ebx
>005674AA    jl          005674C8
 005674AC    inc         ebx
 005674AD    xor         esi,esi
 005674AF    mov         edx,esi
 005674B1    mov         eax,dword ptr [ebp-4]
 005674B4    call        TCustomAxisPanel.GetSeries
 005674B9    cmp         byte ptr [eax+30],0
>005674BD    je          005674C4
 005674BF    mov         edx,dword ptr [eax]
 005674C1    call        dword ptr [edx+48]
 005674C4    inc         esi
 005674C5    dec         ebx
>005674C6    jne         005674AF
 005674C8    mov         eax,dword ptr [ebp-4]
 005674CB    mov         edx,dword ptr [eax]
 005674CD    call        dword ptr [edx+0F8]
 005674D3    push        ebp
 005674D4    call        SetSeriesZOrder
 005674D9    pop         ecx
 005674DA    mov         eax,dword ptr [ebp-4]
 005674DD    mov         edx,dword ptr [eax]
 005674DF    call        dword ptr [edx+0EC]
 005674E5    push        ebp
 005674E6    call        SetSeriesZPositions
 005674EB    pop         ecx
 005674EC    mov         eax,dword ptr [ebp-4]
 005674EF    mov         edx,dword ptr [eax]
 005674F1    call        dword ptr [edx+0F0]
 005674F7    mov         eax,dword ptr [ebp-4]
 005674FA    add         eax,286
 005674FF    push        eax
 00567500    mov         eax,dword ptr [ebp-4]
 00567503    lea         ecx,[eax+225]
 00567509    mov         eax,dword ptr [ebp-4]
 0056750C    mov         edx,dword ptr [eax+278]
 00567512    mov         eax,dword ptr [ebp-4]
 00567515    mov         eax,dword ptr [eax+280]
 0056751B    mov         ebx,dword ptr [eax]
 0056751D    call        dword ptr [ebx+0B0]
 00567523    mov         eax,dword ptr [ebp-4]
 00567526    mov         eax,dword ptr [eax+280]
 0056752C    mov         edx,dword ptr [eax]
 0056752E    call        dword ptr [edx+98]
 00567534    test        al,al
>00567536    je          00567579
 00567538    mov         eax,dword ptr [ebp-4]
 0056753B    lea         esi,[eax+286]
 00567541    lea         edi,[ebp-14]
 00567544    movs        dword ptr [edi],dword ptr [esi]
 00567545    movs        dword ptr [edi],dword ptr [esi]
 00567546    movs        dword ptr [edi],dword ptr [esi]
 00567547    movs        dword ptr [edi],dword ptr [esi]
 00567548    mov         eax,dword ptr [ebp-4]
 0056754B    mov         edx,dword ptr [ebp-4]
 0056754E    lea         esi,[eax+225]
 00567554    lea         edi,[edx+286]
 0056755A    movs        dword ptr [edi],dword ptr [esi]
 0056755B    movs        dword ptr [edi],dword ptr [esi]
 0056755C    movs        dword ptr [edi],dword ptr [esi]
 0056755D    movs        dword ptr [edi],dword ptr [esi]
 0056755E    mov         eax,dword ptr [ebp-4]
 00567561    mov         edx,dword ptr [eax]
 00567563    call        dword ptr [edx+0F8]
 00567569    mov         eax,dword ptr [ebp-4]
 0056756C    lea         edi,[eax+286]
 00567572    lea         esi,[ebp-14]
 00567575    movs        dword ptr [edi],dword ptr [esi]
 00567576    movs        dword ptr [edi],dword ptr [esi]
 00567577    movs        dword ptr [edi],dword ptr [esi]
 00567578    movs        dword ptr [edi],dword ptr [esi]
 00567579    mov         eax,dword ptr [ebp-4]
 0056757C    mov         edx,dword ptr [eax]
 0056757E    call        dword ptr [edx+0FC]
 00567584    mov         eax,dword ptr [ebp-4]
 00567587    cmp         byte ptr [eax+2FA],0
>0056758E    je          005675A0
 00567590    cmp         byte ptr ds:[6E37F0],0
>00567597    je          005675A0
 00567599    push        ebp
 0056759A    call        DrawAllAxis
 0056759F    pop         ecx
 005675A0    mov         eax,dword ptr [ebp-4]
 005675A3    cmp         word ptr [eax+322],0
>005675AB    je          005675BF
 005675AD    mov         ebx,dword ptr [ebp-4]
 005675B0    mov         edx,dword ptr [ebp-4]
 005675B3    mov         eax,dword ptr [ebx+324]
 005675B9    call        dword ptr [ebx+320]
 005675BF    mov         eax,dword ptr [ebp-4]
 005675C2    mov         eax,dword ptr [eax+2E0]
 005675C8    mov         ebx,dword ptr [eax+8]
 005675CB    dec         ebx
 005675CC    test        ebx,ebx
>005675CE    jl          005675F8
 005675D0    inc         ebx
 005675D1    xor         esi,esi
 005675D3    mov         edx,esi
 005675D5    mov         eax,dword ptr [ebp-4]
 005675D8    call        TCustomAxisPanel.GetSeries
 005675DD    cmp         byte ptr [eax+30],0
>005675E1    je          005675F4
 005675E3    push        ebp
 005675E4    mov         edx,esi
 005675E6    mov         eax,dword ptr [ebp-4]
 005675E9    call        TCustomAxisPanel.GetSeries
 005675EE    call        DrawSeries
 005675F3    pop         ecx
 005675F4    inc         esi
 005675F5    dec         ebx
>005675F6    jne         005675D3
 005675F8    mov         eax,dword ptr [ebp-4]
 005675FB    cmp         byte ptr [eax+2FA],0
>00567602    je          00567614
 00567604    cmp         byte ptr ds:[6E37F0],0
>0056760B    jne         00567614
 0056760D    push        ebp
 0056760E    call        DrawAllAxis
 00567613    pop         ecx
 00567614    mov         eax,dword ptr [ebp-4]
 00567617    mov         eax,dword ptr [eax+27C]
 0056761D    cmp         byte ptr [eax+4],0
>00567621    je          0056762B
 00567623    mov         eax,dword ptr [ebp-4]
 00567626    call        TCustomTeePanel.DrawZoomRectangle
 0056762B    mov         eax,dword ptr [ebp-4]
 0056762E    mov         eax,dword ptr [eax+280]
 00567634    call        TTeeCanvas.ResetState
 00567639    mov         eax,dword ptr [ebp-4]
 0056763C    cmp         word ptr [eax+2C2],0
>00567644    je          00567658
 00567646    mov         ebx,dword ptr [ebp-4]
 00567649    mov         edx,dword ptr [ebp-4]
 0056764C    mov         eax,dword ptr [ebx+2C4]
 00567652    call        dword ptr [ebx+2C0]
 00567658    pop         edi
 00567659    pop         esi
 0056765A    pop         ebx
 0056765B    mov         esp,ebp
 0056765D    pop         ebp
 0056765E    ret
*}
end;

//00567660
procedure TCustomAxisPanel.SetView3DWalls(Value:Boolean);
begin
{*
 00567660    lea         ecx,[eax+2F8]
 00567666    xchg        ecx,edx
 00567668    call        TCustomTeePanel.SetBooleanProperty
 0056766D    ret
*}
end;

//00567670
procedure TCustomAxisPanel.GetChildren(Proc:TGetChildProc; Root:TComponent);
begin
{*
 00567670    push        ebp
 00567671    mov         ebp,esp
 00567673    push        ecx
 00567674    push        ebx
 00567675    push        esi
 00567676    mov         dword ptr [ebp-4],eax
 00567679    push        dword ptr [ebp+0C]
 0056767C    push        dword ptr [ebp+8]
 0056767F    mov         eax,dword ptr [ebp-4]
 00567682    call        TWinControl.GetChildren
 00567687    mov         eax,dword ptr [ebp-4]
 0056768A    mov         eax,dword ptr [eax+2E0]
 00567690    mov         ebx,dword ptr [eax+8]
 00567693    dec         ebx
 00567694    test        ebx,ebx
>00567696    jl          005676B7
 00567698    inc         ebx
 00567699    xor         esi,esi
 0056769B    mov         eax,dword ptr [ebp-4]
 0056769E    mov         eax,dword ptr [eax+2E0]
 005676A4    mov         edx,esi
 005676A6    call        TChartSeriesList.GetSeries
 005676AB    mov         edx,eax
 005676AD    mov         eax,dword ptr [ebp+0C]
 005676B0    call        dword ptr [ebp+8]
 005676B3    inc         esi
 005676B4    dec         ebx
>005676B5    jne         0056769B
 005676B7    pop         esi
 005676B8    pop         ebx
 005676B9    pop         ecx
 005676BA    pop         ebp
 005676BB    ret         8
*}
end;

//005676C0
procedure TCustomAxisPanel.sub_005676C0;
begin
{*
 005676C0    ret
*}
end;

//005676C4
procedure TCustomAxisPanel.SetClipPoints(Value:Boolean);
begin
{*
 005676C4    lea         ecx,[eax+2F9]
 005676CA    xchg        ecx,edx
 005676CC    call        TCustomTeePanel.SetBooleanProperty
 005676D1    ret
*}
end;

//005676D4
procedure TCustomAxisPanel.SetLeftAxis(Value:TChartAxis);
begin
{*
 005676D4    mov         eax,dword ptr [eax+2F0]
 005676DA    mov         ecx,dword ptr [eax]
 005676DC    call        dword ptr [ecx+8]
 005676DF    ret
*}
end;

//005676E0
procedure TCustomAxisPanel.SetDepthAxis(Value:TChartDepthAxis);
begin
{*
 005676E0    mov         eax,dword ptr [eax+2E4]
 005676E6    mov         ecx,dword ptr [eax]
 005676E8    call        dword ptr [ecx+8]
 005676EB    ret
*}
end;

//005676EC
procedure TCustomAxisPanel.SetRightAxis(Value:TChartAxis);
begin
{*
 005676EC    mov         eax,dword ptr [eax+2F4]
 005676F2    mov         ecx,dword ptr [eax]
 005676F4    call        dword ptr [ecx+8]
 005676F7    ret
*}
end;

//005676F8
procedure TCustomAxisPanel.SetTopAxis(Value:TChartAxis);
begin
{*
 005676F8    mov         eax,dword ptr [eax+2E8]
 005676FE    mov         ecx,dword ptr [eax]
 00567700    call        dword ptr [ecx+8]
 00567703    ret
*}
end;

//00567704
procedure TCustomAxisPanel.SetBottomAxis(Value:TChartAxis);
begin
{*
 00567704    mov         eax,dword ptr [eax+2EC]
 0056770A    mov         ecx,dword ptr [eax]
 0056770C    call        dword ptr [ecx+8]
 0056770F    ret
*}
end;

//00567710
procedure TCustomAxisPanel.RemoveSeries(ASeries:TChartSeries);
begin
{*
 00567710    push        ebx
 00567711    push        esi
 00567712    push        edi
 00567713    mov         ebx,edx
 00567715    mov         esi,eax
 00567717    mov         edx,ebx
 00567719    mov         eax,dword ptr [esi+2E0]
 0056771F    call        TList.IndexOf
 00567724    mov         edi,eax
 00567726    cmp         edi,0FFFFFFFF
>00567729    je          00567763
 0056772B    mov         eax,ebx
 0056772D    call        TChartSeries.RemoveAllLinkedSeries
 00567732    xor         eax,eax
 00567734    mov         dword ptr [ebx+68],eax
 00567737    mov         ax,word ptr [esi+78]
 0056773B    cmp         ax,word ptr [ebx+44]
>0056773F    jne         0056774F
 00567741    mov         dx,word ptr [esi+260]
 00567748    mov         eax,esi
 0056774A    call        TControl.SetCursor
 0056774F    mov         edx,edi
 00567751    mov         eax,dword ptr [esi+2E0]
 00567757    call        TList.Delete
 0056775C    mov         eax,esi
 0056775E    mov         edx,dword ptr [eax]
 00567760    call        dword ptr [edx+7C]
 00567763    pop         edi
 00567764    pop         esi
 00567765    pop         ebx
 00567766    ret
*}
end;

//00567768
function TCustomAxisPanel.GetAxisSeries(Axis:TCustomChartAxis):TChartSeries;
begin
{*
 00567768    push        ebx
 00567769    push        esi
 0056776A    push        edi
 0056776B    push        ebp
 0056776C    push        ecx
 0056776D    mov         ebp,edx
 0056776F    mov         esi,eax
 00567771    mov         eax,dword ptr [esi+2E0]
 00567777    mov         edi,dword ptr [eax+8]
 0056777A    dec         edi
 0056777B    test        edi,edi
>0056777D    jl          005677BC
 0056777F    inc         edi
 00567780    mov         dword ptr [esp],0
 00567787    mov         edx,dword ptr [esp]
 0056778A    mov         eax,esi
 0056778C    call        TCustomAxisPanel.GetSeries
 00567791    mov         ebx,eax
 00567793    cmp         byte ptr [ebx+30],0
>00567797    jne         005677A6
 00567799    mov         edx,ebp
 0056779B    mov         eax,esi
 0056779D    call        TCustomAxisPanel.NoActiveSeries
 005677A2    test        al,al
>005677A4    je          005677B6
 005677A6    mov         edx,ebp
 005677A8    mov         eax,ebx
 005677AA    mov         ecx,dword ptr [eax]
 005677AC    call        dword ptr [ecx+94]
 005677B2    test        al,al
>005677B4    jne         005677BE
 005677B6    inc         dword ptr [esp]
 005677B9    dec         edi
>005677BA    jne         00567787
 005677BC    xor         ebx,ebx
 005677BE    mov         eax,ebx
 005677C0    pop         edx
 005677C1    pop         ebp
 005677C2    pop         edi
 005677C3    pop         esi
 005677C4    pop         ebx
 005677C5    ret
*}
end;

//005677C8
procedure sub_005677C8;
begin
{*
 005677C8    push        ebp
 005677C9    mov         ebp,esp
 005677CB    pop         ebp
 005677CC    ret         4
*}
end;

//005677D0
function TCustomAxisPanel.GetFreeSeriesColor(CheckBackground:Boolean):TColor;
begin
{*
 005677D0    push        ebx
 005677D1    push        esi
 005677D2    push        edi
 005677D3    push        ebp
 005677D4    push        ecx
 005677D5    mov         byte ptr [esp],dl
 005677D8    mov         edi,eax
 005677DA    xor         ebx,ebx
 005677DC    mov         eax,ebx
 005677DE    call        GetDefaultColor
 005677E3    mov         esi,eax
 005677E5    inc         ebx
 005677E6    cmp         ebx,10
>005677E9    jg          005677FE
 005677EB    mov         cl,byte ptr [esp]
 005677EE    mov         edx,esi
 005677F0    mov         eax,edi
 005677F2    mov         ebp,dword ptr [eax]
 005677F4    call        dword ptr [ebp+10C]
 005677FA    test        al,al
>005677FC    je          005677DC
 005677FE    mov         eax,esi
 00567800    pop         edx
 00567801    pop         ebp
 00567802    pop         edi
 00567803    pop         esi
 00567804    pop         ebx
 00567805    ret
*}
end;

//00567808
procedure TCustomAxisPanel.InternalAddSeries(ASeries:TChartSeries);
begin
{*
 00567808    push        ebx
 00567809    push        esi
 0056780A    mov         ebx,edx
 0056780C    mov         esi,eax
 0056780E    mov         edx,ebx
 00567810    mov         eax,dword ptr [esi+2E0]
 00567816    call        TList.IndexOf
 0056781B    inc         eax
>0056781C    jne         00567881
 0056781E    cmp         dword ptr [ebx+34],20000000
>00567825    jne         0056783C
 00567827    mov         dl,1
 00567829    mov         eax,esi
 0056782B    call        TCustomAxisPanel.GetFreeSeriesColor
 00567830    mov         edx,eax
 00567832    mov         eax,ebx
 00567834    mov         ecx,dword ptr [eax]
 00567836    call        dword ptr [ecx+80]
 0056783C    mov         dword ptr [ebx+68],esi
 0056783F    test        byte ptr [ebx+1C],10
>00567843    je          00567866
 00567845    cmp         dword ptr [ebx+0A4],0
>0056784C    jne         00567866
 0056784E    mov         eax,ebx
 00567850    mov         edx,dword ptr [eax]
 00567852    call        dword ptr [edx+0D8]
 00567858    mov         edx,eax
 0056785A    mov         eax,ebx
 0056785C    mov         ecx,dword ptr [eax]
 0056785E    call        dword ptr [ecx+0A4]
>00567864    jmp         0056786D
 00567866    mov         eax,ebx
 00567868    call        TChartSeries.CheckDataSource
 0056786D    mov         edx,ebx
 0056786F    mov         eax,dword ptr [esi+2E0]
 00567875    call        TList.Add
 0056787A    mov         eax,esi
 0056787C    mov         edx,dword ptr [eax]
 0056787E    call        dword ptr [edx+7C]
 00567881    pop         esi
 00567882    pop         ebx
 00567883    ret
*}
end;

//00567884
function TCustomAxisPanel.GetMaxValuesCount:Integer;
begin
{*
 00567884    push        ebx
 00567885    push        esi
 00567886    push        edi
 00567887    push        ebp
 00567888    add         esp,0FFFFFFF8
 0056788B    mov         dword ptr [esp],eax
 0056788E    xor         ebp,ebp
 00567890    mov         byte ptr [esp+4],1
 00567895    mov         eax,dword ptr [esp]
 00567898    mov         eax,dword ptr [eax+2E0]
 0056789E    mov         esi,dword ptr [eax+8]
 005678A1    dec         esi
 005678A2    test        esi,esi
>005678A4    jl          005678DF
 005678A6    inc         esi
 005678A7    xor         edi,edi
 005678A9    mov         edx,edi
 005678AB    mov         eax,dword ptr [esp]
 005678AE    call        TCustomAxisPanel.GetSeries
 005678B3    mov         ebx,eax
 005678B5    cmp         byte ptr [ebx+30],0
>005678B9    je          005678DB
 005678BB    cmp         byte ptr [esp+4],0
>005678C0    jne         005678CD
 005678C2    mov         eax,ebx
 005678C4    call        TChartSeries.Count
 005678C9    cmp         ebp,eax
>005678CB    jge         005678DB
 005678CD    mov         eax,ebx
 005678CF    call        TChartSeries.Count
 005678D4    mov         ebp,eax
 005678D6    mov         byte ptr [esp+4],0
 005678DB    inc         edi
 005678DC    dec         esi
>005678DD    jne         005678A9
 005678DF    mov         eax,ebp
 005678E1    pop         ecx
 005678E2    pop         edx
 005678E3    pop         ebp
 005678E4    pop         edi
 005678E5    pop         esi
 005678E6    pop         ebx
 005678E7    ret
*}
end;

//005678E8
procedure TCustomAxisPanel.SetAxisVisible(Value:Boolean);
begin
{*
 005678E8    lea         ecx,[eax+2FA]
 005678EE    xchg        ecx,edx
 005678F0    call        TCustomTeePanel.SetBooleanProperty
 005678F5    ret
*}
end;

//005678F8
procedure TCustomAxisPanel.CheckOtherSeries(Dest:TChartSeries; Source:TChartSeries);
begin
{*
 005678F8    push        ebp
 005678F9    mov         ebp,esp
 005678FB    add         esp,0FFFFFFF4
 005678FE    push        ebx
 005678FF    push        esi
 00567900    push        edi
 00567901    xor         ebx,ebx
 00567903    mov         dword ptr [ebp-0C],ebx
 00567906    mov         ebx,ecx
 00567908    mov         dword ptr [ebp-4],edx
 0056790B    mov         esi,eax
 0056790D    xor         eax,eax
 0056790F    push        ebp
 00567910    push        5679AA
 00567915    push        dword ptr fs:[eax]
 00567918    mov         dword ptr fs:[eax],esp
 0056791B    test        ebx,ebx
>0056791D    je          00567994
 0056791F    mov         eax,ebx
 00567921    call        TChartSeries.GetDataSource
 00567926    cmp         eax,dword ptr [ebp-4]
>00567929    jne         0056794E
 0056792B    lea         edx,[ebp-0C]
 0056792E    mov         eax,[006E9D1C]
 00567933    call        LoadResString
 00567938    mov         ecx,dword ptr [ebp-0C]
 0056793B    mov         dl,1
 0056793D    mov         eax,[00567B78];ChartException
 00567942    call        Exception.Create
 00567947    call        @RaiseExcept
>0056794C    jmp         00567994
 0056794E    mov         eax,ebx
 00567950    call        TChartSeries.GetDataSource
 00567955    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 0056795B    call        @IsClass
 00567960    test        al,al
>00567962    je          00567994
 00567964    mov         eax,dword ptr [ebx+48]
 00567967    mov         edi,dword ptr [eax+8]
 0056796A    dec         edi
 0056796B    test        edi,edi
>0056796D    jl          00567994
 0056796F    inc         edi
 00567970    mov         dword ptr [ebp-8],0
 00567977    mov         edx,dword ptr [ebp-8]
 0056797A    mov         eax,dword ptr [ebx+48]
 0056797D    call        TList.Get
 00567982    mov         ecx,eax
 00567984    mov         edx,dword ptr [ebp-4]
 00567987    mov         eax,esi
 00567989    call        TCustomAxisPanel.CheckOtherSeries
 0056798E    inc         dword ptr [ebp-8]
 00567991    dec         edi
>00567992    jne         00567977
 00567994    xor         eax,eax
 00567996    pop         edx
 00567997    pop         ecx
 00567998    pop         ecx
 00567999    mov         dword ptr fs:[eax],edx
 0056799C    push        5679B1
 005679A1    lea         eax,[ebp-0C]
 005679A4    call        @LStrClr
 005679A9    ret
>005679AA    jmp         @HandleFinally
>005679AF    jmp         005679A1
 005679B1    pop         edi
 005679B2    pop         esi
 005679B3    pop         ebx
 005679B4    mov         esp,ebp
 005679B6    pop         ebp
 005679B7    ret
*}
end;

//005679B8
function TCustomAxisPanel.IsValidDataSource(ASeries:TChartSeries; AComponent:TComponent):Boolean;
begin
{*
 005679B8    push        ebx
 005679B9    push        esi
 005679BA    mov         ebx,ecx
 005679BC    mov         esi,edx
 005679BE    cmp         ebx,esi
>005679C0    je          005679E3
 005679C2    mov         eax,ebx
 005679C4    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 005679CA    call        @IsClass
 005679CF    test        al,al
>005679D1    je          005679E3
 005679D3    mov         edx,ebx
 005679D5    mov         eax,esi
 005679D7    mov         ecx,dword ptr [eax]
 005679D9    call        dword ptr [ecx+0B0]
 005679DF    test        al,al
>005679E1    jne         005679E8
 005679E3    xor         eax,eax
 005679E5    pop         esi
 005679E6    pop         ebx
 005679E7    ret
 005679E8    mov         al,1
 005679EA    pop         esi
 005679EB    pop         ebx
 005679EC    ret
*}
end;

//005679F0
procedure TCustomAxisPanel.CheckDatasource(ASeries:TChartSeries);
begin
{*
 005679F0    push        ebx
 005679F1    mov         ebx,edx
 005679F3    test        byte ptr [ebx+1C],1
>005679F7    jne         00567A2A
 005679F9    mov         eax,ebx
 005679FB    call        TChartSeries.GetDataSource
 00567A00    test        eax,eax
>00567A02    je          00567A2A
 00567A04    mov         eax,ebx
 00567A06    call        TChartSeries.GetDataSource
 00567A0B    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 00567A11    call        @IsClass
 00567A16    test        al,al
>00567A18    je          00567A2A
 00567A1A    mov         eax,ebx
 00567A1C    call        TChartSeries.GetDataSource
 00567A21    mov         edx,eax
 00567A23    mov         eax,ebx
 00567A25    mov         ecx,dword ptr [eax]
 00567A27    call        dword ptr [ecx+38]
 00567A2A    pop         ebx
 00567A2B    ret
*}
end;

//00567A2C
function TCustomAxisPanel.SeriesCount:Integer;
begin
{*
 00567A2C    mov         edx,dword ptr [eax+2E0]
 00567A32    test        edx,edx
>00567A34    jne         00567A39
 00567A36    xor         eax,eax
 00567A38    ret
 00567A39    mov         eax,dword ptr [edx+8]
 00567A3C    ret
*}
end;

//00567A40
procedure TCustomAxisPanel.Assign(Source:TPersistent);
begin
{*
 00567A40    push        ebx
 00567A41    push        esi
 00567A42    push        edi
 00567A43    mov         esi,edx
 00567A45    mov         ebx,eax
 00567A47    mov         eax,esi
 00567A49    mov         edx,dword ptr ds:[55D184];TCustomAxisPanel
 00567A4F    call        @IsClass
 00567A54    test        al,al
>00567A56    je          00567AFB
 00567A5C    mov         edi,esi
 00567A5E    mov         al,byte ptr [edi+2FA]
 00567A64    mov         byte ptr [ebx+2FA],al
 00567A6A    mov         edx,dword ptr [edi+2EC]
 00567A70    mov         eax,dword ptr [ebx+2EC]
 00567A76    mov         ecx,dword ptr [eax]
 00567A78    call        dword ptr [ecx+8]
 00567A7B    mov         al,byte ptr [edi+2F9]
 00567A81    mov         byte ptr [ebx+2F9],al
 00567A87    mov         edx,dword ptr [edi+2F0]
 00567A8D    mov         eax,dword ptr [ebx+2F0]
 00567A93    mov         ecx,dword ptr [eax]
 00567A95    call        dword ptr [ecx+8]
 00567A98    mov         edx,dword ptr [edi+2E4]
 00567A9E    mov         eax,dword ptr [ebx+2E4]
 00567AA4    mov         ecx,dword ptr [eax]
 00567AA6    call        dword ptr [ecx+8]
 00567AA9    mov         eax,dword ptr [edi+32C]
 00567AAF    mov         dword ptr [ebx+32C],eax
 00567AB5    mov         eax,dword ptr [edi+328]
 00567ABB    mov         dword ptr [ebx+328],eax
 00567AC1    mov         edx,dword ptr [edi+2F4]
 00567AC7    mov         eax,dword ptr [ebx+2F4]
 00567ACD    mov         ecx,dword ptr [eax]
 00567ACF    call        dword ptr [ecx+8]
 00567AD2    mov         al,byte ptr [edi+330]
 00567AD8    mov         byte ptr [ebx+330],al
 00567ADE    mov         edx,dword ptr [edi+2E8]
 00567AE4    mov         eax,dword ptr [ebx+2E8]
 00567AEA    mov         ecx,dword ptr [eax]
 00567AEC    call        dword ptr [ecx+8]
 00567AEF    mov         al,byte ptr [edi+2F8]
 00567AF5    mov         byte ptr [ebx+2F8],al
 00567AFB    mov         edx,esi
 00567AFD    mov         eax,ebx
 00567AFF    call        TCustomTeePanelExtended.Assign
 00567B04    pop         edi
 00567B05    pop         esi
 00567B06    pop         ebx
 00567B07    ret
*}
end;

//00567B08
procedure Finalization;
begin
{*
 00567B08    push        ebp
 00567B09    mov         ebp,esp
 00567B0B    xor         eax,eax
 00567B0D    push        ebp
 00567B0E    push        567B2D
 00567B13    push        dword ptr fs:[eax]
 00567B16    mov         dword ptr fs:[eax],esp
 00567B19    inc         dword ptr ds:[6ECC8C]
 00567B1F    xor         eax,eax
 00567B21    pop         edx
 00567B22    pop         ecx
 00567B23    pop         ecx
 00567B24    mov         dword ptr fs:[eax],edx
 00567B27    push        567B34
 00567B2C    ret
>00567B2D    jmp         @HandleFinally
>00567B32    jmp         00567B2C
 00567B34    pop         ebp
 00567B35    ret
*}
end;

end.