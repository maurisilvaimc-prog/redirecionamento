//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TeeProcs;

interface

uses
  SysUtils, Classes, Graphics, TeeProcs, TeCanvas;

type
  ChartException = class(Exception)
  end;
  TZoomPanningRecord = class(TObject)
  public
    Active:Boolean;//f4
    X0:Integer;//f8
    Y0:Integer;//fC
    X1:Integer;//f10
    Y1:Integer;//f14
    procedure Check;//005698B8
    procedure Activate(x:Integer; y:Integer);//005698E4
  end;
  TTeeBackImageMode = (pbmStretch, pbmTile, pbmCenter);
  TCustomTeePanel = class(TCustomPanel)
  public
    F3DPercent:Integer;//f220
    FApplyZOrder:Boolean;//f224
    FChartBounds:TRect;//f225
    FChartWidth:Integer;//f238
    FChartHeight:Integer;//f23C
    FChartXCenter:Integer;//f240
    FChartYCenter:Integer;//f244
    FDelphiCanvas:TCanvas;//f248
    FHeight3D:Integer;//f24C
    FMargins:TRect;//f250
    FOriginalCursor:TCursor;//f260
    FPanning:TZoomPanningRecord;//f264
    FPrinting:Boolean;//f268
    FPrintProportional:Boolean;//f269
    FPrintResolution:Integer;//f26C
    FView3D:Boolean;//f270
    FView3DOptions:TView3DOptions;//f274
    FWidth3D:Integer;//f278
    FZoom:TZoomPanningRecord;//f27C
    InternalCanvas:TCanvas3D;//f280
    AutoRepaint:Boolean;//f284
    CancelMouse:Boolean;//f285
    ChartRect:TRect;//f286
    PrintMargins:TRect;//f296
    destructor Destroy; virtual;//00568754
    procedure Assign(Source:TPersistent); virtual;//v8//00568F24
    procedure Loaded; virtual;//vC//00568B98
    constructor Create(AOwner:TComponent); virtual;//v2C//005685CC
    procedure Invalidate; virtual;//v7C//00568C08
    procedure CreateParams(var Params:TCreateParams); virtual;//v98//005687B4
    procedure Paint; virtual;//vC4//00568930
    procedure InternalDraw; virtual; abstract;//vC8//0066AC84
    procedure CanvasChanged(Sender:TObject); virtual;//vCC//005687A8
    procedure Draw(UserCanvas:TCanvas; const UserRect:TRect); virtual;//vD0//005687EC
    procedure DrawPanelBevels(Rect:TRect); virtual;//vD4//00569000
    procedure FontCanvas(SourceFont:TFont); virtual;//vD8//005689F0
    function GetRectangle:TRect; virtual;//vDC//00568EF8
    procedure WMEraseBkgnd(var Message:TWMEraseBkgnd); message WM_ERASEBKGND;//00568BEC
    procedure WMGetDlgCode(var Message:TWMGetDlgCode); message WM_GETDLGCODE;//00568BDC
    procedure CMMouseLeave(var Message:TMessage); message CM_MOUSELEAVE;//00568BB0
    procedure SetView3DOptions(Value:TView3DOptions);//005687CC
    procedure SetView3D(Value:Boolean);//005687DC
    procedure SetBrushCanvas(AColor:TColor; APattern:TBrushStyle; ABackColor:TColor);//00568974
    function CanClip:Boolean;//00568A0C
    procedure Set3DPercent(Value:Integer);//00568A68
    procedure SetLongintProperty(var Variable:Integer; Value:Integer);//00568AF8
    procedure SetStringProperty(var Variable:AnsiString; const Value:AnsiString);//00568B0C
    procedure SetDoubleProperty(var Variable:Double; const Value:Double);//00568B34
    procedure SetColorProperty(var Variable:TColor; Value:TColor);//00568B5C
    procedure SetBooleanProperty(var Variable:Boolean; Value:Boolean);//00568B70
    procedure SetIntegerProperty(var Variable:Integer; Value:Integer);//00568B84
    function MultiLineTextWidth(S:AnsiString; var NumLines:Integer):Integer;//00568C34
    function GetMargin(Index:Integer):Integer;//00568D70
    procedure SetMargin(Index:Integer; Value:Integer);//00568D90
    function GetBufferedDisplay:Boolean;//00568DCC
    procedure SetBufferedDisplay(Value:Boolean);//00568DD8
    procedure ReCalcWidthHeight;//00568DE4
    procedure DrawZoomRectangle;//00568E78
    function GetMonochrome:Boolean;//00568F0C
    procedure SetMonochrome(Value:Boolean);//00568F18
    procedure CheckPenWidth(APen:TPen);//00568FD0
  end;
  TPanningMode = (pmNone, pmHorizontal, pmVertical, pmBoth);
  TCustomTeeGradient = class(TPersistent)
  public
    FDirection:TGradientDirection;//f4
    FEndColor:TColor;//f8
    FOwner:TCustomTeePanel;//fC
    FStartColor:TColor;//f10
    FVisible:Boolean;//f14
    procedure Assign(Source:TPersistent); virtual;//v8//00569788
    constructor Create(AOwner:TCustomTeePanel);//005696B8
    procedure SetVisible(Value:Boolean);//00569708
    procedure SetDirection(Value:TGradientDirection);//00569728
    procedure SetStartColor(Value:TColor);//00569748
    procedure SetEndColor(Value:TColor);//00569768
  end;
  TChartGradient = class(TCustomTeeGradient)
  end;
  TCustomTeePanelExtended = class(TCustomTeePanel)
  public
    FAnimatedZoomSteps:Integer;//f2A8
    FAnimatedZoom:Boolean;//f2AC
    FAllowZoom:Boolean;//f2AD
    FAllowPanning:TPanningMode;//f2AE
    FBackImage:TPicture;//f2B0
    FBackImageMode:TTeeBackImageMode;//f2B4
    FGradient:TChartGradient;//f2B8
    FZoomed:Boolean;//f2BC
    FOnAfterDraw:TNotifyEvent;//f2C0
    FOnScroll:TNotifyEvent;//f2C8
    FOnUndoZoom:TNotifyEvent;//f2D0
    FOnZoom:TNotifyEvent;//f2D8
    destructor Destroy; virtual;//005691E8
    procedure Assign(Source:TPersistent); virtual;//v8//0056925C
    constructor Create(AOwner:TComponent); virtual;//v2C//00569154
    procedure DrawImage(const R:TRect); virtual;//vE0//005695CC
    procedure FillPanelRect(const Rect:TRect); virtual;//vE4//00569630
    procedure PanelPaint(const UserRect:TRect); virtual;//vE8//005695E0
    procedure UndoZoom; dynamic;//00569224
    procedure GetPalette; dynamic;//005692E4
    procedure SetAnimatedZoom(Value:Boolean);//00569108
    procedure SetAnimatedZoomSteps(Value:Integer);//00569118
    procedure SetBackImage(Value:TPicture);//00569128
    procedure SetBackImageMode(Value:TTeeBackImageMode);//00569138
    procedure SetGradient(Value:TChartGradient);//00569250
    procedure DrawBitmap(Rect:TRect; Z:Integer);//00569448
  end;
  TChartFontObject = class(TPersistent)
  public
    FParentChart:TCustomTeePanel;//f4
    FFont:TFont;//f8
    destructor Destroy; virtual;//00569834
    procedure Assign(Source:TPersistent); virtual;//v8//00569864
    constructor Create(AOwner:TCustomTeePanel);//005697C8
    function IsFontStored(Value:TFont):Boolean;//00569824
    procedure SetFont(Value:TFont);//00569898
    procedure Repaint;//005698A8
  end;
    procedure sub_00567B38;//00567B38
    function DateTimeDefaultFormat(const AStep:Double):AnsiString;//00568234
    function NextDateTimeStep(const AStep:Double):Double;//00568274
    function FindDateTimeStep(const StepValue:Double):TDateTimeStep;//005682BC
    //function sub_005682F0(?:?; ?:?):?;//005682F0
    procedure SwapInteger(var a:Integer; var b:Integer);//005682F8
    function GetScreenLogPixels:Integer;//00568304
    procedure CheckJapaneseFontSize(var ASize:Integer);//00568328
    function GetDefaultFontSize:Integer;//00568358
    function GetDefaultFontName:AnsiString;//005683B8
    function IsDefaultFont(AFont:TFont):Boolean;//00568404
    function CreateDefaultFont(ChangedEvent:TNotifyEvent):TFont;//005684AC
    function GetDefaultColor(t:Integer):TColor;//0056853C
    procedure TeeCheckAngle(Value:Integer; const Description:AnsiString);//00568554
    constructor Create(AOwner:TComponent);//005685CC
    destructor Destroy;//00568754
    procedure CanvasChanged(Sender:TObject);//005687A8
    procedure CreateParams(var Params:TCreateParams);//005687B4
    procedure Draw(UserCanvas:TCanvas; const UserRect:TRect);//005687EC
    procedure Paint;//00568930
    procedure FontCanvas(SourceFont:TFont);//005689F0
    procedure Loaded;//00568B98
    procedure CMMouseLeave(var Message:TMessage);//00568BB0
    procedure WMGetDlgCode(var Message:TWMGetDlgCode);//00568BDC
    procedure WMEraseBkgnd(var Message:TWMEraseBkgnd);//00568BEC
    procedure Invalidate;//00568C08
    function GetRectangle:TRect;//00568EF8
    procedure Assign(Source:TPersistent);//00568F24
    procedure DrawPanelBevels(Rect:TRect);//00569000
    constructor Create(AOwner:TComponent);//00569154
    destructor Destroy;//005691E8
    procedure UndoZoom;//00569224
    procedure Assign(Source:TPersistent);//0056925C
    procedure GetPalette;//005692E4
    procedure TileBitmap;//00569320
    procedure Calc3DRect;//005693C0
    procedure DrawImage(const R:TRect);//005695CC
    procedure PanelPaint(const UserRect:TRect);//005695E0
    procedure FillPanelRect(const Rect:TRect);//00569630
    procedure Assign(Source:TPersistent);//00569788
    destructor Destroy;//00569834
    procedure Assign(Source:TPersistent);//00569864
    function Dif(a:Integer; b:Integer):Boolean;//00569934
    function PointInLineTolerance(const P:TPoint; px:Integer; py:Integer; qx:Integer; qy:Integer; TolerancePixels:Integer):Boolean;//00569944
    function PointInLine(const P:TPoint; px:Integer; py:Integer; qx:Integer; qy:Integer):Boolean;//00569AD8
    function PointInPolygon(const P:TPoint; const Poly:array[$0..-$1] of Windows.TPoint; const _Dv_:$0..-$1):Boolean;//00569AF0
    function PointInTriangle(const P:TPoint; X0:Integer; X1:Integer; Y0:Integer; Y1:Integer):Boolean;//00569B88
    function PointInHorizTriangle(const P:TPoint; Y0:Integer; Y1:Integer; X0:Integer; X1:Integer):Boolean;//00569C08
    function PointInEllipse(const P:TPoint; const Rect:TRect):Boolean;//00569C88
    procedure TeeSplitInLines(var St:AnsiString; const Separator:AnsiString);//00569D34
    function TeeNumTextLines(St:AnsiString):Integer;//00569D64
    function TeeRoundDate(AStep:TDateTimeStep; const ADate:TDateTime):TDateTime;//00569E04
    procedure DecMonths(HowMany:Word);//00569EA4
    procedure IncMonths(HowMany:Word);//00569EE0
    procedure IncDecMonths(HowMany:Word);//00569F10
    procedure TeeDateTimeIncrement(IsDateTime:Boolean; Increment:Boolean; tmpWhichDateTime:TDateTimeStep; var Value:Double; const AnIncrement:Double);//00569F34
    function TeeNextStep(const OldStep:Double):Double;//0056A068
    function TryFindResource(const ResName:AnsiString):Boolean;//0056A138
    function LoadClassBitmap(HInstance:Integer; Data:Pointer):Boolean;//0056A1DC
    procedure TeeGetClassNameBitmap(AClass:TComponent; ABitmap:TBitmap);//0056A2D4

implementation

//00567B38
procedure sub_00567B38;
begin
{*
 00567B38    push        ebp
 00567B39    mov         ebp,esp
 00567B3B    add         esp,0FFFFFFF0
 00567B3E    sub         dword ptr ds:[6ECC8C],1
>00567B45    jae         00567B74
 00567B47    mov         eax,[0055C070];TChartAxisTitle
 00567B4C    mov         dword ptr [ebp-10],eax
 00567B4F    mov         eax,[0055C2D8];TChartAxis
 00567B54    mov         dword ptr [ebp-0C],eax
 00567B57    mov         eax,[0055C92C];TChartDepthAxis
 00567B5C    mov         dword ptr [ebp-8],eax
 00567B5F    mov         eax,[0055D40C];TSeriesMarks
 00567B64    mov         dword ptr [ebp-4],eax
 00567B67    lea         eax,[ebp-10]
 00567B6A    mov         edx,3
 00567B6F    call        006443A8
 00567B74    mov         esp,ebp
 00567B76    pop         ebp
 00567B77    ret
*}
end;

//00568234
function DateTimeDefaultFormat(const AStep:Double):AnsiString;
begin
{*
 00568234    push        ebp
 00568235    mov         ebp,esp
 00568237    push        ebx
 00568238    mov         ebx,eax
 0056823A    fld         qword ptr [ebp+8]
 0056823D    fcomp       dword ptr ds:[568270]
 00568243    fnstsw      al
 00568245    sahf
>00568246    ja          00568259
 00568248    mov         eax,ebx
 0056824A    mov         edx,dword ptr ds:[6EA110];^gvar_006ED030
 00568250    mov         edx,dword ptr [edx]
 00568252    call        @LStrAsg
>00568257    jmp         00568268
 00568259    mov         eax,ebx
 0056825B    mov         edx,dword ptr ds:[6EA108];^gvar_006ED01C
 00568261    mov         edx,dword ptr [edx]
 00568263    call        @LStrAsg
 00568268    pop         ebx
 00568269    pop         ebp
 0056826A    ret         8
*}
end;

//00568274
function NextDateTimeStep(const AStep:Double):Double;
begin
{*
 00568274    push        ebp
 00568275    mov         ebp,esp
 00568277    add         esp,0FFFFFFF8
 0056827A    mov         cl,0E8
 0056827C    mov         edx,6E3928
 00568281    fld         qword ptr [ebp+8]
 00568284    fcomp       qword ptr [edx]
 00568286    fnstsw      al
 00568288    sahf
>00568289    jb          00568299
 0056828B    mov         eax,dword ptr [edx+8]
 0056828E    mov         dword ptr [ebp-8],eax
 00568291    mov         eax,dword ptr [edx+0C]
 00568294    mov         dword ptr [ebp-4],eax
>00568297    jmp         005682B2
 00568299    sub         edx,8
 0056829C    inc         cl
>0056829E    jne         00568281
 005682A0    mov         eax,dword ptr ds:[6E3930]
 005682A6    mov         dword ptr [ebp-8],eax
 005682A9    mov         eax,dword ptr ds:[6E3934]
 005682AF    mov         dword ptr [ebp-4],eax
 005682B2    fld         qword ptr [ebp-8]
 005682B5    pop         ecx
 005682B6    pop         ecx
 005682B7    pop         ebp
 005682B8    ret         8
*}
end;

//005682BC
function FindDateTimeStep(const StepValue:Double):TDateTimeStep;
begin
{*
 005682BC    push        ebp
 005682BD    mov         ebp,esp
 005682BF    push        ebx
 005682C0    push        esi
 005682C1    mov         bl,18
 005682C3    mov         esi,6E3930
 005682C8    fld         qword ptr [esi]
 005682CA    fsub        qword ptr [ebp+8]
 005682CD    fabs
 005682CF    fcomp       qword ptr ds:[6E3870]
 005682D5    fnstsw      al
 005682D7    sahf
>005682D8    jae         005682DE
 005682DA    mov         eax,ebx
>005682DC    jmp         005682E9
 005682DE    dec         ebx
 005682DF    sub         esi,8
 005682E2    cmp         bl,0FF
>005682E5    jne         005682C8
 005682E7    mov         al,19
 005682E9    pop         esi
 005682EA    pop         ebx
 005682EB    pop         ebp
 005682EC    ret         8
*}
end;

//005682F0
{*function sub_005682F0(?:?; ?:?):?;
begin
 005682F0    cmp         edx,eax
>005682F2    jl          005682F6
 005682F4    mov         eax,edx
 005682F6    ret
end;*}

//005682F8
procedure SwapInteger(var a:Integer; var b:Integer);
begin
{*
 005682F8    push        ebx
 005682F9    mov         ecx,dword ptr [eax]
 005682FB    mov         ebx,dword ptr [edx]
 005682FD    mov         dword ptr [eax],ebx
 005682FF    mov         dword ptr [edx],ecx
 00568301    pop         ebx
 00568302    ret
*}
end;

//00568304
function GetScreenLogPixels:Integer;
begin
{*
 00568304    push        ebx
 00568305    push        esi
 00568306    push        0
 00568308    call        USER32.GetDC
 0056830D    mov         ebx,eax
 0056830F    push        5A
 00568311    push        ebx
 00568312    call        GDI32.GetDeviceCaps
 00568317    mov         esi,eax
 00568319    push        ebx
 0056831A    push        0
 0056831C    call        USER32.ReleaseDC
 00568321    mov         eax,esi
 00568323    pop         esi
 00568324    pop         ebx
 00568325    ret
*}
end;

//00568328
procedure CheckJapaneseFontSize(var ASize:Integer);
begin
{*
 00568328    push        ebx
 00568329    mov         ebx,eax
 0056832B    cmp         dword ptr [ebx],8
>0056832E    jne         00568355
 00568330    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 00568335    cmp         dword ptr [eax+4],11
>00568339    jne         00568355
 0056833B    call        GetScreenLogPixels
 00568340    push        eax
 00568341    push        48
 00568343    mov         eax,[006E9DC8];^gvar_006E3CC0
 00568348    mov         eax,dword ptr [eax+4]
 0056834B    push        eax
 0056834C    call        KERNEL32.MulDiv
 00568351    neg         eax
 00568353    mov         dword ptr [ebx],eax
 00568355    pop         ebx
 00568356    ret
*}
end;

