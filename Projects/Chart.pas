//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Chart;

interface

uses
  SysUtils, Classes, Chart, TeCanvas;

type
  TChartAllowScrollEvent = procedure(Sender:TChartAxis; var AMin:Double; var AMax:Double; var AllowScroll:Boolean) of object;;
  TChartBrush = class(TBrush)
    constructor Create(OnChangeEvent:TNotifyEvent);//00557E94
    function HasBitmap:Boolean;//00557EE8
  end;
  TCustomChartWall = class(TPersistent)
  public
    FColor:TColor;//f4
    FBrush:TChartBrush;//f8
    FDark3D:Boolean;//fC
    FPen:TChartPen;//f10
    FSize:Integer;//f14
    FParentChart:TCustomChart;//f18
    DefaultColor:TColor;//f1C
    destructor Destroy; virtual;//00557F98
    procedure Assign(Source:TPersistent); virtual;//v8//00557FDC
    constructor Create(AOwner:TCustomChart);//00557F10
    function IsColorStored(Value:TColor):Boolean;//00557FD0
    function ApplyDark3D:Boolean;//00558030
    procedure SetBrush(Value:TChartBrush);//00558068
    procedure SetSize(Value:Integer);//00558074
    procedure SetColor(Value:TColor);//00558084
    procedure SetDark3D(Value:Boolean);//00558094
    procedure SetPen(Value:TChartPen);//0055A690
  end;
  TChartWall = class(TCustomChartWall)
  end;
  TLegendStyle = (lsAuto, lsSeries, lsValues, lsLastValues);
  TLegendAlignment = (laLeft, laRight, laTop, laBottom);
  LegendException = class(Exception)
  end;
  TOnGetLegendText = procedure(Sender:TCustomAxisPanel; LegendStyle:TLegendStyle; Index:Integer; var LegendText:String) of object;;
  TCustomChartLegend = class(TChartFontObject)
  public
    FAlignment:TLegendAlignment;//fC
    FBrush:TChartBrush;//f10
    FColor:TColor;//f14
    FColorWidth:Integer;//f18
    FDividingLines:TChartHiddenPen;//f1C
    FFirstValue:Integer;//f20
    FFrame:TChartPen;//f24
    FHorizMargin:Integer;//f28
    FInverted:Boolean;//f2C
    FLegendStyle:TLegendStyle;//f2D
    FMaxNumRows:Integer;//f30
    FRectLegend:TRect;//f34
    FResizeChart:Boolean;//f44
    FShadowColor:TColor;//f48
    FShadowSize:Integer;//f4C
    FTextStyle:TLegendTextStyle;//f50
    FTopLeftPos:Integer;//f54
    FVertMargin:Integer;//f58
    FVisible:Boolean;//f5C
    IColorWidth:Integer;//f60
    ILegendStyle:TLegendStyle;//f64
    NumCols:Integer;//f68
    NumRows:Integer;//f6C
    destructor Destroy; virtual;//0055A3D4
    procedure Assign(Source:TPersistent); virtual;//v8//0055A414
    function MaxLegendValues(YLegend:Integer; ItemHeight:Integer):Integer; virtual;//vC//0055A898
    procedure Draw; virtual;//v10//0055AF80
    procedure CMVisibleChanged; message CM_VISIBLECHANGED;//0055A4F4
    procedure CMColorChanged; message CM_COLORCHANGED;//0055A4FC
    procedure SetBrush(Value:TChartBrush);//005582F0
    constructor Create(AOwner:TCustomChart);//0055A2FC
    procedure SetVisible(Value:Boolean);//0055A4A0
    procedure SetInverted(Value:Boolean);//0055A4BC
    procedure SetAlignment(Value:TLegendAlignment);//0055A4D8
    procedure SetFrame(Value:TChartPen);//0055A4E8
    procedure SetTopLeftPos(Value:Integer);//0055A504
    procedure SetFirstValue(Value:Integer);//0055A57C
    procedure SetTextStyle(Value:TLegendTextStyle);//0055A5F0
    procedure SetMaxNumRows(Value:Integer);//0055A600
    procedure SetLegendStyle(Value:TLegendStyle);//0055A61C
    procedure SetHorizMargin(Value:Integer);//0055A638
    procedure SetVertMargin(Value:Integer);//0055A654
    function GetParentChart:TCustomChart;//0055A670
    procedure SetResizeChart(Value:Boolean);//0055A674
    procedure SetColor(Value:TColor);//0055A69C
    procedure SetColorWidth(Value:Integer);//0055A6B8
    procedure CalcLegendStyle;//0055A730
    function FormattedLegend(SeriesOrValueIndex:Integer):AnsiString;//0055A760
    procedure SetShadowColor(Value:TColor);//0055A7E0
    procedure SetShadowSize(Value:Integer);//0055A7FC
    procedure SetDividingLines(Value:TChartHiddenPen);//0055A818
    function TotalLegendItems:Integer;//0055A8F4
    function MaxLegendWidth(NumLegendValues:Integer):Integer;//0055A97C
    function GetColorRect(X1:Integer; Y0:Integer; Y1:Integer):TRect;//0055AA28
    function GetVertical:Boolean;//0055AA58
    function FormattedValue(ASeries:TChartSeries; ValueIndex:Integer):AnsiString;//0055B490
    function Clicked(x:Integer; y:Integer):Integer;//0055B584
  end;
  TChartLegend = class(TCustomChartLegend)
  end;
  TChartTitle = class(TChartFontObject)
  public
    AdjustFrame:Boolean;//fC
    Alignment:TAlignment;//fD
    Brush:TChartBrush;//f10
    Color:TColor;//f14
    Frame:TChartHiddenPen;//f18
    Text:TStrings;//f1C
    FTitleRect:TRect;//f20
    Visible:Boolean;//f30
    DefaultFontColor:TColor;//f34
    DefaultFontStyle:TFontStyles;//f38
    destructor Destroy; virtual;//0055826C
    procedure Assign(Source:TPersistent); virtual;//v8//00558170
    procedure SetBrush(Value:TChartBrush);//0055805C
    constructor Create(AOwner:TCustomChart);//005580A4
    function IsFontStored(Value:TFont):Boolean;//005581D0
    procedure SetText(Value:TStrings);//005582AC
    procedure SetVisible(Value:Boolean);//005582C0
    procedure SetAdjustFrame(Value:Boolean);//005582D0
    procedure SetAlignment(Value:TAlignment);//005582E0
    procedure SetColor(Value:TColor);//005582FC
    procedure SetFrame(Value:TChartHiddenPen);//0055830C
    function Clicked(x:Integer; y:Integer):Boolean;//00558318
    procedure Draw(OnTop:Boolean);//00558424
  end;
  TChartClick = procedure(Sender:TCustomChart; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer) of object;;
  TChartClickAxis = procedure(Sender:TCustomChart; Axis:TChartAxis; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer) of object;;
  TChartClickSeries = procedure(Sender:TCustomChart; Series:TChartSeries; ValueIndex:Integer; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer) of object;;
  TOnGetLegendPos = procedure(Sender:TCustomChart; Index:Integer; var X:Integer; var Y:Integer; var XColor:Integer) of object;;
  TOnGetLegendRect = procedure(Sender:TCustomChart; var Rect:TRect) of object;;
  TCustomChart = class(TCustomAxisPanel)
  public
    FBackImageInside:Boolean;//f348
    FBackWall:TChartWall;//f34C
    FBottomWall:TChartWall;//f350
    FFoot:TChartTitle;//f354
    FLeftWall:TChartWall;//f358
    FLegend:TChartLegend;//f35C
    FRestoredAxisScales:Boolean;//f360
    FSavedScales:TAllAxisSavedScales;//f361
    FTitle:TChartTitle;//f3B0
    FOnAllowScroll:TChartAllowScrollEvent;//f3B8
    FOnClickAxis:TChartClickAxis;//f3C0
    FOnClickBackGround:TChartClick;//f3C8
    FOnClickLegend:TChartClick;//f3D0
    FOnClickSeries:TChartClickSeries;//f3D8
    FOnGetLegendPos:TOnGetLegendPos;//f3E0
    FOnGetLegendRect:TOnGetLegendRect;//f3E8
    FOnGetLegendText:TOnGetLegendText;//f3F0
    IDEDesigner:IInterface;//f3F8
    destructor Destroy; virtual;//00558A2C
    procedure Assign(Source:TPersistent); virtual;//v8//0055A1AC
    constructor Create(AOwner:TComponent); virtual;//v2C//00558880
    procedure DrawImage(const R:TRect); virtual;//vE0//00558DFC
    procedure CalcAxisRect; virtual;//vEC//00559EF8
    procedure CalcSeriesRect; virtual;//vF0//0055A160
    function CalcWallSize(Axis:TCustomChartAxis):Integer; virtual;//vF4//00558E1C
    procedure DrawTitlesAndLegend; virtual;//vF8//00558D68
    procedure DrawWalls; virtual;//vFC//00558F08
    function FormattedValueLegend(ASeries:TChartSeries; ValueIndex:Integer):AnsiString; virtual;//v108//00558ABC
    function IsFreeSeriesColor(AColor:TColor; CheckBackground:Boolean):Boolean; virtual;//v10C//00558C98
    procedure CalcZoomPoints; virtual;//v114//00559D2C
    procedure v118; virtual;//v118//0055A248
    procedure FillValueSourceItems(ValueList:TChartValueList; Proc:TGetStrProc); virtual;//v11C//0055A250
    procedure UndoZoom; dynamic;//00559D00
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//00559DF0
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//00559A50
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//00559640
    procedure DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint); dynamic;//00559CC8
    procedure DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint); dynamic;//00559C90
    procedure DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint); dynamic;//00559BE4
    procedure SetTitle(Value:TChartTitle);//00558A94
    procedure SetBackImageInside(Value:Boolean);//00558AA0
    procedure SetFoot(Value:TChartTitle);//00558AB0
    function FormattedLegend(SeriesOrValueIndex:Integer):AnsiString;//00558AF4
    procedure SetLegend(Value:TChartLegend);//00558B34
    function SaveScales:TAllAxisSavedScales;//00558B70
    procedure RestoreScales(const Saved:TAllAxisSavedScales);//00558BF0
    procedure SetBackWall(Value:TChartWall);//00558C30
    function GetFrame:TChartPen;//00558C3C
    procedure SetFrame(Value:TChartPen);//00558C50
    function GetBackColor:TColor;//00558C60
    procedure SetBackColor(Value:TColor);//00558C6C
    procedure SetLeftWall(Value:TChartWall);//00558D10
    procedure SetBottomWall(Value:TChartWall);//00558D1C
    procedure DoZoom(const TopI:Double; const TopF:Double; const BotI:Double; const BotF:Double; const LefI:Double; const LefF:Double; const RigI:Double; const RigF:Double);//00559238
    procedure CalcClickedPart(Pos:TPoint; var Part:TChartClickedPart);//005593A0
    procedure ScrollVerticalAxes(Up:Boolean);//00559C0C
    function GetASeries:TChartSeries;//0055A2BC
  end;
  TChart = class(TCustomChart)
  end;
  TTeeSeriesType = class(TObject)
  public
    SeriesClass:TChartSeriesClass;//f4
    FunctionClass:TTeeFunctionClass;//f8
    Description:TeeGalleryString;//fC
    GalleryPage:TeeGalleryString;//f21
    NumGallerySeries:Integer;//f38
  end;
  TTeeSeriesTypes = class(TList)
    function GetSeriesType(Index:Integer):TTeeSeriesType;//0055B684
  end;
    procedure sub_00555F74;//00555F74
    function GetDefaultPattern(PatternIndex:Integer):TBrushStyle;//00557E80
    destructor Destroy;//00557F98
    procedure Assign(Source:TPersistent);//00557FDC
    procedure Assign(Source:TPersistent);//00558170
    destructor Destroy;//0055826C
    procedure DrawTitleLine(const St:AnsiString);//00558358
    constructor Create(AOwner:TComponent);//00558880
    destructor Destroy;//00558A2C
    function FormattedValueLegend(ASeries:TChartSeries; ValueIndex:Integer):AnsiString;//00558ABC
    procedure SaveAxisScales(Axis:TChartAxis; var tmp:TAxisSavedScales);//00558B44
    procedure RestoreAxisScales(Axis:TChartAxis; const tmp:TAxisSavedScales);//00558BB0
    function IsFreeSeriesColor(AColor:TColor; CheckBackground:Boolean):Boolean;//00558C98
    procedure DrawTitleFoot;//00558D28
    procedure DrawTitlesAndLegend;//00558D68
    procedure DrawImage(const R:TRect);//00558DFC
    function CalcWallSize(Axis:TCustomChartAxis):Integer;//00558E1C
    procedure PrepareWallCanvas(AWall:TChartWall);//00558E58
    procedure DrawWalls;//00558F08
    procedure ZoomAxis(AAxis:TChartAxis; const tmpA:Double; const tmpB:Double);//00559200
    function ClickedAxis(Axis:TCustomChartAxis):Boolean;//0055936C
    procedure CheckZoomPanning;//00559508
    procedure CheckBackground;//005595D4
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//00559640
    procedure ProcessPanning(Axis:TChartAxis; IniPos:Integer; EndPos:Integer);//00559840
    function CheckMouseSeries:Boolean;//005598D4
    procedure PanAxis(AxisHorizontal:Boolean; const Pos1:Integer; const Pos2:Integer);//0055999C
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//00559A50
    procedure DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint);//00559BE4
    procedure DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint);//00559C90
    procedure DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint);//00559CC8
    procedure UndoZoom;//00559D00
    procedure CalcZoomPoints;//00559D2C
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//00559DF0
    procedure CalcAxisRect;//00559EF8
    procedure CalcSeriesAxisRect(Axis:TChartAxis);//0055A050
    procedure CalcSeriesRect;//0055A160
    procedure Assign(Source:TPersistent);//0055A1AC
    procedure sub_0055A248;//0055A248
    procedure FillValueSourceItems(ValueList:TChartValueList; Proc:TGetStrProc);//0055A250
    destructor Destroy;//0055A3D4
    procedure Assign(Source:TPersistent);//0055A414
    procedure CMVisibleChanged;//0055A4F4
    procedure CMColorChanged;//0055A4FC
    function CalcMaxLegendValues(A:Integer; B:Integer; C:Integer):Integer;//0055A824
    function MaxLegendValues(YLegend:Integer; ItemHeight:Integer):Integer;//0055A898
    procedure DrawLegendItem(ItemIndex:Integer; ItemOrder:Integer);//0055AA6C
    procedure DrawLegendBackground;//0055ACFC
    procedure CalcHorizontalColsRows;//0055AEA0
    function CalcHorizMargin:Integer;//0055AF18
    function CalcVertMargin:Integer;//0055AF4C
    procedure Draw;//0055AF80
    function ClickedRow:Integer;//0055B52C
    procedure RegisterTeeSeriesFunction(ASeriesClass:TChartSeriesClass; AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);//0055B698
    procedure RegisterTeeSeries(ASeriesClass:TChartSeriesClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);//0055B784
    procedure RegisterTeeFunction(AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);//0055B79C
    procedure RegisterTeeBasicFunction(AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString);//0055B7B4
    procedure TeeGalleryExitProc;//0055B80C
    procedure Finalization;//0055B840

implementation

//00555F74
procedure sub_00555F74;
begin
{*
 00555F74    sub         dword ptr ds:[6ECC74],1
 00555F7B    ret
*}
end;

//00557E80
function GetDefaultPattern(PatternIndex:Integer):TBrushStyle;
begin
{*
 00557E80    mov         ecx,eax
 00557E82    mov         eax,ecx
 00557E84    mov         ecx,6
 00557E89    cdq
 00557E8A    idiv        eax,ecx
 00557E8C    inc         edx
 00557E8D    mov         al,byte ptr [edx+6E37E7]
 00557E93    ret
*}
end;

//00557E94
constructor TChartBrush.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 00557E94    push        ebp
 00557E95    mov         ebp,esp
 00557E97    push        ebx
 00557E98    push        esi
 00557E99    test        dl,dl
>00557E9B    je          00557EA5
 00557E9D    add         esp,0FFFFFFF0
 00557EA0    call        @ClassCreate
 00557EA5    mov         ebx,edx
 00557EA7    mov         esi,eax
 00557EA9    xor         edx,edx
 00557EAB    mov         eax,esi
 00557EAD    call        TBrush.Create
 00557EB2    mov         edx,20000000
 00557EB7    mov         eax,esi
 00557EB9    call        TBrush.SetColor
 00557EBE    mov         eax,dword ptr [ebp+8]
 00557EC1    mov         dword ptr [esi+8],eax
 00557EC4    mov         eax,dword ptr [ebp+0C]
 00557EC7    mov         dword ptr [esi+0C],eax
 00557ECA    mov         eax,esi
 00557ECC    test        bl,bl
>00557ECE    je          00557EDF
 00557ED0    call        @AfterConstruction
 00557ED5    pop         dword ptr fs:[0]
 00557EDC    add         esp,0C
 00557EDF    mov         eax,esi
 00557EE1    pop         esi
 00557EE2    pop         ebx
 00557EE3    pop         ebp
 00557EE4    ret         8
*}
end;

//00557EE8
function TChartBrush.HasBitmap:Boolean;
begin
{*
 00557EE8    push        ebx
 00557EE9    mov         ebx,eax
 00557EEB    mov         eax,ebx
 00557EED    call        TBrush.GetBitmap
 00557EF2    test        eax,eax
>00557EF4    je          00557F06
 00557EF6    mov         eax,ebx
 00557EF8    call        TBrush.GetBitmap
 00557EFD    mov         edx,dword ptr [eax]
 00557EFF    call        dword ptr [edx+1C]
 00557F02    test        al,al
>00557F04    je          00557F0A
 00557F06    xor         eax,eax
 00557F08    pop         ebx
 00557F09    ret
 00557F0A    mov         al,1
 00557F0C    pop         ebx
 00557F0D    ret
*}
end;

//00557F10
constructor TCustomChartWall.Create(AOwner:TCustomChart);
begin
{*
 00557F10    push        ebx
 00557F11    push        esi
 00557F12    push        edi
 00557F13    test        dl,dl
>00557F15    je          00557F1F
 00557F17    add         esp,0FFFFFFF0
 00557F1A    call        @ClassCreate
 00557F1F    mov         esi,ecx
 00557F21    mov         ebx,edx
 00557F23    mov         edi,eax
 00557F25    xor         edx,edx
 00557F27    mov         eax,edi
 00557F29    call        TObject.Create
 00557F2E    mov         dword ptr [edi+18],esi
 00557F31    mov         dword ptr [edi+4],20000000
 00557F38    mov         byte ptr [edi+0C],1
 00557F3C    mov         dword ptr [edi+1C],20000000
 00557F43    mov         eax,dword ptr [edi+18]
 00557F46    push        eax
 00557F47    mov         eax,dword ptr [eax]
 00557F49    mov         eax,dword ptr [eax+0CC]
 00557F4F    push        eax
 00557F50    mov         dl,1
 00557F52    mov         eax,[00555FDC];TChartBrush
 00557F57    call        TChartBrush.Create
 00557F5C    mov         dword ptr [edi+8],eax
 00557F5F    mov         eax,dword ptr [edi+18]
 00557F62    push        eax
 00557F63    mov         eax,dword ptr [eax]
 00557F65    mov         eax,dword ptr [eax+0CC]
 00557F6B    push        eax
 00557F6C    mov         dl,1
 00557F6E    mov         eax,[0056A388];TChartPen
 00557F73    call        TChartPen.Create
 00557F78    mov         dword ptr [edi+10],eax
 00557F7B    mov         eax,edi
 00557F7D    test        bl,bl
>00557F7F    je          00557F90
 00557F81    call        @AfterConstruction
 00557F86    pop         dword ptr fs:[0]
 00557F8D    add         esp,0C
 00557F90    mov         eax,edi
 00557F92    pop         edi
 00557F93    pop         esi
 00557F94    pop         ebx
 00557F95    ret
*}
end;

//00557F98
destructor TCustomChartWall.Destroy;
begin
{*
 00557F98    push        ebx
 00557F99    push        esi
 00557F9A    call        @BeforeDestruction
 00557F9F    mov         ebx,edx
 00557FA1    mov         esi,eax
 00557FA3    mov         eax,dword ptr [esi+10]
 00557FA6    call        TObject.Free
 00557FAB    mov         eax,dword ptr [esi+8]
 00557FAE    call        TObject.Free
 00557FB3    mov         edx,ebx
 00557FB5    and         dl,0FC
 00557FB8    mov         eax,esi
 00557FBA    call        TPersistent.Destroy
 00557FBF    test        bl,bl
>00557FC1    jle         00557FCA
 00557FC3    mov         eax,esi
 00557FC5    call        @ClassDestroy
 00557FCA    pop         esi
 00557FCB    pop         ebx
 00557FCC    ret
*}
end;

//00557FD0
function TCustomChartWall.IsColorStored(Value:TColor):Boolean;
begin
{*
 00557FD0    mov         edx,dword ptr [eax+4]
 00557FD3    cmp         edx,dword ptr [eax+1C]
 00557FD6    setne       al
 00557FD9    ret
*}
end;

//00557FDC
procedure TCustomChartWall.Assign(Source:TPersistent);
begin
{*
 00557FDC    push        ebx
 00557FDD    push        esi
 00557FDE    push        edi
 00557FDF    mov         esi,edx
 00557FE1    mov         ebx,eax
 00557FE3    mov         eax,esi
 00557FE5    mov         edx,dword ptr ds:[556118];TChartWall
 00557FEB    call        @IsClass
 00557FF0    test        al,al
>00557FF2    je          00558020
 00557FF4    mov         edi,esi
 00557FF6    mov         edx,dword ptr [edi+8]
 00557FF9    mov         eax,dword ptr [ebx+8]
 00557FFC    mov         ecx,dword ptr [eax]
 00557FFE    call        dword ptr [ecx+8]
 00558001    mov         eax,dword ptr [edi+4]
 00558004    mov         dword ptr [ebx+4],eax
 00558007    mov         al,byte ptr [edi+0C]
 0055800A    mov         byte ptr [ebx+0C],al
 0055800D    mov         edx,dword ptr [edi+10]
 00558010    mov         eax,dword ptr [ebx+10]
 00558013    mov         ecx,dword ptr [eax]
 00558015    call        dword ptr [ecx+8]
 00558018    mov         eax,dword ptr [edi+14]
 0055801B    mov         dword ptr [ebx+14],eax
>0055801E    jmp         00558029
 00558020    mov         edx,esi
 00558022    mov         eax,ebx
 00558024    call        TPersistent.Assign
 00558029    pop         edi
 0055802A    pop         esi
 0055802B    pop         ebx
 0055802C    ret
*}
end;

//00558030
function TCustomChartWall.ApplyDark3D:Boolean;
begin
{*
 00558030    push        ebx
 00558031    mov         ebx,eax
 00558033    mov         eax,dword ptr [ebx+8]
 00558036    call        TBrush.GetStyle
 0055803B    cmp         al,1
>0055803D    je          00558051
 0055803F    mov         eax,dword ptr [ebx+8]
 00558042    call        TChartBrush.HasBitmap
 00558047    test        al,al
>00558049    jne         00558051
 0055804B    cmp         byte ptr [ebx+0C],0
>0055804F    jne         00558055
 00558051    xor         eax,eax
 00558053    pop         ebx
 00558054    ret
 00558055    mov         al,1
 00558057    pop         ebx
 00558058    ret
*}
end;

//0055805C
procedure TChartTitle.SetBrush(Value:TChartBrush);
begin
{*
 0055805C    mov         eax,dword ptr [eax+10]
 0055805F    mov         ecx,dword ptr [eax]
 00558061    call        dword ptr [ecx+8]
 00558064    ret
*}
end;

//00558068
procedure TCustomChartWall.SetBrush(Value:TChartBrush);
begin
{*
 00558068    mov         eax,dword ptr [eax+8]
 0055806B    mov         ecx,dword ptr [eax]
 0055806D    call        dword ptr [ecx+8]
 00558070    ret
*}
end;

//00558074
procedure TCustomChartWall.SetSize(Value:Integer);
begin
{*
 00558074    lea         ecx,[eax+14]
 00558077    mov         eax,dword ptr [eax+18]
 0055807A    xchg        ecx,edx
 0055807C    call        TCustomTeePanel.SetLongintProperty
 00558081    ret
*}
end;

//00558084
procedure TCustomChartWall.SetColor(Value:TColor);
begin
{*
 00558084    lea         ecx,[eax+4]
 00558087    mov         eax,dword ptr [eax+18]
 0055808A    xchg        ecx,edx
 0055808C    call        TCustomTeePanel.SetColorProperty
 00558091    ret
*}
end;

//00558094
procedure TCustomChartWall.SetDark3D(Value:Boolean);
begin
{*
 00558094    lea         ecx,[eax+0C]
 00558097    mov         eax,dword ptr [eax+18]
 0055809A    xchg        ecx,edx
 0055809C    call        TCustomTeePanel.SetBooleanProperty
 005580A1    ret
*}
end;

//005580A4
constructor TChartTitle.Create(AOwner:TCustomChart);
begin
{*
 005580A4    push        ebp
 005580A5    mov         ebp,esp
 005580A7    push        ecx
 005580A8    push        ebx
 005580A9    push        esi
 005580AA    test        dl,dl
>005580AC    je          005580B6
 005580AE    add         esp,0FFFFFFF0
 005580B1    call        @ClassCreate
 005580B6    mov         byte ptr [ebp-1],dl
 005580B9    mov         ebx,eax
 005580BB    xor         edx,edx
 005580BD    mov         eax,ebx
 005580BF    call        TChartFontObject.Create
 005580C4    mov         dword ptr [ebx+14],20000000
 005580CB    mov         dl,1
 005580CD    mov         eax,[006428B0];TStringList
 005580D2    call        TObject.Create
 005580D7    mov         esi,eax
 005580D9    mov         dword ptr [ebx+1C],esi
 005580DC    mov         eax,dword ptr [ebx+4]
 005580DF    mov         dword ptr [esi+24],eax
 005580E2    mov         eax,dword ptr [eax]
 005580E4    mov         eax,dword ptr [eax+0CC]
 005580EA    mov         dword ptr [esi+20],eax
 005580ED    mov         byte ptr [ebx+30],1
 005580F1    mov         byte ptr [ebx+0D],2
 005580F5    mov         eax,dword ptr [ebx+8]
 005580F8    mov         edx,0FF0000
 005580FD    call        TFont.SetColor
 00558102    mov         dword ptr [ebx+34],0FF0000
 00558109    mov         al,[0055816C]
 0055810E    mov         byte ptr [ebx+38],al
 00558111    mov         eax,dword ptr [ebx+4]
 00558114    push        eax
 00558115    mov         eax,dword ptr [eax]
 00558117    mov         eax,dword ptr [eax+0CC]
 0055811D    push        eax
 0055811E    mov         dl,1
 00558120    mov         eax,[0056A458];TChartHiddenPen
 00558125    call        TChartHiddenPen.Create
 0055812A    mov         dword ptr [ebx+18],eax
 0055812D    mov         byte ptr [ebx+0C],1
 00558131    mov         eax,dword ptr [ebx+4]
 00558134    push        eax
 00558135    mov         eax,dword ptr [eax]
 00558137    mov         eax,dword ptr [eax+0CC]
 0055813D    push        eax
 0055813E    mov         dl,1
 00558140    mov         eax,[00555FDC];TChartBrush
 00558145    call        TChartBrush.Create
 0055814A    mov         dword ptr [ebx+10],eax
 0055814D    mov         eax,ebx
 0055814F    cmp         byte ptr [ebp-1],0
>00558153    je          00558164
 00558155    call        @AfterConstruction
 0055815A    pop         dword ptr fs:[0]
 00558161    add         esp,0C
 00558164    mov         eax,ebx
 00558166    pop         esi
 00558167    pop         ebx
 00558168    pop         ecx
 00558169    pop         ebp
 0055816A    ret
*}
end;

//00558170
procedure TChartTitle.Assign(Source:TPersistent);
begin
{*
 00558170    push        ebx
 00558171    push        esi
 00558172    push        edi
 00558173    mov         esi,edx
 00558175    mov         ebx,eax
 00558177    mov         eax,esi
 00558179    mov         edx,dword ptr ds:[5567B0];TChartTitle
 0055817F    call        @IsClass
 00558184    test        al,al
>00558186    je          005581C3
 00558188    mov         edi,esi
 0055818A    mov         al,byte ptr [edi+0C]
 0055818D    mov         byte ptr [ebx+0C],al
 00558190    mov         al,byte ptr [edi+0D]
 00558193    mov         byte ptr [ebx+0D],al
 00558196    mov         edx,dword ptr [edi+10]
 00558199    mov         eax,dword ptr [ebx+10]
 0055819C    mov         ecx,dword ptr [eax]
 0055819E    call        dword ptr [ecx+8]
 005581A1    mov         eax,dword ptr [edi+14]
 005581A4    mov         dword ptr [ebx+14],eax
 005581A7    mov         edx,dword ptr [edi+18]
 005581AA    mov         eax,dword ptr [ebx+18]
 005581AD    mov         ecx,dword ptr [eax]
 005581AF    call        dword ptr [ecx+8]
 005581B2    mov         edx,dword ptr [edi+1C]
 005581B5    mov         eax,dword ptr [ebx+1C]
 005581B8    mov         ecx,dword ptr [eax]
 005581BA    call        dword ptr [ecx+8]
 005581BD    mov         al,byte ptr [edi+30]
 005581C0    mov         byte ptr [ebx+30],al
 005581C3    mov         edx,esi
 005581C5    mov         eax,ebx
 005581C7    call        TChartFontObject.Assign
 005581CC    pop         edi
 005581CD    pop         esi
 005581CE    pop         ebx
 005581CF    ret
*}
end;

//005581D0
function TChartTitle.IsFontStored(Value:TFont):Boolean;
begin
{*
 005581D0    push        ebp
 005581D1    mov         ebp,esp
 005581D3    push        0
 005581D5    push        0
 005581D7    push        ebx
 005581D8    push        esi
 005581D9    push        edi
 005581DA    mov         esi,eax
 005581DC    xor         eax,eax
 005581DE    push        ebp
 005581DF    push        55825C
 005581E4    push        dword ptr fs:[eax]
 005581E7    mov         dword ptr fs:[eax],esp
 005581EA    mov         ebx,dword ptr [esi+8]
 005581ED    lea         edx,[ebp-4]
 005581F0    mov         eax,ebx
 005581F2    call        TFont.GetName
 005581F7    mov         eax,dword ptr [ebp-4]
 005581FA    push        eax
 005581FB    lea         eax,[ebp-8]
 005581FE    call        GetDefaultFontName
 00558203    mov         edx,dword ptr [ebp-8]
 00558206    pop         eax
 00558207    call        @LStrCmp
>0055820C    jne         0055823A
 0055820E    mov         eax,ebx
 00558210    call        TFont.GetSize
 00558215    mov         edi,eax
 00558217    call        GetDefaultFontSize
 0055821C    cmp         edi,eax
>0055821E    jne         0055823A
 00558220    mov         eax,dword ptr [ebx+18]
 00558223    cmp         eax,dword ptr [esi+34]
>00558226    jne         0055823A
 00558228    mov         eax,ebx
 0055822A    call        TFont.GetStyle
 0055822F    mov         dl,byte ptr [esi+38]
 00558232    cmp         dl,al
>00558234    jne         0055823A
 00558236    xor         eax,eax
>00558238    jmp         0055823C
 0055823A    mov         al,1
 0055823C    mov         ebx,eax
 0055823E    xor         eax,eax
 00558240    pop         edx
 00558241    pop         ecx
 00558242    pop         ecx
 00558243    mov         dword ptr fs:[eax],edx
 00558246    push        558263
 0055824B    lea         eax,[ebp-8]
 0055824E    call        @LStrClr
 00558253    lea         eax,[ebp-4]
 00558256    call        @LStrClr
 0055825B    ret
>0055825C    jmp         @HandleFinally
>00558261    jmp         0055824B
 00558263    mov         eax,ebx
 00558265    pop         edi
 00558266    pop         esi
 00558267    pop         ebx
 00558268    pop         ecx
 00558269    pop         ecx
 0055826A    pop         ebp
 0055826B    ret
*}
end;

//0055826C
destructor TChartTitle.Destroy;
begin
{*
 0055826C    push        ebx
 0055826D    push        esi
 0055826E    call        @BeforeDestruction
 00558273    mov         ebx,edx
 00558275    mov         esi,eax
 00558277    mov         eax,dword ptr [esi+1C]
 0055827A    call        TObject.Free
 0055827F    mov         eax,dword ptr [esi+18]
 00558282    call        TObject.Free
 00558287    mov         eax,dword ptr [esi+10]
 0055828A    call        TObject.Free
 0055828F    mov         edx,ebx
 00558291    and         dl,0FC
 00558294    mov         eax,esi
 00558296    call        TChartFontObject.Destroy
 0055829B    test        bl,bl
>0055829D    jle         005582A6
 0055829F    mov         eax,esi
 005582A1    call        @ClassDestroy
 005582A6    pop         esi
 005582A7    pop         ebx
 005582A8    ret
*}
end;

//005582AC
procedure TChartTitle.SetText(Value:TStrings);
begin
{*
 005582AC    push        esi
 005582AD    mov         esi,eax
 005582AF    mov         eax,dword ptr [esi+1C]
 005582B2    mov         ecx,dword ptr [eax]
 005582B4    call        dword ptr [ecx+8]
 005582B7    mov         eax,esi
 005582B9    call        TChartFontObject.Repaint
 005582BE    pop         esi
 005582BF    ret
*}
end;

//005582C0
procedure TChartTitle.SetVisible(Value:Boolean);
begin
{*
 005582C0    lea         ecx,[eax+30]
 005582C3    mov         eax,dword ptr [eax+4]
 005582C6    xchg        ecx,edx
 005582C8    call        TCustomTeePanel.SetBooleanProperty
 005582CD    ret
*}
end;

