//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TeCanvas;

interface

uses
  SysUtils, Classes, Controls, Graphics, TeCanvas;

type
  TChartPen = class(TPen)
  public
    SmallDots:Boolean;//f20
    Visible:Boolean;//f21
    procedure Assign(Source:TPersistent); virtual;//v8//0056AEF8
    constructor Create(OnChangeEvent:TNotifyEvent);//0056AEA8
    procedure SetVisible(Value:Boolean);//0056AF2C
    procedure SetSmallDots(Value:Boolean);//0056AF40
  end;
  TChartHiddenPen = class(TChartPen)
    constructor Create(OnChangeEvent:TNotifyEvent);//0056AF54
  end;
  TDottedGrayPen = class(TChartPen)
    constructor Create(OnChangeEvent:TNotifyEvent);//0056AFA0
  end;
  TDarkGrayPen = class(TChartPen)
    constructor Create(OnChangeEvent:TNotifyEvent);//0056AFF8
  end;
  TChartArrowPen = class(TChartPen)
    constructor Create(OnChangeEvent:TNotifyEvent);//0056B098
  end;
  TChartAxisPen = class(TChartPen)
    constructor Create(OnChangeEvent:TNotifyEvent);//0056B048
  end;
  TView3DOptions = class(TPersistent)
  public
    Elevation:Integer;//f4
    HorizOffset:Integer;//f8
    Orthogonal:Boolean;//fC
    Perspective:Integer;//f10
    Rotation:Integer;//f14
    Tilt:Integer;//f18
    VertOffset:Integer;//f1C
    Zoom:Integer;//f20
    ZoomText:Boolean;//f24
    FOnScrolled:TTeeView3DScrolled;//f28
    FOnChangedZoom:TTeeView3DChangedZoom;//f30
    FParent:TWinControl;//f38
    procedure Assign(Source:TPersistent); virtual;//v8//0056B224
    constructor Create(AParent:TWinControl);//0056B0E8
    procedure Repaint;//0056B148
    procedure SetIntegerProperty(var Variable:Integer; Value:Integer);//0056B154
    procedure SetBooleanProperty(var Variable:Boolean; Value:Boolean);//0056B160
    procedure SetElevation(Value:Integer);//0056B16C
    procedure SetPerspective(Value:Integer);//0056B178
    procedure SetRotation(Value:Integer);//0056B184
    procedure SetTilt(Value:Integer);//0056B190
    procedure SetHorizOffset(Value:Integer);//0056B19C
    procedure SetVertOffset(Value:Integer);//0056B1C0
    procedure SetOrthogonal(Value:Boolean);//0056B1E4
    procedure SetZoom(Value:Integer);//0056B1F0
    procedure SetZoomText(Value:Boolean);//0056B218
  end;
  TGradientDirection = (gdTopBottom, gdBottomTop, gdLeftRight, gdRightLeft, gdFromCenter, gdFromTopLeft, gdFromBottomLeft);
  TTeeCanvas = class(TObject)
  public
    FCanvas:TCanvas;//f4
    FFont:TFont;//f8
    FPen:TPen;//fC
    FBrush:TBrush;//f10
    FMetafiling:Boolean;//f14
    procedure GetBackColor; virtual; abstract;//v0//0066AC84
    procedure GetBackMode; virtual; abstract;//v4//0066AC84
    procedure GetHandle; virtual; abstract;//v8//0066AC84
    procedure vC; virtual; abstract;//vC//0066AC84
    procedure GetTextAlign; virtual; abstract;//v10//0066AC84
    procedure v14; virtual; abstract;//v14//0066AC84
    procedure SetBackColor; virtual; abstract;//v18//0066AC84
    procedure SetBackMode; virtual; abstract;//v1C//0066AC84
    procedure SetMonochrome; virtual; abstract;//v20//0066AC84
    procedure SetPixel; virtual; abstract;//v24//0066AC84
    procedure SetTextAlign; virtual; abstract;//v28//0066AC84
    procedure SetUseBuffer; virtual; abstract;//v2C//0066AC84
    procedure Arc; virtual; abstract;//v30//0066AC84
    procedure Draw; virtual; abstract;//v34//0066AC84
    procedure Ellipse; virtual; abstract;//v38//0066AC84
    procedure FillRect; virtual; abstract;//v3C//0066AC84
    procedure Frame3D; virtual; abstract;//v40//0066AC84
    procedure LineTo; virtual; abstract;//v44//0066AC84
    procedure MoveTo; virtual; abstract;//v48//0066AC84
    procedure Pie; virtual; abstract;//v4C//0066AC84
    procedure Rectangle; virtual; abstract;//v50//0066AC84
    procedure RoundRect; virtual; abstract;//v54//0066AC84
    procedure StretchDraw; virtual; abstract;//v58//0066AC84
    procedure TextOut; virtual; abstract;//v5C//0066AC84
    function TextWidth(const St:AnsiString):Integer; virtual;//v60//0056B380
    function TextHeight(const St:AnsiString):Integer; virtual;//v64//0056B3C8
    procedure ClipRectangle; virtual; abstract;//v68//0066AC84
    procedure DoHorizLine; virtual; abstract;//v6C//0066AC84
    procedure DoRectangle; virtual; abstract;//v70//0066AC84
    procedure DoVertLine; virtual; abstract;//v74//0066AC84
    procedure EraseBackground; virtual; abstract;//v78//0066AC84
    procedure GradientFill; virtual; abstract;//v7C//0066AC84
    procedure Invalidate; virtual; abstract;//v80//0066AC84
    procedure Line; virtual; abstract;//v84//0066AC84
    procedure Polygon; virtual; abstract;//v88//0066AC84
    procedure RotateLabel; virtual; abstract;//v8C//0066AC84
    procedure UnClipRectangle; virtual; abstract;//v90//0066AC84
    procedure SetCanvas(ACanvas:TCanvas);//0056B278
    procedure ResetState;//0056B298
    procedure AssignVisiblePen(APen:TChartPen);//0056B308
    function FontHeight:Integer;//0056B410
  end;
  TCanvas3D = class(TTeeCanvas)
  public
    F3DOptions:TView3DOptions;//f18
    FIsOrthogonal:Boolean;//f1C
    procedure Assign(Source:TCanvas3D); virtual;//vAC//0056B428
  end;
  TTeeCanvas3D = class(TCanvas3D)
  public
    FXCenter:Integer;//f20
    FYCenter:Integer;//f24
    FZCenter:Integer;//f28
    FXCenterOffset:Integer;//f2C
    FYCenterOffset:Integer;//f30
    s2:Extended;//f38
    c2s1:Extended;//f48
    c2s3:Double;//f58
    c2c3:Double;//f60
    c2c1:Double;//f68
    tempXX:Double;//f70
    tempYX:Double;//f78
    tempXZ:Double;//f80
    tempYZ:Double;//f88
    FWas3D:Boolean;//f90
    FIs3D:Boolean;//f91
    FBitmap:TBitmap;//f94
    FBufferedDisplay:Boolean;//f98
    FMonochrome:Boolean;//f99
    FDirty:Boolean;//f9A
    FBounds:TRect;//f9B
    IZoomText:Boolean;//fAB
    IZoomFactor:Double;//fB0
    IPerspec:Double;//fB8
    IPoints:TFourPoints;//fC0
    destructor Destroy; virtual;//0056B4C0
    function GetBackColor:TColor; virtual;//v0//0056B53C
    function GetBackMode:TCanvasBackMode; virtual;//v4//0056B4EC
    function GetHandle:HDC; virtual;//v8//0056BA44
    //function vC:?; virtual;//vC//0056E744
    function GetTextAlign:Integer; virtual;//v10//0056E6FC
    //function v14:?; virtual;//v14//0056E710
    procedure SetBackColor(Color:TColor); virtual;//v18//0056B51C
    procedure SetBackMode(Mode:TCanvasBackMode); virtual;//v1C//0056B500
    procedure SetMonochrome(Value:Boolean); virtual;//v20//0056E74C
    procedure SetPixel(X:Integer; Y:Integer; Value:TColor); virtual;//v24//0056D420
    procedure SetTextAlign(Align:Integer); virtual;//v28//0056B608
    procedure SetUseBuffer(Value:Boolean); virtual;//v2C//0056E718
    procedure Arc(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer); virtual;//v30//0056D44C
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic); virtual;//v34//0056C418
    procedure Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer); virtual;//v38//0056D16C
    procedure FillRect(const Rect:TRect); virtual;//v3C//0056CA24
    procedure Frame3D(Rect:TRect; TopColor:TColor; BottomColor:TColor; Width:Integer); virtual;//v40//0056CA48
    procedure LineTo(X:Integer; Y:Integer); virtual;//v44//0056B640
    procedure MoveTo(X:Integer; Y:Integer); virtual;//v48//0056B620
    procedure Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer); virtual;//v4C//0056D488
    procedure Rectangle(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer); virtual;//v50//0056B5A8
    procedure RoundRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer); virtual;//v54//0056B5D4
    procedure StretchDraw(const Rect:TRect; Graphic:TGraphic); virtual;//v58//0056C3FC
    procedure TextOut(X:Integer; Y:Integer; const Text:AnsiString); virtual;//v5C//0056B550
    procedure ClipRectangle(const Rect:TRect); virtual;//v68//0056BD8C
    procedure DoHorizLine(X0:Integer; X1:Integer; Y:Integer); virtual;//v6C//0056BCC0
    procedure DoRectangle(const Rect:TRect); virtual;//v70//0056B660
    procedure DoVertLine(X:Integer; Y0:Integer; Y1:Integer); virtual;//v74//0056BCF8
    procedure EraseBackground(const Rect:TRect); virtual;//v78//0056CA10
    procedure GradientFill(const Rect:TRect; StartColor:TColor; EndColor:TColor; Direction:TGradientDirection); virtual;//v7C//0056C8D0
    procedure Invalidate; virtual;//v80//0056CF68
    procedure Line(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer); virtual;//v84//0056D0A0
    procedure Polygon(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1); virtual;//v88//0056D134
    procedure RotateLabel(x:Integer; y:Integer; const St:AnsiString; RotDegree:Integer); virtual;//v8C//0056CFB0
    procedure UnClipRectangle; virtual;//v90//0056BF68
    procedure SetPixel3D(X:Integer; Y:Integer; Z:Integer; Value:TColor); virtual;//v94//0056E684
    //function v98:?; virtual;//v98//0056E6F8
    //function v9C:?; virtual;//v9C//0056E6F4
    procedure Calculate2DPosition(var x:Integer; var y:Integer; z:Integer); virtual;//vA0//0056B7D8
    function Calculate3DPosition(x:Integer; y:Integer; z:Integer):TPoint; virtual;//vA4//0056B778
    function InitWindow(DestCanvas:TCanvas; A3DOptions:TView3DOptions; ABackColor:TColor; Is3D:Boolean; const UserRect:TRect):TRect; virtual;//vA8//0056C188
    procedure Projection(MaxDepth:Integer; const Bounds:TRect; const Rect:TRect); virtual;//vB0//0056BF74
    procedure ShowImage(DestCanvas:TCanvas; DefaultCanvas:TCanvas; const UserRect:TRect); virtual;//vB4//0056C3BC
    function ReDrawBitmap:Boolean; virtual;//vB8//0056C39C
    procedure Arrow(Filled:Boolean; const FromPoint:TPoint; const ToPoint:TPoint; ArrowWidth:Integer; ArrowHeight:Integer; Z:Integer); virtual;//vBC//0056EA38
    procedure ClipCube(const Rect:TRect; MinZ:Integer; MaxZ:Integer); virtual;//vC0//0056BD98
    procedure Cone(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; ConePercent:Integer); virtual;//vC4//0056BA50
    procedure Cube(Left:Integer; Right:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; DarkSides:Boolean); virtual;//vC8//0056CBDC
    procedure Cylinder(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; Dark3D:Boolean); virtual;//vCC//0056E258
    procedure HorizLine3D(Left:Integer; Right:Integer; Y:Integer; Z:Integer); virtual;//vD0//0056E77C
    procedure VertLine3D(X:Integer; Top:Integer; Bottom:Integer; Z:Integer); virtual;//vD4//0056E7EC
    procedure ZLine3D(X:Integer; Y:Integer; Z0:Integer; Z1:Integer); virtual;//vD8//0056E858
    procedure EllipseWithZ(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; Z:Integer); virtual;//vDC//0056D198
    procedure FrontPlaneBegin; virtual;//vE0//0056CF44
    procedure FrontPlaneEnd; virtual;//vE4//0056CF58
    procedure LineWithZ(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer; Z:Integer); virtual;//vE8//0056D0D4
    procedure MoveTo3D(X:Integer; Y:Integer; Z:Integer); virtual;//vEC//0056BBD8
    procedure LineTo3D(X:Integer; Y:Integer; Z:Integer); virtual;//vF0//0056BC18
    procedure Pie3D(XCenter:Integer; YCenter:Integer; XRadius:Integer; YRadius:Integer; Z0:Integer; Z1:Integer; const StartAngle:Double; const EndAngle:Double; DarkSides:Boolean; DrawSides:Boolean); virtual;//vF4//0056D648
    procedure Plane3D(const A:TPoint; const B:TPoint; Z0:Integer; Z1:Integer); virtual;//vF8//0056DAE8
    procedure PlaneWithZ(P1:TPoint; P2:TPoint; P3:TPoint; P4:TPoint; Z:Integer); virtual;//vFC//0056B6A4
    procedure PlaneFour3D(var Points:TFourPoints; Z0:Integer; Z1:Integer); virtual;//v100//0056E610
    procedure PolygonWithZ(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1; Z:Integer); virtual;//v104//0056D154
    procedure Pyramid(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; z0:Integer; z1:Integer; DarkSides:Boolean); virtual;//v108//0056E2D8
    procedure RectangleWithZ(const Rect:TRect; Z:Integer); virtual;//v10C//0056BC58
    procedure RectangleY(Left:Integer; Top:Integer; Right:Integer; Z0:Integer; Z1:Integer); virtual;//v110//0056CED8
    procedure RectangleZ(Left:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer); virtual;//v114//0056CE68
    procedure RotateLabel3D(x:Integer; y:Integer; z:Integer; const St:AnsiString; RotDegree:Integer); virtual;//v118//0056CF70
    procedure Sphere(x:Integer; y:Integer; z:Integer; const Radius:Double); virtual;//v11C//0056BA80
    procedure v120; virtual;//v120//0056BAC0
    procedure TextOut3D(X:Integer; Y:Integer; Z:Integer; const Text:AnsiString); virtual;//v124//0056BAC8
    procedure Triangle3D(const Points:TTrianglePoints3D; const Colors:TTriangleColors3D); virtual;//v128//0056E8D0
    procedure TriangleWithZ(const P1:TPoint; const P2:TPoint; const P3:TPoint; Z:Integer); virtual;//v12C//0056E968
    constructor Create;//0056B444
    procedure DeleteBitmap;//0056B4AC
    procedure PolygonFour;//0056B688
    procedure Calc3DTPoint(var P:TPoint; z:Integer);//0056B758
    function Calc3DTPoint3D(const P:TPoint3D):TPoint;//0056B764
    procedure Calc3DPoint(var P:TPoint; x:Integer; y:Integer; z:Integer);//0056B7AC
    procedure Calc3DPos(var x:Integer; var y:Integer; z:Integer);//0056B904
    procedure TransferBitmap(ALeft:Integer; ATop:Integer; ACanvas:TCanvas);//0056C344
    procedure InternalCylinder(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; Dark3D:Boolean; ConePercent:Integer);//0056DBB8
  end;
    procedure sub_0056A348;//0056A348
    procedure SinCos(const Angle:Extended; var ResultSin:Extended; var ResultCos:Extended);//0056AE50
    function ArcTan2(Y:Extended; X:Extended):Extended;//0056AE64
    procedure RectSize(const R:TRect; var RectWidth:Integer; var RectHeight:Integer);//0056AE74
    procedure RectCenter(const R:TRect; var XCenter:Integer; var YCenter:Integer);//0056AE88
    procedure Assign(Source:TPersistent);//0056AEF8
    procedure Assign(Source:TPersistent);//0056B224
    function TextWidth(const St:AnsiString):Integer;//0056B380
    function TextHeight(const St:AnsiString):Integer;//0056B3C8
    procedure Assign(Source:TCanvas3D);//0056B428
    destructor Destroy;//0056B4C0
    function GetBackMode:TCanvasBackMode;//0056B4EC
    procedure SetBackMode(Mode:TCanvasBackMode);//0056B500
    procedure SetBackColor(Color:TColor);//0056B51C
    function GetBackColor:TColor;//0056B53C
    procedure TextOut(X:Integer; Y:Integer; const Text:AnsiString);//0056B550
    procedure Rectangle(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer);//0056B5A8
    procedure RoundRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer);//0056B5D4
    procedure SetTextAlign(Align:Integer);//0056B608
    procedure MoveTo(X:Integer; Y:Integer);//0056B620
    procedure LineTo(X:Integer; Y:Integer);//0056B640
    procedure DoRectangle(const Rect:TRect);//0056B660
    procedure PlaneWithZ(P1:TPoint; P2:TPoint; P3:TPoint; P4:TPoint; Z:Integer);//0056B6A4
    function Calculate3DPosition(x:Integer; y:Integer; z:Integer):TPoint;//0056B778
    procedure Calculate2DPosition(var x:Integer; var y:Integer; z:Integer);//0056B7D8
    function GetHandle:HDC;//0056BA44
    procedure Cone(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; ConePercent:Integer);//0056BA50
    procedure Sphere(x:Integer; y:Integer; z:Integer; const Radius:Double);//0056BA80
    procedure sub_0056BAC0;//0056BAC0
    procedure TextOut3D(X:Integer; Y:Integer; Z:Integer; const Text:AnsiString);//0056BAC8
    procedure MoveTo3D(X:Integer; Y:Integer; Z:Integer);//0056BBD8
    procedure LineTo3D(X:Integer; Y:Integer; Z:Integer);//0056BC18
    procedure RectangleWithZ(const Rect:TRect; Z:Integer);//0056BC58
    procedure DoHorizLine(X0:Integer; X1:Integer; Y:Integer);//0056BCC0
    procedure DoVertLine(X:Integer; Y0:Integer; Y1:Integer);//0056BCF8
    procedure ClipCanvas(ACanvas:TCanvas; const Rect:TRect);//0056BD28
    procedure ClipRectangle(const Rect:TRect);//0056BD8C
    procedure ClipCube(const Rect:TRect; MinZ:Integer; MaxZ:Integer);//0056BD98
    procedure UnClipCanvas(ACanvas:TCanvas);//0056BF54
    procedure UnClipRectangle;//0056BF68
    procedure Projection(MaxDepth:Integer; const Bounds:TRect; const Rect:TRect);//0056BF74
    procedure CalcTrigValues;//0056BFDC
    function InitWindow(DestCanvas:TCanvas; A3DOptions:TView3DOptions; ABackColor:TColor; Is3D:Boolean; const UserRect:TRect):TRect;//0056C188
    function ReDrawBitmap:Boolean;//0056C39C
    procedure ShowImage(DestCanvas:TCanvas; DefaultCanvas:TCanvas; const UserRect:TRect);//0056C3BC
    procedure StretchDraw(const Rect:TRect; Graphic:TGraphic);//0056C3FC
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic);//0056C418
    procedure CalcBrushColor(Index:Integer; Range:Integer);//0056C4A0
    procedure RectGradient(Horizontal:Boolean);//0056C540
    procedure FromCorner;//0056C66C
    procedure FromCenter;//0056C784
    procedure GradientFill(const Rect:TRect; StartColor:TColor; EndColor:TColor; Direction:TGradientDirection);//0056C8D0
    procedure EraseBackground(const Rect:TRect);//0056CA10
    procedure FillRect(const Rect:TRect);//0056CA24
    procedure Frame3D(Rect:TRect; TopColor:TColor; BottomColor:TColor; Width:Integer);//0056CA48
    function ApplyDark(Color:TColor; HowMuch:Byte):TColor;//0056CB38
    procedure Dark(Quantity:Byte);//0056CB90
    procedure Cube(Left:Integer; Right:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; DarkSides:Boolean);//0056CBDC
    procedure RectangleZ(Left:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer);//0056CE68
    procedure RectangleY(Left:Integer; Top:Integer; Right:Integer; Z0:Integer; Z1:Integer);//0056CED8
    procedure FrontPlaneBegin;//0056CF44
    procedure FrontPlaneEnd;//0056CF58
    procedure Invalidate;//0056CF68
    procedure RotateLabel3D(x:Integer; y:Integer; z:Integer; const St:AnsiString; RotDegree:Integer);//0056CF70
    procedure RotateLabel(x:Integer; y:Integer; const St:AnsiString; RotDegree:Integer);//0056CFB0
    procedure Line(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer);//0056D0A0
    procedure LineWithZ(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer; Z:Integer);//0056D0D4
    procedure Polygon(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1);//0056D134
    procedure PolygonWithZ(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1; Z:Integer);//0056D154
    procedure Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer);//0056D16C
    procedure EllipseWithZ(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; Z:Integer);//0056D198
    procedure SetPixel(X:Integer; Y:Integer; Value:TColor);//0056D420
    procedure Arc(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);//0056D44C
    procedure Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);//0056D488
    procedure Dark(Quantity:Byte);//0056D4C4
    procedure Draw3DPie;//0056D51C
    procedure Pie3D(XCenter:Integer; YCenter:Integer; XRadius:Integer; YRadius:Integer; Z0:Integer; Z1:Integer; const StartAngle:Double; const EndAngle:Double; DarkSides:Boolean; DrawSides:Boolean);//0056D648
    procedure Plane3D(const A:TPoint; const B:TPoint; Z0:Integer; Z1:Integer);//0056DAE8
    procedure Dark(Quantity:Byte);//0056DB60
    procedure Cylinder(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; Dark3D:Boolean);//0056E258
    procedure Dark(Quantity:Byte);//0056E280
    procedure Pyramid(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; z0:Integer; z1:Integer; DarkSides:Boolean);//0056E2D8
    procedure PlaneFour3D(var Points:TFourPoints; Z0:Integer; Z1:Integer);//0056E610
    procedure SetPixel3D(X:Integer; Y:Integer; Z:Integer; Value:TColor);//0056E684
    //function sub_0056E6F4:?;//0056E6F4
    //function sub_0056E6F8:?;//0056E6F8
    function GetTextAlign:Integer;//0056E6FC
    //function sub_0056E710:?;//0056E710
    procedure SetUseBuffer(Value:Boolean);//0056E718
    //function sub_0056E744:?;//0056E744
    procedure SetMonochrome(Value:Boolean);//0056E74C
    procedure HorizLine3D(Left:Integer; Right:Integer; Y:Integer; Z:Integer);//0056E77C
    procedure VertLine3D(X:Integer; Top:Integer; Bottom:Integer; Z:Integer);//0056E7EC
    procedure ZLine3D(X:Integer; Y:Integer; Z0:Integer; Z1:Integer);//0056E858
    procedure Triangle3D(const Points:TTrianglePoints3D; const Colors:TTriangleColors3D);//0056E8D0
    procedure TriangleWithZ(const P1:TPoint; const P2:TPoint; const P3:TPoint; Z:Integer);//0056E968
    function CalcArrowPoint:TPoint;//0056E9D4
    procedure Arrow(Filled:Boolean; const FromPoint:TPoint; const ToPoint:TPoint; ArrowWidth:Integer; ArrowHeight:Integer; Z:Integer);//0056EA38
    function MaxDouble(const a:Double; const b:Double):Double;//0056ED9C
    //function sub_0056EDD0(?:?; ?:?):?;//0056EDD0
    //function sub_0056EDD8(?:?; ?:?):?;//0056EDD8
    procedure SwapLongint(var a:Integer; var b:Integer);//0056EDE0
    procedure SwapDouble(var a:Double; var b:Double);//0056EDEC
    procedure SwapInteger(var a:Integer; var b:Integer);//0056EE14
    procedure Finalization;//0056EE20

implementation

//0056A348
procedure sub_0056A348;
begin
{*
 0056A348    sub         dword ptr ds:[6ECC90],1
>0056A34F    jae         0056A374
 0056A351    push        56A378;'TEE_CURSOR_HAND'
 0056A356    mov         eax,[006EA390];0x0 gvar_006EA390
 0056A35B    push        eax
 0056A35C    call        USER32.LoadCursorA
 0056A361    mov         ecx,eax
 0056A363    mov         eax,[006E9DD0];^Screen:TScreen
 0056A368    mov         eax,dword ptr [eax]
 0056A36A    mov         edx,7E4
 0056A36F    call        005D5EE8
 0056A374    ret
*}
end;

//0056AE50
procedure SinCos(const Angle:Extended; var ResultSin:Extended; var ResultCos:Extended);
begin
{*
 0056AE50    push        ebp
 0056AE51    mov         ebp,esp
 0056AE53    fld         tbyte ptr [ebp+8]
 0056AE56    fsincos
 0056AE58    fstp        tbyte ptr [edx]
 0056AE5A    fstp        tbyte ptr [eax]
 0056AE5C    wait
 0056AE5D    pop         ebp
 0056AE5E    ret         0C
*}
end;

//0056AE64
function ArcTan2(Y:Extended; X:Extended):Extended;
begin
{*
 0056AE64    push        ebp
 0056AE65    mov         ebp,esp
 0056AE67    fld         tbyte ptr [ebp+14]
 0056AE6A    fld         tbyte ptr [ebp+8]
 0056AE6D    fpatan
 0056AE6F    wait
 0056AE70    pop         ebp
 0056AE71    ret         18
*}
end;

//0056AE74
procedure RectSize(const R:TRect; var RectWidth:Integer; var RectHeight:Integer);
begin
{*
 0056AE74    push        ebx
 0056AE75    mov         ebx,dword ptr [eax+8]
 0056AE78    sub         ebx,dword ptr [eax]
 0056AE7A    mov         dword ptr [edx],ebx
 0056AE7C    mov         edx,dword ptr [eax+0C]
 0056AE7F    sub         edx,dword ptr [eax+4]
 0056AE82    mov         dword ptr [ecx],edx
 0056AE84    pop         ebx
 0056AE85    ret
*}
end;

//0056AE88
procedure RectCenter(const R:TRect; var XCenter:Integer; var YCenter:Integer);
begin
{*
 0056AE88    push        ebx
 0056AE89    mov         ebx,dword ptr [eax]
 0056AE8B    add         ebx,dword ptr [eax+8]
 0056AE8E    sar         ebx,1
>0056AE90    jns         0056AE95
 0056AE92    adc         ebx,0
 0056AE95    mov         dword ptr [edx],ebx
 0056AE97    mov         edx,dword ptr [eax+4]
 0056AE9A    add         edx,dword ptr [eax+0C]
 0056AE9D    sar         edx,1
>0056AE9F    jns         0056AEA4
 0056AEA1    adc         edx,0
 0056AEA4    mov         dword ptr [ecx],edx
 0056AEA6    pop         ebx
 0056AEA7    ret
*}
end;

//0056AEA8
constructor TChartPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056AEA8    push        ebp
 0056AEA9    mov         ebp,esp
 0056AEAB    push        ebx
 0056AEAC    push        esi
 0056AEAD    test        dl,dl
>0056AEAF    je          0056AEB9
 0056AEB1    add         esp,0FFFFFFF0
 0056AEB4    call        @ClassCreate
 0056AEB9    mov         ebx,edx
 0056AEBB    mov         esi,eax
 0056AEBD    xor         edx,edx
 0056AEBF    mov         eax,esi
 0056AEC1    call        TPen.Create
 0056AEC6    mov         byte ptr [esi+20],0
 0056AECA    mov         byte ptr [esi+21],1
 0056AECE    mov         eax,dword ptr [ebp+8]
 0056AED1    mov         dword ptr [esi+8],eax
 0056AED4    mov         eax,dword ptr [ebp+0C]
 0056AED7    mov         dword ptr [esi+0C],eax
 0056AEDA    mov         eax,esi
 0056AEDC    test        bl,bl
>0056AEDE    je          0056AEEF
 0056AEE0    call        @AfterConstruction
 0056AEE5    pop         dword ptr fs:[0]
 0056AEEC    add         esp,0C
 0056AEEF    mov         eax,esi
 0056AEF1    pop         esi
 0056AEF2    pop         ebx
 0056AEF3    pop         ebp
 0056AEF4    ret         8
*}
end;

//0056AEF8
procedure TChartPen.Assign(Source:TPersistent);
begin
{*
 0056AEF8    push        ebx
 0056AEF9    push        esi
 0056AEFA    mov         esi,edx
 0056AEFC    mov         ebx,eax
 0056AEFE    mov         eax,esi
 0056AF00    mov         edx,dword ptr ds:[56A388];TChartPen
 0056AF06    call        @IsClass
 0056AF0B    test        al,al
>0056AF0D    je          0056AF1D
 0056AF0F    mov         eax,esi
 0056AF11    mov         dl,byte ptr [eax+21]
 0056AF14    mov         byte ptr [ebx+21],dl
 0056AF17    mov         al,byte ptr [eax+20]
 0056AF1A    mov         byte ptr [ebx+20],al
 0056AF1D    mov         edx,esi
 0056AF1F    mov         eax,ebx
 0056AF21    call        TPen.Assign
 0056AF26    pop         esi
 0056AF27    pop         ebx
 0056AF28    ret
*}
end;

//0056AF2C
procedure TChartPen.SetVisible(Value:Boolean);
begin
{*
 0056AF2C    push        esi
 0056AF2D    cmp         dl,byte ptr [eax+21]
>0056AF30    je          0056AF3E
 0056AF32    mov         byte ptr [eax+21],dl
 0056AF35    mov         si,0FFFD
 0056AF39    call        @CallDynaInst
 0056AF3E    pop         esi
 0056AF3F    ret
*}
end;

//0056AF40
procedure TChartPen.SetSmallDots(Value:Boolean);
begin
{*
 0056AF40    push        esi
 0056AF41    cmp         dl,byte ptr [eax+20]
>0056AF44    je          0056AF52
 0056AF46    mov         byte ptr [eax+20],dl
 0056AF49    mov         si,0FFFD
 0056AF4D    call        @CallDynaInst
 0056AF52    pop         esi
 0056AF53    ret
*}
end;

//0056AF54
constructor TChartHiddenPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056AF54    push        ebp
 0056AF55    mov         ebp,esp
 0056AF57    push        ebx
 0056AF58    push        esi
 0056AF59    test        dl,dl
>0056AF5B    je          0056AF65
 0056AF5D    add         esp,0FFFFFFF0
 0056AF60    call        @ClassCreate
 0056AF65    mov         ebx,edx
 0056AF67    mov         esi,eax
 0056AF69    push        dword ptr [ebp+0C]
 0056AF6C    push        dword ptr [ebp+8]
 0056AF6F    xor         edx,edx
 0056AF71    mov         eax,esi
 0056AF73    call        TChartPen.Create
 0056AF78    xor         edx,edx
 0056AF7A    mov         eax,esi
 0056AF7C    call        TChartPen.SetVisible
 0056AF81    mov         eax,esi
 0056AF83    test        bl,bl
>0056AF85    je          0056AF96
 0056AF87    call        @AfterConstruction
 0056AF8C    pop         dword ptr fs:[0]
 0056AF93    add         esp,0C
 0056AF96    mov         eax,esi
 0056AF98    pop         esi
 0056AF99    pop         ebx
 0056AF9A    pop         ebp
 0056AF9B    ret         8
*}
end;

//0056AFA0
constructor TDottedGrayPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056AFA0    push        ebp
 0056AFA1    mov         ebp,esp
 0056AFA3    push        ebx
 0056AFA4    push        esi
 0056AFA5    test        dl,dl
>0056AFA7    je          0056AFB1
 0056AFA9    add         esp,0FFFFFFF0
 0056AFAC    call        @ClassCreate
 0056AFB1    mov         ebx,edx
 0056AFB3    mov         esi,eax
 0056AFB5    push        dword ptr [ebp+0C]
 0056AFB8    push        dword ptr [ebp+8]
 0056AFBB    xor         edx,edx
 0056AFBD    mov         eax,esi
 0056AFBF    call        TChartPen.Create
 0056AFC4    mov         edx,808080
 0056AFC9    mov         eax,esi
 0056AFCB    call        TPen.SetColor
 0056AFD0    mov         dl,2
 0056AFD2    mov         eax,esi
 0056AFD4    call        TPen.SetStyle
 0056AFD9    mov         eax,esi
 0056AFDB    test        bl,bl
>0056AFDD    je          0056AFEE
 0056AFDF    call        @AfterConstruction
 0056AFE4    pop         dword ptr fs:[0]
 0056AFEB    add         esp,0C
 0056AFEE    mov         eax,esi
 0056AFF0    pop         esi
 0056AFF1    pop         ebx
 0056AFF2    pop         ebp
 0056AFF3    ret         8
*}
end;

//0056AFF8
constructor TDarkGrayPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056AFF8    push        ebp
 0056AFF9    mov         ebp,esp
 0056AFFB    push        ebx
 0056AFFC    push        esi
 0056AFFD    test        dl,dl
>0056AFFF    je          0056B009
 0056B001    add         esp,0FFFFFFF0
 0056B004    call        @ClassCreate
 0056B009    mov         ebx,edx
 0056B00B    mov         esi,eax
 0056B00D    push        dword ptr [ebp+0C]
 0056B010    push        dword ptr [ebp+8]
 0056B013    xor         edx,edx
 0056B015    mov         eax,esi
 0056B017    call        TChartPen.Create
 0056B01C    mov         edx,808080
 0056B021    mov         eax,esi
 0056B023    call        TPen.SetColor
 0056B028    mov         eax,esi
 0056B02A    test        bl,bl
>0056B02C    je          0056B03D
 0056B02E    call        @AfterConstruction
 0056B033    pop         dword ptr fs:[0]
 0056B03A    add         esp,0C
 0056B03D    mov         eax,esi
 0056B03F    pop         esi
 0056B040    pop         ebx
 0056B041    pop         ebp
 0056B042    ret         8
*}
end;

//0056B048
constructor TChartAxisPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056B048    push        ebp
 0056B049    mov         ebp,esp
 0056B04B    push        ebx
 0056B04C    push        esi
 0056B04D    test        dl,dl
>0056B04F    je          0056B059
 0056B051    add         esp,0FFFFFFF0
 0056B054    call        @ClassCreate
 0056B059    mov         ebx,edx
 0056B05B    mov         esi,eax
 0056B05D    push        dword ptr [ebp+0C]
 0056B060    push        dword ptr [ebp+8]
 0056B063    xor         edx,edx
 0056B065    mov         eax,esi
 0056B067    call        TChartPen.Create
 0056B06C    mov         edx,2
 0056B071    mov         eax,esi
 0056B073    call        TPen.SetWidth
 0056B078    mov         eax,esi
 0056B07A    test        bl,bl
>0056B07C    je          0056B08D
 0056B07E    call        @AfterConstruction
 0056B083    pop         dword ptr fs:[0]
 0056B08A    add         esp,0C
 0056B08D    mov         eax,esi
 0056B08F    pop         esi
 0056B090    pop         ebx
 0056B091    pop         ebp
 0056B092    ret         8
*}
end;

//0056B098
constructor TChartArrowPen.Create(OnChangeEvent:TNotifyEvent);
begin
{*
 0056B098    push        ebp
 0056B099    mov         ebp,esp
 0056B09B    push        ebx
 0056B09C    push        esi
 0056B09D    test        dl,dl
>0056B09F    je          0056B0A9
 0056B0A1    add         esp,0FFFFFFF0
 0056B0A4    call        @ClassCreate
 0056B0A9    mov         ebx,edx
 0056B0AB    mov         esi,eax
 0056B0AD    push        dword ptr [ebp+0C]
 0056B0B0    push        dword ptr [ebp+8]
 0056B0B3    xor         edx,edx
 0056B0B5    mov         eax,esi
 0056B0B7    call        TChartPen.Create
 0056B0BC    mov         edx,0FFFFFF
 0056B0C1    mov         eax,esi
 0056B0C3    call        TPen.SetColor
 0056B0C8    mov         eax,esi
 0056B0CA    test        bl,bl
>0056B0CC    je          0056B0DD
 0056B0CE    call        @AfterConstruction
 0056B0D3    pop         dword ptr fs:[0]
 0056B0DA    add         esp,0C
 0056B0DD    mov         eax,esi
 0056B0DF    pop         esi
 0056B0E0    pop         ebx
 0056B0E1    pop         ebp
 0056B0E2    ret         8
*}
end;

//0056B0E8
constructor TView3DOptions.Create(AParent:TWinControl);
begin
{*
 0056B0E8    push        ebx
 0056B0E9    push        esi
 0056B0EA    push        edi
 0056B0EB    test        dl,dl
>0056B0ED    je          0056B0F7
 0056B0EF    add         esp,0FFFFFFF0
 0056B0F2    call        @ClassCreate
 0056B0F7    mov         esi,ecx
 0056B0F9    mov         ebx,edx
 0056B0FB    mov         edi,eax
 0056B0FD    xor         edx,edx
 0056B0FF    mov         eax,edi
 0056B101    call        TObject.Create
 0056B106    mov         dword ptr [edi+38],esi
 0056B109    mov         byte ptr [edi+0C],1
 0056B10D    mov         dword ptr [edi+20],64
 0056B114    mov         byte ptr [edi+24],1
 0056B118    mov         dword ptr [edi+14],159
 0056B11F    mov         dword ptr [edi+4],159
 0056B126    mov         dword ptr [edi+10],0F
 0056B12D    mov         eax,edi
 0056B12F    test        bl,bl
>0056B131    je          0056B142
 0056B133    call        @AfterConstruction
 0056B138    pop         dword ptr fs:[0]
 0056B13F    add         esp,0C
 0056B142    mov         eax,edi
 0056B144    pop         edi
 0056B145    pop         esi
 0056B146    pop         ebx
 0056B147    ret
*}
end;

//0056B148
procedure TView3DOptions.Repaint;
begin
{*
 0056B148    mov         eax,dword ptr [eax+38]
 0056B14B    mov         edx,dword ptr [eax]
 0056B14D    call        dword ptr [edx+7C]
 0056B150    ret
*}
end;

//0056B154
procedure TView3DOptions.SetIntegerProperty(var Variable:Integer; Value:Integer);
begin
{*
 0056B154    cmp         ecx,dword ptr [edx]
>0056B156    je          0056B15F
 0056B158    mov         dword ptr [edx],ecx
 0056B15A    call        TView3DOptions.Repaint
 0056B15F    ret
*}
end;

//0056B160
procedure TView3DOptions.SetBooleanProperty(var Variable:Boolean; Value:Boolean);
begin
{*
 0056B160    cmp         cl,byte ptr [edx]
>0056B162    je          0056B16B
 0056B164    mov         byte ptr [edx],cl
 0056B166    call        TView3DOptions.Repaint
 0056B16B    ret
*}
end;

//0056B16C
procedure TView3DOptions.SetElevation(Value:Integer);
begin
{*
 0056B16C    lea         ecx,[eax+4]
 0056B16F    xchg        ecx,edx
 0056B171    call        TView3DOptions.SetIntegerProperty
 0056B176    ret
*}
end;

//0056B178
procedure TView3DOptions.SetPerspective(Value:Integer);
begin
{*
 0056B178    lea         ecx,[eax+10]
 0056B17B    xchg        ecx,edx
 0056B17D    call        TView3DOptions.SetIntegerProperty
 0056B182    ret
*}
end;