//00568358
function GetDefaultFontSize:Integer;
begin
{*
 00568358    push        ebp
 00568359    mov         ebp,esp
 0056835B    add         esp,0FFFFFFF8
 0056835E    xor         eax,eax
 00568360    mov         dword ptr [ebp-8],eax
 00568363    xor         eax,eax
 00568365    push        ebp
 00568366    push        5683A7
 0056836B    push        dword ptr fs:[eax]
 0056836E    mov         dword ptr fs:[eax],esp
 00568371    lea         edx,[ebp-8]
 00568374    mov         eax,[006E9D84]
 00568379    call        LoadResString
 0056837E    mov         eax,dword ptr [ebp-8]
 00568381    call        StrToInt
 00568386    mov         dword ptr [ebp-4],eax
 00568389    lea         eax,[ebp-4]
 0056838C    call        CheckJapaneseFontSize
 00568391    xor         eax,eax
 00568393    pop         edx
 00568394    pop         ecx
 00568395    pop         ecx
 00568396    mov         dword ptr fs:[eax],edx
 00568399    push        5683AE
 0056839E    lea         eax,[ebp-8]
 005683A1    call        @LStrClr
 005683A6    ret
>005683A7    jmp         @HandleFinally
>005683AC    jmp         0056839E
 005683AE    mov         eax,dword ptr [ebp-4]
 005683B1    pop         ecx
 005683B2    pop         ecx
 005683B3    pop         ebp
 005683B4    ret
*}
end;

//005683B8
function GetDefaultFontName:AnsiString;
begin
{*
 005683B8    push        ebx
 005683B9    mov         ebx,eax
 005683BB    mov         edx,ebx
 005683BD    mov         eax,[006E9DA4]
 005683C2    call        LoadResString
 005683C7    mov         eax,dword ptr [ebx]
 005683C9    mov         edx,5683FC;'Arial'
 005683CE    call        @LStrCmp
>005683D3    jne         005683F0
 005683D5    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005683DA    cmp         dword ptr [eax+4],11
>005683DE    jne         005683F0
 005683E0    mov         eax,ebx
 005683E2    mov         edx,dword ptr ds:[6E9DC8];^gvar_006E3CC0
 005683E8    add         edx,0B
 005683EB    call        @LStrFromString
 005683F0    pop         ebx
 005683F1    ret
*}
end;

//00568404
function IsDefaultFont(AFont:TFont):Boolean;
begin
{*
 00568404    push        ebp
 00568405    mov         ebp,esp
 00568407    push        0
 00568409    push        0
 0056840B    push        ebx
 0056840C    push        esi
 0056840D    mov         ebx,eax
 0056840F    xor         eax,eax
 00568411    push        ebp
 00568412    push        568498
 00568417    push        dword ptr fs:[eax]
 0056841A    mov         dword ptr fs:[eax],esp
 0056841D    mov         eax,ebx
 0056841F    call        TFont.GetSize
 00568424    mov         esi,eax
 00568426    call        GetDefaultFontSize
 0056842B    cmp         esi,eax
>0056842D    jne         00568472
 0056842F    lea         edx,[ebp-4]
 00568432    mov         eax,ebx
 00568434    call        TFont.GetName
 00568439    mov         eax,dword ptr [ebp-4]
 0056843C    push        eax
 0056843D    lea         eax,[ebp-8]
 00568440    call        GetDefaultFontName
 00568445    mov         edx,dword ptr [ebp-8]
 00568448    pop         eax
 00568449    call        @LStrCmp
>0056844E    jne         00568472
 00568450    cmp         dword ptr [ebx+18],0
>00568454    jne         00568472
 00568456    mov         eax,ebx
 00568458    call        TFont.GetStyle
 0056845D    mov         dl,byte ptr ds:[5684A8]
 00568463    cmp         dl,al
>00568465    jne         00568472
 00568467    mov         eax,ebx
 00568469    call        TFont.GetCharset
 0056846E    cmp         al,1
>00568470    je          00568476
 00568472    xor         eax,eax
>00568474    jmp         00568478
 00568476    mov         al,1
 00568478    mov         ebx,eax
 0056847A    xor         eax,eax
 0056847C    pop         edx
 0056847D    pop         ecx
 0056847E    pop         ecx
 0056847F    mov         dword ptr fs:[eax],edx
 00568482    push        56849F
 00568487    lea         eax,[ebp-8]
 0056848A    call        @LStrClr
 0056848F    lea         eax,[ebp-4]
 00568492    call        @LStrClr
 00568497    ret
>00568498    jmp         @HandleFinally
>0056849D    jmp         00568487
 0056849F    mov         eax,ebx
 005684A1    pop         esi
 005684A2    pop         ebx
 005684A3    pop         ecx
 005684A4    pop         ecx
 005684A5    pop         ebp
 005684A6    ret
*}
end;

//005684AC
function CreateDefaultFont(ChangedEvent:TNotifyEvent):TFont;
begin
{*
 005684AC    push        ebp
 005684AD    mov         ebp,esp
 005684AF    push        0
 005684B1    push        ebx
 005684B2    xor         eax,eax
 005684B4    push        ebp
 005684B5    push        568526
 005684BA    push        dword ptr fs:[eax]
 005684BD    mov         dword ptr fs:[eax],esp
 005684C0    mov         dl,1
 005684C2    mov         eax,[005BE498];TFont
 005684C7    call        TFont.Create
 005684CC    mov         ebx,eax
 005684CE    lea         eax,[ebp-4]
 005684D1    call        GetDefaultFontName
 005684D6    mov         edx,dword ptr [ebp-4]
 005684D9    mov         eax,ebx
 005684DB    call        TFont.SetName
 005684E0    call        GetDefaultFontSize
 005684E5    mov         edx,eax
 005684E7    mov         eax,ebx
 005684E9    call        TFont.SetSize
 005684EE    xor         edx,edx
 005684F0    mov         eax,ebx
 005684F2    call        TFont.SetColor
 005684F7    mov         dl,byte ptr ds:[568538]
 005684FD    mov         eax,ebx
 005684FF    call        TFont.SetStyle
 00568504    mov         eax,dword ptr [ebp+8]
 00568507    mov         dword ptr [ebx+8],eax
 0056850A    mov         eax,dword ptr [ebp+0C]
 0056850D    mov         dword ptr [ebx+0C],eax
 00568510    xor         eax,eax
 00568512    pop         edx
 00568513    pop         ecx
 00568514    pop         ecx
 00568515    mov         dword ptr fs:[eax],edx
 00568518    push        56852D
 0056851D    lea         eax,[ebp-4]
 00568520    call        @LStrClr
 00568525    ret
>00568526    jmp         @HandleFinally
>0056852B    jmp         0056851D
 0056852D    mov         eax,ebx
 0056852F    pop         ebx
 00568530    pop         ecx
 00568531    pop         ebp
 00568532    ret         8
*}
end;

//0056853C
function GetDefaultColor(t:Integer):TColor;
begin
{*
 0056853C    and         eax,8000000F
>00568541    jns         00568548
 00568543    dec         eax
 00568544    or          eax,0FFFFFFF0
 00568547    inc         eax
 00568548    inc         eax
 00568549    mov         eax,dword ptr [eax*4+6E3818]
 00568550    ret
*}
end;

//00568554
procedure TeeCheckAngle(Value:Integer; const Description:AnsiString);
begin
{*
 00568554    push        ebp
 00568555    mov         ebp,esp
 00568557    add         esp,0FFFFFFF4
 0056855A    push        ebx
 0056855B    xor         ecx,ecx
 0056855D    mov         dword ptr [ebp-0C],ecx
 00568560    mov         ebx,edx
 00568562    xor         edx,edx
 00568564    push        ebp
 00568565    push        5685BF
 0056856A    push        dword ptr fs:[edx]
 0056856D    mov         dword ptr fs:[edx],esp
 00568570    test        eax,eax
>00568572    jl          0056857B
 00568574    cmp         eax,168
>00568579    jle         005685A9
 0056857B    mov         dword ptr [ebp-8],ebx
 0056857E    mov         byte ptr [ebp-4],0B
 00568582    lea         eax,[ebp-8]
 00568585    push        eax
 00568586    push        0
 00568588    lea         edx,[ebp-0C]
 0056858B    mov         eax,[006E9CF4];^gvar_0056EE88
 00568590    call        LoadResString
 00568595    mov         ecx,dword ptr [ebp-0C]
 00568598    mov         dl,1
 0056859A    mov         eax,[00567B78];ChartException
 0056859F    call        Exception.CreateFmt
 005685A4    call        @RaiseExcept
 005685A9    xor         eax,eax
 005685AB    pop         edx
 005685AC    pop         ecx
 005685AD    pop         ecx
 005685AE    mov         dword ptr fs:[eax],edx
 005685B1    push        5685C6
 005685B6    lea         eax,[ebp-0C]
 005685B9    call        @LStrClr
 005685BE    ret
>005685BF    jmp         @HandleFinally
>005685C4    jmp         005685B6
 005685C6    pop         ebx
 005685C7    mov         esp,ebp
 005685C9    pop         ebp
 005685CA    ret
*}
end;

//005685CC
constructor TCustomTeePanel.Create(AOwner:TComponent);
begin
{*
 005685CC    push        ebp
 005685CD    mov         ebp,esp
 005685CF    add         esp,0FFFFFFEC
 005685D2    push        ebx
 005685D3    push        esi
 005685D4    push        edi
 005685D5    test        dl,dl
>005685D7    je          005685E1
 005685D9    add         esp,0FFFFFFF0
 005685DC    call        @ClassCreate
 005685E1    mov         byte ptr [ebp-1],dl
 005685E4    mov         ebx,eax
 005685E6    xor         eax,eax
 005685E8    mov         dword ptr [ebx+280],eax
 005685EE    xor         edx,edx
 005685F0    mov         eax,ebx
 005685F2    call        TCustomPanel.Create
 005685F7    mov         eax,[00568750]
 005685FC    not         eax
 005685FE    and         eax,dword ptr [ebx+50]
 00568601    mov         dword ptr [ebx+50],eax
 00568604    mov         edx,190
 00568609    mov         eax,ebx
 0056860B    call        TControl.SetWidth
 00568610    mov         edx,0FA
 00568615    mov         eax,ebx
 00568617    call        TControl.SetHeight
 0056861C    mov         dword ptr [ebx+220],0F
 00568626    mov         byte ptr [ebx+284],0
 0056862D    mov         byte ptr [ebx+224],1
 00568634    mov         eax,dword ptr [ebx+208]
 0056863A    mov         dword ptr [ebx+248],eax
 00568640    mov         byte ptr [ebx+270],1
 00568647    mov         ecx,ebx
 00568649    mov         dl,1
 0056864B    mov         eax,[0056A7F4];TView3DOptions
 00568650    call        TView3DOptions.Create
 00568655    mov         dword ptr [ebx+274],eax
 0056865B    mov         dl,1
 0056865D    mov         eax,[0056ACC4];TTeeCanvas3D
 00568662    call        TTeeCanvas3D.Create
 00568667    mov         esi,eax
 00568669    mov         dword ptr [ebx+280],esi
 0056866F    mov         edx,dword ptr [ebx+248]
 00568675    mov         eax,esi
 00568677    call        TTeeCanvas.SetCanvas
 0056867C    push        4
 0056867E    lea         eax,[ebp-14]
 00568681    push        eax
 00568682    mov         ecx,3
 00568687    mov         edx,4
 0056868C    mov         eax,3
 00568691    call        Rect
 00568696    lea         esi,[ebp-14]
 00568699    lea         edi,[ebx+250]
 0056869F    movs        dword ptr [edi],dword ptr [esi]
 005686A0    movs        dword ptr [edi],dword ptr [esi]
 005686A1    movs        dword ptr [edi],dword ptr [esi]
 005686A2    movs        dword ptr [edi],dword ptr [esi]
 005686A3    mov         byte ptr [ebx+268],0
 005686AA    mov         byte ptr [ebx+269],1
 005686B1    xor         eax,eax
 005686B3    mov         dword ptr [ebx+26C],eax
 005686B9    push        0F
 005686BB    lea         eax,[ebp-14]
 005686BE    push        eax
 005686BF    mov         ecx,0F
 005686C4    mov         edx,0F
 005686C9    mov         eax,0F
 005686CE    call        Rect
 005686D3    lea         esi,[ebp-14]
 005686D6    lea         edi,[ebx+296]
 005686DC    movs        dword ptr [edi],dword ptr [esi]
 005686DD    movs        dword ptr [edi],dword ptr [esi]
 005686DE    movs        dword ptr [edi],dword ptr [esi]
 005686DF    movs        dword ptr [edi],dword ptr [esi]
 005686E0    mov         ax,word ptr [ebx+78]
 005686E4    mov         word ptr [ebx+260],ax
 005686EB    mov         dl,1
 005686ED    mov         eax,[00567BD4];TZoomPanningRecord
 005686F2    call        TObject.Create
 005686F7    mov         dword ptr [ebx+27C],eax
 005686FD    mov         dl,1
 005686FF    mov         eax,[00567BD4];TZoomPanningRecord
 00568704    call        TObject.Create
 00568709    mov         dword ptr [ebx+264],eax
 0056870F    cmp         byte ptr ds:[6E3868],0
>00568716    je          00568726
 00568718    test        byte ptr [ebx+1C],10
 0056871C    setne       al
 0056871F    xor         al,1
 00568721    mov         [006E3868],al
 00568726    mov         byte ptr [ebx+284],1
 0056872D    mov         eax,ebx
 0056872F    cmp         byte ptr [ebp-1],0
>00568733    je          00568744
 00568735    call        @AfterConstruction
 0056873A    pop         dword ptr fs:[0]
 00568741    add         esp,0C
 00568744    mov         eax,ebx
 00568746    pop         edi
 00568747    pop         esi
 00568748    pop         ebx
 00568749    mov         esp,ebp
 0056874B    pop         ebp
 0056874C    ret
*}
end;

//00568754
destructor TCustomTeePanel.Destroy;
begin
{*
 00568754    push        ebx
 00568755    push        esi
 00568756    call        @BeforeDestruction
 0056875B    mov         ebx,edx
 0056875D    mov         esi,eax
 0056875F    lea         eax,[esi+280]
 00568765    call        FreeAndNil
 0056876A    mov         eax,dword ptr [esi+274]
 00568770    call        TObject.Free
 00568775    mov         eax,dword ptr [esi+27C]
 0056877B    call        TObject.Free
 00568780    mov         eax,dword ptr [esi+264]
 00568786    call        TObject.Free
 0056878B    mov         edx,ebx
 0056878D    and         dl,0FC
 00568790    mov         eax,esi
 00568792    call        TCustomControl.Destroy
 00568797    test        bl,bl
>00568799    jle         005687A2
 0056879B    mov         eax,esi
 0056879D    call        @ClassDestroy
 005687A2    pop         esi
 005687A3    pop         ebx
 005687A4    ret
*}
end;

//005687A8
procedure TCustomTeePanel.CanvasChanged(Sender:TObject);
begin
{*
 005687A8    push        esi
 005687A9    mov         esi,eax
 005687AB    mov         eax,esi
 005687AD    mov         edx,dword ptr [eax]
 005687AF    call        dword ptr [edx+7C]
 005687B2    pop         esi
 005687B3    ret
*}
end;

//005687B4
procedure TCustomTeePanel.CreateParams(var Params:TCreateParams);
begin
{*
 005687B4    push        ebx
 005687B5    mov         ebx,eax
 005687B7    mov         eax,ebx
 005687B9    call        TCustomPanel.CreateParams
 005687BE    mov         eax,dword ptr [ebx+280]
 005687C4    xor         edx,edx
 005687C6    mov         dword ptr [eax+18],edx
 005687C9    pop         ebx
 005687CA    ret
*}
end;

//005687CC
procedure TCustomTeePanel.SetView3DOptions(Value:TView3DOptions);
begin
{*
 005687CC    push        esi
 005687CD    mov         esi,eax
 005687CF    mov         eax,dword ptr [esi+274]
 005687D5    mov         ecx,dword ptr [eax]
 005687D7    call        dword ptr [ecx+8]
 005687DA    pop         esi
 005687DB    ret
*}
end;

//005687DC
procedure TCustomTeePanel.SetView3D(Value:Boolean);
begin
{*
 005687DC    lea         ecx,[eax+270]
 005687E2    xchg        ecx,edx
 005687E4    call        TCustomTeePanel.SetBooleanProperty
 005687E9    ret
*}
end;

//005687EC
procedure TCustomTeePanel.Draw(UserCanvas:TCanvas; const UserRect:TRect);
begin
{*
 005687EC    push        ebx
 005687ED    push        esi
 005687EE    push        edi
 005687EF    add         esp,0FFFFFFE4
 005687F2    mov         dword ptr [esp],ecx
 005687F5    mov         edi,edx
 005687F7    mov         ebx,eax
 005687F9    mov         eax,dword ptr [ebx+70]
 005687FC    push        eax
 005687FD    mov         al,byte ptr [ebx+270]
 00568803    push        eax
 00568804    mov         eax,dword ptr [esp+8]
 00568808    push        eax
 00568809    lea         eax,[esp+18]
 0056880D    push        eax
 0056880E    mov         ecx,dword ptr [ebx+274]
 00568814    mov         edx,edi
 00568816    mov         eax,dword ptr [ebx+280]
 0056881C    mov         esi,dword ptr [eax]
 0056881E    call        dword ptr [esi+0A8]
 00568824    push        edi
 00568825    lea         esi,[esp+10]
 00568829    lea         edi,[ebx+225]
 0056882F    movs        dword ptr [edi],dword ptr [esi]
 00568830    movs        dword ptr [edi],dword ptr [esi]
 00568831    movs        dword ptr [edi],dword ptr [esi]
 00568832    movs        dword ptr [edi],dword ptr [esi]
 00568833    pop         edi
 00568834    lea         ecx,[esp+8]
 00568838    lea         edx,[esp+4]
 0056883C    lea         eax,[ebx+225]
 00568842    call        RectSize
 00568847    lea         esi,[ebx+225]
 0056884D    push        64
 0056884F    mov         eax,dword ptr [esp+0C]
 00568853    push        eax
 00568854    mov         edx,3
 00568859    mov         eax,ebx
 0056885B    call        TCustomTeePanel.GetMargin
 00568860    push        eax
 00568861    call        KERNEL32.MulDiv
 00568866    mov         edx,dword ptr [esi+0C]
 00568869    sub         edx,dword ptr [ebx+218]
 0056886F    sub         edx,eax
 00568871    push        edx
 00568872    lea         eax,[esp+10]
 00568876    push        eax
 00568877    push        64
 00568879    mov         eax,dword ptr [esp+10]
 0056887D    push        eax
 0056887E    mov         edx,2
 00568883    mov         eax,ebx
 00568885    call        TCustomTeePanel.GetMargin
 0056888A    push        eax
 0056888B    call        KERNEL32.MulDiv
 00568890    mov         edx,dword ptr [esi+8]
 00568893    sub         edx,dword ptr [ebx+218]
 00568899    sub         edx,eax
 0056889B    push        edx
 0056889C    push        64
 0056889E    mov         eax,dword ptr [esp+18]
 005688A2    push        eax
 005688A3    mov         edx,1
 005688A8    mov         eax,ebx
 005688AA    call        TCustomTeePanel.GetMargin
 005688AF    push        eax
 005688B0    call        KERNEL32.MulDiv
 005688B5    mov         edx,dword ptr [esi+4]
 005688B8    add         edx,dword ptr [ebx+218]
 005688BE    add         eax,edx
 005688C0    push        eax
 005688C1    push        64
 005688C3    mov         eax,dword ptr [esp+18]
 005688C7    push        eax
 005688C8    xor         edx,edx
 005688CA    mov         eax,ebx
 005688CC    call        TCustomTeePanel.GetMargin
 005688D1    push        eax
 005688D2    call        KERNEL32.MulDiv
 005688D7    mov         edx,dword ptr [esi]
 005688D9    add         edx,dword ptr [ebx+218]
 005688DF    add         eax,edx
 005688E1    pop         edx
 005688E2    pop         ecx
 005688E3    call        Rect
 005688E8    push        edi
 005688E9    lea         esi,[esp+10]
 005688ED    lea         edi,[ebx+286]
 005688F3    movs        dword ptr [edi],dword ptr [esi]
 005688F4    movs        dword ptr [edi],dword ptr [esi]
 005688F5    movs        dword ptr [edi],dword ptr [esi]
 005688F6    movs        dword ptr [edi],dword ptr [esi]
 005688F7    pop         edi
 005688F8    mov         eax,ebx
 005688FA    call        TCustomTeePanel.ReCalcWidthHeight
 005688FF    lea         edx,[ebx+225]
 00568905    mov         eax,ebx
 00568907    mov         ecx,dword ptr [eax]
 00568909    call        dword ptr [ecx+0C8]
 0056890F    mov         eax,dword ptr [esp]
 00568912    push        eax
 00568913    mov         ecx,dword ptr [ebx+248]
 00568919    mov         edx,edi
 0056891B    mov         eax,dword ptr [ebx+280]
 00568921    mov         ebx,dword ptr [eax]
 00568923    call        dword ptr [ebx+0B4]
 00568929    add         esp,1C
 0056892C    pop         edi
 0056892D    pop         esi
 0056892E    pop         ebx
 0056892F    ret
*}
end;