//005582D0
procedure TChartTitle.SetAdjustFrame(Value:Boolean);
begin
{*
 005582D0    lea         ecx,[eax+0C]
 005582D3    mov         eax,dword ptr [eax+4]
 005582D6    xchg        ecx,edx
 005582D8    call        TCustomTeePanel.SetBooleanProperty
 005582DD    ret
*}
end;

//005582E0
procedure TChartTitle.SetAlignment(Value:TAlignment);
begin
{*
 005582E0    cmp         dl,byte ptr [eax+0D]
>005582E3    je          005582ED
 005582E5    mov         byte ptr [eax+0D],dl
 005582E8    call        TChartFontObject.Repaint
 005582ED    ret
*}
end;

//005582F0
procedure TCustomChartLegend.SetBrush(Value:TChartBrush);
begin
{*
 005582F0    mov         eax,dword ptr [eax+10]
 005582F3    mov         ecx,dword ptr [eax]
 005582F5    call        dword ptr [ecx+8]
 005582F8    ret
*}
end;

//005582FC
procedure TChartTitle.SetColor(Value:TColor);
begin
{*
 005582FC    lea         ecx,[eax+14]
 005582FF    mov         eax,dword ptr [eax+4]
 00558302    xchg        ecx,edx
 00558304    call        TCustomTeePanel.SetColorProperty
 00558309    ret
*}
end;

//0055830C
procedure TChartTitle.SetFrame(Value:TChartHiddenPen);
begin
{*
 0055830C    mov         eax,dword ptr [eax+18]
 0055830F    mov         ecx,dword ptr [eax]
 00558311    call        dword ptr [ecx+8]
 00558314    ret
*}
end;

//00558318
function TChartTitle.Clicked(x:Integer; y:Integer):Boolean;
begin
{*
 00558318    push        ebx
 00558319    push        esi
 0055831A    push        edi
 0055831B    add         esp,0FFFFFFF8
 0055831E    mov         edi,ecx
 00558320    mov         esi,edx
 00558322    mov         ebx,eax
 00558324    cmp         byte ptr [ebx+30],0
>00558328    je          0055834A
 0055832A    mov         ecx,esp
 0055832C    mov         edx,edi
 0055832E    mov         eax,esi
 00558330    call        Point
 00558335    push        dword ptr [esp+4]
 00558339    push        dword ptr [esp+4]
 0055833D    lea         eax,[ebx+20]
 00558340    push        eax
 00558341    call        USER32.PtInRect
 00558346    test        eax,eax
>00558348    jne         0055834E
 0055834A    xor         eax,eax
>0055834C    jmp         00558350
 0055834E    mov         al,1
 00558350    pop         ecx
 00558351    pop         edx
 00558352    pop         edi
 00558353    pop         esi
 00558354    pop         ebx
 00558355    ret
*}
end;

//00558358
procedure DrawTitleLine(const St:AnsiString);
begin
{*
 00558358    push        ebp
 00558359    mov         ebp,esp
 0055835B    push        ebx
 0055835C    push        esi
 0055835D    push        edi
 0055835E    mov         edi,eax
 00558360    mov         eax,dword ptr [ebp+8]
 00558363    mov         eax,dword ptr [eax-4]
 00558366    cmp         byte ptr [eax+0D],0
>0055836A    jne         00558383
 0055836C    mov         eax,dword ptr [ebp+8]
 0055836F    mov         esi,dword ptr [eax-14]
 00558372    mov         eax,dword ptr [ebp+8]
 00558375    mov         eax,dword ptr [eax-18]
 00558378    sar         eax,1
>0055837A    jns         0055837F
 0055837C    adc         eax,0
 0055837F    add         esi,eax
>00558381    jmp         005583DA
 00558383    mov         eax,dword ptr [ebp+8]
 00558386    mov         eax,dword ptr [eax-4]
 00558389    mov         eax,dword ptr [eax+4]
 0055838C    mov         eax,dword ptr [eax+280]
 00558392    mov         edx,edi
 00558394    mov         ecx,dword ptr [eax]
 00558396    call        dword ptr [ecx+60]
 00558399    mov         edx,dword ptr [ebp+8]
 0055839C    mov         edx,dword ptr [edx-4]
 0055839F    cmp         byte ptr [edx+0D],1
>005583A3    jne         005583BE
 005583A5    mov         edx,dword ptr [ebp+8]
 005583A8    mov         esi,dword ptr [edx-0C]
 005583AB    sub         esi,eax
 005583AD    mov         eax,dword ptr [ebp+8]
 005583B0    mov         eax,dword ptr [eax-18]
 005583B3    sar         eax,1
>005583B5    jns         005583BA
 005583B7    adc         eax,0
 005583BA    sub         esi,eax
>005583BC    jmp         005583DA
 005583BE    mov         edx,dword ptr [ebp+8]
 005583C1    mov         esi,dword ptr [edx-14]
 005583C4    mov         edx,dword ptr [ebp+8]
 005583C7    add         esi,dword ptr [edx-0C]
 005583CA    sar         esi,1
>005583CC    jns         005583D1
 005583CE    adc         esi,0
 005583D1    sar         eax,1
>005583D3    jns         005583D8
 005583D5    adc         eax,0
 005583D8    sub         esi,eax
 005583DA    mov         eax,dword ptr [ebp+8]
 005583DD    mov         eax,dword ptr [eax-4]
 005583E0    mov         eax,dword ptr [eax+4]
 005583E3    mov         ebx,dword ptr [eax+280]
 005583E9    mov         eax,ebx
 005583EB    mov         edx,dword ptr [eax]
 005583ED    call        dword ptr [edx+98]
 005583F3    test        al,al
>005583F5    je          0055840E
 005583F7    push        0
 005583F9    push        edi
 005583FA    mov         eax,dword ptr [ebp+8]
 005583FD    mov         ecx,dword ptr [eax-10]
 00558400    mov         edx,esi
 00558402    mov         eax,ebx
 00558404    mov         ebx,dword ptr [eax]
 00558406    call        dword ptr [ebx+124]
>0055840C    jmp         0055841E
 0055840E    push        edi
 0055840F    mov         eax,dword ptr [ebp+8]
 00558412    mov         ecx,dword ptr [eax-10]
 00558415    mov         edx,esi
 00558417    mov         eax,ebx
 00558419    mov         ebx,dword ptr [eax]
 0055841B    call        dword ptr [ebx+5C]
 0055841E    pop         edi
 0055841F    pop         esi
 00558420    pop         ebx
 00558421    pop         ebp
 00558422    ret
*}
end;

//00558424
procedure TChartTitle.Draw(OnTop:Boolean);
begin
{*
 00558424    push        ebp
 00558425    mov         ebp,esp
 00558427    add         esp,0FFFFFFC8
 0055842A    push        ebx
 0055842B    push        esi
 0055842C    push        edi
 0055842D    xor         ecx,ecx
 0055842F    mov         dword ptr [ebp-38],ecx
 00558432    mov         dword ptr [ebp-34],ecx
 00558435    mov         dword ptr [ebp-30],ecx
 00558438    mov         byte ptr [ebp-19],dl
 0055843B    mov         dword ptr [ebp-4],eax
 0055843E    xor         eax,eax
 00558440    push        ebp
 00558441    push        558865
 00558446    push        dword ptr fs:[eax]
 00558449    mov         dword ptr fs:[eax],esp
 0055844C    mov         eax,dword ptr [ebp-4]
 0055844F    mov         edx,dword ptr [eax+8]
 00558452    mov         eax,dword ptr [ebp-4]
 00558455    mov         eax,dword ptr [eax+4]
 00558458    mov         ecx,dword ptr [eax]
 0055845A    call        dword ptr [ecx+0D8]
 00558460    mov         eax,dword ptr [ebp-4]
 00558463    mov         eax,dword ptr [eax+4]
 00558466    mov         ebx,dword ptr [eax+280]
 0055846C    mov         eax,ebx
 0055846E    call        TTeeCanvas.FontHeight
 00558473    mov         dword ptr [ebp-20],eax
 00558476    mov         eax,dword ptr [ebp-4]
 00558479    cmp         dword ptr [eax+14],20000000
>00558480    jne         005584E9
 00558482    mov         eax,dword ptr [ebp-4]
 00558485    mov         eax,dword ptr [eax+10]
 00558488    call        TBrush.GetStyle
 0055848D    test        al,al
>0055848F    jne         005584D0
 00558491    mov         eax,dword ptr [ebp-4]
 00558494    mov         eax,dword ptr [eax+10]
 00558497    call        TBrush.GetColor
 0055849C    cmp         eax,20000000
>005584A1    je          005584C4
 005584A3    mov         eax,dword ptr [ebp-4]
 005584A6    mov         eax,dword ptr [eax+10]
 005584A9    call        TBrush.GetColor
 005584AE    mov         edx,eax
 005584B0    mov         eax,dword ptr [ebp-4]
 005584B3    call        TChartTitle.SetColor
 005584B8    mov         eax,dword ptr [ebx+10]
 005584BB    xor         edx,edx
 005584BD    call        TBrush.SetStyle
>005584C2    jmp         0055853D
 005584C4    mov         eax,dword ptr [ebx+10]
 005584C7    mov         dl,1
 005584C9    call        TBrush.SetStyle
>005584CE    jmp         0055853D
 005584D0    mov         eax,dword ptr [ebp-4]
 005584D3    mov         edx,dword ptr [eax+10]
 005584D6    mov         eax,dword ptr [ebx+10]
 005584D9    mov         ecx,dword ptr [eax]
 005584DB    call        dword ptr [ecx+8]
 005584DE    mov         dl,1
 005584E0    mov         eax,ebx
 005584E2    mov         ecx,dword ptr [eax]
 005584E4    call        dword ptr [ecx+1C]
>005584E7    jmp         0055853D
 005584E9    mov         eax,dword ptr [ebp-4]
 005584EC    mov         eax,dword ptr [eax+10]
 005584EF    call        TBrush.GetStyle
 005584F4    test        al,al
>005584F6    jne         00558512
 005584F8    mov         eax,dword ptr [ebx+10]
 005584FB    xor         edx,edx
 005584FD    call        TBrush.SetStyle
 00558502    mov         eax,dword ptr [ebp-4]
 00558505    mov         edx,dword ptr [eax+14]
 00558508    mov         eax,dword ptr [ebx+10]
 0055850B    call        TBrush.SetColor
>00558510    jmp         0055853D
 00558512    mov         eax,dword ptr [ebp-4]
 00558515    mov         edx,dword ptr [eax+10]
 00558518    mov         eax,dword ptr [ebx+10]
 0055851B    mov         ecx,dword ptr [eax]
 0055851D    call        dword ptr [ecx+8]
 00558520    mov         dl,2
 00558522    mov         eax,ebx
 00558524    mov         ecx,dword ptr [eax]
 00558526    call        dword ptr [ecx+1C]
 00558529    mov         eax,dword ptr [ebp-4]
 0055852C    mov         eax,dword ptr [eax+14]
 0055852F    call        ColorToRGB
 00558534    mov         edx,eax
 00558536    mov         eax,ebx
 00558538    mov         ecx,dword ptr [eax]
 0055853A    call        dword ptr [ecx+18]
 0055853D    mov         eax,dword ptr [ebp-4]
 00558540    mov         ebx,dword ptr [eax+18]
 00558543    cmp         byte ptr [ebx+21],0
>00558547    je          00558557
 00558549    mov         eax,ebx
 0055854B    call        TPen.GetColor
 00558550    cmp         eax,20000000
>00558555    jne         0055855B
 00558557    xor         eax,eax
>00558559    jmp         0055855D
 0055855B    mov         al,1
 0055855D    mov         byte ptr [ebp-29],al
 00558560    cmp         byte ptr [ebp-29],0
>00558564    je          00558573
 00558566    mov         eax,dword ptr [ebp-4]
 00558569    mov         eax,dword ptr [eax+18]
 0055856C    call        TPen.GetWidth
>00558571    jmp         00558575
 00558573    xor         eax,eax
 00558575    mov         edx,dword ptr [ebp-4]
 00558578    mov         edx,dword ptr [edx+4]
 0055857B    mov         ecx,dword ptr [edx+286]
 00558581    add         ecx,eax
 00558583    mov         dword ptr [ebp-14],ecx
 00558586    cmp         byte ptr [ebp-19],0
>0055858A    je          0055859F
 0055858C    mov         ecx,dword ptr [edx+28A]
 00558592    add         ecx,eax
 00558594    mov         dword ptr [ebp-10],ecx
 00558597    sub         ecx,5
 0055859A    mov         dword ptr [ebp-8],ecx
>0055859D    jmp         005585B0
 0055859F    mov         ecx,dword ptr [edx+292]
 005585A5    sub         ecx,eax
 005585A7    mov         dword ptr [ebp-8],ecx
 005585AA    add         ecx,5
 005585AD    mov         dword ptr [ebp-10],ecx
 005585B0    mov         edx,dword ptr [edx+28E]
 005585B6    sub         edx,eax
 005585B8    mov         dword ptr [ebp-0C],edx
 005585BB    mov         eax,dword ptr [ebp-4]
 005585BE    lea         edi,[eax+20]
 005585C1    lea         esi,[ebp-14]
 005585C4    movs        dword ptr [edi],dword ptr [esi]
 005585C5    movs        dword ptr [edi],dword ptr [esi]
 005585C6    movs        dword ptr [edi],dword ptr [esi]
 005585C7    movs        dword ptr [edi],dword ptr [esi]
 005585C8    cmp         byte ptr [ebp-29],0
>005585CC    je          005585F8
 005585CE    mov         eax,dword ptr [ebp-4]
 005585D1    mov         edx,dword ptr [eax+18]
 005585D4    mov         eax,dword ptr [ebp-4]
 005585D7    mov         eax,dword ptr [eax+4]
 005585DA    mov         eax,dword ptr [eax+280]
 005585E0    mov         eax,dword ptr [eax+0C]
 005585E3    mov         ecx,dword ptr [eax]
 005585E5    call        dword ptr [ecx+8]
 005585E8    mov         eax,dword ptr [ebp-4]
 005585EB    mov         eax,dword ptr [eax+18]
 005585EE    call        TPen.GetWidth
 005585F3    mov         dword ptr [ebp-24],eax
>005585F6    jmp         00558613
 005585F8    mov         eax,dword ptr [ebp-4]
 005585FB    mov         eax,dword ptr [eax+4]
 005585FE    mov         eax,dword ptr [eax+280]
 00558604    mov         eax,dword ptr [eax+0C]
 00558607    mov         dl,5
 00558609    call        TPen.SetStyle
 0055860E    xor         eax,eax
 00558610    mov         dword ptr [ebp-24],eax
 00558613    cmp         byte ptr [ebp-19],0
>00558617    je          00558632
 00558619    mov         eax,dword ptr [ebp-4]
 0055861C    mov         eax,dword ptr [eax+1C]
 0055861F    mov         edx,dword ptr [eax]
 00558621    call        dword ptr [edx+14]
 00558624    imul        dword ptr [ebp-20]
 00558627    add         eax,dword ptr [ebp-10]
 0055862A    mov         edx,dword ptr [ebp-4]
 0055862D    mov         dword ptr [edx+2C],eax
>00558630    jmp         0055864B
 00558632    mov         eax,dword ptr [ebp-4]
 00558635    mov         eax,dword ptr [eax+1C]
 00558638    mov         edx,dword ptr [eax]
 0055863A    call        dword ptr [edx+14]
 0055863D    imul        dword ptr [ebp-20]
 00558640    mov         edx,dword ptr [ebp-8]
 00558643    sub         edx,eax
 00558645    mov         eax,dword ptr [ebp-4]
 00558648    mov         dword ptr [eax+24],edx
 0055864B    mov         eax,dword ptr [ebp-24]
 0055864E    push        eax
 0055864F    mov         eax,dword ptr [ebp-24]
 00558652    push        eax
 00558653    mov         eax,dword ptr [ebp-4]
 00558656    add         eax,20
 00558659    push        eax
 0055865A    call        USER32.InflateRect
 0055865F    mov         eax,dword ptr [ebp-4]
 00558662    mov         eax,dword ptr [eax+4]
 00558665    mov         eax,dword ptr [eax+280]
 0055866B    mov         edx,55887C;'W'
 00558670    mov         ecx,dword ptr [eax]
 00558672    call        dword ptr [ecx+60]
 00558675    mov         dword ptr [ebp-18],eax
 00558678    cmp         byte ptr [ebp-29],0
>0055867C    jne         0055869A
 0055867E    mov         eax,dword ptr [ebp-4]
 00558681    mov         eax,dword ptr [eax+4]
 00558684    mov         eax,dword ptr [eax+280]
 0055868A    mov         eax,dword ptr [eax+10]
 0055868D    call        TBrush.GetStyle
 00558692    cmp         al,1
>00558694    je          0055875B
 0055869A    mov         eax,dword ptr [ebp-4]
 0055869D    cmp         byte ptr [eax+0C],0
>005586A1    je          00558744
 005586A7    xor         eax,eax
 005586A9    mov         dword ptr [ebp-28],eax
 005586AC    mov         eax,dword ptr [ebp-4]
 005586AF    mov         eax,dword ptr [eax+1C]
 005586B2    mov         edx,dword ptr [eax]
 005586B4    call        dword ptr [edx+14]
 005586B7    mov         esi,eax
 005586B9    dec         esi
 005586BA    test        esi,esi
>005586BC    jl          005586F1
 005586BE    inc         esi
 005586BF    xor         ebx,ebx
 005586C1    lea         ecx,[ebp-30]
 005586C4    mov         eax,dword ptr [ebp-4]
 005586C7    mov         eax,dword ptr [eax+1C]
 005586CA    mov         edx,ebx
 005586CC    mov         edi,dword ptr [eax]
 005586CE    call        dword ptr [edi+0C]
 005586D1    mov         edx,dword ptr [ebp-30]
 005586D4    mov         eax,dword ptr [ebp-4]
 005586D7    mov         eax,dword ptr [eax+4]
 005586DA    mov         eax,dword ptr [eax+280]
 005586E0    mov         ecx,dword ptr [eax]
 005586E2    call        dword ptr [ecx+60]
 005586E5    cmp         eax,dword ptr [ebp-28]
>005586E8    jle         005586ED
 005586EA    mov         dword ptr [ebp-28],eax
 005586ED    inc         ebx
 005586EE    dec         esi
>005586EF    jne         005586C1
 005586F1    mov         eax,dword ptr [ebp-18]
 005586F4    add         dword ptr [ebp-28],eax
 005586F7    mov         eax,dword ptr [ebp-4]
 005586FA    lea         edx,[eax+20]
 005586FD    mov         eax,dword ptr [ebp-4]
 00558700    mov         al,byte ptr [eax+0D]
 00558703    sub         al,1
>00558705    jb          0055870F
>00558707    je          00558719
 00558709    dec         al
>0055870B    je          00558723
>0055870D    jmp         00558744
 0055870F    mov         eax,dword ptr [edx]
 00558711    add         eax,dword ptr [ebp-28]
 00558714    mov         dword ptr [edx+8],eax
>00558717    jmp         00558744
 00558719    mov         eax,dword ptr [edx+8]
 0055871C    sub         eax,dword ptr [ebp-28]
 0055871F    mov         dword ptr [edx],eax
>00558721    jmp         00558744
 00558723    mov         eax,dword ptr [edx]
 00558725    add         eax,dword ptr [edx+8]
 00558728    sar         eax,1
>0055872A    jns         0055872F
 0055872C    adc         eax,0
 0055872F    mov         ecx,dword ptr [ebp-28]
 00558732    sar         ecx,1
>00558734    jns         00558739
 00558736    adc         ecx,0
 00558739    mov         ebx,eax
 0055873B    sub         ebx,ecx
 0055873D    mov         dword ptr [edx],ebx
 0055873F    add         eax,ecx
 00558741    mov         dword ptr [edx+8],eax
 00558744    mov         eax,dword ptr [ebp-4]
 00558747    lea         edx,[eax+20]
 0055874A    mov         eax,dword ptr [ebp-4]
 0055874D    mov         eax,dword ptr [eax+4]
 00558750    mov         eax,dword ptr [eax+280]
 00558756    mov         ecx,dword ptr [eax]
 00558758    call        dword ptr [ecx+70]
 0055875B    mov         eax,dword ptr [ebp-4]
 0055875E    mov         eax,dword ptr [eax+4]
 00558761    mov         eax,dword ptr [eax+280]
 00558767    mov         dl,1
 00558769    mov         ecx,dword ptr [eax]
 0055876B    call        dword ptr [ecx+1C]
 0055876E    cmp         byte ptr [ebp-19],0
>00558772    je          005587B8
 00558774    mov         eax,dword ptr [ebp-4]
 00558777    mov         eax,dword ptr [eax+1C]
 0055877A    mov         edx,dword ptr [eax]
 0055877C    call        dword ptr [edx+14]
 0055877F    mov         esi,eax
 00558781    dec         esi
 00558782    test        esi,esi
>00558784    jl          005587FA
 00558786    inc         esi
 00558787    xor         ebx,ebx
 00558789    mov         eax,dword ptr [ebp-10]
 0055878C    add         eax,dword ptr [ebp-20]
 0055878F    mov         dword ptr [ebp-8],eax
 00558792    push        ebp
 00558793    lea         ecx,[ebp-34]
 00558796    mov         eax,dword ptr [ebp-4]
 00558799    mov         eax,dword ptr [eax+1C]
 0055879C    mov         edx,ebx
 0055879E    mov         edi,dword ptr [eax]
 005587A0    call        dword ptr [edi+0C]
 005587A3    mov         eax,dword ptr [ebp-34]
 005587A6    call        DrawTitleLine
 005587AB    pop         ecx
 005587AC    mov         eax,dword ptr [ebp-8]
 005587AF    mov         dword ptr [ebp-10],eax
 005587B2    inc         ebx
 005587B3    dec         esi
>005587B4    jne         00558789
>005587B6    jmp         005587FA
 005587B8    mov         eax,dword ptr [ebp-4]
 005587BB    mov         eax,dword ptr [eax+1C]
 005587BE    mov         edx,dword ptr [eax]
 005587C0    call        dword ptr [edx+14]
 005587C3    mov         ebx,eax
 005587C5    dec         ebx
 005587C6    cmp         ebx,0
>005587C9    jl          005587FA
 005587CB    mov         eax,dword ptr [ebp-8]
 005587CE    sub         eax,dword ptr [ebp-20]
 005587D1    mov         dword ptr [ebp-10],eax
 005587D4    push        ebp
 005587D5    lea         ecx,[ebp-38]
 005587D8    mov         eax,dword ptr [ebp-4]
 005587DB    mov         eax,dword ptr [eax+1C]
 005587DE    mov         edx,ebx
 005587E0    mov         esi,dword ptr [eax]
 005587E2    call        dword ptr [esi+0C]
 005587E5    mov         eax,dword ptr [ebp-38]
 005587E8    call        DrawTitleLine
 005587ED    pop         ecx
 005587EE    mov         eax,dword ptr [ebp-10]
 005587F1    mov         dword ptr [ebp-8],eax
 005587F4    dec         ebx
 005587F5    cmp         ebx,0FFFFFFFF
>005587F8    jne         005587CB
 005587FA    cmp         byte ptr [ebp-29],0
>005587FE    je          00558814
 00558800    cmp         byte ptr [ebp-19],0
>00558804    je          0055880E
 00558806    mov         eax,dword ptr [ebp-24]
 00558809    add         dword ptr [ebp-8],eax
>0055880C    jmp         00558814
 0055880E    mov         eax,dword ptr [ebp-24]
 00558811    sub         dword ptr [ebp-10],eax
 00558814    mov         eax,dword ptr [ebp-4]
 00558817    mov         eax,dword ptr [eax+4]
 0055881A    add         eax,286
 0055881F    cmp         byte ptr [ebp-19],0
>00558823    je          00558833
 00558825    mov         edx,dword ptr [ebp-8]
 00558828    add         edx,dword ptr ds:[6E37E4]
 0055882E    mov         dword ptr [eax+4],edx
>00558831    jmp         0055883F
 00558833    mov         edx,dword ptr [ebp-10]
 00558836    sub         edx,dword ptr ds:[6E37E4]
 0055883C    mov         dword ptr [eax+0C],edx
 0055883F    mov         eax,dword ptr [ebp-4]
 00558842    mov         eax,dword ptr [eax+4]
 00558845    call        TCustomTeePanel.ReCalcWidthHeight
 0055884A    xor         eax,eax
 0055884C    pop         edx
 0055884D    pop         ecx
 0055884E    pop         ecx
 0055884F    mov         dword ptr fs:[eax],edx
 00558852    push        55886C
 00558857    lea         eax,[ebp-38]
 0055885A    mov         edx,3
 0055885F    call        @LStrArrayClr
 00558864    ret
>00558865    jmp         @HandleFinally
>0055886A    jmp         00558857
 0055886C    pop         edi
 0055886D    pop         esi
 0055886E    pop         ebx
 0055886F    mov         esp,ebp
 00558871    pop         ebp
 00558872    ret
*}
end;

//00558880
constructor TCustomChart.Create(AOwner:TComponent);
begin
{*
 00558880    push        ebp
 00558881    mov         ebp,esp
 00558883    add         esp,0FFFFFEF8
 00558889    push        ebx
 0055888A    push        esi
 0055888B    xor         ebx,ebx
 0055888D    mov         dword ptr [ebp-8],ebx
 00558890    test        dl,dl
>00558892    je          0055889C
 00558894    add         esp,0FFFFFFF0
 00558897    call        @ClassCreate
 0055889C    mov         byte ptr [ebp-1],dl
 0055889F    mov         ebx,eax
 005588A1    xor         eax,eax
 005588A3    push        ebp
 005588A4    push        558A00
 005588A9    push        dword ptr fs:[eax]
 005588AC    mov         dword ptr fs:[eax],esp
 005588AF    xor         edx,edx
 005588B1    mov         eax,ebx
 005588B3    call        TCustomAxisPanel.Create
 005588B8    mov         ecx,ebx
 005588BA    mov         dl,1
 005588BC    mov         eax,[005567B0];TChartTitle
 005588C1    call        TChartTitle.Create
 005588C6    mov         dword ptr [ebx+3B0],eax
 005588CC    mov         ecx,ebx
 005588CE    mov         dl,1
 005588D0    mov         eax,[005567B0];TChartTitle
 005588D5    call        TChartTitle.Create
 005588DA    mov         dword ptr [ebx+354],eax
 005588E0    test        byte ptr [ebx+1C],10
>005588E4    je          00558958
 005588E6    lea         edx,[ebp-108]
 005588EC    mov         eax,dword ptr [ebx]
 005588EE    call        TObject.ClassName
 005588F3    lea         edx,[ebp-108]
 005588F9    lea         eax,[ebp-8]
 005588FC    call        @LStrFromString
 00558901    mov         edx,dword ptr [ebp-8]
 00558904    mov         eax,dword ptr [ebx+3B0]
 0055890A    mov         eax,dword ptr [eax+1C]
 0055890D    mov         ecx,dword ptr [eax]
 0055890F    call        dword ptr [ecx+38]
 00558912    mov         eax,dword ptr [ebx+354]
 00558918    mov         esi,dword ptr [eax+8]
 0055891B    mov         edx,0FF
 00558920    mov         eax,esi
 00558922    call        TFont.SetColor
 00558927    call        GetDefaultFontSize
 0055892C    mov         edx,eax
 0055892E    mov         eax,esi
 00558930    call        TFont.SetSize
 00558935    mov         dl,byte ptr ds:[558A28]
 0055893B    mov         eax,esi
 0055893D    call        TFont.SetStyle
 00558942    mov         eax,dword ptr [ebx+354]
 00558948    mov         dword ptr [eax+34],0FF
 0055894F    mov         dl,byte ptr ds:[558A28]
 00558955    mov         byte ptr [eax+38],dl
 00558958    mov         ecx,ebx
 0055895A    mov         dl,1
 0055895C    mov         eax,[00556118];TChartWall
 00558961    call        TCustomChartWall.Create
 00558966    mov         esi,eax
 00558968    mov         dword ptr [ebx+34C],esi
 0055896E    mov         eax,dword ptr [esi+8]
 00558971    mov         dl,1
 00558973    call        TBrush.SetStyle
 00558978    mov         ecx,ebx
 0055897A    mov         dl,1
 0055897C    mov         eax,[00556118];TChartWall
 00558981    call        TCustomChartWall.Create
 00558986    mov         esi,eax
 00558988    mov         dword ptr [ebx+358],esi
 0055898E    mov         edx,80FFFF
 00558993    mov         eax,esi
 00558995    call        TCustomChartWall.SetColor
 0055899A    mov         eax,dword ptr [esi+4]
 0055899D    mov         dword ptr [esi+1C],eax
 005589A0    mov         ecx,ebx
 005589A2    mov         dl,1
 005589A4    mov         eax,[00556474];TChartLegend
 005589A9    call        TCustomChartLegend.Create
 005589AE    mov         dword ptr [ebx+35C],eax
 005589B4    mov         ecx,ebx
 005589B6    mov         dl,1
 005589B8    mov         eax,[00556118];TChartWall
 005589BD    call        TCustomChartWall.Create
 005589C2    mov         esi,eax
 005589C4    mov         dword ptr [ebx+350],esi
 005589CA    mov         edx,0FFFFFF
 005589CF    mov         eax,esi
 005589D1    call        TCustomChartWall.SetColor
 005589D6    mov         eax,dword ptr [esi+4]
 005589D9    mov         dword ptr [esi+1C],eax
 005589DC    mov         byte ptr [ebx+285],0
 005589E3    mov         byte ptr [ebx+360],1
 005589EA    xor         eax,eax
 005589EC    pop         edx
 005589ED    pop         ecx
 005589EE    pop         ecx
 005589EF    mov         dword ptr fs:[eax],edx
 005589F2    push        558A07
 005589F7    lea         eax,[ebp-8]
 005589FA    call        @LStrClr
 005589FF    ret
>00558A00    jmp         @HandleFinally
>00558A05    jmp         005589F7
 00558A07    mov         eax,ebx
 00558A09    cmp         byte ptr [ebp-1],0
>00558A0D    je          00558A1E
 00558A0F    call        @AfterConstruction
 00558A14    pop         dword ptr fs:[0]
 00558A1B    add         esp,0C
 00558A1E    mov         eax,ebx
 00558A20    pop         esi
 00558A21    pop         ebx
 00558A22    mov         esp,ebp
 00558A24    pop         ebp
 00558A25    ret
*}
end;

//00558A2C
destructor TCustomChart.Destroy;
begin
{*
 00558A2C    push        ebx
 00558A2D    push        esi
 00558A2E    call        @BeforeDestruction
 00558A33    mov         ebx,edx
 00558A35    mov         esi,eax
 00558A37    mov         eax,dword ptr [esi+3B0]
 00558A3D    call        TObject.Free
 00558A42    mov         eax,dword ptr [esi+354]
 00558A48    call        TObject.Free
 00558A4D    lea         eax,[esi+34C]
 00558A53    call        FreeAndNil
 00558A58    mov         eax,dword ptr [esi+350]
 00558A5E    call        TObject.Free
 00558A63    mov         eax,dword ptr [esi+358]
 00558A69    call        TObject.Free
 00558A6E    mov         eax,dword ptr [esi+35C]
 00558A74    call        TObject.Free
 00558A79    mov         edx,ebx
 00558A7B    and         dl,0FC
 00558A7E    mov         eax,esi
 00558A80    call        TCustomAxisPanel.Destroy
 00558A85    test        bl,bl
>00558A87    jle         00558A90
 00558A89    mov         eax,esi
 00558A8B    call        @ClassDestroy
 00558A90    pop         esi
 00558A91    pop         ebx
 00558A92    ret
*}
end;

//00558A94
procedure TCustomChart.SetTitle(Value:TChartTitle);
begin
{*
 00558A94    mov         eax,dword ptr [eax+3B0]
 00558A9A    mov         ecx,dword ptr [eax]
 00558A9C    call        dword ptr [ecx+8]
 00558A9F    ret
*}
end;

//00558AA0
procedure TCustomChart.SetBackImageInside(Value:Boolean);
begin
{*
 00558AA0    lea         ecx,[eax+348]
 00558AA6    xchg        ecx,edx
 00558AA8    call        TCustomTeePanel.SetBooleanProperty
 00558AAD    ret
*}
end;

//00558AB0
procedure TCustomChart.SetFoot(Value:TChartTitle);
begin
{*
 00558AB0    mov         eax,dword ptr [eax+354]
 00558AB6    mov         ecx,dword ptr [eax]
 00558AB8    call        dword ptr [ecx+8]
 00558ABB    ret
*}
end;

//00558ABC
function TCustomChart.FormattedValueLegend(ASeries:TChartSeries; ValueIndex:Integer):AnsiString;
begin
{*
 00558ABC    push        ebp
 00558ABD    mov         ebp,esp
 00558ABF    push        ecx
 00558AC0    push        ebx
 00558AC1    push        esi
 00558AC2    push        edi
 00558AC3    mov         dword ptr [ebp-4],ecx
 00558AC6    mov         esi,edx
 00558AC8    mov         ebx,eax
 00558ACA    mov         edi,dword ptr [ebp+8]
 00558ACD    test        esi,esi
>00558ACF    je          00558AE4
 00558AD1    push        edi
 00558AD2    mov         ecx,dword ptr [ebp-4]
 00558AD5    mov         edx,esi
 00558AD7    mov         eax,dword ptr [ebx+35C]
 00558ADD    call        TCustomChartLegend.FormattedValue
>00558AE2    jmp         00558AEB
 00558AE4    mov         eax,edi
 00558AE6    call        @LStrClr
 00558AEB    pop         edi
 00558AEC    pop         esi
 00558AED    pop         ebx
 00558AEE    pop         ecx
 00558AEF    pop         ebp
 00558AF0    ret         4
*}
end;