//0056B184
procedure TView3DOptions.SetRotation(Value:Integer);
begin
{*
 0056B184    lea         ecx,[eax+14]
 0056B187    xchg        ecx,edx
 0056B189    call        TView3DOptions.SetIntegerProperty
 0056B18E    ret
*}
end;

//0056B190
procedure TView3DOptions.SetTilt(Value:Integer);
begin
{*
 0056B190    lea         ecx,[eax+18]
 0056B193    xchg        ecx,edx
 0056B195    call        TView3DOptions.SetIntegerProperty
 0056B19A    ret
*}
end;

//0056B19C
procedure TView3DOptions.SetHorizOffset(Value:Integer);
begin
{*
 0056B19C    push        ebx
 0056B19D    mov         ebx,eax
 0056B19F    cmp         edx,dword ptr [ebx+8]
>0056B1A2    je          0056B1BD
 0056B1A4    mov         dword ptr [ebx+8],edx
 0056B1A7    mov         eax,ebx
 0056B1A9    call        TView3DOptions.Repaint
 0056B1AE    cmp         word ptr [ebx+2A],0
>0056B1B3    je          0056B1BD
 0056B1B5    mov         dl,1
 0056B1B7    mov         eax,dword ptr [ebx+2C]
 0056B1BA    call        dword ptr [ebx+28]
 0056B1BD    pop         ebx
 0056B1BE    ret
*}
end;

//0056B1C0
procedure TView3DOptions.SetVertOffset(Value:Integer);
begin
{*
 0056B1C0    push        ebx
 0056B1C1    mov         ebx,eax
 0056B1C3    cmp         edx,dword ptr [ebx+1C]
>0056B1C6    je          0056B1E1
 0056B1C8    mov         dword ptr [ebx+1C],edx
 0056B1CB    mov         eax,ebx
 0056B1CD    call        TView3DOptions.Repaint
 0056B1D2    cmp         word ptr [ebx+2A],0
>0056B1D7    je          0056B1E1
 0056B1D9    xor         edx,edx
 0056B1DB    mov         eax,dword ptr [ebx+2C]
 0056B1DE    call        dword ptr [ebx+28]
 0056B1E1    pop         ebx
 0056B1E2    ret
*}
end;

//0056B1E4
procedure TView3DOptions.SetOrthogonal(Value:Boolean);
begin
{*
 0056B1E4    lea         ecx,[eax+0C]
 0056B1E7    xchg        ecx,edx
 0056B1E9    call        TView3DOptions.SetBooleanProperty
 0056B1EE    ret
*}
end;

//0056B1F0
procedure TView3DOptions.SetZoom(Value:Integer);
begin
{*
 0056B1F0    push        ebx
 0056B1F1    push        esi
 0056B1F2    mov         esi,edx
 0056B1F4    mov         ebx,eax
 0056B1F6    cmp         esi,dword ptr [ebx+20]
>0056B1F9    je          0056B214
 0056B1FB    cmp         word ptr [ebx+32],0
>0056B200    je          0056B20A
 0056B202    mov         edx,esi
 0056B204    mov         eax,dword ptr [ebx+34]
 0056B207    call        dword ptr [ebx+30]
 0056B20A    mov         dword ptr [ebx+20],esi
 0056B20D    mov         eax,ebx
 0056B20F    call        TView3DOptions.Repaint
 0056B214    pop         esi
 0056B215    pop         ebx
 0056B216    ret
*}
end;

//0056B218
procedure TView3DOptions.SetZoomText(Value:Boolean);
begin
{*
 0056B218    lea         ecx,[eax+24]
 0056B21B    xchg        ecx,edx
 0056B21D    call        TView3DOptions.SetBooleanProperty
 0056B222    ret
*}
end;

//0056B224
procedure TView3DOptions.Assign(Source:TPersistent);
begin
{*
 0056B224    push        ebx
 0056B225    push        esi
 0056B226    mov         esi,edx
 0056B228    mov         ebx,eax
 0056B22A    mov         eax,esi
 0056B22C    mov         edx,dword ptr ds:[56A7F4];TView3DOptions
 0056B232    call        @IsClass
 0056B237    test        al,al
>0056B239    je          0056B273
 0056B23B    mov         eax,esi
 0056B23D    mov         edx,dword ptr [eax+4]
 0056B240    mov         dword ptr [ebx+4],edx
 0056B243    mov         edx,dword ptr [eax+8]
 0056B246    mov         dword ptr [ebx+8],edx
 0056B249    mov         dl,byte ptr [eax+0C]
 0056B24C    mov         byte ptr [ebx+0C],dl
 0056B24F    mov         edx,dword ptr [eax+10]
 0056B252    mov         dword ptr [ebx+10],edx
 0056B255    mov         edx,dword ptr [eax+14]
 0056B258    mov         dword ptr [ebx+14],edx
 0056B25B    mov         edx,dword ptr [eax+18]
 0056B25E    mov         dword ptr [ebx+18],edx
 0056B261    mov         edx,dword ptr [eax+1C]
 0056B264    mov         dword ptr [ebx+1C],edx
 0056B267    mov         edx,dword ptr [eax+20]
 0056B26A    mov         dword ptr [ebx+20],edx
 0056B26D    mov         al,byte ptr [eax+24]
 0056B270    mov         byte ptr [ebx+24],al
 0056B273    pop         esi
 0056B274    pop         ebx
 0056B275    ret
*}
end;

//0056B278
procedure TTeeCanvas.SetCanvas(ACanvas:TCanvas);
begin
{*
 0056B278    mov         ecx,edx
 0056B27A    mov         dword ptr [eax+4],ecx
 0056B27D    mov         edx,dword ptr [ecx+10]
 0056B280    mov         dword ptr [eax+0C],edx
 0056B283    mov         edx,dword ptr [eax+4]
 0056B286    mov         edx,dword ptr [edx+0C]
 0056B289    mov         dword ptr [eax+8],edx
 0056B28C    mov         edx,dword ptr [eax+4]
 0056B28F    mov         edx,dword ptr [edx+14]
 0056B292    mov         dword ptr [eax+10],edx
 0056B295    ret
*}
end;

//0056B298
procedure TTeeCanvas.ResetState;
begin
{*
 0056B298    push        ebx
 0056B299    push        esi
 0056B29A    mov         ebx,eax
 0056B29C    mov         esi,dword ptr [ebx+0C]
 0056B29F    xor         edx,edx
 0056B2A1    mov         eax,esi
 0056B2A3    call        TPen.SetColor
 0056B2A8    mov         edx,1
 0056B2AD    mov         eax,esi
 0056B2AF    call        TPen.SetWidth
 0056B2B4    xor         edx,edx
 0056B2B6    mov         eax,esi
 0056B2B8    call        TPen.SetStyle
 0056B2BD    mov         esi,dword ptr [ebx+10]
 0056B2C0    mov         edx,0FFFFFF
 0056B2C5    mov         eax,esi
 0056B2C7    call        TBrush.SetColor
 0056B2CC    xor         edx,edx
 0056B2CE    mov         eax,esi
 0056B2D0    call        TBrush.SetStyle
 0056B2D5    mov         esi,dword ptr [ebx+8]
 0056B2D8    xor         edx,edx
 0056B2DA    mov         eax,esi
 0056B2DC    call        TFont.SetColor
 0056B2E1    mov         edx,0A
 0056B2E6    mov         eax,esi
 0056B2E8    call        TFont.SetSize
 0056B2ED    mov         edx,0FFFFFF
 0056B2F2    mov         eax,ebx
 0056B2F4    mov         ecx,dword ptr [eax]
 0056B2F6    call        dword ptr [ecx+18]
 0056B2F9    mov         dl,1
 0056B2FB    mov         eax,ebx
 0056B2FD    mov         ecx,dword ptr [eax]
 0056B2FF    call        dword ptr [ecx+1C]
 0056B302    pop         esi
 0056B303    pop         ebx
 0056B304    ret
*}
end;

//0056B308
procedure TTeeCanvas.AssignVisiblePen(APen:TChartPen);
begin
{*
 0056B308    push        ebx
 0056B309    push        esi
 0056B30A    add         esp,0FFFFFFF4
 0056B30D    mov         ebx,edx
 0056B30F    mov         esi,eax
 0056B311    cmp         byte ptr [ebx+21],0
>0056B315    je          0056B370
 0056B317    cmp         byte ptr [ebx+20],0
>0056B31B    je          0056B364
 0056B31D    mov         eax,ebx
 0056B31F    call        TPen.GetWidth
 0056B324    dec         eax
>0056B325    jne         0056B364
 0056B327    mov         eax,[006EA0EC];^gvar_006E498C
 0056B32C    cmp         dword ptr [eax],2
>0056B32F    jne         0056B364
 0056B331    xor         eax,eax
 0056B333    mov         dword ptr [esp],eax
 0056B336    mov         eax,ebx
 0056B338    call        TPen.GetColor
 0056B33D    call        ColorToRGB
 0056B342    mov         dword ptr [esp+4],eax
 0056B346    push        0
 0056B348    push        0
 0056B34A    lea         eax,[esp+8]
 0056B34E    push        eax
 0056B34F    push        1
 0056B351    push        8
 0056B353    call        GDI32.ExtCreatePen
 0056B358    mov         edx,eax
 0056B35A    mov         eax,dword ptr [esi+0C]
 0056B35D    call        TPen.SetHandle
>0056B362    jmp         0056B37A
 0056B364    mov         edx,ebx
 0056B366    mov         eax,dword ptr [esi+0C]
 0056B369    mov         ecx,dword ptr [eax]
 0056B36B    call        dword ptr [ecx+8]
>0056B36E    jmp         0056B37A
 0056B370    mov         dl,5
 0056B372    mov         eax,dword ptr [esi+0C]
 0056B375    call        TPen.SetStyle
 0056B37A    add         esp,0C
 0056B37D    pop         esi
 0056B37E    pop         ebx
 0056B37F    ret
*}
end;

//0056B380
function TTeeCanvas.TextWidth(const St:AnsiString):Integer;
begin
{*
 0056B380    push        ebx
 0056B381    push        esi
 0056B382    add         esp,0FFFFFFF8
 0056B385    mov         esi,edx
 0056B387    mov         ebx,eax
 0056B389    mov         eax,dword ptr [ebx+4]
 0056B38C    mov         eax,dword ptr [eax+0C]
 0056B38F    mov         edx,dword ptr [ebx+8]
 0056B392    mov         ecx,dword ptr [eax]
 0056B394    call        dword ptr [ecx+8]
 0056B397    push        esp
 0056B398    mov         eax,esi
 0056B39A    call        @LStrLen
 0056B39F    push        eax
 0056B3A0    mov         eax,esi
 0056B3A2    call        @LStrToPChar
 0056B3A7    push        eax
 0056B3A8    mov         eax,dword ptr [ebx+4]
 0056B3AB    call        TCanvas.GetHandle
 0056B3B0    push        eax
 0056B3B1    call        GDI32.GetTextExtentPoint32A
 0056B3B6    test        eax,eax
>0056B3B8    je          0056B3BF
 0056B3BA    mov         eax,dword ptr [esp]
>0056B3BD    jmp         0056B3C1
 0056B3BF    xor         eax,eax
 0056B3C1    pop         ecx
 0056B3C2    pop         edx
 0056B3C3    pop         esi
 0056B3C4    pop         ebx
 0056B3C5    ret
*}
end;

//0056B3C8
function TTeeCanvas.TextHeight(const St:AnsiString):Integer;
begin
{*
 0056B3C8    push        ebx
 0056B3C9    push        esi
 0056B3CA    add         esp,0FFFFFFF8
 0056B3CD    mov         esi,edx
 0056B3CF    mov         ebx,eax
 0056B3D1    mov         eax,dword ptr [ebx+4]
 0056B3D4    mov         eax,dword ptr [eax+0C]
 0056B3D7    mov         edx,dword ptr [ebx+8]
 0056B3DA    mov         ecx,dword ptr [eax]
 0056B3DC    call        dword ptr [ecx+8]
 0056B3DF    push        esp
 0056B3E0    mov         eax,esi
 0056B3E2    call        @LStrLen
 0056B3E7    push        eax
 0056B3E8    mov         eax,esi
 0056B3EA    call        @LStrToPChar
 0056B3EF    push        eax
 0056B3F0    mov         eax,dword ptr [ebx+4]
 0056B3F3    call        TCanvas.GetHandle
 0056B3F8    push        eax
 0056B3F9    call        GDI32.GetTextExtentPoint32A
 0056B3FE    test        eax,eax
>0056B400    je          0056B408
 0056B402    mov         eax,dword ptr [esp+4]
>0056B406    jmp         0056B40A
 0056B408    xor         eax,eax
 0056B40A    pop         ecx
 0056B40B    pop         edx
 0056B40C    pop         esi
 0056B40D    pop         ebx
 0056B40E    ret
*}
end;

//0056B410
function TTeeCanvas.FontHeight:Integer;
begin
{*
 0056B410    mov         edx,56B424;'W'
 0056B415    mov         ecx,dword ptr [eax]
 0056B417    call        dword ptr [ecx+64]
 0056B41A    ret
*}
end;

//0056B428
procedure TCanvas3D.Assign(Source:TCanvas3D);
begin
{*
 0056B428    push        ebx
 0056B429    push        esi
 0056B42A    mov         esi,edx
 0056B42C    mov         ebx,eax
 0056B42E    mov         eax,esi
 0056B430    mov         edx,dword ptr [eax]
 0056B432    call        dword ptr [edx+0C]
 0056B435    mov         edx,eax
 0056B437    mov         eax,ebx
 0056B439    mov         ecx,dword ptr [eax]
 0056B43B    call        dword ptr [ecx+20]
 0056B43E    pop         esi
 0056B43F    pop         ebx
 0056B440    ret
*}
end;

//0056B444
constructor TTeeCanvas3D.Create;
begin
{*
 0056B444    push        ebx
 0056B445    push        esi
 0056B446    test        dl,dl
>0056B448    je          0056B452
 0056B44A    add         esp,0FFFFFFF0
 0056B44D    call        @ClassCreate
 0056B452    mov         ebx,edx
 0056B454    mov         esi,eax
 0056B456    xor         edx,edx
 0056B458    mov         eax,esi
 0056B45A    call        TObject.Create
 0056B45F    mov         byte ptr [esi+0AB],1
 0056B466    mov         byte ptr [esi+14],0
 0056B46A    xor         eax,eax
 0056B46C    mov         dword ptr [esi+4],eax
 0056B46F    xor         eax,eax
 0056B471    mov         dword ptr [esi+18],eax
 0056B474    xor         eax,eax
 0056B476    mov         dword ptr [esi+94],eax
 0056B47C    mov         byte ptr [esi+91],0
 0056B483    mov         byte ptr [esi+98],1
 0056B48A    mov         byte ptr [esi+9A],1
 0056B491    mov         eax,esi
 0056B493    test        bl,bl
>0056B495    je          0056B4A6
 0056B497    call        @AfterConstruction
 0056B49C    pop         dword ptr fs:[0]
 0056B4A3    add         esp,0C
 0056B4A6    mov         eax,esi
 0056B4A8    pop         esi
 0056B4A9    pop         ebx
 0056B4AA    ret
*}
end;

//0056B4AC
procedure TTeeCanvas3D.DeleteBitmap;
begin
{*
 0056B4AC    cmp         dword ptr [eax+94],0
>0056B4B3    je          0056B4BF
 0056B4B5    add         eax,94
 0056B4BA    call        FreeAndNil
 0056B4BF    ret
*}
end;

//0056B4C0
destructor TTeeCanvas3D.Destroy;
begin
{*
 0056B4C0    push        ebx
 0056B4C1    push        esi
 0056B4C2    call        @BeforeDestruction
 0056B4C7    mov         ebx,edx
 0056B4C9    mov         esi,eax
 0056B4CB    mov         eax,esi
 0056B4CD    call        TTeeCanvas3D.DeleteBitmap
 0056B4D2    mov         edx,ebx
 0056B4D4    and         dl,0FC
 0056B4D7    mov         eax,esi
 0056B4D9    call        TObject.Destroy
 0056B4DE    test        bl,bl
>0056B4E0    jle         0056B4E9
 0056B4E2    mov         eax,esi
 0056B4E4    call        @ClassDestroy
 0056B4E9    pop         esi
 0056B4EA    pop         ebx
 0056B4EB    ret
*}
end;

//0056B4EC
function TTeeCanvas3D.GetBackMode:TCanvasBackMode;
begin
{*
 0056B4EC    push        ebx
 0056B4ED    mov         ebx,eax
 0056B4EF    mov         eax,dword ptr [ebx+4]
 0056B4F2    call        TCanvas.GetHandle
 0056B4F7    push        eax
 0056B4F8    call        GDI32.GetBkMode
 0056B4FD    pop         ebx
 0056B4FE    ret
*}
end;

//0056B500
procedure TTeeCanvas3D.SetBackMode(Mode:TCanvasBackMode);
begin
{*
 0056B500    push        ebx
 0056B501    push        esi
 0056B502    mov         ebx,edx
 0056B504    mov         esi,eax
 0056B506    xor         eax,eax
 0056B508    mov         al,bl
 0056B50A    push        eax
 0056B50B    mov         eax,dword ptr [esi+4]
 0056B50E    call        TCanvas.GetHandle
 0056B513    push        eax
 0056B514    call        GDI32.SetBkMode
 0056B519    pop         esi
 0056B51A    pop         ebx
 0056B51B    ret
*}
end;

//0056B51C
procedure TTeeCanvas3D.SetBackColor(Color:TColor);
begin
{*
 0056B51C    push        ebx
 0056B51D    push        esi
 0056B51E    mov         esi,edx
 0056B520    mov         ebx,eax
 0056B522    mov         eax,esi
 0056B524    call        ColorToRGB
 0056B529    push        eax
 0056B52A    mov         eax,dword ptr [ebx+4]
 0056B52D    call        TCanvas.GetHandle
 0056B532    push        eax
 0056B533    call        GDI32.SetBkColor
 0056B538    pop         esi
 0056B539    pop         ebx
 0056B53A    ret
*}
end;

//0056B53C
function TTeeCanvas3D.GetBackColor:TColor;
begin
{*
 0056B53C    push        ebx
 0056B53D    mov         ebx,eax
 0056B53F    mov         eax,dword ptr [ebx+4]
 0056B542    call        TCanvas.GetHandle
 0056B547    push        eax
 0056B548    call        GDI32.GetBkColor
 0056B54D    pop         ebx
 0056B54E    ret
*}
end;

//0056B550
procedure TTeeCanvas3D.TextOut(X:Integer; Y:Integer; const Text:AnsiString);
begin
{*
 0056B550    push        ebp
 0056B551    mov         ebp,esp
 0056B553    add         esp,0FFFFFFF8
 0056B556    push        ebx
 0056B557    push        esi
 0056B558    push        edi
 0056B559    mov         dword ptr [ebp-8],ecx
 0056B55C    mov         dword ptr [ebp-4],edx
 0056B55F    mov         ebx,eax
 0056B561    mov         edi,dword ptr [ebp+8]
 0056B564    mov         eax,dword ptr [ebx+4]
 0056B567    call        TCanvas.GetHandle
 0056B56C    mov         esi,eax
 0056B56E    mov         eax,dword ptr [ebx+8]
 0056B571    mov         eax,dword ptr [eax+18]
 0056B574    call        ColorToRGB
 0056B579    push        eax
 0056B57A    push        esi
 0056B57B    call        GDI32.SetTextColor
 0056B580    mov         eax,edi
 0056B582    call        @LStrLen
 0056B587    push        eax
 0056B588    mov         eax,edi
 0056B58A    call        @LStrToPChar
 0056B58F    push        eax
 0056B590    mov         eax,dword ptr [ebp-8]
 0056B593    push        eax
 0056B594    mov         eax,dword ptr [ebp-4]
 0056B597    push        eax
 0056B598    push        esi
 0056B599    call        GDI32.TextOutA
 0056B59E    pop         edi
 0056B59F    pop         esi
 0056B5A0    pop         ebx
 0056B5A1    pop         ecx
 0056B5A2    pop         ecx
 0056B5A3    pop         ebp
 0056B5A4    ret         4
*}
end;

//0056B5A8
procedure TTeeCanvas3D.Rectangle(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer);
begin
{*
 0056B5A8    push        ebp
 0056B5A9    mov         ebp,esp
 0056B5AB    push        ebx
 0056B5AC    push        esi
 0056B5AD    push        edi
 0056B5AE    mov         edi,ecx
 0056B5B0    mov         esi,edx
 0056B5B2    mov         ebx,eax
 0056B5B4    mov         eax,dword ptr [ebp+8]
 0056B5B7    push        eax
 0056B5B8    mov         eax,dword ptr [ebp+0C]
 0056B5BB    push        eax
 0056B5BC    push        edi
 0056B5BD    push        esi
 0056B5BE    mov         eax,dword ptr [ebx+4]
 0056B5C1    call        TCanvas.GetHandle
 0056B5C6    push        eax
 0056B5C7    call        GDI32.Rectangle
 0056B5CC    pop         edi
 0056B5CD    pop         esi
 0056B5CE    pop         ebx
 0056B5CF    pop         ebp
 0056B5D0    ret         8
*}
end;

//0056B5D4
procedure TTeeCanvas3D.RoundRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer);
begin
{*
 0056B5D4    push        ebp
 0056B5D5    mov         ebp,esp
 0056B5D7    push        ebx
 0056B5D8    push        esi
 0056B5D9    push        edi
 0056B5DA    mov         edi,ecx
 0056B5DC    mov         esi,edx
 0056B5DE    mov         ebx,eax
 0056B5E0    mov         eax,dword ptr [ebp+8]
 0056B5E3    push        eax
 0056B5E4    mov         eax,dword ptr [ebp+0C]
 0056B5E7    push        eax
 0056B5E8    mov         eax,dword ptr [ebp+10]
 0056B5EB    push        eax
 0056B5EC    mov         eax,dword ptr [ebp+14]
 0056B5EF    push        eax
 0056B5F0    push        edi
 0056B5F1    push        esi
 0056B5F2    mov         eax,dword ptr [ebx+4]
 0056B5F5    call        TCanvas.GetHandle
 0056B5FA    push        eax
 0056B5FB    call        GDI32.RoundRect
 0056B600    pop         edi
 0056B601    pop         esi
 0056B602    pop         ebx
 0056B603    pop         ebp
 0056B604    ret         10
*}
end;

//0056B608
procedure TTeeCanvas3D.SetTextAlign(Align:Integer);
begin
{*
 0056B608    push        ebx
 0056B609    push        esi
 0056B60A    mov         esi,edx
 0056B60C    mov         ebx,eax
 0056B60E    push        esi
 0056B60F    mov         eax,dword ptr [ebx+4]
 0056B612    call        TCanvas.GetHandle
 0056B617    push        eax
 0056B618    call        GDI32.SetTextAlign
 0056B61D    pop         esi
 0056B61E    pop         ebx
 0056B61F    ret
*}
end;

//0056B620
procedure TTeeCanvas3D.MoveTo(X:Integer; Y:Integer);
begin
{*
 0056B620    push        ebx
 0056B621    push        esi
 0056B622    push        edi
 0056B623    mov         edi,ecx
 0056B625    mov         esi,edx
 0056B627    mov         ebx,eax
 0056B629    push        0
 0056B62B    push        edi
 0056B62C    push        esi
 0056B62D    mov         eax,dword ptr [ebx+4]
 0056B630    call        TCanvas.GetHandle
 0056B635    push        eax
 0056B636    call        GDI32.MoveToEx
 0056B63B    pop         edi
 0056B63C    pop         esi
 0056B63D    pop         ebx
 0056B63E    ret
*}
end;

//0056B640
procedure TTeeCanvas3D.LineTo(X:Integer; Y:Integer);
begin
{*
 0056B640    push        ebx
 0056B641    push        esi
 0056B642    push        edi
 0056B643    mov         edi,ecx
 0056B645    mov         esi,edx
 0056B647    mov         ebx,eax
 0056B649    push        edi
 0056B64A    push        esi
 0056B64B    mov         eax,dword ptr [ebx+4]
 0056B64E    call        TCanvas.GetHandle
 0056B653    push        eax
 0056B654    call        GDI32.LineTo
 0056B659    pop         edi
 0056B65A    pop         esi
 0056B65B    pop         ebx
 0056B65C    ret
*}
end;

//0056B660
procedure TTeeCanvas3D.DoRectangle(const Rect:TRect);
begin
{*
 0056B660    push        ebx
 0056B661    push        esi
 0056B662    mov         ebx,edx
 0056B664    mov         esi,eax
 0056B666    mov         eax,dword ptr [ebx+0C]
 0056B669    push        eax
 0056B66A    mov         eax,dword ptr [ebx+8]
 0056B66D    push        eax
 0056B66E    mov         eax,dword ptr [ebx+4]
 0056B671    push        eax
 0056B672    mov         eax,dword ptr [ebx]
 0056B674    push        eax
 0056B675    mov         eax,dword ptr [esi+4]
 0056B678    call        TCanvas.GetHandle
 0056B67D    push        eax
 0056B67E    call        GDI32.Rectangle
 0056B683    pop         esi
 0056B684    pop         ebx
 0056B685    ret
*}
end;

//0056B688
procedure TTeeCanvas3D.PolygonFour;
begin
{*
 0056B688    push        ebx
 0056B689    mov         ebx,eax
 0056B68B    push        4
 0056B68D    lea         eax,[ebx+0C0]
 0056B693    push        eax
 0056B694    mov         eax,dword ptr [ebx+4]
 0056B697    call        TCanvas.GetHandle
 0056B69C    push        eax
 0056B69D    call        GDI32.Polygon
 0056B6A2    pop         ebx
 0056B6A3    ret
*}
end;

//0056B6A4
procedure TTeeCanvas3D.PlaneWithZ(P1:TPoint; P2:TPoint; P3:TPoint; P4:TPoint; Z:Integer);
begin
{*
 0056B6A4    push        ebp
 0056B6A5    mov         ebp,esp
 0056B6A7    add         esp,0FFFFFFE0
 0056B6AA    push        ebx
 0056B6AB    push        esi
 0056B6AC    push        edi
 0056B6AD    mov         esi,dword ptr [ebp+0C]
 0056B6B0    lea         edi,[ebp-20]
 0056B6B3    movs        dword ptr [edi],dword ptr [esi]
 0056B6B4    movs        dword ptr [edi],dword ptr [esi]
 0056B6B5    mov         esi,dword ptr [ebp+10]
 0056B6B8    lea         edi,[ebp-18]
 0056B6BB    movs        dword ptr [edi],dword ptr [esi]
 0056B6BC    movs        dword ptr [edi],dword ptr [esi]
 0056B6BD    mov         esi,ecx
 0056B6BF    lea         edi,[ebp-10]
 0056B6C2    movs        dword ptr [edi],dword ptr [esi]
 0056B6C3    movs        dword ptr [edi],dword ptr [esi]
 0056B6C4    mov         esi,edx
 0056B6C6    lea         edi,[ebp-8]
 0056B6C9    movs        dword ptr [edi],dword ptr [esi]
 0056B6CA    movs        dword ptr [edi],dword ptr [esi]
 0056B6CB    mov         ebx,eax
 0056B6CD    mov         esi,dword ptr [ebp+8]
 0056B6D0    lea         edx,[ebp-8]
 0056B6D3    mov         ecx,esi
 0056B6D5    mov         eax,ebx
 0056B6D7    call        TTeeCanvas3D.Calc3DTPoint
 0056B6DC    lea         edx,[ebp-10]
 0056B6DF    mov         ecx,esi
 0056B6E1    mov         eax,ebx
 0056B6E3    call        TTeeCanvas3D.Calc3DTPoint
 0056B6E8    lea         edx,[ebp-18]
 0056B6EB    mov         ecx,esi
 0056B6ED    mov         eax,ebx
 0056B6EF    call        TTeeCanvas3D.Calc3DTPoint
 0056B6F4    lea         edx,[ebp-20]
 0056B6F7    mov         ecx,esi
 0056B6F9    mov         eax,ebx
 0056B6FB    call        TTeeCanvas3D.Calc3DTPoint
 0056B700    mov         eax,dword ptr [ebp-8]
 0056B703    mov         dword ptr [ebx+0C0],eax
 0056B709    mov         eax,dword ptr [ebp-4]
 0056B70C    mov         dword ptr [ebx+0C4],eax
 0056B712    mov         eax,dword ptr [ebp-10]
 0056B715    mov         dword ptr [ebx+0C8],eax
 0056B71B    mov         eax,dword ptr [ebp-0C]
 0056B71E    mov         dword ptr [ebx+0CC],eax
 0056B724    mov         eax,dword ptr [ebp-18]
 0056B727    mov         dword ptr [ebx+0D0],eax
 0056B72D    mov         eax,dword ptr [ebp-14]
 0056B730    mov         dword ptr [ebx+0D4],eax
 0056B736    mov         eax,dword ptr [ebp-20]
 0056B739    mov         dword ptr [ebx+0D8],eax
 0056B73F    mov         eax,dword ptr [ebp-1C]
 0056B742    mov         dword ptr [ebx+0DC],eax
 0056B748    mov         eax,ebx
 0056B74A    call        TTeeCanvas3D.PolygonFour
 0056B74F    pop         edi
 0056B750    pop         esi
 0056B751    pop         ebx
 0056B752    mov         esp,ebp
 0056B754    pop         ebp
 0056B755    ret         0C
*}
end;

//0056B758
procedure TTeeCanvas3D.Calc3DTPoint(var P:TPoint; z:Integer);
begin
{*
 0056B758    push        ecx
 0056B759    lea         ecx,[edx+4]
 0056B75C    call        TTeeCanvas3D.Calc3DPos
 0056B761    ret
*}
end;

//0056B764
function TTeeCanvas3D.Calc3DTPoint3D(const P:TPoint3D):TPoint;
begin
{*
 0056B764    push        ebx
 0056B765    mov         ebx,dword ptr [edx+4]
 0056B768    push        ebx
 0056B769    mov         ebx,dword ptr [edx+8]
 0056B76C    push        ebx
 0056B76D    mov         edx,dword ptr [edx]
 0056B76F    xchg        ecx,edx
 0056B771    call        TTeeCanvas3D.Calc3DPoint
 0056B776    pop         ebx
 0056B777    ret
*}
end;

//0056B778
function TTeeCanvas3D.Calculate3DPosition(x:Integer; y:Integer; z:Integer):TPoint;
begin
{*
 0056B778    push        ebp
 0056B779    mov         ebp,esp
 0056B77B    add         esp,0FFFFFFF8
 0056B77E    push        ebx
 0056B77F    mov         dword ptr [ebp-8],ecx
 0056B782    mov         dword ptr [ebp-4],edx
 0056B785    mov         ebx,dword ptr [ebp+8]
 0056B788    mov         edx,dword ptr [ebp+0C]
 0056B78B    push        edx
 0056B78C    lea         ecx,[ebp-8]
 0056B78F    lea         edx,[ebp-4]
 0056B792    call        TTeeCanvas3D.Calc3DPos
 0056B797    mov         eax,dword ptr [ebp-4]
 0056B79A    mov         dword ptr [ebx],eax
 0056B79C    mov         eax,dword ptr [ebp-8]
 0056B79F    mov         dword ptr [ebx+4],eax
 0056B7A2    pop         ebx
 0056B7A3    pop         ecx
 0056B7A4    pop         ecx
 0056B7A5    pop         ebp
 0056B7A6    ret         8
*}
end;

//0056B7AC
procedure TTeeCanvas3D.Calc3DPoint(var P:TPoint; x:Integer; y:Integer; z:Integer);
begin
{*
 0056B7AC    push        ebp
 0056B7AD    mov         ebp,esp
 0056B7AF    push        ecx
 0056B7B0    push        ebx
 0056B7B1    mov         dword ptr [ebp-4],ecx
 0056B7B4    mov         ebx,edx
 0056B7B6    mov         edx,dword ptr [ebp+8]
 0056B7B9    push        edx
 0056B7BA    lea         ecx,[ebp+0C]
 0056B7BD    lea         edx,[ebp-4]
 0056B7C0    call        TTeeCanvas3D.Calc3DPos
 0056B7C5    mov         eax,dword ptr [ebp-4]
 0056B7C8    mov         dword ptr [ebx],eax
 0056B7CA    mov         eax,dword ptr [ebp+0C]
 0056B7CD    mov         dword ptr [ebx+4],eax
 0056B7D0    pop         ebx
 0056B7D1    pop         ecx
 0056B7D2    pop         ebp
 0056B7D3    ret         8
*}
end;

//0056B7D8
procedure TTeeCanvas3D.Calculate2DPosition(var x:Integer; var y:Integer; z:Integer);
begin
{*
 0056B7D8    push        ebp
 0056B7D9    mov         ebp,esp
 0056B7DB    add         esp,0FFFFFFE8
 0056B7DE    push        ebx
 0056B7DF    push        esi
 0056B7E0    push        edi
 0056B7E1    mov         esi,ecx
 0056B7E3    mov         edi,edx
 0056B7E5    mov         ebx,eax
 0056B7E7    fld         qword ptr [ebx+0B0]
 0056B7ED    fcomp       dword ptr ds:[56B8FC]
 0056B7F3    fnstsw      al
 0056B7F5    sahf
>0056B7F6    je          0056B8F3
 0056B7FC    fld         dword ptr ds:[56B900]
 0056B802    fdiv        qword ptr [ebx+0B0]
 0056B808    fstp        qword ptr [ebp-10]
 0056B80B    wait
 0056B80C    cmp         byte ptr [ebx+1C],0
>0056B810    je          0056B84D
 0056B812    mov         eax,dword ptr [edi]
 0056B814    sub         eax,dword ptr [ebx+2C]
 0056B817    mov         dword ptr [ebp-14],eax
 0056B81A    fild        dword ptr [ebp-14]
 0056B81D    fmul        qword ptr [ebp-10]
 0056B820    call        @ROUND
 0056B825    sub         eax,dword ptr [ebp+8]
 0056B828    add         eax,dword ptr [ebx+20]
 0056B82B    mov         dword ptr [edi],eax
 0056B82D    mov         eax,dword ptr [esi]
 0056B82F    sub         eax,dword ptr [ebx+30]
 0056B832    mov         dword ptr [ebp-14],eax
 0056B835    fild        dword ptr [ebp-14]
 0056B838    fmul        qword ptr [ebp-10]
 0056B83B    call        @ROUND
 0056B840    add         eax,dword ptr [ebp+8]
 0056B843    add         eax,dword ptr [ebx+24]
 0056B846    mov         dword ptr [esi],eax
>0056B848    jmp         0056B8F3
 0056B84D    cmp         byte ptr [ebx+91],0
>0056B854    je          0056B8F3
 0056B85A    fld         qword ptr [ebx+70]
 0056B85D    fcomp       dword ptr ds:[56B8FC]
 0056B863    fnstsw      al
 0056B865    sahf
>0056B866    je          0056B8F3
 0056B86C    fld         qword ptr [ebx+60]
 0056B86F    fcomp       dword ptr ds:[56B8FC]
 0056B875    fnstsw      al
 0056B877    sahf
>0056B878    je          0056B8F3
 0056B87A    mov         eax,dword ptr [edi]
 0056B87C    mov         dword ptr [ebp-4],eax
 0056B87F    mov         eax,dword ptr [ebx+28]
 0056B882    sub         dword ptr [ebp+8],eax
 0056B885    mov         eax,dword ptr [ebp-4]
 0056B888    sub         eax,dword ptr [ebx+2C]
 0056B88B    mov         dword ptr [ebp-14],eax
 0056B88E    fild        dword ptr [ebp-14]
 0056B891    fmul        qword ptr [ebp-10]
 0056B894    fild        dword ptr [ebp+8]
 0056B897    fmul        qword ptr [ebx+80]
 0056B89D    fsubp       st(1),st
 0056B89F    mov         eax,dword ptr [esi]
 0056B8A1    sub         eax,dword ptr [ebx+24]
 0056B8A4    mov         dword ptr [ebp-18],eax
 0056B8A7    fild        dword ptr [ebp-18]
 0056B8AA    fmul        qword ptr [ebx+58]
 0056B8AD    fsubp       st(1),st
 0056B8AF    fdiv        qword ptr [ebx+70]
 0056B8B2    call        @ROUND
 0056B8B7    add         eax,dword ptr [ebx+20]
 0056B8BA    mov         dword ptr [edi],eax
 0056B8BC    mov         eax,dword ptr [esi]
 0056B8BE    sub         eax,dword ptr [ebx+30]
 0056B8C1    mov         dword ptr [ebp-14],eax
 0056B8C4    fild        dword ptr [ebp-14]
 0056B8C7    fmul        qword ptr [ebp-10]
 0056B8CA    fild        dword ptr [ebp+8]
 0056B8CD    fmul        qword ptr [ebx+88]
 0056B8D3    fsubp       st(1),st
 0056B8D5    mov         eax,dword ptr [ebp-4]
 0056B8D8    sub         eax,dword ptr [ebx+20]
 0056B8DB    mov         dword ptr [ebp-18],eax
 0056B8DE    fild        dword ptr [ebp-18]
 0056B8E1    fmul        qword ptr [ebx+78]
 0056B8E4    fsubp       st(1),st
 0056B8E6    fdiv        qword ptr [ebx+60]
 0056B8E9    call        @ROUND
 0056B8EE    add         eax,dword ptr [ebx+24]
 0056B8F1    mov         dword ptr [esi],eax
 0056B8F3    pop         edi
 0056B8F4    pop         esi
 0056B8F5    pop         ebx
 0056B8F6    mov         esp,ebp
 0056B8F8    pop         ebp
 0056B8F9    ret         4
*}
end;