//00568930
procedure TCustomTeePanel.Paint;
begin
{*
 00568930    push        ebx
 00568931    add         esp,0FFFFFFF0
 00568934    mov         ebx,eax
 00568936    cmp         byte ptr [ebx+268],0
>0056893D    jne         0056896C
 0056893F    mov         eax,dword ptr [ebx+280]
 00568945    mov         edx,dword ptr [eax]
 00568947    call        dword ptr [edx+0B8]
 0056894D    test        al,al
>0056894F    jne         0056896C
 00568951    mov         edx,esp
 00568953    mov         eax,ebx
 00568955    mov         ecx,dword ptr [eax]
 00568957    call        dword ptr [ecx+44]
 0056895A    mov         ecx,esp
 0056895C    mov         edx,dword ptr [ebx+248]
 00568962    mov         eax,ebx
 00568964    mov         ebx,dword ptr [eax]
 00568966    call        dword ptr [ebx+0D0]
 0056896C    add         esp,10
 0056896F    pop         ebx
 00568970    ret
*}
end;

//00568974
procedure TCustomTeePanel.SetBrushCanvas(AColor:TColor; APattern:TBrushStyle; ABackColor:TColor);
begin
{*
 00568974    push        ebp
 00568975    mov         ebp,esp
 00568977    push        ebx
 00568978    push        esi
 00568979    mov         ebx,ecx
 0056897B    mov         esi,dword ptr [eax+280]
 00568981    test        bl,bl
>00568983    je          005689A5
 00568985    cmp         edx,dword ptr [ebp+8]
>00568988    jne         005689A5
 0056898A    cmp         dword ptr [ebp+8],0
 0056898E    sete        al
 00568991    and         eax,7F
 00568994    mov         edx,dword ptr [eax*4+6E3940]
 0056899B    mov         eax,dword ptr [esi+10]
 0056899E    call        TBrush.SetColor
>005689A3    jmp         005689AD
 005689A5    mov         eax,dword ptr [esi+10]
 005689A8    call        TBrush.SetColor
 005689AD    mov         edx,ebx
 005689AF    mov         eax,dword ptr [esi+10]
 005689B2    call        TBrush.SetStyle
 005689B7    mov         eax,dword ptr [esi+10]
 005689BA    call        TBrush.GetHandle
 005689BF    test        bl,bl
>005689C1    jne         005689CE
 005689C3    mov         dl,1
 005689C5    mov         eax,esi
 005689C7    mov         ecx,dword ptr [eax]
 005689C9    call        dword ptr [ecx+1C]
>005689CC    jmp         005689E8
 005689CE    mov         dl,2
 005689D0    mov         eax,esi
 005689D2    mov         ecx,dword ptr [eax]
 005689D4    call        dword ptr [ecx+1C]
 005689D7    mov         eax,dword ptr [ebp+8]
 005689DA    call        ColorToRGB
 005689DF    mov         edx,eax
 005689E1    mov         eax,esi
 005689E3    mov         ecx,dword ptr [eax]
 005689E5    call        dword ptr [ecx+18]
 005689E8    pop         esi
 005689E9    pop         ebx
 005689EA    pop         ebp
 005689EB    ret         4
*}
end;

//005689F0
procedure TCustomTeePanel.FontCanvas(SourceFont:TFont);
begin
{*
 005689F0    push        esi
 005689F1    mov         eax,dword ptr [eax+280]
 005689F7    mov         esi,dword ptr [eax+8]
 005689FA    mov         eax,dword ptr [esi+1C]
 005689FD    mov         dword ptr [edx+1C],eax
 00568A00    mov         eax,esi
 00568A02    mov         ecx,dword ptr [eax]
 00568A04    call        dword ptr [ecx+8]
 00568A07    pop         esi
 00568A08    ret
*}
end;

//00568A0C
function TCustomTeePanel.CanClip:Boolean;
begin
{*
 00568A0C    push        ebx
 00568A0D    mov         ebx,eax
 00568A0F    mov         eax,dword ptr [ebx+280]
 00568A15    mov         edx,dword ptr [eax]
 00568A17    call        dword ptr [edx+98]
 00568A1D    test        al,al
>00568A1F    jne         00568A5D
 00568A21    cmp         byte ptr [ebx+268],0
>00568A28    jne         00568A36
 00568A2A    mov         eax,dword ptr [ebx+280]
 00568A30    cmp         byte ptr [eax+14],0
>00568A34    je          00568A61
 00568A36    cmp         byte ptr [ebx+268],0
>00568A3D    je          00568A48
 00568A3F    cmp         byte ptr ds:[6E3860],0
>00568A46    jne         00568A61
 00568A48    mov         eax,dword ptr [ebx+280]
 00568A4E    cmp         byte ptr [eax+14],0
>00568A52    je          00568A5D
 00568A54    cmp         byte ptr ds:[6E3864],0
>00568A5B    jne         00568A61
 00568A5D    xor         eax,eax
 00568A5F    pop         ebx
 00568A60    ret
 00568A61    mov         al,1
 00568A63    pop         ebx
 00568A64    ret
*}
end;

//00568A68
procedure TCustomTeePanel.Set3DPercent(Value:Integer);
begin
{*
 00568A68    push        ebp
 00568A69    mov         ebp,esp
 00568A6B    add         esp,0FFFFFFEC
 00568A6E    xor         ecx,ecx
 00568A70    mov         dword ptr [ebp-14],ecx
 00568A73    xor         ecx,ecx
 00568A75    push        ebp
 00568A76    push        568AED
 00568A7B    push        dword ptr fs:[ecx]
 00568A7E    mov         dword ptr fs:[ecx],esp
 00568A81    cmp         edx,1
>00568A84    jl          00568A8B
 00568A86    cmp         edx,64
>00568A89    jle         00568ACA
 00568A8B    mov         dword ptr [ebp-10],1
 00568A92    mov         byte ptr [ebp-0C],0
 00568A96    mov         dword ptr [ebp-8],64
 00568A9D    mov         byte ptr [ebp-4],0
 00568AA1    lea         eax,[ebp-10]
 00568AA4    push        eax
 00568AA5    push        1
 00568AA7    lea         edx,[ebp-14]
 00568AAA    mov         eax,[006E9D18]
 00568AAF    call        LoadResString
 00568AB4    mov         ecx,dword ptr [ebp-14]
 00568AB7    mov         dl,1
 00568AB9    mov         eax,[00567B78];ChartException
 00568ABE    call        Exception.CreateFmt
 00568AC3    call        @RaiseExcept
>00568AC8    jmp         00568AD7
 00568ACA    lea         ecx,[eax+220]
 00568AD0    xchg        ecx,edx
 00568AD2    call        TCustomTeePanel.SetIntegerProperty
 00568AD7    xor         eax,eax
 00568AD9    pop         edx
 00568ADA    pop         ecx
 00568ADB    pop         ecx
 00568ADC    mov         dword ptr fs:[eax],edx
 00568ADF    push        568AF4
 00568AE4    lea         eax,[ebp-14]
 00568AE7    call        @LStrClr
 00568AEC    ret
>00568AED    jmp         @HandleFinally
>00568AF2    jmp         00568AE4
 00568AF4    mov         esp,ebp
 00568AF6    pop         ebp
 00568AF7    ret
*}
end;

//00568AF8
procedure TCustomTeePanel.SetLongintProperty(var Variable:Integer; Value:Integer);
begin
{*
 00568AF8    push        esi
 00568AF9    mov         esi,eax
 00568AFB    cmp         ecx,dword ptr [edx]
>00568AFD    je          00568B08
 00568AFF    mov         dword ptr [edx],ecx
 00568B01    mov         eax,esi
 00568B03    mov         edx,dword ptr [eax]
 00568B05    call        dword ptr [edx+7C]
 00568B08    pop         esi
 00568B09    ret
*}
end;

//00568B0C
procedure TCustomTeePanel.SetStringProperty(var Variable:AnsiString; const Value:AnsiString);
begin
{*
 00568B0C    push        ebx
 00568B0D    push        esi
 00568B0E    push        edi
 00568B0F    mov         edi,ecx
 00568B11    mov         ebx,edx
 00568B13    mov         esi,eax
 00568B15    mov         eax,dword ptr [ebx]
 00568B17    mov         edx,edi
 00568B19    call        @LStrCmp
>00568B1E    je          00568B30
 00568B20    mov         eax,ebx
 00568B22    mov         edx,edi
 00568B24    call        @LStrAsg
 00568B29    mov         eax,esi
 00568B2B    mov         edx,dword ptr [eax]
 00568B2D    call        dword ptr [edx+7C]
 00568B30    pop         edi
 00568B31    pop         esi
 00568B32    pop         ebx
 00568B33    ret
*}
end;

//00568B34
procedure TCustomTeePanel.SetDoubleProperty(var Variable:Double; const Value:Double);
begin
{*
 00568B34    push        ebp
 00568B35    mov         ebp,esp
 00568B37    push        esi
 00568B38    mov         esi,eax
 00568B3A    fld         qword ptr [edx]
 00568B3C    fcomp       qword ptr [ebp+8]
 00568B3F    fnstsw      al
 00568B41    sahf
>00568B42    je          00568B56
 00568B44    mov         eax,dword ptr [ebp+8]
 00568B47    mov         dword ptr [edx],eax
 00568B49    mov         eax,dword ptr [ebp+0C]
 00568B4C    mov         dword ptr [edx+4],eax
 00568B4F    mov         eax,esi
 00568B51    mov         edx,dword ptr [eax]
 00568B53    call        dword ptr [edx+7C]
 00568B56    pop         esi
 00568B57    pop         ebp
 00568B58    ret         8
*}
end;

//00568B5C
procedure TCustomTeePanel.SetColorProperty(var Variable:TColor; Value:TColor);
begin
{*
 00568B5C    push        esi
 00568B5D    mov         esi,eax
 00568B5F    cmp         ecx,dword ptr [edx]
>00568B61    je          00568B6C
 00568B63    mov         dword ptr [edx],ecx
 00568B65    mov         eax,esi
 00568B67    mov         edx,dword ptr [eax]
 00568B69    call        dword ptr [edx+7C]
 00568B6C    pop         esi
 00568B6D    ret
*}
end;

//00568B70
procedure TCustomTeePanel.SetBooleanProperty(var Variable:Boolean; Value:Boolean);
begin
{*
 00568B70    push        esi
 00568B71    mov         esi,eax
 00568B73    cmp         cl,byte ptr [edx]
>00568B75    je          00568B80
 00568B77    mov         byte ptr [edx],cl
 00568B79    mov         eax,esi
 00568B7B    mov         edx,dword ptr [eax]
 00568B7D    call        dword ptr [edx+7C]
 00568B80    pop         esi
 00568B81    ret
*}
end;

//00568B84
procedure TCustomTeePanel.SetIntegerProperty(var Variable:Integer; Value:Integer);
begin
{*
 00568B84    push        esi
 00568B85    mov         esi,eax
 00568B87    cmp         ecx,dword ptr [edx]
>00568B89    je          00568B94
 00568B8B    mov         dword ptr [edx],ecx
 00568B8D    mov         eax,esi
 00568B8F    mov         edx,dword ptr [eax]
 00568B91    call        dword ptr [edx+7C]
 00568B94    pop         esi
 00568B95    ret
*}
end;

//00568B98
procedure TCustomTeePanel.Loaded;
begin
{*
 00568B98    push        ebx
 00568B99    mov         ebx,eax
 00568B9B    mov         eax,ebx
 00568B9D    call        TControl.Loaded
 00568BA2    mov         ax,word ptr [ebx+78]
 00568BA6    mov         word ptr [ebx+260],ax
 00568BAD    pop         ebx
 00568BAE    ret
*}
end;

//00568BB0
procedure TCustomTeePanel.CMMouseLeave(var Message:TMessage);
begin
{*
 00568BB0    push        ebx
 00568BB1    push        esi
 00568BB2    mov         esi,edx
 00568BB4    mov         ebx,eax
 00568BB6    mov         dx,word ptr [ebx+260]
 00568BBD    mov         eax,ebx
 00568BBF    call        TControl.SetCursor
 00568BC4    mov         eax,dword ptr [ebx+264]
 00568BCA    mov         byte ptr [eax+4],0
 00568BCE    mov         edx,esi
 00568BD0    mov         eax,ebx
 00568BD2    call        TControl.CMMouseLeave
 00568BD7    pop         esi
 00568BD8    pop         ebx
 00568BD9    ret
*}
end;

//00568BDC
procedure TCustomTeePanel.WMGetDlgCode(var Message:TWMGetDlgCode);
begin
{*
 00568BDC    push        esi
 00568BDD    mov         esi,edx
 00568BDF    mov         edx,esi
 00568BE1    mov         ecx,dword ptr [eax]
 00568BE3    call        dword ptr [ecx-10]
 00568BE6    or          dword ptr [esi+0C],1
 00568BEA    pop         esi
 00568BEB    ret
*}
end;

//00568BEC
procedure TCustomTeePanel.WMEraseBkgnd(var Message:TWMEraseBkgnd);
begin
{*
 00568BEC    push        ebx
 00568BED    mov         ebx,edx
 00568BEF    cmp         byte ptr ds:[6E3868],0
>00568BF6    je          00568BFF
 00568BF8    mov         edx,ebx
 00568BFA    call        TWinControl.WMEraseBkgnd
 00568BFF    mov         dword ptr [ebx+0C],1
 00568C06    pop         ebx
 00568C07    ret
*}
end;

//00568C08
procedure TCustomTeePanel.Invalidate;
begin
{*
 00568C08    push        ebx
 00568C09    push        esi
 00568C0A    mov         ebx,eax
 00568C0C    cmp         byte ptr [ebx+284],0
>00568C13    je          00568C30
 00568C15    mov         esi,dword ptr [ebx+280]
 00568C1B    test        esi,esi
>00568C1D    je          00568C29
 00568C1F    mov         eax,esi
 00568C21    mov         edx,dword ptr [eax]
 00568C23    call        dword ptr [edx+80]
 00568C29    mov         eax,ebx
 00568C2B    call        TWinControl.Invalidate
 00568C30    pop         esi
 00568C31    pop         ebx
 00568C32    ret
*}
end;

//00568C34
function TCustomTeePanel.MultiLineTextWidth(S:AnsiString; var NumLines:Integer):Integer;
begin
{*
 00568C34    push        ebp
 00568C35    mov         ebp,esp
 00568C37    add         esp,0FFFFFFE8
 00568C3A    push        ebx
 00568C3B    push        esi
 00568C3C    xor         ebx,ebx
 00568C3E    mov         dword ptr [ebp-18],ebx
 00568C41    mov         dword ptr [ebp-14],ebx
 00568C44    mov         dword ptr [ebp-10],ebx
 00568C47    mov         dword ptr [ebp-0C],ecx
 00568C4A    mov         dword ptr [ebp-8],edx
 00568C4D    mov         dword ptr [ebp-4],eax
 00568C50    mov         eax,dword ptr [ebp-8]
 00568C53    call        @LStrAddRef
 00568C58    xor         eax,eax
 00568C5A    push        ebp
 00568C5B    push        568D60
 00568C60    push        dword ptr fs:[eax]
 00568C63    mov         dword ptr fs:[eax],esp
 00568C66    lea         eax,[ebp-10]
 00568C69    mov         dl,byte ptr ds:[6E385C]
 00568C6F    call        @LStrFromChar
 00568C74    mov         eax,dword ptr [ebp-10]
 00568C77    mov         edx,dword ptr [ebp-8]
 00568C7A    call        @LStrPos
 00568C7F    mov         ebx,eax
 00568C81    test        ebx,ebx
>00568C83    jne         00568CA6
 00568C85    mov         eax,dword ptr [ebp-4]
 00568C88    mov         eax,dword ptr [eax+280]
 00568C8E    mov         edx,dword ptr [ebp-8]
 00568C91    mov         ecx,dword ptr [eax]
 00568C93    call        dword ptr [ecx+60]
 00568C96    mov         esi,eax
 00568C98    mov         eax,dword ptr [ebp-0C]
 00568C9B    mov         dword ptr [eax],1
>00568CA1    jmp         00568D3D
 00568CA6    xor         esi,esi
 00568CA8    mov         eax,dword ptr [ebp-0C]
 00568CAB    xor         edx,edx
 00568CAD    mov         dword ptr [eax],edx
 00568CAF    test        ebx,ebx
>00568CB1    jle         00568D16
 00568CB3    lea         eax,[ebp-14]
 00568CB6    push        eax
 00568CB7    mov         ecx,ebx
 00568CB9    dec         ecx
 00568CBA    mov         edx,1
 00568CBF    mov         eax,dword ptr [ebp-8]
 00568CC2    call        @LStrCopy
 00568CC7    mov         edx,dword ptr [ebp-14]
 00568CCA    mov         eax,dword ptr [ebp-4]
 00568CCD    mov         eax,dword ptr [eax+280]
 00568CD3    mov         ecx,dword ptr [eax]
 00568CD5    call        dword ptr [ecx+60]
 00568CD8    mov         edx,eax
 00568CDA    mov         eax,esi
 00568CDC    call        005682F0
 00568CE1    mov         esi,eax
 00568CE3    mov         eax,dword ptr [ebp-0C]
 00568CE6    inc         dword ptr [eax]
 00568CE8    lea         eax,[ebp-8]
 00568CEB    mov         ecx,ebx
 00568CED    mov         edx,1
 00568CF2    call        @LStrDelete
 00568CF7    lea         eax,[ebp-18]
 00568CFA    mov         dl,byte ptr ds:[6E385C]
 00568D00    call        @LStrFromChar
 00568D05    mov         eax,dword ptr [ebp-18]
 00568D08    mov         edx,dword ptr [ebp-8]
 00568D0B    call        @LStrPos
 00568D10    mov         ebx,eax
 00568D12    test        ebx,ebx
>00568D14    jg          00568CB3
 00568D16    cmp         dword ptr [ebp-8],0
>00568D1A    je          00568D3D
 00568D1C    mov         eax,dword ptr [ebp-4]
 00568D1F    mov         eax,dword ptr [eax+280]
 00568D25    mov         edx,dword ptr [ebp-8]
 00568D28    mov         ecx,dword ptr [eax]
 00568D2A    call        dword ptr [ecx+60]
 00568D2D    mov         edx,eax
 00568D2F    mov         eax,esi
 00568D31    call        005682F0
 00568D36    mov         esi,eax
 00568D38    mov         eax,dword ptr [ebp-0C]
 00568D3B    inc         dword ptr [eax]
 00568D3D    xor         eax,eax
 00568D3F    pop         edx
 00568D40    pop         ecx
 00568D41    pop         ecx
 00568D42    mov         dword ptr fs:[eax],edx
 00568D45    push        568D67
 00568D4A    lea         eax,[ebp-18]
 00568D4D    mov         edx,3
 00568D52    call        @LStrArrayClr
 00568D57    lea         eax,[ebp-8]
 00568D5A    call        @LStrClr
 00568D5F    ret
>00568D60    jmp         @HandleFinally
>00568D65    jmp         00568D4A
 00568D67    mov         eax,esi
 00568D69    pop         esi
 00568D6A    pop         ebx
 00568D6B    mov         esp,ebp
 00568D6D    pop         ebp
 00568D6E    ret
*}
end;