//00558AF4
function TCustomChart.FormattedLegend(SeriesOrValueIndex:Integer):AnsiString;
begin
{*
 00558AF4    push        ebx
 00558AF5    push        esi
 00558AF6    push        edi
 00558AF7    mov         edi,ecx
 00558AF9    mov         esi,edx
 00558AFB    mov         ebx,eax
 00558AFD    mov         ecx,edi
 00558AFF    mov         edx,esi
 00558B01    mov         eax,dword ptr [ebx+35C]
 00558B07    call        TCustomChartLegend.FormattedLegend
 00558B0C    cmp         word ptr [ebx+3F2],0
>00558B14    je          00558B2F
 00558B16    push        esi
 00558B17    push        edi
 00558B18    mov         eax,dword ptr [ebx+35C]
 00558B1E    mov         cl,byte ptr [eax+64]
 00558B21    mov         edx,ebx
 00558B23    mov         eax,dword ptr [ebx+3F4]
 00558B29    call        dword ptr [ebx+3F0]
 00558B2F    pop         edi
 00558B30    pop         esi
 00558B31    pop         ebx
 00558B32    ret
*}
end;

//00558B34
procedure TCustomChart.SetLegend(Value:TChartLegend);
begin
{*
 00558B34    push        esi
 00558B35    mov         esi,eax
 00558B37    mov         eax,dword ptr [esi+35C]
 00558B3D    mov         ecx,dword ptr [eax]
 00558B3F    call        dword ptr [ecx+8]
 00558B42    pop         esi
 00558B43    ret
*}
end;

//00558B44
procedure SaveAxisScales(Axis:TChartAxis; var tmp:TAxisSavedScales);
begin
{*
 00558B44    mov         cl,byte ptr [eax+4]
 00558B47    mov         byte ptr [edx],cl
 00558B49    mov         cl,byte ptr [eax+6]
 00558B4C    mov         byte ptr [edx+1],cl
 00558B4F    mov         cl,byte ptr [eax+5]
 00558B52    mov         byte ptr [edx+2],cl
 00558B55    mov         ecx,dword ptr [eax+18]
 00558B58    mov         dword ptr [edx+3],ecx
 00558B5B    mov         ecx,dword ptr [eax+1C]
 00558B5E    mov         dword ptr [edx+7],ecx
 00558B61    mov         ecx,dword ptr [eax+10]
 00558B64    mov         dword ptr [edx+0B],ecx
 00558B67    mov         ecx,dword ptr [eax+14]
 00558B6A    mov         dword ptr [edx+0F],ecx
 00558B6D    ret
*}
end;

//00558B70
function TCustomChart.SaveScales:TAllAxisSavedScales;
begin
{*
 00558B70    push        ebx
 00558B71    push        esi
 00558B72    mov         esi,edx
 00558B74    mov         ebx,eax
 00558B76    mov         edx,esi
 00558B78    mov         eax,dword ptr [ebx+2E8]
 00558B7E    call        SaveAxisScales
 00558B83    lea         edx,[esi+39]
 00558B86    mov         eax,dword ptr [ebx+2EC]
 00558B8C    call        SaveAxisScales
 00558B91    lea         edx,[esi+13]
 00558B94    mov         eax,dword ptr [ebx+2F0]
 00558B9A    call        SaveAxisScales
 00558B9F    lea         edx,[esi+26]
 00558BA2    mov         eax,dword ptr [ebx+2F4]
 00558BA8    call        SaveAxisScales
 00558BAD    pop         esi
 00558BAE    pop         ebx
 00558BAF    ret
*}
end;

//00558BB0
procedure RestoreAxisScales(Axis:TChartAxis; const tmp:TAxisSavedScales);
begin
{*
 00558BB0    push        ebx
 00558BB1    push        esi
 00558BB2    mov         esi,edx
 00558BB4    mov         ebx,eax
 00558BB6    mov         dl,byte ptr [esi]
 00558BB8    mov         eax,ebx
 00558BBA    call        TCustomChartAxis.SetAutomatic
 00558BBF    mov         dl,byte ptr [esi+1]
 00558BC2    mov         eax,ebx
 00558BC4    call        TCustomChartAxis.SetAutomaticMinimum
 00558BC9    mov         dl,byte ptr [esi+2]
 00558BCC    mov         eax,ebx
 00558BCE    call        TCustomChartAxis.SetAutomaticMaximum
 00558BD3    cmp         byte ptr [ebx+4],0
>00558BD7    jne         00558BEC
 00558BD9    push        dword ptr [esi+7]
 00558BDC    push        dword ptr [esi+3]
 00558BDF    push        dword ptr [esi+0F]
 00558BE2    push        dword ptr [esi+0B]
 00558BE5    mov         eax,ebx
 00558BE7    call        TCustomChartAxis.SetMinMax
 00558BEC    pop         esi
 00558BED    pop         ebx
 00558BEE    ret
*}
end;

//00558BF0
procedure TCustomChart.RestoreScales(const Saved:TAllAxisSavedScales);
begin
{*
 00558BF0    push        ebx
 00558BF1    push        esi
 00558BF2    mov         esi,edx
 00558BF4    mov         ebx,eax
 00558BF6    mov         edx,esi
 00558BF8    mov         eax,dword ptr [ebx+2E8]
 00558BFE    call        RestoreAxisScales
 00558C03    lea         edx,[esi+39]
 00558C06    mov         eax,dword ptr [ebx+2EC]
 00558C0C    call        RestoreAxisScales
 00558C11    lea         edx,[esi+13]
 00558C14    mov         eax,dword ptr [ebx+2F0]
 00558C1A    call        RestoreAxisScales
 00558C1F    lea         edx,[esi+26]
 00558C22    mov         eax,dword ptr [ebx+2F4]
 00558C28    call        RestoreAxisScales
 00558C2D    pop         esi
 00558C2E    pop         ebx
 00558C2F    ret
*}
end;

//00558C30
procedure TCustomChart.SetBackWall(Value:TChartWall);
begin
{*
 00558C30    mov         eax,dword ptr [eax+34C]
 00558C36    mov         ecx,dword ptr [eax]
 00558C38    call        dword ptr [ecx+8]
 00558C3B    ret
*}
end;

//00558C3C
function TCustomChart.GetFrame:TChartPen;
begin
{*
 00558C3C    mov         edx,dword ptr [eax+34C]
 00558C42    test        edx,edx
>00558C44    je          00558C4A
 00558C46    mov         eax,dword ptr [edx+10]
 00558C49    ret
 00558C4A    xor         eax,eax
 00558C4C    ret
*}
end;

//00558C50
procedure TCustomChart.SetFrame(Value:TChartPen);
begin
{*
 00558C50    mov         eax,dword ptr [eax+34C]
 00558C56    mov         eax,dword ptr [eax+10]
 00558C59    mov         ecx,dword ptr [eax]
 00558C5B    call        dword ptr [ecx+8]
 00558C5E    ret
*}
end;

//00558C60
function TCustomChart.GetBackColor:TColor;
begin
{*
 00558C60    mov         eax,dword ptr [eax+34C]
 00558C66    mov         eax,dword ptr [eax+4]
 00558C69    ret
*}
end;

//00558C6C
procedure TCustomChart.SetBackColor(Value:TColor);
begin
{*
 00558C6C    push        ebx
 00558C6D    mov         ebx,eax
 00558C6F    mov         eax,dword ptr [ebx+34C]
 00558C75    call        TCustomChartWall.SetColor
 00558C7A    cmp         dword ptr [ebx+30],0
>00558C7E    je          00558C96
 00558C80    test        byte ptr [ebx+1C],1
>00558C84    jne         00558C96
 00558C86    mov         eax,dword ptr [ebx+34C]
 00558C8C    mov         eax,dword ptr [eax+8]
 00558C8F    xor         edx,edx
 00558C91    call        TBrush.SetStyle
 00558C96    pop         ebx
 00558C97    ret
*}
end;

//00558C98
function TCustomChart.IsFreeSeriesColor(AColor:TColor; CheckBackground:Boolean):Boolean;
begin
{*
 00558C98    push        ebx
 00558C99    push        esi
 00558C9A    push        edi
 00558C9B    push        ebp
 00558C9C    add         esp,0FFFFFFF8
 00558C9F    mov         byte ptr [esp],cl
 00558CA2    mov         esi,edx
 00558CA4    mov         ebx,eax
 00558CA6    mov         eax,ebx
 00558CA8    call        TCustomAxisPanel.SeriesCount
 00558CAD    mov         edi,eax
 00558CAF    dec         edi
 00558CB0    test        edi,edi
>00558CB2    jl          00558CEB
 00558CB4    inc         edi
 00558CB5    xor         ebp,ebp
 00558CB7    mov         edx,ebp
 00558CB9    mov         eax,ebx
 00558CBB    call        TCustomAxisPanel.GetSeries
 00558CC0    mov         eax,dword ptr [eax+34]
 00558CC3    mov         dword ptr [esp+4],eax
 00558CC7    cmp         esi,dword ptr [esp+4]
>00558CCB    je          00558CE3
 00558CCD    cmp         byte ptr [esp],0
>00558CD1    je          00558CE7
 00558CD3    cmp         esi,dword ptr [ebx+70]
>00558CD6    je          00558CE3
 00558CD8    mov         eax,ebx
 00558CDA    call        TCustomChart.GetBackColor
 00558CDF    cmp         esi,eax
>00558CE1    jne         00558CE7
 00558CE3    xor         eax,eax
>00558CE5    jmp         00558D07
 00558CE7    inc         ebp
 00558CE8    dec         edi
>00558CE9    jne         00558CB7
 00558CEB    cmp         byte ptr [esp],0
>00558CEF    je          00558D05
 00558CF1    cmp         esi,dword ptr [ebx+70]
>00558CF4    je          00558D01
 00558CF6    mov         eax,ebx
 00558CF8    call        TCustomChart.GetBackColor
 00558CFD    cmp         esi,eax
>00558CFF    jne         00558D05
 00558D01    xor         eax,eax
>00558D03    jmp         00558D07
 00558D05    mov         al,1
 00558D07    pop         ecx
 00558D08    pop         edx
 00558D09    pop         ebp
 00558D0A    pop         edi
 00558D0B    pop         esi
 00558D0C    pop         ebx
 00558D0D    ret
*}
end;

//00558D10
procedure TCustomChart.SetLeftWall(Value:TChartWall);
begin
{*
 00558D10    mov         eax,dword ptr [eax+358]
 00558D16    mov         ecx,dword ptr [eax]
 00558D18    call        dword ptr [ecx+8]
 00558D1B    ret
*}
end;

//00558D1C
procedure TCustomChart.SetBottomWall(Value:TChartWall);
begin
{*
 00558D1C    mov         eax,dword ptr [eax+350]
 00558D22    mov         ecx,dword ptr [eax]
 00558D24    call        dword ptr [ecx+8]
 00558D27    ret
*}
end;

//00558D28
procedure DrawTitleFoot;
begin
{*
 00558D28    push        ebp
 00558D29    mov         ebp,esp
 00558D2B    mov         eax,dword ptr [ebp+8]
 00558D2E    mov         eax,dword ptr [eax-4]
 00558D31    mov         eax,dword ptr [eax+3B0]
 00558D37    cmp         byte ptr [eax+30],0
>00558D3B    je          00558D47
 00558D3D    mov         edx,dword ptr [ebp+8]
 00558D40    mov         dl,1
 00558D42    call        TChartTitle.Draw
 00558D47    mov         eax,dword ptr [ebp+8]
 00558D4A    mov         eax,dword ptr [eax-4]
 00558D4D    mov         eax,dword ptr [eax+354]
 00558D53    cmp         byte ptr [eax+30],0
>00558D57    je          00558D63
 00558D59    mov         edx,dword ptr [ebp+8]
 00558D5C    xor         edx,edx
 00558D5E    call        TChartTitle.Draw
 00558D63    pop         ebp
 00558D64    ret
*}
end;

//00558D68
procedure TCustomChart.DrawTitlesAndLegend;
begin
{*
 00558D68    push        ebp
 00558D69    mov         ebp,esp
 00558D6B    push        ecx
 00558D6C    mov         dword ptr [ebp-4],eax
 00558D6F    mov         eax,dword ptr [ebp-4]
 00558D72    mov         eax,dword ptr [eax+280]
 00558D78    mov         edx,dword ptr [eax]
 00558D7A    call        dword ptr [edx+0E0]
 00558D80    mov         eax,dword ptr [ebp-4]
 00558D83    mov         eax,dword ptr [eax+35C]
 00558D89    cmp         byte ptr [eax+5C],0
>00558D8D    je          00558DE1
 00558D8F    mov         eax,dword ptr [ebp-4]
 00558D92    mov         eax,dword ptr [eax+2E0]
 00558D98    call        TChartSeriesList.CountActive
 00558D9D    test        eax,eax
>00558D9F    jle         00558DE1
 00558DA1    mov         eax,dword ptr [ebp-4]
 00558DA4    mov         eax,dword ptr [eax+35C]
 00558DAA    call        TCustomChartLegend.GetVertical
 00558DAF    test        al,al
>00558DB1    je          00558DCA
 00558DB3    mov         eax,dword ptr [ebp-4]
 00558DB6    mov         eax,dword ptr [eax+35C]
 00558DBC    mov         edx,dword ptr [eax]
 00558DBE    call        dword ptr [edx+10]
 00558DC1    push        ebp
 00558DC2    call        DrawTitleFoot
 00558DC7    pop         ecx
>00558DC8    jmp         00558DE8
 00558DCA    push        ebp
 00558DCB    call        DrawTitleFoot
 00558DD0    pop         ecx
 00558DD1    mov         eax,dword ptr [ebp-4]
 00558DD4    mov         eax,dword ptr [eax+35C]
 00558DDA    mov         edx,dword ptr [eax]
 00558DDC    call        dword ptr [edx+10]
>00558DDF    jmp         00558DE8
 00558DE1    push        ebp
 00558DE2    call        DrawTitleFoot
 00558DE7    pop         ecx
 00558DE8    mov         eax,dword ptr [ebp-4]
 00558DEB    mov         eax,dword ptr [eax+280]
 00558DF1    mov         edx,dword ptr [eax]
 00558DF3    call        dword ptr [edx+0E4]
 00558DF9    pop         ecx
 00558DFA    pop         ebp
 00558DFB    ret
*}
end;

//00558DFC
procedure TCustomChart.DrawImage(const R:TRect);
begin
{*
 00558DFC    mov         ecx,dword ptr [eax+2B0]
 00558E02    cmp         dword ptr [ecx+0C],0
>00558E06    je          00558E18
 00558E08    cmp         byte ptr [eax+348],0
>00558E0F    jne         00558E18
 00558E11    xor         ecx,ecx
 00558E13    call        TCustomTeePanelExtended.DrawBitmap
 00558E18    ret
*}
end;

//00558E1C
function TCustomChart.CalcWallSize(Axis:TCustomChartAxis):Integer;
begin
{*
 00558E1C    xor         ecx,ecx
 00558E1E    cmp         byte ptr [eax+270],0
>00558E25    je          00558E54
 00558E27    cmp         byte ptr [eax+2F8],0
>00558E2E    je          00558E54
 00558E30    cmp         edx,dword ptr [eax+2F0]
>00558E36    jne         00558E43
 00558E38    mov         eax,dword ptr [eax+358]
 00558E3E    mov         ecx,dword ptr [eax+14]
>00558E41    jmp         00558E54
 00558E43    cmp         edx,dword ptr [eax+2EC]
>00558E49    jne         00558E54
 00558E4B    mov         eax,dword ptr [eax+350]
 00558E51    mov         ecx,dword ptr [eax+14]
 00558E54    mov         eax,ecx
 00558E56    ret
*}
end;

//00558E58
procedure PrepareWallCanvas(AWall:TChartWall);
begin
{*
 00558E58    push        ebp
 00558E59    mov         ebp,esp
 00558E5B    push        ebx
 00558E5C    mov         ebx,eax
 00558E5E    mov         eax,dword ptr [ebp+8]
 00558E61    mov         eax,dword ptr [eax-4]
 00558E64    mov         eax,dword ptr [eax+280]
 00558E6A    mov         edx,dword ptr [ebx+10]
 00558E6D    call        TTeeCanvas.AssignVisiblePen
 00558E72    mov         eax,dword ptr [ebx+8]
 00558E75    call        TChartBrush.HasBitmap
 00558E7A    test        al,al
>00558E7C    je          00558E9F
 00558E7E    mov         eax,dword ptr [ebx+8]
 00558E81    call        TBrush.GetBitmap
 00558E86    mov         edx,eax
 00558E88    mov         eax,dword ptr [ebp+8]
 00558E8B    mov         eax,dword ptr [eax-4]
 00558E8E    mov         eax,dword ptr [eax+280]
 00558E94    mov         eax,dword ptr [eax+10]
 00558E97    call        TBrush.SetBitmap
 00558E9C    pop         ebx
 00558E9D    pop         ebp
 00558E9E    ret
 00558E9F    mov         eax,dword ptr [ebp+8]
 00558EA2    mov         eax,dword ptr [eax-4]
 00558EA5    mov         eax,dword ptr [eax+280]
 00558EAB    mov         eax,dword ptr [eax+10]
 00558EAE    xor         edx,edx
 00558EB0    call        TBrush.SetBitmap
 00558EB5    cmp         dword ptr [ebx+4],20000000
>00558EBC    jne         00558ECA
 00558EBE    mov         eax,dword ptr [ebx+8]
 00558EC1    call        TBrush.GetStyle
 00558EC6    test        al,al
>00558EC8    je          00558EED
 00558ECA    mov         eax,dword ptr [ebx+8]
 00558ECD    call        TBrush.GetColor
 00558ED2    push        eax
 00558ED3    mov         eax,dword ptr [ebx+8]
 00558ED6    call        TBrush.GetStyle
 00558EDB    mov         ecx,eax
 00558EDD    mov         eax,dword ptr [ebp+8]
 00558EE0    mov         eax,dword ptr [eax-4]
 00558EE3    mov         edx,dword ptr [ebx+4]
 00558EE6    call        TCustomTeePanel.SetBrushCanvas
>00558EEB    jmp         00558F03
 00558EED    mov         eax,dword ptr [ebp+8]
 00558EF0    mov         eax,dword ptr [eax-4]
 00558EF3    mov         eax,dword ptr [eax+280]
 00558EF9    mov         eax,dword ptr [eax+10]
 00558EFC    mov         dl,1
 00558EFE    call        TBrush.SetStyle
 00558F03    pop         ebx
 00558F04    pop         ebp
 00558F05    ret
*}
end;

//00558F08
procedure TCustomChart.DrawWalls;
begin
{*
 00558F08    push        ebp
 00558F09    mov         ebp,esp
 00558F0B    add         esp,0FFFFFFDC
 00558F0E    push        ebx
 00558F0F    push        esi
 00558F10    push        edi
 00558F11    mov         dword ptr [ebp-4],eax
 00558F14    push        ebp
 00558F15    mov         eax,dword ptr [ebp-4]
 00558F18    mov         eax,dword ptr [eax+34C]
 00558F1E    call        PrepareWallCanvas
 00558F23    pop         ecx
 00558F24    mov         eax,dword ptr [ebp-4]
 00558F27    mov         esi,dword ptr [eax+34C]
 00558F2D    mov         eax,dword ptr [ebp-4]
 00558F30    cmp         byte ptr [eax+270],0
>00558F37    je          00559017
 00558F3D    mov         eax,dword ptr [ebp-4]
 00558F40    cmp         byte ptr [eax+2F8],0
>00558F47    je          0055903D
 00558F4D    mov         eax,dword ptr [ebp-4]
 00558F50    cmp         dword ptr [eax+278],0
>00558F57    jge         00558F60
 00558F59    mov         ebx,dword ptr [esi+14]
 00558F5C    neg         ebx
>00558F5E    jmp         00558F63
 00558F60    mov         ebx,dword ptr [esi+14]
 00558F63    cmp         dword ptr [esi+14],0
>00558F67    jle         00558FD8
 00558F69    mov         eax,dword ptr [ebp-4]
 00558F6C    lea         edi,[eax+286]
 00558F72    mov         eax,dword ptr [edi+4]
 00558F75    push        eax
 00558F76    mov         eax,dword ptr [ebp-4]
 00558F79    mov         edx,dword ptr [eax+2EC]
 00558F7F    mov         eax,dword ptr [ebp-4]
 00558F82    mov         ecx,dword ptr [eax]
 00558F84    call        dword ptr [ecx+0F4]
 00558F8A    add         eax,dword ptr [edi+0C]
 00558F8D    push        eax
 00558F8E    mov         eax,dword ptr [ebp-4]
 00558F91    mov         eax,dword ptr [eax+278]
 00558F97    push        eax
 00558F98    mov         eax,dword ptr [ebp-4]
 00558F9B    add         ebx,dword ptr [eax+278]
 00558FA1    push        ebx
 00558FA2    mov         eax,esi
 00558FA4    call        TCustomChartWall.ApplyDark3D
 00558FA9    push        eax
 00558FAA    mov         eax,dword ptr [ebp-4]
 00558FAD    mov         edx,dword ptr [eax+2F0]
 00558FB3    mov         eax,dword ptr [ebp-4]
 00558FB6    mov         ecx,dword ptr [eax]
 00558FB8    call        dword ptr [ecx+0F4]
 00558FBE    mov         edx,dword ptr [edi]
 00558FC0    sub         edx,eax
 00558FC2    mov         ecx,dword ptr [edi+8]
 00558FC5    mov         eax,dword ptr [ebp-4]
 00558FC8    mov         eax,dword ptr [eax+280]
 00558FCE    mov         ebx,dword ptr [eax]
 00558FD0    call        dword ptr [ebx+0C8]
>00558FD6    jmp         0055903D
 00558FD8    mov         eax,dword ptr [ebp-4]
 00558FDB    lea         ebx,[eax+286]
 00558FE1    mov         eax,dword ptr [ebx+0C]
 00558FE4    push        eax
 00558FE5    lea         eax,[ebp-24]
 00558FE8    push        eax
 00558FE9    mov         ecx,dword ptr [ebx+8]
 00558FEC    mov         edx,dword ptr [ebx+4]
 00558FEF    dec         edx
 00558FF0    mov         eax,dword ptr [ebx]
 00558FF2    inc         eax
 00558FF3    call        Rect
 00558FF8    lea         edx,[ebp-24]
 00558FFB    mov         eax,dword ptr [ebp-4]
 00558FFE    mov         ecx,dword ptr [eax+278]
 00559004    mov         eax,dword ptr [ebp-4]
 00559007    mov         eax,dword ptr [eax+280]
 0055900D    mov         ebx,dword ptr [eax]
 0055900F    call        dword ptr [ebx+10C]
>00559015    jmp         0055903D
 00559017    mov         eax,dword ptr [ebp-4]
 0055901A    add         eax,286
 0055901F    mov         edx,dword ptr [eax+8]
 00559022    inc         edx
 00559023    push        edx
 00559024    mov         edx,dword ptr [eax+0C]
 00559027    inc         edx
 00559028    push        edx
 00559029    mov         edx,dword ptr [ebp-4]
 0055902C    mov         edx,dword ptr [edx+280]
 00559032    mov         ecx,dword ptr [eax+4]
 00559035    mov         eax,dword ptr [eax]
 00559037    xchg        eax,edx
 00559038    mov         ebx,dword ptr [eax]
 0055903A    call        dword ptr [ebx+50]
 0055903D    mov         eax,dword ptr [ebp-4]
 00559040    mov         eax,dword ptr [eax+2B0]
 00559046    cmp         dword ptr [eax+0C],0
>0055904A    je          00559094
 0055904C    mov         eax,dword ptr [ebp-4]
 0055904F    cmp         byte ptr [eax+348],0
>00559056    je          00559094
 00559058    mov         eax,dword ptr [ebp-4]
 0055905B    push        esi
 0055905C    lea         esi,[eax+286]
 00559062    lea         edi,[ebp-14]
 00559065    movs        dword ptr [edi],dword ptr [esi]
 00559066    movs        dword ptr [edi],dword ptr [esi]
 00559067    movs        dword ptr [edi],dword ptr [esi]
 00559068    movs        dword ptr [edi],dword ptr [esi]
 00559069    pop         esi
 0055906A    mov         eax,dword ptr [esi+10]
 0055906D    cmp         byte ptr [eax+21],0
>00559071    je          00559080
 00559073    push        0FF
 00559075    push        0
 00559077    lea         eax,[ebp-14]
 0055907A    push        eax
 0055907B    call        USER32.InflateRect
 00559080    mov         eax,dword ptr [ebp-4]
 00559083    mov         ecx,dword ptr [eax+278]
 00559089    lea         edx,[ebp-14]
 0055908C    mov         eax,dword ptr [ebp-4]
 0055908F    call        TCustomTeePanelExtended.DrawBitmap
 00559094    mov         eax,dword ptr [ebp-4]
 00559097    cmp         byte ptr [eax+270],0
>0055909E    je          005591F8
 005590A4    mov         eax,dword ptr [ebp-4]
 005590A7    cmp         byte ptr [eax+2F8],0
>005590AE    je          005591F8
 005590B4    push        ebp
 005590B5    mov         eax,dword ptr [ebp-4]
 005590B8    mov         eax,dword ptr [eax+358]
 005590BE    call        PrepareWallCanvas
 005590C3    pop         ecx
 005590C4    mov         eax,dword ptr [ebp-4]
 005590C7    mov         esi,dword ptr [eax+358]
 005590CD    mov         eax,dword ptr [ebp-4]
 005590D0    lea         ebx,[eax+286]
 005590D6    mov         edi,dword ptr [esi+14]
 005590D9    test        edi,edi
>005590DB    jle         00559126
 005590DD    mov         eax,dword ptr [ebx+4]
 005590E0    push        eax
 005590E1    mov         eax,dword ptr [ebp-4]
 005590E4    mov         edx,dword ptr [eax+2EC]
 005590EA    mov         eax,dword ptr [ebp-4]
 005590ED    mov         ecx,dword ptr [eax]
 005590EF    call        dword ptr [ecx+0F4]
 005590F5    add         eax,dword ptr [ebx+0C]
 005590F8    push        eax
 005590F9    push        0
 005590FB    mov         eax,dword ptr [ebp-4]
 005590FE    mov         eax,dword ptr [eax+278]
 00559104    push        eax
 00559105    mov         eax,esi
 00559107    call        TCustomChartWall.ApplyDark3D
 0055910C    push        eax
 0055910D    mov         edx,dword ptr [ebx]
 0055910F    sub         edx,edi
 00559111    mov         eax,dword ptr [ebp-4]
 00559114    mov         eax,dword ptr [eax+280]
 0055911A    mov         ecx,dword ptr [ebx]
 0055911C    mov         ebx,dword ptr [eax]
 0055911E    call        dword ptr [ebx+0C8]
>00559124    jmp         00559161
 00559126    mov         eax,dword ptr [ebp-4]
 00559129    mov         edx,dword ptr [eax+2EC]
 0055912F    mov         eax,dword ptr [ebp-4]
 00559132    mov         ecx,dword ptr [eax]
 00559134    call        dword ptr [ecx+0F4]
 0055913A    add         eax,dword ptr [ebx+0C]
 0055913D    push        eax
 0055913E    push        0
 00559140    mov         eax,dword ptr [ebp-4]
 00559143    mov         eax,dword ptr [eax+278]
 00559149    inc         eax
 0055914A    push        eax
 0055914B    mov         eax,dword ptr [ebp-4]
 0055914E    mov         eax,dword ptr [eax+280]
 00559154    mov         ecx,dword ptr [ebx+4]
 00559157    mov         edx,dword ptr [ebx]
 00559159    mov         ebx,dword ptr [eax]
 0055915B    call        dword ptr [ebx+114]
 00559161    push        ebp
 00559162    mov         eax,dword ptr [ebp-4]
 00559165    mov         eax,dword ptr [eax+350]
 0055916B    call        PrepareWallCanvas
 00559170    pop         ecx
 00559171    mov         eax,dword ptr [ebp-4]
 00559174    mov         edi,dword ptr [eax+350]
 0055917A    mov         eax,dword ptr [ebp-4]
 0055917D    lea         esi,[eax+286]
 00559183    mov         ebx,dword ptr [esi+0C]
 00559186    mov         eax,dword ptr [ebp-4]
 00559189    mov         eax,dword ptr [eax+280]
 0055918F    mov         edx,dword ptr [eax]
 00559191    call        dword ptr [edx+98]
 00559197    test        al,al
>00559199    je          0055919C
 0055919B    inc         ebx
 0055919C    cmp         dword ptr [edi+14],0
>005591A0    jle         005591D3
 005591A2    push        ebx
 005591A3    add         ebx,dword ptr [edi+14]
 005591A6    push        ebx
 005591A7    push        0
 005591A9    mov         eax,dword ptr [ebp-4]
 005591AC    mov         eax,dword ptr [eax+278]
 005591B2    push        eax
 005591B3    mov         eax,edi
 005591B5    call        TCustomChartWall.ApplyDark3D
 005591BA    push        eax
 005591BB    mov         ecx,dword ptr [esi+8]
 005591BE    mov         edx,dword ptr [esi]
 005591C0    mov         eax,dword ptr [ebp-4]
 005591C3    mov         eax,dword ptr [eax+280]
 005591C9    mov         ebx,dword ptr [eax]
 005591CB    call        dword ptr [ebx+0C8]
>005591D1    jmp         005591F8
 005591D3    mov         eax,dword ptr [esi+8]
 005591D6    push        eax
 005591D7    push        0
 005591D9    mov         eax,dword ptr [ebp-4]
 005591DC    mov         eax,dword ptr [eax+278]
 005591E2    push        eax
 005591E3    mov         edx,dword ptr [esi]
 005591E5    mov         eax,dword ptr [ebp-4]
 005591E8    mov         eax,dword ptr [eax+280]
 005591EE    mov         ecx,ebx
 005591F0    mov         ebx,dword ptr [eax]
 005591F2    call        dword ptr [ebx+110]
 005591F8    pop         edi
 005591F9    pop         esi
 005591FA    pop         ebx
 005591FB    mov         esp,ebp
 005591FD    pop         ebp
 005591FE    ret
*}
end;

//00559200
procedure ZoomAxis(AAxis:TChartAxis; const tmpA:Double; const tmpB:Double);
begin
{*
 00559200    push        ebp
 00559201    mov         ebp,esp
 00559203    fld         qword ptr [ebp+10]
 00559206    fsub        qword ptr [eax+18]
 00559209    fdiv        qword ptr ds:[6ECC78];AnimatedZoomFactor:Double
 0055920F    fadd        qword ptr [eax+18]
 00559212    add         esp,0FFFFFFF8
 00559215    fstp        qword ptr [esp]
 00559218    wait
 00559219    fld         qword ptr [eax+10]
 0055921C    fsub        qword ptr [ebp+8]
 0055921F    fdiv        qword ptr ds:[6ECC78];AnimatedZoomFactor:Double
 00559225    fsubr       qword ptr [eax+10]
 00559228    add         esp,0FFFFFFF8
 0055922B    fstp        qword ptr [esp]
 0055922E    wait
 0055922F    call        TCustomChartAxis.SetMinMax
 00559234    pop         ebp
 00559235    ret         10
*}
end;

//00559238
procedure TCustomChart.DoZoom(const TopI:Double; const TopF:Double; const BotI:Double; const BotF:Double; const LefI:Double; const LefF:Double; const RigI:Double; const RigF:Double);
begin
{*
 00559238    push        ebp
 00559239    mov         ebp,esp
 0055923B    add         esp,0FFFFFFB4
 0055923E    push        ebx
 0055923F    push        esi
 00559240    push        edi
 00559241    mov         ebx,eax
 00559243    cmp         byte ptr [ebx+360],0
>0055924A    je          0055926D
 0055924C    lea         edx,[ebp-4C]
 0055924F    mov         eax,ebx
 00559251    call        TCustomChart.SaveScales
 00559256    lea         esi,[ebp-4C]
 00559259    lea         edi,[ebx+361]
 0055925F    mov         ecx,13
 00559264    rep movs    dword ptr [edi],dword ptr [esi]
 00559266    mov         byte ptr [ebx+360],0
 0055926D    cmp         byte ptr [ebx+2AC],0
>00559274    je          005592E7
 00559276    mov         esi,dword ptr [ebx+2A8]
 0055927C    dec         esi
 0055927D    test        esi,esi
>0055927F    jle         005592E7
 00559281    push        dword ptr [ebp+24]
 00559284    push        dword ptr [ebp+20]
 00559287    push        dword ptr [ebp+1C]
 0055928A    push        dword ptr [ebp+18]
 0055928D    mov         eax,dword ptr [ebx+2F0]
 00559293    call        ZoomAxis
 00559298    push        dword ptr [ebp+14]
 0055929B    push        dword ptr [ebp+10]
 0055929E    push        dword ptr [ebp+0C]
 005592A1    push        dword ptr [ebp+8]
 005592A4    mov         eax,dword ptr [ebx+2F4]
 005592AA    call        ZoomAxis
 005592AF    push        dword ptr [ebp+44]
 005592B2    push        dword ptr [ebp+40]
 005592B5    push        dword ptr [ebp+3C]
 005592B8    push        dword ptr [ebp+38]
 005592BB    mov         eax,dword ptr [ebx+2E8]
 005592C1    call        ZoomAxis
 005592C6    push        dword ptr [ebp+34]
 005592C9    push        dword ptr [ebp+30]
 005592CC    push        dword ptr [ebp+2C]
 005592CF    push        dword ptr [ebp+28]
 005592D2    mov         eax,dword ptr [ebx+2EC]
 005592D8    call        ZoomAxis
 005592DD    mov         eax,ebx
 005592DF    call        TControl.Refresh
 005592E4    dec         esi
>005592E5    jne         00559281
 005592E7    push        dword ptr [ebp+24]
 005592EA    push        dword ptr [ebp+20]
 005592ED    push        dword ptr [ebp+1C]
 005592F0    push        dword ptr [ebp+18]
 005592F3    mov         eax,dword ptr [ebx+2F0]
 005592F9    call        TCustomChartAxis.SetMinMax
 005592FE    push        dword ptr [ebp+14]
 00559301    push        dword ptr [ebp+10]
 00559304    push        dword ptr [ebp+0C]
 00559307    push        dword ptr [ebp+8]
 0055930A    mov         eax,dword ptr [ebx+2F4]
 00559310    call        TCustomChartAxis.SetMinMax
 00559315    push        dword ptr [ebp+44]
 00559318    push        dword ptr [ebp+40]
 0055931B    push        dword ptr [ebp+3C]
 0055931E    push        dword ptr [ebp+38]
 00559321    mov         eax,dword ptr [ebx+2E8]
 00559327    call        TCustomChartAxis.SetMinMax
 0055932C    push        dword ptr [ebp+34]
 0055932F    push        dword ptr [ebp+30]
 00559332    push        dword ptr [ebp+2C]
 00559335    push        dword ptr [ebp+28]
 00559338    mov         eax,dword ptr [ebx+2EC]
 0055933E    call        TCustomChartAxis.SetMinMax
 00559343    mov         byte ptr [ebx+2BC],1
 0055934A    cmp         word ptr [ebx+2DA],0
>00559352    je          00559362
 00559354    mov         edx,ebx
 00559356    mov         eax,dword ptr [ebx+2DC]
 0055935C    call        dword ptr [ebx+2D8]
 00559362    pop         edi
 00559363    pop         esi
 00559364    pop         ebx
 00559365    mov         esp,ebp
 00559367    pop         ebp
 00559368    ret         40
*}
end;