//0056B904
procedure TTeeCanvas3D.Calc3DPos(var x:Integer; var y:Integer; z:Integer);
begin
{*
 0056B904    push        ebp
 0056B905    mov         ebp,esp
 0056B907    add         esp,0FFFFFFE8
 0056B90A    push        ebx
 0056B90B    push        esi
 0056B90C    push        edi
 0056B90D    mov         dword ptr [ebp-4],ecx
 0056B910    mov         edi,edx
 0056B912    mov         ebx,eax
 0056B914    mov         esi,dword ptr [ebp+8]
 0056B917    cmp         byte ptr [ebx+1C],0
>0056B91B    je          0056B962
 0056B91D    mov         eax,dword ptr [edi]
 0056B91F    sub         eax,dword ptr [ebx+20]
 0056B922    add         eax,esi
 0056B924    mov         dword ptr [ebp-18],eax
 0056B927    fild        dword ptr [ebp-18]
 0056B92A    fmul        qword ptr [ebx+0B0]
 0056B930    call        @ROUND
 0056B935    add         eax,dword ptr [ebx+2C]
 0056B938    mov         dword ptr [edi],eax
 0056B93A    mov         eax,dword ptr [ebp-4]
 0056B93D    mov         eax,dword ptr [eax]
 0056B93F    sub         eax,dword ptr [ebx+24]
 0056B942    sub         eax,esi
 0056B944    mov         dword ptr [ebp-18],eax
 0056B947    fild        dword ptr [ebp-18]
 0056B94A    fmul        qword ptr [ebx+0B0]
 0056B950    call        @ROUND
 0056B955    add         eax,dword ptr [ebx+30]
 0056B958    mov         edx,dword ptr [ebp-4]
 0056B95B    mov         dword ptr [edx],eax
>0056B95D    jmp         0056BA32
 0056B962    cmp         byte ptr [ebx+91],0
>0056B969    je          0056BA32
 0056B96F    sub         esi,dword ptr [ebx+28]
 0056B972    mov         eax,dword ptr [edi]
 0056B974    sub         eax,dword ptr [ebx+20]
 0056B977    mov         dword ptr [ebp-8],eax
 0056B97A    mov         eax,dword ptr [ebp-4]
 0056B97D    mov         eax,dword ptr [eax]
 0056B97F    sub         eax,dword ptr [ebx+24]
 0056B982    mov         dword ptr [ebp-14],eax
 0056B985    fld         qword ptr [ebx+0B8]
 0056B98B    fcomp       dword ptr ds:[56BA3C]
 0056B991    fnstsw      al
 0056B993    sahf
>0056B994    jbe         0056B9CB
 0056B996    fild        dword ptr [ebp-8]
 0056B999    fld         tbyte ptr [ebx+48]
 0056B99C    fmulp       st(1),st
 0056B99E    fild        dword ptr [ebp-14]
 0056B9A1    fld         tbyte ptr [ebx+38]
 0056B9A4    fmulp       st(1),st
 0056B9A6    fsubp       st(1),st
 0056B9A8    mov         dword ptr [ebp-18],esi
 0056B9AB    fild        dword ptr [ebp-18]
 0056B9AE    fmul        qword ptr [ebx+68]
 0056B9B1    faddp       st(1),st
 0056B9B3    fmul        qword ptr [ebx+0B8]
 0056B9B9    fsubr       dword ptr ds:[56BA40]
 0056B9BF    fmul        qword ptr [ebx+0B0]
 0056B9C5    fstp        qword ptr [ebp-10]
 0056B9C8    wait
>0056B9C9    jmp         0056B9DD
 0056B9CB    mov         eax,dword ptr [ebx+0B0]
 0056B9D1    mov         dword ptr [ebp-10],eax
 0056B9D4    mov         eax,dword ptr [ebx+0B4]
 0056B9DA    mov         dword ptr [ebp-0C],eax
 0056B9DD    fild        dword ptr [ebp-8]
 0056B9E0    fmul        qword ptr [ebx+70]
 0056B9E3    fild        dword ptr [ebp-14]
 0056B9E6    fmul        qword ptr [ebx+58]
 0056B9E9    faddp       st(1),st
 0056B9EB    mov         dword ptr [ebp-18],esi
 0056B9EE    fild        dword ptr [ebp-18]
 0056B9F1    fmul        qword ptr [ebx+80]
 0056B9F7    faddp       st(1),st
 0056B9F9    fmul        qword ptr [ebp-10]
 0056B9FC    call        @ROUND
 0056BA01    add         eax,dword ptr [ebx+2C]
 0056BA04    mov         dword ptr [edi],eax
 0056BA06    fild        dword ptr [ebp-8]
 0056BA09    fmul        qword ptr [ebx+78]
 0056BA0C    fild        dword ptr [ebp-14]
 0056BA0F    fmul        qword ptr [ebx+60]
 0056BA12    faddp       st(1),st
 0056BA14    mov         dword ptr [ebp-18],esi
 0056BA17    fild        dword ptr [ebp-18]
 0056BA1A    fmul        qword ptr [ebx+88]
 0056BA20    faddp       st(1),st
 0056BA22    fmul        qword ptr [ebp-10]
 0056BA25    call        @ROUND
 0056BA2A    add         eax,dword ptr [ebx+30]
 0056BA2D    mov         edx,dword ptr [ebp-4]
 0056BA30    mov         dword ptr [edx],eax
 0056BA32    pop         edi
 0056BA33    pop         esi
 0056BA34    pop         ebx
 0056BA35    mov         esp,ebp
 0056BA37    pop         ebp
 0056BA38    ret         4
*}
end;

//0056BA44
function TTeeCanvas3D.GetHandle:HDC;
begin
{*
 0056BA44    mov         eax,dword ptr [eax+4]
 0056BA47    call        TCanvas.GetHandle
 0056BA4C    ret
*}
end;

//0056BA50
procedure TTeeCanvas3D.Cone(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; ConePercent:Integer);
begin
{*
 0056BA50    push        ebp
 0056BA51    mov         ebp,esp
 0056BA53    push        ebx
 0056BA54    push        esi
 0056BA55    mov         esi,eax
 0056BA57    mov         eax,dword ptr [ebp+1C]
 0056BA5A    push        eax
 0056BA5B    mov         eax,dword ptr [ebp+18]
 0056BA5E    push        eax
 0056BA5F    mov         eax,dword ptr [ebp+14]
 0056BA62    push        eax
 0056BA63    mov         eax,dword ptr [ebp+10]
 0056BA66    push        eax
 0056BA67    mov         eax,dword ptr [ebp+0C]
 0056BA6A    push        eax
 0056BA6B    push        1
 0056BA6D    mov         eax,esi
 0056BA6F    mov         ebx,dword ptr [eax]
 0056BA71    call        dword ptr [ebx+108]
 0056BA77    pop         esi
 0056BA78    pop         ebx
 0056BA79    pop         ebp
 0056BA7A    ret         18
*}
end;

//0056BA80
procedure TTeeCanvas3D.Sphere(x:Integer; y:Integer; z:Integer; const Radius:Double);
begin
{*
 0056BA80    push        ebp
 0056BA81    mov         ebp,esp
 0056BA83    push        ecx
 0056BA84    push        ebx
 0056BA85    push        esi
 0056BA86    push        edi
 0056BA87    mov         dword ptr [ebp-4],ecx
 0056BA8A    mov         edi,edx
 0056BA8C    mov         esi,eax
 0056BA8E    fld         qword ptr [ebp+8]
 0056BA91    call        @ROUND
 0056BA96    lea         edx,[eax+edi]
 0056BA99    push        edx
 0056BA9A    mov         edx,dword ptr [ebp-4]
 0056BA9D    add         edx,eax
 0056BA9F    push        edx
 0056BAA0    mov         edx,dword ptr [ebp+10]
 0056BAA3    push        edx
 0056BAA4    mov         ecx,dword ptr [ebp-4]
 0056BAA7    sub         ecx,eax
 0056BAA9    mov         edx,edi
 0056BAAB    sub         edx,eax
 0056BAAD    mov         eax,esi
 0056BAAF    mov         ebx,dword ptr [eax]
 0056BAB1    call        dword ptr [ebx+0DC]
 0056BAB7    pop         edi
 0056BAB8    pop         esi
 0056BAB9    pop         ebx
 0056BABA    pop         ecx
 0056BABB    pop         ebp
 0056BABC    ret         0C
*}
end;

//0056BAC0
procedure sub_0056BAC0;
begin
{*
 0056BAC0    push        ebp
 0056BAC1    mov         ebp,esp
 0056BAC3    pop         ebp
 0056BAC4    ret         10
*}
end;

//0056BAC8
procedure TTeeCanvas3D.TextOut3D(X:Integer; Y:Integer; Z:Integer; const Text:AnsiString);
begin
{*
 0056BAC8    push        ebp
 0056BAC9    mov         ebp,esp
 0056BACB    add         esp,0FFFFFFAC
 0056BACE    push        ebx
 0056BACF    push        esi
 0056BAD0    push        edi
 0056BAD1    mov         dword ptr [ebp-8],ecx
 0056BAD4    mov         dword ptr [ebp-4],edx
 0056BAD7    mov         esi,eax
 0056BAD9    mov         edi,dword ptr [ebp+8]
 0056BADC    mov         eax,dword ptr [ebp+0C]
 0056BADF    push        eax
 0056BAE0    lea         ecx,[ebp-8]
 0056BAE3    lea         edx,[ebp-4]
 0056BAE6    mov         eax,esi
 0056BAE8    call        TTeeCanvas3D.Calc3DPos
 0056BAED    cmp         byte ptr [esi+0AB],0
>0056BAF4    je          0056BBBC
 0056BAFA    xor         ebx,ebx
 0056BAFC    xor         eax,eax
 0056BAFE    mov         dword ptr [ebp-14],eax
 0056BB01    xor         eax,eax
 0056BB03    mov         dword ptr [ebp-18],eax
 0056BB06    fld         qword ptr [esi+0B0]
 0056BB0C    fcomp       dword ptr ds:[56BBD4]
 0056BB12    fnstsw      al
 0056BB14    sahf
>0056BB15    je          0056BB95
 0056BB17    mov         eax,dword ptr [esi+8]
 0056BB1A    call        TFont.GetSize
 0056BB1F    mov         dword ptr [ebp-10],eax
 0056BB22    fild        dword ptr [ebp-10]
 0056BB25    fmul        qword ptr [esi+0B0]
 0056BB2B    call        @ROUND
 0056BB30    mov         edx,eax
 0056BB32    mov         eax,1
 0056BB37    call        0056EDD0
 0056BB3C    mov         dword ptr [ebp-0C],eax
 0056BB3F    mov         eax,dword ptr [ebp-10]
 0056BB42    cmp         eax,dword ptr [ebp-0C]
>0056BB45    je          0056BB95
 0056BB47    mov         eax,dword ptr [esi+4]
 0056BB4A    call        TCanvas.GetHandle
 0056BB4F    mov         dword ptr [ebp-14],eax
 0056BB52    lea         eax,[ebp-54]
 0056BB55    push        eax
 0056BB56    push        3C
 0056BB58    mov         eax,dword ptr [esi+8]
 0056BB5B    call        TFont.GetHandle
 0056BB60    push        eax
 0056BB61    call        GDI32.GetObjectA
 0056BB66    push        48
 0056BB68    mov         eax,dword ptr [esi+8]
 0056BB6B    mov         eax,dword ptr [eax+1C]
 0056BB6E    push        eax
 0056BB6F    mov         eax,dword ptr [ebp-0C]
 0056BB72    push        eax
 0056BB73    call        KERNEL32.MulDiv
 0056BB78    neg         eax
 0056BB7A    mov         dword ptr [ebp-54],eax
 0056BB7D    lea         eax,[ebp-54]
 0056BB80    push        eax
 0056BB81    call        GDI32.CreateFontIndirectA
 0056BB86    push        eax
 0056BB87    mov         eax,dword ptr [ebp-14]
 0056BB8A    push        eax
 0056BB8B    call        GDI32.SelectObject
 0056BB90    mov         dword ptr [ebp-18],eax
 0056BB93    mov         bl,1
 0056BB95    push        edi
 0056BB96    mov         ecx,dword ptr [ebp-8]
 0056BB99    mov         edx,dword ptr [ebp-4]
 0056BB9C    mov         eax,esi
 0056BB9E    mov         esi,dword ptr [eax]
 0056BBA0    call        dword ptr [esi+5C]
 0056BBA3    test        bl,bl
>0056BBA5    je          0056BBCA
 0056BBA7    mov         eax,dword ptr [ebp-18]
 0056BBAA    push        eax
 0056BBAB    mov         eax,dword ptr [ebp-14]
 0056BBAE    push        eax
 0056BBAF    call        GDI32.SelectObject
 0056BBB4    push        eax
 0056BBB5    call        GDI32.DeleteObject
>0056BBBA    jmp         0056BBCA
 0056BBBC    push        edi
 0056BBBD    mov         ecx,dword ptr [ebp-8]
 0056BBC0    mov         edx,dword ptr [ebp-4]
 0056BBC3    mov         eax,esi
 0056BBC5    mov         ebx,dword ptr [eax]
 0056BBC7    call        dword ptr [ebx+5C]
 0056BBCA    pop         edi
 0056BBCB    pop         esi
 0056BBCC    pop         ebx
 0056BBCD    mov         esp,ebp
 0056BBCF    pop         ebp
 0056BBD0    ret         8
*}
end;

//0056BBD8
procedure TTeeCanvas3D.MoveTo3D(X:Integer; Y:Integer; Z:Integer);
begin
{*
 0056BBD8    push        ebp
 0056BBD9    mov         ebp,esp
 0056BBDB    add         esp,0FFFFFFF8
 0056BBDE    push        ebx
 0056BBDF    mov         dword ptr [ebp-8],ecx
 0056BBE2    mov         dword ptr [ebp-4],edx
 0056BBE5    mov         ebx,eax
 0056BBE7    mov         eax,dword ptr [ebp+8]
 0056BBEA    push        eax
 0056BBEB    lea         ecx,[ebp-8]
 0056BBEE    lea         edx,[ebp-4]
 0056BBF1    mov         eax,ebx
 0056BBF3    call        TTeeCanvas3D.Calc3DPos
 0056BBF8    push        0
 0056BBFA    mov         eax,dword ptr [ebp-8]
 0056BBFD    push        eax
 0056BBFE    mov         eax,dword ptr [ebp-4]
 0056BC01    push        eax
 0056BC02    mov         eax,dword ptr [ebx+4]
 0056BC05    call        TCanvas.GetHandle
 0056BC0A    push        eax
 0056BC0B    call        GDI32.MoveToEx
 0056BC10    pop         ebx
 0056BC11    pop         ecx
 0056BC12    pop         ecx
 0056BC13    pop         ebp
 0056BC14    ret         4
*}
end;

//0056BC18
procedure TTeeCanvas3D.LineTo3D(X:Integer; Y:Integer; Z:Integer);
begin
{*
 0056BC18    push        ebp
 0056BC19    mov         ebp,esp
 0056BC1B    add         esp,0FFFFFFF8
 0056BC1E    push        ebx
 0056BC1F    mov         dword ptr [ebp-8],ecx
 0056BC22    mov         dword ptr [ebp-4],edx
 0056BC25    mov         ebx,eax
 0056BC27    mov         eax,dword ptr [ebp+8]
 0056BC2A    push        eax
 0056BC2B    lea         ecx,[ebp-8]
 0056BC2E    lea         edx,[ebp-4]
 0056BC31    mov         eax,ebx
 0056BC33    call        TTeeCanvas3D.Calc3DPos
 0056BC38    mov         eax,dword ptr [ebp-8]
 0056BC3B    push        eax
 0056BC3C    mov         eax,dword ptr [ebp-4]
 0056BC3F    push        eax
 0056BC40    mov         eax,dword ptr [ebx+4]
 0056BC43    call        TCanvas.GetHandle
 0056BC48    push        eax
 0056BC49    call        GDI32.LineTo
 0056BC4E    pop         ebx
 0056BC4F    pop         ecx
 0056BC50    pop         ecx
 0056BC51    pop         ebp
 0056BC52    ret         4
*}
end;

//0056BC58
procedure TTeeCanvas3D.RectangleWithZ(const Rect:TRect; Z:Integer);
begin
{*
 0056BC58    push        ebx
 0056BC59    push        esi
 0056BC5A    push        edi
 0056BC5B    mov         edi,ecx
 0056BC5D    mov         esi,edx
 0056BC5F    mov         ebx,eax
 0056BC61    mov         eax,dword ptr [esi+4]
 0056BC64    push        eax
 0056BC65    push        edi
 0056BC66    mov         ecx,dword ptr [esi]
 0056BC68    lea         edx,[ebx+0C0]
 0056BC6E    mov         eax,ebx
 0056BC70    call        TTeeCanvas3D.Calc3DPoint
 0056BC75    mov         eax,dword ptr [esi+4]
 0056BC78    push        eax
 0056BC79    push        edi
 0056BC7A    mov         ecx,dword ptr [esi+8]
 0056BC7D    lea         edx,[ebx+0C8]
 0056BC83    mov         eax,ebx
 0056BC85    call        TTeeCanvas3D.Calc3DPoint
 0056BC8A    mov         eax,dword ptr [esi+0C]
 0056BC8D    push        eax
 0056BC8E    push        edi
 0056BC8F    mov         ecx,dword ptr [esi+8]
 0056BC92    lea         edx,[ebx+0D0]
 0056BC98    mov         eax,ebx
 0056BC9A    call        TTeeCanvas3D.Calc3DPoint
 0056BC9F    mov         eax,dword ptr [esi+0C]
 0056BCA2    push        eax
 0056BCA3    push        edi
 0056BCA4    mov         ecx,dword ptr [esi]
 0056BCA6    lea         edx,[ebx+0D8]
 0056BCAC    mov         eax,ebx
 0056BCAE    call        TTeeCanvas3D.Calc3DPoint
 0056BCB3    mov         eax,ebx
 0056BCB5    call        TTeeCanvas3D.PolygonFour
 0056BCBA    pop         edi
 0056BCBB    pop         esi
 0056BCBC    pop         ebx
 0056BCBD    ret
*}
end;

//0056BCC0
procedure TTeeCanvas3D.DoHorizLine(X0:Integer; X1:Integer; Y:Integer);
begin
{*
 0056BCC0    push        ebp
 0056BCC1    mov         ebp,esp
 0056BCC3    push        ecx
 0056BCC4    push        ebx
 0056BCC5    push        esi
 0056BCC6    push        edi
 0056BCC7    mov         dword ptr [ebp-4],ecx
 0056BCCA    mov         edi,edx
 0056BCCC    mov         esi,dword ptr [ebp+8]
 0056BCCF    mov         eax,dword ptr [eax+4]
 0056BCD2    call        TCanvas.GetHandle
 0056BCD7    mov         ebx,eax
 0056BCD9    push        0
 0056BCDB    push        esi
 0056BCDC    push        edi
 0056BCDD    push        ebx
 0056BCDE    call        GDI32.MoveToEx
 0056BCE3    push        esi
 0056BCE4    mov         eax,dword ptr [ebp-4]
 0056BCE7    push        eax
 0056BCE8    push        ebx
 0056BCE9    call        GDI32.LineTo
 0056BCEE    pop         edi
 0056BCEF    pop         esi
 0056BCF0    pop         ebx
 0056BCF1    pop         ecx
 0056BCF2    pop         ebp
 0056BCF3    ret         4
*}
end;

//0056BCF8
procedure TTeeCanvas3D.DoVertLine(X:Integer; Y0:Integer; Y1:Integer);
begin
{*
 0056BCF8    push        ebp
 0056BCF9    mov         ebp,esp
 0056BCFB    push        ebx
 0056BCFC    push        esi
 0056BCFD    push        edi
 0056BCFE    mov         edi,ecx
 0056BD00    mov         esi,edx
 0056BD02    mov         eax,dword ptr [eax+4]
 0056BD05    call        TCanvas.GetHandle
 0056BD0A    mov         ebx,eax
 0056BD0C    push        0
 0056BD0E    push        edi
 0056BD0F    push        esi
 0056BD10    push        ebx
 0056BD11    call        GDI32.MoveToEx
 0056BD16    mov         eax,dword ptr [ebp+8]
 0056BD19    push        eax
 0056BD1A    push        esi
 0056BD1B    push        ebx
 0056BD1C    call        GDI32.LineTo
 0056BD21    pop         edi
 0056BD22    pop         esi
 0056BD23    pop         ebx
 0056BD24    pop         ebp
 0056BD25    ret         4
*}
end;

//0056BD28
procedure ClipCanvas(ACanvas:TCanvas; const Rect:TRect);
begin
{*
 0056BD28    push        ebx
 0056BD29    push        esi
 0056BD2A    add         esp,0FFFFFFF0
 0056BD2D    mov         ecx,dword ptr [edx]
 0056BD2F    mov         dword ptr [esp],ecx
 0056BD32    mov         ecx,dword ptr [edx+4]
 0056BD35    mov         dword ptr [esp+4],ecx
 0056BD39    mov         ecx,dword ptr [edx+8]
 0056BD3C    mov         dword ptr [esp+8],ecx
 0056BD40    mov         ecx,dword ptr [edx+0C]
 0056BD43    mov         dword ptr [esp+0C],ecx
 0056BD47    call        TCanvas.GetHandle
 0056BD4C    mov         esi,eax
 0056BD4E    push        2
 0056BD50    lea         eax,[esp+4]
 0056BD54    push        eax
 0056BD55    push        esi
 0056BD56    call        GDI32.LPtoDP
 0056BD5B    mov         eax,dword ptr [esp+0C]
 0056BD5F    push        eax
 0056BD60    mov         eax,dword ptr [esp+0C]
 0056BD64    push        eax
 0056BD65    mov         eax,dword ptr [esp+0C]
 0056BD69    push        eax
 0056BD6A    mov         eax,dword ptr [esp+0C]
 0056BD6E    push        eax
 0056BD6F    call        GDI32.CreateRectRgn
 0056BD74    mov         ebx,eax
 0056BD76    push        1
 0056BD78    push        ebx
 0056BD79    push        esi
 0056BD7A    call        GDI32.ExtSelectClipRgn
 0056BD7F    push        ebx
 0056BD80    call        GDI32.DeleteObject
 0056BD85    add         esp,10
 0056BD88    pop         esi
 0056BD89    pop         ebx
 0056BD8A    ret
*}
end;

//0056BD8C
procedure TTeeCanvas3D.ClipRectangle(const Rect:TRect);
begin
{*
 0056BD8C    mov         eax,dword ptr [eax+4]
 0056BD8F    call        ClipCanvas
 0056BD94    ret
*}
end;

//0056BD98
procedure TTeeCanvas3D.ClipCube(const Rect:TRect; MinZ:Integer; MaxZ:Integer);
begin
{*
 0056BD98    push        ebp
 0056BD99    mov         ebp,esp
 0056BD9B    add         esp,0FFFFFFB0
 0056BD9E    push        ebx
 0056BD9F    push        esi
 0056BDA0    push        edi
 0056BDA1    mov         edi,ecx
 0056BDA3    mov         ebx,edx
 0056BDA5    mov         esi,eax
 0056BDA7    cmp         byte ptr [esi+91],0
>0056BDAE    je          0056BF2C
 0056BDB4    mov         eax,dword ptr [esi+18]
 0056BDB7    cmp         dword ptr [eax+4],10E
>0056BDBE    jne         0056BE08
 0056BDC0    mov         edx,dword ptr [eax+14]
 0056BDC3    cmp         edx,10E
>0056BDC9    je          0056BDD3
 0056BDCB    cmp         edx,168
>0056BDD1    jne         0056BE08
 0056BDD3    mov         eax,dword ptr [ebx+4]
 0056BDD6    push        eax
 0056BDD7    push        edi
 0056BDD8    mov         ecx,dword ptr [ebx]
 0056BDDA    lea         edx,[ebp-50]
 0056BDDD    mov         eax,esi
 0056BDDF    call        TTeeCanvas3D.Calc3DPoint
 0056BDE4    mov         eax,dword ptr [ebx+4]
 0056BDE7    push        eax
 0056BDE8    mov         eax,dword ptr [ebp+8]
 0056BDEB    push        eax
 0056BDEC    mov         ecx,dword ptr [ebx+8]
 0056BDEF    lea         edx,[ebp-48]
 0056BDF2    mov         eax,esi
 0056BDF4    call        TTeeCanvas3D.Calc3DPoint
 0056BDF9    lea         edx,[ebp-50]
 0056BDFC    mov         eax,esi
 0056BDFE    mov         ecx,dword ptr [eax]
 0056BE00    call        dword ptr [ecx+68]
>0056BE03    jmp         0056BF4A
 0056BE08    mov         eax,dword ptr [ebx+0C]
 0056BE0B    push        eax
 0056BE0C    push        edi
 0056BE0D    mov         ecx,dword ptr [ebx]
 0056BE0F    lea         edx,[ebp-40]
 0056BE12    mov         eax,esi
 0056BE14    call        TTeeCanvas3D.Calc3DPoint
 0056BE19    mov         eax,dword ptr [ebx+4]
 0056BE1C    push        eax
 0056BE1D    push        edi
 0056BE1E    mov         ecx,dword ptr [ebx]
 0056BE20    lea         edx,[ebp-38]
 0056BE23    mov         eax,esi
 0056BE25    call        TTeeCanvas3D.Calc3DPoint
 0056BE2A    mov         eax,dword ptr [ebx+4]
 0056BE2D    push        eax
 0056BE2E    mov         eax,dword ptr [ebp+8]
 0056BE31    push        eax
 0056BE32    mov         ecx,dword ptr [ebx]
 0056BE34    lea         edx,[ebp-8]
 0056BE37    mov         eax,esi
 0056BE39    call        TTeeCanvas3D.Calc3DPoint
 0056BE3E    mov         eax,dword ptr [ebx+4]
 0056BE41    push        eax
 0056BE42    push        edi
 0056BE43    mov         ecx,dword ptr [ebx+8]
 0056BE46    lea         edx,[ebp-10]
 0056BE49    mov         eax,esi
 0056BE4B    call        TTeeCanvas3D.Calc3DPoint
 0056BE50    mov         eax,dword ptr [ebp-0C]
 0056BE53    cmp         eax,dword ptr [ebp-4]
>0056BE56    jge         0056BE66
 0056BE58    mov         eax,dword ptr [ebp-10]
 0056BE5B    mov         dword ptr [ebp-30],eax
 0056BE5E    mov         eax,dword ptr [ebp-0C]
 0056BE61    mov         dword ptr [ebp-2C],eax
>0056BE64    jmp         0056BE72
 0056BE66    mov         eax,dword ptr [ebp-8]
 0056BE69    mov         dword ptr [ebp-30],eax
 0056BE6C    mov         eax,dword ptr [ebp-4]
 0056BE6F    mov         dword ptr [ebp-2C],eax
 0056BE72    mov         eax,dword ptr [ebx+4]
 0056BE75    push        eax
 0056BE76    mov         eax,dword ptr [ebp+8]
 0056BE79    push        eax
 0056BE7A    mov         ecx,dword ptr [ebx+8]
 0056BE7D    lea         edx,[ebp-28]
 0056BE80    mov         eax,esi
 0056BE82    call        TTeeCanvas3D.Calc3DPoint
 0056BE87    mov         eax,dword ptr [ebx+0C]
 0056BE8A    push        eax
 0056BE8B    mov         eax,dword ptr [ebp+8]
 0056BE8E    push        eax
 0056BE8F    mov         ecx,dword ptr [ebx+8]
 0056BE92    lea         edx,[ebp-8]
 0056BE95    mov         eax,esi
 0056BE97    call        TTeeCanvas3D.Calc3DPoint
 0056BE9C    mov         eax,dword ptr [ebx+4]
 0056BE9F    push        eax
 0056BEA0    push        edi
 0056BEA1    mov         ecx,dword ptr [ebx+8]
 0056BEA4    lea         edx,[ebp-10]
 0056BEA7    mov         eax,esi
 0056BEA9    call        TTeeCanvas3D.Calc3DPoint
 0056BEAE    mov         eax,dword ptr [ebp-10]
 0056BEB1    cmp         eax,dword ptr [ebp-8]
>0056BEB4    jle         0056BEC4
 0056BEB6    mov         eax,dword ptr [ebp-10]
 0056BEB9    mov         dword ptr [ebp-20],eax
 0056BEBC    mov         eax,dword ptr [ebp-0C]
 0056BEBF    mov         dword ptr [ebp-1C],eax
>0056BEC2    jmp         0056BED0
 0056BEC4    mov         eax,dword ptr [ebp-8]
 0056BEC7    mov         dword ptr [ebp-20],eax
 0056BECA    mov         eax,dword ptr [ebp-4]
 0056BECD    mov         dword ptr [ebp-1C],eax
 0056BED0    mov         eax,dword ptr [ebx+0C]
 0056BED3    push        eax
 0056BED4    push        edi
 0056BED5    mov         ecx,dword ptr [ebx+8]
 0056BED8    lea         edx,[ebp-18]
 0056BEDB    mov         eax,esi
 0056BEDD    call        TTeeCanvas3D.Calc3DPoint
 0056BEE2    mov         eax,dword ptr [ebp-18]
 0056BEE5    cmp         eax,dword ptr [ebp-40]
>0056BEE8    jge         0056BEF8
 0056BEEA    mov         dword ptr [ebp-40],eax
 0056BEED    mov         eax,dword ptr [ebp-0C]
 0056BEF0    cmp         eax,dword ptr [ebp-3C]
>0056BEF3    jge         0056BEF8
 0056BEF5    mov         dword ptr [ebp-3C],eax
 0056BEF8    mov         eax,dword ptr [esi+4]
 0056BEFB    call        TCanvas.GetHandle
 0056BF00    mov         ebx,eax
 0056BF02    push        6
 0056BF04    lea         eax,[ebp-40]
 0056BF07    push        eax
 0056BF08    push        ebx
 0056BF09    call        GDI32.LPtoDP
 0056BF0E    push        1
 0056BF10    push        6
 0056BF12    lea         eax,[ebp-40]
 0056BF15    push        eax
 0056BF16    call        GDI32.CreatePolygonRgn
 0056BF1B    mov         esi,eax
 0056BF1D    push        esi
 0056BF1E    push        ebx
 0056BF1F    call        GDI32.SelectClipRgn
 0056BF24    push        esi
 0056BF25    call        GDI32.DeleteObject
>0056BF2A    jmp         0056BF4A
 0056BF2C    push        esi
 0056BF2D    mov         esi,ebx
 0056BF2F    lea         edi,[ebp-50]
 0056BF32    movs        dword ptr [edi],dword ptr [esi]
 0056BF33    movs        dword ptr [edi],dword ptr [esi]
 0056BF34    movs        dword ptr [edi],dword ptr [esi]
 0056BF35    movs        dword ptr [edi],dword ptr [esi]
 0056BF36    pop         esi
 0056BF37    inc         dword ptr [ebp-50]
 0056BF3A    inc         dword ptr [ebp-4C]
 0056BF3D    dec         dword ptr [ebp-44]
 0056BF40    lea         edx,[ebp-50]
 0056BF43    mov         eax,esi
 0056BF45    mov         ecx,dword ptr [eax]
 0056BF47    call        dword ptr [ecx+68]
 0056BF4A    pop         edi
 0056BF4B    pop         esi
 0056BF4C    pop         ebx
 0056BF4D    mov         esp,ebp
 0056BF4F    pop         ebp
 0056BF50    ret         4
*}
end;

//0056BF54
procedure UnClipCanvas(ACanvas:TCanvas);
begin
{*
 0056BF54    push        ebx
 0056BF55    mov         ebx,eax
 0056BF57    push        0
 0056BF59    mov         eax,ebx
 0056BF5B    call        TCanvas.GetHandle
 0056BF60    push        eax
 0056BF61    call        GDI32.SelectClipRgn
 0056BF66    pop         ebx
 0056BF67    ret
*}
end;

//0056BF68
procedure TTeeCanvas3D.UnClipRectangle;
begin
{*
 0056BF68    mov         eax,dword ptr [eax+4]
 0056BF6B    call        UnClipCanvas
 0056BF70    ret
*}
end;

//0056BF74
procedure TTeeCanvas3D.Projection(MaxDepth:Integer; const Bounds:TRect; const Rect:TRect);
begin
{*
 0056BF74    push        ebp
 0056BF75    mov         ebp,esp
 0056BF77    push        ecx
 0056BF78    push        ebx
 0056BF79    push        esi
 0056BF7A    mov         esi,edx
 0056BF7C    mov         ebx,eax
 0056BF7E    lea         ecx,[ebx+24]
 0056BF81    lea         edx,[ebx+20]
 0056BF84    mov         eax,dword ptr [ebp+8]
 0056BF87    call        RectCenter
 0056BF8C    sar         esi,1
>0056BF8E    jns         0056BF93
 0056BF90    adc         esi,0
 0056BF93    mov         dword ptr [ebx+28],esi
 0056BF96    mov         eax,dword ptr [ebx+20]
 0056BF99    mov         dword ptr [ebx+2C],eax
 0056BF9C    mov         eax,dword ptr [ebx+24]
 0056BF9F    mov         dword ptr [ebx+30],eax
 0056BFA2    mov         eax,dword ptr [ebx+18]
 0056BFA5    test        eax,eax
>0056BFA7    je          0056BFCF
 0056BFA9    mov         edx,dword ptr [eax+8]
 0056BFAC    add         dword ptr [ebx+2C],edx
 0056BFAF    mov         edx,dword ptr [eax+1C]
 0056BFB2    add         dword ptr [ebx+30],edx
 0056BFB5    mov         edx,dword ptr [eax+10]
 0056BFB8    test        edx,edx
>0056BFBA    jle         0056BFCF
 0056BFBC    mov         dword ptr [ebp-4],edx
 0056BFBF    fild        dword ptr [ebp-4]
 0056BFC2    fdiv        dword ptr ds:[56BFD8]
 0056BFC8    fstp        qword ptr [ebx+0B8]
 0056BFCE    wait
 0056BFCF    pop         esi
 0056BFD0    pop         ebx
 0056BFD1    pop         ecx
 0056BFD2    pop         ebp
 0056BFD3    ret         4
*}
end;

//0056BFDC
procedure CalcTrigValues;
begin
{*
 0056BFDC    push        ebp
 0056BFDD    mov         ebp,esp
 0056BFDF    add         esp,0FFFFFF98
 0056BFE2    push        ebx
 0056BFE3    mov         ebx,dword ptr [ebp+8]
 0056BFE6    add         ebx,0FFFFFFFC
 0056BFE9    mov         eax,dword ptr [ebx]
 0056BFEB    cmp         byte ptr [eax+1C],0
>0056BFEF    jne         0056C176
 0056BFF5    mov         eax,dword ptr [ebx]
 0056BFF7    mov         eax,dword ptr [eax+18]
 0056BFFA    test        eax,eax
>0056BFFC    je          0056C015
 0056BFFE    fild        dword ptr [eax+14]
 0056C001    fstp        qword ptr [ebp-58]
 0056C004    wait
 0056C005    fild        dword ptr [eax+4]
 0056C008    fstp        qword ptr [ebp-60]
 0056C00B    wait
 0056C00C    fild        dword ptr [eax+18]
 0056C00F    fstp        qword ptr [ebp-68]
 0056C012    wait
>0056C013    jmp         0056C02D
 0056C015    xor         eax,eax
 0056C017    mov         dword ptr [ebp-58],eax
 0056C01A    mov         dword ptr [ebp-54],eax
 0056C01D    xor         eax,eax
 0056C01F    mov         dword ptr [ebp-60],eax
 0056C022    mov         dword ptr [ebp-5C],eax
 0056C025    xor         eax,eax
 0056C027    mov         dword ptr [ebp-68],eax
 0056C02A    mov         dword ptr [ebp-64],eax
 0056C02D    mov         eax,dword ptr [ebx]
 0056C02F    xor         edx,edx
 0056C031    mov         dword ptr [eax+0B8],edx
 0056C037    mov         dword ptr [eax+0BC],edx
 0056C03D    fld         tbyte ptr ds:[56C17C]
 0056C043    fmul        qword ptr [ebp-58]
 0056C046    add         esp,0FFFFFFF4
 0056C049    fstp        tbyte ptr [esp]
 0056C04C    wait
 0056C04D    lea         edx,[ebp-10]
 0056C050    lea         eax,[ebp-40]
 0056C053    call        SinCos
 0056C058    fld         tbyte ptr ds:[56C17C]
 0056C05E    fmul        qword ptr [ebp-60]
 0056C061    add         esp,0FFFFFFF4
 0056C064    fstp        tbyte ptr [esp]
 0056C067    wait
 0056C068    lea         edx,[ebp-20]
 0056C06B    mov         eax,dword ptr [ebx]
 0056C06D    add         eax,38
 0056C070    call        SinCos
 0056C075    fld         tbyte ptr ds:[56C17C]
 0056C07B    fmul        qword ptr [ebp-68]
 0056C07E    add         esp,0FFFFFFF4
 0056C081    fstp        tbyte ptr [esp]
 0056C084    wait
 0056C085    lea         edx,[ebp-30]
 0056C088    lea         eax,[ebp-50]
 0056C08B    call        SinCos
 0056C090    fld         tbyte ptr [ebp-20]
 0056C093    fld         tbyte ptr [ebp-50]
 0056C096    fmulp       st(1),st
 0056C098    mov         eax,dword ptr [ebx]
 0056C09A    fstp        qword ptr [eax+58]
 0056C09D    wait
 0056C09E    push        3EE4F8B5
 0056C0A3    push        88E368F1
 0056C0A8    fld         tbyte ptr [ebp-20]
 0056C0AB    fld         tbyte ptr [ebp-30]
 0056C0AE    fmulp       st(1),st
 0056C0B0    add         esp,0FFFFFFF8
 0056C0B3    fstp        qword ptr [esp]
 0056C0B6    wait
 0056C0B7    call        MaxDouble
 0056C0BC    mov         eax,dword ptr [ebx]
 0056C0BE    fstp        qword ptr [eax+60]
 0056C0C1    wait
 0056C0C2    push        3EE4F8B5
 0056C0C7    push        88E368F1
 0056C0CC    fld         tbyte ptr [ebp-40]
 0056C0CF    mov         eax,dword ptr [ebx]
 0056C0D1    fld         tbyte ptr [eax+38]
 0056C0D4    fmulp       st(1),st
 0056C0D6    fld         tbyte ptr [ebp-50]
 0056C0D9    fmulp       st(1),st
 0056C0DB    fld         tbyte ptr [ebp-10]
 0056C0DE    fld         tbyte ptr [ebp-30]
 0056C0E1    fmulp       st(1),st
 0056C0E3    faddp       st(1),st
 0056C0E5    add         esp,0FFFFFFF8
 0056C0E8    fstp        qword ptr [esp]
 0056C0EB    wait
 0056C0EC    call        MaxDouble
 0056C0F1    mov         eax,dword ptr [ebx]
 0056C0F3    fstp        qword ptr [eax+70]
 0056C0F6    wait
 0056C0F7    fld         tbyte ptr [ebp-30]
 0056C0FA    fld         tbyte ptr [ebp-40]
 0056C0FD    fmulp       st(1),st
 0056C0FF    mov         eax,dword ptr [ebx]
 0056C101    fld         tbyte ptr [eax+38]
 0056C104    fmulp       st(1),st
 0056C106    fld         tbyte ptr [ebp-10]
 0056C109    fld         tbyte ptr [ebp-50]
 0056C10C    fmulp       st(1),st
 0056C10E    fsubp       st(1),st
 0056C110    mov         eax,dword ptr [ebx]
 0056C112    fstp        qword ptr [eax+78]
 0056C115    wait
 0056C116    fld         tbyte ptr [ebp-10]
 0056C119    mov         eax,dword ptr [ebx]
 0056C11B    fld         tbyte ptr [eax+38]
 0056C11E    fmulp       st(1),st
 0056C120    fld         tbyte ptr [ebp-50]
 0056C123    fmulp       st(1),st
 0056C125    fld         tbyte ptr [ebp-30]
 0056C128    fld         tbyte ptr [ebp-40]
 0056C12B    fmulp       st(1),st
 0056C12D    fsubp       st(1),st
 0056C12F    mov         eax,dword ptr [ebx]
 0056C131    fstp        qword ptr [eax+80]
 0056C137    wait
 0056C138    fld         tbyte ptr [ebp-10]
 0056C13B    fld         tbyte ptr [ebp-30]
 0056C13E    fmulp       st(1),st
 0056C140    mov         eax,dword ptr [ebx]
 0056C142    fld         tbyte ptr [eax+38]
 0056C145    fmulp       st(1),st
 0056C147    fld         tbyte ptr [ebp-40]
 0056C14A    fld         tbyte ptr [ebp-50]
 0056C14D    fmulp       st(1),st
 0056C14F    faddp       st(1),st
 0056C151    mov         eax,dword ptr [ebx]
 0056C153    fstp        qword ptr [eax+88]
 0056C159    wait
 0056C15A    fld         tbyte ptr [ebp-20]
 0056C15D    fld         tbyte ptr [ebp-40]
 0056C160    fmulp       st(1),st
 0056C162    mov         eax,dword ptr [ebx]
 0056C164    fstp        tbyte ptr [eax+48]
 0056C167    wait
 0056C168    fld         tbyte ptr [ebp-10]
 0056C16B    fld         tbyte ptr [ebp-20]
 0056C16E    fmulp       st(1),st
 0056C170    mov         eax,dword ptr [ebx]
 0056C172    fstp        qword ptr [eax+68]
 0056C175    wait
 0056C176    pop         ebx
 0056C177    mov         esp,ebp
 0056C179    pop         ebp
 0056C17A    ret
*}
end;

