//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Graphics;

interface

uses
  SysUtils, Classes, TabNotBk, Graphics, ExtCtrls;

type
  TFontStylesBase = set of TFontStyle;
  TPenMode = (pmBlack, pmWhite, pmNop, pmNot, pmCopy, pmNotCopy, pmMergePenNot, pmMaskPenNot, pmMergeNotPen, pmMaskNotPen, pmMerge, pmNotMerge, pmMask, pmNotMask, pmXor, pmNotXor);
  TBrushStyle = (bsSolid, bsClear, bsHorizontal, bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross);
  TFillMode = (fmAlternate, fmWinding);
  EInvalidGraphic = class(Exception)
  end;
  EInvalidGraphicOperation = class(Exception)
  end;
  TFontPitch = (fpDefault, fpVariable, fpFixed);
  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  TFontStyles = set of TFontStyle;
  TPenStyle = (psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame);
  TGraphicsObject = class(TPersistent)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TTabbedNotebook;//fC
    FResource:PResource;//f10
    FOwnerLock:PRTLCriticalSection;//f14
    procedure sub_005BFA6C; dynamic;//005BFA6C
  end;
  TFont = class(TGraphicsObject)
  public
    Color:TColor;//f18
    FPixelsPerInch:Integer;//f1C
    FNotify:IChangeNotifier;//f20
    destructor Destroy; virtual;//005BFE20
    procedure Assign(Source:TPersistent); virtual;//v8//005BFE7C
    procedure sub_005BFA6C; dynamic;//005BFE54
    constructor Create;//005BFDB4
    procedure SetColor(Value:TColor);//005BFFD8
    function GetHandle:HFONT;//005C000C
    //function GetHeight:?;//005C01E4
    procedure SetHeight(Value:Integer);//005C0200
    function GetName:TFontName;//005C022C
    procedure SetName(const Value:TFontName);//005C0250
    function GetSize:Integer;//005C02B4
    procedure SetSize(Value:Integer);//005C02E0
    function GetStyle:TFontStyles;//005C0310
    procedure SetStyle(Value:TFontStyles);//005C032C
    //function GetPitch:?;//005C0358
    procedure SetPitch(Value:TFontPitch);//005C0374
    function GetCharset:TFontCharset;//005C03A0
    procedure SetCharset(Value:TFontCharset);//005C03BC
  end;
  TPen = class(TGraphicsObject)
  public
    .Mode:TPenMode;//f18
    destructor Destroy; virtual;//005C043C
    procedure Assign(Source:TPersistent); virtual;//v8//005C0470
    constructor Create;//005C03E8
    function GetColor:TColor;//005C05AC
    procedure SetColor(Value:TColor);//005C05C8
    procedure SetHandle(Value:HPEN);//005C0698
    procedure SetMode(Value:TPenMode);//005C06CC
    function GetStyle:TPenStyle;//005C0700
    procedure SetStyle(Value:TPenStyle);//005C071C
    function GetWidth:Integer;//005C0748
    procedure SetWidth(Value:Integer);//005C0764
  end;
  TBrush = class(TGraphicsObject)
  public
    destructor Destroy; virtual;//005C07E4
    procedure Assign(Source:TPersistent); virtual;//v8//005C0818
    constructor Create;//005C0798
    function GetBitmap:TBitmap;//005C094C
    procedure SetBitmap(Value:TBitmap);//005C0968
    function GetColor:TColor;//005C099C
    procedure SetColor(Value:TColor);//005C09B8
    function GetHandle:HBRUSH;//005C09F0
    function GetStyle:TBrushStyle;//005C0AE4
    procedure SetStyle(Value:TBrushStyle);//005C0B00
  end;
  TCanvas = class(TPersistent)
  public
    FHandle:HDC;//f4
    State:TCanvasState;//f8
    Font:TFont;//fC
    Pen:TPen;//f10
    Brush:TBrush;//f14
    FPenPos:TPoint;//f18
    CopyMode:Integer;//f20
    FOnChange:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:dword;//f2C
    FOnChanging:TNotifyEvent;//f30
    f32:word;//f32
    f34:dword;//f34
    FLock:TRTLCriticalSection;//f38
    FLockCount:Integer;//f50
    FTextFlags:Longint;//f54
    destructor Destroy; virtual;//005C0C4C
    procedure vC; virtual;//vC//005C1BA4
    procedure v10; virtual;//v10//005C1B80
    procedure v14; virtual;//v14//005C1A64
    constructor Create;//005C0B3C
    procedure FillRect(const Rect:TRect);//005C11D4
    procedure Lock;//005C12C0
    procedure StretchDraw(const Rect:TRect; Graphic:TGraphic);//005C1520
    function TryLock:Boolean;//005C17A4
    procedure Unlock;//005C1804
    procedure SetFont(Value:TFont);//005C1834
    procedure SetPen(Value:TPen);//005C1854
    procedure SetBrush(Value:TBrush);//005C1874
    function GetHandle:HDC;//005C19B8
    procedure SetHandle(Value:HDC);//005C1A70
  end;
  TProgressEvent = procedure(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:TRect; const Msg:String) of object;;
  TGraphic = class(TInterfacedPersistent)
  public
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TPicture;//f14
    FOnProgress:TProgressEvent;//f18
    f1A:word;//f1A
    f1C:dword;//f1C
    FModified:Boolean;//f20
    FTransparent:Boolean;//f21
    FPaletteModified:Boolean;//f22
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005C344C
    //function v10(?:?):?; virtual;//v10//005C33B8
    procedure Draw; virtual; abstract;//v14//0066AC84
    function Equals(Graphic:TGraphic):Boolean; virtual;//v18//005C3498
    procedure GetEmpty; virtual; abstract;//v1C//0066AC84
    procedure GetHeight; virtual; abstract;//v20//0066AC84
    //function v24:?; virtual;//v24//005C35EC
    //function v28:?; virtual;//v28//005C3604
    procedure GetWidth; virtual; abstract;//v2C//0066AC84
    //procedure v30(?:?); virtual;//v30//005C36BC
    procedure SetHeight; virtual; abstract;//v34//0066AC84
    //procedure v38(?:?); virtual;//v38//005C3738
    //procedure v3C(?:?); virtual;//v3C//005C3748
    procedure SetWidth; virtual; abstract;//v40//0066AC84
    //procedure v44(?:?); virtual;//v44//005C3778
    constructor Create; virtual;//v48//005C3374
    //procedure v4C(?:?); virtual;//v4C//005C3620
    //procedure v50(?:?); virtual;//v50//005C36D8
    procedure LoadFromStream; virtual; abstract;//v54//0066AC84
    procedure SaveToStream; virtual; abstract;//v58//0066AC84
    procedure LoadFromClipboardFormat; virtual; abstract;//v5C//0066AC84
    procedure SaveToClipboardFormat; virtual; abstract;//v60//0066AC84
    //procedure sub_005C367C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//005C367C
  end;
  TPicture = class(TInterfacedPersistent)
  public
    FGraphic:TGraphic;//fC
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TImage;//f14
    FNotify:IChangeNotifier;//f18
    FOnProgress:TProgressEvent;//f20
    f22:word;//f22
    f24:TImage;//f24
    destructor Destroy; virtual;//005C4144
    procedure AssignTo(Dest:TPersistent); virtual;//v0//005C4180
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005C49D4
    procedure Assign(Source:TPersistent); virtual;//v8//005C4648
    //procedure sub_005C475C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//005C475C
    //procedure sub_005C4720(?:?); dynamic;//005C4720
    constructor Create;//005C40F8
    procedure ReadData(Stream:TStream);//005C479C
    procedure WriteData(Stream:TStream);//005C48CC
    function GetWidth:Integer;//005C4A20
    function GetHeight:Integer;//005C4A4C
  end;
  TSharedImage = class(TObject)
  public
    .....FRefCount:Integer;//f4
    procedure v0; virtual; abstract;//v0//0066AC84
    procedure Reference;//005C5E6C
    procedure Release;//005C5E7C
  end;
  TMetafileImage = class(TSharedImage)
  public
    FHandle:THandle;//f8
    FWidth:Integer;//fC
    FHeight:Integer;//f10
    FPalette:HPALETTE;//f14
    FInch:word;//f18
    FTempWidth:Integer;//f1C
    FTempHeight:Integer;//f20
    destructor Destroy; virtual;//005C4A78
    procedure v0; virtual;//v0//005C4ACC
  end;
  TMetafile = class(TGraphic)
  public
    FImage:TMetafileImage;//f28
    FEnhanced:Boolean;//f2C
    destructor Destroy; virtual;//005C4B34
    procedure Assign(Source:TPersistent); virtual;//v8//005C4B70
    //procedure Draw(?:?; ?:?); virtual;//v14//005C4C44
    //function GetEmpty:?; virtual;//v1C//005C4CEC
    //function GetHeight:?; virtual;//v20//005C4D08
    //function v24:?; virtual;//v24//005C4D98
    //function GetWidth:?; virtual;//v2C//005C4E64
    //procedure v30(?:?); virtual;//v30//005C4F94
    //procedure SetHeight(?:?); virtual;//v34//005C537C
    //procedure v3C(?:?); virtual;//v3C//005C54CC
    //procedure SetWidth(?:?); virtual;//v40//005C54DC
    //procedure v44(?:?); virtual;//v44//005C56BC
    constructor Create; virtual;//v48//005C4AD8
    //procedure v50(?:?); virtual;//v50//005C529C
    //procedure LoadFromStream(?:?); virtual;//v54//005C4EF4
    //procedure SaveToStream(?:?); virtual;//v58//005C5340
    //procedure LoadFromClipboardFormat(?:?; ?:?); virtual;//v5C//005C5950
    //procedure SaveToClipboardFormat(?:?; ?:?; ?:?); virtual;//v60//005C59FC
  end;
  TBitmapImage = class(TSharedImage)
  public
    FHandle:HBITMAP;//f8
    FMaskHandle:HBITMAP;//fC
    FPalette:HPALETTE;//f10
    FDIBHandle:HBITMAP;//f14
    FDIB:TDIBSection;//f18
    FSaveStream:TMemoryStream;//f6C
    FOS2Format:Boolean;//f70
    FHalftone:Boolean;//f71
    destructor Destroy; virtual;//005C5EAC
    procedure v0; virtual;//v0//005C5F2C
  end;
  TBitmap = class(TGraphic)
  public
    FImage:TBitmapImage;//f28
    FCanvas:TCanvas;//f2C
    FIgnorePalette:Boolean;//f30
    FMaskBitsValid:Boolean;//f31
    FMaskValid:Boolean;//f32
    FTransparentColor:TColor;//f34
    FTransparentMode:TTransparentMode;//f38
    destructor Destroy; virtual;//005C6A78
    procedure Assign(Source:TPersistent); virtual;//v8//005C6AC8
    //procedure v10(?:?); virtual;//v10//005C6CD8
    //procedure Draw(?:?; ?:?); virtual;//v14//005C6D84
    //function GetEmpty:?; virtual;//v1C//005C70C8
    //function GetHeight:?; virtual;//v20//005C7208
    //function v24:?; virtual;//v24//005C728C
    //function GetWidth:?; virtual;//v2C//005C746C
    //procedure v30(?:?); virtual;//v30//005C7B30
    //procedure SetHeight(?:?); virtual;//v34//005C845C
    //procedure v38(?:?); virtual;//v38//005C8578
    //procedure SetWidth(?:?); virtual;//v40//005C887C
    //procedure v44(?:?); virtual;//v44//005C88EC
    constructor Create; virtual;//v48//005C69FC
    //procedure LoadFromStream(?:?); virtual;//v54//005C7984
    //procedure SaveToStream(?:?); virtual;//v58//005C8CA8
    //procedure LoadFromClipboardFormat(?:?; ?:?; ?:?); virtual;//v5C//005C78EC
    //procedure SaveToClipboardFormat(?:?; ?:?; ?:?); virtual;//v60//005C8CC8
    //function v64:?; virtual;//v64//005C7178
    //function v68:?; virtual;//v68//005C722C
    //procedure v6C(?:?); virtual;//v6C//005C8290
    function GetCanvas:TCanvas;//005C7108
    function GetPixelFormat:TPixelFormat;//005C72B0
    function GetScanline(Row:Integer):Pointer;//005C7368
    procedure LoadFromResourceName(Instance:THandle; const ResName:AnsiString);//005C79B4
    procedure SetHandle(Value:HBITMAP);//005C81A4
    procedure SetMonochrome(Value:Boolean);//005C84CC
    procedure SetPixelFormat(Value:TPixelFormat);//005C8684
  end;
  TIconImage = class(TSharedImage)
  public
    FHandle:HICON;//f8
    FMemoryImage:TCustomMemoryStream;//fC
    FSize:TPoint;//f10
    destructor Destroy; virtual;//005C8D84
    procedure v0; virtual;//v0//005C8DC0
  end;
  TIcon = class(TGraphic)
  public
    FImage:TIconImage;//f28
    FRequestedSize:TPoint;//f2C
    destructor Destroy; virtual;//005C8E50
    procedure Assign(Source:TPersistent); virtual;//v8//005C8E8C
    //procedure Draw(?:?; ?:?); virtual;//v14//005C8F04
    //function GetEmpty:?; virtual;//v1C//005C8F58
    //function GetHeight:?; virtual;//v20//005C8FB0
    //function GetWidth:?; virtual;//v2C//005C8FDC
    //procedure SetHeight(?:?); virtual;//v34//005C92D0
    //procedure v3C(?:?); virtual;//v3C//005C9304
    //procedure SetWidth(?:?); virtual;//v40//005C9314
    constructor Create; virtual;//v48//005C8DE8
    //procedure LoadFromStream(?:?); virtual;//v54//005C9160
    //procedure SaveToStream(?:?); virtual;//v58//005C9348
    //procedure LoadFromClipboardFormat(?:?; ?:?); virtual;//v5C//005C9384
    //procedure SaveToClipboardFormat(?:?; ?:?); virtual;//v60//005C93A4
  end;
  TResourceManager = class(TObject)
  public
    ResList:PResource;//f4
    FLock:TRTLCriticalSection;//f8
    ResDataSize:Word;//f20
    constructor Create;//005BF088
  end;
  TFileFormat = TFileFormat = record//size=10
f4:String;//f4
f8:String;//f8
end;;
  TFileFormatsList = class(TList)
  public
    destructor Destroy; virtual;//005C396C
    constructor Create;//005C3830
  end;
  TClipboardFormats = class(TObject)
  public
    FClasses:TList;//f4
    FFormats:TList;//f8
    constructor Create;//005C3EA0
  end;
  TBitmapCanvas = class(TCanvas)
  public
    FBitmap:TBitmap;//f58
    FOldBitmap:HBITMAP;//f5C
    FOldPalette:HPALETTE;//f60
    destructor Destroy; virtual;//005C5C74
    procedure v14; virtual;//v14//005C5D60
    procedure FreeContext;//005C5CB0
  end;
  TPatternManager = class(TObject)
  public
    List:PPattern;//f4
    FLock:TRTLCriticalSection;//f8
    constructor Create;//005C9584
  end;
    procedure sub_005BDFF4;//005BDFF4
    procedure sub_005BEFF0(?:HPALETTE);//005BEFF0
    function GetHashCode(const Buffer:void ; Count:Integer):Word;//005BF074
    procedure sub_005BF10C(?:TResourceManager);//005BF10C
    procedure sub_005BF124(?:TResourceManager);//005BF124
    //function sub_005BF13C(?:?; ?:?):?;//005BF13C
    procedure sub_005BF240(?:TResourceManager; ?:PResource);//005BF240
    //procedure sub_005BF30C(?:TResourceManager; ?:?; ?:?);//005BF30C
    //procedure sub_005BF390(?:TResourceManager; ?:TGraphicsObject; ?:?);//005BF390
    procedure sub_005BF410(?:TResourceManager);//005BF410
    procedure sub_005BF49C;//005BF49C
    function ColorToRGB(Color:TColor):Longint;//005BF998
    //procedure sub_005BF9F4(?:?);//005BF9F4
    procedure sub_005BFA6C;//005BFA6C
    procedure sub_005BFA90(?:TPersistent);//005BFA90
    procedure sub_005BFAB0(?:TPersistent);//005BFAB0
    //procedure sub_005BFCD4(?:?; ?:?);//005BFCD4
    destructor Destroy;//005BFE20
    procedure sub_005BFA6C;//005BFE54
    procedure Assign(Source:TPersistent);//005BFE7C
    //procedure sub_005BFF54(?:TFont; ?:?);//005BFF54
    //procedure sub_005BFF84(?:TFont; ?:?);//005BFF84
    //procedure sub_005C01BC(?:TFont; ?:?);//005C01BC
    destructor Destroy;//005C043C
    procedure Assign(Source:TPersistent);//005C0470
    //procedure sub_005C0528(?:?; ?:?);//005C0528
    //procedure sub_005C0558(?:?; ?:?);//005C0558
    //function sub_005C05F4(?:TPen):?;//005C05F4
    destructor Destroy;//005C07E4
    procedure Assign(Source:TPersistent);//005C0818
    //procedure sub_005C08C0(?:?; ?:?);//005C08C0
    //procedure sub_005C08F8(?:?; ?:?);//005C08F8
    destructor Destroy;//005C0C4C
    //procedure sub_005C0CC4(?:TCanvas; ?:?; ?:?; ?:?; ?:?);//005C0CC4
    //procedure sub_005C0FC8(?:TCanvas; ?:?; ?:TCanvas; ?:?);//005C0FC8
    //procedure sub_005C1078(?:TCanvas; ?:Integer; ?:?; ?:?);//005C1078
    //procedure sub_005C113C(?:TCanvas; ?:?);//005C113C
    //procedure sub_005C1180(?:TCanvas; ?:?; ?:?; ?:?; ?:?);//005C1180
    procedure sub_005C1224(?:TCanvas; ?:TRect);//005C1224
    //procedure sub_005C1274(?:TCanvas; ?:?; ?:?);//005C1274
    //procedure sub_005C12F0(?:TCanvas; ?:?; ?:?);//005C12F0
    //procedure sub_005C132C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005C132C
    //procedure sub_005C1390(?:?; ?:?; ?:?);//005C1390
    //procedure sub_005C13DC(?:?; ?:?; ?:?);//005C13DC
    //procedure sub_005C1428(?:TCanvas; ?:TRect; ?:Longint; ?:?; ?:?);//005C1428
    procedure sub_005C147C(?:TCanvas; ?:TRect);//005C147C
    //procedure sub_005C14B0(?:?);//005C14B0
    //procedure sub_005C14C4(?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005C14C4
    //function sub_005C156C(?:TCanvas):?;//005C156C
    //procedure sub_005C15A8(?:TCanvas; ?:Longint; ?:?; ?:?);//005C15A8
    //procedure sub_005C1648(?:TCanvas; ?:TRect; ?:TRect; ?:?; ?:?);//005C1648
    //procedure sub_005C16FC(?:TCanvas; ?:AnsiString; ?:?);//005C16FC
    //function sub_005C1754(?:TCanvas; ?:AnsiString):?;//005C1754
    //function sub_005C177C(?:TCanvas; ?:AnsiString):?;//005C177C
    //procedure sub_005C1894(?:?; ?:?);//005C1894
    //procedure sub_005C18C8(?:?; ?:?);//005C18C8
    //function sub_005C18F0(?:TCanvas; ?:?; ?:?):?;//005C18F0
    //procedure sub_005C1930(?:TCanvas; ?:?; ?:?; ?:?);//005C1930
    //procedure sub_005C1984(?:TCanvas; ?:?);//005C1984
    procedure sub_005C19EC(?:Pointer);//005C19EC
    procedure sub_005C1A64;//005C1A64
    //procedure sub_005C1AEC(?:TCanvas; ?:?);//005C1AEC
    procedure sub_005C1B80;//005C1B80
    procedure sub_005C1BA4;//005C1BA4
    procedure sub_005C1BC8(?:TCanvas);//005C1BC8
    procedure sub_005C1C08(?:TCanvas);//005C1C08
    procedure sub_005C1C4C(?:TCanvas);//005C1C4C
    //procedure sub_005C1D88(?:?);//005C1D88
    procedure InvalidGraphic(Str:PResStringRec);//005C1DA8
    procedure InvalidBitmap;//005C1DC8
    procedure InvalidIcon;//005C1DD4
    procedure InvalidMetafile;//005C1DE0
    procedure OutOfResources;//005C1DEC
    procedure sub_005C1E40;//005C1E40
    //function sub_005C1EEC(?:HBITMAP):?;//005C1EEC
    //function sub_005C1F10(?:?; ?:?; ?:?):?;//005C1F10
    //function sub_005C207C(?:?):?;//005C207C
    //function sub_005C20B8(?:?; ?:?; ?:?):?;//005C20B8
    //function sub_005C20F4(?:HDC; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005C20F4
    //procedure sub_005C23C4(?:?);//005C23C4
    //procedure sub_005C2438(?:?; ?:?);//005C2438
    procedure ByteSwapColors(var Colors:void ; Count:Integer);//005C24E4
    //function sub_005C253C(?:?; ?:?):?;//005C253C
    //function sub_005C2668(?:?):?;//005C2668
    //function sub_005C2710(?:HBITMAP; ?:?; ?:?):?;//005C2710
    //function sub_005C27F0(?:HPALETTE; ?:?; ?:?):?;//005C27F0
    //procedure sub_005C2858(?:?; ?:?; ?:?; ?:?);//005C2858
    //function sub_005C2A1C(?:?):?;//005C2A1C
    //function sub_005C2A44(?:Integer; ?:Integer; ?:?):?;//005C2A44
    //procedure sub_005C2AF0(?:TCustomMemoryStream; ?:?; ?:?; ?:?; ?:?; ?:?);//005C2AF0
    //function sub_005C2E3C(?:Byte):?;//005C2E3C
    //procedure sub_005C2E7C(?:?; ?:?; ?:?);//005C2E7C
    //procedure sub_005C2FB0(?:HBITMAP; ?:?; ?:Int64; ?:?);//005C2FB0
    //procedure sub_005C3028(?:?; ?:?; ?:?);//005C3028
    //function sub_005C304C(?:?; ?:?; ?:?; ?:?; ?:?):?;//005C304C
    //function sub_005C310C(?:?; ?:?; ?:?; ?:?):?;//005C310C
    procedure sub_005C313C;//005C313C
    procedure sub_005C3140(?:LongBool);//005C3140
    //procedure sub_005C3158(?:TMemoryStream; ?:?; ?:?);//005C3158
    constructor Create;//005C3374
    //function sub_005C33B8(?:?):?;//005C33B8
    //function sub_005C33E8(?:?):?;//005C33E8
    procedure DefineProperties(Filer:TFiler);//005C344C
    function Equals(Graphic:TGraphic):Boolean;//005C3498
    //function sub_005C35EC:?;//005C35EC
    //function sub_005C3604:?;//005C3604
    //procedure sub_005C3620(?:?);//005C3620
    //procedure sub_005C367C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005C367C
    //procedure sub_005C36BC(?:?);//005C36BC
    //procedure sub_005C36D8(?:?);//005C36D8
    //procedure sub_005C3738(?:?);//005C3738
    //procedure sub_005C3748(?:?);//005C3748
    //procedure sub_005C3778(?:?);//005C3778
    destructor Destroy;//005C396C
    //procedure sub_005C39D4(?:?; ?:AnsiString; ?:?; ?:?; ?:?);//005C39D4
    //function sub_005C3A78(?:TFileFormatsList; ?:AnsiString):?;//005C3A78
    //function sub_005C3B28(?:?; ?:?):?;//005C3B28
    //procedure sub_005C3BC4(?:TFileFormatsList; ?:?);//005C3BC4
    //procedure sub_005C3C24(?:?; ?:TGraphic; ?:?; ?:?);//005C3C24
    //procedure sub_005C3F70(?:?; ?:?; ?:TGraphic);//005C3F70
    //function sub_005C3FE0(?:TClipboardFormats; ?:?):?;//005C3FE0
    //procedure sub_005C403C(?:TClipboardFormats; ?:?);//005C403C
    //function sub_005C40A0:?;//005C40A0
    //function sub_005C40CC:?;//005C40CC
    destructor Destroy;//005C4144
    procedure AssignTo(Dest:TPersistent);//005C4180
    //procedure sub_005C41C4(?:?; ?:TGraphic);//005C41C4
    //function sub_005C4254(?:?):?;//005C4254
    //function sub_005C427C(?:TPicture):?;//005C427C
    procedure sub_005C42A4(?:TPicture; ?:TPersistent);//005C42A4
    //procedure sub_005C4368(?:TPicture; ?:?);//005C4368
    //procedure sub_005C44C0(?:?; ?:?; ?:THandle; ?:?);//005C44C0
    //procedure sub_005C45A8(?:?; ?:?; ?:?; ?:?);//005C45A8
    //function sub_005C45E0(?:TPicture; ?:?):?;//005C45E0
    //procedure sub_005C4608(?:?; ?:?);//005C4608
    //procedure sub_005C4628(?:?; ?:?);//005C4628
    procedure Assign(Source:TPersistent);//005C4648
    //procedure sub_005C46B8(?:TPicture; ?:AnsiString; ?:TMemoryManager; ?:?);//005C46B8
    procedure sub_005C46E4(?:TPicture; ?:TJPEGImage);//005C46E4
    //procedure sub_005C4720(?:?);//005C4720
    //procedure sub_005C475C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005C475C
    //function sub_005C493C(?:?):?;//005C493C
    procedure DefineProperties(Filer:TFiler);//005C49D4
    destructor Destroy;//005C4A78
    procedure sub_005C4ACC;//005C4ACC
    constructor Create;//005C4AD8
    destructor Destroy;//005C4B34
    procedure Assign(Source:TPersistent);//005C4B70
    //procedure Draw(?:?; ?:?);//005C4C44
    //function GetEmpty:?;//005C4CEC
    //function GetHeight:?;//005C4D08
    //function sub_005C4D98:?;//005C4D98
    //function GetWidth:?;//005C4E64
    //procedure LoadFromStream(?:?);//005C4EF4
    procedure sub_005C4F60(?:TMetafile);//005C4F60
    //procedure sub_005C4F94(?:?);//005C4F94
    //procedure sub_005C5014(?:TMetafile; ?:?);//005C5014
    //procedure sub_005C50FC(?:TMetafile; ?:?; ?:?);//005C50FC
    //procedure sub_005C529C(?:?);//005C529C
    //procedure SaveToStream(?:?);//005C5340
    //procedure SetHeight(?:?);//005C537C
    //procedure sub_005C5414(?:TMetafile; ?:?);//005C5414
    //procedure sub_005C5470(?:TMetafile; ?:?);//005C5470
    //procedure sub_005C54CC(?:?);//005C54CC
    //procedure SetWidth(?:?);//005C54DC
    //function sub_005C5574(?:TMetafile; ?:?):?;//005C5574
    procedure sub_005C55E8(?:TMetafile);//005C55E8
    //procedure sub_005C56BC(?:?);//005C56BC
    //procedure sub_005C5754(?:TMetafile; ?:?);//005C5754
    //procedure sub_005C57E8(?:TMetafile; ?:?);//005C57E8
    //procedure LoadFromClipboardFormat(?:?; ?:?);//005C5950
    //procedure SaveToClipboardFormat(?:?; ?:?; ?:?);//005C59FC
    procedure FreeMemoryContexts;//005C5ADC
    procedure sub_005C5B88(?:HBITMAP);//005C5B88
    constructor sub_005C5C24;//005C5C24
    destructor Destroy;//005C5C74
    procedure sub_005C5D60;//005C5D60
    destructor Destroy;//005C5EAC
    procedure sub_005C5F2C;//005C5F2C
    //procedure sub_005C5FA8(?:HBITMAP; ?:?; ?:?);//005C5FA8
    procedure sub_005C6078(?:TDIBSection);//005C6078
    //function sub_005C60E8(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;//005C60E8
    function CopyPalette(Palette:HPALETTE):HPALETTE;//005C6758
    //function sub_005C67D0(?:HBITMAP; ?:HPALETTE; ?:Longint):?;//005C67D0
    constructor Create;//005C69FC
    destructor Destroy;//005C6A78
    procedure Assign(Source:TPersistent);//005C6AC8
    //procedure sub_005C6BC8(?:TBitmap; ?:HBITMAP; ?:?);//005C6BC8
    procedure sub_005C6C9C(?:TBitmap; ?:TBitmap);//005C6C9C
    //procedure sub_005C6CD8(?:?);//005C6CD8
    procedure sub_005C6CFC(?:TBitmap);//005C6CFC
    //procedure Draw(?:?; ?:?);//005C6D84
    //procedure sub_005C7028(?:?);//005C7028
    //function GetEmpty:?;//005C70C8
    //function sub_005C7178:?;//005C7178
    //function sub_005C71B0(?:TBitmap):?;//005C71B0
    //function GetHeight:?;//005C7208
    //function sub_005C722C:?;//005C722C
    //function sub_005C7250(?:TBitmap):?;//005C7250
    //function sub_005C728C:?;//005C728C
    //function sub_005C7404(?:TBitmap):?;//005C7404
    //function GetWidth:?;//005C746C
    procedure sub_005C7488(?:TBitmap);//005C7488
    procedure sub_005C755C(?:TBitmap);//005C755C
    procedure sub_005C757C(?:TBitmap);//005C757C
    //procedure sub_005C7640(?:TBitmap; ?:?);//005C7640
    procedure sub_005C774C(?:TBitmap);//005C774C
    procedure sub_005C77DC(?:TBitmap);//005C77DC
    //procedure LoadFromClipboardFormat(?:?; ?:?; ?:?);//005C78EC
    //procedure LoadFromStream(?:?);//005C7984
    //procedure sub_005C7A24(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);//005C7A24
    //procedure sub_005C7B30(?:?);//005C7B30
    //procedure sub_005C7B60(?:TBitmap; ?:?; ?:?; ?:?);//005C7B60
    //procedure sub_005C812C(?:TBitmap; ?:?; ?:?);//005C812C
    //procedure sub_005C8290(?:?);//005C8290
    //procedure SetHeight(?:?);//005C845C
    //procedure sub_005C8578(?:?);//005C8578
    //procedure sub_005C87FC(?:TBitmap; ?:?);//005C87FC
    //procedure SetWidth(?:?);//005C887C
    //procedure sub_005C88EC(?:?);//005C88EC
    //procedure sub_005C890C(?:TBitmap; ?:?; ?:?);//005C890C
    //function sub_005C8C4C(?:TBitmap):?;//005C8C4C
    //procedure SaveToStream(?:?);//005C8CA8
    //procedure SaveToClipboardFormat(?:?; ?:?; ?:?);//005C8CC8
    destructor Destroy;//005C8D84
    procedure sub_005C8DC0;//005C8DC0
    constructor Create;//005C8DE8
    destructor Destroy;//005C8E50
    procedure Assign(Source:TPersistent);//005C8E8C
    //procedure Draw(?:?; ?:?);//005C8F04
    //function GetEmpty:?;//005C8F58
    //function sub_005C8F8C(?:TIcon):?;//005C8F8C
    //function GetHeight:?;//005C8FB0
    //function GetWidth:?;//005C8FDC
    procedure sub_005C9008(?:TIcon);//005C9008
    procedure sub_005C909C(?:TIcon);//005C909C
    //procedure LoadFromStream(?:?);//005C9160
    //procedure sub_005C9220(?:TIcon; ?:?; ?:TMemoryStream);//005C9220
    //procedure sub_005C92A8(?:TIcon; ?:?);//005C92A8
    //procedure SetHeight(?:?);//005C92D0
    //procedure sub_005C9304(?:?);//005C9304
    //procedure SetWidth(?:?);//005C9314
    //procedure SaveToStream(?:?);//005C9348
    //procedure LoadFromClipboardFormat(?:?; ?:?);//005C9384
    //procedure SaveToClipboardFormat(?:?; ?:?);//005C93A4
    //procedure sub_005C93C4(?:TGraphic; ?:?);//005C93C4
    procedure sub_005C9418;//005C9418
    function GetDefFontCharSet:TFontCharset;//005C9458
    procedure sub_005C94B0;//005C94B0
    //procedure sub_005C9600(?:?);//005C9600
    //procedure sub_005C9618(?:?);//005C9618
    //function sub_005C9630(?:TPatternManager; ?:Longint; ?:?):?;//005C9630
    //function sub_005C96FC(?:?; ?:?; ?:?):?;//005C96FC
    //function sub_005C98A0(?:?; ?:?):?;//005C98A0
    procedure Finalization;//005C98E8

implementation

//005BDFF4
procedure sub_005BDFF4;
begin
{*
 005BDFF4    sub         dword ptr ds:[6ECD18],1
 005BDFFB    ret
*}
end;

//005BEFF0
procedure sub_005BEFF0(?:HPALETTE);
begin
{*
 005BEFF0    push        ebp
 005BEFF1    mov         ebp,esp
 005BEFF3    push        ecx
 005BEFF4    mov         dword ptr [ebp-4],eax
 005BEFF7    cmp         dword ptr [ebp-4],0
>005BEFFB    je          005BF011
 005BEFFD    mov         eax,dword ptr [ebp-4]
 005BF000    cmp         eax,dword ptr ds:[6ECD1C];0x0 SystemPalette16:HPALETTE
>005BF006    je          005BF011
 005BF008    mov         eax,dword ptr [ebp-4]
 005BF00B    push        eax
 005BF00C    call        GDI32.DeleteObject
 005BF011    pop         ecx
 005BF012    pop         ebp
 005BF013    ret
*}
end;

//005BF074
function GetHashCode(const Buffer:void ; Count:Integer):Word;
begin
{*
 005BF074    mov         ecx,edx
 005BF076    mov         edx,eax
 005BF078    xor         eax,eax
 005BF07A    rol         ax,5
 005BF07E    xor         al,byte ptr [edx]
 005BF080    inc         edx
 005BF081    dec         ecx
>005BF082    jne         005BF07A
 005BF084    ret
*}
end;

//005BF088
constructor TResourceManager.Create;
begin
{*
 005BF088    push        ebp
 005BF089    mov         ebp,esp
 005BF08B    add         esp,0FFFFFFF8
 005BF08E    test        dl,dl
>005BF090    je          005BF09A
 005BF092    add         esp,0FFFFFFF0
 005BF095    call        @ClassCreate
 005BF09A    mov         word ptr [ebp-8],cx
 005BF09E    mov         byte ptr [ebp-5],dl
 005BF0A1    mov         dword ptr [ebp-4],eax
 005BF0A4    mov         eax,dword ptr [ebp-4]
 005BF0A7    mov         dx,word ptr [ebp-8]
 005BF0AB    mov         word ptr [eax+20],dx
 005BF0AF    mov         eax,dword ptr [ebp-4]
 005BF0B2    add         eax,8
 005BF0B5    push        eax
 005BF0B6    call        KERNEL32.InitializeCriticalSection
 005BF0BB    mov         eax,dword ptr [ebp-4]
 005BF0BE    cmp         byte ptr [ebp-5],0
>005BF0C2    je          005BF0D3
 005BF0C4    call        @AfterConstruction
 005BF0C9    pop         dword ptr fs:[0]
 005BF0D0    add         esp,0C
 005BF0D3    mov         eax,dword ptr [ebp-4]
 005BF0D6    pop         ecx
 005BF0D7    pop         ecx
 005BF0D8    pop         ebp
 005BF0D9    ret
*}
end;

//005BF10C
procedure sub_005BF10C(?:TResourceManager);
begin
{*
 005BF10C    push        ebp
 005BF10D    mov         ebp,esp
 005BF10F    push        ecx
 005BF110    mov         dword ptr [ebp-4],eax
 005BF113    mov         eax,dword ptr [ebp-4]
 005BF116    add         eax,8
 005BF119    push        eax
 005BF11A    call        KERNEL32.EnterCriticalSection
 005BF11F    pop         ecx
 005BF120    pop         ebp
 005BF121    ret
*}
end;

//005BF124
procedure sub_005BF124(?:TResourceManager);
begin
{*
 005BF124    push        ebp
 005BF125    mov         ebp,esp
 005BF127    push        ecx
 005BF128    mov         dword ptr [ebp-4],eax
 005BF12B    mov         eax,dword ptr [ebp-4]
 005BF12E    add         eax,8
 005BF131    push        eax
 005BF132    call        KERNEL32.LeaveCriticalSection
 005BF137    pop         ecx
 005BF138    pop         ebp
 005BF139    ret
*}
end;

//005BF13C
{*function sub_005BF13C(?:?; ?:?):?;
begin
 005BF13C    push        ebp
 005BF13D    mov         ebp,esp
 005BF13F    add         esp,0FFFFFFEC
 005BF142    mov         dword ptr [ebp-8],edx
 005BF145    mov         dword ptr [ebp-4],eax
 005BF148    mov         eax,dword ptr [ebp-4]
 005BF14B    movzx       edx,word ptr [eax+20]
 005BF14F    mov         eax,dword ptr [ebp-8]
 005BF152    call        GetHashCode
 005BF157    mov         word ptr [ebp-0E],ax
 005BF15B    mov         eax,dword ptr [ebp-4]
 005BF15E    call        005BF10C
 005BF163    xor         eax,eax
 005BF165    push        ebp
 005BF166    push        5BF231
 005BF16B    push        dword ptr fs:[eax]
 005BF16E    mov         dword ptr fs:[eax],esp
 005BF171    mov         eax,dword ptr [ebp-4]
 005BF174    mov         eax,dword ptr [eax+4]
 005BF177    mov         dword ptr [ebp-0C],eax
>005BF17A    jmp         005BF184
 005BF17C    mov         eax,dword ptr [ebp-0C]
 005BF17F    mov         eax,dword ptr [eax]
 005BF181    mov         dword ptr [ebp-0C],eax
 005BF184    cmp         dword ptr [ebp-0C],0
>005BF188    je          005BF1B0
 005BF18A    mov         eax,dword ptr [ebp-0C]
 005BF18D    mov         ax,word ptr [eax+0C]
 005BF191    cmp         ax,word ptr [ebp-0E]
>005BF195    jne         005BF17C
 005BF197    mov         eax,dword ptr [ebp-4]
 005BF19A    movzx       ecx,word ptr [eax+20]
 005BF19E    mov         edx,dword ptr [ebp-8]
 005BF1A1    mov         eax,dword ptr [ebp-0C]
 005BF1A4    add         eax,10
 005BF1A7    call        CompareMem
 005BF1AC    test        al,al
>005BF1AE    je          005BF17C
 005BF1B0    cmp         dword ptr [ebp-0C],0
>005BF1B4    jne         005BF215
 005BF1B6    mov         eax,dword ptr [ebp-4]
 005BF1B9    movzx       eax,word ptr [eax+20]
 005BF1BD    add         eax,10
 005BF1C0    call        @GetMem
 005BF1C5    mov         dword ptr [ebp-0C],eax
 005BF1C8    mov         eax,dword ptr [ebp-0C]
 005BF1CB    mov         dword ptr [ebp-14],eax
 005BF1CE    mov         eax,dword ptr [ebp-4]
 005BF1D1    mov         eax,dword ptr [eax+4]
 005BF1D4    mov         edx,dword ptr [ebp-14]
 005BF1D7    mov         dword ptr [edx],eax
 005BF1D9    mov         eax,dword ptr [ebp-14]
 005BF1DC    xor         edx,edx
 005BF1DE    mov         dword ptr [eax+4],edx
 005BF1E1    mov         eax,dword ptr [ebp-8]
 005BF1E4    mov         eax,dword ptr [eax]
 005BF1E6    mov         edx,dword ptr [ebp-14]
 005BF1E9    mov         dword ptr [edx+8],eax
 005BF1EC    mov         eax,dword ptr [ebp-14]
 005BF1EF    mov         dx,word ptr [ebp-0E]
 005BF1F3    mov         word ptr [eax+0C],dx
 005BF1F7    mov         eax,dword ptr [ebp-4]
 005BF1FA    movzx       ecx,word ptr [eax+20]
 005BF1FE    mov         eax,dword ptr [ebp-14]
 005BF201    lea         edx,[eax+10]
 005BF204    mov         eax,dword ptr [ebp-8]
 005BF207    call        Move
 005BF20C    mov         eax,dword ptr [ebp-4]
 005BF20F    mov         edx,dword ptr [ebp-0C]
 005BF212    mov         dword ptr [eax+4],edx
 005BF215    mov         eax,dword ptr [ebp-0C]
 005BF218    inc         dword ptr [eax+4]
 005BF21B    xor         eax,eax
 005BF21D    pop         edx
 005BF21E    pop         ecx
 005BF21F    pop         ecx
 005BF220    mov         dword ptr fs:[eax],edx
 005BF223    push        5BF238
 005BF228    mov         eax,dword ptr [ebp-4]
 005BF22B    call        005BF124
 005BF230    ret
>005BF231    jmp         @HandleFinally
>005BF236    jmp         005BF228
 005BF238    mov         eax,dword ptr [ebp-0C]
 005BF23B    mov         esp,ebp
 005BF23D    pop         ebp
 005BF23E    ret
end;*}

//005BF240
procedure sub_005BF240(?:TResourceManager; ?:PResource);
begin
{*
 005BF240    push        ebp
 005BF241    mov         ebp,esp
 005BF243    add         esp,0FFFFFFEC
 005BF246    mov         dword ptr [ebp-8],edx
 005BF249    mov         dword ptr [ebp-4],eax
 005BF24C    cmp         dword ptr [ebp-8],0
>005BF250    je          005BF308
 005BF256    mov         eax,dword ptr [ebp-8]
 005BF259    mov         dword ptr [ebp-14],eax
 005BF25C    mov         eax,dword ptr [ebp-4]
 005BF25F    call        005BF10C
 005BF264    xor         eax,eax
 005BF266    push        ebp
 005BF267    push        5BF2DE
 005BF26C    push        dword ptr fs:[eax]
 005BF26F    mov         dword ptr fs:[eax],esp
 005BF272    mov         eax,dword ptr [ebp-14]
 005BF275    dec         dword ptr [eax+4]
 005BF278    mov         eax,dword ptr [ebp-14]
 005BF27B    cmp         dword ptr [eax+4],0
 005BF27F    sete        byte ptr [ebp-0D]
 005BF283    cmp         byte ptr [ebp-0D],0
>005BF287    je          005BF2C8
 005BF289    mov         eax,dword ptr [ebp-4]
 005BF28C    mov         eax,dword ptr [eax+4]
 005BF28F    cmp         eax,dword ptr [ebp-8]
>005BF292    jne         005BF2A1
 005BF294    mov         eax,dword ptr [ebp-8]
 005BF297    mov         eax,dword ptr [eax]
 005BF299    mov         edx,dword ptr [ebp-4]
 005BF29C    mov         dword ptr [edx+4],eax
>005BF29F    jmp         005BF2C8
 005BF2A1    mov         eax,dword ptr [ebp-4]
 005BF2A4    mov         eax,dword ptr [eax+4]
 005BF2A7    mov         dword ptr [ebp-0C],eax
>005BF2AA    jmp         005BF2B4
 005BF2AC    mov         eax,dword ptr [ebp-0C]
 005BF2AF    mov         eax,dword ptr [eax]
 005BF2B1    mov         dword ptr [ebp-0C],eax
 005BF2B4    mov         eax,dword ptr [ebp-0C]
 005BF2B7    mov         eax,dword ptr [eax]
 005BF2B9    cmp         eax,dword ptr [ebp-8]
>005BF2BC    jne         005BF2AC
 005BF2BE    mov         eax,dword ptr [ebp-8]
 005BF2C1    mov         eax,dword ptr [eax]
 005BF2C3    mov         edx,dword ptr [ebp-0C]
 005BF2C6    mov         dword ptr [edx],eax
 005BF2C8    xor         eax,eax
 005BF2CA    pop         edx
 005BF2CB    pop         ecx
 005BF2CC    pop         ecx
 005BF2CD    mov         dword ptr fs:[eax],edx
 005BF2D0    push        5BF2E5
 005BF2D5    mov         eax,dword ptr [ebp-4]
 005BF2D8    call        005BF124
 005BF2DD    ret
>005BF2DE    jmp         @HandleFinally
>005BF2E3    jmp         005BF2D5
 005BF2E5    cmp         byte ptr [ebp-0D],0
>005BF2E9    je          005BF308
 005BF2EB    mov         eax,dword ptr [ebp-14]
 005BF2EE    cmp         dword ptr [eax+8],0
>005BF2F2    je          005BF300
 005BF2F4    mov         eax,dword ptr [ebp-14]
 005BF2F7    mov         eax,dword ptr [eax+8]
 005BF2FA    push        eax
 005BF2FB    call        GDI32.DeleteObject
 005BF300    mov         eax,dword ptr [ebp-8]
 005BF303    call        @FreeMem
 005BF308    mov         esp,ebp
 005BF30A    pop         ebp
 005BF30B    ret
*}
end;

//005BF30C
{*procedure sub_005BF30C(?:TResourceManager; ?:?; ?:?);
begin
 005BF30C    push        ebp
 005BF30D    mov         ebp,esp
 005BF30F    add         esp,0FFFFFFF0
 005BF312    push        esi
 005BF313    mov         dword ptr [ebp-0C],ecx
 005BF316    mov         dword ptr [ebp-8],edx
 005BF319    mov         dword ptr [ebp-4],eax
 005BF31C    mov         eax,dword ptr [ebp-4]
 005BF31F    call        005BF10C
 005BF324    xor         eax,eax
 005BF326    push        ebp
 005BF327    push        5BF384
 005BF32C    push        dword ptr fs:[eax]
 005BF32F    mov         dword ptr fs:[eax],esp
 005BF332    mov         eax,dword ptr [ebp-8]
 005BF335    mov         eax,dword ptr [eax+10]
 005BF338    mov         dword ptr [ebp-10],eax
 005BF33B    mov         edx,dword ptr [ebp-0C]
 005BF33E    mov         eax,dword ptr [ebp-4]
 005BF341    call        005BF13C
 005BF346    mov         edx,dword ptr [ebp-8]
 005BF349    mov         dword ptr [edx+10],eax
 005BF34C    mov         eax,dword ptr [ebp-8]
 005BF34F    mov         eax,dword ptr [eax+10]
 005BF352    cmp         eax,dword ptr [ebp-10]
>005BF355    je          005BF363
 005BF357    mov         eax,dword ptr [ebp-8]
 005BF35A    mov         si,0FFFD
 005BF35E    call        @CallDynaInst
 005BF363    mov         edx,dword ptr [ebp-10]
 005BF366    mov         eax,dword ptr [ebp-4]
 005BF369    call        005BF240
 005BF36E    xor         eax,eax
 005BF370    pop         edx
 005BF371    pop         ecx
 005BF372    pop         ecx
 005BF373    mov         dword ptr fs:[eax],edx
 005BF376    push        5BF38B
 005BF37B    mov         eax,dword ptr [ebp-4]
 005BF37E    call        005BF124
 005BF383    ret
>005BF384    jmp         @HandleFinally
>005BF389    jmp         005BF37B
 005BF38B    pop         esi
 005BF38C    mov         esp,ebp
 005BF38E    pop         ebp
 005BF38F    ret
end;*}

//005BF390
{*procedure sub_005BF390(?:TResourceManager; ?:TGraphicsObject; ?:?);
begin
 005BF390    push        ebp
 005BF391    mov         ebp,esp
 005BF393    add         esp,0FFFFFFF0
 005BF396    push        esi
 005BF397    mov         dword ptr [ebp-0C],ecx
 005BF39A    mov         dword ptr [ebp-8],edx
 005BF39D    mov         dword ptr [ebp-4],eax
 005BF3A0    mov         eax,dword ptr [ebp-4]
 005BF3A3    call        005BF10C
 005BF3A8    xor         eax,eax
 005BF3AA    push        ebp
 005BF3AB    push        5BF403
 005BF3B0    push        dword ptr fs:[eax]
 005BF3B3    mov         dword ptr fs:[eax],esp
 005BF3B6    mov         eax,dword ptr [ebp-8]
 005BF3B9    mov         eax,dword ptr [eax+10]
 005BF3BC    mov         dword ptr [ebp-10],eax
 005BF3BF    mov         eax,dword ptr [ebp-10]
 005BF3C2    cmp         eax,dword ptr [ebp-0C]
>005BF3C5    je          005BF3ED
 005BF3C7    mov         eax,dword ptr [ebp-0C]
 005BF3CA    inc         dword ptr [eax+4]
 005BF3CD    mov         eax,dword ptr [ebp-8]
 005BF3D0    mov         edx,dword ptr [ebp-0C]
 005BF3D3    mov         dword ptr [eax+10],edx
 005BF3D6    mov         eax,dword ptr [ebp-8]
 005BF3D9    mov         si,0FFFD
 005BF3DD    call        @CallDynaInst
 005BF3E2    mov         edx,dword ptr [ebp-10]
 005BF3E5    mov         eax,dword ptr [ebp-4]
 005BF3E8    call        005BF240
 005BF3ED    xor         eax,eax
 005BF3EF    pop         edx
 005BF3F0    pop         ecx
 005BF3F1    pop         ecx
 005BF3F2    mov         dword ptr fs:[eax],edx
 005BF3F5    push        5BF40A
 005BF3FA    mov         eax,dword ptr [ebp-4]
 005BF3FD    call        005BF124
 005BF402    ret
>005BF403    jmp         @HandleFinally
>005BF408    jmp         005BF3FA
 005BF40A    pop         esi
 005BF40B    mov         esp,ebp
 005BF40D    pop         ebp
 005BF40E    ret
end;*}

//005BF410
procedure sub_005BF410(?:TResourceManager);
begin
{*
 005BF410    push        ebp
 005BF411    mov         ebp,esp
 005BF413    add         esp,0FFFFFFF4
 005BF416    mov         dword ptr [ebp-4],eax
 005BF419    mov         eax,dword ptr [ebp-4]
 005BF41C    call        005BF10C
 005BF421    xor         eax,eax
 005BF423    push        ebp
 005BF424    push        5BF48E
 005BF429    push        dword ptr fs:[eax]
 005BF42C    mov         dword ptr fs:[eax],esp
 005BF42F    mov         eax,dword ptr [ebp-4]
 005BF432    mov         eax,dword ptr [eax+4]
 005BF435    mov         dword ptr [ebp-8],eax
 005BF438    cmp         dword ptr [ebp-8],0
>005BF43C    je          005BF478
 005BF43E    mov         eax,dword ptr [ebp-8]
 005BF441    mov         dword ptr [ebp-0C],eax
 005BF444    mov         eax,dword ptr [ebp-0C]
 005BF447    cmp         dword ptr [eax+8],0
>005BF44B    je          005BF46A
 005BF44D    mov         eax,dword ptr [ebp-0C]
 005BF450    cmp         dword ptr [eax+14],0
>005BF454    jge         005BF46A
 005BF456    mov         eax,dword ptr [ebp-0C]
 005BF459    mov         eax,dword ptr [eax+8]
 005BF45C    push        eax
 005BF45D    call        GDI32.DeleteObject
 005BF462    mov         eax,dword ptr [ebp-0C]
 005BF465    xor         edx,edx
 005BF467    mov         dword ptr [eax+8],edx
 005BF46A    mov         eax,dword ptr [ebp-8]
 005BF46D    mov         eax,dword ptr [eax]
 005BF46F    mov         dword ptr [ebp-8],eax
 005BF472    cmp         dword ptr [ebp-8],0
>005BF476    jne         005BF43E
 005BF478    xor         eax,eax
 005BF47A    pop         edx
 005BF47B    pop         ecx
 005BF47C    pop         ecx
 005BF47D    mov         dword ptr fs:[eax],edx
 005BF480    push        5BF495
 005BF485    mov         eax,dword ptr [ebp-4]
 005BF488    call        005BF124
 005BF48D    ret
>005BF48E    jmp         @HandleFinally
>005BF493    jmp         005BF485
 005BF495    mov         esp,ebp
 005BF497    pop         ebp
 005BF498    ret
*}
end;

//005BF49C
procedure sub_005BF49C;
begin
{*
 005BF49C    push        ebp
 005BF49D    mov         ebp,esp
 005BF49F    add         esp,0FFFFFFEC
 005BF4A2    xor         eax,eax
 005BF4A4    mov         dword ptr [ebp-4],eax
 005BF4A7    mov         eax,[006ECD74];0x0 CanvasList:TThreadList
 005BF4AC    call        TThreadList.LockList
 005BF4B1    mov         dword ptr [ebp-0C],eax
 005BF4B4    xor         eax,eax
 005BF4B6    push        ebp
 005BF4B7    push        5BF54B
 005BF4BC    push        dword ptr fs:[eax]
 005BF4BF    mov         dword ptr fs:[eax],esp
>005BF4C2    jmp         005BF4E5
 005BF4C4    mov         edx,dword ptr [ebp-4]
 005BF4C7    mov         eax,dword ptr [ebp-0C]
 005BF4CA    call        TList.Get
 005BF4CF    mov         dword ptr [ebp-10],eax
 005BF4D2    mov         eax,dword ptr [ebp-10]
 005BF4D5    call        TCanvas.Lock
 005BF4DA    inc         dword ptr [ebp-4]
 005BF4DD    mov         eax,dword ptr [ebp-10]
 005BF4E0    call        005C19EC
 005BF4E5    mov         eax,dword ptr [ebp-0C]
 005BF4E8    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005BF4EB    cmp         eax,dword ptr [ebp-4]
>005BF4EE    jg          005BF4C4
 005BF4F0    push        ebp
 005BF4F1    mov         eax,[006ECD6C];0x0 PenManager:TResourceManager
 005BF4F6    call        005BF410
 005BF4FB    pop         ecx
 005BF4FC    push        ebp
 005BF4FD    mov         eax,[006ECD70];0x0 BrushManager:TResourceManager
 005BF502    call        005BF410
 005BF507    pop         ecx
 005BF508    xor         eax,eax
 005BF50A    pop         edx
 005BF50B    pop         ecx
 005BF50C    pop         ecx
 005BF50D    mov         dword ptr fs:[eax],edx
 005BF510    push        5BF552
 005BF515    mov         eax,dword ptr [ebp-4]
 005BF518    dec         eax
 005BF519    test        eax,eax
>005BF51B    jl          005BF540
 005BF51D    inc         eax
 005BF51E    mov         dword ptr [ebp-14],eax
 005BF521    mov         dword ptr [ebp-8],0
 005BF528    mov         edx,dword ptr [ebp-8]
 005BF52B    mov         eax,dword ptr [ebp-0C]
 005BF52E    call        TList.Get
 005BF533    call        TCanvas.Unlock
 005BF538    inc         dword ptr [ebp-8]
 005BF53B    dec         dword ptr [ebp-14]
>005BF53E    jne         005BF528
 005BF540    mov         eax,[006ECD74];0x0 CanvasList:TThreadList
 005BF545    call        TThreadList.UnlockList
 005BF54A    ret
>005BF54B    jmp         @HandleFinally
>005BF550    jmp         005BF515
 005BF552    mov         esp,ebp
 005BF554    pop         ebp
 005BF555    ret
*}
end;

//005BF998
function ColorToRGB(Color:TColor):Longint;
begin
{*
 005BF998    push        ebp
 005BF999    mov         ebp,esp
 005BF99B    add         esp,0FFFFFFF8
 005BF99E    mov         dword ptr [ebp-4],eax
 005BF9A1    cmp         dword ptr [ebp-4],0
>005BF9A5    jge         005BF9BA
 005BF9A7    mov         eax,dword ptr [ebp-4]
 005BF9AA    and         eax,0FF
 005BF9AF    push        eax
 005BF9B0    call        USER32.GetSysColor
 005BF9B5    mov         dword ptr [ebp-8],eax
>005BF9B8    jmp         005BF9C0
 005BF9BA    mov         eax,dword ptr [ebp-4]
 005BF9BD    mov         dword ptr [ebp-8],eax
 005BF9C0    mov         eax,dword ptr [ebp-8]
 005BF9C3    pop         ecx
 005BF9C4    pop         ecx
 005BF9C5    pop         ebp
 005BF9C6    ret
*}
end;

//005BF9F4
{*procedure sub_005BF9F4(?:?);
begin
 005BF9F4    push        ebp
 005BF9F5    mov         ebp,esp
 005BF9F7    push        ecx
 005BF9F8    xor         eax,eax
 005BF9FA    mov         dword ptr [ebp-4],eax
 005BF9FD    mov         eax,dword ptr [ebp-4]
 005BFA00    mov         edx,dword ptr [eax*8+6E3CF4]
 005BFA07    mov         eax,dword ptr [ebp+0C]
 005BFA0A    call        dword ptr [ebp+8]
 005BFA0D    inc         dword ptr [ebp-4]
 005BFA10    cmp         dword ptr [ebp-4],34
>005BFA14    jne         005BF9FD
 005BFA16    pop         ecx
 005BFA17    pop         ebp
 005BFA18    ret         8
end;*}

//005BFA6C
procedure TGraphicsObject.sub_005BFA6C;
begin
{*
 005BFA6C    push        ebp
 005BFA6D    mov         ebp,esp
 005BFA6F    push        ecx
 005BFA70    push        ebx
 005BFA71    mov         dword ptr [ebp-4],eax
 005BFA74    mov         eax,dword ptr [ebp-4]
 005BFA77    cmp         word ptr [eax+0A],0;TGraphicsObject.?fA:word
>005BFA7C    je          005BFA8A
 005BFA7E    mov         ebx,dword ptr [ebp-4]
 005BFA81    mov         edx,dword ptr [ebp-4]
 005BFA84    mov         eax,dword ptr [ebx+0C];TGraphicsObject.?fC:TTabbedNotebook
 005BFA87    call        dword ptr [ebx+8];TGraphicsObject.FOnChange
 005BFA8A    pop         ebx
 005BFA8B    pop         ecx
 005BFA8C    pop         ebp
 005BFA8D    ret
*}
end;

//005BFA90
procedure sub_005BFA90(?:TPersistent);
begin
{*
 005BFA90    push        ebp
 005BFA91    mov         ebp,esp
 005BFA93    push        ecx
 005BFA94    mov         dword ptr [ebp-4],eax
 005BFA97    mov         eax,dword ptr [ebp-4]
 005BFA9A    cmp         dword ptr [eax+14],0
>005BFA9E    je          005BFAAC
 005BFAA0    mov         eax,dword ptr [ebp-4]
 005BFAA3    mov         eax,dword ptr [eax+14]
 005BFAA6    push        eax
 005BFAA7    call        KERNEL32.EnterCriticalSection
 005BFAAC    pop         ecx
 005BFAAD    pop         ebp
 005BFAAE    ret
*}
end;

//005BFAB0
procedure sub_005BFAB0(?:TPersistent);
begin
{*
 005BFAB0    push        ebp
 005BFAB1    mov         ebp,esp
 005BFAB3    push        ecx
 005BFAB4    mov         dword ptr [ebp-4],eax
 005BFAB7    mov         eax,dword ptr [ebp-4]
 005BFABA    cmp         dword ptr [eax+14],0
>005BFABE    je          005BFACC
 005BFAC0    mov         eax,dword ptr [ebp-4]
 005BFAC3    mov         eax,dword ptr [eax+14]
 005BFAC6    push        eax
 005BFAC7    call        KERNEL32.LeaveCriticalSection
 005BFACC    pop         ecx
 005BFACD    pop         ebp
 005BFACE    ret
*}
end;

//005BFCD4
{*procedure sub_005BFCD4(?:?; ?:?);
begin
 005BFCD4    push        ebp
 005BFCD5    mov         ebp,esp
 005BFCD7    add         esp,0FFFFFF98
 005BFCDA    push        esi
 005BFCDB    push        edi
 005BFCDC    mov         dword ptr [ebp-8],edx
 005BFCDF    mov         dword ptr [ebp-4],eax
 005BFCE2    mov         eax,dword ptr [ebp-8]
 005BFCE5    mov         edi,eax
 005BFCE7    mov         esi,6E3CC0;gvar_006E3CC0
 005BFCEC    mov         ecx,0B
 005BFCF1    rep movs    dword ptr [edi],dword ptr [esi]
 005BFCF3    cmp         dword ptr [ebp-4],0
>005BFCF7    je          005BFDAB
 005BFCFD    lea         eax,[ebp-44]
 005BFD00    push        eax
 005BFD01    push        3C
 005BFD03    mov         eax,dword ptr [ebp-4]
 005BFD06    push        eax
 005BFD07    call        GDI32.GetObjectA
 005BFD0C    test        eax,eax
>005BFD0E    je          005BFDAB
 005BFD14    mov         eax,dword ptr [ebp-8]
 005BFD17    mov         edx,dword ptr [ebp-44]
 005BFD1A    mov         dword ptr [eax+4],edx
 005BFD1D    cmp         dword ptr [ebp-34],2BC
>005BFD24    jl          005BFD2D
 005BFD26    mov         eax,dword ptr [ebp-8]
 005BFD29    or          byte ptr [eax+9],1
 005BFD2D    cmp         byte ptr [ebp-30],1
>005BFD31    jne         005BFD3A
 005BFD33    mov         eax,dword ptr [ebp-8]
 005BFD36    or          byte ptr [eax+9],2
 005BFD3A    cmp         byte ptr [ebp-2F],1
>005BFD3E    jne         005BFD47
 005BFD40    mov         eax,dword ptr [ebp-8]
 005BFD43    or          byte ptr [eax+9],4
 005BFD47    cmp         byte ptr [ebp-2E],1
>005BFD4B    jne         005BFD54
 005BFD4D    mov         eax,dword ptr [ebp-8]
 005BFD50    or          byte ptr [eax+9],8
 005BFD54    mov         eax,dword ptr [ebp-8]
 005BFD57    mov         dl,byte ptr [ebp-2D]
 005BFD5A    mov         byte ptr [eax+0A],dl
 005BFD5D    lea         eax,[ebp-68]
 005BFD60    lea         edx,[ebp-28]
 005BFD63    mov         ecx,20
 005BFD68    call        @_CLenToPasStr
 005BFD6D    lea         edx,[ebp-68]
 005BFD70    mov         eax,dword ptr [ebp-8]
 005BFD73    add         eax,0B
 005BFD76    mov         cl,1F
 005BFD78    call        @PStrNCpy
 005BFD7D    mov         al,byte ptr [ebp-29]
 005BFD80    and         al,0F
 005BFD82    dec         al
>005BFD84    je          005BFD93
 005BFD86    dec         al
>005BFD88    jne         005BFD9C
 005BFD8A    mov         eax,dword ptr [ebp-8]
 005BFD8D    mov         byte ptr [eax+8],1
>005BFD91    jmp         005BFDA3
 005BFD93    mov         eax,dword ptr [ebp-8]
 005BFD96    mov         byte ptr [eax+8],2
>005BFD9A    jmp         005BFDA3
 005BFD9C    mov         eax,dword ptr [ebp-8]
 005BFD9F    mov         byte ptr [eax+8],0
 005BFDA3    mov         eax,dword ptr [ebp-8]
 005BFDA6    mov         edx,dword ptr [ebp-4]
 005BFDA9    mov         dword ptr [eax],edx
 005BFDAB    pop         edi
 005BFDAC    pop         esi
 005BFDAD    mov         esp,ebp
 005BFDAF    pop         ebp
 005BFDB0    ret
end;*}

//005BFDB4
constructor TFont.Create;
begin
{*
 005BFDB4    push        ebp
 005BFDB5    mov         ebp,esp
 005BFDB7    add         esp,0FFFFFFF8
 005BFDBA    test        dl,dl
>005BFDBC    je          005BFDC6
 005BFDBE    add         esp,0FFFFFFF0
 005BFDC1    call        @ClassCreate
 005BFDC6    mov         byte ptr [ebp-5],dl
 005BFDC9    mov         dword ptr [ebp-4],eax
 005BFDCC    xor         eax,eax
 005BFDCE    mov         [006E3CC0],eax;gvar_006E3CC0
 005BFDD3    mov         edx,6E3CC0;gvar_006E3CC0
 005BFDD8    mov         eax,[006ECD68];FontManager:TResourceManager
 005BFDDD    call        005BF13C
 005BFDE2    mov         edx,dword ptr [ebp-4]
 005BFDE5    mov         dword ptr [edx+10],eax
 005BFDE8    mov         eax,dword ptr [ebp-4]
 005BFDEB    mov         dword ptr [eax+18],80000008
 005BFDF2    mov         eax,dword ptr [ebp-4]
 005BFDF5    mov         edx,dword ptr ds:[6ECD24];gvar_006ECD24
 005BFDFB    mov         dword ptr [eax+1C],edx
 005BFDFE    mov         eax,dword ptr [ebp-4]
 005BFE01    cmp         byte ptr [ebp-5],0
>005BFE05    je          005BFE16
 005BFE07    call        @AfterConstruction
 005BFE0C    pop         dword ptr fs:[0]
 005BFE13    add         esp,0C
 005BFE16    mov         eax,dword ptr [ebp-4]
 005BFE19    pop         ecx
 005BFE1A    pop         ecx
 005BFE1B    pop         ebp
 005BFE1C    ret
*}
end;

//005BFE20
destructor TFont.Destroy;
begin
{*
 005BFE20    push        ebp
 005BFE21    mov         ebp,esp
 005BFE23    add         esp,0FFFFFFF8
 005BFE26    call        @BeforeDestruction
 005BFE2B    mov         byte ptr [ebp-5],dl
 005BFE2E    mov         dword ptr [ebp-4],eax
 005BFE31    mov         eax,dword ptr [ebp-4]
 005BFE34    mov         edx,dword ptr [eax+10];TFont.FResource:PResource
 005BFE37    mov         eax,[006ECD68];0x0 FontManager:TResourceManager
 005BFE3C    call        005BF240
 005BFE41    cmp         byte ptr [ebp-5],0
>005BFE45    jle         005BFE4F
 005BFE47    mov         eax,dword ptr [ebp-4]
 005BFE4A    call        @ClassDestroy
 005BFE4F    pop         ecx
 005BFE50    pop         ecx
 005BFE51    pop         ebp
 005BFE52    ret
*}
end;

//005BFE54
procedure TFont.sub_005BFA6C;
begin
{*
 005BFE54    push        ebp
 005BFE55    mov         ebp,esp
 005BFE57    push        ecx
 005BFE58    mov         dword ptr [ebp-4],eax
 005BFE5B    mov         eax,dword ptr [ebp-4]
 005BFE5E    call        TGraphicsObject.sub_005BFA6C
 005BFE63    mov         eax,dword ptr [ebp-4]
 005BFE66    cmp         dword ptr [eax+20],0;TFont.FNotify:IChangeNotifier
>005BFE6A    je          005BFE77
 005BFE6C    mov         eax,dword ptr [ebp-4]
 005BFE6F    mov         eax,dword ptr [eax+20];TFont.FNotify:IChangeNotifier
 005BFE72    mov         edx,dword ptr [eax]
 005BFE74    call        dword ptr [edx+0C]
 005BFE77    pop         ecx
 005BFE78    pop         ebp
 005BFE79    ret
*}
end;

//005BFE7C
procedure TFont.Assign(Source:TPersistent);
begin
{*
 005BFE7C    push        ebp
 005BFE7D    mov         ebp,esp
 005BFE7F    add         esp,0FFFFFFF8
 005BFE82    mov         dword ptr [ebp-8],edx
 005BFE85    mov         dword ptr [ebp-4],eax
 005BFE88    mov         eax,dword ptr [ebp-8]
 005BFE8B    mov         edx,dword ptr ds:[5BE498];TFont
 005BFE91    call        @IsClass
 005BFE96    test        al,al
>005BFE98    je          005BFF45
 005BFE9E    mov         eax,dword ptr [ebp-4]
 005BFEA1    call        005BFA90
 005BFEA6    xor         eax,eax
 005BFEA8    push        ebp
 005BFEA9    push        5BFF3E
 005BFEAE    push        dword ptr fs:[eax]
 005BFEB1    mov         dword ptr fs:[eax],esp
 005BFEB4    mov         eax,dword ptr [ebp-8]
 005BFEB7    call        005BFA90
 005BFEBC    xor         eax,eax
 005BFEBE    push        ebp
 005BFEBF    push        5BFF21
 005BFEC4    push        dword ptr fs:[eax]
 005BFEC7    mov         dword ptr fs:[eax],esp
 005BFECA    mov         eax,dword ptr [ebp-8]
 005BFECD    mov         ecx,dword ptr [eax+10]
 005BFED0    mov         edx,dword ptr [ebp-4]
 005BFED3    mov         eax,[006ECD68];0x0 FontManager:TResourceManager
 005BFED8    call        005BF390
 005BFEDD    mov         eax,dword ptr [ebp-8]
 005BFEE0    mov         edx,dword ptr [eax+18]
 005BFEE3    mov         eax,dword ptr [ebp-4]
 005BFEE6    call        TFont.SetColor
 005BFEEB    mov         eax,dword ptr [ebp-4]
 005BFEEE    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 005BFEF1    mov         edx,dword ptr [ebp-8]
 005BFEF4    cmp         eax,dword ptr [edx+1C]
>005BFEF7    je          005BFF0B
 005BFEF9    mov         eax,dword ptr [ebp-8]
 005BFEFC    call        TFont.GetSize
 005BFF01    mov         edx,eax
 005BFF03    mov         eax,dword ptr [ebp-4]
 005BFF06    call        TFont.SetSize
 005BFF0B    xor         eax,eax
 005BFF0D    pop         edx
 005BFF0E    pop         ecx
 005BFF0F    pop         ecx
 005BFF10    mov         dword ptr fs:[eax],edx
 005BFF13    push        5BFF28
 005BFF18    mov         eax,dword ptr [ebp-8]
 005BFF1B    call        005BFAB0
 005BFF20    ret
>005BFF21    jmp         @HandleFinally
>005BFF26    jmp         005BFF18
 005BFF28    xor         eax,eax
 005BFF2A    pop         edx
 005BFF2B    pop         ecx
 005BFF2C    pop         ecx
 005BFF2D    mov         dword ptr fs:[eax],edx
 005BFF30    push        5BFF50
 005BFF35    mov         eax,dword ptr [ebp-4]
 005BFF38    call        005BFAB0
 005BFF3D    ret
>005BFF3E    jmp         @HandleFinally
>005BFF43    jmp         005BFF35
 005BFF45    mov         edx,dword ptr [ebp-8]
 005BFF48    mov         eax,dword ptr [ebp-4]
 005BFF4B    call        TPersistent.Assign
 005BFF50    pop         ecx
 005BFF51    pop         ecx
 005BFF52    pop         ebp
 005BFF53    ret
*}
end;

//005BFF54
{*procedure sub_005BFF54(?:TFont; ?:?);
begin
 005BFF54    push        ebp
 005BFF55    mov         ebp,esp
 005BFF57    add         esp,0FFFFFFF8
 005BFF5A    push        esi
 005BFF5B    push        edi
 005BFF5C    mov         dword ptr [ebp-8],edx
 005BFF5F    mov         dword ptr [ebp-4],eax
 005BFF62    mov         eax,dword ptr [ebp-4]
 005BFF65    mov         eax,dword ptr [eax+10]
 005BFF68    mov         edx,dword ptr [ebp-8]
 005BFF6B    lea         esi,[eax+10]
 005BFF6E    mov         edi,edx
 005BFF70    mov         ecx,0B
 005BFF75    rep movs    dword ptr [edi],dword ptr [esi]
 005BFF77    mov         eax,dword ptr [ebp-8]
 005BFF7A    xor         edx,edx
 005BFF7C    mov         dword ptr [eax],edx
 005BFF7E    pop         edi
 005BFF7F    pop         esi
 005BFF80    pop         ecx
 005BFF81    pop         ecx
 005BFF82    pop         ebp
 005BFF83    ret
end;*}

//005BFF84
{*procedure sub_005BFF84(?:TFont; ?:?);
begin
 005BFF84    push        ebp
 005BFF85    mov         ebp,esp
 005BFF87    add         esp,0FFFFFFF8
 005BFF8A    mov         dword ptr [ebp-8],edx
 005BFF8D    mov         dword ptr [ebp-4],eax
 005BFF90    mov         eax,dword ptr [ebp-4]
 005BFF93    call        005BFA90
 005BFF98    xor         eax,eax
 005BFF9A    push        ebp
 005BFF9B    push        5BFFCC
 005BFFA0    push        dword ptr fs:[eax]
 005BFFA3    mov         dword ptr fs:[eax],esp
 005BFFA6    mov         ecx,dword ptr [ebp-8]
 005BFFA9    mov         edx,dword ptr [ebp-4]
 005BFFAC    mov         eax,[006ECD68];0x0 FontManager:TResourceManager
 005BFFB1    call        005BF30C
 005BFFB6    xor         eax,eax
 005BFFB8    pop         edx
 005BFFB9    pop         ecx
 005BFFBA    pop         ecx
 005BFFBB    mov         dword ptr fs:[eax],edx
 005BFFBE    push        5BFFD3
 005BFFC3    mov         eax,dword ptr [ebp-4]
 005BFFC6    call        005BFAB0
 005BFFCB    ret
>005BFFCC    jmp         @HandleFinally
>005BFFD1    jmp         005BFFC3
 005BFFD3    pop         ecx
 005BFFD4    pop         ecx
 005BFFD5    pop         ebp
 005BFFD6    ret
end;*}

//005BFFD8
procedure TFont.SetColor(Value:TColor);
begin
{*
 005BFFD8    push        ebp
 005BFFD9    mov         ebp,esp
 005BFFDB    add         esp,0FFFFFFF8
 005BFFDE    push        esi
 005BFFDF    mov         dword ptr [ebp-8],edx
 005BFFE2    mov         dword ptr [ebp-4],eax
 005BFFE5    mov         eax,dword ptr [ebp-4]
 005BFFE8    mov         eax,dword ptr [eax+18]
 005BFFEB    cmp         eax,dword ptr [ebp-8]
>005BFFEE    je          005C0005
 005BFFF0    mov         eax,dword ptr [ebp-8]
 005BFFF3    mov         edx,dword ptr [ebp-4]
 005BFFF6    mov         dword ptr [edx+18],eax
 005BFFF9    mov         eax,dword ptr [ebp-4]
 005BFFFC    mov         si,0FFFD
 005C0000    call        @CallDynaInst
 005C0005    pop         esi
 005C0006    pop         ecx
 005C0007    pop         ecx
 005C0008    pop         ebp
 005C0009    ret
*}
end;

//005C000C
function TFont.GetHandle:HFONT;
begin
{*
 005C000C    push        ebp
 005C000D    mov         ebp,esp
 005C000F    add         esp,0FFFFFFAC
 005C0012    xor         edx,edx
 005C0014    mov         dword ptr [ebp-54],edx
 005C0017    mov         dword ptr [ebp-50],edx
 005C001A    mov         dword ptr [ebp-4C],edx
 005C001D    mov         dword ptr [ebp-4],eax
 005C0020    xor         eax,eax
 005C0022    push        ebp
 005C0023    push        5C019C
 005C0028    push        dword ptr fs:[eax]
 005C002B    mov         dword ptr fs:[eax],esp
 005C002E    mov         eax,dword ptr [ebp-4]
 005C0031    mov         eax,dword ptr [eax+10]
 005C0034    mov         dword ptr [ebp-0C],eax
 005C0037    mov         eax,dword ptr [ebp-0C]
 005C003A    cmp         dword ptr [eax+8],0
>005C003E    jne         005C0178
 005C0044    mov         eax,[006ECD68];FontManager:TResourceManager
 005C0049    call        005BF10C
 005C004E    xor         eax,eax
 005C0050    push        ebp
 005C0051    push        5C0171
 005C0056    push        dword ptr fs:[eax]
 005C0059    mov         dword ptr fs:[eax],esp
 005C005C    mov         eax,dword ptr [ebp-0C]
 005C005F    cmp         dword ptr [eax+8],0
>005C0063    jne         005C0159
 005C0069    mov         eax,dword ptr [ebp-0C]
 005C006C    mov         eax,dword ptr [eax+14]
 005C006F    mov         dword ptr [ebp-48],eax
 005C0072    xor         eax,eax
 005C0074    mov         dword ptr [ebp-44],eax
 005C0077    xor         eax,eax
 005C0079    mov         dword ptr [ebp-40],eax
 005C007C    xor         eax,eax
 005C007E    mov         dword ptr [ebp-3C],eax
 005C0081    mov         eax,dword ptr [ebp-0C]
 005C0084    test        byte ptr [eax+19],1
>005C0088    je          005C0093
 005C008A    mov         dword ptr [ebp-38],2BC
>005C0091    jmp         005C009A
 005C0093    mov         dword ptr [ebp-38],190
 005C009A    mov         eax,dword ptr [ebp-0C]
 005C009D    test        byte ptr [eax+19],2
 005C00A1    setne       al
 005C00A4    mov         byte ptr [ebp-34],al
 005C00A7    mov         eax,dword ptr [ebp-0C]
 005C00AA    test        byte ptr [eax+19],4
 005C00AE    setne       al
 005C00B1    mov         byte ptr [ebp-33],al
 005C00B4    mov         eax,dword ptr [ebp-0C]
 005C00B7    test        byte ptr [eax+19],8
 005C00BB    setne       al
 005C00BE    mov         byte ptr [ebp-32],al
 005C00C1    mov         eax,dword ptr [ebp-0C]
 005C00C4    mov         al,byte ptr [eax+1A]
 005C00C7    mov         byte ptr [ebp-31],al
 005C00CA    lea         eax,[ebp-4C]
 005C00CD    mov         edx,dword ptr [ebp-0C]
 005C00D0    add         edx,1B
 005C00D3    call        @LStrFromString
 005C00D8    mov         eax,dword ptr [ebp-4C]
 005C00DB    mov         edx,5C01B4;'Default'
 005C00E0    call        AnsiCompareText
 005C00E5    test        eax,eax
>005C00E7    jne         005C0103
 005C00E9    lea         eax,[ebp-50]
 005C00EC    mov         edx,6E3CCB
 005C00F1    call        @LStrFromString
 005C00F6    mov         edx,dword ptr [ebp-50]
 005C00F9    lea         eax,[ebp-2C]
 005C00FC    call        StrPCopy
>005C0101    jmp         005C011C
 005C0103    lea         eax,[ebp-54]
 005C0106    mov         edx,dword ptr [ebp-0C]
 005C0109    add         edx,1B
 005C010C    call        @LStrFromString
 005C0111    mov         edx,dword ptr [ebp-54]
 005C0114    lea         eax,[ebp-2C]
 005C0117    call        StrPCopy
 005C011C    mov         byte ptr [ebp-2E],0
 005C0120    mov         byte ptr [ebp-30],0
 005C0124    mov         byte ptr [ebp-2F],0
 005C0128    mov         eax,dword ptr [ebp-4]
 005C012B    call        TFont.GetPitch
 005C0130    dec         al
>005C0132    je          005C013A
 005C0134    dec         al
>005C0136    je          005C0140
>005C0138    jmp         005C0146
 005C013A    mov         byte ptr [ebp-2D],2
>005C013E    jmp         005C014A
 005C0140    mov         byte ptr [ebp-2D],1
>005C0144    jmp         005C014A
 005C0146    mov         byte ptr [ebp-2D],0
 005C014A    lea         eax,[ebp-48]
 005C014D    push        eax
 005C014E    call        GDI32.CreateFontIndirectA
 005C0153    mov         edx,dword ptr [ebp-0C]
 005C0156    mov         dword ptr [edx+8],eax
 005C0159    xor         eax,eax
 005C015B    pop         edx
 005C015C    pop         ecx
 005C015D    pop         ecx
 005C015E    mov         dword ptr fs:[eax],edx
 005C0161    push        5C0178
 005C0166    mov         eax,[006ECD68];FontManager:TResourceManager
 005C016B    call        005BF124
 005C0170    ret
>005C0171    jmp         @HandleFinally
>005C0176    jmp         005C0166
 005C0178    mov         eax,dword ptr [ebp-0C]
 005C017B    mov         eax,dword ptr [eax+8]
 005C017E    mov         dword ptr [ebp-8],eax
 005C0181    xor         eax,eax
 005C0183    pop         edx
 005C0184    pop         ecx
 005C0185    pop         ecx
 005C0186    mov         dword ptr fs:[eax],edx
 005C0189    push        5C01A3
 005C018E    lea         eax,[ebp-54]
 005C0191    mov         edx,3
 005C0196    call        @LStrArrayClr
 005C019B    ret
>005C019C    jmp         @HandleFinally
>005C01A1    jmp         005C018E
 005C01A3    mov         eax,dword ptr [ebp-8]
 005C01A6    mov         esp,ebp
 005C01A8    pop         ebp
 005C01A9    ret
*}
end;

//005C01BC
{*procedure sub_005C01BC(?:TFont; ?:?);
begin
 005C01BC    push        ebp
 005C01BD    mov         ebp,esp
 005C01BF    add         esp,0FFFFFFCC
 005C01C2    mov         dword ptr [ebp-8],edx
 005C01C5    mov         dword ptr [ebp-4],eax
 005C01C8    lea         edx,[ebp-34]
 005C01CB    mov         eax,dword ptr [ebp-8]
 005C01CE    call        005BFCD4
 005C01D3    lea         edx,[ebp-34]
 005C01D6    mov         eax,dword ptr [ebp-4]
 005C01D9    call        005BFF84
 005C01DE    mov         esp,ebp
 005C01E0    pop         ebp
 005C01E1    ret
end;*}

//005C01E4
{*function TFont.GetHeight:?;
begin
 005C01E4    push        ebp
 005C01E5    mov         ebp,esp
 005C01E7    add         esp,0FFFFFFF8
 005C01EA    mov         dword ptr [ebp-4],eax
 005C01ED    mov         eax,dword ptr [ebp-4]
 005C01F0    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 005C01F3    mov         eax,dword ptr [eax+14]
 005C01F6    mov         dword ptr [ebp-8],eax
 005C01F9    mov         eax,dword ptr [ebp-8]
 005C01FC    pop         ecx
 005C01FD    pop         ecx
 005C01FE    pop         ebp
 005C01FF    ret
end;*}

//005C0200
procedure TFont.SetHeight(Value:Integer);
begin
{*
 005C0200    push        ebp
 005C0201    mov         ebp,esp
 005C0203    add         esp,0FFFFFFCC
 005C0206    mov         dword ptr [ebp-8],edx
 005C0209    mov         dword ptr [ebp-4],eax
 005C020C    lea         edx,[ebp-34]
 005C020F    mov         eax,dword ptr [ebp-4]
 005C0212    call        005BFF54
 005C0217    mov         eax,dword ptr [ebp-8]
 005C021A    mov         dword ptr [ebp-30],eax
 005C021D    lea         edx,[ebp-34]
 005C0220    mov         eax,dword ptr [ebp-4]
 005C0223    call        005BFF84
 005C0228    mov         esp,ebp
 005C022A    pop         ebp
 005C022B    ret
*}
end;

//005C022C
function TFont.GetName:TFontName;
begin
{*
 005C022C    push        ebp
 005C022D    mov         ebp,esp
 005C022F    add         esp,0FFFFFFF8
 005C0232    mov         dword ptr [ebp-8],edx
 005C0235    mov         dword ptr [ebp-4],eax
 005C0238    mov         eax,dword ptr [ebp-8]
 005C023B    mov         edx,dword ptr [ebp-4]
 005C023E    mov         edx,dword ptr [edx+10]
 005C0241    add         edx,1B
 005C0244    call        @LStrFromString
 005C0249    pop         ecx
 005C024A    pop         ecx
 005C024B    pop         ebp
 005C024C    ret
*}
end;

//005C0250
procedure TFont.SetName(const Value:TFontName);
begin
{*
 005C0250    push        ebp
 005C0251    mov         ebp,esp
 005C0253    add         esp,0FFFFFECC
 005C0259    mov         dword ptr [ebp-8],edx
 005C025C    mov         dword ptr [ebp-4],eax
 005C025F    cmp         dword ptr [ebp-8],0
>005C0263    je          005C02AD
 005C0265    lea         edx,[ebp-34]
 005C0268    mov         eax,dword ptr [ebp-4]
 005C026B    call        005BFF54
 005C0270    lea         eax,[ebp-29]
 005C0273    xor         ecx,ecx
 005C0275    mov         edx,20
 005C027A    call        @FillChar
 005C027F    lea         eax,[ebp-134]
 005C0285    mov         edx,dword ptr [ebp-8]
 005C0288    mov         ecx,0FF
 005C028D    call        @LStrToString
 005C0292    lea         edx,[ebp-134]
 005C0298    lea         eax,[ebp-29]
 005C029B    mov         cl,1F
 005C029D    call        @PStrNCpy
 005C02A2    lea         edx,[ebp-34]
 005C02A5    mov         eax,dword ptr [ebp-4]
 005C02A8    call        005BFF84
 005C02AD    mov         esp,ebp
 005C02AF    pop         ebp
 005C02B0    ret
*}
end;

//005C02B4
function TFont.GetSize:Integer;
begin
{*
 005C02B4    push        ebp
 005C02B5    mov         ebp,esp
 005C02B7    add         esp,0FFFFFFF8
 005C02BA    mov         dword ptr [ebp-4],eax
 005C02BD    mov         eax,dword ptr [ebp-4]
 005C02C0    mov         eax,dword ptr [eax+1C]
 005C02C3    push        eax
 005C02C4    push        48
 005C02C6    mov         eax,dword ptr [ebp-4]
 005C02C9    call        TFont.GetHeight
 005C02CE    push        eax
 005C02CF    call        KERNEL32.MulDiv
 005C02D4    neg         eax
 005C02D6    mov         dword ptr [ebp-8],eax
 005C02D9    mov         eax,dword ptr [ebp-8]
 005C02DC    pop         ecx
 005C02DD    pop         ecx
 005C02DE    pop         ebp
 005C02DF    ret
*}
end;

//005C02E0
procedure TFont.SetSize(Value:Integer);
begin
{*
 005C02E0    push        ebp
 005C02E1    mov         ebp,esp
 005C02E3    add         esp,0FFFFFFF8
 005C02E6    mov         dword ptr [ebp-8],edx
 005C02E9    mov         dword ptr [ebp-4],eax
 005C02EC    push        48
 005C02EE    mov         eax,dword ptr [ebp-4]
 005C02F1    mov         eax,dword ptr [eax+1C]
 005C02F4    push        eax
 005C02F5    mov         eax,dword ptr [ebp-8]
 005C02F8    push        eax
 005C02F9    call        KERNEL32.MulDiv
 005C02FE    mov         edx,eax
 005C0300    neg         edx
 005C0302    mov         eax,dword ptr [ebp-4]
 005C0305    call        TFont.SetHeight
 005C030A    pop         ecx
 005C030B    pop         ecx
 005C030C    pop         ebp
 005C030D    ret
*}
end;

//005C0310
function TFont.GetStyle:TFontStyles;
begin
{*
 005C0310    push        ebp
 005C0311    mov         ebp,esp
 005C0313    add         esp,0FFFFFFF8
 005C0316    mov         dword ptr [ebp-4],eax
 005C0319    mov         eax,dword ptr [ebp-4]
 005C031C    mov         eax,dword ptr [eax+10]
 005C031F    mov         al,byte ptr [eax+19]
 005C0322    mov         byte ptr [ebp-5],al
 005C0325    mov         al,byte ptr [ebp-5]
 005C0328    pop         ecx
 005C0329    pop         ecx
 005C032A    pop         ebp
 005C032B    ret
*}
end;

//005C032C
procedure TFont.SetStyle(Value:TFontStyles);
begin
{*
 005C032C    push        ebp
 005C032D    mov         ebp,esp
 005C032F    add         esp,0FFFFFFCC
 005C0332    mov         byte ptr [ebp-5],dl
 005C0335    mov         dword ptr [ebp-4],eax
 005C0338    lea         edx,[ebp-34]
 005C033B    mov         eax,dword ptr [ebp-4]
 005C033E    call        005BFF54
 005C0343    mov         al,byte ptr [ebp-5]
 005C0346    mov         byte ptr [ebp-2B],al
 005C0349    lea         edx,[ebp-34]
 005C034C    mov         eax,dword ptr [ebp-4]
 005C034F    call        005BFF84
 005C0354    mov         esp,ebp
 005C0356    pop         ebp
 005C0357    ret
*}
end;

//005C0358
{*function TFont.GetPitch:?;
begin
 005C0358    push        ebp
 005C0359    mov         ebp,esp
 005C035B    add         esp,0FFFFFFF8
 005C035E    mov         dword ptr [ebp-4],eax
 005C0361    mov         eax,dword ptr [ebp-4]
 005C0364    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 005C0367    mov         al,byte ptr [eax+18]
 005C036A    mov         byte ptr [ebp-5],al
 005C036D    mov         al,byte ptr [ebp-5]
 005C0370    pop         ecx
 005C0371    pop         ecx
 005C0372    pop         ebp
 005C0373    ret
end;*}

//005C0374
procedure TFont.SetPitch(Value:TFontPitch);
begin
{*
 005C0374    push        ebp
 005C0375    mov         ebp,esp
 005C0377    add         esp,0FFFFFFCC
 005C037A    mov         byte ptr [ebp-5],dl
 005C037D    mov         dword ptr [ebp-4],eax
 005C0380    lea         edx,[ebp-34]
 005C0383    mov         eax,dword ptr [ebp-4]
 005C0386    call        005BFF54
 005C038B    mov         al,byte ptr [ebp-5]
 005C038E    mov         byte ptr [ebp-2C],al
 005C0391    lea         edx,[ebp-34]
 005C0394    mov         eax,dword ptr [ebp-4]
 005C0397    call        005BFF84
 005C039C    mov         esp,ebp
 005C039E    pop         ebp
 005C039F    ret
*}
end;

//005C03A0
function TFont.GetCharset:TFontCharset;
begin
{*
 005C03A0    push        ebp
 005C03A1    mov         ebp,esp
 005C03A3    add         esp,0FFFFFFF8
 005C03A6    mov         dword ptr [ebp-4],eax
 005C03A9    mov         eax,dword ptr [ebp-4]
 005C03AC    mov         eax,dword ptr [eax+10]
 005C03AF    mov         al,byte ptr [eax+1A]
 005C03B2    mov         byte ptr [ebp-5],al
 005C03B5    mov         al,byte ptr [ebp-5]
 005C03B8    pop         ecx
 005C03B9    pop         ecx
 005C03BA    pop         ebp
 005C03BB    ret
*}
end;

//005C03BC
procedure TFont.SetCharset(Value:TFontCharset);
begin
{*
 005C03BC    push        ebp
 005C03BD    mov         ebp,esp
 005C03BF    add         esp,0FFFFFFCC
 005C03C2    mov         byte ptr [ebp-5],dl
 005C03C5    mov         dword ptr [ebp-4],eax
 005C03C8    lea         edx,[ebp-34]
 005C03CB    mov         eax,dword ptr [ebp-4]
 005C03CE    call        005BFF54
 005C03D3    mov         al,byte ptr [ebp-5]
 005C03D6    mov         byte ptr [ebp-2A],al
 005C03D9    lea         edx,[ebp-34]
 005C03DC    mov         eax,dword ptr [ebp-4]
 005C03DF    call        005BFF84
 005C03E4    mov         esp,ebp
 005C03E6    pop         ebp
 005C03E7    ret
*}
end;

//005C03E8
constructor TPen.Create;
begin
{*
 005C03E8    push        ebp
 005C03E9    mov         ebp,esp
 005C03EB    add         esp,0FFFFFFF8
 005C03EE    test        dl,dl
>005C03F0    je          005C03FA
 005C03F2    add         esp,0FFFFFFF0
 005C03F5    call        @ClassCreate
 005C03FA    mov         byte ptr [ebp-5],dl
 005C03FD    mov         dword ptr [ebp-4],eax
 005C0400    mov         edx,6E3F20
 005C0405    mov         eax,[006ECD6C];PenManager:TResourceManager
 005C040A    call        005BF13C
 005C040F    mov         edx,dword ptr [ebp-4]
 005C0412    mov         dword ptr [edx+10],eax
 005C0415    mov         eax,dword ptr [ebp-4]
 005C0418    mov         byte ptr [eax+18],4
 005C041C    mov         eax,dword ptr [ebp-4]
 005C041F    cmp         byte ptr [ebp-5],0
>005C0423    je          005C0434
 005C0425    call        @AfterConstruction
 005C042A    pop         dword ptr fs:[0]
 005C0431    add         esp,0C
 005C0434    mov         eax,dword ptr [ebp-4]
 005C0437    pop         ecx
 005C0438    pop         ecx
 005C0439    pop         ebp
 005C043A    ret
*}
end;

//005C043C
destructor TPen.Destroy;
begin
{*
 005C043C    push        ebp
 005C043D    mov         ebp,esp
 005C043F    add         esp,0FFFFFFF8
 005C0442    call        @BeforeDestruction
 005C0447    mov         byte ptr [ebp-5],dl
 005C044A    mov         dword ptr [ebp-4],eax
 005C044D    mov         eax,dword ptr [ebp-4]
 005C0450    mov         edx,dword ptr [eax+10];TPen.FResource:PResource
 005C0453    mov         eax,[006ECD6C];0x0 PenManager:TResourceManager
 005C0458    call        005BF240
 005C045D    cmp         byte ptr [ebp-5],0
>005C0461    jle         005C046B
 005C0463    mov         eax,dword ptr [ebp-4]
 005C0466    call        @ClassDestroy
 005C046B    pop         ecx
 005C046C    pop         ecx
 005C046D    pop         ebp
 005C046E    ret
*}
end;

//005C0470
procedure TPen.Assign(Source:TPersistent);
begin
{*
 005C0470    push        ebp
 005C0471    mov         ebp,esp
 005C0473    add         esp,0FFFFFFF8
 005C0476    mov         dword ptr [ebp-8],edx
 005C0479    mov         dword ptr [ebp-4],eax
 005C047C    mov         eax,dword ptr [ebp-8]
 005C047F    mov         edx,dword ptr ds:[5BE614];TPen
 005C0485    call        @IsClass
 005C048A    test        al,al
>005C048C    je          005C0519
 005C0492    mov         eax,dword ptr [ebp-4]
 005C0495    call        005BFA90
 005C049A    xor         eax,eax
 005C049C    push        ebp
 005C049D    push        5C0512
 005C04A2    push        dword ptr fs:[eax]
 005C04A5    mov         dword ptr fs:[eax],esp
 005C04A8    mov         eax,dword ptr [ebp-8]
 005C04AB    call        005BFA90
 005C04B0    xor         eax,eax
 005C04B2    push        ebp
 005C04B3    push        5C04F5
 005C04B8    push        dword ptr fs:[eax]
 005C04BB    mov         dword ptr fs:[eax],esp
 005C04BE    mov         eax,dword ptr [ebp-8]
 005C04C1    mov         ecx,dword ptr [eax+10]
 005C04C4    mov         edx,dword ptr [ebp-4]
 005C04C7    mov         eax,[006ECD6C];PenManager:TResourceManager
 005C04CC    call        005BF390
 005C04D1    mov         eax,dword ptr [ebp-8]
 005C04D4    mov         dl,byte ptr [eax+18]
 005C04D7    mov         eax,dword ptr [ebp-4]
 005C04DA    call        TPen.SetMode
 005C04DF    xor         eax,eax
 005C04E1    pop         edx
 005C04E2    pop         ecx
 005C04E3    pop         ecx
 005C04E4    mov         dword ptr fs:[eax],edx
 005C04E7    push        5C04FC
 005C04EC    mov         eax,dword ptr [ebp-8]
 005C04EF    call        005BFAB0
 005C04F4    ret
>005C04F5    jmp         @HandleFinally
>005C04FA    jmp         005C04EC
 005C04FC    xor         eax,eax
 005C04FE    pop         edx
 005C04FF    pop         ecx
 005C0500    pop         ecx
 005C0501    mov         dword ptr fs:[eax],edx
 005C0504    push        5C0524
 005C0509    mov         eax,dword ptr [ebp-4]
 005C050C    call        005BFAB0
 005C0511    ret
>005C0512    jmp         @HandleFinally
>005C0517    jmp         005C0509
 005C0519    mov         edx,dword ptr [ebp-8]
 005C051C    mov         eax,dword ptr [ebp-4]
 005C051F    call        TPersistent.Assign
 005C0524    pop         ecx
 005C0525    pop         ecx
 005C0526    pop         ebp
 005C0527    ret
*}
end;

//005C0528
{*procedure sub_005C0528(?:?; ?:?);
begin
 005C0528    push        ebp
 005C0529    mov         ebp,esp
 005C052B    add         esp,0FFFFFFF8
 005C052E    push        esi
 005C052F    push        edi
 005C0530    mov         dword ptr [ebp-8],edx
 005C0533    mov         dword ptr [ebp-4],eax
 005C0536    mov         eax,dword ptr [ebp-4]
 005C0539    mov         eax,dword ptr [eax+10]
 005C053C    mov         edx,dword ptr [ebp-8]
 005C053F    lea         esi,[eax+10]
 005C0542    mov         edi,edx
 005C0544    movs        dword ptr [edi],dword ptr [esi]
 005C0545    movs        dword ptr [edi],dword ptr [esi]
 005C0546    movs        dword ptr [edi],dword ptr [esi]
 005C0547    movs        dword ptr [edi],dword ptr [esi]
 005C0548    mov         eax,dword ptr [ebp-8]
 005C054B    xor         edx,edx
 005C054D    mov         dword ptr [eax],edx
 005C054F    pop         edi
 005C0550    pop         esi
 005C0551    pop         ecx
 005C0552    pop         ecx
 005C0553    pop         ebp
 005C0554    ret
end;*}

//005C0558
{*procedure sub_005C0558(?:?; ?:?);
begin
 005C0558    push        ebp
 005C0559    mov         ebp,esp
 005C055B    add         esp,0FFFFFFF8
 005C055E    mov         dword ptr [ebp-8],edx
 005C0561    mov         dword ptr [ebp-4],eax
 005C0564    mov         eax,dword ptr [ebp-4]
 005C0567    call        005BFA90
 005C056C    xor         eax,eax
 005C056E    push        ebp
 005C056F    push        5C05A0
 005C0574    push        dword ptr fs:[eax]
 005C0577    mov         dword ptr fs:[eax],esp
 005C057A    mov         ecx,dword ptr [ebp-8]
 005C057D    mov         edx,dword ptr [ebp-4]
 005C0580    mov         eax,[006ECD6C];0x0 PenManager:TResourceManager
 005C0585    call        005BF30C
 005C058A    xor         eax,eax
 005C058C    pop         edx
 005C058D    pop         ecx
 005C058E    pop         ecx
 005C058F    mov         dword ptr fs:[eax],edx
 005C0592    push        5C05A7
 005C0597    mov         eax,dword ptr [ebp-4]
 005C059A    call        005BFAB0
 005C059F    ret
>005C05A0    jmp         @HandleFinally
>005C05A5    jmp         005C0597
 005C05A7    pop         ecx
 005C05A8    pop         ecx
 005C05A9    pop         ebp
 005C05AA    ret
end;*}

//005C05AC
function TPen.GetColor:TColor;
begin
{*
 005C05AC    push        ebp
 005C05AD    mov         ebp,esp
 005C05AF    add         esp,0FFFFFFF8
 005C05B2    mov         dword ptr [ebp-4],eax
 005C05B5    mov         eax,dword ptr [ebp-4]
 005C05B8    mov         eax,dword ptr [eax+10]
 005C05BB    mov         eax,dword ptr [eax+14]
 005C05BE    mov         dword ptr [ebp-8],eax
 005C05C1    mov         eax,dword ptr [ebp-8]
 005C05C4    pop         ecx
 005C05C5    pop         ecx
 005C05C6    pop         ebp
 005C05C7    ret
*}
end;

//005C05C8
procedure TPen.SetColor(Value:TColor);
begin
{*
 005C05C8    push        ebp
 005C05C9    mov         ebp,esp
 005C05CB    add         esp,0FFFFFFE8
 005C05CE    mov         dword ptr [ebp-8],edx
 005C05D1    mov         dword ptr [ebp-4],eax
 005C05D4    lea         edx,[ebp-18]
 005C05D7    mov         eax,dword ptr [ebp-4]
 005C05DA    call        005C0528
 005C05DF    mov         eax,dword ptr [ebp-8]
 005C05E2    mov         dword ptr [ebp-14],eax
 005C05E5    lea         edx,[ebp-18]
 005C05E8    mov         eax,dword ptr [ebp-4]
 005C05EB    call        005C0558
 005C05F0    mov         esp,ebp
 005C05F2    pop         ebp
 005C05F3    ret
*}
end;

//005C05F4
{*function sub_005C05F4(?:TPen):?;
begin
 005C05F4    push        ebp
 005C05F5    mov         ebp,esp
 005C05F7    add         esp,0FFFFFFE4
 005C05FA    mov         dword ptr [ebp-4],eax
 005C05FD    mov         eax,dword ptr [ebp-4]
 005C0600    mov         eax,dword ptr [eax+10]
 005C0603    mov         dword ptr [ebp-0C],eax
 005C0606    mov         eax,dword ptr [ebp-0C]
 005C0609    cmp         dword ptr [eax+8],0
>005C060D    jne         005C0687
 005C060F    mov         eax,[006ECD6C];0x0 PenManager:TResourceManager
 005C0614    call        005BF10C
 005C0619    xor         eax,eax
 005C061B    push        ebp
 005C061C    push        5C0680
 005C0621    push        dword ptr fs:[eax]
 005C0624    mov         dword ptr fs:[eax],esp
 005C0627    mov         eax,dword ptr [ebp-0C]
 005C062A    cmp         dword ptr [eax+8],0
>005C062E    jne         005C0668
 005C0630    mov         eax,dword ptr [ebp-0C]
 005C0633    movzx       eax,byte ptr [eax+1C]
 005C0637    movzx       eax,word ptr [eax*2+6E3F30]
 005C063F    mov         dword ptr [ebp-1C],eax
 005C0642    mov         eax,dword ptr [ebp-0C]
 005C0645    mov         eax,dword ptr [eax+18]
 005C0648    mov         dword ptr [ebp-18],eax
 005C064B    mov         eax,dword ptr [ebp-0C]
 005C064E    mov         eax,dword ptr [eax+14]
 005C0651    call        ColorToRGB
 005C0656    mov         dword ptr [ebp-10],eax
 005C0659    lea         eax,[ebp-1C]
 005C065C    push        eax
 005C065D    call        GDI32.CreatePenIndirect
 005C0662    mov         edx,dword ptr [ebp-0C]
 005C0665    mov         dword ptr [edx+8],eax
 005C0668    xor         eax,eax
 005C066A    pop         edx
 005C066B    pop         ecx
 005C066C    pop         ecx
 005C066D    mov         dword ptr fs:[eax],edx
 005C0670    push        5C0687
 005C0675    mov         eax,[006ECD6C];0x0 PenManager:TResourceManager
 005C067A    call        005BF124
 005C067F    ret
>005C0680    jmp         @HandleFinally
>005C0685    jmp         005C0675
 005C0687    mov         eax,dword ptr [ebp-0C]
 005C068A    mov         eax,dword ptr [eax+8]
 005C068D    mov         dword ptr [ebp-8],eax
 005C0690    mov         eax,dword ptr [ebp-8]
 005C0693    mov         esp,ebp
 005C0695    pop         ebp
 005C0696    ret
end;*}

//005C0698
procedure TPen.SetHandle(Value:HPEN);
begin
{*
 005C0698    push        ebp
 005C0699    mov         ebp,esp
 005C069B    add         esp,0FFFFFFE8
 005C069E    push        esi
 005C069F    push        edi
 005C06A0    mov         dword ptr [ebp-8],edx
 005C06A3    mov         dword ptr [ebp-4],eax
 005C06A6    mov         esi,6E3F20
 005C06AB    lea         edi,[ebp-18]
 005C06AE    movs        dword ptr [edi],dword ptr [esi]
 005C06AF    movs        dword ptr [edi],dword ptr [esi]
 005C06B0    movs        dword ptr [edi],dword ptr [esi]
 005C06B1    movs        dword ptr [edi],dword ptr [esi]
 005C06B2    mov         eax,dword ptr [ebp-8]
 005C06B5    mov         dword ptr [ebp-18],eax
 005C06B8    lea         edx,[ebp-18]
 005C06BB    mov         eax,dword ptr [ebp-4]
 005C06BE    call        005C0558
 005C06C3    pop         edi
 005C06C4    pop         esi
 005C06C5    mov         esp,ebp
 005C06C7    pop         ebp
 005C06C8    ret
*}
end;

//005C06CC
procedure TPen.SetMode(Value:TPenMode);
begin
{*
 005C06CC    push        ebp
 005C06CD    mov         ebp,esp
 005C06CF    add         esp,0FFFFFFF8
 005C06D2    push        esi
 005C06D3    mov         byte ptr [ebp-5],dl
 005C06D6    mov         dword ptr [ebp-4],eax
 005C06D9    mov         eax,dword ptr [ebp-4]
 005C06DC    mov         al,byte ptr [eax+18]
 005C06DF    cmp         al,byte ptr [ebp-5]
>005C06E2    je          005C06F9
 005C06E4    mov         al,byte ptr [ebp-5]
 005C06E7    mov         edx,dword ptr [ebp-4]
 005C06EA    mov         byte ptr [edx+18],al
 005C06ED    mov         eax,dword ptr [ebp-4]
 005C06F0    mov         si,0FFFD
 005C06F4    call        @CallDynaInst
 005C06F9    pop         esi
 005C06FA    pop         ecx
 005C06FB    pop         ecx
 005C06FC    pop         ebp
 005C06FD    ret
*}
end;

//005C0700
function TPen.GetStyle:TPenStyle;
begin
{*
 005C0700    push        ebp
 005C0701    mov         ebp,esp
 005C0703    add         esp,0FFFFFFF8
 005C0706    mov         dword ptr [ebp-4],eax
 005C0709    mov         eax,dword ptr [ebp-4]
 005C070C    mov         eax,dword ptr [eax+10]
 005C070F    mov         al,byte ptr [eax+1C]
 005C0712    mov         byte ptr [ebp-5],al
 005C0715    mov         al,byte ptr [ebp-5]
 005C0718    pop         ecx
 005C0719    pop         ecx
 005C071A    pop         ebp
 005C071B    ret
*}
end;

//005C071C
procedure TPen.SetStyle(Value:TPenStyle);
begin
{*
 005C071C    push        ebp
 005C071D    mov         ebp,esp
 005C071F    add         esp,0FFFFFFE8
 005C0722    mov         byte ptr [ebp-5],dl
 005C0725    mov         dword ptr [ebp-4],eax
 005C0728    lea         edx,[ebp-18]
 005C072B    mov         eax,dword ptr [ebp-4]
 005C072E    call        005C0528
 005C0733    mov         al,byte ptr [ebp-5]
 005C0736    mov         byte ptr [ebp-0C],al
 005C0739    lea         edx,[ebp-18]
 005C073C    mov         eax,dword ptr [ebp-4]
 005C073F    call        005C0558
 005C0744    mov         esp,ebp
 005C0746    pop         ebp
 005C0747    ret
*}
end;

//005C0748
function TPen.GetWidth:Integer;
begin
{*
 005C0748    push        ebp
 005C0749    mov         ebp,esp
 005C074B    add         esp,0FFFFFFF8
 005C074E    mov         dword ptr [ebp-4],eax
 005C0751    mov         eax,dword ptr [ebp-4]
 005C0754    mov         eax,dword ptr [eax+10]
 005C0757    mov         eax,dword ptr [eax+18]
 005C075A    mov         dword ptr [ebp-8],eax
 005C075D    mov         eax,dword ptr [ebp-8]
 005C0760    pop         ecx
 005C0761    pop         ecx
 005C0762    pop         ebp
 005C0763    ret
*}
end;

//005C0764
procedure TPen.SetWidth(Value:Integer);
begin
{*
 005C0764    push        ebp
 005C0765    mov         ebp,esp
 005C0767    add         esp,0FFFFFFE8
 005C076A    mov         dword ptr [ebp-8],edx
 005C076D    mov         dword ptr [ebp-4],eax
 005C0770    cmp         dword ptr [ebp-8],0
>005C0774    jl          005C0792
 005C0776    lea         edx,[ebp-18]
 005C0779    mov         eax,dword ptr [ebp-4]
 005C077C    call        005C0528
 005C0781    mov         eax,dword ptr [ebp-8]
 005C0784    mov         dword ptr [ebp-10],eax
 005C0787    lea         edx,[ebp-18]
 005C078A    mov         eax,dword ptr [ebp-4]
 005C078D    call        005C0558
 005C0792    mov         esp,ebp
 005C0794    pop         ebp
 005C0795    ret
*}
end;

//005C0798
constructor TBrush.Create;
begin
{*
 005C0798    push        ebp
 005C0799    mov         ebp,esp
 005C079B    add         esp,0FFFFFFF8
 005C079E    test        dl,dl
>005C07A0    je          005C07AA
 005C07A2    add         esp,0FFFFFFF0
 005C07A5    call        @ClassCreate
 005C07AA    mov         byte ptr [ebp-5],dl
 005C07AD    mov         dword ptr [ebp-4],eax
 005C07B0    mov         edx,6E3F40
 005C07B5    mov         eax,[006ECD70];BrushManager:TResourceManager
 005C07BA    call        005BF13C
 005C07BF    mov         edx,dword ptr [ebp-4]
 005C07C2    mov         dword ptr [edx+10],eax
 005C07C5    mov         eax,dword ptr [ebp-4]
 005C07C8    cmp         byte ptr [ebp-5],0
>005C07CC    je          005C07DD
 005C07CE    call        @AfterConstruction
 005C07D3    pop         dword ptr fs:[0]
 005C07DA    add         esp,0C
 005C07DD    mov         eax,dword ptr [ebp-4]
 005C07E0    pop         ecx
 005C07E1    pop         ecx
 005C07E2    pop         ebp
 005C07E3    ret
*}
end;

//005C07E4
destructor TBrush.Destroy;
begin
{*
 005C07E4    push        ebp
 005C07E5    mov         ebp,esp
 005C07E7    add         esp,0FFFFFFF8
 005C07EA    call        @BeforeDestruction
 005C07EF    mov         byte ptr [ebp-5],dl
 005C07F2    mov         dword ptr [ebp-4],eax
 005C07F5    mov         eax,dword ptr [ebp-4]
 005C07F8    mov         edx,dword ptr [eax+10];TBrush.FResource:PResource
 005C07FB    mov         eax,[006ECD70];0x0 BrushManager:TResourceManager
 005C0800    call        005BF240
 005C0805    cmp         byte ptr [ebp-5],0
>005C0809    jle         005C0813
 005C080B    mov         eax,dword ptr [ebp-4]
 005C080E    call        @ClassDestroy
 005C0813    pop         ecx
 005C0814    pop         ecx
 005C0815    pop         ebp
 005C0816    ret
*}
end;

//005C0818
procedure TBrush.Assign(Source:TPersistent);
begin
{*
 005C0818    push        ebp
 005C0819    mov         ebp,esp
 005C081B    add         esp,0FFFFFFF8
 005C081E    mov         dword ptr [ebp-8],edx
 005C0821    mov         dword ptr [ebp-4],eax
 005C0824    mov         eax,dword ptr [ebp-8]
 005C0827    mov         edx,dword ptr ds:[5BE714];TBrush
 005C082D    call        @IsClass
 005C0832    test        al,al
>005C0834    je          005C08AF
 005C0836    mov         eax,dword ptr [ebp-4]
 005C0839    call        005BFA90
 005C083E    xor         eax,eax
 005C0840    push        ebp
 005C0841    push        5C08A8
 005C0846    push        dword ptr fs:[eax]
 005C0849    mov         dword ptr fs:[eax],esp
 005C084C    mov         eax,dword ptr [ebp-8]
 005C084F    call        005BFA90
 005C0854    xor         eax,eax
 005C0856    push        ebp
 005C0857    push        5C088B
 005C085C    push        dword ptr fs:[eax]
 005C085F    mov         dword ptr fs:[eax],esp
 005C0862    mov         eax,dword ptr [ebp-8]
 005C0865    mov         ecx,dword ptr [eax+10]
 005C0868    mov         edx,dword ptr [ebp-4]
 005C086B    mov         eax,[006ECD70];0x0 BrushManager:TResourceManager
 005C0870    call        005BF390
 005C0875    xor         eax,eax
 005C0877    pop         edx
 005C0878    pop         ecx
 005C0879    pop         ecx
 005C087A    mov         dword ptr fs:[eax],edx
 005C087D    push        5C0892
 005C0882    mov         eax,dword ptr [ebp-8]
 005C0885    call        005BFAB0
 005C088A    ret
>005C088B    jmp         @HandleFinally
>005C0890    jmp         005C0882
 005C0892    xor         eax,eax
 005C0894    pop         edx
 005C0895    pop         ecx
 005C0896    pop         ecx
 005C0897    mov         dword ptr fs:[eax],edx
 005C089A    push        5C08BA
 005C089F    mov         eax,dword ptr [ebp-4]
 005C08A2    call        005BFAB0
 005C08A7    ret
>005C08A8    jmp         @HandleFinally
>005C08AD    jmp         005C089F
 005C08AF    mov         edx,dword ptr [ebp-8]
 005C08B2    mov         eax,dword ptr [ebp-4]
 005C08B5    call        TPersistent.Assign
 005C08BA    pop         ecx
 005C08BB    pop         ecx
 005C08BC    pop         ebp
 005C08BD    ret
*}
end;

//005C08C0
{*procedure sub_005C08C0(?:?; ?:?);
begin
 005C08C0    push        ebp
 005C08C1    mov         ebp,esp
 005C08C3    add         esp,0FFFFFFF8
 005C08C6    push        esi
 005C08C7    push        edi
 005C08C8    mov         dword ptr [ebp-8],edx
 005C08CB    mov         dword ptr [ebp-4],eax
 005C08CE    mov         eax,dword ptr [ebp-4]
 005C08D1    mov         eax,dword ptr [eax+10]
 005C08D4    mov         edx,dword ptr [ebp-8]
 005C08D7    lea         esi,[eax+10]
 005C08DA    mov         edi,edx
 005C08DC    movs        dword ptr [edi],dword ptr [esi]
 005C08DD    movs        dword ptr [edi],dword ptr [esi]
 005C08DE    movs        dword ptr [edi],dword ptr [esi]
 005C08DF    movs        dword ptr [edi],dword ptr [esi]
 005C08E0    mov         eax,dword ptr [ebp-8]
 005C08E3    xor         edx,edx
 005C08E5    mov         dword ptr [eax],edx
 005C08E7    mov         eax,dword ptr [ebp-8]
 005C08EA    xor         edx,edx
 005C08EC    mov         dword ptr [eax+8],edx
 005C08EF    pop         edi
 005C08F0    pop         esi
 005C08F1    pop         ecx
 005C08F2    pop         ecx
 005C08F3    pop         ebp
 005C08F4    ret
end;*}

//005C08F8
{*procedure sub_005C08F8(?:?; ?:?);
begin
 005C08F8    push        ebp
 005C08F9    mov         ebp,esp
 005C08FB    add         esp,0FFFFFFF8
 005C08FE    mov         dword ptr [ebp-8],edx
 005C0901    mov         dword ptr [ebp-4],eax
 005C0904    mov         eax,dword ptr [ebp-4]
 005C0907    call        005BFA90
 005C090C    xor         eax,eax
 005C090E    push        ebp
 005C090F    push        5C0940
 005C0914    push        dword ptr fs:[eax]
 005C0917    mov         dword ptr fs:[eax],esp
 005C091A    mov         ecx,dword ptr [ebp-8]
 005C091D    mov         edx,dword ptr [ebp-4]
 005C0920    mov         eax,[006ECD70];0x0 BrushManager:TResourceManager
 005C0925    call        005BF30C
 005C092A    xor         eax,eax
 005C092C    pop         edx
 005C092D    pop         ecx
 005C092E    pop         ecx
 005C092F    mov         dword ptr fs:[eax],edx
 005C0932    push        5C0947
 005C0937    mov         eax,dword ptr [ebp-4]
 005C093A    call        005BFAB0
 005C093F    ret
>005C0940    jmp         @HandleFinally
>005C0945    jmp         005C0937
 005C0947    pop         ecx
 005C0948    pop         ecx
 005C0949    pop         ebp
 005C094A    ret
end;*}

//005C094C
function TBrush.GetBitmap:TBitmap;
begin
{*
 005C094C    push        ebp
 005C094D    mov         ebp,esp
 005C094F    add         esp,0FFFFFFF8
 005C0952    mov         dword ptr [ebp-4],eax
 005C0955    mov         eax,dword ptr [ebp-4]
 005C0958    mov         eax,dword ptr [eax+10]
 005C095B    mov         eax,dword ptr [eax+18]
 005C095E    mov         dword ptr [ebp-8],eax
 005C0961    mov         eax,dword ptr [ebp-8]
 005C0964    pop         ecx
 005C0965    pop         ecx
 005C0966    pop         ebp
 005C0967    ret
*}
end;

//005C0968
procedure TBrush.SetBitmap(Value:TBitmap);
begin
{*
 005C0968    push        ebp
 005C0969    mov         ebp,esp
 005C096B    add         esp,0FFFFFFE8
 005C096E    push        esi
 005C096F    push        edi
 005C0970    mov         dword ptr [ebp-8],edx
 005C0973    mov         dword ptr [ebp-4],eax
 005C0976    mov         esi,6E3F40
 005C097B    lea         edi,[ebp-18]
 005C097E    movs        dword ptr [edi],dword ptr [esi]
 005C097F    movs        dword ptr [edi],dword ptr [esi]
 005C0980    movs        dword ptr [edi],dword ptr [esi]
 005C0981    movs        dword ptr [edi],dword ptr [esi]
 005C0982    mov         eax,dword ptr [ebp-8]
 005C0985    mov         dword ptr [ebp-10],eax
 005C0988    lea         edx,[ebp-18]
 005C098B    mov         eax,dword ptr [ebp-4]
 005C098E    call        005C08F8
 005C0993    pop         edi
 005C0994    pop         esi
 005C0995    mov         esp,ebp
 005C0997    pop         ebp
 005C0998    ret
*}
end;

//005C099C
function TBrush.GetColor:TColor;
begin
{*
 005C099C    push        ebp
 005C099D    mov         ebp,esp
 005C099F    add         esp,0FFFFFFF8
 005C09A2    mov         dword ptr [ebp-4],eax
 005C09A5    mov         eax,dword ptr [ebp-4]
 005C09A8    mov         eax,dword ptr [eax+10]
 005C09AB    mov         eax,dword ptr [eax+14]
 005C09AE    mov         dword ptr [ebp-8],eax
 005C09B1    mov         eax,dword ptr [ebp-8]
 005C09B4    pop         ecx
 005C09B5    pop         ecx
 005C09B6    pop         ebp
 005C09B7    ret
*}
end;

//005C09B8
procedure TBrush.SetColor(Value:TColor);
begin
{*
 005C09B8    push        ebp
 005C09B9    mov         ebp,esp
 005C09BB    add         esp,0FFFFFFE8
 005C09BE    mov         dword ptr [ebp-8],edx
 005C09C1    mov         dword ptr [ebp-4],eax
 005C09C4    lea         edx,[ebp-18]
 005C09C7    mov         eax,dword ptr [ebp-4]
 005C09CA    call        005C08C0
 005C09CF    mov         eax,dword ptr [ebp-8]
 005C09D2    mov         dword ptr [ebp-14],eax
 005C09D5    cmp         byte ptr [ebp-0C],1
>005C09D9    jne         005C09DF
 005C09DB    mov         byte ptr [ebp-0C],0
 005C09DF    lea         edx,[ebp-18]
 005C09E2    mov         eax,dword ptr [ebp-4]
 005C09E5    call        005C08F8
 005C09EA    mov         esp,ebp
 005C09EC    pop         ebp
 005C09ED    ret
*}
end;

//005C09F0
function TBrush.GetHandle:HBRUSH;
begin
{*
 005C09F0    push        ebp
 005C09F1    mov         ebp,esp
 005C09F3    add         esp,0FFFFFFE8
 005C09F6    mov         dword ptr [ebp-4],eax
 005C09F9    mov         eax,dword ptr [ebp-4]
 005C09FC    mov         eax,dword ptr [eax+10]
 005C09FF    mov         dword ptr [ebp-0C],eax
 005C0A02    mov         eax,dword ptr [ebp-0C]
 005C0A05    cmp         dword ptr [eax+8],0
>005C0A09    jne         005C0AD4
 005C0A0F    mov         eax,[006ECD70];BrushManager:TResourceManager
 005C0A14    call        005BF10C
 005C0A19    xor         eax,eax
 005C0A1B    push        ebp
 005C0A1C    push        5C0ACD
 005C0A21    push        dword ptr fs:[eax]
 005C0A24    mov         dword ptr fs:[eax],esp
 005C0A27    mov         eax,dword ptr [ebp-0C]
 005C0A2A    cmp         dword ptr [eax+8],0
>005C0A2E    jne         005C0AB5
 005C0A34    mov         eax,dword ptr [ebp-0C]
 005C0A37    cmp         dword ptr [eax+18],0
>005C0A3B    je          005C0A61
 005C0A3D    mov         dword ptr [ebp-18],3
 005C0A44    mov         eax,dword ptr [ebp-0C]
 005C0A47    mov         eax,dword ptr [eax+18]
 005C0A4A    mov         dl,1
 005C0A4C    mov         ecx,dword ptr [eax]
 005C0A4E    call        dword ptr [ecx+6C]
 005C0A51    mov         eax,dword ptr [ebp-0C]
 005C0A54    mov         eax,dword ptr [eax+18]
 005C0A57    mov         edx,dword ptr [eax]
 005C0A59    call        dword ptr [edx+64]
 005C0A5C    mov         dword ptr [ebp-10],eax
>005C0A5F    jmp         005C0A98
 005C0A61    xor         eax,eax
 005C0A63    mov         dword ptr [ebp-10],eax
 005C0A66    mov         eax,dword ptr [ebp-0C]
 005C0A69    mov         al,byte ptr [eax+1C]
 005C0A6C    sub         al,1
>005C0A6E    jb          005C0A74
>005C0A70    je          005C0A7B
>005C0A72    jmp         005C0A84
 005C0A74    xor         eax,eax
 005C0A76    mov         dword ptr [ebp-18],eax
>005C0A79    jmp         005C0A98
 005C0A7B    mov         dword ptr [ebp-18],1
>005C0A82    jmp         005C0A98
 005C0A84    mov         dword ptr [ebp-18],2
 005C0A8B    mov         eax,dword ptr [ebp-0C]
 005C0A8E    movzx       eax,byte ptr [eax+1C]
 005C0A92    sub         eax,2
 005C0A95    mov         dword ptr [ebp-10],eax
 005C0A98    mov         eax,dword ptr [ebp-0C]
 005C0A9B    mov         eax,dword ptr [eax+14]
 005C0A9E    call        ColorToRGB
 005C0AA3    mov         dword ptr [ebp-14],eax
 005C0AA6    lea         eax,[ebp-18]
 005C0AA9    push        eax
 005C0AAA    call        GDI32.CreateBrushIndirect
 005C0AAF    mov         edx,dword ptr [ebp-0C]
 005C0AB2    mov         dword ptr [edx+8],eax
 005C0AB5    xor         eax,eax
 005C0AB7    pop         edx
 005C0AB8    pop         ecx
 005C0AB9    pop         ecx
 005C0ABA    mov         dword ptr fs:[eax],edx
 005C0ABD    push        5C0AD4
 005C0AC2    mov         eax,[006ECD70];BrushManager:TResourceManager
 005C0AC7    call        005BF124
 005C0ACC    ret
>005C0ACD    jmp         @HandleFinally
>005C0AD2    jmp         005C0AC2
 005C0AD4    mov         eax,dword ptr [ebp-0C]
 005C0AD7    mov         eax,dword ptr [eax+8]
 005C0ADA    mov         dword ptr [ebp-8],eax
 005C0ADD    mov         eax,dword ptr [ebp-8]
 005C0AE0    mov         esp,ebp
 005C0AE2    pop         ebp
 005C0AE3    ret
*}
end;

//005C0AE4
function TBrush.GetStyle:TBrushStyle;
begin
{*
 005C0AE4    push        ebp
 005C0AE5    mov         ebp,esp
 005C0AE7    add         esp,0FFFFFFF8
 005C0AEA    mov         dword ptr [ebp-4],eax
 005C0AED    mov         eax,dword ptr [ebp-4]
 005C0AF0    mov         eax,dword ptr [eax+10]
 005C0AF3    mov         al,byte ptr [eax+1C]
 005C0AF6    mov         byte ptr [ebp-5],al
 005C0AF9    mov         al,byte ptr [ebp-5]
 005C0AFC    pop         ecx
 005C0AFD    pop         ecx
 005C0AFE    pop         ebp
 005C0AFF    ret
*}
end;

//005C0B00
procedure TBrush.SetStyle(Value:TBrushStyle);
begin
{*
 005C0B00    push        ebp
 005C0B01    mov         ebp,esp
 005C0B03    add         esp,0FFFFFFE8
 005C0B06    mov         byte ptr [ebp-5],dl
 005C0B09    mov         dword ptr [ebp-4],eax
 005C0B0C    lea         edx,[ebp-18]
 005C0B0F    mov         eax,dword ptr [ebp-4]
 005C0B12    call        005C08C0
 005C0B17    mov         al,byte ptr [ebp-5]
 005C0B1A    mov         byte ptr [ebp-0C],al
 005C0B1D    cmp         byte ptr [ebp-0C],1
>005C0B21    jne         005C0B2A
 005C0B23    mov         dword ptr [ebp-14],0FFFFFF
 005C0B2A    lea         edx,[ebp-18]
 005C0B2D    mov         eax,dword ptr [ebp-4]
 005C0B30    call        005C08F8
 005C0B35    mov         esp,ebp
 005C0B37    pop         ebp
 005C0B38    ret
*}
end;

//005C0B3C
constructor TCanvas.Create;
begin
{*
 005C0B3C    push        ebp
 005C0B3D    mov         ebp,esp
 005C0B3F    add         esp,0FFFFFFF8
 005C0B42    test        dl,dl
>005C0B44    je          005C0B4E
 005C0B46    add         esp,0FFFFFFF0
 005C0B49    call        @ClassCreate
 005C0B4E    mov         byte ptr [ebp-5],dl
 005C0B51    mov         dword ptr [ebp-4],eax
 005C0B54    xor         edx,edx
 005C0B56    mov         eax,dword ptr [ebp-4]
 005C0B59    call        TObject.Create
 005C0B5E    mov         eax,dword ptr [ebp-4]
 005C0B61    add         eax,38;TControlCanvas.FLock:TRTLCriticalSection
 005C0B64    push        eax
 005C0B65    call        KERNEL32.InitializeCriticalSection
 005C0B6A    mov         dl,1
 005C0B6C    mov         eax,[005BE498];TFont
 005C0B71    call        TFont.Create;TFont.Create
 005C0B76    mov         edx,dword ptr [ebp-4]
 005C0B79    mov         dword ptr [edx+0C],eax;TControlCanvas.Font:TFont
 005C0B7C    mov         eax,dword ptr [ebp-4]
 005C0B7F    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 005C0B82    mov         edx,dword ptr [ebp-4]
 005C0B85    mov         dword ptr [eax+0C],edx;TFont.?fC:TTabbedNotebook
 005C0B88    mov         dword ptr [eax+8],5C1CEC;TFont.FOnChange:TNotifyEvent
 005C0B8F    mov         eax,dword ptr [ebp-4]
 005C0B92    add         eax,38;TControlCanvas.FLock:TRTLCriticalSection
 005C0B95    mov         edx,dword ptr [ebp-4]
 005C0B98    mov         edx,dword ptr [edx+0C];TControlCanvas.Font:TFont
 005C0B9B    mov         dword ptr [edx+14],eax;TFont.FOwnerLock:PRTLCriticalSection
 005C0B9E    mov         dl,1
 005C0BA0    mov         eax,[005BE614];TPen
 005C0BA5    call        TPen.Create;TPen.Create
 005C0BAA    mov         edx,dword ptr [ebp-4]
 005C0BAD    mov         dword ptr [edx+10],eax;TControlCanvas.Pen:TPen
 005C0BB0    mov         eax,dword ptr [ebp-4]
 005C0BB3    mov         eax,dword ptr [eax+10];TControlCanvas.Pen:TPen
 005C0BB6    mov         edx,dword ptr [ebp-4]
 005C0BB9    mov         dword ptr [eax+0C],edx;TPen.?fC:TTabbedNotebook
 005C0BBC    mov         dword ptr [eax+8],5C1D20;TPen.FOnChange:TNotifyEvent
 005C0BC3    mov         eax,dword ptr [ebp-4]
 005C0BC6    add         eax,38;TControlCanvas.FLock:TRTLCriticalSection
 005C0BC9    mov         edx,dword ptr [ebp-4]
 005C0BCC    mov         edx,dword ptr [edx+10];TControlCanvas.Pen:TPen
 005C0BCF    mov         dword ptr [edx+14],eax;TPen.FOwnerLock:PRTLCriticalSection
 005C0BD2    mov         dl,1
 005C0BD4    mov         eax,[005BE714];TBrush
 005C0BD9    call        TBrush.Create;TBrush.Create
 005C0BDE    mov         edx,dword ptr [ebp-4]
 005C0BE1    mov         dword ptr [edx+14],eax;TControlCanvas.Brush:TBrush
 005C0BE4    mov         eax,dword ptr [ebp-4]
 005C0BE7    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 005C0BEA    mov         edx,dword ptr [ebp-4]
 005C0BED    mov         dword ptr [eax+0C],edx;TBrush.?fC:TTabbedNotebook
 005C0BF0    mov         dword ptr [eax+8],5C1D54;TBrush.FOnChange:TNotifyEvent
 005C0BF7    mov         eax,dword ptr [ebp-4]
 005C0BFA    add         eax,38;TControlCanvas.FLock:TRTLCriticalSection
 005C0BFD    mov         edx,dword ptr [ebp-4]
 005C0C00    mov         edx,dword ptr [edx+14];TControlCanvas.Brush:TBrush
 005C0C03    mov         dword ptr [edx+14],eax;TBrush.FOwnerLock:PRTLCriticalSection
 005C0C06    mov         eax,dword ptr [ebp-4]
 005C0C09    mov         dword ptr [eax+20],0CC0020;TControlCanvas.CopyMode:Integer
 005C0C10    mov         eax,dword ptr [ebp-4]
 005C0C13    mov         dl,byte ptr ds:[5C0C48];0x0 gvar_005C0C48
 005C0C19    mov         byte ptr [eax+8],dl;TControlCanvas.State:TCanvasState
 005C0C1C    mov         edx,dword ptr [ebp-4]
 005C0C1F    mov         eax,[006ECD74];0x0 CanvasList:TThreadList
 005C0C24    call        00645A08
 005C0C29    mov         eax,dword ptr [ebp-4]
 005C0C2C    cmp         byte ptr [ebp-5],0
>005C0C30    je          005C0C41
 005C0C32    call        @AfterConstruction
 005C0C37    pop         dword ptr fs:[0]
 005C0C3E    add         esp,0C
 005C0C41    mov         eax,dword ptr [ebp-4]
 005C0C44    pop         ecx
 005C0C45    pop         ecx
 005C0C46    pop         ebp
 005C0C47    ret
*}
end;

//005C0C4C
destructor TCanvas.Destroy;
begin
{*
 005C0C4C    push        ebp
 005C0C4D    mov         ebp,esp
 005C0C4F    add         esp,0FFFFFFF8
 005C0C52    call        @BeforeDestruction
 005C0C57    mov         byte ptr [ebp-5],dl
 005C0C5A    mov         dword ptr [ebp-4],eax
 005C0C5D    mov         edx,dword ptr [ebp-4]
 005C0C60    mov         eax,[006ECD74];0x0 CanvasList:TThreadList
 005C0C65    call        00645ABC
 005C0C6A    xor         edx,edx
 005C0C6C    mov         eax,dword ptr [ebp-4]
 005C0C6F    call        TCanvas.SetHandle
 005C0C74    mov         eax,dword ptr [ebp-4]
 005C0C77    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005C0C7A    call        TObject.Free
 005C0C7F    mov         eax,dword ptr [ebp-4]
 005C0C82    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005C0C85    call        TObject.Free
 005C0C8A    mov         eax,dword ptr [ebp-4]
 005C0C8D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C0C90    call        TObject.Free
 005C0C95    mov         eax,dword ptr [ebp-4]
 005C0C98    add         eax,38;TCanvas.FLock:TRTLCriticalSection
 005C0C9B    push        eax
 005C0C9C    call        KERNEL32.DeleteCriticalSection
 005C0CA1    mov         dl,byte ptr [ebp-5]
 005C0CA4    and         dl,0FC
 005C0CA7    mov         eax,dword ptr [ebp-4]
 005C0CAA    call        TPersistent.Destroy
 005C0CAF    cmp         byte ptr [ebp-5],0
>005C0CB3    jle         005C0CBD
 005C0CB5    mov         eax,dword ptr [ebp-4]
 005C0CB8    call        @ClassDestroy
 005C0CBD    pop         ecx
 005C0CBE    pop         ecx
 005C0CBF    pop         ebp
 005C0CC0    ret
*}
end;

//005C0CC4
{*procedure sub_005C0CC4(?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 005C0CC4    push        ebp
 005C0CC5    mov         ebp,esp
 005C0CC7    add         esp,0FFFFFFD0
 005C0CCA    mov         dword ptr [ebp-0C],ecx
 005C0CCD    mov         dword ptr [ebp-8],edx
 005C0CD0    mov         dword ptr [ebp-4],eax
 005C0CD3    cmp         dword ptr [ebp-0C],0
>005C0CD7    je          005C0FBA
 005C0CDD    mov         eax,dword ptr [ebp-4]
 005C0CE0    call        TCanvas.Lock
 005C0CE5    xor         eax,eax
 005C0CE7    push        ebp
 005C0CE8    push        5C0FB3
 005C0CED    push        dword ptr fs:[eax]
 005C0CF0    mov         dword ptr fs:[eax],esp
 005C0CF3    mov         eax,dword ptr [ebp-4]
 005C0CF6    mov         edx,dword ptr [eax]
 005C0CF8    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C0CFB    mov         dl,byte ptr ds:[5C0FC0];0x9 gvar_005C0FC0
 005C0D01    mov         eax,dword ptr [ebp-4]
 005C0D04    call        005C1AEC
 005C0D09    mov         eax,dword ptr [ebp-0C]
 005C0D0C    call        TBitmap.GetCanvas
 005C0D11    call        TCanvas.Lock
 005C0D16    xor         eax,eax
 005C0D18    push        ebp
 005C0D19    push        5C0F8E
 005C0D1E    push        dword ptr fs:[eax]
 005C0D21    mov         dword ptr fs:[eax],esp
 005C0D24    mov         eax,dword ptr [ebp-8]
 005C0D27    mov         eax,dword ptr [eax+8]
 005C0D2A    mov         edx,dword ptr [ebp-8]
 005C0D2D    sub         eax,dword ptr [edx]
 005C0D2F    mov         dword ptr [ebp-18],eax
 005C0D32    mov         eax,dword ptr [ebp-8]
 005C0D35    mov         eax,dword ptr [eax+0C]
 005C0D38    mov         edx,dword ptr [ebp-8]
 005C0D3B    sub         eax,dword ptr [edx+4]
 005C0D3E    mov         dword ptr [ebp-1C],eax
 005C0D41    mov         eax,dword ptr [ebp+0C]
 005C0D44    mov         eax,dword ptr [eax+8]
 005C0D47    mov         edx,dword ptr [ebp+0C]
 005C0D4A    sub         eax,dword ptr [edx]
 005C0D4C    mov         dword ptr [ebp-10],eax
 005C0D4F    mov         eax,dword ptr [ebp+0C]
 005C0D52    mov         eax,dword ptr [eax+0C]
 005C0D55    mov         edx,dword ptr [ebp+0C]
 005C0D58    sub         eax,dword ptr [edx+4]
 005C0D5B    mov         dword ptr [ebp-14],eax
 005C0D5E    mov         eax,dword ptr [ebp-0C]
 005C0D61    call        005C7404
 005C0D66    cmp         eax,dword ptr [ebp+8]
>005C0D69    jne         005C0D97
 005C0D6B    xor         eax,eax
 005C0D6D    mov         dword ptr [ebp-2C],eax
 005C0D70    mov         eax,dword ptr [ebp-0C]
 005C0D73    mov         edx,dword ptr [eax]
 005C0D75    call        dword ptr [edx+68]
 005C0D78    mov         dword ptr [ebp-30],eax
 005C0D7B    push        0
 005C0D7D    call        GDI32.CreateCompatibleDC
 005C0D82    mov         dword ptr [ebp-28],eax
 005C0D85    mov         eax,dword ptr [ebp-30]
 005C0D88    push        eax
 005C0D89    mov         eax,dword ptr [ebp-28]
 005C0D8C    push        eax
 005C0D8D    call        GDI32.SelectObject
 005C0D92    mov         dword ptr [ebp-30],eax
>005C0D95    jmp         005C0DE2
 005C0D97    mov         dl,1
 005C0D99    mov         eax,[005BEDD4];TBitmap
 005C0D9E    call        TBitmap.Create;TBitmap.Create
 005C0DA3    mov         dword ptr [ebp-2C],eax
 005C0DA6    mov         edx,dword ptr [ebp-0C]
 005C0DA9    mov         eax,dword ptr [ebp-2C]
 005C0DAC    mov         ecx,dword ptr [eax]
 005C0DAE    call        dword ptr [ecx+8];TBitmap.Assign
 005C0DB1    mov         edx,dword ptr [ebp+8]
 005C0DB4    mov         eax,dword ptr [ebp-2C]
 005C0DB7    call        005C7640
 005C0DBC    mov         eax,dword ptr [ebp-2C]
 005C0DBF    call        TBitmap.GetCanvas
 005C0DC4    mov         dl,byte ptr ds:[5C0FC4];0x1 gvar_005C0FC4
 005C0DCA    call        005C1AEC
 005C0DCF    mov         eax,dword ptr [ebp-2C]
 005C0DD2    call        TBitmap.GetCanvas
 005C0DD7    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0DDA    mov         dword ptr [ebp-28],eax
 005C0DDD    xor         eax,eax
 005C0DDF    mov         dword ptr [ebp-30],eax
 005C0DE2    xor         eax,eax
 005C0DE4    push        ebp
 005C0DE5    push        5C0F6C
 005C0DEA    push        dword ptr fs:[eax]
 005C0DED    mov         dword ptr fs:[eax],esp
 005C0DF0    mov         eax,dword ptr [ebp-0C]
 005C0DF3    call        TBitmap.GetCanvas
 005C0DF8    mov         dl,byte ptr ds:[5C0FC4];0x1 gvar_005C0FC4
 005C0DFE    call        005C1AEC
 005C0E03    mov         eax,dword ptr [ebp-4]
 005C0E06    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C0E09    call        TBrush.GetStyle
 005C0E0E    cmp         al,1
>005C0E10    jne         005C0E67
 005C0E12    mov         eax,dword ptr [ebp-18]
 005C0E15    push        eax
 005C0E16    mov         eax,dword ptr [ebp-1C]
 005C0E19    push        eax
 005C0E1A    mov         eax,dword ptr [ebp-0C]
 005C0E1D    call        TBitmap.GetCanvas
 005C0E22    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0E25    push        eax
 005C0E26    mov         eax,dword ptr [ebp+0C]
 005C0E29    mov         eax,dword ptr [eax]
 005C0E2B    push        eax
 005C0E2C    mov         eax,dword ptr [ebp+0C]
 005C0E2F    mov         eax,dword ptr [eax+4]
 005C0E32    push        eax
 005C0E33    mov         eax,dword ptr [ebp-10]
 005C0E36    push        eax
 005C0E37    mov         eax,dword ptr [ebp-14]
 005C0E3A    push        eax
 005C0E3B    mov         eax,dword ptr [ebp-28]
 005C0E3E    push        eax
 005C0E3F    mov         eax,dword ptr [ebp+0C]
 005C0E42    mov         eax,dword ptr [eax]
 005C0E44    push        eax
 005C0E45    mov         eax,dword ptr [ebp+0C]
 005C0E48    mov         eax,dword ptr [eax+4]
 005C0E4B    push        eax
 005C0E4C    mov         ecx,dword ptr [ebp-8]
 005C0E4F    mov         ecx,dword ptr [ecx+4]
 005C0E52    mov         edx,dword ptr [ebp-8]
 005C0E55    mov         edx,dword ptr [edx]
 005C0E57    mov         eax,dword ptr [ebp-4]
 005C0E5A    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0E5D    call        005C20F4
>005C0E62    jmp         005C0F32
 005C0E67    push        0CC0020
 005C0E6C    mov         eax,dword ptr [ebp-14]
 005C0E6F    push        eax
 005C0E70    mov         eax,dword ptr [ebp-10]
 005C0E73    push        eax
 005C0E74    mov         eax,dword ptr [ebp+0C]
 005C0E77    mov         eax,dword ptr [eax+4]
 005C0E7A    push        eax
 005C0E7B    mov         eax,dword ptr [ebp+0C]
 005C0E7E    mov         eax,dword ptr [eax]
 005C0E80    push        eax
 005C0E81    mov         eax,dword ptr [ebp-0C]
 005C0E84    call        TBitmap.GetCanvas
 005C0E89    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0E8C    push        eax
 005C0E8D    mov         eax,dword ptr [ebp-1C]
 005C0E90    push        eax
 005C0E91    mov         eax,dword ptr [ebp-18]
 005C0E94    push        eax
 005C0E95    mov         eax,dword ptr [ebp-8]
 005C0E98    mov         eax,dword ptr [eax+4]
 005C0E9B    push        eax
 005C0E9C    mov         eax,dword ptr [ebp-8]
 005C0E9F    mov         eax,dword ptr [eax]
 005C0EA1    push        eax
 005C0EA2    mov         eax,dword ptr [ebp-4]
 005C0EA5    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0EA8    push        eax
 005C0EA9    call        GDI32.StretchBlt
 005C0EAE    push        0
 005C0EB0    mov         eax,dword ptr [ebp-4]
 005C0EB3    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0EB6    push        eax
 005C0EB7    call        GDI32.SetTextColor
 005C0EBC    mov         dword ptr [ebp-24],eax
 005C0EBF    push        0FFFFFF
 005C0EC4    mov         eax,dword ptr [ebp-4]
 005C0EC7    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0ECA    push        eax
 005C0ECB    call        GDI32.SetBkColor
 005C0ED0    mov         dword ptr [ebp-20],eax
 005C0ED3    push        0E20746
 005C0ED8    mov         eax,dword ptr [ebp-14]
 005C0EDB    push        eax
 005C0EDC    mov         eax,dword ptr [ebp-10]
 005C0EDF    push        eax
 005C0EE0    mov         eax,dword ptr [ebp+0C]
 005C0EE3    mov         eax,dword ptr [eax+4]
 005C0EE6    push        eax
 005C0EE7    mov         eax,dword ptr [ebp+0C]
 005C0EEA    mov         eax,dword ptr [eax]
 005C0EEC    push        eax
 005C0EED    mov         eax,dword ptr [ebp-28]
 005C0EF0    push        eax
 005C0EF1    mov         eax,dword ptr [ebp-1C]
 005C0EF4    push        eax
 005C0EF5    mov         eax,dword ptr [ebp-18]
 005C0EF8    push        eax
 005C0EF9    mov         eax,dword ptr [ebp-8]
 005C0EFC    mov         eax,dword ptr [eax+4]
 005C0EFF    push        eax
 005C0F00    mov         eax,dword ptr [ebp-8]
 005C0F03    mov         eax,dword ptr [eax]
 005C0F05    push        eax
 005C0F06    mov         eax,dword ptr [ebp-4]
 005C0F09    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0F0C    push        eax
 005C0F0D    call        GDI32.StretchBlt
 005C0F12    mov         eax,dword ptr [ebp-24]
 005C0F15    push        eax
 005C0F16    mov         eax,dword ptr [ebp-4]
 005C0F19    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0F1C    push        eax
 005C0F1D    call        GDI32.SetTextColor
 005C0F22    mov         eax,dword ptr [ebp-20]
 005C0F25    push        eax
 005C0F26    mov         eax,dword ptr [ebp-4]
 005C0F29    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C0F2C    push        eax
 005C0F2D    call        GDI32.SetBkColor
 005C0F32    xor         eax,eax
 005C0F34    pop         edx
 005C0F35    pop         ecx
 005C0F36    pop         ecx
 005C0F37    mov         dword ptr fs:[eax],edx
 005C0F3A    push        5C0F73
 005C0F3F    cmp         dword ptr [ebp-2C],0
>005C0F43    je          005C0F4F
 005C0F45    mov         eax,dword ptr [ebp-2C]
 005C0F48    call        TObject.Free
>005C0F4D    jmp         005C0F6B
 005C0F4F    cmp         dword ptr [ebp-30],0
>005C0F53    je          005C0F62
 005C0F55    mov         eax,dword ptr [ebp-30]
 005C0F58    push        eax
 005C0F59    mov         eax,dword ptr [ebp-28]
 005C0F5C    push        eax
 005C0F5D    call        GDI32.SelectObject
 005C0F62    mov         eax,dword ptr [ebp-28]
 005C0F65    push        eax
 005C0F66    call        GDI32.DeleteDC
 005C0F6B    ret
>005C0F6C    jmp         @HandleFinally
>005C0F71    jmp         005C0F3F
 005C0F73    xor         eax,eax
 005C0F75    pop         edx
 005C0F76    pop         ecx
 005C0F77    pop         ecx
 005C0F78    mov         dword ptr fs:[eax],edx
 005C0F7B    push        5C0F95
 005C0F80    mov         eax,dword ptr [ebp-0C]
 005C0F83    call        TBitmap.GetCanvas
 005C0F88    call        TCanvas.Unlock
 005C0F8D    ret
>005C0F8E    jmp         @HandleFinally
>005C0F93    jmp         005C0F80
 005C0F95    mov         eax,dword ptr [ebp-4]
 005C0F98    mov         edx,dword ptr [eax]
 005C0F9A    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C0F9D    xor         eax,eax
 005C0F9F    pop         edx
 005C0FA0    pop         ecx
 005C0FA1    pop         ecx
 005C0FA2    mov         dword ptr fs:[eax],edx
 005C0FA5    push        5C0FBA
 005C0FAA    mov         eax,dword ptr [ebp-4]
 005C0FAD    call        TCanvas.Unlock
 005C0FB2    ret
>005C0FB3    jmp         @HandleFinally
>005C0FB8    jmp         005C0FAA
 005C0FBA    mov         esp,ebp
 005C0FBC    pop         ebp
 005C0FBD    ret         8
end;*}

//005C0FC8
{*procedure sub_005C0FC8(?:TCanvas; ?:?; ?:TCanvas; ?:?);
begin
 005C0FC8    push        ebp
 005C0FC9    mov         ebp,esp
 005C0FCB    add         esp,0FFFFFFF4
 005C0FCE    mov         dword ptr [ebp-0C],ecx
 005C0FD1    mov         dword ptr [ebp-8],edx
 005C0FD4    mov         dword ptr [ebp-4],eax
 005C0FD7    mov         eax,dword ptr [ebp-4]
 005C0FDA    mov         edx,dword ptr [eax]
 005C0FDC    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C0FDF    mov         dl,byte ptr ds:[5C1070];0xB gvar_005C1070
 005C0FE5    mov         eax,dword ptr [ebp-4]
 005C0FE8    call        005C1AEC
 005C0FED    mov         dl,byte ptr ds:[5C1074];0x9 gvar_005C1074
 005C0FF3    mov         eax,dword ptr [ebp-0C]
 005C0FF6    call        005C1AEC
 005C0FFB    mov         eax,dword ptr [ebp-4]
 005C0FFE    mov         eax,dword ptr [eax+20];TCanvas.CopyMode:Integer
 005C1001    push        eax
 005C1002    mov         eax,dword ptr [ebp+8]
 005C1005    mov         eax,dword ptr [eax+0C]
 005C1008    mov         edx,dword ptr [ebp+8]
 005C100B    sub         eax,dword ptr [edx+4]
 005C100E    push        eax
 005C100F    mov         eax,dword ptr [ebp+8]
 005C1012    mov         eax,dword ptr [eax+8]
 005C1015    mov         edx,dword ptr [ebp+8]
 005C1018    sub         eax,dword ptr [edx]
 005C101A    push        eax
 005C101B    mov         eax,dword ptr [ebp+8]
 005C101E    mov         eax,dword ptr [eax+4]
 005C1021    push        eax
 005C1022    mov         eax,dword ptr [ebp+8]
 005C1025    mov         eax,dword ptr [eax]
 005C1027    push        eax
 005C1028    mov         eax,dword ptr [ebp-0C]
 005C102B    mov         eax,dword ptr [eax+4]
 005C102E    push        eax
 005C102F    mov         eax,dword ptr [ebp-8]
 005C1032    mov         eax,dword ptr [eax+0C]
 005C1035    mov         edx,dword ptr [ebp-8]
 005C1038    sub         eax,dword ptr [edx+4]
 005C103B    push        eax
 005C103C    mov         eax,dword ptr [ebp-8]
 005C103F    mov         eax,dword ptr [eax+8]
 005C1042    mov         edx,dword ptr [ebp-8]
 005C1045    sub         eax,dword ptr [edx]
 005C1047    push        eax
 005C1048    mov         eax,dword ptr [ebp-8]
 005C104B    mov         eax,dword ptr [eax+4]
 005C104E    push        eax
 005C104F    mov         eax,dword ptr [ebp-8]
 005C1052    mov         eax,dword ptr [eax]
 005C1054    push        eax
 005C1055    mov         eax,dword ptr [ebp-4]
 005C1058    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C105B    push        eax
 005C105C    call        GDI32.StretchBlt
 005C1061    mov         eax,dword ptr [ebp-4]
 005C1064    mov         edx,dword ptr [eax]
 005C1066    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C1069    mov         esp,ebp
 005C106B    pop         ebp
 005C106C    ret         4
end;*}

//005C1078
{*procedure sub_005C1078(?:TCanvas; ?:Integer; ?:?; ?:?);
begin
 005C1078    push        ebp
 005C1079    mov         ebp,esp
 005C107B    add         esp,0FFFFFFE4
 005C107E    push        ebx
 005C107F    mov         dword ptr [ebp-0C],ecx
 005C1082    mov         dword ptr [ebp-8],edx
 005C1085    mov         dword ptr [ebp-4],eax
 005C1088    cmp         dword ptr [ebp+8],0
>005C108C    je          005C112E
 005C1092    mov         eax,dword ptr [ebp+8]
 005C1095    mov         edx,dword ptr [eax]
 005C1097    call        dword ptr [edx+1C]
 005C109A    test        al,al
>005C109C    jne         005C112E
 005C10A2    mov         eax,dword ptr [ebp-4]
 005C10A5    mov         edx,dword ptr [eax]
 005C10A7    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C10AA    mov         dl,byte ptr ds:[5C1138];0x1 gvar_005C1138
 005C10B0    mov         eax,dword ptr [ebp-4]
 005C10B3    call        005C1AEC
 005C10B8    mov         eax,dword ptr [ebp-4]
 005C10BB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C10BE    call        TBrush.GetColor
 005C10C3    call        ColorToRGB
 005C10C8    push        eax
 005C10C9    mov         eax,dword ptr [ebp-4]
 005C10CC    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C10CF    push        eax
 005C10D0    call        GDI32.SetBkColor
 005C10D5    mov         eax,dword ptr [ebp-4]
 005C10D8    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005C10DB    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 005C10DE    call        ColorToRGB
 005C10E3    push        eax
 005C10E4    mov         eax,dword ptr [ebp-4]
 005C10E7    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C10EA    push        eax
 005C10EB    call        GDI32.SetTextColor
 005C10F0    mov         eax,dword ptr [ebp+8]
 005C10F3    mov         edx,dword ptr [eax]
 005C10F5    call        dword ptr [edx+20]
 005C10F8    add         eax,dword ptr [ebp-0C]
 005C10FB    push        eax
 005C10FC    lea         eax,[ebp-1C]
 005C10FF    push        eax
 005C1100    mov         eax,dword ptr [ebp+8]
 005C1103    mov         edx,dword ptr [eax]
 005C1105    call        dword ptr [edx+2C]
 005C1108    mov         ecx,eax
 005C110A    add         ecx,dword ptr [ebp-8]
 005C110D    mov         edx,dword ptr [ebp-0C]
 005C1110    mov         eax,dword ptr [ebp-8]
 005C1113    call        Rect
 005C1118    lea         ecx,[ebp-1C]
 005C111B    mov         edx,dword ptr [ebp-4]
 005C111E    mov         eax,dword ptr [ebp+8]
 005C1121    mov         ebx,dword ptr [eax]
 005C1123    call        dword ptr [ebx+14]
 005C1126    mov         eax,dword ptr [ebp-4]
 005C1129    mov         edx,dword ptr [eax]
 005C112B    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C112E    pop         ebx
 005C112F    mov         esp,ebp
 005C1131    pop         ebp
 005C1132    ret         4
end;*}

//005C113C
{*procedure sub_005C113C(?:TCanvas; ?:?);
begin
 005C113C    push        ebp
 005C113D    mov         ebp,esp
 005C113F    add         esp,0FFFFFFF8
 005C1142    mov         dword ptr [ebp-8],edx
 005C1145    mov         dword ptr [ebp-4],eax
 005C1148    mov         eax,dword ptr [ebp-4]
 005C114B    mov         edx,dword ptr [eax]
 005C114D    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C1150    mov         dl,byte ptr ds:[5C117C];0x9 gvar_005C117C
 005C1156    mov         eax,dword ptr [ebp-4]
 005C1159    call        005C1AEC
 005C115E    mov         eax,dword ptr [ebp-8]
 005C1161    push        eax
 005C1162    mov         eax,dword ptr [ebp-4]
 005C1165    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1168    push        eax
 005C1169    call        USER32.DrawFocusRect
 005C116E    mov         eax,dword ptr [ebp-4]
 005C1171    mov         edx,dword ptr [eax]
 005C1173    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C1176    pop         ecx
 005C1177    pop         ecx
 005C1178    pop         ebp
 005C1179    ret
end;*}

//005C1180
{*procedure sub_005C1180(?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 005C1180    push        ebp
 005C1181    mov         ebp,esp
 005C1183    add         esp,0FFFFFFF4
 005C1186    mov         dword ptr [ebp-0C],ecx
 005C1189    mov         dword ptr [ebp-8],edx
 005C118C    mov         dword ptr [ebp-4],eax
 005C118F    mov         eax,dword ptr [ebp-4]
 005C1192    mov         edx,dword ptr [eax]
 005C1194    call        dword ptr [edx+10]
 005C1197    mov         dl,byte ptr ds:[5C11D0];0xD gvar_005C11D0
 005C119D    mov         eax,dword ptr [ebp-4]
 005C11A0    call        005C1AEC
 005C11A5    mov         eax,dword ptr [ebp+8]
 005C11A8    push        eax
 005C11A9    mov         eax,dword ptr [ebp+0C]
 005C11AC    push        eax
 005C11AD    mov         eax,dword ptr [ebp-0C]
 005C11B0    push        eax
 005C11B1    mov         eax,dword ptr [ebp-8]
 005C11B4    push        eax
 005C11B5    mov         eax,dword ptr [ebp-4]
 005C11B8    mov         eax,dword ptr [eax+4]
 005C11BB    push        eax
 005C11BC    call        GDI32.Ellipse
 005C11C1    mov         eax,dword ptr [ebp-4]
 005C11C4    mov         edx,dword ptr [eax]
 005C11C6    call        dword ptr [edx+0C]
 005C11C9    mov         esp,ebp
 005C11CB    pop         ebp
 005C11CC    ret         8
end;*}

//005C11D4
procedure TCanvas.FillRect(const Rect:TRect);
begin
{*
 005C11D4    push        ebp
 005C11D5    mov         ebp,esp
 005C11D7    add         esp,0FFFFFFF8
 005C11DA    mov         dword ptr [ebp-8],edx
 005C11DD    mov         dword ptr [ebp-4],eax
 005C11E0    mov         eax,dword ptr [ebp-4]
 005C11E3    mov         edx,dword ptr [eax]
 005C11E5    call        dword ptr [edx+10]
 005C11E8    mov         dl,byte ptr ds:[5C1220]
 005C11EE    mov         eax,dword ptr [ebp-4]
 005C11F1    call        005C1AEC
 005C11F6    mov         eax,dword ptr [ebp-4]
 005C11F9    mov         eax,dword ptr [eax+14]
 005C11FC    call        TBrush.GetHandle
 005C1201    push        eax
 005C1202    mov         eax,dword ptr [ebp-8]
 005C1205    push        eax
 005C1206    mov         eax,dword ptr [ebp-4]
 005C1209    mov         eax,dword ptr [eax+4]
 005C120C    push        eax
 005C120D    call        USER32.FillRect
 005C1212    mov         eax,dword ptr [ebp-4]
 005C1215    mov         edx,dword ptr [eax]
 005C1217    call        dword ptr [edx+0C]
 005C121A    pop         ecx
 005C121B    pop         ecx
 005C121C    pop         ebp
 005C121D    ret
*}
end;

//005C1224
procedure sub_005C1224(?:TCanvas; ?:TRect);
begin
{*
 005C1224    push        ebp
 005C1225    mov         ebp,esp
 005C1227    add         esp,0FFFFFFF8
 005C122A    mov         dword ptr [ebp-8],edx
 005C122D    mov         dword ptr [ebp-4],eax
 005C1230    mov         eax,dword ptr [ebp-4]
 005C1233    mov         edx,dword ptr [eax]
 005C1235    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C1238    mov         dl,byte ptr ds:[5C1270];0x9 gvar_005C1270
 005C123E    mov         eax,dword ptr [ebp-4]
 005C1241    call        005C1AEC
 005C1246    mov         eax,dword ptr [ebp-4]
 005C1249    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C124C    call        TBrush.GetHandle
 005C1251    push        eax
 005C1252    mov         eax,dword ptr [ebp-8]
 005C1255    push        eax
 005C1256    mov         eax,dword ptr [ebp-4]
 005C1259    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C125C    push        eax
 005C125D    call        USER32.FrameRect
 005C1262    mov         eax,dword ptr [ebp-4]
 005C1265    mov         edx,dword ptr [eax]
 005C1267    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C126A    pop         ecx
 005C126B    pop         ecx
 005C126C    pop         ebp
 005C126D    ret
*}
end;

//005C1274
{*procedure sub_005C1274(?:TCanvas; ?:?; ?:?);
begin
 005C1274    push        ebp
 005C1275    mov         ebp,esp
 005C1277    add         esp,0FFFFFFF4
 005C127A    mov         dword ptr [ebp-0C],ecx
 005C127D    mov         dword ptr [ebp-8],edx
 005C1280    mov         dword ptr [ebp-4],eax
 005C1283    mov         eax,dword ptr [ebp-4]
 005C1286    mov         edx,dword ptr [eax]
 005C1288    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C128B    mov         dl,byte ptr ds:[5C12BC];0xD gvar_005C12BC
 005C1291    mov         eax,dword ptr [ebp-4]
 005C1294    call        005C1AEC
 005C1299    mov         eax,dword ptr [ebp-0C]
 005C129C    push        eax
 005C129D    mov         eax,dword ptr [ebp-8]
 005C12A0    push        eax
 005C12A1    mov         eax,dword ptr [ebp-4]
 005C12A4    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C12A7    push        eax
 005C12A8    call        GDI32.LineTo
 005C12AD    mov         eax,dword ptr [ebp-4]
 005C12B0    mov         edx,dword ptr [eax]
 005C12B2    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C12B5    mov         esp,ebp
 005C12B7    pop         ebp
 005C12B8    ret
end;*}

//005C12C0
procedure TCanvas.Lock;
begin
{*
 005C12C0    push        ebp
 005C12C1    mov         ebp,esp
 005C12C3    push        ecx
 005C12C4    mov         dword ptr [ebp-4],eax
 005C12C7    push        6ECD50;CounterLock:TRTLCriticalSection
 005C12CC    call        KERNEL32.EnterCriticalSection
 005C12D1    mov         eax,dword ptr [ebp-4]
 005C12D4    inc         dword ptr [eax+50]
 005C12D7    push        6ECD50;CounterLock:TRTLCriticalSection
 005C12DC    call        KERNEL32.LeaveCriticalSection
 005C12E1    mov         eax,dword ptr [ebp-4]
 005C12E4    add         eax,38
 005C12E7    push        eax
 005C12E8    call        KERNEL32.EnterCriticalSection
 005C12ED    pop         ecx
 005C12EE    pop         ebp
 005C12EF    ret
*}
end;

//005C12F0
{*procedure sub_005C12F0(?:TCanvas; ?:?; ?:?);
begin
 005C12F0    push        ebp
 005C12F1    mov         ebp,esp
 005C12F3    add         esp,0FFFFFFF4
 005C12F6    mov         dword ptr [ebp-0C],ecx
 005C12F9    mov         dword ptr [ebp-8],edx
 005C12FC    mov         dword ptr [ebp-4],eax
 005C12FF    mov         dl,byte ptr ds:[5C1328];0x1 gvar_005C1328
 005C1305    mov         eax,dword ptr [ebp-4]
 005C1308    call        005C1AEC
 005C130D    push        0
 005C130F    mov         eax,dword ptr [ebp-0C]
 005C1312    push        eax
 005C1313    mov         eax,dword ptr [ebp-8]
 005C1316    push        eax
 005C1317    mov         eax,dword ptr [ebp-4]
 005C131A    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C131D    push        eax
 005C131E    call        GDI32.MoveToEx
 005C1323    mov         esp,ebp
 005C1325    pop         ebp
 005C1326    ret
end;*}

//005C132C
{*procedure sub_005C132C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005C132C    push        ebp
 005C132D    mov         ebp,esp
 005C132F    add         esp,0FFFFFFF4
 005C1332    mov         dword ptr [ebp-0C],ecx
 005C1335    mov         dword ptr [ebp-8],edx
 005C1338    mov         dword ptr [ebp-4],eax
 005C133B    mov         eax,dword ptr [ebp-4]
 005C133E    mov         edx,dword ptr [eax]
 005C1340    call        dword ptr [edx+10]
 005C1343    mov         dl,byte ptr ds:[5C138C];0xD gvar_005C138C
 005C1349    mov         eax,dword ptr [ebp-4]
 005C134C    call        005C1AEC
 005C1351    mov         eax,dword ptr [ebp+8]
 005C1354    push        eax
 005C1355    mov         eax,dword ptr [ebp+0C]
 005C1358    push        eax
 005C1359    mov         eax,dword ptr [ebp+10]
 005C135C    push        eax
 005C135D    mov         eax,dword ptr [ebp+14]
 005C1360    push        eax
 005C1361    mov         eax,dword ptr [ebp+18]
 005C1364    push        eax
 005C1365    mov         eax,dword ptr [ebp+1C]
 005C1368    push        eax
 005C1369    mov         eax,dword ptr [ebp-0C]
 005C136C    push        eax
 005C136D    mov         eax,dword ptr [ebp-8]
 005C1370    push        eax
 005C1371    mov         eax,dword ptr [ebp-4]
 005C1374    mov         eax,dword ptr [eax+4]
 005C1377    push        eax
 005C1378    call        GDI32.Pie
 005C137D    mov         eax,dword ptr [ebp-4]
 005C1380    mov         edx,dword ptr [eax]
 005C1382    call        dword ptr [edx+0C]
 005C1385    mov         esp,ebp
 005C1387    pop         ebp
 005C1388    ret         18
end;*}

//005C1390
{*procedure sub_005C1390(?:?; ?:?; ?:?);
begin
 005C1390    push        ebp
 005C1391    mov         ebp,esp
 005C1393    add         esp,0FFFFFFF4
 005C1396    mov         dword ptr [ebp-0C],ecx
 005C1399    mov         dword ptr [ebp-8],edx
 005C139C    mov         dword ptr [ebp-4],eax
 005C139F    mov         eax,dword ptr [ebp-4]
 005C13A2    mov         edx,dword ptr [eax]
 005C13A4    call        dword ptr [edx+10]
 005C13A7    mov         dl,byte ptr ds:[5C13D8];0xD gvar_005C13D8
 005C13AD    mov         eax,dword ptr [ebp-4]
 005C13B0    call        005C1AEC
 005C13B5    mov         eax,dword ptr [ebp-0C]
 005C13B8    inc         eax
 005C13B9    push        eax
 005C13BA    mov         eax,dword ptr [ebp-8]
 005C13BD    push        eax
 005C13BE    mov         eax,dword ptr [ebp-4]
 005C13C1    mov         eax,dword ptr [eax+4]
 005C13C4    push        eax
 005C13C5    call        GDI32.Polygon
 005C13CA    mov         eax,dword ptr [ebp-4]
 005C13CD    mov         edx,dword ptr [eax]
 005C13CF    call        dword ptr [edx+0C]
 005C13D2    mov         esp,ebp
 005C13D4    pop         ebp
 005C13D5    ret
end;*}

//005C13DC
{*procedure sub_005C13DC(?:?; ?:?; ?:?);
begin
 005C13DC    push        ebp
 005C13DD    mov         ebp,esp
 005C13DF    add         esp,0FFFFFFF4
 005C13E2    mov         dword ptr [ebp-0C],ecx
 005C13E5    mov         dword ptr [ebp-8],edx
 005C13E8    mov         dword ptr [ebp-4],eax
 005C13EB    mov         eax,dword ptr [ebp-4]
 005C13EE    mov         edx,dword ptr [eax]
 005C13F0    call        dword ptr [edx+10]
 005C13F3    mov         dl,byte ptr ds:[5C1424];0xD gvar_005C1424
 005C13F9    mov         eax,dword ptr [ebp-4]
 005C13FC    call        005C1AEC
 005C1401    mov         eax,dword ptr [ebp-0C]
 005C1404    inc         eax
 005C1405    push        eax
 005C1406    mov         eax,dword ptr [ebp-8]
 005C1409    push        eax
 005C140A    mov         eax,dword ptr [ebp-4]
 005C140D    mov         eax,dword ptr [eax+4]
 005C1410    push        eax
 005C1411    call        GDI32.Polyline
 005C1416    mov         eax,dword ptr [ebp-4]
 005C1419    mov         edx,dword ptr [eax]
 005C141B    call        dword ptr [edx+0C]
 005C141E    mov         esp,ebp
 005C1420    pop         ebp
 005C1421    ret
end;*}

//005C1428
{*procedure sub_005C1428(?:TCanvas; ?:TRect; ?:Longint; ?:?; ?:?);
begin
 005C1428    push        ebp
 005C1429    mov         ebp,esp
 005C142B    add         esp,0FFFFFFF4
 005C142E    mov         dword ptr [ebp-0C],ecx
 005C1431    mov         dword ptr [ebp-8],edx
 005C1434    mov         dword ptr [ebp-4],eax
 005C1437    mov         eax,dword ptr [ebp-4]
 005C143A    mov         edx,dword ptr [eax]
 005C143C    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C143F    mov         dl,byte ptr ds:[5C1478];0xD gvar_005C1478
 005C1445    mov         eax,dword ptr [ebp-4]
 005C1448    call        005C1AEC
 005C144D    mov         eax,dword ptr [ebp+8]
 005C1450    push        eax
 005C1451    mov         eax,dword ptr [ebp+0C]
 005C1454    push        eax
 005C1455    mov         eax,dword ptr [ebp-0C]
 005C1458    push        eax
 005C1459    mov         eax,dword ptr [ebp-8]
 005C145C    push        eax
 005C145D    mov         eax,dword ptr [ebp-4]
 005C1460    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1463    push        eax
 005C1464    call        GDI32.Rectangle
 005C1469    mov         eax,dword ptr [ebp-4]
 005C146C    mov         edx,dword ptr [eax]
 005C146E    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C1471    mov         esp,ebp
 005C1473    pop         ebp
 005C1474    ret         8
end;*}

//005C147C
procedure sub_005C147C(?:TCanvas; ?:TRect);
begin
{*
 005C147C    push        ebp
 005C147D    mov         ebp,esp
 005C147F    add         esp,0FFFFFFF8
 005C1482    mov         dword ptr [ebp-8],edx
 005C1485    mov         dword ptr [ebp-4],eax
 005C1488    mov         eax,dword ptr [ebp-8]
 005C148B    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 005C148E    push        eax
 005C148F    mov         eax,dword ptr [ebp-8]
 005C1492    mov         eax,dword ptr [eax+0C]
 005C1495    push        eax
 005C1496    mov         ecx,dword ptr [ebp-8]
 005C1499    mov         ecx,dword ptr [ecx+4];TRect.Top:Longint
 005C149C    mov         edx,dword ptr [ebp-8]
 005C149F    mov         edx,dword ptr [edx]
 005C14A1    mov         eax,dword ptr [ebp-4]
 005C14A4    call        005C1428
 005C14A9    pop         ecx
 005C14AA    pop         ecx
 005C14AB    pop         ebp
 005C14AC    ret
*}
end;

//005C14B0
{*procedure sub_005C14B0(?:?);
begin
 005C14B0    push        ebp
 005C14B1    mov         ebp,esp
 005C14B3    push        ecx
 005C14B4    mov         dword ptr [ebp-4],eax
 005C14B7    mov         eax,dword ptr [ebp-4]
 005C14BA    call        005C19EC
 005C14BF    pop         ecx
 005C14C0    pop         ebp
 005C14C1    ret
end;*}

//005C14C4
{*procedure sub_005C14C4(?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005C14C4    push        ebp
 005C14C5    mov         ebp,esp
 005C14C7    add         esp,0FFFFFFF4
 005C14CA    mov         dword ptr [ebp-0C],ecx
 005C14CD    mov         dword ptr [ebp-8],edx
 005C14D0    mov         dword ptr [ebp-4],eax
 005C14D3    mov         eax,dword ptr [ebp-4]
 005C14D6    mov         edx,dword ptr [eax]
 005C14D8    call        dword ptr [edx+10]
 005C14DB    mov         dl,byte ptr ds:[5C151C];0xD gvar_005C151C
 005C14E1    mov         eax,dword ptr [ebp-4]
 005C14E4    call        005C1AEC
 005C14E9    mov         eax,dword ptr [ebp+8]
 005C14EC    push        eax
 005C14ED    mov         eax,dword ptr [ebp+0C]
 005C14F0    push        eax
 005C14F1    mov         eax,dword ptr [ebp+10]
 005C14F4    push        eax
 005C14F5    mov         eax,dword ptr [ebp+14]
 005C14F8    push        eax
 005C14F9    mov         eax,dword ptr [ebp-0C]
 005C14FC    push        eax
 005C14FD    mov         eax,dword ptr [ebp-8]
 005C1500    push        eax
 005C1501    mov         eax,dword ptr [ebp-4]
 005C1504    mov         eax,dword ptr [eax+4]
 005C1507    push        eax
 005C1508    call        GDI32.RoundRect
 005C150D    mov         eax,dword ptr [ebp-4]
 005C1510    mov         edx,dword ptr [eax]
 005C1512    call        dword ptr [edx+0C]
 005C1515    mov         esp,ebp
 005C1517    pop         ebp
 005C1518    ret         10
end;*}

//005C1520
procedure TCanvas.StretchDraw(const Rect:TRect; Graphic:TGraphic);
begin
{*
 005C1520    push        ebp
 005C1521    mov         ebp,esp
 005C1523    add         esp,0FFFFFFF4
 005C1526    push        ebx
 005C1527    mov         dword ptr [ebp-0C],ecx
 005C152A    mov         dword ptr [ebp-8],edx
 005C152D    mov         dword ptr [ebp-4],eax
 005C1530    cmp         dword ptr [ebp-0C],0
>005C1534    je          005C1562
 005C1536    mov         eax,dword ptr [ebp-4]
 005C1539    mov         edx,dword ptr [eax]
 005C153B    call        dword ptr [edx+10]
 005C153E    mov         dl,byte ptr ds:[5C1568]
 005C1544    mov         eax,dword ptr [ebp-4]
 005C1547    call        005C1AEC
 005C154C    mov         ecx,dword ptr [ebp-8]
 005C154F    mov         edx,dword ptr [ebp-4]
 005C1552    mov         eax,dword ptr [ebp-0C]
 005C1555    mov         ebx,dword ptr [eax]
 005C1557    call        dword ptr [ebx+14]
 005C155A    mov         eax,dword ptr [ebp-4]
 005C155D    mov         edx,dword ptr [eax]
 005C155F    call        dword ptr [edx+0C]
 005C1562    pop         ebx
 005C1563    mov         esp,ebp
 005C1565    pop         ebp
 005C1566    ret
*}
end;

//005C156C
{*function sub_005C156C(?:TCanvas):?;
begin
 005C156C    push        ebp
 005C156D    mov         ebp,esp
 005C156F    add         esp,0FFFFFFF0
 005C1572    mov         dword ptr [ebp-4],eax
 005C1575    mov         byte ptr [ebp-5],0
 005C1579    mov         eax,dword ptr [ebp-4]
 005C157C    test        byte ptr [eax+54],80;TCanvas.FTextFlags:Longint
>005C1580    je          005C159E
 005C1582    lea         eax,[ebp-0D]
 005C1585    push        eax
 005C1586    mov         eax,dword ptr [ebp-4]
 005C1589    call        TCanvas.GetHandle
 005C158E    push        eax
 005C158F    call        GDI32.GetWindowOrgEx
 005C1594    cmp         dword ptr [ebp-0D],0
>005C1598    je          005C159E
 005C159A    mov         byte ptr [ebp-5],1
 005C159E    mov         al,byte ptr [ebp-5]
 005C15A1    mov         esp,ebp
 005C15A3    pop         ebp
 005C15A4    ret
end;*}

//005C15A8
{*procedure sub_005C15A8(?:TCanvas; ?:Longint; ?:?; ?:?);
begin
 005C15A8    push        ebp
 005C15A9    mov         ebp,esp
 005C15AB    add         esp,0FFFFFFF4
 005C15AE    mov         dword ptr [ebp-0C],ecx
 005C15B1    mov         dword ptr [ebp-8],edx
 005C15B4    mov         dword ptr [ebp-4],eax
 005C15B7    mov         eax,dword ptr [ebp-4]
 005C15BA    mov         edx,dword ptr [eax]
 005C15BC    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C15BF    mov         dl,byte ptr ds:[5C1644];0xB gvar_005C1644
 005C15C5    mov         eax,dword ptr [ebp-4]
 005C15C8    call        005C1AEC
 005C15CD    mov         eax,dword ptr [ebp-4]
 005C15D0    call        005C156C
 005C15D5    cmp         al,1
>005C15D7    jne         005C15E8
 005C15D9    mov         edx,dword ptr [ebp+8]
 005C15DC    mov         eax,dword ptr [ebp-4]
 005C15DF    call        005C1754
 005C15E4    inc         eax
 005C15E5    add         dword ptr [ebp-8],eax
 005C15E8    push        0
 005C15EA    mov         eax,dword ptr [ebp+8]
 005C15ED    call        @LStrLen
 005C15F2    push        eax
 005C15F3    mov         eax,dword ptr [ebp+8]
 005C15F6    call        @LStrToPChar
 005C15FB    push        eax
 005C15FC    push        0
 005C15FE    mov         eax,dword ptr [ebp-4]
 005C1601    mov         eax,dword ptr [eax+54];TCanvas.FTextFlags:Longint
 005C1604    push        eax
 005C1605    mov         eax,dword ptr [ebp-0C]
 005C1608    push        eax
 005C1609    mov         eax,dword ptr [ebp-8]
 005C160C    push        eax
 005C160D    mov         eax,dword ptr [ebp-4]
 005C1610    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1613    push        eax
 005C1614    call        GDI32.ExtTextOutA
 005C1619    mov         edx,dword ptr [ebp+8]
 005C161C    mov         eax,dword ptr [ebp-4]
 005C161F    call        005C1754
 005C1624    mov         edx,eax
 005C1626    add         edx,dword ptr [ebp-8]
 005C1629    mov         ecx,dword ptr [ebp-0C]
 005C162C    mov         eax,dword ptr [ebp-4]
 005C162F    call        005C12F0
 005C1634    mov         eax,dword ptr [ebp-4]
 005C1637    mov         edx,dword ptr [eax]
 005C1639    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C163C    mov         esp,ebp
 005C163E    pop         ebp
 005C163F    ret         4
end;*}

//005C1648
{*procedure sub_005C1648(?:TCanvas; ?:TRect; ?:TRect; ?:?; ?:?);
begin
 005C1648    push        ebp
 005C1649    mov         ebp,esp
 005C164B    add         esp,0FFFFFFE4
 005C164E    push        esi
 005C164F    push        edi
 005C1650    mov         esi,edx
 005C1652    lea         edi,[ebp-1C]
 005C1655    movs        dword ptr [edi],dword ptr [esi]
 005C1656    movs        dword ptr [edi],dword ptr [esi]
 005C1657    movs        dword ptr [edi],dword ptr [esi]
 005C1658    movs        dword ptr [edi],dword ptr [esi]
 005C1659    mov         dword ptr [ebp-8],ecx
 005C165C    mov         dword ptr [ebp-4],eax
 005C165F    mov         eax,dword ptr [ebp-4]
 005C1662    mov         edx,dword ptr [eax]
 005C1664    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C1667    mov         dl,byte ptr ds:[5C16F8];0xB gvar_005C16F8
 005C166D    mov         eax,dword ptr [ebp-4]
 005C1670    call        005C1AEC
 005C1675    mov         eax,dword ptr [ebp-4]
 005C1678    mov         eax,dword ptr [eax+54];TCanvas.FTextFlags:Longint
 005C167B    or          eax,4
 005C167E    mov         dword ptr [ebp-0C],eax
 005C1681    mov         eax,dword ptr [ebp-4]
 005C1684    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1687    call        TBrush.GetStyle
 005C168C    cmp         al,1
>005C168E    je          005C1694
 005C1690    or          dword ptr [ebp-0C],2
 005C1694    mov         eax,dword ptr [ebp-4]
 005C1697    test        byte ptr [eax+54],80;TCanvas.FTextFlags:Longint
>005C169B    je          005C16B8
 005C169D    mov         eax,dword ptr [ebp-4]
 005C16A0    call        005C156C
 005C16A5    cmp         al,1
>005C16A7    jne         005C16B8
 005C16A9    mov         edx,dword ptr [ebp+8]
 005C16AC    mov         eax,dword ptr [ebp-4]
 005C16AF    call        005C1754
 005C16B4    inc         eax
 005C16B5    add         dword ptr [ebp-8],eax
 005C16B8    push        0
 005C16BA    mov         eax,dword ptr [ebp+8]
 005C16BD    call        @LStrLen
 005C16C2    push        eax
 005C16C3    mov         eax,dword ptr [ebp+8]
 005C16C6    call        @LStrToPChar
 005C16CB    push        eax
 005C16CC    lea         eax,[ebp-1C]
 005C16CF    push        eax
 005C16D0    mov         eax,dword ptr [ebp-0C]
 005C16D3    push        eax
 005C16D4    mov         eax,dword ptr [ebp+0C]
 005C16D7    push        eax
 005C16D8    mov         eax,dword ptr [ebp-8]
 005C16DB    push        eax
 005C16DC    mov         eax,dword ptr [ebp-4]
 005C16DF    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C16E2    push        eax
 005C16E3    call        GDI32.ExtTextOutA
 005C16E8    mov         eax,dword ptr [ebp-4]
 005C16EB    mov         edx,dword ptr [eax]
 005C16ED    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C16F0    pop         edi
 005C16F1    pop         esi
 005C16F2    mov         esp,ebp
 005C16F4    pop         ebp
 005C16F5    ret         8
end;*}

//005C16FC
{*procedure sub_005C16FC(?:TCanvas; ?:AnsiString; ?:?);
begin
 005C16FC    push        ebp
 005C16FD    mov         ebp,esp
 005C16FF    add         esp,0FFFFFFF4
 005C1702    mov         dword ptr [ebp-0C],ecx
 005C1705    mov         dword ptr [ebp-8],edx
 005C1708    mov         dword ptr [ebp-4],eax
 005C170B    mov         dl,byte ptr ds:[5C1750];0x3 gvar_005C1750
 005C1711    mov         eax,dword ptr [ebp-4]
 005C1714    call        005C1AEC
 005C1719    mov         eax,dword ptr [ebp-0C]
 005C171C    xor         edx,edx
 005C171E    mov         dword ptr [eax],edx
 005C1720    mov         eax,dword ptr [ebp-0C]
 005C1723    xor         edx,edx
 005C1725    mov         dword ptr [eax+4],edx
 005C1728    mov         eax,dword ptr [ebp-0C]
 005C172B    push        eax
 005C172C    mov         eax,dword ptr [ebp-8]
 005C172F    call        @LStrLen
 005C1734    push        eax
 005C1735    mov         eax,dword ptr [ebp-8]
 005C1738    call        @LStrToPChar
 005C173D    push        eax
 005C173E    mov         eax,dword ptr [ebp-4]
 005C1741    mov         eax,dword ptr [eax+4]
 005C1744    push        eax
 005C1745    call        GDI32.GetTextExtentPoint32A
 005C174A    mov         esp,ebp
 005C174C    pop         ebp
 005C174D    ret
end;*}

//005C1754
{*function sub_005C1754(?:TCanvas; ?:AnsiString):?;
begin
 005C1754    push        ebp
 005C1755    mov         ebp,esp
 005C1757    add         esp,0FFFFFFEC
 005C175A    mov         dword ptr [ebp-8],edx
 005C175D    mov         dword ptr [ebp-4],eax
 005C1760    lea         ecx,[ebp-14]
 005C1763    mov         edx,dword ptr [ebp-8]
 005C1766    mov         eax,dword ptr [ebp-4]
 005C1769    call        005C16FC
 005C176E    mov         eax,dword ptr [ebp-14]
 005C1771    mov         dword ptr [ebp-0C],eax
 005C1774    mov         eax,dword ptr [ebp-0C]
 005C1777    mov         esp,ebp
 005C1779    pop         ebp
 005C177A    ret
end;*}

//005C177C
{*function sub_005C177C(?:TCanvas; ?:AnsiString):?;
begin
 005C177C    push        ebp
 005C177D    mov         ebp,esp
 005C177F    add         esp,0FFFFFFEC
 005C1782    mov         dword ptr [ebp-8],edx
 005C1785    mov         dword ptr [ebp-4],eax
 005C1788    lea         ecx,[ebp-14]
 005C178B    mov         edx,dword ptr [ebp-8]
 005C178E    mov         eax,dword ptr [ebp-4]
 005C1791    call        005C16FC
 005C1796    mov         eax,dword ptr [ebp-10]
 005C1799    mov         dword ptr [ebp-0C],eax
 005C179C    mov         eax,dword ptr [ebp-0C]
 005C179F    mov         esp,ebp
 005C17A1    pop         ebp
 005C17A2    ret
end;*}

//005C17A4
function TCanvas.TryLock:Boolean;
begin
{*
 005C17A4    push        ebp
 005C17A5    mov         ebp,esp
 005C17A7    add         esp,0FFFFFFF8
 005C17AA    mov         dword ptr [ebp-4],eax
 005C17AD    push        6ECD50;CounterLock:TRTLCriticalSection
 005C17B2    call        KERNEL32.EnterCriticalSection
 005C17B7    xor         eax,eax
 005C17B9    push        ebp
 005C17BA    push        5C17F6
 005C17BF    push        dword ptr fs:[eax]
 005C17C2    mov         dword ptr fs:[eax],esp
 005C17C5    mov         eax,dword ptr [ebp-4]
 005C17C8    cmp         dword ptr [eax+50],0
 005C17CC    sete        byte ptr [ebp-5]
 005C17D0    cmp         byte ptr [ebp-5],0
>005C17D4    je          005C17DE
 005C17D6    mov         eax,dword ptr [ebp-4]
 005C17D9    call        TCanvas.Lock
 005C17DE    xor         eax,eax
 005C17E0    pop         edx
 005C17E1    pop         ecx
 005C17E2    pop         ecx
 005C17E3    mov         dword ptr fs:[eax],edx
 005C17E6    push        5C17FD
 005C17EB    push        6ECD50;CounterLock:TRTLCriticalSection
 005C17F0    call        KERNEL32.LeaveCriticalSection
 005C17F5    ret
>005C17F6    jmp         @HandleFinally
>005C17FB    jmp         005C17EB
 005C17FD    mov         al,byte ptr [ebp-5]
 005C1800    pop         ecx
 005C1801    pop         ecx
 005C1802    pop         ebp
 005C1803    ret
*}
end;

//005C1804
procedure TCanvas.Unlock;
begin
{*
 005C1804    push        ebp
 005C1805    mov         ebp,esp
 005C1807    push        ecx
 005C1808    mov         dword ptr [ebp-4],eax
 005C180B    mov         eax,dword ptr [ebp-4]
 005C180E    add         eax,38
 005C1811    push        eax
 005C1812    call        KERNEL32.LeaveCriticalSection
 005C1817    push        6ECD50;CounterLock:TRTLCriticalSection
 005C181C    call        KERNEL32.EnterCriticalSection
 005C1821    mov         eax,dword ptr [ebp-4]
 005C1824    dec         dword ptr [eax+50]
 005C1827    push        6ECD50;CounterLock:TRTLCriticalSection
 005C182C    call        KERNEL32.LeaveCriticalSection
 005C1831    pop         ecx
 005C1832    pop         ebp
 005C1833    ret
*}
end;

//005C1834
procedure TCanvas.SetFont(Value:TFont);
begin
{*
 005C1834    push        ebp
 005C1835    mov         ebp,esp
 005C1837    add         esp,0FFFFFFF8
 005C183A    mov         dword ptr [ebp-8],edx
 005C183D    mov         dword ptr [ebp-4],eax
 005C1840    mov         edx,dword ptr [ebp-8]
 005C1843    mov         eax,dword ptr [ebp-4]
 005C1846    mov         eax,dword ptr [eax+0C]
 005C1849    mov         ecx,dword ptr [eax]
 005C184B    call        dword ptr [ecx+8]
 005C184E    pop         ecx
 005C184F    pop         ecx
 005C1850    pop         ebp
 005C1851    ret
*}
end;

//005C1854
procedure TCanvas.SetPen(Value:TPen);
begin
{*
 005C1854    push        ebp
 005C1855    mov         ebp,esp
 005C1857    add         esp,0FFFFFFF8
 005C185A    mov         dword ptr [ebp-8],edx
 005C185D    mov         dword ptr [ebp-4],eax
 005C1860    mov         edx,dword ptr [ebp-8]
 005C1863    mov         eax,dword ptr [ebp-4]
 005C1866    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005C1869    mov         ecx,dword ptr [eax]
 005C186B    call        dword ptr [ecx+8];TPen.Assign
 005C186E    pop         ecx
 005C186F    pop         ecx
 005C1870    pop         ebp
 005C1871    ret
*}
end;

//005C1874
procedure TCanvas.SetBrush(Value:TBrush);
begin
{*
 005C1874    push        ebp
 005C1875    mov         ebp,esp
 005C1877    add         esp,0FFFFFFF8
 005C187A    mov         dword ptr [ebp-8],edx
 005C187D    mov         dword ptr [ebp-4],eax
 005C1880    mov         edx,dword ptr [ebp-8]
 005C1883    mov         eax,dword ptr [ebp-4]
 005C1886    mov         eax,dword ptr [eax+14]
 005C1889    mov         ecx,dword ptr [eax]
 005C188B    call        dword ptr [ecx+8]
 005C188E    pop         ecx
 005C188F    pop         ecx
 005C1890    pop         ebp
 005C1891    ret
*}
end;

//005C1894
{*procedure sub_005C1894(?:?; ?:?);
begin
 005C1894    push        ebp
 005C1895    mov         ebp,esp
 005C1897    add         esp,0FFFFFFF8
 005C189A    mov         dword ptr [ebp-8],edx
 005C189D    mov         dword ptr [ebp-4],eax
 005C18A0    mov         dl,byte ptr ds:[5C18C4];0x1 gvar_005C18C4
 005C18A6    mov         eax,dword ptr [ebp-4]
 005C18A9    call        005C1AEC
 005C18AE    mov         eax,dword ptr [ebp-8]
 005C18B1    push        eax
 005C18B2    mov         eax,dword ptr [ebp-4]
 005C18B5    mov         eax,dword ptr [eax+4]
 005C18B8    push        eax
 005C18B9    call        GDI32.GetCurrentPositionEx
 005C18BE    pop         ecx
 005C18BF    pop         ecx
 005C18C0    pop         ebp
 005C18C1    ret
end;*}

//005C18C8
{*procedure sub_005C18C8(?:?; ?:?);
begin
 005C18C8    push        ebp
 005C18C9    mov         ebp,esp
 005C18CB    add         esp,0FFFFFFF4
 005C18CE    push        esi
 005C18CF    push        edi
 005C18D0    mov         esi,edx
 005C18D2    lea         edi,[ebp-0C]
 005C18D5    movs        dword ptr [edi],dword ptr [esi]
 005C18D6    movs        dword ptr [edi],dword ptr [esi]
 005C18D7    mov         dword ptr [ebp-4],eax
 005C18DA    mov         ecx,dword ptr [ebp-8]
 005C18DD    mov         edx,dword ptr [ebp-0C]
 005C18E0    mov         eax,dword ptr [ebp-4]
 005C18E3    call        005C12F0
 005C18E8    pop         edi
 005C18E9    pop         esi
 005C18EA    mov         esp,ebp
 005C18EC    pop         ebp
 005C18ED    ret
end;*}

//005C18F0
{*function sub_005C18F0(?:TCanvas; ?:?; ?:?):?;
begin
 005C18F0    push        ebp
 005C18F1    mov         ebp,esp
 005C18F3    add         esp,0FFFFFFF0
 005C18F6    mov         dword ptr [ebp-0C],ecx
 005C18F9    mov         dword ptr [ebp-8],edx
 005C18FC    mov         dword ptr [ebp-4],eax
 005C18FF    mov         dl,byte ptr ds:[5C192C];0x1 gvar_005C192C
 005C1905    mov         eax,dword ptr [ebp-4]
 005C1908    call        005C1AEC
 005C190D    mov         eax,dword ptr [ebp-0C]
 005C1910    push        eax
 005C1911    mov         eax,dword ptr [ebp-8]
 005C1914    push        eax
 005C1915    mov         eax,dword ptr [ebp-4]
 005C1918    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C191B    push        eax
 005C191C    call        GDI32.GetPixel
 005C1921    mov         dword ptr [ebp-10],eax
 005C1924    mov         eax,dword ptr [ebp-10]
 005C1927    mov         esp,ebp
 005C1929    pop         ebp
 005C192A    ret
end;*}

//005C1930
{*procedure sub_005C1930(?:TCanvas; ?:?; ?:?; ?:?);
begin
 005C1930    push        ebp
 005C1931    mov         ebp,esp
 005C1933    add         esp,0FFFFFFF4
 005C1936    mov         dword ptr [ebp-0C],ecx
 005C1939    mov         dword ptr [ebp-8],edx
 005C193C    mov         dword ptr [ebp-4],eax
 005C193F    mov         eax,dword ptr [ebp-4]
 005C1942    mov         edx,dword ptr [eax]
 005C1944    call        dword ptr [edx+10];TCanvas.sub_005C1B80
 005C1947    mov         dl,byte ptr ds:[5C1980];0x5 gvar_005C1980
 005C194D    mov         eax,dword ptr [ebp-4]
 005C1950    call        005C1AEC
 005C1955    mov         eax,dword ptr [ebp+8]
 005C1958    call        ColorToRGB
 005C195D    push        eax
 005C195E    mov         eax,dword ptr [ebp-0C]
 005C1961    push        eax
 005C1962    mov         eax,dword ptr [ebp-8]
 005C1965    push        eax
 005C1966    mov         eax,dword ptr [ebp-4]
 005C1969    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C196C    push        eax
 005C196D    call        GDI32.SetPixel
 005C1972    mov         eax,dword ptr [ebp-4]
 005C1975    mov         edx,dword ptr [eax]
 005C1977    call        dword ptr [edx+0C];TCanvas.sub_005C1BA4
 005C197A    mov         esp,ebp
 005C197C    pop         ebp
 005C197D    ret         4
end;*}

//005C1984
{*procedure sub_005C1984(?:TCanvas; ?:?);
begin
 005C1984    push        ebp
 005C1985    mov         ebp,esp
 005C1987    add         esp,0FFFFFFF8
 005C198A    mov         dword ptr [ebp-8],edx
 005C198D    mov         dword ptr [ebp-4],eax
 005C1990    mov         dl,byte ptr ds:[5C19B4];0x1 gvar_005C19B4
 005C1996    mov         eax,dword ptr [ebp-4]
 005C1999    call        005C1AEC
 005C199E    mov         eax,dword ptr [ebp-8]
 005C19A1    push        eax
 005C19A2    mov         eax,dword ptr [ebp-4]
 005C19A5    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C19A8    push        eax
 005C19A9    call        GDI32.GetClipBox
 005C19AE    pop         ecx
 005C19AF    pop         ecx
 005C19B0    pop         ebp
 005C19B1    ret
end;*}

//005C19B8
function TCanvas.GetHandle:HDC;
begin
{*
 005C19B8    push        ebp
 005C19B9    mov         ebp,esp
 005C19BB    add         esp,0FFFFFFF8
 005C19BE    mov         dword ptr [ebp-4],eax
 005C19C1    mov         eax,dword ptr [ebp-4]
 005C19C4    mov         edx,dword ptr [eax]
 005C19C6    call        dword ptr [edx+10]
 005C19C9    mov         dl,byte ptr ds:[5C19E8]
 005C19CF    mov         eax,dword ptr [ebp-4]
 005C19D2    call        005C1AEC
 005C19D7    mov         eax,dword ptr [ebp-4]
 005C19DA    mov         eax,dword ptr [eax+4]
 005C19DD    mov         dword ptr [ebp-8],eax
 005C19E0    mov         eax,dword ptr [ebp-8]
 005C19E3    pop         ecx
 005C19E4    pop         ecx
 005C19E5    pop         ebp
 005C19E6    ret
*}
end;

//005C19EC
procedure sub_005C19EC(?:Pointer);
begin
{*
 005C19EC    push        ebp
 005C19ED    mov         ebp,esp
 005C19EF    push        ecx
 005C19F0    mov         dword ptr [ebp-4],eax
 005C19F3    mov         eax,dword ptr [ebp-4]
 005C19F6    cmp         dword ptr [eax+4],0
>005C19FA    je          005C1A5C
 005C19FC    mov         al,[005C1A60];0xE gvar_005C1A60
 005C1A01    mov         edx,dword ptr [ebp-4]
 005C1A04    not         eax
 005C1A06    and         al,byte ptr [edx+8]
 005C1A09    mov         edx,dword ptr [ebp-4]
 005C1A0C    mov         dl,byte ptr [edx+8]
 005C1A0F    cmp         dl,al
>005C1A11    je          005C1A5C
 005C1A13    mov         eax,[006ECD28];0x0 gvar_006ECD28
 005C1A18    push        eax
 005C1A19    mov         eax,dword ptr [ebp-4]
 005C1A1C    mov         eax,dword ptr [eax+4]
 005C1A1F    push        eax
 005C1A20    call        GDI32.SelectObject
 005C1A25    mov         eax,[006ECD2C];0x0 gvar_006ECD2C
 005C1A2A    push        eax
 005C1A2B    mov         eax,dword ptr [ebp-4]
 005C1A2E    mov         eax,dword ptr [eax+4]
 005C1A31    push        eax
 005C1A32    call        GDI32.SelectObject
 005C1A37    mov         eax,[006ECD30];0x0 gvar_006ECD30
 005C1A3C    push        eax
 005C1A3D    mov         eax,dword ptr [ebp-4]
 005C1A40    mov         eax,dword ptr [eax+4]
 005C1A43    push        eax
 005C1A44    call        GDI32.SelectObject
 005C1A49    mov         al,[005C1A60];0xE gvar_005C1A60
 005C1A4E    mov         edx,dword ptr [ebp-4]
 005C1A51    not         eax
 005C1A53    and         al,byte ptr [edx+8]
 005C1A56    mov         edx,dword ptr [ebp-4]
 005C1A59    mov         byte ptr [edx+8],al
 005C1A5C    pop         ecx
 005C1A5D    pop         ebp
 005C1A5E    ret
*}
end;

//005C1A64
procedure sub_005C1A64;
begin
{*
 005C1A64    push        ebp
 005C1A65    mov         ebp,esp
 005C1A67    push        ecx
 005C1A68    mov         dword ptr [ebp-4],eax
 005C1A6B    pop         ecx
 005C1A6C    pop         ebp
 005C1A6D    ret
*}
end;

//005C1A70
procedure TCanvas.SetHandle(Value:HDC);
begin
{*
 005C1A70    push        ebp
 005C1A71    mov         ebp,esp
 005C1A73    add         esp,0FFFFFFF0
 005C1A76    mov         dword ptr [ebp-8],edx
 005C1A79    mov         dword ptr [ebp-4],eax
 005C1A7C    mov         eax,dword ptr [ebp-4]
 005C1A7F    mov         eax,dword ptr [eax+4]
 005C1A82    cmp         eax,dword ptr [ebp-8]
>005C1A85    je          005C1AE5
 005C1A87    mov         eax,dword ptr [ebp-4]
 005C1A8A    cmp         dword ptr [eax+4],0
>005C1A8E    je          005C1AC1
 005C1A90    mov         eax,dword ptr [ebp-4]
 005C1A93    call        005C19EC
 005C1A98    lea         edx,[ebp-10]
 005C1A9B    mov         eax,dword ptr [ebp-4]
 005C1A9E    call        005C1894
 005C1AA3    mov         eax,dword ptr [ebp-4]
 005C1AA6    mov         edx,dword ptr [ebp-10]
 005C1AA9    mov         dword ptr [eax+18],edx
 005C1AAC    mov         edx,dword ptr [ebp-0C]
 005C1AAF    mov         dword ptr [eax+1C],edx
 005C1AB2    mov         eax,dword ptr [ebp-4]
 005C1AB5    xor         edx,edx
 005C1AB7    mov         dword ptr [eax+4],edx
 005C1ABA    mov         eax,dword ptr [ebp-4]
 005C1ABD    and         byte ptr [eax+8],0FE
 005C1AC1    cmp         dword ptr [ebp-8],0
>005C1AC5    je          005C1AE5
 005C1AC7    mov         eax,dword ptr [ebp-4]
 005C1ACA    or          byte ptr [eax+8],1
 005C1ACE    mov         eax,dword ptr [ebp-8]
 005C1AD1    mov         edx,dword ptr [ebp-4]
 005C1AD4    mov         dword ptr [edx+4],eax
 005C1AD7    mov         eax,dword ptr [ebp-4]
 005C1ADA    lea         edx,[eax+18]
 005C1ADD    mov         eax,dword ptr [ebp-4]
 005C1AE0    call        005C18C8
 005C1AE5    mov         esp,ebp
 005C1AE7    pop         ebp
 005C1AE8    ret
*}
end;

//005C1AEC
{*procedure sub_005C1AEC(?:TCanvas; ?:?);
begin
 005C1AEC    push        ebp
 005C1AED    mov         ebp,esp
 005C1AEF    add         esp,0FFFFFFF8
 005C1AF2    mov         byte ptr [ebp-5],dl
 005C1AF5    mov         dword ptr [ebp-4],eax
 005C1AF8    mov         eax,dword ptr [ebp-4]
 005C1AFB    mov         al,byte ptr [eax+8];TCanvas.State:TCanvasState
 005C1AFE    not         eax
 005C1B00    and         al,byte ptr [ebp-5]
 005C1B03    mov         byte ptr [ebp-6],al
 005C1B06    mov         al,[005C1B7C];0x0 gvar_005C1B7C
 005C1B0B    cmp         al,byte ptr [ebp-6]
>005C1B0E    je          005C1B77
 005C1B10    test        byte ptr [ebp-6],1
>005C1B14    je          005C1B3E
 005C1B16    mov         eax,dword ptr [ebp-4]
 005C1B19    mov         edx,dword ptr [eax]
 005C1B1B    call        dword ptr [edx+14];TCanvas.sub_005C1A64
 005C1B1E    mov         eax,dword ptr [ebp-4]
 005C1B21    cmp         dword ptr [eax+4],0;TCanvas.FHandle:HDC
>005C1B25    jne         005C1B3E
 005C1B27    mov         ecx,dword ptr ds:[6E9E10];^gvar_0063CA30
 005C1B2D    mov         dl,1
 005C1B2F    mov         eax,[00642244];EInvalidOperation
 005C1B34    call        Exception.Create;EInvalidOperation.Create
 005C1B39    call        @RaiseExcept
 005C1B3E    test        byte ptr [ebp-6],2
>005C1B42    je          005C1B4C
 005C1B44    mov         eax,dword ptr [ebp-4]
 005C1B47    call        005C1BC8
 005C1B4C    test        byte ptr [ebp-6],4
>005C1B50    je          005C1B5A
 005C1B52    mov         eax,dword ptr [ebp-4]
 005C1B55    call        005C1C08
 005C1B5A    test        byte ptr [ebp-6],8
>005C1B5E    je          005C1B68
 005C1B60    mov         eax,dword ptr [ebp-4]
 005C1B63    call        005C1C4C
 005C1B68    mov         al,byte ptr [ebp-6]
 005C1B6B    mov         edx,dword ptr [ebp-4]
 005C1B6E    or          al,byte ptr [edx+8];TCanvas.State:TCanvasState
 005C1B71    mov         edx,dword ptr [ebp-4]
 005C1B74    mov         byte ptr [edx+8],al;TCanvas.State:TCanvasState
 005C1B77    pop         ecx
 005C1B78    pop         ecx
 005C1B79    pop         ebp
 005C1B7A    ret
end;*}

//005C1B80
procedure sub_005C1B80;
begin
{*
 005C1B80    push        ebp
 005C1B81    mov         ebp,esp
 005C1B83    push        ecx
 005C1B84    push        ebx
 005C1B85    mov         dword ptr [ebp-4],eax
 005C1B88    mov         eax,dword ptr [ebp-4]
 005C1B8B    cmp         word ptr [eax+32],0;TCanvas.?f32:word
>005C1B90    je          005C1B9E
 005C1B92    mov         ebx,dword ptr [ebp-4]
 005C1B95    mov         edx,dword ptr [ebp-4]
 005C1B98    mov         eax,dword ptr [ebx+34];TCanvas.?f34:dword
 005C1B9B    call        dword ptr [ebx+30];TCanvas.FOnChanging
 005C1B9E    pop         ebx
 005C1B9F    pop         ecx
 005C1BA0    pop         ebp
 005C1BA1    ret
*}
end;

//005C1BA4
procedure sub_005C1BA4;
begin
{*
 005C1BA4    push        ebp
 005C1BA5    mov         ebp,esp
 005C1BA7    push        ecx
 005C1BA8    push        ebx
 005C1BA9    mov         dword ptr [ebp-4],eax
 005C1BAC    mov         eax,dword ptr [ebp-4]
 005C1BAF    cmp         word ptr [eax+2A],0;TCanvas.?f2A:word
>005C1BB4    je          005C1BC2
 005C1BB6    mov         ebx,dword ptr [ebp-4]
 005C1BB9    mov         edx,dword ptr [ebp-4]
 005C1BBC    mov         eax,dword ptr [ebx+2C];TCanvas.?f2C:dword
 005C1BBF    call        dword ptr [ebx+28];TCanvas.FOnChange
 005C1BC2    pop         ebx
 005C1BC3    pop         ecx
 005C1BC4    pop         ebp
 005C1BC5    ret
*}
end;

//005C1BC8
procedure sub_005C1BC8(?:TCanvas);
begin
{*
 005C1BC8    push        ebp
 005C1BC9    mov         ebp,esp
 005C1BCB    push        ecx
 005C1BCC    mov         dword ptr [ebp-4],eax
 005C1BCF    mov         eax,dword ptr [ebp-4]
 005C1BD2    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005C1BD5    call        TFont.GetHandle
 005C1BDA    push        eax
 005C1BDB    mov         eax,dword ptr [ebp-4]
 005C1BDE    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1BE1    push        eax
 005C1BE2    call        GDI32.SelectObject
 005C1BE7    mov         eax,dword ptr [ebp-4]
 005C1BEA    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005C1BED    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 005C1BF0    call        ColorToRGB
 005C1BF5    push        eax
 005C1BF6    mov         eax,dword ptr [ebp-4]
 005C1BF9    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1BFC    push        eax
 005C1BFD    call        GDI32.SetTextColor
 005C1C02    pop         ecx
 005C1C03    pop         ebp
 005C1C04    ret
*}
end;

//005C1C08
procedure sub_005C1C08(?:TCanvas);
begin
{*
 005C1C08    push        ebp
 005C1C09    mov         ebp,esp
 005C1C0B    push        ecx
 005C1C0C    mov         dword ptr [ebp-4],eax
 005C1C0F    mov         eax,dword ptr [ebp-4]
 005C1C12    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005C1C15    call        005C05F4
 005C1C1A    push        eax
 005C1C1B    mov         eax,dword ptr [ebp-4]
 005C1C1E    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1C21    push        eax
 005C1C22    call        GDI32.SelectObject
 005C1C27    mov         eax,dword ptr [ebp-4]
 005C1C2A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005C1C2D    movzx       eax,byte ptr [eax+18];TPen...Mode:TPenMode
 005C1C31    movzx       eax,word ptr [eax*2+6E3F50]
 005C1C39    push        eax
 005C1C3A    mov         eax,dword ptr [ebp-4]
 005C1C3D    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1C40    push        eax
 005C1C41    call        GDI32.SetROP2
 005C1C46    pop         ecx
 005C1C47    pop         ebp
 005C1C48    ret
*}
end;

//005C1C4C
procedure sub_005C1C4C(?:TCanvas);
begin
{*
 005C1C4C    push        ebp
 005C1C4D    mov         ebp,esp
 005C1C4F    push        ecx
 005C1C50    mov         dword ptr [ebp-4],eax
 005C1C53    mov         eax,dword ptr [ebp-4]
 005C1C56    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1C59    call        TBrush.GetHandle
 005C1C5E    push        eax
 005C1C5F    call        GDI32.UnrealizeObject
 005C1C64    mov         eax,dword ptr [ebp-4]
 005C1C67    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1C6A    call        TBrush.GetHandle
 005C1C6F    push        eax
 005C1C70    mov         eax,dword ptr [ebp-4]
 005C1C73    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1C76    push        eax
 005C1C77    call        GDI32.SelectObject
 005C1C7C    mov         eax,dword ptr [ebp-4]
 005C1C7F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1C82    call        TBrush.GetStyle
 005C1C87    test        al,al
>005C1C89    jne         005C1CB9
 005C1C8B    mov         eax,dword ptr [ebp-4]
 005C1C8E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1C91    call        TBrush.GetColor
 005C1C96    call        ColorToRGB
 005C1C9B    push        eax
 005C1C9C    mov         eax,dword ptr [ebp-4]
 005C1C9F    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1CA2    push        eax
 005C1CA3    call        GDI32.SetBkColor
 005C1CA8    push        2
 005C1CAA    mov         eax,dword ptr [ebp-4]
 005C1CAD    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1CB0    push        eax
 005C1CB1    call        GDI32.SetBkMode
 005C1CB6    pop         ecx
 005C1CB7    pop         ebp
 005C1CB8    ret
 005C1CB9    mov         eax,dword ptr [ebp-4]
 005C1CBC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C1CBF    call        TBrush.GetColor
 005C1CC4    call        ColorToRGB
 005C1CC9    not         eax
 005C1CCB    push        eax
 005C1CCC    mov         eax,dword ptr [ebp-4]
 005C1CCF    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1CD2    push        eax
 005C1CD3    call        GDI32.SetBkColor
 005C1CD8    push        1
 005C1CDA    mov         eax,dword ptr [ebp-4]
 005C1CDD    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C1CE0    push        eax
 005C1CE1    call        GDI32.SetBkMode
 005C1CE6    pop         ecx
 005C1CE7    pop         ebp
 005C1CE8    ret
*}
end;

//005C1D88
{*procedure sub_005C1D88(?:?);
begin
 005C1D88    push        ebp
 005C1D89    mov         ebp,esp
 005C1D8B    push        ecx
 005C1D8C    mov         dword ptr [ebp-4],eax
 005C1D8F    mov         ecx,dword ptr [ebp-4]
 005C1D92    mov         dl,1
 005C1D94    mov         eax,[005BE21C];EInvalidGraphicOperation
 005C1D99    call        Exception.Create;EInvalidGraphicOperation.Create
 005C1D9E    call        @RaiseExcept
 005C1DA3    pop         ecx
 005C1DA4    pop         ebp
 005C1DA5    ret
end;*}

//005C1DA8
procedure InvalidGraphic(Str:PResStringRec);
begin
{*
 005C1DA8    push        ebp
 005C1DA9    mov         ebp,esp
 005C1DAB    push        ecx
 005C1DAC    mov         dword ptr [ebp-4],eax
 005C1DAF    mov         ecx,dword ptr [ebp-4]
 005C1DB2    mov         dl,1
 005C1DB4    mov         eax,[005BE1C0];EInvalidGraphic
 005C1DB9    call        Exception.Create
 005C1DBE    call        @RaiseExcept
 005C1DC3    pop         ecx
 005C1DC4    pop         ebp
 005C1DC5    ret
*}
end;

//005C1DC8
procedure InvalidBitmap;
begin
{*
 005C1DC8    mov         eax,[006E9DE8]
 005C1DCD    call        InvalidGraphic
 005C1DD2    ret
*}
end;

//005C1DD4
procedure InvalidIcon;
begin
{*
 005C1DD4    mov         eax,[006E9DEC]
 005C1DD9    call        InvalidGraphic
 005C1DDE    ret
*}
end;

//005C1DE0
procedure InvalidMetafile;
begin
{*
 005C1DE0    mov         eax,[006E9DF0]
 005C1DE5    call        InvalidGraphic
 005C1DEA    ret
*}
end;

//005C1DEC
procedure OutOfResources;
begin
{*
 005C1DEC    push        ebp
 005C1DED    mov         ebp,esp
 005C1DEF    push        0
 005C1DF1    xor         eax,eax
 005C1DF3    push        ebp
 005C1DF4    push        5C1E36
 005C1DF9    push        dword ptr fs:[eax]
 005C1DFC    mov         dword ptr fs:[eax],esp
 005C1DFF    lea         edx,[ebp-4]
 005C1E02    mov         eax,[006E9E0C];^gvar_0063CA28
 005C1E07    call        LoadResString
 005C1E0C    mov         ecx,dword ptr [ebp-4]
 005C1E0F    mov         dl,1
 005C1E11    mov         eax,[006421E8];EOutOfResources
 005C1E16    call        Exception.Create
 005C1E1B    call        @RaiseExcept
 005C1E20    xor         eax,eax
 005C1E22    pop         edx
 005C1E23    pop         ecx
 005C1E24    pop         ecx
 005C1E25    mov         dword ptr fs:[eax],edx
 005C1E28    push        5C1E3D
 005C1E2D    lea         eax,[ebp-4]
 005C1E30    call        @LStrClr
 005C1E35    ret
>005C1E36    jmp         @HandleFinally
>005C1E3B    jmp         005C1E2D
 005C1E3D    pop         ecx
 005C1E3E    pop         ebp
 005C1E3F    ret
*}
end;

//005C1E40
procedure sub_005C1E40;
begin
{*
 005C1E40    push        ebp
 005C1E41    mov         ebp,esp
 005C1E43    add         esp,0FFFFFEF8
 005C1E49    xor         eax,eax
 005C1E4B    mov         dword ptr [ebp-108],eax
 005C1E51    xor         eax,eax
 005C1E53    push        ebp
 005C1E54    push        5C1EE1
 005C1E59    push        dword ptr fs:[eax]
 005C1E5C    mov         dword ptr fs:[eax],esp
 005C1E5F    call        KERNEL32.GetLastError
 005C1E64    mov         dword ptr [ebp-4],eax
 005C1E67    cmp         dword ptr [ebp-4],0
>005C1E6B    je          005C1EC3
 005C1E6D    push        0
 005C1E6F    push        100
 005C1E74    lea         eax,[ebp-104]
 005C1E7A    push        eax
 005C1E7B    push        400
 005C1E80    mov         eax,dword ptr [ebp-4]
 005C1E83    push        eax
 005C1E84    push        0
 005C1E86    push        1000
 005C1E8B    call        KERNEL32.FormatMessageA
 005C1E90    test        eax,eax
>005C1E92    je          005C1EC3
 005C1E94    lea         eax,[ebp-108]
 005C1E9A    lea         edx,[ebp-104]
 005C1EA0    mov         ecx,100
 005C1EA5    call        @LStrFromArray
 005C1EAA    mov         ecx,dword ptr [ebp-108]
 005C1EB0    mov         dl,1
 005C1EB2    mov         eax,[006421E8];EOutOfResources
 005C1EB7    call        Exception.Create;EOutOfResources.Create
 005C1EBC    call        @RaiseExcept
>005C1EC1    jmp         005C1EC8
 005C1EC3    call        OutOfResources
 005C1EC8    xor         eax,eax
 005C1ECA    pop         edx
 005C1ECB    pop         ecx
 005C1ECC    pop         ecx
 005C1ECD    mov         dword ptr fs:[eax],edx
 005C1ED0    push        5C1EE8
 005C1ED5    lea         eax,[ebp-108]
 005C1EDB    call        @LStrClr
 005C1EE0    ret
>005C1EE1    jmp         @HandleFinally
>005C1EE6    jmp         005C1ED5
 005C1EE8    mov         esp,ebp
 005C1EEA    pop         ebp
 005C1EEB    ret
*}
end;

//005C1EEC
{*function sub_005C1EEC(?:HBITMAP):?;
begin
 005C1EEC    push        ebp
 005C1EED    mov         ebp,esp
 005C1EEF    add         esp,0FFFFFFF8
 005C1EF2    mov         dword ptr [ebp-4],eax
 005C1EF5    cmp         dword ptr [ebp-4],0
>005C1EF9    jne         005C1F00
 005C1EFB    call        005C1E40
 005C1F00    mov         eax,dword ptr [ebp-4]
 005C1F03    mov         dword ptr [ebp-8],eax
 005C1F06    mov         eax,dword ptr [ebp-8]
 005C1F09    pop         ecx
 005C1F0A    pop         ecx
 005C1F0B    pop         ebp
 005C1F0C    ret
end;*}

//005C1F10
{*function sub_005C1F10(?:?; ?:?; ?:?):?;
begin
 005C1F10    push        ebp
 005C1F11    mov         ebp,esp
 005C1F13    add         esp,0FFFFFFC0
 005C1F16    push        esi
 005C1F17    push        edi
 005C1F18    mov         esi,edx
 005C1F1A    lea         edi,[ebp-0C]
 005C1F1D    movs        dword ptr [edi],dword ptr [esi]
 005C1F1E    movs        dword ptr [edi],dword ptr [esi]
 005C1F1F    mov         byte ptr [ebp-0D],cl
 005C1F22    mov         dword ptr [ebp-4],eax
 005C1F25    push        0
 005C1F27    call        GDI32.CreateCompatibleDC
 005C1F2C    mov         dword ptr [ebp-1C],eax
 005C1F2F    push        0
 005C1F31    call        GDI32.CreateCompatibleDC
 005C1F36    mov         dword ptr [ebp-20],eax
 005C1F39    xor         eax,eax
 005C1F3B    push        ebp
 005C1F3C    push        5C206C
 005C1F41    push        dword ptr fs:[eax]
 005C1F44    mov         dword ptr fs:[eax],esp
 005C1F47    lea         eax,[ebp-40]
 005C1F4A    push        eax
 005C1F4B    push        18
 005C1F4D    mov         eax,dword ptr [ebp-4]
 005C1F50    push        eax
 005C1F51    call        GDI32.GetObjectA
 005C1F56    cmp         byte ptr [ebp-0D],0
>005C1F5A    je          005C1F74
 005C1F5C    push        0
 005C1F5E    push        1
 005C1F60    push        1
 005C1F62    mov         eax,dword ptr [ebp-8]
 005C1F65    push        eax
 005C1F66    mov         eax,dword ptr [ebp-0C]
 005C1F69    push        eax
 005C1F6A    call        GDI32.CreateBitmap
 005C1F6F    mov         dword ptr [ebp-14],eax
>005C1F72    jmp         005C1FD6
 005C1F74    push        0
 005C1F76    call        USER32.GetDC
 005C1F7B    mov         dword ptr [ebp-18],eax
 005C1F7E    cmp         dword ptr [ebp-18],0
>005C1F82    jne         005C1F89
 005C1F84    call        005C1E40
 005C1F89    xor         eax,eax
 005C1F8B    push        ebp
 005C1F8C    push        5C1FCF
 005C1F91    push        dword ptr fs:[eax]
 005C1F94    mov         dword ptr fs:[eax],esp
 005C1F97    mov         eax,dword ptr [ebp-8]
 005C1F9A    push        eax
 005C1F9B    mov         eax,dword ptr [ebp-0C]
 005C1F9E    push        eax
 005C1F9F    mov         eax,dword ptr [ebp-18]
 005C1FA2    push        eax
 005C1FA3    call        GDI32.CreateCompatibleBitmap
 005C1FA8    mov         dword ptr [ebp-14],eax
 005C1FAB    cmp         dword ptr [ebp-14],0
>005C1FAF    jne         005C1FB6
 005C1FB1    call        005C1E40
 005C1FB6    xor         eax,eax
 005C1FB8    pop         edx
 005C1FB9    pop         ecx
 005C1FBA    pop         ecx
 005C1FBB    mov         dword ptr fs:[eax],edx
 005C1FBE    push        5C1FD6
 005C1FC3    mov         eax,dword ptr [ebp-18]
 005C1FC6    push        eax
 005C1FC7    push        0
 005C1FC9    call        USER32.ReleaseDC
 005C1FCE    ret
>005C1FCF    jmp         @HandleFinally
>005C1FD4    jmp         005C1FC3
 005C1FD6    cmp         dword ptr [ebp-14],0
>005C1FDA    je          005C204C
 005C1FDC    mov         eax,dword ptr [ebp-4]
 005C1FDF    push        eax
 005C1FE0    mov         eax,dword ptr [ebp-1C]
 005C1FE3    push        eax
 005C1FE4    call        GDI32.SelectObject
 005C1FE9    mov         dword ptr [ebp-24],eax
 005C1FEC    mov         eax,dword ptr [ebp-14]
 005C1FEF    push        eax
 005C1FF0    mov         eax,dword ptr [ebp-20]
 005C1FF3    push        eax
 005C1FF4    call        GDI32.SelectObject
 005C1FF9    mov         dword ptr [ebp-28],eax
 005C1FFC    push        0CC0020
 005C2001    mov         eax,dword ptr [ebp-38]
 005C2004    push        eax
 005C2005    mov         eax,dword ptr [ebp-3C]
 005C2008    push        eax
 005C2009    push        0
 005C200B    push        0
 005C200D    mov         eax,dword ptr [ebp-1C]
 005C2010    push        eax
 005C2011    mov         eax,dword ptr [ebp-8]
 005C2014    push        eax
 005C2015    mov         eax,dword ptr [ebp-0C]
 005C2018    push        eax
 005C2019    push        0
 005C201B    push        0
 005C201D    mov         eax,dword ptr [ebp-20]
 005C2020    push        eax
 005C2021    call        GDI32.StretchBlt
 005C2026    cmp         dword ptr [ebp-24],0
>005C202A    je          005C2039
 005C202C    mov         eax,dword ptr [ebp-24]
 005C202F    push        eax
 005C2030    mov         eax,dword ptr [ebp-1C]
 005C2033    push        eax
 005C2034    call        GDI32.SelectObject
 005C2039    cmp         dword ptr [ebp-28],0
>005C203D    je          005C204C
 005C203F    mov         eax,dword ptr [ebp-28]
 005C2042    push        eax
 005C2043    mov         eax,dword ptr [ebp-20]
 005C2046    push        eax
 005C2047    call        GDI32.SelectObject
 005C204C    xor         eax,eax
 005C204E    pop         edx
 005C204F    pop         ecx
 005C2050    pop         ecx
 005C2051    mov         dword ptr fs:[eax],edx
 005C2054    push        5C2073
 005C2059    mov         eax,dword ptr [ebp-1C]
 005C205C    push        eax
 005C205D    call        GDI32.DeleteDC
 005C2062    mov         eax,dword ptr [ebp-20]
 005C2065    push        eax
 005C2066    call        GDI32.DeleteDC
 005C206B    ret
>005C206C    jmp         @HandleFinally
>005C2071    jmp         005C2059
 005C2073    mov         eax,dword ptr [ebp-14]
 005C2076    pop         edi
 005C2077    pop         esi
 005C2078    mov         esp,ebp
 005C207A    pop         ebp
 005C207B    ret
end;*}

//005C207C
{*function sub_005C207C(?:?):?;
begin
 005C207C    push        ebp
 005C207D    mov         ebp,esp
 005C207F    add         esp,0FFFFFFF8
 005C2082    mov         word ptr [ebp-2],ax
 005C2086    mov         ax,word ptr [ebp-2]
 005C208A    dec         ax
>005C208D    je          005C209B
 005C208F    sub         ax,3
>005C2093    je          005C209B
 005C2095    sub         ax,4
>005C2099    jne         005C20AB
 005C209B    mov         cx,word ptr [ebp-2]
 005C209F    mov         eax,1
 005C20A4    shl         eax,cl
 005C20A6    mov         dword ptr [ebp-8],eax
>005C20A9    jmp         005C20B0
 005C20AB    xor         eax,eax
 005C20AD    mov         dword ptr [ebp-8],eax
 005C20B0    mov         eax,dword ptr [ebp-8]
 005C20B3    pop         ecx
 005C20B4    pop         ecx
 005C20B5    pop         ebp
 005C20B6    ret
end;*}

//005C20B8
{*function sub_005C20B8(?:?; ?:?; ?:?):?;
begin
 005C20B8    push        ebp
 005C20B9    mov         ebp,esp
 005C20BB    add         esp,0FFFFFFF0
 005C20BE    mov         dword ptr [ebp-0C],ecx
 005C20C1    mov         dword ptr [ebp-8],edx
 005C20C4    mov         dword ptr [ebp-4],eax
 005C20C7    dec         dword ptr [ebp-0C]
 005C20CA    mov         eax,dword ptr [ebp-4]
 005C20CD    imul        dword ptr [ebp-8]
 005C20D0    add         eax,dword ptr [ebp-0C]
 005C20D3    mov         edx,dword ptr [ebp-0C]
 005C20D6    not         edx
 005C20D8    and         eax,edx
 005C20DA    mov         dword ptr [ebp-10],eax
 005C20DD    mov         eax,dword ptr [ebp-10]
 005C20E0    test        eax,eax
>005C20E2    jns         005C20E7
 005C20E4    add         eax,7
 005C20E7    sar         eax,3
 005C20EA    mov         dword ptr [ebp-10],eax
 005C20ED    mov         eax,dword ptr [ebp-10]
 005C20F0    mov         esp,ebp
 005C20F2    pop         ebp
 005C20F3    ret
end;*}

//005C20F4
{*function sub_005C20F4(?:HDC; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005C20F4    push        ebp
 005C20F5    mov         ebp,esp
 005C20F7    add         esp,0FFFFFFD8
 005C20FA    mov         dword ptr [ebp-0C],ecx
 005C20FD    mov         dword ptr [ebp-8],edx
 005C2100    mov         dword ptr [ebp-4],eax
 005C2103    mov         byte ptr [ebp-0D],1
 005C2107    mov         eax,[006EA0EC];^gvar_006E498C
 005C210C    cmp         dword ptr [eax],2
>005C210F    jne         005C21CF
 005C2115    mov         eax,dword ptr [ebp+18]
 005C2118    cmp         eax,dword ptr [ebp+2C]
>005C211B    jne         005C21CF
 005C2121    mov         eax,dword ptr [ebp+14]
 005C2124    cmp         eax,dword ptr [ebp+28]
>005C2127    jne         005C21CF
 005C212D    push        1
 005C212F    push        1
 005C2131    mov         eax,dword ptr [ebp+24]
 005C2134    push        eax
 005C2135    call        GDI32.CreateCompatibleBitmap
 005C213A    call        005C1EEC
 005C213F    mov         dword ptr [ebp-18],eax
 005C2142    mov         eax,dword ptr [ebp-18]
 005C2145    push        eax
 005C2146    mov         eax,dword ptr [ebp+10]
 005C2149    push        eax
 005C214A    call        GDI32.SelectObject
 005C214F    mov         dword ptr [ebp-18],eax
 005C2152    xor         eax,eax
 005C2154    push        ebp
 005C2155    push        5C21C8
 005C215A    push        dword ptr fs:[eax]
 005C215D    mov         dword ptr fs:[eax],esp
 005C2160    mov         edx,0CC0020
 005C2165    mov         eax,0AA0029
 005C216A    call        0063CFA8
 005C216F    push        eax
 005C2170    mov         eax,dword ptr [ebp+8]
 005C2173    push        eax
 005C2174    mov         eax,dword ptr [ebp+0C]
 005C2177    push        eax
 005C2178    mov         eax,dword ptr [ebp-18]
 005C217B    push        eax
 005C217C    mov         eax,dword ptr [ebp+1C]
 005C217F    push        eax
 005C2180    mov         eax,dword ptr [ebp+20]
 005C2183    push        eax
 005C2184    mov         eax,dword ptr [ebp+24]
 005C2187    push        eax
 005C2188    mov         eax,dword ptr [ebp+28]
 005C218B    push        eax
 005C218C    mov         eax,dword ptr [ebp+2C]
 005C218F    push        eax
 005C2190    mov         eax,dword ptr [ebp-0C]
 005C2193    push        eax
 005C2194    mov         eax,dword ptr [ebp-8]
 005C2197    push        eax
 005C2198    mov         eax,dword ptr [ebp-4]
 005C219B    push        eax
 005C219C    call        GDI32.MaskBlt
 005C21A1    xor         eax,eax
 005C21A3    pop         edx
 005C21A4    pop         ecx
 005C21A5    pop         ecx
 005C21A6    mov         dword ptr fs:[eax],edx
 005C21A9    push        5C23B8
 005C21AE    mov         eax,dword ptr [ebp-18]
 005C21B1    push        eax
 005C21B2    mov         eax,dword ptr [ebp+10]
 005C21B5    push        eax
 005C21B6    call        GDI32.SelectObject
 005C21BB    mov         dword ptr [ebp-18],eax
 005C21BE    mov         eax,dword ptr [ebp-18]
 005C21C1    push        eax
 005C21C2    call        GDI32.DeleteObject
 005C21C7    ret
>005C21C8    jmp         @HandleFinally
>005C21CD    jmp         005C21AE
 005C21CF    xor         eax,eax
 005C21D1    mov         dword ptr [ebp-28],eax
 005C21D4    push        0
 005C21D6    call        GDI32.CreateCompatibleDC
 005C21DB    call        005C1EEC
 005C21E0    mov         dword ptr [ebp-14],eax
 005C21E3    xor         eax,eax
 005C21E5    push        ebp
 005C21E6    push        5C23B1
 005C21EB    push        dword ptr fs:[eax]
 005C21EE    mov         dword ptr fs:[eax],esp
 005C21F1    mov         eax,dword ptr [ebp+14]
 005C21F4    push        eax
 005C21F5    mov         eax,dword ptr [ebp+18]
 005C21F8    push        eax
 005C21F9    mov         eax,dword ptr [ebp+24]
 005C21FC    push        eax
 005C21FD    call        GDI32.CreateCompatibleBitmap
 005C2202    call        005C1EEC
 005C2207    mov         dword ptr [ebp-18],eax
 005C220A    mov         eax,dword ptr [ebp-18]
 005C220D    push        eax
 005C220E    mov         eax,dword ptr [ebp-14]
 005C2211    push        eax
 005C2212    call        GDI32.SelectObject
 005C2217    mov         dword ptr [ebp-1C],eax
 005C221A    push        0
 005C221C    mov         eax,[006ECD1C];0x0 SystemPalette16:HPALETTE
 005C2221    push        eax
 005C2222    mov         eax,dword ptr [ebp+24]
 005C2225    push        eax
 005C2226    call        GDI32.SelectPalette
 005C222B    mov         dword ptr [ebp-28],eax
 005C222E    push        0
 005C2230    mov         eax,dword ptr [ebp-28]
 005C2233    push        eax
 005C2234    mov         eax,dword ptr [ebp+24]
 005C2237    push        eax
 005C2238    call        GDI32.SelectPalette
 005C223D    cmp         dword ptr [ebp-28],0
>005C2241    je          005C2257
 005C2243    push        0FF
 005C2245    mov         eax,dword ptr [ebp-28]
 005C2248    push        eax
 005C2249    mov         eax,dword ptr [ebp-14]
 005C224C    push        eax
 005C224D    call        GDI32.SelectPalette
 005C2252    mov         dword ptr [ebp-28],eax
>005C2255    jmp         005C226B
 005C2257    push        0FF
 005C2259    mov         eax,[006ECD1C];0x0 SystemPalette16:HPALETTE
 005C225E    push        eax
 005C225F    mov         eax,dword ptr [ebp-14]
 005C2262    push        eax
 005C2263    call        GDI32.SelectPalette
 005C2268    mov         dword ptr [ebp-28],eax
 005C226B    mov         eax,dword ptr [ebp-14]
 005C226E    push        eax
 005C226F    call        GDI32.RealizePalette
 005C2274    push        0CC0020
 005C2279    mov         eax,dword ptr [ebp+14]
 005C227C    push        eax
 005C227D    mov         eax,dword ptr [ebp+18]
 005C2280    push        eax
 005C2281    mov         eax,dword ptr [ebp+8]
 005C2284    push        eax
 005C2285    mov         eax,dword ptr [ebp+0C]
 005C2288    push        eax
 005C2289    mov         eax,dword ptr [ebp+10]
 005C228C    push        eax
 005C228D    mov         eax,dword ptr [ebp+14]
 005C2290    push        eax
 005C2291    mov         eax,dword ptr [ebp+18]
 005C2294    push        eax
 005C2295    push        0
 005C2297    push        0
 005C2299    mov         eax,dword ptr [ebp-14]
 005C229C    push        eax
 005C229D    call        GDI32.StretchBlt
 005C22A2    push        440328
 005C22A7    mov         eax,dword ptr [ebp+14]
 005C22AA    push        eax
 005C22AB    mov         eax,dword ptr [ebp+18]
 005C22AE    push        eax
 005C22AF    mov         eax,dword ptr [ebp+1C]
 005C22B2    push        eax
 005C22B3    mov         eax,dword ptr [ebp+20]
 005C22B6    push        eax
 005C22B7    mov         eax,dword ptr [ebp+24]
 005C22BA    push        eax
 005C22BB    mov         eax,dword ptr [ebp+14]
 005C22BE    push        eax
 005C22BF    mov         eax,dword ptr [ebp+18]
 005C22C2    push        eax
 005C22C3    push        0
 005C22C5    push        0
 005C22C7    mov         eax,dword ptr [ebp-14]
 005C22CA    push        eax
 005C22CB    call        GDI32.StretchBlt
 005C22D0    push        0
 005C22D2    mov         eax,dword ptr [ebp-4]
 005C22D5    push        eax
 005C22D6    call        GDI32.SetTextColor
 005C22DB    mov         dword ptr [ebp-20],eax
 005C22DE    push        0FFFFFF
 005C22E3    mov         eax,dword ptr [ebp-4]
 005C22E6    push        eax
 005C22E7    call        GDI32.SetBkColor
 005C22EC    mov         dword ptr [ebp-24],eax
 005C22EF    push        8800C6
 005C22F4    mov         eax,dword ptr [ebp+14]
 005C22F7    push        eax
 005C22F8    mov         eax,dword ptr [ebp+18]
 005C22FB    push        eax
 005C22FC    mov         eax,dword ptr [ebp+8]
 005C22FF    push        eax
 005C2300    mov         eax,dword ptr [ebp+0C]
 005C2303    push        eax
 005C2304    mov         eax,dword ptr [ebp+10]
 005C2307    push        eax
 005C2308    mov         eax,dword ptr [ebp+28]
 005C230B    push        eax
 005C230C    mov         eax,dword ptr [ebp+2C]
 005C230F    push        eax
 005C2310    mov         eax,dword ptr [ebp-0C]
 005C2313    push        eax
 005C2314    mov         eax,dword ptr [ebp-8]
 005C2317    push        eax
 005C2318    mov         eax,dword ptr [ebp-4]
 005C231B    push        eax
 005C231C    call        GDI32.StretchBlt
 005C2321    push        660046
 005C2326    mov         eax,dword ptr [ebp+14]
 005C2329    push        eax
 005C232A    mov         eax,dword ptr [ebp+18]
 005C232D    push        eax
 005C232E    push        0
 005C2330    push        0
 005C2332    mov         eax,dword ptr [ebp-14]
 005C2335    push        eax
 005C2336    mov         eax,dword ptr [ebp+28]
 005C2339    push        eax
 005C233A    mov         eax,dword ptr [ebp+2C]
 005C233D    push        eax
 005C233E    mov         eax,dword ptr [ebp-0C]
 005C2341    push        eax
 005C2342    mov         eax,dword ptr [ebp-8]
 005C2345    push        eax
 005C2346    mov         eax,dword ptr [ebp-4]
 005C2349    push        eax
 005C234A    call        GDI32.StretchBlt
 005C234F    mov         eax,dword ptr [ebp-20]
 005C2352    push        eax
 005C2353    mov         eax,dword ptr [ebp-4]
 005C2356    push        eax
 005C2357    call        GDI32.SetTextColor
 005C235C    mov         eax,dword ptr [ebp-24]
 005C235F    push        eax
 005C2360    mov         eax,dword ptr [ebp-4]
 005C2363    push        eax
 005C2364    call        GDI32.SetBkColor
 005C2369    cmp         dword ptr [ebp-1C],0
>005C236D    je          005C237C
 005C236F    mov         eax,dword ptr [ebp-1C]
 005C2372    push        eax
 005C2373    mov         eax,dword ptr [ebp-14]
 005C2376    push        eax
 005C2377    call        GDI32.SelectObject
 005C237C    mov         eax,dword ptr [ebp-18]
 005C237F    push        eax
 005C2380    call        GDI32.DeleteObject
 005C2385    xor         eax,eax
 005C2387    pop         edx
 005C2388    pop         ecx
 005C2389    pop         ecx
 005C238A    mov         dword ptr fs:[eax],edx
 005C238D    push        5C23B8
 005C2392    cmp         dword ptr [ebp-28],0
>005C2396    je          005C23A7
 005C2398    push        0
 005C239A    mov         eax,dword ptr [ebp-28]
 005C239D    push        eax
 005C239E    mov         eax,dword ptr [ebp-14]
 005C23A1    push        eax
 005C23A2    call        GDI32.SelectPalette
 005C23A7    mov         eax,dword ptr [ebp-14]
 005C23AA    push        eax
 005C23AB    call        GDI32.DeleteDC
 005C23B0    ret
>005C23B1    jmp         @HandleFinally
>005C23B6    jmp         005C2392
 005C23B8    mov         al,byte ptr [ebp-0D]
 005C23BB    mov         esp,ebp
 005C23BD    pop         ebp
 005C23BE    ret         28
end;*}

//005C23C4
{*procedure sub_005C23C4(?:?);
begin
 005C23C4    push        ebp
 005C23C5    mov         ebp,esp
 005C23C7    add         esp,0FFFFFFE8
 005C23CA    mov         dword ptr [ebp-4],eax
 005C23CD    mov         eax,dword ptr [ebp-4]
 005C23D0    mov         dword ptr [ebp-0C],eax
 005C23D3    mov         eax,dword ptr [ebp-0C]
 005C23D6    mov         dword ptr [ebp-10],eax
 005C23D9    mov         dword ptr [ebp-8],0FF
 005C23E0    mov         eax,dword ptr [ebp-10]
 005C23E3    mov         edx,dword ptr [ebp-8]
 005C23E6    lea         eax,[eax+edx*4]
 005C23E9    mov         dword ptr [ebp-14],eax
 005C23EC    mov         eax,dword ptr [ebp-8]
 005C23EF    lea         eax,[eax+eax*2]
 005C23F2    mov         edx,dword ptr [ebp-0C]
 005C23F5    lea         eax,[edx+eax]
 005C23F8    mov         dword ptr [ebp-18],eax
 005C23FB    mov         eax,dword ptr [ebp-18]
 005C23FE    mov         al,byte ptr [eax+2]
 005C2401    mov         edx,dword ptr [ebp-14]
 005C2404    mov         byte ptr [edx+2],al
 005C2407    mov         eax,dword ptr [ebp-18]
 005C240A    mov         al,byte ptr [eax+1]
 005C240D    mov         edx,dword ptr [ebp-14]
 005C2410    mov         byte ptr [edx+1],al
 005C2413    mov         eax,dword ptr [ebp-18]
 005C2416    mov         al,byte ptr [eax]
 005C2418    mov         edx,dword ptr [ebp-14]
 005C241B    mov         byte ptr [edx],al
 005C241D    mov         eax,dword ptr [ebp-14]
 005C2420    mov         byte ptr [eax+3],0
 005C2424    dec         dword ptr [ebp-8]
 005C2427    cmp         dword ptr [ebp-8],0
>005C242B    jne         005C23E0
 005C242D    mov         eax,dword ptr [ebp-10]
 005C2430    mov         byte ptr [eax+3],0
 005C2434    mov         esp,ebp
 005C2436    pop         ebp
 005C2437    ret
end;*}

//005C2438
{*procedure sub_005C2438(?:?; ?:?);
begin
 005C2438    push        ebp
 005C2439    mov         ebp,esp
 005C243B    add         esp,0FFFFFFE0
 005C243E    mov         dword ptr [ebp-8],edx
 005C2441    mov         dword ptr [ebp-4],eax
 005C2444    mov         eax,dword ptr [ebp-4]
 005C2447    mov         dword ptr [ebp-10],eax
 005C244A    mov         eax,dword ptr [ebp-10]
 005C244D    mov         dword ptr [ebp-14],eax
 005C2450    mov         eax,dword ptr [ebp-8]
 005C2453    mov         eax,dword ptr [eax]
 005C2455    dec         eax
 005C2456    test        eax,eax
>005C2458    jle         005C24A9
 005C245A    mov         dword ptr [ebp-18],eax
 005C245D    mov         dword ptr [ebp-0C],1
 005C2464    mov         eax,dword ptr [ebp-14]
 005C2467    mov         edx,dword ptr [ebp-0C]
 005C246A    lea         eax,[eax+edx*4]
 005C246D    mov         dword ptr [ebp-1C],eax
 005C2470    mov         eax,dword ptr [ebp-0C]
 005C2473    lea         eax,[eax+eax*2]
 005C2476    mov         edx,dword ptr [ebp-10]
 005C2479    lea         eax,[edx+eax]
 005C247C    mov         dword ptr [ebp-20],eax
 005C247F    mov         eax,dword ptr [ebp-1C]
 005C2482    mov         al,byte ptr [eax+2]
 005C2485    mov         edx,dword ptr [ebp-20]
 005C2488    mov         byte ptr [edx+2],al
 005C248B    mov         eax,dword ptr [ebp-1C]
 005C248E    mov         al,byte ptr [eax+1]
 005C2491    mov         edx,dword ptr [ebp-20]
 005C2494    mov         byte ptr [edx+1],al
 005C2497    mov         eax,dword ptr [ebp-1C]
 005C249A    mov         al,byte ptr [eax]
 005C249C    mov         edx,dword ptr [ebp-20]
 005C249F    mov         byte ptr [edx],al
 005C24A1    inc         dword ptr [ebp-0C]
 005C24A4    dec         dword ptr [ebp-18]
>005C24A7    jne         005C2464
 005C24A9    mov         eax,dword ptr [ebp-8]
 005C24AC    cmp         dword ptr [eax],100
>005C24B2    jge         005C24DF
 005C24B4    mov         eax,dword ptr [ebp-8]
 005C24B7    mov         edx,100
 005C24BC    sub         edx,dword ptr [eax]
 005C24BE    lea         edx,[edx+edx*2]
 005C24C1    mov         eax,dword ptr [ebp-8]
 005C24C4    mov         eax,dword ptr [eax]
 005C24C6    lea         eax,[eax+eax*2]
 005C24C9    mov         ecx,dword ptr [ebp-10]
 005C24CC    lea         eax,[ecx+eax]
 005C24CF    xor         ecx,ecx
 005C24D1    call        @FillChar
 005C24D6    mov         eax,dword ptr [ebp-8]
 005C24D9    mov         dword ptr [eax],100
 005C24DF    mov         esp,ebp
 005C24E1    pop         ebp
 005C24E2    ret
end;*}

//005C24E4
procedure ByteSwapColors(var Colors:void ; Count:Integer);
begin
{*
 005C24E4    push        ebp
 005C24E5    mov         ebp,esp
 005C24E7    add         esp,0FFFFFFD4
 005C24EA    mov         dword ptr [ebp-8],edx
 005C24ED    mov         dword ptr [ebp-4],eax
 005C24F0    lea         eax,[ebp-2C]
 005C24F3    push        eax
 005C24F4    call        KERNEL32.GetSystemInfo
 005C24F9    mov         edx,dword ptr [ebp-4]
 005C24FC    mov         ecx,dword ptr [ebp-8]
 005C24FF    dec         ecx
>005C2500    js          005C2535
 005C2502    lea         eax,[ebp-2C]
 005C2505    cmp         word ptr [eax+20],3
>005C250A    je          005C251C
 005C250C    mov         eax,dword ptr [edx+ecx*4]
 005C250F    bswap       eax
 005C2511    shr         eax,8
 005C2514    mov         dword ptr [edx+ecx*4],eax
 005C2517    dec         ecx
>005C2518    jns         005C250C
>005C251A    jmp         005C2535
 005C251C    push        ebx
 005C251D    xor         ebx,ebx
 005C251F    mov         eax,dword ptr [edx+ecx*4]
 005C2522    mov         bh,al
 005C2524    mov         bl,ah
 005C2526    shr         eax,10
 005C2529    shl         ebx,8
 005C252C    mov         bl,al
 005C252E    mov         dword ptr [edx+ecx*4],ebx
 005C2531    dec         ecx
>005C2532    jns         005C251D
 005C2534    pop         ebx
 005C2535    mov         esp,ebp
 005C2537    pop         ebp
 005C2538    ret
*}
end;

//005C253C
{*function sub_005C253C(?:?; ?:?):?;
begin
 005C253C    push        ebp
 005C253D    mov         ebp,esp
 005C253F    add         esp,0FFFFFBE8
 005C2545    mov         dword ptr [ebp-14],edx
 005C2548    mov         dword ptr [ebp-4],eax
 005C254B    mov         word ptr [ebp-418],300
 005C2554    mov         word ptr [ebp-416],10
 005C255D    lea         edx,[ebp-414]
 005C2563    mov         eax,dword ptr [ebp-4]
 005C2566    mov         ecx,40
 005C256B    call        Move
 005C2570    push        0
 005C2572    call        USER32.GetDC
 005C2577    mov         dword ptr [ebp-0C],eax
 005C257A    xor         eax,eax
 005C257C    push        ebp
 005C257D    push        5C264A
 005C2582    push        dword ptr fs:[eax]
 005C2585    mov         dword ptr fs:[eax],esp
 005C2588    push        68
 005C258A    mov         eax,dword ptr [ebp-0C]
 005C258D    push        eax
 005C258E    call        GDI32.GetDeviceCaps
 005C2593    mov         dword ptr [ebp-10],eax
 005C2596    cmp         dword ptr [ebp-10],10
>005C259A    jl          005C2631
 005C25A0    lea         eax,[ebp-414]
 005C25A6    push        eax
 005C25A7    push        8
 005C25A9    push        0
 005C25AB    mov         eax,dword ptr [ebp-0C]
 005C25AE    push        eax
 005C25AF    call        GDI32.GetSystemPaletteEntries
 005C25B4    cmp         dword ptr [ebp-3F8],0C0C0C0
>005C25BE    jne         005C2610
 005C25C0    lea         eax,[ebp-3F8]
 005C25C6    push        eax
 005C25C7    push        1
 005C25C9    mov         eax,dword ptr [ebp-10]
 005C25CC    sub         eax,8
 005C25CF    push        eax
 005C25D0    mov         eax,dword ptr [ebp-0C]
 005C25D3    push        eax
 005C25D4    call        GDI32.GetSystemPaletteEntries
 005C25D9    movzx       eax,word ptr [ebp-416]
 005C25E0    lea         eax,[ebp+eax*4-430]
 005C25E7    push        eax
 005C25E8    push        7
 005C25EA    mov         eax,dword ptr [ebp-10]
 005C25ED    sub         eax,7
 005C25F0    push        eax
 005C25F1    mov         eax,dword ptr [ebp-0C]
 005C25F4    push        eax
 005C25F5    call        GDI32.GetSystemPaletteEntries
 005C25FA    lea         eax,[ebp-3F4]
 005C2600    push        eax
 005C2601    push        1
 005C2603    push        7
 005C2605    mov         eax,dword ptr [ebp-0C]
 005C2608    push        eax
 005C2609    call        GDI32.GetSystemPaletteEntries
>005C260E    jmp         005C2631
 005C2610    movzx       eax,word ptr [ebp-416]
 005C2617    lea         eax,[ebp+eax*4-434]
 005C261E    push        eax
 005C261F    push        8
 005C2621    mov         eax,dword ptr [ebp-10]
 005C2624    sub         eax,8
 005C2627    push        eax
 005C2628    mov         eax,dword ptr [ebp-0C]
 005C262B    push        eax
 005C262C    call        GDI32.GetSystemPaletteEntries
 005C2631    xor         eax,eax
 005C2633    pop         edx
 005C2634    pop         ecx
 005C2635    pop         ecx
 005C2636    mov         dword ptr fs:[eax],edx
 005C2639    push        5C2651
 005C263E    mov         eax,dword ptr [ebp-0C]
 005C2641    push        eax
 005C2642    push        0
 005C2644    call        USER32.ReleaseDC
 005C2649    ret
>005C264A    jmp         @HandleFinally
>005C264F    jmp         005C263E
 005C2651    lea         eax,[ebp-418]
 005C2657    push        eax
 005C2658    call        GDI32.CreatePalette
 005C265D    mov         dword ptr [ebp-8],eax
 005C2660    mov         eax,dword ptr [ebp-8]
 005C2663    mov         esp,ebp
 005C2665    pop         ebp
 005C2666    ret
end;*}

//005C2668
{*function sub_005C2668(?:?):?;
begin
 005C2668    push        ebp
 005C2669    mov         ebp,esp
 005C266B    add         esp,0FFFFFFF0
 005C266E    mov         dword ptr [ebp-4],eax
 005C2671    mov         byte ptr [ebp-5],0
 005C2675    cmp         dword ptr ds:[6ECD1C],0;SystemPalette16:HPALETTE
>005C267C    je          005C2706
 005C2682    push        0
 005C2684    call        USER32.GetDC
 005C2689    mov         dword ptr [ebp-0C],eax
 005C268C    xor         eax,eax
 005C268E    push        ebp
 005C268F    push        5C26FF
 005C2694    push        dword ptr fs:[eax]
 005C2697    mov         dword ptr fs:[eax],esp
 005C269A    push        68
 005C269C    mov         eax,dword ptr [ebp-0C]
 005C269F    push        eax
 005C26A0    call        GDI32.GetDeviceCaps
 005C26A5    mov         dword ptr [ebp-10],eax
 005C26A8    cmp         dword ptr [ebp-10],10
>005C26AC    jl          005C26E6
 005C26AE    mov         eax,dword ptr [ebp-4]
 005C26B1    add         eax,4
 005C26B4    push        eax
 005C26B5    push        8
 005C26B7    push        0
 005C26B9    mov         eax,[006ECD1C];0x0 SystemPalette16:HPALETTE
 005C26BE    push        eax
 005C26BF    call        GDI32.GetPaletteEntries
 005C26C4    mov         eax,dword ptr [ebp-4]
 005C26C7    movzx       eax,word ptr [eax+2]
 005C26CB    mov         edx,dword ptr [ebp-4]
 005C26CE    lea         eax,[edx+eax*4-1C]
 005C26D2    push        eax
 005C26D3    push        8
 005C26D5    push        8
 005C26D7    mov         eax,[006ECD1C];0x0 SystemPalette16:HPALETTE
 005C26DC    push        eax
 005C26DD    call        GDI32.GetPaletteEntries
 005C26E2    mov         byte ptr [ebp-5],1
 005C26E6    xor         eax,eax
 005C26E8    pop         edx
 005C26E9    pop         ecx
 005C26EA    pop         ecx
 005C26EB    mov         dword ptr fs:[eax],edx
 005C26EE    push        5C2706
 005C26F3    mov         eax,dword ptr [ebp-0C]
 005C26F6    push        eax
 005C26F7    push        0
 005C26F9    call        USER32.ReleaseDC
 005C26FE    ret
>005C26FF    jmp         @HandleFinally
>005C2704    jmp         005C26F3
 005C2706    mov         al,byte ptr [ebp-5]
 005C2709    mov         esp,ebp
 005C270B    pop         ebp
 005C270C    ret
end;*}

//005C2710
{*function sub_005C2710(?:HBITMAP; ?:?; ?:?):?;
begin
 005C2710    push        ebp
 005C2711    mov         ebp,esp
 005C2713    add         esp,0FFFFFBE4
 005C2719    mov         dword ptr [ebp-0C],ecx
 005C271C    mov         dword ptr [ebp-8],edx
 005C271F    mov         dword ptr [ebp-4],eax
 005C2722    xor         eax,eax
 005C2724    mov         dword ptr [ebp-10],eax
 005C2727    mov         word ptr [ebp-41C],300
 005C2730    cmp         dword ptr [ebp-4],0
>005C2734    je          005C2786
 005C2736    push        0
 005C2738    call        GDI32.CreateCompatibleDC
 005C273D    mov         dword ptr [ebp-14],eax
 005C2740    mov         eax,dword ptr [ebp-4]
 005C2743    push        eax
 005C2744    mov         eax,dword ptr [ebp-14]
 005C2747    push        eax
 005C2748    call        GDI32.SelectObject
 005C274D    mov         dword ptr [ebp-18],eax
 005C2750    lea         eax,[ebp-418]
 005C2756    push        eax
 005C2757    push        100
 005C275C    push        0
 005C275E    mov         eax,dword ptr [ebp-14]
 005C2761    push        eax
 005C2762    call        GDI32.GetDIBColorTable
 005C2767    mov         word ptr [ebp-41A],ax
 005C276E    mov         eax,dword ptr [ebp-18]
 005C2771    push        eax
 005C2772    mov         eax,dword ptr [ebp-14]
 005C2775    push        eax
 005C2776    call        GDI32.SelectObject
 005C277B    mov         eax,dword ptr [ebp-14]
 005C277E    push        eax
 005C277F    call        GDI32.DeleteDC
>005C2784    jmp         005C27A5
 005C2786    mov         ax,word ptr [ebp-0C]
 005C278A    mov         word ptr [ebp-41A],ax
 005C2791    mov         ecx,dword ptr [ebp-0C]
 005C2794    shl         ecx,2
 005C2797    lea         edx,[ebp-418]
 005C279D    mov         eax,dword ptr [ebp-8]
 005C27A0    call        Move
 005C27A5    cmp         word ptr [ebp-41A],0
>005C27AD    je          005C27E9
 005C27AF    cmp         word ptr [ebp-41A],10
>005C27B7    jne         005C27C8
 005C27B9    lea         eax,[ebp-41C]
 005C27BF    call        005C2668
 005C27C4    test        al,al
>005C27C6    jne         005C27DA
 005C27C8    movzx       edx,word ptr [ebp-41A]
 005C27CF    lea         eax,[ebp-418]
 005C27D5    call        ByteSwapColors
 005C27DA    lea         eax,[ebp-41C]
 005C27E0    push        eax
 005C27E1    call        GDI32.CreatePalette
 005C27E6    mov         dword ptr [ebp-10],eax
 005C27E9    mov         eax,dword ptr [ebp-10]
 005C27EC    mov         esp,ebp
 005C27EE    pop         ebp
 005C27EF    ret
end;*}

//005C27F0
{*function sub_005C27F0(?:HPALETTE; ?:?; ?:?):?;
begin
 005C27F0    push        ebp
 005C27F1    mov         ebp,esp
 005C27F3    add         esp,0FFFFFFF0
 005C27F6    mov         dword ptr [ebp-0C],ecx
 005C27F9    mov         dword ptr [ebp-8],edx
 005C27FC    mov         dword ptr [ebp-4],eax
 005C27FF    xor         eax,eax
 005C2801    mov         dword ptr [ebp-10],eax
 005C2804    cmp         dword ptr [ebp-4],0
>005C2808    je          005C2851
 005C280A    lea         eax,[ebp-10]
 005C280D    push        eax
 005C280E    push        4
 005C2810    mov         eax,dword ptr [ebp-4]
 005C2813    push        eax
 005C2814    call        GDI32.GetObjectA
 005C2819    test        eax,eax
>005C281B    je          005C2851
 005C281D    cmp         dword ptr [ebp-10],0
>005C2821    je          005C2851
 005C2823    mov         eax,dword ptr [ebp-0C]
 005C2826    inc         eax
 005C2827    cmp         eax,dword ptr [ebp-10]
>005C282A    jge         005C2833
 005C282C    mov         eax,dword ptr [ebp-0C]
 005C282F    inc         eax
 005C2830    mov         dword ptr [ebp-10],eax
 005C2833    mov         eax,dword ptr [ebp-8]
 005C2836    push        eax
 005C2837    mov         eax,dword ptr [ebp-10]
 005C283A    push        eax
 005C283B    push        0
 005C283D    mov         eax,dword ptr [ebp-4]
 005C2840    push        eax
 005C2841    call        GDI32.GetPaletteEntries
 005C2846    mov         eax,dword ptr [ebp-8]
 005C2849    mov         edx,dword ptr [ebp-10]
 005C284C    call        ByteSwapColors
 005C2851    mov         eax,dword ptr [ebp-10]
 005C2854    mov         esp,ebp
 005C2856    pop         ebp
 005C2857    ret
end;*}

//005C2858
{*procedure sub_005C2858(?:?; ?:?; ?:?; ?:?);
begin
 005C2858    push        ebp
 005C2859    mov         ebp,esp
 005C285B    add         esp,0FFFFFFE0
 005C285E    mov         dword ptr [ebp-0C],ecx
 005C2861    mov         dword ptr [ebp-8],edx
 005C2864    mov         dword ptr [ebp-4],eax
 005C2867    mov         eax,dword ptr [ebp-4]
 005C286A    shr         dword ptr [eax+8],1
 005C286D    mov         edx,dword ptr [ebp-4]
 005C2870    movzx       edx,word ptr [edx+0E]
 005C2874    mov         eax,dword ptr [ebp-4]
 005C2877    mov         eax,dword ptr [eax+4]
 005C287A    mov         ecx,20
 005C287F    call        005C20B8
 005C2884    mov         edx,dword ptr [ebp-4]
 005C2887    imul        dword ptr [edx+8]
 005C288A    mov         edx,dword ptr [ebp-4]
 005C288D    mov         dword ptr [edx+14],eax
 005C2890    mov         eax,dword ptr [ebp-4]
 005C2893    mov         ax,word ptr [eax+0E]
 005C2897    call        005C207C
 005C289C    mov         dword ptr [ebp-14],eax
 005C289F    push        0
 005C28A1    call        USER32.GetDC
 005C28A6    mov         dword ptr [ebp-18],eax
 005C28A9    cmp         dword ptr [ebp-18],0
>005C28AD    jne         005C28B4
 005C28AF    call        OutOfResources
 005C28B4    xor         eax,eax
 005C28B6    push        ebp
 005C28B7    push        5C2A0D
 005C28BC    push        dword ptr fs:[eax]
 005C28BF    mov         dword ptr fs:[eax],esp
 005C28C2    mov         eax,dword ptr [ebp-4]
 005C28C5    add         eax,28
 005C28C8    mov         edx,dword ptr [ebp-14]
 005C28CB    shl         edx,2
 005C28CE    add         eax,edx
 005C28D0    mov         dword ptr [ebp-1C],eax
 005C28D3    push        0
 005C28D5    mov         eax,dword ptr [ebp-4]
 005C28D8    push        eax
 005C28D9    mov         eax,dword ptr [ebp-1C]
 005C28DC    push        eax
 005C28DD    push        4
 005C28DF    mov         eax,dword ptr [ebp-4]
 005C28E2    push        eax
 005C28E3    mov         eax,dword ptr [ebp-18]
 005C28E6    push        eax
 005C28E7    call        GDI32.CreateDIBitmap
 005C28EC    call        005C1EEC
 005C28F1    mov         dword ptr [ebp-10],eax
 005C28F4    xor         eax,eax
 005C28F6    push        ebp
 005C28F7    push        5C292B
 005C28FC    push        dword ptr fs:[eax]
 005C28FF    mov         dword ptr fs:[eax],esp
 005C2902    mov         edx,dword ptr [ebp+8]
 005C2905    xor         ecx,ecx
 005C2907    mov         eax,dword ptr [ebp-10]
 005C290A    call        005C1F10
 005C290F    mov         edx,dword ptr [ebp-8]
 005C2912    mov         dword ptr [edx],eax
 005C2914    xor         eax,eax
 005C2916    pop         edx
 005C2917    pop         ecx
 005C2918    pop         ecx
 005C2919    mov         dword ptr fs:[eax],edx
 005C291C    push        5C2932
 005C2921    mov         eax,dword ptr [ebp-10]
 005C2924    push        eax
 005C2925    call        GDI32.DeleteObject
 005C292A    ret
>005C292B    jmp         @HandleFinally
>005C2930    jmp         005C2921
 005C2932    mov         eax,dword ptr [ebp-4]
 005C2935    mov         eax,dword ptr [eax+14]
 005C2938    add         dword ptr [ebp-1C],eax
 005C293B    mov         eax,dword ptr [ebp-4]
 005C293E    mov         word ptr [eax+0E],1
 005C2944    mov         edx,dword ptr [ebp-4]
 005C2947    movzx       edx,word ptr [edx+0E]
 005C294B    mov         eax,dword ptr [ebp-4]
 005C294E    mov         eax,dword ptr [eax+4]
 005C2951    mov         ecx,20
 005C2956    call        005C20B8
 005C295B    mov         edx,dword ptr [ebp-4]
 005C295E    imul        dword ptr [edx+8]
 005C2961    mov         edx,dword ptr [ebp-4]
 005C2964    mov         dword ptr [edx+14],eax
 005C2967    mov         eax,dword ptr [ebp-4]
 005C296A    mov         dword ptr [eax+20],2
 005C2971    mov         eax,dword ptr [ebp-4]
 005C2974    mov         dword ptr [eax+24],2
 005C297B    mov         eax,dword ptr [ebp-4]
 005C297E    add         eax,28
 005C2981    mov         dword ptr [ebp-20],eax
 005C2984    mov         eax,dword ptr [ebp-20]
 005C2987    xor         edx,edx
 005C2989    mov         dword ptr [eax],edx
 005C298B    mov         eax,dword ptr [ebp-20]
 005C298E    mov         dword ptr [eax+4],0FFFFFF
 005C2995    push        0
 005C2997    mov         eax,dword ptr [ebp-4]
 005C299A    push        eax
 005C299B    mov         eax,dword ptr [ebp-1C]
 005C299E    push        eax
 005C299F    push        4
 005C29A1    mov         eax,dword ptr [ebp-4]
 005C29A4    push        eax
 005C29A5    mov         eax,dword ptr [ebp-18]
 005C29A8    push        eax
 005C29A9    call        GDI32.CreateDIBitmap
 005C29AE    call        005C1EEC
 005C29B3    mov         dword ptr [ebp-10],eax
 005C29B6    xor         eax,eax
 005C29B8    push        ebp
 005C29B9    push        5C29ED
 005C29BE    push        dword ptr fs:[eax]
 005C29C1    mov         dword ptr fs:[eax],esp
 005C29C4    mov         edx,dword ptr [ebp+8]
 005C29C7    mov         cl,1
 005C29C9    mov         eax,dword ptr [ebp-10]
 005C29CC    call        005C1F10
 005C29D1    mov         edx,dword ptr [ebp-0C]
 005C29D4    mov         dword ptr [edx],eax
 005C29D6    xor         eax,eax
 005C29D8    pop         edx
 005C29D9    pop         ecx
 005C29DA    pop         ecx
 005C29DB    mov         dword ptr fs:[eax],edx
 005C29DE    push        5C29F4
 005C29E3    mov         eax,dword ptr [ebp-10]
 005C29E6    push        eax
 005C29E7    call        GDI32.DeleteObject
 005C29EC    ret
>005C29ED    jmp         @HandleFinally
>005C29F2    jmp         005C29E3
 005C29F4    xor         eax,eax
 005C29F6    pop         edx
 005C29F7    pop         ecx
 005C29F8    pop         ecx
 005C29F9    mov         dword ptr fs:[eax],edx
 005C29FC    push        5C2A14
 005C2A01    mov         eax,dword ptr [ebp-18]
 005C2A04    push        eax
 005C2A05    push        0
 005C2A07    call        USER32.ReleaseDC
 005C2A0C    ret
>005C2A0D    jmp         @HandleFinally
>005C2A12    jmp         005C2A01
 005C2A14    mov         esp,ebp
 005C2A16    pop         ebp
 005C2A17    ret         4
end;*}

//005C2A1C
{*function sub_005C2A1C(?:?):?;
begin
 005C2A1C    push        ebp
 005C2A1D    mov         ebp,esp
 005C2A1F    add         esp,0FFFFFFF8
 005C2A22    mov         dword ptr [ebp-4],eax
 005C2A25    cmp         dword ptr [ebp-4],0
>005C2A29    jne         005C2A34
 005C2A2B    mov         dword ptr [ebp-8],7FFFFFFF
>005C2A32    jmp         005C2A3A
 005C2A34    mov         eax,dword ptr [ebp-4]
 005C2A37    mov         dword ptr [ebp-8],eax
 005C2A3A    mov         eax,dword ptr [ebp-8]
 005C2A3D    pop         ecx
 005C2A3E    pop         ecx
 005C2A3F    pop         ebp
 005C2A40    ret
end;*}

//005C2A44
{*function sub_005C2A44(?:Integer; ?:Integer; ?:?):?;
begin
 005C2A44    push        ebp
 005C2A45    mov         ebp,esp
 005C2A47    add         esp,0FFFFFFE4
 005C2A4A    mov         dword ptr [ebp-8],edx
 005C2A4D    mov         dword ptr [ebp-4],eax
 005C2A50    mov         eax,dword ptr [ebp-8]
 005C2A53    movzx       eax,byte ptr [eax]
 005C2A56    mov         edx,dword ptr [ebp+8]
 005C2A59    mov         edx,dword ptr [edx+8]
 005C2A5C    sub         eax,dword ptr [edx]
 005C2A5E    mov         dword ptr [ebp-10],eax
 005C2A61    mov         eax,dword ptr [ebp-8]
 005C2A64    movzx       eax,byte ptr [eax+1]
 005C2A68    mov         edx,dword ptr [ebp+8]
 005C2A6B    mov         edx,dword ptr [edx+8]
 005C2A6E    sub         eax,dword ptr [edx+4]
 005C2A71    mov         dword ptr [ebp-14],eax
 005C2A74    mov         eax,dword ptr [ebp-4]
 005C2A77    movzx       eax,byte ptr [eax]
 005C2A7A    mov         edx,dword ptr [ebp+8]
 005C2A7D    mov         edx,dword ptr [edx+8]
 005C2A80    sub         eax,dword ptr [edx]
 005C2A82    mov         dword ptr [ebp-18],eax
 005C2A85    mov         eax,dword ptr [ebp-4]
 005C2A88    movzx       eax,byte ptr [eax+1]
 005C2A8C    mov         edx,dword ptr [ebp+8]
 005C2A8F    mov         edx,dword ptr [edx+8]
 005C2A92    sub         eax,dword ptr [edx+4]
 005C2A95    mov         dword ptr [ebp-1C],eax
 005C2A98    mov         eax,dword ptr [ebp-10]
 005C2A9B    cdq
 005C2A9C    xor         eax,edx
 005C2A9E    sub         eax,edx
 005C2AA0    mov         ecx,eax
 005C2AA2    mov         eax,dword ptr [ebp-18]
 005C2AA5    cdq
 005C2AA6    xor         eax,edx
 005C2AA8    sub         eax,edx
 005C2AAA    cmp         ecx,eax
>005C2AAC    jg          005C2AE0
 005C2AAE    cmp         dword ptr [ebp-10],0
>005C2AB2    jle         005C2ABC
 005C2AB4    mov         eax,dword ptr [ebp-10]
 005C2AB7    cmp         eax,dword ptr [ebp-18]
>005C2ABA    jg          005C2AE0
 005C2ABC    mov         eax,dword ptr [ebp-14]
 005C2ABF    cdq
 005C2AC0    xor         eax,edx
 005C2AC2    sub         eax,edx
 005C2AC4    mov         ecx,eax
 005C2AC6    mov         eax,dword ptr [ebp-1C]
 005C2AC9    cdq
 005C2ACA    xor         eax,edx
 005C2ACC    sub         eax,edx
 005C2ACE    cmp         ecx,eax
>005C2AD0    jg          005C2AE0
 005C2AD2    cmp         dword ptr [ebp-14],0
>005C2AD6    jle         005C2AE4
 005C2AD8    mov         eax,dword ptr [ebp-14]
 005C2ADB    cmp         eax,dword ptr [ebp-1C]
>005C2ADE    jle         005C2AE4
 005C2AE0    xor         eax,eax
>005C2AE2    jmp         005C2AE6
 005C2AE4    mov         al,1
 005C2AE6    mov         byte ptr [ebp-9],al
 005C2AE9    mov         al,byte ptr [ebp-9]
 005C2AEC    mov         esp,ebp
 005C2AEE    pop         ebp
 005C2AEF    ret
end;*}

//005C2AF0
{*procedure sub_005C2AF0(?:TCustomMemoryStream; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005C2AF0    push        ebp
 005C2AF1    mov         ebp,esp
 005C2AF3    add         esp,0FFFFFF74
 005C2AF9    push        ebx
 005C2AFA    mov         dword ptr [ebp-0C],ecx
 005C2AFD    mov         dword ptr [ebp-8],edx
 005C2B00    mov         dword ptr [ebp-4],eax
 005C2B03    mov         eax,dword ptr [ebp-0C]
 005C2B06    shl         eax,4
 005C2B09    mov         dword ptr [ebp-14],eax
 005C2B0C    mov         eax,dword ptr [ebp-14]
 005C2B0F    call        0065744C
 005C2B14    mov         dword ptr [ebp-10],eax
 005C2B17    xor         eax,eax
 005C2B19    push        ebp
 005C2B1A    push        5C2E2C
 005C2B1F    push        dword ptr fs:[eax]
 005C2B22    mov         dword ptr fs:[eax],esp
 005C2B25    mov         edx,dword ptr [ebp-10]
 005C2B28    mov         ecx,dword ptr [ebp-14]
 005C2B2B    mov         eax,dword ptr [ebp-4]
 005C2B2E    mov         ebx,dword ptr [eax]
 005C2B30    call        dword ptr [ebx+8]
 005C2B33    mov         eax,dword ptr [ebp+0C]
 005C2B36    mov         eax,dword ptr [eax]
 005C2B38    mov         edx,dword ptr [ebp+0C]
 005C2B3B    or          eax,dword ptr [edx+4]
>005C2B3E    jne         005C2B5B
 005C2B40    push        0B
 005C2B42    call        USER32.GetSystemMetrics
 005C2B47    mov         edx,dword ptr [ebp+8]
 005C2B4A    mov         dword ptr [edx],eax
 005C2B4C    push        0C
 005C2B4E    call        USER32.GetSystemMetrics
 005C2B53    mov         edx,dword ptr [ebp+8]
 005C2B56    mov         dword ptr [edx+4],eax
>005C2B59    jmp         005C2B6B
 005C2B5B    mov         eax,dword ptr [ebp+8]
 005C2B5E    mov         edx,dword ptr [ebp+0C]
 005C2B61    mov         ecx,dword ptr [edx]
 005C2B63    mov         dword ptr [eax],ecx
 005C2B65    mov         ecx,dword ptr [edx+4]
 005C2B68    mov         dword ptr [eax+4],ecx
 005C2B6B    push        0
 005C2B6D    call        USER32.GetDC
 005C2B72    mov         dword ptr [ebp-34],eax
 005C2B75    cmp         dword ptr [ebp-34],0
>005C2B79    jne         005C2B80
 005C2B7B    call        OutOfResources
 005C2B80    xor         eax,eax
 005C2B82    push        ebp
 005C2B83    push        5C2BE5
 005C2B88    push        dword ptr fs:[eax]
 005C2B8B    mov         dword ptr fs:[eax],esp
 005C2B8E    push        0E
 005C2B90    mov         eax,dword ptr [ebp-34]
 005C2B93    push        eax
 005C2B94    call        GDI32.GetDeviceCaps
 005C2B99    mov         ebx,eax
 005C2B9B    push        0C
 005C2B9D    mov         eax,dword ptr [ebp-34]
 005C2BA0    push        eax
 005C2BA1    call        GDI32.GetDeviceCaps
 005C2BA6    imul        bx,ax
 005C2BAA    mov         word ptr [ebp-1A],bx
 005C2BAE    cmp         word ptr [ebp-1A],8
>005C2BB3    jbe         005C2BBE
 005C2BB5    mov         dword ptr [ebp-20],7FFFFFFF
>005C2BBC    jmp         005C2BCC
 005C2BBE    mov         cx,word ptr [ebp-1A]
 005C2BC2    mov         eax,1
 005C2BC7    shl         eax,cl
 005C2BC9    mov         dword ptr [ebp-20],eax
 005C2BCC    xor         eax,eax
 005C2BCE    pop         edx
 005C2BCF    pop         ecx
 005C2BD0    pop         ecx
 005C2BD1    mov         dword ptr fs:[eax],edx
 005C2BD4    push        5C2BEC
 005C2BD9    mov         eax,dword ptr [ebp-34]
 005C2BDC    push        eax
 005C2BDD    push        0
 005C2BDF    call        USER32.ReleaseDC
 005C2BE4    ret
>005C2BE5    jmp         @HandleFinally
>005C2BEA    jmp         005C2BD9
 005C2BEC    xor         eax,eax
 005C2BEE    mov         dword ptr [ebp-30],eax
 005C2BF1    push        ebp
 005C2BF2    mov         eax,dword ptr [ebp-10]
 005C2BF5    movzx       eax,word ptr [eax+2]
 005C2BF9    call        005C2A1C
 005C2BFE    pop         ecx
 005C2BFF    mov         dword ptr [ebp-24],eax
 005C2C02    mov         eax,dword ptr [ebp-0C]
 005C2C05    dec         eax
 005C2C06    test        eax,eax
>005C2C08    jle         005C2C70
 005C2C0A    mov         dword ptr [ebp-58],eax
 005C2C0D    mov         dword ptr [ebp-2C],1
 005C2C14    push        ebp
 005C2C15    mov         eax,dword ptr [ebp-2C]
 005C2C18    add         eax,eax
 005C2C1A    mov         edx,dword ptr [ebp-10]
 005C2C1D    movzx       eax,word ptr [edx+eax*8+2]
 005C2C22    call        005C2A1C
 005C2C27    pop         ecx
 005C2C28    mov         dword ptr [ebp-28],eax
 005C2C2B    mov         eax,dword ptr [ebp-28]
 005C2C2E    cmp         eax,dword ptr [ebp-20]
>005C2C31    jg          005C2C68
 005C2C33    mov         eax,dword ptr [ebp-28]
 005C2C36    cmp         eax,dword ptr [ebp-24]
>005C2C39    jl          005C2C68
 005C2C3B    push        ebp
 005C2C3C    mov         eax,dword ptr [ebp-2C]
 005C2C3F    add         eax,eax
 005C2C41    mov         edx,dword ptr [ebp-10]
 005C2C44    lea         edx,[edx+eax*8]
 005C2C47    mov         eax,dword ptr [ebp-30]
 005C2C4A    add         eax,eax
 005C2C4C    mov         ecx,dword ptr [ebp-10]
 005C2C4F    lea         eax,[ecx+eax*8]
 005C2C52    call        005C2A44
 005C2C57    pop         ecx
 005C2C58    test        al,al
>005C2C5A    je          005C2C68
 005C2C5C    mov         eax,dword ptr [ebp-2C]
 005C2C5F    mov         dword ptr [ebp-30],eax
 005C2C62    mov         eax,dword ptr [ebp-28]
 005C2C65    mov         dword ptr [ebp-24],eax
 005C2C68    inc         dword ptr [ebp-2C]
 005C2C6B    dec         dword ptr [ebp-58]
>005C2C6E    jne         005C2C14
 005C2C70    mov         eax,dword ptr [ebp-30]
 005C2C73    add         eax,eax
 005C2C75    mov         edx,dword ptr [ebp-10]
 005C2C78    lea         eax,[edx+eax*8]
 005C2C7B    mov         dword ptr [ebp-5C],eax
 005C2C7E    mov         eax,dword ptr [ebp-5C]
 005C2C81    movzx       eax,byte ptr [eax]
 005C2C84    mov         edx,dword ptr [ebp+8]
 005C2C87    mov         dword ptr [edx],eax
 005C2C89    mov         eax,dword ptr [ebp-5C]
 005C2C8C    movzx       eax,byte ptr [eax+1]
 005C2C90    mov         edx,dword ptr [ebp+8]
 005C2C93    mov         dword ptr [edx+4],eax
 005C2C96    mov         eax,dword ptr [ebp-5C]
 005C2C99    mov         eax,dword ptr [eax+8]
 005C2C9C    call        0065744C
 005C2CA1    mov         dword ptr [ebp-38],eax
 005C2CA4    xor         eax,eax
 005C2CA6    push        ebp
 005C2CA7    push        5C2E0C
 005C2CAC    push        dword ptr fs:[eax]
 005C2CAF    mov         dword ptr fs:[eax],esp
 005C2CB2    mov         eax,dword ptr [ebp-5C]
 005C2CB5    mov         edx,dword ptr [eax+0C]
 005C2CB8    mov         eax,dword ptr [ebp-14]
 005C2CBB    add         eax,dword ptr [ebp+10]
 005C2CBE    sub         edx,eax
 005C2CC0    mov         cx,1
 005C2CC4    mov         eax,dword ptr [ebp-4]
 005C2CC7    mov         ebx,dword ptr [eax]
 005C2CC9    call        dword ptr [ebx+10]
 005C2CCC    mov         eax,dword ptr [ebp-5C]
 005C2CCF    mov         ecx,dword ptr [eax+8]
 005C2CD2    mov         edx,dword ptr [ebp-38]
 005C2CD5    mov         eax,dword ptr [ebp-4]
 005C2CD8    mov         ebx,dword ptr [eax]
 005C2CDA    call        dword ptr [ebx+8]
 005C2CDD    mov         eax,dword ptr [ebp+8]
 005C2CE0    push        eax
 005C2CE1    lea         ecx,[ebp-44]
 005C2CE4    lea         edx,[ebp-40]
 005C2CE7    mov         eax,dword ptr [ebp-38]
 005C2CEA    call        005C2858
 005C2CEF    lea         eax,[ebp-8C]
 005C2CF5    push        eax
 005C2CF6    push        18
 005C2CF8    mov         eax,dword ptr [ebp-44]
 005C2CFB    push        eax
 005C2CFC    call        GDI32.GetObjectA
 005C2D01    lea         eax,[ebp-74]
 005C2D04    push        eax
 005C2D05    push        18
 005C2D07    mov         eax,dword ptr [ebp-40]
 005C2D0A    push        eax
 005C2D0B    call        GDI32.GetObjectA
 005C2D10    mov         eax,dword ptr [ebp-80]
 005C2D13    imul        dword ptr [ebp-84]
 005C2D19    movzx       edx,word ptr [ebp-7C]
 005C2D1D    imul        edx
 005C2D1F    mov         dword ptr [ebp-54],eax
 005C2D22    mov         eax,dword ptr [ebp-68]
 005C2D25    imul        dword ptr [ebp-6C]
 005C2D28    movzx       edx,word ptr [ebp-64]
 005C2D2C    imul        edx
 005C2D2E    mov         dword ptr [ebp-50],eax
 005C2D31    mov         eax,dword ptr [ebp-54]
 005C2D34    add         eax,dword ptr [ebp-50]
 005C2D37    mov         dword ptr [ebp-18],eax
 005C2D3A    mov         eax,dword ptr [ebp-18]
 005C2D3D    call        0065744C
 005C2D42    mov         dword ptr [ebp-3C],eax
 005C2D45    xor         eax,eax
 005C2D47    push        ebp
 005C2D48    push        5C2DE9
 005C2D4D    push        dword ptr fs:[eax]
 005C2D50    mov         dword ptr fs:[eax],esp
 005C2D53    mov         eax,dword ptr [ebp-3C]
 005C2D56    mov         dword ptr [ebp-4C],eax
 005C2D59    mov         eax,dword ptr [ebp-3C]
 005C2D5C    add         eax,dword ptr [ebp-54]
 005C2D5F    mov         dword ptr [ebp-48],eax
 005C2D62    mov         eax,dword ptr [ebp-4C]
 005C2D65    push        eax
 005C2D66    mov         eax,dword ptr [ebp-54]
 005C2D69    push        eax
 005C2D6A    mov         eax,dword ptr [ebp-44]
 005C2D6D    push        eax
 005C2D6E    call        GDI32.GetBitmapBits
 005C2D73    mov         eax,dword ptr [ebp-48]
 005C2D76    push        eax
 005C2D77    mov         eax,dword ptr [ebp-50]
 005C2D7A    push        eax
 005C2D7B    mov         eax,dword ptr [ebp-40]
 005C2D7E    push        eax
 005C2D7F    call        GDI32.GetBitmapBits
 005C2D84    mov         eax,dword ptr [ebp-40]
 005C2D87    push        eax
 005C2D88    call        GDI32.DeleteObject
 005C2D8D    mov         eax,dword ptr [ebp-44]
 005C2D90    push        eax
 005C2D91    call        GDI32.DeleteObject
 005C2D96    mov         eax,dword ptr [ebp-48]
 005C2D99    push        eax
 005C2D9A    mov         eax,dword ptr [ebp-4C]
 005C2D9D    push        eax
 005C2D9E    mov         al,byte ptr [ebp-62]
 005C2DA1    push        eax
 005C2DA2    mov         al,byte ptr [ebp-64]
 005C2DA5    push        eax
 005C2DA6    mov         eax,dword ptr [ebp+8]
 005C2DA9    mov         eax,dword ptr [eax+4]
 005C2DAC    push        eax
 005C2DAD    mov         eax,dword ptr [ebp+8]
 005C2DB0    mov         eax,dword ptr [eax]
 005C2DB2    push        eax
 005C2DB3    mov         eax,[006EA390];0x0 gvar_006EA390
 005C2DB8    push        eax
 005C2DB9    call        USER32.CreateIcon
 005C2DBE    mov         edx,dword ptr [ebp-8]
 005C2DC1    mov         dword ptr [edx],eax
 005C2DC3    mov         eax,dword ptr [ebp-8]
 005C2DC6    cmp         dword ptr [eax],0
>005C2DC9    jne         005C2DD0
 005C2DCB    call        005C1E40
 005C2DD0    xor         eax,eax
 005C2DD2    pop         edx
 005C2DD3    pop         ecx
 005C2DD4    pop         ecx
 005C2DD5    mov         dword ptr fs:[eax],edx
 005C2DD8    push        5C2DF0
 005C2DDD    mov         edx,dword ptr [ebp-18]
 005C2DE0    mov         eax,dword ptr [ebp-3C]
 005C2DE3    call        @FreeMem
 005C2DE8    ret
>005C2DE9    jmp         @HandleFinally
>005C2DEE    jmp         005C2DDD
 005C2DF0    xor         eax,eax
 005C2DF2    pop         edx
 005C2DF3    pop         ecx
 005C2DF4    pop         ecx
 005C2DF5    mov         dword ptr fs:[eax],edx
 005C2DF8    push        5C2E13
 005C2DFD    mov         eax,dword ptr [ebp-5C]
 005C2E00    mov         edx,dword ptr [eax+8]
 005C2E03    mov         eax,dword ptr [ebp-38]
 005C2E06    call        @FreeMem
 005C2E0B    ret
>005C2E0C    jmp         @HandleFinally
>005C2E11    jmp         005C2DFD
 005C2E13    xor         eax,eax
 005C2E15    pop         edx
 005C2E16    pop         ecx
 005C2E17    pop         ecx
 005C2E18    mov         dword ptr fs:[eax],edx
 005C2E1B    push        5C2E33
 005C2E20    mov         edx,dword ptr [ebp-14]
 005C2E23    mov         eax,dword ptr [ebp-10]
 005C2E26    call        @FreeMem
 005C2E2B    ret
>005C2E2C    jmp         @HandleFinally
>005C2E31    jmp         005C2E20
 005C2E33    pop         ebx
 005C2E34    mov         esp,ebp
 005C2E36    pop         ebp
 005C2E37    ret         0C
end;*}

//005C2E3C
{*function sub_005C2E3C(?:Byte):?;
begin
 005C2E3C    push        ebp
 005C2E3D    mov         ebp,esp
 005C2E3F    add         esp,0FFFFFFF0
 005C2E42    mov         dword ptr [ebp-4],eax
 005C2E45    mov         word ptr [ebp-6],0
 005C2E4B    mov         eax,dword ptr [ebp-4]
 005C2E4E    mov         dword ptr [ebp-0C],eax
 005C2E51    mov         eax,dword ptr [ebp-4]
 005C2E54    add         eax,14
 005C2E57    mov         dword ptr [ebp-10],eax
>005C2E5A    jmp         005C2E6A
 005C2E5C    mov         eax,dword ptr [ebp-0C]
 005C2E5F    mov         ax,word ptr [eax]
 005C2E62    xor         word ptr [ebp-6],ax
 005C2E66    add         dword ptr [ebp-0C],2
 005C2E6A    mov         eax,dword ptr [ebp-0C]
 005C2E6D    cmp         eax,dword ptr [ebp-10]
>005C2E70    jl          005C2E5C
 005C2E72    mov         ax,word ptr [ebp-6]
 005C2E76    mov         esp,ebp
 005C2E78    pop         ebp
 005C2E79    ret
end;*}

//005C2E7C
{*procedure sub_005C2E7C(?:?; ?:?; ?:?);
begin
 005C2E7C    push        ebp
 005C2E7D    mov         ebp,esp
 005C2E7F    add         esp,0FFFFFF9C
 005C2E82    push        esi
 005C2E83    push        edi
 005C2E84    mov         dword ptr [ebp-0C],ecx
 005C2E87    mov         dword ptr [ebp-8],edx
 005C2E8A    mov         dword ptr [ebp-4],eax
 005C2E8D    xor         eax,eax
 005C2E8F    mov         dword ptr [ebp-4C],eax
 005C2E92    lea         eax,[ebp-64]
 005C2E95    push        eax
 005C2E96    push        54
 005C2E98    mov         eax,dword ptr [ebp-4]
 005C2E9B    push        eax
 005C2E9C    call        GDI32.GetObjectA
 005C2EA1    mov         dword ptr [ebp-10],eax
 005C2EA4    cmp         dword ptr [ebp-10],0
>005C2EA8    jne         005C2EB1
 005C2EAA    call        InvalidBitmap
>005C2EAF    jmp         005C2EF8
 005C2EB1    cmp         dword ptr [ebp-10],40
>005C2EB5    jl          005C2ECE
 005C2EB7    cmp         dword ptr [ebp-4C],28
>005C2EBB    jb          005C2ECE
 005C2EBD    mov         eax,dword ptr [ebp-8]
 005C2EC0    mov         edi,eax
 005C2EC2    lea         esi,[ebp-4C]
 005C2EC5    mov         ecx,0A
 005C2ECA    rep movs    dword ptr [edi],dword ptr [esi]
>005C2ECC    jmp         005C2EF8
 005C2ECE    mov         eax,dword ptr [ebp-8]
 005C2ED1    xor         ecx,ecx
 005C2ED3    mov         edx,28
 005C2ED8    call        @FillChar
 005C2EDD    mov         eax,dword ptr [ebp-8]
 005C2EE0    mov         dword ptr [eax],28
 005C2EE6    mov         eax,dword ptr [ebp-8]
 005C2EE9    mov         edx,dword ptr [ebp-60]
 005C2EEC    mov         dword ptr [eax+4],edx
 005C2EEF    mov         eax,dword ptr [ebp-8]
 005C2EF2    mov         edx,dword ptr [ebp-5C]
 005C2EF5    mov         dword ptr [eax+8],edx
 005C2EF8    mov         eax,dword ptr [ebp-0C]
 005C2EFB    sub         eax,2
>005C2EFE    je          005C2F0F
 005C2F00    dec         eax
 005C2F01    sub         eax,0E
>005C2F04    jb          005C2F1A
 005C2F06    sub         eax,0F0
>005C2F0B    jb          005C2F2E
>005C2F0D    jmp         005C2F42
 005C2F0F    mov         eax,dword ptr [ebp-8]
 005C2F12    mov         word ptr [eax+0E],1
>005C2F18    jmp         005C2F51
 005C2F1A    mov         eax,dword ptr [ebp-8]
 005C2F1D    mov         word ptr [eax+0E],4
 005C2F23    mov         eax,dword ptr [ebp-8]
 005C2F26    mov         edx,dword ptr [ebp-0C]
 005C2F29    mov         dword ptr [eax+20],edx
>005C2F2C    jmp         005C2F51
 005C2F2E    mov         eax,dword ptr [ebp-8]
 005C2F31    mov         word ptr [eax+0E],8
 005C2F37    mov         eax,dword ptr [ebp-8]
 005C2F3A    mov         edx,dword ptr [ebp-0C]
 005C2F3D    mov         dword ptr [eax+20],edx
>005C2F40    jmp         005C2F51
 005C2F42    mov         ax,word ptr [ebp-52]
 005C2F46    imul        word ptr [ebp-54]
 005C2F4A    mov         edx,dword ptr [ebp-8]
 005C2F4D    mov         word ptr [edx+0E],ax
 005C2F51    mov         eax,dword ptr [ebp-8]
 005C2F54    mov         word ptr [eax+0C],1
 005C2F5A    mov         eax,dword ptr [ebp-8]
 005C2F5D    mov         eax,dword ptr [eax+24]
 005C2F60    mov         edx,dword ptr [ebp-8]
 005C2F63    cmp         eax,dword ptr [edx+20]
>005C2F66    jbe         005C2F74
 005C2F68    mov         eax,dword ptr [ebp-8]
 005C2F6B    mov         eax,dword ptr [eax+20]
 005C2F6E    mov         edx,dword ptr [ebp-8]
 005C2F71    mov         dword ptr [edx+24],eax
 005C2F74    mov         eax,dword ptr [ebp-8]
 005C2F77    cmp         dword ptr [eax+14],0
>005C2F7B    jne         005C2FAA
 005C2F7D    mov         edx,dword ptr [ebp-8]
 005C2F80    movzx       edx,word ptr [edx+0E]
 005C2F84    mov         eax,dword ptr [ebp-8]
 005C2F87    mov         eax,dword ptr [eax+4]
 005C2F8A    mov         ecx,20
 005C2F8F    call        005C20B8
 005C2F94    mov         ecx,eax
 005C2F96    mov         eax,dword ptr [ebp-8]
 005C2F99    mov         eax,dword ptr [eax+8]
 005C2F9C    cdq
 005C2F9D    xor         eax,edx
 005C2F9F    sub         eax,edx
 005C2FA1    imul        ecx,eax
 005C2FA4    mov         eax,dword ptr [ebp-8]
 005C2FA7    mov         dword ptr [eax+14],ecx
 005C2FAA    pop         edi
 005C2FAB    pop         esi
 005C2FAC    mov         esp,ebp
 005C2FAE    pop         ebp
 005C2FAF    ret
end;*}

//005C2FB0
{*procedure sub_005C2FB0(?:HBITMAP; ?:?; ?:Int64; ?:?);
begin
 005C2FB0    push        ebp
 005C2FB1    mov         ebp,esp
 005C2FB3    add         esp,0FFFFFFCC
 005C2FB6    mov         dword ptr [ebp-0C],ecx
 005C2FB9    mov         dword ptr [ebp-8],edx
 005C2FBC    mov         dword ptr [ebp-4],eax
 005C2FBF    lea         edx,[ebp-34]
 005C2FC2    mov         ecx,dword ptr [ebp+8]
 005C2FC5    mov         eax,dword ptr [ebp-4]
 005C2FC8    call        005C2E7C
 005C2FCD    cmp         word ptr [ebp-26],8
>005C2FD2    jbe         005C2FEB
 005C2FD4    mov         eax,dword ptr [ebp-8]
 005C2FD7    mov         dword ptr [eax],28
 005C2FDD    test        byte ptr [ebp-24],3
>005C2FE1    je          005C3017
 005C2FE3    mov         eax,dword ptr [ebp-8]
 005C2FE6    add         dword ptr [eax],0C
>005C2FE9    jmp         005C3017
 005C2FEB    cmp         dword ptr [ebp-14],0
>005C2FEF    jne         005C3009
 005C2FF1    mov         cx,word ptr [ebp-26]
 005C2FF5    mov         eax,1
 005C2FFA    shl         eax,cl
 005C2FFC    shl         eax,2
 005C2FFF    add         eax,28
 005C3002    mov         edx,dword ptr [ebp-8]
 005C3005    mov         dword ptr [edx],eax
>005C3007    jmp         005C3017
 005C3009    mov         eax,dword ptr [ebp-14]
 005C300C    shl         eax,2
 005C300F    add         eax,28
 005C3012    mov         edx,dword ptr [ebp-8]
 005C3015    mov         dword ptr [edx],eax
 005C3017    mov         eax,dword ptr [ebp-0C]
 005C301A    mov         edx,dword ptr [ebp-20]
 005C301D    mov         dword ptr [eax],edx
 005C301F    mov         esp,ebp
 005C3021    pop         ebp
 005C3022    ret         4
end;*}

//005C3028
{*procedure sub_005C3028(?:?; ?:?; ?:?);
begin
 005C3028    push        ebp
 005C3029    mov         ebp,esp
 005C302B    add         esp,0FFFFFFF4
 005C302E    mov         dword ptr [ebp-0C],ecx
 005C3031    mov         dword ptr [ebp-8],edx
 005C3034    mov         dword ptr [ebp-4],eax
 005C3037    push        0
 005C3039    mov         ecx,dword ptr [ebp-0C]
 005C303C    mov         edx,dword ptr [ebp-8]
 005C303F    mov         eax,dword ptr [ebp-4]
 005C3042    call        005C2FB0
 005C3047    mov         esp,ebp
 005C3049    pop         ebp
 005C304A    ret
end;*}

//005C304C
{*function sub_005C304C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005C304C    push        ebp
 005C304D    mov         ebp,esp
 005C304F    add         esp,0FFFFFFE8
 005C3052    mov         dword ptr [ebp-0C],ecx
 005C3055    mov         dword ptr [ebp-8],edx
 005C3058    mov         dword ptr [ebp-4],eax
 005C305B    mov         edx,dword ptr [ebp-0C]
 005C305E    mov         ecx,dword ptr [ebp+8]
 005C3061    mov         eax,dword ptr [ebp-4]
 005C3064    call        005C2E7C
 005C3069    xor         eax,eax
 005C306B    mov         dword ptr [ebp-14],eax
 005C306E    push        0
 005C3070    call        GDI32.CreateCompatibleDC
 005C3075    mov         dword ptr [ebp-18],eax
 005C3078    xor         eax,eax
 005C307A    push        ebp
 005C307B    push        5C30F9
 005C3080    push        dword ptr fs:[eax]
 005C3083    mov         dword ptr fs:[eax],esp
 005C3086    cmp         dword ptr [ebp-8],0
>005C308A    je          005C30A7
 005C308C    push        0
 005C308E    mov         eax,dword ptr [ebp-8]
 005C3091    push        eax
 005C3092    mov         eax,dword ptr [ebp-18]
 005C3095    push        eax
 005C3096    call        GDI32.SelectPalette
 005C309B    mov         dword ptr [ebp-14],eax
 005C309E    mov         eax,dword ptr [ebp-18]
 005C30A1    push        eax
 005C30A2    call        GDI32.RealizePalette
 005C30A7    push        0
 005C30A9    mov         eax,dword ptr [ebp-0C]
 005C30AC    push        eax
 005C30AD    mov         eax,dword ptr [ebp+0C]
 005C30B0    push        eax
 005C30B1    mov         eax,dword ptr [ebp-0C]
 005C30B4    mov         eax,dword ptr [eax+8]
 005C30B7    push        eax
 005C30B8    push        0
 005C30BA    mov         eax,dword ptr [ebp-4]
 005C30BD    push        eax
 005C30BE    mov         eax,dword ptr [ebp-18]
 005C30C1    push        eax
 005C30C2    call        GDI32.GetDIBits
 005C30C7    test        eax,eax
 005C30C9    setne       byte ptr [ebp-0D]
 005C30CD    xor         eax,eax
 005C30CF    pop         edx
 005C30D0    pop         ecx
 005C30D1    pop         ecx
 005C30D2    mov         dword ptr fs:[eax],edx
 005C30D5    push        5C3100
 005C30DA    cmp         dword ptr [ebp-14],0
>005C30DE    je          005C30EF
 005C30E0    push        0
 005C30E2    mov         eax,dword ptr [ebp-14]
 005C30E5    push        eax
 005C30E6    mov         eax,dword ptr [ebp-18]
 005C30E9    push        eax
 005C30EA    call        GDI32.SelectPalette
 005C30EF    mov         eax,dword ptr [ebp-18]
 005C30F2    push        eax
 005C30F3    call        GDI32.DeleteDC
 005C30F8    ret
>005C30F9    jmp         @HandleFinally
>005C30FE    jmp         005C30DA
 005C3100    mov         al,byte ptr [ebp-0D]
 005C3103    mov         esp,ebp
 005C3105    pop         ebp
 005C3106    ret         8
end;*}

//005C310C
{*function sub_005C310C(?:?; ?:?; ?:?; ?:?):?;
begin
 005C310C    push        ebp
 005C310D    mov         ebp,esp
 005C310F    add         esp,0FFFFFFF0
 005C3112    mov         dword ptr [ebp-0C],ecx
 005C3115    mov         dword ptr [ebp-8],edx
 005C3118    mov         dword ptr [ebp-4],eax
 005C311B    mov         eax,dword ptr [ebp+8]
 005C311E    push        eax
 005C311F    push        0
 005C3121    mov         ecx,dword ptr [ebp-0C]
 005C3124    mov         edx,dword ptr [ebp-8]
 005C3127    mov         eax,dword ptr [ebp-4]
 005C312A    call        005C304C
 005C312F    mov         byte ptr [ebp-0D],al
 005C3132    mov         al,byte ptr [ebp-0D]
 005C3135    mov         esp,ebp
 005C3137    pop         ebp
 005C3138    ret         4
end;*}

//005C313C
procedure sub_005C313C;
begin
{*
 005C313C    ret
*}
end;

//005C3140
procedure sub_005C3140(?:LongBool);
begin
{*
 005C3140    push        ebp
 005C3141    mov         ebp,esp
 005C3143    push        ecx
 005C3144    mov         dword ptr [ebp-4],eax
 005C3147    cmp         dword ptr [ebp-4],0
>005C314B    jne         005C3152
 005C314D    call        005C313C
 005C3152    pop         ecx
 005C3153    pop         ebp
 005C3154    ret
*}
end;

//005C3158
{*procedure sub_005C3158(?:TMemoryStream; ?:?; ?:?);
begin
 005C3158    push        ebp
 005C3159    mov         ebp,esp
 005C315B    add         esp,0FFFFFF9C
 005C315E    push        ebx
 005C315F    mov         byte ptr [ebp-9],cl
 005C3162    mov         dword ptr [ebp-8],edx
 005C3165    mov         dword ptr [ebp-4],eax
 005C3168    lea         eax,[ebp-32]
 005C316B    xor         ecx,ecx
 005C316D    mov         edx,6
 005C3172    call        @FillChar
 005C3177    lea         eax,[ebp-64]
 005C317A    xor         ecx,ecx
 005C317C    mov         edx,10
 005C3181    call        @FillChar
 005C3186    lea         eax,[ebp-54]
 005C3189    push        eax
 005C318A    mov         eax,dword ptr [ebp-8]
 005C318D    push        eax
 005C318E    call        USER32.GetIconInfo
 005C3193    call        005C3140
 005C3198    xor         eax,eax
 005C319A    push        ebp
 005C319B    push        5C3365
 005C31A0    push        dword ptr fs:[eax]
 005C31A3    mov         dword ptr fs:[eax],esp
 005C31A6    push        2
 005C31A8    lea         ecx,[ebp-18]
 005C31AB    lea         edx,[ebp-10]
 005C31AE    mov         eax,dword ptr [ebp-48]
 005C31B1    call        005C2FB0
 005C31B6    push        10
 005C31B8    lea         ecx,[ebp-1C]
 005C31BB    lea         edx,[ebp-14]
 005C31BE    mov         eax,dword ptr [ebp-44]
 005C31C1    call        005C2FB0
 005C31C6    xor         eax,eax
 005C31C8    mov         dword ptr [ebp-20],eax
 005C31CB    xor         eax,eax
 005C31CD    mov         dword ptr [ebp-24],eax
 005C31D0    xor         eax,eax
 005C31D2    mov         dword ptr [ebp-28],eax
 005C31D5    xor         eax,eax
 005C31D7    mov         dword ptr [ebp-2C],eax
 005C31DA    xor         eax,eax
 005C31DC    push        ebp
 005C31DD    push        5C333E
 005C31E2    push        dword ptr fs:[eax]
 005C31E5    mov         dword ptr fs:[eax],esp
 005C31E8    mov         eax,dword ptr [ebp-10]
 005C31EB    call        0065744C
 005C31F0    mov         dword ptr [ebp-20],eax
 005C31F3    mov         eax,dword ptr [ebp-18]
 005C31F6    call        0065744C
 005C31FB    mov         dword ptr [ebp-24],eax
 005C31FE    mov         eax,dword ptr [ebp-14]
 005C3201    call        0065744C
 005C3206    mov         dword ptr [ebp-28],eax
 005C3209    mov         eax,dword ptr [ebp-1C]
 005C320C    call        0065744C
 005C3211    mov         dword ptr [ebp-2C],eax
 005C3214    mov         eax,dword ptr [ebp-24]
 005C3217    push        eax
 005C3218    push        2
 005C321A    mov         ecx,dword ptr [ebp-20]
 005C321D    xor         edx,edx
 005C321F    mov         eax,dword ptr [ebp-48]
 005C3222    call        005C304C
 005C3227    mov         eax,dword ptr [ebp-2C]
 005C322A    push        eax
 005C322B    push        10
 005C322D    mov         ecx,dword ptr [ebp-28]
 005C3230    xor         edx,edx
 005C3232    mov         eax,dword ptr [ebp-44]
 005C3235    call        005C304C
 005C323A    cmp         byte ptr [ebp-9],0
>005C323E    je          005C325F
 005C3240    mov         eax,dword ptr [ebp-14]
 005C3243    add         eax,16
 005C3246    add         eax,dword ptr [ebp-1C]
 005C3249    add         eax,dword ptr [ebp-18]
 005C324C    mov         dword ptr [ebp-38],eax
 005C324F    lea         edx,[ebp-38]
 005C3252    mov         ecx,4
 005C3257    mov         eax,dword ptr [ebp-4]
 005C325A    mov         ebx,dword ptr [eax]
 005C325C    call        dword ptr [ebx+0C]
 005C325F    mov         word ptr [ebp-30],1
 005C3265    mov         word ptr [ebp-2E],1
 005C326B    lea         edx,[ebp-32]
 005C326E    mov         ecx,6
 005C3273    mov         eax,dword ptr [ebp-4]
 005C3276    mov         ebx,dword ptr [eax]
 005C3278    call        dword ptr [ebx+0C]
 005C327B    mov         eax,dword ptr [ebp-28]
 005C327E    mov         dword ptr [ebp-3C],eax
 005C3281    mov         eax,dword ptr [ebp-3C]
 005C3284    mov         al,byte ptr [eax+4]
 005C3287    mov         byte ptr [ebp-64],al
 005C328A    mov         eax,dword ptr [ebp-3C]
 005C328D    mov         al,byte ptr [eax+8]
 005C3290    mov         byte ptr [ebp-63],al
 005C3293    mov         eax,dword ptr [ebp-3C]
 005C3296    mov         ax,word ptr [eax+0C]
 005C329A    mov         edx,dword ptr [ebp-3C]
 005C329D    imul        word ptr [edx+0E]
 005C32A1    mov         word ptr [ebp-62],ax
 005C32A5    mov         eax,dword ptr [ebp-14]
 005C32A8    add         eax,dword ptr [ebp-1C]
 005C32AB    add         eax,dword ptr [ebp-18]
 005C32AE    mov         dword ptr [ebp-5C],eax
 005C32B1    mov         dword ptr [ebp-58],16
 005C32B8    lea         edx,[ebp-64]
 005C32BB    mov         ecx,10
 005C32C0    mov         eax,dword ptr [ebp-4]
 005C32C3    mov         ebx,dword ptr [eax]
 005C32C5    call        dword ptr [ebx+0C]
 005C32C8    mov         eax,dword ptr [ebp-28]
 005C32CB    mov         dword ptr [ebp-40],eax
 005C32CE    mov         eax,dword ptr [ebp-40]
 005C32D1    mov         eax,dword ptr [eax+8]
 005C32D4    mov         edx,dword ptr [ebp-40]
 005C32D7    add         dword ptr [edx+8],eax
 005C32DA    mov         edx,dword ptr [ebp-28]
 005C32DD    mov         ecx,dword ptr [ebp-14]
 005C32E0    mov         eax,dword ptr [ebp-4]
 005C32E3    mov         ebx,dword ptr [eax]
 005C32E5    call        dword ptr [ebx+0C]
 005C32E8    mov         edx,dword ptr [ebp-2C]
 005C32EB    mov         ecx,dword ptr [ebp-1C]
 005C32EE    mov         eax,dword ptr [ebp-4]
 005C32F1    mov         ebx,dword ptr [eax]
 005C32F3    call        dword ptr [ebx+0C]
 005C32F6    mov         edx,dword ptr [ebp-24]
 005C32F9    mov         ecx,dword ptr [ebp-18]
 005C32FC    mov         eax,dword ptr [ebp-4]
 005C32FF    mov         ebx,dword ptr [eax]
 005C3301    call        dword ptr [ebx+0C]
 005C3304    xor         eax,eax
 005C3306    pop         edx
 005C3307    pop         ecx
 005C3308    pop         ecx
 005C3309    mov         dword ptr fs:[eax],edx
 005C330C    push        5C3345
 005C3311    mov         edx,dword ptr [ebp-14]
 005C3314    mov         eax,dword ptr [ebp-28]
 005C3317    call        @FreeMem
 005C331C    mov         edx,dword ptr [ebp-1C]
 005C331F    mov         eax,dword ptr [ebp-2C]
 005C3322    call        @FreeMem
 005C3327    mov         edx,dword ptr [ebp-10]
 005C332A    mov         eax,dword ptr [ebp-20]
 005C332D    call        @FreeMem
 005C3332    mov         edx,dword ptr [ebp-18]
 005C3335    mov         eax,dword ptr [ebp-24]
 005C3338    call        @FreeMem
 005C333D    ret
>005C333E    jmp         @HandleFinally
>005C3343    jmp         005C3311
 005C3345    xor         eax,eax
 005C3347    pop         edx
 005C3348    pop         ecx
 005C3349    pop         ecx
 005C334A    mov         dword ptr fs:[eax],edx
 005C334D    push        5C336C
 005C3352    mov         eax,dword ptr [ebp-44]
 005C3355    push        eax
 005C3356    call        GDI32.DeleteObject
 005C335B    mov         eax,dword ptr [ebp-48]
 005C335E    push        eax
 005C335F    call        GDI32.DeleteObject
 005C3364    ret
>005C3365    jmp         @HandleFinally
>005C336A    jmp         005C3352
 005C336C    pop         ebx
 005C336D    mov         esp,ebp
 005C336F    pop         ebp
 005C3370    ret
end;*}

//005C3374
constructor TGraphic.Create;
begin
{*
 005C3374    push        ebp
 005C3375    mov         ebp,esp
 005C3377    add         esp,0FFFFFFF8
 005C337A    test        dl,dl
>005C337C    je          005C3386
 005C337E    add         esp,0FFFFFFF0
 005C3381    call        @ClassCreate
 005C3386    mov         byte ptr [ebp-5],dl
 005C3389    mov         dword ptr [ebp-4],eax
 005C338C    xor         edx,edx
 005C338E    mov         eax,dword ptr [ebp-4]
 005C3391    call        TObject.Create
 005C3396    mov         eax,dword ptr [ebp-4]
 005C3399    cmp         byte ptr [ebp-5],0
>005C339D    je          005C33AE
 005C339F    call        @AfterConstruction
 005C33A4    pop         dword ptr fs:[0]
 005C33AB    add         esp,0C
 005C33AE    mov         eax,dword ptr [ebp-4]
 005C33B1    pop         ecx
 005C33B2    pop         ecx
 005C33B3    pop         ebp
 005C33B4    ret
*}
end;

//005C33B8
{*function sub_005C33B8(?:?):?;
begin
 005C33B8    push        ebp
 005C33B9    mov         ebp,esp
 005C33BB    add         esp,0FFFFFFF8
 005C33BE    push        ebx
 005C33BF    mov         dword ptr [ebp-8],edx
 005C33C2    mov         dword ptr [ebp-4],eax
 005C33C5    mov         eax,dword ptr [ebp-4]
 005C33C8    mov         byte ptr [eax+20],1;TGraphic.FModified:Boolean
 005C33CC    mov         eax,dword ptr [ebp-4]
 005C33CF    cmp         word ptr [eax+12],0;TGraphic.?f12:word
>005C33D4    je          005C33E2
 005C33D6    mov         ebx,dword ptr [ebp-4]
 005C33D9    mov         edx,dword ptr [ebp-4]
 005C33DC    mov         eax,dword ptr [ebx+14];TGraphic.?f14:TPicture
 005C33DF    call        dword ptr [ebx+10];TGraphic.FOnChange
 005C33E2    pop         ebx
 005C33E3    pop         ecx
 005C33E4    pop         ecx
 005C33E5    pop         ebp
 005C33E6    ret
end;*}

//005C33E8
{*function sub_005C33E8(?:?):?;
begin
 005C33E8    push        ebp
 005C33E9    mov         ebp,esp
 005C33EB    push        ecx
 005C33EC    mov         eax,dword ptr [ebp+8]
 005C33EF    mov         eax,dword ptr [eax-4]
 005C33F2    cmp         dword ptr [eax+20],0
>005C33F6    je          005C3433
 005C33F8    mov         eax,dword ptr [ebp+8]
 005C33FB    mov         eax,dword ptr [eax-4]
 005C33FE    mov         eax,dword ptr [eax+20]
 005C3401    mov         edx,dword ptr ds:[5BE9D4];TGraphic
 005C3407    call        @IsClass
 005C340C    test        al,al
>005C340E    je          005C342C
 005C3410    mov         eax,dword ptr [ebp+8]
 005C3413    mov         eax,dword ptr [eax-4]
 005C3416    mov         edx,dword ptr [eax+20]
 005C3419    mov         eax,dword ptr [ebp+8]
 005C341C    mov         eax,dword ptr [eax-8]
 005C341F    mov         ecx,dword ptr [eax]
 005C3421    call        dword ptr [ecx+18]
 005C3424    test        al,al
>005C3426    je          005C342C
 005C3428    xor         eax,eax
>005C342A    jmp         005C342E
 005C342C    mov         al,1
 005C342E    mov         byte ptr [ebp-1],al
>005C3431    jmp         005C3443
 005C3433    mov         eax,dword ptr [ebp+8]
 005C3436    mov         eax,dword ptr [eax-8]
 005C3439    mov         edx,dword ptr [eax]
 005C343B    call        dword ptr [edx+1C]
 005C343E    xor         al,1
 005C3440    mov         byte ptr [ebp-1],al
 005C3443    mov         al,byte ptr [ebp-1]
 005C3446    pop         ecx
 005C3447    pop         ebp
 005C3448    ret
end;*}

//005C344C
procedure TGraphic.DefineProperties(Filer:TFiler);
begin
{*
 005C344C    push        ebp
 005C344D    mov         ebp,esp
 005C344F    add         esp,0FFFFFFF8
 005C3452    push        ebx
 005C3453    mov         dword ptr [ebp-4],edx
 005C3456    mov         dword ptr [ebp-8],eax
 005C3459    mov         eax,dword ptr [ebp-8]
 005C345C    push        eax
 005C345D    mov         eax,dword ptr [eax]
 005C345F    mov         eax,dword ptr [eax+30]
 005C3462    push        eax
 005C3463    mov         eax,dword ptr [ebp-8]
 005C3466    push        eax
 005C3467    mov         eax,dword ptr [eax]
 005C3469    mov         eax,dword ptr [eax+44]
 005C346C    push        eax
 005C346D    push        ebp
 005C346E    call        005C33E8
 005C3473    pop         ecx
 005C3474    mov         ecx,eax
 005C3476    mov         edx,5C3490;'Data'
 005C347B    mov         eax,dword ptr [ebp-4]
 005C347E    mov         ebx,dword ptr [eax]
 005C3480    call        dword ptr [ebx+8]
 005C3483    pop         ebx
 005C3484    pop         ecx
 005C3485    pop         ecx
 005C3486    pop         ebp
 005C3487    ret
*}
end;

//005C3498
function TGraphic.Equals(Graphic:TGraphic):Boolean;
begin
{*
 005C3498    push        ebp
 005C3499    mov         ebp,esp
 005C349B    add         esp,0FFFFFFEC
 005C349E    push        ebx
 005C349F    mov         dword ptr [ebp-8],edx
 005C34A2    mov         dword ptr [ebp-4],eax
 005C34A5    cmp         dword ptr [ebp-8],0
>005C34A9    je          005C34C1
 005C34AB    mov         eax,dword ptr [ebp-4]
 005C34AE    call        TObject.ClassType
 005C34B3    mov         ebx,eax
 005C34B5    mov         eax,dword ptr [ebp-8]
 005C34B8    call        TObject.ClassType
 005C34BD    cmp         ebx,eax
>005C34BF    je          005C34C5
 005C34C1    xor         eax,eax
>005C34C3    jmp         005C34C7
 005C34C5    mov         al,1
 005C34C7    mov         byte ptr [ebp-9],al
 005C34CA    mov         eax,dword ptr [ebp-4]
 005C34CD    mov         edx,dword ptr [eax]
 005C34CF    call        dword ptr [edx+1C]
 005C34D2    test        al,al
>005C34D4    jne         005C34E2
 005C34D6    mov         eax,dword ptr [ebp-8]
 005C34D9    mov         edx,dword ptr [eax]
 005C34DB    call        dword ptr [edx+1C]
 005C34DE    test        al,al
>005C34E0    je          005C3508
 005C34E2    mov         eax,dword ptr [ebp-4]
 005C34E5    mov         edx,dword ptr [eax]
 005C34E7    call        dword ptr [edx+1C]
 005C34EA    test        al,al
>005C34EC    je          005C34FA
 005C34EE    mov         eax,dword ptr [ebp-8]
 005C34F1    mov         edx,dword ptr [eax]
 005C34F3    call        dword ptr [edx+1C]
 005C34F6    test        al,al
>005C34F8    jne         005C34FE
 005C34FA    xor         eax,eax
>005C34FC    jmp         005C3500
 005C34FE    mov         al,1
 005C3500    mov         byte ptr [ebp-9],al
>005C3503    jmp         005C35E3
 005C3508    cmp         byte ptr [ebp-9],0
>005C350C    je          005C35E3
 005C3512    mov         dl,1
 005C3514    mov         eax,[00642BA0];TMemoryStream
 005C3519    call        TObject.Create
 005C351E    mov         dword ptr [ebp-10],eax
 005C3521    xor         eax,eax
 005C3523    push        ebp
 005C3524    push        5C35DC
 005C3529    push        dword ptr fs:[eax]
 005C352C    mov         dword ptr fs:[eax],esp
 005C352F    mov         edx,dword ptr [ebp-10]
 005C3532    mov         eax,dword ptr [ebp-4]
 005C3535    mov         ecx,dword ptr [eax]
 005C3537    call        dword ptr [ecx+44]
 005C353A    mov         dl,1
 005C353C    mov         eax,[00642BA0];TMemoryStream
 005C3541    call        TObject.Create
 005C3546    mov         dword ptr [ebp-14],eax
 005C3549    xor         eax,eax
 005C354B    push        ebp
 005C354C    push        5C35BF
 005C3551    push        dword ptr fs:[eax]
 005C3554    mov         dword ptr fs:[eax],esp
 005C3557    mov         edx,dword ptr [ebp-14]
 005C355A    mov         eax,dword ptr [ebp-8]
 005C355D    mov         ecx,dword ptr [eax]
 005C355F    call        dword ptr [ecx+44]
 005C3562    mov         eax,dword ptr [ebp-10]
 005C3565    call        TStream.GetSize
 005C356A    push        edx
 005C356B    push        eax
 005C356C    mov         eax,dword ptr [ebp-14]
 005C356F    call        TStream.GetSize
 005C3574    cmp         edx,dword ptr [esp+4]
>005C3578    jne         005C357D
 005C357A    cmp         eax,dword ptr [esp]
 005C357D    pop         edx
 005C357E    pop         eax
>005C357F    jne         005C35A0
 005C3581    mov         eax,dword ptr [ebp-10]
 005C3584    call        TStream.GetSize
 005C3589    mov         ecx,eax
 005C358B    mov         eax,dword ptr [ebp-14]
 005C358E    mov         edx,dword ptr [eax+4]
 005C3591    mov         eax,dword ptr [ebp-10]
 005C3594    mov         eax,dword ptr [eax+4]
 005C3597    call        CompareMem
 005C359C    test        al,al
>005C359E    jne         005C35A4
 005C35A0    xor         eax,eax
>005C35A2    jmp         005C35A6
 005C35A4    mov         al,1
 005C35A6    mov         byte ptr [ebp-9],al
 005C35A9    xor         eax,eax
 005C35AB    pop         edx
 005C35AC    pop         ecx
 005C35AD    pop         ecx
 005C35AE    mov         dword ptr fs:[eax],edx
 005C35B1    push        5C35C6
 005C35B6    mov         eax,dword ptr [ebp-14]
 005C35B9    call        TObject.Free
 005C35BE    ret
>005C35BF    jmp         @HandleFinally
>005C35C4    jmp         005C35B6
 005C35C6    xor         eax,eax
 005C35C8    pop         edx
 005C35C9    pop         ecx
 005C35CA    pop         ecx
 005C35CB    mov         dword ptr fs:[eax],edx
 005C35CE    push        5C35E3
 005C35D3    mov         eax,dword ptr [ebp-10]
 005C35D6    call        TObject.Free
 005C35DB    ret
>005C35DC    jmp         @HandleFinally
>005C35E1    jmp         005C35D3
 005C35E3    mov         al,byte ptr [ebp-9]
 005C35E6    pop         ebx
 005C35E7    mov         esp,ebp
 005C35E9    pop         ebp
 005C35EA    ret
*}
end;

//005C35EC
{*function sub_005C35EC:?;
begin
 005C35EC    push        ebp
 005C35ED    mov         ebp,esp
 005C35EF    add         esp,0FFFFFFF8
 005C35F2    mov         dword ptr [ebp-4],eax
 005C35F5    xor         eax,eax
 005C35F7    mov         dword ptr [ebp-8],eax
 005C35FA    mov         eax,dword ptr [ebp-8]
 005C35FD    pop         ecx
 005C35FE    pop         ecx
 005C35FF    pop         ebp
 005C3600    ret
end;*}

//005C3604
{*function sub_005C3604:?;
begin
 005C3604    push        ebp
 005C3605    mov         ebp,esp
 005C3607    add         esp,0FFFFFFF8
 005C360A    mov         dword ptr [ebp-4],eax
 005C360D    mov         eax,dword ptr [ebp-4]
 005C3610    mov         al,byte ptr [eax+21];TGraphic.FTransparent:Boolean
 005C3613    mov         byte ptr [ebp-5],al
 005C3616    mov         al,byte ptr [ebp-5]
 005C3619    pop         ecx
 005C361A    pop         ecx
 005C361B    pop         ebp
 005C361C    ret
end;*}

//005C3620
{*procedure sub_005C3620(?:?);
begin
 005C3620    push        ebp
 005C3621    mov         ebp,esp
 005C3623    add         esp,0FFFFFFF4
 005C3626    mov         dword ptr [ebp-8],edx
 005C3629    mov         dword ptr [ebp-4],eax
 005C362C    push        20
 005C362E    mov         ecx,dword ptr [ebp-8]
 005C3631    mov         dl,1
 005C3633    mov         eax,[00642AB0];TFileStream
 005C3638    call        TFileStream.Create;TFileStream.Create
 005C363D    mov         dword ptr [ebp-0C],eax
 005C3640    xor         eax,eax
 005C3642    push        ebp
 005C3643    push        5C366F
 005C3648    push        dword ptr fs:[eax]
 005C364B    mov         dword ptr fs:[eax],esp
 005C364E    mov         edx,dword ptr [ebp-0C]
 005C3651    mov         eax,dword ptr [ebp-4]
 005C3654    mov         ecx,dword ptr [eax]
 005C3656    call        dword ptr [ecx+54];TGraphic.LoadFromStream
 005C3659    xor         eax,eax
 005C365B    pop         edx
 005C365C    pop         ecx
 005C365D    pop         ecx
 005C365E    mov         dword ptr fs:[eax],edx
 005C3661    push        5C3676
 005C3666    mov         eax,dword ptr [ebp-0C]
 005C3669    call        TObject.Free
 005C366E    ret
>005C366F    jmp         @HandleFinally
>005C3674    jmp         005C3666
 005C3676    mov         esp,ebp
 005C3678    pop         ebp
 005C3679    ret
end;*}

//005C367C
{*procedure TGraphic.sub_005C367C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005C367C    push        ebp
 005C367D    mov         ebp,esp
 005C367F    add         esp,0FFFFFFF4
 005C3682    push        ebx
 005C3683    mov         byte ptr [ebp-9],cl
 005C3686    mov         dword ptr [ebp-8],edx
 005C3689    mov         dword ptr [ebp-4],eax
 005C368C    mov         eax,dword ptr [ebp-4]
 005C368F    cmp         word ptr [eax+1A],0;TGraphic.?f1A:word
>005C3694    je          005C36B5
 005C3696    mov         al,byte ptr [ebp+14]
 005C3699    push        eax
 005C369A    mov         al,byte ptr [ebp+10]
 005C369D    push        eax
 005C369E    mov         eax,dword ptr [ebp+0C]
 005C36A1    push        eax
 005C36A2    mov         eax,dword ptr [ebp+8]
 005C36A5    push        eax
 005C36A6    mov         ebx,dword ptr [ebp-4]
 005C36A9    mov         cl,byte ptr [ebp-9]
 005C36AC    mov         edx,dword ptr [ebp-8]
 005C36AF    mov         eax,dword ptr [ebx+1C];TGraphic.?f1C:dword
 005C36B2    call        dword ptr [ebx+18];TGraphic.FOnProgress
 005C36B5    pop         ebx
 005C36B6    mov         esp,ebp
 005C36B8    pop         ebp
 005C36B9    ret         10
end;*}

//005C36BC
{*procedure sub_005C36BC(?:?);
begin
 005C36BC    push        ebp
 005C36BD    mov         ebp,esp
 005C36BF    add         esp,0FFFFFFF8
 005C36C2    mov         dword ptr [ebp-8],edx
 005C36C5    mov         dword ptr [ebp-4],eax
 005C36C8    mov         edx,dword ptr [ebp-8]
 005C36CB    mov         eax,dword ptr [ebp-4]
 005C36CE    mov         ecx,dword ptr [eax]
 005C36D0    call        dword ptr [ecx+54];TGraphic.LoadFromStream
 005C36D3    pop         ecx
 005C36D4    pop         ecx
 005C36D5    pop         ebp
 005C36D6    ret
end;*}

//005C36D8
{*procedure sub_005C36D8(?:?);
begin
 005C36D8    push        ebp
 005C36D9    mov         ebp,esp
 005C36DB    add         esp,0FFFFFFF4
 005C36DE    mov         dword ptr [ebp-8],edx
 005C36E1    mov         dword ptr [ebp-4],eax
 005C36E4    push        0FFFF
 005C36E9    mov         ecx,dword ptr [ebp-8]
 005C36EC    mov         dl,1
 005C36EE    mov         eax,[00642AB0];TFileStream
 005C36F3    call        TFileStream.Create;TFileStream.Create
 005C36F8    mov         dword ptr [ebp-0C],eax
 005C36FB    xor         eax,eax
 005C36FD    push        ebp
 005C36FE    push        5C372A
 005C3703    push        dword ptr fs:[eax]
 005C3706    mov         dword ptr fs:[eax],esp
 005C3709    mov         edx,dword ptr [ebp-0C]
 005C370C    mov         eax,dword ptr [ebp-4]
 005C370F    mov         ecx,dword ptr [eax]
 005C3711    call        dword ptr [ecx+58];TGraphic.SaveToStream
 005C3714    xor         eax,eax
 005C3716    pop         edx
 005C3717    pop         ecx
 005C3718    pop         ecx
 005C3719    mov         dword ptr fs:[eax],edx
 005C371C    push        5C3731
 005C3721    mov         eax,dword ptr [ebp-0C]
 005C3724    call        TObject.Free
 005C3729    ret
>005C372A    jmp         @HandleFinally
>005C372F    jmp         005C3721
 005C3731    mov         esp,ebp
 005C3733    pop         ebp
 005C3734    ret
end;*}

//005C3738
{*procedure sub_005C3738(?:?);
begin
 005C3738    push        ebp
 005C3739    mov         ebp,esp
 005C373B    add         esp,0FFFFFFF8
 005C373E    mov         dword ptr [ebp-8],edx
 005C3741    mov         dword ptr [ebp-4],eax
 005C3744    pop         ecx
 005C3745    pop         ecx
 005C3746    pop         ebp
 005C3747    ret
end;*}

//005C3748
{*procedure sub_005C3748(?:?);
begin
 005C3748    push        ebp
 005C3749    mov         ebp,esp
 005C374B    add         esp,0FFFFFFF8
 005C374E    mov         byte ptr [ebp-5],dl
 005C3751    mov         dword ptr [ebp-4],eax
 005C3754    mov         al,byte ptr [ebp-5]
 005C3757    mov         edx,dword ptr [ebp-4]
 005C375A    cmp         al,byte ptr [edx+21];TGraphic.FTransparent:Boolean
>005C375D    je          005C3773
 005C375F    mov         al,byte ptr [ebp-5]
 005C3762    mov         edx,dword ptr [ebp-4]
 005C3765    mov         byte ptr [edx+21],al;TGraphic.FTransparent:Boolean
 005C3768    mov         edx,dword ptr [ebp-4]
 005C376B    mov         eax,dword ptr [ebp-4]
 005C376E    mov         ecx,dword ptr [eax]
 005C3770    call        dword ptr [ecx+10];TGraphic.sub_005C33B8
 005C3773    pop         ecx
 005C3774    pop         ecx
 005C3775    pop         ebp
 005C3776    ret
end;*}

//005C3778
{*procedure sub_005C3778(?:?);
begin
 005C3778    push        ebp
 005C3779    mov         ebp,esp
 005C377B    add         esp,0FFFFFFF8
 005C377E    mov         dword ptr [ebp-8],edx
 005C3781    mov         dword ptr [ebp-4],eax
 005C3784    mov         edx,dword ptr [ebp-8]
 005C3787    mov         eax,dword ptr [ebp-4]
 005C378A    mov         ecx,dword ptr [eax]
 005C378C    call        dword ptr [ecx+58];TGraphic.SaveToStream
 005C378F    pop         ecx
 005C3790    pop         ecx
 005C3791    pop         ebp
 005C3792    ret
end;*}

//005C3830
constructor TFileFormatsList.Create;
begin
{*
 005C3830    push        ebp
 005C3831    mov         ebp,esp
 005C3833    xor         ecx,ecx
 005C3835    push        ecx
 005C3836    push        ecx
 005C3837    push        ecx
 005C3838    push        ecx
 005C3839    push        ecx
 005C383A    push        ecx
 005C383B    test        dl,dl
>005C383D    je          005C3847
 005C383F    add         esp,0FFFFFFF0
 005C3842    call        @ClassCreate
 005C3847    mov         byte ptr [ebp-5],dl
 005C384A    mov         dword ptr [ebp-4],eax
 005C384D    xor         eax,eax
 005C384F    push        ebp
 005C3850    push        5C3914
 005C3855    push        dword ptr fs:[eax]
 005C3858    mov         dword ptr fs:[eax],esp
 005C385B    xor         edx,edx
 005C385D    mov         eax,dword ptr [ebp-4]
 005C3860    call        TObject.Create
 005C3865    push        0
 005C3867    mov         eax,[005BEC94];TMetafile
 005C386C    push        eax
 005C386D    lea         edx,[ebp-0C]
 005C3870    mov         eax,[006E9EB8];^gvar_0063CB80
 005C3875    call        LoadResString
 005C387A    mov         ecx,dword ptr [ebp-0C]
 005C387D    mov         edx,5C3944;'wmf'
 005C3882    mov         eax,dword ptr [ebp-4]
 005C3885    call        005C39D4
 005C388A    push        0
 005C388C    mov         eax,[005BEC94];TMetafile
 005C3891    push        eax
 005C3892    lea         edx,[ebp-10]
 005C3895    mov         eax,[006E9EBC];^gvar_0063CB88
 005C389A    call        LoadResString
 005C389F    mov         ecx,dword ptr [ebp-10]
 005C38A2    mov         edx,5C3950;'emf'
 005C38A7    mov         eax,dword ptr [ebp-4]
 005C38AA    call        005C39D4
 005C38AF    push        0
 005C38B1    mov         eax,[005BEF18];TIcon
 005C38B6    push        eax
 005C38B7    lea         edx,[ebp-14]
 005C38BA    mov         eax,[006E9EC0];^gvar_0063CB90
 005C38BF    call        LoadResString
 005C38C4    mov         ecx,dword ptr [ebp-14]
 005C38C7    mov         edx,5C395C;'ico'
 005C38CC    mov         eax,dword ptr [ebp-4]
 005C38CF    call        005C39D4
 005C38D4    push        0
 005C38D6    mov         eax,[005BEDD4];TBitmap
 005C38DB    push        eax
 005C38DC    lea         edx,[ebp-18]
 005C38DF    mov         eax,[006E9EC4];^gvar_0063CB98
 005C38E4    call        LoadResString
 005C38E9    mov         ecx,dword ptr [ebp-18]
 005C38EC    mov         edx,5C3968;'bmp'
 005C38F1    mov         eax,dword ptr [ebp-4]
 005C38F4    call        005C39D4
 005C38F9    xor         eax,eax
 005C38FB    pop         edx
 005C38FC    pop         ecx
 005C38FD    pop         ecx
 005C38FE    mov         dword ptr fs:[eax],edx
 005C3901    push        5C391B
 005C3906    lea         eax,[ebp-18]
 005C3909    mov         edx,4
 005C390E    call        @LStrArrayClr
 005C3913    ret
>005C3914    jmp         @HandleFinally
>005C3919    jmp         005C3906
 005C391B    mov         eax,dword ptr [ebp-4]
 005C391E    cmp         byte ptr [ebp-5],0
>005C3922    je          005C3933
 005C3924    call        @AfterConstruction
 005C3929    pop         dword ptr fs:[0]
 005C3930    add         esp,0C
 005C3933    mov         eax,dword ptr [ebp-4]
 005C3936    mov         esp,ebp
 005C3938    pop         ebp
 005C3939    ret
*}
end;

//005C396C
destructor TFileFormatsList.Destroy;
begin
{*
 005C396C    push        ebp
 005C396D    mov         ebp,esp
 005C396F    add         esp,0FFFFFFF0
 005C3972    call        @BeforeDestruction
 005C3977    mov         byte ptr [ebp-5],dl
 005C397A    mov         dword ptr [ebp-4],eax
 005C397D    mov         eax,dword ptr [ebp-4]
 005C3980    mov         eax,dword ptr [eax+8]
 005C3983    dec         eax
 005C3984    test        eax,eax
>005C3986    jl          005C39B1
 005C3988    inc         eax
 005C3989    mov         dword ptr [ebp-10],eax
 005C398C    mov         dword ptr [ebp-0C],0
 005C3993    mov         edx,dword ptr [ebp-0C]
 005C3996    mov         eax,dword ptr [ebp-4]
 005C3999    call        TList.Get
 005C399E    mov         edx,dword ptr ds:[5C3794];TFileFormat
 005C39A4    call        @Dispose
 005C39A9    inc         dword ptr [ebp-0C]
 005C39AC    dec         dword ptr [ebp-10]
>005C39AF    jne         005C3993
 005C39B1    mov         dl,byte ptr [ebp-5]
 005C39B4    and         dl,0FC
 005C39B7    mov         eax,dword ptr [ebp-4]
 005C39BA    call        TList.Destroy
 005C39BF    cmp         byte ptr [ebp-5],0
>005C39C3    jle         005C39CD
 005C39C5    mov         eax,dword ptr [ebp-4]
 005C39C8    call        @ClassDestroy
 005C39CD    mov         esp,ebp
 005C39CF    pop         ebp
 005C39D0    ret
*}
end;

//005C39D4
{*procedure sub_005C39D4(?:?; ?:AnsiString; ?:?; ?:?; ?:?);
begin
 005C39D4    push        ebp
 005C39D5    mov         ebp,esp
 005C39D7    add         esp,0FFFFFFE8
 005C39DA    push        ebx
 005C39DB    xor         ebx,ebx
 005C39DD    mov         dword ptr [ebp-18],ebx
 005C39E0    mov         dword ptr [ebp-0C],ecx
 005C39E3    mov         dword ptr [ebp-8],edx
 005C39E6    mov         dword ptr [ebp-4],eax
 005C39E9    xor         eax,eax
 005C39EB    push        ebp
 005C39EC    push        5C3A69
 005C39F1    push        dword ptr fs:[eax]
 005C39F4    mov         dword ptr fs:[eax],esp
 005C39F7    mov         edx,dword ptr ds:[5C3794];TFileFormat
 005C39FD    mov         eax,10
 005C3A02    call        @New
 005C3A07    mov         dword ptr [ebp-10],eax
 005C3A0A    mov         eax,dword ptr [ebp-10]
 005C3A0D    mov         dword ptr [ebp-14],eax
 005C3A10    lea         edx,[ebp-18]
 005C3A13    mov         eax,dword ptr [ebp-8]
 005C3A16    call        006576F0
 005C3A1B    mov         edx,dword ptr [ebp-18]
 005C3A1E    mov         eax,dword ptr [ebp-14]
 005C3A21    add         eax,4
 005C3A24    call        @LStrAsg
 005C3A29    mov         eax,dword ptr [ebp+8]
 005C3A2C    mov         edx,dword ptr [ebp-14]
 005C3A2F    mov         dword ptr [edx],eax
 005C3A31    mov         eax,dword ptr [ebp-14]
 005C3A34    add         eax,8
 005C3A37    mov         edx,dword ptr [ebp-0C]
 005C3A3A    call        @LStrAsg
 005C3A3F    mov         eax,dword ptr [ebp+0C]
 005C3A42    mov         edx,dword ptr [ebp-14]
 005C3A45    mov         dword ptr [edx+0C],eax
 005C3A48    mov         edx,dword ptr [ebp-10]
 005C3A4B    mov         eax,dword ptr [ebp-4]
 005C3A4E    call        TList.Add
 005C3A53    xor         eax,eax
 005C3A55    pop         edx
 005C3A56    pop         ecx
 005C3A57    pop         ecx
 005C3A58    mov         dword ptr fs:[eax],edx
 005C3A5B    push        5C3A70
 005C3A60    lea         eax,[ebp-18]
 005C3A63    call        @LStrClr
 005C3A68    ret
>005C3A69    jmp         @HandleFinally
>005C3A6E    jmp         005C3A60
 005C3A70    pop         ebx
 005C3A71    mov         esp,ebp
 005C3A73    pop         ebp
 005C3A74    ret         8
end;*}

//005C3A78
{*function sub_005C3A78(?:TFileFormatsList; ?:AnsiString):?;
begin
 005C3A78    push        ebp
 005C3A79    mov         ebp,esp
 005C3A7B    add         esp,0FFFFFFE8
 005C3A7E    xor         ecx,ecx
 005C3A80    mov         dword ptr [ebp-18],ecx
 005C3A83    mov         dword ptr [ebp-8],edx
 005C3A86    mov         dword ptr [ebp-4],eax
 005C3A89    mov         eax,dword ptr [ebp-8]
 005C3A8C    call        @LStrAddRef
 005C3A91    xor         eax,eax
 005C3A93    push        ebp
 005C3A94    push        5C3B18
 005C3A99    push        dword ptr fs:[eax]
 005C3A9C    mov         dword ptr fs:[eax],esp
 005C3A9F    lea         edx,[ebp-18]
 005C3AA2    mov         eax,dword ptr [ebp-8]
 005C3AA5    call        006576F0
 005C3AAA    mov         edx,dword ptr [ebp-18]
 005C3AAD    lea         eax,[ebp-8]
 005C3AB0    call        @LStrLAsg
 005C3AB5    mov         eax,dword ptr [ebp-4]
 005C3AB8    mov         eax,dword ptr [eax+8]
 005C3ABB    dec         eax
 005C3ABC    cmp         eax,0
>005C3ABF    jl          005C3AF5
 005C3AC1    mov         dword ptr [ebp-10],eax
 005C3AC4    mov         edx,dword ptr [ebp-10]
 005C3AC7    mov         eax,dword ptr [ebp-4]
 005C3ACA    call        TList.Get
 005C3ACF    mov         dword ptr [ebp-14],eax
 005C3AD2    mov         eax,dword ptr [ebp-14]
 005C3AD5    mov         eax,dword ptr [eax+4]
 005C3AD8    mov         edx,dword ptr [ebp-8]
 005C3ADB    call        @LStrCmp
>005C3AE0    jne         005C3AEC
 005C3AE2    mov         eax,dword ptr [ebp-14]
 005C3AE5    mov         eax,dword ptr [eax]
 005C3AE7    mov         dword ptr [ebp-0C],eax
>005C3AEA    jmp         005C3AFA
 005C3AEC    dec         dword ptr [ebp-10]
 005C3AEF    cmp         dword ptr [ebp-10],0FFFFFFFF
>005C3AF3    jne         005C3AC4
 005C3AF5    xor         eax,eax
 005C3AF7    mov         dword ptr [ebp-0C],eax
 005C3AFA    xor         eax,eax
 005C3AFC    pop         edx
 005C3AFD    pop         ecx
 005C3AFE    pop         ecx
 005C3AFF    mov         dword ptr fs:[eax],edx
 005C3B02    push        5C3B1F
 005C3B07    lea         eax,[ebp-18]
 005C3B0A    call        @LStrClr
 005C3B0F    lea         eax,[ebp-8]
 005C3B12    call        @LStrClr
 005C3B17    ret
>005C3B18    jmp         @HandleFinally
>005C3B1D    jmp         005C3B07
 005C3B1F    mov         eax,dword ptr [ebp-0C]
 005C3B22    mov         esp,ebp
 005C3B24    pop         ebp
 005C3B25    ret
end;*}

//005C3B28
{*function sub_005C3B28(?:?; ?:?):?;
begin
 005C3B28    push        ebp
 005C3B29    mov         ebp,esp
 005C3B2B    add         esp,0FFFFFEEC
 005C3B31    xor         ecx,ecx
 005C3B33    mov         dword ptr [ebp-14],ecx
 005C3B36    mov         dword ptr [ebp-8],edx
 005C3B39    mov         dword ptr [ebp-4],eax
 005C3B3C    xor         eax,eax
 005C3B3E    push        ebp
 005C3B3F    push        5C3BB6
 005C3B44    push        dword ptr fs:[eax]
 005C3B47    mov         dword ptr fs:[eax],esp
 005C3B4A    mov         eax,dword ptr [ebp-4]
 005C3B4D    mov         eax,dword ptr [eax+8]
 005C3B50    dec         eax
 005C3B51    cmp         eax,0
>005C3B54    jl          005C3B9B
 005C3B56    mov         dword ptr [ebp-10],eax
 005C3B59    mov         edx,dword ptr [ebp-10]
 005C3B5C    mov         eax,dword ptr [ebp-4]
 005C3B5F    call        TList.Get
 005C3B64    mov         eax,dword ptr [eax]
 005C3B66    mov         dword ptr [ebp-0C],eax
 005C3B69    lea         edx,[ebp-114]
 005C3B6F    mov         eax,dword ptr [ebp-0C]
 005C3B72    call        TObject.ClassName
 005C3B77    lea         edx,[ebp-114]
 005C3B7D    lea         eax,[ebp-14]
 005C3B80    call        @LStrFromString
 005C3B85    mov         eax,dword ptr [ebp-14]
 005C3B88    mov         edx,dword ptr [ebp-8]
 005C3B8B    call        @LStrCmp
>005C3B90    je          005C3BA0
 005C3B92    dec         dword ptr [ebp-10]
 005C3B95    cmp         dword ptr [ebp-10],0FFFFFFFF
>005C3B99    jne         005C3B59
 005C3B9B    xor         eax,eax
 005C3B9D    mov         dword ptr [ebp-0C],eax
 005C3BA0    xor         eax,eax
 005C3BA2    pop         edx
 005C3BA3    pop         ecx
 005C3BA4    pop         ecx
 005C3BA5    mov         dword ptr fs:[eax],edx
 005C3BA8    push        5C3BBD
 005C3BAD    lea         eax,[ebp-14]
 005C3BB0    call        @LStrClr
 005C3BB5    ret
>005C3BB6    jmp         @HandleFinally
>005C3BBB    jmp         005C3BAD
 005C3BBD    mov         eax,dword ptr [ebp-0C]
 005C3BC0    mov         esp,ebp
 005C3BC2    pop         ebp
 005C3BC3    ret
end;*}

//005C3BC4
{*procedure sub_005C3BC4(?:TFileFormatsList; ?:?);
begin
 005C3BC4    push        ebp
 005C3BC5    mov         ebp,esp
 005C3BC7    add         esp,0FFFFFFF0
 005C3BCA    mov         dword ptr [ebp-8],edx
 005C3BCD    mov         dword ptr [ebp-4],eax
 005C3BD0    mov         eax,dword ptr [ebp-4]
 005C3BD3    mov         eax,dword ptr [eax+8]
 005C3BD6    dec         eax
 005C3BD7    cmp         eax,0
>005C3BDA    jl          005C3C20
 005C3BDC    mov         dword ptr [ebp-0C],eax
 005C3BDF    mov         edx,dword ptr [ebp-0C]
 005C3BE2    mov         eax,dword ptr [ebp-4]
 005C3BE5    call        TList.Get
 005C3BEA    mov         dword ptr [ebp-10],eax
 005C3BED    mov         edx,dword ptr [ebp-8]
 005C3BF0    mov         eax,dword ptr [ebp-10]
 005C3BF3    mov         eax,dword ptr [eax]
 005C3BF5    call        TObject.InheritsFrom
 005C3BFA    test        al,al
>005C3BFC    je          005C3C17
 005C3BFE    mov         edx,dword ptr ds:[5C3794];TFileFormat
 005C3C04    mov         eax,dword ptr [ebp-10]
 005C3C07    call        @Dispose
 005C3C0C    mov         edx,dword ptr [ebp-0C]
 005C3C0F    mov         eax,dword ptr [ebp-4]
 005C3C12    call        TList.Delete
 005C3C17    dec         dword ptr [ebp-0C]
 005C3C1A    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005C3C1E    jne         005C3BDF
 005C3C20    mov         esp,ebp
 005C3C22    pop         ebp
 005C3C23    ret
end;*}

//005C3C24
{*procedure sub_005C3C24(?:?; ?:TGraphic; ?:?; ?:?);
begin
 005C3C24    push        ebp
 005C3C25    mov         ebp,esp
 005C3C27    add         esp,0FFFFFFB4
 005C3C2A    push        ebx
 005C3C2B    xor         ebx,ebx
 005C3C2D    mov         dword ptr [ebp-4C],ebx
 005C3C30    mov         dword ptr [ebp-20],ebx
 005C3C33    mov         dword ptr [ebp-0C],ecx
 005C3C36    mov         dword ptr [ebp-8],edx
 005C3C39    mov         dword ptr [ebp-4],eax
 005C3C3C    xor         eax,eax
 005C3C3E    push        ebp
 005C3C3F    push        5C3DD4
 005C3C44    push        dword ptr fs:[eax]
 005C3C47    mov         dword ptr fs:[eax],esp
 005C3C4A    mov         eax,dword ptr [ebp-0C]
 005C3C4D    call        @LStrClr
 005C3C52    mov         eax,dword ptr [ebp+8]
 005C3C55    call        @LStrClr
 005C3C5A    xor         eax,eax
 005C3C5C    mov         dword ptr [ebp-10],eax
 005C3C5F    mov         eax,dword ptr [ebp-4]
 005C3C62    mov         eax,dword ptr [eax+8]
 005C3C65    dec         eax
 005C3C66    cmp         eax,0
>005C3C69    jl          005C3D6F
 005C3C6F    mov         dword ptr [ebp-14],eax
 005C3C72    mov         edx,dword ptr [ebp-14]
 005C3C75    mov         eax,dword ptr [ebp-4]
 005C3C78    call        TList.Get
 005C3C7D    mov         dword ptr [ebp-18],eax
 005C3C80    mov         edx,dword ptr [ebp-8]
 005C3C83    mov         eax,dword ptr [ebp-18]
 005C3C86    mov         eax,dword ptr [eax]
 005C3C88    call        TObject.InheritsFrom
 005C3C8D    test        al,al
>005C3C8F    je          005C3D62
 005C3C95    mov         eax,dword ptr [ebp-18]
 005C3C98    cmp         dword ptr [eax+4],0
>005C3C9C    je          005C3D62
 005C3CA2    mov         eax,dword ptr [ebp-18]
 005C3CA5    mov         dword ptr [ebp-1C],eax
 005C3CA8    cmp         dword ptr [ebp-10],0
>005C3CAC    je          005C3CCE
 005C3CAE    mov         eax,dword ptr [ebp-0C]
 005C3CB1    mov         edx,5C3DEC;'|'
 005C3CB6    call        @LStrCat
 005C3CBB    mov         eax,dword ptr [ebp-0C]
 005C3CBE    mov         eax,dword ptr [ebp+8]
 005C3CC1    mov         edx,5C3DF8;';'
 005C3CC6    call        @LStrCat
 005C3CCB    mov         eax,dword ptr [ebp+8]
 005C3CCE    mov         eax,dword ptr [ebp-1C]
 005C3CD1    cmp         dword ptr [eax+8],0
>005C3CD5    jne         005C3CFC
 005C3CD7    mov         eax,dword ptr [ebp-1C]
 005C3CDA    cmp         dword ptr [eax+0C],0
>005C3CDE    je          005C3CFC
 005C3CE0    lea         edx,[ebp-20]
 005C3CE3    mov         eax,dword ptr [ebp-1C]
 005C3CE6    mov         eax,dword ptr [eax+0C]
 005C3CE9    call        00657E80
 005C3CEE    mov         edx,dword ptr [ebp-20]
 005C3CF1    mov         eax,dword ptr [ebp-1C]
 005C3CF4    add         eax,8
 005C3CF7    call        @LStrAsg
 005C3CFC    push        2
 005C3CFE    mov         eax,dword ptr [ebp-0C]
 005C3D01    mov         eax,dword ptr [eax]
 005C3D03    mov         dword ptr [ebp-38],eax
 005C3D06    mov         byte ptr [ebp-34],0B
 005C3D0A    mov         eax,dword ptr [ebp-1C]
 005C3D0D    mov         eax,dword ptr [eax+8]
 005C3D10    mov         dword ptr [ebp-30],eax
 005C3D13    mov         byte ptr [ebp-2C],0B
 005C3D17    mov         eax,dword ptr [ebp-1C]
 005C3D1A    mov         eax,dword ptr [eax+4]
 005C3D1D    mov         dword ptr [ebp-28],eax
 005C3D20    mov         byte ptr [ebp-24],0B
 005C3D24    lea         ecx,[ebp-38]
 005C3D27    mov         eax,dword ptr [ebp-0C]
 005C3D2A    mov         edx,5C3E04;'%s%s (*.%s)|*.%2:s'
 005C3D2F    call        FmtStr
 005C3D34    push        1
 005C3D36    mov         eax,dword ptr [ebp+8]
 005C3D39    mov         eax,dword ptr [eax]
 005C3D3B    mov         dword ptr [ebp-48],eax
 005C3D3E    mov         byte ptr [ebp-44],0B
 005C3D42    mov         eax,dword ptr [ebp-1C]
 005C3D45    mov         eax,dword ptr [eax+4]
 005C3D48    mov         dword ptr [ebp-40],eax
 005C3D4B    mov         byte ptr [ebp-3C],0B
 005C3D4F    lea         ecx,[ebp-48]
 005C3D52    mov         eax,dword ptr [ebp+8]
 005C3D55    mov         edx,5C3E20;'%s*.%s'
 005C3D5A    call        FmtStr
 005C3D5F    inc         dword ptr [ebp-10]
 005C3D62    dec         dword ptr [ebp-14]
 005C3D65    cmp         dword ptr [ebp-14],0FFFFFFFF
>005C3D69    jne         005C3C72
 005C3D6F    cmp         dword ptr [ebp-10],1
>005C3D73    jle         005C3DB6
 005C3D75    push        2
 005C3D77    lea         edx,[ebp-4C]
 005C3D7A    mov         eax,[006E9F80];^gvar_0063CD10
 005C3D7F    call        LoadResString
 005C3D84    mov         eax,dword ptr [ebp-4C]
 005C3D87    mov         dword ptr [ebp-38],eax
 005C3D8A    mov         byte ptr [ebp-34],0B
 005C3D8E    mov         eax,dword ptr [ebp+8]
 005C3D91    mov         eax,dword ptr [eax]
 005C3D93    mov         dword ptr [ebp-30],eax
 005C3D96    mov         byte ptr [ebp-2C],0B
 005C3D9A    mov         eax,dword ptr [ebp-0C]
 005C3D9D    mov         eax,dword ptr [eax]
 005C3D9F    mov         dword ptr [ebp-28],eax
 005C3DA2    mov         byte ptr [ebp-24],0B
 005C3DA6    lea         ecx,[ebp-38]
 005C3DA9    mov         eax,dword ptr [ebp-0C]
 005C3DAC    mov         edx,5C3E30;'%s (%s)|%1:s|%s'
 005C3DB1    call        FmtStr
 005C3DB6    xor         eax,eax
 005C3DB8    pop         edx
 005C3DB9    pop         ecx
 005C3DBA    pop         ecx
 005C3DBB    mov         dword ptr fs:[eax],edx
 005C3DBE    push        5C3DDB
 005C3DC3    lea         eax,[ebp-4C]
 005C3DC6    call        @LStrClr
 005C3DCB    lea         eax,[ebp-20]
 005C3DCE    call        @LStrClr
 005C3DD3    ret
>005C3DD4    jmp         @HandleFinally
>005C3DD9    jmp         005C3DC3
 005C3DDB    pop         ebx
 005C3DDC    mov         esp,ebp
 005C3DDE    pop         ebp
 005C3DDF    ret         4
end;*}

//005C3EA0
constructor TClipboardFormats.Create;
begin
{*
 005C3EA0    push        ebp
 005C3EA1    mov         ebp,esp
 005C3EA3    add         esp,0FFFFFFF8
 005C3EA6    test        dl,dl
>005C3EA8    je          005C3EB2
 005C3EAA    add         esp,0FFFFFFF0
 005C3EAD    call        @ClassCreate
 005C3EB2    mov         byte ptr [ebp-5],dl
 005C3EB5    mov         dword ptr [ebp-4],eax
 005C3EB8    mov         dl,1
 005C3EBA    mov         eax,[006422A4];TList
 005C3EBF    call        TObject.Create;TList.Create
 005C3EC4    mov         edx,dword ptr [ebp-4]
 005C3EC7    mov         dword ptr [edx+4],eax
 005C3ECA    mov         dl,1
 005C3ECC    mov         eax,[006422A4];TList
 005C3ED1    call        TObject.Create;TList.Create
 005C3ED6    mov         edx,dword ptr [ebp-4]
 005C3ED9    mov         dword ptr [edx+8],eax
 005C3EDC    mov         ecx,dword ptr ds:[5BEC94];TMetafile
 005C3EE2    mov         dx,3
 005C3EE6    mov         eax,dword ptr [ebp-4]
 005C3EE9    call        005C3F70
 005C3EEE    mov         ecx,dword ptr ds:[5BEC94];TMetafile
 005C3EF4    mov         dx,0E
 005C3EF8    mov         eax,dword ptr [ebp-4]
 005C3EFB    call        005C3F70
 005C3F00    mov         ecx,dword ptr ds:[5BEDD4];TBitmap
 005C3F06    mov         dx,2
 005C3F0A    mov         eax,dword ptr [ebp-4]
 005C3F0D    call        005C3F70
 005C3F12    mov         eax,dword ptr [ebp-4]
 005C3F15    cmp         byte ptr [ebp-5],0
>005C3F19    je          005C3F2A
 005C3F1B    call        @AfterConstruction
 005C3F20    pop         dword ptr fs:[0]
 005C3F27    add         esp,0C
 005C3F2A    mov         eax,dword ptr [ebp-4]
 005C3F2D    pop         ecx
 005C3F2E    pop         ecx
 005C3F2F    pop         ebp
 005C3F30    ret
*}
end;

//005C3F70
{*procedure sub_005C3F70(?:?; ?:?; ?:TGraphic);
begin
 005C3F70    push        ebp
 005C3F71    mov         ebp,esp
 005C3F73    add         esp,0FFFFFFF0
 005C3F76    push        ebx
 005C3F77    push        esi
 005C3F78    push        edi
 005C3F79    mov         dword ptr [ebp-0C],ecx
 005C3F7C    mov         word ptr [ebp-6],dx
 005C3F80    mov         dword ptr [ebp-4],eax
 005C3F83    mov         eax,dword ptr [ebp-4]
 005C3F86    mov         eax,dword ptr [eax+4]
 005C3F89    mov         edx,dword ptr [ebp-0C]
 005C3F8C    call        TList.Add
 005C3F91    mov         dword ptr [ebp-10],eax
 005C3F94    xor         eax,eax
 005C3F96    push        ebp
 005C3F97    push        5C3FBB
 005C3F9C    push        dword ptr fs:[eax]
 005C3F9F    mov         dword ptr fs:[eax],esp
 005C3FA2    movzx       edx,word ptr [ebp-6]
 005C3FA6    mov         eax,dword ptr [ebp-4]
 005C3FA9    mov         eax,dword ptr [eax+8]
 005C3FAC    call        TList.Add
 005C3FB1    xor         eax,eax
 005C3FB3    pop         edx
 005C3FB4    pop         ecx
 005C3FB5    pop         ecx
 005C3FB6    mov         dword ptr fs:[eax],edx
>005C3FB9    jmp         005C3FD8
>005C3FBB    jmp         @HandleAnyException
 005C3FC0    mov         eax,dword ptr [ebp-4]
 005C3FC3    mov         eax,dword ptr [eax+4]
 005C3FC6    mov         edx,dword ptr [ebp-10]
 005C3FC9    call        TList.Delete
 005C3FCE    call        @RaiseAgain
 005C3FD3    call        @DoneExcept
 005C3FD8    pop         edi
 005C3FD9    pop         esi
 005C3FDA    pop         ebx
 005C3FDB    mov         esp,ebp
 005C3FDD    pop         ebp
 005C3FDE    ret
end;*}

//005C3FE0
{*function sub_005C3FE0(?:TClipboardFormats; ?:?):?;
begin
 005C3FE0    push        ebp
 005C3FE1    mov         ebp,esp
 005C3FE3    add         esp,0FFFFFFF0
 005C3FE6    mov         word ptr [ebp-6],dx
 005C3FEA    mov         dword ptr [ebp-4],eax
 005C3FED    mov         eax,dword ptr [ebp-4]
 005C3FF0    mov         eax,dword ptr [eax+8]
 005C3FF3    mov         eax,dword ptr [eax+8]
 005C3FF6    dec         eax
 005C3FF7    cmp         eax,0
>005C3FFA    jl          005C402F
 005C3FFC    mov         dword ptr [ebp-10],eax
 005C3FFF    mov         edx,dword ptr [ebp-10]
 005C4002    mov         eax,dword ptr [ebp-4]
 005C4005    mov         eax,dword ptr [eax+8]
 005C4008    call        TList.Get
 005C400D    cmp         ax,word ptr [ebp-6]
>005C4011    jne         005C4026
 005C4013    mov         edx,dword ptr [ebp-10]
 005C4016    mov         eax,dword ptr [ebp-4]
 005C4019    mov         eax,dword ptr [eax+4]
 005C401C    call        TList.Get
 005C4021    mov         dword ptr [ebp-0C],eax
>005C4024    jmp         005C4034
 005C4026    dec         dword ptr [ebp-10]
 005C4029    cmp         dword ptr [ebp-10],0FFFFFFFF
>005C402D    jne         005C3FFF
 005C402F    xor         eax,eax
 005C4031    mov         dword ptr [ebp-0C],eax
 005C4034    mov         eax,dword ptr [ebp-0C]
 005C4037    mov         esp,ebp
 005C4039    pop         ebp
 005C403A    ret
end;*}

//005C403C
{*procedure sub_005C403C(?:TClipboardFormats; ?:?);
begin
 005C403C    push        ebp
 005C403D    mov         ebp,esp
 005C403F    add         esp,0FFFFFFF4
 005C4042    mov         dword ptr [ebp-8],edx
 005C4045    mov         dword ptr [ebp-4],eax
 005C4048    mov         eax,dword ptr [ebp-4]
 005C404B    mov         eax,dword ptr [eax+4]
 005C404E    mov         eax,dword ptr [eax+8]
 005C4051    dec         eax
 005C4052    cmp         eax,0
>005C4055    jl          005C4099
 005C4057    mov         dword ptr [ebp-0C],eax
 005C405A    mov         edx,dword ptr [ebp-0C]
 005C405D    mov         eax,dword ptr [ebp-4]
 005C4060    mov         eax,dword ptr [eax+4]
 005C4063    call        TList.Get
 005C4068    mov         edx,dword ptr [ebp-8]
 005C406B    call        TObject.InheritsFrom
 005C4070    test        al,al
>005C4072    je          005C4090
 005C4074    mov         edx,dword ptr [ebp-0C]
 005C4077    mov         eax,dword ptr [ebp-4]
 005C407A    mov         eax,dword ptr [eax+4]
 005C407D    call        TList.Delete
 005C4082    mov         edx,dword ptr [ebp-0C]
 005C4085    mov         eax,dword ptr [ebp-4]
 005C4088    mov         eax,dword ptr [eax+8]
 005C408B    call        TList.Delete
 005C4090    dec         dword ptr [ebp-0C]
 005C4093    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005C4097    jne         005C405A
 005C4099    mov         esp,ebp
 005C409B    pop         ebp
 005C409C    ret
end;*}

//005C40A0
{*function sub_005C40A0:?;
begin
 005C40A0    push        ebp
 005C40A1    mov         ebp,esp
 005C40A3    push        ecx
 005C40A4    cmp         dword ptr ds:[6E3F74],0;gvar_006E3F74:TFileFormatsList
>005C40AB    jne         005C40BE
 005C40AD    mov         dl,1
 005C40AF    mov         eax,[005C37C0];TFileFormatsList
 005C40B4    call        TFileFormatsList.Create;TFileFormatsList.Create
 005C40B9    mov         [006E3F74],eax;gvar_006E3F74:TFileFormatsList
 005C40BE    mov         eax,[006E3F74];0x0 gvar_006E3F74:TFileFormatsList
 005C40C3    mov         dword ptr [ebp-4],eax
 005C40C6    mov         eax,dword ptr [ebp-4]
 005C40C9    pop         ecx
 005C40CA    pop         ebp
 005C40CB    ret
end;*}

//005C40CC
{*function sub_005C40CC:?;
begin
 005C40CC    push        ebp
 005C40CD    mov         ebp,esp
 005C40CF    push        ecx
 005C40D0    cmp         dword ptr ds:[6E3F70],0;gvar_006E3F70:TClipboardFormats
>005C40D7    jne         005C40EA
 005C40D9    mov         dl,1
 005C40DB    mov         eax,[005C3E40];TClipboardFormats
 005C40E0    call        TClipboardFormats.Create;TClipboardFormats.Create
 005C40E5    mov         [006E3F70],eax;gvar_006E3F70:TClipboardFormats
 005C40EA    mov         eax,[006E3F70];0x0 gvar_006E3F70:TClipboardFormats
 005C40EF    mov         dword ptr [ebp-4],eax
 005C40F2    mov         eax,dword ptr [ebp-4]
 005C40F5    pop         ecx
 005C40F6    pop         ebp
 005C40F7    ret
end;*}

//005C40F8
constructor TPicture.Create;
begin
{*
 005C40F8    push        ebp
 005C40F9    mov         ebp,esp
 005C40FB    add         esp,0FFFFFFF8
 005C40FE    test        dl,dl
>005C4100    je          005C410A
 005C4102    add         esp,0FFFFFFF0
 005C4105    call        @ClassCreate
 005C410A    mov         byte ptr [ebp-5],dl
 005C410D    mov         dword ptr [ebp-4],eax
 005C4110    xor         edx,edx
 005C4112    mov         eax,dword ptr [ebp-4]
 005C4115    call        TObject.Create
 005C411A    call        005C40A0
 005C411F    call        005C40CC
 005C4124    mov         eax,dword ptr [ebp-4]
 005C4127    cmp         byte ptr [ebp-5],0
>005C412B    je          005C413C
 005C412D    call        @AfterConstruction
 005C4132    pop         dword ptr fs:[0]
 005C4139    add         esp,0C
 005C413C    mov         eax,dword ptr [ebp-4]
 005C413F    pop         ecx
 005C4140    pop         ecx
 005C4141    pop         ebp
 005C4142    ret
*}
end;

//005C4144
destructor TPicture.Destroy;
begin
{*
 005C4144    push        ebp
 005C4145    mov         ebp,esp
 005C4147    add         esp,0FFFFFFF8
 005C414A    call        @BeforeDestruction
 005C414F    mov         byte ptr [ebp-5],dl
 005C4152    mov         dword ptr [ebp-4],eax
 005C4155    mov         eax,dword ptr [ebp-4]
 005C4158    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005C415B    call        TObject.Free
 005C4160    mov         dl,byte ptr [ebp-5]
 005C4163    and         dl,0FC
 005C4166    mov         eax,dword ptr [ebp-4]
 005C4169    call        TPersistent.Destroy
 005C416E    cmp         byte ptr [ebp-5],0
>005C4172    jle         005C417C
 005C4174    mov         eax,dword ptr [ebp-4]
 005C4177    call        @ClassDestroy
 005C417C    pop         ecx
 005C417D    pop         ecx
 005C417E    pop         ebp
 005C417F    ret
*}
end;

//005C4180
procedure TPicture.AssignTo(Dest:TPersistent);
begin
{*
 005C4180    push        ebp
 005C4181    mov         ebp,esp
 005C4183    add         esp,0FFFFFFF8
 005C4186    mov         dword ptr [ebp-8],edx
 005C4189    mov         dword ptr [ebp-4],eax
 005C418C    mov         eax,dword ptr [ebp-8]
 005C418F    call        TObject.ClassType
 005C4194    mov         edx,eax
 005C4196    mov         eax,dword ptr [ebp-4]
 005C4199    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005C419C    call        @IsClass
 005C41A1    test        al,al
>005C41A3    je          005C41B5
 005C41A5    mov         eax,dword ptr [ebp-4]
 005C41A8    mov         edx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005C41AB    mov         eax,dword ptr [ebp-8]
 005C41AE    mov         ecx,dword ptr [eax]
 005C41B0    call        dword ptr [ecx+8];TPersistent.Assign
>005C41B3    jmp         005C41C0
 005C41B5    mov         edx,dword ptr [ebp-8]
 005C41B8    mov         eax,dword ptr [ebp-4]
 005C41BB    call        TPersistent.AssignTo
 005C41C0    pop         ecx
 005C41C1    pop         ecx
 005C41C2    pop         ebp
 005C41C3    ret
*}
end;

//005C41C4
{*procedure sub_005C41C4(?:?; ?:TGraphic);
begin
 005C41C4    push        ebp
 005C41C5    mov         ebp,esp
 005C41C7    add         esp,0FFFFFFF8
 005C41CA    push        esi
 005C41CB    mov         dword ptr [ebp-8],edx
 005C41CE    mov         dword ptr [ebp-4],eax
 005C41D1    mov         eax,dword ptr [ebp-4]
 005C41D4    mov         eax,dword ptr [eax+0C]
 005C41D7    mov         edx,dword ptr [ebp-8]
 005C41DA    call        @IsClass
 005C41DF    test        al,al
>005C41E1    jne         005C424F
 005C41E3    mov         eax,dword ptr [ebp-4]
 005C41E6    mov         eax,dword ptr [eax+0C]
 005C41E9    call        TObject.Free
 005C41EE    mov         eax,dword ptr [ebp-4]
 005C41F1    xor         edx,edx
 005C41F3    mov         dword ptr [eax+0C],edx
 005C41F6    mov         dl,1
 005C41F8    mov         eax,dword ptr [ebp-8]
 005C41FB    call        dword ptr [eax+48]
 005C41FE    mov         edx,dword ptr [ebp-4]
 005C4201    mov         dword ptr [edx+0C],eax
 005C4204    mov         eax,dword ptr [ebp-4]
 005C4207    mov         eax,dword ptr [eax+0C]
 005C420A    mov         edx,dword ptr [ebp-4]
 005C420D    mov         dword ptr [eax+14],edx
 005C4210    push        eax
 005C4211    mov         eax,edx
 005C4213    mov         dx,0FFFD
 005C4217    call        @FindDynaInst
 005C421C    mov         edx,eax
 005C421E    pop         eax
 005C421F    mov         dword ptr [eax+10],edx
 005C4222    mov         eax,dword ptr [ebp-4]
 005C4225    mov         eax,dword ptr [eax+0C]
 005C4228    mov         edx,dword ptr [ebp-4]
 005C422B    mov         dword ptr [eax+1C],edx
 005C422E    push        eax
 005C422F    mov         eax,edx
 005C4231    mov         dx,0FFFC
 005C4235    call        @FindDynaInst
 005C423A    mov         edx,eax
 005C423C    pop         eax
 005C423D    mov         dword ptr [eax+18],edx
 005C4240    mov         edx,dword ptr [ebp-4]
 005C4243    mov         eax,dword ptr [ebp-4]
 005C4246    mov         si,0FFFD
 005C424A    call        @CallDynaInst
 005C424F    pop         esi
 005C4250    pop         ecx
 005C4251    pop         ecx
 005C4252    pop         ebp
 005C4253    ret
end;*}

//005C4254
{*function sub_005C4254(?:?):?;
begin
 005C4254    push        ebp
 005C4255    mov         ebp,esp
 005C4257    add         esp,0FFFFFFF8
 005C425A    mov         dword ptr [ebp-4],eax
 005C425D    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 005C4263    mov         eax,dword ptr [ebp-4]
 005C4266    call        005C41C4
 005C426B    mov         eax,dword ptr [ebp-4]
 005C426E    mov         eax,dword ptr [eax+0C]
 005C4271    mov         dword ptr [ebp-8],eax
 005C4274    mov         eax,dword ptr [ebp-8]
 005C4277    pop         ecx
 005C4278    pop         ecx
 005C4279    pop         ebp
 005C427A    ret
end;*}

//005C427C
{*function sub_005C427C(?:TPicture):?;
begin
 005C427C    push        ebp
 005C427D    mov         ebp,esp
 005C427F    add         esp,0FFFFFFF8
 005C4282    mov         dword ptr [ebp-4],eax
 005C4285    mov         edx,dword ptr ds:[5BEF18];TIcon
 005C428B    mov         eax,dword ptr [ebp-4]
 005C428E    call        005C41C4
 005C4293    mov         eax,dword ptr [ebp-4]
 005C4296    mov         eax,dword ptr [eax+0C]
 005C4299    mov         dword ptr [ebp-8],eax
 005C429C    mov         eax,dword ptr [ebp-8]
 005C429F    pop         ecx
 005C42A0    pop         ecx
 005C42A1    pop         ebp
 005C42A2    ret
end;*}

//005C42A4
procedure sub_005C42A4(?:TPicture; ?:TPersistent);
begin
{*
 005C42A4    push        ebp
 005C42A5    mov         ebp,esp
 005C42A7    add         esp,0FFFFFFF4
 005C42AA    push        ebx
 005C42AB    push        esi
 005C42AC    push        edi
 005C42AD    mov         dword ptr [ebp-8],edx
 005C42B0    mov         dword ptr [ebp-4],eax
 005C42B3    xor         eax,eax
 005C42B5    mov         dword ptr [ebp-0C],eax
 005C42B8    cmp         dword ptr [ebp-8],0
>005C42BC    je          005C430F
 005C42BE    mov         eax,dword ptr [ebp-8]
 005C42C1    call        TObject.ClassType
 005C42C6    mov         dl,1
 005C42C8    call        dword ptr [eax+48]
 005C42CB    mov         dword ptr [ebp-0C],eax
 005C42CE    mov         edx,dword ptr [ebp-8]
 005C42D1    mov         eax,dword ptr [ebp-0C]
 005C42D4    mov         ecx,dword ptr [eax]
 005C42D6    call        dword ptr [ecx+8]
 005C42D9    mov         eax,dword ptr [ebp-0C]
 005C42DC    mov         edx,dword ptr [ebp-4]
 005C42DF    mov         dword ptr [eax+14],edx
 005C42E2    push        eax
 005C42E3    mov         eax,edx
 005C42E5    mov         dx,0FFFD
 005C42E9    call        @FindDynaInst
 005C42EE    mov         edx,eax
 005C42F0    pop         eax
 005C42F1    mov         dword ptr [eax+10],edx
 005C42F4    mov         eax,dword ptr [ebp-0C]
 005C42F7    mov         edx,dword ptr [ebp-4]
 005C42FA    mov         dword ptr [eax+1C],edx
 005C42FD    push        eax
 005C42FE    mov         eax,edx
 005C4300    mov         dx,0FFFC
 005C4304    call        @FindDynaInst
 005C4309    mov         edx,eax
 005C430B    pop         eax
 005C430C    mov         dword ptr [eax+18],edx
 005C430F    xor         eax,eax
 005C4311    push        ebp
 005C4312    push        5C434A
 005C4317    push        dword ptr fs:[eax]
 005C431A    mov         dword ptr fs:[eax],esp
 005C431D    mov         eax,dword ptr [ebp-4]
 005C4320    mov         eax,dword ptr [eax+0C]
 005C4323    call        TObject.Free
 005C4328    mov         eax,dword ptr [ebp-4]
 005C432B    mov         edx,dword ptr [ebp-0C]
 005C432E    mov         dword ptr [eax+0C],edx
 005C4331    mov         edx,dword ptr [ebp-4]
 005C4334    mov         eax,dword ptr [ebp-4]
 005C4337    mov         si,0FFFD
 005C433B    call        @CallDynaInst
 005C4340    xor         eax,eax
 005C4342    pop         edx
 005C4343    pop         ecx
 005C4344    pop         ecx
 005C4345    mov         dword ptr fs:[eax],edx
>005C4348    jmp         005C4361
>005C434A    jmp         @HandleAnyException
 005C434F    mov         eax,dword ptr [ebp-0C]
 005C4352    call        TObject.Free
 005C4357    call        @RaiseAgain
 005C435C    call        @DoneExcept
 005C4361    pop         edi
 005C4362    pop         esi
 005C4363    pop         ebx
 005C4364    mov         esp,ebp
 005C4366    pop         ebp
 005C4367    ret
*}
end;

//005C4368
{*procedure sub_005C4368(?:TPicture; ?:?);
begin
 005C4368    push        ebp
 005C4369    mov         ebp,esp
 005C436B    add         esp,0FFFFFFE0
 005C436E    push        ebx
 005C436F    push        esi
 005C4370    push        edi
 005C4371    xor         ecx,ecx
 005C4373    mov         dword ptr [ebp-20],ecx
 005C4376    mov         dword ptr [ebp-0C],ecx
 005C4379    mov         dword ptr [ebp-8],edx
 005C437C    mov         dword ptr [ebp-4],eax
 005C437F    xor         eax,eax
 005C4381    push        ebp
 005C4382    push        5C44B0
 005C4387    push        dword ptr fs:[eax]
 005C438A    mov         dword ptr fs:[eax],esp
 005C438D    lea         edx,[ebp-0C]
 005C4390    mov         eax,dword ptr [ebp-8]
 005C4393    call        006585C4
 005C4398    lea         eax,[ebp-0C]
 005C439B    mov         ecx,1
 005C43A0    mov         edx,1
 005C43A5    call        @LStrDelete
 005C43AA    mov         edx,dword ptr [ebp-0C]
 005C43AD    mov         eax,[006E3F74];0x0 gvar_006E3F74:TFileFormatsList
 005C43B2    call        005C3A78
 005C43B7    mov         dword ptr [ebp-14],eax
 005C43BA    cmp         dword ptr [ebp-14],0
>005C43BE    jne         005C43F1
 005C43C0    mov         eax,dword ptr [ebp-0C]
 005C43C3    mov         dword ptr [ebp-1C],eax
 005C43C6    mov         byte ptr [ebp-18],0B
 005C43CA    lea         eax,[ebp-1C]
 005C43CD    push        eax
 005C43CE    push        0
 005C43D0    lea         edx,[ebp-20]
 005C43D3    mov         eax,[006E9E04];^gvar_0063CA18
 005C43D8    call        LoadResString
 005C43DD    mov         ecx,dword ptr [ebp-20]
 005C43E0    mov         dl,1
 005C43E2    mov         eax,[005BE1C0];EInvalidGraphic
 005C43E7    call        Exception.CreateFmt;EInvalidGraphic.Create
 005C43EC    call        @RaiseExcept
 005C43F1    mov         dl,1
 005C43F3    mov         eax,dword ptr [ebp-14]
 005C43F6    call        dword ptr [eax+48]
 005C43F9    mov         dword ptr [ebp-10],eax
 005C43FC    xor         eax,eax
 005C43FE    push        ebp
 005C43FF    push        5C443A
 005C4404    push        dword ptr fs:[eax]
 005C4407    mov         dword ptr fs:[eax],esp
 005C440A    mov         eax,dword ptr [ebp-10]
 005C440D    mov         edx,dword ptr [ebp-4]
 005C4410    mov         dword ptr [eax+1C],edx
 005C4413    push        eax
 005C4414    mov         eax,edx
 005C4416    mov         dx,0FFFC
 005C441A    call        @FindDynaInst;TPicture.sub_005C475C
 005C441F    mov         edx,eax
 005C4421    pop         eax
 005C4422    mov         dword ptr [eax+18],edx
 005C4425    mov         edx,dword ptr [ebp-8]
 005C4428    mov         eax,dword ptr [ebp-10]
 005C442B    mov         ecx,dword ptr [eax]
 005C442D    call        dword ptr [ecx+4C]
 005C4430    xor         eax,eax
 005C4432    pop         edx
 005C4433    pop         ecx
 005C4434    pop         ecx
 005C4435    mov         dword ptr fs:[eax],edx
>005C4438    jmp         005C4451
>005C443A    jmp         @HandleAnyException
 005C443F    mov         eax,dword ptr [ebp-10]
 005C4442    call        TObject.Free
 005C4447    call        @RaiseAgain
 005C444C    call        @DoneExcept
 005C4451    mov         eax,dword ptr [ebp-4]
 005C4454    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005C4457    call        TObject.Free
 005C445C    mov         eax,dword ptr [ebp-4]
 005C445F    mov         edx,dword ptr [ebp-10]
 005C4462    mov         dword ptr [eax+0C],edx;TPicture.FGraphic:TGraphic
 005C4465    mov         eax,dword ptr [ebp-4]
 005C4468    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005C446B    mov         edx,dword ptr [ebp-4]
 005C446E    mov         dword ptr [eax+14],edx;TGraphic.?f14:TPicture
 005C4471    push        eax
 005C4472    mov         eax,edx
 005C4474    mov         dx,0FFFD
 005C4478    call        @FindDynaInst;TPicture.sub_005C4720
 005C447D    mov         edx,eax
 005C447F    pop         eax
 005C4480    mov         dword ptr [eax+10],edx
 005C4483    mov         edx,dword ptr [ebp-4]
 005C4486    mov         eax,dword ptr [ebp-4]
 005C4489    mov         si,0FFFD
 005C448D    call        @CallDynaInst;TPicture.sub_005C4720
 005C4492    xor         eax,eax
 005C4494    pop         edx
 005C4495    pop         ecx
 005C4496    pop         ecx
 005C4497    mov         dword ptr fs:[eax],edx
 005C449A    push        5C44B7
 005C449F    lea         eax,[ebp-20]
 005C44A2    call        @LStrClr
 005C44A7    lea         eax,[ebp-0C]
 005C44AA    call        @LStrClr
 005C44AF    ret
>005C44B0    jmp         @HandleFinally
>005C44B5    jmp         005C449F
 005C44B7    pop         edi
 005C44B8    pop         esi
 005C44B9    pop         ebx
 005C44BA    mov         esp,ebp
 005C44BC    pop         ebp
 005C44BD    ret
end;*}

//005C44C0
{*procedure sub_005C44C0(?:?; ?:?; ?:THandle; ?:?);
begin
 005C44C0    push        ebp
 005C44C1    mov         ebp,esp
 005C44C3    add         esp,0FFFFFFEC
 005C44C6    push        ebx
 005C44C7    push        esi
 005C44C8    push        edi
 005C44C9    mov         dword ptr [ebp-0C],ecx
 005C44CC    mov         word ptr [ebp-6],dx
 005C44D0    mov         dword ptr [ebp-4],eax
 005C44D3    mov         dx,word ptr [ebp-6]
 005C44D7    mov         eax,[006E3F70];0x0 gvar_006E3F70:TClipboardFormats
 005C44DC    call        005C3FE0
 005C44E1    mov         dword ptr [ebp-14],eax
 005C44E4    cmp         dword ptr [ebp-14],0
>005C44E8    jne         005C44F4
 005C44EA    mov         eax,[006E9E08];^gvar_0063CA20
 005C44EF    call        InvalidGraphic
 005C44F4    mov         dl,1
 005C44F6    mov         eax,dword ptr [ebp-14]
 005C44F9    call        dword ptr [eax+48]
 005C44FC    mov         dword ptr [ebp-10],eax
 005C44FF    xor         eax,eax
 005C4501    push        ebp
 005C4502    push        5C4545
 005C4507    push        dword ptr fs:[eax]
 005C450A    mov         dword ptr fs:[eax],esp
 005C450D    mov         eax,dword ptr [ebp-10]
 005C4510    mov         edx,dword ptr [ebp-4]
 005C4513    mov         dword ptr [eax+1C],edx
 005C4516    push        eax
 005C4517    mov         eax,edx
 005C4519    mov         dx,0FFFC
 005C451D    call        @FindDynaInst
 005C4522    mov         edx,eax
 005C4524    pop         eax
 005C4525    mov         dword ptr [eax+18],edx
 005C4528    mov         eax,dword ptr [ebp+8]
 005C452B    push        eax
 005C452C    mov         ecx,dword ptr [ebp-0C]
 005C452F    mov         dx,word ptr [ebp-6]
 005C4533    mov         eax,dword ptr [ebp-10]
 005C4536    mov         ebx,dword ptr [eax]
 005C4538    call        dword ptr [ebx+5C]
 005C453B    xor         eax,eax
 005C453D    pop         edx
 005C453E    pop         ecx
 005C453F    pop         ecx
 005C4540    mov         dword ptr fs:[eax],edx
>005C4543    jmp         005C455C
>005C4545    jmp         @HandleAnyException
 005C454A    mov         eax,dword ptr [ebp-10]
 005C454D    call        TObject.Free
 005C4552    call        @RaiseAgain
 005C4557    call        @DoneExcept
 005C455C    mov         eax,dword ptr [ebp-4]
 005C455F    mov         eax,dword ptr [eax+0C]
 005C4562    call        TObject.Free
 005C4567    mov         eax,dword ptr [ebp-4]
 005C456A    mov         edx,dword ptr [ebp-10]
 005C456D    mov         dword ptr [eax+0C],edx
 005C4570    mov         eax,dword ptr [ebp-4]
 005C4573    mov         eax,dword ptr [eax+0C]
 005C4576    mov         edx,dword ptr [ebp-4]
 005C4579    mov         dword ptr [eax+14],edx
 005C457C    push        eax
 005C457D    mov         eax,edx
 005C457F    mov         dx,0FFFD
 005C4583    call        @FindDynaInst
 005C4588    mov         edx,eax
 005C458A    pop         eax
 005C458B    mov         dword ptr [eax+10],edx
 005C458E    mov         edx,dword ptr [ebp-4]
 005C4591    mov         eax,dword ptr [ebp-4]
 005C4594    mov         si,0FFFD
 005C4598    call        @CallDynaInst
 005C459D    pop         edi
 005C459E    pop         esi
 005C459F    pop         ebx
 005C45A0    mov         esp,ebp
 005C45A2    pop         ebp
 005C45A3    ret         4
end;*}

//005C45A8
{*procedure sub_005C45A8(?:?; ?:?; ?:?; ?:?);
begin
 005C45A8    push        ebp
 005C45A9    mov         ebp,esp
 005C45AB    add         esp,0FFFFFFF4
 005C45AE    push        ebx
 005C45AF    mov         dword ptr [ebp-0C],ecx
 005C45B2    mov         dword ptr [ebp-8],edx
 005C45B5    mov         dword ptr [ebp-4],eax
 005C45B8    mov         eax,dword ptr [ebp-4]
 005C45BB    cmp         dword ptr [eax+0C],0
>005C45BF    je          005C45D6
 005C45C1    mov         eax,dword ptr [ebp+8]
 005C45C4    push        eax
 005C45C5    mov         ecx,dword ptr [ebp-0C]
 005C45C8    mov         edx,dword ptr [ebp-8]
 005C45CB    mov         eax,dword ptr [ebp-4]
 005C45CE    mov         eax,dword ptr [eax+0C]
 005C45D1    mov         ebx,dword ptr [eax]
 005C45D3    call        dword ptr [ebx+60]
 005C45D6    pop         ebx
 005C45D7    mov         esp,ebp
 005C45D9    pop         ebp
 005C45DA    ret         4
end;*}

//005C45E0
{*function sub_005C45E0(?:TPicture; ?:?):?;
begin
 005C45E0    push        ebp
 005C45E1    mov         ebp,esp
 005C45E3    add         esp,0FFFFFFF8
 005C45E6    mov         word ptr [ebp-6],dx
 005C45EA    mov         dword ptr [ebp-4],eax
 005C45ED    call        005C40CC
 005C45F2    mov         dx,word ptr [ebp-6]
 005C45F6    call        005C3FE0
 005C45FB    test        eax,eax
 005C45FD    setne       byte ptr [ebp-7]
 005C4601    mov         al,byte ptr [ebp-7]
 005C4604    pop         ecx
 005C4605    pop         ecx
 005C4606    pop         ebp
 005C4607    ret
end;*}

//005C4608
{*procedure sub_005C4608(?:?; ?:?);
begin
 005C4608    push        ebp
 005C4609    mov         ebp,esp
 005C460B    add         esp,0FFFFFFF8
 005C460E    mov         dword ptr [ebp-8],edx
 005C4611    mov         dword ptr [ebp-4],eax
 005C4614    mov         eax,dword ptr [ebp-4]
 005C4617    call        005C4254
 005C461C    mov         edx,dword ptr [ebp-8]
 005C461F    mov         ecx,dword ptr [eax]
 005C4621    call        dword ptr [ecx+54]
 005C4624    pop         ecx
 005C4625    pop         ecx
 005C4626    pop         ebp
 005C4627    ret
end;*}

//005C4628
{*procedure sub_005C4628(?:?; ?:?);
begin
 005C4628    push        ebp
 005C4629    mov         ebp,esp
 005C462B    add         esp,0FFFFFFF8
 005C462E    mov         dword ptr [ebp-8],edx
 005C4631    mov         dword ptr [ebp-4],eax
 005C4634    mov         eax,dword ptr [ebp-4]
 005C4637    call        005C4254
 005C463C    mov         edx,dword ptr [ebp-8]
 005C463F    mov         ecx,dword ptr [eax]
 005C4641    call        dword ptr [ecx+58]
 005C4644    pop         ecx
 005C4645    pop         ecx
 005C4646    pop         ebp
 005C4647    ret
end;*}

//005C4648
procedure TPicture.Assign(Source:TPersistent);
begin
{*
 005C4648    push        ebp
 005C4649    mov         ebp,esp
 005C464B    add         esp,0FFFFFFF8
 005C464E    mov         dword ptr [ebp-8],edx
 005C4651    mov         dword ptr [ebp-4],eax
 005C4654    cmp         dword ptr [ebp-8],0
>005C4658    jne         005C4666
 005C465A    xor         edx,edx
 005C465C    mov         eax,dword ptr [ebp-4]
 005C465F    call        005C42A4
>005C4664    jmp         005C46B2
 005C4666    mov         eax,dword ptr [ebp-8]
 005C4669    mov         edx,dword ptr ds:[5BEB28];TPicture
 005C466F    call        @IsClass
 005C4674    test        al,al
>005C4676    je          005C4688
 005C4678    mov         eax,dword ptr [ebp-8]
 005C467B    mov         edx,dword ptr [eax+0C]
 005C467E    mov         eax,dword ptr [ebp-4]
 005C4681    call        005C42A4
>005C4686    jmp         005C46B2
 005C4688    mov         eax,dword ptr [ebp-8]
 005C468B    mov         edx,dword ptr ds:[5BE9D4];TGraphic
 005C4691    call        @IsClass
 005C4696    test        al,al
>005C4698    je          005C46A7
 005C469A    mov         edx,dword ptr [ebp-8]
 005C469D    mov         eax,dword ptr [ebp-4]
 005C46A0    call        005C42A4
>005C46A5    jmp         005C46B2
 005C46A7    mov         edx,dword ptr [ebp-8]
 005C46AA    mov         eax,dword ptr [ebp-4]
 005C46AD    call        TPersistent.Assign
 005C46B2    pop         ecx
 005C46B3    pop         ecx
 005C46B4    pop         ebp
 005C46B5    ret
*}
end;

//005C46B8
{*procedure sub_005C46B8(?:TPicture; ?:AnsiString; ?:TMemoryManager; ?:?);
begin
 005C46B8    push        ebp
 005C46B9    mov         ebp,esp
 005C46BB    add         esp,0FFFFFFF4
 005C46BE    mov         dword ptr [ebp-0C],ecx
 005C46C1    mov         dword ptr [ebp-8],edx
 005C46C4    mov         dword ptr [ebp-4],eax
 005C46C7    push        0
 005C46C9    mov         eax,dword ptr [ebp+8]
 005C46CC    push        eax
 005C46CD    call        005C40A0
 005C46D2    mov         ecx,dword ptr [ebp-0C]
 005C46D5    mov         edx,dword ptr [ebp-8]
 005C46D8    call        005C39D4
 005C46DD    mov         esp,ebp
 005C46DF    pop         ebp
 005C46E0    ret         4
end;*}

//005C46E4
procedure sub_005C46E4(?:TPicture; ?:TJPEGImage);
begin
{*
 005C46E4    push        ebp
 005C46E5    mov         ebp,esp
 005C46E7    add         esp,0FFFFFFF8
 005C46EA    mov         dword ptr [ebp-8],edx
 005C46ED    mov         dword ptr [ebp-4],eax
 005C46F0    cmp         dword ptr ds:[6E3F74],0;gvar_006E3F74:TFileFormatsList
>005C46F7    je          005C4706
 005C46F9    mov         edx,dword ptr [ebp-8]
 005C46FC    mov         eax,[006E3F74];0x0 gvar_006E3F74:TFileFormatsList
 005C4701    call        005C3BC4
 005C4706    cmp         dword ptr ds:[6E3F70],0;gvar_006E3F70:TClipboardFormats
>005C470D    je          005C471C
 005C470F    mov         edx,dword ptr [ebp-8]
 005C4712    mov         eax,[006E3F70];0x0 gvar_006E3F70:TClipboardFormats
 005C4717    call        005C403C
 005C471C    pop         ecx
 005C471D    pop         ecx
 005C471E    pop         ebp
 005C471F    ret
*}
end;

//005C4720
{*procedure TPicture.sub_005C4720(?:?);
begin
 005C4720    push        ebp
 005C4721    mov         ebp,esp
 005C4723    add         esp,0FFFFFFF8
 005C4726    push        ebx
 005C4727    mov         dword ptr [ebp-8],edx
 005C472A    mov         dword ptr [ebp-4],eax
 005C472D    mov         eax,dword ptr [ebp-4]
 005C4730    cmp         word ptr [eax+12],0;TPicture.?f12:word
>005C4735    je          005C4743
 005C4737    mov         ebx,dword ptr [ebp-4]
 005C473A    mov         edx,dword ptr [ebp-4]
 005C473D    mov         eax,dword ptr [ebx+14];TPicture.?f14:TImage
 005C4740    call        dword ptr [ebx+10];TPicture.FOnChange
 005C4743    mov         eax,dword ptr [ebp-4]
 005C4746    cmp         dword ptr [eax+18],0;TPicture.FNotify:IChangeNotifier
>005C474A    je          005C4757
 005C474C    mov         eax,dword ptr [ebp-4]
 005C474F    mov         eax,dword ptr [eax+18];TPicture.FNotify:IChangeNotifier
 005C4752    mov         edx,dword ptr [eax]
 005C4754    call        dword ptr [edx+0C]
 005C4757    pop         ebx
 005C4758    pop         ecx
 005C4759    pop         ecx
 005C475A    pop         ebp
 005C475B    ret
end;*}

//005C475C
{*procedure TPicture.sub_005C475C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005C475C    push        ebp
 005C475D    mov         ebp,esp
 005C475F    add         esp,0FFFFFFF4
 005C4762    push        ebx
 005C4763    mov         byte ptr [ebp-9],cl
 005C4766    mov         dword ptr [ebp-8],edx
 005C4769    mov         dword ptr [ebp-4],eax
 005C476C    mov         eax,dword ptr [ebp-4]
 005C476F    cmp         word ptr [eax+22],0;TPicture.?f22:word
>005C4774    je          005C4795
 005C4776    mov         al,byte ptr [ebp+14]
 005C4779    push        eax
 005C477A    mov         al,byte ptr [ebp+10]
 005C477D    push        eax
 005C477E    mov         eax,dword ptr [ebp+0C]
 005C4781    push        eax
 005C4782    mov         eax,dword ptr [ebp+8]
 005C4785    push        eax
 005C4786    mov         ebx,dword ptr [ebp-4]
 005C4789    mov         cl,byte ptr [ebp-9]
 005C478C    mov         edx,dword ptr [ebp-8]
 005C478F    mov         eax,dword ptr [ebx+24];TPicture.?f24:TImage
 005C4792    call        dword ptr [ebx+20];TPicture.FOnProgress
 005C4795    pop         ebx
 005C4796    mov         esp,ebp
 005C4798    pop         ebp
 005C4799    ret         10
end;*}

//005C479C
procedure TPicture.ReadData(Stream:TStream);
begin
{*
 005C479C    push        ebp
 005C479D    mov         ebp,esp
 005C479F    add         esp,0FFFFFFAC
 005C47A2    push        ebx
 005C47A3    push        esi
 005C47A4    push        edi
 005C47A5    xor         ecx,ecx
 005C47A7    mov         dword ptr [ebp-54],ecx
 005C47AA    mov         dword ptr [ebp-8],edx
 005C47AD    mov         dword ptr [ebp-4],eax
 005C47B0    xor         eax,eax
 005C47B2    push        ebp
 005C47B3    push        5C48BE
 005C47B8    push        dword ptr fs:[eax]
 005C47BB    mov         dword ptr fs:[eax],esp
 005C47BE    lea         edx,[ebp-50]
 005C47C1    mov         ecx,1
 005C47C6    mov         eax,dword ptr [ebp-8]
 005C47C9    mov         ebx,dword ptr [eax]
 005C47CB    call        dword ptr [ebx+8]
 005C47CE    xor         ecx,ecx
 005C47D0    mov         cl,byte ptr [ebp-50]
 005C47D3    lea         edx,[ebp-4F]
 005C47D6    mov         eax,dword ptr [ebp-8]
 005C47D9    mov         ebx,dword ptr [eax]
 005C47DB    call        dword ptr [ebx+8]
 005C47DE    lea         eax,[ebp-54]
 005C47E1    lea         edx,[ebp-50]
 005C47E4    call        @LStrFromString
 005C47E9    mov         edx,dword ptr [ebp-54]
 005C47EC    mov         eax,[006E3F74];gvar_006E3F74:TFileFormatsList
 005C47F1    call        005C3B28
 005C47F6    mov         dword ptr [ebp-10],eax
 005C47F9    xor         eax,eax
 005C47FB    mov         dword ptr [ebp-0C],eax
 005C47FE    cmp         dword ptr [ebp-10],0
>005C4802    je          005C4849
 005C4804    mov         dl,1
 005C4806    mov         eax,dword ptr [ebp-10]
 005C4809    call        dword ptr [eax+48]
 005C480C    mov         dword ptr [ebp-0C],eax
 005C480F    xor         eax,eax
 005C4811    push        ebp
 005C4812    push        5C4832
 005C4817    push        dword ptr fs:[eax]
 005C481A    mov         dword ptr fs:[eax],esp
 005C481D    mov         edx,dword ptr [ebp-8]
 005C4820    mov         eax,dword ptr [ebp-0C]
 005C4823    mov         ecx,dword ptr [eax]
 005C4825    call        dword ptr [ecx+30]
 005C4828    xor         eax,eax
 005C482A    pop         edx
 005C482B    pop         ecx
 005C482C    pop         ecx
 005C482D    mov         dword ptr fs:[eax],edx
>005C4830    jmp         005C4849
>005C4832    jmp         @HandleAnyException
 005C4837    mov         eax,dword ptr [ebp-0C]
 005C483A    call        TObject.Free
 005C483F    call        @RaiseAgain
 005C4844    call        @DoneExcept
 005C4849    mov         eax,dword ptr [ebp-4]
 005C484C    mov         eax,dword ptr [eax+0C]
 005C484F    call        TObject.Free
 005C4854    mov         eax,dword ptr [ebp-4]
 005C4857    mov         edx,dword ptr [ebp-0C]
 005C485A    mov         dword ptr [eax+0C],edx
 005C485D    cmp         dword ptr [ebp-0C],0
>005C4861    je          005C4899
 005C4863    mov         eax,dword ptr [ebp-0C]
 005C4866    mov         edx,dword ptr [ebp-4]
 005C4869    mov         dword ptr [eax+14],edx
 005C486C    push        eax
 005C486D    mov         eax,edx
 005C486F    mov         dx,0FFFD
 005C4873    call        @FindDynaInst
 005C4878    mov         edx,eax
 005C487A    pop         eax
 005C487B    mov         dword ptr [eax+10],edx
 005C487E    mov         eax,dword ptr [ebp-0C]
 005C4881    mov         edx,dword ptr [ebp-4]
 005C4884    mov         dword ptr [eax+1C],edx
 005C4887    push        eax
 005C4888    mov         eax,edx
 005C488A    mov         dx,0FFFC
 005C488E    call        @FindDynaInst
 005C4893    mov         edx,eax
 005C4895    pop         eax
 005C4896    mov         dword ptr [eax+18],edx
 005C4899    mov         edx,dword ptr [ebp-4]
 005C489C    mov         eax,dword ptr [ebp-4]
 005C489F    mov         si,0FFFD
 005C48A3    call        @CallDynaInst
 005C48A8    xor         eax,eax
 005C48AA    pop         edx
 005C48AB    pop         ecx
 005C48AC    pop         ecx
 005C48AD    mov         dword ptr fs:[eax],edx
 005C48B0    push        5C48C5
 005C48B5    lea         eax,[ebp-54]
 005C48B8    call        @LStrClr
 005C48BD    ret
>005C48BE    jmp         @HandleFinally
>005C48C3    jmp         005C48B5
 005C48C5    pop         edi
 005C48C6    pop         esi
 005C48C7    pop         ebx
 005C48C8    mov         esp,ebp
 005C48CA    pop         ebp
 005C48CB    ret
*}
end;

//005C48CC
procedure TPicture.WriteData(Stream:TStream);
begin
{*
 005C48CC    push        ebp
 005C48CD    mov         ebp,esp
 005C48CF    add         esp,0FFFFFEB8
 005C48D5    push        ebx
 005C48D6    mov         dword ptr [ebp-8],edx
 005C48D9    mov         dword ptr [ebp-4],eax
 005C48DC    mov         eax,dword ptr [ebp-4]
 005C48DF    cmp         dword ptr [eax+0C],0
>005C48E3    je          005C490A
 005C48E5    lea         edx,[ebp-148]
 005C48EB    mov         eax,dword ptr [ebp-4]
 005C48EE    mov         eax,dword ptr [eax+0C]
 005C48F1    mov         eax,dword ptr [eax]
 005C48F3    call        TObject.ClassName
 005C48F8    lea         edx,[ebp-148]
 005C48FE    lea         eax,[ebp-48]
 005C4901    mov         cl,3F
 005C4903    call        @PStrNCpy
>005C4908    jmp         005C490E
 005C490A    mov         byte ptr [ebp-48],0
 005C490E    xor         ecx,ecx
 005C4910    mov         cl,byte ptr [ebp-48]
 005C4913    inc         ecx
 005C4914    lea         edx,[ebp-48]
 005C4917    mov         eax,dword ptr [ebp-8]
 005C491A    mov         ebx,dword ptr [eax]
 005C491C    call        dword ptr [ebx+0C]
 005C491F    mov         eax,dword ptr [ebp-4]
 005C4922    cmp         dword ptr [eax+0C],0
>005C4926    je          005C4936
 005C4928    mov         edx,dword ptr [ebp-8]
 005C492B    mov         eax,dword ptr [ebp-4]
 005C492E    mov         eax,dword ptr [eax+0C]
 005C4931    mov         ecx,dword ptr [eax]
 005C4933    call        dword ptr [ecx+44]
 005C4936    pop         ebx
 005C4937    mov         esp,ebp
 005C4939    pop         ebp
 005C493A    ret
*}
end;

//005C493C
{*function sub_005C493C(?:?):?;
begin
 005C493C    push        ebp
 005C493D    mov         ebp,esp
 005C493F    add         esp,0FFFFFFF8
 005C4942    mov         eax,dword ptr [ebp+8]
 005C4945    mov         eax,dword ptr [eax-4]
 005C4948    cmp         dword ptr [eax+20],0
>005C494C    je          005C49BF
 005C494E    mov         byte ptr [ebp-1],1
 005C4952    mov         eax,dword ptr [ebp+8]
 005C4955    mov         eax,dword ptr [eax-4]
 005C4958    mov         eax,dword ptr [eax+20]
 005C495B    mov         edx,dword ptr ds:[5BEB28];TPicture
 005C4961    call        @IsClass
 005C4966    test        al,al
>005C4968    je          005C49CD
 005C496A    mov         eax,dword ptr [ebp+8]
 005C496D    mov         eax,dword ptr [eax-4]
 005C4970    mov         eax,dword ptr [eax+20]
 005C4973    mov         dword ptr [ebp-8],eax
 005C4976    mov         eax,dword ptr [ebp+8]
 005C4979    mov         eax,dword ptr [eax-8]
 005C497C    mov         eax,dword ptr [eax+0C]
 005C497F    mov         edx,dword ptr [ebp-8]
 005C4982    cmp         eax,dword ptr [edx+0C]
>005C4985    je          005C49B4
 005C4987    mov         eax,dword ptr [ebp+8]
 005C498A    mov         eax,dword ptr [eax-8]
 005C498D    cmp         dword ptr [eax+0C],0
>005C4991    je          005C49B8
 005C4993    mov         eax,dword ptr [ebp-8]
 005C4996    cmp         dword ptr [eax+0C],0
>005C499A    je          005C49B8
 005C499C    mov         eax,dword ptr [ebp+8]
 005C499F    mov         eax,dword ptr [eax-8]
 005C49A2    mov         eax,dword ptr [eax+0C]
 005C49A5    mov         edx,dword ptr [ebp-8]
 005C49A8    mov         edx,dword ptr [edx+0C]
 005C49AB    mov         ecx,dword ptr [eax]
 005C49AD    call        dword ptr [ecx+18]
 005C49B0    test        al,al
>005C49B2    je          005C49B8
 005C49B4    xor         eax,eax
>005C49B6    jmp         005C49BA
 005C49B8    mov         al,1
 005C49BA    mov         byte ptr [ebp-1],al
>005C49BD    jmp         005C49CD
 005C49BF    mov         eax,dword ptr [ebp+8]
 005C49C2    mov         eax,dword ptr [eax-8]
 005C49C5    cmp         dword ptr [eax+0C],0
 005C49C9    setne       byte ptr [ebp-1]
 005C49CD    mov         al,byte ptr [ebp-1]
 005C49D0    pop         ecx
 005C49D1    pop         ecx
 005C49D2    pop         ebp
 005C49D3    ret
end;*}

//005C49D4
procedure TPicture.DefineProperties(Filer:TFiler);
begin
{*
 005C49D4    push        ebp
 005C49D5    mov         ebp,esp
 005C49D7    add         esp,0FFFFFFF8
 005C49DA    push        ebx
 005C49DB    mov         dword ptr [ebp-4],edx
 005C49DE    mov         dword ptr [ebp-8],eax
 005C49E1    mov         eax,dword ptr [ebp-8]
 005C49E4    push        eax
 005C49E5    push        5C479C;TPicture.ReadData
 005C49EA    mov         eax,dword ptr [ebp-8]
 005C49ED    push        eax
 005C49EE    push        5C48CC;TPicture.WriteData
 005C49F3    push        ebp
 005C49F4    call        005C493C
 005C49F9    pop         ecx
 005C49FA    mov         ecx,eax
 005C49FC    mov         edx,5C4A18;'Data'
 005C4A01    mov         eax,dword ptr [ebp-4]
 005C4A04    mov         ebx,dword ptr [eax]
 005C4A06    call        dword ptr [ebx+8]
 005C4A09    pop         ebx
 005C4A0A    pop         ecx
 005C4A0B    pop         ecx
 005C4A0C    pop         ebp
 005C4A0D    ret
*}
end;

//005C4A20
function TPicture.GetWidth:Integer;
begin
{*
 005C4A20    push        ebp
 005C4A21    mov         ebp,esp
 005C4A23    add         esp,0FFFFFFF8
 005C4A26    mov         dword ptr [ebp-4],eax
 005C4A29    xor         eax,eax
 005C4A2B    mov         dword ptr [ebp-8],eax
 005C4A2E    mov         eax,dword ptr [ebp-4]
 005C4A31    cmp         dword ptr [eax+0C],0
>005C4A35    je          005C4A45
 005C4A37    mov         eax,dword ptr [ebp-4]
 005C4A3A    mov         eax,dword ptr [eax+0C]
 005C4A3D    mov         edx,dword ptr [eax]
 005C4A3F    call        dword ptr [edx+2C]
 005C4A42    mov         dword ptr [ebp-8],eax
 005C4A45    mov         eax,dword ptr [ebp-8]
 005C4A48    pop         ecx
 005C4A49    pop         ecx
 005C4A4A    pop         ebp
 005C4A4B    ret
*}
end;

//005C4A4C
function TPicture.GetHeight:Integer;
begin
{*
 005C4A4C    push        ebp
 005C4A4D    mov         ebp,esp
 005C4A4F    add         esp,0FFFFFFF8
 005C4A52    mov         dword ptr [ebp-4],eax
 005C4A55    xor         eax,eax
 005C4A57    mov         dword ptr [ebp-8],eax
 005C4A5A    mov         eax,dword ptr [ebp-4]
 005C4A5D    cmp         dword ptr [eax+0C],0
>005C4A61    je          005C4A71
 005C4A63    mov         eax,dword ptr [ebp-4]
 005C4A66    mov         eax,dword ptr [eax+0C]
 005C4A69    mov         edx,dword ptr [eax]
 005C4A6B    call        dword ptr [edx+20]
 005C4A6E    mov         dword ptr [ebp-8],eax
 005C4A71    mov         eax,dword ptr [ebp-8]
 005C4A74    pop         ecx
 005C4A75    pop         ecx
 005C4A76    pop         ebp
 005C4A77    ret
*}
end;

//005C4A78
destructor TMetafileImage.Destroy;
begin
{*
 005C4A78    push        ebp
 005C4A79    mov         ebp,esp
 005C4A7B    add         esp,0FFFFFFF8
 005C4A7E    call        @BeforeDestruction
 005C4A83    mov         byte ptr [ebp-5],dl
 005C4A86    mov         dword ptr [ebp-4],eax
 005C4A89    mov         eax,dword ptr [ebp-4]
 005C4A8C    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C4A90    je          005C4A9E
 005C4A92    mov         eax,dword ptr [ebp-4]
 005C4A95    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4A98    push        eax
 005C4A99    call        GDI32.DeleteEnhMetaFile
 005C4A9E    mov         eax,dword ptr [ebp-4]
 005C4AA1    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 005C4AA4    call        005BEFF0
 005C4AA9    mov         dl,byte ptr [ebp-5]
 005C4AAC    and         dl,0FC
 005C4AAF    mov         eax,dword ptr [ebp-4]
 005C4AB2    call        TObject.Destroy
 005C4AB7    cmp         byte ptr [ebp-5],0
>005C4ABB    jle         005C4AC5
 005C4ABD    mov         eax,dword ptr [ebp-4]
 005C4AC0    call        @ClassDestroy
 005C4AC5    pop         ecx
 005C4AC6    pop         ecx
 005C4AC7    pop         ebp
 005C4AC8    ret
*}
end;

//005C4ACC
procedure sub_005C4ACC;
begin
{*
 005C4ACC    push        ebp
 005C4ACD    mov         ebp,esp
 005C4ACF    push        ecx
 005C4AD0    mov         dword ptr [ebp-4],eax
 005C4AD3    pop         ecx
 005C4AD4    pop         ebp
 005C4AD5    ret
*}
end;

//005C4AD8
constructor TMetafile.Create;
begin
{*
 005C4AD8    push        ebp
 005C4AD9    mov         ebp,esp
 005C4ADB    add         esp,0FFFFFFF8
 005C4ADE    test        dl,dl
>005C4AE0    je          005C4AEA
 005C4AE2    add         esp,0FFFFFFF0
 005C4AE5    call        @ClassCreate
 005C4AEA    mov         byte ptr [ebp-5],dl
 005C4AED    mov         dword ptr [ebp-4],eax
 005C4AF0    xor         edx,edx
 005C4AF2    mov         eax,dword ptr [ebp-4]
 005C4AF5    call        TGraphic.Create
 005C4AFA    mov         eax,dword ptr [ebp-4]
 005C4AFD    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 005C4B01    mov         eax,dword ptr [ebp-4]
 005C4B04    mov         byte ptr [eax+21],1;TMetafile.FTransparent:Boolean
 005C4B08    xor         edx,edx
 005C4B0A    mov         eax,dword ptr [ebp-4]
 005C4B0D    mov         ecx,dword ptr [eax]
 005C4B0F    call        dword ptr [ecx+8];TMetafile.Assign
 005C4B12    mov         eax,dword ptr [ebp-4]
 005C4B15    cmp         byte ptr [ebp-5],0
>005C4B19    je          005C4B2A
 005C4B1B    call        @AfterConstruction
 005C4B20    pop         dword ptr fs:[0]
 005C4B27    add         esp,0C
 005C4B2A    mov         eax,dword ptr [ebp-4]
 005C4B2D    pop         ecx
 005C4B2E    pop         ecx
 005C4B2F    pop         ebp
 005C4B30    ret
*}
end;

//005C4B34
destructor TMetafile.Destroy;
begin
{*
 005C4B34    push        ebp
 005C4B35    mov         ebp,esp
 005C4B37    add         esp,0FFFFFFF8
 005C4B3A    call        @BeforeDestruction
 005C4B3F    mov         byte ptr [ebp-5],dl
 005C4B42    mov         dword ptr [ebp-4],eax
 005C4B45    mov         eax,dword ptr [ebp-4]
 005C4B48    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4B4B    call        TSharedImage.Release
 005C4B50    mov         dl,byte ptr [ebp-5]
 005C4B53    and         dl,0FC
 005C4B56    mov         eax,dword ptr [ebp-4]
 005C4B59    call        TPersistent.Destroy
 005C4B5E    cmp         byte ptr [ebp-5],0
>005C4B62    jle         005C4B6C
 005C4B64    mov         eax,dword ptr [ebp-4]
 005C4B67    call        @ClassDestroy
 005C4B6C    pop         ecx
 005C4B6D    pop         ecx
 005C4B6E    pop         ebp
 005C4B6F    ret
*}
end;

//005C4B70
procedure TMetafile.Assign(Source:TPersistent);
begin
{*
 005C4B70    push        ebp
 005C4B71    mov         ebp,esp
 005C4B73    add         esp,0FFFFFFF4
 005C4B76    mov         dword ptr [ebp-8],edx
 005C4B79    mov         dword ptr [ebp-4],eax
 005C4B7C    cmp         dword ptr [ebp-8],0
>005C4B80    je          005C4B98
 005C4B82    mov         eax,dword ptr [ebp-8]
 005C4B85    mov         edx,dword ptr ds:[5BEC94];TMetafile
 005C4B8B    call        @IsClass
 005C4B90    test        al,al
>005C4B92    je          005C4C33
 005C4B98    xor         eax,eax
 005C4B9A    mov         dword ptr [ebp-0C],eax
 005C4B9D    mov         eax,dword ptr [ebp-4]
 005C4BA0    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C4BA4    je          005C4BBD
 005C4BA6    mov         eax,dword ptr [ebp-4]
 005C4BA9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4BAC    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 005C4BAF    mov         dword ptr [ebp-0C],eax
 005C4BB2    mov         eax,dword ptr [ebp-4]
 005C4BB5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4BB8    call        TSharedImage.Release
 005C4BBD    cmp         dword ptr [ebp-8],0
>005C4BC1    je          005C4BDD
 005C4BC3    mov         eax,dword ptr [ebp-8]
 005C4BC6    mov         eax,dword ptr [eax+28]
 005C4BC9    mov         edx,dword ptr [ebp-4]
 005C4BCC    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 005C4BCF    mov         eax,dword ptr [ebp-8]
 005C4BD2    mov         al,byte ptr [eax+2C]
 005C4BD5    mov         edx,dword ptr [ebp-4]
 005C4BD8    mov         byte ptr [edx+2C],al;TMetafile.FEnhanced:Boolean
>005C4BDB    jmp         005C4BF6
 005C4BDD    mov         dl,1
 005C4BDF    mov         eax,[005BEC34];TMetafileImage
 005C4BE4    call        TObject.Create;TMetafileImage.Create
 005C4BE9    mov         edx,dword ptr [ebp-4]
 005C4BEC    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 005C4BEF    mov         eax,dword ptr [ebp-4]
 005C4BF2    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 005C4BF6    mov         eax,dword ptr [ebp-4]
 005C4BF9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4BFC    call        TSharedImage.Reference
 005C4C01    mov         eax,dword ptr [ebp-4]
 005C4C04    mov         edx,dword ptr [eax]
 005C4C06    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C4C09    cmp         eax,dword ptr [ebp-0C]
>005C4C0C    je          005C4C1A
 005C4C0E    mov         eax,dword ptr [ebp-4]
 005C4C11    mov         edx,dword ptr [eax]
 005C4C13    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C4C16    test        eax,eax
>005C4C18    jne         005C4C1E
 005C4C1A    xor         eax,eax
>005C4C1C    jmp         005C4C20
 005C4C1E    mov         al,1
 005C4C20    mov         edx,dword ptr [ebp-4]
 005C4C23    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 005C4C26    mov         edx,dword ptr [ebp-4]
 005C4C29    mov         eax,dword ptr [ebp-4]
 005C4C2C    mov         ecx,dword ptr [eax]
 005C4C2E    call        dword ptr [ecx+10];TMetafile.sub_005C33B8
>005C4C31    jmp         005C4C3E
 005C4C33    mov         edx,dword ptr [ebp-8]
 005C4C36    mov         eax,dword ptr [ebp-4]
 005C4C39    call        TPersistent.Assign
 005C4C3E    mov         esp,ebp
 005C4C40    pop         ebp
 005C4C41    ret
*}
end;

//005C4C44
{*procedure TMetafile.Draw(?:?; ?:?);
begin
 005C4C44    push        ebp
 005C4C45    mov         ebp,esp
 005C4C47    add         esp,0FFFFFFDC
 005C4C4A    push        esi
 005C4C4B    push        edi
 005C4C4C    mov         dword ptr [ebp-0C],ecx
 005C4C4F    mov         dword ptr [ebp-8],edx
 005C4C52    mov         dword ptr [ebp-4],eax
 005C4C55    mov         eax,dword ptr [ebp-4]
 005C4C58    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C4C5C    je          005C4CE5
 005C4C62    mov         eax,dword ptr [ebp-4]
 005C4C65    mov         edx,dword ptr [eax]
 005C4C67    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C4C6A    mov         dword ptr [ebp-10],eax
 005C4C6D    xor         eax,eax
 005C4C6F    mov         dword ptr [ebp-14],eax
 005C4C72    cmp         dword ptr [ebp-10],0
>005C4C76    je          005C4C9D
 005C4C78    push        0FF
 005C4C7A    mov         eax,dword ptr [ebp-10]
 005C4C7D    push        eax
 005C4C7E    mov         eax,dword ptr [ebp-8]
 005C4C81    call        TCanvas.GetHandle
 005C4C86    push        eax
 005C4C87    call        GDI32.SelectPalette
 005C4C8C    mov         dword ptr [ebp-14],eax
 005C4C8F    mov         eax,dword ptr [ebp-8]
 005C4C92    call        TCanvas.GetHandle
 005C4C97    push        eax
 005C4C98    call        GDI32.RealizePalette
 005C4C9D    mov         eax,dword ptr [ebp-0C]
 005C4CA0    mov         esi,eax
 005C4CA2    lea         edi,[ebp-24]
 005C4CA5    movs        dword ptr [edi],dword ptr [esi]
 005C4CA6    movs        dword ptr [edi],dword ptr [esi]
 005C4CA7    movs        dword ptr [edi],dword ptr [esi]
 005C4CA8    movs        dword ptr [edi],dword ptr [esi]
 005C4CA9    dec         dword ptr [ebp-1C]
 005C4CAC    dec         dword ptr [ebp-18]
 005C4CAF    lea         eax,[ebp-24]
 005C4CB2    push        eax
 005C4CB3    mov         eax,dword ptr [ebp-4]
 005C4CB6    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4CB9    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4CBC    push        eax
 005C4CBD    mov         eax,dword ptr [ebp-8]
 005C4CC0    call        TCanvas.GetHandle
 005C4CC5    push        eax
 005C4CC6    call        GDI32.PlayEnhMetaFile
 005C4CCB    cmp         dword ptr [ebp-10],0
>005C4CCF    je          005C4CE5
 005C4CD1    push        0FF
 005C4CD3    mov         eax,dword ptr [ebp-14]
 005C4CD6    push        eax
 005C4CD7    mov         eax,dword ptr [ebp-8]
 005C4CDA    call        TCanvas.GetHandle
 005C4CDF    push        eax
 005C4CE0    call        GDI32.SelectPalette
 005C4CE5    pop         edi
 005C4CE6    pop         esi
 005C4CE7    mov         esp,ebp
 005C4CE9    pop         ebp
 005C4CEA    ret
end;*}

//005C4CEC
{*function TMetafile.GetEmpty:?;
begin
 005C4CEC    push        ebp
 005C4CED    mov         ebp,esp
 005C4CEF    add         esp,0FFFFFFF8
 005C4CF2    mov         dword ptr [ebp-4],eax
 005C4CF5    mov         eax,dword ptr [ebp-4]
 005C4CF8    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
 005C4CFC    sete        byte ptr [ebp-5]
 005C4D00    mov         al,byte ptr [ebp-5]
 005C4D03    pop         ecx
 005C4D04    pop         ecx
 005C4D05    pop         ebp
 005C4D06    ret
end;*}

//005C4D08
{*function TMetafile.GetHeight:?;
begin
 005C4D08    push        ebp
 005C4D09    mov         ebp,esp
 005C4D0B    add         esp,0FFFFFF90
 005C4D0E    mov         dword ptr [ebp-4],eax
 005C4D11    mov         eax,dword ptr [ebp-4]
 005C4D14    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C4D18    jne         005C4D22
 005C4D1A    mov         eax,dword ptr [ebp-4]
 005C4D1D    call        005C4F60
 005C4D22    mov         eax,dword ptr [ebp-4]
 005C4D25    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4D28    mov         dword ptr [ebp-0C],eax
 005C4D2B    mov         eax,dword ptr [ebp-0C]
 005C4D2E    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>005C4D33    jne         005C4D75
 005C4D35    mov         eax,dword ptr [ebp-0C]
 005C4D38    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C4D3C    jne         005C4D49
 005C4D3E    mov         eax,dword ptr [ebp-0C]
 005C4D41    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 005C4D44    mov         dword ptr [ebp-8],eax
>005C4D47    jmp         005C4D8F
 005C4D49    lea         eax,[ebp-70]
 005C4D4C    push        eax
 005C4D4D    push        64
 005C4D4F    mov         eax,dword ptr [ebp-0C]
 005C4D52    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4D55    push        eax
 005C4D56    call        GDI32.GetEnhMetaFileHeader
 005C4D5B    imul        eax,dword ptr [ebp-1C],64
 005C4D5F    push        eax
 005C4D60    mov         eax,dword ptr [ebp-24]
 005C4D63    push        eax
 005C4D64    mov         eax,dword ptr [ebp-0C]
 005C4D67    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 005C4D6A    push        eax
 005C4D6B    call        KERNEL32.MulDiv
 005C4D70    mov         dword ptr [ebp-8],eax
>005C4D73    jmp         005C4D8F
 005C4D75    push        9EC
 005C4D7A    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C4D7F    push        eax
 005C4D80    mov         eax,dword ptr [ebp-0C]
 005C4D83    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 005C4D86    push        eax
 005C4D87    call        KERNEL32.MulDiv
 005C4D8C    mov         dword ptr [ebp-8],eax
 005C4D8F    mov         eax,dword ptr [ebp-8]
 005C4D92    mov         esp,ebp
 005C4D94    pop         ebp
 005C4D95    ret
end;*}

//005C4D98
{*function sub_005C4D98:?;
begin
 005C4D98    push        ebp
 005C4D99    mov         ebp,esp
 005C4D9B    add         esp,0FFFFFBF0
 005C4DA1    mov         dword ptr [ebp-4],eax
 005C4DA4    xor         eax,eax
 005C4DA6    mov         dword ptr [ebp-8],eax
 005C4DA9    mov         eax,dword ptr [ebp-4]
 005C4DAC    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C4DB0    je          005C4E5B
 005C4DB6    mov         eax,dword ptr [ebp-4]
 005C4DB9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4DBC    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C4DC0    je          005C4E5B
 005C4DC6    mov         eax,dword ptr [ebp-4]
 005C4DC9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4DCC    cmp         dword ptr [eax+14],0;TMetafileImage.FPalette:HPALETTE
>005C4DD0    jne         005C4E4F
 005C4DD2    push        0
 005C4DD4    push        0
 005C4DD6    mov         eax,dword ptr [ebp-4]
 005C4DD9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4DDC    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4DDF    push        eax
 005C4DE0    call        GDI32.GetEnhMetaFilePaletteEntries
 005C4DE5    mov         dword ptr [ebp-0C],eax
 005C4DE8    cmp         dword ptr [ebp-0C],0
>005C4DEC    je          005C4E5B
 005C4DEE    cmp         dword ptr [ebp-0C],100
>005C4DF5    jle         005C4DFE
 005C4DF7    and         dword ptr [ebp-0C],0FF
 005C4DFE    mov         eax,dword ptr [ebp-4]
 005C4E01    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4E04    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 005C4E07    call        005BEFF0
 005C4E0C    mov         word ptr [ebp-410],300
 005C4E15    mov         ax,word ptr [ebp-0C]
 005C4E19    mov         word ptr [ebp-40E],ax
 005C4E20    lea         eax,[ebp-40C]
 005C4E26    push        eax
 005C4E27    mov         eax,dword ptr [ebp-0C]
 005C4E2A    push        eax
 005C4E2B    mov         eax,dword ptr [ebp-4]
 005C4E2E    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4E31    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4E34    push        eax
 005C4E35    call        GDI32.GetEnhMetaFilePaletteEntries
 005C4E3A    lea         eax,[ebp-410]
 005C4E40    push        eax
 005C4E41    call        GDI32.CreatePalette
 005C4E46    mov         edx,dword ptr [ebp-4]
 005C4E49    mov         edx,dword ptr [edx+28];TMetafile.FImage:TMetafileImage
 005C4E4C    mov         dword ptr [edx+14],eax;TMetafileImage.FPalette:HPALETTE
 005C4E4F    mov         eax,dword ptr [ebp-4]
 005C4E52    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4E55    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 005C4E58    mov         dword ptr [ebp-8],eax
 005C4E5B    mov         eax,dword ptr [ebp-8]
 005C4E5E    mov         esp,ebp
 005C4E60    pop         ebp
 005C4E61    ret
end;*}

//005C4E64
{*function TMetafile.GetWidth:?;
begin
 005C4E64    push        ebp
 005C4E65    mov         ebp,esp
 005C4E67    add         esp,0FFFFFF90
 005C4E6A    mov         dword ptr [ebp-4],eax
 005C4E6D    mov         eax,dword ptr [ebp-4]
 005C4E70    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C4E74    jne         005C4E7E
 005C4E76    mov         eax,dword ptr [ebp-4]
 005C4E79    call        005C4F60
 005C4E7E    mov         eax,dword ptr [ebp-4]
 005C4E81    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4E84    mov         dword ptr [ebp-0C],eax
 005C4E87    mov         eax,dword ptr [ebp-0C]
 005C4E8A    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>005C4E8F    jne         005C4ED1
 005C4E91    mov         eax,dword ptr [ebp-0C]
 005C4E94    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C4E98    jne         005C4EA5
 005C4E9A    mov         eax,dword ptr [ebp-0C]
 005C4E9D    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 005C4EA0    mov         dword ptr [ebp-8],eax
>005C4EA3    jmp         005C4EEB
 005C4EA5    lea         eax,[ebp-70]
 005C4EA8    push        eax
 005C4EA9    push        64
 005C4EAB    mov         eax,dword ptr [ebp-0C]
 005C4EAE    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C4EB1    push        eax
 005C4EB2    call        GDI32.GetEnhMetaFileHeader
 005C4EB7    imul        eax,dword ptr [ebp-20],64
 005C4EBB    push        eax
 005C4EBC    mov         eax,dword ptr [ebp-28]
 005C4EBF    push        eax
 005C4EC0    mov         eax,dword ptr [ebp-0C]
 005C4EC3    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 005C4EC6    push        eax
 005C4EC7    call        KERNEL32.MulDiv
 005C4ECC    mov         dword ptr [ebp-8],eax
>005C4ECF    jmp         005C4EEB
 005C4ED1    push        9EC
 005C4ED6    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C4EDB    push        eax
 005C4EDC    mov         eax,dword ptr [ebp-0C]
 005C4EDF    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 005C4EE2    push        eax
 005C4EE3    call        KERNEL32.MulDiv
 005C4EE8    mov         dword ptr [ebp-8],eax
 005C4EEB    mov         eax,dword ptr [ebp-8]
 005C4EEE    mov         esp,ebp
 005C4EF0    pop         ebp
 005C4EF1    ret
end;*}

//005C4EF4
{*procedure TMetafile.LoadFromStream(?:?);
begin
 005C4EF4    push        ebp
 005C4EF5    mov         ebp,esp
 005C4EF7    add         esp,0FFFFFFF8
 005C4EFA    mov         dword ptr [ebp-8],edx
 005C4EFD    mov         dword ptr [ebp-4],eax
 005C4F00    mov         edx,dword ptr [ebp-8]
 005C4F03    mov         eax,dword ptr [ebp-4]
 005C4F06    call        005C5574
 005C4F0B    test        al,al
>005C4F0D    je          005C4F1C
 005C4F0F    mov         edx,dword ptr [ebp-8]
 005C4F12    mov         eax,dword ptr [ebp-4]
 005C4F15    call        005C5014
>005C4F1A    jmp         005C4F3B
 005C4F1C    mov         eax,dword ptr [ebp-8]
 005C4F1F    call        TStream.GetSize
 005C4F24    push        eax
 005C4F25    mov         eax,dword ptr [ebp-8]
 005C4F28    call        TStream.GetPosition
 005C4F2D    pop         ecx
 005C4F2E    sub         ecx,eax
 005C4F30    mov         edx,dword ptr [ebp-8]
 005C4F33    mov         eax,dword ptr [ebp-4]
 005C4F36    call        005C50FC
 005C4F3B    mov         eax,dword ptr [ebp-4]
 005C4F3E    mov         edx,dword ptr [eax]
 005C4F40    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C4F43    test        eax,eax
 005C4F45    setne       al
 005C4F48    mov         edx,dword ptr [ebp-4]
 005C4F4B    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 005C4F4E    mov         edx,dword ptr [ebp-4]
 005C4F51    mov         eax,dword ptr [ebp-4]
 005C4F54    mov         ecx,dword ptr [eax]
 005C4F56    call        dword ptr [ecx+10];TMetafile.sub_005C33B8
 005C4F59    pop         ecx
 005C4F5A    pop         ecx
 005C4F5B    pop         ebp
 005C4F5C    ret
end;*}

//005C4F60
procedure sub_005C4F60(?:TMetafile);
begin
{*
 005C4F60    push        ebp
 005C4F61    mov         ebp,esp
 005C4F63    push        ecx
 005C4F64    mov         dword ptr [ebp-4],eax
 005C4F67    mov         eax,dword ptr [ebp-4]
 005C4F6A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4F6D    call        TSharedImage.Release
 005C4F72    mov         dl,1
 005C4F74    mov         eax,[005BEC34];TMetafileImage
 005C4F79    call        TObject.Create;TMetafileImage.Create
 005C4F7E    mov         edx,dword ptr [ebp-4]
 005C4F81    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 005C4F84    mov         eax,dword ptr [ebp-4]
 005C4F87    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C4F8A    call        TSharedImage.Reference
 005C4F8F    pop         ecx
 005C4F90    pop         ebp
 005C4F91    ret
*}
end;

//005C4F94
{*procedure sub_005C4F94(?:?);
begin
 005C4F94    push        ebp
 005C4F95    mov         ebp,esp
 005C4F97    add         esp,0FFFFFFF4
 005C4F9A    push        ebx
 005C4F9B    mov         dword ptr [ebp-8],edx
 005C4F9E    mov         dword ptr [ebp-4],eax
 005C4FA1    lea         edx,[ebp-0C]
 005C4FA4    mov         ecx,4
 005C4FA9    mov         eax,dword ptr [ebp-8]
 005C4FAC    mov         ebx,dword ptr [eax]
 005C4FAE    call        dword ptr [ebx+8]
 005C4FB1    cmp         dword ptr [ebp-0C],4
>005C4FB5    jg          005C4FC3
 005C4FB7    xor         edx,edx
 005C4FB9    mov         eax,dword ptr [ebp-4]
 005C4FBC    mov         ecx,dword ptr [eax]
 005C4FBE    call        dword ptr [ecx+8];TMetafile.Assign
>005C4FC1    jmp         005C4FF0
 005C4FC3    mov         edx,dword ptr [ebp-8]
 005C4FC6    mov         eax,dword ptr [ebp-4]
 005C4FC9    call        005C5574
 005C4FCE    test        al,al
>005C4FD0    je          005C4FDF
 005C4FD2    mov         edx,dword ptr [ebp-8]
 005C4FD5    mov         eax,dword ptr [ebp-4]
 005C4FD8    call        005C5014
>005C4FDD    jmp         005C4FF0
 005C4FDF    mov         ecx,dword ptr [ebp-0C]
 005C4FE2    sub         ecx,4
 005C4FE5    mov         edx,dword ptr [ebp-8]
 005C4FE8    mov         eax,dword ptr [ebp-4]
 005C4FEB    call        005C50FC
 005C4FF0    mov         eax,dword ptr [ebp-4]
 005C4FF3    mov         edx,dword ptr [eax]
 005C4FF5    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C4FF8    test        eax,eax
 005C4FFA    setne       al
 005C4FFD    mov         edx,dword ptr [ebp-4]
 005C5000    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 005C5003    mov         edx,dword ptr [ebp-4]
 005C5006    mov         eax,dword ptr [ebp-4]
 005C5009    mov         ecx,dword ptr [eax]
 005C500B    call        dword ptr [ecx+10];TMetafile.sub_005C33B8
 005C500E    pop         ebx
 005C500F    mov         esp,ebp
 005C5011    pop         ebp
 005C5012    ret
end;*}

//005C5014
{*procedure sub_005C5014(?:TMetafile; ?:?);
begin
 005C5014    push        ebp
 005C5015    mov         ebp,esp
 005C5017    add         esp,0FFFFFF8C
 005C501A    mov         dword ptr [ebp-8],edx
 005C501D    mov         dword ptr [ebp-4],eax
 005C5020    mov         eax,dword ptr [ebp-4]
 005C5023    call        005C4F60
 005C5028    lea         edx,[ebp-74]
 005C502B    mov         ecx,64
 005C5030    mov         eax,dword ptr [ebp-8]
 005C5033    call        TStream.ReadBuffer
 005C5038    cmp         dword ptr [ebp-4C],464D4520
>005C503F    je          005C5046
 005C5041    call        InvalidMetafile
 005C5046    mov         eax,dword ptr [ebp-44]
 005C5049    call        @GetMem
 005C504E    mov         dword ptr [ebp-0C],eax
 005C5051    mov         eax,dword ptr [ebp-4]
 005C5054    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5057    mov         dword ptr [ebp-10],eax
 005C505A    xor         eax,eax
 005C505C    push        ebp
 005C505D    push        5C50EE
 005C5062    push        dword ptr fs:[eax]
 005C5065    mov         dword ptr fs:[eax],esp
 005C5068    mov         edx,dword ptr [ebp-0C]
 005C506B    lea         eax,[ebp-74]
 005C506E    mov         ecx,64
 005C5073    call        Move
 005C5078    mov         ecx,dword ptr [ebp-44]
 005C507B    sub         ecx,64
 005C507E    mov         edx,dword ptr [ebp-0C]
 005C5081    add         edx,64
 005C5084    mov         eax,dword ptr [ebp-8]
 005C5087    call        TStream.ReadBuffer
 005C508C    mov         eax,dword ptr [ebp-0C]
 005C508F    push        eax
 005C5090    mov         eax,dword ptr [ebp-44]
 005C5093    push        eax
 005C5094    call        GDI32.SetEnhMetaFileBits
 005C5099    mov         edx,dword ptr [ebp-10]
 005C509C    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 005C509F    mov         eax,dword ptr [ebp-10]
 005C50A2    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C50A6    jne         005C50AD
 005C50A8    call        InvalidMetafile
 005C50AD    mov         eax,dword ptr [ebp-10]
 005C50B0    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 005C50B6    mov         eax,dword ptr [ebp-54]
 005C50B9    sub         eax,dword ptr [ebp-5C]
 005C50BC    mov         edx,dword ptr [ebp-10]
 005C50BF    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 005C50C2    mov         eax,dword ptr [ebp-50]
 005C50C5    sub         eax,dword ptr [ebp-58]
 005C50C8    mov         edx,dword ptr [ebp-10]
 005C50CB    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 005C50CE    mov         eax,dword ptr [ebp-4]
 005C50D1    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 005C50D5    xor         eax,eax
 005C50D7    pop         edx
 005C50D8    pop         ecx
 005C50D9    pop         ecx
 005C50DA    mov         dword ptr fs:[eax],edx
 005C50DD    push        5C50F5
 005C50E2    mov         edx,dword ptr [ebp-44]
 005C50E5    mov         eax,dword ptr [ebp-0C]
 005C50E8    call        @FreeMem
 005C50ED    ret
>005C50EE    jmp         @HandleFinally
>005C50F3    jmp         005C50E2
 005C50F5    mov         esp,ebp
 005C50F7    pop         ebp
 005C50F8    ret
end;*}

//005C50FC
{*procedure sub_005C50FC(?:TMetafile; ?:?; ?:?);
begin
 005C50FC    push        ebp
 005C50FD    mov         ebp,esp
 005C50FF    add         esp,0FFFFFF60
 005C5105    push        ebx
 005C5106    mov         dword ptr [ebp-0C],ecx
 005C5109    mov         dword ptr [ebp-8],edx
 005C510C    mov         dword ptr [ebp-4],eax
 005C510F    mov         eax,dword ptr [ebp-4]
 005C5112    call        005C4F60
 005C5117    lea         edx,[ebp-2A]
 005C511A    mov         ecx,16
 005C511F    mov         eax,dword ptr [ebp-8]
 005C5122    mov         ebx,dword ptr [eax]
 005C5124    call        dword ptr [ebx+8]
 005C5127    cmp         dword ptr [ebp-2A],9AC6CDD7
>005C512E    jne         005C513E
 005C5130    lea         eax,[ebp-2A]
 005C5133    call        005C2E3C
 005C5138    cmp         ax,word ptr [ebp-16]
>005C513C    je          005C5143
 005C513E    call        InvalidMetafile
 005C5143    sub         dword ptr [ebp-0C],16
 005C5147    mov         eax,dword ptr [ebp-0C]
 005C514A    call        @GetMem
 005C514F    mov         dword ptr [ebp-10],eax
 005C5152    mov         eax,dword ptr [ebp-4]
 005C5155    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5158    mov         dword ptr [ebp-14],eax
 005C515B    xor         eax,eax
 005C515D    push        ebp
 005C515E    push        5C528F
 005C5163    push        dword ptr fs:[eax]
 005C5166    mov         dword ptr fs:[eax],esp
 005C5169    mov         edx,dword ptr [ebp-10]
 005C516C    mov         ecx,dword ptr [ebp-0C]
 005C516F    mov         eax,dword ptr [ebp-8]
 005C5172    mov         ebx,dword ptr [eax]
 005C5174    call        dword ptr [ebx+8]
 005C5177    mov         eax,dword ptr [ebp-4]
 005C517A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C517D    mov         dx,word ptr [ebp-1C]
 005C5181    mov         word ptr [eax+18],dx;TMetafileImage.FInch:word
 005C5185    cmp         word ptr [ebp-1C],0
>005C518A    jne         005C5192
 005C518C    mov         word ptr [ebp-1C],60
 005C5192    movzx       eax,word ptr [ebp-1C]
 005C5196    push        eax
 005C5197    push        9EC
 005C519C    movsx       eax,word ptr [ebp-20]
 005C51A0    movsx       edx,word ptr [ebp-24]
 005C51A4    sub         eax,edx
 005C51A6    push        eax
 005C51A7    call        KERNEL32.MulDiv
 005C51AC    mov         edx,dword ptr [ebp-14]
 005C51AF    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 005C51B2    movzx       eax,word ptr [ebp-1C]
 005C51B6    push        eax
 005C51B7    push        9EC
 005C51BC    movsx       eax,word ptr [ebp-1E]
 005C51C0    movsx       edx,word ptr [ebp-22]
 005C51C4    sub         eax,edx
 005C51C6    push        eax
 005C51C7    call        KERNEL32.MulDiv
 005C51CC    mov         edx,dword ptr [ebp-14]
 005C51CF    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 005C51D2    mov         dword ptr [ebp-3A],8
 005C51D9    xor         eax,eax
 005C51DB    mov         dword ptr [ebp-36],eax
 005C51DE    xor         eax,eax
 005C51E0    mov         dword ptr [ebp-32],eax
 005C51E3    xor         eax,eax
 005C51E5    mov         dword ptr [ebp-2E],eax
 005C51E8    lea         eax,[ebp-3A]
 005C51EB    push        eax
 005C51EC    push        0
 005C51EE    mov         eax,dword ptr [ebp-10]
 005C51F1    push        eax
 005C51F2    mov         eax,dword ptr [ebp-0C]
 005C51F5    push        eax
 005C51F6    call        GDI32.SetWinMetaFileBits
 005C51FB    mov         edx,dword ptr [ebp-14]
 005C51FE    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 005C5201    mov         eax,dword ptr [ebp-14]
 005C5204    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C5208    jne         005C520F
 005C520A    call        InvalidMetafile
 005C520F    lea         eax,[ebp-9E]
 005C5215    push        eax
 005C5216    push        64
 005C5218    mov         eax,dword ptr [ebp-14]
 005C521B    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C521E    push        eax
 005C521F    call        GDI32.GetEnhMetaFileHeader
 005C5224    mov         dword ptr [ebp-3A],8
 005C522B    mov         eax,dword ptr [ebp-7E]
 005C522E    mov         dword ptr [ebp-36],eax
 005C5231    mov         eax,dword ptr [ebp-7A]
 005C5234    mov         dword ptr [ebp-32],eax
 005C5237    xor         eax,eax
 005C5239    mov         dword ptr [ebp-2E],eax
 005C523C    mov         eax,dword ptr [ebp-14]
 005C523F    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C5242    push        eax
 005C5243    call        GDI32.DeleteEnhMetaFile
 005C5248    lea         eax,[ebp-3A]
 005C524B    push        eax
 005C524C    push        0
 005C524E    mov         eax,dword ptr [ebp-10]
 005C5251    push        eax
 005C5252    mov         eax,dword ptr [ebp-0C]
 005C5255    push        eax
 005C5256    call        GDI32.SetWinMetaFileBits
 005C525B    mov         edx,dword ptr [ebp-14]
 005C525E    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 005C5261    mov         eax,dword ptr [ebp-14]
 005C5264    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C5268    jne         005C526F
 005C526A    call        InvalidMetafile
 005C526F    mov         eax,dword ptr [ebp-4]
 005C5272    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 005C5276    xor         eax,eax
 005C5278    pop         edx
 005C5279    pop         ecx
 005C527A    pop         ecx
 005C527B    mov         dword ptr fs:[eax],edx
 005C527E    push        5C5296
 005C5283    mov         edx,dword ptr [ebp-0C]
 005C5286    mov         eax,dword ptr [ebp-10]
 005C5289    call        @FreeMem
 005C528E    ret
>005C528F    jmp         @HandleFinally
>005C5294    jmp         005C5283
 005C5296    pop         ebx
 005C5297    mov         esp,ebp
 005C5299    pop         ebp
 005C529A    ret
end;*}

//005C529C
{*procedure sub_005C529C(?:?);
begin
 005C529C    push        ebp
 005C529D    mov         ebp,esp
 005C529F    add         esp,0FFFFFFEC
 005C52A2    xor         ecx,ecx
 005C52A4    mov         dword ptr [ebp-10],ecx
 005C52A7    mov         dword ptr [ebp-14],ecx
 005C52AA    mov         dword ptr [ebp-8],edx
 005C52AD    mov         dword ptr [ebp-4],eax
 005C52B0    xor         eax,eax
 005C52B2    push        ebp
 005C52B3    push        5C5322
 005C52B8    push        dword ptr fs:[eax]
 005C52BB    mov         dword ptr fs:[eax],esp
 005C52BE    mov         eax,dword ptr [ebp-4]
 005C52C1    mov         al,byte ptr [eax+2C];TMetafile.FEnhanced:Boolean
 005C52C4    mov         byte ptr [ebp-9],al
 005C52C7    lea         edx,[ebp-14]
 005C52CA    mov         eax,dword ptr [ebp-8]
 005C52CD    call        006585C4
 005C52D2    mov         eax,dword ptr [ebp-14]
 005C52D5    lea         edx,[ebp-10]
 005C52D8    call        0065D4BC
 005C52DD    mov         eax,dword ptr [ebp-10]
 005C52E0    mov         edx,5C5338;'.wmf'
 005C52E5    call        @LStrCmp
>005C52EA    jne         005C52F3
 005C52EC    mov         eax,dword ptr [ebp-4]
 005C52EF    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 005C52F3    mov         edx,dword ptr [ebp-8]
 005C52F6    mov         eax,dword ptr [ebp-4]
 005C52F9    call        005C36D8
 005C52FE    mov         al,byte ptr [ebp-9]
 005C5301    mov         edx,dword ptr [ebp-4]
 005C5304    mov         byte ptr [edx+2C],al;TMetafile.FEnhanced:Boolean
 005C5307    xor         eax,eax
 005C5309    pop         edx
 005C530A    pop         ecx
 005C530B    pop         ecx
 005C530C    mov         dword ptr fs:[eax],edx
 005C530F    push        5C5329
 005C5314    lea         eax,[ebp-14]
 005C5317    mov         edx,2
 005C531C    call        @LStrArrayClr
 005C5321    ret
>005C5322    jmp         @HandleFinally
>005C5327    jmp         005C5314
 005C5329    mov         esp,ebp
 005C532B    pop         ebp
 005C532C    ret
end;*}

//005C5340
{*procedure TMetafile.SaveToStream(?:?);
begin
 005C5340    push        ebp
 005C5341    mov         ebp,esp
 005C5343    add         esp,0FFFFFFF8
 005C5346    mov         dword ptr [ebp-8],edx
 005C5349    mov         dword ptr [ebp-4],eax
 005C534C    mov         eax,dword ptr [ebp-4]
 005C534F    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C5353    je          005C5376
 005C5355    mov         eax,dword ptr [ebp-4]
 005C5358    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>005C535C    je          005C536B
 005C535E    mov         edx,dword ptr [ebp-8]
 005C5361    mov         eax,dword ptr [ebp-4]
 005C5364    call        005C5754
>005C5369    jmp         005C5376
 005C536B    mov         edx,dword ptr [ebp-8]
 005C536E    mov         eax,dword ptr [ebp-4]
 005C5371    call        005C57E8
 005C5376    pop         ecx
 005C5377    pop         ecx
 005C5378    pop         ebp
 005C5379    ret
end;*}

//005C537C
{*procedure TMetafile.SetHeight(?:?);
begin
 005C537C    push        ebp
 005C537D    mov         ebp,esp
 005C537F    add         esp,0FFFFFF90
 005C5382    mov         dword ptr [ebp-8],edx
 005C5385    mov         dword ptr [ebp-4],eax
 005C5388    mov         eax,dword ptr [ebp-4]
 005C538B    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C538F    jne         005C5399
 005C5391    mov         eax,dword ptr [ebp-4]
 005C5394    call        005C4F60
 005C5399    mov         eax,dword ptr [ebp-4]
 005C539C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C539F    mov         dword ptr [ebp-0C],eax
 005C53A2    mov         eax,dword ptr [ebp-0C]
 005C53A5    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>005C53AA    jne         005C53F0
 005C53AC    mov         eax,dword ptr [ebp-0C]
 005C53AF    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C53B3    jne         005C53C0
 005C53B5    mov         eax,dword ptr [ebp-8]
 005C53B8    mov         edx,dword ptr [ebp-0C]
 005C53BB    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
>005C53BE    jmp         005C540E
 005C53C0    lea         eax,[ebp-70]
 005C53C3    push        eax
 005C53C4    push        64
 005C53C6    mov         eax,dword ptr [ebp-0C]
 005C53C9    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C53CC    push        eax
 005C53CD    call        GDI32.GetEnhMetaFileHeader
 005C53D2    mov         eax,dword ptr [ebp-24]
 005C53D5    push        eax
 005C53D6    imul        eax,dword ptr [ebp-1C],64
 005C53DA    push        eax
 005C53DB    mov         eax,dword ptr [ebp-8]
 005C53DE    push        eax
 005C53DF    call        KERNEL32.MulDiv
 005C53E4    mov         edx,eax
 005C53E6    mov         eax,dword ptr [ebp-4]
 005C53E9    call        005C5414
>005C53EE    jmp         005C540E
 005C53F0    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C53F5    push        eax
 005C53F6    push        9EC
 005C53FB    mov         eax,dword ptr [ebp-8]
 005C53FE    push        eax
 005C53FF    call        KERNEL32.MulDiv
 005C5404    mov         edx,eax
 005C5406    mov         eax,dword ptr [ebp-4]
 005C5409    call        005C5414
 005C540E    mov         esp,ebp
 005C5410    pop         ebp
 005C5411    ret
end;*}

//005C5414
{*procedure sub_005C5414(?:TMetafile; ?:?);
begin
 005C5414    push        ebp
 005C5415    mov         ebp,esp
 005C5417    add         esp,0FFFFFFF8
 005C541A    mov         dword ptr [ebp-8],edx
 005C541D    mov         dword ptr [ebp-4],eax
 005C5420    mov         eax,dword ptr [ebp-4]
 005C5423    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C5427    jne         005C5431
 005C5429    mov         eax,dword ptr [ebp-4]
 005C542C    call        005C4F60
 005C5431    mov         eax,dword ptr [ebp-4]
 005C5434    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5437    xor         edx,edx
 005C5439    mov         dword ptr [eax+20],edx;TMetafileImage.FTempHeight:Integer
 005C543C    mov         eax,dword ptr [ebp-4]
 005C543F    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5442    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 005C5445    cmp         eax,dword ptr [ebp-8]
>005C5448    je          005C5469
 005C544A    mov         eax,dword ptr [ebp-4]
 005C544D    call        005C55E8
 005C5452    mov         eax,dword ptr [ebp-4]
 005C5455    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5458    mov         edx,dword ptr [ebp-8]
 005C545B    mov         dword ptr [eax+10],edx;TMetafileImage.FHeight:Integer
 005C545E    mov         edx,dword ptr [ebp-4]
 005C5461    mov         eax,dword ptr [ebp-4]
 005C5464    mov         ecx,dword ptr [eax]
 005C5466    call        dword ptr [ecx+10];TMetafile.sub_005C33B8
 005C5469    pop         ecx
 005C546A    pop         ecx
 005C546B    pop         ebp
 005C546C    ret
end;*}

//005C5470
{*procedure sub_005C5470(?:TMetafile; ?:?);
begin
 005C5470    push        ebp
 005C5471    mov         ebp,esp
 005C5473    add         esp,0FFFFFFF8
 005C5476    mov         dword ptr [ebp-8],edx
 005C5479    mov         dword ptr [ebp-4],eax
 005C547C    mov         eax,dword ptr [ebp-4]
 005C547F    cmp         dword ptr [eax+28],0
>005C5483    jne         005C548D
 005C5485    mov         eax,dword ptr [ebp-4]
 005C5488    call        005C4F60
 005C548D    mov         eax,dword ptr [ebp-4]
 005C5490    mov         eax,dword ptr [eax+28]
 005C5493    xor         edx,edx
 005C5495    mov         dword ptr [eax+1C],edx
 005C5498    mov         eax,dword ptr [ebp-4]
 005C549B    mov         eax,dword ptr [eax+28]
 005C549E    mov         eax,dword ptr [eax+0C]
 005C54A1    cmp         eax,dword ptr [ebp-8]
>005C54A4    je          005C54C5
 005C54A6    mov         eax,dword ptr [ebp-4]
 005C54A9    call        005C55E8
 005C54AE    mov         eax,dword ptr [ebp-4]
 005C54B1    mov         eax,dword ptr [eax+28]
 005C54B4    mov         edx,dword ptr [ebp-8]
 005C54B7    mov         dword ptr [eax+0C],edx
 005C54BA    mov         edx,dword ptr [ebp-4]
 005C54BD    mov         eax,dword ptr [ebp-4]
 005C54C0    mov         ecx,dword ptr [eax]
 005C54C2    call        dword ptr [ecx+10]
 005C54C5    pop         ecx
 005C54C6    pop         ecx
 005C54C7    pop         ebp
 005C54C8    ret
end;*}

//005C54CC
{*procedure sub_005C54CC(?:?);
begin
 005C54CC    push        ebp
 005C54CD    mov         ebp,esp
 005C54CF    add         esp,0FFFFFFF8
 005C54D2    mov         byte ptr [ebp-5],dl
 005C54D5    mov         dword ptr [ebp-4],eax
 005C54D8    pop         ecx
 005C54D9    pop         ecx
 005C54DA    pop         ebp
 005C54DB    ret
end;*}

//005C54DC
{*procedure TMetafile.SetWidth(?:?);
begin
 005C54DC    push        ebp
 005C54DD    mov         ebp,esp
 005C54DF    add         esp,0FFFFFF90
 005C54E2    mov         dword ptr [ebp-8],edx
 005C54E5    mov         dword ptr [ebp-4],eax
 005C54E8    mov         eax,dword ptr [ebp-4]
 005C54EB    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C54EF    jne         005C54F9
 005C54F1    mov         eax,dword ptr [ebp-4]
 005C54F4    call        005C4F60
 005C54F9    mov         eax,dword ptr [ebp-4]
 005C54FC    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C54FF    mov         dword ptr [ebp-0C],eax
 005C5502    mov         eax,dword ptr [ebp-0C]
 005C5505    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>005C550A    jne         005C5550
 005C550C    mov         eax,dword ptr [ebp-0C]
 005C550F    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C5513    jne         005C5520
 005C5515    mov         eax,dword ptr [ebp-8]
 005C5518    mov         edx,dword ptr [ebp-0C]
 005C551B    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
>005C551E    jmp         005C556E
 005C5520    lea         eax,[ebp-70]
 005C5523    push        eax
 005C5524    push        64
 005C5526    mov         eax,dword ptr [ebp-0C]
 005C5529    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C552C    push        eax
 005C552D    call        GDI32.GetEnhMetaFileHeader
 005C5532    mov         eax,dword ptr [ebp-28]
 005C5535    push        eax
 005C5536    imul        eax,dword ptr [ebp-20],64
 005C553A    push        eax
 005C553B    mov         eax,dword ptr [ebp-8]
 005C553E    push        eax
 005C553F    call        KERNEL32.MulDiv
 005C5544    mov         edx,eax
 005C5546    mov         eax,dword ptr [ebp-4]
 005C5549    call        005C5470
>005C554E    jmp         005C556E
 005C5550    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C5555    push        eax
 005C5556    push        9EC
 005C555B    mov         eax,dword ptr [ebp-8]
 005C555E    push        eax
 005C555F    call        KERNEL32.MulDiv
 005C5564    mov         edx,eax
 005C5566    mov         eax,dword ptr [ebp-4]
 005C5569    call        005C5470
 005C556E    mov         esp,ebp
 005C5570    pop         ebp
 005C5571    ret
end;*}

//005C5574
{*function sub_005C5574(?:TMetafile; ?:?):?;
begin
 005C5574    push        ebp
 005C5575    mov         ebp,esp
 005C5577    add         esp,0FFFFFF8C
 005C557A    push        ebx
 005C557B    mov         dword ptr [ebp-8],edx
 005C557E    mov         dword ptr [ebp-4],eax
 005C5581    mov         eax,dword ptr [ebp-8]
 005C5584    call        TStream.GetSize
 005C5589    mov         ebx,eax
 005C558B    mov         eax,dword ptr [ebp-8]
 005C558E    call        TStream.GetPosition
 005C5593    sub         ebx,eax
 005C5595    mov         dword ptr [ebp-10],ebx
 005C5598    cmp         dword ptr [ebp-10],64
>005C559C    jle         005C55BF
 005C559E    lea         edx,[ebp-74]
 005C55A1    mov         ecx,64
 005C55A6    mov         eax,dword ptr [ebp-8]
 005C55A9    mov         ebx,dword ptr [eax]
 005C55AB    call        dword ptr [ebx+8]
 005C55AE    mov         cx,1
 005C55B2    mov         edx,0FFFFFF9C
 005C55B7    mov         eax,dword ptr [ebp-8]
 005C55BA    mov         ebx,dword ptr [eax]
 005C55BC    call        dword ptr [ebx+10]
 005C55BF    cmp         dword ptr [ebp-10],64
>005C55C3    jle         005C55D4
 005C55C5    cmp         dword ptr [ebp-74],1
>005C55C9    jne         005C55D4
 005C55CB    cmp         dword ptr [ebp-4C],464D4520
>005C55D2    je          005C55D8
 005C55D4    xor         eax,eax
>005C55D6    jmp         005C55DA
 005C55D8    mov         al,1
 005C55DA    mov         byte ptr [ebp-9],al
 005C55DD    mov         al,byte ptr [ebp-9]
 005C55E0    pop         ebx
 005C55E1    mov         esp,ebp
 005C55E3    pop         ebp
 005C55E4    ret
end;*}

//005C55E8
procedure sub_005C55E8(?:TMetafile);
begin
{*
 005C55E8    push        ebp
 005C55E9    mov         ebp,esp
 005C55EB    add         esp,0FFFFFFF8
 005C55EE    mov         dword ptr [ebp-4],eax
 005C55F1    mov         eax,dword ptr [ebp-4]
 005C55F4    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C55F8    jne         005C5607
 005C55FA    mov         eax,dword ptr [ebp-4]
 005C55FD    call        005C4F60
>005C5602    jmp         005C56B5
 005C5607    mov         eax,dword ptr [ebp-4]
 005C560A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C560D    cmp         dword ptr [eax+4],1;TMetafileImage.......FRefCount:Integer
>005C5611    jle         005C56B5
 005C5617    mov         dl,1
 005C5619    mov         eax,[005BEC34];TMetafileImage
 005C561E    call        TObject.Create;TMetafileImage.Create
 005C5623    mov         dword ptr [ebp-8],eax
 005C5626    mov         eax,dword ptr [ebp-4]
 005C5629    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C562C    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>005C5630    je          005C5649
 005C5632    push        0
 005C5634    mov         eax,dword ptr [ebp-4]
 005C5637    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C563A    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C563D    push        eax
 005C563E    call        GDI32.CopyEnhMetaFileA
 005C5643    mov         edx,dword ptr [ebp-8]
 005C5646    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 005C5649    mov         eax,dword ptr [ebp-4]
 005C564C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C564F    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 005C5652    mov         edx,dword ptr [ebp-8]
 005C5655    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 005C5658    mov         eax,dword ptr [ebp-4]
 005C565B    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C565E    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 005C5661    mov         edx,dword ptr [ebp-8]
 005C5664    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 005C5667    mov         eax,dword ptr [ebp-4]
 005C566A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C566D    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 005C5671    mov         edx,dword ptr [ebp-8]
 005C5674    mov         word ptr [edx+18],ax;TMetafileImage.FInch:word
 005C5678    mov         eax,dword ptr [ebp-4]
 005C567B    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C567E    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 005C5681    mov         edx,dword ptr [ebp-8]
 005C5684    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
 005C5687    mov         eax,dword ptr [ebp-4]
 005C568A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C568D    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 005C5690    mov         edx,dword ptr [ebp-8]
 005C5693    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
 005C5696    mov         eax,dword ptr [ebp-4]
 005C5699    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C569C    call        TSharedImage.Release
 005C56A1    mov         eax,dword ptr [ebp-8]
 005C56A4    mov         edx,dword ptr [ebp-4]
 005C56A7    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 005C56AA    mov         eax,dword ptr [ebp-4]
 005C56AD    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C56B0    call        TSharedImage.Reference
 005C56B5    pop         ecx
 005C56B6    pop         ecx
 005C56B7    pop         ebp
 005C56B8    ret
*}
end;

//005C56BC
{*procedure sub_005C56BC(?:?);
begin
 005C56BC    push        ebp
 005C56BD    mov         ebp,esp
 005C56BF    add         esp,0FFFFFFF4
 005C56C2    push        ebx
 005C56C3    mov         dword ptr [ebp-8],edx
 005C56C6    mov         dword ptr [ebp-4],eax
 005C56C9    mov         eax,dword ptr [ebp-4]
 005C56CC    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C56D0    je          005C574F
 005C56D2    xor         eax,eax
 005C56D4    mov         dword ptr [ebp-0C],eax
 005C56D7    lea         edx,[ebp-0C]
 005C56DA    mov         ecx,4
 005C56DF    mov         eax,dword ptr [ebp-8]
 005C56E2    mov         ebx,dword ptr [eax]
 005C56E4    call        dword ptr [ebx+0C]
 005C56E7    mov         eax,dword ptr [ebp-8]
 005C56EA    call        TStream.GetPosition
 005C56EF    sub         eax,4
 005C56F2    mov         dword ptr [ebp-0C],eax
 005C56F5    mov         eax,dword ptr [ebp-4]
 005C56F8    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>005C56FC    je          005C570B
 005C56FE    mov         edx,dword ptr [ebp-8]
 005C5701    mov         eax,dword ptr [ebp-4]
 005C5704    call        005C5754
>005C5709    jmp         005C5716
 005C570B    mov         edx,dword ptr [ebp-8]
 005C570E    mov         eax,dword ptr [ebp-4]
 005C5711    call        005C57E8
 005C5716    xor         ecx,ecx
 005C5718    mov         edx,dword ptr [ebp-0C]
 005C571B    mov         eax,dword ptr [ebp-8]
 005C571E    mov         ebx,dword ptr [eax]
 005C5720    call        dword ptr [ebx+10]
 005C5723    mov         eax,dword ptr [ebp-8]
 005C5726    call        TStream.GetSize
 005C572B    sub         eax,dword ptr [ebp-0C]
 005C572E    mov         dword ptr [ebp-0C],eax
 005C5731    lea         edx,[ebp-0C]
 005C5734    mov         ecx,4
 005C5739    mov         eax,dword ptr [ebp-8]
 005C573C    mov         ebx,dword ptr [eax]
 005C573E    call        dword ptr [ebx+0C]
 005C5741    mov         cx,2
 005C5745    xor         edx,edx
 005C5747    mov         eax,dword ptr [ebp-8]
 005C574A    mov         ebx,dword ptr [eax]
 005C574C    call        dword ptr [ebx+10]
 005C574F    pop         ebx
 005C5750    mov         esp,ebp
 005C5752    pop         ebp
 005C5753    ret
end;*}

//005C5754
{*procedure sub_005C5754(?:TMetafile; ?:?);
begin
 005C5754    push        ebp
 005C5755    mov         ebp,esp
 005C5757    add         esp,0FFFFFFF0
 005C575A    mov         dword ptr [ebp-8],edx
 005C575D    mov         dword ptr [ebp-4],eax
 005C5760    mov         eax,dword ptr [ebp-4]
 005C5763    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C5767    je          005C57E3
 005C5769    push        0
 005C576B    push        0
 005C576D    mov         eax,dword ptr [ebp-4]
 005C5770    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5773    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C5776    push        eax
 005C5777    call        GDI32.GetEnhMetaFileBits
 005C577C    mov         dword ptr [ebp-10],eax
 005C577F    cmp         dword ptr [ebp-10],0
>005C5783    je          005C57E3
 005C5785    mov         eax,dword ptr [ebp-10]
 005C5788    call        @GetMem
 005C578D    mov         dword ptr [ebp-0C],eax
 005C5790    xor         eax,eax
 005C5792    push        ebp
 005C5793    push        5C57DC
 005C5798    push        dword ptr fs:[eax]
 005C579B    mov         dword ptr fs:[eax],esp
 005C579E    mov         eax,dword ptr [ebp-0C]
 005C57A1    push        eax
 005C57A2    mov         eax,dword ptr [ebp-10]
 005C57A5    push        eax
 005C57A6    mov         eax,dword ptr [ebp-4]
 005C57A9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C57AC    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C57AF    push        eax
 005C57B0    call        GDI32.GetEnhMetaFileBits
 005C57B5    mov         edx,dword ptr [ebp-0C]
 005C57B8    mov         ecx,dword ptr [ebp-10]
 005C57BB    mov         eax,dword ptr [ebp-8]
 005C57BE    call        TStream.WriteBuffer
 005C57C3    xor         eax,eax
 005C57C5    pop         edx
 005C57C6    pop         ecx
 005C57C7    pop         ecx
 005C57C8    mov         dword ptr fs:[eax],edx
 005C57CB    push        5C57E3
 005C57D0    mov         edx,dword ptr [ebp-10]
 005C57D3    mov         eax,dword ptr [ebp-0C]
 005C57D6    call        @FreeMem
 005C57DB    ret
>005C57DC    jmp         @HandleFinally
>005C57E1    jmp         005C57D0
 005C57E3    mov         esp,ebp
 005C57E5    pop         ebp
 005C57E6    ret
end;*}

//005C57E8
{*procedure sub_005C57E8(?:TMetafile; ?:?);
begin
 005C57E8    push        ebp
 005C57E9    mov         ebp,esp
 005C57EB    add         esp,0FFFFFFD0
 005C57EE    mov         dword ptr [ebp-8],edx
 005C57F1    mov         dword ptr [ebp-4],eax
 005C57F4    mov         eax,dword ptr [ebp-4]
 005C57F7    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C57FB    je          005C5949
 005C5801    lea         eax,[ebp-2E]
 005C5804    xor         ecx,ecx
 005C5806    mov         edx,16
 005C580B    call        @FillChar
 005C5810    mov         eax,dword ptr [ebp-4]
 005C5813    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5816    mov         dword ptr [ebp-18],eax
 005C5819    mov         dword ptr [ebp-2E],9AC6CDD7
 005C5820    mov         eax,dword ptr [ebp-18]
 005C5823    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>005C5828    jne         005C5832
 005C582A    mov         word ptr [ebp-20],60
>005C5830    jmp         005C583D
 005C5832    mov         eax,dword ptr [ebp-18]
 005C5835    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 005C5839    mov         word ptr [ebp-20],ax
 005C583D    push        9EC
 005C5842    movzx       eax,word ptr [ebp-20]
 005C5846    push        eax
 005C5847    mov         eax,dword ptr [ebp-18]
 005C584A    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 005C584D    push        eax
 005C584E    call        KERNEL32.MulDiv
 005C5853    mov         word ptr [ebp-24],ax
 005C5857    push        9EC
 005C585C    movzx       eax,word ptr [ebp-20]
 005C5860    push        eax
 005C5861    mov         eax,dword ptr [ebp-18]
 005C5864    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 005C5867    push        eax
 005C5868    call        KERNEL32.MulDiv
 005C586D    mov         word ptr [ebp-22],ax
 005C5871    lea         eax,[ebp-2E]
 005C5874    call        005C2E3C
 005C5879    mov         word ptr [ebp-1A],ax
 005C587D    push        0
 005C587F    call        USER32.GetDC
 005C5884    mov         dword ptr [ebp-14],eax
 005C5887    xor         eax,eax
 005C5889    push        ebp
 005C588A    push        5C5942
 005C588F    push        dword ptr fs:[eax]
 005C5892    mov         dword ptr fs:[eax],esp
 005C5895    mov         eax,dword ptr [ebp-14]
 005C5898    push        eax
 005C5899    push        8
 005C589B    push        0
 005C589D    push        0
 005C589F    mov         eax,dword ptr [ebp-18]
 005C58A2    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C58A5    push        eax
 005C58A6    call        GDI32.GetWinMetaFileBits
 005C58AB    mov         dword ptr [ebp-10],eax
 005C58AE    mov         eax,dword ptr [ebp-10]
 005C58B1    call        @GetMem
 005C58B6    mov         dword ptr [ebp-0C],eax
 005C58B9    xor         eax,eax
 005C58BB    push        ebp
 005C58BC    push        5C5922
 005C58C1    push        dword ptr fs:[eax]
 005C58C4    mov         dword ptr fs:[eax],esp
 005C58C7    mov         eax,dword ptr [ebp-14]
 005C58CA    push        eax
 005C58CB    push        8
 005C58CD    mov         eax,dword ptr [ebp-0C]
 005C58D0    push        eax
 005C58D1    mov         eax,dword ptr [ebp-10]
 005C58D4    push        eax
 005C58D5    mov         eax,dword ptr [ebp-18]
 005C58D8    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C58DB    push        eax
 005C58DC    call        GDI32.GetWinMetaFileBits
 005C58E1    cmp         eax,dword ptr [ebp-10]
>005C58E4    jae         005C58EB
 005C58E6    call        005C1E40
 005C58EB    lea         edx,[ebp-2E]
 005C58EE    mov         ecx,16
 005C58F3    mov         eax,dword ptr [ebp-8]
 005C58F6    call        TStream.WriteBuffer
 005C58FB    mov         edx,dword ptr [ebp-0C]
 005C58FE    mov         ecx,dword ptr [ebp-10]
 005C5901    mov         eax,dword ptr [ebp-8]
 005C5904    call        TStream.WriteBuffer
 005C5909    xor         eax,eax
 005C590B    pop         edx
 005C590C    pop         ecx
 005C590D    pop         ecx
 005C590E    mov         dword ptr fs:[eax],edx
 005C5911    push        5C5929
 005C5916    mov         edx,dword ptr [ebp-10]
 005C5919    mov         eax,dword ptr [ebp-0C]
 005C591C    call        @FreeMem
 005C5921    ret
>005C5922    jmp         @HandleFinally
>005C5927    jmp         005C5916
 005C5929    xor         eax,eax
 005C592B    pop         edx
 005C592C    pop         ecx
 005C592D    pop         ecx
 005C592E    mov         dword ptr fs:[eax],edx
 005C5931    push        5C5949
 005C5936    mov         eax,dword ptr [ebp-14]
 005C5939    push        eax
 005C593A    push        0
 005C593C    call        USER32.ReleaseDC
 005C5941    ret
>005C5942    jmp         @HandleFinally
>005C5947    jmp         005C5936
 005C5949    mov         esp,ebp
 005C594B    pop         ebp
 005C594C    ret
end;*}

//005C5950
{*procedure TMetafile.LoadFromClipboardFormat(?:?; ?:?);
begin
 005C5950    push        ebp
 005C5951    mov         ebp,esp
 005C5953    add         esp,0FFFFFF8C
 005C5956    mov         dword ptr [ebp-8],ecx
 005C5959    mov         word ptr [ebp-0E],dx
 005C595D    mov         dword ptr [ebp-4],eax
 005C5960    push        0E
 005C5962    call        USER32.GetClipboardData
 005C5967    mov         dword ptr [ebp-8],eax
 005C596A    cmp         dword ptr [ebp-8],0
>005C596E    jne         005C597A
 005C5970    mov         eax,[006E9E08];^gvar_0063CA20
 005C5975    call        InvalidGraphic
 005C597A    mov         eax,dword ptr [ebp-4]
 005C597D    call        005C4F60
 005C5982    mov         eax,dword ptr [ebp-4]
 005C5985    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5988    mov         dword ptr [ebp-0C],eax
 005C598B    push        0
 005C598D    mov         eax,dword ptr [ebp-8]
 005C5990    push        eax
 005C5991    call        GDI32.CopyEnhMetaFileA
 005C5996    mov         edx,dword ptr [ebp-0C]
 005C5999    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 005C599C    lea         eax,[ebp-72]
 005C599F    push        eax
 005C59A0    push        64
 005C59A2    mov         eax,dword ptr [ebp-0C]
 005C59A5    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C59A8    push        eax
 005C59A9    call        GDI32.GetEnhMetaFileHeader
 005C59AE    mov         eax,dword ptr [ebp-52]
 005C59B1    sub         eax,dword ptr [ebp-5A]
 005C59B4    mov         edx,dword ptr [ebp-0C]
 005C59B7    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 005C59BA    mov         eax,dword ptr [ebp-4E]
 005C59BD    sub         eax,dword ptr [ebp-56]
 005C59C0    mov         edx,dword ptr [ebp-0C]
 005C59C3    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 005C59C6    mov         eax,dword ptr [ebp-0C]
 005C59C9    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 005C59CF    mov         eax,dword ptr [ebp-4]
 005C59D2    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 005C59D6    mov         eax,dword ptr [ebp-4]
 005C59D9    mov         edx,dword ptr [eax]
 005C59DB    call        dword ptr [edx+24];TMetafile.sub_005C4D98
 005C59DE    test        eax,eax
 005C59E0    setne       al
 005C59E3    mov         edx,dword ptr [ebp-4]
 005C59E6    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 005C59E9    mov         edx,dword ptr [ebp-4]
 005C59EC    mov         eax,dword ptr [ebp-4]
 005C59EF    mov         ecx,dword ptr [eax]
 005C59F1    call        dword ptr [ecx+10];TMetafile.sub_005C33B8
 005C59F4    mov         esp,ebp
 005C59F6    pop         ebp
 005C59F7    ret         4
end;*}

//005C59FC
{*procedure TMetafile.SaveToClipboardFormat(?:?; ?:?; ?:?);
begin
 005C59FC    push        ebp
 005C59FD    mov         ebp,esp
 005C59FF    add         esp,0FFFFFFF4
 005C5A02    mov         dword ptr [ebp-0C],ecx
 005C5A05    mov         dword ptr [ebp-8],edx
 005C5A08    mov         dword ptr [ebp-4],eax
 005C5A0B    mov         eax,dword ptr [ebp-4]
 005C5A0E    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>005C5A12    je          005C5A39
 005C5A14    mov         eax,dword ptr [ebp-8]
 005C5A17    mov         word ptr [eax],0E
 005C5A1C    mov         eax,dword ptr [ebp+8]
 005C5A1F    xor         edx,edx
 005C5A21    mov         dword ptr [eax],edx
 005C5A23    push        0
 005C5A25    mov         eax,dword ptr [ebp-4]
 005C5A28    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 005C5A2B    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 005C5A2E    push        eax
 005C5A2F    call        GDI32.CopyEnhMetaFileA
 005C5A34    mov         edx,dword ptr [ebp-0C]
 005C5A37    mov         dword ptr [edx],eax
 005C5A39    mov         esp,ebp
 005C5A3B    pop         ebp
 005C5A3C    ret         4
end;*}

//005C5ADC
procedure FreeMemoryContexts;
begin
{*
 005C5ADC    push        ebp
 005C5ADD    mov         ebp,esp
 005C5ADF    add         esp,0FFFFFFF4
 005C5AE2    mov         eax,[006E3F78];gvar_006E3F78:TThreadList
 005C5AE7    call        TThreadList.LockList
 005C5AEC    mov         dword ptr [ebp-8],eax
 005C5AEF    xor         eax,eax
 005C5AF1    push        ebp
 005C5AF2    push        5C5B7A
 005C5AF7    push        dword ptr fs:[eax]
 005C5AFA    mov         dword ptr fs:[eax],esp
 005C5AFD    mov         eax,dword ptr [ebp-8]
 005C5B00    mov         eax,dword ptr [eax+8]
 005C5B03    dec         eax
 005C5B04    cmp         eax,0
>005C5B07    jl          005C5B62
 005C5B09    mov         dword ptr [ebp-4],eax
 005C5B0C    mov         edx,dword ptr [ebp-4]
 005C5B0F    mov         eax,dword ptr [ebp-8]
 005C5B12    call        TList.Get
 005C5B17    mov         dword ptr [ebp-0C],eax
 005C5B1A    mov         eax,dword ptr [ebp-0C]
 005C5B1D    call        TCanvas.TryLock
 005C5B22    test        al,al
>005C5B24    je          005C5B59
 005C5B26    xor         eax,eax
 005C5B28    push        ebp
 005C5B29    push        5C5B52
 005C5B2E    push        dword ptr fs:[eax]
 005C5B31    mov         dword ptr fs:[eax],esp
 005C5B34    mov         eax,dword ptr [ebp-0C]
 005C5B37    call        TBitmapCanvas.FreeContext
 005C5B3C    xor         eax,eax
 005C5B3E    pop         edx
 005C5B3F    pop         ecx
 005C5B40    pop         ecx
 005C5B41    mov         dword ptr fs:[eax],edx
 005C5B44    push        5C5B59
 005C5B49    mov         eax,dword ptr [ebp-0C]
 005C5B4C    call        TCanvas.Unlock
 005C5B51    ret
>005C5B52    jmp         @HandleFinally
>005C5B57    jmp         005C5B49
 005C5B59    dec         dword ptr [ebp-4]
 005C5B5C    cmp         dword ptr [ebp-4],0FFFFFFFF
>005C5B60    jne         005C5B0C
 005C5B62    xor         eax,eax
 005C5B64    pop         edx
 005C5B65    pop         ecx
 005C5B66    pop         ecx
 005C5B67    mov         dword ptr fs:[eax],edx
 005C5B6A    push        5C5B81
 005C5B6F    mov         eax,[006E3F78];gvar_006E3F78:TThreadList
 005C5B74    call        TThreadList.UnlockList
 005C5B79    ret
>005C5B7A    jmp         @HandleFinally
>005C5B7F    jmp         005C5B6F
 005C5B81    mov         esp,ebp
 005C5B83    pop         ebp
 005C5B84    ret
*}
end;

//005C5B88
procedure sub_005C5B88(?:HBITMAP);
begin
{*
 005C5B88    push        ebp
 005C5B89    mov         ebp,esp
 005C5B8B    add         esp,0FFFFFFF0
 005C5B8E    mov         dword ptr [ebp-4],eax
 005C5B91    cmp         dword ptr [ebp-4],0
>005C5B95    je          005C5C1D
 005C5B9B    mov         eax,[006E3F78];0x0 gvar_006E3F78:TThreadList
 005C5BA0    call        TThreadList.LockList
 005C5BA5    mov         dword ptr [ebp-0C],eax
 005C5BA8    xor         eax,eax
 005C5BAA    push        ebp
 005C5BAB    push        5C5C16
 005C5BB0    push        dword ptr fs:[eax]
 005C5BB3    mov         dword ptr fs:[eax],esp
 005C5BB6    mov         eax,dword ptr [ebp-0C]
 005C5BB9    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005C5BBC    dec         eax
 005C5BBD    cmp         eax,0
>005C5BC0    jl          005C5BFE
 005C5BC2    mov         dword ptr [ebp-8],eax
 005C5BC5    mov         edx,dword ptr [ebp-8]
 005C5BC8    mov         eax,dword ptr [ebp-0C]
 005C5BCB    call        TList.Get
 005C5BD0    mov         dword ptr [ebp-10],eax
 005C5BD3    mov         eax,dword ptr [ebp-10]
 005C5BD6    cmp         dword ptr [eax+58],0
>005C5BDA    je          005C5BF5
 005C5BDC    mov         eax,dword ptr [ebp-10]
 005C5BDF    mov         eax,dword ptr [eax+58]
 005C5BE2    mov         eax,dword ptr [eax+28]
 005C5BE5    mov         eax,dword ptr [eax+8]
 005C5BE8    cmp         eax,dword ptr [ebp-4]
>005C5BEB    jne         005C5BF5
 005C5BED    mov         eax,dword ptr [ebp-10]
 005C5BF0    call        TBitmapCanvas.FreeContext
 005C5BF5    dec         dword ptr [ebp-8]
 005C5BF8    cmp         dword ptr [ebp-8],0FFFFFFFF
>005C5BFC    jne         005C5BC5
 005C5BFE    xor         eax,eax
 005C5C00    pop         edx
 005C5C01    pop         ecx
 005C5C02    pop         ecx
 005C5C03    mov         dword ptr fs:[eax],edx
 005C5C06    push        5C5C1D
 005C5C0B    mov         eax,[006E3F78];0x0 gvar_006E3F78:TThreadList
 005C5C10    call        TThreadList.UnlockList
 005C5C15    ret
>005C5C16    jmp         @HandleFinally
>005C5C1B    jmp         005C5C0B
 005C5C1D    mov         esp,ebp
 005C5C1F    pop         ebp
 005C5C20    ret
*}
end;

//005C5C24
constructor sub_005C5C24;
begin
{*
 005C5C24    push        ebp
 005C5C25    mov         ebp,esp
 005C5C27    add         esp,0FFFFFFF4
 005C5C2A    test        dl,dl
>005C5C2C    je          005C5C36
 005C5C2E    add         esp,0FFFFFFF0
 005C5C31    call        @ClassCreate
 005C5C36    mov         dword ptr [ebp-0C],ecx
 005C5C39    mov         byte ptr [ebp-5],dl
 005C5C3C    mov         dword ptr [ebp-4],eax
 005C5C3F    xor         edx,edx
 005C5C41    mov         eax,dword ptr [ebp-4]
 005C5C44    call        TCanvas.Create
 005C5C49    mov         eax,dword ptr [ebp-4]
 005C5C4C    mov         edx,dword ptr [ebp-0C]
 005C5C4F    mov         dword ptr [eax+58],edx
 005C5C52    mov         eax,dword ptr [ebp-4]
 005C5C55    cmp         byte ptr [ebp-5],0
>005C5C59    je          005C5C6A
 005C5C5B    call        @AfterConstruction
 005C5C60    pop         dword ptr fs:[0]
 005C5C67    add         esp,0C
 005C5C6A    mov         eax,dword ptr [ebp-4]
 005C5C6D    mov         esp,ebp
 005C5C6F    pop         ebp
 005C5C70    ret
*}
end;

//005C5C74
destructor TBitmapCanvas.Destroy;
begin
{*
 005C5C74    push        ebp
 005C5C75    mov         ebp,esp
 005C5C77    add         esp,0FFFFFFF8
 005C5C7A    call        @BeforeDestruction
 005C5C7F    mov         byte ptr [ebp-5],dl
 005C5C82    mov         dword ptr [ebp-4],eax
 005C5C85    mov         eax,dword ptr [ebp-4]
 005C5C88    call        TBitmapCanvas.FreeContext
 005C5C8D    mov         dl,byte ptr [ebp-5]
 005C5C90    and         dl,0FC
 005C5C93    mov         eax,dword ptr [ebp-4]
 005C5C96    call        TCanvas.Destroy
 005C5C9B    cmp         byte ptr [ebp-5],0
>005C5C9F    jle         005C5CA9
 005C5CA1    mov         eax,dword ptr [ebp-4]
 005C5CA4    call        @ClassDestroy
 005C5CA9    pop         ecx
 005C5CAA    pop         ecx
 005C5CAB    pop         ebp
 005C5CAC    ret
*}
end;

//005C5CB0
procedure TBitmapCanvas.FreeContext;
begin
{*
 005C5CB0    push        ebp
 005C5CB1    mov         ebp,esp
 005C5CB3    add         esp,0FFFFFFF8
 005C5CB6    mov         dword ptr [ebp-4],eax
 005C5CB9    mov         eax,dword ptr [ebp-4]
 005C5CBC    cmp         dword ptr [eax+4],0
>005C5CC0    je          005C5D5C
 005C5CC6    mov         eax,dword ptr [ebp-4]
 005C5CC9    call        TCanvas.Lock
 005C5CCE    xor         eax,eax
 005C5CD0    push        ebp
 005C5CD1    push        5C5D55
 005C5CD6    push        dword ptr fs:[eax]
 005C5CD9    mov         dword ptr fs:[eax],esp
 005C5CDC    mov         eax,dword ptr [ebp-4]
 005C5CDF    cmp         dword ptr [eax+5C],0
>005C5CE3    je          005C5CF8
 005C5CE5    mov         eax,dword ptr [ebp-4]
 005C5CE8    mov         eax,dword ptr [eax+5C]
 005C5CEB    push        eax
 005C5CEC    mov         eax,dword ptr [ebp-4]
 005C5CEF    mov         eax,dword ptr [eax+4]
 005C5CF2    push        eax
 005C5CF3    call        GDI32.SelectObject
 005C5CF8    mov         eax,dword ptr [ebp-4]
 005C5CFB    cmp         dword ptr [eax+60],0
>005C5CFF    je          005C5D16
 005C5D01    push        0FF
 005C5D03    mov         eax,dword ptr [ebp-4]
 005C5D06    mov         eax,dword ptr [eax+60]
 005C5D09    push        eax
 005C5D0A    mov         eax,dword ptr [ebp-4]
 005C5D0D    mov         eax,dword ptr [eax+4]
 005C5D10    push        eax
 005C5D11    call        GDI32.SelectPalette
 005C5D16    mov         eax,dword ptr [ebp-4]
 005C5D19    mov         eax,dword ptr [eax+4]
 005C5D1C    mov         dword ptr [ebp-8],eax
 005C5D1F    xor         edx,edx
 005C5D21    mov         eax,dword ptr [ebp-4]
 005C5D24    call        TCanvas.SetHandle
 005C5D29    mov         eax,dword ptr [ebp-8]
 005C5D2C    push        eax
 005C5D2D    call        GDI32.DeleteDC
 005C5D32    mov         edx,dword ptr [ebp-4]
 005C5D35    mov         eax,[006E3F78];gvar_006E3F78:TThreadList
 005C5D3A    call        00645ABC
 005C5D3F    xor         eax,eax
 005C5D41    pop         edx
 005C5D42    pop         ecx
 005C5D43    pop         ecx
 005C5D44    mov         dword ptr fs:[eax],edx
 005C5D47    push        5C5D5C
 005C5D4C    mov         eax,dword ptr [ebp-4]
 005C5D4F    call        TCanvas.Unlock
 005C5D54    ret
>005C5D55    jmp         @HandleFinally
>005C5D5A    jmp         005C5D4C
 005C5D5C    pop         ecx
 005C5D5D    pop         ecx
 005C5D5E    pop         ebp
 005C5D5F    ret
*}
end;

//005C5D60
procedure sub_005C5D60;
begin
{*
 005C5D60    push        ebp
 005C5D61    mov         ebp,esp
 005C5D63    add         esp,0FFFFFFF8
 005C5D66    mov         dword ptr [ebp-4],eax
 005C5D69    mov         eax,dword ptr [ebp-4]
 005C5D6C    cmp         dword ptr [eax+58],0;TBitmapCanvas.FBitmap:TBitmap
>005C5D70    je          005C5E67
 005C5D76    mov         eax,dword ptr [ebp-4]
 005C5D79    call        TCanvas.Lock
 005C5D7E    xor         eax,eax
 005C5D80    push        ebp
 005C5D81    push        5C5E60
 005C5D86    push        dword ptr fs:[eax]
 005C5D89    mov         dword ptr fs:[eax],esp
 005C5D8C    mov         eax,dword ptr [ebp-4]
 005C5D8F    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5D92    call        005C757C
 005C5D97    mov         eax,dword ptr [ebp-4]
 005C5D9A    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5D9D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C5DA0    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C5DA3    call        005C5B88
 005C5DA8    mov         eax,dword ptr [ebp-4]
 005C5DAB    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5DAE    call        005C77DC
 005C5DB3    push        0
 005C5DB5    call        GDI32.CreateCompatibleDC
 005C5DBA    mov         dword ptr [ebp-8],eax
 005C5DBD    mov         eax,dword ptr [ebp-4]
 005C5DC0    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5DC3    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C5DC6    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C5DCA    je          005C5DEA
 005C5DCC    mov         eax,dword ptr [ebp-4]
 005C5DCF    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5DD2    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C5DD5    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C5DD8    push        eax
 005C5DD9    mov         eax,dword ptr [ebp-8]
 005C5DDC    push        eax
 005C5DDD    call        GDI32.SelectObject
 005C5DE2    mov         edx,dword ptr [ebp-4]
 005C5DE5    mov         dword ptr [edx+5C],eax;TBitmapCanvas.FOldBitmap:HBITMAP
>005C5DE8    jmp         005C5DF2
 005C5DEA    mov         eax,dword ptr [ebp-4]
 005C5DED    xor         edx,edx
 005C5DEF    mov         dword ptr [eax+5C],edx;TBitmapCanvas.FOldBitmap:HBITMAP
 005C5DF2    mov         eax,dword ptr [ebp-4]
 005C5DF5    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5DF8    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C5DFB    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C5DFF    je          005C5E2A
 005C5E01    push        0FF
 005C5E03    mov         eax,dword ptr [ebp-4]
 005C5E06    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 005C5E09    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C5E0C    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C5E0F    push        eax
 005C5E10    mov         eax,dword ptr [ebp-8]
 005C5E13    push        eax
 005C5E14    call        GDI32.SelectPalette
 005C5E19    mov         edx,dword ptr [ebp-4]
 005C5E1C    mov         dword ptr [edx+60],eax;TBitmapCanvas.FOldPalette:HPALETTE
 005C5E1F    mov         eax,dword ptr [ebp-8]
 005C5E22    push        eax
 005C5E23    call        GDI32.RealizePalette
>005C5E28    jmp         005C5E32
 005C5E2A    mov         eax,dword ptr [ebp-4]
 005C5E2D    xor         edx,edx
 005C5E2F    mov         dword ptr [eax+60],edx;TBitmapCanvas.FOldPalette:HPALETTE
 005C5E32    mov         edx,dword ptr [ebp-8]
 005C5E35    mov         eax,dword ptr [ebp-4]
 005C5E38    call        TCanvas.SetHandle
 005C5E3D    mov         edx,dword ptr [ebp-4]
 005C5E40    mov         eax,[006E3F78];0x0 gvar_006E3F78:TThreadList
 005C5E45    call        00645A08
 005C5E4A    xor         eax,eax
 005C5E4C    pop         edx
 005C5E4D    pop         ecx
 005C5E4E    pop         ecx
 005C5E4F    mov         dword ptr fs:[eax],edx
 005C5E52    push        5C5E67
 005C5E57    mov         eax,dword ptr [ebp-4]
 005C5E5A    call        TCanvas.Unlock
 005C5E5F    ret
>005C5E60    jmp         @HandleFinally
>005C5E65    jmp         005C5E57
 005C5E67    pop         ecx
 005C5E68    pop         ecx
 005C5E69    pop         ebp
 005C5E6A    ret
*}
end;

//005C5E6C
procedure TSharedImage.Reference;
begin
{*
 005C5E6C    push        ebp
 005C5E6D    mov         ebp,esp
 005C5E6F    push        ecx
 005C5E70    mov         dword ptr [ebp-4],eax
 005C5E73    mov         eax,dword ptr [ebp-4]
 005C5E76    inc         dword ptr [eax+4]
 005C5E79    pop         ecx
 005C5E7A    pop         ebp
 005C5E7B    ret
*}
end;

//005C5E7C
procedure TSharedImage.Release;
begin
{*
 005C5E7C    push        ebp
 005C5E7D    mov         ebp,esp
 005C5E7F    push        ecx
 005C5E80    mov         dword ptr [ebp-4],eax
 005C5E83    cmp         dword ptr [ebp-4],0
>005C5E87    je          005C5EA7
 005C5E89    mov         eax,dword ptr [ebp-4]
 005C5E8C    dec         dword ptr [eax+4]
 005C5E8F    mov         eax,dword ptr [ebp-4]
 005C5E92    cmp         dword ptr [eax+4],0
>005C5E96    jne         005C5EA7
 005C5E98    mov         eax,dword ptr [ebp-4]
 005C5E9B    mov         edx,dword ptr [eax]
 005C5E9D    call        dword ptr [edx]
 005C5E9F    mov         eax,dword ptr [ebp-4]
 005C5EA2    call        TObject.Free
 005C5EA7    pop         ecx
 005C5EA8    pop         ebp
 005C5EA9    ret
*}
end;

//005C5EAC
destructor TBitmapImage.Destroy;
begin
{*
 005C5EAC    push        ebp
 005C5EAD    mov         ebp,esp
 005C5EAF    add         esp,0FFFFFFF8
 005C5EB2    call        @BeforeDestruction
 005C5EB7    mov         byte ptr [ebp-5],dl
 005C5EBA    mov         dword ptr [ebp-4],eax
 005C5EBD    mov         eax,dword ptr [ebp-4]
 005C5EC0    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C5EC4    je          005C5EE5
 005C5EC6    mov         eax,dword ptr [ebp-4]
 005C5EC9    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C5ECC    call        005C5B88
 005C5ED1    mov         eax,dword ptr [ebp-4]
 005C5ED4    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C5ED7    push        eax
 005C5ED8    call        GDI32.DeleteObject
 005C5EDD    mov         eax,dword ptr [ebp-4]
 005C5EE0    xor         edx,edx
 005C5EE2    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 005C5EE5    mov         eax,dword ptr [ebp-4]
 005C5EE8    mov         edx,dword ptr [eax]
 005C5EEA    call        dword ptr [edx];TBitmapImage.sub_005C5F2C
 005C5EEC    mov         eax,dword ptr [ebp-4]
 005C5EEF    cmp         dword ptr [eax+64],0
>005C5EF3    je          005C5F01
 005C5EF5    mov         eax,dword ptr [ebp-4]
 005C5EF8    mov         eax,dword ptr [eax+64]
 005C5EFB    push        eax
 005C5EFC    call        KERNEL32.CloseHandle
 005C5F01    mov         eax,dword ptr [ebp-4]
 005C5F04    add         eax,6C;TBitmapImage.FSaveStream:TMemoryStream
 005C5F07    call        FreeAndNil
 005C5F0C    mov         dl,byte ptr [ebp-5]
 005C5F0F    and         dl,0FC
 005C5F12    mov         eax,dword ptr [ebp-4]
 005C5F15    call        TObject.Destroy
 005C5F1A    cmp         byte ptr [ebp-5],0
>005C5F1E    jle         005C5F28
 005C5F20    mov         eax,dword ptr [ebp-4]
 005C5F23    call        @ClassDestroy
 005C5F28    pop         ecx
 005C5F29    pop         ecx
 005C5F2A    pop         ebp
 005C5F2B    ret
*}
end;

//005C5F2C
procedure sub_005C5F2C;
begin
{*
 005C5F2C    push        ebp
 005C5F2D    mov         ebp,esp
 005C5F2F    push        ecx
 005C5F30    mov         dword ptr [ebp-4],eax
 005C5F33    mov         eax,dword ptr [ebp-4]
 005C5F36    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C5F3A    je          005C5F61
 005C5F3C    mov         eax,dword ptr [ebp-4]
 005C5F3F    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C5F42    mov         edx,dword ptr [ebp-4]
 005C5F45    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>005C5F48    je          005C5F61
 005C5F4A    mov         eax,dword ptr [ebp-4]
 005C5F4D    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C5F50    call        005C5B88
 005C5F55    mov         eax,dword ptr [ebp-4]
 005C5F58    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C5F5B    push        eax
 005C5F5C    call        GDI32.DeleteObject
 005C5F61    mov         eax,dword ptr [ebp-4]
 005C5F64    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>005C5F68    je          005C5F89
 005C5F6A    mov         eax,dword ptr [ebp-4]
 005C5F6D    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C5F70    call        005C5B88
 005C5F75    mov         eax,dword ptr [ebp-4]
 005C5F78    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C5F7B    push        eax
 005C5F7C    call        GDI32.DeleteObject
 005C5F81    mov         eax,dword ptr [ebp-4]
 005C5F84    xor         edx,edx
 005C5F86    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 005C5F89    mov         eax,dword ptr [ebp-4]
 005C5F8C    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C5F8F    call        005BEFF0
 005C5F94    mov         eax,dword ptr [ebp-4]
 005C5F97    xor         edx,edx
 005C5F99    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 005C5F9C    mov         eax,dword ptr [ebp-4]
 005C5F9F    xor         edx,edx
 005C5FA1    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 005C5FA4    pop         ecx
 005C5FA5    pop         ebp
 005C5FA6    ret
*}
end;

//005C5FA8
{*procedure sub_005C5FA8(?:HBITMAP; ?:?; ?:?);
begin
 005C5FA8    push        ebp
 005C5FA9    mov         ebp,esp
 005C5FAB    add         esp,0FFFFFBE4
 005C5FB1    mov         dword ptr [ebp-0C],ecx
 005C5FB4    mov         dword ptr [ebp-8],edx
 005C5FB7    mov         dword ptr [ebp-4],eax
 005C5FBA    cmp         dword ptr [ebp-4],0
>005C5FBE    je          005C6072
 005C5FC4    mov         eax,dword ptr [ebp-0C]
 005C5FC7    cmp         word ptr [eax+26],8
>005C5FCC    ja          005C6072
 005C5FD2    lea         edx,[ebp-41C]
 005C5FD8    mov         ecx,0FF
 005C5FDD    mov         eax,dword ptr [ebp-8]
 005C5FE0    call        005C27F0
 005C5FE5    mov         dword ptr [ebp-1C],eax
 005C5FE8    cmp         dword ptr [ebp-1C],0
>005C5FEC    je          005C6072
 005C5FF2    push        0
 005C5FF4    call        USER32.GetDC
 005C5FF9    mov         dword ptr [ebp-10],eax
 005C5FFC    mov         eax,dword ptr [ebp-10]
 005C5FFF    push        eax
 005C6000    call        GDI32.CreateCompatibleDC
 005C6005    mov         dword ptr [ebp-14],eax
 005C6008    mov         eax,dword ptr [ebp-4]
 005C600B    push        eax
 005C600C    mov         eax,dword ptr [ebp-14]
 005C600F    push        eax
 005C6010    call        GDI32.SelectObject
 005C6015    mov         dword ptr [ebp-18],eax
 005C6018    xor         eax,eax
 005C601A    push        ebp
 005C601B    push        5C606B
 005C6020    push        dword ptr fs:[eax]
 005C6023    mov         dword ptr fs:[eax],esp
 005C6026    lea         eax,[ebp-41C]
 005C602C    push        eax
 005C602D    mov         eax,dword ptr [ebp-1C]
 005C6030    push        eax
 005C6031    push        0
 005C6033    mov         eax,dword ptr [ebp-14]
 005C6036    push        eax
 005C6037    call        GDI32.SetDIBColorTable
 005C603C    xor         eax,eax
 005C603E    pop         edx
 005C603F    pop         ecx
 005C6040    pop         ecx
 005C6041    mov         dword ptr fs:[eax],edx
 005C6044    push        5C6072
 005C6049    mov         eax,dword ptr [ebp-18]
 005C604C    push        eax
 005C604D    mov         eax,dword ptr [ebp-14]
 005C6050    push        eax
 005C6051    call        GDI32.SelectObject
 005C6056    mov         eax,dword ptr [ebp-14]
 005C6059    push        eax
 005C605A    call        GDI32.DeleteDC
 005C605F    mov         eax,dword ptr [ebp-10]
 005C6062    push        eax
 005C6063    push        0
 005C6065    call        USER32.ReleaseDC
 005C606A    ret
>005C606B    jmp         @HandleFinally
>005C6070    jmp         005C6049
 005C6072    mov         esp,ebp
 005C6074    pop         ebp
 005C6075    ret
end;*}

//005C6078
procedure sub_005C6078(?:TDIBSection);
begin
{*
 005C6078    push        ebp
 005C6079    mov         ebp,esp
 005C607B    push        ecx
 005C607C    mov         dword ptr [ebp-4],eax
 005C607F    mov         eax,dword ptr [ebp-4]
 005C6082    test        byte ptr [eax+28],3
>005C6086    je          005C60E3
 005C6088    mov         eax,dword ptr [ebp-4]
 005C608B    cmp         dword ptr [eax+40],0
>005C608F    jne         005C60E3
 005C6091    mov         eax,dword ptr [ebp-4]
 005C6094    cmp         word ptr [eax+26],10
>005C6099    jne         005C60BB
 005C609B    mov         eax,dword ptr [ebp-4]
 005C609E    mov         dword ptr [eax+40],0F800
 005C60A5    mov         eax,dword ptr [ebp-4]
 005C60A8    mov         dword ptr [eax+44],7E0
 005C60AF    mov         eax,dword ptr [ebp-4]
 005C60B2    mov         dword ptr [eax+48],1F
>005C60B9    jmp         005C60E3
 005C60BB    mov         eax,dword ptr [ebp-4]
 005C60BE    cmp         word ptr [eax+26],20
>005C60C3    jne         005C60E3
 005C60C5    mov         eax,dword ptr [ebp-4]
 005C60C8    mov         dword ptr [eax+40],0FF0000
 005C60CF    mov         eax,dword ptr [ebp-4]
 005C60D2    mov         dword ptr [eax+44],0FF00
 005C60D9    mov         eax,dword ptr [ebp-4]
 005C60DC    mov         dword ptr [eax+48],0FF
 005C60E3    pop         ecx
 005C60E4    pop         ebp
 005C60E5    ret
*}
end;

//005C60E8
{*function sub_005C60E8(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;
begin
 005C60E8    push        ebp
 005C60E9    mov         ebp,esp
 005C60EB    add         esp,0FFFFFF60
 005C60F1    push        ebx
 005C60F2    push        esi
 005C60F3    push        edi
 005C60F4    mov         dword ptr [ebp-0C],ecx
 005C60F7    mov         dword ptr [ebp-8],edx
 005C60FA    mov         dword ptr [ebp-4],eax
 005C60FD    xor         eax,eax
 005C60FF    mov         dword ptr [ebp-10],eax
 005C6102    mov         eax,dword ptr [ebp+0C]
 005C6105    cmp         dword ptr [eax+18],0
>005C6109    je          005C6125
 005C610B    mov         eax,dword ptr [ebp+0C]
 005C610E    cmp         dword ptr [eax+1C],0
>005C6112    je          005C6749
 005C6118    mov         eax,dword ptr [ebp+0C]
 005C611B    cmp         dword ptr [eax+20],0
>005C611F    je          005C6749
 005C6125    mov         eax,dword ptr [ebp+0C]
 005C6128    cmp         dword ptr [eax+18],0
>005C612C    jne         005C6148
 005C612E    mov         eax,dword ptr [ebp+0C]
 005C6131    cmp         dword ptr [eax+4],0
>005C6135    je          005C6749
 005C613B    mov         eax,dword ptr [ebp+0C]
 005C613E    cmp         dword ptr [eax+8],0
>005C6142    je          005C6749
 005C6148    mov         eax,dword ptr [ebp-4]
 005C614B    call        005C5B88
 005C6150    xor         eax,eax
 005C6152    mov         dword ptr [ebp-78],eax
 005C6155    cmp         dword ptr [ebp-4],0
>005C6159    je          005C6177
 005C615B    lea         eax,[ebp-90]
 005C6161    push        eax
 005C6162    push        54
 005C6164    mov         eax,dword ptr [ebp-4]
 005C6167    push        eax
 005C6168    call        GDI32.GetObjectA
 005C616D    cmp         eax,18
>005C6170    jge         005C6177
 005C6172    call        InvalidBitmap
 005C6177    push        0
 005C6179    call        USER32.GetDC
 005C617E    call        005C1EEC
 005C6183    mov         dword ptr [ebp-1C],eax
 005C6186    mov         eax,dword ptr [ebp-1C]
 005C6189    push        eax
 005C618A    call        GDI32.CreateCompatibleDC
 005C618F    call        005C1EEC
 005C6194    mov         dword ptr [ebp-20],eax
 005C6197    xor         eax,eax
 005C6199    push        ebp
 005C619A    push        5C6742
 005C619F    push        dword ptr fs:[eax]
 005C61A2    mov         dword ptr fs:[eax],esp
 005C61A5    mov         eax,dword ptr [ebp+0C]
 005C61A8    cmp         dword ptr [eax+18],28
>005C61AC    jae         005C620C
 005C61AE    mov         eax,dword ptr [ebp+0C]
 005C61B1    mov         ax,word ptr [eax+10]
 005C61B5    mov         edx,dword ptr [ebp+0C]
 005C61B8    or          ax,word ptr [edx+12]
 005C61BC    cmp         ax,1
>005C61C0    jne         005C61E8
 005C61C2    push        0
 005C61C4    push        1
 005C61C6    push        1
 005C61C8    mov         eax,dword ptr [ebp+0C]
 005C61CB    mov         eax,dword ptr [eax+8]
 005C61CE    push        eax
 005C61CF    mov         eax,dword ptr [ebp+0C]
 005C61D2    mov         eax,dword ptr [eax+4]
 005C61D5    push        eax
 005C61D6    call        GDI32.CreateBitmap
 005C61DB    call        005C1EEC
 005C61E0    mov         dword ptr [ebp-10],eax
>005C61E3    jmp         005C6448
 005C61E8    mov         eax,dword ptr [ebp+0C]
 005C61EB    mov         eax,dword ptr [eax+8]
 005C61EE    push        eax
 005C61EF    mov         eax,dword ptr [ebp+0C]
 005C61F2    mov         eax,dword ptr [eax+4]
 005C61F5    push        eax
 005C61F6    mov         eax,dword ptr [ebp-1C]
 005C61F9    push        eax
 005C61FA    call        GDI32.CreateCompatibleBitmap
 005C61FF    call        005C1EEC
 005C6204    mov         dword ptr [ebp-10],eax
>005C6207    jmp         005C6448
 005C620C    mov         eax,42C
 005C6211    call        @GetMem
 005C6216    mov         dword ptr [ebp-28],eax
 005C6219    xor         eax,eax
 005C621B    push        ebp
 005C621C    push        5C6441
 005C6221    push        dword ptr fs:[eax]
 005C6224    mov         dword ptr fs:[eax],esp
 005C6227    mov         eax,dword ptr [ebp+0C]
 005C622A    mov         dword ptr [eax+18],28
 005C6231    mov         eax,dword ptr [ebp+0C]
 005C6234    mov         word ptr [eax+24],1
 005C623A    mov         eax,dword ptr [ebp+0C]
 005C623D    cmp         word ptr [eax+26],0
>005C6242    jne         005C6267
 005C6244    push        0C
 005C6246    mov         eax,dword ptr [ebp-1C]
 005C6249    push        eax
 005C624A    call        GDI32.GetDeviceCaps
 005C624F    mov         ebx,eax
 005C6251    push        0E
 005C6253    mov         eax,dword ptr [ebp-1C]
 005C6256    push        eax
 005C6257    call        GDI32.GetDeviceCaps
 005C625C    imul        bx,ax
 005C6260    mov         eax,dword ptr [ebp+0C]
 005C6263    mov         word ptr [eax+26],bx
 005C6267    mov         eax,dword ptr [ebp+0C]
 005C626A    mov         edx,dword ptr [ebp-28]
 005C626D    lea         esi,[eax+18]
 005C6270    mov         edi,edx
 005C6272    mov         ecx,0A
 005C6277    rep movs    dword ptr [edi],dword ptr [esi]
 005C6279    mov         eax,dword ptr [ebp+0C]
 005C627C    mov         eax,dword ptr [eax+1C]
 005C627F    mov         edx,dword ptr [ebp+0C]
 005C6282    mov         dword ptr [edx+4],eax
 005C6285    mov         eax,dword ptr [ebp+0C]
 005C6288    mov         eax,dword ptr [eax+20]
 005C628B    mov         edx,dword ptr [ebp+0C]
 005C628E    mov         dword ptr [edx+8],eax
 005C6291    mov         eax,dword ptr [ebp+0C]
 005C6294    cmp         word ptr [eax+26],8
>005C6299    ja          005C6366
 005C629F    mov         eax,dword ptr [ebp+0C]
 005C62A2    cmp         word ptr [eax+26],1
>005C62A7    jne         005C62D1
 005C62A9    cmp         dword ptr [ebp-4],0
>005C62AD    je          005C62B5
 005C62AF    cmp         dword ptr [ebp-7C],0
>005C62B3    jne         005C62D1
 005C62B5    mov         eax,dword ptr [ebp-28]
 005C62B8    xor         edx,edx
 005C62BA    mov         dword ptr [eax+28],edx
 005C62BD    mov         eax,dword ptr [ebp-28]
 005C62C0    add         eax,28
 005C62C3    add         eax,4
 005C62C6    mov         dword ptr [eax],0FFFFFF
>005C62CC    jmp         005C63A1
 005C62D1    cmp         dword ptr [ebp-0C],0
>005C62D5    je          005C62EF
 005C62D7    mov         eax,dword ptr [ebp-28]
 005C62DA    lea         edx,[eax+28]
 005C62DD    mov         ecx,0FF
 005C62E2    mov         eax,dword ptr [ebp-0C]
 005C62E5    call        005C27F0
>005C62EA    jmp         005C63A1
 005C62EF    cmp         dword ptr [ebp-4],0
>005C62F3    je          005C63A1
 005C62F9    mov         eax,dword ptr [ebp-4]
 005C62FC    push        eax
 005C62FD    mov         eax,dword ptr [ebp-20]
 005C6300    push        eax
 005C6301    call        GDI32.SelectObject
 005C6306    mov         dword ptr [ebp-18],eax
 005C6309    cmp         dword ptr [ebp-78],0
>005C630D    jbe         005C6334
 005C630F    cmp         dword ptr [ebp-7C],0
>005C6313    je          005C6334
 005C6315    mov         eax,dword ptr [ebp-28]
 005C6318    add         eax,28
 005C631B    push        eax
 005C631C    push        100
 005C6321    push        0
 005C6323    mov         eax,dword ptr [ebp-20]
 005C6326    push        eax
 005C6327    call        GDI32.GetDIBColorTable
 005C632C    mov         edx,dword ptr [ebp+0C]
 005C632F    mov         dword ptr [edx+38],eax
>005C6332    jmp         005C6357
 005C6334    push        0
 005C6336    mov         eax,dword ptr [ebp-28]
 005C6339    push        eax
 005C633A    push        0
 005C633C    mov         eax,dword ptr [ebp+0C]
 005C633F    mov         eax,dword ptr [eax+20]
 005C6342    cdq
 005C6343    xor         eax,edx
 005C6345    sub         eax,edx
 005C6347    push        eax
 005C6348    push        0
 005C634A    mov         eax,dword ptr [ebp-4]
 005C634D    push        eax
 005C634E    mov         eax,dword ptr [ebp-20]
 005C6351    push        eax
 005C6352    call        GDI32.GetDIBits
 005C6357    mov         eax,dword ptr [ebp-18]
 005C635A    push        eax
 005C635B    mov         eax,dword ptr [ebp-20]
 005C635E    push        eax
 005C635F    call        GDI32.SelectObject
>005C6364    jmp         005C63A1
 005C6366    mov         eax,dword ptr [ebp+0C]
 005C6369    cmp         word ptr [eax+26],10
>005C636E    je          005C637A
 005C6370    mov         eax,dword ptr [ebp+0C]
 005C6373    cmp         word ptr [eax+26],20
>005C6378    jne         005C63A1
 005C637A    mov         eax,dword ptr [ebp+0C]
 005C637D    test        byte ptr [eax+28],3
>005C6381    je          005C63A1
 005C6383    mov         eax,dword ptr [ebp+0C]
 005C6386    call        005C6078
 005C638B    mov         eax,dword ptr [ebp-28]
 005C638E    lea         edx,[eax+28]
 005C6391    mov         eax,dword ptr [ebp+0C]
 005C6394    add         eax,40
 005C6397    mov         ecx,0C
 005C639C    call        Move
 005C63A1    push        0
 005C63A3    push        0
 005C63A5    lea         eax,[ebp-2C]
 005C63A8    push        eax
 005C63A9    push        0
 005C63AB    mov         eax,dword ptr [ebp-28]
 005C63AE    push        eax
 005C63AF    mov         eax,dword ptr [ebp-1C]
 005C63B2    push        eax
 005C63B3    call        GDI32.CreateDIBSection
 005C63B8    call        005C1EEC
 005C63BD    mov         dword ptr [ebp-10],eax
 005C63C0    cmp         dword ptr [ebp-2C],0
>005C63C4    jne         005C63CB
 005C63C6    call        005C1E40
 005C63CB    cmp         dword ptr [ebp-4],0
>005C63CF    je          005C642B
 005C63D1    mov         eax,dword ptr [ebp+0C]
 005C63D4    mov         eax,dword ptr [eax+1C]
 005C63D7    cmp         eax,dword ptr [ebp-8C]
>005C63DD    jne         005C642B
 005C63DF    mov         eax,dword ptr [ebp+0C]
 005C63E2    mov         eax,dword ptr [eax+20]
 005C63E5    cmp         eax,dword ptr [ebp-88]
>005C63EB    jne         005C642B
 005C63ED    mov         eax,dword ptr [ebp+0C]
 005C63F0    cmp         word ptr [eax+26],8
>005C63F5    jbe         005C642B
 005C63F7    push        0
 005C63F9    mov         eax,dword ptr [ebp-28]
 005C63FC    push        eax
 005C63FD    mov         eax,dword ptr [ebp-2C]
 005C6400    push        eax
 005C6401    mov         eax,dword ptr [ebp+0C]
 005C6404    mov         eax,dword ptr [eax+20]
 005C6407    cdq
 005C6408    xor         eax,edx
 005C640A    sub         eax,edx
 005C640C    push        eax
 005C640D    push        0
 005C640F    mov         eax,dword ptr [ebp-4]
 005C6412    push        eax
 005C6413    mov         eax,dword ptr [ebp-20]
 005C6416    push        eax
 005C6417    call        GDI32.GetDIBits
 005C641C    call        @TryFinallyExit
 005C6421    call        @TryFinallyExit
>005C6426    jmp         005C6749
 005C642B    xor         eax,eax
 005C642D    pop         edx
 005C642E    pop         ecx
 005C642F    pop         ecx
 005C6430    mov         dword ptr fs:[eax],edx
 005C6433    push        5C6448
 005C6438    mov         eax,dword ptr [ebp-28]
 005C643B    call        @FreeMem
 005C6440    ret
>005C6441    jmp         @HandleFinally
>005C6446    jmp         005C6438
 005C6448    mov         eax,dword ptr [ebp-10]
 005C644B    call        005C1EEC
 005C6450    mov         eax,dword ptr [ebp-10]
 005C6453    push        eax
 005C6454    mov         eax,dword ptr [ebp-20]
 005C6457    push        eax
 005C6458    call        GDI32.SelectObject
 005C645D    call        005C1EEC
 005C6462    mov         dword ptr [ebp-18],eax
 005C6465    xor         eax,eax
 005C6467    push        ebp
 005C6468    push        5C66F3
 005C646D    push        dword ptr fs:[eax]
 005C6470    mov         dword ptr fs:[eax],esp
 005C6473    xor         eax,eax
 005C6475    push        ebp
 005C6476    push        5C66E2
 005C647B    push        dword ptr fs:[eax]
 005C647E    mov         dword ptr fs:[eax],esp
 005C6481    xor         eax,eax
 005C6483    mov         dword ptr [ebp-38],eax
 005C6486    xor         eax,eax
 005C6488    mov         dword ptr [ebp-3C],eax
 005C648B    cmp         dword ptr [ebp-0C],0
>005C648F    je          005C64AC
 005C6491    push        0
 005C6493    mov         eax,dword ptr [ebp-0C]
 005C6496    push        eax
 005C6497    mov         eax,dword ptr [ebp-20]
 005C649A    push        eax
 005C649B    call        GDI32.SelectPalette
 005C64A0    mov         dword ptr [ebp-38],eax
 005C64A3    mov         eax,dword ptr [ebp-20]
 005C64A6    push        eax
 005C64A7    call        GDI32.RealizePalette
 005C64AC    xor         eax,eax
 005C64AE    push        ebp
 005C64AF    push        5C66C0
 005C64B4    push        dword ptr fs:[eax]
 005C64B7    mov         dword ptr fs:[eax],esp
 005C64BA    cmp         dword ptr [ebp+8],0
>005C64BE    je          005C6579
 005C64C4    mov         eax,dword ptr [ebp+8]
 005C64C7    mov         eax,dword ptr [eax+14]
 005C64CA    call        TBrush.GetHandle
 005C64CF    push        eax
 005C64D0    mov         eax,dword ptr [ebp+0C]
 005C64D3    mov         eax,dword ptr [eax+8]
 005C64D6    push        eax
 005C64D7    lea         eax,[ebp-0A0]
 005C64DD    push        eax
 005C64DE    mov         ecx,dword ptr [ebp+0C]
 005C64E1    mov         ecx,dword ptr [ecx+4]
 005C64E4    xor         edx,edx
 005C64E6    xor         eax,eax
 005C64E8    call        Rect
 005C64ED    lea         eax,[ebp-0A0]
 005C64F3    push        eax
 005C64F4    mov         eax,dword ptr [ebp-20]
 005C64F7    push        eax
 005C64F8    call        USER32.FillRect
 005C64FD    mov         eax,dword ptr [ebp+8]
 005C6500    mov         eax,dword ptr [eax+0C]
 005C6503    mov         eax,dword ptr [eax+18]
 005C6506    call        ColorToRGB
 005C650B    push        eax
 005C650C    mov         eax,dword ptr [ebp-20]
 005C650F    push        eax
 005C6510    call        GDI32.SetTextColor
 005C6515    mov         eax,dword ptr [ebp+8]
 005C6518    mov         eax,dword ptr [eax+14]
 005C651B    call        TBrush.GetColor
 005C6520    call        ColorToRGB
 005C6525    push        eax
 005C6526    mov         eax,dword ptr [ebp-20]
 005C6529    push        eax
 005C652A    call        GDI32.SetBkColor
 005C652F    mov         eax,dword ptr [ebp+0C]
 005C6532    cmp         word ptr [eax+26],1
>005C6537    jne         005C6599
 005C6539    mov         eax,dword ptr [ebp+0C]
 005C653C    cmp         dword ptr [eax+14],0
>005C6540    je          005C6599
 005C6542    mov         eax,dword ptr [ebp+8]
 005C6545    mov         eax,dword ptr [eax+0C]
 005C6548    mov         eax,dword ptr [eax+18]
 005C654B    call        ColorToRGB
 005C6550    mov         dword ptr [ebp-34],eax
 005C6553    mov         eax,dword ptr [ebp+8]
 005C6556    mov         eax,dword ptr [eax+14]
 005C6559    call        TBrush.GetColor
 005C655E    call        ColorToRGB
 005C6563    mov         dword ptr [ebp-30],eax
 005C6566    lea         eax,[ebp-34]
 005C6569    push        eax
 005C656A    push        2
 005C656C    push        0
 005C656E    mov         eax,dword ptr [ebp-20]
 005C6571    push        eax
 005C6572    call        GDI32.SetDIBColorTable
>005C6577    jmp         005C6599
 005C6579    push        0FF0062
 005C657E    mov         eax,dword ptr [ebp+0C]
 005C6581    mov         eax,dword ptr [eax+8]
 005C6584    push        eax
 005C6585    mov         eax,dword ptr [ebp+0C]
 005C6588    mov         eax,dword ptr [eax+4]
 005C658B    push        eax
 005C658C    push        0
 005C658E    push        0
 005C6590    mov         eax,dword ptr [ebp-20]
 005C6593    push        eax
 005C6594    call        GDI32.PatBlt
 005C6599    cmp         dword ptr [ebp-4],0
>005C659D    je          005C669D
 005C65A3    mov         eax,dword ptr [ebp-1C]
 005C65A6    push        eax
 005C65A7    call        GDI32.CreateCompatibleDC
 005C65AC    call        005C1EEC
 005C65B1    mov         dword ptr [ebp-24],eax
 005C65B4    xor         eax,eax
 005C65B6    push        ebp
 005C65B7    push        5C6696
 005C65BC    push        dword ptr fs:[eax]
 005C65BF    mov         dword ptr fs:[eax],esp
 005C65C2    mov         eax,dword ptr [ebp-4]
 005C65C5    push        eax
 005C65C6    mov         eax,dword ptr [ebp-24]
 005C65C9    push        eax
 005C65CA    call        GDI32.SelectObject
 005C65CF    call        005C1EEC
 005C65D4    mov         dword ptr [ebp-14],eax
 005C65D7    cmp         dword ptr [ebp-8],0
>005C65DB    je          005C65F8
 005C65DD    push        0
 005C65DF    mov         eax,dword ptr [ebp-8]
 005C65E2    push        eax
 005C65E3    mov         eax,dword ptr [ebp-24]
 005C65E6    push        eax
 005C65E7    call        GDI32.SelectPalette
 005C65EC    mov         dword ptr [ebp-3C],eax
 005C65EF    mov         eax,dword ptr [ebp-24]
 005C65F2    push        eax
 005C65F3    call        GDI32.RealizePalette
 005C65F8    cmp         dword ptr [ebp+8],0
>005C65FC    je          005C6630
 005C65FE    mov         eax,dword ptr [ebp+8]
 005C6601    mov         eax,dword ptr [eax+0C]
 005C6604    mov         eax,dword ptr [eax+18]
 005C6607    call        ColorToRGB
 005C660C    push        eax
 005C660D    mov         eax,dword ptr [ebp-24]
 005C6610    push        eax
 005C6611    call        GDI32.SetTextColor
 005C6616    mov         eax,dword ptr [ebp+8]
 005C6619    mov         eax,dword ptr [eax+14]
 005C661C    call        TBrush.GetColor
 005C6621    call        ColorToRGB
 005C6626    push        eax
 005C6627    mov         eax,dword ptr [ebp-24]
 005C662A    push        eax
 005C662B    call        GDI32.SetBkColor
 005C6630    push        0CC0020
 005C6635    push        0
 005C6637    push        0
 005C6639    mov         eax,dword ptr [ebp-24]
 005C663C    push        eax
 005C663D    mov         eax,dword ptr [ebp+0C]
 005C6640    mov         eax,dword ptr [eax+8]
 005C6643    push        eax
 005C6644    mov         eax,dword ptr [ebp+0C]
 005C6647    mov         eax,dword ptr [eax+4]
 005C664A    push        eax
 005C664B    push        0
 005C664D    push        0
 005C664F    mov         eax,dword ptr [ebp-20]
 005C6652    push        eax
 005C6653    call        GDI32.BitBlt
 005C6658    cmp         dword ptr [ebp-8],0
>005C665C    je          005C666D
 005C665E    push        0FF
 005C6660    mov         eax,dword ptr [ebp-3C]
 005C6663    push        eax
 005C6664    mov         eax,dword ptr [ebp-24]
 005C6667    push        eax
 005C6668    call        GDI32.SelectPalette
 005C666D    mov         eax,dword ptr [ebp-14]
 005C6670    push        eax
 005C6671    mov         eax,dword ptr [ebp-24]
 005C6674    push        eax
 005C6675    call        GDI32.SelectObject
 005C667A    call        005C1EEC
 005C667F    xor         eax,eax
 005C6681    pop         edx
 005C6682    pop         ecx
 005C6683    pop         ecx
 005C6684    mov         dword ptr fs:[eax],edx
 005C6687    push        5C669D
 005C668C    mov         eax,dword ptr [ebp-24]
 005C668F    push        eax
 005C6690    call        GDI32.DeleteDC
 005C6695    ret
>005C6696    jmp         @HandleFinally
>005C669B    jmp         005C668C
 005C669D    xor         eax,eax
 005C669F    pop         edx
 005C66A0    pop         ecx
 005C66A1    pop         ecx
 005C66A2    mov         dword ptr fs:[eax],edx
 005C66A5    push        5C66C7
 005C66AA    cmp         dword ptr [ebp-0C],0
>005C66AE    je          005C66BF
 005C66B0    push        0FF
 005C66B2    mov         eax,dword ptr [ebp-38]
 005C66B5    push        eax
 005C66B6    mov         eax,dword ptr [ebp-20]
 005C66B9    push        eax
 005C66BA    call        GDI32.SelectPalette
 005C66BF    ret
>005C66C0    jmp         @HandleFinally
>005C66C5    jmp         005C66AA
 005C66C7    xor         eax,eax
 005C66C9    pop         edx
 005C66CA    pop         ecx
 005C66CB    pop         ecx
 005C66CC    mov         dword ptr fs:[eax],edx
 005C66CF    push        5C66E9
 005C66D4    mov         eax,dword ptr [ebp-18]
 005C66D7    push        eax
 005C66D8    mov         eax,dword ptr [ebp-20]
 005C66DB    push        eax
 005C66DC    call        GDI32.SelectObject
 005C66E1    ret
>005C66E2    jmp         @HandleFinally
>005C66E7    jmp         005C66D4
 005C66E9    xor         eax,eax
 005C66EB    pop         edx
 005C66EC    pop         ecx
 005C66ED    pop         ecx
 005C66EE    mov         dword ptr fs:[eax],edx
>005C66F1    jmp         005C670B
>005C66F3    jmp         @HandleAnyException
 005C66F8    mov         eax,dword ptr [ebp-10]
 005C66FB    push        eax
 005C66FC    call        GDI32.DeleteObject
 005C6701    call        @RaiseAgain
 005C6706    call        @DoneExcept
 005C670B    xor         eax,eax
 005C670D    pop         edx
 005C670E    pop         ecx
 005C670F    pop         ecx
 005C6710    mov         dword ptr fs:[eax],edx
 005C6713    push        5C6749
 005C6718    mov         eax,dword ptr [ebp-20]
 005C671B    push        eax
 005C671C    call        GDI32.DeleteDC
 005C6721    mov         eax,dword ptr [ebp-1C]
 005C6724    push        eax
 005C6725    push        0
 005C6727    call        USER32.ReleaseDC
 005C672C    cmp         dword ptr [ebp-10],0
>005C6730    je          005C6741
 005C6732    mov         eax,dword ptr [ebp+0C]
 005C6735    push        eax
 005C6736    push        54
 005C6738    mov         eax,dword ptr [ebp-10]
 005C673B    push        eax
 005C673C    call        GDI32.GetObjectA
 005C6741    ret
>005C6742    jmp         @HandleFinally
>005C6747    jmp         005C6718
 005C6749    mov         eax,dword ptr [ebp-10]
 005C674C    pop         edi
 005C674D    pop         esi
 005C674E    pop         ebx
 005C674F    mov         esp,ebp
 005C6751    pop         ebp
 005C6752    ret         8
end;*}

//005C6758
function CopyPalette(Palette:HPALETTE):HPALETTE;
begin
{*
 005C6758    push        ebp
 005C6759    mov         ebp,esp
 005C675B    add         esp,0FFFFFBF0
 005C6761    mov         dword ptr [ebp-4],eax
 005C6764    xor         eax,eax
 005C6766    mov         dword ptr [ebp-8],eax
 005C6769    cmp         dword ptr [ebp-4],0
>005C676D    je          005C67C6
 005C676F    xor         eax,eax
 005C6771    mov         dword ptr [ebp-0C],eax
 005C6774    lea         eax,[ebp-0C]
 005C6777    push        eax
 005C6778    push        4
 005C677A    mov         eax,dword ptr [ebp-4]
 005C677D    push        eax
 005C677E    call        GDI32.GetObjectA
 005C6783    test        eax,eax
>005C6785    je          005C67C6
 005C6787    cmp         dword ptr [ebp-0C],0
>005C678B    je          005C67C6
 005C678D    mov         word ptr [ebp-410],300
 005C6796    mov         ax,word ptr [ebp-0C]
 005C679A    mov         word ptr [ebp-40E],ax
 005C67A1    lea         eax,[ebp-40C]
 005C67A7    push        eax
 005C67A8    mov         eax,dword ptr [ebp-0C]
 005C67AB    push        eax
 005C67AC    push        0
 005C67AE    mov         eax,dword ptr [ebp-4]
 005C67B1    push        eax
 005C67B2    call        GDI32.GetPaletteEntries
 005C67B7    lea         eax,[ebp-410]
 005C67BD    push        eax
 005C67BE    call        GDI32.CreatePalette
 005C67C3    mov         dword ptr [ebp-8],eax
 005C67C6    mov         eax,dword ptr [ebp-8]
 005C67C9    mov         esp,ebp
 005C67CB    pop         ebp
 005C67CC    ret
*}
end;

//005C67D0
{*function sub_005C67D0(?:HBITMAP; ?:HPALETTE; ?:Longint):?;
begin
 005C67D0    push        ebp
 005C67D1    mov         ebp,esp
 005C67D3    add         esp,0FFFFFF80
 005C67D6    mov         dword ptr [ebp-0C],ecx
 005C67D9    mov         dword ptr [ebp-8],edx
 005C67DC    mov         dword ptr [ebp-4],eax
 005C67DF    xor         eax,eax
 005C67E1    mov         dword ptr [ebp-10],eax
 005C67E4    cmp         dword ptr [ebp-4],0
>005C67E8    je          005C69F2
 005C67EE    lea         eax,[ebp-80]
 005C67F1    push        eax
 005C67F2    push        54
 005C67F4    mov         eax,dword ptr [ebp-4]
 005C67F7    push        eax
 005C67F8    call        GDI32.GetObjectA
 005C67FD    test        eax,eax
>005C67FF    je          005C69F2
 005C6805    mov         eax,dword ptr [ebp-4]
 005C6808    call        005C5B88
 005C680D    xor         eax,eax
 005C680F    mov         dword ptr [ebp-14],eax
 005C6812    xor         eax,eax
 005C6814    mov         dword ptr [ebp-1C],eax
 005C6817    xor         eax,eax
 005C6819    push        ebp
 005C681A    push        5C69EB
 005C681F    push        dword ptr fs:[eax]
 005C6822    mov         dword ptr fs:[eax],esp
 005C6825    push        0
 005C6827    call        USER32.GetDC
 005C682C    call        005C1EEC
 005C6831    mov         dword ptr [ebp-14],eax
 005C6834    mov         eax,dword ptr [ebp-14]
 005C6837    push        eax
 005C6838    call        GDI32.CreateCompatibleDC
 005C683D    call        005C1EEC
 005C6842    mov         dword ptr [ebp-1C],eax
 005C6845    push        0
 005C6847    push        1
 005C6849    push        1
 005C684B    mov         eax,dword ptr [ebp-78]
 005C684E    push        eax
 005C684F    mov         eax,dword ptr [ebp-7C]
 005C6852    push        eax
 005C6853    call        GDI32.CreateBitmap
 005C6858    mov         dword ptr [ebp-10],eax
 005C685B    cmp         dword ptr [ebp-10],0
>005C685F    je          005C69BD
 005C6865    mov         eax,dword ptr [ebp-10]
 005C6868    push        eax
 005C6869    mov         eax,dword ptr [ebp-1C]
 005C686C    push        eax
 005C686D    call        GDI32.SelectObject
 005C6872    mov         dword ptr [ebp-2C],eax
 005C6875    cmp         dword ptr [ebp-0C],1FFFFFFF
>005C687C    jne         005C689A
 005C687E    push        42
 005C6880    mov         eax,dword ptr [ebp-78]
 005C6883    push        eax
 005C6884    mov         eax,dword ptr [ebp-7C]
 005C6887    push        eax
 005C6888    push        0
 005C688A    push        0
 005C688C    mov         eax,dword ptr [ebp-1C]
 005C688F    push        eax
 005C6890    call        GDI32.PatBlt
>005C6895    jmp         005C69AA
 005C689A    mov         eax,dword ptr [ebp-14]
 005C689D    push        eax
 005C689E    call        GDI32.CreateCompatibleDC
 005C68A3    call        005C1EEC
 005C68A8    mov         dword ptr [ebp-18],eax
 005C68AB    xor         eax,eax
 005C68AD    push        ebp
 005C68AE    push        5C69A3
 005C68B3    push        dword ptr fs:[eax]
 005C68B6    mov         dword ptr fs:[eax],esp
 005C68B9    cmp         dword ptr [ebp-6C],0
>005C68BD    je          005C68E1
 005C68BF    mov         byte ptr [ebp-21],1
 005C68C3    xor         eax,eax
 005C68C5    mov         dword ptr [ebp-68],eax
 005C68C8    lea         eax,[ebp-80]
 005C68CB    push        eax
 005C68CC    push        0
 005C68CE    mov         ecx,dword ptr [ebp-8]
 005C68D1    mov         edx,dword ptr [ebp-8]
 005C68D4    mov         eax,dword ptr [ebp-4]
 005C68D7    call        005C60E8
 005C68DC    mov         dword ptr [ebp-4],eax
>005C68DF    jmp         005C68E5
 005C68E1    mov         byte ptr [ebp-21],0
 005C68E5    mov         eax,dword ptr [ebp-4]
 005C68E8    push        eax
 005C68E9    mov         eax,dword ptr [ebp-18]
 005C68EC    push        eax
 005C68ED    call        GDI32.SelectObject
 005C68F2    mov         dword ptr [ebp-28],eax
 005C68F5    cmp         dword ptr [ebp-8],0
>005C68F9    je          005C692B
 005C68FB    push        0
 005C68FD    mov         eax,dword ptr [ebp-8]
 005C6900    push        eax
 005C6901    mov         eax,dword ptr [ebp-18]
 005C6904    push        eax
 005C6905    call        GDI32.SelectPalette
 005C690A    mov         eax,dword ptr [ebp-18]
 005C690D    push        eax
 005C690E    call        GDI32.RealizePalette
 005C6913    push        0
 005C6915    mov         eax,dword ptr [ebp-8]
 005C6918    push        eax
 005C6919    mov         eax,dword ptr [ebp-1C]
 005C691C    push        eax
 005C691D    call        GDI32.SelectPalette
 005C6922    mov         eax,dword ptr [ebp-1C]
 005C6925    push        eax
 005C6926    call        GDI32.RealizePalette
 005C692B    mov         eax,dword ptr [ebp-0C]
 005C692E    push        eax
 005C692F    mov         eax,dword ptr [ebp-18]
 005C6932    push        eax
 005C6933    call        GDI32.SetBkColor
 005C6938    mov         dword ptr [ebp-20],eax
 005C693B    push        0CC0020
 005C6940    push        0
 005C6942    push        0
 005C6944    mov         eax,dword ptr [ebp-18]
 005C6947    push        eax
 005C6948    mov         eax,dword ptr [ebp-78]
 005C694B    push        eax
 005C694C    mov         eax,dword ptr [ebp-7C]
 005C694F    push        eax
 005C6950    push        0
 005C6952    push        0
 005C6954    mov         eax,dword ptr [ebp-1C]
 005C6957    push        eax
 005C6958    call        GDI32.BitBlt
 005C695D    mov         eax,dword ptr [ebp-20]
 005C6960    push        eax
 005C6961    mov         eax,dword ptr [ebp-18]
 005C6964    push        eax
 005C6965    call        GDI32.SetBkColor
 005C696A    cmp         dword ptr [ebp-28],0
>005C696E    je          005C697D
 005C6970    mov         eax,dword ptr [ebp-28]
 005C6973    push        eax
 005C6974    mov         eax,dword ptr [ebp-18]
 005C6977    push        eax
 005C6978    call        GDI32.SelectObject
 005C697D    cmp         byte ptr [ebp-21],0
>005C6981    je          005C698C
 005C6983    mov         eax,dword ptr [ebp-4]
 005C6986    push        eax
 005C6987    call        GDI32.DeleteObject
 005C698C    xor         eax,eax
 005C698E    pop         edx
 005C698F    pop         ecx
 005C6990    pop         ecx
 005C6991    mov         dword ptr fs:[eax],edx
 005C6994    push        5C69AA
 005C6999    mov         eax,dword ptr [ebp-18]
 005C699C    push        eax
 005C699D    call        GDI32.DeleteDC
 005C69A2    ret
>005C69A3    jmp         @HandleFinally
>005C69A8    jmp         005C6999
 005C69AA    cmp         dword ptr [ebp-2C],0
>005C69AE    je          005C69BD
 005C69B0    mov         eax,dword ptr [ebp-2C]
 005C69B3    push        eax
 005C69B4    mov         eax,dword ptr [ebp-1C]
 005C69B7    push        eax
 005C69B8    call        GDI32.SelectObject
 005C69BD    xor         eax,eax
 005C69BF    pop         edx
 005C69C0    pop         ecx
 005C69C1    pop         ecx
 005C69C2    mov         dword ptr fs:[eax],edx
 005C69C5    push        5C69F2
 005C69CA    cmp         dword ptr [ebp-1C],0
>005C69CE    je          005C69D9
 005C69D0    mov         eax,dword ptr [ebp-1C]
 005C69D3    push        eax
 005C69D4    call        GDI32.DeleteDC
 005C69D9    cmp         dword ptr [ebp-14],0
>005C69DD    je          005C69EA
 005C69DF    mov         eax,dword ptr [ebp-14]
 005C69E2    push        eax
 005C69E3    push        0
 005C69E5    call        USER32.ReleaseDC
 005C69EA    ret
>005C69EB    jmp         @HandleFinally
>005C69F0    jmp         005C69CA
 005C69F2    mov         eax,dword ptr [ebp-10]
 005C69F5    mov         esp,ebp
 005C69F7    pop         ebp
 005C69F8    ret
end;*}

//005C69FC
constructor TBitmap.Create;
begin
{*
 005C69FC    push        ebp
 005C69FD    mov         ebp,esp
 005C69FF    add         esp,0FFFFFFF8
 005C6A02    test        dl,dl
>005C6A04    je          005C6A0E
 005C6A06    add         esp,0FFFFFFF0
 005C6A09    call        @ClassCreate
 005C6A0E    mov         byte ptr [ebp-5],dl
 005C6A11    mov         dword ptr [ebp-4],eax
 005C6A14    xor         edx,edx
 005C6A16    mov         eax,dword ptr [ebp-4]
 005C6A19    call        TGraphic.Create
 005C6A1E    mov         eax,dword ptr [ebp-4]
 005C6A21    mov         dword ptr [eax+34],20000000
 005C6A28    mov         dl,1
 005C6A2A    mov         eax,[005BED74];TBitmapImage
 005C6A2F    call        TObject.Create
 005C6A34    mov         edx,dword ptr [ebp-4]
 005C6A37    mov         dword ptr [edx+28],eax
 005C6A3A    mov         eax,dword ptr [ebp-4]
 005C6A3D    mov         eax,dword ptr [eax+28]
 005C6A40    call        TSharedImage.Reference
 005C6A45    cmp         byte ptr ds:[6E3CEC],0;gvar_006E3CEC
>005C6A4C    je          005C6A58
 005C6A4E    mov         dl,1
 005C6A50    mov         eax,dword ptr [ebp-4]
 005C6A53    mov         ecx,dword ptr [eax]
 005C6A55    call        dword ptr [ecx+6C]
 005C6A58    mov         eax,dword ptr [ebp-4]
 005C6A5B    cmp         byte ptr [ebp-5],0
>005C6A5F    je          005C6A70
 005C6A61    call        @AfterConstruction
 005C6A66    pop         dword ptr fs:[0]
 005C6A6D    add         esp,0C
 005C6A70    mov         eax,dword ptr [ebp-4]
 005C6A73    pop         ecx
 005C6A74    pop         ecx
 005C6A75    pop         ebp
 005C6A76    ret
*}
end;

//005C6A78
destructor TBitmap.Destroy;
begin
{*
 005C6A78    push        ebp
 005C6A79    mov         ebp,esp
 005C6A7B    add         esp,0FFFFFFF8
 005C6A7E    call        @BeforeDestruction
 005C6A83    mov         byte ptr [ebp-5],dl
 005C6A86    mov         dword ptr [ebp-4],eax
 005C6A89    mov         eax,dword ptr [ebp-4]
 005C6A8C    call        005C755C
 005C6A91    mov         eax,dword ptr [ebp-4]
 005C6A94    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C6A97    call        TSharedImage.Release
 005C6A9C    mov         eax,dword ptr [ebp-4]
 005C6A9F    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C6AA2    call        TObject.Free
 005C6AA7    mov         dl,byte ptr [ebp-5]
 005C6AAA    and         dl,0FC
 005C6AAD    mov         eax,dword ptr [ebp-4]
 005C6AB0    call        TPersistent.Destroy
 005C6AB5    cmp         byte ptr [ebp-5],0
>005C6AB9    jle         005C6AC3
 005C6ABB    mov         eax,dword ptr [ebp-4]
 005C6ABE    call        @ClassDestroy
 005C6AC3    pop         ecx
 005C6AC4    pop         ecx
 005C6AC5    pop         ebp
 005C6AC6    ret
*}
end;

//005C6AC8
procedure TBitmap.Assign(Source:TPersistent);
begin
{*
 005C6AC8    push        ebp
 005C6AC9    mov         ebp,esp
 005C6ACB    add         esp,0FFFFFFA4
 005C6ACE    mov         dword ptr [ebp-8],edx
 005C6AD1    mov         dword ptr [ebp-4],eax
 005C6AD4    cmp         dword ptr [ebp-8],0
>005C6AD8    je          005C6AF0
 005C6ADA    mov         eax,dword ptr [ebp-8]
 005C6ADD    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 005C6AE3    call        @IsClass
 005C6AE8    test        al,al
>005C6AEA    je          005C6BB8
 005C6AF0    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C6AF5    call        KERNEL32.EnterCriticalSection
 005C6AFA    xor         eax,eax
 005C6AFC    push        ebp
 005C6AFD    push        5C6B91
 005C6B02    push        dword ptr fs:[eax]
 005C6B05    mov         dword ptr fs:[eax],esp
 005C6B08    cmp         dword ptr [ebp-8],0
>005C6B0C    je          005C6B56
 005C6B0E    mov         eax,dword ptr [ebp-8]
 005C6B11    mov         eax,dword ptr [eax+28]
 005C6B14    call        TSharedImage.Reference
 005C6B19    mov         eax,dword ptr [ebp-4]
 005C6B1C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C6B1F    call        TSharedImage.Release
 005C6B24    mov         eax,dword ptr [ebp-8]
 005C6B27    mov         eax,dword ptr [eax+28]
 005C6B2A    mov         edx,dword ptr [ebp-4]
 005C6B2D    mov         dword ptr [edx+28],eax;TBitmap.FImage:TBitmapImage
 005C6B30    mov         eax,dword ptr [ebp-8]
 005C6B33    mov         al,byte ptr [eax+21]
 005C6B36    mov         edx,dword ptr [ebp-4]
 005C6B39    mov         byte ptr [edx+21],al;TBitmap.FTransparent:Boolean
 005C6B3C    mov         eax,dword ptr [ebp-8]
 005C6B3F    mov         eax,dword ptr [eax+34]
 005C6B42    mov         edx,dword ptr [ebp-4]
 005C6B45    mov         dword ptr [edx+34],eax;TBitmap.FTransparentColor:TColor
 005C6B48    mov         eax,dword ptr [ebp-8]
 005C6B4B    mov         al,byte ptr [eax+38]
 005C6B4E    mov         edx,dword ptr [ebp-4]
 005C6B51    mov         byte ptr [edx+38],al;TBitmap.FTransparentMode:TTransparentMode
>005C6B54    jmp         005C6B79
 005C6B56    lea         eax,[ebp-5C]
 005C6B59    xor         ecx,ecx
 005C6B5B    mov         edx,54
 005C6B60    call        @FillChar
 005C6B65    lea         eax,[ebp-5C]
 005C6B68    push        eax
 005C6B69    push        0
 005C6B6B    push        0
 005C6B6D    xor         ecx,ecx
 005C6B6F    xor         edx,edx
 005C6B71    mov         eax,dword ptr [ebp-4]
 005C6B74    call        005C7A24
 005C6B79    xor         eax,eax
 005C6B7B    pop         edx
 005C6B7C    pop         ecx
 005C6B7D    pop         ecx
 005C6B7E    mov         dword ptr fs:[eax],edx
 005C6B81    push        5C6B98
 005C6B86    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C6B8B    call        KERNEL32.LeaveCriticalSection
 005C6B90    ret
>005C6B91    jmp         @HandleFinally
>005C6B96    jmp         005C6B86
 005C6B98    mov         eax,dword ptr [ebp-4]
 005C6B9B    mov         edx,dword ptr [eax]
 005C6B9D    call        dword ptr [edx+24];TBitmap.sub_005C728C
 005C6BA0    test        eax,eax
 005C6BA2    setne       al
 005C6BA5    mov         edx,dword ptr [ebp-4]
 005C6BA8    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 005C6BAB    mov         edx,dword ptr [ebp-4]
 005C6BAE    mov         eax,dword ptr [ebp-4]
 005C6BB1    mov         ecx,dword ptr [eax]
 005C6BB3    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
>005C6BB6    jmp         005C6BC3
 005C6BB8    mov         edx,dword ptr [ebp-8]
 005C6BBB    mov         eax,dword ptr [ebp-4]
 005C6BBE    call        TPersistent.Assign
 005C6BC3    mov         esp,ebp
 005C6BC5    pop         ebp
 005C6BC6    ret
*}
end;

//005C6BC8
{*procedure sub_005C6BC8(?:TBitmap; ?:HBITMAP; ?:?);
begin
 005C6BC8    push        ebp
 005C6BC9    mov         ebp,esp
 005C6BCB    add         esp,0FFFFFF98
 005C6BCE    push        ebx
 005C6BCF    push        esi
 005C6BD0    push        edi
 005C6BD1    mov         esi,dword ptr [ebp+8]
 005C6BD4    lea         edi,[ebp-68]
 005C6BD7    push        ecx
 005C6BD8    mov         ecx,15
 005C6BDD    rep movs    dword ptr [edi],dword ptr [esi]
 005C6BDF    pop         ecx
 005C6BE0    mov         dword ptr [ebp-0C],ecx
 005C6BE3    mov         dword ptr [ebp-8],edx
 005C6BE6    mov         dword ptr [ebp-4],eax
 005C6BE9    mov         eax,dword ptr [ebp-4]
 005C6BEC    call        005C755C
 005C6BF1    xor         eax,eax
 005C6BF3    mov         dword ptr [ebp-10],eax
 005C6BF6    xor         eax,eax
 005C6BF8    mov         dword ptr [ebp-14],eax
 005C6BFB    xor         eax,eax
 005C6BFD    push        ebp
 005C6BFE    push        5C6C6B
 005C6C03    push        dword ptr fs:[eax]
 005C6C06    mov         dword ptr fs:[eax],esp
 005C6C09    mov         eax,dword ptr [ebp-0C]
 005C6C0C    cmp         eax,dword ptr ds:[6ECD1C];0x0 SystemPalette16:HPALETTE
>005C6C12    jne         005C6C1C
 005C6C14    mov         eax,dword ptr [ebp-0C]
 005C6C17    mov         dword ptr [ebp-14],eax
>005C6C1A    jmp         005C6C27
 005C6C1C    mov         eax,dword ptr [ebp-0C]
 005C6C1F    call        CopyPalette
 005C6C24    mov         dword ptr [ebp-14],eax
 005C6C27    lea         eax,[ebp-68]
 005C6C2A    push        eax
 005C6C2B    mov         eax,dword ptr [ebp-4]
 005C6C2E    mov         eax,dword ptr [eax+2C]
 005C6C31    push        eax
 005C6C32    mov         ecx,dword ptr [ebp-14]
 005C6C35    mov         edx,dword ptr [ebp-0C]
 005C6C38    mov         eax,dword ptr [ebp-8]
 005C6C3B    call        005C60E8
 005C6C40    mov         dword ptr [ebp-10],eax
 005C6C43    lea         eax,[ebp-68]
 005C6C46    push        eax
 005C6C47    mov         eax,dword ptr [ebp-4]
 005C6C4A    mov         eax,dword ptr [eax+28]
 005C6C4D    mov         al,byte ptr [eax+70]
 005C6C50    push        eax
 005C6C51    push        0
 005C6C53    mov         ecx,dword ptr [ebp-14]
 005C6C56    mov         edx,dword ptr [ebp-10]
 005C6C59    mov         eax,dword ptr [ebp-4]
 005C6C5C    call        005C7A24
 005C6C61    xor         eax,eax
 005C6C63    pop         edx
 005C6C64    pop         ecx
 005C6C65    pop         ecx
 005C6C66    mov         dword ptr fs:[eax],edx
>005C6C69    jmp         005C6C91
>005C6C6B    jmp         @HandleAnyException
 005C6C70    mov         eax,dword ptr [ebp-14]
 005C6C73    call        005BEFF0
 005C6C78    cmp         dword ptr [ebp-10],0
>005C6C7C    je          005C6C87
 005C6C7E    mov         eax,dword ptr [ebp-10]
 005C6C81    push        eax
 005C6C82    call        GDI32.DeleteObject
 005C6C87    call        @RaiseAgain
 005C6C8C    call        @DoneExcept
 005C6C91    pop         edi
 005C6C92    pop         esi
 005C6C93    pop         ebx
 005C6C94    mov         esp,ebp
 005C6C96    pop         ebp
 005C6C97    ret         4
end;*}

//005C6C9C
procedure sub_005C6C9C(?:TBitmap; ?:TBitmap);
begin
{*
 005C6C9C    push        ebp
 005C6C9D    mov         ebp,esp
 005C6C9F    add         esp,0FFFFFFF8
 005C6CA2    mov         dword ptr [ebp-8],edx
 005C6CA5    mov         dword ptr [ebp-4],eax
 005C6CA8    mov         eax,dword ptr [ebp-4]
 005C6CAB    call        005C7028
 005C6CB0    mov         eax,dword ptr [ebp-4]
 005C6CB3    mov         eax,dword ptr [eax+28]
 005C6CB6    xor         edx,edx
 005C6CB8    mov         dword ptr [eax+50],edx
 005C6CBB    mov         eax,dword ptr [ebp-4]
 005C6CBE    mov         eax,dword ptr [eax+28]
 005C6CC1    xor         edx,edx
 005C6CC3    mov         dword ptr [eax+54],edx
 005C6CC6    mov         eax,dword ptr [ebp-4]
 005C6CC9    mov         eax,dword ptr [eax+28]
 005C6CCC    add         eax,6C
 005C6CCF    call        FreeAndNil
 005C6CD4    pop         ecx
 005C6CD5    pop         ecx
 005C6CD6    pop         ebp
 005C6CD7    ret
*}
end;

//005C6CD8
{*procedure sub_005C6CD8(?:?);
begin
 005C6CD8    push        ebp
 005C6CD9    mov         ebp,esp
 005C6CDB    add         esp,0FFFFFFF8
 005C6CDE    mov         dword ptr [ebp-8],edx
 005C6CE1    mov         dword ptr [ebp-4],eax
 005C6CE4    mov         eax,dword ptr [ebp-4]
 005C6CE7    mov         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
 005C6CEB    mov         edx,dword ptr [ebp-8]
 005C6CEE    mov         eax,dword ptr [ebp-4]
 005C6CF1    call        005C33B8
 005C6CF6    pop         ecx
 005C6CF7    pop         ecx
 005C6CF8    pop         ebp
 005C6CF9    ret
end;*}

//005C6CFC
procedure sub_005C6CFC(?:TBitmap);
begin
{*
 005C6CFC    push        ebp
 005C6CFD    mov         ebp,esp
 005C6CFF    add         esp,0FFFFFFA4
 005C6D02    push        esi
 005C6D03    push        edi
 005C6D04    mov         dword ptr [ebp-4],eax
 005C6D07    mov         dl,1
 005C6D09    mov         eax,[00642BA0];TMemoryStream
 005C6D0E    call        TObject.Create;TMemoryStream.Create
 005C6D13    mov         dword ptr [ebp-8],eax
 005C6D16    mov         edx,dword ptr [ebp-8]
 005C6D19    mov         eax,dword ptr [ebp-4]
 005C6D1C    mov         ecx,dword ptr [eax]
 005C6D1E    call        dword ptr [ecx+58]
 005C6D21    mov         eax,dword ptr [ebp-8]
 005C6D24    call        TStream.GetSize
 005C6D29    push        edx
 005C6D2A    push        eax
 005C6D2B    mov         eax,dword ptr [ebp-8]
 005C6D2E    call        TStream.SetSize64
 005C6D33    mov         eax,dword ptr [ebp-4]
 005C6D36    mov         eax,dword ptr [eax+28]
 005C6D39    lea         esi,[eax+18]
 005C6D3C    lea         edi,[ebp-5C]
 005C6D3F    mov         ecx,15
 005C6D44    rep movs    dword ptr [edi],dword ptr [esi]
 005C6D46    xor         eax,eax
 005C6D48    mov         dword ptr [ebp-48],eax
 005C6D4B    mov         eax,dword ptr [ebp-4]
 005C6D4E    call        005C755C
 005C6D53    mov         eax,dword ptr [ebp-4]
 005C6D56    add         eax,2C
 005C6D59    call        FreeAndNil
 005C6D5E    lea         eax,[ebp-5C]
 005C6D61    push        eax
 005C6D62    mov         eax,dword ptr [ebp-4]
 005C6D65    mov         eax,dword ptr [eax+28]
 005C6D68    mov         al,byte ptr [eax+70]
 005C6D6B    push        eax
 005C6D6C    mov         eax,dword ptr [ebp-8]
 005C6D6F    push        eax
 005C6D70    xor         ecx,ecx
 005C6D72    xor         edx,edx
 005C6D74    mov         eax,dword ptr [ebp-4]
 005C6D77    call        005C7A24
 005C6D7C    pop         edi
 005C6D7D    pop         esi
 005C6D7E    mov         esp,ebp
 005C6D80    pop         ebp
 005C6D81    ret
*}
end;

//005C6D84
{*procedure TBitmap.Draw(?:?; ?:?);
begin
 005C6D84    push        ebp
 005C6D85    mov         ebp,esp
 005C6D87    add         esp,0FFFFFFD4
 005C6D8A    push        ebx
 005C6D8B    mov         dword ptr [ebp-0C],ecx
 005C6D8E    mov         dword ptr [ebp-8],edx
 005C6D91    mov         dword ptr [ebp-4],eax
 005C6D94    mov         eax,dword ptr [ebp-4]
 005C6D97    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C6D9A    mov         dword ptr [ebp-2C],eax
 005C6D9D    mov         dl,byte ptr ds:[5C7024];0xF gvar_005C7024
 005C6DA3    mov         eax,dword ptr [ebp-8]
 005C6DA6    call        005C1AEC
 005C6DAB    mov         eax,dword ptr [ebp-4]
 005C6DAE    call        005C77DC
 005C6DB3    xor         eax,eax
 005C6DB5    mov         dword ptr [ebp-10],eax
 005C6DB8    mov         byte ptr [ebp-11],0
 005C6DBC    mov         eax,dword ptr [ebp-2C]
 005C6DBF    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C6DC3    je          005C6DED
 005C6DC5    push        0FF
 005C6DC7    mov         eax,dword ptr [ebp-2C]
 005C6DCA    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C6DCD    push        eax
 005C6DCE    mov         eax,dword ptr [ebp-8]
 005C6DD1    mov         eax,dword ptr [eax+4]
 005C6DD4    push        eax
 005C6DD5    call        GDI32.SelectPalette
 005C6DDA    mov         dword ptr [ebp-10],eax
 005C6DDD    mov         eax,dword ptr [ebp-8]
 005C6DE0    mov         eax,dword ptr [eax+4]
 005C6DE3    push        eax
 005C6DE4    call        GDI32.RealizePalette
 005C6DE9    mov         byte ptr [ebp-11],1
 005C6DED    push        0C
 005C6DEF    mov         eax,dword ptr [ebp-8]
 005C6DF2    mov         eax,dword ptr [eax+4]
 005C6DF5    push        eax
 005C6DF6    call        GDI32.GetDeviceCaps
 005C6DFB    mov         ebx,eax
 005C6DFD    push        0E
 005C6DFF    mov         eax,dword ptr [ebp-8]
 005C6E02    mov         eax,dword ptr [eax+4]
 005C6E05    push        eax
 005C6E06    call        GDI32.GetDeviceCaps
 005C6E0B    imul        ebx,eax
 005C6E0E    mov         dword ptr [ebp-20],ebx
 005C6E11    cmp         dword ptr [ebp-20],8
>005C6E15    jg          005C6E2C
 005C6E17    mov         eax,dword ptr [ebp-2C]
 005C6E1A    movzx       eax,word ptr [eax+2A]
 005C6E1E    mov         edx,dword ptr [ebp-2C]
 005C6E21    movzx       edx,word ptr [edx+28]
 005C6E25    imul        edx
 005C6E27    cmp         eax,dword ptr [ebp-20]
>005C6E2A    jg          005C6E30
 005C6E2C    xor         eax,eax
>005C6E2E    jmp         005C6E32
 005C6E30    mov         al,1
 005C6E32    mov         byte ptr [ebp-12],al
 005C6E35    cmp         byte ptr [ebp-12],0
>005C6E39    je          005C6E73
 005C6E3B    lea         eax,[ebp-1A]
 005C6E3E    push        eax
 005C6E3F    mov         eax,dword ptr [ebp-8]
 005C6E42    mov         eax,dword ptr [eax+4]
 005C6E45    push        eax
 005C6E46    call        GDI32.GetBrushOrgEx
 005C6E4B    push        4
 005C6E4D    mov         eax,dword ptr [ebp-8]
 005C6E50    mov         eax,dword ptr [eax+4]
 005C6E53    push        eax
 005C6E54    call        GDI32.SetStretchBltMode
 005C6E59    lea         eax,[ebp-1A]
 005C6E5C    push        eax
 005C6E5D    mov         eax,dword ptr [ebp-16]
 005C6E60    push        eax
 005C6E61    mov         eax,dword ptr [ebp-1A]
 005C6E64    push        eax
 005C6E65    mov         eax,dword ptr [ebp-8]
 005C6E68    mov         eax,dword ptr [eax+4]
 005C6E6B    push        eax
 005C6E6C    call        GDI32.SetBrushOrgEx
>005C6E71    jmp         005C6E8F
 005C6E73    mov         eax,dword ptr [ebp-4]
 005C6E76    call        005C7250
 005C6E7B    test        al,al
>005C6E7D    jne         005C6E8F
 005C6E7F    push        3
 005C6E81    mov         eax,dword ptr [ebp-8]
 005C6E84    call        TCanvas.GetHandle
 005C6E89    push        eax
 005C6E8A    call        GDI32.SetStretchBltMode
 005C6E8F    xor         eax,eax
 005C6E91    push        ebp
 005C6E92    push        5C7017
 005C6E97    push        dword ptr fs:[eax]
 005C6E9A    mov         dword ptr fs:[eax],esp
 005C6E9D    mov         eax,dword ptr [ebp-4]
 005C6EA0    mov         edx,dword ptr [eax]
 005C6EA2    call        dword ptr [edx+28];TBitmap.sub_005C3604
 005C6EA5    test        al,al
>005C6EA7    je          005C6EB1
 005C6EA9    mov         eax,dword ptr [ebp-4]
 005C6EAC    call        005C774C
 005C6EB1    mov         eax,dword ptr [ebp-4]
 005C6EB4    call        TBitmap.GetCanvas
 005C6EB9    mov         dl,byte ptr ds:[5C7024];0xF gvar_005C7024
 005C6EBF    call        005C1AEC
 005C6EC4    mov         eax,dword ptr [ebp-4]
 005C6EC7    mov         edx,dword ptr [eax]
 005C6EC9    call        dword ptr [edx+28];TBitmap.sub_005C3604
 005C6ECC    test        al,al
>005C6ECE    je          005C6F9A
 005C6ED4    xor         eax,eax
 005C6ED6    mov         dword ptr [ebp-28],eax
 005C6ED9    xor         eax,eax
 005C6EDB    mov         dword ptr [ebp-24],eax
 005C6EDE    xor         eax,eax
 005C6EE0    push        ebp
 005C6EE1    push        5C6F93
 005C6EE6    push        dword ptr fs:[eax]
 005C6EE9    mov         dword ptr fs:[eax],esp
 005C6EEC    push        0
 005C6EEE    call        GDI32.CreateCompatibleDC
 005C6EF3    call        005C1EEC
 005C6EF8    mov         dword ptr [ebp-24],eax
 005C6EFB    mov         eax,dword ptr [ebp-2C]
 005C6EFE    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C6F01    push        eax
 005C6F02    mov         eax,dword ptr [ebp-24]
 005C6F05    push        eax
 005C6F06    call        GDI32.SelectObject
 005C6F0B    mov         dword ptr [ebp-28],eax
 005C6F0E    mov         eax,dword ptr [ebp-0C]
 005C6F11    mov         eax,dword ptr [eax+8]
 005C6F14    mov         edx,dword ptr [ebp-0C]
 005C6F17    sub         eax,dword ptr [edx]
 005C6F19    push        eax
 005C6F1A    mov         eax,dword ptr [ebp-0C]
 005C6F1D    mov         eax,dword ptr [eax+0C]
 005C6F20    mov         edx,dword ptr [ebp-0C]
 005C6F23    sub         eax,dword ptr [edx+4]
 005C6F26    push        eax
 005C6F27    mov         eax,dword ptr [ebp-4]
 005C6F2A    call        TBitmap.GetCanvas
 005C6F2F    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C6F32    push        eax
 005C6F33    push        0
 005C6F35    push        0
 005C6F37    mov         eax,dword ptr [ebp-2C]
 005C6F3A    mov         eax,dword ptr [eax+1C]
 005C6F3D    push        eax
 005C6F3E    mov         eax,dword ptr [ebp-2C]
 005C6F41    mov         eax,dword ptr [eax+20]
 005C6F44    push        eax
 005C6F45    mov         eax,dword ptr [ebp-24]
 005C6F48    push        eax
 005C6F49    push        0
 005C6F4B    push        0
 005C6F4D    mov         ecx,dword ptr [ebp-0C]
 005C6F50    mov         ecx,dword ptr [ecx+4]
 005C6F53    mov         edx,dword ptr [ebp-0C]
 005C6F56    mov         edx,dword ptr [edx]
 005C6F58    mov         eax,dword ptr [ebp-8]
 005C6F5B    mov         eax,dword ptr [eax+4]
 005C6F5E    call        005C20F4
 005C6F63    xor         eax,eax
 005C6F65    pop         edx
 005C6F66    pop         ecx
 005C6F67    pop         ecx
 005C6F68    mov         dword ptr fs:[eax],edx
 005C6F6B    push        5C6FF1
 005C6F70    cmp         dword ptr [ebp-28],0
>005C6F74    je          005C6F83
 005C6F76    mov         eax,dword ptr [ebp-28]
 005C6F79    push        eax
 005C6F7A    mov         eax,dword ptr [ebp-24]
 005C6F7D    push        eax
 005C6F7E    call        GDI32.SelectObject
 005C6F83    cmp         dword ptr [ebp-24],0
>005C6F87    je          005C6F92
 005C6F89    mov         eax,dword ptr [ebp-24]
 005C6F8C    push        eax
 005C6F8D    call        GDI32.DeleteDC
 005C6F92    ret
>005C6F93    jmp         @HandleFinally
>005C6F98    jmp         005C6F70
 005C6F9A    mov         eax,dword ptr [ebp-8]
 005C6F9D    mov         eax,dword ptr [eax+20]
 005C6FA0    push        eax
 005C6FA1    mov         eax,dword ptr [ebp-2C]
 005C6FA4    mov         eax,dword ptr [eax+20]
 005C6FA7    push        eax
 005C6FA8    mov         eax,dword ptr [ebp-2C]
 005C6FAB    mov         eax,dword ptr [eax+1C]
 005C6FAE    push        eax
 005C6FAF    push        0
 005C6FB1    push        0
 005C6FB3    mov         eax,dword ptr [ebp-4]
 005C6FB6    call        TBitmap.GetCanvas
 005C6FBB    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C6FBE    push        eax
 005C6FBF    mov         eax,dword ptr [ebp-0C]
 005C6FC2    mov         eax,dword ptr [eax+0C]
 005C6FC5    mov         edx,dword ptr [ebp-0C]
 005C6FC8    sub         eax,dword ptr [edx+4]
 005C6FCB    push        eax
 005C6FCC    mov         eax,dword ptr [ebp-0C]
 005C6FCF    mov         eax,dword ptr [eax+8]
 005C6FD2    mov         edx,dword ptr [ebp-0C]
 005C6FD5    sub         eax,dword ptr [edx]
 005C6FD7    push        eax
 005C6FD8    mov         eax,dword ptr [ebp-0C]
 005C6FDB    mov         eax,dword ptr [eax+4]
 005C6FDE    push        eax
 005C6FDF    mov         eax,dword ptr [ebp-0C]
 005C6FE2    mov         eax,dword ptr [eax]
 005C6FE4    push        eax
 005C6FE5    mov         eax,dword ptr [ebp-8]
 005C6FE8    mov         eax,dword ptr [eax+4]
 005C6FEB    push        eax
 005C6FEC    call        GDI32.StretchBlt
 005C6FF1    xor         eax,eax
 005C6FF3    pop         edx
 005C6FF4    pop         ecx
 005C6FF5    pop         ecx
 005C6FF6    mov         dword ptr fs:[eax],edx
 005C6FF9    push        5C701E
 005C6FFE    cmp         byte ptr [ebp-11],0
>005C7002    je          005C7016
 005C7004    push        0FF
 005C7006    mov         eax,dword ptr [ebp-10]
 005C7009    push        eax
 005C700A    mov         eax,dword ptr [ebp-8]
 005C700D    mov         eax,dword ptr [eax+4]
 005C7010    push        eax
 005C7011    call        GDI32.SelectPalette
 005C7016    ret
>005C7017    jmp         @HandleFinally
>005C701C    jmp         005C6FFE
 005C701E    pop         ebx
 005C701F    mov         esp,ebp
 005C7021    pop         ebp
 005C7022    ret
end;*}

//005C7028
{*procedure sub_005C7028(?:?);
begin
 005C7028    push        ebp
 005C7029    mov         ebp,esp
 005C702B    add         esp,0FFFFFFF4
 005C702E    mov         dword ptr [ebp-4],eax
 005C7031    mov         eax,dword ptr [ebp-4]
 005C7034    mov         eax,dword ptr [eax+28]
 005C7037    mov         dword ptr [ebp-0C],eax
 005C703A    mov         eax,dword ptr [ebp-0C]
 005C703D    cmp         dword ptr [eax+4],1
>005C7041    jle         005C707E
 005C7043    mov         eax,dword ptr [ebp-4]
 005C7046    call        005C757C
 005C704B    mov         eax,dword ptr [ebp-0C]
 005C704E    cmp         byte ptr [eax+71],0
>005C7052    je          005C705B
 005C7054    xor         eax,eax
 005C7056    mov         dword ptr [ebp-8],eax
>005C7059    jmp         005C7064
 005C705B    mov         eax,dword ptr [ebp-0C]
 005C705E    mov         eax,dword ptr [eax+10]
 005C7061    mov         dword ptr [ebp-8],eax
 005C7064    mov         eax,dword ptr [ebp-0C]
 005C7067    add         eax,18
 005C706A    push        eax
 005C706B    mov         ecx,dword ptr [ebp-8]
 005C706E    mov         eax,dword ptr [ebp-0C]
 005C7071    mov         edx,dword ptr [eax+8]
 005C7074    mov         eax,dword ptr [ebp-4]
 005C7077    call        005C6BC8
>005C707C    jmp         005C70C3
 005C707E    mov         eax,dword ptr [ebp-0C]
 005C7081    cmp         dword ptr [eax+8],0
>005C7085    je          005C70C3
 005C7087    mov         eax,dword ptr [ebp-0C]
 005C708A    mov         eax,dword ptr [eax+8]
 005C708D    mov         edx,dword ptr [ebp-0C]
 005C7090    cmp         eax,dword ptr [edx+14]
>005C7093    je          005C70C3
 005C7095    mov         eax,dword ptr [ebp-0C]
 005C7098    cmp         dword ptr [eax+14],0
>005C709C    je          005C70B3
 005C709E    mov         eax,dword ptr [ebp-0C]
 005C70A1    mov         eax,dword ptr [eax+14]
 005C70A4    push        eax
 005C70A5    call        GDI32.DeleteObject
 005C70AA    test        eax,eax
>005C70AC    jne         005C70B3
 005C70AE    call        005C1E40
 005C70B3    mov         eax,dword ptr [ebp-0C]
 005C70B6    xor         edx,edx
 005C70B8    mov         dword ptr [eax+14],edx
 005C70BB    mov         eax,dword ptr [ebp-0C]
 005C70BE    xor         edx,edx
 005C70C0    mov         dword ptr [eax+2C],edx
 005C70C3    mov         esp,ebp
 005C70C5    pop         ebp
 005C70C6    ret
end;*}

//005C70C8
{*function TBitmap.GetEmpty:?;
begin
 005C70C8    push        ebp
 005C70C9    mov         ebp,esp
 005C70CB    add         esp,0FFFFFFF4
 005C70CE    mov         dword ptr [ebp-4],eax
 005C70D1    mov         eax,dword ptr [ebp-4]
 005C70D4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C70D7    mov         dword ptr [ebp-0C],eax
 005C70DA    mov         eax,dword ptr [ebp-0C]
 005C70DD    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C70E1    jne         005C70F5
 005C70E3    mov         eax,dword ptr [ebp-0C]
 005C70E6    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C70EA    jne         005C70F5
 005C70EC    mov         eax,dword ptr [ebp-0C]
 005C70EF    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>005C70F3    je          005C70F9
 005C70F5    xor         eax,eax
>005C70F7    jmp         005C70FB
 005C70F9    mov         al,1
 005C70FB    mov         byte ptr [ebp-5],al
 005C70FE    mov         al,byte ptr [ebp-5]
 005C7101    mov         esp,ebp
 005C7103    pop         ebp
 005C7104    ret
end;*}

//005C7108
function TBitmap.GetCanvas:TCanvas;
begin
{*
 005C7108    push        ebp
 005C7109    mov         ebp,esp
 005C710B    add         esp,0FFFFFFF8
 005C710E    mov         dword ptr [ebp-4],eax
 005C7111    mov         eax,dword ptr [ebp-4]
 005C7114    cmp         dword ptr [eax+2C],0
>005C7118    jne         005C7167
 005C711A    mov         eax,dword ptr [ebp-4]
 005C711D    call        005C757C
 005C7122    mov         eax,dword ptr [ebp-4]
 005C7125    cmp         dword ptr [eax+2C],0
>005C7129    jne         005C7167
 005C712B    mov         ecx,dword ptr [ebp-4]
 005C712E    mov         dl,1
 005C7130    mov         eax,[005C5A40];TBitmapCanvas
 005C7135    call        005C5C24
 005C713A    mov         edx,dword ptr [ebp-4]
 005C713D    mov         dword ptr [edx+2C],eax
 005C7140    mov         eax,dword ptr [ebp-4]
 005C7143    mov         eax,dword ptr [eax+2C]
 005C7146    mov         edx,dword ptr [ebp-4]
 005C7149    mov         dword ptr [eax+2C],edx
 005C714C    mov         edx,dword ptr [edx]
 005C714E    mov         edx,dword ptr [edx+10]
 005C7151    mov         dword ptr [eax+28],edx
 005C7154    mov         eax,dword ptr [ebp-4]
 005C7157    mov         eax,dword ptr [eax+2C]
 005C715A    mov         edx,dword ptr [ebp-4]
 005C715D    mov         dword ptr [eax+34],edx
 005C7160    mov         dword ptr [eax+30],5C6C9C;sub_005C6C9C
 005C7167    mov         eax,dword ptr [ebp-4]
 005C716A    mov         eax,dword ptr [eax+2C]
 005C716D    mov         dword ptr [ebp-8],eax
 005C7170    mov         eax,dword ptr [ebp-8]
 005C7173    pop         ecx
 005C7174    pop         ecx
 005C7175    pop         ebp
 005C7176    ret
*}
end;

//005C7178
{*function sub_005C7178:?;
begin
 005C7178    push        ebp
 005C7179    mov         ebp,esp
 005C717B    add         esp,0FFFFFFF8
 005C717E    mov         dword ptr [ebp-4],eax
 005C7181    mov         eax,dword ptr [ebp-4]
 005C7184    call        005C755C
 005C7189    mov         eax,dword ptr [ebp-4]
 005C718C    call        005C757C
 005C7191    mov         edx,dword ptr [ebp-4]
 005C7194    mov         eax,dword ptr [ebp-4]
 005C7197    call        005C6C9C
 005C719C    mov         eax,dword ptr [ebp-4]
 005C719F    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C71A2    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C71A5    mov         dword ptr [ebp-8],eax
 005C71A8    mov         eax,dword ptr [ebp-8]
 005C71AB    pop         ecx
 005C71AC    pop         ecx
 005C71AD    pop         ebp
 005C71AE    ret
end;*}

//005C71B0
{*function sub_005C71B0(?:TBitmap):?;
begin
 005C71B0    push        ebp
 005C71B1    mov         ebp,esp
 005C71B3    add         esp,0FFFFFFF4
 005C71B6    mov         dword ptr [ebp-4],eax
 005C71B9    mov         eax,dword ptr [ebp-4]
 005C71BC    mov         eax,dword ptr [eax+28]
 005C71BF    mov         dword ptr [ebp-0C],eax
 005C71C2    mov         eax,dword ptr [ebp-0C]
 005C71C5    cmp         dword ptr [eax+8],0
>005C71C9    je          005C71D9
 005C71CB    mov         eax,dword ptr [ebp-0C]
 005C71CE    mov         eax,dword ptr [eax+8]
 005C71D1    mov         edx,dword ptr [ebp-0C]
 005C71D4    cmp         eax,dword ptr [edx+14]
>005C71D7    jne         005C71FD
 005C71D9    mov         eax,dword ptr [ebp-0C]
 005C71DC    cmp         dword ptr [eax+14],0
>005C71E0    jne         005C71F7
 005C71E2    mov         eax,dword ptr [ebp-0C]
 005C71E5    cmp         dword ptr [eax+30],0
>005C71E9    jne         005C71F1
 005C71EB    mov         byte ptr [ebp-5],1
>005C71EF    jmp         005C7201
 005C71F1    mov         byte ptr [ebp-5],0
>005C71F5    jmp         005C7201
 005C71F7    mov         byte ptr [ebp-5],0
>005C71FB    jmp         005C7201
 005C71FD    mov         byte ptr [ebp-5],1
 005C7201    mov         al,byte ptr [ebp-5]
 005C7204    mov         esp,ebp
 005C7206    pop         ebp
 005C7207    ret
end;*}

//005C7208
{*function TBitmap.GetHeight:?;
begin
 005C7208    push        ebp
 005C7209    mov         ebp,esp
 005C720B    add         esp,0FFFFFFF8
 005C720E    mov         dword ptr [ebp-4],eax
 005C7211    mov         eax,dword ptr [ebp-4]
 005C7214    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7217    mov         eax,dword ptr [eax+20]
 005C721A    cdq
 005C721B    xor         eax,edx
 005C721D    sub         eax,edx
 005C721F    mov         dword ptr [ebp-8],eax
 005C7222    mov         eax,dword ptr [ebp-8]
 005C7225    pop         ecx
 005C7226    pop         ecx
 005C7227    pop         ebp
 005C7228    ret
end;*}

//005C722C
{*function sub_005C722C:?;
begin
 005C722C    push        ebp
 005C722D    mov         ebp,esp
 005C722F    add         esp,0FFFFFFF8
 005C7232    mov         dword ptr [ebp-4],eax
 005C7235    mov         eax,dword ptr [ebp-4]
 005C7238    call        005C774C
 005C723D    mov         eax,dword ptr [ebp-4]
 005C7240    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7243    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C7246    mov         dword ptr [ebp-8],eax
 005C7249    mov         eax,dword ptr [ebp-8]
 005C724C    pop         ecx
 005C724D    pop         ecx
 005C724E    pop         ebp
 005C724F    ret
end;*}

//005C7250
{*function sub_005C7250(?:TBitmap):?;
begin
 005C7250    push        ebp
 005C7251    mov         ebp,esp
 005C7253    add         esp,0FFFFFFF4
 005C7256    mov         dword ptr [ebp-4],eax
 005C7259    mov         eax,dword ptr [ebp-4]
 005C725C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C725F    add         eax,18;TBitmapImage.FDIB:TDIBSection
 005C7262    mov         dword ptr [ebp-0C],eax
 005C7265    mov         eax,dword ptr [ebp-0C]
 005C7268    cmp         word ptr [eax+10],1
>005C726D    jne         005C7279
 005C726F    mov         eax,dword ptr [ebp-0C]
 005C7272    cmp         word ptr [eax+12],1
>005C7277    je          005C727D
 005C7279    xor         eax,eax
>005C727B    jmp         005C727F
 005C727D    mov         al,1
 005C727F    mov         byte ptr [ebp-5],al
 005C7282    mov         al,byte ptr [ebp-5]
 005C7285    mov         esp,ebp
 005C7287    pop         ebp
 005C7288    ret
end;*}

//005C728C
{*function sub_005C728C:?;
begin
 005C728C    push        ebp
 005C728D    mov         ebp,esp
 005C728F    add         esp,0FFFFFFF8
 005C7292    mov         dword ptr [ebp-4],eax
 005C7295    mov         eax,dword ptr [ebp-4]
 005C7298    call        005C77DC
 005C729D    mov         eax,dword ptr [ebp-4]
 005C72A0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C72A3    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C72A6    mov         dword ptr [ebp-8],eax
 005C72A9    mov         eax,dword ptr [ebp-8]
 005C72AC    pop         ecx
 005C72AD    pop         ecx
 005C72AE    pop         ebp
 005C72AF    ret
end;*}

//005C72B0
function TBitmap.GetPixelFormat:TPixelFormat;
begin
{*
 005C72B0    push        ebp
 005C72B1    mov         ebp,esp
 005C72B3    add         esp,0FFFFFFF0
 005C72B6    mov         dword ptr [ebp-4],eax
 005C72B9    mov         byte ptr [ebp-5],8
 005C72BD    mov         eax,dword ptr [ebp-4]
 005C72C0    call        005C71B0
 005C72C5    cmp         al,1
>005C72C7    jne         005C72D2
 005C72C9    mov         byte ptr [ebp-5],0
>005C72CD    jmp         005C735F
 005C72D2    mov         eax,dword ptr [ebp-4]
 005C72D5    mov         eax,dword ptr [eax+28]
 005C72D8    add         eax,18
 005C72DB    mov         dword ptr [ebp-0C],eax
 005C72DE    mov         eax,dword ptr [ebp-0C]
 005C72E1    add         eax,18
 005C72E4    mov         dword ptr [ebp-10],eax
 005C72E7    mov         eax,dword ptr [ebp-10]
 005C72EA    movzx       eax,word ptr [eax+0E]
 005C72EE    cmp         eax,10
>005C72F1    jg          005C7304
>005C72F3    je          005C7322
 005C72F5    dec         eax
>005C72F6    je          005C7310
 005C72F8    sub         eax,3
>005C72FB    je          005C7316
 005C72FD    sub         eax,4
>005C7300    je          005C731C
>005C7302    jmp         005C735F
 005C7304    sub         eax,18
>005C7307    je          005C734C
 005C7309    sub         eax,8
>005C730C    je          005C7352
>005C730E    jmp         005C735F
 005C7310    mov         byte ptr [ebp-5],1
>005C7314    jmp         005C735F
 005C7316    mov         byte ptr [ebp-5],2
>005C731A    jmp         005C735F
 005C731C    mov         byte ptr [ebp-5],3
>005C7320    jmp         005C735F
 005C7322    mov         eax,dword ptr [ebp-10]
 005C7325    mov         eax,dword ptr [eax+10]
 005C7328    sub         eax,1
>005C732B    jb          005C7334
 005C732D    sub         eax,2
>005C7330    je          005C733A
>005C7332    jmp         005C735F
 005C7334    mov         byte ptr [ebp-5],4
>005C7338    jmp         005C735F
 005C733A    mov         eax,dword ptr [ebp-0C]
 005C733D    cmp         dword ptr [eax+44],7E0
>005C7344    jne         005C735F
 005C7346    mov         byte ptr [ebp-5],5
>005C734A    jmp         005C735F
 005C734C    mov         byte ptr [ebp-5],6
>005C7350    jmp         005C735F
 005C7352    mov         eax,dword ptr [ebp-10]
 005C7355    cmp         dword ptr [eax+10],0
>005C7359    jne         005C735F
 005C735B    mov         byte ptr [ebp-5],7
 005C735F    mov         al,byte ptr [ebp-5]
 005C7362    mov         esp,ebp
 005C7364    pop         ebp
 005C7365    ret
*}
end;

//005C7368
function TBitmap.GetScanline(Row:Integer):Pointer;
begin
{*
 005C7368    push        ebp
 005C7369    mov         ebp,esp
 005C736B    add         esp,0FFFFFFE8
 005C736E    mov         dword ptr [ebp-8],edx
 005C7371    mov         dword ptr [ebp-4],eax
 005C7374    mov         edx,dword ptr [ebp-4]
 005C7377    mov         eax,dword ptr [ebp-4]
 005C737A    call        005C6C9C
 005C737F    mov         eax,dword ptr [ebp-4]
 005C7382    mov         eax,dword ptr [eax+28]
 005C7385    add         eax,18
 005C7388    mov         dword ptr [ebp-10],eax
 005C738B    mov         eax,dword ptr [ebp-10]
 005C738E    mov         dword ptr [ebp-14],eax
 005C7391    mov         eax,dword ptr [ebp-10]
 005C7394    add         eax,18
 005C7397    mov         dword ptr [ebp-18],eax
 005C739A    cmp         dword ptr [ebp-8],0
>005C739E    jl          005C73AB
 005C73A0    mov         eax,dword ptr [ebp-14]
 005C73A3    mov         eax,dword ptr [eax+8]
 005C73A6    cmp         eax,dword ptr [ebp-8]
>005C73A9    jg          005C73B5
 005C73AB    mov         eax,[006E9DFC]
 005C73B0    call        005C1D88
 005C73B5    mov         eax,dword ptr [ebp-4]
 005C73B8    call        005C7488
 005C73BD    call        GDI32.GdiFlush
 005C73C2    mov         eax,dword ptr [ebp-18]
 005C73C5    cmp         dword ptr [eax+8],0
>005C73C9    jle         005C73D8
 005C73CB    mov         eax,dword ptr [ebp-18]
 005C73CE    mov         eax,dword ptr [eax+8]
 005C73D1    sub         eax,dword ptr [ebp-8]
 005C73D4    dec         eax
 005C73D5    mov         dword ptr [ebp-8],eax
 005C73D8    mov         eax,dword ptr [ebp-18]
 005C73DB    movzx       edx,word ptr [eax+0E]
 005C73DF    mov         ecx,20
 005C73E4    mov         eax,dword ptr [ebp-18]
 005C73E7    mov         eax,dword ptr [eax+4]
 005C73EA    call        005C20B8
 005C73EF    imul        dword ptr [ebp-8]
 005C73F2    mov         edx,dword ptr [ebp-14]
 005C73F5    add         eax,dword ptr [edx+14]
 005C73F8    mov         dword ptr [ebp-0C],eax
 005C73FB    mov         eax,dword ptr [ebp-0C]
 005C73FE    mov         esp,ebp
 005C7400    pop         ebp
 005C7401    ret
*}
end;

//005C7404
{*function sub_005C7404(?:TBitmap):?;
begin
 005C7404    push        ebp
 005C7405    mov         ebp,esp
 005C7407    add         esp,0FFFFFFF8
 005C740A    mov         dword ptr [ebp-4],eax
 005C740D    mov         eax,dword ptr [ebp-4]
 005C7410    cmp         dword ptr [eax+34],20000000
>005C7417    jne         005C744D
 005C7419    mov         eax,dword ptr [ebp-4]
 005C741C    call        005C7250
 005C7421    test        al,al
>005C7423    je          005C742E
 005C7425    mov         dword ptr [ebp-8],0FFFFFF
>005C742C    jmp         005C745B
 005C742E    mov         eax,dword ptr [ebp-4]
 005C7431    mov         edx,dword ptr [eax]
 005C7433    call        dword ptr [edx+20]
 005C7436    dec         eax
 005C7437    push        eax
 005C7438    mov         eax,dword ptr [ebp-4]
 005C743B    call        TBitmap.GetCanvas
 005C7440    xor         edx,edx
 005C7442    pop         ecx
 005C7443    call        005C18F0
 005C7448    mov         dword ptr [ebp-8],eax
>005C744B    jmp         005C745B
 005C744D    mov         eax,dword ptr [ebp-4]
 005C7450    mov         eax,dword ptr [eax+34]
 005C7453    call        ColorToRGB
 005C7458    mov         dword ptr [ebp-8],eax
 005C745B    or          dword ptr [ebp-8],2000000
 005C7462    mov         eax,dword ptr [ebp-8]
 005C7465    pop         ecx
 005C7466    pop         ecx
 005C7467    pop         ebp
 005C7468    ret
end;*}

//005C746C
{*function TBitmap.GetWidth:?;
begin
 005C746C    push        ebp
 005C746D    mov         ebp,esp
 005C746F    add         esp,0FFFFFFF8
 005C7472    mov         dword ptr [ebp-4],eax
 005C7475    mov         eax,dword ptr [ebp-4]
 005C7478    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C747B    mov         eax,dword ptr [eax+1C]
 005C747E    mov         dword ptr [ebp-8],eax
 005C7481    mov         eax,dword ptr [ebp-8]
 005C7484    pop         ecx
 005C7485    pop         ecx
 005C7486    pop         ebp
 005C7487    ret
end;*}

//005C7488
procedure sub_005C7488(?:TBitmap);
begin
{*
 005C7488    push        ebp
 005C7489    mov         ebp,esp
 005C748B    add         esp,0FFFFFFEC
 005C748E    mov         dword ptr [ebp-4],eax
 005C7491    mov         eax,dword ptr [ebp-4]
 005C7494    mov         eax,dword ptr [eax+28]
 005C7497    mov         dword ptr [ebp-8],eax
 005C749A    mov         eax,dword ptr [ebp-8]
 005C749D    cmp         dword ptr [eax+8],0
>005C74A1    je          005C7557
 005C74A7    mov         eax,dword ptr [ebp-8]
 005C74AA    cmp         dword ptr [eax+14],0
>005C74AE    jne         005C7557
 005C74B4    mov         eax,dword ptr [ebp-4]
 005C74B7    call        005C77DC
 005C74BC    mov         eax,dword ptr [ebp-8]
 005C74BF    cmp         dword ptr [eax+30],0
>005C74C3    jne         005C7531
 005C74C5    mov         eax,dword ptr [ebp-8]
 005C74C8    add         eax,18
 005C74CB    push        eax
 005C74CC    push        54
 005C74CE    mov         eax,dword ptr [ebp-8]
 005C74D1    mov         eax,dword ptr [eax+8]
 005C74D4    push        eax
 005C74D5    call        GDI32.GetObjectA
 005C74DA    mov         eax,dword ptr [ebp-8]
 005C74DD    add         eax,18
 005C74E0    mov         dword ptr [ebp-0C],eax
 005C74E3    mov         eax,dword ptr [ebp-0C]
 005C74E6    mov         dword ptr [ebp-10],eax
 005C74E9    mov         eax,dword ptr [ebp-0C]
 005C74EC    add         eax,18
 005C74EF    mov         dword ptr [ebp-14],eax
 005C74F2    mov         eax,dword ptr [ebp-14]
 005C74F5    mov         dword ptr [eax],28
 005C74FB    mov         eax,dword ptr [ebp-10]
 005C74FE    mov         eax,dword ptr [eax+4]
 005C7501    mov         edx,dword ptr [ebp-14]
 005C7504    mov         dword ptr [edx+4],eax
 005C7507    mov         eax,dword ptr [ebp-10]
 005C750A    mov         eax,dword ptr [eax+8]
 005C750D    mov         edx,dword ptr [ebp-14]
 005C7510    mov         dword ptr [edx+8],eax
 005C7513    mov         eax,dword ptr [ebp-14]
 005C7516    mov         word ptr [eax+0C],1
 005C751C    mov         eax,dword ptr [ebp-10]
 005C751F    mov         ax,word ptr [eax+10]
 005C7523    mov         edx,dword ptr [ebp-10]
 005C7526    imul        word ptr [edx+12]
 005C752A    mov         edx,dword ptr [ebp-14]
 005C752D    mov         word ptr [edx+0E],ax
 005C7531    mov         eax,dword ptr [ebp-8]
 005C7534    add         eax,18
 005C7537    push        eax
 005C7538    push        0
 005C753A    mov         eax,dword ptr [ebp-8]
 005C753D    mov         ecx,dword ptr [eax+10]
 005C7540    mov         eax,dword ptr [ebp-8]
 005C7543    mov         edx,dword ptr [eax+10]
 005C7546    mov         eax,dword ptr [ebp-8]
 005C7549    mov         eax,dword ptr [eax+8]
 005C754C    call        005C60E8
 005C7551    mov         edx,dword ptr [ebp-8]
 005C7554    mov         dword ptr [edx+14],eax
 005C7557    mov         esp,ebp
 005C7559    pop         ebp
 005C755A    ret
*}
end;

//005C755C
procedure sub_005C755C(?:TBitmap);
begin
{*
 005C755C    push        ebp
 005C755D    mov         ebp,esp
 005C755F    push        ecx
 005C7560    mov         dword ptr [ebp-4],eax
 005C7563    mov         eax,dword ptr [ebp-4]
 005C7566    cmp         dword ptr [eax+2C],0;TBitmap.FCanvas:TCanvas
>005C756A    je          005C7577
 005C756C    mov         eax,dword ptr [ebp-4]
 005C756F    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C7572    call        TBitmapCanvas.FreeContext
 005C7577    pop         ecx
 005C7578    pop         ebp
 005C7579    ret
*}
end;

//005C757C
procedure sub_005C757C(?:TBitmap);
begin
{*
 005C757C    push        ebp
 005C757D    mov         ebp,esp
 005C757F    add         esp,0FFFFFFEC
 005C7582    mov         dword ptr [ebp-4],eax
 005C7585    mov         eax,dword ptr [ebp-4]
 005C7588    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C758B    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C758F    jne         005C761C
 005C7595    mov         eax,dword ptr [ebp-4]
 005C7598    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C759B    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C759F    jne         005C761C
 005C75A1    mov         eax,dword ptr [ebp-4]
 005C75A4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C75A7    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>005C75AB    je          005C761C
 005C75AD    push        0
 005C75AF    push        0
 005C75B1    mov         eax,dword ptr [ebp-4]
 005C75B4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C75B7    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 005C75BA    call        TStream.SetPosition
 005C75BF    mov         eax,dword ptr [ebp-4]
 005C75C2    mov         edx,dword ptr [eax+10];TBitmap.FOnChange:TNotifyEvent
 005C75C5    mov         dword ptr [ebp-10],edx
 005C75C8    mov         edx,dword ptr [eax+14];TBitmap.?f14:TPicture
 005C75CB    mov         dword ptr [ebp-0C],edx
 005C75CE    xor         eax,eax
 005C75D0    push        ebp
 005C75D1    push        5C7615
 005C75D6    push        dword ptr fs:[eax]
 005C75D9    mov         dword ptr fs:[eax],esp
 005C75DC    mov         eax,dword ptr [ebp-4]
 005C75DF    xor         edx,edx
 005C75E1    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 005C75E4    mov         dword ptr [eax+14],edx;TBitmap.?f14:TPicture
 005C75E7    mov         eax,dword ptr [ebp-4]
 005C75EA    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C75ED    mov         edx,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 005C75F0    mov         eax,dword ptr [ebp-4]
 005C75F3    mov         ecx,dword ptr [eax]
 005C75F5    call        dword ptr [ecx+54];TBitmap.LoadFromStream
 005C75F8    xor         eax,eax
 005C75FA    pop         edx
 005C75FB    pop         ecx
 005C75FC    pop         ecx
 005C75FD    mov         dword ptr fs:[eax],edx
 005C7600    push        5C761C
 005C7605    mov         eax,dword ptr [ebp-4]
 005C7608    mov         edx,dword ptr [ebp-10]
 005C760B    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 005C760E    mov         edx,dword ptr [ebp-0C]
 005C7611    mov         dword ptr [eax+14],edx;TBitmap.?f14:TPicture
 005C7614    ret
>005C7615    jmp         @HandleFinally
>005C761A    jmp         005C7605
 005C761C    mov         eax,dword ptr [ebp-4]
 005C761F    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7622    mov         dword ptr [ebp-14],eax
 005C7625    mov         eax,dword ptr [ebp-14]
 005C7628    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C762C    jne         005C763A
 005C762E    mov         eax,dword ptr [ebp-14]
 005C7631    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C7634    mov         edx,dword ptr [ebp-14]
 005C7637    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
 005C763A    mov         esp,ebp
 005C763C    pop         ebp
 005C763D    ret
*}
end;

//005C7640
{*procedure sub_005C7640(?:TBitmap; ?:?);
begin
 005C7640    push        ebp
 005C7641    mov         ebp,esp
 005C7643    add         esp,0FFFFFF9C
 005C7646    push        ebx
 005C7647    push        esi
 005C7648    push        edi
 005C7649    mov         dword ptr [ebp-8],edx
 005C764C    mov         dword ptr [ebp-4],eax
 005C764F    xor         eax,eax
 005C7651    mov         dword ptr [ebp-0C],eax
 005C7654    xor         eax,eax
 005C7656    mov         dword ptr [ebp-10],eax
 005C7659    xor         eax,eax
 005C765B    push        ebp
 005C765C    push        5C7711
 005C7661    push        dword ptr fs:[eax]
 005C7664    mov         dword ptr fs:[eax],esp
 005C7667    mov         eax,dword ptr [ebp-4]
 005C766A    call        005C755C
 005C766F    mov         eax,dword ptr [ebp-4]
 005C7672    call        005C757C
 005C7677    mov         eax,dword ptr [ebp-8]
 005C767A    call        ColorToRGB
 005C767F    mov         ecx,eax
 005C7681    mov         eax,dword ptr [ebp-4]
 005C7684    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7687    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C768A    mov         eax,dword ptr [ebp-4]
 005C768D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7690    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C7693    call        005C67D0
 005C7698    mov         dword ptr [ebp-0C],eax
 005C769B    lea         eax,[ebp-64]
 005C769E    xor         ecx,ecx
 005C76A0    mov         edx,54
 005C76A5    call        @FillChar
 005C76AA    lea         eax,[ebp-64]
 005C76AD    push        eax
 005C76AE    push        54
 005C76B0    mov         eax,dword ptr [ebp-0C]
 005C76B3    push        eax
 005C76B4    call        GDI32.GetObjectA
 005C76B9    mov         eax,dword ptr [ebp-4]
 005C76BC    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C76BF    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C76C2    cmp         eax,dword ptr ds:[6ECD1C];0x0 SystemPalette16:HPALETTE
>005C76C8    jne         005C76D8
 005C76CA    mov         eax,dword ptr [ebp-4]
 005C76CD    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C76D0    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C76D3    mov         dword ptr [ebp-10],eax
>005C76D6    jmp         005C76E9
 005C76D8    mov         eax,dword ptr [ebp-4]
 005C76DB    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C76DE    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C76E1    call        CopyPalette
 005C76E6    mov         dword ptr [ebp-10],eax
 005C76E9    lea         eax,[ebp-64]
 005C76EC    push        eax
 005C76ED    mov         eax,dword ptr [ebp-4]
 005C76F0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C76F3    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 005C76F6    push        eax
 005C76F7    push        0
 005C76F9    mov         ecx,dword ptr [ebp-10]
 005C76FC    mov         edx,dword ptr [ebp-0C]
 005C76FF    mov         eax,dword ptr [ebp-4]
 005C7702    call        005C7A24
 005C7707    xor         eax,eax
 005C7709    pop         edx
 005C770A    pop         ecx
 005C770B    pop         ecx
 005C770C    mov         dword ptr fs:[eax],edx
>005C770F    jmp         005C7737
>005C7711    jmp         @HandleAnyException
 005C7716    mov         eax,dword ptr [ebp-10]
 005C7719    call        005BEFF0
 005C771E    cmp         dword ptr [ebp-0C],0
>005C7722    je          005C772D
 005C7724    mov         eax,dword ptr [ebp-0C]
 005C7727    push        eax
 005C7728    call        GDI32.DeleteObject
 005C772D    call        @RaiseAgain
 005C7732    call        @DoneExcept
 005C7737    mov         edx,dword ptr [ebp-4]
 005C773A    mov         eax,dword ptr [ebp-4]
 005C773D    mov         ecx,dword ptr [eax]
 005C773F    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C7742    pop         edi
 005C7743    pop         esi
 005C7744    pop         ebx
 005C7745    mov         esp,ebp
 005C7747    pop         ebp
 005C7748    ret
end;*}

//005C774C
procedure sub_005C774C(?:TBitmap);
begin
{*
 005C774C    push        ebp
 005C774D    mov         ebp,esp
 005C774F    add         esp,0FFFFFFF8
 005C7752    mov         dword ptr [ebp-4],eax
 005C7755    mov         eax,dword ptr [ebp-4]
 005C7758    cmp         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
>005C775C    je          005C7767
 005C775E    mov         eax,dword ptr [ebp-4]
 005C7761    cmp         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
>005C7765    jne         005C77D7
 005C7767    mov         eax,dword ptr [ebp-4]
 005C776A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C776D    mov         dword ptr [ebp-8],eax
 005C7770    mov         eax,dword ptr [ebp-8]
 005C7773    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>005C7777    je          005C7798
 005C7779    mov         eax,dword ptr [ebp-8]
 005C777C    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C777F    call        005C5B88
 005C7784    mov         eax,dword ptr [ebp-8]
 005C7787    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 005C778A    push        eax
 005C778B    call        GDI32.DeleteObject
 005C7790    mov         eax,dword ptr [ebp-8]
 005C7793    xor         edx,edx
 005C7795    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 005C7798    mov         eax,dword ptr [ebp-4]
 005C779B    call        005C755C
 005C77A0    mov         eax,dword ptr [ebp-4]
 005C77A3    call        005C757C
 005C77A8    mov         eax,dword ptr [ebp-4]
 005C77AB    call        005C7404
 005C77B0    mov         ecx,eax
 005C77B2    mov         eax,dword ptr [ebp-8]
 005C77B5    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C77B8    mov         eax,dword ptr [ebp-8]
 005C77BB    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C77BE    call        005C67D0
 005C77C3    mov         edx,dword ptr [ebp-8]
 005C77C6    mov         dword ptr [edx+0C],eax;TBitmapImage.FMaskHandle:HBITMAP
 005C77C9    mov         eax,dword ptr [ebp-4]
 005C77CC    mov         byte ptr [eax+32],1;TBitmap.FMaskValid:Boolean
 005C77D0    mov         eax,dword ptr [ebp-4]
 005C77D3    mov         byte ptr [eax+31],1;TBitmap.FMaskBitsValid:Boolean
 005C77D7    pop         ecx
 005C77D8    pop         ecx
 005C77D9    pop         ebp
 005C77DA    ret
*}
end;

//005C77DC
procedure sub_005C77DC(?:TBitmap);
begin
{*
 005C77DC    push        ebp
 005C77DD    mov         ebp,esp
 005C77DF    add         esp,0FFFFFFF4
 005C77E2    push        ebx
 005C77E3    mov         dword ptr [ebp-4],eax
 005C77E6    mov         eax,dword ptr [ebp-4]
 005C77E9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C77EC    mov         dword ptr [ebp-0C],eax
 005C77EF    mov         eax,dword ptr [ebp-4]
 005C77F2    cmp         byte ptr [eax+30],0;TBitmap.FIgnorePalette:Boolean
>005C77F6    jne         005C78E5
 005C77FC    mov         eax,dword ptr [ebp-0C]
 005C77FF    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C7803    jne         005C78E5
 005C7809    mov         eax,dword ptr [ebp-0C]
 005C780C    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C7810    je          005C78E5
 005C7816    mov         eax,dword ptr [ebp-0C]
 005C7819    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C781C    mov         edx,dword ptr [ebp-0C]
 005C781F    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>005C7822    jne         005C782F
 005C7824    mov         eax,dword ptr [ebp-0C]
 005C7827    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C782A    call        005C5B88
 005C782F    mov         eax,dword ptr [ebp-0C]
 005C7832    mov         cx,word ptr [eax+3E]
 005C7836    mov         eax,1
 005C783B    shl         eax,cl
 005C783D    mov         ecx,eax
 005C783F    xor         edx,edx
 005C7841    mov         eax,dword ptr [ebp-0C]
 005C7844    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C7847    call        005C2710
 005C784C    mov         edx,dword ptr [ebp-0C]
 005C784F    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 005C7852    mov         eax,dword ptr [ebp-0C]
 005C7855    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C7859    jne         005C78E5
 005C785F    push        0
 005C7861    call        USER32.GetDC
 005C7866    call        005C1EEC
 005C786B    mov         dword ptr [ebp-8],eax
 005C786E    mov         eax,dword ptr [ebp-0C]
 005C7871    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>005C7875    jne         005C78AA
 005C7877    push        0C
 005C7879    mov         eax,dword ptr [ebp-8]
 005C787C    push        eax
 005C787D    call        GDI32.GetDeviceCaps
 005C7882    mov         ebx,eax
 005C7884    push        0E
 005C7886    mov         eax,dword ptr [ebp-8]
 005C7889    push        eax
 005C788A    call        GDI32.GetDeviceCaps
 005C788F    imul        ebx,eax
 005C7892    mov         eax,dword ptr [ebp-0C]
 005C7895    movzx       eax,word ptr [eax+2A]
 005C7899    mov         edx,dword ptr [ebp-0C]
 005C789C    movzx       edx,word ptr [edx+28]
 005C78A0    imul        edx
 005C78A2    cmp         ebx,eax
>005C78A4    jl          005C78AA
 005C78A6    xor         eax,eax
>005C78A8    jmp         005C78AC
 005C78AA    mov         al,1
 005C78AC    mov         edx,dword ptr [ebp-0C]
 005C78AF    mov         byte ptr [edx+71],al;TBitmapImage.FHalftone:Boolean
 005C78B2    mov         eax,dword ptr [ebp-0C]
 005C78B5    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>005C78B9    je          005C78CA
 005C78BB    mov         eax,dword ptr [ebp-8]
 005C78BE    push        eax
 005C78BF    call        GDI32.CreateHalftonePalette
 005C78C4    mov         edx,dword ptr [ebp-0C]
 005C78C7    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 005C78CA    mov         eax,dword ptr [ebp-8]
 005C78CD    push        eax
 005C78CE    push        0
 005C78D0    call        USER32.ReleaseDC
 005C78D5    mov         eax,dword ptr [ebp-0C]
 005C78D8    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C78DC    jne         005C78E5
 005C78DE    mov         eax,dword ptr [ebp-4]
 005C78E1    mov         byte ptr [eax+30],1;TBitmap.FIgnorePalette:Boolean
 005C78E5    pop         ebx
 005C78E6    mov         esp,ebp
 005C78E8    pop         ebp
 005C78E9    ret
*}
end;

//005C78EC
{*procedure TBitmap.LoadFromClipboardFormat(?:?; ?:?; ?:?);
begin
 005C78EC    push        ebp
 005C78ED    mov         ebp,esp
 005C78EF    add         esp,0FFFFFFA0
 005C78F2    mov         dword ptr [ebp-0C],ecx
 005C78F5    mov         word ptr [ebp-6],dx
 005C78F9    mov         dword ptr [ebp-4],eax
 005C78FC    cmp         word ptr [ebp-6],2
>005C7901    jne         005C7909
 005C7903    cmp         dword ptr [ebp-0C],0
>005C7907    jne         005C7913
 005C7909    mov         eax,[006E9E08];^gvar_0063CA20
 005C790E    call        InvalidGraphic
 005C7913    mov         eax,dword ptr [ebp-4]
 005C7916    call        005C755C
 005C791B    lea         eax,[ebp-60]
 005C791E    xor         ecx,ecx
 005C7920    mov         edx,54
 005C7925    call        @FillChar
 005C792A    lea         eax,[ebp-60]
 005C792D    push        eax
 005C792E    push        54
 005C7930    mov         eax,dword ptr [ebp-0C]
 005C7933    push        eax
 005C7934    call        GDI32.GetObjectA
 005C7939    cmp         dword ptr [ebp-4C],0
>005C793D    jne         005C7944
 005C793F    xor         eax,eax
 005C7941    mov         dword ptr [ebp-48],eax
 005C7944    lea         eax,[ebp-60]
 005C7947    push        eax
 005C7948    mov         ecx,dword ptr [ebp+8]
 005C794B    mov         edx,dword ptr [ebp-0C]
 005C794E    mov         eax,dword ptr [ebp-4]
 005C7951    call        005C6BC8
 005C7956    mov         eax,dword ptr [ebp-4]
 005C7959    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C795C    mov         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
 005C7960    mov         eax,dword ptr [ebp-4]
 005C7963    mov         edx,dword ptr [eax]
 005C7965    call        dword ptr [edx+24];TBitmap.sub_005C728C
 005C7968    test        eax,eax
 005C796A    setne       al
 005C796D    mov         edx,dword ptr [ebp-4]
 005C7970    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 005C7973    mov         edx,dword ptr [ebp-4]
 005C7976    mov         eax,dword ptr [ebp-4]
 005C7979    mov         ecx,dword ptr [eax]
 005C797B    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C797E    mov         esp,ebp
 005C7980    pop         ebp
 005C7981    ret         4
end;*}

//005C7984
{*procedure TBitmap.LoadFromStream(?:?);
begin
 005C7984    push        ebp
 005C7985    mov         ebp,esp
 005C7987    add         esp,0FFFFFFF8
 005C798A    mov         dword ptr [ebp-8],edx
 005C798D    mov         dword ptr [ebp-4],eax
 005C7990    mov         eax,dword ptr [ebp-8]
 005C7993    call        TStream.GetSize
 005C7998    push        eax
 005C7999    mov         eax,dword ptr [ebp-8]
 005C799C    call        TStream.GetPosition
 005C79A1    pop         ecx
 005C79A2    sub         ecx,eax
 005C79A4    mov         edx,dword ptr [ebp-8]
 005C79A7    mov         eax,dword ptr [ebp-4]
 005C79AA    call        005C812C
 005C79AF    pop         ecx
 005C79B0    pop         ecx
 005C79B1    pop         ebp
 005C79B2    ret
end;*}

//005C79B4
procedure TBitmap.LoadFromResourceName(Instance:THandle; const ResName:AnsiString);
begin
{*
 005C79B4    push        ebp
 005C79B5    mov         ebp,esp
 005C79B7    add         esp,0FFFFFFF0
 005C79BA    mov         dword ptr [ebp-0C],ecx
 005C79BD    mov         dword ptr [ebp-8],edx
 005C79C0    mov         dword ptr [ebp-4],eax
 005C79C3    mov         eax,dword ptr [ebp-0C]
 005C79C6    push        eax
 005C79C7    push        2
 005C79C9    mov         ecx,dword ptr [ebp-8]
 005C79CC    mov         dl,1
 005C79CE    mov         eax,[00642C1C];TResourceStream
 005C79D3    call        TResourceStream.Create
 005C79D8    mov         dword ptr [ebp-10],eax
 005C79DB    xor         eax,eax
 005C79DD    push        ebp
 005C79DE    push        5C7A16
 005C79E3    push        dword ptr fs:[eax]
 005C79E6    mov         dword ptr fs:[eax],esp
 005C79E9    push        0
 005C79EB    mov         eax,dword ptr [ebp-10]
 005C79EE    call        TStream.GetSize
 005C79F3    mov         ecx,eax
 005C79F5    mov         edx,dword ptr [ebp-10]
 005C79F8    mov         eax,dword ptr [ebp-4]
 005C79FB    call        005C7B60
 005C7A00    xor         eax,eax
 005C7A02    pop         edx
 005C7A03    pop         ecx
 005C7A04    pop         ecx
 005C7A05    mov         dword ptr fs:[eax],edx
 005C7A08    push        5C7A1D
 005C7A0D    mov         eax,dword ptr [ebp-10]
 005C7A10    call        TObject.Free
 005C7A15    ret
>005C7A16    jmp         @HandleFinally
>005C7A1B    jmp         005C7A0D
 005C7A1D    mov         esp,ebp
 005C7A1F    pop         ebp
 005C7A20    ret
*}
end;

//005C7A24
{*procedure sub_005C7A24(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);
begin
 005C7A24    push        ebp
 005C7A25    mov         ebp,esp
 005C7A27    add         esp,0FFFFFFF0
 005C7A2A    push        ebx
 005C7A2B    push        esi
 005C7A2C    push        edi
 005C7A2D    mov         dword ptr [ebp-0C],ecx
 005C7A30    mov         dword ptr [ebp-8],edx
 005C7A33    mov         dword ptr [ebp-4],eax
 005C7A36    mov         dl,1
 005C7A38    mov         eax,[005BED74];TBitmapImage
 005C7A3D    call        TObject.Create;TBitmapImage.Create
 005C7A42    mov         dword ptr [ebp-10],eax
 005C7A45    xor         eax,eax
 005C7A47    push        ebp
 005C7A48    push        5C7AB3
 005C7A4D    push        dword ptr fs:[eax]
 005C7A50    mov         dword ptr fs:[eax],esp
 005C7A53    mov         eax,dword ptr [ebp-10]
 005C7A56    mov         edx,dword ptr [ebp-8]
 005C7A59    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 005C7A5C    mov         eax,dword ptr [ebp-10]
 005C7A5F    mov         edx,dword ptr [ebp-0C]
 005C7A62    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 005C7A65    mov         eax,dword ptr [ebp+10]
 005C7A68    mov         edx,dword ptr [ebp-10]
 005C7A6B    mov         esi,eax
 005C7A6D    lea         edi,[edx+18];TBitmapImage.FDIB:TDIBSection
 005C7A70    mov         ecx,15
 005C7A75    rep movs    dword ptr [edi],dword ptr [esi]
 005C7A77    mov         eax,dword ptr [ebp-10]
 005C7A7A    mov         dl,byte ptr [ebp+0C]
 005C7A7D    mov         byte ptr [eax+70],dl;TBitmapImage.FOS2Format:Boolean
 005C7A80    mov         eax,dword ptr [ebp-10]
 005C7A83    cmp         dword ptr [eax+2C],0
>005C7A87    je          005C7A95
 005C7A89    mov         eax,dword ptr [ebp-10]
 005C7A8C    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C7A8F    mov         edx,dword ptr [ebp-10]
 005C7A92    mov         dword ptr [edx+14],eax;TBitmapImage.FDIBHandle:HBITMAP
 005C7A95    mov         eax,dword ptr [ebp+8]
 005C7A98    mov         edx,dword ptr ds:[642BA0];TMemoryStream
 005C7A9E    call        @AsClass
 005C7AA3    mov         edx,dword ptr [ebp-10]
 005C7AA6    mov         dword ptr [edx+6C],eax;TBitmapImage.FSaveStream:TMemoryStream
 005C7AA9    xor         eax,eax
 005C7AAB    pop         edx
 005C7AAC    pop         ecx
 005C7AAD    pop         ecx
 005C7AAE    mov         dword ptr fs:[eax],edx
>005C7AB1    jmp         005C7ACA
>005C7AB3    jmp         @HandleAnyException
 005C7AB8    mov         eax,dword ptr [ebp-10]
 005C7ABB    call        TObject.Free
 005C7AC0    call        @RaiseAgain
 005C7AC5    call        @DoneExcept
 005C7ACA    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C7ACF    call        KERNEL32.EnterCriticalSection
 005C7AD4    xor         eax,eax
 005C7AD6    push        ebp
 005C7AD7    push        5C7B19
 005C7ADC    push        dword ptr fs:[eax]
 005C7ADF    mov         dword ptr fs:[eax],esp
 005C7AE2    mov         eax,dword ptr [ebp-4]
 005C7AE5    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7AE8    call        TSharedImage.Release
 005C7AED    mov         eax,dword ptr [ebp-4]
 005C7AF0    mov         edx,dword ptr [ebp-10]
 005C7AF3    mov         dword ptr [eax+28],edx;TBitmap.FImage:TBitmapImage
 005C7AF6    mov         eax,dword ptr [ebp-4]
 005C7AF9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C7AFC    call        TSharedImage.Reference
 005C7B01    xor         eax,eax
 005C7B03    pop         edx
 005C7B04    pop         ecx
 005C7B05    pop         ecx
 005C7B06    mov         dword ptr fs:[eax],edx
 005C7B09    push        5C7B20
 005C7B0E    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C7B13    call        KERNEL32.LeaveCriticalSection
 005C7B18    ret
>005C7B19    jmp         @HandleFinally
>005C7B1E    jmp         005C7B0E
 005C7B20    mov         eax,dword ptr [ebp-4]
 005C7B23    mov         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
 005C7B27    pop         edi
 005C7B28    pop         esi
 005C7B29    pop         ebx
 005C7B2A    mov         esp,ebp
 005C7B2C    pop         ebp
 005C7B2D    ret         0C
end;*}

//005C7B30
{*procedure sub_005C7B30(?:?);
begin
 005C7B30    push        ebp
 005C7B31    mov         ebp,esp
 005C7B33    add         esp,0FFFFFFF4
 005C7B36    push        ebx
 005C7B37    mov         dword ptr [ebp-8],edx
 005C7B3A    mov         dword ptr [ebp-4],eax
 005C7B3D    lea         edx,[ebp-0C]
 005C7B40    mov         ecx,4
 005C7B45    mov         eax,dword ptr [ebp-8]
 005C7B48    mov         ebx,dword ptr [eax]
 005C7B4A    call        dword ptr [ebx+8]
 005C7B4D    mov         ecx,dword ptr [ebp-0C]
 005C7B50    mov         edx,dword ptr [ebp-8]
 005C7B53    mov         eax,dword ptr [ebp-4]
 005C7B56    call        005C812C
 005C7B5B    pop         ebx
 005C7B5C    mov         esp,ebp
 005C7B5E    pop         ebp
 005C7B5F    ret
end;*}

//005C7B60
{*procedure sub_005C7B60(?:TBitmap; ?:?; ?:?; ?:?);
begin
 005C7B60    push        ebp
 005C7B61    mov         ebp,esp
 005C7B63    add         esp,0FFFFFF48
 005C7B69    push        ebx
 005C7B6A    push        esi
 005C7B6B    push        edi
 005C7B6C    mov         dword ptr [ebp-0C],ecx
 005C7B6F    mov         dword ptr [ebp-8],edx
 005C7B72    mov         dword ptr [ebp-4],eax
 005C7B75    xor         eax,eax
 005C7B77    mov         dword ptr [ebp-34],eax
 005C7B7A    xor         eax,eax
 005C7B7C    mov         dword ptr [ebp-2C],eax
 005C7B7F    xor         eax,eax
 005C7B81    mov         dword ptr [ebp-3C],eax
 005C7B84    lea         edx,[ebp-24]
 005C7B87    mov         ecx,4
 005C7B8C    mov         eax,dword ptr [ebp-8]
 005C7B8F    mov         ebx,dword ptr [eax]
 005C7B91    call        dword ptr [ebx+8]
 005C7B94    cmp         dword ptr [ebp-24],0C
 005C7B98    sete        byte ptr [ebp-25]
 005C7B9C    cmp         byte ptr [ebp-25],0
>005C7BA0    je          005C7BA9
 005C7BA2    mov         dword ptr [ebp-24],28
 005C7BA9    mov         eax,dword ptr [ebp-24]
 005C7BAC    add         eax,0C
 005C7BAF    add         eax,400
 005C7BB4    call        @GetMem
 005C7BB9    mov         dword ptr [ebp-1C],eax
 005C7BBC    mov         eax,dword ptr [ebp-1C]
 005C7BBF    mov         dword ptr [ebp-40],eax
 005C7BC2    xor         eax,eax
 005C7BC4    push        ebp
 005C7BC5    push        5C80E1
 005C7BCA    push        dword ptr fs:[eax]
 005C7BCD    mov         dword ptr fs:[eax],esp
 005C7BD0    xor         eax,eax
 005C7BD2    push        ebp
 005C7BD3    push        5C80B4
 005C7BD8    push        dword ptr fs:[eax]
 005C7BDB    mov         dword ptr fs:[eax],esp
 005C7BDE    cmp         byte ptr [ebp-25],0
>005C7BE2    je          005C7C3F
 005C7BE4    lea         edx,[ebp-54]
 005C7BE7    add         edx,4
 005C7BEA    mov         ecx,8
 005C7BEF    mov         eax,dword ptr [ebp-8]
 005C7BF2    mov         ebx,dword ptr [eax]
 005C7BF4    call        dword ptr [ebx+8]
 005C7BF7    mov         eax,dword ptr [ebp-40]
 005C7BFA    xor         ecx,ecx
 005C7BFC    mov         edx,28
 005C7C01    call        @FillChar
 005C7C06    mov         eax,dword ptr [ebp-40]
 005C7C09    mov         dword ptr [ebp-44],eax
 005C7C0C    movzx       eax,word ptr [ebp-50]
 005C7C10    mov         edx,dword ptr [ebp-44]
 005C7C13    mov         dword ptr [edx+4],eax
 005C7C16    movzx       eax,word ptr [ebp-4E]
 005C7C1A    mov         edx,dword ptr [ebp-44]
 005C7C1D    mov         dword ptr [edx+8],eax
 005C7C20    mov         eax,dword ptr [ebp-44]
 005C7C23    mov         dx,word ptr [ebp-4C]
 005C7C27    mov         word ptr [eax+0C],dx
 005C7C2B    mov         eax,dword ptr [ebp-44]
 005C7C2E    mov         dx,word ptr [ebp-4A]
 005C7C32    mov         word ptr [eax+0E],dx
 005C7C36    sub         dword ptr [ebp-0C],0C
>005C7C3A    jmp         005C7D15
 005C7C3F    mov         ecx,dword ptr [ebp-24]
 005C7C42    sub         ecx,4
 005C7C45    mov         edx,dword ptr [ebp-1C]
 005C7C48    add         edx,4
 005C7C4B    mov         eax,dword ptr [ebp-8]
 005C7C4E    mov         ebx,dword ptr [eax]
 005C7C50    call        dword ptr [ebx+8]
 005C7C53    mov         eax,dword ptr [ebp-24]
 005C7C56    sub         dword ptr [ebp-0C],eax
 005C7C59    mov         eax,dword ptr [ebp-40]
 005C7C5C    cmp         dword ptr [eax+10],3
>005C7C60    je          005C7D15
 005C7C66    mov         eax,dword ptr [ebp-40]
 005C7C69    cmp         dword ptr [eax+10],0
>005C7C6D    je          005C7D15
 005C7C73    mov         dl,1
 005C7C75    mov         eax,[00642BA0];TMemoryStream
 005C7C7A    call        TObject.Create;TMemoryStream.Create
 005C7C7F    mov         dword ptr [ebp-3C],eax
 005C7C82    cmp         dword ptr [ebp+8],0
>005C7C86    jne         005C7CB8
 005C7C88    lea         eax,[ebp-0B6]
 005C7C8E    xor         ecx,ecx
 005C7C90    mov         edx,0E
 005C7C95    call        @FillChar
 005C7C9A    mov         word ptr [ebp-0B6],4D42
 005C7CA3    mov         eax,dword ptr [ebp-0C]
 005C7CA6    add         eax,dword ptr [ebp-24]
 005C7CA9    mov         dword ptr [ebp-0B4],eax
 005C7CAF    lea         eax,[ebp-0B6]
 005C7CB5    mov         dword ptr [ebp+8],eax
 005C7CB8    mov         edx,dword ptr [ebp+8]
 005C7CBB    mov         ecx,0E
 005C7CC0    mov         eax,dword ptr [ebp-3C]
 005C7CC3    mov         ebx,dword ptr [eax]
 005C7CC5    call        dword ptr [ebx+0C];TMemoryStream.sub_00649238
 005C7CC8    lea         edx,[ebp-24]
 005C7CCB    mov         ecx,4
 005C7CD0    mov         eax,dword ptr [ebp-3C]
 005C7CD3    mov         ebx,dword ptr [eax]
 005C7CD5    call        dword ptr [ebx+0C];TMemoryStream.sub_00649238
 005C7CD8    mov         ecx,dword ptr [ebp-24]
 005C7CDB    sub         ecx,4
 005C7CDE    mov         edx,dword ptr [ebp-1C]
 005C7CE1    add         edx,4
 005C7CE4    mov         eax,dword ptr [ebp-3C]
 005C7CE7    mov         ebx,dword ptr [eax]
 005C7CE9    call        dword ptr [ebx+0C];TMemoryStream.sub_00649238
 005C7CEC    mov         eax,dword ptr [ebp-0C]
 005C7CEF    xor         edx,edx
 005C7CF1    push        edx
 005C7CF2    push        eax
 005C7CF3    mov         edx,dword ptr [ebp-8]
 005C7CF6    mov         eax,dword ptr [ebp-3C]
 005C7CF9    call        TStream.CopyFrom
 005C7CFE    mov         edx,dword ptr [ebp-0C]
 005C7D01    neg         edx
 005C7D03    mov         cx,2
 005C7D07    mov         eax,dword ptr [ebp-3C]
 005C7D0A    mov         ebx,dword ptr [eax]
 005C7D0C    call        dword ptr [ebx+10];TMemoryStream.sub_00648F08
 005C7D0F    mov         eax,dword ptr [ebp-3C]
 005C7D12    mov         dword ptr [ebp-8],eax
 005C7D15    mov         eax,dword ptr [ebp-40]
 005C7D18    mov         dword ptr [ebp-48],eax
 005C7D1B    mov         eax,dword ptr [ebp-48]
 005C7D1E    mov         edx,dword ptr [ebp-24]
 005C7D21    mov         dword ptr [eax],edx
 005C7D23    mov         eax,dword ptr [ebp-1C]
 005C7D26    add         eax,dword ptr [ebp-24]
 005C7D29    mov         dword ptr [ebp-20],eax
 005C7D2C    mov         eax,dword ptr [ebp-48]
 005C7D2F    cmp         word ptr [eax+0C],1
>005C7D34    je          005C7D3B
 005C7D36    call        InvalidBitmap
 005C7D3B    cmp         dword ptr [ebp-24],28
>005C7D3F    jne         005C7D76
 005C7D41    mov         eax,dword ptr [ebp-48]
 005C7D44    cmp         word ptr [eax+0E],10
>005C7D49    je          005C7D55
 005C7D4B    mov         eax,dword ptr [ebp-48]
 005C7D4E    cmp         word ptr [eax+0E],20
>005C7D53    jne         005C7D76
 005C7D55    mov         eax,dword ptr [ebp-48]
 005C7D58    cmp         dword ptr [eax+10],3
>005C7D5C    jne         005C7D76
 005C7D5E    mov         edx,dword ptr [ebp-20]
 005C7D61    mov         ecx,0C
 005C7D66    mov         eax,dword ptr [ebp-8]
 005C7D69    call        TStream.ReadBuffer
 005C7D6E    add         dword ptr [ebp-20],0C
 005C7D72    sub         dword ptr [ebp-0C],0C
 005C7D76    mov         eax,dword ptr [ebp-48]
 005C7D79    cmp         dword ptr [eax+20],0
>005C7D7D    jne         005C7D91
 005C7D7F    mov         eax,dword ptr [ebp-48]
 005C7D82    mov         ax,word ptr [eax+0E]
 005C7D86    call        005C207C
 005C7D8B    mov         edx,dword ptr [ebp-48]
 005C7D8E    mov         dword ptr [edx+20],eax
 005C7D91    mov         eax,dword ptr [ebp-48]
 005C7D94    mov         ecx,dword ptr [eax+20]
 005C7D97    xor         eax,eax
 005C7D99    mov         al,byte ptr [ebp-25]
 005C7D9C    movzx       eax,byte ptr [eax+6E3F7C]
 005C7DA3    imul        ecx,eax
 005C7DA6    mov         edx,dword ptr [ebp-20]
 005C7DA9    mov         eax,dword ptr [ebp-8]
 005C7DAC    call        TStream.ReadBuffer
 005C7DB1    mov         eax,dword ptr [ebp-48]
 005C7DB4    mov         eax,dword ptr [eax+20]
 005C7DB7    xor         edx,edx
 005C7DB9    mov         dl,byte ptr [ebp-25]
 005C7DBC    movzx       edx,byte ptr [edx+6E3F7C]
 005C7DC3    imul        edx
 005C7DC5    sub         dword ptr [ebp-0C],eax
 005C7DC8    mov         eax,dword ptr [ebp-48]
 005C7DCB    cmp         dword ptr [eax+14],0
>005C7DCF    jne         005C7DFE
 005C7DD1    mov         eax,dword ptr [ebp-48]
 005C7DD4    movzx       edx,word ptr [eax+0E]
 005C7DD8    mov         eax,dword ptr [ebp-48]
 005C7DDB    mov         eax,dword ptr [eax+4]
 005C7DDE    mov         ecx,20
 005C7DE3    call        005C20B8
 005C7DE8    mov         ecx,eax
 005C7DEA    mov         eax,dword ptr [ebp-48]
 005C7DED    mov         eax,dword ptr [eax+8]
 005C7DF0    cdq
 005C7DF1    xor         eax,edx
 005C7DF3    sub         eax,edx
 005C7DF5    imul        ecx,eax
 005C7DF8    mov         eax,dword ptr [ebp-48]
 005C7DFB    mov         dword ptr [eax+14],ecx
 005C7DFE    mov         eax,dword ptr [ebp-48]
 005C7E01    mov         eax,dword ptr [eax+14]
 005C7E04    cmp         eax,dword ptr [ebp-0C]
>005C7E07    jae         005C7E12
 005C7E09    mov         eax,dword ptr [ebp-48]
 005C7E0C    mov         eax,dword ptr [eax+14]
 005C7E0F    mov         dword ptr [ebp-0C],eax
 005C7E12    cmp         byte ptr [ebp-25],0
>005C7E16    je          005C7E20
 005C7E18    mov         eax,dword ptr [ebp-20]
 005C7E1B    call        005C23C4
 005C7E20    push        0
 005C7E22    call        USER32.GetDC
 005C7E27    call        005C1EEC
 005C7E2C    mov         dword ptr [ebp-10],eax
 005C7E2F    xor         eax,eax
 005C7E31    push        ebp
 005C7E32    push        5C802F
 005C7E37    push        dword ptr fs:[eax]
 005C7E3A    mov         dword ptr fs:[eax],esp
 005C7E3D    mov         eax,dword ptr [ebp-40]
 005C7E40    cmp         dword ptr [eax+10],0
>005C7E44    je          005C7E4F
 005C7E46    mov         eax,dword ptr [ebp-40]
 005C7E49    cmp         dword ptr [eax+10],3
>005C7E4D    jne         005C7E5C
 005C7E4F    cmp         byte ptr ds:[6E3CEC],0;gvar_006E3CEC
>005C7E56    je          005C7F9D
 005C7E5C    xor         eax,eax
 005C7E5E    mov         dword ptr [ebp-14],eax
 005C7E61    mov         eax,dword ptr [ebp-0C]
 005C7E64    call        @GetMem
 005C7E69    mov         dword ptr [ebp-18],eax
 005C7E6C    xor         eax,eax
 005C7E6E    push        ebp
 005C7E6F    push        5C7F96
 005C7E74    push        dword ptr fs:[eax]
 005C7E77    mov         dword ptr fs:[eax],esp
 005C7E7A    mov         edx,dword ptr [ebp-18]
 005C7E7D    mov         ecx,dword ptr [ebp-0C]
 005C7E80    mov         eax,dword ptr [ebp-8]
 005C7E83    call        TStream.ReadBuffer
 005C7E88    mov         eax,dword ptr [ebp-10]
 005C7E8B    push        eax
 005C7E8C    call        GDI32.CreateCompatibleDC
 005C7E91    call        005C1EEC
 005C7E96    mov         dword ptr [ebp-14],eax
 005C7E99    push        1
 005C7E9B    push        1
 005C7E9D    mov         eax,dword ptr [ebp-10]
 005C7EA0    push        eax
 005C7EA1    call        GDI32.CreateCompatibleBitmap
 005C7EA6    push        eax
 005C7EA7    mov         eax,dword ptr [ebp-14]
 005C7EAA    push        eax
 005C7EAB    call        GDI32.SelectObject
 005C7EB0    mov         dword ptr [ebp-30],eax
 005C7EB3    xor         eax,eax
 005C7EB5    mov         dword ptr [ebp-38],eax
 005C7EB8    mov         eax,dword ptr [ebp-40]
 005C7EBB    cmp         dword ptr [eax+20],0
>005C7EBF    jbe         005C7EEF
 005C7EC1    mov         eax,dword ptr [ebp-40]
 005C7EC4    mov         ecx,dword ptr [eax+20]
 005C7EC7    mov         edx,dword ptr [ebp-20]
 005C7ECA    xor         eax,eax
 005C7ECC    call        005C2710
 005C7ED1    mov         dword ptr [ebp-34],eax
 005C7ED4    push        0
 005C7ED6    mov         eax,dword ptr [ebp-34]
 005C7ED9    push        eax
 005C7EDA    mov         eax,dword ptr [ebp-14]
 005C7EDD    push        eax
 005C7EDE    call        GDI32.SelectPalette
 005C7EE3    mov         dword ptr [ebp-38],eax
 005C7EE6    mov         eax,dword ptr [ebp-14]
 005C7EE9    push        eax
 005C7EEA    call        GDI32.RealizePalette
 005C7EEF    xor         eax,eax
 005C7EF1    push        ebp
 005C7EF2    push        5C7F6A
 005C7EF7    push        dword ptr fs:[eax]
 005C7EFA    mov         dword ptr fs:[eax],esp
 005C7EFD    push        0
 005C7EFF    mov         eax,dword ptr [ebp-1C]
 005C7F02    push        eax
 005C7F03    mov         eax,dword ptr [ebp-18]
 005C7F06    push        eax
 005C7F07    push        4
 005C7F09    mov         eax,dword ptr [ebp-1C]
 005C7F0C    push        eax
 005C7F0D    mov         eax,dword ptr [ebp-14]
 005C7F10    push        eax
 005C7F11    call        GDI32.CreateDIBitmap
 005C7F16    mov         dword ptr [ebp-2C],eax
 005C7F19    cmp         dword ptr [ebp-2C],0
>005C7F1D    jne         005C7F34
 005C7F1F    call        KERNEL32.GetLastError
 005C7F24    test        eax,eax
>005C7F26    jne         005C7F2F
 005C7F28    call        InvalidBitmap
>005C7F2D    jmp         005C7F34
 005C7F2F    call        RaiseLastOSError
 005C7F34    xor         eax,eax
 005C7F36    pop         edx
 005C7F37    pop         ecx
 005C7F38    pop         ecx
 005C7F39    mov         dword ptr fs:[eax],edx
 005C7F3C    push        5C7F71
 005C7F41    cmp         dword ptr [ebp-38],0
>005C7F45    je          005C7F56
 005C7F47    push        0FF
 005C7F49    mov         eax,dword ptr [ebp-38]
 005C7F4C    push        eax
 005C7F4D    mov         eax,dword ptr [ebp-14]
 005C7F50    push        eax
 005C7F51    call        GDI32.SelectPalette
 005C7F56    mov         eax,dword ptr [ebp-30]
 005C7F59    push        eax
 005C7F5A    mov         eax,dword ptr [ebp-14]
 005C7F5D    push        eax
 005C7F5E    call        GDI32.SelectObject
 005C7F63    push        eax
 005C7F64    call        GDI32.DeleteObject
 005C7F69    ret
>005C7F6A    jmp         @HandleFinally
>005C7F6F    jmp         005C7F41
 005C7F71    xor         eax,eax
 005C7F73    pop         edx
 005C7F74    pop         ecx
 005C7F75    pop         ecx
 005C7F76    mov         dword ptr fs:[eax],edx
 005C7F79    push        5C8016
 005C7F7E    cmp         dword ptr [ebp-14],0
>005C7F82    je          005C7F8D
 005C7F84    mov         eax,dword ptr [ebp-14]
 005C7F87    push        eax
 005C7F88    call        GDI32.DeleteDC
 005C7F8D    mov         eax,dword ptr [ebp-18]
 005C7F90    call        @FreeMem
 005C7F95    ret
>005C7F96    jmp         @HandleFinally
>005C7F9B    jmp         005C7F7E
 005C7F9D    push        0
 005C7F9F    push        0
 005C7FA1    lea         eax,[ebp-18]
 005C7FA4    push        eax
 005C7FA5    push        0
 005C7FA7    mov         eax,dword ptr [ebp-1C]
 005C7FAA    push        eax
 005C7FAB    mov         eax,dword ptr [ebp-10]
 005C7FAE    push        eax
 005C7FAF    call        GDI32.CreateDIBSection
 005C7FB4    mov         dword ptr [ebp-2C],eax
 005C7FB7    cmp         dword ptr [ebp-2C],0
>005C7FBB    je          005C7FC3
 005C7FBD    cmp         dword ptr [ebp-18],0
>005C7FC1    jne         005C7FD8
 005C7FC3    call        KERNEL32.GetLastError
 005C7FC8    test        eax,eax
>005C7FCA    jne         005C7FD3
 005C7FCC    call        InvalidBitmap
>005C7FD1    jmp         005C7FD8
 005C7FD3    call        RaiseLastOSError
 005C7FD8    xor         eax,eax
 005C7FDA    push        ebp
 005C7FDB    push        5C7FFE
 005C7FE0    push        dword ptr fs:[eax]
 005C7FE3    mov         dword ptr fs:[eax],esp
 005C7FE6    mov         edx,dword ptr [ebp-18]
 005C7FE9    mov         ecx,dword ptr [ebp-0C]
 005C7FEC    mov         eax,dword ptr [ebp-8]
 005C7FEF    call        TStream.ReadBuffer
 005C7FF4    xor         eax,eax
 005C7FF6    pop         edx
 005C7FF7    pop         ecx
 005C7FF8    pop         ecx
 005C7FF9    mov         dword ptr fs:[eax],edx
>005C7FFC    jmp         005C8016
>005C7FFE    jmp         @HandleAnyException
 005C8003    mov         eax,dword ptr [ebp-2C]
 005C8006    push        eax
 005C8007    call        GDI32.DeleteObject
 005C800C    call        @RaiseAgain
 005C8011    call        @DoneExcept
 005C8016    xor         eax,eax
 005C8018    pop         edx
 005C8019    pop         ecx
 005C801A    pop         ecx
 005C801B    mov         dword ptr fs:[eax],edx
 005C801E    push        5C8036
 005C8023    mov         eax,dword ptr [ebp-10]
 005C8026    push        eax
 005C8027    push        0
 005C8029    call        USER32.ReleaseDC
 005C802E    ret
>005C802F    jmp         @HandleFinally
>005C8034    jmp         005C8023
 005C8036    mov         eax,dword ptr [ebp-40]
 005C8039    cmp         word ptr [eax+0E],8
>005C803E    jbe         005C8062
 005C8040    mov         eax,dword ptr [ebp-40]
 005C8043    cmp         dword ptr [eax+20],0
>005C8047    jbe         005C8062
 005C8049    cmp         dword ptr [ebp-34],0
>005C804D    jne         005C8062
 005C804F    mov         eax,dword ptr [ebp-40]
 005C8052    mov         ecx,dword ptr [eax+20]
 005C8055    mov         edx,dword ptr [ebp-20]
 005C8058    xor         eax,eax
 005C805A    call        005C2710
 005C805F    mov         dword ptr [ebp-34],eax
 005C8062    lea         eax,[ebp-0A8]
 005C8068    xor         ecx,ecx
 005C806A    mov         edx,54
 005C806F    call        @FillChar
 005C8074    lea         eax,[ebp-0A8]
 005C807A    push        eax
 005C807B    push        54
 005C807D    mov         eax,dword ptr [ebp-2C]
 005C8080    push        eax
 005C8081    call        GDI32.GetObjectA
 005C8086    mov         eax,dword ptr [ebp-40]
 005C8089    mov         eax,dword ptr [eax+18]
 005C808C    mov         dword ptr [ebp-78],eax
 005C808F    mov         eax,dword ptr [ebp-40]
 005C8092    mov         eax,dword ptr [eax+1C]
 005C8095    mov         dword ptr [ebp-74],eax
 005C8098    mov         eax,dword ptr [ebp-40]
 005C809B    mov         eax,dword ptr [eax+20]
 005C809E    mov         dword ptr [ebp-70],eax
 005C80A1    mov         eax,dword ptr [ebp-40]
 005C80A4    mov         eax,dword ptr [eax+24]
 005C80A7    mov         dword ptr [ebp-6C],eax
 005C80AA    xor         eax,eax
 005C80AC    pop         edx
 005C80AD    pop         ecx
 005C80AE    pop         ecx
 005C80AF    mov         dword ptr fs:[eax],edx
>005C80B2    jmp         005C80CB
>005C80B4    jmp         @HandleAnyException
 005C80B9    mov         eax,dword ptr [ebp-3C]
 005C80BC    call        TObject.Free
 005C80C1    call        @RaiseAgain
 005C80C6    call        @DoneExcept
 005C80CB    xor         eax,eax
 005C80CD    pop         edx
 005C80CE    pop         ecx
 005C80CF    pop         ecx
 005C80D0    mov         dword ptr fs:[eax],edx
 005C80D3    push        5C80E8
 005C80D8    mov         eax,dword ptr [ebp-1C]
 005C80DB    call        @FreeMem
 005C80E0    ret
>005C80E1    jmp         @HandleFinally
>005C80E6    jmp         005C80D8
 005C80E8    lea         eax,[ebp-0A8]
 005C80EE    push        eax
 005C80EF    mov         al,byte ptr [ebp-25]
 005C80F2    push        eax
 005C80F3    mov         eax,dword ptr [ebp-3C]
 005C80F6    push        eax
 005C80F7    mov         ecx,dword ptr [ebp-34]
 005C80FA    mov         edx,dword ptr [ebp-2C]
 005C80FD    mov         eax,dword ptr [ebp-4]
 005C8100    call        005C7A24
 005C8105    mov         eax,dword ptr [ebp-4]
 005C8108    mov         edx,dword ptr [eax]
 005C810A    call        dword ptr [edx+24]
 005C810D    test        eax,eax
 005C810F    setne       al
 005C8112    mov         edx,dword ptr [ebp-4]
 005C8115    mov         byte ptr [edx+22],al
 005C8118    mov         edx,dword ptr [ebp-4]
 005C811B    mov         eax,dword ptr [ebp-4]
 005C811E    mov         ecx,dword ptr [eax]
 005C8120    call        dword ptr [ecx+10]
 005C8123    pop         edi
 005C8124    pop         esi
 005C8125    pop         ebx
 005C8126    mov         esp,ebp
 005C8128    pop         ebp
 005C8129    ret         4
end;*}

//005C812C
{*procedure sub_005C812C(?:TBitmap; ?:?; ?:?);
begin
 005C812C    push        ebp
 005C812D    mov         ebp,esp
 005C812F    add         esp,0FFFFFF90
 005C8132    mov         dword ptr [ebp-0C],ecx
 005C8135    mov         dword ptr [ebp-8],edx
 005C8138    mov         dword ptr [ebp-4],eax
 005C813B    mov         eax,dword ptr [ebp-4]
 005C813E    call        005C755C
 005C8143    cmp         dword ptr [ebp-0C],0
>005C8147    jne         005C816E
 005C8149    lea         eax,[ebp-6E]
 005C814C    xor         ecx,ecx
 005C814E    mov         edx,54
 005C8153    call        @FillChar
 005C8158    lea         eax,[ebp-6E]
 005C815B    push        eax
 005C815C    push        0
 005C815E    push        0
 005C8160    xor         ecx,ecx
 005C8162    xor         edx,edx
 005C8164    mov         eax,dword ptr [ebp-4]
 005C8167    call        005C7A24
>005C816C    jmp         005C81A0
 005C816E    lea         edx,[ebp-1A]
 005C8171    mov         ecx,0E
 005C8176    mov         eax,dword ptr [ebp-8]
 005C8179    call        TStream.ReadBuffer
 005C817E    cmp         word ptr [ebp-1A],4D42
>005C8184    je          005C818B
 005C8186    call        InvalidBitmap
 005C818B    lea         eax,[ebp-1A]
 005C818E    push        eax
 005C818F    mov         ecx,dword ptr [ebp-0C]
 005C8192    sub         ecx,0E
 005C8195    mov         edx,dword ptr [ebp-8]
 005C8198    mov         eax,dword ptr [ebp-4]
 005C819B    call        005C7B60
 005C81A0    mov         esp,ebp
 005C81A2    pop         ebp
 005C81A3    ret
end;*}

//005C81A4
procedure TBitmap.SetHandle(Value:HBITMAP);
begin
{*
 005C81A4    push        ebp
 005C81A5    mov         ebp,esp
 005C81A7    add         esp,0FFFFFF9C
 005C81AA    push        ebx
 005C81AB    push        esi
 005C81AC    push        edi
 005C81AD    mov         dword ptr [ebp-8],edx
 005C81B0    mov         dword ptr [ebp-4],eax
 005C81B3    mov         eax,dword ptr [ebp-4]
 005C81B6    mov         eax,dword ptr [eax+28]
 005C81B9    mov         dword ptr [ebp-10],eax
 005C81BC    mov         eax,dword ptr [ebp-10]
 005C81BF    mov         eax,dword ptr [eax+8]
 005C81C2    cmp         eax,dword ptr [ebp-8]
>005C81C5    je          005C8289
 005C81CB    mov         eax,dword ptr [ebp-4]
 005C81CE    call        005C755C
 005C81D3    lea         eax,[ebp-64]
 005C81D6    xor         ecx,ecx
 005C81D8    mov         edx,54
 005C81DD    call        @FillChar
 005C81E2    cmp         dword ptr [ebp-8],0
>005C81E6    je          005C81F7
 005C81E8    lea         eax,[ebp-64]
 005C81EB    push        eax
 005C81EC    push        54
 005C81EE    mov         eax,dword ptr [ebp-8]
 005C81F1    push        eax
 005C81F2    call        GDI32.GetObjectA
 005C81F7    mov         eax,dword ptr [ebp-10]
 005C81FA    cmp         dword ptr [eax+4],1
>005C81FE    jne         005C8213
 005C8200    mov         eax,dword ptr [ebp-10]
 005C8203    mov         eax,dword ptr [eax+10]
 005C8206    mov         dword ptr [ebp-0C],eax
 005C8209    mov         eax,dword ptr [ebp-10]
 005C820C    xor         edx,edx
 005C820E    mov         dword ptr [eax+10],edx
>005C8211    jmp         005C8239
 005C8213    mov         eax,dword ptr [ebp-10]
 005C8216    mov         eax,dword ptr [eax+10]
 005C8219    cmp         eax,dword ptr ds:[6ECD1C];SystemPalette16:HPALETTE
>005C821F    jne         005C822B
 005C8221    mov         eax,[006ECD1C];SystemPalette16:HPALETTE
 005C8226    mov         dword ptr [ebp-0C],eax
>005C8229    jmp         005C8239
 005C822B    mov         eax,dword ptr [ebp-10]
 005C822E    mov         eax,dword ptr [eax+10]
 005C8231    call        CopyPalette
 005C8236    mov         dword ptr [ebp-0C],eax
 005C8239    xor         eax,eax
 005C823B    push        ebp
 005C823C    push        5C8267
 005C8241    push        dword ptr fs:[eax]
 005C8244    mov         dword ptr fs:[eax],esp
 005C8247    lea         eax,[ebp-64]
 005C824A    push        eax
 005C824B    push        0
 005C824D    push        0
 005C824F    mov         ecx,dword ptr [ebp-0C]
 005C8252    mov         edx,dword ptr [ebp-8]
 005C8255    mov         eax,dword ptr [ebp-4]
 005C8258    call        005C7A24
 005C825D    xor         eax,eax
 005C825F    pop         edx
 005C8260    pop         ecx
 005C8261    pop         ecx
 005C8262    mov         dword ptr fs:[eax],edx
>005C8265    jmp         005C827E
>005C8267    jmp         @HandleAnyException
 005C826C    mov         eax,dword ptr [ebp-0C]
 005C826F    call        005BEFF0
 005C8274    call        @RaiseAgain
 005C8279    call        @DoneExcept
 005C827E    mov         edx,dword ptr [ebp-4]
 005C8281    mov         eax,dword ptr [ebp-4]
 005C8284    mov         ecx,dword ptr [eax]
 005C8286    call        dword ptr [ecx+10]
 005C8289    pop         edi
 005C828A    pop         esi
 005C828B    pop         ebx
 005C828C    mov         esp,ebp
 005C828E    pop         ebp
 005C828F    ret
*}
end;

//005C8290
{*procedure sub_005C8290(?:?);
begin
 005C8290    push        ebp
 005C8291    mov         ebp,esp
 005C8293    add         esp,0FFFFFF94
 005C8296    push        esi
 005C8297    push        edi
 005C8298    mov         byte ptr [ebp-5],dl
 005C829B    mov         dword ptr [ebp-4],eax
 005C829E    mov         eax,dword ptr [ebp-4]
 005C82A1    call        005C71B0
 005C82A6    cmp         al,byte ptr [ebp-5]
>005C82A9    je          005C8455
 005C82AF    mov         eax,dword ptr [ebp-4]
 005C82B2    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C82B5    mov         dword ptr [ebp-18],eax
 005C82B8    mov         eax,dword ptr [ebp-18]
 005C82BB    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C82BF    jne         005C82EC
 005C82C1    mov         eax,dword ptr [ebp-18]
 005C82C4    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C82C8    jne         005C82EC
 005C82CA    cmp         byte ptr [ebp-5],1
>005C82CE    jne         005C82DD
 005C82D0    mov         eax,dword ptr [ebp-18]
 005C82D3    xor         edx,edx
 005C82D5    mov         dword ptr [eax+30],edx
>005C82D8    jmp         005C8455
 005C82DD    mov         eax,dword ptr [ebp-18]
 005C82E0    mov         dword ptr [eax+30],28
>005C82E7    jmp         005C8455
 005C82EC    cmp         byte ptr [ebp-5],0
>005C82F0    jne         005C8397
 005C82F6    mov         eax,dword ptr [ebp-18]
 005C82F9    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C82FD    je          005C8311
 005C82FF    mov         eax,dword ptr [ebp-18]
 005C8302    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C8305    mov         edx,dword ptr [ebp-18]
 005C8308    cmp         eax,dword ptr [edx+8];TBitmapImage.FHandle:HBITMAP
>005C830B    je          005C8455
 005C8311    mov         eax,dword ptr [ebp-4]
 005C8314    call        005C755C
 005C8319    mov         eax,dword ptr [ebp-4]
 005C831C    call        005C77DC
 005C8321    mov         eax,dword ptr [ebp-4]
 005C8324    call        005C7488
 005C8329    mov         eax,dword ptr [ebp-18]
 005C832C    cmp         dword ptr [eax+4],1;TBitmapImage........FRefCount:Integer
>005C8330    jne         005C8377
 005C8332    mov         eax,dword ptr [ebp-18]
 005C8335    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C8338    mov         dword ptr [ebp-0C],eax
 005C833B    mov         eax,dword ptr [ebp-18]
 005C833E    xor         edx,edx
 005C8340    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 005C8343    mov         eax,dword ptr [ebp-18]
 005C8346    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8349    mov         dword ptr [ebp-10],eax
 005C834C    mov         eax,dword ptr [ebp-18]
 005C834F    xor         edx,edx
 005C8351    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 005C8354    mov         eax,dword ptr [ebp-18]
 005C8357    add         eax,18;TBitmapImage.FDIB:TDIBSection
 005C835A    push        eax
 005C835B    mov         eax,dword ptr [ebp-18]
 005C835E    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 005C8361    push        eax
 005C8362    push        0
 005C8364    mov         ecx,dword ptr [ebp-10]
 005C8367    mov         edx,dword ptr [ebp-0C]
 005C836A    mov         eax,dword ptr [ebp-4]
 005C836D    call        005C7A24
>005C8372    jmp         005C844A
 005C8377    mov         eax,dword ptr [ebp-18]
 005C837A    add         eax,18;TBitmapImage.FDIB:TDIBSection
 005C837D    push        eax
 005C837E    mov         eax,dword ptr [ebp-18]
 005C8381    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8384    mov         eax,dword ptr [ebp-18]
 005C8387    mov         edx,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C838A    mov         eax,dword ptr [ebp-4]
 005C838D    call        005C6BC8
>005C8392    jmp         005C844A
 005C8397    mov         eax,dword ptr [ebp-18]
 005C839A    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>005C839E    je          005C83B2
 005C83A0    mov         eax,dword ptr [ebp-18]
 005C83A3    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C83A6    mov         edx,dword ptr [ebp-18]
 005C83A9    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>005C83AC    jne         005C8455
 005C83B2    mov         eax,dword ptr [ebp-4]
 005C83B5    call        005C755C
 005C83BA    mov         eax,dword ptr [ebp-4]
 005C83BD    call        005C77DC
 005C83C2    mov         eax,dword ptr [ebp-18]
 005C83C5    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C83C8    lea         edi,[ebp-6C]
 005C83CB    mov         ecx,15
 005C83D0    rep movs    dword ptr [edi],dword ptr [esi]
 005C83D2    xor         eax,eax
 005C83D4    mov         dword ptr [ebp-54],eax
 005C83D7    mov         eax,dword ptr [ebp-18]
 005C83DA    cmp         dword ptr [eax+4],1;TBitmapImage.........FRefCount:Integer
 005C83DE    sete        byte ptr [ebp-11]
 005C83E2    cmp         byte ptr [ebp-11],0
>005C83E6    je          005C83F3
 005C83E8    mov         eax,dword ptr [ebp-18]
 005C83EB    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C83EE    mov         dword ptr [ebp-10],eax
>005C83F1    jmp         005C8401
 005C83F3    mov         eax,dword ptr [ebp-18]
 005C83F6    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C83F9    call        CopyPalette
 005C83FE    mov         dword ptr [ebp-10],eax
 005C8401    lea         eax,[ebp-6C]
 005C8404    push        eax
 005C8405    push        0
 005C8407    mov         ecx,dword ptr [ebp-10]
 005C840A    mov         eax,dword ptr [ebp-18]
 005C840D    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8410    mov         eax,dword ptr [ebp-18]
 005C8413    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C8416    call        005C60E8
 005C841B    mov         dword ptr [ebp-0C],eax
 005C841E    cmp         byte ptr [ebp-11],0
>005C8422    je          005C842F
 005C8424    mov         eax,dword ptr [ebp-0C]
 005C8427    mov         edx,dword ptr [ebp-18]
 005C842A    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
>005C842D    jmp         005C844A
 005C842F    lea         eax,[ebp-6C]
 005C8432    push        eax
 005C8433    mov         eax,dword ptr [ebp-18]
 005C8436    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 005C8439    push        eax
 005C843A    push        0
 005C843C    mov         ecx,dword ptr [ebp-10]
 005C843F    mov         edx,dword ptr [ebp-0C]
 005C8442    mov         eax,dword ptr [ebp-4]
 005C8445    call        005C7A24
 005C844A    mov         edx,dword ptr [ebp-4]
 005C844D    mov         eax,dword ptr [ebp-4]
 005C8450    mov         ecx,dword ptr [eax]
 005C8452    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C8455    pop         edi
 005C8456    pop         esi
 005C8457    mov         esp,ebp
 005C8459    pop         ebp
 005C845A    ret
end;*}

//005C845C
{*procedure TBitmap.SetHeight(?:?);
begin
 005C845C    push        ebp
 005C845D    mov         ebp,esp
 005C845F    add         esp,0FFFFFFA0
 005C8462    push        esi
 005C8463    push        edi
 005C8464    mov         dword ptr [ebp-8],edx
 005C8467    mov         dword ptr [ebp-4],eax
 005C846A    mov         eax,dword ptr [ebp-4]
 005C846D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8470    mov         dword ptr [ebp-0C],eax
 005C8473    mov         eax,dword ptr [ebp-0C]
 005C8476    mov         eax,dword ptr [eax+20]
 005C8479    cmp         eax,dword ptr [ebp-8]
>005C847C    je          005C84C5
 005C847E    mov         eax,dword ptr [ebp-4]
 005C8481    call        005C757C
 005C8486    mov         eax,dword ptr [ebp-0C]
 005C8489    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C848C    lea         edi,[ebp-60]
 005C848F    mov         ecx,15
 005C8494    rep movs    dword ptr [edi],dword ptr [esi]
 005C8496    mov         eax,dword ptr [ebp-8]
 005C8499    mov         dword ptr [ebp-58],eax
 005C849C    mov         eax,dword ptr [ebp-8]
 005C849F    mov         dword ptr [ebp-40],eax
 005C84A2    lea         eax,[ebp-60]
 005C84A5    push        eax
 005C84A6    mov         eax,dword ptr [ebp-0C]
 005C84A9    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C84AC    mov         eax,dword ptr [ebp-0C]
 005C84AF    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C84B2    mov         eax,dword ptr [ebp-4]
 005C84B5    call        005C6BC8
 005C84BA    mov         edx,dword ptr [ebp-4]
 005C84BD    mov         eax,dword ptr [ebp-4]
 005C84C0    mov         ecx,dword ptr [eax]
 005C84C2    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C84C5    pop         edi
 005C84C6    pop         esi
 005C84C7    mov         esp,ebp
 005C84C9    pop         ebp
 005C84CA    ret
end;*}

//005C84CC
procedure TBitmap.SetMonochrome(Value:Boolean);
begin
{*
 005C84CC    push        ebp
 005C84CD    mov         ebp,esp
 005C84CF    add         esp,0FFFFFF9C
 005C84D2    push        esi
 005C84D3    push        edi
 005C84D4    mov         byte ptr [ebp-5],dl
 005C84D7    mov         dword ptr [ebp-4],eax
 005C84DA    mov         eax,dword ptr [ebp-4]
 005C84DD    mov         eax,dword ptr [eax+28]
 005C84E0    mov         dword ptr [ebp-0C],eax
 005C84E3    mov         eax,dword ptr [ebp-0C]
 005C84E6    add         eax,30
 005C84E9    mov         dword ptr [ebp-10],eax
 005C84EC    mov         eax,dword ptr [ebp-10]
 005C84EF    cmp         word ptr [eax+0C],1
>005C84F4    jne         005C8500
 005C84F6    mov         eax,dword ptr [ebp-10]
 005C84F9    cmp         word ptr [eax+0E],1
>005C84FE    je          005C8504
 005C8500    xor         eax,eax
>005C8502    jmp         005C8506
 005C8504    mov         al,1
 005C8506    cmp         al,byte ptr [ebp-5]
>005C8509    je          005C856F
 005C850B    mov         eax,dword ptr [ebp-4]
 005C850E    call        005C757C
 005C8513    mov         eax,dword ptr [ebp-0C]
 005C8516    lea         esi,[eax+18]
 005C8519    lea         edi,[ebp-64]
 005C851C    mov         ecx,15
 005C8521    rep movs    dword ptr [edi],dword ptr [esi]
 005C8523    xor         eax,eax
 005C8525    mov         dword ptr [ebp-4C],eax
 005C8528    xor         eax,eax
 005C852A    mov         al,byte ptr [ebp-5]
 005C852D    mov         word ptr [ebp-40],ax
 005C8531    xor         eax,eax
 005C8533    mov         al,byte ptr [ebp-5]
 005C8536    mov         word ptr [ebp-3E],ax
 005C853A    xor         eax,eax
 005C853C    mov         al,byte ptr [ebp-5]
 005C853F    mov         word ptr [ebp-54],ax
 005C8543    xor         eax,eax
 005C8545    mov         al,byte ptr [ebp-5]
 005C8548    mov         word ptr [ebp-52],ax
 005C854C    lea         eax,[ebp-64]
 005C854F    push        eax
 005C8550    mov         eax,dword ptr [ebp-0C]
 005C8553    mov         ecx,dword ptr [eax+10]
 005C8556    mov         eax,dword ptr [ebp-0C]
 005C8559    mov         edx,dword ptr [eax+8]
 005C855C    mov         eax,dword ptr [ebp-4]
 005C855F    call        005C6BC8
 005C8564    mov         edx,dword ptr [ebp-4]
 005C8567    mov         eax,dword ptr [ebp-4]
 005C856A    mov         ecx,dword ptr [eax]
 005C856C    call        dword ptr [ecx+10]
 005C856F    pop         edi
 005C8570    pop         esi
 005C8571    mov         esp,ebp
 005C8573    pop         ebp
 005C8574    ret
*}
end;

//005C8578
{*procedure sub_005C8578(?:?);
begin
 005C8578    push        ebp
 005C8579    mov         ebp,esp
 005C857B    add         esp,0FFFFFF9C
 005C857E    push        ebx
 005C857F    push        esi
 005C8580    push        edi
 005C8581    mov         dword ptr [ebp-8],edx
 005C8584    mov         dword ptr [ebp-4],eax
 005C8587    mov         eax,dword ptr [ebp-4]
 005C858A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C858D    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8590    cmp         eax,dword ptr [ebp-8]
>005C8593    je          005C867D
 005C8599    mov         eax,dword ptr [ebp-4]
 005C859C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C859F    mov         dword ptr [ebp-10],eax
 005C85A2    cmp         dword ptr [ebp-8],0
>005C85A6    jne         005C85C9
 005C85A8    mov         eax,dword ptr [ebp-10]
 005C85AB    cmp         dword ptr [eax+4],1;TBitmapImage..........FRefCount:Integer
>005C85AF    jne         005C85C9
 005C85B1    mov         eax,dword ptr [ebp-10]
 005C85B4    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C85B7    call        005BEFF0
 005C85BC    mov         eax,dword ptr [ebp-10]
 005C85BF    xor         edx,edx
 005C85C1    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
>005C85C4    jmp         005C8651
 005C85C9    mov         eax,dword ptr [ebp-4]
 005C85CC    call        005C755C
 005C85D1    mov         eax,dword ptr [ebp-4]
 005C85D4    call        005C757C
 005C85D9    mov         eax,dword ptr [ebp-10]
 005C85DC    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C85DF    lea         edi,[ebp-64]
 005C85E2    mov         ecx,15
 005C85E7    rep movs    dword ptr [edi],dword ptr [esi]
 005C85E9    lea         eax,[ebp-64]
 005C85EC    push        eax
 005C85ED    push        0
 005C85EF    mov         eax,dword ptr [ebp-10]
 005C85F2    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C85F5    mov         eax,dword ptr [ebp-10]
 005C85F8    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C85FB    mov         ecx,dword ptr [ebp-8]
 005C85FE    call        005C60E8
 005C8603    mov         dword ptr [ebp-0C],eax
 005C8606    xor         eax,eax
 005C8608    push        ebp
 005C8609    push        5C8639
 005C860E    push        dword ptr fs:[eax]
 005C8611    mov         dword ptr fs:[eax],esp
 005C8614    lea         eax,[ebp-64]
 005C8617    push        eax
 005C8618    mov         eax,dword ptr [ebp-10]
 005C861B    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 005C861E    push        eax
 005C861F    push        0
 005C8621    mov         ecx,dword ptr [ebp-8]
 005C8624    mov         edx,dword ptr [ebp-0C]
 005C8627    mov         eax,dword ptr [ebp-4]
 005C862A    call        005C7A24
 005C862F    xor         eax,eax
 005C8631    pop         edx
 005C8632    pop         ecx
 005C8633    pop         ecx
 005C8634    mov         dword ptr fs:[eax],edx
>005C8637    jmp         005C8651
>005C8639    jmp         @HandleAnyException
 005C863E    mov         eax,dword ptr [ebp-0C]
 005C8641    push        eax
 005C8642    call        GDI32.DeleteObject
 005C8647    call        @RaiseAgain
 005C864C    call        @DoneExcept
 005C8651    mov         eax,dword ptr [ebp-4]
 005C8654    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8657    lea         ecx,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C865A    mov         eax,dword ptr [ebp-4]
 005C865D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8660    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C8663    mov         edx,dword ptr [ebp-8]
 005C8666    call        005C5FA8
 005C866B    mov         eax,dword ptr [ebp-4]
 005C866E    mov         byte ptr [eax+22],1;TBitmap.FPaletteModified:Boolean
 005C8672    mov         edx,dword ptr [ebp-4]
 005C8675    mov         eax,dword ptr [ebp-4]
 005C8678    mov         ecx,dword ptr [eax]
 005C867A    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C867D    pop         edi
 005C867E    pop         esi
 005C867F    pop         ebx
 005C8680    mov         esp,ebp
 005C8682    pop         ebp
 005C8683    ret
end;*}

//005C8684
procedure TBitmap.SetPixelFormat(Value:TPixelFormat);
begin
{*
 005C8684    push        ebp
 005C8685    mov         ebp,esp
 005C8687    add         esp,0FFFFFF98
 005C868A    push        esi
 005C868B    push        edi
 005C868C    mov         byte ptr [ebp-5],dl
 005C868F    mov         dword ptr [ebp-4],eax
 005C8692    mov         eax,dword ptr [ebp-4]
 005C8695    call        TBitmap.GetPixelFormat
 005C869A    cmp         al,byte ptr [ebp-5]
>005C869D    je          005C87F4
 005C86A3    mov         al,byte ptr [ebp-5]
 005C86A6    sub         al,1
>005C86A8    jb          005C86B0
 005C86AA    sub         al,7
>005C86AC    je          005C86BF
>005C86AE    jmp         005C86CE
 005C86B0    mov         dl,1
 005C86B2    mov         eax,dword ptr [ebp-4]
 005C86B5    mov         ecx,dword ptr [eax]
 005C86B7    call        dword ptr [ecx+6C]
>005C86BA    jmp         005C87F4
 005C86BF    mov         eax,[006E9DF4]
 005C86C4    call        InvalidGraphic
>005C86C9    jmp         005C87F4
 005C86CE    lea         eax,[ebp-65]
 005C86D1    xor         ecx,ecx
 005C86D3    mov         edx,54
 005C86D8    call        @FillChar
 005C86DD    mov         eax,dword ptr [ebp-4]
 005C86E0    mov         eax,dword ptr [eax+28]
 005C86E3    lea         esi,[eax+18]
 005C86E6    lea         edi,[ebp-65]
 005C86E9    mov         ecx,6
 005C86EE    rep movs    dword ptr [edi],dword ptr [esi]
 005C86F0    mov         byte ptr [ebp-11],0
 005C86F4    xor         eax,eax
 005C86F6    mov         dword ptr [ebp-51],eax
 005C86F9    mov         dword ptr [ebp-4D],28
 005C8700    mov         eax,dword ptr [ebp-61]
 005C8703    mov         dword ptr [ebp-49],eax
 005C8706    mov         eax,dword ptr [ebp-5D]
 005C8709    mov         dword ptr [ebp-45],eax
 005C870C    mov         word ptr [ebp-41],1
 005C8712    xor         eax,eax
 005C8714    mov         al,byte ptr [ebp-5]
 005C8717    movzx       eax,byte ptr [eax+6E3F7F]
 005C871E    mov         word ptr [ebp-3F],ax
 005C8722    mov         eax,dword ptr [ebp-4]
 005C8725    mov         eax,dword ptr [eax+28]
 005C8728    mov         eax,dword ptr [eax+10]
 005C872B    mov         dword ptr [ebp-0C],eax
 005C872E    mov         al,byte ptr [ebp-5]
 005C8731    sub         al,2
>005C8733    je          005C873F
 005C8735    dec         al
>005C8737    je          005C8749
 005C8739    sub         al,2
>005C873B    je          005C8775
>005C873D    jmp         005C8791
 005C873F    mov         eax,[006ECD1C];SystemPalette16:HPALETTE
 005C8744    mov         dword ptr [ebp-0C],eax
>005C8747    jmp         005C8791
 005C8749    push        0
 005C874B    call        USER32.GetDC
 005C8750    call        005C1EEC
 005C8755    mov         dword ptr [ebp-10],eax
 005C8758    mov         eax,dword ptr [ebp-10]
 005C875B    push        eax
 005C875C    call        GDI32.CreateHalftonePalette
 005C8761    mov         dword ptr [ebp-0C],eax
 005C8764    mov         byte ptr [ebp-11],1
 005C8768    mov         eax,dword ptr [ebp-10]
 005C876B    push        eax
 005C876C    push        0
 005C876E    call        USER32.ReleaseDC
>005C8773    jmp         005C8791
 005C8775    mov         dword ptr [ebp-3D],3
 005C877C    mov         dword ptr [ebp-25],0F800
 005C8783    mov         dword ptr [ebp-21],7E0
 005C878A    mov         dword ptr [ebp-1D],1F
 005C8791    xor         eax,eax
 005C8793    push        ebp
 005C8794    push        5C87E2
 005C8799    push        dword ptr fs:[eax]
 005C879C    mov         dword ptr fs:[eax],esp
 005C879F    lea         eax,[ebp-65]
 005C87A2    push        eax
 005C87A3    mov         eax,dword ptr [ebp-4]
 005C87A6    mov         edx,dword ptr [eax]
 005C87A8    call        dword ptr [edx+64]
 005C87AB    mov         edx,eax
 005C87AD    mov         ecx,dword ptr [ebp-0C]
 005C87B0    mov         eax,dword ptr [ebp-4]
 005C87B3    call        005C6BC8
 005C87B8    cmp         dword ptr [ebp-0C],0
 005C87BC    setne       al
 005C87BF    mov         edx,dword ptr [ebp-4]
 005C87C2    mov         byte ptr [edx+22],al
 005C87C5    xor         eax,eax
 005C87C7    pop         edx
 005C87C8    pop         ecx
 005C87C9    pop         ecx
 005C87CA    mov         dword ptr fs:[eax],edx
 005C87CD    push        5C87E9
 005C87D2    cmp         byte ptr [ebp-11],0
>005C87D6    je          005C87E1
 005C87D8    mov         eax,dword ptr [ebp-0C]
 005C87DB    push        eax
 005C87DC    call        GDI32.DeleteObject
 005C87E1    ret
>005C87E2    jmp         @HandleFinally
>005C87E7    jmp         005C87D2
 005C87E9    mov         edx,dword ptr [ebp-4]
 005C87EC    mov         eax,dword ptr [ebp-4]
 005C87EF    mov         ecx,dword ptr [eax]
 005C87F1    call        dword ptr [ecx+10]
 005C87F4    pop         edi
 005C87F5    pop         esi
 005C87F6    mov         esp,ebp
 005C87F8    pop         ebp
 005C87F9    ret
*}
end;

//005C87FC
{*procedure sub_005C87FC(?:TBitmap; ?:?);
begin
 005C87FC    push        ebp
 005C87FD    mov         ebp,esp
 005C87FF    add         esp,0FFFFFFF4
 005C8802    mov         dword ptr [ebp-8],edx
 005C8805    mov         dword ptr [ebp-4],eax
 005C8808    mov         eax,dword ptr [ebp-8]
 005C880B    mov         edx,dword ptr [ebp-4]
 005C880E    cmp         eax,dword ptr [edx+34];TBitmap.FTransparentColor:TColor
>005C8811    je          005C8878
 005C8813    cmp         dword ptr [ebp-8],20000000
>005C881A    jne         005C8825
 005C881C    mov         eax,dword ptr [ebp-4]
 005C881F    mov         byte ptr [eax+38],0;TBitmap.FTransparentMode:TTransparentMode
>005C8823    jmp         005C882C
 005C8825    mov         eax,dword ptr [ebp-4]
 005C8828    mov         byte ptr [eax+38],1;TBitmap.FTransparentMode:TTransparentMode
 005C882C    mov         eax,dword ptr [ebp-8]
 005C882F    mov         edx,dword ptr [ebp-4]
 005C8832    mov         dword ptr [edx+34],eax;TBitmap.FTransparentColor:TColor
 005C8835    mov         eax,dword ptr [ebp-4]
 005C8838    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C883B    cmp         dword ptr [eax+4],1;TBitmapImage...........FRefCount:Integer
>005C883F    jle         005C886D
 005C8841    mov         eax,dword ptr [ebp-4]
 005C8844    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8847    mov         dword ptr [ebp-0C],eax
 005C884A    mov         eax,dword ptr [ebp-4]
 005C884D    call        005C757C
 005C8852    mov         eax,dword ptr [ebp-0C]
 005C8855    add         eax,18;TBitmapImage.FDIB:TDIBSection
 005C8858    push        eax
 005C8859    mov         eax,dword ptr [ebp-0C]
 005C885C    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C885F    mov         eax,dword ptr [ebp-0C]
 005C8862    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C8865    mov         eax,dword ptr [ebp-4]
 005C8868    call        005C6BC8
 005C886D    mov         edx,dword ptr [ebp-4]
 005C8870    mov         eax,dword ptr [ebp-4]
 005C8873    mov         ecx,dword ptr [eax]
 005C8875    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C8878    mov         esp,ebp
 005C887A    pop         ebp
 005C887B    ret
end;*}

//005C887C
{*procedure TBitmap.SetWidth(?:?);
begin
 005C887C    push        ebp
 005C887D    mov         ebp,esp
 005C887F    add         esp,0FFFFFFA0
 005C8882    push        esi
 005C8883    push        edi
 005C8884    mov         dword ptr [ebp-8],edx
 005C8887    mov         dword ptr [ebp-4],eax
 005C888A    mov         eax,dword ptr [ebp-4]
 005C888D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8890    mov         dword ptr [ebp-0C],eax
 005C8893    mov         eax,dword ptr [ebp-0C]
 005C8896    mov         eax,dword ptr [eax+1C]
 005C8899    cmp         eax,dword ptr [ebp-8]
>005C889C    je          005C88E5
 005C889E    mov         eax,dword ptr [ebp-4]
 005C88A1    call        005C757C
 005C88A6    mov         eax,dword ptr [ebp-0C]
 005C88A9    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C88AC    lea         edi,[ebp-60]
 005C88AF    mov         ecx,15
 005C88B4    rep movs    dword ptr [edi],dword ptr [esi]
 005C88B6    mov         eax,dword ptr [ebp-8]
 005C88B9    mov         dword ptr [ebp-5C],eax
 005C88BC    mov         eax,dword ptr [ebp-8]
 005C88BF    mov         dword ptr [ebp-44],eax
 005C88C2    lea         eax,[ebp-60]
 005C88C5    push        eax
 005C88C6    mov         eax,dword ptr [ebp-0C]
 005C88C9    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C88CC    mov         eax,dword ptr [ebp-0C]
 005C88CF    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C88D2    mov         eax,dword ptr [ebp-4]
 005C88D5    call        005C6BC8
 005C88DA    mov         edx,dword ptr [ebp-4]
 005C88DD    mov         eax,dword ptr [ebp-4]
 005C88E0    mov         ecx,dword ptr [eax]
 005C88E2    call        dword ptr [ecx+10];TBitmap.sub_005C6CD8
 005C88E5    pop         edi
 005C88E6    pop         esi
 005C88E7    mov         esp,ebp
 005C88E9    pop         ebp
 005C88EA    ret
end;*}

//005C88EC
{*procedure sub_005C88EC(?:?);
begin
 005C88EC    push        ebp
 005C88ED    mov         ebp,esp
 005C88EF    add         esp,0FFFFFFF8
 005C88F2    mov         dword ptr [ebp-8],edx
 005C88F5    mov         dword ptr [ebp-4],eax
 005C88F8    mov         cl,1
 005C88FA    mov         edx,dword ptr [ebp-8]
 005C88FD    mov         eax,dword ptr [ebp-4]
 005C8900    call        005C890C
 005C8905    pop         ecx
 005C8906    pop         ecx
 005C8907    pop         ebp
 005C8908    ret
end;*}

//005C890C
{*procedure sub_005C890C(?:TBitmap; ?:?; ?:?);
begin
 005C890C    push        ebp
 005C890D    mov         ebp,esp
 005C890F    add         esp,0FFFFFBC0
 005C8915    push        ebx
 005C8916    mov         byte ptr [ebp-9],cl
 005C8919    mov         dword ptr [ebp-8],edx
 005C891C    mov         dword ptr [ebp-4],eax
 005C891F    lea         eax,[ebp-32]
 005C8922    xor         ecx,ecx
 005C8924    mov         edx,0E
 005C8929    call        @FillChar
 005C892E    mov         word ptr [ebp-32],4D42
 005C8934    mov         eax,dword ptr [ebp-4]
 005C8937    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C893A    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>005C893E    je          005C8990
 005C8940    mov         eax,dword ptr [ebp-4]
 005C8943    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8946    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 005C8949    call        TStream.GetSize
 005C894E    mov         dword ptr [ebp-10],eax
 005C8951    cmp         byte ptr [ebp-9],0
>005C8955    je          005C8967
 005C8957    lea         edx,[ebp-10]
 005C895A    mov         ecx,4
 005C895F    mov         eax,dword ptr [ebp-8]
 005C8962    call        TStream.WriteBuffer
 005C8967    mov         eax,dword ptr [ebp-4]
 005C896A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C896D    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 005C8970    call        TStream.GetSize
 005C8975    mov         ecx,eax
 005C8977    mov         eax,dword ptr [ebp-4]
 005C897A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C897D    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 005C8980    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 005C8983    mov         eax,dword ptr [ebp-8]
 005C8986    mov         ebx,dword ptr [eax]
 005C8988    call        dword ptr [ebx+0C]
>005C898B    jmp         005C8C42
 005C8990    mov         eax,dword ptr [ebp-4]
 005C8993    call        005C7488
 005C8998    mov         eax,dword ptr [ebp-4]
 005C899B    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C899E    mov         dword ptr [ebp-20],eax
 005C89A1    xor         eax,eax
 005C89A3    mov         dword ptr [ebp-10],eax
 005C89A6    mov         eax,dword ptr [ebp-20]
 005C89A9    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>005C89AD    je          005C8AFD
 005C89B3    mov         eax,dword ptr [ebp-20]
 005C89B6    mov         eax,dword ptr [eax+50]
 005C89B9    push        eax
 005C89BA    lea         ecx,[ebp-10]
 005C89BD    lea         edx,[ebp-18]
 005C89C0    mov         eax,dword ptr [ebp-20]
 005C89C3    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C89C6    call        005C2FB0
 005C89CB    mov         eax,dword ptr [ebp-20]
 005C89CE    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>005C89D2    je          005C89F9
 005C89D4    mov         dword ptr [ebp-18],0C
 005C89DB    mov         eax,dword ptr [ebp-20]
 005C89DE    cmp         word ptr [eax+3E],8
>005C89E3    ja          005C89F9
 005C89E5    mov         eax,dword ptr [ebp-20]
 005C89E8    mov         cx,word ptr [eax+3E]
 005C89EC    mov         eax,1
 005C89F1    shl         eax,cl
 005C89F3    lea         eax,[eax+eax*2]
 005C89F6    add         dword ptr [ebp-18],eax
 005C89F9    mov         eax,dword ptr [ebp-18]
 005C89FC    add         eax,0E
 005C89FF    add         dword ptr [ebp-10],eax
 005C8A02    lea         eax,[ebp-32]
 005C8A05    xor         ecx,ecx
 005C8A07    mov         edx,0E
 005C8A0C    call        @FillChar
 005C8A11    mov         word ptr [ebp-32],4D42
 005C8A17    mov         eax,dword ptr [ebp-4]
 005C8A1A    call        TBitmap.GetCanvas
 005C8A1F    mov         dl,byte ptr ds:[5C8C48];0x1 gvar_005C8C48
 005C8A25    call        005C1AEC
 005C8A2A    mov         eax,dword ptr [ebp-20]
 005C8A2D    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 005C8A30    push        eax
 005C8A31    mov         eax,dword ptr [ebp-4]
 005C8A34    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C8A37    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C8A3A    push        eax
 005C8A3B    call        GDI32.SelectObject
 005C8A40    call        005C1EEC
 005C8A45    mov         dword ptr [ebp-1C],eax
 005C8A48    lea         eax,[ebp-43E]
 005C8A4E    push        eax
 005C8A4F    push        100
 005C8A54    push        0
 005C8A56    mov         eax,dword ptr [ebp-4]
 005C8A59    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C8A5C    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C8A5F    push        eax
 005C8A60    call        GDI32.GetDIBColorTable
 005C8A65    mov         dword ptr [ebp-14],eax
 005C8A68    mov         eax,dword ptr [ebp-1C]
 005C8A6B    push        eax
 005C8A6C    mov         eax,dword ptr [ebp-4]
 005C8A6F    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C8A72    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 005C8A75    push        eax
 005C8A76    call        GDI32.SelectObject
 005C8A7B    mov         eax,dword ptr [ebp-20]
 005C8A7E    cmp         dword ptr [eax+50],0
>005C8A82    jbe         005C8A98
 005C8A84    mov         eax,dword ptr [ebp-20]
 005C8A87    mov         eax,dword ptr [eax+50]
 005C8A8A    cmp         eax,dword ptr [ebp-14]
>005C8A8D    jae         005C8A98
 005C8A8F    mov         eax,dword ptr [ebp-20]
 005C8A92    mov         eax,dword ptr [eax+50]
 005C8A95    mov         dword ptr [ebp-14],eax
 005C8A98    mov         eax,dword ptr [ebp-20]
 005C8A9B    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>005C8A9F    jne         005C8AEE
 005C8AA1    cmp         dword ptr [ebp-14],0
>005C8AA5    jne         005C8AEE
 005C8AA7    mov         eax,dword ptr [ebp-20]
 005C8AAA    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>005C8AAE    je          005C8AEE
 005C8AB0    mov         eax,dword ptr [ebp-20]
 005C8AB3    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>005C8AB7    jne         005C8AEE
 005C8AB9    lea         edx,[ebp-43E]
 005C8ABF    mov         ecx,0FF
 005C8AC4    mov         eax,dword ptr [ebp-20]
 005C8AC7    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8ACA    call        005C27F0
 005C8ACF    mov         dword ptr [ebp-14],eax
 005C8AD2    mov         eax,dword ptr [ebp-20]
 005C8AD5    cmp         word ptr [eax+3E],8
>005C8ADA    jbe         005C8AEE
 005C8ADC    mov         eax,dword ptr [ebp-14]
 005C8ADF    shl         eax,2
 005C8AE2    add         dword ptr [ebp-10],eax
 005C8AE5    mov         eax,dword ptr [ebp-14]
 005C8AE8    shl         eax,2
 005C8AEB    add         dword ptr [ebp-18],eax
 005C8AEE    mov         eax,dword ptr [ebp-10]
 005C8AF1    mov         dword ptr [ebp-30],eax
 005C8AF4    mov         eax,dword ptr [ebp-18]
 005C8AF7    add         eax,0E
 005C8AFA    mov         dword ptr [ebp-28],eax
 005C8AFD    cmp         byte ptr [ebp-9],0
>005C8B01    je          005C8B13
 005C8B03    lea         edx,[ebp-10]
 005C8B06    mov         ecx,4
 005C8B0B    mov         eax,dword ptr [ebp-8]
 005C8B0E    call        TStream.WriteBuffer
 005C8B13    cmp         dword ptr [ebp-10],0
>005C8B17    je          005C8C42
 005C8B1D    mov         eax,dword ptr [ebp-20]
 005C8B20    add         eax,18;TBitmapImage.FDIB:TDIBSection
 005C8B23    call        005C6078
 005C8B28    cmp         dword ptr [ebp-14],0
>005C8B2C    je          005C8B62
 005C8B2E    mov         eax,dword ptr [ebp-20]
 005C8B31    cmp         dword ptr [eax+50],0
>005C8B35    je          005C8B42
 005C8B37    mov         eax,dword ptr [ebp-20]
 005C8B3A    mov         eax,dword ptr [eax+50]
 005C8B3D    cmp         eax,dword ptr [ebp-14]
>005C8B40    je          005C8B4B
 005C8B42    mov         eax,dword ptr [ebp-14]
 005C8B45    mov         edx,dword ptr [ebp-20]
 005C8B48    mov         dword ptr [edx+50],eax
 005C8B4B    mov         eax,dword ptr [ebp-20]
 005C8B4E    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>005C8B52    je          005C8B62
 005C8B54    lea         edx,[ebp-14]
 005C8B57    lea         eax,[ebp-43E]
 005C8B5D    call        005C2438
 005C8B62    mov         eax,dword ptr [ebp-20]
 005C8B65    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>005C8B69    je          005C8BC4
 005C8B6B    mov         eax,dword ptr [ebp-20]
 005C8B6E    add         eax,30
 005C8B71    mov         dword ptr [ebp-24],eax
 005C8B74    mov         dword ptr [ebp-3E],0C
 005C8B7B    mov         eax,dword ptr [ebp-24]
 005C8B7E    mov         ax,word ptr [eax+4]
 005C8B82    mov         word ptr [ebp-3A],ax
 005C8B86    mov         eax,dword ptr [ebp-24]
 005C8B89    mov         ax,word ptr [eax+8]
 005C8B8D    mov         word ptr [ebp-38],ax
 005C8B91    mov         word ptr [ebp-36],1
 005C8B97    mov         eax,dword ptr [ebp-24]
 005C8B9A    mov         ax,word ptr [eax+0E]
 005C8B9E    mov         word ptr [ebp-34],ax
 005C8BA2    lea         edx,[ebp-32]
 005C8BA5    mov         ecx,0E
 005C8BAA    mov         eax,dword ptr [ebp-8]
 005C8BAD    call        TStream.WriteBuffer
 005C8BB2    lea         edx,[ebp-3E]
 005C8BB5    mov         ecx,0C
 005C8BBA    mov         eax,dword ptr [ebp-8]
 005C8BBD    call        TStream.WriteBuffer
>005C8BC2    jmp         005C8C0D
 005C8BC4    lea         edx,[ebp-32]
 005C8BC7    mov         ecx,0E
 005C8BCC    mov         eax,dword ptr [ebp-8]
 005C8BCF    call        TStream.WriteBuffer
 005C8BD4    mov         eax,dword ptr [ebp-20]
 005C8BD7    lea         edx,[eax+30]
 005C8BDA    mov         ecx,28
 005C8BDF    mov         eax,dword ptr [ebp-8]
 005C8BE2    call        TStream.WriteBuffer
 005C8BE7    mov         eax,dword ptr [ebp-20]
 005C8BEA    cmp         word ptr [eax+3E],8
>005C8BEF    jbe         005C8C0D
 005C8BF1    mov         eax,dword ptr [ebp-20]
 005C8BF4    test        byte ptr [eax+40],3
>005C8BF8    je          005C8C0D
 005C8BFA    mov         eax,dword ptr [ebp-20]
 005C8BFD    lea         edx,[eax+58]
 005C8C00    mov         ecx,0C
 005C8C05    mov         eax,dword ptr [ebp-8]
 005C8C08    call        TStream.WriteBuffer
 005C8C0D    mov         eax,dword ptr [ebp-20]
 005C8C10    movzx       eax,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 005C8C14    xor         ecx,ecx
 005C8C16    mov         cl,byte ptr [eax+6E3F88]
 005C8C1C    imul        ecx,dword ptr [ebp-14]
 005C8C20    lea         edx,[ebp-43E]
 005C8C26    mov         eax,dword ptr [ebp-8]
 005C8C29    call        TStream.WriteBuffer
 005C8C2E    mov         eax,dword ptr [ebp-20]
 005C8C31    mov         edx,dword ptr [eax+2C]
 005C8C34    mov         eax,dword ptr [ebp-20]
 005C8C37    mov         ecx,dword ptr [eax+44]
 005C8C3A    mov         eax,dword ptr [ebp-8]
 005C8C3D    call        TStream.WriteBuffer
 005C8C42    pop         ebx
 005C8C43    mov         esp,ebp
 005C8C45    pop         ebp
 005C8C46    ret
end;*}

//005C8C4C
{*function sub_005C8C4C(?:TBitmap):?;
begin
 005C8C4C    push        ebp
 005C8C4D    mov         ebp,esp
 005C8C4F    add         esp,0FFFFFFF4
 005C8C52    mov         dword ptr [ebp-4],eax
 005C8C55    mov         eax,dword ptr [ebp-4]
 005C8C58    call        005C757C
 005C8C5D    mov         edx,dword ptr [ebp-4]
 005C8C60    mov         eax,dword ptr [ebp-4]
 005C8C63    call        005C6C9C
 005C8C68    mov         eax,dword ptr [ebp-4]
 005C8C6B    mov         eax,dword ptr [eax+28]
 005C8C6E    mov         dword ptr [ebp-0C],eax
 005C8C71    mov         eax,dword ptr [ebp-0C]
 005C8C74    mov         eax,dword ptr [eax+8]
 005C8C77    mov         dword ptr [ebp-8],eax
 005C8C7A    mov         eax,dword ptr [ebp-0C]
 005C8C7D    mov         eax,dword ptr [eax+8]
 005C8C80    mov         edx,dword ptr [ebp-0C]
 005C8C83    cmp         eax,dword ptr [edx+14]
>005C8C86    jne         005C8C98
 005C8C88    mov         eax,dword ptr [ebp-0C]
 005C8C8B    xor         edx,edx
 005C8C8D    mov         dword ptr [eax+14],edx
 005C8C90    mov         eax,dword ptr [ebp-0C]
 005C8C93    xor         edx,edx
 005C8C95    mov         dword ptr [eax+2C],edx
 005C8C98    mov         eax,dword ptr [ebp-0C]
 005C8C9B    xor         edx,edx
 005C8C9D    mov         dword ptr [eax+8],edx
 005C8CA0    mov         eax,dword ptr [ebp-8]
 005C8CA3    mov         esp,ebp
 005C8CA5    pop         ebp
 005C8CA6    ret
end;*}

//005C8CA8
{*procedure TBitmap.SaveToStream(?:?);
begin
 005C8CA8    push        ebp
 005C8CA9    mov         ebp,esp
 005C8CAB    add         esp,0FFFFFFF8
 005C8CAE    mov         dword ptr [ebp-8],edx
 005C8CB1    mov         dword ptr [ebp-4],eax
 005C8CB4    xor         ecx,ecx
 005C8CB6    mov         edx,dword ptr [ebp-8]
 005C8CB9    mov         eax,dword ptr [ebp-4]
 005C8CBC    call        005C890C
 005C8CC1    pop         ecx
 005C8CC2    pop         ecx
 005C8CC3    pop         ebp
 005C8CC4    ret
end;*}

//005C8CC8
{*procedure TBitmap.SaveToClipboardFormat(?:?; ?:?; ?:?);
begin
 005C8CC8    push        ebp
 005C8CC9    mov         ebp,esp
 005C8CCB    add         esp,0FFFFFF9C
 005C8CCE    push        ebx
 005C8CCF    push        esi
 005C8CD0    push        edi
 005C8CD1    mov         dword ptr [ebp-0C],ecx
 005C8CD4    mov         dword ptr [ebp-8],edx
 005C8CD7    mov         dword ptr [ebp-4],eax
 005C8CDA    mov         eax,dword ptr [ebp-8]
 005C8CDD    mov         word ptr [eax],2
 005C8CE2    mov         eax,dword ptr [ebp-4]
 005C8CE5    call        005C757C
 005C8CEA    mov         eax,dword ptr [ebp-4]
 005C8CED    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8CF0    mov         dword ptr [ebp-10],eax
 005C8CF3    mov         eax,dword ptr [ebp-10]
 005C8CF6    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 005C8CF9    lea         edi,[ebp-64]
 005C8CFC    mov         ecx,15
 005C8D01    rep movs    dword ptr [edi],dword ptr [esi]
 005C8D03    xor         eax,eax
 005C8D05    mov         dword ptr [ebp-4C],eax
 005C8D08    xor         eax,eax
 005C8D0A    mov         dword ptr [ebp-50],eax
 005C8D0D    lea         eax,[ebp-64]
 005C8D10    push        eax
 005C8D11    mov         eax,dword ptr [ebp-4]
 005C8D14    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 005C8D17    push        eax
 005C8D18    mov         eax,dword ptr [ebp-10]
 005C8D1B    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8D1E    mov         eax,dword ptr [ebp-10]
 005C8D21    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8D24    mov         eax,dword ptr [ebp-10]
 005C8D27    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 005C8D2A    call        005C60E8
 005C8D2F    mov         edx,dword ptr [ebp-0C]
 005C8D32    mov         dword ptr [edx],eax
 005C8D34    xor         eax,eax
 005C8D36    push        ebp
 005C8D37    push        5C8D5F
 005C8D3C    push        dword ptr fs:[eax]
 005C8D3F    mov         dword ptr fs:[eax],esp
 005C8D42    mov         eax,dword ptr [ebp-4]
 005C8D45    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 005C8D48    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 005C8D4B    call        CopyPalette
 005C8D50    mov         edx,dword ptr [ebp+8]
 005C8D53    mov         dword ptr [edx],eax
 005C8D55    xor         eax,eax
 005C8D57    pop         edx
 005C8D58    pop         ecx
 005C8D59    pop         ecx
 005C8D5A    mov         dword ptr fs:[eax],edx
>005C8D5D    jmp         005C8D79
>005C8D5F    jmp         @HandleAnyException
 005C8D64    mov         eax,dword ptr [ebp-0C]
 005C8D67    mov         eax,dword ptr [eax]
 005C8D69    push        eax
 005C8D6A    call        GDI32.DeleteObject
 005C8D6F    call        @RaiseAgain
 005C8D74    call        @DoneExcept
 005C8D79    pop         edi
 005C8D7A    pop         esi
 005C8D7B    pop         ebx
 005C8D7C    mov         esp,ebp
 005C8D7E    pop         ebp
 005C8D7F    ret         4
end;*}

//005C8D84
destructor TIconImage.Destroy;
begin
{*
 005C8D84    push        ebp
 005C8D85    mov         ebp,esp
 005C8D87    add         esp,0FFFFFFF8
 005C8D8A    call        @BeforeDestruction
 005C8D8F    mov         byte ptr [ebp-5],dl
 005C8D92    mov         dword ptr [ebp-4],eax
 005C8D95    mov         eax,dword ptr [ebp-4]
 005C8D98    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 005C8D9B    call        TObject.Free
 005C8DA0    mov         dl,byte ptr [ebp-5]
 005C8DA3    and         dl,0FC
 005C8DA6    mov         eax,dword ptr [ebp-4]
 005C8DA9    call        TObject.Destroy
 005C8DAE    cmp         byte ptr [ebp-5],0
>005C8DB2    jle         005C8DBC
 005C8DB4    mov         eax,dword ptr [ebp-4]
 005C8DB7    call        @ClassDestroy
 005C8DBC    pop         ecx
 005C8DBD    pop         ecx
 005C8DBE    pop         ebp
 005C8DBF    ret
*}
end;

//005C8DC0
procedure sub_005C8DC0;
begin
{*
 005C8DC0    push        ebp
 005C8DC1    mov         ebp,esp
 005C8DC3    push        ecx
 005C8DC4    mov         dword ptr [ebp-4],eax
 005C8DC7    mov         eax,dword ptr [ebp-4]
 005C8DCA    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>005C8DCE    je          005C8DDC
 005C8DD0    mov         eax,dword ptr [ebp-4]
 005C8DD3    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 005C8DD6    push        eax
 005C8DD7    call        USER32.DestroyIcon
 005C8DDC    mov         eax,dword ptr [ebp-4]
 005C8DDF    xor         edx,edx
 005C8DE1    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 005C8DE4    pop         ecx
 005C8DE5    pop         ebp
 005C8DE6    ret
*}
end;

//005C8DE8
constructor TIcon.Create;
begin
{*
 005C8DE8    push        ebp
 005C8DE9    mov         ebp,esp
 005C8DEB    add         esp,0FFFFFFF8
 005C8DEE    test        dl,dl
>005C8DF0    je          005C8DFA
 005C8DF2    add         esp,0FFFFFFF0
 005C8DF5    call        @ClassCreate
 005C8DFA    mov         byte ptr [ebp-5],dl
 005C8DFD    mov         dword ptr [ebp-4],eax
 005C8E00    xor         edx,edx
 005C8E02    mov         eax,dword ptr [ebp-4]
 005C8E05    call        TGraphic.Create
 005C8E0A    mov         eax,dword ptr [ebp-4]
 005C8E0D    mov         byte ptr [eax+21],1;TIcon.FTransparent:Boolean
 005C8E11    mov         dl,1
 005C8E13    mov         eax,[005BEEBC];TIconImage
 005C8E18    call        TObject.Create;TIconImage.Create
 005C8E1D    mov         edx,dword ptr [ebp-4]
 005C8E20    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
 005C8E23    mov         eax,dword ptr [ebp-4]
 005C8E26    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8E29    call        TSharedImage.Reference
 005C8E2E    mov         eax,dword ptr [ebp-4]
 005C8E31    cmp         byte ptr [ebp-5],0
>005C8E35    je          005C8E46
 005C8E37    call        @AfterConstruction
 005C8E3C    pop         dword ptr fs:[0]
 005C8E43    add         esp,0C
 005C8E46    mov         eax,dword ptr [ebp-4]
 005C8E49    pop         ecx
 005C8E4A    pop         ecx
 005C8E4B    pop         ebp
 005C8E4C    ret
*}
end;

//005C8E50
destructor TIcon.Destroy;
begin
{*
 005C8E50    push        ebp
 005C8E51    mov         ebp,esp
 005C8E53    add         esp,0FFFFFFF8
 005C8E56    call        @BeforeDestruction
 005C8E5B    mov         byte ptr [ebp-5],dl
 005C8E5E    mov         dword ptr [ebp-4],eax
 005C8E61    mov         eax,dword ptr [ebp-4]
 005C8E64    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8E67    call        TSharedImage.Release
 005C8E6C    mov         dl,byte ptr [ebp-5]
 005C8E6F    and         dl,0FC
 005C8E72    mov         eax,dword ptr [ebp-4]
 005C8E75    call        TPersistent.Destroy
 005C8E7A    cmp         byte ptr [ebp-5],0
>005C8E7E    jle         005C8E88
 005C8E80    mov         eax,dword ptr [ebp-4]
 005C8E83    call        @ClassDestroy
 005C8E88    pop         ecx
 005C8E89    pop         ecx
 005C8E8A    pop         ebp
 005C8E8B    ret
*}
end;

//005C8E8C
procedure TIcon.Assign(Source:TPersistent);
begin
{*
 005C8E8C    push        ebp
 005C8E8D    mov         ebp,esp
 005C8E8F    add         esp,0FFFFFFF8
 005C8E92    mov         dword ptr [ebp-8],edx
 005C8E95    mov         dword ptr [ebp-4],eax
 005C8E98    cmp         dword ptr [ebp-8],0
>005C8E9C    je          005C8EB0
 005C8E9E    mov         eax,dword ptr [ebp-8]
 005C8EA1    mov         edx,dword ptr ds:[5BEF18];TIcon
 005C8EA7    call        @IsClass
 005C8EAC    test        al,al
>005C8EAE    je          005C8EF3
 005C8EB0    cmp         dword ptr [ebp-8],0
>005C8EB4    je          005C8EDA
 005C8EB6    mov         eax,dword ptr [ebp-8]
 005C8EB9    mov         eax,dword ptr [eax+28]
 005C8EBC    call        TSharedImage.Reference
 005C8EC1    mov         eax,dword ptr [ebp-4]
 005C8EC4    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8EC7    call        TSharedImage.Release
 005C8ECC    mov         eax,dword ptr [ebp-8]
 005C8ECF    mov         eax,dword ptr [eax+28]
 005C8ED2    mov         edx,dword ptr [ebp-4]
 005C8ED5    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
>005C8ED8    jmp         005C8EE6
 005C8EDA    xor         ecx,ecx
 005C8EDC    xor         edx,edx
 005C8EDE    mov         eax,dword ptr [ebp-4]
 005C8EE1    call        005C9220
 005C8EE6    mov         edx,dword ptr [ebp-4]
 005C8EE9    mov         eax,dword ptr [ebp-4]
 005C8EEC    mov         ecx,dword ptr [eax]
 005C8EEE    call        dword ptr [ecx+10];TIcon.sub_005C33B8
>005C8EF1    jmp         005C8EFE
 005C8EF3    mov         edx,dword ptr [ebp-8]
 005C8EF6    mov         eax,dword ptr [ebp-4]
 005C8EF9    call        TPersistent.Assign
 005C8EFE    pop         ecx
 005C8EFF    pop         ecx
 005C8F00    pop         ebp
 005C8F01    ret
*}
end;

//005C8F04
{*procedure TIcon.Draw(?:?; ?:?);
begin
 005C8F04    push        ebp
 005C8F05    mov         ebp,esp
 005C8F07    add         esp,0FFFFFFF4
 005C8F0A    mov         dword ptr [ebp-0C],ecx
 005C8F0D    mov         dword ptr [ebp-8],edx
 005C8F10    mov         dword ptr [ebp-4],eax
 005C8F13    mov         dl,byte ptr ds:[5C8F54];0x1 gvar_005C8F54
 005C8F19    mov         eax,dword ptr [ebp-8]
 005C8F1C    call        005C1AEC
 005C8F21    push        3
 005C8F23    push        0
 005C8F25    push        0
 005C8F27    push        0
 005C8F29    push        0
 005C8F2B    mov         eax,dword ptr [ebp-4]
 005C8F2E    call        005C8F8C
 005C8F33    push        eax
 005C8F34    mov         eax,dword ptr [ebp-0C]
 005C8F37    mov         eax,dword ptr [eax+4]
 005C8F3A    push        eax
 005C8F3B    mov         eax,dword ptr [ebp-0C]
 005C8F3E    mov         eax,dword ptr [eax]
 005C8F40    push        eax
 005C8F41    mov         eax,dword ptr [ebp-8]
 005C8F44    mov         eax,dword ptr [eax+4]
 005C8F47    push        eax
 005C8F48    call        USER32.DrawIconEx
 005C8F4D    mov         esp,ebp
 005C8F4F    pop         ebp
 005C8F50    ret
end;*}

//005C8F58
{*function TIcon.GetEmpty:?;
begin
 005C8F58    push        ebp
 005C8F59    mov         ebp,esp
 005C8F5B    add         esp,0FFFFFFF4
 005C8F5E    mov         dword ptr [ebp-4],eax
 005C8F61    mov         eax,dword ptr [ebp-4]
 005C8F64    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8F67    mov         dword ptr [ebp-0C],eax
 005C8F6A    mov         eax,dword ptr [ebp-0C]
 005C8F6D    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>005C8F71    jne         005C8F7C
 005C8F73    mov         eax,dword ptr [ebp-0C]
 005C8F76    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>005C8F7A    je          005C8F80
 005C8F7C    xor         eax,eax
>005C8F7E    jmp         005C8F82
 005C8F80    mov         al,1
 005C8F82    mov         byte ptr [ebp-5],al
 005C8F85    mov         al,byte ptr [ebp-5]
 005C8F88    mov         esp,ebp
 005C8F8A    pop         ebp
 005C8F8B    ret
end;*}

//005C8F8C
{*function sub_005C8F8C(?:TIcon):?;
begin
 005C8F8C    push        ebp
 005C8F8D    mov         ebp,esp
 005C8F8F    add         esp,0FFFFFFF8
 005C8F92    mov         dword ptr [ebp-4],eax
 005C8F95    mov         eax,dword ptr [ebp-4]
 005C8F98    call        005C9008
 005C8F9D    mov         eax,dword ptr [ebp-4]
 005C8FA0    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8FA3    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 005C8FA6    mov         dword ptr [ebp-8],eax
 005C8FA9    mov         eax,dword ptr [ebp-8]
 005C8FAC    pop         ecx
 005C8FAD    pop         ecx
 005C8FAE    pop         ebp
 005C8FAF    ret
end;*}

//005C8FB0
{*function TIcon.GetHeight:?;
begin
 005C8FB0    push        ebp
 005C8FB1    mov         ebp,esp
 005C8FB3    add         esp,0FFFFFFF8
 005C8FB6    mov         dword ptr [ebp-4],eax
 005C8FB9    mov         eax,dword ptr [ebp-4]
 005C8FBC    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8FBF    mov         eax,dword ptr [eax+14]
 005C8FC2    mov         dword ptr [ebp-8],eax
 005C8FC5    cmp         dword ptr [ebp-8],0
>005C8FC9    jne         005C8FD5
 005C8FCB    push        0C
 005C8FCD    call        USER32.GetSystemMetrics
 005C8FD2    mov         dword ptr [ebp-8],eax
 005C8FD5    mov         eax,dword ptr [ebp-8]
 005C8FD8    pop         ecx
 005C8FD9    pop         ecx
 005C8FDA    pop         ebp
 005C8FDB    ret
end;*}

//005C8FDC
{*function TIcon.GetWidth:?;
begin
 005C8FDC    push        ebp
 005C8FDD    mov         ebp,esp
 005C8FDF    add         esp,0FFFFFFF8
 005C8FE2    mov         dword ptr [ebp-4],eax
 005C8FE5    mov         eax,dword ptr [ebp-4]
 005C8FE8    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C8FEB    mov         eax,dword ptr [eax+10];TIconImage.FSize:TPoint
 005C8FEE    mov         dword ptr [ebp-8],eax
 005C8FF1    cmp         dword ptr [ebp-8],0
>005C8FF5    jne         005C9001
 005C8FF7    push        0B
 005C8FF9    call        USER32.GetSystemMetrics
 005C8FFE    mov         dword ptr [ebp-8],eax
 005C9001    mov         eax,dword ptr [ebp-8]
 005C9004    pop         ecx
 005C9005    pop         ecx
 005C9006    pop         ebp
 005C9007    ret
end;*}

//005C9008
procedure sub_005C9008(?:TIcon);
begin
{*
 005C9008    push        ebp
 005C9009    mov         ebp,esp
 005C900B    add         esp,0FFFFFFEC
 005C900E    mov         dword ptr [ebp-4],eax
 005C9011    mov         eax,dword ptr [ebp-4]
 005C9014    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C9017    mov         dword ptr [ebp-14],eax
 005C901A    mov         eax,dword ptr [ebp-14]
 005C901D    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>005C9021    jne         005C9098
 005C9023    mov         eax,dword ptr [ebp-14]
 005C9026    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>005C902A    je          005C9098
 005C902C    push        0
 005C902E    push        0
 005C9030    mov         eax,dword ptr [ebp-14]
 005C9033    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 005C9036    call        TStream.SetPosition
 005C903B    lea         edx,[ebp-0A]
 005C903E    mov         ecx,6
 005C9043    mov         eax,dword ptr [ebp-14]
 005C9046    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 005C9049    call        TStream.ReadBuffer
 005C904E    mov         ax,word ptr [ebp-8]
 005C9052    sub         ax,1
>005C9056    jb          005C905C
>005C9058    je          005C9066
>005C905A    jmp         005C908A
 005C905C    mov         eax,[006ECD34];0x0 gvar_006ECD34
 005C9061    mov         dword ptr [ebp-10],eax
>005C9064    jmp         005C908F
 005C9066    push        6
 005C9068    mov         eax,dword ptr [ebp-4]
 005C906B    add         eax,2C;TIcon.FRequestedSize:TPoint
 005C906E    push        eax
 005C906F    mov         eax,dword ptr [ebp-14]
 005C9072    add         eax,10;TIconImage.FSize:TPoint
 005C9075    push        eax
 005C9076    movzx       ecx,word ptr [ebp-6]
 005C907A    lea         edx,[ebp-10]
 005C907D    mov         eax,dword ptr [ebp-14]
 005C9080    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 005C9083    call        005C2AF0
>005C9088    jmp         005C908F
 005C908A    call        InvalidIcon
 005C908F    mov         eax,dword ptr [ebp-10]
 005C9092    mov         edx,dword ptr [ebp-14]
 005C9095    mov         dword ptr [edx+8],eax;TIconImage.FHandle:HICON
 005C9098    mov         esp,ebp
 005C909A    pop         ebp
 005C909B    ret
*}
end;

//005C909C
procedure sub_005C909C(?:TIcon);
begin
{*
 005C909C    push        ebp
 005C909D    mov         ebp,esp
 005C909F    add         esp,0FFFFFFEC
 005C90A2    push        ebx
 005C90A3    push        esi
 005C90A4    push        edi
 005C90A5    mov         dword ptr [ebp-4],eax
 005C90A8    mov         eax,dword ptr [ebp-4]
 005C90AB    mov         eax,dword ptr [eax+28]
 005C90AE    mov         dword ptr [ebp-14],eax
 005C90B1    mov         eax,dword ptr [ebp-14]
 005C90B4    cmp         dword ptr [eax+0C],0
>005C90B8    jne         005C9158
 005C90BE    mov         eax,dword ptr [ebp-14]
 005C90C1    cmp         dword ptr [eax+8],0
>005C90C5    jne         005C90CC
 005C90C7    call        InvalidIcon
 005C90CC    mov         dl,1
 005C90CE    mov         eax,[00642BA0];TMemoryStream
 005C90D3    call        TObject.Create;TMemoryStream.Create
 005C90D8    mov         dword ptr [ebp-8],eax
 005C90DB    xor         eax,eax
 005C90DD    push        ebp
 005C90DE    push        5C9138
 005C90E3    push        dword ptr fs:[eax]
 005C90E6    mov         dword ptr fs:[eax],esp
 005C90E9    mov         eax,dword ptr [ebp-4]
 005C90EC    call        005C8F8C
 005C90F1    cmp         eax,dword ptr ds:[6ECD34];0x0 gvar_006ECD34
>005C90F7    jne         005C911A
 005C90F9    lea         eax,[ebp-0E]
 005C90FC    xor         ecx,ecx
 005C90FE    mov         edx,6
 005C9103    call        @FillChar
 005C9108    lea         edx,[ebp-0E]
 005C910B    mov         ecx,6
 005C9110    mov         eax,dword ptr [ebp-8]
 005C9113    call        TStream.WriteBuffer
>005C9118    jmp         005C912E
 005C911A    mov         eax,dword ptr [ebp-4]
 005C911D    call        005C8F8C
 005C9122    mov         edx,eax
 005C9124    xor         ecx,ecx
 005C9126    mov         eax,dword ptr [ebp-8]
 005C9129    call        005C3158
 005C912E    xor         eax,eax
 005C9130    pop         edx
 005C9131    pop         ecx
 005C9132    pop         ecx
 005C9133    mov         dword ptr fs:[eax],edx
>005C9136    jmp         005C914F
>005C9138    jmp         @HandleAnyException
 005C913D    mov         eax,dword ptr [ebp-8]
 005C9140    call        TObject.Free
 005C9145    call        @RaiseAgain
 005C914A    call        @DoneExcept
 005C914F    mov         eax,dword ptr [ebp-14]
 005C9152    mov         edx,dword ptr [ebp-8]
 005C9155    mov         dword ptr [eax+0C],edx
 005C9158    pop         edi
 005C9159    pop         esi
 005C915A    pop         ebx
 005C915B    mov         esp,ebp
 005C915D    pop         ebp
 005C915E    ret
*}
end;

//005C9160
{*procedure TIcon.LoadFromStream(?:?);
begin
 005C9160    push        ebp
 005C9161    mov         ebp,esp
 005C9163    add         esp,0FFFFFFEC
 005C9166    push        ebx
 005C9167    push        esi
 005C9168    push        edi
 005C9169    mov         dword ptr [ebp-8],edx
 005C916C    mov         dword ptr [ebp-4],eax
 005C916F    mov         dl,1
 005C9171    mov         eax,[00642BA0];TMemoryStream
 005C9176    call        TObject.Create;TMemoryStream.Create
 005C917B    mov         dword ptr [ebp-0C],eax
 005C917E    xor         eax,eax
 005C9180    push        ebp
 005C9181    push        5C91F5
 005C9186    push        dword ptr fs:[eax]
 005C9189    mov         dword ptr fs:[eax],esp
 005C918C    mov         eax,dword ptr [ebp-8]
 005C918F    call        TStream.GetSize
 005C9194    push        eax
 005C9195    mov         eax,dword ptr [ebp-8]
 005C9198    call        TStream.GetPosition
 005C919D    pop         edx
 005C919E    sub         edx,eax
 005C91A0    mov         eax,dword ptr [ebp-0C]
 005C91A3    mov         ecx,dword ptr [eax]
 005C91A5    call        dword ptr [ecx];TMemoryStream.sub_00649128
 005C91A7    mov         eax,dword ptr [ebp-0C]
 005C91AA    call        TStream.GetSize
 005C91AF    mov         ecx,eax
 005C91B1    mov         eax,dword ptr [ebp-0C]
 005C91B4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 005C91B7    mov         eax,dword ptr [ebp-8]
 005C91BA    call        TStream.ReadBuffer
 005C91BF    lea         edx,[ebp-12]
 005C91C2    mov         ecx,6
 005C91C7    mov         eax,dword ptr [ebp-0C]
 005C91CA    call        TStream.ReadBuffer
 005C91CF    mov         ax,word ptr [ebp-10]
 005C91D3    sub         ax,2
>005C91D7    jb          005C91DE
 005C91D9    call        InvalidIcon
 005C91DE    mov         ecx,dword ptr [ebp-0C]
 005C91E1    xor         edx,edx
 005C91E3    mov         eax,dword ptr [ebp-4]
 005C91E6    call        005C9220
 005C91EB    xor         eax,eax
 005C91ED    pop         edx
 005C91EE    pop         ecx
 005C91EF    pop         ecx
 005C91F0    mov         dword ptr fs:[eax],edx
>005C91F3    jmp         005C920C
>005C91F5    jmp         @HandleAnyException
 005C91FA    mov         eax,dword ptr [ebp-0C]
 005C91FD    call        TObject.Free
 005C9202    call        @RaiseAgain
 005C9207    call        @DoneExcept
 005C920C    mov         edx,dword ptr [ebp-4]
 005C920F    mov         eax,dword ptr [ebp-4]
 005C9212    mov         ecx,dword ptr [eax]
 005C9214    call        dword ptr [ecx+10];TIcon.sub_005C33B8
 005C9217    pop         edi
 005C9218    pop         esi
 005C9219    pop         ebx
 005C921A    mov         esp,ebp
 005C921C    pop         ebp
 005C921D    ret
end;*}

//005C9220
{*procedure sub_005C9220(?:TIcon; ?:?; ?:TMemoryStream);
begin
 005C9220    push        ebp
 005C9221    mov         ebp,esp
 005C9223    add         esp,0FFFFFFF0
 005C9226    push        ebx
 005C9227    push        esi
 005C9228    push        edi
 005C9229    mov         dword ptr [ebp-0C],ecx
 005C922C    mov         dword ptr [ebp-8],edx
 005C922F    mov         dword ptr [ebp-4],eax
 005C9232    mov         dl,1
 005C9234    mov         eax,[005BEEBC];TIconImage
 005C9239    call        TObject.Create;TIconImage.Create
 005C923E    mov         dword ptr [ebp-10],eax
 005C9241    xor         eax,eax
 005C9243    push        ebp
 005C9244    push        5C926B
 005C9249    push        dword ptr fs:[eax]
 005C924C    mov         dword ptr fs:[eax],esp
 005C924F    mov         eax,dword ptr [ebp-10]
 005C9252    mov         edx,dword ptr [ebp-8]
 005C9255    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 005C9258    mov         eax,dword ptr [ebp-10]
 005C925B    mov         edx,dword ptr [ebp-0C]
 005C925E    mov         dword ptr [eax+0C],edx;TIconImage.FMemoryImage:TCustomMemoryStream
 005C9261    xor         eax,eax
 005C9263    pop         edx
 005C9264    pop         ecx
 005C9265    pop         ecx
 005C9266    mov         dword ptr fs:[eax],edx
>005C9269    jmp         005C9282
>005C926B    jmp         @HandleAnyException
 005C9270    mov         eax,dword ptr [ebp-10]
 005C9273    call        TObject.Free
 005C9278    call        @RaiseAgain
 005C927D    call        @DoneExcept
 005C9282    mov         eax,dword ptr [ebp-10]
 005C9285    call        TSharedImage.Reference
 005C928A    mov         eax,dword ptr [ebp-4]
 005C928D    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C9290    call        TSharedImage.Release
 005C9295    mov         eax,dword ptr [ebp-4]
 005C9298    mov         edx,dword ptr [ebp-10]
 005C929B    mov         dword ptr [eax+28],edx;TIcon.FImage:TIconImage
 005C929E    pop         edi
 005C929F    pop         esi
 005C92A0    pop         ebx
 005C92A1    mov         esp,ebp
 005C92A3    pop         ebp
 005C92A4    ret
end;*}

//005C92A8
{*procedure sub_005C92A8(?:TIcon; ?:?);
begin
 005C92A8    push        ebp
 005C92A9    mov         ebp,esp
 005C92AB    add         esp,0FFFFFFF8
 005C92AE    mov         dword ptr [ebp-8],edx
 005C92B1    mov         dword ptr [ebp-4],eax
 005C92B4    xor         ecx,ecx
 005C92B6    mov         edx,dword ptr [ebp-8]
 005C92B9    mov         eax,dword ptr [ebp-4]
 005C92BC    call        005C9220
 005C92C1    mov         edx,dword ptr [ebp-4]
 005C92C4    mov         eax,dword ptr [ebp-4]
 005C92C7    mov         ecx,dword ptr [eax]
 005C92C9    call        dword ptr [ecx+10]
 005C92CC    pop         ecx
 005C92CD    pop         ecx
 005C92CE    pop         ebp
 005C92CF    ret
end;*}

//005C92D0
{*procedure TIcon.SetHeight(?:?);
begin
 005C92D0    push        ebp
 005C92D1    mov         ebp,esp
 005C92D3    add         esp,0FFFFFFF8
 005C92D6    mov         dword ptr [ebp-8],edx
 005C92D9    mov         dword ptr [ebp-4],eax
 005C92DC    mov         eax,dword ptr [ebp-4]
 005C92DF    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C92E2    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>005C92E6    jne         005C92F3
 005C92E8    mov         eax,dword ptr [ebp-8]
 005C92EB    mov         edx,dword ptr [ebp-4]
 005C92EE    mov         dword ptr [edx+30],eax
>005C92F1    jmp         005C92FD
 005C92F3    mov         eax,[006E9E00];^gvar_0063CA10
 005C92F8    call        005C1D88
 005C92FD    pop         ecx
 005C92FE    pop         ecx
 005C92FF    pop         ebp
 005C9300    ret
end;*}

//005C9304
{*procedure sub_005C9304(?:?);
begin
 005C9304    push        ebp
 005C9305    mov         ebp,esp
 005C9307    add         esp,0FFFFFFF8
 005C930A    mov         byte ptr [ebp-5],dl
 005C930D    mov         dword ptr [ebp-4],eax
 005C9310    pop         ecx
 005C9311    pop         ecx
 005C9312    pop         ebp
 005C9313    ret
end;*}

//005C9314
{*procedure TIcon.SetWidth(?:?);
begin
 005C9314    push        ebp
 005C9315    mov         ebp,esp
 005C9317    add         esp,0FFFFFFF8
 005C931A    mov         dword ptr [ebp-8],edx
 005C931D    mov         dword ptr [ebp-4],eax
 005C9320    mov         eax,dword ptr [ebp-4]
 005C9323    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C9326    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>005C932A    jne         005C9337
 005C932C    mov         eax,dword ptr [ebp-8]
 005C932F    mov         edx,dword ptr [ebp-4]
 005C9332    mov         dword ptr [edx+2C],eax;TIcon.FRequestedSize:TPoint
>005C9335    jmp         005C9341
 005C9337    mov         eax,[006E9E00];^gvar_0063CA10
 005C933C    call        005C1D88
 005C9341    pop         ecx
 005C9342    pop         ecx
 005C9343    pop         ebp
 005C9344    ret
end;*}

//005C9348
{*procedure TIcon.SaveToStream(?:?);
begin
 005C9348    push        ebp
 005C9349    mov         ebp,esp
 005C934B    add         esp,0FFFFFFF4
 005C934E    mov         dword ptr [ebp-8],edx
 005C9351    mov         dword ptr [ebp-4],eax
 005C9354    mov         eax,dword ptr [ebp-4]
 005C9357    call        005C909C
 005C935C    mov         eax,dword ptr [ebp-4]
 005C935F    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 005C9362    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 005C9365    mov         dword ptr [ebp-0C],eax
 005C9368    mov         eax,dword ptr [ebp-0C]
 005C936B    call        TStream.GetSize
 005C9370    mov         ecx,eax
 005C9372    mov         eax,dword ptr [ebp-0C]
 005C9375    mov         edx,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 005C9378    mov         eax,dword ptr [ebp-8]
 005C937B    call        TStream.WriteBuffer
 005C9380    mov         esp,ebp
 005C9382    pop         ebp
 005C9383    ret
end;*}

//005C9384
{*procedure TIcon.LoadFromClipboardFormat(?:?; ?:?);
begin
 005C9384    push        ebp
 005C9385    mov         ebp,esp
 005C9387    add         esp,0FFFFFFF4
 005C938A    mov         dword ptr [ebp-0C],ecx
 005C938D    mov         word ptr [ebp-6],dx
 005C9391    mov         dword ptr [ebp-4],eax
 005C9394    mov         eax,[006E9F8C];^gvar_0063CD28
 005C9399    call        005C1D88
 005C939E    mov         esp,ebp
 005C93A0    pop         ebp
 005C93A1    ret         4
end;*}

//005C93A4
{*procedure TIcon.SaveToClipboardFormat(?:?; ?:?);
begin
 005C93A4    push        ebp
 005C93A5    mov         ebp,esp
 005C93A7    add         esp,0FFFFFFF4
 005C93AA    mov         dword ptr [ebp-0C],ecx
 005C93AD    mov         dword ptr [ebp-8],edx
 005C93B0    mov         dword ptr [ebp-4],eax
 005C93B3    mov         eax,[006E9F8C];^gvar_0063CD28
 005C93B8    call        005C1D88
 005C93BD    mov         esp,ebp
 005C93BF    pop         ebp
 005C93C0    ret         4
end;*}

//005C93C4
{*procedure sub_005C93C4(?:TGraphic; ?:?);
begin
 005C93C4    push        ebp
 005C93C5    mov         ebp,esp
 005C93C7    add         esp,0FFFFFFF4
 005C93CA    xor         ecx,ecx
 005C93CC    mov         dword ptr [ebp-0C],ecx
 005C93CF    mov         dword ptr [ebp-8],edx
 005C93D2    mov         dword ptr [ebp-4],eax
 005C93D5    xor         eax,eax
 005C93D7    push        ebp
 005C93D8    push        5C940D
 005C93DD    push        dword ptr fs:[eax]
 005C93E0    mov         dword ptr fs:[eax],esp
 005C93E3    lea         eax,[ebp-0C]
 005C93E6    push        eax
 005C93E7    call        005C40A0
 005C93EC    mov         ecx,dword ptr [ebp-8]
 005C93EF    mov         edx,dword ptr [ebp-4]
 005C93F2    call        005C3C24
 005C93F7    xor         eax,eax
 005C93F9    pop         edx
 005C93FA    pop         ecx
 005C93FB    pop         ecx
 005C93FC    mov         dword ptr fs:[eax],edx
 005C93FF    push        5C9414
 005C9404    lea         eax,[ebp-0C]
 005C9407    call        @LStrClr
 005C940C    ret
>005C940D    jmp         @HandleFinally
>005C9412    jmp         005C9404
 005C9414    mov         esp,ebp
 005C9416    pop         ebp
 005C9417    ret
end;*}

//005C9418
procedure sub_005C9418;
begin
{*
 005C9418    push        ebp
 005C9419    mov         ebp,esp
 005C941B    push        ecx
 005C941C    push        0
 005C941E    call        USER32.GetDC
 005C9423    mov         dword ptr [ebp-4],eax
 005C9426    push        5A
 005C9428    mov         eax,dword ptr [ebp-4]
 005C942B    push        eax
 005C942C    call        GDI32.GetDeviceCaps
 005C9431    mov         [006ECD24],eax;gvar_006ECD24
 005C9436    mov         eax,dword ptr [ebp-4]
 005C9439    push        eax
 005C943A    push        0
 005C943C    call        USER32.ReleaseDC
 005C9441    mov         eax,6E3F8C
 005C9446    mov         edx,0F
 005C944B    call        005C253C
 005C9450    mov         [006ECD1C],eax;SystemPalette16:HPALETTE
 005C9455    pop         ecx
 005C9456    pop         ebp
 005C9457    ret
*}
end;

//005C9458
function GetDefFontCharSet:TFontCharset;
begin
{*
 005C9458    push        ebp
 005C9459    mov         ebp,esp
 005C945B    add         esp,0FFFFFFC0
 005C945E    mov         byte ptr [ebp-1],1
 005C9462    push        0
 005C9464    call        USER32.GetDC
 005C9469    mov         dword ptr [ebp-8],eax
 005C946C    cmp         dword ptr [ebp-8],0
>005C9470    je          005C94A7
 005C9472    mov         eax,[006ECD30];gvar_006ECD30
 005C9477    push        eax
 005C9478    mov         eax,dword ptr [ebp-8]
 005C947B    push        eax
 005C947C    call        GDI32.SelectObject
 005C9481    test        eax,eax
>005C9483    je          005C949C
 005C9485    lea         eax,[ebp-40]
 005C9488    push        eax
 005C9489    mov         eax,dword ptr [ebp-8]
 005C948C    push        eax
 005C948D    call        GDI32.GetTextMetricsA
 005C9492    test        eax,eax
>005C9494    je          005C949C
 005C9496    mov         al,byte ptr [ebp-0C]
 005C9499    mov         byte ptr [ebp-1],al
 005C949C    mov         eax,dword ptr [ebp-8]
 005C949F    push        eax
 005C94A0    push        0
 005C94A2    call        USER32.ReleaseDC
 005C94A7    mov         al,byte ptr [ebp-1]
 005C94AA    mov         esp,ebp
 005C94AC    pop         ebp
 005C94AD    ret
*}
end;

//005C94B0
procedure sub_005C94B0;
begin
{*
 005C94B0    push        ebp
 005C94B1    mov         ebp,esp
 005C94B3    push        ecx
 005C94B4    push        esi
 005C94B5    push        edi
 005C94B6    push        48
 005C94B8    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C94BD    push        eax
 005C94BE    push        8
 005C94C0    call        KERNEL32.MulDiv
 005C94C5    neg         eax
 005C94C7    mov         [006E3CC4],eax;gvar_006E3CC4
 005C94CC    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005C94D1    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005C94D5    je          005C9512
 005C94D7    call        GetDefFontCharSet
 005C94DC    mov         byte ptr [ebp-1],al
 005C94DF    mov         al,byte ptr [ebp-1]
 005C94E2    sub         al,80
>005C94E4    jne         005C9512
 005C94E6    mov         esi,5C9518
 005C94EB    mov         edi,6E3CCB
 005C94F0    movs        dword ptr [edi],dword ptr [esi]
 005C94F1    movs        dword ptr [edi],dword ptr [esi]
 005C94F2    movs        dword ptr [edi],dword ptr [esi]
 005C94F3    movs        dword ptr [edi],dword ptr [esi]
 005C94F4    push        48
 005C94F6    mov         eax,[006ECD24];0x0 gvar_006ECD24
 005C94FB    push        eax
 005C94FC    push        9
 005C94FE    call        KERNEL32.MulDiv
 005C9503    neg         eax
 005C9505    mov         [006E3CC4],eax;gvar_006E3CC4
 005C950A    mov         al,byte ptr [ebp-1]
 005C950D    mov         [006E3CCA],al;gvar_006E3CCA:TFontCharset
 005C9512    pop         edi
 005C9513    pop         esi
 005C9514    pop         ecx
 005C9515    pop         ebp
 005C9516    ret
*}
end;

//005C9584
constructor TPatternManager.Create;
begin
{*
 005C9584    push        ebp
 005C9585    mov         ebp,esp
 005C9587    add         esp,0FFFFFFF8
 005C958A    test        dl,dl
>005C958C    je          005C9596
 005C958E    add         esp,0FFFFFFF0
 005C9591    call        @ClassCreate
 005C9596    mov         byte ptr [ebp-5],dl
 005C9599    mov         dword ptr [ebp-4],eax
 005C959C    mov         eax,dword ptr [ebp-4]
 005C959F    add         eax,8
 005C95A2    push        eax
 005C95A3    call        KERNEL32.InitializeCriticalSection
 005C95A8    mov         eax,dword ptr [ebp-4]
 005C95AB    cmp         byte ptr [ebp-5],0
>005C95AF    je          005C95C0
 005C95B1    call        @AfterConstruction
 005C95B6    pop         dword ptr fs:[0]
 005C95BD    add         esp,0C
 005C95C0    mov         eax,dword ptr [ebp-4]
 005C95C3    pop         ecx
 005C95C4    pop         ecx
 005C95C5    pop         ebp
 005C95C6    ret
*}
end;

//005C9600
{*procedure sub_005C9600(?:?);
begin
 005C9600    push        ebp
 005C9601    mov         ebp,esp
 005C9603    push        ecx
 005C9604    mov         dword ptr [ebp-4],eax
 005C9607    mov         eax,dword ptr [ebp-4]
 005C960A    add         eax,8
 005C960D    push        eax
 005C960E    call        KERNEL32.EnterCriticalSection
 005C9613    pop         ecx
 005C9614    pop         ebp
 005C9615    ret
end;*}

//005C9618
{*procedure sub_005C9618(?:?);
begin
 005C9618    push        ebp
 005C9619    mov         ebp,esp
 005C961B    push        ecx
 005C961C    mov         dword ptr [ebp-4],eax
 005C961F    mov         eax,dword ptr [ebp-4]
 005C9622    add         eax,8
 005C9625    push        eax
 005C9626    call        KERNEL32.LeaveCriticalSection
 005C962B    pop         ecx
 005C962C    pop         ebp
 005C962D    ret
end;*}

//005C9630
{*function sub_005C9630(?:TPatternManager; ?:Longint; ?:?):?;
begin
 005C9630    push        ebp
 005C9631    mov         ebp,esp
 005C9633    add         esp,0FFFFFFEC
 005C9636    mov         dword ptr [ebp-0C],ecx
 005C9639    mov         dword ptr [ebp-8],edx
 005C963C    mov         dword ptr [ebp-4],eax
 005C963F    mov         eax,dword ptr [ebp-4]
 005C9642    call        005C9600
 005C9647    xor         eax,eax
 005C9649    push        ebp
 005C964A    push        5C96ED
 005C964F    push        dword ptr fs:[eax]
 005C9652    mov         dword ptr fs:[eax],esp
 005C9655    mov         eax,dword ptr [ebp-4]
 005C9658    mov         eax,dword ptr [eax+4]
 005C965B    mov         dword ptr [ebp-10],eax
>005C965E    jmp         005C9668
 005C9660    mov         eax,dword ptr [ebp-10]
 005C9663    mov         eax,dword ptr [eax]
 005C9665    mov         dword ptr [ebp-10],eax
 005C9668    cmp         dword ptr [ebp-10],0
>005C966C    je          005C9684
 005C966E    mov         eax,dword ptr [ebp-10]
 005C9671    mov         eax,dword ptr [eax+8]
 005C9674    cmp         eax,dword ptr [ebp-8]
>005C9677    jne         005C9660
 005C9679    mov         eax,dword ptr [ebp-10]
 005C967C    mov         eax,dword ptr [eax+0C]
 005C967F    cmp         eax,dword ptr [ebp-0C]
>005C9682    jne         005C9660
 005C9684    cmp         dword ptr [ebp-10],0
>005C9688    jne         005C96D7
 005C968A    mov         eax,10
 005C968F    call        @GetMem
 005C9694    mov         dword ptr [ebp-10],eax
 005C9697    mov         eax,dword ptr [ebp-10]
 005C969A    mov         dword ptr [ebp-14],eax
 005C969D    mov         eax,dword ptr [ebp-4]
 005C96A0    mov         eax,dword ptr [eax+4]
 005C96A3    mov         edx,dword ptr [ebp-14]
 005C96A6    mov         dword ptr [edx],eax
 005C96A8    mov         ecx,dword ptr [ebp-0C]
 005C96AB    mov         edx,dword ptr [ebp-8]
 005C96AE    mov         eax,dword ptr [ebp-4]
 005C96B1    call        005C96FC
 005C96B6    mov         edx,dword ptr [ebp-14]
 005C96B9    mov         dword ptr [edx+4],eax
 005C96BC    mov         eax,dword ptr [ebp-14]
 005C96BF    mov         edx,dword ptr [ebp-8]
 005C96C2    mov         dword ptr [eax+8],edx
 005C96C5    mov         eax,dword ptr [ebp-14]
 005C96C8    mov         edx,dword ptr [ebp-0C]
 005C96CB    mov         dword ptr [eax+0C],edx
 005C96CE    mov         eax,dword ptr [ebp-4]
 005C96D1    mov         edx,dword ptr [ebp-10]
 005C96D4    mov         dword ptr [eax+4],edx
 005C96D7    xor         eax,eax
 005C96D9    pop         edx
 005C96DA    pop         ecx
 005C96DB    pop         ecx
 005C96DC    mov         dword ptr fs:[eax],edx
 005C96DF    push        5C96F4
 005C96E4    mov         eax,dword ptr [ebp-4]
 005C96E7    call        005C9618
 005C96EC    ret
>005C96ED    jmp         @HandleFinally
>005C96F2    jmp         005C96E4
 005C96F4    mov         eax,dword ptr [ebp-10]
 005C96F7    mov         esp,ebp
 005C96F9    pop         ebp
 005C96FA    ret
end;*}

//005C96FC
{*function sub_005C96FC(?:?; ?:?; ?:?):?;
begin
 005C96FC    push        ebp
 005C96FD    mov         ebp,esp
 005C96FF    add         esp,0FFFFFFD4
 005C9702    push        ebx
 005C9703    push        esi
 005C9704    push        edi
 005C9705    mov         dword ptr [ebp-0C],ecx
 005C9708    mov         dword ptr [ebp-8],edx
 005C970B    mov         dword ptr [ebp-4],eax
 005C970E    mov         dl,1
 005C9710    mov         eax,[005BEDD4];TBitmap
 005C9715    call        TBitmap.Create;TBitmap.Create
 005C971A    mov         dword ptr [ebp-10],eax
 005C971D    xor         eax,eax
 005C971F    push        ebp
 005C9720    push        5C97F9
 005C9725    push        dword ptr fs:[eax]
 005C9728    mov         dword ptr fs:[eax],esp
 005C972B    mov         edx,8
 005C9730    mov         eax,dword ptr [ebp-10]
 005C9733    mov         ecx,dword ptr [eax]
 005C9735    call        dword ptr [ecx+40];TBitmap.SetWidth
 005C9738    mov         edx,8
 005C973D    mov         eax,dword ptr [ebp-10]
 005C9740    mov         ecx,dword ptr [eax]
 005C9742    call        dword ptr [ecx+34];TBitmap.SetHeight
 005C9745    mov         eax,dword ptr [ebp-10]
 005C9748    call        TBitmap.GetCanvas
 005C974D    mov         dword ptr [ebp-1C],eax
 005C9750    mov         eax,dword ptr [ebp-1C]
 005C9753    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C9756    xor         edx,edx
 005C9758    call        TBrush.SetStyle
 005C975D    mov         eax,dword ptr [ebp-1C]
 005C9760    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005C9763    mov         edx,dword ptr [ebp-8]
 005C9766    call        TBrush.SetColor
 005C976B    mov         eax,dword ptr [ebp-10]
 005C976E    mov         edx,dword ptr [eax]
 005C9770    call        dword ptr [edx+20];TBitmap.GetHeight
 005C9773    push        eax
 005C9774    lea         eax,[ebp-2C]
 005C9777    push        eax
 005C9778    mov         eax,dword ptr [ebp-10]
 005C977B    mov         edx,dword ptr [eax]
 005C977D    call        dword ptr [edx+2C];TBitmap.GetWidth
 005C9780    mov         ecx,eax
 005C9782    xor         edx,edx
 005C9784    xor         eax,eax
 005C9786    call        Rect
 005C978B    lea         edx,[ebp-2C]
 005C978E    mov         eax,dword ptr [ebp-1C]
 005C9791    call        TCanvas.FillRect
 005C9796    xor         eax,eax
 005C9798    mov         dword ptr [ebp-18],eax
 005C979B    xor         eax,eax
 005C979D    mov         dword ptr [ebp-14],eax
 005C97A0    mov         eax,dword ptr [ebp-18]
 005C97A3    and         eax,80000001
>005C97A8    jns         005C97AF
 005C97AA    dec         eax
 005C97AB    or          eax,0FFFFFFFE
 005C97AE    inc         eax
 005C97AF    mov         edx,dword ptr [ebp-14]
 005C97B2    and         edx,80000001
>005C97B8    jns         005C97BF
 005C97BA    dec         edx
 005C97BB    or          edx,0FFFFFFFE
 005C97BE    inc         edx
 005C97BF    cmp         eax,edx
>005C97C1    jne         005C97D5
 005C97C3    mov         eax,dword ptr [ebp-0C]
 005C97C6    push        eax
 005C97C7    mov         ecx,dword ptr [ebp-18]
 005C97CA    mov         edx,dword ptr [ebp-14]
 005C97CD    mov         eax,dword ptr [ebp-1C]
 005C97D0    call        005C1930
 005C97D5    inc         dword ptr [ebp-14]
 005C97D8    cmp         dword ptr [ebp-14],9
>005C97DC    jne         005C97A0
 005C97DE    inc         dword ptr [ebp-18]
 005C97E1    cmp         dword ptr [ebp-18],9
>005C97E5    jne         005C979B
 005C97E7    mov         eax,dword ptr [ebp-10]
 005C97EA    call        005C6CFC
 005C97EF    xor         eax,eax
 005C97F1    pop         edx
 005C97F2    pop         ecx
 005C97F3    pop         ecx
 005C97F4    mov         dword ptr fs:[eax],edx
>005C97F7    jmp         005C9810
>005C97F9    jmp         @HandleAnyException
 005C97FE    mov         eax,dword ptr [ebp-10]
 005C9801    call        TObject.Free
 005C9806    call        @RaiseAgain
 005C980B    call        @DoneExcept
 005C9810    mov         eax,dword ptr [ebp-10]
 005C9813    pop         edi
 005C9814    pop         esi
 005C9815    pop         ebx
 005C9816    mov         esp,ebp
 005C9818    pop         ebp
 005C9819    ret
end;*}

//005C98A0
{*function sub_005C98A0(?:?; ?:?):?;
begin
 005C98A0    push        ebp
 005C98A1    mov         ebp,esp
 005C98A3    add         esp,0FFFFFFF4
 005C98A6    mov         dword ptr [ebp-8],edx
 005C98A9    mov         dword ptr [ebp-4],eax
 005C98AC    cmp         dword ptr ds:[6ECD78],0;PatternManager:TPatternManager
>005C98B3    je          005C98DB
 005C98B5    mov         eax,dword ptr [ebp-8]
 005C98B8    call        ColorToRGB
 005C98BD    push        eax
 005C98BE    mov         eax,dword ptr [ebp-4]
 005C98C1    call        ColorToRGB
 005C98C6    mov         edx,eax
 005C98C8    mov         eax,[006ECD78];0x0 PatternManager:TPatternManager
 005C98CD    pop         ecx
 005C98CE    call        005C9630
 005C98D3    mov         eax,dword ptr [eax+4]
 005C98D6    mov         dword ptr [ebp-0C],eax
>005C98D9    jmp         005C98E0
 005C98DB    xor         eax,eax
 005C98DD    mov         dword ptr [ebp-0C],eax
 005C98E0    mov         eax,dword ptr [ebp-0C]
 005C98E3    mov         esp,ebp
 005C98E5    pop         ebp
 005C98E6    ret
end;*}

//005C98E8
procedure Finalization;
begin
{*
 005C98E8    push        ebp
 005C98E9    mov         ebp,esp
 005C98EB    xor         eax,eax
 005C98ED    push        ebp
 005C98EE    push        5C99B1
 005C98F3    push        dword ptr fs:[eax]
 005C98F6    mov         dword ptr fs:[eax],esp
 005C98F9    inc         dword ptr ds:[6ECD20]
>005C98FF    jne         005C99A3
 005C9905    mov         eax,[006ECD78];PatternManager:TPatternManager
 005C990A    call        TObject.Free
 005C990F    mov         eax,[006E3F74];gvar_006E3F74:TFileFormatsList
 005C9914    call        TObject.Free
 005C9919    mov         eax,[006E3F70];gvar_006E3F70:TClipboardFormats
 005C991E    call        TObject.Free
 005C9923    call        FreeMemoryContexts
 005C9928    mov         eax,[006E3F78];gvar_006E3F78:TThreadList
 005C992D    call        TObject.Free
 005C9932    mov         eax,[006ECD74];CanvasList:TThreadList
 005C9937    call        TObject.Free
 005C993C    mov         eax,[006ECD68];FontManager:TResourceManager
 005C9941    call        TObject.Free
 005C9946    mov         eax,[006ECD6C];PenManager:TResourceManager
 005C994B    call        TObject.Free
 005C9950    mov         eax,[006ECD70];BrushManager:TResourceManager
 005C9955    call        TObject.Free
 005C995A    mov         eax,[006ECD1C];SystemPalette16:HPALETTE
 005C995F    push        eax
 005C9960    call        GDI32.DeleteObject
 005C9965    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C996A    call        KERNEL32.DeleteCriticalSection
 005C996F    push        6ECD50;CounterLock:TRTLCriticalSection
 005C9974    call        KERNEL32.DeleteCriticalSection
 005C9979    mov         eax,6E3E90
 005C997E    mov         ecx,12
 005C9983    mov         edx,dword ptr ds:[641C00];TIdentMapEntry
 005C9989    call        @FinalizeArray
 005C998E    mov         eax,6E3CF0
 005C9993    mov         ecx,34
 005C9998    mov         edx,dword ptr ds:[641C00];TIdentMapEntry
 005C999E    call        @FinalizeArray
 005C99A3    xor         eax,eax
 005C99A5    pop         edx
 005C99A6    pop         ecx
 005C99A7    pop         ecx
 005C99A8    mov         dword ptr fs:[eax],edx
 005C99AB    push        5C99B8
 005C99B0    ret
>005C99B1    jmp         @HandleFinally
>005C99B6    jmp         005C99B0
 005C99B8    pop         ebp
 005C99B9    ret
*}
end;

end.