//0055936C
function ClickedAxis(Axis:TCustomChartAxis):Boolean;
begin
{*
 0055936C    push        ebp
 0055936D    mov         ebp,esp
 0055936F    push        ebx
 00559370    mov         ebx,eax
 00559372    mov         eax,dword ptr [ebp+8]
 00559375    mov         ecx,dword ptr [eax-4]
 00559378    mov         eax,dword ptr [ebp+8]
 0055937B    mov         edx,dword ptr [eax-8]
 0055937E    mov         eax,ebx
 00559380    call        TCustomChartAxis.Clicked
 00559385    test        al,al
>00559387    je          0055939B
 00559389    mov         edx,dword ptr [ebp+8]
 0055938C    mov         edx,dword ptr [edx-0C]
 0055938F    mov         byte ptr [edx],2
 00559392    mov         edx,dword ptr [ebp+8]
 00559395    mov         edx,dword ptr [edx-0C]
 00559398    mov         dword ptr [edx+9],ebx
 0055939B    pop         ebx
 0055939C    pop         ebp
 0055939D    ret
*}
end;

//005593A0
procedure TCustomChart.CalcClickedPart(Pos:TPoint; var Part:TChartClickedPart);
begin
{*
 005593A0    push        ebp
 005593A1    mov         ebp,esp
 005593A3    add         esp,0FFFFFFF0
 005593A6    push        ebx
 005593A7    push        esi
 005593A8    push        edi
 005593A9    mov         esi,edx
 005593AB    lea         edi,[ebp-8]
 005593AE    movs        dword ptr [edi],dword ptr [esi]
 005593AF    movs        dword ptr [edi],dword ptr [esi]
 005593B0    mov         dword ptr [ebp-0C],ecx
 005593B3    mov         esi,eax
 005593B5    mov         eax,dword ptr [ebp-0C]
 005593B8    mov         byte ptr [eax],0
 005593BB    mov         eax,dword ptr [ebp-0C]
 005593BE    mov         dword ptr [eax+1],0FFFFFFFF
 005593C5    mov         eax,dword ptr [ebp-0C]
 005593C8    xor         edx,edx
 005593CA    mov         dword ptr [eax+5],edx
 005593CD    mov         eax,dword ptr [ebp-0C]
 005593D0    xor         edx,edx
 005593D2    mov         dword ptr [eax+9],edx
 005593D5    mov         eax,esi
 005593D7    call        TCustomAxisPanel.SeriesCount
 005593DC    mov         ebx,eax
 005593DE    dec         ebx
 005593DF    cmp         ebx,0
>005593E2    jl          00559439
 005593E4    mov         edx,ebx
 005593E6    mov         eax,esi
 005593E8    call        TCustomAxisPanel.GetSeries
 005593ED    mov         dword ptr [ebp-10],eax
 005593F0    mov         eax,dword ptr [ebp-10]
 005593F3    cmp         byte ptr [eax+30],0
>005593F7    je          00559433
 005593F9    mov         ecx,dword ptr [ebp-4]
 005593FC    mov         edx,dword ptr [ebp-8]
 005593FF    mov         eax,dword ptr [ebp-10]
 00559402    mov         edi,dword ptr [eax]
 00559404    call        dword ptr [edi+0F4]
 0055940A    mov         edx,dword ptr [ebp-0C]
 0055940D    mov         dword ptr [edx+1],eax
 00559410    mov         eax,dword ptr [ebp-0C]
 00559413    cmp         dword ptr [eax+1],0FFFFFFFF
>00559417    je          00559433
 00559419    mov         edx,ebx
 0055941B    mov         eax,esi
 0055941D    call        TCustomAxisPanel.GetSeries
 00559422    mov         edx,dword ptr [ebp-0C]
 00559425    mov         dword ptr [edx+5],eax
 00559428    mov         eax,dword ptr [ebp-0C]
 0055942B    mov         byte ptr [eax],3
>0055942E    jmp         005594FE
 00559433    dec         ebx
 00559434    cmp         ebx,0FFFFFFFF
>00559437    jne         005593E4
 00559439    mov         eax,dword ptr [esi+340]
 0055943F    mov         edi,dword ptr [eax+8]
 00559442    dec         edi
 00559443    test        edi,edi
>00559445    jl          0055946A
 00559447    inc         edi
 00559448    xor         ebx,ebx
 0055944A    push        ebp
 0055944B    mov         edx,ebx
 0055944D    mov         eax,dword ptr [esi+340]
 00559453    call        TList.Get
 00559458    call        ClickedAxis
 0055945D    pop         ecx
 0055945E    test        al,al
>00559460    jne         005594FE
 00559466    inc         ebx
 00559467    dec         edi
>00559468    jne         0055944A
 0055946A    mov         ecx,dword ptr [ebp-4]
 0055946D    mov         edx,dword ptr [ebp-8]
 00559470    mov         eax,dword ptr [esi+3B0]
 00559476    call        TChartTitle.Clicked
 0055947B    test        al,al
>0055947D    je          00559487
 0055947F    mov         eax,dword ptr [ebp-0C]
 00559482    mov         byte ptr [eax],4
>00559485    jmp         005594FE
 00559487    mov         ecx,dword ptr [ebp-4]
 0055948A    mov         edx,dword ptr [ebp-8]
 0055948D    mov         eax,dword ptr [esi+354]
 00559493    call        TChartTitle.Clicked
 00559498    test        al,al
>0055949A    je          005594A4
 0055949C    mov         eax,dword ptr [ebp-0C]
 0055949F    mov         byte ptr [eax],5
>005594A2    jmp         005594FE
 005594A4    push        dword ptr [ebp-4]
 005594A7    push        dword ptr [ebp-8]
 005594AA    lea         eax,[esi+286]
 005594B0    push        eax
 005594B1    call        USER32.PtInRect
 005594B6    test        eax,eax
>005594B8    je          005594D1
 005594BA    mov         eax,dword ptr [esi+2E0]
 005594C0    call        TChartSeriesList.CountActive
 005594C5    test        eax,eax
>005594C7    jle         005594D1
 005594C9    mov         eax,dword ptr [ebp-0C]
 005594CC    mov         byte ptr [eax],6
>005594CF    jmp         005594FE
 005594D1    mov         ebx,dword ptr [esi+35C]
 005594D7    cmp         byte ptr [ebx+5C],0
>005594DB    je          005594FE
 005594DD    mov         ecx,dword ptr [ebp-4]
 005594E0    mov         edx,dword ptr [ebp-8]
 005594E3    mov         eax,ebx
 005594E5    call        TCustomChartLegend.Clicked
 005594EA    mov         edi,eax
 005594EC    mov         eax,dword ptr [ebp-0C]
 005594EF    mov         dword ptr [eax+1],edi
 005594F2    mov         eax,dword ptr [ebp-0C]
 005594F5    inc         edi
>005594F6    je          005594FE
 005594F8    mov         eax,dword ptr [ebp-0C]
 005594FB    mov         byte ptr [eax],1
 005594FE    pop         edi
 005594FF    pop         esi
 00559500    pop         ebx
 00559501    mov         esp,ebp
 00559503    pop         ebp
 00559504    ret
*}
end;

//00559508
procedure CheckZoomPanning;
begin
{*
 00559508    push        ebp
 00559509    mov         ebp,esp
 0055950B    mov         eax,dword ptr [ebp+8]
 0055950E    mov         eax,dword ptr [eax-4]
 00559511    cmp         byte ptr [eax+2AD],0
>00559518    je          00559574
 0055951A    mov         eax,dword ptr [ebp+8]
 0055951D    mov         al,byte ptr [eax-5]
 00559520    cmp         al,byte ptr ds:[6ECC80];TeeZoomMouseButton:TMouseButton
>00559526    jne         00559574
 00559528    mov         eax,dword ptr [ebp+8]
 0055952B    mov         al,byte ptr [eax-6]
 0055952E    not         eax
 00559530    and         al,byte ptr ds:[6ECC82];TeeZoomKeyShift:TShiftState
>00559536    jne         00559574
 00559538    mov         eax,dword ptr [ebp+8]
 0055953B    mov         eax,dword ptr [eax-4]
 0055953E    xor         edx,edx
 00559540    call        TControl.SetCursor
 00559545    mov         eax,dword ptr [ebp+8]
 00559548    mov         ecx,dword ptr [eax+8]
 0055954B    mov         eax,dword ptr [ebp+8]
 0055954E    mov         edx,dword ptr [eax+0C]
 00559551    mov         eax,dword ptr [ebp+8]
 00559554    mov         eax,dword ptr [eax-4]
 00559557    mov         eax,dword ptr [eax+27C]
 0055955D    call        TZoomPanningRecord.Activate
 00559562    mov         eax,dword ptr [ebp+8]
 00559565    mov         eax,dword ptr [eax-4]
 00559568    call        TCustomTeePanel.DrawZoomRectangle
 0055956D    mov         eax,dword ptr [ebp+8]
 00559570    mov         byte ptr [eax-7],1
 00559574    mov         eax,dword ptr [ebp+8]
 00559577    mov         eax,dword ptr [eax-4]
 0055957A    cmp         byte ptr [eax+2AE],0
>00559581    je          005595D2
 00559583    mov         eax,dword ptr [ebp+8]
 00559586    mov         al,byte ptr [eax-5]
 00559589    cmp         al,byte ptr ds:[6ECC81];TeeScrollMouseButton:TMouseButton
>0055958F    jne         005595D2
 00559591    mov         eax,dword ptr [ebp+8]
 00559594    mov         al,byte ptr [eax-6]
 00559597    not         eax
 00559599    and         al,byte ptr ds:[6ECC83];TeeScrollKeyShift:TShiftState
>0055959F    jne         005595D2
 005595A1    mov         eax,dword ptr [ebp+8]
 005595A4    mov         eax,dword ptr [eax-4]
 005595A7    xor         edx,edx
 005595A9    call        TControl.SetCursor
 005595AE    mov         eax,dword ptr [ebp+8]
 005595B1    mov         ecx,dword ptr [eax+8]
 005595B4    mov         eax,dword ptr [ebp+8]
 005595B7    mov         edx,dword ptr [eax+0C]
 005595BA    mov         eax,dword ptr [ebp+8]
 005595BD    mov         eax,dword ptr [eax-4]
 005595C0    mov         eax,dword ptr [eax+264]
 005595C6    call        TZoomPanningRecord.Activate
 005595CB    mov         eax,dword ptr [ebp+8]
 005595CE    mov         byte ptr [eax-7],1
 005595D2    pop         ebp
 005595D3    ret
*}
end;

//005595D4
procedure CheckBackground;
begin
{*
 005595D4    push        ebp
 005595D5    mov         ebp,esp
 005595D7    push        ebx
 005595D8    mov         eax,dword ptr [ebp+8]
 005595DB    mov         eax,dword ptr [eax-4]
 005595DE    cmp         word ptr [eax+3CA],0
>005595E6    je          0055963A
 005595E8    mov         eax,dword ptr [ebp+8]
 005595EB    mov         eax,dword ptr [eax-4]
 005595EE    mov         byte ptr [eax+285],1
 005595F5    mov         eax,dword ptr [ebp+8]
 005595F8    mov         al,byte ptr [eax-6]
 005595FB    push        eax
 005595FC    mov         eax,dword ptr [ebp+8]
 005595FF    mov         eax,dword ptr [eax+0C]
 00559602    push        eax
 00559603    mov         eax,dword ptr [ebp+8]
 00559606    mov         eax,dword ptr [eax+8]
 00559609    push        eax
 0055960A    mov         eax,dword ptr [ebp+8]
 0055960D    mov         ebx,dword ptr [eax-4]
 00559610    mov         eax,dword ptr [ebp+8]
 00559613    mov         cl,byte ptr [eax-5]
 00559616    mov         eax,dword ptr [ebp+8]
 00559619    mov         edx,dword ptr [eax-4]
 0055961C    mov         eax,dword ptr [ebx+3CC]
 00559622    call        dword ptr [ebx+3C8]
 00559628    mov         eax,dword ptr [ebp+8]
 0055962B    mov         eax,dword ptr [eax-4]
 0055962E    mov         al,byte ptr [eax+285]
 00559634    mov         edx,dword ptr [ebp+8]
 00559637    mov         byte ptr [edx-7],al
 0055963A    pop         ebx
 0055963B    pop         ebp
 0055963C    ret
*}
end;

//00559640
procedure TCustomChart.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 00559640    push        ebp
 00559641    mov         ebp,esp
 00559643    add         esp,0FFFFFFE4
 00559646    push        ebx
 00559647    mov         byte ptr [ebp-6],cl
 0055964A    mov         byte ptr [ebp-5],dl
 0055964D    mov         dword ptr [ebp-4],eax
 00559650    mov         eax,dword ptr [ebp+0C]
 00559653    push        eax
 00559654    mov         eax,dword ptr [ebp+8]
 00559657    push        eax
 00559658    mov         cl,byte ptr [ebp-6]
 0055965B    mov         dl,byte ptr [ebp-5]
 0055965E    mov         eax,dword ptr [ebp-4]
 00559661    call        TControl.MouseDown
 00559666    mov         eax,dword ptr [ebp-4]
 00559669    mov         eax,dword ptr [eax+27C]
 0055966F    cmp         byte ptr [eax+4],0
>00559673    jne         00559836
 00559679    mov         eax,dword ptr [ebp-4]
 0055967C    mov         eax,dword ptr [eax+264]
 00559682    cmp         byte ptr [eax+4],0
>00559686    jne         00559836
 0055968C    mov         eax,dword ptr [ebp-4]
 0055968F    cmp         byte ptr [eax+285],0
>00559696    je          005596A7
 00559698    mov         eax,dword ptr [ebp-4]
 0055969B    mov         byte ptr [eax+285],0
>005596A2    jmp         00559836
 005596A7    lea         ecx,[ebp-1C]
 005596AA    mov         edx,dword ptr [ebp+8]
 005596AD    mov         eax,dword ptr [ebp+0C]
 005596B0    call        Point
 005596B5    lea         edx,[ebp-1C]
 005596B8    lea         ecx,[ebp-14]
 005596BB    mov         eax,dword ptr [ebp-4]
 005596BE    call        TCustomChart.CalcClickedPart
 005596C3    mov         byte ptr [ebp-7],0
 005596C7    mov         al,byte ptr [ebp-14]
 005596CA    dec         al
>005596CC    je          005596E7
 005596CE    dec         al
>005596D0    je          005597B4
 005596D6    dec         al
>005596D8    je          00559734
 005596DA    sub         al,3
>005596DC    je          0055980B
>005596E2    jmp         0055981F
 005596E7    mov         eax,dword ptr [ebp-4]
 005596EA    cmp         word ptr [eax+3D2],0
>005596F2    je          0055981F
 005596F8    mov         eax,dword ptr [ebp-4]
 005596FB    mov         byte ptr [eax+285],1
 00559702    mov         al,byte ptr [ebp-6]
 00559705    push        eax
 00559706    mov         eax,dword ptr [ebp+0C]
 00559709    push        eax
 0055970A    mov         eax,dword ptr [ebp+8]
 0055970D    push        eax
 0055970E    mov         ebx,dword ptr [ebp-4]
 00559711    mov         cl,byte ptr [ebp-5]
 00559714    mov         edx,dword ptr [ebp-4]
 00559717    mov         eax,dword ptr [ebx+3D4]
 0055971D    call        dword ptr [ebx+3D0]
 00559723    mov         eax,dword ptr [ebp-4]
 00559726    mov         al,byte ptr [eax+285]
 0055972C    mov         byte ptr [ebp-7],al
>0055972F    jmp         0055981F
 00559734    mov         al,byte ptr [ebp-5]
 00559737    push        eax
 00559738    mov         al,byte ptr [ebp-6]
 0055973B    push        eax
 0055973C    mov         eax,dword ptr [ebp+0C]
 0055973F    push        eax
 00559740    mov         eax,dword ptr [ebp+8]
 00559743    push        eax
 00559744    mov         ecx,dword ptr [ebp-13]
 00559747    mov         ebx,dword ptr [ebp-0F]
 0055974A    mov         edx,ebx
 0055974C    mov         eax,ebx
 0055974E    mov         ebx,dword ptr [eax]
 00559750    call        dword ptr [ebx+11C]
 00559756    mov         byte ptr [ebp-7],al
 00559759    mov         eax,dword ptr [ebp-4]
 0055975C    cmp         word ptr [eax+3DA],0
>00559764    je          005597A5
 00559766    mov         eax,dword ptr [ebp-4]
 00559769    mov         byte ptr [eax+285],1
 00559770    mov         eax,dword ptr [ebp-13]
 00559773    push        eax
 00559774    mov         al,byte ptr [ebp-5]
 00559777    push        eax
 00559778    mov         al,byte ptr [ebp-6]
 0055977B    push        eax
 0055977C    mov         eax,dword ptr [ebp+0C]
 0055977F    push        eax
 00559780    mov         eax,dword ptr [ebp+8]
 00559783    push        eax
 00559784    mov         ebx,dword ptr [ebp-4]
 00559787    mov         ecx,dword ptr [ebp-0F]
 0055978A    mov         edx,dword ptr [ebp-4]
 0055978D    mov         eax,dword ptr [ebx+3DC]
 00559793    call        dword ptr [ebx+3D8]
 00559799    mov         eax,dword ptr [ebp-4]
 0055979C    mov         al,byte ptr [eax+285]
 005597A2    mov         byte ptr [ebp-7],al
 005597A5    cmp         byte ptr [ebp-7],0
>005597A9    jne         0055981F
 005597AB    push        ebp
 005597AC    call        CheckZoomPanning
 005597B1    pop         ecx
>005597B2    jmp         0055981F
 005597B4    mov         eax,dword ptr [ebp-4]
 005597B7    cmp         word ptr [eax+3C2],0
>005597BF    je          005597FC
 005597C1    mov         eax,dword ptr [ebp-4]
 005597C4    mov         byte ptr [eax+285],1
 005597CB    mov         al,byte ptr [ebp-5]
 005597CE    push        eax
 005597CF    mov         al,byte ptr [ebp-6]
 005597D2    push        eax
 005597D3    mov         eax,dword ptr [ebp+0C]
 005597D6    push        eax
 005597D7    mov         eax,dword ptr [ebp+8]
 005597DA    push        eax
 005597DB    mov         ebx,dword ptr [ebp-4]
 005597DE    mov         ecx,dword ptr [ebp-0B]
 005597E1    mov         edx,dword ptr [ebp-4]
 005597E4    mov         eax,dword ptr [ebx+3C4]
 005597EA    call        dword ptr [ebx+3C0]
 005597F0    mov         eax,dword ptr [ebp-4]
 005597F3    mov         al,byte ptr [eax+285]
 005597F9    mov         byte ptr [ebp-7],al
 005597FC    cmp         byte ptr [ebp-7],0
>00559800    jne         0055981F
 00559802    push        ebp
 00559803    call        CheckZoomPanning
 00559808    pop         ecx
>00559809    jmp         0055981F
 0055980B    push        ebp
 0055980C    call        CheckBackground
 00559811    pop         ecx
 00559812    cmp         byte ptr [ebp-7],0
>00559816    jne         0055981F
 00559818    push        ebp
 00559819    call        CheckZoomPanning
 0055981E    pop         ecx
 0055981F    cmp         byte ptr [ebp-7],0
>00559823    jne         0055982C
 00559825    push        ebp
 00559826    call        CheckBackground
 0055982B    pop         ecx
 0055982C    mov         eax,dword ptr [ebp-4]
 0055982F    mov         byte ptr [eax+285],0
 00559836    pop         ebx
 00559837    mov         esp,ebp
 00559839    pop         ebp
 0055983A    ret         8
*}
end;

//00559840
procedure ProcessPanning(Axis:TChartAxis; IniPos:Integer; EndPos:Integer);
begin
{*
 00559840    push        ebp
 00559841    mov         ebp,esp
 00559843    add         esp,0FFFFFFDC
 00559846    push        ebx
 00559847    push        esi
 00559848    push        edi
 00559849    mov         edi,ecx
 0055984B    mov         esi,edx
 0055984D    mov         ebx,eax
 0055984F    mov         edx,esi
 00559851    mov         eax,ebx
 00559853    call        TCustomChartAxis.CalcPosPoint
 00559858    fstp        qword ptr [ebp-24]
 0055985B    wait
 0055985C    mov         edx,edi
 0055985E    mov         eax,ebx
 00559860    call        TCustomChartAxis.CalcPosPoint
 00559865    fsubr       qword ptr [ebp-24]
 00559868    fstp        qword ptr [ebp-8]
 0055986B    wait
 0055986C    fld         qword ptr [ebx+18]
 0055986F    fadd        qword ptr [ebp-8]
 00559872    fstp        qword ptr [ebp-10]
 00559875    wait
 00559876    fld         qword ptr [ebx+10]
 00559879    fadd        qword ptr [ebp-8]
 0055987C    fstp        qword ptr [ebp-18]
 0055987F    wait
 00559880    mov         byte ptr [ebp-19],1
 00559884    mov         eax,dword ptr [ebp+8]
 00559887    mov         eax,dword ptr [eax-4]
 0055988A    cmp         word ptr [eax+3BA],0
>00559892    je          005598B3
 00559894    lea         eax,[ebp-18]
 00559897    push        eax
 00559898    lea         eax,[ebp-19]
 0055989B    push        eax
 0055989C    mov         eax,dword ptr [ebp+8]
 0055989F    mov         esi,dword ptr [eax-4]
 005598A2    lea         ecx,[ebp-10]
 005598A5    mov         edx,ebx
 005598A7    mov         eax,dword ptr [esi+3BC]
 005598AD    call        dword ptr [esi+3B8]
 005598B3    cmp         byte ptr [ebp-19],0
>005598B7    je          005598CC
 005598B9    push        dword ptr [ebp-0C]
 005598BC    push        dword ptr [ebp-10]
 005598BF    push        dword ptr [ebp-14]
 005598C2    push        dword ptr [ebp-18]
 005598C5    mov         eax,ebx
 005598C7    call        TCustomChartAxis.SetMinMax
 005598CC    pop         edi
 005598CD    pop         esi
 005598CE    pop         ebx
 005598CF    mov         esp,ebp
 005598D1    pop         ebp
 005598D2    ret
*}
end;

//005598D4
function CheckMouseSeries:Boolean;
begin
{*
 005598D4    push        ebp
 005598D5    mov         ebp,esp
 005598D7    add         esp,0FFFFFFF8
 005598DA    push        ebx
 005598DB    push        esi
 005598DC    push        edi
 005598DD    mov         byte ptr [ebp-1],0
 005598E1    mov         eax,dword ptr [ebp+8]
 005598E4    mov         eax,dword ptr [eax-4]
 005598E7    call        TCustomAxisPanel.SeriesCount
 005598EC    mov         ebx,eax
 005598EE    dec         ebx
 005598EF    test        ebx,ebx
>005598F1    jl          0055994F
 005598F3    inc         ebx
 005598F4    xor         esi,esi
 005598F6    mov         eax,dword ptr [ebp+8]
 005598F9    mov         eax,dword ptr [eax-4]
 005598FC    mov         edx,esi
 005598FE    call        TCustomAxisPanel.GetSeries
 00559903    mov         dword ptr [ebp-8],eax
 00559906    mov         eax,dword ptr [ebp-8]
 00559909    cmp         byte ptr [eax+30],0
>0055990D    je          0055994B
 0055990F    mov         eax,dword ptr [ebp-8]
 00559912    cmp         word ptr [eax+44],0
>00559917    je          0055994B
 00559919    mov         eax,dword ptr [ebp+8]
 0055991C    mov         ecx,dword ptr [eax+8]
 0055991F    mov         eax,dword ptr [ebp+8]
 00559922    mov         edx,dword ptr [eax-8]
 00559925    mov         eax,dword ptr [ebp-8]
 00559928    mov         edi,dword ptr [eax]
 0055992A    call        dword ptr [edi+0F4]
 00559930    inc         eax
>00559931    je          0055994B
 00559933    mov         eax,dword ptr [ebp-8]
 00559936    mov         dx,word ptr [eax+44]
 0055993A    mov         eax,dword ptr [ebp+8]
 0055993D    mov         eax,dword ptr [eax-4]
 00559940    call        TControl.SetCursor
 00559945    mov         byte ptr [ebp-1],1
>00559949    jmp         0055994F
 0055994B    inc         esi
 0055994C    dec         ebx
>0055994D    jne         005598F6
 0055994F    mov         eax,dword ptr [ebp+8]
 00559952    mov         eax,dword ptr [eax-4]
 00559955    call        TCustomAxisPanel.SeriesCount
 0055995A    mov         ebx,eax
 0055995C    dec         ebx
 0055995D    test        ebx,ebx
>0055995F    jl          00559990
 00559961    inc         ebx
 00559962    xor         esi,esi
 00559964    mov         eax,dword ptr [ebp+8]
 00559967    mov         eax,dword ptr [eax+8]
 0055996A    push        eax
 0055996B    mov         eax,dword ptr [ebp+8]
 0055996E    mov         eax,dword ptr [eax-4]
 00559971    mov         edx,esi
 00559973    call        TCustomAxisPanel.GetSeries
 00559978    mov         edx,dword ptr [ebp+8]
 0055997B    mov         ecx,dword ptr [edx-8]
 0055997E    mov         edx,dword ptr [ebp+8]
 00559981    mov         dl,byte ptr [edx-9]
 00559984    mov         edi,dword ptr [eax]
 00559986    call        dword ptr [edi+118]
 0055998C    inc         esi
 0055998D    dec         ebx
>0055998E    jne         00559964
 00559990    mov         al,byte ptr [ebp-1]
 00559993    pop         edi
 00559994    pop         esi
 00559995    pop         ebx
 00559996    pop         ecx
 00559997    pop         ecx
 00559998    pop         ebp
 00559999    ret
*}
end;

//0055999C
procedure PanAxis(AxisHorizontal:Boolean; const Pos1:Integer; const Pos2:Integer);
begin
{*
 0055999C    push        ebp
 0055999D    mov         ebp,esp
 0055999F    add         esp,0FFFFFFF4
 005599A2    push        ebx
 005599A3    push        esi
 005599A4    mov         dword ptr [ebp-0C],ecx
 005599A7    mov         dword ptr [ebp-8],edx
 005599AA    mov         byte ptr [ebp-1],al
 005599AD    cmp         byte ptr [ebp-1],0
>005599B1    je          005599B7
 005599B3    mov         al,1
>005599B5    jmp         005599B9
 005599B7    mov         al,2
 005599B9    mov         ecx,dword ptr [ebp-8]
 005599BC    cmp         ecx,dword ptr [ebp-0C]
>005599BF    je          00559A49
 005599C5    mov         edx,dword ptr [ebp+8]
 005599C8    mov         edx,dword ptr [edx-4]
 005599CB    mov         dl,byte ptr [edx+2AE]
 005599D1    cmp         al,dl
>005599D3    je          005599DD
 005599D5    mov         eax,dword ptr [ebp+8]
 005599D8    cmp         dl,3
>005599DB    jne         00559A49
 005599DD    mov         eax,dword ptr [ebp+8]
 005599E0    mov         eax,dword ptr [eax-4]
 005599E3    mov         eax,dword ptr [eax+340]
 005599E9    mov         ebx,dword ptr [eax+8]
 005599EC    dec         ebx
 005599ED    test        ebx,ebx
>005599EF    jl          00559A42
 005599F1    inc         ebx
 005599F2    xor         esi,esi
 005599F4    mov         eax,dword ptr [ebp+8]
 005599F7    mov         eax,dword ptr [eax-4]
 005599FA    mov         eax,dword ptr [eax+340]
 00559A00    mov         edx,esi
 00559A02    call        TList.Get
 00559A07    cmp         byte ptr [eax+0E0],0
>00559A0E    jne         00559A3E
 00559A10    cmp         byte ptr [ebp-1],0
>00559A14    je          00559A1F
 00559A16    cmp         byte ptr [eax+8E],0
>00559A1D    jne         00559A2E
 00559A1F    cmp         byte ptr [ebp-1],0
>00559A23    jne         00559A3E
 00559A25    cmp         byte ptr [eax+8E],0
>00559A2C    jne         00559A3E
 00559A2E    mov         edx,dword ptr [ebp+8]
 00559A31    push        edx
 00559A32    mov         ecx,dword ptr [ebp-8]
 00559A35    mov         edx,dword ptr [ebp-0C]
 00559A38    call        ProcessPanning
 00559A3D    pop         ecx
 00559A3E    inc         esi
 00559A3F    dec         ebx
>00559A40    jne         005599F4
 00559A42    mov         eax,dword ptr [ebp+8]
 00559A45    mov         byte ptr [eax-0A],1
 00559A49    pop         esi
 00559A4A    pop         ebx
 00559A4B    mov         esp,ebp
 00559A4D    pop         ebp
 00559A4E    ret
*}
end;

//00559A50
procedure TCustomChart.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 00559A50    push        ebp
 00559A51    mov         ebp,esp
 00559A53    add         esp,0FFFFFFA0
 00559A56    push        ebx
 00559A57    push        esi
 00559A58    push        edi
 00559A59    mov         dword ptr [ebp-8],ecx
 00559A5C    mov         byte ptr [ebp-9],dl
 00559A5F    mov         dword ptr [ebp-4],eax
 00559A62    mov         eax,dword ptr [ebp+8]
 00559A65    push        eax
 00559A66    mov         ecx,dword ptr [ebp-8]
 00559A69    mov         dl,byte ptr [ebp-9]
 00559A6C    mov         eax,dword ptr [ebp-4]
 00559A6F    call        TControl.MouseMove
 00559A74    mov         eax,dword ptr [ebp-4]
 00559A77    test        byte ptr [eax+1C],10
>00559A7B    jne         00559BDA
 00559A81    mov         eax,dword ptr [ebp-4]
 00559A84    mov         ebx,dword ptr [eax+27C]
 00559A8A    cmp         byte ptr [ebx+4],0
>00559A8E    je          00559AC5
 00559A90    mov         eax,dword ptr [ebp-8]
 00559A93    cmp         eax,dword ptr [ebx+10]
>00559A96    jne         00559AA4
 00559A98    mov         eax,dword ptr [ebp+8]
 00559A9B    cmp         eax,dword ptr [ebx+14]
>00559A9E    je          00559BDA
 00559AA4    mov         eax,dword ptr [ebp-4]
 00559AA7    call        TCustomTeePanel.DrawZoomRectangle
 00559AAC    mov         eax,dword ptr [ebp-8]
 00559AAF    mov         dword ptr [ebx+10],eax
 00559AB2    mov         eax,dword ptr [ebp+8]
 00559AB5    mov         dword ptr [ebx+14],eax
 00559AB8    mov         eax,dword ptr [ebp-4]
 00559ABB    call        TCustomTeePanel.DrawZoomRectangle
>00559AC0    jmp         00559BDA
 00559AC5    mov         eax,dword ptr [ebp-4]
 00559AC8    mov         ebx,dword ptr [eax+264]
 00559ACE    cmp         byte ptr [ebx+4],0
>00559AD2    je          00559BBD
 00559AD8    lea         ecx,[ebp-14]
 00559ADB    mov         edx,dword ptr [ebp+8]
 00559ADE    mov         eax,dword ptr [ebp-8]
 00559AE1    call        Point
 00559AE6    push        dword ptr [ebp-10]
 00559AE9    push        dword ptr [ebp-14]
 00559AEC    mov         eax,dword ptr [ebp-4]
 00559AEF    add         eax,286
 00559AF4    push        eax
 00559AF5    call        USER32.PtInRect
 00559AFA    test        eax,eax
>00559AFC    je          00559BAE
 00559B02    mov         eax,dword ptr [ebp-8]
 00559B05    cmp         eax,dword ptr [ebx+10]
>00559B08    jne         00559B16
 00559B0A    mov         eax,dword ptr [ebp+8]
 00559B0D    cmp         eax,dword ptr [ebx+14]
>00559B10    je          00559BDA
 00559B16    mov         byte ptr [ebp-0A],0
 00559B1A    mov         eax,ebx
 00559B1C    call        TZoomPanningRecord.Check
 00559B21    mov         eax,dword ptr [ebp-4]
 00559B24    cmp         byte ptr [eax+360],0