//0056C188
function TTeeCanvas3D.InitWindow(DestCanvas:TCanvas; A3DOptions:TView3DOptions; ABackColor:TColor; Is3D:Boolean; const UserRect:TRect):TRect;
begin
{*
 0056C188    push        ebp
 0056C189    mov         ebp,esp
 0056C18B    add         esp,0FFFFFFF0
 0056C18E    push        ebx
 0056C18F    push        esi
 0056C190    push        edi
 0056C191    mov         edi,ecx
 0056C193    mov         dword ptr [ebp-8],edx
 0056C196    mov         dword ptr [ebp-4],eax
 0056C199    mov         esi,dword ptr [ebp+8]
 0056C19C    mov         ebx,dword ptr [ebp+0C]
 0056C19F    mov         eax,dword ptr [ebp-4]
 0056C1A2    push        esi
 0056C1A3    push        edi
 0056C1A4    mov         esi,ebx
 0056C1A6    lea         edi,[eax+9B]
 0056C1AC    movs        dword ptr [edi],dword ptr [esi]
 0056C1AD    movs        dword ptr [edi],dword ptr [esi]
 0056C1AE    movs        dword ptr [edi],dword ptr [esi]
 0056C1AF    movs        dword ptr [edi],dword ptr [esi]
 0056C1B0    pop         edi
 0056C1B1    pop         esi
 0056C1B2    mov         eax,dword ptr [ebp-4]
 0056C1B5    mov         dword ptr [eax+18],edi
 0056C1B8    mov         eax,dword ptr [ebp-4]
 0056C1BB    mov         dl,byte ptr [ebp+10]
 0056C1BE    mov         byte ptr [eax+91],dl
 0056C1C4    mov         eax,dword ptr [ebp-4]
 0056C1C7    mov         byte ptr [eax+1C],0
 0056C1CB    mov         eax,dword ptr [ebp-4]
 0056C1CE    xor         edx,edx
 0056C1D0    mov         dword ptr [eax+0B0],edx
 0056C1D6    mov         dword ptr [eax+0B4],3FF00000
 0056C1E0    mov         eax,dword ptr [ebp-4]
 0056C1E3    cmp         byte ptr [eax+91],0
>0056C1EA    je          0056C233
 0056C1EC    mov         eax,dword ptr [ebp-4]
 0056C1EF    mov         eax,dword ptr [eax+18]
 0056C1F2    test        eax,eax
>0056C1F4    je          0056C22C
 0056C1F6    mov         al,byte ptr [eax+0C]
 0056C1F9    mov         edx,dword ptr [ebp-4]
 0056C1FC    mov         byte ptr [edx+1C],al
 0056C1FF    mov         eax,dword ptr [ebp-4]
 0056C202    mov         eax,dword ptr [eax+18]
 0056C205    fild        dword ptr [eax+20]
 0056C208    fld         tbyte ptr ds:[56C338]
 0056C20E    fmulp       st(1),st
 0056C210    mov         eax,dword ptr [ebp-4]
 0056C213    fstp        qword ptr [eax+0B0]
 0056C219    wait
 0056C21A    mov         eax,dword ptr [ebp-4]
 0056C21D    mov         eax,dword ptr [eax+18]
 0056C220    mov         al,byte ptr [eax+24]
 0056C223    mov         edx,dword ptr [ebp-4]
 0056C226    mov         byte ptr [edx+0AB],al
 0056C22C    push        ebp
 0056C22D    call        CalcTrigValues
 0056C232    pop         ecx
 0056C233    mov         eax,dword ptr [ebp-4]
 0056C236    cmp         byte ptr [eax+98],0
>0056C23D    je          0056C31A
 0056C243    lea         ecx,[ebp-0C]
 0056C246    lea         edx,[ebp-10]
 0056C249    mov         eax,ebx
 0056C24B    call        RectSize
 0056C250    mov         eax,dword ptr [ebp-4]
 0056C253    cmp         dword ptr [eax+94],0
>0056C25A    je          0056C28A
 0056C25C    mov         eax,dword ptr [ebp-4]
 0056C25F    mov         eax,dword ptr [eax+94]
 0056C265    mov         edx,dword ptr [eax]
 0056C267    call        dword ptr [edx+2C]
 0056C26A    cmp         eax,dword ptr [ebp-10]
>0056C26D    jne         0056C282
 0056C26F    mov         eax,dword ptr [ebp-4]
 0056C272    mov         eax,dword ptr [eax+94]
 0056C278    mov         edx,dword ptr [eax]
 0056C27A    call        dword ptr [edx+20]
 0056C27D    cmp         eax,dword ptr [ebp-0C]
>0056C280    je          0056C28A
 0056C282    mov         eax,dword ptr [ebp-4]
 0056C285    call        TTeeCanvas3D.DeleteBitmap
 0056C28A    mov         eax,dword ptr [ebp-4]
 0056C28D    cmp         dword ptr [eax+94],0
>0056C294    jne         0056C2DF
 0056C296    mov         dl,1
 0056C298    mov         eax,[005BEDD4];TBitmap
 0056C29D    call        TBitmap.Create
 0056C2A2    mov         ebx,eax
 0056C2A4    mov         eax,dword ptr [ebp-4]
 0056C2A7    mov         dword ptr [eax+94],ebx
 0056C2AD    mov         eax,dword ptr [ebp-4]
 0056C2B0    mov         dl,byte ptr [eax+99]
 0056C2B6    mov         eax,ebx
 0056C2B8    call        TBitmap.SetMonochrome
 0056C2BD    mov         eax,dword ptr [ebp-4]
 0056C2C0    mov         eax,dword ptr [eax+94]
 0056C2C6    mov         edx,dword ptr [ebp-10]
 0056C2C9    mov         ecx,dword ptr [eax]
 0056C2CB    call        dword ptr [ecx+40]
 0056C2CE    mov         eax,dword ptr [ebp-4]
 0056C2D1    mov         eax,dword ptr [eax+94]
 0056C2D7    mov         edx,dword ptr [ebp-0C]
 0056C2DA    mov         ecx,dword ptr [eax]
 0056C2DC    call        dword ptr [ecx+34]
 0056C2DF    mov         eax,dword ptr [ebp-4]
 0056C2E2    mov         eax,dword ptr [eax+94]
 0056C2E8    call        TBitmap.GetCanvas
 0056C2ED    xor         edx,edx
 0056C2EF    mov         dword ptr [eax+28],edx
 0056C2F2    mov         dword ptr [eax+2C],edx
 0056C2F5    xor         edx,edx
 0056C2F7    mov         dword ptr [eax+30],edx
 0056C2FA    mov         dword ptr [eax+34],edx
 0056C2FD    mov         edx,eax
 0056C2FF    mov         eax,dword ptr [ebp-4]
 0056C302    call        TTeeCanvas.SetCanvas
 0056C307    mov         eax,dword ptr [ebp-0C]
 0056C30A    push        eax
 0056C30B    push        esi
 0056C30C    mov         ecx,dword ptr [ebp-10]
 0056C30F    xor         edx,edx
 0056C311    xor         eax,eax
 0056C313    call        00656124
>0056C318    jmp         0056C32D
 0056C31A    mov         edx,dword ptr [ebp-8]
 0056C31D    mov         eax,dword ptr [ebp-4]
 0056C320    call        TTeeCanvas.SetCanvas
 0056C325    mov         edi,esi
 0056C327    mov         esi,ebx
 0056C329    movs        dword ptr [edi],dword ptr [esi]
 0056C32A    movs        dword ptr [edi],dword ptr [esi]
 0056C32B    movs        dword ptr [edi],dword ptr [esi]
 0056C32C    movs        dword ptr [edi],dword ptr [esi]
 0056C32D    pop         edi
 0056C32E    pop         esi
 0056C32F    pop         ebx
 0056C330    mov         esp,ebp
 0056C332    pop         ebp
 0056C333    ret         10
*}
end;

//0056C344
procedure TTeeCanvas3D.TransferBitmap(ALeft:Integer; ATop:Integer; ACanvas:TCanvas);
begin
{*
 0056C344    push        ebp
 0056C345    mov         ebp,esp
 0056C347    push        ebx
 0056C348    push        esi
 0056C349    push        edi
 0056C34A    mov         edi,ecx
 0056C34C    mov         esi,edx
 0056C34E    mov         ebx,eax
 0056C350    push        0CC0020
 0056C355    push        0
 0056C357    push        0
 0056C359    mov         eax,dword ptr [ebx+94]
 0056C35F    call        TBitmap.GetCanvas
 0056C364    call        TCanvas.GetHandle
 0056C369    push        eax
 0056C36A    mov         eax,dword ptr [ebx+94]
 0056C370    mov         edx,dword ptr [eax]
 0056C372    call        dword ptr [edx+20]
 0056C375    push        eax
 0056C376    mov         eax,dword ptr [ebx+94]
 0056C37C    mov         edx,dword ptr [eax]
 0056C37E    call        dword ptr [edx+2C]
 0056C381    push        eax
 0056C382    push        edi
 0056C383    push        esi
 0056C384    mov         eax,dword ptr [ebp+8]
 0056C387    call        TCanvas.GetHandle
 0056C38C    push        eax
 0056C38D    call        GDI32.BitBlt
 0056C392    pop         edi
 0056C393    pop         esi
 0056C394    pop         ebx
 0056C395    pop         ebp
 0056C396    ret         4
*}
end;

//0056C39C
function TTeeCanvas3D.ReDrawBitmap:Boolean;
begin
{*
 0056C39C    push        ebx
 0056C39D    mov         bl,byte ptr [eax+9A]
 0056C3A3    xor         bl,1
 0056C3A6    test        bl,bl
>0056C3A8    je          0056C3B7
 0056C3AA    mov         edx,dword ptr [eax+4]
 0056C3AD    push        edx
 0056C3AE    xor         ecx,ecx
 0056C3B0    xor         edx,edx
 0056C3B2    call        TTeeCanvas3D.TransferBitmap
 0056C3B7    mov         eax,ebx
 0056C3B9    pop         ebx
 0056C3BA    ret
*}
end;

//0056C3BC
procedure TTeeCanvas3D.ShowImage(DestCanvas:TCanvas; DefaultCanvas:TCanvas; const UserRect:TRect);
begin
{*
 0056C3BC    push        ebp
 0056C3BD    mov         ebp,esp
 0056C3BF    push        ecx
 0056C3C0    push        ebx
 0056C3C1    push        esi
 0056C3C2    mov         esi,ecx
 0056C3C4    mov         dword ptr [ebp-4],edx
 0056C3C7    mov         ebx,eax
 0056C3C9    mov         eax,dword ptr [ebp+8]
 0056C3CC    cmp         byte ptr [ebx+98],0
>0056C3D3    je          0056C3EC
 0056C3D5    mov         edx,dword ptr [ebp-4]
 0056C3D8    push        edx
 0056C3D9    mov         ecx,dword ptr [eax+4]
 0056C3DC    mov         edx,dword ptr [eax]
 0056C3DE    mov         eax,ebx
 0056C3E0    call        TTeeCanvas3D.TransferBitmap
 0056C3E5    mov         byte ptr [ebx+9A],0
 0056C3EC    mov         edx,esi
 0056C3EE    mov         eax,ebx
 0056C3F0    call        TTeeCanvas.SetCanvas
 0056C3F5    pop         esi
 0056C3F6    pop         ebx
 0056C3F7    pop         ecx
 0056C3F8    pop         ebp
 0056C3F9    ret         4
*}
end;

//0056C3FC
procedure TTeeCanvas3D.StretchDraw(const Rect:TRect; Graphic:TGraphic);
begin
{*
 0056C3FC    push        ebx
 0056C3FD    push        esi
 0056C3FE    mov         esi,eax
 0056C400    test        ecx,ecx
>0056C402    je          0056C412
 0056C404    mov         eax,edx
 0056C406    mov         edx,ecx
 0056C408    mov         ecx,dword ptr [esi+4]
 0056C40B    xchg        eax,ecx
 0056C40C    xchg        eax,edx
 0056C40D    mov         ebx,dword ptr [eax]
 0056C40F    call        dword ptr [ebx+14]
 0056C412    pop         esi
 0056C413    pop         ebx
 0056C414    ret
*}
end;

//0056C418
procedure TTeeCanvas3D.Draw(X:Integer; Y:Integer; Graphic:TGraphic);
begin
{*
 0056C418    push        ebp
 0056C419    mov         ebp,esp
 0056C41B    add         esp,0FFFFFFEC
 0056C41E    push        ebx
 0056C41F    push        esi
 0056C420    push        edi
 0056C421    mov         dword ptr [ebp-4],ecx
 0056C424    mov         edi,edx
 0056C426    mov         ebx,eax
 0056C428    mov         esi,dword ptr [ebp+8]
 0056C42B    test        esi,esi
>0056C42D    je          0056C496
 0056C42F    mov         eax,esi
 0056C431    mov         edx,dword ptr [eax]
 0056C433    call        dword ptr [edx+1C]
 0056C436    test        al,al
>0056C438    jne         0056C496
 0056C43A    mov         eax,dword ptr [ebx+10]
 0056C43D    call        TBrush.GetColor
 0056C442    call        ColorToRGB
 0056C447    mov         edx,eax
 0056C449    mov         eax,ebx
 0056C44B    mov         ecx,dword ptr [eax]
 0056C44D    call        dword ptr [ecx+18]
 0056C450    mov         eax,dword ptr [ebx+8]
 0056C453    mov         eax,dword ptr [eax+18]
 0056C456    call        ColorToRGB
 0056C45B    push        eax
 0056C45C    mov         eax,dword ptr [ebx+4]
 0056C45F    call        TCanvas.GetHandle
 0056C464    push        eax
 0056C465    call        GDI32.SetTextColor
 0056C46A    mov         eax,esi
 0056C46C    mov         edx,dword ptr [eax]
 0056C46E    call        dword ptr [edx+20]
 0056C471    push        eax
 0056C472    lea         eax,[ebp-14]
 0056C475    push        eax
 0056C476    mov         eax,esi
 0056C478    mov         edx,dword ptr [eax]
 0056C47A    call        dword ptr [edx+2C]
 0056C47D    mov         ecx,eax
 0056C47F    mov         edx,dword ptr [ebp-4]
 0056C482    mov         eax,edi
 0056C484    call        006562B0
 0056C489    lea         ecx,[ebp-14]
 0056C48C    mov         edx,dword ptr [ebx+4]
 0056C48F    mov         eax,esi
 0056C491    mov         ebx,dword ptr [eax]
 0056C493    call        dword ptr [ebx+14]
 0056C496    pop         edi
 0056C497    pop         esi
 0056C498    pop         ebx
 0056C499    mov         esp,ebp
 0056C49B    pop         ebp
 0056C49C    ret         4
*}
end;

//0056C4A0
procedure CalcBrushColor(Index:Integer; Range:Integer);
begin
{*
 0056C4A0    push        ebp
 0056C4A1    mov         ebp,esp
 0056C4A3    push        ebx
 0056C4A4    push        esi
 0056C4A5    mov         esi,edx
 0056C4A7    mov         ebx,eax
 0056C4A9    push        esi
 0056C4AA    mov         eax,dword ptr [ebp+8]
 0056C4AD    mov         eax,dword ptr [eax-18]
 0056C4B0    push        eax
 0056C4B1    push        ebx
 0056C4B2    call        KERNEL32.MulDiv
 0056C4B7    mov         edx,dword ptr [ebp+8]
 0056C4BA    add         al,byte ptr [edx-14]
 0056C4BD    push        eax
 0056C4BE    push        esi
 0056C4BF    mov         eax,dword ptr [ebp+8]
 0056C4C2    mov         eax,dword ptr [eax-10]
 0056C4C5    push        eax
 0056C4C6    push        ebx
 0056C4C7    call        KERNEL32.MulDiv
 0056C4CC    mov         edx,dword ptr [ebp+8]
 0056C4CF    add         al,byte ptr [edx-0C]
 0056C4D2    push        eax
 0056C4D3    push        esi
 0056C4D4    mov         eax,dword ptr [ebp+8]
 0056C4D7    mov         eax,dword ptr [eax-8]
 0056C4DA    push        eax
 0056C4DB    push        ebx
 0056C4DC    call        KERNEL32.MulDiv
 0056C4E1    mov         edx,dword ptr [ebp+8]
 0056C4E4    add         al,byte ptr [edx-4]
 0056C4E7    pop         edx
 0056C4E8    pop         ecx
 0056C4E9    call        RGB
 0056C4EE    mov         ebx,eax
 0056C4F0    mov         eax,dword ptr [ebp+8]
 0056C4F3    cmp         ebx,dword ptr [eax-1C]
>0056C4F6    je          0056C539
 0056C4F8    mov         eax,dword ptr [ebp+8]
 0056C4FB    cmp         dword ptr [eax-20],0
>0056C4FF    je          0056C51A
 0056C501    mov         eax,dword ptr [ebp+8]
 0056C504    mov         eax,dword ptr [eax-20]
 0056C507    push        eax
 0056C508    mov         eax,dword ptr [ebp+8]
 0056C50B    mov         eax,dword ptr [eax-24]
 0056C50E    push        eax
 0056C50F    call        GDI32.SelectObject
 0056C514    push        eax
 0056C515    call        GDI32.DeleteObject
 0056C51A    push        ebx
 0056C51B    call        GDI32.CreateSolidBrush
 0056C520    push        eax
 0056C521    mov         eax,dword ptr [ebp+8]
 0056C524    mov         eax,dword ptr [eax-24]
 0056C527    push        eax
 0056C528    call        GDI32.SelectObject
 0056C52D    mov         edx,dword ptr [ebp+8]
 0056C530    mov         dword ptr [edx-20],eax
 0056C533    mov         eax,dword ptr [ebp+8]
 0056C536    mov         dword ptr [eax-1C],ebx
 0056C539    pop         esi
 0056C53A    pop         ebx
 0056C53B    pop         ebp
 0056C53C    ret
*}
end;

//0056C540
procedure RectGradient(Horizontal:Boolean);
begin
{*
 0056C540    push        ebp
 0056C541    mov         ebp,esp
 0056C543    add         esp,0FFFFFFEC
 0056C546    push        ebx
 0056C547    push        esi
 0056C548    push        edi
 0056C549    mov         byte ptr [ebp-1],al
 0056C54C    mov         eax,dword ptr [ebp+8]
 0056C54F    mov         eax,dword ptr [eax-28]
 0056C552    mov         eax,dword ptr [eax+4]
 0056C555    call        TCanvas.GetHandle
 0056C55A    mov         edx,dword ptr [ebp+8]
 0056C55D    mov         dword ptr [edx-24],eax
 0056C560    cmp         byte ptr [ebp-1],0
>0056C564    je          0056C586
 0056C566    mov         eax,dword ptr [ebp+8]
 0056C569    mov         eax,dword ptr [eax-2C]
 0056C56C    mov         edx,dword ptr [ebp+8]
 0056C56F    sub         eax,dword ptr [edx-34]
 0056C572    mov         dword ptr [ebp-8],eax
 0056C575    mov         eax,dword ptr [ebp+8]
 0056C578    mov         eax,dword ptr [eax-30]
 0056C57B    mov         edx,dword ptr [ebp+8]
 0056C57E    sub         eax,dword ptr [edx-38]
 0056C581    mov         dword ptr [ebp-0C],eax
>0056C584    jmp         0056C5A4
 0056C586    mov         eax,dword ptr [ebp+8]
 0056C589    mov         eax,dword ptr [eax-30]
 0056C58C    mov         edx,dword ptr [ebp+8]
 0056C58F    sub         eax,dword ptr [edx-38]
 0056C592    mov         dword ptr [ebp-8],eax
 0056C595    mov         eax,dword ptr [ebp+8]
 0056C598    mov         eax,dword ptr [eax-2C]
 0056C59B    mov         edx,dword ptr [ebp+8]
 0056C59E    sub         eax,dword ptr [edx-34]
 0056C5A1    mov         dword ptr [ebp-0C],eax
 0056C5A4    mov         eax,dword ptr [ebp-0C]
 0056C5A7    mov         dword ptr [ebp-10],eax
 0056C5AA    cmp         dword ptr [ebp-10],100
>0056C5B1    jle         0056C5BA
 0056C5B3    mov         dword ptr [ebp-10],100
 0056C5BA    xor         ebx,ebx
 0056C5BC    mov         eax,dword ptr [ebp+8]
 0056C5BF    mov         dword ptr [eax-1C],0FFFFFFFF
 0056C5C6    mov         eax,dword ptr [ebp-10]
 0056C5C9    dec         eax
 0056C5CA    test        eax,eax
>0056C5CC    jl          0056C663
 0056C5D2    inc         eax
 0056C5D3    mov         dword ptr [ebp-14],eax
 0056C5D6    xor         edi,edi
 0056C5D8    mov         eax,dword ptr [ebp+8]
 0056C5DB    push        eax
 0056C5DC    mov         edx,dword ptr [ebp-10]
 0056C5DF    dec         edx
 0056C5E0    mov         eax,edi
 0056C5E2    call        CalcBrushColor
 0056C5E7    pop         ecx
 0056C5E8    mov         eax,dword ptr [ebp-10]
 0056C5EB    push        eax
 0056C5EC    mov         eax,dword ptr [ebp-0C]
 0056C5EF    push        eax
 0056C5F0    lea         eax,[edi+1]
 0056C5F3    push        eax
 0056C5F4    call        KERNEL32.MulDiv
 0056C5F9    mov         esi,eax
 0056C5FB    cmp         byte ptr [ebp-1],0
>0056C5FF    je          0056C62D
 0056C601    push        0F00021
 0056C606    mov         eax,dword ptr [ebp-8]
 0056C609    push        eax
 0056C60A    mov         eax,ebx
 0056C60C    sub         eax,esi
 0056C60E    push        eax
 0056C60F    mov         eax,dword ptr [ebp+8]
 0056C612    mov         eax,dword ptr [eax-34]
 0056C615    push        eax
 0056C616    mov         eax,dword ptr [ebp+8]
 0056C619    mov         eax,dword ptr [eax-30]
 0056C61C    sub         eax,ebx
 0056C61E    push        eax
 0056C61F    mov         eax,dword ptr [ebp+8]
 0056C622    mov         eax,dword ptr [eax-24]
 0056C625    push        eax
 0056C626    call        GDI32.PatBlt
>0056C62B    jmp         0056C657
 0056C62D    push        0F00021
 0056C632    mov         eax,ebx
 0056C634    sub         eax,esi
 0056C636    push        eax
 0056C637    mov         eax,dword ptr [ebp-8]
 0056C63A    push        eax
 0056C63B    mov         eax,dword ptr [ebp+8]
 0056C63E    mov         eax,dword ptr [eax-2C]
 0056C641    sub         eax,ebx
 0056C643    push        eax
 0056C644    mov         eax,dword ptr [ebp+8]
 0056C647    mov         eax,dword ptr [eax-38]
 0056C64A    push        eax
 0056C64B    mov         eax,dword ptr [ebp+8]
 0056C64E    mov         eax,dword ptr [eax-24]
 0056C651    push        eax
 0056C652    call        GDI32.PatBlt
 0056C657    mov         ebx,esi
 0056C659    inc         edi
 0056C65A    dec         dword ptr [ebp-14]
>0056C65D    jne         0056C5D8
 0056C663    pop         edi
 0056C664    pop         esi
 0056C665    pop         ebx
 0056C666    mov         esp,ebp
 0056C668    pop         ebp
 0056C669    ret
*}
end;

//0056C66C
procedure FromCorner;
begin
{*
 0056C66C    push        ebp
 0056C66D    mov         ebp,esp
 0056C66F    add         esp,0FFFFFFEC
 0056C672    push        ebx
 0056C673    push        esi
 0056C674    push        edi
 0056C675    mov         eax,dword ptr [ebp+8]
 0056C678    cmp         byte ptr [eax+8],5
 0056C67C    sete        byte ptr [ebp-1]
 0056C680    cmp         byte ptr [ebp-1],0
>0056C684    je          0056C691
 0056C686    mov         eax,dword ptr [ebp+8]
 0056C689    mov         eax,dword ptr [eax-34]
 0056C68C    mov         dword ptr [ebp-14],eax
>0056C68F    jmp         0056C69A
 0056C691    mov         eax,dword ptr [ebp+8]
 0056C694    mov         eax,dword ptr [eax-2C]
 0056C697    mov         dword ptr [ebp-14],eax
 0056C69A    mov         edi,dword ptr [ebp-14]
 0056C69D    lea         ecx,[ebp-0C]
 0056C6A0    lea         edx,[ebp-8]
 0056C6A3    mov         eax,dword ptr [ebp+8]
 0056C6A6    add         eax,0FFFFFFC8
 0056C6A9    call        RectSize
 0056C6AE    mov         eax,dword ptr [ebp-8]
 0056C6B1    add         eax,dword ptr [ebp-0C]
 0056C6B4    mov         dword ptr [ebp-10],eax
 0056C6B7    mov         eax,dword ptr [ebp+8]
 0056C6BA    mov         eax,dword ptr [eax-28]
 0056C6BD    mov         eax,dword ptr [eax+4]
 0056C6C0    call        TCanvas.GetHandle
 0056C6C5    mov         edx,dword ptr [ebp+8]
 0056C6C8    mov         dword ptr [edx-24],eax
 0056C6CB    xor         esi,esi
 0056C6CD    xor         ebx,ebx
 0056C6CF    mov         eax,dword ptr [ebp+8]
 0056C6D2    push        eax
 0056C6D3    lea         eax,[ebx+esi]
 0056C6D6    mov         edx,dword ptr [ebp-10]
 0056C6D9    call        CalcBrushColor
 0056C6DE    pop         ecx
 0056C6DF    push        0F00021
 0056C6E4    mov         eax,dword ptr [ebp-14]
 0056C6E7    sub         eax,edi
 0056C6E9    push        eax
 0056C6EA    push        1
 0056C6EC    push        edi
 0056C6ED    mov         eax,dword ptr [ebp+8]
 0056C6F0    mov         eax,dword ptr [eax-38]
 0056C6F3    add         eax,ebx
 0056C6F5    push        eax
 0056C6F6    mov         eax,dword ptr [ebp+8]
 0056C6F9    mov         eax,dword ptr [eax-24]
 0056C6FC    push        eax
 0056C6FD    call        GDI32.PatBlt
 0056C702    cmp         esi,dword ptr [ebp-0C]
>0056C705    jge         0056C763
 0056C707    inc         esi
 0056C708    cmp         byte ptr [ebp-1],0
>0056C70C    je          0056C738
 0056C70E    push        0F00021
 0056C713    push        1
 0056C715    lea         eax,[ebx+1]
 0056C718    push        eax
 0056C719    push        edi
 0056C71A    mov         eax,dword ptr [ebp+8]
 0056C71D    mov         eax,dword ptr [eax-38]
 0056C720    push        eax
 0056C721    mov         eax,dword ptr [ebp+8]
 0056C724    mov         eax,dword ptr [eax-24]
 0056C727    push        eax
 0056C728    call        GDI32.PatBlt
 0056C72D    mov         eax,dword ptr [ebp+8]
 0056C730    cmp         edi,dword ptr [eax-2C]
>0056C733    jge         0056C763
 0056C735    inc         edi
>0056C736    jmp         0056C763
 0056C738    push        0F00021
 0056C73D    push        1
 0056C73F    lea         eax,[ebx+1]
 0056C742    push        eax
 0056C743    mov         eax,edi
 0056C745    dec         eax
 0056C746    push        eax
 0056C747    mov         eax,dword ptr [ebp+8]
 0056C74A    mov         eax,dword ptr [eax-38]
 0056C74D    push        eax
 0056C74E    mov         eax,dword ptr [ebp+8]
 0056C751    mov         eax,dword ptr [eax-24]
 0056C754    push        eax
 0056C755    call        GDI32.PatBlt
 0056C75A    mov         eax,dword ptr [ebp+8]
 0056C75D    cmp         edi,dword ptr [eax-34]
>0056C760    jle         0056C763
 0056C762    dec         edi
 0056C763    cmp         ebx,dword ptr [ebp-8]
>0056C766    jge         0056C769
 0056C768    inc         ebx
 0056C769    cmp         esi,dword ptr [ebp-0C]
>0056C76C    jl          0056C6CF
 0056C772    cmp         ebx,dword ptr [ebp-8]
>0056C775    jl          0056C6CF
 0056C77B    pop         edi
 0056C77C    pop         esi
 0056C77D    pop         ebx
 0056C77E    mov         esp,ebp
 0056C780    pop         ebp
 0056C781    ret
*}
end;

//0056C784
procedure FromCenter;
begin
{*
 0056C784    push        ebp
 0056C785    mov         ebp,esp
 0056C787    add         esp,0FFFFFFE0
 0056C78A    push        ebx
 0056C78B    push        esi
 0056C78C    push        edi
 0056C78D    lea         ecx,[ebp-10]
 0056C790    lea         edx,[ebp-0C]
 0056C793    mov         eax,dword ptr [ebp+8]
 0056C796    add         eax,0FFFFFFC8
 0056C799    call        RectSize
 0056C79E    mov         eax,dword ptr [ebp-0C]
 0056C7A1    shr         eax,1
 0056C7A3    mov         dword ptr [ebp-4],eax
 0056C7A6    mov         eax,dword ptr [ebp-10]
 0056C7A9    shr         eax,1
 0056C7AB    mov         dword ptr [ebp-8],eax
 0056C7AE    xor         ebx,ebx
 0056C7B0    xor         esi,esi
 0056C7B2    mov         eax,dword ptr [ebp-4]
 0056C7B5    add         eax,dword ptr [ebp-8]
 0056C7B8    mov         dword ptr [ebp-20],eax
 0056C7BB    mov         eax,dword ptr [ebp+8]
 0056C7BE    mov         eax,dword ptr [eax-28]
 0056C7C1    mov         eax,dword ptr [eax+4]
 0056C7C4    call        TCanvas.GetHandle
 0056C7C9    mov         edx,dword ptr [ebp+8]
 0056C7CC    mov         dword ptr [edx-24],eax
 0056C7CF    mov         eax,dword ptr [ebp+8]
 0056C7D2    push        eax
 0056C7D3    lea         eax,[esi+ebx]
 0056C7D6    mov         edx,dword ptr [ebp-20]
 0056C7D9    call        CalcBrushColor
 0056C7DE    pop         ecx
 0056C7DF    mov         eax,dword ptr [ebp+8]
 0056C7E2    mov         edi,dword ptr [eax-38]
 0056C7E5    add         edi,esi
 0056C7E7    mov         eax,dword ptr [ebp+8]
 0056C7EA    mov         eax,dword ptr [eax-34]
 0056C7ED    add         eax,ebx
 0056C7EF    mov         dword ptr [ebp-1C],eax
 0056C7F2    mov         eax,ebx
 0056C7F4    add         eax,eax
 0056C7F6    mov         edx,dword ptr [ebp-10]
 0056C7F9    sub         edx,eax
 0056C7FB    mov         dword ptr [ebp-14],edx
 0056C7FE    mov         eax,esi
 0056C800    add         eax,eax
 0056C802    mov         edx,dword ptr [ebp-0C]
 0056C805    sub         edx,eax
 0056C807    mov         dword ptr [ebp-18],edx
 0056C80A    push        0F00021
 0056C80F    mov         eax,dword ptr [ebp-14]
 0056C812    push        eax
 0056C813    mov         eax,[006E3970]
 0056C818    push        eax
 0056C819    mov         eax,dword ptr [ebp-1C]
 0056C81C    push        eax
 0056C81D    push        edi
 0056C81E    mov         eax,dword ptr [ebp+8]
 0056C821    mov         eax,dword ptr [eax-24]
 0056C824    push        eax
 0056C825    call        GDI32.PatBlt
 0056C82A    push        0F00021
 0056C82F    mov         eax,dword ptr [ebp-14]
 0056C832    push        eax
 0056C833    mov         eax,[006E3970]
 0056C838    push        eax
 0056C839    mov         eax,dword ptr [ebp-1C]
 0056C83C    push        eax
 0056C83D    mov         eax,dword ptr [ebp+8]
 0056C840    mov         eax,dword ptr [eax-30]
 0056C843    sub         eax,esi
 0056C845    dec         eax
 0056C846    push        eax
 0056C847    mov         eax,dword ptr [ebp+8]
 0056C84A    mov         eax,dword ptr [eax-24]
 0056C84D    push        eax
 0056C84E    call        GDI32.PatBlt
 0056C853    push        0F00021
 0056C858    mov         eax,[006E3970]
 0056C85D    push        eax
 0056C85E    mov         eax,dword ptr [ebp-18]
 0056C861    push        eax
 0056C862    mov         eax,dword ptr [ebp-1C]
 0056C865    push        eax
 0056C866    push        edi
 0056C867    mov         eax,dword ptr [ebp+8]
 0056C86A    mov         eax,dword ptr [eax-24]
 0056C86D    push        eax
 0056C86E    call        GDI32.PatBlt
 0056C873    push        0F00021
 0056C878    mov         eax,[006E3970]
 0056C87D    push        eax
 0056C87E    mov         eax,dword ptr [ebp-18]
 0056C881    push        eax
 0056C882    mov         eax,dword ptr [ebp+8]
 0056C885    mov         eax,dword ptr [eax-2C]
 0056C888    sub         eax,ebx
 0056C88A    sub         eax,dword ptr ds:[6E3970]
 0056C890    push        eax
 0056C891    push        edi
 0056C892    mov         eax,dword ptr [ebp+8]
 0056C895    mov         eax,dword ptr [eax-24]
 0056C898    push        eax
 0056C899    call        GDI32.PatBlt
 0056C89E    cmp         ebx,dword ptr [ebp-8]
>0056C8A1    jge         0056C8A9
 0056C8A3    add         ebx,dword ptr ds:[6E3970]
 0056C8A9    cmp         esi,dword ptr [ebp-4]
>0056C8AC    jge         0056C8B4
 0056C8AE    add         esi,dword ptr ds:[6E3970]
 0056C8B4    cmp         ebx,dword ptr [ebp-8]
>0056C8B7    jl          0056C7CF
 0056C8BD    cmp         esi,dword ptr [ebp-4]
>0056C8C0    jl          0056C7CF
 0056C8C6    pop         edi
 0056C8C7    pop         esi
 0056C8C8    pop         ebx
 0056C8C9    mov         esp,ebp
 0056C8CB    pop         ebp
 0056C8CC    ret
*}
end;

//0056C8D0
procedure TTeeCanvas3D.GradientFill(const Rect:TRect; StartColor:TColor; EndColor:TColor; Direction:TGradientDirection);
begin
{*
 0056C8D0    push        ebp
 0056C8D1    mov         ebp,esp
 0056C8D3    add         esp,0FFFFFFC4
 0056C8D6    push        ebx
 0056C8D7    push        esi
 0056C8D8    push        edi
 0056C8D9    mov         dword ptr [ebp-3C],ecx
 0056C8DC    mov         ebx,edx
 0056C8DE    mov         dword ptr [ebp-28],eax
 0056C8E1    cmp         byte ptr [ebp+8],0
>0056C8E5    je          0056C8F8
 0056C8E7    cmp         byte ptr [ebp+8],2
>0056C8EB    je          0056C8F8
 0056C8ED    lea         edx,[ebp+0C]
 0056C8F0    lea         eax,[ebp-3C]
 0056C8F3    call        SwapInteger
 0056C8F8    mov         eax,dword ptr [ebp-3C]
 0056C8FB    call        ColorToRGB
 0056C900    mov         dword ptr [ebp-3C],eax
 0056C903    mov         eax,dword ptr [ebp+0C]
 0056C906    call        ColorToRGB
 0056C90B    mov         dword ptr [ebp+0C],eax
 0056C90E    mov         eax,dword ptr [ebp-3C]
 0056C911    call        GetRValue
 0056C916    and         eax,0FF
 0056C91B    mov         dword ptr [ebp-4],eax
 0056C91E    mov         eax,dword ptr [ebp-3C]
 0056C921    call        GetGValue
 0056C926    and         eax,0FF
 0056C92B    mov         dword ptr [ebp-0C],eax
 0056C92E    mov         eax,dword ptr [ebp-3C]
 0056C931    call        GetBValue
 0056C936    and         eax,0FF
 0056C93B    mov         dword ptr [ebp-14],eax
 0056C93E    mov         eax,dword ptr [ebp+0C]
 0056C941    call        GetRValue
 0056C946    and         eax,0FF
 0056C94B    sub         eax,dword ptr [ebp-4]
 0056C94E    mov         dword ptr [ebp-8],eax
 0056C951    mov         eax,dword ptr [ebp+0C]
 0056C954    call        GetGValue
 0056C959    and         eax,0FF
 0056C95E    sub         eax,dword ptr [ebp-0C]
 0056C961    mov         dword ptr [ebp-10],eax
 0056C964    mov         eax,dword ptr [ebp+0C]
 0056C967    call        GetBValue
 0056C96C    and         eax,0FF
 0056C971    sub         eax,dword ptr [ebp-14]
 0056C974    mov         dword ptr [ebp-18],eax
 0056C977    mov         esi,ebx
 0056C979    lea         edi,[ebp-38]
 0056C97C    movs        dword ptr [edi],dword ptr [esi]
 0056C97D    movs        dword ptr [edi],dword ptr [esi]
 0056C97E    movs        dword ptr [edi],dword ptr [esi]
 0056C97F    movs        dword ptr [edi],dword ptr [esi]
 0056C980    mov         eax,dword ptr [ebp-30]
 0056C983    cmp         eax,dword ptr [ebp-38]
>0056C986    jge         0056C993
 0056C988    lea         edx,[ebp-30]
 0056C98B    lea         eax,[ebp-38]
 0056C98E    call        SwapInteger
 0056C993    mov         eax,dword ptr [ebp-2C]
 0056C996    cmp         eax,dword ptr [ebp-34]
>0056C999    jge         0056C9A6
 0056C99B    lea         edx,[ebp-2C]
 0056C99E    lea         eax,[ebp-34]
 0056C9A1    call        SwapInteger
 0056C9A6    xor         eax,eax
 0056C9A8    mov         dword ptr [ebp-20],eax
 0056C9AB    mov         dword ptr [ebp-1C],0FFFFFFFF
 0056C9B2    mov         al,byte ptr [ebp+8]
 0056C9B5    sub         al,2
>0056C9B7    jb          0056C9D1
 0056C9B9    sub         al,2
>0056C9BB    jb          0056C9C6
>0056C9BD    je          0056C9E5
 0056C9BF    dec         eax
 0056C9C0    sub         al,2
>0056C9C2    jb          0056C9DC
>0056C9C4    jmp         0056C9EC
 0056C9C6    push        ebp
 0056C9C7    mov         al,1
 0056C9C9    call        RectGradient
 0056C9CE    pop         ecx
>0056C9CF    jmp         0056C9EC
 0056C9D1    push        ebp
 0056C9D2    xor         eax,eax
 0056C9D4    call        RectGradient
 0056C9D9    pop         ecx
>0056C9DA    jmp         0056C9EC
 0056C9DC    push        ebp
 0056C9DD    call        FromCorner
 0056C9E2    pop         ecx
>0056C9E3    jmp         0056C9EC
 0056C9E5    push        ebp
 0056C9E6    call        FromCenter
 0056C9EB    pop         ecx
 0056C9EC    cmp         dword ptr [ebp-20],0
>0056C9F0    je          0056CA05
 0056C9F2    mov         eax,dword ptr [ebp-20]
 0056C9F5    push        eax
 0056C9F6    mov         eax,dword ptr [ebp-24]
 0056C9F9    push        eax
 0056C9FA    call        GDI32.SelectObject
 0056C9FF    push        eax
 0056CA00    call        GDI32.DeleteObject
 0056CA05    pop         edi
 0056CA06    pop         esi
 0056CA07    pop         ebx
 0056CA08    mov         esp,ebp
 0056CA0A    pop         ebp
 0056CA0B    ret         8
*}
end;