//00568D70
function TCustomTeePanel.GetMargin(Index:Integer):Integer;
begin
{*
 00568D70    add         eax,250
 00568D75    sub         edx,1
>00568D78    jb          00568D81
>00568D7A    je          00568D84
 00568D7C    dec         edx
>00568D7D    je          00568D88
>00568D7F    jmp         00568D8C
 00568D81    mov         eax,dword ptr [eax]
 00568D83    ret
 00568D84    mov         eax,dword ptr [eax+4]
 00568D87    ret
 00568D88    mov         eax,dword ptr [eax+8]
 00568D8B    ret
 00568D8C    mov         eax,dword ptr [eax+0C]
 00568D8F    ret
*}
end;

//00568D90
procedure TCustomTeePanel.SetMargin(Index:Integer; Value:Integer);
begin
{*
 00568D90    push        esi
 00568D91    lea         esi,[eax+250]
 00568D97    sub         edx,1
>00568D9A    jb          00568DA3
>00568D9C    je          00568DAC
 00568D9E    dec         edx
>00568D9F    je          00568DB6
>00568DA1    jmp         00568DC0
 00568DA3    mov         edx,esi
 00568DA5    call        TCustomTeePanel.SetIntegerProperty
 00568DAA    pop         esi
 00568DAB    ret
 00568DAC    lea         edx,[esi+4]
 00568DAF    call        TCustomTeePanel.SetIntegerProperty
 00568DB4    pop         esi
 00568DB5    ret
 00568DB6    lea         edx,[esi+8]
 00568DB9    call        TCustomTeePanel.SetIntegerProperty
 00568DBE    pop         esi
 00568DBF    ret
 00568DC0    lea         edx,[esi+0C]
 00568DC3    call        TCustomTeePanel.SetIntegerProperty
 00568DC8    pop         esi
 00568DC9    ret
*}
end;

//00568DCC
function TCustomTeePanel.GetBufferedDisplay:Boolean;
begin
{*
 00568DCC    mov         eax,dword ptr [eax+280]
 00568DD2    mov         edx,dword ptr [eax]
 00568DD4    call        dword ptr [edx+14]
 00568DD7    ret
*}
end;

//00568DD8
procedure TCustomTeePanel.SetBufferedDisplay(Value:Boolean);
begin
{*
 00568DD8    mov         eax,dword ptr [eax+280]
 00568DDE    mov         ecx,dword ptr [eax]
 00568DE0    call        dword ptr [ecx+2C]
 00568DE3    ret
*}
end;

//00568DE4
procedure TCustomTeePanel.ReCalcWidthHeight;
begin
{*
 00568DE4    push        esi
 00568DE5    lea         edx,[eax+286]
 00568DEB    mov         ecx,dword ptr [eax+225]
 00568DF1    cmp         ecx,dword ptr [edx]
>00568DF3    jle         00568DF7
 00568DF5    mov         dword ptr [edx],ecx
 00568DF7    mov         ecx,dword ptr [eax+229]
 00568DFD    cmp         ecx,dword ptr [edx+4]
>00568E00    jle         00568E05
 00568E02    mov         dword ptr [edx+4],ecx
 00568E05    mov         ecx,dword ptr [edx]
 00568E07    mov         esi,dword ptr [edx+8]
 00568E0A    cmp         ecx,esi
>00568E0C    jle         00568E14
 00568E0E    inc         ecx
 00568E0F    mov         dword ptr [edx+8],ecx
>00568E12    jmp         00568E1E
 00568E14    cmp         ecx,esi
>00568E16    jne         00568E1E
 00568E18    add         ecx,dword ptr [eax+48]
 00568E1B    mov         dword ptr [edx+8],ecx
 00568E1E    mov         ecx,dword ptr [edx+4]
 00568E21    mov         esi,dword ptr [edx+0C]
 00568E24    cmp         ecx,esi
>00568E26    jle         00568E2E
 00568E28    inc         ecx
 00568E29    mov         dword ptr [edx+0C],ecx
>00568E2C    jmp         00568E38
 00568E2E    cmp         ecx,esi
>00568E30    jne         00568E38
 00568E32    add         ecx,dword ptr [eax+4C]
 00568E35    mov         dword ptr [edx+0C],ecx
 00568E38    mov         ecx,dword ptr [edx+8]
 00568E3B    sub         ecx,dword ptr [edx]
 00568E3D    mov         dword ptr [eax+238],ecx
 00568E43    mov         ecx,dword ptr [edx+0C]
 00568E46    sub         ecx,dword ptr [edx+4]
 00568E49    mov         dword ptr [eax+23C],ecx
 00568E4F    mov         ecx,dword ptr [edx]
 00568E51    add         ecx,dword ptr [edx+8]
 00568E54    sar         ecx,1
>00568E56    jns         00568E5B
 00568E58    adc         ecx,0
 00568E5B    mov         dword ptr [eax+240],ecx
 00568E61    mov         ecx,dword ptr [edx+4]
 00568E64    add         ecx,dword ptr [edx+0C]
 00568E67    sar         ecx,1
>00568E69    jns         00568E6E
 00568E6B    adc         ecx,0
 00568E6E    mov         dword ptr [eax+244],ecx
 00568E74    pop         esi
 00568E75    ret
*}
end;

//00568E78
procedure TCustomTeePanel.DrawZoomRectangle;
begin
{*
 00568E78    push        ebx
 00568E79    push        esi
 00568E7A    push        edi
 00568E7B    mov         esi,eax
 00568E7D    mov         edi,dword ptr [esi+280]
 00568E83    mov         ebx,dword ptr [edi+0C]
 00568E86    mov         eax,dword ptr [esi+70]
 00568E89    call        ColorToRGB
 00568E8E    mov         edx,eax
 00568E90    mov         eax,ebx
 00568E92    call        TPen.SetColor
 00568E97    mov         eax,ebx
 00568E99    call        TPen.GetColor
 00568E9E    cmp         eax,0FFFFFF
>00568EA3    jne         00568EAE
 00568EA5    xor         edx,edx
 00568EA7    mov         eax,ebx
 00568EA9    call        TPen.SetColor
 00568EAE    mov         dl,0F
 00568EB0    mov         eax,ebx
 00568EB2    call        TPen.SetMode
 00568EB7    xor         edx,edx
 00568EB9    mov         eax,ebx
 00568EBB    call        TPen.SetStyle
 00568EC0    mov         edx,1
 00568EC5    mov         eax,ebx
 00568EC7    call        TPen.SetWidth
 00568ECC    mov         eax,dword ptr [edi+10]
 00568ECF    mov         dl,1
 00568ED1    call        TBrush.SetStyle
 00568ED6    mov         eax,dword ptr [esi+27C]
 00568EDC    mov         edx,dword ptr [eax+10]
 00568EDF    push        edx
 00568EE0    mov         edx,dword ptr [eax+14]
 00568EE3    push        edx
 00568EE4    mov         ecx,dword ptr [eax+0C]
 00568EE7    mov         edx,dword ptr [eax+8]
 00568EEA    mov         eax,edi
 00568EEC    mov         ebx,dword ptr [eax]
 00568EEE    call        dword ptr [ebx+50]
 00568EF1    pop         edi
 00568EF2    pop         esi
 00568EF3    pop         ebx
 00568EF4    ret
*}
end;

//00568EF8
function TCustomTeePanel.GetRectangle:TRect;
begin
{*
 00568EF8    push        ebx
 00568EF9    push        esi
 00568EFA    mov         esi,edx
 00568EFC    mov         ebx,eax
 00568EFE    mov         edx,esi
 00568F00    mov         eax,ebx
 00568F02    mov         ecx,dword ptr [eax]
 00568F04    call        dword ptr [ecx+44]
 00568F07    pop         esi
 00568F08    pop         ebx
 00568F09    ret
*}
end;

//00568F0C
function TCustomTeePanel.GetMonochrome:Boolean;
begin
{*
 00568F0C    mov         eax,dword ptr [eax+280]
 00568F12    mov         edx,dword ptr [eax]
 00568F14    call        dword ptr [edx+0C]
 00568F17    ret
*}
end;

//00568F18
procedure TCustomTeePanel.SetMonochrome(Value:Boolean);
begin
{*
 00568F18    mov         eax,dword ptr [eax+280]
 00568F1E    mov         ecx,dword ptr [eax]
 00568F20    call        dword ptr [ecx+20]
 00568F23    ret
*}
end;

//00568F24
procedure TCustomTeePanel.Assign(Source:TPersistent);
begin
{*
 00568F24    push        ebx
 00568F25    push        esi
 00568F26    push        edi
 00568F27    mov         esi,edx
 00568F29    mov         ebx,eax
 00568F2B    mov         eax,esi
 00568F2D    mov         edx,dword ptr ds:[567C80];TCustomTeePanel
 00568F33    call        @IsClass
 00568F38    test        al,al
>00568F3A    je          00568FC3
 00568F40    mov         edi,esi
 00568F42    mov         eax,edi
 00568F44    call        TCustomTeePanel.GetBufferedDisplay
 00568F49    mov         edx,eax
 00568F4B    mov         eax,ebx
 00568F4D    call        TCustomTeePanel.SetBufferedDisplay
 00568F52    mov         al,byte ptr [edi+269]
 00568F58    mov         byte ptr [ebx+269],al
 00568F5E    mov         eax,dword ptr [edi+26C]
 00568F64    mov         dword ptr [ebx+26C],eax
 00568F6A    push        esi
 00568F6B    push        edi
 00568F6C    lea         esi,[edi+250]
 00568F72    lea         edi,[ebx+250]
 00568F78    movs        dword ptr [edi],dword ptr [esi]
 00568F79    movs        dword ptr [edi],dword ptr [esi]
 00568F7A    movs        dword ptr [edi],dword ptr [esi]
 00568F7B    movs        dword ptr [edi],dword ptr [esi]
 00568F7C    pop         edi
 00568F7D    pop         esi
 00568F7E    mov         eax,edi
 00568F80    call        TCustomTeePanel.GetMonochrome
 00568F85    mov         edx,eax
 00568F87    mov         eax,ebx
 00568F89    call        TCustomTeePanel.SetMonochrome
 00568F8E    mov         al,byte ptr [edi+270]
 00568F94    mov         byte ptr [ebx+270],al
 00568F9A    mov         edx,dword ptr [edi+274]
 00568FA0    mov         eax,dword ptr [ebx+274]
 00568FA6    mov         ecx,dword ptr [eax]
 00568FA8    call        dword ptr [ecx+8]
 00568FAB    mov         eax,dword ptr [edi+220]
 00568FB1    mov         dword ptr [ebx+220],eax
 00568FB7    mov         edx,dword ptr [edi+70]
 00568FBA    mov         eax,ebx
 00568FBC    call        TControl.SetColor
>00568FC1    jmp         00568FCC
 00568FC3    mov         edx,esi
 00568FC5    mov         eax,ebx
 00568FC7    call        TPersistent.Assign
 00568FCC    pop         edi
 00568FCD    pop         esi
 00568FCE    pop         ebx
 00568FCF    ret
*}
end;

//00568FD0
procedure TCustomTeePanel.CheckPenWidth(APen:TPen);
begin
{*
 00568FD0    push        ebx
 00568FD1    push        esi
 00568FD2    mov         ebx,edx
 00568FD4    mov         esi,eax
 00568FD6    cmp         byte ptr [esi+268],0
>00568FDD    je          00568FFD
 00568FDF    mov         eax,ebx
 00568FE1    call        TPen.GetStyle
 00568FE6    test        al,al
>00568FE8    je          00568FFD
 00568FEA    mov         eax,ebx
 00568FEC    call        TPen.GetWidth
 00568FF1    dec         eax
>00568FF2    jne         00568FFD
 00568FF4    xor         edx,edx
 00568FF6    mov         eax,ebx
 00568FF8    call        TPen.SetWidth
 00568FFD    pop         esi
 00568FFE    pop         ebx
 00568FFF    ret
*}
end;

//00569000
procedure TCustomTeePanel.DrawPanelBevels(Rect:TRect);
begin
{*
 00569000    push        ebx
 00569001    push        esi
 00569002    push        edi
 00569003    add         esp,0FFFFFFF0
 00569006    mov         esi,edx
 00569008    lea         edi,[esp]
 0056900B    movs        dword ptr [edi],dword ptr [esi]
 0056900C    movs        dword ptr [edi],dword ptr [esi]
 0056900D    movs        dword ptr [edi],dword ptr [esi]
 0056900E    movs        dword ptr [edi],dword ptr [esi]
 0056900F    mov         ebx,eax
 00569011    cmp         byte ptr [ebx+268],0
>00569018    je          00569027
 0056901A    cmp         byte ptr ds:[6E386C],0
>00569021    je          00569100
 00569027    mov         eax,dword ptr [ebx+280]
 0056902D    mov         esi,dword ptr [eax+0C]
 00569030    xor         edx,edx
 00569032    mov         eax,esi
 00569034    call        TPen.SetStyle
 00569039    mov         edx,1
 0056903E    mov         eax,esi
 00569040    call        TPen.SetWidth
 00569045    mov         dl,4
 00569047    mov         eax,esi
 00569049    call        TPen.SetMode
 0056904E    mov         eax,dword ptr [ebx+280]
 00569054    mov         eax,dword ptr [eax+10]
 00569057    mov         dl,1
 00569059    call        TBrush.SetStyle
 0056905E    mov         al,byte ptr [ebx+212]
 00569064    test        al,al
>00569066    je          005690A0
 00569068    cmp         al,2
 0056906A    sete        dl
 0056906D    and         edx,7F
 00569070    mov         edx,dword ptr [edx*4+6E3948]
 00569077    push        edx
 00569078    mov         edx,dword ptr [ebx+214]
 0056907E    push        edx
 0056907F    cmp         al,1
 00569081    sete        al
 00569084    and         eax,7F
 00569087    mov         ecx,dword ptr [eax*4+6E3948]
 0056908E    lea         edx,[esp+8]
 00569092    mov         eax,dword ptr [ebx+280]
 00569098    mov         eax,dword ptr [eax+4]
 0056909B    call        Frame3D
 005690A0    mov         eax,dword ptr [ebx+70]
 005690A3    push        eax
 005690A4    mov         edx,dword ptr [ebx+218]
 005690AA    push        edx
 005690AB    lea         edx,[esp+8]
 005690AF    mov         ecx,dword ptr [ebx+280]
 005690B5    mov         ecx,dword ptr [ecx+4]
 005690B8    xchg        eax,ecx
 005690B9    call        Frame3D
 005690BE    mov         al,byte ptr [ebx+211]
 005690C4    test        al,al
>005690C6    je          00569100
 005690C8    cmp         al,2
 005690CA    sete        dl
 005690CD    and         edx,7F
 005690D0    mov         edx,dword ptr [edx*4+6E3948]
 005690D7    push        edx
 005690D8    mov         edx,dword ptr [ebx+214]
 005690DE    push        edx
 005690DF    cmp         al,1
 005690E1    sete        al
 005690E4    and         eax,7F
 005690E7    mov         ecx,dword ptr [eax*4+6E3948]
 005690EE    lea         edx,[esp+8]
 005690F2    mov         eax,dword ptr [ebx+280]
 005690F8    mov         eax,dword ptr [eax+4]
 005690FB    call        Frame3D
 00569100    add         esp,10
 00569103    pop         edi
 00569104    pop         esi
 00569105    pop         ebx
 00569106    ret
*}
end;

//00569108
procedure TCustomTeePanelExtended.SetAnimatedZoom(Value:Boolean);
begin
{*
 00569108    lea         ecx,[eax+2AC]
 0056910E    xchg        ecx,edx
 00569110    call        TCustomTeePanel.SetBooleanProperty
 00569115    ret
*}
end;

//00569118
procedure TCustomTeePanelExtended.SetAnimatedZoomSteps(Value:Integer);
begin
{*
 00569118    lea         ecx,[eax+2A8]
 0056911E    xchg        ecx,edx
 00569120    call        TCustomTeePanel.SetIntegerProperty
 00569125    ret
*}
end;

//00569128
procedure TCustomTeePanelExtended.SetBackImage(Value:TPicture);
begin
{*
 00569128    push        esi
 00569129    mov         esi,eax
 0056912B    mov         eax,dword ptr [esi+2B0]
 00569131    mov         ecx,dword ptr [eax]
 00569133    call        dword ptr [ecx+8]
 00569136    pop         esi
 00569137    ret
*}
end;