>00559B2B    je          00559B55
 00559B2D    lea         edx,[ebp-60]
 00559B30    mov         eax,dword ptr [ebp-4]
 00559B33    call        TCustomChart.SaveScales
 00559B38    mov         eax,dword ptr [ebp-4]
 00559B3B    lea         esi,[ebp-60]
 00559B3E    lea         edi,[eax+361]
 00559B44    mov         ecx,13
 00559B49    rep movs    dword ptr [edi],dword ptr [esi]
 00559B4B    mov         eax,dword ptr [ebp-4]
 00559B4E    mov         byte ptr [eax+360],0
 00559B55    push        ebp
 00559B56    mov         ecx,dword ptr [ebx+10]
 00559B59    mov         edx,dword ptr [ebp-8]
 00559B5C    mov         al,1
 00559B5E    call        PanAxis
 00559B63    pop         ecx
 00559B64    push        ebp
 00559B65    mov         ecx,dword ptr [ebx+14]
 00559B68    mov         edx,dword ptr [ebp+8]
 00559B6B    xor         eax,eax
 00559B6D    call        PanAxis
 00559B72    pop         ecx
 00559B73    mov         eax,dword ptr [ebp-8]
 00559B76    mov         dword ptr [ebx+10],eax
 00559B79    mov         eax,dword ptr [ebp+8]
 00559B7C    mov         dword ptr [ebx+14],eax
 00559B7F    cmp         byte ptr [ebp-0A],0
>00559B83    je          00559BDA
 00559B85    mov         eax,dword ptr [ebp-4]
 00559B88    cmp         word ptr [eax+2CA],0
>00559B90    je          00559BA4
 00559B92    mov         ebx,dword ptr [ebp-4]
 00559B95    mov         edx,dword ptr [ebp-4]
 00559B98    mov         eax,dword ptr [ebx+2CC]
 00559B9E    call        dword ptr [ebx+2C8]
 00559BA4    mov         eax,dword ptr [ebp-4]
 00559BA7    mov         edx,dword ptr [eax]
 00559BA9    call        dword ptr [edx+7C]
>00559BAC    jmp         00559BDA
 00559BAE    mov         eax,dword ptr [ebp-4]
 00559BB1    mov         eax,dword ptr [eax+264]
 00559BB7    mov         byte ptr [eax+4],0
>00559BBB    jmp         00559BDA
 00559BBD    push        ebp
 00559BBE    call        CheckMouseSeries
 00559BC3    pop         ecx
 00559BC4    test        al,al
>00559BC6    jne         00559BDA
 00559BC8    mov         eax,dword ptr [ebp-4]
 00559BCB    mov         dx,word ptr [eax+260]
 00559BD2    mov         eax,dword ptr [ebp-4]
 00559BD5    call        TControl.SetCursor
 00559BDA    pop         edi
 00559BDB    pop         esi
 00559BDC    pop         ebx
 00559BDD    mov         esp,ebp
 00559BDF    pop         ebp
 00559BE0    ret         4
*}
end;

//00559BE4
procedure TCustomChart.DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint);
begin
{*
 00559BE4    push        ebp
 00559BE5    mov         ebp,esp
 00559BE7    add         esp,0FFFFFFF4
 00559BEA    push        esi
 00559BEB    push        edi
 00559BEC    mov         esi,dword ptr [ebp+8]
 00559BEF    lea         edi,[ebp-9]
 00559BF2    movs        dword ptr [edi],dword ptr [esi]
 00559BF3    movs        dword ptr [edi],dword ptr [esi]
 00559BF4    mov         byte ptr [ebp-1],dl
 00559BF7    lea         edx,[ebp-9]
 00559BFA    push        edx
 00559BFB    mov         dl,byte ptr [ebp-1]
 00559BFE    call        TControl.DoMouseWheel
 00559C03    pop         edi
 00559C04    pop         esi
 00559C05    mov         esp,ebp
 00559C07    pop         ebp
 00559C08    ret         4
*}
end;

//00559C0C
procedure TCustomChart.ScrollVerticalAxes(Up:Boolean);
begin
{*
 00559C0C    push        ebx
 00559C0D    push        esi
 00559C0E    push        edi
 00559C0F    push        ebp
 00559C10    add         esp,0FFFFFFF8
 00559C13    mov         ebx,edx
 00559C15    mov         edi,eax
 00559C17    mov         eax,dword ptr [edi+340]
 00559C1D    mov         ebp,dword ptr [eax+8]
 00559C20    dec         ebp
 00559C21    test        ebp,ebp
>00559C23    jl          00559C76
 00559C25    inc         ebp
 00559C26    xor         esi,esi
 00559C28    mov         eax,dword ptr [edi+340]
 00559C2E    mov         edx,esi
 00559C30    call        TList.Get
 00559C35    cmp         byte ptr [eax+8E],0
>00559C3C    jne         00559C72
 00559C3E    fld         qword ptr [eax+10]
 00559C41    fsub        qword ptr [eax+18]
 00559C44    fmul        dword ptr ds:[559C80]
 00559C4A    fld         tbyte ptr ds:[559C84]
 00559C50    fmulp       st(1),st
 00559C52    fstp        qword ptr [esp]
 00559C55    wait
 00559C56    test        bl,bl
>00559C58    jne         00559C63
 00559C5A    fld         qword ptr [esp]
 00559C5D    fchs
 00559C5F    fstp        qword ptr [esp]
 00559C62    wait
 00559C63    push        dword ptr [esp+4]
 00559C67    push        dword ptr [esp+4]
 00559C6B    xor         edx,edx
 00559C6D    call        TCustomChartAxis.Scroll
 00559C72    inc         esi
 00559C73    dec         ebp
>00559C74    jne         00559C28
 00559C76    pop         ecx
 00559C77    pop         edx
 00559C78    pop         ebp
 00559C79    pop         edi
 00559C7A    pop         esi
 00559C7B    pop         ebx
 00559C7C    ret
*}
end;

//00559C90
procedure TCustomChart.DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint);
begin
{*
 00559C90    push        ebx
 00559C91    push        esi
 00559C92    push        edi
 00559C93    add         esp,0FFFFFFF4
 00559C96    mov         esi,ecx
 00559C98    lea         edi,[esp+1]
 00559C9C    movs        dword ptr [edi],dword ptr [esi]
 00559C9D    movs        dword ptr [edi],dword ptr [esi]
 00559C9E    mov         byte ptr [esp],dl
 00559CA1    mov         esi,eax
 00559CA3    lea         ecx,[esp+1]
 00559CA7    mov         dl,byte ptr [esp]
 00559CAA    mov         eax,esi
 00559CAC    call        TControl.DoMouseWheelDown
 00559CB1    mov         ebx,eax
 00559CB3    mov         dl,1
 00559CB5    mov         eax,esi
 00559CB7    call        TCustomChart.ScrollVerticalAxes
 00559CBC    mov         eax,ebx
 00559CBE    add         esp,0C
 00559CC1    pop         edi
 00559CC2    pop         esi
 00559CC3    pop         ebx
 00559CC4    ret
*}
end;

//00559CC8
procedure TCustomChart.DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint);
begin
{*
 00559CC8    push        ebx
 00559CC9    push        esi
 00559CCA    push        edi
 00559CCB    add         esp,0FFFFFFF4
 00559CCE    mov         esi,ecx
 00559CD0    lea         edi,[esp+1]
 00559CD4    movs        dword ptr [edi],dword ptr [esi]
 00559CD5    movs        dword ptr [edi],dword ptr [esi]
 00559CD6    mov         byte ptr [esp],dl
 00559CD9    mov         esi,eax
 00559CDB    lea         ecx,[esp+1]
 00559CDF    mov         dl,byte ptr [esp]
 00559CE2    mov         eax,esi
 00559CE4    call        TControl.DoMouseWheelUp
 00559CE9    mov         ebx,eax
 00559CEB    xor         edx,edx
 00559CED    mov         eax,esi
 00559CEF    call        TCustomChart.ScrollVerticalAxes
 00559CF4    mov         eax,ebx
 00559CF6    add         esp,0C
 00559CF9    pop         edi
 00559CFA    pop         esi
 00559CFB    pop         ebx
 00559CFC    ret
*}
end;

//00559D00
procedure TCustomChart.UndoZoom;
begin
{*
 00559D00    push        ebx
 00559D01    mov         ebx,eax
 00559D03    cmp         byte ptr [ebx+360],0
>00559D0A    jne         00559D19
 00559D0C    lea         edx,[ebx+361]
 00559D12    mov         eax,ebx
 00559D14    call        TCustomChart.RestoreScales
 00559D19    mov         byte ptr [ebx+360],1
 00559D20    mov         eax,ebx
 00559D22    call        TCustomTeePanelExtended.UndoZoom
 00559D27    pop         ebx
 00559D28    ret
*}
end;

//00559D2C
procedure TCustomChart.CalcZoomPoints;
begin
{*
 00559D2C    push        ebx
 00559D2D    push        esi
 00559D2E    mov         ebx,eax
 00559D30    mov         esi,dword ptr [ebx+27C]
 00559D36    mov         eax,esi
 00559D38    call        TZoomPanningRecord.Check
 00559D3D    mov         edx,dword ptr [esi+8]
 00559D40    mov         eax,dword ptr [ebx+2E8]
 00559D46    call        TCustomChartAxis.CalcPosPoint
 00559D4B    add         esp,0FFFFFFF8
 00559D4E    fstp        qword ptr [esp]
 00559D51    wait
 00559D52    mov         edx,dword ptr [esi+10]
 00559D55    mov         eax,dword ptr [ebx+2E8]
 00559D5B    call        TCustomChartAxis.CalcPosPoint
 00559D60    add         esp,0FFFFFFF8
 00559D63    fstp        qword ptr [esp]
 00559D66    wait
 00559D67    mov         edx,dword ptr [esi+8]
 00559D6A    mov         eax,dword ptr [ebx+2EC]
 00559D70    call        TCustomChartAxis.CalcPosPoint
 00559D75    add         esp,0FFFFFFF8
 00559D78    fstp        qword ptr [esp]
 00559D7B    wait
 00559D7C    mov         edx,dword ptr [esi+10]
 00559D7F    mov         eax,dword ptr [ebx+2EC]
 00559D85    call        TCustomChartAxis.CalcPosPoint
 00559D8A    add         esp,0FFFFFFF8
 00559D8D    fstp        qword ptr [esp]
 00559D90    wait
 00559D91    mov         edx,dword ptr [esi+14]
 00559D94    mov         eax,dword ptr [ebx+2F0]
 00559D9A    call        TCustomChartAxis.CalcPosPoint
 00559D9F    add         esp,0FFFFFFF8
 00559DA2    fstp        qword ptr [esp]
 00559DA5    wait
 00559DA6    mov         edx,dword ptr [esi+0C]
 00559DA9    mov         eax,dword ptr [ebx+2F0]
 00559DAF    call        TCustomChartAxis.CalcPosPoint
 00559DB4    add         esp,0FFFFFFF8
 00559DB7    fstp        qword ptr [esp]
 00559DBA    wait
 00559DBB    mov         edx,dword ptr [esi+14]
 00559DBE    mov         eax,dword ptr [ebx+2F4]
 00559DC4    call        TCustomChartAxis.CalcPosPoint
 00559DC9    add         esp,0FFFFFFF8
 00559DCC    fstp        qword ptr [esp]
 00559DCF    wait
 00559DD0    mov         edx,dword ptr [esi+0C]
 00559DD3    mov         eax,dword ptr [ebx+2F4]
 00559DD9    call        TCustomChartAxis.CalcPosPoint
 00559DDE    add         esp,0FFFFFFF8
 00559DE1    fstp        qword ptr [esp]
 00559DE4    wait
 00559DE5    mov         eax,ebx
 00559DE7    call        TCustomChart.DoZoom
 00559DEC    pop         esi
 00559DED    pop         ebx
 00559DEE    ret
*}
end;

//00559DF0
procedure TCustomChart.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 00559DF0    push        ebp
 00559DF1    mov         ebp,esp
 00559DF3    add         esp,0FFFFFFF8
 00559DF6    push        ebx
 00559DF7    push        esi
 00559DF8    push        edi
 00559DF9    mov         byte ptr [ebp-2],cl
 00559DFC    mov         byte ptr [ebp-1],dl
 00559DFF    mov         ebx,eax
 00559E01    mov         eax,dword ptr [ebp+0C]
 00559E04    push        eax
 00559E05    mov         eax,dword ptr [ebp+8]
 00559E08    push        eax
 00559E09    mov         cl,byte ptr [ebp-2]
 00559E0C    mov         dl,byte ptr [ebp-1]
 00559E0F    mov         eax,ebx
 00559E11    call        TControl.MouseUp
 00559E16    mov         eax,ebx
 00559E18    call        TCustomAxisPanel.SeriesCount
 00559E1D    mov         esi,eax
 00559E1F    dec         esi
 00559E20    test        esi,esi
>00559E22    jl          00559E52
 00559E24    inc         esi
 00559E25    mov         dword ptr [ebp-8],0
 00559E2C    mov         eax,dword ptr [ebp+0C]
 00559E2F    push        eax
 00559E30    mov         eax,dword ptr [ebp+8]
 00559E33    push        eax
 00559E34    mov         edx,dword ptr [ebp-8]
 00559E37    mov         eax,ebx
 00559E39    call        TCustomAxisPanel.GetSeries
 00559E3E    mov         cl,byte ptr [ebp-2]
 00559E41    mov         dl,byte ptr [ebp-1]
 00559E44    mov         edi,dword ptr [eax]
 00559E46    call        dword ptr [edi+120]
 00559E4C    inc         dword ptr [ebp-8]
 00559E4F    dec         esi
>00559E50    jne         00559E2C
 00559E52    mov         eax,dword ptr [ebx+27C]
 00559E58    cmp         byte ptr [eax+4],0
>00559E5C    je          00559EE4
 00559E62    mov         dl,byte ptr [ebp-1]
 00559E65    cmp         dl,byte ptr ds:[6ECC80];TeeZoomMouseButton:TMouseButton
>00559E6B    jne         00559EE4
 00559E6D    mov         esi,eax
 00559E6F    mov         byte ptr [esi+4],0
 00559E73    mov         eax,ebx
 00559E75    call        TCustomTeePanel.DrawZoomRectangle
 00559E7A    mov         eax,dword ptr [ebx+280]
 00559E80    mov         eax,dword ptr [eax+0C]
 00559E83    mov         dl,4
 00559E85    call        TPen.SetMode
 00559E8A    mov         eax,dword ptr [ebp+0C]
 00559E8D    mov         dword ptr [esi+10],eax
 00559E90    mov         eax,dword ptr [ebp+8]
 00559E93    mov         dword ptr [esi+14],eax
 00559E96    mov         eax,dword ptr [esi+10]
 00559E99    sub         eax,dword ptr [esi+8]
 00559E9C    cdq
 00559E9D    xor         eax,edx
 00559E9F    sub         eax,edx
 00559EA1    cmp         eax,10
>00559EA4    jle         00559EE4
 00559EA6    mov         eax,dword ptr [esi+14]
 00559EA9    sub         eax,dword ptr [esi+0C]
 00559EAC    cdq
 00559EAD    xor         eax,edx
 00559EAF    sub         eax,edx
 00559EB1    cmp         eax,10
>00559EB4    jle         00559EE4
 00559EB6    mov         eax,dword ptr [esi+10]
 00559EB9    cmp         eax,dword ptr [esi+8]
>00559EBC    jle         00559ED2
 00559EBE    mov         eax,dword ptr [esi+14]
 00559EC1    cmp         eax,dword ptr [esi+0C]
>00559EC4    jle         00559ED2
 00559EC6    mov         eax,ebx
 00559EC8    mov         edx,dword ptr [eax]
 00559ECA    call        dword ptr [edx+114]
>00559ED0    jmp         00559EDD
 00559ED2    mov         eax,ebx
 00559ED4    mov         si,0FFB3
 00559ED8    call        @CallDynaInst
 00559EDD    mov         eax,ebx
 00559EDF    mov         edx,dword ptr [eax]
 00559EE1    call        dword ptr [edx+7C]
 00559EE4    mov         eax,dword ptr [ebx+264]
 00559EEA    mov         byte ptr [eax+4],0
 00559EEE    pop         edi
 00559EEF    pop         esi
 00559EF0    pop         ebx
 00559EF1    pop         ecx
 00559EF2    pop         ecx
 00559EF3    pop         ebp
 00559EF4    ret         8
*}
end;

//00559EF8
procedure TCustomChart.CalcAxisRect;
begin
{*
 00559EF8    push        ebx
 00559EF9    push        esi
 00559EFA    push        edi
 00559EFB    push        ebp
 00559EFC    add         esp,0FFFFFFE0
 00559EFF    mov         ebx,eax
 00559F01    mov         eax,dword ptr [ebx+340]
 00559F07    mov         esi,dword ptr [eax+8]
 00559F0A    dec         esi
 00559F0B    test        esi,esi
>00559F0D    jl          00559F28
 00559F0F    inc         esi
 00559F10    xor         edi,edi
 00559F12    mov         edx,edi
 00559F14    mov         eax,dword ptr [ebx+340]
 00559F1A    call        TList.Get
 00559F1F    call        TCustomChartAxis.AdjustMaxMin
 00559F24    inc         edi
 00559F25    dec         esi
>00559F26    jne         00559F12
 00559F28    mov         eax,ebx
 00559F2A    call        TCustomAxisPanel.CalcSize3DWalls
 00559F2F    cmp         byte ptr [ebx+270],0
>00559F36    je          00559F80
 00559F38    mov         eax,dword ptr [ebx+274]
 00559F3E    cmp         byte ptr [eax+0C],0
>00559F42    je          00559F80
 00559F44    cmp         byte ptr [ebx+2F8],0
>00559F4B    je          00559F58
 00559F4D    mov         eax,dword ptr [ebx+34C]
 00559F53    mov         edi,dword ptr [eax+14]
>00559F56    jmp         00559F5A
 00559F58    xor         edi,edi
 00559F5A    lea         ecx,[ebx+286]
 00559F60    mov         eax,dword ptr [ebx+278]
 00559F66    cdq
 00559F67    xor         eax,edx
 00559F69    sub         eax,edx
 00559F6B    add         eax,edi
 00559F6D    sub         dword ptr [ecx+8],eax
 00559F70    mov         eax,dword ptr [ebx+24C]
 00559F76    cdq
 00559F77    xor         eax,edx
 00559F79    sub         eax,edx
 00559F7B    add         edi,eax
 00559F7D    add         dword ptr [ecx+4],edi
 00559F80    mov         eax,ebx
 00559F82    call        TCustomTeePanel.ReCalcWidthHeight
 00559F87    lea         esi,[ebx+286]
 00559F8D    mov         edi,esp
 00559F8F    movs        dword ptr [edi],dword ptr [esi]
 00559F90    movs        dword ptr [edi],dword ptr [esi]
 00559F91    movs        dword ptr [edi],dword ptr [esi]
 00559F92    movs        dword ptr [edi],dword ptr [esi]
 00559F93    mov         eax,dword ptr [ebx+340]
 00559F99    mov         esi,dword ptr [eax+8]
 00559F9C    dec         esi
 00559F9D    test        esi,esi
>00559F9F    jl          0055A00D
 00559FA1    inc         esi
 00559FA2    xor         edi,edi
 00559FA4    mov         edx,edi
 00559FA6    mov         eax,dword ptr [ebx+340]
 00559FAC    call        TList.Get
 00559FB1    mov         ebp,eax
 00559FB3    mov         edx,ebp
 00559FB5    mov         eax,ebx
 00559FB7    call        TCustomAxisPanel.IsAxisVisible
 00559FBC    test        al,al
>00559FBE    je          0055A009
 00559FC0    push        esi
 00559FC1    push        edi
 00559FC2    lea         esi,[esp+8]
 00559FC6    lea         edi,[esp+18]
 00559FCA    movs        dword ptr [edi],dword ptr [esi]
 00559FCB    movs        dword ptr [edi],dword ptr [esi]
 00559FCC    movs        dword ptr [edi],dword ptr [esi]
 00559FCD    movs        dword ptr [edi],dword ptr [esi]
 00559FCE    pop         edi
 00559FCF    pop         esi
 00559FD0    cmp         edi,5
 00559FD3    setl        cl
 00559FD6    lea         edx,[esp+10]
 00559FDA    mov         eax,ebp
 00559FDC    call        TCustomChartAxis.CalcRect
 00559FE1    lea         eax,[esp+10]
 00559FE5    push        eax
 00559FE6    lea         eax,[esp+4]
 00559FEA    push        eax
 00559FEB    lea         eax,[esp+18]
 00559FEF    push        eax
 00559FF0    call        USER32.IntersectRect
 00559FF5    test        eax,eax
>00559FF7    je          0055A009
 00559FF9    push        esi
 00559FFA    push        edi
 00559FFB    lea         esi,[esp+18]
 00559FFF    lea         edi,[esp+8]
 0055A003    movs        dword ptr [edi],dword ptr [esi]
 0055A004    movs        dword ptr [edi],dword ptr [esi]
 0055A005    movs        dword ptr [edi],dword ptr [esi]
 0055A006    movs        dword ptr [edi],dword ptr [esi]
 0055A007    pop         edi
 0055A008    pop         esi
 0055A009    inc         edi
 0055A00A    dec         esi
>0055A00B    jne         00559FA4
 0055A00D    mov         esi,esp
 0055A00F    lea         edi,[ebx+286]
 0055A015    movs        dword ptr [edi],dword ptr [esi]
 0055A016    movs        dword ptr [edi],dword ptr [esi]
 0055A017    movs        dword ptr [edi],dword ptr [esi]
 0055A018    movs        dword ptr [edi],dword ptr [esi]
 0055A019    mov         eax,ebx
 0055A01B    call        TCustomTeePanel.ReCalcWidthHeight
 0055A020    mov         eax,dword ptr [ebx+340]
 0055A026    mov         esi,dword ptr [eax+8]
 0055A029    dec         esi
 0055A02A    test        esi,esi
>0055A02C    jl          0055A047
 0055A02E    inc         esi
 0055A02F    xor         edi,edi
 0055A031    mov         edx,edi
 0055A033    mov         eax,dword ptr [ebx+340]
 0055A039    call        TList.Get
 0055A03E    call        TCustomChartAxis.InternalCalcPositions
 0055A043    inc         edi
 0055A044    dec         esi
>0055A045    jne         0055A031
 0055A047    add         esp,20
 0055A04A    pop         ebp
 0055A04B    pop         edi
 0055A04C    pop         esi
 0055A04D    pop         ebx
 0055A04E    ret
*}
end;

//0055A050
procedure CalcSeriesAxisRect(Axis:TChartAxis);
begin
{*
 0055A050    push        ebp
 0055A051    mov         ebp,esp
 0055A053    add         esp,0FFFFFFE0
 0055A056    push        ebx
 0055A057    push        esi
 0055A058    mov         dword ptr [ebp-4],eax
 0055A05B    push        0
 0055A05D    lea         eax,[ebp-20]
 0055A060    push        eax
 0055A061    xor         ecx,ecx
 0055A063    xor         edx,edx
 0055A065    xor         eax,eax
 0055A067    call        Rect
 0055A06C    mov         eax,dword ptr [ebp+8]
 0055A06F    mov         eax,dword ptr [eax-4]
 0055A072    call        TCustomAxisPanel.SeriesCount
 0055A077    mov         esi,eax
 0055A079    dec         esi
 0055A07A    test        esi,esi
>0055A07C    jl          0055A14D
 0055A082    inc         esi
 0055A083    mov         dword ptr [ebp-10],0
 0055A08A    mov         eax,dword ptr [ebp+8]
 0055A08D    mov         eax,dword ptr [eax-4]
 0055A090    mov         edx,dword ptr [ebp-10]
 0055A093    call        TCustomAxisPanel.GetSeries
 0055A098    mov         ebx,eax
 0055A09A    cmp         byte ptr [ebx+30],0
>0055A09E    je          0055A143
 0055A0A4    mov         edx,dword ptr [ebp-4]
 0055A0A7    mov         eax,ebx
 0055A0A9    mov         ecx,dword ptr [eax]
 0055A0AB    call        dword ptr [ecx+94]
 0055A0B1    test        al,al
>0055A0B3    je          0055A143
 0055A0B9    mov         eax,dword ptr [ebp-4]
 0055A0BC    cmp         byte ptr [eax+8E],0
>0055A0C3    je          0055A105
 0055A0C5    lea         ecx,[ebp-0C]
 0055A0C8    lea         edx,[ebp-8]
 0055A0CB    mov         eax,ebx
 0055A0CD    mov         ebx,dword ptr [eax]
 0055A0CF    call        dword ptr [ebx+134]
 0055A0D5    mov         eax,dword ptr [ebp-4]
 0055A0D8    cmp         byte ptr [eax+6],0
>0055A0DC    je          0055A0EC
 0055A0DE    mov         edx,dword ptr [ebp-8]
 0055A0E1    mov         eax,dword ptr [ebp-20]
 0055A0E4    call        0056EDD0
 0055A0E9    mov         dword ptr [ebp-20],eax
 0055A0EC    mov         eax,dword ptr [ebp-4]
 0055A0EF    cmp         byte ptr [eax+5],0
>0055A0F3    je          0055A143
 0055A0F5    mov         edx,dword ptr [ebp-0C]
 0055A0F8    mov         eax,dword ptr [ebp-18]
 0055A0FB    call        0056EDD0
 0055A100    mov         dword ptr [ebp-18],eax
>0055A103    jmp         0055A143
 0055A105    lea         ecx,[ebp-0C]
 0055A108    lea         edx,[ebp-8]
 0055A10B    mov         eax,ebx
 0055A10D    mov         ebx,dword ptr [eax]
 0055A10F    call        dword ptr [ebx+138]
 0055A115    mov         eax,dword ptr [ebp-4]
 0055A118    cmp         byte ptr [eax+5],0
>0055A11C    je          0055A12C
 0055A11E    mov         edx,dword ptr [ebp-8]
 0055A121    mov         eax,dword ptr [ebp-1C]
 0055A124    call        0056EDD0
 0055A129    mov         dword ptr [ebp-1C],eax
 0055A12C    mov         eax,dword ptr [ebp-4]
 0055A12F    cmp         byte ptr [eax+6],0
>0055A133    je          0055A143
 0055A135    mov         edx,dword ptr [ebp-0C]
 0055A138    mov         eax,dword ptr [ebp-14]
 0055A13B    call        0056EDD0
 0055A140    mov         dword ptr [ebp-14],eax
 0055A143    inc         dword ptr [ebp-10]
 0055A146    dec         esi
>0055A147    jne         0055A08A
 0055A14D    lea         edx,[ebp-20]
 0055A150    mov         eax,dword ptr [ebp-4]
 0055A153    call        TCustomChartAxis.AdjustMaxMinRect
 0055A158    pop         esi
 0055A159    pop         ebx
 0055A15A    mov         esp,ebp
 0055A15C    pop         ebp
 0055A15D    ret
*}
end;

//0055A160
procedure TCustomChart.CalcSeriesRect;
begin
{*
 0055A160    push        ebp
 0055A161    mov         ebp,esp
 0055A163    push        ecx
 0055A164    mov         dword ptr [ebp-4],eax
 0055A167    push        ebp
 0055A168    mov         eax,dword ptr [ebp-4]
 0055A16B    mov         eax,dword ptr [eax+2E8]
 0055A171    call        CalcSeriesAxisRect
 0055A176    pop         ecx
 0055A177    push        ebp
 0055A178    mov         eax,dword ptr [ebp-4]
 0055A17B    mov         eax,dword ptr [eax+2F0]
 0055A181    call        CalcSeriesAxisRect
 0055A186    pop         ecx
 0055A187    push        ebp
 0055A188    mov         eax,dword ptr [ebp-4]
 0055A18B    mov         eax,dword ptr [eax+2F4]
 0055A191    call        CalcSeriesAxisRect
 0055A196    pop         ecx
 0055A197    push        ebp
 0055A198    mov         eax,dword ptr [ebp-4]
 0055A19B    mov         eax,dword ptr [eax+2EC]
 0055A1A1    call        CalcSeriesAxisRect
 0055A1A6    pop         ecx
 0055A1A7    pop         ecx
 0055A1A8    pop         ebp
 0055A1A9    ret
*}
end;

//0055A1AC
procedure TCustomChart.Assign(Source:TPersistent);
begin
{*
 0055A1AC    push        ebx
 0055A1AD    push        esi
 0055A1AE    push        edi
 0055A1AF    mov         esi,edx
 0055A1B1    mov         ebx,eax
 0055A1B3    mov         eax,esi
 0055A1B5    mov         edx,dword ptr ds:[556B60];TCustomChart
 0055A1BB    call        @IsClass
 0055A1C0    test        al,al
>0055A1C2    je          0055A238
 0055A1C4    mov         edi,esi
 0055A1C6    mov         al,byte ptr [edi+348]
 0055A1CC    mov         byte ptr [ebx+348],al
 0055A1D2    mov         edx,dword ptr [edi+34C]
 0055A1D8    mov         eax,dword ptr [ebx+34C]
 0055A1DE    mov         ecx,dword ptr [eax]
 0055A1E0    call        dword ptr [ecx+8]
 0055A1E3    mov         edx,dword ptr [edi+350]
 0055A1E9    mov         eax,dword ptr [ebx+350]
 0055A1EF    mov         ecx,dword ptr [eax]
 0055A1F1    call        dword ptr [ecx+8]
 0055A1F4    mov         edx,dword ptr [edi+358]
 0055A1FA    mov         eax,dword ptr [ebx+358]
 0055A200    mov         ecx,dword ptr [eax]
 0055A202    call        dword ptr [ecx+8]
 0055A205    mov         edx,dword ptr [edi+35C]
 0055A20B    mov         eax,dword ptr [ebx+35C]
 0055A211    mov         ecx,dword ptr [eax]
 0055A213    call        dword ptr [ecx+8]
 0055A216    mov         edx,dword ptr [edi+354]
 0055A21C    mov         eax,dword ptr [ebx+354]
 0055A222    mov         ecx,dword ptr [eax]
 0055A224    call        dword ptr [ecx+8]
 0055A227    mov         edx,dword ptr [edi+3B0]
 0055A22D    mov         eax,dword ptr [ebx+3B0]
 0055A233    mov         ecx,dword ptr [eax]
 0055A235    call        dword ptr [ecx+8]
 0055A238    mov         edx,esi
 0055A23A    mov         eax,ebx
 0055A23C    call        TCustomAxisPanel.Assign
 0055A241    pop         edi
 0055A242    pop         esi
 0055A243    pop         ebx
 0055A244    ret
*}
end;

//0055A248
procedure sub_0055A248;
begin
{*
 0055A248    push        ebp
 0055A249    mov         ebp,esp
 0055A24B    pop         ebp
 0055A24C    ret         8
*}
end;

//0055A250
procedure TCustomChart.FillValueSourceItems(ValueList:TChartValueList; Proc:TGetStrProc);
begin
{*
 0055A250    push        ebp
 0055A251    mov         ebp,esp
 0055A253    push        ecx
 0055A254    push        ebx
 0055A255    push        esi
 0055A256    mov         ebx,dword ptr [edx+30]
 0055A259    mov         eax,ebx
 0055A25B    call        TChartSeries.GetDataSource
 0055A260    test        eax,eax
>0055A262    je          0055A2B5
 0055A264    mov         eax,ebx
 0055A266    call        TChartSeries.GetDataSource
 0055A26B    mov         edx,dword ptr ds:[55D9D8];TChartSeries
 0055A271    call        @IsClass
 0055A276    test        al,al
>0055A278    je          0055A2B5
 0055A27A    mov         eax,ebx
 0055A27C    call        TChartSeries.GetDataSource
 0055A281    mov         dword ptr [ebp-4],eax
 0055A284    mov         eax,dword ptr [ebp-4]
 0055A287    mov         eax,dword ptr [eax+80]
 0055A28D    mov         ebx,dword ptr [eax+8]
 0055A290    dec         ebx
 0055A291    test        ebx,ebx
>0055A293    jl          0055A2B5
 0055A295    inc         ebx
 0055A296    xor         esi,esi
 0055A298    mov         eax,dword ptr [ebp-4]
 0055A29B    mov         eax,dword ptr [eax+80]
 0055A2A1    mov         edx,esi
 0055A2A3    call        TChartValueLists.GetValueList
 0055A2A8    mov         edx,dword ptr [eax+28]
 0055A2AB    mov         eax,dword ptr [ebp+0C]
 0055A2AE    call        dword ptr [ebp+8]
 0055A2B1    inc         esi
 0055A2B2    dec         ebx
>0055A2B3    jne         0055A298
 0055A2B5    pop         esi
 0055A2B6    pop         ebx
 0055A2B7    pop         ecx
 0055A2B8    pop         ebp
 0055A2B9    ret         8
*}
end;

//0055A2BC
function TCustomChart.GetASeries:TChartSeries;
begin
{*
 0055A2BC    push        ebx
 0055A2BD    push        esi
 0055A2BE    push        edi
 0055A2BF    mov         edi,eax
 0055A2C1    mov         eax,edi
 0055A2C3    call        TCustomAxisPanel.SeriesCount
 0055A2C8    mov         esi,eax
 0055A2CA    dec         esi
 0055A2CB    test        esi,esi
>0055A2CD    jl          0055A2F4
 0055A2CF    inc         esi
 0055A2D0    xor         ebx,ebx
 0055A2D2    mov         edx,ebx
 0055A2D4    mov         eax,edi
 0055A2D6    call        TCustomAxisPanel.GetSeries
 0055A2DB    cmp         byte ptr [eax+30],0
>0055A2DF    je          0055A2F0
 0055A2E1    mov         eax,dword ptr [edi+2E0]
 0055A2E7    mov         edx,ebx
 0055A2E9    call        TChartSeriesList.GetSeries
>0055A2EE    jmp         0055A2F6
 0055A2F0    inc         ebx
 0055A2F1    dec         esi
>0055A2F2    jne         0055A2D2
 0055A2F4    xor         eax,eax
 0055A2F6    pop         edi
 0055A2F7    pop         esi
 0055A2F8    pop         ebx
 0055A2F9    ret
*}
end;