//0056CA10
procedure TTeeCanvas3D.EraseBackground(const Rect:TRect);
begin
{*
 0056CA10    push        esi
 0056CA11    push        edi
 0056CA12    mov         edi,edx
 0056CA14    mov         esi,eax
 0056CA16    mov         edx,edi
 0056CA18    mov         eax,esi
 0056CA1A    mov         ecx,dword ptr [eax]
 0056CA1C    call        dword ptr [ecx+3C]
 0056CA1F    pop         edi
 0056CA20    pop         esi
 0056CA21    ret
*}
end;

//0056CA24
procedure TTeeCanvas3D.FillRect(const Rect:TRect);
begin
{*
 0056CA24    push        ebx
 0056CA25    push        esi
 0056CA26    mov         esi,edx
 0056CA28    mov         ebx,eax
 0056CA2A    mov         eax,dword ptr [ebx+10]
 0056CA2D    call        TBrush.GetHandle
 0056CA32    push        eax
 0056CA33    push        esi
 0056CA34    mov         eax,dword ptr [ebx+4]
 0056CA37    call        TCanvas.GetHandle
 0056CA3C    push        eax
 0056CA3D    call        USER32.FillRect
 0056CA42    pop         esi
 0056CA43    pop         ebx
 0056CA44    ret
*}
end;

//0056CA48
procedure TTeeCanvas3D.Frame3D(Rect:TRect; TopColor:TColor; BottomColor:TColor; Width:Integer);
begin
{*
 0056CA48    push        ebp
 0056CA49    mov         ebp,esp
 0056CA4B    add         esp,0FFFFFFC4
 0056CA4E    push        ebx
 0056CA4F    push        esi
 0056CA50    push        edi
 0056CA51    mov         esi,edx
 0056CA53    lea         edi,[ebp-24]
 0056CA56    movs        dword ptr [edi],dword ptr [esi]
 0056CA57    movs        dword ptr [edi],dword ptr [esi]
 0056CA58    movs        dword ptr [edi],dword ptr [esi]
 0056CA59    movs        dword ptr [edi],dword ptr [esi]
 0056CA5A    mov         dword ptr [ebp-4],ecx
 0056CA5D    mov         ebx,eax
 0056CA5F    mov         esi,dword ptr [ebp+8]
 0056CA62    lea         edi,[ebp-3C]
 0056CA65    mov         edx,1
 0056CA6A    mov         eax,dword ptr [ebx+0C]
 0056CA6D    call        TPen.SetWidth
 0056CA72    dec         dword ptr [ebp-18]
 0056CA75    dec         dword ptr [ebp-1C]
 0056CA78    test        esi,esi
>0056CA7A    jle         0056CB2F
 0056CA80    dec         esi
 0056CA81    mov         eax,dword ptr [ebp-1C]
 0056CA84    mov         dword ptr [ebp-0C],eax
 0056CA87    mov         eax,dword ptr [ebp-20]
 0056CA8A    mov         dword ptr [ebp-8],eax
 0056CA8D    mov         eax,dword ptr [ebp-24]
 0056CA90    mov         dword ptr [ebp-14],eax
 0056CA93    mov         eax,dword ptr [ebp-18]
 0056CA96    mov         dword ptr [ebp-10],eax
 0056CA99    mov         edx,dword ptr [ebp-4]
 0056CA9C    mov         eax,dword ptr [ebx+0C]
 0056CA9F    call        TPen.SetColor
 0056CAA4    mov         eax,dword ptr [ebp-14]
 0056CAA7    mov         dword ptr [edi],eax
 0056CAA9    mov         eax,dword ptr [ebp-10]
 0056CAAC    mov         dword ptr [edi+4],eax
 0056CAAF    mov         eax,dword ptr [ebp-24]
 0056CAB2    mov         dword ptr [edi+8],eax
 0056CAB5    mov         eax,dword ptr [ebp-20]
 0056CAB8    mov         dword ptr [edi+0C],eax
 0056CABB    mov         eax,dword ptr [ebp-0C]
 0056CABE    mov         dword ptr [edi+10],eax
 0056CAC1    mov         eax,dword ptr [ebp-8]
 0056CAC4    mov         dword ptr [edi+14],eax
 0056CAC7    push        3
 0056CAC9    push        edi
 0056CACA    mov         eax,dword ptr [ebx+4]
 0056CACD    call        TCanvas.GetHandle
 0056CAD2    push        eax
 0056CAD3    call        GDI32.Polyline
 0056CAD8    mov         edx,dword ptr [ebp+0C]
 0056CADB    mov         eax,dword ptr [ebx+0C]
 0056CADE    call        TPen.SetColor
 0056CAE3    dec         dword ptr [ebp-14]
 0056CAE6    mov         eax,dword ptr [ebp-0C]
 0056CAE9    mov         dword ptr [edi],eax
 0056CAEB    mov         eax,dword ptr [ebp-8]
 0056CAEE    mov         dword ptr [edi+4],eax
 0056CAF1    mov         eax,dword ptr [ebp-1C]
 0056CAF4    mov         dword ptr [edi+8],eax
 0056CAF7    mov         eax,dword ptr [ebp-18]
 0056CAFA    mov         dword ptr [edi+0C],eax
 0056CAFD    mov         eax,dword ptr [ebp-14]
 0056CB00    mov         dword ptr [edi+10],eax
 0056CB03    mov         eax,dword ptr [ebp-10]
 0056CB06    mov         dword ptr [edi+14],eax
 0056CB09    push        3
 0056CB0B    push        edi
 0056CB0C    mov         eax,dword ptr [ebx+4]
 0056CB0F    call        TCanvas.GetHandle
 0056CB14    push        eax
 0056CB15    call        GDI32.Polyline
 0056CB1A    push        0FF
 0056CB1C    push        0FF
 0056CB1E    lea         eax,[ebp-24]
 0056CB21    push        eax
 0056CB22    call        USER32.InflateRect
 0056CB27    test        esi,esi
>0056CB29    jg          0056CA80
 0056CB2F    pop         edi
 0056CB30    pop         esi
 0056CB31    pop         ebx
 0056CB32    mov         esp,ebp
 0056CB34    pop         ebp
 0056CB35    ret         8
*}
end;

//0056CB38
function ApplyDark(Color:TColor; HowMuch:Byte):TColor;
begin
{*
 0056CB38    push        ebx
 0056CB39    push        esi
 0056CB3A    push        ecx
 0056CB3B    mov         ebx,edx
 0056CB3D    mov         esi,eax
 0056CB3F    mov         eax,esi
 0056CB41    call        ColorToRGB
 0056CB46    mov         esi,eax
 0056CB48    mov         edx,esi
 0056CB4A    and         dl,0FF
 0056CB4D    mov         eax,esi
 0056CB4F    shr         ax,8
 0056CB53    mov         ecx,esi
 0056CB55    shr         ecx,10
 0056CB58    and         cl,0FF
 0056CB5B    mov         byte ptr [esp],cl
 0056CB5E    cmp         bl,dl
>0056CB60    jae         0056CB66
 0056CB62    sub         dl,bl
>0056CB64    jmp         0056CB68
 0056CB66    xor         edx,edx
 0056CB68    cmp         bl,al
>0056CB6A    jae         0056CB70
 0056CB6C    sub         al,bl
>0056CB6E    jmp         0056CB72
 0056CB70    xor         eax,eax
 0056CB72    cmp         bl,byte ptr [esp]
>0056CB75    jae         0056CB7C
 0056CB77    sub         byte ptr [esp],bl
>0056CB7A    jmp         0056CB80
 0056CB7C    mov         byte ptr [esp],0
 0056CB80    mov         cl,byte ptr [esp]
 0056CB83    xchg        eax,edx
 0056CB84    call        RGB
 0056CB89    pop         edx
 0056CB8A    pop         esi
 0056CB8B    pop         ebx
 0056CB8C    ret
*}
end;

//0056CB90
procedure Dark(Quantity:Byte);
begin
{*
 0056CB90    push        ebp
 0056CB91    mov         ebp,esp
 0056CB93    push        ebx
 0056CB94    mov         ebx,eax
 0056CB96    mov         eax,dword ptr [ebp+8]
 0056CB99    cmp         byte ptr [eax-1],0
>0056CB9D    je          0056CBBF
 0056CB9F    mov         eax,dword ptr [ebp+8]
 0056CBA2    mov         eax,dword ptr [eax-0C]
 0056CBA5    mov         edx,ebx
 0056CBA7    call        ApplyDark
 0056CBAC    mov         edx,eax
 0056CBAE    mov         eax,dword ptr [ebp+8]
 0056CBB1    mov         eax,dword ptr [eax-8]
 0056CBB4    mov         eax,dword ptr [eax+10]
 0056CBB7    call        TBrush.SetColor
 0056CBBC    pop         ebx
 0056CBBD    pop         ebp
 0056CBBE    ret
 0056CBBF    mov         eax,dword ptr [ebp+8]
 0056CBC2    mov         eax,dword ptr [eax-0C]
 0056CBC5    mov         edx,ebx
 0056CBC7    call        ApplyDark
 0056CBCC    mov         edx,eax
 0056CBCE    mov         eax,dword ptr [ebp+8]
 0056CBD1    mov         eax,dword ptr [eax-8]
 0056CBD4    mov         ecx,dword ptr [eax]
 0056CBD6    call        dword ptr [ecx+18]
 0056CBD9    pop         ebx
 0056CBDA    pop         ebp
 0056CBDB    ret
*}
end;

//0056CBDC
procedure TTeeCanvas3D.Cube(Left:Integer; Right:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; DarkSides:Boolean);
begin
{*
 0056CBDC    push        ebp
 0056CBDD    mov         ebp,esp
 0056CBDF    add         esp,0FFFFFFD0
 0056CBE2    push        ebx
 0056CBE3    push        esi
 0056CBE4    push        edi
 0056CBE5    mov         dword ptr [ebp-10],ecx
 0056CBE8    mov         ebx,edx
 0056CBEA    mov         dword ptr [ebp-8],eax
 0056CBED    mov         edi,dword ptr [ebp+10]
 0056CBF0    mov         esi,dword ptr [ebp+18]
 0056CBF3    push        esi
 0056CBF4    push        edi
 0056CBF5    lea         edx,[ebp-18]
 0056CBF8    mov         ecx,ebx
 0056CBFA    mov         eax,dword ptr [ebp-8]
 0056CBFD    call        TTeeCanvas3D.Calc3DPoint
 0056CC02    push        esi
 0056CC03    push        edi
 0056CC04    lea         edx,[ebp-20]
 0056CC07    mov         ecx,dword ptr [ebp-10]
 0056CC0A    mov         eax,dword ptr [ebp-8]
 0056CC0D    call        TTeeCanvas3D.Calc3DPoint
 0056CC12    mov         eax,dword ptr [ebp+14]
 0056CC15    push        eax
 0056CC16    push        edi
 0056CC17    lea         edx,[ebp-28]
 0056CC1A    mov         ecx,dword ptr [ebp-10]
 0056CC1D    mov         eax,dword ptr [ebp-8]
 0056CC20    call        TTeeCanvas3D.Calc3DPoint
 0056CC25    push        esi
 0056CC26    mov         eax,dword ptr [ebp+0C]
 0056CC29    push        eax
 0056CC2A    lea         edx,[ebp-30]
 0056CC2D    mov         ecx,dword ptr [ebp-10]
 0056CC30    mov         eax,dword ptr [ebp-8]
 0056CC33    call        TTeeCanvas3D.Calc3DPoint
 0056CC38    mov         eax,dword ptr [ebp-8]
 0056CC3B    mov         eax,dword ptr [eax+10]
 0056CC3E    call        TBrush.GetStyle
 0056CC43    test        al,al
 0056CC45    sete        byte ptr [ebp-1]
 0056CC49    cmp         byte ptr [ebp-1],0
>0056CC4D    je          0056CC5F
 0056CC4F    mov         eax,dword ptr [ebp-8]
 0056CC52    mov         eax,dword ptr [eax+10]
 0056CC55    call        TBrush.GetColor
 0056CC5A    mov         dword ptr [ebp-0C],eax
>0056CC5D    jmp         0056CC69
 0056CC5F    mov         eax,dword ptr [ebp-8]
 0056CC62    mov         edx,dword ptr [eax]
 0056CC64    call        dword ptr [edx]
 0056CC66    mov         dword ptr [ebp-0C],eax
 0056CC69    mov         eax,dword ptr [ebp-8]
 0056CC6C    mov         edx,dword ptr [ebp-18]
 0056CC6F    mov         dword ptr [eax+0C0],edx
 0056CC75    mov         edx,dword ptr [ebp-14]
 0056CC78    mov         dword ptr [eax+0C4],edx
 0056CC7E    mov         eax,dword ptr [ebp-8]
 0056CC81    mov         edx,dword ptr [ebp-20]
 0056CC84    mov         dword ptr [eax+0C8],edx
 0056CC8A    mov         edx,dword ptr [ebp-1C]
 0056CC8D    mov         dword ptr [eax+0CC],edx
 0056CC93    mov         eax,dword ptr [ebp-8]
 0056CC96    mov         edx,dword ptr [ebp-28]
 0056CC99    mov         dword ptr [eax+0D0],edx
 0056CC9F    mov         edx,dword ptr [ebp-24]
 0056CCA2    mov         dword ptr [eax+0D4],edx
 0056CCA8    mov         eax,dword ptr [ebp+14]
 0056CCAB    push        eax
 0056CCAC    push        edi
 0056CCAD    mov         eax,dword ptr [ebp-8]
 0056CCB0    lea         edx,[eax+0D8]
 0056CCB6    mov         ecx,ebx
 0056CCB8    mov         eax,dword ptr [ebp-8]
 0056CCBB    call        TTeeCanvas3D.Calc3DPoint
 0056CCC0    mov         eax,dword ptr [ebp-8]
 0056CCC3    call        TTeeCanvas3D.PolygonFour
 0056CCC8    mov         eax,dword ptr [ebp+14]
 0056CCCB    push        eax
 0056CCCC    mov         eax,dword ptr [ebp+0C]
 0056CCCF    push        eax
 0056CCD0    mov         eax,dword ptr [ebp-8]
 0056CCD3    lea         edx,[eax+0D0]
 0056CCD9    mov         ecx,dword ptr [ebp-10]
 0056CCDC    mov         eax,dword ptr [ebp-8]
 0056CCDF    call        TTeeCanvas3D.Calc3DPoint
 0056CCE4    mov         eax,dword ptr [ebp-8]
 0056CCE7    mov         eax,dword ptr [eax+0D0]
 0056CCED    cmp         eax,dword ptr [ebp-28]
>0056CCF0    jle         0056CD50
 0056CCF2    mov         eax,dword ptr [ebp-8]
 0056CCF5    mov         edx,dword ptr [ebp-20]
 0056CCF8    mov         dword ptr [eax+0C0],edx
 0056CCFE    mov         edx,dword ptr [ebp-1C]
 0056CD01    mov         dword ptr [eax+0C4],edx
 0056CD07    mov         eax,dword ptr [ebp-8]
 0056CD0A    mov         edx,dword ptr [ebp-30]
 0056CD0D    mov         dword ptr [eax+0C8],edx
 0056CD13    mov         edx,dword ptr [ebp-2C]
 0056CD16    mov         dword ptr [eax+0CC],edx
 0056CD1C    mov         eax,dword ptr [ebp-8]
 0056CD1F    mov         edx,dword ptr [ebp-28]
 0056CD22    mov         dword ptr [eax+0D8],edx
 0056CD28    mov         edx,dword ptr [ebp-24]
 0056CD2B    mov         dword ptr [eax+0DC],edx
 0056CD31    cmp         byte ptr [ebp+8],0
>0056CD35    je          0056CD43
 0056CD37    push        ebp
 0056CD38    mov         al,[006E3968]
 0056CD3D    call        Dark
 0056CD42    pop         ecx
 0056CD43    mov         eax,dword ptr [ebp-8]
 0056CD46    call        TTeeCanvas3D.PolygonFour
>0056CD4B    jmp         0056CDDE
 0056CD50    mov         eax,dword ptr [ebp-8]
 0056CD53    mov         edx,dword ptr [ebp-18]
 0056CD56    mov         dword ptr [eax+0C0],edx
 0056CD5C    mov         edx,dword ptr [ebp-14]
 0056CD5F    mov         dword ptr [eax+0C4],edx
 0056CD65    push        esi
 0056CD66    mov         eax,dword ptr [ebp+0C]
 0056CD69    push        eax
 0056CD6A    mov         eax,dword ptr [ebp-8]
 0056CD6D    lea         edx,[eax+0C8]
 0056CD73    mov         ecx,ebx
 0056CD75    mov         eax,dword ptr [ebp-8]
 0056CD78    call        TTeeCanvas3D.Calc3DPoint
 0056CD7D    mov         eax,dword ptr [ebp+14]
 0056CD80    push        eax
 0056CD81    mov         eax,dword ptr [ebp+0C]
 0056CD84    push        eax
 0056CD85    mov         eax,dword ptr [ebp-8]
 0056CD88    lea         edx,[eax+0D0]
 0056CD8E    mov         ecx,ebx
 0056CD90    mov         eax,dword ptr [ebp-8]
 0056CD93    call        TTeeCanvas3D.Calc3DPoint
 0056CD98    mov         eax,dword ptr [ebp+14]
 0056CD9B    push        eax
 0056CD9C    push        edi
 0056CD9D    mov         eax,dword ptr [ebp-8]
 0056CDA0    lea         edx,[eax+0D8]
 0056CDA6    mov         ecx,ebx
 0056CDA8    mov         eax,dword ptr [ebp-8]
 0056CDAB    call        TTeeCanvas3D.Calc3DPoint
 0056CDB0    mov         eax,dword ptr [ebp-8]
 0056CDB3    mov         eax,dword ptr [eax+0D0]
 0056CDB9    mov         edx,dword ptr [ebp-8]
 0056CDBC    cmp         eax,dword ptr [edx+0D8]
>0056CDC2    jge         0056CDDE
 0056CDC4    cmp         byte ptr [ebp+8],0
>0056CDC8    je          0056CDD6
 0056CDCA    push        ebp
 0056CDCB    mov         al,[006E3968]
 0056CDD0    call        Dark
 0056CDD5    pop         ecx
 0056CDD6    mov         eax,dword ptr [ebp-8]
 0056CDD9    call        TTeeCanvas3D.PolygonFour
 0056CDDE    push        esi
 0056CDDF    mov         eax,dword ptr [ebp+0C]
 0056CDE2    push        eax
 0056CDE3    mov         eax,dword ptr [ebp-8]
 0056CDE6    lea         edx,[eax+0D8]
 0056CDEC    mov         ecx,ebx
 0056CDEE    mov         eax,dword ptr [ebp-8]
 0056CDF1    call        TTeeCanvas3D.Calc3DPoint
 0056CDF6    mov         eax,dword ptr [ebp-8]
 0056CDF9    mov         eax,dword ptr [eax+0DC]
 0056CDFF    cmp         eax,dword ptr [ebp-1C]
>0056CE02    jge         0056CE5D
 0056CE04    mov         eax,dword ptr [ebp-8]
 0056CE07    mov         edx,dword ptr [ebp-18]
 0056CE0A    mov         dword ptr [eax+0C0],edx
 0056CE10    mov         edx,dword ptr [ebp-14]
 0056CE13    mov         dword ptr [eax+0C4],edx
 0056CE19    mov         eax,dword ptr [ebp-8]
 0056CE1C    mov         edx,dword ptr [ebp-20]
 0056CE1F    mov         dword ptr [eax+0C8],edx
 0056CE25    mov         edx,dword ptr [ebp-1C]
 0056CE28    mov         dword ptr [eax+0CC],edx
 0056CE2E    mov         eax,dword ptr [ebp-8]
 0056CE31    mov         edx,dword ptr [ebp-30]
 0056CE34    mov         dword ptr [eax+0D0],edx
 0056CE3A    mov         edx,dword ptr [ebp-2C]
 0056CE3D    mov         dword ptr [eax+0D4],edx
 0056CE43    cmp         byte ptr [ebp+8],0
>0056CE47    je          0056CE55
 0056CE49    push        ebp
 0056CE4A    mov         al,[006E396C]
 0056CE4F    call        Dark
 0056CE54    pop         ecx
 0056CE55    mov         eax,dword ptr [ebp-8]
 0056CE58    call        TTeeCanvas3D.PolygonFour
 0056CE5D    pop         edi
 0056CE5E    pop         esi
 0056CE5F    pop         ebx
 0056CE60    mov         esp,ebp
 0056CE62    pop         ebp
 0056CE63    ret         14
*}
end;

//0056CE68
procedure TTeeCanvas3D.RectangleZ(Left:Integer; Top:Integer; Bottom:Integer; Z0:Integer; Z1:Integer);
begin
{*
 0056CE68    push        ebp
 0056CE69    mov         ebp,esp
 0056CE6B    push        ebx
 0056CE6C    push        esi
 0056CE6D    push        edi
 0056CE6E    mov         edi,ecx
 0056CE70    mov         esi,edx
 0056CE72    mov         ebx,eax
 0056CE74    push        edi
 0056CE75    mov         eax,dword ptr [ebp+0C]
 0056CE78    push        eax
 0056CE79    lea         edx,[ebx+0C0]
 0056CE7F    mov         ecx,esi
 0056CE81    mov         eax,ebx
 0056CE83    call        TTeeCanvas3D.Calc3DPoint
 0056CE88    push        edi
 0056CE89    mov         eax,dword ptr [ebp+8]
 0056CE8C    push        eax
 0056CE8D    lea         edx,[ebx+0C8]
 0056CE93    mov         ecx,esi
 0056CE95    mov         eax,ebx
 0056CE97    call        TTeeCanvas3D.Calc3DPoint
 0056CE9C    mov         eax,dword ptr [ebp+10]
 0056CE9F    push        eax
 0056CEA0    mov         eax,dword ptr [ebp+8]
 0056CEA3    push        eax
 0056CEA4    lea         edx,[ebx+0D0]
 0056CEAA    mov         ecx,esi
 0056CEAC    mov         eax,ebx
 0056CEAE    call        TTeeCanvas3D.Calc3DPoint
 0056CEB3    mov         eax,dword ptr [ebp+10]
 0056CEB6    push        eax
 0056CEB7    mov         eax,dword ptr [ebp+0C]
 0056CEBA    push        eax
 0056CEBB    lea         edx,[ebx+0D8]
 0056CEC1    mov         ecx,esi
 0056CEC3    mov         eax,ebx
 0056CEC5    call        TTeeCanvas3D.Calc3DPoint
 0056CECA    mov         eax,ebx
 0056CECC    call        TTeeCanvas3D.PolygonFour
 0056CED1    pop         edi
 0056CED2    pop         esi
 0056CED3    pop         ebx
 0056CED4    pop         ebp
 0056CED5    ret         0C
*}
end;

//0056CED8
procedure TTeeCanvas3D.RectangleY(Left:Integer; Top:Integer; Right:Integer; Z0:Integer; Z1:Integer);
begin
{*
 0056CED8    push        ebp
 0056CED9    mov         ebp,esp
 0056CEDB    push        ebx
 0056CEDC    push        esi
 0056CEDD    push        edi
 0056CEDE    mov         esi,ecx
 0056CEE0    mov         edi,edx
 0056CEE2    mov         ebx,eax
 0056CEE4    push        esi
 0056CEE5    mov         eax,dword ptr [ebp+0C]
 0056CEE8    push        eax
 0056CEE9    lea         edx,[ebx+0C0]
 0056CEEF    mov         ecx,edi
 0056CEF1    mov         eax,ebx
 0056CEF3    call        TTeeCanvas3D.Calc3DPoint
 0056CEF8    push        esi
 0056CEF9    mov         eax,dword ptr [ebp+0C]
 0056CEFC    push        eax
 0056CEFD    lea         edx,[ebx+0C8]
 0056CF03    mov         ecx,dword ptr [ebp+10]
 0056CF06    mov         eax,ebx
 0056CF08    call        TTeeCanvas3D.Calc3DPoint
 0056CF0D    push        esi
 0056CF0E    mov         eax,dword ptr [ebp+8]
 0056CF11    push        eax
 0056CF12    lea         edx,[ebx+0D0]
 0056CF18    mov         ecx,dword ptr [ebp+10]
 0056CF1B    mov         eax,ebx
 0056CF1D    call        TTeeCanvas3D.Calc3DPoint
 0056CF22    push        esi
 0056CF23    mov         eax,dword ptr [ebp+8]
 0056CF26    push        eax
 0056CF27    lea         edx,[ebx+0D8]
 0056CF2D    mov         ecx,edi
 0056CF2F    mov         eax,ebx
 0056CF31    call        TTeeCanvas3D.Calc3DPoint
 0056CF36    mov         eax,ebx
 0056CF38    call        TTeeCanvas3D.PolygonFour
 0056CF3D    pop         edi
 0056CF3E    pop         esi
 0056CF3F    pop         ebx
 0056CF40    pop         ebp
 0056CF41    ret         0C
*}
end;

//0056CF44
procedure TTeeCanvas3D.FrontPlaneBegin;
begin
{*
 0056CF44    mov         dl,byte ptr [eax+91]
 0056CF4A    mov         byte ptr [eax+90],dl
 0056CF50    mov         byte ptr [eax+91],0
 0056CF57    ret
*}
end;

//0056CF58
procedure TTeeCanvas3D.FrontPlaneEnd;
begin
{*
 0056CF58    mov         dl,byte ptr [eax+90]
 0056CF5E    mov         byte ptr [eax+91],dl
 0056CF64    ret
*}
end;

//0056CF68
procedure TTeeCanvas3D.Invalidate;
begin
{*
 0056CF68    mov         byte ptr [eax+9A],1
 0056CF6F    ret
*}
end;

//0056CF70
procedure TTeeCanvas3D.RotateLabel3D(x:Integer; y:Integer; z:Integer; const St:AnsiString; RotDegree:Integer);
begin
{*
 0056CF70    push        ebp
 0056CF71    mov         ebp,esp
 0056CF73    add         esp,0FFFFFFF8
 0056CF76    push        ebx
 0056CF77    mov         dword ptr [ebp-8],ecx
 0056CF7A    mov         dword ptr [ebp-4],edx
 0056CF7D    mov         ebx,eax
 0056CF7F    mov         eax,dword ptr [ebp+10]
 0056CF82    push        eax
 0056CF83    lea         ecx,[ebp-8]
 0056CF86    lea         edx,[ebp-4]
 0056CF89    mov         eax,ebx
 0056CF8B    call        TTeeCanvas3D.Calc3DPos
 0056CF90    mov         eax,dword ptr [ebp+0C]
 0056CF93    push        eax
 0056CF94    mov         eax,dword ptr [ebp+8]
 0056CF97    push        eax
 0056CF98    mov         ecx,dword ptr [ebp-8]
 0056CF9B    mov         edx,dword ptr [ebp-4]
 0056CF9E    mov         eax,ebx
 0056CFA0    mov         ebx,dword ptr [eax]
 0056CFA2    call        dword ptr [ebx+8C]
 0056CFA8    pop         ebx
 0056CFA9    pop         ecx
 0056CFAA    pop         ecx
 0056CFAB    pop         ebp
 0056CFAC    ret         0C
*}
end;

//0056CFB0
procedure TTeeCanvas3D.RotateLabel(x:Integer; y:Integer; const St:AnsiString; RotDegree:Integer);
begin
{*
 0056CFB0    push        ebp
 0056CFB1    mov         ebp,esp
 0056CFB3    add         esp,0FFFFFFB8
 0056CFB6    push        ebx
 0056CFB7    push        esi
 0056CFB8    push        edi
 0056CFB9    mov         dword ptr [ebp-4],ecx
 0056CFBC    mov         edi,edx
 0056CFBE    mov         ebx,eax
 0056CFC0    mov         esi,dword ptr [ebp+8]
 0056CFC3    cmp         esi,168
>0056CFC9    jle         0056CFD1
 0056CFCB    sub         esi,168
 0056CFD1    mov         dl,1
 0056CFD3    mov         eax,dword ptr [ebx+10]
 0056CFD6    call        TBrush.SetStyle
 0056CFDB    mov         eax,dword ptr [ebx+4]
 0056CFDE    call        TCanvas.GetHandle
 0056CFE3    mov         dword ptr [ebp-8],eax
 0056CFE6    lea         eax,[ebp-44]
 0056CFE9    push        eax
 0056CFEA    push        3C
 0056CFEC    mov         eax,dword ptr [ebx+8]
 0056CFEF    call        TFont.GetHandle
 0056CFF4    push        eax
 0056CFF5    call        GDI32.GetObjectA
 0056CFFA    mov         eax,esi
 0056CFFC    add         eax,eax
 0056CFFE    lea         eax,[eax+eax*4]
 0056D001    mov         dword ptr [ebp-3C],eax
 0056D004    mov         dword ptr [ebp-38],eax
 0056D007    mov         byte ptr [ebp-2C],7
 0056D00B    cmp         byte ptr [ebx+0AB],0
>0056D012    je          0056D05E
 0056D014    fld         qword ptr [ebx+0B0]
 0056D01A    fcomp       dword ptr ds:[56D09C]
 0056D020    fnstsw      al
 0056D022    sahf
>0056D023    je          0056D05E
 0056D025    push        48
 0056D027    mov         eax,dword ptr [ebx+8]
 0056D02A    mov         eax,dword ptr [eax+1C]
 0056D02D    push        eax
 0056D02E    mov         eax,dword ptr [ebx+8]
 0056D031    call        TFont.GetSize
 0056D036    mov         dword ptr [ebp-48],eax
 0056D039    fild        dword ptr [ebp-48]
 0056D03C    fmul        qword ptr [ebx+0B0]
 0056D042    call        @ROUND
 0056D047    mov         edx,eax
 0056D049    mov         eax,1
 0056D04E    call        0056EDD0
 0056D053    push        eax
 0056D054    call        KERNEL32.MulDiv
 0056D059    neg         eax
 0056D05B    mov         dword ptr [ebp-44],eax
 0056D05E    lea         eax,[ebp-44]
 0056D061    push        eax
 0056D062    call        GDI32.CreateFontIndirectA
 0056D067    push        eax
 0056D068    mov         eax,dword ptr [ebp-8]
 0056D06B    push        eax
 0056D06C    call        GDI32.SelectObject
 0056D071    mov         esi,eax
 0056D073    mov         eax,dword ptr [ebp+0C]
 0056D076    push        eax
 0056D077    mov         ecx,dword ptr [ebp-4]
 0056D07A    mov         edx,edi
 0056D07C    mov         eax,ebx
 0056D07E    mov         ebx,dword ptr [eax]
 0056D080    call        dword ptr [ebx+5C]
 0056D083    push        esi
 0056D084    mov         eax,dword ptr [ebp-8]
 0056D087    push        eax
 0056D088    call        GDI32.SelectObject
 0056D08D    push        eax
 0056D08E    call        GDI32.DeleteObject
 0056D093    pop         edi
 0056D094    pop         esi
 0056D095    pop         ebx
 0056D096    mov         esp,ebp
 0056D098    pop         ebp
 0056D099    ret         8
*}
end;

//0056D0A0
procedure TTeeCanvas3D.Line(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer);
begin
{*
 0056D0A0    push        ebp
 0056D0A1    mov         ebp,esp
 0056D0A3    push        ebx
 0056D0A4    push        esi
 0056D0A5    push        edi
 0056D0A6    mov         edi,ecx
 0056D0A8    mov         esi,edx
 0056D0AA    mov         eax,dword ptr [eax+4]
 0056D0AD    call        TCanvas.GetHandle
 0056D0B2    mov         ebx,eax
 0056D0B4    push        0
 0056D0B6    push        edi
 0056D0B7    push        esi
 0056D0B8    push        ebx
 0056D0B9    call        GDI32.MoveToEx
 0056D0BE    mov         eax,dword ptr [ebp+8]
 0056D0C1    push        eax
 0056D0C2    mov         eax,dword ptr [ebp+0C]
 0056D0C5    push        eax
 0056D0C6    push        ebx
 0056D0C7    call        GDI32.LineTo
 0056D0CC    pop         edi
 0056D0CD    pop         esi
 0056D0CE    pop         ebx
 0056D0CF    pop         ebp
 0056D0D0    ret         8
*}
end;

//0056D0D4
procedure TTeeCanvas3D.LineWithZ(X0:Integer; Y0:Integer; X1:Integer; Y1:Integer; Z:Integer);
begin
{*
 0056D0D4    push        ebp
 0056D0D5    mov         ebp,esp
 0056D0D7    add         esp,0FFFFFFF8
 0056D0DA    push        ebx
 0056D0DB    push        esi
 0056D0DC    mov         dword ptr [ebp-8],ecx
 0056D0DF    mov         dword ptr [ebp-4],edx
 0056D0E2    mov         ebx,eax
 0056D0E4    mov         esi,dword ptr [ebp+8]
 0056D0E7    push        esi
 0056D0E8    lea         ecx,[ebp-8]
 0056D0EB    lea         edx,[ebp-4]
 0056D0EE    mov         eax,ebx
 0056D0F0    call        TTeeCanvas3D.Calc3DPos
 0056D0F5    push        esi
 0056D0F6    lea         ecx,[ebp+0C]
 0056D0F9    lea         edx,[ebp+10]
 0056D0FC    mov         eax,ebx
 0056D0FE    call        TTeeCanvas3D.Calc3DPos
 0056D103    mov         eax,dword ptr [ebx+4]
 0056D106    call        TCanvas.GetHandle
 0056D10B    mov         ebx,eax
 0056D10D    push        0
 0056D10F    mov         eax,dword ptr [ebp-8]
 0056D112    push        eax
 0056D113    mov         eax,dword ptr [ebp-4]
 0056D116    push        eax
 0056D117    push        ebx
 0056D118    call        GDI32.MoveToEx
 0056D11D    mov         eax,dword ptr [ebp+0C]
 0056D120    push        eax
 0056D121    mov         eax,dword ptr [ebp+10]
 0056D124    push        eax
 0056D125    push        ebx
 0056D126    call        GDI32.LineTo
 0056D12B    pop         esi
 0056D12C    pop         ebx
 0056D12D    pop         ecx
 0056D12E    pop         ecx
 0056D12F    pop         ebp
 0056D130    ret         0C
*}
end;

//0056D134
procedure TTeeCanvas3D.Polygon(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1);
begin
{*
 0056D134    push        ebx
 0056D135    push        esi
 0056D136    push        edi
 0056D137    mov         edi,ecx
 0056D139    mov         esi,edx
 0056D13B    mov         ebx,eax
 0056D13D    inc         edi
 0056D13E    push        edi
 0056D13F    push        esi
 0056D140    mov         eax,dword ptr [ebx+4]
 0056D143    call        TCanvas.GetHandle
 0056D148    push        eax
 0056D149    call        GDI32.Polygon
 0056D14E    pop         edi
 0056D14F    pop         esi
 0056D150    pop         ebx
 0056D151    ret
*}
end;

//0056D154
procedure TTeeCanvas3D.PolygonWithZ(const Points:array[$0..-$1] of Types.TPoint; const _Dv_:$0..-$1; Z:Integer);
begin
{*
 0056D154    push        ebp
 0056D155    mov         ebp,esp
 0056D157    push        ebx
 0056D158    push        esi
 0056D159    mov         esi,eax
 0056D15B    mov         eax,esi
 0056D15D    mov         ebx,dword ptr [eax]
 0056D15F    call        dword ptr [ebx+88]
 0056D165    pop         esi
 0056D166    pop         ebx
 0056D167    pop         ebp
 0056D168    ret         4
*}
end;

//0056D16C
procedure TTeeCanvas3D.Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer);
begin
{*
 0056D16C    push        ebp
 0056D16D    mov         ebp,esp
 0056D16F    push        ebx
 0056D170    push        esi
 0056D171    push        edi
 0056D172    mov         edi,ecx
 0056D174    mov         esi,edx
 0056D176    mov         ebx,eax
 0056D178    mov         eax,dword ptr [ebp+8]
 0056D17B    push        eax
 0056D17C    mov         eax,dword ptr [ebp+0C]
 0056D17F    push        eax
 0056D180    push        edi
 0056D181    push        esi
 0056D182    mov         eax,dword ptr [ebx+4]
 0056D185    call        TCanvas.GetHandle
 0056D18A    push        eax
 0056D18B    call        GDI32.Ellipse
 0056D190    pop         edi
 0056D191    pop         esi
 0056D192    pop         ebx
 0056D193    pop         ebp
 0056D194    ret         8
*}
end;