//00569138
procedure TCustomTeePanelExtended.SetBackImageMode(Value:TTeeBackImageMode);
begin
{*
 00569138    push        esi
 00569139    mov         esi,eax
 0056913B    cmp         dl,byte ptr [esi+2B4]
>00569141    je          00569150
 00569143    mov         byte ptr [esi+2B4],dl
 00569149    mov         eax,esi
 0056914B    mov         edx,dword ptr [eax]
 0056914D    call        dword ptr [edx+7C]
 00569150    pop         esi
 00569151    ret
*}
end;

//00569154
constructor TCustomTeePanelExtended.Create(AOwner:TComponent);
begin
{*
 00569154    push        ebp
 00569155    mov         ebp,esp
 00569157    push        ecx
 00569158    push        ebx
 00569159    push        esi
 0056915A    test        dl,dl
>0056915C    je          00569166
 0056915E    add         esp,0FFFFFFF0
 00569161    call        @ClassCreate
 00569166    mov         byte ptr [ebp-1],dl
 00569169    mov         ebx,eax
 0056916B    xor         edx,edx
 0056916D    mov         eax,ebx
 0056916F    call        TCustomTeePanel.Create
 00569174    mov         ecx,ebx
 00569176    mov         dl,1
 00569178    mov         eax,[00567EE8];TChartGradient
 0056917D    call        TCustomTeeGradient.Create
 00569182    mov         dword ptr [ebx+2B8],eax
 00569188    mov         byte ptr [ebx+2B4],0
 0056918F    mov         dl,1
 00569191    mov         eax,[005BEB28];TPicture
 00569196    call        TPicture.Create
 0056919B    mov         esi,eax
 0056919D    mov         dword ptr [ebx+2B0],esi
 005691A3    mov         dword ptr [esi+14],ebx
 005691A6    mov         eax,dword ptr [ebx]
 005691A8    mov         eax,dword ptr [eax+0CC]
 005691AE    mov         dword ptr [esi+10],eax
 005691B1    mov         dword ptr [ebx+2A8],8
 005691BB    mov         byte ptr [ebx+2AD],1
 005691C2    mov         byte ptr [ebx+2AE],3
 005691C9    mov         eax,ebx
 005691CB    cmp         byte ptr [ebp-1],0
>005691CF    je          005691E0
 005691D1    call        @AfterConstruction
 005691D6    pop         dword ptr fs:[0]
 005691DD    add         esp,0C
 005691E0    mov         eax,ebx
 005691E2    pop         esi
 005691E3    pop         ebx
 005691E4    pop         ecx
 005691E5    pop         ebp
 005691E6    ret
*}
end;

//005691E8
destructor TCustomTeePanelExtended.Destroy;
begin
{*
 005691E8    push        ebx
 005691E9    push        esi
 005691EA    call        @BeforeDestruction
 005691EF    mov         ebx,edx
 005691F1    mov         esi,eax
 005691F3    mov         eax,dword ptr [esi+2B8]
 005691F9    call        TObject.Free
 005691FE    mov         eax,dword ptr [esi+2B0]
 00569204    call        TObject.Free
 00569209    mov         edx,ebx
 0056920B    and         dl,0FC
 0056920E    mov         eax,esi
 00569210    call        TCustomTeePanel.Destroy
 00569215    test        bl,bl
>00569217    jle         00569220
 00569219    mov         eax,esi
 0056921B    call        @ClassDestroy
 00569220    pop         esi
 00569221    pop         ebx
 00569222    ret
*}
end;

//00569224
procedure TCustomTeePanelExtended.UndoZoom;
begin
{*
 00569224    push        ebx
 00569225    mov         ebx,eax
 00569227    cmp         word ptr [ebx+2D2],0
>0056922F    je          0056923F
 00569231    mov         edx,ebx
 00569233    mov         eax,dword ptr [ebx+2D4]
 00569239    call        dword ptr [ebx+2D0]
 0056923F    mov         eax,ebx
 00569241    mov         edx,dword ptr [eax]
 00569243    call        dword ptr [edx+7C]
 00569246    mov         byte ptr [ebx+2BC],0
 0056924D    pop         ebx
 0056924E    ret
*}
end;

//00569250
procedure TCustomTeePanelExtended.SetGradient(Value:TChartGradient);
begin
{*
 00569250    mov         eax,dword ptr [eax+2B8]
 00569256    mov         ecx,dword ptr [eax]
 00569258    call        dword ptr [ecx+8]
 0056925B    ret
*}
end;

//0056925C
procedure TCustomTeePanelExtended.Assign(Source:TPersistent);
begin
{*
 0056925C    push        ebx
 0056925D    push        esi
 0056925E    push        edi
 0056925F    mov         esi,edx
 00569261    mov         ebx,eax
 00569263    mov         eax,esi
 00569265    mov         edx,dword ptr ds:[568008];TCustomTeePanelExtended
 0056926B    call        @IsClass
 00569270    test        al,al
>00569272    je          005692D4
 00569274    mov         edi,esi
 00569276    mov         edx,dword ptr [edi+2B0]
 0056927C    mov         eax,dword ptr [ebx+2B0]
 00569282    mov         ecx,dword ptr [eax]
 00569284    call        dword ptr [ecx+8]
 00569287    mov         al,byte ptr [edi+2B4]
 0056928D    mov         byte ptr [ebx+2B4],al
 00569293    mov         edx,dword ptr [edi+2B8]
 00569299    mov         eax,dword ptr [ebx+2B8]
 0056929F    mov         ecx,dword ptr [eax]
 005692A1    call        dword ptr [ecx+8]
 005692A4    mov         al,byte ptr [edi+2AE]
 005692AA    mov         byte ptr [ebx+2AE],al
 005692B0    mov         al,byte ptr [edi+2AD]
 005692B6    mov         byte ptr [ebx+2AD],al
 005692BC    mov         al,byte ptr [edi+2AC]
 005692C2    mov         byte ptr [ebx+2AC],al
 005692C8    mov         eax,dword ptr [edi+2A8]
 005692CE    mov         dword ptr [ebx+2A8],eax
 005692D4    mov         edx,esi
 005692D6    mov         eax,ebx
 005692D8    call        TCustomTeePanel.Assign
 005692DD    pop         edi
 005692DE    pop         esi
 005692DF    pop         ebx
 005692E0    ret
*}
end;

//005692E4
procedure TCustomTeePanelExtended.GetPalette;
begin
{*
 005692E4    push        ebx
 005692E5    push        esi
 005692E6    push        edi
 005692E7    mov         ebx,eax
 005692E9    xor         edi,edi
 005692EB    mov         esi,dword ptr [ebx+2B0]
 005692F1    test        esi,esi
>005692F3    je          00569317
 005692F5    cmp         dword ptr [esi+0C],0
>005692F9    je          00569317
 005692FB    mov         eax,dword ptr [esi+0C]
 005692FE    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 00569304    call        @IsClass
 00569309    test        al,al
>0056930B    je          00569317
 0056930D    mov         eax,dword ptr [esi+0C]
 00569310    mov         edx,dword ptr [eax]
 00569312    call        dword ptr [edx+24]
 00569315    mov         edi,eax
 00569317    mov         eax,edi
 00569319    pop         edi
 0056931A    pop         esi
 0056931B    pop         ebx
 0056931C    ret
*}
end;

//00569320
procedure TileBitmap;
begin
{*
 00569320    push        ebp
 00569321    mov         ebp,esp
 00569323    add         esp,0FFFFFFF8
 00569326    push        ebx
 00569327    push        esi
 00569328    push        edi
 00569329    mov         eax,dword ptr [ebp+8]
 0056932C    mov         eax,dword ptr [eax-4]
 0056932F    mov         eax,dword ptr [eax+2B0]
 00569335    call        TPicture.GetWidth
 0056933A    mov         dword ptr [ebp-4],eax
 0056933D    mov         eax,dword ptr [ebp+8]
 00569340    mov         eax,dword ptr [eax-4]
 00569343    mov         eax,dword ptr [eax+2B0]
 00569349    call        TPicture.GetHeight
 0056934E    mov         dword ptr [ebp-8],eax
 00569351    cmp         dword ptr [ebp-4],0
>00569355    jle         005693B8
 00569357    cmp         dword ptr [ebp-8],0
>0056935B    jle         005693B8
 0056935D    xor         esi,esi
 0056935F    mov         eax,dword ptr [ebp+8]
 00569362    cmp         esi,dword ptr [eax-8]
>00569365    jge         005693B8
 00569367    xor         ebx,ebx
 00569369    mov         eax,dword ptr [ebp+8]
 0056936C    cmp         ebx,dword ptr [eax-0C]
>0056936F    jge         005693AD
 00569371    mov         eax,dword ptr [ebp+8]
 00569374    mov         eax,dword ptr [eax-4]
 00569377    mov         eax,dword ptr [eax+2B0]
 0056937D    mov         eax,dword ptr [eax+0C]
 00569380    push        eax
 00569381    mov         eax,dword ptr [ebp+8]
 00569384    mov         ecx,dword ptr [eax-18]
 00569387    add         ecx,esi
 00569389    mov         eax,dword ptr [ebp+8]
 0056938C    mov         edx,dword ptr [eax-1C]
 0056938F    add         edx,ebx
 00569391    mov         eax,dword ptr [ebp+8]
 00569394    mov         eax,dword ptr [eax-4]
 00569397    mov         eax,dword ptr [eax+280]
 0056939D    mov         edi,dword ptr [eax]
 0056939F    call        dword ptr [edi+34]
 005693A2    add         ebx,dword ptr [ebp-4]
 005693A5    mov         eax,dword ptr [ebp+8]
 005693A8    cmp         ebx,dword ptr [eax-0C]
>005693AB    jl          00569371
 005693AD    add         esi,dword ptr [ebp-8]
 005693B0    mov         eax,dword ptr [ebp+8]
 005693B3    cmp         esi,dword ptr [eax-8]
>005693B6    jl          00569367
 005693B8    pop         edi
 005693B9    pop         esi
 005693BA    pop         ebx
 005693BB    pop         ecx
 005693BC    pop         ecx
 005693BD    pop         ebp
 005693BE    ret
*}
end;

//005693C0
procedure Calc3DRect;
begin
{*
 005693C0    push        ebp
 005693C1    mov         ebp,esp
 005693C3    add         esp,0FFFFFFF8
 005693C6    push        ebx
 005693C7    push        esi
 005693C8    mov         ebx,dword ptr [ebp+8]
 005693CB    add         ebx,0FFFFFFE4
 005693CE    mov         eax,dword ptr [ebp+8]
 005693D1    mov         eax,dword ptr [eax-20]
 005693D4    push        eax
 005693D5    lea         eax,[ebp-8]
 005693D8    push        eax
 005693D9    mov         ecx,dword ptr [ebx+4]
 005693DC    mov         edx,dword ptr [ebx]
 005693DE    mov         eax,dword ptr [ebp+8]
 005693E1    mov         eax,dword ptr [eax-4]
 005693E4    mov         eax,dword ptr [eax+280]
 005693EA    mov         esi,dword ptr [eax]
 005693EC    call        dword ptr [esi+0A4]
 005693F2    mov         eax,dword ptr [ebp-8]
 005693F5    mov         dword ptr [ebx],eax
 005693F7    mov         eax,dword ptr [ebp-4]
 005693FA    mov         dword ptr [ebx+4],eax
 005693FD    mov         eax,dword ptr [ebp+8]
 00569400    mov         eax,dword ptr [eax-20]
 00569403    push        eax
 00569404    lea         eax,[ebp-8]
 00569407    push        eax
 00569408    mov         ecx,dword ptr [ebx+0C]
 0056940B    mov         edx,dword ptr [ebx+8]
 0056940E    mov         eax,dword ptr [ebp+8]
 00569411    mov         eax,dword ptr [eax-4]
 00569414    mov         eax,dword ptr [eax+280]
 0056941A    mov         esi,dword ptr [eax]
 0056941C    call        dword ptr [esi+0A4]
 00569422    mov         eax,dword ptr [ebp-8]
 00569425    mov         dword ptr [ebx+8],eax
 00569428    mov         eax,dword ptr [ebp-4]
 0056942B    mov         dword ptr [ebx+0C],eax
 0056942E    mov         eax,dword ptr [ebp+8]
 00569431    mov         eax,dword ptr [eax-4]
 00569434    cmp         byte ptr [eax+270],0
>0056943B    jne         00569440
 0056943D    inc         dword ptr [ebx+4]
 00569440    pop         esi
 00569441    pop         ebx
 00569442    pop         ecx
 00569443    pop         ecx
 00569444    pop         ebp
 00569445    ret
*}
end;

//00569448
procedure TCustomTeePanelExtended.DrawBitmap(Rect:TRect; Z:Integer);
begin
{*
 00569448    push        ebp
 00569449    mov         ebp,esp
 0056944B    add         esp,0FFFFFFE0
 0056944E    push        ebx
 0056944F    push        esi
 00569450    push        edi
 00569451    mov         esi,edx
 00569453    lea         edi,[ebp-1C]
 00569456    movs        dword ptr [edi],dword ptr [esi]
 00569457    movs        dword ptr [edi],dword ptr [esi]
 00569458    movs        dword ptr [edi],dword ptr [esi]
 00569459    movs        dword ptr [edi],dword ptr [esi]
 0056945A    mov         dword ptr [ebp-20],ecx
 0056945D    mov         dword ptr [ebp-4],eax
 00569460    cmp         dword ptr [ebp-20],0
>00569464    je          00569485
 00569466    mov         eax,dword ptr [ebp-4]
 00569469    cmp         byte ptr [eax+270],0
>00569470    je          00569485
 00569472    mov         eax,dword ptr [ebp-4]
 00569475    mov         eax,dword ptr [eax+274]
 0056947B    cmp         byte ptr [eax+0C],0
>0056947F    je          005695C4
 00569485    mov         eax,dword ptr [ebp-4]
 00569488    mov         eax,dword ptr [eax+2B0]
 0056948E    cmp         dword ptr [eax+0C],0
>00569492    je          005695C4
 00569498    mov         eax,dword ptr [ebp-4]
 0056949B    cmp         byte ptr [eax+2B4],0
>005694A2    jne         005694D3
 005694A4    cmp         dword ptr [ebp-20],0
>005694A8    jle         005694B1
 005694AA    push        ebp
 005694AB    call        Calc3DRect
 005694B0    pop         ecx
 005694B1    mov         eax,dword ptr [ebp-4]
 005694B4    mov         eax,dword ptr [eax+2B0]
 005694BA    mov         ecx,dword ptr [eax+0C]
 005694BD    lea         edx,[ebp-1C]
 005694C0    mov         eax,dword ptr [ebp-4]
 005694C3    mov         eax,dword ptr [eax+280]
 005694C9    mov         ebx,dword ptr [eax]
 005694CB    call        dword ptr [ebx+58]
>005694CE    jmp         005695C4
 005694D3    mov         eax,dword ptr [ebp-4]
 005694D6    call        TCustomTeePanel.CanClip
 005694DB    mov         ebx,eax
 005694DD    test        bl,bl
>005694DF    je          0056951A
 005694E1    cmp         dword ptr [ebp-20],0
>005694E5    jne         005694FA
 005694E7    lea         edx,[ebp-1C]
 005694EA    mov         eax,dword ptr [ebp-4]
 005694ED    mov         eax,dword ptr [eax+280]
 005694F3    mov         ecx,dword ptr [eax]
 005694F5    call        dword ptr [ecx+68]
>005694F8    jmp         0056951A
 005694FA    mov         eax,dword ptr [ebp-4]
 005694FD    mov         eax,dword ptr [eax+278]
 00569503    push        eax
 00569504    lea         edx,[ebp-1C]
 00569507    mov         eax,dword ptr [ebp-4]
 0056950A    mov         eax,dword ptr [eax+280]
 00569510    xor         ecx,ecx
 00569512    mov         esi,dword ptr [eax]
 00569514    call        dword ptr [esi+0C0]
 0056951A    cmp         dword ptr [ebp-20],0
>0056951E    jle         00569527
 00569520    push        ebp
 00569521    call        Calc3DRect
 00569526    pop         ecx
 00569527    lea         ecx,[ebp-8]
 0056952A    lea         edx,[ebp-0C]
 0056952D    lea         eax,[ebp-1C]
 00569530    call        RectSize
 00569535    mov         eax,dword ptr [ebp-4]
 00569538    cmp         byte ptr [eax+2B4],1
>0056953F    jne         0056954A
 00569541    push        ebp
 00569542    call        TileBitmap
 00569547    pop         ecx
>00569548    jmp         005695AF
 0056954A    lea         edx,[ebp-1C]
 0056954D    mov         eax,dword ptr [ebp-4]
 00569550    mov         ecx,dword ptr [eax]
 00569552    call        dword ptr [ecx+0E4]
 00569558    mov         eax,dword ptr [ebp-4]
 0056955B    mov         eax,dword ptr [eax+2B0]
 00569561    mov         eax,dword ptr [eax+0C]
 00569564    push        eax
 00569565    mov         eax,dword ptr [ebp-4]
 00569568    mov         eax,dword ptr [eax+2B0]
 0056956E    call        TPicture.GetHeight
 00569573    mov         edx,dword ptr [ebp-8]
 00569576    sub         edx,eax
 00569578    sar         edx,1
>0056957A    jns         0056957F
 0056957C    adc         edx,0
 0056957F    add         edx,dword ptr [ebp-18]
 00569582    push        edx
 00569583    mov         eax,dword ptr [ebp-4]
 00569586    mov         eax,dword ptr [eax+2B0]
 0056958C    call        TPicture.GetWidth
 00569591    mov         edx,dword ptr [ebp-0C]
 00569594    sub         edx,eax
 00569596    sar         edx,1
>00569598    jns         0056959D
 0056959A    adc         edx,0
 0056959D    add         edx,dword ptr [ebp-1C]
 005695A0    mov         eax,dword ptr [ebp-4]
 005695A3    mov         eax,dword ptr [eax+280]
 005695A9    pop         ecx
 005695AA    mov         esi,dword ptr [eax]
 005695AC    call        dword ptr [esi+34]
 005695AF    test        bl,bl
>005695B1    je          005695C4
 005695B3    mov         eax,dword ptr [ebp-4]
 005695B6    mov         eax,dword ptr [eax+280]
 005695BC    mov         edx,dword ptr [eax]
 005695BE    call        dword ptr [edx+90]
 005695C4    pop         edi
 005695C5    pop         esi
 005695C6    pop         ebx
 005695C7    mov         esp,ebp
 005695C9    pop         ebp
 005695CA    ret
*}
end;

//005695CC
procedure TCustomTeePanelExtended.DrawImage(const R:TRect);
begin
{*
 005695CC    mov         ecx,dword ptr [eax+2B0]
 005695D2    cmp         dword ptr [ecx+0C],0
>005695D6    je          005695DF
 005695D8    xor         ecx,ecx
 005695DA    call        TCustomTeePanelExtended.DrawBitmap
 005695DF    ret
*}
end;