//0055A2FC
constructor TCustomChartLegend.Create(AOwner:TCustomChart);
begin
{*
 0055A2FC    push        ebx
 0055A2FD    push        esi
 0055A2FE    test        dl,dl
>0055A300    je          0055A30A
 0055A302    add         esp,0FFFFFFF0
 0055A305    call        @ClassCreate
 0055A30A    mov         ebx,edx
 0055A30C    mov         esi,eax
 0055A30E    xor         edx,edx
 0055A310    mov         eax,esi
 0055A312    call        TChartFontObject.Create
 0055A317    mov         byte ptr [esi+5C],1
 0055A31B    mov         byte ptr [esi+0C],1
 0055A31F    mov         byte ptr [esi+64],0
 0055A323    mov         dword ptr [esi+30],0A
 0055A32A    mov         dword ptr [esi+14],0FFFFFF
 0055A331    mov         eax,esi
 0055A333    call        TCustomChartLegend.GetParentChart
 0055A338    push        eax
 0055A339    mov         eax,dword ptr [eax]
 0055A33B    mov         eax,dword ptr [eax+0CC]
 0055A341    push        eax
 0055A342    mov         dl,1
 0055A344    mov         eax,[0056A388];TChartPen
 0055A349    call        TChartPen.Create
 0055A34E    mov         dword ptr [esi+24],eax
 0055A351    mov         byte ptr [esi+50],1
 0055A355    mov         byte ptr [esi+2D],0
 0055A359    mov         dword ptr [esi+18],0C
 0055A360    mov         dword ptr [esi+54],0A
 0055A367    mov         byte ptr [esi+44],1
 0055A36B    xor         eax,eax
 0055A36D    mov         dword ptr [esi+48],eax
 0055A370    mov         dword ptr [esi+4C],3
 0055A377    mov         eax,esi
 0055A379    call        TCustomChartLegend.GetParentChart
 0055A37E    push        eax
 0055A37F    mov         eax,dword ptr [eax]
 0055A381    mov         eax,dword ptr [eax+0CC]
 0055A387    push        eax
 0055A388    mov         dl,1
 0055A38A    mov         eax,[0056A458];TChartHiddenPen
 0055A38F    call        TChartHiddenPen.Create
 0055A394    mov         dword ptr [esi+1C],eax
 0055A397    mov         eax,esi
 0055A399    call        TCustomChartLegend.GetParentChart
 0055A39E    push        eax
 0055A39F    mov         eax,dword ptr [eax]
 0055A3A1    mov         eax,dword ptr [eax+0CC]
 0055A3A7    push        eax
 0055A3A8    mov         dl,1
 0055A3AA    mov         eax,[00555FDC];TChartBrush
 0055A3AF    call        TChartBrush.Create
 0055A3B4    mov         dword ptr [esi+10],eax
 0055A3B7    mov         eax,esi
 0055A3B9    test        bl,bl
>0055A3BB    je          0055A3CC
 0055A3BD    call        @AfterConstruction
 0055A3C2    pop         dword ptr fs:[0]
 0055A3C9    add         esp,0C
 0055A3CC    mov         eax,esi
 0055A3CE    pop         esi
 0055A3CF    pop         ebx
 0055A3D0    ret
*}
end;

//0055A3D4
destructor TCustomChartLegend.Destroy;
begin
{*
 0055A3D4    push        ebx
 0055A3D5    push        esi
 0055A3D6    call        @BeforeDestruction
 0055A3DB    mov         ebx,edx
 0055A3DD    mov         esi,eax
 0055A3DF    mov         eax,dword ptr [esi+1C]
 0055A3E2    call        TObject.Free
 0055A3E7    mov         eax,dword ptr [esi+24]
 0055A3EA    call        TObject.Free
 0055A3EF    mov         eax,dword ptr [esi+10]
 0055A3F2    call        TObject.Free
 0055A3F7    mov         edx,ebx
 0055A3F9    and         dl,0FC
 0055A3FC    mov         eax,esi
 0055A3FE    call        TChartFontObject.Destroy
 0055A403    test        bl,bl
>0055A405    jle         0055A40E
 0055A407    mov         eax,esi
 0055A409    call        @ClassDestroy
 0055A40E    pop         esi
 0055A40F    pop         ebx
 0055A410    ret
*}
end;

//0055A414
procedure TCustomChartLegend.Assign(Source:TPersistent);
begin
{*
 0055A414    push        ebx
 0055A415    push        esi
 0055A416    push        edi
 0055A417    mov         esi,edx
 0055A419    mov         ebx,eax
 0055A41B    mov         eax,esi
 0055A41D    mov         edx,dword ptr ds:[5563C4];TCustomChartLegend
 0055A423    call        @IsClass
 0055A428    test        al,al
>0055A42A    je          0055A492
 0055A42C    mov         edi,esi
 0055A42E    mov         al,byte ptr [edi+5C]
 0055A431    mov         byte ptr [ebx+5C],al
 0055A434    mov         al,byte ptr [edi+2D]
 0055A437    mov         byte ptr [ebx+2D],al
 0055A43A    mov         eax,dword ptr [edi+20]
 0055A43D    mov         dword ptr [ebx+20],eax
 0055A440    mov         al,byte ptr [edi+0C]
 0055A443    mov         byte ptr [ebx+0C],al
 0055A446    mov         al,byte ptr [edi+50]
 0055A449    mov         byte ptr [ebx+50],al
 0055A44C    mov         eax,dword ptr [edi+18]
 0055A44F    mov         dword ptr [ebx+18],eax
 0055A452    mov         eax,dword ptr [edi+28]
 0055A455    mov         dword ptr [ebx+28],eax
 0055A458    mov         eax,dword ptr [edi+58]
 0055A45B    mov         dword ptr [ebx+58],eax
 0055A45E    mov         al,byte ptr [edi+44]
 0055A461    mov         byte ptr [ebx+44],al
 0055A464    mov         al,byte ptr [edi+2C]
 0055A467    mov         byte ptr [ebx+2C],al
 0055A46A    mov         eax,dword ptr [edi+54]
 0055A46D    mov         dword ptr [ebx+54],eax
 0055A470    mov         eax,dword ptr [edi+14]
 0055A473    mov         dword ptr [ebx+14],eax
 0055A476    mov         edx,dword ptr [edi+24]
 0055A479    mov         eax,dword ptr [ebx+24]
 0055A47C    mov         ecx,dword ptr [eax]
 0055A47E    call        dword ptr [ecx+8]
 0055A481    mov         eax,dword ptr [edi+30]
 0055A484    mov         dword ptr [ebx+30],eax
 0055A487    mov         edx,dword ptr [edi+10]
 0055A48A    mov         eax,dword ptr [ebx+10]
 0055A48D    mov         ecx,dword ptr [eax]
 0055A48F    call        dword ptr [ecx+8]
 0055A492    mov         edx,esi
 0055A494    mov         eax,ebx
 0055A496    call        TChartFontObject.Assign
 0055A49B    pop         edi
 0055A49C    pop         esi
 0055A49D    pop         ebx
 0055A49E    ret
*}
end;

//0055A4A0
procedure TCustomChartLegend.SetVisible(Value:Boolean);
begin
{*
 0055A4A0    push        ebx
 0055A4A1    push        esi
 0055A4A2    mov         ebx,edx
 0055A4A4    mov         esi,eax
 0055A4A6    mov         eax,esi
 0055A4A8    call        TCustomChartLegend.GetParentChart
 0055A4AD    lea         edx,[esi+5C]
 0055A4B0    mov         ecx,ebx
 0055A4B2    call        TCustomTeePanel.SetBooleanProperty
 0055A4B7    pop         esi
 0055A4B8    pop         ebx
 0055A4B9    ret
*}
end;

//0055A4BC
procedure TCustomChartLegend.SetInverted(Value:Boolean);
begin
{*
 0055A4BC    push        ebx
 0055A4BD    push        esi
 0055A4BE    mov         ebx,edx
 0055A4C0    mov         esi,eax
 0055A4C2    mov         eax,esi
 0055A4C4    call        TCustomChartLegend.GetParentChart
 0055A4C9    lea         edx,[esi+2C]
 0055A4CC    mov         ecx,ebx
 0055A4CE    call        TCustomTeePanel.SetBooleanProperty
 0055A4D3    pop         esi
 0055A4D4    pop         ebx
 0055A4D5    ret
*}
end;

//0055A4D8
procedure TCustomChartLegend.SetAlignment(Value:TLegendAlignment);
begin
{*
 0055A4D8    cmp         dl,byte ptr [eax+0C]
>0055A4DB    je          0055A4E5
 0055A4DD    mov         byte ptr [eax+0C],dl
 0055A4E0    call        TChartFontObject.Repaint
 0055A4E5    ret
*}
end;

//0055A4E8
procedure TCustomChartLegend.SetFrame(Value:TChartPen);
begin
{*
 0055A4E8    mov         eax,dword ptr [eax+24]
 0055A4EB    mov         ecx,dword ptr [eax]
 0055A4ED    call        dword ptr [ecx+8]
 0055A4F0    ret
*}
end;

//0055A4F4
procedure TCustomChartLegend.CMVisibleChanged;
begin
{*
 0055A4F4    call        TChartFontObject.Repaint
 0055A4F9    ret
*}
end;

//0055A4FC
procedure TCustomChartLegend.CMColorChanged;
begin
{*
 0055A4FC    call        TChartFontObject.Repaint
 0055A501    ret
*}
end;

//0055A504
procedure TCustomChartLegend.SetTopLeftPos(Value:Integer);
begin
{*
 0055A504    push        ebp
 0055A505    mov         ebp,esp
 0055A507    push        0
 0055A509    push        ebx
 0055A50A    push        esi
 0055A50B    mov         ebx,edx
 0055A50D    mov         esi,eax
 0055A50F    xor         eax,eax
 0055A511    push        ebp
 0055A512    push        55A570
 0055A517    push        dword ptr fs:[eax]
 0055A51A    mov         dword ptr fs:[eax],esp
 0055A51D    test        ebx,ebx
>0055A51F    jl          0055A526
 0055A521    cmp         ebx,64
>0055A524    jle         0055A549
 0055A526    lea         edx,[ebp-4]
 0055A529    mov         eax,[006E9CDC]
 0055A52E    call        LoadResString
 0055A533    mov         ecx,dword ptr [ebp-4]
 0055A536    mov         dl,1
 0055A538    mov         eax,[005562F8];LegendException
 0055A53D    call        Exception.Create
 0055A542    call        @RaiseExcept
>0055A547    jmp         0055A55A
 0055A549    mov         eax,esi
 0055A54B    call        TCustomChartLegend.GetParentChart
 0055A550    lea         edx,[esi+54]
 0055A553    mov         ecx,ebx
 0055A555    call        TCustomTeePanel.SetIntegerProperty
 0055A55A    xor         eax,eax
 0055A55C    pop         edx
 0055A55D    pop         ecx
 0055A55E    pop         ecx
 0055A55F    mov         dword ptr fs:[eax],edx
 0055A562    push        55A577
 0055A567    lea         eax,[ebp-4]
 0055A56A    call        @LStrClr
 0055A56F    ret
>0055A570    jmp         @HandleFinally
>0055A575    jmp         0055A567
 0055A577    pop         esi
 0055A578    pop         ebx
 0055A579    pop         ecx
 0055A57A    pop         ebp
 0055A57B    ret
*}
end;

//0055A57C
procedure TCustomChartLegend.SetFirstValue(Value:Integer);
begin
{*
 0055A57C    push        ebp
 0055A57D    mov         ebp,esp
 0055A57F    push        0
 0055A581    push        ebx
 0055A582    push        esi
 0055A583    mov         esi,edx
 0055A585    mov         ebx,eax
 0055A587    xor         eax,eax
 0055A589    push        ebp
 0055A58A    push        55A5E3
 0055A58F    push        dword ptr fs:[eax]
 0055A592    mov         dword ptr fs:[eax],esp
 0055A595    test        esi,esi
>0055A597    jge         0055A5BC
 0055A599    lea         edx,[ebp-4]
 0055A59C    mov         eax,[006E9CE0]
 0055A5A1    call        LoadResString
 0055A5A6    mov         ecx,dword ptr [ebp-4]
 0055A5A9    mov         dl,1
 0055A5AB    mov         eax,[005562F8];LegendException
 0055A5B0    call        Exception.Create
 0055A5B5    call        @RaiseExcept
>0055A5BA    jmp         0055A5CD
 0055A5BC    mov         eax,ebx
 0055A5BE    call        TCustomChartLegend.GetParentChart
 0055A5C3    lea         edx,[ebx+20]
 0055A5C6    mov         ecx,esi
 0055A5C8    call        TCustomTeePanel.SetLongintProperty
 0055A5CD    xor         eax,eax
 0055A5CF    pop         edx
 0055A5D0    pop         ecx
 0055A5D1    pop         ecx
 0055A5D2    mov         dword ptr fs:[eax],edx
 0055A5D5    push        55A5EA
 0055A5DA    lea         eax,[ebp-4]
 0055A5DD    call        @LStrClr
 0055A5E2    ret
>0055A5E3    jmp         @HandleFinally
>0055A5E8    jmp         0055A5DA
 0055A5EA    pop         esi
 0055A5EB    pop         ebx
 0055A5EC    pop         ecx
 0055A5ED    pop         ebp
 0055A5EE    ret
*}
end;

//0055A5F0
procedure TCustomChartLegend.SetTextStyle(Value:TLegendTextStyle);
begin
{*
 0055A5F0    cmp         dl,byte ptr [eax+50]
>0055A5F3    je          0055A5FD
 0055A5F5    mov         byte ptr [eax+50],dl
 0055A5F8    call        TChartFontObject.Repaint
 0055A5FD    ret
*}
end;

//0055A600
procedure TCustomChartLegend.SetMaxNumRows(Value:Integer);
begin
{*
 0055A600    push        ebx
 0055A601    push        esi
 0055A602    mov         esi,edx
 0055A604    mov         ebx,eax
 0055A606    mov         eax,ebx
 0055A608    call        TCustomChartLegend.GetParentChart
 0055A60D    lea         edx,[ebx+30]
 0055A610    mov         ecx,esi
 0055A612    call        TCustomTeePanel.SetIntegerProperty
 0055A617    pop         esi
 0055A618    pop         ebx
 0055A619    ret
*}
end;

//0055A61C
procedure TCustomChartLegend.SetLegendStyle(Value:TLegendStyle);
begin
{*
 0055A61C    push        ebx
 0055A61D    mov         ebx,eax
 0055A61F    cmp         dl,byte ptr [ebx+2D]
>0055A622    je          0055A635
 0055A624    mov         byte ptr [ebx+2D],dl
 0055A627    mov         eax,ebx
 0055A629    call        TCustomChartLegend.CalcLegendStyle
 0055A62E    mov         eax,ebx
 0055A630    call        TChartFontObject.Repaint
 0055A635    pop         ebx
 0055A636    ret
*}
end;

//0055A638
procedure TCustomChartLegend.SetHorizMargin(Value:Integer);
begin
{*
 0055A638    push        ebx
 0055A639    push        esi
 0055A63A    mov         esi,edx
 0055A63C    mov         ebx,eax
 0055A63E    mov         eax,ebx
 0055A640    call        TCustomChartLegend.GetParentChart
 0055A645    lea         edx,[ebx+28]
 0055A648    mov         ecx,esi
 0055A64A    call        TCustomTeePanel.SetIntegerProperty
 0055A64F    pop         esi
 0055A650    pop         ebx
 0055A651    ret
*}
end;

//0055A654
procedure TCustomChartLegend.SetVertMargin(Value:Integer);
begin
{*
 0055A654    push        ebx
 0055A655    push        esi
 0055A656    mov         esi,edx
 0055A658    mov         ebx,eax
 0055A65A    mov         eax,ebx
 0055A65C    call        TCustomChartLegend.GetParentChart
 0055A661    lea         edx,[ebx+58]
 0055A664    mov         ecx,esi
 0055A666    call        TCustomTeePanel.SetIntegerProperty
 0055A66B    pop         esi
 0055A66C    pop         ebx
 0055A66D    ret
*}
end;

//0055A670
function TCustomChartLegend.GetParentChart:TCustomChart;
begin
{*
 0055A670    mov         eax,dword ptr [eax+4]
 0055A673    ret
*}
end;

//0055A674
procedure TCustomChartLegend.SetResizeChart(Value:Boolean);
begin
{*
 0055A674    push        ebx
 0055A675    push        esi
 0055A676    mov         ebx,edx
 0055A678    mov         esi,eax
 0055A67A    mov         eax,esi
 0055A67C    call        TCustomChartLegend.GetParentChart
 0055A681    lea         edx,[esi+44]
 0055A684    mov         ecx,ebx
 0055A686    call        TCustomTeePanel.SetBooleanProperty
 0055A68B    pop         esi
 0055A68C    pop         ebx
 0055A68D    ret
*}
end;

//0055A690
procedure TCustomChartWall.SetPen(Value:TChartPen);
begin
{*
 0055A690    mov         eax,dword ptr [eax+10]
 0055A693    mov         ecx,dword ptr [eax]
 0055A695    call        dword ptr [ecx+8]
 0055A698    ret
*}
end;

//0055A69C
procedure TCustomChartLegend.SetColor(Value:TColor);
begin
{*
 0055A69C    push        ebx
 0055A69D    push        esi
 0055A69E    mov         esi,edx
 0055A6A0    mov         ebx,eax
 0055A6A2    mov         eax,ebx
 0055A6A4    call        TCustomChartLegend.GetParentChart
 0055A6A9    lea         edx,[ebx+14]
 0055A6AC    mov         ecx,esi
 0055A6AE    call        TCustomTeePanel.SetColorProperty
 0055A6B3    pop         esi
 0055A6B4    pop         ebx
 0055A6B5    ret
*}
end;

//0055A6B8
procedure TCustomChartLegend.SetColorWidth(Value:Integer);
begin
{*
 0055A6B8    push        ebp
 0055A6B9    mov         ebp,esp
 0055A6BB    push        0
 0055A6BD    push        ebx
 0055A6BE    push        esi
 0055A6BF    mov         ebx,edx
 0055A6C1    mov         esi,eax
 0055A6C3    xor         eax,eax
 0055A6C5    push        ebp
 0055A6C6    push        55A724
 0055A6CB    push        dword ptr fs:[eax]
 0055A6CE    mov         dword ptr fs:[eax],esp
 0055A6D1    test        ebx,ebx
>0055A6D3    jl          0055A6DA
 0055A6D5    cmp         ebx,64
>0055A6D8    jle         0055A6FD
 0055A6DA    lea         edx,[ebp-4]
 0055A6DD    mov         eax,[006E9CE4]
 0055A6E2    call        LoadResString
 0055A6E7    mov         ecx,dword ptr [ebp-4]
 0055A6EA    mov         dl,1
 0055A6EC    mov         eax,[005562F8];LegendException
 0055A6F1    call        Exception.Create
 0055A6F6    call        @RaiseExcept
>0055A6FB    jmp         0055A70E
 0055A6FD    mov         eax,esi
 0055A6FF    call        TCustomChartLegend.GetParentChart
 0055A704    lea         edx,[esi+18]
 0055A707    mov         ecx,ebx
 0055A709    call        TCustomTeePanel.SetIntegerProperty
 0055A70E    xor         eax,eax
 0055A710    pop         edx
 0055A711    pop         ecx
 0055A712    pop         ecx
 0055A713    mov         dword ptr fs:[eax],edx
 0055A716    push        55A72B
 0055A71B    lea         eax,[ebp-4]
 0055A71E    call        @LStrClr
 0055A723    ret
>0055A724    jmp         @HandleFinally
>0055A729    jmp         0055A71B
 0055A72B    pop         esi
 0055A72C    pop         ebx
 0055A72D    pop         ecx
 0055A72E    pop         ebp
 0055A72F    ret
*}
end;

//0055A730
procedure TCustomChartLegend.CalcLegendStyle;
begin
{*
 0055A730    push        ebx
 0055A731    mov         ebx,eax
 0055A733    mov         al,byte ptr [ebx+2D]
 0055A736    test        al,al
>0055A738    jne         0055A75B
 0055A73A    mov         eax,ebx
 0055A73C    call        TCustomChartLegend.GetParentChart
 0055A741    mov         eax,dword ptr [eax+2E0]
 0055A747    call        TChartSeriesList.CountActive
 0055A74C    dec         eax
>0055A74D    jle         0055A755
 0055A74F    mov         byte ptr [ebx+64],1
>0055A753    jmp         0055A75E
 0055A755    mov         byte ptr [ebx+64],2
 0055A759    pop         ebx
 0055A75A    ret
 0055A75B    mov         byte ptr [ebx+64],al
 0055A75E    pop         ebx
 0055A75F    ret
*}
end;

//0055A760
function TCustomChartLegend.FormattedLegend(SeriesOrValueIndex:Integer):AnsiString;
begin
{*
 0055A760    push        ebx
 0055A761    push        esi
 0055A762    push        edi
 0055A763    push        ecx
 0055A764    mov         dword ptr [esp],ecx
 0055A767    mov         edi,edx
 0055A769    mov         ebx,eax
 0055A76B    mov         eax,ebx
 0055A76D    call        TCustomChartLegend.GetParentChart
 0055A772    mov         esi,eax
 0055A774    mov         al,byte ptr [ebx+64]
 0055A777    dec         al
>0055A779    je          0055A785
 0055A77B    dec         al
>0055A77D    je          0055A793
 0055A77F    dec         al
>0055A781    je          0055A7AE
>0055A783    jmp         0055A7D8
 0055A785    mov         ecx,dword ptr [esp]
 0055A788    mov         edx,edi
 0055A78A    mov         eax,esi
 0055A78C    call        TCustomAxisPanel.SeriesTitleLegend
>0055A791    jmp         0055A7D8
 0055A793    mov         eax,dword ptr [esp]
 0055A796    push        eax
 0055A797    mov         eax,esi
 0055A799    call        TCustomChart.GetASeries
 0055A79E    mov         edx,eax
 0055A7A0    mov         ecx,edi
 0055A7A2    mov         eax,esi
 0055A7A4    mov         ebx,dword ptr [eax]
 0055A7A6    call        dword ptr [ebx+108]
>0055A7AC    jmp         0055A7D8
 0055A7AE    mov         eax,dword ptr [esp]
 0055A7B1    push        eax
 0055A7B2    mov         edx,edi
 0055A7B4    mov         eax,esi
 0055A7B6    call        TCustomAxisPanel.GetSeries
 0055A7BB    call        TChartSeries.Count
 0055A7C0    dec         eax
 0055A7C1    push        eax
 0055A7C2    mov         edx,edi
 0055A7C4    mov         eax,esi
 0055A7C6    call        TCustomAxisPanel.GetSeries
 0055A7CB    mov         edx,eax
 0055A7CD    mov         eax,esi
 0055A7CF    pop         ecx
 0055A7D0    mov         ebx,dword ptr [eax]
 0055A7D2    call        dword ptr [ebx+108]
 0055A7D8    pop         edx
 0055A7D9    pop         edi
 0055A7DA    pop         esi
 0055A7DB    pop         ebx
 0055A7DC    ret
*}
end;

//0055A7E0
procedure TCustomChartLegend.SetShadowColor(Value:TColor);
begin
{*
 0055A7E0    push        ebx
 0055A7E1    push        esi
 0055A7E2    mov         esi,edx
 0055A7E4    mov         ebx,eax
 0055A7E6    mov         eax,ebx
 0055A7E8    call        TCustomChartLegend.GetParentChart
 0055A7ED    lea         edx,[ebx+48]
 0055A7F0    mov         ecx,esi
 0055A7F2    call        TCustomTeePanel.SetColorProperty
 0055A7F7    pop         esi
 0055A7F8    pop         ebx
 0055A7F9    ret
*}
end;

//0055A7FC
procedure TCustomChartLegend.SetShadowSize(Value:Integer);
begin
{*
 0055A7FC    push        ebx
 0055A7FD    push        esi
 0055A7FE    mov         esi,edx
 0055A800    mov         ebx,eax
 0055A802    mov         eax,ebx
 0055A804    call        TCustomChartLegend.GetParentChart
 0055A809    lea         edx,[ebx+4C]
 0055A80C    mov         ecx,esi
 0055A80E    call        TCustomTeePanel.SetIntegerProperty
 0055A813    pop         esi
 0055A814    pop         ebx
 0055A815    ret
*}
end;

//0055A818
procedure TCustomChartLegend.SetDividingLines(Value:TChartHiddenPen);
begin
{*
 0055A818    mov         eax,dword ptr [eax+1C]
 0055A81B    mov         ecx,dword ptr [eax]
 0055A81D    call        dword ptr [ecx+8]
 0055A820    ret
*}
end;

//0055A824
function CalcMaxLegendValues(A:Integer; B:Integer; C:Integer):Integer;
begin
{*
 0055A824    push        ebp
 0055A825    mov         ebp,esp
 0055A827    push        ebx
 0055A828    push        esi
 0055A829    push        edi
 0055A82A    mov         edi,ecx
 0055A82C    mov         esi,edx
 0055A82E    mov         ebx,eax
 0055A830    mov         eax,dword ptr [ebp+8]
 0055A833    mov         eax,dword ptr [eax-4]
 0055A836    call        TCustomChartLegend.GetParentChart
 0055A83B    mov         eax,dword ptr [ebp+8]
 0055A83E    cmp         ebx,dword ptr [eax-8]
>0055A841    jle         0055A88D
 0055A843    mov         eax,dword ptr [ebp+8]
 0055A846    cmp         dword ptr [eax-0C],0
>0055A84A    jle         0055A88D
 0055A84C    mov         eax,dword ptr [ebp+8]
 0055A84F    mov         eax,dword ptr [eax-4]
 0055A852    mov         eax,dword ptr [eax+24]
 0055A855    call        TPen.GetWidth
 0055A85A    add         eax,eax
 0055A85C    push        eax
 0055A85D    mov         eax,esi
 0055A85F    pop         edx
 0055A860    sub         eax,edx
 0055A862    mov         edx,dword ptr [ebp+8]
 0055A865    sub         eax,dword ptr [edx-8]
 0055A868    add         eax,edi
 0055A86A    mov         edx,dword ptr [ebp+8]
 0055A86D    mov         ecx,dword ptr [edx-0C]
 0055A870    cdq
 0055A871    idiv        eax,ecx
 0055A873    mov         ebx,eax
 0055A875    mov         eax,dword ptr [ebp+8]
 0055A878    mov         eax,dword ptr [eax-4]
 0055A87B    call        TCustomChartLegend.TotalLegendItems
 0055A880    mov         edx,eax
 0055A882    mov         eax,ebx
 0055A884    call        0056EDD8
 0055A889    mov         ebx,eax
>0055A88B    jmp         0055A88F
 0055A88D    xor         ebx,ebx
 0055A88F    mov         eax,ebx
 0055A891    pop         edi
 0055A892    pop         esi
 0055A893    pop         ebx
 0055A894    pop         ebp
 0055A895    ret
*}
end;

//0055A898
function TCustomChartLegend.MaxLegendValues(YLegend:Integer; ItemHeight:Integer):Integer;
begin
{*
 0055A898    push        ebp
 0055A899    mov         ebp,esp
 0055A89B    add         esp,0FFFFFFF4
 0055A89E    push        ebx
 0055A89F    mov         dword ptr [ebp-0C],ecx
 0055A8A2    mov         dword ptr [ebp-8],edx
 0055A8A5    mov         dword ptr [ebp-4],eax
 0055A8A8    mov         eax,dword ptr [ebp-4]
 0055A8AB    call        TCustomChartLegend.GetParentChart
 0055A8B0    mov         ebx,eax
 0055A8B2    mov         eax,dword ptr [ebp-4]
 0055A8B5    call        TCustomChartLegend.GetVertical
 0055A8BA    test        al,al
>0055A8BC    je          0055A8D9
 0055A8BE    push        ebp
 0055A8BF    mov         ecx,dword ptr [ebx+28A]
 0055A8C5    mov         edx,dword ptr [ebx+23C]
 0055A8CB    mov         eax,dword ptr [ebx+292]
 0055A8D1    call        CalcMaxLegendValues
 0055A8D6    pop         ecx
>0055A8D7    jmp         0055A8EE
 0055A8D9    push        ebp
 0055A8DA    xor         ecx,ecx
 0055A8DC    mov         edx,dword ptr [ebx+238]
 0055A8E2    mov         eax,dword ptr [ebx+28E]
 0055A8E8    call        CalcMaxLegendValues
 0055A8ED    pop         ecx
 0055A8EE    pop         ebx
 0055A8EF    mov         esp,ebp
 0055A8F1    pop         ebp
 0055A8F2    ret
*}
end;

//0055A8F4
function TCustomChartLegend.TotalLegendItems:Integer;
begin
{*
 0055A8F4    push        ebx
 0055A8F5    push        esi
 0055A8F6    push        edi
 0055A8F7    push        ebp
 0055A8F8    mov         ebx,eax
 0055A8FA    xor         edi,edi
 0055A8FC    mov         al,byte ptr [ebx+64]
 0055A8FF    cmp         al,1
>0055A901    je          0055A907
 0055A903    cmp         al,3
>0055A905    jne         0055A941
 0055A907    mov         eax,ebx
 0055A909    call        TCustomChartLegend.GetParentChart
 0055A90E    call        TCustomAxisPanel.SeriesCount
 0055A913    mov         esi,eax
 0055A915    dec         esi
 0055A916    test        esi,esi
>0055A918    jl          0055A93C
 0055A91A    inc         esi
 0055A91B    xor         ebp,ebp
 0055A91D    mov         eax,ebx
 0055A91F    call        TCustomChartLegend.GetParentChart
 0055A924    mov         edx,ebp
 0055A926    call        TCustomAxisPanel.GetSeries
 0055A92B    cmp         byte ptr [eax+30],0
>0055A92F    je          0055A938
 0055A931    cmp         byte ptr [eax+70],0
>0055A935    je          0055A938
 0055A937    inc         edi
 0055A938    inc         ebp
 0055A939    dec         esi
>0055A93A    jne         0055A91D
 0055A93C    sub         edi,dword ptr [ebx+20]
>0055A93F    jmp         0055A968
 0055A941    mov         eax,ebx
 0055A943    call        TCustomChartLegend.GetParentChart
 0055A948    call        TCustomChart.GetASeries
 0055A94D    mov         esi,eax
 0055A94F    test        esi,esi
>0055A951    je          0055A968
 0055A953    cmp         byte ptr [esi+70],0
>0055A957    je          0055A968
 0055A959    mov         eax,esi
 0055A95B    mov         edx,dword ptr [eax]
 0055A95D    call        dword ptr [edx+9C]
 0055A963    mov         edi,eax
 0055A965    sub         edi,dword ptr [ebx+20]
 0055A968    mov         edx,edi
 0055A96A    xor         eax,eax
 0055A96C    call        0056EDD0
 0055A971    mov         edi,eax
 0055A973    mov         eax,edi
 0055A975    pop         ebp
 0055A976    pop         edi
 0055A977    pop         esi
 0055A978    pop         ebx
 0055A979    ret
*}
end;

//0055A97C
function TCustomChartLegend.MaxLegendWidth(NumLegendValues:Integer):Integer;
begin
{*
 0055A97C    push        ebp
 0055A97D    mov         ebp,esp
 0055A97F    add         esp,0FFFFFFF0
 0055A982    push        ebx
 0055A983    push        esi
 0055A984    push        edi
 0055A985    xor         ecx,ecx
 0055A987    mov         dword ptr [ebp-10],ecx
 0055A98A    mov         dword ptr [ebp-4],edx
 0055A98D    mov         ebx,eax
 0055A98F    xor         eax,eax
 0055A991    push        ebp
 0055A992    push        55AA18
 0055A997    push        dword ptr fs:[eax]
 0055A99A    mov         dword ptr fs:[eax],esp
 0055A99D    xor         esi,esi
 0055A99F    cmp         dword ptr [ebp-4],0FFFFFFFF
>0055A9A3    jne         0055A9B4
 0055A9A5    mov         eax,ebx
 0055A9A7    call        TCustomChartLegend.TotalLegendItems
 0055A9AC    mov         edi,eax
 0055A9AE    add         edi,dword ptr [ebx+20]
 0055A9B1    dec         edi
>0055A9B2    jmp         0055A9BB
 0055A9B4    mov         edi,dword ptr [ebx+20]
 0055A9B7    add         edi,dword ptr [ebp-4]
 0055A9BA    dec         edi
 0055A9BB    mov         eax,ebx
 0055A9BD    call        TCustomChartLegend.GetParentChart
 0055A9C2    mov         dword ptr [ebp-0C],eax
 0055A9C5    mov         eax,dword ptr [ebx+20]
 0055A9C8    mov         ebx,edi
 0055A9CA    sub         ebx,eax
>0055A9CC    jl          0055AA02
 0055A9CE    inc         ebx
 0055A9CF    mov         dword ptr [ebp-8],eax
 0055A9D2    lea         ecx,[ebp-10]
 0055A9D5    mov         edx,dword ptr [ebp-8]
 0055A9D8    mov         eax,dword ptr [ebp-0C]
 0055A9DB    call        TCustomChart.FormattedLegend
 0055A9E0    mov         edx,dword ptr [ebp-10]
 0055A9E3    mov         eax,dword ptr [ebp-0C]
 0055A9E6    mov         eax,dword ptr [eax+280]
 0055A9EC    mov         ecx,dword ptr [eax]
 0055A9EE    call        dword ptr [ecx+60]
 0055A9F1    mov         edx,eax
 0055A9F3    mov         eax,esi
 0055A9F5    call        0056EDD0
 0055A9FA    mov         esi,eax
 0055A9FC    inc         dword ptr [ebp-8]
 0055A9FF    dec         ebx
>0055AA00    jne         0055A9D2
 0055AA02    xor         eax,eax
 0055AA04    pop         edx
 0055AA05    pop         ecx
 0055AA06    pop         ecx
 0055AA07    mov         dword ptr fs:[eax],edx
 0055AA0A    push        55AA1F
 0055AA0F    lea         eax,[ebp-10]
 0055AA12    call        @LStrClr
 0055AA17    ret
>0055AA18    jmp         @HandleFinally
>0055AA1D    jmp         0055AA0F
 0055AA1F    mov         eax,esi
 0055AA21    pop         edi
 0055AA22    pop         esi
 0055AA23    pop         ebx
 0055AA24    mov         esp,ebp
 0055AA26    pop         ebp
 0055AA27    ret
*}
end;