//0056D198
procedure TTeeCanvas3D.EllipseWithZ(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; Z:Integer);
begin
{*
 0056D198    push        ebp
 0056D199    mov         ebp,esp
 0056D19B    add         esp,0FFFFFEA4
 0056D1A1    push        ebx
 0056D1A2    push        esi
 0056D1A3    push        edi
 0056D1A4    mov         dword ptr [ebp-8],ecx
 0056D1A7    mov         dword ptr [ebp-4],edx
 0056D1AA    mov         ebx,eax
 0056D1AC    mov         eax,dword ptr [ebx+4]
 0056D1AF    call        TCanvas.GetHandle
 0056D1B4    mov         dword ptr [ebp-40],eax
 0056D1B7    cmp         byte ptr [ebx+1C],0
>0056D1BB    je          0056D1FD
 0056D1BD    mov         eax,dword ptr [ebp+8]
 0056D1C0    push        eax
 0056D1C1    lea         ecx,[ebp-8]
 0056D1C4    lea         edx,[ebp-4]
 0056D1C7    mov         eax,ebx
 0056D1C9    call        TTeeCanvas3D.Calc3DPos
 0056D1CE    mov         eax,dword ptr [ebp+8]
 0056D1D1    push        eax
 0056D1D2    lea         ecx,[ebp+0C]
 0056D1D5    lea         edx,[ebp+10]
 0056D1D8    mov         eax,ebx
 0056D1DA    call        TTeeCanvas3D.Calc3DPos
 0056D1DF    mov         eax,dword ptr [ebp+0C]
 0056D1E2    push        eax
 0056D1E3    mov         eax,dword ptr [ebp+10]
 0056D1E6    push        eax
 0056D1E7    mov         eax,dword ptr [ebp-8]
 0056D1EA    push        eax
 0056D1EB    mov         eax,dword ptr [ebp-4]
 0056D1EE    push        eax
 0056D1EF    mov         eax,dword ptr [ebp-40]
 0056D1F2    push        eax
 0056D1F3    call        GDI32.Ellipse
>0056D1F8    jmp         0056D40A
 0056D1FD    cmp         byte ptr [ebx+91],0
>0056D204    je          0056D3EA
 0056D20A    mov         eax,dword ptr [ebp+10]
 0056D20D    add         eax,dword ptr [ebp-4]
 0056D210    sar         eax,1
>0056D212    jns         0056D217
 0056D214    adc         eax,0
 0056D217    mov         dword ptr [ebp-10],eax
 0056D21A    mov         eax,dword ptr [ebp+0C]
 0056D21D    add         eax,dword ptr [ebp-8]
 0056D220    sar         eax,1
>0056D222    jns         0056D227
 0056D224    adc         eax,0
 0056D227    mov         dword ptr [ebp-0C],eax
 0056D22A    mov         eax,dword ptr [ebp+10]
 0056D22D    sub         eax,dword ptr [ebp-4]
 0056D230    sar         eax,1
>0056D232    jns         0056D237
 0056D234    adc         eax,0
 0056D237    mov         dword ptr [ebp-14],eax
 0056D23A    mov         eax,dword ptr [ebp+0C]
 0056D23D    sub         eax,dword ptr [ebp-8]
 0056D240    sar         eax,1
>0056D242    jns         0056D247
 0056D244    adc         eax,0
 0056D247    mov         dword ptr [ebp-18],eax
 0056D24A    mov         eax,dword ptr [ebp+0C]
 0056D24D    push        eax
 0056D24E    mov         eax,dword ptr [ebp+8]
 0056D251    push        eax
 0056D252    lea         edx,[ebp-140]
 0056D258    mov         ecx,dword ptr [ebp-10]
 0056D25B    mov         eax,ebx
 0056D25D    call        TTeeCanvas3D.Calc3DPoint
 0056D262    mov         esi,1
 0056D267    lea         edi,[ebp-138]
 0056D26D    mov         dword ptr [ebp-15C],esi
 0056D273    fild        dword ptr [ebp-15C]
 0056D279    fld         tbyte ptr ds:[56D414]
 0056D27F    fmulp       st(1),st
 0056D281    add         esp,0FFFFFFF4
 0056D284    fstp        tbyte ptr [esp]
 0056D287    wait
 0056D288    lea         edx,[ebp-38]
 0056D28B    lea         eax,[ebp-28]
 0056D28E    call        SinCos
 0056D293    fild        dword ptr [ebp-18]
 0056D296    fld         tbyte ptr [ebp-38]
 0056D299    fmulp       st(1),st
 0056D29B    call        @TRUNC
 0056D2A0    add         eax,dword ptr [ebp-0C]
 0056D2A3    push        eax
 0056D2A4    mov         eax,dword ptr [ebp+8]
 0056D2A7    push        eax
 0056D2A8    fild        dword ptr [ebp-14]
 0056D2AB    fld         tbyte ptr [ebp-28]
 0056D2AE    fmulp       st(1),st
 0056D2B0    call        @TRUNC
 0056D2B5    mov         ecx,eax
 0056D2B7    add         ecx,dword ptr [ebp-10]
 0056D2BA    mov         edx,edi
 0056D2BC    mov         eax,ebx
 0056D2BE    call        TTeeCanvas3D.Calc3DPoint
 0056D2C3    inc         esi
 0056D2C4    add         edi,8
 0056D2C7    cmp         esi,20
>0056D2CA    jne         0056D26D
 0056D2CC    mov         eax,dword ptr [ebx+10]
 0056D2CF    call        TBrush.GetStyle
 0056D2D4    cmp         al,1
>0056D2D6    je          0056D3C5
 0056D2DC    mov         eax,dword ptr [ebx+0C]
 0056D2DF    call        TPen.GetStyle
 0056D2E4    mov         byte ptr [ebp-39],al
 0056D2E7    mov         dl,5
 0056D2E9    mov         eax,dword ptr [ebx+0C]
 0056D2EC    call        TPen.SetStyle
 0056D2F1    mov         eax,dword ptr [ebx+4]
 0056D2F4    call        TCanvas.GetHandle
 0056D2F9    mov         dword ptr [ebp-40],eax
 0056D2FC    lea         edx,[ebp-10]
 0056D2FF    mov         ecx,dword ptr [ebp+8]
 0056D302    mov         eax,ebx
 0056D304    call        TTeeCanvas3D.Calc3DTPoint
 0056D309    mov         eax,dword ptr [ebp-10]
 0056D30C    mov         dword ptr [ebp-158],eax
 0056D312    mov         eax,dword ptr [ebp-0C]
 0056D315    mov         dword ptr [ebp-154],eax
 0056D31B    mov         eax,dword ptr [ebp-140]
 0056D321    mov         dword ptr [ebp-150],eax
 0056D327    mov         eax,dword ptr [ebp-13C]
 0056D32D    mov         dword ptr [ebp-14C],eax
 0056D333    mov         eax,dword ptr [ebp-138]
 0056D339    mov         dword ptr [ebp-148],eax
 0056D33F    mov         eax,dword ptr [ebp-134]
 0056D345    mov         dword ptr [ebp-144],eax
 0056D34B    push        3
 0056D34D    lea         eax,[ebp-158]
 0056D353    push        eax
 0056D354    mov         eax,dword ptr [ebp-40]
 0056D357    push        eax
 0056D358    call        GDI32.Polygon
 0056D35D    mov         eax,dword ptr [ebp-138]
 0056D363    mov         dword ptr [ebp-150],eax
 0056D369    mov         eax,dword ptr [ebp-134]
 0056D36F    mov         dword ptr [ebp-14C],eax
 0056D375    mov         esi,1E
 0056D37A    lea         edi,[ebp-130]
 0056D380    mov         eax,dword ptr [edi]
 0056D382    mov         dword ptr [ebp-148],eax
 0056D388    mov         eax,dword ptr [edi+4]
 0056D38B    mov         dword ptr [ebp-144],eax
 0056D391    push        3
 0056D393    lea         eax,[ebp-158]
 0056D399    push        eax
 0056D39A    mov         eax,dword ptr [ebp-40]
 0056D39D    push        eax
 0056D39E    call        GDI32.Polygon
 0056D3A3    mov         eax,dword ptr [edi]
 0056D3A5    mov         dword ptr [ebp-150],eax
 0056D3AB    mov         eax,dword ptr [edi+4]
 0056D3AE    mov         dword ptr [ebp-14C],eax
 0056D3B4    add         edi,8
 0056D3B7    dec         esi
>0056D3B8    jne         0056D380
 0056D3BA    mov         dl,byte ptr [ebp-39]
 0056D3BD    mov         eax,dword ptr [ebx+0C]
 0056D3C0    call        TPen.SetStyle
 0056D3C5    mov         eax,dword ptr [ebx+0C]
 0056D3C8    call        TPen.GetStyle
 0056D3CD    cmp         al,5
>0056D3CF    je          0056D40A
 0056D3D1    push        20
 0056D3D3    lea         eax,[ebp-140]
 0056D3D9    push        eax
 0056D3DA    mov         eax,dword ptr [ebx+4]
 0056D3DD    call        TCanvas.GetHandle
 0056D3E2    push        eax
 0056D3E3    call        GDI32.Polyline
>0056D3E8    jmp         0056D40A
 0056D3EA    mov         eax,dword ptr [ebp+0C]
 0056D3ED    inc         eax
 0056D3EE    push        eax
 0056D3EF    mov         eax,dword ptr [ebp+10]
 0056D3F2    inc         eax
 0056D3F3    push        eax
 0056D3F4    mov         eax,dword ptr [ebp-8]
 0056D3F7    push        eax
 0056D3F8    mov         eax,dword ptr [ebp-4]
 0056D3FB    push        eax
 0056D3FC    mov         eax,dword ptr [ebx+4]
 0056D3FF    call        TCanvas.GetHandle
 0056D404    push        eax
 0056D405    call        GDI32.Ellipse
 0056D40A    pop         edi
 0056D40B    pop         esi
 0056D40C    pop         ebx
 0056D40D    mov         esp,ebp
 0056D40F    pop         ebp
 0056D410    ret         0C
*}
end;

//0056D420
procedure TTeeCanvas3D.SetPixel(X:Integer; Y:Integer; Value:TColor);
begin
{*
 0056D420    push        ebp
 0056D421    mov         ebp,esp
 0056D423    push        ebx
 0056D424    push        esi
 0056D425    push        edi
 0056D426    mov         edi,ecx
 0056D428    mov         esi,edx
 0056D42A    mov         ebx,eax
 0056D42C    mov         eax,dword ptr [ebp+8]
 0056D42F    call        ColorToRGB
 0056D434    push        eax
 0056D435    push        edi
 0056D436    push        esi
 0056D437    mov         eax,dword ptr [ebx+4]
 0056D43A    call        TCanvas.GetHandle
 0056D43F    push        eax
 0056D440    call        GDI32.SetPixel
 0056D445    pop         edi
 0056D446    pop         esi
 0056D447    pop         ebx
 0056D448    pop         ebp
 0056D449    ret         4
*}
end;

//0056D44C
procedure TTeeCanvas3D.Arc(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);
begin
{*
 0056D44C    push        ebp
 0056D44D    mov         ebp,esp
 0056D44F    push        ebx
 0056D450    push        esi
 0056D451    push        edi
 0056D452    mov         edi,ecx
 0056D454    mov         esi,edx
 0056D456    mov         ebx,eax
 0056D458    mov         eax,dword ptr [ebp+8]
 0056D45B    push        eax
 0056D45C    mov         eax,dword ptr [ebp+0C]
 0056D45F    push        eax
 0056D460    mov         eax,dword ptr [ebp+10]
 0056D463    push        eax
 0056D464    mov         eax,dword ptr [ebp+14]
 0056D467    push        eax
 0056D468    mov         eax,dword ptr [ebp+18]
 0056D46B    push        eax
 0056D46C    mov         eax,dword ptr [ebp+1C]
 0056D46F    push        eax
 0056D470    push        edi
 0056D471    push        esi
 0056D472    mov         eax,dword ptr [ebx+4]
 0056D475    call        TCanvas.GetHandle
 0056D47A    push        eax
 0056D47B    call        GDI32.Arc
 0056D480    pop         edi
 0056D481    pop         esi
 0056D482    pop         ebx
 0056D483    pop         ebp
 0056D484    ret         18
*}
end;

//0056D488
procedure TTeeCanvas3D.Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);
begin
{*
 0056D488    push        ebp
 0056D489    mov         ebp,esp
 0056D48B    push        ebx
 0056D48C    push        esi
 0056D48D    push        edi
 0056D48E    mov         edi,ecx
 0056D490    mov         esi,edx
 0056D492    mov         ebx,eax
 0056D494    mov         eax,dword ptr [ebp+8]
 0056D497    push        eax
 0056D498    mov         eax,dword ptr [ebp+0C]
 0056D49B    push        eax
 0056D49C    mov         eax,dword ptr [ebp+10]
 0056D49F    push        eax
 0056D4A0    mov         eax,dword ptr [ebp+14]
 0056D4A3    push        eax
 0056D4A4    mov         eax,dword ptr [ebp+18]
 0056D4A7    push        eax
 0056D4A8    mov         eax,dword ptr [ebp+1C]
 0056D4AB    push        eax
 0056D4AC    push        edi
 0056D4AD    push        esi
 0056D4AE    mov         eax,dword ptr [ebx+4]
 0056D4B1    call        TCanvas.GetHandle
 0056D4B6    push        eax
 0056D4B7    call        GDI32.Pie
 0056D4BC    pop         edi
 0056D4BD    pop         esi
 0056D4BE    pop         ebx
 0056D4BF    pop         ebp
 0056D4C0    ret         18
*}
end;

//0056D4C4
procedure Dark(Quantity:Byte);
begin
{*
 0056D4C4    push        ebp
 0056D4C5    mov         ebp,esp
 0056D4C7    push        ebx
 0056D4C8    mov         ebx,eax
 0056D4CA    mov         eax,dword ptr [ebp+8]
 0056D4CD    mov         eax,dword ptr [eax-4]
 0056D4D0    mov         eax,dword ptr [eax+10]
 0056D4D3    call        TBrush.GetStyle
 0056D4D8    test        al,al
>0056D4DA    jne         0056D4FC
 0056D4DC    mov         eax,dword ptr [ebp+8]
 0056D4DF    mov         eax,dword ptr [eax-8]
 0056D4E2    mov         edx,ebx
 0056D4E4    call        ApplyDark
 0056D4E9    mov         edx,eax
 0056D4EB    mov         eax,dword ptr [ebp+8]
 0056D4EE    mov         eax,dword ptr [eax-4]
 0056D4F1    mov         eax,dword ptr [eax+10]
 0056D4F4    call        TBrush.SetColor
 0056D4F9    pop         ebx
 0056D4FA    pop         ebp
 0056D4FB    ret
 0056D4FC    mov         eax,dword ptr [ebp+8]
 0056D4FF    mov         eax,dword ptr [eax-8]
 0056D502    mov         edx,ebx
 0056D504    call        ApplyDark
 0056D509    mov         edx,eax
 0056D50B    mov         eax,dword ptr [ebp+8]
 0056D50E    mov         eax,dword ptr [eax-4]
 0056D511    mov         ecx,dword ptr [eax]
 0056D513    call        dword ptr [ecx+18]
 0056D516    pop         ebx
 0056D517    pop         ebp
 0056D518    ret
*}
end;

//0056D51C
procedure Draw3DPie;
begin
{*
 0056D51C    push        ebp
 0056D51D    mov         ebp,esp
 0056D51F    push        ebx
 0056D520    push        esi
 0056D521    push        edi
 0056D522    mov         eax,dword ptr [ebp+8]
 0056D525    cmp         byte ptr [eax+0C],0
>0056D529    je          0056D537
 0056D52B    mov         eax,dword ptr [ebp+8]
 0056D52E    push        eax
 0056D52F    mov         al,20
 0056D531    call        Dark
 0056D536    pop         ecx
 0056D537    mov         eax,dword ptr [ebp+8]
 0056D53A    cmp         dword ptr [eax-20C],1
>0056D541    jne         0056D597
 0056D543    mov         eax,dword ptr [ebp+8]
 0056D546    mov         eax,dword ptr [eax-210]
 0056D54C    mov         edx,dword ptr [ebp+8]
 0056D54F    cmp         eax,dword ptr [edx-214]
>0056D555    jne         0056D597
 0056D557    mov         eax,dword ptr [ebp+8]
 0056D55A    mov         eax,dword ptr [eax-214]
 0056D560    test        eax,eax
>0056D562    jle         0056D589
 0056D564    mov         edx,dword ptr [ebp+8]
 0056D567    add         edx,0FFFFFCEC
 0056D56D    mov         ecx,dword ptr [ebp+8]
 0056D570    lea         ebx,[ecx-208]
 0056D576    mov         ecx,dword ptr [edx]
 0056D578    mov         dword ptr [ebx],ecx
 0056D57A    mov         ecx,dword ptr [edx+4]
 0056D57D    mov         dword ptr [ebx+4],ecx
 0056D580    add         ebx,8
 0056D583    add         edx,8
 0056D586    dec         eax
>0056D587    jne         0056D576
 0056D589    mov         eax,dword ptr [ebp+8]
 0056D58C    mov         ebx,dword ptr [eax-214]
>0056D592    jmp         0056D620
 0056D597    xor         ebx,ebx
 0056D599    mov         eax,dword ptr [ebp+8]
 0056D59C    mov         edx,dword ptr [eax-20C]
 0056D5A2    mov         eax,dword ptr [ebp+8]
 0056D5A5    mov         eax,dword ptr [eax-210]
 0056D5AB    sub         eax,edx
>0056D5AD    jl          0056D620
 0056D5AF    inc         eax
 0056D5B0    mov         ecx,dword ptr [ebp+8]
 0056D5B3    lea         edx,[ecx+edx*8-31C]
 0056D5BA    inc         ebx
 0056D5BB    mov         ecx,dword ptr [ebp+8]
 0056D5BE    mov         esi,dword ptr [edx]
 0056D5C0    mov         dword ptr [ecx+ebx*8-210],esi
 0056D5C7    mov         esi,dword ptr [edx+4]
 0056D5CA    mov         dword ptr [ecx+ebx*8-20C],esi
 0056D5D1    mov         ecx,dword ptr [ebp+8]
 0056D5D4    mov         ecx,dword ptr [ecx-210]
 0056D5DA    mov         esi,dword ptr [ebp+8]
 0056D5DD    sub         ecx,dword ptr [esi-20C]
 0056D5E3    inc         ecx
 0056D5E4    add         ecx,ebx
 0056D5E6    mov         esi,dword ptr [ebp+8]
 0056D5E9    lea         ecx,[esi+ecx*8-210]
 0056D5F0    mov         esi,dword ptr [ebp+8]
 0056D5F3    mov         esi,dword ptr [esi-214]
 0056D5F9    add         esi,esi
 0056D5FB    mov         edi,dword ptr [ebp+8]
 0056D5FE    sub         esi,dword ptr [edi-210]
 0056D604    add         esi,ebx
 0056D606    mov         edi,dword ptr [ebp+8]
 0056D609    lea         edi,[edi+esi*8-210]
 0056D610    mov         esi,dword ptr [edi]
 0056D612    mov         dword ptr [ecx],esi
 0056D614    mov         esi,dword ptr [edi+4]
 0056D617    mov         dword ptr [ecx+4],esi
 0056D61A    add         edx,8
 0056D61D    dec         eax
>0056D61E    jne         0056D5BA
 0056D620    mov         eax,ebx
 0056D622    add         eax,eax
 0056D624    push        eax
 0056D625    mov         eax,dword ptr [ebp+8]
 0056D628    add         eax,0FFFFFDF8
 0056D62D    push        eax
 0056D62E    mov         eax,dword ptr [ebp+8]
 0056D631    mov         eax,dword ptr [eax-4]
 0056D634    mov         eax,dword ptr [eax+4]
 0056D637    call        TCanvas.GetHandle
 0056D63C    push        eax
 0056D63D    call        GDI32.Polygon
 0056D642    pop         edi
 0056D643    pop         esi
 0056D644    pop         ebx
 0056D645    pop         ebp
 0056D646    ret
*}
end;

//0056D648
procedure TTeeCanvas3D.Pie3D(XCenter:Integer; YCenter:Integer; XRadius:Integer; YRadius:Integer; Z0:Integer; Z1:Integer; const StartAngle:Double; const EndAngle:Double; DarkSides:Boolean; DrawSides:Boolean);
begin
{*
 0056D648    push        ebp
 0056D649    mov         ebp,esp
 0056D64B    add         esp,0FFFFFC9C
 0056D651    push        ebx
 0056D652    push        esi
 0056D653    push        edi
 0056D654    mov         dword ptr [ebp-324],ecx
 0056D65A    mov         dword ptr [ebp-320],edx
 0056D660    mov         dword ptr [ebp-4],eax
 0056D663    fld         qword ptr [ebp+10]
 0056D666    fsub        qword ptr [ebp+18]
 0056D669    fabs
 0056D66B    fmul        dword ptr ds:[56DAD4]
 0056D671    fld         tbyte ptr ds:[56DAD8]
 0056D677    fdivp       st(1),st
 0056D679    fdiv        dword ptr ds:[56DAE4]
 0056D67F    call        @ROUND
 0056D684    mov         edx,eax
 0056D686    mov         eax,1E
 0056D68B    call        0056EDD8
 0056D690    add         eax,2
 0056D693    mov         dword ptr [ebp-214],eax
 0056D699    mov         eax,dword ptr [ebp-324]
 0056D69F    push        eax
 0056D6A0    mov         eax,dword ptr [ebp+20]
 0056D6A3    push        eax
 0056D6A4    lea         edx,[ebp-31C]
 0056D6AA    mov         ecx,dword ptr [ebp-320]
 0056D6B0    mov         eax,dword ptr [ebp-4]
 0056D6B3    call        TTeeCanvas3D.Calc3DPoint
 0056D6B8    fld         qword ptr [ebp+10]
 0056D6BB    fsub        qword ptr [ebp+18]
 0056D6BE    mov         eax,dword ptr [ebp-214]
 0056D6C4    dec         eax
 0056D6C5    mov         dword ptr [ebp-364],eax
 0056D6CB    fild        dword ptr [ebp-364]
 0056D6D1    fdivp       st(1),st
 0056D6D3    fstp        qword ptr [ebp-358]
 0056D6D9    wait
 0056D6DA    fld         qword ptr [ebp+18]
 0056D6DD    fstp        tbyte ptr [ebp-330]
 0056D6E3    wait
 0056D6E4    mov         ebx,dword ptr [ebp-214]
 0056D6EA    test        ebx,ebx
>0056D6EC    jle         0056D7C2
 0056D6F2    mov         dword ptr [ebp-35C],1
 0056D6FC    lea         esi,[ebp-314]
 0056D702    mov         ax,word ptr [ebp-328]
 0056D709    push        eax
 0056D70A    push        dword ptr [ebp-32C]
 0056D710    push        dword ptr [ebp-330]
 0056D716    lea         edx,[ebp-350]
 0056D71C    lea         eax,[ebp-340]
 0056D722    call        SinCos
 0056D727    fild        dword ptr [ebp+2C]
 0056D72A    fld         tbyte ptr [ebp-350]
 0056D730    fmulp       st(1),st
 0056D732    call        @ROUND
 0056D737    mov         edi,eax
 0056D739    add         edi,dword ptr [ebp-320]
 0056D73F    fild        dword ptr [ebp+28]
 0056D742    fld         tbyte ptr [ebp-340]
 0056D748    fmulp       st(1),st
 0056D74A    call        @ROUND
 0056D74F    mov         edx,dword ptr [ebp-324]
 0056D755    sub         edx,eax
 0056D757    mov         dword ptr [ebp-360],edx
 0056D75D    mov         eax,dword ptr [ebp-360]
 0056D763    push        eax
 0056D764    mov         eax,dword ptr [ebp+20]
 0056D767    push        eax
 0056D768    mov         edx,esi
 0056D76A    mov         ecx,edi
 0056D76C    mov         eax,dword ptr [ebp-4]
 0056D76F    call        TTeeCanvas3D.Calc3DPoint
 0056D774    mov         eax,dword ptr [ebp-360]
 0056D77A    push        eax
 0056D77B    mov         eax,dword ptr [ebp+24]
 0056D77E    push        eax
 0056D77F    mov         eax,dword ptr [ebp-214]
 0056D785    add         eax,eax
 0056D787    inc         eax
 0056D788    sub         eax,dword ptr [ebp-35C]
 0056D78E    lea         edx,[ebp+eax*8-210]
 0056D795    mov         ecx,edi
 0056D797    mov         eax,dword ptr [ebp-4]
 0056D79A    call        TTeeCanvas3D.Calc3DPoint
 0056D79F    fld         tbyte ptr [ebp-330]
 0056D7A5    fadd        qword ptr [ebp-358]
 0056D7AB    fstp        tbyte ptr [ebp-330]
 0056D7B1    wait
 0056D7B2    inc         dword ptr [ebp-35C]
 0056D7B8    add         esi,8
 0056D7BB    dec         ebx
>0056D7BC    jne         0056D702
 0056D7C2    mov         eax,dword ptr [ebp-4]
 0056D7C5    mov         eax,dword ptr [eax+10]
 0056D7C8    call        TBrush.GetStyle
 0056D7CD    test        al,al
>0056D7CF    jne         0056D7E1
 0056D7D1    mov         eax,dword ptr [ebp-4]
 0056D7D4    mov         eax,dword ptr [eax+10]
 0056D7D7    call        TBrush.GetColor
 0056D7DC    mov         dword ptr [ebp-8],eax
>0056D7DF    jmp         0056D7EB
 0056D7E1    mov         eax,dword ptr [ebp-4]
 0056D7E4    mov         edx,dword ptr [eax]
 0056D7E6    call        dword ptr [edx]
 0056D7E8    mov         dword ptr [ebp-8],eax
 0056D7EB    cmp         byte ptr [ebp+8],0
>0056D7EF    je          0056D94E
 0056D7F5    mov         eax,dword ptr [ebp-214]
 0056D7FB    mov         eax,dword ptr [ebp+eax*8-31C]
 0056D802    cmp         eax,dword ptr [ebp-320]
>0056D808    jge         0056D8A8
 0056D80E    mov         eax,dword ptr [ebp-4]
 0056D811    mov         edx,dword ptr [ebp-31C]
 0056D817    mov         dword ptr [eax+0C0],edx
 0056D81D    mov         edx,dword ptr [ebp-318]
 0056D823    mov         dword ptr [eax+0C4],edx
 0056D829    mov         eax,dword ptr [ebp-4]
 0056D82C    mov         edx,dword ptr [ebp-214]
 0056D832    mov         ecx,dword ptr [ebp+edx*8-31C]
 0056D839    mov         dword ptr [eax+0C8],ecx
 0056D83F    mov         ecx,dword ptr [ebp+edx*8-318]
 0056D846    mov         dword ptr [eax+0CC],ecx
 0056D84C    mov         eax,dword ptr [ebp-4]
 0056D84F    mov         edx,dword ptr [ebp-214]
 0056D855    mov         ecx,dword ptr [ebp+edx*8-208]
 0056D85C    mov         dword ptr [eax+0D0],ecx
 0056D862    mov         ecx,dword ptr [ebp+edx*8-204]
 0056D869    mov         dword ptr [eax+0D4],ecx
 0056D86F    mov         eax,dword ptr [ebp-324]
 0056D875    push        eax
 0056D876    mov         eax,dword ptr [ebp+24]
 0056D879    push        eax
 0056D87A    mov         eax,dword ptr [ebp-4]
 0056D87D    lea         edx,[eax+0D8]
 0056D883    mov         ecx,dword ptr [ebp-320]
 0056D889    mov         eax,dword ptr [ebp-4]
 0056D88C    call        TTeeCanvas3D.Calc3DPoint
 0056D891    cmp         byte ptr [ebp+0C],0
>0056D895    je          0056D8A0
 0056D897    push        ebp
 0056D898    mov         al,20
 0056D89A    call        Dark
 0056D89F    pop         ecx
 0056D8A0    mov         eax,dword ptr [ebp-4]
 0056D8A3    call        TTeeCanvas3D.PolygonFour
 0056D8A8    mov         eax,dword ptr [ebp-314]
 0056D8AE    cmp         eax,dword ptr [ebp-320]
>0056D8B4    jle         0056D94E
 0056D8BA    mov         eax,dword ptr [ebp-4]
 0056D8BD    mov         edx,dword ptr [ebp-31C]
 0056D8C3    mov         dword ptr [eax+0C0],edx
 0056D8C9    mov         edx,dword ptr [ebp-318]
 0056D8CF    mov         dword ptr [eax+0C4],edx
 0056D8D5    mov         eax,dword ptr [ebp-4]
 0056D8D8    mov         edx,dword ptr [ebp-314]
 0056D8DE    mov         dword ptr [eax+0C8],edx
 0056D8E4    mov         edx,dword ptr [ebp-310]
 0056D8EA    mov         dword ptr [eax+0CC],edx
 0056D8F0    mov         eax,dword ptr [ebp-4]
 0056D8F3    mov         edx,dword ptr [ebp-214]
 0056D8F9    add         edx,edx
 0056D8FB    mov         ecx,dword ptr [ebp+edx*8-210]
 0056D902    mov         dword ptr [eax+0D0],ecx
 0056D908    mov         ecx,dword ptr [ebp+edx*8-20C]
 0056D90F    mov         dword ptr [eax+0D4],ecx
 0056D915    mov         eax,dword ptr [ebp-324]
 0056D91B    push        eax
 0056D91C    mov         eax,dword ptr [ebp+24]
 0056D91F    push        eax
 0056D920    mov         eax,dword ptr [ebp-4]
 0056D923    lea         edx,[eax+0D8]
 0056D929    mov         ecx,dword ptr [ebp-320]
 0056D92F    mov         eax,dword ptr [ebp-4]
 0056D932    call        TTeeCanvas3D.Calc3DPoint
 0056D937    cmp         byte ptr [ebp+0C],0
>0056D93B    je          0056D946
 0056D93D    push        ebp
 0056D93E    mov         al,20
 0056D940    call        Dark
 0056D945    pop         ecx
 0056D946    mov         eax,dword ptr [ebp-4]
 0056D949    call        TTeeCanvas3D.PolygonFour
 0056D94E    mov         eax,dword ptr [ebp-4]
 0056D951    mov         eax,dword ptr [eax+10]
 0056D954    call        TBrush.GetStyle
 0056D959    test        al,al
>0056D95B    jne         0056D96D
 0056D95D    mov         eax,dword ptr [ebp-4]
 0056D960    mov         eax,dword ptr [eax+10]
 0056D963    mov         edx,dword ptr [ebp-8]
 0056D966    call        TBrush.SetColor
>0056D96B    jmp         0056D978
 0056D96D    mov         edx,dword ptr [ebp-8]
 0056D970    mov         eax,dword ptr [ebp-4]
 0056D973    mov         ecx,dword ptr [eax]
 0056D975    call        dword ptr [ecx+18]
 0056D978    mov         eax,dword ptr [ebp-214]
 0056D97E    inc         eax
 0056D97F    push        eax
 0056D980    lea         eax,[ebp-31C]
 0056D986    push        eax
 0056D987    mov         eax,dword ptr [ebp-4]
 0056D98A    mov         eax,dword ptr [eax+4]
 0056D98D    call        TCanvas.GetHandle
 0056D992    push        eax
 0056D993    call        GDI32.Polygon
 0056D998    xor         edx,edx
 0056D99A    xor         eax,eax
 0056D99C    mov         dword ptr [ebp-20C],eax
 0056D9A2    xor         eax,eax
 0056D9A4    mov         dword ptr [ebp-210],eax
 0056D9AA    mov         ebx,dword ptr [ebp-214]
 0056D9B0    sub         ebx,2
>0056D9B3    jl          0056DAC8
 0056D9B9    inc         ebx
 0056D9BA    mov         dword ptr [ebp-35C],2
 0056D9C4    lea         eax,[ebp-30C]
 0056D9CA    mov         ecx,dword ptr [eax]
 0056D9CC    cmp         ecx,dword ptr [eax-8]
>0056D9CF    jle         0056DAB8
 0056D9D5    mov         eax,dword ptr [ebp-35C]
 0056D9DB    dec         eax
 0056D9DC    mov         dword ptr [ebp-20C],eax
 0056D9E2    mov         cl,1
 0056D9E4    mov         esi,dword ptr [ebp-35C]
 0056D9EA    inc         esi
 0056D9EB    mov         edi,dword ptr [ebp-214]
 0056D9F1    dec         edi
 0056D9F2    sub         edi,esi
>0056D9F4    jl          0056DA16
 0056D9F6    inc         edi
 0056D9F7    lea         eax,[ebp+esi*8-314]
 0056D9FE    mov         ebx,dword ptr [eax]
 0056DA00    cmp         ebx,dword ptr [eax-8]
>0056DA03    jge         0056DA0F
 0056DA05    mov         dword ptr [ebp-210],esi
 0056DA0B    mov         dl,1
>0056DA0D    jmp         0056DA16
 0056DA0F    inc         esi
 0056DA10    add         eax,8
 0056DA13    dec         edi
>0056DA14    jne         0056D9FE
 0056DA16    test        dl,dl
>0056DA18    jne         0056DA44
 0056DA1A    mov         eax,dword ptr [ebp-214]
 0056DA20    mov         eax,dword ptr [ebp+eax*8-31C]
 0056DA27    mov         ebx,dword ptr [ebp-214]
 0056DA2D    cmp         eax,dword ptr [ebp+ebx*8-324]
>0056DA34    jl          0056DA44
 0056DA36    mov         eax,dword ptr [ebp-214]
 0056DA3C    mov         dword ptr [ebp-210],eax
 0056DA42    mov         dl,1
 0056DA44    test        dl,cl
>0056DA46    je          0056DA4F
 0056DA48    push        ebp
 0056DA49    call        Draw3DPie
 0056DA4E    pop         ecx
 0056DA4F    mov         eax,dword ptr [ebp-210]
 0056DA55    cmp         eax,dword ptr [ebp-214]
>0056DA5B    je          0056DAC8
 0056DA5D    mov         eax,dword ptr [ebp-214]
 0056DA63    mov         eax,dword ptr [ebp+eax*8-31C]
 0056DA6A    mov         edx,dword ptr [ebp-214]
 0056DA70    cmp         eax,dword ptr [ebp+edx*8-324]
>0056DA77    jle         0056DAC8
 0056DA79    mov         eax,dword ptr [ebp-214]
 0056DA7F    mov         dword ptr [ebp-210],eax
 0056DA85    mov         esi,dword ptr [ebp-214]
 0056DA8B    dec         esi
>0056DA8C    jmp         0056DA94
 0056DA8E    dec         esi
 0056DA8F    cmp         esi,1
>0056DA92    je          0056DAA4
 0056DA94    mov         eax,dword ptr [ebp+esi*8-31C]
 0056DA9B    cmp         eax,dword ptr [ebp+esi*8-324]
>0056DAA2    jg          0056DA8E
 0056DAA4    cmp         esi,1
>0056DAA7    jle         0056DAC8
 0056DAA9    mov         dword ptr [ebp-20C],esi
 0056DAAF    push        ebp
 0056DAB0    call        Draw3DPie
 0056DAB5    pop         ecx
>0056DAB6    jmp         0056DAC8
 0056DAB8    inc         dword ptr [ebp-35C]
 0056DABE    add         eax,8
 0056DAC1    dec         ebx
>0056DAC2    jne         0056D9CA
 0056DAC8    pop         edi
 0056DAC9    pop         esi
 0056DACA    pop         ebx
 0056DACB    mov         esp,ebp
 0056DACD    pop         ebp
 0056DACE    ret         28
*}
end;

//0056DAE8
procedure TTeeCanvas3D.Plane3D(const A:TPoint; const B:TPoint; Z0:Integer; Z1:Integer);
begin
{*
 0056DAE8    push        ebp
 0056DAE9    mov         ebp,esp
 0056DAEB    push        ebx
 0056DAEC    push        esi
 0056DAED    push        edi
 0056DAEE    mov         edi,ecx
 0056DAF0    mov         esi,edx
 0056DAF2    mov         ebx,eax
 0056DAF4    mov         eax,dword ptr [esi+4]
 0056DAF7    push        eax
 0056DAF8    mov         eax,dword ptr [ebp+0C]
 0056DAFB    push        eax
 0056DAFC    mov         ecx,dword ptr [esi]
 0056DAFE    lea         edx,[ebx+0C0]
 0056DB04    mov         eax,ebx
 0056DB06    call        TTeeCanvas3D.Calc3DPoint
 0056DB0B    mov         eax,dword ptr [edi+4]
 0056DB0E    push        eax
 0056DB0F    mov         eax,dword ptr [ebp+0C]
 0056DB12    push        eax
 0056DB13    mov         ecx,dword ptr [edi]
 0056DB15    lea         edx,[ebx+0C8]
 0056DB1B    mov         eax,ebx
 0056DB1D    call        TTeeCanvas3D.Calc3DPoint
 0056DB22    mov         eax,dword ptr [edi+4]
 0056DB25    push        eax
 0056DB26    mov         eax,dword ptr [ebp+8]
 0056DB29    push        eax
 0056DB2A    mov         ecx,dword ptr [edi]
 0056DB2C    lea         edx,[ebx+0D0]
 0056DB32    mov         eax,ebx
 0056DB34    call        TTeeCanvas3D.Calc3DPoint
 0056DB39    mov         eax,dword ptr [esi+4]
 0056DB3C    push        eax
 0056DB3D    mov         eax,dword ptr [ebp+8]
 0056DB40    push        eax
 0056DB41    mov         ecx,dword ptr [esi]
 0056DB43    lea         edx,[ebx+0D8]
 0056DB49    mov         eax,ebx
 0056DB4B    call        TTeeCanvas3D.Calc3DPoint
 0056DB50    mov         eax,ebx
 0056DB52    call        TTeeCanvas3D.PolygonFour
 0056DB57    pop         edi
 0056DB58    pop         esi
 0056DB59    pop         ebx
 0056DB5A    pop         ebp
 0056DB5B    ret         8
*}
end;

//0056DB60
procedure Dark(Quantity:Byte);
begin
{*
 0056DB60    push        ebp
 0056DB61    mov         ebp,esp
 0056DB63    push        ebx
 0056DB64    mov         ebx,eax
 0056DB66    mov         eax,dword ptr [ebp+8]
 0056DB69    mov         eax,dword ptr [eax-4]
 0056DB6C    mov         eax,dword ptr [eax+10]
 0056DB6F    call        TBrush.GetStyle
 0056DB74    test        al,al
>0056DB76    jne         0056DB98
 0056DB78    mov         eax,dword ptr [ebp+8]
 0056DB7B    mov         eax,dword ptr [eax-8]
 0056DB7E    mov         edx,ebx
 0056DB80    call        ApplyDark
 0056DB85    mov         edx,eax
 0056DB87    mov         eax,dword ptr [ebp+8]
 0056DB8A    mov         eax,dword ptr [eax-4]
 0056DB8D    mov         eax,dword ptr [eax+10]
 0056DB90    call        TBrush.SetColor
 0056DB95    pop         ebx
 0056DB96    pop         ebp
 0056DB97    ret
 0056DB98    mov         eax,dword ptr [ebp+8]
 0056DB9B    mov         eax,dword ptr [eax-8]
 0056DB9E    mov         edx,ebx
 0056DBA0    call        ApplyDark
 0056DBA5    mov         edx,eax
 0056DBA7    mov         eax,dword ptr [ebp+8]
 0056DBAA    mov         eax,dword ptr [eax-4]
 0056DBAD    mov         ecx,dword ptr [eax]
 0056DBAF    call        dword ptr [ecx+18]
 0056DBB2    pop         ebx
 0056DBB3    pop         ebp
 0056DBB4    ret
*}
end;