//005695E0
procedure TCustomTeePanelExtended.PanelPaint(const UserRect:TRect);
begin
{*
 005695E0    push        esi
 005695E1    push        edi
 005695E2    add         esp,0FFFFFFF0
 005695E5    mov         esi,eax
 005695E7    push        esi
 005695E8    mov         esi,edx
 005695EA    lea         edi,[esp+4]
 005695EE    movs        dword ptr [edi],dword ptr [esi]
 005695EF    movs        dword ptr [edi],dword ptr [esi]
 005695F0    movs        dword ptr [edi],dword ptr [esi]
 005695F1    movs        dword ptr [edi],dword ptr [esi]
 005695F2    pop         esi
 005695F3    mov         edx,esp
 005695F5    mov         eax,esi
 005695F7    mov         ecx,dword ptr [eax]
 005695F9    call        dword ptr [ecx+0E4]
 005695FF    mov         edx,esp
 00569601    mov         eax,esi
 00569603    mov         ecx,dword ptr [eax]
 00569605    call        dword ptr [ecx+0E0]
 0056960B    mov         eax,dword ptr [esi+280]
 00569611    mov         edx,dword ptr [eax]
 00569613    call        dword ptr [edx+98]
 00569619    test        al,al
>0056961B    jne         00569629
 0056961D    mov         edx,esp
 0056961F    mov         eax,esi
 00569621    mov         ecx,dword ptr [eax]
 00569623    call        dword ptr [ecx+0D4]
 00569629    add         esp,10
 0056962C    pop         edi
 0056962D    pop         esi
 0056962E    ret
*}
end;

//00569630
procedure TCustomTeePanelExtended.FillPanelRect(const Rect:TRect);
begin
{*
 00569630    push        ebx
 00569631    push        esi
 00569632    push        edi
 00569633    push        ebp
 00569634    mov         ebp,edx
 00569636    mov         edi,eax
 00569638    mov         esi,dword ptr [edi+2B8]
 0056963E    cmp         byte ptr [esi+14],0
>00569642    je          0056967D
 00569644    mov         al,byte ptr [esi+4]
 00569647    test        al,al
>00569649    je          0056964F
 0056964B    cmp         al,2
>0056964D    jne         00569666
 0056964F    mov         edx,dword ptr [esi+8]
 00569652    push        edx
 00569653    push        eax
 00569654    mov         edx,ebp
 00569656    mov         ecx,dword ptr [esi+10]
 00569659    mov         eax,dword ptr [edi+280]
 0056965F    mov         ebx,dword ptr [eax]
 00569661    call        dword ptr [ebx+7C]
>00569664    jmp         005696B3
 00569666    mov         edx,dword ptr [esi+10]
 00569669    push        edx
 0056966A    push        eax
 0056966B    mov         edx,ebp
 0056966D    mov         ecx,dword ptr [esi+8]
 00569670    mov         eax,dword ptr [edi+280]
 00569676    mov         ebx,dword ptr [eax]
 00569678    call        dword ptr [ebx+7C]
>0056967B    jmp         005696B3
 0056967D    cmp         byte ptr [edi+268],0
>00569684    je          0056968F
 00569686    cmp         byte ptr ds:[6E386C],0
>0056968D    je          005696B3
 0056968F    mov         ebx,dword ptr [edi+280]
 00569695    mov         eax,dword ptr [ebx+10]
 00569698    mov         edx,dword ptr [edi+70]
 0056969B    call        TBrush.SetColor
 005696A0    mov         eax,dword ptr [ebx+10]
 005696A3    xor         edx,edx
 005696A5    call        TBrush.SetStyle
 005696AA    mov         edx,ebp
 005696AC    mov         eax,ebx
 005696AE    mov         ecx,dword ptr [eax]
 005696B0    call        dword ptr [ecx+78]
 005696B3    pop         ebp
 005696B4    pop         edi
 005696B5    pop         esi
 005696B6    pop         ebx
 005696B7    ret
*}
end;

//005696B8
constructor TCustomTeeGradient.Create(AOwner:TCustomTeePanel);
begin
{*
 005696B8    push        ebx
 005696B9    push        esi
 005696BA    push        edi
 005696BB    test        dl,dl
>005696BD    je          005696C7
 005696BF    add         esp,0FFFFFFF0
 005696C2    call        @ClassCreate
 005696C7    mov         esi,ecx
 005696C9    mov         ebx,edx
 005696CB    mov         edi,eax
 005696CD    xor         edx,edx
 005696CF    mov         eax,edi
 005696D1    call        TObject.Create
 005696D6    mov         dword ptr [edi+0C],esi
 005696D9    mov         byte ptr [edi+4],0
 005696DD    mov         dword ptr [edi+10],0FFFFFF
 005696E4    mov         dword ptr [edi+8],0FFFF
 005696EB    mov         eax,edi
 005696ED    test        bl,bl
>005696EF    je          00569700
 005696F1    call        @AfterConstruction
 005696F6    pop         dword ptr fs:[0]
 005696FD    add         esp,0C
 00569700    mov         eax,edi
 00569702    pop         edi
 00569703    pop         esi
 00569704    pop         ebx
 00569705    ret
*}
end;

//00569708
procedure TCustomTeeGradient.SetVisible(Value:Boolean);
begin
{*
 00569708    push        esi
 00569709    push        edi
 0056970A    mov         esi,eax
 0056970C    cmp         dl,byte ptr [esi+14]
>0056970F    je          00569722
 00569711    mov         byte ptr [esi+14],dl
 00569714    mov         edi,dword ptr [esi+0C]
 00569717    test        edi,edi
>00569719    je          00569722
 0056971B    mov         eax,edi
 0056971D    mov         edx,dword ptr [eax]
 0056971F    call        dword ptr [edx+7C]
 00569722    pop         edi
 00569723    pop         esi
 00569724    ret
*}
end;

//00569728
procedure TCustomTeeGradient.SetDirection(Value:TGradientDirection);
begin
{*
 00569728    push        esi
 00569729    push        edi
 0056972A    mov         esi,eax
 0056972C    cmp         dl,byte ptr [esi+4]
>0056972F    je          00569742
 00569731    mov         byte ptr [esi+4],dl
 00569734    mov         edi,dword ptr [esi+0C]
 00569737    test        edi,edi
>00569739    je          00569742
 0056973B    mov         eax,edi
 0056973D    mov         edx,dword ptr [eax]
 0056973F    call        dword ptr [edx+7C]
 00569742    pop         edi
 00569743    pop         esi
 00569744    ret
*}
end;

//00569748
procedure TCustomTeeGradient.SetStartColor(Value:TColor);
begin
{*
 00569748    push        esi
 00569749    push        edi
 0056974A    mov         esi,eax
 0056974C    cmp         edx,dword ptr [esi+10]
>0056974F    je          00569762
 00569751    mov         dword ptr [esi+10],edx
 00569754    mov         edi,dword ptr [esi+0C]
 00569757    test        edi,edi
>00569759    je          00569762
 0056975B    mov         eax,edi
 0056975D    mov         edx,dword ptr [eax]
 0056975F    call        dword ptr [edx+7C]
 00569762    pop         edi
 00569763    pop         esi
 00569764    ret
*}
end;

//00569768
procedure TCustomTeeGradient.SetEndColor(Value:TColor);
begin
{*
 00569768    push        esi
 00569769    push        edi
 0056976A    mov         esi,eax
 0056976C    cmp         edx,dword ptr [esi+8]
>0056976F    je          00569782
 00569771    mov         dword ptr [esi+8],edx
 00569774    mov         edi,dword ptr [esi+0C]
 00569777    test        edi,edi
>00569779    je          00569782
 0056977B    mov         eax,edi
 0056977D    mov         edx,dword ptr [eax]
 0056977F    call        dword ptr [edx+7C]
 00569782    pop         edi
 00569783    pop         esi
 00569784    ret
*}
end;

//00569788
procedure TCustomTeeGradient.Assign(Source:TPersistent);
begin
{*
 00569788    push        ebx
 00569789    push        esi
 0056978A    mov         esi,edx
 0056978C    mov         ebx,eax
 0056978E    mov         eax,esi
 00569790    mov         edx,dword ptr ds:[567E4C];TCustomTeeGradient
 00569796    call        @IsClass
 0056979B    test        al,al
>0056979D    je          005697BC
 0056979F    mov         eax,esi
 005697A1    mov         dl,byte ptr [eax+14]
 005697A4    mov         byte ptr [ebx+14],dl
 005697A7    mov         dl,byte ptr [eax+4]
 005697AA    mov         byte ptr [ebx+4],dl
 005697AD    mov         edx,dword ptr [eax+10]
 005697B0    mov         dword ptr [ebx+10],edx
 005697B3    mov         eax,dword ptr [eax+8]
 005697B6    mov         dword ptr [ebx+8],eax
 005697B9    pop         esi
 005697BA    pop         ebx
 005697BB    ret
 005697BC    mov         edx,esi
 005697BE    mov         eax,ebx
 005697C0    call        TPersistent.Assign
 005697C5    pop         esi
 005697C6    pop         ebx
 005697C7    ret
*}
end;

//005697C8
constructor TChartFontObject.Create(AOwner:TCustomTeePanel);
begin
{*
 005697C8    push        ebp
 005697C9    mov         ebp,esp
 005697CB    push        ecx
 005697CC    push        ebx
 005697CD    push        esi
 005697CE    push        edi
 005697CF    test        dl,dl
>005697D1    je          005697DB
 005697D3    add         esp,0FFFFFFF0
 005697D6    call        @ClassCreate
 005697DB    mov         edi,ecx
 005697DD    mov         byte ptr [ebp-1],dl
 005697E0    mov         ebx,eax
 005697E2    xor         edx,edx
 005697E4    mov         eax,ebx
 005697E6    call        TObject.Create
 005697EB    mov         esi,edi
 005697ED    mov         dword ptr [ebx+4],esi
 005697F0    push        esi
 005697F1    mov         eax,dword ptr [esi]
 005697F3    mov         eax,dword ptr [eax+0CC]
 005697F9    push        eax
 005697FA    call        CreateDefaultFont
 005697FF    mov         dword ptr [ebx+8],eax
 00569802    mov         eax,ebx
 00569804    cmp         byte ptr [ebp-1],0
>00569808    je          00569819
 0056980A    call        @AfterConstruction
 0056980F    pop         dword ptr fs:[0]
 00569816    add         esp,0C
 00569819    mov         eax,ebx
 0056981B    pop         edi
 0056981C    pop         esi
 0056981D    pop         ebx
 0056981E    pop         ecx
 0056981F    pop         ebp
 00569820    ret
*}
end;

//00569824
function TChartFontObject.IsFontStored(Value:TFont):Boolean;
begin
{*
 00569824    push        ebx
 00569825    mov         ebx,eax
 00569827    mov         eax,dword ptr [ebx+8]
 0056982A    call        IsDefaultFont
 0056982F    xor         al,1
 00569831    pop         ebx
 00569832    ret
*}
end;

//00569834
destructor TChartFontObject.Destroy;
begin
{*
 00569834    push        ebx
 00569835    push        esi
 00569836    call        @BeforeDestruction
 0056983B    mov         ebx,edx
 0056983D    mov         esi,eax
 0056983F    mov         eax,dword ptr [esi+8]
 00569842    call        TObject.Free
 00569847    mov         edx,ebx
 00569849    and         dl,0FC
 0056984C    mov         eax,esi
 0056984E    call        TPersistent.Destroy
 00569853    test        bl,bl
>00569855    jle         0056985E
 00569857    mov         eax,esi
 00569859    call        @ClassDestroy
 0056985E    pop         esi
 0056985F    pop         ebx
 00569860    ret
*}
end;

//00569864
procedure TChartFontObject.Assign(Source:TPersistent);
begin
{*
 00569864    push        ebx
 00569865    push        esi
 00569866    mov         esi,edx
 00569868    mov         ebx,eax
 0056986A    mov         eax,esi
 0056986C    mov         edx,dword ptr ds:[56819C];TChartFontObject
 00569872    call        @IsClass
 00569877    test        al,al
>00569879    je          00569889
 0056987B    mov         edx,dword ptr [esi+8]
 0056987E    mov         eax,dword ptr [ebx+8]
 00569881    mov         ecx,dword ptr [eax]
 00569883    call        dword ptr [ecx+8]
 00569886    pop         esi
 00569887    pop         ebx
 00569888    ret
 00569889    mov         edx,esi
 0056988B    mov         eax,ebx
 0056988D    call        TPersistent.Assign
 00569892    pop         esi
 00569893    pop         ebx
 00569894    ret
*}
end;

//00569898
procedure TChartFontObject.SetFont(Value:TFont);
begin
{*
 00569898    push        esi
 00569899    mov         esi,eax
 0056989B    mov         eax,dword ptr [esi+8]
 0056989E    mov         ecx,dword ptr [eax]
 005698A0    call        dword ptr [ecx+8]
 005698A3    pop         esi
 005698A4    ret
*}
end;

//005698A8
procedure TChartFontObject.Repaint;
begin
{*
 005698A8    push        esi
 005698A9    mov         esi,eax
 005698AB    mov         eax,dword ptr [esi+4]
 005698AE    mov         edx,dword ptr [eax]
 005698B0    call        dword ptr [edx+7C]
 005698B3    pop         esi
 005698B4    ret
*}
end;

//005698B8
procedure TZoomPanningRecord.Check;
begin
{*
 005698B8    push        ebx
 005698B9    mov         ebx,eax
 005698BB    mov         eax,dword ptr [ebx+8]
 005698BE    cmp         eax,dword ptr [ebx+10]
>005698C1    jle         005698CE
 005698C3    lea         edx,[ebx+10]
 005698C6    lea         eax,[ebx+8]
 005698C9    call        SwapInteger
 005698CE    mov         eax,dword ptr [ebx+0C]
 005698D1    cmp         eax,dword ptr [ebx+14]
>005698D4    jle         005698E1
 005698D6    lea         edx,[ebx+14]
 005698D9    lea         eax,[ebx+0C]
 005698DC    call        SwapInteger
 005698E1    pop         ebx
 005698E2    ret
*}
end;

//005698E4
procedure TZoomPanningRecord.Activate(x:Integer; y:Integer);
begin
{*
 005698E4    mov         dword ptr [eax+8],edx
 005698E7    mov         dword ptr [eax+0C],ecx
 005698EA    mov         dword ptr [eax+10],edx
 005698ED    mov         dword ptr [eax+14],ecx
 005698F0    mov         byte ptr [eax+4],1
 005698F4    ret
*}
end;

//00569934
function Dif(a:Integer; b:Integer):Boolean;
begin
{*
 00569934    push        ebp
 00569935    mov         ebp,esp
 00569937    mov         ecx,dword ptr [ebp+8]
 0056993A    add         eax,dword ptr [ecx+8]
 0056993D    cmp         edx,eax
 0056993F    setg        al
 00569942    pop         ebp
 00569943    ret
*}
end;

//00569944
function PointInLineTolerance(const P:TPoint; px:Integer; py:Integer; qx:Integer; qy:Integer; TolerancePixels:Integer):Boolean;
begin
{*
 00569944    push        ebp
 00569945    mov         ebp,esp
 00569947    push        ecx
 00569948    push        ebx
 00569949    push        esi
 0056994A    push        edi
 0056994B    mov         esi,ecx
 0056994D    mov         ebx,edx
 0056994F    mov         dword ptr [ebp-4],eax
 00569952    mov         eax,dword ptr [ebp+0C]
 00569955    sub         eax,esi
 00569957    cdq
 00569958    xor         eax,edx
 0056995A    sub         eax,edx
 0056995C    push        eax
 0056995D    mov         eax,dword ptr [ebp+10]
 00569960    sub         eax,ebx
 00569962    cdq
 00569963    xor         eax,edx
 00569965    sub         eax,edx
 00569967    pop         edx
 00569968    call        005682F0
 0056996D    mov         ecx,eax
 0056996F    mov         eax,dword ptr [ebp+0C]
 00569972    sub         eax,esi
 00569974    mov         edx,dword ptr [ebp-4]
 00569977    mov         edx,dword ptr [edx]
 00569979    sub         edx,ebx
 0056997B    imul        edx
 0056997D    mov         edx,dword ptr [ebp-4]
 00569980    mov         edx,dword ptr [edx+4]
 00569983    sub         edx,esi
 00569985    mov         edi,dword ptr [ebp+10]
 00569988    sub         edi,ebx
 0056998A    imul        edx,edi
 0056998D    sub         eax,edx
 0056998F    cdq
 00569990    xor         eax,edx
 00569992    sub         eax,edx
 00569994    cmp         ecx,eax
>00569996    jg          0056999F
 00569998    xor         eax,eax
>0056999A    jmp         00569ACF
 0056999F    push        ebp
 005699A0    mov         edx,ebx
 005699A2    mov         eax,dword ptr [ebp+10]
 005699A5    call        Dif
 005699AA    pop         ecx
 005699AB    test        al,al
>005699AD    je          005699C1
 005699AF    push        ebp
 005699B0    mov         edx,dword ptr [ebp-4]
 005699B3    mov         edx,dword ptr [edx]
 005699B5    mov         eax,ebx
 005699B7    call        Dif
 005699BC    pop         ecx
 005699BD    test        al,al
>005699BF    jne         005699E4
 005699C1    push        ebp
 005699C2    mov         edx,esi
 005699C4    mov         eax,dword ptr [ebp+0C]
 005699C7    call        Dif
 005699CC    pop         ecx
 005699CD    test        al,al
>005699CF    je          005699EB
 005699D1    push        ebp
 005699D2    mov         edx,dword ptr [ebp-4]
 005699D5    mov         edx,dword ptr [edx+4]
 005699D8    mov         eax,esi
 005699DA    call        Dif
 005699DF    pop         ecx
 005699E0    test        al,al
>005699E2    je          005699EB
 005699E4    xor         eax,eax
>005699E6    jmp         00569ACF
 005699EB    push        ebp
 005699EC    mov         eax,dword ptr [ebp-4]
 005699EF    mov         eax,dword ptr [eax]
 005699F1    mov         edx,ebx
 005699F3    call        Dif
 005699F8    pop         ecx
 005699F9    test        al,al
>005699FB    je          00569A0D
 005699FD    push        ebp
 005699FE    mov         edx,dword ptr [ebp+10]
 00569A01    mov         eax,ebx
 00569A03    call        Dif
 00569A08    pop         ecx
 00569A09    test        al,al
>00569A0B    jne         00569A30
 00569A0D    push        ebp
 00569A0E    mov         eax,dword ptr [ebp-4]
 00569A11    mov         eax,dword ptr [eax+4]
 00569A14    mov         edx,esi
 00569A16    call        Dif
 00569A1B    pop         ecx
 00569A1C    test        al,al
>00569A1E    je          00569A37
 00569A20    push        ebp
 00569A21    mov         edx,dword ptr [ebp+0C]
 00569A24    mov         eax,esi
 00569A26    call        Dif
 00569A2B    pop         ecx
 00569A2C    test        al,al
>00569A2E    je          00569A37
 00569A30    xor         eax,eax
>00569A32    jmp         00569ACF
 00569A37    push        ebp
 00569A38    mov         edx,dword ptr [ebp+10]
 00569A3B    mov         eax,ebx
 00569A3D    call        Dif
 00569A42    pop         ecx
 00569A43    test        al,al
>00569A45    je          00569A5A
 00569A47    push        ebp
 00569A48    mov         edx,dword ptr [ebp-4]
 00569A4B    mov         edx,dword ptr [edx]
 00569A4D    mov         eax,dword ptr [ebp+10]
 00569A50    call        Dif
 00569A55    pop         ecx
 00569A56    test        al,al
>00569A58    jne         00569A7E
 00569A5A    push        ebp
 00569A5B    mov         edx,dword ptr [ebp+0C]
 00569A5E    mov         eax,esi
 00569A60    call        Dif
 00569A65    pop         ecx
 00569A66    test        al,al
>00569A68    je          00569A82
 00569A6A    push        ebp
 00569A6B    mov         edx,dword ptr [ebp-4]
 00569A6E    mov         edx,dword ptr [edx+4]
 00569A71    mov         eax,dword ptr [ebp+0C]
 00569A74    call        Dif
 00569A79    pop         ecx
 00569A7A    test        al,al
>00569A7C    je          00569A82
 00569A7E    xor         eax,eax
>00569A80    jmp         00569ACF
 00569A82    push        ebp
 00569A83    mov         eax,dword ptr [ebp-4]
 00569A86    mov         eax,dword ptr [eax]
 00569A88    mov         edx,dword ptr [ebp+10]
 00569A8B    call        Dif
 00569A90    pop         ecx
 00569A91    test        al,al
>00569A93    je          00569AA5
 00569A95    push        ebp
 00569A96    mov         edx,ebx
 00569A98    mov         eax,dword ptr [ebp+10]
 00569A9B    call        Dif
 00569AA0    pop         ecx
 00569AA1    test        al,al
>00569AA3    jne         00569AC9
 00569AA5    push        ebp
 00569AA6    mov         eax,dword ptr [ebp-4]
 00569AA9    mov         eax,dword ptr [eax+4]
 00569AAC    mov         edx,dword ptr [ebp+0C]
 00569AAF    call        Dif
 00569AB4    pop         ecx
 00569AB5    test        al,al
>00569AB7    je          00569ACD
 00569AB9    push        ebp
 00569ABA    mov         edx,esi
 00569ABC    mov         eax,dword ptr [ebp+0C]
 00569ABF    call        Dif
 00569AC4    pop         ecx
 00569AC5    test        al,al
>00569AC7    je          00569ACD
 00569AC9    xor         eax,eax
>00569ACB    jmp         00569ACF
 00569ACD    mov         al,1
 00569ACF    pop         edi
 00569AD0    pop         esi
 00569AD1    pop         ebx
 00569AD2    pop         ecx
 00569AD3    pop         ebp
 00569AD4    ret         0C
*}
end;