//0055AA28
function TCustomChartLegend.GetColorRect(X1:Integer; Y0:Integer; Y1:Integer):TRect;
begin
{*
 0055AA28    push        ebp
 0055AA29    mov         ebp,esp
 0055AA2B    push        ecx
 0055AA2C    push        ebx
 0055AA2D    mov         dword ptr [ebp-4],ecx
 0055AA30    mov         ebx,dword ptr [ebp+8]
 0055AA33    mov         ecx,edx
 0055AA35    sub         ecx,dword ptr [eax+60]
 0055AA38    mov         dword ptr [ebx],ecx
 0055AA3A    add         ecx,dword ptr [eax+60]
 0055AA3D    mov         dword ptr [ebx+8],ecx
 0055AA40    mov         eax,dword ptr [ebp-4]
 0055AA43    add         eax,2
 0055AA46    mov         dword ptr [ebx+4],eax
 0055AA49    mov         eax,dword ptr [ebp+0C]
 0055AA4C    sub         eax,2
 0055AA4F    mov         dword ptr [ebx+0C],eax
 0055AA52    pop         ebx
 0055AA53    pop         ecx
 0055AA54    pop         ebp
 0055AA55    ret         8
*}
end;

//0055AA58
function TCustomChartLegend.GetVertical:Boolean;
begin
{*
 0055AA58    mov         dl,byte ptr [eax+0C]
 0055AA5B    test        dl,dl
>0055AA5D    je          0055AA67
 0055AA5F    cmp         dl,1
>0055AA62    je          0055AA67
 0055AA64    xor         eax,eax
 0055AA66    ret
 0055AA67    mov         al,1
 0055AA69    ret
*}
end;

//0055AA6C
procedure DrawLegendItem(ItemIndex:Integer; ItemOrder:Integer);
begin
{*
 0055AA6C    push        ebp
 0055AA6D    mov         ebp,esp
 0055AA6F    add         esp,0FFFFFFDC
 0055AA72    push        ebx
 0055AA73    push        esi
 0055AA74    push        edi
 0055AA75    xor         ecx,ecx
 0055AA77    mov         dword ptr [ebp-14],ecx
 0055AA7A    mov         dword ptr [ebp-8],edx
 0055AA7D    mov         dword ptr [ebp-4],eax
 0055AA80    xor         eax,eax
 0055AA82    push        ebp
 0055AA83    push        55ACEB
 0055AA88    push        dword ptr fs:[eax]
 0055AA8B    mov         dword ptr fs:[eax],esp
 0055AA8E    mov         eax,dword ptr [ebp+8]
 0055AA91    mov         eax,dword ptr [eax-8]
 0055AA94    cmp         eax,dword ptr [ebp-8]
>0055AA97    jle         0055ACD5
 0055AA9D    mov         eax,dword ptr [ebp+8]
 0055AAA0    mov         eax,dword ptr [eax-0C]
 0055AAA3    call        TCustomChartLegend.GetParentChart
 0055AAA8    mov         ebx,eax
 0055AAAA    mov         esi,dword ptr [ebx+280]
 0055AAB0    xor         edx,edx
 0055AAB2    mov         eax,dword ptr [esi+10]
 0055AAB5    call        TBrush.SetStyle
 0055AABA    mov         eax,dword ptr [ebp+8]
 0055AABD    mov         eax,dword ptr [eax-0C]
 0055AAC0    mov         edx,dword ptr [eax+14]
 0055AAC3    mov         eax,dword ptr [esi+10]
 0055AAC6    call        TBrush.SetColor
 0055AACB    mov         eax,dword ptr [ebp+8]
 0055AACE    mov         eax,dword ptr [eax-10]
 0055AAD1    mov         dword ptr [ebp-0C],eax
 0055AAD4    mov         eax,dword ptr [ebp+8]
 0055AAD7    mov         eax,dword ptr [eax-0C]
 0055AADA    mov         eax,dword ptr [eax+38]
 0055AADD    inc         eax
 0055AADE    mov         dword ptr [ebp-10],eax
 0055AAE1    mov         eax,dword ptr [ebp+8]
 0055AAE4    mov         eax,dword ptr [eax-0C]
 0055AAE7    call        TCustomChartLegend.GetVertical
 0055AAEC    test        al,al
>0055AAEE    je          0055AAFE
 0055AAF0    mov         eax,dword ptr [ebp+8]
 0055AAF3    mov         eax,dword ptr [eax-14]
 0055AAF6    imul        dword ptr [ebp-8]
 0055AAF9    add         dword ptr [ebp-10],eax
>0055AAFC    jmp         0055AB43
 0055AAFE    mov         eax,dword ptr [ebp+8]
 0055AB01    mov         eax,dword ptr [eax-0C]
 0055AB04    push        dword ptr [eax+68]
 0055AB07    mov         eax,dword ptr [ebp-8]
 0055AB0A    pop         edx
 0055AB0B    mov         ecx,edx
 0055AB0D    cdq
 0055AB0E    idiv        eax,ecx
 0055AB10    mov         edx,dword ptr [ebp+8]
 0055AB13    imul        dword ptr [edx-14]
 0055AB16    add         dword ptr [ebp-10],eax
 0055AB19    mov         eax,dword ptr [ebp+8]
 0055AB1C    mov         eax,dword ptr [eax-0C]
 0055AB1F    push        dword ptr [eax+68]
 0055AB22    mov         eax,dword ptr [ebp-8]
 0055AB25    pop         edx
 0055AB26    mov         ecx,edx
 0055AB28    cdq
 0055AB29    idiv        eax,ecx
 0055AB2B    mov         eax,dword ptr [ebp+8]
 0055AB2E    mov         eax,dword ptr [eax-18]
 0055AB31    mov         ecx,dword ptr [ebp+8]
 0055AB34    mov         ecx,dword ptr [ecx-0C]
 0055AB37    add         eax,dword ptr [ecx+60]
 0055AB3A    add         eax,4
 0055AB3D    imul        edx,eax
 0055AB40    add         dword ptr [ebp-0C],edx
 0055AB43    cmp         word ptr [ebx+3E2],0
>0055AB4B    je          0055AB78
 0055AB4D    lea         eax,[ebp-0C]
 0055AB50    push        eax
 0055AB51    lea         eax,[ebp-10]
 0055AB54    push        eax
 0055AB55    mov         eax,dword ptr [ebp+8]
 0055AB58    add         eax,0FFFFFFFC
 0055AB5B    push        eax
 0055AB5C    mov         eax,dword ptr [ebp+8]
 0055AB5F    mov         eax,dword ptr [eax-0C]
 0055AB62    call        TCustomChartLegend.GetParentChart
 0055AB67    mov         edx,eax
 0055AB69    mov         ecx,dword ptr [ebp-4]
 0055AB6C    mov         eax,dword ptr [ebx+3E4]
 0055AB72    call        dword ptr [ebx+3E0]
 0055AB78    mov         dl,1
 0055AB7A    mov         eax,dword ptr [esi+10]
 0055AB7D    call        TBrush.SetStyle
 0055AB82    lea         ecx,[ebp-14]
 0055AB85    mov         edx,dword ptr [ebp-4]
 0055AB88    mov         eax,ebx
 0055AB8A    call        TCustomChart.FormattedLegend
 0055AB8F    cmp         dword ptr [ebp-14],0
>0055AB93    je          0055AC4A
 0055AB99    mov         eax,dword ptr [ebp-14]
 0055AB9C    push        eax
 0055AB9D    mov         ecx,dword ptr [ebp-10]
 0055ABA0    mov         edx,dword ptr [ebp-0C]
 0055ABA3    mov         eax,esi
 0055ABA5    mov         edi,dword ptr [eax]
 0055ABA7    call        dword ptr [edi+5C]
 0055ABAA    mov         eax,dword ptr [ebp+8]
 0055ABAD    mov         eax,dword ptr [eax-14]
 0055ABB0    add         eax,dword ptr [ebp-10]
 0055ABB3    push        eax
 0055ABB4    lea         eax,[ebp-24]
 0055ABB7    push        eax
 0055ABB8    mov         edx,dword ptr [ebp-0C]
 0055ABBB    sub         edx,4
 0055ABBE    mov         eax,dword ptr [ebp+8]
 0055ABC1    mov         eax,dword ptr [eax-0C]
 0055ABC4    mov         ecx,dword ptr [ebp-10]
 0055ABC7    call        TCustomChartLegend.GetColorRect
 0055ABCC    mov         eax,dword ptr [ebp+8]
 0055ABCF    mov         eax,dword ptr [eax-0C]
 0055ABD2    mov         al,byte ptr [eax+64]
 0055ABD5    cmp         al,1
>0055ABD7    je          0055ABE0
 0055ABD9    mov         edx,dword ptr [ebp+8]
 0055ABDC    cmp         al,3
>0055ABDE    jne         0055ABFA
 0055ABE0    mov         edx,dword ptr [ebp-4]
 0055ABE3    mov         eax,ebx
 0055ABE5    call        TCustomAxisPanel.ActiveSeriesLegend
 0055ABEA    lea         ecx,[ebp-24]
 0055ABED    or          edx,0FFFFFFFF
 0055ABF0    mov         edi,dword ptr [eax]
 0055ABF2    call        dword ptr [edi+128]
>0055ABF8    jmp         0055AC4A
 0055ABFA    mov         eax,dword ptr [ebp+8]
 0055ABFD    cmp         dword ptr [eax-1C],0
>0055AC01    je          0055AC29
 0055AC03    mov         eax,dword ptr [ebp+8]
 0055AC06    mov         eax,dword ptr [eax-1C]
 0055AC09    mov         edx,dword ptr [ebp-4]
 0055AC0C    mov         ecx,dword ptr [eax]
 0055AC0E    call        dword ptr [ecx+0B4]
 0055AC14    mov         edx,eax
 0055AC16    lea         ecx,[ebp-24]
 0055AC19    mov         eax,dword ptr [ebp+8]
 0055AC1C    mov         eax,dword ptr [eax-1C]
 0055AC1F    mov         edi,dword ptr [eax]
 0055AC21    call        dword ptr [edi+128]
>0055AC27    jmp         0055AC4A
 0055AC29    mov         edx,0FFFFFF
 0055AC2E    mov         eax,dword ptr [esi+10]
 0055AC31    call        TBrush.SetColor
 0055AC36    xor         edx,edx
 0055AC38    mov         eax,dword ptr [esi+10]
 0055AC3B    call        TBrush.SetStyle
 0055AC40    lea         edx,[ebp-24]
 0055AC43    mov         eax,esi
 0055AC45    mov         ecx,dword ptr [eax]
 0055AC47    call        dword ptr [ecx+70]
 0055AC4A    cmp         dword ptr [ebp-8],0
>0055AC4E    jle         0055ACD5
 0055AC54    mov         eax,dword ptr [ebp+8]
 0055AC57    mov         eax,dword ptr [eax-0C]
 0055AC5A    mov         eax,dword ptr [eax+1C]
 0055AC5D    cmp         byte ptr [eax+21],0
>0055AC61    je          0055ACD5
 0055AC63    mov         eax,dword ptr [ebp+8]
 0055AC66    mov         eax,dword ptr [eax-0C]
 0055AC69    mov         edx,dword ptr [eax+1C]
 0055AC6C    mov         eax,dword ptr [ebx+280]
 0055AC72    mov         eax,dword ptr [eax+0C]
 0055AC75    mov         ecx,dword ptr [eax]
 0055AC77    call        dword ptr [ecx+8]
 0055AC7A    mov         dl,1
 0055AC7C    mov         eax,dword ptr [ebx+280]
 0055AC82    mov         ecx,dword ptr [eax]
 0055AC84    call        dword ptr [ecx+1C]
 0055AC87    mov         eax,dword ptr [ebp+8]
 0055AC8A    mov         eax,dword ptr [eax-0C]
 0055AC8D    call        TCustomChartLegend.GetVertical
 0055AC92    test        al,al
>0055AC94    je          0055ACB5
 0055AC96    mov         eax,dword ptr [ebp-10]
 0055AC99    push        eax
 0055AC9A    mov         eax,dword ptr [ebp+8]
 0055AC9D    mov         eax,dword ptr [eax-0C]
 0055ACA0    mov         ecx,dword ptr [eax+3C]
 0055ACA3    mov         eax,dword ptr [ebp+8]
 0055ACA6    mov         eax,dword ptr [eax-0C]
 0055ACA9    mov         edx,dword ptr [eax+34]
 0055ACAC    mov         eax,esi
 0055ACAE    mov         ebx,dword ptr [eax]
 0055ACB0    call        dword ptr [ebx+6C]
>0055ACB3    jmp         0055ACD5
 0055ACB5    mov         eax,dword ptr [ebp+8]
 0055ACB8    mov         eax,dword ptr [eax-0C]
 0055ACBB    mov         eax,dword ptr [eax+40]
 0055ACBE    push        eax
 0055ACBF    mov         eax,dword ptr [ebp+8]
 0055ACC2    mov         eax,dword ptr [eax-0C]
 0055ACC5    mov         ecx,dword ptr [eax+38]
 0055ACC8    mov         edx,dword ptr [ebp-24]
 0055ACCB    sub         edx,4
 0055ACCE    mov         eax,esi
 0055ACD0    mov         ebx,dword ptr [eax]
 0055ACD2    call        dword ptr [ebx+74]
 0055ACD5    xor         eax,eax
 0055ACD7    pop         edx
 0055ACD8    pop         ecx
 0055ACD9    pop         ecx
 0055ACDA    mov         dword ptr fs:[eax],edx
 0055ACDD    push        55ACF2
 0055ACE2    lea         eax,[ebp-14]
 0055ACE5    call        @LStrClr
 0055ACEA    ret
>0055ACEB    jmp         @HandleFinally
>0055ACF0    jmp         0055ACE2
 0055ACF2    pop         edi
 0055ACF3    pop         esi
 0055ACF4    pop         ebx
 0055ACF5    mov         esp,ebp
 0055ACF7    pop         ebp
 0055ACF8    ret
*}
end;

//0055ACFC
procedure DrawLegendBackground;
begin
{*
 0055ACFC    push        ebp
 0055ACFD    mov         ebp,esp
 0055ACFF    add         esp,0FFFFFFDC
 0055AD02    push        ebx
 0055AD03    push        esi
 0055AD04    push        edi
 0055AD05    mov         edi,dword ptr [ebp+8]
 0055AD08    add         edi,0FFFFFFF4
 0055AD0B    mov         eax,dword ptr [edi]
 0055AD0D    push        edi
 0055AD0E    lea         esi,[eax+34]
 0055AD11    lea         edi,[ebp-14]
 0055AD14    movs        dword ptr [edi],dword ptr [esi]
 0055AD15    movs        dword ptr [edi],dword ptr [esi]
 0055AD16    movs        dword ptr [edi],dword ptr [esi]
 0055AD17    movs        dword ptr [edi],dword ptr [esi]
 0055AD18    pop         edi
 0055AD19    mov         eax,dword ptr [edi]
 0055AD1B    call        TCustomChartLegend.GetParentChart
 0055AD20    mov         esi,dword ptr [eax+280]
 0055AD26    mov         eax,dword ptr [edi]
 0055AD28    mov         edx,dword ptr [eax+24]
 0055AD2B    mov         eax,esi
 0055AD2D    call        TTeeCanvas.AssignVisiblePen
 0055AD32    mov         eax,dword ptr [edi]
 0055AD34    mov         eax,dword ptr [eax+24]
 0055AD37    cmp         byte ptr [eax+21],0
>0055AD3B    je          0055AD8D
 0055AD3D    mov         eax,dword ptr [esi+0C]
 0055AD40    call        TPen.GetColor
 0055AD45    cmp         eax,20000000
>0055AD4A    jne         0055AD56
 0055AD4C    xor         edx,edx
 0055AD4E    mov         eax,dword ptr [esi+0C]
 0055AD51    call        TPen.SetColor
 0055AD56    mov         eax,dword ptr [ebp+8]
 0055AD59    mov         eax,dword ptr [eax-20]
 0055AD5C    push        eax
 0055AD5D    mov         eax,dword ptr [ebp+8]
 0055AD60    mov         eax,dword ptr [eax-20]
 0055AD63    push        eax
 0055AD64    lea         eax,[ebp-14]
 0055AD67    push        eax
 0055AD68    call        USER32.InflateRect
 0055AD6D    mov         eax,dword ptr [edi]
 0055AD6F    mov         eax,dword ptr [eax+4C]
 0055AD72    mov         edx,dword ptr [ebp+8]
 0055AD75    add         eax,dword ptr [edx-20]
 0055AD78    mov         edx,dword ptr [ebp+8]
 0055AD7B    mov         edx,dword ptr [edx-20]
 0055AD7E    dec         edx
 0055AD7F    sar         edx,1
>0055AD81    jns         0055AD86
 0055AD83    adc         edx,0
 0055AD86    add         eax,edx
 0055AD88    mov         dword ptr [ebp-4],eax
>0055AD8B    jmp         0055AD96
 0055AD8D    mov         eax,dword ptr [edi]
 0055AD8F    mov         eax,dword ptr [eax+4C]
 0055AD92    dec         eax
 0055AD93    mov         dword ptr [ebp-4],eax
 0055AD96    xor         edx,edx
 0055AD98    mov         eax,dword ptr [esi+10]
 0055AD9B    call        TBrush.SetStyle
 0055ADA0    mov         eax,dword ptr [edi]
 0055ADA2    cmp         dword ptr [eax+4C],0
>0055ADA6    jle         0055AE0B
 0055ADA8    mov         eax,dword ptr [edi]
 0055ADAA    mov         edx,dword ptr [eax+48]
 0055ADAD    mov         eax,dword ptr [esi+10]
 0055ADB0    call        TBrush.SetColor
 0055ADB5    mov         eax,dword ptr [edi]
 0055ADB7    lea         ebx,[eax+34]
 0055ADBA    mov         eax,dword ptr [ebx+0C]
 0055ADBD    add         eax,dword ptr [ebp-4]
 0055ADC0    push        eax
 0055ADC1    lea         eax,[ebp-24]
 0055ADC4    push        eax
 0055ADC5    mov         edx,dword ptr [ebx+4]
 0055ADC8    mov         eax,dword ptr [edi]
 0055ADCA    add         edx,dword ptr [eax+4C]
 0055ADCD    mov         eax,dword ptr [ebx]
 0055ADCF    mov         ecx,dword ptr [edi]
 0055ADD1    add         eax,dword ptr [ecx+4C]
 0055ADD4    mov         ecx,dword ptr [ebx+8]
 0055ADD7    add         ecx,dword ptr [ebp-4]
 0055ADDA    call        Rect
 0055ADDF    mov         eax,esi
 0055ADE1    mov         edx,dword ptr [eax]
 0055ADE3    call        dword ptr [edx+98]
 0055ADE9    test        al,al
>0055ADEB    je          0055AE01
 0055ADED    lea         edx,[ebp-24]
 0055ADF0    mov         ecx,8
 0055ADF5    mov         eax,esi
 0055ADF7    mov         ebx,dword ptr [eax]
 0055ADF9    call        dword ptr [ebx+10C]
>0055ADFF    jmp         0055AE0B
 0055AE01    lea         edx,[ebp-24]
 0055AE04    mov         eax,esi
 0055AE06    mov         ecx,dword ptr [eax]
 0055AE08    call        dword ptr [ecx+3C]
 0055AE0B    mov         eax,dword ptr [edi]
 0055AE0D    mov         edx,dword ptr [eax+10]
 0055AE10    mov         eax,dword ptr [esi+10]
 0055AE13    mov         ecx,dword ptr [eax]
 0055AE15    call        dword ptr [ecx+8]
 0055AE18    mov         eax,dword ptr [esi+10]
 0055AE1B    call        TBrush.GetStyle
 0055AE20    test        al,al
>0055AE22    jne         0055AE33
 0055AE24    mov         eax,dword ptr [edi]
 0055AE26    mov         edx,dword ptr [eax+14]
 0055AE29    mov         eax,dword ptr [esi+10]
 0055AE2C    call        TBrush.SetColor
>0055AE31    jmp         0055AE48
 0055AE33    mov         eax,dword ptr [edi]
 0055AE35    mov         edx,dword ptr [eax+14]
 0055AE38    mov         eax,esi
 0055AE3A    mov         ecx,dword ptr [eax]
 0055AE3C    call        dword ptr [ecx+18]
 0055AE3F    mov         dl,2
 0055AE41    mov         eax,esi
 0055AE43    mov         ecx,dword ptr [eax]
 0055AE45    call        dword ptr [ecx+1C]
 0055AE48    mov         eax,dword ptr [edi]
 0055AE4A    mov         eax,dword ptr [eax+10]
 0055AE4D    call        TChartBrush.HasBitmap
 0055AE52    test        al,al
>0055AE54    je          0055AE6A
 0055AE56    mov         eax,dword ptr [edi]
 0055AE58    mov         eax,dword ptr [eax+10]
 0055AE5B    call        TBrush.GetBitmap
 0055AE60    mov         edx,eax
 0055AE62    mov         eax,dword ptr [esi+10]
 0055AE65    call        TBrush.SetBitmap
 0055AE6A    mov         eax,esi
 0055AE6C    mov         edx,dword ptr [eax]
 0055AE6E    call        dword ptr [edx+98]
 0055AE74    test        al,al
>0055AE76    je          0055AE8C
 0055AE78    lea         edx,[ebp-14]
 0055AE7B    mov         ecx,4
 0055AE80    mov         eax,esi
 0055AE82    mov         ebx,dword ptr [eax]
 0055AE84    call        dword ptr [ebx+10C]
>0055AE8A    jmp         0055AE96
 0055AE8C    lea         edx,[ebp-14]
 0055AE8F    mov         eax,esi
 0055AE91    mov         ecx,dword ptr [eax]
 0055AE93    call        dword ptr [ecx+70]
 0055AE96    pop         edi
 0055AE97    pop         esi
 0055AE98    pop         ebx
 0055AE99    mov         esp,ebp
 0055AE9B    pop         ebp
 0055AE9C    ret
*}
end;

//0055AEA0
procedure CalcHorizontalColsRows;
begin
{*
 0055AEA0    push        ebp
 0055AEA1    mov         ebp,esp
 0055AEA3    push        ebx
 0055AEA4    push        esi
 0055AEA5    mov         esi,dword ptr [ebp+8]
 0055AEA8    add         esi,0FFFFFFF4
 0055AEAB    mov         eax,dword ptr [ebp+8]
 0055AEAE    mov         ecx,dword ptr [eax-18]
 0055AEB1    mov         eax,dword ptr [esi]
 0055AEB3    add         ecx,dword ptr [eax+60]
 0055AEB6    add         ecx,8
 0055AEB9    mov         eax,dword ptr [esi]
 0055AEBB    mov         edx,8
 0055AEC0    mov         ebx,dword ptr [eax]
 0055AEC2    call        dword ptr [ebx+0C]
 0055AEC5    mov         ebx,eax
 0055AEC7    mov         eax,dword ptr [esi]
 0055AEC9    mov         dword ptr [eax+68],ebx
 0055AECC    test        ebx,ebx
>0055AECE    jle         0055AF0B
 0055AED0    mov         eax,dword ptr [ebp+8]
 0055AED3    mov         eax,dword ptr [eax-8]
 0055AED6    cdq
 0055AED7    idiv        eax,ebx
 0055AED9    mov         edx,dword ptr [esi]
 0055AEDB    mov         dword ptr [edx+6C],eax
 0055AEDE    mov         eax,dword ptr [ebp+8]
 0055AEE1    mov         eax,dword ptr [eax-8]
 0055AEE4    mov         edx,dword ptr [esi]
 0055AEE6    mov         ecx,dword ptr [edx+68]
 0055AEE9    cdq
 0055AEEA    idiv        eax,ecx
 0055AEEC    test        edx,edx
>0055AEEE    jle         0055AEF5
 0055AEF0    mov         eax,dword ptr [esi]
 0055AEF2    inc         dword ptr [eax+6C]
 0055AEF5    mov         eax,dword ptr [esi]
 0055AEF7    mov         edx,dword ptr [eax+30]
 0055AEFA    mov         eax,dword ptr [esi]
 0055AEFC    mov         eax,dword ptr [eax+6C]
 0055AEFF    call        0056EDD8
 0055AF04    mov         edx,dword ptr [esi]
 0055AF06    mov         dword ptr [edx+6C],eax
>0055AF09    jmp         0055AF12
 0055AF0B    mov         eax,dword ptr [esi]
 0055AF0D    xor         edx,edx
 0055AF0F    mov         dword ptr [eax+6C],edx
 0055AF12    pop         esi
 0055AF13    pop         ebx
 0055AF14    pop         ebp
 0055AF15    ret
*}
end;

//0055AF18
function CalcHorizMargin:Integer;
begin
{*
 0055AF18    push        ebp
 0055AF19    mov         ebp,esp
 0055AF1B    mov         eax,dword ptr [ebp+8]
 0055AF1E    mov         eax,dword ptr [eax-0C]
 0055AF21    mov         eax,dword ptr [eax+28]
 0055AF24    test        eax,eax
>0055AF26    jne         0055AF45
 0055AF28    push        64
 0055AF2A    mov         eax,dword ptr [ebp+8]
 0055AF2D    mov         eax,dword ptr [eax-0C]
 0055AF30    call        TCustomChartLegend.GetParentChart
 0055AF35    mov         eax,dword ptr [eax+238]
 0055AF3B    push        eax
 0055AF3C    push        3
 0055AF3E    call        KERNEL32.MulDiv
 0055AF43    pop         ebp
 0055AF44    ret
 0055AF45    mov         edx,dword ptr [ebp+8]
 0055AF48    pop         ebp
 0055AF49    ret
*}
end;

//0055AF4C
function CalcVertMargin:Integer;
begin
{*
 0055AF4C    push        ebp
 0055AF4D    mov         ebp,esp
 0055AF4F    mov         eax,dword ptr [ebp+8]
 0055AF52    mov         eax,dword ptr [eax-0C]
 0055AF55    mov         eax,dword ptr [eax+58]
 0055AF58    test        eax,eax
>0055AF5A    jne         0055AF79
 0055AF5C    push        64
 0055AF5E    mov         eax,dword ptr [ebp+8]
 0055AF61    mov         eax,dword ptr [eax-0C]
 0055AF64    call        TCustomChartLegend.GetParentChart
 0055AF69    mov         eax,dword ptr [eax+23C]
 0055AF6F    push        eax
 0055AF70    push        4
 0055AF72    call        KERNEL32.MulDiv
 0055AF77    pop         ebp
 0055AF78    ret
 0055AF79    mov         edx,dword ptr [ebp+8]
 0055AF7C    pop         ebp
 0055AF7D    ret
*}
end;