//0056DBB8
procedure TTeeCanvas3D.InternalCylinder(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; Dark3D:Boolean; ConePercent:Integer);
begin
{*
 0056DBB8    push        ebp
 0056DBB9    mov         ebp,esp
 0056DBBB    add         esp,0FFFFFE6C
 0056DBC1    push        ebx
 0056DBC2    push        esi
 0056DBC3    push        edi
 0056DBC4    mov         dword ptr [ebp-0C],ecx
 0056DBC7    mov         ebx,edx
 0056DBC9    mov         dword ptr [ebp-4],eax
 0056DBCC    mov         esi,dword ptr [ebp+10]
 0056DBCF    mov         edi,dword ptr [ebp+14]
 0056DBD2    cmp         dword ptr [ebp+8],0
>0056DBD6    jne         0056DBE0
 0056DBD8    mov         eax,[006E3964]
 0056DBDD    mov         dword ptr [ebp+8],eax
 0056DBE0    mov         eax,dword ptr [ebp-4]
 0056DBE3    mov         eax,dword ptr [eax+10]
 0056DBE6    call        TBrush.GetStyle
 0056DBEB    test        al,al
>0056DBED    jne         0056DBFF
 0056DBEF    mov         eax,dword ptr [ebp-4]
 0056DBF2    mov         eax,dword ptr [eax+10]
 0056DBF5    call        TBrush.GetColor
 0056DBFA    mov         dword ptr [ebp-8],eax
>0056DBFD    jmp         0056DC09
 0056DBFF    mov         eax,dword ptr [ebp-4]
 0056DC02    mov         edx,dword ptr [eax]
 0056DC04    call        dword ptr [edx]
 0056DC06    mov         dword ptr [ebp-8],eax
 0056DC09    mov         eax,esi
 0056DC0B    sub         eax,edi
 0056DC0D    sar         eax,1
>0056DC0F    jns         0056DC14
 0056DC11    adc         eax,0
 0056DC14    mov         dword ptr [ebp-1C],eax
 0056DC17    add         edi,esi
 0056DC19    sar         edi,1
>0056DC1B    jns         0056DC20
 0056DC1D    adc         edi,0
 0056DC20    mov         dword ptr [ebp-18],edi
 0056DC23    test        bl,bl
>0056DC25    je          0056DF03
 0056DC2B    mov         edi,dword ptr [ebp+1C]
 0056DC2E    sub         edi,dword ptr [ebp-0C]
 0056DC31    shr         edi,1
 0056DC33    mov         eax,dword ptr [ebp+1C]
 0056DC36    add         eax,dword ptr [ebp-0C]
 0056DC39    shr         eax,1
 0056DC3B    mov         dword ptr [ebp-14],eax
 0056DC3E    mov         eax,dword ptr [ebp+18]
 0056DC41    sub         eax,dword ptr [ebp+20]
 0056DC44    cdq
 0056DC45    xor         eax,edx
 0056DC47    sub         eax,edx
 0056DC49    mov         dword ptr [ebp-10],eax
 0056DC4C    mov         ebx,1
 0056DC51    lea         esi,[ebp-108]
 0056DC57    mov         eax,ebx
 0056DC59    sub         eax,4
 0056DC5C    mov         dword ptr [ebp-18C],eax
 0056DC62    fild        dword ptr [ebp-18C]
 0056DC68    fld         tbyte ptr ds:[56E248]
 0056DC6E    fmulp       st(1),st
 0056DC70    add         esp,0FFFFFFF4
 0056DC73    fstp        tbyte ptr [esp]
 0056DC76    wait
 0056DC77    lea         edx,[ebp-40]
 0056DC7A    lea         eax,[ebp-30]
 0056DC7D    call        SinCos
 0056DC82    mov         dword ptr [ebp-18C],edi
 0056DC88    fild        dword ptr [ebp-18C]
 0056DC8E    fld         tbyte ptr [ebp-30]
 0056DC91    fmulp       st(1),st
 0056DC93    call        @ROUND
 0056DC98    add         eax,dword ptr [ebp-14]
 0056DC9B    mov         dword ptr [esi],eax
 0056DC9D    mov         eax,dword ptr [ebp+20]
 0056DCA0    cmp         eax,dword ptr [ebp+18]
>0056DCA3    jge         0056DCAD
 0056DCA5    mov         eax,dword ptr [ebp+20]
 0056DCA8    mov         dword ptr [esi+4],eax
>0056DCAB    jmp         0056DCB3
 0056DCAD    mov         eax,dword ptr [ebp+18]
 0056DCB0    mov         dword ptr [esi+4],eax
 0056DCB3    fild        dword ptr [ebp-1C]
 0056DCB6    fld         tbyte ptr [ebp-40]
 0056DCB9    fmulp       st(1),st
 0056DCBB    call        @ROUND
 0056DCC0    mov         edx,dword ptr [ebp-18]
 0056DCC3    sub         edx,eax
 0056DCC5    mov         dword ptr [esi+8],edx
 0056DCC8    inc         ebx
 0056DCC9    add         esi,0C
 0056DCCC    cmp         ebx,11
>0056DCCF    jne         0056DC57
 0056DCD1    imul        edi,dword ptr [ebp+8]
 0056DCD5    mov         dword ptr [ebp-18C],edi
 0056DCDB    fild        dword ptr [ebp-18C]
 0056DCE1    fdiv        dword ptr ds:[56E254]
 0056DCE7    call        @ROUND
 0056DCEC    mov         edi,eax
 0056DCEE    mov         eax,dword ptr [ebp-1C]
 0056DCF1    imul        dword ptr [ebp+8]
 0056DCF4    mov         dword ptr [ebp-18C],eax
 0056DCFA    fild        dword ptr [ebp-18C]
 0056DD00    fdiv        dword ptr ds:[56E254]
 0056DD06    call        @ROUND
 0056DD0B    mov         dword ptr [ebp-1C],eax
 0056DD0E    mov         eax,dword ptr [ebp-104]
 0056DD14    add         eax,dword ptr [ebp-10]
 0056DD17    push        eax
 0056DD18    mov         eax,dword ptr [ebp-100]
 0056DD1E    push        eax
 0056DD1F    lea         edx,[ebp-180]
 0056DD25    mov         ecx,dword ptr [ebp-108]
 0056DD2B    mov         eax,dword ptr [ebp-4]
 0056DD2E    call        TTeeCanvas3D.Calc3DPoint
 0056DD33    push        0BFFF
 0056DD38    push        96CBE3F9
 0056DD3D    push        990E91A8
 0056DD42    lea         edx,[ebp-40]
 0056DD45    lea         eax,[ebp-30]
 0056DD48    call        SinCos
 0056DD4D    mov         dword ptr [ebp-18C],edi
 0056DD53    fild        dword ptr [ebp-18C]
 0056DD59    fld         tbyte ptr [ebp-30]
 0056DD5C    fmulp       st(1),st
 0056DD5E    call        @ROUND
 0056DD63    add         eax,dword ptr [ebp-14]
 0056DD66    mov         dword ptr [ebp-108],eax
 0056DD6C    fild        dword ptr [ebp-1C]
 0056DD6F    fld         tbyte ptr [ebp-40]
 0056DD72    fmulp       st(1),st
 0056DD74    call        @ROUND
 0056DD79    mov         edx,dword ptr [ebp-18]
 0056DD7C    sub         edx,eax
 0056DD7E    mov         dword ptr [ebp-100],edx
 0056DD84    lea         ecx,[ebp-194]
 0056DD8A    lea         edx,[ebp-108]
 0056DD90    mov         eax,dword ptr [ebp-4]
 0056DD93    call        TTeeCanvas3D.Calc3DTPoint3D
 0056DD98    mov         eax,dword ptr [ebp-194]
 0056DD9E    mov         dword ptr [ebp-188],eax
 0056DDA4    mov         eax,dword ptr [ebp-190]
 0056DDAA    mov         dword ptr [ebp-184],eax
 0056DDB0    xor         eax,eax
 0056DDB2    mov         dword ptr [ebp-20],eax
 0056DDB5    mov         ebx,2
 0056DDBA    lea         esi,[ebp-0FC]
 0056DDC0    mov         eax,esi
 0056DDC2    mov         dword ptr [ebp-44],eax
 0056DDC5    mov         eax,dword ptr [ebp-44]
 0056DDC8    mov         eax,dword ptr [eax+4]
 0056DDCB    add         eax,dword ptr [ebp-10]
 0056DDCE    push        eax
 0056DDCF    mov         eax,dword ptr [ebp-44]
 0056DDD2    mov         eax,dword ptr [eax+8]
 0056DDD5    push        eax
 0056DDD6    mov         eax,dword ptr [ebp-44]
 0056DDD9    mov         ecx,dword ptr [eax]
 0056DDDB    lea         edx,[ebp-178]
 0056DDE1    mov         eax,dword ptr [ebp-4]
 0056DDE4    call        TTeeCanvas3D.Calc3DPoint
 0056DDE9    mov         eax,ebx
 0056DDEB    sub         eax,4
 0056DDEE    mov         dword ptr [ebp-18C],eax
 0056DDF4    fild        dword ptr [ebp-18C]
 0056DDFA    fld         tbyte ptr ds:[56E248]
 0056DE00    fmulp       st(1),st
 0056DE02    add         esp,0FFFFFFF4
 0056DE05    fstp        tbyte ptr [esp]
 0056DE08    wait
 0056DE09    lea         edx,[ebp-40]
 0056DE0C    lea         eax,[ebp-30]
 0056DE0F    call        SinCos
 0056DE14    mov         dword ptr [ebp-18C],edi
 0056DE1A    fild        dword ptr [ebp-18C]
 0056DE20    fld         tbyte ptr [ebp-30]
 0056DE23    fmulp       st(1),st
 0056DE25    call        @ROUND
 0056DE2A    add         eax,dword ptr [ebp-14]
 0056DE2D    mov         edx,dword ptr [ebp-44]
 0056DE30    mov         dword ptr [edx],eax
 0056DE32    fild        dword ptr [ebp-1C]
 0056DE35    fld         tbyte ptr [ebp-40]
 0056DE38    fmulp       st(1),st
 0056DE3A    call        @ROUND
 0056DE3F    mov         edx,dword ptr [ebp-18]
 0056DE42    sub         edx,eax
 0056DE44    mov         eax,dword ptr [ebp-44]
 0056DE47    mov         dword ptr [eax+8],edx
 0056DE4A    lea         ecx,[ebp-194]
 0056DE50    mov         edx,esi
 0056DE52    mov         eax,dword ptr [ebp-4]
 0056DE55    call        TTeeCanvas3D.Calc3DTPoint3D
 0056DE5A    mov         eax,dword ptr [ebp-194]
 0056DE60    mov         dword ptr [ebp-170],eax
 0056DE66    mov         eax,dword ptr [ebp-190]
 0056DE6C    mov         dword ptr [ebp-16C],eax
 0056DE72    mov         eax,dword ptr [ebp-188]
 0056DE78    sub         eax,dword ptr [ebp-178]
 0056DE7E    add         eax,dword ptr [ebp-180]
 0056DE84    sub         eax,dword ptr [ebp-170]
 0056DE8A    sets        al
 0056DE8D    test        al,al
>0056DE8F    je          0056DEBE
 0056DE91    cmp         byte ptr [ebp+0C],0
>0056DE95    je          0056DEA4
 0056DE97    push        ebp
 0056DE98    mov         al,byte ptr [ebp-20]
 0056DE9B    shl         eax,4
 0056DE9E    call        Dark
 0056DEA3    pop         ecx
 0056DEA4    push        4
 0056DEA6    lea         eax,[ebp-188]
 0056DEAC    push        eax
 0056DEAD    mov         eax,dword ptr [ebp-4]
 0056DEB0    mov         eax,dword ptr [eax+4]
 0056DEB3    call        TCanvas.GetHandle
 0056DEB8    push        eax
 0056DEB9    call        GDI32.Polygon
 0056DEBE    mov         eax,dword ptr [ebp-170]
 0056DEC4    mov         dword ptr [ebp-188],eax
 0056DECA    mov         eax,dword ptr [ebp-16C]
 0056DED0    mov         dword ptr [ebp-184],eax
 0056DED6    mov         eax,dword ptr [ebp-178]
 0056DEDC    mov         dword ptr [ebp-180],eax
 0056DEE2    mov         eax,dword ptr [ebp-174]
 0056DEE8    mov         dword ptr [ebp-17C],eax
 0056DEEE    inc         dword ptr [ebp-20]
 0056DEF1    inc         ebx
 0056DEF2    add         esi,0C
 0056DEF5    cmp         ebx,11
>0056DEF8    jne         0056DDC0
>0056DEFE    jmp         0056E1D6
 0056DF03    mov         edi,dword ptr [ebp+18]
 0056DF06    sub         edi,dword ptr [ebp+20]
 0056DF09    shr         edi,1
 0056DF0B    mov         eax,dword ptr [ebp+18]
 0056DF0E    add         eax,dword ptr [ebp+20]
 0056DF11    shr         eax,1
 0056DF13    mov         dword ptr [ebp-14],eax
 0056DF16    mov         ebx,1
 0056DF1B    lea         esi,[ebp-108]
 0056DF21    mov         eax,ebx
 0056DF23    sub         eax,5
 0056DF26    mov         dword ptr [ebp-18C],eax
 0056DF2C    fild        dword ptr [ebp-18C]
 0056DF32    fld         tbyte ptr ds:[56E248]
 0056DF38    fmulp       st(1),st
 0056DF3A    add         esp,0FFFFFFF4
 0056DF3D    fstp        tbyte ptr [esp]
 0056DF40    wait
 0056DF41    lea         edx,[ebp-40]
 0056DF44    lea         eax,[ebp-30]
 0056DF47    call        SinCos
 0056DF4C    mov         eax,dword ptr [ebp-0C]
 0056DF4F    cmp         eax,dword ptr [ebp+1C]
>0056DF52    jge         0056DF5B
 0056DF54    mov         eax,dword ptr [ebp+1C]
 0056DF57    mov         dword ptr [esi],eax
>0056DF59    jmp         0056DF60
 0056DF5B    mov         eax,dword ptr [ebp-0C]
 0056DF5E    mov         dword ptr [esi],eax
 0056DF60    mov         dword ptr [ebp-18C],edi
 0056DF66    fild        dword ptr [ebp-18C]
 0056DF6C    fld         tbyte ptr [ebp-30]
 0056DF6F    fmulp       st(1),st
 0056DF71    call        @ROUND
 0056DF76    add         eax,dword ptr [ebp-14]
 0056DF79    mov         dword ptr [esi+4],eax
 0056DF7C    fild        dword ptr [ebp-1C]
 0056DF7F    fld         tbyte ptr [ebp-40]
 0056DF82    fmulp       st(1),st
 0056DF84    call        @ROUND
 0056DF89    mov         edx,dword ptr [ebp-18]
 0056DF8C    sub         edx,eax
 0056DF8E    mov         dword ptr [esi+8],edx
 0056DF91    inc         ebx
 0056DF92    add         esi,0C
 0056DF95    cmp         ebx,11
>0056DF98    jne         0056DF21
 0056DF9A    imul        edi,dword ptr [ebp+8]
 0056DF9E    mov         dword ptr [ebp-18C],edi
 0056DFA4    fild        dword ptr [ebp-18C]
 0056DFAA    fdiv        dword ptr ds:[56E254]
 0056DFB0    call        @ROUND
 0056DFB5    mov         edi,eax
 0056DFB7    mov         eax,dword ptr [ebp-1C]
 0056DFBA    imul        dword ptr [ebp+8]
 0056DFBD    mov         dword ptr [ebp-18C],eax
 0056DFC3    fild        dword ptr [ebp-18C]
 0056DFC9    fdiv        dword ptr ds:[56E254]
 0056DFCF    call        @ROUND
 0056DFD4    mov         dword ptr [ebp-1C],eax
 0056DFD7    mov         eax,dword ptr [ebp+1C]
 0056DFDA    sub         eax,dword ptr [ebp-0C]
 0056DFDD    cdq
 0056DFDE    xor         eax,edx
 0056DFE0    sub         eax,edx
 0056DFE2    mov         dword ptr [ebp-10],eax
 0056DFE5    mov         eax,dword ptr [ebp-104]
 0056DFEB    push        eax
 0056DFEC    mov         eax,dword ptr [ebp-100]
 0056DFF2    push        eax
 0056DFF3    mov         ecx,dword ptr [ebp-108]
 0056DFF9    sub         ecx,dword ptr [ebp-10]
 0056DFFC    lea         edx,[ebp-180]
 0056E002    mov         eax,dword ptr [ebp-4]
 0056E005    call        TTeeCanvas3D.Calc3DPoint
 0056E00A    push        0BFFF
 0056E00F    push        0C90FDAA2
 0056E014    push        2168C235
 0056E019    lea         edx,[ebp-40]
 0056E01C    lea         eax,[ebp-30]
 0056E01F    call        SinCos
 0056E024    mov         dword ptr [ebp-18C],edi
 0056E02A    fild        dword ptr [ebp-18C]
 0056E030    fld         tbyte ptr [ebp-30]
 0056E033    fmulp       st(1),st
 0056E035    call        @ROUND
 0056E03A    add         eax,dword ptr [ebp-14]
 0056E03D    mov         dword ptr [ebp-104],eax
 0056E043    fild        dword ptr [ebp-1C]
 0056E046    fld         tbyte ptr [ebp-40]
 0056E049    fmulp       st(1),st
 0056E04B    call        @ROUND
 0056E050    mov         edx,dword ptr [ebp-18]
 0056E053    sub         edx,eax
 0056E055    mov         dword ptr [ebp-100],edx
 0056E05B    lea         ecx,[ebp-194]
 0056E061    lea         edx,[ebp-108]
 0056E067    mov         eax,dword ptr [ebp-4]
 0056E06A    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E06F    mov         eax,dword ptr [ebp-194]
 0056E075    mov         dword ptr [ebp-188],eax
 0056E07B    mov         eax,dword ptr [ebp-190]
 0056E081    mov         dword ptr [ebp-184],eax
 0056E087    xor         eax,eax
 0056E089    mov         dword ptr [ebp-20],eax
 0056E08C    mov         ebx,2
 0056E091    lea         esi,[ebp-0FC]
 0056E097    mov         eax,esi
 0056E099    mov         dword ptr [ebp-48],eax
 0056E09C    mov         eax,dword ptr [ebp-48]
 0056E09F    mov         eax,dword ptr [eax+4]
 0056E0A2    push        eax
 0056E0A3    mov         eax,dword ptr [ebp-48]
 0056E0A6    mov         eax,dword ptr [eax+8]
 0056E0A9    push        eax
 0056E0AA    mov         eax,dword ptr [ebp-48]
 0056E0AD    mov         ecx,dword ptr [eax]
 0056E0AF    sub         ecx,dword ptr [ebp-10]
 0056E0B2    lea         edx,[ebp-178]
 0056E0B8    mov         eax,dword ptr [ebp-4]
 0056E0BB    call        TTeeCanvas3D.Calc3DPoint
 0056E0C0    mov         eax,ebx
 0056E0C2    sub         eax,5
 0056E0C5    mov         dword ptr [ebp-18C],eax
 0056E0CB    fild        dword ptr [ebp-18C]
 0056E0D1    fld         tbyte ptr ds:[56E248]
 0056E0D7    fmulp       st(1),st
 0056E0D9    add         esp,0FFFFFFF4
 0056E0DC    fstp        tbyte ptr [esp]
 0056E0DF    wait
 0056E0E0    lea         edx,[ebp-40]
 0056E0E3    lea         eax,[ebp-30]
 0056E0E6    call        SinCos
 0056E0EB    mov         dword ptr [ebp-18C],edi
 0056E0F1    fild        dword ptr [ebp-18C]
 0056E0F7    fld         tbyte ptr [ebp-30]
 0056E0FA    fmulp       st(1),st
 0056E0FC    call        @ROUND
 0056E101    add         eax,dword ptr [ebp-14]
 0056E104    mov         edx,dword ptr [ebp-48]
 0056E107    mov         dword ptr [edx+4],eax
 0056E10A    fild        dword ptr [ebp-1C]
 0056E10D    fld         tbyte ptr [ebp-40]
 0056E110    fmulp       st(1),st
 0056E112    call        @ROUND
 0056E117    mov         edx,dword ptr [ebp-18]
 0056E11A    sub         edx,eax
 0056E11C    mov         eax,dword ptr [ebp-48]
 0056E11F    mov         dword ptr [eax+8],edx
 0056E122    lea         ecx,[ebp-194]
 0056E128    mov         edx,esi
 0056E12A    mov         eax,dword ptr [ebp-4]
 0056E12D    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E132    mov         eax,dword ptr [ebp-194]
 0056E138    mov         dword ptr [ebp-170],eax
 0056E13E    mov         eax,dword ptr [ebp-190]
 0056E144    mov         dword ptr [ebp-16C],eax
 0056E14A    mov         eax,dword ptr [ebp-184]
 0056E150    sub         eax,dword ptr [ebp-174]
 0056E156    add         eax,dword ptr [ebp-17C]
 0056E15C    sub         eax,dword ptr [ebp-16C]
 0056E162    sets        al
 0056E165    test        al,al
>0056E167    je          0056E196
 0056E169    cmp         byte ptr [ebp+0C],0
>0056E16D    je          0056E17C
 0056E16F    push        ebp
 0056E170    mov         al,byte ptr [ebp-20]
 0056E173    shl         eax,4
 0056E176    call        Dark
 0056E17B    pop         ecx
 0056E17C    push        4
 0056E17E    lea         eax,[ebp-188]
 0056E184    push        eax
 0056E185    mov         eax,dword ptr [ebp-4]
 0056E188    mov         eax,dword ptr [eax+4]
 0056E18B    call        TCanvas.GetHandle
 0056E190    push        eax
 0056E191    call        GDI32.Polygon
 0056E196    mov         eax,dword ptr [ebp-170]
 0056E19C    mov         dword ptr [ebp-188],eax
 0056E1A2    mov         eax,dword ptr [ebp-16C]
 0056E1A8    mov         dword ptr [ebp-184],eax
 0056E1AE    mov         eax,dword ptr [ebp-178]
 0056E1B4    mov         dword ptr [ebp-180],eax
 0056E1BA    mov         eax,dword ptr [ebp-174]
 0056E1C0    mov         dword ptr [ebp-17C],eax
 0056E1C6    inc         dword ptr [ebp-20]
 0056E1C9    inc         ebx
 0056E1CA    add         esi,0C
 0056E1CD    cmp         ebx,11
>0056E1D0    jne         0056E097
 0056E1D6    mov         ebx,10
 0056E1DB    lea         esi,[ebp-108]
 0056E1E1    lea         edi,[ebp-188]
 0056E1E7    lea         ecx,[ebp-194]
 0056E1ED    mov         edx,esi
 0056E1EF    mov         eax,dword ptr [ebp-4]
 0056E1F2    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E1F7    mov         eax,dword ptr [ebp-194]
 0056E1FD    mov         dword ptr [edi],eax
 0056E1FF    mov         eax,dword ptr [ebp-190]
 0056E205    mov         dword ptr [edi+4],eax
 0056E208    add         edi,8
 0056E20B    add         esi,0C
 0056E20E    dec         ebx
>0056E20F    jne         0056E1E7
 0056E211    cmp         byte ptr [ebp+0C],0
>0056E215    je          0056E223
 0056E217    push        ebp
 0056E218    mov         al,[006E396C]
 0056E21D    call        Dark
 0056E222    pop         ecx
 0056E223    push        10
 0056E225    lea         eax,[ebp-188]
 0056E22B    push        eax
 0056E22C    mov         eax,dword ptr [ebp-4]
 0056E22F    mov         eax,dword ptr [eax+4]
 0056E232    call        TCanvas.GetHandle
 0056E237    push        eax
 0056E238    call        GDI32.Polygon
 0056E23D    pop         edi
 0056E23E    pop         esi
 0056E23F    pop         ebx
 0056E240    mov         esp,ebp
 0056E242    pop         ebp
 0056E243    ret         1C
*}
end;

//0056E258
procedure TTeeCanvas3D.Cylinder(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; Z0:Integer; Z1:Integer; Dark3D:Boolean);
begin
{*
 0056E258    push        ebp
 0056E259    mov         ebp,esp
 0056E25B    push        ebx
 0056E25C    mov         ebx,dword ptr [ebp+1C]
 0056E25F    push        ebx
 0056E260    mov         ebx,dword ptr [ebp+18]
 0056E263    push        ebx
 0056E264    mov         ebx,dword ptr [ebp+14]
 0056E267    push        ebx
 0056E268    mov         ebx,dword ptr [ebp+10]
 0056E26B    push        ebx
 0056E26C    mov         ebx,dword ptr [ebp+0C]
 0056E26F    push        ebx
 0056E270    mov         bl,byte ptr [ebp+8]
 0056E273    push        ebx
 0056E274    push        64
 0056E276    call        TTeeCanvas3D.InternalCylinder
 0056E27B    pop         ebx
 0056E27C    pop         ebp
 0056E27D    ret         18
*}
end;

//0056E280
procedure Dark(Quantity:Byte);
begin
{*
 0056E280    push        ebp
 0056E281    mov         ebp,esp
 0056E283    push        ebx
 0056E284    mov         ebx,eax
 0056E286    mov         eax,dword ptr [ebp+8]
 0056E289    mov         eax,dword ptr [eax-4]
 0056E28C    mov         eax,dword ptr [eax+10]
 0056E28F    call        TBrush.GetStyle
 0056E294    test        al,al
>0056E296    jne         0056E2B8
 0056E298    mov         eax,dword ptr [ebp+8]
 0056E29B    mov         eax,dword ptr [eax-8]
 0056E29E    mov         edx,ebx
 0056E2A0    call        ApplyDark
 0056E2A5    mov         edx,eax
 0056E2A7    mov         eax,dword ptr [ebp+8]
 0056E2AA    mov         eax,dword ptr [eax-4]
 0056E2AD    mov         eax,dword ptr [eax+10]
 0056E2B0    call        TBrush.SetColor
 0056E2B5    pop         ebx
 0056E2B6    pop         ebp
 0056E2B7    ret
 0056E2B8    mov         eax,dword ptr [ebp+8]
 0056E2BB    mov         eax,dword ptr [eax-8]
 0056E2BE    mov         edx,ebx
 0056E2C0    call        ApplyDark
 0056E2C5    mov         edx,eax
 0056E2C7    mov         eax,dword ptr [ebp+8]
 0056E2CA    mov         eax,dword ptr [eax-4]
 0056E2CD    mov         ecx,dword ptr [eax]
 0056E2CF    call        dword ptr [ecx+18]
 0056E2D2    pop         ebx
 0056E2D3    pop         ebp
 0056E2D4    ret
*}
end;

//0056E2D8
procedure TTeeCanvas3D.Pyramid(Vertical:Boolean; Left:Integer; Top:Integer; Right:Integer; Bottom:Integer; z0:Integer; z1:Integer; DarkSides:Boolean);
begin
{*
 0056E2D8    push        ebp
 0056E2D9    mov         ebp,esp
 0056E2DB    add         esp,0FFFFFFB4
 0056E2DE    push        ebx
 0056E2DF    push        esi
 0056E2E0    push        edi
 0056E2E1    mov         esi,ecx
 0056E2E3    mov         byte ptr [ebp-9],dl
 0056E2E6    mov         dword ptr [ebp-4],eax
 0056E2E9    mov         ebx,dword ptr [ebp+14]
 0056E2EC    mov         eax,dword ptr [ebp-4]
 0056E2EF    mov         eax,dword ptr [eax+10]
 0056E2F2    call        TBrush.GetStyle
 0056E2F7    test        al,al
>0056E2F9    jne         0056E30B
 0056E2FB    mov         eax,dword ptr [ebp-4]
 0056E2FE    mov         eax,dword ptr [eax+10]
 0056E301    call        TBrush.GetColor
 0056E306    mov         dword ptr [ebp-8],eax
>0056E309    jmp         0056E315
 0056E30B    mov         eax,dword ptr [ebp-4]
 0056E30E    mov         edx,dword ptr [eax]
 0056E310    call        dword ptr [edx]
 0056E312    mov         dword ptr [ebp-8],eax
 0056E315    cmp         byte ptr [ebp-9],0
>0056E319    je          0056E4F0
 0056E31F    cmp         ebx,dword ptr [ebp+1C]
>0056E322    je          0056E4B5
 0056E328    push        ebx
 0056E329    mov         eax,dword ptr [ebp+10]
 0056E32C    push        eax
 0056E32D    lea         edx,[ebp-11]
 0056E330    mov         ecx,esi
 0056E332    mov         eax,dword ptr [ebp-4]
 0056E335    call        TTeeCanvas3D.Calc3DPoint
 0056E33A    push        ebx
 0056E33B    mov         eax,dword ptr [ebp+10]
 0056E33E    push        eax
 0056E33F    lea         edx,[ebp-19]
 0056E342    mov         ecx,dword ptr [ebp+18]
 0056E345    mov         eax,dword ptr [ebp-4]
 0056E348    call        TTeeCanvas3D.Calc3DPoint
 0056E34D    mov         eax,dword ptr [ebp+1C]
 0056E350    push        eax
 0056E351    mov         eax,dword ptr [ebp+10]
 0056E354    add         eax,dword ptr [ebp+0C]
 0056E357    sar         eax,1
>0056E359    jns         0056E35E
 0056E35B    adc         eax,0
 0056E35E    push        eax
 0056E35F    mov         ecx,dword ptr [ebp+18]
 0056E362    add         ecx,esi
 0056E364    sar         ecx,1
>0056E366    jns         0056E36B
 0056E368    adc         ecx,0
 0056E36B    lea         edx,[ebp-31]
 0056E36E    mov         eax,dword ptr [ebp-4]
 0056E371    call        TTeeCanvas3D.Calc3DPoint
 0056E376    mov         eax,dword ptr [ebp-11]
 0056E379    mov         dword ptr [ebp-4C],eax
 0056E37C    mov         eax,dword ptr [ebp-0D]
 0056E37F    mov         dword ptr [ebp-48],eax
 0056E382    mov         eax,dword ptr [ebp-31]
 0056E385    mov         dword ptr [ebp-44],eax
 0056E388    mov         eax,dword ptr [ebp-2D]
 0056E38B    mov         dword ptr [ebp-40],eax
 0056E38E    mov         eax,dword ptr [ebp-19]
 0056E391    mov         dword ptr [ebp-3C],eax
 0056E394    mov         eax,dword ptr [ebp-15]
 0056E397    mov         dword ptr [ebp-38],eax
 0056E39A    lea         edx,[ebp-4C]
 0056E39D    mov         ecx,2
 0056E3A2    mov         eax,dword ptr [ebp-4]
 0056E3A5    mov         edi,dword ptr [eax]
 0056E3A7    call        dword ptr [edi+88]
 0056E3AD    cmp         ebx,dword ptr [ebp+1C]
>0056E3B0    jle         0056E403
 0056E3B2    push        ebx
 0056E3B3    mov         eax,dword ptr [ebp+0C]
 0056E3B6    push        eax
 0056E3B7    lea         edx,[ebp-21]
 0056E3BA    mov         ecx,esi
 0056E3BC    mov         eax,dword ptr [ebp-4]
 0056E3BF    call        TTeeCanvas3D.Calc3DPoint
 0056E3C4    mov         eax,dword ptr [ebp-1D]
 0056E3C7    cmp         eax,dword ptr [ebp-2D]
>0056E3CA    jge         0056E403
 0056E3CC    mov         eax,dword ptr [ebp-11]
 0056E3CF    mov         dword ptr [ebp-4C],eax
 0056E3D2    mov         eax,dword ptr [ebp-0D]
 0056E3D5    mov         dword ptr [ebp-48],eax
 0056E3D8    mov         eax,dword ptr [ebp-31]
 0056E3DB    mov         dword ptr [ebp-44],eax
 0056E3DE    mov         eax,dword ptr [ebp-2D]
 0056E3E1    mov         dword ptr [ebp-40],eax
 0056E3E4    mov         eax,dword ptr [ebp-21]
 0056E3E7    mov         dword ptr [ebp-3C],eax
 0056E3EA    mov         eax,dword ptr [ebp-1D]
 0056E3ED    mov         dword ptr [ebp-38],eax
 0056E3F0    lea         edx,[ebp-4C]
 0056E3F3    mov         ecx,2
 0056E3F8    mov         eax,dword ptr [ebp-4]
 0056E3FB    mov         edi,dword ptr [eax]
 0056E3FD    call        dword ptr [edi+88]
 0056E403    cmp         byte ptr [ebp+8],0
>0056E407    je          0056E415
 0056E409    push        ebp
 0056E40A    mov         al,[006E3968]
 0056E40F    call        Dark
 0056E414    pop         ecx
 0056E415    push        ebx
 0056E416    mov         eax,dword ptr [ebp+0C]
 0056E419    push        eax
 0056E41A    lea         edx,[ebp-29]
 0056E41D    mov         ecx,dword ptr [ebp+18]
 0056E420    mov         eax,dword ptr [ebp-4]
 0056E423    call        TTeeCanvas3D.Calc3DPoint
 0056E428    mov         eax,dword ptr [ebp-19]
 0056E42B    mov         dword ptr [ebp-4C],eax
 0056E42E    mov         eax,dword ptr [ebp-15]
 0056E431    mov         dword ptr [ebp-48],eax
 0056E434    mov         eax,dword ptr [ebp-31]
 0056E437    mov         dword ptr [ebp-44],eax
 0056E43A    mov         eax,dword ptr [ebp-2D]
 0056E43D    mov         dword ptr [ebp-40],eax
 0056E440    mov         eax,dword ptr [ebp-29]
 0056E443    mov         dword ptr [ebp-3C],eax
 0056E446    mov         eax,dword ptr [ebp-25]
 0056E449    mov         dword ptr [ebp-38],eax
 0056E44C    lea         edx,[ebp-4C]
 0056E44F    mov         ecx,2
 0056E454    mov         eax,dword ptr [ebp-4]
 0056E457    mov         edi,dword ptr [eax]
 0056E459    call        dword ptr [edi+88]
 0056E45F    cmp         ebx,dword ptr [ebp+1C]
>0056E462    jle         0056E4B5
 0056E464    mov         eax,dword ptr [ebp-1D]
 0056E467    cmp         eax,dword ptr [ebp-2D]
>0056E46A    jge         0056E4B5
 0056E46C    push        ebx
 0056E46D    mov         eax,dword ptr [ebp+0C]
 0056E470    push        eax
 0056E471    lea         edx,[ebp-21]
 0056E474    mov         ecx,esi
 0056E476    mov         eax,dword ptr [ebp-4]
 0056E479    call        TTeeCanvas3D.Calc3DPoint
 0056E47E    mov         eax,dword ptr [ebp-31]
 0056E481    mov         dword ptr [ebp-4C],eax
 0056E484    mov         eax,dword ptr [ebp-2D]
 0056E487    mov         dword ptr [ebp-48],eax
 0056E48A    mov         eax,dword ptr [ebp-21]
 0056E48D    mov         dword ptr [ebp-44],eax
 0056E490    mov         eax,dword ptr [ebp-1D]
 0056E493    mov         dword ptr [ebp-40],eax
 0056E496    mov         eax,dword ptr [ebp-29]
 0056E499    mov         dword ptr [ebp-3C],eax
 0056E49C    mov         eax,dword ptr [ebp-25]
 0056E49F    mov         dword ptr [ebp-38],eax
 0056E4A2    lea         edx,[ebp-4C]
 0056E4A5    mov         ecx,2
 0056E4AA    mov         eax,dword ptr [ebp-4]
 0056E4AD    mov         edi,dword ptr [eax]
 0056E4AF    call        dword ptr [edi+88]
 0056E4B5    cmp         ebx,dword ptr [ebp+1C]
>0056E4B8    jg          0056E604
 0056E4BE    cmp         byte ptr [ebp+8],0
>0056E4C2    je          0056E4D0
 0056E4C4    push        ebp
 0056E4C5    mov         al,[006E396C]
 0056E4CA    call        Dark
 0056E4CF    pop         ecx
 0056E4D0    mov         eax,dword ptr [ebp+18]
 0056E4D3    push        eax
 0056E4D4    mov         eax,dword ptr [ebp+10]
 0056E4D7    push        eax
 0056E4D8    mov         eax,dword ptr [ebp+0C]
 0056E4DB    push        eax
 0056E4DC    mov         ecx,ebx
 0056E4DE    mov         edx,esi
 0056E4E0    mov         eax,dword ptr [ebp-4]
 0056E4E3    mov         ebx,dword ptr [eax]
 0056E4E5    call        dword ptr [ebx+110]
>0056E4EB    jmp         0056E604
 0056E4F0    cmp         esi,dword ptr [ebp+18]
>0056E4F3    je          0056E5D4
 0056E4F9    mov         eax,dword ptr [ebp+1C]
 0056E4FC    push        eax
 0056E4FD    mov         eax,dword ptr [ebp+10]
 0056E500    push        eax
 0056E501    lea         edx,[ebp-11]
 0056E504    mov         ecx,esi
 0056E506    mov         eax,dword ptr [ebp-4]
 0056E509    call        TTeeCanvas3D.Calc3DPoint
 0056E50E    push        ebx
 0056E50F    mov         eax,dword ptr [ebp+10]
 0056E512    push        eax
 0056E513    lea         edx,[ebp-19]
 0056E516    mov         ecx,esi
 0056E518    mov         eax,dword ptr [ebp-4]
 0056E51B    call        TTeeCanvas3D.Calc3DPoint
 0056E520    mov         eax,dword ptr [ebp+1C]
 0056E523    add         eax,ebx
 0056E525    shr         eax,1
 0056E527    push        eax
 0056E528    mov         eax,dword ptr [ebp+10]
 0056E52B    add         eax,dword ptr [ebp+0C]
 0056E52E    shr         eax,1
 0056E530    push        eax
 0056E531    lea         edx,[ebp-31]
 0056E534    mov         ecx,dword ptr [ebp+18]
 0056E537    mov         eax,dword ptr [ebp-4]
 0056E53A    call        TTeeCanvas3D.Calc3DPoint
 0056E53F    mov         eax,dword ptr [ebp-11]
 0056E542    mov         dword ptr [ebp-4C],eax
 0056E545    mov         eax,dword ptr [ebp-0D]
 0056E548    mov         dword ptr [ebp-48],eax
 0056E54B    mov         eax,dword ptr [ebp-31]
 0056E54E    mov         dword ptr [ebp-44],eax
 0056E551    mov         eax,dword ptr [ebp-2D]
 0056E554    mov         dword ptr [ebp-40],eax
 0056E557    mov         eax,dword ptr [ebp-19]
 0056E55A    mov         dword ptr [ebp-3C],eax
 0056E55D    mov         eax,dword ptr [ebp-15]
 0056E560    mov         dword ptr [ebp-38],eax
 0056E563    lea         edx,[ebp-4C]
 0056E566    mov         ecx,2
 0056E56B    mov         eax,dword ptr [ebp-4]
 0056E56E    mov         edi,dword ptr [eax]
 0056E570    call        dword ptr [edi+88]
 0056E576    cmp         byte ptr [ebp+8],0
>0056E57A    je          0056E588
 0056E57C    push        ebp
 0056E57D    mov         al,[006E396C]
 0056E582    call        Dark
 0056E587    pop         ecx
 0056E588    mov         eax,dword ptr [ebp+1C]
 0056E58B    push        eax
 0056E58C    mov         eax,dword ptr [ebp+0C]
 0056E58F    push        eax
 0056E590    lea         edx,[ebp-21]
 0056E593    mov         ecx,esi
 0056E595    mov         eax,dword ptr [ebp-4]
 0056E598    call        TTeeCanvas3D.Calc3DPoint
 0056E59D    mov         eax,dword ptr [ebp-11]
 0056E5A0    mov         dword ptr [ebp-4C],eax
 0056E5A3    mov         eax,dword ptr [ebp-0D]
 0056E5A6    mov         dword ptr [ebp-48],eax
 0056E5A9    mov         eax,dword ptr [ebp-31]
 0056E5AC    mov         dword ptr [ebp-44],eax
 0056E5AF    mov         eax,dword ptr [ebp-2D]
 0056E5B2    mov         dword ptr [ebp-40],eax
 0056E5B5    mov         eax,dword ptr [ebp-21]
 0056E5B8    mov         dword ptr [ebp-3C],eax
 0056E5BB    mov         eax,dword ptr [ebp-1D]
 0056E5BE    mov         dword ptr [ebp-38],eax
 0056E5C1    lea         edx,[ebp-4C]
 0056E5C4    mov         ecx,2
 0056E5C9    mov         eax,dword ptr [ebp-4]
 0056E5CC    mov         edi,dword ptr [eax]
 0056E5CE    call        dword ptr [edi+88]
 0056E5D4    cmp         esi,dword ptr [ebp+18]
>0056E5D7    jl          0056E604
 0056E5D9    cmp         byte ptr [ebp+8],0
>0056E5DD    je          0056E5EB
 0056E5DF    push        ebp
 0056E5E0    mov         al,[006E3968]
 0056E5E5    call        Dark
 0056E5EA    pop         ecx
 0056E5EB    push        ebx
 0056E5EC    mov         eax,dword ptr [ebp+10]
 0056E5EF    push        eax
 0056E5F0    mov         eax,dword ptr [ebp+0C]
 0056E5F3    push        eax
 0056E5F4    mov         ecx,dword ptr [ebp+1C]
 0056E5F7    mov         edx,esi
 0056E5F9    mov         eax,dword ptr [ebp-4]
 0056E5FC    mov         ebx,dword ptr [eax]
 0056E5FE    call        dword ptr [ebx+114]
 0056E604    pop         edi
 0056E605    pop         esi
 0056E606    pop         ebx
 0056E607    mov         esp,ebp
 0056E609    pop         ebp
 0056E60A    ret         18
*}
end;