//00569AD8
function PointInLine(const P:TPoint; px:Integer; py:Integer; qx:Integer; qy:Integer):Boolean;
begin
{*
 00569AD8    push        ebp
 00569AD9    mov         ebp,esp
 00569ADB    push        ebx
 00569ADC    mov         ebx,dword ptr [ebp+0C]
 00569ADF    push        ebx
 00569AE0    mov         ebx,dword ptr [ebp+8]
 00569AE3    push        ebx
 00569AE4    push        0
 00569AE6    call        PointInLineTolerance
 00569AEB    pop         ebx
 00569AEC    pop         ebp
 00569AED    ret         8
*}
end;

//00569AF0
function PointInPolygon(const P:TPoint; const Poly:array[$0..-$1] of Windows.TPoint; const _Dv_:$0..-$1):Boolean;
begin
{*
 00569AF0    push        ebx
 00569AF1    push        esi
 00569AF2    push        edi
 00569AF3    push        ebp
 00569AF4    add         esp,0FFFFFFF0
 00569AF7    mov         ebx,eax
 00569AF9    mov         byte ptr [esp],0
 00569AFD    mov         esi,ecx
 00569AFF    mov         edi,ecx
 00569B01    test        edi,edi
>00569B03    jl          00569B7B
 00569B05    inc         edi
 00569B06    mov         dword ptr [esp+4],0
 00569B0E    lea         ecx,[edx+4]
 00569B11    mov         eax,dword ptr [ebx+4]
 00569B14    cmp         eax,dword ptr [ecx]
>00569B16    jl          00569B21
 00569B18    mov         eax,dword ptr [edx+esi*8+4]
 00569B1C    cmp         eax,dword ptr [ebx+4]
>00569B1F    jg          00569B31
 00569B21    mov         eax,dword ptr [edx+esi*8+4]
 00569B25    cmp         eax,dword ptr [ebx+4]
>00569B28    jg          00569B6D
 00569B2A    mov         eax,dword ptr [ebx+4]
 00569B2D    cmp         eax,dword ptr [ecx]
>00569B2F    jge         00569B6D
 00569B31    mov         eax,dword ptr [edx+esi*8]
 00569B34    sub         eax,dword ptr [ecx-4]
 00569B37    mov         ebp,dword ptr [ebx+4]
 00569B3A    sub         ebp,dword ptr [ecx]
 00569B3C    imul        eax,ebp
 00569B3F    mov         dword ptr [esp+8],eax
 00569B43    fild        dword ptr [esp+8]
 00569B47    mov         eax,dword ptr [edx+esi*8+4]
 00569B4B    sub         eax,dword ptr [ecx]
 00569B4D    mov         dword ptr [esp+0C],eax
 00569B51    fild        dword ptr [esp+0C]
 00569B55    fdivp       st(1),st
 00569B57    fild        dword ptr [ecx-4]
 00569B5A    faddp       st(1),st
 00569B5C    fild        dword ptr [ebx]
 00569B5E    fcompp
 00569B60    fnstsw      al
 00569B62    sahf
>00569B63    jae         00569B6D
 00569B65    mov         al,byte ptr [esp]
 00569B68    xor         al,1
 00569B6A    mov         byte ptr [esp],al
 00569B6D    mov         esi,dword ptr [esp+4]
 00569B71    inc         dword ptr [esp+4]
 00569B75    add         ecx,8
 00569B78    dec         edi
>00569B79    jne         00569B11
 00569B7B    mov         al,byte ptr [esp]
 00569B7E    add         esp,10
 00569B81    pop         ebp
 00569B82    pop         edi
 00569B83    pop         esi
 00569B84    pop         ebx
 00569B85    ret
*}
end;

//00569B88
function PointInTriangle(const P:TPoint; X0:Integer; X1:Integer; Y0:Integer; Y1:Integer):Boolean;
begin
{*
 00569B88    push        ebp
 00569B89    mov         ebp,esp
 00569B8B    add         esp,0FFFFFFCC
 00569B8E    push        ebx
 00569B8F    push        esi
 00569B90    push        edi
 00569B91    mov         esi,ecx
 00569B93    mov         ebx,edx
 00569B95    mov         dword ptr [ebp-4],eax
 00569B98    mov         edi,dword ptr [ebp+0C]
 00569B9B    lea         ecx,[ebp-24]
 00569B9E    mov         edx,edi
 00569BA0    mov         eax,ebx
 00569BA2    call        Point
 00569BA7    mov         eax,dword ptr [ebp-24]
 00569BAA    mov         dword ptr [ebp-1C],eax
 00569BAD    mov         eax,dword ptr [ebp-20]
 00569BB0    mov         dword ptr [ebp-18],eax
 00569BB3    lea         ecx,[ebp-2C]
 00569BB6    lea         eax,[esi+ebx]
 00569BB9    sar         eax,1
>00569BBB    jns         00569BC0
 00569BBD    adc         eax,0
 00569BC0    mov         edx,dword ptr [ebp+8]
 00569BC3    call        Point
 00569BC8    mov         eax,dword ptr [ebp-2C]
 00569BCB    mov         dword ptr [ebp-14],eax
 00569BCE    mov         eax,dword ptr [ebp-28]
 00569BD1    mov         dword ptr [ebp-10],eax
 00569BD4    lea         ecx,[ebp-34]
 00569BD7    mov         edx,edi
 00569BD9    mov         eax,esi
 00569BDB    call        Point
 00569BE0    mov         eax,dword ptr [ebp-34]
 00569BE3    mov         dword ptr [ebp-0C],eax
 00569BE6    mov         eax,dword ptr [ebp-30]
 00569BE9    mov         dword ptr [ebp-8],eax
 00569BEC    lea         edx,[ebp-1C]
 00569BEF    mov         eax,dword ptr [ebp-4]
 00569BF2    mov         ecx,2
 00569BF7    call        PointInPolygon
 00569BFC    pop         edi
 00569BFD    pop         esi
 00569BFE    pop         ebx
 00569BFF    mov         esp,ebp
 00569C01    pop         ebp
 00569C02    ret         8
*}
end;

//00569C08
function PointInHorizTriangle(const P:TPoint; Y0:Integer; Y1:Integer; X0:Integer; X1:Integer):Boolean;
begin
{*
 00569C08    push        ebp
 00569C09    mov         ebp,esp
 00569C0B    add         esp,0FFFFFFCC
 00569C0E    push        ebx
 00569C0F    push        esi
 00569C10    push        edi
 00569C11    mov         esi,ecx
 00569C13    mov         ebx,edx
 00569C15    mov         dword ptr [ebp-4],eax
 00569C18    mov         edi,dword ptr [ebp+0C]
 00569C1B    lea         ecx,[ebp-24]
 00569C1E    mov         edx,ebx
 00569C20    mov         eax,edi
 00569C22    call        Point
 00569C27    mov         eax,dword ptr [ebp-24]
 00569C2A    mov         dword ptr [ebp-1C],eax
 00569C2D    mov         eax,dword ptr [ebp-20]
 00569C30    mov         dword ptr [ebp-18],eax
 00569C33    lea         ecx,[ebp-2C]
 00569C36    lea         edx,[esi+ebx]
 00569C39    sar         edx,1
>00569C3B    jns         00569C40
 00569C3D    adc         edx,0
 00569C40    mov         eax,dword ptr [ebp+8]
 00569C43    call        Point
 00569C48    mov         eax,dword ptr [ebp-2C]
 00569C4B    mov         dword ptr [ebp-14],eax
 00569C4E    mov         eax,dword ptr [ebp-28]
 00569C51    mov         dword ptr [ebp-10],eax
 00569C54    lea         ecx,[ebp-34]
 00569C57    mov         edx,esi
 00569C59    mov         eax,edi
 00569C5B    call        Point
 00569C60    mov         eax,dword ptr [ebp-34]
 00569C63    mov         dword ptr [ebp-0C],eax
 00569C66    mov         eax,dword ptr [ebp-30]
 00569C69    mov         dword ptr [ebp-8],eax
 00569C6C    lea         edx,[ebp-1C]
 00569C6F    mov         eax,dword ptr [ebp-4]
 00569C72    mov         ecx,2
 00569C77    call        PointInPolygon
 00569C7C    pop         edi
 00569C7D    pop         esi
 00569C7E    pop         ebx
 00569C7F    mov         esp,ebp
 00569C81    pop         ebp
 00569C82    ret         8
*}
end;

//00569C88
function PointInEllipse(const P:TPoint; const Rect:TRect):Boolean;
begin
{*
 00569C88    push        ebx
 00569C89    push        esi
 00569C8A    push        edi
 00569C8B    push        ebp
 00569C8C    add         esp,0FFFFFFE0
 00569C8F    mov         ecx,edx
 00569C91    mov         dword ptr [esp],eax
 00569C94    mov         ebx,dword ptr [ecx]
 00569C96    mov         edi,ebx
 00569C98    add         edi,dword ptr [ecx+8]
 00569C9B    sar         edi,1
>00569C9D    jns         00569CA2
 00569C9F    adc         edi,0
 00569CA2    mov         esi,dword ptr [ecx+4]
 00569CA5    mov         ebp,esi
 00569CA7    add         ebp,dword ptr [ecx+0C]
 00569CAA    sar         ebp,1
>00569CAC    jns         00569CB1
 00569CAE    adc         ebp,0
 00569CB1    mov         eax,edi
 00569CB3    sub         eax,ebx
 00569CB5    imul        eax
 00569CB7    mov         ebx,eax
 00569CB9    mov         eax,ebp
 00569CBB    sub         eax,esi
 00569CBD    imul        eax
 00569CBF    mov         esi,eax
 00569CC1    test        ebx,ebx
>00569CC3    je          00569D22
 00569CC5    test        esi,esi
>00569CC7    je          00569D22
 00569CC9    mov         eax,dword ptr [esp]
 00569CCC    fild        dword ptr [eax]
 00569CCE    fmul        dword ptr ds:[569D30]
 00569CD4    mov         dword ptr [esp+4],edi
 00569CD8    fild        dword ptr [esp+4]
 00569CDC    fsubp       st(1),st
 00569CDE    fmul        st,st(0)
 00569CE0    mov         dword ptr [esp+8],ebx
 00569CE4    fild        dword ptr [esp+8]
 00569CE8    fdivp       st(1),st
 00569CEA    fstp        tbyte ptr [esp+0C]
 00569CEE    wait
 00569CEF    mov         eax,dword ptr [esp]
 00569CF2    fild        dword ptr [eax+4]
 00569CF5    fmul        dword ptr ds:[569D30]
 00569CFB    mov         dword ptr [esp+18],ebp
 00569CFF    fild        dword ptr [esp+18]
 00569D03    fsubp       st(1),st
 00569D05    fmul        st,st(0)
 00569D07    mov         dword ptr [esp+1C],esi
 00569D0B    fild        dword ptr [esp+1C]
 00569D0F    fdivp       st(1),st
 00569D11    fld         tbyte ptr [esp+0C]
 00569D15    faddp       st(1),st
 00569D17    fcomp       dword ptr ds:[569D30]
 00569D1D    fnstsw      al
 00569D1F    sahf
>00569D20    jbe         00569D26
 00569D22    xor         eax,eax
>00569D24    jmp         00569D28
 00569D26    mov         al,1
 00569D28    add         esp,20
 00569D2B    pop         ebp
 00569D2C    pop         edi
 00569D2D    pop         esi
 00569D2E    pop         ebx
 00569D2F    ret
*}
end;

//00569D34
procedure TeeSplitInLines(var St:AnsiString; const Separator:AnsiString);
begin
{*
 00569D34    push        ebx
 00569D35    push        esi
 00569D36    push        edi
 00569D37    mov         edi,edx
 00569D39    mov         esi,eax
 00569D3B    mov         edx,dword ptr [esi]
 00569D3D    mov         eax,edi
 00569D3F    call        AnsiPos
 00569D44    mov         ebx,eax
 00569D46    test        ebx,ebx
>00569D48    jle         00569D5B
 00569D4A    mov         eax,esi
 00569D4C    call        @UniqueStringA
 00569D51    mov         dl,byte ptr ds:[6E385C]
 00569D57    mov         byte ptr [eax+ebx-1],dl
 00569D5B    test        ebx,ebx
>00569D5D    jne         00569D3B
 00569D5F    pop         edi
 00569D60    pop         esi
 00569D61    pop         ebx
 00569D62    ret
*}
end;

//00569D64
function TeeNumTextLines(St:AnsiString):Integer;
begin
{*
 00569D64    push        ebp
 00569D65    mov         ebp,esp
 00569D67    push        0
 00569D69    push        0
 00569D6B    push        0
 00569D6D    push        ebx
 00569D6E    mov         dword ptr [ebp-4],eax
 00569D71    mov         eax,dword ptr [ebp-4]
 00569D74    call        @LStrAddRef
 00569D79    xor         eax,eax
 00569D7B    push        ebp
 00569D7C    push        569DF6
 00569D81    push        dword ptr fs:[eax]
 00569D84    mov         dword ptr fs:[eax],esp
 00569D87    xor         ebx,ebx
 00569D89    lea         eax,[ebp-8]
 00569D8C    mov         dl,byte ptr ds:[6E385C]
 00569D92    call        @LStrFromChar
 00569D97    mov         eax,dword ptr [ebp-8]
 00569D9A    mov         edx,dword ptr [ebp-4]
 00569D9D    call        AnsiPos
 00569DA2    test        eax,eax
>00569DA4    jle         00569DD4
 00569DA6    inc         ebx
 00569DA7    lea         edx,[ebp-4]
 00569DAA    mov         ecx,eax
 00569DAC    mov         eax,1
 00569DB1    xchg        eax,edx
 00569DB2    call        @LStrDelete
 00569DB7    lea         eax,[ebp-0C]
 00569DBA    mov         dl,byte ptr ds:[6E385C]
 00569DC0    call        @LStrFromChar
 00569DC5    mov         eax,dword ptr [ebp-0C]
 00569DC8    mov         edx,dword ptr [ebp-4]
 00569DCB    call        AnsiPos
 00569DD0    test        eax,eax
>00569DD2    jg          00569DA6
 00569DD4    cmp         dword ptr [ebp-4],0
>00569DD8    je          00569DDB
 00569DDA    inc         ebx
 00569DDB    xor         eax,eax
 00569DDD    pop         edx
 00569DDE    pop         ecx
 00569DDF    pop         ecx
 00569DE0    mov         dword ptr fs:[eax],edx
 00569DE3    push        569DFD
 00569DE8    lea         eax,[ebp-0C]
 00569DEB    mov         edx,3
 00569DF0    call        @LStrArrayClr
 00569DF5    ret
>00569DF6    jmp         @HandleFinally
>00569DFB    jmp         00569DE8
 00569DFD    mov         eax,ebx
 00569DFF    pop         ebx
 00569E00    mov         esp,ebp
 00569E02    pop         ebp
 00569E03    ret
*}
end;