//0055AF80
procedure TCustomChartLegend.Draw;
begin
{*
 0055AF80    push        ebp
 0055AF81    mov         ebp,esp
 0055AF83    add         esp,0FFFFFFC8
 0055AF86    push        ebx
 0055AF87    push        esi
 0055AF88    push        edi
 0055AF89    mov         dword ptr [ebp-0C],eax
 0055AF8C    mov         eax,dword ptr [ebp-0C]
 0055AF8F    call        TCustomChartLegend.CalcLegendStyle
 0055AF94    mov         eax,dword ptr [ebp-0C]
 0055AF97    call        TCustomChartLegend.GetParentChart
 0055AF9C    mov         ebx,eax
 0055AF9E    mov         eax,dword ptr [ebp-0C]
 0055AFA1    mov         eax,dword ptr [eax+14]
 0055AFA4    mov         dword ptr [ebx+344],eax
 0055AFAA    mov         eax,dword ptr [ebp-0C]
 0055AFAD    mov         edx,dword ptr [eax+8]
 0055AFB0    mov         eax,ebx
 0055AFB2    mov         ecx,dword ptr [eax]
 0055AFB4    call        dword ptr [ecx+0D8]
 0055AFBA    mov         eax,dword ptr [ebx+280]
 0055AFC0    call        TTeeCanvas.FontHeight
 0055AFC5    mov         dword ptr [ebp-14],eax
 0055AFC8    or          edx,0FFFFFFFF
 0055AFCB    mov         eax,dword ptr [ebp-0C]
 0055AFCE    call        TCustomChartLegend.MaxLegendWidth
 0055AFD3    add         eax,4
 0055AFD6    mov         dword ptr [ebp-18],eax
 0055AFD9    mov         eax,dword ptr [ebp-0C]
 0055AFDC    mov         eax,dword ptr [eax+18]
 0055AFDF    imul        dword ptr [ebp-18]
 0055AFE2    mov         dword ptr [ebp-38],eax
 0055AFE5    fild        dword ptr [ebp-38]
 0055AFE8    fld         tbyte ptr ds:[55B480]
 0055AFEE    fmulp       st(1),st
 0055AFF0    call        @ROUND
 0055AFF5    mov         edx,dword ptr [ebp-0C]
 0055AFF8    mov         dword ptr [edx+60],eax
 0055AFFB    mov         eax,dword ptr [ebp-0C]
 0055AFFE    call        TCustomChartLegend.TotalLegendItems
 0055B003    mov         dword ptr [ebp-8],eax
 0055B006    mov         eax,dword ptr [ebp-0C]
 0055B009    mov         eax,dword ptr [eax+24]
 0055B00C    call        TPen.GetWidth
 0055B011    mov         dword ptr [ebp-20],eax
 0055B014    mov         eax,dword ptr [ebp-0C]
 0055B017    lea         esi,[eax+34]
 0055B01A    mov         eax,dword ptr [ebp-0C]
 0055B01D    mov         al,byte ptr [eax+0C]
 0055B020    sub         al,2
>0055B022    je          0055B06B
 0055B024    dec         al
>0055B026    jne         0055B0A5
 0055B028    mov         eax,dword ptr [ebp-0C]
 0055B02B    mov         edx,dword ptr [ebx+292]
 0055B031    sub         edx,dword ptr [eax+4C]
 0055B034    mov         dword ptr [esi+0C],edx
 0055B037    mov         eax,dword ptr [ebp-0C]
 0055B03A    mov         eax,dword ptr [eax+24]
 0055B03D    cmp         byte ptr [eax+21],0
>0055B041    je          0055B04A
 0055B043    mov         eax,dword ptr [ebp-20]
 0055B046    inc         eax
 0055B047    sub         dword ptr [esi+0C],eax
 0055B04A    push        ebp
 0055B04B    call        CalcHorizontalColsRows
 0055B050    pop         ecx
 0055B051    mov         eax,dword ptr [esi+0C]
 0055B054    sub         eax,2
 0055B057    mov         edx,dword ptr [ebp-0C]
 0055B05A    mov         edx,dword ptr [edx+6C]
 0055B05D    imul        edx,dword ptr [ebp-14]
 0055B061    sub         eax,edx
 0055B063    mov         dword ptr [esi+4],eax
>0055B066    jmp         0055B10C
 0055B06B    mov         eax,dword ptr [ebx+28A]
 0055B071    mov         dword ptr [esi+4],eax
 0055B074    mov         eax,dword ptr [ebp-0C]
 0055B077    mov         eax,dword ptr [eax+24]
 0055B07A    cmp         byte ptr [eax+21],0
>0055B07E    je          0055B087
 0055B080    mov         eax,dword ptr [ebp-20]
 0055B083    inc         eax
 0055B084    add         dword ptr [esi+4],eax
 0055B087    push        ebp
 0055B088    call        CalcHorizontalColsRows
 0055B08D    pop         ecx
 0055B08E    mov         eax,dword ptr [esi+4]
 0055B091    add         eax,2
 0055B094    mov         edx,dword ptr [ebp-0C]
 0055B097    mov         edx,dword ptr [edx+6C]
 0055B09A    imul        edx,dword ptr [ebp-14]
 0055B09E    add         eax,edx
 0055B0A0    mov         dword ptr [esi+0C],eax
>0055B0A3    jmp         0055B10C
 0055B0A5    mov         eax,dword ptr [ebp-0C]
 0055B0A8    fild        dword ptr [eax+54]
 0055B0AB    fmul        dword ptr ds:[55B48C]
 0055B0B1    mov         eax,dword ptr [ebx+231]
 0055B0B7    mov         edi,dword ptr [ebx+229]
 0055B0BD    sub         eax,edi
 0055B0BF    mov         dword ptr [ebp-38],eax
 0055B0C2    fild        dword ptr [ebp-38]
 0055B0C5    fmulp       st(1),st
 0055B0C7    fld         tbyte ptr ds:[55B480]
 0055B0CD    fmulp       st(1),st
 0055B0CF    call        @ROUND
 0055B0D4    add         eax,edi
 0055B0D6    mov         dword ptr [esi+4],eax
 0055B0D9    mov         eax,dword ptr [ebp-0C]
 0055B0DC    mov         dword ptr [eax+68],1
 0055B0E3    mov         edx,dword ptr [esi+4]
 0055B0E6    mov         ecx,dword ptr [ebp-14]
 0055B0E9    mov         eax,dword ptr [ebp-0C]
 0055B0EC    mov         edi,dword ptr [eax]
 0055B0EE    call        dword ptr [edi+0C]
 0055B0F1    mov         edx,dword ptr [ebp-0C]
 0055B0F4    mov         dword ptr [edx+6C],eax
 0055B0F7    mov         eax,dword ptr [esi+4]
 0055B0FA    add         eax,2
 0055B0FD    mov         edx,dword ptr [ebp-0C]
 0055B100    mov         edx,dword ptr [edx+6C]
 0055B103    imul        edx,dword ptr [ebp-14]
 0055B107    add         eax,edx
 0055B109    mov         dword ptr [esi+0C],eax
 0055B10C    xor         esi,esi
 0055B10E    mov         eax,dword ptr [ebp-0C]
 0055B111    lea         edi,[eax+34]
 0055B114    mov         eax,dword ptr [ebp-0C]
 0055B117    mov         al,byte ptr [eax+0C]
 0055B11A    sub         al,1
>0055B11C    jb          0055B132
>0055B11E    je          0055B1B4
 0055B124    dec         eax
 0055B125    sub         al,2
>0055B127    jb          0055B243
>0055B12D    jmp         0055B2E1
 0055B132    mov         eax,dword ptr [ebp-0C]
 0055B135    mov         edx,dword ptr [eax+6C]
 0055B138    mov         eax,dword ptr [ebp-0C]
 0055B13B    call        TCustomChartLegend.MaxLegendWidth
 0055B140    mov         dword ptr [ebp-18],eax
 0055B143    mov         eax,dword ptr [ebx+286]
 0055B149    mov         dword ptr [edi],eax
 0055B14B    mov         eax,dword ptr [ebp-0C]
 0055B14E    mov         eax,dword ptr [eax+24]
 0055B151    cmp         byte ptr [eax+21],0
>0055B155    je          0055B15D
 0055B157    mov         eax,dword ptr [ebp-20]
 0055B15A    inc         eax
 0055B15B    add         dword ptr [edi],eax
 0055B15D    mov         eax,dword ptr [edi]
 0055B15F    add         eax,4
 0055B162    mov         dword ptr [ebp-4],eax
 0055B165    mov         eax,dword ptr [ebp-4]
 0055B168    add         eax,4
 0055B16B    add         eax,dword ptr [ebp-18]
 0055B16E    add         eax,2
 0055B171    sub         eax,dword ptr [edi]
 0055B173    mov         edx,dword ptr [ebp-0C]
 0055B176    imul        dword ptr [edx+18]
 0055B179    mov         dword ptr [ebp-38],eax
 0055B17C    fild        dword ptr [ebp-38]
 0055B17F    fld         tbyte ptr ds:[55B480]
 0055B185    fmulp       st(1),st
 0055B187    call        @ROUND
 0055B18C    mov         esi,eax
 0055B18E    mov         eax,dword ptr [ebp-0C]
 0055B191    mov         dword ptr [eax+60],esi
 0055B194    add         esi,dword ptr [ebp-4]
 0055B197    add         esi,4
 0055B19A    mov         dword ptr [ebp-10],esi
 0055B19D    mov         eax,dword ptr [ebp-10]
 0055B1A0    add         eax,dword ptr [ebp-18]
 0055B1A3    add         eax,2
 0055B1A6    mov         dword ptr [edi+8],eax
 0055B1A9    mov         eax,dword ptr [ebp-0C]
 0055B1AC    mov         esi,dword ptr [eax+6C]
>0055B1AF    jmp         0055B2E1
 0055B1B4    mov         eax,dword ptr [ebp-0C]
 0055B1B7    mov         edx,dword ptr [eax+6C]
 0055B1BA    mov         eax,dword ptr [ebp-0C]
 0055B1BD    call        TCustomChartLegend.MaxLegendWidth
 0055B1C2    mov         dword ptr [ebp-18],eax
 0055B1C5    mov         eax,dword ptr [ebx+28E]
 0055B1CB    mov         dword ptr [edi+8],eax
 0055B1CE    mov         eax,dword ptr [ebp-0C]
 0055B1D1    mov         eax,dword ptr [eax+24]
 0055B1D4    cmp         byte ptr [eax+21],0
>0055B1D8    je          0055B1E1
 0055B1DA    mov         eax,dword ptr [ebp-20]
 0055B1DD    inc         eax
 0055B1DE    sub         dword ptr [edi+8],eax
 0055B1E1    mov         eax,dword ptr [ebp-0C]
 0055B1E4    mov         eax,dword ptr [eax+4C]
 0055B1E7    sub         dword ptr [edi+8],eax
 0055B1EA    mov         eax,dword ptr [edi+8]
 0055B1ED    sub         eax,dword ptr [ebp-18]
 0055B1F0    sub         eax,2
 0055B1F3    mov         dword ptr [ebp-10],eax
 0055B1F6    mov         eax,dword ptr [edi+8]
 0055B1F9    mov         edx,dword ptr [ebp-10]
 0055B1FC    sub         edx,4
 0055B1FF    sub         edx,4
 0055B202    sub         eax,edx
 0055B204    mov         edx,dword ptr [ebp-0C]
 0055B207    imul        dword ptr [edx+18]
 0055B20A    mov         dword ptr [ebp-38],eax
 0055B20D    fild        dword ptr [ebp-38]
 0055B210    fld         tbyte ptr ds:[55B480]
 0055B216    fmulp       st(1),st
 0055B218    call        @ROUND
 0055B21D    mov         esi,eax
 0055B21F    mov         eax,dword ptr [ebp-0C]
 0055B222    mov         dword ptr [eax+60],esi
 0055B225    mov         eax,dword ptr [ebp-10]
 0055B228    sub         eax,esi
 0055B22A    sub         eax,4
 0055B22D    mov         dword ptr [ebp-4],eax
 0055B230    mov         eax,dword ptr [ebp-4]
 0055B233    sub         eax,4
 0055B236    mov         dword ptr [edi],eax
 0055B238    mov         eax,dword ptr [ebp-0C]
 0055B23B    mov         esi,dword ptr [eax+6C]
>0055B23E    jmp         0055B2E1
 0055B243    mov         eax,dword ptr [ebp-0C]
 0055B246    mov         esi,dword ptr [eax+60]
 0055B249    add         esi,dword ptr [ebp-18]
 0055B24C    add         esi,4
 0055B24F    mov         eax,dword ptr [ebp-0C]
 0055B252    imul        esi,dword ptr [eax+68]
 0055B256    add         esi,8
 0055B259    mov         eax,dword ptr [ebp-0C]
 0055B25C    mov         edx,dword ptr [eax+4C]
 0055B25F    add         edx,edx
 0055B261    add         edx,esi
 0055B263    mov         eax,dword ptr [ebx+238]
 0055B269    call        0056EDD8
 0055B26E    mov         esi,eax
 0055B270    mov         eax,dword ptr [ebp-0C]
 0055B273    fild        dword ptr [eax+54]
 0055B276    fmul        dword ptr ds:[55B48C]
 0055B27C    mov         eax,dword ptr [ebx+22D]
 0055B282    sub         eax,dword ptr [ebx+225]
 0055B288    sub         eax,esi
 0055B28A    mov         dword ptr [ebp-38],eax
 0055B28D    fild        dword ptr [ebp-38]
 0055B290    fmulp       st(1),st
 0055B292    fld         tbyte ptr ds:[55B480]
 0055B298    fmulp       st(1),st
 0055B29A    call        @ROUND
 0055B29F    sar         esi,1
>0055B2A1    jns         0055B2A6
 0055B2A3    adc         esi,0
 0055B2A6    mov         edx,dword ptr [ebx+240]
 0055B2AC    sub         edx,esi
 0055B2AE    add         edx,eax
 0055B2B0    mov         dword ptr [edi],edx
 0055B2B2    add         esi,dword ptr [ebx+240]
 0055B2B8    add         eax,esi
 0055B2BA    mov         dword ptr [edi+8],eax
 0055B2BD    mov         eax,dword ptr [edi]
 0055B2BF    add         eax,4
 0055B2C2    mov         dword ptr [ebp-4],eax
 0055B2C5    mov         eax,dword ptr [ebp-0C]
 0055B2C8    mov         eax,dword ptr [eax+60]
 0055B2CB    add         eax,dword ptr [ebp-4]
 0055B2CE    add         eax,4
 0055B2D1    mov         dword ptr [ebp-10],eax
 0055B2D4    mov         eax,dword ptr [ebp-0C]
 0055B2D7    mov         esi,dword ptr [eax+68]
 0055B2DA    mov         eax,dword ptr [ebp-0C]
 0055B2DD    imul        esi,dword ptr [eax+6C]
 0055B2E1    cmp         word ptr [ebx+3EA],0
>0055B2E9    je          0055B322
 0055B2EB    mov         eax,dword ptr [ebp-0C]
 0055B2EE    push        esi
 0055B2EF    lea         esi,[eax+34]
 0055B2F2    lea         edi,[ebp-34]
 0055B2F5    movs        dword ptr [edi],dword ptr [esi]
 0055B2F6    movs        dword ptr [edi],dword ptr [esi]
 0055B2F7    movs        dword ptr [edi],dword ptr [esi]
 0055B2F8    movs        dword ptr [edi],dword ptr [esi]
 0055B2F9    pop         esi
 0055B2FA    mov         eax,dword ptr [ebp-0C]
 0055B2FD    call        TCustomChartLegend.GetParentChart
 0055B302    mov         edx,eax
 0055B304    lea         ecx,[ebp-34]
 0055B307    mov         eax,dword ptr [ebx+3EC]
 0055B30D    call        dword ptr [ebx+3E8]
 0055B313    mov         eax,dword ptr [ebp-0C]
 0055B316    push        esi
 0055B317    lea         edi,[eax+34]
 0055B31A    lea         esi,[ebp-34]
 0055B31D    movs        dword ptr [edi],dword ptr [esi]
 0055B31E    movs        dword ptr [edi],dword ptr [esi]
 0055B31F    movs        dword ptr [edi],dword ptr [esi]
 0055B320    movs        dword ptr [edi],dword ptr [esi]
 0055B321    pop         esi
 0055B322    test        esi,esi
>0055B324    jle         0055B479
 0055B32A    push        ebp
 0055B32B    call        DrawLegendBackground
 0055B330    pop         ecx
 0055B331    mov         eax,dword ptr [ebx+280]
 0055B337    mov         edi,dword ptr [eax+0C]
 0055B33A    mov         eax,dword ptr [ebp-0C]
 0055B33D    cmp         dword ptr [eax+14],0
>0055B341    jne         0055B351
 0055B343    mov         edx,0FFFFFF
 0055B348    mov         eax,edi
 0055B34A    call        TPen.SetColor
>0055B34F    jmp         0055B35A
 0055B351    xor         edx,edx
 0055B353    mov         eax,edi
 0055B355    call        TPen.SetColor
 0055B35A    xor         edx,edx
 0055B35C    mov         eax,edi
 0055B35E    call        TPen.SetStyle
 0055B363    mov         edx,1
 0055B368    mov         eax,edi
 0055B36A    call        TPen.SetWidth
 0055B36F    mov         eax,ebx
 0055B371    call        TCustomChart.GetASeries
 0055B376    mov         dword ptr [ebp-1C],eax
 0055B379    mov         edx,esi
 0055B37B    mov         eax,dword ptr [ebp-8]
 0055B37E    call        0056EDD8
 0055B383    mov         edx,dword ptr [ebp-0C]
 0055B386    add         eax,dword ptr [edx+20]
 0055B389    dec         eax
 0055B38A    mov         dword ptr [ebp-24],eax
 0055B38D    mov         eax,dword ptr [ebp-0C]
 0055B390    cmp         byte ptr [eax+2C],0
>0055B394    je          0055B3B8
 0055B396    mov         esi,dword ptr [ebp-24]
 0055B399    mov         eax,dword ptr [ebp-0C]
 0055B39C    mov         edi,dword ptr [eax+20]
 0055B39F    sub         edi,esi
>0055B3A1    jg          0055B3DB
 0055B3A3    dec         edi
 0055B3A4    push        ebp
 0055B3A5    mov         edx,dword ptr [ebp-24]
 0055B3A8    sub         edx,esi
 0055B3AA    mov         eax,esi
 0055B3AC    call        DrawLegendItem
 0055B3B1    pop         ecx
 0055B3B2    dec         esi
 0055B3B3    inc         edi
>0055B3B4    jne         0055B3A4
>0055B3B6    jmp         0055B3DB
 0055B3B8    mov         eax,dword ptr [ebp-0C]
 0055B3BB    mov         esi,dword ptr [eax+20]
 0055B3BE    mov         edi,dword ptr [ebp-24]
 0055B3C1    sub         edi,esi
>0055B3C3    jl          0055B3DB
 0055B3C5    inc         edi
 0055B3C6    push        ebp
 0055B3C7    mov         eax,dword ptr [ebp-0C]
 0055B3CA    mov         edx,esi
 0055B3CC    sub         edx,dword ptr [eax+20]
 0055B3CF    mov         eax,esi
 0055B3D1    call        DrawLegendItem
 0055B3D6    pop         ecx
 0055B3D7    inc         esi
 0055B3D8    dec         edi
>0055B3D9    jne         0055B3C6
 0055B3DB    lea         esi,[ebx+286]
 0055B3E1    mov         eax,dword ptr [ebp-0C]
 0055B3E4    cmp         byte ptr [eax+44],0
>0055B3E8    je          0055B42F
 0055B3EA    mov         eax,dword ptr [ebp-0C]
 0055B3ED    mov         al,byte ptr [eax+0C]
 0055B3F0    sub         al,1
>0055B3F2    jb          0055B400
>0055B3F4    je          0055B40A
 0055B3F6    dec         al
>0055B3F8    je          0055B415
 0055B3FA    dec         al
>0055B3FC    je          0055B426
>0055B3FE    jmp         0055B42F
 0055B400    mov         eax,dword ptr [ebp-0C]
 0055B403    mov         eax,dword ptr [eax+3C]
 0055B406    mov         dword ptr [esi],eax
>0055B408    jmp         0055B42F
 0055B40A    mov         eax,dword ptr [ebp-0C]
 0055B40D    mov         eax,dword ptr [eax+34]
 0055B410    mov         dword ptr [esi+8],eax
>0055B413    jmp         0055B42F
 0055B415    mov         eax,dword ptr [ebp-0C]
 0055B418    mov         eax,dword ptr [eax+40]
 0055B41B    mov         edx,dword ptr [ebp-0C]
 0055B41E    add         eax,dword ptr [edx+4C]
 0055B421    mov         dword ptr [esi+4],eax
>0055B424    jmp         0055B42F
 0055B426    mov         eax,dword ptr [ebp-0C]
 0055B429    mov         eax,dword ptr [eax+38]
 0055B42C    mov         dword ptr [esi+0C],eax
 0055B42F    mov         eax,dword ptr [ebp-0C]
 0055B432    mov         al,byte ptr [eax+0C]
 0055B435    sub         al,1
>0055B437    jb          0055B445
>0055B439    je          0055B450
 0055B43B    dec         al
>0055B43D    je          0055B45C
 0055B43F    dec         al
>0055B441    je          0055B468
>0055B443    jmp         0055B472
 0055B445    push        ebp
 0055B446    call        CalcHorizMargin
 0055B44B    pop         ecx
 0055B44C    add         dword ptr [esi],eax
>0055B44E    jmp         0055B472
 0055B450    push        ebp
 0055B451    call        CalcHorizMargin
 0055B456    pop         ecx
 0055B457    sub         dword ptr [esi+8],eax
>0055B45A    jmp         0055B472
 0055B45C    push        ebp
 0055B45D    call        CalcVertMargin
 0055B462    pop         ecx
 0055B463    add         dword ptr [esi+4],eax
>0055B466    jmp         0055B472
 0055B468    push        ebp
 0055B469    call        CalcVertMargin
 0055B46E    pop         ecx
 0055B46F    sub         dword ptr [esi+0C],eax
 0055B472    mov         eax,ebx
 0055B474    call        TCustomTeePanel.ReCalcWidthHeight
 0055B479    pop         edi
 0055B47A    pop         esi
 0055B47B    pop         ebx
 0055B47C    mov         esp,ebp
 0055B47E    pop         ebp
 0055B47F    ret
*}
end;

//0055B490
function TCustomChartLegend.FormattedValue(ASeries:TChartSeries; ValueIndex:Integer):AnsiString;
begin
{*
 0055B490    push        ebp
 0055B491    mov         ebp,esp
 0055B493    add         esp,0FFFFFFF4
 0055B496    push        ebx
 0055B497    push        esi
 0055B498    xor         ebx,ebx
 0055B49A    mov         dword ptr [ebp-0C],ebx
 0055B49D    mov         dword ptr [ebp-8],ecx
 0055B4A0    mov         dword ptr [ebp-4],edx
 0055B4A3    mov         ebx,eax
 0055B4A5    mov         esi,dword ptr [ebp+8]
 0055B4A8    xor         eax,eax
 0055B4AA    push        ebp
 0055B4AB    push        55B51D
 0055B4B0    push        dword ptr fs:[eax]
 0055B4B3    mov         dword ptr fs:[eax],esp
 0055B4B6    cmp         dword ptr [ebp-8],0FFFFFFFF
>0055B4BA    je          0055B500
 0055B4BC    push        esi
 0055B4BD    mov         cl,byte ptr [ebx+50]
 0055B4C0    mov         edx,dword ptr [ebp-8]
 0055B4C3    mov         eax,dword ptr [ebp-4]
 0055B4C6    mov         ebx,dword ptr [eax]
 0055B4C8    call        dword ptr [ebx+0BC]
 0055B4CE    lea         eax,[ebp-0C]
 0055B4D1    mov         edx,dword ptr ds:[6E9CD0]
 0055B4D7    mov         dl,byte ptr [edx]
 0055B4D9    call        @LStrFromChar
 0055B4DE    mov         eax,dword ptr [ebp-0C]
 0055B4E1    mov         edx,dword ptr [esi]
 0055B4E3    call        AnsiPos
 0055B4E8    mov         ebx,eax
 0055B4EA    test        ebx,ebx
>0055B4EC    jle         0055B4FA
 0055B4EE    mov         eax,esi
 0055B4F0    call        @UniqueStringA
 0055B4F5    mov         byte ptr [eax+ebx-1],20
 0055B4FA    test        ebx,ebx
>0055B4FC    jne         0055B4CE
>0055B4FE    jmp         0055B507
 0055B500    mov         eax,esi
 0055B502    call        @LStrClr
 0055B507    xor         eax,eax
 0055B509    pop         edx
 0055B50A    pop         ecx
 0055B50B    pop         ecx
 0055B50C    mov         dword ptr fs:[eax],edx
 0055B50F    push        55B524
 0055B514    lea         eax,[ebp-0C]
 0055B517    call        @LStrClr
 0055B51C    ret
>0055B51D    jmp         @HandleFinally
>0055B522    jmp         0055B514
 0055B524    pop         esi
 0055B525    pop         ebx
 0055B526    mov         esp,ebp
 0055B528    pop         ebp
 0055B529    ret         4
*}
end;

//0055B52C
function ClickedRow:Integer;
begin
{*
 0055B52C    push        ebp
 0055B52D    mov         ebp,esp
 0055B52F    push        ebx
 0055B530    push        esi
 0055B531    push        edi
 0055B532    or          esi,0FFFFFFFF
 0055B535    mov         eax,dword ptr [ebp+8]
 0055B538    mov         eax,dword ptr [eax-4]
 0055B53B    mov         ecx,dword ptr [eax+6C]
 0055B53E    dec         ecx
 0055B53F    test        ecx,ecx
>0055B541    jl          0055B57B
 0055B543    inc         ecx
 0055B544    xor         edx,edx
 0055B546    mov         eax,dword ptr [ebp+8]
 0055B549    mov         eax,dword ptr [eax-4]
 0055B54C    mov         eax,dword ptr [eax+38]
 0055B54F    inc         eax
 0055B550    mov         ebx,dword ptr [ebp+8]
 0055B553    mov         ebx,dword ptr [ebx-8]
 0055B556    imul        ebx,edx
 0055B559    add         eax,ebx
 0055B55B    mov         ebx,dword ptr [ebp+8]
 0055B55E    cmp         eax,dword ptr [ebx-0C]
>0055B561    jg          0055B577
 0055B563    mov         ebx,dword ptr [ebp+8]
 0055B566    mov         ebx,dword ptr [ebx-0C]
 0055B569    mov         edi,dword ptr [ebp+8]
 0055B56C    add         eax,dword ptr [edi-8]
 0055B56F    cmp         ebx,eax
>0055B571    jg          0055B577
 0055B573    mov         esi,edx
>0055B575    jmp         0055B57B
 0055B577    inc         edx
 0055B578    dec         ecx
>0055B579    jne         0055B546
 0055B57B    mov         eax,esi
 0055B57D    pop         edi
 0055B57E    pop         esi
 0055B57F    pop         ebx
 0055B580    pop         ebp
 0055B581    ret
*}
end;

//0055B584
function TCustomChartLegend.Clicked(x:Integer; y:Integer):Integer;
begin
{*
 0055B584    push        ebp
 0055B585    mov         ebp,esp
 0055B587    add         esp,0FFFFFFE4
 0055B58A    push        ebx
 0055B58B    push        esi
 0055B58C    push        edi
 0055B58D    mov         dword ptr [ebp-0C],ecx
 0055B590    mov         ebx,edx
 0055B592    mov         dword ptr [ebp-4],eax
 0055B595    or          esi,0FFFFFFFF
 0055B598    lea         ecx,[ebp-1C]
 0055B59B    mov         edx,dword ptr [ebp-0C]
 0055B59E    mov         eax,ebx
 0055B5A0    call        Point
 0055B5A5    push        dword ptr [ebp-18]
 0055B5A8    push        dword ptr [ebp-1C]
 0055B5AB    mov         eax,dword ptr [ebp-4]
 0055B5AE    add         eax,34
 0055B5B1    push        eax
 0055B5B2    call        USER32.PtInRect
 0055B5B7    test        eax,eax
>0055B5B9    je          0055B67A
 0055B5BF    mov         eax,dword ptr [ebp-4]
 0055B5C2    call        TCustomChartLegend.GetVertical
 0055B5C7    test        al,al
>0055B5C9    je          0055B5F9
 0055B5CB    mov         eax,dword ptr [ebp-4]
 0055B5CE    mov         ecx,dword ptr [eax+6C]
 0055B5D1    test        ecx,ecx
>0055B5D3    jle         0055B67A
 0055B5D9    mov         eax,dword ptr [ebp-4]
 0055B5DC    mov         eax,dword ptr [eax+40]
 0055B5DF    mov         edx,dword ptr [ebp-4]
 0055B5E2    sub         eax,dword ptr [edx+38]
 0055B5E5    cdq
 0055B5E6    idiv        eax,ecx
 0055B5E8    mov         dword ptr [ebp-8],eax
 0055B5EB    push        ebp
 0055B5EC    call        ClickedRow
 0055B5F1    pop         ecx
 0055B5F2    mov         esi,eax
>0055B5F4    jmp         0055B67A
 0055B5F9    mov         eax,dword ptr [ebp-4]
 0055B5FC    mov         ecx,dword ptr [eax+68]
 0055B5FF    test        ecx,ecx
>0055B601    jle         0055B67A
 0055B603    mov         eax,dword ptr [ebp-4]
 0055B606    mov         eax,dword ptr [eax+3C]
 0055B609    mov         edx,dword ptr [ebp-4]
 0055B60C    sub         eax,dword ptr [edx+34]
 0055B60F    cdq
 0055B610    idiv        eax,ecx
 0055B612    mov         dword ptr [ebp-14],eax
 0055B615    mov         eax,dword ptr [ebp-4]
 0055B618    call        TCustomChartLegend.GetParentChart
 0055B61D    mov         eax,dword ptr [eax+280]
 0055B623    call        TTeeCanvas.FontHeight
 0055B628    mov         dword ptr [ebp-8],eax
 0055B62B    mov         eax,dword ptr [ebp-4]
 0055B62E    mov         edi,dword ptr [eax+68]
 0055B631    dec         edi
 0055B632    test        edi,edi
>0055B634    jl          0055B67A
 0055B636    inc         edi
 0055B637    mov         dword ptr [ebp-10],0
 0055B63E    mov         eax,dword ptr [ebp-4]
 0055B641    mov         eax,dword ptr [eax+34]
 0055B644    inc         eax
 0055B645    mov         edx,dword ptr [ebp-10]
 0055B648    imul        edx,dword ptr [ebp-14]
 0055B64C    add         eax,edx
 0055B64E    cmp         eax,ebx
>0055B650    jg          0055B674
 0055B652    add         eax,dword ptr [ebp-14]
 0055B655    cmp         ebx,eax
>0055B657    jg          0055B674
 0055B659    push        ebp
 0055B65A    call        ClickedRow
 0055B65F    pop         ecx
 0055B660    mov         esi,eax
 0055B662    cmp         esi,0FFFFFFFF
>0055B665    je          0055B674
 0055B667    mov         eax,dword ptr [ebp-4]
 0055B66A    mov         eax,dword ptr [eax+68]
 0055B66D    imul        esi
 0055B66F    add         eax,dword ptr [ebp-10]
 0055B672    mov         esi,eax
 0055B674    inc         dword ptr [ebp-10]
 0055B677    dec         edi
>0055B678    jne         0055B63E
 0055B67A    mov         eax,esi
 0055B67C    pop         edi
 0055B67D    pop         esi
 0055B67E    pop         ebx
 0055B67F    mov         esp,ebp
 0055B681    pop         ebp
 0055B682    ret
*}
end;

//0055B684
function TTeeSeriesTypes.GetSeriesType(Index:Integer):TTeeSeriesType;
begin
{*
 0055B684    push        ebx
 0055B685    push        esi
 0055B686    mov         esi,edx
 0055B688    mov         ebx,eax
 0055B68A    mov         edx,esi
 0055B68C    mov         eax,ebx
 0055B68E    call        TList.Get
 0055B693    pop         esi
 0055B694    pop         ebx
 0055B695    ret
*}
end;

//0055B698
procedure RegisterTeeSeriesFunction(ASeriesClass:TChartSeriesClass; AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);
begin
{*
 0055B698    push        ebp
 0055B699    mov         ebp,esp
 0055B69B    add         esp,0FFFFFEF8
 0055B6A1    push        ebx
 0055B6A2    push        esi
 0055B6A3    push        edi
 0055B6A4    mov         dword ptr [ebp-8],ecx
 0055B6A7    mov         dword ptr [ebp-4],edx
 0055B6AA    mov         edi,eax
 0055B6AC    test        edi,edi
>0055B6AE    je          0055B6B7
 0055B6B0    mov         eax,edi
 0055B6B2    call        RegisterClass
 0055B6B7    cmp         dword ptr [ebp-4],0
>0055B6BB    je          0055B6C5
 0055B6BD    mov         eax,dword ptr [ebp-4]
 0055B6C0    call        RegisterClass
 0055B6C5    cmp         dword ptr ds:[6ECC84],0;TeeSeriesTypes:TTeeSeriesTypes
>0055B6CC    jne         0055B6DF
 0055B6CE    mov         dl,1
 0055B6D0    mov         eax,[00557E14];TTeeSeriesTypes
 0055B6D5    call        TObject.Create
 0055B6DA    mov         [006ECC84],eax;TeeSeriesTypes:TTeeSeriesTypes
 0055B6DF    mov         eax,[006ECC84];TeeSeriesTypes:TTeeSeriesTypes
 0055B6E4    mov         ebx,dword ptr [eax+8]
 0055B6E7    dec         ebx
 0055B6E8    test        ebx,ebx
>0055B6EA    jl          0055B70C
 0055B6EC    inc         ebx
 0055B6ED    xor         esi,esi
 0055B6EF    mov         edx,esi
 0055B6F1    mov         eax,[006ECC84];TeeSeriesTypes:TTeeSeriesTypes
 0055B6F6    call        TTeeSeriesTypes.GetSeriesType
 0055B6FB    cmp         edi,dword ptr [eax+4]
>0055B6FE    jne         0055B708
 0055B700    mov         eax,dword ptr [eax+8]
 0055B703    cmp         eax,dword ptr [ebp-4]
>0055B706    je          0055B77B
 0055B708    inc         esi
 0055B709    dec         ebx
>0055B70A    jne         0055B6EF
 0055B70C    mov         dl,1
 0055B70E    mov         eax,[00557DB8];TTeeSeriesType
 0055B713    call        TObject.Create
 0055B718    mov         ebx,eax
 0055B71A    mov         dword ptr [ebx+4],edi
 0055B71D    mov         eax,dword ptr [ebp-4]
 0055B720    mov         dword ptr [ebx+8],eax
 0055B723    lea         eax,[ebp-108]
 0055B729    mov         edx,dword ptr [ebp-8]
 0055B72C    mov         ecx,0FF
 0055B731    call        @LStrToString
 0055B736    lea         edx,[ebp-108]
 0055B73C    lea         eax,[ebx+0C]
 0055B73F    mov         cl,14
 0055B741    call        @PStrNCpy
 0055B746    lea         eax,[ebp-108]
 0055B74C    mov         edx,dword ptr [ebp+0C]
 0055B74F    mov         ecx,0FF
 0055B754    call        @LStrToString
 0055B759    lea         edx,[ebp-108]
 0055B75F    lea         eax,[ebx+21]
 0055B762    mov         cl,14
 0055B764    call        @PStrNCpy
 0055B769    mov         eax,dword ptr [ebp+8]
 0055B76C    mov         dword ptr [ebx+38],eax
 0055B76F    mov         edx,ebx
 0055B771    mov         eax,[006ECC84];TeeSeriesTypes:TTeeSeriesTypes
 0055B776    call        TList.Add
 0055B77B    pop         edi
 0055B77C    pop         esi
 0055B77D    pop         ebx
 0055B77E    mov         esp,ebp
 0055B780    pop         ebp
 0055B781    ret         8
*}
end;

//0055B784
procedure RegisterTeeSeries(ASeriesClass:TChartSeriesClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);
begin
{*
 0055B784    push        ebp
 0055B785    mov         ebp,esp
 0055B787    push        ecx
 0055B788    mov         ecx,dword ptr [ebp+8]
 0055B78B    push        ecx
 0055B78C    xor         ecx,ecx
 0055B78E    xchg        ecx,edx
 0055B790    call        RegisterTeeSeriesFunction
 0055B795    pop         ebp
 0055B796    ret         4
*}
end;

//0055B79C
procedure RegisterTeeFunction(AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString; const AGalleryPage:AnsiString; ANumGallerySeries:Integer);
begin
{*
 0055B79C    push        ebp
 0055B79D    mov         ebp,esp
 0055B79F    push        ecx
 0055B7A0    mov         ecx,dword ptr [ebp+8]
 0055B7A3    push        ecx
 0055B7A4    xor         ecx,ecx
 0055B7A6    xchg        eax,ecx
 0055B7A7    xchg        ecx,edx
 0055B7A9    call        RegisterTeeSeriesFunction
 0055B7AE    pop         ebp
 0055B7AF    ret         4
*}
end;

//0055B7B4
procedure RegisterTeeBasicFunction(AFunctionClass:TTeeFunctionClass; const ADescription:AnsiString);
begin
{*
 0055B7B4    push        ebp
 0055B7B5    mov         ebp,esp
 0055B7B7    push        0
 0055B7B9    push        ebx
 0055B7BA    push        esi
 0055B7BB    mov         esi,edx
 0055B7BD    mov         ebx,eax
 0055B7BF    xor         eax,eax
 0055B7C1    push        ebp
 0055B7C2    push        55B7FE
 0055B7C7    push        dword ptr fs:[eax]
 0055B7CA    mov         dword ptr fs:[eax],esp
 0055B7CD    push        2
 0055B7CF    lea         edx,[ebp-4]
 0055B7D2    mov         eax,[006E9D80]
 0055B7D7    call        LoadResString
 0055B7DC    mov         ecx,dword ptr [ebp-4]
 0055B7DF    mov         edx,esi
 0055B7E1    mov         eax,ebx
 0055B7E3    call        RegisterTeeFunction
 0055B7E8    xor         eax,eax
 0055B7EA    pop         edx
 0055B7EB    pop         ecx
 0055B7EC    pop         ecx
 0055B7ED    mov         dword ptr fs:[eax],edx
 0055B7F0    push        55B805
 0055B7F5    lea         eax,[ebp-4]
 0055B7F8    call        @LStrClr
 0055B7FD    ret
>0055B7FE    jmp         @HandleFinally
>0055B803    jmp         0055B7F5
 0055B805    pop         esi
 0055B806    pop         ebx
 0055B807    pop         ecx
 0055B808    pop         ebp
 0055B809    ret
*}
end;

//0055B80C
procedure TeeGalleryExitProc;
begin
{*
 0055B80C    push        ebx
 0055B80D    push        esi
 0055B80E    push        edi
 0055B80F    mov         edi,6ECC84;TeeSeriesTypes:TTeeSeriesTypes
 0055B814    mov         eax,dword ptr [edi]
 0055B816    mov         ebx,dword ptr [eax+8]
 0055B819    dec         ebx
 0055B81A    test        ebx,ebx
>0055B81C    jl          0055B833
 0055B81E    inc         ebx
 0055B81F    xor         esi,esi
 0055B821    mov         edx,esi
 0055B823    mov         eax,dword ptr [edi]
 0055B825    call        TTeeSeriesTypes.GetSeriesType
 0055B82A    call        TObject.Free
 0055B82F    inc         esi
 0055B830    dec         ebx
>0055B831    jne         0055B821
 0055B833    mov         eax,edi
 0055B835    call        FreeAndNil
 0055B83A    pop         edi
 0055B83B    pop         esi
 0055B83C    pop         ebx
 0055B83D    ret
*}
end;

//0055B840
procedure Finalization;
begin
{*
 0055B840    push        ebp
 0055B841    mov         ebp,esp
 0055B843    xor         eax,eax
 0055B845    push        ebp
 0055B846    push        55B86C
 0055B84B    push        dword ptr fs:[eax]
 0055B84E    mov         dword ptr fs:[eax],esp
 0055B851    inc         dword ptr ds:[6ECC88]
>0055B857    jne         0055B85E
 0055B859    call        TeeGalleryExitProc
 0055B85E    xor         eax,eax
 0055B860    pop         edx
 0055B861    pop         ecx
 0055B862    pop         ecx
 0055B863    mov         dword ptr fs:[eax],edx
 0055B866    push        55B873
 0055B86B    ret
>0055B86C    jmp         @HandleFinally
>0055B871    jmp         0055B86B
 0055B873    pop         ebp
 0055B874    ret
*}
end;

end.