//0056E610
procedure TTeeCanvas3D.PlaneFour3D(var Points:TFourPoints; Z0:Integer; Z1:Integer);
begin
{*
 0056E610    push        ebp
 0056E611    mov         ebp,esp
 0056E613    push        ecx
 0056E614    push        ebx
 0056E615    push        esi
 0056E616    push        edi
 0056E617    mov         esi,ecx
 0056E619    mov         dword ptr [ebp-4],edx
 0056E61C    mov         ebx,eax
 0056E61E    mov         edi,dword ptr [ebp+8]
 0056E621    mov         eax,dword ptr [ebp-4]
 0056E624    push        esi
 0056E625    push        edi
 0056E626    mov         esi,eax
 0056E628    lea         edi,[ebx+0C0]
 0056E62E    mov         ecx,8
 0056E633    rep movs    dword ptr [edi],dword ptr [esi]
 0056E635    pop         edi
 0056E636    pop         esi
 0056E637    lea         edx,[ebx+0C0]
 0056E63D    mov         ecx,esi
 0056E63F    mov         eax,ebx
 0056E641    call        TTeeCanvas3D.Calc3DTPoint
 0056E646    lea         edx,[ebx+0C8]
 0056E64C    mov         ecx,esi
 0056E64E    mov         eax,ebx
 0056E650    call        TTeeCanvas3D.Calc3DTPoint
 0056E655    lea         edx,[ebx+0D0]
 0056E65B    mov         ecx,edi
 0056E65D    mov         eax,ebx
 0056E65F    call        TTeeCanvas3D.Calc3DTPoint
 0056E664    lea         edx,[ebx+0D8]
 0056E66A    mov         ecx,edi
 0056E66C    mov         eax,ebx
 0056E66E    call        TTeeCanvas3D.Calc3DTPoint
 0056E673    mov         eax,ebx
 0056E675    call        TTeeCanvas3D.PolygonFour
 0056E67A    pop         edi
 0056E67B    pop         esi
 0056E67C    pop         ebx
 0056E67D    pop         ecx
 0056E67E    pop         ebp
 0056E67F    ret         4
*}
end;

//0056E684
procedure TTeeCanvas3D.SetPixel3D(X:Integer; Y:Integer; Z:Integer; Value:TColor);
begin
{*
 0056E684    push        ebp
 0056E685    mov         ebp,esp
 0056E687    add         esp,0FFFFFFF8
 0056E68A    push        ebx
 0056E68B    mov         dword ptr [ebp-8],ecx
 0056E68E    mov         dword ptr [ebp-4],edx
 0056E691    mov         ebx,eax
 0056E693    mov         eax,dword ptr [ebp+0C]
 0056E696    push        eax
 0056E697    lea         ecx,[ebp-8]
 0056E69A    lea         edx,[ebp-4]
 0056E69D    mov         eax,ebx
 0056E69F    call        TTeeCanvas3D.Calc3DPos
 0056E6A4    mov         eax,dword ptr [ebx+0C]
 0056E6A7    call        TPen.GetWidth
 0056E6AC    dec         eax
>0056E6AD    jne         0056E6C2
 0056E6AF    mov         eax,dword ptr [ebp+8]
 0056E6B2    push        eax
 0056E6B3    mov         ecx,dword ptr [ebp-8]
 0056E6B6    mov         edx,dword ptr [ebp-4]
 0056E6B9    mov         eax,ebx
 0056E6BB    mov         ebx,dword ptr [eax]
 0056E6BD    call        dword ptr [ebx+24]
>0056E6C0    jmp         0056E6EA
 0056E6C2    mov         eax,dword ptr [ebx+4]
 0056E6C5    call        TCanvas.GetHandle
 0056E6CA    mov         ebx,eax
 0056E6CC    push        0
 0056E6CE    mov         eax,dword ptr [ebp-8]
 0056E6D1    push        eax
 0056E6D2    mov         eax,dword ptr [ebp-4]
 0056E6D5    push        eax
 0056E6D6    push        ebx
 0056E6D7    call        GDI32.MoveToEx
 0056E6DC    mov         eax,dword ptr [ebp-8]
 0056E6DF    push        eax
 0056E6E0    mov         eax,dword ptr [ebp-4]
 0056E6E3    push        eax
 0056E6E4    push        ebx
 0056E6E5    call        GDI32.LineTo
 0056E6EA    pop         ebx
 0056E6EB    pop         ecx
 0056E6EC    pop         ecx
 0056E6ED    pop         ebp
 0056E6EE    ret         8
*}
end;

//0056E6F4
{*function sub_0056E6F4:?;
begin
 0056E6F4    xor         eax,eax
 0056E6F6    ret
end;*}

//0056E6F8
{*function sub_0056E6F8:?;
begin
 0056E6F8    xor         eax,eax
 0056E6FA    ret
end;*}

//0056E6FC
function TTeeCanvas3D.GetTextAlign:Integer;
begin
{*
 0056E6FC    push        ebx
 0056E6FD    mov         ebx,eax
 0056E6FF    mov         eax,dword ptr [ebx+4]
 0056E702    call        TCanvas.GetHandle
 0056E707    push        eax
 0056E708    call        GDI32.GetTextAlign
 0056E70D    pop         ebx
 0056E70E    ret
*}
end;

//0056E710
{*function sub_0056E710:?;
begin
 0056E710    mov         al,byte ptr [eax+98];TTeeCanvas3D.FBufferedDisplay:Boolean
 0056E716    ret
end;*}

//0056E718
procedure TTeeCanvas3D.SetUseBuffer(Value:Boolean);
begin
{*
 0056E718    push        ebx
 0056E719    mov         ebx,eax
 0056E71B    mov         byte ptr [ebx+98],dl
 0056E721    cmp         byte ptr [ebx+98],0
>0056E728    jne         0056E741
 0056E72A    cmp         dword ptr [ebx+94],0
>0056E731    je          0056E741
 0056E733    mov         eax,ebx
 0056E735    call        TTeeCanvas3D.DeleteBitmap
 0056E73A    mov         byte ptr [ebx+9A],1
 0056E741    pop         ebx
 0056E742    ret
*}
end;

//0056E744
{*function sub_0056E744:?;
begin
 0056E744    mov         al,byte ptr [eax+99];TTeeCanvas3D.FMonochrome:Boolean
 0056E74A    ret
end;*}

//0056E74C
procedure TTeeCanvas3D.SetMonochrome(Value:Boolean);
begin
{*
 0056E74C    push        ebx
 0056E74D    mov         ebx,eax
 0056E74F    cmp         dl,byte ptr [ebx+99]
>0056E755    je          0056E777
 0056E757    mov         byte ptr [ebx+99],dl
 0056E75D    mov         eax,ebx
 0056E75F    call        TTeeCanvas3D.DeleteBitmap
 0056E764    mov         byte ptr [ebx+9A],1
 0056E76B    mov         eax,dword ptr [ebx+18]
 0056E76E    test        eax,eax
>0056E770    je          0056E777
 0056E772    call        TView3DOptions.Repaint
 0056E777    pop         ebx
 0056E778    ret
*}
end;

//0056E77C
procedure TTeeCanvas3D.HorizLine3D(Left:Integer; Right:Integer; Y:Integer; Z:Integer);
begin
{*
 0056E77C    push        ebp
 0056E77D    mov         ebp,esp
 0056E77F    add         esp,0FFFFFFF4
 0056E782    push        ebx
 0056E783    push        esi
 0056E784    push        edi
 0056E785    mov         dword ptr [ebp-8],ecx
 0056E788    mov         dword ptr [ebp-4],edx
 0056E78B    mov         ebx,eax
 0056E78D    mov         edi,dword ptr [ebp+0C]
 0056E790    mov         dword ptr [ebp-0C],edi
 0056E793    mov         eax,dword ptr [ebp+8]
 0056E796    push        eax
 0056E797    lea         ecx,[ebp-0C]
 0056E79A    lea         edx,[ebp-4]
 0056E79D    mov         eax,ebx
 0056E79F    call        TTeeCanvas3D.Calc3DPos
 0056E7A4    mov         eax,dword ptr [ebx+4]
 0056E7A7    call        TCanvas.GetHandle
 0056E7AC    mov         esi,eax
 0056E7AE    push        0
 0056E7B0    mov         eax,dword ptr [ebp-0C]
 0056E7B3    push        eax
 0056E7B4    mov         eax,dword ptr [ebp-4]
 0056E7B7    push        eax
 0056E7B8    push        esi
 0056E7B9    call        GDI32.MoveToEx
 0056E7BE    mov         dword ptr [ebp-0C],edi
 0056E7C1    mov         eax,dword ptr [ebp+8]
 0056E7C4    push        eax
 0056E7C5    lea         ecx,[ebp-0C]
 0056E7C8    lea         edx,[ebp-8]
 0056E7CB    mov         eax,ebx
 0056E7CD    call        TTeeCanvas3D.Calc3DPos
 0056E7D2    mov         eax,dword ptr [ebp-0C]
 0056E7D5    push        eax
 0056E7D6    mov         eax,dword ptr [ebp-8]
 0056E7D9    push        eax
 0056E7DA    push        esi
 0056E7DB    call        GDI32.LineTo
 0056E7E0    pop         edi
 0056E7E1    pop         esi
 0056E7E2    pop         ebx
 0056E7E3    mov         esp,ebp
 0056E7E5    pop         ebp
 0056E7E6    ret         8
*}
end;

//0056E7EC
procedure TTeeCanvas3D.VertLine3D(X:Integer; Top:Integer; Bottom:Integer; Z:Integer);
begin
{*
 0056E7EC    push        ebp
 0056E7ED    mov         ebp,esp
 0056E7EF    add         esp,0FFFFFFF8
 0056E7F2    push        ebx
 0056E7F3    push        esi
 0056E7F4    push        edi
 0056E7F5    mov         dword ptr [ebp-4],ecx
 0056E7F8    mov         edi,edx
 0056E7FA    mov         ebx,eax
 0056E7FC    mov         dword ptr [ebp-8],edi
 0056E7FF    mov         eax,dword ptr [ebp+8]
 0056E802    push        eax
 0056E803    lea         ecx,[ebp-4]
 0056E806    lea         edx,[ebp-8]
 0056E809    mov         eax,ebx
 0056E80B    call        TTeeCanvas3D.Calc3DPos
 0056E810    mov         eax,dword ptr [ebx+4]
 0056E813    call        TCanvas.GetHandle
 0056E818    mov         esi,eax
 0056E81A    push        0
 0056E81C    mov         eax,dword ptr [ebp-4]
 0056E81F    push        eax
 0056E820    mov         eax,dword ptr [ebp-8]
 0056E823    push        eax
 0056E824    push        esi
 0056E825    call        GDI32.MoveToEx
 0056E82A    mov         dword ptr [ebp-8],edi
 0056E82D    mov         eax,dword ptr [ebp+8]
 0056E830    push        eax
 0056E831    lea         ecx,[ebp+0C]
 0056E834    lea         edx,[ebp-8]
 0056E837    mov         eax,ebx
 0056E839    call        TTeeCanvas3D.Calc3DPos
 0056E83E    mov         eax,dword ptr [ebp+0C]
 0056E841    push        eax
 0056E842    mov         eax,dword ptr [ebp-8]
 0056E845    push        eax
 0056E846    push        esi
 0056E847    call        GDI32.LineTo
 0056E84C    pop         edi
 0056E84D    pop         esi
 0056E84E    pop         ebx
 0056E84F    pop         ecx
 0056E850    pop         ecx
 0056E851    pop         ebp
 0056E852    ret         8
*}
end;

//0056E858
procedure TTeeCanvas3D.ZLine3D(X:Integer; Y:Integer; Z0:Integer; Z1:Integer);
begin
{*
 0056E858    push        ebp
 0056E859    mov         ebp,esp
 0056E85B    add         esp,0FFFFFFF4
 0056E85E    push        ebx
 0056E85F    push        esi
 0056E860    push        edi
 0056E861    mov         dword ptr [ebp-4],ecx
 0056E864    mov         edi,edx
 0056E866    mov         ebx,eax
 0056E868    mov         dword ptr [ebp-8],edi
 0056E86B    mov         eax,dword ptr [ebp-4]
 0056E86E    mov         dword ptr [ebp-0C],eax
 0056E871    mov         eax,dword ptr [ebp+0C]
 0056E874    push        eax
 0056E875    lea         ecx,[ebp-0C]
 0056E878    lea         edx,[ebp-8]
 0056E87B    mov         eax,ebx
 0056E87D    call        TTeeCanvas3D.Calc3DPos
 0056E882    mov         eax,dword ptr [ebx+4]
 0056E885    call        TCanvas.GetHandle
 0056E88A    mov         esi,eax
 0056E88C    push        0
 0056E88E    mov         eax,dword ptr [ebp-0C]
 0056E891    push        eax
 0056E892    mov         eax,dword ptr [ebp-8]
 0056E895    push        eax
 0056E896    push        esi
 0056E897    call        GDI32.MoveToEx
 0056E89C    mov         dword ptr [ebp-8],edi
 0056E89F    mov         eax,dword ptr [ebp-4]
 0056E8A2    mov         dword ptr [ebp-0C],eax
 0056E8A5    mov         eax,dword ptr [ebp+8]
 0056E8A8    push        eax
 0056E8A9    lea         ecx,[ebp-0C]
 0056E8AC    lea         edx,[ebp-8]
 0056E8AF    mov         eax,ebx
 0056E8B1    call        TTeeCanvas3D.Calc3DPos
 0056E8B6    mov         eax,dword ptr [ebp-0C]
 0056E8B9    push        eax
 0056E8BA    mov         eax,dword ptr [ebp-8]
 0056E8BD    push        eax
 0056E8BE    push        esi
 0056E8BF    call        GDI32.LineTo
 0056E8C4    pop         edi
 0056E8C5    pop         esi
 0056E8C6    pop         ebx
 0056E8C7    mov         esp,ebp
 0056E8C9    pop         ebp
 0056E8CA    ret         8
*}
end;

//0056E8D0
procedure TTeeCanvas3D.Triangle3D(const Points:TTrianglePoints3D; const Colors:TTriangleColors3D);
begin
{*
 0056E8D0    push        ebx
 0056E8D1    push        esi
 0056E8D2    push        edi
 0056E8D3    add         esp,0FFFFFFE0
 0056E8D6    mov         edi,ecx
 0056E8D8    mov         esi,edx
 0056E8DA    mov         ebx,eax
 0056E8DC    lea         ecx,[esp+18]
 0056E8E0    mov         edx,esi
 0056E8E2    mov         eax,ebx
 0056E8E4    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E8E9    mov         eax,dword ptr [esp+18]
 0056E8ED    mov         dword ptr [esp],eax
 0056E8F0    mov         eax,dword ptr [esp+1C]
 0056E8F4    mov         dword ptr [esp+4],eax
 0056E8F8    lea         ecx,[esp+18]
 0056E8FC    lea         edx,[esi+0C]
 0056E8FF    mov         eax,ebx
 0056E901    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E906    mov         eax,dword ptr [esp+18]
 0056E90A    mov         dword ptr [esp+8],eax
 0056E90E    mov         eax,dword ptr [esp+1C]
 0056E912    mov         dword ptr [esp+0C],eax
 0056E916    lea         ecx,[esp+18]
 0056E91A    lea         edx,[esi+18]
 0056E91D    mov         eax,ebx
 0056E91F    call        TTeeCanvas3D.Calc3DTPoint3D
 0056E924    mov         eax,dword ptr [esp+18]
 0056E928    mov         dword ptr [esp+10],eax
 0056E92C    mov         eax,dword ptr [esp+1C]
 0056E930    mov         dword ptr [esp+14],eax
 0056E934    mov         eax,dword ptr [ebx+10]
 0056E937    call        TBrush.GetStyle
 0056E93C    cmp         al,1
>0056E93E    je          0056E94A
 0056E940    mov         edx,dword ptr [edi]
 0056E942    mov         eax,dword ptr [ebx+10]
 0056E945    call        TBrush.SetColor
 0056E94A    push        3
 0056E94C    lea         eax,[esp+4]
 0056E950    push        eax
 0056E951    mov         eax,dword ptr [ebx+4]
 0056E954    call        TCanvas.GetHandle
 0056E959    push        eax
 0056E95A    call        GDI32.Polygon
 0056E95F    add         esp,20
 0056E962    pop         edi
 0056E963    pop         esi
 0056E964    pop         ebx
 0056E965    ret
*}
end;

//0056E968
procedure TTeeCanvas3D.TriangleWithZ(const P1:TPoint; const P2:TPoint; const P3:TPoint; Z:Integer);
begin
{*
 0056E968    push        ebp
 0056E969    mov         ebp,esp
 0056E96B    add         esp,0FFFFFFE4
 0056E96E    push        ebx
 0056E96F    push        esi
 0056E970    mov         dword ptr [ebp-4],ecx
 0056E973    mov         ebx,eax
 0056E975    mov         esi,dword ptr [ebp+8]
 0056E978    mov         eax,dword ptr [edx+4]
 0056E97B    push        eax
 0056E97C    push        esi
 0056E97D    mov         ecx,dword ptr [edx]
 0056E97F    lea         edx,[ebp-1C]
 0056E982    mov         eax,ebx
 0056E984    call        TTeeCanvas3D.Calc3DPoint
 0056E989    mov         eax,dword ptr [ebp-4]
 0056E98C    mov         eax,dword ptr [eax+4]
 0056E98F    push        eax
 0056E990    push        esi
 0056E991    mov         ecx,dword ptr [ebp-4]
 0056E994    mov         ecx,dword ptr [ecx]
 0056E996    lea         edx,[ebp-14]
 0056E999    mov         eax,ebx
 0056E99B    call        TTeeCanvas3D.Calc3DPoint
 0056E9A0    mov         eax,dword ptr [ebp+0C]
 0056E9A3    mov         eax,dword ptr [eax+4]
 0056E9A6    push        eax
 0056E9A7    push        esi
 0056E9A8    mov         ecx,dword ptr [ebp+0C]
 0056E9AB    mov         ecx,dword ptr [ecx]
 0056E9AD    lea         edx,[ebp-0C]
 0056E9B0    mov         eax,ebx
 0056E9B2    call        TTeeCanvas3D.Calc3DPoint
 0056E9B7    push        3
 0056E9B9    lea         eax,[ebp-1C]
 0056E9BC    push        eax
 0056E9BD    mov         eax,dword ptr [ebx+4]
 0056E9C0    call        TCanvas.GetHandle
 0056E9C5    push        eax
 0056E9C6    call        GDI32.Polygon
 0056E9CB    pop         esi
 0056E9CC    pop         ebx
 0056E9CD    mov         esp,ebp
 0056E9CF    pop         ebp
 0056E9D0    ret         8
*}
end;

//0056E9D4
function CalcArrowPoint:TPoint;
begin
{*
 0056E9D4    push        ebp
 0056E9D5    mov         ebp,esp
 0056E9D7    push        ebx
 0056E9D8    mov         ebx,eax
 0056E9DA    mov         eax,dword ptr [ebp+8]
 0056E9DD    fld         qword ptr [eax-8]
 0056E9E0    mov         eax,dword ptr [ebp+8]
 0056E9E3    fmul        qword ptr [eax-10]
 0056E9E6    mov         eax,dword ptr [ebp+8]
 0056E9E9    fld         qword ptr [eax-18]
 0056E9EC    mov         eax,dword ptr [ebp+8]
 0056E9EF    fmul        qword ptr [eax-20]
 0056E9F2    faddp       st(1),st
 0056E9F4    call        @ROUND
 0056E9F9    mov         dword ptr [ebx],eax
 0056E9FB    mov         eax,dword ptr [ebp+8]
 0056E9FE    fld         qword ptr [eax-8]
 0056EA01    fchs
 0056EA03    mov         eax,dword ptr [ebp+8]
 0056EA06    fmul        qword ptr [eax-20]
 0056EA09    mov         eax,dword ptr [ebp+8]
 0056EA0C    fld         qword ptr [eax-18]
 0056EA0F    mov         eax,dword ptr [ebp+8]
 0056EA12    fmul        qword ptr [eax-10]
 0056EA15    faddp       st(1),st
 0056EA17    call        @ROUND
 0056EA1C    mov         dword ptr [ebx+4],eax
 0056EA1F    mov         eax,dword ptr [ebp+8]
 0056EA22    mov         ecx,dword ptr [eax+8]
 0056EA25    mov         edx,ebx
 0056EA27    mov         eax,dword ptr [ebp+8]
 0056EA2A    mov         eax,dword ptr [eax-24]
 0056EA2D    call        TTeeCanvas3D.Calc3DTPoint
 0056EA32    pop         ebx
 0056EA33    pop         ebp
 0056EA34    ret
*}
end;

//0056EA38
procedure TTeeCanvas3D.Arrow(Filled:Boolean; const FromPoint:TPoint; const ToPoint:TPoint; ArrowWidth:Integer; ArrowHeight:Integer; Z:Integer);
begin
{*
 0056EA38    push        ebp
 0056EA39    mov         ebp,esp
 0056EA3B    add         esp,0FFFFFF28
 0056EA41    push        ebx
 0056EA42    push        esi
 0056EA43    push        edi
 0056EA44    mov         dword ptr [ebp-2C],ecx
 0056EA47    mov         byte ptr [ebp-25],dl
 0056EA4A    mov         dword ptr [ebp-24],eax
 0056EA4D    mov         esi,dword ptr [ebp+14]
 0056EA50    mov         ebx,dword ptr [esi]
 0056EA52    mov         eax,dword ptr [ebp-2C]
 0056EA55    sub         ebx,dword ptr [eax]
 0056EA57    mov         edi,dword ptr [ebp-2C]
 0056EA5A    mov         edi,dword ptr [edi+4]
 0056EA5D    sub         edi,dword ptr [esi+4]
 0056EA60    mov         dword ptr [ebp-8C],ebx
 0056EA66    fild        dword ptr [ebp-8C]
 0056EA6C    fmul        dword ptr ds:[56ED8C]
 0056EA72    mov         dword ptr [ebp-90],ebx
 0056EA78    fild        dword ptr [ebp-90]
 0056EA7E    fmulp       st(1),st
 0056EA80    mov         dword ptr [ebp-94],edi
 0056EA86    fild        dword ptr [ebp-94]
 0056EA8C    fmul        dword ptr ds:[56ED8C]
 0056EA92    mov         dword ptr [ebp-98],edi
 0056EA98    fild        dword ptr [ebp-98]
 0056EA9E    fmulp       st(1),st
 0056EAA0    faddp       st(1),st
 0056EAA2    fsqrt
 0056EAA4    fstp        qword ptr [ebp-50]
 0056EAA7    wait
 0056EAA8    fld         qword ptr [ebp-50]
 0056EAAB    fcomp       dword ptr ds:[56ED90]
 0056EAB1    fnstsw      al
 0056EAB3    sahf
>0056EAB4    jbe         0056ED82
 0056EABA    mov         eax,dword ptr [ebp+10]
 0056EABD    mov         dword ptr [ebp-30],eax
 0056EAC0    fld         qword ptr [ebp-50]
 0056EAC3    call        @ROUND
 0056EAC8    mov         edx,dword ptr [ebp+0C]
 0056EACB    call        0056EDD8
 0056EAD0    mov         dword ptr [ebp-8C],edi
 0056EAD6    fild        dword ptr [ebp-8C]
 0056EADC    fdiv        qword ptr [ebp-50]
 0056EADF    fstp        qword ptr [ebp-20]
 0056EAE2    wait
 0056EAE3    mov         dword ptr [ebp-8C],ebx
 0056EAE9    fild        dword ptr [ebp-8C]
 0056EAEF    fdiv        qword ptr [ebp-50]
 0056EAF2    fstp        qword ptr [ebp-10]
 0056EAF5    wait
 0056EAF6    fild        dword ptr [esi]
 0056EAF8    fmul        qword ptr [ebp-10]
 0056EAFB    fild        dword ptr [esi+4]
 0056EAFE    fmul        qword ptr [ebp-20]
 0056EB01    fsubp       st(1),st
 0056EB03    fstp        qword ptr [ebp-40]
 0056EB06    wait
 0056EB07    fild        dword ptr [esi]
 0056EB09    fmul        qword ptr [ebp-20]
 0056EB0C    fild        dword ptr [esi+4]
 0056EB0F    fmul        qword ptr [ebp-10]
 0056EB12    faddp       st(1),st
 0056EB14    fstp        qword ptr [ebp-48]
 0056EB17    wait
 0056EB18    mov         dword ptr [ebp-8C],eax
 0056EB1E    fild        dword ptr [ebp-8C]
 0056EB24    fsubr       qword ptr [ebp-40]
 0056EB27    fstp        qword ptr [ebp-8]
 0056EB2A    wait
 0056EB2B    fild        dword ptr [ebp-30]
 0056EB2E    fdiv        dword ptr ds:[56ED94]
 0056EB34    fsubr       qword ptr [ebp-48]
 0056EB37    fstp        qword ptr [ebp-18]
 0056EB3A    wait
 0056EB3B    push        ebp
 0056EB3C    lea         eax,[ebp-0A0]
 0056EB42    call        CalcArrowPoint
 0056EB47    pop         ecx
 0056EB48    mov         eax,dword ptr [ebp-0A0]
 0056EB4E    mov         dword ptr [ebp-60],eax
 0056EB51    mov         eax,dword ptr [ebp-9C]
 0056EB57    mov         dword ptr [ebp-5C],eax
 0056EB5A    fild        dword ptr [ebp-30]
 0056EB5D    fdiv        dword ptr ds:[56ED94]
 0056EB63    fadd        qword ptr [ebp-48]
 0056EB66    fstp        qword ptr [ebp-18]
 0056EB69    wait
 0056EB6A    push        ebp
 0056EB6B    lea         eax,[ebp-0A0]
 0056EB71    call        CalcArrowPoint
 0056EB76    pop         ecx
 0056EB77    mov         eax,dword ptr [ebp-0A0]
 0056EB7D    mov         dword ptr [ebp-68],eax
 0056EB80    mov         eax,dword ptr [ebp-9C]
 0056EB86    mov         dword ptr [ebp-64],eax
 0056EB89    cmp         byte ptr [ebp-25],0
>0056EB8D    je          0056ED16
 0056EB93    fild        dword ptr [ebp-30]
 0056EB96    fdiv        dword ptr ds:[56ED98]
 0056EB9C    fstp        qword ptr [ebp-38]
 0056EB9F    wait
 0056EBA0    fld         qword ptr [ebp-48]
 0056EBA3    fsub        qword ptr [ebp-38]
 0056EBA6    fstp        qword ptr [ebp-18]
 0056EBA9    wait
 0056EBAA    push        ebp
 0056EBAB    lea         eax,[ebp-0A0]
 0056EBB1    call        CalcArrowPoint
 0056EBB6    pop         ecx
 0056EBB7    mov         eax,dword ptr [ebp-0A0]
 0056EBBD    mov         dword ptr [ebp-70],eax
 0056EBC0    mov         eax,dword ptr [ebp-9C]
 0056EBC6    mov         dword ptr [ebp-6C],eax
 0056EBC9    fld         qword ptr [ebp-48]
 0056EBCC    fadd        qword ptr [ebp-38]
 0056EBCF    fstp        qword ptr [ebp-18]
 0056EBD2    wait
 0056EBD3    push        ebp
 0056EBD4    lea         eax,[ebp-0A0]
 0056EBDA    call        CalcArrowPoint
 0056EBDF    pop         ecx
 0056EBE0    mov         eax,dword ptr [ebp-0A0]
 0056EBE6    mov         dword ptr [ebp-78],eax
 0056EBE9    mov         eax,dword ptr [ebp-9C]
 0056EBEF    mov         dword ptr [ebp-74],eax
 0056EBF2    mov         eax,dword ptr [ebp-2C]
 0056EBF5    fild        dword ptr [eax]
 0056EBF7    fmul        qword ptr [ebp-10]
 0056EBFA    mov         eax,dword ptr [ebp-2C]
 0056EBFD    fild        dword ptr [eax+4]
 0056EC00    fmul        qword ptr [ebp-20]
 0056EC03    fsubp       st(1),st
 0056EC05    fstp        qword ptr [ebp-8]
 0056EC08    wait
 0056EC09    fld         qword ptr [ebp-48]
 0056EC0C    fsub        qword ptr [ebp-38]
 0056EC0F    fstp        qword ptr [ebp-18]
 0056EC12    wait
 0056EC13    push        ebp
 0056EC14    lea         eax,[ebp-0A0]
 0056EC1A    call        CalcArrowPoint
 0056EC1F    pop         ecx
 0056EC20    mov         eax,dword ptr [ebp-0A0]
 0056EC26    mov         dword ptr [ebp-80],eax
 0056EC29    mov         eax,dword ptr [ebp-9C]
 0056EC2F    mov         dword ptr [ebp-7C],eax
 0056EC32    fld         qword ptr [ebp-48]
 0056EC35    fadd        qword ptr [ebp-38]
 0056EC38    fstp        qword ptr [ebp-18]
 0056EC3B    wait
 0056EC3C    push        ebp
 0056EC3D    lea         eax,[ebp-0A0]
 0056EC43    call        CalcArrowPoint
 0056EC48    pop         ecx
 0056EC49    mov         eax,dword ptr [ebp-0A0]
 0056EC4F    mov         dword ptr [ebp-88],eax
 0056EC55    mov         eax,dword ptr [ebp-9C]
 0056EC5B    mov         dword ptr [ebp-84],eax
 0056EC61    mov         eax,dword ptr [esi]
 0056EC63    mov         dword ptr [ebp-58],eax
 0056EC66    mov         eax,dword ptr [esi+4]
 0056EC69    mov         dword ptr [ebp-54],eax
 0056EC6C    lea         edx,[ebp-58]
 0056EC6F    mov         ecx,dword ptr [ebp+8]
 0056EC72    mov         eax,dword ptr [ebp-24]
 0056EC75    call        TTeeCanvas3D.Calc3DTPoint
 0056EC7A    mov         eax,dword ptr [ebp-88]
 0056EC80    mov         dword ptr [ebp-0D8],eax
 0056EC86    mov         eax,dword ptr [ebp-84]
 0056EC8C    mov         dword ptr [ebp-0D4],eax
 0056EC92    mov         eax,dword ptr [ebp-80]
 0056EC95    mov         dword ptr [ebp-0D0],eax
 0056EC9B    mov         eax,dword ptr [ebp-7C]
 0056EC9E    mov         dword ptr [ebp-0CC],eax
 0056ECA4    mov         eax,dword ptr [ebp-70]
 0056ECA7    mov         dword ptr [ebp-0C8],eax
 0056ECAD    mov         eax,dword ptr [ebp-6C]
 0056ECB0    mov         dword ptr [ebp-0C4],eax
 0056ECB6    mov         eax,dword ptr [ebp-60]
 0056ECB9    mov         dword ptr [ebp-0C0],eax
 0056ECBF    mov         eax,dword ptr [ebp-5C]
 0056ECC2    mov         dword ptr [ebp-0BC],eax
 0056ECC8    mov         eax,dword ptr [ebp-58]
 0056ECCB    mov         dword ptr [ebp-0B8],eax
 0056ECD1    mov         eax,dword ptr [ebp-54]
 0056ECD4    mov         dword ptr [ebp-0B4],eax
 0056ECDA    mov         eax,dword ptr [ebp-68]
 0056ECDD    mov         dword ptr [ebp-0B0],eax
 0056ECE3    mov         eax,dword ptr [ebp-64]
 0056ECE6    mov         dword ptr [ebp-0AC],eax
 0056ECEC    mov         eax,dword ptr [ebp-78]
 0056ECEF    mov         dword ptr [ebp-0A8],eax
 0056ECF5    mov         eax,dword ptr [ebp-74]
 0056ECF8    mov         dword ptr [ebp-0A4],eax
 0056ECFE    lea         edx,[ebp-0D8]
 0056ED04    mov         ecx,6
 0056ED09    mov         eax,dword ptr [ebp-24]
 0056ED0C    mov         ebx,dword ptr [eax]
 0056ED0E    call        dword ptr [ebx+88]
>0056ED14    jmp         0056ED82
 0056ED16    mov         eax,dword ptr [ebp+8]
 0056ED19    push        eax
 0056ED1A    mov         ecx,dword ptr [ebp-2C]
 0056ED1D    mov         ecx,dword ptr [ecx+4]
 0056ED20    mov         edx,dword ptr [ebp-2C]
 0056ED23    mov         edx,dword ptr [edx]
 0056ED25    mov         eax,dword ptr [ebp-24]
 0056ED28    mov         ebx,dword ptr [eax]
 0056ED2A    call        dword ptr [ebx+0EC]
 0056ED30    mov         eax,dword ptr [ebp+8]
 0056ED33    push        eax
 0056ED34    mov         ecx,dword ptr [esi+4]
 0056ED37    mov         edx,dword ptr [esi]
 0056ED39    mov         eax,dword ptr [ebp-24]
 0056ED3C    mov         ebx,dword ptr [eax]
 0056ED3E    call        dword ptr [ebx+0F0]
 0056ED44    mov         eax,dword ptr [ebp+8]
 0056ED47    push        eax
 0056ED48    mov         ecx,dword ptr [ebp-64]
 0056ED4B    mov         edx,dword ptr [ebp-68]
 0056ED4E    mov         eax,dword ptr [ebp-24]
 0056ED51    mov         ebx,dword ptr [eax]
 0056ED53    call        dword ptr [ebx+0F0]
 0056ED59    mov         eax,dword ptr [ebp+8]
 0056ED5C    push        eax
 0056ED5D    mov         ecx,dword ptr [esi+4]
 0056ED60    mov         edx,dword ptr [esi]
 0056ED62    mov         eax,dword ptr [ebp-24]
 0056ED65    mov         ebx,dword ptr [eax]
 0056ED67    call        dword ptr [ebx+0EC]
 0056ED6D    mov         eax,dword ptr [ebp+8]
 0056ED70    push        eax
 0056ED71    mov         ecx,dword ptr [ebp-5C]
 0056ED74    mov         edx,dword ptr [ebp-60]
 0056ED77    mov         eax,dword ptr [ebp-24]
 0056ED7A    mov         ebx,dword ptr [eax]
 0056ED7C    call        dword ptr [ebx+0F0]
 0056ED82    pop         edi
 0056ED83    pop         esi
 0056ED84    pop         ebx
 0056ED85    mov         esp,ebp
 0056ED87    pop         ebp
 0056ED88    ret         10
*}
end;

//0056ED9C
function MaxDouble(const a:Double; const b:Double):Double;
begin
{*
 0056ED9C    push        ebp
 0056ED9D    mov         ebp,esp
 0056ED9F    add         esp,0FFFFFFF8
 0056EDA2    fld         qword ptr [ebp+10]
 0056EDA5    fcomp       qword ptr [ebp+8]
 0056EDA8    fnstsw      al
 0056EDAA    sahf
>0056EDAB    jbe         0056EDBB
 0056EDAD    mov         eax,dword ptr [ebp+10]
 0056EDB0    mov         dword ptr [ebp-8],eax
 0056EDB3    mov         eax,dword ptr [ebp+14]
 0056EDB6    mov         dword ptr [ebp-4],eax
>0056EDB9    jmp         0056EDC7
 0056EDBB    mov         eax,dword ptr [ebp+8]
 0056EDBE    mov         dword ptr [ebp-8],eax
 0056EDC1    mov         eax,dword ptr [ebp+0C]
 0056EDC4    mov         dword ptr [ebp-4],eax
 0056EDC7    fld         qword ptr [ebp-8]
 0056EDCA    pop         ecx
 0056EDCB    pop         ecx
 0056EDCC    pop         ebp
 0056EDCD    ret         10
*}
end;

//0056EDD0
{*function sub_0056EDD0(?:?; ?:?):?;
begin
 0056EDD0    cmp         edx,eax
>0056EDD2    jl          0056EDD6
 0056EDD4    mov         eax,edx
 0056EDD6    ret
end;*}

//0056EDD8
{*function sub_0056EDD8(?:?; ?:?):?;
begin
 0056EDD8    cmp         edx,eax
>0056EDDA    jge         0056EDDE
 0056EDDC    mov         eax,edx
 0056EDDE    ret
end;*}

//0056EDE0
procedure SwapLongint(var a:Integer; var b:Integer);
begin
{*
 0056EDE0    push        ebx
 0056EDE1    mov         ecx,dword ptr [eax]
 0056EDE3    mov         ebx,dword ptr [edx]
 0056EDE5    mov         dword ptr [eax],ebx
 0056EDE7    mov         dword ptr [edx],ecx
 0056EDE9    pop         ebx
 0056EDEA    ret
*}
end;

//0056EDEC
procedure SwapDouble(var a:Double; var b:Double);
begin
{*
 0056EDEC    add         esp,0FFFFFFF8
 0056EDEF    mov         ecx,dword ptr [eax]
 0056EDF1    mov         dword ptr [esp],ecx
 0056EDF4    mov         ecx,dword ptr [eax+4]
 0056EDF7    mov         dword ptr [esp+4],ecx
 0056EDFB    mov         ecx,dword ptr [edx]
 0056EDFD    mov         dword ptr [eax],ecx
 0056EDFF    mov         ecx,dword ptr [edx+4]
 0056EE02    mov         dword ptr [eax+4],ecx
 0056EE05    mov         eax,dword ptr [esp]
 0056EE08    mov         dword ptr [edx],eax
 0056EE0A    mov         eax,dword ptr [esp+4]
 0056EE0E    mov         dword ptr [edx+4],eax
 0056EE11    pop         ecx
 0056EE12    pop         edx
 0056EE13    ret
*}
end;

//0056EE14
procedure SwapInteger(var a:Integer; var b:Integer);
begin
{*
 0056EE14    push        ebx
 0056EE15    mov         ecx,dword ptr [eax]
 0056EE17    mov         ebx,dword ptr [edx]
 0056EE19    mov         dword ptr [eax],ebx
 0056EE1B    mov         dword ptr [edx],ecx
 0056EE1D    pop         ebx
 0056EE1E    ret
*}
end;

//0056EE20
procedure Finalization;
begin
{*
 0056EE20    push        ebp
 0056EE21    mov         ebp,esp
 0056EE23    xor         eax,eax
 0056EE25    push        ebp
 0056EE26    push        56EE45
 0056EE2B    push        dword ptr fs:[eax]
 0056EE2E    mov         dword ptr fs:[eax],esp
 0056EE31    inc         dword ptr ds:[6ECC94]
 0056EE37    xor         eax,eax
 0056EE39    pop         edx
 0056EE3A    pop         ecx
 0056EE3B    pop         ecx
 0056EE3C    mov         dword ptr fs:[eax],edx
 0056EE3F    push        56EE4C
 0056EE44    ret
>0056EE45    jmp         @HandleFinally
>0056EE4A    jmp         0056EE44
 0056EE4C    pop         ebp
 0056EE4D    ret
*}
end;

end.