//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ExtCtrls;

interface

uses
  SysUtils, Classes, Graphics, Controls, ExtCtrls;

type
  TShapeType = (stRectangle, stSquare, stRoundRect, stRoundSquare, stEllipse, stCircle);
  TShape = class(TGraphicControl)
  published
    //procedure StyleChanged(?:?);//005DF968
  public
    Pen:TPen;//f168
    Brush:TBrush;//f16C
    Shape:TShapeType;//f170
    destructor Destroy; virtual;//005DF79C
    constructor Create(AOwner:TComponent); virtual;//v2C//005DF6CC
    procedure v8C; virtual;//v8C//005DF7EC
    procedure SetBrush(Value:TBrush);//005DF980
    procedure SetPen(Value:TPen);//005DF9A4
    procedure SetShape(Value:TShapeType);//005DF9C8
  end;
  TImage = class(TGraphicControl)
  public
    Picture:TPicture;//f168
    OnProgress:TProgressEvent;//f170
    f172:word;//f172
    f174:dword;//f174
    Stretch:Boolean;//f178
    Center:Boolean;//f179
    IncrementalDisplay:Boolean;//f17A
    Transparent:Boolean;//f17B
    FDrawing:Boolean;//f17C
    Proportional:Boolean;//f17D
    destructor Destroy; virtual;//005DFAC0
    constructor Create(AOwner:TComponent); virtual;//v2C//005DF9FC
    //function v34(?:?; ?:?):?; virtual;//v34//005E011C
    procedure v8C; virtual;//v8C//005DFCA4
    //procedure sub_005DFE40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//005DFE40
    procedure sub_005DFB00; dynamic;//005DFB00
    procedure SetCenter(Value:Boolean);//005DFEBC
    procedure SetPicture(Value:TPicture);//005DFEF4
    procedure SetStretch(Value:Boolean);//005DFF18
    procedure SetTransparent(Value:Boolean);//005DFF50
    procedure SetProportional(Value:Boolean);//005DFF88
  end;
  TBevelStyle = (bsLowered, bsRaised);
  TBevelShape = (bsBox, bsFrame, bsTopLine, bsBottomLine, bsLeftLine, bsRightLine, bsSpacer);
  TBevel = class(TGraphicControl)
  public
    Style:TBevelStyle;//f168
    Shape:TBevelShape;//f169
    constructor Create(AOwner:TComponent); virtual;//v2C//005E01A4
    procedure v8C; virtual;//v8C//005E0404
    procedure SetStyle(Value:TBevelStyle);//005E0230
    procedure SetShape(Value:TBevelShape);//005E0264
  end;
  TTimer = class(TComponent)
  public
    Interval:Cardinal;//f30
    FWindowHandle:HWND;//f34
    OnTimer:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    Enabled:Boolean;//f40
    destructor Destroy; virtual;//005E0738
    constructor Create(AOwner:TComponent); virtual;//v2C//005E06CC
    procedure sub_005E092C; dynamic;//005E092C
    procedure SetEnabled(Value:Boolean);//005E08B0
    procedure SetInterval(Value:Cardinal);//005E08DC
    //procedure SetOnTimer(Value:TNotifyEvent; ?:?; ?:?);//005E0908
  end;
  TCustomPanel = class(TCustomControl)
  public
    FAutoSizeDocking:Boolean;//f210
    FBevelInner:TBevelCut;//f211
    FBevelOuter:TBevelCut;//f212
    FBevelWidth:TBevelWidth;//f214
    FBorderWidth:TBorderWidth;//f218
    FBorderStyle:TBorderStyle;//f21C
    FFullRepaint:Boolean;//f21D
    FLocked:Boolean;//f21E
    FAlignment:TAlignment;//f21F
    constructor Create(AOwner:TComponent); virtual;//v2C//005E0950
    //function v34(?:?; ?:?):?; virtual;//v34//005E1144
    //procedure v8C(?:?); virtual;//v8C//005E0F68
    procedure CreateParams(var Params:TCreateParams); virtual;//v98//005E0A10
    procedure vC4; virtual;//vC4//005E0C8C
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//005E0B20
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005E0ABC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005E0AA4
    //procedure CMIsToolControl(?:?); message CM_ISTOOLCONTROL;//005E0AF8
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//005E0FF0
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//005E0A80
    procedure sub_005E0F4C; dynamic;//005E0F4C
  end;
  TPanel = class(TCustomPanel)
    procedure SetAlignment(Value:TAlignment);//005E0E44
  end;
  TPage = class(TCustomControl)
  public
    //procedure v14(?:?); virtual;//v14//005E1614
    constructor Create(AOwner:TComponent); virtual;//v2C//005E1540
    procedure vC4; virtual;//vC4//005E15B4
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005E1658
  end;
  TNotebook = class(TCustomControl)
  public
    FPageList:TList;//f210
    Pages:TStrings;//f214
    PageIndex:Integer;//f218
    OnPageChanged:TNotifyEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    destructor Destroy; virtual;//005E17B0
    //procedure v14(?:?); virtual;//v14//005E1894
    constructor Create(AOwner:TComponent); virtual;//v2C//005E1688
    //procedure v98(?:?); virtual;//v98//005E1800
    //procedure vBC(?:?); virtual;//vBC//005E1934
    procedure sub_005E182C; dynamic;//005E182C
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?); dynamic;//005E1844
    procedure SetPages(Value:TStrings);//005E1998
    procedure SetPageIndex(Value:Integer);//005E19BC
    procedure SetActivePage(Value:String);//005E1B04
    //procedure GetActivePage(?:?);//005E1B30
  end;
  TSectionEvent = procedure(Sender:TObject; ASection:Integer; AWidth:Integer) of object;;
  THeader = class(TCustomControl)
  public
    Sections:TStrings;//f210
    FHitTest:TPoint;//f214
    FCanResize:Boolean;//f21C
    AllowResize:Boolean;//f21D
    BorderStyle:TBorderStyle;//f21E
    FResizeSection:Integer;//f220
    FMouseOffset:Integer;//f224
    OnSizing:TSectionEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    OnSized:TSectionEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    destructor Destroy; virtual;//005E260C
    constructor Create(AOwner:TComponent); virtual;//v2C//005E255C
    //procedure v98(?:?); virtual;//v98//005E2654
    procedure vC4; virtual;//vC4//005E2690
    //procedure WMSize(?:?); message WM_SIZE;//005E2D20
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//005E290C
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005E28CC
    //procedure sub_005E2CBC(?:?; ?:?); dynamic;//005E2CBC
    //procedure sub_005E2C80(?:?; ?:?); dynamic;//005E2C80
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E2C04
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E2AA0
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E2A44
    procedure SetBorderStyle(Value:TBorderStyle);//005E2874
    procedure SetSections(Value:TStrings);//005E28A8
  end;
  TCustomRadioGroup = class(TCustomGroupBox)
  public
    FButtons:TList;//f210
    FItems:TStrings;//f214
    FItemIndex:Integer;//f218
    FColumns:Integer;//f21C
    FReading:Boolean;//f220
    FUpdating:Boolean;//f221
    destructor Destroy; virtual;//005E316C
    procedure Loaded; virtual;//vC//005E346C
    //procedure v14(?:?); virtual;//v14//005E3488
    constructor Create(AOwner:TComponent); virtual;//v2C//005E30B8
    //function vC8:?; virtual;//vC8//005E3804
    //procedure WMSize(?:?); message WM_SIZE;//005E37E0
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//005E375C
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005E37BC
    //procedure sub_005E31D4(?:?); dynamic;//005E31D4
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent); dynamic;//005E3818
  end;
  TRadioGroup = class(TCustomRadioGroup)
    procedure SetColumns(Value:Integer);//005E3518
    procedure SetItemIndex(Value:Integer);//005E356C
    procedure SetItems(Value:TStrings);//005E363C
  end;
  TCanResizeEvent = procedure(Sender:TObject; var NewSize:Integer; var Accept:Boolean) of object;;
  TResizeStyle = (rsNone, rsLine, rsUpdate, rsPattern);
  TSplitter = class(TGraphicControl)
  public
    FActiveControl:TWinControl;//f168
    AutoSnap:Boolean;//f16C
    Beveled:Boolean;//f16D
    FBrush:TBrush;//f170
    FControl:TControl;//f174
    FDownPos:TPoint;//f178
    FLineDC:HDC;//f180
    FLineVisible:Boolean;//f184
    MinSize:NaturalNumber;//f188
    FMaxSize:Integer;//f18C
    FNewSize:Integer;//f190
    FOldKeyDown:TKeyEvent;//f198
    f19C:dword;//f19C
    FOldSize:Integer;//f1A0
    FPrevBrush:HBRUSH;//f1A4
    ResizeStyle:TResizeStyle;//f1A8
    FSplit:Integer;//f1AC
    OnCanResize:TCanResizeEvent;//f1B0
    f1B2:word;//f1B2
    f1B4:dword;//f1B4
    OnMoved:TNotifyEvent;//f1B8
    f1BA:word;//f1BA
    f1BC:dword;//f1BC
    OnPaint:TNotifyEvent;//f1C0
    f1C2:word;//f1C2
    f1C4:dword;//f1C4
    destructor Destroy; virtual;//005E38C4
    constructor Create(AOwner:TComponent); virtual;//v2C//005E382C
    procedure v8C; virtual;//v8C//005E3C04
    //function v90(?:?):?; virtual;//v90//005E3DEC
    //function v94(?:?):?; virtual;//v94//005E3D9C
    procedure sub_005E4528; dynamic;//005E4528
    procedure sub_005E3BB8; dynamic;//005E3BB8
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E4440
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E4378
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E3E2C
    procedure SetBeveled(Value:Boolean);//005E4500
  end;
  TBandDragEvent = procedure(Sender:TObject; Control:TControl; var Drag:Boolean) of object;;
  TBandInfoEvent = procedure(Sender:TObject; Control:TControl; var Insets:TRect; var PreferredSize:Integer; var RowCount:Integer) of object;;
  TBandMoveEvent = procedure(Sender:TObject; Control:TControl; var ARect:TRect) of object;;
  TBandPaintEvent = procedure(Sender:TObject; Control:TControl; Canvas:TCanvas; var ARect:TRect; var Options:TBandPaintOptions) of object;;
  TCustomControlBar = class(TCustomControl)
  public
    FAligning:Boolean;//f210
    FAutoDrag:Boolean;//f211
    FAutoDock:Boolean;//f212
    FDockingControl:TControl;//f214
    FDragControl:TControl;//f218
    FDragOffset:TPoint;//f21C
    FDrawing:Boolean;//f224
    FFloating:Boolean;//f225
    FItems:TList;//f228
    FPicture:TPicture;//f22C
    FRowSize:TRowSize;//f230
    FRowSnap:Boolean;//f234
    FOnBandDrag:TBandDragEvent;//f238
    f23A:word;//f23A
    f23C:dword;//f23C
    FOnBandInfo:TBandInfoEvent;//f240
    f242:word;//f242
    f244:dword;//f244
    FOnBandMove:TBandMoveEvent;//f248
    f24A:word;//f24A
    f24C:dword;//f24C
    FOnBandPaint:TBandPaintEvent;//f250
    f252:word;//f252
    f254:dword;//f254
    FOnPaint:TNotifyEvent;//f258
    f25A:word;//f25A
    f25C:dword;//f25C
    destructor Destroy; virtual;//005E47FC
    constructor Create(AOwner:TComponent); virtual;//v2C//005E4700
    //function v34(?:?; ?:?):?; virtual;//v34//005E5E54
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//005E4938
    //procedure v98(?:?); virtual;//v98//005E4898
    procedure vC4; virtual;//vC4//005E6774
    //procedure vC8(?:?; ?:?); virtual;//vC8//005E7004
    //procedure vCC(?:?; ?:?; ?:?; ?:?); virtual;//vCC//005E7040
    //function vD0(?:?; ?:?):?; virtual;//vD0//005E6E94
    //procedure vD4(?:?; ?:?; ?:?; ?:?); virtual;//vD4//005E65CC
    //procedure vD8(?:?; ?:?; ?:?); virtual;//vD8//005E66E0
    procedure vDC; virtual;//vDC//005E5D54
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd); message WM_ERASEBKGND;//005E72C4
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//005E727C
    //procedure CMControlLIstChange(?:?); message CM_CONTROLLISTCHANGE;//005E720C
    //procedure sub_005E6A0C(?:?); dynamic;//005E6A0C
    //procedure sub_005E5D44(?:?); dynamic;//005E5D44
    //procedure sub_005E6FAC(?:?; ?:?; ?:?; ?:?); dynamic;//005E6FAC
    //procedure sub_005E6EF4(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//005E6EF4
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E6DA4
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E6C5C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005E6B34
    procedure sub_005E7088; dynamic;//005E7088
  end;
  TControlBar = class(TCustomControlBar)
    procedure SetRowSize(Value:TRowSize);//005E5CEC
    procedure SetRowSnap(Value:Boolean);//005E5D18
    procedure SetPicture(Value:TPicture);//005E70C0
  end;
  TBoundLabel = class(TCustomLabel)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//005E7498
    procedure sub_005985C4; dynamic;//005E7520
    //function GetHeight:?;//005E7570
    //function GetLeft:?;//005E758C
    //function GetTop:?;//005E75A8
    //function GetWidth:?;//005E75C4
    procedure SetHeight(Value:Integer);//005E75E0
    procedure SetWidth(Value:Integer);//005E7620
  end;
  TLabelPosition = (lpAbove, lpBelow, lpLeft, lpRight);
  TCustomLabeledEdit = class(TCustomEdit)
  public
    FEditLabel:TBoundLabel;//f220
    FLabelPosition:TLabelPosition;//f224
    FLabelSpacing:Integer;//f228
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005E775C
    //procedure v18(?:?); virtual;//v18//005E7970
    constructor Create(AOwner:TComponent); virtual;//v2C//005E7660
    //procedure v68(?:?); virtual;//v68//005E7A20
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//005E779C
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//005E772C
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//005E76F8
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//005E76C8
  end;
  TLabeledEdit = class(TCustomLabeledEdit)
    procedure SetLabelPosition(Value:TLabelPosition);//005E77D8
    procedure SetLabelSpacing(Value:Integer);//005E7940
  end;
  TColorBoxStyles = (cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbIncludeDefault, cbCustomColor, cbPrettyNames);
  TColorBoxStyle = set of TColorBoxStyles;
  TCustomColorBox = class(TCustomComboBox)
  public
    FStyle:TColorBoxStyle;//f290
    FNeedToPopulate:Boolean;//f291
    FListSelected:Boolean;//f292
    FDefaultColorColor:TColor;//f294
    FNoneColorColor:TColor;//f298
    FSelectedColor:TColor;//f29C
    constructor Create(AOwner:TComponent); virtual;//v2C//005E7C1C
    procedure CreateWnd; virtual;//vA0//005E7CAC
    //procedure v10C(?:?; ?:?); virtual;//v10C//005E7D18
    //function v118:?; virtual;//v118//005E7FC8
    procedure sub_0059B348; dynamic;//005E7AB8
    procedure sub_0059B374; dynamic;//005E8324
    //procedure sub_0059BC4C(?:?); dynamic;//005E7F78
    //procedure sub_005E7F4C(?:?; ?:?); dynamic;//005E7F4C
  end;
  TColorBox = class(TCustomColorBox)
    //function GetSelected:?;//005E7EF0
    procedure SetDefaultColorColor(Value:TColor);//005E8378
    procedure SetNoneColorColor(Value:TColor);//005E83AC
    procedure SetSelected(Value:TColor);//005E83E0
    procedure SetStyle(Value:TColorBoxStyle);//005E8460
  end;
  TPageAccess = class(TStrings)
  public
    PageList:TList;//f10
    Notebook:TNotebook;//f14
    //procedure vC(?:?; ?:?); virtual;//vC//005E12F8
    //function v14:?; virtual;//v14//005E12DC
    //function v18(?:?):?; virtual;//v18//005E1350
    //procedure v20(?:?; ?:?); virtual;//v20//005E1324
    //procedure v30(?:?); virtual;//v30//005E1374
    procedure Clear; virtual;//v44//005E1384
    //procedure v48(?:?); virtual;//v48//005E13D0
    //procedure v60(?:?; ?:?); virtual;//v60//005E1448
    //procedure v70(?:?; ?:?); virtual;//v70//005E14E4
    //constructor Create(?:?);//005E1284
  end;
  THeaderSection = THeaderSection = record//size=C
f8:String;//f8
end;;
  THeaderStrings = class(TStrings)
  public
    FHeader:THeader;//f10
    FList:TList;//f14
    destructor Destroy; virtual;//005E1D4C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005E2078
    procedure Assign(Source:TPersistent); virtual;//v8//005E1D9C
    //procedure vC(?:?; ?:?); virtual;//vC//005E217C
    //function v14:?; virtual;//v14//005E21A8
    //function v18(?:?):?; virtual;//v18//005E21C4
    //procedure v20(?:?; ?:?); virtual;//v20//005E2264
    //procedure v24(?:?; ?:?); virtual;//v24//005E22F0
    //procedure v30(?:?); virtual;//v30//005E2440
    procedure Clear; virtual;//v44//005E20E8
    //procedure v48(?:?); virtual;//v48//005E2134
    //procedure v60(?:?; ?:?); virtual;//v60//005E21EC
    constructor Create;//005E1CF8
  end;
  TGroupButton = class(TRadioButton)
  public
    ...FInClick:Boolean;//f218
    destructor Destroy; virtual;//005E2F48
    //procedure sub_0059D57C(?:?); dynamic;//005E2F90
    //procedure sub_005E3028(?:?); dynamic;//005E3028
    //procedure sub_005E3080(?:?; ?:?); dynamic;//005E3080
    constructor Create;//005E2EA8
  end;
    procedure sub_005D9CAC;//005D9CAC
    //procedure sub_005DF58C(?:?);//005DF58C
    procedure Frame3D(Canvas:TCanvas; var Rect:TRect; TopColor:TColor; BottomColor:TColor; Width:Integer);//005DF66C
    constructor Create(AOwner:TComponent);//005DF6CC
    destructor Destroy;//005DF79C
    procedure sub_005DF7EC;//005DF7EC
    constructor Create(AOwner:TComponent);//005DF9FC
    destructor Destroy;//005DFAC0
    procedure sub_005DFB00;//005DFB00
    //procedure sub_005DFB38(?:TImage; ?:?);//005DFB38
    procedure sub_005DFCA4;//005DFCA4
    //function sub_005DFD70(?:TImage):?;//005DFD70
    //procedure sub_005DFE40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005DFE40
    procedure sub_005DFFC0(?:TImage; ?:TImage);//005DFFC0
    //function sub_005E011C(?:?; ?:?):?;//005E011C
    constructor Create(AOwner:TComponent);//005E01A4
    //procedure sub_005E0298(?:?; ?:?);//005E0298
    //procedure sub_005E03B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005E03B4
    procedure sub_005E0404;//005E0404
    constructor Create(AOwner:TComponent);//005E06CC
    destructor Destroy;//005E0738
    procedure sub_005E080C(?:TTimer);//005E080C
    procedure sub_005E092C;//005E092C
    constructor Create(AOwner:TComponent);//005E0950
    procedure CreateParams(var Params:TCreateParams);//005E0A10
    //procedure CMBorderChanged(?:?);//005E0A80
    //procedure CMTextChanged(?:?);//005E0AA4
    //procedure CMCtl3DChanged(?:?);//005E0ABC
    //procedure CMIsToolControl(?:?);//005E0AF8
    //procedure WMWindowPosChangedMsg(?:?);//005E0B20
    //procedure sub_005E0C4C(?:?; ?:?);//005E0C4C
    procedure sub_005E0C8C;//005E0C8C
    procedure SetBevelInner(Value:TBevelCut);//005E0E68
    procedure SetBevelOuter(Value:TBevelCut);//005E0E94
    procedure SetBevelWidth(Value:TBevelWidth);//005E0EC0
    procedure SetBorderWidth(Value:TBorderWidth);//005E0EEC
    procedure SetBorderStyle(Value:TBorderStyle);//005E0F18
    procedure sub_005E0F4C;//005E0F4C
    //procedure sub_005E0F68(?:?);//005E0F68
    //procedure CMDockClient(?:?);//005E0FF0
    //function sub_005E1144(?:?; ?:?):?;//005E1144
    //function sub_005E12DC:?;//005E12DC
    //procedure sub_005E12F8(?:?; ?:?);//005E12F8
    //procedure sub_005E1324(?:?; ?:?);//005E1324
    //function sub_005E1350(?:?):?;//005E1350
    //procedure sub_005E1374(?:?);//005E1374
    procedure Clear;//005E1384
    //procedure sub_005E13D0(?:?);//005E13D0
    //procedure sub_005E1448(?:?; ?:?);//005E1448
    //procedure sub_005E14E4(?:?; ?:?);//005E14E4
    constructor Create(AOwner:TComponent);//005E1540
    procedure sub_005E15B4;//005E15B4
    //procedure sub_005E1614(?:?);//005E1614
    //procedure WMNCHitTest(?:?);//005E1658
    constructor Create(AOwner:TComponent);//005E1688
    destructor Destroy;//005E17B0
    //procedure sub_005E1800(?:?);//005E1800
    procedure sub_005E182C;//005E182C
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);//005E1844
    //procedure sub_005E1894(?:?);//005E1894
    //procedure sub_005E1934(?:?);//005E1934
    procedure sub_005E1C88(?:Pointer);//005E1C88
    //function sub_005E1CA8(?:?; ?:?; ?:Pointer):?;//005E1CA8
    destructor Destroy;//005E1D4C
    procedure Assign(Source:TPersistent);//005E1D9C
    procedure DefineProperties(Filer:TFiler);//005E2078
    procedure Clear;//005E20E8
    //procedure sub_005E2134(?:?);//005E2134
    //procedure sub_005E217C(?:?; ?:?);//005E217C
    //function sub_005E21A8:?;//005E21A8
    //function sub_005E21C4(?:?):?;//005E21C4
    //procedure sub_005E21EC(?:?; ?:?);//005E21EC
    //procedure sub_005E2264(?:?; ?:?);//005E2264
    //procedure sub_005E22F0(?:?; ?:?);//005E22F0
    //procedure sub_005E2440(?:?);//005E2440
    constructor Create(AOwner:TComponent);//005E255C
    destructor Destroy;//005E260C
    //procedure sub_005E2654(?:?);//005E2654
    procedure sub_005E2690;//005E2690
    procedure sub_005E2850(?:THeader);//005E2850
    //procedure WMNCHitTest(?:?);//005E28CC
    //procedure WMSetCursor(?:?);//005E290C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E2A44
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//005E2AA0
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E2C04
    //procedure sub_005E2C80(?:?; ?:?);//005E2C80
    //procedure sub_005E2CBC(?:?; ?:?);//005E2CBC
    //procedure WMSize(?:?);//005E2D20
    destructor Destroy;//005E2F48
    //procedure sub_0059D57C(?:?);//005E2F90
    //procedure sub_005E3028(?:?);//005E3028
    //procedure sub_005E3080(?:?; ?:?);//005E3080
    constructor Create(AOwner:TComponent);//005E30B8
    destructor Destroy;//005E316C
    //procedure sub_005E31D4(?:?);//005E31D4
    procedure sub_005E31E4(?:TCustomRadioGroup);//005E31E4
    procedure Loaded;//005E346C
    //procedure sub_005E3488(?:?);//005E3488
    //procedure sub_005E34C0(?:TCustomRadioGroup; ?:?);//005E34C0
    procedure sub_005E3660(?:TCustomRadioGroup);//005E3660
    //procedure CMEnabledChanged(?:?);//005E375C
    //procedure CMFontChanged(?:?);//005E37BC
    //procedure WMSize(?:?);//005E37E0
    //function sub_005E3804:?;//005E3804
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent);//005E3818
    constructor Create(AOwner:TComponent);//005E382C
    destructor Destroy;//005E38C4
    procedure sub_005E3904(?:TSplitter);//005E3904
    procedure sub_005E39A0(?:TSplitter);//005E39A0
    procedure sub_005E3A34(?:TSplitter);//005E3A34
    //function sub_005E3AA4(?:TSplitter):?;//005E3AA4
    procedure sub_005E3BB8;//005E3BB8
    procedure sub_005E3C04;//005E3C04
    //function sub_005E3D9C(?:?):?;//005E3D9C
    //function sub_005E3DEC(?:?):?;//005E3DEC
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E3E2C
    procedure sub_005E405C(?:TSplitter);//005E405C
    //procedure sub_005E4214(?:TSplitter; ?:?; ?:?; ?:?; ?:?);//005E4214
    //procedure sub_005E4344(?:TSplitter; ?:?; ?:?);//005E4344
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//005E4378
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E4440
    procedure sub_005E4528;//005E4528
    //function sub_005E45C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005E45C4
    procedure sub_005E4680(?:TList; ?:Pointer);//005E4680
    //procedure sub_005E46C0(?:?; ?:?);//005E46C0
    constructor Create(AOwner:TComponent);//005E4700
    destructor Destroy;//005E47FC
    //procedure sub_005E4898(?:?);//005E4898
    //function sub_005E48BC(?:Pointer; ?:?; ?:?; ?:?):?;//005E48BC
    procedure AlignControls(AControl:TControl; var Rect:TRect);//005E4938
    //procedure sub_005E5820(?:TList; ?:?);//005E5820
    //function sub_005E58A4(?:TCustomControlBar; ?:TControl):?;//005E58A4
    //procedure sub_005E5D44(?:?);//005E5D44
    procedure sub_005E5D54;//005E5D54
    //function sub_005E5E54(?:?; ?:?):?;//005E5E54
    //procedure sub_005E6024(?:?);//005E6024
    //procedure sub_005E61C0(?:TCustomControlBar; ?:Pointer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005E61C0
    //procedure sub_005E6528(?:TCustomControlBar; ?:?);//005E6528
    //procedure sub_005E65CC(?:?; ?:?; ?:?; ?:?);//005E65CC
    //procedure sub_005E6624(?:?);//005E6624
    //procedure sub_005E66E0(?:?; ?:?; ?:?);//005E66E0
    procedure sub_005E6774;//005E6774
    //function sub_005E6864(?:TCustomControlBar; ?:?; ?:?):?;//005E6864
    //function sub_005E68A0(?:TCustomControlBar; ?:?; ?:?):?;//005E68A0
    //procedure sub_005E6978(?:TCustomControlBar; ?:?);//005E6978
    //procedure sub_005E6A0C(?:?);//005E6A0C
    //procedure sub_005E6AB8(?:?);//005E6AB8
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E6B34
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//005E6C5C
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005E6DA4
    //function sub_005E6E18(?:TCustomControlBar; ?:TControl):?;//005E6E18
    //function sub_005E6E94(?:?; ?:?):?;//005E6E94
    //procedure sub_005E6EF4(?:?; ?:?; ?:?; ?:?; ?:?);//005E6EF4
    //procedure sub_005E6FAC(?:?; ?:?; ?:?; ?:?);//005E6FAC
    //procedure sub_005E7004(?:?; ?:?);//005E7004
    //procedure sub_005E7040(?:?; ?:?; ?:?; ?:?);//005E7040
    procedure sub_005E7088;//005E7088
    //procedure CMControlLIstChange(?:?);//005E720C
    //procedure CMDesignHitTest(?:?);//005E727C
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd);//005E72C4
    constructor Create(AOwner:TComponent);//005E7498
    procedure sub_005985C4;//005E7520
    constructor Create(AOwner:TComponent);//005E7660
    procedure CMBiDiModeChanged(Message:TMessage);//005E76C8
    //procedure CMEnabledChanged(?:?);//005E76F8
    //procedure CMVisibleChanged(?:?);//005E772C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005E775C
    //procedure sub_005E779C(?:?; ?:?; ?:?; ?:?);//005E779C
    //procedure sub_005E7970(?:?);//005E7970
    //procedure sub_005E7A20(?:?);//005E7A20
    procedure sub_005E7A68(?:TCustomLabeledEdit);//005E7A68
    procedure sub_0059B348;//005E7AB8
    constructor Create(AOwner:TComponent);//005E7C1C
    procedure CreateWnd;//005E7CAC
    //function sub_005E7CD4(?:Longint; ?:?):?;//005E7CD4
    //procedure sub_005E7D18(?:?; ?:?);//005E7D18
    //function sub_005E7EC8(?:TCustomColorBox; ?:Integer):?;//005E7EC8
    //procedure sub_005E7F4C(?:?; ?:?);//005E7F4C
    //procedure sub_0059BC4C(?:?);//005E7F78
    //function sub_005E7FC8:?;//005E7FC8
    //procedure sub_005E80D8(?:?; ?:?; ?:?);//005E80D8
    //procedure sub_005E8118(?:?; ?:?);//005E8118
    procedure sub_005E8158(?:TCustomColorBox);//005E8158
    procedure sub_0059B374;//005E8324
    procedure Finalization;//005E84EC

implementation

//005D9CAC
procedure sub_005D9CAC;
begin
{*
 005D9CAC    sub         dword ptr ds:[6ECD84],1
>005D9CB3    jae         005D9CDD
 005D9CB5    mov         eax,5D9C40;_NF__B79
 005D9CBA    call        @InitImports
 005D9CBF    call        005D9B90
 005D9CC4    push        5D9CE0;'TaskbarCreated'
 005D9CC9    call        USER32.RegisterWindowMessageA
 005D9CCE    mov         [006ECD88],eax;gvar_006ECD88:Longword
 005D9CD3    mov         eax,5CCE04
 005D9CD8    call        00644810
 005D9CDD    ret
*}
end;

//005DF58C
{*procedure sub_005DF58C(?:?);
begin
 005DF58C    push        ebp
 005DF58D    mov         ebp,esp
 005DF58F    add         esp,0FFFFFFD8
 005DF592    mov         eax,dword ptr [ebp+8]
 005DF595    mov         eax,dword ptr [eax-4]
 005DF598    mov         eax,dword ptr [eax+8]
 005DF59B    mov         dword ptr [ebp-8],eax
 005DF59E    mov         eax,dword ptr [ebp+8]
 005DF5A1    mov         eax,dword ptr [eax-4]
 005DF5A4    mov         eax,dword ptr [eax+4]
 005DF5A7    mov         dword ptr [ebp-4],eax
 005DF5AA    mov         eax,dword ptr [ebp+8]
 005DF5AD    mov         eax,dword ptr [eax-4]
 005DF5B0    mov         eax,dword ptr [eax]
 005DF5B2    mov         dword ptr [ebp-10],eax
 005DF5B5    mov         eax,dword ptr [ebp+8]
 005DF5B8    mov         eax,dword ptr [eax-4]
 005DF5BB    mov         eax,dword ptr [eax+0C]
 005DF5BE    mov         dword ptr [ebp-0C],eax
 005DF5C1    mov         eax,dword ptr [ebp+8]
 005DF5C4    mov         edx,dword ptr [eax-0C]
 005DF5C7    mov         eax,dword ptr [ebp+8]
 005DF5CA    mov         eax,dword ptr [eax-8]
 005DF5CD    mov         eax,dword ptr [eax+10]
 005DF5D0    call        TPen.SetColor
 005DF5D5    mov         eax,dword ptr [ebp-10]
 005DF5D8    mov         dword ptr [ebp-28],eax
 005DF5DB    mov         eax,dword ptr [ebp-0C]
 005DF5DE    mov         dword ptr [ebp-24],eax
 005DF5E1    mov         eax,dword ptr [ebp+8]
 005DF5E4    mov         eax,dword ptr [eax-4]
 005DF5E7    mov         edx,dword ptr [eax]
 005DF5E9    mov         dword ptr [ebp-20],edx
 005DF5EC    mov         edx,dword ptr [eax+4]
 005DF5EF    mov         dword ptr [ebp-1C],edx
 005DF5F2    mov         eax,dword ptr [ebp-8]
 005DF5F5    mov         dword ptr [ebp-18],eax
 005DF5F8    mov         eax,dword ptr [ebp-4]
 005DF5FB    mov         dword ptr [ebp-14],eax
 005DF5FE    lea         edx,[ebp-28]
 005DF601    mov         eax,dword ptr [ebp+8]
 005DF604    mov         eax,dword ptr [eax-8]
 005DF607    mov         ecx,2
 005DF60C    call        005C13DC
 005DF611    mov         eax,dword ptr [ebp+8]
 005DF614    mov         edx,dword ptr [eax+0C]
 005DF617    mov         eax,dword ptr [ebp+8]
 005DF61A    mov         eax,dword ptr [eax-8]
 005DF61D    mov         eax,dword ptr [eax+10]
 005DF620    call        TPen.SetColor
 005DF625    dec         dword ptr [ebp-10]
 005DF628    mov         eax,dword ptr [ebp-8]
 005DF62B    mov         dword ptr [ebp-28],eax
 005DF62E    mov         eax,dword ptr [ebp-4]
 005DF631    mov         dword ptr [ebp-24],eax
 005DF634    mov         eax,dword ptr [ebp+8]
 005DF637    mov         eax,dword ptr [eax-4]
 005DF63A    mov         edx,dword ptr [eax+8]
 005DF63D    mov         dword ptr [ebp-20],edx
 005DF640    mov         edx,dword ptr [eax+0C]
 005DF643    mov         dword ptr [ebp-1C],edx
 005DF646    mov         eax,dword ptr [ebp-10]
 005DF649    mov         dword ptr [ebp-18],eax
 005DF64C    mov         eax,dword ptr [ebp-0C]
 005DF64F    mov         dword ptr [ebp-14],eax
 005DF652    lea         edx,[ebp-28]
 005DF655    mov         eax,dword ptr [ebp+8]
 005DF658    mov         eax,dword ptr [eax-8]
 005DF65B    mov         ecx,2
 005DF660    call        005C13DC
 005DF665    mov         esp,ebp
 005DF667    pop         ebp
 005DF668    ret
end;*}

//005DF66C
procedure Frame3D(Canvas:TCanvas; var Rect:TRect; TopColor:TColor; BottomColor:TColor; Width:Integer);
begin
{*
 005DF66C    push        ebp
 005DF66D    mov         ebp,esp
 005DF66F    add         esp,0FFFFFFF4
 005DF672    mov         dword ptr [ebp-0C],ecx
 005DF675    mov         dword ptr [ebp-4],edx
 005DF678    mov         dword ptr [ebp-8],eax
 005DF67B    mov         eax,dword ptr [ebp-8]
 005DF67E    mov         eax,dword ptr [eax+10]
 005DF681    mov         edx,1
 005DF686    call        TPen.SetWidth
 005DF68B    mov         eax,dword ptr [ebp-4]
 005DF68E    dec         dword ptr [eax+0C]
 005DF691    mov         eax,dword ptr [ebp-4]
 005DF694    dec         dword ptr [eax+8]
 005DF697    cmp         dword ptr [ebp+8],0
>005DF69B    jle         005DF6BA
 005DF69D    dec         dword ptr [ebp+8]
 005DF6A0    push        ebp
 005DF6A1    call        005DF58C
 005DF6A6    pop         ecx
 005DF6A7    push        0FF
 005DF6A9    push        0FF
 005DF6AB    mov         eax,dword ptr [ebp-4]
 005DF6AE    push        eax
 005DF6AF    call        USER32.InflateRect
 005DF6B4    cmp         dword ptr [ebp+8],0
>005DF6B8    jg          005DF69D
 005DF6BA    mov         eax,dword ptr [ebp-4]
 005DF6BD    inc         dword ptr [eax+0C]
 005DF6C0    mov         eax,dword ptr [ebp-4]
 005DF6C3    inc         dword ptr [eax+8]
 005DF6C6    mov         esp,ebp
 005DF6C8    pop         ebp
 005DF6C9    ret         8
*}
end;

//005DF6CC
constructor TShape.Create(AOwner:TComponent);
begin
{*
 005DF6CC    push        ebp
 005DF6CD    mov         ebp,esp
 005DF6CF    add         esp,0FFFFFFF4
 005DF6D2    test        dl,dl
>005DF6D4    je          005DF6DE
 005DF6D6    add         esp,0FFFFFFF0
 005DF6D9    call        @ClassCreate
 005DF6DE    mov         dword ptr [ebp-0C],ecx
 005DF6E1    mov         byte ptr [ebp-5],dl
 005DF6E4    mov         dword ptr [ebp-4],eax
 005DF6E7    mov         ecx,dword ptr [ebp-0C]
 005DF6EA    xor         edx,edx
 005DF6EC    mov         eax,dword ptr [ebp-4]
 005DF6EF    call        TGraphicControl.Create
 005DF6F4    mov         eax,dword ptr [ebp-4]
 005DF6F7    mov         eax,dword ptr [eax+50];TShape.FControlStyle:TControlStyle
 005DF6FA    or          eax,dword ptr ds:[5DF798];0x800 gvar_005DF798
 005DF700    mov         edx,dword ptr [ebp-4]
 005DF703    mov         dword ptr [edx+50],eax;TShape.FControlStyle:TControlStyle
 005DF706    mov         edx,41
 005DF70B    mov         eax,dword ptr [ebp-4]
 005DF70E    call        TControl.SetWidth
 005DF713    mov         edx,41
 005DF718    mov         eax,dword ptr [ebp-4]
 005DF71B    call        TControl.SetHeight
 005DF720    mov         dl,1
 005DF722    mov         eax,[005BE614];TPen
 005DF727    call        TPen.Create;TPen.Create
 005DF72C    mov         edx,dword ptr [ebp-4]
 005DF72F    mov         dword ptr [edx+168],eax;TShape.Pen:TPen
 005DF735    mov         eax,dword ptr [ebp-4]
 005DF738    mov         eax,dword ptr [eax+168];TShape.Pen:TPen
 005DF73E    mov         edx,dword ptr [ebp-4]
 005DF741    mov         dword ptr [eax+0C],edx;TPen.?fC:TTabbedNotebook
 005DF744    mov         dword ptr [eax+8],5DF968;TPen.FOnChange:TNotifyEvent TShape.StyleChanged
 005DF74B    mov         dl,1
 005DF74D    mov         eax,[005BE714];TBrush
 005DF752    call        TBrush.Create;TBrush.Create
 005DF757    mov         edx,dword ptr [ebp-4]
 005DF75A    mov         dword ptr [edx+16C],eax;TShape.Brush:TBrush
 005DF760    mov         eax,dword ptr [ebp-4]
 005DF763    mov         eax,dword ptr [eax+16C];TShape.Brush:TBrush
 005DF769    mov         edx,dword ptr [ebp-4]
 005DF76C    mov         dword ptr [eax+0C],edx;TBrush.?fC:TTabbedNotebook
 005DF76F    mov         dword ptr [eax+8],5DF968;TBrush.FOnChange:TNotifyEvent TShape.StyleChanged
 005DF776    mov         eax,dword ptr [ebp-4]
 005DF779    cmp         byte ptr [ebp-5],0
>005DF77D    je          005DF78E
 005DF77F    call        @AfterConstruction
 005DF784    pop         dword ptr fs:[0]
 005DF78B    add         esp,0C
 005DF78E    mov         eax,dword ptr [ebp-4]
 005DF791    mov         esp,ebp
 005DF793    pop         ebp
 005DF794    ret
*}
end;

//005DF79C
destructor TShape.Destroy;
begin
{*
 005DF79C    push        ebp
 005DF79D    mov         ebp,esp
 005DF79F    add         esp,0FFFFFFF8
 005DF7A2    call        @BeforeDestruction
 005DF7A7    mov         byte ptr [ebp-5],dl
 005DF7AA    mov         dword ptr [ebp-4],eax
 005DF7AD    mov         eax,dword ptr [ebp-4]
 005DF7B0    mov         eax,dword ptr [eax+168];TShape.Pen:TPen
 005DF7B6    call        TObject.Free
 005DF7BB    mov         eax,dword ptr [ebp-4]
 005DF7BE    mov         eax,dword ptr [eax+16C];TShape.Brush:TBrush
 005DF7C4    call        TObject.Free
 005DF7C9    mov         dl,byte ptr [ebp-5]
 005DF7CC    and         dl,0FC
 005DF7CF    mov         eax,dword ptr [ebp-4]
 005DF7D2    call        TGraphicControl.Destroy
 005DF7D7    cmp         byte ptr [ebp-5],0
>005DF7DB    jle         005DF7E5
 005DF7DD    mov         eax,dword ptr [ebp-4]
 005DF7E0    call        @ClassDestroy
 005DF7E5    pop         ecx
 005DF7E6    pop         ecx
 005DF7E7    pop         ebp
 005DF7E8    ret
*}
end;

//005DF7EC
procedure sub_005DF7EC;
begin
{*
 005DF7EC    push        ebp
 005DF7ED    mov         ebp,esp
 005DF7EF    add         esp,0FFFFFFE4
 005DF7F2    mov         dword ptr [ebp-4],eax
 005DF7F5    mov         eax,dword ptr [ebp-4]
 005DF7F8    mov         eax,dword ptr [eax+160];TShape..................................................FCanvas:...
 005DF7FE    mov         dword ptr [ebp-1C],eax
 005DF801    mov         eax,dword ptr [ebp-4]
 005DF804    mov         edx,dword ptr [eax+168];TShape.Pen:TPen
 005DF80A    mov         eax,dword ptr [ebp-1C]
 005DF80D    call        TCanvas.SetPen
 005DF812    mov         eax,dword ptr [ebp-4]
 005DF815    mov         edx,dword ptr [eax+16C];TShape.Brush:TBrush
 005DF81B    mov         eax,dword ptr [ebp-1C]
 005DF81E    call        TCanvas.SetBrush
 005DF823    mov         eax,dword ptr [ebp-1C]
 005DF826    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005DF829    call        TPen.GetWidth
 005DF82E    sar         eax,1
>005DF830    jns         005DF835
 005DF832    adc         eax,0
 005DF835    mov         dword ptr [ebp-8],eax
 005DF838    mov         eax,dword ptr [ebp-8]
 005DF83B    mov         dword ptr [ebp-0C],eax
 005DF83E    mov         eax,dword ptr [ebp-1C]
 005DF841    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005DF844    call        TPen.GetWidth
 005DF849    mov         edx,dword ptr [ebp-4]
 005DF84C    mov         edx,dword ptr [edx+48];TShape.Width:Integer
 005DF84F    sub         edx,eax
 005DF851    inc         edx
 005DF852    mov         dword ptr [ebp-10],edx
 005DF855    mov         eax,dword ptr [ebp-1C]
 005DF858    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005DF85B    call        TPen.GetWidth
 005DF860    mov         edx,dword ptr [ebp-4]
 005DF863    mov         edx,dword ptr [edx+4C];TShape.Height:Integer
 005DF866    sub         edx,eax
 005DF868    inc         edx
 005DF869    mov         dword ptr [ebp-14],edx
 005DF86C    mov         eax,dword ptr [ebp-1C]
 005DF86F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005DF872    call        TPen.GetWidth
 005DF877    test        eax,eax
>005DF879    jne         005DF881
 005DF87B    dec         dword ptr [ebp-10]
 005DF87E    dec         dword ptr [ebp-14]
 005DF881    mov         eax,dword ptr [ebp-10]
 005DF884    cmp         eax,dword ptr [ebp-14]
>005DF887    jge         005DF891
 005DF889    mov         eax,dword ptr [ebp-10]
 005DF88C    mov         dword ptr [ebp-18],eax
>005DF88F    jmp         005DF897
 005DF891    mov         eax,dword ptr [ebp-14]
 005DF894    mov         dword ptr [ebp-18],eax
 005DF897    mov         eax,dword ptr [ebp-4]
 005DF89A    mov         al,byte ptr [eax+170];TShape.Shape:TShapeType
 005DF8A0    sub         al,1
>005DF8A2    je          005DF8AC
 005DF8A4    sub         al,2
>005DF8A6    je          005DF8AC
 005DF8A8    sub         al,2
>005DF8AA    jne         005DF8D8
 005DF8AC    mov         eax,dword ptr [ebp-10]
 005DF8AF    sub         eax,dword ptr [ebp-18]
 005DF8B2    sar         eax,1
>005DF8B4    jns         005DF8B9
 005DF8B6    adc         eax,0
 005DF8B9    add         dword ptr [ebp-8],eax
 005DF8BC    mov         eax,dword ptr [ebp-14]
 005DF8BF    sub         eax,dword ptr [ebp-18]
 005DF8C2    sar         eax,1
>005DF8C4    jns         005DF8C9
 005DF8C6    adc         eax,0
 005DF8C9    add         dword ptr [ebp-0C],eax
 005DF8CC    mov         eax,dword ptr [ebp-18]
 005DF8CF    mov         dword ptr [ebp-10],eax
 005DF8D2    mov         eax,dword ptr [ebp-18]
 005DF8D5    mov         dword ptr [ebp-14],eax
 005DF8D8    mov         eax,dword ptr [ebp-4]
 005DF8DB    mov         al,byte ptr [eax+170];TShape.Shape:TShapeType
 005DF8E1    sub         al,2
>005DF8E3    jb          005DF8EF
 005DF8E5    sub         al,2
>005DF8E7    jb          005DF90D
 005DF8E9    sub         al,2
>005DF8EB    jb          005DF947
>005DF8ED    jmp         005DF963
 005DF8EF    mov         eax,dword ptr [ebp-8]
 005DF8F2    add         eax,dword ptr [ebp-10]
 005DF8F5    push        eax
 005DF8F6    mov         eax,dword ptr [ebp-0C]
 005DF8F9    add         eax,dword ptr [ebp-14]
 005DF8FC    push        eax
 005DF8FD    mov         ecx,dword ptr [ebp-0C]
 005DF900    mov         edx,dword ptr [ebp-8]
 005DF903    mov         eax,dword ptr [ebp-1C]
 005DF906    call        005C1428
>005DF90B    jmp         005DF963
 005DF90D    mov         eax,dword ptr [ebp-8]
 005DF910    add         eax,dword ptr [ebp-10]
 005DF913    push        eax
 005DF914    mov         eax,dword ptr [ebp-0C]
 005DF917    add         eax,dword ptr [ebp-14]
 005DF91A    push        eax
 005DF91B    mov         eax,dword ptr [ebp-18]
 005DF91E    test        eax,eax
>005DF920    jns         005DF925
 005DF922    add         eax,3
 005DF925    sar         eax,2
 005DF928    push        eax
 005DF929    mov         eax,dword ptr [ebp-18]
 005DF92C    test        eax,eax
>005DF92E    jns         005DF933
 005DF930    add         eax,3
 005DF933    sar         eax,2
 005DF936    push        eax
 005DF937    mov         ecx,dword ptr [ebp-0C]
 005DF93A    mov         edx,dword ptr [ebp-8]
 005DF93D    mov         eax,dword ptr [ebp-1C]
 005DF940    call        005C14C4
>005DF945    jmp         005DF963
 005DF947    mov         eax,dword ptr [ebp-8]
 005DF94A    add         eax,dword ptr [ebp-10]
 005DF94D    push        eax
 005DF94E    mov         eax,dword ptr [ebp-0C]
 005DF951    add         eax,dword ptr [ebp-14]
 005DF954    push        eax
 005DF955    mov         ecx,dword ptr [ebp-0C]
 005DF958    mov         edx,dword ptr [ebp-8]
 005DF95B    mov         eax,dword ptr [ebp-1C]
 005DF95E    call        005C1180
 005DF963    mov         esp,ebp
 005DF965    pop         ebp
 005DF966    ret
*}
end;

//005DF968
{*procedure TShape.StyleChanged(?:?);
begin
 005DF968    push        ebp
 005DF969    mov         ebp,esp
 005DF96B    add         esp,0FFFFFFF8
 005DF96E    mov         dword ptr [ebp-8],edx
 005DF971    mov         dword ptr [ebp-4],eax
 005DF974    mov         eax,dword ptr [ebp-4]
 005DF977    mov         edx,dword ptr [eax]
 005DF979    call        dword ptr [edx+7C];TShape.sub_005F3E48
 005DF97C    pop         ecx
 005DF97D    pop         ecx
 005DF97E    pop         ebp
 005DF97F    ret
end;*}

//005DF980
procedure TShape.SetBrush(Value:TBrush);
begin
{*
 005DF980    push        ebp
 005DF981    mov         ebp,esp
 005DF983    add         esp,0FFFFFFF8
 005DF986    mov         dword ptr [ebp-8],edx
 005DF989    mov         dword ptr [ebp-4],eax
 005DF98C    mov         edx,dword ptr [ebp-8]
 005DF98F    mov         eax,dword ptr [ebp-4]
 005DF992    mov         eax,dword ptr [eax+16C];TShape.Brush:TBrush
 005DF998    mov         ecx,dword ptr [eax]
 005DF99A    call        dword ptr [ecx+8];TBrush.Assign
 005DF99D    pop         ecx
 005DF99E    pop         ecx
 005DF99F    pop         ebp
 005DF9A0    ret
*}
end;

//005DF9A4
procedure TShape.SetPen(Value:TPen);
begin
{*
 005DF9A4    push        ebp
 005DF9A5    mov         ebp,esp
 005DF9A7    add         esp,0FFFFFFF8
 005DF9AA    mov         dword ptr [ebp-8],edx
 005DF9AD    mov         dword ptr [ebp-4],eax
 005DF9B0    mov         edx,dword ptr [ebp-8]
 005DF9B3    mov         eax,dword ptr [ebp-4]
 005DF9B6    mov         eax,dword ptr [eax+168];TShape.Pen:TPen
 005DF9BC    mov         ecx,dword ptr [eax]
 005DF9BE    call        dword ptr [ecx+8];TPen.Assign
 005DF9C1    pop         ecx
 005DF9C2    pop         ecx
 005DF9C3    pop         ebp
 005DF9C4    ret
*}
end;

//005DF9C8
procedure TShape.SetShape(Value:TShapeType);
begin
{*
 005DF9C8    push        ebp
 005DF9C9    mov         ebp,esp
 005DF9CB    add         esp,0FFFFFFF8
 005DF9CE    mov         byte ptr [ebp-5],dl
 005DF9D1    mov         dword ptr [ebp-4],eax
 005DF9D4    mov         eax,dword ptr [ebp-4]
 005DF9D7    mov         al,byte ptr [eax+170];TShape.Shape:TShapeType
 005DF9DD    cmp         al,byte ptr [ebp-5]
>005DF9E0    je          005DF9F6
 005DF9E2    mov         al,byte ptr [ebp-5]
 005DF9E5    mov         edx,dword ptr [ebp-4]
 005DF9E8    mov         byte ptr [edx+170],al;TShape.Shape:TShapeType
 005DF9EE    mov         eax,dword ptr [ebp-4]
 005DF9F1    mov         edx,dword ptr [eax]
 005DF9F3    call        dword ptr [edx+7C];TShape.sub_005F3E48
 005DF9F6    pop         ecx
 005DF9F7    pop         ecx
 005DF9F8    pop         ebp
 005DF9F9    ret
*}
end;

//005DF9FC
constructor TImage.Create(AOwner:TComponent);
begin
{*
 005DF9FC    push        ebp
 005DF9FD    mov         ebp,esp
 005DF9FF    add         esp,0FFFFFFF4
 005DFA02    test        dl,dl
>005DFA04    je          005DFA0E
 005DFA06    add         esp,0FFFFFFF0
 005DFA09    call        @ClassCreate
 005DFA0E    mov         dword ptr [ebp-0C],ecx
 005DFA11    mov         byte ptr [ebp-5],dl
 005DFA14    mov         dword ptr [ebp-4],eax
 005DFA17    mov         ecx,dword ptr [ebp-0C]
 005DFA1A    xor         edx,edx
 005DFA1C    mov         eax,dword ptr [ebp-4]
 005DFA1F    call        TGraphicControl.Create
 005DFA24    mov         eax,dword ptr [ebp-4]
 005DFA27    mov         eax,dword ptr [eax+50];TImage.FControlStyle:TControlStyle
 005DFA2A    or          eax,dword ptr ds:[5DFABC];0x800 gvar_005DFABC
 005DFA30    mov         edx,dword ptr [ebp-4]
 005DFA33    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 005DFA36    mov         dl,1
 005DFA38    mov         eax,[005BEB28];TPicture
 005DFA3D    call        TPicture.Create;TPicture.Create
 005DFA42    mov         edx,dword ptr [ebp-4]
 005DFA45    mov         dword ptr [edx+168],eax;TImage.Picture:TPicture
 005DFA4B    mov         eax,dword ptr [ebp-4]
 005DFA4E    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFA54    mov         edx,dword ptr [ebp-4]
 005DFA57    mov         dword ptr [eax+14],edx;TPicture.?f14:TImage
 005DFA5A    mov         dword ptr [eax+10],5DFFC0;TPicture.FOnChange:TNotifyEvent sub_005DFFC0
 005DFA61    mov         eax,dword ptr [ebp-4]
 005DFA64    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFA6A    mov         edx,dword ptr [ebp-4]
 005DFA6D    mov         dword ptr [eax+24],edx;TPicture.?f24:TImage
 005DFA70    push        eax
 005DFA71    mov         eax,edx
 005DFA73    mov         dx,0FFC7
 005DFA77    call        @FindDynaInst;TImage.sub_005DFE40
 005DFA7C    mov         edx,eax
 005DFA7E    pop         eax
 005DFA7F    mov         dword ptr [eax+20],edx
 005DFA82    mov         edx,69
 005DFA87    mov         eax,dword ptr [ebp-4]
 005DFA8A    call        TControl.SetHeight
 005DFA8F    mov         edx,69
 005DFA94    mov         eax,dword ptr [ebp-4]
 005DFA97    call        TControl.SetWidth
 005DFA9C    mov         eax,dword ptr [ebp-4]
 005DFA9F    cmp         byte ptr [ebp-5],0
>005DFAA3    je          005DFAB4
 005DFAA5    call        @AfterConstruction
 005DFAAA    pop         dword ptr fs:[0]
 005DFAB1    add         esp,0C
 005DFAB4    mov         eax,dword ptr [ebp-4]
 005DFAB7    mov         esp,ebp
 005DFAB9    pop         ebp
 005DFABA    ret
*}
end;

//005DFAC0
destructor TImage.Destroy;
begin
{*
 005DFAC0    push        ebp
 005DFAC1    mov         ebp,esp
 005DFAC3    add         esp,0FFFFFFF8
 005DFAC6    call        @BeforeDestruction
 005DFACB    mov         byte ptr [ebp-5],dl
 005DFACE    mov         dword ptr [ebp-4],eax
 005DFAD1    mov         eax,dword ptr [ebp-4]
 005DFAD4    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFADA    call        TObject.Free
 005DFADF    mov         dl,byte ptr [ebp-5]
 005DFAE2    and         dl,0FC
 005DFAE5    mov         eax,dword ptr [ebp-4]
 005DFAE8    call        TGraphicControl.Destroy
 005DFAED    cmp         byte ptr [ebp-5],0
>005DFAF1    jle         005DFAFB
 005DFAF3    mov         eax,dword ptr [ebp-4]
 005DFAF6    call        @ClassDestroy
 005DFAFB    pop         ecx
 005DFAFC    pop         ecx
 005DFAFD    pop         ebp
 005DFAFE    ret
*}
end;

//005DFB00
procedure TImage.sub_005DFB00;
begin
{*
 005DFB00    push        ebp
 005DFB01    mov         ebp,esp
 005DFB03    add         esp,0FFFFFFF8
 005DFB06    mov         dword ptr [ebp-4],eax
 005DFB09    xor         eax,eax
 005DFB0B    mov         dword ptr [ebp-8],eax
 005DFB0E    mov         eax,dword ptr [ebp-4]
 005DFB11    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFB17    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>005DFB1B    je          005DFB31
 005DFB1D    mov         eax,dword ptr [ebp-4]
 005DFB20    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFB26    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005DFB29    mov         edx,dword ptr [eax]
 005DFB2B    call        dword ptr [edx+24];TGraphic.sub_005C35EC
 005DFB2E    mov         dword ptr [ebp-8],eax
 005DFB31    mov         eax,dword ptr [ebp-8]
 005DFB34    pop         ecx
 005DFB35    pop         ecx
 005DFB36    pop         ebp
 005DFB37    ret
*}
end;

//005DFB38
{*procedure sub_005DFB38(?:TImage; ?:?);
begin
 005DFB38    push        ebp
 005DFB39    mov         ebp,esp
 005DFB3B    add         esp,0FFFFFFE0
 005DFB3E    mov         dword ptr [ebp-8],edx
 005DFB41    mov         dword ptr [ebp-4],eax
 005DFB44    mov         eax,dword ptr [ebp-4]
 005DFB47    mov         eax,dword ptr [eax+168]
 005DFB4D    call        TPicture.GetWidth
 005DFB52    mov         dword ptr [ebp-0C],eax
 005DFB55    mov         eax,dword ptr [ebp-4]
 005DFB58    mov         eax,dword ptr [eax+168]
 005DFB5E    call        TPicture.GetHeight
 005DFB63    mov         dword ptr [ebp-10],eax
 005DFB66    mov         eax,dword ptr [ebp-4]
 005DFB69    call        TControl.GetClientWidth
 005DFB6E    mov         dword ptr [ebp-14],eax
 005DFB71    mov         eax,dword ptr [ebp-4]
 005DFB74    call        TControl.GetClientHeight
 005DFB79    mov         dword ptr [ebp-18],eax
 005DFB7C    mov         eax,dword ptr [ebp-4]
 005DFB7F    cmp         byte ptr [eax+178],0
>005DFB86    jne         005DFBAC
 005DFB88    mov         eax,dword ptr [ebp-4]
 005DFB8B    cmp         byte ptr [eax+17D],0
>005DFB92    je          005DFC4C
 005DFB98    mov         eax,dword ptr [ebp-0C]
 005DFB9B    cmp         eax,dword ptr [ebp-14]
>005DFB9E    jg          005DFBAC
 005DFBA0    mov         eax,dword ptr [ebp-10]
 005DFBA3    cmp         eax,dword ptr [ebp-18]
>005DFBA6    jle         005DFC4C
 005DFBAC    mov         eax,dword ptr [ebp-4]
 005DFBAF    cmp         byte ptr [eax+17D],0
>005DFBB6    je          005DFC40
 005DFBBC    cmp         dword ptr [ebp-0C],0
>005DFBC0    jle         005DFC40
 005DFBC2    cmp         dword ptr [ebp-10],0
>005DFBC6    jle         005DFC40
 005DFBC8    fild        dword ptr [ebp-0C]
 005DFBCB    fild        dword ptr [ebp-10]
 005DFBCE    fdivp       st(1),st
 005DFBD0    fstp        qword ptr [ebp-20]
 005DFBD3    wait
 005DFBD4    mov         eax,dword ptr [ebp-0C]
 005DFBD7    cmp         eax,dword ptr [ebp-10]
>005DFBDA    jle         005DFC0E
 005DFBDC    mov         eax,dword ptr [ebp-14]
 005DFBDF    mov         dword ptr [ebp-0C],eax
 005DFBE2    fild        dword ptr [ebp-14]
 005DFBE5    fdiv        qword ptr [ebp-20]
 005DFBE8    call        @TRUNC
 005DFBED    mov         dword ptr [ebp-10],eax
 005DFBF0    mov         eax,dword ptr [ebp-10]
 005DFBF3    cmp         eax,dword ptr [ebp-18]
>005DFBF6    jle         005DFC4C
 005DFBF8    mov         eax,dword ptr [ebp-18]
 005DFBFB    mov         dword ptr [ebp-10],eax
 005DFBFE    fild        dword ptr [ebp-18]
 005DFC01    fmul        qword ptr [ebp-20]
 005DFC04    call        @TRUNC
 005DFC09    mov         dword ptr [ebp-0C],eax
>005DFC0C    jmp         005DFC4C
 005DFC0E    mov         eax,dword ptr [ebp-18]
 005DFC11    mov         dword ptr [ebp-10],eax
 005DFC14    fild        dword ptr [ebp-18]
 005DFC17    fmul        qword ptr [ebp-20]
 005DFC1A    call        @TRUNC
 005DFC1F    mov         dword ptr [ebp-0C],eax
 005DFC22    mov         eax,dword ptr [ebp-0C]
 005DFC25    cmp         eax,dword ptr [ebp-14]
>005DFC28    jle         005DFC4C
 005DFC2A    mov         eax,dword ptr [ebp-14]
 005DFC2D    mov         dword ptr [ebp-0C],eax
 005DFC30    fild        dword ptr [ebp-14]
 005DFC33    fdiv        qword ptr [ebp-20]
 005DFC36    call        @TRUNC
 005DFC3B    mov         dword ptr [ebp-10],eax
>005DFC3E    jmp         005DFC4C
 005DFC40    mov         eax,dword ptr [ebp-14]
 005DFC43    mov         dword ptr [ebp-0C],eax
 005DFC46    mov         eax,dword ptr [ebp-18]
 005DFC49    mov         dword ptr [ebp-10],eax
 005DFC4C    mov         eax,dword ptr [ebp-8]
 005DFC4F    xor         edx,edx
 005DFC51    mov         dword ptr [eax],edx
 005DFC53    mov         eax,dword ptr [ebp-8]
 005DFC56    xor         edx,edx
 005DFC58    mov         dword ptr [eax+4],edx
 005DFC5B    mov         eax,dword ptr [ebp-8]
 005DFC5E    mov         edx,dword ptr [ebp-0C]
 005DFC61    mov         dword ptr [eax+8],edx
 005DFC64    mov         eax,dword ptr [ebp-8]
 005DFC67    mov         edx,dword ptr [ebp-10]
 005DFC6A    mov         dword ptr [eax+0C],edx
 005DFC6D    mov         eax,dword ptr [ebp-4]
 005DFC70    cmp         byte ptr [eax+179],0
>005DFC77    je          005DFC9E
 005DFC79    mov         eax,dword ptr [ebp-18]
 005DFC7C    sub         eax,dword ptr [ebp-10]
 005DFC7F    sar         eax,1
>005DFC81    jns         005DFC86
 005DFC83    adc         eax,0
 005DFC86    push        eax
 005DFC87    mov         eax,dword ptr [ebp-14]
 005DFC8A    sub         eax,dword ptr [ebp-0C]
 005DFC8D    sar         eax,1
>005DFC8F    jns         005DFC94
 005DFC91    adc         eax,0
 005DFC94    push        eax
 005DFC95    mov         eax,dword ptr [ebp-8]
 005DFC98    push        eax
 005DFC99    call        USER32.OffsetRect
 005DFC9E    mov         esp,ebp
 005DFCA0    pop         ebp
 005DFCA1    ret
end;*}

//005DFCA4
procedure sub_005DFCA4;
begin
{*
 005DFCA4    push        ebp
 005DFCA5    mov         ebp,esp
 005DFCA7    add         esp,0FFFFFFE0
 005DFCAA    mov         dword ptr [ebp-4],eax
 005DFCAD    mov         eax,dword ptr [ebp-4]
 005DFCB0    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>005DFCB4    je          005DFCF6
 005DFCB6    mov         eax,dword ptr [ebp-4]
 005DFCB9    mov         eax,dword ptr [eax+160];TImage...................................................FCanvas...
 005DFCBF    mov         dword ptr [ebp-0C],eax
 005DFCC2    mov         eax,dword ptr [ebp-0C]
 005DFCC5    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005DFCC8    mov         dl,1
 005DFCCA    call        TPen.SetStyle
 005DFCCF    mov         eax,dword ptr [ebp-0C]
 005DFCD2    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005DFCD5    mov         dl,1
 005DFCD7    call        TBrush.SetStyle
 005DFCDC    mov         eax,dword ptr [ebp-4]
 005DFCDF    mov         eax,dword ptr [eax+48];TImage.Width:Integer
 005DFCE2    push        eax
 005DFCE3    mov         eax,dword ptr [ebp-4]
 005DFCE6    mov         eax,dword ptr [eax+4C];TImage.Height:Integer
 005DFCE9    push        eax
 005DFCEA    xor         ecx,ecx
 005DFCEC    xor         edx,edx
 005DFCEE    mov         eax,dword ptr [ebp-0C]
 005DFCF1    call        005C1428
 005DFCF6    mov         eax,dword ptr [ebp-4]
 005DFCF9    mov         al,byte ptr [eax+17C];TImage.FDrawing:Boolean
 005DFCFF    mov         byte ptr [ebp-5],al
 005DFD02    mov         eax,dword ptr [ebp-4]
 005DFD05    mov         byte ptr [eax+17C],1;TImage.FDrawing:Boolean
 005DFD0C    xor         eax,eax
 005DFD0E    push        ebp
 005DFD0F    push        5DFD62
 005DFD14    push        dword ptr fs:[eax]
 005DFD17    mov         dword ptr fs:[eax],esp
 005DFD1A    mov         eax,dword ptr [ebp-4]
 005DFD1D    mov         eax,dword ptr [eax+160];TImage....................................................FCanva...
 005DFD23    mov         dword ptr [ebp-10],eax
 005DFD26    lea         edx,[ebp-20]
 005DFD29    mov         eax,dword ptr [ebp-4]
 005DFD2C    call        005DFB38
 005DFD31    lea         edx,[ebp-20]
 005DFD34    mov         eax,dword ptr [ebp-4]
 005DFD37    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFD3D    mov         ecx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005DFD40    mov         eax,dword ptr [ebp-10]
 005DFD43    call        TCanvas.StretchDraw
 005DFD48    xor         eax,eax
 005DFD4A    pop         edx
 005DFD4B    pop         ecx
 005DFD4C    pop         ecx
 005DFD4D    mov         dword ptr fs:[eax],edx
 005DFD50    push        5DFD69
 005DFD55    mov         eax,dword ptr [ebp-4]
 005DFD58    mov         dl,byte ptr [ebp-5]
 005DFD5B    mov         byte ptr [eax+17C],dl;TImage.FDrawing:Boolean
 005DFD61    ret
>005DFD62    jmp         @HandleFinally
>005DFD67    jmp         005DFD55
 005DFD69    mov         esp,ebp
 005DFD6B    pop         ebp
 005DFD6C    ret
*}
end;

//005DFD70
{*function sub_005DFD70(?:TImage):?;
begin
 005DFD70    push        ebp
 005DFD71    mov         ebp,esp
 005DFD73    add         esp,0FFFFFFF0
 005DFD76    mov         dword ptr [ebp-4],eax
 005DFD79    mov         byte ptr [ebp-5],0
 005DFD7D    mov         eax,dword ptr [ebp-4]
 005DFD80    mov         eax,dword ptr [eax+168]
 005DFD86    mov         eax,dword ptr [eax+0C]
 005DFD89    mov         dword ptr [ebp-10],eax
 005DFD8C    mov         eax,dword ptr [ebp-4]
 005DFD8F    cmp         byte ptr [eax+57],0
>005DFD93    je          005DFE38
 005DFD99    mov         eax,dword ptr [ebp-4]
 005DFD9C    test        byte ptr [eax+1C],1
>005DFDA0    jne         005DFE38
 005DFDA6    cmp         dword ptr [ebp-10],0
>005DFDAA    je          005DFE38
 005DFDB0    mov         eax,dword ptr [ebp-10]
 005DFDB3    cmp         byte ptr [eax+22],0
>005DFDB7    je          005DFE38
 005DFDB9    mov         eax,dword ptr [ebp-10]
 005DFDBC    mov         edx,dword ptr [eax]
 005DFDBE    call        dword ptr [edx+24]
 005DFDC1    test        eax,eax
>005DFDC3    jne         005DFDCE
 005DFDC5    mov         eax,dword ptr [ebp-10]
 005DFDC8    mov         byte ptr [eax+22],0
>005DFDCC    jmp         005DFE38
 005DFDCE    mov         eax,dword ptr [ebp-4]
 005DFDD1    call        005CD060
 005DFDD6    mov         dword ptr [ebp-0C],eax
 005DFDD9    cmp         dword ptr [ebp-0C],0
>005DFDDD    je          005DFE38
 005DFDDF    mov         eax,dword ptr [ebp-0C]
 005DFDE2    cmp         byte ptr [eax+22E],0
>005DFDE9    je          005DFE38
 005DFDEB    mov         eax,dword ptr [ebp-0C]
 005DFDEE    call        TWinControl.HandleAllocated
 005DFDF3    test        al,al
>005DFDF5    je          005DFE38
 005DFDF7    mov         eax,dword ptr [ebp-4]
 005DFDFA    cmp         byte ptr [eax+17C],0
>005DFE01    je          005DFE16
 005DFE03    push        0
 005DFE05    xor         ecx,ecx
 005DFE07    mov         edx,30F
 005DFE0C    mov         eax,dword ptr [ebp-0C]
 005DFE0F    call        005F4FA8
>005DFE14    jmp         005DFE2D
 005DFE16    push        0
 005DFE18    push        0
 005DFE1A    push        30F
 005DFE1F    mov         eax,dword ptr [ebp-0C]
 005DFE22    call        TWinControl.GetHandle
 005DFE27    push        eax
 005DFE28    call        USER32.PostMessageA
 005DFE2D    mov         byte ptr [ebp-5],1
 005DFE31    mov         eax,dword ptr [ebp-10]
 005DFE34    mov         byte ptr [eax+22],0
 005DFE38    mov         al,byte ptr [ebp-5]
 005DFE3B    mov         esp,ebp
 005DFE3D    pop         ebp
 005DFE3E    ret
end;*}

//005DFE40
{*procedure TImage.sub_005DFE40(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005DFE40    push        ebp
 005DFE41    mov         ebp,esp
 005DFE43    add         esp,0FFFFFFF4
 005DFE46    push        ebx
 005DFE47    mov         byte ptr [ebp-9],cl
 005DFE4A    mov         dword ptr [ebp-8],edx
 005DFE4D    mov         dword ptr [ebp-4],eax
 005DFE50    mov         eax,dword ptr [ebp-4]
 005DFE53    mov         al,byte ptr [eax+17A];TImage.IncrementalDisplay:Boolean
 005DFE59    and         al,byte ptr [ebp+10]
>005DFE5C    je          005DFE82
 005DFE5E    mov         eax,dword ptr [ebp-4]
 005DFE61    call        005DFD70
 005DFE66    test        al,al
>005DFE68    je          005DFE77
 005DFE6A    mov         eax,dword ptr [ebp-4]
 005DFE6D    mov         edx,dword ptr [eax]
 005DFE6F    call        dword ptr [edx+88];TImage.sub_005F3F1C
>005DFE75    jmp         005DFE82
 005DFE77    mov         eax,dword ptr [ebp-4]
 005DFE7A    mov         edx,dword ptr [eax]
 005DFE7C    call        dword ptr [edx+8C];TImage.sub_005DFCA4
 005DFE82    mov         eax,dword ptr [ebp-4]
 005DFE85    cmp         word ptr [eax+172],0;TImage.?f172:word
>005DFE8D    je          005DFEB4
 005DFE8F    mov         al,byte ptr [ebp+14]
 005DFE92    push        eax
 005DFE93    mov         al,byte ptr [ebp+10]
 005DFE96    push        eax
 005DFE97    mov         eax,dword ptr [ebp+0C]
 005DFE9A    push        eax
 005DFE9B    mov         eax,dword ptr [ebp+8]
 005DFE9E    push        eax
 005DFE9F    mov         ebx,dword ptr [ebp-4]
 005DFEA2    mov         cl,byte ptr [ebp-9]
 005DFEA5    mov         edx,dword ptr [ebp-8]
 005DFEA8    mov         eax,dword ptr [ebx+174];TImage.?f174:dword
 005DFEAE    call        dword ptr [ebx+170];TImage.OnProgress
 005DFEB4    pop         ebx
 005DFEB5    mov         esp,ebp
 005DFEB7    pop         ebp
 005DFEB8    ret         10
end;*}

//005DFEBC
procedure TImage.SetCenter(Value:Boolean);
begin
{*
 005DFEBC    push        ebp
 005DFEBD    mov         ebp,esp
 005DFEBF    add         esp,0FFFFFFF8
 005DFEC2    mov         byte ptr [ebp-5],dl
 005DFEC5    mov         dword ptr [ebp-4],eax
 005DFEC8    mov         eax,dword ptr [ebp-4]
 005DFECB    mov         al,byte ptr [eax+179];TImage.Center:Boolean
 005DFED1    cmp         al,byte ptr [ebp-5]
>005DFED4    je          005DFEED
 005DFED6    mov         al,byte ptr [ebp-5]
 005DFED9    mov         edx,dword ptr [ebp-4]
 005DFEDC    mov         byte ptr [edx+179],al;TImage.Center:Boolean
 005DFEE2    mov         edx,dword ptr [ebp-4]
 005DFEE5    mov         eax,dword ptr [ebp-4]
 005DFEE8    call        005DFFC0
 005DFEED    pop         ecx
 005DFEEE    pop         ecx
 005DFEEF    pop         ebp
 005DFEF0    ret
*}
end;

//005DFEF4
procedure TImage.SetPicture(Value:TPicture);
begin
{*
 005DFEF4    push        ebp
 005DFEF5    mov         ebp,esp
 005DFEF7    add         esp,0FFFFFFF8
 005DFEFA    mov         dword ptr [ebp-8],edx
 005DFEFD    mov         dword ptr [ebp-4],eax
 005DFF00    mov         edx,dword ptr [ebp-8]
 005DFF03    mov         eax,dword ptr [ebp-4]
 005DFF06    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFF0C    mov         ecx,dword ptr [eax]
 005DFF0E    call        dword ptr [ecx+8];TPicture.Assign
 005DFF11    pop         ecx
 005DFF12    pop         ecx
 005DFF13    pop         ebp
 005DFF14    ret
*}
end;

//005DFF18
procedure TImage.SetStretch(Value:Boolean);
begin
{*
 005DFF18    push        ebp
 005DFF19    mov         ebp,esp
 005DFF1B    add         esp,0FFFFFFF8
 005DFF1E    mov         byte ptr [ebp-5],dl
 005DFF21    mov         dword ptr [ebp-4],eax
 005DFF24    mov         al,byte ptr [ebp-5]
 005DFF27    mov         edx,dword ptr [ebp-4]
 005DFF2A    cmp         al,byte ptr [edx+178];TImage.Stretch:Boolean
>005DFF30    je          005DFF49
 005DFF32    mov         al,byte ptr [ebp-5]
 005DFF35    mov         edx,dword ptr [ebp-4]
 005DFF38    mov         byte ptr [edx+178],al;TImage.Stretch:Boolean
 005DFF3E    mov         edx,dword ptr [ebp-4]
 005DFF41    mov         eax,dword ptr [ebp-4]
 005DFF44    call        005DFFC0
 005DFF49    pop         ecx
 005DFF4A    pop         ecx
 005DFF4B    pop         ebp
 005DFF4C    ret
*}
end;

//005DFF50
procedure TImage.SetTransparent(Value:Boolean);
begin
{*
 005DFF50    push        ebp
 005DFF51    mov         ebp,esp
 005DFF53    add         esp,0FFFFFFF8
 005DFF56    mov         byte ptr [ebp-5],dl
 005DFF59    mov         dword ptr [ebp-4],eax
 005DFF5C    mov         al,byte ptr [ebp-5]
 005DFF5F    mov         edx,dword ptr [ebp-4]
 005DFF62    cmp         al,byte ptr [edx+17B];TImage.Transparent:Boolean
>005DFF68    je          005DFF81
 005DFF6A    mov         al,byte ptr [ebp-5]
 005DFF6D    mov         edx,dword ptr [ebp-4]
 005DFF70    mov         byte ptr [edx+17B],al;TImage.Transparent:Boolean
 005DFF76    mov         edx,dword ptr [ebp-4]
 005DFF79    mov         eax,dword ptr [ebp-4]
 005DFF7C    call        005DFFC0
 005DFF81    pop         ecx
 005DFF82    pop         ecx
 005DFF83    pop         ebp
 005DFF84    ret
*}
end;

//005DFF88
procedure TImage.SetProportional(Value:Boolean);
begin
{*
 005DFF88    push        ebp
 005DFF89    mov         ebp,esp
 005DFF8B    add         esp,0FFFFFFF8
 005DFF8E    mov         byte ptr [ebp-5],dl
 005DFF91    mov         dword ptr [ebp-4],eax
 005DFF94    mov         eax,dword ptr [ebp-4]
 005DFF97    mov         al,byte ptr [eax+17D];TImage.Proportional:Boolean
 005DFF9D    cmp         al,byte ptr [ebp-5]
>005DFFA0    je          005DFFB9
 005DFFA2    mov         al,byte ptr [ebp-5]
 005DFFA5    mov         edx,dword ptr [ebp-4]
 005DFFA8    mov         byte ptr [edx+17D],al;TImage.Proportional:Boolean
 005DFFAE    mov         edx,dword ptr [ebp-4]
 005DFFB1    mov         eax,dword ptr [ebp-4]
 005DFFB4    call        005DFFC0
 005DFFB9    pop         ecx
 005DFFBA    pop         ecx
 005DFFBB    pop         ebp
 005DFFBC    ret
*}
end;

//005DFFC0
procedure sub_005DFFC0(?:TImage; ?:TImage);
begin
{*
 005DFFC0    push        ebp
 005DFFC1    mov         ebp,esp
 005DFFC3    add         esp,0FFFFFFF4
 005DFFC6    push        ebx
 005DFFC7    mov         dword ptr [ebp-0C],edx
 005DFFCA    mov         dword ptr [ebp-4],eax
 005DFFCD    mov         eax,dword ptr [ebp-4]
 005DFFD0    cmp         byte ptr [eax+5C],0;TImage.FAutoSize:Boolean
>005DFFD4    je          005E002F
 005DFFD6    mov         eax,dword ptr [ebp-4]
 005DFFD9    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFFDF    call        TPicture.GetWidth
 005DFFE4    test        eax,eax
>005DFFE6    jle         005E002F
 005DFFE8    mov         eax,dword ptr [ebp-4]
 005DFFEB    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005DFFF1    call        TPicture.GetHeight
 005DFFF6    test        eax,eax
>005DFFF8    jle         005E002F
 005DFFFA    mov         eax,dword ptr [ebp-4]
 005DFFFD    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0003    call        TPicture.GetWidth
 005E0008    push        eax
 005E0009    mov         eax,dword ptr [ebp-4]
 005E000C    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0012    call        TPicture.GetHeight
 005E0017    push        eax
 005E0018    mov         eax,dword ptr [ebp-4]
 005E001B    mov         ecx,dword ptr [eax+44];TImage.Top:Integer
 005E001E    mov         eax,dword ptr [ebp-4]
 005E0021    mov         edx,dword ptr [eax+40];TImage.Left:Integer
 005E0024    mov         eax,dword ptr [ebp-4]
 005E0027    mov         ebx,dword ptr [eax]
 005E0029    call        dword ptr [ebx+84];TImage.sub_005F2870
 005E002F    mov         eax,dword ptr [ebp-4]
 005E0032    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0038    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005E003B    mov         dword ptr [ebp-8],eax
 005E003E    cmp         dword ptr [ebp-8],0
>005E0042    je          005E00EC
 005E0048    mov         eax,dword ptr [ebp-8]
 005E004B    mov         edx,dword ptr ds:[5BEC94];TMetafile
 005E0051    call        @IsClass
 005E0056    test        al,al
>005E0058    jne         005E007D
 005E005A    mov         eax,dword ptr [ebp-8]
 005E005D    mov         edx,dword ptr ds:[5BEF18];TIcon
 005E0063    call        @IsClass
 005E0068    test        al,al
>005E006A    jne         005E007D
 005E006C    mov         eax,dword ptr [ebp-4]
 005E006F    mov         dl,byte ptr [eax+17B];TImage.Transparent:Boolean
 005E0075    mov         eax,dword ptr [ebp-8]
 005E0078    mov         ecx,dword ptr [eax]
 005E007A    call        dword ptr [ecx+3C];TGraphic.sub_005C3748
 005E007D    mov         eax,dword ptr [ebp-8]
 005E0080    mov         edx,dword ptr [eax]
 005E0082    call        dword ptr [edx+28];TGraphic.sub_005C3604
 005E0085    test        al,al
>005E0087    jne         005E00B4
 005E0089    mov         eax,dword ptr [ebp-4]
 005E008C    cmp         byte ptr [eax+178],0;TImage.Stretch:Boolean
>005E0093    je          005E00B4
 005E0095    mov         eax,dword ptr [ebp-4]
 005E0098    cmp         byte ptr [eax+17D],0;TImage.Proportional:Boolean
>005E009F    jne         005E00B4
 005E00A1    mov         eax,[005E0118];0x40 gvar_005E0118
 005E00A6    mov         edx,dword ptr [ebp-4]
 005E00A9    or          eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 005E00AC    mov         edx,dword ptr [ebp-4]
 005E00AF    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
>005E00B2    jmp         005E00C7
 005E00B4    mov         eax,[005E0118];0x40 gvar_005E0118
 005E00B9    mov         edx,dword ptr [ebp-4]
 005E00BC    not         eax
 005E00BE    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 005E00C1    mov         edx,dword ptr [ebp-4]
 005E00C4    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 005E00C7    mov         eax,dword ptr [ebp-4]
 005E00CA    call        005DFD70
 005E00CF    test        al,al
>005E00D1    je          005E00FF
 005E00D3    mov         eax,dword ptr [ebp-4]
 005E00D6    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>005E00DD    je          005E00FF
 005E00DF    mov         eax,dword ptr [ebp-4]
 005E00E2    mov         edx,dword ptr [eax]
 005E00E4    call        dword ptr [edx+88];TImage.sub_005F3F1C
>005E00EA    jmp         005E00FF
 005E00EC    mov         eax,[005E0118];0x40 gvar_005E0118
 005E00F1    mov         edx,dword ptr [ebp-4]
 005E00F4    not         eax
 005E00F6    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 005E00F9    mov         edx,dword ptr [ebp-4]
 005E00FC    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 005E00FF    mov         eax,dword ptr [ebp-4]
 005E0102    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>005E0109    jne         005E0113
 005E010B    mov         eax,dword ptr [ebp-4]
 005E010E    mov         edx,dword ptr [eax]
 005E0110    call        dword ptr [edx+7C];TImage.sub_005F3E48
 005E0113    pop         ebx
 005E0114    mov         esp,ebp
 005E0116    pop         ebp
 005E0117    ret
*}
end;

//005E011C
{*function sub_005E011C(?:?; ?:?):?;
begin
 005E011C    push        ebp
 005E011D    mov         ebp,esp
 005E011F    add         esp,0FFFFFFF0
 005E0122    mov         dword ptr [ebp-0C],ecx
 005E0125    mov         dword ptr [ebp-8],edx
 005E0128    mov         dword ptr [ebp-4],eax
 005E012B    mov         byte ptr [ebp-0D],1
 005E012F    mov         eax,dword ptr [ebp-4]
 005E0132    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>005E0136    je          005E015C
 005E0138    mov         eax,dword ptr [ebp-4]
 005E013B    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0141    call        TPicture.GetWidth
 005E0146    test        eax,eax
>005E0148    jle         005E019C
 005E014A    mov         eax,dword ptr [ebp-4]
 005E014D    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0153    call        TPicture.GetHeight
 005E0158    test        eax,eax
>005E015A    jle         005E019C
 005E015C    mov         eax,dword ptr [ebp-4]
 005E015F    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 005E0162    test        al,al
>005E0164    je          005E016C
 005E0166    add         al,0FD
 005E0168    sub         al,2
>005E016A    jae         005E017F
 005E016C    mov         eax,dword ptr [ebp-4]
 005E016F    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0175    call        TPicture.GetWidth
 005E017A    mov         edx,dword ptr [ebp-8]
 005E017D    mov         dword ptr [edx],eax
 005E017F    mov         eax,dword ptr [ebp-4]
 005E0182    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 005E0185    sub         al,3
>005E0187    jae         005E019C
 005E0189    mov         eax,dword ptr [ebp-4]
 005E018C    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 005E0192    call        TPicture.GetHeight
 005E0197    mov         edx,dword ptr [ebp-0C]
 005E019A    mov         dword ptr [edx],eax
 005E019C    mov         al,byte ptr [ebp-0D]
 005E019F    mov         esp,ebp
 005E01A1    pop         ebp
 005E01A2    ret
end;*}

//005E01A4
constructor TBevel.Create(AOwner:TComponent);
begin
{*
 005E01A4    push        ebp
 005E01A5    mov         ebp,esp
 005E01A7    add         esp,0FFFFFFF4
 005E01AA    test        dl,dl
>005E01AC    je          005E01B6
 005E01AE    add         esp,0FFFFFFF0
 005E01B1    call        @ClassCreate
 005E01B6    mov         dword ptr [ebp-0C],ecx
 005E01B9    mov         byte ptr [ebp-5],dl
 005E01BC    mov         dword ptr [ebp-4],eax
 005E01BF    mov         ecx,dword ptr [ebp-0C]
 005E01C2    xor         edx,edx
 005E01C4    mov         eax,dword ptr [ebp-4]
 005E01C7    call        TGraphicControl.Create
 005E01CC    mov         eax,dword ptr [ebp-4]
 005E01CF    mov         eax,dword ptr [eax+50];TBevel.FControlStyle:TControlStyle
 005E01D2    or          eax,dword ptr ds:[5E022C];0x800 gvar_005E022C
 005E01D8    mov         edx,dword ptr [ebp-4]
 005E01DB    mov         dword ptr [edx+50],eax;TBevel.FControlStyle:TControlStyle
 005E01DE    mov         eax,dword ptr [ebp-4]
 005E01E1    mov         byte ptr [eax+168],0;TBevel.Style:TBevelStyle
 005E01E8    mov         eax,dword ptr [ebp-4]
 005E01EB    mov         byte ptr [eax+169],0;TBevel.Shape:TBevelShape
 005E01F2    mov         edx,32
 005E01F7    mov         eax,dword ptr [ebp-4]
 005E01FA    call        TControl.SetWidth
 005E01FF    mov         edx,32
 005E0204    mov         eax,dword ptr [ebp-4]
 005E0207    call        TControl.SetHeight
 005E020C    mov         eax,dword ptr [ebp-4]
 005E020F    cmp         byte ptr [ebp-5],0
>005E0213    je          005E0224
 005E0215    call        @AfterConstruction
 005E021A    pop         dword ptr fs:[0]
 005E0221    add         esp,0C
 005E0224    mov         eax,dword ptr [ebp-4]
 005E0227    mov         esp,ebp
 005E0229    pop         ebp
 005E022A    ret
*}
end;

//005E0230
procedure TBevel.SetStyle(Value:TBevelStyle);
begin
{*
 005E0230    push        ebp
 005E0231    mov         ebp,esp
 005E0233    add         esp,0FFFFFFF8
 005E0236    mov         byte ptr [ebp-5],dl
 005E0239    mov         dword ptr [ebp-4],eax
 005E023C    mov         al,byte ptr [ebp-5]
 005E023F    mov         edx,dword ptr [ebp-4]
 005E0242    cmp         al,byte ptr [edx+168];TBevel.Style:TBevelStyle
>005E0248    je          005E025E
 005E024A    mov         al,byte ptr [ebp-5]
 005E024D    mov         edx,dword ptr [ebp-4]
 005E0250    mov         byte ptr [edx+168],al;TBevel.Style:TBevelStyle
 005E0256    mov         eax,dword ptr [ebp-4]
 005E0259    mov         edx,dword ptr [eax]
 005E025B    call        dword ptr [edx+7C];TBevel.sub_005F3E48
 005E025E    pop         ecx
 005E025F    pop         ecx
 005E0260    pop         ebp
 005E0261    ret
*}
end;

//005E0264
procedure TBevel.SetShape(Value:TBevelShape);
begin
{*
 005E0264    push        ebp
 005E0265    mov         ebp,esp
 005E0267    add         esp,0FFFFFFF8
 005E026A    mov         byte ptr [ebp-5],dl
 005E026D    mov         dword ptr [ebp-4],eax
 005E0270    mov         al,byte ptr [ebp-5]
 005E0273    mov         edx,dword ptr [ebp-4]
 005E0276    cmp         al,byte ptr [edx+169];TBevel.Shape:TBevelShape
>005E027C    je          005E0292
 005E027E    mov         al,byte ptr [ebp-5]
 005E0281    mov         edx,dword ptr [ebp-4]
 005E0284    mov         byte ptr [edx+169],al;TBevel.Shape:TBevelShape
 005E028A    mov         eax,dword ptr [ebp-4]
 005E028D    mov         edx,dword ptr [eax]
 005E028F    call        dword ptr [edx+7C];TBevel.sub_005F3E48
 005E0292    pop         ecx
 005E0293    pop         ecx
 005E0294    pop         ebp
 005E0295    ret
*}
end;

//005E0298
{*procedure sub_005E0298(?:?; ?:?);
begin
 005E0298    push        ebp
 005E0299    mov         ebp,esp
 005E029B    add         esp,0FFFFFFC8
 005E029E    mov         dword ptr [ebp-4],eax
 005E02A1    mov         eax,dword ptr [ebp+8]
 005E02A4    mov         eax,dword ptr [eax-4]
 005E02A7    mov         eax,dword ptr [eax+160]
 005E02AD    mov         dword ptr [ebp-8],eax
 005E02B0    mov         eax,dword ptr [ebp+8]
 005E02B3    mov         edx,dword ptr [eax-8]
 005E02B6    mov         eax,dword ptr [ebp-8]
 005E02B9    mov         eax,dword ptr [eax+10]
 005E02BC    call        TPen.SetColor
 005E02C1    lea         ecx,[ebp-28]
 005E02C4    mov         edx,dword ptr [ebp-4]
 005E02C7    mov         edx,dword ptr [edx+0C]
 005E02CA    mov         eax,dword ptr [ebp-4]
 005E02CD    mov         eax,dword ptr [eax]
 005E02CF    call        Point
 005E02D4    mov         eax,dword ptr [ebp-28]
 005E02D7    mov         dword ptr [ebp-20],eax
 005E02DA    mov         eax,dword ptr [ebp-24]
 005E02DD    mov         dword ptr [ebp-1C],eax
 005E02E0    lea         ecx,[ebp-30]
 005E02E3    mov         edx,dword ptr [ebp-4]
 005E02E6    mov         edx,dword ptr [edx+4]
 005E02E9    mov         eax,dword ptr [ebp-4]
 005E02EC    mov         eax,dword ptr [eax]
 005E02EE    call        Point
 005E02F3    mov         eax,dword ptr [ebp-30]
 005E02F6    mov         dword ptr [ebp-18],eax
 005E02F9    mov         eax,dword ptr [ebp-2C]
 005E02FC    mov         dword ptr [ebp-14],eax
 005E02FF    lea         ecx,[ebp-38]
 005E0302    mov         edx,dword ptr [ebp-4]
 005E0305    mov         edx,dword ptr [edx+4]
 005E0308    mov         eax,dword ptr [ebp-4]
 005E030B    mov         eax,dword ptr [eax+8]
 005E030E    call        Point
 005E0313    mov         eax,dword ptr [ebp-38]
 005E0316    mov         dword ptr [ebp-10],eax
 005E0319    mov         eax,dword ptr [ebp-34]
 005E031C    mov         dword ptr [ebp-0C],eax
 005E031F    lea         edx,[ebp-20]
 005E0322    mov         ecx,2
 005E0327    mov         eax,dword ptr [ebp-8]
 005E032A    call        005C13DC
 005E032F    mov         eax,dword ptr [ebp+8]
 005E0332    mov         edx,dword ptr [eax-0C]
 005E0335    mov         eax,dword ptr [ebp-8]
 005E0338    mov         eax,dword ptr [eax+10]
 005E033B    call        TPen.SetColor
 005E0340    lea         ecx,[ebp-28]
 005E0343    mov         edx,dword ptr [ebp-4]
 005E0346    mov         edx,dword ptr [edx+4]
 005E0349    mov         eax,dword ptr [ebp-4]
 005E034C    mov         eax,dword ptr [eax+8]
 005E034F    call        Point
 005E0354    mov         eax,dword ptr [ebp-28]
 005E0357    mov         dword ptr [ebp-20],eax
 005E035A    mov         eax,dword ptr [ebp-24]
 005E035D    mov         dword ptr [ebp-1C],eax
 005E0360    lea         ecx,[ebp-30]
 005E0363    mov         edx,dword ptr [ebp-4]
 005E0366    mov         edx,dword ptr [edx+0C]
 005E0369    mov         eax,dword ptr [ebp-4]
 005E036C    mov         eax,dword ptr [eax+8]
 005E036F    call        Point
 005E0374    mov         eax,dword ptr [ebp-30]
 005E0377    mov         dword ptr [ebp-18],eax
 005E037A    mov         eax,dword ptr [ebp-2C]
 005E037D    mov         dword ptr [ebp-14],eax
 005E0380    lea         ecx,[ebp-38]
 005E0383    mov         edx,dword ptr [ebp-4]
 005E0386    mov         edx,dword ptr [edx+0C]
 005E0389    mov         eax,dword ptr [ebp-4]
 005E038C    mov         eax,dword ptr [eax]
 005E038E    call        Point
 005E0393    mov         eax,dword ptr [ebp-38]
 005E0396    mov         dword ptr [ebp-10],eax
 005E0399    mov         eax,dword ptr [ebp-34]
 005E039C    mov         dword ptr [ebp-0C],eax
 005E039F    lea         edx,[ebp-20]
 005E03A2    mov         ecx,2
 005E03A7    mov         eax,dword ptr [ebp-8]
 005E03AA    call        005C13DC
 005E03AF    mov         esp,ebp
 005E03B1    pop         ebp
 005E03B2    ret
end;*}

//005E03B4
{*procedure sub_005E03B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005E03B4    push        ebp
 005E03B5    mov         ebp,esp
 005E03B7    add         esp,0FFFFFFF0
 005E03BA    mov         dword ptr [ebp-0C],ecx
 005E03BD    mov         dword ptr [ebp-8],edx
 005E03C0    mov         dword ptr [ebp-4],eax
 005E03C3    mov         eax,dword ptr [ebp+10]
 005E03C6    mov         eax,dword ptr [eax-4]
 005E03C9    mov         eax,dword ptr [eax+160]
 005E03CF    mov         dword ptr [ebp-10],eax
 005E03D2    mov         edx,dword ptr [ebp-4]
 005E03D5    mov         eax,dword ptr [ebp-10]
 005E03D8    mov         eax,dword ptr [eax+10]
 005E03DB    call        TPen.SetColor
 005E03E0    mov         ecx,dword ptr [ebp-0C]
 005E03E3    mov         edx,dword ptr [ebp-8]
 005E03E6    mov         eax,dword ptr [ebp-10]
 005E03E9    call        005C12F0
 005E03EE    mov         ecx,dword ptr [ebp+8]
 005E03F1    mov         edx,dword ptr [ebp+0C]
 005E03F4    mov         eax,dword ptr [ebp-10]
 005E03F7    call        005C1274
 005E03FC    mov         esp,ebp
 005E03FE    pop         ebp
 005E03FF    ret         8
end;*}

//005E0404
procedure sub_005E0404;
begin
{*
 005E0404    push        ebp
 005E0405    mov         ebp,esp
 005E0407    add         esp,0FFFFFFDC
 005E040A    mov         dword ptr [ebp-4],eax
 005E040D    mov         eax,dword ptr [ebp-4]
 005E0410    mov         eax,dword ptr [eax+160];TBevel.....................................................FCanv...
 005E0416    mov         dword ptr [ebp-14],eax
 005E0419    mov         eax,dword ptr [ebp-4]
 005E041C    test        byte ptr [eax+1C],10;TBevel.FComponentState:TComponentState
>005E0420    je          005E04C0
 005E0426    mov         eax,dword ptr [ebp-4]
 005E0429    cmp         byte ptr [eax+169],6;TBevel.Shape:TBevelShape
>005E0430    jne         005E048C
 005E0432    mov         dl,2
 005E0434    mov         eax,dword ptr [ebp-14]
 005E0437    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E043A    call        TPen.SetStyle
 005E043F    mov         dl,0E
 005E0441    mov         eax,dword ptr [ebp-14]
 005E0444    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E0447    call        TPen.SetMode
 005E044C    mov         edx,0FFD8CE
 005E0451    mov         eax,dword ptr [ebp-14]
 005E0454    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E0457    call        TPen.SetColor
 005E045C    mov         dl,1
 005E045E    mov         eax,dword ptr [ebp-14]
 005E0461    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E0464    call        TBrush.SetStyle
 005E0469    mov         eax,dword ptr [ebp-4]
 005E046C    call        TControl.GetClientWidth
 005E0471    push        eax
 005E0472    mov         eax,dword ptr [ebp-4]
 005E0475    call        TControl.GetClientHeight
 005E047A    push        eax
 005E047B    xor         ecx,ecx
 005E047D    xor         edx,edx
 005E047F    mov         eax,dword ptr [ebp-14]
 005E0482    call        005C1428
>005E0487    jmp         005E06C5
 005E048C    xor         edx,edx
 005E048E    mov         eax,dword ptr [ebp-14]
 005E0491    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E0494    call        TPen.SetStyle
 005E0499    mov         dl,4
 005E049B    mov         eax,dword ptr [ebp-14]
 005E049E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E04A1    call        TPen.SetMode
 005E04A6    xor         edx,edx
 005E04A8    mov         eax,dword ptr [ebp-14]
 005E04AB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E04AE    call        TPen.SetColor
 005E04B3    xor         edx,edx
 005E04B5    mov         eax,dword ptr [ebp-14]
 005E04B8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E04BB    call        TBrush.SetStyle
 005E04C0    mov         edx,1
 005E04C5    mov         eax,dword ptr [ebp-14]
 005E04C8    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E04CB    call        TPen.SetWidth
 005E04D0    mov         eax,dword ptr [ebp-4]
 005E04D3    cmp         byte ptr [eax+168],0;TBevel.Style:TBevelStyle
>005E04DA    jne         005E04EC
 005E04DC    mov         dword ptr [ebp-8],80000010
 005E04E3    mov         dword ptr [ebp-0C],80000014
>005E04EA    jmp         005E04FA
 005E04EC    mov         dword ptr [ebp-8],80000014
 005E04F3    mov         dword ptr [ebp-0C],80000010
 005E04FA    mov         eax,dword ptr [ebp-4]
 005E04FD    movzx       eax,byte ptr [eax+169];TBevel.Shape:TBevelShape
 005E0504    cmp         eax,5
>005E0507    ja          005E06C5
 005E050D    jmp         dword ptr [eax*4+5E0514]
 005E050D    dd          005E052C
 005E050D    dd          005E0557
 005E050D    dd          005E05CA
 005E050D    dd          005E0600
 005E050D    dd          005E064A
 005E050D    dd          005E067D
 005E052C    push        ebp
 005E052D    mov         eax,dword ptr [ebp-4]
 005E0530    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E0533    dec         eax
 005E0534    push        eax
 005E0535    lea         eax,[ebp-24]
 005E0538    push        eax
 005E0539    mov         eax,dword ptr [ebp-4]
 005E053C    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 005E053F    dec         ecx
 005E0540    xor         edx,edx
 005E0542    xor         eax,eax
 005E0544    call        Rect
 005E0549    lea         eax,[ebp-24]
 005E054C    call        005E0298
 005E0551    pop         ecx
>005E0552    jmp         005E06C5
 005E0557    mov         eax,dword ptr [ebp-8]
 005E055A    mov         dword ptr [ebp-10],eax
 005E055D    mov         eax,dword ptr [ebp-0C]
 005E0560    mov         dword ptr [ebp-8],eax
 005E0563    push        ebp
 005E0564    mov         eax,dword ptr [ebp-4]
 005E0567    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E056A    dec         eax
 005E056B    push        eax
 005E056C    lea         eax,[ebp-24]
 005E056F    push        eax
 005E0570    mov         eax,dword ptr [ebp-4]
 005E0573    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 005E0576    dec         ecx
 005E0577    mov         edx,1
 005E057C    mov         eax,1
 005E0581    call        Rect
 005E0586    lea         eax,[ebp-24]
 005E0589    call        005E0298
 005E058E    pop         ecx
 005E058F    mov         eax,dword ptr [ebp-10]
 005E0592    mov         dword ptr [ebp-0C],eax
 005E0595    mov         eax,dword ptr [ebp-10]
 005E0598    mov         dword ptr [ebp-8],eax
 005E059B    push        ebp
 005E059C    mov         eax,dword ptr [ebp-4]
 005E059F    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E05A2    sub         eax,2
 005E05A5    push        eax
 005E05A6    lea         eax,[ebp-24]
 005E05A9    push        eax
 005E05AA    mov         eax,dword ptr [ebp-4]
 005E05AD    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 005E05B0    sub         ecx,2
 005E05B3    xor         edx,edx
 005E05B5    xor         eax,eax
 005E05B7    call        Rect
 005E05BC    lea         eax,[ebp-24]
 005E05BF    call        005E0298
 005E05C4    pop         ecx
>005E05C5    jmp         005E06C5
 005E05CA    push        ebp
 005E05CB    mov         eax,dword ptr [ebp-4]
 005E05CE    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E05D1    push        eax
 005E05D2    push        0
 005E05D4    xor         ecx,ecx
 005E05D6    xor         edx,edx
 005E05D8    mov         eax,dword ptr [ebp-8]
 005E05DB    call        005E03B4
 005E05E0    pop         ecx
 005E05E1    push        ebp
 005E05E2    mov         eax,dword ptr [ebp-4]
 005E05E5    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E05E8    push        eax
 005E05E9    push        1
 005E05EB    mov         ecx,1
 005E05F0    xor         edx,edx
 005E05F2    mov         eax,dword ptr [ebp-0C]
 005E05F5    call        005E03B4
 005E05FA    pop         ecx
>005E05FB    jmp         005E06C5
 005E0600    push        ebp
 005E0601    mov         eax,dword ptr [ebp-4]
 005E0604    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E0607    push        eax
 005E0608    mov         eax,dword ptr [ebp-4]
 005E060B    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E060E    sub         eax,2
 005E0611    push        eax
 005E0612    mov         eax,dword ptr [ebp-4]
 005E0615    mov         ecx,dword ptr [eax+4C];TBevel.Height:Integer
 005E0618    sub         ecx,2
 005E061B    xor         edx,edx
 005E061D    mov         eax,dword ptr [ebp-8]
 005E0620    call        005E03B4
 005E0625    pop         ecx
 005E0626    push        ebp
 005E0627    mov         eax,dword ptr [ebp-4]
 005E062A    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E062D    push        eax
 005E062E    mov         eax,dword ptr [ebp-4]
 005E0631    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E0634    dec         eax
 005E0635    push        eax
 005E0636    mov         eax,dword ptr [ebp-4]
 005E0639    mov         ecx,dword ptr [eax+4C];TBevel.Height:Integer
 005E063C    dec         ecx
 005E063D    xor         edx,edx
 005E063F    mov         eax,dword ptr [ebp-0C]
 005E0642    call        005E03B4
 005E0647    pop         ecx
>005E0648    jmp         005E06C5
 005E064A    push        ebp
 005E064B    push        0
 005E064D    mov         eax,dword ptr [ebp-4]
 005E0650    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E0653    push        eax
 005E0654    xor         ecx,ecx
 005E0656    xor         edx,edx
 005E0658    mov         eax,dword ptr [ebp-8]
 005E065B    call        005E03B4
 005E0660    pop         ecx
 005E0661    push        ebp
 005E0662    push        1
 005E0664    mov         eax,dword ptr [ebp-4]
 005E0667    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E066A    push        eax
 005E066B    xor         ecx,ecx
 005E066D    mov         edx,1
 005E0672    mov         eax,dword ptr [ebp-0C]
 005E0675    call        005E03B4
 005E067A    pop         ecx
>005E067B    jmp         005E06C5
 005E067D    push        ebp
 005E067E    mov         eax,dword ptr [ebp-4]
 005E0681    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E0684    sub         eax,2
 005E0687    push        eax
 005E0688    mov         eax,dword ptr [ebp-4]
 005E068B    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E068E    push        eax
 005E068F    mov         eax,dword ptr [ebp-4]
 005E0692    mov         edx,dword ptr [eax+48];TBevel.Width:Integer
 005E0695    sub         edx,2
 005E0698    xor         ecx,ecx
 005E069A    mov         eax,dword ptr [ebp-8]
 005E069D    call        005E03B4
 005E06A2    pop         ecx
 005E06A3    push        ebp
 005E06A4    mov         eax,dword ptr [ebp-4]
 005E06A7    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 005E06AA    dec         eax
 005E06AB    push        eax
 005E06AC    mov         eax,dword ptr [ebp-4]
 005E06AF    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 005E06B2    push        eax
 005E06B3    mov         eax,dword ptr [ebp-4]
 005E06B6    mov         edx,dword ptr [eax+48];TBevel.Width:Integer
 005E06B9    dec         edx
 005E06BA    xor         ecx,ecx
 005E06BC    mov         eax,dword ptr [ebp-0C]
 005E06BF    call        005E03B4
 005E06C4    pop         ecx
 005E06C5    mov         esp,ebp
 005E06C7    pop         ebp
 005E06C8    ret
*}
end;

//005E06CC
constructor TTimer.Create(AOwner:TComponent);
begin
{*
 005E06CC    push        ebp
 005E06CD    mov         ebp,esp
 005E06CF    add         esp,0FFFFFFF4
 005E06D2    test        dl,dl
>005E06D4    je          005E06DE
 005E06D6    add         esp,0FFFFFFF0
 005E06D9    call        @ClassCreate
 005E06DE    mov         dword ptr [ebp-0C],ecx
 005E06E1    mov         byte ptr [ebp-5],dl
 005E06E4    mov         dword ptr [ebp-4],eax
 005E06E7    mov         ecx,dword ptr [ebp-0C]
 005E06EA    xor         edx,edx
 005E06EC    mov         eax,dword ptr [ebp-4]
 005E06EF    call        TComponent.Create
 005E06F4    mov         eax,dword ptr [ebp-4]
 005E06F7    mov         byte ptr [eax+40],1;TTimer.Enabled:Boolean
 005E06FB    mov         eax,dword ptr [ebp-4]
 005E06FE    mov         dword ptr [eax+30],3E8;TTimer.Interval:Cardinal
 005E0705    mov         eax,dword ptr [ebp-4]
 005E0708    push        eax
 005E0709    push        5E0784
 005E070E    call        00651AE8
 005E0713    mov         edx,dword ptr [ebp-4]
 005E0716    mov         dword ptr [edx+34],eax;TTimer.FWindowHandle:HWND
 005E0719    mov         eax,dword ptr [ebp-4]
 005E071C    cmp         byte ptr [ebp-5],0
>005E0720    je          005E0731
 005E0722    call        @AfterConstruction
 005E0727    pop         dword ptr fs:[0]
 005E072E    add         esp,0C
 005E0731    mov         eax,dword ptr [ebp-4]
 005E0734    mov         esp,ebp
 005E0736    pop         ebp
 005E0737    ret
*}
end;

//005E0738
destructor TTimer.Destroy;
begin
{*
 005E0738    push        ebp
 005E0739    mov         ebp,esp
 005E073B    add         esp,0FFFFFFF8
 005E073E    call        @BeforeDestruction
 005E0743    mov         byte ptr [ebp-5],dl
 005E0746    mov         dword ptr [ebp-4],eax
 005E0749    mov         eax,dword ptr [ebp-4]
 005E074C    mov         byte ptr [eax+40],0;TTimer.Enabled:Boolean
 005E0750    mov         eax,dword ptr [ebp-4]
 005E0753    call        005E080C
 005E0758    mov         eax,dword ptr [ebp-4]
 005E075B    mov         eax,dword ptr [eax+34];TTimer.FWindowHandle:HWND
 005E075E    call        00651BA4
 005E0763    mov         dl,byte ptr [ebp-5]
 005E0766    and         dl,0FC
 005E0769    mov         eax,dword ptr [ebp-4]
 005E076C    call        TComponent.Destroy
 005E0771    cmp         byte ptr [ebp-5],0
>005E0775    jle         005E077F
 005E0777    mov         eax,dword ptr [ebp-4]
 005E077A    call        @ClassDestroy
 005E077F    pop         ecx
 005E0780    pop         ecx
 005E0781    pop         ebp
 005E0782    ret
*}
end;

//005E080C
procedure sub_005E080C(?:TTimer);
begin
{*
 005E080C    push        ebp
 005E080D    mov         ebp,esp
 005E080F    add         esp,0FFFFFFF8
 005E0812    xor         edx,edx
 005E0814    mov         dword ptr [ebp-8],edx
 005E0817    mov         dword ptr [ebp-4],eax
 005E081A    xor         eax,eax
 005E081C    push        ebp
 005E081D    push        5E08A4
 005E0822    push        dword ptr fs:[eax]
 005E0825    mov         dword ptr fs:[eax],esp
 005E0828    push        1
 005E082A    mov         eax,dword ptr [ebp-4]
 005E082D    mov         eax,dword ptr [eax+34];TTimer.FWindowHandle:HWND
 005E0830    push        eax
 005E0831    call        USER32.KillTimer
 005E0836    mov         eax,dword ptr [ebp-4]
 005E0839    cmp         dword ptr [eax+30],0;TTimer.Interval:Cardinal
>005E083D    je          005E088E
 005E083F    mov         eax,dword ptr [ebp-4]
 005E0842    cmp         byte ptr [eax+40],0;TTimer.Enabled:Boolean
>005E0846    je          005E088E
 005E0848    mov         eax,dword ptr [ebp-4]
 005E084B    cmp         word ptr [eax+3A],0;TTimer.?f3A:word
>005E0850    je          005E088E
 005E0852    push        0
 005E0854    mov         eax,dword ptr [ebp-4]
 005E0857    mov         eax,dword ptr [eax+30];TTimer.Interval:Cardinal
 005E085A    push        eax
 005E085B    push        1
 005E085D    mov         eax,dword ptr [ebp-4]
 005E0860    mov         eax,dword ptr [eax+34];TTimer.FWindowHandle:HWND
 005E0863    push        eax
 005E0864    call        USER32.SetTimer
 005E0869    test        eax,eax
>005E086B    jne         005E088E
 005E086D    lea         edx,[ebp-8]
 005E0870    mov         eax,[006E9E60];^gvar_0063CAD0
 005E0875    call        LoadResString
 005E087A    mov         ecx,dword ptr [ebp-8]
 005E087D    mov         dl,1
 005E087F    mov         eax,[006421E8];EOutOfResources
 005E0884    call        Exception.Create;EOutOfResources.Create
 005E0889    call        @RaiseExcept
 005E088E    xor         eax,eax
 005E0890    pop         edx
 005E0891    pop         ecx
 005E0892    pop         ecx
 005E0893    mov         dword ptr fs:[eax],edx
 005E0896    push        5E08AB
 005E089B    lea         eax,[ebp-8]
 005E089E    call        @LStrClr
 005E08A3    ret
>005E08A4    jmp         @HandleFinally
>005E08A9    jmp         005E089B
 005E08AB    pop         ecx
 005E08AC    pop         ecx
 005E08AD    pop         ebp
 005E08AE    ret
*}
end;

//005E08B0
procedure TTimer.SetEnabled(Value:Boolean);
begin
{*
 005E08B0    push        ebp
 005E08B1    mov         ebp,esp
 005E08B3    add         esp,0FFFFFFF8
 005E08B6    mov         byte ptr [ebp-5],dl
 005E08B9    mov         dword ptr [ebp-4],eax
 005E08BC    mov         al,byte ptr [ebp-5]
 005E08BF    mov         edx,dword ptr [ebp-4]
 005E08C2    cmp         al,byte ptr [edx+40];TTimer.Enabled:Boolean
>005E08C5    je          005E08D8
 005E08C7    mov         al,byte ptr [ebp-5]
 005E08CA    mov         edx,dword ptr [ebp-4]
 005E08CD    mov         byte ptr [edx+40],al;TTimer.Enabled:Boolean
 005E08D0    mov         eax,dword ptr [ebp-4]
 005E08D3    call        005E080C
 005E08D8    pop         ecx
 005E08D9    pop         ecx
 005E08DA    pop         ebp
 005E08DB    ret
*}
end;

//005E08DC
procedure TTimer.SetInterval(Value:Cardinal);
begin
{*
 005E08DC    push        ebp
 005E08DD    mov         ebp,esp
 005E08DF    add         esp,0FFFFFFF8
 005E08E2    mov         dword ptr [ebp-8],edx
 005E08E5    mov         dword ptr [ebp-4],eax
 005E08E8    mov         eax,dword ptr [ebp-8]
 005E08EB    mov         edx,dword ptr [ebp-4]
 005E08EE    cmp         eax,dword ptr [edx+30];TTimer.Interval:Cardinal
>005E08F1    je          005E0904
 005E08F3    mov         eax,dword ptr [ebp-8]
 005E08F6    mov         edx,dword ptr [ebp-4]
 005E08F9    mov         dword ptr [edx+30],eax;TTimer.Interval:Cardinal
 005E08FC    mov         eax,dword ptr [ebp-4]
 005E08FF    call        005E080C
 005E0904    pop         ecx
 005E0905    pop         ecx
 005E0906    pop         ebp
 005E0907    ret
*}
end;

//005E0908
{*procedure TTimer.SetOnTimer(Value:TNotifyEvent; ?:?; ?:?);
begin
 005E0908    push        ebp
 005E0909    mov         ebp,esp
 005E090B    push        ecx
 005E090C    mov         dword ptr [ebp-4],eax
 005E090F    mov         eax,dword ptr [ebp-4]
 005E0912    mov         edx,dword ptr [ebp+8]
 005E0915    mov         dword ptr [eax+38],edx;TTimer.OnTimer:TNotifyEvent
 005E0918    mov         edx,dword ptr [ebp+0C]
 005E091B    mov         dword ptr [eax+3C],edx;TTimer.?f3C:dword
 005E091E    mov         eax,dword ptr [ebp-4]
 005E0921    call        005E080C
 005E0926    pop         ecx
 005E0927    pop         ebp
 005E0928    ret         8
end;*}

//005E092C
procedure TTimer.sub_005E092C;
begin
{*
 005E092C    push        ebp
 005E092D    mov         ebp,esp
 005E092F    push        ecx
 005E0930    push        ebx
 005E0931    mov         dword ptr [ebp-4],eax
 005E0934    mov         eax,dword ptr [ebp-4]
 005E0937    cmp         word ptr [eax+3A],0;TTimer.?f3A:word
>005E093C    je          005E094A
 005E093E    mov         ebx,dword ptr [ebp-4]
 005E0941    mov         edx,dword ptr [ebp-4]
 005E0944    mov         eax,dword ptr [ebx+3C];TTimer.?f3C:dword
 005E0947    call        dword ptr [ebx+38];TTimer.OnTimer
 005E094A    pop         ebx
 005E094B    pop         ecx
 005E094C    pop         ebp
 005E094D    ret
*}
end;

//005E0950
constructor TCustomPanel.Create(AOwner:TComponent);
begin
{*
 005E0950    push        ebp
 005E0951    mov         ebp,esp
 005E0953    add         esp,0FFFFFFF4
 005E0956    test        dl,dl
>005E0958    je          005E0962
 005E095A    add         esp,0FFFFFFF0
 005E095D    call        @ClassCreate
 005E0962    mov         dword ptr [ebp-0C],ecx
 005E0965    mov         byte ptr [ebp-5],dl
 005E0968    mov         dword ptr [ebp-4],eax
 005E096B    mov         ecx,dword ptr [ebp-0C]
 005E096E    xor         edx,edx
 005E0970    mov         eax,dword ptr [ebp-4]
 005E0973    call        TCustomControl.Create
 005E0978    mov         eax,dword ptr [ebp-4]
 005E097B    mov         edx,dword ptr ds:[5E0A0C]
 005E0981    mov         dword ptr [eax+50],edx
 005E0984    mov         edx,0B9
 005E0989    mov         eax,dword ptr [ebp-4]
 005E098C    call        TControl.SetWidth
 005E0991    mov         edx,29
 005E0996    mov         eax,dword ptr [ebp-4]
 005E0999    call        TControl.SetHeight
 005E099E    mov         eax,dword ptr [ebp-4]
 005E09A1    mov         byte ptr [eax+21F],2
 005E09A8    mov         dl,2
 005E09AA    mov         eax,dword ptr [ebp-4]
 005E09AD    call        TChart.SetBevelOuter
 005E09B2    mov         edx,1
 005E09B7    mov         eax,dword ptr [ebp-4]
 005E09BA    call        TChart.SetBevelWidth
 005E09BF    mov         eax,dword ptr [ebp-4]
 005E09C2    mov         byte ptr [eax+21C],0
 005E09C9    mov         edx,8000000F
 005E09CE    mov         eax,dword ptr [ebp-4]
 005E09D1    call        TControl.SetColor
 005E09D6    mov         eax,dword ptr [ebp-4]
 005E09D9    mov         byte ptr [eax+21D],1
 005E09E0    mov         dl,1
 005E09E2    mov         eax,dword ptr [ebp-4]
 005E09E5    call        TChart.SetUseDockManager
 005E09EA    mov         eax,dword ptr [ebp-4]
 005E09ED    cmp         byte ptr [ebp-5],0
>005E09F1    je          005E0A02
 005E09F3    call        @AfterConstruction
 005E09F8    pop         dword ptr fs:[0]
 005E09FF    add         esp,0C
 005E0A02    mov         eax,dword ptr [ebp-4]
 005E0A05    mov         esp,ebp
 005E0A07    pop         ebp
 005E0A08    ret
*}
end;

//005E0A10
procedure TCustomPanel.CreateParams(var Params:TCreateParams);
begin
{*
 005E0A10    push        ebp
 005E0A11    mov         ebp,esp
 005E0A13    add         esp,0FFFFFFF8
 005E0A16    mov         dword ptr [ebp-8],edx
 005E0A19    mov         dword ptr [ebp-4],eax
 005E0A1C    mov         edx,dword ptr [ebp-8]
 005E0A1F    mov         eax,dword ptr [ebp-4]
 005E0A22    call        005F7FC0
 005E0A27    mov         eax,dword ptr [ebp-4]
 005E0A2A    movzx       eax,byte ptr [eax+21C]
 005E0A31    mov         eax,dword ptr [eax*4+6E4104]
 005E0A38    mov         edx,dword ptr [ebp-8]
 005E0A3B    or          dword ptr [edx+4],eax
 005E0A3E    mov         eax,[006E9DD8];^gvar_006ECDE0
 005E0A43    cmp         byte ptr [eax],0
>005E0A46    je          005E0A74
 005E0A48    mov         eax,dword ptr [ebp-4]
 005E0A4B    cmp         byte ptr [eax+1A5],0
>005E0A52    je          005E0A74
 005E0A54    mov         eax,dword ptr [ebp-4]
 005E0A57    cmp         byte ptr [eax+21C],1
>005E0A5E    jne         005E0A74
 005E0A60    mov         eax,dword ptr [ebp-8]
 005E0A63    and         dword ptr [eax+4],0FF7FFFFF
 005E0A6A    mov         eax,dword ptr [ebp-8]
 005E0A6D    or          dword ptr [eax+8],200
 005E0A74    mov         eax,dword ptr [ebp-8]
 005E0A77    and         dword ptr [eax+24],0FFFFFFFC
 005E0A7B    pop         ecx
 005E0A7C    pop         ecx
 005E0A7D    pop         ebp
 005E0A7E    ret
*}
end;

//005E0A80
{*procedure TCustomPanel.CMBorderChanged(?:?);
begin
 005E0A80    push        ebp
 005E0A81    mov         ebp,esp
 005E0A83    add         esp,0FFFFFFF8
 005E0A86    mov         dword ptr [ebp-8],edx
 005E0A89    mov         dword ptr [ebp-4],eax
 005E0A8C    mov         edx,dword ptr [ebp-8]
 005E0A8F    mov         eax,dword ptr [ebp-4]
 005E0A92    call        TWinControl.CMBorderChanged
 005E0A97    mov         eax,dword ptr [ebp-4]
 005E0A9A    mov         edx,dword ptr [eax]
 005E0A9C    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E0A9F    pop         ecx
 005E0AA0    pop         ecx
 005E0AA1    pop         ebp
 005E0AA2    ret
end;*}

//005E0AA4
{*procedure TCustomPanel.CMTextChanged(?:?);
begin
 005E0AA4    push        ebp
 005E0AA5    mov         ebp,esp
 005E0AA7    add         esp,0FFFFFFF8
 005E0AAA    mov         dword ptr [ebp-8],edx
 005E0AAD    mov         dword ptr [ebp-4],eax
 005E0AB0    mov         eax,dword ptr [ebp-4]
 005E0AB3    mov         edx,dword ptr [eax]
 005E0AB5    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E0AB8    pop         ecx
 005E0AB9    pop         ecx
 005E0ABA    pop         ebp
 005E0ABB    ret
end;*}

//005E0ABC
{*procedure TCustomPanel.CMCtl3DChanged(?:?);
begin
 005E0ABC    push        ebp
 005E0ABD    mov         ebp,esp
 005E0ABF    add         esp,0FFFFFFF8
 005E0AC2    mov         dword ptr [ebp-8],edx
 005E0AC5    mov         dword ptr [ebp-4],eax
 005E0AC8    mov         eax,[006E9DD8];^gvar_006ECDE0
 005E0ACD    cmp         byte ptr [eax],0
>005E0AD0    je          005E0AE6
 005E0AD2    mov         eax,dword ptr [ebp-4]
 005E0AD5    cmp         byte ptr [eax+21C],1;TCustomPanel.FBorderStyle:TBorderStyle
>005E0ADC    jne         005E0AE6
 005E0ADE    mov         eax,dword ptr [ebp-4]
 005E0AE1    call        TWinControl.RecreateWnd
 005E0AE6    mov         edx,dword ptr [ebp-8]
 005E0AE9    mov         eax,dword ptr [ebp-4]
 005E0AEC    call        TWinControl.CMCtl3DChanged
 005E0AF1    pop         ecx
 005E0AF2    pop         ecx
 005E0AF3    pop         ebp
 005E0AF4    ret
end;*}

//005E0AF8
{*procedure TCustomPanel.CMIsToolControl(?:?);
begin
 005E0AF8    push        ebp
 005E0AF9    mov         ebp,esp
 005E0AFB    add         esp,0FFFFFFF8
 005E0AFE    mov         dword ptr [ebp-8],edx
 005E0B01    mov         dword ptr [ebp-4],eax
 005E0B04    mov         eax,dword ptr [ebp-4]
 005E0B07    cmp         byte ptr [eax+21E],0;TCustomPanel.FLocked:Boolean
>005E0B0E    jne         005E0B1A
 005E0B10    mov         eax,dword ptr [ebp-8]
 005E0B13    mov         dword ptr [eax+0C],1
 005E0B1A    pop         ecx
 005E0B1B    pop         ecx
 005E0B1C    pop         ebp
 005E0B1D    ret
end;*}

//005E0B20
{*procedure TCustomPanel.WMWindowPosChangedMsg(?:?);
begin
 005E0B20    push        ebp
 005E0B21    mov         ebp,esp
 005E0B23    add         esp,0FFFFFFE0
 005E0B26    xor         ecx,ecx
 005E0B28    mov         dword ptr [ebp-20],ecx
 005E0B2B    mov         dword ptr [ebp-8],edx
 005E0B2E    mov         dword ptr [ebp-4],eax
 005E0B31    xor         eax,eax
 005E0B33    push        ebp
 005E0B34    push        5E0C40
 005E0B39    push        dword ptr fs:[eax]
 005E0B3C    mov         dword ptr fs:[eax],esp
 005E0B3F    mov         eax,dword ptr [ebp-4]
 005E0B42    cmp         byte ptr [eax+21D],0;TCustomPanel.FFullRepaint:Boolean
>005E0B49    jne         005E0B5C
 005E0B4B    lea         edx,[ebp-20]
 005E0B4E    mov         eax,dword ptr [ebp-4]
 005E0B51    call        TTabPage.GetCaption
 005E0B56    cmp         dword ptr [ebp-20],0
>005E0B5A    je          005E0B69
 005E0B5C    mov         eax,dword ptr [ebp-4]
 005E0B5F    mov         edx,dword ptr [eax]
 005E0B61    call        dword ptr [edx+7C];TWinControl.Invalidate
>005E0B64    jmp         005E0C1F
 005E0B69    mov         eax,dword ptr [ebp-4]
 005E0B6C    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 005E0B72    mov         dword ptr [ebp-0C],eax
 005E0B75    mov         eax,dword ptr [ebp-4]
 005E0B78    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>005E0B7F    je          005E0B8D
 005E0B81    mov         eax,dword ptr [ebp-4]
 005E0B84    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0B8A    add         dword ptr [ebp-0C],eax
 005E0B8D    mov         eax,dword ptr [ebp-4]
 005E0B90    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>005E0B97    je          005E0BA5
 005E0B99    mov         eax,dword ptr [ebp-4]
 005E0B9C    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0BA2    add         dword ptr [ebp-0C],eax
 005E0BA5    cmp         dword ptr [ebp-0C],0
>005E0BA9    jle         005E0C1F
 005E0BAB    mov         eax,dword ptr [ebp-4]
 005E0BAE    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 005E0BB1    mov         dword ptr [ebp-14],eax
 005E0BB4    mov         eax,dword ptr [ebp-4]
 005E0BB7    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 005E0BBA    mov         dword ptr [ebp-10],eax
 005E0BBD    mov         eax,dword ptr [ebp-8]
 005E0BC0    mov         eax,dword ptr [eax+8]
 005E0BC3    mov         eax,dword ptr [eax+10]
 005E0BC6    cmp         eax,dword ptr [ebp-14]
>005E0BC9    je          005E0BEE
 005E0BCB    xor         eax,eax
 005E0BCD    mov         dword ptr [ebp-18],eax
 005E0BD0    mov         eax,dword ptr [ebp-14]
 005E0BD3    sub         eax,dword ptr [ebp-0C]
 005E0BD6    dec         eax
 005E0BD7    mov         dword ptr [ebp-1C],eax
 005E0BDA    push        0FF
 005E0BDC    lea         eax,[ebp-1C]
 005E0BDF    push        eax
 005E0BE0    mov         eax,dword ptr [ebp-4]
 005E0BE3    call        TWinControl.GetHandle
 005E0BE8    push        eax
 005E0BE9    call        USER32.InvalidateRect
 005E0BEE    mov         eax,dword ptr [ebp-8]
 005E0BF1    mov         eax,dword ptr [eax+8]
 005E0BF4    mov         eax,dword ptr [eax+14]
 005E0BF7    cmp         eax,dword ptr [ebp-10]
>005E0BFA    je          005E0C1F
 005E0BFC    xor         eax,eax
 005E0BFE    mov         dword ptr [ebp-1C],eax
 005E0C01    mov         eax,dword ptr [ebp-10]
 005E0C04    sub         eax,dword ptr [ebp-0C]
 005E0C07    dec         eax
 005E0C08    mov         dword ptr [ebp-18],eax
 005E0C0B    push        0FF
 005E0C0D    lea         eax,[ebp-1C]
 005E0C10    push        eax
 005E0C11    mov         eax,dword ptr [ebp-4]
 005E0C14    call        TWinControl.GetHandle
 005E0C19    push        eax
 005E0C1A    call        USER32.InvalidateRect
 005E0C1F    mov         edx,dword ptr [ebp-8]
 005E0C22    mov         eax,dword ptr [ebp-4]
 005E0C25    call        TWinControl.WMWindowPosChangedMsg
 005E0C2A    xor         eax,eax
 005E0C2C    pop         edx
 005E0C2D    pop         ecx
 005E0C2E    pop         ecx
 005E0C2F    mov         dword ptr fs:[eax],edx
 005E0C32    push        5E0C47
 005E0C37    lea         eax,[ebp-20]
 005E0C3A    call        @LStrClr
 005E0C3F    ret
>005E0C40    jmp         @HandleFinally
>005E0C45    jmp         005E0C37
 005E0C47    mov         esp,ebp
 005E0C49    pop         ebp
 005E0C4A    ret
end;*}

//005E0C4C
{*procedure sub_005E0C4C(?:?; ?:?);
begin
 005E0C4C    push        ebp
 005E0C4D    mov         ebp,esp
 005E0C4F    push        ecx
 005E0C50    mov         byte ptr [ebp-1],al
 005E0C53    mov         eax,dword ptr [ebp+8]
 005E0C56    mov         dword ptr [eax-4],80000014
 005E0C5D    cmp         byte ptr [ebp-1],1
>005E0C61    jne         005E0C6D
 005E0C63    mov         eax,dword ptr [ebp+8]
 005E0C66    mov         dword ptr [eax-4],80000010
 005E0C6D    mov         eax,dword ptr [ebp+8]
 005E0C70    mov         dword ptr [eax-8],80000010
 005E0C77    cmp         byte ptr [ebp-1],1
>005E0C7B    jne         005E0C87
 005E0C7D    mov         eax,dword ptr [ebp+8]
 005E0C80    mov         dword ptr [eax-8],80000014
 005E0C87    pop         ecx
 005E0C88    pop         ebp
 005E0C89    ret
end;*}

//005E0C8C
procedure sub_005E0C8C;
begin
{*
 005E0C8C    push        ebp
 005E0C8D    mov         ebp,esp
 005E0C8F    add         esp,0FFFFFFD4
 005E0C92    xor         edx,edx
 005E0C94    mov         dword ptr [ebp-2C],edx
 005E0C97    mov         dword ptr [ebp-0C],eax
 005E0C9A    xor         eax,eax
 005E0C9C    push        ebp
 005E0C9D    push        5E0E2D
 005E0CA2    push        dword ptr fs:[eax]
 005E0CA5    mov         dword ptr fs:[eax],esp
 005E0CA8    lea         edx,[ebp-28]
 005E0CAB    mov         eax,dword ptr [ebp-0C]
 005E0CAE    mov         ecx,dword ptr [eax]
 005E0CB0    call        dword ptr [ecx+44];TCustomPanel.sub_005FC204
 005E0CB3    mov         eax,dword ptr [ebp-0C]
 005E0CB6    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>005E0CBD    je          005E0CF1
 005E0CBF    push        ebp
 005E0CC0    mov         eax,dword ptr [ebp-0C]
 005E0CC3    mov         al,byte ptr [eax+212];TCustomPanel.FBevelOuter:TBevelCut
 005E0CC9    call        005E0C4C
 005E0CCE    pop         ecx
 005E0CCF    mov         eax,dword ptr [ebp-8]
 005E0CD2    push        eax
 005E0CD3    mov         eax,dword ptr [ebp-0C]
 005E0CD6    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0CDC    push        eax
 005E0CDD    lea         edx,[ebp-28]
 005E0CE0    mov         ecx,dword ptr [ebp-4]
 005E0CE3    mov         eax,dword ptr [ebp-0C]
 005E0CE6    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 005E0CEC    call        Frame3D
 005E0CF1    mov         eax,dword ptr [ebp-0C]
 005E0CF4    mov         eax,dword ptr [eax+70];TCustomPanel.FColor:TColor
 005E0CF7    push        eax
 005E0CF8    mov         eax,dword ptr [ebp-0C]
 005E0CFB    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 005E0D01    push        eax
 005E0D02    lea         edx,[ebp-28]
 005E0D05    mov         eax,dword ptr [ebp-0C]
 005E0D08    mov         ecx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 005E0D0B    mov         eax,dword ptr [ebp-0C]
 005E0D0E    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 005E0D14    call        Frame3D
 005E0D19    mov         eax,dword ptr [ebp-0C]
 005E0D1C    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>005E0D23    je          005E0D57
 005E0D25    push        ebp
 005E0D26    mov         eax,dword ptr [ebp-0C]
 005E0D29    mov         al,byte ptr [eax+211];TCustomPanel.FBevelInner:TBevelCut
 005E0D2F    call        005E0C4C
 005E0D34    pop         ecx
 005E0D35    mov         eax,dword ptr [ebp-8]
 005E0D38    push        eax
 005E0D39    mov         eax,dword ptr [ebp-0C]
 005E0D3C    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0D42    push        eax
 005E0D43    lea         edx,[ebp-28]
 005E0D46    mov         ecx,dword ptr [ebp-4]
 005E0D49    mov         eax,dword ptr [ebp-0C]
 005E0D4C    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 005E0D52    call        Frame3D
 005E0D57    mov         eax,dword ptr [ebp-0C]
 005E0D5A    mov         eax,dword ptr [eax+208];TCustomPanel.......................................................
 005E0D60    mov         dword ptr [ebp-18],eax
 005E0D63    mov         eax,dword ptr [ebp-0C]
 005E0D66    mov         edx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 005E0D69    mov         eax,dword ptr [ebp-18]
 005E0D6C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E0D6F    call        TBrush.SetColor
 005E0D74    lea         edx,[ebp-28]
 005E0D77    mov         eax,dword ptr [ebp-18]
 005E0D7A    call        TCanvas.FillRect
 005E0D7F    mov         dl,1
 005E0D81    mov         eax,dword ptr [ebp-18]
 005E0D84    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E0D87    call        TBrush.SetStyle
 005E0D8C    mov         eax,dword ptr [ebp-0C]
 005E0D8F    mov         edx,dword ptr [eax+68];TCustomPanel.FFont:TFont
 005E0D92    mov         eax,dword ptr [ebp-18]
 005E0D95    call        TCanvas.SetFont
 005E0D9A    mov         edx,5E0E40;'W'
 005E0D9F    mov         eax,dword ptr [ebp-18]
 005E0DA2    call        005C177C
 005E0DA7    mov         dword ptr [ebp-10],eax
 005E0DAA    mov         eax,dword ptr [ebp-1C]
 005E0DAD    add         eax,dword ptr [ebp-24]
 005E0DB0    sub         eax,dword ptr [ebp-10]
 005E0DB3    sar         eax,1
>005E0DB5    jns         005E0DBA
 005E0DB7    adc         eax,0
 005E0DBA    mov         dword ptr [ebp-24],eax
 005E0DBD    mov         eax,dword ptr [ebp-24]
 005E0DC0    add         eax,dword ptr [ebp-10]
 005E0DC3    mov         dword ptr [ebp-1C],eax
 005E0DC6    mov         eax,dword ptr [ebp-0C]
 005E0DC9    movzx       eax,byte ptr [eax+21F];TCustomPanel.FAlignment:TAlignment
 005E0DD0    mov         eax,dword ptr [eax*4+6E410C]
 005E0DD7    or          eax,44
 005E0DDA    mov         dword ptr [ebp-14],eax
 005E0DDD    mov         edx,dword ptr [ebp-14]
 005E0DE0    mov         eax,dword ptr [ebp-0C]
 005E0DE3    call        005F6724
 005E0DE8    mov         dword ptr [ebp-14],eax
 005E0DEB    mov         eax,dword ptr [ebp-14]
 005E0DEE    push        eax
 005E0DEF    lea         eax,[ebp-28]
 005E0DF2    push        eax
 005E0DF3    push        0FF
 005E0DF5    lea         edx,[ebp-2C]
 005E0DF8    mov         eax,dword ptr [ebp-0C]
 005E0DFB    call        TTabPage.GetCaption
 005E0E00    mov         eax,dword ptr [ebp-2C]
 005E0E03    call        @LStrToPChar
 005E0E08    push        eax
 005E0E09    mov         eax,dword ptr [ebp-18]
 005E0E0C    call        TCanvas.GetHandle
 005E0E11    push        eax
 005E0E12    call        USER32.DrawTextA
 005E0E17    xor         eax,eax
 005E0E19    pop         edx
 005E0E1A    pop         ecx
 005E0E1B    pop         ecx
 005E0E1C    mov         dword ptr fs:[eax],edx
 005E0E1F    push        5E0E34
 005E0E24    lea         eax,[ebp-2C]
 005E0E27    call        @LStrClr
 005E0E2C    ret
>005E0E2D    jmp         @HandleFinally
>005E0E32    jmp         005E0E24
 005E0E34    mov         esp,ebp
 005E0E36    pop         ebp
 005E0E37    ret
*}
end;

//005E0E44
procedure TPanel.SetAlignment(Value:TAlignment);
begin
{*
 005E0E44    push        ebp
 005E0E45    mov         ebp,esp
 005E0E47    add         esp,0FFFFFFF8
 005E0E4A    mov         byte ptr [ebp-5],dl
 005E0E4D    mov         dword ptr [ebp-4],eax
 005E0E50    mov         al,byte ptr [ebp-5]
 005E0E53    mov         edx,dword ptr [ebp-4]
 005E0E56    mov         byte ptr [edx+21F],al;TPanel.FAlignment:TAlignment
 005E0E5C    mov         eax,dword ptr [ebp-4]
 005E0E5F    mov         edx,dword ptr [eax]
 005E0E61    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E0E64    pop         ecx
 005E0E65    pop         ecx
 005E0E66    pop         ebp
 005E0E67    ret
*}
end;

//005E0E68
procedure TChart.SetBevelInner(Value:TBevelCut);
begin
{*
 005E0E68    push        ebp
 005E0E69    mov         ebp,esp
 005E0E6B    add         esp,0FFFFFFF8
 005E0E6E    mov         byte ptr [ebp-5],dl
 005E0E71    mov         dword ptr [ebp-4],eax
 005E0E74    mov         al,byte ptr [ebp-5]
 005E0E77    mov         edx,dword ptr [ebp-4]
 005E0E7A    mov         byte ptr [edx+211],al;TChart.FBevelInner:TBevelCut
 005E0E80    mov         eax,dword ptr [ebp-4]
 005E0E83    call        005F7848
 005E0E88    mov         eax,dword ptr [ebp-4]
 005E0E8B    mov         edx,dword ptr [eax]
 005E0E8D    call        dword ptr [edx+7C];TCustomTeePanel.Invalidate
 005E0E90    pop         ecx
 005E0E91    pop         ecx
 005E0E92    pop         ebp
 005E0E93    ret
*}
end;

//005E0E94
procedure TChart.SetBevelOuter(Value:TBevelCut);
begin
{*
 005E0E94    push        ebp
 005E0E95    mov         ebp,esp
 005E0E97    add         esp,0FFFFFFF8
 005E0E9A    mov         byte ptr [ebp-5],dl
 005E0E9D    mov         dword ptr [ebp-4],eax
 005E0EA0    mov         al,byte ptr [ebp-5]
 005E0EA3    mov         edx,dword ptr [ebp-4]
 005E0EA6    mov         byte ptr [edx+212],al;TChart.FBevelOuter:TBevelCut
 005E0EAC    mov         eax,dword ptr [ebp-4]
 005E0EAF    call        005F7848
 005E0EB4    mov         eax,dword ptr [ebp-4]
 005E0EB7    mov         edx,dword ptr [eax]
 005E0EB9    call        dword ptr [edx+7C];TCustomTeePanel.Invalidate
 005E0EBC    pop         ecx
 005E0EBD    pop         ecx
 005E0EBE    pop         ebp
 005E0EBF    ret
*}
end;

//005E0EC0
procedure TChart.SetBevelWidth(Value:TBevelWidth);
begin
{*
 005E0EC0    push        ebp
 005E0EC1    mov         ebp,esp
 005E0EC3    add         esp,0FFFFFFF8
 005E0EC6    mov         dword ptr [ebp-8],edx
 005E0EC9    mov         dword ptr [ebp-4],eax
 005E0ECC    mov         eax,dword ptr [ebp-8]
 005E0ECF    mov         edx,dword ptr [ebp-4]
 005E0ED2    mov         dword ptr [edx+214],eax;TChart.FBevelWidth:TBevelWidth
 005E0ED8    mov         eax,dword ptr [ebp-4]
 005E0EDB    call        005F7848
 005E0EE0    mov         eax,dword ptr [ebp-4]
 005E0EE3    mov         edx,dword ptr [eax]
 005E0EE5    call        dword ptr [edx+7C];TCustomTeePanel.Invalidate
 005E0EE8    pop         ecx
 005E0EE9    pop         ecx
 005E0EEA    pop         ebp
 005E0EEB    ret
*}
end;

//005E0EEC
procedure TChart.SetBorderWidth(Value:TBorderWidth);
begin
{*
 005E0EEC    push        ebp
 005E0EED    mov         ebp,esp
 005E0EEF    add         esp,0FFFFFFF8
 005E0EF2    mov         dword ptr [ebp-8],edx
 005E0EF5    mov         dword ptr [ebp-4],eax
 005E0EF8    mov         eax,dword ptr [ebp-8]
 005E0EFB    mov         edx,dword ptr [ebp-4]
 005E0EFE    mov         dword ptr [edx+218],eax;TChart.FBorderWidth:TBorderWidth
 005E0F04    mov         eax,dword ptr [ebp-4]
 005E0F07    call        005F7848
 005E0F0C    mov         eax,dword ptr [ebp-4]
 005E0F0F    mov         edx,dword ptr [eax]
 005E0F11    call        dword ptr [edx+7C];TCustomTeePanel.Invalidate
 005E0F14    pop         ecx
 005E0F15    pop         ecx
 005E0F16    pop         ebp
 005E0F17    ret
*}
end;

//005E0F18
procedure TChart.SetBorderStyle(Value:TBorderStyle);
begin
{*
 005E0F18    push        ebp
 005E0F19    mov         ebp,esp
 005E0F1B    add         esp,0FFFFFFF8
 005E0F1E    mov         byte ptr [ebp-5],dl
 005E0F21    mov         dword ptr [ebp-4],eax
 005E0F24    mov         eax,dword ptr [ebp-4]
 005E0F27    mov         al,byte ptr [eax+21C];TChart.FBorderStyle:TBorderStyle
 005E0F2D    cmp         al,byte ptr [ebp-5]
>005E0F30    je          005E0F46
 005E0F32    mov         al,byte ptr [ebp-5]
 005E0F35    mov         edx,dword ptr [ebp-4]
 005E0F38    mov         byte ptr [edx+21C],al;TChart.FBorderStyle:TBorderStyle
 005E0F3E    mov         eax,dword ptr [ebp-4]
 005E0F41    call        TWinControl.RecreateWnd
 005E0F46    pop         ecx
 005E0F47    pop         ecx
 005E0F48    pop         ebp
 005E0F49    ret
*}
end;

//005E0F4C
procedure TCustomPanel.sub_005E0F4C;
begin
{*
 005E0F4C    push        ebp
 005E0F4D    mov         ebp,esp
 005E0F4F    add         esp,0FFFFFFF8
 005E0F52    mov         dword ptr [ebp-4],eax
 005E0F55    mov         eax,dword ptr [ebp-4]
 005E0F58    mov         al,byte ptr [eax+21F];TCustomPanel.FAlignment:TAlignment
 005E0F5E    mov         byte ptr [ebp-5],al
 005E0F61    mov         al,byte ptr [ebp-5]
 005E0F64    pop         ecx
 005E0F65    pop         ecx
 005E0F66    pop         ebp
 005E0F67    ret
*}
end;

//005E0F68
{*procedure sub_005E0F68(?:?);
begin
 005E0F68    push        ebp
 005E0F69    mov         ebp,esp
 005E0F6B    add         esp,0FFFFFFF4
 005E0F6E    mov         dword ptr [ebp-8],edx
 005E0F71    mov         dword ptr [ebp-4],eax
 005E0F74    mov         edx,dword ptr [ebp-8]
 005E0F77    mov         eax,dword ptr [ebp-4]
 005E0F7A    call        005F6F3C
 005E0F7F    mov         eax,dword ptr [ebp-4]
 005E0F82    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 005E0F88    neg         eax
 005E0F8A    push        eax
 005E0F8B    mov         eax,dword ptr [ebp-4]
 005E0F8E    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 005E0F94    neg         eax
 005E0F96    push        eax
 005E0F97    mov         eax,dword ptr [ebp-8]
 005E0F9A    push        eax
 005E0F9B    call        USER32.InflateRect
 005E0FA0    xor         eax,eax
 005E0FA2    mov         dword ptr [ebp-0C],eax
 005E0FA5    mov         eax,dword ptr [ebp-4]
 005E0FA8    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>005E0FAF    je          005E0FBD
 005E0FB1    mov         eax,dword ptr [ebp-4]
 005E0FB4    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0FBA    add         dword ptr [ebp-0C],eax
 005E0FBD    mov         eax,dword ptr [ebp-4]
 005E0FC0    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>005E0FC7    je          005E0FD5
 005E0FC9    mov         eax,dword ptr [ebp-4]
 005E0FCC    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 005E0FD2    add         dword ptr [ebp-0C],eax
 005E0FD5    mov         eax,dword ptr [ebp-0C]
 005E0FD8    neg         eax
 005E0FDA    push        eax
 005E0FDB    mov         eax,dword ptr [ebp-0C]
 005E0FDE    neg         eax
 005E0FE0    push        eax
 005E0FE1    mov         eax,dword ptr [ebp-8]
 005E0FE4    push        eax
 005E0FE5    call        USER32.InflateRect
 005E0FEA    mov         esp,ebp
 005E0FEC    pop         ebp
 005E0FED    ret
end;*}

//005E0FF0
{*procedure TCustomPanel.CMDockClient(?:?);
begin
 005E0FF0    push        ebp
 005E0FF1    mov         ebp,esp
 005E0FF3    add         esp,0FFFFFFE4
 005E0FF6    push        ebx
 005E0FF7    push        esi
 005E0FF8    push        edi
 005E0FF9    mov         dword ptr [ebp-8],edx
 005E0FFC    mov         dword ptr [ebp-4],eax
 005E0FFF    mov         eax,dword ptr [ebp-4]
 005E1002    cmp         byte ptr [eax+5C],0;TCustomPanel.FAutoSize:Boolean
>005E1006    je          005E1131
 005E100C    mov         eax,dword ptr [ebp-4]
 005E100F    mov         byte ptr [eax+210],1;TCustomPanel.FAutoSizeDocking:Boolean
 005E1016    xor         eax,eax
 005E1018    push        ebp
 005E1019    push        5E112A
 005E101E    push        dword ptr fs:[eax]
 005E1021    mov         dword ptr fs:[eax],esp
 005E1024    mov         eax,dword ptr [ebp-8]
 005E1027    mov         eax,dword ptr [eax+4]
 005E102A    lea         esi,[eax+44]
 005E102D    lea         edi,[ebp-1C]
 005E1030    movs        dword ptr [edi],dword ptr [esi]
 005E1031    movs        dword ptr [edi],dword ptr [esi]
 005E1032    movs        dword ptr [edi],dword ptr [esi]
 005E1033    movs        dword ptr [edi],dword ptr [esi]
 005E1034    mov         eax,dword ptr [ebp-4]
 005E1037    mov         al,byte ptr [eax+5B];TCustomPanel.FAlign:TAlign
 005E103A    dec         al
>005E103C    je          005E10B0
 005E103E    dec         al
>005E1040    je          005E10C9
 005E1046    dec         al
>005E1048    je          005E1053
 005E104A    dec         al
>005E104C    je          005E1073
>005E104E    jmp         005E1100
 005E1053    mov         eax,dword ptr [ebp-4]
 005E1056    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>005E105A    jne         005E1100
 005E1060    mov         edx,dword ptr [ebp-14]
 005E1063    sub         edx,dword ptr [ebp-1C]
 005E1066    mov         eax,dword ptr [ebp-4]
 005E1069    call        TControl.SetWidth
>005E106E    jmp         005E1100
 005E1073    mov         eax,dword ptr [ebp-4]
 005E1076    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>005E107A    jne         005E1100
 005E1080    mov         eax,dword ptr [ebp-14]
 005E1083    sub         eax,dword ptr [ebp-1C]
 005E1086    mov         dword ptr [ebp-0C],eax
 005E1089    mov         eax,dword ptr [ebp-0C]
 005E108C    push        eax
 005E108D    mov         eax,dword ptr [ebp-4]
 005E1090    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 005E1093    push        eax
 005E1094    mov         eax,dword ptr [ebp-4]
 005E1097    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 005E109A    mov         eax,dword ptr [ebp-4]
 005E109D    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 005E10A0    sub         edx,dword ptr [ebp-0C]
 005E10A3    mov         eax,dword ptr [ebp-4]
 005E10A6    mov         ebx,dword ptr [eax]
 005E10A8    call        dword ptr [ebx+84];TCustomPanel.sub_005FB7F8
>005E10AE    jmp         005E1100
 005E10B0    mov         eax,dword ptr [ebp-4]
 005E10B3    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>005E10B7    jne         005E1100
 005E10B9    mov         edx,dword ptr [ebp-10]
 005E10BC    sub         edx,dword ptr [ebp-18]
 005E10BF    mov         eax,dword ptr [ebp-4]
 005E10C2    call        TControl.SetHeight
>005E10C7    jmp         005E1100
 005E10C9    mov         eax,dword ptr [ebp-4]
 005E10CC    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>005E10D0    jne         005E1100
 005E10D2    mov         eax,dword ptr [ebp-10]
 005E10D5    sub         eax,dword ptr [ebp-18]
 005E10D8    mov         dword ptr [ebp-0C],eax
 005E10DB    mov         eax,dword ptr [ebp-4]
 005E10DE    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 005E10E1    push        eax
 005E10E2    mov         eax,dword ptr [ebp-0C]
 005E10E5    push        eax
 005E10E6    mov         eax,dword ptr [ebp-4]
 005E10E9    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 005E10EC    sub         ecx,dword ptr [ebp-0C]
 005E10EF    mov         eax,dword ptr [ebp-4]
 005E10F2    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 005E10F5    mov         eax,dword ptr [ebp-4]
 005E10F8    mov         ebx,dword ptr [eax]
 005E10FA    call        dword ptr [ebx+84];TCustomPanel.sub_005FB7F8
 005E1100    mov         edx,dword ptr [ebp-8]
 005E1103    mov         eax,dword ptr [ebp-4]
 005E1106    call        TWinControl.CMDockClient
 005E110B    call        @TryFinallyExit
>005E1110    jmp         005E113C
 005E1112    xor         eax,eax
 005E1114    pop         edx
 005E1115    pop         ecx
 005E1116    pop         ecx
 005E1117    mov         dword ptr fs:[eax],edx
 005E111A    push        5E1131
 005E111F    mov         eax,dword ptr [ebp-4]
 005E1122    mov         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
 005E1129    ret
>005E112A    jmp         @HandleFinally
>005E112F    jmp         005E111F
 005E1131    mov         edx,dword ptr [ebp-8]
 005E1134    mov         eax,dword ptr [ebp-4]
 005E1137    call        TWinControl.CMDockClient
 005E113C    pop         edi
 005E113D    pop         esi
 005E113E    pop         ebx
 005E113F    mov         esp,ebp
 005E1141    pop         ebp
 005E1142    ret
end;*}

//005E1144
{*function sub_005E1144(?:?; ?:?):?;
begin
 005E1144    push        ebp
 005E1145    mov         ebp,esp
 005E1147    add         esp,0FFFFFFF0
 005E114A    mov         dword ptr [ebp-0C],ecx
 005E114D    mov         dword ptr [ebp-8],edx
 005E1150    mov         dword ptr [ebp-4],eax
 005E1153    mov         eax,dword ptr [ebp-4]
 005E1156    cmp         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
>005E115D    jne         005E1171
 005E115F    mov         ecx,dword ptr [ebp-0C]
 005E1162    mov         edx,dword ptr [ebp-8]
 005E1165    mov         eax,dword ptr [ebp-4]
 005E1168    call        005FCF74
 005E116D    test        al,al
>005E116F    jne         005E1175
 005E1171    xor         eax,eax
>005E1173    jmp         005E1177
 005E1175    mov         al,1
 005E1177    mov         byte ptr [ebp-0D],al
 005E117A    mov         al,byte ptr [ebp-0D]
 005E117D    mov         esp,ebp
 005E117F    pop         ebp
 005E1180    ret
end;*}

//005E1284
{*constructor TPageAccess.Create(?:?);
begin
 005E1284    push        ebp
 005E1285    mov         ebp,esp
 005E1287    add         esp,0FFFFFFF4
 005E128A    test        dl,dl
>005E128C    je          005E1296
 005E128E    add         esp,0FFFFFFF0
 005E1291    call        @ClassCreate
 005E1296    mov         dword ptr [ebp-0C],ecx
 005E1299    mov         byte ptr [ebp-5],dl
 005E129C    mov         dword ptr [ebp-4],eax
 005E129F    xor         edx,edx
 005E12A1    mov         eax,dword ptr [ebp-4]
 005E12A4    call        TObject.Create
 005E12A9    mov         eax,dword ptr [ebp-4]
 005E12AC    mov         edx,dword ptr [ebp-0C]
 005E12AF    mov         dword ptr [eax+10],edx
 005E12B2    mov         eax,dword ptr [ebp-4]
 005E12B5    mov         edx,dword ptr [ebp+8]
 005E12B8    mov         dword ptr [eax+14],edx
 005E12BB    mov         eax,dword ptr [ebp-4]
 005E12BE    cmp         byte ptr [ebp-5],0
>005E12C2    je          005E12D3
 005E12C4    call        @AfterConstruction
 005E12C9    pop         dword ptr fs:[0]
 005E12D0    add         esp,0C
 005E12D3    mov         eax,dword ptr [ebp-4]
 005E12D6    mov         esp,ebp
 005E12D8    pop         ebp
 005E12D9    ret         4
end;*}

//005E12DC
{*function sub_005E12DC:?;
begin
 005E12DC    push        ebp
 005E12DD    mov         ebp,esp
 005E12DF    add         esp,0FFFFFFF8
 005E12E2    mov         dword ptr [ebp-4],eax
 005E12E5    mov         eax,dword ptr [ebp-4]
 005E12E8    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E12EB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E12EE    mov         dword ptr [ebp-8],eax
 005E12F1    mov         eax,dword ptr [ebp-8]
 005E12F4    pop         ecx
 005E12F5    pop         ecx
 005E12F6    pop         ebp
 005E12F7    ret
end;*}

//005E12F8
{*procedure sub_005E12F8(?:?; ?:?);
begin
 005E12F8    push        ebp
 005E12F9    mov         ebp,esp
 005E12FB    add         esp,0FFFFFFF4
 005E12FE    mov         dword ptr [ebp-0C],ecx
 005E1301    mov         dword ptr [ebp-8],edx
 005E1304    mov         dword ptr [ebp-4],eax
 005E1307    mov         edx,dword ptr [ebp-8]
 005E130A    mov         eax,dword ptr [ebp-4]
 005E130D    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1310    call        TList.Get
 005E1315    mov         edx,dword ptr [ebp-0C]
 005E1318    call        TTabPage.GetCaption
 005E131D    mov         esp,ebp
 005E131F    pop         ebp
 005E1320    ret
end;*}

//005E1324
{*procedure sub_005E1324(?:?; ?:?);
begin
 005E1324    push        ebp
 005E1325    mov         ebp,esp
 005E1327    add         esp,0FFFFFFF4
 005E132A    mov         dword ptr [ebp-0C],ecx
 005E132D    mov         dword ptr [ebp-8],edx
 005E1330    mov         dword ptr [ebp-4],eax
 005E1333    mov         edx,dword ptr [ebp-8]
 005E1336    mov         eax,dword ptr [ebp-4]
 005E1339    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E133C    call        TList.Get
 005E1341    mov         edx,dword ptr [ebp-0C]
 005E1344    call        TTabPage.SetCaption
 005E1349    mov         esp,ebp
 005E134B    pop         ebp
 005E134C    ret
end;*}

//005E1350
{*function sub_005E1350(?:?):?;
begin
 005E1350    push        ebp
 005E1351    mov         ebp,esp
 005E1353    add         esp,0FFFFFFF4
 005E1356    mov         dword ptr [ebp-8],edx
 005E1359    mov         dword ptr [ebp-4],eax
 005E135C    mov         edx,dword ptr [ebp-8]
 005E135F    mov         eax,dword ptr [ebp-4]
 005E1362    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1365    call        TList.Get
 005E136A    mov         dword ptr [ebp-0C],eax
 005E136D    mov         eax,dword ptr [ebp-0C]
 005E1370    mov         esp,ebp
 005E1372    pop         ebp
 005E1373    ret
end;*}

//005E1374
{*procedure sub_005E1374(?:?);
begin
 005E1374    push        ebp
 005E1375    mov         ebp,esp
 005E1377    add         esp,0FFFFFFF8
 005E137A    mov         byte ptr [ebp-5],dl
 005E137D    mov         dword ptr [ebp-4],eax
 005E1380    pop         ecx
 005E1381    pop         ecx
 005E1382    pop         ebp
 005E1383    ret
end;*}

//005E1384
procedure TPageAccess.Clear;
begin
{*
 005E1384    push        ebp
 005E1385    mov         ebp,esp
 005E1387    add         esp,0FFFFFFF4
 005E138A    mov         dword ptr [ebp-4],eax
 005E138D    mov         eax,dword ptr [ebp-4]
 005E1390    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1393    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1396    dec         eax
 005E1397    test        eax,eax
>005E1399    jl          005E13C1
 005E139B    inc         eax
 005E139C    mov         dword ptr [ebp-0C],eax
 005E139F    mov         dword ptr [ebp-8],0
 005E13A6    mov         eax,dword ptr [ebp-4]
 005E13A9    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E13AC    mov         edx,dword ptr [ebp-8]
 005E13AF    call        TList.Get
 005E13B4    call        TObject.Free
 005E13B9    inc         dword ptr [ebp-8]
 005E13BC    dec         dword ptr [ebp-0C]
>005E13BF    jne         005E13A6
 005E13C1    mov         eax,dword ptr [ebp-4]
 005E13C4    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E13C7    mov         edx,dword ptr [eax]
 005E13C9    call        dword ptr [edx+8];TList.sub_00644E64
 005E13CC    mov         esp,ebp
 005E13CE    pop         ebp
 005E13CF    ret
*}
end;

//005E13D0
{*procedure sub_005E13D0(?:?);
begin
 005E13D0    push        ebp
 005E13D1    mov         ebp,esp
 005E13D3    add         esp,0FFFFFFF4
 005E13D6    mov         dword ptr [ebp-8],edx
 005E13D9    mov         dword ptr [ebp-4],eax
 005E13DC    mov         edx,dword ptr [ebp-8]
 005E13DF    mov         eax,dword ptr [ebp-4]
 005E13E2    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E13E5    call        TList.Get
 005E13EA    call        TObject.Free
 005E13EF    mov         edx,dword ptr [ebp-8]
 005E13F2    mov         eax,dword ptr [ebp-4]
 005E13F5    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E13F8    call        TList.Delete
 005E13FD    xor         edx,edx
 005E13FF    mov         eax,dword ptr [ebp-4]
 005E1402    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E1405    call        TNotebook.SetPageIndex
 005E140A    mov         eax,dword ptr [ebp-4]
 005E140D    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E1410    test        byte ptr [eax+1C],10;TNotebook.FComponentState:TComponentState
>005E1414    je          005E1444
 005E1416    mov         eax,dword ptr [ebp-4]
 005E1419    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E141C    call        005CD060
 005E1421    mov         dword ptr [ebp-0C],eax
 005E1424    cmp         dword ptr [ebp-0C],0
>005E1428    je          005E1444
 005E142A    mov         eax,dword ptr [ebp-0C]
 005E142D    cmp         dword ptr [eax+250],0
>005E1434    je          005E1444
 005E1436    mov         eax,dword ptr [ebp-0C]
 005E1439    mov         eax,dword ptr [eax+250]
 005E143F    mov         edx,dword ptr [eax]
 005E1441    call        dword ptr [edx+0C]
 005E1444    mov         esp,ebp
 005E1446    pop         ebp
 005E1447    ret
end;*}

//005E1448
{*procedure sub_005E1448(?:?; ?:?);
begin
 005E1448    push        ebp
 005E1449    mov         ebp,esp
 005E144B    add         esp,0FFFFFFEC
 005E144E    mov         dword ptr [ebp-0C],ecx
 005E1451    mov         dword ptr [ebp-8],edx
 005E1454    mov         dword ptr [ebp-4],eax
 005E1457    mov         eax,dword ptr [ebp-4]
 005E145A    mov         ecx,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E145D    mov         dl,1
 005E145F    mov         eax,[005DB56C];TPage
 005E1464    call        TPage.Create;TPage.Create
 005E1469    mov         dword ptr [ebp-10],eax
 005E146C    mov         eax,dword ptr [ebp-4]
 005E146F    mov         edx,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E1472    mov         eax,dword ptr [ebp-10]
 005E1475    mov         ecx,dword ptr [eax]
 005E1477    call        dword ptr [ecx+68];TPage.sub_005F34DC
 005E147A    mov         edx,dword ptr [ebp-0C]
 005E147D    mov         eax,dword ptr [ebp-10]
 005E1480    call        TTabPage.SetCaption
 005E1485    mov         ecx,dword ptr [ebp-10]
 005E1488    mov         edx,dword ptr [ebp-8]
 005E148B    mov         eax,dword ptr [ebp-4]
 005E148E    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1491    call        TList.Insert
 005E1496    mov         edx,dword ptr [ebp-8]
 005E1499    mov         eax,dword ptr [ebp-4]
 005E149C    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E149F    call        TNotebook.SetPageIndex
 005E14A4    mov         eax,dword ptr [ebp-4]
 005E14A7    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E14AA    test        byte ptr [eax+1C],10;TNotebook.FComponentState:TComponentState
>005E14AE    je          005E14DE
 005E14B0    mov         eax,dword ptr [ebp-4]
 005E14B3    mov         eax,dword ptr [eax+14];TPageAccess.Notebook:TNotebook
 005E14B6    call        005CD060
 005E14BB    mov         dword ptr [ebp-14],eax
 005E14BE    cmp         dword ptr [ebp-14],0
>005E14C2    je          005E14DE
 005E14C4    mov         eax,dword ptr [ebp-14]
 005E14C7    cmp         dword ptr [eax+250],0
>005E14CE    je          005E14DE
 005E14D0    mov         eax,dword ptr [ebp-14]
 005E14D3    mov         eax,dword ptr [eax+250]
 005E14D9    mov         edx,dword ptr [eax]
 005E14DB    call        dword ptr [edx+0C]
 005E14DE    mov         esp,ebp
 005E14E0    pop         ebp
 005E14E1    ret
end;*}

//005E14E4
{*procedure sub_005E14E4(?:?; ?:?);
begin
 005E14E4    push        ebp
 005E14E5    mov         ebp,esp
 005E14E7    add         esp,0FFFFFFF0
 005E14EA    mov         dword ptr [ebp-0C],ecx
 005E14ED    mov         dword ptr [ebp-8],edx
 005E14F0    mov         dword ptr [ebp-4],eax
 005E14F3    mov         eax,dword ptr [ebp-8]
 005E14F6    cmp         eax,dword ptr [ebp-0C]
>005E14F9    je          005E153B
 005E14FB    mov         edx,dword ptr [ebp-8]
 005E14FE    mov         eax,dword ptr [ebp-4]
 005E1501    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1504    call        TList.Get
 005E1509    mov         dword ptr [ebp-10],eax
 005E150C    mov         edx,dword ptr [ebp-0C]
 005E150F    mov         eax,dword ptr [ebp-4]
 005E1512    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1515    call        TList.Get
 005E151A    mov         ecx,eax
 005E151C    mov         edx,dword ptr [ebp-8]
 005E151F    mov         eax,dword ptr [ebp-4]
 005E1522    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1525    call        TList.Put
 005E152A    mov         ecx,dword ptr [ebp-10]
 005E152D    mov         edx,dword ptr [ebp-0C]
 005E1530    mov         eax,dword ptr [ebp-4]
 005E1533    mov         eax,dword ptr [eax+10];TPageAccess.PageList:TList
 005E1536    call        TList.Put
 005E153B    mov         esp,ebp
 005E153D    pop         ebp
 005E153E    ret
end;*}

//005E1540
constructor TPage.Create(AOwner:TComponent);
begin
{*
 005E1540    push        ebp
 005E1541    mov         ebp,esp
 005E1543    add         esp,0FFFFFFF4
 005E1546    test        dl,dl
>005E1548    je          005E1552
 005E154A    add         esp,0FFFFFFF0
 005E154D    call        @ClassCreate
 005E1552    mov         dword ptr [ebp-0C],ecx
 005E1555    mov         byte ptr [ebp-5],dl
 005E1558    mov         dword ptr [ebp-4],eax
 005E155B    mov         ecx,dword ptr [ebp-0C]
 005E155E    xor         edx,edx
 005E1560    mov         eax,dword ptr [ebp-4]
 005E1563    call        TCustomControl.Create
 005E1568    xor         edx,edx
 005E156A    mov         eax,dword ptr [ebp-4]
 005E156D    call        TCCalendar.SetVisible
 005E1572    mov         eax,dword ptr [ebp-4]
 005E1575    mov         eax,dword ptr [eax+50];TPage.FControlStyle:TControlStyle
 005E1578    or          eax,dword ptr ds:[5E15B0];0x401 gvar_005E15B0
 005E157E    mov         edx,dword ptr [ebp-4]
 005E1581    mov         dword ptr [edx+50],eax;TPage.FControlStyle:TControlStyle
 005E1584    mov         dl,5
 005E1586    mov         eax,dword ptr [ebp-4]
 005E1589    call        TCCalendar.SetAlign
 005E158E    mov         eax,dword ptr [ebp-4]
 005E1591    cmp         byte ptr [ebp-5],0
>005E1595    je          005E15A6
 005E1597    call        @AfterConstruction
 005E159C    pop         dword ptr fs:[0]
 005E15A3    add         esp,0C
 005E15A6    mov         eax,dword ptr [ebp-4]
 005E15A9    mov         esp,ebp
 005E15AB    pop         ebp
 005E15AC    ret
*}
end;

//005E15B4
procedure sub_005E15B4;
begin
{*
 005E15B4    push        ebp
 005E15B5    mov         ebp,esp
 005E15B7    add         esp,0FFFFFFF8
 005E15BA    mov         dword ptr [ebp-4],eax
 005E15BD    mov         eax,dword ptr [ebp-4]
 005E15C0    call        005FE45C
 005E15C5    mov         eax,dword ptr [ebp-4]
 005E15C8    test        byte ptr [eax+1C],10;TPage.FComponentState:TComponentState
>005E15CC    je          005E160E
 005E15CE    mov         eax,dword ptr [ebp-4]
 005E15D1    mov         eax,dword ptr [eax+208];TPage..............................................................
 005E15D7    mov         dword ptr [ebp-8],eax
 005E15DA    mov         dl,1
 005E15DC    mov         eax,dword ptr [ebp-8]
 005E15DF    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E15E2    call        TPen.SetStyle
 005E15E7    mov         dl,1
 005E15E9    mov         eax,dword ptr [ebp-8]
 005E15EC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E15EF    call        TBrush.SetStyle
 005E15F4    mov         eax,dword ptr [ebp-4]
 005E15F7    mov         eax,dword ptr [eax+48];TPage.Width:Integer
 005E15FA    push        eax
 005E15FB    mov         eax,dword ptr [ebp-4]
 005E15FE    mov         eax,dword ptr [eax+4C];TPage.Height:Integer
 005E1601    push        eax
 005E1602    xor         ecx,ecx
 005E1604    xor         edx,edx
 005E1606    mov         eax,dword ptr [ebp-8]
 005E1609    call        005C1428
 005E160E    pop         ecx
 005E160F    pop         ecx
 005E1610    pop         ebp
 005E1611    ret
*}
end;

//005E1614
{*procedure sub_005E1614(?:?);
begin
 005E1614    push        ebp
 005E1615    mov         ebp,esp
 005E1617    add         esp,0FFFFFFF8
 005E161A    mov         dword ptr [ebp-8],edx
 005E161D    mov         dword ptr [ebp-4],eax
 005E1620    mov         eax,dword ptr [ebp-8]
 005E1623    mov         eax,dword ptr [eax+2C]
 005E1626    mov         edx,dword ptr ds:[5DB758];TNotebook
 005E162C    call        @IsClass
 005E1631    test        al,al
>005E1633    je          005E1649
 005E1635    mov         eax,dword ptr [ebp-8]
 005E1638    mov         eax,dword ptr [eax+2C]
 005E163B    mov         eax,dword ptr [eax+210]
 005E1641    mov         edx,dword ptr [ebp-4]
 005E1644    call        TList.Add
 005E1649    mov         edx,dword ptr [ebp-8]
 005E164C    mov         eax,dword ptr [ebp-4]
 005E164F    call        005F6EC4
 005E1654    pop         ecx
 005E1655    pop         ecx
 005E1656    pop         ebp
 005E1657    ret
end;*}

//005E1658
{*procedure TPage.WMNCHitTest(?:?);
begin
 005E1658    push        ebp
 005E1659    mov         ebp,esp
 005E165B    add         esp,0FFFFFFF8
 005E165E    mov         dword ptr [ebp-8],edx
 005E1661    mov         dword ptr [ebp-4],eax
 005E1664    mov         eax,dword ptr [ebp-4]
 005E1667    test        byte ptr [eax+1C],10;TPage.FComponentState:TComponentState
>005E166B    jne         005E1679
 005E166D    mov         eax,dword ptr [ebp-8]
 005E1670    mov         dword ptr [eax+0C],0FFFFFFFF
>005E1677    jmp         005E1684
 005E1679    mov         edx,dword ptr [ebp-8]
 005E167C    mov         eax,dword ptr [ebp-4]
 005E167F    call        TWinControl.WMNCHitTest
 005E1684    pop         ecx
 005E1685    pop         ecx
 005E1686    pop         ebp
 005E1687    ret
end;*}

//005E1688
constructor TNotebook.Create(AOwner:TComponent);
begin
{*
 005E1688    push        ebp
 005E1689    mov         ebp,esp
 005E168B    add         esp,0FFFFFFEC
 005E168E    push        ebx
 005E168F    xor         ebx,ebx
 005E1691    mov         dword ptr [ebp-10],ebx
 005E1694    test        dl,dl
>005E1696    je          005E16A0
 005E1698    add         esp,0FFFFFFF0
 005E169B    call        @ClassCreate
 005E16A0    mov         dword ptr [ebp-0C],ecx
 005E16A3    mov         byte ptr [ebp-5],dl
 005E16A6    mov         dword ptr [ebp-4],eax
 005E16A9    xor         eax,eax
 005E16AB    push        ebp
 005E16AC    push        5E1789
 005E16B1    push        dword ptr fs:[eax]
 005E16B4    mov         dword ptr fs:[eax],esp
 005E16B7    mov         ecx,dword ptr [ebp-0C]
 005E16BA    xor         edx,edx
 005E16BC    mov         eax,dword ptr [ebp-4]
 005E16BF    call        TCustomControl.Create
 005E16C4    mov         edx,96
 005E16C9    mov         eax,dword ptr [ebp-4]
 005E16CC    call        TControl.SetWidth
 005E16D1    mov         edx,96
 005E16D6    mov         eax,dword ptr [ebp-4]
 005E16D9    call        TControl.SetHeight
 005E16DE    mov         dl,1
 005E16E0    mov         eax,[006422A4];TList
 005E16E5    call        TObject.Create;TList.Create
 005E16EA    mov         edx,dword ptr [ebp-4]
 005E16ED    mov         dword ptr [edx+210],eax;TNotebook.FPageList:TList
 005E16F3    mov         eax,dword ptr [ebp-4]
 005E16F6    push        eax
 005E16F7    mov         eax,dword ptr [ebp-4]
 005E16FA    mov         ecx,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1700    mov         dl,1
 005E1702    mov         eax,[005E1184];TPageAccess
 005E1707    call        TPageAccess.Create;TPageAccess.Create
 005E170C    mov         edx,dword ptr [ebp-4]
 005E170F    mov         dword ptr [edx+214],eax;TNotebook.Pages:TStrings
 005E1715    mov         eax,dword ptr [ebp-4]
 005E1718    mov         dword ptr [eax+218],0FFFFFFFF;TNotebook.PageIndex:Integer
 005E1722    lea         edx,[ebp-10]
 005E1725    mov         eax,[006E9F94];^gvar_0063CD38
 005E172A    call        LoadResString
 005E172F    mov         edx,dword ptr [ebp-10]
 005E1732    mov         eax,dword ptr [ebp-4]
 005E1735    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E173B    mov         ecx,dword ptr [eax]
 005E173D    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005E1740    xor         edx,edx
 005E1742    mov         eax,dword ptr [ebp-4]
 005E1745    call        TNotebook.SetPageIndex
 005E174A    mov         eax,dword ptr [ebp-4]
 005E174D    and         byte ptr [eax+24],0FE;TNotebook.FComponentStyle:TComponentStyle
 005E1751    cmp         byte ptr ds:[6E4118],0;gvar_006E4118
>005E1758    jne         005E1773
 005E175A    mov         eax,[005DB56C];TPage
 005E175F    mov         dword ptr [ebp-14],eax
 005E1762    lea         eax,[ebp-14]
 005E1765    xor         edx,edx
 005E1767    call        006443A8
 005E176C    mov         byte ptr ds:[6E4118],1;gvar_006E4118
 005E1773    xor         eax,eax
 005E1775    pop         edx
 005E1776    pop         ecx
 005E1777    pop         ecx
 005E1778    mov         dword ptr fs:[eax],edx
 005E177B    push        5E1790
 005E1780    lea         eax,[ebp-10]
 005E1783    call        @LStrClr
 005E1788    ret
>005E1789    jmp         @HandleFinally
>005E178E    jmp         005E1780
 005E1790    mov         eax,dword ptr [ebp-4]
 005E1793    cmp         byte ptr [ebp-5],0
>005E1797    je          005E17A8
 005E1799    call        @AfterConstruction
 005E179E    pop         dword ptr fs:[0]
 005E17A5    add         esp,0C
 005E17A8    mov         eax,dword ptr [ebp-4]
 005E17AB    pop         ebx
 005E17AC    mov         esp,ebp
 005E17AE    pop         ebp
 005E17AF    ret
*}
end;

//005E17B0
destructor TNotebook.Destroy;
begin
{*
 005E17B0    push        ebp
 005E17B1    mov         ebp,esp
 005E17B3    add         esp,0FFFFFFF8
 005E17B6    call        @BeforeDestruction
 005E17BB    mov         byte ptr [ebp-5],dl
 005E17BE    mov         dword ptr [ebp-4],eax
 005E17C1    mov         eax,dword ptr [ebp-4]
 005E17C4    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E17CA    call        TObject.Free
 005E17CF    mov         eax,dword ptr [ebp-4]
 005E17D2    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E17D8    call        TObject.Free
 005E17DD    mov         dl,byte ptr [ebp-5]
 005E17E0    and         dl,0FC
 005E17E3    mov         eax,dword ptr [ebp-4]
 005E17E6    call        TCustomControl.Destroy
 005E17EB    cmp         byte ptr [ebp-5],0
>005E17EF    jle         005E17F9
 005E17F1    mov         eax,dword ptr [ebp-4]
 005E17F4    call        @ClassDestroy
 005E17F9    pop         ecx
 005E17FA    pop         ecx
 005E17FB    pop         ebp
 005E17FC    ret
*}
end;

//005E1800
{*procedure sub_005E1800(?:?);
begin
 005E1800    push        ebp
 005E1801    mov         ebp,esp
 005E1803    add         esp,0FFFFFFF8
 005E1806    mov         dword ptr [ebp-8],edx
 005E1809    mov         dword ptr [ebp-4],eax
 005E180C    mov         edx,dword ptr [ebp-8]
 005E180F    mov         eax,dword ptr [ebp-4]
 005E1812    call        005F7FC0
 005E1817    mov         eax,dword ptr [ebp-8]
 005E181A    or          dword ptr [eax+4],2000000
 005E1821    mov         eax,dword ptr [ebp-8]
 005E1824    and         dword ptr [eax+24],0FFFFFFFC
 005E1828    pop         ecx
 005E1829    pop         ecx
 005E182A    pop         ebp
 005E182B    ret
end;*}

//005E182C
procedure TNotebook.sub_005E182C;
begin
{*
 005E182C    push        ebp
 005E182D    mov         ebp,esp
 005E182F    add         esp,0FFFFFFF8
 005E1832    mov         dword ptr [ebp-4],eax
 005E1835    mov         eax,dword ptr [ebp-4]
 005E1838    mov         dword ptr [ebp-8],eax
 005E183B    mov         eax,dword ptr [ebp-8]
 005E183E    pop         ecx
 005E183F    pop         ecx
 005E1840    pop         ebp
 005E1841    ret
*}
end;

//005E1844
{*procedure TNotebook.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);
begin
 005E1844    push        ebp
 005E1845    mov         ebp,esp
 005E1847    add         esp,0FFFFFFF0
 005E184A    mov         dword ptr [ebp-10],edx
 005E184D    mov         dword ptr [ebp-4],eax
 005E1850    mov         eax,dword ptr [ebp-4]
 005E1853    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1859    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E185C    dec         eax
 005E185D    test        eax,eax
>005E185F    jl          005E188D
 005E1861    inc         eax
 005E1862    mov         dword ptr [ebp-0C],eax
 005E1865    mov         dword ptr [ebp-8],0
 005E186C    mov         eax,dword ptr [ebp-4]
 005E186F    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1875    mov         edx,dword ptr [ebp-8]
 005E1878    call        TList.Get
 005E187D    mov         edx,eax
 005E187F    mov         eax,dword ptr [ebp+0C]
 005E1882    call        dword ptr [ebp+8]
 005E1885    inc         dword ptr [ebp-8]
 005E1888    dec         dword ptr [ebp-0C]
>005E188B    jne         005E186C
 005E188D    mov         esp,ebp
 005E188F    pop         ebp
 005E1890    ret         8
end;*}

//005E1894
{*procedure sub_005E1894(?:?);
begin
 005E1894    push        ebp
 005E1895    mov         ebp,esp
 005E1897    add         esp,0FFFFFFF4
 005E189A    mov         dword ptr [ebp-8],edx
 005E189D    mov         dword ptr [ebp-4],eax
 005E18A0    mov         eax,dword ptr [ebp-4]
 005E18A3    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E18A9    mov         edx,dword ptr [eax]
 005E18AB    call        dword ptr [edx+44];TStrings.Clear
 005E18AE    mov         edx,dword ptr [ebp-8]
 005E18B1    mov         eax,dword ptr [ebp-4]
 005E18B4    call        005F6EC4
 005E18B9    mov         eax,dword ptr [ebp-4]
 005E18BC    cmp         dword ptr [eax+218],0FFFFFFFF;TNotebook.PageIndex:Integer
>005E18C3    je          005E1920
 005E18C5    mov         eax,dword ptr [ebp-4]
 005E18C8    cmp         dword ptr [eax+218],0;TNotebook.PageIndex:Integer
>005E18CF    jl          005E1920
 005E18D1    mov         eax,dword ptr [ebp-4]
 005E18D4    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E18DA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E18DD    mov         edx,dword ptr [ebp-4]
 005E18E0    cmp         eax,dword ptr [edx+218];TNotebook.PageIndex:Integer
>005E18E6    jle         005E1920
 005E18E8    mov         eax,dword ptr [ebp-4]
 005E18EB    mov         edx,dword ptr [eax+218];TNotebook.PageIndex:Integer
 005E18F1    mov         eax,dword ptr [ebp-4]
 005E18F4    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E18FA    call        TList.Get
 005E18FF    mov         dword ptr [ebp-0C],eax
 005E1902    mov         eax,dword ptr [ebp-0C]
 005E1905    call        005F3B24
 005E190A    mov         dl,1
 005E190C    mov         eax,dword ptr [ebp-0C]
 005E190F    call        TCCalendar.SetVisible
 005E1914    mov         dl,5
 005E1916    mov         eax,dword ptr [ebp-0C]
 005E1919    call        TCCalendar.SetAlign
>005E191E    jmp         005E192D
 005E1920    mov         eax,dword ptr [ebp-4]
 005E1923    mov         dword ptr [eax+218],0FFFFFFFF;TNotebook.PageIndex:Integer
 005E192D    mov         esp,ebp
 005E192F    pop         ebp
 005E1930    ret
end;*}

//005E1934
{*procedure sub_005E1934(?:?);
begin
 005E1934    push        ebp
 005E1935    mov         ebp,esp
 005E1937    add         esp,0FFFFFFF0
 005E193A    mov         dword ptr [ebp-8],edx
 005E193D    mov         dword ptr [ebp-4],eax
 005E1940    mov         eax,dword ptr [ebp-4]
 005E1943    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1949    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E194C    dec         eax
 005E194D    test        eax,eax
>005E194F    jl          005E1987
 005E1951    inc         eax
 005E1952    mov         dword ptr [ebp-10],eax
 005E1955    mov         dword ptr [ebp-0C],0
 005E195C    mov         eax,dword ptr [ebp-4]
 005E195F    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1965    mov         edx,dword ptr [ebp-0C]
 005E1968    call        TList.Get
 005E196D    cmp         eax,dword ptr [ebp-8]
>005E1970    jne         005E197F
 005E1972    mov         edx,dword ptr [ebp-0C]
 005E1975    mov         eax,dword ptr [ebp-4]
 005E1978    call        TNotebook.SetPageIndex
>005E197D    jmp         005E1992
 005E197F    inc         dword ptr [ebp-0C]
 005E1982    dec         dword ptr [ebp-10]
>005E1985    jne         005E195C
 005E1987    mov         edx,dword ptr [ebp-8]
 005E198A    mov         eax,dword ptr [ebp-4]
 005E198D    call        005FBBE4
 005E1992    mov         esp,ebp
 005E1994    pop         ebp
 005E1995    ret
end;*}

//005E1998
procedure TNotebook.SetPages(Value:TStrings);
begin
{*
 005E1998    push        ebp
 005E1999    mov         ebp,esp
 005E199B    add         esp,0FFFFFFF8
 005E199E    mov         dword ptr [ebp-8],edx
 005E19A1    mov         dword ptr [ebp-4],eax
 005E19A4    mov         edx,dword ptr [ebp-8]
 005E19A7    mov         eax,dword ptr [ebp-4]
 005E19AA    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E19B0    mov         ecx,dword ptr [eax]
 005E19B2    call        dword ptr [ecx+8];TStrings.Assign
 005E19B5    pop         ecx
 005E19B6    pop         ecx
 005E19B7    pop         ebp
 005E19B8    ret
*}
end;

//005E19BC
procedure TNotebook.SetPageIndex(Value:Integer);
begin
{*
 005E19BC    push        ebp
 005E19BD    mov         ebp,esp
 005E19BF    add         esp,0FFFFFFF0
 005E19C2    push        ebx
 005E19C3    mov         dword ptr [ebp-8],edx
 005E19C6    mov         dword ptr [ebp-4],eax
 005E19C9    mov         eax,dword ptr [ebp-4]
 005E19CC    test        byte ptr [eax+1C],1;TNotebook.FComponentState:TComponentState
>005E19D0    je          005E19E3
 005E19D2    mov         eax,dword ptr [ebp-8]
 005E19D5    mov         edx,dword ptr [ebp-4]
 005E19D8    mov         dword ptr [edx+218],eax;TNotebook.PageIndex:Integer
>005E19DE    jmp         005E1AFD
 005E19E3    mov         eax,dword ptr [ebp-8]
 005E19E6    mov         edx,dword ptr [ebp-4]
 005E19E9    cmp         eax,dword ptr [edx+218];TNotebook.PageIndex:Integer
>005E19EF    je          005E1AFD
 005E19F5    cmp         dword ptr [ebp-8],0
>005E19F9    jl          005E1AFD
 005E19FF    mov         eax,dword ptr [ebp-4]
 005E1A02    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1A08    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1A0B    cmp         eax,dword ptr [ebp-8]
>005E1A0E    jle         005E1AFD
 005E1A14    mov         eax,dword ptr [ebp-4]
 005E1A17    call        005CD060
 005E1A1C    mov         dword ptr [ebp-0C],eax
 005E1A1F    cmp         dword ptr [ebp-0C],0
>005E1A23    je          005E1A45
 005E1A25    mov         eax,dword ptr [ebp-0C]
 005E1A28    mov         edx,dword ptr [eax+220]
 005E1A2E    mov         eax,dword ptr [ebp-4]
 005E1A31    call        005F7AB8
 005E1A36    test        al,al
>005E1A38    je          005E1A45
 005E1A3A    mov         edx,dword ptr [ebp-4]
 005E1A3D    mov         eax,dword ptr [ebp-0C]
 005E1A40    call        TForm.SetActiveControl
 005E1A45    mov         edx,dword ptr [ebp-8]
 005E1A48    mov         eax,dword ptr [ebp-4]
 005E1A4B    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1A51    call        TList.Get
 005E1A56    mov         dword ptr [ebp-10],eax
 005E1A59    mov         eax,dword ptr [ebp-10]
 005E1A5C    call        005F3B24
 005E1A61    mov         dl,1
 005E1A63    mov         eax,dword ptr [ebp-10]
 005E1A66    call        TCCalendar.SetVisible
 005E1A6B    mov         dl,5
 005E1A6D    mov         eax,dword ptr [ebp-10]
 005E1A70    call        TCCalendar.SetAlign
 005E1A75    mov         eax,dword ptr [ebp-4]
 005E1A78    cmp         dword ptr [eax+218],0;TNotebook.PageIndex:Integer
>005E1A7F    jl          005E1AB6
 005E1A81    mov         eax,dword ptr [ebp-4]
 005E1A84    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1A8A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1A8D    mov         edx,dword ptr [ebp-4]
 005E1A90    cmp         eax,dword ptr [edx+218];TNotebook.PageIndex:Integer
>005E1A96    jle         005E1AB6
 005E1A98    mov         eax,dword ptr [ebp-4]
 005E1A9B    mov         edx,dword ptr [eax+218];TNotebook.PageIndex:Integer
 005E1AA1    mov         eax,dword ptr [ebp-4]
 005E1AA4    mov         eax,dword ptr [eax+210];TNotebook.FPageList:TList
 005E1AAA    call        TList.Get
 005E1AAF    xor         edx,edx
 005E1AB1    call        TCCalendar.SetVisible
 005E1AB6    mov         eax,dword ptr [ebp-8]
 005E1AB9    mov         edx,dword ptr [ebp-4]
 005E1ABC    mov         dword ptr [edx+218],eax;TNotebook.PageIndex:Integer
 005E1AC2    cmp         dword ptr [ebp-0C],0
>005E1AC6    je          005E1ADE
 005E1AC8    mov         eax,dword ptr [ebp-0C]
 005E1ACB    mov         eax,dword ptr [eax+220]
 005E1AD1    cmp         eax,dword ptr [ebp-4]
>005E1AD4    jne         005E1ADE
 005E1AD6    mov         eax,dword ptr [ebp-4]
 005E1AD9    call        005FC85C
 005E1ADE    mov         eax,dword ptr [ebp-4]
 005E1AE1    cmp         word ptr [eax+222],0;TNotebook.?f222:word
>005E1AE9    je          005E1AFD
 005E1AEB    mov         ebx,dword ptr [ebp-4]
 005E1AEE    mov         edx,dword ptr [ebp-4]
 005E1AF1    mov         eax,dword ptr [ebx+224];TNotebook.?f224:dword
 005E1AF7    call        dword ptr [ebx+220];TNotebook.OnPageChanged
 005E1AFD    pop         ebx
 005E1AFE    mov         esp,ebp
 005E1B00    pop         ebp
 005E1B01    ret
*}
end;

//005E1B04
procedure TNotebook.SetActivePage(Value:String);
begin
{*
 005E1B04    push        ebp
 005E1B05    mov         ebp,esp
 005E1B07    add         esp,0FFFFFFF8
 005E1B0A    mov         dword ptr [ebp-8],edx
 005E1B0D    mov         dword ptr [ebp-4],eax
 005E1B10    mov         edx,dword ptr [ebp-8]
 005E1B13    mov         eax,dword ptr [ebp-4]
 005E1B16    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E1B1C    mov         ecx,dword ptr [eax]
 005E1B1E    call        dword ptr [ecx+54];TStrings.sub_006474D4
 005E1B21    mov         edx,eax
 005E1B23    mov         eax,dword ptr [ebp-4]
 005E1B26    call        TNotebook.SetPageIndex
 005E1B2B    pop         ecx
 005E1B2C    pop         ecx
 005E1B2D    pop         ebp
 005E1B2E    ret
*}
end;

//005E1B30
{*procedure TNotebook.GetActivePage(?:?);
begin
 005E1B30    push        ebp
 005E1B31    mov         ebp,esp
 005E1B33    add         esp,0FFFFFFF8
 005E1B36    push        ebx
 005E1B37    mov         dword ptr [ebp-8],edx
 005E1B3A    mov         dword ptr [ebp-4],eax
 005E1B3D    mov         ecx,dword ptr [ebp-8]
 005E1B40    mov         eax,dword ptr [ebp-4]
 005E1B43    mov         edx,dword ptr [eax+218];TNotebook.PageIndex:Integer
 005E1B49    mov         eax,dword ptr [ebp-4]
 005E1B4C    mov         eax,dword ptr [eax+214];TNotebook.Pages:TStrings
 005E1B52    mov         ebx,dword ptr [eax]
 005E1B54    call        dword ptr [ebx+0C];@AbstractError
 005E1B57    pop         ebx
 005E1B58    pop         ecx
 005E1B59    pop         ecx
 005E1B5A    pop         ebp
 005E1B5B    ret
end;*}

//005E1C88
procedure sub_005E1C88(?:Pointer);
begin
{*
 005E1C88    push        ebp
 005E1C89    mov         ebp,esp
 005E1C8B    push        ecx
 005E1C8C    mov         dword ptr [ebp-4],eax
 005E1C8F    cmp         dword ptr [ebp-4],0
>005E1C93    je          005E1CA3
 005E1C95    mov         edx,dword ptr ds:[5E1B5C];THeaderSection
 005E1C9B    mov         eax,dword ptr [ebp-4]
 005E1C9E    call        @Dispose
 005E1CA3    pop         ecx
 005E1CA4    pop         ebp
 005E1CA5    ret
*}
end;

//005E1CA8
{*function sub_005E1CA8(?:?; ?:?; ?:Pointer):?;
begin
 005E1CA8    push        ebp
 005E1CA9    mov         ebp,esp
 005E1CAB    add         esp,0FFFFFFEC
 005E1CAE    mov         dword ptr [ebp-0C],ecx
 005E1CB1    mov         dword ptr [ebp-8],edx
 005E1CB4    mov         dword ptr [ebp-4],eax
 005E1CB7    mov         edx,dword ptr ds:[5E1B5C];THeaderSection
 005E1CBD    mov         eax,0C
 005E1CC2    call        @New
 005E1CC7    mov         dword ptr [ebp-10],eax
 005E1CCA    mov         eax,dword ptr [ebp-10]
 005E1CCD    mov         dword ptr [ebp-14],eax
 005E1CD0    mov         eax,dword ptr [ebp-14]
 005E1CD3    add         eax,8
 005E1CD6    mov         edx,dword ptr [ebp-4]
 005E1CD9    call        @LStrAsg
 005E1CDE    mov         eax,dword ptr [ebp-8]
 005E1CE1    mov         edx,dword ptr [ebp-14]
 005E1CE4    mov         dword ptr [edx+4],eax
 005E1CE7    mov         eax,dword ptr [ebp-0C]
 005E1CEA    mov         edx,dword ptr [ebp-14]
 005E1CED    mov         dword ptr [edx],eax
 005E1CEF    mov         eax,dword ptr [ebp-10]
 005E1CF2    mov         esp,ebp
 005E1CF4    pop         ebp
 005E1CF5    ret
end;*}

//005E1CF8
constructor THeaderStrings.Create;
begin
{*
 005E1CF8    push        ebp
 005E1CF9    mov         ebp,esp
 005E1CFB    add         esp,0FFFFFFF8
 005E1CFE    test        dl,dl
>005E1D00    je          005E1D0A
 005E1D02    add         esp,0FFFFFFF0
 005E1D05    call        @ClassCreate
 005E1D0A    mov         byte ptr [ebp-5],dl
 005E1D0D    mov         dword ptr [ebp-4],eax
 005E1D10    xor         edx,edx
 005E1D12    mov         eax,dword ptr [ebp-4]
 005E1D15    call        TObject.Create
 005E1D1A    mov         dl,1
 005E1D1C    mov         eax,[006422A4];TList
 005E1D21    call        TObject.Create;TList.Create
 005E1D26    mov         edx,dword ptr [ebp-4]
 005E1D29    mov         dword ptr [edx+14],eax
 005E1D2C    mov         eax,dword ptr [ebp-4]
 005E1D2F    cmp         byte ptr [ebp-5],0
>005E1D33    je          005E1D44
 005E1D35    call        @AfterConstruction
 005E1D3A    pop         dword ptr fs:[0]
 005E1D41    add         esp,0C
 005E1D44    mov         eax,dword ptr [ebp-4]
 005E1D47    pop         ecx
 005E1D48    pop         ecx
 005E1D49    pop         ebp
 005E1D4A    ret
*}
end;

//005E1D4C
destructor THeaderStrings.Destroy;
begin
{*
 005E1D4C    push        ebp
 005E1D4D    mov         ebp,esp
 005E1D4F    add         esp,0FFFFFFF8
 005E1D52    call        @BeforeDestruction
 005E1D57    mov         byte ptr [ebp-5],dl
 005E1D5A    mov         dword ptr [ebp-4],eax
 005E1D5D    mov         eax,dword ptr [ebp-4]
 005E1D60    cmp         dword ptr [eax+14],0;THeaderStrings.FList:TList
>005E1D64    je          005E1D79
 005E1D66    mov         eax,dword ptr [ebp-4]
 005E1D69    mov         edx,dword ptr [eax]
 005E1D6B    call        dword ptr [edx+44];THeaderStrings.Clear
 005E1D6E    mov         eax,dword ptr [ebp-4]
 005E1D71    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E1D74    call        TObject.Free
 005E1D79    mov         dl,byte ptr [ebp-5]
 005E1D7C    and         dl,0FC
 005E1D7F    mov         eax,dword ptr [ebp-4]
 005E1D82    call        TStrings.Destroy
 005E1D87    cmp         byte ptr [ebp-5],0
>005E1D8B    jle         005E1D95
 005E1D8D    mov         eax,dword ptr [ebp-4]
 005E1D90    call        @ClassDestroy
 005E1D95    pop         ecx
 005E1D96    pop         ecx
 005E1D97    pop         ebp
 005E1D98    ret
*}
end;

//005E1D9C
procedure THeaderStrings.Assign(Source:TPersistent);
begin
{*
 005E1D9C    push        ebp
 005E1D9D    mov         ebp,esp
 005E1D9F    add         esp,0FFFFFFC0
 005E1DA2    push        ebx
 005E1DA3    push        esi
 005E1DA4    push        edi
 005E1DA5    xor         ecx,ecx
 005E1DA7    mov         dword ptr [ebp-40],ecx
 005E1DAA    mov         dword ptr [ebp-3C],ecx
 005E1DAD    mov         dword ptr [ebp-38],ecx
 005E1DB0    mov         dword ptr [ebp-30],ecx
 005E1DB3    mov         dword ptr [ebp-34],ecx
 005E1DB6    mov         dword ptr [ebp-2C],ecx
 005E1DB9    mov         dword ptr [ebp-20],ecx
 005E1DBC    mov         dword ptr [ebp-8],edx
 005E1DBF    mov         dword ptr [ebp-4],eax
 005E1DC2    xor         eax,eax
 005E1DC4    push        ebp
 005E1DC5    push        5E2068
 005E1DCA    push        dword ptr fs:[eax]
 005E1DCD    mov         dword ptr fs:[eax],esp
 005E1DD0    mov         eax,dword ptr [ebp-8]
 005E1DD3    mov         edx,dword ptr ds:[6427A4];TStrings
 005E1DD9    call        @IsClass
 005E1DDE    test        al,al
>005E1DE0    je          005E203A
 005E1DE6    mov         eax,dword ptr [ebp-8]
 005E1DE9    mov         dword ptr [ebp-14],eax
 005E1DEC    mov         eax,dword ptr [ebp-4]
 005E1DEF    call        TStrings.BeginUpdate
 005E1DF4    xor         eax,eax
 005E1DF6    push        ebp
 005E1DF7    push        5E2033
 005E1DFC    push        dword ptr fs:[eax]
 005E1DFF    mov         dword ptr fs:[eax],esp
 005E1E02    mov         dl,1
 005E1E04    mov         eax,[006422A4];TList
 005E1E09    call        TObject.Create;TList.Create
 005E1E0E    mov         dword ptr [ebp-18],eax
 005E1E11    xor         eax,eax
 005E1E13    push        ebp
 005E1E14    push        5E1FD6
 005E1E19    push        dword ptr fs:[eax]
 005E1E1C    mov         dword ptr fs:[eax],esp
 005E1E1F    mov         eax,dword ptr [ebp-4]
 005E1E22    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E1E25    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1E28    dec         eax
 005E1E29    mov         dword ptr [ebp-0C],eax
 005E1E2C    mov         byte ptr [ebp-21],0
 005E1E30    cmp         dword ptr [ebp-0C],0
>005E1E34    jl          005E1EA3
 005E1E36    lea         ecx,[ebp-20]
 005E1E39    mov         edx,dword ptr [ebp-0C]
 005E1E3C    mov         eax,dword ptr [ebp-4]
 005E1E3F    mov         ebx,dword ptr [eax]
 005E1E41    call        dword ptr [ebx+0C];THeaderStrings.sub_005E217C
 005E1E44    mov         eax,dword ptr [ebp-14]
 005E1E47    mov         edx,dword ptr [eax]
 005E1E49    call        dword ptr [edx+14]
 005E1E4C    dec         eax
 005E1E4D    test        eax,eax
>005E1E4F    jl          005E1E89
 005E1E51    inc         eax
 005E1E52    mov         dword ptr [ebp-28],eax
 005E1E55    mov         dword ptr [ebp-10],0
 005E1E5C    lea         ecx,[ebp-2C]
 005E1E5F    mov         edx,dword ptr [ebp-10]
 005E1E62    mov         eax,dword ptr [ebp-14]
 005E1E65    mov         ebx,dword ptr [eax]
 005E1E67    call        dword ptr [ebx+0C]
 005E1E6A    mov         eax,dword ptr [ebp-2C]
 005E1E6D    mov         edx,dword ptr [ebp-20]
 005E1E70    call        00657738
 005E1E75    test        eax,eax
 005E1E77    sete        byte ptr [ebp-21]
 005E1E7B    cmp         byte ptr [ebp-21],0
>005E1E7F    jne         005E1E89
 005E1E81    inc         dword ptr [ebp-10]
 005E1E84    dec         dword ptr [ebp-28]
>005E1E87    jne         005E1E5C
 005E1E89    cmp         byte ptr [ebp-21],0
>005E1E8D    jne         005E1E9A
 005E1E8F    mov         edx,dword ptr [ebp-0C]
 005E1E92    mov         eax,dword ptr [ebp-4]
 005E1E95    mov         ecx,dword ptr [eax]
 005E1E97    call        dword ptr [ecx+48];THeaderStrings.sub_005E2134
 005E1E9A    dec         dword ptr [ebp-0C]
 005E1E9D    cmp         dword ptr [ebp-0C],0
>005E1EA1    jge         005E1E36
 005E1EA3    xor         eax,eax
 005E1EA5    mov         dword ptr [ebp-0C],eax
 005E1EA8    mov         eax,dword ptr [ebp-14]
 005E1EAB    mov         edx,dword ptr [eax]
 005E1EAD    call        dword ptr [edx+14]
 005E1EB0    dec         eax
 005E1EB1    test        eax,eax
>005E1EB3    jl          005E1FA3
 005E1EB9    inc         eax
 005E1EBA    mov         dword ptr [ebp-28],eax
 005E1EBD    mov         dword ptr [ebp-10],0
 005E1EC4    mov         eax,dword ptr [ebp-4]
 005E1EC7    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E1ECA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1ECD    cmp         eax,dword ptr [ebp-0C]
>005E1ED0    jle         005E1F3D
 005E1ED2    lea         ecx,[ebp-30]
 005E1ED5    mov         edx,dword ptr [ebp-0C]
 005E1ED8    mov         eax,dword ptr [ebp-4]
 005E1EDB    mov         ebx,dword ptr [eax]
 005E1EDD    call        dword ptr [ebx+0C];THeaderStrings.sub_005E217C
 005E1EE0    mov         eax,dword ptr [ebp-30]
 005E1EE3    push        eax
 005E1EE4    lea         ecx,[ebp-34]
 005E1EE7    mov         edx,dword ptr [ebp-10]
 005E1EEA    mov         eax,dword ptr [ebp-14]
 005E1EED    mov         ebx,dword ptr [eax]
 005E1EEF    call        dword ptr [ebx+0C]
 005E1EF2    mov         eax,dword ptr [ebp-34]
 005E1EF5    pop         edx
 005E1EF6    call        00657738
 005E1EFB    test        eax,eax
>005E1EFD    jne         005E1F3D
 005E1EFF    lea         ecx,[ebp-38]
 005E1F02    mov         edx,dword ptr [ebp-0C]
 005E1F05    mov         eax,dword ptr [ebp-4]
 005E1F08    mov         ebx,dword ptr [eax]
 005E1F0A    call        dword ptr [ebx+0C];THeaderStrings.sub_005E217C
 005E1F0D    mov         eax,dword ptr [ebp-38]
 005E1F10    push        eax
 005E1F11    mov         edx,dword ptr [ebp-0C]
 005E1F14    mov         eax,dword ptr [ebp-4]
 005E1F17    mov         ecx,dword ptr [eax]
 005E1F19    call        dword ptr [ecx+18];THeaderStrings.sub_005E21C4
 005E1F1C    push        eax
 005E1F1D    mov         eax,dword ptr [ebp-4]
 005E1F20    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E1F23    mov         edx,dword ptr [ebp-0C]
 005E1F26    call        TList.Get
 005E1F2B    mov         edx,dword ptr [eax+4]
 005E1F2E    pop         ecx
 005E1F2F    pop         eax
 005E1F30    call        005E1CA8
 005E1F35    mov         dword ptr [ebp-1C],eax
 005E1F38    inc         dword ptr [ebp-0C]
>005E1F3B    jmp         005E1F8C
 005E1F3D    lea         ecx,[ebp-3C]
 005E1F40    mov         edx,dword ptr [ebp-10]
 005E1F43    mov         eax,dword ptr [ebp-14]
 005E1F46    mov         ebx,dword ptr [eax]
 005E1F48    call        dword ptr [ebx+0C]
 005E1F4B    mov         edx,dword ptr [ebp-3C]
 005E1F4E    mov         eax,dword ptr [ebp-4]
 005E1F51    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E1F54    mov         eax,dword ptr [eax+208];THeader............................................................
 005E1F5A    call        005C1754
 005E1F5F    add         eax,8
 005E1F62    push        eax
 005E1F63    lea         ecx,[ebp-40]
 005E1F66    mov         edx,dword ptr [ebp-10]
 005E1F69    mov         eax,dword ptr [ebp-14]
 005E1F6C    mov         ebx,dword ptr [eax]
 005E1F6E    call        dword ptr [ebx+0C]
 005E1F71    mov         eax,dword ptr [ebp-40]
 005E1F74    push        eax
 005E1F75    mov         edx,dword ptr [ebp-10]
 005E1F78    mov         eax,dword ptr [ebp-14]
 005E1F7B    mov         ecx,dword ptr [eax]
 005E1F7D    call        dword ptr [ecx+18]
 005E1F80    mov         ecx,eax
 005E1F82    pop         eax
 005E1F83    pop         edx
 005E1F84    call        005E1CA8
 005E1F89    mov         dword ptr [ebp-1C],eax
 005E1F8C    mov         edx,dword ptr [ebp-1C]
 005E1F8F    mov         eax,dword ptr [ebp-18]
 005E1F92    call        TList.Add
 005E1F97    inc         dword ptr [ebp-10]
 005E1F9A    dec         dword ptr [ebp-28]
>005E1F9D    jne         005E1EC4
 005E1FA3    mov         eax,dword ptr [ebp-4]
 005E1FA6    mov         edx,dword ptr [eax]
 005E1FA8    call        dword ptr [edx+44];THeaderStrings.Clear
 005E1FAB    mov         eax,dword ptr [ebp-4]
 005E1FAE    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E1FB1    mov         dl,1
 005E1FB3    mov         ecx,dword ptr [eax]
 005E1FB5    call        dword ptr [ecx-4];TList.sub_00644DE0
 005E1FB8    mov         eax,dword ptr [ebp-4]
 005E1FBB    mov         edx,dword ptr [ebp-18]
 005E1FBE    mov         dword ptr [eax+14],edx;THeaderStrings.FList:TList
 005E1FC1    mov         eax,dword ptr [ebp-4]
 005E1FC4    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E1FC7    mov         edx,dword ptr [eax]
 005E1FC9    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E1FCC    xor         eax,eax
 005E1FCE    pop         edx
 005E1FCF    pop         ecx
 005E1FD0    pop         ecx
 005E1FD1    mov         dword ptr fs:[eax],edx
>005E1FD4    jmp         005E201D
>005E1FD6    jmp         @HandleAnyException
 005E1FDB    mov         eax,dword ptr [ebp-18]
 005E1FDE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E1FE1    dec         eax
 005E1FE2    test        eax,eax
>005E1FE4    jl          005E2009
 005E1FE6    inc         eax
 005E1FE7    mov         dword ptr [ebp-28],eax
 005E1FEA    mov         dword ptr [ebp-0C],0
 005E1FF1    mov         edx,dword ptr [ebp-0C]
 005E1FF4    mov         eax,dword ptr [ebp-18]
 005E1FF7    call        TList.Get
 005E1FFC    call        005E1C88
 005E2001    inc         dword ptr [ebp-0C]
 005E2004    dec         dword ptr [ebp-28]
>005E2007    jne         005E1FF1
 005E2009    mov         dl,1
 005E200B    mov         eax,dword ptr [ebp-18]
 005E200E    mov         ecx,dword ptr [eax]
 005E2010    call        dword ptr [ecx-4];TList.sub_00644DE0
 005E2013    call        @RaiseAgain
 005E2018    call        @DoneExcept
 005E201D    xor         eax,eax
 005E201F    pop         edx
 005E2020    pop         ecx
 005E2021    pop         ecx
 005E2022    mov         dword ptr fs:[eax],edx
 005E2025    push        5E2045
 005E202A    mov         eax,dword ptr [ebp-4]
 005E202D    call        TStrings.EndUpdate
 005E2032    ret
>005E2033    jmp         @HandleFinally
>005E2038    jmp         005E202A
 005E203A    mov         edx,dword ptr [ebp-8]
 005E203D    mov         eax,dword ptr [ebp-4]
 005E2040    call        TStrings.Assign
 005E2045    xor         eax,eax
 005E2047    pop         edx
 005E2048    pop         ecx
 005E2049    pop         ecx
 005E204A    mov         dword ptr fs:[eax],edx
 005E204D    push        5E206F
 005E2052    lea         eax,[ebp-40]
 005E2055    mov         edx,6
 005E205A    call        @LStrArrayClr
 005E205F    lea         eax,[ebp-20]
 005E2062    call        @LStrClr
 005E2067    ret
>005E2068    jmp         @HandleFinally
>005E206D    jmp         005E2052
 005E206F    pop         edi
 005E2070    pop         esi
 005E2071    pop         ebx
 005E2072    mov         esp,ebp
 005E2074    pop         ebp
 005E2075    ret
*}
end;

//005E2078
procedure THeaderStrings.DefineProperties(Filer:TFiler);
begin
{*
 005E2078    push        ebp
 005E2079    mov         ebp,esp
 005E207B    add         esp,0FFFFFFF8
 005E207E    push        ebx
 005E207F    mov         dword ptr [ebp-8],edx
 005E2082    mov         dword ptr [ebp-4],eax
 005E2085    mov         eax,dword ptr [ebp-8]
 005E2088    mov         edx,dword ptr ds:[642F0C];TReader
 005E208E    call        @IsClass
 005E2093    test        al,al
>005E2095    je          005E20A2
 005E2097    mov         edx,dword ptr [ebp-8]
 005E209A    mov         eax,dword ptr [ebp-4]
 005E209D    call        TStrings.DefineProperties
 005E20A2    mov         eax,dword ptr [ebp-4]
 005E20A5    push        eax
 005E20A6    push        5E232C
 005E20AB    mov         eax,dword ptr [ebp-4]
 005E20AE    push        eax
 005E20AF    push        5E2488
 005E20B4    mov         eax,dword ptr [ebp-4]
 005E20B7    mov         edx,dword ptr [eax]
 005E20B9    call        dword ptr [edx+14];THeaderStrings.sub_005E21A8
 005E20BC    test        eax,eax
 005E20BE    setg        cl
 005E20C1    mov         edx,5E20DC;'Sections'
 005E20C6    mov         eax,dword ptr [ebp-8]
 005E20C9    mov         ebx,dword ptr [eax]
 005E20CB    call        dword ptr [ebx+4];@AbstractError
 005E20CE    pop         ebx
 005E20CF    pop         ecx
 005E20D0    pop         ecx
 005E20D1    pop         ebp
 005E20D2    ret
*}
end;

//005E20E8
procedure THeaderStrings.Clear;
begin
{*
 005E20E8    push        ebp
 005E20E9    mov         ebp,esp
 005E20EB    add         esp,0FFFFFFF4
 005E20EE    mov         dword ptr [ebp-4],eax
 005E20F1    mov         eax,dword ptr [ebp-4]
 005E20F4    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E20F7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E20FA    dec         eax
 005E20FB    test        eax,eax
>005E20FD    jl          005E2125
 005E20FF    inc         eax
 005E2100    mov         dword ptr [ebp-0C],eax
 005E2103    mov         dword ptr [ebp-8],0
 005E210A    mov         eax,dword ptr [ebp-4]
 005E210D    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E2110    mov         edx,dword ptr [ebp-8]
 005E2113    call        TList.Get
 005E2118    call        005E1C88
 005E211D    inc         dword ptr [ebp-8]
 005E2120    dec         dword ptr [ebp-0C]
>005E2123    jne         005E210A
 005E2125    mov         eax,dword ptr [ebp-4]
 005E2128    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E212B    mov         edx,dword ptr [eax]
 005E212D    call        dword ptr [edx+8];TList.sub_00644E64
 005E2130    mov         esp,ebp
 005E2132    pop         ebp
 005E2133    ret
*}
end;

//005E2134
{*procedure sub_005E2134(?:?);
begin
 005E2134    push        ebp
 005E2135    mov         ebp,esp
 005E2137    add         esp,0FFFFFFF8
 005E213A    mov         dword ptr [ebp-8],edx
 005E213D    mov         dword ptr [ebp-4],eax
 005E2140    mov         edx,dword ptr [ebp-8]
 005E2143    mov         eax,dword ptr [ebp-4]
 005E2146    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E2149    call        TList.Get
 005E214E    call        005E1C88
 005E2153    mov         edx,dword ptr [ebp-8]
 005E2156    mov         eax,dword ptr [ebp-4]
 005E2159    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E215C    call        TList.Delete
 005E2161    mov         eax,dword ptr [ebp-4]
 005E2164    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E2168    je          005E2175
 005E216A    mov         eax,dword ptr [ebp-4]
 005E216D    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E2170    mov         edx,dword ptr [eax]
 005E2172    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E2175    pop         ecx
 005E2176    pop         ecx
 005E2177    pop         ebp
 005E2178    ret
end;*}

//005E217C
{*procedure sub_005E217C(?:?; ?:?);
begin
 005E217C    push        ebp
 005E217D    mov         ebp,esp
 005E217F    add         esp,0FFFFFFF4
 005E2182    mov         dword ptr [ebp-0C],ecx
 005E2185    mov         dword ptr [ebp-8],edx
 005E2188    mov         dword ptr [ebp-4],eax
 005E218B    mov         edx,dword ptr [ebp-8]
 005E218E    mov         eax,dword ptr [ebp-4]
 005E2191    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E2194    call        TList.Get
 005E2199    mov         edx,dword ptr [eax+8]
 005E219C    mov         eax,dword ptr [ebp-0C]
 005E219F    call        @LStrAsg
 005E21A4    mov         esp,ebp
 005E21A6    pop         ebp
 005E21A7    ret
end;*}

//005E21A8
{*function sub_005E21A8:?;
begin
 005E21A8    push        ebp
 005E21A9    mov         ebp,esp
 005E21AB    add         esp,0FFFFFFF8
 005E21AE    mov         dword ptr [ebp-4],eax
 005E21B1    mov         eax,dword ptr [ebp-4]
 005E21B4    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E21B7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E21BA    mov         dword ptr [ebp-8],eax
 005E21BD    mov         eax,dword ptr [ebp-8]
 005E21C0    pop         ecx
 005E21C1    pop         ecx
 005E21C2    pop         ebp
 005E21C3    ret
end;*}

//005E21C4
{*function sub_005E21C4(?:?):?;
begin
 005E21C4    push        ebp
 005E21C5    mov         ebp,esp
 005E21C7    add         esp,0FFFFFFF4
 005E21CA    mov         dword ptr [ebp-8],edx
 005E21CD    mov         dword ptr [ebp-4],eax
 005E21D0    mov         edx,dword ptr [ebp-8]
 005E21D3    mov         eax,dword ptr [ebp-4]
 005E21D6    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E21D9    call        TList.Get
 005E21DE    mov         eax,dword ptr [eax]
 005E21E0    mov         dword ptr [ebp-0C],eax
 005E21E3    mov         eax,dword ptr [ebp-0C]
 005E21E6    mov         esp,ebp
 005E21E8    pop         ebp
 005E21E9    ret
end;*}

//005E21EC
{*procedure sub_005E21EC(?:?; ?:?);
begin
 005E21EC    push        ebp
 005E21ED    mov         ebp,esp
 005E21EF    add         esp,0FFFFFFF0
 005E21F2    mov         dword ptr [ebp-0C],ecx
 005E21F5    mov         dword ptr [ebp-8],edx
 005E21F8    mov         dword ptr [ebp-4],eax
 005E21FB    mov         eax,dword ptr [ebp-4]
 005E21FE    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E2202    je          005E2220
 005E2204    mov         eax,dword ptr [ebp-4]
 005E2207    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E220A    mov         eax,dword ptr [eax+208];THeader............................................................
 005E2210    mov         edx,dword ptr [ebp-0C]
 005E2213    call        005C1754
 005E2218    add         eax,8
 005E221B    mov         dword ptr [ebp-10],eax
>005E221E    jmp         005E2227
 005E2220    mov         dword ptr [ebp-10],4B
 005E2227    xor         ecx,ecx
 005E2229    mov         edx,dword ptr [ebp-10]
 005E222C    mov         eax,dword ptr [ebp-0C]
 005E222F    call        005E1CA8
 005E2234    push        eax
 005E2235    mov         eax,dword ptr [ebp-4]
 005E2238    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E223B    call        00645054
 005E2240    mov         edx,dword ptr [ebp-8]
 005E2243    pop         ecx
 005E2244    call        TList.Insert
 005E2249    mov         eax,dword ptr [ebp-4]
 005E224C    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E2250    je          005E225D
 005E2252    mov         eax,dword ptr [ebp-4]
 005E2255    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E2258    mov         edx,dword ptr [eax]
 005E225A    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E225D    mov         esp,ebp
 005E225F    pop         ebp
 005E2260    ret
end;*}

//005E2264
{*procedure sub_005E2264(?:?; ?:?);
begin
 005E2264    push        ebp
 005E2265    mov         ebp,esp
 005E2267    add         esp,0FFFFFFEC
 005E226A    mov         dword ptr [ebp-0C],ecx
 005E226D    mov         dword ptr [ebp-8],edx
 005E2270    mov         dword ptr [ebp-4],eax
 005E2273    mov         edx,dword ptr [ebp-8]
 005E2276    mov         eax,dword ptr [ebp-4]
 005E2279    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E227C    call        TList.Get
 005E2281    mov         dword ptr [ebp-10],eax
 005E2284    mov         eax,dword ptr [ebp-4]
 005E2287    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E228B    je          005E22A9
 005E228D    mov         eax,dword ptr [ebp-4]
 005E2290    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E2293    mov         eax,dword ptr [eax+208];THeader............................................................
 005E2299    mov         edx,dword ptr [ebp-0C]
 005E229C    call        005C1754
 005E22A1    add         eax,8
 005E22A4    mov         dword ptr [ebp-14],eax
>005E22A7    jmp         005E22B0
 005E22A9    mov         dword ptr [ebp-14],4B
 005E22B0    mov         eax,dword ptr [ebp-10]
 005E22B3    mov         ecx,dword ptr [eax]
 005E22B5    mov         edx,dword ptr [ebp-14]
 005E22B8    mov         eax,dword ptr [ebp-0C]
 005E22BB    call        005E1CA8
 005E22C0    mov         ecx,eax
 005E22C2    mov         edx,dword ptr [ebp-8]
 005E22C5    mov         eax,dword ptr [ebp-4]
 005E22C8    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E22CB    call        TList.Put
 005E22D0    mov         eax,dword ptr [ebp-10]
 005E22D3    call        005E1C88
 005E22D8    mov         eax,dword ptr [ebp-4]
 005E22DB    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E22DF    je          005E22EC
 005E22E1    mov         eax,dword ptr [ebp-4]
 005E22E4    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E22E7    mov         edx,dword ptr [eax]
 005E22E9    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E22EC    mov         esp,ebp
 005E22EE    pop         ebp
 005E22EF    ret
end;*}

//005E22F0
{*procedure sub_005E22F0(?:?; ?:?);
begin
 005E22F0    push        ebp
 005E22F1    mov         ebp,esp
 005E22F3    add         esp,0FFFFFFF4
 005E22F6    mov         dword ptr [ebp-0C],ecx
 005E22F9    mov         dword ptr [ebp-8],edx
 005E22FC    mov         dword ptr [ebp-4],eax
 005E22FF    mov         edx,dword ptr [ebp-8]
 005E2302    mov         eax,dword ptr [ebp-4]
 005E2305    mov         eax,dword ptr [eax+14];THeaderStrings.FList:TList
 005E2308    call        TList.Get
 005E230D    mov         edx,dword ptr [ebp-0C]
 005E2310    mov         dword ptr [eax],edx
 005E2312    mov         eax,dword ptr [ebp-4]
 005E2315    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E2319    je          005E2326
 005E231B    mov         eax,dword ptr [ebp-4]
 005E231E    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E2321    mov         edx,dword ptr [eax]
 005E2323    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E2326    mov         esp,ebp
 005E2328    pop         ebp
 005E2329    ret
end;*}

//005E2440
{*procedure sub_005E2440(?:?);
begin
 005E2440    push        ebp
 005E2441    mov         ebp,esp
 005E2443    add         esp,0FFFFFFF8
 005E2446    mov         byte ptr [ebp-5],dl
 005E2449    mov         dword ptr [ebp-4],eax
 005E244C    mov         eax,dword ptr [ebp-4]
 005E244F    cmp         dword ptr [eax+10],0;THeaderStrings.FHeader:THeader
>005E2453    je          005E2484
 005E2455    push        0
 005E2457    mov         al,byte ptr [ebp-5]
 005E245A    xor         al,1
 005E245C    and         eax,7F
 005E245F    push        eax
 005E2460    push        0B
 005E2462    mov         eax,dword ptr [ebp-4]
 005E2465    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E2468    call        TWinControl.GetHandle
 005E246D    push        eax
 005E246E    call        USER32.SendMessageA
 005E2473    cmp         byte ptr [ebp-5],0
>005E2477    jne         005E2484
 005E2479    mov         eax,dword ptr [ebp-4]
 005E247C    mov         eax,dword ptr [eax+10];THeaderStrings.FHeader:THeader
 005E247F    call        TControl.Refresh
 005E2484    pop         ecx
 005E2485    pop         ecx
 005E2486    pop         ebp
 005E2487    ret
end;*}

//005E255C
constructor THeader.Create(AOwner:TComponent);
begin
{*
 005E255C    push        ebp
 005E255D    mov         ebp,esp
 005E255F    add         esp,0FFFFFFF4
 005E2562    test        dl,dl
>005E2564    je          005E256E
 005E2566    add         esp,0FFFFFFF0
 005E2569    call        @ClassCreate
 005E256E    mov         dword ptr [ebp-0C],ecx
 005E2571    mov         byte ptr [ebp-5],dl
 005E2574    mov         dword ptr [ebp-4],eax
 005E2577    mov         ecx,dword ptr [ebp-0C]
 005E257A    xor         edx,edx
 005E257C    mov         eax,dword ptr [ebp-4]
 005E257F    call        TCustomControl.Create
 005E2584    mov         eax,dword ptr [ebp-4]
 005E2587    mov         eax,dword ptr [eax+50];THeader.FControlStyle:TControlStyle
 005E258A    or          eax,dword ptr ds:[5E2608];0x44 gvar_005E2608
 005E2590    mov         edx,dword ptr [ebp-4]
 005E2593    mov         dword ptr [edx+50],eax;THeader.FControlStyle:TControlStyle
 005E2596    mov         edx,0FA
 005E259B    mov         eax,dword ptr [ebp-4]
 005E259E    call        TControl.SetWidth
 005E25A3    mov         edx,19
 005E25A8    mov         eax,dword ptr [ebp-4]
 005E25AB    call        TControl.SetHeight
 005E25B0    mov         dl,1
 005E25B2    mov         eax,[005E1B80];THeaderStrings
 005E25B7    call        THeaderStrings.Create;THeaderStrings.Create
 005E25BC    mov         edx,dword ptr [ebp-4]
 005E25BF    mov         dword ptr [edx+210],eax;THeader.Sections:TStrings
 005E25C5    mov         eax,dword ptr [ebp-4]
 005E25C8    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E25CE    mov         edx,dword ptr [ebp-4]
 005E25D1    mov         dword ptr [eax+10],edx
 005E25D4    mov         eax,dword ptr [ebp-4]
 005E25D7    mov         byte ptr [eax+21D],1;THeader.AllowResize:Boolean
 005E25DE    mov         eax,dword ptr [ebp-4]
 005E25E1    mov         byte ptr [eax+21E],1;THeader.BorderStyle:TBorderStyle
 005E25E8    mov         eax,dword ptr [ebp-4]
 005E25EB    cmp         byte ptr [ebp-5],0
>005E25EF    je          005E2600
 005E25F1    call        @AfterConstruction
 005E25F6    pop         dword ptr fs:[0]
 005E25FD    add         esp,0C
 005E2600    mov         eax,dword ptr [ebp-4]
 005E2603    mov         esp,ebp
 005E2605    pop         ebp
 005E2606    ret
*}
end;

//005E260C
destructor THeader.Destroy;
begin
{*
 005E260C    push        ebp
 005E260D    mov         ebp,esp
 005E260F    add         esp,0FFFFFFF8
 005E2612    call        @BeforeDestruction
 005E2617    mov         byte ptr [ebp-5],dl
 005E261A    mov         dword ptr [ebp-4],eax
 005E261D    mov         eax,dword ptr [ebp-4]
 005E2620    call        005E2850
 005E2625    mov         eax,dword ptr [ebp-4]
 005E2628    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E262E    call        TObject.Free
 005E2633    mov         dl,byte ptr [ebp-5]
 005E2636    and         dl,0FC
 005E2639    mov         eax,dword ptr [ebp-4]
 005E263C    call        TCustomControl.Destroy
 005E2641    cmp         byte ptr [ebp-5],0
>005E2645    jle         005E264F
 005E2647    mov         eax,dword ptr [ebp-4]
 005E264A    call        @ClassDestroy
 005E264F    pop         ecx
 005E2650    pop         ecx
 005E2651    pop         ebp
 005E2652    ret
*}
end;

//005E2654
{*procedure sub_005E2654(?:?);
begin
 005E2654    push        ebp
 005E2655    mov         ebp,esp
 005E2657    add         esp,0FFFFFFF8
 005E265A    mov         dword ptr [ebp-8],edx
 005E265D    mov         dword ptr [ebp-4],eax
 005E2660    mov         edx,dword ptr [ebp-8]
 005E2663    mov         eax,dword ptr [ebp-4]
 005E2666    call        005F7FC0
 005E266B    mov         eax,dword ptr [ebp-4]
 005E266E    movzx       eax,byte ptr [eax+21E];THeader.BorderStyle:TBorderStyle
 005E2675    mov         eax,dword ptr [eax*4+6E411C]
 005E267C    mov         edx,dword ptr [ebp-8]
 005E267F    or          dword ptr [edx+4],eax
 005E2682    mov         eax,dword ptr [ebp-8]
 005E2685    and         dword ptr [eax+24],0FFFFFFFC
 005E2689    pop         ecx
 005E268A    pop         ecx
 005E268B    pop         ebp
 005E268C    ret
end;*}

//005E2690
procedure sub_005E2690;
begin
{*
 005E2690    push        ebp
 005E2691    mov         ebp,esp
 005E2693    add         esp,0FFFFFFC4
 005E2696    xor         edx,edx
 005E2698    mov         dword ptr [ebp-14],edx
 005E269B    mov         dword ptr [ebp-4],eax
 005E269E    xor         eax,eax
 005E26A0    push        ebp
 005E26A1    push        5E2839
 005E26A6    push        dword ptr fs:[eax]
 005E26A9    mov         dword ptr fs:[eax],esp
 005E26AC    mov         eax,dword ptr [ebp-4]
 005E26AF    mov         eax,dword ptr [eax+208];THeader............................................................
 005E26B5    mov         dword ptr [ebp-18],eax
 005E26B8    mov         eax,dword ptr [ebp-4]
 005E26BB    mov         edx,dword ptr [eax+68];THeader.FFont:TFont
 005E26BE    mov         eax,dword ptr [ebp-18]
 005E26C1    call        TCanvas.SetFont
 005E26C6    mov         eax,dword ptr [ebp-18]
 005E26C9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E26CC    mov         edx,8000000F
 005E26D1    call        TBrush.SetColor
 005E26D6    xor         eax,eax
 005E26D8    mov         dword ptr [ebp-8],eax
 005E26DB    mov         edx,5E284C;'T'
 005E26E0    mov         eax,dword ptr [ebp-4]
 005E26E3    mov         eax,dword ptr [eax+208];THeader............................................................
 005E26E9    call        005C177C
 005E26EE    push        eax
 005E26EF    mov         eax,dword ptr [ebp-4]
 005E26F2    call        TControl.GetClientHeight
 005E26F7    pop         edx
 005E26F8    sub         eax,edx
 005E26FA    sar         eax,1
>005E26FC    jns         005E2701
 005E26FE    adc         eax,0
 005E2701    mov         dword ptr [ebp-0C],eax
 005E2704    mov         eax,dword ptr [ebp-4]
 005E2707    call        TControl.GetClientHeight
 005E270C    push        eax
 005E270D    lea         eax,[ebp-2C]
 005E2710    push        eax
 005E2711    xor         ecx,ecx
 005E2713    xor         edx,edx
 005E2715    xor         eax,eax
 005E2717    call        Rect
 005E271C    xor         eax,eax
 005E271E    mov         dword ptr [ebp-10],eax
 005E2721    lea         eax,[ebp-14]
 005E2724    call        @LStrClr
 005E2729    mov         eax,dword ptr [ebp-4]
 005E272C    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2732    mov         edx,dword ptr [eax]
 005E2734    call        dword ptr [edx+14];@AbstractError
 005E2737    cmp         eax,dword ptr [ebp-8]
>005E273A    jle         005E276D
 005E273C    mov         eax,dword ptr [ebp-4]
 005E273F    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2745    mov         eax,dword ptr [eax+14]
 005E2748    mov         edx,dword ptr [ebp-8]
 005E274B    call        TList.Get
 005E2750    mov         dword ptr [ebp-1C],eax
 005E2753    mov         eax,dword ptr [ebp-1C]
 005E2756    mov         eax,dword ptr [eax+4]
 005E2759    mov         dword ptr [ebp-10],eax
 005E275C    lea         eax,[ebp-14]
 005E275F    mov         edx,dword ptr [ebp-1C]
 005E2762    mov         edx,dword ptr [edx+8]
 005E2765    call        @LStrLAsg
 005E276A    inc         dword ptr [ebp-8]
 005E276D    mov         eax,dword ptr [ebp-24]
 005E2770    mov         dword ptr [ebp-2C],eax
 005E2773    mov         eax,dword ptr [ebp-10]
 005E2776    add         dword ptr [ebp-24],eax
 005E2779    mov         eax,dword ptr [ebp-4]
 005E277C    call        TControl.GetClientWidth
 005E2781    sub         eax,dword ptr [ebp-24]
 005E2784    cmp         eax,2
>005E2787    jl          005E279C
 005E2789    mov         eax,dword ptr [ebp-4]
 005E278C    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2792    mov         edx,dword ptr [eax]
 005E2794    call        dword ptr [edx+14];@AbstractError
 005E2797    cmp         eax,dword ptr [ebp-8]
>005E279A    jne         005E27A7
 005E279C    mov         eax,dword ptr [ebp-4]
 005E279F    call        TControl.GetClientWidth
 005E27A4    mov         dword ptr [ebp-24],eax
 005E27A7    mov         eax,dword ptr [ebp-0C]
 005E27AA    push        eax
 005E27AB    mov         eax,dword ptr [ebp-14]
 005E27AE    push        eax
 005E27AF    mov         eax,dword ptr [ebp-20]
 005E27B2    dec         eax
 005E27B3    push        eax
 005E27B4    lea         eax,[ebp-3C]
 005E27B7    push        eax
 005E27B8    mov         ecx,dword ptr [ebp-24]
 005E27BB    dec         ecx
 005E27BC    mov         edx,dword ptr [ebp-28]
 005E27BF    inc         edx
 005E27C0    mov         eax,dword ptr [ebp-2C]
 005E27C3    inc         eax
 005E27C4    call        Rect
 005E27C9    lea         edx,[ebp-3C]
 005E27CC    mov         ecx,dword ptr [ebp-2C]
 005E27CF    add         ecx,3
 005E27D2    mov         eax,dword ptr [ebp-18]
 005E27D5    call        005C1648
 005E27DA    push        3
 005E27DC    push        4
 005E27DE    lea         eax,[ebp-2C]
 005E27E1    push        eax
 005E27E2    mov         eax,dword ptr [ebp-4]
 005E27E5    mov         eax,dword ptr [eax+208];THeader............................................................
 005E27EB    call        TCanvas.GetHandle
 005E27F0    push        eax
 005E27F1    call        USER32.DrawEdge
 005E27F6    push        0C
 005E27F8    push        4
 005E27FA    lea         eax,[ebp-2C]
 005E27FD    push        eax
 005E27FE    mov         eax,dword ptr [ebp-4]
 005E2801    mov         eax,dword ptr [eax+208];THeader............................................................
 005E2807    call        TCanvas.GetHandle
 005E280C    push        eax
 005E280D    call        USER32.DrawEdge
 005E2812    mov         eax,dword ptr [ebp-4]
 005E2815    call        TControl.GetClientWidth
 005E281A    cmp         eax,dword ptr [ebp-24]
>005E281D    jne         005E2729
 005E2823    xor         eax,eax
 005E2825    pop         edx
 005E2826    pop         ecx
 005E2827    pop         ecx
 005E2828    mov         dword ptr fs:[eax],edx
 005E282B    push        5E2840
 005E2830    lea         eax,[ebp-14]
 005E2833    call        @LStrClr
 005E2838    ret
>005E2839    jmp         @HandleFinally
>005E283E    jmp         005E2830
 005E2840    mov         esp,ebp
 005E2842    pop         ebp
 005E2843    ret
*}
end;

//005E2850
procedure sub_005E2850(?:THeader);
begin
{*
 005E2850    push        ebp
 005E2851    mov         ebp,esp
 005E2853    push        ecx
 005E2854    mov         dword ptr [ebp-4],eax
 005E2857    mov         eax,dword ptr [ebp-4]
 005E285A    cmp         dword ptr [eax+210],0;THeader.Sections:TStrings
>005E2861    je          005E2871
 005E2863    mov         eax,dword ptr [ebp-4]
 005E2866    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E286C    mov         edx,dword ptr [eax]
 005E286E    call        dword ptr [edx+44];TStrings.Clear
 005E2871    pop         ecx
 005E2872    pop         ebp
 005E2873    ret
*}
end;

//005E2874
procedure THeader.SetBorderStyle(Value:TBorderStyle);
begin
{*
 005E2874    push        ebp
 005E2875    mov         ebp,esp
 005E2877    add         esp,0FFFFFFF8
 005E287A    mov         byte ptr [ebp-5],dl
 005E287D    mov         dword ptr [ebp-4],eax
 005E2880    mov         al,byte ptr [ebp-5]
 005E2883    mov         edx,dword ptr [ebp-4]
 005E2886    cmp         al,byte ptr [edx+21E];THeader.BorderStyle:TBorderStyle
>005E288C    je          005E28A2
 005E288E    mov         al,byte ptr [ebp-5]
 005E2891    mov         edx,dword ptr [ebp-4]
 005E2894    mov         byte ptr [edx+21E],al;THeader.BorderStyle:TBorderStyle
 005E289A    mov         eax,dword ptr [ebp-4]
 005E289D    call        TWinControl.RecreateWnd
 005E28A2    pop         ecx
 005E28A3    pop         ecx
 005E28A4    pop         ebp
 005E28A5    ret
*}
end;

//005E28A8
procedure THeader.SetSections(Value:TStrings);
begin
{*
 005E28A8    push        ebp
 005E28A9    mov         ebp,esp
 005E28AB    add         esp,0FFFFFFF8
 005E28AE    mov         dword ptr [ebp-8],edx
 005E28B1    mov         dword ptr [ebp-4],eax
 005E28B4    mov         edx,dword ptr [ebp-8]
 005E28B7    mov         eax,dword ptr [ebp-4]
 005E28BA    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E28C0    mov         ecx,dword ptr [eax]
 005E28C2    call        dword ptr [ecx+8];TStrings.Assign
 005E28C5    pop         ecx
 005E28C6    pop         ecx
 005E28C7    pop         ebp
 005E28C8    ret
*}
end;

//005E28CC
{*procedure THeader.WMNCHitTest(?:?);
begin
 005E28CC    push        ebp
 005E28CD    mov         ebp,esp
 005E28CF    add         esp,0FFFFFFF0
 005E28D2    mov         dword ptr [ebp-8],edx
 005E28D5    mov         dword ptr [ebp-4],eax
 005E28D8    mov         edx,dword ptr [ebp-8]
 005E28DB    mov         eax,dword ptr [ebp-4]
 005E28DE    call        TWinControl.WMNCHitTest
 005E28E3    lea         edx,[ebp-10]
 005E28E6    mov         eax,dword ptr [ebp-8]
 005E28E9    mov         eax,dword ptr [eax+8]
 005E28EC    call        0063D050
 005E28F1    mov         eax,dword ptr [ebp-4]
 005E28F4    mov         edx,dword ptr [ebp-10]
 005E28F7    mov         dword ptr [eax+214],edx;THeader.FHitTest:TPoint
 005E28FD    mov         edx,dword ptr [ebp-0C]
 005E2900    mov         dword ptr [eax+218],edx
 005E2906    mov         esp,ebp
 005E2908    pop         ebp
 005E2909    ret
end;*}

//005E290C
{*procedure THeader.WMSetCursor(?:?);
begin
 005E290C    push        ebp
 005E290D    mov         ebp,esp
 005E290F    add         esp,0FFFFFFE0
 005E2912    mov         dword ptr [ebp-8],edx
 005E2915    mov         dword ptr [ebp-4],eax
 005E2918    xor         eax,eax
 005E291A    mov         dword ptr [ebp-0C],eax
 005E291D    mov         eax,dword ptr [ebp-4]
 005E2920    xor         edx,edx
 005E2922    mov         dword ptr [eax+220],edx;THeader.FResizeSection:Integer
 005E2928    lea         ecx,[ebp-20]
 005E292B    mov         eax,dword ptr [ebp-4]
 005E292E    lea         edx,[eax+214];THeader.FHitTest:TPoint
 005E2934    mov         eax,dword ptr [ebp-4]
 005E2937    call        005F305C
 005E293C    mov         eax,dword ptr [ebp-4]
 005E293F    mov         edx,dword ptr [ebp-20]
 005E2942    mov         dword ptr [eax+214],edx;THeader.FHitTest:TPoint
 005E2948    mov         edx,dword ptr [ebp-1C]
 005E294B    mov         dword ptr [eax+218],edx
 005E2951    mov         dword ptr [ebp-14],2
 005E2958    mov         eax,dword ptr [ebp-8]
 005E295B    cmp         word ptr [eax+8],1
>005E2960    jne         005E29F2
 005E2966    mov         eax,dword ptr [ebp-4]
 005E2969    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E296F    mov         edx,dword ptr [eax]
 005E2971    call        dword ptr [edx+14];@AbstractError
 005E2974    sub         eax,2
 005E2977    test        eax,eax
>005E2979    jl          005E29F2
 005E297B    inc         eax
 005E297C    mov         dword ptr [ebp-18],eax
 005E297F    mov         dword ptr [ebp-10],0
 005E2986    mov         eax,dword ptr [ebp-4]
 005E2989    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E298F    mov         eax,dword ptr [eax+14]
 005E2992    mov         edx,dword ptr [ebp-10]
 005E2995    call        TList.Get
 005E299A    mov         eax,dword ptr [eax+4]
 005E299D    add         dword ptr [ebp-14],eax
 005E29A0    mov         eax,dword ptr [ebp-4]
 005E29A3    mov         eax,dword ptr [eax+214];THeader.FHitTest:TPoint
 005E29A9    add         eax,2;TPoint.X:Longint
 005E29AC    mov         edx,dword ptr [ebp-14]
 005E29AF    sub         edx,eax
 005E29B1    mov         eax,dword ptr [ebp-4]
 005E29B4    mov         dword ptr [eax+224],edx;THeader.FMouseOffset:Integer
 005E29BA    mov         eax,dword ptr [ebp-4]
 005E29BD    mov         eax,dword ptr [eax+224];THeader.FMouseOffset:Integer
 005E29C3    cdq
 005E29C4    xor         eax,edx
 005E29C6    sub         eax,edx
 005E29C8    cmp         eax,4
>005E29CB    jge         005E29EA
 005E29CD    push        7F84
 005E29D2    push        0
 005E29D4    call        USER32.LoadCursorA
 005E29D9    mov         dword ptr [ebp-0C],eax
 005E29DC    mov         eax,dword ptr [ebp-10]
 005E29DF    mov         edx,dword ptr [ebp-4]
 005E29E2    mov         dword ptr [edx+220],eax;THeader.FResizeSection:Integer
>005E29E8    jmp         005E29F2
 005E29EA    inc         dword ptr [ebp-10]
 005E29ED    dec         dword ptr [ebp-18]
>005E29F0    jne         005E2986
 005E29F2    mov         eax,dword ptr [ebp-4]
 005E29F5    cmp         byte ptr [eax+21D],0;THeader.AllowResize:Boolean
>005E29FC    jne         005E2A07
 005E29FE    mov         eax,dword ptr [ebp-4]
 005E2A01    test        byte ptr [eax+1C],10;THeader.FComponentState:TComponentState
>005E2A05    je          005E2A0D
 005E2A07    cmp         dword ptr [ebp-0C],0
>005E2A0B    jne         005E2A11
 005E2A0D    xor         eax,eax
>005E2A0F    jmp         005E2A13
 005E2A11    mov         al,1
 005E2A13    mov         edx,dword ptr [ebp-4]
 005E2A16    mov         byte ptr [edx+21C],al;THeader.FCanResize:Boolean
 005E2A1C    mov         eax,dword ptr [ebp-4]
 005E2A1F    cmp         byte ptr [eax+21C],0;THeader.FCanResize:Boolean
>005E2A26    je          005E2A33
 005E2A28    mov         eax,dword ptr [ebp-0C]
 005E2A2B    push        eax
 005E2A2C    call        USER32.SetCursor
>005E2A31    jmp         005E2A3E
 005E2A33    mov         edx,dword ptr [ebp-8]
 005E2A36    mov         eax,dword ptr [ebp-4]
 005E2A39    call        TWinControl.WMSetCursor
 005E2A3E    mov         esp,ebp
 005E2A40    pop         ebp
 005E2A41    ret
end;*}

//005E2A44
procedure THeader.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E2A44    push        ebp
 005E2A45    mov         ebp,esp
 005E2A47    add         esp,0FFFFFFF8
 005E2A4A    mov         byte ptr [ebp-6],cl
 005E2A4D    mov         byte ptr [ebp-5],dl
 005E2A50    mov         dword ptr [ebp-4],eax
 005E2A53    mov         eax,dword ptr [ebp+0C]
 005E2A56    push        eax
 005E2A57    mov         eax,dword ptr [ebp+8]
 005E2A5A    push        eax
 005E2A5B    mov         cl,byte ptr [ebp-6]
 005E2A5E    mov         dl,byte ptr [ebp-5]
 005E2A61    mov         eax,dword ptr [ebp-4]
 005E2A64    call        TControl.MouseDown
 005E2A69    mov         eax,dword ptr [ebp-4]
 005E2A6C    test        byte ptr [eax+1C],10;THeader.FComponentState:TComponentState
>005E2A70    je          005E2A78
 005E2A72    cmp         byte ptr [ebp-5],1
>005E2A76    je          005E2A7E
 005E2A78    cmp         byte ptr [ebp-5],0
>005E2A7C    jne         005E2A98
 005E2A7E    mov         eax,dword ptr [ebp-4]
 005E2A81    cmp         byte ptr [eax+21C],0;THeader.FCanResize:Boolean
>005E2A88    je          005E2A98
 005E2A8A    mov         eax,dword ptr [ebp-4]
 005E2A8D    call        TWinControl.GetHandle
 005E2A92    push        eax
 005E2A93    call        USER32.SetCapture
 005E2A98    pop         ecx
 005E2A99    pop         ecx
 005E2A9A    pop         ebp
 005E2A9B    ret         8
*}
end;

//005E2AA0
procedure THeader.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E2AA0    push        ebp
 005E2AA1    mov         ebp,esp
 005E2AA3    add         esp,0FFFFFFE0
 005E2AA6    push        ebx
 005E2AA7    push        esi
 005E2AA8    mov         dword ptr [ebp-0C],ecx
 005E2AAB    mov         byte ptr [ebp-5],dl
 005E2AAE    mov         dword ptr [ebp-4],eax
 005E2AB1    mov         eax,dword ptr [ebp+8]
 005E2AB4    push        eax
 005E2AB5    mov         ecx,dword ptr [ebp-0C]
 005E2AB8    mov         dl,byte ptr [ebp-5]
 005E2ABB    mov         eax,dword ptr [ebp-4]
 005E2ABE    call        TControl.MouseMove
 005E2AC3    mov         eax,dword ptr [ebp-4]
 005E2AC6    call        TWinControl.GetHandle
 005E2ACB    mov         ebx,eax
 005E2ACD    call        USER32.GetCapture
 005E2AD2    cmp         ebx,eax
>005E2AD4    jne         005E2BF9
 005E2ADA    mov         eax,dword ptr [ebp-4]
 005E2ADD    cmp         byte ptr [eax+21C],0;THeader.FCanResize:Boolean
>005E2AE4    je          005E2BF9
 005E2AEA    mov         dword ptr [ebp-14],2
 005E2AF1    mov         eax,dword ptr [ebp-4]
 005E2AF4    mov         eax,dword ptr [eax+220];THeader.FResizeSection:Integer
 005E2AFA    test        eax,eax
>005E2AFC    jl          005E2B2B
 005E2AFE    inc         eax
 005E2AFF    mov         dword ptr [ebp-20],eax
 005E2B02    mov         dword ptr [ebp-10],0
 005E2B09    mov         eax,dword ptr [ebp-4]
 005E2B0C    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2B12    mov         eax,dword ptr [eax+14]
 005E2B15    mov         edx,dword ptr [ebp-10]
 005E2B18    call        TList.Get
 005E2B1D    mov         eax,dword ptr [eax+4]
 005E2B20    add         dword ptr [ebp-14],eax
 005E2B23    inc         dword ptr [ebp-10]
 005E2B26    dec         dword ptr [ebp-20]
>005E2B29    jne         005E2B09
 005E2B2B    mov         eax,dword ptr [ebp-4]
 005E2B2E    cmp         dword ptr [eax+220],0;THeader.FResizeSection:Integer
>005E2B35    jle         005E2B5F
 005E2B37    mov         eax,dword ptr [ebp-4]
 005E2B3A    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2B40    mov         eax,dword ptr [eax+14]
 005E2B43    mov         edx,dword ptr [ebp-4]
 005E2B46    mov         edx,dword ptr [edx+220];THeader.FResizeSection:Integer
 005E2B4C    call        TList.Get
 005E2B51    mov         edx,dword ptr [ebp-14]
 005E2B54    sub         edx,dword ptr [eax+4]
 005E2B57    add         edx,2
 005E2B5A    mov         dword ptr [ebp-18],edx
>005E2B5D    jmp         005E2B66
 005E2B5F    mov         dword ptr [ebp-18],2
 005E2B66    mov         eax,dword ptr [ebp-4]
 005E2B69    call        TControl.GetClientWidth
 005E2B6E    sub         eax,2
 005E2B71    mov         dword ptr [ebp-1C],eax
 005E2B74    mov         eax,dword ptr [ebp-0C]
 005E2B77    cmp         eax,dword ptr [ebp-18]
>005E2B7A    jge         005E2B82
 005E2B7C    mov         eax,dword ptr [ebp-18]
 005E2B7F    mov         dword ptr [ebp-0C],eax
 005E2B82    mov         eax,dword ptr [ebp-0C]
 005E2B85    cmp         eax,dword ptr [ebp-1C]
>005E2B88    jle         005E2B90
 005E2B8A    mov         eax,dword ptr [ebp-1C]
 005E2B8D    mov         dword ptr [ebp-0C],eax
 005E2B90    mov         eax,dword ptr [ebp-4]
 005E2B93    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2B99    mov         eax,dword ptr [eax+14]
 005E2B9C    mov         edx,dword ptr [ebp-4]
 005E2B9F    mov         edx,dword ptr [edx+220];THeader.FResizeSection:Integer
 005E2BA5    call        TList.Get
 005E2BAA    mov         edx,dword ptr [ebp-14]
 005E2BAD    sub         edx,dword ptr [ebp-0C]
 005E2BB0    sub         edx,2
 005E2BB3    mov         ecx,dword ptr [ebp-4]
 005E2BB6    sub         edx,dword ptr [ecx+224]
 005E2BBC    sub         dword ptr [eax+4],edx
 005E2BBF    mov         eax,dword ptr [ebp-4]
 005E2BC2    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2BC8    mov         eax,dword ptr [eax+14]
 005E2BCB    mov         edx,dword ptr [ebp-4]
 005E2BCE    mov         edx,dword ptr [edx+220];THeader.FResizeSection:Integer
 005E2BD4    call        TList.Get
 005E2BD9    mov         ecx,dword ptr [eax+4]
 005E2BDC    mov         eax,dword ptr [ebp-4]
 005E2BDF    mov         edx,dword ptr [eax+220];THeader.FResizeSection:Integer
 005E2BE5    mov         eax,dword ptr [ebp-4]
 005E2BE8    mov         si,0FFB3
 005E2BEC    call        @CallDynaInst;THeader.sub_005E2C80
 005E2BF1    mov         eax,dword ptr [ebp-4]
 005E2BF4    call        TControl.Refresh
 005E2BF9    pop         esi
 005E2BFA    pop         ebx
 005E2BFB    mov         esp,ebp
 005E2BFD    pop         ebp
 005E2BFE    ret         4
*}
end;

//005E2C04
procedure THeader.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E2C04    push        ebp
 005E2C05    mov         ebp,esp
 005E2C07    add         esp,0FFFFFFF8
 005E2C0A    push        esi
 005E2C0B    mov         byte ptr [ebp-6],cl
 005E2C0E    mov         byte ptr [ebp-5],dl
 005E2C11    mov         dword ptr [ebp-4],eax
 005E2C14    mov         eax,dword ptr [ebp-4]
 005E2C17    cmp         byte ptr [eax+21C],0;THeader.FCanResize:Boolean
>005E2C1E    je          005E2C61
 005E2C20    call        USER32.ReleaseCapture
 005E2C25    mov         eax,dword ptr [ebp-4]
 005E2C28    mov         eax,dword ptr [eax+210];THeader.Sections:TStrings
 005E2C2E    mov         eax,dword ptr [eax+14]
 005E2C31    mov         edx,dword ptr [ebp-4]
 005E2C34    mov         edx,dword ptr [edx+220];THeader.FResizeSection:Integer
 005E2C3A    call        TList.Get
 005E2C3F    mov         ecx,dword ptr [eax+4]
 005E2C42    mov         eax,dword ptr [ebp-4]
 005E2C45    mov         edx,dword ptr [eax+220];THeader.FResizeSection:Integer
 005E2C4B    mov         eax,dword ptr [ebp-4]
 005E2C4E    mov         si,0FFB2
 005E2C52    call        @CallDynaInst;THeader.sub_005E2CBC
 005E2C57    mov         eax,dword ptr [ebp-4]
 005E2C5A    mov         byte ptr [eax+21C],0;THeader.FCanResize:Boolean
 005E2C61    mov         eax,dword ptr [ebp+0C]
 005E2C64    push        eax
 005E2C65    mov         eax,dword ptr [ebp+8]
 005E2C68    push        eax
 005E2C69    mov         cl,byte ptr [ebp-6]
 005E2C6C    mov         dl,byte ptr [ebp-5]
 005E2C6F    mov         eax,dword ptr [ebp-4]
 005E2C72    call        TControl.MouseUp
 005E2C77    pop         esi
 005E2C78    pop         ecx
 005E2C79    pop         ecx
 005E2C7A    pop         ebp
 005E2C7B    ret         8
*}
end;

//005E2C80
{*procedure THeader.sub_005E2C80(?:?; ?:?);
begin
 005E2C80    push        ebp
 005E2C81    mov         ebp,esp
 005E2C83    add         esp,0FFFFFFF4
 005E2C86    push        ebx
 005E2C87    mov         dword ptr [ebp-0C],ecx
 005E2C8A    mov         dword ptr [ebp-8],edx
 005E2C8D    mov         dword ptr [ebp-4],eax
 005E2C90    mov         eax,dword ptr [ebp-4]
 005E2C93    cmp         word ptr [eax+22A],0;THeader.?f22A:word
>005E2C9B    je          005E2CB6
 005E2C9D    mov         eax,dword ptr [ebp-0C]
 005E2CA0    push        eax
 005E2CA1    mov         ebx,dword ptr [ebp-4]
 005E2CA4    mov         ecx,dword ptr [ebp-8]
 005E2CA7    mov         edx,dword ptr [ebp-4]
 005E2CAA    mov         eax,dword ptr [ebx+22C];THeader.?f22C:dword
 005E2CB0    call        dword ptr [ebx+228];THeader.OnSizing
 005E2CB6    pop         ebx
 005E2CB7    mov         esp,ebp
 005E2CB9    pop         ebp
 005E2CBA    ret
end;*}

//005E2CBC
{*procedure THeader.sub_005E2CBC(?:?; ?:?);
begin
 005E2CBC    push        ebp
 005E2CBD    mov         ebp,esp
 005E2CBF    add         esp,0FFFFFFF0
 005E2CC2    push        ebx
 005E2CC3    mov         dword ptr [ebp-0C],ecx
 005E2CC6    mov         dword ptr [ebp-8],edx
 005E2CC9    mov         dword ptr [ebp-4],eax
 005E2CCC    mov         eax,dword ptr [ebp-4]
 005E2CCF    cmp         word ptr [eax+232],0;THeader.?f232:word
>005E2CD7    je          005E2CF2
 005E2CD9    mov         eax,dword ptr [ebp-0C]
 005E2CDC    push        eax
 005E2CDD    mov         ebx,dword ptr [ebp-4]
 005E2CE0    mov         ecx,dword ptr [ebp-8]
 005E2CE3    mov         edx,dword ptr [ebp-4]
 005E2CE6    mov         eax,dword ptr [ebx+234];THeader.?f234:dword
 005E2CEC    call        dword ptr [ebx+230];THeader.OnSized
 005E2CF2    mov         eax,dword ptr [ebp-4]
 005E2CF5    test        byte ptr [eax+1C],10;THeader.FComponentState:TComponentState
>005E2CF9    je          005E2D1A
 005E2CFB    mov         eax,dword ptr [ebp-4]
 005E2CFE    call        005CD060
 005E2D03    mov         dword ptr [ebp-10],eax
 005E2D06    cmp         dword ptr [ebp-10],0
>005E2D0A    je          005E2D1A
 005E2D0C    mov         eax,dword ptr [ebp-10]
 005E2D0F    mov         eax,dword ptr [eax+250]
 005E2D15    mov         edx,dword ptr [eax]
 005E2D17    call        dword ptr [edx+0C]
 005E2D1A    pop         ebx
 005E2D1B    mov         esp,ebp
 005E2D1D    pop         ebp
 005E2D1E    ret
end;*}

//005E2D20
{*procedure THeader.WMSize(?:?);
begin
 005E2D20    push        ebp
 005E2D21    mov         ebp,esp
 005E2D23    add         esp,0FFFFFFF8
 005E2D26    mov         dword ptr [ebp-8],edx
 005E2D29    mov         dword ptr [ebp-4],eax
 005E2D2C    mov         edx,dword ptr [ebp-8]
 005E2D2F    mov         eax,dword ptr [ebp-4]
 005E2D32    call        TWinControl.WMSize
 005E2D37    mov         eax,dword ptr [ebp-4]
 005E2D3A    mov         edx,dword ptr [eax]
 005E2D3C    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E2D3F    pop         ecx
 005E2D40    pop         ecx
 005E2D41    pop         ebp
 005E2D42    ret
end;*}

//005E2EA8
constructor TGroupButton.Create;
begin
{*
 005E2EA8    push        ebp
 005E2EA9    mov         ebp,esp
 005E2EAB    add         esp,0FFFFFFF4
 005E2EAE    test        dl,dl
>005E2EB0    je          005E2EBA
 005E2EB2    add         esp,0FFFFFFF0
 005E2EB5    call        @ClassCreate
 005E2EBA    mov         dword ptr [ebp-0C],ecx
 005E2EBD    mov         byte ptr [ebp-5],dl
 005E2EC0    mov         dword ptr [ebp-4],eax
 005E2EC3    mov         ecx,dword ptr [ebp-0C]
 005E2EC6    xor         edx,edx
 005E2EC8    mov         eax,dword ptr [ebp-4]
 005E2ECB    call        TRadioButton.Create
 005E2ED0    mov         edx,dword ptr [ebp-4]
 005E2ED3    mov         eax,dword ptr [ebp-0C]
 005E2ED6    mov         eax,dword ptr [eax+210]
 005E2EDC    call        TList.Add
 005E2EE1    xor         edx,edx
 005E2EE3    mov         eax,dword ptr [ebp-4]
 005E2EE6    call        TCCalendar.SetVisible
 005E2EEB    mov         eax,dword ptr [ebp-0C]
 005E2EEE    mov         edx,dword ptr [eax]
 005E2EF0    call        dword ptr [edx+50]
 005E2EF3    mov         edx,eax
 005E2EF5    mov         eax,dword ptr [ebp-4]
 005E2EF8    mov         ecx,dword ptr [eax]
 005E2EFA    call        dword ptr [ecx+64]
 005E2EFD    xor         edx,edx
 005E2EFF    mov         eax,dword ptr [ebp-4]
 005E2F02    call        TCCalendar.SetParentShowHint
 005E2F07    mov         eax,dword ptr [ebp-4]
 005E2F0A    mov         edx,dword ptr [ebp-0C]
 005E2F0D    mov         dword ptr [eax+124],edx
 005E2F13    mov         dword ptr [eax+120],5E33C8
 005E2F1D    mov         edx,dword ptr [ebp-0C]
 005E2F20    mov         eax,dword ptr [ebp-4]
 005E2F23    mov         ecx,dword ptr [eax]
 005E2F25    call        dword ptr [ecx+68]
 005E2F28    mov         eax,dword ptr [ebp-4]
 005E2F2B    cmp         byte ptr [ebp-5],0
>005E2F2F    je          005E2F40
 005E2F31    call        @AfterConstruction
 005E2F36    pop         dword ptr fs:[0]
 005E2F3D    add         esp,0C
 005E2F40    mov         eax,dword ptr [ebp-4]
 005E2F43    mov         esp,ebp
 005E2F45    pop         ebp
 005E2F46    ret
*}
end;

//005E2F48
destructor TGroupButton.Destroy;
begin
{*
 005E2F48    push        ebp
 005E2F49    mov         ebp,esp
 005E2F4B    add         esp,0FFFFFFF8
 005E2F4E    call        @BeforeDestruction
 005E2F53    mov         byte ptr [ebp-5],dl
 005E2F56    mov         dword ptr [ebp-4],eax
 005E2F59    mov         eax,dword ptr [ebp-4]
 005E2F5C    mov         eax,dword ptr [eax+4];TGroupButton.FOwner:TComponent
 005E2F5F    mov         eax,dword ptr [eax+210]
 005E2F65    mov         edx,dword ptr [ebp-4]
 005E2F68    call        TList.Remove
 005E2F6D    mov         dl,byte ptr [ebp-5]
 005E2F70    and         dl,0FC
 005E2F73    mov         eax,dword ptr [ebp-4]
 005E2F76    call        TWinControl.Destroy
 005E2F7B    cmp         byte ptr [ebp-5],0
>005E2F7F    jle         005E2F89
 005E2F81    mov         eax,dword ptr [ebp-4]
 005E2F84    call        @ClassDestroy
 005E2F89    pop         ecx
 005E2F8A    pop         ecx
 005E2F8B    pop         ebp
 005E2F8C    ret
*}
end;

//005E2F90
{*procedure TGroupButton.sub_0059D57C(?:?);
begin
 005E2F90    push        ebp
 005E2F91    mov         ebp,esp
 005E2F93    add         esp,0FFFFFFF8
 005E2F96    push        ebx
 005E2F97    push        esi
 005E2F98    push        edi
 005E2F99    mov         dword ptr [ebp-8],edx
 005E2F9C    mov         dword ptr [ebp-4],eax
 005E2F9F    mov         eax,dword ptr [ebp-4]
 005E2FA2    cmp         byte ptr [eax+218],0;TGroupButton.....FInClick:Boolean
>005E2FA9    jne         005E3021
 005E2FAB    mov         eax,dword ptr [ebp-4]
 005E2FAE    mov         byte ptr [eax+218],1;TGroupButton......FInClick:Boolean
 005E2FB5    xor         eax,eax
 005E2FB7    push        ebp
 005E2FB8    push        5E2FFE
 005E2FBD    push        dword ptr fs:[eax]
 005E2FC0    mov         dword ptr fs:[eax],esp
 005E2FC3    mov         eax,dword ptr [ebp-8]
 005E2FC6    cmp         word ptr [eax+6],0
>005E2FCB    je          005E2FD7
 005E2FCD    mov         eax,dword ptr [ebp-8]
 005E2FD0    cmp         word ptr [eax+6],5
>005E2FD5    jne         005E2FF4
 005E2FD7    mov         eax,dword ptr [ebp-4]
 005E2FDA    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 005E2FDD    mov         edx,dword ptr [eax]
 005E2FDF    call        dword ptr [edx+0C8]
 005E2FE5    test        al,al
>005E2FE7    je          005E2FF4
 005E2FE9    mov         edx,dword ptr [ebp-8]
 005E2FEC    mov         eax,dword ptr [ebp-4]
 005E2FEF    call        TRadioButton.sub_0059D57C
 005E2FF4    xor         eax,eax
 005E2FF6    pop         edx
 005E2FF7    pop         ecx
 005E2FF8    pop         ecx
 005E2FF9    mov         dword ptr fs:[eax],edx
>005E2FFC    jmp         005E3017
>005E2FFE    jmp         @HandleAnyException
 005E3003    mov         eax,[006E9DCC];^Application:TApplication
 005E3008    mov         eax,dword ptr [eax]
 005E300A    mov         edx,dword ptr [ebp-4]
 005E300D    call        TApplication.HandleException
 005E3012    call        @DoneExcept
 005E3017    mov         eax,dword ptr [ebp-4]
 005E301A    mov         byte ptr [eax+218],0;TGroupButton.......FInClick:Boolean
 005E3021    pop         edi
 005E3022    pop         esi
 005E3023    pop         ebx
 005E3024    pop         ecx
 005E3025    pop         ecx
 005E3026    pop         ebp
 005E3027    ret
end;*}

//005E3028
{*procedure TGroupButton.sub_005E3028(?:?);
begin
 005E3028    push        ebp
 005E3029    mov         ebp,esp
 005E302B    add         esp,0FFFFFFF8
 005E302E    push        esi
 005E302F    mov         dword ptr [ebp-8],edx
 005E3032    mov         dword ptr [ebp-4],eax
 005E3035    mov         edx,dword ptr [ebp-8]
 005E3038    mov         eax,dword ptr [ebp-4]
 005E303B    call        TWinControl.sub_005FAA3C
 005E3040    mov         edx,dword ptr [ebp-8]
 005E3043    mov         eax,dword ptr [ebp-4]
 005E3046    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 005E3049    mov         si,0FFBA
 005E304D    call        @CallDynaInst;TWinControl.sub_005FAA3C
 005E3052    mov         eax,dword ptr [ebp-8]
 005E3055    cmp         byte ptr [eax],8
>005E3058    je          005E3062
 005E305A    mov         eax,dword ptr [ebp-8]
 005E305D    cmp         byte ptr [eax],20
>005E3060    jne         005E307A
 005E3062    mov         eax,dword ptr [ebp-4]
 005E3065    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 005E3068    mov         edx,dword ptr [eax]
 005E306A    call        dword ptr [edx+0C8]
 005E3070    test        al,al
>005E3072    jne         005E307A
 005E3074    mov         eax,dword ptr [ebp-8]
 005E3077    mov         byte ptr [eax],0
 005E307A    pop         esi
 005E307B    pop         ecx
 005E307C    pop         ecx
 005E307D    pop         ebp
 005E307E    ret
end;*}

//005E3080
{*procedure TGroupButton.sub_005E3080(?:?; ?:?);
begin
 005E3080    push        ebp
 005E3081    mov         ebp,esp
 005E3083    add         esp,0FFFFFFF4
 005E3086    push        esi
 005E3087    mov         byte ptr [ebp-9],cl
 005E308A    mov         dword ptr [ebp-8],edx
 005E308D    mov         dword ptr [ebp-4],eax
 005E3090    mov         edx,dword ptr [ebp-8]
 005E3093    mov         cl,byte ptr [ebp-9]
 005E3096    mov         eax,dword ptr [ebp-4]
 005E3099    call        TWinControl.sub_005FA804
 005E309E    mov         edx,dword ptr [ebp-8]
 005E30A1    mov         cl,byte ptr [ebp-9]
 005E30A4    mov         eax,dword ptr [ebp-4]
 005E30A7    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 005E30AA    mov         si,0FFBC
 005E30AE    call        @CallDynaInst;TWinControl.sub_005FA804
 005E30B3    pop         esi
 005E30B4    mov         esp,ebp
 005E30B6    pop         ebp
 005E30B7    ret
end;*}

//005E30B8
constructor TCustomRadioGroup.Create(AOwner:TComponent);
begin
{*
 005E30B8    push        ebp
 005E30B9    mov         ebp,esp
 005E30BB    add         esp,0FFFFFFF4
 005E30BE    test        dl,dl
>005E30C0    je          005E30CA
 005E30C2    add         esp,0FFFFFFF0
 005E30C5    call        @ClassCreate
 005E30CA    mov         dword ptr [ebp-0C],ecx
 005E30CD    mov         byte ptr [ebp-5],dl
 005E30D0    mov         dword ptr [ebp-4],eax
 005E30D3    mov         ecx,dword ptr [ebp-0C]
 005E30D6    xor         edx,edx
 005E30D8    mov         eax,dword ptr [ebp-4]
 005E30DB    call        TCustomGroupBox.Create
 005E30E0    mov         eax,dword ptr [ebp-4]
 005E30E3    mov         edx,dword ptr ds:[5E3168];0xA0 gvar_005E3168
 005E30E9    mov         dword ptr [eax+50],edx;TCustomRadioGroup.FControlStyle:TControlStyle
 005E30EC    mov         dl,1
 005E30EE    mov         eax,[006422A4];TList
 005E30F3    call        TObject.Create;TList.Create
 005E30F8    mov         edx,dword ptr [ebp-4]
 005E30FB    mov         dword ptr [edx+210],eax;TCustomRadioGroup.FButtons:TList
 005E3101    mov         dl,1
 005E3103    mov         eax,[006428B0];TStringList
 005E3108    call        TObject.Create;TStringList.Create
 005E310D    mov         edx,dword ptr [ebp-4]
 005E3110    mov         dword ptr [edx+214],eax;TCustomRadioGroup.FItems:TStrings
 005E3116    mov         eax,dword ptr [ebp-4]
 005E3119    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 005E311F    mov         edx,dword ptr [ebp-4]
 005E3122    mov         dword ptr [eax+24],edx
 005E3125    mov         dword ptr [eax+20],5E3414
 005E312C    mov         eax,dword ptr [ebp-4]
 005E312F    mov         dword ptr [eax+218],0FFFFFFFF;TCustomRadioGroup.FItemIndex:Integer
 005E3139    mov         eax,dword ptr [ebp-4]
 005E313C    mov         dword ptr [eax+21C],1;TCustomRadioGroup.FColumns:Integer
 005E3146    mov         eax,dword ptr [ebp-4]
 005E3149    cmp         byte ptr [ebp-5],0
>005E314D    je          005E315E
 005E314F    call        @AfterConstruction
 005E3154    pop         dword ptr fs:[0]
 005E315B    add         esp,0C
 005E315E    mov         eax,dword ptr [ebp-4]
 005E3161    mov         esp,ebp
 005E3163    pop         ebp
 005E3164    ret
*}
end;

//005E316C
destructor TCustomRadioGroup.Destroy;
begin
{*
 005E316C    push        ebp
 005E316D    mov         ebp,esp
 005E316F    add         esp,0FFFFFFF8
 005E3172    call        @BeforeDestruction
 005E3177    mov         byte ptr [ebp-5],dl
 005E317A    mov         dword ptr [ebp-4],eax
 005E317D    xor         edx,edx
 005E317F    mov         eax,dword ptr [ebp-4]
 005E3182    call        005E34C0
 005E3187    mov         eax,dword ptr [ebp-4]
 005E318A    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 005E3190    xor         edx,edx
 005E3192    mov         dword ptr [eax+20],edx
 005E3195    mov         dword ptr [eax+24],edx
 005E3198    mov         eax,dword ptr [ebp-4]
 005E319B    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 005E31A1    call        TObject.Free
 005E31A6    mov         eax,dword ptr [ebp-4]
 005E31A9    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E31AF    call        TObject.Free
 005E31B4    mov         dl,byte ptr [ebp-5]
 005E31B7    and         dl,0FC
 005E31BA    mov         eax,dword ptr [ebp-4]
 005E31BD    call        TCustomControl.Destroy
 005E31C2    cmp         byte ptr [ebp-5],0
>005E31C6    jle         005E31D0
 005E31C8    mov         eax,dword ptr [ebp-4]
 005E31CB    call        @ClassDestroy
 005E31D0    pop         ecx
 005E31D1    pop         ecx
 005E31D2    pop         ebp
 005E31D3    ret
*}
end;

//005E31D4
{*procedure TCustomRadioGroup.sub_005E31D4(?:?);
begin
 005E31D4    push        ebp
 005E31D5    mov         ebp,esp
 005E31D7    add         esp,0FFFFFFF8
 005E31DA    mov         byte ptr [ebp-5],dl
 005E31DD    mov         dword ptr [ebp-4],eax
 005E31E0    pop         ecx
 005E31E1    pop         ecx
 005E31E2    pop         ebp
 005E31E3    ret
end;*}

//005E31E4
procedure sub_005E31E4(?:TCustomRadioGroup);
begin
{*
 005E31E4    push        ebp
 005E31E5    mov         ebp,esp
 005E31E7    add         esp,0FFFFFF98
 005E31EA    push        esi
 005E31EB    mov         dword ptr [ebp-4],eax
 005E31EE    mov         eax,dword ptr [ebp-4]
 005E31F1    mov         eax,dword ptr [eax+210]
 005E31F7    cmp         dword ptr [eax+8],0
>005E31FB    je          005E33C3
 005E3201    mov         eax,dword ptr [ebp-4]
 005E3204    cmp         byte ptr [eax+220],0
>005E320B    jne         005E33C3
 005E3211    push        0
 005E3213    call        USER32.GetDC
 005E3218    mov         dword ptr [ebp-1C],eax
 005E321B    mov         eax,dword ptr [ebp-4]
 005E321E    mov         eax,dword ptr [eax+68]
 005E3221    call        TFont.GetHandle
 005E3226    push        eax
 005E3227    mov         eax,dword ptr [ebp-1C]
 005E322A    push        eax
 005E322B    call        GDI32.SelectObject
 005E3230    mov         dword ptr [ebp-20],eax
 005E3233    lea         eax,[ebp-68]
 005E3236    push        eax
 005E3237    mov         eax,dword ptr [ebp-1C]
 005E323A    push        eax
 005E323B    call        GDI32.GetTextMetricsA
 005E3240    mov         eax,dword ptr [ebp-20]
 005E3243    push        eax
 005E3244    mov         eax,dword ptr [ebp-1C]
 005E3247    push        eax
 005E3248    call        GDI32.SelectObject
 005E324D    mov         eax,dword ptr [ebp-1C]
 005E3250    push        eax
 005E3251    push        0
 005E3253    call        USER32.ReleaseDC
 005E3258    mov         eax,dword ptr [ebp-4]
 005E325B    mov         eax,dword ptr [eax+210]
 005E3261    mov         eax,dword ptr [eax+8]
 005E3264    mov         edx,dword ptr [ebp-4]
 005E3267    add         eax,dword ptr [edx+21C]
 005E326D    dec         eax
 005E326E    mov         edx,dword ptr [ebp-4]
 005E3271    mov         ecx,dword ptr [edx+21C]
 005E3277    cdq
 005E3278    idiv        eax,ecx
 005E327A    mov         dword ptr [ebp-8],eax
 005E327D    mov         eax,dword ptr [ebp-4]
 005E3280    mov         eax,dword ptr [eax+48]
 005E3283    sub         eax,0A
 005E3286    mov         edx,dword ptr [ebp-4]
 005E3289    mov         ecx,dword ptr [edx+21C]
 005E328F    cdq
 005E3290    idiv        eax,ecx
 005E3292    mov         dword ptr [ebp-0C],eax
 005E3295    mov         eax,dword ptr [ebp-4]
 005E3298    mov         eax,dword ptr [eax+4C]
 005E329B    sub         eax,dword ptr [ebp-68]
 005E329E    sub         eax,5
 005E32A1    mov         dword ptr [ebp-18],eax
 005E32A4    mov         eax,dword ptr [ebp-18]
 005E32A7    cdq
 005E32A8    idiv        eax,dword ptr [ebp-8]
 005E32AB    mov         dword ptr [ebp-10],eax
 005E32AE    mov         eax,dword ptr [ebp-18]
 005E32B1    cdq
 005E32B2    idiv        eax,dword ptr [ebp-8]
 005E32B5    sar         edx,1
>005E32B7    jns         005E32BC
 005E32B9    adc         edx,0
 005E32BC    mov         eax,dword ptr [ebp-68]
 005E32BF    inc         eax
 005E32C0    add         edx,eax
 005E32C2    mov         dword ptr [ebp-14],edx
 005E32C5    mov         eax,dword ptr [ebp-4]
 005E32C8    mov         eax,dword ptr [eax+210]
 005E32CE    mov         eax,dword ptr [eax+8]
 005E32D1    push        eax
 005E32D2    call        USER32.BeginDeferWindowPos
 005E32D7    mov         dword ptr [ebp-24],eax
 005E32DA    xor         eax,eax
 005E32DC    push        ebp
 005E32DD    push        5E33BC
 005E32E2    push        dword ptr fs:[eax]
 005E32E5    mov         dword ptr fs:[eax],esp
 005E32E8    mov         eax,dword ptr [ebp-4]
 005E32EB    mov         eax,dword ptr [eax+210]
 005E32F1    mov         eax,dword ptr [eax+8]
 005E32F4    dec         eax
 005E32F5    test        eax,eax
>005E32F7    jl          005E33A5
 005E32FD    inc         eax
 005E32FE    mov         dword ptr [ebp-2C],eax
 005E3301    mov         dword ptr [ebp-18],0
 005E3308    mov         eax,dword ptr [ebp-4]
 005E330B    mov         eax,dword ptr [eax+210]
 005E3311    mov         edx,dword ptr [ebp-18]
 005E3314    call        TList.Get
 005E3319    mov         dword ptr [ebp-30],eax
 005E331C    mov         eax,dword ptr [ebp-4]
 005E331F    mov         dl,byte ptr [eax+5F]
 005E3322    mov         eax,dword ptr [ebp-30]
 005E3325    mov         ecx,dword ptr [eax]
 005E3327    call        dword ptr [ecx+70]
 005E332A    mov         eax,dword ptr [ebp-18]
 005E332D    cdq
 005E332E    idiv        eax,dword ptr [ebp-8]
 005E3331    imul        dword ptr [ebp-0C]
 005E3334    add         eax,8
 005E3337    mov         dword ptr [ebp-28],eax
 005E333A    mov         eax,dword ptr [ebp-30]
 005E333D    mov         si,0FFC8
 005E3341    call        @CallDynaInst
 005E3346    test        al,al
>005E3348    je          005E335B
 005E334A    mov         eax,dword ptr [ebp-4]
 005E334D    call        TControl.GetClientWidth
 005E3352    sub         eax,dword ptr [ebp-28]
 005E3355    sub         eax,dword ptr [ebp-0C]
 005E3358    mov         dword ptr [ebp-28],eax
 005E335B    push        14
 005E335D    mov         eax,dword ptr [ebp-10]
 005E3360    push        eax
 005E3361    mov         eax,dword ptr [ebp-0C]
 005E3364    push        eax
 005E3365    mov         eax,dword ptr [ebp-18]
 005E3368    cdq
 005E3369    idiv        eax,dword ptr [ebp-8]
 005E336C    imul        edx,dword ptr [ebp-10]
 005E3370    add         edx,dword ptr [ebp-14]
 005E3373    push        edx
 005E3374    mov         eax,dword ptr [ebp-28]
 005E3377    push        eax
 005E3378    push        0
 005E337A    mov         eax,dword ptr [ebp-30]
 005E337D    call        TWinControl.GetHandle
 005E3382    push        eax
 005E3383    mov         eax,dword ptr [ebp-24]
 005E3386    push        eax
 005E3387    call        USER32.DeferWindowPos
 005E338C    mov         dword ptr [ebp-24],eax
 005E338F    mov         dl,1
 005E3391    mov         eax,dword ptr [ebp-30]
 005E3394    call        TCCalendar.SetVisible
 005E3399    inc         dword ptr [ebp-18]
 005E339C    dec         dword ptr [ebp-2C]
>005E339F    jne         005E3308
 005E33A5    xor         eax,eax
 005E33A7    pop         edx
 005E33A8    pop         ecx
 005E33A9    pop         ecx
 005E33AA    mov         dword ptr fs:[eax],edx
 005E33AD    push        5E33C3
 005E33B2    mov         eax,dword ptr [ebp-24]
 005E33B5    push        eax
 005E33B6    call        USER32.EndDeferWindowPos
 005E33BB    ret
>005E33BC    jmp         @HandleFinally
>005E33C1    jmp         005E33B2
 005E33C3    pop         esi
 005E33C4    mov         esp,ebp
 005E33C6    pop         ebp
 005E33C7    ret
*}
end;

//005E346C
procedure TCustomRadioGroup.Loaded;
begin
{*
 005E346C    push        ebp
 005E346D    mov         ebp,esp
 005E346F    push        ecx
 005E3470    mov         dword ptr [ebp-4],eax
 005E3473    mov         eax,dword ptr [ebp-4]
 005E3476    call        TControl.Loaded
 005E347B    mov         eax,dword ptr [ebp-4]
 005E347E    call        005E31E4
 005E3483    pop         ecx
 005E3484    pop         ebp
 005E3485    ret
*}
end;

//005E3488
{*procedure sub_005E3488(?:?);
begin
 005E3488    push        ebp
 005E3489    mov         ebp,esp
 005E348B    add         esp,0FFFFFFF8
 005E348E    mov         dword ptr [ebp-8],edx
 005E3491    mov         dword ptr [ebp-4],eax
 005E3494    mov         eax,dword ptr [ebp-4]
 005E3497    mov         byte ptr [eax+220],1;TCustomRadioGroup.FReading:Boolean
 005E349E    mov         edx,dword ptr [ebp-8]
 005E34A1    mov         eax,dword ptr [ebp-4]
 005E34A4    call        005F6EC4
 005E34A9    mov         eax,dword ptr [ebp-4]
 005E34AC    mov         byte ptr [eax+220],0;TCustomRadioGroup.FReading:Boolean
 005E34B3    mov         eax,dword ptr [ebp-4]
 005E34B6    call        005E3660
 005E34BB    pop         ecx
 005E34BC    pop         ecx
 005E34BD    pop         ebp
 005E34BE    ret
end;*}

//005E34C0
{*procedure sub_005E34C0(?:TCustomRadioGroup; ?:?);
begin
 005E34C0    push        ebp
 005E34C1    mov         ebp,esp
 005E34C3    add         esp,0FFFFFFF8
 005E34C6    mov         dword ptr [ebp-8],edx
 005E34C9    mov         dword ptr [ebp-4],eax
>005E34CC    jmp         005E34DD
 005E34CE    mov         ecx,dword ptr [ebp-4]
 005E34D1    mov         dl,1
 005E34D3    mov         eax,[005E2D44];TGroupButton
 005E34D8    call        TGroupButton.Create;TGroupButton.Create
 005E34DD    mov         eax,dword ptr [ebp-4]
 005E34E0    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E34E6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E34E9    cmp         eax,dword ptr [ebp-8]
>005E34EC    jl          005E34CE
>005E34EE    jmp         005E3503
 005E34F0    mov         eax,dword ptr [ebp-4]
 005E34F3    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E34F9    call        0064523C
 005E34FE    call        TObject.Free
 005E3503    mov         eax,dword ptr [ebp-4]
 005E3506    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E350C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E350F    cmp         eax,dword ptr [ebp-8]
>005E3512    jg          005E34F0
 005E3514    pop         ecx
 005E3515    pop         ecx
 005E3516    pop         ebp
 005E3517    ret
end;*}

//005E3518
procedure TRadioGroup.SetColumns(Value:Integer);
begin
{*
 005E3518    push        ebp
 005E3519    mov         ebp,esp
 005E351B    add         esp,0FFFFFFF8
 005E351E    mov         dword ptr [ebp-8],edx
 005E3521    mov         dword ptr [ebp-4],eax
 005E3524    cmp         dword ptr [ebp-8],1
>005E3528    jge         005E3531
 005E352A    mov         dword ptr [ebp-8],1
 005E3531    cmp         dword ptr [ebp-8],10
>005E3535    jle         005E353E
 005E3537    mov         dword ptr [ebp-8],10
 005E353E    mov         eax,dword ptr [ebp-4]
 005E3541    mov         eax,dword ptr [eax+21C];TRadioGroup.FColumns:Integer
 005E3547    cmp         eax,dword ptr [ebp-8]
>005E354A    je          005E3568
 005E354C    mov         eax,dword ptr [ebp-8]
 005E354F    mov         edx,dword ptr [ebp-4]
 005E3552    mov         dword ptr [edx+21C],eax;TRadioGroup.FColumns:Integer
 005E3558    mov         eax,dword ptr [ebp-4]
 005E355B    call        005E31E4
 005E3560    mov         eax,dword ptr [ebp-4]
 005E3563    mov         edx,dword ptr [eax]
 005E3565    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E3568    pop         ecx
 005E3569    pop         ecx
 005E356A    pop         ebp
 005E356B    ret
*}
end;

//005E356C
procedure TRadioGroup.SetItemIndex(Value:Integer);
begin
{*
 005E356C    push        ebp
 005E356D    mov         ebp,esp
 005E356F    add         esp,0FFFFFFF8
 005E3572    mov         dword ptr [ebp-8],edx
 005E3575    mov         dword ptr [ebp-4],eax
 005E3578    mov         eax,dword ptr [ebp-4]
 005E357B    cmp         byte ptr [eax+220],0;TRadioGroup.FReading:Boolean
>005E3582    je          005E3595
 005E3584    mov         eax,dword ptr [ebp-8]
 005E3587    mov         edx,dword ptr [ebp-4]
 005E358A    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
>005E3590    jmp         005E3637
 005E3595    cmp         dword ptr [ebp-8],0FFFFFFFF
>005E3599    jge         005E35A2
 005E359B    mov         dword ptr [ebp-8],0FFFFFFFF
 005E35A2    mov         eax,dword ptr [ebp-4]
 005E35A5    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 005E35AB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E35AE    cmp         eax,dword ptr [ebp-8]
>005E35B1    jg          005E35C3
 005E35B3    mov         eax,dword ptr [ebp-4]
 005E35B6    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 005E35BC    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E35BF    dec         eax
 005E35C0    mov         dword ptr [ebp-8],eax
 005E35C3    mov         eax,dword ptr [ebp-4]
 005E35C6    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 005E35CC    cmp         eax,dword ptr [ebp-8]
>005E35CF    je          005E3637
 005E35D1    mov         eax,dword ptr [ebp-4]
 005E35D4    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>005E35DB    jl          005E35FE
 005E35DD    mov         eax,dword ptr [ebp-4]
 005E35E0    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 005E35E6    mov         eax,dword ptr [ebp-4]
 005E35E9    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 005E35EF    call        TList.Get
 005E35F4    xor         edx,edx
 005E35F6    mov         ecx,dword ptr [eax]
 005E35F8    call        dword ptr [ecx+0C8]
 005E35FE    mov         eax,dword ptr [ebp-8]
 005E3601    mov         edx,dword ptr [ebp-4]
 005E3604    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
 005E360A    mov         eax,dword ptr [ebp-4]
 005E360D    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>005E3614    jl          005E3637
 005E3616    mov         eax,dword ptr [ebp-4]
 005E3619    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 005E361F    mov         eax,dword ptr [ebp-4]
 005E3622    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 005E3628    call        TList.Get
 005E362D    mov         dl,1
 005E362F    mov         ecx,dword ptr [eax]
 005E3631    call        dword ptr [ecx+0C8]
 005E3637    pop         ecx
 005E3638    pop         ecx
 005E3639    pop         ebp
 005E363A    ret
*}
end;

//005E363C
procedure TRadioGroup.SetItems(Value:TStrings);
begin
{*
 005E363C    push        ebp
 005E363D    mov         ebp,esp
 005E363F    add         esp,0FFFFFFF8
 005E3642    mov         dword ptr [ebp-8],edx
 005E3645    mov         dword ptr [ebp-4],eax
 005E3648    mov         edx,dword ptr [ebp-8]
 005E364B    mov         eax,dword ptr [ebp-4]
 005E364E    mov         eax,dword ptr [eax+214];TRadioGroup.FItems:TStrings
 005E3654    mov         ecx,dword ptr [eax]
 005E3656    call        dword ptr [ecx+8];TStrings.Assign
 005E3659    pop         ecx
 005E365A    pop         ecx
 005E365B    pop         ebp
 005E365C    ret
*}
end;

//005E3660
procedure sub_005E3660(?:TCustomRadioGroup);
begin
{*
 005E3660    push        ebp
 005E3661    mov         ebp,esp
 005E3663    add         esp,0FFFFFFF0
 005E3666    push        ebx
 005E3667    xor         edx,edx
 005E3669    mov         dword ptr [ebp-10],edx
 005E366C    mov         dword ptr [ebp-4],eax
 005E366F    xor         eax,eax
 005E3671    push        ebp
 005E3672    push        5E374F
 005E3677    push        dword ptr fs:[eax]
 005E367A    mov         dword ptr fs:[eax],esp
 005E367D    mov         eax,dword ptr [ebp-4]
 005E3680    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 005E3686    mov         edx,dword ptr [eax]
 005E3688    call        dword ptr [edx+14];@AbstractError
 005E368B    mov         edx,eax
 005E368D    mov         eax,dword ptr [ebp-4]
 005E3690    call        005E34C0
 005E3695    mov         eax,dword ptr [ebp-4]
 005E3698    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E369E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E36A1    dec         eax
 005E36A2    test        eax,eax
>005E36A4    jl          005E36E8
 005E36A6    inc         eax
 005E36A7    mov         dword ptr [ebp-0C],eax
 005E36AA    mov         dword ptr [ebp-8],0
 005E36B1    lea         ecx,[ebp-10]
 005E36B4    mov         edx,dword ptr [ebp-8]
 005E36B7    mov         eax,dword ptr [ebp-4]
 005E36BA    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 005E36C0    mov         ebx,dword ptr [eax]
 005E36C2    call        dword ptr [ebx+0C];@AbstractError
 005E36C5    mov         eax,dword ptr [ebp-10]
 005E36C8    push        eax
 005E36C9    mov         edx,dword ptr [ebp-8]
 005E36CC    mov         eax,dword ptr [ebp-4]
 005E36CF    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E36D5    call        TList.Get
 005E36DA    pop         edx
 005E36DB    call        TTabPage.SetCaption
 005E36E0    inc         dword ptr [ebp-8]
 005E36E3    dec         dword ptr [ebp-0C]
>005E36E6    jne         005E36B1
 005E36E8    mov         eax,dword ptr [ebp-4]
 005E36EB    cmp         dword ptr [eax+218],0;TCustomRadioGroup.FItemIndex:Integer
>005E36F2    jl          005E3729
 005E36F4    mov         eax,dword ptr [ebp-4]
 005E36F7    mov         byte ptr [eax+221],1;TCustomRadioGroup.FUpdating:Boolean
 005E36FE    mov         eax,dword ptr [ebp-4]
 005E3701    mov         edx,dword ptr [eax+218];TCustomRadioGroup.FItemIndex:Integer
 005E3707    mov         eax,dword ptr [ebp-4]
 005E370A    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E3710    call        TList.Get
 005E3715    mov         dl,1
 005E3717    mov         ecx,dword ptr [eax]
 005E3719    call        dword ptr [ecx+0C8]
 005E371F    mov         eax,dword ptr [ebp-4]
 005E3722    mov         byte ptr [eax+221],0;TCustomRadioGroup.FUpdating:Boolean
 005E3729    mov         eax,dword ptr [ebp-4]
 005E372C    call        005E31E4
 005E3731    mov         eax,dword ptr [ebp-4]
 005E3734    mov         edx,dword ptr [eax]
 005E3736    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E3739    xor         eax,eax
 005E373B    pop         edx
 005E373C    pop         ecx
 005E373D    pop         ecx
 005E373E    mov         dword ptr fs:[eax],edx
 005E3741    push        5E3756
 005E3746    lea         eax,[ebp-10]
 005E3749    call        @LStrClr
 005E374E    ret
>005E374F    jmp         @HandleFinally
>005E3754    jmp         005E3746
 005E3756    pop         ebx
 005E3757    mov         esp,ebp
 005E3759    pop         ebp
 005E375A    ret
*}
end;

//005E375C
{*procedure TCustomRadioGroup.CMEnabledChanged(?:?);
begin
 005E375C    push        ebp
 005E375D    mov         ebp,esp
 005E375F    add         esp,0FFFFFFF0
 005E3762    mov         dword ptr [ebp-8],edx
 005E3765    mov         dword ptr [ebp-4],eax
 005E3768    mov         edx,dword ptr [ebp-8]
 005E376B    mov         eax,dword ptr [ebp-4]
 005E376E    call        TWinControl.CMEnabledChanged
 005E3773    mov         eax,dword ptr [ebp-4]
 005E3776    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E377C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E377F    dec         eax
 005E3780    test        eax,eax
>005E3782    jl          005E37B7
 005E3784    inc         eax
 005E3785    mov         dword ptr [ebp-10],eax
 005E3788    mov         dword ptr [ebp-0C],0
 005E378F    mov         eax,dword ptr [ebp-4]
 005E3792    mov         edx,dword ptr [eax]
 005E3794    call        dword ptr [edx+50];TCCalendar.GetEnabled
 005E3797    push        eax
 005E3798    mov         edx,dword ptr [ebp-0C]
 005E379B    mov         eax,dword ptr [ebp-4]
 005E379E    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 005E37A4    call        TList.Get
 005E37A9    pop         edx
 005E37AA    mov         ecx,dword ptr [eax]
 005E37AC    call        dword ptr [ecx+64]
 005E37AF    inc         dword ptr [ebp-0C]
 005E37B2    dec         dword ptr [ebp-10]
>005E37B5    jne         005E378F
 005E37B7    mov         esp,ebp
 005E37B9    pop         ebp
 005E37BA    ret
end;*}

//005E37BC
{*procedure TCustomRadioGroup.CMFontChanged(?:?);
begin
 005E37BC    push        ebp
 005E37BD    mov         ebp,esp
 005E37BF    add         esp,0FFFFFFF8
 005E37C2    mov         dword ptr [ebp-8],edx
 005E37C5    mov         dword ptr [ebp-4],eax
 005E37C8    mov         edx,dword ptr [ebp-8]
 005E37CB    mov         eax,dword ptr [ebp-4]
 005E37CE    call        TWinControl.CMFontChanged
 005E37D3    mov         eax,dword ptr [ebp-4]
 005E37D6    call        005E31E4
 005E37DB    pop         ecx
 005E37DC    pop         ecx
 005E37DD    pop         ebp
 005E37DE    ret
end;*}

//005E37E0
{*procedure TCustomRadioGroup.WMSize(?:?);
begin
 005E37E0    push        ebp
 005E37E1    mov         ebp,esp
 005E37E3    add         esp,0FFFFFFF8
 005E37E6    mov         dword ptr [ebp-8],edx
 005E37E9    mov         dword ptr [ebp-4],eax
 005E37EC    mov         edx,dword ptr [ebp-8]
 005E37EF    mov         eax,dword ptr [ebp-4]
 005E37F2    call        TCustomGroupBox.WMSize
 005E37F7    mov         eax,dword ptr [ebp-4]
 005E37FA    call        005E31E4
 005E37FF    pop         ecx
 005E3800    pop         ecx
 005E3801    pop         ebp
 005E3802    ret
end;*}

//005E3804
{*function sub_005E3804:?;
begin
 005E3804    push        ebp
 005E3805    mov         ebp,esp
 005E3807    add         esp,0FFFFFFF8
 005E380A    mov         dword ptr [ebp-4],eax
 005E380D    mov         byte ptr [ebp-5],1
 005E3811    mov         al,byte ptr [ebp-5]
 005E3814    pop         ecx
 005E3815    pop         ecx
 005E3816    pop         ebp
 005E3817    ret
end;*}

//005E3818
procedure TCustomRadioGroup.GetChildren(Proc:TGetChildProc; Root:TComponent);
begin
{*
 005E3818    push        ebp
 005E3819    mov         ebp,esp
 005E381B    add         esp,0FFFFFFF8
 005E381E    mov         dword ptr [ebp-8],edx
 005E3821    mov         dword ptr [ebp-4],eax
 005E3824    pop         ecx
 005E3825    pop         ecx
 005E3826    pop         ebp
 005E3827    ret         8
*}
end;

//005E382C
constructor TSplitter.Create(AOwner:TComponent);
begin
{*
 005E382C    push        ebp
 005E382D    mov         ebp,esp
 005E382F    add         esp,0FFFFFFF4
 005E3832    test        dl,dl
>005E3834    je          005E383E
 005E3836    add         esp,0FFFFFFF0
 005E3839    call        @ClassCreate
 005E383E    mov         dword ptr [ebp-0C],ecx
 005E3841    mov         byte ptr [ebp-5],dl
 005E3844    mov         dword ptr [ebp-4],eax
 005E3847    mov         ecx,dword ptr [ebp-0C]
 005E384A    xor         edx,edx
 005E384C    mov         eax,dword ptr [ebp-4]
 005E384F    call        TGraphicControl.Create
 005E3854    mov         eax,dword ptr [ebp-4]
 005E3857    mov         byte ptr [eax+16C],1;TSplitter.AutoSnap:Boolean
 005E385E    mov         dl,3
 005E3860    mov         eax,dword ptr [ebp-4]
 005E3863    call        TCCalendar.SetAlign
 005E3868    mov         edx,3
 005E386D    mov         eax,dword ptr [ebp-4]
 005E3870    call        TControl.SetWidth
 005E3875    mov         dx,0FFF2
 005E3879    mov         eax,dword ptr [ebp-4]
 005E387C    call        TControl.SetCursor
 005E3881    mov         eax,dword ptr [ebp-4]
 005E3884    mov         dword ptr [eax+188],1E;TSplitter.MinSize:NaturalNumber
 005E388E    mov         eax,dword ptr [ebp-4]
 005E3891    mov         byte ptr [eax+1A8],3;TSplitter.ResizeStyle:TResizeStyle
 005E3898    mov         eax,dword ptr [ebp-4]
 005E389B    mov         dword ptr [eax+1A0],0FFFFFFFF;TSplitter.FOldSize:Integer
 005E38A5    mov         eax,dword ptr [ebp-4]
 005E38A8    cmp         byte ptr [ebp-5],0
>005E38AC    je          005E38BD
 005E38AE    call        @AfterConstruction
 005E38B3    pop         dword ptr fs:[0]
 005E38BA    add         esp,0C
 005E38BD    mov         eax,dword ptr [ebp-4]
 005E38C0    mov         esp,ebp
 005E38C2    pop         ebp
 005E38C3    ret
*}
end;

//005E38C4
destructor TSplitter.Destroy;
begin
{*
 005E38C4    push        ebp
 005E38C5    mov         ebp,esp
 005E38C7    add         esp,0FFFFFFF8
 005E38CA    call        @BeforeDestruction
 005E38CF    mov         byte ptr [ebp-5],dl
 005E38D2    mov         dword ptr [ebp-4],eax
 005E38D5    mov         eax,dword ptr [ebp-4]
 005E38D8    mov         eax,dword ptr [eax+170];TSplitter.FBrush:TBrush
 005E38DE    call        TObject.Free
 005E38E3    mov         dl,byte ptr [ebp-5]
 005E38E6    and         dl,0FC
 005E38E9    mov         eax,dword ptr [ebp-4]
 005E38EC    call        TGraphicControl.Destroy
 005E38F1    cmp         byte ptr [ebp-5],0
>005E38F5    jle         005E38FF
 005E38F7    mov         eax,dword ptr [ebp-4]
 005E38FA    call        @ClassDestroy
 005E38FF    pop         ecx
 005E3900    pop         ecx
 005E3901    pop         ebp
 005E3902    ret
*}
end;

//005E3904
procedure sub_005E3904(?:TSplitter);
begin
{*
 005E3904    push        ebp
 005E3905    mov         ebp,esp
 005E3907    push        ecx
 005E3908    mov         dword ptr [ebp-4],eax
 005E390B    push        412
 005E3910    push        0
 005E3912    mov         eax,dword ptr [ebp-4]
 005E3915    mov         eax,dword ptr [eax+30]
 005E3918    call        TWinControl.GetHandle
 005E391D    push        eax
 005E391E    call        USER32.GetDCEx
 005E3923    mov         edx,dword ptr [ebp-4]
 005E3926    mov         dword ptr [edx+180],eax
 005E392C    mov         eax,dword ptr [ebp-4]
 005E392F    cmp         byte ptr [eax+1A8],3
>005E3936    jne         005E399C
 005E3938    mov         eax,dword ptr [ebp-4]
 005E393B    cmp         dword ptr [eax+170],0
>005E3942    jne         005E3975
 005E3944    mov         dl,1
 005E3946    mov         eax,[005BE714];TBrush
 005E394B    call        TBrush.Create;TBrush.Create
 005E3950    mov         edx,dword ptr [ebp-4]
 005E3953    mov         dword ptr [edx+170],eax
 005E3959    mov         edx,0FFFFFF
 005E395E    xor         eax,eax
 005E3960    call        005C98A0
 005E3965    mov         edx,eax
 005E3967    mov         eax,dword ptr [ebp-4]
 005E396A    mov         eax,dword ptr [eax+170]
 005E3970    call        TBrush.SetBitmap
 005E3975    mov         eax,dword ptr [ebp-4]
 005E3978    mov         eax,dword ptr [eax+170]
 005E397E    call        TBrush.GetHandle
 005E3983    push        eax
 005E3984    mov         eax,dword ptr [ebp-4]
 005E3987    mov         eax,dword ptr [eax+180]
 005E398D    push        eax
 005E398E    call        GDI32.SelectObject
 005E3993    mov         edx,dword ptr [ebp-4]
 005E3996    mov         dword ptr [edx+1A4],eax
 005E399C    pop         ecx
 005E399D    pop         ebp
 005E399E    ret
*}
end;

//005E39A0
procedure sub_005E39A0(?:TSplitter);
begin
{*
 005E39A0    push        ebp
 005E39A1    mov         ebp,esp
 005E39A3    add         esp,0FFFFFFF4
 005E39A6    mov         dword ptr [ebp-4],eax
 005E39A9    mov         eax,dword ptr [ebp-4]
 005E39AC    mov         al,byte ptr [eax+184]
 005E39B2    xor         al,1
 005E39B4    mov         edx,dword ptr [ebp-4]
 005E39B7    mov         byte ptr [edx+184],al
 005E39BD    lea         ecx,[ebp-0C]
 005E39C0    mov         eax,dword ptr [ebp-4]
 005E39C3    mov         edx,dword ptr [eax+44]
 005E39C6    mov         eax,dword ptr [ebp-4]
 005E39C9    mov         eax,dword ptr [eax+40]
 005E39CC    call        Point
 005E39D1    mov         eax,dword ptr [ebp-4]
 005E39D4    mov         al,byte ptr [eax+5B]
 005E39D7    add         al,0FD
 005E39D9    sub         al,2
>005E39DB    jae         005E39F1
 005E39DD    mov         eax,dword ptr [ebp-4]
 005E39E0    mov         eax,dword ptr [eax+40]
 005E39E3    mov         edx,dword ptr [ebp-4]
 005E39E6    add         eax,dword ptr [edx+1AC]
 005E39EC    mov         dword ptr [ebp-0C],eax
>005E39EF    jmp         005E3A03
 005E39F1    mov         eax,dword ptr [ebp-4]
 005E39F4    mov         eax,dword ptr [eax+44]
 005E39F7    mov         edx,dword ptr [ebp-4]
 005E39FA    add         eax,dword ptr [edx+1AC]
 005E3A00    mov         dword ptr [ebp-8],eax
 005E3A03    push        5A0049
 005E3A08    mov         eax,dword ptr [ebp-4]
 005E3A0B    mov         eax,dword ptr [eax+4C]
 005E3A0E    push        eax
 005E3A0F    mov         eax,dword ptr [ebp-4]
 005E3A12    mov         eax,dword ptr [eax+48]
 005E3A15    push        eax
 005E3A16    mov         eax,dword ptr [ebp-8]
 005E3A19    push        eax
 005E3A1A    mov         eax,dword ptr [ebp-0C]
 005E3A1D    push        eax
 005E3A1E    mov         eax,dword ptr [ebp-4]
 005E3A21    mov         eax,dword ptr [eax+180]
 005E3A27    push        eax
 005E3A28    call        GDI32.PatBlt
 005E3A2D    mov         esp,ebp
 005E3A2F    pop         ebp
 005E3A30    ret
*}
end;

//005E3A34
procedure sub_005E3A34(?:TSplitter);
begin
{*
 005E3A34    push        ebp
 005E3A35    mov         ebp,esp
 005E3A37    push        ecx
 005E3A38    mov         dword ptr [ebp-4],eax
 005E3A3B    mov         eax,dword ptr [ebp-4]
 005E3A3E    cmp         dword ptr [eax+1A4],0
>005E3A45    je          005E3A60
 005E3A47    mov         eax,dword ptr [ebp-4]
 005E3A4A    mov         eax,dword ptr [eax+1A4]
 005E3A50    push        eax
 005E3A51    mov         eax,dword ptr [ebp-4]
 005E3A54    mov         eax,dword ptr [eax+180]
 005E3A5A    push        eax
 005E3A5B    call        GDI32.SelectObject
 005E3A60    mov         eax,dword ptr [ebp-4]
 005E3A63    mov         eax,dword ptr [eax+180]
 005E3A69    push        eax
 005E3A6A    mov         eax,dword ptr [ebp-4]
 005E3A6D    mov         eax,dword ptr [eax+30]
 005E3A70    call        TWinControl.GetHandle
 005E3A75    push        eax
 005E3A76    call        USER32.ReleaseDC
 005E3A7B    mov         eax,dword ptr [ebp-4]
 005E3A7E    cmp         dword ptr [eax+170],0
>005E3A85    je          005E3AA0
 005E3A87    mov         eax,dword ptr [ebp-4]
 005E3A8A    mov         eax,dword ptr [eax+170]
 005E3A90    call        TObject.Free
 005E3A95    mov         eax,dword ptr [ebp-4]
 005E3A98    xor         edx,edx
 005E3A9A    mov         dword ptr [eax+170],edx
 005E3AA0    pop         ecx
 005E3AA1    pop         ebp
 005E3AA2    ret
*}
end;

//005E3AA4
{*function sub_005E3AA4(?:TSplitter):?;
begin
 005E3AA4    push        ebp
 005E3AA5    mov         ebp,esp
 005E3AA7    add         esp,0FFFFFFD8
 005E3AAA    mov         dword ptr [ebp-4],eax
 005E3AAD    xor         eax,eax
 005E3AAF    mov         dword ptr [ebp-8],eax
 005E3AB2    lea         ecx,[ebp-10]
 005E3AB5    mov         eax,dword ptr [ebp-4]
 005E3AB8    mov         edx,dword ptr [eax+44]
 005E3ABB    mov         eax,dword ptr [ebp-4]
 005E3ABE    mov         eax,dword ptr [eax+40]
 005E3AC1    call        Point
 005E3AC6    mov         eax,dword ptr [ebp-4]
 005E3AC9    mov         al,byte ptr [eax+5B]
 005E3ACC    dec         al
>005E3ACE    je          005E3AF1
 005E3AD0    dec         al
>005E3AD2    je          005E3AF6
 005E3AD4    dec         al
>005E3AD6    je          005E3AE1
 005E3AD8    dec         al
>005E3ADA    je          005E3AE6
>005E3ADC    jmp         005E3BAF
 005E3AE1    dec         dword ptr [ebp-10]
>005E3AE4    jmp         005E3AFF
 005E3AE6    mov         eax,dword ptr [ebp-4]
 005E3AE9    mov         eax,dword ptr [eax+48]
 005E3AEC    add         dword ptr [ebp-10],eax
>005E3AEF    jmp         005E3AFF
 005E3AF1    dec         dword ptr [ebp-0C]
>005E3AF4    jmp         005E3AFF
 005E3AF6    mov         eax,dword ptr [ebp-4]
 005E3AF9    mov         eax,dword ptr [eax+4C]
 005E3AFC    add         dword ptr [ebp-0C],eax
 005E3AFF    mov         eax,dword ptr [ebp-4]
 005E3B02    mov         eax,dword ptr [eax+30]
 005E3B05    call        005F7DC4
 005E3B0A    dec         eax
 005E3B0B    test        eax,eax
>005E3B0D    jl          005E3BAA
 005E3B13    inc         eax
 005E3B14    mov         dword ptr [ebp-18],eax
 005E3B17    mov         dword ptr [ebp-14],0
 005E3B1E    mov         edx,dword ptr [ebp-14]
 005E3B21    mov         eax,dword ptr [ebp-4]
 005E3B24    mov         eax,dword ptr [eax+30]
 005E3B27    call        005F7D58
 005E3B2C    mov         dword ptr [ebp-8],eax
 005E3B2F    mov         eax,dword ptr [ebp-8]
 005E3B32    cmp         byte ptr [eax+57],0
>005E3B36    je          005E3B9E
 005E3B38    mov         eax,dword ptr [ebp-8]
 005E3B3B    mov         edx,dword ptr [eax]
 005E3B3D    call        dword ptr [edx+50]
 005E3B40    test        al,al
>005E3B42    je          005E3B9E
 005E3B44    lea         edx,[ebp-28]
 005E3B47    mov         eax,dword ptr [ebp-8]
 005E3B4A    call        005F2E0C
 005E3B4F    mov         eax,dword ptr [ebp-20]
 005E3B52    sub         eax,dword ptr [ebp-28]
>005E3B55    jne         005E3B6D
 005E3B57    mov         eax,dword ptr [ebp-4]
 005E3B5A    mov         al,byte ptr [eax+5B]
 005E3B5D    sub         al,1
>005E3B5F    je          005E3B65
 005E3B61    sub         al,2
>005E3B63    jne         005E3B6A
 005E3B65    dec         dword ptr [ebp-28]
>005E3B68    jmp         005E3B6D
 005E3B6A    inc         dword ptr [ebp-20]
 005E3B6D    mov         eax,dword ptr [ebp-1C]
 005E3B70    sub         eax,dword ptr [ebp-24]
>005E3B73    jne         005E3B8B
 005E3B75    mov         eax,dword ptr [ebp-4]
 005E3B78    mov         al,byte ptr [eax+5B]
 005E3B7B    sub         al,1
>005E3B7D    je          005E3B83
 005E3B7F    sub         al,2
>005E3B81    jne         005E3B88
 005E3B83    dec         dword ptr [ebp-24]
>005E3B86    jmp         005E3B8B
 005E3B88    inc         dword ptr [ebp-1C]
 005E3B8B    push        dword ptr [ebp-0C]
 005E3B8E    push        dword ptr [ebp-10]
 005E3B91    lea         eax,[ebp-28]
 005E3B94    push        eax
 005E3B95    call        USER32.PtInRect
 005E3B9A    test        eax,eax
>005E3B9C    jne         005E3BAF
 005E3B9E    inc         dword ptr [ebp-14]
 005E3BA1    dec         dword ptr [ebp-18]
>005E3BA4    jne         005E3B1E
 005E3BAA    xor         eax,eax
 005E3BAC    mov         dword ptr [ebp-8],eax
 005E3BAF    mov         eax,dword ptr [ebp-8]
 005E3BB2    mov         esp,ebp
 005E3BB4    pop         ebp
 005E3BB5    ret
end;*}

//005E3BB8
procedure TSplitter.sub_005E3BB8;
begin
{*
 005E3BB8    push        ebp
 005E3BB9    mov         ebp,esp
 005E3BBB    push        ecx
 005E3BBC    mov         dword ptr [ebp-4],eax
 005E3BBF    mov         eax,dword ptr [ebp-4]
 005E3BC2    call        TControl.sub_005F2638
 005E3BC7    mov         eax,dword ptr [ebp-4]
 005E3BCA    cmp         word ptr [eax+78],0FFFFFFF1;TSplitter.Cursor:TCursor
>005E3BCF    je          005E3BDB
 005E3BD1    mov         eax,dword ptr [ebp-4]
 005E3BD4    cmp         word ptr [eax+78],0FFFFFFF2;TSplitter.Cursor:TCursor
>005E3BD9    jne         005E3C00
 005E3BDB    mov         eax,dword ptr [ebp-4]
 005E3BDE    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 005E3BE1    dec         eax
 005E3BE2    sub         al,2
>005E3BE4    jae         005E3BF4
 005E3BE6    mov         dx,0FFF1
 005E3BEA    mov         eax,dword ptr [ebp-4]
 005E3BED    call        TControl.SetCursor
>005E3BF2    jmp         005E3C00
 005E3BF4    mov         dx,0FFF2
 005E3BF8    mov         eax,dword ptr [ebp-4]
 005E3BFB    call        TControl.SetCursor
 005E3C00    pop         ecx
 005E3C01    pop         ebp
 005E3C02    ret
*}
end;

//005E3C04
procedure sub_005E3C04;
begin
{*
 005E3C04    push        ebp
 005E3C05    mov         ebp,esp
 005E3C07    add         esp,0FFFFFFD4
 005E3C0A    push        ebx
 005E3C0B    mov         dword ptr [ebp-4],eax
 005E3C0E    lea         edx,[ebp-1C]
 005E3C11    mov         eax,dword ptr [ebp-4]
 005E3C14    mov         ecx,dword ptr [eax]
 005E3C16    call        dword ptr [ecx+44];TSplitter.sub_005F2E9C
 005E3C19    mov         eax,dword ptr [ebp-4]
 005E3C1C    mov         eax,dword ptr [eax+160];TSplitter......................................................F...
 005E3C22    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E3C25    mov         edx,dword ptr [ebp-4]
 005E3C28    mov         edx,dword ptr [edx+70];TSplitter.FColor:TColor
 005E3C2B    call        TBrush.SetColor
 005E3C30    lea         edx,[ebp-2C]
 005E3C33    mov         eax,dword ptr [ebp-4]
 005E3C36    mov         ecx,dword ptr [eax]
 005E3C38    call        dword ptr [ecx+44];TSplitter.sub_005F2E9C
 005E3C3B    lea         edx,[ebp-2C]
 005E3C3E    mov         eax,dword ptr [ebp-4]
 005E3C41    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 005E3C47    call        TCanvas.FillRect
 005E3C4C    mov         eax,dword ptr [ebp-4]
 005E3C4F    cmp         byte ptr [eax+16D],0;TSplitter.Beveled:Boolean
>005E3C56    je          005E3D0E
 005E3C5C    mov         eax,dword ptr [ebp-4]
 005E3C5F    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 005E3C62    add         al,0FD
 005E3C64    sub         al,2
>005E3C66    jae         005E3C77
 005E3C68    push        2
 005E3C6A    push        0FF
 005E3C6C    lea         eax,[ebp-1C]
 005E3C6F    push        eax
 005E3C70    call        USER32.InflateRect
>005E3C75    jmp         005E3C84
 005E3C77    push        0FF
 005E3C79    push        2
 005E3C7B    lea         eax,[ebp-1C]
 005E3C7E    push        eax
 005E3C7F    call        USER32.InflateRect
 005E3C84    push        1
 005E3C86    push        1
 005E3C88    lea         eax,[ebp-1C]
 005E3C8B    push        eax
 005E3C8C    call        USER32.OffsetRect
 005E3C91    mov         eax,80000014
 005E3C96    call        ColorToRGB
 005E3C9B    push        eax
 005E3C9C    call        GDI32.CreateSolidBrush
 005E3CA1    mov         dword ptr [ebp-8],eax
 005E3CA4    mov         eax,dword ptr [ebp-8]
 005E3CA7    push        eax
 005E3CA8    lea         eax,[ebp-1C]
 005E3CAB    push        eax
 005E3CAC    mov         eax,dword ptr [ebp-4]
 005E3CAF    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 005E3CB5    call        TCanvas.GetHandle
 005E3CBA    push        eax
 005E3CBB    call        USER32.FrameRect
 005E3CC0    mov         eax,dword ptr [ebp-8]
 005E3CC3    push        eax
 005E3CC4    call        GDI32.DeleteObject
 005E3CC9    push        0FE
 005E3CCB    push        0FE
 005E3CCD    lea         eax,[ebp-1C]
 005E3CD0    push        eax
 005E3CD1    call        USER32.OffsetRect
 005E3CD6    mov         eax,80000010
 005E3CDB    call        ColorToRGB
 005E3CE0    push        eax
 005E3CE1    call        GDI32.CreateSolidBrush
 005E3CE6    mov         dword ptr [ebp-8],eax
 005E3CE9    mov         eax,dword ptr [ebp-8]
 005E3CEC    push        eax
 005E3CED    lea         eax,[ebp-1C]
 005E3CF0    push        eax
 005E3CF1    mov         eax,dword ptr [ebp-4]
 005E3CF4    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 005E3CFA    call        TCanvas.GetHandle
 005E3CFF    push        eax
 005E3D00    call        USER32.FrameRect
 005E3D05    mov         eax,dword ptr [ebp-8]
 005E3D08    push        eax
 005E3D09    call        GDI32.DeleteObject
 005E3D0E    mov         eax,dword ptr [ebp-4]
 005E3D11    test        byte ptr [eax+1C],10;TSplitter.FComponentState:TComponentState
>005E3D15    je          005E3D78
 005E3D17    mov         eax,dword ptr [ebp-4]
 005E3D1A    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 005E3D20    mov         dword ptr [ebp-0C],eax
 005E3D23    mov         eax,dword ptr [ebp-0C]
 005E3D26    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E3D29    mov         dl,2
 005E3D2B    call        TPen.SetStyle
 005E3D30    mov         eax,dword ptr [ebp-0C]
 005E3D33    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E3D36    mov         dl,0E
 005E3D38    call        TPen.SetMode
 005E3D3D    mov         eax,dword ptr [ebp-0C]
 005E3D40    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005E3D43    mov         edx,0FFD8CE
 005E3D48    call        TPen.SetColor
 005E3D4D    mov         eax,dword ptr [ebp-0C]
 005E3D50    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E3D53    mov         dl,1
 005E3D55    call        TBrush.SetStyle
 005E3D5A    mov         eax,dword ptr [ebp-4]
 005E3D5D    call        TControl.GetClientWidth
 005E3D62    push        eax
 005E3D63    mov         eax,dword ptr [ebp-4]
 005E3D66    call        TControl.GetClientHeight
 005E3D6B    push        eax
 005E3D6C    xor         ecx,ecx
 005E3D6E    xor         edx,edx
 005E3D70    mov         eax,dword ptr [ebp-0C]
 005E3D73    call        005C1428
 005E3D78    mov         eax,dword ptr [ebp-4]
 005E3D7B    cmp         word ptr [eax+1C2],0;TSplitter.?f1C2:word
>005E3D83    je          005E3D97
 005E3D85    mov         ebx,dword ptr [ebp-4]
 005E3D88    mov         edx,dword ptr [ebp-4]
 005E3D8B    mov         eax,dword ptr [ebx+1C4];TSplitter.?f1C4:dword
 005E3D91    call        dword ptr [ebx+1C0];TSplitter.OnPaint
 005E3D97    pop         ebx
 005E3D98    mov         esp,ebp
 005E3D9A    pop         ebp
 005E3D9B    ret
*}
end;

//005E3D9C
{*function sub_005E3D9C(?:?):?;
begin
 005E3D9C    push        ebp
 005E3D9D    mov         ebp,esp
 005E3D9F    add         esp,0FFFFFFF4
 005E3DA2    mov         dword ptr [ebp-8],edx
 005E3DA5    mov         dword ptr [ebp-4],eax
 005E3DA8    mov         edx,dword ptr [ebp-8]
 005E3DAB    mov         eax,dword ptr [ebp-4]
 005E3DAE    mov         ecx,dword ptr [eax]
 005E3DB0    call        dword ptr [ecx+90];TSplitter.sub_005E3DEC
 005E3DB6    mov         byte ptr [ebp-9],al
 005E3DB9    cmp         byte ptr [ebp-9],0
>005E3DBD    je          005E3DE2
 005E3DBF    mov         eax,dword ptr [ebp-8]
 005E3DC2    mov         eax,dword ptr [eax]
 005E3DC4    mov         edx,dword ptr [ebp-4]
 005E3DC7    cmp         eax,dword ptr [edx+188];TSplitter.MinSize:NaturalNumber
>005E3DCD    jg          005E3DE2
 005E3DCF    mov         eax,dword ptr [ebp-4]
 005E3DD2    cmp         byte ptr [eax+16C],0;TSplitter.AutoSnap:Boolean
>005E3DD9    je          005E3DE2
 005E3DDB    mov         eax,dword ptr [ebp-8]
 005E3DDE    xor         edx,edx
 005E3DE0    mov         dword ptr [eax],edx
 005E3DE2    mov         al,byte ptr [ebp-9]
 005E3DE5    mov         esp,ebp
 005E3DE7    pop         ebp
 005E3DE8    ret
end;*}

//005E3DEC
{*function sub_005E3DEC(?:?):?;
begin
 005E3DEC    push        ebp
 005E3DED    mov         ebp,esp
 005E3DEF    add         esp,0FFFFFFF4
 005E3DF2    push        ebx
 005E3DF3    mov         dword ptr [ebp-8],edx
 005E3DF6    mov         dword ptr [ebp-4],eax
 005E3DF9    mov         byte ptr [ebp-9],1
 005E3DFD    mov         eax,dword ptr [ebp-4]
 005E3E00    cmp         word ptr [eax+1B2],0;TSplitter.?f1B2:word
>005E3E08    je          005E3E23
 005E3E0A    lea         eax,[ebp-9]
 005E3E0D    push        eax
 005E3E0E    mov         ecx,dword ptr [ebp-8]
 005E3E11    mov         ebx,dword ptr [ebp-4]
 005E3E14    mov         edx,dword ptr [ebp-4]
 005E3E17    mov         eax,dword ptr [ebx+1B4];TSplitter.?f1B4:dword
 005E3E1D    call        dword ptr [ebx+1B0];TSplitter.OnCanResize
 005E3E23    mov         al,byte ptr [ebp-9]
 005E3E26    pop         ebx
 005E3E27    mov         esp,ebp
 005E3E29    pop         ebp
 005E3E2A    ret
end;*}

//005E3E2C
procedure TSplitter.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E3E2C    push        ebp
 005E3E2D    mov         ebp,esp
 005E3E2F    add         esp,0FFFFFFDC
 005E3E32    mov         byte ptr [ebp-6],cl
 005E3E35    mov         byte ptr [ebp-5],dl
 005E3E38    mov         dword ptr [ebp-4],eax
 005E3E3B    mov         eax,dword ptr [ebp+0C]
 005E3E3E    push        eax
 005E3E3F    mov         eax,dword ptr [ebp+8]
 005E3E42    push        eax
 005E3E43    mov         cl,byte ptr [ebp-6]
 005E3E46    mov         dl,byte ptr [ebp-5]
 005E3E49    mov         eax,dword ptr [ebp-4]
 005E3E4C    call        TControl.MouseDown
 005E3E51    cmp         byte ptr [ebp-5],0
>005E3E55    jne         005E4056
 005E3E5B    mov         eax,dword ptr [ebp-4]
 005E3E5E    call        005E3AA4
 005E3E63    mov         edx,dword ptr [ebp-4]
 005E3E66    mov         dword ptr [edx+174],eax;TSplitter.FControl:TControl
 005E3E6C    lea         ecx,[ebp-24]
 005E3E6F    mov         edx,dword ptr [ebp+8]
 005E3E72    mov         eax,dword ptr [ebp+0C]
 005E3E75    call        Point
 005E3E7A    mov         eax,dword ptr [ebp-4]
 005E3E7D    mov         edx,dword ptr [ebp-24]
 005E3E80    mov         dword ptr [eax+178],edx;TSplitter.FDownPos:TPoint
 005E3E86    mov         edx,dword ptr [ebp-20]
 005E3E89    mov         dword ptr [eax+17C],edx
 005E3E8F    mov         eax,dword ptr [ebp-4]
 005E3E92    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>005E3E99    je          005E4056
 005E3E9F    mov         eax,dword ptr [ebp-4]
 005E3EA2    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 005E3EA5    add         al,0FD
 005E3EA7    sub         al,2
>005E3EA9    jae         005E3F3E
 005E3EAF    mov         eax,dword ptr [ebp-4]
 005E3EB2    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3EB5    call        TControl.GetClientWidth
 005E3EBA    mov         edx,dword ptr [ebp-4]
 005E3EBD    sub         eax,dword ptr [edx+188]
 005E3EC3    mov         edx,dword ptr [ebp-4]
 005E3EC6    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 005E3ECC    mov         eax,dword ptr [ebp-4]
 005E3ECF    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3ED2    call        005F7DC4
 005E3ED7    dec         eax
 005E3ED8    test        eax,eax
>005E3EDA    jl          005E3F24
 005E3EDC    inc         eax
 005E3EDD    mov         dword ptr [ebp-10],eax
 005E3EE0    mov         dword ptr [ebp-0C],0
 005E3EE7    mov         edx,dword ptr [ebp-0C]
 005E3EEA    mov         eax,dword ptr [ebp-4]
 005E3EED    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3EF0    call        005F7D58
 005E3EF5    mov         dword ptr [ebp-14],eax
 005E3EF8    mov         eax,dword ptr [ebp-14]
 005E3EFB    cmp         byte ptr [eax+57],0
>005E3EFF    je          005E3F1C
 005E3F01    mov         eax,dword ptr [ebp-14]
 005E3F04    mov         al,byte ptr [eax+5B]
 005E3F07    add         al,0FD
 005E3F09    sub         al,2
>005E3F0B    jae         005E3F1C
 005E3F0D    mov         eax,dword ptr [ebp-14]
 005E3F10    mov         eax,dword ptr [eax+48]
 005E3F13    mov         edx,dword ptr [ebp-4]
 005E3F16    sub         dword ptr [edx+18C],eax
 005E3F1C    inc         dword ptr [ebp-0C]
 005E3F1F    dec         dword ptr [ebp-10]
>005E3F22    jne         005E3EE7
 005E3F24    mov         eax,dword ptr [ebp-4]
 005E3F27    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 005E3F2D    mov         eax,dword ptr [eax+48];TControl.Width:Integer
 005E3F30    mov         edx,dword ptr [ebp-4]
 005E3F33    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
>005E3F39    jmp         005E3FBE
 005E3F3E    mov         eax,dword ptr [ebp-4]
 005E3F41    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3F44    call        TControl.GetClientHeight
 005E3F49    mov         edx,dword ptr [ebp-4]
 005E3F4C    sub         eax,dword ptr [edx+188]
 005E3F52    mov         edx,dword ptr [ebp-4]
 005E3F55    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 005E3F5B    mov         eax,dword ptr [ebp-4]
 005E3F5E    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3F61    call        005F7DC4
 005E3F66    dec         eax
 005E3F67    test        eax,eax
>005E3F69    jl          005E3FA9
 005E3F6B    inc         eax
 005E3F6C    mov         dword ptr [ebp-10],eax
 005E3F6F    mov         dword ptr [ebp-0C],0
 005E3F76    mov         edx,dword ptr [ebp-0C]
 005E3F79    mov         eax,dword ptr [ebp-4]
 005E3F7C    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 005E3F7F    call        005F7D58
 005E3F84    mov         dword ptr [ebp-18],eax
 005E3F87    mov         eax,dword ptr [ebp-18]
 005E3F8A    mov         al,byte ptr [eax+5B]
 005E3F8D    dec         eax
 005E3F8E    sub         al,2
>005E3F90    jae         005E3FA1
 005E3F92    mov         eax,dword ptr [ebp-18]
 005E3F95    mov         eax,dword ptr [eax+4C]
 005E3F98    mov         edx,dword ptr [ebp-4]
 005E3F9B    sub         dword ptr [edx+18C],eax
 005E3FA1    inc         dword ptr [ebp-0C]
 005E3FA4    dec         dword ptr [ebp-10]
>005E3FA7    jne         005E3F76
 005E3FA9    mov         eax,dword ptr [ebp-4]
 005E3FAC    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 005E3FB2    mov         eax,dword ptr [eax+4C];TControl.Height:Integer
 005E3FB5    mov         edx,dword ptr [ebp-4]
 005E3FB8    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 005E3FBE    mov         ecx,dword ptr [ebp+8]
 005E3FC1    mov         edx,dword ptr [ebp+0C]
 005E3FC4    mov         eax,dword ptr [ebp-4]
 005E3FC7    call        005E4344
 005E3FCC    mov         eax,dword ptr [ebp-4]
 005E3FCF    call        005E3904
 005E3FD4    mov         eax,dword ptr [ebp-4]
 005E3FD7    call        005CD0A4
 005E3FDC    mov         dword ptr [ebp-1C],eax
 005E3FDF    mov         eax,dword ptr [ebp-1C]
 005E3FE2    cmp         dword ptr [eax+220],0
>005E3FE9    je          005E403D
 005E3FEB    mov         eax,dword ptr [ebp-1C]
 005E3FEE    mov         eax,dword ptr [eax+220]
 005E3FF4    mov         edx,dword ptr [ebp-4]
 005E3FF7    mov         dword ptr [edx+168],eax;TSplitter.FActiveControl:TWinControl
 005E3FFD    mov         eax,dword ptr [ebp-4]
 005E4000    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 005E4006    mov         edx,dword ptr [ebp-4]
 005E4009    mov         ecx,dword ptr [eax+1D8];TWinControl.FOnKeyDown:TKeyEvent
 005E400F    mov         dword ptr [edx+198],ecx;TSplitter.FOldKeyDown:TKeyEvent
 005E4015    mov         ecx,dword ptr [eax+1DC];TWinControl.?f1DC:TSplitter
 005E401B    mov         dword ptr [edx+19C],ecx;TSplitter.?f19C:dword
 005E4021    mov         eax,dword ptr [ebp-4]
 005E4024    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 005E402A    mov         edx,dword ptr [ebp-4]
 005E402D    mov         dword ptr [eax+1DC],edx;TWinControl.?f1DC:TSplitter
 005E4033    mov         dword ptr [eax+1D8],5E44A8;TWinControl.FOnKeyDown:TKeyEvent
 005E403D    mov         eax,dword ptr [ebp-4]
 005E4040    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 005E4046    sub         al,1
>005E4048    je          005E404E
 005E404A    sub         al,2
>005E404C    jne         005E4056
 005E404E    mov         eax,dword ptr [ebp-4]
 005E4051    call        005E39A0
 005E4056    mov         esp,ebp
 005E4058    pop         ebp
 005E4059    ret         8
*}
end;

//005E405C
procedure sub_005E405C(?:TSplitter);
begin
{*
 005E405C    push        ebp
 005E405D    mov         ebp,esp
 005E405F    push        ecx
 005E4060    push        ebx
 005E4061    mov         dword ptr [ebp-4],eax
 005E4064    mov         eax,dword ptr [ebp-4]
 005E4067    mov         eax,dword ptr [eax+190]
 005E406D    mov         edx,dword ptr [ebp-4]
 005E4070    cmp         eax,dword ptr [edx+1A0]
>005E4076    je          005E420D
 005E407C    mov         eax,dword ptr [ebp-4]
 005E407F    mov         al,byte ptr [eax+5B]
 005E4082    dec         al
>005E4084    je          005E40B7
 005E4086    dec         al
>005E4088    je          005E4152
 005E408E    dec         al
>005E4090    je          005E409B
 005E4092    dec         al
>005E4094    je          005E40D3
>005E4096    jmp         005E41D1
 005E409B    mov         eax,dword ptr [ebp-4]
 005E409E    mov         edx,dword ptr [eax+190]
 005E40A4    mov         eax,dword ptr [ebp-4]
 005E40A7    mov         eax,dword ptr [eax+174]
 005E40AD    call        TControl.SetWidth
>005E40B2    jmp         005E41D1
 005E40B7    mov         eax,dword ptr [ebp-4]
 005E40BA    mov         edx,dword ptr [eax+190]
 005E40C0    mov         eax,dword ptr [ebp-4]
 005E40C3    mov         eax,dword ptr [eax+174]
 005E40C9    call        TControl.SetHeight
>005E40CE    jmp         005E41D1
 005E40D3    mov         eax,dword ptr [ebp-4]
 005E40D6    mov         eax,dword ptr [eax+30]
 005E40D9    call        005F7800
 005E40DE    xor         eax,eax
 005E40E0    push        ebp
 005E40E1    push        5E414B
 005E40E6    push        dword ptr fs:[eax]
 005E40E9    mov         dword ptr fs:[eax],esp
 005E40EC    mov         eax,dword ptr [ebp-4]
 005E40EF    mov         eax,dword ptr [eax+174]
 005E40F5    mov         edx,dword ptr [eax+48]
 005E40F8    mov         eax,dword ptr [ebp-4]
 005E40FB    sub         edx,dword ptr [eax+190]
 005E4101    mov         eax,dword ptr [ebp-4]
 005E4104    mov         eax,dword ptr [eax+174]
 005E410A    add         edx,dword ptr [eax+40]
 005E410D    mov         eax,dword ptr [ebp-4]
 005E4110    mov         eax,dword ptr [eax+174]
 005E4116    call        TControl.SetLeft
 005E411B    mov         eax,dword ptr [ebp-4]
 005E411E    mov         edx,dword ptr [eax+190]
 005E4124    mov         eax,dword ptr [ebp-4]
 005E4127    mov         eax,dword ptr [eax+174]
 005E412D    call        TControl.SetWidth
 005E4132    xor         eax,eax
 005E4134    pop         edx
 005E4135    pop         ecx
 005E4136    pop         ecx
 005E4137    mov         dword ptr fs:[eax],edx
 005E413A    push        5E41D1
 005E413F    mov         eax,dword ptr [ebp-4]
 005E4142    mov         eax,dword ptr [eax+30]
 005E4145    call        005F7814
 005E414A    ret
>005E414B    jmp         @HandleFinally
>005E4150    jmp         005E413F
 005E4152    mov         eax,dword ptr [ebp-4]
 005E4155    mov         eax,dword ptr [eax+30]
 005E4158    call        005F7800
 005E415D    xor         eax,eax
 005E415F    push        ebp
 005E4160    push        5E41CA
 005E4165    push        dword ptr fs:[eax]
 005E4168    mov         dword ptr fs:[eax],esp
 005E416B    mov         eax,dword ptr [ebp-4]
 005E416E    mov         eax,dword ptr [eax+174]
 005E4174    mov         edx,dword ptr [eax+4C]
 005E4177    mov         eax,dword ptr [ebp-4]
 005E417A    sub         edx,dword ptr [eax+190]
 005E4180    mov         eax,dword ptr [ebp-4]
 005E4183    mov         eax,dword ptr [eax+174]
 005E4189    add         edx,dword ptr [eax+44]
 005E418C    mov         eax,dword ptr [ebp-4]
 005E418F    mov         eax,dword ptr [eax+174]
 005E4195    call        TControl.SetTop
 005E419A    mov         eax,dword ptr [ebp-4]
 005E419D    mov         edx,dword ptr [eax+190]
 005E41A3    mov         eax,dword ptr [ebp-4]
 005E41A6    mov         eax,dword ptr [eax+174]
 005E41AC    call        TControl.SetHeight
 005E41B1    xor         eax,eax
 005E41B3    pop         edx
 005E41B4    pop         ecx
 005E41B5    pop         ecx
 005E41B6    mov         dword ptr fs:[eax],edx
 005E41B9    push        5E41D1
 005E41BE    mov         eax,dword ptr [ebp-4]
 005E41C1    mov         eax,dword ptr [eax+30]
 005E41C4    call        005F7814
 005E41C9    ret
>005E41CA    jmp         @HandleFinally
>005E41CF    jmp         005E41BE
 005E41D1    mov         eax,dword ptr [ebp-4]
 005E41D4    mov         edx,dword ptr [eax]
 005E41D6    call        dword ptr [edx+88]
 005E41DC    mov         eax,dword ptr [ebp-4]
 005E41DF    cmp         word ptr [eax+1BA],0
>005E41E7    je          005E41FB
 005E41E9    mov         ebx,dword ptr [ebp-4]
 005E41EC    mov         edx,dword ptr [ebp-4]
 005E41EF    mov         eax,dword ptr [ebx+1BC]
 005E41F5    call        dword ptr [ebx+1B8]
 005E41FB    mov         eax,dword ptr [ebp-4]
 005E41FE    mov         eax,dword ptr [eax+190]
 005E4204    mov         edx,dword ptr [ebp-4]
 005E4207    mov         dword ptr [edx+1A0],eax
 005E420D    pop         ebx
 005E420E    pop         ecx
 005E420F    pop         ebp
 005E4210    ret
*}
end;

//005E4214
{*procedure sub_005E4214(?:TSplitter; ?:?; ?:?; ?:?; ?:?);
begin
 005E4214    push        ebp
 005E4215    mov         ebp,esp
 005E4217    add         esp,0FFFFFFF0
 005E421A    mov         dword ptr [ebp-0C],ecx
 005E421D    mov         dword ptr [ebp-8],edx
 005E4220    mov         dword ptr [ebp-4],eax
 005E4223    mov         eax,dword ptr [ebp-4]
 005E4226    mov         al,byte ptr [eax+5B]
 005E4229    add         al,0FD
 005E422B    sub         al,2
>005E422D    jae         005E4242
 005E422F    mov         eax,dword ptr [ebp-8]
 005E4232    mov         edx,dword ptr [ebp-4]
 005E4235    sub         eax,dword ptr [edx+178]
 005E423B    mov         edx,dword ptr [ebp+8]
 005E423E    mov         dword ptr [edx],eax
>005E4240    jmp         005E4253
 005E4242    mov         eax,dword ptr [ebp-0C]
 005E4245    mov         edx,dword ptr [ebp-4]
 005E4248    sub         eax,dword ptr [edx+17C]
 005E424E    mov         edx,dword ptr [ebp+8]
 005E4251    mov         dword ptr [edx],eax
 005E4253    xor         eax,eax
 005E4255    mov         dword ptr [ebp-10],eax
 005E4258    mov         eax,dword ptr [ebp-4]
 005E425B    mov         al,byte ptr [eax+5B]
 005E425E    dec         al
>005E4260    je          005E429C
 005E4262    dec         al
>005E4264    je          005E42B2
 005E4266    dec         al
>005E4268    je          005E4270
 005E426A    dec         al
>005E426C    je          005E4286
>005E426E    jmp         005E42C6
 005E4270    mov         eax,dword ptr [ebp-4]
 005E4273    mov         eax,dword ptr [eax+174]
 005E4279    mov         eax,dword ptr [eax+48]
 005E427C    mov         edx,dword ptr [ebp+8]
 005E427F    add         eax,dword ptr [edx]
 005E4281    mov         dword ptr [ebp-10],eax
>005E4284    jmp         005E42C6
 005E4286    mov         eax,dword ptr [ebp-4]
 005E4289    mov         eax,dword ptr [eax+174]
 005E428F    mov         eax,dword ptr [eax+48]
 005E4292    mov         edx,dword ptr [ebp+8]
 005E4295    sub         eax,dword ptr [edx]
 005E4297    mov         dword ptr [ebp-10],eax
>005E429A    jmp         005E42C6
 005E429C    mov         eax,dword ptr [ebp-4]
 005E429F    mov         eax,dword ptr [eax+174]
 005E42A5    mov         eax,dword ptr [eax+4C]
 005E42A8    mov         edx,dword ptr [ebp+8]
 005E42AB    add         eax,dword ptr [edx]
 005E42AD    mov         dword ptr [ebp-10],eax
>005E42B0    jmp         005E42C6
 005E42B2    mov         eax,dword ptr [ebp-4]
 005E42B5    mov         eax,dword ptr [eax+174]
 005E42BB    mov         eax,dword ptr [eax+4C]
 005E42BE    mov         edx,dword ptr [ebp+8]
 005E42C1    sub         eax,dword ptr [edx]
 005E42C3    mov         dword ptr [ebp-10],eax
 005E42C6    mov         eax,dword ptr [ebp+0C]
 005E42C9    mov         edx,dword ptr [ebp-10]
 005E42CC    mov         dword ptr [eax],edx
 005E42CE    mov         eax,dword ptr [ebp-10]
 005E42D1    mov         edx,dword ptr [ebp-4]
 005E42D4    cmp         eax,dword ptr [edx+188]
>005E42DA    jge         005E42EC
 005E42DC    mov         eax,dword ptr [ebp+0C]
 005E42DF    mov         edx,dword ptr [ebp-4]
 005E42E2    mov         edx,dword ptr [edx+188]
 005E42E8    mov         dword ptr [eax],edx
>005E42EA    jmp         005E4308
 005E42EC    mov         eax,dword ptr [ebp-10]
 005E42EF    mov         edx,dword ptr [ebp-4]
 005E42F2    cmp         eax,dword ptr [edx+18C]
>005E42F8    jle         005E4308
 005E42FA    mov         eax,dword ptr [ebp+0C]
 005E42FD    mov         edx,dword ptr [ebp-4]
 005E4300    mov         edx,dword ptr [edx+18C]
 005E4306    mov         dword ptr [eax],edx
 005E4308    mov         eax,dword ptr [ebp+0C]
 005E430B    mov         eax,dword ptr [eax]
 005E430D    cmp         eax,dword ptr [ebp-10]
>005E4310    je          005E433D
 005E4312    mov         eax,dword ptr [ebp-4]
 005E4315    mov         al,byte ptr [eax+5B]
 005E4318    sub         al,2
>005E431A    je          005E4320
 005E431C    sub         al,2
>005E431E    jne         005E432A
 005E4320    mov         eax,dword ptr [ebp+0C]
 005E4323    mov         eax,dword ptr [eax]
 005E4325    sub         dword ptr [ebp-10],eax
>005E4328    jmp         005E4335
 005E432A    mov         eax,dword ptr [ebp+0C]
 005E432D    mov         eax,dword ptr [eax]
 005E432F    sub         eax,dword ptr [ebp-10]
 005E4332    mov         dword ptr [ebp-10],eax
 005E4335    mov         eax,dword ptr [ebp+8]
 005E4338    mov         edx,dword ptr [ebp-10]
 005E433B    add         dword ptr [eax],edx
 005E433D    mov         esp,ebp
 005E433F    pop         ebp
 005E4340    ret         8
end;*}

//005E4344
{*procedure sub_005E4344(?:TSplitter; ?:?; ?:?);
begin
 005E4344    push        ebp
 005E4345    mov         ebp,esp
 005E4347    add         esp,0FFFFFFF4
 005E434A    mov         dword ptr [ebp-0C],ecx
 005E434D    mov         dword ptr [ebp-8],edx
 005E4350    mov         dword ptr [ebp-4],eax
 005E4353    mov         eax,dword ptr [ebp-4]
 005E4356    add         eax,190;TSplitter.FNewSize:Integer
 005E435B    push        eax
 005E435C    mov         eax,dword ptr [ebp-4]
 005E435F    add         eax,1AC;TSplitter.FSplit:Integer
 005E4364    push        eax
 005E4365    mov         ecx,dword ptr [ebp-0C]
 005E4368    mov         edx,dword ptr [ebp-8]
 005E436B    mov         eax,dword ptr [ebp-4]
 005E436E    call        005E4214
 005E4373    mov         esp,ebp
 005E4375    pop         ebp
 005E4376    ret
end;*}

//005E4378
procedure TSplitter.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E4378    push        ebp
 005E4379    mov         ebp,esp
 005E437B    add         esp,0FFFFFFEC
 005E437E    mov         dword ptr [ebp-0C],ecx
 005E4381    mov         byte ptr [ebp-5],dl
 005E4384    mov         dword ptr [ebp-4],eax
 005E4387    mov         eax,dword ptr [ebp+8]
 005E438A    push        eax
 005E438B    mov         ecx,dword ptr [ebp-0C]
 005E438E    mov         dl,byte ptr [ebp-5]
 005E4391    mov         eax,dword ptr [ebp-4]
 005E4394    call        TControl.MouseMove
 005E4399    test        byte ptr [ebp-5],8
>005E439D    je          005E4439
 005E43A3    mov         eax,dword ptr [ebp-4]
 005E43A6    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>005E43AD    je          005E4439
 005E43B3    lea         eax,[ebp-10]
 005E43B6    push        eax
 005E43B7    lea         eax,[ebp-14]
 005E43BA    push        eax
 005E43BB    mov         ecx,dword ptr [ebp+8]
 005E43BE    mov         edx,dword ptr [ebp-0C]
 005E43C1    mov         eax,dword ptr [ebp-4]
 005E43C4    call        005E4214
 005E43C9    lea         edx,[ebp-10]
 005E43CC    mov         eax,dword ptr [ebp-4]
 005E43CF    mov         ecx,dword ptr [eax]
 005E43D1    call        dword ptr [ecx+94];TSplitter.sub_005E3D9C
 005E43D7    test        al,al
>005E43D9    je          005E4439
 005E43DB    mov         eax,dword ptr [ebp-4]
 005E43DE    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 005E43E4    sub         al,1
>005E43E6    je          005E43EC
 005E43E8    sub         al,2
>005E43EA    jne         005E43F4
 005E43EC    mov         eax,dword ptr [ebp-4]
 005E43EF    call        005E39A0
 005E43F4    mov         eax,dword ptr [ebp-10]
 005E43F7    mov         edx,dword ptr [ebp-4]
 005E43FA    mov         dword ptr [edx+190],eax;TSplitter.FNewSize:Integer
 005E4400    mov         eax,dword ptr [ebp-14]
 005E4403    mov         edx,dword ptr [ebp-4]
 005E4406    mov         dword ptr [edx+1AC],eax;TSplitter.FSplit:Integer
 005E440C    mov         eax,dword ptr [ebp-4]
 005E440F    cmp         byte ptr [eax+1A8],2;TSplitter.ResizeStyle:TResizeStyle
>005E4416    jne         005E4420
 005E4418    mov         eax,dword ptr [ebp-4]
 005E441B    call        005E405C
 005E4420    mov         eax,dword ptr [ebp-4]
 005E4423    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 005E4429    sub         al,1
>005E442B    je          005E4431
 005E442D    sub         al,2
>005E442F    jne         005E4439
 005E4431    mov         eax,dword ptr [ebp-4]
 005E4434    call        005E39A0
 005E4439    mov         esp,ebp
 005E443B    pop         ebp
 005E443C    ret         4
*}
end;

//005E4440
procedure TSplitter.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E4440    push        ebp
 005E4441    mov         ebp,esp
 005E4443    add         esp,0FFFFFFF8
 005E4446    push        esi
 005E4447    mov         byte ptr [ebp-6],cl
 005E444A    mov         byte ptr [ebp-5],dl
 005E444D    mov         dword ptr [ebp-4],eax
 005E4450    mov         eax,dword ptr [ebp+0C]
 005E4453    push        eax
 005E4454    mov         eax,dword ptr [ebp+8]
 005E4457    push        eax
 005E4458    mov         cl,byte ptr [ebp-6]
 005E445B    mov         dl,byte ptr [ebp-5]
 005E445E    mov         eax,dword ptr [ebp-4]
 005E4461    call        TControl.MouseUp
 005E4466    mov         eax,dword ptr [ebp-4]
 005E4469    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>005E4470    je          005E449F
 005E4472    mov         eax,dword ptr [ebp-4]
 005E4475    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 005E447B    sub         al,1
>005E447D    je          005E4483
 005E447F    sub         al,2
>005E4481    jne         005E448B
 005E4483    mov         eax,dword ptr [ebp-4]
 005E4486    call        005E39A0
 005E448B    mov         eax,dword ptr [ebp-4]
 005E448E    call        005E405C
 005E4493    mov         eax,dword ptr [ebp-4]
 005E4496    mov         si,0FFC7
 005E449A    call        @CallDynaInst;TSplitter.sub_005E4528
 005E449F    pop         esi
 005E44A0    pop         ecx
 005E44A1    pop         ecx
 005E44A2    pop         ebp
 005E44A3    ret         8
*}
end;

//005E4500
procedure TSplitter.SetBeveled(Value:Boolean);
begin
{*
 005E4500    push        ebp
 005E4501    mov         ebp,esp
 005E4503    add         esp,0FFFFFFF8
 005E4506    mov         byte ptr [ebp-5],dl
 005E4509    mov         dword ptr [ebp-4],eax
 005E450C    mov         al,byte ptr [ebp-5]
 005E450F    mov         edx,dword ptr [ebp-4]
 005E4512    mov         byte ptr [edx+16D],al;TSplitter.Beveled:Boolean
 005E4518    mov         eax,dword ptr [ebp-4]
 005E451B    mov         edx,dword ptr [eax]
 005E451D    call        dword ptr [edx+80];TSplitter.sub_005F3F58
 005E4523    pop         ecx
 005E4524    pop         ecx
 005E4525    pop         ebp
 005E4526    ret
*}
end;

//005E4528
procedure TSplitter.sub_005E4528;
begin
{*
 005E4528    push        ebp
 005E4529    mov         ebp,esp
 005E452B    push        ecx
 005E452C    push        ebx
 005E452D    mov         dword ptr [ebp-4],eax
 005E4530    mov         eax,dword ptr [ebp-4]
 005E4533    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>005E453A    je          005E459E
 005E453C    mov         eax,dword ptr [ebp-4]
 005E453F    cmp         byte ptr [eax+184],0;TSplitter.FLineVisible:Boolean
>005E4546    je          005E4550
 005E4548    mov         eax,dword ptr [ebp-4]
 005E454B    call        005E39A0
 005E4550    mov         eax,dword ptr [ebp-4]
 005E4553    xor         edx,edx
 005E4555    mov         dword ptr [eax+174],edx;TSplitter.FControl:TControl
 005E455B    mov         eax,dword ptr [ebp-4]
 005E455E    call        005E3A34
 005E4563    mov         eax,dword ptr [ebp-4]
 005E4566    cmp         dword ptr [eax+168],0;TSplitter.FActiveControl:TWinControl
>005E456D    je          005E459E
 005E456F    mov         eax,dword ptr [ebp-4]
 005E4572    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 005E4578    mov         edx,dword ptr [ebp-4]
 005E457B    mov         ecx,dword ptr [edx+198];TSplitter.FOldKeyDown:TKeyEvent
 005E4581    mov         dword ptr [eax+1D8],ecx;TWinControl.FOnKeyDown:TKeyEvent
 005E4587    mov         ecx,dword ptr [edx+19C];TSplitter.?f19C:dword
 005E458D    mov         dword ptr [eax+1DC],ecx;TWinControl.?f1DC:TSplitter
 005E4593    mov         eax,dword ptr [ebp-4]
 005E4596    xor         edx,edx
 005E4598    mov         dword ptr [eax+168],edx;TSplitter.FActiveControl:TWinControl
 005E459E    mov         eax,dword ptr [ebp-4]
 005E45A1    cmp         word ptr [eax+1BA],0;TSplitter.?f1BA:word
>005E45A9    je          005E45BD
 005E45AB    mov         ebx,dword ptr [ebp-4]
 005E45AE    mov         edx,dword ptr [ebp-4]
 005E45B1    mov         eax,dword ptr [ebx+1BC];TSplitter.?f1BC:dword
 005E45B7    call        dword ptr [ebx+1B8];TSplitter.OnMoved
 005E45BD    pop         ebx
 005E45BE    pop         ecx
 005E45BF    pop         ebp
 005E45C0    ret
*}
end;

//005E45C4
{*function sub_005E45C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005E45C4    push        ebp
 005E45C5    mov         ebp,esp
 005E45C7    add         esp,0FFFFFFF4
 005E45CA    push        esi
 005E45CB    push        edi
 005E45CC    mov         byte ptr [ebp-6],cl
 005E45CF    mov         byte ptr [ebp-5],dl
 005E45D2    mov         dword ptr [ebp-4],eax
 005E45D5    mov         eax,48
 005E45DA    call        @GetMem
 005E45DF    mov         dword ptr [ebp-0C],eax
 005E45E2    mov         eax,dword ptr [ebp-0C]
 005E45E5    mov         edx,dword ptr [ebp-4]
 005E45E8    mov         dword ptr [eax],edx
 005E45EA    mov         eax,dword ptr [ebp+0C]
 005E45ED    mov         edx,dword ptr [ebp-0C]
 005E45F0    mov         esi,eax
 005E45F2    lea         edi,[edx+4]
 005E45F5    movs        dword ptr [edi],dword ptr [esi]
 005E45F6    movs        dword ptr [edi],dword ptr [esi]
 005E45F7    movs        dword ptr [edi],dword ptr [esi]
 005E45F8    movs        dword ptr [edi],dword ptr [esi]
 005E45F9    mov         eax,dword ptr [ebp-0C]
 005E45FC    mov         dl,byte ptr [ebp-6]
 005E45FF    mov         byte ptr [eax+14],dl
 005E4602    mov         eax,dword ptr [ebp-0C]
 005E4605    mov         dl,byte ptr [ebp-5]
 005E4608    mov         byte ptr [eax+15],dl
 005E460B    mov         eax,dword ptr [ebp-0C]
 005E460E    mov         edx,dword ptr [ebp+1C]
 005E4611    mov         ecx,dword ptr [edx]
 005E4613    mov         dword ptr [eax+16],ecx
 005E4616    mov         ecx,dword ptr [edx+4]
 005E4619    mov         dword ptr [eax+1A],ecx
 005E461C    mov         eax,dword ptr [ebp-0C]
 005E461F    mov         edx,dword ptr [ebp+18]
 005E4622    mov         dword ptr [eax+20],edx
 005E4625    mov         eax,dword ptr [ebp-0C]
 005E4628    mov         edx,dword ptr [ebp+14]
 005E462B    mov         dword ptr [eax+24],edx
 005E462E    mov         eax,dword ptr [ebp-0C]
 005E4631    mov         edx,dword ptr [ebp+8]
 005E4634    mov         dword ptr [eax+28],edx
 005E4637    mov         eax,dword ptr [ebp-0C]
 005E463A    mov         dword ptr [eax+2C],1
 005E4641    mov         eax,dword ptr [ebp-0C]
 005E4644    mov         dl,byte ptr [ebp-5]
 005E4647    mov         byte ptr [eax+38],dl
 005E464A    mov         eax,dword ptr [ebp-0C]
 005E464D    mov         edx,dword ptr [ebp+1C]
 005E4650    mov         ecx,dword ptr [edx]
 005E4652    mov         dword ptr [eax+39],ecx
 005E4655    mov         ecx,dword ptr [edx+4]
 005E4658    mov         dword ptr [eax+3D],ecx
 005E465B    mov         eax,dword ptr [ebp-0C]
 005E465E    mov         edx,dword ptr [ebp+18]
 005E4661    mov         dword ptr [eax+44],edx
 005E4664    mov         eax,dword ptr [ebp-0C]
 005E4667    mov         edx,dword ptr [ebp+10]
 005E466A    mov         dword ptr [eax+30],edx
 005E466D    mov         eax,dword ptr [ebp-0C]
 005E4670    xor         edx,edx
 005E4672    mov         dword ptr [eax+34],edx
 005E4675    mov         eax,dword ptr [ebp-0C]
 005E4678    pop         edi
 005E4679    pop         esi
 005E467A    mov         esp,ebp
 005E467C    pop         ebp
 005E467D    ret         18
end;*}

//005E4680
procedure sub_005E4680(?:TList; ?:Pointer);
begin
{*
 005E4680    push        ebp
 005E4681    mov         ebp,esp
 005E4683    add         esp,0FFFFFFF4
 005E4686    mov         dword ptr [ebp-8],edx
 005E4689    mov         dword ptr [ebp-4],eax
 005E468C    cmp         dword ptr [ebp-8],0
>005E4690    je          005E46BA
 005E4692    mov         eax,dword ptr [ebp-8]
 005E4695    mov         dword ptr [ebp-0C],eax
 005E4698    mov         edx,dword ptr [ebp-8]
 005E469B    mov         eax,dword ptr [ebp-4]
 005E469E    call        TList.Remove
 005E46A3    mov         eax,dword ptr [ebp-8]
 005E46A6    mov         eax,dword ptr [eax+34]
 005E46A9    mov         dword ptr [ebp-8],eax
 005E46AC    mov         eax,dword ptr [ebp-0C]
 005E46AF    call        @FreeMem
 005E46B4    cmp         dword ptr [ebp-8],0
>005E46B8    jne         005E4692
 005E46BA    mov         esp,ebp
 005E46BC    pop         ebp
 005E46BD    ret
*}
end;

//005E46C0
{*procedure sub_005E46C0(?:?; ?:?);
begin
 005E46C0    push        ebp
 005E46C1    mov         ebp,esp
 005E46C3    add         esp,0FFFFFFF8
 005E46C6    mov         dword ptr [ebp-8],edx
 005E46C9    mov         dword ptr [ebp-4],eax
 005E46CC    mov         eax,dword ptr [ebp-8]
 005E46CF    mov         eax,dword ptr [eax]
 005E46D1    mov         edx,dword ptr [ebp-4]
 005E46D4    sub         dword ptr [edx],eax
 005E46D6    mov         eax,dword ptr [ebp-8]
 005E46D9    mov         eax,dword ptr [eax+4]
 005E46DC    mov         edx,dword ptr [ebp-4]
 005E46DF    sub         dword ptr [edx+4],eax
 005E46E2    mov         eax,dword ptr [ebp-8]
 005E46E5    mov         eax,dword ptr [eax+8]
 005E46E8    mov         edx,dword ptr [ebp-4]
 005E46EB    add         dword ptr [edx+8],eax
 005E46EE    mov         eax,dword ptr [ebp-8]
 005E46F1    mov         eax,dword ptr [eax+0C]
 005E46F4    mov         edx,dword ptr [ebp-4]
 005E46F7    add         dword ptr [edx+0C],eax
 005E46FA    pop         ecx
 005E46FB    pop         ecx
 005E46FC    pop         ebp
 005E46FD    ret
end;*}

//005E4700
constructor TCustomControlBar.Create(AOwner:TComponent);
begin
{*
 005E4700    push        ebp
 005E4701    mov         ebp,esp
 005E4703    add         esp,0FFFFFFF4
 005E4706    test        dl,dl
>005E4708    je          005E4712
 005E470A    add         esp,0FFFFFFF0
 005E470D    call        @ClassCreate
 005E4712    mov         dword ptr [ebp-0C],ecx
 005E4715    mov         byte ptr [ebp-5],dl
 005E4718    mov         dword ptr [ebp-4],eax
 005E471B    mov         ecx,dword ptr [ebp-0C]
 005E471E    xor         edx,edx
 005E4720    mov         eax,dword ptr [ebp-4]
 005E4723    call        TCustomControl.Create
 005E4728    mov         eax,dword ptr [ebp-4]
 005E472B    mov         edx,dword ptr ds:[5E47F8];0xCB gvar_005E47F8
 005E4731    mov         dword ptr [eax+50],edx;TCustomControlBar.FControlStyle:TControlStyle
 005E4734    mov         edx,64
 005E4739    mov         eax,dword ptr [ebp-4]
 005E473C    call        TControl.SetWidth
 005E4741    mov         edx,32
 005E4746    mov         eax,dword ptr [ebp-4]
 005E4749    call        TControl.SetHeight
 005E474E    mov         eax,dword ptr [ebp-4]
 005E4751    mov         byte ptr [eax+211],1;TCustomControlBar.FAutoDrag:Boolean
 005E4758    mov         eax,dword ptr [ebp-4]
 005E475B    mov         byte ptr [eax+212],1;TCustomControlBar.FAutoDock:Boolean
 005E4762    mov         dl,1
 005E4764    mov         eax,[006422A4];TList
 005E4769    call        TObject.Create;TList.Create
 005E476E    mov         edx,dword ptr [ebp-4]
 005E4771    mov         dword ptr [edx+228],eax;TCustomControlBar.FItems:TList
 005E4777    mov         dl,1
 005E4779    mov         eax,[005BEB28];TPicture
 005E477E    call        TPicture.Create;TPicture.Create
 005E4783    mov         edx,dword ptr [ebp-4]
 005E4786    mov         dword ptr [edx+22C],eax;TCustomControlBar.FPicture:TPicture
 005E478C    mov         eax,dword ptr [ebp-4]
 005E478F    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E4795    mov         edx,dword ptr [ebp-4]
 005E4798    mov         dword ptr [eax+14],edx;TPicture.?f14:TImage
 005E479B    mov         dword ptr [eax+10],5E71B4;TPicture.FOnChange:TNotifyEvent
 005E47A2    mov         eax,dword ptr [ebp-4]
 005E47A5    mov         dword ptr [eax+230],1A;TCustomControlBar.FRowSize:TRowSize
 005E47AF    mov         eax,dword ptr [ebp-4]
 005E47B2    mov         byte ptr [eax+234],1;TCustomControlBar.FRowSnap:Boolean
 005E47B9    mov         dl,1
 005E47BB    mov         eax,dword ptr [ebp-4]
 005E47BE    call        TCheckListBox.SetBevelKind
 005E47C3    mov         eax,dword ptr [ebp-4]
 005E47C6    mov         byte ptr [eax+1F8],1;TCustomControlBar.FDoubleBuffered:Boolean
 005E47CD    mov         dl,1
 005E47CF    mov         eax,dword ptr [ebp-4]
 005E47D2    call        TChart.SetDockSite
 005E47D7    mov         eax,dword ptr [ebp-4]
 005E47DA    cmp         byte ptr [ebp-5],0
>005E47DE    je          005E47EF
 005E47E0    call        @AfterConstruction
 005E47E5    pop         dword ptr fs:[0]
 005E47EC    add         esp,0C
 005E47EF    mov         eax,dword ptr [ebp-4]
 005E47F2    mov         esp,ebp
 005E47F4    pop         ebp
 005E47F5    ret
*}
end;

//005E47FC
destructor TCustomControlBar.Destroy;
begin
{*
 005E47FC    push        ebp
 005E47FD    mov         ebp,esp
 005E47FF    add         esp,0FFFFFFF0
 005E4802    call        @BeforeDestruction
 005E4807    mov         byte ptr [ebp-5],dl
 005E480A    mov         dword ptr [ebp-4],eax
 005E480D    mov         eax,dword ptr [ebp-4]
 005E4810    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4816    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E4819    dec         eax
 005E481A    test        eax,eax
>005E481C    jl          005E485C
 005E481E    inc         eax
 005E481F    mov         dword ptr [ebp-10],eax
 005E4822    mov         dword ptr [ebp-0C],0
 005E4829    mov         eax,dword ptr [ebp-4]
 005E482C    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4832    mov         edx,dword ptr [ebp-0C]
 005E4835    call        TList.Get
 005E483A    test        eax,eax
>005E483C    je          005E4854
 005E483E    mov         eax,dword ptr [ebp-4]
 005E4841    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4847    mov         edx,dword ptr [ebp-0C]
 005E484A    call        TList.Get
 005E484F    call        @FreeMem
 005E4854    inc         dword ptr [ebp-0C]
 005E4857    dec         dword ptr [ebp-10]
>005E485A    jne         005E4829
 005E485C    mov         eax,dword ptr [ebp-4]
 005E485F    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4865    call        TObject.Free
 005E486A    mov         eax,dword ptr [ebp-4]
 005E486D    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E4873    call        TObject.Free
 005E4878    mov         dl,byte ptr [ebp-5]
 005E487B    and         dl,0FC
 005E487E    mov         eax,dword ptr [ebp-4]
 005E4881    call        TCustomControl.Destroy
 005E4886    cmp         byte ptr [ebp-5],0
>005E488A    jle         005E4894
 005E488C    mov         eax,dword ptr [ebp-4]
 005E488F    call        @ClassDestroy
 005E4894    mov         esp,ebp
 005E4896    pop         ebp
 005E4897    ret
*}
end;

//005E4898
{*procedure sub_005E4898(?:?);
begin
 005E4898    push        ebp
 005E4899    mov         ebp,esp
 005E489B    add         esp,0FFFFFFF8
 005E489E    mov         dword ptr [ebp-8],edx
 005E48A1    mov         dword ptr [ebp-4],eax
 005E48A4    mov         edx,dword ptr [ebp-8]
 005E48A7    mov         eax,dword ptr [ebp-4]
 005E48AA    call        005F7FC0
 005E48AF    mov         eax,dword ptr [ebp-8]
 005E48B2    and         dword ptr [eax+24],0FFFFFFFC
 005E48B6    pop         ecx
 005E48B7    pop         ecx
 005E48B8    pop         ebp
 005E48B9    ret
end;*}

//005E48BC
{*function sub_005E48BC(?:Pointer; ?:?; ?:?; ?:?):?;
begin
 005E48BC    push        ebp
 005E48BD    mov         ebp,esp
 005E48BF    add         esp,0FFFFFFF0
 005E48C2    mov         dword ptr [ebp-0C],ecx
 005E48C5    mov         dword ptr [ebp-8],edx
 005E48C8    mov         dword ptr [ebp-4],eax
 005E48CB    mov         eax,dword ptr [ebp-4]
 005E48CE    cmp         dword ptr [eax+30],0
>005E48D2    je          005E492D
 005E48D4    mov         eax,dword ptr [ebp-8]
 005E48D7    mov         eax,dword ptr [eax]
 005E48D9    mov         edx,dword ptr [ebp-4]
 005E48DC    mov         edx,dword ptr [edx+30]
 005E48DF    cmp         eax,dword ptr [edx+39]
>005E48E2    jne         005E48F2
 005E48E4    mov         eax,dword ptr [ebp-4]
 005E48E7    mov         eax,dword ptr [eax+30]
 005E48EA    mov         eax,dword ptr [eax+44]
 005E48ED    cmp         eax,dword ptr [ebp-0C]
>005E48F0    je          005E492D
 005E48F2    mov         eax,dword ptr [ebp-4]
 005E48F5    mov         eax,dword ptr [eax+30]
 005E48F8    mov         dword ptr [ebp-4],eax
 005E48FB    mov         eax,dword ptr [ebp-8]
 005E48FE    mov         eax,dword ptr [eax]
 005E4900    mov         edx,dword ptr [ebp-4]
 005E4903    mov         dword ptr [edx+39],eax
 005E4906    mov         eax,dword ptr [ebp-0C]
 005E4909    mov         edx,dword ptr [ebp-4]
 005E490C    mov         dword ptr [edx+44],eax
 005E490F    mov         eax,dword ptr [ebp+8]
 005E4912    mov         edx,dword ptr [ebp-4]
 005E4915    mov         dword ptr [eax-4],edx
 005E4918    mov         eax,dword ptr [ebp-4]
 005E491B    mov         eax,dword ptr [eax+30]
 005E491E    mov         dword ptr [ebp-4],eax
 005E4921    cmp         dword ptr [ebp-4],0
>005E4925    jne         005E48FB
 005E4927    mov         byte ptr [ebp-0D],1
>005E492B    jmp         005E4931
 005E492D    mov         byte ptr [ebp-0D],0
 005E4931    mov         al,byte ptr [ebp-0D]
 005E4934    mov         esp,ebp
 005E4936    pop         ebp
 005E4937    ret
end;*}

//005E4938
procedure TCustomControlBar.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 005E4938    push        ebp
 005E4939    mov         ebp,esp
 005E493B    add         esp,0FFFFFF24
 005E4941    push        ebx
 005E4942    push        esi
 005E4943    mov         dword ptr [ebp-10],ecx
 005E4946    mov         dword ptr [ebp-0C],edx
 005E4949    mov         dword ptr [ebp-8],eax
 005E494C    mov         eax,dword ptr [ebp-8]
 005E494F    cmp         byte ptr [eax+210],0;TCustomControlBar.FAligning:Boolean
>005E4956    jne         005E5817
 005E495C    mov         eax,dword ptr [ebp-8]
 005E495F    mov         byte ptr [eax+210],1;TCustomControlBar.FAligning:Boolean
 005E4966    xor         eax,eax
 005E4968    push        ebp
 005E4969    push        5E5810
 005E496E    push        dword ptr fs:[eax]
 005E4971    mov         dword ptr fs:[eax],esp
 005E4974    mov         edx,dword ptr [ebp-0C]
 005E4977    mov         eax,dword ptr [ebp-8]
 005E497A    call        005E58A4
 005E497F    mov         byte ptr [ebp-61],al
 005E4982    mov         eax,dword ptr [ebp-8]
 005E4985    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E498B    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>005E498F    jne         005E499B
 005E4991    call        @TryFinallyExit
>005E4996    jmp         005E5817
 005E499B    xor         eax,eax
 005E499D    mov         dword ptr [ebp-58],eax
 005E49A0    xor         eax,eax
 005E49A2    mov         dword ptr [ebp-5C],eax
 005E49A5    mov         eax,dword ptr [ebp-8]
 005E49A8    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E49AE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E49B1    dec         eax
 005E49B2    mov         dword ptr [ebp-60],eax
 005E49B5    mov         eax,dword ptr [ebp-5C]
 005E49B8    mov         edx,dword ptr [ebp-60]
 005E49BB    sub         edx,eax
>005E49BD    jl          005E4A00
 005E49BF    inc         edx
 005E49C0    mov         dword ptr [ebp-84],edx
 005E49C6    mov         dword ptr [ebp-14],eax
 005E49C9    mov         eax,dword ptr [ebp-8]
 005E49CC    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E49D2    mov         edx,dword ptr [ebp-14]
 005E49D5    call        TList.Get
 005E49DA    mov         dword ptr [ebp-20],eax
 005E49DD    mov         eax,dword ptr [ebp-20]
 005E49E0    mov         al,byte ptr [eax+15]
 005E49E3    mov         edx,dword ptr [ebp-20]
 005E49E6    mov         byte ptr [edx+38],al
 005E49E9    mov         eax,dword ptr [ebp-20]
 005E49EC    cmp         byte ptr [eax+15],0
>005E49F0    je          005E49F5
 005E49F2    inc         dword ptr [ebp-58]
 005E49F5    inc         dword ptr [ebp-14]
 005E49F8    dec         dword ptr [ebp-84]
>005E49FE    jne         005E49C9
 005E4A00    xor         eax,eax
 005E4A02    mov         dword ptr [ebp-4],eax
 005E4A05    mov         byte ptr [ebp-7D],0
 005E4A09    mov         dword ptr [ebp-7C],2
 005E4A10    cmp         dword ptr [ebp-4],0
>005E4A14    je          005E4A1D
 005E4A16    mov         byte ptr [ebp-7D],1
 005E4A1A    dec         dword ptr [ebp-7C]
 005E4A1D    cmp         dword ptr [ebp-7C],0
>005E4A21    jne         005E4A2D
 005E4A23    call        @TryFinallyExit
>005E4A28    jmp         005E5817
 005E4A2D    xor         eax,eax
 005E4A2F    mov         dword ptr [ebp-34],eax
 005E4A32    xor         eax,eax
 005E4A34    mov         dword ptr [ebp-38],eax
 005E4A37    mov         dword ptr [ebp-54],1
 005E4A3E    mov         eax,dword ptr [ebp-54]
 005E4A41    cmp         eax,dword ptr [ebp-58]
>005E4A44    jg          005E5646
 005E4A4A    cmp         dword ptr [ebp-54],1
>005E4A4E    jne         005E4A55
 005E4A50    xor         eax,eax
 005E4A52    mov         dword ptr [ebp-34],eax
 005E4A55    cmp         dword ptr [ebp-54],1
>005E4A59    jne         005E4A62
 005E4A5B    xor         eax,eax
 005E4A5D    mov         dword ptr [ebp-5C],eax
>005E4A60    jmp         005E4A69
 005E4A62    mov         eax,dword ptr [ebp-60]
 005E4A65    inc         eax
 005E4A66    mov         dword ptr [ebp-5C],eax
 005E4A69    mov         eax,dword ptr [ebp-8]
 005E4A6C    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4A72    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E4A75    dec         eax
 005E4A76    mov         dword ptr [ebp-60],eax
 005E4A79    mov         eax,dword ptr [ebp-5C]
 005E4A7C    mov         edx,dword ptr [ebp-60]
 005E4A7F    dec         edx
 005E4A80    sub         edx,eax
>005E4A82    jl          005E4AC8
 005E4A84    inc         edx
 005E4A85    mov         dword ptr [ebp-84],edx
 005E4A8B    mov         dword ptr [ebp-14],eax
 005E4A8E    mov         edx,dword ptr [ebp-14]
 005E4A91    inc         edx
 005E4A92    mov         eax,dword ptr [ebp-8]
 005E4A95    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4A9B    call        TList.Get
 005E4AA0    mov         dword ptr [ebp-20],eax
 005E4AA3    mov         eax,dword ptr [ebp-20]
 005E4AA6    cmp         byte ptr [eax+15],0
>005E4AAA    jne         005E4AB5
 005E4AAC    mov         eax,dword ptr [ebp-20]
 005E4AAF    cmp         byte ptr [eax+38],0
>005E4AB3    je          005E4ABD
 005E4AB5    mov         eax,dword ptr [ebp-14]
 005E4AB8    mov         dword ptr [ebp-60],eax
>005E4ABB    jmp         005E4AC8
 005E4ABD    inc         dword ptr [ebp-14]
 005E4AC0    dec         dword ptr [ebp-84]
>005E4AC6    jne         005E4A8E
 005E4AC8    mov         eax,dword ptr [ebp-10]
 005E4ACB    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 005E4ACE    mov         edx,dword ptr [ebp-10]
 005E4AD1    sub         eax,dword ptr [edx]
 005E4AD3    mov         dword ptr [ebp-24],eax
 005E4AD6    xor         eax,eax
 005E4AD8    mov         dword ptr [ebp-28],eax
 005E4ADB    xor         eax,eax
 005E4ADD    mov         dword ptr [ebp-2C],eax
 005E4AE0    mov         eax,dword ptr [ebp-5C]
 005E4AE3    mov         edx,dword ptr [ebp-60]
 005E4AE6    sub         edx,eax
>005E4AE8    jl          005E5217
 005E4AEE    inc         edx
 005E4AEF    mov         dword ptr [ebp-84],edx
 005E4AF5    mov         dword ptr [ebp-14],eax
 005E4AF8    mov         eax,dword ptr [ebp-8]
 005E4AFB    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4B01    mov         edx,dword ptr [ebp-14]
 005E4B04    call        TList.Get
 005E4B09    mov         dword ptr [ebp-20],eax
 005E4B0C    mov         eax,dword ptr [ebp-20]
 005E4B0F    cmp         byte ptr [eax+15],0
>005E4B13    jne         005E4B1E
 005E4B15    mov         eax,dword ptr [ebp-20]
 005E4B18    cmp         byte ptr [eax+38],0
>005E4B1C    je          005E4B4E
 005E4B1E    xor         eax,eax
 005E4B20    mov         dword ptr [ebp-28],eax
 005E4B23    xor         eax,eax
 005E4B25    mov         dword ptr [ebp-2C],eax
 005E4B28    mov         byte ptr [ebp-4D],0
 005E4B2C    cmp         byte ptr [ebp-4D],0
>005E4B30    je          005E4B3D
 005E4B32    mov         eax,dword ptr [ebp-20]
 005E4B35    mov         edx,dword ptr [ebp-34]
 005E4B38    mov         dword ptr [eax+3D],edx
>005E4B3B    jmp         005E4B46
 005E4B3D    mov         eax,dword ptr [ebp-20]
 005E4B40    mov         edx,dword ptr [ebp-34]
 005E4B43    mov         dword ptr [eax+1A],edx
 005E4B46    mov         eax,dword ptr [ebp-34]
 005E4B49    mov         dword ptr [ebp-38],eax
>005E4B4C    jmp         005E4B52
 005E4B4E    mov         byte ptr [ebp-4D],0
 005E4B52    mov         eax,dword ptr [ebp-20]
 005E4B55    mov         eax,dword ptr [eax]
 005E4B57    mov         dword ptr [ebp-4C],eax
 005E4B5A    mov         eax,dword ptr [ebp-8]
 005E4B5D    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E4B61    jne         005E4B70
 005E4B63    mov         eax,dword ptr [ebp-4C]
 005E4B66    cmp         byte ptr [eax+57],0
>005E4B6A    je          005E5208
 005E4B70    mov         eax,dword ptr [ebp-20]
 005E4B73    cmp         dword ptr [eax+30],0
>005E4B77    jne         005E4D1E
 005E4B7D    mov         eax,dword ptr [ebp-20]
 005E4B80    mov         eax,dword ptr [eax+20]
 005E4B83    mov         dword ptr [ebp-74],eax
 005E4B86    mov         eax,dword ptr [ebp-20]
 005E4B89    mov         eax,dword ptr [eax+4]
 005E4B8C    mov         edx,dword ptr [ebp-20]
 005E4B8F    add         eax,dword ptr [edx+0C]
 005E4B92    sub         dword ptr [ebp-74],eax
 005E4B95    lea         eax,[ebp-74]
 005E4B98    push        eax
 005E4B99    mov         eax,dword ptr [ebp-20]
 005E4B9C    add         eax,28
 005E4B9F    push        eax
 005E4BA0    mov         eax,dword ptr [ebp-20]
 005E4BA3    lea         ecx,[eax+4]
 005E4BA6    mov         edx,dword ptr [ebp-4C]
 005E4BA9    mov         eax,dword ptr [ebp-8]
 005E4BAC    mov         ebx,dword ptr [eax]
 005E4BAE    call        dword ptr [ebx+0D4];TCustomControlBar.sub_005E65CC
 005E4BB4    mov         eax,dword ptr [ebp-20]
 005E4BB7    mov         eax,dword ptr [eax+4]
 005E4BBA    add         eax,dword ptr [ebp-74]
 005E4BBD    mov         edx,dword ptr [ebp-20]
 005E4BC0    add         eax,dword ptr [edx+0C]
 005E4BC3    mov         edx,dword ptr [ebp-20]
 005E4BC6    mov         dword ptr [edx+20],eax
 005E4BC9    cmp         byte ptr [ebp-61],0
>005E4BCD    jne         005E4C9F
 005E4BD3    mov         eax,dword ptr [ebp-20]
 005E4BD6    cmp         dword ptr [eax+30],0
>005E4BDA    jne         005E4C9F
 005E4BE0    mov         eax,dword ptr [ebp-20]
 005E4BE3    mov         eax,dword ptr [eax]
 005E4BE5    cmp         eax,dword ptr [ebp-0C]
>005E4BE8    jne         005E4C9F
 005E4BEE    cmp         byte ptr [ebp-4D],0
>005E4BF2    je          005E4C7A
 005E4BF8    mov         eax,dword ptr [ebp-0C]
 005E4BFB    mov         edx,dword ptr [eax+44];TControl.Top:Integer
 005E4BFE    mov         eax,dword ptr [ebp-10]
 005E4C01    sub         edx,dword ptr [eax+4]
 005E4C04    mov         eax,dword ptr [ebp-20]
 005E4C07    sub         edx,dword ptr [eax+8]
 005E4C0A    mov         eax,dword ptr [ebp-0C]
 005E4C0D    mov         eax,dword ptr [eax+40];TControl.Left:Integer
 005E4C10    mov         ecx,dword ptr [ebp-10]
 005E4C13    sub         eax,dword ptr [ecx]
 005E4C15    mov         ecx,dword ptr [ebp-20]
 005E4C18    sub         eax,dword ptr [ecx+4]
 005E4C1B    lea         ecx,[ebp-0DC]
 005E4C21    call        Point
 005E4C26    mov         eax,dword ptr [ebp-20]
 005E4C29    mov         edx,dword ptr [ebp-0DC]
 005E4C2F    mov         dword ptr [eax+39],edx
 005E4C32    mov         edx,dword ptr [ebp-0D8]
 005E4C38    mov         dword ptr [eax+3D],edx
 005E4C3B    mov         eax,dword ptr [ebp-0C]
 005E4C3E    mov         eax,dword ptr [eax+48];TControl.Width:Integer
 005E4C41    mov         edx,dword ptr [ebp-20]
 005E4C44    add         eax,dword ptr [edx+4]
 005E4C47    mov         edx,dword ptr [ebp-20]
 005E4C4A    add         eax,dword ptr [edx+0C]
 005E4C4D    mov         edx,dword ptr [ebp-20]
 005E4C50    mov         dword ptr [edx+44],eax
 005E4C53    mov         eax,dword ptr [ebp-20]
 005E4C56    mov         eax,dword ptr [eax+24]
 005E4C59    push        eax
 005E4C5A    lea         eax,[ebp-0D4]
 005E4C60    push        eax
 005E4C61    mov         eax,dword ptr [ebp-20]
 005E4C64    mov         ecx,dword ptr [eax+44]
 005E4C67    mov         eax,dword ptr [ebp-20]
 005E4C6A    mov         edx,dword ptr [eax+3D]
 005E4C6D    mov         eax,dword ptr [ebp-20]
 005E4C70    mov         eax,dword ptr [eax+39]
 005E4C73    call        Bounds
>005E4C78    jmp         005E4C9F
 005E4C7A    mov         eax,dword ptr [ebp-20]
 005E4C7D    mov         eax,dword ptr [eax+24]
 005E4C80    push        eax
 005E4C81    lea         eax,[ebp-0D4]
 005E4C87    push        eax
 005E4C88    mov         eax,dword ptr [ebp-20]
 005E4C8B    mov         ecx,dword ptr [eax+20]
 005E4C8E    mov         eax,dword ptr [ebp-20]
 005E4C91    mov         edx,dword ptr [eax+1A]
 005E4C94    mov         eax,dword ptr [ebp-20]
 005E4C97    mov         eax,dword ptr [eax+16]
 005E4C9A    call        Bounds
 005E4C9F    mov         eax,dword ptr [ebp-20]
 005E4CA2    cmp         eax,dword ptr [ebp-4]
>005E4CA5    jne         005E4CCE
 005E4CA7    mov         eax,dword ptr [ebp-20]
 005E4CAA    mov         eax,dword ptr [eax+24]
 005E4CAD    push        eax
 005E4CAE    lea         eax,[ebp-0D4]
 005E4CB4    push        eax
 005E4CB5    mov         eax,dword ptr [ebp-20]
 005E4CB8    mov         ecx,dword ptr [eax+44]
 005E4CBB    mov         eax,dword ptr [ebp-20]
 005E4CBE    mov         edx,dword ptr [eax+3D]
 005E4CC1    mov         eax,dword ptr [ebp-20]
 005E4CC4    mov         eax,dword ptr [eax+39]
 005E4CC7    call        Bounds
>005E4CCC    jmp         005E4CF3
 005E4CCE    mov         eax,dword ptr [ebp-20]
 005E4CD1    mov         eax,dword ptr [eax+24]
 005E4CD4    push        eax
 005E4CD5    lea         eax,[ebp-0D4]
 005E4CDB    push        eax
 005E4CDC    mov         eax,dword ptr [ebp-20]
 005E4CDF    mov         ecx,dword ptr [eax+20]
 005E4CE2    mov         eax,dword ptr [ebp-20]
 005E4CE5    mov         edx,dword ptr [eax+1A]
 005E4CE8    mov         eax,dword ptr [ebp-20]
 005E4CEB    mov         eax,dword ptr [eax+16]
 005E4CEE    call        Bounds
 005E4CF3    lea         ecx,[ebp-0D4]
 005E4CF9    mov         edx,dword ptr [ebp-4C]
 005E4CFC    mov         eax,dword ptr [ebp-8]
 005E4CFF    mov         ebx,dword ptr [eax]
 005E4D01    call        dword ptr [ebx+0C8];TCustomControlBar.sub_005E7004
 005E4D07    mov         eax,dword ptr [ebp-0CC]
 005E4D0D    sub         eax,dword ptr [ebp-0D4]
 005E4D13    mov         edx,dword ptr [ebp-20]
 005E4D16    mov         dword ptr [edx+44],eax
>005E4D19    jmp         005E4DB5
 005E4D1E    mov         eax,dword ptr [ebp-20]
 005E4D21    mov         eax,dword ptr [eax+30]
 005E4D24    mov         dword ptr [ebp-88],eax
 005E4D2A    mov         eax,dword ptr [ebp-20]
 005E4D2D    mov         edx,dword ptr [ebp-88]
 005E4D33    mov         ecx,dword ptr [edx+16]
 005E4D36    mov         dword ptr [eax+16],ecx
 005E4D39    mov         ecx,dword ptr [edx+1A]
 005E4D3C    mov         dword ptr [eax+1A],ecx
 005E4D3F    mov         eax,dword ptr [ebp-20]
 005E4D42    mov         edx,dword ptr [ebp-88]
 005E4D48    mov         ecx,dword ptr [edx+39]
 005E4D4B    mov         dword ptr [eax+39],ecx
 005E4D4E    mov         ecx,dword ptr [edx+3D]
 005E4D51    mov         dword ptr [eax+3D],ecx
 005E4D54    mov         eax,dword ptr [ebp-88]
 005E4D5A    mov         eax,dword ptr [eax+24]
 005E4D5D    mov         edx,dword ptr [ebp-20]
 005E4D60    add         dword ptr [edx+1A],eax
 005E4D63    mov         eax,dword ptr [ebp-88]
 005E4D69    mov         eax,dword ptr [eax+24]
 005E4D6C    mov         edx,dword ptr [ebp-20]
 005E4D6F    add         dword ptr [edx+3D],eax
 005E4D72    mov         eax,dword ptr [ebp-88]
 005E4D78    mov         eax,dword ptr [eax+20]
 005E4D7B    mov         edx,dword ptr [ebp-20]
 005E4D7E    mov         dword ptr [edx+20],eax
 005E4D81    mov         eax,dword ptr [ebp-88]
 005E4D87    mov         eax,dword ptr [eax+44]
 005E4D8A    mov         edx,dword ptr [ebp-20]
 005E4D8D    mov         dword ptr [edx+44],eax
 005E4D90    mov         eax,dword ptr [ebp-20]
 005E4D93    mov         eax,dword ptr [eax+24]
 005E4D96    push        eax
 005E4D97    lea         eax,[ebp-0D4]
 005E4D9D    push        eax
 005E4D9E    mov         eax,dword ptr [ebp-20]
 005E4DA1    mov         ecx,dword ptr [eax+44]
 005E4DA4    mov         eax,dword ptr [ebp-20]
 005E4DA7    mov         edx,dword ptr [eax+3D]
 005E4DAA    mov         eax,dword ptr [ebp-20]
 005E4DAD    mov         eax,dword ptr [eax+39]
 005E4DB0    call        Bounds
 005E4DB5    mov         eax,dword ptr [ebp-20]
 005E4DB8    cmp         eax,dword ptr [ebp-4]
>005E4DBB    jne         005E4E04
 005E4DBD    mov         eax,dword ptr [ebp-20]
 005E4DC0    mov         dword ptr [ebp-8C],eax
 005E4DC6    mov         eax,dword ptr [ebp-8C]
 005E4DCC    mov         edx,dword ptr [ebp-0D4]
 005E4DD2    mov         dword ptr [eax+39],edx
 005E4DD5    mov         eax,dword ptr [ebp-8C]
 005E4DDB    mov         edx,dword ptr [ebp-0D0]
 005E4DE1    mov         dword ptr [eax+3D],edx
 005E4DE4    mov         eax,dword ptr [ebp-0CC]
 005E4DEA    sub         eax,dword ptr [ebp-0D4]
 005E4DF0    mov         edx,dword ptr [ebp-8C]
 005E4DF6    mov         dword ptr [edx+44],eax
 005E4DF9    xor         eax,eax
 005E4DFB    mov         dword ptr [ebp-4],eax
 005E4DFE    mov         byte ptr [ebp-7D],0
>005E4E02    jmp         005E4E2B
 005E4E04    mov         eax,dword ptr [ebp-20]
 005E4E07    mov         dword ptr [ebp-90],eax
 005E4E0D    mov         eax,dword ptr [ebp-90]
 005E4E13    mov         edx,dword ptr [ebp-0D4]
 005E4E19    mov         dword ptr [eax+16],edx
 005E4E1C    mov         eax,dword ptr [ebp-90]
 005E4E22    mov         edx,dword ptr [ebp-0D0]
 005E4E28    mov         dword ptr [eax+1A],edx
 005E4E2B    cmp         byte ptr [ebp-4D],0
>005E4E2F    je          005E4E4B
 005E4E31    mov         eax,dword ptr [ebp-20]
 005E4E34    mov         edx,dword ptr [eax+39]
 005E4E37    mov         dword ptr [ebp-44],edx
 005E4E3A    mov         edx,dword ptr [eax+3D]
 005E4E3D    mov         dword ptr [ebp-40],edx
 005E4E40    mov         eax,dword ptr [ebp-20]
 005E4E43    mov         eax,dword ptr [eax+44]
 005E4E46    mov         dword ptr [ebp-48],eax
>005E4E49    jmp         005E4E6C
 005E4E4B    mov         eax,dword ptr [ebp-0D4]
 005E4E51    mov         dword ptr [ebp-44],eax
 005E4E54    mov         eax,dword ptr [ebp-0D0]
 005E4E5A    mov         dword ptr [ebp-40],eax
 005E4E5D    mov         eax,dword ptr [ebp-0CC]
 005E4E63    sub         eax,dword ptr [ebp-0D4]
 005E4E69    mov         dword ptr [ebp-48],eax
 005E4E6C    mov         eax,dword ptr [ebp-44]
 005E4E6F    cmp         eax,dword ptr [ebp-28]
>005E4E72    jge         005E50B0
 005E4E78    cmp         dword ptr [ebp-2C],0
>005E4E7C    jle         005E50AA
 005E4E82    mov         eax,dword ptr [ebp-44]
 005E4E85    mov         dword ptr [ebp-68],eax
 005E4E88    mov         eax,dword ptr [ebp-44]
 005E4E8B    mov         dword ptr [ebp-70],eax
 005E4E8E    mov         eax,dword ptr [ebp-2C]
 005E4E91    mov         dword ptr [ebp-6C],eax
 005E4E94    mov         eax,dword ptr [ebp-14]
 005E4E97    dec         eax
 005E4E98    mov         edx,dword ptr [ebp-5C]
 005E4E9B    sub         edx,eax
>005E4E9D    jg          005E5087
 005E4EA3    dec         edx
 005E4EA4    mov         dword ptr [ebp-94],edx
 005E4EAA    mov         dword ptr [ebp-18],eax
 005E4EAD    mov         eax,dword ptr [ebp-8]
 005E4EB0    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4EB6    mov         edx,dword ptr [ebp-18]
 005E4EB9    call        TList.Get
 005E4EBE    mov         dword ptr [ebp-98],eax
 005E4EC4    mov         eax,dword ptr [ebp-8]
 005E4EC7    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E4ECB    jne         005E4EDF
 005E4ECD    mov         eax,dword ptr [ebp-98]
 005E4ED3    mov         eax,dword ptr [eax]
 005E4ED5    cmp         byte ptr [eax+57],0
>005E4ED9    je          005E5078
 005E4EDF    mov         eax,dword ptr [ebp-98]
 005E4EE5    mov         eax,dword ptr [eax+39]
 005E4EE8    mov         edx,dword ptr [ebp-98]
 005E4EEE    add         eax,dword ptr [edx+44]
 005E4EF1    cmp         eax,dword ptr [ebp-68]
>005E4EF4    jle         005E5087
 005E4EFA    mov         eax,dword ptr [ebp-98]
 005E4F00    mov         eax,dword ptr [eax+39]
 005E4F03    mov         edx,dword ptr [ebp-98]
 005E4F09    add         eax,dword ptr [edx+44]
 005E4F0C    sub         eax,dword ptr [ebp-68]
 005E4F0F    mov         dword ptr [ebp-1C],eax
 005E4F12    mov         eax,dword ptr [ebp-14]
 005E4F15    dec         eax
 005E4F16    cmp         eax,dword ptr [ebp-18]
>005E4F19    jle         005E4F35
 005E4F1B    mov         eax,dword ptr [ebp-98]
 005E4F21    mov         eax,dword ptr [eax+39]
 005E4F24    mov         edx,dword ptr [ebp-98]
 005E4F2A    add         eax,dword ptr [edx+44]
 005E4F2D    mov         edx,dword ptr [ebp-70]
 005E4F30    sub         edx,eax
 005E4F32    sub         dword ptr [ebp-6C],edx
 005E4F35    mov         eax,dword ptr [ebp-1C]
 005E4F38    cmp         eax,dword ptr [ebp-6C]
>005E4F3B    jle         005E4F43
 005E4F3D    mov         eax,dword ptr [ebp-6C]
 005E4F40    mov         dword ptr [ebp-1C],eax
 005E4F43    mov         eax,dword ptr [ebp-98]
 005E4F49    mov         eax,dword ptr [eax+39]
 005E4F4C    mov         dword ptr [ebp-70],eax
 005E4F4F    mov         eax,dword ptr [ebp-98]
 005E4F55    mov         edx,dword ptr [ebp-1C]
 005E4F58    sub         dword ptr [eax+39],edx
 005E4F5B    mov         eax,dword ptr [ebp-98]
 005E4F61    mov         eax,dword ptr [eax+44]
 005E4F64    sub         dword ptr [ebp-68],eax
 005E4F67    mov         eax,dword ptr [ebp-8]
 005E4F6A    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4F70    mov         edx,dword ptr [ebp-18]
 005E4F73    call        TList.Get
 005E4F78    mov         dword ptr [ebp-78],eax
 005E4F7B    push        ebp
 005E4F7C    mov         eax,dword ptr [ebp-78]
 005E4F7F    mov         ecx,dword ptr [eax+44]
 005E4F82    mov         eax,dword ptr [ebp-78]
 005E4F85    lea         edx,[eax+39]
 005E4F88    mov         eax,dword ptr [ebp-78]
 005E4F8B    call        005E48BC
 005E4F90    pop         ecx
 005E4F91    test        al,al
>005E4F93    jne         005E5087
 005E4F99    mov         eax,dword ptr [ebp-98]
 005E4F9F    mov         eax,dword ptr [eax+34]
 005E4FA2    mov         dword ptr [ebp-78],eax
 005E4FA5    cmp         dword ptr [ebp-78],0
>005E4FA9    je          005E5078
 005E4FAF    mov         eax,dword ptr [ebp-78]
 005E4FB2    mov         dword ptr [ebp-9C],eax
 005E4FB8    mov         eax,dword ptr [ebp-8]
 005E4FBB    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4FC1    mov         edx,dword ptr [ebp-18]
 005E4FC4    call        TList.Get
 005E4FC9    mov         edx,dword ptr [ebp-9C]
 005E4FCF    mov         ecx,dword ptr [eax+16]
 005E4FD2    mov         dword ptr [edx+16],ecx
 005E4FD5    mov         ecx,dword ptr [eax+1A]
 005E4FD8    mov         dword ptr [edx+1A],ecx
 005E4FDB    mov         eax,dword ptr [ebp-8]
 005E4FDE    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E4FE4    mov         edx,dword ptr [ebp-18]
 005E4FE7    call        TList.Get
 005E4FEC    mov         edx,dword ptr [ebp-9C]
 005E4FF2    mov         ecx,dword ptr [eax+39]
 005E4FF5    mov         dword ptr [edx+39],ecx
 005E4FF8    mov         ecx,dword ptr [eax+3D]
 005E4FFB    mov         dword ptr [edx+3D],ecx
 005E4FFE    mov         eax,dword ptr [ebp-9C]
 005E5004    mov         eax,dword ptr [eax+30]
 005E5007    mov         eax,dword ptr [eax+24]
 005E500A    mov         edx,dword ptr [ebp-9C]
 005E5010    add         dword ptr [edx+1A],eax
 005E5013    mov         eax,dword ptr [ebp-9C]
 005E5019    mov         eax,dword ptr [eax+30]
 005E501C    mov         eax,dword ptr [eax+24]
 005E501F    mov         edx,dword ptr [ebp-9C]
 005E5025    add         dword ptr [edx+3D],eax
 005E5028    mov         eax,dword ptr [ebp-8]
 005E502B    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5031    mov         edx,dword ptr [ebp-18]
 005E5034    call        TList.Get
 005E5039    mov         eax,dword ptr [eax+20]
 005E503C    mov         edx,dword ptr [ebp-9C]
 005E5042    mov         dword ptr [edx+20],eax
 005E5045    mov         eax,dword ptr [ebp-8]
 005E5048    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E504E    mov         edx,dword ptr [ebp-18]
 005E5051    call        TList.Get
 005E5056    mov         eax,dword ptr [eax+44]
 005E5059    mov         edx,dword ptr [ebp-9C]
 005E505F    mov         dword ptr [edx+44],eax
 005E5062    mov         eax,dword ptr [ebp-9C]
 005E5068    mov         eax,dword ptr [eax+34]
 005E506B    mov         dword ptr [ebp-78],eax
 005E506E    cmp         dword ptr [ebp-78],0
>005E5072    jne         005E4FAF
 005E5078    dec         dword ptr [ebp-18]
 005E507B    inc         dword ptr [ebp-94]
>005E5081    jne         005E4EAD
 005E5087    mov         eax,dword ptr [ebp-28]
 005E508A    sub         eax,dword ptr [ebp-44]
 005E508D    mov         dword ptr [ebp-70],eax
 005E5090    mov         eax,dword ptr [ebp-70]
 005E5093    cmp         eax,dword ptr [ebp-2C]
>005E5096    jle         005E509E
 005E5098    mov         eax,dword ptr [ebp-2C]
 005E509B    mov         dword ptr [ebp-70],eax
 005E509E    mov         eax,dword ptr [ebp-70]
 005E50A1    sub         dword ptr [ebp-2C],eax
 005E50A4    mov         eax,dword ptr [ebp-70]
 005E50A7    sub         dword ptr [ebp-28],eax
 005E50AA    mov         eax,dword ptr [ebp-28]
 005E50AD    mov         dword ptr [ebp-44],eax
 005E50B0    cmp         dword ptr [ebp-4],0
>005E50B4    je          005E50C0
 005E50B6    cmp         byte ptr [ebp-7D],0
>005E50BA    je          005E5217
 005E50C0    mov         eax,dword ptr [ebp-40]
 005E50C3    cmp         eax,dword ptr [ebp-38]
>005E50C6    je          005E50CE
 005E50C8    mov         eax,dword ptr [ebp-38]
 005E50CB    mov         dword ptr [ebp-40],eax
 005E50CE    mov         eax,dword ptr [ebp-20]
 005E50D1    mov         eax,dword ptr [eax+24]
 005E50D4    add         eax,dword ptr [ebp-40]
 005E50D7    cmp         eax,dword ptr [ebp-34]
>005E50DA    jle         005E50E8
 005E50DC    mov         eax,dword ptr [ebp-20]
 005E50DF    mov         eax,dword ptr [eax+24]
 005E50E2    add         eax,dword ptr [ebp-40]
 005E50E5    mov         dword ptr [ebp-34],eax
 005E50E8    mov         eax,dword ptr [ebp-44]
 005E50EB    sub         eax,dword ptr [ebp-28]
 005E50EE    add         dword ptr [ebp-2C],eax
 005E50F1    mov         eax,dword ptr [ebp-44]
 005E50F4    sub         eax,dword ptr [ebp-28]
 005E50F7    add         eax,dword ptr [ebp-48]
 005E50FA    add         dword ptr [ebp-28],eax
 005E50FD    mov         eax,dword ptr [ebp-20]
 005E5100    cmp         dword ptr [eax+30],0
>005E5104    jne         005E5120
 005E5106    mov         eax,dword ptr [ebp-20]
 005E5109    mov         edx,dword ptr [ebp-44]
 005E510C    mov         dword ptr [eax+39],edx
 005E510F    mov         edx,dword ptr [ebp-40]
 005E5112    mov         dword ptr [eax+3D],edx
 005E5115    mov         eax,dword ptr [ebp-20]
 005E5118    mov         edx,dword ptr [ebp-48]
 005E511B    mov         dword ptr [eax+44],edx
>005E511E    jmp         005E5164
 005E5120    push        ebp
 005E5121    lea         edx,[ebp-44]
 005E5124    mov         ecx,dword ptr [ebp-48]
 005E5127    mov         eax,dword ptr [ebp-20]
 005E512A    call        005E48BC
 005E512F    pop         ecx
 005E5130    test        al,al
>005E5132    jne         005E5217
 005E5138    mov         eax,dword ptr [ebp-20]
 005E513B    cmp         byte ptr [eax+15],0
>005E513F    jne         005E5164
 005E5141    mov         eax,dword ptr [ebp-20]
 005E5144    mov         eax,dword ptr [eax+39]
 005E5147    cmp         eax,dword ptr [ebp-44]
>005E514A    jge         005E5164
 005E514C    mov         eax,dword ptr [ebp-20]
 005E514F    mov         edx,dword ptr [ebp-44]
 005E5152    mov         dword ptr [eax+39],edx
 005E5155    mov         edx,dword ptr [ebp-40]
 005E5158    mov         dword ptr [eax+3D],edx
 005E515B    mov         eax,dword ptr [ebp-20]
 005E515E    mov         edx,dword ptr [ebp-48]
 005E5161    mov         dword ptr [eax+44],edx
 005E5164    mov         eax,dword ptr [ebp-20]
 005E5167    mov         eax,dword ptr [eax+34]
 005E516A    mov         dword ptr [ebp-78],eax
 005E516D    cmp         dword ptr [ebp-78],0
>005E5171    je          005E5208
 005E5177    mov         eax,dword ptr [ebp-78]
 005E517A    mov         dword ptr [ebp-0A0],eax
 005E5180    mov         eax,dword ptr [ebp-0A0]
 005E5186    mov         edx,dword ptr [ebp-20]
 005E5189    mov         ecx,dword ptr [edx+16]
 005E518C    mov         dword ptr [eax+16],ecx
 005E518F    mov         ecx,dword ptr [edx+1A]
 005E5192    mov         dword ptr [eax+1A],ecx
 005E5195    mov         eax,dword ptr [ebp-0A0]
 005E519B    mov         edx,dword ptr [ebp-20]
 005E519E    mov         ecx,dword ptr [edx+39]
 005E51A1    mov         dword ptr [eax+39],ecx
 005E51A4    mov         ecx,dword ptr [edx+3D]
 005E51A7    mov         dword ptr [eax+3D],ecx
 005E51AA    mov         eax,dword ptr [ebp-0A0]
 005E51B0    mov         eax,dword ptr [eax+30]
 005E51B3    mov         eax,dword ptr [eax+24]
 005E51B6    mov         edx,dword ptr [ebp-0A0]
 005E51BC    add         dword ptr [edx+1A],eax
 005E51BF    mov         eax,dword ptr [ebp-0A0]
 005E51C5    mov         eax,dword ptr [eax+30]
 005E51C8    mov         eax,dword ptr [eax+24]
 005E51CB    mov         edx,dword ptr [ebp-0A0]
 005E51D1    add         dword ptr [edx+3D],eax
 005E51D4    mov         eax,dword ptr [ebp-20]
 005E51D7    mov         eax,dword ptr [eax+20]
 005E51DA    mov         edx,dword ptr [ebp-0A0]
 005E51E0    mov         dword ptr [edx+20],eax
 005E51E3    mov         eax,dword ptr [ebp-20]
 005E51E6    mov         eax,dword ptr [eax+44]
 005E51E9    mov         edx,dword ptr [ebp-0A0]
 005E51EF    mov         dword ptr [edx+44],eax
 005E51F2    mov         eax,dword ptr [ebp-0A0]
 005E51F8    mov         eax,dword ptr [eax+34]
 005E51FB    mov         dword ptr [ebp-78],eax
 005E51FE    cmp         dword ptr [ebp-78],0
>005E5202    jne         005E5177
 005E5208    inc         dword ptr [ebp-14]
 005E520B    dec         dword ptr [ebp-84]
>005E5211    jne         005E4AF8
 005E5217    cmp         dword ptr [ebp-4],0
>005E521B    je          005E5227
 005E521D    cmp         byte ptr [ebp-7D],0
>005E5221    je          005E5646
 005E5227    mov         eax,dword ptr [ebp-24]
 005E522A    sub         eax,dword ptr [ebp-28]
 005E522D    mov         dword ptr [ebp-30],eax
 005E5230    cmp         dword ptr [ebp-30],0
>005E5234    jge         005E5637
 005E523A    mov         eax,dword ptr [ebp-10]
 005E523D    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 005E5240    mov         edx,dword ptr [ebp-10]
 005E5243    sub         eax,dword ptr [edx]
 005E5245    mov         dword ptr [ebp-24],eax
 005E5248    mov         eax,dword ptr [ebp-28]
 005E524B    mov         dword ptr [ebp-70],eax
 005E524E    mov         eax,dword ptr [ebp-2C]
 005E5251    mov         dword ptr [ebp-6C],eax
 005E5254    mov         eax,dword ptr [ebp-60]
 005E5257    mov         edx,dword ptr [ebp-5C]
 005E525A    sub         edx,eax
>005E525C    jg          005E539B
 005E5262    dec         edx
 005E5263    mov         dword ptr [ebp-84],edx
 005E5269    mov         dword ptr [ebp-14],eax
 005E526C    mov         eax,dword ptr [ebp-8]
 005E526F    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5275    mov         edx,dword ptr [ebp-14]
 005E5278    call        TList.Get
 005E527D    mov         dword ptr [ebp-20],eax
 005E5280    mov         eax,dword ptr [ebp-20]
 005E5283    mov         eax,dword ptr [eax]
 005E5285    mov         dword ptr [ebp-4C],eax
 005E5288    mov         eax,dword ptr [ebp-8]
 005E528B    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E528F    jne         005E529E
 005E5291    mov         eax,dword ptr [ebp-4C]
 005E5294    cmp         byte ptr [eax+57],0
>005E5298    je          005E538C
 005E529E    mov         eax,dword ptr [ebp-20]
 005E52A1    mov         eax,dword ptr [eax+39]
 005E52A4    mov         edx,dword ptr [ebp-20]
 005E52A7    add         eax,dword ptr [edx+44]
 005E52AA    cmp         eax,dword ptr [ebp-24]
>005E52AD    jle         005E538C
 005E52B3    mov         eax,dword ptr [ebp-20]
 005E52B6    mov         eax,dword ptr [eax+39]
 005E52B9    mov         edx,dword ptr [ebp-20]
 005E52BC    add         eax,dword ptr [edx+44]
 005E52BF    sub         eax,dword ptr [ebp-24]
 005E52C2    mov         dword ptr [ebp-3C],eax
 005E52C5    mov         eax,dword ptr [ebp-14]
 005E52C8    cmp         eax,dword ptr [ebp-60]
>005E52CB    jge         005E52E1
 005E52CD    mov         eax,dword ptr [ebp-20]
 005E52D0    mov         eax,dword ptr [eax+39]
 005E52D3    mov         edx,dword ptr [ebp-20]
 005E52D6    add         eax,dword ptr [edx+44]
 005E52D9    mov         edx,dword ptr [ebp-70]
 005E52DC    sub         edx,eax
 005E52DE    sub         dword ptr [ebp-6C],edx
 005E52E1    mov         eax,dword ptr [ebp-3C]
 005E52E4    cmp         eax,dword ptr [ebp-6C]
>005E52E7    jg          005E52F1
 005E52E9    mov         eax,dword ptr [ebp-3C]
 005E52EC    mov         dword ptr [ebp-30],eax
>005E52EF    jmp         005E52F7
 005E52F1    mov         eax,dword ptr [ebp-6C]
 005E52F4    mov         dword ptr [ebp-30],eax
 005E52F7    mov         eax,dword ptr [ebp-30]
 005E52FA    cmp         eax,dword ptr [ebp-6C]
>005E52FD    jg          005E539B
 005E5303    mov         eax,dword ptr [ebp-20]
 005E5306    mov         eax,dword ptr [eax+39]
 005E5309    mov         dword ptr [ebp-70],eax
 005E530C    mov         eax,dword ptr [ebp-20]
 005E530F    mov         edx,dword ptr [ebp-30]
 005E5312    sub         dword ptr [eax+39],edx
 005E5315    mov         eax,dword ptr [ebp-20]
 005E5318    mov         eax,dword ptr [eax+44]
 005E531B    sub         dword ptr [ebp-24],eax
 005E531E    push        ebp
 005E531F    mov         eax,dword ptr [ebp-20]
 005E5322    mov         ecx,dword ptr [eax+44]
 005E5325    mov         eax,dword ptr [ebp-20]
 005E5328    lea         edx,[eax+39]
 005E532B    mov         eax,dword ptr [ebp-20]
 005E532E    call        005E48BC
 005E5333    pop         ecx
 005E5334    test        al,al
>005E5336    jne         005E539B
 005E5338    mov         eax,dword ptr [ebp-20]
 005E533B    mov         eax,dword ptr [eax+34]
 005E533E    mov         dword ptr [ebp-78],eax
 005E5341    cmp         dword ptr [ebp-78],0
>005E5345    je          005E538C
 005E5347    mov         eax,dword ptr [ebp-78]
 005E534A    mov         dword ptr [ebp-0A4],eax
 005E5350    mov         eax,dword ptr [ebp-0A4]
 005E5356    mov         edx,dword ptr [ebp-20]
 005E5359    mov         ecx,dword ptr [edx+39]
 005E535C    mov         dword ptr [eax+39],ecx
 005E535F    mov         ecx,dword ptr [edx+3D]
 005E5362    mov         dword ptr [eax+3D],ecx
 005E5365    mov         eax,dword ptr [ebp-0A4]
 005E536B    mov         eax,dword ptr [eax+30]
 005E536E    mov         eax,dword ptr [eax+24]
 005E5371    mov         edx,dword ptr [ebp-0A4]
 005E5377    add         dword ptr [edx+3D],eax
 005E537A    mov         eax,dword ptr [ebp-0A4]
 005E5380    mov         eax,dword ptr [eax+34]
 005E5383    mov         dword ptr [ebp-78],eax
 005E5386    cmp         dword ptr [ebp-78],0
>005E538A    jne         005E5347
 005E538C    dec         dword ptr [ebp-14]
 005E538F    inc         dword ptr [ebp-84]
>005E5395    jne         005E526C
 005E539B    cmp         dword ptr [ebp-4],0
>005E539F    je          005E53AB
 005E53A1    cmp         byte ptr [ebp-7D],0
>005E53A5    je          005E5646
 005E53AB    cmp         dword ptr [ebp-24],0
>005E53AF    jge         005E555B
 005E53B5    mov         eax,dword ptr [ebp-10]
 005E53B8    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 005E53BB    mov         edx,dword ptr [ebp-10]
 005E53BE    sub         eax,dword ptr [edx]
 005E53C0    mov         dword ptr [ebp-24],eax
 005E53C3    mov         eax,dword ptr [ebp-60]
 005E53C6    mov         edx,dword ptr [ebp-5C]
 005E53C9    sub         edx,eax
>005E53CB    jg          005E555B
 005E53D1    dec         edx
 005E53D2    mov         dword ptr [ebp-84],edx
 005E53D8    mov         dword ptr [ebp-14],eax
 005E53DB    mov         eax,dword ptr [ebp-8]
 005E53DE    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E53E4    mov         edx,dword ptr [ebp-14]
 005E53E7    call        TList.Get
 005E53EC    mov         dword ptr [ebp-20],eax
 005E53EF    mov         eax,dword ptr [ebp-20]
 005E53F2    mov         eax,dword ptr [eax]
 005E53F4    mov         dword ptr [ebp-4C],eax
 005E53F7    mov         eax,dword ptr [ebp-8]
 005E53FA    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E53FE    jne         005E540D
 005E5400    mov         eax,dword ptr [ebp-4C]
 005E5403    cmp         byte ptr [eax+57],0
>005E5407    je          005E554C
 005E540D    mov         eax,dword ptr [ebp-20]
 005E5410    mov         eax,dword ptr [eax+39]
 005E5413    mov         edx,dword ptr [ebp-20]
 005E5416    add         eax,dword ptr [edx+44]
 005E5419    cmp         eax,dword ptr [ebp-24]
>005E541C    jle         005E5543
 005E5422    mov         eax,dword ptr [ebp-20]
 005E5425    mov         eax,dword ptr [eax+39]
 005E5428    mov         edx,dword ptr [ebp-20]
 005E542B    add         eax,dword ptr [edx+44]
 005E542E    sub         eax,dword ptr [ebp-24]
 005E5431    mov         edx,dword ptr [ebp-20]
 005E5434    sub         dword ptr [edx+44],eax
 005E5437    mov         eax,dword ptr [ebp-4C]
 005E543A    mov         eax,dword ptr [eax+74]
 005E543D    mov         eax,dword ptr [eax+14]
 005E5440    mov         edx,dword ptr [ebp-20]
 005E5443    add         eax,dword ptr [edx+4]
 005E5446    mov         edx,dword ptr [ebp-20]
 005E5449    add         eax,dword ptr [edx+0C]
 005E544C    mov         edx,dword ptr [ebp-20]
 005E544F    cmp         eax,dword ptr [edx+44]
>005E5452    jle         005E546F
 005E5454    mov         eax,dword ptr [ebp-4C]
 005E5457    mov         eax,dword ptr [eax+74]
 005E545A    mov         eax,dword ptr [eax+14]
 005E545D    mov         edx,dword ptr [ebp-20]
 005E5460    add         eax,dword ptr [edx+4]
 005E5463    mov         edx,dword ptr [ebp-20]
 005E5466    add         eax,dword ptr [edx+0C]
 005E5469    mov         edx,dword ptr [ebp-20]
 005E546C    mov         dword ptr [edx+44],eax
 005E546F    mov         eax,dword ptr [ebp-20]
 005E5472    mov         eax,dword ptr [eax+39]
 005E5475    mov         edx,dword ptr [ebp-20]
 005E5478    add         eax,dword ptr [edx+44]
 005E547B    cmp         eax,dword ptr [ebp-24]
>005E547E    jle         005E54AD
 005E5480    mov         eax,dword ptr [ebp-20]
 005E5483    mov         eax,dword ptr [eax+39]
 005E5486    mov         edx,dword ptr [ebp-20]
 005E5489    add         eax,dword ptr [edx+44]
 005E548C    sub         eax,dword ptr [ebp-24]
 005E548F    mov         edx,dword ptr [ebp-20]
 005E5492    sub         dword ptr [edx+39],eax
 005E5495    mov         eax,dword ptr [ebp-20]
 005E5498    mov         eax,dword ptr [eax+39]
 005E549B    mov         edx,dword ptr [ebp-10]
 005E549E    cmp         eax,dword ptr [edx]
>005E54A0    jge         005E54AD
 005E54A2    mov         eax,dword ptr [ebp-10]
 005E54A5    mov         eax,dword ptr [eax]
 005E54A7    mov         edx,dword ptr [ebp-20]
 005E54AA    mov         dword ptr [edx+39],eax
 005E54AD    push        ebp
 005E54AE    mov         eax,dword ptr [ebp-20]
 005E54B1    mov         ecx,dword ptr [eax+44]
 005E54B4    mov         eax,dword ptr [ebp-20]
 005E54B7    lea         edx,[eax+39]
 005E54BA    mov         eax,dword ptr [ebp-20]
 005E54BD    call        005E48BC
 005E54C2    pop         ecx
 005E54C3    test        al,al
>005E54C5    jne         005E555B
 005E54CB    mov         eax,dword ptr [ebp-20]
 005E54CE    mov         eax,dword ptr [eax+34]
 005E54D1    mov         dword ptr [ebp-78],eax
 005E54D4    cmp         dword ptr [ebp-78],0
>005E54D8    je          005E5543
 005E54DA    mov         eax,dword ptr [ebp-78]
 005E54DD    mov         dword ptr [ebp-0A8],eax
 005E54E3    mov         eax,dword ptr [ebp-0A8]
 005E54E9    mov         edx,dword ptr [ebp-20]
 005E54EC    mov         ecx,dword ptr [edx+16]
 005E54EF    mov         dword ptr [eax+16],ecx
 005E54F2    mov         ecx,dword ptr [edx+1A]
 005E54F5    mov         dword ptr [eax+1A],ecx
 005E54F8    mov         eax,dword ptr [ebp-0A8]
 005E54FE    mov         edx,dword ptr [ebp-20]
 005E5501    mov         ecx,dword ptr [edx+39]
 005E5504    mov         dword ptr [eax+39],ecx
 005E5507    mov         ecx,dword ptr [edx+3D]
 005E550A    mov         dword ptr [eax+3D],ecx
 005E550D    mov         eax,dword ptr [ebp-0A8]
 005E5513    mov         eax,dword ptr [eax+30]
 005E5516    mov         eax,dword ptr [eax+24]
 005E5519    mov         edx,dword ptr [ebp-0A8]
 005E551F    add         dword ptr [edx+3D],eax
 005E5522    mov         eax,dword ptr [ebp-20]
 005E5525    mov         eax,dword ptr [eax+44]
 005E5528    mov         edx,dword ptr [ebp-0A8]
 005E552E    mov         dword ptr [edx+44],eax
 005E5531    mov         eax,dword ptr [ebp-0A8]
 005E5537    mov         eax,dword ptr [eax+34]
 005E553A    mov         dword ptr [ebp-78],eax
 005E553D    cmp         dword ptr [ebp-78],0
>005E5541    jne         005E54DA
 005E5543    mov         eax,dword ptr [ebp-20]
 005E5546    mov         eax,dword ptr [eax+44]
 005E5549    sub         dword ptr [ebp-24],eax
 005E554C    dec         dword ptr [ebp-14]
 005E554F    inc         dword ptr [ebp-84]
>005E5555    jne         005E53DB
 005E555B    cmp         dword ptr [ebp-4],0
>005E555F    je          005E556B
 005E5561    cmp         byte ptr [ebp-7D],0
>005E5565    je          005E5646
 005E556B    cmp         dword ptr [ebp-24],0
>005E556F    jge         005E5632
 005E5575    mov         eax,dword ptr [ebp-5C]
 005E5578    cmp         eax,dword ptr [ebp-60]
>005E557B    je          005E5632
 005E5581    mov         eax,dword ptr [ebp-8]
 005E5584    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E558A    mov         edx,dword ptr [ebp-60]
 005E558D    call        TList.Get
 005E5592    mov         dword ptr [ebp-20],eax
 005E5595    mov         eax,dword ptr [ebp-20]
 005E5598    xor         edx,edx
 005E559A    mov         dword ptr [eax+39],edx
 005E559D    mov         eax,dword ptr [ebp-20]
 005E55A0    mov         eax,dword ptr [eax+20]
 005E55A3    mov         edx,dword ptr [ebp-20]
 005E55A6    mov         dword ptr [edx+44],eax
 005E55A9    mov         eax,dword ptr [ebp-20]
 005E55AC    mov         byte ptr [eax+38],1
 005E55B0    inc         dword ptr [ebp-58]
 005E55B3    push        ebp
 005E55B4    mov         eax,dword ptr [ebp-20]
 005E55B7    mov         ecx,dword ptr [eax+44]
 005E55BA    mov         eax,dword ptr [ebp-20]
 005E55BD    lea         edx,[eax+39]
 005E55C0    mov         eax,dword ptr [ebp-20]
 005E55C3    call        005E48BC
 005E55C8    pop         ecx
 005E55C9    test        al,al
>005E55CB    jne         005E5646
 005E55CD    mov         eax,dword ptr [ebp-20]
 005E55D0    mov         eax,dword ptr [eax+34]
 005E55D3    mov         dword ptr [ebp-78],eax
 005E55D6    cmp         dword ptr [ebp-78],0
>005E55DA    je          005E563A
 005E55DC    mov         eax,dword ptr [ebp-78]
 005E55DF    mov         dword ptr [ebp-0AC],eax
 005E55E5    mov         eax,dword ptr [ebp-0AC]
 005E55EB    mov         edx,dword ptr [ebp-20]
 005E55EE    mov         ecx,dword ptr [edx+39]
 005E55F1    mov         dword ptr [eax+39],ecx
 005E55F4    mov         ecx,dword ptr [edx+3D]
 005E55F7    mov         dword ptr [eax+3D],ecx
 005E55FA    mov         eax,dword ptr [ebp-0AC]
 005E5600    mov         eax,dword ptr [eax+30]
 005E5603    mov         eax,dword ptr [eax+24]
 005E5606    mov         edx,dword ptr [ebp-0AC]
 005E560C    add         dword ptr [edx+3D],eax
 005E560F    mov         eax,dword ptr [ebp-20]
 005E5612    mov         eax,dword ptr [eax+44]
 005E5615    mov         edx,dword ptr [ebp-0AC]
 005E561B    mov         dword ptr [edx+44],eax
 005E561E    mov         eax,dword ptr [ebp-0AC]
 005E5624    mov         eax,dword ptr [eax+34]
 005E5627    mov         dword ptr [ebp-78],eax
 005E562A    cmp         dword ptr [ebp-78],0
>005E562E    jne         005E55DC
>005E5630    jmp         005E563A
 005E5632    inc         dword ptr [ebp-54]
>005E5635    jmp         005E563A
 005E5637    inc         dword ptr [ebp-54]
 005E563A    mov         eax,dword ptr [ebp-54]
 005E563D    cmp         eax,dword ptr [ebp-58]
>005E5640    jle         005E4A4A
 005E5646    cmp         dword ptr [ebp-4],0
>005E564A    jne         005E4A10
 005E5650    mov         eax,dword ptr [ebp-8]
 005E5653    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5659    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E565C    dec         eax
 005E565D    test        eax,eax
>005E565F    jl          005E57D8
 005E5665    inc         eax
 005E5666    mov         dword ptr [ebp-84],eax
 005E566C    mov         dword ptr [ebp-14],0
 005E5673    mov         eax,dword ptr [ebp-8]
 005E5676    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E567C    mov         edx,dword ptr [ebp-14]
 005E567F    call        TList.Get
 005E5684    mov         dword ptr [ebp-20],eax
 005E5687    mov         eax,dword ptr [ebp-20]
 005E568A    mov         dword ptr [ebp-0B0],eax
 005E5690    mov         eax,dword ptr [ebp-0B0]
 005E5696    cmp         dword ptr [eax+30],0
>005E569A    jne         005E57C9
 005E56A0    mov         eax,dword ptr [ebp-8]
 005E56A3    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E56A7    jne         005E56BB
 005E56A9    mov         eax,dword ptr [ebp-0B0]
 005E56AF    mov         eax,dword ptr [eax]
 005E56B1    cmp         byte ptr [eax+57],0
>005E56B5    je          005E57C9
 005E56BB    mov         eax,dword ptr [ebp-0B0]
 005E56C1    add         eax,4
 005E56C4    mov         dword ptr [ebp-0B4],eax
 005E56CA    mov         eax,dword ptr [ebp-0B0]
 005E56D0    mov         eax,dword ptr [eax+3D]
 005E56D3    mov         edx,dword ptr [ebp-20]
 005E56D6    add         eax,dword ptr [edx+24]
 005E56D9    mov         edx,dword ptr [ebp-0B4]
 005E56DF    sub         eax,dword ptr [edx+0C]
 005E56E2    push        eax
 005E56E3    lea         eax,[ebp-0C4]
 005E56E9    push        eax
 005E56EA    mov         eax,dword ptr [ebp-0B0]
 005E56F0    mov         ecx,dword ptr [eax+39]
 005E56F3    mov         eax,dword ptr [ebp-0B0]
 005E56F9    add         ecx,dword ptr [eax+44]
 005E56FC    mov         eax,dword ptr [ebp-0B4]
 005E5702    sub         ecx,dword ptr [eax+8]
 005E5705    mov         eax,dword ptr [ebp-0B4]
 005E570B    mov         edx,dword ptr [eax+4]
 005E570E    mov         eax,dword ptr [ebp-0B0]
 005E5714    add         edx,dword ptr [eax+3D]
 005E5717    mov         eax,dword ptr [ebp-0B4]
 005E571D    mov         eax,dword ptr [eax]
 005E571F    mov         ebx,dword ptr [ebp-0B0]
 005E5725    add         eax,dword ptr [ebx+39]
 005E5728    call        Rect
 005E572D    mov         eax,dword ptr [ebp-0B0]
 005E5733    mov         eax,dword ptr [eax+34]
 005E5736    mov         dword ptr [ebp-78],eax
 005E5739    cmp         dword ptr [ebp-78],0
>005E573D    je          005E575A
 005E573F    mov         eax,dword ptr [ebp-78]
 005E5742    mov         eax,dword ptr [eax+24]
 005E5745    add         dword ptr [ebp-0B8],eax
 005E574B    mov         eax,dword ptr [ebp-78]
 005E574E    mov         eax,dword ptr [eax+34]
 005E5751    mov         dword ptr [ebp-78],eax
 005E5754    cmp         dword ptr [ebp-78],0
>005E5758    jne         005E573F
 005E575A    mov         eax,dword ptr [ebp-0B0]
 005E5760    mov         eax,dword ptr [eax]
 005E5762    mov         eax,dword ptr [eax+40]
 005E5765    cmp         eax,dword ptr [ebp-0C4]
>005E576B    jne         005E57B2
 005E576D    mov         eax,dword ptr [ebp-0B0]
 005E5773    mov         eax,dword ptr [eax]
 005E5775    mov         eax,dword ptr [eax+44]
 005E5778    cmp         eax,dword ptr [ebp-0C0]
>005E577E    jne         005E57B2
 005E5780    mov         eax,dword ptr [ebp-0BC]
 005E5786    sub         eax,dword ptr [ebp-0C4]
 005E578C    mov         edx,dword ptr [ebp-0B0]
 005E5792    mov         edx,dword ptr [edx]
 005E5794    cmp         eax,dword ptr [edx+48]
>005E5797    jne         005E57B2
 005E5799    mov         eax,dword ptr [ebp-0B8]
 005E579F    sub         eax,dword ptr [ebp-0C0]
 005E57A5    mov         edx,dword ptr [ebp-0B0]
 005E57AB    mov         edx,dword ptr [edx]
 005E57AD    cmp         eax,dword ptr [edx+4C]
>005E57B0    je          005E57C9
 005E57B2    mov         byte ptr [ebp-62],1
 005E57B6    lea         edx,[ebp-0C4]
 005E57BC    mov         eax,dword ptr [ebp-0B0]
 005E57C2    mov         eax,dword ptr [eax]
 005E57C4    call        005F2E58
 005E57C9    inc         dword ptr [ebp-14]
 005E57CC    dec         dword ptr [ebp-84]
>005E57D2    jne         005E5673
 005E57D8    cmp         byte ptr [ebp-62],0
>005E57DC    jne         005E57E4
 005E57DE    cmp         dword ptr [ebp-0C],0
>005E57E2    je          005E57EC
 005E57E4    mov         eax,dword ptr [ebp-8]
 005E57E7    mov         edx,dword ptr [eax]
 005E57E9    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E57EC    mov         eax,dword ptr [ebp-8]
 005E57EF    mov         si,0FFEE
 005E57F3    call        @CallDynaInst;TWinControl.sub_005F66E8
 005E57F8    xor         eax,eax
 005E57FA    pop         edx
 005E57FB    pop         ecx
 005E57FC    pop         ecx
 005E57FD    mov         dword ptr fs:[eax],edx
 005E5800    push        5E5817
 005E5805    mov         eax,dword ptr [ebp-8]
 005E5808    mov         byte ptr [eax+210],0;TCustomControlBar.FAligning:Boolean
 005E580F    ret
>005E5810    jmp         @HandleFinally
>005E5815    jmp         005E5805
 005E5817    pop         esi
 005E5818    pop         ebx
 005E5819    mov         esp,ebp
 005E581B    pop         ebp
 005E581C    ret
*}
end;

//005E5820
{*procedure sub_005E5820(?:TList; ?:?);
begin
 005E5820    push        ebp
 005E5821    mov         ebp,esp
 005E5823    add         esp,0FFFFFFEC
 005E5826    mov         dword ptr [ebp-8],edx
 005E5829    mov         dword ptr [ebp-4],eax
 005E582C    mov         eax,dword ptr [ebp-4]
 005E582F    mov         eax,dword ptr [eax+8]
 005E5832    dec         eax
 005E5833    test        eax,eax
>005E5835    jl          005E5892
 005E5837    inc         eax
 005E5838    mov         dword ptr [ebp-10],eax
 005E583B    mov         dword ptr [ebp-0C],0
 005E5842    mov         edx,dword ptr [ebp-0C]
 005E5845    mov         eax,dword ptr [ebp-4]
 005E5848    call        TList.Get
 005E584D    mov         dword ptr [ebp-14],eax
 005E5850    mov         eax,dword ptr [ebp-8]
 005E5853    mov         eax,dword ptr [eax+44]
 005E5856    mov         edx,dword ptr [ebp-14]
 005E5859    cmp         eax,dword ptr [edx+44]
>005E585C    jl          005E587A
 005E585E    mov         eax,dword ptr [ebp-8]
 005E5861    mov         eax,dword ptr [eax+44]
 005E5864    mov         edx,dword ptr [ebp-14]
 005E5867    cmp         eax,dword ptr [edx+44]
>005E586A    jne         005E588A
 005E586C    mov         eax,dword ptr [ebp-8]
 005E586F    mov         eax,dword ptr [eax+40]
 005E5872    mov         edx,dword ptr [ebp-14]
 005E5875    cmp         eax,dword ptr [edx+40]
>005E5878    jge         005E588A
 005E587A    mov         ecx,dword ptr [ebp-8]
 005E587D    mov         edx,dword ptr [ebp-0C]
 005E5880    mov         eax,dword ptr [ebp-4]
 005E5883    call        TList.Insert
>005E5888    jmp         005E589D
 005E588A    inc         dword ptr [ebp-0C]
 005E588D    dec         dword ptr [ebp-10]
>005E5890    jne         005E5842
 005E5892    mov         edx,dword ptr [ebp-8]
 005E5895    mov         eax,dword ptr [ebp-4]
 005E5898    call        TList.Add
 005E589D    mov         esp,ebp
 005E589F    pop         ebp
 005E58A0    ret
end;*}

//005E58A4
{*function sub_005E58A4(?:TCustomControlBar; ?:TControl):?;
begin
 005E58A4    push        ebp
 005E58A5    mov         ebp,esp
 005E58A7    add         esp,0FFFFFF84
 005E58AA    push        ebx
 005E58AB    mov         dword ptr [ebp-8],edx
 005E58AE    mov         dword ptr [ebp-4],eax
 005E58B1    mov         byte ptr [ebp-9],0
 005E58B5    mov         byte ptr [ebp-49],0
 005E58B9    mov         dl,1
 005E58BB    mov         eax,[006422A4];TList
 005E58C0    call        TObject.Create;TList.Create
 005E58C5    mov         dword ptr [ebp-2C],eax
 005E58C8    mov         dl,1
 005E58CA    mov         eax,[006422A4];TList
 005E58CF    call        TObject.Create;TList.Create
 005E58D4    mov         dword ptr [ebp-40],eax
 005E58D7    mov         dl,1
 005E58D9    mov         eax,[006422A4];TList
 005E58DE    call        TObject.Create;TList.Create
 005E58E3    mov         dword ptr [ebp-44],eax
 005E58E6    mov         dl,1
 005E58E8    mov         eax,[006422A4];TList
 005E58ED    call        TObject.Create;TList.Create
 005E58F2    mov         dword ptr [ebp-48],eax
 005E58F5    xor         eax,eax
 005E58F7    push        ebp
 005E58F8    push        5E5CDD
 005E58FD    push        dword ptr fs:[eax]
 005E5900    mov         dword ptr fs:[eax],esp
 005E5903    mov         eax,dword ptr [ebp-4]
 005E5906    call        005F7DC4
 005E590B    mov         edx,eax
 005E590D    mov         eax,dword ptr [ebp-2C]
 005E5910    call        TList.SetCapacity
 005E5915    mov         dword ptr [ebp-1C],0FFFFFFFF
 005E591C    mov         byte ptr [ebp-2D],0
 005E5920    mov         eax,dword ptr [ebp-4]
 005E5923    call        005F7DC4
 005E5928    dec         eax
 005E5929    test        eax,eax
>005E592B    jl          005E5C0A
 005E5931    inc         eax
 005E5932    mov         dword ptr [ebp-50],eax
 005E5935    mov         dword ptr [ebp-10],0
 005E593C    mov         edx,dword ptr [ebp-10]
 005E593F    mov         eax,dword ptr [ebp-4]
 005E5942    call        005F7D58
 005E5947    mov         dword ptr [ebp-24],eax
 005E594A    mov         eax,dword ptr [ebp-4]
 005E594D    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E5951    jne         005E5960
 005E5953    mov         eax,dword ptr [ebp-24]
 005E5956    cmp         byte ptr [eax+57],0
>005E595A    jne         005E5960
 005E595C    xor         eax,eax
>005E595E    jmp         005E5962
 005E5960    mov         al,1
 005E5962    mov         byte ptr [ebp-2E],al
 005E5965    mov         byte ptr [ebp-25],0
 005E5969    mov         eax,dword ptr [ebp-4]
 005E596C    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5972    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E5975    dec         eax
 005E5976    test        eax,eax
>005E5978    jl          005E5A07
 005E597E    inc         eax
 005E597F    mov         dword ptr [ebp-54],eax
 005E5982    mov         dword ptr [ebp-14],0
 005E5989    mov         eax,dword ptr [ebp-4]
 005E598C    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5992    mov         edx,dword ptr [ebp-14]
 005E5995    call        TList.Get
 005E599A    cmp         dword ptr [eax+30],0
>005E599E    jne         005E59FF
 005E59A0    mov         eax,dword ptr [ebp-4]
 005E59A3    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E59A9    mov         edx,dword ptr [ebp-14]
 005E59AC    call        TList.Get
 005E59B1    mov         eax,dword ptr [eax]
 005E59B3    cmp         eax,dword ptr [ebp-24]
>005E59B6    jne         005E59FF
 005E59B8    cmp         byte ptr [ebp-2D],0
>005E59BC    jne         005E59D9
 005E59BE    mov         eax,dword ptr [ebp-4]
 005E59C1    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E59C7    mov         edx,dword ptr [ebp-14]
 005E59CA    call        TList.Get
 005E59CF    cmp         byte ptr [eax+14],0
>005E59D3    jne         005E59D9
 005E59D5    xor         eax,eax
>005E59D7    jmp         005E59DB
 005E59D9    mov         al,1
 005E59DB    cmp         al,byte ptr [ebp-2E]
 005E59DE    setne       byte ptr [ebp-2D]
 005E59E2    mov         eax,dword ptr [ebp-4]
 005E59E5    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E59EB    mov         edx,dword ptr [ebp-14]
 005E59EE    call        TList.Get
 005E59F3    mov         dl,byte ptr [ebp-2E]
 005E59F6    mov         byte ptr [eax+14],dl
 005E59F9    mov         byte ptr [ebp-25],1
>005E59FD    jmp         005E5A07
 005E59FF    inc         dword ptr [ebp-14]
 005E5A02    dec         dword ptr [ebp-54]
>005E5A05    jne         005E5989
 005E5A07    cmp         byte ptr [ebp-25],0
>005E5A0B    je          005E5BDF
 005E5A11    mov         eax,dword ptr [ebp-24]
 005E5A14    cmp         eax,dword ptr [ebp-8]
>005E5A17    jne         005E5BDF
 005E5A1D    mov         eax,dword ptr [ebp-14]
 005E5A20    mov         dword ptr [ebp-1C],eax
 005E5A23    mov         eax,dword ptr [ebp-4]
 005E5A26    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5A2C    mov         edx,dword ptr [ebp-14]
 005E5A2F    call        TList.Get
 005E5A34    mov         dword ptr [ebp-34],eax
 005E5A37    mov         eax,dword ptr [ebp-34]
 005E5A3A    mov         dword ptr [ebp-58],eax
 005E5A3D    mov         eax,dword ptr [ebp-58]
 005E5A40    mov         edx,dword ptr [eax+8]
 005E5A43    mov         eax,dword ptr [ebp-58]
 005E5A46    add         edx,dword ptr [eax+10]
 005E5A49    mov         eax,dword ptr [ebp-48]
 005E5A4C    call        TList.Add
 005E5A51    mov         eax,dword ptr [ebp-4]
 005E5A54    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E5A5B    je          005E5AA7
 005E5A5D    mov         eax,dword ptr [ebp-58]
 005E5A60    mov         eax,dword ptr [eax+1A]
 005E5A63    mov         edx,dword ptr [ebp-58]
 005E5A66    add         eax,dword ptr [edx+8]
 005E5A69    mov         edx,dword ptr [ebp-58]
 005E5A6C    mov         edx,dword ptr [edx]
 005E5A6E    add         eax,dword ptr [edx+4C]
 005E5A71    push        eax
 005E5A72    lea         eax,[ebp-6C]
 005E5A75    push        eax
 005E5A76    mov         eax,dword ptr [ebp-58]
 005E5A79    mov         ecx,dword ptr [eax+16]
 005E5A7C    mov         eax,dword ptr [ebp-58]
 005E5A7F    add         ecx,dword ptr [eax+20]
 005E5A82    mov         eax,dword ptr [ebp-58]
 005E5A85    sub         ecx,dword ptr [eax+0C]
 005E5A88    mov         eax,dword ptr [ebp-58]
 005E5A8B    mov         edx,dword ptr [eax+1A]
 005E5A8E    mov         eax,dword ptr [ebp-58]
 005E5A91    add         edx,dword ptr [eax+8]
 005E5A94    mov         eax,dword ptr [ebp-58]
 005E5A97    mov         eax,dword ptr [eax+16]
 005E5A9A    mov         ebx,dword ptr [ebp-58]
 005E5A9D    add         eax,dword ptr [ebx+4]
 005E5AA0    call        Rect
>005E5AA5    jmp         005E5AB4
 005E5AA7    lea         edx,[ebp-6C]
 005E5AAA    mov         eax,dword ptr [ebp-58]
 005E5AAD    mov         eax,dword ptr [eax]
 005E5AAF    call        005F2E0C
 005E5AB4    mov         eax,dword ptr [ebp-58]
 005E5AB7    mov         al,byte ptr [eax+15]
 005E5ABA    mov         byte ptr [ebp-1D],al
 005E5ABD    cmp         byte ptr [ebp-1D],0
>005E5AC1    je          005E5B05
 005E5AC3    mov         eax,dword ptr [ebp-14]
 005E5AC6    inc         eax
 005E5AC7    mov         edx,dword ptr [ebp-4]
 005E5ACA    mov         edx,dword ptr [edx+228];TCustomControlBar.FItems:TList
 005E5AD0    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>005E5AD3    jge         005E5B05
 005E5AD5    mov         edx,dword ptr [ebp-14]
 005E5AD8    inc         edx
 005E5AD9    mov         eax,dword ptr [ebp-4]
 005E5ADC    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5AE2    call        TList.Get
 005E5AE7    mov         dword ptr [ebp-38],eax
 005E5AEA    mov         eax,dword ptr [ebp-38]
 005E5AED    cmp         byte ptr [eax+15],0
>005E5AF1    jne         005E5B05
 005E5AF3    mov         eax,dword ptr [ebp-38]
 005E5AF6    mov         byte ptr [eax+15],1
 005E5AFA    mov         eax,dword ptr [ebp-38]
 005E5AFD    mov         byte ptr [eax+38],1
 005E5B01    mov         byte ptr [ebp-49],1
 005E5B05    xor         edx,edx
 005E5B07    mov         dl,byte ptr [ebp-1D]
 005E5B0A    mov         eax,dword ptr [ebp-40]
 005E5B0D    call        TList.Add
 005E5B12    mov         edx,dword ptr [ebp-14]
 005E5B15    mov         eax,dword ptr [ebp-44]
 005E5B18    call        TList.Add
 005E5B1D    mov         eax,dword ptr [ebp-34]
 005E5B20    mov         eax,dword ptr [eax+34]
 005E5B23    mov         dword ptr [ebp-38],eax
 005E5B26    cmp         dword ptr [ebp-38],0
>005E5B2A    je          005E5BCC
 005E5B30    mov         eax,dword ptr [ebp-4]
 005E5B33    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5B39    mov         edx,dword ptr [ebp-38]
 005E5B3C    call        TList.IndexOf
 005E5B41    mov         dword ptr [ebp-18],eax
 005E5B44    mov         eax,dword ptr [ebp-38]
 005E5B47    xor         edx,edx
 005E5B49    mov         dl,byte ptr [eax+15]
 005E5B4C    mov         eax,dword ptr [ebp-40]
 005E5B4F    call        TList.Add
 005E5B54    mov         edx,dword ptr [ebp-18]
 005E5B57    mov         eax,dword ptr [ebp-44]
 005E5B5A    call        TList.Add
 005E5B5F    mov         eax,dword ptr [ebp-38]
 005E5B62    mov         dword ptr [ebp-5C],eax
 005E5B65    mov         eax,dword ptr [ebp-5C]
 005E5B68    mov         edx,dword ptr [eax+8]
 005E5B6B    mov         eax,dword ptr [ebp-5C]
 005E5B6E    add         edx,dword ptr [eax+10]
 005E5B71    mov         eax,dword ptr [ebp-48]
 005E5B74    call        TList.Add
 005E5B79    mov         eax,dword ptr [ebp-38]
 005E5B7C    cmp         byte ptr [eax+15],0
>005E5B80    je          005E5BB9
 005E5B82    mov         eax,dword ptr [ebp-18]
 005E5B85    inc         eax
 005E5B86    mov         edx,dword ptr [ebp-4]
 005E5B89    mov         edx,dword ptr [edx+228];TCustomControlBar.FItems:TList
 005E5B8F    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>005E5B92    jge         005E5BB9
 005E5B94    mov         edx,dword ptr [ebp-18]
 005E5B97    inc         edx
 005E5B98    mov         eax,dword ptr [ebp-4]
 005E5B9B    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5BA1    call        TList.Get
 005E5BA6    mov         dword ptr [ebp-3C],eax
 005E5BA9    mov         eax,dword ptr [ebp-3C]
 005E5BAC    cmp         byte ptr [eax+15],0
>005E5BB0    jne         005E5BB9
 005E5BB2    mov         eax,dword ptr [ebp-3C]
 005E5BB5    mov         byte ptr [eax+15],1
 005E5BB9    mov         eax,dword ptr [ebp-38]
 005E5BBC    mov         eax,dword ptr [eax+34]
 005E5BBF    mov         dword ptr [ebp-38],eax
 005E5BC2    cmp         dword ptr [ebp-38],0
>005E5BC6    jne         005E5B30
 005E5BCC    mov         eax,dword ptr [ebp-4]
 005E5BCF    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5BD5    mov         edx,dword ptr [ebp-34]
 005E5BD8    call        005E4680
>005E5BDD    jmp         005E5BFE
 005E5BDF    cmp         byte ptr [ebp-25],0
>005E5BE3    jne         005E5BFE
 005E5BE5    mov         eax,dword ptr [ebp-24]
 005E5BE8    cmp         eax,dword ptr [ebp-8]
>005E5BEB    jne         005E5BF1
 005E5BED    mov         byte ptr [ebp-9],1
 005E5BF1    push        ebp
 005E5BF2    mov         edx,dword ptr [ebp-24]
 005E5BF5    mov         eax,dword ptr [ebp-2C]
 005E5BF8    call        005E5820
 005E5BFD    pop         ecx
 005E5BFE    inc         dword ptr [ebp-10]
 005E5C01    dec         dword ptr [ebp-50]
>005E5C04    jne         005E593C
 005E5C0A    mov         eax,dword ptr [ebp-2C]
 005E5C0D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E5C10    dec         eax
 005E5C11    test        eax,eax
>005E5C13    jl          005E5C70
 005E5C15    inc         eax
 005E5C16    mov         dword ptr [ebp-50],eax
 005E5C19    mov         dword ptr [ebp-10],0
 005E5C20    mov         edx,dword ptr [ebp-10]
 005E5C23    mov         eax,dword ptr [ebp-2C]
 005E5C26    call        TList.Get
 005E5C2B    lea         edx,[ebp-7C]
 005E5C2E    call        005F2E0C
 005E5C33    mov         eax,dword ptr [ebp-40]
 005E5C36    push        eax
 005E5C37    mov         eax,dword ptr [ebp-44]
 005E5C3A    push        eax
 005E5C3B    mov         eax,dword ptr [ebp-48]
 005E5C3E    push        eax
 005E5C3F    push        0
 005E5C41    mov         al,byte ptr [ebp-49]
 005E5C44    push        eax
 005E5C45    push        6E4124
 005E5C4A    push        0FF
 005E5C4C    push        0FF
 005E5C4E    push        0
 005E5C50    mov         edx,dword ptr [ebp-10]
 005E5C53    mov         eax,dword ptr [ebp-2C]
 005E5C56    call        TList.Get
 005E5C5B    mov         edx,eax
 005E5C5D    lea         ecx,[ebp-7C]
 005E5C60    mov         eax,dword ptr [ebp-4]
 005E5C63    call        005E61C0
 005E5C68    inc         dword ptr [ebp-10]
 005E5C6B    dec         dword ptr [ebp-50]
>005E5C6E    jne         005E5C20
 005E5C70    cmp         dword ptr [ebp-1C],0
>005E5C74    jl          005E5CA1
 005E5C76    mov         eax,dword ptr [ebp-40]
 005E5C79    push        eax
 005E5C7A    mov         eax,dword ptr [ebp-44]
 005E5C7D    push        eax
 005E5C7E    mov         eax,dword ptr [ebp-48]
 005E5C81    push        eax
 005E5C82    push        0
 005E5C84    mov         al,byte ptr [ebp-49]
 005E5C87    push        eax
 005E5C88    push        6E4124
 005E5C8D    push        0FF
 005E5C8F    push        0FF
 005E5C91    push        1
 005E5C93    lea         ecx,[ebp-6C]
 005E5C96    mov         edx,dword ptr [ebp-8]
 005E5C99    mov         eax,dword ptr [ebp-4]
 005E5C9C    call        005E61C0
 005E5CA1    cmp         byte ptr [ebp-2D],0
>005E5CA5    je          005E5CAF
 005E5CA7    mov         eax,dword ptr [ebp-4]
 005E5CAA    mov         edx,dword ptr [eax]
 005E5CAC    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E5CAF    xor         eax,eax
 005E5CB1    pop         edx
 005E5CB2    pop         ecx
 005E5CB3    pop         ecx
 005E5CB4    mov         dword ptr fs:[eax],edx
 005E5CB7    push        5E5CE4
 005E5CBC    mov         eax,dword ptr [ebp-2C]
 005E5CBF    call        TObject.Free
 005E5CC4    mov         eax,dword ptr [ebp-40]
 005E5CC7    call        TObject.Free
 005E5CCC    mov         eax,dword ptr [ebp-44]
 005E5CCF    call        TObject.Free
 005E5CD4    mov         eax,dword ptr [ebp-48]
 005E5CD7    call        TObject.Free
 005E5CDC    ret
>005E5CDD    jmp         @HandleFinally
>005E5CE2    jmp         005E5CBC
 005E5CE4    mov         al,byte ptr [ebp-9]
 005E5CE7    pop         ebx
 005E5CE8    mov         esp,ebp
 005E5CEA    pop         ebp
 005E5CEB    ret
end;*}

//005E5CEC
procedure TControlBar.SetRowSize(Value:TRowSize);
begin
{*
 005E5CEC    push        ebp
 005E5CED    mov         ebp,esp
 005E5CEF    add         esp,0FFFFFFF8
 005E5CF2    mov         dword ptr [ebp-8],edx
 005E5CF5    mov         dword ptr [ebp-4],eax
 005E5CF8    mov         eax,dword ptr [ebp-8]
 005E5CFB    mov         edx,dword ptr [ebp-4]
 005E5CFE    cmp         eax,dword ptr [edx+230];TControlBar.FRowSize:TRowSize
>005E5D04    je          005E5D12
 005E5D06    mov         eax,dword ptr [ebp-8]
 005E5D09    mov         edx,dword ptr [ebp-4]
 005E5D0C    mov         dword ptr [edx+230],eax;TControlBar.FRowSize:TRowSize
 005E5D12    pop         ecx
 005E5D13    pop         ecx
 005E5D14    pop         ebp
 005E5D15    ret
*}
end;

//005E5D18
procedure TControlBar.SetRowSnap(Value:Boolean);
begin
{*
 005E5D18    push        ebp
 005E5D19    mov         ebp,esp
 005E5D1B    add         esp,0FFFFFFF8
 005E5D1E    mov         byte ptr [ebp-5],dl
 005E5D21    mov         dword ptr [ebp-4],eax
 005E5D24    mov         al,byte ptr [ebp-5]
 005E5D27    mov         edx,dword ptr [ebp-4]
 005E5D2A    cmp         al,byte ptr [edx+234];TControlBar.FRowSnap:Boolean
>005E5D30    je          005E5D3E
 005E5D32    mov         al,byte ptr [ebp-5]
 005E5D35    mov         edx,dword ptr [ebp-4]
 005E5D38    mov         byte ptr [edx+234],al;TControlBar.FRowSnap:Boolean
 005E5D3E    pop         ecx
 005E5D3F    pop         ecx
 005E5D40    pop         ebp
 005E5D41    ret
*}
end;

//005E5D44
{*procedure TCustomControlBar.sub_005E5D44(?:?);
begin
 005E5D44    push        ebp
 005E5D45    mov         ebp,esp
 005E5D47    add         esp,0FFFFFFF8
 005E5D4A    mov         byte ptr [ebp-5],dl
 005E5D4D    mov         dword ptr [ebp-4],eax
 005E5D50    pop         ecx
 005E5D51    pop         ecx
 005E5D52    pop         ebp
 005E5D53    ret
end;*}

//005E5D54
procedure sub_005E5D54;
begin
{*
 005E5D54    push        ebp
 005E5D55    mov         ebp,esp
 005E5D57    add         esp,0FFFFFFD8
 005E5D5A    mov         dword ptr [ebp-4],eax
 005E5D5D    mov         eax,dword ptr [ebp-4]
 005E5D60    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5D66    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E5D69    dec         eax
 005E5D6A    test        eax,eax
>005E5D6C    jl          005E5E4D
 005E5D72    inc         eax
 005E5D73    mov         dword ptr [ebp-0C],eax
 005E5D76    mov         dword ptr [ebp-8],0
 005E5D7D    mov         eax,dword ptr [ebp-4]
 005E5D80    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5D86    mov         edx,dword ptr [ebp-8]
 005E5D89    call        TList.Get
 005E5D8E    test        eax,eax
>005E5D90    je          005E5E41
 005E5D96    mov         eax,dword ptr [ebp-4]
 005E5D99    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5D9F    mov         edx,dword ptr [ebp-8]
 005E5DA2    call        TList.Get
 005E5DA7    mov         dword ptr [ebp-10],eax
 005E5DAA    mov         eax,dword ptr [ebp-10]
 005E5DAD    cmp         dword ptr [eax+30],0
>005E5DB1    je          005E5DE7
 005E5DB3    mov         eax,dword ptr [ebp-10]
 005E5DB6    mov         eax,dword ptr [eax+30]
 005E5DB9    mov         edx,dword ptr [eax+1A]
 005E5DBC    mov         eax,dword ptr [ebp-10]
 005E5DBF    mov         eax,dword ptr [eax+30]
 005E5DC2    add         edx,dword ptr [eax+24]
 005E5DC5    lea         ecx,[ebp-18]
 005E5DC8    mov         eax,dword ptr [ebp-10]
 005E5DCB    mov         eax,dword ptr [eax+30]
 005E5DCE    mov         eax,dword ptr [eax+16]
 005E5DD1    call        Point
 005E5DD6    mov         eax,dword ptr [ebp-10]
 005E5DD9    mov         edx,dword ptr [ebp-18]
 005E5DDC    mov         dword ptr [eax+16],edx
 005E5DDF    mov         edx,dword ptr [ebp-14]
 005E5DE2    mov         dword ptr [eax+1A],edx
>005E5DE5    jmp         005E5E1B
 005E5DE7    lea         edx,[ebp-28]
 005E5DEA    mov         eax,dword ptr [ebp-10]
 005E5DED    mov         eax,dword ptr [eax]
 005E5DEF    call        005F2E0C
 005E5DF4    mov         eax,dword ptr [ebp-10]
 005E5DF7    mov         edx,dword ptr [ebp-28]
 005E5DFA    mov         dword ptr [eax+16],edx
 005E5DFD    mov         edx,dword ptr [ebp-24]
 005E5E00    mov         dword ptr [eax+1A],edx
 005E5E03    mov         eax,dword ptr [ebp-10]
 005E5E06    mov         eax,dword ptr [eax+4]
 005E5E09    mov         edx,dword ptr [ebp-10]
 005E5E0C    sub         dword ptr [edx+16],eax
 005E5E0F    mov         eax,dword ptr [ebp-10]
 005E5E12    mov         eax,dword ptr [eax+8]
 005E5E15    mov         edx,dword ptr [ebp-10]
 005E5E18    sub         dword ptr [edx+1A],eax
 005E5E1B    mov         eax,dword ptr [ebp-10]
 005E5E1E    mov         eax,dword ptr [eax]
 005E5E20    mov         eax,dword ptr [eax+48]
 005E5E23    mov         edx,dword ptr [ebp-10]
 005E5E26    add         eax,dword ptr [edx+4]
 005E5E29    mov         edx,dword ptr [ebp-10]
 005E5E2C    add         eax,dword ptr [edx+0C]
 005E5E2F    mov         edx,dword ptr [ebp-10]
 005E5E32    mov         dword ptr [edx+20],eax
 005E5E35    mov         eax,dword ptr [ebp-10]
 005E5E38    mov         al,byte ptr [eax+38]
 005E5E3B    mov         edx,dword ptr [ebp-10]
 005E5E3E    mov         byte ptr [edx+15],al
 005E5E41    inc         dword ptr [ebp-8]
 005E5E44    dec         dword ptr [ebp-0C]
>005E5E47    jne         005E5D7D
 005E5E4D    mov         esp,ebp
 005E5E4F    pop         ebp
 005E5E50    ret
*}
end;

//005E5E54
{*function sub_005E5E54(?:?; ?:?):?;
begin
 005E5E54    push        ebp
 005E5E55    mov         ebp,esp
 005E5E57    add         esp,0FFFFFFDC
 005E5E5A    mov         dword ptr [ebp-0C],ecx
 005E5E5D    mov         dword ptr [ebp-8],edx
 005E5E60    mov         dword ptr [ebp-4],eax
 005E5E63    mov         byte ptr [ebp-0D],1
 005E5E67    mov         eax,dword ptr [ebp-4]
 005E5E6A    call        TWinControl.HandleAllocated
 005E5E6F    test        al,al
>005E5E71    je          005E601B
 005E5E77    mov         eax,dword ptr [ebp-4]
 005E5E7A    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E5E7E    je          005E5E90
 005E5E80    mov         eax,dword ptr [ebp-4]
 005E5E83    call        005F7DC4
 005E5E88    test        eax,eax
>005E5E8A    jle         005E601B
 005E5E90    mov         eax,dword ptr [ebp-4]
 005E5E93    mov         al,byte ptr [eax+5B];TCustomControlBar.FAlign:TAlign
 005E5E96    add         al,0FD
 005E5E98    sub         al,2
>005E5E9A    jae         005E5F60
 005E5EA0    mov         eax,dword ptr [ebp-8]
 005E5EA3    xor         edx,edx
 005E5EA5    mov         dword ptr [eax],edx
 005E5EA7    mov         eax,dword ptr [ebp-4]
 005E5EAA    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5EB0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E5EB3    dec         eax
 005E5EB4    test        eax,eax
>005E5EB6    jl          005E5F46
 005E5EBC    inc         eax
 005E5EBD    mov         dword ptr [ebp-1C],eax
 005E5EC0    mov         dword ptr [ebp-14],0
 005E5EC7    mov         edx,dword ptr [ebp-14]
 005E5ECA    mov         eax,dword ptr [ebp-4]
 005E5ECD    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5ED3    call        TList.Get
 005E5ED8    mov         dword ptr [ebp-18],eax
 005E5EDB    mov         eax,dword ptr [ebp-18]
 005E5EDE    mov         dword ptr [ebp-20],eax
 005E5EE1    mov         eax,dword ptr [ebp-20]
 005E5EE4    cmp         dword ptr [eax+30],0
>005E5EE8    jne         005E5F3E
 005E5EEA    mov         eax,dword ptr [ebp-4]
 005E5EED    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E5EF1    jne         005E5EFE
 005E5EF3    mov         eax,dword ptr [ebp-20]
 005E5EF6    mov         eax,dword ptr [eax]
 005E5EF8    cmp         byte ptr [eax+57],0
>005E5EFC    je          005E5F3E
 005E5EFE    mov         eax,dword ptr [ebp-20]
 005E5F01    mov         eax,dword ptr [eax]
 005E5F03    mov         eax,dword ptr [eax+48]
 005E5F06    mov         edx,dword ptr [ebp-20]
 005E5F09    add         eax,dword ptr [edx+39]
 005E5F0C    mov         edx,dword ptr [ebp-20]
 005E5F0F    add         eax,dword ptr [edx+4]
 005E5F12    mov         edx,dword ptr [ebp-20]
 005E5F15    add         eax,dword ptr [edx+0C]
 005E5F18    mov         edx,dword ptr [ebp-8]
 005E5F1B    cmp         eax,dword ptr [edx]
>005E5F1D    jle         005E5F3E
 005E5F1F    mov         eax,dword ptr [ebp-20]
 005E5F22    mov         eax,dword ptr [eax]
 005E5F24    mov         eax,dword ptr [eax+48]
 005E5F27    mov         edx,dword ptr [ebp-20]
 005E5F2A    add         eax,dword ptr [edx+39]
 005E5F2D    mov         edx,dword ptr [ebp-20]
 005E5F30    add         eax,dword ptr [edx+4]
 005E5F33    mov         edx,dword ptr [ebp-20]
 005E5F36    add         eax,dword ptr [edx+0C]
 005E5F39    mov         edx,dword ptr [ebp-8]
 005E5F3C    mov         dword ptr [edx],eax
 005E5F3E    inc         dword ptr [ebp-14]
 005E5F41    dec         dword ptr [ebp-1C]
>005E5F44    jne         005E5EC7
 005E5F46    mov         eax,dword ptr [ebp-4]
 005E5F49    call        TControl.GetClientWidth
 005E5F4E    mov         edx,dword ptr [ebp-4]
 005E5F51    mov         edx,dword ptr [edx+48];TCustomControlBar.Width:Integer
 005E5F54    sub         edx,eax
 005E5F56    mov         eax,dword ptr [ebp-8]
 005E5F59    add         dword ptr [eax],edx
>005E5F5B    jmp         005E601B
 005E5F60    mov         eax,dword ptr [ebp-0C]
 005E5F63    xor         edx,edx
 005E5F65    mov         dword ptr [eax],edx
 005E5F67    mov         eax,dword ptr [ebp-4]
 005E5F6A    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5F70    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E5F73    dec         eax
 005E5F74    test        eax,eax
>005E5F76    jl          005E6006
 005E5F7C    inc         eax
 005E5F7D    mov         dword ptr [ebp-1C],eax
 005E5F80    mov         dword ptr [ebp-14],0
 005E5F87    mov         edx,dword ptr [ebp-14]
 005E5F8A    mov         eax,dword ptr [ebp-4]
 005E5F8D    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E5F93    call        TList.Get
 005E5F98    mov         dword ptr [ebp-18],eax
 005E5F9B    mov         eax,dword ptr [ebp-18]
 005E5F9E    mov         dword ptr [ebp-24],eax
 005E5FA1    mov         eax,dword ptr [ebp-24]
 005E5FA4    cmp         dword ptr [eax+30],0
>005E5FA8    jne         005E5FFE
 005E5FAA    mov         eax,dword ptr [ebp-4]
 005E5FAD    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E5FB1    jne         005E5FBE
 005E5FB3    mov         eax,dword ptr [ebp-24]
 005E5FB6    mov         eax,dword ptr [eax]
 005E5FB8    cmp         byte ptr [eax+57],0
>005E5FBC    je          005E5FFE
 005E5FBE    mov         eax,dword ptr [ebp-24]
 005E5FC1    mov         eax,dword ptr [eax+3D]
 005E5FC4    mov         edx,dword ptr [ebp-24]
 005E5FC7    mov         edx,dword ptr [edx]
 005E5FC9    add         eax,dword ptr [edx+4C]
 005E5FCC    mov         edx,dword ptr [ebp-24]
 005E5FCF    add         eax,dword ptr [edx+8]
 005E5FD2    mov         edx,dword ptr [ebp-24]
 005E5FD5    add         eax,dword ptr [edx+10]
 005E5FD8    mov         edx,dword ptr [ebp-0C]
 005E5FDB    cmp         eax,dword ptr [edx]
>005E5FDD    jle         005E5FFE
 005E5FDF    mov         eax,dword ptr [ebp-24]
 005E5FE2    mov         eax,dword ptr [eax+3D]
 005E5FE5    mov         edx,dword ptr [ebp-24]
 005E5FE8    mov         edx,dword ptr [edx]
 005E5FEA    add         eax,dword ptr [edx+4C]
 005E5FED    mov         edx,dword ptr [ebp-24]
 005E5FF0    add         eax,dword ptr [edx+8]
 005E5FF3    mov         edx,dword ptr [ebp-24]
 005E5FF6    add         eax,dword ptr [edx+10]
 005E5FF9    mov         edx,dword ptr [ebp-0C]
 005E5FFC    mov         dword ptr [edx],eax
 005E5FFE    inc         dword ptr [ebp-14]
 005E6001    dec         dword ptr [ebp-1C]
>005E6004    jne         005E5F87
 005E6006    mov         eax,dword ptr [ebp-4]
 005E6009    call        TControl.GetClientHeight
 005E600E    mov         edx,dword ptr [ebp-4]
 005E6011    mov         edx,dword ptr [edx+4C];TCustomControlBar.Height:Integer
 005E6014    sub         edx,eax
 005E6016    mov         eax,dword ptr [ebp-0C]
 005E6019    add         dword ptr [eax],edx
 005E601B    mov         al,byte ptr [ebp-0D]
 005E601E    mov         esp,ebp
 005E6020    pop         ebp
 005E6021    ret
end;*}

//005E6024
{*procedure sub_005E6024(?:?);
begin
 005E6024    push        ebp
 005E6025    mov         ebp,esp
 005E6027    add         esp,0FFFFFFF8
 005E602A    mov         eax,dword ptr [ebp+8]
 005E602D    cmp         dword ptr [eax-4],0
>005E6031    jne         005E603A
 005E6033    mov         eax,dword ptr [ebp+8]
 005E6036    mov         byte ptr [eax-5],1
 005E603A    mov         eax,dword ptr [ebp+8]
 005E603D    mov         eax,dword ptr [eax-0C]
 005E6040    mov         edx,dword ptr [ebp+8]
 005E6043    cmp         eax,dword ptr [edx-4]
>005E6046    jne         005E6051
 005E6048    mov         eax,dword ptr [ebp+8]
 005E604B    cmp         byte ptr [eax+18],0
>005E604F    je          005E60AB
 005E6051    mov         eax,dword ptr [ebp+8]
 005E6054    cmp         byte ptr [eax-5],0
>005E6058    je          005E60AB
 005E605A    mov         eax,dword ptr [ebp+8]
 005E605D    mov         eax,dword ptr [eax-4]
 005E6060    mov         edx,dword ptr [ebp+8]
 005E6063    mov         edx,dword ptr [edx-10]
 005E6066    mov         edx,dword ptr [edx+228]
 005E606C    cmp         eax,dword ptr [edx+8]
>005E606F    jge         005E60AB
 005E6071    mov         eax,dword ptr [ebp+8]
 005E6074    mov         edx,dword ptr [eax-4]
 005E6077    mov         eax,dword ptr [ebp+8]
 005E607A    mov         eax,dword ptr [eax-10]
 005E607D    mov         eax,dword ptr [eax+228]
 005E6083    call        TList.Get
 005E6088    mov         dword ptr [ebp-4],eax
 005E608B    mov         eax,dword ptr [ebp+8]
 005E608E    cmp         byte ptr [eax-11],0
>005E6092    jne         005E60AB
 005E6094    mov         eax,dword ptr [ebp-4]
 005E6097    cmp         byte ptr [eax+15],0
>005E609B    je          005E60AB
 005E609D    mov         eax,dword ptr [ebp-4]
 005E60A0    mov         byte ptr [eax+15],0
 005E60A4    mov         eax,dword ptr [ebp-4]
 005E60A7    mov         byte ptr [eax+38],0
 005E60AB    mov         eax,dword ptr [ebp+8]
 005E60AE    mov         eax,dword ptr [eax-10]
 005E60B1    cmp         byte ptr [eax+234],0
>005E60B8    je          005E60CB
 005E60BA    mov         eax,dword ptr [ebp+8]
 005E60BD    mov         eax,dword ptr [eax-10]
 005E60C0    mov         eax,dword ptr [eax+230]
 005E60C6    mov         dword ptr [ebp-8],eax
>005E60C9    jmp         005E60DA
 005E60CB    mov         eax,dword ptr [ebp+8]
 005E60CE    mov         eax,dword ptr [eax-15]
 005E60D1    mov         edx,dword ptr [ebp+8]
 005E60D4    sub         eax,dword ptr [edx-1D]
 005E60D7    mov         dword ptr [ebp-8],eax
 005E60DA    mov         eax,dword ptr [ebp+8]
 005E60DD    add         eax,0FFFFFFDF
 005E60E0    push        eax
 005E60E1    mov         eax,dword ptr [ebp+8]
 005E60E4    mov         eax,dword ptr [eax-19]
 005E60E7    mov         edx,dword ptr [ebp+8]
 005E60EA    sub         eax,dword ptr [edx-21]
 005E60ED    push        eax
 005E60EE    mov         eax,dword ptr [ebp-8]
 005E60F1    push        eax
 005E60F2    mov         eax,dword ptr [ebp+8]
 005E60F5    mov         eax,dword ptr [eax+1C]
 005E60F8    push        eax
 005E60F9    mov         eax,dword ptr [ebp+8]
 005E60FC    add         eax,0FFFFFFC7
 005E60FF    push        eax
 005E6100    mov         eax,dword ptr [ebp+8]
 005E6103    mov         eax,dword ptr [eax+0C]
 005E6106    push        eax
 005E6107    mov         eax,dword ptr [ebp+8]
 005E610A    mov         cl,byte ptr [eax-29]
 005E610D    mov         eax,dword ptr [ebp+8]
 005E6110    mov         dl,byte ptr [eax-5]
 005E6113    mov         eax,dword ptr [ebp+8]
 005E6116    mov         eax,dword ptr [eax-28]
 005E6119    call        005E45C4
 005E611E    mov         dword ptr [ebp-4],eax
 005E6121    mov         eax,dword ptr [ebp+8]
 005E6124    cmp         dword ptr [eax+1C],0
>005E6128    je          005E6136
 005E612A    mov         eax,dword ptr [ebp+8]
 005E612D    mov         eax,dword ptr [eax+1C]
 005E6130    mov         edx,dword ptr [ebp-4]
 005E6133    mov         dword ptr [eax+34],edx
 005E6136    mov         eax,dword ptr [ebp+8]
 005E6139    mov         edx,dword ptr [eax-4]
 005E613C    mov         eax,dword ptr [ebp+8]
 005E613F    mov         eax,dword ptr [eax-10]
 005E6142    mov         eax,dword ptr [eax+228]
 005E6148    mov         ecx,dword ptr [ebp-4]
 005E614B    call        TList.Insert
 005E6150    mov         eax,dword ptr [ebp+8]
 005E6153    cmp         dword ptr [eax+0C],1
>005E6157    jle         005E61BA
 005E6159    mov         eax,dword ptr [ebp+8]
 005E615C    dec         dword ptr [eax+0C]
 005E615F    mov         eax,dword ptr [ebp+8]
 005E6162    mov         eax,dword ptr [eax-10]
 005E6165    mov         eax,dword ptr [eax+230]
 005E616B    mov         edx,dword ptr [ebp+8]
 005E616E    add         dword ptr [edx-1D],eax
 005E6171    mov         eax,dword ptr [ebp+8]
 005E6174    mov         eax,dword ptr [eax+28]
 005E6177    push        eax
 005E6178    mov         eax,dword ptr [ebp+8]
 005E617B    mov         eax,dword ptr [eax+24]
 005E617E    push        eax
 005E617F    mov         eax,dword ptr [ebp+8]
 005E6182    mov         eax,dword ptr [eax+20]
 005E6185    push        eax
 005E6186    mov         eax,dword ptr [ebp-4]
 005E6189    push        eax
 005E618A    push        0
 005E618C    mov         eax,dword ptr [ebp+8]
 005E618F    add         eax,0FFFFFFC7
 005E6192    push        eax
 005E6193    mov         eax,dword ptr [ebp+8]
 005E6196    mov         eax,dword ptr [eax+10]
 005E6199    push        eax
 005E619A    mov         eax,dword ptr [ebp+8]
 005E619D    mov         eax,dword ptr [eax+0C]
 005E61A0    push        eax
 005E61A1    push        0
 005E61A3    mov         eax,dword ptr [ebp+8]
 005E61A6    lea         ecx,[eax-21]
 005E61A9    mov         eax,dword ptr [ebp+8]
 005E61AC    mov         edx,dword ptr [eax-28]
 005E61AF    mov         eax,dword ptr [ebp+8]
 005E61B2    mov         eax,dword ptr [eax-10]
 005E61B5    call        005E61C0
 005E61BA    pop         ecx
 005E61BB    pop         ecx
 005E61BC    pop         ebp
 005E61BD    ret
end;*}

//005E61C0
{*procedure sub_005E61C0(?:TCustomControlBar; ?:Pointer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005E61C0    push        ebp
 005E61C1    mov         ebp,esp
 005E61C3    add         esp,0FFFFFF88
 005E61C6    push        ebx
 005E61C7    push        esi
 005E61C8    push        edi
 005E61C9    mov         esi,dword ptr [ebp+14]
 005E61CC    lea         edi,[ebp-39]
 005E61CF    movs        dword ptr [edi],dword ptr [esi]
 005E61D0    movs        dword ptr [edi],dword ptr [esi]
 005E61D1    movs        dword ptr [edi],dword ptr [esi]
 005E61D2    movs        dword ptr [edi],dword ptr [esi]
 005E61D3    mov         dword ptr [ebp-40],ecx
 005E61D6    mov         dword ptr [ebp-28],edx
 005E61D9    mov         dword ptr [ebp-10],eax
 005E61DC    mov         eax,dword ptr [ebp-10]
 005E61DF    mov         edx,dword ptr [ebp-28]
 005E61E2    mov         dword ptr [eax+214],edx;TCustomControlBar.FDockingControl:TControl
 005E61E8    mov         eax,dword ptr [ebp+28]
 005E61EB    cmp         dword ptr [eax+8],0
>005E61EF    jle         005E620A
 005E61F1    xor         edx,edx
 005E61F3    mov         eax,dword ptr [ebp+28]
 005E61F6    call        TList.Get
 005E61FB    mov         byte ptr [ebp-59],al
 005E61FE    xor         edx,edx
 005E6200    mov         eax,dword ptr [ebp+28]
 005E6203    call        TList.Delete
>005E6208    jmp         005E620E
 005E620A    mov         byte ptr [ebp-59],0
 005E620E    mov         eax,dword ptr [ebp+24]
 005E6211    cmp         dword ptr [eax+8],0
>005E6215    jle         005E6230
 005E6217    xor         edx,edx
 005E6219    mov         eax,dword ptr [ebp+24]
 005E621C    call        TList.Get
 005E6221    mov         dword ptr [ebp-0C],eax
 005E6224    xor         edx,edx
 005E6226    mov         eax,dword ptr [ebp+24]
 005E6229    call        TList.Delete
>005E622E    jmp         005E6237
 005E6230    mov         dword ptr [ebp-0C],0FFFFFFFF
 005E6237    mov         eax,dword ptr [ebp+20]
 005E623A    cmp         dword ptr [eax+8],0
>005E623E    jle         005E6259
 005E6240    xor         edx,edx
 005E6242    mov         eax,dword ptr [ebp+20]
 005E6245    call        TList.Get
 005E624A    mov         dword ptr [ebp-64],eax
 005E624D    xor         edx,edx
 005E624F    mov         eax,dword ptr [ebp+20]
 005E6252    call        TList.Delete
>005E6257    jmp         005E6260
 005E6259    mov         dword ptr [ebp-64],0FFFFFFFF
 005E6260    xor         eax,eax
 005E6262    mov         dword ptr [ebp-4],eax
 005E6265    mov         dword ptr [ebp-48],80000001
 005E626C    mov         dword ptr [ebp-4C],80000001
 005E6273    mov         eax,dword ptr [ebp-40]
 005E6276    mov         esi,eax
 005E6278    lea         edi,[ebp-21]
 005E627B    movs        dword ptr [edi],dword ptr [esi]
 005E627C    movs        dword ptr [edi],dword ptr [esi]
 005E627D    movs        dword ptr [edi],dword ptr [esi]
 005E627E    movs        dword ptr [edi],dword ptr [esi]
 005E627F    cmp         dword ptr [ebp+0C],0
>005E6283    jge         005E6398
 005E6289    mov         eax,dword ptr [ebp-40]
 005E628C    mov         eax,dword ptr [eax+8]
 005E628F    mov         edx,dword ptr [ebp-40]
 005E6292    sub         eax,dword ptr [edx]
 005E6294    mov         dword ptr [ebp+10],eax
 005E6297    mov         esi,6E4124
 005E629C    lea         edi,[ebp-39]
 005E629F    movs        dword ptr [edi],dword ptr [esi]
 005E62A0    movs        dword ptr [edi],dword ptr [esi]
 005E62A1    movs        dword ptr [edi],dword ptr [esi]
 005E62A2    movs        dword ptr [edi],dword ptr [esi]
 005E62A3    cmp         dword ptr [ebp-64],0
>005E62A7    jge         005E62B2
 005E62A9    mov         eax,dword ptr [ebp-35]
 005E62AC    add         eax,dword ptr [ebp-2D]
 005E62AF    mov         dword ptr [ebp-64],eax
 005E62B2    mov         eax,dword ptr [ebp-64]
 005E62B5    add         eax,dword ptr [ebp-15]
 005E62B8    sub         eax,dword ptr [ebp-1D]
 005E62BB    mov         dword ptr [ebp-60],eax
 005E62BE    mov         eax,dword ptr [ebp-10]
 005E62C1    cmp         byte ptr [eax+234],0;TCustomControlBar.FRowSnap:Boolean
>005E62C8    je          005E6304
 005E62CA    mov         eax,dword ptr [ebp-10]
 005E62CD    push        dword ptr [eax+230]
 005E62D3    mov         eax,dword ptr [ebp-60]
 005E62D6    pop         edx
 005E62D7    mov         ecx,edx
 005E62D9    cdq
 005E62DA    idiv        eax,ecx
 005E62DC    mov         dword ptr [ebp+0C],eax
 005E62DF    cmp         dword ptr [ebp+0C],0
>005E62E3    jne         005E62E8
 005E62E5    inc         dword ptr [ebp+0C]
 005E62E8    cmp         byte ptr [ebp+8],0
>005E62EC    je          005E630B
 005E62EE    mov         eax,dword ptr [ebp-10]
 005E62F1    mov         eax,dword ptr [eax+230];TCustomControlBar.FRowSize:TRowSize
 005E62F7    imul        dword ptr [ebp+0C]
 005E62FA    cmp         eax,dword ptr [ebp-60]
>005E62FD    jge         005E630B
 005E62FF    inc         dword ptr [ebp+0C]
>005E6302    jmp         005E630B
 005E6304    mov         dword ptr [ebp+0C],1
 005E630B    lea         eax,[ebp+10]
 005E630E    push        eax
 005E630F    lea         eax,[ebp+0C]
 005E6312    push        eax
 005E6313    lea         ecx,[ebp-39]
 005E6316    mov         edx,dword ptr [ebp-28]
 005E6319    mov         eax,dword ptr [ebp-10]
 005E631C    mov         ebx,dword ptr [eax]
 005E631E    call        dword ptr [ebx+0D4];TCustomControlBar.sub_005E65CC
 005E6324    cmp         dword ptr [ebp+0C],0
>005E6328    jne         005E6331
 005E632A    mov         dword ptr [ebp+0C],1
 005E6331    mov         eax,dword ptr [ebp-10]
 005E6334    mov         al,byte ptr [eax+234];TCustomControlBar.FRowSnap:Boolean
 005E633A    and         al,byte ptr [ebp+8]
>005E633D    je          005E6366
 005E633F    mov         eax,dword ptr [ebp-10]
 005E6342    mov         eax,dword ptr [eax+230];TCustomControlBar.FRowSize:TRowSize
 005E6348    imul        dword ptr [ebp+0C]
 005E634B    cmp         eax,dword ptr [ebp-60]
>005E634E    jge         005E6366
 005E6350    mov         eax,dword ptr [ebp-10]
 005E6353    push        dword ptr [eax+230]
 005E6359    mov         eax,dword ptr [ebp-60]
 005E635C    pop         edx
 005E635D    mov         ecx,edx
 005E635F    cdq
 005E6360    idiv        eax,ecx
 005E6362    inc         eax
 005E6363    mov         dword ptr [ebp+0C],eax
 005E6366    mov         eax,dword ptr [ebp-21]
 005E6369    add         eax,dword ptr [ebp+10]
 005E636C    mov         dword ptr [ebp-19],eax
 005E636F    lea         edx,[ebp-39]
 005E6372    lea         eax,[ebp-21]
 005E6375    call        005E46C0
 005E637A    mov         eax,dword ptr [ebp-10]
 005E637D    cmp         byte ptr [eax+234],0;TCustomControlBar.FRowSnap:Boolean
>005E6384    je          005E6398
 005E6386    mov         eax,dword ptr [ebp-10]
 005E6389    mov         eax,dword ptr [eax+230];TCustomControlBar.FRowSize:TRowSize
 005E638F    imul        dword ptr [ebp+0C]
 005E6392    add         eax,dword ptr [ebp-1D]
 005E6395    mov         dword ptr [ebp-15],eax
 005E6398    mov         eax,dword ptr [ebp-10]
 005E639B    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E639F    jne         005E63AE
 005E63A1    mov         eax,dword ptr [ebp-28]
 005E63A4    cmp         byte ptr [eax+57],0
>005E63A8    jne         005E63AE
 005E63AA    xor         eax,eax
>005E63AC    jmp         005E63B0
 005E63AE    mov         al,1
 005E63B0    mov         byte ptr [ebp-29],al
 005E63B3    mov         eax,dword ptr [ebp-10]
 005E63B6    mov         eax,dword ptr [eax+230];TCustomControlBar.FRowSize:TRowSize
 005E63BC    shr         eax,1
 005E63BE    add         eax,dword ptr [ebp-1D]
 005E63C1    mov         dword ptr [ebp-54],eax
 005E63C4    mov         byte ptr [ebp-5],0
 005E63C8    mov         byte ptr [ebp-11],0
 005E63CC    mov         eax,dword ptr [ebp-10]
 005E63CF    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E63D5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E63D8    dec         eax
 005E63D9    test        eax,eax
>005E63DB    jl          005E6518
 005E63E1    inc         eax
 005E63E2    mov         dword ptr [ebp-68],eax
 005E63E5    mov         dword ptr [ebp-44],0
 005E63EC    mov         eax,dword ptr [ebp-10]
 005E63EF    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E63F5    mov         edx,dword ptr [ebp-44]
 005E63F8    call        TList.Get
 005E63FD    mov         dword ptr [ebp-50],eax
 005E6400    mov         eax,dword ptr [ebp-50]
 005E6403    mov         eax,dword ptr [eax+1A]
 005E6406    mov         edx,dword ptr [ebp-50]
 005E6409    add         eax,dword ptr [edx+24]
 005E640C    push        eax
 005E640D    lea         eax,[ebp-78]
 005E6410    push        eax
 005E6411    mov         eax,dword ptr [ebp-50]
 005E6414    mov         ecx,dword ptr [eax+16]
 005E6417    mov         eax,dword ptr [ebp-50]
 005E641A    add         ecx,dword ptr [eax+20]
 005E641D    mov         eax,dword ptr [ebp-50]
 005E6420    mov         edx,dword ptr [eax+1A]
 005E6423    mov         eax,dword ptr [ebp-50]
 005E6426    mov         eax,dword ptr [eax+16]
 005E6429    call        Rect
 005E642E    mov         eax,dword ptr [ebp-6C]
 005E6431    sub         eax,dword ptr [ebp-74]
 005E6434    cmp         eax,dword ptr [ebp-48]
>005E6437    jle         005E6442
 005E6439    mov         eax,dword ptr [ebp-6C]
 005E643C    sub         eax,dword ptr [ebp-74]
 005E643F    mov         dword ptr [ebp-48],eax
 005E6442    mov         eax,dword ptr [ebp-6C]
 005E6445    cmp         eax,dword ptr [ebp-4C]
>005E6448    jle         005E6450
 005E644A    mov         eax,dword ptr [ebp-6C]
 005E644D    mov         dword ptr [ebp-4C],eax
 005E6450    mov         eax,dword ptr [ebp-21]
 005E6453    cmp         eax,dword ptr [ebp-78]
>005E6456    jle         005E646B
 005E6458    mov         eax,dword ptr [ebp-54]
 005E645B    cmp         eax,dword ptr [ebp-74]
>005E645E    jle         005E646B
 005E6460    mov         byte ptr [ebp-5],0
 005E6464    mov         eax,dword ptr [ebp-44]
 005E6467    inc         eax
 005E6468    mov         dword ptr [ebp-4],eax
 005E646B    mov         eax,dword ptr [ebp-10]
 005E646E    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E6474    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E6477    dec         eax
 005E6478    cmp         eax,dword ptr [ebp-44]
>005E647B    je          005E64A4
 005E647D    mov         eax,dword ptr [ebp-44]
 005E6480    inc         eax
 005E6481    cmp         eax,dword ptr [ebp-0C]
>005E6484    jne         005E648C
 005E6486    cmp         byte ptr [ebp-59],0
>005E648A    jne         005E64A4
 005E648C    mov         edx,dword ptr [ebp-44]
 005E648F    inc         edx
 005E6490    mov         eax,dword ptr [ebp-10]
 005E6493    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E6499    call        TList.Get
 005E649E    cmp         byte ptr [eax+15],0
>005E64A2    je          005E650C
 005E64A4    mov         eax,dword ptr [ebp-54]
 005E64A7    cmp         eax,dword ptr [ebp-4C]
>005E64AA    jge         005E64CC
 005E64AC    cmp         dword ptr [ebp-4],0
>005E64B0    jne         005E64BA
 005E64B2    mov         eax,dword ptr [ebp-54]
 005E64B5    cmp         eax,dword ptr [ebp-74]
>005E64B8    jl          005E64BE
 005E64BA    xor         eax,eax
>005E64BC    jmp         005E64C0
 005E64BE    mov         al,1
 005E64C0    mov         byte ptr [ebp-11],al
 005E64C3    push        ebp
 005E64C4    call        005E6024
 005E64C9    pop         ecx
>005E64CA    jmp         005E651F
 005E64CC    mov         eax,dword ptr [ebp-78]
 005E64CF    cmp         eax,dword ptr [ebp-21]
>005E64D2    jg          005E64E1
 005E64D4    mov         eax,dword ptr [ebp-50]
 005E64D7    cmp         dword ptr [eax+34],0
>005E64DB    je          005E64E1
 005E64DD    xor         eax,eax
>005E64DF    jmp         005E64E3
 005E64E1    mov         al,1
 005E64E3    mov         byte ptr [ebp-5],al
 005E64E6    mov         eax,dword ptr [ebp-44]
 005E64E9    inc         eax
 005E64EA    mov         dword ptr [ebp-4],eax
 005E64ED    mov         eax,dword ptr [ebp-10]
 005E64F0    cmp         byte ptr [eax+234],0;TCustomControlBar.FRowSnap:Boolean
>005E64F7    je          005E6507
 005E64F9    mov         eax,dword ptr [ebp-10]
 005E64FC    mov         eax,dword ptr [eax+230];TCustomControlBar.FRowSize:TRowSize
 005E6502    mov         dword ptr [ebp-48],eax
>005E6505    jmp         005E650C
 005E6507    xor         eax,eax
 005E6509    mov         dword ptr [ebp-48],eax
 005E650C    inc         dword ptr [ebp-44]
 005E650F    dec         dword ptr [ebp-68]
>005E6512    jne         005E63EC
 005E6518    push        ebp
 005E6519    call        005E6024
 005E651E    pop         ecx
 005E651F    pop         edi
 005E6520    pop         esi
 005E6521    pop         ebx
 005E6522    mov         esp,ebp
 005E6524    pop         ebp
 005E6525    ret         24
end;*}

//005E6528
{*procedure sub_005E6528(?:TCustomControlBar; ?:?);
begin
 005E6528    push        ebp
 005E6529    mov         ebp,esp
 005E652B    add         esp,0FFFFFFEC
 005E652E    mov         dword ptr [ebp-8],edx
 005E6531    mov         dword ptr [ebp-4],eax
 005E6534    mov         eax,dword ptr [ebp-8]
 005E6537    mov         edx,dword ptr [ebp-4]
 005E653A    mov         dword ptr [edx+214],eax
 005E6540    mov         eax,dword ptr [ebp-4]
 005E6543    mov         eax,dword ptr [eax+228]
 005E6549    mov         eax,dword ptr [eax+8]
 005E654C    dec         eax
 005E654D    test        eax,eax
>005E654F    jl          005E65C6
 005E6551    inc         eax
 005E6552    mov         dword ptr [ebp-14],eax
 005E6555    mov         dword ptr [ebp-0C],0
 005E655C    mov         edx,dword ptr [ebp-0C]
 005E655F    mov         eax,dword ptr [ebp-4]
 005E6562    mov         eax,dword ptr [eax+228]
 005E6568    call        TList.Get
 005E656D    mov         dword ptr [ebp-10],eax
 005E6570    mov         eax,dword ptr [ebp-10]
 005E6573    mov         eax,dword ptr [eax]
 005E6575    cmp         eax,dword ptr [ebp-8]
>005E6578    jne         005E65BE
 005E657A    mov         eax,dword ptr [ebp-10]
 005E657D    cmp         byte ptr [eax+15],0
>005E6581    je          005E65AB
 005E6583    mov         eax,dword ptr [ebp-4]
 005E6586    mov         eax,dword ptr [eax+228]
 005E658C    mov         eax,dword ptr [eax+8]
 005E658F    dec         eax
 005E6590    cmp         eax,dword ptr [ebp-0C]
>005E6593    jle         005E65AB
 005E6595    mov         edx,dword ptr [ebp-0C]
 005E6598    inc         edx
 005E6599    mov         eax,dword ptr [ebp-4]
 005E659C    mov         eax,dword ptr [eax+228]
 005E65A2    call        TList.Get
 005E65A7    mov         byte ptr [eax+15],1
 005E65AB    mov         edx,dword ptr [ebp-10]
 005E65AE    mov         eax,dword ptr [ebp-4]
 005E65B1    mov         eax,dword ptr [eax+228]
 005E65B7    call        005E4680
>005E65BC    jmp         005E65C6
 005E65BE    inc         dword ptr [ebp-0C]
 005E65C1    dec         dword ptr [ebp-14]
>005E65C4    jne         005E655C
 005E65C6    mov         esp,ebp
 005E65C8    pop         ebp
 005E65C9    ret
end;*}

//005E65CC
{*procedure sub_005E65CC(?:?; ?:?; ?:?; ?:?);
begin
 005E65CC    push        ebp
 005E65CD    mov         ebp,esp
 005E65CF    add         esp,0FFFFFFF4
 005E65D2    push        ebx
 005E65D3    mov         dword ptr [ebp-0C],ecx
 005E65D6    mov         dword ptr [ebp-8],edx
 005E65D9    mov         dword ptr [ebp-4],eax
 005E65DC    mov         eax,dword ptr [ebp+8]
 005E65DF    cmp         dword ptr [eax],0
>005E65E2    jne         005E65ED
 005E65E4    mov         eax,dword ptr [ebp+8]
 005E65E7    mov         dword ptr [eax],1
 005E65ED    mov         eax,dword ptr [ebp-4]
 005E65F0    cmp         word ptr [eax+242],0;TCustomControlBar.?f242:word
>005E65F8    je          005E661B
 005E65FA    mov         eax,dword ptr [ebp-0C]
 005E65FD    push        eax
 005E65FE    mov         eax,dword ptr [ebp+0C]
 005E6601    push        eax
 005E6602    mov         eax,dword ptr [ebp+8]
 005E6605    push        eax
 005E6606    mov         ebx,dword ptr [ebp-4]
 005E6609    mov         ecx,dword ptr [ebp-8]
 005E660C    mov         edx,dword ptr [ebp-4]
 005E660F    mov         eax,dword ptr [ebx+244];TCustomControlBar.?f244:dword
 005E6615    call        dword ptr [ebx+240];TCustomControlBar.FOnBandInfo
 005E661B    pop         ebx
 005E661C    mov         esp,ebp
 005E661E    pop         ebp
 005E661F    ret         8
end;*}

//005E6624
{*procedure sub_005E6624(?:?);
begin
 005E6624    push        ebp
 005E6625    mov         ebp,esp
 005E6627    mov         eax,dword ptr [ebp+8]
 005E662A    mov         eax,dword ptr [eax-4]
 005E662D    mov         eax,dword ptr [eax+10]
 005E6630    mov         edx,80000014
 005E6635    call        TPen.SetColor
 005E663A    mov         eax,dword ptr [ebp+8]
 005E663D    mov         ecx,dword ptr [eax-10]
 005E6640    mov         eax,dword ptr [ebp+8]
 005E6643    mov         edx,dword ptr [eax-14]
 005E6646    add         edx,2
 005E6649    mov         eax,dword ptr [ebp+8]
 005E664C    mov         eax,dword ptr [eax-4]
 005E664F    call        005C12F0
 005E6654    mov         eax,dword ptr [ebp+8]
 005E6657    mov         ecx,dword ptr [eax-10]
 005E665A    mov         eax,dword ptr [ebp+8]
 005E665D    mov         edx,dword ptr [eax-14]
 005E6660    mov         eax,dword ptr [ebp+8]
 005E6663    mov         eax,dword ptr [eax-4]
 005E6666    call        005C1274
 005E666B    mov         eax,dword ptr [ebp+8]
 005E666E    mov         ecx,dword ptr [eax-8]
 005E6671    inc         ecx
 005E6672    mov         eax,dword ptr [ebp+8]
 005E6675    mov         edx,dword ptr [eax-14]
 005E6678    mov         eax,dword ptr [ebp+8]
 005E667B    mov         eax,dword ptr [eax-4]
 005E667E    call        005C1274
 005E6683    mov         eax,dword ptr [ebp+8]
 005E6686    mov         eax,dword ptr [eax-4]
 005E6689    mov         eax,dword ptr [eax+10]
 005E668C    mov         edx,80000010
 005E6691    call        TPen.SetColor
 005E6696    mov         eax,dword ptr [ebp+8]
 005E6699    mov         ecx,dword ptr [eax-10]
 005E669C    mov         eax,dword ptr [ebp+8]
 005E669F    mov         edx,dword ptr [eax-0C]
 005E66A2    mov         eax,dword ptr [ebp+8]
 005E66A5    mov         eax,dword ptr [eax-4]
 005E66A8    call        005C12F0
 005E66AD    mov         eax,dword ptr [ebp+8]
 005E66B0    mov         ecx,dword ptr [eax-8]
 005E66B3    mov         eax,dword ptr [ebp+8]
 005E66B6    mov         edx,dword ptr [eax-0C]
 005E66B9    mov         eax,dword ptr [ebp+8]
 005E66BC    mov         eax,dword ptr [eax-4]
 005E66BF    call        005C1274
 005E66C4    mov         eax,dword ptr [ebp+8]
 005E66C7    mov         ecx,dword ptr [eax-8]
 005E66CA    mov         eax,dword ptr [ebp+8]
 005E66CD    mov         edx,dword ptr [eax-14]
 005E66D0    mov         eax,dword ptr [ebp+8]
 005E66D3    mov         eax,dword ptr [eax-4]
 005E66D6    call        005C1274
 005E66DB    pop         ebp
 005E66DC    ret
end;*}

//005E66E0
{*procedure sub_005E66E0(?:?; ?:?; ?:?);
begin
 005E66E0    push        ebp
 005E66E1    mov         ebp,esp
 005E66E3    add         esp,0FFFFFFE0
 005E66E6    push        ebx
 005E66E7    mov         dword ptr [ebp-1C],ecx
 005E66EA    mov         dword ptr [ebp-4],edx
 005E66ED    mov         dword ptr [ebp-18],eax
 005E66F0    mov         al,[005E6770];0x3 gvar_005E6770
 005E66F5    mov         byte ptr [ebp-1D],al
 005E66F8    mov         eax,dword ptr [ebp+8]
 005E66FB    push        eax
 005E66FC    lea         eax,[ebp-1D]
 005E66FF    push        eax
 005E6700    mov         ecx,dword ptr [ebp-4]
 005E6703    mov         edx,dword ptr [ebp-1C]
 005E6706    mov         eax,dword ptr [ebp-18]
 005E6709    mov         ebx,dword ptr [eax]
 005E670B    call        dword ptr [ebx+0CC];TCustomControlBar.sub_005E7040
 005E6711    test        byte ptr [ebp-1D],2
>005E6715    je          005E672D
 005E6717    push        0F
 005E6719    push        4
 005E671B    mov         eax,dword ptr [ebp+8]
 005E671E    push        eax
 005E671F    mov         eax,dword ptr [ebp-4]
 005E6722    call        TCanvas.GetHandle
 005E6727    push        eax
 005E6728    call        USER32.DrawEdge
 005E672D    test        byte ptr [ebp-1D],1
>005E6731    je          005E6769
 005E6733    mov         eax,dword ptr [ebp+8]
 005E6736    mov         eax,dword ptr [eax+0C]
 005E6739    sub         eax,3
 005E673C    push        eax
 005E673D    lea         eax,[ebp-14]
 005E6740    push        eax
 005E6741    mov         ecx,dword ptr [ebp+8]
 005E6744    mov         ecx,dword ptr [ecx]
 005E6746    add         ecx,3
 005E6749    add         ecx,2
 005E674C    mov         edx,dword ptr [ebp+8]
 005E674F    mov         edx,dword ptr [edx+4]
 005E6752    add         edx,2
 005E6755    mov         eax,dword ptr [ebp+8]
 005E6758    mov         eax,dword ptr [eax]
 005E675A    add         eax,3
 005E675D    call        Rect
 005E6762    push        ebp
 005E6763    call        005E6624
 005E6768    pop         ecx
 005E6769    pop         ebx
 005E676A    mov         esp,ebp
 005E676C    pop         ebp
 005E676D    ret         4
end;*}

//005E6774
procedure sub_005E6774;
begin
{*
 005E6774    push        ebp
 005E6775    mov         ebp,esp
 005E6777    add         esp,0FFFFFFD4
 005E677A    push        ebx
 005E677B    mov         dword ptr [ebp-4],eax
 005E677E    mov         eax,dword ptr [ebp-4]
 005E6781    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E6787    mov         dword ptr [ebp-14],eax
 005E678A    mov         eax,dword ptr [ebp-4]
 005E678D    cmp         word ptr [eax+25A],0;TCustomControlBar.?f25A:word
>005E6795    je          005E67A9
 005E6797    mov         ebx,dword ptr [ebp-4]
 005E679A    mov         edx,dword ptr [ebp-4]
 005E679D    mov         eax,dword ptr [ebx+25C];TCustomControlBar.?f25C:dword
 005E67A3    call        dword ptr [ebx+258];TCustomControlBar.FOnPaint
 005E67A9    mov         eax,dword ptr [ebp-4]
 005E67AC    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E67B2    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E67B5    dec         eax
 005E67B6    test        eax,eax
>005E67B8    jl          005E685E
 005E67BE    inc         eax
 005E67BF    mov         dword ptr [ebp-18],eax
 005E67C2    mov         dword ptr [ebp-8],0
 005E67C9    mov         edx,dword ptr [ebp-8]
 005E67CC    mov         eax,dword ptr [ebp-4]
 005E67CF    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E67D5    call        TList.Get
 005E67DA    mov         dword ptr [ebp-0C],eax
 005E67DD    mov         eax,dword ptr [ebp-0C]
 005E67E0    mov         eax,dword ptr [eax]
 005E67E2    mov         dword ptr [ebp-10],eax
 005E67E5    mov         eax,dword ptr [ebp-0C]
 005E67E8    cmp         dword ptr [eax+30],0
>005E67EC    jne         005E6852
 005E67EE    mov         eax,dword ptr [ebp-4]
 005E67F1    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E67F5    jne         005E6800
 005E67F7    mov         eax,dword ptr [ebp-10]
 005E67FA    cmp         byte ptr [eax+57],0
>005E67FE    je          005E6852
 005E6800    lea         edx,[ebp-2C]
 005E6803    mov         eax,dword ptr [ebp-10]
 005E6806    call        005F2E0C
 005E680B    mov         eax,dword ptr [ebp-0C]
 005E680E    add         eax,4
 005E6811    mov         dword ptr [ebp-1C],eax
 005E6814    mov         eax,dword ptr [ebp-1C]
 005E6817    mov         eax,dword ptr [eax]
 005E6819    sub         dword ptr [ebp-2C],eax
 005E681C    mov         eax,dword ptr [ebp-1C]
 005E681F    mov         eax,dword ptr [eax+4]
 005E6822    sub         dword ptr [ebp-28],eax
 005E6825    mov         eax,dword ptr [ebp-1C]
 005E6828    mov         eax,dword ptr [eax+8]
 005E682B    add         dword ptr [ebp-24],eax
 005E682E    mov         eax,dword ptr [ebp-1C]
 005E6831    mov         eax,dword ptr [eax+0C]
 005E6834    add         dword ptr [ebp-20],eax
 005E6837    lea         eax,[ebp-2C]
 005E683A    push        eax
 005E683B    mov         ecx,dword ptr [ebp-10]
 005E683E    mov         eax,dword ptr [ebp-4]
 005E6841    mov         edx,dword ptr [eax+208];TCustomControlBar..................................................
 005E6847    mov         eax,dword ptr [ebp-4]
 005E684A    mov         ebx,dword ptr [eax]
 005E684C    call        dword ptr [ebx+0D8];TCustomControlBar.sub_005E66E0
 005E6852    inc         dword ptr [ebp-8]
 005E6855    dec         dword ptr [ebp-18]
>005E6858    jne         005E67C9
 005E685E    pop         ebx
 005E685F    mov         esp,ebp
 005E6861    pop         ebp
 005E6862    ret
*}
end;

//005E6864
{*function sub_005E6864(?:TCustomControlBar; ?:?; ?:?):?;
begin
 005E6864    push        ebp
 005E6865    mov         ebp,esp
 005E6867    add         esp,0FFFFFFEC
 005E686A    mov         dword ptr [ebp-0C],ecx
 005E686D    mov         dword ptr [ebp-8],edx
 005E6870    mov         dword ptr [ebp-4],eax
 005E6873    mov         ecx,dword ptr [ebp-0C]
 005E6876    mov         edx,dword ptr [ebp-8]
 005E6879    mov         eax,dword ptr [ebp-4]
 005E687C    call        005E68A0
 005E6881    mov         dword ptr [ebp-14],eax
 005E6884    cmp         dword ptr [ebp-14],0
>005E6888    je          005E6894
 005E688A    mov         eax,dword ptr [ebp-14]
 005E688D    mov         eax,dword ptr [eax]
 005E688F    mov         dword ptr [ebp-10],eax
>005E6892    jmp         005E6899
 005E6894    xor         eax,eax
 005E6896    mov         dword ptr [ebp-10],eax
 005E6899    mov         eax,dword ptr [ebp-10]
 005E689C    mov         esp,ebp
 005E689E    pop         ebp
 005E689F    ret
end;*}

//005E68A0
{*function sub_005E68A0(?:TCustomControlBar; ?:?; ?:?):?;
begin
 005E68A0    push        ebp
 005E68A1    mov         ebp,esp
 005E68A3    add         esp,0FFFFFFC8
 005E68A6    mov         dword ptr [ebp-0C],ecx
 005E68A9    mov         dword ptr [ebp-8],edx
 005E68AC    mov         dword ptr [ebp-4],eax
 005E68AF    mov         eax,dword ptr [ebp-4]
 005E68B2    mov         eax,dword ptr [eax+228]
 005E68B8    mov         eax,dword ptr [eax+8]
 005E68BB    dec         eax
 005E68BC    test        eax,eax
>005E68BE    jl          005E696C
 005E68C4    inc         eax
 005E68C5    mov         dword ptr [ebp-18],eax
 005E68C8    mov         dword ptr [ebp-14],0
 005E68CF    mov         eax,dword ptr [ebp-4]
 005E68D2    mov         eax,dword ptr [eax+228]
 005E68D8    mov         edx,dword ptr [ebp-14]
 005E68DB    call        TList.Get
 005E68E0    mov         dword ptr [ebp-10],eax
 005E68E3    mov         eax,dword ptr [ebp-10]
 005E68E6    mov         dword ptr [ebp-1C],eax
 005E68E9    mov         eax,dword ptr [ebp-1C]
 005E68EC    cmp         dword ptr [eax+30],0
>005E68F0    jne         005E6960
 005E68F2    mov         eax,dword ptr [ebp-4]
 005E68F5    test        byte ptr [eax+1C],10
>005E68F9    jne         005E6906
 005E68FB    mov         eax,dword ptr [ebp-1C]
 005E68FE    mov         eax,dword ptr [eax]
 005E6900    cmp         byte ptr [eax+57],0
>005E6904    je          005E6960
 005E6906    lea         edx,[ebp-30]
 005E6909    mov         eax,dword ptr [ebp-1C]
 005E690C    mov         eax,dword ptr [eax]
 005E690E    call        005F2E0C
 005E6913    mov         eax,dword ptr [ebp-1C]
 005E6916    add         eax,4
 005E6919    mov         dword ptr [ebp-20],eax
 005E691C    mov         eax,dword ptr [ebp-20]
 005E691F    mov         eax,dword ptr [eax]
 005E6921    sub         dword ptr [ebp-30],eax
 005E6924    mov         eax,dword ptr [ebp-20]
 005E6927    mov         eax,dword ptr [eax+4]
 005E692A    sub         dword ptr [ebp-2C],eax
 005E692D    mov         eax,dword ptr [ebp-20]
 005E6930    mov         eax,dword ptr [eax+8]
 005E6933    add         dword ptr [ebp-28],eax
 005E6936    mov         eax,dword ptr [ebp-20]
 005E6939    mov         eax,dword ptr [eax+0C]
 005E693C    add         dword ptr [ebp-24],eax
 005E693F    lea         ecx,[ebp-38]
 005E6942    mov         edx,dword ptr [ebp-0C]
 005E6945    mov         eax,dword ptr [ebp-8]
 005E6948    call        Point
 005E694D    push        dword ptr [ebp-34]
 005E6950    push        dword ptr [ebp-38]
 005E6953    lea         eax,[ebp-30]
 005E6956    push        eax
 005E6957    call        USER32.PtInRect
 005E695C    test        eax,eax
>005E695E    jne         005E6971
 005E6960    inc         dword ptr [ebp-14]
 005E6963    dec         dword ptr [ebp-18]
>005E6966    jne         005E68CF
 005E696C    xor         eax,eax
 005E696E    mov         dword ptr [ebp-10],eax
 005E6971    mov         eax,dword ptr [ebp-10]
 005E6974    mov         esp,ebp
 005E6976    pop         ebp
 005E6977    ret
end;*}

//005E6978
{*procedure sub_005E6978(?:TCustomControlBar; ?:?);
begin
 005E6978    push        ebp
 005E6979    mov         ebp,esp
 005E697B    add         esp,0FFFFFFE8
 005E697E    push        ebx
 005E697F    mov         dword ptr [ebp-8],edx
 005E6982    mov         dword ptr [ebp-4],eax
 005E6985    mov         eax,dword ptr [ebp-4]
 005E6988    call        TWinControl.HandleAllocated
 005E698D    test        al,al
>005E698F    je          005E6A00
 005E6991    mov         eax,dword ptr [ebp-4]
 005E6994    test        byte ptr [eax+1C],8
>005E6998    jne         005E6A00
 005E699A    mov         eax,dword ptr [ebp-4]
 005E699D    call        005F7800
 005E69A2    xor         eax,eax
 005E69A4    push        ebp
 005E69A5    push        5E69F9
 005E69AA    push        dword ptr fs:[eax]
 005E69AD    mov         dword ptr fs:[eax],esp
 005E69B0    lea         edx,[ebp-18]
 005E69B3    mov         eax,dword ptr [ebp-4]
 005E69B6    mov         ecx,dword ptr [eax]
 005E69B8    call        dword ptr [ecx+44]
 005E69BB    lea         ecx,[ebp-18]
 005E69BE    mov         edx,dword ptr [ebp-8]
 005E69C1    mov         eax,dword ptr [ebp-4]
 005E69C4    mov         ebx,dword ptr [eax]
 005E69C6    call        dword ptr [ebx+90]
 005E69CC    xor         eax,eax
 005E69CE    pop         edx
 005E69CF    pop         ecx
 005E69D0    pop         ecx
 005E69D1    mov         dword ptr fs:[eax],edx
 005E69D4    push        5E6A00
 005E69D9    mov         eax,dword ptr [ebp-4]
 005E69DC    mov         dx,word ptr ds:[5E6A08];0x10 gvar_005E6A08
 005E69E3    not         edx
 005E69E5    and         dx,word ptr [eax+54]
 005E69E9    mov         eax,dword ptr [ebp-4]
 005E69EC    mov         word ptr [eax+54],dx
 005E69F0    mov         eax,dword ptr [ebp-4]
 005E69F3    call        005F7814
 005E69F8    ret
>005E69F9    jmp         @HandleFinally
>005E69FE    jmp         005E69D9
 005E6A00    pop         ebx
 005E6A01    mov         esp,ebp
 005E6A03    pop         ebp
 005E6A04    ret
end;*}

//005E6A0C
{*procedure TCustomControlBar.sub_005E6A0C(?:?);
begin
 005E6A0C    push        ebp
 005E6A0D    mov         ebp,esp
 005E6A0F    add         esp,0FFFFFFE8
 005E6A12    push        ebx
 005E6A13    mov         dword ptr [ebp-8],edx
 005E6A16    mov         dword ptr [ebp-4],eax
 005E6A19    mov         edx,dword ptr [ebp-8]
 005E6A1C    mov         eax,dword ptr [ebp-4]
 005E6A1F    call        TWinControl.sub_005FB560
 005E6A24    mov         eax,dword ptr [ebp-8]
 005E6A27    cmp         word ptr [eax+4],11
>005E6A2C    jne         005E6AB3
 005E6A32    mov         eax,dword ptr [ebp-4]
 005E6A35    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E6A39    jne         005E6AB3
 005E6A3B    mov         eax,dword ptr [ebp-4]
 005E6A3E    cmp         byte ptr [eax+211],0;TCustomControlBar.FAutoDrag:Boolean
>005E6A45    je          005E6AB3
 005E6A47    mov         eax,dword ptr [ebp-4]
 005E6A4A    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E6A51    je          005E6AB3
 005E6A53    mov         eax,dword ptr [ebp-4]
 005E6A56    mov         edx,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6A5C    mov         eax,dword ptr [ebp-4]
 005E6A5F    call        005E6E18
 005E6A64    mov         dword ptr [ebp-0C],eax
 005E6A67    cmp         dword ptr [ebp-0C],0
>005E6A6B    je          005E6AB3
 005E6A6D    mov         eax,dword ptr [ebp-0C]
 005E6A70    cmp         dword ptr [eax],0
>005E6A73    je          005E6AB3
 005E6A75    mov         eax,dword ptr [ebp-0C]
 005E6A78    mov         dword ptr [ebp-18],eax
 005E6A7B    lea         eax,[ebp-14]
 005E6A7E    push        eax
 005E6A7F    call        USER32.GetCursorPos
 005E6A84    push        1
 005E6A86    lea         eax,[ebp-14]
 005E6A89    push        eax
 005E6A8A    mov         eax,dword ptr [ebp-4]
 005E6A8D    call        TWinControl.GetHandle
 005E6A92    push        eax
 005E6A93    push        0
 005E6A95    call        USER32.MapWindowPoints
 005E6A9A    mov         eax,dword ptr [ebp-10]
 005E6A9D    push        eax
 005E6A9E    push        1
 005E6AA0    mov         eax,dword ptr [ebp-18]
 005E6AA3    mov         edx,dword ptr [eax]
 005E6AA5    mov         ecx,dword ptr [ebp-14]
 005E6AA8    mov         eax,dword ptr [ebp-4]
 005E6AAB    mov         ebx,dword ptr [eax]
 005E6AAD    call        dword ptr [ebx+0D0];TCustomControlBar.sub_005E6E94
 005E6AB3    pop         ebx
 005E6AB4    mov         esp,ebp
 005E6AB6    pop         ebp
 005E6AB7    ret
end;*}

//005E6AB8
{*procedure sub_005E6AB8(?:?);
begin
 005E6AB8    push        ebp
 005E6AB9    mov         ebp,esp
 005E6ABB    push        ecx
 005E6ABC    mov         eax,dword ptr [ebp+8]
 005E6ABF    mov         eax,dword ptr [eax-4]
 005E6AC2    mov         eax,dword ptr [eax+228]
 005E6AC8    mov         eax,dword ptr [eax+8]
 005E6ACB    dec         eax
 005E6ACC    cmp         eax,0
>005E6ACF    jl          005E6AF6
 005E6AD1    mov         dword ptr [ebp-4],eax
 005E6AD4    mov         eax,dword ptr [ebp+8]
 005E6AD7    mov         eax,dword ptr [eax-4]
 005E6ADA    mov         eax,dword ptr [eax+228]
 005E6AE0    mov         edx,dword ptr [ebp-4]
 005E6AE3    call        TList.Get
 005E6AE8    call        @FreeMem
 005E6AED    dec         dword ptr [ebp-4]
 005E6AF0    cmp         dword ptr [ebp-4],0FFFFFFFF
>005E6AF4    jne         005E6AD4
 005E6AF6    mov         eax,dword ptr [ebp+8]
 005E6AF9    mov         eax,dword ptr [eax-4]
 005E6AFC    mov         eax,dword ptr [eax+228]
 005E6B02    mov         edx,dword ptr [eax]
 005E6B04    call        dword ptr [edx+8]
 005E6B07    mov         eax,dword ptr [ebp+8]
 005E6B0A    mov         eax,dword ptr [eax-4]
 005E6B0D    xor         edx,edx
 005E6B0F    mov         dword ptr [eax+218],edx
 005E6B15    mov         eax,dword ptr [ebp+8]
 005E6B18    mov         eax,dword ptr [eax-4]
 005E6B1B    xor         edx,edx
 005E6B1D    mov         dword ptr [eax+214],edx
 005E6B23    mov         eax,dword ptr [ebp+8]
 005E6B26    mov         eax,dword ptr [eax-4]
 005E6B29    xor         edx,edx
 005E6B2B    call        005E6978
 005E6B30    pop         ecx
 005E6B31    pop         ebp
 005E6B32    ret
end;*}

//005E6B34
procedure TCustomControlBar.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E6B34    push        ebp
 005E6B35    mov         ebp,esp
 005E6B37    add         esp,0FFFFFFEC
 005E6B3A    push        ebx
 005E6B3B    mov         byte ptr [ebp-6],cl
 005E6B3E    mov         byte ptr [ebp-5],dl
 005E6B41    mov         dword ptr [ebp-4],eax
 005E6B44    mov         eax,dword ptr [ebp+0C]
 005E6B47    push        eax
 005E6B48    mov         eax,dword ptr [ebp+8]
 005E6B4B    push        eax
 005E6B4C    mov         cl,byte ptr [ebp-6]
 005E6B4F    mov         dl,byte ptr [ebp-5]
 005E6B52    mov         eax,dword ptr [ebp-4]
 005E6B55    call        TControl.MouseDown
 005E6B5A    mov         eax,dword ptr [ebp-4]
 005E6B5D    call        005F3AD4
 005E6B62    test        al,al
>005E6B64    je          005E6C55
 005E6B6A    push        ebp
 005E6B6B    call        005E6AB8
 005E6B70    pop         ecx
 005E6B71    mov         eax,dword ptr [ebp-4]
 005E6B74    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E6B7B    je          005E6B93
 005E6B7D    mov         eax,dword ptr [ebp-4]
 005E6B80    mov         edx,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6B86    mov         eax,dword ptr [ebp-4]
 005E6B89    call        005E6E18
 005E6B8E    mov         dword ptr [ebp-0C],eax
>005E6B91    jmp         005E6BA4
 005E6B93    mov         ecx,dword ptr [ebp+8]
 005E6B96    mov         edx,dword ptr [ebp+0C]
 005E6B99    mov         eax,dword ptr [ebp-4]
 005E6B9C    call        005E68A0
 005E6BA1    mov         dword ptr [ebp-0C],eax
 005E6BA4    cmp         dword ptr [ebp-0C],0
>005E6BA8    je          005E6C55
 005E6BAE    test        byte ptr [ebp-6],40
>005E6BB2    je          005E6BEC
 005E6BB4    mov         eax,dword ptr [ebp-4]
 005E6BB7    cmp         byte ptr [eax+211],0;TCustomControlBar.FAutoDrag:Boolean
>005E6BBE    jne         005E6BC6
 005E6BC0    test        byte ptr [ebp-6],40
>005E6BC4    je          005E6BEC
 005E6BC6    mov         eax,dword ptr [ebp-4]
 005E6BC9    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E6BCD    jne         005E6BEC
 005E6BCF    mov         eax,dword ptr [ebp+8]
 005E6BD2    push        eax
 005E6BD3    push        0
 005E6BD5    mov         ecx,dword ptr [ebp+0C]
 005E6BD8    mov         eax,dword ptr [ebp-0C]
 005E6BDB    mov         edx,dword ptr [eax]
 005E6BDD    mov         eax,dword ptr [ebp-4]
 005E6BE0    mov         ebx,dword ptr [eax]
 005E6BE2    call        dword ptr [ebx+0D0];TCustomControlBar.sub_005E6E94
 005E6BE8    test        al,al
>005E6BEA    jne         005E6C55
 005E6BEC    mov         eax,dword ptr [ebp-4]
 005E6BEF    mov         edx,dword ptr [ebp-0C]
 005E6BF2    mov         edx,dword ptr [edx]
 005E6BF4    mov         dword ptr [eax+218],edx;TCustomControlBar.FDragControl:TControl
 005E6BFA    mov         eax,dword ptr [ebp-4]
 005E6BFD    mov         eax,dword ptr [eax+214];TCustomControlBar.FDockingControl:TControl
 005E6C03    mov         edx,dword ptr [ebp-4]
 005E6C06    cmp         eax,dword ptr [edx+218];TCustomControlBar.FDragControl:TControl
>005E6C0C    jne         005E6C1B
 005E6C0E    mov         eax,dword ptr [ebp-4]
 005E6C11    xor         edx,edx
 005E6C13    mov         dword ptr [eax+214],edx;TCustomControlBar.FDockingControl:TControl
>005E6C19    jmp         005E6C26
 005E6C1B    mov         eax,dword ptr [ebp-4]
 005E6C1E    mov         edx,dword ptr [eax]
 005E6C20    call        dword ptr [edx+0DC];TCustomControlBar.sub_005E5D54
 005E6C26    lea         ecx,[ebp-14]
 005E6C29    mov         eax,dword ptr [ebp-0C]
 005E6C2C    mov         edx,dword ptr [eax+3D]
 005E6C2F    sub         edx,dword ptr [ebp+8]
 005E6C32    mov         eax,dword ptr [ebp-0C]
 005E6C35    mov         eax,dword ptr [eax+39]
 005E6C38    sub         eax,dword ptr [ebp+0C]
 005E6C3B    call        Point
 005E6C40    mov         eax,dword ptr [ebp-4]
 005E6C43    mov         edx,dword ptr [ebp-14]
 005E6C46    mov         dword ptr [eax+21C],edx;TCustomControlBar.FDragOffset:TPoint
 005E6C4C    mov         edx,dword ptr [ebp-10]
 005E6C4F    mov         dword ptr [eax+220],edx
 005E6C55    pop         ebx
 005E6C56    mov         esp,ebp
 005E6C58    pop         ebp
 005E6C59    ret         8
*}
end;

//005E6C5C
procedure TCustomControlBar.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E6C5C    push        ebp
 005E6C5D    mov         ebp,esp
 005E6C5F    add         esp,0FFFFFFE8
 005E6C62    push        ebx
 005E6C63    mov         dword ptr [ebp-0C],ecx
 005E6C66    mov         byte ptr [ebp-5],dl
 005E6C69    mov         dword ptr [ebp-4],eax
 005E6C6C    mov         eax,dword ptr [ebp+8]
 005E6C6F    push        eax
 005E6C70    mov         ecx,dword ptr [ebp-0C]
 005E6C73    mov         dl,byte ptr [ebp-5]
 005E6C76    mov         eax,dword ptr [ebp-4]
 005E6C79    call        TControl.MouseMove
 005E6C7E    mov         eax,dword ptr [ebp-4]
 005E6C81    call        005F3AD4
 005E6C86    test        al,al
>005E6C88    je          005E6D9C
 005E6C8E    mov         eax,dword ptr [ebp-4]
 005E6C91    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E6C98    je          005E6D9C
 005E6C9E    mov         eax,dword ptr [ebp-4]
 005E6CA1    mov         edx,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6CA7    mov         eax,dword ptr [ebp-4]
 005E6CAA    call        005E6E18
 005E6CAF    mov         dword ptr [ebp-10],eax
 005E6CB2    cmp         dword ptr [ebp-10],0
>005E6CB6    je          005E6D9C
 005E6CBC    mov         eax,dword ptr [ebp-10]
 005E6CBF    mov         dword ptr [ebp-18],eax
 005E6CC2    mov         eax,dword ptr [ebp-0C]
 005E6CC5    mov         edx,dword ptr [ebp-4]
 005E6CC8    add         eax,dword ptr [edx+21C];TCustomControlBar.FDragOffset:TPoint
 005E6CCE    mov         edx,dword ptr [ebp-18]
 005E6CD1    mov         dword ptr [edx+16],eax
 005E6CD4    mov         eax,dword ptr [ebp+8]
 005E6CD7    mov         edx,dword ptr [ebp-4]
 005E6CDA    add         eax,dword ptr [edx+220]
 005E6CE0    mov         edx,dword ptr [ebp-18]
 005E6CE3    mov         dword ptr [edx+1A],eax
 005E6CE6    mov         eax,dword ptr [ebp-18]
 005E6CE9    mov         edx,dword ptr [ebp-18]
 005E6CEC    mov         ecx,dword ptr [edx+16]
 005E6CEF    mov         dword ptr [eax+39],ecx
 005E6CF2    mov         ecx,dword ptr [edx+1A]
 005E6CF5    mov         dword ptr [eax+3D],ecx
 005E6CF8    mov         eax,dword ptr [ebp-18]
 005E6CFB    mov         eax,dword ptr [eax]
 005E6CFD    mov         eax,dword ptr [eax+48]
 005E6D00    mov         edx,dword ptr [ebp-18]
 005E6D03    add         eax,dword ptr [edx+4]
 005E6D06    mov         edx,dword ptr [ebp-18]
 005E6D09    add         eax,dword ptr [edx+0C]
 005E6D0C    mov         edx,dword ptr [ebp-18]
 005E6D0F    mov         dword ptr [edx+44],eax
 005E6D12    mov         eax,dword ptr [ebp-4]
 005E6D15    test        byte ptr [eax+1C],10;TCustomControlBar.FComponentState:TComponentState
>005E6D19    jne         005E6D8F
 005E6D1B    mov         eax,dword ptr [ebp-4]
 005E6D1E    cmp         byte ptr [eax+211],0;TCustomControlBar.FAutoDrag:Boolean
>005E6D25    je          005E6D8F
 005E6D27    mov         eax,dword ptr [ebp-18]
 005E6D2A    mov         eax,dword ptr [eax]
 005E6D2C    mov         eax,dword ptr [eax+4C]
 005E6D2F    mov         dword ptr [ebp-14],eax
 005E6D32    mov         eax,dword ptr [ebp-14]
 005E6D35    neg         eax
 005E6D37    mov         edx,dword ptr [ebp-18]
 005E6D3A    cmp         eax,dword ptr [edx+16]
>005E6D3D    jg          005E6D72
 005E6D3F    mov         eax,dword ptr [ebp-14]
 005E6D42    neg         eax
 005E6D44    mov         edx,dword ptr [ebp-18]
 005E6D47    cmp         eax,dword ptr [edx+1A]
>005E6D4A    jg          005E6D72
 005E6D4C    mov         eax,dword ptr [ebp-4]
 005E6D4F    call        TControl.GetClientWidth
 005E6D54    add         eax,dword ptr [ebp-14]
 005E6D57    mov         edx,dword ptr [ebp-18]
 005E6D5A    cmp         eax,dword ptr [edx+16]
>005E6D5D    jl          005E6D72
 005E6D5F    mov         eax,dword ptr [ebp-4]
 005E6D62    call        TControl.GetClientHeight
 005E6D67    add         eax,dword ptr [ebp-14]
 005E6D6A    mov         edx,dword ptr [ebp-18]
 005E6D6D    cmp         eax,dword ptr [edx+1A]
>005E6D70    jge         005E6D8F
 005E6D72    mov         eax,dword ptr [ebp+8]
 005E6D75    push        eax
 005E6D76    push        1
 005E6D78    mov         ecx,dword ptr [ebp-0C]
 005E6D7B    mov         eax,dword ptr [ebp-18]
 005E6D7E    mov         edx,dword ptr [eax]
 005E6D80    mov         eax,dword ptr [ebp-4]
 005E6D83    mov         ebx,dword ptr [eax]
 005E6D85    call        dword ptr [ebx+0D0];TCustomControlBar.sub_005E6E94
 005E6D8B    test        al,al
>005E6D8D    jne         005E6D9C
 005E6D8F    mov         eax,dword ptr [ebp-18]
 005E6D92    mov         edx,dword ptr [eax]
 005E6D94    mov         eax,dword ptr [ebp-4]
 005E6D97    call        005E6978
 005E6D9C    pop         ebx
 005E6D9D    mov         esp,ebp
 005E6D9F    pop         ebp
 005E6DA0    ret         4
*}
end;

//005E6DA4
procedure TCustomControlBar.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005E6DA4    push        ebp
 005E6DA5    mov         ebp,esp
 005E6DA7    add         esp,0FFFFFFF4
 005E6DAA    mov         byte ptr [ebp-6],cl
 005E6DAD    mov         byte ptr [ebp-5],dl
 005E6DB0    mov         dword ptr [ebp-4],eax
 005E6DB3    mov         eax,dword ptr [ebp-4]
 005E6DB6    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E6DBD    je          005E6DFC
 005E6DBF    mov         eax,dword ptr [ebp-4]
 005E6DC2    mov         eax,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6DC8    mov         dword ptr [ebp-0C],eax
 005E6DCB    mov         eax,dword ptr [ebp-4]
 005E6DCE    xor         edx,edx
 005E6DD0    mov         dword ptr [eax+218],edx;TCustomControlBar.FDragControl:TControl
 005E6DD6    mov         eax,dword ptr [ebp-4]
 005E6DD9    mov         eax,dword ptr [eax+214];TCustomControlBar.FDockingControl:TControl
 005E6DDF    cmp         eax,dword ptr [ebp-0C]
>005E6DE2    jne         005E6DF1
 005E6DE4    mov         eax,dword ptr [ebp-4]
 005E6DE7    xor         edx,edx
 005E6DE9    mov         dword ptr [eax+214],edx;TCustomControlBar.FDockingControl:TControl
>005E6DEF    jmp         005E6DFC
 005E6DF1    mov         eax,dword ptr [ebp-4]
 005E6DF4    mov         edx,dword ptr [eax]
 005E6DF6    call        dword ptr [edx+0DC];TCustomControlBar.sub_005E5D54
 005E6DFC    mov         eax,dword ptr [ebp+0C]
 005E6DFF    push        eax
 005E6E00    mov         eax,dword ptr [ebp+8]
 005E6E03    push        eax
 005E6E04    mov         cl,byte ptr [ebp-6]
 005E6E07    mov         dl,byte ptr [ebp-5]
 005E6E0A    mov         eax,dword ptr [ebp-4]
 005E6E0D    call        TControl.MouseUp
 005E6E12    mov         esp,ebp
 005E6E14    pop         ebp
 005E6E15    ret         8
*}
end;

//005E6E18
{*function sub_005E6E18(?:TCustomControlBar; ?:TControl):?;
begin
 005E6E18    push        ebp
 005E6E19    mov         ebp,esp
 005E6E1B    add         esp,0FFFFFFE8
 005E6E1E    mov         dword ptr [ebp-8],edx
 005E6E21    mov         dword ptr [ebp-4],eax
 005E6E24    mov         eax,dword ptr [ebp-4]
 005E6E27    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E6E2D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005E6E30    dec         eax
 005E6E31    test        eax,eax
>005E6E33    jl          005E6E85
 005E6E35    inc         eax
 005E6E36    mov         dword ptr [ebp-14],eax
 005E6E39    mov         dword ptr [ebp-10],0
 005E6E40    mov         eax,dword ptr [ebp-4]
 005E6E43    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E6E49    mov         edx,dword ptr [ebp-10]
 005E6E4C    call        TList.Get
 005E6E51    mov         dword ptr [ebp-18],eax
 005E6E54    mov         eax,dword ptr [ebp-18]
 005E6E57    cmp         dword ptr [eax+30],0
>005E6E5B    jne         005E6E7D
 005E6E5D    mov         eax,dword ptr [ebp-18]
 005E6E60    mov         eax,dword ptr [eax]
 005E6E62    cmp         eax,dword ptr [ebp-8]
>005E6E65    jne         005E6E7D
 005E6E67    mov         eax,dword ptr [ebp-4]
 005E6E6A    mov         eax,dword ptr [eax+228];TCustomControlBar.FItems:TList
 005E6E70    mov         edx,dword ptr [ebp-10]
 005E6E73    call        TList.Get
 005E6E78    mov         dword ptr [ebp-0C],eax
>005E6E7B    jmp         005E6E8A
 005E6E7D    inc         dword ptr [ebp-10]
 005E6E80    dec         dword ptr [ebp-14]
>005E6E83    jne         005E6E40
 005E6E85    xor         eax,eax
 005E6E87    mov         dword ptr [ebp-0C],eax
 005E6E8A    mov         eax,dword ptr [ebp-0C]
 005E6E8D    mov         esp,ebp
 005E6E8F    pop         ebp
 005E6E90    ret
end;*}

//005E6E94
{*function sub_005E6E94(?:?; ?:?):?;
begin
 005E6E94    push        ebp
 005E6E95    mov         ebp,esp
 005E6E97    add         esp,0FFFFFFF0
 005E6E9A    push        ebx
 005E6E9B    mov         dword ptr [ebp-10],ecx
 005E6E9E    mov         dword ptr [ebp-8],edx
 005E6EA1    mov         dword ptr [ebp-4],eax
 005E6EA4    mov         byte ptr [ebp-9],1
 005E6EA8    cmp         dword ptr [ebp-8],0
>005E6EAC    je          005E6ED4
 005E6EAE    mov         eax,dword ptr [ebp-4]
 005E6EB1    cmp         word ptr [eax+23A],0;TCustomControlBar.?f23A:word
>005E6EB9    je          005E6ED4
 005E6EBB    lea         eax,[ebp-9]
 005E6EBE    push        eax
 005E6EBF    mov         ebx,dword ptr [ebp-4]
 005E6EC2    mov         ecx,dword ptr [ebp-8]
 005E6EC5    mov         edx,dword ptr [ebp-4]
 005E6EC8    mov         eax,dword ptr [ebx+23C];TCustomControlBar.?f23C:dword
 005E6ECE    call        dword ptr [ebx+238];TCustomControlBar.FOnBandDrag
 005E6ED4    cmp         byte ptr [ebp-9],0
>005E6ED8    je          005E6EE7
 005E6EDA    or          ecx,0FFFFFFFF
 005E6EDD    mov         dl,1
 005E6EDF    mov         eax,dword ptr [ebp-8]
 005E6EE2    call        005F4150
 005E6EE7    mov         al,byte ptr [ebp-9]
 005E6EEA    pop         ebx
 005E6EEB    mov         esp,ebp
 005E6EED    pop         ebp
 005E6EEE    ret         8
end;*}

//005E6EF4
{*procedure TCustomControlBar.sub_005E6EF4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005E6EF4    push        ebp
 005E6EF5    mov         ebp,esp
 005E6EF7    add         esp,0FFFFFFF4
 005E6EFA    mov         dword ptr [ebp-0C],ecx
 005E6EFD    mov         dword ptr [ebp-8],edx
 005E6F00    mov         dword ptr [ebp-4],eax
 005E6F03    mov         eax,dword ptr [ebp+10]
 005E6F06    push        eax
 005E6F07    mov         al,byte ptr [ebp+0C]
 005E6F0A    push        eax
 005E6F0B    mov         eax,dword ptr [ebp+8]
 005E6F0E    push        eax
 005E6F0F    mov         ecx,dword ptr [ebp-0C]
 005E6F12    mov         edx,dword ptr [ebp-8]
 005E6F15    mov         eax,dword ptr [ebp-4]
 005E6F18    call        TWinControl.sub_005FA2AC
 005E6F1D    mov         eax,dword ptr [ebp-4]
 005E6F20    cmp         byte ptr [eax+211],0;TCustomControlBar.FAutoDrag:Boolean
>005E6F27    je          005E6FA6
 005E6F29    mov         eax,dword ptr [ebp+8]
 005E6F2C    cmp         byte ptr [eax],0
>005E6F2F    je          005E6FA6
 005E6F31    cmp         byte ptr [ebp+0C],0
>005E6F35    jne         005E6FA6
 005E6F37    mov         eax,dword ptr [ebp-4]
 005E6F3A    cmp         byte ptr [eax+212],0;TCustomControlBar.FAutoDock:Boolean
>005E6F41    je          005E6FA6
 005E6F43    mov         eax,dword ptr [ebp-8]
 005E6F46    mov         eax,dword ptr [eax+38]
 005E6F49    mov         edx,dword ptr [eax]
 005E6F4B    call        dword ptr [edx+54]
 005E6F4E    test        al,al
>005E6F50    je          005E6FA6
 005E6F52    mov         eax,dword ptr [ebp-8]
 005E6F55    mov         eax,dword ptr [eax+38]
 005E6F58    mov         edx,dword ptr [ebp-4]
 005E6F5B    mov         dword ptr [edx+218],eax;TCustomControlBar.FDragControl:TControl
 005E6F61    mov         dl,1
 005E6F63    mov         eax,dword ptr [ebp-4]
 005E6F66    mov         eax,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6F6C    call        005F4228
 005E6F71    mov         eax,dword ptr [ebp-4]
 005E6F74    mov         eax,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6F7A    mov         dx,word ptr [eax+44];TControl.Top:Integer
 005E6F7E    mov         eax,dword ptr [ebp-4]
 005E6F81    mov         eax,dword ptr [eax+218];TCustomControlBar.FDragControl:TControl
 005E6F87    mov         ax,word ptr [eax+40];TControl.Left:Integer
 005E6F8B    call        0063CEE0
 005E6F90    push        eax
 005E6F91    push        1
 005E6F93    push        201
 005E6F98    mov         eax,dword ptr [ebp-4]
 005E6F9B    call        TWinControl.GetHandle
 005E6FA0    push        eax
 005E6FA1    call        USER32.PostMessageA
 005E6FA6    mov         esp,ebp
 005E6FA8    pop         ebp
 005E6FA9    ret         0C
end;*}

//005E6FAC
{*procedure TCustomControlBar.sub_005E6FAC(?:?; ?:?; ?:?; ?:?);
begin
 005E6FAC    push        ebp
 005E6FAD    mov         ebp,esp
 005E6FAF    add         esp,0FFFFFFEC
 005E6FB2    push        esi
 005E6FB3    push        edi
 005E6FB4    mov         esi,dword ptr [ebp+0C]
 005E6FB7    lea         edi,[ebp-14]
 005E6FBA    movs        dword ptr [edi],dword ptr [esi]
 005E6FBB    movs        dword ptr [edi],dword ptr [esi]
 005E6FBC    mov         dword ptr [ebp-0C],ecx
 005E6FBF    mov         dword ptr [ebp-8],edx
 005E6FC2    mov         dword ptr [ebp-4],eax
 005E6FC5    lea         eax,[ebp-14]
 005E6FC8    push        eax
 005E6FC9    mov         eax,dword ptr [ebp+8]
 005E6FCC    push        eax
 005E6FCD    mov         ecx,dword ptr [ebp-0C]
 005E6FD0    mov         edx,dword ptr [ebp-8]
 005E6FD3    mov         eax,dword ptr [ebp-4]
 005E6FD6    call        TWinControl.sub_005FA404
 005E6FDB    mov         eax,dword ptr [ebp+8]
 005E6FDE    cmp         byte ptr [eax],0
>005E6FE1    je          005E6FEF
 005E6FE3    mov         eax,dword ptr [ebp-4]
 005E6FE6    cmp         byte ptr [eax+225],0;TCustomControlBar.FFloating:Boolean
>005E6FED    je          005E6FF3
 005E6FEF    xor         eax,eax
>005E6FF1    jmp         005E6FF5
 005E6FF3    mov         al,1
 005E6FF5    mov         edx,dword ptr [ebp+8]
 005E6FF8    mov         byte ptr [edx],al
 005E6FFA    pop         edi
 005E6FFB    pop         esi
 005E6FFC    mov         esp,ebp
 005E6FFE    pop         ebp
 005E6FFF    ret         8
end;*}

//005E7004
{*procedure sub_005E7004(?:?; ?:?);
begin
 005E7004    push        ebp
 005E7005    mov         ebp,esp
 005E7007    add         esp,0FFFFFFF4
 005E700A    push        ebx
 005E700B    mov         dword ptr [ebp-0C],ecx
 005E700E    mov         dword ptr [ebp-8],edx
 005E7011    mov         dword ptr [ebp-4],eax
 005E7014    mov         eax,dword ptr [ebp-4]
 005E7017    cmp         word ptr [eax+24A],0;TCustomControlBar.?f24A:word
>005E701F    je          005E703A
 005E7021    mov         eax,dword ptr [ebp-0C]
 005E7024    push        eax
 005E7025    mov         ebx,dword ptr [ebp-4]
 005E7028    mov         ecx,dword ptr [ebp-8]
 005E702B    mov         edx,dword ptr [ebp-4]
 005E702E    mov         eax,dword ptr [ebx+24C];TCustomControlBar.?f24C:dword
 005E7034    call        dword ptr [ebx+248];TCustomControlBar.FOnBandMove
 005E703A    pop         ebx
 005E703B    mov         esp,ebp
 005E703D    pop         ebp
 005E703E    ret
end;*}

//005E7040
{*procedure sub_005E7040(?:?; ?:?; ?:?; ?:?);
begin
 005E7040    push        ebp
 005E7041    mov         ebp,esp
 005E7043    add         esp,0FFFFFFF4
 005E7046    push        ebx
 005E7047    mov         dword ptr [ebp-0C],ecx
 005E704A    mov         dword ptr [ebp-8],edx
 005E704D    mov         dword ptr [ebp-4],eax
 005E7050    mov         eax,dword ptr [ebp-4]
 005E7053    cmp         word ptr [eax+252],0;TCustomControlBar.?f252:word
>005E705B    je          005E707E
 005E705D    mov         eax,dword ptr [ebp-0C]
 005E7060    push        eax
 005E7061    mov         eax,dword ptr [ebp+0C]
 005E7064    push        eax
 005E7065    mov         eax,dword ptr [ebp+8]
 005E7068    push        eax
 005E7069    mov         ebx,dword ptr [ebp-4]
 005E706C    mov         ecx,dword ptr [ebp-8]
 005E706F    mov         edx,dword ptr [ebp-4]
 005E7072    mov         eax,dword ptr [ebx+254];TCustomControlBar.?f254:dword
 005E7078    call        dword ptr [ebx+250];TCustomControlBar.FOnBandPaint
 005E707E    pop         ebx
 005E707F    mov         esp,ebp
 005E7081    pop         ebp
 005E7082    ret         8
end;*}

//005E7088
procedure TCustomControlBar.sub_005E7088;
begin
{*
 005E7088    push        ebp
 005E7089    mov         ebp,esp
 005E708B    add         esp,0FFFFFFF8
 005E708E    mov         dword ptr [ebp-4],eax
 005E7091    xor         eax,eax
 005E7093    mov         dword ptr [ebp-8],eax
 005E7096    mov         eax,dword ptr [ebp-4]
 005E7099    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E709F    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>005E70A3    je          005E70B9
 005E70A5    mov         eax,dword ptr [ebp-4]
 005E70A8    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E70AE    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005E70B1    mov         edx,dword ptr [eax]
 005E70B3    call        dword ptr [edx+24];TGraphic.sub_005C35EC
 005E70B6    mov         dword ptr [ebp-8],eax
 005E70B9    mov         eax,dword ptr [ebp-8]
 005E70BC    pop         ecx
 005E70BD    pop         ecx
 005E70BE    pop         ebp
 005E70BF    ret
*}
end;

//005E70C0
procedure TControlBar.SetPicture(Value:TPicture);
begin
{*
 005E70C0    push        ebp
 005E70C1    mov         ebp,esp
 005E70C3    add         esp,0FFFFFFF8
 005E70C6    mov         dword ptr [ebp-8],edx
 005E70C9    mov         dword ptr [ebp-4],eax
 005E70CC    mov         edx,dword ptr [ebp-8]
 005E70CF    mov         eax,dword ptr [ebp-4]
 005E70D2    mov         eax,dword ptr [eax+22C];TControlBar.FPicture:TPicture
 005E70D8    mov         ecx,dword ptr [eax]
 005E70DA    call        dword ptr [ecx+8];TPicture.Assign
 005E70DD    pop         ecx
 005E70DE    pop         ecx
 005E70DF    pop         ebp
 005E70E0    ret
*}
end;

//005E720C
{*procedure TCustomControlBar.CMControlLIstChange(?:?);
begin
 005E720C    push        ebp
 005E720D    mov         ebp,esp
 005E720F    add         esp,0FFFFFFF8
 005E7212    push        esi
 005E7213    mov         dword ptr [ebp-8],edx
 005E7216    mov         dword ptr [ebp-4],eax
 005E7219    mov         edx,dword ptr [ebp-8]
 005E721C    mov         eax,dword ptr [ebp-4]
 005E721F    call        TWinControl.CMControlLIstChange
 005E7224    mov         eax,dword ptr [ebp-8]
 005E7227    cmp         dword ptr [eax+8],0
>005E722B    jne         005E7274
 005E722D    mov         eax,dword ptr [ebp-8]
 005E7230    mov         eax,dword ptr [eax+4]
 005E7233    mov         edx,dword ptr [ebp-4]
 005E7236    cmp         eax,dword ptr [edx+218];TCustomControlBar.FDragControl:TControl
>005E723C    jne         005E7249
 005E723E    mov         eax,dword ptr [ebp-4]
 005E7241    xor         edx,edx
 005E7243    mov         dword ptr [eax+218],edx;TCustomControlBar.FDragControl:TControl
 005E7249    mov         edx,dword ptr [ebp-8]
 005E724C    mov         edx,dword ptr [edx+4]
 005E724F    mov         eax,dword ptr [ebp-4]
 005E7252    call        005E6528
 005E7257    mov         eax,dword ptr [ebp-4]
 005E725A    cmp         byte ptr [eax+5C],0;TCustomControlBar.FAutoSize:Boolean
>005E725E    je          005E726C
 005E7260    mov         eax,dword ptr [ebp-4]
 005E7263    mov         si,0FFEE
 005E7267    call        @CallDynaInst;TWinControl.sub_005F66E8
 005E726C    mov         eax,dword ptr [ebp-4]
 005E726F    mov         edx,dword ptr [eax]
 005E7271    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E7274    pop         esi
 005E7275    pop         ecx
 005E7276    pop         ecx
 005E7277    pop         ebp
 005E7278    ret
end;*}

//005E727C
{*procedure TCustomControlBar.CMDesignHitTest(?:?);
begin
 005E727C    push        ebp
 005E727D    mov         ebp,esp
 005E727F    add         esp,0FFFFFFF8
 005E7282    mov         dword ptr [ebp-8],edx
 005E7285    mov         dword ptr [ebp-4],eax
 005E7288    mov         eax,dword ptr [ebp-4]
 005E728B    cmp         dword ptr [eax+218],0;TCustomControlBar.FDragControl:TControl
>005E7292    jne         005E72B2
 005E7294    mov         ecx,dword ptr [ebp-8]
 005E7297    movsx       ecx,word ptr [ecx+0A]
 005E729B    mov         edx,dword ptr [ebp-8]
 005E729E    movsx       edx,word ptr [edx+8]
 005E72A2    mov         eax,dword ptr [ebp-4]
 005E72A5    call        005E6864
 005E72AA    test        eax,eax
>005E72AC    jne         005E72B2
 005E72AE    xor         eax,eax
>005E72B0    jmp         005E72B4
 005E72B2    mov         al,1
 005E72B4    and         eax,7F
 005E72B7    mov         edx,dword ptr [ebp-8]
 005E72BA    mov         dword ptr [edx+0C],eax
 005E72BD    pop         ecx
 005E72BE    pop         ecx
 005E72BF    pop         ebp
 005E72C0    ret
end;*}

//005E72C4
procedure TCustomControlBar.WMEraseBkgnd(Message:TWMEraseBkgnd);
begin
{*
 005E72C4    push        ebp
 005E72C5    mov         ebp,esp
 005E72C7    add         esp,0FFFFFFC4
 005E72CA    mov         dword ptr [ebp-8],edx
 005E72CD    mov         dword ptr [ebp-4],eax
 005E72D0    mov         eax,dword ptr [ebp-8]
 005E72D3    cmp         dword ptr [eax+4],0
>005E72D7    je          005E72ED
 005E72D9    mov         edx,dword ptr [ebp-8]
 005E72DC    mov         edx,dword ptr [edx+4]
 005E72DF    mov         eax,dword ptr [ebp-4]
 005E72E2    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E72E8    call        TCanvas.SetHandle
 005E72ED    mov         eax,dword ptr [ebp-4]
 005E72F0    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E72F6    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>005E72FA    je          005E7440
 005E7300    xor         eax,eax
 005E7302    push        ebp
 005E7303    push        5E7439
 005E7308    push        dword ptr fs:[eax]
 005E730B    mov         dword ptr fs:[eax],esp
 005E730E    lea         edx,[ebp-2C]
 005E7311    mov         eax,dword ptr [ebp-4]
 005E7314    mov         ecx,dword ptr [eax]
 005E7316    call        dword ptr [ecx+44];TCustomControlBar.sub_005FC204
 005E7319    mov         eax,dword ptr [ebp-4]
 005E731C    mov         al,byte ptr [eax+224];TCustomControlBar.FDrawing:Boolean
 005E7322    mov         byte ptr [ebp-11],al
 005E7325    mov         eax,dword ptr [ebp-4]
 005E7328    mov         byte ptr [eax+224],1;TCustomControlBar.FDrawing:Boolean
 005E732F    xor         eax,eax
 005E7331    push        ebp
 005E7332    push        5E7401
 005E7337    push        dword ptr fs:[eax]
 005E733A    mov         dword ptr fs:[eax],esp
 005E733D    mov         eax,dword ptr [ebp-4]
 005E7340    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E7346    call        TPicture.GetWidth
 005E734B    push        eax
 005E734C    mov         eax,dword ptr [ebp-24]
 005E734F    sub         eax,dword ptr [ebp-2C]
 005E7352    pop         edx
 005E7353    mov         ecx,edx
 005E7355    cdq
 005E7356    idiv        eax,ecx
 005E7358    test        eax,eax
>005E735A    jl          005E73E7
 005E7360    inc         eax
 005E7361    mov         dword ptr [ebp-18],eax
 005E7364    mov         dword ptr [ebp-0C],0
 005E736B    mov         eax,dword ptr [ebp-4]
 005E736E    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E7374    call        TPicture.GetHeight
 005E7379    push        eax
 005E737A    mov         eax,dword ptr [ebp-20]
 005E737D    sub         eax,dword ptr [ebp-28]
 005E7380    pop         edx
 005E7381    mov         ecx,edx
 005E7383    cdq
 005E7384    idiv        eax,ecx
 005E7386    test        eax,eax
>005E7388    jl          005E73DF
 005E738A    inc         eax
 005E738B    mov         dword ptr [ebp-1C],eax
 005E738E    mov         dword ptr [ebp-10],0
 005E7395    mov         eax,dword ptr [ebp-4]
 005E7398    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E739E    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005E73A1    push        eax
 005E73A2    mov         eax,dword ptr [ebp-4]
 005E73A5    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E73AB    call        TPicture.GetHeight
 005E73B0    imul        dword ptr [ebp-10]
 005E73B3    push        eax
 005E73B4    mov         eax,dword ptr [ebp-4]
 005E73B7    mov         eax,dword ptr [eax+22C];TCustomControlBar.FPicture:TPicture
 005E73BD    call        TPicture.GetWidth
 005E73C2    mov         edx,eax
 005E73C4    imul        edx,dword ptr [ebp-0C]
 005E73C8    mov         eax,dword ptr [ebp-4]
 005E73CB    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E73D1    pop         ecx
 005E73D2    call        005C1078
 005E73D7    inc         dword ptr [ebp-10]
 005E73DA    dec         dword ptr [ebp-1C]
>005E73DD    jne         005E7395
 005E73DF    inc         dword ptr [ebp-0C]
 005E73E2    dec         dword ptr [ebp-18]
>005E73E5    jne         005E736B
 005E73E7    xor         eax,eax
 005E73E9    pop         edx
 005E73EA    pop         ecx
 005E73EB    pop         ecx
 005E73EC    mov         dword ptr fs:[eax],edx
 005E73EF    push        5E7408
 005E73F4    mov         eax,dword ptr [ebp-4]
 005E73F7    mov         dl,byte ptr [ebp-11]
 005E73FA    mov         byte ptr [eax+224],dl;TCustomControlBar.FDrawing:Boolean
 005E7400    ret
>005E7401    jmp         @HandleFinally
>005E7406    jmp         005E73F4
 005E7408    xor         eax,eax
 005E740A    pop         edx
 005E740B    pop         ecx
 005E740C    pop         ecx
 005E740D    mov         dword ptr fs:[eax],edx
 005E7410    push        5E7491
 005E7415    mov         eax,dword ptr [ebp-8]
 005E7418    cmp         dword ptr [eax+4],0
>005E741C    je          005E742E
 005E741E    mov         eax,dword ptr [ebp-4]
 005E7421    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E7427    xor         edx,edx
 005E7429    call        TCanvas.SetHandle
 005E742E    mov         eax,dword ptr [ebp-8]
 005E7431    mov         dword ptr [eax+0C],1
 005E7438    ret
>005E7439    jmp         @HandleFinally
>005E743E    jmp         005E7415
 005E7440    mov         eax,dword ptr [ebp-4]
 005E7443    mov         edx,dword ptr [eax+70];TCustomControlBar.FColor:TColor
 005E7446    mov         eax,dword ptr [ebp-4]
 005E7449    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E744F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7452    call        TBrush.SetColor
 005E7457    mov         eax,dword ptr [ebp-4]
 005E745A    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E7460    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7463    xor         edx,edx
 005E7465    call        TBrush.SetStyle
 005E746A    lea         edx,[ebp-3C]
 005E746D    mov         eax,dword ptr [ebp-4]
 005E7470    mov         ecx,dword ptr [eax]
 005E7472    call        dword ptr [ecx+44];TCustomControlBar.sub_005FC204
 005E7475    lea         edx,[ebp-3C]
 005E7478    mov         eax,dword ptr [ebp-4]
 005E747B    mov         eax,dword ptr [eax+208];TCustomControlBar..................................................
 005E7481    call        TCanvas.FillRect
 005E7486    mov         edx,dword ptr [ebp-8]
 005E7489    mov         eax,dword ptr [ebp-4]
 005E748C    call        TWinControl.WMEraseBkgnd
 005E7491    mov         esp,ebp
 005E7493    pop         ebp
 005E7494    ret
*}
end;

//005E7498
constructor TBoundLabel.Create(AOwner:TComponent);
begin
{*
 005E7498    push        ebp
 005E7499    mov         ebp,esp
 005E749B    add         esp,0FFFFFFF4
 005E749E    test        dl,dl
>005E74A0    je          005E74AA
 005E74A2    add         esp,0FFFFFFF0
 005E74A5    call        @ClassCreate
 005E74AA    mov         dword ptr [ebp-0C],ecx
 005E74AD    mov         byte ptr [ebp-5],dl
 005E74B0    mov         dword ptr [ebp-4],eax
 005E74B3    mov         ecx,dword ptr [ebp-0C]
 005E74B6    xor         edx,edx
 005E74B8    mov         eax,dword ptr [ebp-4]
 005E74BB    call        TCustomLabel.Create
 005E74C0    mov         edx,5E7514;'SubLabel'
 005E74C5    mov         eax,dword ptr [ebp-4]
 005E74C8    mov         ecx,dword ptr [eax]
 005E74CA    call        dword ptr [ecx+18];TBoundLabel.sub_005F33C8
 005E74CD    mov         dl,1
 005E74CF    mov         eax,dword ptr [ebp-4]
 005E74D2    call        00650D38
 005E74D7    cmp         dword ptr [ebp-0C],0
>005E74DB    je          005E74EB
 005E74DD    mov         eax,dword ptr [ebp-0C]
 005E74E0    mov         edx,dword ptr [eax+8];TComponent.Name:TComponentName
 005E74E3    mov         eax,dword ptr [ebp-4]
 005E74E6    call        TTabPage.SetCaption
 005E74EB    mov         eax,dword ptr [ebp-4]
 005E74EE    cmp         byte ptr [ebp-5],0
>005E74F2    je          005E7503
 005E74F4    call        @AfterConstruction
 005E74F9    pop         dword ptr fs:[0]
 005E7500    add         esp,0C
 005E7503    mov         eax,dword ptr [ebp-4]
 005E7506    mov         esp,ebp
 005E7508    pop         ebp
 005E7509    ret
*}
end;

//005E7520
procedure TBoundLabel.sub_005985C4;
begin
{*
 005E7520    push        ebp
 005E7521    mov         ebp,esp
 005E7523    add         esp,0FFFFFFF8
 005E7526    mov         dword ptr [ebp-4],eax
 005E7529    mov         eax,dword ptr [ebp-4]
 005E752C    call        TCustomLabel.sub_005985C4
 005E7531    mov         eax,dword ptr [ebp-4]
 005E7534    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 005E7537    mov         edx,dword ptr ds:[5DDFD4];TCustomLabeledEdit
 005E753D    call        @IsClass
 005E7542    test        al,al
>005E7544    je          005E756B
 005E7546    mov         eax,dword ptr [ebp-4]
 005E7549    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 005E754C    mov         edx,dword ptr ds:[5DDFD4];TCustomLabeledEdit
 005E7552    call        @AsClass
 005E7557    mov         dword ptr [ebp-8],eax
 005E755A    mov         eax,dword ptr [ebp-8]
 005E755D    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 005E7563    mov         eax,dword ptr [ebp-8]
 005E7566    call        TLabeledEdit.SetLabelPosition
 005E756B    pop         ecx
 005E756C    pop         ecx
 005E756D    pop         ebp
 005E756E    ret
*}
end;

//005E7570
{*function TBoundLabel.GetHeight:?;
begin
 005E7570    push        ebp
 005E7571    mov         ebp,esp
 005E7573    add         esp,0FFFFFFF8
 005E7576    mov         dword ptr [ebp-4],eax
 005E7579    mov         eax,dword ptr [ebp-4]
 005E757C    mov         eax,dword ptr [eax+4C];TBoundLabel.Height:Integer
 005E757F    mov         dword ptr [ebp-8],eax
 005E7582    mov         eax,dword ptr [ebp-8]
 005E7585    pop         ecx
 005E7586    pop         ecx
 005E7587    pop         ebp
 005E7588    ret
end;*}

//005E758C
{*function TBoundLabel.GetLeft:?;
begin
 005E758C    push        ebp
 005E758D    mov         ebp,esp
 005E758F    add         esp,0FFFFFFF8
 005E7592    mov         dword ptr [ebp-4],eax
 005E7595    mov         eax,dword ptr [ebp-4]
 005E7598    mov         eax,dword ptr [eax+40];TBoundLabel.Left:Integer
 005E759B    mov         dword ptr [ebp-8],eax
 005E759E    mov         eax,dword ptr [ebp-8]
 005E75A1    pop         ecx
 005E75A2    pop         ecx
 005E75A3    pop         ebp
 005E75A4    ret
end;*}

//005E75A8
{*function TBoundLabel.GetTop:?;
begin
 005E75A8    push        ebp
 005E75A9    mov         ebp,esp
 005E75AB    add         esp,0FFFFFFF8
 005E75AE    mov         dword ptr [ebp-4],eax
 005E75B1    mov         eax,dword ptr [ebp-4]
 005E75B4    mov         eax,dword ptr [eax+44];TBoundLabel.Top:Integer
 005E75B7    mov         dword ptr [ebp-8],eax
 005E75BA    mov         eax,dword ptr [ebp-8]
 005E75BD    pop         ecx
 005E75BE    pop         ecx
 005E75BF    pop         ebp
 005E75C0    ret
end;*}

//005E75C4
{*function TBoundLabel.GetWidth:?;
begin
 005E75C4    push        ebp
 005E75C5    mov         ebp,esp
 005E75C7    add         esp,0FFFFFFF8
 005E75CA    mov         dword ptr [ebp-4],eax
 005E75CD    mov         eax,dword ptr [ebp-4]
 005E75D0    mov         eax,dword ptr [eax+48];TBoundLabel.Width:Integer
 005E75D3    mov         dword ptr [ebp-8],eax
 005E75D6    mov         eax,dword ptr [ebp-8]
 005E75D9    pop         ecx
 005E75DA    pop         ecx
 005E75DB    pop         ebp
 005E75DC    ret
end;*}

//005E75E0
procedure TBoundLabel.SetHeight(Value:Integer);
begin
{*
 005E75E0    push        ebp
 005E75E1    mov         ebp,esp
 005E75E3    add         esp,0FFFFFFF8
 005E75E6    push        ebx
 005E75E7    mov         dword ptr [ebp-8],edx
 005E75EA    mov         dword ptr [ebp-4],eax
 005E75ED    mov         eax,dword ptr [ebp-4]
 005E75F0    call        TBoundLabel.GetWidth
 005E75F5    push        eax
 005E75F6    mov         eax,dword ptr [ebp-8]
 005E75F9    push        eax
 005E75FA    mov         eax,dword ptr [ebp-4]
 005E75FD    call        TBoundLabel.GetTop
 005E7602    push        eax
 005E7603    mov         eax,dword ptr [ebp-4]
 005E7606    call        TBoundLabel.GetLeft
 005E760B    mov         edx,eax
 005E760D    mov         eax,dword ptr [ebp-4]
 005E7610    pop         ecx
 005E7611    mov         ebx,dword ptr [eax]
 005E7613    call        dword ptr [ebx+84];TBoundLabel.sub_005F2870
 005E7619    pop         ebx
 005E761A    pop         ecx
 005E761B    pop         ecx
 005E761C    pop         ebp
 005E761D    ret
*}
end;

//005E7620
procedure TBoundLabel.SetWidth(Value:Integer);
begin
{*
 005E7620    push        ebp
 005E7621    mov         ebp,esp
 005E7623    add         esp,0FFFFFFF8
 005E7626    push        ebx
 005E7627    mov         dword ptr [ebp-8],edx
 005E762A    mov         dword ptr [ebp-4],eax
 005E762D    mov         eax,dword ptr [ebp-8]
 005E7630    push        eax
 005E7631    mov         eax,dword ptr [ebp-4]
 005E7634    call        TBoundLabel.GetHeight
 005E7639    push        eax
 005E763A    mov         eax,dword ptr [ebp-4]
 005E763D    call        TBoundLabel.GetTop
 005E7642    push        eax
 005E7643    mov         eax,dword ptr [ebp-4]
 005E7646    call        TBoundLabel.GetLeft
 005E764B    mov         edx,eax
 005E764D    mov         eax,dword ptr [ebp-4]
 005E7650    pop         ecx
 005E7651    mov         ebx,dword ptr [eax]
 005E7653    call        dword ptr [ebx+84];TBoundLabel.sub_005F2870
 005E7659    pop         ebx
 005E765A    pop         ecx
 005E765B    pop         ecx
 005E765C    pop         ebp
 005E765D    ret
*}
end;

//005E7660
constructor TCustomLabeledEdit.Create(AOwner:TComponent);
begin
{*
 005E7660    push        ebp
 005E7661    mov         ebp,esp
 005E7663    add         esp,0FFFFFFF4
 005E7666    test        dl,dl
>005E7668    je          005E7672
 005E766A    add         esp,0FFFFFFF0
 005E766D    call        @ClassCreate
 005E7672    mov         dword ptr [ebp-0C],ecx
 005E7675    mov         byte ptr [ebp-5],dl
 005E7678    mov         dword ptr [ebp-4],eax
 005E767B    mov         ecx,dword ptr [ebp-0C]
 005E767E    xor         edx,edx
 005E7680    mov         eax,dword ptr [ebp-4]
 005E7683    call        TCustomEdit.Create
 005E7688    mov         eax,dword ptr [ebp-4]
 005E768B    mov         byte ptr [eax+224],0;TCustomLabeledEdit.FLabelPosition:TLabelPosition
 005E7692    mov         eax,dword ptr [ebp-4]
 005E7695    mov         dword ptr [eax+228],3;TCustomLabeledEdit.FLabelSpacing:Integer
 005E769F    mov         eax,dword ptr [ebp-4]
 005E76A2    call        005E7A68
 005E76A7    mov         eax,dword ptr [ebp-4]
 005E76AA    cmp         byte ptr [ebp-5],0
>005E76AE    je          005E76BF
 005E76B0    call        @AfterConstruction
 005E76B5    pop         dword ptr fs:[0]
 005E76BC    add         esp,0C
 005E76BF    mov         eax,dword ptr [ebp-4]
 005E76C2    mov         esp,ebp
 005E76C4    pop         ebp
 005E76C5    ret
*}
end;

//005E76C8
procedure TCustomLabeledEdit.CMBiDiModeChanged(Message:TMessage);
begin
{*
 005E76C8    push        ebp
 005E76C9    mov         ebp,esp
 005E76CB    add         esp,0FFFFFFF8
 005E76CE    mov         dword ptr [ebp-8],edx
 005E76D1    mov         dword ptr [ebp-4],eax
 005E76D4    mov         edx,dword ptr [ebp-8]
 005E76D7    mov         eax,dword ptr [ebp-4]
 005E76DA    call        TWinControl.CMBiDiModeChanged
 005E76DF    mov         eax,dword ptr [ebp-4]
 005E76E2    mov         dl,byte ptr [eax+5F];TCustomLabeledEdit.FBiDiMode:TBiDiMode
 005E76E5    mov         eax,dword ptr [ebp-4]
 005E76E8    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E76EE    mov         ecx,dword ptr [eax]
 005E76F0    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
 005E76F3    pop         ecx
 005E76F4    pop         ecx
 005E76F5    pop         ebp
 005E76F6    ret
*}
end;

//005E76F8
{*procedure TCustomLabeledEdit.CMEnabledChanged(?:?);
begin
 005E76F8    push        ebp
 005E76F9    mov         ebp,esp
 005E76FB    add         esp,0FFFFFFF8
 005E76FE    mov         dword ptr [ebp-8],edx
 005E7701    mov         dword ptr [ebp-4],eax
 005E7704    mov         edx,dword ptr [ebp-8]
 005E7707    mov         eax,dword ptr [ebp-4]
 005E770A    call        TWinControl.CMEnabledChanged
 005E770F    mov         eax,dword ptr [ebp-4]
 005E7712    mov         edx,dword ptr [eax]
 005E7714    call        dword ptr [edx+50];TCCalendar.GetEnabled
 005E7717    mov         edx,eax
 005E7719    mov         eax,dword ptr [ebp-4]
 005E771C    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7722    mov         ecx,dword ptr [eax]
 005E7724    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 005E7727    pop         ecx
 005E7728    pop         ecx
 005E7729    pop         ebp
 005E772A    ret
end;*}

//005E772C
{*procedure TCustomLabeledEdit.CMVisibleChanged(?:?);
begin
 005E772C    push        ebp
 005E772D    mov         ebp,esp
 005E772F    add         esp,0FFFFFFF8
 005E7732    mov         dword ptr [ebp-8],edx
 005E7735    mov         dword ptr [ebp-4],eax
 005E7738    mov         edx,dword ptr [ebp-8]
 005E773B    mov         eax,dword ptr [ebp-4]
 005E773E    call        TWinControl.CMVisibleChanged
 005E7743    mov         eax,dword ptr [ebp-4]
 005E7746    mov         dl,byte ptr [eax+57];TCustomLabeledEdit.FVisible:Boolean
 005E7749    mov         eax,dword ptr [ebp-4]
 005E774C    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7752    call        TCCalendar.SetVisible
 005E7757    pop         ecx
 005E7758    pop         ecx
 005E7759    pop         ebp
 005E775A    ret
end;*}

//005E775C
procedure TCustomLabeledEdit.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005E775C    push        ebp
 005E775D    mov         ebp,esp
 005E775F    add         esp,0FFFFFFF4
 005E7762    mov         byte ptr [ebp-9],cl
 005E7765    mov         dword ptr [ebp-8],edx
 005E7768    mov         dword ptr [ebp-4],eax
 005E776B    mov         cl,byte ptr [ebp-9]
 005E776E    mov         edx,dword ptr [ebp-8]
 005E7771    mov         eax,dword ptr [ebp-4]
 005E7774    call        TControl.Notification
 005E7779    mov         eax,dword ptr [ebp-8]
 005E777C    mov         edx,dword ptr [ebp-4]
 005E777F    cmp         eax,dword ptr [edx+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
>005E7785    jne         005E7798
 005E7787    cmp         byte ptr [ebp-9],1
>005E778B    jne         005E7798
 005E778D    mov         eax,dword ptr [ebp-4]
 005E7790    xor         edx,edx
 005E7792    mov         dword ptr [eax+220],edx;TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7798    mov         esp,ebp
 005E779A    pop         ebp
 005E779B    ret
*}
end;

//005E779C
{*procedure sub_005E779C(?:?; ?:?; ?:?; ?:?);
begin
 005E779C    push        ebp
 005E779D    mov         ebp,esp
 005E779F    add         esp,0FFFFFFF4
 005E77A2    mov         dword ptr [ebp-0C],ecx
 005E77A5    mov         dword ptr [ebp-8],edx
 005E77A8    mov         dword ptr [ebp-4],eax
 005E77AB    mov         eax,dword ptr [ebp+0C]
 005E77AE    push        eax
 005E77AF    mov         eax,dword ptr [ebp+8]
 005E77B2    push        eax
 005E77B3    mov         ecx,dword ptr [ebp-0C]
 005E77B6    mov         edx,dword ptr [ebp-8]
 005E77B9    mov         eax,dword ptr [ebp-4]
 005E77BC    call        005FB7F8
 005E77C1    mov         eax,dword ptr [ebp-4]
 005E77C4    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 005E77CA    mov         eax,dword ptr [ebp-4]
 005E77CD    call        TLabeledEdit.SetLabelPosition
 005E77D2    mov         esp,ebp
 005E77D4    pop         ebp
 005E77D5    ret         8
end;*}

//005E77D8
procedure TLabeledEdit.SetLabelPosition(Value:TLabelPosition);
begin
{*
 005E77D8    push        ebp
 005E77D9    mov         ebp,esp
 005E77DB    add         esp,0FFFFFFF0
 005E77DE    push        ebx
 005E77DF    mov         byte ptr [ebp-5],dl
 005E77E2    mov         dword ptr [ebp-4],eax
 005E77E5    mov         eax,dword ptr [ebp-4]
 005E77E8    cmp         dword ptr [eax+220],0;TLabeledEdit.FEditLabel:TBoundLabel
>005E77EF    je          005E793A
 005E77F5    mov         al,byte ptr [ebp-5]
 005E77F8    mov         edx,dword ptr [ebp-4]
 005E77FB    mov         byte ptr [edx+224],al;TLabeledEdit.FLabelPosition:TLabelPosition
 005E7801    mov         al,byte ptr [ebp-5]
 005E7804    sub         al,1
>005E7806    jb          005E781B
>005E7808    je          005E784D
 005E780A    dec         al
>005E780C    je          005E7875
 005E780E    dec         al
>005E7810    je          005E78C5
>005E7816    jmp         005E7905
 005E781B    mov         eax,dword ptr [ebp-4]
 005E781E    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E7824    call        TBoundLabel.GetHeight
 005E7829    mov         edx,dword ptr [ebp-4]
 005E782C    mov         edx,dword ptr [edx+44];TLabeledEdit.Top:Integer
 005E782F    sub         edx,eax
 005E7831    mov         eax,dword ptr [ebp-4]
 005E7834    sub         edx,dword ptr [eax+228]
 005E783A    lea         ecx,[ebp-0D]
 005E783D    mov         eax,dword ptr [ebp-4]
 005E7840    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 005E7843    call        Point
>005E7848    jmp         005E7905
 005E784D    lea         ecx,[ebp-0D]
 005E7850    mov         eax,dword ptr [ebp-4]
 005E7853    mov         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 005E7856    mov         eax,dword ptr [ebp-4]
 005E7859    add         edx,dword ptr [eax+4C];TLabeledEdit.Height:Integer
 005E785C    mov         eax,dword ptr [ebp-4]
 005E785F    add         edx,dword ptr [eax+228];TLabeledEdit.FLabelSpacing:Integer
 005E7865    mov         eax,dword ptr [ebp-4]
 005E7868    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 005E786B    call        Point
>005E7870    jmp         005E7905
 005E7875    mov         eax,dword ptr [ebp-4]
 005E7878    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E787E    call        TBoundLabel.GetHeight
 005E7883    mov         edx,dword ptr [ebp-4]
 005E7886    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 005E7889    sub         edx,eax
 005E788B    sar         edx,1
>005E788D    jns         005E7892
 005E788F    adc         edx,0
 005E7892    mov         eax,dword ptr [ebp-4]
 005E7895    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 005E7898    push        edx
 005E7899    mov         eax,dword ptr [ebp-4]
 005E789C    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E78A2    call        TBoundLabel.GetWidth
 005E78A7    push        eax
 005E78A8    mov         eax,dword ptr [ebp-4]
 005E78AB    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 005E78AE    pop         edx
 005E78AF    sub         eax,edx
 005E78B1    mov         edx,dword ptr [ebp-4]
 005E78B4    sub         eax,dword ptr [edx+228]
 005E78BA    lea         ecx,[ebp-0D]
 005E78BD    pop         edx
 005E78BE    call        Point
>005E78C3    jmp         005E7905
 005E78C5    mov         eax,dword ptr [ebp-4]
 005E78C8    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E78CE    call        TBoundLabel.GetHeight
 005E78D3    mov         edx,dword ptr [ebp-4]
 005E78D6    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 005E78D9    sub         edx,eax
 005E78DB    sar         edx,1
>005E78DD    jns         005E78E2
 005E78DF    adc         edx,0
 005E78E2    mov         eax,dword ptr [ebp-4]
 005E78E5    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 005E78E8    lea         ecx,[ebp-0D]
 005E78EB    mov         eax,dword ptr [ebp-4]
 005E78EE    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 005E78F1    mov         ebx,dword ptr [ebp-4]
 005E78F4    add         eax,dword ptr [ebx+48];TLabeledEdit.Width:Integer
 005E78F7    mov         ebx,dword ptr [ebp-4]
 005E78FA    add         eax,dword ptr [ebx+228];TLabeledEdit.FLabelSpacing:Integer
 005E7900    call        Point
 005E7905    mov         eax,dword ptr [ebp-4]
 005E7908    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E790E    call        TBoundLabel.GetWidth
 005E7913    push        eax
 005E7914    mov         eax,dword ptr [ebp-4]
 005E7917    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E791D    call        TBoundLabel.GetHeight
 005E7922    push        eax
 005E7923    mov         ecx,dword ptr [ebp-9]
 005E7926    mov         edx,dword ptr [ebp-0D]
 005E7929    mov         eax,dword ptr [ebp-4]
 005E792C    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 005E7932    mov         ebx,dword ptr [eax]
 005E7934    call        dword ptr [ebx+84];TBoundLabel.sub_005F2870
 005E793A    pop         ebx
 005E793B    mov         esp,ebp
 005E793D    pop         ebp
 005E793E    ret
*}
end;

//005E7940
procedure TLabeledEdit.SetLabelSpacing(Value:Integer);
begin
{*
 005E7940    push        ebp
 005E7941    mov         ebp,esp
 005E7943    add         esp,0FFFFFFF8
 005E7946    mov         dword ptr [ebp-8],edx
 005E7949    mov         dword ptr [ebp-4],eax
 005E794C    mov         eax,dword ptr [ebp-8]
 005E794F    mov         edx,dword ptr [ebp-4]
 005E7952    mov         dword ptr [edx+228],eax;TLabeledEdit.FLabelSpacing:Integer
 005E7958    mov         eax,dword ptr [ebp-4]
 005E795B    mov         dl,byte ptr [eax+224];TLabeledEdit.FLabelPosition:TLabelPosition
 005E7961    mov         eax,dword ptr [ebp-4]
 005E7964    call        TLabeledEdit.SetLabelPosition
 005E7969    pop         ecx
 005E796A    pop         ecx
 005E796B    pop         ebp
 005E796C    ret
*}
end;

//005E7970
{*procedure sub_005E7970(?:?);
begin
 005E7970    push        ebp
 005E7971    mov         ebp,esp
 005E7973    add         esp,0FFFFFFF4
 005E7976    xor         ecx,ecx
 005E7978    mov         dword ptr [ebp-0C],ecx
 005E797B    mov         dword ptr [ebp-8],edx
 005E797E    mov         dword ptr [ebp-4],eax
 005E7981    xor         eax,eax
 005E7983    push        ebp
 005E7984    push        5E7A12
 005E7989    push        dword ptr fs:[eax]
 005E798C    mov         dword ptr fs:[eax],esp
 005E798F    mov         eax,dword ptr [ebp-4]
 005E7992    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>005E7996    je          005E79DE
 005E7998    mov         eax,dword ptr [ebp-4]
 005E799B    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E79A1    call        005F35D4
 005E79A6    test        eax,eax
>005E79A8    je          005E79CD
 005E79AA    lea         edx,[ebp-0C]
 005E79AD    mov         eax,dword ptr [ebp-4]
 005E79B0    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E79B6    call        TTabPage.GetCaption
 005E79BB    mov         eax,dword ptr [ebp-0C]
 005E79BE    mov         edx,dword ptr [ebp-4]
 005E79C1    mov         edx,dword ptr [edx+8];TCustomLabeledEdit.Name:TComponentName
 005E79C4    call        CompareText
 005E79C9    test        eax,eax
>005E79CB    jne         005E79DE
 005E79CD    mov         edx,dword ptr [ebp-8]
 005E79D0    mov         eax,dword ptr [ebp-4]
 005E79D3    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E79D9    call        TTabPage.SetCaption
 005E79DE    mov         edx,dword ptr [ebp-8]
 005E79E1    mov         eax,dword ptr [ebp-4]
 005E79E4    call        005F33C8
 005E79E9    mov         eax,dword ptr [ebp-4]
 005E79EC    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>005E79F0    je          005E79FC
 005E79F2    xor         edx,edx
 005E79F4    mov         eax,dword ptr [ebp-4]
 005E79F7    call        TTabPage.SetCaption
 005E79FC    xor         eax,eax
 005E79FE    pop         edx
 005E79FF    pop         ecx
 005E7A00    pop         ecx
 005E7A01    mov         dword ptr fs:[eax],edx
 005E7A04    push        5E7A19
 005E7A09    lea         eax,[ebp-0C]
 005E7A0C    call        @LStrClr
 005E7A11    ret
>005E7A12    jmp         @HandleFinally
>005E7A17    jmp         005E7A09
 005E7A19    mov         esp,ebp
 005E7A1B    pop         ebp
 005E7A1C    ret
end;*}

//005E7A20
{*procedure sub_005E7A20(?:?);
begin
 005E7A20    push        ebp
 005E7A21    mov         ebp,esp
 005E7A23    add         esp,0FFFFFFF8
 005E7A26    mov         dword ptr [ebp-8],edx
 005E7A29    mov         dword ptr [ebp-4],eax
 005E7A2C    mov         edx,dword ptr [ebp-8]
 005E7A2F    mov         eax,dword ptr [ebp-4]
 005E7A32    call        005F34DC
 005E7A37    mov         eax,dword ptr [ebp-4]
 005E7A3A    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>005E7A41    je          005E7A64
 005E7A43    mov         edx,dword ptr [ebp-8]
 005E7A46    mov         eax,dword ptr [ebp-4]
 005E7A49    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7A4F    mov         ecx,dword ptr [eax]
 005E7A51    call        dword ptr [ecx+68];TBoundLabel.sub_005F34DC
 005E7A54    mov         dl,1
 005E7A56    mov         eax,dword ptr [ebp-4]
 005E7A59    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7A5F    call        TCCalendar.SetVisible
 005E7A64    pop         ecx
 005E7A65    pop         ecx
 005E7A66    pop         ebp
 005E7A67    ret
end;*}

//005E7A68
procedure sub_005E7A68(?:TCustomLabeledEdit);
begin
{*
 005E7A68    push        ebp
 005E7A69    mov         ebp,esp
 005E7A6B    push        ecx
 005E7A6C    mov         dword ptr [ebp-4],eax
 005E7A6F    mov         eax,dword ptr [ebp-4]
 005E7A72    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>005E7A79    jne         005E7AB5
 005E7A7B    mov         ecx,dword ptr [ebp-4]
 005E7A7E    mov         dl,1
 005E7A80    mov         eax,[005DD9CC];TBoundLabel
 005E7A85    call        TBoundLabel.Create;TBoundLabel.Create
 005E7A8A    mov         edx,dword ptr [ebp-4]
 005E7A8D    mov         dword ptr [edx+220],eax;TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7A93    mov         edx,dword ptr [ebp-4]
 005E7A96    mov         eax,dword ptr [ebp-4]
 005E7A99    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7A9F    call        TComponent.FreeNotification
 005E7AA4    mov         edx,dword ptr [ebp-4]
 005E7AA7    mov         eax,dword ptr [ebp-4]
 005E7AAA    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 005E7AB0    call        TLabel.SetFocusControl
 005E7AB5    pop         ecx
 005E7AB6    pop         ebp
 005E7AB7    ret
*}
end;

//005E7AB8
procedure TCustomColorBox.sub_0059B348;
begin
{*
 005E7AB8    push        ebp
 005E7AB9    mov         ebp,esp
 005E7ABB    push        ecx
 005E7ABC    mov         dword ptr [ebp-4],eax
 005E7ABF    mov         eax,dword ptr [ebp-4]
 005E7AC2    call        TCustomCombo.sub_0059B348
 005E7AC7    mov         eax,dword ptr [ebp-4]
 005E7ACA    mov         byte ptr [eax+292],1;TCustomColorBox.FListSelected:Boolean
 005E7AD1    pop         ecx
 005E7AD2    pop         ebp
 005E7AD3    ret
*}
end;

//005E7C1C
constructor TCustomColorBox.Create(AOwner:TComponent);
begin
{*
 005E7C1C    push        ebp
 005E7C1D    mov         ebp,esp
 005E7C1F    add         esp,0FFFFFFF4
 005E7C22    test        dl,dl
>005E7C24    je          005E7C2E
 005E7C26    add         esp,0FFFFFFF0
 005E7C29    call        @ClassCreate
 005E7C2E    mov         dword ptr [ebp-0C],ecx
 005E7C31    mov         byte ptr [ebp-5],dl
 005E7C34    mov         dword ptr [ebp-4],eax
 005E7C37    mov         ecx,dword ptr [ebp-0C]
 005E7C3A    xor         edx,edx
 005E7C3C    mov         eax,dword ptr [ebp-4]
 005E7C3F    call        TCustomComboBox.Create
 005E7C44    mov         dl,3
 005E7C46    mov         eax,dword ptr [ebp-4]
 005E7C49    mov         ecx,dword ptr [eax]
 005E7C4B    call        dword ptr [ecx+114];TComboBox.SetStyle
 005E7C51    mov         eax,dword ptr [ebp-4]
 005E7C54    mov         dl,byte ptr ds:[5E7CA8];0x7 gvar_005E7CA8
 005E7C5A    mov         byte ptr [eax+290],dl;TCustomColorBox.FStyle:TColorBoxStyle
 005E7C60    mov         eax,dword ptr [ebp-4]
 005E7C63    xor         edx,edx
 005E7C65    mov         dword ptr [eax+29C],edx;TCustomColorBox.FSelectedColor:TColor
 005E7C6B    mov         eax,dword ptr [ebp-4]
 005E7C6E    xor         edx,edx
 005E7C70    mov         dword ptr [eax+294],edx;TCustomColorBox.FDefaultColorColor:TColor
 005E7C76    mov         eax,dword ptr [ebp-4]
 005E7C79    xor         edx,edx
 005E7C7B    mov         dword ptr [eax+298],edx;TCustomColorBox.FNoneColorColor:TColor
 005E7C81    mov         eax,dword ptr [ebp-4]
 005E7C84    call        005E8158
 005E7C89    mov         eax,dword ptr [ebp-4]
 005E7C8C    cmp         byte ptr [ebp-5],0
>005E7C90    je          005E7CA1
 005E7C92    call        @AfterConstruction
 005E7C97    pop         dword ptr fs:[0]
 005E7C9E    add         esp,0C
 005E7CA1    mov         eax,dword ptr [ebp-4]
 005E7CA4    mov         esp,ebp
 005E7CA6    pop         ebp
 005E7CA7    ret
*}
end;

//005E7CAC
procedure TCustomColorBox.CreateWnd;
begin
{*
 005E7CAC    push        ebp
 005E7CAD    mov         ebp,esp
 005E7CAF    push        ecx
 005E7CB0    mov         dword ptr [ebp-4],eax
 005E7CB3    mov         eax,dword ptr [ebp-4]
 005E7CB6    call        TCustomComboBox.CreateWnd
 005E7CBB    mov         eax,dword ptr [ebp-4]
 005E7CBE    cmp         byte ptr [eax+291],0;TCustomColorBox.FNeedToPopulate:Boolean
>005E7CC5    je          005E7CCF
 005E7CC7    mov         eax,dword ptr [ebp-4]
 005E7CCA    call        005E8158
 005E7CCF    pop         ecx
 005E7CD0    pop         ebp
 005E7CD1    ret
*}
end;

//005E7CD4
{*function sub_005E7CD4(?:Longint; ?:?):?;
begin
 005E7CD4    push        ebp
 005E7CD5    mov         ebp,esp
 005E7CD7    add         esp,0FFFFFFF8
 005E7CDA    mov         dword ptr [ebp-4],eax
 005E7CDD    cmp         byte ptr [ebp-4],0C0
>005E7CE1    ja          005E7CEF
 005E7CE3    cmp         byte ptr [ebp-3],0C0
>005E7CE7    ja          005E7CEF
 005E7CE9    cmp         byte ptr [ebp-2],0C0
>005E7CED    jbe         005E7CF6
 005E7CEF    xor         eax,eax
 005E7CF1    mov         dword ptr [ebp-8],eax
>005E7CF4    jmp         005E7D0E
 005E7CF6    mov         eax,dword ptr [ebp+8]
 005E7CF9    test        byte ptr [eax+8],1
>005E7CFD    je          005E7D08
 005E7CFF    mov         dword ptr [ebp-8],0FFFFFF
>005E7D06    jmp         005E7D0E
 005E7D08    mov         eax,dword ptr [ebp-4]
 005E7D0B    mov         dword ptr [ebp-8],eax
 005E7D0E    mov         eax,dword ptr [ebp-8]
 005E7D11    pop         ecx
 005E7D12    pop         ecx
 005E7D13    pop         ebp
 005E7D14    ret
end;*}

//005E7D18
{*procedure sub_005E7D18(?:?; ?:?);
begin
 005E7D18    push        ebp
 005E7D19    mov         ebp,esp
 005E7D1B    add         esp,0FFFFFFC8
 005E7D1E    push        ebx
 005E7D1F    push        esi
 005E7D20    push        edi
 005E7D21    xor         ebx,ebx
 005E7D23    mov         dword ptr [ebp-38],ebx
 005E7D26    mov         dword ptr [ebp-34],ebx
 005E7D29    mov         esi,ecx
 005E7D2B    lea         edi,[ebp-20]
 005E7D2E    movs        dword ptr [edi],dword ptr [esi]
 005E7D2F    movs        dword ptr [edi],dword ptr [esi]
 005E7D30    movs        dword ptr [edi],dword ptr [esi]
 005E7D31    movs        dword ptr [edi],dword ptr [esi]
 005E7D32    mov         dword ptr [ebp-8],edx
 005E7D35    mov         dword ptr [ebp-4],eax
 005E7D38    xor         eax,eax
 005E7D3A    push        ebp
 005E7D3B    push        5E7EB8
 005E7D40    push        dword ptr fs:[eax]
 005E7D43    mov         dword ptr fs:[eax],esp
 005E7D46    mov         eax,dword ptr [ebp-4]
 005E7D49    mov         eax,dword ptr [eax+208];TCustomColorBox.FCanvas:TCanvas
 005E7D4F    mov         dword ptr [ebp-10],eax
 005E7D52    lea         edx,[ebp-20]
 005E7D55    mov         eax,dword ptr [ebp-10]
 005E7D58    call        TCanvas.FillRect
 005E7D5D    mov         eax,dword ptr [ebp-10]
 005E7D60    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7D63    call        TBrush.GetColor
 005E7D68    mov         dword ptr [ebp-0C],eax
 005E7D6B    lea         esi,[ebp-20]
 005E7D6E    lea         edi,[ebp-30]
 005E7D71    movs        dword ptr [edi],dword ptr [esi]
 005E7D72    movs        dword ptr [edi],dword ptr [esi]
 005E7D73    movs        dword ptr [edi],dword ptr [esi]
 005E7D74    movs        dword ptr [edi],dword ptr [esi]
 005E7D75    mov         eax,dword ptr [ebp-24]
 005E7D78    sub         eax,dword ptr [ebp-2C]
 005E7D7B    add         eax,dword ptr [ebp-30]
 005E7D7E    mov         dword ptr [ebp-28],eax
 005E7D81    push        0FF
 005E7D83    push        0FF
 005E7D85    lea         eax,[ebp-30]
 005E7D88    push        eax
 005E7D89    call        USER32.InflateRect
 005E7D8E    mov         edx,dword ptr [ebp-8]
 005E7D91    mov         eax,dword ptr [ebp-4]
 005E7D94    call        005E7EC8
 005E7D99    mov         edx,eax
 005E7D9B    mov         eax,dword ptr [ebp-10]
 005E7D9E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7DA1    call        TBrush.SetColor
 005E7DA6    mov         eax,dword ptr [ebp-10]
 005E7DA9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7DAC    call        TBrush.GetColor
 005E7DB1    cmp         eax,20000000
>005E7DB6    jne         005E7DCE
 005E7DB8    mov         eax,dword ptr [ebp-4]
 005E7DBB    mov         edx,dword ptr [eax+294];TCustomColorBox.FDefaultColorColor:TColor
 005E7DC1    mov         eax,dword ptr [ebp-10]
 005E7DC4    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7DC7    call        TBrush.SetColor
>005E7DCC    jmp         005E7DF4
 005E7DCE    mov         eax,dword ptr [ebp-10]
 005E7DD1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7DD4    call        TBrush.GetColor
 005E7DD9    cmp         eax,1FFFFFFF
>005E7DDE    jne         005E7DF4
 005E7DE0    mov         eax,dword ptr [ebp-4]
 005E7DE3    mov         edx,dword ptr [eax+298];TCustomColorBox.FNoneColorColor:TColor
 005E7DE9    mov         eax,dword ptr [ebp-10]
 005E7DEC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7DEF    call        TBrush.SetColor
 005E7DF4    lea         edx,[ebp-30]
 005E7DF7    mov         eax,dword ptr [ebp-10]
 005E7DFA    call        TCanvas.FillRect
 005E7DFF    push        ebp
 005E7E00    mov         eax,dword ptr [ebp-10]
 005E7E03    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7E06    call        TBrush.GetColor
 005E7E0B    call        ColorToRGB
 005E7E10    call        005E7CD4
 005E7E15    pop         ecx
 005E7E16    mov         edx,eax
 005E7E18    mov         eax,dword ptr [ebp-10]
 005E7E1B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7E1E    call        TBrush.SetColor
 005E7E23    lea         edx,[ebp-30]
 005E7E26    mov         eax,dword ptr [ebp-10]
 005E7E29    call        005C1224
 005E7E2E    mov         edx,dword ptr [ebp-0C]
 005E7E31    mov         eax,dword ptr [ebp-10]
 005E7E34    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005E7E37    call        TBrush.SetColor
 005E7E3C    mov         eax,dword ptr [ebp-28]
 005E7E3F    add         eax,5
 005E7E42    mov         dword ptr [ebp-20],eax
 005E7E45    lea         ecx,[ebp-34]
 005E7E48    mov         edx,dword ptr [ebp-8]
 005E7E4B    mov         eax,dword ptr [ebp-4]
 005E7E4E    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E7E54    mov         ebx,dword ptr [eax]
 005E7E56    call        dword ptr [ebx+0C];@AbstractError
 005E7E59    mov         edx,dword ptr [ebp-34]
 005E7E5C    mov         eax,dword ptr [ebp-10]
 005E7E5F    call        005C177C
 005E7E64    mov         edx,dword ptr [ebp-14]
 005E7E67    sub         edx,dword ptr [ebp-1C]
 005E7E6A    sub         edx,eax
 005E7E6C    sar         edx,1
>005E7E6E    jns         005E7E73
 005E7E70    adc         edx,0
 005E7E73    add         edx,dword ptr [ebp-1C]
 005E7E76    push        edx
 005E7E77    lea         ecx,[ebp-38]
 005E7E7A    mov         edx,dword ptr [ebp-8]
 005E7E7D    mov         eax,dword ptr [ebp-4]
 005E7E80    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E7E86    mov         ebx,dword ptr [eax]
 005E7E88    call        dword ptr [ebx+0C];@AbstractError
 005E7E8B    mov         eax,dword ptr [ebp-38]
 005E7E8E    push        eax
 005E7E8F    mov         ecx,dword ptr [ebp-20]
 005E7E92    lea         edx,[ebp-20]
 005E7E95    mov         eax,dword ptr [ebp-10]
 005E7E98    call        005C1648
 005E7E9D    xor         eax,eax
 005E7E9F    pop         edx
 005E7EA0    pop         ecx
 005E7EA1    pop         ecx
 005E7EA2    mov         dword ptr fs:[eax],edx
 005E7EA5    push        5E7EBF
 005E7EAA    lea         eax,[ebp-38]
 005E7EAD    mov         edx,2
 005E7EB2    call        @LStrArrayClr
 005E7EB7    ret
>005E7EB8    jmp         @HandleFinally
>005E7EBD    jmp         005E7EAA
 005E7EBF    pop         edi
 005E7EC0    pop         esi
 005E7EC1    pop         ebx
 005E7EC2    mov         esp,ebp
 005E7EC4    pop         ebp
 005E7EC5    ret         4
end;*}

//005E7EC8
{*function sub_005E7EC8(?:TCustomColorBox; ?:Integer):?;
begin
 005E7EC8    push        ebp
 005E7EC9    mov         ebp,esp
 005E7ECB    add         esp,0FFFFFFF4
 005E7ECE    mov         dword ptr [ebp-8],edx
 005E7ED1    mov         dword ptr [ebp-4],eax
 005E7ED4    mov         edx,dword ptr [ebp-8]
 005E7ED7    mov         eax,dword ptr [ebp-4]
 005E7EDA    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E7EE0    mov         ecx,dword ptr [eax]
 005E7EE2    call        dword ptr [ecx+18];TStrings.sub_00647284
 005E7EE5    mov         dword ptr [ebp-0C],eax
 005E7EE8    mov         eax,dword ptr [ebp-0C]
 005E7EEB    mov         esp,ebp
 005E7EED    pop         ebp
 005E7EEE    ret
end;*}

//005E7EF0
{*function TColorBox.GetSelected:?;
begin
 005E7EF0    push        ebp
 005E7EF1    mov         ebp,esp
 005E7EF3    add         esp,0FFFFFFF8
 005E7EF6    mov         dword ptr [ebp-4],eax
 005E7EF9    mov         eax,dword ptr [ebp-4]
 005E7EFC    call        TWinControl.HandleAllocated
 005E7F01    test        al,al
>005E7F03    je          005E7F36
 005E7F05    mov         eax,dword ptr [ebp-4]
 005E7F08    mov         edx,dword ptr [eax]
 005E7F0A    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 005E7F10    inc         eax
>005E7F11    je          005E7F2D
 005E7F13    mov         eax,dword ptr [ebp-4]
 005E7F16    mov         edx,dword ptr [eax]
 005E7F18    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 005E7F1E    mov         edx,eax
 005E7F20    mov         eax,dword ptr [ebp-4]
 005E7F23    call        005E7EC8
 005E7F28    mov         dword ptr [ebp-8],eax
>005E7F2B    jmp         005E7F42
 005E7F2D    mov         dword ptr [ebp-8],0FF000000
>005E7F34    jmp         005E7F42
 005E7F36    mov         eax,dword ptr [ebp-4]
 005E7F39    mov         eax,dword ptr [eax+29C];TColorBox.FSelectedColor:TColor
 005E7F3F    mov         dword ptr [ebp-8],eax
 005E7F42    mov         eax,dword ptr [ebp-8]
 005E7F45    pop         ecx
 005E7F46    pop         ecx
 005E7F47    pop         ebp
 005E7F48    ret
end;*}

//005E7F4C
{*procedure TCustomColorBox.sub_005E7F4C(?:?; ?:?);
begin
 005E7F4C    push        ebp
 005E7F4D    mov         ebp,esp
 005E7F4F    add         esp,0FFFFFFF4
 005E7F52    mov         byte ptr [ebp-9],cl
 005E7F55    mov         dword ptr [ebp-8],edx
 005E7F58    mov         dword ptr [ebp-4],eax
 005E7F5B    mov         eax,dword ptr [ebp-4]
 005E7F5E    mov         byte ptr [eax+292],0;TCustomColorBox.FListSelected:Boolean
 005E7F65    mov         edx,dword ptr [ebp-8]
 005E7F68    mov         cl,byte ptr [ebp-9]
 005E7F6B    mov         eax,dword ptr [ebp-4]
 005E7F6E    call        TWinControl.sub_005FA804
 005E7F73    mov         esp,ebp
 005E7F75    pop         ebp
 005E7F76    ret
end;*}

//005E7F78
{*procedure TCustomColorBox.sub_0059BC4C(?:?);
begin
 005E7F78    push        ebp
 005E7F79    mov         ebp,esp
 005E7F7B    add         esp,0FFFFFFF8
 005E7F7E    mov         dword ptr [ebp-8],edx
 005E7F81    mov         dword ptr [ebp-4],eax
 005E7F84    mov         edx,dword ptr [ebp-8]
 005E7F87    mov         eax,dword ptr [ebp-4]
 005E7F8A    call        TCustomComboBox.sub_0059BC4C
 005E7F8F    mov         eax,dword ptr [ebp-4]
 005E7F92    test        byte ptr [eax+290],20;TCustomColorBox.FStyle:TColorBoxStyle
>005E7F99    je          005E7FC3
 005E7F9B    mov         eax,dword ptr [ebp-8]
 005E7F9E    cmp         byte ptr [eax],0D
>005E7FA1    jne         005E7FC3
 005E7FA3    mov         eax,dword ptr [ebp-4]
 005E7FA6    mov         edx,dword ptr [eax]
 005E7FA8    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 005E7FAE    test        eax,eax
>005E7FB0    jne         005E7FC3
 005E7FB2    mov         eax,dword ptr [ebp-4]
 005E7FB5    mov         edx,dword ptr [eax]
 005E7FB7    call        dword ptr [edx+118];TCustomColorBox.sub_005E7FC8
 005E7FBD    mov         eax,dword ptr [ebp-8]
 005E7FC0    mov         byte ptr [eax],0
 005E7FC3    pop         ecx
 005E7FC4    pop         ecx
 005E7FC5    pop         ebp
 005E7FC6    ret
end;*}

//005E7FC8
{*function sub_005E7FC8:?;
begin
 005E7FC8    push        ebp
 005E7FC9    mov         ebp,esp
 005E7FCB    add         esp,0FFFFFFE4
 005E7FCE    push        ebx
 005E7FCF    xor         edx,edx
 005E7FD1    mov         dword ptr [ebp-14],edx
 005E7FD4    mov         dword ptr [ebp-4],eax
 005E7FD7    xor         eax,eax
 005E7FD9    push        ebp
 005E7FDA    push        5E80B2
 005E7FDF    push        dword ptr fs:[eax]
 005E7FE2    mov         dword ptr fs:[eax],esp
 005E7FE5    xor         ecx,ecx
 005E7FE7    mov         dl,1
 005E7FE9    mov         eax,[005E8D5C];TColorDialog
 005E7FEE    call        TColorDialog.Create;TColorDialog.Create
 005E7FF3    mov         dword ptr [ebp-10],eax
 005E7FF6    xor         eax,eax
 005E7FF8    push        ebp
 005E7FF9    push        5E8095
 005E7FFE    push        dword ptr fs:[eax]
 005E8001    mov         dword ptr fs:[eax],esp
 005E8004    mov         eax,dword ptr [ebp-4]
 005E8007    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E800D    xor         edx,edx
 005E800F    mov         ecx,dword ptr [eax]
 005E8011    call        dword ptr [ecx+18];TStrings.sub_00647284
 005E8014    call        ColorToRGB
 005E8019    mov         dword ptr [ebp-0C],eax
 005E801C    mov         eax,dword ptr [ebp-10]
 005E801F    mov         edx,dword ptr [ebp-0C]
 005E8022    mov         dword ptr [eax+58],edx;TColorDialog.Color:TColor
 005E8025    lea         eax,[ebp-14]
 005E8028    push        eax
 005E8029    mov         eax,dword ptr [ebp-0C]
 005E802C    mov         dword ptr [ebp-1C],eax
 005E802F    mov         byte ptr [ebp-18],0
 005E8033    lea         edx,[ebp-1C]
 005E8036    xor         ecx,ecx
 005E8038    mov         eax,5E80CC;'ColorA=%.8x'
 005E803D    call        00658FBC
 005E8042    mov         edx,dword ptr [ebp-14]
 005E8045    mov         eax,dword ptr [ebp-10]
 005E8048    mov         eax,dword ptr [eax+60];TColorDialog.CustomColors:TStrings
 005E804B    mov         ecx,dword ptr [eax]
 005E804D    call        dword ptr [ecx+2C];TStrings.sub_00647AF4
 005E8050    mov         eax,dword ptr [ebp-10]
 005E8053    mov         edx,dword ptr [eax]
 005E8055    call        dword ptr [edx+3C];TColorDialog.Execute
 005E8058    mov         byte ptr [ebp-5],al
 005E805B    cmp         byte ptr [ebp-5],0
>005E805F    je          005E807F
 005E8061    mov         eax,dword ptr [ebp-10]
 005E8064    mov         ecx,dword ptr [eax+58];TColorDialog.Color:TColor
 005E8067    mov         eax,dword ptr [ebp-4]
 005E806A    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E8070    xor         edx,edx
 005E8072    mov         ebx,dword ptr [eax]
 005E8074    call        dword ptr [ebx+24];TStrings.sub_006478BC
 005E8077    mov         eax,dword ptr [ebp-4]
 005E807A    mov         edx,dword ptr [eax]
 005E807C    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E807F    xor         eax,eax
 005E8081    pop         edx
 005E8082    pop         ecx
 005E8083    pop         ecx
 005E8084    mov         dword ptr fs:[eax],edx
 005E8087    push        5E809C
 005E808C    mov         eax,dword ptr [ebp-10]
 005E808F    call        TObject.Free
 005E8094    ret
>005E8095    jmp         @HandleFinally
>005E809A    jmp         005E808C
 005E809C    xor         eax,eax
 005E809E    pop         edx
 005E809F    pop         ecx
 005E80A0    pop         ecx
 005E80A1    mov         dword ptr fs:[eax],edx
 005E80A4    push        5E80B9
 005E80A9    lea         eax,[ebp-14]
 005E80AC    call        @LStrClr
 005E80B1    ret
>005E80B2    jmp         @HandleFinally
>005E80B7    jmp         005E80A9
 005E80B9    mov         al,byte ptr [ebp-5]
 005E80BC    pop         ebx
 005E80BD    mov         esp,ebp
 005E80BF    pop         ebp
 005E80C0    ret
end;*}

//005E80D8
{*procedure sub_005E80D8(?:?; ?:?; ?:?);
begin
 005E80D8    push        ebp
 005E80D9    mov         ebp,esp
 005E80DB    add         esp,0FFFFFFF0
 005E80DE    mov         dword ptr [ebp-8],edx
 005E80E1    mov         dword ptr [ebp-4],eax
 005E80E4    mov         eax,dword ptr [ebp-8]
 005E80E7    mov         edx,dword ptr [ebp-4]
 005E80EA    sub         edx,eax
>005E80EC    jg          005E8111
 005E80EE    dec         edx
 005E80EF    mov         dword ptr [ebp-10],edx
 005E80F2    mov         dword ptr [ebp-0C],eax
 005E80F5    mov         eax,dword ptr [ebp+8]
 005E80F8    mov         eax,dword ptr [eax-4]
 005E80FB    mov         eax,dword ptr [eax+23C]
 005E8101    mov         edx,dword ptr [ebp-0C]
 005E8104    mov         ecx,dword ptr [eax]
 005E8106    call        dword ptr [ecx+48]
 005E8109    dec         dword ptr [ebp-0C]
 005E810C    inc         dword ptr [ebp-10]
>005E810F    jne         005E80F5
 005E8111    mov         esp,ebp
 005E8113    pop         ebp
 005E8114    ret
end;*}

//005E8118
{*procedure sub_005E8118(?:?; ?:?);
begin
 005E8118    push        ebp
 005E8119    mov         ebp,esp
 005E811B    add         esp,0FFFFFFF8
 005E811E    mov         dword ptr [ebp-4],eax
 005E8121    mov         eax,dword ptr [ebp+8]
 005E8124    mov         eax,dword ptr [eax-4]
 005E8127    mov         eax,dword ptr [eax+23C]
 005E812D    mov         edx,dword ptr [ebp-4]
 005E8130    mov         ecx,dword ptr [eax]
 005E8132    call        dword ptr [ecx+5C]
 005E8135    mov         dword ptr [ebp-8],eax
 005E8138    cmp         dword ptr [ebp-8],0FFFFFFFF
>005E813C    je          005E8152
 005E813E    mov         eax,dword ptr [ebp+8]
 005E8141    mov         eax,dword ptr [eax-4]
 005E8144    mov         eax,dword ptr [eax+23C]
 005E814A    mov         edx,dword ptr [ebp-8]
 005E814D    mov         ecx,dword ptr [eax]
 005E814F    call        dword ptr [ecx+48]
 005E8152    pop         ecx
 005E8153    pop         ecx
 005E8154    pop         ebp
 005E8155    ret
end;*}

//005E8158
procedure sub_005E8158(?:TCustomColorBox);
begin
{*
 005E8158    push        ebp
 005E8159    mov         ebp,esp
 005E815B    add         esp,0FFFFFFF0
 005E815E    push        ebx
 005E815F    xor         edx,edx
 005E8161    mov         dword ptr [ebp-10],edx
 005E8164    mov         dword ptr [ebp-4],eax
 005E8167    xor         eax,eax
 005E8169    push        ebp
 005E816A    push        5E8317
 005E816F    push        dword ptr fs:[eax]
 005E8172    mov         dword ptr fs:[eax],esp
 005E8175    mov         eax,dword ptr [ebp-4]
 005E8178    call        TWinControl.HandleAllocated
 005E817D    test        al,al
>005E817F    je          005E82F7
 005E8185    mov         eax,dword ptr [ebp-4]
 005E8188    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E818E    call        TStrings.BeginUpdate
 005E8193    xor         eax,eax
 005E8195    push        ebp
 005E8196    push        5E82F0
 005E819B    push        dword ptr fs:[eax]
 005E819E    mov         dword ptr fs:[eax],esp
 005E81A1    xor         eax,eax
 005E81A3    mov         dword ptr [ebp-0C],eax
 005E81A6    mov         eax,dword ptr [ebp-4]
 005E81A9    test        byte ptr [eax+290],20;TCustomColorBox.FStyle:TColorBoxStyle
>005E81B0    je          005E81D7
 005E81B2    mov         eax,dword ptr [ebp-4]
 005E81B5    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E81BB    mov         edx,dword ptr [eax]
 005E81BD    call        dword ptr [edx+14];@AbstractError
 005E81C0    test        eax,eax
>005E81C2    jle         005E81D7
 005E81C4    mov         eax,dword ptr [ebp-4]
 005E81C7    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E81CD    xor         edx,edx
 005E81CF    mov         ecx,dword ptr [eax]
 005E81D1    call        dword ptr [ecx+18];TStrings.sub_00647284
 005E81D4    mov         dword ptr [ebp-0C],eax
 005E81D7    mov         eax,dword ptr [ebp-4]
 005E81DA    mov         eax,dword ptr [eax+29C];TCustomColorBox.FSelectedColor:TColor
 005E81E0    mov         dword ptr [ebp-8],eax
 005E81E3    mov         eax,dword ptr [ebp-4]
 005E81E6    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E81EC    mov         edx,dword ptr [eax]
 005E81EE    call        dword ptr [edx+44];TStrings.Clear
 005E81F1    mov         eax,dword ptr [ebp-4]
 005E81F4    push        eax
 005E81F5    push        5E7AD4
 005E81FA    call        005BF9F4
 005E81FF    mov         eax,dword ptr [ebp-4]
 005E8202    test        byte ptr [eax+290],8;TCustomColorBox.FStyle:TColorBoxStyle
>005E8209    jne         005E8217
 005E820B    push        ebp
 005E820C    mov         eax,1FFFFFFF
 005E8211    call        005E8118
 005E8216    pop         ecx
 005E8217    mov         eax,dword ptr [ebp-4]
 005E821A    test        byte ptr [eax+290],10;TCustomColorBox.FStyle:TColorBoxStyle
>005E8221    jne         005E822F
 005E8223    push        ebp
 005E8224    mov         eax,20000000
 005E8229    call        005E8118
 005E822E    pop         ecx
 005E822F    mov         eax,dword ptr [ebp-4]
 005E8232    test        byte ptr [eax+290],4;TCustomColorBox.FStyle:TColorBoxStyle
>005E8239    jne         005E8258
 005E823B    push        ebp
 005E823C    mov         eax,dword ptr [ebp-4]
 005E823F    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E8245    mov         edx,dword ptr [eax]
 005E8247    call        dword ptr [edx+14];@AbstractError
 005E824A    mov         edx,eax
 005E824C    dec         edx
 005E824D    mov         eax,14
 005E8252    call        005E80D8
 005E8257    pop         ecx
 005E8258    mov         eax,dword ptr [ebp-4]
 005E825B    test        byte ptr [eax+290],2;TCustomColorBox.FStyle:TColorBoxStyle
>005E8262    jne         005E8275
 005E8264    push        ebp
 005E8265    mov         edx,13
 005E826A    mov         eax,10
 005E826F    call        005E80D8
 005E8274    pop         ecx
 005E8275    mov         eax,dword ptr [ebp-4]
 005E8278    test        byte ptr [eax+290],1;TCustomColorBox.FStyle:TColorBoxStyle
>005E827F    jne         005E828F
 005E8281    push        ebp
 005E8282    mov         edx,0F
 005E8287    xor         eax,eax
 005E8289    call        005E80D8
 005E828E    pop         ecx
 005E828F    mov         eax,dword ptr [ebp-4]
 005E8292    test        byte ptr [eax+290],20;TCustomColorBox.FStyle:TColorBoxStyle
>005E8299    je          005E82BF
 005E829B    mov         eax,dword ptr [ebp-0C]
 005E829E    push        eax
 005E829F    lea         edx,[ebp-10]
 005E82A2    mov         eax,[006E9FD4];^gvar_0063CDB8
 005E82A7    call        LoadResString
 005E82AC    mov         ecx,dword ptr [ebp-10]
 005E82AF    mov         eax,dword ptr [ebp-4]
 005E82B2    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E82B8    xor         edx,edx
 005E82BA    mov         ebx,dword ptr [eax]
 005E82BC    call        dword ptr [ebx+64];TStrings.sub_0064767C
 005E82BF    mov         edx,dword ptr [ebp-8]
 005E82C2    mov         eax,dword ptr [ebp-4]
 005E82C5    call        TColorBox.SetSelected
 005E82CA    xor         eax,eax
 005E82CC    pop         edx
 005E82CD    pop         ecx
 005E82CE    pop         ecx
 005E82CF    mov         dword ptr fs:[eax],edx
 005E82D2    push        5E8301
 005E82D7    mov         eax,dword ptr [ebp-4]
 005E82DA    mov         eax,dword ptr [eax+23C];TCustomColorBox.FItems:TStrings
 005E82E0    call        TStrings.EndUpdate
 005E82E5    mov         eax,dword ptr [ebp-4]
 005E82E8    mov         byte ptr [eax+291],0;TCustomColorBox.FNeedToPopulate:Boolean
 005E82EF    ret
>005E82F0    jmp         @HandleFinally
>005E82F5    jmp         005E82D7
 005E82F7    mov         eax,dword ptr [ebp-4]
 005E82FA    mov         byte ptr [eax+291],1;TCustomColorBox.FNeedToPopulate:Boolean
 005E8301    xor         eax,eax
 005E8303    pop         edx
 005E8304    pop         ecx
 005E8305    pop         ecx
 005E8306    mov         dword ptr fs:[eax],edx
 005E8309    push        5E831E
 005E830E    lea         eax,[ebp-10]
 005E8311    call        @LStrClr
 005E8316    ret
>005E8317    jmp         @HandleFinally
>005E831C    jmp         005E830E
 005E831E    pop         ebx
 005E831F    mov         esp,ebp
 005E8321    pop         ebp
 005E8322    ret
*}
end;

//005E8324
procedure TCustomColorBox.sub_0059B374;
begin
{*
 005E8324    push        ebp
 005E8325    mov         ebp,esp
 005E8327    push        ecx
 005E8328    mov         dword ptr [ebp-4],eax
 005E832B    mov         eax,dword ptr [ebp-4]
 005E832E    cmp         byte ptr [eax+292],0;TCustomColorBox.FListSelected:Boolean
>005E8335    je          005E836B
 005E8337    mov         eax,dword ptr [ebp-4]
 005E833A    mov         byte ptr [eax+292],0;TCustomColorBox.FListSelected:Boolean
 005E8341    mov         eax,dword ptr [ebp-4]
 005E8344    test        byte ptr [eax+290],20;TCustomColorBox.FStyle:TColorBoxStyle
>005E834B    je          005E836B
 005E834D    mov         eax,dword ptr [ebp-4]
 005E8350    mov         edx,dword ptr [eax]
 005E8352    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 005E8358    test        eax,eax
>005E835A    jne         005E836B
 005E835C    mov         eax,dword ptr [ebp-4]
 005E835F    mov         edx,dword ptr [eax]
 005E8361    call        dword ptr [edx+118];TCustomColorBox.sub_005E7FC8
 005E8367    test        al,al
>005E8369    je          005E8373
 005E836B    mov         eax,dword ptr [ebp-4]
 005E836E    call        TCustomCombo.sub_0059B374
 005E8373    pop         ecx
 005E8374    pop         ebp
 005E8375    ret
*}
end;

//005E8378
procedure TColorBox.SetDefaultColorColor(Value:TColor);
begin
{*
 005E8378    push        ebp
 005E8379    mov         ebp,esp
 005E837B    add         esp,0FFFFFFF8
 005E837E    mov         dword ptr [ebp-8],edx
 005E8381    mov         dword ptr [ebp-4],eax
 005E8384    mov         eax,dword ptr [ebp-8]
 005E8387    mov         edx,dword ptr [ebp-4]
 005E838A    cmp         eax,dword ptr [edx+294];TColorBox.FDefaultColorColor:TColor
>005E8390    je          005E83A6
 005E8392    mov         eax,dword ptr [ebp-8]
 005E8395    mov         edx,dword ptr [ebp-4]
 005E8398    mov         dword ptr [edx+294],eax;TColorBox.FDefaultColorColor:TColor
 005E839E    mov         eax,dword ptr [ebp-4]
 005E83A1    mov         edx,dword ptr [eax]
 005E83A3    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E83A6    pop         ecx
 005E83A7    pop         ecx
 005E83A8    pop         ebp
 005E83A9    ret
*}
end;

//005E83AC
procedure TColorBox.SetNoneColorColor(Value:TColor);
begin
{*
 005E83AC    push        ebp
 005E83AD    mov         ebp,esp
 005E83AF    add         esp,0FFFFFFF8
 005E83B2    mov         dword ptr [ebp-8],edx
 005E83B5    mov         dword ptr [ebp-4],eax
 005E83B8    mov         eax,dword ptr [ebp-8]
 005E83BB    mov         edx,dword ptr [ebp-4]
 005E83BE    cmp         eax,dword ptr [edx+298];TColorBox.FNoneColorColor:TColor
>005E83C4    je          005E83DA
 005E83C6    mov         eax,dword ptr [ebp-8]
 005E83C9    mov         edx,dword ptr [ebp-4]
 005E83CC    mov         dword ptr [edx+298],eax;TColorBox.FNoneColorColor:TColor
 005E83D2    mov         eax,dword ptr [ebp-4]
 005E83D5    mov         edx,dword ptr [eax]
 005E83D7    call        dword ptr [edx+7C];TWinControl.Invalidate
 005E83DA    pop         ecx
 005E83DB    pop         ecx
 005E83DC    pop         ebp
 005E83DD    ret
*}
end;

//005E83E0
procedure TColorBox.SetSelected(Value:TColor);
begin
{*
 005E83E0    push        ebp
 005E83E1    mov         ebp,esp
 005E83E3    add         esp,0FFFFFFF4
 005E83E6    push        ebx
 005E83E7    mov         dword ptr [ebp-8],edx
 005E83EA    mov         dword ptr [ebp-4],eax
 005E83ED    mov         eax,dword ptr [ebp-4]
 005E83F0    call        TWinControl.HandleAllocated
 005E83F5    test        al,al
>005E83F7    je          005E844E
 005E83F9    mov         edx,dword ptr [ebp-8]
 005E83FC    mov         eax,dword ptr [ebp-4]
 005E83FF    mov         eax,dword ptr [eax+23C];TColorBox.FItems:TStrings
 005E8405    mov         ecx,dword ptr [eax]
 005E8407    call        dword ptr [ecx+5C];TStrings.sub_00647630
 005E840A    mov         dword ptr [ebp-0C],eax
 005E840D    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005E8411    jne         005E8440
 005E8413    mov         eax,dword ptr [ebp-4]
 005E8416    test        byte ptr [eax+290],20;TColorBox.FStyle:TColorBoxStyle
>005E841D    je          005E8440
 005E841F    cmp         dword ptr [ebp-8],0FF000000
>005E8426    je          005E8440
 005E8428    mov         ecx,dword ptr [ebp-8]
 005E842B    xor         edx,edx
 005E842D    mov         eax,dword ptr [ebp-4]
 005E8430    mov         eax,dword ptr [eax+23C];TColorBox.FItems:TStrings
 005E8436    mov         ebx,dword ptr [eax]
 005E8438    call        dword ptr [ebx+24];TStrings.sub_006478BC
 005E843B    xor         eax,eax
 005E843D    mov         dword ptr [ebp-0C],eax
 005E8440    mov         edx,dword ptr [ebp-0C]
 005E8443    mov         eax,dword ptr [ebp-4]
 005E8446    mov         ecx,dword ptr [eax]
 005E8448    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 005E844E    mov         eax,dword ptr [ebp-8]
 005E8451    mov         edx,dword ptr [ebp-4]
 005E8454    mov         dword ptr [edx+29C],eax;TColorBox.FSelectedColor:TColor
 005E845A    pop         ebx
 005E845B    mov         esp,ebp
 005E845D    pop         ebp
 005E845E    ret
*}
end;

//005E8460
procedure TColorBox.SetStyle(Value:TColorBoxStyle);
begin
{*
 005E8460    push        ebp
 005E8461    mov         ebp,esp
 005E8463    add         esp,0FFFFFFF8
 005E8466    mov         byte ptr [ebp-5],dl
 005E8469    mov         dword ptr [ebp-4],eax
 005E846C    mov         eax,dword ptr [ebp-4]
 005E846F    mov         al,byte ptr [eax+290];TColorBox.FStyle:TColorBoxStyle
 005E8475    cmp         al,byte ptr [ebp-5]
>005E8478    je          005E84DD
 005E847A    mov         al,byte ptr [ebp-5]
 005E847D    mov         edx,dword ptr [ebp-4]
 005E8480    mov         byte ptr [edx+290],al;TColorBox.FStyle:TColorBoxStyle
 005E8486    mov         eax,dword ptr [ebp-4]
 005E8489    mov         al,byte ptr [eax+290];TColorBox.FStyle:TColorBoxStyle
 005E848F    and         al,byte ptr ds:[5E84E4];0x27 gvar_005E84E4
 005E8495    mov         dl,byte ptr ds:[5E84E8];0x0 gvar_005E84E8
 005E849B    cmp         dl,al
 005E849D    setne       dl
 005E84A0    mov         eax,dword ptr [ebp-4]
 005E84A3    mov         ecx,dword ptr [eax]
 005E84A5    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 005E84A8    mov         eax,dword ptr [ebp-4]
 005E84AB    call        005E8158
 005E84B0    mov         eax,dword ptr [ebp-4]
 005E84B3    mov         eax,dword ptr [eax+23C];TColorBox.FItems:TStrings
 005E84B9    mov         edx,dword ptr [eax]
 005E84BB    call        dword ptr [edx+14];@AbstractError
 005E84BE    test        eax,eax
>005E84C0    jle         005E84DD
 005E84C2    mov         eax,dword ptr [ebp-4]
 005E84C5    mov         edx,dword ptr [eax]
 005E84C7    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 005E84CD    inc         eax
>005E84CE    jne         005E84DD
 005E84D0    xor         edx,edx
 005E84D2    mov         eax,dword ptr [ebp-4]
 005E84D5    mov         ecx,dword ptr [eax]
 005E84D7    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 005E84DD    pop         ecx
 005E84DE    pop         ecx
 005E84DF    pop         ebp
 005E84E0    ret
*}
end;

//005E84EC
procedure Finalization;
begin
{*
 005E84EC    push        ebp
 005E84ED    mov         ebp,esp
 005E84EF    xor         eax,eax
 005E84F1    push        ebp
 005E84F2    push        5E8511
 005E84F7    push        dword ptr fs:[eax]
 005E84FA    mov         dword ptr fs:[eax],esp
 005E84FD    inc         dword ptr ds:[6ECD9C]
 005E8503    xor         eax,eax
 005E8505    pop         edx
 005E8506    pop         ecx
 005E8507    pop         ecx
 005E8508    mov         dword ptr fs:[eax],edx
 005E850B    push        5E8518
 005E8510    ret
>005E8511    jmp         @HandleFinally
>005E8516    jmp         005E8510
 005E8518    pop         ebp
 005E8519    ret
*}
end;

end.