//00569E04
function TeeRoundDate(AStep:TDateTimeStep; const ADate:TDateTime):TDateTime;
begin
{*
 00569E04    push        ebp
 00569E05    mov         ebp,esp
 00569E07    add         esp,0FFFFFFF0
 00569E0A    push        ebx
 00569E0B    mov         ebx,eax
 00569E0D    mov         cx,1
 00569E11    mov         dx,1
 00569E15    mov         ax,76C
 00569E19    call        EncodeDate
 00569E1E    fcomp       qword ptr [ebp+8]
 00569E21    fnstsw      al
 00569E23    sahf
>00569E24    jb          00569E34
 00569E26    mov         eax,dword ptr [ebp+8]
 00569E29    mov         dword ptr [ebp-8],eax
 00569E2C    mov         eax,dword ptr [ebp+0C]
 00569E2F    mov         dword ptr [ebp-4],eax
>00569E32    jmp         00569E97
 00569E34    push        dword ptr [ebp+0C]
 00569E37    push        dword ptr [ebp+8]
 00569E3A    lea         ecx,[ebp-0E]
 00569E3D    lea         edx,[ebp-0C]
 00569E40    lea         eax,[ebp-0A]
 00569E43    call        DecodeDate
 00569E48    sub         bl,12
>00569E4B    je          00569E57
 00569E4D    dec         ebx
 00569E4E    sub         bl,5
>00569E51    jb          00569E6E
>00569E53    je          00569E76
>00569E55    jmp         00569E82
 00569E57    cmp         word ptr [ebp-0E],0F
>00569E5C    jb          00569E66
 00569E5E    mov         word ptr [ebp-0E],0F
>00569E64    jmp         00569E82
 00569E66    mov         word ptr [ebp-0E],1
>00569E6C    jmp         00569E82
 00569E6E    mov         word ptr [ebp-0E],1
>00569E74    jmp         00569E82
 00569E76    mov         word ptr [ebp-0E],1
 00569E7C    mov         word ptr [ebp-0C],1
 00569E82    mov         cx,word ptr [ebp-0E]
 00569E86    mov         dx,word ptr [ebp-0C]
 00569E8A    mov         ax,word ptr [ebp-0A]
 00569E8E    call        EncodeDate
 00569E93    fstp        qword ptr [ebp-8]
 00569E96    wait
 00569E97    fld         qword ptr [ebp-8]
 00569E9A    pop         ebx
 00569E9B    mov         esp,ebp
 00569E9D    pop         ebp
 00569E9E    ret         8
*}
end;

//00569EA4
procedure DecMonths(HowMany:Word);
begin
{*
 00569EA4    push        ebp
 00569EA5    mov         ebp,esp
 00569EA7    mov         edx,dword ptr [ebp+8]
 00569EAA    mov         word ptr [edx-2],1
 00569EB0    mov         edx,dword ptr [ebp+8]
 00569EB3    cmp         ax,word ptr [edx-4]
>00569EB7    jae         00569EC2
 00569EB9    mov         edx,dword ptr [ebp+8]
 00569EBC    sub         word ptr [edx-4],ax
 00569EC0    pop         ebp
 00569EC1    ret
 00569EC2    mov         edx,dword ptr [ebp+8]
 00569EC5    dec         word ptr [edx-6]
 00569EC9    mov         edx,dword ptr [ebp+8]
 00569ECC    sub         ax,word ptr [edx-4]
 00569ED0    mov         dx,0C
 00569ED4    sub         dx,ax
 00569ED7    mov         eax,dword ptr [ebp+8]
 00569EDA    mov         word ptr [eax-4],dx
 00569EDE    pop         ebp
 00569EDF    ret
*}
end;

//00569EE0
procedure IncMonths(HowMany:Word);
begin
{*
 00569EE0    push        ebp
 00569EE1    mov         ebp,esp
 00569EE3    mov         edx,dword ptr [ebp+8]
 00569EE6    mov         word ptr [edx-2],1
 00569EEC    mov         edx,dword ptr [ebp+8]
 00569EEF    add         word ptr [edx-4],ax
 00569EF3    mov         eax,dword ptr [ebp+8]
 00569EF6    cmp         word ptr [eax-4],0C
>00569EFB    jbe         00569F0C
 00569EFD    mov         eax,dword ptr [ebp+8]
 00569F00    inc         word ptr [eax-6]
 00569F04    mov         eax,dword ptr [ebp+8]
 00569F07    sub         word ptr [eax-4],0C
 00569F0C    pop         ebp
 00569F0D    ret
*}
end;

//00569F10
procedure IncDecMonths(HowMany:Word);
begin
{*
 00569F10    push        ebp
 00569F11    mov         ebp,esp
 00569F13    mov         edx,dword ptr [ebp+8]
 00569F16    cmp         byte ptr [edx-7],0
>00569F1A    je          00569F28
 00569F1C    mov         edx,dword ptr [ebp+8]
 00569F1F    push        edx
 00569F20    call        IncMonths
 00569F25    pop         ecx
 00569F26    pop         ebp
 00569F27    ret
 00569F28    mov         edx,dword ptr [ebp+8]
 00569F2B    push        edx
 00569F2C    call        DecMonths
 00569F31    pop         ecx
 00569F32    pop         ebp
 00569F33    ret
*}
end;

//00569F34
procedure TeeDateTimeIncrement(IsDateTime:Boolean; Increment:Boolean; tmpWhichDateTime:TDateTimeStep; var Value:Double; const AnIncrement:Double);
begin
{*
 00569F34    push        ebp
 00569F35    mov         ebp,esp
 00569F37    add         esp,0FFFFFFF8
 00569F3A    push        ebx
 00569F3B    mov         ebx,ecx
 00569F3D    mov         byte ptr [ebp-7],dl
 00569F40    test        al,al
>00569F42    je          0056A049
 00569F48    push        dword ptr [ebx+4]
 00569F4B    push        dword ptr [ebx]
 00569F4D    lea         ecx,[ebp-2]
 00569F50    lea         edx,[ebp-4]
 00569F53    lea         eax,[ebp-6]
 00569F56    call        DecodeDate
 00569F5B    xor         eax,eax
 00569F5D    mov         al,byte ptr [ebp+8]
 00569F60    add         eax,0FFFFFFEE
 00569F63    cmp         eax,6
>00569F66    ja          0056A019
 00569F6C    jmp         dword ptr [eax*4+569F73]
 00569F6C    dd          00569F8F
 00569F6C    dd          00569FC6
 00569F6C    dd          00569FD3
 00569F6C    dd          00569FE0
 00569F6C    dd          00569FED
 00569F6C    dd          00569FFA
 00569F6C    dd          0056A007
 00569F8F    cmp         word ptr [ebp-2],0F
>00569F94    jbe         00569FA1
 00569F96    mov         word ptr [ebp-2],0F
>00569F9C    jmp         0056A033
 00569FA1    cmp         word ptr [ebp-2],1
>00569FA6    jbe         00569FB3
 00569FA8    mov         word ptr [ebp-2],1
>00569FAE    jmp         0056A033
 00569FB3    push        ebp
 00569FB4    mov         ax,1
 00569FB8    call        IncDecMonths
 00569FBD    pop         ecx
 00569FBE    mov         word ptr [ebp-2],0F
>00569FC4    jmp         0056A033
 00569FC6    push        ebp
 00569FC7    mov         ax,1
 00569FCB    call        IncDecMonths
 00569FD0    pop         ecx
>00569FD1    jmp         0056A033
 00569FD3    push        ebp
 00569FD4    mov         ax,2
 00569FD8    call        IncDecMonths
 00569FDD    pop         ecx
>00569FDE    jmp         0056A033
 00569FE0    push        ebp
 00569FE1    mov         ax,3
 00569FE5    call        IncDecMonths
 00569FEA    pop         ecx
>00569FEB    jmp         0056A033
 00569FED    push        ebp
 00569FEE    mov         ax,4
 00569FF2    call        IncDecMonths
 00569FF7    pop         ecx
>00569FF8    jmp         0056A033
 00569FFA    push        ebp
 00569FFB    mov         ax,6
 00569FFF    call        IncDecMonths
 0056A004    pop         ecx
>0056A005    jmp         0056A033
 0056A007    cmp         byte ptr [ebp-7],0
>0056A00B    je          0056A013
 0056A00D    inc         word ptr [ebp-6]
>0056A011    jmp         0056A033
 0056A013    dec         word ptr [ebp-6]
>0056A017    jmp         0056A033
 0056A019    cmp         byte ptr [ebp-7],0
>0056A01D    je          0056A029
 0056A01F    fld         qword ptr [ebx]
 0056A021    fadd        qword ptr [ebp+0C]
 0056A024    fstp        qword ptr [ebx]
 0056A026    wait
>0056A027    jmp         0056A061
 0056A029    fld         qword ptr [ebx]
 0056A02B    fsub        qword ptr [ebp+0C]
 0056A02E    fstp        qword ptr [ebx]
 0056A030    wait
>0056A031    jmp         0056A061
 0056A033    mov         cx,word ptr [ebp-2]
 0056A037    mov         dx,word ptr [ebp-4]
 0056A03B    mov         ax,word ptr [ebp-6]
 0056A03F    call        EncodeDate
 0056A044    fstp        qword ptr [ebx]
 0056A046    wait
>0056A047    jmp         0056A061
 0056A049    cmp         byte ptr [ebp-7],0
>0056A04D    je          0056A059
 0056A04F    fld         qword ptr [ebx]
 0056A051    fadd        qword ptr [ebp+0C]
 0056A054    fstp        qword ptr [ebx]
 0056A056    wait
>0056A057    jmp         0056A061
 0056A059    fld         qword ptr [ebx]
 0056A05B    fsub        qword ptr [ebp+0C]
 0056A05E    fstp        qword ptr [ebx]
 0056A060    wait
 0056A061    pop         ebx
 0056A062    pop         ecx
 0056A063    pop         ecx
 0056A064    pop         ebp
 0056A065    ret         0C
*}
end;

//0056A068
function TeeNextStep(const OldStep:Double):Double;
begin
{*
 0056A068    push        ebp
 0056A069    mov         ebp,esp
 0056A06B    add         esp,0FFFFFFF8
 0056A06E    fld         qword ptr [ebp+8]
 0056A071    fcomp       dword ptr ds:[56A11C]
 0056A077    fnstsw      al
 0056A079    sahf
>0056A07A    jb          0056A09D
 0056A07C    fld         tbyte ptr ds:[56A120]
 0056A082    fmul        qword ptr [ebp+8]
 0056A085    add         esp,0FFFFFFF8
 0056A088    fstp        qword ptr [esp]
 0056A08B    wait
 0056A08C    call        TeeNextStep
 0056A091    fmul        dword ptr ds:[56A11C]
 0056A097    fstp        qword ptr [ebp-8]
 0056A09A    wait
>0056A09B    jmp         0056A112
 0056A09D    fld         qword ptr [ebp+8]
 0056A0A0    fcomp       dword ptr ds:[56A12C]
 0056A0A6    fnstsw      al
 0056A0A8    sahf
>0056A0A9    jae         0056A0CE
 0056A0AB    fld         qword ptr [ebp+8]
 0056A0AE    fmul        dword ptr ds:[56A11C]
 0056A0B4    add         esp,0FFFFFFF8
 0056A0B7    fstp        qword ptr [esp]
 0056A0BA    wait
 0056A0BB    call        TeeNextStep
 0056A0C0    fld         tbyte ptr ds:[56A120]
 0056A0C6    fmulp       st(1),st
 0056A0C8    fstp        qword ptr [ebp-8]
 0056A0CB    wait
>0056A0CC    jmp         0056A112
 0056A0CE    fld         qword ptr [ebp+8]
 0056A0D1    fcomp       dword ptr ds:[56A130]
 0056A0D7    fnstsw      al
 0056A0D9    sahf
>0056A0DA    jae         0056A0EA
 0056A0DC    xor         eax,eax
 0056A0DE    mov         dword ptr [ebp-8],eax
 0056A0E1    mov         dword ptr [ebp-4],40000000
>0056A0E8    jmp         0056A112
 0056A0EA    fld         qword ptr [ebp+8]
 0056A0ED    fcomp       dword ptr ds:[56A134]
 0056A0F3    fnstsw      al
 0056A0F5    sahf
>0056A0F6    jae         0056A106
 0056A0F8    xor         eax,eax
 0056A0FA    mov         dword ptr [ebp-8],eax
 0056A0FD    mov         dword ptr [ebp-4],40140000
>0056A104    jmp         0056A112
 0056A106    xor         eax,eax
 0056A108    mov         dword ptr [ebp-8],eax
 0056A10B    mov         dword ptr [ebp-4],40240000
 0056A112    fld         qword ptr [ebp-8]
 0056A115    pop         ecx
 0056A116    pop         ecx
 0056A117    pop         ebp
 0056A118    ret         8
*}
end;

//0056A138
function TryFindResource(const ResName:AnsiString):Boolean;
begin
{*
 0056A138    push        ebp
 0056A139    mov         ebp,esp
 0056A13B    add         esp,0FFFFFEFC
 0056A141    push        ebx
 0056A142    xor         edx,edx
 0056A144    mov         dword ptr [ebp-104],edx
 0056A14A    xor         edx,edx
 0056A14C    push        ebp
 0056A14D    push        56A1CC
 0056A152    push        dword ptr fs:[edx]
 0056A155    mov         dword ptr fs:[edx],esp
 0056A158    lea         edx,[ebp-100]
 0056A15E    xchg        eax,edx
 0056A15F    call        StrPCopy
 0056A164    push        2
 0056A166    lea         eax,[ebp-100]
 0056A16C    push        eax
 0056A16D    mov         eax,dword ptr [ebp+8]
 0056A170    mov         eax,dword ptr [eax-4]
 0056A173    push        eax
 0056A174    call        KERNEL32.FindResourceA
 0056A179    test        eax,eax
>0056A17B    je          0056A1B1
 0056A17D    lea         eax,[ebp-104]
 0056A183    lea         edx,[ebp-100]
 0056A189    mov         ecx,100
 0056A18E    call        @LStrFromArray
 0056A193    mov         ecx,dword ptr [ebp-104]
 0056A199    mov         eax,dword ptr [ebp+8]
 0056A19C    mov         edx,dword ptr [eax-4]
 0056A19F    mov         eax,dword ptr [ebp+8]
 0056A1A2    mov         eax,dword ptr [eax-8]
 0056A1A5    mov         eax,dword ptr [eax+4]
 0056A1A8    call        TBitmap.LoadFromResourceName
 0056A1AD    mov         bl,1
>0056A1AF    jmp         0056A1B3
 0056A1B1    xor         ebx,ebx
 0056A1B3    xor         eax,eax
 0056A1B5    pop         edx
 0056A1B6    pop         ecx
 0056A1B7    pop         ecx
 0056A1B8    mov         dword ptr fs:[eax],edx
 0056A1BB    push        56A1D3
 0056A1C0    lea         eax,[ebp-104]
 0056A1C6    call        @LStrClr
 0056A1CB    ret
>0056A1CC    jmp         @HandleFinally
>0056A1D1    jmp         0056A1C0
 0056A1D3    mov         eax,ebx
 0056A1D5    pop         ebx
 0056A1D6    mov         esp,ebp
 0056A1D8    pop         ebp
 0056A1D9    ret
*}
end;

//0056A1DC
function LoadClassBitmap(HInstance:Integer; Data:Pointer):Boolean;
begin
{*
 0056A1DC    push        ebp
 0056A1DD    mov         ebp,esp
 0056A1DF    add         esp,0FFFFFEEC
 0056A1E5    push        ebx
 0056A1E6    push        esi
 0056A1E7    push        edi
 0056A1E8    xor         ecx,ecx
 0056A1EA    mov         dword ptr [ebp-114],ecx
 0056A1F0    mov         dword ptr [ebp-10],ecx
 0056A1F3    mov         dword ptr [ebp-8],edx
 0056A1F6    mov         dword ptr [ebp-4],eax
 0056A1F9    xor         eax,eax
 0056A1FB    push        ebp
 0056A1FC    push        56A2C2
 0056A201    push        dword ptr fs:[eax]
 0056A204    mov         dword ptr fs:[eax],esp
 0056A207    mov         byte ptr [ebp-9],1
 0056A20B    xor         eax,eax
 0056A20D    push        ebp
 0056A20E    push        56A28B
 0056A213    push        dword ptr fs:[eax]
 0056A216    mov         dword ptr fs:[eax],esp
 0056A219    mov         ebx,dword ptr [ebp-8]
 0056A21C    push        ebp
 0056A21D    lea         edx,[ebp-110]
 0056A223    mov         eax,dword ptr [ebx]
 0056A225    mov         eax,dword ptr [eax]
 0056A227    call        TObject.ClassName
 0056A22C    lea         edx,[ebp-110]
 0056A232    lea         eax,[ebp-10]
 0056A235    call        @LStrFromString
 0056A23A    mov         eax,dword ptr [ebp-10]
 0056A23D    call        TryFindResource
 0056A242    pop         ecx
 0056A243    test        al,al
>0056A245    jne         0056A27D
 0056A247    push        ebp
 0056A248    mov         eax,dword ptr [ebx]
 0056A24A    mov         eax,dword ptr [eax]
 0056A24C    call        TObject.ClassParent
 0056A251    lea         edx,[ebp-110]
 0056A257    call        TObject.ClassName
 0056A25C    lea         edx,[ebp-110]
 0056A262    lea         eax,[ebp-114]
 0056A268    call        @LStrFromString
 0056A26D    mov         eax,dword ptr [ebp-114]
 0056A273    call        TryFindResource
 0056A278    pop         ecx
 0056A279    test        al,al
>0056A27B    je          0056A281
 0056A27D    mov         byte ptr [ebp-9],0
 0056A281    xor         eax,eax
 0056A283    pop         edx
 0056A284    pop         ecx
 0056A285    pop         ecx
 0056A286    mov         dword ptr fs:[eax],edx
>0056A289    jmp         0056A2A1
>0056A28B    jmp         @HandleOnException
 0056A290    dd          1
 0056A294    dd          00656774;Exception
 0056A298    dd          0056A29C
 0056A29C    call        @DoneExcept
 0056A2A1    xor         eax,eax
 0056A2A3    pop         edx
 0056A2A4    pop         ecx
 0056A2A5    pop         ecx
 0056A2A6    mov         dword ptr fs:[eax],edx
 0056A2A9    push        56A2C9
 0056A2AE    lea         eax,[ebp-114]
 0056A2B4    call        @LStrClr
 0056A2B9    lea         eax,[ebp-10]
 0056A2BC    call        @LStrClr
 0056A2C1    ret
>0056A2C2    jmp         @HandleFinally
>0056A2C7    jmp         0056A2AE
 0056A2C9    mov         al,byte ptr [ebp-9]
 0056A2CC    pop         edi
 0056A2CD    pop         esi
 0056A2CE    pop         ebx
 0056A2CF    mov         esp,ebp
 0056A2D1    pop         ebp
 0056A2D2    ret
*}
end;

//0056A2D4
procedure TeeGetClassNameBitmap(AClass:TComponent; ABitmap:TBitmap);
begin
{*
 0056A2D4    add         esp,0FFFFFFF8
 0056A2D7    mov         dword ptr [esp+4],edx
 0056A2DB    mov         dword ptr [esp],eax
 0056A2DE    mov         edx,esp
 0056A2E0    mov         eax,56A1DC;LoadClassBitmap:Boolean
 0056A2E5    call        EnumModules
 0056A2EA    pop         ecx
 0056A2EB    pop         edx
 0056A2EC    ret
*}
end;

end.