//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Forms;

interface

uses
  SysUtils, Classes, Forms, Controls, Graphics, Menus;

type
  TTimerMode = (tmShow, tmHide);
  THintInfo = THintInfo = record//size=40
f38:String;//f38
end;;
  TScrollBarKind = (sbHorizontal, sbVertical);
  TScrollBarStyle = (ssRegular, ssFlat, ssHotTrack);
  TControlScrollBar = class(TPersistent)
  public
    FControl:TScrollingWinControl;//f4
    Increment:TScrollBarInc;//f8
    FPageIncrement:TScrollBarInc;//fA
    Position:Integer;//fC
    Range:Integer;//f10
    FCalcRange:Integer;//f14
    FKind:TScrollBarKind;//f18
    Margin:word;//f1A
    Visible:Boolean;//f1C
    Tracking:Boolean;//f1D
    FScaled:Boolean;//f1E
    Smooth:Boolean;//f1F
    FDelay:Integer;//f20
    ButtonSize:Integer;//f24
    Color:TColor;//f28
    ParentColor:Boolean;//f2C
    Size:Integer;//f30
    Style:TScrollBarStyle;//f34
    ThumbSize:Integer;//f38
    FPageDiv:Integer;//f3C
    FLineDiv:Integer;//f40
    FUpdateNeeded:Boolean;//f44
    procedure Assign(Source:TPersistent); virtual;//v8//005CD200
    //constructor Create(?:?);//005CD12C
    function IsStoredIncrement(Value:TScrollBarInc):Boolean;//005CD1E4
    procedure ChangeBiDiPosition;//005CD268
    function NeedsScrollBarVisible:Boolean;//005CD610
    procedure SetButtonSize(Value:Integer);//005CD9D4
    procedure SetColor(Value:TColor);//005CDA40
    procedure SetParentColor(Value:Boolean);//005CDA80
    procedure SetPosition(Value:Integer);//005CDAB8
    procedure SetSize(Value:Integer);//005CDBE8
    procedure SetStyle(Value:TScrollBarStyle);//005CDC54
    procedure SetThumbSize(Value:Integer);//005CDC8C
    procedure SetRange(Value:Integer);//005CDCFC
    function IsStoredRange(Value:Integer):Boolean;//005CDD2C
    procedure SetVisible(Value:Boolean);//005CDD50
    procedure Update(ControlSB:Boolean; AssumeSB:Boolean);//005CDEC0
  end;
  TWindowState = (wsNormal, wsMinimized, wsMaximized);
  TScrollingWinControl = class(TWinControl)
  public
    HorzScrollBar:TControlScrollBar;//f208
    VertScrollBar:TControlScrollBar;//f20C
    FAutoScroll:Boolean;//f210
    FAutoRangeCount:Integer;//f214
    FUpdatingScrollBars:Boolean;//f218
    destructor Destroy; virtual;//005CE080
    constructor Create(AOwner:TComponent); virtual;//v2C//005CDFF8
    //procedure v8C(?:?); virtual;//v8C//005CE938
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//005CE13C
    //procedure v98(?:?); virtual;//v98//005CE0D0
    procedure CreateWnd; virtual;//vA0//005CE0F4
    //function vC4:?; virtual;//vC4//005CE168
    //procedure vC8(?:?); virtual;//vC8//005CE4B0
    //procedure vCC(?:?); virtual;//vCC//005CE7AC
    //procedure WMSize(?:?); message WM_SIZE;//005CE7BC
    //procedure WMHScroll(?:?); message WM_HSCROLL;//005CE8A8
    //procedure WMVScroll(?:?); message WM_VSCROLL;//005CE8F0
    procedure CMBiDiModeChanged(var Message:TMessage); message CM_BIDIMODECHANGED;//005CE9C0
    procedure sub_005CE1A4; dynamic;//005CE1A4
    //procedure sub_005CE77C(?:?; ?:?); dynamic;//005CE77C
    procedure UpdateScrollBars;//005CE3B8
  end;
  TBorderStyle = (bsNone, bsSingle);
  TScrollBox = class(TScrollingWinControl)
  public
    BorderStyle:TBorderStyle;//f220
    constructor Create(AOwner:TComponent); virtual;//v2C//005CEA50
    //procedure v98(?:?); virtual;//v98//005CEACC
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005CEB68
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005CEB84
    procedure SetBorderStyle(Value:TBorderStyle);//005CEB34
  end;
  TCustomFrame = class(TScrollingWinControl)
  public
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005CEE20
    constructor Create(AOwner:TComponent); virtual;//v2C//005CEBC0
    //procedure v68(?:?); virtual;//v68//005CEF04
    //procedure v98(?:?); virtual;//v98//005CECE4
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?); dynamic;//005CED18
  end;
  TFrame = class(TCustomFrame)
  end;
  TFormStyle = (fsNormal, fsMDIChild, fsMDIForm, fsStayOnTop);
  TBorderIcon = (biSystemMenu, biMinimize, biMaximize, biHelp);
  TBorderIcons = set of TBorderIcon;
  TPosition = (poDesigned, poDefault, poDefaultPosOnly, poDefaultSizeOnly, poScreenCenter, poDesktopCenter, poMainFormCenter, poOwnerFormCenter);
  TDefaultMonitor = (dmDesktop, dmPrimary, dmMainForm, dmActiveForm);
  TPrintScale = (poNone, poProportional, poPrintToFit);
  TCloseEvent = procedure(Sender:TObject; var Action:TCloseAction) of object;;
  TCloseQueryEvent = procedure(Sender:TObject; var CanClose:Boolean) of object;;
  TShortCutEvent = procedure(var Msg:TWMKey; var Handled:Boolean) of object;;
  THelpEvent = function(Command:Word; Data:Integer; var CallHelp:Boolean):Boolean of object;;
  TCustomForm = class(TScrollingWinControl)
  public
    FActiveControl:TWinControl;//f220
    FFocusedControl:TWinControl;//f224
    FBorderIcons:TBorderIcons;//f228
    FBorderStyle:TFormBorderStyle;//f229
    FSizeChanging:Boolean;//f22A
    FWindowState:TWindowState;//f22B
    FShowAction:TShowAction;//f22C
    FKeyPreview:Boolean;//f22D
    FActive:Boolean;//f22E
    FFormStyle:TFormStyle;//f22F
    FPosition:TPosition;//f230
    FDefaultMonitor:TDefaultMonitor;//f231
    FTileMode:TTileMode;//f232
    FDropTarget:Boolean;//f233
    FOldCreateOrder:Boolean;//f234
    FPrintScale:TPrintScale;//f235
    FCanvas:TControlCanvas;//f238
    FHelpFile:String;//f23C
    FIcon:TIcon;//f240
    FInCMParentBiDiModeChanged:Boolean;//f244
    FMenu:TMainMenu;//f248
    FModalResult:TModalResult;//f24C
    FDesigner:IDesignerHook;//f250
    FClientHandle:HWND;//f254
    FWindowMenu:TMenuItem;//f258
    FPixelsPerInch:Integer;//f25C
    FObjectMenuItem:TMenuItem;//f260
    FOleForm:IOleForm;//f264
    FClientWidth:Integer;//f268
    FClientHeight:Integer;//f26C
    FTextHeight:Integer;//f270
    FDefClientProc:TFarProc;//f274
    FClientInstance:TFarProc;//f278
    FActiveOleControl:TWinControl;//f27C
    FSavedBorderStyle:TFormBorderStyle;//f280
    FOnActivate:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FOnClose:TCloseEvent;//f290
    f292:word;//f292
    f294:dword;//f294
    FOnCloseQuery:TCloseQueryEvent;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    FOnDeactivate:TNotifyEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    FOnHelp:THelpEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FOnHide:TNotifyEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnPaint:TNotifyEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FOnShortCut:TShortCutEvent;//f2C0
    f2C2:word;//f2C2
    f2C4:dword;//f2C4
    FOnShow:TNotifyEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnCreate:TNotifyEvent;//f2D0
    FOnDestroy:TNotifyEvent;//f2D8
    FAlphaBlend:Boolean;//f2E0
    FAlphaBlendValue:byte;//f2E1
    FTransparentColor:Boolean;//f2E2
    FTransparentColorValue:TColor;//f2E4
    FActionLists:TList;//f2E8
    FFormState:TFormState;//f2EC
    procedure AfterConstruction; virtual;//005CF0F0
    procedure BeforeDestruction; virtual;//005CF2F8
    procedure DefaultHandler(var Message:void ); virtual;//005D1F34
    destructor Destroy; virtual;//005CF378
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005CF98C
    procedure Loaded; virtual;//vC//005CF538
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005CF590
    //procedure v14(?:?); virtual;//v14//005CF6F8
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//005D019C
    //function v28(?:?; ?:?):?; virtual;//v28//005D4974
    constructor Create(AOwner:TComponent); virtual;//v2C//005CEF60
    //procedure v44(?:?); virtual;//v44//005CFD78
    //function v54:?; virtual;//v54//005CFEA0
    //procedure v68(?:?); virtual;//v68//005D014C
    procedure SetParentBiDiMode(Value:Boolean); virtual;//v6C//005CFF7C
    //procedure v74(?:?); virtual;//v74//005D01EC
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//005D0860
    //procedure v98(?:?); virtual;//v98//005D1944
    //procedure v9C(?:?); virtual;//v9C//005D1D78
    procedure CreateWnd; virtual;//vA0//005D1C08
    procedure DestroyWindowHandle; virtual;//vAC//005D1EE4
    //procedure vB8(?:?); virtual;//vB8//005D27FC
    procedure vC0; virtual;//vC0//005D4144
    //procedure vCC(?:?); virtual;//vCC//005D2F30
    procedure DoCreate; virtual;//vD0//005CF45C
    procedure DoDestroy; virtual;//vD4//005CF4D8
    procedure vD8; virtual;//vD8//005D4524
    constructor vDC; virtual;//vDC//005CF138
    //function vE0:?; virtual;//vE0//005D3FFC
    //function vE4(?:?):?; virtual;//vE4//005D2138
    //function vE8:?; virtual;//vE8//005D41F0
    //function vEC(?:?; ?:?):?; virtual;//vEC//005D0130
    //procedure WMDestroy(?:?); message WM_DESTROY;//005D2CD8
    //procedure WMActivate(?:?); message WM_ACTIVATE;//005D2EF8
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//005D2964
    //procedure WMClose(?:?); message WM_CLOSE;//005D2F84
    //procedure WMQueryEndSession(?:?); message WM_QUERYENDSESSION;//005D2F9C
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd); message WM_ERASEBKGND;//005D2A70
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//005D3114
    //procedure WMSettingChange(?:?); message WM_SETTINGCHANGE;//005D45E4
    //procedure WMGetMinMaxInfo(?:?); message WM_GETMINMAXINFO;//005D3534
    //procedure WMEraseBkgnd(?:?); message WM_ICONERASEBKGND;//005D2A00
    //procedure WMNextDlgCtl(?:?); message WM_NEXTDLGCTL;//005D3240
    //procedure WMQueryDragIcon(?:?); message WM_QUERYDRAGICON;//005D2AB4
    //procedure WMWindowPosChangingMsg(?:?); message WM_WINDOWPOSCHANGING;//005D3608
    //procedure WMHelp(?:?); message WM_HELP;//005D33A4
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//005D2BEC
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//005D2C28
    //procedure WMCommand(?:?); message WM_COMMAND;//005D2D4C
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//005D3054
    //procedure WMInitMenuPopup(?:?); message WM_INITMENUPOPUP;//005D2D98
    //procedure WMMenuSelect(?:?); message WM_MENUSELECT;//005D2E18
    //procedure WMMenuChar(?:?); message WM_MENUCHAR;//005D2DC8
    //procedure WMEnterMenuLoop(?:?); message WM_ENTERMENULOOP;//005D3288
    //procedure WMMDIActivate(?:?); message WM_MDIACTIVATE;//005D31D0
    //procedure CMActivate(?:?); message CM_ACTIVATE;//005D36B0
    //procedure CMDeactivate(?:?); message CM_DEACTIVATE;//005D36E4
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//005D3718
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//005D3E80
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//005D13EC
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005D14BC
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005D1458
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005D3E04
    //procedure CMMenuChanged(?:?); message CM_MENUCHANGED;//005D14F8
    //procedure CMAppSysCommand(?:?); message CM_APPSYSCOMMAND;//005D2FD4
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//005D37E4
    //procedure CMIconChanged(?:?); message CM_ICONCHANGED;//005D3DC0
    //procedure CMRelease(?:?); message CM_RELEASE;//005D3DEC
    //procedure CMUIActivate(?:?); message CM_UIACTIVATE;//005D3E64
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//005D08C8
    //procedure CMParentBiDiModeChanged(?:?); message CM_PARENTBIDIMODECHANGED;//005D097C
    //procedure CMActionUpdate(?:?); message CM_ACTIONUPDATE;//005D4818
    //procedure CMActionExecute(?:?); message CM_ACTIONEXECUTE;//005D46E8
    //procedure CMDockNotification(?:?); message CM_DOCKNOTIFICATION;//005D3F00
    //procedure sub_005D48E8(?:?); dynamic;//005D48E8
    procedure sub_005D279C; dynamic;//005D279C
    procedure sub_005D4A14; dynamic;//005D4A14
    procedure sub_005CFD4C; dynamic;//005CFD4C
    procedure sub_005CFD20; dynamic;//005CFD20
    //procedure sub_005CFCEC(?:?); dynamic;//005CFCEC
    procedure sub_005D2758; dynamic;//005D2758
    procedure sub_005D2458; dynamic;//005D2458
    procedure sub_005D2714; dynamic;//005D2714
    //procedure sub_005D49C4(?:?); dynamic;//005D49C4
    //procedure sub_005D0AA8(?:?; ?:?); dynamic;//005D0AA8
    procedure sub_005D00BC; dynamic;//005D00BC
    procedure sub_005D45B8; dynamic;//005D45B8
    //procedure sub_005D28BC(?:?); dynamic;//005D28BC
    //procedure sub_005D0B14(?:?; ?:?); dynamic;//005D0B14
    //procedure sub_005CE77C(?:?; ?:?); dynamic;//005CFB2C
    procedure sub_005CFB20; dynamic;//005CFB20
    //procedure sub_005CFEE0(?:?; ?:?); dynamic;//005CFEE0
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?); dynamic;//005CFE2C
    procedure SetVisible(Value:Boolean);//005D005C
    procedure ClientWndProc(var Message:TMessage);//005D0718
    function GetMDIChildCount:Integer;//005D0BDC
    procedure MergeMenu(MergeState:Boolean);//005D25CC
    procedure CloseModal;//005D407C
    procedure Release;//005D41CC
  end;
  TForm = class(TCustomForm)
    procedure SetAutoScroll(Value:Boolean);//005CE314
    procedure SetHorzScrollBar(Value:TControlScrollBar);//005CE370
    procedure SetVertScrollBar(Value:TControlScrollBar);//005CE394
    function IsStoredClientHeight(Value:Integer):Boolean;//005CFC40
    function IsStoredHeight(Value:Integer):Boolean;//005CFC60
    function IsStoredAutoScroll(Value:Boolean):Boolean;//005CFCA4
    procedure SetClientWidth(Value:Integer);//005CFFBC
    procedure SetClientHeight(Value:Integer);//005D000C
    procedure SetBorderIcons(Value:TBorderIcons);//005D0A10
    procedure SetBorderStyle(Value:TFormBorderStyle);//005D0A4C
    procedure SetIcon(Value:TIcon);//005D0E44
    function IsStoredActiveControl(Value:TPersistent):Boolean;//005D0E68
    function IsStoredIcon(Value:TIcon):Boolean;//005D0E84
    procedure SetFormStyle(Value:TFormStyle);//005D0EBC
    procedure SetObjectMenuItem(Value:TMenuItem);//005D1028
    procedure SetWindowMenu(Value:TMenuItem);//005D1060
    procedure SetMenu(Value:TComponent);//005D10A4
    //function GetPixelsPerInch:?;//005D12D4
    procedure SetPixelsPerInch(Value:Integer);//005D1304
    procedure SetPosition(Value:TPosition);//005D1350
    //function GetScaled:?;//005D138C
    procedure SetScaled(Value:Boolean);//005D13AC
    procedure SetWindowState(Value:TWindowState);//005D1524
    procedure SetActiveControl(Value:TObject);//005D1FC4
    procedure SetAlphaBlend(Value:Boolean);//005D4B34
    procedure SetAlphaBlendValue(Value:Byte);//005D4B68
    procedure SetTransparentColorValue(Value:TColor);//005D4B9C
    procedure SetTransparentColor(Value:Boolean);//005D4BD0
  end;
  TCustomDockForm = class(TCustomForm)
  public
    procedure Loaded; virtual;//vC//005D4E60
    constructor Create(AOwner:TComponent); virtual;//v2C//005D4CC0
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005D4EF4
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//005D4F2C
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//005D517C
    //procedure CMControlLIstChange(?:?); message CM_CONTROLLISTCHANGE;//005D4FE8
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//005D5154
    //procedure sub_005D5058(?:?); dynamic;//005D5058
    //procedure sub_005D4EC0(?:?; ?:?; ?:?; ?:?); dynamic;//005D4EC0
    //procedure sub_005D4E30(?:?); dynamic;//005D4E30
    //procedure sub_005D4D38(?:?; ?:?); dynamic;//005D4D38
  end;
  TMonitor = class(TObject)
  public
    FHandle:HMONITOR;//f4
    FMonitorNum:Integer;//f8
  end;
  TScreen = class(TComponent)
  public
    FFonts:TStrings;//f30
    FImes:TStrings;//f34
    FDefaultIme:String;//f38
    FDefaultKbLayout:HKL;//f3C
    FPixelsPerInch:Integer;//f40
    FCursor:TCursor;//f44
    FCursorCount:Integer;//f48
    FForms:TList;//f4C
    FCustomForms:TList;//f50
    FDataModules:TList;//f54
    FMonitors:TList;//f58
    FCursorList:PCursorRec;//f5C
    FDefaultCursor:HCURSOR;//f60
    FActiveControl:TWinControl;//f64
    FActiveCustomForm:TCustomForm;//f68
    FActiveForm:TForm;//f6C
    FLastActiveControl:TWinControl;//f70
    FLastActiveCustomForm:TCustomForm;//f74
    FFocusedForm:TCustomForm;//f78
    FSaveFocusedList:TList;//f7C
    FHintFont:TFont;//f80
    FIconFont:TFont;//f84
    FMenuFont:TFont;//f88
    FAlignLevel:Word;//f8C
    FControlState:TControlState;//f8E
    FOnActiveControlChange:TNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    FOnActiveFormChange:TNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    destructor Destroy; virtual;//005D54B8
    constructor Create(AOwner:TComponent); virtual;//v2C//005D5314
    procedure RemoveForm(AForm:TCustomForm);//005D5824
    procedure AlignForms(AForm:TCustomForm; var Rect:TRect);//005D659C
  end;
  TApplication = class(TComponent)
  public
    FHandle:HWND;//f30
    FBiDiMode:TBiDiMode;//f34
    FBiDiKeyboard:String;//f38
    FNonBiDiKeyboard:String;//f3C
    FObjectInstance:Pointer;//f40
    FMainForm:TForm;//f44
    FMouseControl:TControl;//f48
    FHelpSystem:IHelpSystem;//f4C
    FHelpFile:String;//f50
    FHint:String;//f54
    FHintActive:Boolean;//f58
    FUpdateFormatSettings:Boolean;//f59
    FUpdateMetricSettings:Boolean;//f5A
    FShowMainForm:Boolean;//f5B
    FHintColor:TColor;//f5C
    FHintControl:TControl;//f60
    FHintCursorRect:TRect;//f64
    FHintHidePause:Integer;//f74
    FHintPause:Integer;//f78
    FHintShortCuts:Boolean;//f7C
    FHintShortPause:Integer;//f80
    FHintWindow:THintWindow;//f84
    FShowHint:Boolean;//f88
    FTimerMode:TTimerMode;//f89
    FTimerHandle:Word;//f8A
    FTitle:String;//f8C
    FTopMostList:TList;//f90
    FTopMostLevel:Integer;//f94
    FIcon:TIcon;//f98
    FTerminate:Boolean;//f9C
    FActive:Boolean;//f9D
    FAllowTesting:Boolean;//f9E
    FTestLib:THandle;//fA0
    FHandleCreated:Boolean;//fA4
    FRunning:Boolean;//fA5
    FWindowHooks:TList;//fA8
    FWindowList:Pointer;//fAC
    FDialogHandle:HWND;//fB0
    FAutoDragDocking:Boolean;//fB4
    FOnActionExecute:TActionEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnActionUpdate:TActionEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnException:TExceptionEvent;//fC8
    FOnMessage:TMessageEvent;//fD0
    FOnHelp:THelpEvent;//fD8
    fDA:word;//fDA
    fDC:dword;//fDC
    FOnHint:TNotifyEvent;//fE0
    fE2:word;//fE2
    fE4:dword;//fE4
    FOnIdle:TIdleEvent;//fE8
    fEA:word;//fEA
    fEC:dword;//fEC
    FOnDeactivate:TNotifyEvent;//fF0
    fF2:word;//fF2
    fF4:dword;//fF4
    FOnActivate:TNotifyEvent;//fF8
    fFA:word;//fFA
    fFC:dword;//fFC
    FOnMinimize:TNotifyEvent;//f100
    f102:word;//f102
    f104:dword;//f104
    FOnRestore:TNotifyEvent;//f108
    f10A:word;//f10A
    f10C:dword;//f10C
    FOnShortCut:TShortCutEvent;//f110
    f112:word;//f112
    f114:dword;//f114
    FOnShowHint:TShowHintEvent;//f118
    f11A:word;//f11A
    f11C:dword;//f11C
    FOnSettingChange:TSettingChangeEvent;//f120
    destructor Destroy; virtual;//005D6CE0
    constructor Create(AOwner:TComponent); virtual;//v2C//005D6A90
    procedure HandleException(Sender:TObject);//005D8544
    procedure HintTimerExpired;//005D9224
  end;
    procedure sub_005C99BC;//005C99BC
    //function sub_005CCA50:?;//005CCA50
    //procedure sub_005CCA64(?:?);//005CCA64
    procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);//005CCA78
    //function sub_005CCB90(?:HWND):?;//005CCB90
    procedure sub_005CCC48(?:Pointer);//005CCC48
    //function sub_005CCD14(?:HWND):?;//005CCD14
    //function sub_005CCD68(?:HWND; ?:?):?;//005CCD68
    //function sub_005CCDD0:?;//005CCDD0
    //function sub_005CCEAC(?:?):?;//005CCEAC
    //function sub_005CCF08(?:?):?;//005CCF08
    //function sub_005CCF50(?:?):?;//005CCF50
    //function sub_005CCFBC:?;//005CCFBC
    //function sub_005CCFE8(?:?; ?:?):?;//005CCFE8
    //function sub_005CD060(?:TObject):?;//005CD060
    //function sub_005CD0A4(?:TControl):?;//005CD0A4
    procedure Assign(Source:TPersistent);//005CD200
    //procedure sub_005CD2B0(?:?; ?:?);//005CD2B0
    //procedure sub_005CD334(?:?; ?:?);//005CD334
    procedure sub_005CD3B0(?:TControlScrollBar);//005CD3B0
    //function sub_005CD468(?:TControlScrollBar):?;//005CD468
    //function sub_005CD4BC(?:?; ?:?):?;//005CD4BC
    //function sub_005CD500(?:?; ?:?; ?:?):?;//005CD500
    //function sub_005CD58C(?:?; ?:?; ?:?):?;//005CD58C
    //function sub_005CD638(?:?):?;//005CD638
    //procedure sub_005CD6A4(?:TControlScrollBar; ?:?);//005CD6A4
    procedure sub_005CDCC4(?:TControlScrollBar; ?:Integer);//005CDCC4
    //procedure sub_005CDD74(?:?; ?:?);//005CDD74
    constructor Create(AOwner:TComponent);//005CDFF8
    destructor Destroy;//005CE080
    //procedure sub_005CE0D0(?:?);//005CE0D0
    procedure CreateWnd;//005CE0F4
    procedure AlignControls(AControl:TControl; var Rect:TRect);//005CE13C
    //function sub_005CE168:?;//005CE168
    procedure sub_005CE1A4;//005CE1A4
    procedure sub_005CE2E0(?:TScrollingWinControl);//005CE2E0
    //procedure sub_005CE4B0(?:?);//005CE4B0
    //procedure sub_005CE4E4(?:TScrollingWinControl; ?:?);//005CE4E4
    //procedure sub_005CE68C(?:TScrollingWinControl; ?:?; ?:Integer);//005CE68C
    //procedure sub_005CE77C(?:?; ?:?);//005CE77C
    //procedure sub_005CE7AC(?:?);//005CE7AC
    //procedure WMSize(?:?);//005CE7BC
    //procedure WMHScroll(?:?);//005CE8A8
    //procedure WMVScroll(?:?);//005CE8F0
    //procedure sub_005CE938(?:?);//005CE938
    procedure CMBiDiModeChanged(var Message:TMessage);//005CE9C0
    constructor Create(AOwner:TComponent);//005CEA50
    //procedure sub_005CEACC(?:?);//005CEACC
    //procedure WMNCHitTest(?:?);//005CEB68
    //procedure CMCtl3DChanged(?:?);//005CEB84
    constructor Create(AOwner:TComponent);//005CEBC0
    //procedure sub_005CECE4(?:?);//005CECE4
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);//005CED18
    procedure sub_005CED8C(?:TCustomFrame; ?:TComponent);//005CED8C
    procedure sub_005CEDE0(?:TCustomFrame; ?:TComponent);//005CEDE0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005CEE20
    //procedure sub_005CEE88(?:?; ?:?);//005CEE88
    //procedure sub_005CEF04(?:?);//005CEF04
    constructor Create(AOwner:TComponent);//005CEF60
    procedure AfterConstruction;//005CF0F0
    constructor sub_005CF138;//005CF138
    procedure BeforeDestruction;//005CF2F8
    destructor Destroy;//005CF378
    procedure DoCreate;//005CF45C
    procedure DoDestroy;//005CF4D8
    procedure Loaded;//005CF538
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005CF590
    //procedure sub_005CF6F8(?:?);//005CF6F8
    procedure DefineProperties(Filer:TFiler);//005CF98C
    //function sub_005CFAEC(?:TCustomForm):?;//005CFAEC
    procedure sub_005CFB20;//005CFB20
    //procedure sub_005CE77C(?:?; ?:?);//005CFB2C
    //procedure sub_005CFBD4(?:TCustomForm; ?:?);//005CFBD4
    //procedure sub_005CFCEC(?:?);//005CFCEC
    procedure sub_005CFD20;//005CFD20
    procedure sub_005CFD4C;//005CFD4C
    //procedure sub_005CFD78(?:?);//005CFD78
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);//005CFE2C
    //function sub_005CFEA0:?;//005CFEA0
    //procedure sub_005CFEE0(?:?; ?:?);//005CFEE0
    procedure SetParentBiDiMode(Value:Boolean);//005CFF7C
    procedure sub_005D00BC;//005D00BC
    //function sub_005D0130(?:?; ?:?):?;//005D0130
    //procedure sub_005D014C(?:?);//005D014C
    //procedure sub_005D019C(?:?; ?:?; ?:?);//005D019C
    //procedure sub_005D01EC(?:?);//005D01EC
    procedure Default;//005D0678
    function MaximizedChildren:Boolean;//005D06C4
    procedure AlignControls(AControl:TControl; var Rect:TRect);//005D0860
    procedure CMBiDiModeChanged(Message:TMessage);//005D08C8
    //procedure CMParentBiDiModeChanged(?:?);//005D097C
    //procedure sub_005D0AA8(?:?; ?:?);//005D0AA8
    //procedure sub_005D0B14(?:?; ?:?);//005D0B14
    //function sub_005D0B8C(?:TCustomForm):?;//005D0B8C
    //function sub_005D0C44(?:TCustomForm; ?:?):?;//005D0C44
    //function sub_005D0D04(?:TCustomForm):?;//005D0D04
    //function sub_005D0E28(?:TCustomForm):?;//005D0E28
    procedure sub_005D0F70(?:TCustomForm);//005D0F70
    //procedure CMColorChanged(?:?);//005D13EC
    //function sub_005D142C(?:TCustomForm):?;//005D142C
    //procedure CMCtl3DChanged(?:?);//005D1458
    //procedure CMFontChanged(?:?);//005D14BC
    //procedure CMMenuChanged(?:?);//005D14F8
    procedure sub_005D1580(?:TCustomForm);//005D1580
    //procedure sub_005D1944(?:?);//005D1944
    procedure CreateWnd;//005D1C08
    //procedure sub_005D1D78(?:?);//005D1D78
    procedure DestroyWindowHandle;//005D1EE4
    procedure DefaultHandler(var Message:void );//005D1F34
    //procedure sub_005D20A4(?:?; ?:TWinControl; ?:?);//005D20A4
    //procedure sub_005D2100(?:?; ?:TWinControl);//005D2100
    //function sub_005D2138(?:?):?;//005D2138
    procedure sub_005D2458;//005D2458
    procedure sub_005D2464(?:TCustomForm);//005D2464
    //procedure sub_005D24D4(?:TCustomForm; ?:?);//005D24D4
    //procedure sub_005D2560(?:TCustomForm; ?:?);//005D2560
    //procedure sub_005D26B0(?:?; ?:TWinControl; ?:?);//005D26B0
    procedure sub_005D2714;//005D2714
    procedure sub_005D2758;//005D2758
    procedure sub_005D279C;//005D279C
    //function sub_005D27C8(?:TCustomForm):?;//005D27C8
    //procedure sub_005D27FC(?:?);//005D27FC
    //procedure sub_005D28BC(?:?);//005D28BC
    procedure WMPaint(Message:TWMPaint);//005D2964
    //procedure WMEraseBkgnd(?:?);//005D2A00
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd);//005D2A70
    //procedure WMQueryDragIcon(?:?);//005D2AB4
    //procedure sub_005D2AD4(?:?);//005D2AD4
    //procedure WMNCCreate(?:?);//005D2BEC
    //procedure WMNCLButtonDown(?:?);//005D2C28
    //procedure WMDestroy(?:?);//005D2CD8
    //procedure WMCommand(?:?);//005D2D4C
    //procedure WMInitMenuPopup(?:?);//005D2D98
    //procedure WMMenuChar(?:?);//005D2DC8
    //procedure WMMenuSelect(?:?);//005D2E18
    //procedure WMActivate(?:?);//005D2EF8
    //procedure sub_005D2F30(?:?);//005D2F30
    //procedure WMClose(?:?);//005D2F84
    //procedure WMQueryEndSession(?:?);//005D2F9C
    //procedure CMAppSysCommand(?:?);//005D2FD4
    //procedure WMSysCommand(?:?);//005D3054
    //procedure WMShowWindow(?:?);//005D3114
    //procedure WMMDIActivate(?:?);//005D31D0
    //procedure WMNextDlgCtl(?:?);//005D3240
    //procedure WMEnterMenuLoop(?:?);//005D3288
    //function sub_005D32B0(?:TMenu; ?:?):?;//005D32B0
    //function sub_005D3304(?:?):?;//005D3304
    //procedure sub_005D3354(?:?; ?:?; ?:?; ?:?);//005D3354
    //procedure WMHelp(?:?);//005D33A4
    //procedure WMGetMinMaxInfo(?:?);//005D3534
    //procedure WMWindowPosChangingMsg(?:?);//005D3608
    //procedure CMActivate(?:?);//005D36B0
    //procedure CMDeactivate(?:?);//005D36E4
    //procedure CMDialogKey(?:?);//005D3718
    //procedure CMShowingChanged(?:?);//005D37E4
    //procedure CMIconChanged(?:?);//005D3DC0
    //procedure CMRelease(?:?);//005D3DEC
    //procedure CMTextChanged(?:?);//005D3E04
    //procedure CMUIActivate(?:?);//005D3E64
    //procedure CMParentFontChanged(?:?);//005D3E80
    //procedure CMDockNotification(?:?);//005D3F00
    procedure sub_005D3F3C(?:TCustomForm);//005D3F3C
    //function sub_005D3FFC:?;//005D3FFC
    procedure sub_005D4114(?:TCustomForm);//005D4114
    procedure sub_005D4128(?:TCustomForm);//005D4128
    procedure sub_005D4144;//005D4144
    //function sub_005D41F0:?;//005D41F0
    //procedure sub_005D44A4(?:TCustomForm; ?:?);//005D44A4
    procedure sub_005D4524;//005D4524
    procedure sub_005D45B8;//005D45B8
    //procedure WMSettingChange(?:?);//005D45E4
    //function sub_005D4618(?:TWinControl; ?:?):?;//005D4618
    //function sub_005D4654(?:TCustomForm; ?:?):?;//005D4654
    //procedure CMActionExecute(?:?);//005D46E8
    //function sub_005D4748(?:TWinControl; ?:?):?;//005D4748
    //function sub_005D4784(?:TCustomForm; ?:?):?;//005D4784
    //procedure CMActionUpdate(?:?);//005D4818
    //function sub_005D4878(?:?):?;//005D4878
    //procedure sub_005D48E8(?:?);//005D48E8
    //function sub_005D4974(?:?; ?:?):?;//005D4974
    //procedure sub_005D49C4(?:?);//005D49C4
    procedure sub_005D4A14;//005D4A14
    procedure sub_005D4A38(?:TCustomForm);//005D4A38
    //procedure sub_005D4C04(?:TCustomForm; ?:?);//005D4C04
    //procedure sub_005D4C48(?:?);//005D4C48
    //procedure sub_005D4C84(?:?);//005D4C84
    constructor Create(AOwner:TComponent);//005D4CC0
    //procedure sub_005D4D38(?:?; ?:?);//005D4D38
    //procedure sub_005D4E30(?:?);//005D4E30
    procedure Loaded;//005D4E60
    //procedure sub_005D4EC0(?:?; ?:?; ?:?; ?:?);//005D4EC0
    //procedure WMNCHitTest(?:?);//005D4EF4
    //procedure WMNCLButtonDown(?:?);//005D4F2C
    //procedure CMControlLIstChange(?:?);//005D4FE8
    //procedure sub_005D5058(?:?);//005D5058
    //procedure CMUndockClient(?:?);//005D5154
    //procedure CMVisibleChanged(?:?);//005D517C
    //function sub_005D51D8(?:?):?;//005D51D8
    //function sub_005D51FC(?:?):?;//005D51FC
    //function sub_005D5220(?:?):?;//005D5220
    //function sub_005D5244(?:?):?;//005D5244
    //procedure sub_005D5268(?:?; ?:?);//005D5268
    //procedure sub_005D52A4(?:?; ?:?);//005D52A4
    //function sub_005D52E0(?:?):?;//005D52E0
    constructor Create(AOwner:TComponent);//005D5314
    destructor Destroy;//005D54B8
    //function sub_005D55C0(?:TScreen):?;//005D55C0
    //function sub_005D55E0(?:TScreen):?;//005D55E0
    //function sub_005D5600(?:TScreen):?;//005D5600
    //function sub_005D5620(?:TScreen):?;//005D5620
    //function sub_005D5640(?:TScreen):?;//005D5640
    //function sub_005D5660(?:TScreen):?;//005D5660
    //function sub_005D5680(?:TScreen; ?:?):?;//005D5680
    //function sub_005D56A4(?:TScreen):?;//005D56A4
    //function sub_005D56DC(?:TScreen; ?:?):?;//005D56DC
    //function sub_005D5700(?:TScreen):?;//005D5700
    //function sub_005D571C(?:TScreen; ?:?):?;//005D571C
    //function sub_005D5740(?:TScreen):?;//005D5740
    procedure sub_005D575C(?:TScreen);//005D575C
    procedure sub_005D57DC(?:TScreen; ?:TCustomForm);//005D57DC
    procedure sub_005D58C4(?:TScreen);//005D58C4
    procedure sub_005D5938(?:TScreen);//005D5938
    //procedure sub_005D59CC(?:TScreen; ?:?);//005D59CC
    //function sub_005D5A48(?:?; ?:?):?;//005D5A48
    //procedure sub_005D5AA4(?:TScreen; ?:?; ?:HICON);//005D5AA4
    //function sub_005D5AEC(?:TScreen):?;//005D5AEC
    //procedure sub_005D5D0C(?:TScreen; ?:?);//005D5D0C
    //function sub_005D5DD0(?:TScreen; ?:TCursor):?;//005D5DD0
    procedure sub_005D5E2C(?:TScreen; ?:TCursor);//005D5E2C
    //procedure sub_005D5EE8(?:TScreen; ?:?; ?:HICON);//005D5EE8
    procedure sub_005D5F4C(?:TScreen);//005D5F4C
    procedure sub_005D60B4(?:TScreen);//005D60B4
    procedure sub_005D60C8(?:TScreen);//005D60C8
    //procedure sub_005D6100(?:?);//005D6100
    //function sub_005D6114(?:?; ?:?; ?:?):?;//005D6114
    //procedure sub_005D61A8(?:?; ?:?; ?:?);//005D61A8
    procedure DoAlign(AAlign:TAlign);//005D63AC
    function AlignWork:Boolean;//005D6528
    procedure sub_005D6624(?:TScreen; ?:TCustomForm);//005D6624
    procedure sub_005D66AC(?:TScreen);//005D66AC
    //procedure sub_005D66C4(?:TControl; ?:?);//005D66C4
    //function sub_005D6714(?:?):?;//005D6714
    procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;//005D675C
    procedure sub_005D6854;//005D6854
    procedure UnhookHintHooks;//005D68D0
    //function sub_005D692C:?;//005D692C
    //procedure sub_005D6964(?:?);//005D6964
    //procedure sub_005D6994(?:HWND; ?:?);//005D6994
    //function sub_005D6A3C(?:TScreen; ?:word; ?:?):?;//005D6A3C
    constructor _NF__A31;//005D6A80
    constructor Create(AOwner:TComponent);//005D6A90
    destructor Destroy;//005D6CE0
    procedure sub_005D6E40(?:TApplication);//005D6E40
    procedure sub_005D7014(?:TApplication; ?:TControl);//005D7014
    //procedure sub_005D7138(?:?; ?:?);//005D7138
    procedure sub_005D7208(?:TApplication);//005D7208
    procedure sub_005D721C(?:TApplication);//005D721C
    procedure sub_005D7230(?:TApplication);//005D7230
    //function sub_005D72BC(?:?):?;//005D72BC
    //function sub_005D72EC(?:TApplication):?;//005D72EC
    //function sub_005D731C(?:TApplication; ?:?):?;//005D731C
    //procedure sub_005D738C(?:TApplication; ?:?);//005D738C
    procedure Default;//005D740C
    //procedure sub_005D7448(?:?);//005D7448
    //procedure sub_005D7494(?:TApplication; ?:?);//005D7494
    //function sub_005D7BB0(?:TApplication):?;//005D7BB0
    procedure sub_005D7BE8(?:TApplication);//005D7BE8
    procedure sub_005D7CD4(?:TApplication);//005D7CD4
    procedure sub_005D7E18(?:TApplication);//005D7E18
    //procedure sub_005D7E74(?:TApplication; ?:?);//005D7E74
    //function sub_005D7ED0(?:?; ?:?):?;//005D7ED0
    //function sub_005D7F10(?:?; ?:?):?;//005D7F10
    //function sub_005D7F6C(?:?; ?:?):?;//005D7F6C
    //function sub_005D8080(?:?; ?:?):?;//005D8080
    //function sub_005D80C4(?:TApplication; ?:?):?;//005D80C4
    //function sub_005D8144(?:TApplication; ?:?):?;//005D8144
    procedure sub_005D820C(?:TApplication);//005D820C
    procedure sub_005D8228(?:TApplication);//005D8228
    //procedure sub_005D8250(?:TApplication; ?:?; ?:?);//005D8250
    //procedure sub_005D82C8(?:TApplication; ?:?; ?:?);//005D82C8
    procedure sub_005D8378(?:TApplication);//005D8378
    //procedure sub_005D8398(?:TApplication; ?:TForm; ?:?);//005D8398
    procedure sub_005D842C(?:TApplication);//005D842C
    procedure sub_005D8528(?:TApplication);//005D8528
    //function sub_005D85E4(?:TApplication; ?:PChar; ?:?; ?:?):?;//005D85E4
    //procedure sub_005D874C(?:TApplication; ?:?);//005D874C
    //function sub_005D8828(?:TApplication; ?:?; ?:THelpContext):?;//005D8828
    //function sub_005D8998(?:TApplication; ?:?):?;//005D8998
    //function sub_005D8A10(?:TApplication; ?:THelpContext):?;//005D8A10
    //function sub_005D8A88(?:TApplication; ?:?; ?:THelpContext):?;//005D8A88
    //procedure sub_005D8AB0(?:TApplication; ?:?);//005D8AB0
    procedure sub_005D8ACC(?:TApplication; ?:Boolean);//005D8ACC
    procedure sub_005D8B48(?:TApplication);//005D8B48
    //function sub_005D8BC4(?:TApplication):?;//005D8BC4
    //procedure sub_005D8C84(?:TApplication; ?:?);//005D8C84
    //procedure sub_005D8E74(?:TApplication; ?:?);//005D8E74
    //procedure sub_005D8F20(?:?; ?:?);//005D8F20
    procedure sub_005D8F80(?:TApplication);//005D8F80
    //function sub_005D9020(?:TApplication):?;//005D9020
    //procedure sub_005D905C(?:TApplication; ?:Integer; ?:?);//005D905C
    procedure sub_005D90B4(?:TApplication);//005D90B4
    //procedure sub_005D90EC(?:TApplication; ?:TControl; ?:?);//005D90EC
    procedure sub_005D9268(?:TApplication);//005D9268
    procedure sub_005D92C0(?:TApplication);//005D92C0
    //function sub_005D92F8(?:?; ?:Integer):?;//005D92F8
    //function sub_005D930C:?;//005D930C
    //procedure sub_005D9490(?:?; ?:?);//005D9490
    //function sub_005D94F8(?:AnsiString; ?:?):?;//005D94F8
    //procedure sub_005D95C4(?:TApplication; ?:?);//005D95C4
    //procedure sub_005D9998(?:TApplication; ?:?);//005D9998
    //function sub_005D9A6C(?:TApplication; ?:?; ?:?):?;//005D9A6C
    //function sub_005D9B18(?:TApplication; ?:TContainedAction):?;//005D9B18
    //function sub_005D9B54(?:TApplication; ?:TContainedAction):?;//005D9B54
    procedure sub_005D9B90;//005D9B90
    procedure sub_005D9C0C(?:TApplication);//005D9C0C
    procedure sub_005D9C28(?:TApplication);//005D9C28
    procedure _NF__B79;//005D9C40

implementation

//005C99BC
procedure sub_005C99BC;
begin
{*
 005C99BC    sub         dword ptr ds:[6ECD20],1
>005C99C3    jae         005C9AB6
 005C99C9    call        005C9418
 005C99CE    push        6ECD38;BitmapImageLock:TRTLCriticalSection
 005C99D3    call        KERNEL32.InitializeCriticalSection
 005C99D8    push        6ECD50;CounterLock:TRTLCriticalSection
 005C99DD    call        KERNEL32.InitializeCriticalSection
 005C99E2    push        7
 005C99E4    call        GDI32.GetStockObject
 005C99E9    mov         [006ECD28],eax;gvar_006ECD28
 005C99EE    push        5
 005C99F0    call        GDI32.GetStockObject
 005C99F5    mov         [006ECD2C],eax;gvar_006ECD2C
 005C99FA    push        0D
 005C99FC    call        GDI32.GetStockObject
 005C9A01    mov         [006ECD30],eax;gvar_006ECD30
 005C9A06    push        7F00
 005C9A0B    push        0
 005C9A0D    call        USER32.LoadIconA
 005C9A12    mov         [006ECD34],eax;gvar_006ECD34
 005C9A17    call        005C94B0
 005C9A1C    mov         cx,2C
 005C9A20    mov         dl,1
 005C9A22    mov         eax,[005BF014];TResourceManager
 005C9A27    call        TResourceManager.Create;TResourceManager.Create
 005C9A2C    mov         [006ECD68],eax;FontManager:TResourceManager
 005C9A31    mov         cx,10
 005C9A35    mov         dl,1
 005C9A37    mov         eax,[005BF014];TResourceManager
 005C9A3C    call        TResourceManager.Create;TResourceManager.Create
 005C9A41    mov         [006ECD6C],eax;PenManager:TResourceManager
 005C9A46    mov         cx,10
 005C9A4A    mov         dl,1
 005C9A4C    mov         eax,[005BF014];TResourceManager
 005C9A51    call        TResourceManager.Create;TResourceManager.Create
 005C9A56    mov         [006ECD70],eax;BrushManager:TResourceManager
 005C9A5B    mov         dl,1
 005C9A5D    mov         eax,[005C9528];TPatternManager
 005C9A62    call        TPatternManager.Create;TPatternManager.Create
 005C9A67    mov         [006ECD78],eax;PatternManager:TPatternManager
 005C9A6C    mov         dl,1
 005C9A6E    mov         eax,[00642328];TThreadList
 005C9A73    call        TThreadList.Create;TThreadList.Create
 005C9A78    mov         [006E3F78],eax;gvar_006E3F78:TThreadList
 005C9A7D    mov         dl,1
 005C9A7F    mov         eax,[00642328];TThreadList
 005C9A84    call        TThreadList.Create;TThreadList.Create
 005C9A89    mov         [006ECD74],eax;CanvasList:TThreadList
 005C9A8E    mov         ecx,5BFA1C
 005C9A93    mov         edx,5BFA44
 005C9A98    mov         eax,[004A6600];TColor
 005C9A9D    call        006445FC
 005C9AA2    mov         ecx,5BFC84
 005C9AA7    mov         edx,5BFCAC
 005C9AAC    mov         eax,[005BE2D8];TFontCharset
 005C9AB1    call        006445FC
 005C9AB6    ret
*}
end;

//005CCA50
{*function sub_005CCA50:?;
begin
 005CCA50    push        ebp
 005CCA51    mov         ebp,esp
 005CCA53    push        ecx
 005CCA54    mov         eax,[006E3FE0];0x0 gvar_006E3FE0
 005CCA59    mov         dword ptr [ebp-4],eax
 005CCA5C    mov         eax,dword ptr [ebp-4]
 005CCA5F    pop         ecx
 005CCA60    pop         ebp
 005CCA61    ret
end;*}

//005CCA64
{*procedure sub_005CCA64(?:?);
begin
 005CCA64    push        ebp
 005CCA65    mov         ebp,esp
 005CCA67    push        ecx
 005CCA68    mov         dword ptr [ebp-4],eax
 005CCA6B    mov         eax,dword ptr [ebp-4]
 005CCA6E    mov         [006E3FE0],eax;gvar_006E3FE0
 005CCA73    pop         ecx
 005CCA74    pop         ebp
 005CCA75    ret
end;*}

//005CCA78
procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);
begin
{*
 005CCA78    push        ebp
 005CCA79    mov         ebp,esp
 005CCA7B    add         esp,0FFFFFFF4
 005CCA7E    mov         byte ptr [ebp-5],dl
 005CCA81    mov         dword ptr [ebp-4],eax
 005CCA84    cmp         dword ptr [ebp-4],0
>005CCA88    je          005CCADE
 005CCA8A    push        0EC
 005CCA8C    mov         eax,dword ptr [ebp-4]
 005CCA8F    push        eax
 005CCA90    call        USER32.GetWindowLongA
 005CCA95    mov         dword ptr [ebp-0C],eax
 005CCA98    cmp         byte ptr [ebp-5],0
>005CCA9C    je          005CCAAD
 005CCA9E    test        byte ptr [ebp-0B],2
>005CCAA2    jne         005CCADE
 005CCAA4    or          dword ptr [ebp-0C],200
>005CCAAB    jmp         005CCABA
 005CCAAD    test        byte ptr [ebp-0B],2
>005CCAB1    je          005CCADE
 005CCAB3    and         dword ptr [ebp-0C],0FFFFFDFF
 005CCABA    mov         eax,dword ptr [ebp-0C]
 005CCABD    push        eax
 005CCABE    push        0EC
 005CCAC0    mov         eax,dword ptr [ebp-4]
 005CCAC3    push        eax
 005CCAC4    call        USER32.SetWindowLongA
 005CCAC9    push        37
 005CCACB    push        0
 005CCACD    push        0
 005CCACF    push        0
 005CCAD1    push        0
 005CCAD3    push        0
 005CCAD5    mov         eax,dword ptr [ebp-4]
 005CCAD8    push        eax
 005CCAD9    call        USER32.SetWindowPos
 005CCADE    mov         esp,ebp
 005CCAE0    pop         ebp
 005CCAE1    ret
*}
end;

//005CCB90
{*function sub_005CCB90(?:HWND):?;
begin
 005CCB90    push        ebp
 005CCB91    mov         ebp,esp
 005CCB93    add         esp,0FFFFFFF0
 005CCB96    push        ebx
 005CCB97    push        esi
 005CCB98    push        edi
 005CCB99    mov         dword ptr [ebp-4],eax
 005CCB9C    xor         eax,eax
 005CCB9E    mov         dword ptr [ebp-8],eax
 005CCBA1    mov         eax,[006E3FE4];0x0 gvar_006E3FE4
 005CCBA6    mov         dword ptr [ebp-0C],eax
 005CCBA9    mov         eax,[006E3FF0];0x0 gvar_006E3FF0
 005CCBAE    mov         dword ptr [ebp-10],eax
 005CCBB1    mov         eax,dword ptr [ebp-4]
 005CCBB4    mov         [006E3FE4],eax;gvar_006E3FE4
 005CCBB9    xor         eax,eax
 005CCBBB    mov         [006E3FF0],eax;gvar_006E3FF0
 005CCBC0    xor         eax,eax
 005CCBC2    push        ebp
 005CCBC3    push        5CCC37
 005CCBC8    push        dword ptr fs:[eax]
 005CCBCB    mov         dword ptr fs:[eax],esp
 005CCBCE    xor         eax,eax
 005CCBD0    push        ebp
 005CCBD1    push        5CCC00
 005CCBD6    push        dword ptr fs:[eax]
 005CCBD9    mov         dword ptr fs:[eax],esp
 005CCBDC    push        0
 005CCBDE    push        5CCB20
 005CCBE3    call        KERNEL32.GetCurrentThreadId
 005CCBE8    push        eax
 005CCBE9    call        USER32.EnumThreadWindows
 005CCBEE    mov         eax,[006E3FF0];0x0 gvar_006E3FF0
 005CCBF3    mov         dword ptr [ebp-8],eax
 005CCBF6    xor         eax,eax
 005CCBF8    pop         edx
 005CCBF9    pop         ecx
 005CCBFA    pop         ecx
 005CCBFB    mov         dword ptr fs:[eax],edx
>005CCBFE    jmp         005CCC19
>005CCC00    jmp         @HandleAnyException
 005CCC05    mov         eax,[006E3FF0];0x0 gvar_006E3FF0
 005CCC0A    call        005CCC48
 005CCC0F    call        @RaiseAgain
 005CCC14    call        @DoneExcept
 005CCC19    xor         eax,eax
 005CCC1B    pop         edx
 005CCC1C    pop         ecx
 005CCC1D    pop         ecx
 005CCC1E    mov         dword ptr fs:[eax],edx
 005CCC21    push        5CCC3E
 005CCC26    mov         eax,dword ptr [ebp-10]
 005CCC29    mov         [006E3FF0],eax;gvar_006E3FF0
 005CCC2E    mov         eax,dword ptr [ebp-0C]
 005CCC31    mov         [006E3FE4],eax;gvar_006E3FE4
 005CCC36    ret
>005CCC37    jmp         @HandleFinally
>005CCC3C    jmp         005CCC26
 005CCC3E    mov         eax,dword ptr [ebp-8]
 005CCC41    pop         edi
 005CCC42    pop         esi
 005CCC43    pop         ebx
 005CCC44    mov         esp,ebp
 005CCC46    pop         ebp
 005CCC47    ret
end;*}

//005CCC48
procedure sub_005CCC48(?:Pointer);
begin
{*
 005CCC48    push        ebp
 005CCC49    mov         ebp,esp
 005CCC4B    add         esp,0FFFFFFF8
 005CCC4E    mov         dword ptr [ebp-4],eax
 005CCC51    cmp         dword ptr [ebp-4],0
>005CCC55    je          005CCC96
 005CCC57    mov         eax,dword ptr [ebp-4]
 005CCC5A    mov         dword ptr [ebp-8],eax
 005CCC5D    mov         eax,dword ptr [ebp-8]
 005CCC60    mov         eax,dword ptr [eax+4]
 005CCC63    push        eax
 005CCC64    call        USER32.IsWindow
 005CCC69    test        eax,eax
>005CCC6B    je          005CCC7B
 005CCC6D    push        0FF
 005CCC6F    mov         eax,dword ptr [ebp-8]
 005CCC72    mov         eax,dword ptr [eax+4]
 005CCC75    push        eax
 005CCC76    call        USER32.EnableWindow
 005CCC7B    mov         eax,dword ptr [ebp-8]
 005CCC7E    mov         eax,dword ptr [eax]
 005CCC80    mov         dword ptr [ebp-4],eax
 005CCC83    mov         edx,8
 005CCC88    mov         eax,dword ptr [ebp-8]
 005CCC8B    call        @FreeMem
 005CCC90    cmp         dword ptr [ebp-4],0
>005CCC94    jne         005CCC57
 005CCC96    pop         ecx
 005CCC97    pop         ecx
 005CCC98    pop         ebp
 005CCC99    ret
*}
end;

//005CCD14
{*function sub_005CCD14(?:HWND):?;
begin
 005CCD14    push        ebp
 005CCD15    mov         ebp,esp
 005CCD17    add         esp,0FFFFFFF8
 005CCD1A    mov         dword ptr [ebp-4],eax
 005CCD1D    mov         eax,dword ptr [ebp-4]
 005CCD20    mov         [006E3FE4],eax;gvar_006E3FE4
 005CCD25    xor         eax,eax
 005CCD27    mov         [006E3FE8],eax;gvar_006E3FE8
 005CCD2C    xor         eax,eax
 005CCD2E    mov         [006E3FEC],eax;gvar_006E3FEC
 005CCD33    push        0
 005CCD35    push        5CCC9C
 005CCD3A    call        KERNEL32.GetCurrentThreadId
 005CCD3F    push        eax
 005CCD40    call        USER32.EnumThreadWindows
 005CCD45    cmp         dword ptr ds:[6E3FE8],0;gvar_006E3FE8
>005CCD4C    je          005CCD58
 005CCD4E    mov         eax,[006E3FE8];0x0 gvar_006E3FE8
 005CCD53    mov         dword ptr [ebp-8],eax
>005CCD56    jmp         005CCD60
 005CCD58    mov         eax,[006E3FEC];0x0 gvar_006E3FEC
 005CCD5D    mov         dword ptr [ebp-8],eax
 005CCD60    mov         eax,dword ptr [ebp-8]
 005CCD63    pop         ecx
 005CCD64    pop         ecx
 005CCD65    pop         ebp
 005CCD66    ret
end;*}

//005CCD68
{*function sub_005CCD68(?:HWND; ?:?):?;
begin
 005CCD68    push        ebp
 005CCD69    mov         ebp,esp
 005CCD6B    add         esp,0FFFFFFF4
 005CCD6E    mov         word ptr [ebp-6],dx
 005CCD72    mov         dword ptr [ebp-4],eax
 005CCD75    mov         eax,[006E3FE0];0x0 gvar_006E3FE0
 005CCD7A    mov         dword ptr [ebp-0C],eax
 005CCD7D    push        0
 005CCD7F    push        0
 005CCD81    movzx       eax,word ptr [ebp-6]
 005CCD85    push        eax
 005CCD86    mov         eax,dword ptr [ebp-4]
 005CCD89    push        eax
 005CCD8A    call        USER32.SendMessageA
 005CCD8F    mov         eax,[006E3FE0];0x0 gvar_006E3FE0
 005CCD94    cmp         eax,dword ptr [ebp-0C]
 005CCD97    sete        byte ptr [ebp-7]
 005CCD9B    mov         al,byte ptr [ebp-7]
 005CCD9E    mov         esp,ebp
 005CCDA0    pop         ebp
 005CCDA1    ret
end;*}

//005CCDD0
{*function sub_005CCDD0:?;
begin
 005CCDD0    push        ebp
 005CCDD1    mov         ebp,esp
 005CCDD3    add         esp,0FFFFFFF4
 005CCDD6    call        USER32.GetActiveWindow
 005CCDDB    mov         dword ptr [ebp-0C],eax
 005CCDDE    mov         byte ptr [ebp-8],0
 005CCDE2    lea         eax,[ebp-0C]
 005CCDE5    push        eax
 005CCDE6    push        5CCDA4
 005CCDEB    call        KERNEL32.GetCurrentThreadId
 005CCDF0    push        eax
 005CCDF1    call        USER32.EnumThreadWindows
 005CCDF6    mov         al,byte ptr [ebp-8]
 005CCDF9    mov         byte ptr [ebp-1],al
 005CCDFC    mov         al,byte ptr [ebp-1]
 005CCDFF    mov         esp,ebp
 005CCE01    pop         ebp
 005CCE02    ret
end;*}

//005CCEAC
{*function sub_005CCEAC(?:?):?;
begin
 005CCEAC    push        ebp
 005CCEAD    mov         ebp,esp
 005CCEAF    push        ecx
 005CCEB0    mov         word ptr [ebp-2],ax
 005CCEB4    mov         al,[005CCF04];0x0 gvar_005CCF04
 005CCEB9    mov         byte ptr [ebp-3],al
 005CCEBC    test        byte ptr [ebp-2],4
>005CCEC0    je          005CCEC6
 005CCEC2    or          byte ptr [ebp-3],1
 005CCEC6    test        byte ptr [ebp-2],8
>005CCECA    je          005CCED0
 005CCECC    or          byte ptr [ebp-3],4
 005CCED0    test        byte ptr [ebp-2],1
>005CCED4    je          005CCEDA
 005CCED6    or          byte ptr [ebp-3],8
 005CCEDA    test        byte ptr [ebp-2],2
>005CCEDE    je          005CCEE4
 005CCEE0    or          byte ptr [ebp-3],10
 005CCEE4    test        byte ptr [ebp-2],10
>005CCEE8    je          005CCEEE
 005CCEEA    or          byte ptr [ebp-3],20
 005CCEEE    push        12
 005CCEF0    call        USER32.GetKeyState
 005CCEF5    test        ax,ax
>005CCEF8    jge         005CCEFE
 005CCEFA    or          byte ptr [ebp-3],2
 005CCEFE    mov         al,byte ptr [ebp-3]
 005CCF01    pop         ecx
 005CCF02    pop         ebp
 005CCF03    ret
end;*}

//005CCF08
{*function sub_005CCF08(?:?):?;
begin
 005CCF08    push        ebp
 005CCF09    mov         ebp,esp
 005CCF0B    add         esp,0FFFFFFF8
 005CCF0E    mov         dword ptr [ebp-4],eax
 005CCF11    mov         al,[005CCF4C];0x0 gvar_005CCF4C
 005CCF16    mov         byte ptr [ebp-5],al
 005CCF19    push        10
 005CCF1B    call        USER32.GetKeyState
 005CCF20    test        ax,ax
>005CCF23    jge         005CCF29
 005CCF25    or          byte ptr [ebp-5],1
 005CCF29    push        11
 005CCF2B    call        USER32.GetKeyState
 005CCF30    test        ax,ax
>005CCF33    jge         005CCF39
 005CCF35    or          byte ptr [ebp-5],4
 005CCF39    test        byte ptr [ebp-1],20
>005CCF3D    je          005CCF43
 005CCF3F    or          byte ptr [ebp-5],2
 005CCF43    mov         al,byte ptr [ebp-5]
 005CCF46    pop         ecx
 005CCF47    pop         ecx
 005CCF48    pop         ebp
 005CCF49    ret
end;*}

//005CCF50
{*function sub_005CCF50(?:?):?;
begin
 005CCF50    push        ebp
 005CCF51    mov         ebp,esp
 005CCF53    add         esp,0FFFFFFF8
 005CCF56    mov         dword ptr [ebp-4],eax
 005CCF59    mov         al,[005CCFB8];0x0 gvar_005CCFB8
 005CCF5E    mov         byte ptr [ebp-5],al
 005CCF61    mov         eax,dword ptr [ebp-4]
 005CCF64    test        byte ptr [eax+10],80
>005CCF68    je          005CCF6E
 005CCF6A    or          byte ptr [ebp-5],1
 005CCF6E    mov         eax,dword ptr [ebp-4]
 005CCF71    test        byte ptr [eax+11],80
>005CCF75    je          005CCF7B
 005CCF77    or          byte ptr [ebp-5],4
 005CCF7B    mov         eax,dword ptr [ebp-4]
 005CCF7E    test        byte ptr [eax+12],80
>005CCF82    je          005CCF88
 005CCF84    or          byte ptr [ebp-5],2
 005CCF88    mov         eax,dword ptr [ebp-4]
 005CCF8B    test        byte ptr [eax+1],80
>005CCF8F    je          005CCF95
 005CCF91    or          byte ptr [ebp-5],8
 005CCF95    mov         eax,dword ptr [ebp-4]
 005CCF98    test        byte ptr [eax+2],80
>005CCF9C    je          005CCFA2
 005CCF9E    or          byte ptr [ebp-5],10
 005CCFA2    mov         eax,dword ptr [ebp-4]
 005CCFA5    test        byte ptr [eax+4],80
>005CCFA9    je          005CCFAF
 005CCFAB    or          byte ptr [ebp-5],20
 005CCFAF    mov         al,byte ptr [ebp-5]
 005CCFB2    pop         ecx
 005CCFB3    pop         ecx
 005CCFB4    pop         ebp
 005CCFB5    ret
end;*}

//005CCFBC
{*function sub_005CCFBC:?;
begin
 005CCFBC    push        ebp
 005CCFBD    mov         ebp,esp
 005CCFBF    add         esp,0FFFFFEFC
 005CCFC5    lea         eax,[ebp-101]
 005CCFCB    push        eax
 005CCFCC    call        USER32.GetKeyboardState
 005CCFD1    lea         eax,[ebp-101]
 005CCFD7    call        005CCF50
 005CCFDC    mov         byte ptr [ebp-1],al
 005CCFDF    mov         al,byte ptr [ebp-1]
 005CCFE2    mov         esp,ebp
 005CCFE4    pop         ebp
 005CCFE5    ret
end;*}

//005CCFE8
{*function sub_005CCFE8(?:?; ?:?):?;
begin
 005CCFE8    push        ebp
 005CCFE9    mov         ebp,esp
 005CCFEB    add         esp,0FFFFFFEC
 005CCFEE    xor         ecx,ecx
 005CCFF0    mov         dword ptr [ebp-10],ecx
 005CCFF3    mov         dword ptr [ebp-14],ecx
 005CCFF6    mov         dword ptr [ebp-8],edx
 005CCFF9    mov         word ptr [ebp-2],ax
 005CCFFD    xor         eax,eax
 005CCFFF    push        ebp
 005CD000    push        5CD04F
 005CD005    push        dword ptr fs:[eax]
 005CD008    mov         dword ptr fs:[eax],esp
 005CD00B    lea         edx,[ebp-10]
 005CD00E    mov         eax,dword ptr [ebp-8]
 005CD011    call        005A91B4
 005CD016    mov         eax,dword ptr [ebp-10]
 005CD019    push        eax
 005CD01A    lea         eax,[ebp-14]
 005CD01D    mov         dl,byte ptr [ebp-2]
 005CD020    call        @LStrFromChar
 005CD025    mov         eax,dword ptr [ebp-14]
 005CD028    pop         edx
 005CD029    call        CompareText
 005CD02E    test        eax,eax
 005CD030    sete        byte ptr [ebp-9]
 005CD034    xor         eax,eax
 005CD036    pop         edx
 005CD037    pop         ecx
 005CD038    pop         ecx
 005CD039    mov         dword ptr fs:[eax],edx
 005CD03C    push        5CD056
 005CD041    lea         eax,[ebp-14]
 005CD044    mov         edx,2
 005CD049    call        @LStrArrayClr
 005CD04E    ret
>005CD04F    jmp         @HandleFinally
>005CD054    jmp         005CD041
 005CD056    mov         al,byte ptr [ebp-9]
 005CD059    mov         esp,ebp
 005CD05B    pop         ebp
 005CD05C    ret
end;*}

//005CD060
{*function sub_005CD060(?:TObject):?;
begin
 005CD060    push        ebp
 005CD061    mov         ebp,esp
 005CD063    add         esp,0FFFFFFF8
 005CD066    mov         dword ptr [ebp-4],eax
>005CD069    jmp         005CD074
 005CD06B    mov         eax,dword ptr [ebp-4]
 005CD06E    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 005CD071    mov         dword ptr [ebp-4],eax
 005CD074    mov         eax,dword ptr [ebp-4]
 005CD077    cmp         dword ptr [eax+30],0;TWinControl.FParent:TWinControl
>005CD07B    jne         005CD06B
 005CD07D    mov         eax,dword ptr [ebp-4]
 005CD080    mov         edx,dword ptr ds:[5CC264];TCustomForm
 005CD086    call        @IsClass
 005CD08B    test        al,al
>005CD08D    je          005CD097
 005CD08F    mov         eax,dword ptr [ebp-4]
 005CD092    mov         dword ptr [ebp-8],eax
>005CD095    jmp         005CD09C
 005CD097    xor         eax,eax
 005CD099    mov         dword ptr [ebp-8],eax
 005CD09C    mov         eax,dword ptr [ebp-8]
 005CD09F    pop         ecx
 005CD0A0    pop         ecx
 005CD0A1    pop         ebp
 005CD0A2    ret
end;*}

//005CD0A4
{*function sub_005CD0A4(?:TControl):?;
begin
 005CD0A4    push        ebp
 005CD0A5    mov         ebp,esp
 005CD0A7    add         esp,0FFFFFFEC
 005CD0AA    xor         edx,edx
 005CD0AC    mov         dword ptr [ebp-14],edx
 005CD0AF    mov         dword ptr [ebp-4],eax
 005CD0B2    xor         eax,eax
 005CD0B4    push        ebp
 005CD0B5    push        5CD11B
 005CD0BA    push        dword ptr fs:[eax]
 005CD0BD    mov         dword ptr fs:[eax],esp
 005CD0C0    mov         eax,dword ptr [ebp-4]
 005CD0C3    call        005CD060
 005CD0C8    mov         dword ptr [ebp-8],eax
 005CD0CB    cmp         dword ptr [ebp-8],0
>005CD0CF    jne         005CD105
 005CD0D1    mov         eax,dword ptr [ebp-4]
 005CD0D4    mov         eax,dword ptr [eax+8]
 005CD0D7    mov         dword ptr [ebp-10],eax
 005CD0DA    mov         byte ptr [ebp-0C],0B
 005CD0DE    lea         eax,[ebp-10]
 005CD0E1    push        eax
 005CD0E2    push        0
 005CD0E4    lea         edx,[ebp-14]
 005CD0E7    mov         eax,[006E9E38];^gvar_0063CA80
 005CD0EC    call        LoadResString
 005CD0F1    mov         ecx,dword ptr [ebp-14]
 005CD0F4    mov         dl,1
 005CD0F6    mov         eax,[00642244];EInvalidOperation
 005CD0FB    call        Exception.CreateFmt;EInvalidOperation.Create
 005CD100    call        @RaiseExcept
 005CD105    xor         eax,eax
 005CD107    pop         edx
 005CD108    pop         ecx
 005CD109    pop         ecx
 005CD10A    mov         dword ptr fs:[eax],edx
 005CD10D    push        5CD122
 005CD112    lea         eax,[ebp-14]
 005CD115    call        @LStrClr
 005CD11A    ret
>005CD11B    jmp         @HandleFinally
>005CD120    jmp         005CD112
 005CD122    mov         eax,dword ptr [ebp-8]
 005CD125    mov         esp,ebp
 005CD127    pop         ebp
 005CD128    ret
end;*}

//005CD12C
{*constructor TControlScrollBar.Create(?:?);
begin
 005CD12C    push        ebp
 005CD12D    mov         ebp,esp
 005CD12F    add         esp,0FFFFFFF4
 005CD132    test        dl,dl
>005CD134    je          005CD13E
 005CD136    add         esp,0FFFFFFF0
 005CD139    call        @ClassCreate
 005CD13E    mov         dword ptr [ebp-0C],ecx
 005CD141    mov         byte ptr [ebp-5],dl
 005CD144    mov         dword ptr [ebp-4],eax
 005CD147    xor         edx,edx
 005CD149    mov         eax,dword ptr [ebp-4]
 005CD14C    call        TObject.Create
 005CD151    mov         eax,dword ptr [ebp-4]
 005CD154    mov         edx,dword ptr [ebp-0C]
 005CD157    mov         dword ptr [eax+4],edx
 005CD15A    mov         eax,dword ptr [ebp-4]
 005CD15D    mov         dl,byte ptr [ebp+8]
 005CD160    mov         byte ptr [eax+18],dl
 005CD163    mov         eax,dword ptr [ebp-4]
 005CD166    mov         word ptr [eax+0A],50
 005CD16C    mov         eax,dword ptr [ebp-4]
 005CD16F    movzx       eax,word ptr [eax+0A]
 005CD173    mov         ecx,0A
 005CD178    xor         edx,edx
 005CD17A    div         eax,ecx
 005CD17C    mov         edx,dword ptr [ebp-4]
 005CD17F    mov         word ptr [edx+8],ax
 005CD183    mov         eax,dword ptr [ebp-4]
 005CD186    mov         byte ptr [eax+1C],1
 005CD18A    mov         eax,dword ptr [ebp-4]
 005CD18D    mov         dword ptr [eax+20],0A
 005CD194    mov         eax,dword ptr [ebp-4]
 005CD197    mov         dword ptr [eax+40],4
 005CD19E    mov         eax,dword ptr [ebp-4]
 005CD1A1    mov         dword ptr [eax+3C],0C
 005CD1A8    mov         eax,dword ptr [ebp-4]
 005CD1AB    mov         dword ptr [eax+28],80000014
 005CD1B2    mov         eax,dword ptr [ebp-4]
 005CD1B5    mov         byte ptr [eax+2C],1
 005CD1B9    mov         eax,dword ptr [ebp-4]
 005CD1BC    mov         byte ptr [eax+44],1
 005CD1C0    mov         eax,dword ptr [ebp-4]
 005CD1C3    cmp         byte ptr [ebp-5],0
>005CD1C7    je          005CD1D8
 005CD1C9    call        @AfterConstruction
 005CD1CE    pop         dword ptr fs:[0]
 005CD1D5    add         esp,0C
 005CD1D8    mov         eax,dword ptr [ebp-4]
 005CD1DB    mov         esp,ebp
 005CD1DD    pop         ebp
 005CD1DE    ret         4
end;*}

//005CD1E4
function TControlScrollBar.IsStoredIncrement(Value:TScrollBarInc):Boolean;
begin
{*
 005CD1E4    push        ebp
 005CD1E5    mov         ebp,esp
 005CD1E7    add         esp,0FFFFFFF8
 005CD1EA    mov         dword ptr [ebp-4],eax
 005CD1ED    mov         eax,dword ptr [ebp-4]
 005CD1F0    mov         al,byte ptr [eax+1F];TControlScrollBar.Smooth:Boolean
 005CD1F3    xor         al,1
 005CD1F5    mov         byte ptr [ebp-5],al
 005CD1F8    mov         al,byte ptr [ebp-5]
 005CD1FB    pop         ecx
 005CD1FC    pop         ecx
 005CD1FD    pop         ebp
 005CD1FE    ret
*}
end;

//005CD200
procedure TControlScrollBar.Assign(Source:TPersistent);
begin
{*
 005CD200    push        ebp
 005CD201    mov         ebp,esp
 005CD203    add         esp,0FFFFFFF8
 005CD206    mov         dword ptr [ebp-8],edx
 005CD209    mov         dword ptr [ebp-4],eax
 005CD20C    mov         eax,dword ptr [ebp-8]
 005CD20F    mov         edx,dword ptr ds:[5CA820];TControlScrollBar
 005CD215    call        @IsClass
 005CD21A    test        al,al
>005CD21C    je          005CD258
 005CD21E    mov         eax,dword ptr [ebp-8]
 005CD221    mov         dl,byte ptr [eax+1C]
 005CD224    mov         eax,dword ptr [ebp-4]
 005CD227    call        TControlScrollBar.SetVisible
 005CD22C    mov         eax,dword ptr [ebp-8]
 005CD22F    mov         edx,dword ptr [eax+10]
 005CD232    mov         eax,dword ptr [ebp-4]
 005CD235    call        TControlScrollBar.SetRange
 005CD23A    mov         eax,dword ptr [ebp-8]
 005CD23D    mov         edx,dword ptr [eax+0C]
 005CD240    mov         eax,dword ptr [ebp-4]
 005CD243    call        TControlScrollBar.SetPosition
 005CD248    mov         eax,dword ptr [ebp-8]
 005CD24B    mov         ax,word ptr [eax+8]
 005CD24F    mov         edx,dword ptr [ebp-4]
 005CD252    mov         word ptr [edx+8],ax;TControlScrollBar.Increment:TScrollBarInc
>005CD256    jmp         005CD263
 005CD258    mov         edx,dword ptr [ebp-8]
 005CD25B    mov         eax,dword ptr [ebp-4]
 005CD25E    call        TPersistent.Assign
 005CD263    pop         ecx
 005CD264    pop         ecx
 005CD265    pop         ebp
 005CD266    ret
*}
end;

//005CD268
procedure TControlScrollBar.ChangeBiDiPosition;
begin
{*
 005CD268    push        ebp
 005CD269    mov         ebp,esp
 005CD26B    push        ecx
 005CD26C    mov         dword ptr [ebp-4],eax
 005CD26F    mov         eax,dword ptr [ebp-4]
 005CD272    cmp         byte ptr [eax+18],0
>005CD276    jne         005CD2AD
 005CD278    mov         eax,dword ptr [ebp-4]
 005CD27B    call        005CD468
 005CD280    test        al,al
>005CD282    je          005CD2AD
 005CD284    mov         eax,dword ptr [ebp-4]
 005CD287    mov         eax,dword ptr [eax+4]
 005CD28A    call        005F40FC
 005CD28F    test        al,al
>005CD291    jne         005CD29F
 005CD293    xor         edx,edx
 005CD295    mov         eax,dword ptr [ebp-4]
 005CD298    call        TControlScrollBar.SetPosition
>005CD29D    jmp         005CD2AD
 005CD29F    mov         eax,dword ptr [ebp-4]
 005CD2A2    mov         edx,dword ptr [eax+10]
 005CD2A5    mov         eax,dword ptr [ebp-4]
 005CD2A8    call        TControlScrollBar.SetPosition
 005CD2AD    pop         ecx
 005CD2AE    pop         ebp
 005CD2AF    ret
*}
end;

//005CD2B0
{*procedure sub_005CD2B0(?:?; ?:?);
begin
 005CD2B0    push        ebp
 005CD2B1    mov         ebp,esp
 005CD2B3    push        ecx
 005CD2B4    mov         dword ptr [ebp-4],eax
 005CD2B7    mov         eax,dword ptr [ebp-4]
 005CD2BA    cmp         byte ptr [eax+57],0
>005CD2BE    je          005CD326
 005CD2C0    mov         eax,dword ptr [ebp-4]
 005CD2C3    mov         al,byte ptr [eax+5B]
 005CD2C6    sub         al,1
>005CD2C8    jb          005CD2D4
 005CD2CA    sub         al,2
>005CD2CC    je          005CD2D4
 005CD2CE    dec         al
>005CD2D0    je          005CD31A
>005CD2D2    jmp         005CD326
 005CD2D4    mov         eax,dword ptr [ebp-4]
 005CD2D7    cmp         byte ptr [eax+5B],3
>005CD2DB    je          005CD2F2
 005CD2DD    mov         al,[005CD32C];0x5 gvar_005CD32C
 005CD2E2    mov         edx,dword ptr [ebp-4]
 005CD2E5    and         al,byte ptr [edx+61]
 005CD2E8    mov         dl,byte ptr ds:[5CD330];0x1 gvar_005CD330
 005CD2EE    cmp         dl,al
>005CD2F0    jne         005CD326
 005CD2F2    mov         eax,dword ptr [ebp+8]
 005CD2F5    mov         eax,dword ptr [eax-8]
 005CD2F8    mov         edx,dword ptr [eax+0C]
 005CD2FB    mov         eax,dword ptr [ebp-4]
 005CD2FE    add         edx,dword ptr [eax+40]
 005CD301    mov         eax,dword ptr [ebp-4]
 005CD304    add         edx,dword ptr [eax+48]
 005CD307    mov         eax,dword ptr [ebp+8]
 005CD30A    mov         eax,dword ptr [eax-4]
 005CD30D    call        00653AC8
 005CD312    mov         edx,dword ptr [ebp+8]
 005CD315    mov         dword ptr [edx-4],eax
>005CD318    jmp         005CD326
 005CD31A    mov         eax,dword ptr [ebp+8]
 005CD31D    mov         edx,dword ptr [ebp-4]
 005CD320    mov         edx,dword ptr [edx+48]
 005CD323    add         dword ptr [eax-0C],edx
 005CD326    pop         ecx
 005CD327    pop         ebp
 005CD328    ret
end;*}

//005CD334
{*procedure sub_005CD334(?:?; ?:?);
begin
 005CD334    push        ebp
 005CD335    mov         ebp,esp
 005CD337    push        ecx
 005CD338    mov         dword ptr [ebp-4],eax
 005CD33B    mov         eax,dword ptr [ebp-4]
 005CD33E    cmp         byte ptr [eax+57],0
>005CD342    je          005CD3A4
 005CD344    mov         eax,dword ptr [ebp-4]
 005CD347    mov         al,byte ptr [eax+5B]
 005CD34A    sub         al,2
>005CD34C    jb          005CD352
>005CD34E    je          005CD398
>005CD350    jmp         005CD3A4
 005CD352    mov         eax,dword ptr [ebp-4]
 005CD355    cmp         byte ptr [eax+5B],1
>005CD359    je          005CD370
 005CD35B    mov         al,[005CD3A8];0xA gvar_005CD3A8
 005CD360    mov         edx,dword ptr [ebp-4]
 005CD363    and         al,byte ptr [edx+61]
 005CD366    mov         dl,byte ptr ds:[5CD3AC];0x2 gvar_005CD3AC
 005CD36C    cmp         dl,al
>005CD36E    jne         005CD3A4
 005CD370    mov         eax,dword ptr [ebp+8]
 005CD373    mov         eax,dword ptr [eax-8]
 005CD376    mov         edx,dword ptr [eax+0C]
 005CD379    mov         eax,dword ptr [ebp-4]
 005CD37C    add         edx,dword ptr [eax+44]
 005CD37F    mov         eax,dword ptr [ebp-4]
 005CD382    add         edx,dword ptr [eax+4C]
 005CD385    mov         eax,dword ptr [ebp+8]
 005CD388    mov         eax,dword ptr [eax-4]
 005CD38B    call        00653AC8
 005CD390    mov         edx,dword ptr [ebp+8]
 005CD393    mov         dword ptr [edx-4],eax
>005CD396    jmp         005CD3A4
 005CD398    mov         eax,dword ptr [ebp+8]
 005CD39B    mov         edx,dword ptr [ebp-4]
 005CD39E    mov         edx,dword ptr [edx+4C]
 005CD3A1    add         dword ptr [eax-0C],edx
 005CD3A4    pop         ecx
 005CD3A5    pop         ebp
 005CD3A6    ret
end;*}

//005CD3B0
procedure sub_005CD3B0(?:TControlScrollBar);
begin
{*
 005CD3B0    push        ebp
 005CD3B1    mov         ebp,esp
 005CD3B3    add         esp,0FFFFFFEC
 005CD3B6    mov         dword ptr [ebp-8],eax
 005CD3B9    mov         eax,dword ptr [ebp-8]
 005CD3BC    mov         eax,dword ptr [eax+4]
 005CD3BF    cmp         byte ptr [eax+210],0
>005CD3C6    je          005CD463
 005CD3CC    mov         eax,dword ptr [ebp-8]
 005CD3CF    mov         eax,dword ptr [eax+4]
 005CD3D2    mov         edx,dword ptr [eax]
 005CD3D4    call        dword ptr [edx+0C4]
 005CD3DA    test        al,al
>005CD3DC    je          005CD459
 005CD3DE    xor         eax,eax
 005CD3E0    mov         dword ptr [ebp-4],eax
 005CD3E3    xor         eax,eax
 005CD3E5    mov         dword ptr [ebp-0C],eax
 005CD3E8    mov         eax,dword ptr [ebp-8]
 005CD3EB    mov         eax,dword ptr [eax+4]
 005CD3EE    call        005F7DC4
 005CD3F3    dec         eax
 005CD3F4    test        eax,eax
>005CD3F6    jl          005CD440
 005CD3F8    inc         eax
 005CD3F9    mov         dword ptr [ebp-14],eax
 005CD3FC    mov         dword ptr [ebp-10],0
 005CD403    mov         eax,dword ptr [ebp-8]
 005CD406    cmp         byte ptr [eax+18],0
>005CD40A    jne         005CD423
 005CD40C    push        ebp
 005CD40D    mov         eax,dword ptr [ebp-8]
 005CD410    mov         eax,dword ptr [eax+4]
 005CD413    mov         edx,dword ptr [ebp-10]
 005CD416    call        005F7D58
 005CD41B    call        005CD2B0
 005CD420    pop         ecx
>005CD421    jmp         005CD438
 005CD423    push        ebp
 005CD424    mov         eax,dword ptr [ebp-8]
 005CD427    mov         eax,dword ptr [eax+4]
 005CD42A    mov         edx,dword ptr [ebp-10]
 005CD42D    call        005F7D58
 005CD432    call        005CD334
 005CD437    pop         ecx
 005CD438    inc         dword ptr [ebp-10]
 005CD43B    dec         dword ptr [ebp-14]
>005CD43E    jne         005CD403
 005CD440    mov         edx,dword ptr [ebp-4]
 005CD443    add         edx,dword ptr [ebp-0C]
 005CD446    mov         eax,dword ptr [ebp-8]
 005CD449    movzx       eax,word ptr [eax+1A]
 005CD44D    add         edx,eax
 005CD44F    mov         eax,dword ptr [ebp-8]
 005CD452    call        005CDCC4
>005CD457    jmp         005CD463
 005CD459    xor         edx,edx
 005CD45B    mov         eax,dword ptr [ebp-8]
 005CD45E    call        005CDCC4
 005CD463    mov         esp,ebp
 005CD465    pop         ebp
 005CD466    ret
*}
end;

//005CD468
{*function sub_005CD468(?:TControlScrollBar):?;
begin
 005CD468    push        ebp
 005CD469    mov         ebp,esp
 005CD46B    add         esp,0FFFFFFF4
 005CD46E    mov         dword ptr [ebp-4],eax
 005CD471    mov         dword ptr [ebp-0C],100000
 005CD478    mov         eax,dword ptr [ebp-4]
 005CD47B    cmp         byte ptr [eax+18],1
>005CD47F    jne         005CD488
 005CD481    mov         dword ptr [ebp-0C],200000
 005CD488    mov         eax,dword ptr [ebp-4]
 005CD48B    cmp         byte ptr [eax+1C],0
>005CD48F    je          005CD4A9
 005CD491    push        0F0
 005CD493    mov         eax,dword ptr [ebp-4]
 005CD496    mov         eax,dword ptr [eax+4]
 005CD499    call        TWinControl.GetHandle
 005CD49E    push        eax
 005CD49F    call        USER32.GetWindowLongA
 005CD4A4    and         eax,dword ptr [ebp-0C]
>005CD4A7    jne         005CD4AD
 005CD4A9    xor         eax,eax
>005CD4AB    jmp         005CD4AF
 005CD4AD    mov         al,1
 005CD4AF    mov         byte ptr [ebp-5],al
 005CD4B2    mov         al,byte ptr [ebp-5]
 005CD4B5    mov         esp,ebp
 005CD4B7    pop         ebp
 005CD4B8    ret
end;*}

//005CD4BC
{*function sub_005CD4BC(?:?; ?:?):?;
begin
 005CD4BC    push        ebp
 005CD4BD    mov         ebp,esp
 005CD4BF    add         esp,0FFFFFFF8
 005CD4C2    mov         word ptr [ebp-2],ax
 005CD4C6    mov         dword ptr [ebp-8],100000
 005CD4CD    cmp         word ptr [ebp-2],1
>005CD4D2    jne         005CD4DB
 005CD4D4    mov         dword ptr [ebp-8],200000
 005CD4DB    push        0F0
 005CD4DD    mov         eax,dword ptr [ebp+8]
 005CD4E0    mov         eax,dword ptr [eax-4]
 005CD4E3    mov         eax,dword ptr [eax+4]
 005CD4E6    call        TWinControl.GetHandle
 005CD4EB    push        eax
 005CD4EC    call        USER32.GetWindowLongA
 005CD4F1    and         eax,dword ptr [ebp-8]
 005CD4F4    setne       byte ptr [ebp-3]
 005CD4F8    mov         al,byte ptr [ebp-3]
 005CD4FB    pop         ecx
 005CD4FC    pop         ecx
 005CD4FD    pop         ebp
 005CD4FE    ret
end;*}

//005CD500
{*function sub_005CD500(?:?; ?:?; ?:?):?;
begin
 005CD500    push        ebp
 005CD501    mov         ebp,esp
 005CD503    add         esp,0FFFFFFF8
 005CD506    mov         word ptr [ebp-4],dx
 005CD50A    mov         word ptr [ebp-2],ax
 005CD50E    xor         eax,eax
 005CD510    mov         dword ptr [ebp-8],eax
 005CD513    mov         eax,dword ptr [ebp+8]
 005CD516    cmp         byte ptr [eax-5],0
>005CD51A    jne         005CD584
 005CD51C    mov         eax,dword ptr [ebp+8]
 005CD51F    cmp         byte ptr [eax-6],0
>005CD523    je          005CD552
 005CD525    mov         eax,dword ptr [ebp+8]
 005CD528    push        eax
 005CD529    mov         ax,word ptr [ebp-2]
 005CD52D    call        005CD4BC
 005CD532    pop         ecx
 005CD533    test        al,al
>005CD535    jne         005CD552
 005CD537    movzx       eax,word ptr [ebp-4]
 005CD53B    push        eax
 005CD53C    mov         eax,[006EA000];^gvar_006ECEF4
 005CD541    mov         eax,dword ptr [eax]
 005CD543    call        eax
 005CD545    mov         edx,dword ptr [ebp+8]
 005CD548    sub         eax,dword ptr [edx-0C]
 005CD54B    neg         eax
 005CD54D    mov         dword ptr [ebp-8],eax
>005CD550    jmp         005CD584
 005CD552    mov         eax,dword ptr [ebp+8]
 005CD555    cmp         byte ptr [eax-6],0
>005CD559    jne         005CD584
 005CD55B    mov         eax,dword ptr [ebp+8]
 005CD55E    push        eax
 005CD55F    mov         ax,word ptr [ebp-2]
 005CD563    call        005CD4BC
 005CD568    pop         ecx
 005CD569    test        al,al
>005CD56B    je          005CD584
 005CD56D    movzx       eax,word ptr [ebp-4]
 005CD571    push        eax
 005CD572    mov         eax,[006EA000];^gvar_006ECEF4
 005CD577    mov         eax,dword ptr [eax]
 005CD579    call        eax
 005CD57B    mov         edx,dword ptr [ebp+8]
 005CD57E    sub         eax,dword ptr [edx-0C]
 005CD581    mov         dword ptr [ebp-8],eax
 005CD584    mov         eax,dword ptr [ebp-8]
 005CD587    pop         ecx
 005CD588    pop         ecx
 005CD589    pop         ebp
 005CD58A    ret
end;*}

//005CD58C
{*function sub_005CD58C(?:?; ?:?; ?:?):?;
begin
 005CD58C    push        ebp
 005CD58D    mov         ebp,esp
 005CD58F    add         esp,0FFFFFFF0
 005CD592    push        ebx
 005CD593    mov         byte ptr [ebp-6],cl
 005CD596    mov         byte ptr [ebp-5],dl
 005CD599    mov         dword ptr [ebp-4],eax
 005CD59C    push        0F0
 005CD59E    mov         eax,dword ptr [ebp-4]
 005CD5A1    mov         eax,dword ptr [eax+4]
 005CD5A4    call        TWinControl.GetHandle
 005CD5A9    push        eax
 005CD5AA    call        USER32.GetWindowLongA
 005CD5AF    test        eax,840000
 005CD5B4    setne       al
 005CD5B7    and         eax,7F
 005CD5BA    mov         dword ptr [ebp-0C],eax
 005CD5BD    mov         eax,dword ptr [ebp-4]
 005CD5C0    cmp         byte ptr [eax+18],1
>005CD5C4    jne         005CD5E7
 005CD5C6    push        ebp
 005CD5C7    mov         dx,15
 005CD5CB    xor         eax,eax
 005CD5CD    call        005CD500
 005CD5D2    pop         ecx
 005CD5D3    mov         ebx,eax
 005CD5D5    mov         eax,dword ptr [ebp-4]
 005CD5D8    mov         eax,dword ptr [eax+4]
 005CD5DB    call        TControl.GetClientHeight
 005CD5E0    add         ebx,eax
 005CD5E2    mov         dword ptr [ebp-10],ebx
>005CD5E5    jmp         005CD608
 005CD5E7    push        ebp
 005CD5E8    mov         dx,14
 005CD5EC    mov         ax,1
 005CD5F0    call        005CD500
 005CD5F5    pop         ecx
 005CD5F6    mov         ebx,eax
 005CD5F8    mov         eax,dword ptr [ebp-4]
 005CD5FB    mov         eax,dword ptr [eax+4]
 005CD5FE    call        TControl.GetClientWidth
 005CD603    add         ebx,eax
 005CD605    mov         dword ptr [ebp-10],ebx
 005CD608    mov         eax,dword ptr [ebp-10]
 005CD60B    pop         ebx
 005CD60C    mov         esp,ebp
 005CD60E    pop         ebp
 005CD60F    ret
end;*}

//005CD610
function TControlScrollBar.NeedsScrollBarVisible:Boolean;
begin
{*
 005CD610    push        ebp
 005CD611    mov         ebp,esp
 005CD613    add         esp,0FFFFFFF8
 005CD616    mov         dword ptr [ebp-4],eax
 005CD619    xor         ecx,ecx
 005CD61B    xor         edx,edx
 005CD61D    mov         eax,dword ptr [ebp-4]
 005CD620    call        005CD58C
 005CD625    mov         edx,dword ptr [ebp-4]
 005CD628    cmp         eax,dword ptr [edx+10]
 005CD62B    setl        byte ptr [ebp-5]
 005CD62F    mov         al,byte ptr [ebp-5]
 005CD632    pop         ecx
 005CD633    pop         ecx
 005CD634    pop         ebp
 005CD635    ret
*}
end;

//005CD638
{*function sub_005CD638(?:?):?;
begin
 005CD638    push        ebp
 005CD639    mov         ebp,esp
 005CD63B    add         esp,0FFFFFFDC
 005CD63E    mov         dword ptr [ebp-24],1C
 005CD645    mov         dword ptr [ebp-20],10
 005CD64C    xor         eax,eax
 005CD64E    mov         dword ptr [ebp-8],eax
 005CD651    mov         eax,dword ptr [ebp+8]
 005CD654    mov         eax,dword ptr [eax-4]
 005CD657    cmp         byte ptr [eax+18],1
>005CD65B    jne         005CD664
 005CD65D    mov         dword ptr [ebp-8],1
 005CD664    mov         eax,dword ptr [ebp+8]
 005CD667    mov         eax,dword ptr [eax-8]
 005CD66A    movsx       eax,word ptr [eax+6]
 005CD66E    mov         dword ptr [ebp-4],eax
 005CD671    lea         eax,[ebp-24]
 005CD674    push        eax
 005CD675    mov         eax,dword ptr [ebp-8]
 005CD678    push        eax
 005CD679    mov         eax,dword ptr [ebp+8]
 005CD67C    mov         eax,dword ptr [eax-4]
 005CD67F    mov         eax,dword ptr [eax+4]
 005CD682    call        TWinControl.GetHandle
 005CD687    push        eax
 005CD688    mov         eax,[006EA014];^gvar_006ECF44:LongBool
 005CD68D    mov         eax,dword ptr [eax]
 005CD68F    call        eax
 005CD691    test        eax,eax
>005CD693    je          005CD69B
 005CD695    mov         eax,dword ptr [ebp-0C]
 005CD698    mov         dword ptr [ebp-4],eax
 005CD69B    mov         eax,dword ptr [ebp-4]
 005CD69E    mov         esp,ebp
 005CD6A0    pop         ebp
 005CD6A1    ret
end;*}

//005CD6A4
{*procedure sub_005CD6A4(?:TControlScrollBar; ?:?);
begin
 005CD6A4    push        ebp
 005CD6A5    mov         ebp,esp
 005CD6A7    add         esp,0FFFFFFE0
 005CD6AA    mov         dword ptr [ebp-8],edx
 005CD6AD    mov         dword ptr [ebp-4],eax
 005CD6B0    mov         eax,dword ptr [ebp-4]
 005CD6B3    cmp         byte ptr [eax+1F],0
>005CD6B7    je          005CD89C
 005CD6BD    mov         eax,dword ptr [ebp-8]
 005CD6C0    mov         ax,word ptr [eax+4]
 005CD6C4    sub         ax,4
>005CD6C8    jae         005CD89C
 005CD6CE    mov         eax,dword ptr [ebp-8]
 005CD6D1    mov         ax,word ptr [eax+4]
 005CD6D5    sub         ax,2
>005CD6D9    jb          005CD6E3
 005CD6DB    sub         ax,2
>005CD6DF    jb          005CD714
>005CD6E1    jmp         005CD74D
 005CD6E3    mov         eax,dword ptr [ebp-4]
 005CD6E6    movzx       eax,word ptr [eax+8]
 005CD6EA    mov         edx,dword ptr [ebp-4]
 005CD6ED    mov         ecx,dword ptr [edx+40]
 005CD6F0    cdq
 005CD6F1    idiv        eax,ecx
 005CD6F3    mov         dword ptr [ebp-0C],eax
 005CD6F6    mov         eax,dword ptr [ebp-4]
 005CD6F9    movzx       eax,word ptr [eax+8]
 005CD6FD    mov         edx,dword ptr [ebp-4]
 005CD700    mov         ecx,dword ptr [edx+40]
 005CD703    cdq
 005CD704    idiv        eax,ecx
 005CD706    mov         dword ptr [ebp-10],edx
 005CD709    mov         eax,dword ptr [ebp-4]
 005CD70C    mov         eax,dword ptr [eax+40]
 005CD70F    mov         dword ptr [ebp-14],eax
>005CD712    jmp         005CD75C
 005CD714    mov         eax,dword ptr [ebp-4]
 005CD717    movzx       eax,word ptr [eax+0A]
 005CD71B    mov         dword ptr [ebp-0C],eax
 005CD71E    mov         eax,dword ptr [ebp-4]
 005CD721    push        dword ptr [eax+3C]
 005CD724    mov         eax,dword ptr [ebp-0C]
 005CD727    pop         edx
 005CD728    mov         ecx,edx
 005CD72A    cdq
 005CD72B    idiv        eax,ecx
 005CD72D    mov         dword ptr [ebp-10],edx
 005CD730    mov         eax,dword ptr [ebp-4]
 005CD733    push        dword ptr [eax+3C]
 005CD736    mov         eax,dword ptr [ebp-0C]
 005CD739    pop         edx
 005CD73A    mov         ecx,edx
 005CD73C    cdq
 005CD73D    idiv        eax,ecx
 005CD73F    mov         dword ptr [ebp-0C],eax
 005CD742    mov         eax,dword ptr [ebp-4]
 005CD745    mov         eax,dword ptr [eax+3C]
 005CD748    mov         dword ptr [ebp-14],eax
>005CD74B    jmp         005CD75C
 005CD74D    xor         eax,eax
 005CD74F    mov         dword ptr [ebp-14],eax
 005CD752    xor         eax,eax
 005CD754    mov         dword ptr [ebp-0C],eax
 005CD757    xor         eax,eax
 005CD759    mov         dword ptr [ebp-10],eax
 005CD75C    xor         eax,eax
 005CD75E    mov         dword ptr [ebp-18],eax
 005CD761    cmp         dword ptr [ebp-14],0
>005CD765    jle         005CD81C
 005CD76B    call        0063CF3C
 005CD770    mov         dword ptr [ebp-1C],eax
 005CD773    mov         eax,dword ptr [ebp-1C]
 005CD776    sub         eax,dword ptr [ebp-18]
 005CD779    mov         dword ptr [ebp-20],eax
 005CD77C    mov         eax,dword ptr [ebp-4]
 005CD77F    mov         eax,dword ptr [eax+20]
 005CD782    cmp         eax,dword ptr [ebp-20]
>005CD785    jle         005CD796
 005CD787    mov         eax,dword ptr [ebp-4]
 005CD78A    mov         eax,dword ptr [eax+20]
 005CD78D    sub         eax,dword ptr [ebp-20]
 005CD790    push        eax
 005CD791    call        KERNEL32.Sleep
 005CD796    mov         eax,dword ptr [ebp-1C]
 005CD799    mov         dword ptr [ebp-18],eax
 005CD79C    mov         eax,dword ptr [ebp-8]
 005CD79F    mov         ax,word ptr [eax+4]
 005CD7A3    sub         ax,1
>005CD7A7    jb          005CD7B7
>005CD7A9    je          005CD7CA
 005CD7AB    dec         ax
>005CD7AE    je          005CD7DD
 005CD7B0    dec         ax
>005CD7B3    je          005CD7F0
>005CD7B5    jmp         005CD801
 005CD7B7    mov         eax,dword ptr [ebp-4]
 005CD7BA    mov         edx,dword ptr [eax+0C]
 005CD7BD    sub         edx,dword ptr [ebp-0C]
 005CD7C0    mov         eax,dword ptr [ebp-4]
 005CD7C3    call        TControlScrollBar.SetPosition
>005CD7C8    jmp         005CD801
 005CD7CA    mov         eax,dword ptr [ebp-4]
 005CD7CD    mov         edx,dword ptr [eax+0C]
 005CD7D0    add         edx,dword ptr [ebp-0C]
 005CD7D3    mov         eax,dword ptr [ebp-4]
 005CD7D6    call        TControlScrollBar.SetPosition
>005CD7DB    jmp         005CD801
 005CD7DD    mov         eax,dword ptr [ebp-4]
 005CD7E0    mov         edx,dword ptr [eax+0C]
 005CD7E3    sub         edx,dword ptr [ebp-0C]
 005CD7E6    mov         eax,dword ptr [ebp-4]
 005CD7E9    call        TControlScrollBar.SetPosition
>005CD7EE    jmp         005CD801
 005CD7F0    mov         eax,dword ptr [ebp-4]
 005CD7F3    mov         edx,dword ptr [eax+0C]
 005CD7F6    add         edx,dword ptr [ebp-0C]
 005CD7F9    mov         eax,dword ptr [ebp-4]
 005CD7FC    call        TControlScrollBar.SetPosition
 005CD801    mov         eax,dword ptr [ebp-4]
 005CD804    mov         eax,dword ptr [eax+4]
 005CD807    mov         edx,dword ptr [eax]
 005CD809    call        dword ptr [edx+88]
 005CD80F    dec         dword ptr [ebp-14]
 005CD812    cmp         dword ptr [ebp-14],0
>005CD816    jg          005CD76B
 005CD81C    cmp         dword ptr [ebp-10],0
>005CD820    jle         005CD9D0
 005CD826    mov         eax,dword ptr [ebp-8]
 005CD829    mov         ax,word ptr [eax+4]
 005CD82D    sub         ax,1
>005CD831    jb          005CD844
>005CD833    je          005CD85A
 005CD835    dec         ax
>005CD838    je          005CD870
 005CD83A    dec         ax
>005CD83D    je          005CD886
>005CD83F    jmp         005CD9D0
 005CD844    mov         eax,dword ptr [ebp-4]
 005CD847    mov         edx,dword ptr [eax+0C]
 005CD84A    sub         edx,dword ptr [ebp-10]
 005CD84D    mov         eax,dword ptr [ebp-4]
 005CD850    call        TControlScrollBar.SetPosition
>005CD855    jmp         005CD9D0
 005CD85A    mov         eax,dword ptr [ebp-4]
 005CD85D    mov         edx,dword ptr [eax+0C]
 005CD860    add         edx,dword ptr [ebp-10]
 005CD863    mov         eax,dword ptr [ebp-4]
 005CD866    call        TControlScrollBar.SetPosition
>005CD86B    jmp         005CD9D0
 005CD870    mov         eax,dword ptr [ebp-4]
 005CD873    mov         edx,dword ptr [eax+0C]
 005CD876    sub         edx,dword ptr [ebp-10]
 005CD879    mov         eax,dword ptr [ebp-4]
 005CD87C    call        TControlScrollBar.SetPosition
>005CD881    jmp         005CD9D0
 005CD886    mov         eax,dword ptr [ebp-4]
 005CD889    mov         edx,dword ptr [eax+0C]
 005CD88C    add         edx,dword ptr [ebp-10]
 005CD88F    mov         eax,dword ptr [ebp-4]
 005CD892    call        TControlScrollBar.SetPosition
>005CD897    jmp         005CD9D0
 005CD89C    mov         eax,dword ptr [ebp-8]
 005CD89F    movsx       eax,word ptr [eax+4]
 005CD8A3    cmp         eax,7
>005CD8A6    ja          005CD9D0
 005CD8AC    jmp         dword ptr [eax*4+5CD8B3]
 005CD8AC    dd          005CD8D3
 005CD8AC    dd          005CD8EF
 005CD8AC    dd          005CD90B
 005CD8AC    dd          005CD92C
 005CD8AC    dd          005CD94D
 005CD8AC    dd          005CD97D
 005CD8AC    dd          005CD9B6
 005CD8AC    dd          005CD9C2
 005CD8D3    mov         eax,dword ptr [ebp-4]
 005CD8D6    mov         edx,dword ptr [eax+0C]
 005CD8D9    mov         eax,dword ptr [ebp-4]
 005CD8DC    movzx       eax,word ptr [eax+8]
 005CD8E0    sub         edx,eax
 005CD8E2    mov         eax,dword ptr [ebp-4]
 005CD8E5    call        TControlScrollBar.SetPosition
>005CD8EA    jmp         005CD9D0
 005CD8EF    mov         eax,dword ptr [ebp-4]
 005CD8F2    mov         edx,dword ptr [eax+0C]
 005CD8F5    mov         eax,dword ptr [ebp-4]
 005CD8F8    movzx       eax,word ptr [eax+8]
 005CD8FC    add         edx,eax
 005CD8FE    mov         eax,dword ptr [ebp-4]
 005CD901    call        TControlScrollBar.SetPosition
>005CD906    jmp         005CD9D0
 005CD90B    xor         ecx,ecx
 005CD90D    mov         dl,1
 005CD90F    mov         eax,dword ptr [ebp-4]
 005CD912    call        005CD58C
 005CD917    mov         edx,dword ptr [ebp-4]
 005CD91A    mov         edx,dword ptr [edx+0C]
 005CD91D    sub         edx,eax
 005CD91F    mov         eax,dword ptr [ebp-4]
 005CD922    call        TControlScrollBar.SetPosition
>005CD927    jmp         005CD9D0
 005CD92C    xor         ecx,ecx
 005CD92E    mov         dl,1
 005CD930    mov         eax,dword ptr [ebp-4]
 005CD933    call        005CD58C
 005CD938    mov         edx,eax
 005CD93A    mov         eax,dword ptr [ebp-4]
 005CD93D    add         edx,dword ptr [eax+0C]
 005CD940    mov         eax,dword ptr [ebp-4]
 005CD943    call        TControlScrollBar.SetPosition
>005CD948    jmp         005CD9D0
 005CD94D    mov         eax,dword ptr [ebp-4]
 005CD950    cmp         dword ptr [eax+14],7FFF
>005CD957    jle         005CD96C
 005CD959    push        ebp
 005CD95A    call        005CD638
 005CD95F    pop         ecx
 005CD960    mov         edx,eax
 005CD962    mov         eax,dword ptr [ebp-4]
 005CD965    call        TControlScrollBar.SetPosition
>005CD96A    jmp         005CD9D0
 005CD96C    mov         edx,dword ptr [ebp-8]
 005CD96F    movsx       edx,word ptr [edx+6]
 005CD973    mov         eax,dword ptr [ebp-4]
 005CD976    call        TControlScrollBar.SetPosition
>005CD97B    jmp         005CD9D0
 005CD97D    mov         eax,dword ptr [ebp-4]
 005CD980    cmp         byte ptr [eax+1D],0
>005CD984    je          005CD9D0
 005CD986    mov         eax,dword ptr [ebp-4]
 005CD989    cmp         dword ptr [eax+14],7FFF
>005CD990    jle         005CD9A5
 005CD992    push        ebp
 005CD993    call        005CD638
 005CD998    pop         ecx
 005CD999    mov         edx,eax
 005CD99B    mov         eax,dword ptr [ebp-4]
 005CD99E    call        TControlScrollBar.SetPosition
>005CD9A3    jmp         005CD9D0
 005CD9A5    mov         edx,dword ptr [ebp-8]
 005CD9A8    movsx       edx,word ptr [edx+6]
 005CD9AC    mov         eax,dword ptr [ebp-4]
 005CD9AF    call        TControlScrollBar.SetPosition
>005CD9B4    jmp         005CD9D0
 005CD9B6    xor         edx,edx
 005CD9B8    mov         eax,dword ptr [ebp-4]
 005CD9BB    call        TControlScrollBar.SetPosition
>005CD9C0    jmp         005CD9D0
 005CD9C2    mov         eax,dword ptr [ebp-4]
 005CD9C5    mov         edx,dword ptr [eax+14]
 005CD9C8    mov         eax,dword ptr [ebp-4]
 005CD9CB    call        TControlScrollBar.SetPosition
 005CD9D0    mov         esp,ebp
 005CD9D2    pop         ebp
 005CD9D3    ret
end;*}

//005CD9D4
procedure TControlScrollBar.SetButtonSize(Value:Integer);
begin
{*
 005CD9D4    push        ebp
 005CD9D5    mov         ebp,esp
 005CD9D7    add         esp,0FFFFFFF4
 005CD9DA    mov         dword ptr [ebp-8],edx
 005CD9DD    mov         dword ptr [ebp-4],eax
 005CD9E0    mov         eax,dword ptr [ebp-8]
 005CD9E3    mov         edx,dword ptr [ebp-4]
 005CD9E6    cmp         eax,dword ptr [edx+24];TControlScrollBar.ButtonSize:Integer
>005CD9E9    je          005CDA3B
 005CD9EB    mov         eax,dword ptr [ebp-8]
 005CD9EE    mov         dword ptr [ebp-0C],eax
 005CD9F1    cmp         dword ptr [ebp-0C],0
>005CD9F5    jne         005CDA12
 005CD9F7    mov         eax,dword ptr [ebp-4]
 005CD9FA    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 005CD9FE    mov         eax,dword ptr [eax*4+6E3FF4]
 005CDA05    push        eax
 005CDA06    mov         eax,[006EA000];^gvar_006ECEF4
 005CDA0B    mov         eax,dword ptr [eax]
 005CDA0D    call        eax
 005CDA0F    mov         dword ptr [ebp-8],eax
 005CDA12    mov         eax,dword ptr [ebp-8]
 005CDA15    mov         edx,dword ptr [ebp-4]
 005CDA18    mov         dword ptr [edx+24],eax;TControlScrollBar.ButtonSize:Integer
 005CDA1B    mov         eax,dword ptr [ebp-4]
 005CDA1E    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 005CDA22    mov         eax,dword ptr [ebp-4]
 005CDA25    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDA28    call        TScrollingWinControl.UpdateScrollBars
 005CDA2D    cmp         dword ptr [ebp-0C],0
>005CDA31    jne         005CDA3B
 005CDA33    mov         eax,dword ptr [ebp-4]
 005CDA36    xor         edx,edx
 005CDA38    mov         dword ptr [eax+24],edx;TControlScrollBar.ButtonSize:Integer
 005CDA3B    mov         esp,ebp
 005CDA3D    pop         ebp
 005CDA3E    ret
*}
end;

//005CDA40
procedure TControlScrollBar.SetColor(Value:TColor);
begin
{*
 005CDA40    push        ebp
 005CDA41    mov         ebp,esp
 005CDA43    add         esp,0FFFFFFF8
 005CDA46    mov         dword ptr [ebp-8],edx
 005CDA49    mov         dword ptr [ebp-4],eax
 005CDA4C    mov         eax,dword ptr [ebp-8]
 005CDA4F    mov         edx,dword ptr [ebp-4]
 005CDA52    cmp         eax,dword ptr [edx+28];TControlScrollBar.Color:TColor
>005CDA55    je          005CDA79
 005CDA57    mov         eax,dword ptr [ebp-8]
 005CDA5A    mov         edx,dword ptr [ebp-4]
 005CDA5D    mov         dword ptr [edx+28],eax;TControlScrollBar.Color:TColor
 005CDA60    mov         eax,dword ptr [ebp-4]
 005CDA63    mov         byte ptr [eax+2C],0;TControlScrollBar.ParentColor:Boolean
 005CDA67    mov         eax,dword ptr [ebp-4]
 005CDA6A    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 005CDA6E    mov         eax,dword ptr [ebp-4]
 005CDA71    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDA74    call        TScrollingWinControl.UpdateScrollBars
 005CDA79    pop         ecx
 005CDA7A    pop         ecx
 005CDA7B    pop         ebp
 005CDA7C    ret
*}
end;

//005CDA80
procedure TControlScrollBar.SetParentColor(Value:Boolean);
begin
{*
 005CDA80    push        ebp
 005CDA81    mov         ebp,esp
 005CDA83    add         esp,0FFFFFFF8
 005CDA86    mov         byte ptr [ebp-5],dl
 005CDA89    mov         dword ptr [ebp-4],eax
 005CDA8C    mov         eax,dword ptr [ebp-4]
 005CDA8F    mov         al,byte ptr [eax+2C];TControlScrollBar.ParentColor:Boolean
 005CDA92    cmp         al,byte ptr [ebp-5]
>005CDA95    je          005CDAB3
 005CDA97    mov         al,byte ptr [ebp-5]
 005CDA9A    mov         edx,dword ptr [ebp-4]
 005CDA9D    mov         byte ptr [edx+2C],al;TControlScrollBar.ParentColor:Boolean
 005CDAA0    cmp         byte ptr [ebp-5],0
>005CDAA4    je          005CDAB3
 005CDAA6    mov         edx,80000014
 005CDAAB    mov         eax,dword ptr [ebp-4]
 005CDAAE    call        TControlScrollBar.SetColor
 005CDAB3    pop         ecx
 005CDAB4    pop         ecx
 005CDAB5    pop         ebp
 005CDAB6    ret
*}
end;

//005CDAB8
procedure TControlScrollBar.SetPosition(Value:Integer);
begin
{*
 005CDAB8    push        ebp
 005CDAB9    mov         ebp,esp
 005CDABB    add         esp,0FFFFFFEC
 005CDABE    mov         dword ptr [ebp-8],edx
 005CDAC1    mov         dword ptr [ebp-4],eax
 005CDAC4    mov         eax,dword ptr [ebp-4]
 005CDAC7    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDACA    test        byte ptr [eax+1C],2;TScrollingWinControl.FComponentState:TComponentState
>005CDACE    je          005CDADE
 005CDAD0    mov         eax,dword ptr [ebp-8]
 005CDAD3    mov         edx,dword ptr [ebp-4]
 005CDAD6    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
>005CDAD9    jmp         005CDBE3
 005CDADE    mov         eax,dword ptr [ebp-8]
 005CDAE1    mov         edx,dword ptr [ebp-4]
 005CDAE4    cmp         eax,dword ptr [edx+14];TControlScrollBar.FCalcRange:Integer
>005CDAE7    jle         005CDAF4
 005CDAE9    mov         eax,dword ptr [ebp-4]
 005CDAEC    mov         eax,dword ptr [eax+14];TControlScrollBar.FCalcRange:Integer
 005CDAEF    mov         dword ptr [ebp-8],eax
>005CDAF2    jmp         005CDAFF
 005CDAF4    cmp         dword ptr [ebp-8],0
>005CDAF8    jge         005CDAFF
 005CDAFA    xor         eax,eax
 005CDAFC    mov         dword ptr [ebp-8],eax
 005CDAFF    mov         eax,dword ptr [ebp-4]
 005CDB02    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>005CDB06    jne         005CDB10
 005CDB08    mov         word ptr [ebp-0A],0
>005CDB0E    jmp         005CDB16
 005CDB10    mov         word ptr [ebp-0A],1
 005CDB16    mov         eax,dword ptr [ebp-8]
 005CDB19    mov         edx,dword ptr [ebp-4]
 005CDB1C    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>005CDB1F    je          005CDB9E
 005CDB21    mov         eax,dword ptr [ebp-4]
 005CDB24    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CDB27    mov         dword ptr [ebp-14],eax
 005CDB2A    mov         eax,dword ptr [ebp-8]
 005CDB2D    mov         edx,dword ptr [ebp-4]
 005CDB30    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
 005CDB33    mov         eax,dword ptr [ebp-4]
 005CDB36    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>005CDB3A    jne         005CDB51
 005CDB3C    mov         edx,dword ptr [ebp-14]
 005CDB3F    sub         edx,dword ptr [ebp-8]
 005CDB42    xor         ecx,ecx
 005CDB44    mov         eax,dword ptr [ebp-4]
 005CDB47    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDB4A    call        005FBADC
>005CDB4F    jmp         005CDB64
 005CDB51    mov         ecx,dword ptr [ebp-14]
 005CDB54    sub         ecx,dword ptr [ebp-8]
 005CDB57    xor         edx,edx
 005CDB59    mov         eax,dword ptr [ebp-4]
 005CDB5C    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDB5F    call        005FBADC
 005CDB64    mov         eax,dword ptr [ebp-4]
 005CDB67    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDB6A    test        byte ptr [eax+1C],10;TScrollingWinControl.FComponentState:TComponentState
>005CDB6E    je          005CDB9E
 005CDB70    mov         eax,dword ptr [ebp-4]
 005CDB73    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDB76    call        005CD060
 005CDB7B    mov         dword ptr [ebp-10],eax
 005CDB7E    cmp         dword ptr [ebp-10],0
>005CDB82    je          005CDB9E
 005CDB84    mov         eax,dword ptr [ebp-10]
 005CDB87    cmp         dword ptr [eax+250],0
>005CDB8E    je          005CDB9E
 005CDB90    mov         eax,dword ptr [ebp-10]
 005CDB93    mov         eax,dword ptr [eax+250]
 005CDB99    mov         edx,dword ptr [eax]
 005CDB9B    call        dword ptr [edx+0C]
 005CDB9E    movzx       eax,word ptr [ebp-0A]
 005CDBA2    push        eax
 005CDBA3    mov         eax,dword ptr [ebp-4]
 005CDBA6    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDBA9    call        TWinControl.GetHandle
 005CDBAE    push        eax
 005CDBAF    mov         eax,[006EA018];^gvar_006ECF48
 005CDBB4    mov         eax,dword ptr [eax]
 005CDBB6    call        eax
 005CDBB8    mov         edx,dword ptr [ebp-4]
 005CDBBB    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>005CDBBE    je          005CDBE3
 005CDBC0    push        0FF
 005CDBC2    mov         eax,dword ptr [ebp-4]
 005CDBC5    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CDBC8    push        eax
 005CDBC9    movzx       eax,word ptr [ebp-0A]
 005CDBCD    push        eax
 005CDBCE    mov         eax,dword ptr [ebp-4]
 005CDBD1    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDBD4    call        TWinControl.GetHandle
 005CDBD9    push        eax
 005CDBDA    mov         eax,[006EA01C];^gvar_006ECF4C:Integer
 005CDBDF    mov         eax,dword ptr [eax]
 005CDBE1    call        eax
 005CDBE3    mov         esp,ebp
 005CDBE5    pop         ebp
 005CDBE6    ret
*}
end;

//005CDBE8
procedure TControlScrollBar.SetSize(Value:Integer);
begin
{*
 005CDBE8    push        ebp
 005CDBE9    mov         ebp,esp
 005CDBEB    add         esp,0FFFFFFF4
 005CDBEE    mov         dword ptr [ebp-8],edx
 005CDBF1    mov         dword ptr [ebp-4],eax
 005CDBF4    mov         eax,dword ptr [ebp-8]
 005CDBF7    mov         edx,dword ptr [ebp-4]
 005CDBFA    cmp         eax,dword ptr [edx+30];TControlScrollBar.Size:Integer
>005CDBFD    je          005CDC4F
 005CDBFF    mov         eax,dword ptr [ebp-8]
 005CDC02    mov         dword ptr [ebp-0C],eax
 005CDC05    cmp         dword ptr [ebp-0C],0
>005CDC09    jne         005CDC26
 005CDC0B    mov         eax,dword ptr [ebp-4]
 005CDC0E    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 005CDC12    mov         eax,dword ptr [eax*4+6E3FFC]
 005CDC19    push        eax
 005CDC1A    mov         eax,[006EA000];^gvar_006ECEF4
 005CDC1F    mov         eax,dword ptr [eax]
 005CDC21    call        eax
 005CDC23    mov         dword ptr [ebp-8],eax
 005CDC26    mov         eax,dword ptr [ebp-8]
 005CDC29    mov         edx,dword ptr [ebp-4]
 005CDC2C    mov         dword ptr [edx+30],eax;TControlScrollBar.Size:Integer
 005CDC2F    mov         eax,dword ptr [ebp-4]
 005CDC32    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 005CDC36    mov         eax,dword ptr [ebp-4]
 005CDC39    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDC3C    call        TScrollingWinControl.UpdateScrollBars
 005CDC41    cmp         dword ptr [ebp-0C],0
>005CDC45    jne         005CDC4F
 005CDC47    mov         eax,dword ptr [ebp-4]
 005CDC4A    xor         edx,edx
 005CDC4C    mov         dword ptr [eax+30],edx;TControlScrollBar.Size:Integer
 005CDC4F    mov         esp,ebp
 005CDC51    pop         ebp
 005CDC52    ret
*}
end;

//005CDC54
procedure TControlScrollBar.SetStyle(Value:TScrollBarStyle);
begin
{*
 005CDC54    push        ebp
 005CDC55    mov         ebp,esp
 005CDC57    add         esp,0FFFFFFF8
 005CDC5A    mov         byte ptr [ebp-5],dl
 005CDC5D    mov         dword ptr [ebp-4],eax
 005CDC60    mov         eax,dword ptr [ebp-4]
 005CDC63    mov         al,byte ptr [eax+34];TControlScrollBar.Style:TScrollBarStyle
 005CDC66    cmp         al,byte ptr [ebp-5]
>005CDC69    je          005CDC86
 005CDC6B    mov         al,byte ptr [ebp-5]
 005CDC6E    mov         edx,dword ptr [ebp-4]
 005CDC71    mov         byte ptr [edx+34],al;TControlScrollBar.Style:TScrollBarStyle
 005CDC74    mov         eax,dword ptr [ebp-4]
 005CDC77    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 005CDC7B    mov         eax,dword ptr [ebp-4]
 005CDC7E    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDC81    call        TScrollingWinControl.UpdateScrollBars
 005CDC86    pop         ecx
 005CDC87    pop         ecx
 005CDC88    pop         ebp
 005CDC89    ret
*}
end;

//005CDC8C
procedure TControlScrollBar.SetThumbSize(Value:Integer);
begin
{*
 005CDC8C    push        ebp
 005CDC8D    mov         ebp,esp
 005CDC8F    add         esp,0FFFFFFF8
 005CDC92    mov         dword ptr [ebp-8],edx
 005CDC95    mov         dword ptr [ebp-4],eax
 005CDC98    mov         eax,dword ptr [ebp-8]
 005CDC9B    mov         edx,dword ptr [ebp-4]
 005CDC9E    cmp         eax,dword ptr [edx+38];TControlScrollBar.ThumbSize:Integer
>005CDCA1    je          005CDCBE
 005CDCA3    mov         eax,dword ptr [ebp-8]
 005CDCA6    mov         edx,dword ptr [ebp-4]
 005CDCA9    mov         dword ptr [edx+38],eax;TControlScrollBar.ThumbSize:Integer
 005CDCAC    mov         eax,dword ptr [ebp-4]
 005CDCAF    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 005CDCB3    mov         eax,dword ptr [ebp-4]
 005CDCB6    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDCB9    call        TScrollingWinControl.UpdateScrollBars
 005CDCBE    pop         ecx
 005CDCBF    pop         ecx
 005CDCC0    pop         ebp
 005CDCC1    ret
*}
end;

//005CDCC4
procedure sub_005CDCC4(?:TControlScrollBar; ?:Integer);
begin
{*
 005CDCC4    push        ebp
 005CDCC5    mov         ebp,esp
 005CDCC7    add         esp,0FFFFFFF8
 005CDCCA    mov         dword ptr [ebp-8],edx
 005CDCCD    mov         dword ptr [ebp-4],eax
 005CDCD0    mov         eax,dword ptr [ebp-8]
 005CDCD3    mov         edx,dword ptr [ebp-4]
 005CDCD6    mov         dword ptr [edx+10],eax
 005CDCD9    mov         eax,dword ptr [ebp-4]
 005CDCDC    cmp         dword ptr [eax+10],0
>005CDCE0    jge         005CDCEA
 005CDCE2    mov         eax,dword ptr [ebp-4]
 005CDCE5    xor         edx,edx
 005CDCE7    mov         dword ptr [eax+10],edx
 005CDCEA    mov         eax,dword ptr [ebp-4]
 005CDCED    mov         eax,dword ptr [eax+4]
 005CDCF0    call        TScrollingWinControl.UpdateScrollBars
 005CDCF5    pop         ecx
 005CDCF6    pop         ecx
 005CDCF7    pop         ebp
 005CDCF8    ret
*}
end;

//005CDCFC
procedure TControlScrollBar.SetRange(Value:Integer);
begin
{*
 005CDCFC    push        ebp
 005CDCFD    mov         ebp,esp
 005CDCFF    add         esp,0FFFFFFF8
 005CDD02    mov         dword ptr [ebp-8],edx
 005CDD05    mov         dword ptr [ebp-4],eax
 005CDD08    mov         eax,dword ptr [ebp-4]
 005CDD0B    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDD0E    mov         byte ptr [eax+210],0;TScrollingWinControl.FAutoScroll:Boolean
 005CDD15    mov         eax,dword ptr [ebp-4]
 005CDD18    mov         byte ptr [eax+1E],1;TControlScrollBar.FScaled:Boolean
 005CDD1C    mov         edx,dword ptr [ebp-8]
 005CDD1F    mov         eax,dword ptr [ebp-4]
 005CDD22    call        005CDCC4
 005CDD27    pop         ecx
 005CDD28    pop         ecx
 005CDD29    pop         ebp
 005CDD2A    ret
*}
end;

//005CDD2C
function TControlScrollBar.IsStoredRange(Value:Integer):Boolean;
begin
{*
 005CDD2C    push        ebp
 005CDD2D    mov         ebp,esp
 005CDD2F    add         esp,0FFFFFFF8
 005CDD32    mov         dword ptr [ebp-4],eax
 005CDD35    mov         eax,dword ptr [ebp-4]
 005CDD38    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDD3B    mov         al,byte ptr [eax+210];TScrollingWinControl.FAutoScroll:Boolean
 005CDD41    xor         al,1
 005CDD43    mov         byte ptr [ebp-5],al
 005CDD46    mov         al,byte ptr [ebp-5]
 005CDD49    pop         ecx
 005CDD4A    pop         ecx
 005CDD4B    pop         ebp
 005CDD4C    ret
*}
end;

//005CDD50
procedure TControlScrollBar.SetVisible(Value:Boolean);
begin
{*
 005CDD50    push        ebp
 005CDD51    mov         ebp,esp
 005CDD53    add         esp,0FFFFFFF8
 005CDD56    mov         byte ptr [ebp-5],dl
 005CDD59    mov         dword ptr [ebp-4],eax
 005CDD5C    mov         al,byte ptr [ebp-5]
 005CDD5F    mov         edx,dword ptr [ebp-4]
 005CDD62    mov         byte ptr [edx+1C],al;TControlScrollBar.Visible:Boolean
 005CDD65    mov         eax,dword ptr [ebp-4]
 005CDD68    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005CDD6B    call        TScrollingWinControl.UpdateScrollBars
 005CDD70    pop         ecx
 005CDD71    pop         ecx
 005CDD72    pop         ebp
 005CDD73    ret
*}
end;

//005CDD74
{*procedure sub_005CDD74(?:?; ?:?);
begin
 005CDD74    push        ebp
 005CDD75    mov         ebp,esp
 005CDD77    push        ecx
 005CDD78    mov         byte ptr [ebp-1],al
 005CDD7B    cmp         byte ptr [ebp-1],1
 005CDD7F    cmc
 005CDD80    sbb         eax,eax
 005CDD82    push        eax
 005CDD83    mov         eax,dword ptr [ebp+8]
 005CDD86    mov         eax,dword ptr [eax-4]
 005CDD89    movzx       eax,byte ptr [eax+34]
 005CDD8D    mov         eax,dword ptr [eax*4+6E402C]
 005CDD94    push        eax
 005CDD95    mov         eax,dword ptr [ebp+8]
 005CDD98    mov         eax,dword ptr [eax-4]
 005CDD9B    movzx       eax,byte ptr [eax+18]
 005CDD9F    lea         eax,[eax+eax*4]
 005CDDA2    mov         eax,dword ptr [eax*4+6E4004]
 005CDDA9    push        eax
 005CDDAA    mov         eax,dword ptr [ebp+8]
 005CDDAD    mov         eax,dword ptr [eax-4]
 005CDDB0    mov         eax,dword ptr [eax+4]
 005CDDB3    call        TWinControl.GetHandle
 005CDDB8    push        eax
 005CDDB9    call        0063DDB8
 005CDDBE    mov         eax,dword ptr [ebp+8]
 005CDDC1    mov         eax,dword ptr [eax-4]
 005CDDC4    cmp         dword ptr [eax+24],0
>005CDDC8    jle         005CDDFF
 005CDDCA    push        0
 005CDDCC    mov         eax,dword ptr [ebp+8]
 005CDDCF    mov         eax,dword ptr [eax-4]
 005CDDD2    mov         eax,dword ptr [eax+24]
 005CDDD5    push        eax
 005CDDD6    mov         eax,dword ptr [ebp+8]
 005CDDD9    mov         eax,dword ptr [eax-4]
 005CDDDC    movzx       eax,byte ptr [eax+18]
 005CDDE0    lea         eax,[eax+eax*4]
 005CDDE3    mov         eax,dword ptr [eax*4+6E4008]
 005CDDEA    push        eax
 005CDDEB    mov         eax,dword ptr [ebp+8]
 005CDDEE    mov         eax,dword ptr [eax-4]
 005CDDF1    mov         eax,dword ptr [eax+4]
 005CDDF4    call        TWinControl.GetHandle
 005CDDF9    push        eax
 005CDDFA    call        0063DDB8
 005CDDFF    mov         eax,dword ptr [ebp+8]
 005CDE02    mov         eax,dword ptr [eax-4]
 005CDE05    cmp         dword ptr [eax+38],0
>005CDE09    jle         005CDE40
 005CDE0B    push        0
 005CDE0D    mov         eax,dword ptr [ebp+8]
 005CDE10    mov         eax,dword ptr [eax-4]
 005CDE13    mov         eax,dword ptr [eax+38]
 005CDE16    push        eax
 005CDE17    mov         eax,dword ptr [ebp+8]
 005CDE1A    mov         eax,dword ptr [eax-4]
 005CDE1D    movzx       eax,byte ptr [eax+18]
 005CDE21    lea         eax,[eax+eax*4]
 005CDE24    mov         eax,dword ptr [eax*4+6E400C]
 005CDE2B    push        eax
 005CDE2C    mov         eax,dword ptr [ebp+8]
 005CDE2F    mov         eax,dword ptr [eax-4]
 005CDE32    mov         eax,dword ptr [eax+4]
 005CDE35    call        TWinControl.GetHandle
 005CDE3A    push        eax
 005CDE3B    call        0063DDB8
 005CDE40    mov         eax,dword ptr [ebp+8]
 005CDE43    mov         eax,dword ptr [eax-4]
 005CDE46    cmp         dword ptr [eax+30],0
>005CDE4A    jle         005CDE81
 005CDE4C    push        0
 005CDE4E    mov         eax,dword ptr [ebp+8]
 005CDE51    mov         eax,dword ptr [eax-4]
 005CDE54    mov         eax,dword ptr [eax+30]
 005CDE57    push        eax
 005CDE58    mov         eax,dword ptr [ebp+8]
 005CDE5B    mov         eax,dword ptr [eax-4]
 005CDE5E    movzx       eax,byte ptr [eax+18]
 005CDE62    lea         eax,[eax+eax*4]
 005CDE65    mov         eax,dword ptr [eax*4+6E4010]
 005CDE6C    push        eax
 005CDE6D    mov         eax,dword ptr [ebp+8]
 005CDE70    mov         eax,dword ptr [eax-4]
 005CDE73    mov         eax,dword ptr [eax+4]
 005CDE76    call        TWinControl.GetHandle
 005CDE7B    push        eax
 005CDE7C    call        0063DDB8
 005CDE81    push        0
 005CDE83    mov         eax,dword ptr [ebp+8]
 005CDE86    mov         eax,dword ptr [eax-4]
 005CDE89    mov         eax,dword ptr [eax+28]
 005CDE8C    call        ColorToRGB
 005CDE91    push        eax
 005CDE92    mov         eax,dword ptr [ebp+8]
 005CDE95    mov         eax,dword ptr [eax-4]
 005CDE98    movzx       eax,byte ptr [eax+18]
 005CDE9C    lea         eax,[eax+eax*4]
 005CDE9F    mov         eax,dword ptr [eax*4+6E4014]
 005CDEA6    push        eax
 005CDEA7    mov         eax,dword ptr [ebp+8]
 005CDEAA    mov         eax,dword ptr [eax-4]
 005CDEAD    mov         eax,dword ptr [eax+4]
 005CDEB0    call        TWinControl.GetHandle
 005CDEB5    push        eax
 005CDEB6    call        0063DDB8
 005CDEBB    pop         ecx
 005CDEBC    pop         ebp
 005CDEBD    ret
end;*}

//005CDEC0
procedure TControlScrollBar.Update(ControlSB:Boolean; AssumeSB:Boolean);
begin
{*
 005CDEC0    push        ebp
 005CDEC1    mov         ebp,esp
 005CDEC3    add         esp,0FFFFFFDC
 005CDEC6    mov         byte ptr [ebp-6],cl
 005CDEC9    mov         byte ptr [ebp-5],dl
 005CDECC    mov         dword ptr [ebp-4],eax
 005CDECF    mov         eax,dword ptr [ebp-4]
 005CDED2    xor         edx,edx
 005CDED4    mov         dword ptr [eax+14],edx
 005CDED7    mov         word ptr [ebp-8],0
 005CDEDD    mov         eax,dword ptr [ebp-4]
 005CDEE0    cmp         byte ptr [eax+18],1
>005CDEE4    jne         005CDEEC
 005CDEE6    mov         word ptr [ebp-8],1
 005CDEEC    mov         eax,dword ptr [ebp-4]
 005CDEEF    cmp         byte ptr [eax+1C],0
>005CDEF3    je          005CDF22
 005CDEF5    mov         cl,byte ptr [ebp-6]
 005CDEF8    mov         dl,byte ptr [ebp-5]
 005CDEFB    mov         eax,dword ptr [ebp-4]
 005CDEFE    call        005CD58C
 005CDF03    mov         edx,dword ptr [ebp-4]
 005CDF06    mov         edx,dword ptr [edx+10]
 005CDF09    sub         edx,eax
 005CDF0B    mov         eax,dword ptr [ebp-4]
 005CDF0E    mov         dword ptr [eax+14],edx
 005CDF11    mov         eax,dword ptr [ebp-4]
 005CDF14    cmp         dword ptr [eax+14],0
>005CDF18    jge         005CDF22
 005CDF1A    mov         eax,dword ptr [ebp-4]
 005CDF1D    xor         edx,edx
 005CDF1F    mov         dword ptr [eax+14],edx
 005CDF22    mov         dword ptr [ebp-24],1C
 005CDF29    mov         dword ptr [ebp-20],17
 005CDF30    xor         eax,eax
 005CDF32    mov         dword ptr [ebp-1C],eax
 005CDF35    mov         eax,dword ptr [ebp-4]
 005CDF38    cmp         dword ptr [eax+14],0
>005CDF3C    jle         005CDF49
 005CDF3E    mov         eax,dword ptr [ebp-4]
 005CDF41    mov         eax,dword ptr [eax+10]
 005CDF44    mov         dword ptr [ebp-18],eax
>005CDF47    jmp         005CDF4E
 005CDF49    xor         eax,eax
 005CDF4B    mov         dword ptr [ebp-18],eax
 005CDF4E    mov         cl,byte ptr [ebp-6]
 005CDF51    mov         dl,byte ptr [ebp-5]
 005CDF54    mov         eax,dword ptr [ebp-4]
 005CDF57    call        005CD58C
 005CDF5C    inc         eax
 005CDF5D    mov         dword ptr [ebp-14],eax
 005CDF60    mov         eax,dword ptr [ebp-4]
 005CDF63    mov         eax,dword ptr [eax+0C]
 005CDF66    mov         dword ptr [ebp-10],eax
 005CDF69    mov         eax,dword ptr [ebp-4]
 005CDF6C    mov         eax,dword ptr [eax+0C]
 005CDF6F    mov         dword ptr [ebp-0C],eax
 005CDF72    push        ebp
 005CDF73    mov         eax,dword ptr [ebp-4]
 005CDF76    mov         al,byte ptr [eax+44]
 005CDF79    call        005CDD74
 005CDF7E    pop         ecx
 005CDF7F    mov         eax,dword ptr [ebp-4]
 005CDF82    mov         byte ptr [eax+44],0
 005CDF86    push        0FF
 005CDF88    lea         eax,[ebp-24]
 005CDF8B    push        eax
 005CDF8C    movzx       eax,word ptr [ebp-8]
 005CDF90    push        eax
 005CDF91    mov         eax,dword ptr [ebp-4]
 005CDF94    mov         eax,dword ptr [eax+4]
 005CDF97    call        TWinControl.GetHandle
 005CDF9C    push        eax
 005CDF9D    mov         eax,[006EA020];^gvar_006ECF50
 005CDFA2    mov         eax,dword ptr [eax]
 005CDFA4    call        eax
 005CDFA6    mov         eax,dword ptr [ebp-4]
 005CDFA9    mov         edx,dword ptr [eax+0C]
 005CDFAC    mov         eax,dword ptr [ebp-4]
 005CDFAF    call        TControlScrollBar.SetPosition
 005CDFB4    xor         ecx,ecx
 005CDFB6    mov         dl,1
 005CDFB8    mov         eax,dword ptr [ebp-4]
 005CDFBB    call        005CD58C
 005CDFC0    lea         eax,[eax+eax*8]
 005CDFC3    mov         ecx,0A
 005CDFC8    cdq
 005CDFC9    idiv        eax,ecx
 005CDFCB    mov         edx,dword ptr [ebp-4]
 005CDFCE    mov         word ptr [edx+0A],ax
 005CDFD2    mov         eax,dword ptr [ebp-4]
 005CDFD5    cmp         byte ptr [eax+1F],0
>005CDFD9    je          005CDFF2
 005CDFDB    mov         eax,dword ptr [ebp-4]
 005CDFDE    movzx       eax,word ptr [eax+0A]
 005CDFE2    mov         ecx,0A
 005CDFE7    xor         edx,edx
 005CDFE9    div         eax,ecx
 005CDFEB    mov         edx,dword ptr [ebp-4]
 005CDFEE    mov         word ptr [edx+8],ax
 005CDFF2    mov         esp,ebp
 005CDFF4    pop         ebp
 005CDFF5    ret
*}
end;

//005CDFF8
constructor TScrollingWinControl.Create(AOwner:TComponent);
begin
{*
 005CDFF8    push        ebp
 005CDFF9    mov         ebp,esp
 005CDFFB    add         esp,0FFFFFFF4
 005CDFFE    test        dl,dl
>005CE000    je          005CE00A
 005CE002    add         esp,0FFFFFFF0
 005CE005    call        @ClassCreate
 005CE00A    mov         dword ptr [ebp-0C],ecx
 005CE00D    mov         byte ptr [ebp-5],dl
 005CE010    mov         dword ptr [ebp-4],eax
 005CE013    mov         ecx,dword ptr [ebp-0C]
 005CE016    xor         edx,edx
 005CE018    mov         eax,dword ptr [ebp-4]
 005CE01B    call        TWinControl.Create
 005CE020    push        0
 005CE022    mov         ecx,dword ptr [ebp-4]
 005CE025    mov         dl,1
 005CE027    mov         eax,[005CA820];TControlScrollBar
 005CE02C    call        TControlScrollBar.Create;TControlScrollBar.Create
 005CE031    mov         edx,dword ptr [ebp-4]
 005CE034    mov         dword ptr [edx+208],eax;TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE03A    push        1
 005CE03C    mov         ecx,dword ptr [ebp-4]
 005CE03F    mov         dl,1
 005CE041    mov         eax,[005CA820];TControlScrollBar
 005CE046    call        TControlScrollBar.Create;TControlScrollBar.Create
 005CE04B    mov         edx,dword ptr [ebp-4]
 005CE04E    mov         dword ptr [edx+20C],eax;TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE054    mov         eax,dword ptr [ebp-4]
 005CE057    mov         byte ptr [eax+210],1;TScrollingWinControl.FAutoScroll:Boolean
 005CE05E    mov         eax,dword ptr [ebp-4]
 005CE061    cmp         byte ptr [ebp-5],0
>005CE065    je          005CE076
 005CE067    call        @AfterConstruction
 005CE06C    pop         dword ptr fs:[0]
 005CE073    add         esp,0C
 005CE076    mov         eax,dword ptr [ebp-4]
 005CE079    mov         esp,ebp
 005CE07B    pop         ebp
 005CE07C    ret
*}
end;

//005CE080
destructor TScrollingWinControl.Destroy;
begin
{*
 005CE080    push        ebp
 005CE081    mov         ebp,esp
 005CE083    add         esp,0FFFFFFF8
 005CE086    call        @BeforeDestruction
 005CE08B    mov         byte ptr [ebp-5],dl
 005CE08E    mov         dword ptr [ebp-4],eax
 005CE091    mov         eax,dword ptr [ebp-4]
 005CE094    mov         eax,dword ptr [eax+208]
 005CE09A    call        TObject.Free
 005CE09F    mov         eax,dword ptr [ebp-4]
 005CE0A2    mov         eax,dword ptr [eax+20C]
 005CE0A8    call        TObject.Free
 005CE0AD    mov         dl,byte ptr [ebp-5]
 005CE0B0    and         dl,0FC
 005CE0B3    mov         eax,dword ptr [ebp-4]
 005CE0B6    call        TWinControl.Destroy
 005CE0BB    cmp         byte ptr [ebp-5],0
>005CE0BF    jle         005CE0C9
 005CE0C1    mov         eax,dword ptr [ebp-4]
 005CE0C4    call        @ClassDestroy
 005CE0C9    pop         ecx
 005CE0CA    pop         ecx
 005CE0CB    pop         ebp
 005CE0CC    ret
*}
end;

//005CE0D0
{*procedure sub_005CE0D0(?:?);
begin
 005CE0D0    push        ebp
 005CE0D1    mov         ebp,esp
 005CE0D3    add         esp,0FFFFFFF8
 005CE0D6    mov         dword ptr [ebp-8],edx
 005CE0D9    mov         dword ptr [ebp-4],eax
 005CE0DC    mov         edx,dword ptr [ebp-8]
 005CE0DF    mov         eax,dword ptr [ebp-4]
 005CE0E2    call        005F7FC0
 005CE0E7    mov         eax,dword ptr [ebp-8]
 005CE0EA    and         dword ptr [eax+24],0FFFFFFFC
 005CE0EE    pop         ecx
 005CE0EF    pop         ecx
 005CE0F0    pop         ebp
 005CE0F1    ret
end;*}

//005CE0F4
procedure TScrollingWinControl.CreateWnd;
begin
{*
 005CE0F4    push        ebp
 005CE0F5    mov         ebp,esp
 005CE0F7    push        ecx
 005CE0F8    mov         dword ptr [ebp-4],eax
 005CE0FB    mov         eax,dword ptr [ebp-4]
 005CE0FE    call        TWinControl.CreateWnd
 005CE103    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005CE108    cmp         byte ptr [eax+0D],0
>005CE10C    jne         005CE12F
 005CE10E    mov         edx,1
 005CE113    mov         eax,5
 005CE118    call        0065CEA0
 005CE11D    test        al,al
>005CE11F    jne         005CE12F
 005CE121    mov         eax,dword ptr [ebp-4]
 005CE124    call        TWinControl.GetHandle
 005CE129    push        eax
 005CE12A    call        0063DDF4
 005CE12F    mov         eax,dword ptr [ebp-4]
 005CE132    call        TScrollingWinControl.UpdateScrollBars
 005CE137    pop         ecx
 005CE138    pop         ebp
 005CE139    ret
*}
end;

//005CE13C
procedure TScrollingWinControl.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 005CE13C    push        ebp
 005CE13D    mov         ebp,esp
 005CE13F    add         esp,0FFFFFFF4
 005CE142    mov         dword ptr [ebp-0C],ecx
 005CE145    mov         dword ptr [ebp-8],edx
 005CE148    mov         dword ptr [ebp-4],eax
 005CE14B    mov         eax,dword ptr [ebp-4]
 005CE14E    call        005CE2E0
 005CE153    mov         ecx,dword ptr [ebp-0C]
 005CE156    mov         edx,dword ptr [ebp-8]
 005CE159    mov         eax,dword ptr [ebp-4]
 005CE15C    call        TWinControl.AlignControls
 005CE161    mov         esp,ebp
 005CE163    pop         ebp
 005CE164    ret
*}
end;

//005CE168
{*function sub_005CE168:?;
begin
 005CE168    push        ebp
 005CE169    mov         ebp,esp
 005CE16B    add         esp,0FFFFFFF8
 005CE16E    mov         dword ptr [ebp-4],eax
 005CE171    mov         eax,dword ptr [ebp-4]
 005CE174    cmp         byte ptr [eax+5C],0;TScrollingWinControl.FAutoSize:Boolean
>005CE178    jne         005CE192
 005CE17A    mov         eax,dword ptr [ebp-4]
 005CE17D    cmp         byte ptr [eax+1A8],0;TScrollingWinControl.FDockSite:Boolean
>005CE184    je          005CE196
 005CE186    mov         eax,dword ptr [ebp-4]
 005CE189    cmp         byte ptr [eax+1A7],0;TScrollingWinControl.FUseDockManager:Boolean
>005CE190    je          005CE196
 005CE192    xor         eax,eax
>005CE194    jmp         005CE198
 005CE196    mov         al,1
 005CE198    mov         byte ptr [ebp-5],al
 005CE19B    mov         al,byte ptr [ebp-5]
 005CE19E    pop         ecx
 005CE19F    pop         ecx
 005CE1A0    pop         ebp
 005CE1A1    ret
end;*}

//005CE1A4
procedure TScrollingWinControl.sub_005CE1A4;
begin
{*
 005CE1A4    push        ebp
 005CE1A5    mov         ebp,esp
 005CE1A7    add         esp,0FFFFFFE0
 005CE1AA    mov         dword ptr [ebp-4],eax
 005CE1AD    mov         dl,1
 005CE1AF    mov         eax,[006422A4];TList
 005CE1B4    call        TObject.Create;TList.Create
 005CE1B9    mov         dword ptr [ebp-14],eax
 005CE1BC    xor         eax,eax
 005CE1BE    push        ebp
 005CE1BF    push        5CE2D5
 005CE1C4    push        dword ptr fs:[eax]
 005CE1C7    mov         dword ptr fs:[eax],esp
 005CE1CA    mov         eax,dword ptr [ebp-4]
 005CE1CD    call        TControl.GetClientWidth
 005CE1D2    mov         dword ptr [ebp-0C],eax
 005CE1D5    mov         eax,dword ptr [ebp-4]
 005CE1D8    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE1DE    mov         dword ptr [ebp-18],eax
 005CE1E1    mov         eax,dword ptr [ebp-18]
 005CE1E4    call        005CD468
 005CE1E9    test        al,al
>005CE1EB    je          005CE1F8
 005CE1ED    mov         eax,dword ptr [ebp-18]
 005CE1F0    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 005CE1F3    cmp         eax,dword ptr [ebp-0C]
>005CE1F6    jg          005CE1FC
 005CE1F8    xor         eax,eax
>005CE1FA    jmp         005CE1FE
 005CE1FC    mov         al,1
 005CE1FE    mov         byte ptr [ebp-0D],al
 005CE201    cmp         byte ptr [ebp-0D],0
>005CE205    je          005CE21A
 005CE207    mov         eax,dword ptr [ebp-18]
 005CE20A    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 005CE20D    mov         dword ptr [ebp-0C],eax
 005CE210    xor         edx,edx
 005CE212    mov         eax,dword ptr [ebp-18]
 005CE215    call        TControlScrollBar.SetPosition
 005CE21A    mov         eax,dword ptr [ebp-4]
 005CE21D    call        005F7DC4
 005CE222    dec         eax
 005CE223    test        eax,eax
>005CE225    jl          005CE274
 005CE227    inc         eax
 005CE228    mov         dword ptr [ebp-1C],eax
 005CE22B    mov         dword ptr [ebp-8],0
 005CE232    mov         edx,dword ptr [ebp-8]
 005CE235    mov         eax,dword ptr [ebp-4]
 005CE238    call        005F7D58
 005CE23D    mov         dword ptr [ebp-20],eax
 005CE240    mov         edx,dword ptr [ebp-8]
 005CE243    mov         eax,dword ptr [ebp-4]
 005CE246    call        005F7D58
 005CE24B    mov         edx,eax
 005CE24D    mov         eax,dword ptr [ebp-14]
 005CE250    call        TList.Add
 005CE255    mov         eax,dword ptr [ebp-20]
 005CE258    mov         edx,dword ptr [ebp-0C]
 005CE25B    sub         edx,dword ptr [eax+48]
 005CE25E    mov         eax,dword ptr [ebp-20]
 005CE261    sub         edx,dword ptr [eax+40]
 005CE264    mov         eax,dword ptr [ebp-20]
 005CE267    call        TControl.SetLeft
 005CE26C    inc         dword ptr [ebp-8]
 005CE26F    dec         dword ptr [ebp-1C]
>005CE272    jne         005CE232
 005CE274    mov         eax,dword ptr [ebp-14]
 005CE277    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005CE27A    dec         eax
 005CE27B    test        eax,eax
>005CE27D    jl          005CE2AB
 005CE27F    inc         eax
 005CE280    mov         dword ptr [ebp-1C],eax
 005CE283    mov         dword ptr [ebp-8],0
 005CE28A    push        0
 005CE28C    mov         edx,dword ptr [ebp-8]
 005CE28F    mov         eax,dword ptr [ebp-14]
 005CE292    call        TList.Get
 005CE297    xor         ecx,ecx
 005CE299    mov         edx,0B03E
 005CE29E    call        005F4FA8
 005CE2A3    inc         dword ptr [ebp-8]
 005CE2A6    dec         dword ptr [ebp-1C]
>005CE2A9    jne         005CE28A
 005CE2AB    cmp         byte ptr [ebp-0D],0
>005CE2AF    je          005CE2BF
 005CE2B1    mov         eax,dword ptr [ebp-4]
 005CE2B4    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE2BA    call        TControlScrollBar.ChangeBiDiPosition
 005CE2BF    xor         eax,eax
 005CE2C1    pop         edx
 005CE2C2    pop         ecx
 005CE2C3    pop         ecx
 005CE2C4    mov         dword ptr fs:[eax],edx
 005CE2C7    push        5CE2DC
 005CE2CC    mov         eax,dword ptr [ebp-14]
 005CE2CF    call        TObject.Free
 005CE2D4    ret
>005CE2D5    jmp         @HandleFinally
>005CE2DA    jmp         005CE2CC
 005CE2DC    mov         esp,ebp
 005CE2DE    pop         ebp
 005CE2DF    ret
*}
end;

//005CE2E0
procedure sub_005CE2E0(?:TScrollingWinControl);
begin
{*
 005CE2E0    push        ebp
 005CE2E1    mov         ebp,esp
 005CE2E3    push        ecx
 005CE2E4    mov         dword ptr [ebp-4],eax
 005CE2E7    mov         eax,dword ptr [ebp-4]
 005CE2EA    cmp         dword ptr [eax+214],0;TScrollingWinControl.FAutoRangeCount:Integer
>005CE2F1    jg          005CE30F
 005CE2F3    mov         eax,dword ptr [ebp-4]
 005CE2F6    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE2FC    call        005CD3B0
 005CE301    mov         eax,dword ptr [ebp-4]
 005CE304    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE30A    call        005CD3B0
 005CE30F    pop         ecx
 005CE310    pop         ebp
 005CE311    ret
*}
end;

//005CE314
procedure TForm.SetAutoScroll(Value:Boolean);
begin
{*
 005CE314    push        ebp
 005CE315    mov         ebp,esp
 005CE317    add         esp,0FFFFFFF8
 005CE31A    mov         byte ptr [ebp-5],dl
 005CE31D    mov         dword ptr [ebp-4],eax
 005CE320    mov         eax,dword ptr [ebp-4]
 005CE323    mov         al,byte ptr [eax+210];TForm.FAutoScroll:Boolean
 005CE329    cmp         al,byte ptr [ebp-5]
>005CE32C    je          005CE36A
 005CE32E    mov         al,byte ptr [ebp-5]
 005CE331    mov         edx,dword ptr [ebp-4]
 005CE334    mov         byte ptr [edx+210],al;TForm.FAutoScroll:Boolean
 005CE33A    cmp         byte ptr [ebp-5],0
>005CE33E    je          005CE34A
 005CE340    mov         eax,dword ptr [ebp-4]
 005CE343    call        005CE2E0
>005CE348    jmp         005CE36A
 005CE34A    xor         edx,edx
 005CE34C    mov         eax,dword ptr [ebp-4]
 005CE34F    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 005CE355    call        TControlScrollBar.SetRange
 005CE35A    xor         edx,edx
 005CE35C    mov         eax,dword ptr [ebp-4]
 005CE35F    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 005CE365    call        TControlScrollBar.SetRange
 005CE36A    pop         ecx
 005CE36B    pop         ecx
 005CE36C    pop         ebp
 005CE36D    ret
*}
end;

//005CE370
procedure TForm.SetHorzScrollBar(Value:TControlScrollBar);
begin
{*
 005CE370    push        ebp
 005CE371    mov         ebp,esp
 005CE373    add         esp,0FFFFFFF8
 005CE376    mov         dword ptr [ebp-8],edx
 005CE379    mov         dword ptr [ebp-4],eax
 005CE37C    mov         edx,dword ptr [ebp-8]
 005CE37F    mov         eax,dword ptr [ebp-4]
 005CE382    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 005CE388    mov         ecx,dword ptr [eax]
 005CE38A    call        dword ptr [ecx+8];TControlScrollBar.Assign
 005CE38D    pop         ecx
 005CE38E    pop         ecx
 005CE38F    pop         ebp
 005CE390    ret
*}
end;

//005CE394
procedure TForm.SetVertScrollBar(Value:TControlScrollBar);
begin
{*
 005CE394    push        ebp
 005CE395    mov         ebp,esp
 005CE397    add         esp,0FFFFFFF8
 005CE39A    mov         dword ptr [ebp-8],edx
 005CE39D    mov         dword ptr [ebp-4],eax
 005CE3A0    mov         edx,dword ptr [ebp-8]
 005CE3A3    mov         eax,dword ptr [ebp-4]
 005CE3A6    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 005CE3AC    mov         ecx,dword ptr [eax]
 005CE3AE    call        dword ptr [ecx+8];TControlScrollBar.Assign
 005CE3B1    pop         ecx
 005CE3B2    pop         ecx
 005CE3B3    pop         ebp
 005CE3B4    ret
*}
end;

//005CE3B8
procedure TScrollingWinControl.UpdateScrollBars;
begin
{*
 005CE3B8    push        ebp
 005CE3B9    mov         ebp,esp
 005CE3BB    push        ecx
 005CE3BC    mov         dword ptr [ebp-4],eax
 005CE3BF    mov         eax,dword ptr [ebp-4]
 005CE3C2    cmp         byte ptr [eax+218],0
>005CE3C9    jne         005CE4AA
 005CE3CF    mov         eax,dword ptr [ebp-4]
 005CE3D2    call        TWinControl.HandleAllocated
 005CE3D7    test        al,al
>005CE3D9    je          005CE4AA
 005CE3DF    xor         eax,eax
 005CE3E1    push        ebp
 005CE3E2    push        5CE4A3
 005CE3E7    push        dword ptr fs:[eax]
 005CE3EA    mov         dword ptr fs:[eax],esp
 005CE3ED    mov         eax,dword ptr [ebp-4]
 005CE3F0    mov         byte ptr [eax+218],1
 005CE3F7    mov         eax,dword ptr [ebp-4]
 005CE3FA    mov         eax,dword ptr [eax+20C]
 005CE400    call        TControlScrollBar.NeedsScrollBarVisible
 005CE405    test        al,al
>005CE407    je          005CE42F
 005CE409    mov         eax,dword ptr [ebp-4]
 005CE40C    mov         eax,dword ptr [eax+208]
 005CE412    mov         cl,1
 005CE414    xor         edx,edx
 005CE416    call        TControlScrollBar.Update
 005CE41B    mov         eax,dword ptr [ebp-4]
 005CE41E    mov         eax,dword ptr [eax+20C]
 005CE424    xor         ecx,ecx
 005CE426    mov         dl,1
 005CE428    call        TControlScrollBar.Update
>005CE42D    jmp         005CE48B
 005CE42F    mov         eax,dword ptr [ebp-4]
 005CE432    mov         eax,dword ptr [eax+208]
 005CE438    call        TControlScrollBar.NeedsScrollBarVisible
 005CE43D    test        al,al
>005CE43F    je          005CE467
 005CE441    mov         eax,dword ptr [ebp-4]
 005CE444    mov         eax,dword ptr [eax+20C]
 005CE44A    mov         cl,1
 005CE44C    xor         edx,edx
 005CE44E    call        TControlScrollBar.Update
 005CE453    mov         eax,dword ptr [ebp-4]
 005CE456    mov         eax,dword ptr [eax+208]
 005CE45C    xor         ecx,ecx
 005CE45E    mov         dl,1
 005CE460    call        TControlScrollBar.Update
>005CE465    jmp         005CE48B
 005CE467    mov         eax,dword ptr [ebp-4]
 005CE46A    mov         eax,dword ptr [eax+20C]
 005CE470    xor         ecx,ecx
 005CE472    xor         edx,edx
 005CE474    call        TControlScrollBar.Update
 005CE479    mov         eax,dword ptr [ebp-4]
 005CE47C    mov         eax,dword ptr [eax+208]
 005CE482    xor         ecx,ecx
 005CE484    mov         dl,1
 005CE486    call        TControlScrollBar.Update
 005CE48B    xor         eax,eax
 005CE48D    pop         edx
 005CE48E    pop         ecx
 005CE48F    pop         ecx
 005CE490    mov         dword ptr fs:[eax],edx
 005CE493    push        5CE4AA
 005CE498    mov         eax,dword ptr [ebp-4]
 005CE49B    mov         byte ptr [eax+218],0
 005CE4A2    ret
>005CE4A3    jmp         @HandleFinally
>005CE4A8    jmp         005CE498
 005CE4AA    pop         ecx
 005CE4AB    pop         ebp
 005CE4AC    ret
*}
end;

//005CE4B0
{*procedure sub_005CE4B0(?:?);
begin
 005CE4B0    push        ebp
 005CE4B1    mov         ebp,esp
 005CE4B3    add         esp,0FFFFFFF8
 005CE4B6    mov         dword ptr [ebp-8],edx
 005CE4B9    mov         dword ptr [ebp-4],eax
 005CE4BC    cmp         dword ptr [ebp-8],0
>005CE4C0    je          005CE4DF
 005CE4C2    mov         eax,dword ptr [ebp-8]
 005CE4C5    test        byte ptr [eax+1C],1
>005CE4C9    jne         005CE4DF
 005CE4CB    mov         eax,dword ptr [ebp-4]
 005CE4CE    test        byte ptr [eax+1C],1;TScrollingWinControl.FComponentState:TComponentState
>005CE4D2    jne         005CE4DF
 005CE4D4    mov         edx,dword ptr [ebp-8]
 005CE4D7    mov         eax,dword ptr [ebp-4]
 005CE4DA    call        005CE4E4
 005CE4DF    pop         ecx
 005CE4E0    pop         ecx
 005CE4E1    pop         ebp
 005CE4E2    ret
end;*}

//005CE4E4
{*procedure sub_005CE4E4(?:TScrollingWinControl; ?:?);
begin
 005CE4E4    push        ebp
 005CE4E5    mov         ebp,esp
 005CE4E7    add         esp,0FFFFFFC8
 005CE4EA    mov         dword ptr [ebp-8],edx
 005CE4ED    mov         dword ptr [ebp-4],eax
 005CE4F0    cmp         dword ptr [ebp-8],0
>005CE4F4    je          005CE687
 005CE4FA    lea         edx,[ebp-28]
 005CE4FD    mov         eax,dword ptr [ebp-8]
 005CE500    mov         ecx,dword ptr [eax]
 005CE502    call        dword ptr [ecx+44]
 005CE505    mov         eax,dword ptr [ebp-4]
 005CE508    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE50E    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 005CE512    sub         dword ptr [ebp-28],eax
 005CE515    mov         eax,dword ptr [ebp-4]
 005CE518    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE51E    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 005CE522    add         dword ptr [ebp-20],eax
 005CE525    mov         eax,dword ptr [ebp-4]
 005CE528    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE52E    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 005CE532    sub         dword ptr [ebp-24],eax
 005CE535    mov         eax,dword ptr [ebp-4]
 005CE538    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE53E    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 005CE542    add         dword ptr [ebp-1C],eax
 005CE545    lea         ecx,[ebp-38]
 005CE548    lea         edx,[ebp-28]
 005CE54B    mov         eax,dword ptr [ebp-8]
 005CE54E    call        005F3020
 005CE553    lea         edx,[ebp-38]
 005CE556    lea         ecx,[ebp-30]
 005CE559    mov         eax,dword ptr [ebp-4]
 005CE55C    call        005F305C
 005CE561    mov         eax,dword ptr [ebp-30]
 005CE564    mov         dword ptr [ebp-28],eax
 005CE567    mov         eax,dword ptr [ebp-2C]
 005CE56A    mov         dword ptr [ebp-24],eax
 005CE56D    lea         ecx,[ebp-38]
 005CE570    lea         edx,[ebp-20]
 005CE573    mov         eax,dword ptr [ebp-8]
 005CE576    call        005F3020
 005CE57B    lea         edx,[ebp-38]
 005CE57E    lea         ecx,[ebp-30]
 005CE581    mov         eax,dword ptr [ebp-4]
 005CE584    call        005F305C
 005CE589    mov         eax,dword ptr [ebp-30]
 005CE58C    mov         dword ptr [ebp-20],eax
 005CE58F    mov         eax,dword ptr [ebp-2C]
 005CE592    mov         dword ptr [ebp-1C],eax
 005CE595    cmp         dword ptr [ebp-28],0
>005CE599    jge         005CE5BA
 005CE59B    mov         eax,dword ptr [ebp-4]
 005CE59E    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE5A4    mov         dword ptr [ebp-0C],eax
 005CE5A7    mov         eax,dword ptr [ebp-0C]
 005CE5AA    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CE5AD    add         edx,dword ptr [ebp-28]
 005CE5B0    mov         eax,dword ptr [ebp-0C]
 005CE5B3    call        TControlScrollBar.SetPosition
>005CE5B8    jmp         005CE60E
 005CE5BA    mov         eax,dword ptr [ebp-4]
 005CE5BD    call        TControl.GetClientWidth
 005CE5C2    cmp         eax,dword ptr [ebp-20]
>005CE5C5    jge         005CE60E
 005CE5C7    mov         eax,dword ptr [ebp-4]
 005CE5CA    call        TControl.GetClientWidth
 005CE5CF    mov         edx,dword ptr [ebp-20]
 005CE5D2    sub         edx,dword ptr [ebp-28]
 005CE5D5    cmp         eax,edx
>005CE5D7    jge         005CE5E7
 005CE5D9    mov         eax,dword ptr [ebp-4]
 005CE5DC    call        TControl.GetClientWidth
 005CE5E1    add         eax,dword ptr [ebp-28]
 005CE5E4    mov         dword ptr [ebp-20],eax
 005CE5E7    mov         eax,dword ptr [ebp-4]
 005CE5EA    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE5F0    mov         dword ptr [ebp-10],eax
 005CE5F3    mov         eax,dword ptr [ebp-4]
 005CE5F6    call        TControl.GetClientWidth
 005CE5FB    mov         edx,dword ptr [ebp-10]
 005CE5FE    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 005CE601    add         edx,dword ptr [ebp-20]
 005CE604    sub         edx,eax
 005CE606    mov         eax,dword ptr [ebp-10]
 005CE609    call        TControlScrollBar.SetPosition
 005CE60E    cmp         dword ptr [ebp-24],0
>005CE612    jge         005CE633
 005CE614    mov         eax,dword ptr [ebp-4]
 005CE617    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE61D    mov         dword ptr [ebp-14],eax
 005CE620    mov         eax,dword ptr [ebp-14]
 005CE623    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CE626    add         edx,dword ptr [ebp-24]
 005CE629    mov         eax,dword ptr [ebp-14]
 005CE62C    call        TControlScrollBar.SetPosition
>005CE631    jmp         005CE687
 005CE633    mov         eax,dword ptr [ebp-4]
 005CE636    call        TControl.GetClientHeight
 005CE63B    cmp         eax,dword ptr [ebp-1C]
>005CE63E    jge         005CE687
 005CE640    mov         eax,dword ptr [ebp-4]
 005CE643    call        TControl.GetClientHeight
 005CE648    mov         edx,dword ptr [ebp-1C]
 005CE64B    sub         edx,dword ptr [ebp-24]
 005CE64E    cmp         eax,edx
>005CE650    jge         005CE660
 005CE652    mov         eax,dword ptr [ebp-4]
 005CE655    call        TControl.GetClientHeight
 005CE65A    add         eax,dword ptr [ebp-24]
 005CE65D    mov         dword ptr [ebp-1C],eax
 005CE660    mov         eax,dword ptr [ebp-4]
 005CE663    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE669    mov         dword ptr [ebp-18],eax
 005CE66C    mov         eax,dword ptr [ebp-4]
 005CE66F    call        TControl.GetClientHeight
 005CE674    mov         edx,dword ptr [ebp-18]
 005CE677    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 005CE67A    add         edx,dword ptr [ebp-1C]
 005CE67D    sub         edx,eax
 005CE67F    mov         eax,dword ptr [ebp-18]
 005CE682    call        TControlScrollBar.SetPosition
 005CE687    mov         esp,ebp
 005CE689    pop         ebp
 005CE68A    ret
end;*}

//005CE68C
{*procedure sub_005CE68C(?:TScrollingWinControl; ?:?; ?:Integer);
begin
 005CE68C    push        ebp
 005CE68D    mov         ebp,esp
 005CE68F    add         esp,0FFFFFFEC
 005CE692    mov         dword ptr [ebp-0C],ecx
 005CE695    mov         dword ptr [ebp-8],edx
 005CE698    mov         dword ptr [ebp-4],eax
 005CE69B    mov         eax,dword ptr [ebp-8]
 005CE69E    cmp         eax,dword ptr [ebp-0C]
>005CE6A1    je          005CE75C
 005CE6A7    mov         eax,dword ptr [ebp-4]
 005CE6AA    test        byte ptr [eax+1C],1
>005CE6AE    jne         005CE6CA
 005CE6B0    mov         eax,dword ptr [ebp-4]
 005CE6B3    mov         eax,dword ptr [eax+208]
 005CE6B9    mov         byte ptr [eax+1E],1
 005CE6BD    mov         eax,dword ptr [ebp-4]
 005CE6C0    mov         eax,dword ptr [eax+20C]
 005CE6C6    mov         byte ptr [eax+1E],1
 005CE6CA    xor         edx,edx
 005CE6CC    mov         eax,dword ptr [ebp-4]
 005CE6CF    mov         eax,dword ptr [eax+208]
 005CE6D5    call        TControlScrollBar.SetPosition
 005CE6DA    xor         edx,edx
 005CE6DC    mov         eax,dword ptr [ebp-4]
 005CE6DF    mov         eax,dword ptr [eax+20C]
 005CE6E5    call        TControlScrollBar.SetPosition
 005CE6EA    mov         eax,dword ptr [ebp-4]
 005CE6ED    cmp         byte ptr [eax+210],0
>005CE6F4    jne         005CE75C
 005CE6F6    mov         eax,dword ptr [ebp-4]
 005CE6F9    mov         eax,dword ptr [eax+208]
 005CE6FF    mov         dword ptr [ebp-10],eax
 005CE702    mov         eax,dword ptr [ebp-10]
 005CE705    cmp         byte ptr [eax+1E],0
>005CE709    je          005CE729
 005CE70B    mov         eax,dword ptr [ebp-0C]
 005CE70E    push        eax
 005CE70F    mov         eax,dword ptr [ebp-8]
 005CE712    push        eax
 005CE713    mov         eax,dword ptr [ebp-10]
 005CE716    mov         eax,dword ptr [eax+10]
 005CE719    push        eax
 005CE71A    call        KERNEL32.MulDiv
 005CE71F    mov         edx,eax
 005CE721    mov         eax,dword ptr [ebp-10]
 005CE724    call        TControlScrollBar.SetRange
 005CE729    mov         eax,dword ptr [ebp-4]
 005CE72C    mov         eax,dword ptr [eax+20C]
 005CE732    mov         dword ptr [ebp-14],eax
 005CE735    mov         eax,dword ptr [ebp-14]
 005CE738    cmp         byte ptr [eax+1E],0
>005CE73C    je          005CE75C
 005CE73E    mov         eax,dword ptr [ebp-0C]
 005CE741    push        eax
 005CE742    mov         eax,dword ptr [ebp-8]
 005CE745    push        eax
 005CE746    mov         eax,dword ptr [ebp-14]
 005CE749    mov         eax,dword ptr [eax+10]
 005CE74C    push        eax
 005CE74D    call        KERNEL32.MulDiv
 005CE752    mov         edx,eax
 005CE754    mov         eax,dword ptr [ebp-14]
 005CE757    call        TControlScrollBar.SetRange
 005CE75C    mov         eax,dword ptr [ebp-4]
 005CE75F    mov         eax,dword ptr [eax+208]
 005CE765    mov         byte ptr [eax+1E],0
 005CE769    mov         eax,dword ptr [ebp-4]
 005CE76C    mov         eax,dword ptr [eax+20C]
 005CE772    mov         byte ptr [eax+1E],0
 005CE776    mov         esp,ebp
 005CE778    pop         ebp
 005CE779    ret
end;*}

//005CE77C
{*procedure TScrollingWinControl.sub_005CE77C(?:?; ?:?);
begin
 005CE77C    push        ebp
 005CE77D    mov         ebp,esp
 005CE77F    add         esp,0FFFFFFF4
 005CE782    mov         dword ptr [ebp-0C],ecx
 005CE785    mov         dword ptr [ebp-8],edx
 005CE788    mov         dword ptr [ebp-4],eax
 005CE78B    mov         ecx,dword ptr [ebp-0C]
 005CE78E    mov         edx,dword ptr [ebp-8]
 005CE791    mov         eax,dword ptr [ebp-4]
 005CE794    call        005CE68C
 005CE799    mov         ecx,dword ptr [ebp-0C]
 005CE79C    mov         edx,dword ptr [ebp-8]
 005CE79F    mov         eax,dword ptr [ebp-4]
 005CE7A2    call        TWinControl.sub_005F3178
 005CE7A7    mov         esp,ebp
 005CE7A9    pop         ebp
 005CE7AA    ret
end;*}

//005CE7AC
{*procedure sub_005CE7AC(?:?);
begin
 005CE7AC    push        ebp
 005CE7AD    mov         ebp,esp
 005CE7AF    add         esp,0FFFFFFF8
 005CE7B2    mov         byte ptr [ebp-5],dl
 005CE7B5    mov         dword ptr [ebp-4],eax
 005CE7B8    pop         ecx
 005CE7B9    pop         ecx
 005CE7BA    pop         ebp
 005CE7BB    ret
end;*}

//005CE7BC
{*procedure TScrollingWinControl.WMSize(?:?);
begin
 005CE7BC    push        ebp
 005CE7BD    mov         ebp,esp
 005CE7BF    add         esp,0FFFFFFF4
 005CE7C2    mov         dword ptr [ebp-8],edx
 005CE7C5    mov         dword ptr [ebp-4],eax
 005CE7C8    mov         eax,dword ptr [ebp-4]
 005CE7CB    inc         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 005CE7D1    xor         eax,eax
 005CE7D3    push        ebp
 005CE7D4    push        5CE835
 005CE7D9    push        dword ptr fs:[eax]
 005CE7DC    mov         dword ptr fs:[eax],esp
 005CE7DF    mov         edx,dword ptr [ebp-8]
 005CE7E2    mov         eax,dword ptr [ebp-4]
 005CE7E5    call        TWinControl.WMSize
 005CE7EA    mov         byte ptr [ebp-9],0
 005CE7EE    mov         eax,dword ptr [ebp-8]
 005CE7F1    mov         eax,dword ptr [eax+4]
 005CE7F4    sub         eax,1
>005CE7F7    jb          005CE800
>005CE7F9    je          005CE806
 005CE7FB    dec         eax
>005CE7FC    je          005CE80C
>005CE7FE    jmp         005CE810
 005CE800    mov         byte ptr [ebp-9],0
>005CE804    jmp         005CE810
 005CE806    mov         byte ptr [ebp-9],1
>005CE80A    jmp         005CE810
 005CE80C    mov         byte ptr [ebp-9],2
 005CE810    mov         dl,byte ptr [ebp-9]
 005CE813    mov         eax,dword ptr [ebp-4]
 005CE816    mov         ecx,dword ptr [eax]
 005CE818    call        dword ptr [ecx+0CC];TScrollingWinControl.sub_005CE7AC
 005CE81E    xor         eax,eax
 005CE820    pop         edx
 005CE821    pop         ecx
 005CE822    pop         ecx
 005CE823    mov         dword ptr fs:[eax],edx
 005CE826    push        5CE83C
 005CE82B    mov         eax,dword ptr [ebp-4]
 005CE82E    dec         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 005CE834    ret
>005CE835    jmp         @HandleFinally
>005CE83A    jmp         005CE82B
 005CE83C    mov         eax,dword ptr [ebp-4]
 005CE83F    mov         byte ptr [eax+218],1;TScrollingWinControl.FUpdatingScrollBars:Boolean
 005CE846    xor         eax,eax
 005CE848    push        ebp
 005CE849    push        5CE874
 005CE84E    push        dword ptr fs:[eax]
 005CE851    mov         dword ptr fs:[eax],esp
 005CE854    mov         eax,dword ptr [ebp-4]
 005CE857    call        005CE2E0
 005CE85C    xor         eax,eax
 005CE85E    pop         edx
 005CE85F    pop         ecx
 005CE860    pop         ecx
 005CE861    mov         dword ptr fs:[eax],edx
 005CE864    push        5CE87B
 005CE869    mov         eax,dword ptr [ebp-4]
 005CE86C    mov         byte ptr [eax+218],0;TScrollingWinControl.FUpdatingScrollBars:Boolean
 005CE873    ret
>005CE874    jmp         @HandleFinally
>005CE879    jmp         005CE869
 005CE87B    mov         eax,dword ptr [ebp-4]
 005CE87E    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE884    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>005CE888    jne         005CE899
 005CE88A    mov         eax,dword ptr [ebp-4]
 005CE88D    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE893    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>005CE897    je          005CE8A1
 005CE899    mov         eax,dword ptr [ebp-4]
 005CE89C    call        TScrollingWinControl.UpdateScrollBars
 005CE8A1    mov         esp,ebp
 005CE8A3    pop         ebp
 005CE8A4    ret
end;*}

//005CE8A8
{*procedure TScrollingWinControl.WMHScroll(?:?);
begin
 005CE8A8    push        ebp
 005CE8A9    mov         ebp,esp
 005CE8AB    add         esp,0FFFFFFF8
 005CE8AE    mov         dword ptr [ebp-8],edx
 005CE8B1    mov         dword ptr [ebp-4],eax
 005CE8B4    mov         eax,dword ptr [ebp-8]
 005CE8B7    cmp         dword ptr [eax+8],0
>005CE8BB    jne         005CE8DF
 005CE8BD    mov         eax,dword ptr [ebp-4]
 005CE8C0    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE8C6    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>005CE8CA    je          005CE8DF
 005CE8CC    mov         edx,dword ptr [ebp-8]
 005CE8CF    mov         eax,dword ptr [ebp-4]
 005CE8D2    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE8D8    call        005CD6A4
>005CE8DD    jmp         005CE8EA
 005CE8DF    mov         edx,dword ptr [ebp-8]
 005CE8E2    mov         eax,dword ptr [ebp-4]
 005CE8E5    call        TWinControl.WMHScroll
 005CE8EA    pop         ecx
 005CE8EB    pop         ecx
 005CE8EC    pop         ebp
 005CE8ED    ret
end;*}

//005CE8F0
{*procedure TScrollingWinControl.WMVScroll(?:?);
begin
 005CE8F0    push        ebp
 005CE8F1    mov         ebp,esp
 005CE8F3    add         esp,0FFFFFFF8
 005CE8F6    mov         dword ptr [ebp-8],edx
 005CE8F9    mov         dword ptr [ebp-4],eax
 005CE8FC    mov         eax,dword ptr [ebp-8]
 005CE8FF    cmp         dword ptr [eax+8],0
>005CE903    jne         005CE927
 005CE905    mov         eax,dword ptr [ebp-4]
 005CE908    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE90E    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>005CE912    je          005CE927
 005CE914    mov         edx,dword ptr [ebp-8]
 005CE917    mov         eax,dword ptr [ebp-4]
 005CE91A    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE920    call        005CD6A4
>005CE925    jmp         005CE932
 005CE927    mov         edx,dword ptr [ebp-8]
 005CE92A    mov         eax,dword ptr [ebp-4]
 005CE92D    call        TWinControl.WMVScroll
 005CE932    pop         ecx
 005CE933    pop         ecx
 005CE934    pop         ebp
 005CE935    ret
end;*}

//005CE938
{*procedure sub_005CE938(?:?);
begin
 005CE938    push        ebp
 005CE939    mov         ebp,esp
 005CE93B    add         esp,0FFFFFFE8
 005CE93E    push        esi
 005CE93F    push        edi
 005CE940    mov         dword ptr [ebp-8],edx
 005CE943    mov         dword ptr [ebp-4],eax
 005CE946    mov         eax,dword ptr [ebp-4]
 005CE949    call        TControl.GetClientHeight
 005CE94E    mov         edx,dword ptr [ebp-4]
 005CE951    mov         edx,dword ptr [edx+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE957    mov         edx,dword ptr [edx+10];TControlScrollBar.Range:Integer
 005CE95A    call        00653AC8
 005CE95F    push        eax
 005CE960    lea         eax,[ebp-18]
 005CE963    push        eax
 005CE964    mov         eax,dword ptr [ebp-4]
 005CE967    call        TControl.GetClientWidth
 005CE96C    mov         edx,eax
 005CE96E    mov         eax,dword ptr [ebp-4]
 005CE971    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE977    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 005CE97A    call        00653AC8
 005CE97F    mov         ecx,eax
 005CE981    mov         eax,dword ptr [ebp-4]
 005CE984    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 005CE98A    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CE98D    neg         edx
 005CE98F    mov         eax,dword ptr [ebp-4]
 005CE992    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 005CE998    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 005CE99B    neg         eax
 005CE99D    call        Bounds
 005CE9A2    mov         eax,dword ptr [ebp-8]
 005CE9A5    lea         esi,[ebp-18]
 005CE9A8    mov         edi,eax
 005CE9AA    movs        dword ptr [edi],dword ptr [esi]
 005CE9AB    movs        dword ptr [edi],dword ptr [esi]
 005CE9AC    movs        dword ptr [edi],dword ptr [esi]
 005CE9AD    movs        dword ptr [edi],dword ptr [esi]
 005CE9AE    mov         edx,dword ptr [ebp-8]
 005CE9B1    mov         eax,dword ptr [ebp-4]
 005CE9B4    call        005F6F3C
 005CE9B9    pop         edi
 005CE9BA    pop         esi
 005CE9BB    mov         esp,ebp
 005CE9BD    pop         ebp
 005CE9BE    ret
end;*}

//005CE9C0
procedure TScrollingWinControl.CMBiDiModeChanged(var Message:TMessage);
begin
{*
 005CE9C0    push        ebp
 005CE9C1    mov         ebp,esp
 005CE9C3    add         esp,0FFFFFFF4
 005CE9C6    mov         dword ptr [ebp-8],edx
 005CE9C9    mov         dword ptr [ebp-4],eax
 005CE9CC    mov         eax,dword ptr [ebp-8]
 005CE9CF    mov         eax,dword ptr [eax+4]
 005CE9D2    mov         dword ptr [ebp-0C],eax
 005CE9D5    xor         eax,eax
 005CE9D7    push        ebp
 005CE9D8    push        5CEA21
 005CE9DD    push        dword ptr fs:[eax]
 005CE9E0    mov         dword ptr fs:[eax],esp
 005CE9E3    mov         eax,dword ptr [ebp-4]
 005CE9E6    mov         edx,dword ptr ds:[5CACB8];TScrollBox
 005CE9EC    call        @IsClass
 005CE9F1    test        al,al
>005CE9F3    jne         005CE9FF
 005CE9F5    mov         eax,dword ptr [ebp-8]
 005CE9F8    mov         dword ptr [eax+4],1
 005CE9FF    mov         edx,dword ptr [ebp-8]
 005CEA02    mov         eax,dword ptr [ebp-4]
 005CEA05    call        TWinControl.CMBiDiModeChanged
 005CEA0A    xor         eax,eax
 005CEA0C    pop         edx
 005CEA0D    pop         ecx
 005CEA0E    pop         ecx
 005CEA0F    mov         dword ptr fs:[eax],edx
 005CEA12    push        5CEA28
 005CEA17    mov         eax,dword ptr [ebp-8]
 005CEA1A    mov         edx,dword ptr [ebp-0C]
 005CEA1D    mov         dword ptr [eax+4],edx
 005CEA20    ret
>005CEA21    jmp         @HandleFinally
>005CEA26    jmp         005CEA17
 005CEA28    mov         eax,dword ptr [ebp-4]
 005CEA2B    call        TWinControl.HandleAllocated
 005CEA30    test        al,al
>005CEA32    je          005CEA4A
 005CEA34    mov         eax,dword ptr [ebp-4]
 005CEA37    mov         eax,dword ptr [eax+208]
 005CEA3D    call        TControlScrollBar.ChangeBiDiPosition
 005CEA42    mov         eax,dword ptr [ebp-4]
 005CEA45    call        TScrollingWinControl.UpdateScrollBars
 005CEA4A    mov         esp,ebp
 005CEA4C    pop         ebp
 005CEA4D    ret
*}
end;

//005CEA50
constructor TScrollBox.Create(AOwner:TComponent);
begin
{*
 005CEA50    push        ebp
 005CEA51    mov         ebp,esp
 005CEA53    add         esp,0FFFFFFF4
 005CEA56    test        dl,dl
>005CEA58    je          005CEA62
 005CEA5A    add         esp,0FFFFFFF0
 005CEA5D    call        @ClassCreate
 005CEA62    mov         dword ptr [ebp-0C],ecx
 005CEA65    mov         byte ptr [ebp-5],dl
 005CEA68    mov         dword ptr [ebp-4],eax
 005CEA6B    mov         ecx,dword ptr [ebp-0C]
 005CEA6E    xor         edx,edx
 005CEA70    mov         eax,dword ptr [ebp-4]
 005CEA73    call        TScrollingWinControl.Create
 005CEA78    mov         eax,dword ptr [ebp-4]
 005CEA7B    mov         edx,dword ptr ds:[5CEAC8];0xAB gvar_005CEAC8
 005CEA81    mov         dword ptr [eax+50],edx;TScrollBox.FControlStyle:TControlStyle
 005CEA84    mov         edx,0B9
 005CEA89    mov         eax,dword ptr [ebp-4]
 005CEA8C    call        TControl.SetWidth
 005CEA91    mov         edx,29
 005CEA96    mov         eax,dword ptr [ebp-4]
 005CEA99    call        TControl.SetHeight
 005CEA9E    mov         eax,dword ptr [ebp-4]
 005CEAA1    mov         byte ptr [eax+220],1;TScrollBox.BorderStyle:TBorderStyle
 005CEAA8    mov         eax,dword ptr [ebp-4]
 005CEAAB    cmp         byte ptr [ebp-5],0
>005CEAAF    je          005CEAC0
 005CEAB1    call        @AfterConstruction
 005CEAB6    pop         dword ptr fs:[0]
 005CEABD    add         esp,0C
 005CEAC0    mov         eax,dword ptr [ebp-4]
 005CEAC3    mov         esp,ebp
 005CEAC5    pop         ebp
 005CEAC6    ret
*}
end;

//005CEACC
{*procedure sub_005CEACC(?:?);
begin
 005CEACC    push        ebp
 005CEACD    mov         ebp,esp
 005CEACF    add         esp,0FFFFFFF8
 005CEAD2    mov         dword ptr [ebp-8],edx
 005CEAD5    mov         dword ptr [ebp-4],eax
 005CEAD8    mov         edx,dword ptr [ebp-8]
 005CEADB    mov         eax,dword ptr [ebp-4]
 005CEADE    call        005CE0D0
 005CEAE3    mov         eax,dword ptr [ebp-4]
 005CEAE6    movzx       eax,byte ptr [eax+220];TScrollBox.BorderStyle:TBorderStyle
 005CEAED    mov         eax,dword ptr [eax*4+6E4038]
 005CEAF4    mov         edx,dword ptr [ebp-8]
 005CEAF7    or          dword ptr [edx+4],eax
 005CEAFA    mov         eax,[006E9DD8];^gvar_006ECDE0
 005CEAFF    cmp         byte ptr [eax],0
>005CEB02    je          005CEB30
 005CEB04    mov         eax,dword ptr [ebp-4]
 005CEB07    cmp         byte ptr [eax+1A5],0;TScrollBox.FCtl3D:Boolean
>005CEB0E    je          005CEB30
 005CEB10    mov         eax,dword ptr [ebp-4]
 005CEB13    cmp         byte ptr [eax+220],1;TScrollBox.BorderStyle:TBorderStyle
>005CEB1A    jne         005CEB30
 005CEB1C    mov         eax,dword ptr [ebp-8]
 005CEB1F    and         dword ptr [eax+4],0FF7FFFFF
 005CEB26    mov         eax,dword ptr [ebp-8]
 005CEB29    or          dword ptr [eax+8],200
 005CEB30    pop         ecx
 005CEB31    pop         ecx
 005CEB32    pop         ebp
 005CEB33    ret
end;*}

//005CEB34
procedure TScrollBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 005CEB34    push        ebp
 005CEB35    mov         ebp,esp
 005CEB37    add         esp,0FFFFFFF8
 005CEB3A    mov         byte ptr [ebp-5],dl
 005CEB3D    mov         dword ptr [ebp-4],eax
 005CEB40    mov         al,byte ptr [ebp-5]
 005CEB43    mov         edx,dword ptr [ebp-4]
 005CEB46    cmp         al,byte ptr [edx+220];TScrollBox.BorderStyle:TBorderStyle
>005CEB4C    je          005CEB62
 005CEB4E    mov         al,byte ptr [ebp-5]
 005CEB51    mov         edx,dword ptr [ebp-4]
 005CEB54    mov         byte ptr [edx+220],al;TScrollBox.BorderStyle:TBorderStyle
 005CEB5A    mov         eax,dword ptr [ebp-4]
 005CEB5D    call        TWinControl.RecreateWnd
 005CEB62    pop         ecx
 005CEB63    pop         ecx
 005CEB64    pop         ebp
 005CEB65    ret
*}
end;

//005CEB68
{*procedure TScrollBox.WMNCHitTest(?:?);
begin
 005CEB68    push        ebp
 005CEB69    mov         ebp,esp
 005CEB6B    add         esp,0FFFFFFF8
 005CEB6E    mov         dword ptr [ebp-8],edx
 005CEB71    mov         dword ptr [ebp-4],eax
 005CEB74    mov         edx,dword ptr [ebp-8]
 005CEB77    mov         eax,dword ptr [ebp-4]
 005CEB7A    mov         ecx,dword ptr [eax]
 005CEB7C    call        dword ptr [ecx-10];TScrollBox.DefaultHandler
 005CEB7F    pop         ecx
 005CEB80    pop         ecx
 005CEB81    pop         ebp
 005CEB82    ret
end;*}

//005CEB84
{*procedure TScrollBox.CMCtl3DChanged(?:?);
begin
 005CEB84    push        ebp
 005CEB85    mov         ebp,esp
 005CEB87    add         esp,0FFFFFFF8
 005CEB8A    mov         dword ptr [ebp-8],edx
 005CEB8D    mov         dword ptr [ebp-4],eax
 005CEB90    mov         eax,[006E9DD8];^gvar_006ECDE0
 005CEB95    cmp         byte ptr [eax],0
>005CEB98    je          005CEBAE
 005CEB9A    mov         eax,dword ptr [ebp-4]
 005CEB9D    cmp         byte ptr [eax+220],1;TScrollBox.BorderStyle:TBorderStyle
>005CEBA4    jne         005CEBAE
 005CEBA6    mov         eax,dword ptr [ebp-4]
 005CEBA9    call        TWinControl.RecreateWnd
 005CEBAE    mov         edx,dword ptr [ebp-8]
 005CEBB1    mov         eax,dword ptr [ebp-4]
 005CEBB4    call        TWinControl.CMCtl3DChanged
 005CEBB9    pop         ecx
 005CEBBA    pop         ecx
 005CEBBB    pop         ebp
 005CEBBC    ret
end;*}

//005CEBC0
constructor TCustomFrame.Create(AOwner:TComponent);
begin
{*
 005CEBC0    push        ebp
 005CEBC1    mov         ebp,esp
 005CEBC3    add         esp,0FFFFFEE8
 005CEBC9    push        ebx
 005CEBCA    xor         ebx,ebx
 005CEBCC    mov         dword ptr [ebp-118],ebx
 005CEBD2    test        dl,dl
>005CEBD4    je          005CEBDE
 005CEBD6    add         esp,0FFFFFFF0
 005CEBD9    call        @ClassCreate
 005CEBDE    mov         dword ptr [ebp-0C],ecx
 005CEBE1    mov         byte ptr [ebp-5],dl
 005CEBE4    mov         dword ptr [ebp-4],eax
 005CEBE7    xor         eax,eax
 005CEBE9    push        ebp
 005CEBEA    push        5CECB8
 005CEBEF    push        dword ptr fs:[eax]
 005CEBF2    mov         dword ptr fs:[eax],esp
 005CEBF5    mov         ecx,dword ptr [ebp-0C]
 005CEBF8    xor         edx,edx
 005CEBFA    mov         eax,dword ptr [ebp-4]
 005CEBFD    call        TScrollingWinControl.Create
 005CEC02    mov         eax,dword ptr [ebp-4]
 005CEC05    mov         edx,dword ptr ds:[5CECE0];0xAB gvar_005CECE0
 005CEC0B    mov         dword ptr [eax+50],edx;TCustomFrame.FControlStyle:TControlStyle
 005CEC0E    mov         eax,dword ptr [ebp-4]
 005CEC11    call        TObject.ClassType
 005CEC16    cmp         eax,dword ptr ds:[5CB700];TFrame
>005CEC1C    je          005CEC85
 005CEC1E    mov         eax,dword ptr [ebp-4]
 005CEC21    test        byte ptr [eax+1D],4;TCustomFrame.?f1D:byte
>005CEC25    jne         005CEC85
 005CEC27    mov         edx,dword ptr ds:[5CB700];TFrame
 005CEC2D    mov         eax,dword ptr [ebp-4]
 005CEC30    call        InitInheritedComponent
 005CEC35    test        al,al
>005CEC37    jne         005CEC9F
 005CEC39    lea         edx,[ebp-114]
 005CEC3F    mov         eax,dword ptr [ebp-4]
 005CEC42    mov         eax,dword ptr [eax]
 005CEC44    call        TObject.ClassName
 005CEC49    lea         eax,[ebp-114]
 005CEC4F    mov         dword ptr [ebp-14],eax
 005CEC52    mov         byte ptr [ebp-10],4
 005CEC56    lea         eax,[ebp-14]
 005CEC59    push        eax
 005CEC5A    push        0
 005CEC5C    lea         edx,[ebp-118]
 005CEC62    mov         eax,[006EA0C4];^gvar_0065507C
 005CEC67    call        LoadResString
 005CEC6C    mov         ecx,dword ptr [ebp-118]
 005CEC72    mov         dl,1
 005CEC74    mov         eax,[00642020];EResNotFound
 005CEC79    call        Exception.CreateFmt;EResNotFound.Create
 005CEC7E    call        @RaiseExcept
>005CEC83    jmp         005CEC9F
 005CEC85    mov         edx,140
 005CEC8A    mov         eax,dword ptr [ebp-4]
 005CEC8D    call        TControl.SetWidth
 005CEC92    mov         edx,0F0
 005CEC97    mov         eax,dword ptr [ebp-4]
 005CEC9A    call        TControl.SetHeight
 005CEC9F    xor         eax,eax
 005CECA1    pop         edx
 005CECA2    pop         ecx
 005CECA3    pop         ecx
 005CECA4    mov         dword ptr fs:[eax],edx
 005CECA7    push        5CECBF
 005CECAC    lea         eax,[ebp-118]
 005CECB2    call        @LStrClr
 005CECB7    ret
>005CECB8    jmp         @HandleFinally
>005CECBD    jmp         005CECAC
 005CECBF    mov         eax,dword ptr [ebp-4]
 005CECC2    cmp         byte ptr [ebp-5],0
>005CECC6    je          005CECD7
 005CECC8    call        @AfterConstruction
 005CECCD    pop         dword ptr fs:[0]
 005CECD4    add         esp,0C
 005CECD7    mov         eax,dword ptr [ebp-4]
 005CECDA    pop         ebx
 005CECDB    mov         esp,ebp
 005CECDD    pop         ebp
 005CECDE    ret
*}
end;

//005CECE4
{*procedure sub_005CECE4(?:?);
begin
 005CECE4    push        ebp
 005CECE5    mov         ebp,esp
 005CECE7    add         esp,0FFFFFFF8
 005CECEA    mov         dword ptr [ebp-8],edx
 005CECED    mov         dword ptr [ebp-4],eax
 005CECF0    mov         edx,dword ptr [ebp-8]
 005CECF3    mov         eax,dword ptr [ebp-4]
 005CECF6    call        005CE0D0
 005CECFB    mov         eax,dword ptr [ebp-4]
 005CECFE    cmp         dword ptr [eax+30],0;TCustomFrame.FParent:TWinControl
>005CED02    jne         005CED12
 005CED04    mov         eax,[006ECD7C];0x0 Application:TApplication
 005CED09    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005CED0C    mov         edx,dword ptr [ebp-8]
 005CED0F    mov         dword ptr [edx+1C],eax
 005CED12    pop         ecx
 005CED13    pop         ecx
 005CED14    pop         ebp
 005CED15    ret
end;*}

//005CED18
{*procedure TCustomFrame.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);
begin
 005CED18    push        ebp
 005CED19    mov         ebp,esp
 005CED1B    add         esp,0FFFFFFEC
 005CED1E    push        esi
 005CED1F    mov         dword ptr [ebp-8],edx
 005CED22    mov         dword ptr [ebp-4],eax
 005CED25    push        dword ptr [ebp+0C]
 005CED28    push        dword ptr [ebp+8]
 005CED2B    mov         edx,dword ptr [ebp-8]
 005CED2E    mov         eax,dword ptr [ebp-4]
 005CED31    call        TWinControl.GetChildren
 005CED36    mov         eax,dword ptr [ebp-8]
 005CED39    cmp         eax,dword ptr [ebp-4]
>005CED3C    jne         005CED85
 005CED3E    mov         eax,dword ptr [ebp-4]
 005CED41    call        00650B4C
 005CED46    dec         eax
 005CED47    test        eax,eax
>005CED49    jl          005CED85
 005CED4B    inc         eax
 005CED4C    mov         dword ptr [ebp-14],eax
 005CED4F    mov         dword ptr [ebp-0C],0
 005CED56    mov         edx,dword ptr [ebp-0C]
 005CED59    mov         eax,dword ptr [ebp-4]
 005CED5C    call        00650B0C
 005CED61    mov         dword ptr [ebp-10],eax
 005CED64    mov         eax,dword ptr [ebp-10]
 005CED67    mov         si,0FFF1
 005CED6B    call        @CallDynaInst
 005CED70    test        al,al
>005CED72    jne         005CED7D
 005CED74    mov         edx,dword ptr [ebp-10]
 005CED77    mov         eax,dword ptr [ebp+0C]
 005CED7A    call        dword ptr [ebp+8]
 005CED7D    inc         dword ptr [ebp-0C]
 005CED80    dec         dword ptr [ebp-14]
>005CED83    jne         005CED56
 005CED85    pop         esi
 005CED86    mov         esp,ebp
 005CED88    pop         ebp
 005CED89    ret         8
end;*}

//005CED8C
procedure sub_005CED8C(?:TCustomFrame; ?:TComponent);
begin
{*
 005CED8C    push        ebp
 005CED8D    mov         ebp,esp
 005CED8F    add         esp,0FFFFFFF4
 005CED92    mov         dword ptr [ebp-8],edx
 005CED95    mov         dword ptr [ebp-4],eax
 005CED98    mov         eax,dword ptr [ebp-4]
 005CED9B    call        005CD060
 005CEDA0    mov         dword ptr [ebp-0C],eax
 005CEDA3    cmp         dword ptr [ebp-0C],0
>005CEDA7    je          005CEDDB
 005CEDA9    mov         eax,dword ptr [ebp-0C]
 005CEDAC    cmp         dword ptr [eax+2E8],0
>005CEDB3    jne         005CEDCA
 005CEDB5    mov         dl,1
 005CEDB7    mov         eax,[006422A4];TList
 005CEDBC    call        TObject.Create;TList.Create
 005CEDC1    mov         edx,dword ptr [ebp-0C]
 005CEDC4    mov         dword ptr [edx+2E8],eax
 005CEDCA    mov         edx,dword ptr [ebp-8]
 005CEDCD    mov         eax,dword ptr [ebp-0C]
 005CEDD0    mov         eax,dword ptr [eax+2E8]
 005CEDD6    call        TList.Add
 005CEDDB    mov         esp,ebp
 005CEDDD    pop         ebp
 005CEDDE    ret
*}
end;

//005CEDE0
procedure sub_005CEDE0(?:TCustomFrame; ?:TComponent);
begin
{*
 005CEDE0    push        ebp
 005CEDE1    mov         ebp,esp
 005CEDE3    add         esp,0FFFFFFF4
 005CEDE6    mov         dword ptr [ebp-8],edx
 005CEDE9    mov         dword ptr [ebp-4],eax
 005CEDEC    mov         eax,dword ptr [ebp-4]
 005CEDEF    call        005CD060
 005CEDF4    mov         dword ptr [ebp-0C],eax
 005CEDF7    cmp         dword ptr [ebp-0C],0
>005CEDFB    je          005CEE1A
 005CEDFD    mov         eax,dword ptr [ebp-0C]
 005CEE00    cmp         dword ptr [eax+2E8],0
>005CEE07    je          005CEE1A
 005CEE09    mov         edx,dword ptr [ebp-8]
 005CEE0C    mov         eax,dword ptr [ebp-0C]
 005CEE0F    mov         eax,dword ptr [eax+2E8]
 005CEE15    call        TList.Remove
 005CEE1A    mov         esp,ebp
 005CEE1C    pop         ebp
 005CEE1D    ret
*}
end;

//005CEE20
procedure TCustomFrame.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005CEE20    push        ebp
 005CEE21    mov         ebp,esp
 005CEE23    add         esp,0FFFFFFF4
 005CEE26    mov         byte ptr [ebp-9],cl
 005CEE29    mov         dword ptr [ebp-8],edx
 005CEE2C    mov         dword ptr [ebp-4],eax
 005CEE2F    mov         cl,byte ptr [ebp-9]
 005CEE32    mov         edx,dword ptr [ebp-8]
 005CEE35    mov         eax,dword ptr [ebp-4]
 005CEE38    call        TControl.Notification
 005CEE3D    mov         al,byte ptr [ebp-9]
 005CEE40    sub         al,1
>005CEE42    jb          005CEE48
>005CEE44    je          005CEE67
>005CEE46    jmp         005CEE84
 005CEE48    mov         eax,dword ptr [ebp-8]
 005CEE4B    mov         edx,dword ptr ds:[58D274];TCustomActionList
 005CEE51    call        @IsClass
 005CEE56    test        al,al
>005CEE58    je          005CEE84
 005CEE5A    mov         edx,dword ptr [ebp-8]
 005CEE5D    mov         eax,dword ptr [ebp-4]
 005CEE60    call        005CED8C
>005CEE65    jmp         005CEE84
 005CEE67    mov         eax,dword ptr [ebp-8]
 005CEE6A    mov         edx,dword ptr ds:[58D274];TCustomActionList
 005CEE70    call        @IsClass
 005CEE75    test        al,al
>005CEE77    je          005CEE84
 005CEE79    mov         edx,dword ptr [ebp-8]
 005CEE7C    mov         eax,dword ptr [ebp-4]
 005CEE7F    call        005CEDE0
 005CEE84    mov         esp,ebp
 005CEE86    pop         ebp
 005CEE87    ret
*}
end;

//005CEE88
{*procedure sub_005CEE88(?:?; ?:?);
begin
 005CEE88    push        ebp
 005CEE89    mov         ebp,esp
 005CEE8B    add         esp,0FFFFFFF0
 005CEE8E    mov         byte ptr [ebp-1],al
 005CEE91    mov         eax,dword ptr [ebp+8]
 005CEE94    mov         eax,dword ptr [eax-4]
 005CEE97    call        00650B4C
 005CEE9C    dec         eax
 005CEE9D    test        eax,eax
>005CEE9F    jl          005CEF00
 005CEEA1    inc         eax
 005CEEA2    mov         dword ptr [ebp-10],eax
 005CEEA5    mov         dword ptr [ebp-8],0
 005CEEAC    mov         eax,dword ptr [ebp+8]
 005CEEAF    mov         eax,dword ptr [eax-4]
 005CEEB2    mov         edx,dword ptr [ebp-8]
 005CEEB5    call        00650B0C
 005CEEBA    mov         dword ptr [ebp-0C],eax
 005CEEBD    mov         eax,dword ptr [ebp-0C]
 005CEEC0    mov         edx,dword ptr ds:[58D274];TCustomActionList
 005CEEC6    call        @IsClass
 005CEECB    test        al,al
>005CEECD    je          005CEEF8
 005CEECF    mov         al,byte ptr [ebp-1]
 005CEED2    sub         al,1
>005CEED4    jb          005CEEDA
>005CEED6    je          005CEEEA
>005CEED8    jmp         005CEEF8
 005CEEDA    mov         eax,dword ptr [ebp+8]
 005CEEDD    mov         eax,dword ptr [eax-4]
 005CEEE0    mov         edx,dword ptr [ebp-0C]
 005CEEE3    call        005CED8C
>005CEEE8    jmp         005CEEF8
 005CEEEA    mov         eax,dword ptr [ebp+8]
 005CEEED    mov         eax,dword ptr [eax-4]
 005CEEF0    mov         edx,dword ptr [ebp-0C]
 005CEEF3    call        005CEDE0
 005CEEF8    inc         dword ptr [ebp-8]
 005CEEFB    dec         dword ptr [ebp-10]
>005CEEFE    jne         005CEEAC
 005CEF00    mov         esp,ebp
 005CEF02    pop         ebp
 005CEF03    ret
end;*}

//005CEF04
{*procedure sub_005CEF04(?:?);
begin
 005CEF04    push        ebp
 005CEF05    mov         ebp,esp
 005CEF07    add         esp,0FFFFFFF8
 005CEF0A    mov         dword ptr [ebp-8],edx
 005CEF0D    mov         dword ptr [ebp-4],eax
 005CEF10    mov         eax,dword ptr [ebp-4]
 005CEF13    cmp         dword ptr [eax+30],0;TCustomFrame.FParent:TWinControl
>005CEF17    je          005CEF22
 005CEF19    push        ebp
 005CEF1A    mov         al,1
 005CEF1C    call        005CEE88
 005CEF21    pop         ecx
 005CEF22    mov         eax,dword ptr [ebp-4]
 005CEF25    cmp         dword ptr [eax+30],0;TCustomFrame.FParent:TWinControl
>005CEF29    jne         005CEF3F
 005CEF2B    mov         eax,dword ptr [ebp-4]
 005CEF2E    call        TWinControl.HandleAllocated
 005CEF33    test        al,al
>005CEF35    je          005CEF3F
 005CEF37    mov         eax,dword ptr [ebp-4]
 005CEF3A    call        005F8828
 005CEF3F    mov         edx,dword ptr [ebp-8]
 005CEF42    mov         eax,dword ptr [ebp-4]
 005CEF45    call        005F34DC
 005CEF4A    mov         eax,dword ptr [ebp-4]
 005CEF4D    cmp         dword ptr [eax+30],0;TCustomFrame.FParent:TWinControl
>005CEF51    je          005CEF5C
 005CEF53    push        ebp
 005CEF54    xor         eax,eax
 005CEF56    call        005CEE88
 005CEF5B    pop         ecx
 005CEF5C    pop         ecx
 005CEF5D    pop         ecx
 005CEF5E    pop         ebp
 005CEF5F    ret
end;*}

//005CEF60
constructor TCustomForm.Create(AOwner:TComponent);
begin
{*
 005CEF60    push        ebp
 005CEF61    mov         ebp,esp
 005CEF63    add         esp,0FFFFFEE8
 005CEF69    push        ebx
 005CEF6A    xor         ebx,ebx
 005CEF6C    mov         dword ptr [ebp-118],ebx
 005CEF72    test        dl,dl
>005CEF74    je          005CEF7E
 005CEF76    add         esp,0FFFFFFF0
 005CEF79    call        @ClassCreate
 005CEF7E    mov         dword ptr [ebp-0C],ecx
 005CEF81    mov         byte ptr [ebp-5],dl
 005CEF84    mov         dword ptr [ebp-4],eax
 005CEF87    xor         eax,eax
 005CEF89    push        ebp
 005CEF8A    push        5CF0C6
 005CEF8F    push        dword ptr fs:[eax]
 005CEF92    mov         dword ptr fs:[eax],esp
 005CEF95    mov         eax,[006EA03C];^GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 005CEF9A    mov         eax,dword ptr [eax]
 005CEF9C    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 005CEFA1    xor         eax,eax
 005CEFA3    push        ebp
 005CEFA4    push        5CF0A6
 005CEFA9    push        dword ptr fs:[eax]
 005CEFAC    mov         dword ptr fs:[eax],esp
 005CEFAF    push        0
 005CEFB1    mov         ecx,dword ptr [ebp-0C]
 005CEFB4    xor         edx,edx
 005CEFB6    mov         eax,dword ptr [ebp-4]
 005CEFB9    mov         ebx,dword ptr [eax]
 005CEFBB    call        dword ptr [ebx+0DC];TCustomForm.sub_005CF138
 005CEFC1    mov         eax,dword ptr [ebp-4]
 005CEFC4    call        TObject.ClassType
 005CEFC9    cmp         eax,dword ptr ds:[5CC540];TForm
>005CEFCF    je          005CF08C
 005CEFD5    mov         eax,dword ptr [ebp-4]
 005CEFD8    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005CEFDC    jne         005CF08C
 005CEFE2    mov         eax,dword ptr [ebp-4]
 005CEFE5    or          byte ptr [eax+2EC],1;TCustomForm.FFormState:TFormState
 005CEFEC    xor         eax,eax
 005CEFEE    push        ebp
 005CEFEF    push        5CF06E
 005CEFF4    push        dword ptr fs:[eax]
 005CEFF7    mov         dword ptr fs:[eax],esp
 005CEFFA    mov         edx,dword ptr ds:[5CC540];TForm
 005CF000    mov         eax,dword ptr [ebp-4]
 005CF003    call        InitInheritedComponent
 005CF008    test        al,al
>005CF00A    jne         005CF056
 005CF00C    lea         edx,[ebp-114]
 005CF012    mov         eax,dword ptr [ebp-4]
 005CF015    mov         eax,dword ptr [eax]
 005CF017    call        TObject.ClassName
 005CF01C    lea         eax,[ebp-114]
 005CF022    mov         dword ptr [ebp-14],eax
 005CF025    mov         byte ptr [ebp-10],4
 005CF029    lea         eax,[ebp-14]
 005CF02C    push        eax
 005CF02D    push        0
 005CF02F    lea         edx,[ebp-118]
 005CF035    mov         eax,[006EA0C4];^gvar_0065507C
 005CF03A    call        LoadResString
 005CF03F    mov         ecx,dword ptr [ebp-118]
 005CF045    mov         dl,1
 005CF047    mov         eax,[00642020];EResNotFound
 005CF04C    call        Exception.CreateFmt;EResNotFound.Create
 005CF051    call        @RaiseExcept
 005CF056    xor         eax,eax
 005CF058    pop         edx
 005CF059    pop         ecx
 005CF05A    pop         ecx
 005CF05B    mov         dword ptr fs:[eax],edx
 005CF05E    push        5CF075
 005CF063    mov         eax,dword ptr [ebp-4]
 005CF066    and         byte ptr [eax+2EC],0FE;TCustomForm.FFormState:TFormState
 005CF06D    ret
>005CF06E    jmp         @HandleFinally
>005CF073    jmp         005CF063
 005CF075    mov         eax,dword ptr [ebp-4]
 005CF078    cmp         byte ptr [eax+234],0;TCustomForm.FOldCreateOrder:Boolean
>005CF07F    je          005CF08C
 005CF081    mov         eax,dword ptr [ebp-4]
 005CF084    mov         edx,dword ptr [eax]
 005CF086    call        dword ptr [edx+0D0];TCustomForm.DoCreate
 005CF08C    xor         eax,eax
 005CF08E    pop         edx
 005CF08F    pop         ecx
 005CF090    pop         ecx
 005CF091    mov         dword ptr fs:[eax],edx
 005CF094    push        5CF0AD
 005CF099    mov         eax,[006EA03C];^GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 005CF09E    mov         eax,dword ptr [eax]
 005CF0A0    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 005CF0A5    ret
>005CF0A6    jmp         @HandleFinally
>005CF0AB    jmp         005CF099
 005CF0AD    xor         eax,eax
 005CF0AF    pop         edx
 005CF0B0    pop         ecx
 005CF0B1    pop         ecx
 005CF0B2    mov         dword ptr fs:[eax],edx
 005CF0B5    push        5CF0CD
 005CF0BA    lea         eax,[ebp-118]
 005CF0C0    call        @LStrClr
 005CF0C5    ret
>005CF0C6    jmp         @HandleFinally
>005CF0CB    jmp         005CF0BA
 005CF0CD    mov         eax,dword ptr [ebp-4]
 005CF0D0    cmp         byte ptr [ebp-5],0
>005CF0D4    je          005CF0E5
 005CF0D6    call        @AfterConstruction
 005CF0DB    pop         dword ptr fs:[0]
 005CF0E2    add         esp,0C
 005CF0E5    mov         eax,dword ptr [ebp-4]
 005CF0E8    pop         ebx
 005CF0E9    mov         esp,ebp
 005CF0EB    pop         ebp
 005CF0EC    ret
*}
end;

//005CF0F0
procedure TCustomForm.AfterConstruction;
begin
{*
 005CF0F0    push        ebp
 005CF0F1    mov         ebp,esp
 005CF0F3    push        ecx
 005CF0F4    push        esi
 005CF0F5    mov         dword ptr [ebp-4],eax
 005CF0F8    mov         eax,dword ptr [ebp-4]
 005CF0FB    cmp         byte ptr [eax+234],0
>005CF102    jne         005CF10F
 005CF104    mov         eax,dword ptr [ebp-4]
 005CF107    mov         edx,dword ptr [eax]
 005CF109    call        dword ptr [edx+0D0]
 005CF10F    mov         eax,dword ptr [ebp-4]
 005CF112    test        byte ptr [eax+2EC],20;{@CallDynaInst}
>005CF119    je          005CF131
 005CF11B    mov         eax,dword ptr [ebp-4]
 005CF11E    mov         si,0FFB3
 005CF122    call        @CallDynaInst
 005CF127    mov         eax,dword ptr [ebp-4]
 005CF12A    and         byte ptr [eax+2EC],0DF
 005CF131    pop         esi
 005CF132    pop         ecx
 005CF133    pop         ebp
 005CF134    ret
*}
end;

//005CF138
constructor sub_005CF138;
begin
{*
 005CF138    push        ebp
 005CF139    mov         ebp,esp
 005CF13B    add         esp,0FFFFFFF4
 005CF13E    test        dl,dl
>005CF140    je          005CF14A
 005CF142    add         esp,0FFFFFFF0
 005CF145    call        @ClassCreate
 005CF14A    mov         dword ptr [ebp-0C],ecx
 005CF14D    mov         byte ptr [ebp-5],dl
 005CF150    mov         dword ptr [ebp-4],eax
 005CF153    mov         ecx,dword ptr [ebp-0C]
 005CF156    xor         edx,edx
 005CF158    mov         eax,dword ptr [ebp-4]
 005CF15B    call        TScrollingWinControl.Create
 005CF160    mov         eax,dword ptr [ebp-4]
 005CF163    mov         edx,dword ptr ds:[5CF2F0];0xAB gvar_005CF2F0
 005CF169    mov         dword ptr [eax+50],edx;TCustomForm.FControlStyle:TControlStyle
 005CF16C    xor         edx,edx
 005CF16E    mov         eax,dword ptr [ebp-4]
 005CF171    call        TControl.SetLeft
 005CF176    xor         edx,edx
 005CF178    mov         eax,dword ptr [ebp-4]
 005CF17B    call        TControl.SetTop
 005CF180    mov         edx,140
 005CF185    mov         eax,dword ptr [ebp-4]
 005CF188    call        TControl.SetWidth
 005CF18D    mov         edx,0F0
 005CF192    mov         eax,dword ptr [ebp-4]
 005CF195    call        TControl.SetHeight
 005CF19A    mov         dl,1
 005CF19C    mov         eax,[005BEF18];TIcon
 005CF1A1    call        TIcon.Create;TIcon.Create
 005CF1A6    mov         edx,dword ptr [ebp-4]
 005CF1A9    mov         dword ptr [edx+240],eax;TCustomForm.FIcon:TIcon
 005CF1AF    push        31
 005CF1B1    mov         eax,[006EA000];^gvar_006ECEF4
 005CF1B6    mov         eax,dword ptr [eax]
 005CF1B8    call        eax
 005CF1BA    mov         edx,eax
 005CF1BC    mov         eax,dword ptr [ebp-4]
 005CF1BF    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 005CF1C5    mov         ecx,dword ptr [eax]
 005CF1C7    call        dword ptr [ecx+40];TIcon.SetWidth
 005CF1CA    push        32
 005CF1CC    mov         eax,[006EA000];^gvar_006ECEF4
 005CF1D1    mov         eax,dword ptr [eax]
 005CF1D3    call        eax
 005CF1D5    mov         edx,eax
 005CF1D7    mov         eax,dword ptr [ebp-4]
 005CF1DA    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 005CF1E0    mov         ecx,dword ptr [eax]
 005CF1E2    call        dword ptr [ecx+34];TIcon.SetHeight
 005CF1E5    mov         eax,dword ptr [ebp-4]
 005CF1E8    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 005CF1EE    mov         edx,dword ptr [ebp-4]
 005CF1F1    mov         dword ptr [eax+14],edx;TIcon.?f14:TPicture
 005CF1F4    mov         dword ptr [eax+10],5CFBD4;TIcon.FOnChange:TNotifyEvent sub_005CFBD4
 005CF1FB    mov         dl,1
 005CF1FD    mov         eax,[005ED808];TControlCanvas
 005CF202    call        TCanvas.Create;TControlCanvas.Create
 005CF207    mov         edx,dword ptr [ebp-4]
 005CF20A    mov         dword ptr [edx+238],eax;TCustomForm.FCanvas:TControlCanvas
 005CF210    mov         eax,dword ptr [ebp-4]
 005CF213    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005CF219    mov         edx,dword ptr [ebp-4]
 005CF21C    call        005F1A7C
 005CF221    mov         eax,dword ptr [ebp-4]
 005CF224    mov         dl,byte ptr ds:[5CF2F4];0x7 gvar_005CF2F4
 005CF22A    mov         byte ptr [eax+228],dl;TCustomForm.FBorderIcons:TBorderIcons
 005CF230    mov         eax,dword ptr [ebp-4]
 005CF233    mov         byte ptr [eax+229],2;TCustomForm.FBorderStyle:TFormBorderStyle
 005CF23A    mov         eax,dword ptr [ebp-4]
 005CF23D    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 005CF244    mov         eax,dword ptr [ebp-4]
 005CF247    mov         byte ptr [eax+231],3;TCustomForm.FDefaultMonitor:TDefaultMonitor
 005CF24E    mov         eax,dword ptr [ebp-4]
 005CF251    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005CF258    mov         eax,[006ECD80];0x0 Screen:TScreen
 005CF25D    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 005CF260    mov         edx,dword ptr [ebp-4]
 005CF263    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 005CF269    mov         eax,dword ptr [ebp-4]
 005CF26C    mov         byte ptr [eax+235],1;TCustomForm.FPrintScale:TPrintScale
 005CF273    mov         eax,dword ptr [ebp-4]
 005CF276    call        TObject.ClassType
 005CF27B    mov         edx,dword ptr [ebp-4]
 005CF27E    mov         dword ptr [edx+0B8],eax;TCustomForm.FFloatingDockSiteClass:TWinControlClass
 005CF284    mov         eax,dword ptr [ebp-4]
 005CF287    mov         byte ptr [eax+2E1],0FF;TCustomForm.FAlphaBlendValue:byte
 005CF28E    mov         eax,dword ptr [ebp-4]
 005CF291    xor         edx,edx
 005CF293    mov         dword ptr [eax+2E4],edx;TCustomForm.FTransparentColorValue:TColor
 005CF299    xor         edx,edx
 005CF29B    mov         eax,dword ptr [ebp-4]
 005CF29E    call        TCustomForm.SetVisible
 005CF2A3    xor         edx,edx
 005CF2A5    mov         eax,dword ptr [ebp-4]
 005CF2A8    call        TCCalendar.SetParentColor
 005CF2AD    xor         edx,edx
 005CF2AF    mov         eax,dword ptr [ebp-4]
 005CF2B2    call        TCCalendar.SetParentFont
 005CF2B7    mov         dl,1
 005CF2B9    mov         eax,dword ptr [ebp-4]
 005CF2BC    call        TCCalendar.SetCtl3D
 005CF2C1    mov         edx,dword ptr [ebp-4]
 005CF2C4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005CF2C9    call        005D57DC
 005CF2CE    mov         eax,dword ptr [ebp-4]
 005CF2D1    cmp         byte ptr [ebp-5],0
>005CF2D5    je          005CF2E6
 005CF2D7    call        @AfterConstruction
 005CF2DC    pop         dword ptr fs:[0]
 005CF2E3    add         esp,0C
 005CF2E6    mov         eax,dword ptr [ebp-4]
 005CF2E9    mov         esp,ebp
 005CF2EB    pop         ebp
 005CF2EC    ret         4
*}
end;

//005CF2F8
procedure TCustomForm.BeforeDestruction;
begin
{*
 005CF2F8    push        ebp
 005CF2F9    mov         ebp,esp
 005CF2FB    push        ecx
 005CF2FC    mov         dword ptr [ebp-4],eax
 005CF2FF    mov         eax,[006EA03C];^GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer{TMultiReadExclusive...
 005CF304    mov         eax,dword ptr [eax]
 005CF306    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 005CF30B    mov         eax,dword ptr [ebp-4]
 005CF30E    call        006505B4
 005CF313    mov         eax,[006ECD80];Screen:TScreen
 005CF318    mov         eax,dword ptr [eax+7C];{TList.Remove}
 005CF31B    mov         edx,dword ptr [ebp-4]
 005CF31E    call        TList.Remove
 005CF323    xor         edx,edx
 005CF325    mov         eax,dword ptr [ebp-4]
 005CF328    call        00649B9C
 005CF32D    mov         eax,dword ptr [ebp-4]
 005CF330    cmp         dword ptr [eax+264],0
>005CF337    je          005CF347
 005CF339    mov         eax,dword ptr [ebp-4]
 005CF33C    mov         eax,dword ptr [eax+264]
 005CF342    mov         edx,dword ptr [eax]
 005CF344    call        dword ptr [edx+0C]
 005CF347    mov         eax,dword ptr [ebp-4]
 005CF34A    cmp         byte ptr [eax+22F],1
>005CF351    je          005CF35B
 005CF353    mov         eax,dword ptr [ebp-4]
 005CF356    call        005D4114
 005CF35B    mov         eax,dword ptr [ebp-4]
 005CF35E    cmp         byte ptr [eax+234],0
>005CF365    jne         005CF372
 005CF367    mov         eax,dword ptr [ebp-4]
 005CF36A    mov         edx,dword ptr [eax]
 005CF36C    call        dword ptr [edx+0D4]
 005CF372    pop         ecx
 005CF373    pop         ebp
 005CF374    ret
*}
end;

//005CF378
destructor TCustomForm.Destroy;
begin
{*
 005CF378    push        ebp
 005CF379    mov         ebp,esp
 005CF37B    add         esp,0FFFFFFF8
 005CF37E    call        @BeforeDestruction
 005CF383    mov         byte ptr [ebp-5],dl
 005CF386    mov         dword ptr [ebp-4],eax
 005CF389    mov         eax,dword ptr [ebp-4]
 005CF38C    test        byte ptr [eax+1C],8
>005CF390    jne         005CF39E
 005CF392    mov         eax,[006EA03C];^GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 005CF397    mov         eax,dword ptr [eax]
 005CF399    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 005CF39E    xor         eax,eax
 005CF3A0    push        ebp
 005CF3A1    push        5CF442
 005CF3A6    push        dword ptr fs:[eax]
 005CF3A9    mov         dword ptr fs:[eax],esp
 005CF3AC    mov         eax,dword ptr [ebp-4]
 005CF3AF    cmp         byte ptr [eax+234],0
>005CF3B6    je          005CF3C3
 005CF3B8    mov         eax,dword ptr [ebp-4]
 005CF3BB    mov         edx,dword ptr [eax]
 005CF3BD    call        dword ptr [edx+0D4]
 005CF3C3    xor         edx,edx
 005CF3C5    mov         eax,dword ptr [ebp-4]
 005CF3C8    call        TCustomForm.MergeMenu
 005CF3CD    mov         eax,dword ptr [ebp-4]
 005CF3D0    call        TWinControl.HandleAllocated
 005CF3D5    test        al,al
>005CF3D7    je          005CF3E4
 005CF3D9    mov         eax,dword ptr [ebp-4]
 005CF3DC    mov         edx,dword ptr [eax]
 005CF3DE    call        dword ptr [edx+0AC]
 005CF3E4    mov         edx,dword ptr [ebp-4]
 005CF3E7    mov         eax,[006ECD80];Screen:TScreen
 005CF3EC    call        TScreen.RemoveForm
 005CF3F1    mov         eax,dword ptr [ebp-4]
 005CF3F4    mov         eax,dword ptr [eax+238]
 005CF3FA    call        TObject.Free
 005CF3FF    mov         eax,dword ptr [ebp-4]
 005CF402    mov         eax,dword ptr [eax+240]
 005CF408    call        TObject.Free
 005CF40D    mov         eax,dword ptr [ebp-4]
 005CF410    add         eax,2E8
 005CF415    call        FreeAndNil
 005CF41A    mov         dl,byte ptr [ebp-5]
 005CF41D    and         dl,0FC
 005CF420    mov         eax,dword ptr [ebp-4]
 005CF423    call        TScrollingWinControl.Destroy
 005CF428    xor         eax,eax
 005CF42A    pop         edx
 005CF42B    pop         ecx
 005CF42C    pop         ecx
 005CF42D    mov         dword ptr fs:[eax],edx
 005CF430    push        5CF449
 005CF435    mov         eax,[006EA03C];^GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 005CF43A    mov         eax,dword ptr [eax]
 005CF43C    call        TMultiReadExclusiveWriteSynchronizer.EndWrite
 005CF441    ret
>005CF442    jmp         @HandleFinally
>005CF447    jmp         005CF435
 005CF449    cmp         byte ptr [ebp-5],0
>005CF44D    jle         005CF457
 005CF44F    mov         eax,dword ptr [ebp-4]
 005CF452    call        @ClassDestroy
 005CF457    pop         ecx
 005CF458    pop         ecx
 005CF459    pop         ebp
 005CF45A    ret
*}
end;

//005CF45C
procedure TCustomForm.DoCreate;
begin
{*
 005CF45C    push        ebp
 005CF45D    mov         ebp,esp
 005CF45F    push        ecx
 005CF460    push        ebx
 005CF461    push        esi
 005CF462    push        edi
 005CF463    mov         dword ptr [ebp-4],eax
 005CF466    mov         eax,dword ptr [ebp-4]
 005CF469    cmp         word ptr [eax+2D2],0
>005CF471    je          005CF4BC
 005CF473    xor         eax,eax
 005CF475    push        ebp
 005CF476    push        5CF49D
 005CF47B    push        dword ptr fs:[eax]
 005CF47E    mov         dword ptr fs:[eax],esp
 005CF481    mov         ebx,dword ptr [ebp-4]
 005CF484    mov         edx,dword ptr [ebp-4]
 005CF487    mov         eax,dword ptr [ebx+2D4]
 005CF48D    call        dword ptr [ebx+2D0]
 005CF493    xor         eax,eax
 005CF495    pop         edx
 005CF496    pop         ecx
 005CF497    pop         ecx
 005CF498    mov         dword ptr fs:[eax],edx
>005CF49B    jmp         005CF4BC
>005CF49D    jmp         @HandleAnyException
 005CF4A2    mov         eax,dword ptr [ebp-4]
 005CF4A5    mov         si,0FFAD
 005CF4A9    call        @CallDynaInst
 005CF4AE    test        al,al
>005CF4B0    jne         005CF4B7
 005CF4B2    call        @RaiseAgain
 005CF4B7    call        @DoneExcept
 005CF4BC    mov         eax,dword ptr [ebp-4]
 005CF4BF    test        byte ptr [eax+2EC],2
>005CF4C6    je          005CF4D2
 005CF4C8    mov         dl,1
 005CF4CA    mov         eax,dword ptr [ebp-4]
 005CF4CD    call        TCustomForm.SetVisible
 005CF4D2    pop         edi
 005CF4D3    pop         esi
 005CF4D4    pop         ebx
 005CF4D5    pop         ecx
 005CF4D6    pop         ebp
 005CF4D7    ret
*}
end;

//005CF4D8
procedure TCustomForm.DoDestroy;
begin
{*
 005CF4D8    push        ebp
 005CF4D9    mov         ebp,esp
 005CF4DB    push        ecx
 005CF4DC    push        ebx
 005CF4DD    push        esi
 005CF4DE    push        edi
 005CF4DF    mov         dword ptr [ebp-4],eax
 005CF4E2    mov         eax,dword ptr [ebp-4]
 005CF4E5    cmp         word ptr [eax+2DA],0
>005CF4ED    je          005CF530
 005CF4EF    xor         eax,eax
 005CF4F1    push        ebp
 005CF4F2    push        5CF519
 005CF4F7    push        dword ptr fs:[eax]
 005CF4FA    mov         dword ptr fs:[eax],esp
 005CF4FD    mov         ebx,dword ptr [ebp-4]
 005CF500    mov         edx,dword ptr [ebp-4]
 005CF503    mov         eax,dword ptr [ebx+2DC]
 005CF509    call        dword ptr [ebx+2D8]
 005CF50F    xor         eax,eax
 005CF511    pop         edx
 005CF512    pop         ecx
 005CF513    pop         ecx
 005CF514    mov         dword ptr fs:[eax],edx
>005CF517    jmp         005CF530
>005CF519    jmp         @HandleAnyException
 005CF51E    mov         edx,dword ptr [ebp-4]
 005CF521    mov         eax,[006ECD7C];Application:TApplication
 005CF526    call        TApplication.HandleException
 005CF52B    call        @DoneExcept
 005CF530    pop         edi
 005CF531    pop         esi
 005CF532    pop         ebx
 005CF533    pop         ecx
 005CF534    pop         ebp
 005CF535    ret
*}
end;

//005CF538
procedure TCustomForm.Loaded;
begin
{*
 005CF538    push        ebp
 005CF539    mov         ebp,esp
 005CF53B    add         esp,0FFFFFFF8
 005CF53E    push        esi
 005CF53F    mov         dword ptr [ebp-4],eax
 005CF542    mov         eax,dword ptr [ebp-4]
 005CF545    call        TControl.Loaded
 005CF54A    mov         eax,dword ptr [ebp-4]
 005CF54D    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>005CF554    je          005CF588
 005CF556    mov         eax,dword ptr [ebp-4]
 005CF559    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005CF55F    mov         dword ptr [ebp-8],eax
 005CF562    mov         eax,dword ptr [ebp-4]
 005CF565    xor         edx,edx
 005CF567    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 005CF56D    mov         eax,dword ptr [ebp-8]
 005CF570    mov         si,0FFB8
 005CF574    call        @CallDynaInst;TWinControl.sub_005FBF90
 005CF579    test        al,al
>005CF57B    je          005CF588
 005CF57D    mov         edx,dword ptr [ebp-8]
 005CF580    mov         eax,dword ptr [ebp-4]
 005CF583    call        TForm.SetActiveControl
 005CF588    pop         esi
 005CF589    pop         ecx
 005CF58A    pop         ecx
 005CF58B    pop         ebp
 005CF58C    ret
*}
end;

//005CF590
procedure TCustomForm.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005CF590    push        ebp
 005CF591    mov         ebp,esp
 005CF593    add         esp,0FFFFFFF4
 005CF596    push        ebx
 005CF597    mov         byte ptr [ebp-9],cl
 005CF59A    mov         dword ptr [ebp-8],edx
 005CF59D    mov         dword ptr [ebp-4],eax
 005CF5A0    mov         cl,byte ptr [ebp-9]
 005CF5A3    mov         edx,dword ptr [ebp-8]
 005CF5A6    mov         eax,dword ptr [ebp-4]
 005CF5A9    call        TControl.Notification
 005CF5AE    mov         al,byte ptr [ebp-9]
 005CF5B1    sub         al,1
>005CF5B3    jb          005CF5C0
>005CF5B5    je          005CF658
>005CF5BB    jmp         005CF6D1
 005CF5C0    mov         eax,dword ptr [ebp-8]
 005CF5C3    mov         edx,dword ptr ds:[58D274];TCustomActionList
 005CF5C9    call        @IsClass
 005CF5CE    test        al,al
>005CF5D0    je          005CF609
 005CF5D2    mov         eax,dword ptr [ebp-4]
 005CF5D5    cmp         dword ptr [eax+2E8],0;TCustomForm.FActionLists:TList
>005CF5DC    jne         005CF5F3
 005CF5DE    mov         dl,1
 005CF5E0    mov         eax,[006422A4];TList
 005CF5E5    call        TObject.Create;TList.Create
 005CF5EA    mov         edx,dword ptr [ebp-4]
 005CF5ED    mov         dword ptr [edx+2E8],eax;TCustomForm.FActionLists:TList
 005CF5F3    mov         edx,dword ptr [ebp-8]
 005CF5F6    mov         eax,dword ptr [ebp-4]
 005CF5F9    mov         eax,dword ptr [eax+2E8];TCustomForm.FActionLists:TList
 005CF5FF    call        TList.Add
>005CF604    jmp         005CF6D1
 005CF609    mov         eax,dword ptr [ebp-4]
 005CF60C    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>005CF610    jne         005CF6D1
 005CF616    mov         eax,dword ptr [ebp-4]
 005CF619    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005CF620    jne         005CF6D1
 005CF626    mov         eax,dword ptr [ebp-8]
 005CF629    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 005CF62C    cmp         eax,dword ptr [ebp-4]
>005CF62F    jne         005CF6D1
 005CF635    mov         eax,dword ptr [ebp-8]
 005CF638    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 005CF63E    call        @IsClass
 005CF643    test        al,al
>005CF645    je          005CF6D1
 005CF64B    mov         edx,dword ptr [ebp-8]
 005CF64E    mov         eax,dword ptr [ebp-4]
 005CF651    call        TForm.SetMenu
>005CF656    jmp         005CF6D1
 005CF658    mov         eax,dword ptr [ebp-4]
 005CF65B    cmp         dword ptr [eax+2E8],0;TCustomForm.FActionLists:TList
>005CF662    je          005CF689
 005CF664    mov         eax,dword ptr [ebp-8]
 005CF667    mov         edx,dword ptr ds:[58D274];TCustomActionList
 005CF66D    call        @IsClass
 005CF672    test        al,al
>005CF674    je          005CF689
 005CF676    mov         edx,dword ptr [ebp-8]
 005CF679    mov         eax,dword ptr [ebp-4]
 005CF67C    mov         eax,dword ptr [eax+2E8];TCustomForm.FActionLists:TList
 005CF682    call        TList.Remove
>005CF687    jmp         005CF6D1
 005CF689    mov         eax,dword ptr [ebp-4]
 005CF68C    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005CF692    cmp         eax,dword ptr [ebp-8]
>005CF695    jne         005CF6A1
 005CF697    xor         edx,edx
 005CF699    mov         eax,dword ptr [ebp-4]
 005CF69C    call        TForm.SetMenu
 005CF6A1    mov         eax,dword ptr [ebp-4]
 005CF6A4    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 005CF6AA    cmp         eax,dword ptr [ebp-8]
>005CF6AD    jne         005CF6B9
 005CF6AF    xor         edx,edx
 005CF6B1    mov         eax,dword ptr [ebp-4]
 005CF6B4    call        TForm.SetWindowMenu
 005CF6B9    mov         eax,dword ptr [ebp-4]
 005CF6BC    mov         eax,dword ptr [eax+260];TCustomForm.FObjectMenuItem:TMenuItem
 005CF6C2    cmp         eax,dword ptr [ebp-8]
>005CF6C5    jne         005CF6D1
 005CF6C7    xor         edx,edx
 005CF6C9    mov         eax,dword ptr [ebp-4]
 005CF6CC    call        TForm.SetObjectMenuItem
 005CF6D1    mov         eax,dword ptr [ebp-4]
 005CF6D4    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>005CF6DB    je          005CF6F1
 005CF6DD    mov         cl,byte ptr [ebp-9]
 005CF6E0    mov         edx,dword ptr [ebp-8]
 005CF6E3    mov         eax,dword ptr [ebp-4]
 005CF6E6    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 005CF6EC    mov         ebx,dword ptr [eax]
 005CF6EE    call        dword ptr [ebx+10]
 005CF6F1    pop         ebx
 005CF6F2    mov         esp,ebp
 005CF6F4    pop         ebp
 005CF6F5    ret
*}
end;

//005CF6F8
{*procedure sub_005CF6F8(?:?);
begin
 005CF6F8    push        ebp
 005CF6F9    mov         ebp,esp
 005CF6FB    add         esp,0FFFFFFF0
 005CF6FE    mov         dword ptr [ebp-8],edx
 005CF701    mov         dword ptr [ebp-4],eax
 005CF704    mov         eax,dword ptr [ebp-4]
 005CF707    call        005F7800
 005CF70C    xor         eax,eax
 005CF70E    push        ebp
 005CF70F    push        5CF97B
 005CF714    push        dword ptr fs:[eax]
 005CF717    mov         dword ptr fs:[eax],esp
 005CF71A    mov         eax,dword ptr [ebp-4]
 005CF71D    xor         edx,edx
 005CF71F    mov         dword ptr [eax+268],edx;TCustomForm.FClientWidth:Integer
 005CF725    mov         eax,dword ptr [ebp-4]
 005CF728    xor         edx,edx
 005CF72A    mov         dword ptr [eax+26C],edx;TCustomForm.FClientHeight:Integer
 005CF730    mov         eax,dword ptr [ebp-4]
 005CF733    xor         edx,edx
 005CF735    mov         dword ptr [eax+270],edx;TCustomForm.FTextHeight:Integer
 005CF73B    mov         byte ptr [ebp-0D],0
 005CF73F    mov         al,[006EA386];0x0 gvar_006EA386
 005CF744    xor         al,1
 005CF746    mov         edx,dword ptr [ebp-4]
 005CF749    mov         byte ptr [edx+234],al;TCustomForm.FOldCreateOrder:Boolean
 005CF74F    mov         edx,dword ptr [ebp-8]
 005CF752    mov         eax,dword ptr [ebp-4]
 005CF755    call        005F6EC4
 005CF75A    mov         eax,dword ptr [ebp-4]
 005CF75D    cmp         dword ptr [eax+25C],0;TCustomForm.FPixelsPerInch:Integer
>005CF764    je          005CF8E1
 005CF76A    mov         eax,dword ptr [ebp-4]
 005CF76D    cmp         dword ptr [eax+270],0;TCustomForm.FTextHeight:Integer
>005CF774    jle         005CF8E1
 005CF77A    mov         eax,dword ptr [ebp-4]
 005CF77D    test        byte ptr [eax+98],10;TCustomForm.FScalingFlags:TScalingFlags
>005CF784    je          005CF7CB
 005CF786    mov         eax,dword ptr [ebp-4]
 005CF789    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 005CF78F    mov         edx,dword ptr ds:[6ECD80];0x0 Screen:TScreen
 005CF795    cmp         eax,dword ptr [edx+40];TScreen.FPixelsPerInch:Integer
>005CF798    je          005CF7CB
 005CF79A    mov         eax,dword ptr [ebp-4]
 005CF79D    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 005CF7A3    push        eax
 005CF7A4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005CF7A9    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 005CF7AC    push        eax
 005CF7AD    mov         eax,dword ptr [ebp-4]
 005CF7B0    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005CF7B3    call        TFont.GetHeight
 005CF7B8    push        eax
 005CF7B9    call        KERNEL32.MulDiv
 005CF7BE    mov         edx,eax
 005CF7C0    mov         eax,dword ptr [ebp-4]
 005CF7C3    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005CF7C6    call        TFont.SetHeight
 005CF7CB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005CF7D0    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 005CF7D3    mov         edx,dword ptr [ebp-4]
 005CF7D6    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 005CF7DC    mov         eax,dword ptr [ebp-4]
 005CF7DF    call        005CFAEC
 005CF7E4    mov         dword ptr [ebp-0C],eax
 005CF7E7    mov         eax,dword ptr [ebp-4]
 005CF7EA    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF7F0    cmp         eax,dword ptr [ebp-0C]
>005CF7F3    je          005CF8E1
 005CF7F9    mov         byte ptr [ebp-0D],1
 005CF7FD    mov         eax,dword ptr [ebp-4]
 005CF800    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF806    mov         edx,dword ptr [ebp-0C]
 005CF809    mov         eax,dword ptr [ebp-4]
 005CF80C    call        005CE68C
 005CF811    mov         eax,dword ptr [ebp-4]
 005CF814    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF81A    mov         edx,dword ptr [ebp-0C]
 005CF81D    mov         eax,dword ptr [ebp-4]
 005CF820    call        005FB90C
 005CF825    mov         eax,dword ptr [ebp-4]
 005CF828    test        byte ptr [eax+98],4;TCustomForm.FScalingFlags:TScalingFlags
>005CF82F    je          005CF857
 005CF831    mov         eax,dword ptr [ebp-4]
 005CF834    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF83A    push        eax
 005CF83B    mov         eax,dword ptr [ebp-0C]
 005CF83E    push        eax
 005CF83F    mov         eax,dword ptr [ebp-4]
 005CF842    mov         eax,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 005CF848    push        eax
 005CF849    call        KERNEL32.MulDiv
 005CF84E    mov         edx,dword ptr [ebp-4]
 005CF851    mov         dword ptr [edx+268],eax;TCustomForm.FClientWidth:Integer
 005CF857    mov         eax,dword ptr [ebp-4]
 005CF85A    test        byte ptr [eax+98],8;TCustomForm.FScalingFlags:TScalingFlags
>005CF861    je          005CF889
 005CF863    mov         eax,dword ptr [ebp-4]
 005CF866    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF86C    push        eax
 005CF86D    mov         eax,dword ptr [ebp-0C]
 005CF870    push        eax
 005CF871    mov         eax,dword ptr [ebp-4]
 005CF874    mov         eax,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 005CF87A    push        eax
 005CF87B    call        KERNEL32.MulDiv
 005CF880    mov         edx,dword ptr [ebp-4]
 005CF883    mov         dword ptr [edx+26C],eax;TCustomForm.FClientHeight:Integer
 005CF889    mov         eax,dword ptr [ebp-4]
 005CF88C    test        byte ptr [eax+98],20;TCustomForm.FScalingFlags:TScalingFlags
>005CF893    je          005CF8E1
 005CF895    mov         eax,dword ptr [ebp-4]
 005CF898    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF89E    push        eax
 005CF89F    mov         eax,dword ptr [ebp-0C]
 005CF8A2    push        eax
 005CF8A3    mov         eax,dword ptr [ebp-4]
 005CF8A6    mov         eax,dword ptr [eax+1FA];TCustomForm.FDesignSize:TPoint
 005CF8AC    push        eax
 005CF8AD    call        KERNEL32.MulDiv
 005CF8B2    mov         edx,dword ptr [ebp-4]
 005CF8B5    mov         dword ptr [edx+1FA],eax;TCustomForm.FDesignSize:TPoint
 005CF8BB    mov         eax,dword ptr [ebp-4]
 005CF8BE    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 005CF8C4    push        eax
 005CF8C5    mov         eax,dword ptr [ebp-0C]
 005CF8C8    push        eax
 005CF8C9    mov         eax,dword ptr [ebp-4]
 005CF8CC    mov         eax,dword ptr [eax+1FE]
 005CF8D2    push        eax
 005CF8D3    call        KERNEL32.MulDiv
 005CF8D8    mov         edx,dword ptr [ebp-4]
 005CF8DB    mov         dword ptr [edx+1FE],eax
 005CF8E1    mov         eax,dword ptr [ebp-4]
 005CF8E4    cmp         dword ptr [eax+268],0;TCustomForm.FClientWidth:Integer
>005CF8EB    jle         005CF8FE
 005CF8ED    mov         eax,dword ptr [ebp-4]
 005CF8F0    mov         edx,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 005CF8F6    mov         eax,dword ptr [ebp-4]
 005CF8F9    call        005F2EF8
 005CF8FE    mov         eax,dword ptr [ebp-4]
 005CF901    cmp         dword ptr [eax+26C],0;TCustomForm.FClientHeight:Integer
>005CF908    jle         005CF91B
 005CF90A    mov         eax,dword ptr [ebp-4]
 005CF90D    mov         edx,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 005CF913    mov         eax,dword ptr [ebp-4]
 005CF916    call        005F2F4C
 005CF91B    mov         eax,dword ptr [ebp-4]
 005CF91E    mov         dl,byte ptr ds:[5CF988];0x0 gvar_005CF988
 005CF924    mov         byte ptr [eax+98],dl;TCustomForm.FScalingFlags:TScalingFlags
 005CF92A    cmp         byte ptr [ebp-0D],0
>005CF92E    jne         005CF954
 005CF930    mov         ecx,1
 005CF935    mov         edx,1
 005CF93A    mov         eax,dword ptr [ebp-4]
 005CF93D    call        005CE68C
 005CF942    mov         ecx,1
 005CF947    mov         edx,1
 005CF94C    mov         eax,dword ptr [ebp-4]
 005CF94F    call        005FB90C
 005CF954    push        0
 005CF956    xor         ecx,ecx
 005CF958    mov         edx,0B03D
 005CF95D    mov         eax,dword ptr [ebp-4]
 005CF960    call        005F4FA8
 005CF965    xor         eax,eax
 005CF967    pop         edx
 005CF968    pop         ecx
 005CF969    pop         ecx
 005CF96A    mov         dword ptr fs:[eax],edx
 005CF96D    push        5CF982
 005CF972    mov         eax,dword ptr [ebp-4]
 005CF975    call        005F7814
 005CF97A    ret
>005CF97B    jmp         @HandleFinally
>005CF980    jmp         005CF972
 005CF982    mov         esp,ebp
 005CF984    pop         ebp
 005CF985    ret
end;*}

//005CF98C
procedure TCustomForm.DefineProperties(Filer:TFiler);
begin
{*
 005CF98C    push        ebp
 005CF98D    mov         ebp,esp
 005CF98F    add         esp,0FFFFFFF8
 005CF992    push        ebx
 005CF993    mov         dword ptr [ebp-8],edx
 005CF996    mov         dword ptr [ebp-4],eax
 005CF999    mov         edx,dword ptr [ebp-8]
 005CF99C    mov         eax,dword ptr [ebp-4]
 005CF99F    call        TWinControl.DefineProperties
 005CF9A4    push        0
 005CF9A6    push        0
 005CF9A8    mov         eax,dword ptr [ebp-4]
 005CF9AB    push        eax
 005CF9AC    push        5CFAC8
 005CF9B1    mov         eax,dword ptr [ebp-4]
 005CF9B4    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 005CF9B7    xor         cl,1
 005CF9BA    mov         edx,5CFA18;'PixelsPerInch'
 005CF9BF    mov         eax,dword ptr [ebp-8]
 005CF9C2    mov         ebx,dword ptr [eax]
 005CF9C4    call        dword ptr [ebx+4];@AbstractError
 005CF9C7    mov         eax,dword ptr [ebp-4]
 005CF9CA    push        eax
 005CF9CB    push        5CFA80
 005CF9D0    mov         eax,dword ptr [ebp-4]
 005CF9D3    push        eax
 005CF9D4    push        5CFAA4
 005CF9D9    mov         eax,dword ptr [ebp-4]
 005CF9DC    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 005CF9DF    xor         cl,1
 005CF9E2    mov         edx,5CFA30;'TextHeight'
 005CF9E7    mov         eax,dword ptr [ebp-8]
 005CF9EA    mov         ebx,dword ptr [eax]
 005CF9EC    call        dword ptr [ebx+4];@AbstractError
 005CF9EF    mov         eax,dword ptr [ebp-4]
 005CF9F2    push        eax
 005CF9F3    push        5CFA58
 005CF9F8    push        0
 005CF9FA    push        0
 005CF9FC    xor         ecx,ecx
 005CF9FE    mov         edx,5CFA44;'IgnoreFontProperty'
 005CFA03    mov         eax,dword ptr [ebp-8]
 005CFA06    mov         ebx,dword ptr [eax]
 005CFA08    call        dword ptr [ebx+4];@AbstractError
 005CFA0B    pop         ebx
 005CFA0C    pop         ecx
 005CFA0D    pop         ecx
 005CFA0E    pop         ebp
 005CFA0F    ret
*}
end;

//005CFAEC
{*function sub_005CFAEC(?:TCustomForm):?;
begin
 005CFAEC    push        ebp
 005CFAED    mov         ebp,esp
 005CFAEF    add         esp,0FFFFFFF8
 005CFAF2    mov         dword ptr [ebp-4],eax
 005CFAF5    mov         eax,dword ptr [ebp-4]
 005CFAF8    call        005D0E28
 005CFAFD    mov         edx,5CFB1C;'0'
 005CFB02    call        005C177C
 005CFB07    mov         dword ptr [ebp-8],eax
 005CFB0A    mov         eax,dword ptr [ebp-8]
 005CFB0D    pop         ecx
 005CFB0E    pop         ecx
 005CFB0F    pop         ebp
 005CFB10    ret
end;*}

//005CFB20
procedure TCustomForm.sub_005CFB20;
begin
{*
 005CFB20    push        ebp
 005CFB21    mov         ebp,esp
 005CFB23    push        ecx
 005CFB24    mov         dword ptr [ebp-4],eax
 005CFB27    pop         ecx
 005CFB28    pop         ebp
 005CFB29    ret
*}
end;

//005CFB2C
{*procedure TCustomForm.sub_005CE77C(?:?; ?:?);
begin
 005CFB2C    push        ebp
 005CFB2D    mov         ebp,esp
 005CFB2F    add         esp,0FFFFFFF0
 005CFB32    mov         dword ptr [ebp-0C],ecx
 005CFB35    mov         dword ptr [ebp-8],edx
 005CFB38    mov         dword ptr [ebp-4],eax
 005CFB3B    mov         ecx,dword ptr [ebp-0C]
 005CFB3E    mov         edx,dword ptr [ebp-8]
 005CFB41    mov         eax,dword ptr [ebp-4]
 005CFB44    call        005CE68C
 005CFB49    mov         ecx,dword ptr [ebp-0C]
 005CFB4C    mov         edx,dword ptr [ebp-8]
 005CFB4F    mov         eax,dword ptr [ebp-4]
 005CFB52    call        005FB90C
 005CFB57    mov         eax,dword ptr [ebp-4]
 005CFB5A    call        TForm.IsStoredClientHeight
 005CFB5F    test        al,al
>005CFB61    je          005CFBA9
 005CFB63    mov         eax,dword ptr [ebp-4]
 005CFB66    call        TControl.GetClientHeight
 005CFB6B    mov         dword ptr [ebp-10],eax
 005CFB6E    mov         eax,dword ptr [ebp-0C]
 005CFB71    push        eax
 005CFB72    mov         eax,dword ptr [ebp-8]
 005CFB75    push        eax
 005CFB76    mov         eax,dword ptr [ebp-4]
 005CFB79    call        TControl.GetClientWidth
 005CFB7E    push        eax
 005CFB7F    call        KERNEL32.MulDiv
 005CFB84    mov         edx,eax
 005CFB86    mov         eax,dword ptr [ebp-4]
 005CFB89    call        TForm.SetClientWidth
 005CFB8E    mov         eax,dword ptr [ebp-0C]
 005CFB91    push        eax
 005CFB92    mov         eax,dword ptr [ebp-8]
 005CFB95    push        eax
 005CFB96    mov         eax,dword ptr [ebp-10]
 005CFB99    push        eax
 005CFB9A    call        KERNEL32.MulDiv
 005CFB9F    mov         edx,eax
 005CFBA1    mov         eax,dword ptr [ebp-4]
 005CFBA4    call        TForm.SetClientHeight
 005CFBA9    mov         eax,dword ptr [ebp-0C]
 005CFBAC    push        eax
 005CFBAD    mov         eax,dword ptr [ebp-8]
 005CFBB0    push        eax
 005CFBB1    mov         eax,dword ptr [ebp-4]
 005CFBB4    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005CFBB7    call        TFont.GetSize
 005CFBBC    push        eax
 005CFBBD    call        KERNEL32.MulDiv
 005CFBC2    mov         edx,eax
 005CFBC4    mov         eax,dword ptr [ebp-4]
 005CFBC7    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005CFBCA    call        TFont.SetSize
 005CFBCF    mov         esp,ebp
 005CFBD1    pop         ebp
 005CFBD2    ret
end;*}

//005CFBD4
{*procedure sub_005CFBD4(?:TCustomForm; ?:?);
begin
 005CFBD4    push        ebp
 005CFBD5    mov         ebp,esp
 005CFBD7    add         esp,0FFFFFFF8
 005CFBDA    mov         dword ptr [ebp-8],edx
 005CFBDD    mov         dword ptr [ebp-4],eax
 005CFBE0    mov         eax,[006E9DD8];^gvar_006ECDE0
 005CFBE5    cmp         byte ptr [eax],0
>005CFBE8    je          005CFC22
 005CFBEA    mov         eax,dword ptr [ebp-4]
 005CFBED    call        TWinControl.HandleAllocated
 005CFBF2    test        al,al
>005CFBF4    je          005CFC3C
 005CFBF6    mov         eax,dword ptr [ebp-4]
 005CFBF9    cmp         byte ptr [eax+229],3
>005CFC00    je          005CFC3C
 005CFC02    mov         eax,dword ptr [ebp-4]
 005CFC05    call        005D27C8
 005CFC0A    push        eax
 005CFC0B    push        1
 005CFC0D    push        80
 005CFC12    mov         eax,dword ptr [ebp-4]
 005CFC15    call        TWinControl.GetHandle
 005CFC1A    push        eax
 005CFC1B    call        USER32.SendMessageA
>005CFC20    jmp         005CFC3C
 005CFC22    mov         eax,dword ptr [ebp-4]
 005CFC25    call        TWinControl.GetHandle
 005CFC2A    push        eax
 005CFC2B    call        USER32.IsIconic
 005CFC30    test        eax,eax
>005CFC32    je          005CFC3C
 005CFC34    mov         eax,dword ptr [ebp-4]
 005CFC37    mov         edx,dword ptr [eax]
 005CFC39    call        dword ptr [edx+7C]
 005CFC3C    pop         ecx
 005CFC3D    pop         ecx
 005CFC3E    pop         ebp
 005CFC3F    ret
end;*}

//005CFC40
function TForm.IsStoredClientHeight(Value:Integer):Boolean;
begin
{*
 005CFC40    push        ebp
 005CFC41    mov         ebp,esp
 005CFC43    add         esp,0FFFFFFF8
 005CFC46    mov         dword ptr [ebp-4],eax
 005CFC49    mov         eax,dword ptr [ebp-4]
 005CFC4C    call        TForm.IsStoredHeight
 005CFC51    xor         al,1
 005CFC53    mov         byte ptr [ebp-5],al
 005CFC56    mov         al,byte ptr [ebp-5]
 005CFC59    pop         ecx
 005CFC5A    pop         ecx
 005CFC5B    pop         ebp
 005CFC5C    ret
*}
end;

//005CFC60
function TForm.IsStoredHeight(Value:Integer):Boolean;
begin
{*
 005CFC60    push        ebp
 005CFC61    mov         ebp,esp
 005CFC63    add         esp,0FFFFFFF8
 005CFC66    mov         dword ptr [ebp-4],eax
 005CFC69    mov         eax,dword ptr [ebp-4]
 005CFC6C    cmp         byte ptr [eax+210],0;TForm.FAutoScroll:Boolean
>005CFC73    jne         005CFC97
 005CFC75    mov         eax,dword ptr [ebp-4]
 005CFC78    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 005CFC7E    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>005CFC82    jne         005CFC97
 005CFC84    mov         eax,dword ptr [ebp-4]
 005CFC87    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 005CFC8D    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>005CFC91    jne         005CFC97
 005CFC93    xor         eax,eax
>005CFC95    jmp         005CFC99
 005CFC97    mov         al,1
 005CFC99    mov         byte ptr [ebp-5],al
 005CFC9C    mov         al,byte ptr [ebp-5]
 005CFC9F    pop         ecx
 005CFCA0    pop         ecx
 005CFCA1    pop         ebp
 005CFCA2    ret
*}
end;

//005CFCA4
function TForm.IsStoredAutoScroll(Value:Boolean):Boolean;
begin
{*
 005CFCA4    push        ebp
 005CFCA5    mov         ebp,esp
 005CFCA7    add         esp,0FFFFFFF8
 005CFCAA    mov         dword ptr [ebp-4],eax
 005CFCAD    mov         eax,dword ptr [ebp-4]
 005CFCB0    call        TForm.IsStoredActiveControl
 005CFCB5    test        al,al
>005CFCB7    je          005CFCDB
 005CFCB9    mov         eax,dword ptr [ebp-4]
 005CFCBC    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 005CFCC2    sub         al,2
>005CFCC4    je          005CFCCE
 005CFCC6    sub         al,3
>005CFCC8    je          005CFCCE
 005CFCCA    xor         eax,eax
>005CFCCC    jmp         005CFCD0
 005CFCCE    mov         al,1
 005CFCD0    mov         edx,dword ptr [ebp-4]
 005CFCD3    cmp         al,byte ptr [edx+210];TForm.FAutoScroll:Boolean
>005CFCD9    jne         005CFCDF
 005CFCDB    xor         eax,eax
>005CFCDD    jmp         005CFCE1
 005CFCDF    mov         al,1
 005CFCE1    mov         byte ptr [ebp-5],al
 005CFCE4    mov         al,byte ptr [ebp-5]
 005CFCE7    pop         ecx
 005CFCE8    pop         ecx
 005CFCE9    pop         ebp
 005CFCEA    ret
*}
end;

//005CFCEC
{*procedure TCustomForm.sub_005CFCEC(?:?);
begin
 005CFCEC    push        ebp
 005CFCED    mov         ebp,esp
 005CFCEF    add         esp,0FFFFFFF8
 005CFCF2    push        ebx
 005CFCF3    mov         dword ptr [ebp-8],edx
 005CFCF6    mov         dword ptr [ebp-4],eax
 005CFCF9    mov         eax,dword ptr [ebp-4]
 005CFCFC    cmp         word ptr [eax+292],0;TCustomForm.?f292:word
>005CFD04    je          005CFD1B
 005CFD06    mov         ecx,dword ptr [ebp-8]
 005CFD09    mov         ebx,dword ptr [ebp-4]
 005CFD0C    mov         edx,dword ptr [ebp-4]
 005CFD0F    mov         eax,dword ptr [ebx+294];TCustomForm.?f294:dword
 005CFD15    call        dword ptr [ebx+290];TCustomForm.FOnClose
 005CFD1B    pop         ebx
 005CFD1C    pop         ecx
 005CFD1D    pop         ecx
 005CFD1E    pop         ebp
 005CFD1F    ret
end;*}

//005CFD20
procedure TCustomForm.sub_005CFD20;
begin
{*
 005CFD20    push        ebp
 005CFD21    mov         ebp,esp
 005CFD23    push        ecx
 005CFD24    push        ebx
 005CFD25    mov         dword ptr [ebp-4],eax
 005CFD28    mov         eax,dword ptr [ebp-4]
 005CFD2B    cmp         word ptr [eax+2B2],0;TCustomForm.?f2B2:word
>005CFD33    je          005CFD47
 005CFD35    mov         ebx,dword ptr [ebp-4]
 005CFD38    mov         edx,dword ptr [ebp-4]
 005CFD3B    mov         eax,dword ptr [ebx+2B4];TCustomForm.?f2B4:dword
 005CFD41    call        dword ptr [ebx+2B0];TCustomForm.FOnHide
 005CFD47    pop         ebx
 005CFD48    pop         ecx
 005CFD49    pop         ebp
 005CFD4A    ret
*}
end;

//005CFD4C
procedure TCustomForm.sub_005CFD4C;
begin
{*
 005CFD4C    push        ebp
 005CFD4D    mov         ebp,esp
 005CFD4F    push        ecx
 005CFD50    push        ebx
 005CFD51    mov         dword ptr [ebp-4],eax
 005CFD54    mov         eax,dword ptr [ebp-4]
 005CFD57    cmp         word ptr [eax+2CA],0;TCustomForm.?f2CA:word
>005CFD5F    je          005CFD73
 005CFD61    mov         ebx,dword ptr [ebp-4]
 005CFD64    mov         edx,dword ptr [ebp-4]
 005CFD67    mov         eax,dword ptr [ebx+2CC];TCustomForm.?f2CC:dword
 005CFD6D    call        dword ptr [ebx+2C8];TCustomForm.FOnShow
 005CFD73    pop         ebx
 005CFD74    pop         ecx
 005CFD75    pop         ebp
 005CFD76    ret
*}
end;

//005CFD78
{*procedure sub_005CFD78(?:?);
begin
 005CFD78    push        ebp
 005CFD79    mov         ebp,esp
 005CFD7B    add         esp,0FFFFFFF8
 005CFD7E    mov         dword ptr [ebp-8],edx
 005CFD81    mov         dword ptr [ebp-4],eax
 005CFD84    mov         eax,dword ptr [ebp-4]
 005CFD87    call        TWinControl.GetHandle
 005CFD8C    push        eax
 005CFD8D    call        USER32.IsIconic
 005CFD92    test        eax,eax
>005CFD94    je          005CFE1C
 005CFD9A    push        0
 005CFD9C    push        0
 005CFD9E    push        0
 005CFDA0    push        0
 005CFDA2    mov         eax,dword ptr [ebp-8]
 005CFDA5    push        eax
 005CFDA6    call        USER32.SetRect
 005CFDAB    push        0EC
 005CFDAD    mov         eax,dword ptr [ebp-4]
 005CFDB0    call        TWinControl.GetHandle
 005CFDB5    push        eax
 005CFDB6    call        USER32.GetWindowLongA
 005CFDBB    push        eax
 005CFDBC    mov         eax,dword ptr [ebp-4]
 005CFDBF    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
 005CFDC6    setne       al
 005CFDC9    neg         al
 005CFDCB    sbb         eax,eax
 005CFDCD    push        eax
 005CFDCE    push        0F0
 005CFDD0    mov         eax,dword ptr [ebp-4]
 005CFDD3    call        TWinControl.GetHandle
 005CFDD8    push        eax
 005CFDD9    call        USER32.GetWindowLongA
 005CFDDE    push        eax
 005CFDDF    mov         eax,dword ptr [ebp-8]
 005CFDE2    push        eax
 005CFDE3    call        USER32.AdjustWindowRectEx
 005CFDE8    mov         eax,dword ptr [ebp-8]
 005CFDEB    mov         edx,dword ptr [ebp-4]
 005CFDEE    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 005CFDF1    sub         edx,dword ptr [eax+0C]
 005CFDF4    mov         eax,dword ptr [ebp-8]
 005CFDF7    add         edx,dword ptr [eax+4]
 005CFDFA    push        edx
 005CFDFB    mov         eax,dword ptr [ebp-8]
 005CFDFE    mov         edx,dword ptr [ebp-4]
 005CFE01    mov         edx,dword ptr [edx+48];TCustomForm.Width:Integer
 005CFE04    sub         edx,dword ptr [eax+8]
 005CFE07    mov         eax,dword ptr [ebp-8]
 005CFE0A    add         edx,dword ptr [eax]
 005CFE0C    push        edx
 005CFE0D    push        0
 005CFE0F    push        0
 005CFE11    mov         eax,dword ptr [ebp-8]
 005CFE14    push        eax
 005CFE15    call        USER32.SetRect
>005CFE1A    jmp         005CFE27
 005CFE1C    mov         edx,dword ptr [ebp-8]
 005CFE1F    mov         eax,dword ptr [ebp-4]
 005CFE22    call        005FC204
 005CFE27    pop         ecx
 005CFE28    pop         ecx
 005CFE29    pop         ebp
 005CFE2A    ret
end;*}

//005CFE2C
{*procedure TCustomForm.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);
begin
 005CFE2C    push        ebp
 005CFE2D    mov         ebp,esp
 005CFE2F    add         esp,0FFFFFFEC
 005CFE32    push        esi
 005CFE33    mov         dword ptr [ebp-8],edx
 005CFE36    mov         dword ptr [ebp-4],eax
 005CFE39    push        dword ptr [ebp+0C]
 005CFE3C    push        dword ptr [ebp+8]
 005CFE3F    mov         edx,dword ptr [ebp-8]
 005CFE42    mov         eax,dword ptr [ebp-4]
 005CFE45    call        TWinControl.GetChildren
 005CFE4A    mov         eax,dword ptr [ebp-8]
 005CFE4D    cmp         eax,dword ptr [ebp-4]
>005CFE50    jne         005CFE99
 005CFE52    mov         eax,dword ptr [ebp-4]
 005CFE55    call        00650B4C
 005CFE5A    dec         eax
 005CFE5B    test        eax,eax
>005CFE5D    jl          005CFE99
 005CFE5F    inc         eax
 005CFE60    mov         dword ptr [ebp-14],eax
 005CFE63    mov         dword ptr [ebp-0C],0
 005CFE6A    mov         edx,dword ptr [ebp-0C]
 005CFE6D    mov         eax,dword ptr [ebp-4]
 005CFE70    call        00650B0C
 005CFE75    mov         dword ptr [ebp-10],eax
 005CFE78    mov         eax,dword ptr [ebp-10]
 005CFE7B    mov         si,0FFF1
 005CFE7F    call        @CallDynaInst
 005CFE84    test        al,al
>005CFE86    jne         005CFE91
 005CFE88    mov         edx,dword ptr [ebp-10]
 005CFE8B    mov         eax,dword ptr [ebp+0C]
 005CFE8E    call        dword ptr [ebp+8]
 005CFE91    inc         dword ptr [ebp-0C]
 005CFE94    dec         dword ptr [ebp-14]
>005CFE97    jne         005CFE6A
 005CFE99    pop         esi
 005CFE9A    mov         esp,ebp
 005CFE9C    pop         ebp
 005CFE9D    ret         8
end;*}

//005CFEA0
{*function sub_005CFEA0:?;
begin
 005CFEA0    push        ebp
 005CFEA1    mov         ebp,esp
 005CFEA3    add         esp,0FFFFFFF8
 005CFEA6    push        ebx
 005CFEA7    mov         dword ptr [ebp-4],eax
 005CFEAA    mov         eax,dword ptr [ebp-4]
 005CFEAD    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005CFEB4    jne         005CFECC
 005CFEB6    mov         eax,dword ptr [ebp-4]
 005CFEB9    mov         edx,dword ptr [eax]
 005CFEBB    call        dword ptr [edx+58];TCustomForm.sub_005F66CC
 005CFEBE    mov         ebx,eax
 005CFEC0    mov         eax,dword ptr [ebp-4]
 005CFEC3    call        TObject.ClassType
 005CFEC8    cmp         ebx,eax
>005CFECA    je          005CFED0
 005CFECC    xor         eax,eax
>005CFECE    jmp         005CFED2
 005CFED0    mov         al,1
 005CFED2    mov         byte ptr [ebp-5],al
 005CFED5    mov         al,byte ptr [ebp-5]
 005CFED8    pop         ebx
 005CFED9    pop         ecx
 005CFEDA    pop         ecx
 005CFEDB    pop         ebp
 005CFEDC    ret
end;*}

//005CFEE0
{*procedure TCustomForm.sub_005CFEE0(?:?; ?:?);
begin
 005CFEE0    push        ebp
 005CFEE1    mov         ebp,esp
 005CFEE3    add         esp,0FFFFFFE8
 005CFEE6    push        esi
 005CFEE7    mov         dword ptr [ebp-0C],ecx
 005CFEEA    mov         dword ptr [ebp-8],edx
 005CFEED    mov         dword ptr [ebp-4],eax
 005CFEF0    mov         eax,dword ptr [ebp-8]
 005CFEF3    mov         edx,dword ptr ds:[5EE128];TControl
 005CFEF9    call        @IsClass
 005CFEFE    test        al,al
>005CFF00    je          005CFF12
 005CFF02    mov         ecx,dword ptr [ebp-0C]
 005CFF05    mov         edx,dword ptr [ebp-8]
 005CFF08    mov         eax,dword ptr [ebp-4]
 005CFF0B    call        TWinControl.sub_005FC90C
>005CFF10    jmp         005CFF74
 005CFF12    mov         eax,dword ptr [ebp-4]
 005CFF15    call        005F7DC4
 005CFF1A    sub         dword ptr [ebp-0C],eax
 005CFF1D    mov         dword ptr [ebp-14],0FFFFFFFF
 005CFF24    mov         eax,dword ptr [ebp-4]
 005CFF27    call        00650B4C
 005CFF2C    dec         eax
 005CFF2D    test        eax,eax
>005CFF2F    jl          005CFF74
 005CFF31    inc         eax
 005CFF32    mov         dword ptr [ebp-18],eax
 005CFF35    mov         dword ptr [ebp-10],0
 005CFF3C    mov         edx,dword ptr [ebp-10]
 005CFF3F    mov         eax,dword ptr [ebp-4]
 005CFF42    call        00650B0C
 005CFF47    mov         si,0FFF1
 005CFF4B    call        @CallDynaInst
 005CFF50    test        al,al
>005CFF52    jne         005CFF6C
 005CFF54    inc         dword ptr [ebp-14]
 005CFF57    mov         eax,dword ptr [ebp-14]
 005CFF5A    cmp         eax,dword ptr [ebp-0C]
>005CFF5D    jne         005CFF6C
 005CFF5F    mov         edx,dword ptr [ebp-10]
 005CFF62    mov         eax,dword ptr [ebp-8]
 005CFF65    call        00650B78
>005CFF6A    jmp         005CFF74
 005CFF6C    inc         dword ptr [ebp-10]
 005CFF6F    dec         dword ptr [ebp-18]
>005CFF72    jne         005CFF3C
 005CFF74    pop         esi
 005CFF75    mov         esp,ebp
 005CFF77    pop         ebp
 005CFF78    ret
end;*}

//005CFF7C
procedure TForm.SetParentBiDiMode(Value:Boolean);
begin
{*
 005CFF7C    push        ebp
 005CFF7D    mov         ebp,esp
 005CFF7F    add         esp,0FFFFFFF8
 005CFF82    mov         byte ptr [ebp-5],dl
 005CFF85    mov         dword ptr [ebp-4],eax
 005CFF88    mov         eax,dword ptr [ebp-4]
 005CFF8B    mov         al,byte ptr [eax+60];TForm.FParentBiDiMode:Boolean
 005CFF8E    cmp         al,byte ptr [ebp-5]
>005CFF91    je          005CFFB8
 005CFF93    mov         dl,byte ptr [ebp-5]
 005CFF96    mov         eax,dword ptr [ebp-4]
 005CFF99    call        TCheckListBox.SetParentBiDiMode
 005CFF9E    mov         eax,dword ptr [ebp-4]
 005CFFA1    cmp         dword ptr [eax+30],0;TForm.FParent:TWinControl
>005CFFA5    jne         005CFFB8
 005CFFA7    push        0
 005CFFA9    xor         ecx,ecx
 005CFFAB    mov         edx,0B03D
 005CFFB0    mov         eax,dword ptr [ebp-4]
 005CFFB3    call        005F4FA8
 005CFFB8    pop         ecx
 005CFFB9    pop         ecx
 005CFFBA    pop         ebp
 005CFFBB    ret
*}
end;

//005CFFBC
procedure TForm.SetClientWidth(Value:Integer);
begin
{*
 005CFFBC    push        ebp
 005CFFBD    mov         ebp,esp
 005CFFBF    add         esp,0FFFFFFF8
 005CFFC2    mov         dword ptr [ebp-8],edx
 005CFFC5    mov         dword ptr [ebp-4],eax
 005CFFC8    mov         eax,dword ptr [ebp-4]
 005CFFCB    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>005CFFCF    je          005CFFF6
 005CFFD1    mov         eax,dword ptr [ebp-8]
 005CFFD4    mov         edx,dword ptr [ebp-4]
 005CFFD7    mov         dword ptr [edx+268],eax;TForm.FClientWidth:Integer
 005CFFDD    mov         al,[005D0008];0x4 gvar_005D0008
 005CFFE2    mov         edx,dword ptr [ebp-4]
 005CFFE5    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 005CFFEB    mov         edx,dword ptr [ebp-4]
 005CFFEE    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>005CFFF4    jmp         005D0001
 005CFFF6    mov         edx,dword ptr [ebp-8]
 005CFFF9    mov         eax,dword ptr [ebp-4]
 005CFFFC    call        005F2EF8
 005D0001    pop         ecx
 005D0002    pop         ecx
 005D0003    pop         ebp
 005D0004    ret
*}
end;

//005D000C
procedure TForm.SetClientHeight(Value:Integer);
begin
{*
 005D000C    push        ebp
 005D000D    mov         ebp,esp
 005D000F    add         esp,0FFFFFFF8
 005D0012    mov         dword ptr [ebp-8],edx
 005D0015    mov         dword ptr [ebp-4],eax
 005D0018    mov         eax,dword ptr [ebp-4]
 005D001B    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>005D001F    je          005D0046
 005D0021    mov         eax,dword ptr [ebp-8]
 005D0024    mov         edx,dword ptr [ebp-4]
 005D0027    mov         dword ptr [edx+26C],eax;TForm.FClientHeight:Integer
 005D002D    mov         al,[005D0058];0x8 gvar_005D0058
 005D0032    mov         edx,dword ptr [ebp-4]
 005D0035    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 005D003B    mov         edx,dword ptr [ebp-4]
 005D003E    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>005D0044    jmp         005D0051
 005D0046    mov         edx,dword ptr [ebp-8]
 005D0049    mov         eax,dword ptr [ebp-4]
 005D004C    call        005F2F4C
 005D0051    pop         ecx
 005D0052    pop         ecx
 005D0053    pop         ebp
 005D0054    ret
*}
end;

//005D005C
procedure TCustomForm.SetVisible(Value:Boolean);
begin
{*
 005D005C    push        ebp
 005D005D    mov         ebp,esp
 005D005F    add         esp,0FFFFFFF8
 005D0062    mov         byte ptr [ebp-5],dl
 005D0065    mov         dword ptr [ebp-4],eax
 005D0068    mov         eax,dword ptr [ebp-4]
 005D006B    test        byte ptr [eax+2EC],1
>005D0072    je          005D0092
 005D0074    cmp         byte ptr [ebp-5],0
>005D0078    je          005D0086
 005D007A    mov         eax,dword ptr [ebp-4]
 005D007D    or          byte ptr [eax+2EC],2
>005D0084    jmp         005D00B6
 005D0086    mov         eax,dword ptr [ebp-4]
 005D0089    and         byte ptr [eax+2EC],0FD
>005D0090    jmp         005D00B6
 005D0092    cmp         byte ptr [ebp-5],0
>005D0096    je          005D00AB
 005D0098    mov         eax,dword ptr [ebp-4]
 005D009B    mov         al,byte ptr [eax+57]
 005D009E    cmp         al,byte ptr [ebp-5]
>005D00A1    je          005D00AB
 005D00A3    mov         eax,dword ptr [ebp-4]
 005D00A6    call        005D1580
 005D00AB    mov         dl,byte ptr [ebp-5]
 005D00AE    mov         eax,dword ptr [ebp-4]
 005D00B1    call        TCCalendar.SetVisible
 005D00B6    pop         ecx
 005D00B7    pop         ecx
 005D00B8    pop         ebp
 005D00B9    ret
*}
end;

//005D00BC
procedure TCustomForm.sub_005D00BC;
begin
{*
 005D00BC    push        ebp
 005D00BD    mov         ebp,esp
 005D00BF    add         esp,0FFFFFFF8
 005D00C2    xor         edx,edx
 005D00C4    mov         dword ptr [ebp-8],edx
 005D00C7    mov         dword ptr [ebp-4],eax
 005D00CA    xor         eax,eax
 005D00CC    push        ebp
 005D00CD    push        5D0124
 005D00D2    push        dword ptr fs:[eax]
 005D00D5    mov         dword ptr fs:[eax],esp
 005D00D8    mov         eax,dword ptr [ebp-4]
 005D00DB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D00E2    jne         005D010E
 005D00E4    mov         eax,dword ptr [ebp-4]
 005D00E7    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>005D00EB    je          005D010E
 005D00ED    lea         edx,[ebp-8]
 005D00F0    mov         eax,[006E9E40];^gvar_0063CA90
 005D00F5    call        LoadResString
 005D00FA    mov         ecx,dword ptr [ebp-8]
 005D00FD    mov         dl,1
 005D00FF    mov         eax,[00642244];EInvalidOperation
 005D0104    call        Exception.Create;EInvalidOperation.Create
 005D0109    call        @RaiseExcept
 005D010E    xor         eax,eax
 005D0110    pop         edx
 005D0111    pop         ecx
 005D0112    pop         ecx
 005D0113    mov         dword ptr fs:[eax],edx
 005D0116    push        5D012B
 005D011B    lea         eax,[ebp-8]
 005D011E    call        @LStrClr
 005D0123    ret
>005D0124    jmp         @HandleFinally
>005D0129    jmp         005D011B
 005D012B    pop         ecx
 005D012C    pop         ecx
 005D012D    pop         ebp
 005D012E    ret
*}
end;

//005D0130
{*function sub_005D0130(?:?; ?:?):?;
begin
 005D0130    push        ebp
 005D0131    mov         ebp,esp
 005D0133    add         esp,0FFFFFFF0
 005D0136    mov         dword ptr [ebp-10],ecx
 005D0139    mov         dword ptr [ebp-0C],edx
 005D013C    mov         dword ptr [ebp-4],eax
 005D013F    mov         byte ptr [ebp-5],0
 005D0143    mov         al,byte ptr [ebp-5]
 005D0146    mov         esp,ebp
 005D0148    pop         ebp
 005D0149    ret
end;*}

//005D014C
{*procedure sub_005D014C(?:?);
begin
 005D014C    push        ebp
 005D014D    mov         ebp,esp
 005D014F    add         esp,0FFFFFFF8
 005D0152    mov         dword ptr [ebp-8],edx
 005D0155    mov         dword ptr [ebp-4],eax
 005D0158    mov         eax,dword ptr [ebp-4]
 005D015B    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 005D015E    cmp         eax,dword ptr [ebp-8]
>005D0161    je          005D0198
 005D0163    mov         eax,dword ptr [ebp-8]
 005D0166    cmp         eax,dword ptr [ebp-4]
>005D0169    je          005D0198
 005D016B    mov         eax,dword ptr [ebp-4]
 005D016E    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D0172    jne         005D017C
 005D0174    mov         eax,dword ptr [ebp-4]
 005D0177    call        005F8828
 005D017C    mov         edx,dword ptr [ebp-8]
 005D017F    mov         eax,dword ptr [ebp-4]
 005D0182    call        005F34DC
 005D0187    mov         eax,dword ptr [ebp-4]
 005D018A    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D018E    jne         005D0198
 005D0190    mov         eax,dword ptr [ebp-4]
 005D0193    call        005F8A20
 005D0198    pop         ecx
 005D0199    pop         ecx
 005D019A    pop         ebp
 005D019B    ret
end;*}

//005D019C
{*procedure sub_005D019C(?:?; ?:?; ?:?);
begin
 005D019C    push        ebp
 005D019D    mov         ebp,esp
 005D019F    add         esp,0FFFFFFF4
 005D01A2    push        ebx
 005D01A3    mov         dword ptr [ebp-0C],ecx
 005D01A6    mov         dword ptr [ebp-8],edx
 005D01A9    mov         dword ptr [ebp-4],eax
 005D01AC    mov         eax,dword ptr [ebp+8]
 005D01AF    push        eax
 005D01B0    mov         ecx,dword ptr [ebp-0C]
 005D01B3    mov         edx,dword ptr [ebp-8]
 005D01B6    mov         eax,dword ptr [ebp-4]
 005D01B9    call        00650900
 005D01BE    mov         eax,dword ptr [ebp-4]
 005D01C1    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>005D01C8    je          005D01E2
 005D01CA    mov         eax,dword ptr [ebp+8]
 005D01CD    push        eax
 005D01CE    mov         ecx,dword ptr [ebp-0C]
 005D01D1    mov         edx,dword ptr [ebp-8]
 005D01D4    mov         eax,dword ptr [ebp-4]
 005D01D7    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 005D01DD    mov         ebx,dword ptr [eax]
 005D01DF    call        dword ptr [ebx+2C]
 005D01E2    pop         ebx
 005D01E3    mov         esp,ebp
 005D01E5    pop         ebp
 005D01E6    ret         4
end;*}

//005D01EC
{*procedure sub_005D01EC(?:?);
begin
 005D01EC    push        ebp
 005D01ED    mov         ebp,esp
 005D01EF    add         esp,0FFFFFFD4
 005D01F2    push        ebx
 005D01F3    push        esi
 005D01F4    mov         dword ptr [ebp-8],edx
 005D01F7    mov         dword ptr [ebp-4],eax
 005D01FA    mov         eax,dword ptr [ebp-8]
 005D01FD    mov         eax,dword ptr [eax]
 005D01FF    cmp         eax,46
>005D0202    jg          005D0227
>005D0204    je          005D0318
 005D020A    add         eax,0FFFFFFFA
 005D020D    sub         eax,3
>005D0210    jb          005D023E
 005D0212    sub         eax,22
>005D0215    je          005D039F
 005D021B    dec         eax
>005D021C    je          005D04A7
>005D0222    jmp         005D05EB
 005D0227    sub         eax,0B01A
>005D022C    je          005D02F7
 005D0232    dec         eax
>005D0233    je          005D02D6
>005D0239    jmp         005D05EB
 005D023E    cmp         byte ptr ds:[6E3FDC],0;gvar_006E3FDC
>005D0245    je          005D0669
 005D024B    mov         eax,dword ptr [ebp-8]
 005D024E    cmp         dword ptr [eax],7
>005D0251    jne         005D065E
 005D0257    mov         eax,dword ptr [ebp-4]
 005D025A    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D025E    jne         005D065E
 005D0264    xor         eax,eax
 005D0266    mov         dword ptr [ebp-0C],eax
 005D0269    mov         eax,dword ptr [ebp-4]
 005D026C    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>005D0273    jne         005D0293
 005D0275    mov         eax,dword ptr [ebp-4]
 005D0278    call        005D0B8C
 005D027D    test        eax,eax
>005D027F    je          005D02BE
 005D0281    mov         eax,dword ptr [ebp-4]
 005D0284    call        005D0B8C
 005D0289    call        TWinControl.GetHandle
 005D028E    mov         dword ptr [ebp-0C],eax
>005D0291    jmp         005D02BE
 005D0293    mov         eax,dword ptr [ebp-4]
 005D0296    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>005D029D    je          005D02BE
 005D029F    mov         eax,dword ptr [ebp-4]
 005D02A2    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D02A8    cmp         eax,dword ptr [ebp-4]
>005D02AB    je          005D02BE
 005D02AD    mov         eax,dword ptr [ebp-4]
 005D02B0    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D02B6    call        TWinControl.GetHandle
 005D02BB    mov         dword ptr [ebp-0C],eax
 005D02BE    cmp         dword ptr [ebp-0C],0
>005D02C2    je          005D065E
 005D02C8    mov         eax,dword ptr [ebp-0C]
 005D02CB    push        eax
 005D02CC    call        USER32.SetFocus
>005D02D1    jmp         005D0669
 005D02D6    mov         eax,dword ptr [ebp-4]
 005D02D9    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005D02E0    je          005D065E
 005D02E6    mov         eax,dword ptr [ebp-4]
 005D02E9    mov         si,0FFB1
 005D02ED    call        @CallDynaInst;TCustomForm.sub_005D2758
>005D02F2    jmp         005D065E
 005D02F7    mov         eax,dword ptr [ebp-4]
 005D02FA    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>005D0301    je          005D065E
 005D0307    mov         eax,dword ptr [ebp-4]
 005D030A    mov         si,0FFB3
 005D030E    call        @CallDynaInst;TCustomForm.sub_005D2714
>005D0313    jmp         005D065E
 005D0318    mov         eax,dword ptr [ebp-4]
 005D031B    mov         ax,word ptr [eax+1C];TCustomForm.FComponentState:TComponentState
 005D031F    and         ax,word ptr ds:[5D0670];0x11 gvar_005D0670
 005D0326    mov         dx,word ptr ds:[5D0674];0x1 gvar_005D0674
 005D032D    cmp         dx,ax
>005D0330    jne         005D065E
 005D0336    mov         eax,dword ptr [ebp-4]
 005D0339    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 005D033F    dec         eax
 005D0340    sub         al,2
>005D0342    jae         005D0360
 005D0344    mov         eax,dword ptr [ebp-4]
 005D0347    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>005D034E    je          005D0360
 005D0350    mov         eax,dword ptr [ebp-8]
 005D0353    mov         eax,dword ptr [eax+8]
 005D0356    mov         dword ptr [ebp-20],eax
 005D0359    mov         eax,dword ptr [ebp-20]
 005D035C    or          dword ptr [eax+18],2
 005D0360    mov         eax,dword ptr [ebp-4]
 005D0363    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 005D0369    sub         al,1
>005D036B    je          005D0375
 005D036D    sub         al,2
>005D036F    jne         005D065E
 005D0375    mov         eax,dword ptr [ebp-4]
 005D0378    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 005D037E    sub         al,2
>005D0380    je          005D038A
 005D0382    sub         al,3
>005D0384    jne         005D065E
 005D038A    mov         eax,dword ptr [ebp-8]
 005D038D    mov         eax,dword ptr [eax+8]
 005D0390    mov         dword ptr [ebp-24],eax
 005D0393    mov         eax,dword ptr [ebp-24]
 005D0396    or          dword ptr [eax+18],1
>005D039A    jmp         005D065E
 005D039F    mov         eax,dword ptr [ebp-8]
 005D03A2    mov         eax,dword ptr [eax+8]
 005D03A5    mov         dword ptr [ebp-28],eax
 005D03A8    mov         eax,dword ptr [ebp-28]
 005D03AB    cmp         dword ptr [eax],1
>005D03AE    jne         005D065E
 005D03B4    mov         eax,dword ptr [ebp-4]
 005D03B7    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D03BE    je          005D065E
 005D03C4    mov         eax,dword ptr [ebp-28]
 005D03C7    mov         edx,dword ptr [eax+8]
 005D03CA    mov         eax,dword ptr [ebp-4]
 005D03CD    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D03D3    xor         ecx,ecx
 005D03D5    call        005A7480
 005D03DA    mov         dword ptr [ebp-14],eax
 005D03DD    cmp         dword ptr [ebp-14],0
>005D03E1    je          005D065E
 005D03E7    mov         dl,1
 005D03E9    mov         eax,[005ED808];TControlCanvas
 005D03EE    call        TCanvas.Create;TControlCanvas.Create
 005D03F3    mov         dword ptr [ebp-18],eax
 005D03F6    xor         eax,eax
 005D03F8    push        ebp
 005D03F9    push        5D04A0
 005D03FE    push        dword ptr fs:[eax]
 005D0401    mov         dword ptr fs:[eax],esp
 005D0404    mov         eax,dword ptr [ebp-28]
 005D0407    mov         eax,dword ptr [eax+18]
 005D040A    push        eax
 005D040B    call        GDI32.SaveDC
 005D0410    mov         dword ptr [ebp-10],eax
 005D0413    xor         eax,eax
 005D0415    push        ebp
 005D0416    push        5D0483
 005D041B    push        dword ptr fs:[eax]
 005D041E    mov         dword ptr fs:[eax],esp
 005D0421    mov         eax,dword ptr [ebp-28]
 005D0424    mov         edx,dword ptr [eax+18]
 005D0427    mov         eax,dword ptr [ebp-18]
 005D042A    call        TCanvas.SetHandle
 005D042F    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0434    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D043A    mov         eax,dword ptr [ebp-18]
 005D043D    call        TCanvas.SetFont
 005D0442    mov         eax,dword ptr [ebp-28]
 005D0445    mov         ax,word ptr [eax+10]
 005D0449    push        eax
 005D044A    mov         eax,dword ptr [ebp-28]
 005D044D    lea         ecx,[eax+1C]
 005D0450    mov         edx,dword ptr [ebp-18]
 005D0453    mov         eax,dword ptr [ebp-14]
 005D0456    call        005A8FDC
 005D045B    xor         eax,eax
 005D045D    pop         edx
 005D045E    pop         ecx
 005D045F    pop         ecx
 005D0460    mov         dword ptr fs:[eax],edx
 005D0463    push        5D048A
 005D0468    xor         edx,edx
 005D046A    mov         eax,dword ptr [ebp-18]
 005D046D    call        TCanvas.SetHandle
 005D0472    mov         eax,dword ptr [ebp-10]
 005D0475    push        eax
 005D0476    mov         eax,dword ptr [ebp-28]
 005D0479    mov         eax,dword ptr [eax+18]
 005D047C    push        eax
 005D047D    call        GDI32.RestoreDC
 005D0482    ret
>005D0483    jmp         @HandleFinally
>005D0488    jmp         005D0468
 005D048A    xor         eax,eax
 005D048C    pop         edx
 005D048D    pop         ecx
 005D048E    pop         ecx
 005D048F    mov         dword ptr fs:[eax],edx
 005D0492    push        5D0669
 005D0497    mov         eax,dword ptr [ebp-18]
 005D049A    call        TObject.Free
 005D049F    ret
>005D04A0    jmp         @HandleFinally
>005D04A5    jmp         005D0497
 005D04A7    mov         eax,dword ptr [ebp-8]
 005D04AA    mov         eax,dword ptr [eax+8]
 005D04AD    mov         dword ptr [ebp-2C],eax
 005D04B0    mov         eax,dword ptr [ebp-2C]
 005D04B3    cmp         dword ptr [eax],1
>005D04B6    jne         005D065E
 005D04BC    mov         eax,dword ptr [ebp-4]
 005D04BF    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D04C6    je          005D065E
 005D04CC    mov         eax,dword ptr [ebp-2C]
 005D04CF    mov         edx,dword ptr [eax+8]
 005D04D2    mov         eax,dword ptr [ebp-4]
 005D04D5    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D04DB    xor         ecx,ecx
 005D04DD    call        005A7480
 005D04E2    mov         dword ptr [ebp-14],eax
 005D04E5    cmp         dword ptr [ebp-14],0
>005D04E9    je          005D065E
 005D04EF    mov         eax,dword ptr [ebp-4]
 005D04F2    call        TWinControl.GetHandle
 005D04F7    push        eax
 005D04F8    call        USER32.GetWindowDC
 005D04FD    mov         dword ptr [ebp-1C],eax
 005D0500    xor         eax,eax
 005D0502    push        ebp
 005D0503    push        5D05E4
 005D0508    push        dword ptr fs:[eax]
 005D050B    mov         dword ptr fs:[eax],esp
 005D050E    mov         dl,1
 005D0510    mov         eax,[005ED808];TControlCanvas
 005D0515    call        TCanvas.Create;TControlCanvas.Create
 005D051A    mov         dword ptr [ebp-18],eax
 005D051D    xor         eax,eax
 005D051F    push        ebp
 005D0520    push        5D05BD
 005D0525    push        dword ptr fs:[eax]
 005D0528    mov         dword ptr fs:[eax],esp
 005D052B    mov         eax,dword ptr [ebp-1C]
 005D052E    push        eax
 005D052F    call        GDI32.SaveDC
 005D0534    mov         dword ptr [ebp-10],eax
 005D0537    xor         eax,eax
 005D0539    push        ebp
 005D053A    push        5D05A0
 005D053F    push        dword ptr fs:[eax]
 005D0542    mov         dword ptr fs:[eax],esp
 005D0545    mov         edx,dword ptr [ebp-1C]
 005D0548    mov         eax,dword ptr [ebp-18]
 005D054B    call        TCanvas.SetHandle
 005D0550    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0555    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D055B    mov         eax,dword ptr [ebp-18]
 005D055E    call        TCanvas.SetFont
 005D0563    mov         eax,dword ptr [ebp-2C]
 005D0566    add         eax,10
 005D0569    push        eax
 005D056A    mov         eax,dword ptr [ebp-2C]
 005D056D    lea         ecx,[eax+0C]
 005D0570    mov         edx,dword ptr [ebp-18]
 005D0573    mov         eax,dword ptr [ebp-14]
 005D0576    mov         ebx,dword ptr [eax]
 005D0578    call        dword ptr [ebx+38]
 005D057B    xor         eax,eax
 005D057D    pop         edx
 005D057E    pop         ecx
 005D057F    pop         ecx
 005D0580    mov         dword ptr fs:[eax],edx
 005D0583    push        5D05A7
 005D0588    xor         edx,edx
 005D058A    mov         eax,dword ptr [ebp-18]
 005D058D    call        TCanvas.SetHandle
 005D0592    mov         eax,dword ptr [ebp-10]
 005D0595    push        eax
 005D0596    mov         eax,dword ptr [ebp-1C]
 005D0599    push        eax
 005D059A    call        GDI32.RestoreDC
 005D059F    ret
>005D05A0    jmp         @HandleFinally
>005D05A5    jmp         005D0588
 005D05A7    xor         eax,eax
 005D05A9    pop         edx
 005D05AA    pop         ecx
 005D05AB    pop         ecx
 005D05AC    mov         dword ptr fs:[eax],edx
 005D05AF    push        5D05C4
 005D05B4    mov         eax,dword ptr [ebp-18]
 005D05B7    call        TObject.Free
 005D05BC    ret
>005D05BD    jmp         @HandleFinally
>005D05C2    jmp         005D05B4
 005D05C4    xor         eax,eax
 005D05C6    pop         edx
 005D05C7    pop         ecx
 005D05C8    pop         ecx
 005D05C9    mov         dword ptr fs:[eax],edx
 005D05CC    push        5D0669
 005D05D1    mov         eax,dword ptr [ebp-1C]
 005D05D4    push        eax
 005D05D5    mov         eax,dword ptr [ebp-4]
 005D05D8    call        TWinControl.GetHandle
 005D05DD    push        eax
 005D05DE    call        USER32.ReleaseDC
 005D05E3    ret
>005D05E4    jmp         @HandleFinally
>005D05E9    jmp         005D05D1
 005D05EB    mov         eax,dword ptr [ebp-8]
 005D05EE    mov         eax,dword ptr [eax]
 005D05F0    cmp         eax,dword ptr ds:[6ECD88];0x0 gvar_006ECD88:Longword
>005D05F6    jne         005D065E
 005D05F8    push        0
 005D05FA    xor         ecx,ecx
 005D05FC    mov         edx,0B025
 005D0601    mov         eax,dword ptr [ebp-4]
 005D0604    call        005F4FA8
 005D0609    push        0
 005D060B    xor         ecx,ecx
 005D060D    mov         edx,0B024
 005D0612    mov         eax,dword ptr [ebp-4]
 005D0615    call        005F4FA8
 005D061A    push        0
 005D061C    xor         ecx,ecx
 005D061E    mov         edx,0B035
 005D0623    mov         eax,dword ptr [ebp-4]
 005D0626    call        005F4FA8
 005D062B    push        0
 005D062D    xor         ecx,ecx
 005D062F    mov         edx,0B009
 005D0634    mov         eax,dword ptr [ebp-4]
 005D0637    call        005F4FA8
 005D063C    push        0
 005D063E    xor         ecx,ecx
 005D0640    mov         edx,0B008
 005D0645    mov         eax,dword ptr [ebp-4]
 005D0648    call        005F4FA8
 005D064D    push        0
 005D064F    xor         ecx,ecx
 005D0651    mov         edx,0B03D
 005D0656    mov         eax,dword ptr [ebp-4]
 005D0659    call        005F4FA8
 005D065E    mov         edx,dword ptr [ebp-8]
 005D0661    mov         eax,dword ptr [ebp-4]
 005D0664    call        005F8E0C
 005D0669    pop         esi
 005D066A    pop         ebx
 005D066B    mov         esp,ebp
 005D066D    pop         ebp
 005D066E    ret
end;*}

//005D0678
procedure Default;
begin
{*
 005D0678    push        ebp
 005D0679    mov         ebp,esp
 005D067B    mov         eax,dword ptr [ebp+8]
 005D067E    mov         eax,dword ptr [eax-8]
 005D0681    mov         eax,dword ptr [eax+8]
 005D0684    push        eax
 005D0685    mov         eax,dword ptr [ebp+8]
 005D0688    mov         eax,dword ptr [eax-8]
 005D068B    mov         eax,dword ptr [eax+4]
 005D068E    push        eax
 005D068F    mov         eax,dword ptr [ebp+8]
 005D0692    mov         eax,dword ptr [eax-8]
 005D0695    mov         eax,dword ptr [eax]
 005D0697    push        eax
 005D0698    mov         eax,dword ptr [ebp+8]
 005D069B    mov         eax,dword ptr [eax-4]
 005D069E    mov         eax,dword ptr [eax+254]
 005D06A4    push        eax
 005D06A5    mov         eax,dword ptr [ebp+8]
 005D06A8    mov         eax,dword ptr [eax-4]
 005D06AB    mov         eax,dword ptr [eax+274]
 005D06B1    push        eax
 005D06B2    call        USER32.CallWindowProcA
 005D06B7    mov         edx,dword ptr [ebp+8]
 005D06BA    mov         edx,dword ptr [edx-8]
 005D06BD    mov         dword ptr [edx+0C],eax
 005D06C0    pop         ebp
 005D06C1    ret
*}
end;

//005D06C4
function MaximizedChildren:Boolean;
begin
{*
 005D06C4    push        ebp
 005D06C5    mov         ebp,esp
 005D06C7    add         esp,0FFFFFFF4
 005D06CA    mov         eax,dword ptr [ebp+8]
 005D06CD    mov         eax,dword ptr [eax-4]
 005D06D0    call        TCustomForm.GetMDIChildCount
 005D06D5    dec         eax
 005D06D6    test        eax,eax
>005D06D8    jl          005D070A
 005D06DA    inc         eax
 005D06DB    mov         dword ptr [ebp-0C],eax
 005D06DE    mov         dword ptr [ebp-8],0
 005D06E5    mov         eax,dword ptr [ebp+8]
 005D06E8    mov         eax,dword ptr [eax-4]
 005D06EB    mov         edx,dword ptr [ebp-8]
 005D06EE    call        005D0C44
 005D06F3    cmp         byte ptr [eax+22B],2
>005D06FA    jne         005D0702
 005D06FC    mov         byte ptr [ebp-1],1
>005D0700    jmp         005D070E
 005D0702    inc         dword ptr [ebp-8]
 005D0705    dec         dword ptr [ebp-0C]
>005D0708    jne         005D06E5
 005D070A    mov         byte ptr [ebp-1],0
 005D070E    mov         al,byte ptr [ebp-1]
 005D0711    mov         esp,ebp
 005D0713    pop         ebp
 005D0714    ret
*}
end;

//005D0718
procedure TCustomForm.ClientWndProc(var Message:TMessage);
begin
{*
 005D0718    push        ebp
 005D0719    mov         ebp,esp
 005D071B    add         esp,0FFFFFFA4
 005D071E    mov         dword ptr [ebp-8],edx
 005D0721    mov         dword ptr [ebp-4],eax
 005D0724    mov         eax,dword ptr [ebp-8]
 005D0727    mov         eax,dword ptr [eax]
 005D0729    sub         eax,0F
>005D072C    je          005D07E5
 005D0732    sub         eax,5
>005D0735    je          005D0768
 005D0737    sub         eax,2B
>005D073A    je          005D07A1
 005D073C    sub         eax,45
>005D073F    jne         005D0854
 005D0745    push        ebp
 005D0746    call        Default
 005D074B    pop         ecx
 005D074C    mov         eax,dword ptr [ebp-8]
 005D074F    cmp         dword ptr [eax+0C],1
>005D0753    jne         005D085B
 005D0759    mov         eax,dword ptr [ebp-8]
 005D075C    mov         dword ptr [eax+0C],0FFFFFFFF
>005D0763    jmp         005D085B
 005D0768    mov         eax,dword ptr [ebp-4]
 005D076B    mov         eax,dword ptr [eax+170]
 005D0771    call        TBrush.GetHandle
 005D0776    push        eax
 005D0777    lea         edx,[ebp-5C]
 005D077A    mov         eax,dword ptr [ebp-4]
 005D077D    mov         ecx,dword ptr [eax]
 005D077F    call        dword ptr [ecx+44]
 005D0782    lea         eax,[ebp-5C]
 005D0785    push        eax
 005D0786    mov         eax,dword ptr [ebp-8]
 005D0789    mov         eax,dword ptr [eax+4]
 005D078C    push        eax
 005D078D    call        USER32.FillRect
 005D0792    mov         eax,dword ptr [ebp-8]
 005D0795    mov         dword ptr [eax+0C],1
>005D079C    jmp         005D085B
 005D07A1    push        ebp
 005D07A2    call        Default
 005D07A7    pop         ecx
 005D07A8    mov         eax,dword ptr [ebp-4]
 005D07AB    cmp         byte ptr [eax+22F],2
>005D07B2    jne         005D085B
 005D07B8    mov         eax,dword ptr [ebp-4]
 005D07BB    call        TCustomForm.GetMDIChildCount
 005D07C0    test        eax,eax
>005D07C2    je          005D07D3
 005D07C4    push        ebp
 005D07C5    call        MaximizedChildren
 005D07CA    pop         ecx
 005D07CB    test        al,al
>005D07CD    je          005D07D3
 005D07CF    xor         edx,edx
>005D07D1    jmp         005D07D5
 005D07D3    mov         dl,1
 005D07D5    mov         eax,dword ptr [ebp-4]
 005D07D8    mov         eax,dword ptr [eax+254]
 005D07DE    call        ShowMDIClientEdge
>005D07E3    jmp         005D085B
 005D07E5    mov         eax,dword ptr [ebp-8]
 005D07E8    mov         eax,dword ptr [eax+4]
 005D07EB    mov         dword ptr [ebp-0C],eax
 005D07EE    cmp         dword ptr [ebp-0C],0
>005D07F2    jne         005D080D
 005D07F4    lea         eax,[ebp-4C]
 005D07F7    push        eax
 005D07F8    mov         eax,dword ptr [ebp-4]
 005D07FB    mov         eax,dword ptr [eax+254]
 005D0801    push        eax
 005D0802    call        USER32.BeginPaint
 005D0807    mov         edx,dword ptr [ebp-8]
 005D080A    mov         dword ptr [edx+4],eax
 005D080D    xor         eax,eax
 005D080F    push        ebp
 005D0810    push        5D084D
 005D0815    push        dword ptr fs:[eax]
 005D0818    mov         dword ptr fs:[eax],esp
 005D081B    mov         edx,dword ptr [ebp-8]
 005D081E    mov         eax,dword ptr [ebp-4]
 005D0821    call        TWinControl.PaintHandler
 005D0826    xor         eax,eax
 005D0828    pop         edx
 005D0829    pop         ecx
 005D082A    pop         ecx
 005D082B    mov         dword ptr fs:[eax],edx
 005D082E    push        5D085B
 005D0833    cmp         dword ptr [ebp-0C],0
>005D0837    jne         005D084C
 005D0839    lea         eax,[ebp-4C]
 005D083C    push        eax
 005D083D    mov         eax,dword ptr [ebp-4]
 005D0840    mov         eax,dword ptr [eax+254]
 005D0846    push        eax
 005D0847    call        USER32.EndPaint
 005D084C    ret
>005D084D    jmp         @HandleFinally
>005D0852    jmp         005D0833
 005D0854    push        ebp
 005D0855    call        Default
 005D085A    pop         ecx
 005D085B    mov         esp,ebp
 005D085D    pop         ebp
 005D085E    ret
*}
end;

//005D0860
procedure TCustomForm.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 005D0860    push        ebp
 005D0861    mov         ebp,esp
 005D0863    add         esp,0FFFFFFF4
 005D0866    mov         dword ptr [ebp-0C],ecx
 005D0869    mov         dword ptr [ebp-8],edx
 005D086C    mov         dword ptr [ebp-4],eax
 005D086F    mov         ecx,dword ptr [ebp-0C]
 005D0872    mov         edx,dword ptr [ebp-8]
 005D0875    mov         eax,dword ptr [ebp-4]
 005D0878    call        TScrollingWinControl.AlignControls
 005D087D    mov         eax,dword ptr [ebp-4]
 005D0880    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>005D0887    je          005D08C2
 005D0889    push        14
 005D088B    mov         eax,dword ptr [ebp-0C]
 005D088E    mov         eax,dword ptr [eax+0C]
 005D0891    mov         edx,dword ptr [ebp-0C]
 005D0894    sub         eax,dword ptr [edx+4]
 005D0897    push        eax
 005D0898    mov         eax,dword ptr [ebp-0C]
 005D089B    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 005D089E    mov         edx,dword ptr [ebp-0C]
 005D08A1    sub         eax,dword ptr [edx]
 005D08A3    push        eax
 005D08A4    mov         eax,dword ptr [ebp-0C]
 005D08A7    mov         eax,dword ptr [eax+4];TRect.Top:Longint
 005D08AA    push        eax
 005D08AB    mov         eax,dword ptr [ebp-0C]
 005D08AE    mov         eax,dword ptr [eax]
 005D08B0    push        eax
 005D08B1    push        1
 005D08B3    mov         eax,dword ptr [ebp-4]
 005D08B6    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 005D08BC    push        eax
 005D08BD    call        USER32.SetWindowPos
 005D08C2    mov         esp,ebp
 005D08C4    pop         ebp
 005D08C5    ret
*}
end;

//005D08C8
procedure TCustomForm.CMBiDiModeChanged(Message:TMessage);
begin
{*
 005D08C8    push        ebp
 005D08C9    mov         ebp,esp
 005D08CB    add         esp,0FFFFFFEC
 005D08CE    mov         dword ptr [ebp-8],edx
 005D08D1    mov         dword ptr [ebp-4],eax
 005D08D4    mov         edx,dword ptr [ebp-8]
 005D08D7    mov         eax,dword ptr [ebp-4]
 005D08DA    call        TScrollingWinControl.CMBiDiModeChanged
 005D08DF    mov         eax,dword ptr [ebp-4]
 005D08E2    call        TWinControl.HandleAllocated
 005D08E7    test        al,al
>005D08E9    je          005D092C
 005D08EB    push        0EC
 005D08ED    mov         eax,dword ptr [ebp-4]
 005D08F0    call        TWinControl.GetHandle
 005D08F5    push        eax
 005D08F6    call        USER32.GetWindowLongA
 005D08FB    and         eax,0FFFFEFFF
 005D0900    and         eax,0FFFFDFFF
 005D0905    and         eax,0FFFFBFFF
 005D090A    mov         dword ptr [ebp-0C],eax
 005D090D    lea         edx,[ebp-0C]
 005D0910    mov         eax,dword ptr [ebp-4]
 005D0913    call        005F7F40
 005D0918    mov         eax,dword ptr [ebp-0C]
 005D091B    push        eax
 005D091C    push        0EC
 005D091E    mov         eax,dword ptr [ebp-4]
 005D0921    call        TWinControl.GetHandle
 005D0926    push        eax
 005D0927    call        USER32.SetWindowLongA
 005D092C    mov         eax,dword ptr [ebp-4]
 005D092F    call        00650B4C
 005D0934    dec         eax
 005D0935    test        eax,eax
>005D0937    jl          005D0976
 005D0939    inc         eax
 005D093A    mov         dword ptr [ebp-14],eax
 005D093D    mov         dword ptr [ebp-10],0
 005D0944    mov         edx,dword ptr [ebp-10]
 005D0947    mov         eax,dword ptr [ebp-4]
 005D094A    call        00650B0C
 005D094F    mov         edx,dword ptr ds:[5A22F4];TMenu
 005D0955    call        @IsClass
 005D095A    test        al,al
>005D095C    je          005D096E
 005D095E    mov         edx,dword ptr [ebp-10]
 005D0961    mov         eax,dword ptr [ebp-4]
 005D0964    call        00650B0C
 005D0969    call        005A835C
 005D096E    inc         dword ptr [ebp-10]
 005D0971    dec         dword ptr [ebp-14]
>005D0974    jne         005D0944
 005D0976    mov         esp,ebp
 005D0978    pop         ebp
 005D0979    ret
*}
end;

//005D097C
{*procedure TCustomForm.CMParentBiDiModeChanged(?:?);
begin
 005D097C    push        ebp
 005D097D    mov         ebp,esp
 005D097F    add         esp,0FFFFFFF8
 005D0982    mov         dword ptr [ebp-8],edx
 005D0985    mov         dword ptr [ebp-4],eax
 005D0988    mov         eax,dword ptr [ebp-4]
 005D098B    cmp         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
>005D0992    jne         005D0A0A
 005D0994    mov         eax,dword ptr [ebp-4]
 005D0997    mov         byte ptr [eax+244],1;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005D099E    xor         eax,eax
 005D09A0    push        ebp
 005D09A1    push        5D0A03
 005D09A6    push        dword ptr fs:[eax]
 005D09A9    mov         dword ptr fs:[eax],esp
 005D09AC    mov         eax,dword ptr [ebp-4]
 005D09AF    cmp         byte ptr [eax+60],0;TCustomForm.FParentBiDiMode:Boolean
>005D09B3    je          005D09EB
 005D09B5    mov         eax,dword ptr [ebp-4]
 005D09B8    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D09BC    jne         005D09D0
 005D09BE    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D09C3    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 005D09C6    mov         eax,dword ptr [ebp-4]
 005D09C9    mov         ecx,dword ptr [eax]
 005D09CB    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
>005D09CE    jmp         005D09E1
 005D09D0    mov         eax,dword ptr [ebp-4]
 005D09D3    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 005D09D6    mov         dl,byte ptr [eax+5F];TWinControl.FBiDiMode:TBiDiMode
 005D09D9    mov         eax,dword ptr [ebp-4]
 005D09DC    mov         ecx,dword ptr [eax]
 005D09DE    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
 005D09E1    mov         dl,1
 005D09E3    mov         eax,dword ptr [ebp-4]
 005D09E6    mov         ecx,dword ptr [eax]
 005D09E8    call        dword ptr [ecx+6C];TForm.SetParentBiDiMode
 005D09EB    xor         eax,eax
 005D09ED    pop         edx
 005D09EE    pop         ecx
 005D09EF    pop         ecx
 005D09F0    mov         dword ptr fs:[eax],edx
 005D09F3    push        5D0A0A
 005D09F8    mov         eax,dword ptr [ebp-4]
 005D09FB    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 005D0A02    ret
>005D0A03    jmp         @HandleFinally
>005D0A08    jmp         005D09F8
 005D0A0A    pop         ecx
 005D0A0B    pop         ecx
 005D0A0C    pop         ebp
 005D0A0D    ret
end;*}

//005D0A10
procedure TForm.SetBorderIcons(Value:TBorderIcons);
begin
{*
 005D0A10    push        ebp
 005D0A11    mov         ebp,esp
 005D0A13    add         esp,0FFFFFFF8
 005D0A16    mov         byte ptr [ebp-5],dl
 005D0A19    mov         dword ptr [ebp-4],eax
 005D0A1C    mov         al,byte ptr [ebp-5]
 005D0A1F    mov         edx,dword ptr [ebp-4]
 005D0A22    cmp         al,byte ptr [edx+228];TForm.FBorderIcons:TBorderIcons
>005D0A28    je          005D0A47
 005D0A2A    mov         al,byte ptr [ebp-5]
 005D0A2D    mov         edx,dword ptr [ebp-4]
 005D0A30    mov         byte ptr [edx+228],al;TForm.FBorderIcons:TBorderIcons
 005D0A36    mov         eax,dword ptr [ebp-4]
 005D0A39    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D0A3D    jne         005D0A47
 005D0A3F    mov         eax,dword ptr [ebp-4]
 005D0A42    call        TWinControl.RecreateWnd
 005D0A47    pop         ecx
 005D0A48    pop         ecx
 005D0A49    pop         ebp
 005D0A4A    ret
*}
end;

//005D0A4C
procedure TForm.SetBorderStyle(Value:TFormBorderStyle);
begin
{*
 005D0A4C    push        ebp
 005D0A4D    mov         ebp,esp
 005D0A4F    add         esp,0FFFFFFF8
 005D0A52    mov         byte ptr [ebp-5],dl
 005D0A55    mov         dword ptr [ebp-4],eax
 005D0A58    mov         eax,dword ptr [ebp-4]
 005D0A5B    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 005D0A61    cmp         al,byte ptr [ebp-5]
>005D0A64    je          005D0AA2
 005D0A66    mov         al,byte ptr [ebp-5]
 005D0A69    mov         edx,dword ptr [ebp-4]
 005D0A6C    mov         byte ptr [edx+229],al;TForm.FBorderStyle:TFormBorderStyle
 005D0A72    mov         eax,dword ptr [ebp-4]
 005D0A75    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 005D0A7B    sub         al,2
>005D0A7D    je          005D0A87
 005D0A7F    sub         al,3
>005D0A81    je          005D0A87
 005D0A83    xor         edx,edx
>005D0A85    jmp         005D0A89
 005D0A87    mov         dl,1
 005D0A89    mov         eax,dword ptr [ebp-4]
 005D0A8C    call        TForm.SetAutoScroll
 005D0A91    mov         eax,dword ptr [ebp-4]
 005D0A94    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D0A98    jne         005D0AA2
 005D0A9A    mov         eax,dword ptr [ebp-4]
 005D0A9D    call        TWinControl.RecreateWnd
 005D0AA2    pop         ecx
 005D0AA3    pop         ecx
 005D0AA4    pop         ebp
 005D0AA5    ret
*}
end;

//005D0AA8
{*procedure TCustomForm.sub_005D0AA8(?:?; ?:?);
begin
 005D0AA8    push        ebp
 005D0AA9    mov         ebp,esp
 005D0AAB    add         esp,0FFFFFFE0
 005D0AAE    push        esi
 005D0AAF    push        edi
 005D0AB0    mov         esi,ecx
 005D0AB2    lea         edi,[ebp-20]
 005D0AB5    movs        dword ptr [edi],dword ptr [esi]
 005D0AB6    movs        dword ptr [edi],dword ptr [esi]
 005D0AB7    movs        dword ptr [edi],dword ptr [esi]
 005D0AB8    movs        dword ptr [edi],dword ptr [esi]
 005D0AB9    mov         dword ptr [ebp-8],edx
 005D0ABC    mov         dword ptr [ebp-4],eax
 005D0ABF    mov         eax,dword ptr [ebp-4]
 005D0AC2    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 005D0AC5    mov         dword ptr [ebp-10],eax
 005D0AC8    mov         eax,dword ptr [ebp-4]
 005D0ACB    mov         eax,dword ptr [eax+0A0];TCustomForm.FHostDockSite:TWinControl
 005D0AD1    mov         dword ptr [ebp-0C],eax
 005D0AD4    lea         ecx,[ebp-20]
 005D0AD7    mov         edx,dword ptr [ebp-8]
 005D0ADA    mov         eax,dword ptr [ebp-4]
 005D0ADD    call        TControl.sub_005F2BCC
 005D0AE2    mov         eax,dword ptr [ebp-4]
 005D0AE5    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D0AE9    je          005D0B0C
 005D0AEB    mov         eax,dword ptr [ebp-4]
 005D0AEE    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 005D0AF1    cmp         eax,dword ptr [ebp-10]
>005D0AF4    jne         005D0B0C
 005D0AF6    mov         eax,dword ptr [ebp-0C]
 005D0AF9    mov         edx,dword ptr [ebp-4]
 005D0AFC    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>005D0B02    je          005D0B0C
 005D0B04    mov         eax,dword ptr [ebp-4]
 005D0B07    call        TWinControl.RecreateWnd
 005D0B0C    pop         edi
 005D0B0D    pop         esi
 005D0B0E    mov         esp,ebp
 005D0B10    pop         ebp
 005D0B11    ret
end;*}

//005D0B14
{*procedure TCustomForm.sub_005D0B14(?:?; ?:?);
begin
 005D0B14    push        ebp
 005D0B15    mov         ebp,esp
 005D0B17    add         esp,0FFFFFFF4
 005D0B1A    mov         dword ptr [ebp-0C],ecx
 005D0B1D    mov         dword ptr [ebp-8],edx
 005D0B20    mov         dword ptr [ebp-4],eax
 005D0B23    mov         eax,dword ptr [ebp-8]
 005D0B26    mov         edx,dword ptr [ebp-4]
 005D0B29    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>005D0B2F    je          005D0B79
 005D0B31    cmp         dword ptr [ebp-8],0
>005D0B35    je          005D0B43
 005D0B37    mov         eax,dword ptr [ebp-4]
 005D0B3A    mov         edx,dword ptr [eax]
 005D0B3C    call        dword ptr [edx+54];TCustomForm.sub_005CFEA0
 005D0B3F    test        al,al
>005D0B41    je          005D0B79
 005D0B43    cmp         dword ptr [ebp-8],0
>005D0B47    jne         005D0B5D
 005D0B49    mov         eax,dword ptr [ebp-4]
 005D0B4C    mov         al,byte ptr [eax+280];TCustomForm.FSavedBorderStyle:TFormBorderStyle
 005D0B52    mov         edx,dword ptr [ebp-4]
 005D0B55    mov         byte ptr [edx+229],al;TCustomForm.FBorderStyle:TFormBorderStyle
>005D0B5B    jmp         005D0B79
 005D0B5D    mov         eax,dword ptr [ebp-4]
 005D0B60    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 005D0B66    mov         edx,dword ptr [ebp-4]
 005D0B69    mov         byte ptr [edx+280],al;TCustomForm.FSavedBorderStyle:TFormBorderStyle
 005D0B6F    mov         eax,dword ptr [ebp-4]
 005D0B72    mov         byte ptr [eax+229],0;TCustomForm.FBorderStyle:TFormBorderStyle
 005D0B79    mov         ecx,dword ptr [ebp-0C]
 005D0B7C    mov         edx,dword ptr [ebp-8]
 005D0B7F    mov         eax,dword ptr [ebp-4]
 005D0B82    call        TControl.sub_005F2D08
 005D0B87    mov         esp,ebp
 005D0B89    pop         ebp
 005D0B8A    ret
end;*}

//005D0B8C
{*function sub_005D0B8C(?:TCustomForm):?;
begin
 005D0B8C    push        ebp
 005D0B8D    mov         ebp,esp
 005D0B8F    add         esp,0FFFFFFF8
 005D0B92    mov         dword ptr [ebp-4],eax
 005D0B95    xor         eax,eax
 005D0B97    mov         dword ptr [ebp-8],eax
 005D0B9A    mov         eax,dword ptr [ebp-4]
 005D0B9D    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>005D0BA4    jne         005D0BD2
 005D0BA6    mov         eax,dword ptr [ebp-4]
 005D0BA9    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>005D0BB0    je          005D0BD2
 005D0BB2    push        0
 005D0BB4    push        0
 005D0BB6    push        229
 005D0BBB    mov         eax,dword ptr [ebp-4]
 005D0BBE    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 005D0BC4    push        eax
 005D0BC5    call        USER32.SendMessageA
 005D0BCA    call        005EF778
 005D0BCF    mov         dword ptr [ebp-8],eax
 005D0BD2    mov         eax,dword ptr [ebp-8]
 005D0BD5    pop         ecx
 005D0BD6    pop         ecx
 005D0BD7    pop         ebp
 005D0BD8    ret
end;*}

//005D0BDC
function TCustomForm.GetMDIChildCount:Integer;
begin
{*
 005D0BDC    push        ebp
 005D0BDD    mov         ebp,esp
 005D0BDF    add         esp,0FFFFFFF0
 005D0BE2    mov         dword ptr [ebp-4],eax
 005D0BE5    xor         eax,eax
 005D0BE7    mov         dword ptr [ebp-8],eax
 005D0BEA    mov         eax,dword ptr [ebp-4]
 005D0BED    cmp         byte ptr [eax+22F],2
>005D0BF4    jne         005D0C3D
 005D0BF6    mov         eax,dword ptr [ebp-4]
 005D0BF9    cmp         dword ptr [eax+254],0
>005D0C00    je          005D0C3D
 005D0C02    mov         eax,[006ECD80];Screen:TScreen
 005D0C07    call        005D5700
 005D0C0C    dec         eax
 005D0C0D    test        eax,eax
>005D0C0F    jl          005D0C3D
 005D0C11    inc         eax
 005D0C12    mov         dword ptr [ebp-10],eax
 005D0C15    mov         dword ptr [ebp-0C],0
 005D0C1C    mov         edx,dword ptr [ebp-0C]
 005D0C1F    mov         eax,[006ECD80];Screen:TScreen
 005D0C24    call        005D56DC
 005D0C29    cmp         byte ptr [eax+22F],1
>005D0C30    jne         005D0C35
 005D0C32    inc         dword ptr [ebp-8]
 005D0C35    inc         dword ptr [ebp-0C]
 005D0C38    dec         dword ptr [ebp-10]
>005D0C3B    jne         005D0C1C
 005D0C3D    mov         eax,dword ptr [ebp-8]
 005D0C40    mov         esp,ebp
 005D0C42    pop         ebp
 005D0C43    ret
*}
end;

//005D0C44
{*function sub_005D0C44(?:TCustomForm; ?:?):?;
begin
 005D0C44    push        ebp
 005D0C45    mov         ebp,esp
 005D0C47    add         esp,0FFFFFFEC
 005D0C4A    mov         dword ptr [ebp-8],edx
 005D0C4D    mov         dword ptr [ebp-4],eax
 005D0C50    mov         eax,dword ptr [ebp-4]
 005D0C53    cmp         byte ptr [eax+22F],2
>005D0C5A    jne         005D0CAF
 005D0C5C    mov         eax,dword ptr [ebp-4]
 005D0C5F    cmp         dword ptr [eax+254],0
>005D0C66    je          005D0CAF
 005D0C68    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0C6D    call        005D5700
 005D0C72    dec         eax
 005D0C73    test        eax,eax
>005D0C75    jl          005D0CAF
 005D0C77    inc         eax
 005D0C78    mov         dword ptr [ebp-14],eax
 005D0C7B    mov         dword ptr [ebp-10],0
 005D0C82    mov         edx,dword ptr [ebp-10]
 005D0C85    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0C8A    call        005D56DC
 005D0C8F    mov         dword ptr [ebp-0C],eax
 005D0C92    mov         eax,dword ptr [ebp-0C]
 005D0C95    cmp         byte ptr [eax+22F],1
>005D0C9C    jne         005D0CA7
 005D0C9E    dec         dword ptr [ebp-8]
 005D0CA1    cmp         dword ptr [ebp-8],0
>005D0CA5    jl          005D0CB4
 005D0CA7    inc         dword ptr [ebp-10]
 005D0CAA    dec         dword ptr [ebp-14]
>005D0CAD    jne         005D0C82
 005D0CAF    xor         eax,eax
 005D0CB1    mov         dword ptr [ebp-0C],eax
 005D0CB4    mov         eax,dword ptr [ebp-0C]
 005D0CB7    mov         esp,ebp
 005D0CB9    pop         ebp
 005D0CBA    ret
end;*}

//005D0D04
{*function sub_005D0D04(?:TCustomForm):?;
begin
 005D0D04    push        ebp
 005D0D05    mov         ebp,esp
 005D0D07    add         esp,0FFFFFFEC
 005D0D0A    mov         dword ptr [ebp-4],eax
 005D0D0D    xor         eax,eax
 005D0D0F    mov         dword ptr [ebp-8],eax
 005D0D12    push        2
 005D0D14    mov         eax,dword ptr [ebp-4]
 005D0D17    call        TWinControl.GetHandle
 005D0D1C    push        eax
 005D0D1D    mov         eax,[006EA004];^gvar_006ECEF8
 005D0D22    mov         eax,dword ptr [eax]
 005D0D24    call        eax
 005D0D26    mov         dword ptr [ebp-0C],eax
 005D0D29    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0D2E    call        005D56A4
 005D0D33    dec         eax
 005D0D34    test        eax,eax
>005D0D36    jl          005D0D75
 005D0D38    inc         eax
 005D0D39    mov         dword ptr [ebp-14],eax
 005D0D3C    mov         dword ptr [ebp-10],0
 005D0D43    mov         edx,dword ptr [ebp-10]
 005D0D46    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0D4B    call        005D5680
 005D0D50    mov         eax,dword ptr [eax+4]
 005D0D53    cmp         eax,dword ptr [ebp-0C]
>005D0D56    jne         005D0D6D
 005D0D58    mov         edx,dword ptr [ebp-10]
 005D0D5B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0D60    call        005D5680
 005D0D65    mov         dword ptr [ebp-8],eax
>005D0D68    jmp         005D0E1E
 005D0D6D    inc         dword ptr [ebp-10]
 005D0D70    dec         dword ptr [ebp-14]
>005D0D73    jne         005D0D43
 005D0D75    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0D7A    call        005D56A4
 005D0D7F    dec         eax
 005D0D80    test        eax,eax
>005D0D82    jl          005D0DAC
 005D0D84    inc         eax
 005D0D85    mov         dword ptr [ebp-14],eax
 005D0D88    mov         dword ptr [ebp-10],0
 005D0D8F    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0D94    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D0D97    mov         edx,dword ptr [ebp-10]
 005D0D9A    call        TList.Get
 005D0D9F    call        TObject.Free
 005D0DA4    inc         dword ptr [ebp-10]
 005D0DA7    dec         dword ptr [ebp-14]
>005D0DAA    jne         005D0D8F
 005D0DAC    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0DB1    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D0DB4    mov         edx,dword ptr [eax]
 005D0DB6    call        dword ptr [edx+8];TList.sub_00644E64
 005D0DB9    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0DBE    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D0DC1    push        eax
 005D0DC2    mov         eax,5D0CBC
 005D0DC7    push        eax
 005D0DC8    push        0
 005D0DCA    push        0
 005D0DCC    mov         eax,[006EA010];^gvar_006ECF10
 005D0DD1    mov         eax,dword ptr [eax]
 005D0DD3    call        eax
 005D0DD5    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0DDA    call        005D56A4
 005D0DDF    dec         eax
 005D0DE0    test        eax,eax
>005D0DE2    jl          005D0E1E
 005D0DE4    inc         eax
 005D0DE5    mov         dword ptr [ebp-14],eax
 005D0DE8    mov         dword ptr [ebp-10],0
 005D0DEF    mov         edx,dword ptr [ebp-10]
 005D0DF2    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0DF7    call        005D5680
 005D0DFC    mov         eax,dword ptr [eax+4]
 005D0DFF    cmp         eax,dword ptr [ebp-0C]
>005D0E02    jne         005D0E16
 005D0E04    mov         edx,dword ptr [ebp-10]
 005D0E07    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D0E0C    call        005D5680
 005D0E11    mov         dword ptr [ebp-8],eax
>005D0E14    jmp         005D0E1E
 005D0E16    inc         dword ptr [ebp-10]
 005D0E19    dec         dword ptr [ebp-14]
>005D0E1C    jne         005D0DEF
 005D0E1E    mov         eax,dword ptr [ebp-8]
 005D0E21    mov         esp,ebp
 005D0E23    pop         ebp
 005D0E24    ret
end;*}

//005D0E28
{*function sub_005D0E28(?:TCustomForm):?;
begin
 005D0E28    push        ebp
 005D0E29    mov         ebp,esp
 005D0E2B    add         esp,0FFFFFFF8
 005D0E2E    mov         dword ptr [ebp-4],eax
 005D0E31    mov         eax,dword ptr [ebp-4]
 005D0E34    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D0E3A    mov         dword ptr [ebp-8],eax
 005D0E3D    mov         eax,dword ptr [ebp-8]
 005D0E40    pop         ecx
 005D0E41    pop         ecx
 005D0E42    pop         ebp
 005D0E43    ret
end;*}

//005D0E44
procedure TForm.SetIcon(Value:TIcon);
begin
{*
 005D0E44    push        ebp
 005D0E45    mov         ebp,esp
 005D0E47    add         esp,0FFFFFFF8
 005D0E4A    mov         dword ptr [ebp-8],edx
 005D0E4D    mov         dword ptr [ebp-4],eax
 005D0E50    mov         edx,dword ptr [ebp-8]
 005D0E53    mov         eax,dword ptr [ebp-4]
 005D0E56    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 005D0E5C    mov         ecx,dword ptr [eax]
 005D0E5E    call        dword ptr [ecx+8];TIcon.Assign
 005D0E61    pop         ecx
 005D0E62    pop         ecx
 005D0E63    pop         ebp
 005D0E64    ret
*}
end;

//005D0E68
function TForm.IsStoredActiveControl(Value:TPersistent):Boolean;
begin
{*
 005D0E68    push        ebp
 005D0E69    mov         ebp,esp
 005D0E6B    add         esp,0FFFFFFF8
 005D0E6E    mov         dword ptr [ebp-4],eax
 005D0E71    mov         eax,dword ptr [ebp-4]
 005D0E74    mov         al,byte ptr [eax+5E];TForm.FIsControl:Boolean
 005D0E77    xor         al,1
 005D0E79    mov         byte ptr [ebp-5],al
 005D0E7C    mov         al,byte ptr [ebp-5]
 005D0E7F    pop         ecx
 005D0E80    pop         ecx
 005D0E81    pop         ebp
 005D0E82    ret
*}
end;

//005D0E84
function TForm.IsStoredIcon(Value:TIcon):Boolean;
begin
{*
 005D0E84    push        ebp
 005D0E85    mov         ebp,esp
 005D0E87    add         esp,0FFFFFFF8
 005D0E8A    mov         dword ptr [ebp-4],eax
 005D0E8D    mov         eax,dword ptr [ebp-4]
 005D0E90    call        TForm.IsStoredActiveControl
 005D0E95    test        al,al
>005D0E97    je          005D0EAB
 005D0E99    mov         eax,dword ptr [ebp-4]
 005D0E9C    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 005D0EA2    call        005C8F8C
 005D0EA7    test        eax,eax
>005D0EA9    jne         005D0EAF
 005D0EAB    xor         eax,eax
>005D0EAD    jmp         005D0EB1
 005D0EAF    mov         al,1
 005D0EB1    mov         byte ptr [ebp-5],al
 005D0EB4    mov         al,byte ptr [ebp-5]
 005D0EB7    pop         ecx
 005D0EB8    pop         ecx
 005D0EB9    pop         ebp
 005D0EBA    ret
*}
end;

//005D0EBC
procedure TForm.SetFormStyle(Value:TFormStyle);
begin
{*
 005D0EBC    push        ebp
 005D0EBD    mov         ebp,esp
 005D0EBF    add         esp,0FFFFFFF8
 005D0EC2    mov         byte ptr [ebp-5],dl
 005D0EC5    mov         dword ptr [ebp-4],eax
 005D0EC8    mov         eax,dword ptr [ebp-4]
 005D0ECB    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 005D0ED1    cmp         al,byte ptr [ebp-5]
>005D0ED4    je          005D0F6A
 005D0EDA    cmp         byte ptr [ebp-5],1
>005D0EDE    jne         005D0EF6
 005D0EE0    mov         eax,dword ptr [ebp-4]
 005D0EE3    cmp         byte ptr [eax+230],0;TForm.FPosition:TPosition
>005D0EEA    jne         005D0EF6
 005D0EEC    mov         dl,1
 005D0EEE    mov         eax,dword ptr [ebp-4]
 005D0EF1    call        TForm.SetPosition
 005D0EF6    mov         eax,dword ptr [ebp-4]
 005D0EF9    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D0EFD    jne         005D0F07
 005D0EFF    mov         eax,dword ptr [ebp-4]
 005D0F02    call        005F8828
 005D0F07    mov         eax,dword ptr [ebp-4]
 005D0F0A    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 005D0F10    mov         byte ptr [ebp-6],al
 005D0F13    mov         al,byte ptr [ebp-5]
 005D0F16    mov         edx,dword ptr [ebp-4]
 005D0F19    mov         byte ptr [edx+22F],al;TForm.FFormStyle:TFormStyle
 005D0F1F    cmp         byte ptr [ebp-5],2
>005D0F23    je          005D0F2B
 005D0F25    cmp         byte ptr [ebp-6],2
>005D0F29    jne         005D0F49
 005D0F2B    mov         eax,dword ptr [ebp-4]
 005D0F2E    cmp         byte ptr [eax+1A5],0;TForm.FCtl3D:Boolean
>005D0F35    jne         005D0F49
 005D0F37    mov         eax,dword ptr [ebp-4]
 005D0F3A    call        005D142C
 005D0F3F    mov         edx,eax
 005D0F41    mov         eax,dword ptr [ebp-4]
 005D0F44    call        TControl.SetColor
 005D0F49    mov         eax,dword ptr [ebp-4]
 005D0F4C    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D0F50    jne         005D0F5A
 005D0F52    mov         eax,dword ptr [ebp-4]
 005D0F55    call        005F8A20
 005D0F5A    cmp         byte ptr [ebp-5],1
>005D0F5E    jne         005D0F6A
 005D0F60    mov         dl,1
 005D0F62    mov         eax,dword ptr [ebp-4]
 005D0F65    call        TCustomForm.SetVisible
 005D0F6A    pop         ecx
 005D0F6B    pop         ecx
 005D0F6C    pop         ebp
 005D0F6D    ret
*}
end;

//005D0F70
procedure sub_005D0F70(?:TCustomForm);
begin
{*
 005D0F70    push        ebp
 005D0F71    mov         ebp,esp
 005D0F73    add         esp,0FFFFFFF0
 005D0F76    mov         dword ptr [ebp-4],eax
 005D0F79    mov         eax,dword ptr [ebp-4]
 005D0F7C    cmp         byte ptr [eax+22F],2
>005D0F83    jne         005D1022
 005D0F89    mov         eax,dword ptr [ebp-4]
 005D0F8C    cmp         dword ptr [eax+254],0
>005D0F93    je          005D1022
 005D0F99    xor         eax,eax
 005D0F9B    mov         dword ptr [ebp-8],eax
 005D0F9E    mov         eax,dword ptr [ebp-4]
 005D0FA1    cmp         dword ptr [eax+248],0
>005D0FA8    je          005D0FBB
 005D0FAA    mov         eax,dword ptr [ebp-4]
 005D0FAD    mov         eax,dword ptr [eax+248]
 005D0FB3    mov         edx,dword ptr [eax]
 005D0FB5    call        dword ptr [edx+34]
 005D0FB8    mov         dword ptr [ebp-8],eax
 005D0FBB    xor         eax,eax
 005D0FBD    mov         dword ptr [ebp-0C],eax
 005D0FC0    mov         eax,dword ptr [ebp-4]
 005D0FC3    cmp         dword ptr [eax+258],0
>005D0FCA    je          005D0FDD
 005D0FCC    mov         eax,dword ptr [ebp-4]
 005D0FCF    mov         eax,dword ptr [eax+258]
 005D0FD5    call        005A3DA0
 005D0FDA    mov         dword ptr [ebp-0C],eax
 005D0FDD    mov         eax,dword ptr [ebp-4]
 005D0FE0    call        TWinControl.GetHandle
 005D0FE5    push        eax
 005D0FE6    call        USER32.GetMenu
 005D0FEB    cmp         eax,dword ptr [ebp-8]
 005D0FEE    setne       byte ptr [ebp-0D]
 005D0FF2    mov         eax,dword ptr [ebp-0C]
 005D0FF5    push        eax
 005D0FF6    mov         eax,dword ptr [ebp-8]
 005D0FF9    push        eax
 005D0FFA    push        230
 005D0FFF    mov         eax,dword ptr [ebp-4]
 005D1002    mov         eax,dword ptr [eax+254]
 005D1008    push        eax
 005D1009    call        USER32.SendMessageA
 005D100E    cmp         byte ptr [ebp-0D],0
>005D1012    je          005D1022
 005D1014    mov         eax,dword ptr [ebp-4]
 005D1017    call        TWinControl.GetHandle
 005D101C    push        eax
 005D101D    call        USER32.DrawMenuBar
 005D1022    mov         esp,ebp
 005D1024    pop         ebp
 005D1025    ret
*}
end;

//005D1028
procedure TForm.SetObjectMenuItem(Value:TMenuItem);
begin
{*
 005D1028    push        ebp
 005D1029    mov         ebp,esp
 005D102B    add         esp,0FFFFFFF8
 005D102E    mov         dword ptr [ebp-8],edx
 005D1031    mov         dword ptr [ebp-4],eax
 005D1034    mov         eax,dword ptr [ebp-8]
 005D1037    mov         edx,dword ptr [ebp-4]
 005D103A    mov         dword ptr [edx+260],eax;TForm.FObjectMenuItem:TMenuItem
 005D1040    cmp         dword ptr [ebp-8],0
>005D1044    je          005D105B
 005D1046    mov         edx,dword ptr [ebp-4]
 005D1049    mov         eax,dword ptr [ebp-8]
 005D104C    call        TComponent.FreeNotification
 005D1051    xor         edx,edx
 005D1053    mov         eax,dword ptr [ebp-8]
 005D1056    call        TMenuItem.SetEnabled
 005D105B    pop         ecx
 005D105C    pop         ecx
 005D105D    pop         ebp
 005D105E    ret
*}
end;

//005D1060
procedure TForm.SetWindowMenu(Value:TMenuItem);
begin
{*
 005D1060    push        ebp
 005D1061    mov         ebp,esp
 005D1063    add         esp,0FFFFFFF8
 005D1066    mov         dword ptr [ebp-8],edx
 005D1069    mov         dword ptr [ebp-4],eax
 005D106C    mov         eax,dword ptr [ebp-4]
 005D106F    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 005D1075    cmp         eax,dword ptr [ebp-8]
>005D1078    je          005D109F
 005D107A    mov         eax,dword ptr [ebp-8]
 005D107D    mov         edx,dword ptr [ebp-4]
 005D1080    mov         dword ptr [edx+258],eax;TForm.FWindowMenu:TMenuItem
 005D1086    cmp         dword ptr [ebp-8],0
>005D108A    je          005D1097
 005D108C    mov         edx,dword ptr [ebp-4]
 005D108F    mov         eax,dword ptr [ebp-8]
 005D1092    call        TComponent.FreeNotification
 005D1097    mov         eax,dword ptr [ebp-4]
 005D109A    call        005D0F70
 005D109F    pop         ecx
 005D10A0    pop         ecx
 005D10A1    pop         ebp
 005D10A2    ret
*}
end;

//005D10A4
procedure TForm.SetMenu(Value:TComponent);
begin
{*
 005D10A4    push        ebp
 005D10A5    mov         ebp,esp
 005D10A7    add         esp,0FFFFFFE4
 005D10AA    push        ebx
 005D10AB    xor         ecx,ecx
 005D10AD    mov         dword ptr [ebp-1C],ecx
 005D10B0    mov         dword ptr [ebp-8],edx
 005D10B3    mov         dword ptr [ebp-4],eax
 005D10B6    xor         eax,eax
 005D10B8    push        ebp
 005D10B9    push        5D12C8
 005D10BE    push        dword ptr fs:[eax]
 005D10C1    mov         dword ptr fs:[eax],esp
 005D10C4    cmp         dword ptr [ebp-8],0
>005D10C8    je          005D114E
 005D10CE    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D10D3    call        005D5700
 005D10D8    dec         eax
 005D10D9    test        eax,eax
>005D10DB    jl          005D114E
 005D10DD    inc         eax
 005D10DE    mov         dword ptr [ebp-10],eax
 005D10E1    mov         dword ptr [ebp-0C],0
 005D10E8    mov         edx,dword ptr [ebp-0C]
 005D10EB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D10F0    call        005D56DC
 005D10F5    mov         eax,dword ptr [eax+248]
 005D10FB    cmp         eax,dword ptr [ebp-8]
>005D10FE    jne         005D1146
 005D1100    mov         edx,dword ptr [ebp-0C]
 005D1103    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1108    call        005D56DC
 005D110D    cmp         eax,dword ptr [ebp-4]
>005D1110    je          005D1146
 005D1112    mov         eax,dword ptr [ebp-8]
 005D1115    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 005D1118    mov         dword ptr [ebp-18],eax
 005D111B    mov         byte ptr [ebp-14],0B
 005D111F    lea         eax,[ebp-18]
 005D1122    push        eax
 005D1123    push        0
 005D1125    lea         edx,[ebp-1C]
 005D1128    mov         eax,[006E9FA4];^gvar_0063CD58
 005D112D    call        LoadResString
 005D1132    mov         ecx,dword ptr [ebp-1C]
 005D1135    mov         dl,1
 005D1137    mov         eax,[00642244];EInvalidOperation
 005D113C    call        Exception.CreateFmt;EInvalidOperation.Create
 005D1141    call        @RaiseExcept
 005D1146    inc         dword ptr [ebp-0C]
 005D1149    dec         dword ptr [ebp-10]
>005D114C    jne         005D10E8
 005D114E    mov         eax,dword ptr [ebp-4]
 005D1151    cmp         dword ptr [eax+248],0;TForm.FMenu:TMainMenu
>005D1158    je          005D116A
 005D115A    xor         edx,edx
 005D115C    mov         eax,dword ptr [ebp-4]
 005D115F    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 005D1165    call        005A7C9C
 005D116A    mov         eax,dword ptr [ebp-4]
 005D116D    test        byte ptr [eax+1C],8;TForm.FComponentState:TComponentState
>005D1171    jne         005D1182
 005D1173    cmp         dword ptr [ebp-8],0
>005D1177    je          005D1187
 005D1179    mov         eax,dword ptr [ebp-8]
 005D117C    test        byte ptr [eax+1C],8;TComponent.FComponentState:TComponentState
>005D1180    je          005D1187
 005D1182    xor         eax,eax
 005D1184    mov         dword ptr [ebp-8],eax
 005D1187    mov         eax,dword ptr [ebp-8]
 005D118A    mov         edx,dword ptr [ebp-4]
 005D118D    mov         dword ptr [edx+248],eax;TForm.FMenu:TMainMenu
 005D1193    cmp         dword ptr [ebp-8],0
>005D1197    je          005D11A4
 005D1199    mov         edx,dword ptr [ebp-4]
 005D119C    mov         eax,dword ptr [ebp-8]
 005D119F    call        TComponent.FreeNotification
 005D11A4    cmp         dword ptr [ebp-8],0
>005D11A8    je          005D1278
 005D11AE    mov         eax,dword ptr [ebp-4]
 005D11B1    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D11B5    jne         005D11C7
 005D11B7    mov         eax,dword ptr [ebp-4]
 005D11BA    cmp         byte ptr [eax+229],3;TForm.FBorderStyle:TFormBorderStyle
>005D11C1    je          005D1278
 005D11C7    mov         eax,dword ptr [ebp-4]
 005D11CA    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 005D11D0    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>005D11D4    jne         005D11E2
 005D11D6    mov         eax,dword ptr [ebp-4]
 005D11D9    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>005D11E0    jne         005D11EB
 005D11E2    mov         eax,dword ptr [ebp-4]
 005D11E5    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D11E9    je          005D124E
 005D11EB    mov         eax,dword ptr [ebp-4]
 005D11EE    call        TWinControl.HandleAllocated
 005D11F3    test        al,al
>005D11F5    je          005D1294
 005D11FB    mov         eax,dword ptr [ebp-4]
 005D11FE    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 005D1204    mov         edx,dword ptr [eax]
 005D1206    call        dword ptr [edx+34];TMainMenu.sub_005A85B8
 005D1209    mov         ebx,eax
 005D120B    mov         eax,dword ptr [ebp-4]
 005D120E    call        TWinControl.GetHandle
 005D1213    push        eax
 005D1214    call        USER32.GetMenu
 005D1219    cmp         ebx,eax
>005D121B    je          005D123A
 005D121D    mov         eax,dword ptr [ebp-4]
 005D1220    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 005D1226    mov         edx,dword ptr [eax]
 005D1228    call        dword ptr [edx+34];TMainMenu.sub_005A85B8
 005D122B    push        eax
 005D122C    mov         eax,dword ptr [ebp-4]
 005D122F    call        TWinControl.GetHandle
 005D1234    push        eax
 005D1235    call        USER32.SetMenu
 005D123A    mov         eax,dword ptr [ebp-4]
 005D123D    call        TWinControl.GetHandle
 005D1242    mov         edx,eax
 005D1244    mov         eax,dword ptr [ebp-8]
 005D1247    call        005A7C9C
>005D124C    jmp         005D1294
 005D124E    mov         eax,dword ptr [ebp-4]
 005D1251    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>005D1258    je          005D1294
 005D125A    mov         eax,dword ptr [ebp-4]
 005D125D    call        TWinControl.HandleAllocated
 005D1262    test        al,al
>005D1264    je          005D1294
 005D1266    push        0
 005D1268    mov         eax,dword ptr [ebp-4]
 005D126B    call        TWinControl.GetHandle
 005D1270    push        eax
 005D1271    call        USER32.SetMenu
>005D1276    jmp         005D1294
 005D1278    mov         eax,dword ptr [ebp-4]
 005D127B    call        TWinControl.HandleAllocated
 005D1280    test        al,al
>005D1282    je          005D1294
 005D1284    push        0
 005D1286    mov         eax,dword ptr [ebp-4]
 005D1289    call        TWinControl.GetHandle
 005D128E    push        eax
 005D128F    call        USER32.SetMenu
 005D1294    mov         eax,dword ptr [ebp-4]
 005D1297    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>005D129E    je          005D12AA
 005D12A0    mov         dl,1
 005D12A2    mov         eax,dword ptr [ebp-4]
 005D12A5    call        TCustomForm.MergeMenu
 005D12AA    mov         eax,dword ptr [ebp-4]
 005D12AD    call        005D0F70
 005D12B2    xor         eax,eax
 005D12B4    pop         edx
 005D12B5    pop         ecx
 005D12B6    pop         ecx
 005D12B7    mov         dword ptr fs:[eax],edx
 005D12BA    push        5D12CF
 005D12BF    lea         eax,[ebp-1C]
 005D12C2    call        @LStrClr
 005D12C7    ret
>005D12C8    jmp         @HandleFinally
>005D12CD    jmp         005D12BF
 005D12CF    pop         ebx
 005D12D0    mov         esp,ebp
 005D12D2    pop         ebp
 005D12D3    ret
*}
end;

//005D12D4
{*function TForm.GetPixelsPerInch:?;
begin
 005D12D4    push        ebp
 005D12D5    mov         ebp,esp
 005D12D7    add         esp,0FFFFFFF8
 005D12DA    mov         dword ptr [ebp-4],eax
 005D12DD    mov         eax,dword ptr [ebp-4]
 005D12E0    mov         eax,dword ptr [eax+25C];TForm.FPixelsPerInch:Integer
 005D12E6    mov         dword ptr [ebp-8],eax
 005D12E9    cmp         dword ptr [ebp-8],0
>005D12ED    jne         005D12FA
 005D12EF    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D12F4    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 005D12F7    mov         dword ptr [ebp-8],eax
 005D12FA    mov         eax,dword ptr [ebp-8]
 005D12FD    pop         ecx
 005D12FE    pop         ecx
 005D12FF    pop         ebp
 005D1300    ret
end;*}

//005D1304
procedure TForm.SetPixelsPerInch(Value:Integer);
begin
{*
 005D1304    push        ebp
 005D1305    mov         ebp,esp
 005D1307    add         esp,0FFFFFFF8
 005D130A    mov         dword ptr [ebp-8],edx
 005D130D    mov         dword ptr [ebp-4],eax
 005D1310    mov         eax,dword ptr [ebp-4]
 005D1313    call        TForm.GetPixelsPerInch
 005D1318    cmp         eax,dword ptr [ebp-8]
>005D131B    je          005D134A
 005D131D    cmp         dword ptr [ebp-8],0
>005D1321    je          005D1329
 005D1323    cmp         dword ptr [ebp-8],24
>005D1327    jl          005D134A
 005D1329    mov         eax,dword ptr [ebp-4]
 005D132C    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>005D1330    je          005D133E
 005D1332    mov         eax,dword ptr [ebp-4]
 005D1335    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
>005D133C    je          005D134A
 005D133E    mov         eax,dword ptr [ebp-8]
 005D1341    mov         edx,dword ptr [ebp-4]
 005D1344    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 005D134A    pop         ecx
 005D134B    pop         ecx
 005D134C    pop         ebp
 005D134D    ret
*}
end;

//005D1350
procedure TForm.SetPosition(Value:TPosition);
begin
{*
 005D1350    push        ebp
 005D1351    mov         ebp,esp
 005D1353    add         esp,0FFFFFFF8
 005D1356    mov         byte ptr [ebp-5],dl
 005D1359    mov         dword ptr [ebp-4],eax
 005D135C    mov         eax,dword ptr [ebp-4]
 005D135F    mov         al,byte ptr [eax+230];TForm.FPosition:TPosition
 005D1365    cmp         al,byte ptr [ebp-5]
>005D1368    je          005D1387
 005D136A    mov         al,byte ptr [ebp-5]
 005D136D    mov         edx,dword ptr [ebp-4]
 005D1370    mov         byte ptr [edx+230],al;TForm.FPosition:TPosition
 005D1376    mov         eax,dword ptr [ebp-4]
 005D1379    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D137D    jne         005D1387
 005D137F    mov         eax,dword ptr [ebp-4]
 005D1382    call        TWinControl.RecreateWnd
 005D1387    pop         ecx
 005D1388    pop         ecx
 005D1389    pop         ebp
 005D138A    ret
*}
end;

//005D138C
{*function TForm.GetScaled:?;
begin
 005D138C    push        ebp
 005D138D    mov         ebp,esp
 005D138F    add         esp,0FFFFFFF8
 005D1392    mov         dword ptr [ebp-4],eax
 005D1395    mov         eax,dword ptr [ebp-4]
 005D1398    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
 005D139F    setne       byte ptr [ebp-5]
 005D13A3    mov         al,byte ptr [ebp-5]
 005D13A6    pop         ecx
 005D13A7    pop         ecx
 005D13A8    pop         ebp
 005D13A9    ret
end;*}

//005D13AC
procedure TForm.SetScaled(Value:Boolean);
begin
{*
 005D13AC    push        ebp
 005D13AD    mov         ebp,esp
 005D13AF    add         esp,0FFFFFFF8
 005D13B2    mov         byte ptr [ebp-5],dl
 005D13B5    mov         dword ptr [ebp-4],eax
 005D13B8    mov         eax,dword ptr [ebp-4]
 005D13BB    call        TForm.GetScaled
 005D13C0    cmp         al,byte ptr [ebp-5]
>005D13C3    je          005D13E7
 005D13C5    mov         eax,dword ptr [ebp-4]
 005D13C8    xor         edx,edx
 005D13CA    mov         dword ptr [eax+25C],edx;TForm.FPixelsPerInch:Integer
 005D13D0    cmp         byte ptr [ebp-5],0
>005D13D4    je          005D13E7
 005D13D6    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D13DB    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 005D13DE    mov         edx,dword ptr [ebp-4]
 005D13E1    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 005D13E7    pop         ecx
 005D13E8    pop         ecx
 005D13E9    pop         ebp
 005D13EA    ret
*}
end;

//005D13EC
{*procedure TCustomForm.CMColorChanged(?:?);
begin
 005D13EC    push        ebp
 005D13ED    mov         ebp,esp
 005D13EF    add         esp,0FFFFFFF8
 005D13F2    mov         dword ptr [ebp-8],edx
 005D13F5    mov         dword ptr [ebp-4],eax
 005D13F8    mov         edx,dword ptr [ebp-8]
 005D13FB    mov         eax,dword ptr [ebp-4]
 005D13FE    call        TWinControl.CMColorChanged
 005D1403    mov         eax,dword ptr [ebp-4]
 005D1406    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>005D140D    je          005D1426
 005D140F    mov         eax,dword ptr [ebp-4]
 005D1412    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D1418    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 005D141B    mov         edx,dword ptr [ebp-4]
 005D141E    mov         edx,dword ptr [edx+70];TCustomForm.FColor:TColor
 005D1421    call        TBrush.SetColor
 005D1426    pop         ecx
 005D1427    pop         ecx
 005D1428    pop         ebp
 005D1429    ret
end;*}

//005D142C
{*function sub_005D142C(?:TCustomForm):?;
begin
 005D142C    push        ebp
 005D142D    mov         ebp,esp
 005D142F    add         esp,0FFFFFFF8
 005D1432    mov         dword ptr [ebp-4],eax
 005D1435    mov         dword ptr [ebp-8],80000005
 005D143C    mov         eax,dword ptr [ebp-4]
 005D143F    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>005D1446    jne         005D144F
 005D1448    mov         dword ptr [ebp-8],8000000C
 005D144F    mov         eax,dword ptr [ebp-8]
 005D1452    pop         ecx
 005D1453    pop         ecx
 005D1454    pop         ebp
 005D1455    ret
end;*}

//005D1458
{*procedure TCustomForm.CMCtl3DChanged(?:?);
begin
 005D1458    push        ebp
 005D1459    mov         ebp,esp
 005D145B    add         esp,0FFFFFFF8
 005D145E    mov         dword ptr [ebp-8],edx
 005D1461    mov         dword ptr [ebp-4],eax
 005D1464    mov         edx,dword ptr [ebp-8]
 005D1467    mov         eax,dword ptr [ebp-4]
 005D146A    call        TWinControl.CMCtl3DChanged
 005D146F    mov         eax,dword ptr [ebp-4]
 005D1472    cmp         byte ptr [eax+1A5],0;TCustomForm.FCtl3D:Boolean
>005D1479    je          005D149A
 005D147B    mov         eax,dword ptr [ebp-4]
 005D147E    call        005D142C
 005D1483    mov         edx,dword ptr [ebp-4]
 005D1486    cmp         eax,dword ptr [edx+70];TCustomForm.FColor:TColor
>005D1489    jne         005D14B8
 005D148B    mov         edx,8000000F
 005D1490    mov         eax,dword ptr [ebp-4]
 005D1493    call        TControl.SetColor
>005D1498    jmp         005D14B8
 005D149A    mov         eax,dword ptr [ebp-4]
 005D149D    cmp         dword ptr [eax+70],8000000F;TCustomForm.FColor:TColor
>005D14A4    jne         005D14B8
 005D14A6    mov         eax,dword ptr [ebp-4]
 005D14A9    call        005D142C
 005D14AE    mov         edx,eax
 005D14B0    mov         eax,dword ptr [ebp-4]
 005D14B3    call        TControl.SetColor
 005D14B8    pop         ecx
 005D14B9    pop         ecx
 005D14BA    pop         ebp
 005D14BB    ret
end;*}

//005D14BC
{*procedure TCustomForm.CMFontChanged(?:?);
begin
 005D14BC    push        ebp
 005D14BD    mov         ebp,esp
 005D14BF    add         esp,0FFFFFFF8
 005D14C2    mov         dword ptr [ebp-8],edx
 005D14C5    mov         dword ptr [ebp-4],eax
 005D14C8    mov         edx,dword ptr [ebp-8]
 005D14CB    mov         eax,dword ptr [ebp-4]
 005D14CE    call        TWinControl.CMFontChanged
 005D14D3    mov         eax,dword ptr [ebp-4]
 005D14D6    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>005D14DD    je          005D14F3
 005D14DF    mov         eax,dword ptr [ebp-4]
 005D14E2    mov         edx,dword ptr [eax+68];TCustomForm.FFont:TFont
 005D14E5    mov         eax,dword ptr [ebp-4]
 005D14E8    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D14EE    call        TCanvas.SetFont
 005D14F3    pop         ecx
 005D14F4    pop         ecx
 005D14F5    pop         ebp
 005D14F6    ret
end;*}

//005D14F8
{*procedure TCustomForm.CMMenuChanged(?:?);
begin
 005D14F8    push        ebp
 005D14F9    mov         ebp,esp
 005D14FB    add         esp,0FFFFFFF8
 005D14FE    mov         dword ptr [ebp-8],edx
 005D1501    mov         dword ptr [ebp-4],eax
 005D1504    mov         eax,dword ptr [ebp-4]
 005D1507    call        005D0F70
 005D150C    mov         eax,dword ptr [ebp-4]
 005D150F    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D1515    mov         eax,dword ptr [ebp-4]
 005D1518    call        TForm.SetMenu
 005D151D    pop         ecx
 005D151E    pop         ecx
 005D151F    pop         ebp
 005D1520    ret
end;*}

//005D1524
procedure TForm.SetWindowState(Value:TWindowState);
begin
{*
 005D1524    push        ebp
 005D1525    mov         ebp,esp
 005D1527    add         esp,0FFFFFFF8
 005D152A    mov         byte ptr [ebp-5],dl
 005D152D    mov         dword ptr [ebp-4],eax
 005D1530    mov         eax,dword ptr [ebp-4]
 005D1533    mov         al,byte ptr [eax+22B];TForm.FWindowState:TWindowState
 005D1539    cmp         al,byte ptr [ebp-5]
>005D153C    je          005D157A
 005D153E    mov         al,byte ptr [ebp-5]
 005D1541    mov         edx,dword ptr [ebp-4]
 005D1544    mov         byte ptr [edx+22B],al;TForm.FWindowState:TWindowState
 005D154A    mov         eax,dword ptr [ebp-4]
 005D154D    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>005D1551    jne         005D157A
 005D1553    mov         eax,dword ptr [ebp-4]
 005D1556    cmp         byte ptr [eax+1A6],0;TForm.FShowing:Boolean
>005D155D    je          005D157A
 005D155F    xor         eax,eax
 005D1561    mov         al,byte ptr [ebp-5]
 005D1564    mov         eax,dword ptr [eax*4+6E4040]
 005D156B    push        eax
 005D156C    mov         eax,dword ptr [ebp-4]
 005D156F    call        TWinControl.GetHandle
 005D1574    push        eax
 005D1575    call        USER32.ShowWindow
 005D157A    pop         ecx
 005D157B    pop         ecx
 005D157C    pop         ebp
 005D157D    ret
*}
end;

//005D1580
procedure sub_005D1580(?:TCustomForm);
begin
{*
 005D1580    push        ebp
 005D1581    mov         ebp,esp
 005D1583    add         esp,0FFFFFFDC
 005D1586    push        ebx
 005D1587    mov         dword ptr [ebp-4],eax
 005D158A    mov         eax,dword ptr [ebp-4]
 005D158D    cmp         byte ptr [eax+231],0
>005D1594    je          005D193E
 005D159A    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D159F    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D15A3    je          005D193E
 005D15A9    xor         eax,eax
 005D15AB    mov         dword ptr [ebp-8],eax
 005D15AE    mov         eax,dword ptr [ebp-4]
 005D15B1    cmp         byte ptr [eax+231],2
>005D15B8    jne         005D15CF
 005D15BA    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D15BF    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D15C2    call        005D0D04
 005D15C7    mov         eax,dword ptr [eax+4]
 005D15CA    mov         dword ptr [ebp-8],eax
>005D15CD    jmp         005D1619
 005D15CF    mov         eax,dword ptr [ebp-4]
 005D15D2    cmp         byte ptr [eax+231],3
>005D15D9    jne         005D15FB
 005D15DB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D15E0    cmp         dword ptr [eax+68],0;TScreen.FActiveCustomForm:TCustomForm
>005D15E4    je          005D15FB
 005D15E6    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D15EB    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 005D15EE    call        005D0D04
 005D15F3    mov         eax,dword ptr [eax+4]
 005D15F6    mov         dword ptr [ebp-8],eax
>005D15F9    jmp         005D1619
 005D15FB    mov         eax,dword ptr [ebp-4]
 005D15FE    cmp         byte ptr [eax+231],1
>005D1605    jne         005D1619
 005D1607    xor         edx,edx
 005D1609    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D160E    call        005D5680
 005D1613    mov         eax,dword ptr [eax+4]
 005D1616    mov         dword ptr [ebp-8],eax
 005D1619    mov         eax,dword ptr [ebp-4]
 005D161C    call        005D0D04
 005D1621    mov         eax,dword ptr [eax+4]
 005D1624    mov         dword ptr [ebp-0C],eax
 005D1627    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D162C    call        005D56A4
 005D1631    dec         eax
 005D1632    test        eax,eax
>005D1634    jl          005D193E
 005D163A    inc         eax
 005D163B    mov         dword ptr [ebp-20],eax
 005D163E    mov         dword ptr [ebp-10],0
 005D1645    mov         edx,dword ptr [ebp-10]
 005D1648    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D164D    call        005D5680
 005D1652    mov         eax,dword ptr [eax+4]
 005D1655    cmp         eax,dword ptr [ebp-8]
>005D1658    jne         005D1932
 005D165E    mov         eax,dword ptr [ebp-8]
 005D1661    cmp         eax,dword ptr [ebp-0C]
>005D1664    je          005D1932
 005D166A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D166F    call        005D56A4
 005D1674    dec         eax
 005D1675    test        eax,eax
>005D1677    jl          005D1932
 005D167D    inc         eax
 005D167E    mov         dword ptr [ebp-24],eax
 005D1681    mov         dword ptr [ebp-14],0
 005D1688    mov         edx,dword ptr [ebp-14]
 005D168B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1690    call        005D5680
 005D1695    mov         eax,dword ptr [eax+4]
 005D1698    cmp         eax,dword ptr [ebp-0C]
>005D169B    jne         005D1926
 005D16A1    mov         eax,dword ptr [ebp-4]
 005D16A4    cmp         byte ptr [eax+230],4
>005D16AB    jne         005D173D
 005D16B1    mov         eax,dword ptr [ebp-4]
 005D16B4    mov         eax,dword ptr [eax+48]
 005D16B7    push        eax
 005D16B8    mov         eax,dword ptr [ebp-4]
 005D16BB    mov         eax,dword ptr [eax+4C]
 005D16BE    push        eax
 005D16BF    mov         edx,dword ptr [ebp-10]
 005D16C2    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D16C7    call        005D5680
 005D16CC    call        005D5220
 005D16D1    mov         ebx,eax
 005D16D3    mov         edx,dword ptr [ebp-10]
 005D16D6    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D16DB    call        005D5680
 005D16E0    call        005D51FC
 005D16E5    mov         edx,dword ptr [ebp-4]
 005D16E8    sub         eax,dword ptr [edx+4C]
 005D16EB    sar         eax,1
>005D16ED    jns         005D16F2
 005D16EF    adc         eax,0
 005D16F2    add         ebx,eax
 005D16F4    push        ebx
 005D16F5    mov         edx,dword ptr [ebp-10]
 005D16F8    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D16FD    call        005D5680
 005D1702    call        005D51D8
 005D1707    mov         ebx,eax
 005D1709    mov         edx,dword ptr [ebp-10]
 005D170C    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1711    call        005D5680
 005D1716    call        005D5244
 005D171B    mov         edx,dword ptr [ebp-4]
 005D171E    sub         eax,dword ptr [edx+48]
 005D1721    sar         eax,1
>005D1723    jns         005D1728
 005D1725    adc         eax,0
 005D1728    add         ebx,eax
 005D172A    mov         edx,ebx
 005D172C    mov         eax,dword ptr [ebp-4]
 005D172F    pop         ecx
 005D1730    mov         ebx,dword ptr [eax]
 005D1732    call        dword ptr [ebx+84]
>005D1738    jmp         005D1926
 005D173D    mov         eax,dword ptr [ebp-4]
 005D1740    cmp         byte ptr [eax+230],6
>005D1747    jne         005D17D9
 005D174D    mov         eax,dword ptr [ebp-4]
 005D1750    mov         eax,dword ptr [eax+48]
 005D1753    push        eax
 005D1754    mov         eax,dword ptr [ebp-4]
 005D1757    mov         eax,dword ptr [eax+4C]
 005D175A    push        eax
 005D175B    mov         edx,dword ptr [ebp-10]
 005D175E    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1763    call        005D5680
 005D1768    call        005D5220
 005D176D    mov         ebx,eax
 005D176F    mov         edx,dword ptr [ebp-10]
 005D1772    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1777    call        005D5680
 005D177C    call        005D51FC
 005D1781    mov         edx,dword ptr [ebp-4]
 005D1784    sub         eax,dword ptr [edx+4C]
 005D1787    sar         eax,1
>005D1789    jns         005D178E
 005D178B    adc         eax,0
 005D178E    add         ebx,eax
 005D1790    push        ebx
 005D1791    mov         edx,dword ptr [ebp-10]
 005D1794    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1799    call        005D5680
 005D179E    call        005D51D8
 005D17A3    mov         ebx,eax
 005D17A5    mov         edx,dword ptr [ebp-10]
 005D17A8    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D17AD    call        005D5680
 005D17B2    call        005D5244
 005D17B7    mov         edx,dword ptr [ebp-4]
 005D17BA    sub         eax,dword ptr [edx+48]
 005D17BD    sar         eax,1
>005D17BF    jns         005D17C4
 005D17C1    adc         eax,0
 005D17C4    add         ebx,eax
 005D17C6    mov         edx,ebx
 005D17C8    mov         eax,dword ptr [ebp-4]
 005D17CB    pop         ecx
 005D17CC    mov         ebx,dword ptr [eax]
 005D17CE    call        dword ptr [ebx+84]
>005D17D4    jmp         005D1926
 005D17D9    mov         edx,dword ptr [ebp-10]
 005D17DC    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D17E1    call        005D5680
 005D17E6    call        005D51D8
 005D17EB    mov         ebx,eax
 005D17ED    mov         eax,dword ptr [ebp-4]
 005D17F0    add         ebx,dword ptr [eax+40]
 005D17F3    mov         edx,dword ptr [ebp-14]
 005D17F6    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D17FB    call        005D5680
 005D1800    call        005D51D8
 005D1805    sub         ebx,eax
 005D1807    mov         dword ptr [ebp-18],ebx
 005D180A    mov         edx,dword ptr [ebp-10]
 005D180D    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1812    call        005D5680
 005D1817    call        005D51D8
 005D181C    mov         ebx,eax
 005D181E    mov         edx,dword ptr [ebp-10]
 005D1821    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1826    call        005D5680
 005D182B    call        005D5244
 005D1830    add         ebx,eax
 005D1832    mov         eax,dword ptr [ebp-18]
 005D1835    mov         edx,dword ptr [ebp-4]
 005D1838    add         eax,dword ptr [edx+48]
 005D183B    cmp         ebx,eax
>005D183D    jge         005D1870
 005D183F    mov         edx,dword ptr [ebp-10]
 005D1842    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1847    call        005D5680
 005D184C    call        005D51D8
 005D1851    mov         ebx,eax
 005D1853    mov         edx,dword ptr [ebp-10]
 005D1856    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D185B    call        005D5680
 005D1860    call        005D5244
 005D1865    add         ebx,eax
 005D1867    mov         eax,dword ptr [ebp-4]
 005D186A    sub         ebx,dword ptr [eax+48]
 005D186D    mov         dword ptr [ebp-18],ebx
 005D1870    mov         edx,dword ptr [ebp-10]
 005D1873    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1878    call        005D5680
 005D187D    call        005D5220
 005D1882    mov         ebx,eax
 005D1884    mov         eax,dword ptr [ebp-4]
 005D1887    add         ebx,dword ptr [eax+44]
 005D188A    mov         edx,dword ptr [ebp-14]
 005D188D    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D1892    call        005D5680
 005D1897    call        005D5220
 005D189C    sub         ebx,eax
 005D189E    mov         dword ptr [ebp-1C],ebx
 005D18A1    mov         edx,dword ptr [ebp-10]
 005D18A4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D18A9    call        005D5680
 005D18AE    call        005D5220
 005D18B3    mov         ebx,eax
 005D18B5    mov         edx,dword ptr [ebp-10]
 005D18B8    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D18BD    call        005D5680
 005D18C2    call        005D51FC
 005D18C7    add         ebx,eax
 005D18C9    mov         eax,dword ptr [ebp-1C]
 005D18CC    mov         edx,dword ptr [ebp-4]
 005D18CF    add         eax,dword ptr [edx+4C]
 005D18D2    cmp         ebx,eax
>005D18D4    jge         005D1907
 005D18D6    mov         edx,dword ptr [ebp-10]
 005D18D9    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D18DE    call        005D5680
 005D18E3    call        005D5220
 005D18E8    mov         ebx,eax
 005D18EA    mov         edx,dword ptr [ebp-10]
 005D18ED    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D18F2    call        005D5680
 005D18F7    call        005D51FC
 005D18FC    add         ebx,eax
 005D18FE    mov         eax,dword ptr [ebp-4]
 005D1901    sub         ebx,dword ptr [eax+4C]
 005D1904    mov         dword ptr [ebp-1C],ebx
 005D1907    mov         eax,dword ptr [ebp-4]
 005D190A    mov         eax,dword ptr [eax+48]
 005D190D    push        eax
 005D190E    mov         eax,dword ptr [ebp-4]
 005D1911    mov         eax,dword ptr [eax+4C]
 005D1914    push        eax
 005D1915    mov         ecx,dword ptr [ebp-1C]
 005D1918    mov         edx,dword ptr [ebp-18]
 005D191B    mov         eax,dword ptr [ebp-4]
 005D191E    mov         ebx,dword ptr [eax]
 005D1920    call        dword ptr [ebx+84]
 005D1926    inc         dword ptr [ebp-14]
 005D1929    dec         dword ptr [ebp-24]
>005D192C    jne         005D1688
 005D1932    inc         dword ptr [ebp-10]
 005D1935    dec         dword ptr [ebp-20]
>005D1938    jne         005D1645
 005D193E    pop         ebx
 005D193F    mov         esp,ebp
 005D1941    pop         ebp
 005D1942    ret
*}
end;

//005D1944
{*procedure sub_005D1944(?:?);
begin
 005D1944    push        ebp
 005D1945    mov         ebp,esp
 005D1947    add         esp,0FFFFFFF4
 005D194A    mov         dword ptr [ebp-8],edx
 005D194D    mov         dword ptr [ebp-4],eax
 005D1950    mov         edx,dword ptr [ebp-8]
 005D1953    mov         eax,dword ptr [ebp-4]
 005D1956    call        005CE0D0
 005D195B    mov         edx,dword ptr [ebp-8]
 005D195E    mov         eax,dword ptr [ebp-4]
 005D1961    call        005D4C04
 005D1966    mov         eax,dword ptr [ebp-4]
 005D1969    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D196D    jne         005D1993
 005D196F    mov         eax,dword ptr [ebp-4]
 005D1972    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>005D1979    jne         005D1993
 005D197B    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D1980    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D1983    mov         edx,dword ptr [ebp-8]
 005D1986    mov         dword ptr [edx+1C],eax
 005D1989    mov         eax,dword ptr [ebp-8]
 005D198C    and         dword ptr [eax+4],0BFFCFFFF
 005D1993    mov         eax,dword ptr [ebp-8]
 005D1996    mov         dword ptr [eax+24],8
 005D199D    mov         eax,dword ptr [ebp-4]
 005D19A0    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D19A4    je          005D19BE
 005D19A6    mov         eax,dword ptr [ebp-4]
 005D19A9    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D19AD    jne         005D19BE
 005D19AF    mov         eax,dword ptr [ebp-8]
 005D19B2    or          dword ptr [eax+4],0CF0000
>005D19B9    jmp         005D1BF8
 005D19BE    mov         eax,dword ptr [ebp-4]
 005D19C1    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 005D19C7    dec         eax
 005D19C8    sub         al,2
>005D19CA    jae         005D19E0
 005D19CC    mov         eax,dword ptr [ebp-8]
 005D19CF    mov         dword ptr [eax+0C],80000000
 005D19D6    mov         eax,dword ptr [ebp-8]
 005D19D9    mov         dword ptr [eax+10],80000000
 005D19E0    mov         eax,dword ptr [ebp-4]
 005D19E3    mov         al,byte ptr [eax+228];TCustomForm.FBorderIcons:TBorderIcons
 005D19E9    mov         byte ptr [ebp-9],al
 005D19EC    mov         eax,dword ptr [ebp-4]
 005D19EF    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 005D19F5    mov         byte ptr [ebp-0A],al
 005D19F8    mov         eax,dword ptr [ebp-4]
 005D19FB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D1A02    jne         005D1A13
 005D1A04    mov         al,byte ptr [ebp-0A]
 005D1A07    test        al,al
>005D1A09    je          005D1A0F
 005D1A0B    sub         al,3
>005D1A0D    jne         005D1A13
 005D1A0F    mov         byte ptr [ebp-0A],2
 005D1A13    xor         eax,eax
 005D1A15    mov         al,byte ptr [ebp-0A]
 005D1A18    cmp         eax,5
>005D1A1B    ja          005D1B0F
 005D1A21    jmp         dword ptr [eax*4+5D1A28]
 005D1A21    dd          005D1A40
 005D1A21    dd          005D1A6C
 005D1A21    dd          005D1A7B
 005D1A21    dd          005D1AAC
 005D1A21    dd          005D1A6C
 005D1A21    dd          005D1A7B
 005D1A40    mov         eax,dword ptr [ebp-4]
 005D1A43    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D1A47    jne         005D1A5F
 005D1A49    mov         eax,dword ptr [ebp-4]
 005D1A4C    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>005D1A53    jne         005D1A5F
 005D1A55    mov         eax,dword ptr [ebp-8]
 005D1A58    or          dword ptr [eax+4],80000000
 005D1A5F    mov         al,[005D1BFC];0x0 gvar_005D1BFC
 005D1A64    mov         byte ptr [ebp-9],al
>005D1A67    jmp         005D1B0F
 005D1A6C    mov         eax,dword ptr [ebp-8]
 005D1A6F    or          dword ptr [eax+4],0C00000
>005D1A76    jmp         005D1B0F
 005D1A7B    mov         eax,dword ptr [ebp-8]
 005D1A7E    or          dword ptr [eax+4],0C40000
 005D1A85    mov         eax,dword ptr [ebp-4]
 005D1A88    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 005D1A8E    sub         al,1
>005D1A90    je          005D1A96
 005D1A92    sub         al,2
>005D1A94    jne         005D1B0F
 005D1A96    mov         eax,dword ptr [ebp-8]
 005D1A99    mov         dword ptr [eax+14],80000000
 005D1AA0    mov         eax,dword ptr [ebp-8]
 005D1AA3    mov         dword ptr [eax+18],80000000
>005D1AAA    jmp         005D1B0F
 005D1AAC    mov         eax,dword ptr [ebp-8]
 005D1AAF    mov         eax,dword ptr [eax+4]
 005D1AB2    or          eax,80000000
 005D1AB7    or          eax,0C00000
 005D1ABC    mov         edx,dword ptr [ebp-8]
 005D1ABF    mov         dword ptr [edx+4],eax
 005D1AC2    mov         eax,dword ptr [ebp-8]
 005D1AC5    mov         dword ptr [eax+8],101
 005D1ACC    mov         edx,dword ptr [ebp-8]
 005D1ACF    add         edx,8
 005D1AD2    mov         eax,dword ptr [ebp-4]
 005D1AD5    call        005F7F40
 005D1ADA    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D1ADF    cmp         byte ptr [eax],0
>005D1AE2    jne         005D1AFA
 005D1AE4    mov         eax,dword ptr [ebp-8]
 005D1AE7    mov         eax,dword ptr [eax+4]
 005D1AEA    or          eax,400000
 005D1AEF    or          eax,80
 005D1AF4    mov         edx,dword ptr [ebp-8]
 005D1AF7    mov         dword ptr [edx+4],eax
 005D1AFA    mov         al,[005D1C00];0x9 gvar_005D1C00
 005D1AFF    and         al,byte ptr [ebp-9]
 005D1B02    mov         byte ptr [ebp-9],al
 005D1B05    mov         eax,dword ptr [ebp-8]
 005D1B08    mov         dword ptr [eax+24],2808
 005D1B0F    mov         al,byte ptr [ebp-0A]
 005D1B12    add         al,0FC
 005D1B14    sub         al,2
>005D1B16    jae         005D1B3B
 005D1B18    mov         eax,dword ptr [ebp-8]
 005D1B1B    mov         dword ptr [eax+8],80
 005D1B22    mov         edx,dword ptr [ebp-8]
 005D1B25    add         edx,8
 005D1B28    mov         eax,dword ptr [ebp-4]
 005D1B2B    call        005F7F40
 005D1B30    mov         al,[005D1C04];0x1 gvar_005D1C04
 005D1B35    and         al,byte ptr [ebp-9]
 005D1B38    mov         byte ptr [ebp-9],al
 005D1B3B    mov         al,byte ptr [ebp-0A]
 005D1B3E    sub         al,3
>005D1B40    jae         005D1BA4
 005D1B42    mov         eax,dword ptr [ebp-4]
 005D1B45    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D1B4C    jne         005D1B54
 005D1B4E    test        byte ptr [ebp-9],1
>005D1B52    je          005D1B74
 005D1B54    test        byte ptr [ebp-9],2
>005D1B58    je          005D1B64
 005D1B5A    mov         eax,dword ptr [ebp-8]
 005D1B5D    or          dword ptr [eax+4],20000
 005D1B64    test        byte ptr [ebp-9],4
>005D1B68    je          005D1B74
 005D1B6A    mov         eax,dword ptr [ebp-8]
 005D1B6D    or          dword ptr [eax+4],10000
 005D1B74    mov         eax,dword ptr [ebp-4]
 005D1B77    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>005D1B7E    jne         005D1B8C
 005D1B80    mov         eax,dword ptr [ebp-8]
 005D1B83    or          dword ptr [eax+4],20000000
>005D1B8A    jmp         005D1BAE
 005D1B8C    mov         eax,dword ptr [ebp-4]
 005D1B8F    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>005D1B96    jne         005D1BAE
 005D1B98    mov         eax,dword ptr [ebp-8]
 005D1B9B    or          dword ptr [eax+4],1000000
>005D1BA2    jmp         005D1BAE
 005D1BA4    mov         eax,dword ptr [ebp-4]
 005D1BA7    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 005D1BAE    test        byte ptr [ebp-9],1
>005D1BB2    je          005D1BBE
 005D1BB4    mov         eax,dword ptr [ebp-8]
 005D1BB7    or          dword ptr [eax+4],80000
 005D1BBE    test        byte ptr [ebp-9],8
>005D1BC2    je          005D1BCE
 005D1BC4    mov         eax,dword ptr [ebp-8]
 005D1BC7    or          dword ptr [eax+8],400
 005D1BCE    mov         eax,dword ptr [ebp-4]
 005D1BD1    test        byte ptr [eax+1D],2;TCustomForm.?f1D:byte
>005D1BD5    je          005D1BE1
 005D1BD7    mov         eax,dword ptr [ebp-8]
 005D1BDA    and         dword ptr [eax+4],0FF3FFFFF
 005D1BE1    mov         eax,dword ptr [ebp-4]
 005D1BE4    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D1BEB    jne         005D1BF8
 005D1BED    mov         eax,692B9A;USER32.DefMDIChildProcA
 005D1BF2    mov         edx,dword ptr [ebp-8]
 005D1BF5    mov         dword ptr [edx+28],eax
 005D1BF8    mov         esp,ebp
 005D1BFA    pop         ebp
 005D1BFB    ret
end;*}

//005D1C08
procedure TCustomForm.CreateWnd;
begin
{*
 005D1C08    push        ebp
 005D1C09    mov         ebp,esp
 005D1C0B    add         esp,0FFFFFFF4
 005D1C0E    mov         dword ptr [ebp-4],eax
 005D1C11    mov         eax,dword ptr [ebp-4]
 005D1C14    call        TScrollingWinControl.CreateWnd
 005D1C19    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D1C1E    cmp         byte ptr [eax],0
>005D1C21    je          005D1C66
 005D1C23    mov         eax,dword ptr [ebp-4]
 005D1C26    cmp         byte ptr [eax+229],3;TCustomForm.FBorderStyle:TFormBorderStyle
>005D1C2D    je          005D1C4F
 005D1C2F    mov         eax,dword ptr [ebp-4]
 005D1C32    call        005D27C8
 005D1C37    push        eax
 005D1C38    push        1
 005D1C3A    push        80
 005D1C3F    mov         eax,dword ptr [ebp-4]
 005D1C42    call        TWinControl.GetHandle
 005D1C47    push        eax
 005D1C48    call        USER32.SendMessageA
>005D1C4D    jmp         005D1C66
 005D1C4F    push        0
 005D1C51    push        1
 005D1C53    push        80
 005D1C58    mov         eax,dword ptr [ebp-4]
 005D1C5B    call        TWinControl.GetHandle
 005D1C60    push        eax
 005D1C61    call        USER32.SendMessageA
 005D1C66    mov         eax,dword ptr [ebp-4]
 005D1C69    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D1C6D    jne         005D1D68
 005D1C73    mov         eax,dword ptr [ebp-4]
 005D1C76    mov         al,byte ptr [eax+22F];TCustomForm.FFormStyle:TFormStyle
 005D1C7C    sub         al,2
>005D1C7E    je          005D1C8D
 005D1C80    dec         al
>005D1C82    je          005D1D4E
>005D1C88    jmp         005D1D68
 005D1C8D    mov         dword ptr [ebp-8],0FF00
 005D1C94    xor         eax,eax
 005D1C96    mov         dword ptr [ebp-0C],eax
 005D1C99    mov         eax,dword ptr [ebp-4]
 005D1C9C    cmp         dword ptr [eax+258],0;TCustomForm.FWindowMenu:TMenuItem
>005D1CA3    je          005D1CB6
 005D1CA5    mov         eax,dword ptr [ebp-4]
 005D1CA8    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 005D1CAE    call        005A3DA0
 005D1CB3    mov         dword ptr [ebp-0C],eax
 005D1CB6    lea         eax,[ebp-0C]
 005D1CB9    push        eax
 005D1CBA    mov         eax,[006EA390];0x0 gvar_006EA390
 005D1CBF    push        eax
 005D1CC0    push        0
 005D1CC2    mov         eax,dword ptr [ebp-4]
 005D1CC5    call        TWinControl.GetHandle
 005D1CCA    push        eax
 005D1CCB    mov         eax,dword ptr [ebp-4]
 005D1CCE    call        TControl.GetClientHeight
 005D1CD3    push        eax
 005D1CD4    mov         eax,dword ptr [ebp-4]
 005D1CD7    call        TControl.GetClientWidth
 005D1CDC    push        eax
 005D1CDD    push        0
 005D1CDF    push        0
 005D1CE1    push        56330001
 005D1CE6    push        0
 005D1CE8    push        5D1D6C
 005D1CED    push        200
 005D1CF2    call        USER32.CreateWindowExA
 005D1CF7    mov         edx,dword ptr [ebp-4]
 005D1CFA    mov         dword ptr [edx+254],eax;TCustomForm.FClientHandle:HWND
 005D1D00    mov         eax,dword ptr [ebp-4]
 005D1D03    push        eax
 005D1D04    push        5D0718;TCustomForm.ClientWndProc
 005D1D09    call        006519D4
 005D1D0E    mov         edx,dword ptr [ebp-4]
 005D1D11    mov         dword ptr [edx+278],eax;TCustomForm.FClientInstance:TFarProc
 005D1D17    push        0FC
 005D1D19    mov         eax,dword ptr [ebp-4]
 005D1D1C    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 005D1D22    push        eax
 005D1D23    call        USER32.GetWindowLongA
 005D1D28    mov         edx,dword ptr [ebp-4]
 005D1D2B    mov         dword ptr [edx+274],eax;TCustomForm.FDefClientProc:TFarProc
 005D1D31    mov         eax,dword ptr [ebp-4]
 005D1D34    mov         eax,dword ptr [eax+278];TCustomForm.FClientInstance:TFarProc
 005D1D3A    push        eax
 005D1D3B    push        0FC
 005D1D3D    mov         eax,dword ptr [ebp-4]
 005D1D40    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 005D1D46    push        eax
 005D1D47    call        USER32.SetWindowLongA
>005D1D4C    jmp         005D1D68
 005D1D4E    push        13
 005D1D50    push        0
 005D1D52    push        0
 005D1D54    push        0
 005D1D56    push        0
 005D1D58    push        0FF
 005D1D5A    mov         eax,dword ptr [ebp-4]
 005D1D5D    call        TWinControl.GetHandle
 005D1D62    push        eax
 005D1D63    call        USER32.SetWindowPos
 005D1D68    mov         esp,ebp
 005D1D6A    pop         ebp
 005D1D6B    ret
*}
end;

//005D1D78
{*procedure sub_005D1D78(?:?);
begin
 005D1D78    push        ebp
 005D1D79    mov         ebp,esp
 005D1D7B    add         esp,0FFFFFF44
 005D1D81    push        esi
 005D1D82    push        edi
 005D1D83    xor         ecx,ecx
 005D1D85    mov         dword ptr [ebp-0BC],ecx
 005D1D8B    mov         dword ptr [ebp-8],edx
 005D1D8E    mov         dword ptr [ebp-4],eax
 005D1D91    xor         eax,eax
 005D1D93    push        ebp
 005D1D94    push        5D1ED7
 005D1D99    push        dword ptr fs:[eax]
 005D1D9C    mov         dword ptr fs:[eax],esp
 005D1D9F    mov         eax,dword ptr [ebp-4]
 005D1DA2    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D1DA9    jne         005D1E82
 005D1DAF    mov         eax,dword ptr [ebp-4]
 005D1DB2    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D1DB6    jne         005D1E82
 005D1DBC    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D1DC1    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D1DC5    je          005D1DD8
 005D1DC7    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D1DCC    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D1DCF    cmp         dword ptr [eax+254],0;TForm.FClientHandle:HWND
>005D1DD6    jne         005D1DFF
 005D1DD8    lea         edx,[ebp-0BC]
 005D1DDE    mov         eax,[006E9E78];^gvar_0063CB00
 005D1DE3    call        LoadResString
 005D1DE8    mov         ecx,dword ptr [ebp-0BC]
 005D1DEE    mov         dl,1
 005D1DF0    mov         eax,[00642244];EInvalidOperation
 005D1DF5    call        Exception.Create;EInvalidOperation.Create
 005D1DFA    call        @RaiseExcept
 005D1DFF    mov         eax,dword ptr [ebp-8]
 005D1E02    add         eax,4C
 005D1E05    mov         dword ptr [ebp-2C],eax
 005D1E08    mov         eax,dword ptr [ebp-8]
 005D1E0B    mov         eax,dword ptr [eax]
 005D1E0D    mov         dword ptr [ebp-28],eax
 005D1E10    mov         eax,[006EA390];0x0 gvar_006EA390
 005D1E15    mov         dword ptr [ebp-24],eax
 005D1E18    mov         eax,dword ptr [ebp-8]
 005D1E1B    mov         eax,dword ptr [eax+0C]
 005D1E1E    mov         dword ptr [ebp-20],eax
 005D1E21    mov         eax,dword ptr [ebp-8]
 005D1E24    mov         eax,dword ptr [eax+10]
 005D1E27    mov         dword ptr [ebp-1C],eax
 005D1E2A    mov         eax,dword ptr [ebp-8]
 005D1E2D    mov         eax,dword ptr [eax+14]
 005D1E30    mov         dword ptr [ebp-18],eax
 005D1E33    mov         eax,dword ptr [ebp-8]
 005D1E36    mov         eax,dword ptr [eax+18]
 005D1E39    mov         dword ptr [ebp-14],eax
 005D1E3C    mov         eax,dword ptr [ebp-8]
 005D1E3F    mov         eax,dword ptr [eax+4]
 005D1E42    mov         dword ptr [ebp-10],eax
 005D1E45    mov         eax,dword ptr [ebp-8]
 005D1E48    mov         eax,dword ptr [eax+20]
 005D1E4B    mov         dword ptr [ebp-0C],eax
 005D1E4E    lea         eax,[ebp-2C]
 005D1E51    push        eax
 005D1E52    push        0
 005D1E54    push        220
 005D1E59    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D1E5E    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D1E61    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005D1E67    push        eax
 005D1E68    call        USER32.SendMessageA
 005D1E6D    mov         edx,dword ptr [ebp-4]
 005D1E70    mov         dword ptr [edx+180],eax;TCustomForm.FHandle:HWND
 005D1E76    mov         eax,dword ptr [ebp-4]
 005D1E79    or          byte ptr [eax+2EC],10;TCustomForm.FFormState:TFormState
>005D1E80    jmp         005D1EB6
 005D1E82    mov         eax,dword ptr [ebp-8]
 005D1E85    mov         esi,eax
 005D1E87    lea         edi,[ebp-0B8]
 005D1E8D    mov         ecx,23
 005D1E92    rep movs    dword ptr [edi],dword ptr [esi]
 005D1E94    and         dword ptr [ebp-0B0],0FFF7FFFF
 005D1E9E    lea         edx,[ebp-0B8]
 005D1EA4    mov         eax,dword ptr [ebp-4]
 005D1EA7    call        005F831C
 005D1EAC    mov         eax,dword ptr [ebp-4]
 005D1EAF    and         byte ptr [eax+2EC],0EF;TCustomForm.FFormState:TFormState
 005D1EB6    mov         eax,dword ptr [ebp-4]
 005D1EB9    call        005D4A38
 005D1EBE    xor         eax,eax
 005D1EC0    pop         edx
 005D1EC1    pop         ecx
 005D1EC2    pop         ecx
 005D1EC3    mov         dword ptr fs:[eax],edx
 005D1EC6    push        5D1EDE
 005D1ECB    lea         eax,[ebp-0BC]
 005D1ED1    call        @LStrClr
 005D1ED6    ret
>005D1ED7    jmp         @HandleFinally
>005D1EDC    jmp         005D1ECB
 005D1EDE    pop         edi
 005D1EDF    pop         esi
 005D1EE0    mov         esp,ebp
 005D1EE2    pop         ebp
 005D1EE3    ret
end;*}

//005D1EE4
procedure TCustomForm.DestroyWindowHandle;
begin
{*
 005D1EE4    push        ebp
 005D1EE5    mov         ebp,esp
 005D1EE7    push        ecx
 005D1EE8    mov         dword ptr [ebp-4],eax
 005D1EEB    mov         eax,dword ptr [ebp-4]
 005D1EEE    test        byte ptr [eax+2EC],10;TCustomForm.FFormState:TFormState
>005D1EF5    je          005D1F1D
 005D1EF7    push        0
 005D1EF9    mov         eax,dword ptr [ebp-4]
 005D1EFC    call        TWinControl.GetHandle
 005D1F01    push        eax
 005D1F02    push        221
 005D1F07    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D1F0C    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D1F0F    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005D1F15    push        eax
 005D1F16    call        USER32.SendMessageA
>005D1F1B    jmp         005D1F25
 005D1F1D    mov         eax,dword ptr [ebp-4]
 005D1F20    call        TWinControl.DestroyWindowHandle
 005D1F25    mov         eax,dword ptr [ebp-4]
 005D1F28    xor         edx,edx
 005D1F2A    mov         dword ptr [eax+254],edx;TCustomForm.FClientHandle:HWND
 005D1F30    pop         ecx
 005D1F31    pop         ebp
 005D1F32    ret
*}
end;

//005D1F34
procedure TCustomForm.DefaultHandler(var Message:void );
begin
{*
 005D1F34    push        ebp
 005D1F35    mov         ebp,esp
 005D1F37    add         esp,0FFFFFFF8
 005D1F3A    mov         dword ptr [ebp-8],edx
 005D1F3D    mov         dword ptr [ebp-4],eax
 005D1F40    mov         eax,dword ptr [ebp-4]
 005D1F43    cmp         dword ptr [eax+254],0
>005D1F4A    je          005D1FB2
 005D1F4C    mov         eax,dword ptr [ebp-8]
 005D1F4F    cmp         dword ptr [eax],5
>005D1F52    jne         005D1F7E
 005D1F54    mov         eax,dword ptr [ebp-8];{TWinControl.GetHandle}
 005D1F57    mov         eax,dword ptr [eax+8]
 005D1F5A    push        eax
 005D1F5B    mov         eax,dword ptr [ebp-8];{DefWindowProc}
 005D1F5E    mov         eax,dword ptr [eax+4]
 005D1F61    push        eax
 005D1F62    mov         eax,dword ptr [ebp-8]
 005D1F65    mov         eax,dword ptr [eax]
 005D1F67    push        eax
 005D1F68    mov         eax,dword ptr [ebp-4]
 005D1F6B    call        TWinControl.GetHandle
 005D1F70    push        eax
 005D1F71    call        USER32.DefWindowProcA
 005D1F76    mov         edx,dword ptr [ebp-8]
 005D1F79    mov         dword ptr [edx+0C],eax;{TWinControl.GetHandle}
>005D1F7C    jmp         005D1FBD
 005D1F7E    mov         eax,dword ptr [ebp-8];{DefFrameProc}
 005D1F81    mov         eax,dword ptr [eax+8]
 005D1F84    push        eax
 005D1F85    mov         eax,dword ptr [ebp-8]
 005D1F88    mov         eax,dword ptr [eax+4]
 005D1F8B    push        eax
 005D1F8C    mov         eax,dword ptr [ebp-8]
 005D1F8F    mov         eax,dword ptr [eax]
 005D1F91    push        eax
 005D1F92    mov         eax,dword ptr [ebp-4]
 005D1F95    mov         eax,dword ptr [eax+254]
 005D1F9B    push        eax
 005D1F9C    mov         eax,dword ptr [ebp-4]
 005D1F9F    call        TWinControl.GetHandle
 005D1FA4    push        eax
 005D1FA5    call        USER32.DefFrameProcA
 005D1FAA    mov         edx,dword ptr [ebp-8]
 005D1FAD    mov         dword ptr [edx+0C],eax
>005D1FB0    jmp         005D1FBD
 005D1FB2    mov         edx,dword ptr [ebp-8]
 005D1FB5    mov         eax,dword ptr [ebp-4]
 005D1FB8    call        TWinControl.DefaultHandler
 005D1FBD    pop         ecx
 005D1FBE    pop         ecx
 005D1FBF    pop         ebp
 005D1FC0    ret
*}
end;

//005D1FC4
procedure TForm.SetActiveControl(Value:TObject);
begin
{*
 005D1FC4    push        ebp
 005D1FC5    mov         ebp,esp
 005D1FC7    add         esp,0FFFFFFF4
 005D1FCA    push        esi
 005D1FCB    xor         ecx,ecx
 005D1FCD    mov         dword ptr [ebp-0C],ecx
 005D1FD0    mov         dword ptr [ebp-8],edx
 005D1FD3    mov         dword ptr [ebp-4],eax
 005D1FD6    xor         eax,eax
 005D1FD8    push        ebp
 005D1FD9    push        5D2096
 005D1FDE    push        dword ptr fs:[eax]
 005D1FE1    mov         dword ptr fs:[eax],esp
 005D1FE4    mov         eax,dword ptr [ebp-4]
 005D1FE7    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 005D1FED    cmp         eax,dword ptr [ebp-8]
>005D1FF0    je          005D2080
 005D1FF6    cmp         dword ptr [ebp-8],0
>005D1FFA    je          005D204B
 005D1FFC    mov         eax,dword ptr [ebp-8]
 005D1FFF    cmp         eax,dword ptr [ebp-4]
>005D2002    je          005D202A
 005D2004    mov         eax,dword ptr [ebp-8]
 005D2007    call        005CD060
 005D200C    cmp         eax,dword ptr [ebp-4]
>005D200F    jne         005D202A
 005D2011    mov         eax,dword ptr [ebp-4]
 005D2014    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>005D2018    jne         005D204B
 005D201A    mov         eax,dword ptr [ebp-8]
 005D201D    mov         si,0FFB8
 005D2021    call        @CallDynaInst
 005D2026    test        al,al
>005D2028    jne         005D204B
 005D202A    lea         edx,[ebp-0C]
 005D202D    mov         eax,[006E9E34];^gvar_0063CA78
 005D2032    call        LoadResString
 005D2037    mov         ecx,dword ptr [ebp-0C]
 005D203A    mov         dl,1
 005D203C    mov         eax,[00642244];EInvalidOperation
 005D2041    call        Exception.Create;EInvalidOperation.Create
 005D2046    call        @RaiseExcept
 005D204B    mov         eax,dword ptr [ebp-8]
 005D204E    mov         edx,dword ptr [ebp-4]
 005D2051    mov         dword ptr [edx+220],eax;TForm.FActiveControl:TWinControl
 005D2057    mov         eax,dword ptr [ebp-4]
 005D205A    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>005D205E    jne         005D2080
 005D2060    mov         eax,dword ptr [ebp-4]
 005D2063    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>005D206A    je          005D2074
 005D206C    mov         eax,dword ptr [ebp-4]
 005D206F    call        005D2464
 005D2074    mov         eax,dword ptr [ebp-4]
 005D2077    mov         si,0FFB2
 005D207B    call        @CallDynaInst;TCustomForm.sub_005D2458
 005D2080    xor         eax,eax
 005D2082    pop         edx
 005D2083    pop         ecx
 005D2084    pop         ecx
 005D2085    mov         dword ptr fs:[eax],edx
 005D2088    push        5D209D
 005D208D    lea         eax,[ebp-0C]
 005D2090    call        @LStrClr
 005D2095    ret
>005D2096    jmp         @HandleFinally
>005D209B    jmp         005D208D
 005D209D    pop         esi
 005D209E    mov         esp,ebp
 005D20A0    pop         ebp
 005D20A1    ret
*}
end;

//005D20A4
{*procedure sub_005D20A4(?:?; ?:TWinControl; ?:?);
begin
 005D20A4    push        ebp
 005D20A5    mov         ebp,esp
 005D20A7    add         esp,0FFFFFFF4
 005D20AA    mov         byte ptr [ebp-9],cl
 005D20AD    mov         dword ptr [ebp-8],edx
 005D20B0    mov         dword ptr [ebp-4],eax
 005D20B3    cmp         byte ptr [ebp-9],0
>005D20B7    je          005D20DD
 005D20B9    mov         eax,dword ptr [ebp-4]
 005D20BC    mov         edx,dword ptr [eax+224]
 005D20C2    mov         eax,dword ptr [ebp-8]
 005D20C5    call        005F7AB8
 005D20CA    test        al,al
>005D20CC    je          005D20DD
 005D20CE    mov         eax,dword ptr [ebp-8]
 005D20D1    mov         eax,dword ptr [eax+30]
 005D20D4    mov         edx,dword ptr [ebp-4]
 005D20D7    mov         dword ptr [edx+224],eax
 005D20DD    mov         eax,dword ptr [ebp-4]
 005D20E0    mov         edx,dword ptr [eax+220]
 005D20E6    mov         eax,dword ptr [ebp-8]
 005D20E9    call        005F7AB8
 005D20EE    test        al,al
>005D20F0    je          005D20FC
 005D20F2    xor         edx,edx
 005D20F4    mov         eax,dword ptr [ebp-4]
 005D20F7    call        TForm.SetActiveControl
 005D20FC    mov         esp,ebp
 005D20FE    pop         ebp
 005D20FF    ret
end;*}

//005D2100
{*procedure sub_005D2100(?:?; ?:TWinControl);
begin
 005D2100    push        ebp
 005D2101    mov         ebp,esp
 005D2103    add         esp,0FFFFFFF4
 005D2106    mov         dword ptr [ebp-8],edx
 005D2109    mov         dword ptr [ebp-4],eax
 005D210C    mov         eax,dword ptr [ebp-4]
 005D210F    mov         al,byte ptr [eax+22E]
 005D2115    mov         byte ptr [ebp-9],al
 005D2118    mov         edx,dword ptr [ebp-8]
 005D211B    mov         eax,dword ptr [ebp-4]
 005D211E    call        TForm.SetActiveControl
 005D2123    cmp         byte ptr [ebp-9],0
>005D2127    jne         005D2134
 005D2129    mov         eax,dword ptr [ebp-4]
 005D212C    mov         edx,dword ptr [eax]
 005D212E    call        dword ptr [edx+0C0]
 005D2134    mov         esp,ebp
 005D2136    pop         ebp
 005D2137    ret
end;*}

//005D2138
{*function sub_005D2138(?:?):?;
begin
 005D2138    push        ebp
 005D2139    mov         ebp,esp
 005D213B    add         esp,0FFFFFFEC
 005D213E    mov         dword ptr [ebp-8],edx
 005D2141    mov         dword ptr [ebp-4],eax
 005D2144    mov         byte ptr [ebp-9],0
 005D2148    inc         dword ptr ds:[6E3FE0];gvar_006E3FE0
 005D214E    mov         eax,dword ptr [ebp-4]
 005D2151    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>005D2158    jne         005D217B
 005D215A    mov         eax,dword ptr [ebp-8]
 005D215D    cmp         eax,dword ptr [ebp-4]
>005D2160    je          005D2170
 005D2162    mov         eax,dword ptr [ebp-4]
 005D2165    mov         edx,dword ptr [ebp-8]
 005D2168    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
>005D216E    jmp         005D217B
 005D2170    mov         eax,dword ptr [ebp-4]
 005D2173    xor         edx,edx
 005D2175    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 005D217B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D2180    mov         edx,dword ptr [ebp-8]
 005D2183    mov         dword ptr [eax+64],edx;TScreen.FActiveControl:TWinControl
 005D2186    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D218B    mov         edx,dword ptr [ebp-4]
 005D218E    mov         dword ptr [eax+68],edx;TScreen.FActiveCustomForm:TCustomForm
 005D2191    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D2196    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 005D2199    mov         edx,dword ptr [ebp-4]
 005D219C    call        TList.Remove
 005D21A1    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D21A6    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 005D21A9    mov         ecx,dword ptr [ebp-4]
 005D21AC    xor         edx,edx
 005D21AE    call        TList.Insert
 005D21B3    mov         eax,dword ptr [ebp-4]
 005D21B6    mov         edx,dword ptr ds:[5CC540];TForm
 005D21BC    call        @IsClass
 005D21C1    test        al,al
>005D21C3    je          005D21F4
 005D21C5    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D21CA    mov         edx,dword ptr [ebp-4]
 005D21CD    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 005D21D0    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D21D5    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D21D8    mov         edx,dword ptr [ebp-4]
 005D21DB    call        TList.Remove
 005D21E0    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D21E5    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D21E8    mov         ecx,dword ptr [ebp-4]
 005D21EB    xor         edx,edx
 005D21ED    call        TList.Insert
>005D21F2    jmp         005D21FE
 005D21F4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D21F9    xor         edx,edx
 005D21FB    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 005D21FE    mov         eax,dword ptr [ebp-8]
 005D2201    test        byte ptr [eax+54],20
>005D2205    jne         005D244A
 005D220B    mov         eax,dword ptr [ebp-8]
 005D220E    mov         ax,word ptr [eax+54]
 005D2212    or          ax,word ptr ds:[5D2454];0x20 gvar_005D2454
 005D2219    mov         edx,dword ptr [ebp-8]
 005D221C    mov         word ptr [edx+54],ax
 005D2220    xor         eax,eax
 005D2222    push        ebp
 005D2223    push        5D2435
 005D2228    push        dword ptr fs:[eax]
 005D222B    mov         dword ptr fs:[eax],esp
 005D222E    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D2233    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 005D2236    cmp         eax,dword ptr [ebp-4]
>005D2239    je          005D22A4
 005D223B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D2240    cmp         dword ptr [eax+78],0;TScreen.FFocusedForm:TCustomForm
>005D2244    je          005D227A
 005D2246    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D224B    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 005D224E    call        TWinControl.GetHandle
 005D2253    mov         dword ptr [ebp-10],eax
 005D2256    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D225B    xor         edx,edx
 005D225D    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 005D2260    mov         dx,0B001
 005D2264    mov         eax,dword ptr [ebp-10]
 005D2267    call        005CCD68
 005D226C    test        al,al
>005D226E    jne         005D227A
 005D2270    call        @TryFinallyExit
>005D2275    jmp         005D244A
 005D227A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D227F    mov         edx,dword ptr [ebp-4]
 005D2282    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 005D2285    mov         eax,dword ptr [ebp-4]
 005D2288    call        TWinControl.GetHandle
 005D228D    mov         dx,0B000
 005D2291    call        005CCD68
 005D2296    test        al,al
>005D2298    jne         005D22A4
 005D229A    call        @TryFinallyExit
>005D229F    jmp         005D244A
 005D22A4    mov         eax,dword ptr [ebp-4]
 005D22A7    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>005D22AE    jne         005D22BC
 005D22B0    mov         eax,dword ptr [ebp-4]
 005D22B3    mov         edx,dword ptr [ebp-4]
 005D22B6    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 005D22BC    mov         eax,dword ptr [ebp-4]
 005D22BF    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D22C5    cmp         eax,dword ptr [ebp-8]
>005D22C8    je          005D2410
>005D22CE    jmp         005D2310
 005D22D0    mov         eax,dword ptr [ebp-4]
 005D22D3    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D22D9    call        TWinControl.GetHandle
 005D22DE    mov         dword ptr [ebp-10],eax
 005D22E1    mov         eax,dword ptr [ebp-4]
 005D22E4    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D22EA    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 005D22ED    mov         edx,dword ptr [ebp-4]
 005D22F0    mov         dword ptr [edx+224],eax;TCustomForm.FFocusedControl:TWinControl
 005D22F6    mov         dx,0B01B
 005D22FA    mov         eax,dword ptr [ebp-10]
 005D22FD    call        005CCD68
 005D2302    test        al,al
>005D2304    jne         005D2310
 005D2306    call        @TryFinallyExit
>005D230B    jmp         005D244A
 005D2310    mov         eax,dword ptr [ebp-4]
 005D2313    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>005D231A    je          005D2380
 005D231C    mov         eax,dword ptr [ebp-4]
 005D231F    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D2325    mov         edx,dword ptr [ebp-8]
 005D2328    call        005F7AB8
 005D232D    test        al,al
>005D232F    je          005D22D0
>005D2331    jmp         005D2380
 005D2333    mov         eax,dword ptr [ebp-8]
 005D2336    mov         dword ptr [ebp-14],eax
>005D2339    jmp         005D2344
 005D233B    mov         eax,dword ptr [ebp-14]
 005D233E    mov         eax,dword ptr [eax+30]
 005D2341    mov         dword ptr [ebp-14],eax
 005D2344    mov         eax,dword ptr [ebp-14]
 005D2347    mov         eax,dword ptr [eax+30]
 005D234A    mov         edx,dword ptr [ebp-4]
 005D234D    cmp         eax,dword ptr [edx+224];TCustomForm.FFocusedControl:TWinControl
>005D2353    jne         005D233B
 005D2355    mov         eax,dword ptr [ebp-4]
 005D2358    mov         edx,dword ptr [ebp-14]
 005D235B    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 005D2361    mov         eax,dword ptr [ebp-14]
 005D2364    call        TWinControl.GetHandle
 005D2369    mov         dx,0B01A
 005D236D    call        005CCD68
 005D2372    test        al,al
>005D2374    jne         005D2380
 005D2376    call        @TryFinallyExit
>005D237B    jmp         005D244A
 005D2380    mov         eax,dword ptr [ebp-4]
 005D2383    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D2389    cmp         eax,dword ptr [ebp-8]
>005D238C    jne         005D2333
 005D238E    mov         eax,dword ptr [ebp-8]
 005D2391    mov         eax,dword ptr [eax+30]
 005D2394    mov         dword ptr [ebp-14],eax
 005D2397    cmp         dword ptr [ebp-14],0
>005D239B    je          005D23CC
 005D239D    mov         eax,dword ptr [ebp-14]
 005D23A0    mov         edx,dword ptr ds:[5CAABC];TScrollingWinControl
 005D23A6    call        @IsClass
 005D23AB    test        al,al
>005D23AD    je          005D23BD
 005D23AF    mov         edx,dword ptr [ebp-8]
 005D23B2    mov         eax,dword ptr [ebp-14]
 005D23B5    mov         ecx,dword ptr [eax]
 005D23B7    call        dword ptr [ecx+0C8]
 005D23BD    mov         eax,dword ptr [ebp-14]
 005D23C0    mov         eax,dword ptr [eax+30]
 005D23C3    mov         dword ptr [ebp-14],eax
 005D23C6    cmp         dword ptr [ebp-14],0
>005D23CA    jne         005D239D
 005D23CC    mov         eax,dword ptr [ebp-8]
 005D23CF    push        eax
 005D23D0    xor         ecx,ecx
 005D23D2    mov         edx,0B007
 005D23D7    mov         eax,dword ptr [ebp-4]
 005D23DA    call        005F4FA8
 005D23DF    mov         eax,dword ptr [ebp-4]
 005D23E2    cmp         dword ptr [eax+27C],0;TCustomForm.FActiveOleControl:TWinControl
>005D23E9    je          005D2410
 005D23EB    mov         eax,dword ptr [ebp-4]
 005D23EE    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 005D23F4    cmp         eax,dword ptr [ebp-8]
>005D23F7    je          005D2410
 005D23F9    push        0
 005D23FB    mov         eax,dword ptr [ebp-4]
 005D23FE    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 005D2404    xor         ecx,ecx
 005D2406    mov         edx,0B02A
 005D240B    call        005F4FA8
 005D2410    xor         eax,eax
 005D2412    pop         edx
 005D2413    pop         ecx
 005D2414    pop         ecx
 005D2415    mov         dword ptr fs:[eax],edx
 005D2418    push        5D243C
 005D241D    mov         eax,dword ptr [ebp-8]
 005D2420    mov         dx,word ptr ds:[5D2454];0x20 gvar_005D2454
 005D2427    not         edx
 005D2429    and         dx,word ptr [eax+54]
 005D242D    mov         eax,dword ptr [ebp-8]
 005D2430    mov         word ptr [eax+54],dx
 005D2434    ret
>005D2435    jmp         @HandleFinally
>005D243A    jmp         005D241D
 005D243C    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D2441    call        005D575C
 005D2446    mov         byte ptr [ebp-9],1
 005D244A    mov         al,byte ptr [ebp-9]
 005D244D    mov         esp,ebp
 005D244F    pop         ebp
 005D2450    ret
end;*}

//005D2458
procedure TCustomForm.sub_005D2458;
begin
{*
 005D2458    push        ebp
 005D2459    mov         ebp,esp
 005D245B    push        ecx
 005D245C    mov         dword ptr [ebp-4],eax
 005D245F    pop         ecx
 005D2460    pop         ebp
 005D2461    ret
*}
end;

//005D2464
procedure sub_005D2464(?:TCustomForm);
begin
{*
 005D2464    push        ebp
 005D2465    mov         ebp,esp
 005D2467    add         esp,0FFFFFFF8
 005D246A    push        ebx
 005D246B    mov         dword ptr [ebp-4],eax
 005D246E    mov         eax,dword ptr [ebp-4]
 005D2471    cmp         dword ptr [eax+220],0;TForm.FActiveControl:TWinControl
>005D2478    je          005D2494
 005D247A    mov         eax,dword ptr [ebp-4]
 005D247D    cmp         dword ptr [eax+250],0;TForm.FDesigner:IDesignerHook
>005D2484    jne         005D2494
 005D2486    mov         eax,dword ptr [ebp-4]
 005D2489    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 005D248F    mov         dword ptr [ebp-8],eax
>005D2492    jmp         005D249A
 005D2494    mov         eax,dword ptr [ebp-4]
 005D2497    mov         dword ptr [ebp-8],eax
 005D249A    mov         eax,dword ptr [ebp-8]
 005D249D    call        TWinControl.GetHandle
 005D24A2    push        eax
 005D24A3    call        USER32.SetFocus
 005D24A8    mov         eax,dword ptr [ebp-8]
 005D24AB    call        TWinControl.GetHandle
 005D24B0    mov         ebx,eax
 005D24B2    call        USER32.GetFocus
 005D24B7    cmp         ebx,eax
>005D24B9    jne         005D24CC
 005D24BB    push        0
 005D24BD    xor         ecx,ecx
 005D24BF    mov         edx,0B029
 005D24C4    mov         eax,dword ptr [ebp-8]
 005D24C7    call        005F4FA8
 005D24CC    pop         ebx
 005D24CD    pop         ecx
 005D24CE    pop         ecx
 005D24CF    pop         ebp
 005D24D0    ret
*}
end;

//005D24D4
{*procedure sub_005D24D4(?:TCustomForm; ?:?);
begin
 005D24D4    push        ebp
 005D24D5    mov         ebp,esp
 005D24D7    add         esp,0FFFFFFF8
 005D24DA    mov         byte ptr [ebp-5],dl
 005D24DD    mov         dword ptr [ebp-4],eax
 005D24E0    mov         al,byte ptr [ebp-5]
 005D24E3    mov         edx,dword ptr [ebp-4]
 005D24E6    mov         byte ptr [edx+22E],al
 005D24EC    mov         eax,dword ptr [ebp-4]
 005D24EF    cmp         dword ptr [eax+27C],0
>005D24F6    je          005D2512
 005D24F8    push        0
 005D24FA    xor         ecx,ecx
 005D24FC    mov         cl,byte ptr [ebp-5]
 005D24FF    mov         edx,0B02B
 005D2504    mov         eax,dword ptr [ebp-4]
 005D2507    mov         eax,dword ptr [eax+27C]
 005D250D    call        005F4FA8
 005D2512    cmp         byte ptr [ebp-5],0
>005D2516    je          005D2559
 005D2518    mov         eax,dword ptr [ebp-4]
 005D251B    cmp         dword ptr [eax+220],0
>005D2522    jne         005D2547
 005D2524    mov         eax,dword ptr [ebp-4]
 005D2527    test        byte ptr [eax+1C],10
>005D252B    jne         005D2547
 005D252D    push        1
 005D252F    push        0
 005D2531    mov         cl,1
 005D2533    xor         edx,edx
 005D2535    mov         eax,dword ptr [ebp-4]
 005D2538    call        005FC6EC
 005D253D    mov         edx,eax
 005D253F    mov         eax,dword ptr [ebp-4]
 005D2542    call        TForm.SetActiveControl
 005D2547    mov         dl,1
 005D2549    mov         eax,dword ptr [ebp-4]
 005D254C    call        TCustomForm.MergeMenu
 005D2551    mov         eax,dword ptr [ebp-4]
 005D2554    call        005D2464
 005D2559    pop         ecx
 005D255A    pop         ecx
 005D255B    pop         ebp
 005D255C    ret
end;*}

//005D2560
{*procedure sub_005D2560(?:TCustomForm; ?:?);
begin
 005D2560    push        ebp
 005D2561    mov         ebp,esp
 005D2563    add         esp,0FFFFFFF8
 005D2566    mov         dword ptr [ebp-8],edx
 005D2569    mov         dword ptr [ebp-4],eax
 005D256C    mov         eax,dword ptr [ebp-4]
 005D256F    cmp         byte ptr [eax+22E],0
>005D2576    je          005D259D
 005D2578    mov         eax,dword ptr [ebp-4]
 005D257B    cmp         dword ptr [eax+220],0
>005D2582    je          005D259D
 005D2584    mov         eax,dword ptr [ebp-8]
 005D2587    push        eax
 005D2588    xor         ecx,ecx
 005D258A    mov         edx,0B004
 005D258F    mov         eax,dword ptr [ebp-4]
 005D2592    mov         eax,dword ptr [eax+220]
 005D2598    call        005F4FA8
 005D259D    mov         eax,dword ptr [ebp-4]
 005D25A0    cmp         byte ptr [eax+22F],2
>005D25A7    jne         005D25C5
 005D25A9    mov         eax,dword ptr [ebp-4]
 005D25AC    call        005D0B8C
 005D25B1    test        eax,eax
>005D25B3    je          005D25C5
 005D25B5    mov         eax,dword ptr [ebp-4]
 005D25B8    call        005D0B8C
 005D25BD    mov         edx,dword ptr [ebp-8]
 005D25C0    call        005D2560
 005D25C5    pop         ecx
 005D25C6    pop         ecx
 005D25C7    pop         ebp
 005D25C8    ret
end;*}

//005D25CC
procedure TCustomForm.MergeMenu(MergeState:Boolean);
begin
{*
 005D25CC    push        ebp
 005D25CD    mov         ebp,esp
 005D25CF    add         esp,0FFFFFFF0
 005D25D2    mov         byte ptr [ebp-5],dl
 005D25D5    mov         dword ptr [ebp-4],eax
 005D25D8    mov         eax,dword ptr [ebp-4]
 005D25DB    test        byte ptr [eax+2EC],8
>005D25E2    jne         005D26AA
 005D25E8    mov         eax,[006ECD7C];Application:TApplication
 005D25ED    cmp         dword ptr [eax+44],0
>005D25F1    je          005D26AA
 005D25F7    mov         eax,[006ECD7C];Application:TApplication
 005D25FC    mov         eax,dword ptr [eax+44]
 005D25FF    cmp         dword ptr [eax+248],0
>005D2606    je          005D26AA
 005D260C    mov         eax,[006ECD7C];Application:TApplication
 005D2611    mov         eax,dword ptr [eax+44]
 005D2614    cmp         eax,dword ptr [ebp-4]
>005D2617    je          005D26AA
 005D261D    mov         eax,dword ptr [ebp-4]
 005D2620    cmp         byte ptr [eax+22F],1
>005D2627    je          005D263A
 005D2629    mov         eax,[006ECD7C];Application:TApplication
 005D262E    mov         eax,dword ptr [eax+44]
 005D2631    cmp         byte ptr [eax+22F],2
>005D2638    je          005D26AA
 005D263A    xor         eax,eax
 005D263C    mov         dword ptr [ebp-0C],eax
 005D263F    mov         eax,dword ptr [ebp-4]
 005D2642    test        byte ptr [eax+1C],10
>005D2646    jne         005D267B
 005D2648    mov         eax,dword ptr [ebp-4]
 005D264B    cmp         dword ptr [eax+248],0
>005D2652    je          005D267B
 005D2654    mov         eax,dword ptr [ebp-4]
 005D2657    mov         eax,dword ptr [eax+248]
 005D265D    cmp         byte ptr [eax+5C],0
>005D2661    jne         005D266F
 005D2663    mov         eax,dword ptr [ebp-4]
 005D2666    cmp         byte ptr [eax+22F],1
>005D266D    jne         005D267B
 005D266F    mov         eax,dword ptr [ebp-4]
 005D2672    mov         eax,dword ptr [eax+248]
 005D2678    mov         dword ptr [ebp-0C],eax
 005D267B    mov         eax,[006ECD7C];Application:TApplication
 005D2680    mov         eax,dword ptr [eax+44]
 005D2683    mov         eax,dword ptr [eax+248]
 005D2689    mov         dword ptr [ebp-10],eax
 005D268C    cmp         byte ptr [ebp-5],0
>005D2690    je          005D269F
 005D2692    mov         edx,dword ptr [ebp-0C]
 005D2695    mov         eax,dword ptr [ebp-10]
 005D2698    call        005A8514
>005D269D    jmp         005D26AA
 005D269F    mov         edx,dword ptr [ebp-0C]
 005D26A2    mov         eax,dword ptr [ebp-10]
 005D26A5    call        005A854C
 005D26AA    mov         esp,ebp
 005D26AC    pop         ebp
 005D26AD    ret
*}
end;

//005D26B0
{*procedure sub_005D26B0(?:?; ?:TWinControl; ?:?);
begin
 005D26B0    push        ebp
 005D26B1    mov         ebp,esp
 005D26B3    add         esp,0FFFFFFF4
 005D26B6    mov         dword ptr [ebp-0C],ecx
 005D26B9    mov         dword ptr [ebp-8],edx
 005D26BC    mov         dword ptr [ebp-4],eax
 005D26BF    cmp         dword ptr [ebp-8],0
>005D26C3    je          005D270F
>005D26C5    jmp         005D26D0
 005D26C7    mov         eax,dword ptr [ebp-8]
 005D26CA    mov         eax,dword ptr [eax+30]
 005D26CD    mov         dword ptr [ebp-8],eax
 005D26D0    mov         eax,dword ptr [ebp-8]
 005D26D3    cmp         dword ptr [eax+30],0
>005D26D7    je          005D26EB
 005D26D9    mov         eax,dword ptr [ebp-8]
 005D26DC    mov         edx,dword ptr ds:[5CC264];TCustomForm
 005D26E2    call        @IsClass
 005D26E7    test        al,al
>005D26E9    je          005D26C7
 005D26EB    cmp         dword ptr [ebp-8],0
>005D26EF    je          005D270F
 005D26F1    mov         eax,dword ptr [ebp-8]
 005D26F4    cmp         eax,dword ptr [ebp-0C]
>005D26F7    je          005D270F
 005D26F9    push        0
 005D26FB    push        0
 005D26FD    mov         eax,dword ptr [ebp-4]
 005D2700    push        eax
 005D2701    mov         eax,dword ptr [ebp-8]
 005D2704    call        TWinControl.GetHandle
 005D2709    push        eax
 005D270A    call        USER32.SendMessageA
 005D270F    mov         esp,ebp
 005D2711    pop         ebp
 005D2712    ret
end;*}

//005D2714
procedure TCustomForm.sub_005D2714;
begin
{*
 005D2714    push        ebp
 005D2715    mov         ebp,esp
 005D2717    push        ecx
 005D2718    push        ebx
 005D2719    mov         dword ptr [ebp-4],eax
 005D271C    mov         ecx,dword ptr [ebp-4]
 005D271F    mov         eax,dword ptr [ebp-4]
 005D2722    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D2728    mov         eax,0B000
 005D272D    call        005D26B0
 005D2732    mov         eax,dword ptr [ebp-4]
 005D2735    cmp         word ptr [eax+28A],0;TCustomForm.?f28A:word
>005D273D    je          005D2751
 005D273F    mov         ebx,dword ptr [ebp-4]
 005D2742    mov         edx,dword ptr [ebp-4]
 005D2745    mov         eax,dword ptr [ebx+28C];TCustomForm.?f28C:dword
 005D274B    call        dword ptr [ebx+288];TCustomForm.FOnActivate
 005D2751    pop         ebx
 005D2752    pop         ecx
 005D2753    pop         ebp
 005D2754    ret
*}
end;

//005D2758
procedure TCustomForm.sub_005D2758;
begin
{*
 005D2758    push        ebp
 005D2759    mov         ebp,esp
 005D275B    push        ecx
 005D275C    push        ebx
 005D275D    mov         dword ptr [ebp-4],eax
 005D2760    mov         ecx,dword ptr [ebp-4]
 005D2763    mov         eax,dword ptr [ebp-4]
 005D2766    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D276C    mov         eax,0B001
 005D2771    call        005D26B0
 005D2776    mov         eax,dword ptr [ebp-4]
 005D2779    cmp         word ptr [eax+2A2],0;TCustomForm.?f2A2:word
>005D2781    je          005D2795
 005D2783    mov         ebx,dword ptr [ebp-4]
 005D2786    mov         edx,dword ptr [ebp-4]
 005D2789    mov         eax,dword ptr [ebx+2A4];TCustomForm.?f2A4:dword
 005D278F    call        dword ptr [ebx+2A0];TCustomForm.FOnDeactivate
 005D2795    pop         ebx
 005D2796    pop         ecx
 005D2797    pop         ebp
 005D2798    ret
*}
end;

//005D279C
procedure TCustomForm.sub_005D279C;
begin
{*
 005D279C    push        ebp
 005D279D    mov         ebp,esp
 005D279F    push        ecx
 005D27A0    push        ebx
 005D27A1    mov         dword ptr [ebp-4],eax
 005D27A4    mov         eax,dword ptr [ebp-4]
 005D27A7    cmp         word ptr [eax+2BA],0;TCustomForm.?f2BA:word
>005D27AF    je          005D27C3
 005D27B1    mov         ebx,dword ptr [ebp-4]
 005D27B4    mov         edx,dword ptr [ebp-4]
 005D27B7    mov         eax,dword ptr [ebx+2BC];TCustomForm.?f2BC:dword
 005D27BD    call        dword ptr [ebx+2B8];TCustomForm.FOnPaint
 005D27C3    pop         ebx
 005D27C4    pop         ecx
 005D27C5    pop         ebp
 005D27C6    ret
*}
end;

//005D27C8
{*function sub_005D27C8(?:TCustomForm):?;
begin
 005D27C8    push        ebp
 005D27C9    mov         ebp,esp
 005D27CB    add         esp,0FFFFFFF8
 005D27CE    mov         dword ptr [ebp-4],eax
 005D27D1    mov         eax,dword ptr [ebp-4]
 005D27D4    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 005D27DA    call        005C8F8C
 005D27DF    mov         dword ptr [ebp-8],eax
 005D27E2    cmp         dword ptr [ebp-8],0
>005D27E6    jne         005D27F5
 005D27E8    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D27ED    call        005D7BB0
 005D27F2    mov         dword ptr [ebp-8],eax
 005D27F5    mov         eax,dword ptr [ebp-8]
 005D27F8    pop         ecx
 005D27F9    pop         ecx
 005D27FA    pop         ebp
 005D27FB    ret
end;*}

//005D27FC
{*procedure sub_005D27FC(?:?);
begin
 005D27FC    push        ebp
 005D27FD    mov         ebp,esp
 005D27FF    add         esp,0FFFFFFF8
 005D2802    push        esi
 005D2803    mov         dword ptr [ebp-8],edx
 005D2806    mov         dword ptr [ebp-4],eax
 005D2809    mov         eax,dword ptr [ebp-4]
 005D280C    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D2812    call        TCanvas.Lock
 005D2817    xor         eax,eax
 005D2819    push        ebp
 005D281A    push        5D28AD
 005D281F    push        dword ptr fs:[eax]
 005D2822    mov         dword ptr fs:[eax],esp
 005D2825    mov         eax,dword ptr [ebp-4]
 005D2828    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D282E    mov         edx,dword ptr [ebp-8]
 005D2831    call        TCanvas.SetHandle
 005D2836    xor         eax,eax
 005D2838    push        ebp
 005D2839    push        5D288A
 005D283E    push        dword ptr fs:[eax]
 005D2841    mov         dword ptr fs:[eax],esp
 005D2844    mov         eax,dword ptr [ebp-4]
 005D2847    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>005D284E    je          005D2860
 005D2850    mov         eax,dword ptr [ebp-4]
 005D2853    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 005D2859    mov         edx,dword ptr [eax]
 005D285B    call        dword ptr [edx+28]
>005D285E    jmp         005D286C
 005D2860    mov         eax,dword ptr [ebp-4]
 005D2863    mov         si,0FFAC
 005D2867    call        @CallDynaInst;TCustomForm.sub_005D279C
 005D286C    xor         eax,eax
 005D286E    pop         edx
 005D286F    pop         ecx
 005D2870    pop         ecx
 005D2871    mov         dword ptr fs:[eax],edx
 005D2874    push        5D2891
 005D2879    mov         eax,dword ptr [ebp-4]
 005D287C    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D2882    xor         edx,edx
 005D2884    call        TCanvas.SetHandle
 005D2889    ret
>005D288A    jmp         @HandleFinally
>005D288F    jmp         005D2879
 005D2891    xor         eax,eax
 005D2893    pop         edx
 005D2894    pop         ecx
 005D2895    pop         ecx
 005D2896    mov         dword ptr fs:[eax],edx
 005D2899    push        5D28B4
 005D289E    mov         eax,dword ptr [ebp-4]
 005D28A1    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 005D28A7    call        TCanvas.Unlock
 005D28AC    ret
>005D28AD    jmp         @HandleFinally
>005D28B2    jmp         005D289E
 005D28B4    pop         esi
 005D28B5    pop         ecx
 005D28B6    pop         ecx
 005D28B7    pop         ebp
 005D28B8    ret
end;*}

//005D28BC
{*procedure TCustomForm.sub_005D28BC(?:?);
begin
 005D28BC    push        ebp
 005D28BD    mov         ebp,esp
 005D28BF    add         esp,0FFFFFFE8
 005D28C2    push        esi
 005D28C3    mov         byte ptr [ebp-5],dl
 005D28C6    mov         dword ptr [ebp-4],eax
 005D28C9    mov         byte ptr [ebp-6],0
 005D28CD    mov         eax,dword ptr [ebp-4]
 005D28D0    call        005D0B8C
 005D28D5    mov         dword ptr [ebp-10],eax
 005D28D8    cmp         dword ptr [ebp-10],0
>005D28DC    je          005D28F0
 005D28DE    mov         dl,byte ptr [ebp-5]
 005D28E1    mov         eax,dword ptr [ebp-10]
 005D28E4    mov         si,0FFD1
 005D28E8    call        @CallDynaInst
 005D28ED    mov         byte ptr [ebp-6],al
 005D28F0    mov         eax,dword ptr [ebp-4]
 005D28F3    call        TCustomForm.GetMDIChildCount
 005D28F8    dec         eax
 005D28F9    test        eax,eax
>005D28FB    jl          005D2943
 005D28FD    inc         eax
 005D28FE    mov         dword ptr [ebp-18],eax
 005D2901    mov         dword ptr [ebp-0C],0
 005D2908    mov         al,byte ptr [ebp-5]
 005D290B    and         al,byte ptr [ebp-6]
>005D290E    jne         005D2959
 005D2910    mov         edx,dword ptr [ebp-0C]
 005D2913    mov         eax,dword ptr [ebp-4]
 005D2916    call        005D0C44
 005D291B    mov         dword ptr [ebp-14],eax
 005D291E    mov         eax,dword ptr [ebp-10]
 005D2921    cmp         eax,dword ptr [ebp-14]
>005D2924    je          005D293B
 005D2926    mov         dl,byte ptr [ebp-5]
 005D2929    mov         eax,dword ptr [ebp-14]
 005D292C    mov         si,0FFD1
 005D2930    call        @CallDynaInst
 005D2935    or          al,byte ptr [ebp-6]
 005D2938    mov         byte ptr [ebp-6],al
 005D293B    inc         dword ptr [ebp-0C]
 005D293E    dec         dword ptr [ebp-18]
>005D2941    jne         005D2908
 005D2943    mov         al,byte ptr [ebp-5]
 005D2946    and         al,byte ptr [ebp-6]
>005D2949    jne         005D2959
 005D294B    mov         dl,byte ptr [ebp-5]
 005D294E    mov         eax,dword ptr [ebp-4]
 005D2951    call        TWinControl.sub_005F245C
 005D2956    mov         byte ptr [ebp-6],al
 005D2959    mov         al,byte ptr [ebp-6]
 005D295C    pop         esi
 005D295D    mov         esp,ebp
 005D295F    pop         ebp
 005D2960    ret
end;*}

//005D2964
procedure TCustomForm.WMPaint(Message:TWMPaint);
begin
{*
 005D2964    push        ebp
 005D2965    mov         ebp,esp
 005D2967    add         esp,0FFFFFFB4
 005D296A    mov         dword ptr [ebp-8],edx
 005D296D    mov         dword ptr [ebp-4],eax
 005D2970    mov         eax,dword ptr [ebp-4]
 005D2973    call        TWinControl.GetHandle
 005D2978    push        eax
 005D2979    call        USER32.IsIconic
 005D297E    test        eax,eax
>005D2980    jne         005D29B9
 005D2982    mov         ax,[005D29FC];0x100 gvar_005D29FC
 005D2988    mov         edx,dword ptr [ebp-4]
 005D298B    or          ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 005D298F    mov         edx,dword ptr [ebp-4]
 005D2992    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
 005D2996    mov         edx,dword ptr [ebp-8]
 005D2999    mov         eax,dword ptr [ebp-4]
 005D299C    call        TWinControl.WMPaint
 005D29A1    mov         ax,[005D29FC];0x100 gvar_005D29FC
 005D29A7    mov         edx,dword ptr [ebp-4]
 005D29AA    not         eax
 005D29AC    and         ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 005D29B0    mov         edx,dword ptr [ebp-4]
 005D29B3    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
>005D29B7    jmp         005D29F6
 005D29B9    lea         eax,[ebp-4C]
 005D29BC    push        eax
 005D29BD    mov         eax,dword ptr [ebp-4]
 005D29C0    call        TWinControl.GetHandle
 005D29C5    push        eax
 005D29C6    call        USER32.BeginPaint
 005D29CB    mov         dword ptr [ebp-0C],eax
 005D29CE    mov         eax,dword ptr [ebp-4]
 005D29D1    call        005D27C8
 005D29D6    push        eax
 005D29D7    push        0
 005D29D9    push        0
 005D29DB    mov         eax,dword ptr [ebp-0C]
 005D29DE    push        eax
 005D29DF    call        USER32.DrawIcon
 005D29E4    lea         eax,[ebp-4C]
 005D29E7    push        eax
 005D29E8    mov         eax,dword ptr [ebp-4]
 005D29EB    call        TWinControl.GetHandle
 005D29F0    push        eax
 005D29F1    call        USER32.EndPaint
 005D29F6    mov         esp,ebp
 005D29F8    pop         ebp
 005D29F9    ret
*}
end;

//005D2A00
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 005D2A00    push        ebp
 005D2A01    mov         ebp,esp
 005D2A03    add         esp,0FFFFFFE8
 005D2A06    mov         dword ptr [ebp-8],edx
 005D2A09    mov         dword ptr [ebp-4],eax
 005D2A0C    mov         eax,dword ptr [ebp-4]
 005D2A0F    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D2A16    jne         005D2A69
 005D2A18    mov         eax,dword ptr [ebp-4]
 005D2A1B    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D2A22    jne         005D2A5E
 005D2A24    mov         eax,dword ptr [ebp-4]
 005D2A27    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2A2B    jne         005D2A5E
 005D2A2D    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D2A32    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D2A35    mov         eax,dword ptr [eax+170];TForm.FBrush:TBrush
 005D2A3B    call        TBrush.GetHandle
 005D2A40    push        eax
 005D2A41    lea         edx,[ebp-18]
 005D2A44    mov         eax,dword ptr [ebp-4]
 005D2A47    mov         ecx,dword ptr [eax]
 005D2A49    call        dword ptr [ecx+44];TCustomForm.sub_005CFD78
 005D2A4C    lea         eax,[ebp-18]
 005D2A4F    push        eax
 005D2A50    mov         eax,dword ptr [ebp-8]
 005D2A53    mov         eax,dword ptr [eax+4]
 005D2A56    push        eax
 005D2A57    call        USER32.FillRect
>005D2A5C    jmp         005D2A69
 005D2A5E    mov         edx,dword ptr [ebp-8]
 005D2A61    mov         eax,dword ptr [ebp-4]
 005D2A64    mov         ecx,dword ptr [eax]
 005D2A66    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D2A69    mov         esp,ebp
 005D2A6B    pop         ebp
 005D2A6C    ret
end;*}

//005D2A70
procedure TCustomForm.WMEraseBkgnd(Message:TWMEraseBkgnd);
begin
{*
 005D2A70    push        ebp
 005D2A71    mov         ebp,esp
 005D2A73    add         esp,0FFFFFFF8
 005D2A76    mov         dword ptr [ebp-8],edx
 005D2A79    mov         dword ptr [ebp-4],eax
 005D2A7C    mov         eax,dword ptr [ebp-4]
 005D2A7F    call        TWinControl.GetHandle
 005D2A84    push        eax
 005D2A85    call        USER32.IsIconic
 005D2A8A    test        eax,eax
>005D2A8C    jne         005D2A9B
 005D2A8E    mov         edx,dword ptr [ebp-8]
 005D2A91    mov         eax,dword ptr [ebp-4]
 005D2A94    call        TWinControl.WMEraseBkgnd
>005D2A99    jmp         005D2AAF
 005D2A9B    mov         eax,dword ptr [ebp-8]
 005D2A9E    mov         dword ptr [eax],27
 005D2AA4    mov         edx,dword ptr [ebp-8]
 005D2AA7    mov         eax,dword ptr [ebp-4]
 005D2AAA    mov         ecx,dword ptr [eax]
 005D2AAC    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D2AAF    pop         ecx
 005D2AB0    pop         ecx
 005D2AB1    pop         ebp
 005D2AB2    ret
*}
end;

//005D2AB4
{*procedure TCustomForm.WMQueryDragIcon(?:?);
begin
 005D2AB4    push        ebp
 005D2AB5    mov         ebp,esp
 005D2AB7    add         esp,0FFFFFFF8
 005D2ABA    mov         dword ptr [ebp-8],edx
 005D2ABD    mov         dword ptr [ebp-4],eax
 005D2AC0    mov         eax,dword ptr [ebp-4]
 005D2AC3    call        005D27C8
 005D2AC8    mov         edx,dword ptr [ebp-8]
 005D2ACB    mov         dword ptr [edx+0C],eax
 005D2ACE    pop         ecx
 005D2ACF    pop         ecx
 005D2AD0    pop         ebp
 005D2AD1    ret
end;*}

//005D2AD4
{*procedure sub_005D2AD4(?:?);
begin
 005D2AD4    push        ebp
 005D2AD5    mov         ebp,esp
 005D2AD7    push        ecx
 005D2AD8    mov         eax,dword ptr [ebp+8]
 005D2ADB    mov         eax,dword ptr [eax-4]
 005D2ADE    cmp         byte ptr [eax+229],0
>005D2AE5    je          005D2BE6
 005D2AEB    mov         eax,dword ptr [ebp+8]
 005D2AEE    mov         eax,dword ptr [eax-4]
 005D2AF1    test        byte ptr [eax+228],1
>005D2AF8    je          005D2BE6
 005D2AFE    mov         eax,dword ptr [ebp+8]
 005D2B01    mov         eax,dword ptr [eax-4]
 005D2B04    cmp         byte ptr [eax+22F],1
>005D2B0B    je          005D2BE6
 005D2B11    push        0
 005D2B13    mov         eax,dword ptr [ebp+8]
 005D2B16    mov         eax,dword ptr [eax-4]
 005D2B19    call        TWinControl.GetHandle
 005D2B1E    push        eax
 005D2B1F    call        USER32.GetSystemMenu
 005D2B24    mov         dword ptr [ebp-4],eax
 005D2B27    mov         eax,dword ptr [ebp+8]
 005D2B2A    mov         eax,dword ptr [eax-4]
 005D2B2D    cmp         byte ptr [eax+229],3
>005D2B34    jne         005D2BA8
 005D2B36    push        0
 005D2B38    push        0F130
 005D2B3D    mov         eax,dword ptr [ebp-4]
 005D2B40    push        eax
 005D2B41    call        USER32.DeleteMenu
 005D2B46    push        400
 005D2B4B    push        7
 005D2B4D    mov         eax,dword ptr [ebp-4]
 005D2B50    push        eax
 005D2B51    call        USER32.DeleteMenu
 005D2B56    push        400
 005D2B5B    push        5
 005D2B5D    mov         eax,dword ptr [ebp-4]
 005D2B60    push        eax
 005D2B61    call        USER32.DeleteMenu
 005D2B66    push        0
 005D2B68    push        0F030
 005D2B6D    mov         eax,dword ptr [ebp-4]
 005D2B70    push        eax
 005D2B71    call        USER32.DeleteMenu
 005D2B76    push        0
 005D2B78    push        0F020
 005D2B7D    mov         eax,dword ptr [ebp-4]
 005D2B80    push        eax
 005D2B81    call        USER32.DeleteMenu
 005D2B86    push        0
 005D2B88    push        0F000
 005D2B8D    mov         eax,dword ptr [ebp-4]
 005D2B90    push        eax
 005D2B91    call        USER32.DeleteMenu
 005D2B96    push        0
 005D2B98    push        0F120
 005D2B9D    mov         eax,dword ptr [ebp-4]
 005D2BA0    push        eax
 005D2BA1    call        USER32.DeleteMenu
>005D2BA6    jmp         005D2BE6
 005D2BA8    mov         eax,dword ptr [ebp+8]
 005D2BAB    mov         eax,dword ptr [eax-4]
 005D2BAE    test        byte ptr [eax+228],2
>005D2BB5    jne         005D2BC7
 005D2BB7    push        1
 005D2BB9    push        0F020
 005D2BBE    mov         eax,dword ptr [ebp-4]
 005D2BC1    push        eax
 005D2BC2    call        USER32.EnableMenuItem
 005D2BC7    mov         eax,dword ptr [ebp+8]
 005D2BCA    mov         eax,dword ptr [eax-4]
 005D2BCD    test        byte ptr [eax+228],4
>005D2BD4    jne         005D2BE6
 005D2BD6    push        1
 005D2BD8    push        0F030
 005D2BDD    mov         eax,dword ptr [ebp-4]
 005D2BE0    push        eax
 005D2BE1    call        USER32.EnableMenuItem
 005D2BE6    pop         ecx
 005D2BE7    pop         ebp
 005D2BE8    ret
end;*}

//005D2BEC
{*procedure TCustomForm.WMNCCreate(?:?);
begin
 005D2BEC    push        ebp
 005D2BED    mov         ebp,esp
 005D2BEF    add         esp,0FFFFFFF8
 005D2BF2    mov         dword ptr [ebp-8],edx
 005D2BF5    mov         dword ptr [ebp-4],eax
 005D2BF8    mov         edx,dword ptr [ebp-8]
 005D2BFB    mov         eax,dword ptr [ebp-4]
 005D2BFE    mov         ecx,dword ptr [eax]
 005D2C00    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D2C03    mov         eax,dword ptr [ebp-4]
 005D2C06    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2C0C    mov         eax,dword ptr [ebp-4]
 005D2C0F    call        TForm.SetMenu
 005D2C14    mov         eax,dword ptr [ebp-4]
 005D2C17    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2C1B    jne         005D2C24
 005D2C1D    push        ebp
 005D2C1E    call        005D2AD4
 005D2C23    pop         ecx
 005D2C24    pop         ecx
 005D2C25    pop         ecx
 005D2C26    pop         ebp
 005D2C27    ret
end;*}

//005D2C28
{*procedure TCustomForm.WMNCLButtonDown(?:?);
begin
 005D2C28    push        ebp
 005D2C29    mov         ebp,esp
 005D2C2B    add         esp,0FFFFFFF8
 005D2C2E    mov         dword ptr [ebp-8],edx
 005D2C31    mov         dword ptr [ebp-4],eax
 005D2C34    mov         eax,dword ptr [ebp-8]
 005D2C37    cmp         dword ptr [eax+4],2
>005D2C3B    jne         005D2CC9
 005D2C41    mov         eax,dword ptr [ebp-4]
 005D2C44    cmp         byte ptr [eax+9B],1;TCustomForm.FDragKind:TDragKind
>005D2C4B    jne         005D2CC9
 005D2C4D    mov         eax,dword ptr [ebp-4]
 005D2C50    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2C54    jne         005D2CC9
 005D2C56    mov         eax,dword ptr [ebp-4]
 005D2C59    call        TWinControl.GetHandle
 005D2C5E    push        eax
 005D2C5F    call        USER32.IsIconic
 005D2C64    test        eax,eax
>005D2C66    jne         005D2CC9
 005D2C68    push        7
 005D2C6A    push        0
 005D2C6C    push        0
 005D2C6E    push        0
 005D2C70    push        0
 005D2C72    push        0
 005D2C74    mov         eax,dword ptr [ebp-4]
 005D2C77    call        TWinControl.GetHandle
 005D2C7C    push        eax
 005D2C7D    call        USER32.SetWindowPos
 005D2C82    mov         eax,dword ptr [ebp-8]
 005D2C85    mov         eax,dword ptr [eax+8]
 005D2C88    push        eax
 005D2C89    mov         eax,dword ptr [ebp-8]
 005D2C8C    mov         eax,dword ptr [eax+4]
 005D2C8F    push        eax
 005D2C90    push        0A2
 005D2C95    mov         eax,dword ptr [ebp-4]
 005D2C98    call        TWinControl.GetHandle
 005D2C9D    push        eax
 005D2C9E    call        USER32.PostMessageA
 005D2CA3    mov         eax,dword ptr [ebp-4]
 005D2CA6    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>005D2CAD    je          005D2CD4
 005D2CAF    mov         eax,dword ptr [ebp-4]
 005D2CB2    mov         edx,dword ptr [eax]
 005D2CB4    call        dword ptr [edx+54];TCustomForm.sub_005CFEA0
 005D2CB7    mov         edx,eax
 005D2CB9    xor         dl,1
 005D2CBC    or          ecx,0FFFFFFFF
 005D2CBF    mov         eax,dword ptr [ebp-4]
 005D2CC2    call        005F4150
>005D2CC7    jmp         005D2CD4
 005D2CC9    mov         edx,dword ptr [ebp-8]
 005D2CCC    mov         eax,dword ptr [ebp-4]
 005D2CCF    call        TControl.WMNCLButtonDown
 005D2CD4    pop         ecx
 005D2CD5    pop         ecx
 005D2CD6    pop         ebp
 005D2CD7    ret
end;*}

//005D2CD8
{*procedure TCustomForm.WMDestroy(?:?);
begin
 005D2CD8    push        ebp
 005D2CD9    mov         ebp,esp
 005D2CDB    add         esp,0FFFFFFF8
 005D2CDE    mov         dword ptr [ebp-8],edx
 005D2CE1    mov         dword ptr [ebp-4],eax
 005D2CE4    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D2CE9    cmp         byte ptr [eax],0
>005D2CEC    je          005D2D05
 005D2CEE    push        0
 005D2CF0    push        1
 005D2CF2    push        80
 005D2CF7    mov         eax,dword ptr [ebp-4]
 005D2CFA    call        TWinControl.GetHandle
 005D2CFF    push        eax
 005D2D00    call        USER32.SendMessageA
 005D2D05    mov         eax,dword ptr [ebp-4]
 005D2D08    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D2D0F    je          005D2D3D
 005D2D11    mov         eax,dword ptr [ebp-4]
 005D2D14    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D2D1B    je          005D2D3D
 005D2D1D    push        0
 005D2D1F    mov         eax,dword ptr [ebp-4]
 005D2D22    call        TWinControl.GetHandle
 005D2D27    push        eax
 005D2D28    call        USER32.SetMenu
 005D2D2D    xor         edx,edx
 005D2D2F    mov         eax,dword ptr [ebp-4]
 005D2D32    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2D38    call        005A7C9C
 005D2D3D    mov         edx,dword ptr [ebp-8]
 005D2D40    mov         eax,dword ptr [ebp-4]
 005D2D43    call        TWinControl.WMDestroy
 005D2D48    pop         ecx
 005D2D49    pop         ecx
 005D2D4A    pop         ebp
 005D2D4B    ret
end;*}

//005D2D4C
{*procedure TCustomForm.WMCommand(?:?);
begin
 005D2D4C    push        ebp
 005D2D4D    mov         ebp,esp
 005D2D4F    add         esp,0FFFFFFF8
 005D2D52    mov         dword ptr [ebp-8],edx
 005D2D55    mov         dword ptr [ebp-4],eax
 005D2D58    mov         eax,dword ptr [ebp-8]
 005D2D5B    cmp         dword ptr [eax+8],0
>005D2D5F    jne         005D2D86
 005D2D61    mov         eax,dword ptr [ebp-4]
 005D2D64    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D2D6B    je          005D2D86
 005D2D6D    mov         edx,dword ptr [ebp-8]
 005D2D70    mov         dx,word ptr [edx+4]
 005D2D74    mov         eax,dword ptr [ebp-4]
 005D2D77    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2D7D    call        005A7554
 005D2D82    test        al,al
>005D2D84    jne         005D2D91
 005D2D86    mov         edx,dword ptr [ebp-8]
 005D2D89    mov         eax,dword ptr [ebp-4]
 005D2D8C    call        TWinControl.WMCommand
 005D2D91    pop         ecx
 005D2D92    pop         ecx
 005D2D93    pop         ebp
 005D2D94    ret
end;*}

//005D2D98
{*procedure TCustomForm.WMInitMenuPopup(?:?);
begin
 005D2D98    push        ebp
 005D2D99    mov         ebp,esp
 005D2D9B    add         esp,0FFFFFFF8
 005D2D9E    mov         dword ptr [ebp-8],edx
 005D2DA1    mov         dword ptr [ebp-4],eax
 005D2DA4    mov         eax,dword ptr [ebp-4]
 005D2DA7    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D2DAE    je          005D2DC4
 005D2DB0    mov         edx,dword ptr [ebp-8]
 005D2DB3    mov         edx,dword ptr [edx+4]
 005D2DB6    mov         eax,dword ptr [ebp-4]
 005D2DB9    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2DBF    call        005A7590
 005D2DC4    pop         ecx
 005D2DC5    pop         ecx
 005D2DC6    pop         ebp
 005D2DC7    ret
end;*}

//005D2DC8
{*procedure TCustomForm.WMMenuChar(?:?);
begin
 005D2DC8    push        ebp
 005D2DC9    mov         ebp,esp
 005D2DCB    add         esp,0FFFFFFF8
 005D2DCE    mov         dword ptr [ebp-8],edx
 005D2DD1    mov         dword ptr [ebp-4],eax
 005D2DD4    mov         eax,dword ptr [ebp-4]
 005D2DD7    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D2DDE    je          005D2E07
 005D2DE0    mov         edx,dword ptr [ebp-8]
 005D2DE3    mov         eax,dword ptr [ebp-4]
 005D2DE6    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2DEC    call        005A8024
 005D2DF1    mov         eax,dword ptr [ebp-8]
 005D2DF4    cmp         dword ptr [eax+0C],0
>005D2DF8    jne         005D2E12
 005D2DFA    mov         edx,dword ptr [ebp-8]
 005D2DFD    mov         eax,dword ptr [ebp-4]
 005D2E00    mov         ecx,dword ptr [eax]
 005D2E02    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>005D2E05    jmp         005D2E12
 005D2E07    mov         edx,dword ptr [ebp-8]
 005D2E0A    mov         eax,dword ptr [ebp-4]
 005D2E0D    mov         ecx,dword ptr [eax]
 005D2E0F    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D2E12    pop         ecx
 005D2E13    pop         ecx
 005D2E14    pop         ebp
 005D2E15    ret
end;*}

//005D2E18
{*procedure TCustomForm.WMMenuSelect(?:?);
begin
 005D2E18    push        ebp
 005D2E19    mov         ebp,esp
 005D2E1B    add         esp,0FFFFFFE8
 005D2E1E    xor         ecx,ecx
 005D2E20    mov         dword ptr [ebp-18],ecx
 005D2E23    mov         dword ptr [ebp-8],edx
 005D2E26    mov         dword ptr [ebp-4],eax
 005D2E29    xor         eax,eax
 005D2E2B    push        ebp
 005D2E2C    push        5D2EEB
 005D2E31    push        dword ptr fs:[eax]
 005D2E34    mov         dword ptr fs:[eax],esp
 005D2E37    mov         eax,dword ptr [ebp-4]
 005D2E3A    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D2E41    je          005D2ED5
 005D2E47    xor         eax,eax
 005D2E49    mov         dword ptr [ebp-0C],eax
 005D2E4C    mov         eax,dword ptr [ebp-8]
 005D2E4F    cmp         word ptr [eax+6],0FFFF
>005D2E55    jne         005D2E61
 005D2E57    mov         eax,dword ptr [ebp-8]
 005D2E5A    cmp         word ptr [eax+4],0
>005D2E5F    je          005D2EA6
 005D2E61    mov         byte ptr [ebp-11],0
 005D2E65    mov         eax,dword ptr [ebp-8]
 005D2E68    movzx       eax,word ptr [eax+4]
 005D2E6C    mov         dword ptr [ebp-10],eax
 005D2E6F    mov         eax,dword ptr [ebp-8]
 005D2E72    test        byte ptr [eax+6],10
>005D2E76    je          005D2E8F
 005D2E78    mov         byte ptr [ebp-11],1
 005D2E7C    mov         eax,dword ptr [ebp-10]
 005D2E7F    push        eax
 005D2E80    mov         eax,dword ptr [ebp-8]
 005D2E83    mov         eax,dword ptr [eax+8]
 005D2E86    push        eax
 005D2E87    call        USER32.GetSubMenu
 005D2E8C    mov         dword ptr [ebp-10],eax
 005D2E8F    mov         cl,byte ptr [ebp-11]
 005D2E92    mov         edx,dword ptr [ebp-10]
 005D2E95    mov         eax,dword ptr [ebp-4]
 005D2E98    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D2E9E    call        005A7480
 005D2EA3    mov         dword ptr [ebp-0C],eax
 005D2EA6    cmp         dword ptr [ebp-0C],0
>005D2EAA    je          005D2EC9
 005D2EAC    lea         edx,[ebp-18]
 005D2EAF    mov         eax,dword ptr [ebp-0C]
 005D2EB2    mov         eax,dword ptr [eax+58]
 005D2EB5    call        005EFA5C
 005D2EBA    mov         edx,dword ptr [ebp-18]
 005D2EBD    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D2EC2    call        005D8E74
>005D2EC7    jmp         005D2ED5
 005D2EC9    xor         edx,edx
 005D2ECB    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D2ED0    call        005D8E74
 005D2ED5    xor         eax,eax
 005D2ED7    pop         edx
 005D2ED8    pop         ecx
 005D2ED9    pop         ecx
 005D2EDA    mov         dword ptr fs:[eax],edx
 005D2EDD    push        5D2EF2
 005D2EE2    lea         eax,[ebp-18]
 005D2EE5    call        @LStrClr
 005D2EEA    ret
>005D2EEB    jmp         @HandleFinally
>005D2EF0    jmp         005D2EE2
 005D2EF2    mov         esp,ebp
 005D2EF4    pop         ebp
 005D2EF5    ret
end;*}

//005D2EF8
{*procedure TCustomForm.WMActivate(?:?);
begin
 005D2EF8    push        ebp
 005D2EF9    mov         ebp,esp
 005D2EFB    add         esp,0FFFFFFF8
 005D2EFE    mov         dword ptr [ebp-8],edx
 005D2F01    mov         dword ptr [ebp-4],eax
 005D2F04    mov         eax,dword ptr [ebp-4]
 005D2F07    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>005D2F0E    jne         005D2F19
 005D2F10    mov         eax,dword ptr [ebp-4]
 005D2F13    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2F17    je          005D2F2C
 005D2F19    mov         eax,dword ptr [ebp-8]
 005D2F1C    cmp         word ptr [eax+4],0
 005D2F21    setne       dl
 005D2F24    mov         eax,dword ptr [ebp-4]
 005D2F27    call        005D24D4
 005D2F2C    pop         ecx
 005D2F2D    pop         ecx
 005D2F2E    pop         ebp
 005D2F2F    ret
end;*}

//005D2F30
{*procedure sub_005D2F30(?:?);
begin
 005D2F30    push        ebp
 005D2F31    mov         ebp,esp
 005D2F33    add         esp,0FFFFFFF8
 005D2F36    push        esi
 005D2F37    mov         byte ptr [ebp-5],dl
 005D2F3A    mov         dword ptr [ebp-4],eax
 005D2F3D    mov         eax,dword ptr [ebp-4]
 005D2F40    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2F44    jne         005D2F52
 005D2F46    mov         al,byte ptr [ebp-5]
 005D2F49    mov         edx,dword ptr [ebp-4]
 005D2F4C    mov         byte ptr [edx+22B],al;TCustomForm.FWindowState:TWindowState
 005D2F52    cmp         byte ptr [ebp-5],1
>005D2F56    je          005D2F64
 005D2F58    mov         eax,dword ptr [ebp-4]
 005D2F5B    mov         si,0FFD0
 005D2F5F    call        @CallDynaInst;TCustomForm.sub_005D45B8
 005D2F64    mov         eax,dword ptr [ebp-4]
 005D2F67    cmp         dword ptr [eax+264],0;TCustomForm.FOleForm:IOleForm
>005D2F6E    je          005D2F7E
 005D2F70    mov         eax,dword ptr [ebp-4]
 005D2F73    mov         eax,dword ptr [eax+264];TCustomForm.FOleForm:IOleForm
 005D2F79    mov         edx,dword ptr [eax]
 005D2F7B    call        dword ptr [edx+10]
 005D2F7E    pop         esi
 005D2F7F    pop         ecx
 005D2F80    pop         ecx
 005D2F81    pop         ebp
 005D2F82    ret
end;*}

//005D2F84
{*procedure TCustomForm.WMClose(?:?);
begin
 005D2F84    push        ebp
 005D2F85    mov         ebp,esp
 005D2F87    add         esp,0FFFFFFF8
 005D2F8A    mov         dword ptr [ebp-8],edx
 005D2F8D    mov         dword ptr [ebp-4],eax
 005D2F90    mov         eax,dword ptr [ebp-4]
 005D2F93    call        005D3F3C
 005D2F98    pop         ecx
 005D2F99    pop         ecx
 005D2F9A    pop         ebp
 005D2F9B    ret
end;*}

//005D2F9C
{*procedure TCustomForm.WMQueryEndSession(?:?);
begin
 005D2F9C    push        ebp
 005D2F9D    mov         ebp,esp
 005D2F9F    add         esp,0FFFFFFF8
 005D2FA2    mov         dword ptr [ebp-8],edx
 005D2FA5    mov         dword ptr [ebp-4],eax
 005D2FA8    mov         eax,dword ptr [ebp-4]
 005D2FAB    mov         edx,dword ptr [eax]
 005D2FAD    call        dword ptr [edx+0E0];TCustomForm.sub_005D3FFC
 005D2FB3    test        al,al
>005D2FB5    je          005D2FC0
 005D2FB7    call        0065E06C
 005D2FBC    test        al,al
>005D2FBE    jne         005D2FC4
 005D2FC0    xor         eax,eax
>005D2FC2    jmp         005D2FC6
 005D2FC4    mov         al,1
 005D2FC6    and         eax,7F
 005D2FC9    mov         edx,dword ptr [ebp-8]
 005D2FCC    mov         dword ptr [edx+0C],eax
 005D2FCF    pop         ecx
 005D2FD0    pop         ecx
 005D2FD1    pop         ebp
 005D2FD2    ret
end;*}

//005D2FD4
{*procedure TCustomForm.CMAppSysCommand(?:?);
begin
 005D2FD4    push        ebp
 005D2FD5    mov         ebp,esp
 005D2FD7    add         esp,0FFFFFFF4
 005D2FDA    mov         dword ptr [ebp-8],edx
 005D2FDD    mov         dword ptr [ebp-4],eax
 005D2FE0    mov         eax,dword ptr [ebp-8]
 005D2FE3    xor         edx,edx
 005D2FE5    mov         dword ptr [eax+0C],edx
 005D2FE8    mov         eax,dword ptr [ebp-4]
 005D2FEB    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D2FEF    jne         005D3018
 005D2FF1    mov         eax,dword ptr [ebp-4]
 005D2FF4    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D2FFB    je          005D3018
 005D2FFD    mov         eax,dword ptr [ebp-4]
 005D3000    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D3007    je          005D3018
 005D3009    mov         eax,dword ptr [ebp-4]
 005D300C    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D3012    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>005D3016    je          005D3050
 005D3018    mov         eax,dword ptr [ebp-8]
 005D301B    mov         eax,dword ptr [eax+8]
 005D301E    mov         dword ptr [ebp-0C],eax
 005D3021    xor         edx,edx
 005D3023    mov         eax,dword ptr [ebp-4]
 005D3026    call        005D2560
 005D302B    mov         eax,dword ptr [ebp-0C]
 005D302E    movzx       ecx,word ptr [eax+8]
 005D3032    mov         eax,dword ptr [ebp-0C]
 005D3035    mov         edx,dword ptr [eax+4]
 005D3038    mov         eax,0B017
 005D303D    call        005EF7D0
 005D3042    test        eax,eax
>005D3044    je          005D3050
 005D3046    mov         eax,dword ptr [ebp-8]
 005D3049    mov         dword ptr [eax+0C],1
 005D3050    mov         esp,ebp
 005D3052    pop         ebp
 005D3053    ret
end;*}

//005D3054
{*procedure TCustomForm.WMSysCommand(?:?);
begin
 005D3054    push        ebp
 005D3055    mov         ebp,esp
 005D3057    add         esp,0FFFFFFF8
 005D305A    push        esi
 005D305B    mov         dword ptr [ebp-8],edx
 005D305E    mov         dword ptr [ebp-4],eax
 005D3061    mov         eax,dword ptr [ebp-8]
 005D3064    mov         eax,dword ptr [eax+4]
 005D3067    and         eax,0FFF0
 005D306C    cmp         eax,0F020
>005D3071    jne         005D308F
 005D3073    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3078    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D307B    cmp         eax,dword ptr [ebp-4]
>005D307E    jne         005D308F
 005D3080    mov         edx,dword ptr [ebp-8]
 005D3083    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3088    call        005D7494
>005D308D    jmp         005D30CA
 005D308F    mov         eax,dword ptr [ebp-8]
 005D3092    mov         eax,dword ptr [eax+4]
 005D3095    and         eax,0FFF0
 005D309A    cmp         eax,0F010
>005D309F    jne         005D30BF
 005D30A1    mov         eax,dword ptr [ebp-4]
 005D30A4    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D30A8    jne         005D30BF
 005D30AA    mov         eax,dword ptr [ebp-4]
 005D30AD    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>005D30B1    je          005D30BF
 005D30B3    mov         eax,dword ptr [ebp-4]
 005D30B6    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>005D30BD    jne         005D30CA
 005D30BF    mov         edx,dword ptr [ebp-8]
 005D30C2    mov         eax,dword ptr [ebp-4]
 005D30C5    call        TWinControl.WMSysCommand
 005D30CA    mov         eax,dword ptr [ebp-8]
 005D30CD    mov         eax,dword ptr [eax+4]
 005D30D0    and         eax,0FFF0
 005D30D5    cmp         eax,0F020
>005D30DA    je          005D30EE
 005D30DC    mov         eax,dword ptr [ebp-8]
 005D30DF    mov         eax,dword ptr [eax+4]
 005D30E2    and         eax,0FFF0
 005D30E7    cmp         eax,0F120
>005D30EC    jne         005D310C
 005D30EE    mov         eax,dword ptr [ebp-4]
 005D30F1    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D30F5    jne         005D310C
 005D30F7    mov         eax,dword ptr [ebp-4]
 005D30FA    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>005D30FE    je          005D310C
 005D3100    mov         eax,dword ptr [ebp-4]
 005D3103    mov         si,0FFD0
 005D3107    call        @CallDynaInst;TCustomForm.sub_005D45B8
 005D310C    pop         esi
 005D310D    pop         ecx
 005D310E    pop         ecx
 005D310F    pop         ebp
 005D3110    ret
end;*}

//005D3114
{*procedure TCustomForm.WMShowWindow(?:?);
begin
 005D3114    push        ebp
 005D3115    mov         ebp,esp
 005D3117    add         esp,0FFFFFFF8
 005D311A    mov         dword ptr [ebp-8],edx
 005D311D    mov         dword ptr [ebp-4],eax
 005D3120    mov         eax,dword ptr [ebp-8]
 005D3123    mov         eax,dword ptr [eax+8]
 005D3126    dec         eax
>005D3127    je          005D3133
 005D3129    sub         eax,2
>005D312C    je          005D3186
>005D312E    jmp         005D31BE
 005D3133    mov         eax,dword ptr [ebp-4]
 005D3136    call        TWinControl.GetHandle
 005D313B    push        eax
 005D313C    call        USER32.IsIconic
 005D3141    test        eax,eax
>005D3143    je          005D3151
 005D3145    mov         eax,dword ptr [ebp-4]
 005D3148    mov         byte ptr [eax+22C],2;TCustomForm.FShowAction:TShowAction
>005D314F    jmp         005D3179
 005D3151    mov         eax,dword ptr [ebp-4]
 005D3154    call        TWinControl.GetHandle
 005D3159    push        eax
 005D315A    call        USER32.IsZoomed
 005D315F    test        eax,eax
>005D3161    je          005D316F
 005D3163    mov         eax,dword ptr [ebp-4]
 005D3166    mov         byte ptr [eax+22C],3;TCustomForm.FShowAction:TShowAction
>005D316D    jmp         005D3179
 005D316F    mov         eax,dword ptr [ebp-4]
 005D3172    mov         byte ptr [eax+22C],1;TCustomForm.FShowAction:TShowAction
 005D3179    mov         edx,dword ptr [ebp-8]
 005D317C    mov         eax,dword ptr [ebp-4]
 005D317F    mov         ecx,dword ptr [eax]
 005D3181    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>005D3184    jmp         005D31C9
 005D3186    mov         eax,dword ptr [ebp-4]
 005D3189    cmp         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>005D3190    je          005D31C9
 005D3192    mov         eax,dword ptr [ebp-4]
 005D3195    movzx       eax,byte ptr [eax+22C];TCustomForm.FShowAction:TShowAction
 005D319C    mov         eax,dword ptr [eax*4+6E4048]
 005D31A3    push        eax
 005D31A4    mov         eax,dword ptr [ebp-4]
 005D31A7    call        TWinControl.GetHandle
 005D31AC    push        eax
 005D31AD    call        USER32.ShowWindow
 005D31B2    mov         eax,dword ptr [ebp-4]
 005D31B5    mov         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>005D31BC    jmp         005D31C9
 005D31BE    mov         edx,dword ptr [ebp-8]
 005D31C1    mov         eax,dword ptr [ebp-4]
 005D31C4    mov         ecx,dword ptr [eax]
 005D31C6    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D31C9    pop         ecx
 005D31CA    pop         ecx
 005D31CB    pop         ebp
 005D31CC    ret
end;*}

//005D31D0
{*procedure TCustomForm.WMMDIActivate(?:?);
begin
 005D31D0    push        ebp
 005D31D1    mov         ebp,esp
 005D31D3    add         esp,0FFFFFFF4
 005D31D6    push        esi
 005D31D7    mov         dword ptr [ebp-8],edx
 005D31DA    mov         dword ptr [ebp-4],eax
 005D31DD    mov         edx,dword ptr [ebp-8]
 005D31E0    mov         eax,dword ptr [ebp-4]
 005D31E3    mov         ecx,dword ptr [eax]
 005D31E5    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D31E8    mov         eax,dword ptr [ebp-4]
 005D31EB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D31F2    jne         005D3238
 005D31F4    mov         eax,dword ptr [ebp-4]
 005D31F7    call        TWinControl.GetHandle
 005D31FC    mov         edx,dword ptr [ebp-8]
 005D31FF    cmp         eax,dword ptr [edx+8]
 005D3202    sete        byte ptr [ebp-9]
 005D3206    mov         dl,byte ptr [ebp-9]
 005D3209    mov         eax,dword ptr [ebp-4]
 005D320C    call        005D24D4
 005D3211    cmp         byte ptr [ebp-9],0
>005D3215    je          005D3238
 005D3217    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D321C    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D321F    test        byte ptr [eax+54],4;TForm.FControlState:TControlState
>005D3223    je          005D3238
 005D3225    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D322A    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D322D    mov         dl,1
 005D322F    mov         si,0FFD1
 005D3233    call        @CallDynaInst;TCustomForm.sub_005D28BC
 005D3238    pop         esi
 005D3239    mov         esp,ebp
 005D323B    pop         ebp
 005D323C    ret
end;*}

//005D3240
{*procedure TCustomForm.WMNextDlgCtl(?:?);
begin
 005D3240    push        ebp
 005D3241    mov         ebp,esp
 005D3243    add         esp,0FFFFFFF8
 005D3246    mov         dword ptr [ebp-8],edx
 005D3249    mov         dword ptr [ebp-4],eax
 005D324C    mov         eax,dword ptr [ebp-8]
 005D324F    cmp         word ptr [eax+8],0
>005D3254    je          005D3264
 005D3256    mov         eax,dword ptr [ebp-8]
 005D3259    mov         eax,dword ptr [eax+4]
 005D325C    push        eax
 005D325D    call        USER32.SetFocus
>005D3262    jmp         005D3284
 005D3264    push        1
 005D3266    mov         ecx,dword ptr [ebp-8]
 005D3269    mov         ecx,dword ptr [ecx+4]
 005D326C    cmp         ecx,1
 005D326F    sbb         ecx,ecx
 005D3271    neg         ecx
 005D3273    mov         eax,dword ptr [ebp-4]
 005D3276    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D327C    mov         eax,dword ptr [ebp-4]
 005D327F    call        005FC818
 005D3284    pop         ecx
 005D3285    pop         ecx
 005D3286    pop         ebp
 005D3287    ret
end;*}

//005D3288
{*procedure TCustomForm.WMEnterMenuLoop(?:?);
begin
 005D3288    push        ebp
 005D3289    mov         ebp,esp
 005D328B    add         esp,0FFFFFFF8
 005D328E    mov         dword ptr [ebp-8],edx
 005D3291    mov         dword ptr [ebp-4],eax
 005D3294    xor         edx,edx
 005D3296    mov         eax,dword ptr [ebp-4]
 005D3299    call        005D2560
 005D329E    mov         edx,dword ptr [ebp-8]
 005D32A1    mov         eax,dword ptr [ebp-4]
 005D32A4    mov         ecx,dword ptr [eax]
 005D32A6    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D32A9    pop         ecx
 005D32AA    pop         ecx
 005D32AB    pop         ebp
 005D32AC    ret
end;*}

//005D32B0
{*function sub_005D32B0(?:TMenu; ?:?):?;
begin
 005D32B0    push        ebp
 005D32B1    mov         ebp,esp
 005D32B3    add         esp,0FFFFFFF8
 005D32B6    mov         dword ptr [ebp-4],eax
 005D32B9    xor         eax,eax
 005D32BB    mov         dword ptr [ebp-8],eax
 005D32BE    cmp         dword ptr [ebp-4],0
>005D32C2    je          005D32FC
 005D32C4    mov         eax,dword ptr [ebp+8]
 005D32C7    mov         eax,dword ptr [eax-4]
 005D32CA    mov         eax,dword ptr [eax+8]
 005D32CD    mov         edx,dword ptr [eax+8]
 005D32D0    mov         cl,1
 005D32D2    mov         eax,dword ptr [ebp-4]
 005D32D5    call        005A74BC
 005D32DA    mov         dword ptr [ebp-8],eax
 005D32DD    cmp         dword ptr [ebp-8],0
>005D32E1    jne         005D32FC
 005D32E3    mov         eax,dword ptr [ebp+8]
 005D32E6    mov         eax,dword ptr [eax-4]
 005D32E9    mov         eax,dword ptr [eax+8]
 005D32EC    mov         edx,dword ptr [eax+0C]
 005D32EF    xor         ecx,ecx
 005D32F1    mov         eax,dword ptr [ebp-4]
 005D32F4    call        005A74BC
 005D32F9    mov         dword ptr [ebp-8],eax
 005D32FC    mov         eax,dword ptr [ebp-8]
 005D32FF    pop         ecx
 005D3300    pop         ecx
 005D3301    pop         ebp
 005D3302    ret
end;*}

//005D3304
{*function sub_005D3304(?:?):?;
begin
 005D3304    push        ebp
 005D3305    mov         ebp,esp
 005D3307    add         esp,0FFFFFFF8
 005D330A    mov         dword ptr [ebp-4],eax
 005D330D    mov         byte ptr [ebp-5],0
 005D3311    mov         eax,dword ptr [ebp-4]
 005D3314    cmp         byte ptr [eax+150],1
>005D331B    jne         005D332F
 005D331D    mov         eax,dword ptr [ebp-4]
 005D3320    cmp         dword ptr [eax+158],0
>005D3327    je          005D332F
 005D3329    mov         byte ptr [ebp-5],1
>005D332D    jmp         005D334B
 005D332F    mov         eax,dword ptr [ebp-4]
 005D3332    cmp         byte ptr [eax+150],0
>005D3339    jne         005D334B
 005D333B    mov         eax,dword ptr [ebp-4]
 005D333E    cmp         dword ptr [eax+154],0
>005D3345    je          005D334B
 005D3347    mov         byte ptr [ebp-5],1
 005D334B    mov         al,byte ptr [ebp-5]
 005D334E    pop         ecx
 005D334F    pop         ecx
 005D3350    pop         ebp
 005D3351    ret
end;*}

//005D3354
{*procedure sub_005D3354(?:?; ?:?; ?:?; ?:?);
begin
 005D3354    push        ebp
 005D3355    mov         ebp,esp
 005D3357    add         esp,0FFFFFFF4
 005D335A    mov         dword ptr [ebp-0C],ecx
 005D335D    mov         dword ptr [ebp-8],edx
 005D3360    mov         dword ptr [ebp-4],eax
 005D3363    mov         eax,dword ptr [ebp-4]
 005D3366    cmp         byte ptr [eax+150],1
>005D336D    jne         005D3385
 005D336F    mov         eax,dword ptr [ebp-8]
 005D3372    mov         byte ptr [eax],1
 005D3375    mov         eax,dword ptr [ebp-0C]
 005D3378    mov         edx,dword ptr [ebp-4]
 005D337B    mov         edx,dword ptr [edx+158]
 005D3381    mov         dword ptr [eax],edx
>005D3383    jmp         005D339C
 005D3385    mov         eax,dword ptr [ebp-8]
 005D3388    mov         byte ptr [eax],0
 005D338B    mov         eax,dword ptr [ebp+8]
 005D338E    mov         edx,dword ptr [ebp-4]
 005D3391    mov         edx,dword ptr [edx+154]
 005D3397    call        @LStrAsg
 005D339C    mov         esp,ebp
 005D339E    pop         ebp
 005D339F    ret         4
end;*}

//005D33A4
{*procedure TCustomForm.WMHelp(?:?);
begin
 005D33A4    push        ebp
 005D33A5    mov         ebp,esp
 005D33A7    add         esp,0FFFFFFD0
 005D33AA    xor         ecx,ecx
 005D33AC    mov         dword ptr [ebp-18],ecx
 005D33AF    mov         dword ptr [ebp-4],edx
 005D33B2    mov         dword ptr [ebp-8],eax
 005D33B5    xor         eax,eax
 005D33B7    push        ebp
 005D33B8    push        5D3528
 005D33BD    push        dword ptr fs:[eax]
 005D33C0    mov         dword ptr fs:[eax],esp
 005D33C3    mov         eax,dword ptr [ebp-8]
 005D33C6    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D33CA    je          005D33DC
 005D33CC    mov         edx,dword ptr [ebp-4]
 005D33CF    mov         eax,dword ptr [ebp-8]
 005D33D2    mov         ecx,dword ptr [eax]
 005D33D4    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>005D33D7    jmp         005D3512
 005D33DC    mov         eax,dword ptr [ebp-4]
 005D33DF    mov         eax,dword ptr [eax+8]
 005D33E2    mov         dword ptr [ebp-20],eax
 005D33E5    mov         eax,dword ptr [ebp-20]
 005D33E8    cmp         dword ptr [eax+4],1
>005D33EC    jne         005D3460
 005D33EE    mov         eax,dword ptr [ebp-20]
 005D33F1    mov         eax,dword ptr [eax+0C]
 005D33F4    call        005EF778
 005D33F9    mov         dword ptr [ebp-0C],eax
>005D33FC    jmp         005D3407
 005D33FE    mov         eax,dword ptr [ebp-0C]
 005D3401    mov         eax,dword ptr [eax+30]
 005D3404    mov         dword ptr [ebp-0C],eax
 005D3407    cmp         dword ptr [ebp-0C],0
>005D340B    je          005D341B
 005D340D    push        ebp
 005D340E    mov         eax,dword ptr [ebp-0C]
 005D3411    call        005D3304
 005D3416    pop         ecx
 005D3417    test        al,al
>005D3419    je          005D33FE
 005D341B    cmp         dword ptr [ebp-0C],0
>005D341F    je          005D3512
 005D3425    push        ebp
 005D3426    lea         eax,[ebp-18]
 005D3429    push        eax
 005D342A    lea         ecx,[ebp-10]
 005D342D    lea         edx,[ebp-11]
 005D3430    mov         eax,dword ptr [ebp-0C]
 005D3433    call        005D3354
 005D3438    pop         ecx
 005D3439    lea         ecx,[ebp-30]
 005D343C    xor         edx,edx
 005D343E    xor         eax,eax
 005D3440    call        Point
 005D3445    lea         edx,[ebp-30]
 005D3448    lea         ecx,[ebp-28]
 005D344B    mov         eax,dword ptr [ebp-0C]
 005D344E    call        005F3020
 005D3453    lea         eax,[ebp-28]
 005D3456    call        0063D074
 005D345B    mov         dword ptr [ebp-1C],eax
>005D345E    jmp         005D34B2
 005D3460    mov         byte ptr [ebp-11],1
 005D3464    push        ebp
 005D3465    mov         eax,dword ptr [ebp-8]
 005D3468    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D346E    call        005D32B0
 005D3473    pop         ecx
 005D3474    mov         dword ptr [ebp-10],eax
 005D3477    cmp         dword ptr [ebp-10],0
>005D347B    jne         005D348D
 005D347D    push        ebp
 005D347E    mov         eax,dword ptr [ebp-8]
 005D3481    mov         eax,dword ptr [eax+7C];TCustomForm.FPopupMenu:TPopupMenu
 005D3484    call        005D32B0
 005D3489    pop         ecx
 005D348A    mov         dword ptr [ebp-10],eax
 005D348D    lea         ecx,[ebp-30]
 005D3490    xor         edx,edx
 005D3492    xor         eax,eax
 005D3494    call        Point
 005D3499    lea         edx,[ebp-30]
 005D349C    lea         ecx,[ebp-28]
 005D349F    mov         eax,dword ptr [ebp-8]
 005D34A2    call        005F3020
 005D34A7    lea         eax,[ebp-28]
 005D34AA    call        0063D074
 005D34AF    mov         dword ptr [ebp-1C],eax
 005D34B2    mov         eax,dword ptr [ebp-8]
 005D34B5    test        byte ptr [eax+228],8;TCustomForm.FBorderIcons:TBorderIcons
>005D34BC    je          005D34EA
 005D34BE    cmp         byte ptr [ebp-11],1
>005D34C2    jne         005D34EA
 005D34C4    mov         ecx,dword ptr [ebp-1C]
 005D34C7    mov         edx,0D
 005D34CC    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D34D1    call        005D8A88
 005D34D6    mov         ecx,dword ptr [ebp-10]
 005D34D9    mov         edx,8
 005D34DE    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D34E3    call        005D8A88
>005D34E8    jmp         005D3512
 005D34EA    cmp         byte ptr [ebp-11],1
>005D34EE    jne         005D34FF
 005D34F0    mov         edx,dword ptr [ebp-10]
 005D34F3    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D34F8    call        005D8A10
>005D34FD    jmp         005D3512
 005D34FF    cmp         byte ptr [ebp-11],0
>005D3503    jne         005D3512
 005D3505    mov         edx,dword ptr [ebp-18]
 005D3508    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D350D    call        005D8998
 005D3512    xor         eax,eax
 005D3514    pop         edx
 005D3515    pop         ecx
 005D3516    pop         ecx
 005D3517    mov         dword ptr fs:[eax],edx
 005D351A    push        5D352F
 005D351F    lea         eax,[ebp-18]
 005D3522    call        @LStrClr
 005D3527    ret
>005D3528    jmp         @HandleFinally
>005D352D    jmp         005D351F
 005D352F    mov         esp,ebp
 005D3531    pop         ebp
 005D3532    ret
end;*}

//005D3534
{*procedure TCustomForm.WMGetMinMaxInfo(?:?);
begin
 005D3534    push        ebp
 005D3535    mov         ebp,esp
 005D3537    add         esp,0FFFFFFE8
 005D353A    push        ebx
 005D353B    mov         dword ptr [ebp-8],edx
 005D353E    mov         dword ptr [ebp-4],eax
 005D3541    mov         eax,dword ptr [ebp-4]
 005D3544    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>005D3548    jne         005D35F6
 005D354E    mov         eax,dword ptr [ebp-4]
 005D3551    cmp         byte ptr [eax+22A],0;TCustomForm.FSizeChanging:Boolean
>005D3558    je          005D35F6
 005D355E    mov         eax,dword ptr [ebp-8]
 005D3561    mov         eax,dword ptr [eax+8]
 005D3564    mov         dword ptr [ebp-0C],eax
 005D3567    mov         eax,dword ptr [ebp-4]
 005D356A    mov         eax,dword ptr [eax+74];TCustomForm.FConstraints:TSizeConstraints
 005D356D    mov         dword ptr [ebp-10],eax
 005D3570    mov         eax,dword ptr [ebp-0C]
 005D3573    add         eax,18
 005D3576    mov         dword ptr [ebp-14],eax
 005D3579    mov         eax,dword ptr [ebp-10]
 005D357C    cmp         dword ptr [eax+14],0;TSizeConstraints.MinWidth:TConstraintSize
>005D3580    jbe         005D358D
 005D3582    mov         eax,dword ptr [ebp-14]
 005D3585    mov         edx,dword ptr [ebp-10]
 005D3588    mov         edx,dword ptr [edx+14];TSizeConstraints.MinWidth:TConstraintSize
 005D358B    mov         dword ptr [eax],edx
 005D358D    mov         eax,dword ptr [ebp-10]
 005D3590    cmp         dword ptr [eax+10],0;TSizeConstraints.MinHeight:TConstraintSize
>005D3594    jbe         005D35A2
 005D3596    mov         eax,dword ptr [ebp-14]
 005D3599    mov         edx,dword ptr [ebp-10]
 005D359C    mov         edx,dword ptr [edx+10];TSizeConstraints.MinHeight:TConstraintSize
 005D359F    mov         dword ptr [eax+4],edx
 005D35A2    mov         eax,dword ptr [ebp-0C]
 005D35A5    add         eax,20
 005D35A8    mov         dword ptr [ebp-18],eax
 005D35AB    mov         eax,dword ptr [ebp-10]
 005D35AE    cmp         dword ptr [eax+0C],0;TSizeConstraints.MaxWidth:TConstraintSize
>005D35B2    jbe         005D35BF
 005D35B4    mov         eax,dword ptr [ebp-18]
 005D35B7    mov         edx,dword ptr [ebp-10]
 005D35BA    mov         edx,dword ptr [edx+0C];TSizeConstraints.MaxWidth:TConstraintSize
 005D35BD    mov         dword ptr [eax],edx
 005D35BF    mov         eax,dword ptr [ebp-10]
 005D35C2    cmp         dword ptr [eax+8],0;TSizeConstraints.MaxHeight:TConstraintSize
>005D35C6    jbe         005D35D4
 005D35C8    mov         eax,dword ptr [ebp-18]
 005D35CB    mov         edx,dword ptr [ebp-10]
 005D35CE    mov         edx,dword ptr [edx+8];TSizeConstraints.MaxHeight:TConstraintSize
 005D35D1    mov         dword ptr [eax+4],edx
 005D35D4    mov         eax,dword ptr [ebp-0C]
 005D35D7    add         eax,20
 005D35DA    push        eax
 005D35DB    mov         eax,dword ptr [ebp-0C]
 005D35DE    add         eax,24
 005D35E1    push        eax
 005D35E2    mov         eax,dword ptr [ebp-0C]
 005D35E5    lea         ecx,[eax+1C]
 005D35E8    mov         eax,dword ptr [ebp-0C]
 005D35EB    lea         edx,[eax+18]
 005D35EE    mov         eax,dword ptr [ebp-4]
 005D35F1    mov         ebx,dword ptr [eax]
 005D35F3    call        dword ptr [ebx+38];TCustomForm.sub_005FCE84
 005D35F6    mov         edx,dword ptr [ebp-8]
 005D35F9    mov         eax,dword ptr [ebp-4]
 005D35FC    mov         ecx,dword ptr [eax]
 005D35FE    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D3601    pop         ebx
 005D3602    mov         esp,ebp
 005D3604    pop         ebp
 005D3605    ret
end;*}

//005D3608
{*procedure TCustomForm.WMWindowPosChangingMsg(?:?);
begin
 005D3608    push        ebp
 005D3609    mov         ebp,esp
 005D360B    add         esp,0FFFFFFF4
 005D360E    mov         dword ptr [ebp-8],edx
 005D3611    mov         dword ptr [ebp-4],eax
 005D3614    mov         eax,dword ptr [ebp-8]
 005D3617    mov         eax,dword ptr [eax+8]
 005D361A    mov         dword ptr [ebp-0C],eax
 005D361D    mov         eax,dword ptr [ebp-4]
 005D3620    mov         ax,word ptr [eax+1C];TCustomForm.FComponentState:TComponentState
 005D3624    and         ax,word ptr ds:[5D36A8];0xA gvar_005D36A8
 005D362B    mov         dx,word ptr ds:[5D36AC];0x0 gvar_005D36AC
 005D3632    cmp         dx,ax
>005D3635    jne         005D365C
 005D3637    mov         eax,dword ptr [ebp-0C]
 005D363A    test        byte ptr [eax+18],1
>005D363E    jne         005D365C
 005D3640    mov         eax,dword ptr [ebp-0C]
 005D3643    mov         eax,dword ptr [eax+10]
 005D3646    mov         edx,dword ptr [ebp-4]
 005D3649    cmp         eax,dword ptr [edx+48];TCustomForm.Width:Integer
>005D364C    jne         005D3660
 005D364E    mov         eax,dword ptr [ebp-0C]
 005D3651    mov         eax,dword ptr [eax+14]
 005D3654    mov         edx,dword ptr [ebp-4]
 005D3657    cmp         eax,dword ptr [edx+4C];TCustomForm.Height:Integer
>005D365A    jne         005D3660
 005D365C    xor         eax,eax
>005D365E    jmp         005D3662
 005D3660    mov         al,1
 005D3662    mov         edx,dword ptr [ebp-4]
 005D3665    mov         byte ptr [edx+22A],al;TCustomForm.FSizeChanging:Boolean
 005D366B    xor         eax,eax
 005D366D    push        ebp
 005D366E    push        5D369C
 005D3673    push        dword ptr fs:[eax]
 005D3676    mov         dword ptr fs:[eax],esp
 005D3679    mov         edx,dword ptr [ebp-8]
 005D367C    mov         eax,dword ptr [ebp-4]
 005D367F    call        TWinControl.WMWindowPosChangingMsg
 005D3684    xor         eax,eax
 005D3686    pop         edx
 005D3687    pop         ecx
 005D3688    pop         ecx
 005D3689    mov         dword ptr fs:[eax],edx
 005D368C    push        5D36A3
 005D3691    mov         eax,dword ptr [ebp-4]
 005D3694    mov         byte ptr [eax+22A],0;TCustomForm.FSizeChanging:Boolean
 005D369B    ret
>005D369C    jmp         @HandleFinally
>005D36A1    jmp         005D3691
 005D36A3    mov         esp,ebp
 005D36A5    pop         ebp
 005D36A6    ret
end;*}

//005D36B0
{*procedure TCustomForm.CMActivate(?:?);
begin
 005D36B0    push        ebp
 005D36B1    mov         ebp,esp
 005D36B3    add         esp,0FFFFFFF8
 005D36B6    push        esi
 005D36B7    mov         dword ptr [ebp-8],edx
 005D36BA    mov         dword ptr [ebp-4],eax
 005D36BD    mov         eax,dword ptr [ebp-4]
 005D36C0    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>005D36C4    jne         005D36D4
 005D36C6    mov         eax,dword ptr [ebp-4]
 005D36C9    mov         si,0FFB3
 005D36CD    call        @CallDynaInst;TCustomForm.sub_005D2714
>005D36D2    jmp         005D36DE
 005D36D4    mov         eax,dword ptr [ebp-4]
 005D36D7    or          byte ptr [eax+2EC],20;TCustomForm.FFormState:TFormState
 005D36DE    pop         esi
 005D36DF    pop         ecx
 005D36E0    pop         ecx
 005D36E1    pop         ebp
 005D36E2    ret
end;*}

//005D36E4
{*procedure TCustomForm.CMDeactivate(?:?);
begin
 005D36E4    push        ebp
 005D36E5    mov         ebp,esp
 005D36E7    add         esp,0FFFFFFF8
 005D36EA    push        esi
 005D36EB    mov         dword ptr [ebp-8],edx
 005D36EE    mov         dword ptr [ebp-4],eax
 005D36F1    mov         eax,dword ptr [ebp-4]
 005D36F4    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>005D36F8    jne         005D3708
 005D36FA    mov         eax,dword ptr [ebp-4]
 005D36FD    mov         si,0FFB1
 005D3701    call        @CallDynaInst;TCustomForm.sub_005D2758
>005D3706    jmp         005D3712
 005D3708    mov         eax,dword ptr [ebp-4]
 005D370B    and         byte ptr [eax+2EC],0DF;TCustomForm.FFormState:TFormState
 005D3712    pop         esi
 005D3713    pop         ecx
 005D3714    pop         ecx
 005D3715    pop         ebp
 005D3716    ret
end;*}

//005D3718
{*procedure TCustomForm.CMDialogKey(?:?);
begin
 005D3718    push        ebp
 005D3719    mov         ebp,esp
 005D371B    add         esp,0FFFFFFF8
 005D371E    mov         dword ptr [ebp-8],edx
 005D3721    mov         dword ptr [ebp-4],eax
 005D3724    push        12
 005D3726    call        USER32.GetKeyState
 005D372B    test        ax,ax
>005D372E    jl          005D37D5
 005D3734    mov         eax,dword ptr [ebp-8]
 005D3737    mov         ax,word ptr [eax+4]
 005D373B    sub         ax,9
>005D373F    je          005D374F
 005D3741    add         eax,0FFFFFFE4
 005D3744    sub         ax,4
>005D3748    jb          005D3787
>005D374A    jmp         005D37D5
 005D374F    push        11
 005D3751    call        USER32.GetKeyState
 005D3756    test        ax,ax
>005D3759    jl          005D37D5
 005D375B    push        1
 005D375D    push        10
 005D375F    call        USER32.GetKeyState
 005D3764    test        ax,ax
 005D3767    setge       cl
 005D376A    mov         eax,dword ptr [ebp-4]
 005D376D    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D3773    mov         eax,dword ptr [ebp-4]
 005D3776    call        005FC818
 005D377B    mov         eax,dword ptr [ebp-8]
 005D377E    mov         dword ptr [eax+0C],1
>005D3785    jmp         005D37E0
 005D3787    mov         eax,dword ptr [ebp-4]
 005D378A    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>005D3791    je          005D37E0
 005D3793    push        0
 005D3795    mov         eax,dword ptr [ebp-8]
 005D3798    cmp         word ptr [eax+4],27
>005D379D    je          005D37AD
 005D379F    mov         eax,dword ptr [ebp-8]
 005D37A2    cmp         word ptr [eax+4],28
>005D37A7    je          005D37AD
 005D37A9    xor         ecx,ecx
>005D37AB    jmp         005D37AF
 005D37AD    mov         cl,1
 005D37AF    mov         eax,dword ptr [ebp-4]
 005D37B2    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D37B8    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 005D37BB    mov         edx,dword ptr [ebp-4]
 005D37BE    mov         edx,dword ptr [edx+220];TCustomForm.FActiveControl:TWinControl
 005D37C4    call        005FC818
 005D37C9    mov         eax,dword ptr [ebp-8]
 005D37CC    mov         dword ptr [eax+0C],1
>005D37D3    jmp         005D37E0
 005D37D5    mov         edx,dword ptr [ebp-8]
 005D37D8    mov         eax,dword ptr [ebp-4]
 005D37DB    call        TWinControl.CMDialogKey
 005D37E0    pop         ecx
 005D37E1    pop         ecx
 005D37E2    pop         ebp
 005D37E3    ret
end;*}

//005D37E4
{*procedure TCustomForm.CMShowingChanged(?:?);
begin
 005D37E4    push        ebp
 005D37E5    mov         ebp,esp
 005D37E7    add         esp,0FFFFFFE4
 005D37EA    push        ebx
 005D37EB    push        esi
 005D37EC    push        edi
 005D37ED    xor         ecx,ecx
 005D37EF    mov         dword ptr [ebp-1C],ecx
 005D37F2    mov         dword ptr [ebp-18],edx
 005D37F5    mov         dword ptr [ebp-4],eax
 005D37F8    xor         eax,eax
 005D37FA    push        ebp
 005D37FB    push        5D3DB0
 005D3800    push        dword ptr fs:[eax]
 005D3803    mov         dword ptr fs:[eax],esp
 005D3806    mov         eax,dword ptr [ebp-4]
 005D3809    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D380D    jne         005D383C
 005D380F    mov         eax,dword ptr [ebp-4]
 005D3812    test        byte ptr [eax+2EC],4;TCustomForm.FFormState:TFormState
>005D3819    je          005D383C
 005D381B    lea         edx,[ebp-1C]
 005D381E    mov         eax,[006E9E44];^gvar_0063CA98
 005D3823    call        LoadResString
 005D3828    mov         ecx,dword ptr [ebp-1C]
 005D382B    mov         dl,1
 005D382D    mov         eax,[00642244];EInvalidOperation
 005D3832    call        Exception.Create;EInvalidOperation.Create
 005D3837    call        @RaiseExcept
 005D383C    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3841    call        005D8F80
 005D3846    mov         eax,dword ptr [ebp-4]
 005D3849    or          byte ptr [eax+2EC],4;TCustomForm.FFormState:TFormState
 005D3850    xor         eax,eax
 005D3852    push        ebp
 005D3853    push        5D3D93
 005D3858    push        dword ptr fs:[eax]
 005D385B    mov         dword ptr fs:[eax],esp
 005D385E    mov         eax,dword ptr [ebp-4]
 005D3861    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D3865    jne         005D3D7B
 005D386B    mov         eax,dword ptr [ebp-4]
 005D386E    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>005D3875    je          005D3C6D
 005D387B    xor         eax,eax
 005D387D    push        ebp
 005D387E    push        5D389F
 005D3883    push        dword ptr fs:[eax]
 005D3886    mov         dword ptr fs:[eax],esp
 005D3889    mov         eax,dword ptr [ebp-4]
 005D388C    mov         si,0FFAE
 005D3890    call        @CallDynaInst;TCustomForm.sub_005CFD4C
 005D3895    xor         eax,eax
 005D3897    pop         edx
 005D3898    pop         ecx
 005D3899    pop         ecx
 005D389A    mov         dword ptr fs:[eax],edx
>005D389D    jmp         005D38B6
>005D389F    jmp         @HandleAnyException
 005D38A4    mov         edx,dword ptr [ebp-4]
 005D38A7    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D38AC    call        TApplication.HandleException
 005D38B1    call        @DoneExcept
 005D38B6    mov         eax,dword ptr [ebp-4]
 005D38B9    cmp         byte ptr [eax+230],4;TCustomForm.FPosition:TPosition
>005D38C0    je          005D38E2
 005D38C2    mov         eax,dword ptr [ebp-4]
 005D38C5    cmp         byte ptr [eax+230],6;TCustomForm.FPosition:TPosition
>005D38CC    jne         005D39AD
 005D38D2    mov         eax,dword ptr [ebp-4]
 005D38D5    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D38DC    jne         005D39AD
 005D38E2    mov         eax,dword ptr [ebp-4]
 005D38E5    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D38EC    jne         005D392A
 005D38EE    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D38F3    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D38F6    call        TControl.GetClientWidth
 005D38FB    mov         edx,dword ptr [ebp-4]
 005D38FE    sub         eax,dword ptr [edx+48]
 005D3901    sar         eax,1
>005D3903    jns         005D3908
 005D3905    adc         eax,0
 005D3908    mov         dword ptr [ebp-8],eax
 005D390B    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3910    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3913    call        TControl.GetClientHeight
 005D3918    mov         edx,dword ptr [ebp-4]
 005D391B    sub         eax,dword ptr [edx+4C]
 005D391E    sar         eax,1
>005D3920    jns         005D3925
 005D3922    adc         eax,0
 005D3925    mov         dword ptr [ebp-0C],eax
>005D3928    jmp         005D395E
 005D392A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D392F    call        005D55E0
 005D3934    mov         edx,dword ptr [ebp-4]
 005D3937    sub         eax,dword ptr [edx+48]
 005D393A    sar         eax,1
>005D393C    jns         005D3941
 005D393E    adc         eax,0
 005D3941    mov         dword ptr [ebp-8],eax
 005D3944    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3949    call        005D55C0
 005D394E    mov         edx,dword ptr [ebp-4]
 005D3951    sub         eax,dword ptr [edx+4C]
 005D3954    sar         eax,1
>005D3956    jns         005D395B
 005D3958    adc         eax,0
 005D395B    mov         dword ptr [ebp-0C],eax
 005D395E    cmp         dword ptr [ebp-8],0
>005D3962    jge         005D3969
 005D3964    xor         eax,eax
 005D3966    mov         dword ptr [ebp-8],eax
 005D3969    cmp         dword ptr [ebp-0C],0
>005D396D    jge         005D3974
 005D396F    xor         eax,eax
 005D3971    mov         dword ptr [ebp-0C],eax
 005D3974    mov         eax,dword ptr [ebp-4]
 005D3977    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 005D397A    push        eax
 005D397B    mov         eax,dword ptr [ebp-4]
 005D397E    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 005D3981    push        eax
 005D3982    mov         ecx,dword ptr [ebp-0C]
 005D3985    mov         edx,dword ptr [ebp-8]
 005D3988    mov         eax,dword ptr [ebp-4]
 005D398B    mov         ebx,dword ptr [eax]
 005D398D    call        dword ptr [ebx+84];TCustomForm.sub_005FB7F8
 005D3993    mov         eax,dword ptr [ebp-4]
 005D3996    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>005D399A    je          005D3B79
 005D39A0    mov         eax,dword ptr [ebp-4]
 005D39A3    call        005D1580
>005D39A8    jmp         005D3B79
 005D39AD    mov         eax,dword ptr [ebp-4]
 005D39B0    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 005D39B6    add         al,0FA
 005D39B8    sub         al,2
>005D39BA    jae         005D3AB8
 005D39C0    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D39C5    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D39C8    mov         dword ptr [ebp-14],eax
 005D39CB    mov         eax,dword ptr [ebp-4]
 005D39CE    cmp         byte ptr [eax+230],7;TCustomForm.FPosition:TPosition
>005D39D5    jne         005D39F5
 005D39D7    mov         eax,dword ptr [ebp-4]
 005D39DA    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 005D39DD    mov         edx,dword ptr ds:[5CC264];TCustomForm
 005D39E3    call        @IsClass
 005D39E8    test        al,al
>005D39EA    je          005D39F5
 005D39EC    mov         eax,dword ptr [ebp-4]
 005D39EF    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 005D39F2    mov         dword ptr [ebp-14],eax
 005D39F5    cmp         dword ptr [ebp-14],0
>005D39F9    je          005D3A35
 005D39FB    mov         eax,dword ptr [ebp-14]
 005D39FE    mov         eax,dword ptr [eax+48]
 005D3A01    mov         edx,dword ptr [ebp-4]
 005D3A04    sub         eax,dword ptr [edx+48]
 005D3A07    sar         eax,1
>005D3A09    jns         005D3A0E
 005D3A0B    adc         eax,0
 005D3A0E    mov         edx,dword ptr [ebp-14]
 005D3A11    add         eax,dword ptr [edx+40]
 005D3A14    mov         dword ptr [ebp-8],eax
 005D3A17    mov         eax,dword ptr [ebp-14]
 005D3A1A    mov         eax,dword ptr [eax+4C]
 005D3A1D    mov         edx,dword ptr [ebp-4]
 005D3A20    sub         eax,dword ptr [edx+4C]
 005D3A23    sar         eax,1
>005D3A25    jns         005D3A2A
 005D3A27    adc         eax,0
 005D3A2A    mov         edx,dword ptr [ebp-14]
 005D3A2D    add         eax,dword ptr [edx+44]
 005D3A30    mov         dword ptr [ebp-0C],eax
>005D3A33    jmp         005D3A69
 005D3A35    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3A3A    call        005D55E0
 005D3A3F    mov         edx,dword ptr [ebp-4]
 005D3A42    sub         eax,dword ptr [edx+48]
 005D3A45    sar         eax,1
>005D3A47    jns         005D3A4C
 005D3A49    adc         eax,0
 005D3A4C    mov         dword ptr [ebp-8],eax
 005D3A4F    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3A54    call        005D55C0
 005D3A59    mov         edx,dword ptr [ebp-4]
 005D3A5C    sub         eax,dword ptr [edx+4C]
 005D3A5F    sar         eax,1
>005D3A61    jns         005D3A66
 005D3A63    adc         eax,0
 005D3A66    mov         dword ptr [ebp-0C],eax
 005D3A69    cmp         dword ptr [ebp-8],0
>005D3A6D    jge         005D3A74
 005D3A6F    xor         eax,eax
 005D3A71    mov         dword ptr [ebp-8],eax
 005D3A74    cmp         dword ptr [ebp-0C],0
>005D3A78    jge         005D3A7F
 005D3A7A    xor         eax,eax
 005D3A7C    mov         dword ptr [ebp-0C],eax
 005D3A7F    mov         eax,dword ptr [ebp-4]
 005D3A82    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 005D3A85    push        eax
 005D3A86    mov         eax,dword ptr [ebp-4]
 005D3A89    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 005D3A8C    push        eax
 005D3A8D    mov         ecx,dword ptr [ebp-0C]
 005D3A90    mov         edx,dword ptr [ebp-8]
 005D3A93    mov         eax,dword ptr [ebp-4]
 005D3A96    mov         ebx,dword ptr [eax]
 005D3A98    call        dword ptr [ebx+84];TCustomForm.sub_005FB7F8
 005D3A9E    mov         eax,dword ptr [ebp-4]
 005D3AA1    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>005D3AA5    je          005D3B79
 005D3AAB    mov         eax,dword ptr [ebp-4]
 005D3AAE    call        005D1580
>005D3AB3    jmp         005D3B79
 005D3AB8    mov         eax,dword ptr [ebp-4]
 005D3ABB    cmp         byte ptr [eax+230],5;TCustomForm.FPosition:TPosition
>005D3AC2    jne         005D3B79
 005D3AC8    mov         eax,dword ptr [ebp-4]
 005D3ACB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D3AD2    jne         005D3B10
 005D3AD4    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3AD9    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3ADC    call        TControl.GetClientWidth
 005D3AE1    mov         edx,dword ptr [ebp-4]
 005D3AE4    sub         eax,dword ptr [edx+48]
 005D3AE7    sar         eax,1
>005D3AE9    jns         005D3AEE
 005D3AEB    adc         eax,0
 005D3AEE    mov         dword ptr [ebp-8],eax
 005D3AF1    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3AF6    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3AF9    call        TControl.GetClientHeight
 005D3AFE    mov         edx,dword ptr [ebp-4]
 005D3B01    sub         eax,dword ptr [edx+4C]
 005D3B04    sar         eax,1
>005D3B06    jns         005D3B0B
 005D3B08    adc         eax,0
 005D3B0B    mov         dword ptr [ebp-0C],eax
>005D3B0E    jmp         005D3B44
 005D3B10    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3B15    call        005D5660
 005D3B1A    mov         edx,dword ptr [ebp-4]
 005D3B1D    sub         eax,dword ptr [edx+48]
 005D3B20    sar         eax,1
>005D3B22    jns         005D3B27
 005D3B24    adc         eax,0
 005D3B27    mov         dword ptr [ebp-8],eax
 005D3B2A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3B2F    call        005D5640
 005D3B34    mov         edx,dword ptr [ebp-4]
 005D3B37    sub         eax,dword ptr [edx+4C]
 005D3B3A    sar         eax,1
>005D3B3C    jns         005D3B41
 005D3B3E    adc         eax,0
 005D3B41    mov         dword ptr [ebp-0C],eax
 005D3B44    cmp         dword ptr [ebp-8],0
>005D3B48    jge         005D3B4F
 005D3B4A    xor         eax,eax
 005D3B4C    mov         dword ptr [ebp-8],eax
 005D3B4F    cmp         dword ptr [ebp-0C],0
>005D3B53    jge         005D3B5A
 005D3B55    xor         eax,eax
 005D3B57    mov         dword ptr [ebp-0C],eax
 005D3B5A    mov         eax,dword ptr [ebp-4]
 005D3B5D    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 005D3B60    push        eax
 005D3B61    mov         eax,dword ptr [ebp-4]
 005D3B64    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 005D3B67    push        eax
 005D3B68    mov         ecx,dword ptr [ebp-0C]
 005D3B6B    mov         edx,dword ptr [ebp-8]
 005D3B6E    mov         eax,dword ptr [ebp-4]
 005D3B71    mov         ebx,dword ptr [eax]
 005D3B73    call        dword ptr [ebx+84];TCustomForm.sub_005FB7F8
 005D3B79    mov         eax,dword ptr [ebp-4]
 005D3B7C    mov         byte ptr [eax+230],0;TCustomForm.FPosition:TPosition
 005D3B83    mov         eax,dword ptr [ebp-4]
 005D3B86    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D3B8D    jne         005D3C48
 005D3B93    mov         eax,dword ptr [ebp-4]
 005D3B96    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>005D3B9D    jne         005D3BD5
 005D3B9F    push        0
 005D3BA1    mov         eax,dword ptr [ebp-4]
 005D3BA4    call        TWinControl.GetHandle
 005D3BA9    push        eax
 005D3BAA    push        223
 005D3BAF    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3BB4    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3BB7    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005D3BBD    push        eax
 005D3BBE    call        USER32.SendMessageA
 005D3BC3    push        3
 005D3BC5    mov         eax,dword ptr [ebp-4]
 005D3BC8    call        TWinControl.GetHandle
 005D3BCD    push        eax
 005D3BCE    call        USER32.ShowWindow
>005D3BD3    jmp         005D3C26
 005D3BD5    mov         eax,dword ptr [ebp-4]
 005D3BD8    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 005D3BDF    mov         eax,dword ptr [eax*4+6E4058]
 005D3BE6    push        eax
 005D3BE7    mov         eax,dword ptr [ebp-4]
 005D3BEA    call        TWinControl.GetHandle
 005D3BEF    push        eax
 005D3BF0    call        USER32.ShowWindow
 005D3BF5    mov         eax,dword ptr [ebp-4]
 005D3BF8    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 005D3BFB    mov         edx,dword ptr [ebp-4]
 005D3BFE    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 005D3C01    shl         edx,10
 005D3C04    or          eax,edx
 005D3C06    push        eax
 005D3C07    push        0
 005D3C09    push        5
 005D3C0B    mov         eax,dword ptr [ebp-4]
 005D3C0E    call        TWinControl.GetHandle
 005D3C13    push        eax
 005D3C14    push        692B9A;USER32.DefMDIChildProcA
 005D3C19    call        USER32.CallWindowProcA
 005D3C1E    mov         eax,dword ptr [ebp-4]
 005D3C21    call        005F3B24
 005D3C26    push        0
 005D3C28    push        0
 005D3C2A    push        234
 005D3C2F    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3C34    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3C37    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005D3C3D    push        eax
 005D3C3E    call        USER32.SendMessageA
>005D3C43    jmp         005D3D7B
 005D3C48    mov         eax,dword ptr [ebp-4]
 005D3C4B    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 005D3C52    mov         eax,dword ptr [eax*4+6E4058]
 005D3C59    push        eax
 005D3C5A    mov         eax,dword ptr [ebp-4]
 005D3C5D    call        TWinControl.GetHandle
 005D3C62    push        eax
 005D3C63    call        USER32.ShowWindow
>005D3C68    jmp         005D3D7B
 005D3C6D    xor         eax,eax
 005D3C6F    push        ebp
 005D3C70    push        5D3C91
 005D3C75    push        dword ptr fs:[eax]
 005D3C78    mov         dword ptr fs:[eax],esp
 005D3C7B    mov         eax,dword ptr [ebp-4]
 005D3C7E    mov         si,0FFAF
 005D3C82    call        @CallDynaInst;TCustomForm.sub_005CFD20
 005D3C87    xor         eax,eax
 005D3C89    pop         edx
 005D3C8A    pop         ecx
 005D3C8B    pop         ecx
 005D3C8C    mov         dword ptr fs:[eax],edx
>005D3C8F    jmp         005D3CA8
>005D3C91    jmp         @HandleAnyException
 005D3C96    mov         edx,dword ptr [ebp-4]
 005D3C99    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3C9E    call        TApplication.HandleException
 005D3CA3    call        @DoneExcept
 005D3CA8    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D3CAD    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005D3CB0    cmp         eax,dword ptr [ebp-4]
>005D3CB3    jne         005D3CBF
 005D3CB5    xor         edx,edx
 005D3CB7    mov         eax,dword ptr [ebp-4]
 005D3CBA    call        TCustomForm.MergeMenu
 005D3CBF    mov         eax,dword ptr [ebp-4]
 005D3CC2    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D3CC9    jne         005D3CD8
 005D3CCB    mov         eax,dword ptr [ebp-4]
 005D3CCE    call        005F8828
>005D3CD3    jmp         005D3D7B
 005D3CD8    mov         eax,dword ptr [ebp-4]
 005D3CDB    test        byte ptr [eax+2EC],8;TCustomForm.FFormState:TFormState
>005D3CE2    je          005D3D03
 005D3CE4    push        97
 005D3CE9    push        0
 005D3CEB    push        0
 005D3CED    push        0
 005D3CEF    push        0
 005D3CF1    push        0
 005D3CF3    mov         eax,dword ptr [ebp-4]
 005D3CF6    call        TWinControl.GetHandle
 005D3CFB    push        eax
 005D3CFC    call        USER32.SetWindowPos
>005D3D01    jmp         005D3D7B
 005D3D03    xor         eax,eax
 005D3D05    mov         dword ptr [ebp-10],eax
 005D3D08    mov         eax,dword ptr [ebp-4]
 005D3D0B    call        TWinControl.GetHandle
 005D3D10    mov         ebx,eax
 005D3D12    call        USER32.GetActiveWindow
 005D3D17    cmp         ebx,eax
>005D3D19    jne         005D3D3D
 005D3D1B    mov         eax,dword ptr [ebp-4]
 005D3D1E    call        TWinControl.GetHandle
 005D3D23    push        eax
 005D3D24    call        USER32.IsIconic
 005D3D29    test        eax,eax
>005D3D2B    jne         005D3D3D
 005D3D2D    mov         eax,dword ptr [ebp-4]
 005D3D30    call        TWinControl.GetHandle
 005D3D35    call        005CCD14
 005D3D3A    mov         dword ptr [ebp-10],eax
 005D3D3D    cmp         dword ptr [ebp-10],0
>005D3D41    je          005D3D6B
 005D3D43    push        97
 005D3D48    push        0
 005D3D4A    push        0
 005D3D4C    push        0
 005D3D4E    push        0
 005D3D50    push        0
 005D3D52    mov         eax,dword ptr [ebp-4]
 005D3D55    call        TWinControl.GetHandle
 005D3D5A    push        eax
 005D3D5B    call        USER32.SetWindowPos
 005D3D60    mov         eax,dword ptr [ebp-10]
 005D3D63    push        eax
 005D3D64    call        USER32.SetActiveWindow
>005D3D69    jmp         005D3D7B
 005D3D6B    push        0
 005D3D6D    mov         eax,dword ptr [ebp-4]
 005D3D70    call        TWinControl.GetHandle
 005D3D75    push        eax
 005D3D76    call        USER32.ShowWindow
 005D3D7B    xor         eax,eax
 005D3D7D    pop         edx
 005D3D7E    pop         ecx
 005D3D7F    pop         ecx
 005D3D80    mov         dword ptr fs:[eax],edx
 005D3D83    push        5D3D9A
 005D3D88    mov         eax,dword ptr [ebp-4]
 005D3D8B    and         byte ptr [eax+2EC],0FB;TCustomForm.FFormState:TFormState
 005D3D92    ret
>005D3D93    jmp         @HandleFinally
>005D3D98    jmp         005D3D88
 005D3D9A    xor         eax,eax
 005D3D9C    pop         edx
 005D3D9D    pop         ecx
 005D3D9E    pop         ecx
 005D3D9F    mov         dword ptr fs:[eax],edx
 005D3DA2    push        5D3DB7
 005D3DA7    lea         eax,[ebp-1C]
 005D3DAA    call        @LStrClr
 005D3DAF    ret
>005D3DB0    jmp         @HandleFinally
>005D3DB5    jmp         005D3DA7
 005D3DB7    pop         edi
 005D3DB8    pop         esi
 005D3DB9    pop         ebx
 005D3DBA    mov         esp,ebp
 005D3DBC    pop         ebp
 005D3DBD    ret
end;*}

//005D3DC0
{*procedure TCustomForm.CMIconChanged(?:?);
begin
 005D3DC0    push        ebp
 005D3DC1    mov         ebp,esp
 005D3DC3    add         esp,0FFFFFFF8
 005D3DC6    mov         dword ptr [ebp-8],edx
 005D3DC9    mov         dword ptr [ebp-4],eax
 005D3DCC    mov         eax,dword ptr [ebp-4]
 005D3DCF    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 005D3DD5    call        005C8F8C
 005D3DDA    test        eax,eax
>005D3DDC    jne         005D3DE8
 005D3DDE    xor         edx,edx
 005D3DE0    mov         eax,dword ptr [ebp-4]
 005D3DE3    call        005CFBD4
 005D3DE8    pop         ecx
 005D3DE9    pop         ecx
 005D3DEA    pop         ebp
 005D3DEB    ret
end;*}

//005D3DEC
{*procedure TCustomForm.CMRelease(?:?);
begin
 005D3DEC    push        ebp
 005D3DED    mov         ebp,esp
 005D3DEF    add         esp,0FFFFFFF8
 005D3DF2    mov         dword ptr [ebp-8],edx
 005D3DF5    mov         dword ptr [ebp-4],eax
 005D3DF8    mov         eax,dword ptr [ebp-4]
 005D3DFB    call        TObject.Free
 005D3E00    pop         ecx
 005D3E01    pop         ecx
 005D3E02    pop         ebp
 005D3E03    ret
end;*}

//005D3E04
{*procedure TCustomForm.CMTextChanged(?:?);
begin
 005D3E04    push        ebp
 005D3E05    mov         ebp,esp
 005D3E07    add         esp,0FFFFFFF8
 005D3E0A    mov         dword ptr [ebp-8],edx
 005D3E0D    mov         dword ptr [ebp-4],eax
 005D3E10    mov         edx,dword ptr [ebp-8]
 005D3E13    mov         eax,dword ptr [ebp-4]
 005D3E16    mov         ecx,dword ptr [eax]
 005D3E18    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D3E1B    mov         eax,dword ptr [ebp-4]
 005D3E1E    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D3E25    jne         005D3E60
 005D3E27    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3E2C    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D3E30    je          005D3E60
 005D3E32    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3E37    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3E3A    cmp         dword ptr [eax+254],0;TForm.FClientHandle:HWND
>005D3E41    je          005D3E60
 005D3E43    push        0
 005D3E45    push        0
 005D3E47    push        234
 005D3E4C    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3E51    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3E54    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005D3E5A    push        eax
 005D3E5B    call        USER32.SendMessageA
 005D3E60    pop         ecx
 005D3E61    pop         ecx
 005D3E62    pop         ebp
 005D3E63    ret
end;*}

//005D3E64
{*procedure TCustomForm.CMUIActivate(?:?);
begin
 005D3E64    push        ebp
 005D3E65    mov         ebp,esp
 005D3E67    add         esp,0FFFFFFF8
 005D3E6A    mov         dword ptr [ebp-8],edx
 005D3E6D    mov         dword ptr [ebp-4],eax
 005D3E70    mov         edx,dword ptr [ebp-8]
 005D3E73    mov         eax,dword ptr [ebp-4]
 005D3E76    mov         ecx,dword ptr [eax]
 005D3E78    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D3E7B    pop         ecx
 005D3E7C    pop         ecx
 005D3E7D    pop         ebp
 005D3E7E    ret
end;*}

//005D3E80
{*procedure TCustomForm.CMParentFontChanged(?:?);
begin
 005D3E80    push        ebp
 005D3E81    mov         ebp,esp
 005D3E83    add         esp,0FFFFFFF4
 005D3E86    mov         dword ptr [ebp-8],edx
 005D3E89    mov         dword ptr [ebp-4],eax
 005D3E8C    mov         eax,dword ptr [ebp-4]
 005D3E8F    cmp         byte ptr [eax+59],0;TCustomForm.FParentFont:Boolean
>005D3E93    je          005D3EF9
 005D3E95    mov         eax,dword ptr [ebp-8]
 005D3E98    cmp         dword ptr [eax+4],0
>005D3E9C    je          005D3EB1
 005D3E9E    mov         edx,dword ptr [ebp-8]
 005D3EA1    mov         edx,dword ptr [edx+8]
 005D3EA4    mov         eax,dword ptr [ebp-4]
 005D3EA7    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005D3EAA    mov         ecx,dword ptr [eax]
 005D3EAC    call        dword ptr [ecx+8];TFont.Assign
>005D3EAF    jmp         005D3EF9
 005D3EB1    mov         dl,1
 005D3EB3    mov         eax,[005BE498];TFont
 005D3EB8    call        TFont.Create;TFont.Create
 005D3EBD    mov         dword ptr [ebp-0C],eax
 005D3EC0    xor         eax,eax
 005D3EC2    push        ebp
 005D3EC3    push        5D3EF2
 005D3EC8    push        dword ptr fs:[eax]
 005D3ECB    mov         dword ptr fs:[eax],esp
 005D3ECE    mov         eax,dword ptr [ebp-4]
 005D3ED1    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 005D3ED4    mov         edx,dword ptr [ebp-0C]
 005D3ED7    mov         ecx,dword ptr [eax]
 005D3ED9    call        dword ptr [ecx+8];TFont.Assign
 005D3EDC    xor         eax,eax
 005D3EDE    pop         edx
 005D3EDF    pop         ecx
 005D3EE0    pop         ecx
 005D3EE1    mov         dword ptr fs:[eax],edx
 005D3EE4    push        5D3EF9
 005D3EE9    mov         eax,dword ptr [ebp-0C]
 005D3EEC    call        TObject.Free
 005D3EF1    ret
>005D3EF2    jmp         @HandleFinally
>005D3EF7    jmp         005D3EE9
 005D3EF9    mov         esp,ebp
 005D3EFB    pop         ebp
 005D3EFC    ret
end;*}

//005D3F00
{*procedure TCustomForm.CMDockNotification(?:?);
begin
 005D3F00    push        ebp
 005D3F01    mov         ebp,esp
 005D3F03    add         esp,0FFFFFFF8
 005D3F06    push        esi
 005D3F07    mov         dword ptr [ebp-8],edx
 005D3F0A    mov         dword ptr [ebp-4],eax
 005D3F0D    mov         edx,dword ptr [ebp-8]
 005D3F10    mov         eax,dword ptr [ebp-4]
 005D3F13    mov         si,0FFAB
 005D3F17    call        @CallDynaInst;TCustomForm.sub_005D48E8
 005D3F1C    test        al,al
>005D3F1E    je          005D3F2C
 005D3F20    mov         eax,dword ptr [ebp-8]
 005D3F23    mov         dword ptr [eax+0C],1
>005D3F2A    jmp         005D3F34
 005D3F2C    mov         eax,dword ptr [ebp-8]
 005D3F2F    xor         edx,edx
 005D3F31    mov         dword ptr [eax+0C],edx
 005D3F34    pop         esi
 005D3F35    pop         ecx
 005D3F36    pop         ecx
 005D3F37    pop         ebp
 005D3F38    ret
end;*}

//005D3F3C
procedure sub_005D3F3C(?:TCustomForm);
begin
{*
 005D3F3C    push        ebp
 005D3F3D    mov         ebp,esp
 005D3F3F    add         esp,0FFFFFFF8
 005D3F42    push        esi
 005D3F43    mov         dword ptr [ebp-4],eax
 005D3F46    mov         eax,dword ptr [ebp-4]
 005D3F49    test        byte ptr [eax+2EC],8;TCustomForm.FFormState:TFormState
>005D3F50    je          005D3F64
 005D3F52    mov         eax,dword ptr [ebp-4]
 005D3F55    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>005D3F5F    jmp         005D3FF7
 005D3F64    mov         eax,dword ptr [ebp-4]
 005D3F67    mov         edx,dword ptr [eax]
 005D3F69    call        dword ptr [edx+0E0];TCustomForm.sub_005D3FFC
 005D3F6F    test        al,al
>005D3F71    je          005D3FF7
 005D3F77    mov         eax,dword ptr [ebp-4]
 005D3F7A    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D3F81    jne         005D3F9B
 005D3F83    mov         eax,dword ptr [ebp-4]
 005D3F86    test        byte ptr [eax+228],2;TCustomForm.FBorderIcons:TBorderIcons
>005D3F8D    je          005D3F95
 005D3F8F    mov         byte ptr [ebp-5],3
>005D3F93    jmp         005D3F9F
 005D3F95    mov         byte ptr [ebp-5],0
>005D3F99    jmp         005D3F9F
 005D3F9B    mov         byte ptr [ebp-5],1
 005D3F9F    lea         edx,[ebp-5]
 005D3FA2    mov         eax,dword ptr [ebp-4]
 005D3FA5    mov         si,0FFB0
 005D3FA9    call        @CallDynaInst;TCustomForm.sub_005CFCEC
 005D3FAE    cmp         byte ptr [ebp-5],0
>005D3FB2    je          005D3FF7
 005D3FB4    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3FB9    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D3FBC    cmp         eax,dword ptr [ebp-4]
>005D3FBF    jne         005D3FCD
 005D3FC1    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D3FC6    call        005D8528
>005D3FCB    jmp         005D3FF7
 005D3FCD    cmp         byte ptr [ebp-5],1
>005D3FD1    jne         005D3FDD
 005D3FD3    mov         eax,dword ptr [ebp-4]
 005D3FD6    call        005D4114
>005D3FDB    jmp         005D3FF7
 005D3FDD    cmp         byte ptr [ebp-5],3
>005D3FE1    jne         005D3FEF
 005D3FE3    mov         dl,1
 005D3FE5    mov         eax,dword ptr [ebp-4]
 005D3FE8    call        TForm.SetWindowState
>005D3FED    jmp         005D3FF7
 005D3FEF    mov         eax,dword ptr [ebp-4]
 005D3FF2    call        TCustomForm.Release
 005D3FF7    pop         esi
 005D3FF8    pop         ecx
 005D3FF9    pop         ecx
 005D3FFA    pop         ebp
 005D3FFB    ret
*}
end;

//005D3FFC
{*function sub_005D3FFC:?;
begin
 005D3FFC    push        ebp
 005D3FFD    mov         ebp,esp
 005D3FFF    add         esp,0FFFFFFF0
 005D4002    push        ebx
 005D4003    mov         dword ptr [ebp-4],eax
 005D4006    mov         eax,dword ptr [ebp-4]
 005D4009    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>005D4010    jne         005D404D
 005D4012    mov         byte ptr [ebp-5],0
 005D4016    mov         eax,dword ptr [ebp-4]
 005D4019    call        TCustomForm.GetMDIChildCount
 005D401E    dec         eax
 005D401F    test        eax,eax
>005D4021    jl          005D404D
 005D4023    inc         eax
 005D4024    mov         dword ptr [ebp-10],eax
 005D4027    mov         dword ptr [ebp-0C],0
 005D402E    mov         edx,dword ptr [ebp-0C]
 005D4031    mov         eax,dword ptr [ebp-4]
 005D4034    call        005D0C44
 005D4039    mov         edx,dword ptr [eax]
 005D403B    call        dword ptr [edx+0E0]
 005D4041    test        al,al
>005D4043    je          005D4073
 005D4045    inc         dword ptr [ebp-0C]
 005D4048    dec         dword ptr [ebp-10]
>005D404B    jne         005D402E
 005D404D    mov         byte ptr [ebp-5],1
 005D4051    mov         eax,dword ptr [ebp-4]
 005D4054    cmp         word ptr [eax+29A],0;TCustomForm.?f29A:word
>005D405C    je          005D4073
 005D405E    lea         ecx,[ebp-5]
 005D4061    mov         ebx,dword ptr [ebp-4]
 005D4064    mov         edx,dword ptr [ebp-4]
 005D4067    mov         eax,dword ptr [ebx+29C];TCustomForm.?f29C:dword
 005D406D    call        dword ptr [ebx+298];TCustomForm.FOnCloseQuery
 005D4073    mov         al,byte ptr [ebp-5]
 005D4076    pop         ebx
 005D4077    mov         esp,ebp
 005D4079    pop         ebp
 005D407A    ret
end;*}

//005D407C
procedure TCustomForm.CloseModal;
begin
{*
 005D407C    push        ebp
 005D407D    mov         ebp,esp
 005D407F    add         esp,0FFFFFFF8
 005D4082    push        ebx
 005D4083    push        esi
 005D4084    push        edi
 005D4085    mov         dword ptr [ebp-4],eax
 005D4088    xor         eax,eax
 005D408A    push        ebp
 005D408B    push        5D40E8
 005D4090    push        dword ptr fs:[eax]
 005D4093    mov         dword ptr fs:[eax],esp
 005D4096    mov         byte ptr [ebp-5],0
 005D409A    mov         eax,dword ptr [ebp-4]
 005D409D    mov         edx,dword ptr [eax]
 005D409F    call        dword ptr [edx+0E0]
 005D40A5    test        al,al
>005D40A7    je          005D40BC
 005D40A9    mov         byte ptr [ebp-5],1
 005D40AD    lea         edx,[ebp-5]
 005D40B0    mov         eax,dword ptr [ebp-4]
 005D40B3    mov         si,0FFB0
 005D40B7    call        @CallDynaInst
 005D40BC    mov         al,byte ptr [ebp-5]
 005D40BF    sub         al,1
>005D40C1    jb          005D40C9
 005D40C3    dec         al
>005D40C5    je          005D40D6
>005D40C7    jmp         005D40DE
 005D40C9    mov         eax,dword ptr [ebp-4]
 005D40CC    xor         edx,edx
 005D40CE    mov         dword ptr [eax+24C],edx
>005D40D4    jmp         005D40DE
 005D40D6    mov         eax,dword ptr [ebp-4]
 005D40D9    call        TCustomForm.Release
 005D40DE    xor         eax,eax
 005D40E0    pop         edx
 005D40E1    pop         ecx
 005D40E2    pop         ecx
 005D40E3    mov         dword ptr fs:[eax],edx
>005D40E6    jmp         005D410A
>005D40E8    jmp         @HandleAnyException
 005D40ED    mov         eax,dword ptr [ebp-4]
 005D40F0    xor         edx,edx
 005D40F2    mov         dword ptr [eax+24C],edx
 005D40F8    mov         edx,dword ptr [ebp-4]
 005D40FB    mov         eax,[006ECD7C];Application:TApplication
 005D4100    call        TApplication.HandleException
 005D4105    call        @DoneExcept
 005D410A    pop         edi
 005D410B    pop         esi
 005D410C    pop         ebx
 005D410D    pop         ecx
 005D410E    pop         ecx
 005D410F    pop         ebp
 005D4110    ret
*}
end;

//005D4114
procedure sub_005D4114(?:TCustomForm);
begin
{*
 005D4114    push        ebp
 005D4115    mov         ebp,esp
 005D4117    push        ecx
 005D4118    mov         dword ptr [ebp-4],eax
 005D411B    xor         edx,edx
 005D411D    mov         eax,dword ptr [ebp-4]
 005D4120    call        TCustomForm.SetVisible
 005D4125    pop         ecx
 005D4126    pop         ebp
 005D4127    ret
*}
end;

//005D4128
procedure sub_005D4128(?:TCustomForm);
begin
{*
 005D4128    push        ebp
 005D4129    mov         ebp,esp
 005D412B    push        ecx
 005D412C    mov         dword ptr [ebp-4],eax
 005D412F    mov         dl,1
 005D4131    mov         eax,dword ptr [ebp-4]
 005D4134    call        TCustomForm.SetVisible
 005D4139    mov         eax,dword ptr [ebp-4]
 005D413C    call        005F3B24
 005D4141    pop         ecx
 005D4142    pop         ebp
 005D4143    ret
*}
end;

//005D4144
procedure sub_005D4144;
begin
{*
 005D4144    push        ebp
 005D4145    mov         ebp,esp
 005D4147    add         esp,0FFFFFFF8
 005D414A    xor         edx,edx
 005D414C    mov         dword ptr [ebp-8],edx
 005D414F    mov         dword ptr [ebp-4],eax
 005D4152    xor         eax,eax
 005D4154    push        ebp
 005D4155    push        5D41C0
 005D415A    push        dword ptr fs:[eax]
 005D415D    mov         dword ptr fs:[eax],esp
 005D4160    mov         eax,dword ptr [ebp-4]
 005D4163    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>005D416A    jne         005D41AA
 005D416C    mov         eax,dword ptr [ebp-4]
 005D416F    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>005D4173    je          005D4181
 005D4175    mov         eax,dword ptr [ebp-4]
 005D4178    mov         edx,dword ptr [eax]
 005D417A    call        dword ptr [edx+50];TCCalendar.GetEnabled
 005D417D    test        al,al
>005D417F    jne         005D41A2
 005D4181    lea         edx,[ebp-8]
 005D4184    mov         eax,[006E9E34];^gvar_0063CA78
 005D4189    call        LoadResString
 005D418E    mov         ecx,dword ptr [ebp-8]
 005D4191    mov         dl,1
 005D4193    mov         eax,[00642244];EInvalidOperation
 005D4198    call        Exception.Create;EInvalidOperation.Create
 005D419D    call        @RaiseExcept
 005D41A2    mov         eax,dword ptr [ebp-4]
 005D41A5    call        005D2464
 005D41AA    xor         eax,eax
 005D41AC    pop         edx
 005D41AD    pop         ecx
 005D41AE    pop         ecx
 005D41AF    mov         dword ptr fs:[eax],edx
 005D41B2    push        5D41C7
 005D41B7    lea         eax,[ebp-8]
 005D41BA    call        @LStrClr
 005D41BF    ret
>005D41C0    jmp         @HandleFinally
>005D41C5    jmp         005D41B7
 005D41C7    pop         ecx
 005D41C8    pop         ecx
 005D41C9    pop         ebp
 005D41CA    ret
*}
end;

//005D41CC
procedure TCustomForm.Release;
begin
{*
 005D41CC    push        ebp
 005D41CD    mov         ebp,esp
 005D41CF    push        ecx
 005D41D0    mov         dword ptr [ebp-4],eax
 005D41D3    push        0
 005D41D5    push        0
 005D41D7    push        0B021
 005D41DC    mov         eax,dword ptr [ebp-4]
 005D41DF    call        TWinControl.GetHandle
 005D41E4    push        eax
 005D41E5    call        USER32.PostMessageA
 005D41EA    pop         ecx
 005D41EB    pop         ebp
 005D41EC    ret
*}
end;

//005D41F0
{*function sub_005D41F0:?;
begin
 005D41F0    push        ebp
 005D41F1    mov         ebp,esp
 005D41F3    add         esp,0FFFFFFE0
 005D41F6    push        ebx
 005D41F7    xor         edx,edx
 005D41F9    mov         dword ptr [ebp-20],edx
 005D41FC    mov         dword ptr [ebp-4],eax
 005D41FF    xor         eax,eax
 005D4201    push        ebp
 005D4202    push        5D4493
 005D4207    push        dword ptr fs:[eax]
 005D420A    mov         dword ptr fs:[eax],esp
 005D420D    call        CancelDrag
 005D4212    mov         eax,dword ptr [ebp-4]
 005D4215    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>005D4219    jne         005D423F
 005D421B    mov         eax,dword ptr [ebp-4]
 005D421E    mov         edx,dword ptr [eax]
 005D4220    call        dword ptr [edx+50];TCCalendar.GetEnabled
 005D4223    test        al,al
>005D4225    je          005D423F
 005D4227    mov         eax,dword ptr [ebp-4]
 005D422A    test        byte ptr [eax+2EC],8;TCustomForm.FFormState:TFormState
>005D4231    jne         005D423F
 005D4233    mov         eax,dword ptr [ebp-4]
 005D4236    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>005D423D    jne         005D4260
 005D423F    lea         edx,[ebp-20]
 005D4242    mov         eax,[006E9E48];^gvar_0063CAA0
 005D4247    call        LoadResString
 005D424C    mov         ecx,dword ptr [ebp-20]
 005D424F    mov         dl,1
 005D4251    mov         eax,[00642244];EInvalidOperation
 005D4256    call        Exception.Create;EInvalidOperation.Create
 005D425B    call        @RaiseExcept
 005D4260    call        USER32.GetCapture
 005D4265    test        eax,eax
>005D4267    je          005D427A
 005D4269    push        0
 005D426B    push        0
 005D426D    push        1F
 005D426F    call        USER32.GetCapture
 005D4274    push        eax
 005D4275    call        USER32.SendMessageA
 005D427A    call        USER32.ReleaseCapture
 005D427F    mov         eax,dword ptr [ebp-4]
 005D4282    or          byte ptr [eax+2EC],8;TCustomForm.FFormState:TFormState
 005D4289    call        USER32.GetActiveWindow
 005D428E    mov         dword ptr [ebp-1C],eax
 005D4291    mov         eax,[006E3FE0];0x0 gvar_006E3FE0
 005D4296    mov         dword ptr [ebp-10],eax
 005D4299    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D429E    mov         ecx,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 005D42A1    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D42A6    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 005D42A9    xor         edx,edx
 005D42AB    call        TList.Insert
 005D42B0    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D42B5    mov         edx,dword ptr [ebp-4]
 005D42B8    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 005D42BB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D42C0    mov         ax,word ptr [eax+44];TScreen.FCursor:TCursor
 005D42C4    mov         word ptr [ebp-12],ax
 005D42C8    xor         edx,edx
 005D42CA    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D42CF    call        005D5E2C
 005D42D4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D42D9    mov         eax,dword ptr [eax+48];TScreen.FCursorCount:Integer
 005D42DC    mov         dword ptr [ebp-18],eax
 005D42DF    xor         eax,eax
 005D42E1    call        005CCB90
 005D42E6    mov         dword ptr [ebp-0C],eax
 005D42E9    xor         eax,eax
 005D42EB    push        ebp
 005D42EC    push        5D4473
 005D42F1    push        dword ptr fs:[eax]
 005D42F4    mov         dword ptr fs:[eax],esp
 005D42F7    mov         eax,dword ptr [ebp-4]
 005D42FA    call        005D4128
 005D42FF    xor         eax,eax
 005D4301    push        ebp
 005D4302    push        5D43C7
 005D4307    push        dword ptr fs:[eax]
 005D430A    mov         dword ptr fs:[eax],esp
 005D430D    push        0
 005D430F    push        0
 005D4311    push        0B000
 005D4316    mov         eax,dword ptr [ebp-4]
 005D4319    call        TWinControl.GetHandle
 005D431E    push        eax
 005D431F    call        USER32.SendMessageA
 005D4324    mov         eax,dword ptr [ebp-4]
 005D4327    xor         edx,edx
 005D4329    mov         dword ptr [eax+24C],edx;TCustomForm.FModalResult:TModalResult
 005D432F    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D4334    call        005D8228
 005D4339    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D433E    cmp         byte ptr [eax+9C],0;TApplication.FTerminate:Boolean
>005D4345    je          005D4356
 005D4347    mov         eax,dword ptr [ebp-4]
 005D434A    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>005D4354    jmp         005D436A
 005D4356    mov         eax,dword ptr [ebp-4]
 005D4359    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>005D4360    je          005D436A
 005D4362    mov         eax,dword ptr [ebp-4]
 005D4365    call        TCustomForm.CloseModal
 005D436A    mov         eax,dword ptr [ebp-4]
 005D436D    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>005D4374    je          005D432F
 005D4376    mov         eax,dword ptr [ebp-4]
 005D4379    mov         eax,dword ptr [eax+24C];TCustomForm.FModalResult:TModalResult
 005D437F    mov         dword ptr [ebp-8],eax
 005D4382    push        0
 005D4384    push        0
 005D4386    push        0B001
 005D438B    mov         eax,dword ptr [ebp-4]
 005D438E    call        TWinControl.GetHandle
 005D4393    push        eax
 005D4394    call        USER32.SendMessageA
 005D4399    mov         eax,dword ptr [ebp-4]
 005D439C    call        TWinControl.GetHandle
 005D43A1    mov         ebx,eax
 005D43A3    call        USER32.GetActiveWindow
 005D43A8    cmp         ebx,eax
>005D43AA    je          005D43B1
 005D43AC    xor         eax,eax
 005D43AE    mov         dword ptr [ebp-1C],eax
 005D43B1    xor         eax,eax
 005D43B3    pop         edx
 005D43B4    pop         ecx
 005D43B5    pop         ecx
 005D43B6    mov         dword ptr fs:[eax],edx
 005D43B9    push        5D43CE
 005D43BE    mov         eax,dword ptr [ebp-4]
 005D43C1    call        005D4114
 005D43C6    ret
>005D43C7    jmp         @HandleFinally
>005D43CC    jmp         005D43BE
 005D43CE    xor         eax,eax
 005D43D0    pop         edx
 005D43D1    pop         ecx
 005D43D2    pop         ecx
 005D43D3    mov         dword ptr fs:[eax],edx
 005D43D6    push        5D447D
 005D43DB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D43E0    mov         eax,dword ptr [eax+48];TScreen.FCursorCount:Integer
 005D43E3    cmp         eax,dword ptr [ebp-18]
>005D43E6    jne         005D43F8
 005D43E8    mov         dx,word ptr [ebp-12]
 005D43EC    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D43F1    call        005D5E2C
>005D43F6    jmp         005D4404
 005D43F8    xor         edx,edx
 005D43FA    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D43FF    call        005D5E2C
 005D4404    mov         eax,dword ptr [ebp-0C]
 005D4407    call        005CCC48
 005D440C    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D4411    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 005D4414    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>005D4418    jle         005D4447
 005D441A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D441F    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 005D4422    call        TList.First
 005D4427    mov         edx,dword ptr ds:[6ECD80];0x0 Screen:TScreen
 005D442D    mov         dword ptr [edx+78],eax;TScreen.FFocusedForm:TCustomForm
 005D4430    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D4435    mov         edx,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 005D4438    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D443D    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 005D4440    call        TList.Remove
>005D4445    jmp         005D4451
 005D4447    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D444C    xor         edx,edx
 005D444E    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 005D4451    cmp         dword ptr [ebp-1C],0
>005D4455    je          005D4460
 005D4457    mov         eax,dword ptr [ebp-1C]
 005D445A    push        eax
 005D445B    call        USER32.SetActiveWindow
 005D4460    mov         eax,dword ptr [ebp-10]
 005D4463    mov         [006E3FE0],eax;gvar_006E3FE0
 005D4468    mov         eax,dword ptr [ebp-4]
 005D446B    and         byte ptr [eax+2EC],0F7;TCustomForm.FFormState:TFormState
 005D4472    ret
>005D4473    jmp         @HandleFinally
>005D4478    jmp         005D43DB
 005D447D    xor         eax,eax
 005D447F    pop         edx
 005D4480    pop         ecx
 005D4481    pop         ecx
 005D4482    mov         dword ptr fs:[eax],edx
 005D4485    push        5D449A
 005D448A    lea         eax,[ebp-20]
 005D448D    call        @LStrClr
 005D4492    ret
>005D4493    jmp         @HandleFinally
>005D4498    jmp         005D448A
 005D449A    mov         eax,dword ptr [ebp-8]
 005D449D    pop         ebx
 005D449E    mov         esp,ebp
 005D44A0    pop         ebp
 005D44A1    ret
end;*}

//005D44A4
{*procedure sub_005D44A4(?:TCustomForm; ?:?);
begin
 005D44A4    push        ebp
 005D44A5    mov         ebp,esp
 005D44A7    add         esp,0FFFFFFF0
 005D44AA    mov         dword ptr [ebp-4],eax
 005D44AD    mov         eax,dword ptr [ebp-4]
 005D44B0    cmp         byte ptr [eax+1A6],0
>005D44B7    je          005D4520
 005D44B9    mov         eax,dword ptr [ebp-4]
 005D44BC    call        005F7DC4
 005D44C1    dec         eax
 005D44C2    test        eax,eax
>005D44C4    jl          005D4520
 005D44C6    inc         eax
 005D44C7    mov         dword ptr [ebp-10],eax
 005D44CA    mov         dword ptr [ebp-8],0
 005D44D1    mov         edx,dword ptr [ebp-8]
 005D44D4    mov         eax,dword ptr [ebp-4]
 005D44D7    call        005F7D58
 005D44DC    mov         dword ptr [ebp-0C],eax
 005D44DF    mov         eax,dword ptr [ebp-0C]
 005D44E2    test        byte ptr [eax+51],80
>005D44E6    je          005D44F9
 005D44E8    mov         eax,dword ptr [ebp-0C]
 005D44EB    cmp         byte ptr [eax+57],0
>005D44EF    je          005D44F9
 005D44F1    mov         eax,dword ptr [ebp-0C]
 005D44F4    mov         edx,dword ptr [eax]
 005D44F6    call        dword ptr [edx+78]
 005D44F9    mov         eax,dword ptr [ebp-0C]
 005D44FC    mov         edx,dword ptr ds:[5EE6AC];TWinControl
 005D4502    call        @IsClass
 005D4507    test        al,al
>005D4509    je          005D4518
 005D450B    mov         eax,dword ptr [ebp+8]
 005D450E    push        eax
 005D450F    mov         eax,dword ptr [ebp-0C]
 005D4512    call        005D44A4
 005D4517    pop         ecx
 005D4518    inc         dword ptr [ebp-8]
 005D451B    dec         dword ptr [ebp-10]
>005D451E    jne         005D44D1
 005D4520    mov         esp,ebp
 005D4522    pop         ebp
 005D4523    ret
end;*}

//005D4524
procedure sub_005D4524;
begin
{*
 005D4524    push        ebp
 005D4525    mov         ebp,esp
 005D4527    add         esp,0FFFFFFF0
 005D452A    mov         dword ptr [ebp-4],eax
 005D452D    mov         eax,dword ptr [ebp-4]
 005D4530    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D4534    jne         005D45B1
 005D4536    mov         eax,dword ptr [ebp-4]
 005D4539    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>005D4540    je          005D45B1
 005D4542    mov         eax,dword ptr [ebp-4]
 005D4545    mov         edx,dword ptr [eax]
 005D4547    call        dword ptr [edx+78];TCustomForm.sub_005F67A4
 005D454A    mov         eax,dword ptr [ebp-4]
 005D454D    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D4554    je          005D45A7
 005D4556    mov         eax,dword ptr [ebp-4]
 005D4559    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D455F    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 005D4562    call        005A58D8
 005D4567    dec         eax
 005D4568    test        eax,eax
>005D456A    jl          005D45A7
 005D456C    inc         eax
 005D456D    mov         dword ptr [ebp-0C],eax
 005D4570    mov         dword ptr [ebp-8],0
 005D4577    mov         eax,dword ptr [ebp-4]
 005D457A    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D4580    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 005D4583    mov         edx,dword ptr [ebp-8]
 005D4586    call        005A5904
 005D458B    mov         dword ptr [ebp-10],eax
 005D458E    mov         eax,dword ptr [ebp-10]
 005D4591    cmp         byte ptr [eax+3E],0
>005D4595    je          005D459F
 005D4597    mov         eax,dword ptr [ebp-10]
 005D459A    mov         edx,dword ptr [eax]
 005D459C    call        dword ptr [edx+40]
 005D459F    inc         dword ptr [ebp-8]
 005D45A2    dec         dword ptr [ebp-0C]
>005D45A5    jne         005D4577
 005D45A7    push        ebp
 005D45A8    mov         eax,dword ptr [ebp-4]
 005D45AB    call        005D44A4
 005D45B0    pop         ecx
 005D45B1    mov         esp,ebp
 005D45B3    pop         ebp
 005D45B4    ret
*}
end;

//005D45B8
procedure TCustomForm.sub_005D45B8;
begin
{*
 005D45B8    push        ebp
 005D45B9    mov         ebp,esp
 005D45BB    push        ecx
 005D45BC    mov         dword ptr [ebp-4],eax
 005D45BF    mov         eax,dword ptr [ebp-4]
 005D45C2    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>005D45C6    jne         005D45D8
 005D45C8    mov         edx,dword ptr [ebp-4]
 005D45CB    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D45D0    call        005D6624
 005D45D5    pop         ecx
 005D45D6    pop         ebp
 005D45D7    ret
 005D45D8    mov         eax,dword ptr [ebp-4]
 005D45DB    call        TControl.sub_005F2638
 005D45E0    pop         ecx
 005D45E1    pop         ebp
 005D45E2    ret
*}
end;

//005D45E4
{*procedure TCustomForm.WMSettingChange(?:?);
begin
 005D45E4    push        ebp
 005D45E5    mov         ebp,esp
 005D45E7    add         esp,0FFFFFFF8
 005D45EA    push        esi
 005D45EB    mov         dword ptr [ebp-8],edx
 005D45EE    mov         dword ptr [ebp-4],eax
 005D45F1    mov         edx,dword ptr [ebp-8]
 005D45F4    mov         eax,dword ptr [ebp-4]
 005D45F7    call        TWinControl.WMSettingChange
 005D45FC    mov         eax,dword ptr [ebp-8]
 005D45FF    cmp         dword ptr [eax+4],2F
>005D4603    jne         005D4611
 005D4605    mov         eax,dword ptr [ebp-4]
 005D4608    mov         si,0FFD0
 005D460C    call        @CallDynaInst;TCustomForm.sub_005D45B8
 005D4611    pop         esi
 005D4612    pop         ecx
 005D4613    pop         ecx
 005D4614    pop         ebp
 005D4615    ret
end;*}

//005D4618
{*function sub_005D4618(?:TWinControl; ?:?):?;
begin
 005D4618    push        ebp
 005D4619    mov         ebp,esp
 005D461B    add         esp,0FFFFFFF8
 005D461E    push        esi
 005D461F    mov         dword ptr [ebp-4],eax
 005D4622    cmp         dword ptr [ebp-4],0
>005D4626    je          005D4641
 005D4628    mov         eax,dword ptr [ebp+8]
 005D462B    mov         edx,dword ptr [eax-4]
 005D462E    mov         edx,dword ptr [edx+8]
 005D4631    mov         eax,dword ptr [ebp-4]
 005D4634    mov         si,0FFF3
 005D4638    call        @CallDynaInst
 005D463D    test        al,al
>005D463F    jne         005D4645
 005D4641    xor         eax,eax
>005D4643    jmp         005D4647
 005D4645    mov         al,1
 005D4647    mov         byte ptr [ebp-5],al
 005D464A    mov         al,byte ptr [ebp-5]
 005D464D    pop         esi
 005D464E    pop         ecx
 005D464F    pop         ecx
 005D4650    pop         ebp
 005D4651    ret
end;*}

//005D4654
{*function sub_005D4654(?:TCustomForm; ?:?):?;
begin
 005D4654    push        ebp
 005D4655    mov         ebp,esp
 005D4657    add         esp,0FFFFFFEC
 005D465A    mov         dword ptr [ebp-4],eax
 005D465D    mov         eax,dword ptr [ebp-4]
 005D4660    cmp         byte ptr [eax+1A6],0
>005D4667    je          005D46DA
 005D4669    mov         eax,dword ptr [ebp-4]
 005D466C    call        005F7DC4
 005D4671    dec         eax
 005D4672    test        eax,eax
>005D4674    jl          005D46DA
 005D4676    inc         eax
 005D4677    mov         dword ptr [ebp-14],eax
 005D467A    mov         dword ptr [ebp-0C],0
 005D4681    mov         edx,dword ptr [ebp-0C]
 005D4684    mov         eax,dword ptr [ebp-4]
 005D4687    call        005F7D58
 005D468C    mov         dword ptr [ebp-10],eax
 005D468F    mov         eax,dword ptr [ebp-10]
 005D4692    cmp         byte ptr [eax+57],0
>005D4696    je          005D46A9
 005D4698    mov         eax,dword ptr [ebp+8]
 005D469B    push        eax
 005D469C    mov         eax,dword ptr [ebp-10]
 005D469F    call        005D4618
 005D46A4    pop         ecx
 005D46A5    test        al,al
>005D46A7    jne         005D46CC
 005D46A9    mov         eax,dword ptr [ebp-10]
 005D46AC    mov         edx,dword ptr ds:[5EE6AC];TWinControl
 005D46B2    call        @IsClass
 005D46B7    test        al,al
>005D46B9    je          005D46D2
 005D46BB    mov         eax,dword ptr [ebp+8]
 005D46BE    push        eax
 005D46BF    mov         eax,dword ptr [ebp-10]
 005D46C2    call        005D4654
 005D46C7    pop         ecx
 005D46C8    test        al,al
>005D46CA    je          005D46D2
 005D46CC    mov         byte ptr [ebp-5],1
>005D46D0    jmp         005D46DE
 005D46D2    inc         dword ptr [ebp-0C]
 005D46D5    dec         dword ptr [ebp-14]
>005D46D8    jne         005D4681
 005D46DA    mov         byte ptr [ebp-5],0
 005D46DE    mov         al,byte ptr [ebp-5]
 005D46E1    mov         esp,ebp
 005D46E3    pop         ebp
 005D46E4    ret
end;*}

//005D46E8
{*procedure TCustomForm.CMActionExecute(?:?);
begin
 005D46E8    push        ebp
 005D46E9    mov         ebp,esp
 005D46EB    add         esp,0FFFFFFF8
 005D46EE    mov         dword ptr [ebp-4],edx
 005D46F1    mov         dword ptr [ebp-8],eax
 005D46F4    mov         eax,dword ptr [ebp-8]
 005D46F7    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D46FB    jne         005D4743
 005D46FD    mov         eax,dword ptr [ebp-8]
 005D4700    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>005D4707    je          005D4743
 005D4709    push        ebp
 005D470A    mov         eax,dword ptr [ebp-8]
 005D470D    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D4713    call        005D4618
 005D4718    pop         ecx
 005D4719    test        al,al
>005D471B    jne         005D4739
 005D471D    push        ebp
 005D471E    mov         eax,dword ptr [ebp-8]
 005D4721    call        005D4618
 005D4726    pop         ecx
 005D4727    test        al,al
>005D4729    jne         005D4739
 005D472B    push        ebp
 005D472C    mov         eax,dword ptr [ebp-8]
 005D472F    call        005D4654
 005D4734    pop         ecx
 005D4735    test        al,al
>005D4737    je          005D4743
 005D4739    mov         eax,dword ptr [ebp-4]
 005D473C    mov         dword ptr [eax+0C],1
 005D4743    pop         ecx
 005D4744    pop         ecx
 005D4745    pop         ebp
 005D4746    ret
end;*}

//005D4748
{*function sub_005D4748(?:TWinControl; ?:?):?;
begin
 005D4748    push        ebp
 005D4749    mov         ebp,esp
 005D474B    add         esp,0FFFFFFF8
 005D474E    push        esi
 005D474F    mov         dword ptr [ebp-4],eax
 005D4752    cmp         dword ptr [ebp-4],0
>005D4756    je          005D4771
 005D4758    mov         eax,dword ptr [ebp+8]
 005D475B    mov         edx,dword ptr [eax-4]
 005D475E    mov         edx,dword ptr [edx+8]
 005D4761    mov         eax,dword ptr [ebp-4]
 005D4764    mov         si,0FFF0
 005D4768    call        @CallDynaInst
 005D476D    test        al,al
>005D476F    jne         005D4775
 005D4771    xor         eax,eax
>005D4773    jmp         005D4777
 005D4775    mov         al,1
 005D4777    mov         byte ptr [ebp-5],al
 005D477A    mov         al,byte ptr [ebp-5]
 005D477D    pop         esi
 005D477E    pop         ecx
 005D477F    pop         ecx
 005D4780    pop         ebp
 005D4781    ret
end;*}

//005D4784
{*function sub_005D4784(?:TCustomForm; ?:?):?;
begin
 005D4784    push        ebp
 005D4785    mov         ebp,esp
 005D4787    add         esp,0FFFFFFEC
 005D478A    mov         dword ptr [ebp-4],eax
 005D478D    mov         eax,dword ptr [ebp-4]
 005D4790    cmp         byte ptr [eax+1A6],0
>005D4797    je          005D480A
 005D4799    mov         eax,dword ptr [ebp-4]
 005D479C    call        005F7DC4
 005D47A1    dec         eax
 005D47A2    test        eax,eax
>005D47A4    jl          005D480A
 005D47A6    inc         eax
 005D47A7    mov         dword ptr [ebp-14],eax
 005D47AA    mov         dword ptr [ebp-0C],0
 005D47B1    mov         edx,dword ptr [ebp-0C]
 005D47B4    mov         eax,dword ptr [ebp-4]
 005D47B7    call        005F7D58
 005D47BC    mov         dword ptr [ebp-10],eax
 005D47BF    mov         eax,dword ptr [ebp-10]
 005D47C2    cmp         byte ptr [eax+57],0
>005D47C6    je          005D47D9
 005D47C8    mov         eax,dword ptr [ebp+8]
 005D47CB    push        eax
 005D47CC    mov         eax,dword ptr [ebp-10]
 005D47CF    call        005D4748
 005D47D4    pop         ecx
 005D47D5    test        al,al
>005D47D7    jne         005D47FC
 005D47D9    mov         eax,dword ptr [ebp-10]
 005D47DC    mov         edx,dword ptr ds:[5EE6AC];TWinControl
 005D47E2    call        @IsClass
 005D47E7    test        al,al
>005D47E9    je          005D4802
 005D47EB    mov         eax,dword ptr [ebp+8]
 005D47EE    push        eax
 005D47EF    mov         eax,dword ptr [ebp-10]
 005D47F2    call        005D4784
 005D47F7    pop         ecx
 005D47F8    test        al,al
>005D47FA    je          005D4802
 005D47FC    mov         byte ptr [ebp-5],1
>005D4800    jmp         005D480E
 005D4802    inc         dword ptr [ebp-0C]
 005D4805    dec         dword ptr [ebp-14]
>005D4808    jne         005D47B1
 005D480A    mov         byte ptr [ebp-5],0
 005D480E    mov         al,byte ptr [ebp-5]
 005D4811    mov         esp,ebp
 005D4813    pop         ebp
 005D4814    ret
end;*}

//005D4818
{*procedure TCustomForm.CMActionUpdate(?:?);
begin
 005D4818    push        ebp
 005D4819    mov         ebp,esp
 005D481B    add         esp,0FFFFFFF8
 005D481E    mov         dword ptr [ebp-4],edx
 005D4821    mov         dword ptr [ebp-8],eax
 005D4824    mov         eax,dword ptr [ebp-8]
 005D4827    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D482B    jne         005D4873
 005D482D    mov         eax,dword ptr [ebp-8]
 005D4830    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>005D4837    je          005D4873
 005D4839    push        ebp
 005D483A    mov         eax,dword ptr [ebp-8]
 005D483D    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 005D4843    call        005D4748
 005D4848    pop         ecx
 005D4849    test        al,al
>005D484B    jne         005D4869
 005D484D    push        ebp
 005D484E    mov         eax,dword ptr [ebp-8]
 005D4851    call        005D4748
 005D4856    pop         ecx
 005D4857    test        al,al
>005D4859    jne         005D4869
 005D485B    push        ebp
 005D485C    mov         eax,dword ptr [ebp-8]
 005D485F    call        005D4784
 005D4864    pop         ecx
 005D4865    test        al,al
>005D4867    je          005D4873
 005D4869    mov         eax,dword ptr [ebp-4]
 005D486C    mov         dword ptr [eax+0C],1
 005D4873    pop         ecx
 005D4874    pop         ecx
 005D4875    pop         ebp
 005D4876    ret
end;*}

//005D4878
{*function sub_005D4878(?:?):?;
begin
 005D4878    push        ebp
 005D4879    mov         ebp,esp
 005D487B    add         esp,0FFFFFFF4
 005D487E    mov         eax,dword ptr [ebp+8]
 005D4881    mov         eax,dword ptr [eax-4]
 005D4884    cmp         dword ptr [eax+2E8],0
>005D488B    je          005D48DD
 005D488D    mov         eax,dword ptr [ebp+8]
 005D4890    mov         eax,dword ptr [eax-4]
 005D4893    mov         eax,dword ptr [eax+2E8]
 005D4899    mov         eax,dword ptr [eax+8]
 005D489C    dec         eax
 005D489D    test        eax,eax
>005D489F    jl          005D48DD
 005D48A1    inc         eax
 005D48A2    mov         dword ptr [ebp-0C],eax
 005D48A5    mov         dword ptr [ebp-8],0
 005D48AC    mov         eax,dword ptr [ebp+8]
 005D48AF    mov         eax,dword ptr [eax-4]
 005D48B2    mov         eax,dword ptr [eax+2E8]
 005D48B8    mov         edx,dword ptr [ebp-8]
 005D48BB    call        TList.Get
 005D48C0    mov         edx,dword ptr [ebp+8]
 005D48C3    mov         edx,dword ptr [edx-8]
 005D48C6    call        0058E1C0
 005D48CB    test        al,al
>005D48CD    je          005D48D5
 005D48CF    mov         byte ptr [ebp-1],1
>005D48D3    jmp         005D48E1
 005D48D5    inc         dword ptr [ebp-8]
 005D48D8    dec         dword ptr [ebp-0C]
>005D48DB    jne         005D48AC
 005D48DD    mov         byte ptr [ebp-1],0
 005D48E1    mov         al,byte ptr [ebp-1]
 005D48E4    mov         esp,ebp
 005D48E6    pop         ebp
 005D48E7    ret
end;*}

//005D48E8
{*procedure TCustomForm.sub_005D48E8(?:?);
begin
 005D48E8    push        ebp
 005D48E9    mov         ebp,esp
 005D48EB    add         esp,0FFFFFFF4
 005D48EE    push        ebx
 005D48EF    push        esi
 005D48F0    mov         dword ptr [ebp-8],edx
 005D48F3    mov         dword ptr [ebp-4],eax
 005D48F6    mov         byte ptr [ebp-9],0
 005D48FA    mov         eax,dword ptr [ebp-4]
 005D48FD    cmp         word ptr [eax+2C2],0;TCustomForm.?f2C2:word
>005D4905    je          005D491C
 005D4907    lea         ecx,[ebp-9]
 005D490A    mov         edx,dword ptr [ebp-8]
 005D490D    mov         ebx,dword ptr [ebp-4]
 005D4910    mov         eax,dword ptr [ebx+2C4];TCustomForm.?f2C4:dword
 005D4916    call        dword ptr [ebx+2C0];TCustomForm.FOnShortCut
 005D491C    cmp         byte ptr [ebp-9],0
>005D4920    jne         005D4965
 005D4922    mov         eax,dword ptr [ebp-4]
 005D4925    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>005D492C    je          005D4956
 005D492E    mov         eax,dword ptr [ebp-4]
 005D4931    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D4937    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>005D493B    je          005D4956
 005D493D    mov         edx,dword ptr [ebp-8]
 005D4940    mov         eax,dword ptr [ebp-4]
 005D4943    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 005D4949    mov         si,0FFEF
 005D494D    call        @CallDynaInst;TMenu.sub_005A786C
 005D4952    test        al,al
>005D4954    jne         005D4965
 005D4956    push        ebp
 005D4957    call        005D4878
 005D495C    pop         ecx
 005D495D    test        al,al
>005D495F    jne         005D4965
 005D4961    xor         eax,eax
>005D4963    jmp         005D4967
 005D4965    mov         al,1
 005D4967    mov         byte ptr [ebp-9],al
 005D496A    mov         al,byte ptr [ebp-9]
 005D496D    pop         esi
 005D496E    pop         ebx
 005D496F    mov         esp,ebp
 005D4971    pop         ebp
 005D4972    ret
end;*}

//005D4974
{*function sub_005D4974(?:?; ?:?):?;
begin
 005D4974    push        ebp
 005D4975    mov         ebp,esp
 005D4977    push        ecx
 005D4978    mov         eax,dword ptr [ebp+8]
 005D497B    cmp         dword ptr [eax+250],0
>005D4982    je          005D499E
 005D4984    mov         eax,dword ptr [ebp+10]
 005D4987    push        eax
 005D4988    mov         eax,dword ptr [ebp+0C]
 005D498B    push        eax
 005D498C    mov         eax,dword ptr [ebp+8]
 005D498F    mov         eax,dword ptr [eax+250]
 005D4995    push        eax
 005D4996    mov         eax,dword ptr [eax]
 005D4998    call        dword ptr [eax]
 005D499A    test        eax,eax
>005D499C    je          005D49B4
 005D499E    mov         eax,dword ptr [ebp+10]
 005D49A1    push        eax
 005D49A2    mov         eax,dword ptr [ebp+0C]
 005D49A5    push        eax
 005D49A6    mov         eax,dword ptr [ebp+8]
 005D49A9    push        eax
 005D49AA    call        00650DC0
 005D49AF    mov         dword ptr [ebp-4],eax
>005D49B2    jmp         005D49B9
 005D49B4    xor         eax,eax
 005D49B6    mov         dword ptr [ebp-4],eax
 005D49B9    mov         eax,dword ptr [ebp-4]
 005D49BC    pop         ecx
 005D49BD    pop         ebp
 005D49BE    ret         0C
end;*}

//005D49C4
{*procedure TCustomForm.sub_005D49C4(?:?);
begin
 005D49C4    push        ebp
 005D49C5    mov         ebp,esp
 005D49C7    add         esp,0FFFFFFF8
 005D49CA    mov         dword ptr [ebp-8],edx
 005D49CD    mov         dword ptr [ebp-4],eax
 005D49D0    mov         eax,dword ptr [ebp-4]
 005D49D3    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>005D49DA    je          005D4A04
 005D49DC    mov         eax,dword ptr [ebp-8]
 005D49DF    mov         eax,dword ptr [eax+8]
 005D49E2    push        eax
 005D49E3    mov         ecx,dword ptr [ebp-8]
 005D49E6    mov         ecx,dword ptr [ecx+4]
 005D49E9    mov         edx,0B043
 005D49EE    mov         eax,dword ptr [ebp-4]
 005D49F1    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 005D49F7    call        005F4FA8
 005D49FC    mov         edx,dword ptr [ebp-8]
 005D49FF    mov         dword ptr [edx+0C],eax
>005D4A02    jmp         005D4A0F
 005D4A04    mov         edx,dword ptr [ebp-8]
 005D4A07    mov         eax,dword ptr [ebp-4]
 005D4A0A    call        TControl.sub_005F3E6C
 005D4A0F    pop         ecx
 005D4A10    pop         ecx
 005D4A11    pop         ebp
 005D4A12    ret
end;*}

//005D4A14
procedure TCustomForm.sub_005D4A14;
begin
{*
 005D4A14    push        ebp
 005D4A15    mov         ebp,esp
 005D4A17    add         esp,0FFFFFFF8
 005D4A1A    mov         dword ptr [ebp-4],eax
 005D4A1D    mov         edx,dword ptr [ebp-4]
 005D4A20    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D4A25    call        TApplication.HandleException
 005D4A2A    mov         byte ptr [ebp-5],1
 005D4A2E    mov         al,byte ptr [ebp-5]
 005D4A31    pop         ecx
 005D4A32    pop         ecx
 005D4A33    pop         ebp
 005D4A34    ret
*}
end;

//005D4A38
procedure sub_005D4A38(?:TCustomForm);
begin
{*
 005D4A38    push        ebp
 005D4A39    mov         ebp,esp
 005D4A3B    add         esp,0FFFFFFF8
 005D4A3E    mov         dword ptr [ebp-4],eax
 005D4A41    mov         eax,dword ptr [ebp-4]
 005D4A44    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D4A48    jne         005D4B2D
 005D4A4E    cmp         dword ptr ds:[6E3FD4],0;gvar_006E3FD4
>005D4A55    je          005D4B2D
 005D4A5B    mov         eax,dword ptr [ebp-4]
 005D4A5E    call        TWinControl.HandleAllocated
 005D4A63    test        al,al
>005D4A65    je          005D4B2D
 005D4A6B    push        0EC
 005D4A6D    mov         eax,dword ptr [ebp-4]
 005D4A70    call        TWinControl.GetHandle
 005D4A75    push        eax
 005D4A76    call        USER32.GetWindowLongA
 005D4A7B    mov         dword ptr [ebp-8],eax
 005D4A7E    mov         eax,dword ptr [ebp-4]
 005D4A81    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>005D4A88    jne         005D4A96
 005D4A8A    mov         eax,dword ptr [ebp-4]
 005D4A8D    cmp         byte ptr [eax+2E2],0;TCustomForm.FTransparentColor:Boolean
>005D4A94    je          005D4AFD
 005D4A96    test        byte ptr [ebp-6],8
>005D4A9A    jne         005D4AB5
 005D4A9C    mov         eax,dword ptr [ebp-8]
 005D4A9F    or          eax,80000
 005D4AA4    push        eax
 005D4AA5    push        0EC
 005D4AA7    mov         eax,dword ptr [ebp-4]
 005D4AAA    call        TWinControl.GetHandle
 005D4AAF    push        eax
 005D4AB0    call        USER32.SetWindowLongA
 005D4AB5    mov         eax,dword ptr [ebp-4]
 005D4AB8    movzx       eax,byte ptr [eax+2E0];TCustomForm.FAlphaBlend:Boolean
 005D4ABF    mov         eax,dword ptr [eax*4+6E4064]
 005D4AC6    mov         edx,dword ptr [ebp-4]
 005D4AC9    movzx       edx,byte ptr [edx+2E2];TCustomForm.FTransparentColor:Boolean
 005D4AD0    or          eax,dword ptr [edx*4+6E406C]
 005D4AD7    push        eax
 005D4AD8    mov         eax,dword ptr [ebp-4]
 005D4ADB    mov         al,byte ptr [eax+2E1];TCustomForm.FAlphaBlendValue:byte
 005D4AE1    push        eax
 005D4AE2    mov         eax,dword ptr [ebp-4]
 005D4AE5    mov         eax,dword ptr [eax+2E4];TCustomForm.FTransparentColorValue:TColor
 005D4AEB    push        eax
 005D4AEC    mov         eax,dword ptr [ebp-4]
 005D4AEF    call        TWinControl.GetHandle
 005D4AF4    push        eax
 005D4AF5    call        dword ptr ds:[6E3FD4]
>005D4AFB    jmp         005D4B2D
 005D4AFD    mov         eax,dword ptr [ebp-8]
 005D4B00    and         eax,0FFF7FFFF
 005D4B05    push        eax
 005D4B06    push        0EC
 005D4B08    mov         eax,dword ptr [ebp-4]
 005D4B0B    call        TWinControl.GetHandle
 005D4B10    push        eax
 005D4B11    call        USER32.SetWindowLongA
 005D4B16    push        485
 005D4B1B    push        0
 005D4B1D    push        0
 005D4B1F    mov         eax,dword ptr [ebp-4]
 005D4B22    call        TWinControl.GetHandle
 005D4B27    push        eax
 005D4B28    call        USER32.RedrawWindow
 005D4B2D    pop         ecx
 005D4B2E    pop         ecx
 005D4B2F    pop         ebp
 005D4B30    ret
*}
end;

//005D4B34
procedure TForm.SetAlphaBlend(Value:Boolean);
begin
{*
 005D4B34    push        ebp
 005D4B35    mov         ebp,esp
 005D4B37    add         esp,0FFFFFFF8
 005D4B3A    mov         byte ptr [ebp-5],dl
 005D4B3D    mov         dword ptr [ebp-4],eax
 005D4B40    mov         eax,dword ptr [ebp-4]
 005D4B43    mov         al,byte ptr [eax+2E0];TForm.FAlphaBlend:Boolean
 005D4B49    cmp         al,byte ptr [ebp-5]
>005D4B4C    je          005D4B62
 005D4B4E    mov         al,byte ptr [ebp-5]
 005D4B51    mov         edx,dword ptr [ebp-4]
 005D4B54    mov         byte ptr [edx+2E0],al;TForm.FAlphaBlend:Boolean
 005D4B5A    mov         eax,dword ptr [ebp-4]
 005D4B5D    call        005D4A38
 005D4B62    pop         ecx
 005D4B63    pop         ecx
 005D4B64    pop         ebp
 005D4B65    ret
*}
end;

//005D4B68
procedure TForm.SetAlphaBlendValue(Value:Byte);
begin
{*
 005D4B68    push        ebp
 005D4B69    mov         ebp,esp
 005D4B6B    add         esp,0FFFFFFF8
 005D4B6E    mov         byte ptr [ebp-5],dl
 005D4B71    mov         dword ptr [ebp-4],eax
 005D4B74    mov         eax,dword ptr [ebp-4]
 005D4B77    mov         al,byte ptr [eax+2E1];TForm.FAlphaBlendValue:byte
 005D4B7D    cmp         al,byte ptr [ebp-5]
>005D4B80    je          005D4B96
 005D4B82    mov         al,byte ptr [ebp-5]
 005D4B85    mov         edx,dword ptr [ebp-4]
 005D4B88    mov         byte ptr [edx+2E1],al;TForm.FAlphaBlendValue:byte
 005D4B8E    mov         eax,dword ptr [ebp-4]
 005D4B91    call        005D4A38
 005D4B96    pop         ecx
 005D4B97    pop         ecx
 005D4B98    pop         ebp
 005D4B99    ret
*}
end;

//005D4B9C
procedure TForm.SetTransparentColorValue(Value:TColor);
begin
{*
 005D4B9C    push        ebp
 005D4B9D    mov         ebp,esp
 005D4B9F    add         esp,0FFFFFFF8
 005D4BA2    mov         dword ptr [ebp-8],edx
 005D4BA5    mov         dword ptr [ebp-4],eax
 005D4BA8    mov         eax,dword ptr [ebp-4]
 005D4BAB    mov         eax,dword ptr [eax+2E4];TForm.FTransparentColorValue:TColor
 005D4BB1    cmp         eax,dword ptr [ebp-8]
>005D4BB4    je          005D4BCA
 005D4BB6    mov         eax,dword ptr [ebp-8]
 005D4BB9    mov         edx,dword ptr [ebp-4]
 005D4BBC    mov         dword ptr [edx+2E4],eax;TForm.FTransparentColorValue:TColor
 005D4BC2    mov         eax,dword ptr [ebp-4]
 005D4BC5    call        005D4A38
 005D4BCA    pop         ecx
 005D4BCB    pop         ecx
 005D4BCC    pop         ebp
 005D4BCD    ret
*}
end;

//005D4BD0
procedure TForm.SetTransparentColor(Value:Boolean);
begin
{*
 005D4BD0    push        ebp
 005D4BD1    mov         ebp,esp
 005D4BD3    add         esp,0FFFFFFF8
 005D4BD6    mov         byte ptr [ebp-5],dl
 005D4BD9    mov         dword ptr [ebp-4],eax
 005D4BDC    mov         eax,dword ptr [ebp-4]
 005D4BDF    mov         al,byte ptr [eax+2E2];TForm.FTransparentColor:Boolean
 005D4BE5    cmp         al,byte ptr [ebp-5]
>005D4BE8    je          005D4BFE
 005D4BEA    mov         al,byte ptr [ebp-5]
 005D4BED    mov         edx,dword ptr [ebp-4]
 005D4BF0    mov         byte ptr [edx+2E2],al;TForm.FTransparentColor:Boolean
 005D4BF6    mov         eax,dword ptr [ebp-4]
 005D4BF9    call        005D4A38
 005D4BFE    pop         ecx
 005D4BFF    pop         ecx
 005D4C00    pop         ebp
 005D4C01    ret
*}
end;

//005D4C04
{*procedure sub_005D4C04(?:TCustomForm; ?:?);
begin
 005D4C04    push        ebp
 005D4C05    mov         ebp,esp
 005D4C07    add         esp,0FFFFFFF8
 005D4C0A    mov         dword ptr [ebp-8],edx
 005D4C0D    mov         dword ptr [ebp-4],eax
 005D4C10    mov         eax,dword ptr [ebp-4]
 005D4C13    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005D4C17    jne         005D4C44
 005D4C19    cmp         dword ptr ds:[6E3FD4],0;gvar_006E3FD4
>005D4C20    je          005D4C44
 005D4C22    mov         eax,dword ptr [ebp-4]
 005D4C25    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>005D4C2C    jne         005D4C3A
 005D4C2E    mov         eax,dword ptr [ebp-4]
 005D4C31    cmp         byte ptr [eax+2E2],0;TCustomForm.FTransparentColor:Boolean
>005D4C38    je          005D4C44
 005D4C3A    mov         eax,dword ptr [ebp-8]
 005D4C3D    or          dword ptr [eax+8],80000
 005D4C44    pop         ecx
 005D4C45    pop         ecx
 005D4C46    pop         ebp
 005D4C47    ret
end;*}

//005D4C48
{*procedure sub_005D4C48(?:?);
begin
 005D4C48    push        ebp
 005D4C49    mov         ebp,esp
 005D4C4B    push        ecx
 005D4C4C    mov         dword ptr [ebp-4],eax
 005D4C4F    mov         eax,dword ptr [ebp-4]
 005D4C52    cmp         byte ptr [eax+22F],2
>005D4C59    jne         005D4C7F
 005D4C5B    mov         eax,dword ptr [ebp-4]
 005D4C5E    cmp         dword ptr [eax+254],0
>005D4C65    je          005D4C7F
 005D4C67    push        0
 005D4C69    push        0
 005D4C6B    push        227
 005D4C70    mov         eax,dword ptr [ebp-4]
 005D4C73    mov         eax,dword ptr [eax+254]
 005D4C79    push        eax
 005D4C7A    call        USER32.SendMessageA
 005D4C7F    pop         ecx
 005D4C80    pop         ebp
 005D4C81    ret
end;*}

//005D4C84
{*procedure sub_005D4C84(?:?);
begin
 005D4C84    push        ebp
 005D4C85    mov         ebp,esp
 005D4C87    push        ecx
 005D4C88    mov         dword ptr [ebp-4],eax
 005D4C8B    mov         eax,dword ptr [ebp-4]
 005D4C8E    cmp         byte ptr [eax+22F],2
>005D4C95    jne         005D4CBB
 005D4C97    mov         eax,dword ptr [ebp-4]
 005D4C9A    cmp         dword ptr [eax+254],0
>005D4CA1    je          005D4CBB
 005D4CA3    push        0
 005D4CA5    push        0
 005D4CA7    push        228
 005D4CAC    mov         eax,dword ptr [ebp-4]
 005D4CAF    mov         eax,dword ptr [eax+254]
 005D4CB5    push        eax
 005D4CB6    call        USER32.SendMessageA
 005D4CBB    pop         ecx
 005D4CBC    pop         ebp
 005D4CBD    ret
end;*}

//005D4CC0
constructor TCustomDockForm.Create(AOwner:TComponent);
begin
{*
 005D4CC0    push        ebp
 005D4CC1    mov         ebp,esp
 005D4CC3    add         esp,0FFFFFFF4
 005D4CC6    push        ebx
 005D4CC7    test        dl,dl
>005D4CC9    je          005D4CD3
 005D4CCB    add         esp,0FFFFFFF0
 005D4CCE    call        @ClassCreate
 005D4CD3    mov         dword ptr [ebp-0C],ecx
 005D4CD6    mov         byte ptr [ebp-5],dl
 005D4CD9    mov         dword ptr [ebp-4],eax
 005D4CDC    push        0
 005D4CDE    mov         ecx,dword ptr [ebp-0C]
 005D4CE1    xor         edx,edx
 005D4CE3    mov         eax,dword ptr [ebp-4]
 005D4CE6    mov         ebx,dword ptr [eax]
 005D4CE8    call        dword ptr [ebx+0DC];TCustomDockForm.sub_005CF138
 005D4CEE    xor         edx,edx
 005D4CF0    mov         eax,dword ptr [ebp-4]
 005D4CF3    call        TForm.SetAutoScroll
 005D4CF8    mov         dl,5
 005D4CFA    mov         eax,dword ptr [ebp-4]
 005D4CFD    call        TForm.SetBorderStyle
 005D4D02    mov         dl,1
 005D4D04    mov         eax,dword ptr [ebp-4]
 005D4D07    call        TChart.SetDockSite
 005D4D0C    mov         dl,3
 005D4D0E    mov         eax,dword ptr [ebp-4]
 005D4D11    call        TForm.SetFormStyle
 005D4D16    mov         eax,dword ptr [ebp-4]
 005D4D19    cmp         byte ptr [ebp-5],0
>005D4D1D    je          005D4D2E
 005D4D1F    call        @AfterConstruction
 005D4D24    pop         dword ptr fs:[0]
 005D4D2B    add         esp,0C
 005D4D2E    mov         eax,dword ptr [ebp-4]
 005D4D31    pop         ebx
 005D4D32    mov         esp,ebp
 005D4D34    pop         ebp
 005D4D35    ret
*}
end;

//005D4D38
{*procedure TCustomDockForm.sub_005D4D38(?:?; ?:?);
begin
 005D4D38    push        ebp
 005D4D39    mov         ebp,esp
 005D4D3B    add         esp,0FFFFFFE8
 005D4D3E    push        ebx
 005D4D3F    xor         ebx,ebx
 005D4D41    mov         dword ptr [ebp-10],ebx
 005D4D44    mov         dword ptr [ebp-0C],ecx
 005D4D47    mov         dword ptr [ebp-8],edx
 005D4D4A    mov         dword ptr [ebp-4],eax
 005D4D4D    xor         eax,eax
 005D4D4F    push        ebp
 005D4D50    push        5D4E21
 005D4D55    push        dword ptr fs:[eax]
 005D4D58    mov         dword ptr fs:[eax],esp
 005D4D5B    mov         eax,dword ptr [ebp-4]
 005D4D5E    call        005FA394
 005D4D63    dec         eax
>005D4D64    jne         005D4DE0
 005D4D66    mov         eax,dword ptr [ebp-8]
 005D4D69    call        005F35D4
 005D4D6E    mov         ecx,eax
 005D4D70    inc         ecx
 005D4D71    lea         eax,[ebp-10]
 005D4D74    xor         edx,edx
 005D4D76    call        @LStrFromPCharLen
 005D4D7B    mov         eax,dword ptr [ebp-10]
 005D4D7E    call        @LStrLen
 005D4D83    push        eax
 005D4D84    mov         eax,dword ptr [ebp-10]
 005D4D87    call        @LStrToPChar
 005D4D8C    mov         edx,eax
 005D4D8E    mov         eax,dword ptr [ebp-8]
 005D4D91    pop         ecx
 005D4D92    call        005F35F8
 005D4D97    mov         eax,dword ptr [ebp-10]
 005D4D9A    call        @LStrLen
 005D4D9F    test        eax,eax
>005D4DA1    jle         005D4DD5
 005D4DA3    mov         dword ptr [ebp-18],eax
 005D4DA6    mov         dword ptr [ebp-14],1
 005D4DAD    mov         eax,dword ptr [ebp-10]
 005D4DB0    mov         edx,dword ptr [ebp-14]
 005D4DB3    mov         al,byte ptr [eax+edx-1]
 005D4DB7    sub         al,0A
>005D4DB9    je          005D4DBF
 005D4DBB    sub         al,3
>005D4DBD    jne         005D4DCD
 005D4DBF    mov         edx,dword ptr [ebp-14]
 005D4DC2    dec         edx
 005D4DC3    lea         eax,[ebp-10]
 005D4DC6    call        @LStrSetLength
>005D4DCB    jmp         005D4DD5
 005D4DCD    inc         dword ptr [ebp-14]
 005D4DD0    dec         dword ptr [ebp-18]
>005D4DD3    jne         005D4DAD
 005D4DD5    mov         edx,dword ptr [ebp-10]
 005D4DD8    mov         eax,dword ptr [ebp-4]
 005D4DDB    call        TTabPage.SetCaption
 005D4DE0    mov         ecx,dword ptr [ebp-0C]
 005D4DE3    mov         edx,dword ptr [ebp-8]
 005D4DE6    mov         eax,dword ptr [ebp-4]
 005D4DE9    call        TWinControl.sub_005FA174
 005D4DEE    mov         dl,5
 005D4DF0    mov         eax,dword ptr [ebp-8]
 005D4DF3    call        TCCalendar.SetAlign
 005D4DF8    mov         eax,dword ptr [ebp-4]
 005D4DFB    test        byte ptr [eax+1C],1;TCustomDockForm.FComponentState:TComponentState
>005D4DFF    jne         005D4E0B
 005D4E01    mov         dl,1
 005D4E03    mov         eax,dword ptr [ebp-4]
 005D4E06    call        TCustomForm.SetVisible
 005D4E0B    xor         eax,eax
 005D4E0D    pop         edx
 005D4E0E    pop         ecx
 005D4E0F    pop         ecx
 005D4E10    mov         dword ptr fs:[eax],edx
 005D4E13    push        5D4E28
 005D4E18    lea         eax,[ebp-10]
 005D4E1B    call        @LStrClr
 005D4E20    ret
>005D4E21    jmp         @HandleFinally
>005D4E26    jmp         005D4E18
 005D4E28    pop         ebx
 005D4E29    mov         esp,ebp
 005D4E2B    pop         ebp
 005D4E2C    ret
end;*}

//005D4E30
{*procedure TCustomDockForm.sub_005D4E30(?:?);
begin
 005D4E30    push        ebp
 005D4E31    mov         ebp,esp
 005D4E33    add         esp,0FFFFFFF8
 005D4E36    mov         dword ptr [ebp-8],edx
 005D4E39    mov         dword ptr [ebp-4],eax
 005D4E3C    mov         edx,dword ptr [ebp-8]
 005D4E3F    mov         eax,dword ptr [ebp-4]
 005D4E42    call        TWinControl.sub_005FA194
 005D4E47    mov         eax,dword ptr [ebp-4]
 005D4E4A    call        005FA394
 005D4E4F    test        eax,eax
>005D4E51    jne         005D4E5B
 005D4E53    mov         eax,dword ptr [ebp-4]
 005D4E56    call        TCustomForm.Release
 005D4E5B    pop         ecx
 005D4E5C    pop         ecx
 005D4E5D    pop         ebp
 005D4E5E    ret
end;*}

//005D4E60
procedure TCustomDockForm.Loaded;
begin
{*
 005D4E60    push        ebp
 005D4E61    mov         ebp,esp
 005D4E63    add         esp,0FFFFFFE4
 005D4E66    push        esi
 005D4E67    mov         dword ptr [ebp-4],eax
 005D4E6A    mov         eax,dword ptr [ebp-4]
 005D4E6D    call        005F7DC4
 005D4E72    dec         eax
 005D4E73    test        eax,eax
>005D4E75    jl          005D4EB1
 005D4E77    inc         eax
 005D4E78    mov         dword ptr [ebp-0C],eax
 005D4E7B    mov         dword ptr [ebp-8],0
 005D4E82    lea         edx,[ebp-1C]
 005D4E85    mov         eax,dword ptr [ebp-4]
 005D4E88    mov         ecx,dword ptr [eax]
 005D4E8A    call        dword ptr [ecx+44];TCustomDockForm.sub_005CFD78
 005D4E8D    lea         eax,[ebp-1C]
 005D4E90    push        eax
 005D4E91    mov         edx,dword ptr [ebp-8]
 005D4E94    mov         eax,dword ptr [ebp-4]
 005D4E97    call        005F7D58
 005D4E9C    mov         edx,dword ptr [ebp-4]
 005D4E9F    pop         ecx
 005D4EA0    mov         si,0FFCC
 005D4EA4    call        @CallDynaInst
 005D4EA9    inc         dword ptr [ebp-8]
 005D4EAC    dec         dword ptr [ebp-0C]
>005D4EAF    jne         005D4E82
 005D4EB1    mov         eax,dword ptr [ebp-4]
 005D4EB4    call        TCustomForm.Loaded
 005D4EB9    pop         esi
 005D4EBA    mov         esp,ebp
 005D4EBC    pop         ebp
 005D4EBD    ret
*}
end;

//005D4EC0
{*procedure TCustomDockForm.sub_005D4EC0(?:?; ?:?; ?:?; ?:?);
begin
 005D4EC0    push        ebp
 005D4EC1    mov         ebp,esp
 005D4EC3    add         esp,0FFFFFFEC
 005D4EC6    push        esi
 005D4EC7    push        edi
 005D4EC8    mov         esi,dword ptr [ebp+0C]
 005D4ECB    lea         edi,[ebp-14]
 005D4ECE    movs        dword ptr [edi],dword ptr [esi]
 005D4ECF    movs        dword ptr [edi],dword ptr [esi]
 005D4ED0    mov         dword ptr [ebp-0C],ecx
 005D4ED3    mov         dword ptr [ebp-8],edx
 005D4ED6    mov         dword ptr [ebp-4],eax
 005D4ED9    mov         eax,dword ptr [ebp-4]
 005D4EDC    call        005FA394
 005D4EE1    test        eax,eax
 005D4EE3    mov         eax,dword ptr [ebp+8]
 005D4EE6    sete        byte ptr [eax]
 005D4EE9    pop         edi
 005D4EEA    pop         esi
 005D4EEB    mov         esp,ebp
 005D4EED    pop         ebp
 005D4EEE    ret         8
end;*}

//005D4EF4
{*procedure TCustomDockForm.WMNCHitTest(?:?);
begin
 005D4EF4    push        ebp
 005D4EF5    mov         ebp,esp
 005D4EF7    add         esp,0FFFFFFF8
 005D4EFA    mov         dword ptr [ebp-8],edx
 005D4EFD    mov         dword ptr [ebp-4],eax
 005D4F00    mov         edx,dword ptr [ebp-8]
 005D4F03    mov         eax,dword ptr [ebp-4]
 005D4F06    call        TWinControl.WMNCHitTest
 005D4F0B    mov         eax,dword ptr [ebp-4]
 005D4F0E    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>005D4F12    jne         005D4F27
 005D4F14    mov         eax,dword ptr [ebp-8]
 005D4F17    cmp         dword ptr [eax+0C],1
>005D4F1B    jne         005D4F27
 005D4F1D    mov         eax,dword ptr [ebp-8]
 005D4F20    mov         dword ptr [eax+0C],2
 005D4F27    pop         ecx
 005D4F28    pop         ecx
 005D4F29    pop         ebp
 005D4F2A    ret
end;*}

//005D4F2C
{*procedure TCustomDockForm.WMNCLButtonDown(?:?);
begin
 005D4F2C    push        ebp
 005D4F2D    mov         ebp,esp
 005D4F2F    add         esp,0FFFFFFF8
 005D4F32    mov         dword ptr [ebp-8],edx
 005D4F35    mov         dword ptr [ebp-4],eax
 005D4F38    mov         eax,dword ptr [ebp-8]
 005D4F3B    cmp         dword ptr [eax+4],2
>005D4F3F    jne         005D4FD9
 005D4F45    mov         eax,dword ptr [ebp-4]
 005D4F48    cmp         byte ptr [eax+9B],1;TCustomDockForm.FDragKind:TDragKind
>005D4F4F    je          005D4FD9
 005D4F55    mov         eax,dword ptr [ebp-4]
 005D4F58    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>005D4F5C    jne         005D4FD9
 005D4F5E    mov         eax,dword ptr [ebp-4]
 005D4F61    call        TWinControl.GetHandle
 005D4F66    push        eax
 005D4F67    call        USER32.IsIconic
 005D4F6C    test        eax,eax
>005D4F6E    jne         005D4FD9
 005D4F70    mov         eax,dword ptr [ebp-4]
 005D4F73    call        005FA394
 005D4F78    test        eax,eax
>005D4F7A    jle         005D4FD9
 005D4F7C    push        7
 005D4F7E    push        0
 005D4F80    push        0
 005D4F82    push        0
 005D4F84    push        0
 005D4F86    push        0
 005D4F88    mov         eax,dword ptr [ebp-4]
 005D4F8B    call        TWinControl.GetHandle
 005D4F90    push        eax
 005D4F91    call        USER32.SetWindowPos
 005D4F96    mov         eax,dword ptr [ebp-8]
 005D4F99    mov         eax,dword ptr [eax+8]
 005D4F9C    push        eax
 005D4F9D    mov         eax,dword ptr [ebp-8]
 005D4FA0    mov         eax,dword ptr [eax+4]
 005D4FA3    push        eax
 005D4FA4    push        0A2
 005D4FA9    mov         eax,dword ptr [ebp-4]
 005D4FAC    call        TWinControl.GetHandle
 005D4FB1    push        eax
 005D4FB2    call        USER32.PostMessageA
 005D4FB7    mov         eax,dword ptr [ebp-4]
 005D4FBA    cmp         byte ptr [eax+22E],0;TCustomDockForm.FActive:Boolean
>005D4FC1    je          005D4FE4
 005D4FC3    xor         edx,edx
 005D4FC5    mov         eax,dword ptr [ebp-4]
 005D4FC8    call        005FA3C8
 005D4FCD    or          ecx,0FFFFFFFF
 005D4FD0    mov         dl,1
 005D4FD2    call        005F4150
>005D4FD7    jmp         005D4FE4
 005D4FD9    mov         edx,dword ptr [ebp-8]
 005D4FDC    mov         eax,dword ptr [ebp-4]
 005D4FDF    call        TCustomForm.WMNCLButtonDown
 005D4FE4    pop         ecx
 005D4FE5    pop         ecx
 005D4FE6    pop         ebp
 005D4FE7    ret
end;*}

//005D4FE8
{*procedure TCustomDockForm.CMControlLIstChange(?:?);
begin
 005D4FE8    push        ebp
 005D4FE9    mov         ebp,esp
 005D4FEB    add         esp,0FFFFFFE8
 005D4FEE    push        esi
 005D4FEF    mov         dword ptr [ebp-8],edx
 005D4FF2    mov         dword ptr [ebp-4],eax
 005D4FF5    mov         edx,dword ptr [ebp-8]
 005D4FF8    mov         eax,dword ptr [ebp-4]
 005D4FFB    call        TWinControl.CMControlLIstChange
 005D5000    mov         eax,dword ptr [ebp-8]
 005D5003    cmp         dword ptr [eax+8],0
>005D5007    jne         005D5053
 005D5009    mov         eax,dword ptr [ebp-8]
 005D500C    mov         eax,dword ptr [eax+4]
 005D500F    push        eax
 005D5010    xor         ecx,ecx
 005D5012    mov         edx,0B039
 005D5017    mov         eax,dword ptr [ebp-4]
 005D501A    call        005F4FA8
 005D501F    mov         eax,dword ptr [ebp-8]
 005D5022    mov         eax,dword ptr [eax+4]
 005D5025    mov         eax,dword ptr [eax+0A0]
 005D502B    cmp         eax,dword ptr [ebp-4]
>005D502E    jne         005D5053
 005D5030    lea         edx,[ebp-18]
 005D5033    mov         eax,dword ptr [ebp-8]
 005D5036    mov         eax,dword ptr [eax+4]
 005D5039    call        005F2E0C
 005D503E    lea         ecx,[ebp-18]
 005D5041    mov         eax,dword ptr [ebp-8]
 005D5044    mov         eax,dword ptr [eax+4]
 005D5047    or          edx,0FFFFFFFF
 005D504A    mov         si,0FFCC
 005D504E    call        @CallDynaInst
 005D5053    pop         esi
 005D5054    mov         esp,ebp
 005D5056    pop         ebp
 005D5057    ret
end;*}

//005D5058
{*procedure TCustomDockForm.sub_005D5058(?:?);
begin
 005D5058    push        ebp
 005D5059    mov         ebp,esp
 005D505B    add         esp,0FFFFFFEC
 005D505E    xor         ecx,ecx
 005D5060    mov         dword ptr [ebp-0C],ecx
 005D5063    mov         dword ptr [ebp-8],edx
 005D5066    mov         dword ptr [ebp-4],eax
 005D5069    xor         eax,eax
 005D506B    push        ebp
 005D506C    push        5D5146
 005D5071    push        dword ptr fs:[eax]
 005D5074    mov         dword ptr fs:[eax],esp
 005D5077    mov         edx,dword ptr [ebp-8]
 005D507A    mov         eax,dword ptr [ebp-4]
 005D507D    mov         ecx,dword ptr [eax]
 005D507F    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 005D5082    mov         eax,dword ptr [ebp-8]
 005D5085    mov         eax,dword ptr [eax+8]
 005D5088    mov         eax,dword ptr [eax]
 005D508A    sub         eax,0C
>005D508D    je          005D50B0
 005D508F    sub         eax,0AFFF
>005D5094    jne         005D5130
 005D509A    mov         eax,dword ptr [ebp-8]
 005D509D    mov         eax,dword ptr [eax+4]
 005D50A0    mov         dl,byte ptr [eax+57]
 005D50A3    mov         eax,dword ptr [ebp-4]
 005D50A6    call        TCustomForm.SetVisible
>005D50AB    jmp         005D5130
 005D50B0    mov         eax,dword ptr [ebp-8]
 005D50B3    mov         eax,dword ptr [eax+4]
 005D50B6    call        005F35D4
 005D50BB    mov         ecx,eax
 005D50BD    inc         ecx
 005D50BE    lea         eax,[ebp-0C]
 005D50C1    xor         edx,edx
 005D50C3    call        @LStrFromPCharLen
 005D50C8    mov         eax,dword ptr [ebp-0C]
 005D50CB    call        @LStrLen
 005D50D0    push        eax
 005D50D1    mov         eax,dword ptr [ebp-0C]
 005D50D4    call        @LStrToPChar
 005D50D9    mov         edx,eax
 005D50DB    mov         eax,dword ptr [ebp-8]
 005D50DE    mov         eax,dword ptr [eax+4]
 005D50E1    pop         ecx
 005D50E2    call        005F35F8
 005D50E7    mov         eax,dword ptr [ebp-0C]
 005D50EA    call        @LStrLen
 005D50EF    test        eax,eax
>005D50F1    jle         005D5125
 005D50F3    mov         dword ptr [ebp-14],eax
 005D50F6    mov         dword ptr [ebp-10],1
 005D50FD    mov         eax,dword ptr [ebp-0C]
 005D5100    mov         edx,dword ptr [ebp-10]
 005D5103    mov         al,byte ptr [eax+edx-1]
 005D5107    sub         al,0A
>005D5109    je          005D510F
 005D510B    sub         al,3
>005D510D    jne         005D511D
 005D510F    mov         edx,dword ptr [ebp-10]
 005D5112    dec         edx
 005D5113    lea         eax,[ebp-0C]
 005D5116    call        @LStrSetLength
>005D511B    jmp         005D5125
 005D511D    inc         dword ptr [ebp-10]
 005D5120    dec         dword ptr [ebp-14]
>005D5123    jne         005D50FD
 005D5125    mov         edx,dword ptr [ebp-0C]
 005D5128    mov         eax,dword ptr [ebp-4]
 005D512B    call        TTabPage.SetCaption
 005D5130    xor         eax,eax
 005D5132    pop         edx
 005D5133    pop         ecx
 005D5134    pop         ecx
 005D5135    mov         dword ptr fs:[eax],edx
 005D5138    push        5D514D
 005D513D    lea         eax,[ebp-0C]
 005D5140    call        @LStrClr
 005D5145    ret
>005D5146    jmp         @HandleFinally
>005D514B    jmp         005D513D
 005D514D    mov         esp,ebp
 005D514F    pop         ebp
 005D5150    ret
end;*}

//005D5154
{*procedure TCustomDockForm.CMUndockClient(?:?);
begin
 005D5154    push        ebp
 005D5155    mov         ebp,esp
 005D5157    add         esp,0FFFFFFF8
 005D515A    mov         dword ptr [ebp-8],edx
 005D515D    mov         dword ptr [ebp-4],eax
 005D5160    mov         edx,dword ptr [ebp-8]
 005D5163    mov         eax,dword ptr [ebp-4]
 005D5166    call        TWinControl.CMUndockClient
 005D516B    mov         eax,dword ptr [ebp-8]
 005D516E    mov         eax,dword ptr [eax+8]
 005D5171    xor         edx,edx
 005D5173    call        TCCalendar.SetAlign
 005D5178    pop         ecx
 005D5179    pop         ecx
 005D517A    pop         ebp
 005D517B    ret
end;*}

//005D517C
{*procedure TCustomDockForm.CMVisibleChanged(?:?);
begin
 005D517C    push        ebp
 005D517D    mov         ebp,esp
 005D517F    add         esp,0FFFFFFF0
 005D5182    mov         dword ptr [ebp-8],edx
 005D5185    mov         dword ptr [ebp-4],eax
 005D5188    mov         edx,dword ptr [ebp-8]
 005D518B    mov         eax,dword ptr [ebp-4]
 005D518E    call        TWinControl.CMVisibleChanged
 005D5193    mov         eax,dword ptr [ebp-4]
 005D5196    test        byte ptr [eax+1C],8;TCustomDockForm.FComponentState:TComponentState
>005D519A    jne         005D51D2
 005D519C    mov         eax,dword ptr [ebp-4]
 005D519F    call        005FA394
 005D51A4    dec         eax
 005D51A5    test        eax,eax
>005D51A7    jl          005D51D2
 005D51A9    inc         eax
 005D51AA    mov         dword ptr [ebp-10],eax
 005D51AD    mov         dword ptr [ebp-0C],0
 005D51B4    mov         edx,dword ptr [ebp-0C]
 005D51B7    mov         eax,dword ptr [ebp-4]
 005D51BA    call        005FA3C8
 005D51BF    mov         edx,dword ptr [ebp-4]
 005D51C2    mov         dl,byte ptr [edx+57];TCustomDockForm.FVisible:Boolean
 005D51C5    call        TCCalendar.SetVisible
 005D51CA    inc         dword ptr [ebp-0C]
 005D51CD    dec         dword ptr [ebp-10]
>005D51D0    jne         005D51B4
 005D51D2    mov         esp,ebp
 005D51D4    pop         ebp
 005D51D5    ret
end;*}

//005D51D8
{*function sub_005D51D8(?:?):?;
begin
 005D51D8    push        ebp
 005D51D9    mov         ebp,esp
 005D51DB    add         esp,0FFFFFFE8
 005D51DE    mov         dword ptr [ebp-4],eax
 005D51E1    lea         edx,[ebp-18]
 005D51E4    mov         eax,dword ptr [ebp-4]
 005D51E7    call        005D5268
 005D51EC    mov         eax,dword ptr [ebp-18]
 005D51EF    mov         dword ptr [ebp-8],eax
 005D51F2    mov         eax,dword ptr [ebp-8]
 005D51F5    mov         esp,ebp
 005D51F7    pop         ebp
 005D51F8    ret
end;*}

//005D51FC
{*function sub_005D51FC(?:?):?;
begin
 005D51FC    push        ebp
 005D51FD    mov         ebp,esp
 005D51FF    add         esp,0FFFFFFE8
 005D5202    mov         dword ptr [ebp-4],eax
 005D5205    lea         edx,[ebp-18]
 005D5208    mov         eax,dword ptr [ebp-4]
 005D520B    call        005D5268
 005D5210    mov         eax,dword ptr [ebp-0C]
 005D5213    sub         eax,dword ptr [ebp-14]
 005D5216    mov         dword ptr [ebp-8],eax
 005D5219    mov         eax,dword ptr [ebp-8]
 005D521C    mov         esp,ebp
 005D521E    pop         ebp
 005D521F    ret
end;*}

//005D5220
{*function sub_005D5220(?:?):?;
begin
 005D5220    push        ebp
 005D5221    mov         ebp,esp
 005D5223    add         esp,0FFFFFFE8
 005D5226    mov         dword ptr [ebp-4],eax
 005D5229    lea         edx,[ebp-18]
 005D522C    mov         eax,dword ptr [ebp-4]
 005D522F    call        005D5268
 005D5234    mov         eax,dword ptr [ebp-14]
 005D5237    mov         dword ptr [ebp-8],eax
 005D523A    mov         eax,dword ptr [ebp-8]
 005D523D    mov         esp,ebp
 005D523F    pop         ebp
 005D5240    ret
end;*}

//005D5244
{*function sub_005D5244(?:?):?;
begin
 005D5244    push        ebp
 005D5245    mov         ebp,esp
 005D5247    add         esp,0FFFFFFE8
 005D524A    mov         dword ptr [ebp-4],eax
 005D524D    lea         edx,[ebp-18]
 005D5250    mov         eax,dword ptr [ebp-4]
 005D5253    call        005D5268
 005D5258    mov         eax,dword ptr [ebp-10]
 005D525B    sub         eax,dword ptr [ebp-18]
 005D525E    mov         dword ptr [ebp-8],eax
 005D5261    mov         eax,dword ptr [ebp-8]
 005D5264    mov         esp,ebp
 005D5266    pop         ebp
 005D5267    ret
end;*}

//005D5268
{*procedure sub_005D5268(?:?; ?:?);
begin
 005D5268    push        ebp
 005D5269    mov         ebp,esp
 005D526B    add         esp,0FFFFFFD0
 005D526E    push        esi
 005D526F    push        edi
 005D5270    mov         dword ptr [ebp-8],edx
 005D5273    mov         dword ptr [ebp-4],eax
 005D5276    mov         dword ptr [ebp-30],28
 005D527D    lea         eax,[ebp-30]
 005D5280    push        eax
 005D5281    mov         eax,dword ptr [ebp-4]
 005D5284    mov         eax,dword ptr [eax+4]
 005D5287    push        eax
 005D5288    mov         eax,[006EA00C];^gvar_006ECF04
 005D528D    mov         eax,dword ptr [eax]
 005D528F    call        eax
 005D5291    mov         eax,dword ptr [ebp-8]
 005D5294    mov         edi,eax
 005D5296    lea         esi,[ebp-2C]
 005D5299    movs        dword ptr [edi],dword ptr [esi]
 005D529A    movs        dword ptr [edi],dword ptr [esi]
 005D529B    movs        dword ptr [edi],dword ptr [esi]
 005D529C    movs        dword ptr [edi],dword ptr [esi]
 005D529D    pop         edi
 005D529E    pop         esi
 005D529F    mov         esp,ebp
 005D52A1    pop         ebp
 005D52A2    ret
end;*}

//005D52A4
{*procedure sub_005D52A4(?:?; ?:?);
begin
 005D52A4    push        ebp
 005D52A5    mov         ebp,esp
 005D52A7    add         esp,0FFFFFFD0
 005D52AA    push        esi
 005D52AB    push        edi
 005D52AC    mov         dword ptr [ebp-8],edx
 005D52AF    mov         dword ptr [ebp-4],eax
 005D52B2    mov         dword ptr [ebp-30],28
 005D52B9    lea         eax,[ebp-30]
 005D52BC    push        eax
 005D52BD    mov         eax,dword ptr [ebp-4]
 005D52C0    mov         eax,dword ptr [eax+4]
 005D52C3    push        eax
 005D52C4    mov         eax,[006EA00C];^gvar_006ECF04
 005D52C9    mov         eax,dword ptr [eax]
 005D52CB    call        eax
 005D52CD    mov         eax,dword ptr [ebp-8]
 005D52D0    mov         edi,eax
 005D52D2    lea         esi,[ebp-1C]
 005D52D5    movs        dword ptr [edi],dword ptr [esi]
 005D52D6    movs        dword ptr [edi],dword ptr [esi]
 005D52D7    movs        dword ptr [edi],dword ptr [esi]
 005D52D8    movs        dword ptr [edi],dword ptr [esi]
 005D52D9    pop         edi
 005D52DA    pop         esi
 005D52DB    mov         esp,ebp
 005D52DD    pop         ebp
 005D52DE    ret
end;*}

//005D52E0
{*function sub_005D52E0(?:?):?;
begin
 005D52E0    push        ebp
 005D52E1    mov         ebp,esp
 005D52E3    add         esp,0FFFFFFD0
 005D52E6    mov         dword ptr [ebp-4],eax
 005D52E9    mov         dword ptr [ebp-30],28
 005D52F0    lea         eax,[ebp-30]
 005D52F3    push        eax
 005D52F4    mov         eax,dword ptr [ebp-4]
 005D52F7    mov         eax,dword ptr [eax+4]
 005D52FA    push        eax
 005D52FB    mov         eax,[006EA00C];^gvar_006ECF04
 005D5300    mov         eax,dword ptr [eax]
 005D5302    call        eax
 005D5304    test        byte ptr [ebp-0C],1
 005D5308    setne       byte ptr [ebp-5]
 005D530C    mov         al,byte ptr [ebp-5]
 005D530F    mov         esp,ebp
 005D5311    pop         ebp
 005D5312    ret
end;*}

//005D5314
constructor TScreen.Create(AOwner:TComponent);
begin
{*
 005D5314    push        ebp
 005D5315    mov         ebp,esp
 005D5317    add         esp,0FFFFFFF0
 005D531A    test        dl,dl
>005D531C    je          005D5326
 005D531E    add         esp,0FFFFFFF0
 005D5321    call        @ClassCreate
 005D5326    mov         dword ptr [ebp-0C],ecx
 005D5329    mov         byte ptr [ebp-5],dl
 005D532C    mov         dword ptr [ebp-4],eax
 005D532F    mov         ecx,dword ptr [ebp-0C]
 005D5332    xor         edx,edx
 005D5334    mov         eax,dword ptr [ebp-4]
 005D5337    call        TComponent.Create
 005D533C    mov         eax,[006EA028];^gvar_006E4800
 005D5341    mov         edx,dword ptr [ebp-4]
 005D5344    mov         dword ptr [eax+4],edx
 005D5347    mov         dword ptr [eax],5D5884
 005D534D    mov         eax,[006EA02C];^gvar_006E4808
 005D5352    mov         edx,dword ptr [ebp-4]
 005D5355    mov         dword ptr [eax+4],edx
 005D5358    mov         dword ptr [eax],5D58A4
 005D535E    mov         eax,dword ptr [ebp-4]
 005D5361    call        005D58C4
 005D5366    push        0
 005D5368    call        USER32.GetKeyboardLayout
 005D536D    mov         edx,dword ptr [ebp-4]
 005D5370    mov         dword ptr [edx+3C],eax;TScreen.FDefaultKbLayout:HKL
 005D5373    mov         dl,1
 005D5375    mov         eax,[006422A4];TList
 005D537A    call        TObject.Create;TList.Create
 005D537F    mov         edx,dword ptr [ebp-4]
 005D5382    mov         dword ptr [edx+4C],eax;TScreen.FForms:TList
 005D5385    mov         dl,1
 005D5387    mov         eax,[006422A4];TList
 005D538C    call        TObject.Create;TList.Create
 005D5391    mov         edx,dword ptr [ebp-4]
 005D5394    mov         dword ptr [edx+50],eax;TScreen.FCustomForms:TList
 005D5397    mov         dl,1
 005D5399    mov         eax,[006422A4];TList
 005D539E    call        TObject.Create;TList.Create
 005D53A3    mov         edx,dword ptr [ebp-4]
 005D53A6    mov         dword ptr [edx+54],eax;TScreen.FDataModules:TList
 005D53A9    mov         dl,1
 005D53AB    mov         eax,[006422A4];TList
 005D53B0    call        TObject.Create;TList.Create
 005D53B5    mov         edx,dword ptr [ebp-4]
 005D53B8    mov         dword ptr [edx+58],eax;TScreen.FMonitors:TList
 005D53BB    mov         dl,1
 005D53BD    mov         eax,[006422A4];TList
 005D53C2    call        TObject.Create;TList.Create
 005D53C7    mov         edx,dword ptr [ebp-4]
 005D53CA    mov         dword ptr [edx+7C],eax;TScreen.FSaveFocusedList:TList
 005D53CD    push        0
 005D53CF    call        USER32.GetDC
 005D53D4    mov         dword ptr [ebp-10],eax
 005D53D7    push        5A
 005D53D9    mov         eax,dword ptr [ebp-10]
 005D53DC    push        eax
 005D53DD    call        GDI32.GetDeviceCaps
 005D53E2    mov         edx,dword ptr [ebp-4]
 005D53E5    mov         dword ptr [edx+40],eax;TScreen.FPixelsPerInch:Integer
 005D53E8    mov         eax,dword ptr [ebp-10]
 005D53EB    push        eax
 005D53EC    push        0
 005D53EE    call        USER32.ReleaseDC
 005D53F3    mov         eax,dword ptr [ebp-4]
 005D53F6    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D53F9    push        eax
 005D53FA    mov         eax,5D0CBC
 005D53FF    push        eax
 005D5400    push        0
 005D5402    push        0
 005D5404    mov         eax,[006EA010];^gvar_006ECF10
 005D5409    mov         eax,dword ptr [eax]
 005D540B    call        eax
 005D540D    mov         dl,1
 005D540F    mov         eax,[005BE498];TFont
 005D5414    call        TFont.Create;TFont.Create
 005D5419    mov         edx,dword ptr [ebp-4]
 005D541C    mov         dword ptr [edx+84],eax;TScreen.FIconFont:TFont
 005D5422    mov         dl,1
 005D5424    mov         eax,[005BE498];TFont
 005D5429    call        TFont.Create;TFont.Create
 005D542E    mov         edx,dword ptr [ebp-4]
 005D5431    mov         dword ptr [edx+88],eax;TScreen.FMenuFont:TFont
 005D5437    mov         dl,1
 005D5439    mov         eax,[005BE498];TFont
 005D543E    call        TFont.Create;TFont.Create
 005D5443    mov         edx,dword ptr [ebp-4]
 005D5446    mov         dword ptr [edx+80],eax;TScreen.FHintFont:TFont
 005D544C    mov         eax,dword ptr [ebp-4]
 005D544F    call        005D5F4C
 005D5454    mov         eax,dword ptr [ebp-4]
 005D5457    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 005D545D    mov         edx,dword ptr [ebp-4]
 005D5460    mov         dword ptr [eax+0C],edx;TFont.?fC:TTabbedNotebook
 005D5463    mov         dword ptr [eax+8],5D5D34;TFont.FOnChange:TNotifyEvent
 005D546A    mov         eax,dword ptr [ebp-4]
 005D546D    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D5473    mov         edx,dword ptr [ebp-4]
 005D5476    mov         dword ptr [eax+0C],edx;TFont.?fC:TTabbedNotebook
 005D5479    mov         dword ptr [eax+8],5D5D34;TFont.FOnChange:TNotifyEvent
 005D5480    mov         eax,dword ptr [ebp-4]
 005D5483    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 005D5489    mov         edx,dword ptr [ebp-4]
 005D548C    mov         dword ptr [eax+0C],edx;TFont.?fC:TTabbedNotebook
 005D548F    mov         dword ptr [eax+8],5D5D34;TFont.FOnChange:TNotifyEvent
 005D5496    mov         eax,dword ptr [ebp-4]
 005D5499    cmp         byte ptr [ebp-5],0
>005D549D    je          005D54AE
 005D549F    call        @AfterConstruction
 005D54A4    pop         dword ptr fs:[0]
 005D54AB    add         esp,0C
 005D54AE    mov         eax,dword ptr [ebp-4]
 005D54B1    mov         esp,ebp
 005D54B3    pop         ebp
 005D54B4    ret
*}
end;

//005D54B8
destructor TScreen.Destroy;
begin
{*
 005D54B8    push        ebp
 005D54B9    mov         ebp,esp
 005D54BB    add         esp,0FFFFFFF0
 005D54BE    call        @BeforeDestruction
 005D54C3    mov         byte ptr [ebp-5],dl
 005D54C6    mov         dword ptr [ebp-4],eax
 005D54C9    mov         eax,dword ptr [ebp-4]
 005D54CC    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 005D54D2    call        TObject.Free
 005D54D7    mov         eax,dword ptr [ebp-4]
 005D54DA    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D54E0    call        TObject.Free
 005D54E5    mov         eax,dword ptr [ebp-4]
 005D54E8    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 005D54EE    call        TObject.Free
 005D54F3    mov         eax,dword ptr [ebp-4]
 005D54F6    mov         eax,dword ptr [eax+54];TScreen.FDataModules:TList
 005D54F9    call        TObject.Free
 005D54FE    mov         eax,dword ptr [ebp-4]
 005D5501    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 005D5504    call        TObject.Free
 005D5509    mov         eax,dword ptr [ebp-4]
 005D550C    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D550F    call        TObject.Free
 005D5514    mov         eax,dword ptr [ebp-4]
 005D5517    mov         eax,dword ptr [eax+30];TScreen.FFonts:TStrings
 005D551A    call        TObject.Free
 005D551F    mov         eax,dword ptr [ebp-4]
 005D5522    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 005D5525    call        TObject.Free
 005D552A    mov         eax,dword ptr [ebp-4]
 005D552D    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 005D5530    call        TObject.Free
 005D5535    mov         eax,dword ptr [ebp-4]
 005D5538    cmp         dword ptr [eax+58],0;TScreen.FMonitors:TList
>005D553C    je          005D5572
 005D553E    mov         eax,dword ptr [ebp-4]
 005D5541    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D5544    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005D5547    dec         eax
 005D5548    test        eax,eax
>005D554A    jl          005D5572
 005D554C    inc         eax
 005D554D    mov         dword ptr [ebp-10],eax
 005D5550    mov         dword ptr [ebp-0C],0
 005D5557    mov         eax,dword ptr [ebp-4]
 005D555A    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D555D    mov         edx,dword ptr [ebp-0C]
 005D5560    call        TList.Get
 005D5565    call        TObject.Free
 005D556A    inc         dword ptr [ebp-0C]
 005D556D    dec         dword ptr [ebp-10]
>005D5570    jne         005D5557
 005D5572    mov         eax,dword ptr [ebp-4]
 005D5575    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D5578    call        TObject.Free
 005D557D    mov         eax,dword ptr [ebp-4]
 005D5580    call        005D5938
 005D5585    mov         eax,[006EA028];^gvar_006E4800
 005D558A    xor         edx,edx
 005D558C    mov         dword ptr [eax],edx
 005D558E    mov         dword ptr [eax+4],edx
 005D5591    mov         eax,[006EA02C];^gvar_006E4808
 005D5596    xor         edx,edx
 005D5598    mov         dword ptr [eax],edx
 005D559A    mov         dword ptr [eax+4],edx
 005D559D    mov         dl,byte ptr [ebp-5]
 005D55A0    and         dl,0FC
 005D55A3    mov         eax,dword ptr [ebp-4]
 005D55A6    call        TComponent.Destroy
 005D55AB    cmp         byte ptr [ebp-5],0
>005D55AF    jle         005D55B9
 005D55B1    mov         eax,dword ptr [ebp-4]
 005D55B4    call        @ClassDestroy
 005D55B9    mov         esp,ebp
 005D55BB    pop         ebp
 005D55BC    ret
*}
end;

//005D55C0
{*function sub_005D55C0(?:TScreen):?;
begin
 005D55C0    push        ebp
 005D55C1    mov         ebp,esp
 005D55C3    add         esp,0FFFFFFF8
 005D55C6    mov         dword ptr [ebp-4],eax
 005D55C9    push        1
 005D55CB    mov         eax,[006EA000];^gvar_006ECEF4
 005D55D0    mov         eax,dword ptr [eax]
 005D55D2    call        eax
 005D55D4    mov         dword ptr [ebp-8],eax
 005D55D7    mov         eax,dword ptr [ebp-8]
 005D55DA    pop         ecx
 005D55DB    pop         ecx
 005D55DC    pop         ebp
 005D55DD    ret
end;*}

//005D55E0
{*function sub_005D55E0(?:TScreen):?;
begin
 005D55E0    push        ebp
 005D55E1    mov         ebp,esp
 005D55E3    add         esp,0FFFFFFF8
 005D55E6    mov         dword ptr [ebp-4],eax
 005D55E9    push        0
 005D55EB    mov         eax,[006EA000];^gvar_006ECEF4
 005D55F0    mov         eax,dword ptr [eax]
 005D55F2    call        eax
 005D55F4    mov         dword ptr [ebp-8],eax
 005D55F7    mov         eax,dword ptr [ebp-8]
 005D55FA    pop         ecx
 005D55FB    pop         ecx
 005D55FC    pop         ebp
 005D55FD    ret
end;*}

//005D5600
{*function sub_005D5600(?:TScreen):?;
begin
 005D5600    push        ebp
 005D5601    mov         ebp,esp
 005D5603    add         esp,0FFFFFFF8
 005D5606    mov         dword ptr [ebp-4],eax
 005D5609    push        4D
 005D560B    mov         eax,[006EA000];^gvar_006ECEF4
 005D5610    mov         eax,dword ptr [eax]
 005D5612    call        eax
 005D5614    mov         dword ptr [ebp-8],eax
 005D5617    mov         eax,dword ptr [ebp-8]
 005D561A    pop         ecx
 005D561B    pop         ecx
 005D561C    pop         ebp
 005D561D    ret
end;*}

//005D5620
{*function sub_005D5620(?:TScreen):?;
begin
 005D5620    push        ebp
 005D5621    mov         ebp,esp
 005D5623    add         esp,0FFFFFFF8
 005D5626    mov         dword ptr [ebp-4],eax
 005D5629    push        4C
 005D562B    mov         eax,[006EA000];^gvar_006ECEF4
 005D5630    mov         eax,dword ptr [eax]
 005D5632    call        eax
 005D5634    mov         dword ptr [ebp-8],eax
 005D5637    mov         eax,dword ptr [ebp-8]
 005D563A    pop         ecx
 005D563B    pop         ecx
 005D563C    pop         ebp
 005D563D    ret
end;*}

//005D5640
{*function sub_005D5640(?:TScreen):?;
begin
 005D5640    push        ebp
 005D5641    mov         ebp,esp
 005D5643    add         esp,0FFFFFFF8
 005D5646    mov         dword ptr [ebp-4],eax
 005D5649    push        4F
 005D564B    mov         eax,[006EA000];^gvar_006ECEF4
 005D5650    mov         eax,dword ptr [eax]
 005D5652    call        eax
 005D5654    mov         dword ptr [ebp-8],eax
 005D5657    mov         eax,dword ptr [ebp-8]
 005D565A    pop         ecx
 005D565B    pop         ecx
 005D565C    pop         ebp
 005D565D    ret
end;*}

//005D5660
{*function sub_005D5660(?:TScreen):?;
begin
 005D5660    push        ebp
 005D5661    mov         ebp,esp
 005D5663    add         esp,0FFFFFFF8
 005D5666    mov         dword ptr [ebp-4],eax
 005D5669    push        4E
 005D566B    mov         eax,[006EA000];^gvar_006ECEF4
 005D5670    mov         eax,dword ptr [eax]
 005D5672    call        eax
 005D5674    mov         dword ptr [ebp-8],eax
 005D5677    mov         eax,dword ptr [ebp-8]
 005D567A    pop         ecx
 005D567B    pop         ecx
 005D567C    pop         ebp
 005D567D    ret
end;*}

//005D5680
{*function sub_005D5680(?:TScreen; ?:?):?;
begin
 005D5680    push        ebp
 005D5681    mov         ebp,esp
 005D5683    add         esp,0FFFFFFF4
 005D5686    mov         dword ptr [ebp-8],edx
 005D5689    mov         dword ptr [ebp-4],eax
 005D568C    mov         edx,dword ptr [ebp-8]
 005D568F    mov         eax,dword ptr [ebp-4]
 005D5692    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D5695    call        TList.Get
 005D569A    mov         dword ptr [ebp-0C],eax
 005D569D    mov         eax,dword ptr [ebp-0C]
 005D56A0    mov         esp,ebp
 005D56A2    pop         ebp
 005D56A3    ret
end;*}

//005D56A4
{*function sub_005D56A4(?:TScreen):?;
begin
 005D56A4    push        ebp
 005D56A5    mov         ebp,esp
 005D56A7    add         esp,0FFFFFFF8
 005D56AA    mov         dword ptr [ebp-4],eax
 005D56AD    mov         eax,dword ptr [ebp-4]
 005D56B0    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D56B3    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>005D56B7    jne         005D56C9
 005D56B9    push        50
 005D56BB    mov         eax,[006EA000];^gvar_006ECEF4
 005D56C0    mov         eax,dword ptr [eax]
 005D56C2    call        eax
 005D56C4    mov         dword ptr [ebp-8],eax
>005D56C7    jmp         005D56D5
 005D56C9    mov         eax,dword ptr [ebp-4]
 005D56CC    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 005D56CF    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005D56D2    mov         dword ptr [ebp-8],eax
 005D56D5    mov         eax,dword ptr [ebp-8]
 005D56D8    pop         ecx
 005D56D9    pop         ecx
 005D56DA    pop         ebp
 005D56DB    ret
end;*}

//005D56DC
{*function sub_005D56DC(?:TScreen; ?:?):?;
begin
 005D56DC    push        ebp
 005D56DD    mov         ebp,esp
 005D56DF    add         esp,0FFFFFFF4
 005D56E2    mov         dword ptr [ebp-8],edx
 005D56E5    mov         dword ptr [ebp-4],eax
 005D56E8    mov         edx,dword ptr [ebp-8]
 005D56EB    mov         eax,dword ptr [ebp-4]
 005D56EE    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D56F1    call        TList.Get
 005D56F6    mov         dword ptr [ebp-0C],eax
 005D56F9    mov         eax,dword ptr [ebp-0C]
 005D56FC    mov         esp,ebp
 005D56FE    pop         ebp
 005D56FF    ret
end;*}

//005D5700
{*function sub_005D5700(?:TScreen):?;
begin
 005D5700    push        ebp
 005D5701    mov         ebp,esp
 005D5703    add         esp,0FFFFFFF8
 005D5706    mov         dword ptr [ebp-4],eax
 005D5709    mov         eax,dword ptr [ebp-4]
 005D570C    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D570F    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005D5712    mov         dword ptr [ebp-8],eax
 005D5715    mov         eax,dword ptr [ebp-8]
 005D5718    pop         ecx
 005D5719    pop         ecx
 005D571A    pop         ebp
 005D571B    ret
end;*}

//005D571C
{*function sub_005D571C(?:TScreen; ?:?):?;
begin
 005D571C    push        ebp
 005D571D    mov         ebp,esp
 005D571F    add         esp,0FFFFFFF4
 005D5722    mov         dword ptr [ebp-8],edx
 005D5725    mov         dword ptr [ebp-4],eax
 005D5728    mov         edx,dword ptr [ebp-8]
 005D572B    mov         eax,dword ptr [ebp-4]
 005D572E    mov         eax,dword ptr [eax+50]
 005D5731    call        TList.Get
 005D5736    mov         dword ptr [ebp-0C],eax
 005D5739    mov         eax,dword ptr [ebp-0C]
 005D573C    mov         esp,ebp
 005D573E    pop         ebp
 005D573F    ret
end;*}

//005D5740
{*function sub_005D5740(?:TScreen):?;
begin
 005D5740    push        ebp
 005D5741    mov         ebp,esp
 005D5743    add         esp,0FFFFFFF8
 005D5746    mov         dword ptr [ebp-4],eax
 005D5749    mov         eax,dword ptr [ebp-4]
 005D574C    mov         eax,dword ptr [eax+50]
 005D574F    mov         eax,dword ptr [eax+8]
 005D5752    mov         dword ptr [ebp-8],eax
 005D5755    mov         eax,dword ptr [ebp-8]
 005D5758    pop         ecx
 005D5759    pop         ecx
 005D575A    pop         ebp
 005D575B    ret
end;*}

//005D575C
procedure sub_005D575C(?:TScreen);
begin
{*
 005D575C    push        ebp
 005D575D    mov         ebp,esp
 005D575F    push        ecx
 005D5760    push        ebx
 005D5761    mov         dword ptr [ebp-4],eax
 005D5764    mov         eax,dword ptr [ebp-4]
 005D5767    mov         eax,dword ptr [eax+74];TScreen.FLastActiveCustomForm:TCustomForm
 005D576A    mov         edx,dword ptr [ebp-4]
 005D576D    cmp         eax,dword ptr [edx+68];TScreen.FActiveCustomForm:TCustomForm
>005D5770    je          005D579D
 005D5772    mov         eax,dword ptr [ebp-4]
 005D5775    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 005D5778    mov         edx,dword ptr [ebp-4]
 005D577B    mov         dword ptr [edx+74],eax;TScreen.FLastActiveCustomForm:TCustomForm
 005D577E    mov         eax,dword ptr [ebp-4]
 005D5781    cmp         word ptr [eax+9A],0;TScreen.?f9A:word
>005D5789    je          005D579D
 005D578B    mov         ebx,dword ptr [ebp-4]
 005D578E    mov         edx,dword ptr [ebp-4]
 005D5791    mov         eax,dword ptr [ebx+9C];TScreen.?f9C:dword
 005D5797    call        dword ptr [ebx+98];TScreen.FOnActiveFormChange
 005D579D    mov         eax,dword ptr [ebp-4]
 005D57A0    mov         eax,dword ptr [eax+70];TScreen.FLastActiveControl:TWinControl
 005D57A3    mov         edx,dword ptr [ebp-4]
 005D57A6    cmp         eax,dword ptr [edx+64];TScreen.FActiveControl:TWinControl
>005D57A9    je          005D57D6
 005D57AB    mov         eax,dword ptr [ebp-4]
 005D57AE    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 005D57B1    mov         edx,dword ptr [ebp-4]
 005D57B4    mov         dword ptr [edx+70],eax;TScreen.FLastActiveControl:TWinControl
 005D57B7    mov         eax,dword ptr [ebp-4]
 005D57BA    cmp         word ptr [eax+92],0;TScreen.?f92:word
>005D57C2    je          005D57D6
 005D57C4    mov         ebx,dword ptr [ebp-4]
 005D57C7    mov         edx,dword ptr [ebp-4]
 005D57CA    mov         eax,dword ptr [ebx+94];TScreen.?f94:dword
 005D57D0    call        dword ptr [ebx+90];TScreen.FOnActiveControlChange
 005D57D6    pop         ebx
 005D57D7    pop         ecx
 005D57D8    pop         ebp
 005D57D9    ret
*}
end;

//005D57DC
procedure sub_005D57DC(?:TScreen; ?:TCustomForm);
begin
{*
 005D57DC    push        ebp
 005D57DD    mov         ebp,esp
 005D57DF    add         esp,0FFFFFFF8
 005D57E2    mov         dword ptr [ebp-8],edx
 005D57E5    mov         dword ptr [ebp-4],eax
 005D57E8    mov         edx,dword ptr [ebp-8]
 005D57EB    mov         eax,dword ptr [ebp-4]
 005D57EE    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 005D57F1    call        TList.Add
 005D57F6    mov         eax,dword ptr [ebp-8]
 005D57F9    mov         edx,dword ptr ds:[5CC540];TForm
 005D57FF    call        @IsClass
 005D5804    test        al,al
>005D5806    je          005D5820
 005D5808    mov         edx,dword ptr [ebp-8]
 005D580B    mov         eax,dword ptr [ebp-4]
 005D580E    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 005D5811    call        TList.Add
 005D5816    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D581B    call        005D8F80
 005D5820    pop         ecx
 005D5821    pop         ecx
 005D5822    pop         ebp
 005D5823    ret
*}
end;

//005D5824
procedure TScreen.RemoveForm(AForm:TCustomForm);
begin
{*
 005D5824    push        ebp
 005D5825    mov         ebp,esp
 005D5827    add         esp,0FFFFFFF8
 005D582A    mov         dword ptr [ebp-8],edx
 005D582D    mov         dword ptr [ebp-4],eax
 005D5830    mov         edx,dword ptr [ebp-8]
 005D5833    mov         eax,dword ptr [ebp-4]
 005D5836    mov         eax,dword ptr [eax+50]
 005D5839    call        TList.Remove
 005D583E    mov         edx,dword ptr [ebp-8]
 005D5841    mov         eax,dword ptr [ebp-4]
 005D5844    mov         eax,dword ptr [eax+4C]
 005D5847    call        TList.Remove
 005D584C    mov         eax,[006ECD7C];Application:TApplication
 005D5851    call        005D8F80
 005D5856    mov         eax,dword ptr [ebp-4]
 005D5859    mov         eax,dword ptr [eax+50]
 005D585C    cmp         dword ptr [eax+8],0
>005D5860    jne         005D5880
 005D5862    mov         eax,[006ECD7C];Application:TApplication
 005D5867    cmp         dword ptr [eax+84],0
>005D586E    je          005D5880
 005D5870    mov         eax,[006ECD7C];Application:TApplication
 005D5875    mov         eax,dword ptr [eax+84]
 005D587B    call        005FDAB8
 005D5880    pop         ecx
 005D5881    pop         ecx
 005D5882    pop         ebp
 005D5883    ret
*}
end;

//005D58C4
procedure sub_005D58C4(?:TScreen);
begin
{*
 005D58C4    push        ebp
 005D58C5    mov         ebp,esp
 005D58C7    add         esp,0FFFFFFF4
 005D58CA    mov         dword ptr [ebp-4],eax
 005D58CD    push        7F00
 005D58D2    push        0
 005D58D4    call        USER32.LoadCursorA
 005D58D9    mov         edx,dword ptr [ebp-4]
 005D58DC    mov         dword ptr [edx+60],eax;TScreen.FDefaultCursor:HCURSOR
 005D58DF    mov         dword ptr [ebp-8],0FFFFFFEA
 005D58E6    cmp         dword ptr [ebp-8],0FFFFFFEF
>005D58EA    jl          005D58F2
 005D58EC    cmp         dword ptr [ebp-8],0FFFFFFF4
>005D58F0    jle         005D58F8
 005D58F2    cmp         dword ptr [ebp-8],0FFFFFFEB
>005D58F6    jne         005D5902
 005D58F8    mov         eax,[006EA390];0x0 gvar_006EA390
 005D58FD    mov         dword ptr [ebp-0C],eax
>005D5900    jmp         005D5907
 005D5902    xor         eax,eax
 005D5904    mov         dword ptr [ebp-0C],eax
 005D5907    mov         eax,dword ptr [ebp-8]
 005D590A    mov         eax,dword ptr [eax*4+6E40CC]
 005D5911    push        eax
 005D5912    mov         eax,dword ptr [ebp-0C]
 005D5915    push        eax
 005D5916    call        USER32.LoadCursorA
 005D591B    mov         ecx,eax
 005D591D    mov         edx,dword ptr [ebp-8]
 005D5920    mov         eax,dword ptr [ebp-4]
 005D5923    call        005D5AA4
 005D5928    inc         dword ptr [ebp-8]
 005D592B    cmp         dword ptr [ebp-8],0FFFFFFFF
>005D592F    jne         005D58E6
 005D5931    mov         esp,ebp
 005D5933    pop         ebp
 005D5934    ret
*}
end;

//005D5938
procedure sub_005D5938(?:TScreen);
begin
{*
 005D5938    push        ebp
 005D5939    mov         ebp,esp
 005D593B    add         esp,0FFFFFFF0
 005D593E    mov         dword ptr [ebp-4],eax
 005D5941    mov         eax,dword ptr [ebp-4]
 005D5944    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 005D5947    mov         dword ptr [ebp-8],eax
 005D594A    cmp         dword ptr [ebp-8],0
>005D594E    je          005D59A1
 005D5950    mov         eax,dword ptr [ebp-8]
 005D5953    cmp         dword ptr [eax+4],0FFFFFFEF
>005D5957    jl          005D5962
 005D5959    mov         eax,dword ptr [ebp-8]
 005D595C    cmp         dword ptr [eax+4],0FFFFFFF4
>005D5960    jle         005D5974
 005D5962    mov         eax,dword ptr [ebp-8]
 005D5965    cmp         dword ptr [eax+4],0FFFFFFEB
>005D5969    je          005D5974
 005D596B    mov         eax,dword ptr [ebp-8]
 005D596E    cmp         dword ptr [eax+4],0
>005D5972    jle         005D5980
 005D5974    mov         eax,dword ptr [ebp-8]
 005D5977    mov         eax,dword ptr [eax+8]
 005D597A    push        eax
 005D597B    call        USER32.DestroyCursor
 005D5980    mov         eax,dword ptr [ebp-8]
 005D5983    mov         eax,dword ptr [eax]
 005D5985    mov         dword ptr [ebp-0C],eax
 005D5988    mov         edx,0C
 005D598D    mov         eax,dword ptr [ebp-8]
 005D5990    call        @FreeMem
 005D5995    mov         eax,dword ptr [ebp-0C]
 005D5998    mov         dword ptr [ebp-8],eax
 005D599B    cmp         dword ptr [ebp-8],0
>005D599F    jne         005D5950
 005D59A1    push        7F00
 005D59A6    push        0
 005D59A8    call        USER32.LoadCursorA
 005D59AD    mov         dword ptr [ebp-10],eax
 005D59B0    mov         eax,dword ptr [ebp-4]
 005D59B3    mov         eax,dword ptr [eax+60];TScreen.FDefaultCursor:HCURSOR
 005D59B6    cmp         eax,dword ptr [ebp-10]
>005D59B9    je          005D59C7
 005D59BB    mov         eax,dword ptr [ebp-4]
 005D59BE    mov         eax,dword ptr [eax+60];TScreen.FDefaultCursor:HCURSOR
 005D59C1    push        eax
 005D59C2    call        USER32.DestroyCursor
 005D59C7    mov         esp,ebp
 005D59C9    pop         ebp
 005D59CA    ret
*}
end;

//005D59CC
{*procedure sub_005D59CC(?:TScreen; ?:?);
begin
 005D59CC    push        ebp
 005D59CD    mov         ebp,esp
 005D59CF    add         esp,0FFFFFFF0
 005D59D2    mov         dword ptr [ebp-8],edx
 005D59D5    mov         dword ptr [ebp-4],eax
 005D59D8    mov         eax,dword ptr [ebp-4]
 005D59DB    mov         eax,dword ptr [eax+5C]
 005D59DE    mov         dword ptr [ebp-0C],eax
 005D59E1    xor         eax,eax
 005D59E3    mov         dword ptr [ebp-10],eax
>005D59E6    jmp         005D59F6
 005D59E8    mov         eax,dword ptr [ebp-0C]
 005D59EB    mov         dword ptr [ebp-10],eax
 005D59EE    mov         eax,dword ptr [ebp-0C]
 005D59F1    mov         eax,dword ptr [eax]
 005D59F3    mov         dword ptr [ebp-0C],eax
 005D59F6    cmp         dword ptr [ebp-0C],0
>005D59FA    je          005D5A07
 005D59FC    mov         eax,dword ptr [ebp-0C]
 005D59FF    mov         eax,dword ptr [eax+4]
 005D5A02    cmp         eax,dword ptr [ebp-8]
>005D5A05    jne         005D59E8
 005D5A07    cmp         dword ptr [ebp-0C],0
>005D5A0B    je          005D5A43
 005D5A0D    mov         eax,dword ptr [ebp-0C]
 005D5A10    mov         eax,dword ptr [eax+8]
 005D5A13    push        eax
 005D5A14    call        USER32.DestroyCursor
 005D5A19    cmp         dword ptr [ebp-10],0
>005D5A1D    jne         005D5A2C
 005D5A1F    mov         eax,dword ptr [ebp-4]
 005D5A22    mov         edx,dword ptr [ebp-0C]
 005D5A25    mov         edx,dword ptr [edx]
 005D5A27    mov         dword ptr [eax+5C],edx
>005D5A2A    jmp         005D5A36
 005D5A2C    mov         eax,dword ptr [ebp-0C]
 005D5A2F    mov         eax,dword ptr [eax]
 005D5A31    mov         edx,dword ptr [ebp-10]
 005D5A34    mov         dword ptr [edx],eax
 005D5A36    mov         edx,0C
 005D5A3B    mov         eax,dword ptr [ebp-0C]
 005D5A3E    call        @FreeMem
 005D5A43    mov         esp,ebp
 005D5A45    pop         ebp
 005D5A46    ret
end;*}

//005D5A48
{*function sub_005D5A48(?:?; ?:?):?;
begin
 005D5A48    push        ebp
 005D5A49    mov         ebp,esp
 005D5A4B    add         esp,0FFFFFFEC
 005D5A4E    mov         dword ptr [ebp-8],edx
 005D5A51    mov         dword ptr [ebp-4],eax
 005D5A54    xor         eax,eax
 005D5A56    mov         dword ptr [ebp-0C],eax
 005D5A59    mov         eax,dword ptr [ebp-4]
 005D5A5C    call        005D56A4
 005D5A61    dec         eax
 005D5A62    test        eax,eax
>005D5A64    jl          005D5A9C
 005D5A66    inc         eax
 005D5A67    mov         dword ptr [ebp-14],eax
 005D5A6A    mov         dword ptr [ebp-10],0
 005D5A71    mov         edx,dword ptr [ebp-10]
 005D5A74    mov         eax,dword ptr [ebp-4]
 005D5A77    call        005D5680
 005D5A7C    mov         eax,dword ptr [eax+4]
 005D5A7F    cmp         eax,dword ptr [ebp-8]
>005D5A82    jne         005D5A94
 005D5A84    mov         edx,dword ptr [ebp-10]
 005D5A87    mov         eax,dword ptr [ebp-4]
 005D5A8A    call        005D5680
 005D5A8F    mov         dword ptr [ebp-0C],eax
>005D5A92    jmp         005D5A9C
 005D5A94    inc         dword ptr [ebp-10]
 005D5A97    dec         dword ptr [ebp-14]
>005D5A9A    jne         005D5A71
 005D5A9C    mov         eax,dword ptr [ebp-0C]
 005D5A9F    mov         esp,ebp
 005D5AA1    pop         ebp
 005D5AA2    ret
end;*}

//005D5AA4
{*procedure sub_005D5AA4(?:TScreen; ?:?; ?:HICON);
begin
 005D5AA4    push        ebp
 005D5AA5    mov         ebp,esp
 005D5AA7    add         esp,0FFFFFFF0
 005D5AAA    mov         dword ptr [ebp-0C],ecx
 005D5AAD    mov         dword ptr [ebp-8],edx
 005D5AB0    mov         dword ptr [ebp-4],eax
 005D5AB3    mov         eax,0C
 005D5AB8    call        @GetMem
 005D5ABD    mov         dword ptr [ebp-10],eax
 005D5AC0    mov         eax,dword ptr [ebp-4]
 005D5AC3    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 005D5AC6    mov         edx,dword ptr [ebp-10]
 005D5AC9    mov         dword ptr [edx],eax
 005D5ACB    mov         eax,dword ptr [ebp-8]
 005D5ACE    mov         edx,dword ptr [ebp-10]
 005D5AD1    mov         dword ptr [edx+4],eax
 005D5AD4    mov         eax,dword ptr [ebp-0C]
 005D5AD7    mov         edx,dword ptr [ebp-10]
 005D5ADA    mov         dword ptr [edx+8],eax
 005D5ADD    mov         eax,dword ptr [ebp-10]
 005D5AE0    mov         edx,dword ptr [ebp-4]
 005D5AE3    mov         dword ptr [edx+5C],eax;TScreen.FCursorList:PCursorRec
 005D5AE6    mov         esp,ebp
 005D5AE8    pop         ebp
 005D5AE9    ret
end;*}

//005D5AEC
{*function sub_005D5AEC(?:TScreen):?;
begin
 005D5AEC    push        ebp
 005D5AED    mov         ebp,esp
 005D5AEF    add         esp,0FFFFFD98
 005D5AF5    push        ebx
 005D5AF6    xor         edx,edx
 005D5AF8    mov         dword ptr [ebp-268],edx
 005D5AFE    mov         dword ptr [ebp-4],eax
 005D5B01    xor         eax,eax
 005D5B03    push        ebp
 005D5B04    push        5D5CB7
 005D5B09    push        dword ptr fs:[eax]
 005D5B0C    mov         dword ptr fs:[eax],esp
 005D5B0F    mov         eax,dword ptr [ebp-4]
 005D5B12    cmp         dword ptr [eax+34],0
>005D5B16    jne         005D5C95
 005D5B1C    mov         dl,1
 005D5B1E    mov         eax,[006428B0];TStringList
 005D5B23    call        TObject.Create;TStringList.Create
 005D5B28    mov         edx,dword ptr [ebp-4]
 005D5B2B    mov         dword ptr [edx+34],eax
 005D5B2E    mov         eax,dword ptr [ebp-4]
 005D5B31    add         eax,38
 005D5B34    call        @LStrClr
 005D5B39    lea         eax,[ebp-11C]
 005D5B3F    push        eax
 005D5B40    push        40
 005D5B42    call        USER32.GetKeyboardLayoutList
 005D5B47    mov         dword ptr [ebp-0C],eax
 005D5B4A    mov         eax,dword ptr [ebp-0C]
 005D5B4D    dec         eax
 005D5B4E    test        eax,eax
>005D5B50    jl          005D5C7E
 005D5B56    inc         eax
 005D5B57    mov         dword ptr [ebp-1C],eax
 005D5B5A    mov         dword ptr [ebp-10],0
 005D5B61    mov         eax,dword ptr [ebp-10]
 005D5B64    mov         eax,dword ptr [ebp+eax*4-11C]
 005D5B6B    call        00602194
 005D5B70    test        al,al
>005D5B72    je          005D5C72
 005D5B78    lea         eax,[ebp-18]
 005D5B7B    push        eax
 005D5B7C    push        20019
 005D5B81    push        0
 005D5B83    push        0
 005D5B85    mov         eax,dword ptr [ebp-10]
 005D5B88    mov         eax,dword ptr [ebp+eax*4-11C]
 005D5B8F    mov         dword ptr [ebp-264],eax
 005D5B95    mov         byte ptr [ebp-260],0
 005D5B9C    lea         ecx,[ebp-264]
 005D5BA2    mov         edx,5D5CC8
 005D5BA7    lea         eax,[ebp-25C]
 005D5BAD    call        00658F08
 005D5BB2    push        eax
 005D5BB3    push        80000002
 005D5BB8    call        ADVAPI32.RegOpenKeyExA
 005D5BBD    test        eax,eax
>005D5BBF    jne         005D5C72
 005D5BC5    xor         eax,eax
 005D5BC7    push        ebp
 005D5BC8    push        5D5C6B
 005D5BCD    push        dword ptr fs:[eax]
 005D5BD0    mov         dword ptr fs:[eax],esp
 005D5BD3    mov         dword ptr [ebp-14],100
 005D5BDA    lea         eax,[ebp-14]
 005D5BDD    push        eax
 005D5BDE    lea         eax,[ebp-21C]
 005D5BE4    push        eax
 005D5BE5    push        0
 005D5BE7    push        0
 005D5BE9    push        5D5D00
 005D5BEE    mov         eax,dword ptr [ebp-18]
 005D5BF1    push        eax
 005D5BF2    call        ADVAPI32.RegQueryValueExA
 005D5BF7    test        eax,eax
>005D5BF9    jne         005D5C54
 005D5BFB    lea         eax,[ebp-268]
 005D5C01    lea         edx,[ebp-21C]
 005D5C07    mov         ecx,100
 005D5C0C    call        @LStrFromArray
 005D5C11    mov         edx,dword ptr [ebp-268]
 005D5C17    mov         eax,dword ptr [ebp-10]
 005D5C1A    mov         ecx,dword ptr [ebp+eax*4-11C]
 005D5C21    mov         eax,dword ptr [ebp-4]
 005D5C24    mov         eax,dword ptr [eax+34]
 005D5C27    mov         ebx,dword ptr [eax]
 005D5C29    call        dword ptr [ebx+3C]
 005D5C2C    mov         eax,dword ptr [ebp-10]
 005D5C2F    mov         eax,dword ptr [ebp+eax*4-11C]
 005D5C36    mov         edx,dword ptr [ebp-4]
 005D5C39    cmp         eax,dword ptr [edx+3C]
>005D5C3C    jne         005D5C54
 005D5C3E    mov         eax,dword ptr [ebp-4]
 005D5C41    add         eax,38
 005D5C44    lea         edx,[ebp-21C]
 005D5C4A    mov         ecx,100
 005D5C4F    call        @LStrFromArray
 005D5C54    xor         eax,eax
 005D5C56    pop         edx
 005D5C57    pop         ecx
 005D5C58    pop         ecx
 005D5C59    mov         dword ptr fs:[eax],edx
 005D5C5C    push        5D5C72
 005D5C61    mov         eax,dword ptr [ebp-18]
 005D5C64    push        eax
 005D5C65    call        ADVAPI32.RegCloseKey
 005D5C6A    ret
>005D5C6B    jmp         @HandleFinally
>005D5C70    jmp         005D5C61
 005D5C72    inc         dword ptr [ebp-10]
 005D5C75    dec         dword ptr [ebp-1C]
>005D5C78    jne         005D5B61
 005D5C7E    mov         eax,dword ptr [ebp-4]
 005D5C81    mov         eax,dword ptr [eax+34]
 005D5C84    mov         byte ptr [eax+1D],0
 005D5C88    mov         eax,dword ptr [ebp-4]
 005D5C8B    mov         eax,dword ptr [eax+34]
 005D5C8E    mov         dl,1
 005D5C90    call        0064859C
 005D5C95    mov         eax,dword ptr [ebp-4]
 005D5C98    mov         eax,dword ptr [eax+34]
 005D5C9B    mov         dword ptr [ebp-8],eax
 005D5C9E    xor         eax,eax
 005D5CA0    pop         edx
 005D5CA1    pop         ecx
 005D5CA2    pop         ecx
 005D5CA3    mov         dword ptr fs:[eax],edx
 005D5CA6    push        5D5CBE
 005D5CAB    lea         eax,[ebp-268]
 005D5CB1    call        @LStrClr
 005D5CB6    ret
>005D5CB7    jmp         @HandleFinally
>005D5CBC    jmp         005D5CAB
 005D5CBE    mov         eax,dword ptr [ebp-8]
 005D5CC1    pop         ebx
 005D5CC2    mov         esp,ebp
 005D5CC4    pop         ebp
 005D5CC5    ret
end;*}

//005D5D0C
{*procedure sub_005D5D0C(?:TScreen; ?:?);
begin
 005D5D0C    push        ebp
 005D5D0D    mov         ebp,esp
 005D5D0F    add         esp,0FFFFFFF8
 005D5D12    mov         dword ptr [ebp-8],edx
 005D5D15    mov         dword ptr [ebp-4],eax
 005D5D18    mov         eax,dword ptr [ebp-4]
 005D5D1B    call        005D5AEC
 005D5D20    mov         eax,dword ptr [ebp-8]
 005D5D23    mov         edx,dword ptr [ebp-4]
 005D5D26    mov         edx,dword ptr [edx+38];TScreen.FDefaultIme:String
 005D5D29    call        @LStrAsg
 005D5D2E    pop         ecx
 005D5D2F    pop         ecx
 005D5D30    pop         ebp
 005D5D31    ret
end;*}

//005D5DD0
{*function sub_005D5DD0(?:TScreen; ?:TCursor):?;
begin
 005D5DD0    push        ebp
 005D5DD1    mov         ebp,esp
 005D5DD3    add         esp,0FFFFFFF0
 005D5DD6    mov         dword ptr [ebp-8],edx
 005D5DD9    mov         dword ptr [ebp-4],eax
 005D5DDC    xor         eax,eax
 005D5DDE    mov         dword ptr [ebp-0C],eax
 005D5DE1    cmp         dword ptr [ebp-8],0FFFFFFFF
>005D5DE5    je          005D5E25
 005D5DE7    mov         eax,dword ptr [ebp-4]
 005D5DEA    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 005D5DED    mov         dword ptr [ebp-10],eax
>005D5DF0    jmp         005D5DFA
 005D5DF2    mov         eax,dword ptr [ebp-10]
 005D5DF5    mov         eax,dword ptr [eax]
 005D5DF7    mov         dword ptr [ebp-10],eax
 005D5DFA    cmp         dword ptr [ebp-10],0
>005D5DFE    je          005D5E0B
 005D5E00    mov         eax,dword ptr [ebp-10]
 005D5E03    mov         eax,dword ptr [eax+4]
 005D5E06    cmp         eax,dword ptr [ebp-8]
>005D5E09    jne         005D5DF2
 005D5E0B    cmp         dword ptr [ebp-10],0
>005D5E0F    jne         005D5E1C
 005D5E11    mov         eax,dword ptr [ebp-4]
 005D5E14    mov         eax,dword ptr [eax+60];TScreen.FDefaultCursor:HCURSOR
 005D5E17    mov         dword ptr [ebp-0C],eax
>005D5E1A    jmp         005D5E25
 005D5E1C    mov         eax,dword ptr [ebp-10]
 005D5E1F    mov         eax,dword ptr [eax+8]
 005D5E22    mov         dword ptr [ebp-0C],eax
 005D5E25    mov         eax,dword ptr [ebp-0C]
 005D5E28    mov         esp,ebp
 005D5E2A    pop         ebp
 005D5E2B    ret
end;*}

//005D5E2C
procedure sub_005D5E2C(?:TScreen; ?:TCursor);
begin
{*
 005D5E2C    push        ebp
 005D5E2D    mov         ebp,esp
 005D5E2F    add         esp,0FFFFFFE8
 005D5E32    push        ebx
 005D5E33    mov         word ptr [ebp-6],dx
 005D5E37    mov         dword ptr [ebp-4],eax
 005D5E3A    mov         ax,word ptr [ebp-6]
 005D5E3E    mov         edx,dword ptr [ebp-4]
 005D5E41    cmp         ax,word ptr [edx+44];TScreen.FCursor:TCursor
>005D5E45    je          005D5EDD
 005D5E4B    mov         ax,word ptr [ebp-6]
 005D5E4F    mov         edx,dword ptr [ebp-4]
 005D5E52    mov         word ptr [edx+44],ax;TScreen.FCursor:TCursor
 005D5E56    cmp         word ptr [ebp-6],0
>005D5E5B    jne         005D5ECB
 005D5E5D    lea         eax,[ebp-0E]
 005D5E60    push        eax
 005D5E61    call        USER32.GetCursorPos
 005D5E66    push        dword ptr [ebp-0A]
 005D5E69    push        dword ptr [ebp-0E]
 005D5E6C    call        USER32.WindowFromPoint
 005D5E71    mov         dword ptr [ebp-14],eax
 005D5E74    cmp         dword ptr [ebp-14],0
>005D5E78    je          005D5ECB
 005D5E7A    push        0
 005D5E7C    mov         eax,dword ptr [ebp-14]
 005D5E7F    push        eax
 005D5E80    call        USER32.GetWindowThreadProcessId
 005D5E85    mov         ebx,eax
 005D5E87    call        KERNEL32.GetCurrentThreadId
 005D5E8C    cmp         ebx,eax
>005D5E8E    jne         005D5ECB
 005D5E90    lea         eax,[ebp-0E]
 005D5E93    call        0063D074
 005D5E98    push        eax
 005D5E99    push        0
 005D5E9B    push        84
 005D5EA0    mov         eax,dword ptr [ebp-14]
 005D5EA3    push        eax
 005D5EA4    call        USER32.SendMessageA
 005D5EA9    mov         dword ptr [ebp-18],eax
 005D5EAC    mov         dx,200
 005D5EB0    mov         ax,word ptr [ebp-18]
 005D5EB4    call        0063CEE0
 005D5EB9    push        eax
 005D5EBA    mov         eax,dword ptr [ebp-14]
 005D5EBD    push        eax
 005D5EBE    push        20
 005D5EC0    mov         eax,dword ptr [ebp-14]
 005D5EC3    push        eax
 005D5EC4    call        USER32.SendMessageA
>005D5EC9    jmp         005D5EE3
 005D5ECB    movsx       edx,word ptr [ebp-6]
 005D5ECF    mov         eax,dword ptr [ebp-4]
 005D5ED2    call        005D5DD0
 005D5ED7    push        eax
 005D5ED8    call        USER32.SetCursor
 005D5EDD    mov         eax,dword ptr [ebp-4]
 005D5EE0    inc         dword ptr [eax+48];TScreen.FCursorCount:Integer
 005D5EE3    pop         ebx
 005D5EE4    mov         esp,ebp
 005D5EE6    pop         ebp
 005D5EE7    ret
*}
end;

//005D5EE8
{*procedure sub_005D5EE8(?:TScreen; ?:?; ?:HICON);
begin
 005D5EE8    push        ebp
 005D5EE9    mov         ebp,esp
 005D5EEB    add         esp,0FFFFFFF4
 005D5EEE    mov         dword ptr [ebp-0C],ecx
 005D5EF1    mov         dword ptr [ebp-8],edx
 005D5EF4    mov         dword ptr [ebp-4],eax
 005D5EF7    cmp         dword ptr [ebp-8],0
>005D5EFB    jne         005D5F22
 005D5EFD    cmp         dword ptr [ebp-0C],0
>005D5F01    jne         005D5F17
 005D5F03    push        7F00
 005D5F08    push        0
 005D5F0A    call        USER32.LoadCursorA
 005D5F0F    mov         edx,dword ptr [ebp-4]
 005D5F12    mov         dword ptr [edx+60],eax;TScreen.FDefaultCursor:HCURSOR
>005D5F15    jmp         005D5F47
 005D5F17    mov         eax,dword ptr [ebp-0C]
 005D5F1A    mov         edx,dword ptr [ebp-4]
 005D5F1D    mov         dword ptr [edx+60],eax;TScreen.FDefaultCursor:HCURSOR
>005D5F20    jmp         005D5F47
 005D5F22    cmp         dword ptr [ebp-8],0FFFFFFFF
>005D5F26    je          005D5F47
 005D5F28    mov         edx,dword ptr [ebp-8]
 005D5F2B    mov         eax,dword ptr [ebp-4]
 005D5F2E    call        005D59CC
 005D5F33    cmp         dword ptr [ebp-0C],0
>005D5F37    je          005D5F47
 005D5F39    mov         ecx,dword ptr [ebp-0C]
 005D5F3C    mov         edx,dword ptr [ebp-8]
 005D5F3F    mov         eax,dword ptr [ebp-4]
 005D5F42    call        005D5AA4
 005D5F47    mov         esp,ebp
 005D5F49    pop         ebp
 005D5F4A    ret
end;*}

//005D5F4C
procedure sub_005D5F4C(?:TScreen);
begin
{*
 005D5F4C    push        ebp
 005D5F4D    mov         ebp,esp
 005D5F4F    add         esp,0FFFFFE68
 005D5F55    mov         dword ptr [ebp-4],eax
 005D5F58    mov         byte ptr [ebp-5],0
 005D5F5C    cmp         dword ptr ds:[6ECD7C],0;Application:TApplication
>005D5F63    je          005D5F73
 005D5F65    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D5F6A    mov         al,byte ptr [eax+88];TApplication.FShowHint:Boolean
 005D5F70    mov         byte ptr [ebp-5],al
 005D5F73    xor         eax,eax
 005D5F75    push        ebp
 005D5F76    push        5D60A9
 005D5F7B    push        dword ptr fs:[eax]
 005D5F7E    mov         dword ptr fs:[eax],esp
 005D5F81    cmp         dword ptr ds:[6ECD7C],0;Application:TApplication
>005D5F88    je          005D5F96
 005D5F8A    xor         edx,edx
 005D5F8C    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D5F91    call        005D8ACC
 005D5F96    push        0
 005D5F98    lea         eax,[ebp-41]
 005D5F9B    push        eax
 005D5F9C    push        3C
 005D5F9E    push        1F
 005D5FA0    call        USER32.SystemParametersInfoA
 005D5FA5    test        eax,eax
>005D5FA7    je          005D5FC4
 005D5FA9    lea         eax,[ebp-41]
 005D5FAC    push        eax
 005D5FAD    call        GDI32.CreateFontIndirectA
 005D5FB2    mov         edx,eax
 005D5FB4    mov         eax,dword ptr [ebp-4]
 005D5FB7    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 005D5FBD    call        005C01BC
>005D5FC2    jmp         005D5FDB
 005D5FC4    push        0D
 005D5FC6    call        GDI32.GetStockObject
 005D5FCB    mov         edx,eax
 005D5FCD    mov         eax,dword ptr [ebp-4]
 005D5FD0    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 005D5FD6    call        005C01BC
 005D5FDB    mov         dword ptr [ebp-195],154
 005D5FE5    push        0
 005D5FE7    lea         eax,[ebp-195]
 005D5FED    push        eax
 005D5FEE    push        0
 005D5FF0    push        29
 005D5FF2    call        USER32.SystemParametersInfoA
 005D5FF7    test        eax,eax
>005D5FF9    je          005D6035
 005D5FFB    lea         eax,[ebp-0B9]
 005D6001    push        eax
 005D6002    call        GDI32.CreateFontIndirectA
 005D6007    mov         edx,eax
 005D6009    mov         eax,dword ptr [ebp-4]
 005D600C    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 005D6012    call        005C01BC
 005D6017    lea         eax,[ebp-0F5]
 005D601D    push        eax
 005D601E    call        GDI32.CreateFontIndirectA
 005D6023    mov         edx,eax
 005D6025    mov         eax,dword ptr [ebp-4]
 005D6028    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D602E    call        005C01BC
>005D6033    jmp         005D605F
 005D6035    mov         eax,dword ptr [ebp-4]
 005D6038    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 005D603E    mov         edx,8
 005D6043    call        TFont.SetSize
 005D6048    push        0D
 005D604A    call        GDI32.GetStockObject
 005D604F    mov         edx,eax
 005D6051    mov         eax,dword ptr [ebp-4]
 005D6054    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D605A    call        005C01BC
 005D605F    mov         eax,dword ptr [ebp-4]
 005D6062    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 005D6068    mov         edx,80000017
 005D606D    call        TFont.SetColor
 005D6072    mov         eax,dword ptr [ebp-4]
 005D6075    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005D607B    mov         edx,80000007
 005D6080    call        TFont.SetColor
 005D6085    xor         eax,eax
 005D6087    pop         edx
 005D6088    pop         ecx
 005D6089    pop         ecx
 005D608A    mov         dword ptr fs:[eax],edx
 005D608D    push        5D60B0
 005D6092    cmp         dword ptr ds:[6ECD7C],0;Application:TApplication
>005D6099    je          005D60A8
 005D609B    mov         dl,byte ptr [ebp-5]
 005D609E    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D60A3    call        005D8ACC
 005D60A8    ret
>005D60A9    jmp         @HandleFinally
>005D60AE    jmp         005D6092
 005D60B0    mov         esp,ebp
 005D60B2    pop         ebp
 005D60B3    ret
*}
end;

//005D60B4
procedure sub_005D60B4(?:TScreen);
begin
{*
 005D60B4    push        ebp
 005D60B5    mov         ebp,esp
 005D60B7    push        ecx
 005D60B8    mov         dword ptr [ebp-4],eax
 005D60BB    mov         eax,dword ptr [ebp-4]
 005D60BE    inc         word ptr [eax+8C]
 005D60C5    pop         ecx
 005D60C6    pop         ebp
 005D60C7    ret
*}
end;

//005D60C8
procedure sub_005D60C8(?:TScreen);
begin
{*
 005D60C8    push        ebp
 005D60C9    mov         ebp,esp
 005D60CB    push        ecx
 005D60CC    mov         dword ptr [ebp-4],eax
 005D60CF    mov         eax,dword ptr [ebp-4]
 005D60D2    dec         word ptr [eax+8C]
 005D60D9    mov         eax,dword ptr [ebp-4]
 005D60DC    cmp         word ptr [eax+8C],0
>005D60E4    jne         005D60FA
 005D60E6    mov         eax,dword ptr [ebp-4]
 005D60E9    test        byte ptr [eax+8E],10
>005D60F0    je          005D60FA
 005D60F2    mov         eax,dword ptr [ebp-4]
 005D60F5    call        005D6100
 005D60FA    pop         ecx
 005D60FB    pop         ebp
 005D60FC    ret
*}
end;

//005D6100
{*procedure sub_005D6100(?:?);
begin
 005D6100    push        ebp
 005D6101    mov         ebp,esp
 005D6103    push        ecx
 005D6104    mov         dword ptr [ebp-4],eax
 005D6107    xor         edx,edx
 005D6109    mov         eax,dword ptr [ebp-4]
 005D610C    call        005D6624
 005D6111    pop         ecx
 005D6112    pop         ebp
 005D6113    ret
end;*}

//005D6114
{*function sub_005D6114(?:?; ?:?; ?:?):?;
begin
 005D6114    push        ebp
 005D6115    mov         ebp,esp
 005D6117    add         esp,0FFFFFFF4
 005D611A    mov         byte ptr [ebp-9],cl
 005D611D    mov         dword ptr [ebp-8],edx
 005D6120    mov         dword ptr [ebp-4],eax
 005D6123    mov         byte ptr [ebp-0A],0
 005D6127    mov         al,byte ptr [ebp-9]
 005D612A    dec         al
>005D612C    je          005D613C
 005D612E    dec         al
>005D6130    je          005D614E
 005D6132    dec         al
>005D6134    je          005D616E
 005D6136    dec         al
>005D6138    je          005D6180
>005D613A    jmp         005D619E
 005D613C    mov         eax,dword ptr [ebp-8]
 005D613F    mov         eax,dword ptr [eax+44]
 005D6142    mov         edx,dword ptr [ebp-4]
 005D6145    cmp         eax,dword ptr [edx+44]
 005D6148    setg        byte ptr [ebp-0A]
>005D614C    jmp         005D619E
 005D614E    mov         eax,dword ptr [ebp-8]
 005D6151    mov         eax,dword ptr [eax+44]
 005D6154    mov         edx,dword ptr [ebp-8]
 005D6157    add         eax,dword ptr [edx+4C]
 005D615A    mov         edx,dword ptr [ebp-4]
 005D615D    mov         edx,dword ptr [edx+44]
 005D6160    mov         ecx,dword ptr [ebp-4]
 005D6163    add         edx,dword ptr [ecx+4C]
 005D6166    cmp         eax,edx
 005D6168    setl        byte ptr [ebp-0A]
>005D616C    jmp         005D619E
 005D616E    mov         eax,dword ptr [ebp-8]
 005D6171    mov         eax,dword ptr [eax+40]
 005D6174    mov         edx,dword ptr [ebp-4]
 005D6177    cmp         eax,dword ptr [edx+40]
 005D617A    setg        byte ptr [ebp-0A]
>005D617E    jmp         005D619E
 005D6180    mov         eax,dword ptr [ebp-8]
 005D6183    mov         eax,dword ptr [eax+40]
 005D6186    mov         edx,dword ptr [ebp-8]
 005D6189    add         eax,dword ptr [edx+48]
 005D618C    mov         edx,dword ptr [ebp-4]
 005D618F    mov         edx,dword ptr [edx+40]
 005D6192    mov         ecx,dword ptr [ebp-4]
 005D6195    add         edx,dword ptr [ecx+48]
 005D6198    cmp         eax,edx
 005D619A    setl        byte ptr [ebp-0A]
 005D619E    mov         al,byte ptr [ebp-0A]
 005D61A1    mov         esp,ebp
 005D61A3    pop         ebp
 005D61A4    ret
end;*}

//005D61A8
{*procedure sub_005D61A8(?:?; ?:?; ?:?);
begin
 005D61A8    push        ebp
 005D61A9    mov         ebp,esp
 005D61AB    add         esp,0FFFFFFE8
 005D61AE    push        ebx
 005D61AF    mov         byte ptr [ebp-5],dl
 005D61B2    mov         dword ptr [ebp-4],eax
 005D61B5    mov         eax,dword ptr [ebp+8]
 005D61B8    mov         eax,dword ptr [eax-4]
 005D61BB    mov         eax,dword ptr [eax+8]
 005D61BE    mov         edx,dword ptr [ebp+8]
 005D61C1    mov         edx,dword ptr [edx-4]
 005D61C4    sub         eax,dword ptr [edx]
 005D61C6    mov         dword ptr [ebp-14],eax
 005D61C9    cmp         dword ptr [ebp-14],0
>005D61CD    jl          005D61D8
 005D61CF    mov         al,byte ptr [ebp-5]
 005D61D2    add         al,0FD
 005D61D4    sub         al,2
>005D61D6    jae         005D61E1
 005D61D8    mov         eax,dword ptr [ebp-4]
 005D61DB    mov         eax,dword ptr [eax+48]
 005D61DE    mov         dword ptr [ebp-14],eax
 005D61E1    mov         eax,dword ptr [ebp+8]
 005D61E4    mov         eax,dword ptr [eax-4]
 005D61E7    mov         eax,dword ptr [eax+0C]
 005D61EA    mov         edx,dword ptr [ebp+8]
 005D61ED    mov         edx,dword ptr [edx-4]
 005D61F0    sub         eax,dword ptr [edx+4]
 005D61F3    mov         dword ptr [ebp-18],eax
 005D61F6    cmp         dword ptr [ebp-18],0
>005D61FA    jl          005D6204
 005D61FC    mov         al,byte ptr [ebp-5]
 005D61FF    dec         eax
 005D6200    sub         al,2
>005D6202    jae         005D620D
 005D6204    mov         eax,dword ptr [ebp-4]
 005D6207    mov         eax,dword ptr [eax+4C]
 005D620A    mov         dword ptr [ebp-18],eax
 005D620D    cmp         byte ptr [ebp-5],1
>005D6211    jne         005D6241
 005D6213    mov         eax,dword ptr [ebp-4]
 005D6216    cmp         byte ptr [eax+22B],2
>005D621D    jne         005D6241
 005D621F    mov         eax,dword ptr [ebp-4]
 005D6222    mov         eax,dword ptr [eax+40]
 005D6225    mov         dword ptr [ebp-0C],eax
 005D6228    mov         eax,dword ptr [ebp-4]
 005D622B    mov         eax,dword ptr [eax+44]
 005D622E    mov         dword ptr [ebp-10],eax
 005D6231    push        3D
 005D6233    mov         eax,[006EA000];^gvar_006ECEF4
 005D6238    mov         eax,dword ptr [eax]
 005D623A    call        eax
 005D623C    mov         dword ptr [ebp-14],eax
>005D623F    jmp         005D6258
 005D6241    mov         eax,dword ptr [ebp+8]
 005D6244    mov         eax,dword ptr [eax-4]
 005D6247    mov         eax,dword ptr [eax]
 005D6249    mov         dword ptr [ebp-0C],eax
 005D624C    mov         eax,dword ptr [ebp+8]
 005D624F    mov         eax,dword ptr [eax-4]
 005D6252    mov         eax,dword ptr [eax+4]
 005D6255    mov         dword ptr [ebp-10],eax
 005D6258    mov         al,byte ptr [ebp-5]
 005D625B    dec         al
>005D625D    je          005D626D
 005D625F    dec         al
>005D6261    je          005D627B
 005D6263    dec         al
>005D6265    je          005D6295
 005D6267    dec         al
>005D6269    je          005D62A2
>005D626B    jmp         005D62BA
 005D626D    mov         eax,dword ptr [ebp+8]
 005D6270    mov         eax,dword ptr [eax-4]
 005D6273    mov         edx,dword ptr [ebp-18]
 005D6276    add         dword ptr [eax+4],edx
>005D6279    jmp         005D62BA
 005D627B    mov         eax,dword ptr [ebp+8]
 005D627E    mov         eax,dword ptr [eax-4]
 005D6281    mov         edx,dword ptr [ebp-18]
 005D6284    sub         dword ptr [eax+0C],edx
 005D6287    mov         eax,dword ptr [ebp+8]
 005D628A    mov         eax,dword ptr [eax-4]
 005D628D    mov         eax,dword ptr [eax+0C]
 005D6290    mov         dword ptr [ebp-10],eax
>005D6293    jmp         005D62BA
 005D6295    mov         eax,dword ptr [ebp+8]
 005D6298    mov         eax,dword ptr [eax-4]
 005D629B    mov         edx,dword ptr [ebp-14]
 005D629E    add         dword ptr [eax],edx
>005D62A0    jmp         005D62BA
 005D62A2    mov         eax,dword ptr [ebp+8]
 005D62A5    mov         eax,dword ptr [eax-4]
 005D62A8    mov         edx,dword ptr [ebp-14]
 005D62AB    sub         dword ptr [eax+8],edx
 005D62AE    mov         eax,dword ptr [ebp+8]
 005D62B1    mov         eax,dword ptr [eax-4]
 005D62B4    mov         eax,dword ptr [eax+8]
 005D62B7    mov         dword ptr [ebp-0C],eax
 005D62BA    mov         eax,dword ptr [ebp-14]
 005D62BD    push        eax
 005D62BE    mov         eax,dword ptr [ebp-18]
 005D62C1    push        eax
 005D62C2    mov         ecx,dword ptr [ebp-10]
 005D62C5    mov         edx,dword ptr [ebp-0C]
 005D62C8    mov         eax,dword ptr [ebp-4]
 005D62CB    mov         ebx,dword ptr [eax]
 005D62CD    call        dword ptr [ebx+84]
 005D62D3    mov         eax,dword ptr [ebp-4]
 005D62D6    cmp         byte ptr [eax+22B],2
>005D62DD    jne         005D62EB
 005D62DF    mov         eax,dword ptr [ebp-0C]
 005D62E2    sub         dword ptr [ebp-14],eax
 005D62E5    mov         eax,dword ptr [ebp-10]
 005D62E8    sub         dword ptr [ebp-18],eax
 005D62EB    mov         eax,dword ptr [ebp-4]
 005D62EE    mov         eax,dword ptr [eax+48]
 005D62F1    cmp         eax,dword ptr [ebp-14]
>005D62F4    jne         005D6305
 005D62F6    mov         eax,dword ptr [ebp-4]
 005D62F9    mov         eax,dword ptr [eax+4C]
 005D62FC    cmp         eax,dword ptr [ebp-18]
>005D62FF    je          005D63A5
 005D6305    xor         eax,eax
 005D6307    mov         al,byte ptr [ebp-5]
 005D630A    cmp         eax,5
>005D630D    ja          005D63A5
 005D6313    jmp         dword ptr [eax*4+5D631A]
 005D6313    dd          005D63A5
 005D6313    dd          005D6332
 005D6313    dd          005D6346
 005D6313    dd          005D635A
 005D6313    dd          005D636D
 005D6313    dd          005D6381
 005D6332    mov         eax,dword ptr [ebp-18]
 005D6335    mov         edx,dword ptr [ebp-4]
 005D6338    sub         eax,dword ptr [edx+4C]
 005D633B    mov         edx,dword ptr [ebp+8]
 005D633E    mov         edx,dword ptr [edx-4]
 005D6341    sub         dword ptr [edx+4],eax
>005D6344    jmp         005D63A5
 005D6346    mov         eax,dword ptr [ebp-18]
 005D6349    mov         edx,dword ptr [ebp-4]
 005D634C    sub         eax,dword ptr [edx+4C]
 005D634F    mov         edx,dword ptr [ebp+8]
 005D6352    mov         edx,dword ptr [edx-4]
 005D6355    add         dword ptr [edx+0C],eax
>005D6358    jmp         005D63A5
 005D635A    mov         eax,dword ptr [ebp-14]
 005D635D    mov         edx,dword ptr [ebp-4]
 005D6360    sub         eax,dword ptr [edx+48]
 005D6363    mov         edx,dword ptr [ebp+8]
 005D6366    mov         edx,dword ptr [edx-4]
 005D6369    sub         dword ptr [edx],eax
>005D636B    jmp         005D63A5
 005D636D    mov         eax,dword ptr [ebp-14]
 005D6370    mov         edx,dword ptr [ebp-4]
 005D6373    sub         eax,dword ptr [edx+48]
 005D6376    mov         edx,dword ptr [ebp+8]
 005D6379    mov         edx,dword ptr [edx-4]
 005D637C    add         dword ptr [edx+8],eax
>005D637F    jmp         005D63A5
 005D6381    mov         eax,dword ptr [ebp-14]
 005D6384    mov         edx,dword ptr [ebp-4]
 005D6387    sub         eax,dword ptr [edx+48]
 005D638A    mov         edx,dword ptr [ebp+8]
 005D638D    mov         edx,dword ptr [edx-4]
 005D6390    add         dword ptr [edx+8],eax
 005D6393    mov         eax,dword ptr [ebp-18]
 005D6396    mov         edx,dword ptr [ebp-4]
 005D6399    sub         eax,dword ptr [edx+4C]
 005D639C    mov         edx,dword ptr [ebp+8]
 005D639F    mov         edx,dword ptr [edx-4]
 005D63A2    add         dword ptr [edx+0C],eax
 005D63A5    pop         ebx
 005D63A6    mov         esp,ebp
 005D63A8    pop         ebp
 005D63A9    ret
end;*}

//005D63AC
procedure DoAlign(AAlign:TAlign);
begin
{*
 005D63AC    push        ebp
 005D63AD    mov         ebp,esp
 005D63AF    add         esp,0FFFFFFEC
 005D63B2    mov         byte ptr [ebp-1],al
 005D63B5    mov         eax,dword ptr [ebp+8]
 005D63B8    mov         eax,dword ptr [eax-8]
 005D63BB    mov         edx,dword ptr [eax]
 005D63BD    call        dword ptr [edx+8]
 005D63C0    mov         eax,dword ptr [ebp+8]
 005D63C3    cmp         dword ptr [eax-0C],0
>005D63C7    je          005D641B
 005D63C9    mov         eax,dword ptr [ebp+8]
 005D63CC    mov         eax,dword ptr [eax-0C]
 005D63CF    cmp         dword ptr [eax+30],0
>005D63D3    jne         005D641B
 005D63D5    mov         eax,dword ptr [ebp+8]
 005D63D8    mov         eax,dword ptr [eax-0C]
 005D63DB    test        byte ptr [eax+1C],10
>005D63DF    jne         005D641B
 005D63E1    mov         eax,dword ptr [ebp+8]
 005D63E4    mov         eax,dword ptr [eax-0C]
 005D63E7    cmp         byte ptr [eax+57],0
>005D63EB    je          005D641B
 005D63ED    mov         eax,dword ptr [ebp+8]
 005D63F0    mov         eax,dword ptr [eax-0C]
 005D63F3    mov         al,byte ptr [eax+5B]
 005D63F6    cmp         al,byte ptr [ebp-1]
>005D63F9    jne         005D641B
 005D63FB    mov         eax,dword ptr [ebp+8]
 005D63FE    mov         eax,dword ptr [eax-0C]
 005D6401    cmp         byte ptr [eax+22B],1
>005D6408    je          005D641B
 005D640A    mov         eax,dword ptr [ebp+8]
 005D640D    mov         edx,dword ptr [eax-0C]
 005D6410    mov         eax,dword ptr [ebp+8]
 005D6413    mov         eax,dword ptr [eax-8]
 005D6416    call        TList.Add
 005D641B    mov         eax,dword ptr [ebp+8]
 005D641E    mov         eax,dword ptr [eax-10]
 005D6421    call        005D5740
 005D6426    dec         eax
 005D6427    test        eax,eax
>005D6429    jl          005D64E5
 005D642F    inc         eax
 005D6430    mov         dword ptr [ebp-14],eax
 005D6433    mov         dword ptr [ebp-8],0
 005D643A    mov         eax,dword ptr [ebp+8]
 005D643D    mov         eax,dword ptr [eax-10]
 005D6440    mov         edx,dword ptr [ebp-8]
 005D6443    call        005D571C
 005D6448    mov         dword ptr [ebp-10],eax
 005D644B    mov         eax,dword ptr [ebp-10]
 005D644E    cmp         dword ptr [eax+30],0
>005D6452    jne         005D64D9
 005D6458    mov         eax,dword ptr [ebp-10]
 005D645B    mov         al,byte ptr [eax+5B]
 005D645E    cmp         al,byte ptr [ebp-1]
>005D6461    jne         005D64D9
 005D6463    mov         eax,dword ptr [ebp-10]
 005D6466    test        byte ptr [eax+1C],10
>005D646A    jne         005D64D9
 005D646C    mov         eax,dword ptr [ebp-10]
 005D646F    cmp         byte ptr [eax+57],0
>005D6473    je          005D64D9
 005D6475    mov         eax,dword ptr [ebp-10]
 005D6478    cmp         byte ptr [eax+22B],1
>005D647F    je          005D64D9
 005D6481    mov         eax,dword ptr [ebp+8]
 005D6484    mov         eax,dword ptr [eax-0C]
 005D6487    cmp         eax,dword ptr [ebp-10]
>005D648A    je          005D64D9
 005D648C    xor         eax,eax
 005D648E    mov         dword ptr [ebp-0C],eax
>005D6491    jmp         005D6496
 005D6493    inc         dword ptr [ebp-0C]
 005D6496    mov         eax,dword ptr [ebp+8]
 005D6499    mov         eax,dword ptr [eax-8]
 005D649C    mov         eax,dword ptr [eax+8]
 005D649F    cmp         eax,dword ptr [ebp-0C]
>005D64A2    jle         005D64C8
 005D64A4    mov         eax,dword ptr [ebp+8]
 005D64A7    push        eax
 005D64A8    mov         eax,dword ptr [ebp+8]
 005D64AB    mov         eax,dword ptr [eax-8]
 005D64AE    mov         edx,dword ptr [ebp-0C]
 005D64B1    call        TList.Get
 005D64B6    mov         edx,eax
 005D64B8    mov         cl,byte ptr [ebp-1]
 005D64BB    mov         eax,dword ptr [ebp-10]
 005D64BE    call        005D6114
 005D64C3    pop         ecx
 005D64C4    test        al,al
>005D64C6    je          005D6493
 005D64C8    mov         eax,dword ptr [ebp+8]
 005D64CB    mov         eax,dword ptr [eax-8]
 005D64CE    mov         ecx,dword ptr [ebp-10]
 005D64D1    mov         edx,dword ptr [ebp-0C]
 005D64D4    call        TList.Insert
 005D64D9    inc         dword ptr [ebp-8]
 005D64DC    dec         dword ptr [ebp-14]
>005D64DF    jne         005D643A
 005D64E5    mov         eax,dword ptr [ebp+8]
 005D64E8    mov         eax,dword ptr [eax-8]
 005D64EB    mov         eax,dword ptr [eax+8]
 005D64EE    dec         eax
 005D64EF    test        eax,eax
>005D64F1    jl          005D6521
 005D64F3    inc         eax
 005D64F4    mov         dword ptr [ebp-14],eax
 005D64F7    mov         dword ptr [ebp-8],0
 005D64FE    mov         eax,dword ptr [ebp+8]
 005D6501    push        eax
 005D6502    mov         eax,dword ptr [ebp+8]
 005D6505    mov         eax,dword ptr [eax-8]
 005D6508    mov         edx,dword ptr [ebp-8]
 005D650B    call        TList.Get
 005D6510    mov         dl,byte ptr [ebp-1]
 005D6513    call        005D61A8
 005D6518    pop         ecx
 005D6519    inc         dword ptr [ebp-8]
 005D651C    dec         dword ptr [ebp-14]
>005D651F    jne         005D64FE
 005D6521    mov         esp,ebp
 005D6523    pop         ebp
 005D6524    ret
*}
end;

//005D6528
function AlignWork:Boolean;
begin
{*
 005D6528    push        ebp
 005D6529    mov         ebp,esp
 005D652B    add         esp,0FFFFFFF4
 005D652E    mov         byte ptr [ebp-1],1
 005D6532    mov         eax,dword ptr [ebp+8]
 005D6535    mov         eax,dword ptr [eax-10]
 005D6538    call        005D5740
 005D653D    dec         eax
 005D653E    cmp         eax,0
>005D6541    jl          005D6590
 005D6543    mov         dword ptr [ebp-8],eax
 005D6546    mov         eax,dword ptr [ebp+8]
 005D6549    mov         eax,dword ptr [eax-10]
 005D654C    mov         edx,dword ptr [ebp-8]
 005D654F    call        005D571C
 005D6554    mov         dword ptr [ebp-0C],eax
 005D6557    mov         eax,dword ptr [ebp-0C]
 005D655A    cmp         dword ptr [eax+30],0
>005D655E    jne         005D6587
 005D6560    mov         eax,dword ptr [ebp-0C]
 005D6563    test        byte ptr [eax+1C],10
>005D6567    jne         005D6587
 005D6569    mov         eax,dword ptr [ebp-0C]
 005D656C    cmp         byte ptr [eax+5B],0
>005D6570    je          005D6587
 005D6572    mov         eax,dword ptr [ebp-0C]
 005D6575    cmp         byte ptr [eax+57],0
>005D6579    je          005D6587
 005D657B    mov         eax,dword ptr [ebp-0C]
 005D657E    cmp         byte ptr [eax+22B],1
>005D6585    jne         005D6594
 005D6587    dec         dword ptr [ebp-8]
 005D658A    cmp         dword ptr [ebp-8],0FFFFFFFF
>005D658E    jne         005D6546
 005D6590    mov         byte ptr [ebp-1],0
 005D6594    mov         al,byte ptr [ebp-1]
 005D6597    mov         esp,ebp
 005D6599    pop         ebp
 005D659A    ret
*}
end;

//005D659C
procedure TScreen.AlignForms(AForm:TCustomForm; var Rect:TRect);
begin
{*
 005D659C    push        ebp
 005D659D    mov         ebp,esp
 005D659F    add         esp,0FFFFFFF0
 005D65A2    mov         dword ptr [ebp-4],ecx
 005D65A5    mov         dword ptr [ebp-0C],edx
 005D65A8    mov         dword ptr [ebp-10],eax
 005D65AB    push        ebp
 005D65AC    call        AlignWork
 005D65B1    pop         ecx
 005D65B2    test        al,al
>005D65B4    je          005D661D
 005D65B6    mov         dl,1
 005D65B8    mov         eax,[006422A4];TList
 005D65BD    call        TObject.Create
 005D65C2    mov         dword ptr [ebp-8],eax
 005D65C5    xor         eax,eax
 005D65C7    push        ebp
 005D65C8    push        5D6616
 005D65CD    push        dword ptr fs:[eax]
 005D65D0    mov         dword ptr fs:[eax],esp
 005D65D3    push        ebp
 005D65D4    mov         al,1
 005D65D6    call        DoAlign
 005D65DB    pop         ecx
 005D65DC    push        ebp
 005D65DD    mov         al,2
 005D65DF    call        DoAlign
 005D65E4    pop         ecx
 005D65E5    push        ebp
 005D65E6    mov         al,3
 005D65E8    call        DoAlign
 005D65ED    pop         ecx
 005D65EE    push        ebp
 005D65EF    mov         al,4
 005D65F1    call        DoAlign
 005D65F6    pop         ecx
 005D65F7    push        ebp
 005D65F8    mov         al,5
 005D65FA    call        DoAlign
 005D65FF    pop         ecx
 005D6600    xor         eax,eax
 005D6602    pop         edx
 005D6603    pop         ecx
 005D6604    pop         ecx
 005D6605    mov         dword ptr fs:[eax],edx
 005D6608    push        5D661D
 005D660D    mov         eax,dword ptr [ebp-8]
 005D6610    call        TObject.Free
 005D6615    ret
>005D6616    jmp         @HandleFinally
>005D661B    jmp         005D660D
 005D661D    mov         esp,ebp
 005D661F    pop         ebp
 005D6620    ret
*}
end;

//005D6624
procedure sub_005D6624(?:TScreen; ?:TCustomForm);
begin
{*
 005D6624    push        ebp
 005D6625    mov         ebp,esp
 005D6627    add         esp,0FFFFFFE8
 005D662A    mov         dword ptr [ebp-8],edx
 005D662D    mov         dword ptr [ebp-4],eax
 005D6630    mov         eax,dword ptr [ebp-4]
 005D6633    cmp         word ptr [eax+8C],0;TScreen.FAlignLevel:Word
>005D663B    je          005D664A
 005D663D    mov         eax,dword ptr [ebp-4]
 005D6640    or          word ptr [eax+8E],10;TScreen.FControlState:TControlState
>005D6648    jmp         005D66A5
 005D664A    mov         eax,dword ptr [ebp-4]
 005D664D    call        005D60B4
 005D6652    xor         eax,eax
 005D6654    push        ebp
 005D6655    push        5D669E
 005D665A    push        dword ptr fs:[eax]
 005D665D    mov         dword ptr fs:[eax],esp
 005D6660    push        0
 005D6662    lea         eax,[ebp-18]
 005D6665    push        eax
 005D6666    push        0
 005D6668    push        30
 005D666A    call        USER32.SystemParametersInfoA
 005D666F    lea         ecx,[ebp-18]
 005D6672    mov         edx,dword ptr [ebp-8]
 005D6675    mov         eax,dword ptr [ebp-4]
 005D6678    call        TScreen.AlignForms
 005D667D    xor         eax,eax
 005D667F    pop         edx
 005D6680    pop         ecx
 005D6681    pop         ecx
 005D6682    mov         dword ptr fs:[eax],edx
 005D6685    push        5D66A5
 005D668A    mov         eax,dword ptr [ebp-4]
 005D668D    and         word ptr [eax+8E],0FFFFFFEF;TScreen.FControlState:TControlState
 005D6695    mov         eax,dword ptr [ebp-4]
 005D6698    call        005D60C8
 005D669D    ret
>005D669E    jmp         @HandleFinally
>005D66A3    jmp         005D668A
 005D66A5    mov         esp,ebp
 005D66A7    pop         ebp
 005D66A8    ret
*}
end;

//005D66AC
procedure sub_005D66AC(?:TScreen);
begin
{*
 005D66AC    push        ebp
 005D66AD    mov         ebp,esp
 005D66AF    push        ecx
 005D66B0    mov         dword ptr [ebp-4],eax
 005D66B3    mov         eax,dword ptr [ebp-4]
 005D66B6    add         eax,30
 005D66B9    call        FreeAndNil
 005D66BE    pop         ecx
 005D66BF    pop         ebp
 005D66C0    ret
*}
end;

//005D66C4
{*procedure sub_005D66C4(?:TControl; ?:?);
begin
 005D66C4    push        ebp
 005D66C5    mov         ebp,esp
 005D66C7    add         esp,0FFFFFFF8
 005D66CA    mov         dword ptr [ebp-8],edx
 005D66CD    mov         dword ptr [ebp-4],eax
 005D66D0    cmp         dword ptr [ebp-4],0
>005D66D4    je          005D6706
 005D66D6    mov         eax,dword ptr [ebp-4]
 005D66D9    cmp         dword ptr [eax+80],0
>005D66E0    jne         005D66ED
 005D66E2    mov         eax,dword ptr [ebp-4]
 005D66E5    mov         eax,dword ptr [eax+30]
 005D66E8    mov         dword ptr [ebp-4],eax
>005D66EB    jmp         005D6700
 005D66ED    mov         eax,dword ptr [ebp-8]
 005D66F0    mov         edx,dword ptr [ebp-4]
 005D66F3    mov         edx,dword ptr [edx+80]
 005D66F9    call        @LStrAsg
>005D66FE    jmp         005D670E
 005D6700    cmp         dword ptr [ebp-4],0
>005D6704    jne         005D66D6
 005D6706    mov         eax,dword ptr [ebp-8]
 005D6709    call        @LStrClr
 005D670E    pop         ecx
 005D670F    pop         ecx
 005D6710    pop         ebp
 005D6711    ret
end;*}

//005D6714
{*function sub_005D6714(?:?):?;
begin
 005D6714    push        ebp
 005D6715    mov         ebp,esp
 005D6717    add         esp,0FFFFFFF8
 005D671A    mov         dword ptr [ebp-4],eax
 005D671D    mov         eax,dword ptr [ebp-4]
 005D6720    mov         dword ptr [ebp-8],eax
>005D6723    jmp         005D672E
 005D6725    mov         eax,dword ptr [ebp-8]
 005D6728    mov         eax,dword ptr [eax+30]
 005D672B    mov         dword ptr [ebp-8],eax
 005D672E    cmp         dword ptr [ebp-8],0
>005D6732    je          005D6740
 005D6734    mov         eax,dword ptr [ebp-8]
 005D6737    cmp         byte ptr [eax+99],0
>005D673E    je          005D6725
 005D6740    cmp         dword ptr [ebp-8],0
>005D6744    je          005D6754
 005D6746    mov         eax,dword ptr [ebp-8]
 005D6749    test        byte ptr [eax+1C],10
>005D674D    je          005D6754
 005D674F    xor         eax,eax
 005D6751    mov         dword ptr [ebp-8],eax
 005D6754    mov         eax,dword ptr [ebp-8]
 005D6757    pop         ecx
 005D6758    pop         ecx
 005D6759    pop         ebp
 005D675A    ret
end;*}

//005D675C
procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;
begin
{*
 005D675C    push        ebp
 005D675D    mov         ebp,esp
 005D675F    push        ebx
 005D6760    push        esi
 005D6761    push        edi
 005D6762    cmp         dword ptr ds:[6ECD7C],0;Application:TApplication
>005D6769    je          005D67A7
 005D676B    xor         eax,eax
 005D676D    push        ebp
 005D676E    push        5D678D
 005D6773    push        dword ptr fs:[eax]
 005D6776    mov         dword ptr fs:[eax],esp
 005D6779    mov         eax,[006ECD7C];Application:TApplication
 005D677E    call        TApplication.HintTimerExpired
 005D6783    xor         eax,eax
 005D6785    pop         edx
 005D6786    pop         ecx
 005D6787    pop         ecx
 005D6788    mov         dword ptr fs:[eax],edx
>005D678B    jmp         005D67A7
>005D678D    jmp         @HandleAnyException
 005D6792    mov         edx,dword ptr ds:[6ECD7C];Application:TApplication
 005D6798    mov         eax,[006ECD7C];Application:TApplication
 005D679D    call        TApplication.HandleException
 005D67A2    call        @DoneExcept
 005D67A7    pop         edi
 005D67A8    pop         esi
 005D67A9    pop         ebx
 005D67AA    pop         ebp
 005D67AB    ret         10
*}
end;

//005D6854
procedure sub_005D6854;
begin
{*
 005D6854    push        ebp
 005D6855    mov         ebp,esp
 005D6857    push        ecx
 005D6858    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D685D    cmp         byte ptr [eax+0A5],0;TApplication.FRunning:Boolean
>005D6864    jne         005D68CB
 005D6866    cmp         dword ptr ds:[6ECD94],0;HintHook:HHOOK
>005D686D    jne         005D6889
 005D686F    call        KERNEL32.GetCurrentThreadId
 005D6874    push        eax
 005D6875    push        0
 005D6877    mov         eax,5D6810
 005D687C    push        eax
 005D687D    push        3
 005D687F    call        USER32.SetWindowsHookExA
 005D6884    mov         [006ECD94],eax;HintHook:HHOOK
 005D6889    cmp         dword ptr ds:[6ECD90],0;HintDoneEvent:THandle
>005D6890    jne         005D68A4
 005D6892    push        0
 005D6894    push        0
 005D6896    push        0
 005D6898    push        0
 005D689A    call        KERNEL32.CreateEventA
 005D689F    mov         [006ECD90],eax;HintDoneEvent:THandle
 005D68A4    cmp         dword ptr ds:[6ECD98],0;HintThread:THandle
>005D68AB    jne         005D68CB
 005D68AD    lea         eax,[ebp-4]
 005D68B0    push        eax
 005D68B1    push        0
 005D68B3    push        0
 005D68B5    push        5D67B0
 005D68BA    push        3E8
 005D68BF    push        0
 005D68C1    call        KERNEL32.CreateThread
 005D68C6    mov         [006ECD98],eax;HintThread:THandle
 005D68CB    pop         ecx
 005D68CC    pop         ebp
 005D68CD    ret
*}
end;

//005D68D0
procedure UnhookHintHooks;
begin
{*
 005D68D0    cmp         dword ptr ds:[6ECD94],0;HintHook:HHOOK
>005D68D7    je          005D68E4
 005D68D9    mov         eax,[006ECD94];HintHook:HHOOK
 005D68DE    push        eax
 005D68DF    call        USER32.UnhookWindowsHookEx
 005D68E4    xor         eax,eax
 005D68E6    mov         [006ECD94],eax;HintHook:HHOOK
 005D68EB    cmp         dword ptr ds:[6ECD98],0;HintThread:THandle
>005D68F2    je          005D692B
 005D68F4    mov         eax,[006ECD90];HintDoneEvent:THandle
 005D68F9    push        eax
 005D68FA    call        KERNEL32.SetEvent
 005D68FF    call        KERNEL32.GetCurrentThreadId
 005D6904    cmp         eax,dword ptr ds:[6ECD8C];HintThreadID:DWORD
>005D690A    je          005D6919
 005D690C    push        0FF
 005D690E    mov         eax,[006ECD98];HintThread:THandle
 005D6913    push        eax
 005D6914    call        KERNEL32.WaitForSingleObject
 005D6919    mov         eax,[006ECD98];HintThread:THandle
 005D691E    push        eax
 005D691F    call        KERNEL32.CloseHandle
 005D6924    xor         eax,eax
 005D6926    mov         [006ECD98],eax;HintThread:THandle
 005D692B    ret
*}
end;

//005D692C
{*function sub_005D692C:?;
begin
 005D692C    push        ebp
 005D692D    mov         ebp,esp
 005D692F    add         esp,0FFFFFFF4
 005D6932    mov         dword ptr [ebp-9],8
 005D6939    push        0
 005D693B    lea         eax,[ebp-9]
 005D693E    push        eax
 005D693F    push        8
 005D6941    push        48
 005D6943    call        USER32.SystemParametersInfoA
 005D6948    test        eax,eax
>005D694A    je          005D6956
 005D694C    cmp         dword ptr [ebp-5],0
 005D6950    setne       byte ptr [ebp-1]
>005D6954    jmp         005D695A
 005D6956    mov         byte ptr [ebp-1],0
 005D695A    mov         al,byte ptr [ebp-1]
 005D695D    mov         esp,ebp
 005D695F    pop         ebp
 005D6960    ret
end;*}

//005D6964
{*procedure sub_005D6964(?:?);
begin
 005D6964    push        ebp
 005D6965    mov         ebp,esp
 005D6967    add         esp,0FFFFFFF4
 005D696A    mov         byte ptr [ebp-1],al
 005D696D    mov         dword ptr [ebp-9],8
 005D6974    cmp         byte ptr [ebp-1],1
 005D6978    cmc
 005D6979    sbb         eax,eax
 005D697B    mov         dword ptr [ebp-5],eax
 005D697E    push        0
 005D6980    lea         eax,[ebp-9]
 005D6983    push        eax
 005D6984    push        8
 005D6986    push        49
 005D6988    call        USER32.SystemParametersInfoA
 005D698D    mov         esp,ebp
 005D698F    pop         ebp
 005D6990    ret
end;*}

//005D6994
{*procedure sub_005D6994(?:HWND; ?:?);
begin
 005D6994    push        ebp
 005D6995    mov         ebp,esp
 005D6997    add         esp,0FFFFFFF4
 005D699A    mov         dword ptr [ebp-8],edx
 005D699D    mov         dword ptr [ebp-4],eax
 005D69A0    call        005D692C
 005D69A5    mov         byte ptr [ebp-9],al
 005D69A8    cmp         byte ptr [ebp-9],0
>005D69AC    je          005D69B5
 005D69AE    xor         eax,eax
 005D69B0    call        005D6964
 005D69B5    mov         eax,dword ptr [ebp-8]
 005D69B8    push        eax
 005D69B9    mov         eax,dword ptr [ebp-4]
 005D69BC    push        eax
 005D69BD    call        USER32.ShowWindow
 005D69C2    cmp         byte ptr [ebp-9],0
>005D69C6    je          005D69CF
 005D69C8    mov         al,1
 005D69CA    call        005D6964
 005D69CF    mov         esp,ebp
 005D69D1    pop         ebp
 005D69D2    ret
end;*}

//005D6A3C
{*function sub_005D6A3C(?:TScreen; ?:word; ?:?):?;
begin
 005D6A3C    push        ebp
 005D6A3D    mov         ebp,esp
 005D6A3F    add         esp,0FFFFFFF0
 005D6A42    mov         byte ptr [ebp-9],cl
 005D6A45    mov         dword ptr [ebp-8],edx
 005D6A48    mov         dword ptr [ebp-4],eax
 005D6A4B    xor         eax,eax
 005D6A4D    mov         al,byte ptr [ebp-9]
 005D6A50    mov         eax,dword ptr [eax*4+6E40C8]
 005D6A57    push        eax
 005D6A58    mov         eax,dword ptr [ebp-8]
 005D6A5B    push        dword ptr [eax+4]
 005D6A5E    push        dword ptr [eax]
 005D6A60    mov         eax,[006EA008];^gvar_006ECF00
 005D6A65    mov         eax,dword ptr [eax]
 005D6A67    call        eax
 005D6A69    mov         edx,eax
 005D6A6B    mov         eax,dword ptr [ebp-4]
 005D6A6E    call        005D5A48
 005D6A73    mov         dword ptr [ebp-10],eax
 005D6A76    mov         eax,dword ptr [ebp-10]
 005D6A79    mov         esp,ebp
 005D6A7B    pop         ebp
 005D6A7C    ret
end;*}

//005D6A80
constructor _NF__A31;
begin
{*
 005D6A80    push        esp
 005D6A81    inc         ecx
>005D6A82    jo          005D6AF4
 005D6A84    ins         byte ptr [edi],dl
 005D6A85    imul        esp,dword ptr [ebx+61],6E6F6974
 005D6A8C    add         byte ptr [eax],al
 005D6A8E    add         byte ptr [eax],al
 005D6A90    push        ebp
 005D6A91    mov         ebp,esp
 005D6A93    add         esp,0FFFFFEF0
 005D6A99    test        dl,dl
>005D6A9B    je          005D6AA5
 005D6A9D    add         esp,0FFFFFFF0
 005D6AA0    call        @ClassCreate
 005D6AA5    mov         dword ptr [ebp-0C],ecx
 005D6AA8    mov         byte ptr [ebp-5],dl
 005D6AAB    mov         dword ptr [ebp-4],eax
 005D6AAE    mov         ecx,dword ptr [ebp-0C]
 005D6AB1    xor         edx,edx
 005D6AB3    mov         eax,dword ptr [ebp-4]
 005D6AB6    call        TComponent.Create
 005D6ABB    mov         eax,[006EA030];^gvar_006E4810
 005D6AC0    cmp         word ptr [eax+2],0
>005D6AC5    jne         005D6AD8
 005D6AC7    mov         eax,[006EA030];^gvar_006E4810
 005D6ACC    mov         edx,dword ptr [ebp-4]
 005D6ACF    mov         dword ptr [eax+4],edx
 005D6AD2    mov         dword ptr [eax],5D8544;TApplication.HandleException
 005D6AD8    mov         eax,[006EA034];^gvar_006E4818
 005D6ADD    cmp         word ptr [eax+2],0
>005D6AE2    jne         005D6AF5
 005D6AE4    mov         eax,[006EA034];^gvar_006E4818
 005D6AE9    mov         edx,dword ptr [ebp-4]
 005D6AEC    mov         dword ptr [eax+4],edx
 005D6AEF    mov         dword ptr [eax],5D874C;sub_005D874C
 005D6AF5    mov         eax,dword ptr [ebp-4]
 005D6AF8    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 005D6AFC    mov         dl,1
 005D6AFE    mov         eax,[006422A4];TList
 005D6B03    call        TObject.Create;TList.Create
 005D6B08    mov         edx,dword ptr [ebp-4]
 005D6B0B    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 005D6B11    mov         dl,1
 005D6B13    mov         eax,[006422A4];TList
 005D6B18    call        TObject.Create;TList.Create
 005D6B1D    mov         edx,dword ptr [ebp-4]
 005D6B20    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 005D6B26    mov         eax,dword ptr [ebp-4]
 005D6B29    xor         edx,edx
 005D6B2B    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 005D6B2E    mov         eax,dword ptr [ebp-4]
 005D6B31    xor         edx,edx
 005D6B33    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 005D6B39    mov         eax,dword ptr [ebp-4]
 005D6B3C    mov         dword ptr [eax+5C],80000018;TApplication.FHintColor:TColor
 005D6B43    mov         eax,dword ptr [ebp-4]
 005D6B46    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 005D6B4D    mov         eax,dword ptr [ebp-4]
 005D6B50    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 005D6B54    mov         eax,dword ptr [ebp-4]
 005D6B57    xor         edx,edx
 005D6B59    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 005D6B5F    mov         eax,dword ptr [ebp-4]
 005D6B62    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 005D6B69    mov         eax,dword ptr [ebp-4]
 005D6B6C    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 005D6B73    mov         eax,dword ptr [ebp-4]
 005D6B76    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 005D6B7D    mov         eax,dword ptr [ebp-4]
 005D6B80    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 005D6B87    mov         dl,1
 005D6B89    mov         eax,[005BEF18];TIcon
 005D6B8E    call        TIcon.Create;TIcon.Create
 005D6B93    mov         edx,dword ptr [ebp-4]
 005D6B96    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 005D6B9C    push        5D6CD4
 005D6BA1    mov         eax,[006EA2CC];^gvar_006ED2F4
 005D6BA6    mov         eax,dword ptr [eax]
 005D6BA8    push        eax
 005D6BA9    call        USER32.LoadIconA
 005D6BAE    mov         edx,eax
 005D6BB0    mov         eax,dword ptr [ebp-4]
 005D6BB3    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D6BB9    call        005C92A8
 005D6BBE    mov         eax,dword ptr [ebp-4]
 005D6BC1    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D6BC7    mov         edx,dword ptr [ebp-4]
 005D6BCA    mov         dword ptr [eax+14],edx;TIcon.?f14:TPicture
 005D6BCD    mov         dword ptr [eax+10],5D8DF8;TIcon.FOnChange:TNotifyEvent
 005D6BD4    push        100
 005D6BD9    lea         eax,[ebp-110]
 005D6BDF    push        eax
 005D6BE0    mov         eax,[006EA2CC];^gvar_006ED2F4
 005D6BE5    mov         eax,dword ptr [eax]
 005D6BE7    push        eax
 005D6BE8    call        KERNEL32.GetModuleFileNameA
 005D6BED    lea         eax,[ebp-110]
 005D6BF3    push        eax
 005D6BF4    lea         eax,[ebp-110]
 005D6BFA    push        eax
 005D6BFB    call        USER32.OemToCharA
 005D6C00    lea         eax,[ebp-110]
 005D6C06    mov         dl,5C
 005D6C08    call        0065D73C
 005D6C0D    mov         dword ptr [ebp-10],eax
 005D6C10    cmp         dword ptr [ebp-10],0
>005D6C14    je          005D6C25
 005D6C16    mov         edx,dword ptr [ebp-10]
 005D6C19    inc         edx
 005D6C1A    lea         eax,[ebp-110]
 005D6C20    call        StrCopy
 005D6C25    lea         eax,[ebp-110]
 005D6C2B    mov         dl,2E
 005D6C2D    call        0065D78C
 005D6C32    mov         dword ptr [ebp-10],eax
 005D6C35    cmp         dword ptr [ebp-10],0
>005D6C39    je          005D6C41
 005D6C3B    mov         eax,dword ptr [ebp-10]
 005D6C3E    mov         byte ptr [eax],0
 005D6C41    lea         eax,[ebp-110]
 005D6C47    inc         eax
 005D6C48    push        eax
 005D6C49    call        USER32.CharLowerA
 005D6C4E    mov         eax,dword ptr [ebp-4]
 005D6C51    add         eax,8C;TApplication.FTitle:String
 005D6C56    lea         edx,[ebp-110]
 005D6C5C    mov         ecx,100
 005D6C61    call        @LStrFromArray
 005D6C66    mov         eax,[006EA2D4];^gvar_006ED2FC
 005D6C6B    cmp         byte ptr [eax],0
>005D6C6E    jne         005D6C78
 005D6C70    mov         eax,dword ptr [ebp-4]
 005D6C73    call        005D6E40
 005D6C78    mov         eax,dword ptr [ebp-4]
 005D6C7B    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 005D6C7F    mov         eax,dword ptr [ebp-4]
 005D6C82    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 005D6C86    mov         eax,dword ptr [ebp-4]
 005D6C89    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 005D6C8D    mov         eax,dword ptr [ebp-4]
 005D6C90    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 005D6C97    mov         eax,dword ptr [ebp-4]
 005D6C9A    xor         edx,edx
 005D6C9C    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 005D6CA2    mov         eax,dword ptr [ebp-4]
 005D6CA5    call        005D9020
 005D6CAA    mov         eax,dword ptr [ebp-4]
 005D6CAD    call        005D9C0C
 005D6CB2    mov         eax,dword ptr [ebp-4]
 005D6CB5    cmp         byte ptr [ebp-5],0
>005D6CB9    je          005D6CCA
 005D6CBB    call        @AfterConstruction
 005D6CC0    pop         dword ptr fs:[0]
 005D6CC7    add         esp,0C
 005D6CCA    mov         eax,dword ptr [ebp-4]
 005D6CCD    mov         esp,ebp
 005D6CCF    pop         ebp
 005D6CD0    ret
*}
end;

//005D6A90
constructor TApplication.Create(AOwner:TComponent);
begin
{*
 005D6A90    push        ebp
 005D6A91    mov         ebp,esp
 005D6A93    add         esp,0FFFFFEF0
 005D6A99    test        dl,dl
>005D6A9B    je          005D6AA5
 005D6A9D    add         esp,0FFFFFFF0
 005D6AA0    call        @ClassCreate
 005D6AA5    mov         dword ptr [ebp-0C],ecx
 005D6AA8    mov         byte ptr [ebp-5],dl
 005D6AAB    mov         dword ptr [ebp-4],eax
 005D6AAE    mov         ecx,dword ptr [ebp-0C]
 005D6AB1    xor         edx,edx
 005D6AB3    mov         eax,dword ptr [ebp-4]
 005D6AB6    call        TComponent.Create
 005D6ABB    mov         eax,[006EA030];^gvar_006E4810
 005D6AC0    cmp         word ptr [eax+2],0
>005D6AC5    jne         005D6AD8
 005D6AC7    mov         eax,[006EA030];^gvar_006E4810
 005D6ACC    mov         edx,dword ptr [ebp-4]
 005D6ACF    mov         dword ptr [eax+4],edx
 005D6AD2    mov         dword ptr [eax],5D8544;TApplication.HandleException
 005D6AD8    mov         eax,[006EA034];^gvar_006E4818
 005D6ADD    cmp         word ptr [eax+2],0
>005D6AE2    jne         005D6AF5
 005D6AE4    mov         eax,[006EA034];^gvar_006E4818
 005D6AE9    mov         edx,dword ptr [ebp-4]
 005D6AEC    mov         dword ptr [eax+4],edx
 005D6AEF    mov         dword ptr [eax],5D874C;sub_005D874C
 005D6AF5    mov         eax,dword ptr [ebp-4]
 005D6AF8    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 005D6AFC    mov         dl,1
 005D6AFE    mov         eax,[006422A4];TList
 005D6B03    call        TObject.Create;TList.Create
 005D6B08    mov         edx,dword ptr [ebp-4]
 005D6B0B    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 005D6B11    mov         dl,1
 005D6B13    mov         eax,[006422A4];TList
 005D6B18    call        TObject.Create;TList.Create
 005D6B1D    mov         edx,dword ptr [ebp-4]
 005D6B20    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 005D6B26    mov         eax,dword ptr [ebp-4]
 005D6B29    xor         edx,edx
 005D6B2B    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 005D6B2E    mov         eax,dword ptr [ebp-4]
 005D6B31    xor         edx,edx
 005D6B33    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 005D6B39    mov         eax,dword ptr [ebp-4]
 005D6B3C    mov         dword ptr [eax+5C],80000018;TApplication.FHintColor:TColor
 005D6B43    mov         eax,dword ptr [ebp-4]
 005D6B46    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 005D6B4D    mov         eax,dword ptr [ebp-4]
 005D6B50    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 005D6B54    mov         eax,dword ptr [ebp-4]
 005D6B57    xor         edx,edx
 005D6B59    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 005D6B5F    mov         eax,dword ptr [ebp-4]
 005D6B62    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 005D6B69    mov         eax,dword ptr [ebp-4]
 005D6B6C    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 005D6B73    mov         eax,dword ptr [ebp-4]
 005D6B76    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 005D6B7D    mov         eax,dword ptr [ebp-4]
 005D6B80    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 005D6B87    mov         dl,1
 005D6B89    mov         eax,[005BEF18];TIcon
 005D6B8E    call        TIcon.Create;TIcon.Create
 005D6B93    mov         edx,dword ptr [ebp-4]
 005D6B96    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 005D6B9C    push        5D6CD4
 005D6BA1    mov         eax,[006EA2CC];^gvar_006ED2F4
 005D6BA6    mov         eax,dword ptr [eax]
 005D6BA8    push        eax
 005D6BA9    call        USER32.LoadIconA
 005D6BAE    mov         edx,eax
 005D6BB0    mov         eax,dword ptr [ebp-4]
 005D6BB3    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D6BB9    call        005C92A8
 005D6BBE    mov         eax,dword ptr [ebp-4]
 005D6BC1    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D6BC7    mov         edx,dword ptr [ebp-4]
 005D6BCA    mov         dword ptr [eax+14],edx;TIcon.?f14:TPicture
 005D6BCD    mov         dword ptr [eax+10],5D8DF8;TIcon.FOnChange:TNotifyEvent
 005D6BD4    push        100
 005D6BD9    lea         eax,[ebp-110]
 005D6BDF    push        eax
 005D6BE0    mov         eax,[006EA2CC];^gvar_006ED2F4
 005D6BE5    mov         eax,dword ptr [eax]
 005D6BE7    push        eax
 005D6BE8    call        KERNEL32.GetModuleFileNameA
 005D6BED    lea         eax,[ebp-110]
 005D6BF3    push        eax
 005D6BF4    lea         eax,[ebp-110]
 005D6BFA    push        eax
 005D6BFB    call        USER32.OemToCharA
 005D6C00    lea         eax,[ebp-110]
 005D6C06    mov         dl,5C
 005D6C08    call        0065D73C
 005D6C0D    mov         dword ptr [ebp-10],eax
 005D6C10    cmp         dword ptr [ebp-10],0
>005D6C14    je          005D6C25
 005D6C16    mov         edx,dword ptr [ebp-10]
 005D6C19    inc         edx
 005D6C1A    lea         eax,[ebp-110]
 005D6C20    call        StrCopy
 005D6C25    lea         eax,[ebp-110]
 005D6C2B    mov         dl,2E
 005D6C2D    call        0065D78C
 005D6C32    mov         dword ptr [ebp-10],eax
 005D6C35    cmp         dword ptr [ebp-10],0
>005D6C39    je          005D6C41
 005D6C3B    mov         eax,dword ptr [ebp-10]
 005D6C3E    mov         byte ptr [eax],0
 005D6C41    lea         eax,[ebp-110]
 005D6C47    inc         eax
 005D6C48    push        eax
 005D6C49    call        USER32.CharLowerA
 005D6C4E    mov         eax,dword ptr [ebp-4]
 005D6C51    add         eax,8C;TApplication.FTitle:String
 005D6C56    lea         edx,[ebp-110]
 005D6C5C    mov         ecx,100
 005D6C61    call        @LStrFromArray
 005D6C66    mov         eax,[006EA2D4];^gvar_006ED2FC
 005D6C6B    cmp         byte ptr [eax],0
>005D6C6E    jne         005D6C78
 005D6C70    mov         eax,dword ptr [ebp-4]
 005D6C73    call        005D6E40
 005D6C78    mov         eax,dword ptr [ebp-4]
 005D6C7B    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 005D6C7F    mov         eax,dword ptr [ebp-4]
 005D6C82    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 005D6C86    mov         eax,dword ptr [ebp-4]
 005D6C89    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 005D6C8D    mov         eax,dword ptr [ebp-4]
 005D6C90    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 005D6C97    mov         eax,dword ptr [ebp-4]
 005D6C9A    xor         edx,edx
 005D6C9C    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 005D6CA2    mov         eax,dword ptr [ebp-4]
 005D6CA5    call        005D9020
 005D6CAA    mov         eax,dword ptr [ebp-4]
 005D6CAD    call        005D9C0C
 005D6CB2    mov         eax,dword ptr [ebp-4]
 005D6CB5    cmp         byte ptr [ebp-5],0
>005D6CB9    je          005D6CCA
 005D6CBB    call        @AfterConstruction
 005D6CC0    pop         dword ptr fs:[0]
 005D6CC7    add         esp,0C
 005D6CCA    mov         eax,dword ptr [ebp-4]
 005D6CCD    mov         esp,ebp
 005D6CCF    pop         ebp
 005D6CD0    ret
*}
end;

//005D6CE0
destructor TApplication.Destroy;
begin
{*
 005D6CE0    push        ebp
 005D6CE1    mov         ebp,esp
 005D6CE3    add         esp,0FFFFFFE8
 005D6CE6    call        @BeforeDestruction
 005D6CEB    mov         byte ptr [ebp-5],dl
 005D6CEE    mov         dword ptr [ebp-4],eax
 005D6CF1    mov         eax,dword ptr [ebp-4]
 005D6CF4    call        005D9C28
 005D6CF9    mov         eax,dword ptr [ebp-4]
 005D6CFC    mov         dword ptr [ebp-0C],eax
 005D6CFF    mov         dword ptr [ebp-10],5D8544;TApplication.HandleException
 005D6D06    mov         eax,[006EA030];^gvar_006E4810
 005D6D0B    mov         eax,dword ptr [eax]
 005D6D0D    cmp         eax,dword ptr [ebp-10]
>005D6D10    jne         005D6D1E
 005D6D12    mov         eax,[006EA030];^gvar_006E4810
 005D6D17    xor         edx,edx
 005D6D19    mov         dword ptr [eax],edx
 005D6D1B    mov         dword ptr [eax+4],edx
 005D6D1E    mov         eax,dword ptr [ebp-4]
 005D6D21    mov         dword ptr [ebp-14],eax
 005D6D24    mov         dword ptr [ebp-18],5D874C;sub_005D874C
 005D6D2B    mov         eax,[006EA034];^gvar_006E4818
 005D6D30    mov         eax,dword ptr [eax]
 005D6D32    cmp         eax,dword ptr [ebp-18]
>005D6D35    jne         005D6D43
 005D6D37    mov         eax,[006EA034];^gvar_006E4818
 005D6D3C    xor         edx,edx
 005D6D3E    mov         dword ptr [eax],edx
 005D6D40    mov         dword ptr [eax+4],edx
 005D6D43    mov         eax,dword ptr [ebp-4]
 005D6D46    cmp         dword ptr [eax+0A0],0;TApplication.FTestLib:THandle
>005D6D4D    je          005D6D5E
 005D6D4F    mov         eax,dword ptr [ebp-4]
 005D6D52    mov         eax,dword ptr [eax+0A0];TApplication.FTestLib:THandle
 005D6D58    push        eax
 005D6D59    call        KERNEL32.FreeLibrary
 005D6D5E    mov         eax,dword ptr [ebp-4]
 005D6D61    mov         byte ptr [eax+9D],0;TApplication.FActive:Boolean
 005D6D68    mov         eax,dword ptr [ebp-4]
 005D6D6B    call        005D92C0
 005D6D70    xor         edx,edx
 005D6D72    mov         eax,dword ptr [ebp-4]
 005D6D75    call        005D8ACC
 005D6D7A    mov         dl,byte ptr [ebp-5]
 005D6D7D    and         dl,0FC
 005D6D80    mov         eax,dword ptr [ebp-4]
 005D6D83    call        TComponent.Destroy
 005D6D88    mov         eax,dword ptr [ebp-4]
 005D6D8B    push        eax
 005D6D8C    push        5D731C;sub_005D731C
 005D6D91    mov         eax,dword ptr [ebp-4]
 005D6D94    call        005D82C8
 005D6D99    mov         eax,dword ptr [ebp-4]
 005D6D9C    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D6DA0    je          005D6DD9
 005D6DA2    mov         eax,dword ptr [ebp-4]
 005D6DA5    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>005D6DAC    je          005D6DD9
 005D6DAE    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D6DB3    cmp         byte ptr [eax],0
>005D6DB6    je          005D6DCD
 005D6DB8    push        0
 005D6DBA    push        1
 005D6DBC    push        80
 005D6DC1    mov         eax,dword ptr [ebp-4]
 005D6DC4    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6DC7    push        eax
 005D6DC8    call        USER32.SendMessageA
 005D6DCD    mov         eax,dword ptr [ebp-4]
 005D6DD0    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6DD3    push        eax
 005D6DD4    call        USER32.DestroyWindow
 005D6DD9    mov         eax,dword ptr [ebp-4]
 005D6DDC    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>005D6DE0    je          005D6DED
 005D6DE2    mov         eax,dword ptr [ebp-4]
 005D6DE5    add         eax,4C;TApplication.FHelpSystem:IHelpSystem
 005D6DE8    call        @IntfClear
 005D6DED    mov         eax,dword ptr [ebp-4]
 005D6DF0    cmp         dword ptr [eax+40],0;TApplication.FObjectInstance:Pointer
>005D6DF4    je          005D6E01
 005D6DF6    mov         eax,dword ptr [ebp-4]
 005D6DF9    mov         eax,dword ptr [eax+40];TApplication.FObjectInstance:Pointer
 005D6DFC    call        00651AB4
 005D6E01    mov         eax,dword ptr [ebp-4]
 005D6E04    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D6E0A    call        TObject.Free
 005D6E0F    mov         eax,dword ptr [ebp-4]
 005D6E12    mov         eax,dword ptr [eax+90];TApplication.FTopMostList:TList
 005D6E18    call        TObject.Free
 005D6E1D    mov         eax,dword ptr [ebp-4]
 005D6E20    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D6E26    call        TObject.Free
 005D6E2B    cmp         byte ptr [ebp-5],0
>005D6E2F    jle         005D6E39
 005D6E31    mov         eax,dword ptr [ebp-4]
 005D6E34    call        @ClassDestroy
 005D6E39    mov         esp,ebp
 005D6E3B    pop         ebp
 005D6E3C    ret
*}
end;

//005D6E40
procedure sub_005D6E40(?:TApplication);
begin
{*
 005D6E40    push        ebp
 005D6E41    mov         ebp,esp
 005D6E43    add         esp,0FFFFFFCC
 005D6E46    xor         edx,edx
 005D6E48    mov         dword ptr [ebp-34],edx
 005D6E4B    mov         dword ptr [ebp-4],eax
 005D6E4E    xor         eax,eax
 005D6E50    push        ebp
 005D6E51    push        5D7006
 005D6E56    push        dword ptr fs:[eax]
 005D6E59    mov         dword ptr fs:[eax],esp
 005D6E5C    mov         eax,dword ptr [ebp-4]
 005D6E5F    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>005D6E66    jne         005D6FF0
 005D6E6C    mov         eax,[006EA2E8];^IsConsole:Boolean
 005D6E71    cmp         byte ptr [eax],0
>005D6E74    jne         005D6FF0
 005D6E7A    mov         eax,dword ptr [ebp-4]
 005D6E7D    push        eax
 005D6E7E    push        5D7494;sub_005D7494
 005D6E83    call        006519D4
 005D6E88    mov         edx,dword ptr [ebp-4]
 005D6E8B    mov         dword ptr [edx+40],eax;TApplication.FObjectInstance:Pointer
 005D6E8E    lea         eax,[ebp-30]
 005D6E91    push        eax
 005D6E92    mov         eax,[006E40F8];^_NF__A31
 005D6E97    push        eax
 005D6E98    mov         eax,[006EA390];0x0 gvar_006EA390
 005D6E9D    push        eax
 005D6E9E    call        USER32.GetClassInfoA
 005D6EA3    test        eax,eax
>005D6EA5    jne         005D6EE1
 005D6EA7    mov         eax,[006EA390];0x0 gvar_006EA390
 005D6EAC    mov         [006E40E4],eax;gvar_006E40E4
 005D6EB1    push        6E40D4
 005D6EB6    call        USER32.RegisterClassA
 005D6EBB    test        ax,ax
>005D6EBE    jne         005D6EE1
 005D6EC0    lea         edx,[ebp-34]
 005D6EC3    mov         eax,[006E9E30];^gvar_0063CA70
 005D6EC8    call        LoadResString
 005D6ECD    mov         ecx,dword ptr [ebp-34]
 005D6ED0    mov         dl,1
 005D6ED2    mov         eax,[006421E8];EOutOfResources
 005D6ED7    call        Exception.Create;EOutOfResources.Create
 005D6EDC    call        @RaiseExcept
 005D6EE1    push        0
 005D6EE3    mov         eax,[006EA000];^gvar_006ECEF4
 005D6EE8    mov         eax,dword ptr [eax]
 005D6EEA    call        eax
 005D6EEC    sar         eax,1
>005D6EEE    jns         005D6EF3
 005D6EF0    adc         eax,0
 005D6EF3    push        eax
 005D6EF4    push        1
 005D6EF6    mov         eax,[006EA000];^gvar_006ECEF4
 005D6EFB    mov         eax,dword ptr [eax]
 005D6EFD    call        eax
 005D6EFF    sar         eax,1
>005D6F01    jns         005D6F06
 005D6F03    adc         eax,0
 005D6F06    push        eax
 005D6F07    push        0
 005D6F09    push        0
 005D6F0B    push        0
 005D6F0D    push        0
 005D6F0F    mov         eax,[006EA390];0x0 gvar_006EA390
 005D6F14    push        eax
 005D6F15    push        0
 005D6F17    mov         eax,dword ptr [ebp-4]
 005D6F1A    mov         eax,dword ptr [eax+8C];TApplication.FTitle:String
 005D6F20    call        @LStrToPChar
 005D6F25    mov         edx,eax
 005D6F27    mov         ecx,84CA0000
 005D6F2C    mov         eax,[006E40F8];^_NF__A31
 005D6F31    call        0063D0EC
 005D6F36    mov         edx,dword ptr [ebp-4]
 005D6F39    mov         dword ptr [edx+30],eax;TApplication.FHandle:HWND
 005D6F3C    mov         eax,dword ptr [ebp-4]
 005D6F3F    add         eax,8C;TApplication.FTitle:String
 005D6F44    call        @LStrClr
 005D6F49    mov         eax,dword ptr [ebp-4]
 005D6F4C    mov         byte ptr [eax+0A4],1;TApplication.FHandleCreated:Boolean
 005D6F53    mov         eax,dword ptr [ebp-4]
 005D6F56    mov         eax,dword ptr [eax+40];TApplication.FObjectInstance:Pointer
 005D6F59    push        eax
 005D6F5A    push        0FC
 005D6F5C    mov         eax,dword ptr [ebp-4]
 005D6F5F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6F62    push        eax
 005D6F63    call        USER32.SetWindowLongA
 005D6F68    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D6F6D    cmp         byte ptr [eax],0
>005D6F70    je          005D6FA5
 005D6F72    mov         eax,dword ptr [ebp-4]
 005D6F75    call        005D7BB0
 005D6F7A    push        eax
 005D6F7B    push        1
 005D6F7D    push        80
 005D6F82    mov         eax,dword ptr [ebp-4]
 005D6F85    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6F88    push        eax
 005D6F89    call        USER32.SendMessageA
 005D6F8E    mov         eax,dword ptr [ebp-4]
 005D6F91    call        005D7BB0
 005D6F96    push        eax
 005D6F97    push        0F2
 005D6F99    mov         eax,dword ptr [ebp-4]
 005D6F9C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6F9F    push        eax
 005D6FA0    call        USER32.SetClassLongA
 005D6FA5    push        0
 005D6FA7    mov         eax,dword ptr [ebp-4]
 005D6FAA    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D6FAD    push        eax
 005D6FAE    call        USER32.GetSystemMenu
 005D6FB3    mov         dword ptr [ebp-8],eax
 005D6FB6    push        0
 005D6FB8    push        0F030
 005D6FBD    mov         eax,dword ptr [ebp-8]
 005D6FC0    push        eax
 005D6FC1    call        USER32.DeleteMenu
 005D6FC6    push        0
 005D6FC8    push        0F000
 005D6FCD    mov         eax,dword ptr [ebp-8]
 005D6FD0    push        eax
 005D6FD1    call        USER32.DeleteMenu
 005D6FD6    mov         eax,[006E9DD8];^gvar_006ECDE0
 005D6FDB    cmp         byte ptr [eax],0
>005D6FDE    je          005D6FF0
 005D6FE0    push        0
 005D6FE2    push        0F010
 005D6FE7    mov         eax,dword ptr [ebp-8]
 005D6FEA    push        eax
 005D6FEB    call        USER32.DeleteMenu
 005D6FF0    xor         eax,eax
 005D6FF2    pop         edx
 005D6FF3    pop         ecx
 005D6FF4    pop         ecx
 005D6FF5    mov         dword ptr fs:[eax],edx
 005D6FF8    push        5D700D
 005D6FFD    lea         eax,[ebp-34]
 005D7000    call        @LStrClr
 005D7005    ret
>005D7006    jmp         @HandleFinally
>005D700B    jmp         005D6FFD
 005D700D    mov         esp,ebp
 005D700F    pop         ebp
 005D7010    ret
*}
end;

//005D7014
procedure sub_005D7014(?:TApplication; ?:TControl);
begin
{*
 005D7014    push        ebp
 005D7015    mov         ebp,esp
 005D7017    add         esp,0FFFFFFF8
 005D701A    mov         dword ptr [ebp-8],edx
 005D701D    mov         dword ptr [ebp-4],eax
 005D7020    mov         eax,dword ptr [ebp-4]
 005D7023    mov         eax,dword ptr [eax+44]
 005D7026    cmp         eax,dword ptr [ebp-8]
>005D7029    jne         005D7033
 005D702B    mov         eax,dword ptr [ebp-4]
 005D702E    xor         edx,edx
 005D7030    mov         dword ptr [eax+44],edx
 005D7033    mov         eax,dword ptr [ebp-4]
 005D7036    mov         eax,dword ptr [eax+48]
 005D7039    cmp         eax,dword ptr [ebp-8]
>005D703C    jne         005D7046
 005D703E    mov         eax,dword ptr [ebp-4]
 005D7041    xor         edx,edx
 005D7043    mov         dword ptr [eax+48],edx
 005D7046    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D704B    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 005D704E    cmp         eax,dword ptr [ebp-8]
>005D7051    jne         005D705D
 005D7053    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7058    xor         edx,edx
 005D705A    mov         dword ptr [eax+64],edx;TScreen.FActiveControl:TWinControl
 005D705D    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7062    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 005D7065    cmp         eax,dword ptr [ebp-8]
>005D7068    jne         005D707E
 005D706A    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D706F    xor         edx,edx
 005D7071    mov         dword ptr [eax+68],edx;TScreen.FActiveCustomForm:TCustomForm
 005D7074    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7079    xor         edx,edx
 005D707B    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 005D707E    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7083    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 005D7086    cmp         eax,dword ptr [ebp-8]
>005D7089    jne         005D7095
 005D708B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7090    xor         edx,edx
 005D7092    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 005D7095    mov         eax,dword ptr [ebp-4]
 005D7098    mov         eax,dword ptr [eax+60]
 005D709B    cmp         eax,dword ptr [ebp-8]
>005D709E    jne         005D70A8
 005D70A0    mov         eax,dword ptr [ebp-4]
 005D70A3    xor         edx,edx
 005D70A5    mov         dword ptr [eax+60],edx
 005D70A8    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D70AD    call        005D575C
 005D70B2    pop         ecx
 005D70B3    pop         ecx
 005D70B4    pop         ebp
 005D70B5    ret
*}
end;

//005D7138
{*procedure sub_005D7138(?:?; ?:?);
begin
 005D7138    push        ebp
 005D7139    mov         ebp,esp
 005D713B    add         esp,0FFFFFFEC
 005D713E    mov         byte ptr [ebp-5],dl
 005D7141    mov         dword ptr [ebp-4],eax
 005D7144    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D7149    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D714D    je          005D7202
 005D7153    mov         eax,dword ptr [ebp-4]
 005D7156    cmp         dword ptr [eax+94],0
>005D715D    jne         005D71F9
 005D7163    mov         eax,dword ptr [ebp-4]
 005D7166    mov         eax,dword ptr [eax+30]
 005D7169    mov         dword ptr [ebp-14],eax
 005D716C    mov         al,byte ptr [ebp-5]
 005D716F    mov         byte ptr [ebp-10],al
 005D7172    lea         eax,[ebp-14]
 005D7175    push        eax
 005D7176    push        5D70B8
 005D717B    call        USER32.EnumWindows
 005D7180    mov         eax,dword ptr [ebp-4]
 005D7183    mov         eax,dword ptr [eax+90]
 005D7189    cmp         dword ptr [eax+8],0
>005D718D    je          005D71F9
 005D718F    push        3
 005D7191    mov         eax,dword ptr [ebp-14]
 005D7194    push        eax
 005D7195    call        USER32.GetWindow
 005D719A    mov         dword ptr [ebp-14],eax
 005D719D    push        0EC
 005D719F    mov         eax,dword ptr [ebp-14]
 005D71A2    push        eax
 005D71A3    call        USER32.GetWindowLongA
 005D71A8    test        al,8
>005D71AA    je          005D71B3
 005D71AC    mov         dword ptr [ebp-14],0FFFFFFFE
 005D71B3    mov         eax,dword ptr [ebp-4]
 005D71B6    mov         eax,dword ptr [eax+90]
 005D71BC    mov         eax,dword ptr [eax+8]
 005D71BF    dec         eax
 005D71C0    cmp         eax,0
>005D71C3    jl          005D71F9
 005D71C5    mov         dword ptr [ebp-0C],eax
 005D71C8    push        213
 005D71CD    push        0
 005D71CF    push        0
 005D71D1    push        0
 005D71D3    push        0
 005D71D5    mov         eax,dword ptr [ebp-14]
 005D71D8    push        eax
 005D71D9    mov         edx,dword ptr [ebp-0C]
 005D71DC    mov         eax,dword ptr [ebp-4]
 005D71DF    mov         eax,dword ptr [eax+90]
 005D71E5    call        TList.Get
 005D71EA    push        eax
 005D71EB    call        USER32.SetWindowPos
 005D71F0    dec         dword ptr [ebp-0C]
 005D71F3    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005D71F7    jne         005D71C8
 005D71F9    mov         eax,dword ptr [ebp-4]
 005D71FC    inc         dword ptr [eax+94]
 005D7202    mov         esp,ebp
 005D7204    pop         ebp
 005D7205    ret
end;*}

//005D7208
procedure sub_005D7208(?:TApplication);
begin
{*
 005D7208    push        ebp
 005D7209    mov         ebp,esp
 005D720B    push        ecx
 005D720C    mov         dword ptr [ebp-4],eax
 005D720F    xor         edx,edx
 005D7211    mov         eax,dword ptr [ebp-4]
 005D7214    call        005D7138
 005D7219    pop         ecx
 005D721A    pop         ebp
 005D721B    ret
*}
end;

//005D721C
procedure sub_005D721C(?:TApplication);
begin
{*
 005D721C    push        ebp
 005D721D    mov         ebp,esp
 005D721F    push        ecx
 005D7220    mov         dword ptr [ebp-4],eax
 005D7223    mov         dl,1
 005D7225    mov         eax,dword ptr [ebp-4]
 005D7228    call        005D7138
 005D722D    pop         ecx
 005D722E    pop         ebp
 005D722F    ret
*}
end;

//005D7230
procedure sub_005D7230(?:TApplication);
begin
{*
 005D7230    push        ebp
 005D7231    mov         ebp,esp
 005D7233    add         esp,0FFFFFFF8
 005D7236    mov         dword ptr [ebp-4],eax
 005D7239    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D723E    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D7242    je          005D72B7
 005D7244    mov         eax,dword ptr [ebp-4]
 005D7247    cmp         dword ptr [eax+94],0
>005D724E    jle         005D72B7
 005D7250    mov         eax,dword ptr [ebp-4]
 005D7253    dec         dword ptr [eax+94]
 005D7259    mov         eax,dword ptr [ebp-4]
 005D725C    cmp         dword ptr [eax+94],0
>005D7263    jne         005D72B7
 005D7265    mov         eax,dword ptr [ebp-4]
 005D7268    mov         eax,dword ptr [eax+90]
 005D726E    mov         eax,dword ptr [eax+8]
 005D7271    dec         eax
 005D7272    cmp         eax,0
>005D7275    jl          005D72A9
 005D7277    mov         dword ptr [ebp-8],eax
 005D727A    push        213
 005D727F    push        0
 005D7281    push        0
 005D7283    push        0
 005D7285    push        0
 005D7287    push        0FF
 005D7289    mov         edx,dword ptr [ebp-8]
 005D728C    mov         eax,dword ptr [ebp-4]
 005D728F    mov         eax,dword ptr [eax+90]
 005D7295    call        TList.Get
 005D729A    push        eax
 005D729B    call        USER32.SetWindowPos
 005D72A0    dec         dword ptr [ebp-8]
 005D72A3    cmp         dword ptr [ebp-8],0FFFFFFFF
>005D72A7    jne         005D727A
 005D72A9    mov         eax,dword ptr [ebp-4]
 005D72AC    mov         eax,dword ptr [eax+90]
 005D72B2    mov         edx,dword ptr [eax]
 005D72B4    call        dword ptr [edx+8]
 005D72B7    pop         ecx
 005D72B8    pop         ecx
 005D72B9    pop         ebp
 005D72BA    ret
*}
end;

//005D72BC
{*function sub_005D72BC(?:?):?;
begin
 005D72BC    push        ebp
 005D72BD    mov         ebp,esp
 005D72BF    add         esp,0FFFFFFF8
 005D72C2    mov         dword ptr [ebp-4],eax
 005D72C5    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005D72CA    cmp         byte ptr [eax+0D],0
>005D72CE    je          005D72D9
 005D72D0    mov         eax,dword ptr [ebp-4]
 005D72D3    cmp         byte ptr [eax+34],0
>005D72D7    jne         005D72DD
 005D72D9    xor         eax,eax
>005D72DB    jmp         005D72DF
 005D72DD    mov         al,1
 005D72DF    mov         byte ptr [ebp-5],al
 005D72E2    mov         al,byte ptr [ebp-5]
 005D72E5    pop         ecx
 005D72E6    pop         ecx
 005D72E7    pop         ebp
 005D72E8    ret
end;*}

//005D72EC
{*function sub_005D72EC(?:TApplication):?;
begin
 005D72EC    push        ebp
 005D72ED    mov         ebp,esp
 005D72EF    add         esp,0FFFFFFF8
 005D72F2    mov         dword ptr [ebp-4],eax
 005D72F5    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005D72FA    cmp         byte ptr [eax+0D],0
>005D72FE    je          005D7309
 005D7300    mov         eax,dword ptr [ebp-4]
 005D7303    cmp         byte ptr [eax+34],1;TApplication.FBiDiMode:TBiDiMode
>005D7307    je          005D730D
 005D7309    xor         eax,eax
>005D730B    jmp         005D730F
 005D730D    mov         al,1
 005D730F    mov         byte ptr [ebp-5],al
 005D7312    mov         al,byte ptr [ebp-5]
 005D7315    pop         ecx
 005D7316    pop         ecx
 005D7317    pop         ebp
 005D7318    ret
end;*}

//005D731C
{*function sub_005D731C(?:TApplication; ?:?):?;
begin
 005D731C    push        ebp
 005D731D    mov         ebp,esp
 005D731F    add         esp,0FFFFFFF4
 005D7322    mov         dword ptr [ebp-8],edx
 005D7325    mov         dword ptr [ebp-4],eax
 005D7328    mov         byte ptr [ebp-9],0
 005D732C    mov         eax,dword ptr [ebp-8]
 005D732F    mov         eax,dword ptr [eax]
 005D7331    cmp         eax,dword ptr ds:[6ECD88];0x0 gvar_006ECD88:Longword
>005D7337    je          005D7341
 005D7339    mov         eax,dword ptr [ebp-8]
 005D733C    cmp         dword ptr [eax],1A
>005D733F    jne         005D7383
 005D7341    mov         eax,dword ptr [ebp-4]
 005D7344    cmp         byte ptr [eax+59],0
>005D7348    je          005D7359
 005D734A    push        400
 005D734F    call        KERNEL32.SetThreadLocale
 005D7354    call        0065DAAC
 005D7359    mov         eax,dword ptr [ebp-4]
 005D735C    cmp         byte ptr [eax+5A],0
>005D7360    je          005D736C
 005D7362    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7367    call        005D5F4C
 005D736C    mov         eax,dword ptr [ebp-8]
 005D736F    mov         eax,dword ptr [eax]
 005D7371    cmp         eax,dword ptr ds:[6ECD88];0x0 gvar_006ECD88:Longword
>005D7377    jne         005D7383
 005D7379    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D737E    call        005D66AC
 005D7383    mov         al,byte ptr [ebp-9]
 005D7386    mov         esp,ebp
 005D7388    pop         ebp
 005D7389    ret
end;*}

//005D738C
{*procedure sub_005D738C(?:TApplication; ?:?);
begin
 005D738C    push        ebp
 005D738D    mov         ebp,esp
 005D738F    add         esp,0FFFFFFF4
 005D7392    push        ebx
 005D7393    xor         ecx,ecx
 005D7395    mov         dword ptr [ebp-0C],ecx
 005D7398    mov         dword ptr [ebp-8],edx
 005D739B    mov         dword ptr [ebp-4],eax
 005D739E    xor         eax,eax
 005D73A0    push        ebp
 005D73A1    push        5D7400
 005D73A6    push        dword ptr fs:[eax]
 005D73A9    mov         dword ptr fs:[eax],esp
 005D73AC    mov         eax,dword ptr [ebp-4]
 005D73AF    cmp         word ptr [eax+122],0
>005D73B7    je          005D73EA
 005D73B9    lea         eax,[ebp-0C]
 005D73BC    mov         edx,dword ptr [ebp-8]
 005D73BF    mov         edx,dword ptr [edx+8]
 005D73C2    call        @LStrFromPChar
 005D73C7    mov         eax,dword ptr [ebp-0C]
 005D73CA    push        eax
 005D73CB    mov         eax,dword ptr [ebp-8]
 005D73CE    add         eax,0C
 005D73D1    push        eax
 005D73D2    mov         ecx,dword ptr [ebp-8]
 005D73D5    mov         ecx,dword ptr [ecx+4]
 005D73D8    mov         ebx,dword ptr [ebp-4]
 005D73DB    mov         edx,dword ptr [ebp-4]
 005D73DE    mov         eax,dword ptr [ebx+124]
 005D73E4    call        dword ptr [ebx+120]
 005D73EA    xor         eax,eax
 005D73EC    pop         edx
 005D73ED    pop         ecx
 005D73EE    pop         ecx
 005D73EF    mov         dword ptr fs:[eax],edx
 005D73F2    push        5D7407
 005D73F7    lea         eax,[ebp-0C]
 005D73FA    call        @LStrClr
 005D73FF    ret
>005D7400    jmp         @HandleFinally
>005D7405    jmp         005D73F7
 005D7407    pop         ebx
 005D7408    mov         esp,ebp
 005D740A    pop         ebp
 005D740B    ret
end;*}

//005D740C
procedure Default;
begin
{*
 005D740C    push        ebp
 005D740D    mov         ebp,esp
 005D740F    mov         eax,dword ptr [ebp+8]
 005D7412    mov         eax,dword ptr [eax-8]
 005D7415    mov         eax,dword ptr [eax+8]
 005D7418    push        eax
 005D7419    mov         eax,dword ptr [ebp+8]
 005D741C    mov         eax,dword ptr [eax-8]
 005D741F    mov         eax,dword ptr [eax+4]
 005D7422    push        eax
 005D7423    mov         eax,dword ptr [ebp+8]
 005D7426    mov         eax,dword ptr [eax-8]
 005D7429    mov         eax,dword ptr [eax]
 005D742B    push        eax
 005D742C    mov         eax,dword ptr [ebp+8]
 005D742F    mov         eax,dword ptr [eax-4]
 005D7432    mov         eax,dword ptr [eax+30]
 005D7435    push        eax
 005D7436    call        USER32.DefWindowProcA
 005D743B    mov         edx,dword ptr [ebp+8]
 005D743E    mov         edx,dword ptr [edx-8]
 005D7441    mov         dword ptr [edx+0C],eax
 005D7444    pop         ebp
 005D7445    ret
*}
end;

//005D7448
{*procedure sub_005D7448(?:?);
begin
 005D7448    push        ebp
 005D7449    mov         ebp,esp
 005D744B    add         esp,0FFFFFFBC
 005D744E    lea         eax,[ebp-44]
 005D7451    push        eax
 005D7452    mov         eax,dword ptr [ebp+8]
 005D7455    mov         eax,dword ptr [eax-4]
 005D7458    mov         eax,dword ptr [eax+30]
 005D745B    push        eax
 005D745C    call        USER32.BeginPaint
 005D7461    mov         dword ptr [ebp-4],eax
 005D7464    mov         eax,dword ptr [ebp+8]
 005D7467    mov         eax,dword ptr [eax-4]
 005D746A    call        005D7BB0
 005D746F    push        eax
 005D7470    push        0
 005D7472    push        0
 005D7474    mov         eax,dword ptr [ebp-4]
 005D7477    push        eax
 005D7478    call        USER32.DrawIcon
 005D747D    lea         eax,[ebp-44]
 005D7480    push        eax
 005D7481    mov         eax,dword ptr [ebp+8]
 005D7484    mov         eax,dword ptr [eax-4]
 005D7487    mov         eax,dword ptr [eax+30]
 005D748A    push        eax
 005D748B    call        USER32.EndPaint
 005D7490    mov         esp,ebp
 005D7492    pop         ebp
 005D7493    ret
end;*}

//005D7494
{*procedure sub_005D7494(?:TApplication; ?:?);
begin
 005D7494    push        ebp
 005D7495    mov         ebp,esp
 005D7497    add         esp,0FFFFFFE0
 005D749A    push        ebx
 005D749B    push        esi
 005D749C    push        edi
 005D749D    mov         dword ptr [ebp-8],edx
 005D74A0    mov         dword ptr [ebp-4],eax
 005D74A3    xor         eax,eax
 005D74A5    push        ebp
 005D74A6    push        5D7B66
 005D74AB    push        dword ptr fs:[eax]
 005D74AE    mov         dword ptr fs:[eax],esp
 005D74B1    mov         eax,dword ptr [ebp-8]
 005D74B4    xor         edx,edx
 005D74B6    mov         dword ptr [eax+0C],edx
 005D74B9    mov         eax,dword ptr [ebp-4]
 005D74BC    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D74C2    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005D74C5    dec         eax
 005D74C6    test        eax,eax
>005D74C8    jl          005D7509
 005D74CA    inc         eax
 005D74CB    mov         dword ptr [ebp-1C],eax
 005D74CE    mov         dword ptr [ebp-0C],0
 005D74D5    mov         eax,dword ptr [ebp-4]
 005D74D8    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D74DE    mov         edx,dword ptr [ebp-0C]
 005D74E1    call        TList.Get
 005D74E6    mov         ebx,eax
 005D74E8    mov         edx,dword ptr [ebp-8]
 005D74EB    mov         eax,dword ptr [ebx+4]
 005D74EE    call        dword ptr [ebx]
 005D74F0    test        al,al
>005D74F2    je          005D7501
 005D74F4    xor         eax,eax
 005D74F6    pop         edx
 005D74F7    pop         ecx
 005D74F8    pop         ecx
 005D74F9    mov         dword ptr fs:[eax],edx
>005D74FC    jmp         005D7B7B
 005D7501    inc         dword ptr [ebp-0C]
 005D7504    dec         dword ptr [ebp-1C]
>005D7507    jne         005D74D5
 005D7509    mov         edx,dword ptr [ebp-8]
 005D750C    mov         eax,dword ptr [ebp-4]
 005D750F    call        005D731C
 005D7514    mov         eax,dword ptr [ebp-8]
 005D7517    mov         eax,dword ptr [eax]
 005D7519    cmp         eax,53
>005D751C    jg          005D75D0
>005D7522    je          005D7A9A
 005D7528    cmp         eax,16
>005D752B    jg          005D7597
>005D752D    je          005D7839
 005D7533    cmp         eax,14
>005D7536    ja          005D7B55
 005D753C    jmp         dword ptr [eax*4+5D7543]
 005D753C    dd          005D7B4E
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D770B
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7793
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D76BB
 005D753C    dd          005D769E
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D7B55
 005D753C    dd          005D76E3
 005D7597    cmp         eax,1D
>005D759A    jg          005D75B9
>005D759C    je          005D7B3B
 005D75A2    sub         eax,1A
>005D75A5    je          005D7B15
 005D75AB    sub         eax,2
>005D75AE    je          005D772C
>005D75B4    jmp         005D7B55
 005D75B9    sub         eax,37
>005D75BC    je          005D76F8
 005D75C2    sub         eax,13
>005D75C5    je          005D7855
>005D75CB    jmp         005D7B55
 005D75D0    cmp         eax,0B017
>005D75D5    jg          005D761B
>005D75D7    je          005D795B
 005D75DD    cmp         eax,0B000
>005D75E2    jg          005D7602
>005D75E4    je          005D7A03
 005D75EA    sub         eax,112
>005D75EF    je          005D765D
 005D75F1    add         eax,0FFFFFFE0
 005D75F4    sub         eax,7
>005D75F7    jb          005D7809
>005D75FD    jmp         005D7B55
 005D7602    sub         eax,0B001
>005D7607    je          005D7A2B
 005D760D    sub         eax,15
>005D7610    je          005D7939
>005D7616    jmp         005D7B55
 005D761B    cmp         eax,0B020
>005D7620    jg          005D7641
>005D7622    je          005D7AB4
 005D7628    sub         eax,0B01A
>005D762D    je          005D7A53
 005D7633    sub         eax,5
>005D7636    je          005D7A9A
>005D763C    jmp         005D7B55
 005D7641    sub         eax,0B031
>005D7646    je          005D7AEA
 005D764C    add         eax,0FFFFFFF2
 005D764F    sub         eax,2
>005D7652    jb          005D7918
>005D7658    jmp         005D7B55
 005D765D    mov         eax,dword ptr [ebp-8]
 005D7660    mov         eax,dword ptr [eax+4]
 005D7663    and         eax,0FFF0
 005D7668    sub         eax,0F020
>005D766D    je          005D7678
 005D766F    sub         eax,100
>005D7674    je          005D7685
>005D7676    jmp         005D7692
 005D7678    mov         eax,dword ptr [ebp-4]
 005D767B    call        005D7BE8
>005D7680    jmp         005D7B5C
 005D7685    mov         eax,dword ptr [ebp-4]
 005D7688    call        005D7CD4
>005D768D    jmp         005D7B5C
 005D7692    push        ebp
 005D7693    call        Default
 005D7698    pop         ecx
>005D7699    jmp         005D7B5C
 005D769E    mov         eax,dword ptr [ebp-4]
 005D76A1    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D76A5    je          005D7B5C
 005D76AB    mov         eax,dword ptr [ebp-4]
 005D76AE    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D76B1    call        005D3F3C
>005D76B6    jmp         005D7B5C
 005D76BB    mov         eax,dword ptr [ebp-4]
 005D76BE    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D76C1    push        eax
 005D76C2    call        USER32.IsIconic
 005D76C7    test        eax,eax
>005D76C9    je          005D76D7
 005D76CB    push        ebp
 005D76CC    call        005D7448
 005D76D1    pop         ecx
>005D76D2    jmp         005D7B5C
 005D76D7    push        ebp
 005D76D8    call        Default
 005D76DD    pop         ecx
>005D76DE    jmp         005D7B5C
 005D76E3    mov         eax,dword ptr [ebp-8]
 005D76E6    mov         dword ptr [eax],27
 005D76EC    push        ebp
 005D76ED    call        Default
 005D76F2    pop         ecx
>005D76F3    jmp         005D7B5C
 005D76F8    mov         eax,dword ptr [ebp-4]
 005D76FB    call        005D7BB0
 005D7700    mov         edx,dword ptr [ebp-8]
 005D7703    mov         dword ptr [edx+0C],eax
>005D7706    jmp         005D7B5C
 005D770B    push        0
 005D770D    push        0
 005D770F    push        0B01A
 005D7714    mov         eax,dword ptr [ebp-4]
 005D7717    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D771A    push        eax
 005D771B    call        USER32.PostMessageA
 005D7720    push        ebp
 005D7721    call        Default
 005D7726    pop         ecx
>005D7727    jmp         005D7B5C
 005D772C    push        ebp
 005D772D    call        Default
 005D7732    pop         ecx
 005D7733    mov         eax,dword ptr [ebp-8]
 005D7736    cmp         dword ptr [eax+4],1
 005D773A    sbb         eax,eax
 005D773C    inc         eax
 005D773D    mov         edx,dword ptr [ebp-4]
 005D7740    mov         byte ptr [edx+9D],al;TApplication.FActive:Boolean
 005D7746    mov         eax,dword ptr [ebp-8]
 005D7749    cmp         dword ptr [eax+4],0
>005D774D    je          005D7771
 005D774F    mov         eax,dword ptr [ebp-4]
 005D7752    call        005D7230
 005D7757    push        0
 005D7759    push        0
 005D775B    push        0B000
 005D7760    mov         eax,dword ptr [ebp-4]
 005D7763    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7766    push        eax
 005D7767    call        USER32.PostMessageA
>005D776C    jmp         005D7B5C
 005D7771    mov         eax,dword ptr [ebp-4]
 005D7774    call        005D7208
 005D7779    push        0
 005D777B    push        0
 005D777D    push        0B001
 005D7782    mov         eax,dword ptr [ebp-4]
 005D7785    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7788    push        eax
 005D7789    call        USER32.PostMessageA
>005D778E    jmp         005D7B5C
 005D7793    mov         eax,dword ptr [ebp-8]
 005D7796    cmp         dword ptr [eax+4],0
>005D779A    je          005D77D5
 005D779C    mov         eax,dword ptr [ebp-4]
 005D779F    call        005D7230
 005D77A4    mov         eax,dword ptr [ebp-4]
 005D77A7    cmp         dword ptr [eax+0AC],0;TApplication.FWindowList:Pointer
>005D77AE    je          005D77C9
 005D77B0    mov         eax,dword ptr [ebp-4]
 005D77B3    mov         eax,dword ptr [eax+0AC];TApplication.FWindowList:Pointer
 005D77B9    call        005CCC48
 005D77BE    mov         eax,dword ptr [ebp-4]
 005D77C1    xor         edx,edx
 005D77C3    mov         dword ptr [eax+0AC],edx;TApplication.FWindowList:Pointer
 005D77C9    push        ebp
 005D77CA    call        Default
 005D77CF    pop         ecx
>005D77D0    jmp         005D7B5C
 005D77D5    push        ebp
 005D77D6    call        Default
 005D77DB    pop         ecx
 005D77DC    mov         eax,dword ptr [ebp-4]
 005D77DF    cmp         dword ptr [eax+0AC],0;TApplication.FWindowList:Pointer
>005D77E6    jne         005D77FC
 005D77E8    mov         eax,dword ptr [ebp-4]
 005D77EB    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D77EE    call        005CCB90
 005D77F3    mov         edx,dword ptr [ebp-4]
 005D77F6    mov         dword ptr [edx+0AC],eax;TApplication.FWindowList:Pointer
 005D77FC    mov         eax,dword ptr [ebp-4]
 005D77FF    call        005D721C
>005D7804    jmp         005D7B5C
 005D7809    mov         eax,dword ptr [ebp-8]
 005D780C    mov         eax,dword ptr [eax+8]
 005D780F    push        eax
 005D7810    mov         eax,dword ptr [ebp-8]
 005D7813    mov         eax,dword ptr [eax+4]
 005D7816    push        eax
 005D7817    mov         eax,dword ptr [ebp-8]
 005D781A    mov         eax,dword ptr [eax]
 005D781C    add         eax,0BC00
 005D7821    push        eax
 005D7822    mov         eax,dword ptr [ebp-8]
 005D7825    mov         eax,dword ptr [eax+8]
 005D7828    push        eax
 005D7829    call        USER32.SendMessageA
 005D782E    mov         edx,dword ptr [ebp-8]
 005D7831    mov         dword ptr [edx+0C],eax
>005D7834    jmp         005D7B5C
 005D7839    mov         eax,dword ptr [ebp-8]
 005D783C    cmp         dword ptr [eax+4],0
>005D7840    je          005D7B5C
 005D7846    mov         eax,dword ptr [ebp-4]
 005D7849    mov         byte ptr [eax+9C],1;TApplication.FTerminate:Boolean
>005D7850    jmp         005D7B5C
 005D7855    mov         eax,dword ptr [ebp-8]
 005D7858    mov         eax,dword ptr [eax+8]
 005D785B    cmp         dword ptr [eax],0DE534454
>005D7861    jne         005D7B5C
 005D7867    mov         eax,dword ptr [ebp-4]
 005D786A    cmp         byte ptr [eax+9E],0;TApplication.FAllowTesting:Boolean
>005D7871    je          005D7B5C
 005D7877    mov         eax,dword ptr [ebp-4]
 005D787A    cmp         dword ptr [eax+0A0],0;TApplication.FTestLib:THandle
>005D7881    jne         005D790B
 005D7887    mov         edx,8000
 005D788C    mov         eax,5D7B8C;'vcltest3.dll'
 005D7891    call        0065E9CC
 005D7896    mov         edx,dword ptr [ebp-4]
 005D7899    mov         dword ptr [edx+0A0],eax;TApplication.FTestLib:THandle
 005D789F    mov         eax,dword ptr [ebp-4]
 005D78A2    cmp         dword ptr [eax+0A0],0;TApplication.FTestLib:THandle
>005D78A9    je          005D78F0
 005D78AB    mov         eax,dword ptr [ebp-8]
 005D78AE    xor         edx,edx
 005D78B0    mov         dword ptr [eax+0C],edx
 005D78B3    push        5D7B9C
 005D78B8    mov         eax,dword ptr [ebp-4]
 005D78BB    mov         eax,dword ptr [eax+0A0];TApplication.FTestLib:THandle
 005D78C1    push        eax
 005D78C2    call        KERNEL32.GetProcAddress
 005D78C7    mov         dword ptr [ebp-18],eax
 005D78CA    cmp         dword ptr [ebp-18],0
>005D78CE    je          005D7B5C
 005D78D4    mov         eax,dword ptr [ebp-8]
 005D78D7    mov         eax,dword ptr [eax+8]
 005D78DA    mov         eax,dword ptr [eax+8]
 005D78DD    push        eax
 005D78DE    mov         eax,dword ptr [ebp-8]
 005D78E1    mov         eax,dword ptr [eax+8]
 005D78E4    mov         eax,dword ptr [eax+4]
 005D78E7    push        eax
 005D78E8    call        dword ptr [ebp-18]
>005D78EB    jmp         005D7B5C
 005D78F0    call        KERNEL32.GetLastError
 005D78F5    mov         edx,dword ptr [ebp-8]
 005D78F8    mov         dword ptr [edx+0C],eax
 005D78FB    mov         eax,dword ptr [ebp-4]
 005D78FE    xor         edx,edx
 005D7900    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
>005D7906    jmp         005D7B5C
 005D790B    mov         eax,dword ptr [ebp-8]
 005D790E    xor         edx,edx
 005D7910    mov         dword ptr [eax+0C],edx
>005D7913    jmp         005D7B5C
 005D7918    mov         ecx,dword ptr [ebp-8]
 005D791B    mov         ecx,dword ptr [ecx+8]
 005D791E    mov         edx,dword ptr [ebp-8]
 005D7921    mov         edx,dword ptr [edx]
 005D7923    mov         eax,dword ptr [ebp-4]
 005D7926    call        005D9A6C
 005D792B    and         eax,7F
 005D792E    mov         edx,dword ptr [ebp-8]
 005D7931    mov         dword ptr [edx+0C],eax
>005D7934    jmp         005D7B5C
 005D7939    mov         edx,dword ptr [ebp-8]
 005D793C    mov         eax,dword ptr [ebp-4]
 005D793F    call        005D80C4
 005D7944    test        al,al
>005D7946    je          005D7B5C
 005D794C    mov         eax,dword ptr [ebp-8]
 005D794F    mov         dword ptr [eax+0C],1
>005D7956    jmp         005D7B5C
 005D795B    mov         eax,dword ptr [ebp-4]
 005D795E    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D7962    je          005D7B5C
 005D7968    mov         eax,dword ptr [ebp-4]
 005D796B    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D796E    mov         dword ptr [ebp-20],eax
 005D7971    mov         eax,dword ptr [ebp-20]
 005D7974    call        TWinControl.GetHandle
 005D7979    test        eax,eax
>005D797B    je          005D7B5C
 005D7981    mov         eax,dword ptr [ebp-20]
 005D7984    call        TWinControl.GetHandle
 005D7989    push        eax
 005D798A    call        USER32.IsWindowEnabled
 005D798F    test        eax,eax
>005D7991    je          005D7B5C
 005D7997    mov         eax,dword ptr [ebp-20]
 005D799A    call        TWinControl.GetHandle
 005D799F    push        eax
 005D79A0    call        USER32.IsWindowVisible
 005D79A5    test        eax,eax
>005D79A7    je          005D7B5C
 005D79AD    mov         byte ptr ds:[6E3FDC],0;gvar_006E3FDC
 005D79B4    call        USER32.GetFocus
 005D79B9    mov         dword ptr [ebp-10],eax
 005D79BC    mov         eax,dword ptr [ebp-20]
 005D79BF    call        TWinControl.GetHandle
 005D79C4    push        eax
 005D79C5    call        USER32.SetFocus
 005D79CA    mov         eax,dword ptr [ebp-8]
 005D79CD    mov         eax,dword ptr [eax+8]
 005D79D0    push        eax
 005D79D1    mov         ecx,dword ptr [ebp-8]
 005D79D4    mov         ecx,dword ptr [ecx+4]
 005D79D7    mov         edx,112
 005D79DC    mov         eax,dword ptr [ebp-20]
 005D79DF    call        005F4FA8
 005D79E4    mov         eax,dword ptr [ebp-10]
 005D79E7    push        eax
 005D79E8    call        USER32.SetFocus
 005D79ED    mov         byte ptr ds:[6E3FDC],1;gvar_006E3FDC
 005D79F4    mov         eax,dword ptr [ebp-8]
 005D79F7    mov         dword ptr [eax+0C],1
>005D79FE    jmp         005D7B5C
 005D7A03    mov         eax,dword ptr [ebp-4]
 005D7A06    cmp         word ptr [eax+0FA],0;TApplication.?fFA:word
>005D7A0E    je          005D7B5C
 005D7A14    mov         ebx,dword ptr [ebp-4]
 005D7A17    mov         edx,dword ptr [ebp-4]
 005D7A1A    mov         eax,dword ptr [ebx+0FC];TApplication.?fFC:dword
 005D7A20    call        dword ptr [ebx+0F8];TApplication.FOnActivate
>005D7A26    jmp         005D7B5C
 005D7A2B    mov         eax,dword ptr [ebp-4]
 005D7A2E    cmp         word ptr [eax+0F2],0;TApplication.?fF2:word
>005D7A36    je          005D7B5C
 005D7A3C    mov         ebx,dword ptr [ebp-4]
 005D7A3F    mov         edx,dword ptr [ebp-4]
 005D7A42    mov         eax,dword ptr [ebx+0F4];TApplication.?fF4:dword
 005D7A48    call        dword ptr [ebx+0F0];TApplication.FOnDeactivate
>005D7A4E    jmp         005D7B5C
 005D7A53    mov         eax,dword ptr [ebp-4]
 005D7A56    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7A59    push        eax
 005D7A5A    call        USER32.IsIconic
 005D7A5F    test        eax,eax
>005D7A61    jne         005D7B5C
 005D7A67    call        USER32.GetFocus
 005D7A6C    mov         edx,dword ptr [ebp-4]
 005D7A6F    cmp         eax,dword ptr [edx+30];TApplication.FHandle:HWND
>005D7A72    jne         005D7B5C
 005D7A78    xor         eax,eax
 005D7A7A    call        005CCD14
 005D7A7F    mov         dword ptr [ebp-14],eax
 005D7A82    cmp         dword ptr [ebp-14],0
>005D7A86    je          005D7B5C
 005D7A8C    mov         eax,dword ptr [ebp-14]
 005D7A8F    push        eax
 005D7A90    call        USER32.SetFocus
>005D7A95    jmp         005D7B5C
 005D7A9A    mov         ecx,dword ptr [ebp-8]
 005D7A9D    mov         ecx,dword ptr [ecx+8]
 005D7AA0    mov         edx,dword ptr [ebp-8]
 005D7AA3    mov         dx,word ptr [edx+4]
 005D7AA7    mov         eax,dword ptr [ebp-4]
 005D7AAA    call        005D8828
>005D7AAF    jmp         005D7B5C
 005D7AB4    mov         eax,dword ptr [ebp-8]
 005D7AB7    cmp         dword ptr [eax+4],0
>005D7ABB    jne         005D7AD5
 005D7ABD    mov         eax,dword ptr [ebp-8]
 005D7AC0    mov         eax,dword ptr [eax+8]
 005D7AC3    push        dword ptr [eax+4]
 005D7AC6    push        dword ptr [eax]
 005D7AC8    mov         eax,dword ptr [ebp-4]
 005D7ACB    call        005D8250
>005D7AD0    jmp         005D7B5C
 005D7AD5    mov         eax,dword ptr [ebp-8]
 005D7AD8    mov         eax,dword ptr [eax+8]
 005D7ADB    push        dword ptr [eax+4]
 005D7ADE    push        dword ptr [eax]
 005D7AE0    mov         eax,dword ptr [ebp-4]
 005D7AE3    call        005D82C8
>005D7AE8    jmp         005D7B5C
 005D7AEA    mov         eax,dword ptr [ebp-8]
 005D7AED    cmp         dword ptr [eax+4],1
>005D7AF1    jne         005D7B04
 005D7AF3    mov         eax,dword ptr [ebp-4]
 005D7AF6    mov         eax,dword ptr [eax+0B0];TApplication.FDialogHandle:HWND
 005D7AFC    mov         edx,dword ptr [ebp-8]
 005D7AFF    mov         dword ptr [edx+0C],eax
>005D7B02    jmp         005D7B5C
 005D7B04    mov         eax,dword ptr [ebp-8]
 005D7B07    mov         eax,dword ptr [eax+8]
 005D7B0A    mov         edx,dword ptr [ebp-4]
 005D7B0D    mov         dword ptr [edx+0B0],eax;TApplication.FDialogHandle:HWND
>005D7B13    jmp         005D7B5C
 005D7B15    mov         edx,dword ptr [ebp-8]
 005D7B18    mov         edx,dword ptr [edx+4]
 005D7B1B    mov         eax,[006E9DD4];^Mouse:TMouse
 005D7B20    mov         eax,dword ptr [eax]
 005D7B22    call        00601CA0
 005D7B27    mov         edx,dword ptr [ebp-8]
 005D7B2A    mov         eax,dword ptr [ebp-4]
 005D7B2D    call        005D738C
 005D7B32    push        ebp
 005D7B33    call        Default
 005D7B38    pop         ecx
>005D7B39    jmp         005D7B5C
 005D7B3B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7B40    call        005D66AC
 005D7B45    push        ebp
 005D7B46    call        Default
 005D7B4B    pop         ecx
>005D7B4C    jmp         005D7B5C
 005D7B4E    call        CheckSynchronize
>005D7B53    jmp         005D7B5C
 005D7B55    push        ebp
 005D7B56    call        Default
 005D7B5B    pop         ecx
 005D7B5C    xor         eax,eax
 005D7B5E    pop         edx
 005D7B5F    pop         ecx
 005D7B60    pop         ecx
 005D7B61    mov         dword ptr fs:[eax],edx
>005D7B64    jmp         005D7B7B
>005D7B66    jmp         @HandleAnyException
 005D7B6B    mov         edx,dword ptr [ebp-4]
 005D7B6E    mov         eax,dword ptr [ebp-4]
 005D7B71    call        TApplication.HandleException
 005D7B76    call        @DoneExcept
 005D7B7B    pop         edi
 005D7B7C    pop         esi
 005D7B7D    pop         ebx
 005D7B7E    mov         esp,ebp
 005D7B80    pop         ebp
 005D7B81    ret
end;*}

//005D7BB0
{*function sub_005D7BB0(?:TApplication):?;
begin
 005D7BB0    push        ebp
 005D7BB1    mov         ebp,esp
 005D7BB3    add         esp,0FFFFFFF8
 005D7BB6    mov         dword ptr [ebp-4],eax
 005D7BB9    mov         eax,dword ptr [ebp-4]
 005D7BBC    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 005D7BC2    call        005C8F8C
 005D7BC7    mov         dword ptr [ebp-8],eax
 005D7BCA    cmp         dword ptr [ebp-8],0
>005D7BCE    jne         005D7BDF
 005D7BD0    push        7F00
 005D7BD5    push        0
 005D7BD7    call        USER32.LoadIconA
 005D7BDC    mov         dword ptr [ebp-8],eax
 005D7BDF    mov         eax,dword ptr [ebp-8]
 005D7BE2    pop         ecx
 005D7BE3    pop         ecx
 005D7BE4    pop         ebp
 005D7BE5    ret
end;*}

//005D7BE8
procedure sub_005D7BE8(?:TApplication);
begin
{*
 005D7BE8    push        ebp
 005D7BE9    mov         ebp,esp
 005D7BEB    push        ecx
 005D7BEC    push        ebx
 005D7BED    mov         dword ptr [ebp-4],eax
 005D7BF0    mov         eax,dword ptr [ebp-4]
 005D7BF3    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7BF6    push        eax
 005D7BF7    call        USER32.IsIconic
 005D7BFC    test        eax,eax
>005D7BFE    jne         005D7CCE
 005D7C04    mov         eax,dword ptr [ebp-4]
 005D7C07    call        005D7208
 005D7C0C    mov         eax,dword ptr [ebp-4]
 005D7C0F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7C12    push        eax
 005D7C13    call        USER32.SetActiveWindow
 005D7C18    mov         eax,dword ptr [ebp-4]
 005D7C1B    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D7C1F    je          005D7C9F
 005D7C21    mov         eax,dword ptr [ebp-4]
 005D7C24    cmp         byte ptr [eax+5B],0;TApplication.FShowMainForm:Boolean
>005D7C28    jne         005D7C36
 005D7C2A    mov         eax,dword ptr [ebp-4]
 005D7C2D    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C30    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>005D7C34    je          005D7C9F
 005D7C36    mov         eax,dword ptr [ebp-4]
 005D7C39    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C3C    call        TWinControl.GetHandle
 005D7C41    push        eax
 005D7C42    call        USER32.IsWindowEnabled
 005D7C47    test        eax,eax
>005D7C49    je          005D7C9F
 005D7C4B    push        40
 005D7C4D    push        0
 005D7C4F    mov         eax,dword ptr [ebp-4]
 005D7C52    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C55    mov         eax,dword ptr [eax+48];TForm.Width:Integer
 005D7C58    push        eax
 005D7C59    mov         eax,dword ptr [ebp-4]
 005D7C5C    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C5F    mov         eax,dword ptr [eax+44];TForm.Top:Integer
 005D7C62    push        eax
 005D7C63    mov         eax,dword ptr [ebp-4]
 005D7C66    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C69    mov         eax,dword ptr [eax+40];TForm.Left:Integer
 005D7C6C    push        eax
 005D7C6D    mov         eax,dword ptr [ebp-4]
 005D7C70    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7C73    call        TWinControl.GetHandle
 005D7C78    push        eax
 005D7C79    mov         eax,dword ptr [ebp-4]
 005D7C7C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7C7F    push        eax
 005D7C80    call        USER32.SetWindowPos
 005D7C85    push        0
 005D7C87    push        0F020
 005D7C8C    push        112
 005D7C91    mov         eax,dword ptr [ebp-4]
 005D7C94    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7C97    push        eax
 005D7C98    call        USER32.DefWindowProcA
>005D7C9D    jmp         005D7CAF
 005D7C9F    mov         edx,6
 005D7CA4    mov         eax,dword ptr [ebp-4]
 005D7CA7    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7CAA    call        005D6994
 005D7CAF    mov         eax,dword ptr [ebp-4]
 005D7CB2    cmp         word ptr [eax+102],0;TApplication.?f102:word
>005D7CBA    je          005D7CCE
 005D7CBC    mov         ebx,dword ptr [ebp-4]
 005D7CBF    mov         edx,dword ptr [ebp-4]
 005D7CC2    mov         eax,dword ptr [ebx+104];TApplication.?f104:dword
 005D7CC8    call        dword ptr [ebx+100];TApplication.FOnMinimize
 005D7CCE    pop         ebx
 005D7CCF    pop         ecx
 005D7CD0    pop         ebp
 005D7CD1    ret
*}
end;

//005D7CD4
procedure sub_005D7CD4(?:TApplication);
begin
{*
 005D7CD4    push        ebp
 005D7CD5    mov         ebp,esp
 005D7CD7    push        ecx
 005D7CD8    push        ebx
 005D7CD9    mov         dword ptr [ebp-4],eax
 005D7CDC    mov         eax,dword ptr [ebp-4]
 005D7CDF    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7CE2    push        eax
 005D7CE3    call        USER32.IsIconic
 005D7CE8    test        eax,eax
>005D7CEA    je          005D7E14
 005D7CF0    mov         eax,dword ptr [ebp-4]
 005D7CF3    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7CF6    push        eax
 005D7CF7    call        USER32.SetActiveWindow
 005D7CFC    mov         eax,dword ptr [ebp-4]
 005D7CFF    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D7D03    je          005D7D49
 005D7D05    mov         eax,dword ptr [ebp-4]
 005D7D08    cmp         byte ptr [eax+5B],0;TApplication.FShowMainForm:Boolean
>005D7D0C    jne         005D7D1A
 005D7D0E    mov         eax,dword ptr [ebp-4]
 005D7D11    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7D14    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>005D7D18    je          005D7D49
 005D7D1A    mov         eax,dword ptr [ebp-4]
 005D7D1D    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7D20    call        TWinControl.GetHandle
 005D7D25    push        eax
 005D7D26    call        USER32.IsWindowEnabled
 005D7D2B    test        eax,eax
>005D7D2D    je          005D7D49
 005D7D2F    push        0
 005D7D31    push        0F120
 005D7D36    push        112
 005D7D3B    mov         eax,dword ptr [ebp-4]
 005D7D3E    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7D41    push        eax
 005D7D42    call        USER32.DefWindowProcA
>005D7D47    jmp         005D7D59
 005D7D49    mov         edx,9
 005D7D4E    mov         eax,dword ptr [ebp-4]
 005D7D51    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7D54    call        005D6994
 005D7D59    push        40
 005D7D5B    push        0
 005D7D5D    push        0
 005D7D5F    push        1
 005D7D61    mov         eax,[006EA000];^gvar_006ECEF4
 005D7D66    mov         eax,dword ptr [eax]
 005D7D68    call        eax
 005D7D6A    sar         eax,1
>005D7D6C    jns         005D7D71
 005D7D6E    adc         eax,0
 005D7D71    push        eax
 005D7D72    push        0
 005D7D74    mov         eax,[006EA000];^gvar_006ECEF4
 005D7D79    mov         eax,dword ptr [eax]
 005D7D7B    call        eax
 005D7D7D    sar         eax,1
>005D7D7F    jns         005D7D84
 005D7D81    adc         eax,0
 005D7D84    push        eax
 005D7D85    push        0
 005D7D87    mov         eax,dword ptr [ebp-4]
 005D7D8A    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D7D8D    push        eax
 005D7D8E    call        USER32.SetWindowPos
 005D7D93    mov         eax,dword ptr [ebp-4]
 005D7D96    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D7D9A    je          005D7DCF
 005D7D9C    mov         eax,dword ptr [ebp-4]
 005D7D9F    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7DA2    cmp         byte ptr [eax+22B],1;TForm.FWindowState:TWindowState
>005D7DA9    jne         005D7DCF
 005D7DAB    mov         eax,dword ptr [ebp-4]
 005D7DAE    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7DB1    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>005D7DB5    jne         005D7DCF
 005D7DB7    xor         edx,edx
 005D7DB9    mov         eax,dword ptr [ebp-4]
 005D7DBC    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7DBF    call        TForm.SetWindowState
 005D7DC4    mov         eax,dword ptr [ebp-4]
 005D7DC7    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D7DCA    call        005D4128
 005D7DCF    mov         eax,dword ptr [ebp-4]
 005D7DD2    call        005D7230
 005D7DD7    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7DDC    cmp         dword ptr [eax+64],0;TScreen.FActiveControl:TWinControl
>005D7DE0    je          005D7DF5
 005D7DE2    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7DE7    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 005D7DEA    call        TWinControl.GetHandle
 005D7DEF    push        eax
 005D7DF0    call        USER32.SetFocus
 005D7DF5    mov         eax,dword ptr [ebp-4]
 005D7DF8    cmp         word ptr [eax+10A],0;TApplication.?f10A:word
>005D7E00    je          005D7E14
 005D7E02    mov         ebx,dword ptr [ebp-4]
 005D7E05    mov         edx,dword ptr [ebp-4]
 005D7E08    mov         eax,dword ptr [ebx+10C];TApplication.?f10C:dword
 005D7E0E    call        dword ptr [ebx+108];TApplication.FOnRestore
 005D7E14    pop         ebx
 005D7E15    pop         ecx
 005D7E16    pop         ebp
 005D7E17    ret
*}
end;

//005D7E18
procedure sub_005D7E18(?:TApplication);
begin
{*
 005D7E18    push        ebp
 005D7E19    mov         ebp,esp
 005D7E1B    add         esp,0FFFFFFF8
 005D7E1E    mov         dword ptr [ebp-4],eax
 005D7E21    mov         eax,dword ptr [ebp-4]
 005D7E24    cmp         dword ptr [eax+30],0
>005D7E28    je          005D7E6D
 005D7E2A    mov         eax,dword ptr [ebp-4]
 005D7E2D    mov         eax,dword ptr [eax+30]
 005D7E30    push        eax
 005D7E31    call        USER32.GetLastActivePopup
 005D7E36    mov         dword ptr [ebp-8],eax
 005D7E39    cmp         dword ptr [ebp-8],0
>005D7E3D    je          005D7E6D
 005D7E3F    mov         eax,dword ptr [ebp-8]
 005D7E42    mov         edx,dword ptr [ebp-4]
 005D7E45    cmp         eax,dword ptr [edx+30]
>005D7E48    je          005D7E6D
 005D7E4A    mov         eax,dword ptr [ebp-8]
 005D7E4D    push        eax
 005D7E4E    call        USER32.IsWindowVisible
 005D7E53    test        eax,eax
>005D7E55    je          005D7E6D
 005D7E57    mov         eax,dword ptr [ebp-8]
 005D7E5A    push        eax
 005D7E5B    call        USER32.IsWindowEnabled
 005D7E60    test        eax,eax
>005D7E62    je          005D7E6D
 005D7E64    mov         eax,dword ptr [ebp-8]
 005D7E67    push        eax
 005D7E68    call        USER32.SetForegroundWindow
 005D7E6D    pop         ecx
 005D7E6E    pop         ecx
 005D7E6F    pop         ebp
 005D7E70    ret
*}
end;

//005D7E74
{*procedure sub_005D7E74(?:TApplication; ?:?);
begin
 005D7E74    push        ebp
 005D7E75    mov         ebp,esp
 005D7E77    add         esp,0FFFFFEF8
 005D7E7D    mov         dword ptr [ebp-8],edx
 005D7E80    mov         dword ptr [ebp-4],eax
 005D7E83    mov         eax,dword ptr [ebp-4]
 005D7E86    cmp         byte ptr [eax+0A4],0
>005D7E8D    je          005D7EB9
 005D7E8F    push        100
 005D7E94    lea         eax,[ebp-108]
 005D7E9A    push        eax
 005D7E9B    mov         eax,dword ptr [ebp-4]
 005D7E9E    mov         eax,dword ptr [eax+30]
 005D7EA1    push        eax
 005D7EA2    call        USER32.GetWindowTextA
 005D7EA7    mov         ecx,eax
 005D7EA9    lea         edx,[ebp-108]
 005D7EAF    mov         eax,dword ptr [ebp-8]
 005D7EB2    call        @LStrFromPCharLen
>005D7EB7    jmp         005D7ECA
 005D7EB9    mov         eax,dword ptr [ebp-8]
 005D7EBC    mov         edx,dword ptr [ebp-4]
 005D7EBF    mov         edx,dword ptr [edx+8C]
 005D7EC5    call        @LStrAsg
 005D7ECA    mov         esp,ebp
 005D7ECC    pop         ebp
 005D7ECD    ret
end;*}

//005D7ED0
{*function sub_005D7ED0(?:?; ?:?):?;
begin
 005D7ED0    push        ebp
 005D7ED1    mov         ebp,esp
 005D7ED3    add         esp,0FFFFFFF4
 005D7ED6    mov         dword ptr [ebp-8],edx
 005D7ED9    mov         dword ptr [ebp-4],eax
 005D7EDC    mov         byte ptr [ebp-9],0
 005D7EE0    mov         eax,dword ptr [ebp-4]
 005D7EE3    cmp         dword ptr [eax+0B0],0
>005D7EEA    je          005D7F08
 005D7EEC    mov         eax,dword ptr [ebp-8]
 005D7EEF    push        eax
 005D7EF0    mov         eax,dword ptr [ebp-4]
 005D7EF3    mov         eax,dword ptr [eax+0B0]
 005D7EF9    push        eax
 005D7EFA    call        USER32.IsDialogMessageA
 005D7EFF    cmp         eax,1
 005D7F02    sbb         eax,eax
 005D7F04    inc         eax
 005D7F05    mov         byte ptr [ebp-9],al
 005D7F08    mov         al,byte ptr [ebp-9]
 005D7F0B    mov         esp,ebp
 005D7F0D    pop         ebp
 005D7F0E    ret
end;*}

//005D7F10
{*function sub_005D7F10(?:?; ?:?):?;
begin
 005D7F10    push        ebp
 005D7F11    mov         ebp,esp
 005D7F13    add         esp,0FFFFFFF4
 005D7F16    mov         dword ptr [ebp-8],edx
 005D7F19    mov         dword ptr [ebp-4],eax
 005D7F1C    mov         byte ptr [ebp-9],0
 005D7F20    mov         eax,dword ptr [ebp-4]
 005D7F23    cmp         dword ptr [eax+44],0
>005D7F27    je          005D7F62
 005D7F29    mov         eax,dword ptr [ebp-4]
 005D7F2C    mov         eax,dword ptr [eax+44]
 005D7F2F    cmp         byte ptr [eax+22F],2
>005D7F36    jne         005D7F62
 005D7F38    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D7F3D    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>005D7F41    je          005D7F62
 005D7F43    mov         eax,dword ptr [ebp-8]
 005D7F46    push        eax
 005D7F47    mov         eax,dword ptr [ebp-4]
 005D7F4A    mov         eax,dword ptr [eax+44]
 005D7F4D    mov         eax,dword ptr [eax+254]
 005D7F53    push        eax
 005D7F54    call        USER32.TranslateMDISysAccel
 005D7F59    cmp         eax,1
 005D7F5C    sbb         eax,eax
 005D7F5E    inc         eax
 005D7F5F    mov         byte ptr [ebp-9],al
 005D7F62    mov         al,byte ptr [ebp-9]
 005D7F65    mov         esp,ebp
 005D7F67    pop         ebp
 005D7F68    ret
end;*}

//005D7F6C
{*function sub_005D7F6C(?:?; ?:?):?;
begin
 005D7F6C    push        ebp
 005D7F6D    mov         ebp,esp
 005D7F6F    add         esp,0FFFFFFF0
 005D7F72    mov         dword ptr [ebp-8],edx
 005D7F75    mov         dword ptr [ebp-4],eax
 005D7F78    mov         byte ptr [ebp-9],0
 005D7F7C    mov         eax,dword ptr [ebp-8]
 005D7F7F    cmp         dword ptr [eax+4],100
>005D7F86    jb          005D8077
 005D7F8C    mov         eax,dword ptr [ebp-8]
 005D7F8F    cmp         dword ptr [eax+4],108
>005D7F96    ja          005D8077
 005D7F9C    call        USER32.GetCapture
 005D7FA1    mov         dword ptr [ebp-10],eax
 005D7FA4    cmp         dword ptr [ebp-10],0
>005D7FA8    jne         005D8039
 005D7FAE    mov         eax,dword ptr [ebp-8]
 005D7FB1    mov         eax,dword ptr [eax]
 005D7FB3    mov         dword ptr [ebp-10],eax
 005D7FB6    mov         eax,dword ptr [ebp-4]
 005D7FB9    cmp         dword ptr [eax+44],0
>005D7FBD    je          005D7FEC
 005D7FBF    mov         eax,dword ptr [ebp-4]
 005D7FC2    mov         eax,dword ptr [eax+44]
 005D7FC5    mov         eax,dword ptr [eax+254]
 005D7FCB    cmp         eax,dword ptr [ebp-10]
>005D7FCE    jne         005D7FEC
 005D7FD0    mov         eax,dword ptr [ebp-4]
 005D7FD3    mov         eax,dword ptr [eax+44]
 005D7FD6    call        TWinControl.GetHandle
 005D7FDB    mov         dword ptr [ebp-10],eax
>005D7FDE    jmp         005D800C
 005D7FE0    mov         eax,dword ptr [ebp-10]
 005D7FE3    push        eax
 005D7FE4    call        USER32.GetParent
 005D7FE9    mov         dword ptr [ebp-10],eax
 005D7FEC    mov         eax,dword ptr [ebp-10]
 005D7FEF    call        005EF778
 005D7FF4    test        eax,eax
>005D7FF6    jne         005D7FFE
 005D7FF8    cmp         dword ptr [ebp-10],0
>005D7FFC    jne         005D7FE0
 005D7FFE    cmp         dword ptr [ebp-10],0
>005D8002    jne         005D800C
 005D8004    mov         eax,dword ptr [ebp-8]
 005D8007    mov         eax,dword ptr [eax]
 005D8009    mov         dword ptr [ebp-10],eax
 005D800C    mov         eax,dword ptr [ebp-8]
 005D800F    mov         eax,dword ptr [eax+0C]
 005D8012    push        eax
 005D8013    mov         eax,dword ptr [ebp-8]
 005D8016    mov         eax,dword ptr [eax+8]
 005D8019    push        eax
 005D801A    mov         eax,dword ptr [ebp-8]
 005D801D    mov         eax,dword ptr [eax+4]
 005D8020    add         eax,0BC00
 005D8025    push        eax
 005D8026    mov         eax,dword ptr [ebp-10]
 005D8029    push        eax
 005D802A    call        USER32.SendMessageA
 005D802F    test        eax,eax
>005D8031    je          005D8077
 005D8033    mov         byte ptr [ebp-9],1
>005D8037    jmp         005D8077
 005D8039    push        0FA
 005D803B    mov         eax,dword ptr [ebp-10]
 005D803E    push        eax
 005D803F    call        USER32.GetWindowLongA
 005D8044    cmp         eax,dword ptr ds:[6EA390];0x0 gvar_006EA390
>005D804A    jne         005D8077
 005D804C    mov         eax,dword ptr [ebp-8]
 005D804F    mov         eax,dword ptr [eax+0C]
 005D8052    push        eax
 005D8053    mov         eax,dword ptr [ebp-8]
 005D8056    mov         eax,dword ptr [eax+8]
 005D8059    push        eax
 005D805A    mov         eax,dword ptr [ebp-8]
 005D805D    mov         eax,dword ptr [eax+4]
 005D8060    add         eax,0BC00
 005D8065    push        eax
 005D8066    mov         eax,dword ptr [ebp-10]
 005D8069    push        eax
 005D806A    call        USER32.SendMessageA
 005D806F    test        eax,eax
>005D8071    je          005D8077
 005D8073    mov         byte ptr [ebp-9],1
 005D8077    mov         al,byte ptr [ebp-9]
 005D807A    mov         esp,ebp
 005D807C    pop         ebp
 005D807D    ret
end;*}

//005D8080
{*function sub_005D8080(?:?; ?:?):?;
begin
 005D8080    push        ebp
 005D8081    mov         ebp,esp
 005D8083    add         esp,0FFFFFFF4
 005D8086    mov         dword ptr [ebp-8],edx
 005D8089    mov         dword ptr [ebp-4],eax
 005D808C    mov         byte ptr [ebp-9],0
 005D8090    mov         eax,dword ptr [ebp-4]
 005D8093    cmp         dword ptr [eax+84],0
>005D809A    je          005D80BC
 005D809C    mov         edx,dword ptr [ebp-8]
 005D809F    mov         eax,dword ptr [ebp-4]
 005D80A2    mov         eax,dword ptr [eax+84]
 005D80A8    mov         ecx,dword ptr [eax]
 005D80AA    call        dword ptr [ecx+0D8]
 005D80B0    test        al,al
>005D80B2    je          005D80BC
 005D80B4    mov         eax,dword ptr [ebp-4]
 005D80B7    call        005D92C0
 005D80BC    mov         al,byte ptr [ebp-9]
 005D80BF    mov         esp,ebp
 005D80C1    pop         ebp
 005D80C2    ret
end;*}

//005D80C4
{*function sub_005D80C4(?:TApplication; ?:?):?;
begin
 005D80C4    push        ebp
 005D80C5    mov         ebp,esp
 005D80C7    add         esp,0FFFFFFF4
 005D80CA    push        ebx
 005D80CB    push        esi
 005D80CC    mov         dword ptr [ebp-8],edx
 005D80CF    mov         dword ptr [ebp-4],eax
 005D80D2    mov         byte ptr [ebp-9],0
 005D80D6    mov         eax,dword ptr [ebp-4]
 005D80D9    cmp         word ptr [eax+112],0;TApplication.?f112:word
>005D80E1    je          005D80F8
 005D80E3    lea         ecx,[ebp-9]
 005D80E6    mov         edx,dword ptr [ebp-8]
 005D80E9    mov         ebx,dword ptr [ebp-4]
 005D80EC    mov         eax,dword ptr [ebx+114];TApplication.?f114:dword
 005D80F2    call        dword ptr [ebx+110];TApplication.FOnShortCut
 005D80F8    cmp         byte ptr [ebp-9],0
>005D80FC    jne         005D8136
 005D80FE    mov         eax,dword ptr [ebp-4]
 005D8101    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D8105    je          005D8132
 005D8107    mov         eax,dword ptr [ebp-4]
 005D810A    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D810D    call        TWinControl.GetHandle
 005D8112    push        eax
 005D8113    call        USER32.IsWindowEnabled
 005D8118    test        eax,eax
>005D811A    je          005D8132
 005D811C    mov         edx,dword ptr [ebp-8]
 005D811F    mov         eax,dword ptr [ebp-4]
 005D8122    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D8125    mov         si,0FFAB
 005D8129    call        @CallDynaInst;TCustomForm.sub_005D48E8
 005D812E    test        al,al
>005D8130    jne         005D8136
 005D8132    xor         eax,eax
>005D8134    jmp         005D8138
 005D8136    mov         al,1
 005D8138    mov         byte ptr [ebp-9],al
 005D813B    mov         al,byte ptr [ebp-9]
 005D813E    pop         esi
 005D813F    pop         ebx
 005D8140    mov         esp,ebp
 005D8142    pop         ebp
 005D8143    ret
end;*}

//005D8144
{*function sub_005D8144(?:TApplication; ?:?):?;
begin
 005D8144    push        ebp
 005D8145    mov         ebp,esp
 005D8147    add         esp,0FFFFFFF4
 005D814A    push        ebx
 005D814B    mov         dword ptr [ebp-8],edx
 005D814E    mov         dword ptr [ebp-4],eax
 005D8151    mov         byte ptr [ebp-9],0
 005D8155    push        1
 005D8157    push        0
 005D8159    push        0
 005D815B    push        0
 005D815D    mov         eax,dword ptr [ebp-8]
 005D8160    push        eax
 005D8161    call        USER32.PeekMessageA
 005D8166    test        eax,eax
>005D8168    je          005D8201
 005D816E    mov         byte ptr [ebp-9],1
 005D8172    mov         eax,dword ptr [ebp-8]
 005D8175    cmp         dword ptr [eax+4],12
>005D8179    je          005D81F7
 005D817B    mov         byte ptr [ebp-0A],0
 005D817F    mov         eax,dword ptr [ebp-4]
 005D8182    cmp         word ptr [eax+0D2],0
>005D818A    je          005D81A1
 005D818C    lea         ecx,[ebp-0A]
 005D818F    mov         edx,dword ptr [ebp-8]
 005D8192    mov         ebx,dword ptr [ebp-4]
 005D8195    mov         eax,dword ptr [ebx+0D4]
 005D819B    call        dword ptr [ebx+0D0]
 005D81A1    mov         edx,dword ptr [ebp-8]
 005D81A4    mov         eax,dword ptr [ebp-4]
 005D81A7    call        005D8080
 005D81AC    test        al,al
>005D81AE    jne         005D8201
 005D81B0    cmp         byte ptr [ebp-0A],0
>005D81B4    jne         005D8201
 005D81B6    mov         edx,dword ptr [ebp-8]
 005D81B9    mov         eax,dword ptr [ebp-4]
 005D81BC    call        005D7F10
 005D81C1    test        al,al
>005D81C3    jne         005D8201
 005D81C5    mov         edx,dword ptr [ebp-8]
 005D81C8    mov         eax,dword ptr [ebp-4]
 005D81CB    call        005D7F6C
 005D81D0    test        al,al
>005D81D2    jne         005D8201
 005D81D4    mov         edx,dword ptr [ebp-8]
 005D81D7    mov         eax,dword ptr [ebp-4]
 005D81DA    call        005D7ED0
 005D81DF    test        al,al
>005D81E1    jne         005D8201
 005D81E3    mov         eax,dword ptr [ebp-8]
 005D81E6    push        eax
 005D81E7    call        USER32.TranslateMessage
 005D81EC    mov         eax,dword ptr [ebp-8]
 005D81EF    push        eax
 005D81F0    call        USER32.DispatchMessageA
>005D81F5    jmp         005D8201
 005D81F7    mov         eax,dword ptr [ebp-4]
 005D81FA    mov         byte ptr [eax+9C],1
 005D8201    mov         al,byte ptr [ebp-9]
 005D8204    pop         ebx
 005D8205    mov         esp,ebp
 005D8207    pop         ebp
 005D8208    ret
end;*}

//005D820C
procedure sub_005D820C(?:TApplication);
begin
{*
 005D820C    push        ebp
 005D820D    mov         ebp,esp
 005D820F    add         esp,0FFFFFFE0
 005D8212    mov         dword ptr [ebp-4],eax
 005D8215    lea         edx,[ebp-20]
 005D8218    mov         eax,dword ptr [ebp-4]
 005D821B    call        005D8144
 005D8220    test        al,al
>005D8222    jne         005D8215
 005D8224    mov         esp,ebp
 005D8226    pop         ebp
 005D8227    ret
*}
end;

//005D8228
procedure sub_005D8228(?:TApplication);
begin
{*
 005D8228    push        ebp
 005D8229    mov         ebp,esp
 005D822B    add         esp,0FFFFFFE0
 005D822E    mov         dword ptr [ebp-4],eax
 005D8231    lea         edx,[ebp-20]
 005D8234    mov         eax,dword ptr [ebp-4]
 005D8237    call        005D8144
 005D823C    test        al,al
>005D823E    jne         005D824B
 005D8240    lea         edx,[ebp-20]
 005D8243    mov         eax,dword ptr [ebp-4]
 005D8246    call        005D8C84
 005D824B    mov         esp,ebp
 005D824D    pop         ebp
 005D824E    ret
*}
end;

//005D8250
{*procedure sub_005D8250(?:TApplication; ?:?; ?:?);
begin
 005D8250    push        ebp
 005D8251    mov         ebp,esp
 005D8253    add         esp,0FFFFFFF8
 005D8256    mov         dword ptr [ebp-4],eax
 005D8259    mov         eax,dword ptr [ebp-4]
 005D825C    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>005D8263    jne         005D8287
 005D8265    mov         eax,dword ptr [ebp-4]
 005D8268    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D826C    je          005D82C1
 005D826E    lea         eax,[ebp+8]
 005D8271    push        eax
 005D8272    push        0
 005D8274    push        0B020
 005D8279    mov         eax,dword ptr [ebp-4]
 005D827C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D827F    push        eax
 005D8280    call        USER32.SendMessageA
>005D8285    jmp         005D82C1
 005D8287    mov         eax,dword ptr [ebp-4]
 005D828A    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D8290    call        00645054
 005D8295    mov         eax,8
 005D829A    call        @GetMem
 005D829F    mov         dword ptr [ebp-8],eax
 005D82A2    mov         eax,dword ptr [ebp-8]
 005D82A5    mov         edx,dword ptr [ebp+8]
 005D82A8    mov         dword ptr [eax],edx
 005D82AA    mov         edx,dword ptr [ebp+0C]
 005D82AD    mov         dword ptr [eax+4],edx
 005D82B0    mov         edx,dword ptr [ebp-8]
 005D82B3    mov         eax,dword ptr [ebp-4]
 005D82B6    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D82BC    call        TList.Add
 005D82C1    pop         ecx
 005D82C2    pop         ecx
 005D82C3    pop         ebp
 005D82C4    ret         8
end;*}

//005D82C8
{*procedure sub_005D82C8(?:TApplication; ?:?; ?:?);
begin
 005D82C8    push        ebp
 005D82C9    mov         ebp,esp
 005D82CB    add         esp,0FFFFFFF0
 005D82CE    mov         dword ptr [ebp-4],eax
 005D82D1    mov         eax,dword ptr [ebp-4]
 005D82D4    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>005D82DB    jne         005D8303
 005D82DD    mov         eax,dword ptr [ebp-4]
 005D82E0    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D82E4    je          005D8370
 005D82EA    lea         eax,[ebp+8]
 005D82ED    push        eax
 005D82EE    push        1
 005D82F0    push        0B020
 005D82F5    mov         eax,dword ptr [ebp-4]
 005D82F8    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D82FB    push        eax
 005D82FC    call        USER32.SendMessageA
>005D8301    jmp         005D8370
 005D8303    mov         eax,dword ptr [ebp-4]
 005D8306    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D830C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005D830F    dec         eax
 005D8310    test        eax,eax
>005D8312    jl          005D8370
 005D8314    inc         eax
 005D8315    mov         dword ptr [ebp-10],eax
 005D8318    mov         dword ptr [ebp-8],0
 005D831F    mov         edx,dword ptr [ebp-8]
 005D8322    mov         eax,dword ptr [ebp-4]
 005D8325    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D832B    call        TList.Get
 005D8330    mov         dword ptr [ebp-0C],eax
 005D8333    mov         eax,dword ptr [ebp-0C]
 005D8336    mov         eax,dword ptr [eax]
 005D8338    cmp         eax,dword ptr [ebp+8]
>005D833B    jne         005D8368
 005D833D    mov         eax,dword ptr [ebp+0C]
 005D8340    mov         edx,dword ptr [ebp-0C]
 005D8343    cmp         eax,dword ptr [edx+4]
>005D8346    jne         005D8368
 005D8348    mov         edx,8
 005D834D    mov         eax,dword ptr [ebp-0C]
 005D8350    call        @FreeMem
 005D8355    mov         edx,dword ptr [ebp-8]
 005D8358    mov         eax,dword ptr [ebp-4]
 005D835B    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 005D8361    call        TList.Delete
>005D8366    jmp         005D8370
 005D8368    inc         dword ptr [ebp-8]
 005D836B    dec         dword ptr [ebp-10]
>005D836E    jne         005D831F
 005D8370    mov         esp,ebp
 005D8372    pop         ebp
 005D8373    ret         8
end;*}

//005D8378
procedure sub_005D8378(?:TApplication);
begin
{*
 005D8378    push        ebp
 005D8379    mov         ebp,esp
 005D837B    push        ecx
 005D837C    push        ebx
 005D837D    mov         dword ptr [ebp-4],eax
 005D8380    mov         eax,[006EA2E0];^gvar_006ED308
 005D8385    cmp         dword ptr [eax],0
>005D8388    je          005D8394
 005D838A    mov         ebx,dword ptr ds:[6EA2E0];^gvar_006ED308
 005D8390    mov         ebx,dword ptr [ebx]
 005D8392    call        ebx
 005D8394    pop         ebx
 005D8395    pop         ecx
 005D8396    pop         ebp
 005D8397    ret
*}
end;

//005D8398
{*procedure sub_005D8398(?:TApplication; ?:TForm; ?:?);
begin
 005D8398    push        ebp
 005D8399    mov         ebp,esp
 005D839B    add         esp,0FFFFFFF0
 005D839E    push        ebx
 005D839F    push        esi
 005D83A0    push        edi
 005D83A1    mov         dword ptr [ebp-0C],ecx
 005D83A4    mov         dword ptr [ebp-8],edx
 005D83A7    mov         dword ptr [ebp-4],eax
 005D83AA    mov         eax,dword ptr [ebp-8]
 005D83AD    call        dword ptr [eax-0C]
 005D83B0    mov         dword ptr [ebp-10],eax
 005D83B3    mov         eax,dword ptr [ebp-0C]
 005D83B6    mov         edx,dword ptr [ebp-10]
 005D83B9    mov         dword ptr [eax],edx
 005D83BB    xor         eax,eax
 005D83BD    push        ebp
 005D83BE    push        5D83E1
 005D83C3    push        dword ptr fs:[eax]
 005D83C6    mov         dword ptr fs:[eax],esp
 005D83C9    mov         ecx,dword ptr [ebp-4]
 005D83CC    or          edx,0FFFFFFFF
 005D83CF    mov         eax,dword ptr [ebp-10]
 005D83D2    mov         ebx,dword ptr [eax]
 005D83D4    call        dword ptr [ebx+2C]
 005D83D7    xor         eax,eax
 005D83D9    pop         edx
 005D83DA    pop         ecx
 005D83DB    pop         ecx
 005D83DC    mov         dword ptr fs:[eax],edx
>005D83DF    jmp         005D83F7
>005D83E1    jmp         @HandleAnyException
 005D83E6    mov         eax,dword ptr [ebp-0C]
 005D83E9    xor         edx,edx
 005D83EB    mov         dword ptr [eax],edx
 005D83ED    call        @RaiseAgain
 005D83F2    call        @DoneExcept
 005D83F7    mov         eax,dword ptr [ebp-4]
 005D83FA    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D83FE    jne         005D8423
 005D8400    mov         eax,dword ptr [ebp-10]
 005D8403    mov         edx,dword ptr ds:[5CC540];TForm
 005D8409    call        @IsClass
 005D840E    test        al,al
>005D8410    je          005D8423
 005D8412    mov         eax,dword ptr [ebp-10]
 005D8415    call        005FC078
 005D841A    mov         eax,dword ptr [ebp-4]
 005D841D    mov         edx,dword ptr [ebp-10]
 005D8420    mov         dword ptr [eax+44],edx;TApplication.FMainForm:TForm
 005D8423    pop         edi
 005D8424    pop         esi
 005D8425    pop         ebx
 005D8426    mov         esp,ebp
 005D8428    pop         ebp
 005D8429    ret
end;*}

//005D842C
procedure sub_005D842C(?:TApplication);
begin
{*
 005D842C    push        ebp
 005D842D    mov         ebp,esp
 005D842F    push        ecx
 005D8430    push        ebx
 005D8431    push        esi
 005D8432    push        edi
 005D8433    mov         dword ptr [ebp-4],eax
 005D8436    mov         eax,dword ptr [ebp-4]
 005D8439    mov         byte ptr [eax+0A5],1;TApplication.FRunning:Boolean
 005D8440    xor         eax,eax
 005D8442    push        ebp
 005D8443    push        5D851A
 005D8448    push        dword ptr fs:[eax]
 005D844B    mov         dword ptr fs:[eax],esp
 005D844E    mov         eax,5CCAE4
 005D8453    call        006574B8
 005D8458    mov         eax,dword ptr [ebp-4]
 005D845B    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D845F    je          005D8502
 005D8465    mov         eax,[006EA2D8];^gvar_006ED300:Integer
 005D846A    mov         eax,dword ptr [eax]
 005D846C    sub         eax,3
>005D846F    je          005D8485
 005D8471    sub         eax,4
>005D8474    jne         005D8492
 005D8476    mov         eax,dword ptr [ebp-4]
 005D8479    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D847C    mov         byte ptr [eax+22B],1;TForm.FWindowState:TWindowState
>005D8483    jmp         005D8492
 005D8485    mov         eax,dword ptr [ebp-4]
 005D8488    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D848B    mov         dl,2
 005D848D    call        TForm.SetWindowState
 005D8492    mov         eax,dword ptr [ebp-4]
 005D8495    cmp         byte ptr [eax+5B],0;TApplication.FShowMainForm:Boolean
>005D8499    je          005D84C1
 005D849B    mov         eax,dword ptr [ebp-4]
 005D849E    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D84A1    cmp         byte ptr [eax+22B],1;TForm.FWindowState:TWindowState
>005D84A8    jne         005D84B4
 005D84AA    mov         eax,dword ptr [ebp-4]
 005D84AD    call        005D7BE8
>005D84B2    jmp         005D84C1
 005D84B4    mov         eax,dword ptr [ebp-4]
 005D84B7    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D84BA    mov         dl,1
 005D84BC    call        TCustomForm.SetVisible
 005D84C1    xor         eax,eax
 005D84C3    push        ebp
 005D84C4    push        5D84E1
 005D84C9    push        dword ptr fs:[eax]
 005D84CC    mov         dword ptr fs:[eax],esp
 005D84CF    mov         eax,dword ptr [ebp-4]
 005D84D2    call        005D8228
 005D84D7    xor         eax,eax
 005D84D9    pop         edx
 005D84DA    pop         ecx
 005D84DB    pop         ecx
 005D84DC    mov         dword ptr fs:[eax],edx
>005D84DF    jmp         005D84F6
>005D84E1    jmp         @HandleAnyException
 005D84E6    mov         edx,dword ptr [ebp-4]
 005D84E9    mov         eax,dword ptr [ebp-4]
 005D84EC    call        TApplication.HandleException
 005D84F1    call        @DoneExcept
 005D84F6    mov         eax,dword ptr [ebp-4]
 005D84F9    cmp         byte ptr [eax+9C],0;TApplication.FTerminate:Boolean
>005D8500    je          005D84C1
 005D8502    xor         eax,eax
 005D8504    pop         edx
 005D8505    pop         ecx
 005D8506    pop         ecx
 005D8507    mov         dword ptr fs:[eax],edx
 005D850A    push        5D8521
 005D850F    mov         eax,dword ptr [ebp-4]
 005D8512    mov         byte ptr [eax+0A5],0;TApplication.FRunning:Boolean
 005D8519    ret
>005D851A    jmp         @HandleFinally
>005D851F    jmp         005D850F
 005D8521    pop         edi
 005D8522    pop         esi
 005D8523    pop         ebx
 005D8524    pop         ecx
 005D8525    pop         ebp
 005D8526    ret
*}
end;

//005D8528
procedure sub_005D8528(?:TApplication);
begin
{*
 005D8528    push        ebp
 005D8529    mov         ebp,esp
 005D852B    push        ecx
 005D852C    mov         dword ptr [ebp-4],eax
 005D852F    call        0065E06C
 005D8534    test        al,al
>005D8536    je          005D853F
 005D8538    push        0
 005D853A    call        USER32.PostQuitMessage
 005D853F    pop         ecx
 005D8540    pop         ebp
 005D8541    ret
*}
end;

//005D8544
procedure TApplication.HandleException(Sender:TObject);
begin
{*
 005D8544    push        ebp
 005D8545    mov         ebp,esp
 005D8547    add         esp,0FFFFFFF8
 005D854A    push        ebx
 005D854B    mov         dword ptr [ebp-8],edx
 005D854E    mov         dword ptr [ebp-4],eax
 005D8551    call        USER32.GetCapture
 005D8556    test        eax,eax
>005D8558    je          005D856B
 005D855A    push        0
 005D855C    push        0
 005D855E    push        1F
 005D8560    call        USER32.GetCapture
 005D8565    push        eax
 005D8566    call        USER32.SendMessageA
 005D856B    call        ExceptObject
 005D8570    mov         edx,dword ptr ds:[656774];Exception
 005D8576    call        @IsClass
 005D857B    test        al,al
>005D857D    je          005D85CC
 005D857F    call        ExceptObject
 005D8584    mov         edx,dword ptr ds:[6567DC];EAbort
 005D858A    call        @IsClass
 005D858F    test        al,al
>005D8591    jne         005D85DD
 005D8593    mov         eax,dword ptr [ebp-4]
 005D8596    cmp         word ptr [eax+0CA],0
>005D859E    je          005D85BB
 005D85A0    call        ExceptObject
 005D85A5    mov         ecx,eax
 005D85A7    mov         ebx,dword ptr [ebp-4]
 005D85AA    mov         edx,dword ptr [ebp-8]
 005D85AD    mov         eax,dword ptr [ebx+0CC]
 005D85B3    call        dword ptr [ebx+0C8]
>005D85B9    jmp         005D85DD
 005D85BB    call        ExceptObject
 005D85C0    mov         edx,eax
 005D85C2    mov         eax,dword ptr [ebp-4]
 005D85C5    call        005D874C
>005D85CA    jmp         005D85DD
 005D85CC    call        ExceptAddr
 005D85D1    push        eax
 005D85D2    call        ExceptObject
 005D85D7    pop         edx
 005D85D8    call        0065C428
 005D85DD    pop         ebx
 005D85DE    pop         ecx
 005D85DF    pop         ecx
 005D85E0    pop         ebp
 005D85E1    ret
*}
end;

//005D85E4
{*function sub_005D85E4(?:TApplication; ?:PChar; ?:?; ?:?):?;
begin
 005D85E4    push        ebp
 005D85E5    mov         ebp,esp
 005D85E7    add         esp,0FFFFFFA4
 005D85EA    mov         dword ptr [ebp-0C],ecx
 005D85ED    mov         dword ptr [ebp-8],edx
 005D85F0    mov         dword ptr [ebp-4],eax
 005D85F3    call        USER32.GetActiveWindow
 005D85F8    mov         dword ptr [ebp-14],eax
 005D85FB    push        2
 005D85FD    mov         eax,dword ptr [ebp-14]
 005D8600    push        eax
 005D8601    mov         eax,[006EA004];^gvar_006ECEF8
 005D8606    mov         eax,dword ptr [eax]
 005D8608    call        eax
 005D860A    mov         dword ptr [ebp-1C],eax
 005D860D    push        2
 005D860F    mov         eax,dword ptr [ebp-4]
 005D8612    mov         eax,dword ptr [eax+30]
 005D8615    push        eax
 005D8616    mov         eax,[006EA004];^gvar_006ECEF8
 005D861B    mov         eax,dword ptr [eax]
 005D861D    call        eax
 005D861F    mov         dword ptr [ebp-20],eax
 005D8622    mov         eax,dword ptr [ebp-1C]
 005D8625    cmp         eax,dword ptr [ebp-20]
>005D8628    je          005D8688
 005D862A    mov         dword ptr [ebp-4C],28
 005D8631    lea         eax,[ebp-4C]
 005D8634    push        eax
 005D8635    mov         eax,dword ptr [ebp-1C]
 005D8638    push        eax
 005D8639    mov         eax,[006EA00C];^gvar_006ECF04
 005D863E    mov         eax,dword ptr [eax]
 005D8640    call        eax
 005D8642    lea         eax,[ebp-5C]
 005D8645    push        eax
 005D8646    mov         eax,dword ptr [ebp-4]
 005D8649    mov         eax,dword ptr [eax+30]
 005D864C    push        eax
 005D864D    call        USER32.GetWindowRect
 005D8652    push        1D
 005D8654    push        0
 005D8656    push        0
 005D8658    mov         eax,dword ptr [ebp-3C]
 005D865B    sub         eax,dword ptr [ebp-44]
 005D865E    sar         eax,1
>005D8660    jns         005D8665
 005D8662    adc         eax,0
 005D8665    add         eax,dword ptr [ebp-44]
 005D8668    push        eax
 005D8669    mov         eax,dword ptr [ebp-40]
 005D866C    sub         eax,dword ptr [ebp-48]
 005D866F    sar         eax,1
>005D8671    jns         005D8676
 005D8673    adc         eax,0
 005D8676    add         eax,dword ptr [ebp-48]
 005D8679    push        eax
 005D867A    push        0
 005D867C    mov         eax,dword ptr [ebp-4]
 005D867F    mov         eax,dword ptr [eax+30]
 005D8682    push        eax
 005D8683    call        USER32.SetWindowPos
 005D8688    xor         eax,eax
 005D868A    call        005CCB90
 005D868F    mov         dword ptr [ebp-18],eax
 005D8692    call        005CCA50
 005D8697    mov         dword ptr [ebp-24],eax
 005D869A    mov         eax,dword ptr [ebp-4]
 005D869D    call        005D72BC
 005D86A2    test        al,al
>005D86A4    je          005D86AD
 005D86A6    or          dword ptr [ebp+8],100000
 005D86AD    xor         eax,eax
 005D86AF    push        ebp
 005D86B0    push        5D873B
 005D86B5    push        dword ptr fs:[eax]
 005D86B8    mov         dword ptr fs:[eax],esp
 005D86BB    mov         eax,dword ptr [ebp+8]
 005D86BE    push        eax
 005D86BF    mov         eax,dword ptr [ebp-0C]
 005D86C2    push        eax
 005D86C3    mov         eax,dword ptr [ebp-8]
 005D86C6    push        eax
 005D86C7    mov         eax,dword ptr [ebp-4]
 005D86CA    mov         eax,dword ptr [eax+30]
 005D86CD    push        eax
 005D86CE    call        USER32.MessageBoxA
 005D86D3    mov         dword ptr [ebp-10],eax
 005D86D6    xor         eax,eax
 005D86D8    pop         edx
 005D86D9    pop         ecx
 005D86DA    pop         ecx
 005D86DB    mov         dword ptr fs:[eax],edx
 005D86DE    push        5D8742
 005D86E3    mov         eax,dword ptr [ebp-1C]
 005D86E6    cmp         eax,dword ptr [ebp-20]
>005D86E9    je          005D8721
 005D86EB    push        1D
 005D86ED    push        0
 005D86EF    push        0
 005D86F1    mov         eax,dword ptr [ebp-50]
 005D86F4    sub         eax,dword ptr [ebp-58]
 005D86F7    sar         eax,1
>005D86F9    jns         005D86FE
 005D86FB    adc         eax,0
 005D86FE    add         eax,dword ptr [ebp-58]
 005D8701    push        eax
 005D8702    mov         eax,dword ptr [ebp-54]
 005D8705    sub         eax,dword ptr [ebp-5C]
 005D8708    sar         eax,1
>005D870A    jns         005D870F
 005D870C    adc         eax,0
 005D870F    add         eax,dword ptr [ebp-5C]
 005D8712    push        eax
 005D8713    push        0
 005D8715    mov         eax,dword ptr [ebp-4]
 005D8718    mov         eax,dword ptr [eax+30]
 005D871B    push        eax
 005D871C    call        USER32.SetWindowPos
 005D8721    mov         eax,dword ptr [ebp-18]
 005D8724    call        005CCC48
 005D8729    mov         eax,dword ptr [ebp-14]
 005D872C    push        eax
 005D872D    call        USER32.SetActiveWindow
 005D8732    mov         eax,dword ptr [ebp-24]
 005D8735    call        005CCA64
 005D873A    ret
>005D873B    jmp         @HandleFinally
>005D8740    jmp         005D86E3
 005D8742    mov         eax,dword ptr [ebp-10]
 005D8745    mov         esp,ebp
 005D8747    pop         ebp
 005D8748    ret         4
end;*}

//005D874C
{*procedure sub_005D874C(?:TApplication; ?:?);
begin
 005D874C    push        ebp
 005D874D    mov         ebp,esp
 005D874F    add         esp,0FFFFFEF0
 005D8755    xor         ecx,ecx
 005D8757    mov         dword ptr [ebp-110],ecx
 005D875D    mov         dword ptr [ebp-0C],ecx
 005D8760    mov         dword ptr [ebp-8],edx
 005D8763    mov         dword ptr [ebp-4],eax
 005D8766    xor         eax,eax
 005D8768    push        ebp
 005D8769    push        5D880C
 005D876E    push        dword ptr fs:[eax]
 005D8771    mov         dword ptr fs:[eax],esp
 005D8774    lea         eax,[ebp-0C]
 005D8777    mov         edx,dword ptr [ebp-8]
 005D877A    mov         edx,dword ptr [edx+4]
 005D877D    call        @LStrLAsg
 005D8782    cmp         dword ptr [ebp-0C],0
>005D8786    je          005D87BC
 005D8788    mov         eax,dword ptr [ebp-0C]
 005D878B    call        00658280
 005D8790    mov         edx,eax
 005D8792    lea         eax,[ebp-10C]
 005D8798    call        @_CToPasStr
 005D879D    lea         eax,[ebp-10C]
 005D87A3    mov         edx,5D8818;'.'
 005D87A8    call        @PStrCmp
>005D87AD    jbe         005D87BC
 005D87AF    lea         eax,[ebp-0C]
 005D87B2    mov         edx,5D8824;'.'
 005D87B7    call        @LStrCat
 005D87BC    push        10
 005D87BE    lea         edx,[ebp-110]
 005D87C4    mov         eax,dword ptr [ebp-4]
 005D87C7    call        005D7E74
 005D87CC    mov         eax,dword ptr [ebp-110]
 005D87D2    call        @LStrToPChar
 005D87D7    push        eax
 005D87D8    mov         eax,dword ptr [ebp-0C]
 005D87DB    call        @LStrToPChar
 005D87E0    mov         edx,eax
 005D87E2    mov         eax,dword ptr [ebp-4]
 005D87E5    pop         ecx
 005D87E6    call        005D85E4
 005D87EB    xor         eax,eax
 005D87ED    pop         edx
 005D87EE    pop         ecx
 005D87EF    pop         ecx
 005D87F0    mov         dword ptr fs:[eax],edx
 005D87F3    push        5D8813
 005D87F8    lea         eax,[ebp-110]
 005D87FE    call        @LStrClr
 005D8803    lea         eax,[ebp-0C]
 005D8806    call        @LStrClr
 005D880B    ret
>005D880C    jmp         @HandleFinally
>005D8811    jmp         005D87F8
 005D8813    mov         esp,ebp
 005D8815    pop         ebp
 005D8816    ret
end;*}

//005D8828
{*function sub_005D8828(?:TApplication; ?:?; ?:THelpContext):?;
begin
 005D8828    push        ebp
 005D8829    mov         ebp,esp
 005D882B    add         esp,0FFFFFFE8
 005D882E    push        ebx
 005D882F    mov         dword ptr [ebp-0C],ecx
 005D8832    mov         word ptr [ebp-6],dx
 005D8836    mov         dword ptr [ebp-4],eax
 005D8839    mov         byte ptr [ebp-0D],0
 005D883D    mov         byte ptr [ebp-0E],1
 005D8841    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D8846    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 005D8849    mov         dword ptr [ebp-18],eax
 005D884C    cmp         dword ptr [ebp-18],0
>005D8850    je          005D887E
 005D8852    mov         eax,dword ptr [ebp-18]
 005D8855    cmp         word ptr [eax+2AA],0;TCustomForm.?f2AA:word
>005D885D    je          005D887E
 005D885F    lea         eax,[ebp-0E]
 005D8862    push        eax
 005D8863    mov         ebx,dword ptr [ebp-18]
 005D8866    mov         ecx,dword ptr [ebp-0C]
 005D8869    mov         dx,word ptr [ebp-6]
 005D886D    mov         eax,dword ptr [ebx+2AC];TCustomForm.?f2AC:dword
 005D8873    call        dword ptr [ebx+2A8];TCustomForm.FOnHelp
 005D8879    mov         byte ptr [ebp-0D],al
>005D887C    jmp         005D88A8
 005D887E    mov         eax,dword ptr [ebp-4]
 005D8881    cmp         word ptr [eax+0DA],0;TApplication.?fDA:word
>005D8889    je          005D88A8
 005D888B    lea         eax,[ebp-0E]
 005D888E    push        eax
 005D888F    mov         ebx,dword ptr [ebp-4]
 005D8892    mov         ecx,dword ptr [ebp-0C]
 005D8895    mov         dx,word ptr [ebp-6]
 005D8899    mov         eax,dword ptr [ebx+0DC];TApplication.?fDC:dword
 005D889F    call        dword ptr [ebx+0D8];TApplication.FOnHelp
 005D88A5    mov         byte ptr [ebp-0D],al
 005D88A8    cmp         byte ptr [ebp-0E],0
>005D88AC    je          005D898D
 005D88B2    cmp         dword ptr [ebp-18],0
>005D88B6    je          005D8910
 005D88B8    mov         eax,dword ptr [ebp-18]
 005D88BB    call        TWinControl.HandleAllocated
 005D88C0    test        al,al
>005D88C2    je          005D8910
 005D88C4    mov         eax,dword ptr [ebp-18]
 005D88C7    cmp         dword ptr [eax+23C],0;TCustomForm.FHelpFile:String
>005D88CE    je          005D8910
 005D88D0    mov         eax,dword ptr [ebp-18]
 005D88D3    call        TWinControl.GetHandle
 005D88D8    mov         dword ptr [ebp-14],eax
 005D88DB    mov         eax,dword ptr [ebp-4]
 005D88DE    call        005D9020
 005D88E3    test        al,al
>005D88E5    je          005D898D
 005D88EB    mov         ax,word ptr [ebp-6]
 005D88EF    push        eax
 005D88F0    mov         eax,dword ptr [ebp-0C]
 005D88F3    push        eax
 005D88F4    mov         eax,dword ptr [ebp-18]
 005D88F7    mov         ecx,dword ptr [eax+23C];TCustomForm.FHelpFile:String
 005D88FD    mov         edx,dword ptr [ebp-14]
 005D8900    mov         eax,dword ptr [ebp-4]
 005D8903    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 005D8906    mov         ebx,dword ptr [eax]
 005D8908    call        dword ptr [ebx+20]
 005D890B    mov         byte ptr [ebp-0D],al
>005D890E    jmp         005D898D
 005D8910    mov         eax,dword ptr [ebp-4]
 005D8913    cmp         dword ptr [eax+50],0;TApplication.FHelpFile:String
>005D8917    je          005D8967
 005D8919    mov         eax,dword ptr [ebp-4]
 005D891C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D891F    mov         dword ptr [ebp-14],eax
 005D8922    mov         eax,dword ptr [ebp-4]
 005D8925    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D8929    je          005D8939
 005D892B    mov         eax,dword ptr [ebp-4]
 005D892E    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D8931    call        TWinControl.GetHandle
 005D8936    mov         dword ptr [ebp-14],eax
 005D8939    mov         eax,dword ptr [ebp-4]
 005D893C    call        005D9020
 005D8941    test        al,al
>005D8943    je          005D898D
 005D8945    mov         ax,word ptr [ebp-6]
 005D8949    push        eax
 005D894A    mov         eax,dword ptr [ebp-0C]
 005D894D    push        eax
 005D894E    mov         eax,dword ptr [ebp-4]
 005D8951    mov         ecx,dword ptr [eax+50];TApplication.FHelpFile:String
 005D8954    mov         edx,dword ptr [ebp-14]
 005D8957    mov         eax,dword ptr [ebp-4]
 005D895A    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 005D895D    mov         ebx,dword ptr [eax]
 005D895F    call        dword ptr [ebx+20]
 005D8962    mov         byte ptr [ebp-0D],al
>005D8965    jmp         005D898D
 005D8967    mov         eax,dword ptr [ebp-4]
 005D896A    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>005D8971    jne         005D898D
 005D8973    mov         eax,dword ptr [ebp-0C]
 005D8976    push        eax
 005D8977    movzx       eax,word ptr [ebp-6]
 005D897B    push        eax
 005D897C    push        0B01F
 005D8981    mov         eax,dword ptr [ebp-4]
 005D8984    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005D8987    push        eax
 005D8988    call        USER32.PostMessageA
 005D898D    mov         al,byte ptr [ebp-0D]
 005D8990    pop         ebx
 005D8991    mov         esp,ebp
 005D8993    pop         ebp
 005D8994    ret
end;*}

//005D8998
{*function sub_005D8998(?:TApplication; ?:?):?;
begin
 005D8998    push        ebp
 005D8999    mov         ebp,esp
 005D899B    add         esp,0FFFFFFF0
 005D899E    push        ebx
 005D899F    xor         ecx,ecx
 005D89A1    mov         dword ptr [ebp-10],ecx
 005D89A4    mov         dword ptr [ebp-8],edx
 005D89A7    mov         dword ptr [ebp-4],eax
 005D89AA    xor         eax,eax
 005D89AC    push        ebp
 005D89AD    push        5D8A00
 005D89B2    push        dword ptr fs:[eax]
 005D89B5    mov         dword ptr fs:[eax],esp
 005D89B8    mov         byte ptr [ebp-9],1
 005D89BC    mov         eax,dword ptr [ebp-4]
 005D89BF    call        005D9020
 005D89C4    test        al,al
>005D89C6    je          005D89E6
 005D89C8    lea         edx,[ebp-10]
 005D89CB    mov         eax,dword ptr [ebp-4]
 005D89CE    call        005D9998
 005D89D3    mov         ecx,dword ptr [ebp-10]
 005D89D6    mov         edx,dword ptr [ebp-8]
 005D89D9    mov         eax,dword ptr [ebp-4]
 005D89DC    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 005D89DF    mov         ebx,dword ptr [eax]
 005D89E1    call        dword ptr [ebx+0C]
>005D89E4    jmp         005D89EA
 005D89E6    mov         byte ptr [ebp-9],0
 005D89EA    xor         eax,eax
 005D89EC    pop         edx
 005D89ED    pop         ecx
 005D89EE    pop         ecx
 005D89EF    mov         dword ptr fs:[eax],edx
 005D89F2    push        5D8A07
 005D89F7    lea         eax,[ebp-10]
 005D89FA    call        @LStrClr
 005D89FF    ret
>005D8A00    jmp         @HandleFinally
>005D8A05    jmp         005D89F7
 005D8A07    mov         al,byte ptr [ebp-9]
 005D8A0A    pop         ebx
 005D8A0B    mov         esp,ebp
 005D8A0D    pop         ebp
 005D8A0E    ret
end;*}

//005D8A10
{*function sub_005D8A10(?:TApplication; ?:THelpContext):?;
begin
 005D8A10    push        ebp
 005D8A11    mov         ebp,esp
 005D8A13    add         esp,0FFFFFFF0
 005D8A16    push        ebx
 005D8A17    xor         ecx,ecx
 005D8A19    mov         dword ptr [ebp-10],ecx
 005D8A1C    mov         dword ptr [ebp-8],edx
 005D8A1F    mov         dword ptr [ebp-4],eax
 005D8A22    xor         eax,eax
 005D8A24    push        ebp
 005D8A25    push        5D8A78
 005D8A2A    push        dword ptr fs:[eax]
 005D8A2D    mov         dword ptr fs:[eax],esp
 005D8A30    mov         byte ptr [ebp-9],1
 005D8A34    mov         eax,dword ptr [ebp-4]
 005D8A37    call        005D9020
 005D8A3C    test        al,al
>005D8A3E    je          005D8A5E
 005D8A40    lea         edx,[ebp-10]
 005D8A43    mov         eax,dword ptr [ebp-4]
 005D8A46    call        005D9998
 005D8A4B    mov         ecx,dword ptr [ebp-10]
 005D8A4E    mov         edx,dword ptr [ebp-8]
 005D8A51    mov         eax,dword ptr [ebp-4]
 005D8A54    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 005D8A57    mov         ebx,dword ptr [eax]
 005D8A59    call        dword ptr [ebx+10]
>005D8A5C    jmp         005D8A62
 005D8A5E    mov         byte ptr [ebp-9],0
 005D8A62    xor         eax,eax
 005D8A64    pop         edx
 005D8A65    pop         ecx
 005D8A66    pop         ecx
 005D8A67    mov         dword ptr fs:[eax],edx
 005D8A6A    push        5D8A7F
 005D8A6F    lea         eax,[ebp-10]
 005D8A72    call        @LStrClr
 005D8A77    ret
>005D8A78    jmp         @HandleFinally
>005D8A7D    jmp         005D8A6F
 005D8A7F    mov         al,byte ptr [ebp-9]
 005D8A82    pop         ebx
 005D8A83    mov         esp,ebp
 005D8A85    pop         ebp
 005D8A86    ret
end;*}

//005D8A88
{*function sub_005D8A88(?:TApplication; ?:?; ?:THelpContext):?;
begin
 005D8A88    push        ebp
 005D8A89    mov         ebp,esp
 005D8A8B    add         esp,0FFFFFFF0
 005D8A8E    mov         dword ptr [ebp-0C],ecx
 005D8A91    mov         dword ptr [ebp-8],edx
 005D8A94    mov         dword ptr [ebp-4],eax
 005D8A97    mov         ecx,dword ptr [ebp-0C]
 005D8A9A    mov         dx,word ptr [ebp-8]
 005D8A9E    mov         eax,dword ptr [ebp-4]
 005D8AA1    call        005D8828
 005D8AA6    mov         byte ptr [ebp-0D],al
 005D8AA9    mov         al,byte ptr [ebp-0D]
 005D8AAC    mov         esp,ebp
 005D8AAE    pop         ebp
 005D8AAF    ret
end;*}

//005D8AB0
{*procedure sub_005D8AB0(?:TApplication; ?:?);
begin
 005D8AB0    push        ebp
 005D8AB1    mov         ebp,esp
 005D8AB3    add         esp,0FFFFFFF8
 005D8AB6    mov         dword ptr [ebp-8],edx
 005D8AB9    mov         dword ptr [ebp-4],eax
 005D8ABC    mov         edx,dword ptr [ebp-8]
 005D8ABF    xor         eax,eax
 005D8AC1    call        ParamStr
 005D8AC6    pop         ecx
 005D8AC7    pop         ecx
 005D8AC8    pop         ebp
 005D8AC9    ret
end;*}

//005D8ACC
procedure sub_005D8ACC(?:TApplication; ?:Boolean);
begin
{*
 005D8ACC    push        ebp
 005D8ACD    mov         ebp,esp
 005D8ACF    add         esp,0FFFFFFF8
 005D8AD2    mov         byte ptr [ebp-5],dl
 005D8AD5    mov         dword ptr [ebp-4],eax
 005D8AD8    mov         eax,dword ptr [ebp-4]
 005D8ADB    mov         al,byte ptr [eax+88];TApplication.FShowHint:Boolean
 005D8AE1    cmp         al,byte ptr [ebp-5]
>005D8AE4    je          005D8B43
 005D8AE6    mov         al,byte ptr [ebp-5]
 005D8AE9    mov         edx,dword ptr [ebp-4]
 005D8AEC    mov         byte ptr [edx+88],al;TApplication.FShowHint:Boolean
 005D8AF2    mov         eax,dword ptr [ebp-4]
 005D8AF5    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>005D8AFC    je          005D8B2A
 005D8AFE    mov         ecx,dword ptr [ebp-4]
 005D8B01    mov         dl,1
 005D8B03    mov         eax,[006E3FD8];^gvar_005EED40
 005D8B08    call        dword ptr [eax+2C]
 005D8B0B    mov         edx,dword ptr [ebp-4]
 005D8B0E    mov         dword ptr [edx+84],eax;TApplication.FHintWindow:THintWindow
 005D8B14    mov         eax,dword ptr [ebp-4]
 005D8B17    mov         edx,dword ptr [eax+5C];TApplication.FHintColor:TColor
 005D8B1A    mov         eax,dword ptr [ebp-4]
 005D8B1D    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D8B23    call        TControl.SetColor
>005D8B28    jmp         005D8B43
 005D8B2A    mov         eax,dword ptr [ebp-4]
 005D8B2D    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D8B33    call        TObject.Free
 005D8B38    mov         eax,dword ptr [ebp-4]
 005D8B3B    xor         edx,edx
 005D8B3D    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 005D8B43    pop         ecx
 005D8B44    pop         ecx
 005D8B45    pop         ebp
 005D8B46    ret
*}
end;

//005D8B48
procedure sub_005D8B48(?:TApplication);
begin
{*
 005D8B48    push        ebp
 005D8B49    mov         ebp,esp
 005D8B4B    add         esp,0FFFFFFF0
 005D8B4E    mov         dword ptr [ebp-4],eax
 005D8B51    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D8B56    call        005D5740
 005D8B5B    dec         eax
 005D8B5C    test        eax,eax
>005D8B5E    jl          005D8BBE
 005D8B60    inc         eax
 005D8B61    mov         dword ptr [ebp-0C],eax
 005D8B64    mov         dword ptr [ebp-8],0
 005D8B6B    mov         edx,dword ptr [ebp-8]
 005D8B6E    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D8B73    call        005D571C
 005D8B78    mov         dword ptr [ebp-10],eax
 005D8B7B    mov         eax,dword ptr [ebp-10]
 005D8B7E    call        TWinControl.HandleAllocated
 005D8B83    test        al,al
>005D8B85    je          005D8BB6
 005D8B87    mov         eax,dword ptr [ebp-10]
 005D8B8A    call        TWinControl.GetHandle
 005D8B8F    push        eax
 005D8B90    call        USER32.IsWindowVisible
 005D8B95    test        eax,eax
>005D8B97    je          005D8BB6
 005D8B99    mov         eax,dword ptr [ebp-10]
 005D8B9C    call        TWinControl.GetHandle
 005D8BA1    push        eax
 005D8BA2    call        USER32.IsWindowEnabled
 005D8BA7    test        eax,eax
>005D8BA9    je          005D8BB6
 005D8BAB    mov         eax,dword ptr [ebp-10]
 005D8BAE    mov         edx,dword ptr [eax]
 005D8BB0    call        dword ptr [edx+0D8]
 005D8BB6    inc         dword ptr [ebp-8]
 005D8BB9    dec         dword ptr [ebp-0C]
>005D8BBC    jne         005D8B6B
 005D8BBE    mov         esp,ebp
 005D8BC0    pop         ebp
 005D8BC1    ret
*}
end;

//005D8BC4
{*function sub_005D8BC4(?:TApplication):?;
begin
 005D8BC4    push        ebp
 005D8BC5    mov         ebp,esp
 005D8BC7    add         esp,0FFFFFFEC
 005D8BCA    mov         dword ptr [ebp-4],eax
 005D8BCD    lea         eax,[ebp-14]
 005D8BD0    push        eax
 005D8BD1    call        USER32.GetCursorPos
 005D8BD6    lea         eax,[ebp-14]
 005D8BD9    mov         dl,1
 005D8BDB    call        005F16D8
 005D8BE0    mov         dword ptr [ebp-8],eax
 005D8BE3    cmp         dword ptr [ebp-8],0
>005D8BE7    je          005D8BF7
 005D8BE9    mov         eax,dword ptr [ebp-8]
 005D8BEC    test        byte ptr [eax+1C],10
>005D8BF0    je          005D8BF7
 005D8BF2    xor         eax,eax
 005D8BF4    mov         dword ptr [ebp-8],eax
 005D8BF7    call        005EFAB0
 005D8BFC    mov         dword ptr [ebp-0C],eax
 005D8BFF    mov         eax,dword ptr [ebp-4]
 005D8C02    mov         eax,dword ptr [eax+48]
 005D8C05    cmp         eax,dword ptr [ebp-8]
>005D8C08    je          005D8C7B
 005D8C0A    mov         eax,dword ptr [ebp-4]
 005D8C0D    cmp         dword ptr [eax+48],0
>005D8C11    je          005D8C19
 005D8C13    cmp         dword ptr [ebp-0C],0
>005D8C17    je          005D8C2A
 005D8C19    cmp         dword ptr [ebp-0C],0
>005D8C1D    je          005D8C3E
 005D8C1F    mov         eax,dword ptr [ebp-4]
 005D8C22    mov         eax,dword ptr [eax+48]
 005D8C25    cmp         eax,dword ptr [ebp-0C]
>005D8C28    jne         005D8C3E
 005D8C2A    push        0
 005D8C2C    xor         ecx,ecx
 005D8C2E    mov         edx,0B014
 005D8C33    mov         eax,dword ptr [ebp-4]
 005D8C36    mov         eax,dword ptr [eax+48]
 005D8C39    call        005F4FA8
 005D8C3E    mov         eax,dword ptr [ebp-8]
 005D8C41    mov         edx,dword ptr [ebp-4]
 005D8C44    mov         dword ptr [edx+48],eax
 005D8C47    mov         eax,dword ptr [ebp-4]
 005D8C4A    cmp         dword ptr [eax+48],0
>005D8C4E    je          005D8C56
 005D8C50    cmp         dword ptr [ebp-0C],0
>005D8C54    je          005D8C67
 005D8C56    cmp         dword ptr [ebp-0C],0
>005D8C5A    je          005D8C7B
 005D8C5C    mov         eax,dword ptr [ebp-4]
 005D8C5F    mov         eax,dword ptr [eax+48]
 005D8C62    cmp         eax,dword ptr [ebp-0C]
>005D8C65    jne         005D8C7B
 005D8C67    push        0
 005D8C69    xor         ecx,ecx
 005D8C6B    mov         edx,0B013
 005D8C70    mov         eax,dword ptr [ebp-4]
 005D8C73    mov         eax,dword ptr [eax+48]
 005D8C76    call        005F4FA8
 005D8C7B    mov         eax,dword ptr [ebp-8]
 005D8C7E    mov         esp,ebp
 005D8C80    pop         ebp
 005D8C81    ret
end;*}

//005D8C84
{*procedure sub_005D8C84(?:TApplication; ?:?);
begin
 005D8C84    push        ebp
 005D8C85    mov         ebp,esp
 005D8C87    add         esp,0FFFFFFE8
 005D8C8A    push        ebx
 005D8C8B    push        esi
 005D8C8C    push        edi
 005D8C8D    xor         ecx,ecx
 005D8C8F    mov         dword ptr [ebp-14],ecx
 005D8C92    mov         dword ptr [ebp-18],ecx
 005D8C95    mov         dword ptr [ebp-10],edx
 005D8C98    mov         dword ptr [ebp-4],eax
 005D8C9B    xor         eax,eax
 005D8C9D    push        ebp
 005D8C9E    push        5D8D97
 005D8CA3    push        dword ptr fs:[eax]
 005D8CA6    mov         dword ptr fs:[eax],esp
 005D8CA9    mov         eax,dword ptr [ebp-4]
 005D8CAC    call        005D8BC4
 005D8CB1    mov         dword ptr [ebp-8],eax
 005D8CB4    mov         eax,dword ptr [ebp-4]
 005D8CB7    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>005D8CBE    je          005D8CD1
 005D8CC0    mov         eax,dword ptr [ebp-4]
 005D8CC3    cmp         dword ptr [eax+48],0;TApplication.FMouseControl:TControl
>005D8CC7    jne         005D8CD1
 005D8CC9    mov         eax,dword ptr [ebp-4]
 005D8CCC    call        005D92C0
 005D8CD1    lea         edx,[ebp-18]
 005D8CD4    mov         eax,dword ptr [ebp-8]
 005D8CD7    call        005D66C4
 005D8CDC    mov         eax,dword ptr [ebp-18]
 005D8CDF    lea         edx,[ebp-14]
 005D8CE2    call        005EFA5C
 005D8CE7    mov         edx,dword ptr [ebp-14]
 005D8CEA    mov         eax,[006ECD7C];0x0 Application:TApplication
 005D8CEF    call        005D8E74
 005D8CF4    mov         byte ptr [ebp-9],1
 005D8CF8    xor         eax,eax
 005D8CFA    push        ebp
 005D8CFB    push        5D8D40
 005D8D00    push        dword ptr fs:[eax]
 005D8D03    mov         dword ptr fs:[eax],esp
 005D8D06    mov         eax,dword ptr [ebp-4]
 005D8D09    cmp         word ptr [eax+0EA],0;TApplication.?fEA:word
>005D8D11    je          005D8D28
 005D8D13    lea         ecx,[ebp-9]
 005D8D16    mov         ebx,dword ptr [ebp-4]
 005D8D19    mov         edx,dword ptr [ebp-4]
 005D8D1C    mov         eax,dword ptr [ebx+0EC];TApplication.?fEC:dword
 005D8D22    call        dword ptr [ebx+0E8];TApplication.FOnIdle
 005D8D28    cmp         byte ptr [ebp-9],0
>005D8D2C    je          005D8D36
 005D8D2E    mov         eax,dword ptr [ebp-4]
 005D8D31    call        005D8B48
 005D8D36    xor         eax,eax
 005D8D38    pop         edx
 005D8D39    pop         ecx
 005D8D3A    pop         ecx
 005D8D3B    mov         dword ptr fs:[eax],edx
>005D8D3E    jmp         005D8D55
>005D8D40    jmp         @HandleAnyException
 005D8D45    mov         edx,dword ptr [ebp-4]
 005D8D48    mov         eax,dword ptr [ebp-4]
 005D8D4B    call        TApplication.HandleException
 005D8D50    call        @DoneExcept
 005D8D55    call        KERNEL32.GetCurrentThreadId
 005D8D5A    mov         edx,dword ptr ds:[6EA2D0];^gvar_006ED2F8:DWORD
 005D8D60    cmp         eax,dword ptr [edx]
>005D8D62    jne         005D8D71
 005D8D64    call        CheckSynchronize
 005D8D69    test        al,al
>005D8D6B    je          005D8D71
 005D8D6D    mov         byte ptr [ebp-9],0
 005D8D71    cmp         byte ptr [ebp-9],0
>005D8D75    je          005D8D7C
 005D8D77    call        USER32.WaitMessage
 005D8D7C    xor         eax,eax
 005D8D7E    pop         edx
 005D8D7F    pop         ecx
 005D8D80    pop         ecx
 005D8D81    mov         dword ptr fs:[eax],edx
 005D8D84    push        5D8D9E
 005D8D89    lea         eax,[ebp-18]
 005D8D8C    mov         edx,2
 005D8D91    call        @LStrArrayClr
 005D8D96    ret
>005D8D97    jmp         @HandleFinally
>005D8D9C    jmp         005D8D89
 005D8D9E    pop         edi
 005D8D9F    pop         esi
 005D8DA0    pop         ebx
 005D8DA1    mov         esp,ebp
 005D8DA3    pop         ebp
 005D8DA4    ret
end;*}

//005D8E74
{*procedure sub_005D8E74(?:TApplication; ?:?);
begin
 005D8E74    push        ebp
 005D8E75    mov         ebp,esp
 005D8E77    add         esp,0FFFFFFF4
 005D8E7A    push        ebx
 005D8E7B    push        esi
 005D8E7C    mov         dword ptr [ebp-8],edx
 005D8E7F    mov         dword ptr [ebp-4],eax
 005D8E82    mov         eax,dword ptr [ebp-4]
 005D8E85    mov         eax,dword ptr [eax+54];TApplication.FHint:String
 005D8E88    mov         edx,dword ptr [ebp-8]
 005D8E8B    call        @LStrCmp
>005D8E90    je          005D8F19
 005D8E96    mov         eax,dword ptr [ebp-4]
 005D8E99    add         eax,54;TApplication.FHint:String
 005D8E9C    mov         edx,dword ptr [ebp-8]
 005D8E9F    call        @LStrAsg
 005D8EA4    mov         eax,dword ptr [ebp-4]
 005D8EA7    cmp         word ptr [eax+0E2],0;TApplication.?fE2:word
>005D8EAF    je          005D8EC5
 005D8EB1    mov         ebx,dword ptr [ebp-4]
 005D8EB4    mov         edx,dword ptr [ebp-4]
 005D8EB7    mov         eax,dword ptr [ebx+0E4];TApplication.?fE4:dword
 005D8EBD    call        dword ptr [ebx+0E0];TApplication.FOnHint
>005D8EC3    jmp         005D8F19
 005D8EC5    mov         ecx,dword ptr [ebp-4]
 005D8EC8    mov         dl,1
 005D8ECA    mov         eax,[00586C34];THintAction
 005D8ECF    call        THintAction.Create;THintAction.Create
 005D8ED4    mov         dword ptr [ebp-0C],eax
 005D8ED7    mov         edx,dword ptr [ebp-8]
 005D8EDA    mov         eax,dword ptr [ebp-0C]
 005D8EDD    call        TOpenPicture.SetHint
 005D8EE2    xor         eax,eax
 005D8EE4    push        ebp
 005D8EE5    push        5D8F12
 005D8EEA    push        dword ptr fs:[eax]
 005D8EED    mov         dword ptr fs:[eax],esp
 005D8EF0    mov         eax,dword ptr [ebp-0C]
 005D8EF3    mov         si,0FFEF
 005D8EF7    call        @CallDynaInst;TCustomAction.sub_0058DD4C
 005D8EFC    xor         eax,eax
 005D8EFE    pop         edx
 005D8EFF    pop         ecx
 005D8F00    pop         ecx
 005D8F01    mov         dword ptr fs:[eax],edx
 005D8F04    push        5D8F19
 005D8F09    mov         eax,dword ptr [ebp-0C]
 005D8F0C    call        TObject.Free
 005D8F11    ret
>005D8F12    jmp         @HandleFinally
>005D8F17    jmp         005D8F09
 005D8F19    pop         esi
 005D8F1A    pop         ebx
 005D8F1B    mov         esp,ebp
 005D8F1D    pop         ebp
 005D8F1E    ret
end;*}

//005D8F20
{*procedure sub_005D8F20(?:?; ?:?);
begin
 005D8F20    push        ebp
 005D8F21    mov         ebp,esp
 005D8F23    push        ecx
 005D8F24    mov         byte ptr [ebp-1],al
 005D8F27    mov         eax,dword ptr [ebp+8]
 005D8F2A    mov         eax,dword ptr [eax-4]
 005D8F2D    mov         eax,dword ptr [eax+30]
 005D8F30    push        eax
 005D8F31    call        USER32.IsWindowVisible
 005D8F36    cmp         eax,1
 005D8F39    sbb         eax,eax
 005D8F3B    inc         eax
 005D8F3C    cmp         al,byte ptr ds:[6E40FC];0x0 gvar_006E40FC
>005D8F42    jne         005D8F7D
 005D8F44    mov         al,[006E40FC];0x0 gvar_006E40FC
 005D8F49    cmp         al,byte ptr [ebp-1]
>005D8F4C    je          005D8F7D
 005D8F4E    xor         eax,eax
 005D8F50    mov         al,byte ptr [ebp-1]
 005D8F53    movzx       eax,word ptr [eax*2+6E4100]
 005D8F5B    push        eax
 005D8F5C    push        0
 005D8F5E    push        0
 005D8F60    push        0
 005D8F62    push        0
 005D8F64    push        0
 005D8F66    mov         eax,dword ptr [ebp+8]
 005D8F69    mov         eax,dword ptr [eax-4]
 005D8F6C    mov         eax,dword ptr [eax+30]
 005D8F6F    push        eax
 005D8F70    call        USER32.SetWindowPos
 005D8F75    mov         al,byte ptr [ebp-1]
 005D8F78    mov         [006E40FC],al;gvar_006E40FC
 005D8F7D    pop         ecx
 005D8F7E    pop         ebp
 005D8F7F    ret
end;*}

//005D8F80
procedure sub_005D8F80(?:TApplication);
begin
{*
 005D8F80    push        ebp
 005D8F81    mov         ebp,esp
 005D8F83    add         esp,0FFFFFFF0
 005D8F86    mov         dword ptr [ebp-4],eax
 005D8F89    mov         eax,dword ptr [ebp-4]
 005D8F8C    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>005D8F90    je          005D9019
 005D8F96    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D8F9B    call        005D5700
 005D8FA0    dec         eax
 005D8FA1    test        eax,eax
>005D8FA3    jl          005D9010
 005D8FA5    inc         eax
 005D8FA6    mov         dword ptr [ebp-10],eax
 005D8FA9    mov         dword ptr [ebp-8],0
 005D8FB0    mov         edx,dword ptr [ebp-8]
 005D8FB3    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D8FB8    call        005D56DC
 005D8FBD    mov         dword ptr [ebp-0C],eax
 005D8FC0    mov         eax,dword ptr [ebp-0C]
 005D8FC3    cmp         byte ptr [eax+57],0
>005D8FC7    je          005D9008
 005D8FC9    mov         eax,dword ptr [ebp-0C]
 005D8FCC    cmp         dword ptr [eax+190],0
>005D8FD3    je          005D8FFD
 005D8FD5    mov         eax,dword ptr [ebp-0C]
 005D8FD8    call        TWinControl.HandleAllocated
 005D8FDD    test        al,al
>005D8FDF    jne         005D8FFD
 005D8FE1    mov         eax,dword ptr [ebp-0C]
 005D8FE4    mov         eax,dword ptr [eax+190]
 005D8FEA    push        eax
 005D8FEB    mov         eax,dword ptr [ebp-0C]
 005D8FEE    call        TWinControl.GetHandle
 005D8FF3    push        eax
 005D8FF4    call        USER32.IsChild
 005D8FF9    test        eax,eax
>005D8FFB    jne         005D9008
 005D8FFD    push        ebp
 005D8FFE    mov         al,1
 005D9000    call        005D8F20
 005D9005    pop         ecx
>005D9006    jmp         005D9019
 005D9008    inc         dword ptr [ebp-8]
 005D900B    dec         dword ptr [ebp-10]
>005D900E    jne         005D8FB0
 005D9010    push        ebp
 005D9011    xor         eax,eax
 005D9013    call        005D8F20
 005D9018    pop         ecx
 005D9019    mov         esp,ebp
 005D901B    pop         ebp
 005D901C    ret
*}
end;

//005D9020
{*function sub_005D9020(?:TApplication):?;
begin
 005D9020    push        ebp
 005D9021    mov         ebp,esp
 005D9023    add         esp,0FFFFFFF8
 005D9026    mov         dword ptr [ebp-4],eax
 005D9029    mov         byte ptr [ebp-5],0
 005D902D    mov         eax,dword ptr [ebp-4]
 005D9030    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>005D9034    jne         005D9046
 005D9036    mov         eax,dword ptr [ebp-4]
 005D9039    add         eax,4C;TApplication.FHelpSystem:IHelpSystem
 005D903C    call        @IntfClear
 005D9041    call        00640050
 005D9046    mov         eax,dword ptr [ebp-4]
 005D9049    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>005D904D    je          005D9053
 005D904F    mov         byte ptr [ebp-5],1
 005D9053    mov         al,byte ptr [ebp-5]
 005D9056    pop         ecx
 005D9057    pop         ecx
 005D9058    pop         ebp
 005D9059    ret
end;*}

//005D905C
{*procedure sub_005D905C(?:TApplication; ?:Integer; ?:?);
begin
 005D905C    push        ebp
 005D905D    mov         ebp,esp
 005D905F    add         esp,0FFFFFFF4
 005D9062    mov         byte ptr [ebp-9],cl
 005D9065    mov         dword ptr [ebp-8],edx
 005D9068    mov         dword ptr [ebp-4],eax
 005D906B    mov         eax,dword ptr [ebp-4]
 005D906E    call        005D90B4
 005D9073    push        5D675C;HintTimerProc
 005D9078    mov         eax,dword ptr [ebp-8]
 005D907B    push        eax
 005D907C    push        0
 005D907E    push        0
 005D9080    call        USER32.SetTimer
 005D9085    mov         edx,dword ptr [ebp-4]
 005D9088    mov         word ptr [edx+8A],ax
 005D908F    mov         al,byte ptr [ebp-9]
 005D9092    mov         edx,dword ptr [ebp-4]
 005D9095    mov         byte ptr [edx+89],al
 005D909B    mov         eax,dword ptr [ebp-4]
 005D909E    cmp         word ptr [eax+8A],0
>005D90A6    jne         005D90B0
 005D90A8    mov         eax,dword ptr [ebp-4]
 005D90AB    call        005D92C0
 005D90B0    mov         esp,ebp
 005D90B2    pop         ebp
 005D90B3    ret
end;*}

//005D90B4
procedure sub_005D90B4(?:TApplication);
begin
{*
 005D90B4    push        ebp
 005D90B5    mov         ebp,esp
 005D90B7    push        ecx
 005D90B8    mov         dword ptr [ebp-4],eax
 005D90BB    mov         eax,dword ptr [ebp-4]
 005D90BE    cmp         word ptr [eax+8A],0
>005D90C6    je          005D90E6
 005D90C8    mov         eax,dword ptr [ebp-4]
 005D90CB    movzx       eax,word ptr [eax+8A]
 005D90D2    push        eax
 005D90D3    push        0
 005D90D5    call        USER32.KillTimer
 005D90DA    mov         eax,dword ptr [ebp-4]
 005D90DD    mov         word ptr [eax+8A],0
 005D90E6    pop         ecx
 005D90E7    pop         ebp
 005D90E8    ret
*}
end;

//005D90EC
{*procedure sub_005D90EC(?:TApplication; ?:TControl; ?:?);
begin
 005D90EC    push        ebp
 005D90ED    mov         ebp,esp
 005D90EF    add         esp,0FFFFFFD0
 005D90F2    mov         dword ptr [ebp-0C],ecx
 005D90F5    mov         dword ptr [ebp-8],edx
 005D90F8    mov         dword ptr [ebp-4],eax
 005D90FB    lea         edx,[ebp-30]
 005D90FE    mov         eax,dword ptr [ebp-0C]
 005D9101    mov         eax,dword ptr [eax+8]
 005D9104    call        0063D050
 005D9109    lea         edx,[ebp-30]
 005D910C    lea         ecx,[ebp-28]
 005D910F    mov         eax,dword ptr [ebp-8]
 005D9112    call        005F3020
 005D9117    lea         eax,[ebp-28]
 005D911A    mov         dl,1
 005D911C    call        005F16D8
 005D9121    call        005D6714
 005D9126    mov         dword ptr [ebp-10],eax
 005D9129    cmp         dword ptr [ebp-10],0
>005D912D    je          005D913B
 005D912F    mov         eax,dword ptr [ebp-10]
 005D9132    cmp         byte ptr [eax+99],0
>005D9139    jne         005D9148
 005D913B    mov         eax,dword ptr [ebp-4]
 005D913E    call        005D92C0
>005D9143    jmp         005D9220
 005D9148    mov         eax,dword ptr [ebp-10]
 005D914B    mov         edx,dword ptr [ebp-4]
 005D914E    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>005D9151    jne         005D9189
 005D9153    lea         edx,[ebp-30]
 005D9156    mov         eax,dword ptr [ebp-0C]
 005D9159    mov         eax,dword ptr [eax+8]
 005D915C    call        0063D050
 005D9161    lea         edx,[ebp-30]
 005D9164    lea         ecx,[ebp-28]
 005D9167    mov         eax,dword ptr [ebp-8]
 005D916A    call        005F3020
 005D916F    push        dword ptr [ebp-24]
 005D9172    push        dword ptr [ebp-28]
 005D9175    mov         eax,dword ptr [ebp-4]
 005D9178    add         eax,64;TApplication.FHintCursorRect:TRect
 005D917B    push        eax
 005D917C    call        USER32.PtInRect
 005D9181    test        eax,eax
>005D9183    jne         005D9220
 005D9189    mov         eax,dword ptr [ebp-4]
 005D918C    mov         al,byte ptr [eax+58];TApplication.FHintActive:Boolean
 005D918F    mov         byte ptr [ebp-15],al
 005D9192    cmp         byte ptr [ebp-15],0
>005D9196    je          005D91A6
 005D9198    mov         eax,dword ptr [ebp-4]
 005D919B    mov         eax,dword ptr [eax+80];TApplication.FHintShortPause:Integer
 005D91A1    mov         dword ptr [ebp-14],eax
>005D91A4    jmp         005D91AF
 005D91A6    mov         eax,dword ptr [ebp-4]
 005D91A9    mov         eax,dword ptr [eax+78];TApplication.FHintPause:Integer
 005D91AC    mov         dword ptr [ebp-14],eax
 005D91AF    lea         eax,[ebp-14]
 005D91B2    push        eax
 005D91B3    xor         ecx,ecx
 005D91B5    mov         cl,byte ptr [ebp-15]
 005D91B8    mov         edx,0B041
 005D91BD    mov         eax,dword ptr [ebp-10]
 005D91C0    call        005F4FA8
 005D91C5    cmp         byte ptr [ebp-15],0
>005D91C9    je          005D91F9
 005D91CB    cmp         dword ptr [ebp-14],0
>005D91CF    jne         005D91F9
 005D91D1    mov         al,byte ptr [ebp-15]
 005D91D4    mov         edx,dword ptr [ebp-4]
 005D91D7    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 005D91DA    mov         eax,dword ptr [ebp-10]
 005D91DD    mov         edx,dword ptr [ebp-4]
 005D91E0    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 005D91E3    lea         eax,[ebp-1D]
 005D91E6    push        eax
 005D91E7    call        USER32.GetCursorPos
 005D91EC    lea         edx,[ebp-1D]
 005D91EF    mov         eax,dword ptr [ebp-4]
 005D91F2    call        005D95C4
>005D91F7    jmp         005D9220
 005D91F9    mov         eax,dword ptr [ebp-4]
 005D91FC    call        005D92C0
 005D9201    mov         al,byte ptr [ebp-15]
 005D9204    mov         edx,dword ptr [ebp-4]
 005D9207    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 005D920A    mov         eax,dword ptr [ebp-10]
 005D920D    mov         edx,dword ptr [ebp-4]
 005D9210    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 005D9213    xor         ecx,ecx
 005D9215    mov         edx,dword ptr [ebp-14]
 005D9218    mov         eax,dword ptr [ebp-4]
 005D921B    call        005D905C
 005D9220    mov         esp,ebp
 005D9222    pop         ebp
 005D9223    ret
end;*}

//005D9224
procedure TApplication.HintTimerExpired;
begin
{*
 005D9224    push        ebp
 005D9225    mov         ebp,esp
 005D9227    add         esp,0FFFFFFF4
 005D922A    mov         dword ptr [ebp-4],eax
 005D922D    mov         eax,dword ptr [ebp-4]
 005D9230    call        005D90B4
 005D9235    mov         eax,dword ptr [ebp-4]
 005D9238    mov         al,byte ptr [eax+89]
 005D923E    sub         al,1
>005D9240    jb          005D924E
>005D9242    jne         005D9262
 005D9244    mov         eax,dword ptr [ebp-4]
 005D9247    call        005D9268
>005D924C    jmp         005D9262
 005D924E    lea         eax,[ebp-0C]
 005D9251    push        eax
 005D9252    call        USER32.GetCursorPos
 005D9257    lea         edx,[ebp-0C]
 005D925A    mov         eax,dword ptr [ebp-4]
 005D925D    call        005D95C4
 005D9262    mov         esp,ebp
 005D9264    pop         ebp
 005D9265    ret
*}
end;

//005D9268
procedure sub_005D9268(?:TApplication);
begin
{*
 005D9268    push        ebp
 005D9269    mov         ebp,esp
 005D926B    push        ecx
 005D926C    mov         dword ptr [ebp-4],eax
 005D926F    mov         eax,dword ptr [ebp-4]
 005D9272    cmp         dword ptr [eax+84],0;TApplication.FHintWindow:THintWindow
>005D9279    je          005D92BB
 005D927B    mov         eax,dword ptr [ebp-4]
 005D927E    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9284    call        TWinControl.HandleAllocated
 005D9289    test        al,al
>005D928B    je          005D92BB
 005D928D    mov         eax,dword ptr [ebp-4]
 005D9290    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9296    call        TWinControl.GetHandle
 005D929B    push        eax
 005D929C    call        USER32.IsWindowVisible
 005D92A1    test        eax,eax
>005D92A3    je          005D92BB
 005D92A5    push        0
 005D92A7    mov         eax,dword ptr [ebp-4]
 005D92AA    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D92B0    call        TWinControl.GetHandle
 005D92B5    push        eax
 005D92B6    call        USER32.ShowWindow
 005D92BB    pop         ecx
 005D92BC    pop         ebp
 005D92BD    ret
*}
end;

//005D92C0
procedure sub_005D92C0(?:TApplication);
begin
{*
 005D92C0    push        ebp
 005D92C1    mov         ebp,esp
 005D92C3    push        ecx
 005D92C4    mov         dword ptr [ebp-4],eax
 005D92C7    mov         eax,dword ptr [ebp-4]
 005D92CA    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>005D92CE    je          005D92F4
 005D92D0    mov         eax,dword ptr [ebp-4]
 005D92D3    call        005D9268
 005D92D8    mov         eax,dword ptr [ebp-4]
 005D92DB    xor         edx,edx
 005D92DD    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 005D92E0    mov         eax,dword ptr [ebp-4]
 005D92E3    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 005D92E7    call        UnhookHintHooks
 005D92EC    mov         eax,dword ptr [ebp-4]
 005D92EF    call        005D90B4
 005D92F4    pop         ecx
 005D92F5    pop         ebp
 005D92F6    ret
*}
end;

//005D92F8
{*function sub_005D92F8(?:?; ?:Integer):?;
begin
 005D92F8    push        ebp
 005D92F9    mov         ebp,esp
 005D92FB    push        ecx
 005D92FC    mov         ecx,edx
 005D92FE    mov         edx,edi
 005D9300    mov         edi,eax
 005D9302    pop         eax
 005D9303    repe scas   byte ptr [edi]
 005D9305    mov         eax,ecx
 005D9307    mov         edi,edx
 005D9309    pop         ebp
 005D930A    ret
end;*}

//005D930C
{*function sub_005D930C:?;
begin
 005D930C    push        ebp
 005D930D    mov         ebp,esp
 005D930F    add         esp,0FFFFFFCC
 005D9312    push        0E
 005D9314    mov         eax,[006EA000];^gvar_006ECEF4
 005D9319    mov         eax,dword ptr [eax]
 005D931B    call        eax
 005D931D    mov         dword ptr [ebp-4],eax
 005D9320    lea         eax,[ebp-34]
 005D9323    push        eax
 005D9324    call        USER32.GetCursor
 005D9329    push        eax
 005D932A    call        USER32.GetIconInfo
 005D932F    test        eax,eax
>005D9331    je          005D9487
 005D9337    xor         eax,eax
 005D9339    push        ebp
 005D933A    push        5D9480
 005D933F    push        dword ptr fs:[eax]
 005D9342    mov         dword ptr fs:[eax],esp
 005D9345    lea         ecx,[ebp-0C]
 005D9348    lea         edx,[ebp-8]
 005D934B    mov         eax,dword ptr [ebp-28]
 005D934E    call        005C3028
 005D9353    mov         eax,dword ptr [ebp-8]
 005D9356    add         eax,dword ptr [ebp-0C]
 005D9359    call        0065744C
 005D935E    mov         dword ptr [ebp-14],eax
 005D9361    xor         eax,eax
 005D9363    push        ebp
 005D9364    push        5D944D
 005D9369    push        dword ptr fs:[eax]
 005D936C    mov         dword ptr fs:[eax],esp
 005D936F    mov         eax,dword ptr [ebp-14]
 005D9372    add         eax,dword ptr [ebp-8]
 005D9375    mov         dword ptr [ebp-18],eax
 005D9378    mov         eax,dword ptr [ebp-18]
 005D937B    push        eax
 005D937C    mov         ecx,dword ptr [ebp-14]
 005D937F    xor         edx,edx
 005D9381    mov         eax,dword ptr [ebp-28]
 005D9384    call        005C310C
 005D9389    test        al,al
>005D938B    je          005D9431
 005D9391    mov         eax,dword ptr [ebp-14]
 005D9394    cmp         word ptr [eax+0E],1
>005D9399    jne         005D9431
 005D939F    mov         eax,dword ptr [ebp-14]
 005D93A2    mov         dword ptr [ebp-20],eax
 005D93A5    mov         eax,dword ptr [ebp-20]
 005D93A8    mov         eax,dword ptr [eax+4]
 005D93AB    mov         edx,dword ptr [ebp-20]
 005D93AE    movzx       edx,word ptr [edx+0E]
 005D93B2    imul        edx
 005D93B4    add         eax,1F
 005D93B7    and         eax,0FFFFFFE0
 005D93BA    test        eax,eax
>005D93BC    jns         005D93C1
 005D93BE    add         eax,7
 005D93C1    sar         eax,3
 005D93C4    mov         dword ptr [ebp-1C],eax
 005D93C7    mov         eax,dword ptr [ebp-20]
 005D93CA    mov         eax,dword ptr [eax+4]
 005D93CD    imul        dword ptr [ebp-1C]
 005D93D0    mov         dword ptr [ebp-10],eax
 005D93D3    mov         eax,dword ptr [ebp-18]
 005D93D6    add         eax,dword ptr [ebp-0C]
 005D93D9    sub         eax,dword ptr [ebp-10]
 005D93DC    mov         dword ptr [ebp-18],eax
 005D93DF    push        ebp
 005D93E0    mov         ecx,0FF
 005D93E5    mov         edx,dword ptr [ebp-10]
 005D93E8    mov         eax,dword ptr [ebp-18]
 005D93EB    call        005D92F8
 005D93F0    pop         ecx
 005D93F1    mov         dword ptr [ebp-4],eax
 005D93F4    cmp         dword ptr [ebp-4],0
>005D93F8    jne         005D9421
 005D93FA    mov         eax,dword ptr [ebp-20]
 005D93FD    mov         eax,dword ptr [eax+8]
 005D9400    mov         edx,dword ptr [ebp-20]
 005D9403    mov         edx,dword ptr [edx+4]
 005D9406    add         edx,edx
 005D9408    cmp         eax,edx
>005D940A    jl          005D9421
 005D940C    push        ebp
 005D940D    mov         eax,dword ptr [ebp-18]
 005D9410    sub         eax,dword ptr [ebp-10]
 005D9413    xor         ecx,ecx
 005D9415    mov         edx,dword ptr [ebp-10]
 005D9418    call        005D92F8
 005D941D    pop         ecx
 005D941E    mov         dword ptr [ebp-4],eax
 005D9421    mov         eax,dword ptr [ebp-4]
 005D9424    cdq
 005D9425    idiv        eax,dword ptr [ebp-1C]
 005D9428    mov         dword ptr [ebp-4],eax
 005D942B    mov         eax,dword ptr [ebp-2C]
 005D942E    sub         dword ptr [ebp-4],eax
 005D9431    xor         eax,eax
 005D9433    pop         edx
 005D9434    pop         ecx
 005D9435    pop         ecx
 005D9436    mov         dword ptr fs:[eax],edx
 005D9439    push        5D9454
 005D943E    mov         edx,dword ptr [ebp-8]
 005D9441    add         edx,dword ptr [ebp-0C]
 005D9444    mov         eax,dword ptr [ebp-14]
 005D9447    call        @FreeMem
 005D944C    ret
>005D944D    jmp         @HandleFinally
>005D9452    jmp         005D943E
 005D9454    xor         eax,eax
 005D9456    pop         edx
 005D9457    pop         ecx
 005D9458    pop         ecx
 005D9459    mov         dword ptr fs:[eax],edx
 005D945C    push        5D9487
 005D9461    cmp         dword ptr [ebp-24],0
>005D9465    je          005D9470
 005D9467    mov         eax,dword ptr [ebp-24]
 005D946A    push        eax
 005D946B    call        GDI32.DeleteObject
 005D9470    cmp         dword ptr [ebp-28],0
>005D9474    je          005D947F
 005D9476    mov         eax,dword ptr [ebp-28]
 005D9479    push        eax
 005D947A    call        GDI32.DeleteObject
 005D947F    ret
>005D9480    jmp         @HandleFinally
>005D9485    jmp         005D9461
 005D9487    mov         eax,dword ptr [ebp-4]
 005D948A    mov         esp,ebp
 005D948C    pop         ebp
 005D948D    ret
end;*}

//005D9490
{*procedure sub_005D9490(?:?; ?:?);
begin
 005D9490    push        ebp
 005D9491    mov         ebp,esp
 005D9493    push        ecx
 005D9494    mov         dword ptr [ebp-4],eax
 005D9497    cmp         dword ptr [ebp-4],0
>005D949B    jne         005D94A5
 005D949D    mov         eax,[006E3FD8];^gvar_005EED40
 005D94A2    mov         dword ptr [ebp-4],eax
 005D94A5    mov         eax,dword ptr [ebp+8]
 005D94A8    mov         eax,dword ptr [eax-4]
 005D94AB    cmp         dword ptr [eax+84],0
>005D94B2    je          005D94CA
 005D94B4    mov         eax,dword ptr [ebp+8]
 005D94B7    mov         eax,dword ptr [eax-4]
 005D94BA    mov         eax,dword ptr [eax+84]
 005D94C0    call        TObject.ClassType
 005D94C5    cmp         eax,dword ptr [ebp-4]
>005D94C8    je          005D94F5
 005D94CA    mov         eax,dword ptr [ebp+8]
 005D94CD    mov         eax,dword ptr [eax-4]
 005D94D0    mov         eax,dword ptr [eax+84]
 005D94D6    call        TObject.Free
 005D94DB    mov         eax,dword ptr [ebp+8]
 005D94DE    mov         ecx,dword ptr [eax-4]
 005D94E1    mov         dl,1
 005D94E3    mov         eax,dword ptr [ebp-4]
 005D94E6    call        dword ptr [eax+2C]
 005D94E9    mov         edx,dword ptr [ebp+8]
 005D94EC    mov         edx,dword ptr [edx-4]
 005D94EF    mov         dword ptr [edx+84],eax
 005D94F5    pop         ecx
 005D94F6    pop         ebp
 005D94F7    ret
end;*}

//005D94F8
{*function sub_005D94F8(?:AnsiString; ?:?):?;
begin
 005D94F8    push        ebp
 005D94F9    mov         ebp,esp
 005D94FB    add         esp,0FFFFFFE8
 005D94FE    xor         edx,edx
 005D9500    mov         dword ptr [ebp-18],edx
 005D9503    mov         dword ptr [ebp-4],eax
 005D9506    xor         eax,eax
 005D9508    push        ebp
 005D9509    push        5D95B3
 005D950E    push        dword ptr fs:[eax]
 005D9511    mov         dword ptr fs:[eax],esp
 005D9514    xor         eax,eax
 005D9516    mov         dword ptr [ebp-8],eax
 005D9519    mov         eax,dword ptr [ebp-4]
 005D951C    mov         dword ptr [ebp-10],eax
 005D951F    cmp         dword ptr [ebp-10],0
>005D9523    je          005D959D
>005D9525    jmp         005D9595
 005D9527    mov         eax,dword ptr [ebp-10]
 005D952A    mov         dword ptr [ebp-14],eax
>005D952D    jmp         005D9532
 005D952F    inc         dword ptr [ebp-10]
 005D9532    mov         eax,dword ptr [ebp-10]
 005D9535    mov         al,byte ptr [eax]
 005D9537    test        al,al
>005D9539    je          005D9543
 005D953B    sub         al,0A
>005D953D    je          005D9543
 005D953F    sub         al,3
>005D9541    jne         005D952F
 005D9543    mov         ecx,dword ptr [ebp-10]
 005D9546    sub         ecx,dword ptr [ebp-14]
 005D9549    lea         eax,[ebp-18]
 005D954C    mov         edx,dword ptr [ebp-14]
 005D954F    call        @LStrFromPCharLen
 005D9554    mov         eax,dword ptr [ebp+8]
 005D9557    mov         eax,dword ptr [eax-4]
 005D955A    mov         eax,dword ptr [eax+84]
 005D9560    mov         eax,dword ptr [eax+208]
 005D9566    mov         edx,dword ptr [ebp-18]
 005D9569    call        005C1754
 005D956E    mov         dword ptr [ebp-0C],eax
 005D9571    mov         eax,dword ptr [ebp-0C]
 005D9574    cmp         eax,dword ptr [ebp-8]
>005D9577    jle         005D957F
 005D9579    mov         eax,dword ptr [ebp-0C]
 005D957C    mov         dword ptr [ebp-8],eax
 005D957F    mov         eax,dword ptr [ebp-10]
 005D9582    cmp         byte ptr [eax],0D
>005D9585    jne         005D958A
 005D9587    inc         dword ptr [ebp-10]
 005D958A    mov         eax,dword ptr [ebp-10]
 005D958D    cmp         byte ptr [eax],0A
>005D9590    jne         005D9595
 005D9592    inc         dword ptr [ebp-10]
 005D9595    mov         eax,dword ptr [ebp-10]
 005D9598    cmp         byte ptr [eax],0
>005D959B    jne         005D9527
 005D959D    xor         eax,eax
 005D959F    pop         edx
 005D95A0    pop         ecx
 005D95A1    pop         ecx
 005D95A2    mov         dword ptr fs:[eax],edx
 005D95A5    push        5D95BA
 005D95AA    lea         eax,[ebp-18]
 005D95AD    call        @LStrClr
 005D95B2    ret
>005D95B3    jmp         @HandleFinally
>005D95B8    jmp         005D95AA
 005D95BA    mov         eax,dword ptr [ebp-8]
 005D95BD    mov         esp,ebp
 005D95BF    pop         ebp
 005D95C0    ret
end;*}

//005D95C4
{*procedure sub_005D95C4(?:TApplication; ?:?);
begin
 005D95C4    push        ebp
 005D95C5    mov         ebp,esp
 005D95C7    add         esp,0FFFFFF6C
 005D95CD    push        ebx
 005D95CE    push        esi
 005D95CF    push        edi
 005D95D0    xor         ecx,ecx
 005D95D2    mov         dword ptr [ebp-90],ecx
 005D95D8    mov         dword ptr [ebp-94],ecx
 005D95DE    mov         esi,edx
 005D95E0    lea         edi,[ebp-0C]
 005D95E3    movs        dword ptr [edi],dword ptr [esi]
 005D95E4    movs        dword ptr [edi],dword ptr [esi]
 005D95E5    mov         dword ptr [ebp-4],eax
 005D95E8    lea         eax,[ebp-64]
 005D95EB    mov         edx,dword ptr ds:[5CA760];THintInfo
 005D95F1    call        @InitializeRecord
 005D95F6    xor         eax,eax
 005D95F8    push        ebp
 005D95F9    push        5D9989
 005D95FE    push        dword ptr fs:[eax]
 005D9601    mov         dword ptr fs:[eax],esp
 005D9604    mov         eax,dword ptr [ebp-4]
 005D9607    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 005D960B    mov         eax,dword ptr [ebp-4]
 005D960E    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>005D9615    je          005D9940
 005D961B    mov         eax,dword ptr [ebp-4]
 005D961E    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>005D9622    je          005D9940
 005D9628    call        005CCDD0
 005D962D    test        al,al
>005D962F    je          005D9940
 005D9635    lea         eax,[ebp-0C]
 005D9638    mov         dl,1
 005D963A    call        005F16D8
 005D963F    call        005D6714
 005D9644    mov         edx,dword ptr [ebp-4]
 005D9647    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>005D964A    jne         005D9940
 005D9650    mov         eax,dword ptr [ebp-4]
 005D9653    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D9656    mov         dword ptr [ebp-64],eax
 005D9659    mov         eax,dword ptr [ebp-0C]
 005D965C    mov         dword ptr [ebp-5C],eax
 005D965F    mov         eax,dword ptr [ebp-8]
 005D9662    mov         dword ptr [ebp-58],eax
 005D9665    push        ebp
 005D9666    call        005D930C
 005D966B    pop         ecx
 005D966C    add         dword ptr [ebp-58],eax
 005D966F    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D9674    call        005D55E0
 005D9679    mov         dword ptr [ebp-54],eax
 005D967C    mov         eax,dword ptr [ebp-4]
 005D967F    mov         eax,dword ptr [eax+5C];TApplication.FHintColor:TColor
 005D9682    mov         dword ptr [ebp-50],eax
 005D9685    lea         edx,[ebp-84]
 005D968B    mov         eax,dword ptr [ebp-4]
 005D968E    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D9691    call        005F2E0C
 005D9696    lea         esi,[ebp-84]
 005D969C    lea         edi,[ebp-4C]
 005D969F    movs        dword ptr [edi],dword ptr [esi]
 005D96A0    movs        dword ptr [edi],dword ptr [esi]
 005D96A1    movs        dword ptr [edi],dword ptr [esi]
 005D96A2    movs        dword ptr [edi],dword ptr [esi]
 005D96A3    lea         edx,[ebp-14]
 005D96A6    mov         eax,dword ptr [ebp-4]
 005D96A9    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D96AC    mov         ecx,dword ptr [eax]
 005D96AE    call        dword ptr [ecx+40];TControl.sub_005F2F7C
 005D96B1    xor         eax,eax
 005D96B3    mov         dword ptr [ebp-1C],eax
 005D96B6    xor         eax,eax
 005D96B8    mov         dword ptr [ebp-18],eax
 005D96BB    mov         eax,dword ptr [ebp-4]
 005D96BE    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D96C1    cmp         dword ptr [eax+30],0;TControl.FParent:TWinControl
>005D96C5    je          005D96DA
 005D96C7    lea         edx,[ebp-1C]
 005D96CA    mov         eax,dword ptr [ebp-4]
 005D96CD    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D96D0    mov         eax,dword ptr [eax+30];TControl.FParent:TWinControl
 005D96D3    mov         ecx,dword ptr [eax]
 005D96D5    call        dword ptr [ecx+40];TWinControl.sub_005FC1D0
>005D96D8    jmp         005D9714
 005D96DA    mov         eax,dword ptr [ebp-4]
 005D96DD    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D96E0    mov         edx,dword ptr ds:[5EE6AC];TWinControl
 005D96E6    call        @IsClass
 005D96EB    test        al,al
>005D96ED    je          005D9714
 005D96EF    mov         eax,dword ptr [ebp-4]
 005D96F2    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D96F5    cmp         dword ptr [eax+190],0
>005D96FC    je          005D9714
 005D96FE    lea         eax,[ebp-1C]
 005D9701    push        eax
 005D9702    mov         eax,dword ptr [ebp-4]
 005D9705    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D9708    mov         eax,dword ptr [eax+190]
 005D970E    push        eax
 005D970F    call        USER32.ClientToScreen
 005D9714    mov         eax,dword ptr [ebp-18]
 005D9717    sub         eax,dword ptr [ebp-10]
 005D971A    push        eax
 005D971B    mov         eax,dword ptr [ebp-1C]
 005D971E    sub         eax,dword ptr [ebp-14]
 005D9721    push        eax
 005D9722    lea         eax,[ebp-4C]
 005D9725    push        eax
 005D9726    call        USER32.OffsetRect
 005D972B    lea         ecx,[ebp-8C]
 005D9731    lea         edx,[ebp-0C]
 005D9734    mov         eax,dword ptr [ebp-4]
 005D9737    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D973A    call        005F305C
 005D973F    mov         eax,dword ptr [ebp-8C]
 005D9745    mov         dword ptr [ebp-3C],eax
 005D9748    mov         eax,dword ptr [ebp-88]
 005D974E    mov         dword ptr [ebp-38],eax
 005D9751    lea         edx,[ebp-94]
 005D9757    mov         eax,dword ptr [ebp-4]
 005D975A    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D975D    call        005D66C4
 005D9762    mov         eax,dword ptr [ebp-94]
 005D9768    lea         edx,[ebp-90]
 005D976E    call        005EFA08
 005D9773    mov         edx,dword ptr [ebp-90]
 005D9779    lea         eax,[ebp-2C]
 005D977C    call        @LStrLAsg
 005D9781    xor         eax,eax
 005D9783    mov         dword ptr [ebp-34],eax
 005D9786    mov         eax,dword ptr [ebp-4]
 005D9789    mov         eax,dword ptr [eax+74];TApplication.FHintHidePause:Integer
 005D978C    mov         dword ptr [ebp-30],eax
 005D978F    mov         eax,[006E3FD8];^gvar_005EED40
 005D9794    mov         dword ptr [ebp-60],eax
 005D9797    xor         eax,eax
 005D9799    mov         dword ptr [ebp-28],eax
 005D979C    lea         eax,[ebp-64]
 005D979F    push        eax
 005D97A0    mov         eax,dword ptr [ebp-4]
 005D97A3    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D97A6    xor         ecx,ecx
 005D97A8    mov         edx,0B030
 005D97AD    call        005F4FA8
 005D97B2    test        eax,eax
 005D97B4    sete        byte ptr [ebp-1D]
 005D97B8    cmp         byte ptr [ebp-1D],0
>005D97BC    je          005D97E4
 005D97BE    mov         eax,dword ptr [ebp-4]
 005D97C1    cmp         word ptr [eax+11A],0;TApplication.?f11A:word
>005D97C9    je          005D97E4
 005D97CB    lea         eax,[ebp-64]
 005D97CE    push        eax
 005D97CF    lea         ecx,[ebp-1D]
 005D97D2    lea         edx,[ebp-2C]
 005D97D5    mov         ebx,dword ptr [ebp-4]
 005D97D8    mov         eax,dword ptr [ebx+11C];TApplication.?f11C:dword
 005D97DE    call        dword ptr [ebx+118];TApplication.FOnShowHint
 005D97E4    cmp         byte ptr [ebp-1D],0
>005D97E8    je          005D97F3
 005D97EA    mov         eax,dword ptr [ebp-4]
 005D97ED    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>005D97F1    jne         005D97F7
 005D97F3    xor         eax,eax
>005D97F5    jmp         005D97F9
 005D97F7    mov         al,1
 005D97F9    mov         edx,dword ptr [ebp-4]
 005D97FC    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 005D97FF    mov         eax,dword ptr [ebp-4]
 005D9802    cmp         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
>005D9806    je          005D9940
 005D980C    cmp         dword ptr [ebp-2C],0
>005D9810    je          005D9940
 005D9816    push        ebp
 005D9817    mov         eax,dword ptr [ebp-60]
 005D981A    call        005D9490
 005D981F    pop         ecx
 005D9820    mov         eax,dword ptr [ebp-4]
 005D9823    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D9826    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 005D9829    mov         eax,dword ptr [ebp-4]
 005D982C    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9832    mov         ecx,dword ptr [eax]
 005D9834    call        dword ptr [ecx+70];TCheckListBox.SetBiDiMode
 005D9837    mov         eax,dword ptr [ebp-28]
 005D983A    push        eax
 005D983B    lea         eax,[ebp-74]
 005D983E    push        eax
 005D983F    mov         eax,dword ptr [ebp-4]
 005D9842    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9848    mov         ecx,dword ptr [ebp-2C]
 005D984B    mov         edx,dword ptr [ebp-54]
 005D984E    mov         ebx,dword ptr [eax]
 005D9850    call        dword ptr [ebx+0D4];THintWindow.sub_005FDDB8
 005D9856    mov         eax,dword ptr [ebp-58]
 005D9859    push        eax
 005D985A    mov         eax,dword ptr [ebp-5C]
 005D985D    push        eax
 005D985E    lea         eax,[ebp-74]
 005D9861    push        eax
 005D9862    call        USER32.OffsetRect
 005D9867    mov         eax,dword ptr [ebp-4]
 005D986A    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9870    mov         si,0FFC8
 005D9874    call        @CallDynaInst;TControl.sub_005F40CC
 005D9879    test        al,al
>005D987B    je          005D9899
 005D987D    push        ebp
 005D987E    mov         eax,dword ptr [ebp-2C]
 005D9881    call        005D94F8
 005D9886    pop         ecx
 005D9887    add         eax,5
 005D988A    mov         dword ptr [ebp-24],eax
 005D988D    mov         eax,dword ptr [ebp-24]
 005D9890    sub         dword ptr [ebp-74],eax
 005D9893    mov         eax,dword ptr [ebp-24]
 005D9896    sub         dword ptr [ebp-6C],eax
 005D9899    lea         ecx,[ebp-8C]
 005D989F    lea         edx,[ebp-4C]
 005D98A2    mov         eax,dword ptr [ebp-4]
 005D98A5    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D98A8    call        005F3020
 005D98AD    mov         eax,dword ptr [ebp-4]
 005D98B0    mov         edx,dword ptr [ebp-8C]
 005D98B6    mov         dword ptr [eax+64],edx;TApplication.FHintCursorRect:TRect
 005D98B9    mov         edx,dword ptr [ebp-88]
 005D98BF    mov         dword ptr [eax+68],edx;TApplication.FHintCursorRect.Top:Longint
 005D98C2    lea         ecx,[ebp-8C]
 005D98C8    lea         edx,[ebp-44]
 005D98CB    mov         eax,dword ptr [ebp-4]
 005D98CE    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 005D98D1    call        005F3020
 005D98D6    mov         eax,dword ptr [ebp-4]
 005D98D9    mov         edx,dword ptr [ebp-8C]
 005D98DF    mov         dword ptr [eax+6C],edx;TApplication.FHintCursorRect.Right:Longint
 005D98E2    mov         edx,dword ptr [ebp-88]
 005D98E8    mov         dword ptr [eax+70],edx
 005D98EB    mov         eax,dword ptr [ebp-4]
 005D98EE    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D98F4    mov         edx,dword ptr [ebp-50]
 005D98F7    call        TControl.SetColor
 005D98FC    mov         eax,dword ptr [ebp-28]
 005D98FF    push        eax
 005D9900    mov         eax,dword ptr [ebp-4]
 005D9903    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 005D9909    mov         ecx,dword ptr [ebp-2C]
 005D990C    lea         edx,[ebp-74]
 005D990F    mov         ebx,dword ptr [eax]
 005D9911    call        dword ptr [ebx+0D0];THintWindow.sub_005FDD84
 005D9917    call        005D6854
 005D991C    cmp         dword ptr [ebp-34],0
>005D9920    jle         005D9931
 005D9922    xor         ecx,ecx
 005D9924    mov         edx,dword ptr [ebp-34]
 005D9927    mov         eax,dword ptr [ebp-4]
 005D992A    call        005D905C
>005D992F    jmp         005D995D
 005D9931    mov         cl,1
 005D9933    mov         edx,dword ptr [ebp-30]
 005D9936    mov         eax,dword ptr [ebp-4]
 005D9939    call        005D905C
>005D993E    jmp         005D995D
 005D9940    cmp         dword ptr [ebp-34],0
>005D9944    jle         005D9955
 005D9946    xor         ecx,ecx
 005D9948    mov         edx,dword ptr [ebp-34]
 005D994B    mov         eax,dword ptr [ebp-4]
 005D994E    call        005D905C
>005D9953    jmp         005D995D
 005D9955    mov         eax,dword ptr [ebp-4]
 005D9958    call        005D92C0
 005D995D    xor         eax,eax
 005D995F    pop         edx
 005D9960    pop         ecx
 005D9961    pop         ecx
 005D9962    mov         dword ptr fs:[eax],edx
 005D9965    push        5D9990
 005D996A    lea         eax,[ebp-94]
 005D9970    mov         edx,2
 005D9975    call        @LStrArrayClr
 005D997A    lea         eax,[ebp-64]
 005D997D    mov         edx,dword ptr ds:[5CA760];THintInfo
 005D9983    call        @FinalizeRecord
 005D9988    ret
>005D9989    jmp         @HandleFinally
>005D998E    jmp         005D996A
 005D9990    pop         edi
 005D9991    pop         esi
 005D9992    pop         ebx
 005D9993    mov         esp,ebp
 005D9995    pop         ebp
 005D9996    ret
end;*}

//005D9998
{*procedure sub_005D9998(?:TApplication; ?:?);
begin
 005D9998    push        ebp
 005D9999    mov         ebp,esp
 005D999B    add         esp,0FFFFFFF4
 005D999E    mov         dword ptr [ebp-8],edx
 005D99A1    mov         dword ptr [ebp-4],eax
 005D99A4    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D99A9    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 005D99AC    mov         dword ptr [ebp-0C],eax
 005D99AF    cmp         dword ptr [ebp-0C],0
>005D99B3    je          005D99D4
 005D99B5    mov         eax,dword ptr [ebp-0C]
 005D99B8    cmp         dword ptr [eax+23C],0;TCustomForm.FHelpFile:String
>005D99BF    je          005D99D4
 005D99C1    mov         eax,dword ptr [ebp-8]
 005D99C4    mov         edx,dword ptr [ebp-0C]
 005D99C7    mov         edx,dword ptr [edx+23C];TCustomForm.FHelpFile:String
 005D99CD    call        @LStrAsg
>005D99D2    jmp         005D99E2
 005D99D4    mov         eax,dword ptr [ebp-8]
 005D99D7    mov         edx,dword ptr [ebp-4]
 005D99DA    mov         edx,dword ptr [edx+50];TApplication.FHelpFile:String
 005D99DD    call        @LStrAsg
 005D99E2    mov         esp,ebp
 005D99E4    pop         ebp
 005D99E5    ret
end;*}

//005D9A6C
{*function sub_005D9A6C(?:TApplication; ?:?; ?:?):?;
begin
 005D9A6C    push        ebp
 005D9A6D    mov         ebp,esp
 005D9A6F    add         esp,0FFFFFFEC
 005D9A72    mov         dword ptr [ebp-0C],ecx
 005D9A75    mov         dword ptr [ebp-8],edx
 005D9A78    mov         dword ptr [ebp-4],eax
 005D9A7B    mov         eax,[006ECD80];0x0 Screen:TScreen
 005D9A80    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005D9A83    mov         dword ptr [ebp-14],eax
 005D9A86    cmp         dword ptr [ebp-14],0
>005D9A8A    je          005D9AA0
 005D9A8C    mov         eax,dword ptr [ebp-0C]
 005D9A8F    push        eax
 005D9A90    xor         ecx,ecx
 005D9A92    mov         edx,dword ptr [ebp-8]
 005D9A95    mov         eax,dword ptr [ebp-14]
 005D9A98    call        005F4FA8
 005D9A9D    dec         eax
>005D9A9E    je          005D9ACF
 005D9AA0    mov         eax,dword ptr [ebp-4]
 005D9AA3    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D9AA6    cmp         eax,dword ptr [ebp-14]
>005D9AA9    je          005D9ACB
 005D9AAB    mov         eax,dword ptr [ebp-4]
 005D9AAE    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005D9AB2    je          005D9ACB
 005D9AB4    mov         eax,dword ptr [ebp-0C]
 005D9AB7    push        eax
 005D9AB8    xor         ecx,ecx
 005D9ABA    mov         edx,dword ptr [ebp-8]
 005D9ABD    mov         eax,dword ptr [ebp-4]
 005D9AC0    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005D9AC3    call        005F4FA8
 005D9AC8    dec         eax
>005D9AC9    je          005D9ACF
 005D9ACB    xor         eax,eax
>005D9ACD    jmp         005D9AD1
 005D9ACF    mov         al,1
 005D9AD1    mov         byte ptr [ebp-0D],al
 005D9AD4    cmp         byte ptr [ebp-0D],0
>005D9AD8    jne         005D9B11
 005D9ADA    mov         eax,dword ptr [ebp-0C]
 005D9ADD    mov         edx,dword ptr ds:[58D604];TCustomAction
 005D9AE3    call        @IsClass
 005D9AE8    test        al,al
>005D9AEA    je          005D9B11
 005D9AEC    mov         eax,dword ptr [ebp-0C]
 005D9AEF    cmp         byte ptr [eax+6A],0
>005D9AF3    je          005D9B11
 005D9AF5    mov         eax,dword ptr [ebp-0C]
 005D9AF8    cmp         byte ptr [eax+60],0
>005D9AFC    je          005D9B11
 005D9AFE    mov         eax,dword ptr [ebp-0C]
 005D9B01    cmp         word ptr [eax+42],0
 005D9B06    setne       dl
 005D9B09    mov         eax,dword ptr [ebp-0C]
 005D9B0C    call        TOpenPicture.SetEnabled
 005D9B11    mov         al,byte ptr [ebp-0D]
 005D9B14    mov         esp,ebp
 005D9B16    pop         ebp
 005D9B17    ret
end;*}

//005D9B18
{*function sub_005D9B18(?:TApplication; ?:TContainedAction):?;
begin
 005D9B18    push        ebp
 005D9B19    mov         ebp,esp
 005D9B1B    add         esp,0FFFFFFF4
 005D9B1E    push        ebx
 005D9B1F    mov         dword ptr [ebp-8],edx
 005D9B22    mov         dword ptr [ebp-4],eax
 005D9B25    mov         byte ptr [ebp-9],0
 005D9B29    mov         eax,dword ptr [ebp-4]
 005D9B2C    cmp         word ptr [eax+0BA],0;TApplication.?fBA:word
>005D9B34    je          005D9B4B
 005D9B36    lea         ecx,[ebp-9]
 005D9B39    mov         ebx,dword ptr [ebp-4]
 005D9B3C    mov         edx,dword ptr [ebp-8]
 005D9B3F    mov         eax,dword ptr [ebx+0BC];TApplication.?fBC:dword
 005D9B45    call        dword ptr [ebx+0B8];TApplication.FOnActionExecute
 005D9B4B    mov         al,byte ptr [ebp-9]
 005D9B4E    pop         ebx
 005D9B4F    mov         esp,ebp
 005D9B51    pop         ebp
 005D9B52    ret
end;*}

//005D9B54
{*function sub_005D9B54(?:TApplication; ?:TContainedAction):?;
begin
 005D9B54    push        ebp
 005D9B55    mov         ebp,esp
 005D9B57    add         esp,0FFFFFFF4
 005D9B5A    push        ebx
 005D9B5B    mov         dword ptr [ebp-8],edx
 005D9B5E    mov         dword ptr [ebp-4],eax
 005D9B61    mov         byte ptr [ebp-9],0
 005D9B65    mov         eax,dword ptr [ebp-4]
 005D9B68    cmp         word ptr [eax+0C2],0;TApplication.?fC2:word
>005D9B70    je          005D9B87
 005D9B72    lea         ecx,[ebp-9]
 005D9B75    mov         ebx,dword ptr [ebp-4]
 005D9B78    mov         edx,dword ptr [ebp-8]
 005D9B7B    mov         eax,dword ptr [ebx+0C4];TApplication.?fC4:dword
 005D9B81    call        dword ptr [ebx+0C0];TApplication.FOnActionUpdate
 005D9B87    mov         al,byte ptr [ebp-9]
 005D9B8A    pop         ebx
 005D9B8B    mov         esp,ebp
 005D9B8D    pop         ebp
 005D9B8E    ret
end;*}

//005D9B90
procedure sub_005D9B90;
begin
{*
 005D9B90    push        ebp
 005D9B91    mov         ebp,esp
 005D9B93    push        ecx
 005D9B94    push        5D9BC0;'User32.dll'
 005D9B99    call        KERNEL32.GetModuleHandleA
 005D9B9E    mov         dword ptr [ebp-4],eax
 005D9BA1    cmp         dword ptr [ebp-4],0
>005D9BA5    je          005D9BBA
 005D9BA7    push        5D9BCC
 005D9BAC    mov         eax,dword ptr [ebp-4]
 005D9BAF    push        eax
 005D9BB0    call        KERNEL32.GetProcAddress
 005D9BB5    mov         [006E3FD4],eax;gvar_006E3FD4
 005D9BBA    pop         ecx
 005D9BBB    pop         ebp
 005D9BBC    ret
*}
end;

//005D9C0C
procedure sub_005D9C0C(?:TApplication);
begin
{*
 005D9C0C    push        ebp
 005D9C0D    mov         ebp,esp
 005D9C0F    push        ecx
 005D9C10    mov         dword ptr [ebp-4],eax
 005D9C13    mov         eax,[006EA038];^gvar_006E4830
 005D9C18    mov         edx,dword ptr [ebp-4]
 005D9C1B    mov         dword ptr [eax+4],edx
 005D9C1E    mov         dword ptr [eax],5D9BE8
 005D9C24    pop         ecx
 005D9C25    pop         ebp
 005D9C26    ret
*}
end;

//005D9C28
procedure sub_005D9C28(?:TApplication);
begin
{*
 005D9C28    push        ebp
 005D9C29    mov         ebp,esp
 005D9C2B    push        ecx
 005D9C2C    mov         dword ptr [ebp-4],eax
 005D9C2F    mov         eax,[006EA038];^gvar_006E4830
 005D9C34    xor         edx,edx
 005D9C36    mov         dword ptr [eax],edx
 005D9C38    mov         dword ptr [eax+4],edx
 005D9C3B    pop         ecx
 005D9C3C    pop         ebp
 005D9C3D    ret
*}
end;

//005D9C40
procedure _NF__B79;
begin
{*
 005D9C40    add         dword ptr [eax],eax
 005D9C42    add         byte ptr [eax],al
 005D9C44    fdivr       dword ptr [edi]
 005D9C46    outs        dl,byte ptr [esi]
 005D9C47    add         ah,dh
 005D9C49    in          al,dl
 005D9C4A    pop         esi
 005D9C4B    add         byte ptr [eax],al
 005D9C4D    add         byte ptr [eax],al
 005D9C4F    add         byte ptr [ebp-75],dl
*}
end;

end.