//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdCtrls;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Graphics;

type
  TCustomGroupBox = class(TCustomControl)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//00597DD8
    //procedure v8C(?:?); virtual;//v8C//00597E4C
    //procedure v98(?:?); virtual;//v98//00597EC8
    procedure vC4; virtual;//vC4//00597EEC
    //procedure WMSize(?:?); message WM_SIZE;//00598208
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0059812C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005981DC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005981BC
  end;
  TGroupBox = class(TCustomGroupBox)
  end;
  TTextLayout = (tlTop, tlCenter, tlBottom);
  TCustomLabel = class(TGraphicControl)
  public
    FFocusControl:TWinControl;//f168
    FAlignment:TAlignment;//f16C
    FAutoSize:Boolean;//f16D
    FLayout:TTextLayout;//f16E
    FWordWrap:Boolean;//f16F
    FShowAccelChar:Boolean;//f170
    FOnMouseLeave:TNotifyEvent;//f178
    f17A:word;//f17A
    f17C:dword;//f17C
    FOnMouseEnter:TNotifyEvent;//f180
    f182:word;//f182
    f184:dword;//f184
    procedure Loaded; virtual;//vC//005985A4
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00598874
    constructor Create(AOwner:TComponent); virtual;//v2C//0059822C
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//005986EC
    procedure v8C; virtual;//v8C//00598480
    //procedure v90(?:?); virtual;//v90//005982B8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//00598908
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005988DC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005988B4
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//005989C0
    procedure CMMouseLeave(Message:TMessage); message CM_MOUSELEAVE;//005989FC
    //procedure sub_005982D4(?:?; ?:?); dynamic;//005982D4
    procedure sub_005985C4; dynamic;//005985C4
  end;
  TLabel = class(TCustomLabel)
    procedure SetAlignment(Value:TAlignment);//005986B8
    //function GetTransparent:?;//00598724
    procedure SetFocusControl(Value:TWinControl);//00598744
    procedure SetShowAccelChar(Value:Boolean);//00598774
    procedure SetTransparent(Value:Boolean);//005987A8
    procedure SetLayout(Value:TTextLayout);//00598800
    procedure SetWordWrap(Value:Boolean);//00598834
  end;
  TEditCharCase = (ecNormal, ecUpperCase, ecLowerCase);
  TCustomEdit = class(TWinControl)
  public
    FMaxLength:Integer;//f208
    FBorderStyle:TBorderStyle;//f20C
    FPasswordChar:Char;//f20D
    FReadOnly:Boolean;//f20E
    FAutoSize:Boolean;//f20F
    FAutoSelect:Boolean;//f210
    FHideSelection:Boolean;//f211
    FOEMConvert:Boolean;//f212
    FCharCase:TEditCharCase;//f213
    FCreating:Boolean;//f214
    FModified:Boolean;//f215
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    procedure DefaultHandler(var Message:void ); virtual;//0059955C
    constructor Create(AOwner:TComponent); virtual;//v2C//00598A38
    procedure SetAutoSize(Value:bool); virtual;//v5C//00598B38
    //procedure v98(?:?); virtual;//v98//005991BC
    //procedure v9C(?:?); virtual;//v9C//005992A4
    procedure CreateWnd; virtual;//vA0//00599334
    procedure DestroyWnd; virtual;//vB0//005993D8
    //procedure vC4(?:?); virtual;//vC4//00598B0C
    //function vC8:?; virtual;//vC8//00598EA8
    //function vCC:?; virtual;//vCC//00598E50
    //procedure vD0(?:?); virtual;//vD0//005990E4
    //procedure vD4(?:?); virtual;//vD4//00598EDC
    //procedure vD8(?:?); virtual;//vD8//00598E7C
    procedure vDC; virtual;//vDC//00598F44
    //function vE0(?:?; ?:?):?; virtual;//vE0//00599040
    //procedure WMSetFont(?:?); message WM_SETFONT;//005995A4
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//00599748
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//00599638
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005995F4
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005996FC
    //procedure CMEnter(?:?); message CM_ENTER;//005996B0
    //procedure sub_00599678(?:?); dynamic;//00599678
    procedure sub_00599528; dynamic;//00599528
    function GetModified:Boolean;//00598C88
    procedure SetModified(Value:Boolean);//00598D10
    procedure UpdateHeight;//005993FC
  end;
  TEdit = class(TCustomEdit)
    procedure SetCharCase(Value:TEditCharCase);//00598BA8
    procedure SetPasswordChar(Value:Char);//00598D58
  end;
  TCustomMemo = class(TCustomEdit)
  public
    FLines:TStrings;//f220
    FAlignment:TAlignment;//f224
    FScrollBars:TScrollStyle;//f225
    FWordWrap:Boolean;//f226
    FWantReturns:Boolean;//f227
    FWantTabs:Boolean;//f228
    destructor Destroy; virtual;//00599D04
    procedure Loaded; virtual;//vC//00599FD4
    constructor Create(AOwner:TComponent); virtual;//v2C//00599C60
    //procedure v98(?:?); virtual;//v98//00599D44
    //procedure v9C(?:?); virtual;//v9C//00599DC0
    //procedure vE4(?:?); virtual;//vE4//00599EF8
    //procedure vE8(?:?); virtual;//vE8//00599F68
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//0059A0FC
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//0059A0B0
    //procedure sub_0059A118(?:?); dynamic;//0059A118
    procedure sub_00599FB8; dynamic;//00599FB8
  end;
  TMemo = class(TCustomMemo)
    procedure SetBorderStyle(Value:TBorderStyle);//00598B6C
    procedure SetHideSelection(Value:Boolean);//00598BDC
    procedure SetMaxLength(Value:Integer);//00598C10
    procedure SetOEMConvert(Value:Boolean);//00598C54
    procedure SetAlignment(Value:TAlignment);//00599FF0
    procedure SetLines(Value:TStrings);//0059A024
    procedure SetScrollBars(Value:TScrollStyle);//0059A048
    procedure SetWordWrap(Value:Boolean);//0059A07C
  end;
  TDrawItemEvent = procedure(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState) of object;;
  TMeasureItemEvent = procedure(Control:TWinControl; Index:Integer; var Height:Integer) of object;;
  TCustomComboBoxStrings = class(TStrings)
  public
    .................FComboBox:TCustomCombo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//0059A238
    //function v14:?; virtual;//v14//0059A150
    //function v18(?:?):?; virtual;//v18//0059A180
    //procedure v24(?:?; ?:?); virtual;//v24//0059A204
    //procedure v30(?:?); virtual;//v30//0059A37C
    procedure Clear; virtual;//v44//0059A294
    //procedure v48(?:?); virtual;//v48//0059A318
    //function v54(?:?):?; virtual;//v54//0059A344
  end;
  TCustomCombo = class(TCustomListControl)
  public
    FCanvas:TCanvas;//f208
    FMaxLength:Integer;//f20C
    FDropDownCount:Integer;//f210
    FItemIndex:Integer;//f214
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    FOnSelect:TNotifyEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    FOnDropDown:TNotifyEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    FOnCloseUp:TNotifyEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    FItemHeight:Integer;//f238
    FItems:TStrings;//f23C
    FEditHandle:HWND;//f240
    FListHandle:HWND;//f244
    FDropHandle:HWND;//f248
    FEditInstance:Pointer;//f24C
    FDefEditProc:Pointer;//f250
    FListInstance:Pointer;//f254
    FDefListProc:Pointer;//f258
    FDroppingDown:Boolean;//f25C
    FFocusChanged:Boolean;//f25D
    FIsFocused:Boolean;//f25E
    FSaveIndex:Integer;//f260
    destructor Destroy; virtual;//0059A608
    procedure Loaded; virtual;//vC//0059B2C4
    constructor Create(AOwner:TComponent); virtual;//v2C//0059A4DC
    //procedure v74(?:?); virtual;//v74//0059AE9C
    procedure CreateWnd; virtual;//vA0//0059B3B0
    procedure DestroyWindowHandle; virtual;//vAC//0059A6B4
    //function vC4:?; virtual;//vC4//0059B5EC
    function GetItemIndex:Integer; virtual;//vC8//0059A788
    procedure SetItemIndex(Value:Integer); virtual;//vCC//0059A7CC
    //procedure vD0(?:?; ?:?); virtual;//vD0//0059B628
    procedure Clear; virtual;//vD4//0059A67C
    //procedure vD8(?:?); virtual;//vD8//0059B504
    //procedure vDC(?:?); virtual;//vDC//0059B51C
    procedure vE0; virtual;//vE0//0059B5B8
    procedure vE8; virtual;//vE8//0059A6E8
    procedure vEC; virtual;//vEC//0059B3F8
    //procedure vF0(?:?; ?:?; ?:?); virtual;//vF0//0059AB84
    procedure SetItemHeight(Value:Integer); virtual;//vFC//0059A878
    procedure SetDropDownCount(Value:Integer); virtual;//v104//0059B60C
    procedure SetItems(Value:TStrings); virtual;//v108//0059B4C8
    //procedure WMCreate(?:?); message WM_CREATE;//0059A8A4
    //procedure WMDrawItem(?:?); message WM_DRAWITEM;//0059A8E0
    //procedure WMMeasureItem(?:?); message WM_MEASUREITEM;//0059A8FC
    //procedure WMDeleteItem(?:?); message WM_DELETEITEM;//0059A918
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//0059A934
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//0059A964
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0059A990
    //procedure sub_0059AFF0(?:?); dynamic;//0059AFF0
    procedure sub_0059B348; dynamic;//0059B348
    procedure sub_0059B298; dynamic;//0059B298
    procedure sub_0059B374; dynamic;//0059B374
    procedure sub_0059B190; dynamic;//0059B190
    procedure sub_0059B2F8; dynamic;//0059B2F8
  end;
  TComboBoxStyle = (csDropDown, csSimple, csDropDownList, csOwnerDrawFixed, csOwnerDrawVariable);
  TCustomComboBox = class(TCustomCombo)
  public
    FAutoComplete:Boolean;//f268
    FAutoDropDown:Boolean;//f269
    FLastTime:Cardinal;//f26C
    FFilter:String;//f270
    FCharCase:TEditCharCase;//f274
    FSorted:Boolean;//f275
    FStyle:TComboBoxStyle;//f276
    FSaveItems:TStringList;//f278
    FOnDrawItem:TDrawItemEvent;//f280
    f282:word;//f282
    f284:dword;//f284
    FOnMeasureItem:TMeasureItemEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    destructor Destroy; virtual;//0059B71C
    constructor Create(AOwner:TComponent); virtual;//v2C//0059B684
    //procedure v74(?:?); virtual;//v74//0059C438
    //procedure v98(?:?); virtual;//v98//0059B848
    procedure CreateWnd; virtual;//vA0//0059B8C4
    procedure DestroyWnd; virtual;//vB0//0059BA80
    //function vF4:?; virtual;//vF4//0059C4B8
    function GetItemHeight:Integer; virtual;//vF8//0059B804
    //function v100:?; virtual;//v100//0059C494
    //procedure v10C(?:?; ?:?; ?:?); virtual;//v10C//0059B1C4
    //procedure v110(?:?; ?:?); virtual;//v110//0059C1EC
    procedure SetStyle(Value:TComboBoxStyle); virtual;//v114//0059B7A0
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//0059C4D0
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd); message WM_ERASEBKGND;//0059BAE4
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//0059C754
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0059C39C
    //procedure CMParentColorChanged(?:?); message CM_PARENTCOLORCHANGED;//0059A9C0
    //procedure sub_0059C228(?:?); dynamic;//0059C228
    //procedure sub_0059C34C(?:?); dynamic;//0059C34C
    //procedure sub_0059BC4C(?:?); dynamic;//0059BC4C
  end;
  TComboBox = class(TCustomComboBox)
    procedure SetMaxLength(Value:Integer);//0059A81C
    procedure SetCharCase(Value:TEditCharCase);//0059AB50
    procedure SetSorted(Value:Boolean);//0059B76C
  end;
  TButtonActionLink = class(TWinControlActionLink)
  public
    .....FClient:TButtonControl;//f28
    //procedure v0(?:?); virtual;//v0//0059C764
    //function v24:?; virtual;//v24//0059C794
    //procedure v50(?:?); virtual;//v50//0059C7E4
  end;
  TButtonControl = class(TWinControl)
  public
    .......FClicksDisabled:Boolean;//f208
    constructor Create(AOwner:TComponent); virtual;//v2C//0059C850
    //procedure v74(?:?); virtual;//v74//0059C984
    //function vC4:?; virtual;//vC4//0059C92C
    //procedure vC8(?:?); virtual;//vC8//0059C974
    procedure sub_0059C914; dynamic;//0059C914
    //procedure sub_0059C8B8(?:?; ?:?); dynamic;//0059C8B8
  end;
  TButton = class(TButtonControl)
  public
    Default:Boolean;//f210
    Cancel:Boolean;//f211
    FActive:Boolean;//f212
    ModalResult:TModalResult;//f214
    constructor Create(AOwner:TComponent); virtual;//v2C//0059CA14
    //procedure v98(?:?); virtual;//v98//0059CB98
    procedure CreateWnd; virtual;//vA0//0059CBE4
    //procedure vCC(?:?); virtual;//vCC//0059CADC
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd); message WM_ERASEBKGND;//0059CDC0
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//0059CC30
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0059CCBC
    //procedure CMFocusChenged(?:?); message CM_FOCUSCHANGED;//0059CD50
    //procedure sub_0059CC08(?:?); dynamic;//0059CC08
    procedure sub_0059CAC8; dynamic;//0059CAC8
    procedure sub_0059CA90; dynamic;//0059CA90
    procedure SetDefault(Value:Boolean);//0059CB44
  end;
  TCheckBoxState = (cbUnchecked, cbChecked, cbGrayed);
  TCustomCheckBox = class(TButtonControl)
  public
    FAlignment:TLeftRight;//f210
    FAllowGrayed:Boolean;//f211
    FState:TCheckBoxState;//f212
    constructor Create(AOwner:TComponent); virtual;//v2C//0059CDDC
    //procedure v98(?:?); virtual;//v98//0059D00C
    procedure CreateWnd; virtual;//vA0//0059D07C
    function GetChecked:Boolean; virtual;//vC4//0059CF1C
    procedure SetChecked(Value:Boolean); virtual;//vC8//0059CF70
    procedure vCC; virtual;//vCC//0059CEA4
    //procedure WMSize(?:?); message WM_SIZE;//0059D0B0
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0059D0EC
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0059D0D4
    //procedure sub_0059D19C(?:?); dynamic;//0059D19C
    procedure sub_0059CE64; dynamic;//0059CE64
    procedure sub_0059CF00; dynamic;//0059CF00
  end;
  TCheckBox = class(TCustomCheckBox)
    function IsStoredChecked(Value:Boolean):Boolean;//0059C940
    procedure SetAlignment(Value:TLeftRight);//0059CF3C
    procedure SetState(Value:TCheckBoxState);//0059CF9C
  end;
  TRadioButton = class(TButtonControl)
  public
    Alignment:TLeftRight;//f210
    FChecked:Boolean;//f211
    constructor Create(AOwner:TComponent); virtual;//v2C//0059D1C4
    //procedure v98(?:?); virtual;//v98//0059D430
    procedure CreateWnd; virtual;//vA0//0059D49C
    function GetChecked:Boolean; virtual;//vC4//0059D240
    procedure SetChecked(Value:Boolean); virtual;//vC8//0059D39C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0059D4E8
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0059D4D0
    //procedure sub_0059D57C(?:?); dynamic;//0059D57C
    procedure sub_0059D25C; dynamic;//0059D25C
    procedure SetAlignment(Value:TLeftRight);//0059D29C
  end;
  TListBoxStyle = (lbStandard, lbOwnerDrawFixed, lbOwnerDrawVariable, lbVirtual, lbVirtualOwnerDraw);
  TLBGetDataEvent = procedure(Control:TWinControl; Index:Integer; var Data:String) of object;;
  TLBGetDataObjectEvent = procedure(Control:TWinControl; Index:Integer; var DataObject:TObject) of object;;
  TLBFindDataEvent = function(Control:TWinControl; FindString:String):Integer of object;;
  TCustomListBox = class(TCustomMultiSelectListControl)
  public
    FAutoComplete:Boolean;//f210
    FCount:Integer;//f214
    FItems:TStrings;//f218
    FFilter:String;//f21C
    FLastTime:Cardinal;//f220
    FBorderStyle:TBorderStyle;//f224
    FCanvas:TCanvas;//f228
    FColumns:Integer;//f22C
    FItemHeight:Integer;//f230
    FOldCount:Integer;//f234
    FStyle:TListBoxStyle;//f238
    FIntegralHeight:Boolean;//f239
    FSorted:Boolean;//f23A
    FExtendedSelect:Boolean;//f23B
    FTabWidth:Integer;//f23C
    FSaveItems:TStringList;//f240
    FSaveTopIndex:Integer;//f244
    FSaveItemIndex:Integer;//f248
    FOnDrawItem:TDrawItemEvent;//f250
    f252:word;//f252
    f254:dword;//f254
    FOnMeasureItem:TMeasureItemEvent;//f258
    f25A:word;//f25A
    f25C:dword;//f25C
    FOnData:TLBGetDataEvent;//f260
    f262:word;//f262
    f264:dword;//f264
    FOnDataFind:TLBFindDataEvent;//f268
    f26A:word;//f26A
    f26C:dword;//f26C
    FOnDataObject:TLBGetDataObjectEvent;//f270
    f272:word;//f272
    f274:dword;//f274
    FMoving:Boolean;//f278
    destructor Destroy; virtual;//0059DE28
    constructor Create(AOwner:TComponent); virtual;//v2C//0059DD04
    //procedure v74(?:?); virtual;//v74//0059EE78
    //procedure v98(?:?); virtual;//v98//0059EB60
    procedure CreateWnd; virtual;//vA0//0059ECB8
    procedure DestroyWnd; virtual;//vB0//0059EDD8
    //function vC4:?; virtual;//vC4//0059E38C
    //function vC8:?; virtual;//vC8//0059E338
    //procedure vCC(?:?); virtual;//vCC//0059E3F8
    //procedure vD0(?:?; ?:?); virtual;//vD0//0059DE84
    procedure Clear; virtual;//vD4//0059E01C
    procedure vD8; virtual;//vD8//0059E034
    //procedure vDC(?:?); virtual;//vDC//0059E090
    procedure vE0; virtual;//vE0//0059E1E0
    procedure vE8; virtual;//vE8//0059F564
    //function vEC:?; virtual;//vEC//0059E3CC
    procedure SetMultiSelect(Value:Boolean); virtual;//vF0//0059E594
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//0059F25C
    //procedure vF8(?:?; ?:?); virtual;//vF8//0059F398
    //procedure WMSize(?:?); message WM_SIZE;//0059F1D8
    procedure WMPaint(var Message:TWMPaint); message WM_PAINT;//0059F1A8
    //procedure sub_0059E7C4(?:?); dynamic;//0059E7C4
    //procedure sub_0059E8A0(?:?); dynamic;//0059E8A0
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0059EEFC
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0059F528
    //procedure sub_0059F3D4(?:?); dynamic;//0059F3D4
    //procedure sub_0059F4D8(?:?); dynamic;//0059F4D8
    //procedure sub_0059EFB8(?:?); dynamic;//0059EFB8
    //procedure sub_0059DFC0(?:?); dynamic;//0059DFC0
    procedure sub_0059DFEC; dynamic;//0059DFEC
    //procedure sub_0059DF40(?:?; ?:TCheckListBoxDataWrapper); dynamic;//0059DF40
    //procedure sub_0059DF10(?:?); dynamic;//0059DF10
    //procedure sub_0059DF98(?:?; ?:?); dynamic;//0059DF98
    //procedure sub_0059DF70(?:?); dynamic;//0059DF70
    //procedure sub_0059F69C(?:?); dynamic;//0059F69C
    procedure sub_0059F1FC; dynamic;//0059F1FC
  end;
  TListBox = class(TCustomListBox)
    //function GetScrollWidth:?;//0059FA30
    procedure SetScrollWidth(Value:Integer);//0059FA5C
  end;
  TScrollEvent = procedure(Sender:TObject; ScrollCode:TScrollCode; var ScrollPos:Integer) of object;;
  TScrollBar = class(TWinControl)
  public
    Kind:TScrollBarKind;//f208
    Position:Integer;//f20C
    Min:Integer;//f210
    Max:Integer;//f214
    PageSize:Integer;//f218
    FRTLFactor:Integer;//f21C
    SmallChange:TScrollBarInc;//f220
    LargeChange:TScrollBarInc;//f222
    OnChange:TNotifyEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    OnScroll:TScrollEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    constructor Create(AOwner:TComponent); virtual;//v2C//0059FA94
    //procedure v98(?:?); virtual;//v98//0059FB78
    procedure CreateWnd; virtual;//vA0//0059FC1C
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd); message WM_ERASEBKGND;//005A0270
    //procedure sub_005A01FC(?:?); dynamic;//005A01FC
    //procedure sub_005A0218(?:?); dynamic;//005A0218
    //procedure sub_005A0234(?:?); dynamic;//005A0234
    //procedure sub_005A004C(?:?; ?:?); dynamic;//005A004C
    procedure sub_005A0018; dynamic;//005A0018
    procedure SetKind(Value:TScrollBarKind);//0059FD20
    procedure SetPosition(Value:Integer);//0059FF18
    procedure SetPageSize(Value:Integer);//0059FF48
    procedure SetMin(Value:Integer);//0059FFB8
    procedure SetMax(Value:Integer);//0059FFE8
  end;
  TStaticBorderStyle = (sbsNone, sbsSingle, sbsSunken);
  TCustomStaticText = class(TWinControl)
  public
    FAlignment:TAlignment;//f208
    FAutoSize:Boolean;//f209
    FBorderStyle:TStaticBorderStyle;//f20A
    FFocusControl:TWinControl;//f20C
    FShowAccelChar:Boolean;//f210
    procedure Loaded; virtual;//vC//005A04C4
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005A05E8
    constructor Create(AOwner:TComponent); virtual;//v2C//005A028C
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//005A065C
    //procedure v98(?:?); virtual;//v98//005A031C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//005A03BC
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005A0474
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005A0498
  end;
  TStaticText = class(TCustomStaticText)
    procedure SetAlignment(Value:TAlignment);//005A0628
    procedure SetBorderStyle(Value:TStaticBorderStyle);//005A0694
    procedure SetFocusControl(Value:TWinControl);//005A06C8
    procedure SetShowAccelChar(Value:Boolean);//005A06F8
  end;
  TMemoStrings = class(TStrings)
  public
    ..............................Memo:TCustomMemo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//005997FC
    //function v14:?; virtual;//v14//00599770
    //procedure v1C(?:?); virtual;//v1C//00599B5C
    //procedure v20(?:?; ?:?); virtual;//v20//00599854
    //procedure v2C(?:?); virtual;//v2C//00599B7C
    //procedure v30(?:?); virtual;//v30//00599AF8
    procedure Clear; virtual;//v44//00599AE0
    //procedure v48(?:?); virtual;//v48//00599A20
    //procedure v60(?:?; ?:?); virtual;//v60//005998E8
  end;
  TComboBoxStrings = class(TCustomComboBoxStrings)
  public
    //function v38(?:?):?; virtual;//v38//0059A3BC
    //procedure v60(?:?; ?:?); virtual;//v60//0059A44C
  end;
  TListBoxStrings = class(TStrings)
  public
    .........................................ListBox:TCustomListBox;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//0059D5F0
    //function v14:?; virtual;//v14//0059D5C0
    //function v18(?:?):?; virtual;//v18//0059D6E4
    //procedure v20(?:?; ?:?); virtual;//v20//0059D784
    //procedure v24(?:?; ?:?); virtual;//v24//0059D818
    //procedure v30(?:?); virtual;//v30//0059DB50
    //function v38(?:?):?; virtual;//v38//0059D85C
    procedure Clear; virtual;//v44//0059DB34
    //procedure v48(?:?); virtual;//v48//0059D9A4
    //procedure v4C(?:?; ?:?); virtual;//v4C//0059D9C8
    //function v54(?:?):?; virtual;//v54//0059DB90
    //procedure v60(?:?; ?:?); virtual;//v60//0059D904
    //procedure v70(?:?; ?:?); virtual;//v70//0059DBEC
  end;
    procedure StdCtrls;//00590DFC
    //function sub_00597A88(?:TCustomCombo):?;//00597A88
    constructor Create(AOwner:TComponent);//00597DD8
    //procedure sub_00597E4C(?:?);//00597E4C
    //procedure sub_00597EC8(?:?);//00597EC8
    procedure sub_00597EEC;//00597EEC
    //procedure CMDialogChar(?:?);//0059812C
    //procedure CMTextChanged(?:?);//005981BC
    //procedure CMCtl3DChanged(?:?);//005981DC
    //procedure WMSize(?:?);//00598208
    constructor Create(AOwner:TComponent);//0059822C
    //procedure sub_005982B8(?:?);//005982B8
    //procedure sub_005982D4(?:?; ?:?);//005982D4
    procedure sub_00598480;//00598480
    procedure Loaded;//005985A4
    procedure sub_005985C4;//005985C4
    procedure SetAutoSize(Value:Boolean);//005986EC
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00598874
    //procedure CMTextChanged(?:?);//005988B4
    //procedure CMFontChanged(?:?);//005988DC
    //procedure CMDialogChar(?:?);//00598908
    //procedure CMMouseEnter(?:?);//005989C0
    procedure CMMouseLeave(Message:TMessage);//005989FC
    constructor Create(AOwner:TComponent);//00598A38
    //procedure sub_00598B0C(?:?);//00598B0C
    procedure SetAutoSize(Value:bool);//00598B38
    //function sub_00598CD0(?:?):?;//00598CD0
    procedure SetReadOnly(Value:bool);//00598DFC
    //function sub_00598E50:?;//00598E50
    //procedure sub_00598E7C(?:?);//00598E7C
    //function sub_00598EA8:?;//00598EA8
    //procedure sub_00598EDC(?:?);//00598EDC
    procedure sub_00598F44;//00598F44
    //procedure sub_00598F68(?:?);//00598F68
    procedure sub_00598F8C(?:TCustomMaskEdit);//00598F8C
    //procedure sub_00598FB0(?:?);//00598FB0
    //procedure sub_00598FD4(?:?);//00598FD4
    //procedure sub_00598FF8(?:?);//00598FF8
    procedure sub_0059901C(?:TCustomEdit);//0059901C
    //function sub_00599040(?:?; ?:?):?;//00599040
    //procedure sub_005990E4(?:?);//005990E4
    //procedure sub_005991BC(?:?);//005991BC
    //procedure sub_005992A4(?:?);//005992A4
    procedure CreateWnd;//00599334
    procedure DestroyWnd;//005993D8
    procedure sub_00599454(?:TCustomEdit);//00599454
    procedure sub_00599528;//00599528
    procedure DefaultHandler(var Message:void );//0059955C
    //procedure WMSetFont(?:?);//005995A4
    //procedure CMCtl3DChanged(?:?);//005995F4
    //procedure CMFontChanged(?:?);//00599638
    //procedure sub_00599678(?:?);//00599678
    //procedure CMEnter(?:?);//005996B0
    //procedure CMTextChanged(?:?);//005996FC
    //procedure WMContextMenu(?:?);//00599748
    //function sub_00599770:?;//00599770
    //procedure sub_005997FC(?:?; ?:?);//005997FC
    //procedure sub_00599854(?:?; ?:?);//00599854
    //procedure sub_005998E8(?:?; ?:?);//005998E8
    //procedure sub_00599A20(?:?);//00599A20
    procedure Clear;//00599AE0
    //procedure sub_00599AF8(?:?);//00599AF8
    //procedure sub_00599B5C(?:?);//00599B5C
    //procedure sub_00599B7C(?:?);//00599B7C
    constructor Create(AOwner:TComponent);//00599C60
    destructor Destroy;//00599D04
    //procedure sub_00599D44(?:?);//00599D44
    //procedure sub_00599DC0(?:?);//00599DC0
    //procedure sub_00599EF8(?:?);//00599EF8
    //procedure sub_00599F68(?:?);//00599F68
    procedure sub_00599FB8;//00599FB8
    procedure Loaded;//00599FD4
    //procedure WMGetDlgCode(?:?);//0059A0B0
    //procedure WMNCDestroy(?:?);//0059A0FC
    //procedure sub_0059A118(?:?);//0059A118
    //function sub_0059A150:?;//0059A150
    //function sub_0059A180(?:?):?;//0059A180
    //procedure sub_0059A204(?:?; ?:?);//0059A204
    //procedure sub_0059A238(?:?; ?:?);//0059A238
    procedure Clear;//0059A294
    //procedure sub_0059A318(?:?);//0059A318
    //function sub_0059A344(?:?):?;//0059A344
    //procedure sub_0059A37C(?:?);//0059A37C
    //function sub_0059A3BC(?:?):?;//0059A3BC
    //procedure sub_0059A44C(?:?; ?:?);//0059A44C
    constructor Create(AOwner:TComponent);//0059A4DC
    destructor Destroy;//0059A608
    procedure Clear;//0059A67C
    procedure DestroyWindowHandle;//0059A6B4
    procedure sub_0059A6E8;//0059A6E8
    //function sub_0059A70C(?:TCustomCombo):?;//0059A70C
    //procedure sub_0059A73C(?:TCustomCombo; ?:?);//0059A73C
    function GetItemIndex:Integer;//0059A788
    procedure SetItemIndex(Value:Integer);//0059A7CC
    procedure SetItemHeight(Value:Integer);//0059A878
    //procedure WMCreate(?:?);//0059A8A4
    //procedure WMDrawItem(?:?);//0059A8E0
    //procedure WMMeasureItem(?:?);//0059A8FC
    //procedure WMDeleteItem(?:?);//0059A918
    //procedure WMGetDlgCode(?:?);//0059A934
    //procedure CMCancelMode(?:?);//0059A964
    //procedure CMCtl3DChanged(?:?);//0059A990
    //procedure CMParentColorChanged(?:?);//0059A9C0
    //procedure sub_0059AB84(?:?; ?:?; ?:?);//0059AB84
    //procedure sub_0059AE9C(?:?);//0059AE9C
    //procedure sub_0059AFF0(?:?);//0059AFF0
    procedure sub_0059B190;//0059B190
    //procedure sub_0059B1C4(?:?; ?:?; ?:?);//0059B1C4
    procedure sub_0059B298;//0059B298
    procedure Loaded;//0059B2C4
    procedure sub_0059B2F8;//0059B2F8
    procedure sub_0059B348;//0059B348
    procedure sub_0059B374;//0059B374
    procedure CreateWnd;//0059B3B0
    procedure sub_0059B3F8;//0059B3F8
    procedure SetItems(Value:TStrings);//0059B4C8
    //procedure sub_0059B504(?:?);//0059B504
    //procedure sub_0059B51C(?:?);//0059B51C
    procedure sub_0059B5B8;//0059B5B8
    //function sub_0059B5EC:?;//0059B5EC
    procedure SetDropDownCount(Value:Integer);//0059B60C
    //procedure sub_0059B628(?:?; ?:?);//0059B628
    constructor Create(AOwner:TComponent);//0059B684
    destructor Destroy;//0059B71C
    procedure SetStyle(Value:TComboBoxStyle);//0059B7A0
    function GetItemHeight:Integer;//0059B804
    //procedure sub_0059B848(?:?);//0059B848
    procedure CreateWnd;//0059B8C4
    procedure DestroyWnd;//0059BA80
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd);//0059BAE4
    //function sub_0059BB44(?:?; ?:?; ?:?):?;//0059BB44
    //procedure sub_0059BB84(?:?);//0059BB84
    //procedure sub_0059BC4C(?:?);//0059BC4C
    //function sub_0059C030(?:TCustomComboBox; ?:AnsiString):?;//0059C030
    //procedure sub_0059C1EC(?:?; ?:?);//0059C1EC
    //procedure sub_0059C228(?:?);//0059C228
    //procedure sub_0059C34C(?:?);//0059C34C
    //procedure WMLButtonDown(?:?);//0059C39C
    //procedure sub_0059C438(?:?);//0059C438
    //function sub_0059C494:?;//0059C494
    //function sub_0059C4B8:?;//0059C4B8
    procedure WMPaint(Message:TWMPaint);//0059C4D0
    //procedure WMNCCalcSize(?:?);//0059C754
    //procedure sub_0059C764(?:?);//0059C764
    //function sub_0059C794:?;//0059C794
    //procedure sub_0059C7E4(?:?);//0059C7E4
    constructor Create(AOwner:TComponent);//0059C850
    //procedure sub_0059C8B8(?:?; ?:?);//0059C8B8
    procedure sub_0059C914;//0059C914
    //function sub_0059C92C:?;//0059C92C
    //procedure sub_0059C974(?:?);//0059C974
    //procedure sub_0059C984(?:?);//0059C984
    constructor Create(AOwner:TComponent);//0059CA14
    procedure sub_0059CA90;//0059CA90
    procedure sub_0059CAC8;//0059CAC8
    //procedure sub_0059CADC(?:?);//0059CADC
    //procedure sub_0059CB98(?:?);//0059CB98
    procedure CreateWnd;//0059CBE4
    //procedure sub_0059CC08(?:?);//0059CC08
    //procedure CMDialogKey(?:?);//0059CC30
    //procedure CMDialogChar(?:?);//0059CCBC
    //procedure CMFocusChenged(?:?);//0059CD50
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd);//0059CDC0
    constructor Create(AOwner:TComponent);//0059CDDC
    procedure sub_0059CE64;//0059CE64
    procedure sub_0059CEA4;//0059CEA4
    procedure sub_0059CF00;//0059CF00
    function GetChecked:Boolean;//0059CF1C
    procedure SetChecked(Value:Boolean);//0059CF70
    //procedure sub_0059D00C(?:?);//0059D00C
    procedure CreateWnd;//0059D07C
    //procedure WMSize(?:?);//0059D0B0
    //procedure CMCtl3DChanged(?:?);//0059D0D4
    //procedure CMDialogChar(?:?);//0059D0EC
    //procedure sub_0059D19C(?:?);//0059D19C
    constructor Create(AOwner:TComponent);//0059D1C4
    function GetChecked:Boolean;//0059D240
    procedure sub_0059D25C;//0059D25C
    //procedure sub_0059D2D0(?:?);//0059D2D0
    procedure SetChecked(Value:Boolean);//0059D39C
    //procedure sub_0059D430(?:?);//0059D430
    procedure CreateWnd;//0059D49C
    //procedure CMCtl3DChanged(?:?);//0059D4D0
    //procedure CMDialogChar(?:?);//0059D4E8
    //procedure sub_0059D57C(?:?);//0059D57C
    //function sub_0059D5C0:?;//0059D5C0
    //procedure sub_0059D5F0(?:?; ?:?);//0059D5F0
    //function sub_0059D6E4(?:?):?;//0059D6E4
    //procedure sub_0059D784(?:?; ?:?);//0059D784
    //procedure sub_0059D818(?:?; ?:?);//0059D818
    //function sub_0059D85C(?:?):?;//0059D85C
    //procedure sub_0059D904(?:?; ?:?);//0059D904
    //procedure sub_0059D9A4(?:?);//0059D9A4
    //procedure sub_0059D9C8(?:?; ?:?);//0059D9C8
    procedure Clear;//0059DB34
    //procedure sub_0059DB50(?:?);//0059DB50
    //function sub_0059DB90(?:?):?;//0059DB90
    //procedure sub_0059DBEC(?:?; ?:?);//0059DBEC
    constructor Create(AOwner:TComponent);//0059DD04
    destructor Destroy;//0059DE28
    //procedure sub_0059DE84(?:?; ?:?);//0059DE84
    //procedure sub_0059DF10(?:?);//0059DF10
    //procedure sub_0059DF40(?:?; ?:TCheckListBoxDataWrapper);//0059DF40
    //procedure sub_0059DF70(?:?);//0059DF70
    //procedure sub_0059DF98(?:?; ?:?);//0059DF98
    //procedure sub_0059DFC0(?:?);//0059DFC0
    procedure sub_0059DFEC;//0059DFEC
    procedure Clear;//0059E01C
    procedure sub_0059E034;//0059E034
    //procedure sub_0059E090(?:?);//0059E090
    procedure sub_0059E1E0;//0059E1E0
    procedure sub_0059E264(?:TCustomListBox);//0059E264
    procedure SetColumns(Value:Integer);//0059E2D0
    //function sub_0059E338:?;//0059E338
    //function sub_0059E38C:?;//0059E38C
    //function sub_0059E3CC:?;//0059E3CC
    //procedure sub_0059E3F8(?:?);//0059E3F8
    procedure SetExtendedSelect(Value:Boolean);//0059E458
    procedure SetIntegralHeight(Value:Boolean);//0059E48C
    //function GetItemHeight:?;//0059E4CC
    procedure SetItemHeight(Value:Integer);//0059E51C
    procedure SetTabWidth(Value:Integer);//0059E554
    procedure SetMultiSelect(Value:Boolean);//0059E594
    //function sub_0059E5C8(?:TCustomListBox; ?:?):?;//0059E5C8
    //procedure sub_0059E630(?:TCustomListBox; ?:?; ?:?);//0059E630
    procedure SetSorted(Value:Boolean);//0059E700
    procedure SetStyle(Value:TListBoxStyle);//0059E744
    //function sub_0059E798(?:TCustomListBox):?;//0059E798
    //procedure sub_0059E7C4(?:?);//0059E7C4
    //procedure sub_0059E8A0(?:?);//0059E8A0
    procedure SetBorderStyle(Value:TBorderStyle);//0059E968
    procedure sub_0059E99C(?:TCustomListBox; ?:Integer);//0059E99C
    procedure SetItems(Value:TStrings);//0059E9D4
    //function sub_0059EA30(?:TCustomListBox; ?:?; ?:?):?;//0059EA30
    //procedure sub_0059EAD0(?:TCheckListBox; ?:?; ?:?);//0059EAD0
    //procedure sub_0059EB60(?:?);//0059EB60
    procedure CreateWnd;//0059ECB8
    procedure DestroyWnd;//0059EDD8
    //procedure sub_0059EE78(?:?);//0059EE78
    //procedure WMLButtonDown(?:?);//0059EEFC
    //procedure sub_0059EFB8(?:?);//0059EFB8
    procedure PaintListBox;//0059F000
    procedure WMPaint(var Message:TWMPaint);//0059F1A8
    //procedure WMSize(?:?);//0059F1D8
    procedure sub_0059F1FC;//0059F1FC
    //procedure sub_0059F25C(?:?; ?:?; ?:?);//0059F25C
    //procedure sub_0059F398(?:?; ?:?);//0059F398
    //procedure sub_0059F3D4(?:?);//0059F3D4
    //procedure sub_0059F4D8(?:?);//0059F4D8
    //procedure CMCtl3DChanged(?:?);//0059F528
    procedure sub_0059F564;//0059F564
    //procedure sub_0059F5B0(?:?);//0059F5B0
    //procedure sub_0059F69C(?:?);//0059F69C
    procedure sub_0059F87C(?:TCustomListBox; ?:Integer);//0059F87C
    //procedure sub_0059F974(?:TCustomListBox; ?:?; ?:AnsiString);//0059F974
    //function sub_0059F9B0(?:TCustomListBox; ?:?):?;//0059F9B0
    //function sub_0059F9EC(?:TCustomListBox; ?:?):?;//0059F9EC
    constructor Create(AOwner:TComponent);//0059FA94
    //procedure sub_0059FB78(?:?);//0059FB78
    procedure CreateWnd;//0059FC1C
    //function sub_0059FCEC(?:TScrollBar):?;//0059FCEC
    //procedure sub_0059FD84(?:TScrollBar; ?:Integer; ?:Integer; ?:?);//0059FD84
    procedure sub_005A0018;//005A0018
    //procedure sub_005A004C(?:?; ?:?);//005A004C
    //procedure sub_005A0088(?:TScrollBar; ?:?);//005A0088
    //procedure sub_005A01FC(?:?);//005A01FC
    //procedure sub_005A0218(?:?);//005A0218
    //procedure sub_005A0234(?:?);//005A0234
    procedure WMEraseBkgnd(Message:TWMEraseBkgnd);//005A0270
    constructor Create(AOwner:TComponent);//005A028C
    //procedure sub_005A031C(?:?);//005A031C
    //procedure CMDialogChar(?:?);//005A03BC
    //procedure CMFontChanged(?:?);//005A0474
    //procedure CMTextChanged(?:?);//005A0498
    procedure Loaded;//005A04C4
    procedure sub_005A04E0(?:TCustomStaticText);//005A04E0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005A05E8
    procedure SetAutoSize(Value:Boolean);//005A065C
    procedure Finalization;//005A072C

implementation

//00590DFC
procedure StdCtrls;
begin
{*
 00590DFC    sub         dword ptr ds:[6ECCF0],1
 00590E03    ret
*}
end;

//00597A88
{*function sub_00597A88(?:TCustomCombo):?;
begin
 00597A88    push        ebp
 00597A89    mov         ebp,esp
 00597A8B    add         esp,0FFFFFFF8
 00597A8E    mov         dword ptr [ebp-4],eax
 00597A91    mov         byte ptr [ebp-5],1
 00597A95    cmp         dword ptr [ebp-4],0
>00597A99    je          00597AB3
 00597A9B    mov         eax,dword ptr [ebp-4]
 00597A9E    cmp         dword ptr [eax+7C],0
>00597AA2    jne         00597AB7
 00597AA4    mov         eax,dword ptr [ebp-4]
 00597AA7    mov         eax,dword ptr [eax+30]
 00597AAA    mov         dword ptr [ebp-4],eax
 00597AAD    cmp         dword ptr [ebp-4],0
>00597AB1    jne         00597A9B
 00597AB3    mov         byte ptr [ebp-5],0
 00597AB7    mov         al,byte ptr [ebp-5]
 00597ABA    pop         ecx
 00597ABB    pop         ecx
 00597ABC    pop         ebp
 00597ABD    ret
end;*}

//00597DD8
constructor TCustomGroupBox.Create(AOwner:TComponent);
begin
{*
 00597DD8    push        ebp
 00597DD9    mov         ebp,esp
 00597DDB    add         esp,0FFFFFFF4
 00597DDE    test        dl,dl
>00597DE0    je          00597DEA
 00597DE2    add         esp,0FFFFFFF0
 00597DE5    call        @ClassCreate
 00597DEA    mov         dword ptr [ebp-0C],ecx
 00597DED    mov         byte ptr [ebp-5],dl
 00597DF0    mov         dword ptr [ebp-4],eax
 00597DF3    mov         ecx,dword ptr [ebp-0C]
 00597DF6    xor         edx,edx
 00597DF8    mov         eax,dword ptr [ebp-4]
 00597DFB    call        TCustomControl.Create
 00597E00    mov         eax,dword ptr [ebp-4]
 00597E03    mov         edx,dword ptr ds:[597E48];0x8AB gvar_00597E48
 00597E09    mov         dword ptr [eax+50],edx;TCustomGroupBox.FControlStyle:TControlStyle
 00597E0C    mov         edx,0B9
 00597E11    mov         eax,dword ptr [ebp-4]
 00597E14    call        TControl.SetWidth
 00597E19    mov         edx,69
 00597E1E    mov         eax,dword ptr [ebp-4]
 00597E21    call        TControl.SetHeight
 00597E26    mov         eax,dword ptr [ebp-4]
 00597E29    cmp         byte ptr [ebp-5],0
>00597E2D    je          00597E3E
 00597E2F    call        @AfterConstruction
 00597E34    pop         dword ptr fs:[0]
 00597E3B    add         esp,0C
 00597E3E    mov         eax,dword ptr [ebp-4]
 00597E41    mov         esp,ebp
 00597E43    pop         ebp
 00597E44    ret
*}
end;

//00597E4C
{*procedure sub_00597E4C(?:?);
begin
 00597E4C    push        ebp
 00597E4D    mov         ebp,esp
 00597E4F    add         esp,0FFFFFFF8
 00597E52    mov         dword ptr [ebp-8],edx
 00597E55    mov         dword ptr [ebp-4],eax
 00597E58    mov         edx,dword ptr [ebp-8]
 00597E5B    mov         eax,dword ptr [ebp-4]
 00597E5E    call        005F6F3C
 00597E63    mov         eax,dword ptr [ebp-4]
 00597E66    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 00597E69    mov         eax,dword ptr [ebp-4]
 00597E6C    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00597E72    call        TCanvas.SetFont
 00597E77    mov         edx,597EC4;'0'
 00597E7C    mov         eax,dword ptr [ebp-4]
 00597E7F    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00597E85    call        005C177C
 00597E8A    mov         edx,dword ptr [ebp-8]
 00597E8D    add         dword ptr [edx+4],eax
 00597E90    push        0FF
 00597E92    push        0FF
 00597E94    mov         eax,dword ptr [ebp-8]
 00597E97    push        eax
 00597E98    call        USER32.InflateRect
 00597E9D    mov         eax,dword ptr [ebp-4]
 00597EA0    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>00597EA7    je          00597EB6
 00597EA9    push        0FF
 00597EAB    push        0FF
 00597EAD    mov         eax,dword ptr [ebp-8]
 00597EB0    push        eax
 00597EB1    call        USER32.InflateRect
 00597EB6    pop         ecx
 00597EB7    pop         ecx
 00597EB8    pop         ebp
 00597EB9    ret
end;*}

//00597EC8
{*procedure sub_00597EC8(?:?);
begin
 00597EC8    push        ebp
 00597EC9    mov         ebp,esp
 00597ECB    add         esp,0FFFFFFF8
 00597ECE    mov         dword ptr [ebp-8],edx
 00597ED1    mov         dword ptr [ebp-4],eax
 00597ED4    mov         edx,dword ptr [ebp-8]
 00597ED7    mov         eax,dword ptr [ebp-4]
 00597EDA    call        005F7FC0
 00597EDF    mov         eax,dword ptr [ebp-8]
 00597EE2    and         dword ptr [eax+24],0FFFFFFFC
 00597EE6    pop         ecx
 00597EE7    pop         ecx
 00597EE8    pop         ebp
 00597EE9    ret
end;*}

//00597EEC
procedure sub_00597EEC;
begin
{*
 00597EEC    push        ebp
 00597EED    mov         ebp,esp
 00597EEF    add         esp,0FFFFFFB8
 00597EF2    push        esi
 00597EF3    push        edi
 00597EF4    xor         edx,edx
 00597EF6    mov         dword ptr [ebp-48],edx
 00597EF9    mov         dword ptr [ebp-44],edx
 00597EFC    mov         dword ptr [ebp-40],edx
 00597EFF    mov         dword ptr [ebp-3C],edx
 00597F02    mov         dword ptr [ebp-38],edx
 00597F05    mov         dword ptr [ebp-24],edx
 00597F08    mov         dword ptr [ebp-4],eax
 00597F0B    xor         eax,eax
 00597F0D    push        ebp
 00597F0E    push        598110
 00597F13    push        dword ptr fs:[eax]
 00597F16    mov         dword ptr fs:[eax],esp
 00597F19    mov         eax,dword ptr [ebp-4]
 00597F1C    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00597F22    mov         dword ptr [ebp-10],eax
 00597F25    mov         eax,dword ptr [ebp-4]
 00597F28    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 00597F2B    mov         eax,dword ptr [ebp-10]
 00597F2E    call        TCanvas.SetFont
 00597F33    mov         edx,598128;'0'
 00597F38    mov         eax,dword ptr [ebp-10]
 00597F3B    call        005C177C
 00597F40    mov         dword ptr [ebp-8],eax
 00597F43    mov         eax,dword ptr [ebp-4]
 00597F46    mov         eax,dword ptr [eax+4C];TCustomGroupBox.Height:Integer
 00597F49    push        eax
 00597F4A    lea         eax,[ebp-20]
 00597F4D    push        eax
 00597F4E    mov         edx,dword ptr [ebp-8]
 00597F51    sar         edx,1
>00597F53    jns         00597F58
 00597F55    adc         edx,0
 00597F58    dec         edx
 00597F59    mov         eax,dword ptr [ebp-4]
 00597F5C    mov         ecx,dword ptr [eax+48];TCustomGroupBox.Width:Integer
 00597F5F    xor         eax,eax
 00597F61    call        Rect
 00597F66    mov         eax,dword ptr [ebp-4]
 00597F69    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>00597F70    je          00597FB2
 00597F72    inc         dword ptr [ebp-20]
 00597F75    inc         dword ptr [ebp-1C]
 00597F78    mov         edx,80000014
 00597F7D    mov         eax,dword ptr [ebp-10]
 00597F80    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00597F83    call        TBrush.SetColor
 00597F88    lea         edx,[ebp-20]
 00597F8B    mov         eax,dword ptr [ebp-10]
 00597F8E    call        005C1224
 00597F93    push        0FF
 00597F95    push        0FF
 00597F97    lea         eax,[ebp-20]
 00597F9A    push        eax
 00597F9B    call        USER32.OffsetRect
 00597FA0    mov         edx,80000010
 00597FA5    mov         eax,dword ptr [ebp-10]
 00597FA8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00597FAB    call        TBrush.SetColor
>00597FB0    jmp         00597FC2
 00597FB2    mov         edx,80000006
 00597FB7    mov         eax,dword ptr [ebp-10]
 00597FBA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00597FBD    call        TBrush.SetColor
 00597FC2    lea         edx,[ebp-20]
 00597FC5    mov         eax,dword ptr [ebp-10]
 00597FC8    call        005C1224
 00597FCD    lea         edx,[ebp-24]
 00597FD0    mov         eax,dword ptr [ebp-4]
 00597FD3    call        TTabPage.GetCaption
 00597FD8    cmp         dword ptr [ebp-24],0
>00597FDC    je          005980ED
 00597FE2    mov         eax,dword ptr [ebp-4]
 00597FE5    mov         si,0FFC8
 00597FE9    call        @CallDynaInst;TControl.sub_005F40CC
 00597FEE    test        al,al
>00597FF0    jne         0059800A
 00597FF2    mov         eax,dword ptr [ebp-8]
 00597FF5    push        eax
 00597FF6    lea         eax,[ebp-20]
 00597FF9    push        eax
 00597FFA    xor         ecx,ecx
 00597FFC    xor         edx,edx
 00597FFE    mov         eax,8
 00598003    call        Rect
>00598008    jmp         0059804B
 0059800A    mov         eax,dword ptr [ebp-8]
 0059800D    push        eax
 0059800E    lea         eax,[ebp-34]
 00598011    push        eax
 00598012    lea         edx,[ebp-38]
 00598015    mov         eax,dword ptr [ebp-4]
 00598018    call        TTabPage.GetCaption
 0059801D    mov         edx,dword ptr [ebp-38]
 00598020    mov         eax,dword ptr [ebp-4]
 00598023    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00598029    call        005C1754
 0059802E    push        eax
 0059802F    mov         eax,dword ptr [ebp-18]
 00598032    pop         edx
 00598033    sub         eax,edx
 00598035    sub         eax,8
 00598038    xor         ecx,ecx
 0059803A    xor         edx,edx
 0059803C    call        Rect
 00598041    lea         esi,[ebp-34]
 00598044    lea         edi,[ebp-20]
 00598047    movs        dword ptr [edi],dword ptr [esi]
 00598048    movs        dword ptr [edi],dword ptr [esi]
 00598049    movs        dword ptr [edi],dword ptr [esi]
 0059804A    movs        dword ptr [edi],dword ptr [esi]
 0059804B    mov         edx,20
 00598050    mov         eax,dword ptr [ebp-4]
 00598053    call        005F6724
 00598058    mov         dword ptr [ebp-0C],eax
 0059805B    mov         eax,dword ptr [ebp-0C]
 0059805E    or          eax,400
 00598063    push        eax
 00598064    lea         eax,[ebp-20]
 00598067    push        eax
 00598068    lea         edx,[ebp-3C]
 0059806B    mov         eax,dword ptr [ebp-4]
 0059806E    call        TTabPage.GetCaption
 00598073    mov         eax,dword ptr [ebp-3C]
 00598076    call        @LStrLen
 0059807B    push        eax
 0059807C    lea         edx,[ebp-40]
 0059807F    mov         eax,dword ptr [ebp-4]
 00598082    call        TTabPage.GetCaption
 00598087    mov         eax,dword ptr [ebp-40]
 0059808A    call        @LStrToPChar
 0059808F    push        eax
 00598090    mov         eax,dword ptr [ebp-10]
 00598093    call        TCanvas.GetHandle
 00598098    push        eax
 00598099    call        USER32.DrawTextA
 0059809E    mov         eax,dword ptr [ebp-4]
 005980A1    mov         edx,dword ptr [eax+70];TCustomGroupBox.FColor:TColor
 005980A4    mov         eax,dword ptr [ebp-10]
 005980A7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005980AA    call        TBrush.SetColor
 005980AF    mov         eax,dword ptr [ebp-0C]
 005980B2    push        eax
 005980B3    lea         eax,[ebp-20]
 005980B6    push        eax
 005980B7    lea         edx,[ebp-44]
 005980BA    mov         eax,dword ptr [ebp-4]
 005980BD    call        TTabPage.GetCaption
 005980C2    mov         eax,dword ptr [ebp-44]
 005980C5    call        @LStrLen
 005980CA    push        eax
 005980CB    lea         edx,[ebp-48]
 005980CE    mov         eax,dword ptr [ebp-4]
 005980D1    call        TTabPage.GetCaption
 005980D6    mov         eax,dword ptr [ebp-48]
 005980D9    call        @LStrToPChar
 005980DE    push        eax
 005980DF    mov         eax,dword ptr [ebp-10]
 005980E2    call        TCanvas.GetHandle
 005980E7    push        eax
 005980E8    call        USER32.DrawTextA
 005980ED    xor         eax,eax
 005980EF    pop         edx
 005980F0    pop         ecx
 005980F1    pop         ecx
 005980F2    mov         dword ptr fs:[eax],edx
 005980F5    push        598117
 005980FA    lea         eax,[ebp-48]
 005980FD    mov         edx,5
 00598102    call        @LStrArrayClr
 00598107    lea         eax,[ebp-24]
 0059810A    call        @LStrClr
 0059810F    ret
>00598110    jmp         @HandleFinally
>00598115    jmp         005980FA
 00598117    pop         edi
 00598118    pop         esi
 00598119    mov         esp,ebp
 0059811B    pop         ebp
 0059811C    ret
*}
end;

//0059812C
{*procedure TCustomGroupBox.CMDialogChar(?:?);
begin
 0059812C    push        ebp
 0059812D    mov         ebp,esp
 0059812F    add         esp,0FFFFFFF4
 00598132    push        esi
 00598133    xor         ecx,ecx
 00598135    mov         dword ptr [ebp-0C],ecx
 00598138    mov         dword ptr [ebp-8],edx
 0059813B    mov         dword ptr [ebp-4],eax
 0059813E    xor         eax,eax
 00598140    push        ebp
 00598141    push        5981AF
 00598146    push        dword ptr fs:[eax]
 00598149    mov         dword ptr fs:[eax],esp
 0059814C    lea         edx,[ebp-0C]
 0059814F    mov         eax,dword ptr [ebp-4]
 00598152    call        TTabPage.GetCaption
 00598157    mov         edx,dword ptr [ebp-0C]
 0059815A    mov         eax,dword ptr [ebp-8]
 0059815D    mov         ax,word ptr [eax+4]
 00598161    call        005CCFE8
 00598166    test        al,al
>00598168    je          0059818E
 0059816A    mov         eax,dword ptr [ebp-4]
 0059816D    mov         si,0FFB8
 00598171    call        @CallDynaInst;TWinControl.sub_005FBF90
 00598176    test        al,al
>00598178    je          0059818E
 0059817A    mov         eax,dword ptr [ebp-4]
 0059817D    call        005FC85C
 00598182    mov         eax,dword ptr [ebp-8]
 00598185    mov         dword ptr [eax+0C],1
>0059818C    jmp         00598199
 0059818E    mov         edx,dword ptr [ebp-8]
 00598191    mov         eax,dword ptr [ebp-4]
 00598194    call        TWinControl.CMDialogChar
 00598199    xor         eax,eax
 0059819B    pop         edx
 0059819C    pop         ecx
 0059819D    pop         ecx
 0059819E    mov         dword ptr fs:[eax],edx
 005981A1    push        5981B6
 005981A6    lea         eax,[ebp-0C]
 005981A9    call        @LStrClr
 005981AE    ret
>005981AF    jmp         @HandleFinally
>005981B4    jmp         005981A6
 005981B6    pop         esi
 005981B7    mov         esp,ebp
 005981B9    pop         ebp
 005981BA    ret
end;*}

//005981BC
{*procedure TCustomGroupBox.CMTextChanged(?:?);
begin
 005981BC    push        ebp
 005981BD    mov         ebp,esp
 005981BF    add         esp,0FFFFFFF8
 005981C2    mov         dword ptr [ebp-8],edx
 005981C5    mov         dword ptr [ebp-4],eax
 005981C8    mov         eax,dword ptr [ebp-4]
 005981CB    mov         edx,dword ptr [eax]
 005981CD    call        dword ptr [edx+7C];TWinControl.Invalidate
 005981D0    mov         eax,dword ptr [ebp-4]
 005981D3    call        005F7848
 005981D8    pop         ecx
 005981D9    pop         ecx
 005981DA    pop         ebp
 005981DB    ret
end;*}

//005981DC
{*procedure TCustomGroupBox.CMCtl3DChanged(?:?);
begin
 005981DC    push        ebp
 005981DD    mov         ebp,esp
 005981DF    add         esp,0FFFFFFF8
 005981E2    mov         dword ptr [ebp-8],edx
 005981E5    mov         dword ptr [ebp-4],eax
 005981E8    mov         edx,dword ptr [ebp-8]
 005981EB    mov         eax,dword ptr [ebp-4]
 005981EE    call        TWinControl.CMCtl3DChanged
 005981F3    mov         eax,dword ptr [ebp-4]
 005981F6    mov         edx,dword ptr [eax]
 005981F8    call        dword ptr [edx+7C];TWinControl.Invalidate
 005981FB    mov         eax,dword ptr [ebp-4]
 005981FE    call        005F7848
 00598203    pop         ecx
 00598204    pop         ecx
 00598205    pop         ebp
 00598206    ret
end;*}

//00598208
{*procedure TCustomGroupBox.WMSize(?:?);
begin
 00598208    push        ebp
 00598209    mov         ebp,esp
 0059820B    add         esp,0FFFFFFF8
 0059820E    mov         dword ptr [ebp-8],edx
 00598211    mov         dword ptr [ebp-4],eax
 00598214    mov         edx,dword ptr [ebp-8]
 00598217    mov         eax,dword ptr [ebp-4]
 0059821A    call        TWinControl.WMSize
 0059821F    mov         eax,dword ptr [ebp-4]
 00598222    mov         edx,dword ptr [eax]
 00598224    call        dword ptr [edx+7C];TWinControl.Invalidate
 00598227    pop         ecx
 00598228    pop         ecx
 00598229    pop         ebp
 0059822A    ret
end;*}

//0059822C
constructor TCustomLabel.Create(AOwner:TComponent);
begin
{*
 0059822C    push        ebp
 0059822D    mov         ebp,esp
 0059822F    add         esp,0FFFFFFF4
 00598232    test        dl,dl
>00598234    je          0059823E
 00598236    add         esp,0FFFFFFF0
 00598239    call        @ClassCreate
 0059823E    mov         dword ptr [ebp-0C],ecx
 00598241    mov         byte ptr [ebp-5],dl
 00598244    mov         dword ptr [ebp-4],eax
 00598247    mov         ecx,dword ptr [ebp-0C]
 0059824A    xor         edx,edx
 0059824C    mov         eax,dword ptr [ebp-4]
 0059824F    call        TGraphicControl.Create
 00598254    mov         eax,dword ptr [ebp-4]
 00598257    mov         eax,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 0059825A    or          eax,dword ptr ds:[5982B4];0x840 gvar_005982B4
 00598260    mov         edx,dword ptr [ebp-4]
 00598263    mov         dword ptr [edx+50],eax;TCustomLabel.FControlStyle:TControlStyle
 00598266    mov         edx,41
 0059826B    mov         eax,dword ptr [ebp-4]
 0059826E    call        TControl.SetWidth
 00598273    mov         edx,11
 00598278    mov         eax,dword ptr [ebp-4]
 0059827B    call        TControl.SetHeight
 00598280    mov         eax,dword ptr [ebp-4]
 00598283    mov         byte ptr [eax+16D],1;TCustomLabel.FAutoSize:Boolean
 0059828A    mov         eax,dword ptr [ebp-4]
 0059828D    mov         byte ptr [eax+170],1;TCustomLabel.FShowAccelChar:Boolean
 00598294    mov         eax,dword ptr [ebp-4]
 00598297    cmp         byte ptr [ebp-5],0
>0059829B    je          005982AC
 0059829D    call        @AfterConstruction
 005982A2    pop         dword ptr fs:[0]
 005982A9    add         esp,0C
 005982AC    mov         eax,dword ptr [ebp-4]
 005982AF    mov         esp,ebp
 005982B1    pop         ebp
 005982B2    ret
*}
end;

//005982B8
{*procedure sub_005982B8(?:?);
begin
 005982B8    push        ebp
 005982B9    mov         ebp,esp
 005982BB    add         esp,0FFFFFFF8
 005982BE    mov         dword ptr [ebp-8],edx
 005982C1    mov         dword ptr [ebp-4],eax
 005982C4    mov         edx,dword ptr [ebp-8]
 005982C7    mov         eax,dword ptr [ebp-4]
 005982CA    call        TTabPage.GetCaption
 005982CF    pop         ecx
 005982D0    pop         ecx
 005982D1    pop         ebp
 005982D2    ret
end;*}

//005982D4
{*procedure TCustomLabel.sub_005982D4(?:?; ?:?);
begin
 005982D4    push        ebp
 005982D5    mov         ebp,esp
 005982D7    add         esp,0FFFFFFF0
 005982DA    push        ebx
 005982DB    xor         ebx,ebx
 005982DD    mov         dword ptr [ebp-10],ebx
 005982E0    mov         dword ptr [ebp-0C],ecx
 005982E3    mov         dword ptr [ebp-8],edx
 005982E6    mov         dword ptr [ebp-4],eax
 005982E9    xor         eax,eax
 005982EB    push        ebp
 005982EC    push        598468
 005982F1    push        dword ptr fs:[eax]
 005982F4    mov         dword ptr fs:[eax],esp
 005982F7    lea         edx,[ebp-10]
 005982FA    mov         eax,dword ptr [ebp-4]
 005982FD    mov         ecx,dword ptr [eax]
 005982FF    call        dword ptr [ecx+90];TCustomLabel.sub_005982B8
 00598305    test        byte ptr [ebp-0B],4
>00598309    je          0059833B
 0059830B    cmp         dword ptr [ebp-10],0
>0059830F    je          0059832E
 00598311    mov         eax,dword ptr [ebp-4]
 00598314    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>0059831B    je          0059833B
 0059831D    mov         eax,dword ptr [ebp-10]
 00598320    cmp         byte ptr [eax],26
>00598323    jne         0059833B
 00598325    mov         eax,dword ptr [ebp-10]
 00598328    cmp         byte ptr [eax+1],0
>0059832C    jne         0059833B
 0059832E    lea         eax,[ebp-10]
 00598331    mov         edx,59847C;' '
 00598336    call        @LStrCat
 0059833B    mov         eax,dword ptr [ebp-4]
 0059833E    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>00598345    jne         0059834E
 00598347    or          dword ptr [ebp-0C],800
 0059834E    mov         edx,dword ptr [ebp-0C]
 00598351    mov         eax,dword ptr [ebp-4]
 00598354    call        005F6724
 00598359    mov         dword ptr [ebp-0C],eax
 0059835C    mov         eax,dword ptr [ebp-4]
 0059835F    mov         edx,dword ptr [eax+68];TCustomLabel.FFont:TFont
 00598362    mov         eax,dword ptr [ebp-4]
 00598365    mov         eax,dword ptr [eax+160];TCustomLabel.........................................FCanvas:TCa...
 0059836B    call        TCanvas.SetFont
 00598370    mov         eax,dword ptr [ebp-4]
 00598373    mov         edx,dword ptr [eax]
 00598375    call        dword ptr [edx+50];TCCalendar.GetEnabled
 00598378    test        al,al
>0059837A    jne         00598424
 00598380    push        1
 00598382    push        1
 00598384    mov         eax,dword ptr [ebp-8]
 00598387    push        eax
 00598388    call        USER32.OffsetRect
 0059838D    mov         eax,dword ptr [ebp-4]
 00598390    mov         eax,dword ptr [eax+160];TCustomLabel..........................................FCanvas:TC...
 00598396    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00598399    mov         edx,80000014
 0059839E    call        TFont.SetColor
 005983A3    mov         eax,dword ptr [ebp-0C]
 005983A6    push        eax
 005983A7    mov         eax,dword ptr [ebp-8]
 005983AA    push        eax
 005983AB    mov         eax,dword ptr [ebp-10]
 005983AE    call        @LStrLen
 005983B3    push        eax
 005983B4    mov         eax,dword ptr [ebp-10]
 005983B7    call        @LStrToPChar
 005983BC    push        eax
 005983BD    mov         eax,dword ptr [ebp-4]
 005983C0    mov         eax,dword ptr [eax+160];TCustomLabel...........................................FCanvas:T...
 005983C6    call        TCanvas.GetHandle
 005983CB    push        eax
 005983CC    call        USER32.DrawTextA
 005983D1    push        0FF
 005983D3    push        0FF
 005983D5    mov         eax,dword ptr [ebp-8]
 005983D8    push        eax
 005983D9    call        USER32.OffsetRect
 005983DE    mov         eax,dword ptr [ebp-4]
 005983E1    mov         eax,dword ptr [eax+160];TCustomLabel............................................FCanvas:...
 005983E7    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005983EA    mov         edx,80000010
 005983EF    call        TFont.SetColor
 005983F4    mov         eax,dword ptr [ebp-0C]
 005983F7    push        eax
 005983F8    mov         eax,dword ptr [ebp-8]
 005983FB    push        eax
 005983FC    mov         eax,dword ptr [ebp-10]
 005983FF    call        @LStrLen
 00598404    push        eax
 00598405    mov         eax,dword ptr [ebp-10]
 00598408    call        @LStrToPChar
 0059840D    push        eax
 0059840E    mov         eax,dword ptr [ebp-4]
 00598411    mov         eax,dword ptr [eax+160];TCustomLabel.............................................FCanvas...
 00598417    call        TCanvas.GetHandle
 0059841C    push        eax
 0059841D    call        USER32.DrawTextA
>00598422    jmp         00598452
 00598424    mov         eax,dword ptr [ebp-0C]
 00598427    push        eax
 00598428    mov         eax,dword ptr [ebp-8]
 0059842B    push        eax
 0059842C    mov         eax,dword ptr [ebp-10]
 0059842F    call        @LStrLen
 00598434    push        eax
 00598435    mov         eax,dword ptr [ebp-10]
 00598438    call        @LStrToPChar
 0059843D    push        eax
 0059843E    mov         eax,dword ptr [ebp-4]
 00598441    mov         eax,dword ptr [eax+160];TCustomLabel..............................................FCanva...
 00598447    call        TCanvas.GetHandle
 0059844C    push        eax
 0059844D    call        USER32.DrawTextA
 00598452    xor         eax,eax
 00598454    pop         edx
 00598455    pop         ecx
 00598456    pop         ecx
 00598457    mov         dword ptr fs:[eax],edx
 0059845A    push        59846F
 0059845F    lea         eax,[ebp-10]
 00598462    call        @LStrClr
 00598467    ret
>00598468    jmp         @HandleFinally
>0059846D    jmp         0059845F
 0059846F    pop         ebx
 00598470    mov         esp,ebp
 00598472    pop         ebp
 00598473    ret
end;*}

//00598480
procedure sub_00598480;
begin
{*
 00598480    push        ebp
 00598481    mov         ebp,esp
 00598483    add         esp,0FFFFFFC4
 00598486    push        esi
 00598487    push        edi
 00598488    mov         dword ptr [ebp-4],eax
 0059848B    mov         eax,dword ptr [ebp-4]
 0059848E    mov         eax,dword ptr [eax+160];TCustomLabel...............................................FCanv...
 00598494    mov         dword ptr [ebp-0C],eax
 00598497    mov         eax,dword ptr [ebp-4]
 0059849A    call        TLabel.GetTransparent
 0059849F    test        al,al
>005984A1    jne         005984D7
 005984A3    mov         eax,dword ptr [ebp-4]
 005984A6    mov         edx,dword ptr [eax+70];TCustomLabel.FColor:TColor
 005984A9    mov         eax,dword ptr [ebp-0C]
 005984AC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005984AF    call        TBrush.SetColor
 005984B4    xor         edx,edx
 005984B6    mov         eax,dword ptr [ebp-0C]
 005984B9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005984BC    call        TBrush.SetStyle
 005984C1    lea         edx,[ebp-3C]
 005984C4    mov         eax,dword ptr [ebp-4]
 005984C7    mov         ecx,dword ptr [eax]
 005984C9    call        dword ptr [ecx+44];TCustomLabel.sub_005F2E9C
 005984CC    lea         edx,[ebp-3C]
 005984CF    mov         eax,dword ptr [ebp-0C]
 005984D2    call        TCanvas.FillRect
 005984D7    mov         dl,1
 005984D9    mov         eax,dword ptr [ebp-0C]
 005984DC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005984DF    call        TBrush.SetStyle
 005984E4    lea         edx,[ebp-1C]
 005984E7    mov         eax,dword ptr [ebp-4]
 005984EA    mov         ecx,dword ptr [eax]
 005984EC    call        dword ptr [ecx+44];TCustomLabel.sub_005F2E9C
 005984EF    mov         eax,dword ptr [ebp-4]
 005984F2    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 005984F9    mov         ax,word ptr [eax*2+6E3A54]
 00598501    or          ax,40
 00598505    mov         edx,dword ptr [ebp-4]
 00598508    movzx       edx,byte ptr [edx+16C];TCustomLabel.FAlignment:TAlignment
 0059850F    or          ax,word ptr [edx*2+6E3A4C]
 00598517    movzx       eax,ax
 0059851A    mov         dword ptr [ebp-8],eax
 0059851D    mov         eax,dword ptr [ebp-4]
 00598520    cmp         byte ptr [eax+16E],0;TCustomLabel.FLayout:TTextLayout
>00598527    je          0059858A
 00598529    lea         esi,[ebp-1C]
 0059852C    lea         edi,[ebp-2C]
 0059852F    movs        dword ptr [edi],dword ptr [esi]
 00598530    movs        dword ptr [edi],dword ptr [esi]
 00598531    movs        dword ptr [edi],dword ptr [esi]
 00598532    movs        dword ptr [edi],dword ptr [esi]
 00598533    mov         ecx,dword ptr [ebp-8]
 00598536    or          ecx,400
 0059853C    lea         edx,[ebp-2C]
 0059853F    mov         eax,dword ptr [ebp-4]
 00598542    mov         si,0FFC6
 00598546    call        @CallDynaInst;TCustomLabel.sub_005982D4
 0059854B    mov         eax,dword ptr [ebp-4]
 0059854E    cmp         byte ptr [eax+16E],2;TCustomLabel.FLayout:TTextLayout
>00598555    jne         0059856E
 00598557    mov         eax,dword ptr [ebp-4]
 0059855A    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 0059855D    sub         eax,dword ptr [ebp-20]
 00598560    push        eax
 00598561    push        0
 00598563    lea         eax,[ebp-1C]
 00598566    push        eax
 00598567    call        USER32.OffsetRect
>0059856C    jmp         0059858A
 0059856E    mov         eax,dword ptr [ebp-4]
 00598571    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 00598574    sub         eax,dword ptr [ebp-20]
 00598577    sar         eax,1
>00598579    jns         0059857E
 0059857B    adc         eax,0
 0059857E    push        eax
 0059857F    push        0
 00598581    lea         eax,[ebp-1C]
 00598584    push        eax
 00598585    call        USER32.OffsetRect
 0059858A    lea         edx,[ebp-1C]
 0059858D    mov         ecx,dword ptr [ebp-8]
 00598590    mov         eax,dword ptr [ebp-4]
 00598593    mov         si,0FFC6
 00598597    call        @CallDynaInst;TCustomLabel.sub_005982D4
 0059859C    pop         edi
 0059859D    pop         esi
 0059859E    mov         esp,ebp
 005985A0    pop         ebp
 005985A1    ret
*}
end;

//005985A4
procedure TCustomLabel.Loaded;
begin
{*
 005985A4    push        ebp
 005985A5    mov         ebp,esp
 005985A7    push        ecx
 005985A8    push        esi
 005985A9    mov         dword ptr [ebp-4],eax
 005985AC    mov         eax,dword ptr [ebp-4]
 005985AF    call        TControl.Loaded
 005985B4    mov         eax,dword ptr [ebp-4]
 005985B7    mov         si,0FFC7
 005985BB    call        @CallDynaInst;TCustomLabel.sub_005985C4
 005985C0    pop         esi
 005985C1    pop         ecx
 005985C2    pop         ebp
 005985C3    ret
*}
end;

//005985C4
procedure TCustomLabel.sub_005985C4;
begin
{*
 005985C4    push        ebp
 005985C5    mov         ebp,esp
 005985C7    add         esp,0FFFFFFE0
 005985CA    push        ebx
 005985CB    push        esi
 005985CC    mov         dword ptr [ebp-4],eax
 005985CF    mov         eax,dword ptr [ebp-4]
 005985D2    test        byte ptr [eax+1C],2;TCustomLabel.FComponentState:TComponentState
>005985D6    jne         005986B1
 005985DC    mov         eax,dword ptr [ebp-4]
 005985DF    cmp         byte ptr [eax+16D],0;TCustomLabel.FAutoSize:Boolean
>005985E6    je          005986B1
 005985EC    lea         edx,[ebp-1D]
 005985EF    mov         eax,dword ptr [ebp-4]
 005985F2    mov         ecx,dword ptr [eax]
 005985F4    call        dword ptr [ecx+44];TCustomLabel.sub_005F2E9C
 005985F7    push        0
 005985F9    call        USER32.GetDC
 005985FE    mov         dword ptr [ebp-8],eax
 00598601    mov         edx,dword ptr [ebp-8]
 00598604    mov         eax,dword ptr [ebp-4]
 00598607    mov         eax,dword ptr [eax+160];TCustomLabel................................................FCan...
 0059860D    call        TCanvas.SetHandle
 00598612    mov         eax,dword ptr [ebp-4]
 00598615    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 0059861C    mov         cx,word ptr [eax*2+6E3A58]
 00598624    or          cx,440
 00598629    movzx       ecx,cx
 0059862C    lea         edx,[ebp-1D]
 0059862F    mov         eax,dword ptr [ebp-4]
 00598632    mov         si,0FFC6
 00598636    call        @CallDynaInst;TCustomLabel.sub_005982D4
 0059863B    xor         edx,edx
 0059863D    mov         eax,dword ptr [ebp-4]
 00598640    mov         eax,dword ptr [eax+160];TCustomLabel.................................................FCa...
 00598646    call        TCanvas.SetHandle
 0059864B    mov         eax,dword ptr [ebp-8]
 0059864E    push        eax
 0059864F    push        0
 00598651    call        USER32.ReleaseDC
 00598656    mov         eax,dword ptr [ebp-4]
 00598659    mov         eax,dword ptr [eax+40];TCustomLabel.Left:Integer
 0059865C    mov         dword ptr [ebp-0C],eax
 0059865F    mov         eax,dword ptr [ebp-4]
 00598662    mov         al,byte ptr [eax+16C];TCustomLabel.FAlignment:TAlignment
 00598668    mov         byte ptr [ebp-0D],al
 0059866B    mov         eax,dword ptr [ebp-4]
 0059866E    mov         si,0FFC8
 00598672    call        @CallDynaInst;TControl.sub_005F40CC
 00598677    test        al,al
>00598679    je          00598683
 0059867B    lea         eax,[ebp-0D]
 0059867E    call        005EF658
 00598683    cmp         byte ptr [ebp-0D],1
>00598687    jne         00598695
 00598689    mov         eax,dword ptr [ebp-4]
 0059868C    mov         eax,dword ptr [eax+48];TCustomLabel.Width:Integer
 0059868F    sub         eax,dword ptr [ebp-15]
 00598692    add         dword ptr [ebp-0C],eax
 00598695    mov         eax,dword ptr [ebp-15]
 00598698    push        eax
 00598699    mov         eax,dword ptr [ebp-11]
 0059869C    push        eax
 0059869D    mov         eax,dword ptr [ebp-4]
 005986A0    mov         ecx,dword ptr [eax+44];TCustomLabel.Top:Integer
 005986A3    mov         edx,dword ptr [ebp-0C]
 005986A6    mov         eax,dword ptr [ebp-4]
 005986A9    mov         ebx,dword ptr [eax]
 005986AB    call        dword ptr [ebx+84];TCustomLabel.sub_005F2870
 005986B1    pop         esi
 005986B2    pop         ebx
 005986B3    mov         esp,ebp
 005986B5    pop         ebp
 005986B6    ret
*}
end;

//005986B8
procedure TLabel.SetAlignment(Value:TAlignment);
begin
{*
 005986B8    push        ebp
 005986B9    mov         ebp,esp
 005986BB    add         esp,0FFFFFFF8
 005986BE    mov         byte ptr [ebp-5],dl
 005986C1    mov         dword ptr [ebp-4],eax
 005986C4    mov         eax,dword ptr [ebp-4]
 005986C7    mov         al,byte ptr [eax+16C];TLabel.FAlignment:TAlignment
 005986CD    cmp         al,byte ptr [ebp-5]
>005986D0    je          005986E6
 005986D2    mov         al,byte ptr [ebp-5]
 005986D5    mov         edx,dword ptr [ebp-4]
 005986D8    mov         byte ptr [edx+16C],al;TLabel.FAlignment:TAlignment
 005986DE    mov         eax,dword ptr [ebp-4]
 005986E1    mov         edx,dword ptr [eax]
 005986E3    call        dword ptr [edx+7C];TLabel.sub_005F3E48
 005986E6    pop         ecx
 005986E7    pop         ecx
 005986E8    pop         ebp
 005986E9    ret
*}
end;

//005986EC
procedure TLabel.SetAutoSize(Value:Boolean);
begin
{*
 005986EC    push        ebp
 005986ED    mov         ebp,esp
 005986EF    add         esp,0FFFFFFF8
 005986F2    push        esi
 005986F3    mov         byte ptr [ebp-5],dl
 005986F6    mov         dword ptr [ebp-4],eax
 005986F9    mov         eax,dword ptr [ebp-4]
 005986FC    mov         al,byte ptr [eax+16D];TLabel.FAutoSize:Boolean
 00598702    cmp         al,byte ptr [ebp-5]
>00598705    je          0059871F
 00598707    mov         al,byte ptr [ebp-5]
 0059870A    mov         edx,dword ptr [ebp-4]
 0059870D    mov         byte ptr [edx+16D],al;TLabel.FAutoSize:Boolean
 00598713    mov         eax,dword ptr [ebp-4]
 00598716    mov         si,0FFC7
 0059871A    call        @CallDynaInst;TCustomLabel.sub_005985C4
 0059871F    pop         esi
 00598720    pop         ecx
 00598721    pop         ecx
 00598722    pop         ebp
 00598723    ret
*}
end;

//00598724
{*function TLabel.GetTransparent:?;
begin
 00598724    push        ebp
 00598725    mov         ebp,esp
 00598727    add         esp,0FFFFFFF8
 0059872A    mov         dword ptr [ebp-4],eax
 0059872D    mov         eax,dword ptr [ebp-4]
 00598730    test        byte ptr [eax+50],40;TLabel.FControlStyle:TControlStyle
 00598734    setne       al
 00598737    xor         al,1
 00598739    mov         byte ptr [ebp-5],al
 0059873C    mov         al,byte ptr [ebp-5]
 0059873F    pop         ecx
 00598740    pop         ecx
 00598741    pop         ebp
 00598742    ret
end;*}

//00598744
procedure TLabel.SetFocusControl(Value:TWinControl);
begin
{*
 00598744    push        ebp
 00598745    mov         ebp,esp
 00598747    add         esp,0FFFFFFF8
 0059874A    mov         dword ptr [ebp-8],edx
 0059874D    mov         dword ptr [ebp-4],eax
 00598750    mov         eax,dword ptr [ebp-8]
 00598753    mov         edx,dword ptr [ebp-4]
 00598756    mov         dword ptr [edx+168],eax;TLabel.FFocusControl:TWinControl
 0059875C    cmp         dword ptr [ebp-8],0
>00598760    je          0059876D
 00598762    mov         edx,dword ptr [ebp-4]
 00598765    mov         eax,dword ptr [ebp-8]
 00598768    call        TComponent.FreeNotification
 0059876D    pop         ecx
 0059876E    pop         ecx
 0059876F    pop         ebp
 00598770    ret
*}
end;

//00598774
procedure TLabel.SetShowAccelChar(Value:Boolean);
begin
{*
 00598774    push        ebp
 00598775    mov         ebp,esp
 00598777    add         esp,0FFFFFFF8
 0059877A    mov         byte ptr [ebp-5],dl
 0059877D    mov         dword ptr [ebp-4],eax
 00598780    mov         eax,dword ptr [ebp-4]
 00598783    mov         al,byte ptr [eax+170];TLabel.FShowAccelChar:Boolean
 00598789    cmp         al,byte ptr [ebp-5]
>0059878C    je          005987A2
 0059878E    mov         al,byte ptr [ebp-5]
 00598791    mov         edx,dword ptr [ebp-4]
 00598794    mov         byte ptr [edx+170],al;TLabel.FShowAccelChar:Boolean
 0059879A    mov         eax,dword ptr [ebp-4]
 0059879D    mov         edx,dword ptr [eax]
 0059879F    call        dword ptr [edx+7C];TLabel.sub_005F3E48
 005987A2    pop         ecx
 005987A3    pop         ecx
 005987A4    pop         ebp
 005987A5    ret
*}
end;

//005987A8
procedure TLabel.SetTransparent(Value:Boolean);
begin
{*
 005987A8    push        ebp
 005987A9    mov         ebp,esp
 005987AB    add         esp,0FFFFFFF8
 005987AE    mov         byte ptr [ebp-5],dl
 005987B1    mov         dword ptr [ebp-4],eax
 005987B4    mov         eax,dword ptr [ebp-4]
 005987B7    call        TLabel.GetTransparent
 005987BC    cmp         al,byte ptr [ebp-5]
>005987BF    je          005987F5
 005987C1    cmp         byte ptr [ebp-5],0
>005987C5    je          005987DC
 005987C7    mov         eax,[005987FC];0x40 gvar_005987FC
 005987CC    mov         edx,dword ptr [ebp-4]
 005987CF    not         eax
 005987D1    and         eax,dword ptr [edx+50];TLabel.FControlStyle:TControlStyle
 005987D4    mov         edx,dword ptr [ebp-4]
 005987D7    mov         dword ptr [edx+50],eax;TLabel.FControlStyle:TControlStyle
>005987DA    jmp         005987ED
 005987DC    mov         eax,[005987FC];0x40 gvar_005987FC
 005987E1    mov         edx,dword ptr [ebp-4]
 005987E4    or          eax,dword ptr [edx+50];TLabel.FControlStyle:TControlStyle
 005987E7    mov         edx,dword ptr [ebp-4]
 005987EA    mov         dword ptr [edx+50],eax;TLabel.FControlStyle:TControlStyle
 005987ED    mov         eax,dword ptr [ebp-4]
 005987F0    mov         edx,dword ptr [eax]
 005987F2    call        dword ptr [edx+7C];TLabel.sub_005F3E48
 005987F5    pop         ecx
 005987F6    pop         ecx
 005987F7    pop         ebp
 005987F8    ret
*}
end;

//00598800
procedure TLabel.SetLayout(Value:TTextLayout);
begin
{*
 00598800    push        ebp
 00598801    mov         ebp,esp
 00598803    add         esp,0FFFFFFF8
 00598806    mov         byte ptr [ebp-5],dl
 00598809    mov         dword ptr [ebp-4],eax
 0059880C    mov         eax,dword ptr [ebp-4]
 0059880F    mov         al,byte ptr [eax+16E];TLabel.FLayout:TTextLayout
 00598815    cmp         al,byte ptr [ebp-5]
>00598818    je          0059882E
 0059881A    mov         al,byte ptr [ebp-5]
 0059881D    mov         edx,dword ptr [ebp-4]
 00598820    mov         byte ptr [edx+16E],al;TLabel.FLayout:TTextLayout
 00598826    mov         eax,dword ptr [ebp-4]
 00598829    mov         edx,dword ptr [eax]
 0059882B    call        dword ptr [edx+7C];TLabel.sub_005F3E48
 0059882E    pop         ecx
 0059882F    pop         ecx
 00598830    pop         ebp
 00598831    ret
*}
end;

//00598834
procedure TLabel.SetWordWrap(Value:Boolean);
begin
{*
 00598834    push        ebp
 00598835    mov         ebp,esp
 00598837    add         esp,0FFFFFFF8
 0059883A    push        esi
 0059883B    mov         byte ptr [ebp-5],dl
 0059883E    mov         dword ptr [ebp-4],eax
 00598841    mov         eax,dword ptr [ebp-4]
 00598844    mov         al,byte ptr [eax+16F];TLabel.FWordWrap:Boolean
 0059884A    cmp         al,byte ptr [ebp-5]
>0059884D    je          0059886F
 0059884F    mov         al,byte ptr [ebp-5]
 00598852    mov         edx,dword ptr [ebp-4]
 00598855    mov         byte ptr [edx+16F],al;TLabel.FWordWrap:Boolean
 0059885B    mov         eax,dword ptr [ebp-4]
 0059885E    mov         si,0FFC7
 00598862    call        @CallDynaInst;TCustomLabel.sub_005985C4
 00598867    mov         eax,dword ptr [ebp-4]
 0059886A    mov         edx,dword ptr [eax]
 0059886C    call        dword ptr [edx+7C];TLabel.sub_005F3E48
 0059886F    pop         esi
 00598870    pop         ecx
 00598871    pop         ecx
 00598872    pop         ebp
 00598873    ret
*}
end;

//00598874
procedure TCustomLabel.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00598874    push        ebp
 00598875    mov         ebp,esp
 00598877    add         esp,0FFFFFFF4
 0059887A    mov         byte ptr [ebp-9],cl
 0059887D    mov         dword ptr [ebp-8],edx
 00598880    mov         dword ptr [ebp-4],eax
 00598883    mov         cl,byte ptr [ebp-9]
 00598886    mov         edx,dword ptr [ebp-8]
 00598889    mov         eax,dword ptr [ebp-4]
 0059888C    call        TControl.Notification
 00598891    cmp         byte ptr [ebp-9],1
>00598895    jne         005988B0
 00598897    mov         eax,dword ptr [ebp-8]
 0059889A    mov         edx,dword ptr [ebp-4]
 0059889D    cmp         eax,dword ptr [edx+168];TCustomLabel.FFocusControl:TWinControl
>005988A3    jne         005988B0
 005988A5    mov         eax,dword ptr [ebp-4]
 005988A8    xor         edx,edx
 005988AA    mov         dword ptr [eax+168],edx;TCustomLabel.FFocusControl:TWinControl
 005988B0    mov         esp,ebp
 005988B2    pop         ebp
 005988B3    ret
*}
end;

//005988B4
{*procedure TCustomLabel.CMTextChanged(?:?);
begin
 005988B4    push        ebp
 005988B5    mov         ebp,esp
 005988B7    add         esp,0FFFFFFF8
 005988BA    push        esi
 005988BB    mov         dword ptr [ebp-8],edx
 005988BE    mov         dword ptr [ebp-4],eax
 005988C1    mov         eax,dword ptr [ebp-4]
 005988C4    mov         edx,dword ptr [eax]
 005988C6    call        dword ptr [edx+7C];TCustomLabel.sub_005F3E48
 005988C9    mov         eax,dword ptr [ebp-4]
 005988CC    mov         si,0FFC7
 005988D0    call        @CallDynaInst;TCustomLabel.sub_005985C4
 005988D5    pop         esi
 005988D6    pop         ecx
 005988D7    pop         ecx
 005988D8    pop         ebp
 005988D9    ret
end;*}

//005988DC
{*procedure TCustomLabel.CMFontChanged(?:?);
begin
 005988DC    push        ebp
 005988DD    mov         ebp,esp
 005988DF    add         esp,0FFFFFFF8
 005988E2    push        esi
 005988E3    mov         dword ptr [ebp-8],edx
 005988E6    mov         dword ptr [ebp-4],eax
 005988E9    mov         edx,dword ptr [ebp-8]
 005988EC    mov         eax,dword ptr [ebp-4]
 005988EF    call        TControl.CMFontChanged
 005988F4    mov         eax,dword ptr [ebp-4]
 005988F7    mov         si,0FFC7
 005988FB    call        @CallDynaInst;TCustomLabel.sub_005985C4
 00598900    pop         esi
 00598901    pop         ecx
 00598902    pop         ecx
 00598903    pop         ebp
 00598904    ret
end;*}

//00598908
{*procedure TCustomLabel.CMDialogChar(?:?);
begin
 00598908    push        ebp
 00598909    mov         ebp,esp
 0059890B    add         esp,0FFFFFFF0
 0059890E    push        esi
 0059890F    xor         ecx,ecx
 00598911    mov         dword ptr [ebp-10],ecx
 00598914    mov         dword ptr [ebp-8],edx
 00598917    mov         dword ptr [ebp-4],eax
 0059891A    xor         eax,eax
 0059891C    push        ebp
 0059891D    push        5989B1
 00598922    push        dword ptr fs:[eax]
 00598925    mov         dword ptr fs:[eax],esp
 00598928    mov         eax,dword ptr [ebp-4]
 0059892B    cmp         dword ptr [eax+168],0;TCustomLabel.FFocusControl:TWinControl
>00598932    je          0059899B
 00598934    mov         eax,dword ptr [ebp-4]
 00598937    mov         edx,dword ptr [eax]
 00598939    call        dword ptr [edx+50];TCCalendar.GetEnabled
 0059893C    test        al,al
>0059893E    je          0059899B
 00598940    mov         eax,dword ptr [ebp-4]
 00598943    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>0059894A    je          0059899B
 0059894C    lea         edx,[ebp-10]
 0059894F    mov         eax,dword ptr [ebp-4]
 00598952    call        TTabPage.GetCaption
 00598957    mov         edx,dword ptr [ebp-10]
 0059895A    mov         eax,dword ptr [ebp-8]
 0059895D    mov         ax,word ptr [eax+4]
 00598961    call        005CCFE8
 00598966    test        al,al
>00598968    je          0059899B
 0059896A    mov         eax,dword ptr [ebp-4]
 0059896D    mov         eax,dword ptr [eax+168];TCustomLabel.FFocusControl:TWinControl
 00598973    mov         dword ptr [ebp-0C],eax
 00598976    mov         eax,dword ptr [ebp-0C]
 00598979    mov         si,0FFB8
 0059897D    call        @CallDynaInst;TWinControl.sub_005FBF90
 00598982    test        al,al
>00598984    je          0059899B
 00598986    mov         eax,dword ptr [ebp-0C]
 00598989    mov         edx,dword ptr [eax]
 0059898B    call        dword ptr [edx+0C0];TWinControl.sub_005FBFF0
 00598991    mov         eax,dword ptr [ebp-8]
 00598994    mov         dword ptr [eax+0C],1
 0059899B    xor         eax,eax
 0059899D    pop         edx
 0059899E    pop         ecx
 0059899F    pop         ecx
 005989A0    mov         dword ptr fs:[eax],edx
 005989A3    push        5989B8
 005989A8    lea         eax,[ebp-10]
 005989AB    call        @LStrClr
 005989B0    ret
>005989B1    jmp         @HandleFinally
>005989B6    jmp         005989A8
 005989B8    pop         esi
 005989B9    mov         esp,ebp
 005989BB    pop         ebp
 005989BC    ret
end;*}

//005989C0
{*procedure TCustomLabel.CMMouseEnter(?:?);
begin
 005989C0    push        ebp
 005989C1    mov         ebp,esp
 005989C3    add         esp,0FFFFFFF8
 005989C6    push        ebx
 005989C7    mov         dword ptr [ebp-8],edx
 005989CA    mov         dword ptr [ebp-4],eax
 005989CD    mov         edx,dword ptr [ebp-8]
 005989D0    mov         eax,dword ptr [ebp-4]
 005989D3    call        TControl.CMMouseEnter
 005989D8    mov         eax,dword ptr [ebp-4]
 005989DB    cmp         word ptr [eax+182],0;TCustomLabel.?f182:word
>005989E3    je          005989F7
 005989E5    mov         ebx,dword ptr [ebp-4]
 005989E8    mov         edx,dword ptr [ebp-4]
 005989EB    mov         eax,dword ptr [ebx+184];TCustomLabel.?f184:dword
 005989F1    call        dword ptr [ebx+180];TCustomLabel.FOnMouseEnter
 005989F7    pop         ebx
 005989F8    pop         ecx
 005989F9    pop         ecx
 005989FA    pop         ebp
 005989FB    ret
end;*}

//005989FC
procedure TCustomLabel.CMMouseLeave(Message:TMessage);
begin
{*
 005989FC    push        ebp
 005989FD    mov         ebp,esp
 005989FF    add         esp,0FFFFFFF8
 00598A02    push        ebx
 00598A03    mov         dword ptr [ebp-8],edx
 00598A06    mov         dword ptr [ebp-4],eax
 00598A09    mov         edx,dword ptr [ebp-8]
 00598A0C    mov         eax,dword ptr [ebp-4]
 00598A0F    call        TControl.CMMouseLeave
 00598A14    mov         eax,dword ptr [ebp-4]
 00598A17    cmp         word ptr [eax+17A],0;TCustomLabel.?f17A:word
>00598A1F    je          00598A33
 00598A21    mov         ebx,dword ptr [ebp-4]
 00598A24    mov         edx,dword ptr [ebp-4]
 00598A27    mov         eax,dword ptr [ebx+17C];TCustomLabel.?f17C:dword
 00598A2D    call        dword ptr [ebx+178];TCustomLabel.FOnMouseLeave
 00598A33    pop         ebx
 00598A34    pop         ecx
 00598A35    pop         ecx
 00598A36    pop         ebp
 00598A37    ret
*}
end;

//00598A38
constructor TCustomEdit.Create(AOwner:TComponent);
begin
{*
 00598A38    push        ebp
 00598A39    mov         ebp,esp
 00598A3B    add         esp,0FFFFFFF4
 00598A3E    test        dl,dl
>00598A40    je          00598A4A
 00598A42    add         esp,0FFFFFFF0
 00598A45    call        @ClassCreate
 00598A4A    mov         dword ptr [ebp-0C],ecx
 00598A4D    mov         byte ptr [ebp-5],dl
 00598A50    mov         dword ptr [ebp-4],eax
 00598A53    mov         ecx,dword ptr [ebp-0C]
 00598A56    xor         edx,edx
 00598A58    mov         eax,dword ptr [ebp-4]
 00598A5B    call        TWinControl.Create
 00598A60    mov         eax,[006E9DD8];^gvar_006ECDE0
 00598A65    cmp         byte ptr [eax],0
>00598A68    je          00598A78
 00598A6A    mov         eax,dword ptr [ebp-4]
 00598A6D    mov         edx,dword ptr ds:[598B04];0x2A8 gvar_00598B04
 00598A73    mov         dword ptr [eax+50],edx;TCustomEdit.FControlStyle:TControlStyle
>00598A76    jmp         00598A84
 00598A78    mov         eax,dword ptr [ebp-4]
 00598A7B    mov         edx,dword ptr ds:[598B08];0x2B8 gvar_00598B08
 00598A81    mov         dword ptr [eax+50],edx;TCustomEdit.FControlStyle:TControlStyle
 00598A84    mov         edx,79
 00598A89    mov         eax,dword ptr [ebp-4]
 00598A8C    call        TControl.SetWidth
 00598A91    mov         edx,19
 00598A96    mov         eax,dword ptr [ebp-4]
 00598A99    call        TControl.SetHeight
 00598A9E    mov         dl,1
 00598AA0    mov         eax,dword ptr [ebp-4]
 00598AA3    call        TCCalendar.SetTabStop
 00598AA8    xor         edx,edx
 00598AAA    mov         eax,dword ptr [ebp-4]
 00598AAD    call        TCCalendar.SetParentColor
 00598AB2    mov         eax,dword ptr [ebp-4]
 00598AB5    mov         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
 00598ABC    mov         eax,dword ptr [ebp-4]
 00598ABF    mov         byte ptr [eax+20F],1;TCustomEdit.FAutoSize:Boolean
 00598AC6    mov         eax,dword ptr [ebp-4]
 00598AC9    mov         byte ptr [eax+210],1;TCustomEdit.FAutoSelect:Boolean
 00598AD0    mov         eax,dword ptr [ebp-4]
 00598AD3    mov         byte ptr [eax+211],1;TCustomEdit.FHideSelection:Boolean
 00598ADA    mov         eax,dword ptr [ebp-4]
 00598ADD    call        00599454
 00598AE2    mov         eax,dword ptr [ebp-4]
 00598AE5    cmp         byte ptr [ebp-5],0
>00598AE9    je          00598AFA
 00598AEB    call        @AfterConstruction
 00598AF0    pop         dword ptr fs:[0]
 00598AF7    add         esp,0C
 00598AFA    mov         eax,dword ptr [ebp-4]
 00598AFD    mov         esp,ebp
 00598AFF    pop         ebp
 00598B00    ret
*}
end;

//00598B0C
{*procedure sub_00598B0C(?:?);
begin
 00598B0C    push        ebp
 00598B0D    mov         ebp,esp
 00598B0F    add         esp,0FFFFFFF8
 00598B12    mov         dword ptr [ebp-8],edx
 00598B15    mov         dword ptr [ebp-4],eax
 00598B18    push        0
 00598B1A    mov         eax,dword ptr [ebp-8]
 00598B1D    push        eax
 00598B1E    push        0C5
 00598B23    mov         eax,dword ptr [ebp-4]
 00598B26    call        TWinControl.GetHandle
 00598B2B    push        eax
 00598B2C    call        USER32.SendMessageA
 00598B31    pop         ecx
 00598B32    pop         ecx
 00598B33    pop         ebp
 00598B34    ret
end;*}

//00598B38
procedure TCSpinEdit.SetAutoSize(Value:bool);
begin
{*
 00598B38    push        ebp
 00598B39    mov         ebp,esp
 00598B3B    add         esp,0FFFFFFF8
 00598B3E    mov         byte ptr [ebp-5],dl
 00598B41    mov         dword ptr [ebp-4],eax
 00598B44    mov         eax,dword ptr [ebp-4]
 00598B47    mov         al,byte ptr [eax+20F];TCSpinEdit.FAutoSize:Boolean
 00598B4D    cmp         al,byte ptr [ebp-5]
>00598B50    je          00598B66
 00598B52    mov         al,byte ptr [ebp-5]
 00598B55    mov         edx,dword ptr [ebp-4]
 00598B58    mov         byte ptr [edx+20F],al;TCSpinEdit.FAutoSize:Boolean
 00598B5E    mov         eax,dword ptr [ebp-4]
 00598B61    call        TCustomEdit.UpdateHeight
 00598B66    pop         ecx
 00598B67    pop         ecx
 00598B68    pop         ebp
 00598B69    ret
*}
end;

//00598B6C
procedure TMemo.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00598B6C    push        ebp
 00598B6D    mov         ebp,esp
 00598B6F    add         esp,0FFFFFFF8
 00598B72    mov         byte ptr [ebp-5],dl
 00598B75    mov         dword ptr [ebp-4],eax
 00598B78    mov         eax,dword ptr [ebp-4]
 00598B7B    mov         al,byte ptr [eax+20C];TMemo.FBorderStyle:TBorderStyle
 00598B81    cmp         al,byte ptr [ebp-5]
>00598B84    je          00598BA2
 00598B86    mov         al,byte ptr [ebp-5]
 00598B89    mov         edx,dword ptr [ebp-4]
 00598B8C    mov         byte ptr [edx+20C],al;TMemo.FBorderStyle:TBorderStyle
 00598B92    mov         eax,dword ptr [ebp-4]
 00598B95    call        TCustomEdit.UpdateHeight
 00598B9A    mov         eax,dword ptr [ebp-4]
 00598B9D    call        TWinControl.RecreateWnd
 00598BA2    pop         ecx
 00598BA3    pop         ecx
 00598BA4    pop         ebp
 00598BA5    ret
*}
end;

//00598BA8
procedure TEdit.SetCharCase(Value:TEditCharCase);
begin
{*
 00598BA8    push        ebp
 00598BA9    mov         ebp,esp
 00598BAB    add         esp,0FFFFFFF8
 00598BAE    mov         byte ptr [ebp-5],dl
 00598BB1    mov         dword ptr [ebp-4],eax
 00598BB4    mov         eax,dword ptr [ebp-4]
 00598BB7    mov         al,byte ptr [eax+213];TEdit.FCharCase:TEditCharCase
 00598BBD    cmp         al,byte ptr [ebp-5]
>00598BC0    je          00598BD6
 00598BC2    mov         al,byte ptr [ebp-5]
 00598BC5    mov         edx,dword ptr [ebp-4]
 00598BC8    mov         byte ptr [edx+213],al;TEdit.FCharCase:TEditCharCase
 00598BCE    mov         eax,dword ptr [ebp-4]
 00598BD1    call        TWinControl.RecreateWnd
 00598BD6    pop         ecx
 00598BD7    pop         ecx
 00598BD8    pop         ebp
 00598BD9    ret
*}
end;

//00598BDC
procedure TMemo.SetHideSelection(Value:Boolean);
begin
{*
 00598BDC    push        ebp
 00598BDD    mov         ebp,esp
 00598BDF    add         esp,0FFFFFFF8
 00598BE2    mov         byte ptr [ebp-5],dl
 00598BE5    mov         dword ptr [ebp-4],eax
 00598BE8    mov         eax,dword ptr [ebp-4]
 00598BEB    mov         al,byte ptr [eax+211];TMemo.FHideSelection:Boolean
 00598BF1    cmp         al,byte ptr [ebp-5]
>00598BF4    je          00598C0A
 00598BF6    mov         al,byte ptr [ebp-5]
 00598BF9    mov         edx,dword ptr [ebp-4]
 00598BFC    mov         byte ptr [edx+211],al;TMemo.FHideSelection:Boolean
 00598C02    mov         eax,dword ptr [ebp-4]
 00598C05    call        TWinControl.RecreateWnd
 00598C0A    pop         ecx
 00598C0B    pop         ecx
 00598C0C    pop         ebp
 00598C0D    ret
*}
end;

//00598C10
procedure TMemo.SetMaxLength(Value:Integer);
begin
{*
 00598C10    push        ebp
 00598C11    mov         ebp,esp
 00598C13    add         esp,0FFFFFFF8
 00598C16    mov         dword ptr [ebp-8],edx
 00598C19    mov         dword ptr [ebp-4],eax
 00598C1C    mov         eax,dword ptr [ebp-4]
 00598C1F    mov         eax,dword ptr [eax+208];TMemo.FMaxLength:Integer
 00598C25    cmp         eax,dword ptr [ebp-8]
>00598C28    je          00598C50
 00598C2A    mov         eax,dword ptr [ebp-8]
 00598C2D    mov         edx,dword ptr [ebp-4]
 00598C30    mov         dword ptr [edx+208],eax;TMemo.FMaxLength:Integer
 00598C36    mov         eax,dword ptr [ebp-4]
 00598C39    call        TWinControl.HandleAllocated
 00598C3E    test        al,al
>00598C40    je          00598C50
 00598C42    mov         edx,dword ptr [ebp-8]
 00598C45    mov         eax,dword ptr [ebp-4]
 00598C48    mov         ecx,dword ptr [eax]
 00598C4A    call        dword ptr [ecx+0C4];TMemo.sub_00598B0C
 00598C50    pop         ecx
 00598C51    pop         ecx
 00598C52    pop         ebp
 00598C53    ret
*}
end;

//00598C54
procedure TMemo.SetOEMConvert(Value:Boolean);
begin
{*
 00598C54    push        ebp
 00598C55    mov         ebp,esp
 00598C57    add         esp,0FFFFFFF8
 00598C5A    mov         byte ptr [ebp-5],dl
 00598C5D    mov         dword ptr [ebp-4],eax
 00598C60    mov         eax,dword ptr [ebp-4]
 00598C63    mov         al,byte ptr [eax+212];TMemo.FOEMConvert:Boolean
 00598C69    cmp         al,byte ptr [ebp-5]
>00598C6C    je          00598C82
 00598C6E    mov         al,byte ptr [ebp-5]
 00598C71    mov         edx,dword ptr [ebp-4]
 00598C74    mov         byte ptr [edx+212],al;TMemo.FOEMConvert:Boolean
 00598C7A    mov         eax,dword ptr [ebp-4]
 00598C7D    call        TWinControl.RecreateWnd
 00598C82    pop         ecx
 00598C83    pop         ecx
 00598C84    pop         ebp
 00598C85    ret
*}
end;

//00598C88
function TCustomEdit.GetModified:Boolean;
begin
{*
 00598C88    push        ebp
 00598C89    mov         ebp,esp
 00598C8B    add         esp,0FFFFFFF8
 00598C8E    mov         dword ptr [ebp-4],eax
 00598C91    mov         eax,dword ptr [ebp-4]
 00598C94    mov         al,byte ptr [eax+215]
 00598C9A    mov         byte ptr [ebp-5],al
 00598C9D    mov         eax,dword ptr [ebp-4]
 00598CA0    call        TWinControl.HandleAllocated
 00598CA5    test        al,al
>00598CA7    je          00598CC6
 00598CA9    push        0
 00598CAB    push        0
 00598CAD    push        0B8
 00598CB2    mov         eax,dword ptr [ebp-4]
 00598CB5    call        TWinControl.GetHandle
 00598CBA    push        eax
 00598CBB    call        USER32.SendMessageA
 00598CC0    test        eax,eax
 00598CC2    setne       byte ptr [ebp-5]
 00598CC6    mov         al,byte ptr [ebp-5]
 00598CC9    pop         ecx
 00598CCA    pop         ecx
 00598CCB    pop         ebp
 00598CCC    ret
*}
end;

//00598CD0
{*function sub_00598CD0(?:?):?;
begin
 00598CD0    push        ebp
 00598CD1    mov         ebp,esp
 00598CD3    add         esp,0FFFFFFF8
 00598CD6    mov         dword ptr [ebp-4],eax
 00598CD9    mov         byte ptr [ebp-5],0
 00598CDD    mov         eax,dword ptr [ebp-4]
 00598CE0    call        TWinControl.HandleAllocated
 00598CE5    test        al,al
>00598CE7    je          00598D06
 00598CE9    push        0
 00598CEB    push        0
 00598CED    push        0C6
 00598CF2    mov         eax,dword ptr [ebp-4]
 00598CF5    call        TWinControl.GetHandle
 00598CFA    push        eax
 00598CFB    call        USER32.SendMessageA
 00598D00    test        eax,eax
 00598D02    setne       byte ptr [ebp-5]
 00598D06    mov         al,byte ptr [ebp-5]
 00598D09    pop         ecx
 00598D0A    pop         ecx
 00598D0B    pop         ebp
 00598D0C    ret
end;*}

//00598D10
procedure TCustomEdit.SetModified(Value:Boolean);
begin
{*
 00598D10    push        ebp
 00598D11    mov         ebp,esp
 00598D13    add         esp,0FFFFFFF8
 00598D16    mov         byte ptr [ebp-5],dl
 00598D19    mov         dword ptr [ebp-4],eax
 00598D1C    mov         eax,dword ptr [ebp-4]
 00598D1F    call        TWinControl.HandleAllocated
 00598D24    test        al,al
>00598D26    je          00598D45
 00598D28    push        0
 00598D2A    xor         eax,eax
 00598D2C    mov         al,byte ptr [ebp-5]
 00598D2F    push        eax
 00598D30    push        0B9
 00598D35    mov         eax,dword ptr [ebp-4]
 00598D38    call        TWinControl.GetHandle
 00598D3D    push        eax
 00598D3E    call        USER32.SendMessageA
>00598D43    jmp         00598D51
 00598D45    mov         al,byte ptr [ebp-5]
 00598D48    mov         edx,dword ptr [ebp-4]
 00598D4B    mov         byte ptr [edx+215],al
 00598D51    pop         ecx
 00598D52    pop         ecx
 00598D53    pop         ebp
 00598D54    ret
*}
end;

//00598D58
procedure TEdit.SetPasswordChar(Value:Char);
begin
{*
 00598D58    push        ebp
 00598D59    mov         ebp,esp
 00598D5B    add         esp,0FFFFFFF4
 00598D5E    xor         ecx,ecx
 00598D60    mov         dword ptr [ebp-0C],ecx
 00598D63    mov         byte ptr [ebp-5],dl
 00598D66    mov         dword ptr [ebp-4],eax
 00598D69    xor         eax,eax
 00598D6B    push        ebp
 00598D6C    push        598DF0
 00598D71    push        dword ptr fs:[eax]
 00598D74    mov         dword ptr fs:[eax],esp
 00598D77    mov         eax,dword ptr [ebp-4]
 00598D7A    mov         al,byte ptr [eax+20D];TEdit.FPasswordChar:Char
 00598D80    cmp         al,byte ptr [ebp-5]
>00598D83    je          00598DDA
 00598D85    mov         al,byte ptr [ebp-5]
 00598D88    mov         edx,dword ptr [ebp-4]
 00598D8B    mov         byte ptr [edx+20D],al;TEdit.FPasswordChar:Char
 00598D91    mov         eax,dword ptr [ebp-4]
 00598D94    call        TWinControl.HandleAllocated
 00598D99    test        al,al
>00598D9B    je          00598DDA
 00598D9D    push        0
 00598D9F    mov         eax,dword ptr [ebp-4]
 00598DA2    movzx       eax,byte ptr [eax+20D];TEdit.FPasswordChar:Char
 00598DA9    push        eax
 00598DAA    push        0CC
 00598DAF    mov         eax,dword ptr [ebp-4]
 00598DB2    call        TWinControl.GetHandle
 00598DB7    push        eax
 00598DB8    call        USER32.SendMessageA
 00598DBD    lea         edx,[ebp-0C]
 00598DC0    mov         eax,dword ptr [ebp-4]
 00598DC3    call        TTabPage.GetCaption
 00598DC8    mov         eax,dword ptr [ebp-0C]
 00598DCB    call        @LStrToPChar
 00598DD0    mov         edx,eax
 00598DD2    mov         eax,dword ptr [ebp-4]
 00598DD5    call        005F36C8
 00598DDA    xor         eax,eax
 00598DDC    pop         edx
 00598DDD    pop         ecx
 00598DDE    pop         ecx
 00598DDF    mov         dword ptr fs:[eax],edx
 00598DE2    push        598DF7
 00598DE7    lea         eax,[ebp-0C]
 00598DEA    call        @LStrClr
 00598DEF    ret
>00598DF0    jmp         @HandleFinally
>00598DF5    jmp         00598DE7
 00598DF7    mov         esp,ebp
 00598DF9    pop         ebp
 00598DFA    ret
*}
end;

//00598DFC
procedure TCSpinEdit.SetReadOnly(Value:bool);
begin
{*
 00598DFC    push        ebp
 00598DFD    mov         ebp,esp
 00598DFF    add         esp,0FFFFFFF8
 00598E02    mov         byte ptr [ebp-5],dl
 00598E05    mov         dword ptr [ebp-4],eax
 00598E08    mov         eax,dword ptr [ebp-4]
 00598E0B    mov         al,byte ptr [eax+20E];TCSpinEdit.FReadOnly:Boolean
 00598E11    cmp         al,byte ptr [ebp-5]
>00598E14    je          00598E49
 00598E16    mov         al,byte ptr [ebp-5]
 00598E19    mov         edx,dword ptr [ebp-4]
 00598E1C    mov         byte ptr [edx+20E],al;TCSpinEdit.FReadOnly:Boolean
 00598E22    mov         eax,dword ptr [ebp-4]
 00598E25    call        TWinControl.HandleAllocated
 00598E2A    test        al,al
>00598E2C    je          00598E49
 00598E2E    push        0
 00598E30    xor         eax,eax
 00598E32    mov         al,byte ptr [ebp-5]
 00598E35    push        eax
 00598E36    push        0CF
 00598E3B    mov         eax,dword ptr [ebp-4]
 00598E3E    call        TWinControl.GetHandle
 00598E43    push        eax
 00598E44    call        USER32.SendMessageA
 00598E49    pop         ecx
 00598E4A    pop         ecx
 00598E4B    pop         ebp
 00598E4C    ret
*}
end;

//00598E50
{*function sub_00598E50:?;
begin
 00598E50    push        ebp
 00598E51    mov         ebp,esp
 00598E53    add         esp,0FFFFFFF8
 00598E56    mov         dword ptr [ebp-4],eax
 00598E59    push        0
 00598E5B    lea         eax,[ebp-8]
 00598E5E    push        eax
 00598E5F    push        0B0
 00598E64    mov         eax,dword ptr [ebp-4]
 00598E67    call        TWinControl.GetHandle
 00598E6C    push        eax
 00598E6D    call        USER32.SendMessageA
 00598E72    mov         eax,dword ptr [ebp-8]
 00598E75    pop         ecx
 00598E76    pop         ecx
 00598E77    pop         ebp
 00598E78    ret
end;*}

//00598E7C
{*procedure sub_00598E7C(?:?);
begin
 00598E7C    push        ebp
 00598E7D    mov         ebp,esp
 00598E7F    add         esp,0FFFFFFF8
 00598E82    mov         dword ptr [ebp-8],edx
 00598E85    mov         dword ptr [ebp-4],eax
 00598E88    mov         eax,dword ptr [ebp-8]
 00598E8B    push        eax
 00598E8C    mov         eax,dword ptr [ebp-8]
 00598E8F    push        eax
 00598E90    push        0B1
 00598E95    mov         eax,dword ptr [ebp-4]
 00598E98    call        TWinControl.GetHandle
 00598E9D    push        eax
 00598E9E    call        USER32.SendMessageA
 00598EA3    pop         ecx
 00598EA4    pop         ecx
 00598EA5    pop         ebp
 00598EA6    ret
end;*}

//00598EA8
{*function sub_00598EA8:?;
begin
 00598EA8    push        ebp
 00598EA9    mov         ebp,esp
 00598EAB    add         esp,0FFFFFFF0
 00598EAE    mov         dword ptr [ebp-4],eax
 00598EB1    lea         eax,[ebp-0C]
 00598EB4    push        eax
 00598EB5    lea         eax,[ebp-10]
 00598EB8    push        eax
 00598EB9    push        0B0
 00598EBE    mov         eax,dword ptr [ebp-4]
 00598EC1    call        TWinControl.GetHandle
 00598EC6    push        eax
 00598EC7    call        USER32.SendMessageA
 00598ECC    mov         eax,dword ptr [ebp-0C]
 00598ECF    sub         eax,dword ptr [ebp-10]
 00598ED2    mov         dword ptr [ebp-8],eax
 00598ED5    mov         eax,dword ptr [ebp-8]
 00598ED8    mov         esp,ebp
 00598EDA    pop         ebp
 00598EDB    ret
end;*}

//00598EDC
{*procedure sub_00598EDC(?:?);
begin
 00598EDC    push        ebp
 00598EDD    mov         ebp,esp
 00598EDF    add         esp,0FFFFFFF0
 00598EE2    mov         dword ptr [ebp-8],edx
 00598EE5    mov         dword ptr [ebp-4],eax
 00598EE8    lea         eax,[ebp-0C]
 00598EEB    push        eax
 00598EEC    lea         eax,[ebp-10]
 00598EEF    push        eax
 00598EF0    push        0B0
 00598EF5    mov         eax,dword ptr [ebp-4]
 00598EF8    call        TWinControl.GetHandle
 00598EFD    push        eax
 00598EFE    call        USER32.SendMessageA
 00598F03    mov         eax,dword ptr [ebp-10]
 00598F06    add         eax,dword ptr [ebp-8]
 00598F09    mov         dword ptr [ebp-0C],eax
 00598F0C    mov         eax,dword ptr [ebp-0C]
 00598F0F    push        eax
 00598F10    mov         eax,dword ptr [ebp-10]
 00598F13    push        eax
 00598F14    push        0B1
 00598F19    mov         eax,dword ptr [ebp-4]
 00598F1C    call        TWinControl.GetHandle
 00598F21    push        eax
 00598F22    call        USER32.SendMessageA
 00598F27    push        0
 00598F29    push        0
 00598F2B    push        0B7
 00598F30    mov         eax,dword ptr [ebp-4]
 00598F33    call        TWinControl.GetHandle
 00598F38    push        eax
 00598F39    call        USER32.SendMessageA
 00598F3E    mov         esp,ebp
 00598F40    pop         ebp
 00598F41    ret
end;*}

//00598F44
procedure sub_00598F44;
begin
{*
 00598F44    push        ebp
 00598F45    mov         ebp,esp
 00598F47    push        ecx
 00598F48    mov         dword ptr [ebp-4],eax
 00598F4B    push        598F64
 00598F50    mov         eax,dword ptr [ebp-4]
 00598F53    call        TWinControl.GetHandle
 00598F58    push        eax
 00598F59    call        USER32.SetWindowTextA
 00598F5E    pop         ecx
 00598F5F    pop         ebp
 00598F60    ret
*}
end;

//00598F68
{*procedure sub_00598F68(?:?);
begin
 00598F68    push        ebp
 00598F69    mov         ebp,esp
 00598F6B    push        ecx
 00598F6C    mov         dword ptr [ebp-4],eax
 00598F6F    push        0
 00598F71    push        0
 00598F73    push        303
 00598F78    mov         eax,dword ptr [ebp-4]
 00598F7B    call        TWinControl.GetHandle
 00598F80    push        eax
 00598F81    call        USER32.SendMessageA
 00598F86    pop         ecx
 00598F87    pop         ebp
 00598F88    ret
end;*}

//00598F8C
procedure sub_00598F8C(?:TCustomMaskEdit);
begin
{*
 00598F8C    push        ebp
 00598F8D    mov         ebp,esp
 00598F8F    push        ecx
 00598F90    mov         dword ptr [ebp-4],eax
 00598F93    push        0
 00598F95    push        0
 00598F97    push        301
 00598F9C    mov         eax,dword ptr [ebp-4]
 00598F9F    call        TWinControl.GetHandle
 00598FA4    push        eax
 00598FA5    call        USER32.SendMessageA
 00598FAA    pop         ecx
 00598FAB    pop         ebp
 00598FAC    ret
*}
end;

//00598FB0
{*procedure sub_00598FB0(?:?);
begin
 00598FB0    push        ebp
 00598FB1    mov         ebp,esp
 00598FB3    push        ecx
 00598FB4    mov         dword ptr [ebp-4],eax
 00598FB7    push        0
 00598FB9    push        0
 00598FBB    push        300
 00598FC0    mov         eax,dword ptr [ebp-4]
 00598FC3    call        TWinControl.GetHandle
 00598FC8    push        eax
 00598FC9    call        USER32.SendMessageA
 00598FCE    pop         ecx
 00598FCF    pop         ebp
 00598FD0    ret
end;*}

//00598FD4
{*procedure sub_00598FD4(?:?);
begin
 00598FD4    push        ebp
 00598FD5    mov         ebp,esp
 00598FD7    push        ecx
 00598FD8    mov         dword ptr [ebp-4],eax
 00598FDB    push        0
 00598FDD    push        0
 00598FDF    push        302
 00598FE4    mov         eax,dword ptr [ebp-4]
 00598FE7    call        TWinControl.GetHandle
 00598FEC    push        eax
 00598FED    call        USER32.SendMessageA
 00598FF2    pop         ecx
 00598FF3    pop         ebp
 00598FF4    ret
end;*}

//00598FF8
{*procedure sub_00598FF8(?:?);
begin
 00598FF8    push        ebp
 00598FF9    mov         ebp,esp
 00598FFB    push        ecx
 00598FFC    mov         dword ptr [ebp-4],eax
 00598FFF    push        0
 00599001    push        0
 00599003    push        304
 00599008    mov         eax,dword ptr [ebp-4]
 0059900B    call        TWinControl.GetHandle
 00599010    push        eax
 00599011    call        USER32.SendMessageA
 00599016    pop         ecx
 00599017    pop         ebp
 00599018    ret
end;*}

//0059901C
procedure sub_0059901C(?:TCustomEdit);
begin
{*
 0059901C    push        ebp
 0059901D    mov         ebp,esp
 0059901F    push        ecx
 00599020    mov         dword ptr [ebp-4],eax
 00599023    push        0FF
 00599025    push        0
 00599027    push        0B1
 0059902C    mov         eax,dword ptr [ebp-4]
 0059902F    call        TWinControl.GetHandle
 00599034    push        eax
 00599035    call        USER32.SendMessageA
 0059903A    pop         ecx
 0059903B    pop         ebp
 0059903C    ret
*}
end;

//00599040
{*function sub_00599040(?:?; ?:?):?;
begin
 00599040    push        ebp
 00599041    mov         ebp,esp
 00599043    add         esp,0FFFFFFE8
 00599046    mov         dword ptr [ebp-0C],ecx
 00599049    mov         dword ptr [ebp-8],edx
 0059904C    mov         dword ptr [ebp-4],eax
 0059904F    mov         eax,dword ptr [ebp-4]
 00599052    mov         edx,dword ptr [eax]
 00599054    call        dword ptr [edx+0CC];TCustomEdit.sub_00598E50
 0059905A    mov         dword ptr [ebp-18],eax
 0059905D    mov         eax,dword ptr [ebp-4]
 00599060    mov         edx,dword ptr [eax]
 00599062    call        dword ptr [edx+0C8];TCustomEdit.sub_00598EA8
 00599068    mov         dword ptr [ebp-10],eax
 0059906B    mov         eax,dword ptr [ebp-4]
 0059906E    call        005F35D4
 00599073    inc         eax
 00599074    call        006589A4
 00599079    mov         dword ptr [ebp-14],eax
 0059907C    xor         eax,eax
 0059907E    push        ebp
 0059907F    push        5990D5
 00599084    push        dword ptr fs:[eax]
 00599087    mov         dword ptr fs:[eax],esp
 0059908A    mov         eax,dword ptr [ebp-14]
 0059908D    call        006589D0
 00599092    mov         ecx,eax
 00599094    mov         edx,dword ptr [ebp-14]
 00599097    mov         eax,dword ptr [ebp-4]
 0059909A    call        005F35F8
 0059909F    mov         eax,dword ptr [ebp-10]
 005990A2    cmp         eax,dword ptr [ebp-0C]
>005990A5    jl          005990AE
 005990A7    mov         eax,dword ptr [ebp-0C]
 005990AA    dec         eax
 005990AB    mov         dword ptr [ebp-10],eax
 005990AE    mov         edx,dword ptr [ebp-14]
 005990B1    add         edx,dword ptr [ebp-18]
 005990B4    mov         ecx,dword ptr [ebp-10]
 005990B7    mov         eax,dword ptr [ebp-8]
 005990BA    call        StrLCopy
 005990BF    xor         eax,eax
 005990C1    pop         edx
 005990C2    pop         ecx
 005990C3    pop         ecx
 005990C4    mov         dword ptr fs:[eax],edx
 005990C7    push        5990DC
 005990CC    mov         eax,dword ptr [ebp-14]
 005990CF    call        00658A38
 005990D4    ret
>005990D5    jmp         @HandleFinally
>005990DA    jmp         005990CC
 005990DC    mov         eax,dword ptr [ebp-10]
 005990DF    mov         esp,ebp
 005990E1    pop         ebp
 005990E2    ret
end;*}

//005990E4
{*procedure sub_005990E4(?:?);
begin
 005990E4    push        ebp
 005990E5    mov         ebp,esp
 005990E7    add         esp,0FFFFFFEC
 005990EA    mov         dword ptr [ebp-8],edx
 005990ED    mov         dword ptr [ebp-4],eax
 005990F0    mov         eax,dword ptr [ebp-4]
 005990F3    mov         edx,dword ptr [eax]
 005990F5    call        dword ptr [edx+0CC];TCustomEdit.sub_00598E50
 005990FB    mov         dword ptr [ebp-10],eax
 005990FE    mov         eax,dword ptr [ebp-4]
 00599101    mov         edx,dword ptr [eax]
 00599103    call        dword ptr [edx+0C8];TCustomEdit.sub_00598EA8
 00599109    mov         dword ptr [ebp-14],eax
 0059910C    mov         eax,dword ptr [ebp-8]
 0059910F    mov         ecx,dword ptr [ebp-14]
 00599112    xor         edx,edx
 00599114    call        @LStrFromPCharLen
 00599119    cmp         dword ptr [ebp-14],0
>0059911D    je          00599185
 0059911F    mov         eax,dword ptr [ebp-4]
 00599122    call        005F35D4
 00599127    inc         eax
 00599128    call        006589A4
 0059912D    mov         dword ptr [ebp-0C],eax
 00599130    xor         eax,eax
 00599132    push        ebp
 00599133    push        59917E
 00599138    push        dword ptr fs:[eax]
 0059913B    mov         dword ptr fs:[eax],esp
 0059913E    mov         eax,dword ptr [ebp-0C]
 00599141    call        006589D0
 00599146    mov         ecx,eax
 00599148    mov         edx,dword ptr [ebp-0C]
 0059914B    mov         eax,dword ptr [ebp-4]
 0059914E    call        005F35F8
 00599153    mov         eax,dword ptr [ebp-0C]
 00599156    mov         edx,dword ptr [ebp-10]
 00599159    add         eax,edx
 0059915B    mov         edx,dword ptr [ebp-8]
 0059915E    mov         edx,dword ptr [edx]
 00599160    mov         ecx,dword ptr [ebp-14]
 00599163    call        Move
 00599168    xor         eax,eax
 0059916A    pop         edx
 0059916B    pop         ecx
 0059916C    pop         ecx
 0059916D    mov         dword ptr fs:[eax],edx
 00599170    push        599185
 00599175    mov         eax,dword ptr [ebp-0C]
 00599178    call        00658A38
 0059917D    ret
>0059917E    jmp         @HandleFinally
>00599183    jmp         00599175
 00599185    mov         esp,ebp
 00599187    pop         ebp
 00599188    ret
end;*}

//005991BC
{*procedure sub_005991BC(?:?);
begin
 005991BC    push        ebp
 005991BD    mov         ebp,esp
 005991BF    add         esp,0FFFFFFF8
 005991C2    mov         dword ptr [ebp-8],edx
 005991C5    mov         dword ptr [ebp-4],eax
 005991C8    mov         edx,dword ptr [ebp-8]
 005991CB    mov         eax,dword ptr [ebp-4]
 005991CE    call        005F7FC0
 005991D3    mov         ecx,59929C
 005991D8    mov         edx,dword ptr [ebp-8]
 005991DB    mov         eax,dword ptr [ebp-4]
 005991DE    call        005F7E98
 005991E3    mov         eax,dword ptr [ebp-8]
 005991E6    mov         eax,dword ptr [eax+4]
 005991E9    or          eax,0C0
 005991EE    mov         edx,dword ptr [ebp-4]
 005991F1    movzx       edx,byte ptr [edx+20C];TCustomEdit.FBorderStyle:TBorderStyle
 005991F8    or          eax,dword ptr [edx*4+6E3A44]
 005991FF    mov         edx,dword ptr [ebp-4]
 00599202    cmp         byte ptr [edx+20D],0;TCustomEdit.FPasswordChar:Char
 00599209    setne       dl
 0059920C    and         edx,7F
 0059920F    or          eax,dword ptr [edx*4+6E3A5C]
 00599216    mov         edx,dword ptr [ebp-4]
 00599219    movzx       edx,byte ptr [edx+20E];TCustomEdit.FReadOnly:Boolean
 00599220    or          eax,dword ptr [edx*4+6E3A64]
 00599227    mov         edx,dword ptr [ebp-4]
 0059922A    movzx       edx,byte ptr [edx+213];TCustomEdit.FCharCase:TEditCharCase
 00599231    or          eax,dword ptr [edx*4+6E3A6C]
 00599238    mov         edx,dword ptr [ebp-4]
 0059923B    movzx       edx,byte ptr [edx+211];TCustomEdit.FHideSelection:Boolean
 00599242    or          eax,dword ptr [edx*4+6E3A78]
 00599249    mov         edx,dword ptr [ebp-4]
 0059924C    movzx       edx,byte ptr [edx+212];TCustomEdit.FOEMConvert:Boolean
 00599253    or          eax,dword ptr [edx*4+6E3A80]
 0059925A    mov         edx,dword ptr [ebp-8]
 0059925D    mov         dword ptr [edx+4],eax
 00599260    mov         eax,[006E9DD8];^gvar_006ECDE0
 00599265    cmp         byte ptr [eax],0
>00599268    je          00599296
 0059926A    mov         eax,dword ptr [ebp-4]
 0059926D    cmp         byte ptr [eax+1A5],0;TCustomEdit.FCtl3D:Boolean
>00599274    je          00599296
 00599276    mov         eax,dword ptr [ebp-4]
 00599279    cmp         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
>00599280    jne         00599296
 00599282    mov         eax,dword ptr [ebp-8]
 00599285    and         dword ptr [eax+4],0FF7FFFFF
 0059928C    mov         eax,dword ptr [ebp-8]
 0059928F    or          dword ptr [eax+8],200
 00599296    pop         ecx
 00599297    pop         ecx
 00599298    pop         ebp
 00599299    ret
end;*}

//005992A4
{*procedure sub_005992A4(?:?);
begin
 005992A4    push        ebp
 005992A5    mov         ebp,esp
 005992A7    add         esp,0FFFFFF6C
 005992AD    push        esi
 005992AE    push        edi
 005992AF    mov         dword ptr [ebp-8],edx
 005992B2    mov         dword ptr [ebp-4],eax
 005992B5    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005992BA    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005992BE    je          00599323
 005992C0    mov         eax,[006EA0EC];^gvar_006E498C
 005992C5    cmp         dword ptr [eax],2
>005992C8    je          00599323
 005992CA    mov         eax,dword ptr [ebp-8]
 005992CD    test        byte ptr [eax+5],8
>005992D1    je          00599323
 005992D3    mov         eax,dword ptr [ebp-8]
 005992D6    mov         esi,eax
 005992D8    lea         edi,[ebp-94]
 005992DE    mov         ecx,23
 005992E3    rep movs    dword ptr [edi],dword ptr [esi]
 005992E5    and         dword ptr [ebp-90],0FFFFF7FF
 005992EF    lea         edx,[ebp-94]
 005992F5    mov         eax,dword ptr [ebp-4]
 005992F8    call        005F831C
 005992FD    mov         eax,dword ptr [ebp-4]
 00599300    cmp         dword ptr [eax+180],0;TCustomEdit.FHandle:HWND
>00599307    je          0059932E
 00599309    push        0
 0059930B    push        1
 0059930D    push        0CF
 00599312    mov         eax,dword ptr [ebp-4]
 00599315    mov         eax,dword ptr [eax+180];TCustomEdit.FHandle:HWND
 0059931B    push        eax
 0059931C    call        USER32.SendMessageA
>00599321    jmp         0059932E
 00599323    mov         edx,dword ptr [ebp-8]
 00599326    mov         eax,dword ptr [ebp-4]
 00599329    call        005F831C
 0059932E    pop         edi
 0059932F    pop         esi
 00599330    mov         esp,ebp
 00599332    pop         ebp
 00599333    ret
end;*}

//00599334
procedure TCustomEdit.CreateWnd;
begin
{*
 00599334    push        ebp
 00599335    mov         ebp,esp
 00599337    push        ecx
 00599338    mov         dword ptr [ebp-4],eax
 0059933B    mov         eax,dword ptr [ebp-4]
 0059933E    mov         byte ptr [eax+214],1
 00599345    xor         eax,eax
 00599347    push        ebp
 00599348    push        599373
 0059934D    push        dword ptr fs:[eax]
 00599350    mov         dword ptr fs:[eax],esp
 00599353    mov         eax,dword ptr [ebp-4]
 00599356    call        TWinControl.CreateWnd
 0059935B    xor         eax,eax
 0059935D    pop         edx
 0059935E    pop         ecx
 0059935F    pop         ecx
 00599360    mov         dword ptr fs:[eax],edx
 00599363    push        59937A
 00599368    mov         eax,dword ptr [ebp-4]
 0059936B    mov         byte ptr [eax+214],0
 00599372    ret
>00599373    jmp         @HandleFinally
>00599378    jmp         00599368
 0059937A    mov         eax,dword ptr [ebp-4]
 0059937D    mov         edx,dword ptr [eax+208]
 00599383    mov         eax,dword ptr [ebp-4]
 00599386    mov         ecx,dword ptr [eax]
 00599388    call        dword ptr [ecx+0C4]
 0059938E    mov         eax,dword ptr [ebp-4]
 00599391    mov         dl,byte ptr [eax+215]
 00599397    mov         eax,dword ptr [ebp-4]
 0059939A    call        TCustomEdit.SetModified
 0059939F    mov         eax,dword ptr [ebp-4]
 005993A2    cmp         byte ptr [eax+20D],0
>005993A9    je          005993CB
 005993AB    push        0
 005993AD    mov         eax,dword ptr [ebp-4]
 005993B0    movzx       eax,byte ptr [eax+20D]
 005993B7    push        eax
 005993B8    push        0CC
 005993BD    mov         eax,dword ptr [ebp-4]
 005993C0    call        TWinControl.GetHandle
 005993C5    push        eax
 005993C6    call        USER32.SendMessageA
 005993CB    mov         eax,dword ptr [ebp-4]
 005993CE    call        TCustomEdit.UpdateHeight
 005993D3    pop         ecx
 005993D4    pop         ebp
 005993D5    ret
*}
end;

//005993D8
procedure TCustomEdit.DestroyWnd;
begin
{*
 005993D8    push        ebp
 005993D9    mov         ebp,esp
 005993DB    push        ecx
 005993DC    mov         dword ptr [ebp-4],eax
 005993DF    mov         eax,dword ptr [ebp-4]
 005993E2    call        TCustomEdit.GetModified
 005993E7    mov         edx,dword ptr [ebp-4]
 005993EA    mov         byte ptr [edx+215],al
 005993F0    mov         eax,dword ptr [ebp-4]
 005993F3    call        TWinControl.DestroyWnd
 005993F8    pop         ecx
 005993F9    pop         ebp
 005993FA    ret
*}
end;

//005993FC
procedure TCustomEdit.UpdateHeight;
begin
{*
 005993FC    push        ebp
 005993FD    mov         ebp,esp
 005993FF    push        ecx
 00599400    mov         dword ptr [ebp-4],eax
 00599403    mov         eax,dword ptr [ebp-4]
 00599406    cmp         byte ptr [eax+20F],0
>0059940D    je          00599437
 0059940F    mov         eax,dword ptr [ebp-4]
 00599412    cmp         byte ptr [eax+20C],1
>00599419    jne         00599437
 0059941B    mov         eax,[00599450]
 00599420    mov         edx,dword ptr [ebp-4]
 00599423    or          eax,dword ptr [edx+50]
 00599426    mov         edx,dword ptr [ebp-4]
 00599429    mov         dword ptr [edx+50],eax
 0059942C    mov         eax,dword ptr [ebp-4]
 0059942F    call        00599454
 00599434    pop         ecx
 00599435    pop         ebp
 00599436    ret
 00599437    mov         eax,[00599450]
 0059943C    mov         edx,dword ptr [ebp-4]
 0059943F    not         eax
 00599441    and         eax,dword ptr [edx+50]
 00599444    mov         edx,dword ptr [ebp-4]
 00599447    mov         dword ptr [edx+50],eax
 0059944A    pop         ecx
 0059944B    pop         ebp
 0059944C    ret
*}
end;

//00599454
procedure sub_00599454(?:TCustomEdit);
begin
{*
 00599454    push        ebp
 00599455    mov         ebp,esp
 00599457    add         esp,0FFFFFF80
 0059945A    mov         dword ptr [ebp-4],eax
 0059945D    push        0
 0059945F    call        USER32.GetDC
 00599464    mov         dword ptr [ebp-8],eax
 00599467    lea         eax,[ebp-48]
 0059946A    push        eax
 0059946B    mov         eax,dword ptr [ebp-8]
 0059946E    push        eax
 0059946F    call        GDI32.GetTextMetricsA
 00599474    mov         eax,dword ptr [ebp-4]
 00599477    mov         eax,dword ptr [eax+68];TCustomEdit.FFont:TFont
 0059947A    call        TFont.GetHandle
 0059947F    push        eax
 00599480    mov         eax,dword ptr [ebp-8]
 00599483    push        eax
 00599484    call        GDI32.SelectObject
 00599489    mov         dword ptr [ebp-0C],eax
 0059948C    lea         eax,[ebp-80]
 0059948F    push        eax
 00599490    mov         eax,dword ptr [ebp-8]
 00599493    push        eax
 00599494    call        GDI32.GetTextMetricsA
 00599499    mov         eax,dword ptr [ebp-0C]
 0059949C    push        eax
 0059949D    mov         eax,dword ptr [ebp-8]
 005994A0    push        eax
 005994A1    call        GDI32.SelectObject
 005994A6    mov         eax,dword ptr [ebp-8]
 005994A9    push        eax
 005994AA    push        0
 005994AC    call        USER32.ReleaseDC
 005994B1    mov         eax,[006E9DD8];^gvar_006ECDE0
 005994B6    cmp         byte ptr [eax],0
>005994B9    je          005994E6
 005994BB    mov         eax,dword ptr [ebp-4]
 005994BE    cmp         byte ptr [eax+1A5],0;TCustomEdit.FCtl3D:Boolean
>005994C5    je          005994D0
 005994C7    mov         dword ptr [ebp-10],8
>005994CE    jmp         005994D7
 005994D0    mov         dword ptr [ebp-10],6
 005994D7    push        6
 005994D9    call        USER32.GetSystemMetrics
 005994DE    imul        dword ptr [ebp-10]
 005994E1    mov         dword ptr [ebp-10],eax
>005994E4    jmp         00599516
 005994E6    mov         eax,dword ptr [ebp-48]
 005994E9    mov         dword ptr [ebp-10],eax
 005994EC    mov         eax,dword ptr [ebp-10]
 005994EF    cmp         eax,dword ptr [ebp-80]
>005994F2    jle         005994FA
 005994F4    mov         eax,dword ptr [ebp-80]
 005994F7    mov         dword ptr [ebp-10],eax
 005994FA    push        6
 005994FC    call        USER32.GetSystemMetrics
 00599501    shl         eax,2
 00599504    mov         edx,dword ptr [ebp-10]
 00599507    test        edx,edx
>00599509    jns         0059950E
 0059950B    add         edx,3
 0059950E    sar         edx,2
 00599511    add         eax,edx
 00599513    mov         dword ptr [ebp-10],eax
 00599516    mov         edx,dword ptr [ebp-80]
 00599519    add         edx,dword ptr [ebp-10]
 0059951C    mov         eax,dword ptr [ebp-4]
 0059951F    call        TControl.SetHeight
 00599524    mov         esp,ebp
 00599526    pop         ebp
 00599527    ret
*}
end;

//00599528
procedure TCustomEdit.sub_00599528;
begin
{*
 00599528    push        ebp
 00599529    mov         ebp,esp
 0059952B    push        ecx
 0059952C    push        ebx
 0059952D    mov         dword ptr [ebp-4],eax
 00599530    mov         eax,dword ptr [ebp-4]
 00599533    call        005F3158
 00599538    mov         eax,dword ptr [ebp-4]
 0059953B    cmp         word ptr [eax+21A],0;TCustomEdit.?f21A:word
>00599543    je          00599557
 00599545    mov         ebx,dword ptr [ebp-4]
 00599548    mov         edx,dword ptr [ebp-4]
 0059954B    mov         eax,dword ptr [ebx+21C];TCustomEdit.?f21C:dword
 00599551    call        dword ptr [ebx+218];TCustomEdit.FOnChange
 00599557    pop         ebx
 00599558    pop         ecx
 00599559    pop         ebp
 0059955A    ret
*}
end;

//0059955C
procedure TCustomEdit.DefaultHandler(var Message:void );
begin
{*
 0059955C    push        ebp
 0059955D    mov         ebp,esp
 0059955F    add         esp,0FFFFFFF8
 00599562    mov         dword ptr [ebp-8],edx
 00599565    mov         dword ptr [ebp-4],eax
 00599568    mov         eax,dword ptr [ebp-8];{Win32Platform}
 0059956B    mov         eax,dword ptr [eax]
 0059956D    sub         eax,7
>00599570    jne         00599594
 00599572    mov         eax,[006EA0EC];^gvar_006E498C
 00599577    cmp         dword ptr [eax],1;{IsWindow}
>0059957A    jne         00599594
 0059957C    mov         eax,dword ptr [ebp-8]
 0059957F    mov         eax,dword ptr [eax+4]
 00599582    push        eax
 00599583    call        USER32.IsWindow
 00599588    test        eax,eax
>0059958A    jne         00599594
 0059958C    mov         eax,dword ptr [ebp-8]
 0059958F    xor         edx,edx
 00599591    mov         dword ptr [eax+4],edx
 00599594    mov         edx,dword ptr [ebp-8]
 00599597    mov         eax,dword ptr [ebp-4]
 0059959A    call        TWinControl.DefaultHandler
 0059959F    pop         ecx
 005995A0    pop         ecx
 005995A1    pop         ebp
 005995A2    ret
*}
end;

//005995A4
{*procedure TCustomEdit.WMSetFont(?:?);
begin
 005995A4    push        ebp
 005995A5    mov         ebp,esp
 005995A7    add         esp,0FFFFFFF8
 005995AA    mov         dword ptr [ebp-8],edx
 005995AD    mov         dword ptr [ebp-4],eax
 005995B0    mov         edx,dword ptr [ebp-8]
 005995B3    mov         eax,dword ptr [ebp-4]
 005995B6    mov         ecx,dword ptr [eax]
 005995B8    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 005995BB    mov         eax,[006E9DD8];^gvar_006ECDE0
 005995C0    cmp         byte ptr [eax],0
>005995C3    je          005995F0
 005995C5    push        0F0
 005995C7    mov         eax,dword ptr [ebp-4]
 005995CA    call        TWinControl.GetHandle
 005995CF    push        eax
 005995D0    call        USER32.GetWindowLongA
 005995D5    test        al,4
>005995D7    jne         005995F0
 005995D9    push        0
 005995DB    push        3
 005995DD    push        0D3
 005995E2    mov         eax,dword ptr [ebp-4]
 005995E5    call        TWinControl.GetHandle
 005995EA    push        eax
 005995EB    call        USER32.SendMessageA
 005995F0    pop         ecx
 005995F1    pop         ecx
 005995F2    pop         ebp
 005995F3    ret
end;*}

//005995F4
{*procedure TCustomEdit.CMCtl3DChanged(?:?);
begin
 005995F4    push        ebp
 005995F5    mov         ebp,esp
 005995F7    add         esp,0FFFFFFF8
 005995FA    mov         dword ptr [ebp-8],edx
 005995FD    mov         dword ptr [ebp-4],eax
 00599600    mov         eax,[006E9DD8];^gvar_006ECDE0
 00599605    cmp         byte ptr [eax],0
>00599608    je          00599626
 0059960A    mov         eax,dword ptr [ebp-4]
 0059960D    cmp         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
>00599614    jne         00599626
 00599616    mov         eax,dword ptr [ebp-4]
 00599619    call        TCustomEdit.UpdateHeight
 0059961E    mov         eax,dword ptr [ebp-4]
 00599621    call        TWinControl.RecreateWnd
 00599626    mov         edx,dword ptr [ebp-8]
 00599629    mov         eax,dword ptr [ebp-4]
 0059962C    call        TWinControl.CMCtl3DChanged
 00599631    pop         ecx
 00599632    pop         ecx
 00599633    pop         ebp
 00599634    ret
end;*}

//00599638
{*procedure TCustomEdit.CMFontChanged(?:?);
begin
 00599638    push        ebp
 00599639    mov         ebp,esp
 0059963B    add         esp,0FFFFFFF8
 0059963E    mov         dword ptr [ebp-8],edx
 00599641    mov         dword ptr [ebp-4],eax
 00599644    mov         edx,dword ptr [ebp-8]
 00599647    mov         eax,dword ptr [ebp-4]
 0059964A    call        TWinControl.CMFontChanged
 0059964F    mov         eax,dword ptr [ebp-4]
 00599652    test        byte ptr [eax+51],2;TCustomEdit.?f51:byte
>00599656    je          00599672
 00599658    mov         eax,dword ptr [ebp-4]
 0059965B    test        byte ptr [eax+1C],10;TCustomEdit.FComponentState:TComponentState
>0059965F    je          0059966A
 00599661    mov         eax,dword ptr [ebp-4]
 00599664    test        byte ptr [eax+1C],1;TCustomEdit.FComponentState:TComponentState
>00599668    jne         00599672
 0059966A    mov         eax,dword ptr [ebp-4]
 0059966D    call        00599454
 00599672    pop         ecx
 00599673    pop         ecx
 00599674    pop         ebp
 00599675    ret
end;*}

//00599678
{*procedure TCustomEdit.sub_00599678(?:?);
begin
 00599678    push        ebp
 00599679    mov         ebp,esp
 0059967B    add         esp,0FFFFFFF8
 0059967E    push        esi
 0059967F    mov         dword ptr [ebp-8],edx
 00599682    mov         dword ptr [ebp-4],eax
 00599685    mov         eax,dword ptr [ebp-8]
 00599688    cmp         word ptr [eax+6],300
>0059968E    jne         005996A8
 00599690    mov         eax,dword ptr [ebp-4]
 00599693    cmp         byte ptr [eax+214],0;TCustomEdit.FCreating:Boolean
>0059969A    jne         005996A8
 0059969C    mov         eax,dword ptr [ebp-4]
 0059969F    mov         si,0FFB3
 005996A3    call        @CallDynaInst;TCustomEdit.sub_00599528
 005996A8    pop         esi
 005996A9    pop         ecx
 005996AA    pop         ecx
 005996AB    pop         ebp
 005996AC    ret
end;*}

//005996B0
{*procedure TCustomEdit.CMEnter(?:?);
begin
 005996B0    push        ebp
 005996B1    mov         ebp,esp
 005996B3    add         esp,0FFFFFFF8
 005996B6    mov         dword ptr [ebp-8],edx
 005996B9    mov         dword ptr [ebp-4],eax
 005996BC    mov         eax,dword ptr [ebp-4]
 005996BF    cmp         byte ptr [eax+210],0;TCustomEdit.FAutoSelect:Boolean
>005996C6    je          005996ED
 005996C8    mov         eax,dword ptr [ebp-4]
 005996CB    test        byte ptr [eax+54],1;TCustomEdit.FControlState:TControlState
>005996CF    jne         005996ED
 005996D1    push        0F0
 005996D3    mov         eax,dword ptr [ebp-4]
 005996D6    call        TWinControl.GetHandle
 005996DB    push        eax
 005996DC    call        USER32.GetWindowLongA
 005996E1    test        al,4
>005996E3    jne         005996ED
 005996E5    mov         eax,dword ptr [ebp-4]
 005996E8    call        0059901C
 005996ED    mov         edx,dword ptr [ebp-8]
 005996F0    mov         eax,dword ptr [ebp-4]
 005996F3    call        TWinControl.CMEnter
 005996F8    pop         ecx
 005996F9    pop         ecx
 005996FA    pop         ebp
 005996FB    ret
end;*}

//005996FC
{*procedure TCustomEdit.CMTextChanged(?:?);
begin
 005996FC    push        ebp
 005996FD    mov         ebp,esp
 005996FF    add         esp,0FFFFFFF8
 00599702    push        esi
 00599703    mov         dword ptr [ebp-8],edx
 00599706    mov         dword ptr [ebp-4],eax
 00599709    mov         edx,dword ptr [ebp-8]
 0059970C    mov         eax,dword ptr [ebp-4]
 0059970F    mov         ecx,dword ptr [eax]
 00599711    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 00599714    mov         eax,dword ptr [ebp-4]
 00599717    call        TWinControl.HandleAllocated
 0059971C    test        al,al
>0059971E    je          00599734
 00599720    push        0F0
 00599722    mov         eax,dword ptr [ebp-4]
 00599725    call        TWinControl.GetHandle
 0059972A    push        eax
 0059972B    call        USER32.GetWindowLongA
 00599730    test        al,4
>00599732    je          00599740
 00599734    mov         eax,dword ptr [ebp-4]
 00599737    mov         si,0FFB3
 0059973B    call        @CallDynaInst;TCustomEdit.sub_00599528
 00599740    pop         esi
 00599741    pop         ecx
 00599742    pop         ecx
 00599743    pop         ebp
 00599744    ret
end;*}

//00599748
{*procedure TCustomEdit.WMContextMenu(?:?);
begin
 00599748    push        ebp
 00599749    mov         ebp,esp
 0059974B    add         esp,0FFFFFFF8
 0059974E    mov         dword ptr [ebp-8],edx
 00599751    mov         dword ptr [ebp-4],eax
 00599754    mov         eax,dword ptr [ebp-4]
 00599757    mov         edx,dword ptr [eax]
 00599759    call        dword ptr [edx+0C0];TCustomEdit.sub_005FBFF0
 0059975F    mov         edx,dword ptr [ebp-8]
 00599762    mov         eax,dword ptr [ebp-4]
 00599765    call        TWinControl.WMContextMenu
 0059976A    pop         ecx
 0059976B    pop         ecx
 0059976C    pop         ebp
 0059976D    ret
end;*}

//00599770
{*function sub_00599770:?;
begin
 00599770    push        ebp
 00599771    mov         ebp,esp
 00599773    add         esp,0FFFFFFF8
 00599776    mov         dword ptr [ebp-4],eax
 00599779    xor         eax,eax
 0059977B    mov         dword ptr [ebp-8],eax
 0059977E    mov         eax,dword ptr [ebp-4]
 00599781    mov         eax,dword ptr [eax+10];TMemoStrings................................Memo:TCustomMemo
 00599784    call        TWinControl.HandleAllocated
 00599789    test        al,al
>0059978B    jne         00599799
 0059978D    mov         eax,dword ptr [ebp-4]
 00599790    mov         eax,dword ptr [eax+10];TMemoStrings.................................Memo:TCustomMemo
 00599793    cmp         dword ptr [eax+64],0;TCustomMemo.FText:PChar
>00599797    je          005997F3
 00599799    push        0
 0059979B    push        0
 0059979D    push        0BA
 005997A2    mov         eax,dword ptr [ebp-4]
 005997A5    mov         eax,dword ptr [eax+10];TMemoStrings..................................Memo:TCustomMemo
 005997A8    call        TWinControl.GetHandle
 005997AD    push        eax
 005997AE    call        USER32.SendMessageA
 005997B3    mov         dword ptr [ebp-8],eax
 005997B6    push        0
 005997B8    push        0
 005997BA    mov         eax,dword ptr [ebp-8]
 005997BD    dec         eax
 005997BE    push        eax
 005997BF    push        0BB
 005997C4    mov         eax,dword ptr [ebp-4]
 005997C7    mov         eax,dword ptr [eax+10];TMemoStrings...................................Memo:TCustomMemo
 005997CA    call        TWinControl.GetHandle
 005997CF    push        eax
 005997D0    call        USER32.SendMessageA
 005997D5    push        eax
 005997D6    push        0C1
 005997DB    mov         eax,dword ptr [ebp-4]
 005997DE    mov         eax,dword ptr [eax+10];TMemoStrings....................................Memo:TCustomMemo
 005997E1    call        TWinControl.GetHandle
 005997E6    push        eax
 005997E7    call        USER32.SendMessageA
 005997EC    test        eax,eax
>005997EE    jne         005997F3
 005997F0    dec         dword ptr [ebp-8]
 005997F3    mov         eax,dword ptr [ebp-8]
 005997F6    pop         ecx
 005997F7    pop         ecx
 005997F8    pop         ebp
 005997F9    ret
end;*}

//005997FC
{*procedure sub_005997FC(?:?; ?:?);
begin
 005997FC    push        ebp
 005997FD    mov         ebp,esp
 005997FF    add         esp,0FFFFF004
 00599805    push        eax
 00599806    add         esp,0FFFFFFF4
 00599809    mov         dword ptr [ebp-0C],ecx
 0059980C    mov         dword ptr [ebp-8],edx
 0059980F    mov         dword ptr [ebp-4],eax
 00599812    lea         eax,[ebp-100C]
 00599818    mov         word ptr [eax],1000
 0059981D    lea         eax,[ebp-100C]
 00599823    push        eax
 00599824    mov         eax,dword ptr [ebp-8]
 00599827    push        eax
 00599828    push        0C4
 0059982D    mov         eax,dword ptr [ebp-4]
 00599830    mov         eax,dword ptr [eax+10];TMemoStrings.....................................Memo:TCustomMemo
 00599833    call        TWinControl.GetHandle
 00599838    push        eax
 00599839    call        USER32.SendMessageA
 0059983E    mov         ecx,eax
 00599840    lea         edx,[ebp-100C]
 00599846    mov         eax,dword ptr [ebp-0C]
 00599849    call        @LStrFromPCharLen
 0059984E    mov         esp,ebp
 00599850    pop         ebp
 00599851    ret
end;*}

//00599854
{*procedure sub_00599854(?:?; ?:?);
begin
 00599854    push        ebp
 00599855    mov         ebp,esp
 00599857    add         esp,0FFFFFFF0
 0059985A    mov         dword ptr [ebp-0C],ecx
 0059985D    mov         dword ptr [ebp-8],edx
 00599860    mov         dword ptr [ebp-4],eax
 00599863    push        0
 00599865    mov         eax,dword ptr [ebp-8]
 00599868    push        eax
 00599869    push        0BB
 0059986E    mov         eax,dword ptr [ebp-4]
 00599871    mov         eax,dword ptr [eax+10];TMemoStrings......................................Memo:TCustomMem...
 00599874    call        TWinControl.GetHandle
 00599879    push        eax
 0059987A    call        USER32.SendMessageA
 0059987F    mov         dword ptr [ebp-10],eax
 00599882    cmp         dword ptr [ebp-10],0
>00599886    jl          005998E3
 00599888    push        0
 0059988A    mov         eax,dword ptr [ebp-10]
 0059988D    push        eax
 0059988E    push        0C1
 00599893    mov         eax,dword ptr [ebp-4]
 00599896    mov         eax,dword ptr [eax+10];TMemoStrings.......................................Memo:TCustomMe...
 00599899    call        TWinControl.GetHandle
 0059989E    push        eax
 0059989F    call        USER32.SendMessageA
 005998A4    add         eax,dword ptr [ebp-10]
 005998A7    push        eax
 005998A8    mov         eax,dword ptr [ebp-10]
 005998AB    push        eax
 005998AC    push        0B1
 005998B1    mov         eax,dword ptr [ebp-4]
 005998B4    mov         eax,dword ptr [eax+10];TMemoStrings........................................Memo:TCustomM...
 005998B7    call        TWinControl.GetHandle
 005998BC    push        eax
 005998BD    call        USER32.SendMessageA
 005998C2    mov         eax,dword ptr [ebp-0C]
 005998C5    call        @LStrToPChar
 005998CA    push        eax
 005998CB    push        0
 005998CD    push        0C2
 005998D2    mov         eax,dword ptr [ebp-4]
 005998D5    mov         eax,dword ptr [eax+10];TMemoStrings.........................................Memo:TCustom...
 005998D8    call        TWinControl.GetHandle
 005998DD    push        eax
 005998DE    call        USER32.SendMessageA
 005998E3    mov         esp,ebp
 005998E5    pop         ebp
 005998E6    ret
end;*}

//005998E8
{*procedure sub_005998E8(?:?; ?:?);
begin
 005998E8    push        ebp
 005998E9    mov         ebp,esp
 005998EB    add         esp,0FFFFFFE8
 005998EE    push        ebx
 005998EF    xor         ebx,ebx
 005998F1    mov         dword ptr [ebp-18],ebx
 005998F4    mov         dword ptr [ebp-0C],ecx
 005998F7    mov         dword ptr [ebp-8],edx
 005998FA    mov         dword ptr [ebp-4],eax
 005998FD    xor         eax,eax
 005998FF    push        ebp
 00599900    push        599A02
 00599905    push        dword ptr fs:[eax]
 00599908    mov         dword ptr fs:[eax],esp
 0059990B    cmp         dword ptr [ebp-8],0
>0059990F    jl          005999EC
 00599915    push        0
 00599917    mov         eax,dword ptr [ebp-8]
 0059991A    push        eax
 0059991B    push        0BB
 00599920    mov         eax,dword ptr [ebp-4]
 00599923    mov         eax,dword ptr [eax+10];TMemoStrings..........................................Memo:TCusto...
 00599926    call        TWinControl.GetHandle
 0059992B    push        eax
 0059992C    call        USER32.SendMessageA
 00599931    mov         dword ptr [ebp-10],eax
 00599934    cmp         dword ptr [ebp-10],0
>00599938    jl          0059994C
 0059993A    lea         eax,[ebp-18]
 0059993D    mov         ecx,599A18;#13+#10
 00599942    mov         edx,dword ptr [ebp-0C]
 00599945    call        @LStrCat3
>0059994A    jmp         005999AD
 0059994C    push        0
 0059994E    mov         eax,dword ptr [ebp-8]
 00599951    dec         eax
 00599952    push        eax
 00599953    push        0BB
 00599958    mov         eax,dword ptr [ebp-4]
 0059995B    mov         eax,dword ptr [eax+10];TMemoStrings...........................................Memo:TCust...
 0059995E    call        TWinControl.GetHandle
 00599963    push        eax
 00599964    call        USER32.SendMessageA
 00599969    mov         dword ptr [ebp-10],eax
 0059996C    cmp         dword ptr [ebp-10],0
>00599970    jl          005999EC
 00599972    push        0
 00599974    mov         eax,dword ptr [ebp-10]
 00599977    push        eax
 00599978    push        0C1
 0059997D    mov         eax,dword ptr [ebp-4]
 00599980    mov         eax,dword ptr [eax+10];TMemoStrings............................................Memo:TCus...
 00599983    call        TWinControl.GetHandle
 00599988    push        eax
 00599989    call        USER32.SendMessageA
 0059998E    mov         dword ptr [ebp-14],eax
 00599991    cmp         dword ptr [ebp-14],0
>00599995    je          005999EC
 00599997    mov         eax,dword ptr [ebp-14]
 0059999A    add         dword ptr [ebp-10],eax
 0059999D    lea         eax,[ebp-18]
 005999A0    mov         ecx,dword ptr [ebp-0C]
 005999A3    mov         edx,599A18;#13+#10
 005999A8    call        @LStrCat3
 005999AD    mov         eax,dword ptr [ebp-10]
 005999B0    push        eax
 005999B1    mov         eax,dword ptr [ebp-10]
 005999B4    push        eax
 005999B5    push        0B1
 005999BA    mov         eax,dword ptr [ebp-4]
 005999BD    mov         eax,dword ptr [eax+10];TMemoStrings.............................................Memo:TCu...
 005999C0    call        TWinControl.GetHandle
 005999C5    push        eax
 005999C6    call        USER32.SendMessageA
 005999CB    mov         eax,dword ptr [ebp-18]
 005999CE    call        @LStrToPChar
 005999D3    push        eax
 005999D4    push        0
 005999D6    push        0C2
 005999DB    mov         eax,dword ptr [ebp-4]
 005999DE    mov         eax,dword ptr [eax+10];TMemoStrings..............................................Memo:TC...
 005999E1    call        TWinControl.GetHandle
 005999E6    push        eax
 005999E7    call        USER32.SendMessageA
 005999EC    xor         eax,eax
 005999EE    pop         edx
 005999EF    pop         ecx
 005999F0    pop         ecx
 005999F1    mov         dword ptr fs:[eax],edx
 005999F4    push        599A09
 005999F9    lea         eax,[ebp-18]
 005999FC    call        @LStrClr
 00599A01    ret
>00599A02    jmp         @HandleFinally
>00599A07    jmp         005999F9
 00599A09    pop         ebx
 00599A0A    mov         esp,ebp
 00599A0C    pop         ebp
 00599A0D    ret
end;*}

//00599A20
{*procedure sub_00599A20(?:?);
begin
 00599A20    push        ebp
 00599A21    mov         ebp,esp
 00599A23    add         esp,0FFFFFFF0
 00599A26    mov         dword ptr [ebp-8],edx
 00599A29    mov         dword ptr [ebp-4],eax
 00599A2C    push        0
 00599A2E    mov         eax,dword ptr [ebp-8]
 00599A31    push        eax
 00599A32    push        0BB
 00599A37    mov         eax,dword ptr [ebp-4]
 00599A3A    mov         eax,dword ptr [eax+10];TMemoStrings...............................................Memo:T...
 00599A3D    call        TWinControl.GetHandle
 00599A42    push        eax
 00599A43    call        USER32.SendMessageA
 00599A48    mov         dword ptr [ebp-0C],eax
 00599A4B    cmp         dword ptr [ebp-0C],0
>00599A4F    jl          00599AD9
 00599A55    push        0
 00599A57    mov         eax,dword ptr [ebp-8]
 00599A5A    inc         eax
 00599A5B    push        eax
 00599A5C    push        0BB
 00599A61    mov         eax,dword ptr [ebp-4]
 00599A64    mov         eax,dword ptr [eax+10];TMemoStrings................................................Memo:...
 00599A67    call        TWinControl.GetHandle
 00599A6C    push        eax
 00599A6D    call        USER32.SendMessageA
 00599A72    mov         dword ptr [ebp-10],eax
 00599A75    cmp         dword ptr [ebp-10],0
>00599A79    jge         00599A9D
 00599A7B    push        0
 00599A7D    mov         eax,dword ptr [ebp-0C]
 00599A80    push        eax
 00599A81    push        0C1
 00599A86    mov         eax,dword ptr [ebp-4]
 00599A89    mov         eax,dword ptr [eax+10];TMemoStrings.................................................Memo...
 00599A8C    call        TWinControl.GetHandle
 00599A91    push        eax
 00599A92    call        USER32.SendMessageA
 00599A97    add         eax,dword ptr [ebp-0C]
 00599A9A    mov         dword ptr [ebp-10],eax
 00599A9D    mov         eax,dword ptr [ebp-10]
 00599AA0    push        eax
 00599AA1    mov         eax,dword ptr [ebp-0C]
 00599AA4    push        eax
 00599AA5    push        0B1
 00599AAA    mov         eax,dword ptr [ebp-4]
 00599AAD    mov         eax,dword ptr [eax+10];TMemoStrings..................................................Mem...
 00599AB0    call        TWinControl.GetHandle
 00599AB5    push        eax
 00599AB6    call        USER32.SendMessageA
 00599ABB    mov         eax,[006E3A88];^gvar_00599A1C
 00599AC0    push        eax
 00599AC1    push        0
 00599AC3    push        0C2
 00599AC8    mov         eax,dword ptr [ebp-4]
 00599ACB    mov         eax,dword ptr [eax+10];TMemoStrings...................................................Me...
 00599ACE    call        TWinControl.GetHandle
 00599AD3    push        eax
 00599AD4    call        USER32.SendMessageA
 00599AD9    mov         esp,ebp
 00599ADB    pop         ebp
 00599ADC    ret
end;*}

//00599AE0
procedure TMemoStrings.Clear;
begin
{*
 00599AE0    push        ebp
 00599AE1    mov         ebp,esp
 00599AE3    push        ecx
 00599AE4    mov         dword ptr [ebp-4],eax
 00599AE7    mov         eax,dword ptr [ebp-4]
 00599AEA    mov         eax,dword ptr [eax+10];TMemoStrings....................................................M...
 00599AED    mov         edx,dword ptr [eax]
 00599AEF    call        dword ptr [edx+0DC];TCustomMemo.sub_00598F44
 00599AF5    pop         ecx
 00599AF6    pop         ebp
 00599AF7    ret
*}
end;

//00599AF8
{*procedure sub_00599AF8(?:?);
begin
 00599AF8    push        ebp
 00599AF9    mov         ebp,esp
 00599AFB    add         esp,0FFFFFFF8
 00599AFE    mov         byte ptr [ebp-5],dl
 00599B01    mov         dword ptr [ebp-4],eax
 00599B04    mov         eax,dword ptr [ebp-4]
 00599B07    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599B0A    call        TWinControl.HandleAllocated
 00599B0F    test        al,al
>00599B11    je          00599B56
 00599B13    push        0
 00599B15    mov         al,byte ptr [ebp-5]
 00599B18    xor         al,1
 00599B1A    and         eax,7F
 00599B1D    push        eax
 00599B1E    push        0B
 00599B20    mov         eax,dword ptr [ebp-4]
 00599B23    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599B26    call        TWinControl.GetHandle
 00599B2B    push        eax
 00599B2C    call        USER32.SendMessageA
 00599B31    cmp         byte ptr [ebp-5],0
>00599B35    jne         00599B56
 00599B37    push        0
 00599B39    xor         ecx,ecx
 00599B3B    mov         edx,0B019
 00599B40    mov         eax,dword ptr [ebp-4]
 00599B43    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599B46    call        005F4FA8
 00599B4B    mov         eax,dword ptr [ebp-4]
 00599B4E    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599B51    call        TControl.Refresh
 00599B56    pop         ecx
 00599B57    pop         ecx
 00599B58    pop         ebp
 00599B59    ret
end;*}

//00599B5C
{*procedure sub_00599B5C(?:?);
begin
 00599B5C    push        ebp
 00599B5D    mov         ebp,esp
 00599B5F    add         esp,0FFFFFFF8
 00599B62    mov         dword ptr [ebp-8],edx
 00599B65    mov         dword ptr [ebp-4],eax
 00599B68    mov         edx,dword ptr [ebp-8]
 00599B6B    mov         eax,dword ptr [ebp-4]
 00599B6E    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599B71    call        TTabPage.GetCaption
 00599B76    pop         ecx
 00599B77    pop         ecx
 00599B78    pop         ebp
 00599B79    ret
end;*}

//00599B7C
{*procedure sub_00599B7C(?:?);
begin
 00599B7C    push        ebp
 00599B7D    mov         ebp,esp
 00599B7F    xor         ecx,ecx
 00599B81    push        ecx
 00599B82    push        ecx
 00599B83    push        ecx
 00599B84    push        ecx
 00599B85    push        ecx
 00599B86    push        ebx
 00599B87    mov         dword ptr [ebp-8],edx
 00599B8A    mov         dword ptr [ebp-4],eax
 00599B8D    xor         eax,eax
 00599B8F    push        ebp
 00599B90    push        599C54
 00599B95    push        dword ptr fs:[eax]
 00599B98    mov         dword ptr fs:[eax],esp
 00599B9B    lea         ecx,[ebp-0C]
 00599B9E    mov         dl,1
 00599BA0    mov         eax,dword ptr [ebp-8]
 00599BA3    call        00657944
 00599BA8    mov         eax,dword ptr [ebp-0C]
 00599BAB    call        @LStrLen
 00599BB0    mov         ebx,eax
 00599BB2    mov         eax,dword ptr [ebp-4]
 00599BB5    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599BB8    call        005F35D4
 00599BBD    cmp         ebx,eax
>00599BBF    jne         00599BDC
 00599BC1    lea         edx,[ebp-10]
 00599BC4    mov         eax,dword ptr [ebp-4]
 00599BC7    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599BCA    call        TTabPage.GetCaption
 00599BCF    mov         edx,dword ptr [ebp-10]
 00599BD2    mov         eax,dword ptr [ebp-0C]
 00599BD5    call        @LStrCmp
>00599BDA    je          00599C2E
 00599BDC    mov         eax,dword ptr [ebp-0C]
 00599BDF    push        eax
 00599BE0    push        0
 00599BE2    push        0C
 00599BE4    mov         eax,dword ptr [ebp-4]
 00599BE7    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599BEA    call        TWinControl.GetHandle
 00599BEF    push        eax
 00599BF0    call        USER32.SendMessageA
 00599BF5    test        eax,eax
>00599BF7    jne         00599C1A
 00599BF9    lea         edx,[ebp-14]
 00599BFC    mov         eax,[006E9F98];^gvar_0063CD40
 00599C01    call        LoadResString
 00599C06    mov         ecx,dword ptr [ebp-14]
 00599C09    mov         dl,1
 00599C0B    mov         eax,[00642244];EInvalidOperation
 00599C10    call        Exception.Create;EInvalidOperation.Create
 00599C15    call        @RaiseExcept
 00599C1A    push        0
 00599C1C    xor         ecx,ecx
 00599C1E    mov         edx,0B012
 00599C23    mov         eax,dword ptr [ebp-4]
 00599C26    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00599C29    call        005F4FA8
 00599C2E    xor         eax,eax
 00599C30    pop         edx
 00599C31    pop         ecx
 00599C32    pop         ecx
 00599C33    mov         dword ptr fs:[eax],edx
 00599C36    push        599C5B
 00599C3B    lea         eax,[ebp-14]
 00599C3E    call        @LStrClr
 00599C43    lea         eax,[ebp-10]
 00599C46    call        @LStrClr
 00599C4B    lea         eax,[ebp-0C]
 00599C4E    call        @LStrClr
 00599C53    ret
>00599C54    jmp         @HandleFinally
>00599C59    jmp         00599C3B
 00599C5B    pop         ebx
 00599C5C    mov         esp,ebp
 00599C5E    pop         ebp
 00599C5F    ret
end;*}

//00599C60
constructor TCustomMemo.Create(AOwner:TComponent);
begin
{*
 00599C60    push        ebp
 00599C61    mov         ebp,esp
 00599C63    add         esp,0FFFFFFF4
 00599C66    test        dl,dl
>00599C68    je          00599C72
 00599C6A    add         esp,0FFFFFFF0
 00599C6D    call        @ClassCreate
 00599C72    mov         dword ptr [ebp-0C],ecx
 00599C75    mov         byte ptr [ebp-5],dl
 00599C78    mov         dword ptr [ebp-4],eax
 00599C7B    mov         ecx,dword ptr [ebp-0C]
 00599C7E    xor         edx,edx
 00599C80    mov         eax,dword ptr [ebp-4]
 00599C83    call        TCustomEdit.Create
 00599C88    mov         edx,0B9
 00599C8D    mov         eax,dword ptr [ebp-4]
 00599C90    call        TControl.SetWidth
 00599C95    mov         edx,59
 00599C9A    mov         eax,dword ptr [ebp-4]
 00599C9D    call        TControl.SetHeight
 00599CA2    xor         edx,edx
 00599CA4    mov         eax,dword ptr [ebp-4]
 00599CA7    mov         ecx,dword ptr [eax]
 00599CA9    call        dword ptr [ecx+5C];TCSpinEdit.SetAutoSize
 00599CAC    mov         eax,dword ptr [ebp-4]
 00599CAF    mov         byte ptr [eax+226],1;TCustomMemo.FWordWrap:Boolean
 00599CB6    mov         eax,dword ptr [ebp-4]
 00599CB9    mov         byte ptr [eax+227],1;TCustomMemo.FWantReturns:Boolean
 00599CC0    mov         dl,1
 00599CC2    mov         eax,[00597AC0];TMemoStrings
 00599CC7    call        TObject.Create;TMemoStrings.Create
 00599CCC    mov         edx,dword ptr [ebp-4]
 00599CCF    mov         dword ptr [edx+220],eax;TCustomMemo.FLines:TStrings
 00599CD5    mov         eax,dword ptr [ebp-4]
 00599CD8    mov         eax,dword ptr [eax+220];TCustomMemo.FLines:TStrings
 00599CDE    mov         edx,dword ptr [ebp-4]
 00599CE1    mov         dword ptr [eax+10],edx
 00599CE4    mov         eax,dword ptr [ebp-4]
 00599CE7    cmp         byte ptr [ebp-5],0
>00599CEB    je          00599CFC
 00599CED    call        @AfterConstruction
 00599CF2    pop         dword ptr fs:[0]
 00599CF9    add         esp,0C
 00599CFC    mov         eax,dword ptr [ebp-4]
 00599CFF    mov         esp,ebp
 00599D01    pop         ebp
 00599D02    ret
*}
end;

//00599D04
destructor TCustomMemo.Destroy;
begin
{*
 00599D04    push        ebp
 00599D05    mov         ebp,esp
 00599D07    add         esp,0FFFFFFF8
 00599D0A    call        @BeforeDestruction
 00599D0F    mov         byte ptr [ebp-5],dl
 00599D12    mov         dword ptr [ebp-4],eax
 00599D15    mov         eax,dword ptr [ebp-4]
 00599D18    mov         eax,dword ptr [eax+220];TCustomMemo.FLines:TStrings
 00599D1E    call        TObject.Free
 00599D23    mov         dl,byte ptr [ebp-5]
 00599D26    and         dl,0FC
 00599D29    mov         eax,dword ptr [ebp-4]
 00599D2C    call        TWinControl.Destroy
 00599D31    cmp         byte ptr [ebp-5],0
>00599D35    jle         00599D3F
 00599D37    mov         eax,dword ptr [ebp-4]
 00599D3A    call        @ClassDestroy
 00599D3F    pop         ecx
 00599D40    pop         ecx
 00599D41    pop         ebp
 00599D42    ret
*}
end;

//00599D44
{*procedure sub_00599D44(?:?);
begin
 00599D44    push        ebp
 00599D45    mov         ebp,esp
 00599D47    add         esp,0FFFFFFF8
 00599D4A    push        esi
 00599D4B    mov         dword ptr [ebp-8],edx
 00599D4E    mov         dword ptr [ebp-4],eax
 00599D51    mov         edx,dword ptr [ebp-8]
 00599D54    mov         eax,dword ptr [ebp-4]
 00599D57    call        005991BC
 00599D5C    mov         eax,dword ptr [ebp-4]
 00599D5F    mov         si,0FFC8
 00599D63    call        @CallDynaInst;TControl.sub_005F40CC
 00599D68    and         eax,7F
 00599D6B    lea         eax,[eax+eax*2]
 00599D6E    lea         eax,[eax*4+6E3A8C]
 00599D75    mov         edx,dword ptr [ebp-4]
 00599D78    movzx       edx,byte ptr [edx+224];TCustomMemo.FAlignment:TAlignment
 00599D7F    mov         eax,dword ptr [eax+edx*4]
 00599D82    mov         edx,dword ptr [ebp-8]
 00599D85    mov         edx,dword ptr [edx+4]
 00599D88    mov         ecx,dword ptr [ebp-4]
 00599D8B    movzx       ecx,byte ptr [ecx+226]
 00599D92    mov         ecx,dword ptr [ecx*4+6E3AB4]
 00599D99    not         ecx
 00599D9B    and         edx,ecx
 00599D9D    or          edx,4
 00599DA0    or          eax,edx
 00599DA2    mov         edx,dword ptr [ebp-4]
 00599DA5    movzx       edx,byte ptr [edx+225];TCustomMemo.FScrollBars:TScrollStyle
 00599DAC    or          eax,dword ptr [edx*4+6E3AA4]
 00599DB3    mov         edx,dword ptr [ebp-8]
 00599DB6    mov         dword ptr [edx+4],eax
 00599DB9    pop         esi
 00599DBA    pop         ecx
 00599DBB    pop         ecx
 00599DBC    pop         ebp
 00599DBD    ret
end;*}

//00599DC0
{*procedure sub_00599DC0(?:?);
begin
 00599DC0    push        ebp
 00599DC1    mov         ebp,esp
 00599DC3    add         esp,0FFFFFFF8
 00599DC6    mov         dword ptr [ebp-8],edx
 00599DC9    mov         dword ptr [ebp-4],eax
 00599DCC    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 00599DD1    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>00599DD5    je          00599E7B
 00599DDB    mov         eax,[006EA0EC];^gvar_006E498C
 00599DE0    cmp         dword ptr [eax],2
>00599DE3    je          00599E7B
 00599DE9    mov         eax,dword ptr [ebp-8]
 00599DEC    test        byte ptr [eax+5],8
>00599DF0    je          00599E7B
 00599DF6    mov         eax,dword ptr [ebp-8]
 00599DF9    mov         eax,dword ptr [eax+20]
 00599DFC    push        eax
 00599DFD    mov         eax,[006EA390];0x0 gvar_006EA390
 00599E02    push        eax
 00599E03    push        0
 00599E05    mov         eax,dword ptr [ebp-8]
 00599E08    mov         eax,dword ptr [eax+1C]
 00599E0B    push        eax
 00599E0C    mov         eax,dword ptr [ebp-8]
 00599E0F    mov         eax,dword ptr [eax+18]
 00599E12    push        eax
 00599E13    mov         eax,dword ptr [ebp-8]
 00599E16    mov         eax,dword ptr [eax+14]
 00599E19    push        eax
 00599E1A    mov         eax,dword ptr [ebp-8]
 00599E1D    mov         eax,dword ptr [eax+10]
 00599E20    push        eax
 00599E21    mov         eax,dword ptr [ebp-8]
 00599E24    mov         eax,dword ptr [eax+0C]
 00599E27    push        eax
 00599E28    mov         eax,dword ptr [ebp-8]
 00599E2B    mov         eax,dword ptr [eax+4]
 00599E2E    and         eax,0FFFFF7FF
 00599E33    push        eax
 00599E34    push        599EF4
 00599E39    mov         eax,dword ptr [ebp-8]
 00599E3C    add         eax,4C
 00599E3F    push        eax
 00599E40    mov         eax,dword ptr [ebp-8]
 00599E43    mov         eax,dword ptr [eax+8]
 00599E46    push        eax
 00599E47    call        USER32.CreateWindowExA
 00599E4C    mov         edx,dword ptr [ebp-4]
 00599E4F    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 00599E55    mov         eax,dword ptr [ebp-4]
 00599E58    cmp         dword ptr [eax+180],0;TCustomMemo.FHandle:HWND
>00599E5F    je          00599ED5
 00599E61    push        0
 00599E63    push        1
 00599E65    push        0CF
 00599E6A    mov         eax,dword ptr [ebp-4]
 00599E6D    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 00599E73    push        eax
 00599E74    call        USER32.SendMessageA
>00599E79    jmp         00599ED5
 00599E7B    mov         eax,dword ptr [ebp-8]
 00599E7E    mov         eax,dword ptr [eax+20]
 00599E81    push        eax
 00599E82    mov         eax,[006EA390];0x0 gvar_006EA390
 00599E87    push        eax
 00599E88    push        0
 00599E8A    mov         eax,dword ptr [ebp-8]
 00599E8D    mov         eax,dword ptr [eax+1C]
 00599E90    push        eax
 00599E91    mov         eax,dword ptr [ebp-8]
 00599E94    mov         eax,dword ptr [eax+18]
 00599E97    push        eax
 00599E98    mov         eax,dword ptr [ebp-8]
 00599E9B    mov         eax,dword ptr [eax+14]
 00599E9E    push        eax
 00599E9F    mov         eax,dword ptr [ebp-8]
 00599EA2    mov         eax,dword ptr [eax+10]
 00599EA5    push        eax
 00599EA6    mov         eax,dword ptr [ebp-8]
 00599EA9    mov         eax,dword ptr [eax+0C]
 00599EAC    push        eax
 00599EAD    mov         eax,dword ptr [ebp-8]
 00599EB0    mov         eax,dword ptr [eax+4]
 00599EB3    push        eax
 00599EB4    push        599EF4
 00599EB9    mov         eax,dword ptr [ebp-8]
 00599EBC    add         eax,4C
 00599EBF    push        eax
 00599EC0    mov         eax,dword ptr [ebp-8]
 00599EC3    mov         eax,dword ptr [eax+8]
 00599EC6    push        eax
 00599EC7    call        USER32.CreateWindowExA
 00599ECC    mov         edx,dword ptr [ebp-4]
 00599ECF    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 00599ED5    mov         eax,dword ptr [ebp-8]
 00599ED8    mov         eax,dword ptr [eax]
 00599EDA    push        eax
 00599EDB    push        0
 00599EDD    push        0C
 00599EDF    mov         eax,dword ptr [ebp-4]
 00599EE2    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 00599EE8    push        eax
 00599EE9    call        USER32.SendMessageA
 00599EEE    pop         ecx
 00599EEF    pop         ecx
 00599EF0    pop         ebp
 00599EF1    ret
end;*}

//00599EF8
{*procedure sub_00599EF8(?:?);
begin
 00599EF8    push        ebp
 00599EF9    mov         ebp,esp
 00599EFB    add         esp,0FFFFFFF8
 00599EFE    mov         dword ptr [ebp-8],edx
 00599F01    mov         dword ptr [ebp-4],eax
 00599F04    push        0
 00599F06    push        0
 00599F08    push        0B0
 00599F0D    mov         eax,dword ptr [ebp-4]
 00599F10    call        TWinControl.GetHandle
 00599F15    push        eax
 00599F16    call        USER32.SendMessageA
 00599F1B    shr         eax,10
 00599F1E    movzx       eax,ax
 00599F21    mov         edx,dword ptr [ebp-8]
 00599F24    mov         dword ptr [edx],eax
 00599F26    push        0
 00599F28    mov         eax,dword ptr [ebp-8]
 00599F2B    mov         eax,dword ptr [eax]
 00599F2D    push        eax
 00599F2E    push        0C9
 00599F33    mov         eax,dword ptr [ebp-4]
 00599F36    call        TWinControl.GetHandle
 00599F3B    push        eax
 00599F3C    call        USER32.SendMessageA
 00599F41    mov         edx,dword ptr [ebp-8]
 00599F44    mov         dword ptr [edx+4],eax
 00599F47    push        0
 00599F49    push        0FF
 00599F4B    push        0BB
 00599F50    mov         eax,dword ptr [ebp-4]
 00599F53    call        TWinControl.GetHandle
 00599F58    push        eax
 00599F59    call        USER32.SendMessageA
 00599F5E    mov         edx,dword ptr [ebp-8]
 00599F61    sub         dword ptr [edx],eax
 00599F63    pop         ecx
 00599F64    pop         ecx
 00599F65    pop         ebp
 00599F66    ret
end;*}

//00599F68
{*procedure sub_00599F68(?:?);
begin
 00599F68    push        ebp
 00599F69    mov         ebp,esp
 00599F6B    add         esp,0FFFFFFF4
 00599F6E    mov         dword ptr [ebp-8],edx
 00599F71    mov         dword ptr [ebp-4],eax
 00599F74    push        0
 00599F76    mov         eax,dword ptr [ebp-8]
 00599F79    mov         eax,dword ptr [eax+4]
 00599F7C    push        eax
 00599F7D    push        0BB
 00599F82    mov         eax,dword ptr [ebp-4]
 00599F85    call        TWinControl.GetHandle
 00599F8A    push        eax
 00599F8B    call        USER32.SendMessageA
 00599F90    mov         edx,dword ptr [ebp-8]
 00599F93    add         eax,dword ptr [edx]
 00599F95    mov         dword ptr [ebp-0C],eax
 00599F98    mov         eax,dword ptr [ebp-0C]
 00599F9B    push        eax
 00599F9C    mov         eax,dword ptr [ebp-0C]
 00599F9F    push        eax
 00599FA0    push        0B1
 00599FA5    mov         eax,dword ptr [ebp-4]
 00599FA8    call        TWinControl.GetHandle
 00599FAD    push        eax
 00599FAE    call        USER32.SendMessageA
 00599FB3    mov         esp,ebp
 00599FB5    pop         ebp
 00599FB6    ret
end;*}

//00599FB8
procedure TCustomMemo.sub_00599FB8;
begin
{*
 00599FB8    push        ebp
 00599FB9    mov         ebp,esp
 00599FBB    add         esp,0FFFFFFF8
 00599FBE    mov         dword ptr [ebp-4],eax
 00599FC1    mov         eax,dword ptr [ebp-4]
 00599FC4    mov         al,byte ptr [eax+224];TCustomMemo.FAlignment:TAlignment
 00599FCA    mov         byte ptr [ebp-5],al
 00599FCD    mov         al,byte ptr [ebp-5]
 00599FD0    pop         ecx
 00599FD1    pop         ecx
 00599FD2    pop         ebp
 00599FD3    ret
*}
end;

//00599FD4
procedure TCustomMemo.Loaded;
begin
{*
 00599FD4    push        ebp
 00599FD5    mov         ebp,esp
 00599FD7    push        ecx
 00599FD8    mov         dword ptr [ebp-4],eax
 00599FDB    mov         eax,dword ptr [ebp-4]
 00599FDE    call        TControl.Loaded
 00599FE3    xor         edx,edx
 00599FE5    mov         eax,dword ptr [ebp-4]
 00599FE8    call        TCustomEdit.SetModified
 00599FED    pop         ecx
 00599FEE    pop         ebp
 00599FEF    ret
*}
end;

//00599FF0
procedure TMemo.SetAlignment(Value:TAlignment);
begin
{*
 00599FF0    push        ebp
 00599FF1    mov         ebp,esp
 00599FF3    add         esp,0FFFFFFF8
 00599FF6    mov         byte ptr [ebp-5],dl
 00599FF9    mov         dword ptr [ebp-4],eax
 00599FFC    mov         eax,dword ptr [ebp-4]
 00599FFF    mov         al,byte ptr [eax+224];TMemo.FAlignment:TAlignment
 0059A005    cmp         al,byte ptr [ebp-5]
>0059A008    je          0059A01E
 0059A00A    mov         al,byte ptr [ebp-5]
 0059A00D    mov         edx,dword ptr [ebp-4]
 0059A010    mov         byte ptr [edx+224],al;TMemo.FAlignment:TAlignment
 0059A016    mov         eax,dword ptr [ebp-4]
 0059A019    call        TWinControl.RecreateWnd
 0059A01E    pop         ecx
 0059A01F    pop         ecx
 0059A020    pop         ebp
 0059A021    ret
*}
end;

//0059A024
procedure TMemo.SetLines(Value:TStrings);
begin
{*
 0059A024    push        ebp
 0059A025    mov         ebp,esp
 0059A027    add         esp,0FFFFFFF8
 0059A02A    mov         dword ptr [ebp-8],edx
 0059A02D    mov         dword ptr [ebp-4],eax
 0059A030    mov         edx,dword ptr [ebp-8]
 0059A033    mov         eax,dword ptr [ebp-4]
 0059A036    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0059A03C    mov         ecx,dword ptr [eax]
 0059A03E    call        dword ptr [ecx+8];TStrings.Assign
 0059A041    pop         ecx
 0059A042    pop         ecx
 0059A043    pop         ebp
 0059A044    ret
*}
end;

//0059A048
procedure TMemo.SetScrollBars(Value:TScrollStyle);
begin
{*
 0059A048    push        ebp
 0059A049    mov         ebp,esp
 0059A04B    add         esp,0FFFFFFF8
 0059A04E    mov         byte ptr [ebp-5],dl
 0059A051    mov         dword ptr [ebp-4],eax
 0059A054    mov         eax,dword ptr [ebp-4]
 0059A057    mov         al,byte ptr [eax+225];TMemo.FScrollBars:TScrollStyle
 0059A05D    cmp         al,byte ptr [ebp-5]
>0059A060    je          0059A076
 0059A062    mov         al,byte ptr [ebp-5]
 0059A065    mov         edx,dword ptr [ebp-4]
 0059A068    mov         byte ptr [edx+225],al;TMemo.FScrollBars:TScrollStyle
 0059A06E    mov         eax,dword ptr [ebp-4]
 0059A071    call        TWinControl.RecreateWnd
 0059A076    pop         ecx
 0059A077    pop         ecx
 0059A078    pop         ebp
 0059A079    ret
*}
end;

//0059A07C
procedure TMemo.SetWordWrap(Value:Boolean);
begin
{*
 0059A07C    push        ebp
 0059A07D    mov         ebp,esp
 0059A07F    add         esp,0FFFFFFF8
 0059A082    mov         byte ptr [ebp-5],dl
 0059A085    mov         dword ptr [ebp-4],eax
 0059A088    mov         al,byte ptr [ebp-5]
 0059A08B    mov         edx,dword ptr [ebp-4]
 0059A08E    cmp         al,byte ptr [edx+226];TMemo.FWordWrap:Boolean
>0059A094    je          0059A0AA
 0059A096    mov         al,byte ptr [ebp-5]
 0059A099    mov         edx,dword ptr [ebp-4]
 0059A09C    mov         byte ptr [edx+226],al;TMemo.FWordWrap:Boolean
 0059A0A2    mov         eax,dword ptr [ebp-4]
 0059A0A5    call        TWinControl.RecreateWnd
 0059A0AA    pop         ecx
 0059A0AB    pop         ecx
 0059A0AC    pop         ebp
 0059A0AD    ret
*}
end;

//0059A0B0
{*procedure TCustomMemo.WMGetDlgCode(?:?);
begin
 0059A0B0    push        ebp
 0059A0B1    mov         ebp,esp
 0059A0B3    add         esp,0FFFFFFF8
 0059A0B6    mov         dword ptr [ebp-8],edx
 0059A0B9    mov         dword ptr [ebp-4],eax
 0059A0BC    mov         edx,dword ptr [ebp-8]
 0059A0BF    mov         eax,dword ptr [ebp-4]
 0059A0C2    mov         ecx,dword ptr [eax]
 0059A0C4    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 0059A0C7    mov         eax,dword ptr [ebp-4]
 0059A0CA    cmp         byte ptr [eax+228],0;TCustomMemo.FWantTabs:Boolean
>0059A0D1    je          0059A0DC
 0059A0D3    mov         eax,dword ptr [ebp-8]
 0059A0D6    or          dword ptr [eax+0C],2
>0059A0DA    jmp         0059A0E3
 0059A0DC    mov         eax,dword ptr [ebp-8]
 0059A0DF    and         dword ptr [eax+0C],0FFFFFFFD
 0059A0E3    mov         eax,dword ptr [ebp-4]
 0059A0E6    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>0059A0ED    jne         0059A0F6
 0059A0EF    mov         eax,dword ptr [ebp-8]
 0059A0F2    and         dword ptr [eax+0C],0FFFFFFFB
 0059A0F6    pop         ecx
 0059A0F7    pop         ecx
 0059A0F8    pop         ebp
 0059A0F9    ret
end;*}

//0059A0FC
{*procedure TCustomMemo.WMNCDestroy(?:?);
begin
 0059A0FC    push        ebp
 0059A0FD    mov         ebp,esp
 0059A0FF    add         esp,0FFFFFFF8
 0059A102    mov         dword ptr [ebp-8],edx
 0059A105    mov         dword ptr [ebp-4],eax
 0059A108    mov         edx,dword ptr [ebp-8]
 0059A10B    mov         eax,dword ptr [ebp-4]
 0059A10E    call        TWinControl.WMNCDestroy
 0059A113    pop         ecx
 0059A114    pop         ecx
 0059A115    pop         ebp
 0059A116    ret
end;*}

//0059A118
{*procedure TCustomMemo.sub_0059A118(?:?);
begin
 0059A118    push        ebp
 0059A119    mov         ebp,esp
 0059A11B    add         esp,0FFFFFFF8
 0059A11E    mov         dword ptr [ebp-8],edx
 0059A121    mov         dword ptr [ebp-4],eax
 0059A124    mov         edx,dword ptr [ebp-8]
 0059A127    mov         eax,dword ptr [ebp-4]
 0059A12A    call        TWinControl.sub_005FAA3C
 0059A12F    mov         eax,dword ptr [ebp-8]
 0059A132    cmp         byte ptr [eax],0D
>0059A135    jne         0059A149
 0059A137    mov         eax,dword ptr [ebp-4]
 0059A13A    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>0059A141    jne         0059A149
 0059A143    mov         eax,dword ptr [ebp-8]
 0059A146    mov         byte ptr [eax],0
 0059A149    pop         ecx
 0059A14A    pop         ecx
 0059A14B    pop         ebp
 0059A14C    ret
end;*}

//0059A150
{*function sub_0059A150:?;
begin
 0059A150    push        ebp
 0059A151    mov         ebp,esp
 0059A153    add         esp,0FFFFFFF8
 0059A156    mov         dword ptr [ebp-4],eax
 0059A159    push        0
 0059A15B    push        0
 0059A15D    push        146
 0059A162    mov         eax,dword ptr [ebp-4]
 0059A165    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...................FComboBox:TCustomCombo
 0059A168    call        TWinControl.GetHandle
 0059A16D    push        eax
 0059A16E    call        USER32.SendMessageA
 0059A173    mov         dword ptr [ebp-8],eax
 0059A176    mov         eax,dword ptr [ebp-8]
 0059A179    pop         ecx
 0059A17A    pop         ecx
 0059A17B    pop         ebp
 0059A17C    ret
end;*}

//0059A180
{*function sub_0059A180(?:?):?;
begin
 0059A180    push        ebp
 0059A181    mov         ebp,esp
 0059A183    add         esp,0FFFFFFF0
 0059A186    xor         ecx,ecx
 0059A188    mov         dword ptr [ebp-10],ecx
 0059A18B    mov         dword ptr [ebp-8],edx
 0059A18E    mov         dword ptr [ebp-4],eax
 0059A191    xor         eax,eax
 0059A193    push        ebp
 0059A194    push        59A1F5
 0059A199    push        dword ptr fs:[eax]
 0059A19C    mov         dword ptr fs:[eax],esp
 0059A19F    push        0
 0059A1A1    mov         eax,dword ptr [ebp-8]
 0059A1A4    push        eax
 0059A1A5    push        150
 0059A1AA    mov         eax,dword ptr [ebp-4]
 0059A1AD    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings....................FComboBox:TCustomCombo
 0059A1B0    call        TWinControl.GetHandle
 0059A1B5    push        eax
 0059A1B6    call        USER32.SendMessageA
 0059A1BB    mov         dword ptr [ebp-0C],eax
 0059A1BE    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0059A1C2    jne         0059A1DF
 0059A1C4    lea         edx,[ebp-10]
 0059A1C7    mov         eax,[006EA0AC];^gvar_0065504C
 0059A1CC    call        LoadResString
 0059A1D1    mov         edx,dword ptr [ebp-10]
 0059A1D4    mov         ecx,dword ptr [ebp-8]
 0059A1D7    mov         eax,dword ptr [ebp-4]
 0059A1DA    call        0064701C
 0059A1DF    xor         eax,eax
 0059A1E1    pop         edx
 0059A1E2    pop         ecx
 0059A1E3    pop         ecx
 0059A1E4    mov         dword ptr fs:[eax],edx
 0059A1E7    push        59A1FC
 0059A1EC    lea         eax,[ebp-10]
 0059A1EF    call        @LStrClr
 0059A1F4    ret
>0059A1F5    jmp         @HandleFinally
>0059A1FA    jmp         0059A1EC
 0059A1FC    mov         eax,dword ptr [ebp-0C]
 0059A1FF    mov         esp,ebp
 0059A201    pop         ebp
 0059A202    ret
end;*}

//0059A204
{*procedure sub_0059A204(?:?; ?:?);
begin
 0059A204    push        ebp
 0059A205    mov         ebp,esp
 0059A207    add         esp,0FFFFFFF4
 0059A20A    mov         dword ptr [ebp-0C],ecx
 0059A20D    mov         dword ptr [ebp-8],edx
 0059A210    mov         dword ptr [ebp-4],eax
 0059A213    mov         eax,dword ptr [ebp-0C]
 0059A216    push        eax
 0059A217    mov         eax,dword ptr [ebp-8]
 0059A21A    push        eax
 0059A21B    push        151
 0059A220    mov         eax,dword ptr [ebp-4]
 0059A223    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.....................FComboBox:TCustomCombo
 0059A226    call        TWinControl.GetHandle
 0059A22B    push        eax
 0059A22C    call        USER32.SendMessageA
 0059A231    mov         esp,ebp
 0059A233    pop         ebp
 0059A234    ret
end;*}

//0059A238
{*procedure sub_0059A238(?:?; ?:?);
begin
 0059A238    push        ebp
 0059A239    mov         ebp,esp
 0059A23B    add         esp,0FFFFF004
 0059A241    push        eax
 0059A242    add         esp,0FFFFFFF0
 0059A245    mov         dword ptr [ebp-0C],ecx
 0059A248    mov         dword ptr [ebp-8],edx
 0059A24B    mov         dword ptr [ebp-4],eax
 0059A24E    lea         eax,[ebp-1010]
 0059A254    push        eax
 0059A255    mov         eax,dword ptr [ebp-8]
 0059A258    push        eax
 0059A259    push        148
 0059A25E    mov         eax,dword ptr [ebp-4]
 0059A261    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings......................FComboBox:TCustomComb...
 0059A264    call        TWinControl.GetHandle
 0059A269    push        eax
 0059A26A    call        USER32.SendMessageA
 0059A26F    mov         dword ptr [ebp-10],eax
 0059A272    cmp         dword ptr [ebp-10],0FFFFFFFF
>0059A276    jne         0059A27D
 0059A278    xor         eax,eax
 0059A27A    mov         dword ptr [ebp-10],eax
 0059A27D    lea         edx,[ebp-1010]
 0059A283    mov         eax,dword ptr [ebp-0C]
 0059A286    mov         ecx,dword ptr [ebp-10]
 0059A289    call        @LStrFromPCharLen
 0059A28E    mov         esp,ebp
 0059A290    pop         ebp
 0059A291    ret
end;*}

//0059A294
procedure TCustomComboBoxStrings.Clear;
begin
{*
 0059A294    push        ebp
 0059A295    mov         ebp,esp
 0059A297    add         esp,0FFFFFFF8
 0059A29A    xor         edx,edx
 0059A29C    mov         dword ptr [ebp-8],edx
 0059A29F    mov         dword ptr [ebp-4],eax
 0059A2A2    xor         eax,eax
 0059A2A4    push        ebp
 0059A2A5    push        59A30A
 0059A2AA    push        dword ptr fs:[eax]
 0059A2AD    mov         dword ptr fs:[eax],esp
 0059A2B0    lea         edx,[ebp-8]
 0059A2B3    mov         eax,dword ptr [ebp-4]
 0059A2B6    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.......................FComboBox:TCustomCom...
 0059A2B9    call        TTabPage.GetCaption
 0059A2BE    push        0
 0059A2C0    push        0
 0059A2C2    push        14B
 0059A2C7    mov         eax,dword ptr [ebp-4]
 0059A2CA    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings........................FComboBox:TCustomCo...
 0059A2CD    call        TWinControl.GetHandle
 0059A2D2    push        eax
 0059A2D3    call        USER32.SendMessageA
 0059A2D8    mov         edx,dword ptr [ebp-8]
 0059A2DB    mov         eax,dword ptr [ebp-4]
 0059A2DE    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.........................FComboBox:TCustomC...
 0059A2E1    call        TTabPage.SetCaption
 0059A2E6    mov         eax,dword ptr [ebp-4]
 0059A2E9    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..........................FComboBox:TCustom...
 0059A2EC    mov         edx,dword ptr [eax]
 0059A2EE    call        dword ptr [edx+88];TCustomCombo.sub_005FBF08
 0059A2F4    xor         eax,eax
 0059A2F6    pop         edx
 0059A2F7    pop         ecx
 0059A2F8    pop         ecx
 0059A2F9    mov         dword ptr fs:[eax],edx
 0059A2FC    push        59A311
 0059A301    lea         eax,[ebp-8]
 0059A304    call        @LStrClr
 0059A309    ret
>0059A30A    jmp         @HandleFinally
>0059A30F    jmp         0059A301
 0059A311    pop         ecx
 0059A312    pop         ecx
 0059A313    pop         ebp
 0059A314    ret
*}
end;

//0059A318
{*procedure sub_0059A318(?:?);
begin
 0059A318    push        ebp
 0059A319    mov         ebp,esp
 0059A31B    add         esp,0FFFFFFF8
 0059A31E    mov         dword ptr [ebp-8],edx
 0059A321    mov         dword ptr [ebp-4],eax
 0059A324    push        0
 0059A326    mov         eax,dword ptr [ebp-8]
 0059A329    push        eax
 0059A32A    push        144
 0059A32F    mov         eax,dword ptr [ebp-4]
 0059A332    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...........................FComboBox:TCusto...
 0059A335    call        TWinControl.GetHandle
 0059A33A    push        eax
 0059A33B    call        USER32.SendMessageA
 0059A340    pop         ecx
 0059A341    pop         ecx
 0059A342    pop         ebp
 0059A343    ret
end;*}

//0059A344
{*function sub_0059A344(?:?):?;
begin
 0059A344    push        ebp
 0059A345    mov         ebp,esp
 0059A347    add         esp,0FFFFFFF4
 0059A34A    mov         dword ptr [ebp-8],edx
 0059A34D    mov         dword ptr [ebp-4],eax
 0059A350    mov         eax,dword ptr [ebp-8]
 0059A353    call        @LStrToPChar
 0059A358    push        eax
 0059A359    push        0FF
 0059A35B    push        158
 0059A360    mov         eax,dword ptr [ebp-4]
 0059A363    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings............................FComboBox:TCust...
 0059A366    call        TWinControl.GetHandle
 0059A36B    push        eax
 0059A36C    call        USER32.SendMessageA
 0059A371    mov         dword ptr [ebp-0C],eax
 0059A374    mov         eax,dword ptr [ebp-0C]
 0059A377    mov         esp,ebp
 0059A379    pop         ebp
 0059A37A    ret
end;*}

//0059A37C
{*procedure sub_0059A37C(?:?);
begin
 0059A37C    push        ebp
 0059A37D    mov         ebp,esp
 0059A37F    add         esp,0FFFFFFF8
 0059A382    mov         byte ptr [ebp-5],dl
 0059A385    mov         dword ptr [ebp-4],eax
 0059A388    push        0
 0059A38A    mov         al,byte ptr [ebp-5]
 0059A38D    xor         al,1
 0059A38F    and         eax,7F
 0059A392    push        eax
 0059A393    push        0B
 0059A395    mov         eax,dword ptr [ebp-4]
 0059A398    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.............................FComboBox:TCus...
 0059A39B    call        TWinControl.GetHandle
 0059A3A0    push        eax
 0059A3A1    call        USER32.SendMessageA
 0059A3A6    cmp         byte ptr [ebp-5],0
>0059A3AA    jne         0059A3B7
 0059A3AC    mov         eax,dword ptr [ebp-4]
 0059A3AF    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..............................FComboBox:TCu...
 0059A3B2    call        TControl.Refresh
 0059A3B7    pop         ecx
 0059A3B8    pop         ecx
 0059A3B9    pop         ebp
 0059A3BA    ret
end;*}

//0059A3BC
{*function sub_0059A3BC(?:?):?;
begin
 0059A3BC    push        ebp
 0059A3BD    mov         ebp,esp
 0059A3BF    add         esp,0FFFFFFF0
 0059A3C2    xor         ecx,ecx
 0059A3C4    mov         dword ptr [ebp-10],ecx
 0059A3C7    mov         dword ptr [ebp-8],edx
 0059A3CA    mov         dword ptr [ebp-4],eax
 0059A3CD    xor         eax,eax
 0059A3CF    push        ebp
 0059A3D0    push        59A43C
 0059A3D5    push        dword ptr fs:[eax]
 0059A3D8    mov         dword ptr fs:[eax],esp
 0059A3DB    mov         eax,dword ptr [ebp-8]
 0059A3DE    call        @LStrToPChar
 0059A3E3    push        eax
 0059A3E4    push        0
 0059A3E6    push        143
 0059A3EB    mov         eax,dword ptr [ebp-4]
 0059A3EE    mov         eax,dword ptr [eax+10];TComboBoxStrings...............................FComboBox:TCustomC...
 0059A3F1    call        TWinControl.GetHandle
 0059A3F6    push        eax
 0059A3F7    call        USER32.SendMessageA
 0059A3FC    mov         dword ptr [ebp-0C],eax
 0059A3FF    cmp         dword ptr [ebp-0C],0
>0059A403    jge         0059A426
 0059A405    lea         edx,[ebp-10]
 0059A408    mov         eax,[006E9F84];^gvar_0063CD18
 0059A40D    call        LoadResString
 0059A412    mov         ecx,dword ptr [ebp-10]
 0059A415    mov         dl,1
 0059A417    mov         eax,[006421E8];EOutOfResources
 0059A41C    call        Exception.Create;EOutOfResources.Create
 0059A421    call        @RaiseExcept
 0059A426    xor         eax,eax
 0059A428    pop         edx
 0059A429    pop         ecx
 0059A42A    pop         ecx
 0059A42B    mov         dword ptr fs:[eax],edx
 0059A42E    push        59A443
 0059A433    lea         eax,[ebp-10]
 0059A436    call        @LStrClr
 0059A43B    ret
>0059A43C    jmp         @HandleFinally
>0059A441    jmp         0059A433
 0059A443    mov         eax,dword ptr [ebp-0C]
 0059A446    mov         esp,ebp
 0059A448    pop         ebp
 0059A449    ret
end;*}

//0059A44C
{*procedure sub_0059A44C(?:?; ?:?);
begin
 0059A44C    push        ebp
 0059A44D    mov         ebp,esp
 0059A44F    add         esp,0FFFFFFF0
 0059A452    push        ebx
 0059A453    xor         ebx,ebx
 0059A455    mov         dword ptr [ebp-10],ebx
 0059A458    mov         dword ptr [ebp-0C],ecx
 0059A45B    mov         dword ptr [ebp-8],edx
 0059A45E    mov         dword ptr [ebp-4],eax
 0059A461    xor         eax,eax
 0059A463    push        ebp
 0059A464    push        59A4CD
 0059A469    push        dword ptr fs:[eax]
 0059A46C    mov         dword ptr fs:[eax],esp
 0059A46F    mov         eax,dword ptr [ebp-0C]
 0059A472    call        @LStrToPChar
 0059A477    push        eax
 0059A478    mov         eax,dword ptr [ebp-8]
 0059A47B    push        eax
 0059A47C    push        14A
 0059A481    mov         eax,dword ptr [ebp-4]
 0059A484    mov         eax,dword ptr [eax+10];TComboBoxStrings................................FComboBox:TCustom...
 0059A487    call        TWinControl.GetHandle
 0059A48C    push        eax
 0059A48D    call        USER32.SendMessageA
 0059A492    test        eax,eax
>0059A494    jge         0059A4B7
 0059A496    lea         edx,[ebp-10]
 0059A499    mov         eax,[006E9F84];^gvar_0063CD18
 0059A49E    call        LoadResString
 0059A4A3    mov         ecx,dword ptr [ebp-10]
 0059A4A6    mov         dl,1
 0059A4A8    mov         eax,[006421E8];EOutOfResources
 0059A4AD    call        Exception.Create;EOutOfResources.Create
 0059A4B2    call        @RaiseExcept
 0059A4B7    xor         eax,eax
 0059A4B9    pop         edx
 0059A4BA    pop         ecx
 0059A4BB    pop         ecx
 0059A4BC    mov         dword ptr fs:[eax],edx
 0059A4BF    push        59A4D4
 0059A4C4    lea         eax,[ebp-10]
 0059A4C7    call        @LStrClr
 0059A4CC    ret
>0059A4CD    jmp         @HandleFinally
>0059A4D2    jmp         0059A4C4
 0059A4D4    pop         ebx
 0059A4D5    mov         esp,ebp
 0059A4D7    pop         ebp
 0059A4D8    ret
end;*}

//0059A4DC
constructor TCustomCombo.Create(AOwner:TComponent);
begin
{*
 0059A4DC    push        ebp
 0059A4DD    mov         ebp,esp
 0059A4DF    add         esp,0FFFFFFF4
 0059A4E2    test        dl,dl
>0059A4E4    je          0059A4EE
 0059A4E6    add         esp,0FFFFFFF0
 0059A4E9    call        @ClassCreate
 0059A4EE    mov         dword ptr [ebp-0C],ecx
 0059A4F1    mov         byte ptr [ebp-5],dl
 0059A4F4    mov         dword ptr [ebp-4],eax
 0059A4F7    mov         ecx,dword ptr [ebp-0C]
 0059A4FA    xor         edx,edx
 0059A4FC    mov         eax,dword ptr [ebp-4]
 0059A4FF    call        TWinControl.Create
 0059A504    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059A509    cmp         byte ptr [eax],0
>0059A50C    je          0059A51C
 0059A50E    mov         eax,dword ptr [ebp-4]
 0059A511    mov         edx,dword ptr ds:[59A600];0x42A2 gvar_0059A600
 0059A517    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
>0059A51A    jmp         0059A528
 0059A51C    mov         eax,dword ptr [ebp-4]
 0059A51F    mov         edx,dword ptr ds:[59A604];0x42B2 gvar_0059A604
 0059A525    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
 0059A528    mov         edx,91
 0059A52D    mov         eax,dword ptr [ebp-4]
 0059A530    call        TControl.SetWidth
 0059A535    mov         edx,19
 0059A53A    mov         eax,dword ptr [ebp-4]
 0059A53D    call        TControl.SetHeight
 0059A542    mov         dl,1
 0059A544    mov         eax,dword ptr [ebp-4]
 0059A547    call        TCCalendar.SetTabStop
 0059A54C    xor         edx,edx
 0059A54E    mov         eax,dword ptr [ebp-4]
 0059A551    call        TCCalendar.SetParentColor
 0059A556    mov         dl,1
 0059A558    mov         eax,[005ED808];TControlCanvas
 0059A55D    call        TCanvas.Create;TControlCanvas.Create
 0059A562    mov         edx,dword ptr [ebp-4]
 0059A565    mov         dword ptr [edx+208],eax;TCustomCombo.FCanvas:TCanvas
 0059A56B    mov         eax,dword ptr [ebp-4]
 0059A56E    mov         eax,dword ptr [eax+208];TCustomCombo.FCanvas:TCanvas
 0059A574    mov         edx,dword ptr [ebp-4]
 0059A577    call        005F1A7C
 0059A57C    mov         eax,dword ptr [ebp-4]
 0059A57F    mov         dword ptr [eax+238],10;TCustomCombo.FItemHeight:Integer
 0059A589    mov         eax,dword ptr [ebp-4]
 0059A58C    push        eax
 0059A58D    push        59A9FC
 0059A592    call        006519D4
 0059A597    mov         edx,dword ptr [ebp-4]
 0059A59A    mov         dword ptr [edx+24C],eax;TCustomCombo.FEditInstance:Pointer
 0059A5A0    mov         eax,dword ptr [ebp-4]
 0059A5A3    push        eax
 0059A5A4    push        59AB1C
 0059A5A9    call        006519D4
 0059A5AE    mov         edx,dword ptr [ebp-4]
 0059A5B1    mov         dword ptr [edx+254],eax;TCustomCombo.FListInstance:Pointer
 0059A5B7    mov         eax,dword ptr [ebp-4]
 0059A5BA    mov         dword ptr [eax+210],8;TCustomCombo.FDropDownCount:Integer
 0059A5C4    mov         eax,dword ptr [ebp-4]
 0059A5C7    mov         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
 0059A5D1    mov         eax,dword ptr [ebp-4]
 0059A5D4    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 0059A5DE    mov         eax,dword ptr [ebp-4]
 0059A5E1    cmp         byte ptr [ebp-5],0
>0059A5E5    je          0059A5F6
 0059A5E7    call        @AfterConstruction
 0059A5EC    pop         dword ptr fs:[0]
 0059A5F3    add         esp,0C
 0059A5F6    mov         eax,dword ptr [ebp-4]
 0059A5F9    mov         esp,ebp
 0059A5FB    pop         ebp
 0059A5FC    ret
*}
end;

//0059A608
destructor TCustomCombo.Destroy;
begin
{*
 0059A608    push        ebp
 0059A609    mov         ebp,esp
 0059A60B    add         esp,0FFFFFFF8
 0059A60E    call        @BeforeDestruction
 0059A613    mov         byte ptr [ebp-5],dl
 0059A616    mov         dword ptr [ebp-4],eax
 0059A619    mov         eax,dword ptr [ebp-4]
 0059A61C    call        TWinControl.HandleAllocated
 0059A621    test        al,al
>0059A623    je          0059A630
 0059A625    mov         eax,dword ptr [ebp-4]
 0059A628    mov         edx,dword ptr [eax]
 0059A62A    call        dword ptr [edx+0AC];TCustomCombo.DestroyWindowHandle
 0059A630    mov         eax,dword ptr [ebp-4]
 0059A633    mov         eax,dword ptr [eax+254];TCustomCombo.FListInstance:Pointer
 0059A639    call        00651AB4
 0059A63E    mov         eax,dword ptr [ebp-4]
 0059A641    mov         eax,dword ptr [eax+24C];TCustomCombo.FEditInstance:Pointer
 0059A647    call        00651AB4
 0059A64C    mov         eax,dword ptr [ebp-4]
 0059A64F    mov         eax,dword ptr [eax+208];TCustomCombo.FCanvas:TCanvas
 0059A655    call        TObject.Free
 0059A65A    mov         dl,byte ptr [ebp-5]
 0059A65D    and         dl,0FC
 0059A660    mov         eax,dword ptr [ebp-4]
 0059A663    call        TWinControl.Destroy
 0059A668    cmp         byte ptr [ebp-5],0
>0059A66C    jle         0059A676
 0059A66E    mov         eax,dword ptr [ebp-4]
 0059A671    call        @ClassDestroy
 0059A676    pop         ecx
 0059A677    pop         ecx
 0059A678    pop         ebp
 0059A679    ret
*}
end;

//0059A67C
procedure TCustomCombo.Clear;
begin
{*
 0059A67C    push        ebp
 0059A67D    mov         ebp,esp
 0059A67F    push        ecx
 0059A680    mov         dword ptr [ebp-4],eax
 0059A683    mov         edx,59A6B0;'
 0059A688    mov         eax,dword ptr [ebp-4]
 0059A68B    call        005F36C8
 0059A690    mov         eax,dword ptr [ebp-4]
 0059A693    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059A699    mov         edx,dword ptr [eax]
 0059A69B    call        dword ptr [edx+44];TStrings.Clear
 0059A69E    mov         eax,dword ptr [ebp-4]
 0059A6A1    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 0059A6AB    pop         ecx
 0059A6AC    pop         ebp
 0059A6AD    ret
*}
end;

//0059A6B4
procedure TCustomCombo.DestroyWindowHandle;
begin
{*
 0059A6B4    push        ebp
 0059A6B5    mov         ebp,esp
 0059A6B7    push        ecx
 0059A6B8    mov         dword ptr [ebp-4],eax
 0059A6BB    mov         eax,dword ptr [ebp-4]
 0059A6BE    call        TWinControl.DestroyWindowHandle
 0059A6C3    mov         eax,dword ptr [ebp-4]
 0059A6C6    xor         edx,edx
 0059A6C8    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 0059A6CE    mov         eax,dword ptr [ebp-4]
 0059A6D1    xor         edx,edx
 0059A6D3    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 0059A6D9    mov         eax,dword ptr [ebp-4]
 0059A6DC    xor         edx,edx
 0059A6DE    mov         dword ptr [eax+248],edx;TCustomCombo.FDropHandle:HWND
 0059A6E4    pop         ecx
 0059A6E5    pop         ebp
 0059A6E6    ret
*}
end;

//0059A6E8
procedure sub_0059A6E8;
begin
{*
 0059A6E8    push        ebp
 0059A6E9    mov         ebp,esp
 0059A6EB    push        ecx
 0059A6EC    mov         dword ptr [ebp-4],eax
 0059A6EF    push        0FFFF0000
 0059A6F4    push        0
 0059A6F6    push        142
 0059A6FB    mov         eax,dword ptr [ebp-4]
 0059A6FE    call        TWinControl.GetHandle
 0059A703    push        eax
 0059A704    call        USER32.SendMessageA
 0059A709    pop         ecx
 0059A70A    pop         ebp
 0059A70B    ret
*}
end;

//0059A70C
{*function sub_0059A70C(?:TCustomCombo):?;
begin
 0059A70C    push        ebp
 0059A70D    mov         ebp,esp
 0059A70F    add         esp,0FFFFFFF8
 0059A712    mov         dword ptr [ebp-4],eax
 0059A715    push        0
 0059A717    push        0
 0059A719    push        157
 0059A71E    mov         eax,dword ptr [ebp-4]
 0059A721    call        TWinControl.GetHandle
 0059A726    push        eax
 0059A727    call        USER32.SendMessageA
 0059A72C    cmp         eax,1
 0059A72F    sbb         eax,eax
 0059A731    inc         eax
 0059A732    mov         byte ptr [ebp-5],al
 0059A735    mov         al,byte ptr [ebp-5]
 0059A738    pop         ecx
 0059A739    pop         ecx
 0059A73A    pop         ebp
 0059A73B    ret
end;*}

//0059A73C
{*procedure sub_0059A73C(?:TCustomCombo; ?:?);
begin
 0059A73C    push        ebp
 0059A73D    mov         ebp,esp
 0059A73F    add         esp,0FFFFFFE8
 0059A742    mov         byte ptr [ebp-5],dl
 0059A745    mov         dword ptr [ebp-4],eax
 0059A748    push        0
 0059A74A    xor         eax,eax
 0059A74C    mov         al,byte ptr [ebp-5]
 0059A74F    push        eax
 0059A750    push        14F
 0059A755    mov         eax,dword ptr [ebp-4]
 0059A758    call        TWinControl.GetHandle
 0059A75D    push        eax
 0059A75E    call        USER32.SendMessageA
 0059A763    lea         edx,[ebp-15]
 0059A766    mov         eax,dword ptr [ebp-4]
 0059A769    mov         ecx,dword ptr [eax]
 0059A76B    call        dword ptr [ecx+44]
 0059A76E    push        0FF
 0059A770    lea         eax,[ebp-15]
 0059A773    push        eax
 0059A774    mov         eax,dword ptr [ebp-4]
 0059A777    call        TWinControl.GetHandle
 0059A77C    push        eax
 0059A77D    call        USER32.InvalidateRect
 0059A782    mov         esp,ebp
 0059A784    pop         ebp
 0059A785    ret
end;*}

//0059A788
function TComboBox.GetItemIndex:Integer;
begin
{*
 0059A788    push        ebp
 0059A789    mov         ebp,esp
 0059A78B    add         esp,0FFFFFFF8
 0059A78E    mov         dword ptr [ebp-4],eax
 0059A791    mov         eax,dword ptr [ebp-4]
 0059A794    test        byte ptr [eax+1C],1;TComboBox.FComponentState:TComponentState
>0059A798    je          0059A7A8
 0059A79A    mov         eax,dword ptr [ebp-4]
 0059A79D    mov         eax,dword ptr [eax+214];TComboBox.FItemIndex:Integer
 0059A7A3    mov         dword ptr [ebp-8],eax
>0059A7A6    jmp         0059A7C2
 0059A7A8    push        0
 0059A7AA    push        0
 0059A7AC    push        147
 0059A7B1    mov         eax,dword ptr [ebp-4]
 0059A7B4    call        TWinControl.GetHandle
 0059A7B9    push        eax
 0059A7BA    call        USER32.SendMessageA
 0059A7BF    mov         dword ptr [ebp-8],eax
 0059A7C2    mov         eax,dword ptr [ebp-8]
 0059A7C5    pop         ecx
 0059A7C6    pop         ecx
 0059A7C7    pop         ebp
 0059A7C8    ret
*}
end;

//0059A7CC
procedure TComboBox.SetItemIndex(Value:Integer);
begin
{*
 0059A7CC    push        ebp
 0059A7CD    mov         ebp,esp
 0059A7CF    add         esp,0FFFFFFF8
 0059A7D2    mov         dword ptr [ebp-8],edx
 0059A7D5    mov         dword ptr [ebp-4],eax
 0059A7D8    mov         eax,dword ptr [ebp-4]
 0059A7DB    test        byte ptr [eax+1C],1;TComboBox.FComponentState:TComponentState
>0059A7DF    je          0059A7EF
 0059A7E1    mov         eax,dword ptr [ebp-8]
 0059A7E4    mov         edx,dword ptr [ebp-4]
 0059A7E7    mov         dword ptr [edx+214],eax;TComboBox.FItemIndex:Integer
>0059A7ED    jmp         0059A818
 0059A7EF    mov         eax,dword ptr [ebp-4]
 0059A7F2    mov         edx,dword ptr [eax]
 0059A7F4    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059A7FA    cmp         eax,dword ptr [ebp-8]
>0059A7FD    je          0059A818
 0059A7FF    push        0
 0059A801    mov         eax,dword ptr [ebp-8]
 0059A804    push        eax
 0059A805    push        14E
 0059A80A    mov         eax,dword ptr [ebp-4]
 0059A80D    call        TWinControl.GetHandle
 0059A812    push        eax
 0059A813    call        USER32.SendMessageA
 0059A818    pop         ecx
 0059A819    pop         ecx
 0059A81A    pop         ebp
 0059A81B    ret
*}
end;

//0059A81C
procedure TComboBox.SetMaxLength(Value:Integer);
begin
{*
 0059A81C    push        ebp
 0059A81D    mov         ebp,esp
 0059A81F    add         esp,0FFFFFFF8
 0059A822    mov         dword ptr [ebp-8],edx
 0059A825    mov         dword ptr [ebp-4],eax
 0059A828    cmp         dword ptr [ebp-8],0
>0059A82C    jge         0059A833
 0059A82E    xor         eax,eax
 0059A830    mov         dword ptr [ebp-8],eax
 0059A833    mov         eax,dword ptr [ebp-4]
 0059A836    mov         eax,dword ptr [eax+20C];TComboBox.FMaxLength:Integer
 0059A83C    cmp         eax,dword ptr [ebp-8]
>0059A83F    je          0059A872
 0059A841    mov         eax,dword ptr [ebp-8]
 0059A844    mov         edx,dword ptr [ebp-4]
 0059A847    mov         dword ptr [edx+20C],eax;TComboBox.FMaxLength:Integer
 0059A84D    mov         eax,dword ptr [ebp-4]
 0059A850    call        TWinControl.HandleAllocated
 0059A855    test        al,al
>0059A857    je          0059A872
 0059A859    push        0
 0059A85B    mov         eax,dword ptr [ebp-8]
 0059A85E    push        eax
 0059A85F    push        141
 0059A864    mov         eax,dword ptr [ebp-4]
 0059A867    call        TWinControl.GetHandle
 0059A86C    push        eax
 0059A86D    call        USER32.SendMessageA
 0059A872    pop         ecx
 0059A873    pop         ecx
 0059A874    pop         ebp
 0059A875    ret
*}
end;

//0059A878
procedure TComboBox.SetItemHeight(Value:Integer);
begin
{*
 0059A878    push        ebp
 0059A879    mov         ebp,esp
 0059A87B    add         esp,0FFFFFFF8
 0059A87E    mov         dword ptr [ebp-8],edx
 0059A881    mov         dword ptr [ebp-4],eax
 0059A884    cmp         dword ptr [ebp-8],0
>0059A888    jle         0059A89E
 0059A88A    mov         eax,dword ptr [ebp-8]
 0059A88D    mov         edx,dword ptr [ebp-4]
 0059A890    mov         dword ptr [edx+238],eax;TComboBox.FItemHeight:Integer
 0059A896    mov         eax,dword ptr [ebp-4]
 0059A899    call        TWinControl.RecreateWnd
 0059A89E    pop         ecx
 0059A89F    pop         ecx
 0059A8A0    pop         ebp
 0059A8A1    ret
*}
end;

//0059A8A4
{*procedure TCustomCombo.WMCreate(?:?);
begin
 0059A8A4    push        ebp
 0059A8A5    mov         ebp,esp
 0059A8A7    add         esp,0FFFFFFF8
 0059A8AA    mov         dword ptr [ebp-8],edx
 0059A8AD    mov         dword ptr [ebp-4],eax
 0059A8B0    mov         edx,dword ptr [ebp-8]
 0059A8B3    mov         eax,dword ptr [ebp-4]
 0059A8B6    mov         ecx,dword ptr [eax]
 0059A8B8    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 0059A8BB    mov         eax,dword ptr [ebp-4]
 0059A8BE    cmp         dword ptr [eax+64],0;TCustomCombo.FText:PChar
>0059A8C2    je          0059A8D9
 0059A8C4    mov         eax,dword ptr [ebp-4]
 0059A8C7    mov         eax,dword ptr [eax+64];TCustomCombo.FText:PChar
 0059A8CA    push        eax
 0059A8CB    mov         eax,dword ptr [ebp-4]
 0059A8CE    call        TWinControl.GetHandle
 0059A8D3    push        eax
 0059A8D4    call        USER32.SetWindowTextA
 0059A8D9    pop         ecx
 0059A8DA    pop         ecx
 0059A8DB    pop         ebp
 0059A8DC    ret
end;*}

//0059A8E0
{*procedure TCustomCombo.WMDrawItem(?:?);
begin
 0059A8E0    push        ebp
 0059A8E1    mov         ebp,esp
 0059A8E3    add         esp,0FFFFFFF8
 0059A8E6    mov         dword ptr [ebp-8],edx
 0059A8E9    mov         dword ptr [ebp-4],eax
 0059A8EC    mov         edx,dword ptr [ebp-8]
 0059A8EF    mov         eax,dword ptr [ebp-4]
 0059A8F2    mov         ecx,dword ptr [eax]
 0059A8F4    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 0059A8F7    pop         ecx
 0059A8F8    pop         ecx
 0059A8F9    pop         ebp
 0059A8FA    ret
end;*}

//0059A8FC
{*procedure TCustomCombo.WMMeasureItem(?:?);
begin
 0059A8FC    push        ebp
 0059A8FD    mov         ebp,esp
 0059A8FF    add         esp,0FFFFFFF8
 0059A902    mov         dword ptr [ebp-8],edx
 0059A905    mov         dword ptr [ebp-4],eax
 0059A908    mov         edx,dword ptr [ebp-8]
 0059A90B    mov         eax,dword ptr [ebp-4]
 0059A90E    mov         ecx,dword ptr [eax]
 0059A910    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 0059A913    pop         ecx
 0059A914    pop         ecx
 0059A915    pop         ebp
 0059A916    ret
end;*}

//0059A918
{*procedure TCustomCombo.WMDeleteItem(?:?);
begin
 0059A918    push        ebp
 0059A919    mov         ebp,esp
 0059A91B    add         esp,0FFFFFFF8
 0059A91E    mov         dword ptr [ebp-8],edx
 0059A921    mov         dword ptr [ebp-4],eax
 0059A924    mov         edx,dword ptr [ebp-8]
 0059A927    mov         eax,dword ptr [ebp-4]
 0059A92A    mov         ecx,dword ptr [eax]
 0059A92C    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 0059A92F    pop         ecx
 0059A930    pop         ecx
 0059A931    pop         ebp
 0059A932    ret
end;*}

//0059A934
{*procedure TCustomCombo.WMGetDlgCode(?:?);
begin
 0059A934    push        ebp
 0059A935    mov         ebp,esp
 0059A937    add         esp,0FFFFFFF8
 0059A93A    mov         dword ptr [ebp-8],edx
 0059A93D    mov         dword ptr [ebp-4],eax
 0059A940    mov         edx,dword ptr [ebp-8]
 0059A943    mov         eax,dword ptr [ebp-4]
 0059A946    mov         ecx,dword ptr [eax]
 0059A948    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 0059A94B    mov         eax,dword ptr [ebp-4]
 0059A94E    call        0059A70C
 0059A953    test        al,al
>0059A955    je          0059A95E
 0059A957    mov         eax,dword ptr [ebp-8]
 0059A95A    or          dword ptr [eax+0C],4
 0059A95E    pop         ecx
 0059A95F    pop         ecx
 0059A960    pop         ebp
 0059A961    ret
end;*}

//0059A964
{*procedure TCustomCombo.CMCancelMode(?:?);
begin
 0059A964    push        ebp
 0059A965    mov         ebp,esp
 0059A967    add         esp,0FFFFFFF8
 0059A96A    mov         dword ptr [ebp-8],edx
 0059A96D    mov         dword ptr [ebp-4],eax
 0059A970    mov         eax,dword ptr [ebp-8]
 0059A973    mov         eax,dword ptr [eax+8]
 0059A976    cmp         eax,dword ptr [ebp-4]
>0059A979    je          0059A98C
 0059A97B    push        0
 0059A97D    xor         ecx,ecx
 0059A97F    mov         edx,14F
 0059A984    mov         eax,dword ptr [ebp-4]
 0059A987    call        005F4FA8
 0059A98C    pop         ecx
 0059A98D    pop         ecx
 0059A98E    pop         ebp
 0059A98F    ret
end;*}

//0059A990
{*procedure TCustomCombo.CMCtl3DChanged(?:?);
begin
 0059A990    push        ebp
 0059A991    mov         ebp,esp
 0059A993    add         esp,0FFFFFFF8
 0059A996    mov         dword ptr [ebp-8],edx
 0059A999    mov         dword ptr [ebp-4],eax
 0059A99C    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059A9A1    cmp         byte ptr [eax],0
>0059A9A4    je          0059A9AE
 0059A9A6    mov         eax,dword ptr [ebp-4]
 0059A9A9    call        TWinControl.RecreateWnd
 0059A9AE    mov         edx,dword ptr [ebp-8]
 0059A9B1    mov         eax,dword ptr [ebp-4]
 0059A9B4    call        TWinControl.CMCtl3DChanged
 0059A9B9    pop         ecx
 0059A9BA    pop         ecx
 0059A9BB    pop         ebp
 0059A9BC    ret
end;*}

//0059A9C0
{*procedure TCustomComboBox.CMParentColorChanged(?:?);
begin
 0059A9C0    push        ebp
 0059A9C1    mov         ebp,esp
 0059A9C3    add         esp,0FFFFFFF8
 0059A9C6    mov         dword ptr [ebp-8],edx
 0059A9C9    mov         dword ptr [ebp-4],eax
 0059A9CC    mov         edx,dword ptr [ebp-8]
 0059A9CF    mov         eax,dword ptr [ebp-4]
 0059A9D2    call        TControl.CMParentColorChanged
 0059A9D7    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059A9DC    cmp         byte ptr [eax],0
>0059A9DF    jne         0059A9F5
 0059A9E1    mov         eax,dword ptr [ebp-4]
 0059A9E4    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>0059A9EB    jae         0059A9F5
 0059A9ED    mov         eax,dword ptr [ebp-4]
 0059A9F0    mov         edx,dword ptr [eax]
 0059A9F2    call        dword ptr [edx+7C];TWinControl.Invalidate
 0059A9F5    pop         ecx
 0059A9F6    pop         ecx
 0059A9F7    pop         ebp
 0059A9F8    ret
end;*}

//0059AB50
procedure TComboBox.SetCharCase(Value:TEditCharCase);
begin
{*
 0059AB50    push        ebp
 0059AB51    mov         ebp,esp
 0059AB53    add         esp,0FFFFFFF8
 0059AB56    mov         byte ptr [ebp-5],dl
 0059AB59    mov         dword ptr [ebp-4],eax
 0059AB5C    mov         eax,dword ptr [ebp-4]
 0059AB5F    mov         al,byte ptr [eax+274];TComboBox.FCharCase:TEditCharCase
 0059AB65    cmp         al,byte ptr [ebp-5]
>0059AB68    je          0059AB7E
 0059AB6A    mov         al,byte ptr [ebp-5]
 0059AB6D    mov         edx,dword ptr [ebp-4]
 0059AB70    mov         byte ptr [edx+274],al;TComboBox.FCharCase:TEditCharCase
 0059AB76    mov         eax,dword ptr [ebp-4]
 0059AB79    call        TWinControl.RecreateWnd
 0059AB7E    pop         ecx
 0059AB7F    pop         ecx
 0059AB80    pop         ebp
 0059AB81    ret
*}
end;

//0059AB84
{*procedure sub_0059AB84(?:?; ?:?; ?:?);
begin
 0059AB84    push        ebp
 0059AB85    mov         ebp,esp
 0059AB87    add         esp,0FFFFFFE8
 0059AB8A    push        ebx
 0059AB8B    push        esi
 0059AB8C    push        edi
 0059AB8D    mov         dword ptr [ebp-0C],ecx
 0059AB90    mov         dword ptr [ebp-8],edx
 0059AB93    mov         dword ptr [ebp-4],eax
 0059AB96    xor         eax,eax
 0059AB98    push        ebp
 0059AB99    push        59AE78
 0059AB9E    push        dword ptr fs:[eax]
 0059ABA1    mov         dword ptr fs:[eax],esp
 0059ABA4    mov         eax,dword ptr [ebp-8]
 0059ABA7    mov         eax,dword ptr [eax]
 0059ABA9    cmp         eax,104
>0059ABAE    jg          0059ABFF
>0059ABB0    je          0059ACA4
 0059ABB6    cmp         eax,87
>0059ABBB    jg          0059ABE1
>0059ABBD    je          0059ADD2
 0059ABC3    sub         eax,7
>0059ABC6    je          0059AC52
 0059ABCC    dec         eax
>0059ABCD    je          0059AC8A
 0059ABD3    sub         eax,7C
>0059ABD6    je          0059ADF5
>0059ABDC    jmp         0059AE27
 0059ABE1    sub         eax,100
>0059ABE6    je          0059ACA4
 0059ABEC    dec         eax
>0059ABED    je          0059AD31
 0059ABF3    dec         eax
>0059ABF4    je          0059ACD6
>0059ABFA    jmp         0059AE27
 0059ABFF    cmp         eax,0BD00
>0059AC04    jg          0059AC30
>0059AC06    je          0059AE12
 0059AC0C    sub         eax,105
>0059AC11    je          0059AD31
 0059AC17    sub         eax,0FB
>0059AC1C    je          0059AD51
 0059AC22    sub         eax,5
>0059AC25    je          0059AD68
>0059AC2B    jmp         0059AE27
 0059AC30    sub         eax,0BD02
>0059AC35    je          0059AE12
 0059AC3B    sub         eax,2
>0059AC3E    je          0059AE12
 0059AC44    sub         eax,2
>0059AC47    je          0059AE12
>0059AC4D    jmp         0059AE27
 0059AC52    mov         eax,dword ptr [ebp-4]
 0059AC55    call        005CD060
 0059AC5A    mov         dword ptr [ebp-18],eax
 0059AC5D    cmp         dword ptr [ebp-18],0
>0059AC61    je          0059AE27
 0059AC67    mov         edx,dword ptr [ebp-4]
 0059AC6A    mov         eax,dword ptr [ebp-18]
 0059AC6D    mov         ecx,dword ptr [eax]
 0059AC6F    call        dword ptr [ecx+0E4]
 0059AC75    test        al,al
>0059AC77    jne         0059AE27
 0059AC7D    xor         eax,eax
 0059AC7F    pop         edx
 0059AC80    pop         ecx
 0059AC81    pop         ecx
 0059AC82    mov         dword ptr fs:[eax],edx
>0059AC85    jmp         0059AE91
 0059AC8A    mov         eax,dword ptr [ebp-4]
 0059AC8D    test        byte ptr [eax+54],20;TCustomCombo.FControlState:TControlState
>0059AC91    je          0059AE27
 0059AC97    xor         eax,eax
 0059AC99    pop         edx
 0059AC9A    pop         ecx
 0059AC9B    pop         ecx
 0059AC9C    mov         dword ptr fs:[eax],edx
>0059AC9F    jmp         0059AE91
 0059ACA4    mov         eax,dword ptr [ebp-4]
 0059ACA7    mov         eax,dword ptr [eax+244];TCustomCombo.FListHandle:HWND
 0059ACAD    cmp         eax,dword ptr [ebp-0C]
>0059ACB0    je          0059AE27
 0059ACB6    mov         edx,dword ptr [ebp-8]
 0059ACB9    mov         eax,dword ptr [ebp-4]
 0059ACBC    call        005FA840
 0059ACC1    test        al,al
>0059ACC3    je          0059AE27
 0059ACC9    xor         eax,eax
 0059ACCB    pop         edx
 0059ACCC    pop         ecx
 0059ACCD    pop         ecx
 0059ACCE    mov         dword ptr fs:[eax],edx
>0059ACD1    jmp         0059AE91
 0059ACD6    mov         edx,dword ptr [ebp-8]
 0059ACD9    mov         eax,dword ptr [ebp-4]
 0059ACDC    call        005FAA70
 0059ACE1    test        al,al
>0059ACE3    je          0059ACF2
 0059ACE5    xor         eax,eax
 0059ACE7    pop         edx
 0059ACE8    pop         ecx
 0059ACE9    pop         ecx
 0059ACEA    mov         dword ptr fs:[eax],edx
>0059ACED    jmp         0059AE91
 0059ACF2    mov         eax,dword ptr [ebp-8]
 0059ACF5    cmp         word ptr [eax+4],0D
>0059ACFA    je          0059AD0A
 0059ACFC    mov         eax,dword ptr [ebp-8]
 0059ACFF    cmp         word ptr [eax+4],1B
>0059AD04    jne         0059AE27
 0059AD0A    mov         eax,dword ptr [ebp-4]
 0059AD0D    call        0059A70C
 0059AD12    test        al,al
>0059AD14    je          0059AE27
 0059AD1A    xor         edx,edx
 0059AD1C    mov         eax,dword ptr [ebp-4]
 0059AD1F    call        0059A73C
 0059AD24    xor         eax,eax
 0059AD26    pop         edx
 0059AD27    pop         ecx
 0059AD28    pop         ecx
 0059AD29    mov         dword ptr fs:[eax],edx
>0059AD2C    jmp         0059AE91
 0059AD31    mov         edx,dword ptr [ebp-8]
 0059AD34    mov         eax,dword ptr [ebp-4]
 0059AD37    call        005FA95C
 0059AD3C    test        al,al
>0059AD3E    je          0059AE27
 0059AD44    xor         eax,eax
 0059AD46    pop         edx
 0059AD47    pop         ecx
 0059AD48    pop         ecx
 0059AD49    mov         dword ptr fs:[eax],edx
>0059AD4C    jmp         0059AE91
 0059AD51    mov         ecx,dword ptr [ebp-8]
 0059AD54    mov         eax,[006E9DCC];^Application:TApplication
 0059AD59    mov         eax,dword ptr [eax]
 0059AD5B    mov         edx,dword ptr [ebp-4]
 0059AD5E    call        005D90EC
>0059AD63    jmp         0059AE27
 0059AD68    mov         eax,dword ptr [ebp-4]
 0059AD6B    call        00597A88
 0059AD70    test        al,al
>0059AD72    je          0059AE27
 0059AD78    mov         eax,dword ptr [ebp-8]
 0059AD7B    movsx       eax,word ptr [eax+8]
 0059AD7F    mov         dword ptr [ebp-14],eax
 0059AD82    mov         eax,dword ptr [ebp-8]
 0059AD85    movsx       eax,word ptr [eax+0A]
 0059AD89    mov         dword ptr [ebp-10],eax
 0059AD8C    push        1
 0059AD8E    lea         eax,[ebp-14]
 0059AD91    push        eax
 0059AD92    mov         eax,dword ptr [ebp-4]
 0059AD95    call        TWinControl.GetHandle
 0059AD9A    push        eax
 0059AD9B    mov         eax,dword ptr [ebp-0C]
 0059AD9E    push        eax
 0059AD9F    call        USER32.MapWindowPoints
 0059ADA4    mov         eax,dword ptr [ebp-8]
 0059ADA7    mov         dx,word ptr [ebp-14]
 0059ADAB    mov         word ptr [eax+8],dx
 0059ADAF    mov         eax,dword ptr [ebp-8]
 0059ADB2    mov         dx,word ptr [ebp-10]
 0059ADB6    mov         word ptr [eax+0A],dx
 0059ADBA    mov         edx,dword ptr [ebp-8]
 0059ADBD    mov         eax,dword ptr [ebp-4]
 0059ADC0    mov         ecx,dword ptr [eax]
 0059ADC2    call        dword ptr [ecx+74];TCustomCombo.sub_0059AE9C
 0059ADC5    xor         eax,eax
 0059ADC7    pop         edx
 0059ADC8    pop         ecx
 0059ADC9    pop         ecx
 0059ADCA    mov         dword ptr fs:[eax],edx
>0059ADCD    jmp         0059AE91
 0059ADD2    mov         eax,dword ptr [ebp-4]
 0059ADD5    call        0059A70C
 0059ADDA    test        al,al
>0059ADDC    je          0059AE27
 0059ADDE    mov         eax,dword ptr [ebp-8]
 0059ADE1    mov         dword ptr [eax+0C],4
 0059ADE8    xor         eax,eax
 0059ADEA    pop         edx
 0059ADEB    pop         ecx
 0059ADEC    pop         ecx
 0059ADED    mov         dword ptr fs:[eax],edx
>0059ADF0    jmp         0059AE91
 0059ADF5    mov         eax,dword ptr [ebp-4]
 0059ADF8    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>0059ADFC    je          0059AE27
 0059ADFE    mov         eax,dword ptr [ebp-8]
 0059AE01    mov         dword ptr [eax+0C],0FFFFFFFF
 0059AE08    xor         eax,eax
 0059AE0A    pop         edx
 0059AE0B    pop         ecx
 0059AE0C    pop         ecx
 0059AE0D    mov         dword ptr fs:[eax],edx
>0059AE10    jmp         0059AE91
 0059AE12    mov         edx,dword ptr [ebp-8]
 0059AE15    mov         eax,dword ptr [ebp-4]
 0059AE18    mov         ecx,dword ptr [eax]
 0059AE1A    call        dword ptr [ecx+74];TCustomCombo.sub_0059AE9C
 0059AE1D    xor         eax,eax
 0059AE1F    pop         edx
 0059AE20    pop         ecx
 0059AE21    pop         ecx
 0059AE22    mov         dword ptr fs:[eax],edx
>0059AE25    jmp         0059AE91
 0059AE27    mov         eax,dword ptr [ebp-8]
 0059AE2A    mov         eax,dword ptr [eax+8]
 0059AE2D    push        eax
 0059AE2E    mov         eax,dword ptr [ebp-8]
 0059AE31    mov         eax,dword ptr [eax+4]
 0059AE34    push        eax
 0059AE35    mov         eax,dword ptr [ebp-8]
 0059AE38    mov         eax,dword ptr [eax]
 0059AE3A    push        eax
 0059AE3B    mov         eax,dword ptr [ebp-0C]
 0059AE3E    push        eax
 0059AE3F    mov         eax,dword ptr [ebp+8]
 0059AE42    push        eax
 0059AE43    call        USER32.CallWindowProcA
 0059AE48    mov         edx,dword ptr [ebp-8]
 0059AE4B    mov         dword ptr [edx+0C],eax
 0059AE4E    mov         eax,dword ptr [ebp-8]
 0059AE51    cmp         dword ptr [eax],203
>0059AE57    jne         0059AE6E
 0059AE59    mov         eax,dword ptr [ebp-4]
 0059AE5C    test        byte ptr [eax+50],80;TCustomCombo.FControlStyle:TControlStyle
>0059AE60    je          0059AE6E
 0059AE62    mov         eax,dword ptr [ebp-4]
 0059AE65    mov         si,0FFE9
 0059AE69    call        @CallDynaInst;TControl.sub_005F5508
 0059AE6E    xor         eax,eax
 0059AE70    pop         edx
 0059AE71    pop         ecx
 0059AE72    pop         ecx
 0059AE73    mov         dword ptr fs:[eax],edx
>0059AE76    jmp         0059AE91
>0059AE78    jmp         @HandleAnyException
 0059AE7D    mov         eax,[006E9DCC];^Application:TApplication
 0059AE82    mov         eax,dword ptr [eax]
 0059AE84    mov         edx,dword ptr [ebp-4]
 0059AE87    call        TApplication.HandleException
 0059AE8C    call        @DoneExcept
 0059AE91    pop         edi
 0059AE92    pop         esi
 0059AE93    pop         ebx
 0059AE94    mov         esp,ebp
 0059AE96    pop         ebp
 0059AE97    ret         4
end;*}

//0059AE9C
{*procedure sub_0059AE9C(?:?);
begin
 0059AE9C    push        ebp
 0059AE9D    mov         ebp,esp
 0059AE9F    add         esp,0FFFFFFF8
 0059AEA2    mov         dword ptr [ebp-8],edx
 0059AEA5    mov         dword ptr [ebp-4],eax
 0059AEA8    mov         eax,dword ptr [ebp-4]
 0059AEAB    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>0059AEAF    jne         0059AF13
 0059AEB1    mov         eax,dword ptr [ebp-8]
 0059AEB4    cmp         dword ptr [eax],201
>0059AEBA    je          0059AEC7
 0059AEBC    mov         eax,dword ptr [ebp-8]
 0059AEBF    cmp         dword ptr [eax],203
>0059AEC5    jne         0059AF13
 0059AEC7    mov         eax,dword ptr [ebp-4]
 0059AECA    call        005F4270
 0059AECF    test        al,al
>0059AED1    jne         0059AF13
 0059AED3    mov         eax,dword ptr [ebp-4]
 0059AED6    cmp         byte ptr [eax+5D],1;TCustomCombo.FDragMode:TDragMode
>0059AEDA    jne         0059AF13
 0059AEDC    mov         edx,dword ptr [ebp-8]
 0059AEDF    mov         eax,dword ptr [ebp-4]
 0059AEE2    call        005F8D4C
 0059AEE7    test        al,al
>0059AEE9    jne         0059AFE8
 0059AEEF    mov         ax,[0059AFEC];0x1 gvar_0059AFEC
 0059AEF5    mov         edx,dword ptr [ebp-4]
 0059AEF8    or          ax,word ptr [edx+54];TCustomCombo.FControlState:TControlState
 0059AEFC    mov         edx,dword ptr [ebp-4]
 0059AEFF    mov         word ptr [edx+54],ax;TCustomCombo.FControlState:TControlState
 0059AF03    mov         edx,dword ptr [ebp-8]
 0059AF06    mov         eax,dword ptr [ebp-4]
 0059AF09    mov         ecx,dword ptr [eax]
 0059AF0B    call        dword ptr [ecx-14];TObject.Dispatch
>0059AF0E    jmp         0059AFE8
 0059AF13    mov         eax,dword ptr [ebp-8]
 0059AF16    mov         eax,dword ptr [eax]
 0059AF18    sub         eax,5
>0059AF1B    je          0059AF31
 0059AF1D    sub         eax,0FD
>0059AF22    je          0059AFA2
 0059AF24    add         eax,0FFFFFFD0
 0059AF27    sub         eax,7
>0059AF2A    jb          0059AF51
>0059AF2C    jmp         0059AFDD
 0059AF31    mov         eax,dword ptr [ebp-4]
 0059AF34    cmp         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
>0059AF3B    je          0059AFDD
 0059AF41    mov         edx,dword ptr [ebp-8]
 0059AF44    mov         eax,dword ptr [ebp-4]
 0059AF47    mov         ecx,dword ptr [eax]
 0059AF49    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
>0059AF4C    jmp         0059AFE8
 0059AF51    mov         eax,dword ptr [ebp-4]
 0059AF54    mov         eax,dword ptr [eax+68];TCustomCombo.FFont:TFont
 0059AF57    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 0059AF5A    call        ColorToRGB
 0059AF5F    push        eax
 0059AF60    mov         eax,dword ptr [ebp-8]
 0059AF63    mov         eax,dword ptr [eax+4]
 0059AF66    push        eax
 0059AF67    call        GDI32.SetTextColor
 0059AF6C    mov         eax,dword ptr [ebp-4]
 0059AF6F    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 0059AF75    call        TBrush.GetColor
 0059AF7A    call        ColorToRGB
 0059AF7F    push        eax
 0059AF80    mov         eax,dword ptr [ebp-8]
 0059AF83    mov         eax,dword ptr [eax+4]
 0059AF86    push        eax
 0059AF87    call        GDI32.SetBkColor
 0059AF8C    mov         eax,dword ptr [ebp-4]
 0059AF8F    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 0059AF95    call        TBrush.GetHandle
 0059AF9A    mov         edx,dword ptr [ebp-8]
 0059AF9D    mov         dword ptr [edx+0C],eax
>0059AFA0    jmp         0059AFE8
 0059AFA2    mov         edx,dword ptr [ebp-8]
 0059AFA5    mov         eax,dword ptr [ebp-4]
 0059AFA8    call        005FAA70
 0059AFAD    test        al,al
>0059AFAF    jne         0059AFE8
 0059AFB1    mov         eax,dword ptr [ebp-8]
 0059AFB4    cmp         word ptr [eax+4],0D
>0059AFB9    je          0059AFC5
 0059AFBB    mov         eax,dword ptr [ebp-8]
 0059AFBE    cmp         word ptr [eax+4],1B
>0059AFC3    jne         0059AFDD
 0059AFC5    mov         eax,dword ptr [ebp-4]
 0059AFC8    call        0059A70C
 0059AFCD    test        al,al
>0059AFCF    je          0059AFDD
 0059AFD1    xor         edx,edx
 0059AFD3    mov         eax,dword ptr [ebp-4]
 0059AFD6    call        0059A73C
>0059AFDB    jmp         0059AFE8
 0059AFDD    mov         edx,dword ptr [ebp-8]
 0059AFE0    mov         eax,dword ptr [ebp-4]
 0059AFE3    call        005F8E0C
 0059AFE8    pop         ecx
 0059AFE9    pop         ecx
 0059AFEA    pop         ebp
 0059AFEB    ret
end;*}

//0059AFF0
{*procedure TCustomCombo.sub_0059AFF0(?:?);
begin
 0059AFF0    push        ebp
 0059AFF1    mov         ebp,esp
 0059AFF3    add         esp,0FFFFFFF4
 0059AFF6    push        ebx
 0059AFF7    push        esi
 0059AFF8    xor         ecx,ecx
 0059AFFA    mov         dword ptr [ebp-0C],ecx
 0059AFFD    mov         dword ptr [ebp-8],edx
 0059B000    mov         dword ptr [ebp-4],eax
 0059B003    xor         eax,eax
 0059B005    push        ebp
 0059B006    push        59B180
 0059B00B    push        dword ptr fs:[eax]
 0059B00E    mov         dword ptr fs:[eax],esp
 0059B011    mov         eax,dword ptr [ebp-8]
 0059B014    movzx       eax,word ptr [eax+6]
 0059B018    cmp         eax,8
>0059B01B    ja          0059B16A
 0059B021    jmp         dword ptr [eax*4+59B028]
 0059B021    dd          0059B16A
 0059B021    dd          0059B0DF
 0059B021    dd          0059B04C
 0059B021    dd          0059B130
 0059B021    dd          0059B14E
 0059B021    dd          0059B05D
 0059B021    dd          0059B16A
 0059B021    dd          0059B06E
 0059B021    dd          0059B122
 0059B04C    mov         eax,dword ptr [ebp-4]
 0059B04F    mov         si,0FFE9
 0059B053    call        @CallDynaInst;TControl.sub_005F5508
>0059B058    jmp         0059B16A
 0059B05D    mov         eax,dword ptr [ebp-4]
 0059B060    mov         si,0FFB3
 0059B064    call        @CallDynaInst;TCustomCombo.sub_0059B190
>0059B069    jmp         0059B16A
 0059B06E    mov         eax,dword ptr [ebp-4]
 0059B071    mov         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
 0059B078    mov         eax,dword ptr [ebp-4]
 0059B07B    mov         si,0FFB1
 0059B07F    call        @CallDynaInst;TCustomCombo.sub_0059B298
 0059B084    mov         eax,dword ptr [ebp-4]
 0059B087    mov         edx,dword ptr [eax]
 0059B089    call        dword ptr [edx+0EC];TCustomCombo.sub_0059B3F8
 0059B08F    mov         eax,dword ptr [ebp-4]
 0059B092    cmp         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
>0059B099    je          0059B16A
 0059B09F    push        0
 0059B0A1    push        0
 0059B0A3    push        1F
 0059B0A5    mov         eax,dword ptr [ebp-4]
 0059B0A8    call        TWinControl.GetHandle
 0059B0AD    push        eax
 0059B0AE    call        USER32.PostMessageA
 0059B0B3    mov         eax,dword ptr [ebp-4]
 0059B0B6    cmp         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
>0059B0BD    jne         0059B16A
 0059B0C3    push        0
 0059B0C5    push        0
 0059B0C7    push        14F
 0059B0CC    mov         eax,dword ptr [ebp-4]
 0059B0CF    call        TWinControl.GetHandle
 0059B0D4    push        eax
 0059B0D5    call        USER32.PostMessageA
>0059B0DA    jmp         0059B16A
 0059B0DF    mov         eax,dword ptr [ebp-4]
 0059B0E2    mov         edx,dword ptr [eax]
 0059B0E4    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B0EA    mov         edx,eax
 0059B0EC    lea         ecx,[ebp-0C]
 0059B0EF    mov         eax,dword ptr [ebp-4]
 0059B0F2    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059B0F8    mov         ebx,dword ptr [eax]
 0059B0FA    call        dword ptr [ebx+0C];@AbstractError
 0059B0FD    mov         edx,dword ptr [ebp-0C]
 0059B100    mov         eax,dword ptr [ebp-4]
 0059B103    call        TTabPage.SetCaption
 0059B108    mov         eax,dword ptr [ebp-4]
 0059B10B    mov         si,0FFEB
 0059B10F    call        @CallDynaInst;TControl.sub_005F5478
 0059B114    mov         eax,dword ptr [ebp-4]
 0059B117    mov         si,0FFB2
 0059B11B    call        @CallDynaInst;TCustomCombo.sub_0059B374
>0059B120    jmp         0059B16A
 0059B122    mov         eax,dword ptr [ebp-4]
 0059B125    mov         si,0FFB0
 0059B129    call        @CallDynaInst;TCustomCombo.sub_0059B348
>0059B12E    jmp         0059B16A
 0059B130    mov         eax,dword ptr [ebp-4]
 0059B133    mov         byte ptr [eax+25E],1;TCustomCombo.FIsFocused:Boolean
 0059B13A    mov         eax,dword ptr [ebp-4]
 0059B13D    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 0059B144    mov         eax,dword ptr [ebp-4]
 0059B147    call        005F9FC0
>0059B14C    jmp         0059B16A
 0059B14E    mov         eax,dword ptr [ebp-4]
 0059B151    mov         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
 0059B158    mov         eax,dword ptr [ebp-4]
 0059B15B    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 0059B162    mov         eax,dword ptr [ebp-4]
 0059B165    call        005FA0CC
 0059B16A    xor         eax,eax
 0059B16C    pop         edx
 0059B16D    pop         ecx
 0059B16E    pop         ecx
 0059B16F    mov         dword ptr fs:[eax],edx
 0059B172    push        59B187
 0059B177    lea         eax,[ebp-0C]
 0059B17A    call        @LStrClr
 0059B17F    ret
>0059B180    jmp         @HandleFinally
>0059B185    jmp         0059B177
 0059B187    pop         esi
 0059B188    pop         ebx
 0059B189    mov         esp,ebp
 0059B18B    pop         ebp
 0059B18C    ret
end;*}

//0059B190
procedure TCustomCombo.sub_0059B190;
begin
{*
 0059B190    push        ebp
 0059B191    mov         ebp,esp
 0059B193    push        ecx
 0059B194    push        ebx
 0059B195    mov         dword ptr [ebp-4],eax
 0059B198    mov         eax,dword ptr [ebp-4]
 0059B19B    call        005F3158
 0059B1A0    mov         eax,dword ptr [ebp-4]
 0059B1A3    cmp         word ptr [eax+21A],0;TCustomCombo.?f21A:word
>0059B1AB    je          0059B1BF
 0059B1AD    mov         ebx,dword ptr [ebp-4]
 0059B1B0    mov         edx,dword ptr [ebp-4]
 0059B1B3    mov         eax,dword ptr [ebx+21C];TCustomCombo.?f21C:dword
 0059B1B9    call        dword ptr [ebx+218];TCustomCombo.FOnChange
 0059B1BF    pop         ebx
 0059B1C0    pop         ecx
 0059B1C1    pop         ebp
 0059B1C2    ret
*}
end;

//0059B1C4
{*procedure sub_0059B1C4(?:?; ?:?; ?:?);
begin
 0059B1C4    push        ebp
 0059B1C5    mov         ebp,esp
 0059B1C7    add         esp,0FFFFFFE4
 0059B1CA    push        ebx
 0059B1CB    push        esi
 0059B1CC    push        edi
 0059B1CD    xor         ebx,ebx
 0059B1CF    mov         dword ptr [ebp-1C],ebx
 0059B1D2    mov         esi,ecx
 0059B1D4    lea         edi,[ebp-18]
 0059B1D7    movs        dword ptr [edi],dword ptr [esi]
 0059B1D8    movs        dword ptr [edi],dword ptr [esi]
 0059B1D9    movs        dword ptr [edi],dword ptr [esi]
 0059B1DA    movs        dword ptr [edi],dword ptr [esi]
 0059B1DB    mov         dword ptr [ebp-8],edx
 0059B1DE    mov         dword ptr [ebp-4],eax
 0059B1E1    xor         eax,eax
 0059B1E3    push        ebp
 0059B1E4    push        59B286
 0059B1E9    push        dword ptr fs:[eax]
 0059B1EC    mov         dword ptr fs:[eax],esp
 0059B1EF    mov         eax,dword ptr [ebp-4]
 0059B1F2    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059B1F8    call        005F1AA8
 0059B1FD    mov         eax,dword ptr [ebp-4]
 0059B200    cmp         word ptr [eax+282],0;TCustomComboBox.?f282:word
>0059B208    je          0059B22A
 0059B20A    lea         eax,[ebp-18]
 0059B20D    push        eax
 0059B20E    mov         ax,word ptr [ebp+8]
 0059B212    push        eax
 0059B213    mov         ebx,dword ptr [ebp-4]
 0059B216    mov         ecx,dword ptr [ebp-8]
 0059B219    mov         edx,dword ptr [ebp-4]
 0059B21C    mov         eax,dword ptr [ebx+284];TCustomComboBox.?f284:dword
 0059B222    call        dword ptr [ebx+280];TCustomComboBox.FOnDrawItem
>0059B228    jmp         0059B270
 0059B22A    lea         edx,[ebp-18]
 0059B22D    mov         eax,dword ptr [ebp-4]
 0059B230    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059B236    call        TCanvas.FillRect
 0059B23B    cmp         dword ptr [ebp-8],0
>0059B23F    jl          0059B270
 0059B241    lea         ecx,[ebp-1C]
 0059B244    mov         edx,dword ptr [ebp-8]
 0059B247    mov         eax,dword ptr [ebp-4]
 0059B24A    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B250    mov         ebx,dword ptr [eax]
 0059B252    call        dword ptr [ebx+0C];@AbstractError
 0059B255    mov         eax,dword ptr [ebp-1C]
 0059B258    push        eax
 0059B259    mov         edx,dword ptr [ebp-18]
 0059B25C    add         edx,2;TRect.Left:Longint
 0059B25F    mov         ecx,dword ptr [ebp-14]
 0059B262    mov         eax,dword ptr [ebp-4]
 0059B265    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059B26B    call        005C15A8
 0059B270    xor         eax,eax
 0059B272    pop         edx
 0059B273    pop         ecx
 0059B274    pop         ecx
 0059B275    mov         dword ptr fs:[eax],edx
 0059B278    push        59B28D
 0059B27D    lea         eax,[ebp-1C]
 0059B280    call        @LStrClr
 0059B285    ret
>0059B286    jmp         @HandleFinally
>0059B28B    jmp         0059B27D
 0059B28D    pop         edi
 0059B28E    pop         esi
 0059B28F    pop         ebx
 0059B290    mov         esp,ebp
 0059B292    pop         ebp
 0059B293    ret         4
end;*}

//0059B298
procedure TCustomCombo.sub_0059B298;
begin
{*
 0059B298    push        ebp
 0059B299    mov         ebp,esp
 0059B29B    push        ecx
 0059B29C    push        ebx
 0059B29D    mov         dword ptr [ebp-4],eax
 0059B2A0    mov         eax,dword ptr [ebp-4]
 0059B2A3    cmp         word ptr [eax+22A],0;TCustomCombo.?f22A:word
>0059B2AB    je          0059B2BF
 0059B2AD    mov         ebx,dword ptr [ebp-4]
 0059B2B0    mov         edx,dword ptr [ebp-4]
 0059B2B3    mov         eax,dword ptr [ebx+22C];TCustomCombo.?f22C:dword
 0059B2B9    call        dword ptr [ebx+228];TCustomCombo.FOnDropDown
 0059B2BF    pop         ebx
 0059B2C0    pop         ecx
 0059B2C1    pop         ebp
 0059B2C2    ret
*}
end;

//0059B2C4
procedure TCustomCombo.Loaded;
begin
{*
 0059B2C4    push        ebp
 0059B2C5    mov         ebp,esp
 0059B2C7    push        ecx
 0059B2C8    mov         dword ptr [ebp-4],eax
 0059B2CB    mov         eax,dword ptr [ebp-4]
 0059B2CE    call        TControl.Loaded
 0059B2D3    mov         eax,dword ptr [ebp-4]
 0059B2D6    cmp         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
>0059B2DD    je          0059B2F3
 0059B2DF    mov         eax,dword ptr [ebp-4]
 0059B2E2    mov         edx,dword ptr [eax+214];TCustomCombo.FItemIndex:Integer
 0059B2E8    mov         eax,dword ptr [ebp-4]
 0059B2EB    mov         ecx,dword ptr [eax]
 0059B2ED    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 0059B2F3    pop         ecx
 0059B2F4    pop         ebp
 0059B2F5    ret
*}
end;

//0059B2F8
procedure TCustomCombo.sub_0059B2F8;
begin
{*
 0059B2F8    push        ebp
 0059B2F9    mov         ebp,esp
 0059B2FB    add         esp,0FFFFFFF4
 0059B2FE    mov         dword ptr [ebp-4],eax
 0059B301    mov         byte ptr [ebp-5],0
 0059B305    mov         eax,dword ptr [ebp-4]
 0059B308    call        TWinControl.HandleAllocated
 0059B30D    test        al,al
>0059B30F    je          0059B33E
 0059B311    call        USER32.GetFocus
 0059B316    mov         dword ptr [ebp-0C],eax
 0059B319    mov         eax,dword ptr [ebp-0C]
 0059B31C    mov         edx,dword ptr [ebp-4]
 0059B31F    cmp         eax,dword ptr [edx+240];TCustomCombo.FEditHandle:HWND
>0059B325    je          0059B339
 0059B327    mov         eax,dword ptr [ebp-0C]
 0059B32A    mov         edx,dword ptr [ebp-4]
 0059B32D    cmp         eax,dword ptr [edx+244];TCustomCombo.FListHandle:HWND
>0059B333    je          0059B339
 0059B335    xor         eax,eax
>0059B337    jmp         0059B33B
 0059B339    mov         al,1
 0059B33B    mov         byte ptr [ebp-5],al
 0059B33E    mov         al,byte ptr [ebp-5]
 0059B341    mov         esp,ebp
 0059B343    pop         ebp
 0059B344    ret
*}
end;

//0059B348
procedure TCustomCombo.sub_0059B348;
begin
{*
 0059B348    push        ebp
 0059B349    mov         ebp,esp
 0059B34B    push        ecx
 0059B34C    push        ebx
 0059B34D    mov         dword ptr [ebp-4],eax
 0059B350    mov         eax,dword ptr [ebp-4]
 0059B353    cmp         word ptr [eax+232],0;TCustomCombo.?f232:word
>0059B35B    je          0059B36F
 0059B35D    mov         ebx,dword ptr [ebp-4]
 0059B360    mov         edx,dword ptr [ebp-4]
 0059B363    mov         eax,dword ptr [ebx+234];TCustomCombo.?f234:dword
 0059B369    call        dword ptr [ebx+230];TCustomCombo.FOnCloseUp
 0059B36F    pop         ebx
 0059B370    pop         ecx
 0059B371    pop         ebp
 0059B372    ret
*}
end;

//0059B374
procedure TCustomCombo.sub_0059B374;
begin
{*
 0059B374    push        ebp
 0059B375    mov         ebp,esp
 0059B377    push        ecx
 0059B378    push        ebx
 0059B379    push        esi
 0059B37A    mov         dword ptr [ebp-4],eax
 0059B37D    mov         eax,dword ptr [ebp-4]
 0059B380    cmp         word ptr [eax+222],0;TCustomCombo.?f222:word
>0059B388    je          0059B39E
 0059B38A    mov         ebx,dword ptr [ebp-4]
 0059B38D    mov         edx,dword ptr [ebp-4]
 0059B390    mov         eax,dword ptr [ebx+224];TCustomCombo.?f224:dword
 0059B396    call        dword ptr [ebx+220];TCustomCombo.FOnSelect
>0059B39C    jmp         0059B3AA
 0059B39E    mov         eax,dword ptr [ebp-4]
 0059B3A1    mov         si,0FFB3
 0059B3A5    call        @CallDynaInst;TCustomCombo.sub_0059B190
 0059B3AA    pop         esi
 0059B3AB    pop         ebx
 0059B3AC    pop         ecx
 0059B3AD    pop         ebp
 0059B3AE    ret
*}
end;

//0059B3B0
procedure TCustomCombo.CreateWnd;
begin
{*
 0059B3B0    push        ebp
 0059B3B1    mov         ebp,esp
 0059B3B3    push        ecx
 0059B3B4    mov         dword ptr [ebp-4],eax
 0059B3B7    mov         eax,dword ptr [ebp-4]
 0059B3BA    call        TWinControl.CreateWnd
 0059B3BF    push        0
 0059B3C1    mov         eax,dword ptr [ebp-4]
 0059B3C4    mov         eax,dword ptr [eax+20C];TCustomCombo.FMaxLength:Integer
 0059B3CA    push        eax
 0059B3CB    push        141
 0059B3D0    mov         eax,dword ptr [ebp-4]
 0059B3D3    call        TWinControl.GetHandle
 0059B3D8    push        eax
 0059B3D9    call        USER32.SendMessageA
 0059B3DE    mov         eax,dword ptr [ebp-4]
 0059B3E1    xor         edx,edx
 0059B3E3    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 0059B3E9    mov         eax,dword ptr [ebp-4]
 0059B3EC    xor         edx,edx
 0059B3EE    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 0059B3F4    pop         ecx
 0059B3F5    pop         ebp
 0059B3F6    ret
*}
end;

//0059B3F8
procedure sub_0059B3F8;
begin
{*
 0059B3F8    push        ebp
 0059B3F9    mov         ebp,esp
 0059B3FB    add         esp,0FFFFFFF8
 0059B3FE    mov         dword ptr [ebp-4],eax
 0059B401    mov         eax,dword ptr [ebp-4]
 0059B404    mov         edx,dword ptr [eax]
 0059B406    call        dword ptr [edx+100];@AbstractError
 0059B40C    mov         dword ptr [ebp-8],eax
 0059B40F    mov         eax,dword ptr [ebp-4]
 0059B412    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 0059B418    cmp         eax,dword ptr [ebp-8]
>0059B41B    jge         0059B429
 0059B41D    mov         eax,dword ptr [ebp-4]
 0059B420    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 0059B426    mov         dword ptr [ebp-8],eax
 0059B429    cmp         dword ptr [ebp-8],1
>0059B42D    jge         0059B436
 0059B42F    mov         dword ptr [ebp-8],1
 0059B436    mov         eax,dword ptr [ebp-4]
 0059B439    mov         byte ptr [eax+25C],1;TCustomCombo.FDroppingDown:Boolean
 0059B440    xor         eax,eax
 0059B442    push        ebp
 0059B443    push        59B49F
 0059B448    push        dword ptr fs:[eax]
 0059B44B    mov         dword ptr fs:[eax],esp
 0059B44E    push        9E
 0059B453    mov         eax,dword ptr [ebp-4]
 0059B456    mov         edx,dword ptr [eax]
 0059B458    call        dword ptr [edx+0F8];@AbstractError
 0059B45E    imul        dword ptr [ebp-8]
 0059B461    mov         edx,dword ptr [ebp-4]
 0059B464    add         eax,dword ptr [edx+4C];TCustomCombo.Height:Integer
 0059B467    add         eax,2
 0059B46A    push        eax
 0059B46B    mov         eax,dword ptr [ebp-4]
 0059B46E    mov         eax,dword ptr [eax+48];TCustomCombo.Width:Integer
 0059B471    push        eax
 0059B472    push        0
 0059B474    push        0
 0059B476    push        0
 0059B478    mov         eax,dword ptr [ebp-4]
 0059B47B    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 0059B481    push        eax
 0059B482    call        USER32.SetWindowPos
 0059B487    xor         eax,eax
 0059B489    pop         edx
 0059B48A    pop         ecx
 0059B48B    pop         ecx
 0059B48C    mov         dword ptr fs:[eax],edx
 0059B48F    push        59B4A6
 0059B494    mov         eax,dword ptr [ebp-4]
 0059B497    mov         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
 0059B49E    ret
>0059B49F    jmp         @HandleFinally
>0059B4A4    jmp         0059B494
 0059B4A6    push        5F
 0059B4A8    push        0
 0059B4AA    push        0
 0059B4AC    push        0
 0059B4AE    push        0
 0059B4B0    push        0
 0059B4B2    mov         eax,dword ptr [ebp-4]
 0059B4B5    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 0059B4BB    push        eax
 0059B4BC    call        USER32.SetWindowPos
 0059B4C1    pop         ecx
 0059B4C2    pop         ecx
 0059B4C3    pop         ebp
 0059B4C4    ret
*}
end;

//0059B4C8
procedure TComboBox.SetItems(Value:TStrings);
begin
{*
 0059B4C8    push        ebp
 0059B4C9    mov         ebp,esp
 0059B4CB    add         esp,0FFFFFFF8
 0059B4CE    mov         dword ptr [ebp-8],edx
 0059B4D1    mov         dword ptr [ebp-4],eax
 0059B4D4    mov         eax,dword ptr [ebp-4]
 0059B4D7    cmp         dword ptr [eax+23C],0;TComboBox.FItems:TStrings
>0059B4DE    je          0059B4F3
 0059B4E0    mov         edx,dword ptr [ebp-8]
 0059B4E3    mov         eax,dword ptr [ebp-4]
 0059B4E6    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0059B4EC    mov         ecx,dword ptr [eax]
 0059B4EE    call        dword ptr [ecx+8];TStrings.Assign
>0059B4F1    jmp         0059B4FF
 0059B4F3    mov         eax,dword ptr [ebp-8]
 0059B4F6    mov         edx,dword ptr [ebp-4]
 0059B4F9    mov         dword ptr [edx+23C],eax;TComboBox.FItems:TStrings
 0059B4FF    pop         ecx
 0059B500    pop         ecx
 0059B501    pop         ebp
 0059B502    ret
*}
end;

//0059B504
{*procedure sub_0059B504(?:?);
begin
 0059B504    push        ebp
 0059B505    mov         ebp,esp
 0059B507    push        ecx
 0059B508    mov         dword ptr [ebp-4],eax
 0059B50B    or          edx,0FFFFFFFF
 0059B50E    mov         eax,dword ptr [ebp-4]
 0059B511    mov         ecx,dword ptr [eax]
 0059B513    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 0059B519    pop         ecx
 0059B51A    pop         ebp
 0059B51B    ret
end;*}

//0059B51C
{*procedure sub_0059B51C(?:?);
begin
 0059B51C    push        ebp
 0059B51D    mov         ebp,esp
 0059B51F    add         esp,0FFFFFFF4
 0059B522    push        ebx
 0059B523    xor         ecx,ecx
 0059B525    mov         dword ptr [ebp-0C],ecx
 0059B528    mov         dword ptr [ebp-8],edx
 0059B52B    mov         dword ptr [ebp-4],eax
 0059B52E    xor         eax,eax
 0059B530    push        ebp
 0059B531    push        59B5AB
 0059B536    push        dword ptr fs:[eax]
 0059B539    mov         dword ptr fs:[eax],esp
 0059B53C    mov         eax,dword ptr [ebp-4]
 0059B53F    mov         edx,dword ptr [eax]
 0059B541    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B547    inc         eax
>0059B548    je          0059B595
 0059B54A    mov         eax,dword ptr [ebp-4]
 0059B54D    mov         edx,dword ptr [eax]
 0059B54F    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B555    mov         edx,eax
 0059B557    lea         ecx,[ebp-0C]
 0059B55A    mov         eax,dword ptr [ebp-4]
 0059B55D    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059B563    mov         ebx,dword ptr [eax]
 0059B565    call        dword ptr [ebx+0C];@AbstractError
 0059B568    mov         eax,dword ptr [ebp-0C]
 0059B56B    push        eax
 0059B56C    mov         eax,dword ptr [ebp-4]
 0059B56F    mov         edx,dword ptr [eax]
 0059B571    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B577    mov         edx,eax
 0059B579    mov         eax,dword ptr [ebp-4]
 0059B57C    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059B582    mov         ecx,dword ptr [eax]
 0059B584    call        dword ptr [ecx+18];TStrings.sub_00647284
 0059B587    mov         ecx,eax
 0059B589    mov         eax,dword ptr [ebp-8]
 0059B58C    pop         edx
 0059B58D    mov         ebx,dword ptr [eax]
 0059B58F    call        dword ptr [ebx+0D0]
 0059B595    xor         eax,eax
 0059B597    pop         edx
 0059B598    pop         ecx
 0059B599    pop         ecx
 0059B59A    mov         dword ptr fs:[eax],edx
 0059B59D    push        59B5B2
 0059B5A2    lea         eax,[ebp-0C]
 0059B5A5    call        @LStrClr
 0059B5AA    ret
>0059B5AB    jmp         @HandleFinally
>0059B5B0    jmp         0059B5A2
 0059B5B2    pop         ebx
 0059B5B3    mov         esp,ebp
 0059B5B5    pop         ebp
 0059B5B6    ret
end;*}

//0059B5B8
procedure sub_0059B5B8;
begin
{*
 0059B5B8    push        ebp
 0059B5B9    mov         ebp,esp
 0059B5BB    push        ecx
 0059B5BC    mov         dword ptr [ebp-4],eax
 0059B5BF    mov         eax,dword ptr [ebp-4]
 0059B5C2    mov         edx,dword ptr [eax]
 0059B5C4    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B5CA    inc         eax
>0059B5CB    je          0059B5E8
 0059B5CD    mov         eax,dword ptr [ebp-4]
 0059B5D0    mov         edx,dword ptr [eax]
 0059B5D2    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059B5D8    mov         edx,eax
 0059B5DA    mov         eax,dword ptr [ebp-4]
 0059B5DD    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059B5E3    mov         ecx,dword ptr [eax]
 0059B5E5    call        dword ptr [ecx+48];@AbstractError
 0059B5E8    pop         ecx
 0059B5E9    pop         ebp
 0059B5EA    ret
*}
end;

//0059B5EC
{*function sub_0059B5EC:?;
begin
 0059B5EC    push        ebp
 0059B5ED    mov         ebp,esp
 0059B5EF    add         esp,0FFFFFFF8
 0059B5F2    mov         dword ptr [ebp-4],eax
 0059B5F5    mov         eax,dword ptr [ebp-4]
 0059B5F8    mov         edx,dword ptr [eax]
 0059B5FA    call        dword ptr [edx+100];@AbstractError
 0059B600    mov         dword ptr [ebp-8],eax
 0059B603    mov         eax,dword ptr [ebp-8]
 0059B606    pop         ecx
 0059B607    pop         ecx
 0059B608    pop         ebp
 0059B609    ret
end;*}

//0059B60C
procedure TComboBox.SetDropDownCount(Value:Integer);
begin
{*
 0059B60C    push        ebp
 0059B60D    mov         ebp,esp
 0059B60F    add         esp,0FFFFFFF8
 0059B612    mov         dword ptr [ebp-8],edx
 0059B615    mov         dword ptr [ebp-4],eax
 0059B618    mov         eax,dword ptr [ebp-8]
 0059B61B    mov         edx,dword ptr [ebp-4]
 0059B61E    mov         dword ptr [edx+210],eax;TComboBox.FDropDownCount:Integer
 0059B624    pop         ecx
 0059B625    pop         ecx
 0059B626    pop         ebp
 0059B627    ret
*}
end;

//0059B628
{*procedure sub_0059B628(?:?; ?:?);
begin
 0059B628    push        ebp
 0059B629    mov         ebp,esp
 0059B62B    add         esp,0FFFFFFF4
 0059B62E    push        ebx
 0059B62F    mov         dword ptr [ebp-0C],ecx
 0059B632    mov         dword ptr [ebp-8],edx
 0059B635    mov         dword ptr [ebp-4],eax
 0059B638    mov         eax,dword ptr [ebp-8]
 0059B63B    call        @LStrAddRef
 0059B640    xor         eax,eax
 0059B642    push        ebp
 0059B643    push        59B678
 0059B648    push        dword ptr fs:[eax]
 0059B64B    mov         dword ptr fs:[eax],esp
 0059B64E    mov         ecx,dword ptr [ebp-0C]
 0059B651    mov         edx,dword ptr [ebp-8]
 0059B654    mov         eax,dword ptr [ebp-4]
 0059B657    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0059B65D    mov         ebx,dword ptr [eax]
 0059B65F    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 0059B662    xor         eax,eax
 0059B664    pop         edx
 0059B665    pop         ecx
 0059B666    pop         ecx
 0059B667    mov         dword ptr fs:[eax],edx
 0059B66A    push        59B67F
 0059B66F    lea         eax,[ebp-8]
 0059B672    call        @LStrClr
 0059B677    ret
>0059B678    jmp         @HandleFinally
>0059B67D    jmp         0059B66F
 0059B67F    pop         ebx
 0059B680    mov         esp,ebp
 0059B682    pop         ebp
 0059B683    ret
end;*}

//0059B684
constructor TCustomComboBox.Create(AOwner:TComponent);
begin
{*
 0059B684    push        ebp
 0059B685    mov         ebp,esp
 0059B687    add         esp,0FFFFFFF4
 0059B68A    test        dl,dl
>0059B68C    je          0059B696
 0059B68E    add         esp,0FFFFFFF0
 0059B691    call        @ClassCreate
 0059B696    mov         dword ptr [ebp-0C],ecx
 0059B699    mov         byte ptr [ebp-5],dl
 0059B69C    mov         dword ptr [ebp-4],eax
 0059B69F    mov         ecx,dword ptr [ebp-0C]
 0059B6A2    xor         edx,edx
 0059B6A4    mov         eax,dword ptr [ebp-4]
 0059B6A7    call        TCustomCombo.Create
 0059B6AC    mov         dl,1
 0059B6AE    mov         eax,[00597BC4];TComboBoxStrings
 0059B6B3    call        TObject.Create;TComboBoxStrings.Create
 0059B6B8    mov         edx,dword ptr [ebp-4]
 0059B6BB    mov         dword ptr [edx+23C],eax;TCustomComboBox.FItems:TStrings
 0059B6C1    mov         eax,dword ptr [ebp-4]
 0059B6C4    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B6CA    mov         edx,dword ptr [ebp-4]
 0059B6CD    mov         dword ptr [eax+10],edx
 0059B6D0    mov         eax,dword ptr [ebp-4]
 0059B6D3    mov         dword ptr [eax+238],10;TCustomComboBox.FItemHeight:Integer
 0059B6DD    mov         eax,dword ptr [ebp-4]
 0059B6E0    mov         byte ptr [eax+276],0;TCustomComboBox.FStyle:TComboBoxStyle
 0059B6E7    mov         eax,dword ptr [ebp-4]
 0059B6EA    xor         edx,edx
 0059B6EC    mov         dword ptr [eax+26C],edx;TCustomComboBox.FLastTime:Cardinal
 0059B6F2    mov         eax,dword ptr [ebp-4]
 0059B6F5    mov         byte ptr [eax+268],1;TCustomComboBox.FAutoComplete:Boolean
 0059B6FC    mov         eax,dword ptr [ebp-4]
 0059B6FF    cmp         byte ptr [ebp-5],0
>0059B703    je          0059B714
 0059B705    call        @AfterConstruction
 0059B70A    pop         dword ptr fs:[0]
 0059B711    add         esp,0C
 0059B714    mov         eax,dword ptr [ebp-4]
 0059B717    mov         esp,ebp
 0059B719    pop         ebp
 0059B71A    ret
*}
end;

//0059B71C
destructor TCustomComboBox.Destroy;
begin
{*
 0059B71C    push        ebp
 0059B71D    mov         ebp,esp
 0059B71F    add         esp,0FFFFFFF8
 0059B722    call        @BeforeDestruction
 0059B727    mov         byte ptr [ebp-5],dl
 0059B72A    mov         dword ptr [ebp-4],eax
 0059B72D    mov         eax,dword ptr [ebp-4]
 0059B730    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B736    call        TObject.Free
 0059B73B    mov         eax,dword ptr [ebp-4]
 0059B73E    mov         eax,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 0059B744    call        TObject.Free
 0059B749    mov         dl,byte ptr [ebp-5]
 0059B74C    and         dl,0FC
 0059B74F    mov         eax,dword ptr [ebp-4]
 0059B752    call        TCustomCombo.Destroy
 0059B757    cmp         byte ptr [ebp-5],0
>0059B75B    jle         0059B765
 0059B75D    mov         eax,dword ptr [ebp-4]
 0059B760    call        @ClassDestroy
 0059B765    pop         ecx
 0059B766    pop         ecx
 0059B767    pop         ebp
 0059B768    ret
*}
end;

//0059B76C
procedure TComboBox.SetSorted(Value:Boolean);
begin
{*
 0059B76C    push        ebp
 0059B76D    mov         ebp,esp
 0059B76F    add         esp,0FFFFFFF8
 0059B772    mov         byte ptr [ebp-5],dl
 0059B775    mov         dword ptr [ebp-4],eax
 0059B778    mov         eax,dword ptr [ebp-4]
 0059B77B    mov         al,byte ptr [eax+275];TComboBox.FSorted:Boolean
 0059B781    cmp         al,byte ptr [ebp-5]
>0059B784    je          0059B79A
 0059B786    mov         al,byte ptr [ebp-5]
 0059B789    mov         edx,dword ptr [ebp-4]
 0059B78C    mov         byte ptr [edx+275],al;TComboBox.FSorted:Boolean
 0059B792    mov         eax,dword ptr [ebp-4]
 0059B795    call        TWinControl.RecreateWnd
 0059B79A    pop         ecx
 0059B79B    pop         ecx
 0059B79C    pop         ebp
 0059B79D    ret
*}
end;

//0059B7A0
procedure TComboBox.SetStyle(Value:TComboBoxStyle);
begin
{*
 0059B7A0    push        ebp
 0059B7A1    mov         ebp,esp
 0059B7A3    add         esp,0FFFFFFF8
 0059B7A6    mov         byte ptr [ebp-5],dl
 0059B7A9    mov         dword ptr [ebp-4],eax
 0059B7AC    mov         eax,dword ptr [ebp-4]
 0059B7AF    mov         al,byte ptr [eax+276];TComboBox.FStyle:TComboBoxStyle
 0059B7B5    cmp         al,byte ptr [ebp-5]
>0059B7B8    je          0059B7FA
 0059B7BA    mov         al,byte ptr [ebp-5]
 0059B7BD    mov         edx,dword ptr [ebp-4]
 0059B7C0    mov         byte ptr [edx+276],al;TComboBox.FStyle:TComboBoxStyle
 0059B7C6    cmp         byte ptr [ebp-5],1
>0059B7CA    jne         0059B7E1
 0059B7CC    mov         eax,[0059B800];0x200 gvar_0059B800
 0059B7D1    mov         edx,dword ptr [ebp-4]
 0059B7D4    not         eax
 0059B7D6    and         eax,dword ptr [edx+50];TComboBox.FControlStyle:TControlStyle
 0059B7D9    mov         edx,dword ptr [ebp-4]
 0059B7DC    mov         dword ptr [edx+50],eax;TComboBox.FControlStyle:TControlStyle
>0059B7DF    jmp         0059B7F2
 0059B7E1    mov         eax,[0059B800];0x200 gvar_0059B800
 0059B7E6    mov         edx,dword ptr [ebp-4]
 0059B7E9    or          eax,dword ptr [edx+50];TComboBox.FControlStyle:TControlStyle
 0059B7EC    mov         edx,dword ptr [ebp-4]
 0059B7EF    mov         dword ptr [edx+50],eax;TComboBox.FControlStyle:TControlStyle
 0059B7F2    mov         eax,dword ptr [ebp-4]
 0059B7F5    call        TWinControl.RecreateWnd
 0059B7FA    pop         ecx
 0059B7FB    pop         ecx
 0059B7FC    pop         ebp
 0059B7FD    ret
*}
end;

//0059B804
function TComboBox.GetItemHeight:Integer;
begin
{*
 0059B804    push        ebp
 0059B805    mov         ebp,esp
 0059B807    add         esp,0FFFFFFF8
 0059B80A    mov         dword ptr [ebp-4],eax
 0059B80D    mov         eax,dword ptr [ebp-4]
 0059B810    mov         al,byte ptr [eax+276];TComboBox.FStyle:TComboBoxStyle
 0059B816    add         al,0FD
 0059B818    sub         al,2
>0059B81A    jae         0059B82A
 0059B81C    mov         eax,dword ptr [ebp-4]
 0059B81F    mov         eax,dword ptr [eax+238];TComboBox.FItemHeight:Integer
 0059B825    mov         dword ptr [ebp-8],eax
>0059B828    jmp         0059B83E
 0059B82A    push        0
 0059B82C    xor         ecx,ecx
 0059B82E    mov         edx,154
 0059B833    mov         eax,dword ptr [ebp-4]
 0059B836    call        005F4FA8
 0059B83B    mov         dword ptr [ebp-8],eax
 0059B83E    mov         eax,dword ptr [ebp-8]
 0059B841    pop         ecx
 0059B842    pop         ecx
 0059B843    pop         ebp
 0059B844    ret
*}
end;

//0059B848
{*procedure sub_0059B848(?:?);
begin
 0059B848    push        ebp
 0059B849    mov         ebp,esp
 0059B84B    add         esp,0FFFFFFF8
 0059B84E    mov         dword ptr [ebp-8],edx
 0059B851    mov         dword ptr [ebp-4],eax
 0059B854    mov         edx,dword ptr [ebp-8]
 0059B857    mov         eax,dword ptr [ebp-4]
 0059B85A    call        005F7FC0
 0059B85F    mov         ecx,59B8B8
 0059B864    mov         edx,dword ptr [ebp-8]
 0059B867    mov         eax,dword ptr [ebp-4]
 0059B86A    call        005F7E98
 0059B86F    mov         eax,dword ptr [ebp-8]
 0059B872    mov         eax,dword ptr [eax+4]
 0059B875    or          eax,200240
 0059B87A    mov         edx,dword ptr [ebp-4]
 0059B87D    movzx       edx,byte ptr [edx+276];TCustomComboBox.FStyle:TComboBoxStyle
 0059B884    or          eax,dword ptr [edx*4+6E3ABC]
 0059B88B    mov         edx,dword ptr [ebp-4]
 0059B88E    movzx       edx,byte ptr [edx+275];TCustomComboBox.FSorted:Boolean
 0059B895    or          eax,dword ptr [edx*4+6E3ADC]
 0059B89C    mov         edx,dword ptr [ebp-4]
 0059B89F    movzx       edx,byte ptr [edx+274];TCustomComboBox.FCharCase:TEditCharCase
 0059B8A6    or          eax,dword ptr [edx*4+6E3AD0]
 0059B8AD    mov         edx,dword ptr [ebp-8]
 0059B8B0    mov         dword ptr [edx+4],eax
 0059B8B3    pop         ecx
 0059B8B4    pop         ecx
 0059B8B5    pop         ebp
 0059B8B6    ret
end;*}

//0059B8C4
procedure TCustomComboBox.CreateWnd;
begin
{*
 0059B8C4    push        ebp
 0059B8C5    mov         ebp,esp
 0059B8C7    add         esp,0FFFFFFF8
 0059B8CA    mov         dword ptr [ebp-4],eax
 0059B8CD    mov         eax,dword ptr [ebp-4]
 0059B8D0    call        TCustomCombo.CreateWnd
 0059B8D5    mov         eax,dword ptr [ebp-4]
 0059B8D8    call        TWinControl.GetHandle
 0059B8DD    mov         edx,dword ptr [ebp-4]
 0059B8E0    mov         dword ptr [edx+248],eax;TCustomComboBox.FDropHandle:HWND
 0059B8E6    mov         eax,dword ptr [ebp-4]
 0059B8E9    cmp         dword ptr [eax+278],0;TCustomComboBox.FSaveItems:TStringList
>0059B8F0    je          0059B981
 0059B8F6    mov         eax,dword ptr [ebp-4]
 0059B8F9    mov         edx,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 0059B8FF    mov         eax,dword ptr [ebp-4]
 0059B902    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B908    mov         ecx,dword ptr [eax]
 0059B90A    call        dword ptr [ecx+8];TStrings.Assign
 0059B90D    mov         eax,dword ptr [ebp-4]
 0059B910    mov         eax,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 0059B916    call        TObject.Free
 0059B91B    mov         eax,dword ptr [ebp-4]
 0059B91E    xor         edx,edx
 0059B920    mov         dword ptr [eax+278],edx;TCustomComboBox.FSaveItems:TStringList
 0059B926    mov         eax,dword ptr [ebp-4]
 0059B929    cmp         dword ptr [eax+260],0FFFFFFFF;TCustomComboBox.FSaveIndex:Integer
>0059B930    je          0059B981
 0059B932    mov         eax,dword ptr [ebp-4]
 0059B935    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B93B    mov         edx,dword ptr [eax]
 0059B93D    call        dword ptr [edx+14];@AbstractError
 0059B940    mov         edx,dword ptr [ebp-4]
 0059B943    cmp         eax,dword ptr [edx+260];TCustomComboBox.FSaveIndex:Integer
>0059B949    jge         0059B962
 0059B94B    mov         eax,dword ptr [ebp-4]
 0059B94E    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059B954    mov         edx,dword ptr [eax]
 0059B956    call        dword ptr [edx+14];@AbstractError
 0059B959    mov         edx,dword ptr [ebp-4]
 0059B95C    mov         dword ptr [edx+260],eax;TCustomComboBox.FSaveIndex:Integer
 0059B962    push        0
 0059B964    mov         eax,dword ptr [ebp-4]
 0059B967    mov         eax,dword ptr [eax+260];TCustomComboBox.FSaveIndex:Integer
 0059B96D    push        eax
 0059B96E    push        14E
 0059B973    mov         eax,dword ptr [ebp-4]
 0059B976    call        TWinControl.GetHandle
 0059B97B    push        eax
 0059B97C    call        USER32.SendMessageA
 0059B981    mov         eax,dword ptr [ebp-4]
 0059B984    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 0059B98A    sub         al,2
>0059B98C    jae         0059BA4B
 0059B992    push        5
 0059B994    mov         eax,dword ptr [ebp-4]
 0059B997    call        TWinControl.GetHandle
 0059B99C    push        eax
 0059B99D    call        USER32.GetWindow
 0059B9A2    mov         dword ptr [ebp-8],eax
 0059B9A5    cmp         dword ptr [ebp-8],0
>0059B9A9    je          0059BA4B
 0059B9AF    mov         eax,dword ptr [ebp-4]
 0059B9B2    cmp         byte ptr [eax+276],1;TCustomComboBox.FStyle:TComboBoxStyle
>0059B9B9    jne         0059BA0A
 0059B9BB    mov         eax,dword ptr [ebp-8]
 0059B9BE    mov         edx,dword ptr [ebp-4]
 0059B9C1    mov         dword ptr [edx+244],eax;TCustomComboBox.FListHandle:HWND
 0059B9C7    push        0FC
 0059B9C9    mov         eax,dword ptr [ebp-4]
 0059B9CC    mov         eax,dword ptr [eax+244];TCustomComboBox.FListHandle:HWND
 0059B9D2    push        eax
 0059B9D3    call        USER32.GetWindowLongA
 0059B9D8    mov         edx,dword ptr [ebp-4]
 0059B9DB    mov         dword ptr [edx+258],eax;TCustomComboBox.FDefListProc:Pointer
 0059B9E1    mov         eax,dword ptr [ebp-4]
 0059B9E4    mov         eax,dword ptr [eax+254];TCustomComboBox.FListInstance:Pointer
 0059B9EA    push        eax
 0059B9EB    push        0FC
 0059B9ED    mov         eax,dword ptr [ebp-4]
 0059B9F0    mov         eax,dword ptr [eax+244];TCustomComboBox.FListHandle:HWND
 0059B9F6    push        eax
 0059B9F7    call        USER32.SetWindowLongA
 0059B9FC    push        2
 0059B9FE    mov         eax,dword ptr [ebp-8]
 0059BA01    push        eax
 0059BA02    call        USER32.GetWindow
 0059BA07    mov         dword ptr [ebp-8],eax
 0059BA0A    mov         eax,dword ptr [ebp-8]
 0059BA0D    mov         edx,dword ptr [ebp-4]
 0059BA10    mov         dword ptr [edx+240],eax;TCustomComboBox.FEditHandle:HWND
 0059BA16    push        0FC
 0059BA18    mov         eax,dword ptr [ebp-4]
 0059BA1B    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 0059BA21    push        eax
 0059BA22    call        USER32.GetWindowLongA
 0059BA27    mov         edx,dword ptr [ebp-4]
 0059BA2A    mov         dword ptr [edx+250],eax;TCustomComboBox.FDefEditProc:Pointer
 0059BA30    mov         eax,dword ptr [ebp-4]
 0059BA33    mov         eax,dword ptr [eax+24C];TCustomComboBox.FEditInstance:Pointer
 0059BA39    push        eax
 0059BA3A    push        0FC
 0059BA3C    mov         eax,dword ptr [ebp-4]
 0059BA3F    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 0059BA45    push        eax
 0059BA46    call        USER32.SetWindowLongA
 0059BA4B    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059BA50    cmp         byte ptr [eax],0
>0059BA53    je          0059BA79
 0059BA55    mov         eax,dword ptr [ebp-4]
 0059BA58    cmp         dword ptr [eax+240],0;TCustomComboBox.FEditHandle:HWND
>0059BA5F    je          0059BA79
 0059BA61    push        0
 0059BA63    push        3
 0059BA65    push        0D3
 0059BA6A    mov         eax,dword ptr [ebp-4]
 0059BA6D    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 0059BA73    push        eax
 0059BA74    call        USER32.SendMessageA
 0059BA79    pop         ecx
 0059BA7A    pop         ecx
 0059BA7B    pop         ebp
 0059BA7C    ret
*}
end;

//0059BA80
procedure TCustomComboBox.DestroyWnd;
begin
{*
 0059BA80    push        ebp
 0059BA81    mov         ebp,esp
 0059BA83    push        ecx
 0059BA84    mov         dword ptr [ebp-4],eax
 0059BA87    mov         eax,dword ptr [ebp-4]
 0059BA8A    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059BA90    mov         edx,dword ptr [eax]
 0059BA92    call        dword ptr [edx+14];@AbstractError
 0059BA95    test        eax,eax
>0059BA97    jle         0059BAD9
 0059BA99    mov         eax,dword ptr [ebp-4]
 0059BA9C    mov         edx,dword ptr [eax]
 0059BA9E    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059BAA4    mov         edx,dword ptr [ebp-4]
 0059BAA7    mov         dword ptr [edx+260],eax;TCustomComboBox.FSaveIndex:Integer
 0059BAAD    mov         dl,1
 0059BAAF    mov         eax,[006428B0];TStringList
 0059BAB4    call        TObject.Create;TStringList.Create
 0059BAB9    mov         edx,dword ptr [ebp-4]
 0059BABC    mov         dword ptr [edx+278],eax;TCustomComboBox.FSaveItems:TStringList
 0059BAC2    mov         eax,dword ptr [ebp-4]
 0059BAC5    mov         edx,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059BACB    mov         eax,dword ptr [ebp-4]
 0059BACE    mov         eax,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 0059BAD4    mov         ecx,dword ptr [eax]
 0059BAD6    call        dword ptr [ecx+8];TStrings.Assign
 0059BAD9    mov         eax,dword ptr [ebp-4]
 0059BADC    call        TWinControl.DestroyWnd
 0059BAE1    pop         ecx
 0059BAE2    pop         ebp
 0059BAE3    ret
*}
end;

//0059BAE4
procedure TCustomComboBox.WMEraseBkgnd(Message:TWMEraseBkgnd);
begin
{*
 0059BAE4    push        ebp
 0059BAE5    mov         ebp,esp
 0059BAE7    add         esp,0FFFFFFE8
 0059BAEA    mov         dword ptr [ebp-8],edx
 0059BAED    mov         dword ptr [ebp-4],eax
 0059BAF0    mov         eax,dword ptr [ebp-4]
 0059BAF3    cmp         byte ptr [eax+276],1;TCustomComboBox.FStyle:TComboBoxStyle
>0059BAFA    jne         0059BB35
 0059BAFC    mov         eax,dword ptr [ebp-4]
 0059BAFF    mov         eax,dword ptr [eax+30];TCustomComboBox.FParent:TWinControl
 0059BB02    mov         eax,dword ptr [eax+170];TWinControl.FBrush:TBrush
 0059BB08    call        TBrush.GetHandle
 0059BB0D    push        eax
 0059BB0E    lea         edx,[ebp-18]
 0059BB11    mov         eax,dword ptr [ebp-4]
 0059BB14    mov         ecx,dword ptr [eax]
 0059BB16    call        dword ptr [ecx+44];TCustomComboBox.sub_005FC204
 0059BB19    lea         eax,[ebp-18]
 0059BB1C    push        eax
 0059BB1D    mov         eax,dword ptr [ebp-8]
 0059BB20    mov         eax,dword ptr [eax+4]
 0059BB23    push        eax
 0059BB24    call        USER32.FillRect
 0059BB29    mov         eax,dword ptr [ebp-8]
 0059BB2C    mov         dword ptr [eax+0C],1
>0059BB33    jmp         0059BB40
 0059BB35    mov         edx,dword ptr [ebp-8]
 0059BB38    mov         eax,dword ptr [ebp-4]
 0059BB3B    mov         ecx,dword ptr [eax]
 0059BB3D    call        dword ptr [ecx-10];TCustomComboBox.DefaultHandler
 0059BB40    mov         esp,ebp
 0059BB42    pop         ebp
 0059BB43    ret
*}
end;

//0059BB44
{*function sub_0059BB44(?:?; ?:?; ?:?):?;
begin
 0059BB44    push        ebp
 0059BB45    mov         ebp,esp
 0059BB47    add         esp,0FFFFFFF4
 0059BB4A    mov         dword ptr [ebp-8],edx
 0059BB4D    mov         dword ptr [ebp-4],eax
 0059BB50    mov         eax,dword ptr [ebp-8]
 0059BB53    push        eax
 0059BB54    mov         eax,dword ptr [ebp-4]
 0059BB57    push        eax
 0059BB58    push        140
 0059BB5D    mov         eax,dword ptr [ebp+8]
 0059BB60    mov         eax,dword ptr [eax-4]
 0059BB63    call        TWinControl.GetHandle
 0059BB68    push        eax
 0059BB69    call        USER32.SendMessageA
 0059BB6E    mov         eax,dword ptr [ebp-8]
 0059BB71    mov         eax,dword ptr [eax]
 0059BB73    mov         edx,dword ptr [ebp-4]
 0059BB76    cmp         eax,dword ptr [edx]
 0059BB78    seta        byte ptr [ebp-9]
 0059BB7C    mov         al,byte ptr [ebp-9]
 0059BB7F    mov         esp,ebp
 0059BB81    pop         ebp
 0059BB82    ret
end;*}

//0059BB84
{*procedure sub_0059BB84(?:?);
begin
 0059BB84    push        ebp
 0059BB85    mov         ebp,esp
 0059BB87    add         esp,0FFFFFFF4
 0059BB8A    xor         eax,eax
 0059BB8C    mov         dword ptr [ebp-0C],eax
 0059BB8F    xor         eax,eax
 0059BB91    push        ebp
 0059BB92    push        59BC3F
 0059BB97    push        dword ptr fs:[eax]
 0059BB9A    mov         dword ptr fs:[eax],esp
 0059BB9D    lea         edx,[ebp-0C]
 0059BBA0    mov         eax,dword ptr [ebp+8]
 0059BBA3    mov         eax,dword ptr [eax-4]
 0059BBA6    call        TTabPage.GetCaption
 0059BBAB    lea         eax,[ebp-8]
 0059BBAE    push        eax
 0059BBAF    lea         eax,[ebp-4]
 0059BBB2    push        eax
 0059BBB3    push        140
 0059BBB8    mov         eax,dword ptr [ebp+8]
 0059BBBB    mov         eax,dword ptr [eax-4]
 0059BBBE    call        TWinControl.GetHandle
 0059BBC3    push        eax
 0059BBC4    call        USER32.SendMessageA
 0059BBC9    mov         ecx,dword ptr [ebp-8]
 0059BBCC    sub         ecx,dword ptr [ebp-4]
 0059BBCF    mov         edx,dword ptr [ebp-4]
 0059BBD2    inc         edx
 0059BBD3    lea         eax,[ebp-0C]
 0059BBD6    call        @LStrDelete
 0059BBDB    push        0
 0059BBDD    push        0FF
 0059BBDF    push        14E
 0059BBE4    mov         eax,dword ptr [ebp+8]
 0059BBE7    mov         eax,dword ptr [eax-4]
 0059BBEA    call        TWinControl.GetHandle
 0059BBEF    push        eax
 0059BBF0    call        USER32.SendMessageA
 0059BBF5    mov         eax,dword ptr [ebp+8]
 0059BBF8    mov         eax,dword ptr [eax-4]
 0059BBFB    mov         edx,dword ptr [ebp-0C]
 0059BBFE    call        TTabPage.SetCaption
 0059BC03    mov         dx,word ptr [ebp-4]
 0059BC07    mov         ax,word ptr [ebp-4]
 0059BC0B    call        0063D0C4
 0059BC10    push        eax
 0059BC11    push        0
 0059BC13    push        142
 0059BC18    mov         eax,dword ptr [ebp+8]
 0059BC1B    mov         eax,dword ptr [eax-4]
 0059BC1E    call        TWinControl.GetHandle
 0059BC23    push        eax
 0059BC24    call        USER32.SendMessageA
 0059BC29    xor         eax,eax
 0059BC2B    pop         edx
 0059BC2C    pop         ecx
 0059BC2D    pop         ecx
 0059BC2E    mov         dword ptr fs:[eax],edx
 0059BC31    push        59BC46
 0059BC36    lea         eax,[ebp-0C]
 0059BC39    call        @LStrClr
 0059BC3E    ret
>0059BC3F    jmp         @HandleFinally
>0059BC44    jmp         0059BC36
 0059BC46    mov         esp,ebp
 0059BC48    pop         ebp
 0059BC49    ret
end;*}

//0059BC4C
{*procedure TCustomComboBox.sub_0059BC4C(?:?);
begin
 0059BC4C    push        ebp
 0059BC4D    mov         ebp,esp
 0059BC4F    mov         ecx,0C
 0059BC54    push        0
 0059BC56    push        0
 0059BC58    dec         ecx
>0059BC59    jne         0059BC54
 0059BC5B    push        esi
 0059BC5C    mov         dword ptr [ebp-8],edx
 0059BC5F    mov         dword ptr [ebp-4],eax
 0059BC62    xor         eax,eax
 0059BC64    push        ebp
 0059BC65    push        59C023
 0059BC6A    push        dword ptr fs:[eax]
 0059BC6D    mov         dword ptr fs:[eax],esp
 0059BC70    mov         edx,dword ptr [ebp-8]
 0059BC73    mov         eax,dword ptr [ebp-4]
 0059BC76    call        TWinControl.sub_005FAA3C
 0059BC7B    mov         eax,dword ptr [ebp-4]
 0059BC7E    cmp         byte ptr [eax+268],0;TCustomComboBox.FAutoComplete:Boolean
>0059BC85    je          0059BFD9
 0059BC8B    mov         eax,dword ptr [ebp-4]
 0059BC8E    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 0059BC94    sub         al,2
>0059BC96    jae         0059BCB5
 0059BC98    lea         edx,[ebp-3C]
 0059BC9B    mov         eax,dword ptr [ebp-4]
 0059BC9E    call        TTabPage.GetCaption
 0059BCA3    mov         edx,dword ptr [ebp-3C]
 0059BCA6    mov         eax,dword ptr [ebp-4]
 0059BCA9    add         eax,270;TCustomComboBox.FFilter:String
 0059BCAE    call        @LStrAsg
>0059BCB3    jmp         0059BCE5
 0059BCB5    call        KERNEL32.GetTickCount
 0059BCBA    mov         edx,dword ptr [ebp-4]
 0059BCBD    sub         eax,dword ptr [edx+26C]
 0059BCC3    cmp         eax,1F4
>0059BCC8    jb          0059BCD7
 0059BCCA    mov         eax,dword ptr [ebp-4]
 0059BCCD    add         eax,270;TCustomComboBox.FFilter:String
 0059BCD2    call        @LStrClr
 0059BCD7    call        KERNEL32.GetTickCount
 0059BCDC    mov         edx,dword ptr [ebp-4]
 0059BCDF    mov         dword ptr [edx+26C],eax;TCustomComboBox.FLastTime:Cardinal
 0059BCE5    mov         eax,dword ptr [ebp-8]
 0059BCE8    mov         al,byte ptr [eax]
 0059BCEA    sub         al,8
>0059BCEC    je          0059BD2E
 0059BCEE    dec         al
>0059BCF0    je          0059BCFF
 0059BCF2    sub         al,12
>0059BCF4    jne         0059BEB5
>0059BCFA    jmp         0059BFD9
 0059BCFF    mov         eax,dword ptr [ebp-4]
 0059BD02    cmp         byte ptr [eax+269],0;TCustomComboBox.FAutoDropDown:Boolean
>0059BD09    je          0059BFD9
 0059BD0F    mov         eax,dword ptr [ebp-4]
 0059BD12    call        0059A70C
 0059BD17    test        al,al
>0059BD19    je          0059BFD9
 0059BD1F    xor         edx,edx
 0059BD21    mov         eax,dword ptr [ebp-4]
 0059BD24    call        0059A73C
>0059BD29    jmp         0059BFD9
 0059BD2E    push        ebp
 0059BD2F    lea         edx,[ebp-10]
 0059BD32    lea         eax,[ebp-0C]
 0059BD35    call        0059BB44
 0059BD3A    pop         ecx
 0059BD3B    test        al,al
>0059BD3D    je          0059BD4B
 0059BD3F    push        ebp
 0059BD40    call        0059BB84
 0059BD45    pop         ecx
>0059BD46    jmp         0059BE9E
 0059BD4B    mov         eax,dword ptr [ebp-4]
 0059BD4E    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 0059BD54    sub         al,2
>0059BD56    jae         0059BE5A
 0059BD5C    lea         edx,[ebp-40]
 0059BD5F    mov         eax,dword ptr [ebp-4]
 0059BD62    call        TTabPage.GetCaption
 0059BD67    mov         eax,dword ptr [ebp-40]
 0059BD6A    call        @LStrLen
 0059BD6F    test        eax,eax
>0059BD71    jle         0059BE5A
 0059BD77    lea         edx,[ebp-18]
 0059BD7A    mov         eax,dword ptr [ebp-4]
 0059BD7D    call        TTabPage.GetCaption
 0059BD82    mov         eax,dword ptr [ebp-0C]
 0059BD85    mov         dword ptr [ebp-1C],eax
>0059BD88    jmp         0059BD8D
 0059BD8A    dec         dword ptr [ebp-1C]
 0059BD8D    mov         edx,dword ptr [ebp-1C]
 0059BD90    mov         eax,dword ptr [ebp-18]
 0059BD93    call        0065CF98
 0059BD98    cmp         al,2
>0059BD9A    je          0059BD8A
 0059BD9C    lea         eax,[ebp-14]
 0059BD9F    push        eax
 0059BDA0    mov         ecx,dword ptr [ebp-1C]
 0059BDA3    dec         ecx
 0059BDA4    mov         edx,1
 0059BDA9    mov         eax,dword ptr [ebp-18]
 0059BDAC    call        @LStrCopy
 0059BDB1    push        0
 0059BDB3    push        0FF
 0059BDB5    push        14E
 0059BDBA    mov         eax,dword ptr [ebp-4]
 0059BDBD    call        TWinControl.GetHandle
 0059BDC2    push        eax
 0059BDC3    call        USER32.SendMessageA
 0059BDC8    lea         eax,[ebp-48]
 0059BDCB    push        eax
 0059BDCC    mov         edx,dword ptr [ebp-10]
 0059BDCF    inc         edx
 0059BDD0    mov         ecx,7FFFFFFF
 0059BDD5    mov         eax,dword ptr [ebp-18]
 0059BDD8    call        @LStrCopy
 0059BDDD    mov         ecx,dword ptr [ebp-48]
 0059BDE0    lea         eax,[ebp-44]
 0059BDE3    mov         edx,dword ptr [ebp-14]
 0059BDE6    call        @LStrCat3
 0059BDEB    mov         edx,dword ptr [ebp-44]
 0059BDEE    mov         eax,dword ptr [ebp-4]
 0059BDF1    call        TTabPage.SetCaption
 0059BDF6    mov         dx,word ptr [ebp-1C]
 0059BDFA    dec         edx
 0059BDFB    mov         ax,word ptr [ebp-1C]
 0059BDFF    dec         eax
 0059BE00    call        0063D0C4
 0059BE05    push        eax
 0059BE06    push        0
 0059BE08    push        142
 0059BE0D    mov         eax,dword ptr [ebp-4]
 0059BE10    call        TWinControl.GetHandle
 0059BE15    push        eax
 0059BE16    call        USER32.SendMessageA
 0059BE1B    lea         edx,[ebp-4C]
 0059BE1E    mov         eax,dword ptr [ebp-4]
 0059BE21    call        TTabPage.GetCaption
 0059BE26    mov         edx,dword ptr [ebp-4C]
 0059BE29    mov         eax,dword ptr [ebp-4]
 0059BE2C    add         eax,270;TCustomComboBox.FFilter:String
 0059BE31    call        @LStrAsg
>0059BE36    jmp         0059BE9E
 0059BE38    mov         eax,dword ptr [ebp-4]
 0059BE3B    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BE41    call        @LStrLen
 0059BE46    mov         edx,eax
 0059BE48    mov         eax,dword ptr [ebp-4]
 0059BE4B    add         eax,270;TCustomComboBox.FFilter:String
 0059BE50    mov         ecx,1
 0059BE55    call        @LStrDelete
 0059BE5A    mov         eax,dword ptr [ebp-4]
 0059BE5D    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BE63    call        @LStrLen
 0059BE68    mov         edx,eax
 0059BE6A    mov         eax,dword ptr [ebp-4]
 0059BE6D    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BE73    call        0065CF98
 0059BE78    cmp         al,2
>0059BE7A    je          0059BE38
 0059BE7C    mov         eax,dword ptr [ebp-4]
 0059BE7F    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BE85    call        @LStrLen
 0059BE8A    mov         edx,eax
 0059BE8C    mov         eax,dword ptr [ebp-4]
 0059BE8F    add         eax,270;TCustomComboBox.FFilter:String
 0059BE94    mov         ecx,1
 0059BE99    call        @LStrDelete
 0059BE9E    mov         eax,dword ptr [ebp-8]
 0059BEA1    mov         byte ptr [eax],0
 0059BEA4    mov         eax,dword ptr [ebp-4]
 0059BEA7    mov         si,0FFB3
 0059BEAB    call        @CallDynaInst;TCustomCombo.sub_0059B190
>0059BEB0    jmp         0059BFD9
 0059BEB5    mov         eax,dword ptr [ebp-4]
 0059BEB8    cmp         byte ptr [eax+269],0;TCustomComboBox.FAutoDropDown:Boolean
>0059BEBF    je          0059BED7
 0059BEC1    mov         eax,dword ptr [ebp-4]
 0059BEC4    call        0059A70C
 0059BEC9    test        al,al
>0059BECB    jne         0059BED7
 0059BECD    mov         dl,1
 0059BECF    mov         eax,dword ptr [ebp-4]
 0059BED2    call        0059A73C
 0059BED7    push        ebp
 0059BED8    lea         edx,[ebp-10]
 0059BEDB    lea         eax,[ebp-0C]
 0059BEDE    call        0059BB44
 0059BEE3    pop         ecx
 0059BEE4    test        al,al
>0059BEE6    je          0059BF21
 0059BEE8    lea         eax,[ebp-50]
 0059BEEB    push        eax
 0059BEEC    mov         eax,dword ptr [ebp-4]
 0059BEEF    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BEF5    mov         ecx,dword ptr [ebp-0C]
 0059BEF8    mov         edx,1
 0059BEFD    call        @LStrCopy
 0059BF02    mov         eax,dword ptr [ebp-50]
 0059BF05    push        eax
 0059BF06    lea         eax,[ebp-54]
 0059BF09    mov         edx,dword ptr [ebp-8]
 0059BF0C    mov         dl,byte ptr [edx]
 0059BF0E    call        @LStrFromChar
 0059BF13    mov         ecx,dword ptr [ebp-54]
 0059BF16    lea         eax,[ebp-18]
 0059BF19    pop         edx
 0059BF1A    call        @LStrCat3
>0059BF1F    jmp         0059BF42
 0059BF21    lea         eax,[ebp-58]
 0059BF24    mov         edx,dword ptr [ebp-8]
 0059BF27    mov         dl,byte ptr [edx]
 0059BF29    call        @LStrFromChar
 0059BF2E    mov         ecx,dword ptr [ebp-58]
 0059BF31    mov         eax,dword ptr [ebp-4]
 0059BF34    mov         edx,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0059BF3A    lea         eax,[ebp-18]
 0059BF3D    call        @LStrCat3
 0059BF42    mov         eax,dword ptr [ebp-8]
 0059BF45    mov         al,byte ptr [eax]
 0059BF47    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 0059BF4D    and         eax,0FF
 0059BF52    bt          dword ptr [edx],eax
>0059BF55    jae         0059BFC4
 0059BF57    push        0
 0059BF59    push        0
 0059BF5B    push        0
 0059BF5D    mov         eax,dword ptr [ebp-4]
 0059BF60    call        TWinControl.GetHandle
 0059BF65    push        eax
 0059BF66    lea         eax,[ebp-38]
 0059BF69    push        eax
 0059BF6A    call        USER32.PeekMessageA
 0059BF6F    test        eax,eax
>0059BF71    je          0059BFD9
 0059BF73    cmp         dword ptr [ebp-34],102
>0059BF7A    jne         0059BFD9
 0059BF7C    lea         eax,[ebp-60]
 0059BF7F    mov         dl,byte ptr [ebp-30]
 0059BF82    call        @LStrFromChar
 0059BF87    mov         ecx,dword ptr [ebp-60]
 0059BF8A    lea         eax,[ebp-5C]
 0059BF8D    mov         edx,dword ptr [ebp-18]
 0059BF90    call        @LStrCat3
 0059BF95    mov         edx,dword ptr [ebp-5C]
 0059BF98    mov         eax,dword ptr [ebp-4]
 0059BF9B    call        0059C030
 0059BFA0    test        al,al
>0059BFA2    je          0059BFD9
 0059BFA4    push        1
 0059BFA6    push        0
 0059BFA8    push        0
 0059BFAA    mov         eax,dword ptr [ebp-4]
 0059BFAD    call        TWinControl.GetHandle
 0059BFB2    push        eax
 0059BFB3    lea         eax,[ebp-38]
 0059BFB6    push        eax
 0059BFB7    call        USER32.PeekMessageA
 0059BFBC    mov         eax,dword ptr [ebp-8]
 0059BFBF    mov         byte ptr [eax],0
>0059BFC2    jmp         0059BFD9
 0059BFC4    mov         edx,dword ptr [ebp-18]
 0059BFC7    mov         eax,dword ptr [ebp-4]
 0059BFCA    call        0059C030
 0059BFCF    test        al,al
>0059BFD1    je          0059BFD9
 0059BFD3    mov         eax,dword ptr [ebp-8]
 0059BFD6    mov         byte ptr [eax],0
 0059BFD9    xor         eax,eax
 0059BFDB    pop         edx
 0059BFDC    pop         ecx
 0059BFDD    pop         ecx
 0059BFDE    mov         dword ptr fs:[eax],edx
 0059BFE1    push        59C02A
 0059BFE6    lea         eax,[ebp-60]
 0059BFE9    mov         edx,5
 0059BFEE    call        @LStrArrayClr
 0059BFF3    lea         eax,[ebp-4C]
 0059BFF6    call        @LStrClr
 0059BFFB    lea         eax,[ebp-48]
 0059BFFE    mov         edx,2
 0059C003    call        @LStrArrayClr
 0059C008    lea         eax,[ebp-40]
 0059C00B    mov         edx,2
 0059C010    call        @LStrArrayClr
 0059C015    lea         eax,[ebp-18]
 0059C018    mov         edx,2
 0059C01D    call        @LStrArrayClr
 0059C022    ret
>0059C023    jmp         @HandleFinally
>0059C028    jmp         0059BFE6
 0059C02A    pop         esi
 0059C02B    mov         esp,ebp
 0059C02D    pop         ebp
 0059C02E    ret
end;*}

//0059C030
{*function sub_0059C030(?:TCustomComboBox; ?:AnsiString):?;
begin
 0059C030    push        ebp
 0059C031    mov         ebp,esp
 0059C033    add         esp,0FFFFFFDC
 0059C036    push        ebx
 0059C037    push        esi
 0059C038    xor         ecx,ecx
 0059C03A    mov         dword ptr [ebp-24],ecx
 0059C03D    mov         dword ptr [ebp-18],ecx
 0059C040    mov         dword ptr [ebp-1C],ecx
 0059C043    mov         dword ptr [ebp-20],ecx
 0059C046    mov         dword ptr [ebp-8],edx
 0059C049    mov         dword ptr [ebp-4],eax
 0059C04C    xor         eax,eax
 0059C04E    push        ebp
 0059C04F    push        59C1DC
 0059C054    push        dword ptr fs:[eax]
 0059C057    mov         dword ptr fs:[eax],esp
 0059C05A    mov         eax,dword ptr [ebp-8]
 0059C05D    call        @LStrLen
 0059C062    test        eax,eax
>0059C064    jne         0059C089
 0059C066    mov         byte ptr [ebp-9],0
 0059C06A    or          edx,0FFFFFFFF
 0059C06D    mov         eax,dword ptr [ebp-4]
 0059C070    mov         ecx,dword ptr [eax]
 0059C072    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 0059C078    mov         eax,dword ptr [ebp-4]
 0059C07B    mov         si,0FFB3
 0059C07F    call        @CallDynaInst;TCustomCombo.sub_0059B190
>0059C084    jmp         0059C1B9
 0059C089    mov         eax,dword ptr [ebp-8]
 0059C08C    call        @LStrToPChar
 0059C091    push        eax
 0059C092    push        0FF
 0059C094    push        14C
 0059C099    mov         eax,dword ptr [ebp-4]
 0059C09C    call        TWinControl.GetHandle
 0059C0A1    push        eax
 0059C0A2    call        USER32.SendMessageA
 0059C0A7    mov         dword ptr [ebp-10],eax
 0059C0AA    cmp         dword ptr [ebp-10],0FFFFFFFF
 0059C0AE    setne       byte ptr [ebp-9]
 0059C0B2    cmp         byte ptr [ebp-9],0
>0059C0B6    je          0059C1B9
 0059C0BC    mov         eax,dword ptr [ebp-4]
 0059C0BF    mov         edx,dword ptr [eax]
 0059C0C1    call        dword ptr [edx+0C8];TComboBox.GetItemIndex
 0059C0C7    cmp         eax,dword ptr [ebp-10]
 0059C0CA    setne       byte ptr [ebp-11]
 0059C0CE    push        0
 0059C0D0    mov         eax,dword ptr [ebp-10]
 0059C0D3    push        eax
 0059C0D4    push        14E
 0059C0D9    mov         eax,dword ptr [ebp-4]
 0059C0DC    call        TWinControl.GetHandle
 0059C0E1    push        eax
 0059C0E2    call        USER32.SendMessageA
 0059C0E7    mov         eax,dword ptr [ebp-4]
 0059C0EA    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 0059C0F0    sub         al,2
>0059C0F2    jae         0059C17D
 0059C0F8    lea         eax,[ebp-1C]
 0059C0FB    push        eax
 0059C0FC    lea         ecx,[ebp-20]
 0059C0FF    mov         edx,dword ptr [ebp-10]
 0059C102    mov         eax,dword ptr [ebp-4]
 0059C105    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059C10B    mov         ebx,dword ptr [eax]
 0059C10D    call        dword ptr [ebx+0C];@AbstractError
 0059C110    mov         eax,dword ptr [ebp-20]
 0059C113    push        eax
 0059C114    mov         eax,dword ptr [ebp-8]
 0059C117    call        @LStrLen
 0059C11C    mov         edx,eax
 0059C11E    inc         edx
 0059C11F    mov         ecx,7FFFFFFF
 0059C124    pop         eax
 0059C125    call        @LStrCopy
 0059C12A    mov         ecx,dword ptr [ebp-1C]
 0059C12D    lea         eax,[ebp-18]
 0059C130    mov         edx,dword ptr [ebp-8]
 0059C133    call        @LStrCat3
 0059C138    mov         edx,dword ptr [ebp-18]
 0059C13B    mov         eax,dword ptr [ebp-4]
 0059C13E    call        TTabPage.SetCaption
 0059C143    lea         edx,[ebp-24]
 0059C146    mov         eax,dword ptr [ebp-4]
 0059C149    call        TTabPage.GetCaption
 0059C14E    mov         eax,dword ptr [ebp-24]
 0059C151    call        @LStrLen
 0059C156    push        eax
 0059C157    mov         eax,dword ptr [ebp-8]
 0059C15A    call        @LStrLen
 0059C15F    pop         edx
 0059C160    call        0063D0C4
 0059C165    push        eax
 0059C166    push        0
 0059C168    push        142
 0059C16D    mov         eax,dword ptr [ebp-4]
 0059C170    call        TWinControl.GetHandle
 0059C175    push        eax
 0059C176    call        USER32.SendMessageA
>0059C17B    jmp         0059C19B
 0059C17D    mov         edx,dword ptr [ebp-10]
 0059C180    mov         eax,dword ptr [ebp-4]
 0059C183    mov         ecx,dword ptr [eax]
 0059C185    call        dword ptr [ecx+0CC];TComboBox.SetItemIndex
 0059C18B    mov         eax,dword ptr [ebp-4]
 0059C18E    add         eax,270;TCustomComboBox.FFilter:String
 0059C193    mov         edx,dword ptr [ebp-8]
 0059C196    call        @LStrAsg
 0059C19B    cmp         byte ptr [ebp-11],0
>0059C19F    je          0059C1B9
 0059C1A1    mov         eax,dword ptr [ebp-4]
 0059C1A4    mov         si,0FFEB
 0059C1A8    call        @CallDynaInst;TControl.sub_005F5478
 0059C1AD    mov         eax,dword ptr [ebp-4]
 0059C1B0    mov         si,0FFB2
 0059C1B4    call        @CallDynaInst;TCustomCombo.sub_0059B374
 0059C1B9    xor         eax,eax
 0059C1BB    pop         edx
 0059C1BC    pop         ecx
 0059C1BD    pop         ecx
 0059C1BE    mov         dword ptr fs:[eax],edx
 0059C1C1    push        59C1E3
 0059C1C6    lea         eax,[ebp-24]
 0059C1C9    call        @LStrClr
 0059C1CE    lea         eax,[ebp-20]
 0059C1D1    mov         edx,3
 0059C1D6    call        @LStrArrayClr
 0059C1DB    ret
>0059C1DC    jmp         @HandleFinally
>0059C1E1    jmp         0059C1C6
 0059C1E3    mov         al,byte ptr [ebp-9]
 0059C1E6    pop         esi
 0059C1E7    pop         ebx
 0059C1E8    mov         esp,ebp
 0059C1EA    pop         ebp
 0059C1EB    ret
end;*}

//0059C1EC
{*procedure sub_0059C1EC(?:?; ?:?);
begin
 0059C1EC    push        ebp
 0059C1ED    mov         ebp,esp
 0059C1EF    add         esp,0FFFFFFF4
 0059C1F2    push        ebx
 0059C1F3    mov         dword ptr [ebp-0C],ecx
 0059C1F6    mov         dword ptr [ebp-8],edx
 0059C1F9    mov         dword ptr [ebp-4],eax
 0059C1FC    mov         eax,dword ptr [ebp-4]
 0059C1FF    cmp         word ptr [eax+28A],0;TCustomComboBox.?f28A:word
>0059C207    je          0059C222
 0059C209    mov         eax,dword ptr [ebp-0C]
 0059C20C    push        eax
 0059C20D    mov         ebx,dword ptr [ebp-4]
 0059C210    mov         ecx,dword ptr [ebp-8]
 0059C213    mov         edx,dword ptr [ebp-4]
 0059C216    mov         eax,dword ptr [ebx+28C];TCustomComboBox.?f28C:dword
 0059C21C    call        dword ptr [ebx+288];TCustomComboBox.FOnMeasureItem
 0059C222    pop         ebx
 0059C223    mov         esp,ebp
 0059C225    pop         ebp
 0059C226    ret
end;*}

//0059C228
{*procedure TCustomComboBox.sub_0059C228(?:?);
begin
 0059C228    push        ebp
 0059C229    mov         ebp,esp
 0059C22B    add         esp,0FFFFFFF0
 0059C22E    push        ebx
 0059C22F    mov         dword ptr [ebp-8],edx
 0059C232    mov         dword ptr [ebp-4],eax
 0059C235    mov         eax,dword ptr [ebp-8]
 0059C238    mov         eax,dword ptr [eax+8]
 0059C23B    mov         dword ptr [ebp-10],eax
 0059C23E    mov         eax,dword ptr [ebp-10]
 0059C241    mov         ax,word ptr [eax+10]
 0059C245    mov         word ptr [ebp-0A],ax
 0059C249    mov         eax,dword ptr [ebp-10]
 0059C24C    test        byte ptr [eax+11],10
>0059C250    je          0059C258
 0059C252    or          word ptr [ebp-0A],1000
 0059C258    mov         eax,dword ptr [ebp-10]
 0059C25B    test        byte ptr [eax+10],20
>0059C25F    je          0059C266
 0059C261    or          word ptr [ebp-0A],20
 0059C266    mov         eax,dword ptr [ebp-10]
 0059C269    mov         edx,dword ptr [eax+18]
 0059C26C    mov         eax,dword ptr [ebp-4]
 0059C26F    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C275    call        TCanvas.SetHandle
 0059C27A    mov         eax,dword ptr [ebp-4]
 0059C27D    mov         edx,dword ptr [eax+68];TCustomComboBox.FFont:TFont
 0059C280    mov         eax,dword ptr [ebp-4]
 0059C283    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C289    call        TCanvas.SetFont
 0059C28E    mov         eax,dword ptr [ebp-4]
 0059C291    mov         edx,dword ptr [eax+170];TCustomComboBox.FBrush:TBrush
 0059C297    mov         eax,dword ptr [ebp-4]
 0059C29A    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C2A0    call        TCanvas.SetBrush
 0059C2A5    mov         eax,dword ptr [ebp-10]
 0059C2A8    cmp         dword ptr [eax+8],0
>0059C2AC    jl          0059C2E0
 0059C2AE    test        byte ptr [ebp-0A],1
>0059C2B2    je          0059C2E0
 0059C2B4    mov         eax,dword ptr [ebp-4]
 0059C2B7    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C2BD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0059C2C0    mov         edx,8000000D
 0059C2C5    call        TBrush.SetColor
 0059C2CA    mov         eax,dword ptr [ebp-4]
 0059C2CD    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C2D3    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0059C2D6    mov         edx,8000000E
 0059C2DB    call        TFont.SetColor
 0059C2E0    mov         eax,dword ptr [ebp-10]
 0059C2E3    cmp         dword ptr [eax+8],0
>0059C2E7    jl          0059C307
 0059C2E9    mov         ax,word ptr [ebp-0A]
 0059C2ED    push        eax
 0059C2EE    mov         eax,dword ptr [ebp-10]
 0059C2F1    lea         ecx,[eax+1C]
 0059C2F4    mov         eax,dword ptr [ebp-10]
 0059C2F7    mov         edx,dword ptr [eax+8]
 0059C2FA    mov         eax,dword ptr [ebp-4]
 0059C2FD    mov         ebx,dword ptr [eax]
 0059C2FF    call        dword ptr [ebx+10C];TCustomComboBox.sub_0059B1C4
>0059C305    jmp         0059C31B
 0059C307    mov         eax,dword ptr [ebp-10]
 0059C30A    lea         edx,[eax+1C]
 0059C30D    mov         eax,dword ptr [ebp-4]
 0059C310    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C316    call        TCanvas.FillRect
 0059C31B    test        byte ptr [ebp-0A],10
>0059C31F    je          0059C334
 0059C321    mov         eax,dword ptr [ebp-10]
 0059C324    add         eax,1C
 0059C327    push        eax
 0059C328    mov         eax,dword ptr [ebp-10]
 0059C32B    mov         eax,dword ptr [eax+18]
 0059C32E    push        eax
 0059C32F    call        USER32.DrawFocusRect
 0059C334    xor         edx,edx
 0059C336    mov         eax,dword ptr [ebp-4]
 0059C339    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0059C33F    call        TCanvas.SetHandle
 0059C344    pop         ebx
 0059C345    mov         esp,ebp
 0059C347    pop         ebp
 0059C348    ret
end;*}

//0059C34C
{*procedure TCustomComboBox.sub_0059C34C(?:?);
begin
 0059C34C    push        ebp
 0059C34D    mov         ebp,esp
 0059C34F    add         esp,0FFFFFFF4
 0059C352    push        ebx
 0059C353    mov         dword ptr [ebp-8],edx
 0059C356    mov         dword ptr [ebp-4],eax
 0059C359    mov         eax,dword ptr [ebp-8]
 0059C35C    mov         eax,dword ptr [eax+8]
 0059C35F    mov         dword ptr [ebp-0C],eax
 0059C362    mov         eax,dword ptr [ebp-4]
 0059C365    mov         eax,dword ptr [eax+238];TCustomComboBox.FItemHeight:Integer
 0059C36B    mov         edx,dword ptr [ebp-0C]
 0059C36E    mov         dword ptr [edx+10],eax
 0059C371    mov         eax,dword ptr [ebp-4]
 0059C374    cmp         byte ptr [eax+276],4;TCustomComboBox.FStyle:TComboBoxStyle
>0059C37B    jne         0059C394
 0059C37D    mov         eax,dword ptr [ebp-0C]
 0059C380    lea         ecx,[eax+10]
 0059C383    mov         eax,dword ptr [ebp-0C]
 0059C386    mov         edx,dword ptr [eax+8]
 0059C389    mov         eax,dword ptr [ebp-4]
 0059C38C    mov         ebx,dword ptr [eax]
 0059C38E    call        dword ptr [ebx+110];TCustomComboBox.sub_0059C1EC
 0059C394    pop         ebx
 0059C395    mov         esp,ebp
 0059C397    pop         ebp
 0059C398    ret
end;*}

//0059C39C
{*procedure TCustomComboBox.WMLButtonDown(?:?);
begin
 0059C39C    push        ebp
 0059C39D    mov         ebp,esp
 0059C39F    add         esp,0FFFFFFF4
 0059C3A2    mov         dword ptr [ebp-8],edx
 0059C3A5    mov         dword ptr [ebp-4],eax
 0059C3A8    mov         eax,dword ptr [ebp-4]
 0059C3AB    cmp         byte ptr [eax+5D],1;TCustomComboBox.FDragMode:TDragMode
>0059C3AF    jne         0059C3F1
 0059C3B1    mov         eax,dword ptr [ebp-4]
 0059C3B4    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>0059C3BB    jne         0059C3F1
 0059C3BD    push        15
 0059C3BF    call        USER32.GetSystemMetrics
 0059C3C4    mov         edx,dword ptr [ebp-4]
 0059C3C7    mov         edx,dword ptr [edx+48];TCustomComboBox.Width:Integer
 0059C3CA    sub         edx,eax
 0059C3CC    mov         eax,dword ptr [ebp-8]
 0059C3CF    movsx       eax,word ptr [eax+8]
 0059C3D3    cmp         edx,eax
>0059C3D5    jle         0059C3F1
 0059C3D7    mov         eax,dword ptr [ebp-4]
 0059C3DA    mov         edx,dword ptr [eax]
 0059C3DC    call        dword ptr [edx+0C0];TCustomComboBox.sub_005FBFF0
 0059C3E2    or          ecx,0FFFFFFFF
 0059C3E5    xor         edx,edx
 0059C3E7    mov         eax,dword ptr [ebp-4]
 0059C3EA    call        005F4150
>0059C3EF    jmp         0059C431
 0059C3F1    mov         edx,dword ptr [ebp-8]
 0059C3F4    mov         eax,dword ptr [ebp-4]
 0059C3F7    call        TControl.WMLButtonDown
 0059C3FC    mov         eax,dword ptr [ebp-4]
 0059C3FF    call        005F3AD4
 0059C404    test        al,al
>0059C406    je          0059C431
 0059C408    mov         eax,dword ptr [ebp-4]
 0059C40B    call        005CD060
 0059C410    mov         dword ptr [ebp-0C],eax
 0059C413    cmp         dword ptr [ebp-0C],0
>0059C417    je          0059C431
 0059C419    mov         eax,dword ptr [ebp-0C]
 0059C41C    mov         eax,dword ptr [eax+220]
 0059C422    cmp         eax,dword ptr [ebp-4]
>0059C425    je          0059C431
 0059C427    xor         edx,edx
 0059C429    mov         eax,dword ptr [ebp-4]
 0059C42C    call        005F3AF0
 0059C431    mov         esp,ebp
 0059C433    pop         ebp
 0059C434    ret
end;*}

//0059C438
{*procedure sub_0059C438(?:?);
begin
 0059C438    push        ebp
 0059C439    mov         ebp,esp
 0059C43B    add         esp,0FFFFFFF8
 0059C43E    mov         dword ptr [ebp-8],edx
 0059C441    mov         dword ptr [ebp-4],eax
 0059C444    mov         eax,dword ptr [ebp-8]
 0059C447    mov         eax,dword ptr [eax]
 0059C449    add         eax,0FFFF42CE
 0059C44E    sub         eax,7
>0059C451    jae         0059C482
 0059C453    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059C458    cmp         byte ptr [eax],0
>0059C45B    jne         0059C482
 0059C45D    mov         eax,dword ptr [ebp-4]
 0059C460    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>0059C467    jae         0059C482
 0059C469    mov         eax,dword ptr [ebp-4]
 0059C46C    mov         eax,dword ptr [eax+30];TCustomComboBox.FParent:TWinControl
 0059C46F    mov         eax,dword ptr [eax+170];TWinControl.FBrush:TBrush
 0059C475    call        TBrush.GetHandle
 0059C47A    mov         edx,dword ptr [ebp-8]
 0059C47D    mov         dword ptr [edx+0C],eax
>0059C480    jmp         0059C48D
 0059C482    mov         edx,dword ptr [ebp-8]
 0059C485    mov         eax,dword ptr [ebp-4]
 0059C488    call        0059AE9C
 0059C48D    pop         ecx
 0059C48E    pop         ecx
 0059C48F    pop         ebp
 0059C490    ret
end;*}

//0059C494
{*function sub_0059C494:?;
begin
 0059C494    push        ebp
 0059C495    mov         ebp,esp
 0059C497    add         esp,0FFFFFFF8
 0059C49A    mov         dword ptr [ebp-4],eax
 0059C49D    mov         eax,dword ptr [ebp-4]
 0059C4A0    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0059C4A6    mov         edx,dword ptr [eax]
 0059C4A8    call        dword ptr [edx+14];@AbstractError
 0059C4AB    mov         dword ptr [ebp-8],eax
 0059C4AE    mov         eax,dword ptr [ebp-8]
 0059C4B1    pop         ecx
 0059C4B2    pop         ecx
 0059C4B3    pop         ebp
 0059C4B4    ret
end;*}

//0059C4B8
{*function sub_0059C4B8:?;
begin
 0059C4B8    push        ebp
 0059C4B9    mov         ebp,esp
 0059C4BB    add         esp,0FFFFFFF8
 0059C4BE    mov         dword ptr [ebp-4],eax
 0059C4C1    mov         eax,[00597BC4];TComboBoxStrings
 0059C4C6    mov         dword ptr [ebp-8],eax
 0059C4C9    mov         eax,dword ptr [ebp-8]
 0059C4CC    pop         ecx
 0059C4CD    pop         ecx
 0059C4CE    pop         ebp
 0059C4CF    ret
end;*}

//0059C4D0
procedure TCustomComboBox.WMPaint(Message:TWMPaint);
begin
{*
 0059C4D0    push        ebp
 0059C4D1    mov         ebp,esp
 0059C4D3    add         esp,0FFFFFFCC
 0059C4D6    mov         dword ptr [ebp-8],edx
 0059C4D9    mov         dword ptr [ebp-4],eax
 0059C4DC    mov         edx,dword ptr [ebp-8]
 0059C4DF    mov         eax,dword ptr [ebp-4]
 0059C4E2    call        TWinControl.WMPaint
 0059C4E7    mov         eax,dword ptr [ebp-4]
 0059C4EA    cmp         byte ptr [eax+165],0;TCustomComboBox.FBevelKind:TBevelKind
>0059C4F1    je          0059C74D
 0059C4F7    mov         dl,1
 0059C4F9    mov         eax,[005ED808];TControlCanvas
 0059C4FE    call        TCanvas.Create;TControlCanvas.Create
 0059C503    mov         dword ptr [ebp-14],eax
 0059C506    xor         eax,eax
 0059C508    push        ebp
 0059C509    push        59C746
 0059C50E    push        dword ptr fs:[eax]
 0059C511    mov         dword ptr fs:[eax],esp
 0059C514    mov         edx,dword ptr [ebp-4]
 0059C517    mov         eax,dword ptr [ebp-14]
 0059C51A    call        005F1A7C
 0059C51F    lea         edx,[ebp-24]
 0059C522    mov         eax,dword ptr [ebp-4]
 0059C525    mov         ecx,dword ptr [eax]
 0059C527    call        dword ptr [ecx+44];TCustomComboBox.sub_005FC204
 0059C52A    mov         eax,dword ptr [ebp-4]
 0059C52D    mov         edx,dword ptr [eax+70];TCustomComboBox.FColor:TColor
 0059C530    mov         eax,dword ptr [ebp-14]
 0059C533    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0059C536    call        TBrush.SetColor
 0059C53B    lea         edx,[ebp-24]
 0059C53E    mov         eax,dword ptr [ebp-14]
 0059C541    call        005C1224
 0059C546    push        0FF
 0059C548    push        0FF
 0059C54A    lea         eax,[ebp-24]
 0059C54D    push        eax
 0059C54E    call        USER32.InflateRect
 0059C553    lea         edx,[ebp-24]
 0059C556    mov         eax,dword ptr [ebp-14]
 0059C559    call        005C1224
 0059C55E    mov         eax,dword ptr [ebp-4]
 0059C561    cmp         byte ptr [eax+165],0;TCustomComboBox.FBevelKind:TBevelKind
>0059C568    je          0059C730
 0059C56E    xor         eax,eax
 0059C570    mov         dword ptr [ebp-0C],eax
 0059C573    mov         eax,dword ptr [ebp-4]
 0059C576    cmp         byte ptr [eax+163],0;TCustomComboBox.FBevelInner:TBevelCut
>0059C57D    je          0059C58B
 0059C57F    mov         eax,dword ptr [ebp-4]
 0059C582    mov         eax,dword ptr [eax+168];TCustomComboBox.FBevelWidth:TBevelWidth
 0059C588    add         dword ptr [ebp-0C],eax
 0059C58B    mov         eax,dword ptr [ebp-4]
 0059C58E    cmp         byte ptr [eax+164],0;TCustomComboBox.FBevelOuter:TBevelCut
>0059C595    je          0059C5A3
 0059C597    mov         eax,dword ptr [ebp-4]
 0059C59A    mov         eax,dword ptr [eax+168];TCustomComboBox.FBevelWidth:TBevelWidth
 0059C5A0    add         dword ptr [ebp-0C],eax
 0059C5A3    cmp         dword ptr [ebp-0C],0
>0059C5A7    jne         0059C5E8
 0059C5A9    lea         edx,[ebp-24]
 0059C5AC    mov         eax,dword ptr [ebp-4]
 0059C5AF    mov         ecx,dword ptr [eax]
 0059C5B1    call        dword ptr [ecx+44];TCustomComboBox.sub_005FC204
 0059C5B4    mov         eax,dword ptr [ebp-4]
 0059C5B7    mov         edx,dword ptr [eax+70];TCustomComboBox.FColor:TColor
 0059C5BA    mov         eax,dword ptr [ebp-14]
 0059C5BD    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0059C5C0    call        TBrush.SetColor
 0059C5C5    lea         edx,[ebp-24]
 0059C5C8    mov         eax,dword ptr [ebp-14]
 0059C5CB    call        005C1224
 0059C5D0    push        0FF
 0059C5D2    push        0FF
 0059C5D4    lea         eax,[ebp-24]
 0059C5D7    push        eax
 0059C5D8    call        USER32.InflateRect
 0059C5DD    lea         edx,[ebp-24]
 0059C5E0    mov         eax,dword ptr [ebp-14]
 0059C5E3    call        005C1224
 0059C5E8    lea         edx,[ebp-24]
 0059C5EB    mov         eax,dword ptr [ebp-4]
 0059C5EE    mov         ecx,dword ptr [eax]
 0059C5F0    call        dword ptr [ecx+44];TCustomComboBox.sub_005FC204
 0059C5F3    lea         edx,[ebp-34]
 0059C5F6    mov         eax,dword ptr [ebp-4]
 0059C5F9    call        005F2E0C
 0059C5FE    push        0F0
 0059C600    mov         eax,dword ptr [ebp-14]
 0059C603    call        TCanvas.GetHandle
 0059C608    push        eax
 0059C609    call        USER32.GetWindowLongA
 0059C60E    mov         dword ptr [ebp-10],eax
 0059C611    mov         eax,dword ptr [ebp-4]
 0059C614    test        byte ptr [eax+162],1;TCustomComboBox.FBevelEdges:TBevelEdges
>0059C61B    je          0059C623
 0059C61D    mov         eax,dword ptr [ebp-0C]
 0059C620    sub         dword ptr [ebp-34],eax
 0059C623    mov         eax,dword ptr [ebp-4]
 0059C626    test        byte ptr [eax+162],2;TCustomComboBox.FBevelEdges:TBevelEdges
>0059C62D    je          0059C635
 0059C62F    mov         eax,dword ptr [ebp-0C]
 0059C632    sub         dword ptr [ebp-30],eax
 0059C635    mov         eax,dword ptr [ebp-4]
 0059C638    test        byte ptr [eax+162],4;TCustomComboBox.FBevelEdges:TBevelEdges
>0059C63F    je          0059C647
 0059C641    mov         eax,dword ptr [ebp-0C]
 0059C644    add         dword ptr [ebp-2C],eax
 0059C647    test        byte ptr [ebp-0E],20
>0059C64B    je          0059C657
 0059C64D    push        14
 0059C64F    call        USER32.GetSystemMetrics
 0059C654    add         dword ptr [ebp-2C],eax
 0059C657    mov         eax,dword ptr [ebp-4]
 0059C65A    test        byte ptr [eax+162],8;TCustomComboBox.FBevelEdges:TBevelEdges
>0059C661    je          0059C669
 0059C663    mov         eax,dword ptr [ebp-0C]
 0059C666    add         dword ptr [ebp-28],eax
 0059C669    test        byte ptr [ebp-0E],10
>0059C66D    je          0059C679
 0059C66F    push        15
 0059C671    call        USER32.GetSystemMetrics
 0059C676    add         dword ptr [ebp-28],eax
 0059C679    mov         eax,dword ptr [ebp-4]
 0059C67C    movzx       eax,byte ptr [eax+162];TCustomComboBox.FBevelEdges:TBevelEdges
 0059C683    mov         edx,dword ptr [ebp-4]
 0059C686    movzx       edx,byte ptr [edx+165];TCustomComboBox.FBevelKind:TBevelKind
 0059C68D    or          eax,dword ptr [edx*4+6E3B04]
 0059C694    mov         edx,dword ptr [ebp-4]
 0059C697    movzx       edx,byte ptr [edx+1A5];TCustomComboBox.FCtl3D:Boolean
 0059C69E    or          eax,dword ptr [edx*4+6E3B14]
 0059C6A5    or          eax,2000
 0059C6AA    push        eax
 0059C6AB    mov         eax,dword ptr [ebp-4]
 0059C6AE    movzx       eax,byte ptr [eax+163];TCustomComboBox.FBevelInner:TBevelCut
 0059C6B5    mov         eax,dword ptr [eax*4+6E3AE4]
 0059C6BC    mov         edx,dword ptr [ebp-4]
 0059C6BF    movzx       edx,byte ptr [edx+164];TCustomComboBox.FBevelOuter:TBevelCut
 0059C6C6    or          eax,dword ptr [edx*4+6E3AF4]
 0059C6CD    push        eax
 0059C6CE    lea         eax,[ebp-24]
 0059C6D1    push        eax
 0059C6D2    mov         eax,dword ptr [ebp-14]
 0059C6D5    call        TCanvas.GetHandle
 0059C6DA    push        eax
 0059C6DB    call        USER32.DrawEdge
 0059C6E0    push        0A
 0059C6E2    call        USER32.GetSystemMetrics
 0059C6E7    mov         edx,dword ptr [ebp-1C]
 0059C6EA    sub         edx,eax
 0059C6EC    dec         edx
 0059C6ED    mov         dword ptr [ebp-24],edx
 0059C6F0    mov         eax,dword ptr [ebp-4]
 0059C6F3    call        0059A70C
 0059C6F8    test        al,al
>0059C6FA    je          0059C717
 0059C6FC    push        4005
 0059C701    push        3
 0059C703    lea         eax,[ebp-24]
 0059C706    push        eax
 0059C707    mov         eax,dword ptr [ebp-14]
 0059C70A    call        TCanvas.GetHandle
 0059C70F    push        eax
 0059C710    call        USER32.DrawFrameControl
>0059C715    jmp         0059C730
 0059C717    push        4005
 0059C71C    push        3
 0059C71E    lea         eax,[ebp-24]
 0059C721    push        eax
 0059C722    mov         eax,dword ptr [ebp-14]
 0059C725    call        TCanvas.GetHandle
 0059C72A    push        eax
 0059C72B    call        USER32.DrawFrameControl
 0059C730    xor         eax,eax
 0059C732    pop         edx
 0059C733    pop         ecx
 0059C734    pop         ecx
 0059C735    mov         dword ptr fs:[eax],edx
 0059C738    push        59C74D
 0059C73D    mov         eax,dword ptr [ebp-14]
 0059C740    call        TObject.Free
 0059C745    ret
>0059C746    jmp         @HandleFinally
>0059C74B    jmp         0059C73D
 0059C74D    mov         esp,ebp
 0059C74F    pop         ebp
 0059C750    ret
*}
end;

//0059C754
{*procedure TCustomComboBox.WMNCCalcSize(?:?);
begin
 0059C754    push        ebp
 0059C755    mov         ebp,esp
 0059C757    add         esp,0FFFFFFF8
 0059C75A    mov         dword ptr [ebp-8],edx
 0059C75D    mov         dword ptr [ebp-4],eax
 0059C760    pop         ecx
 0059C761    pop         ecx
 0059C762    pop         ebp
 0059C763    ret
end;*}

//0059C764
{*procedure sub_0059C764(?:?);
begin
 0059C764    push        ebp
 0059C765    mov         ebp,esp
 0059C767    add         esp,0FFFFFFF8
 0059C76A    mov         dword ptr [ebp-8],edx
 0059C76D    mov         dword ptr [ebp-4],eax
 0059C770    mov         edx,dword ptr [ebp-8]
 0059C773    mov         eax,dword ptr [ebp-4]
 0059C776    call        005F6AF0
 0059C77B    mov         eax,dword ptr [ebp-8]
 0059C77E    mov         edx,dword ptr ds:[5944EC];TButtonControl
 0059C784    call        @AsClass
 0059C789    mov         edx,dword ptr [ebp-4]
 0059C78C    mov         dword ptr [edx+28],eax;TButtonActionLink.......FClient:TButtonControl
 0059C78F    pop         ecx
 0059C790    pop         ecx
 0059C791    pop         ebp
 0059C792    ret
end;*}

//0059C794
{*function sub_0059C794:?;
begin
 0059C794    push        ebp
 0059C795    mov         ebp,esp
 0059C797    add         esp,0FFFFFFF8
 0059C79A    push        ebx
 0059C79B    mov         dword ptr [ebp-4],eax
 0059C79E    mov         eax,dword ptr [ebp-4]
 0059C7A1    call        0058E3DC
 0059C7A6    test        al,al
>0059C7A8    je          0059C7D0
 0059C7AA    mov         eax,dword ptr [ebp-4]
 0059C7AD    mov         eax,dword ptr [eax+28];TButtonActionLink........FClient:TButtonControl
 0059C7B0    mov         edx,dword ptr [eax]
 0059C7B2    call        dword ptr [edx+0C4];TButtonControl.sub_0059C92C
 0059C7B8    mov         ebx,eax
 0059C7BA    mov         eax,dword ptr [ebp-4]
 0059C7BD    mov         eax,dword ptr [eax+10];TButtonActionLink.FAction:TBasicAction
 0059C7C0    mov         edx,dword ptr ds:[58D604];TCustomAction
 0059C7C6    call        @AsClass
 0059C7CB    cmp         bl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
>0059C7CE    je          0059C7D4
 0059C7D0    xor         eax,eax
>0059C7D2    jmp         0059C7D6
 0059C7D4    mov         al,1
 0059C7D6    mov         byte ptr [ebp-5],al
 0059C7D9    mov         al,byte ptr [ebp-5]
 0059C7DC    pop         ebx
 0059C7DD    pop         ecx
 0059C7DE    pop         ecx
 0059C7DF    pop         ebp
 0059C7E0    ret
end;*}

//0059C7E4
{*procedure sub_0059C7E4(?:?);
begin
 0059C7E4    push        ebp
 0059C7E5    mov         ebp,esp
 0059C7E7    add         esp,0FFFFFFF8
 0059C7EA    mov         byte ptr [ebp-5],dl
 0059C7ED    mov         dword ptr [ebp-4],eax
 0059C7F0    mov         eax,dword ptr [ebp-4]
 0059C7F3    mov         edx,dword ptr [eax]
 0059C7F5    call        dword ptr [edx+24];TButtonActionLink.sub_0059C794
 0059C7F8    test        al,al
>0059C7FA    je          0059C84A
 0059C7FC    mov         eax,dword ptr [ebp-4]
 0059C7FF    mov         eax,dword ptr [eax+28];TButtonActionLink.........FClient:TButtonControl
 0059C802    mov         byte ptr [eax+208],1;TButtonControl.........FClicksDisabled:Boolean
 0059C809    xor         eax,eax
 0059C80B    push        ebp
 0059C80C    push        59C843
 0059C811    push        dword ptr fs:[eax]
 0059C814    mov         dword ptr fs:[eax],esp
 0059C817    mov         eax,dword ptr [ebp-4]
 0059C81A    mov         eax,dword ptr [eax+28];TButtonActionLink..........FClient:TButtonControl
 0059C81D    mov         dl,byte ptr [ebp-5]
 0059C820    mov         ecx,dword ptr [eax]
 0059C822    call        dword ptr [ecx+0C8];TButtonControl.sub_0059C974
 0059C828    xor         eax,eax
 0059C82A    pop         edx
 0059C82B    pop         ecx
 0059C82C    pop         ecx
 0059C82D    mov         dword ptr fs:[eax],edx
 0059C830    push        59C84A
 0059C835    mov         eax,dword ptr [ebp-4]
 0059C838    mov         eax,dword ptr [eax+28];TButtonActionLink...........FClient:TButtonControl
 0059C83B    mov         byte ptr [eax+208],0;TButtonControl..........FClicksDisabled:Boolean
 0059C842    ret
>0059C843    jmp         @HandleFinally
>0059C848    jmp         0059C835
 0059C84A    pop         ecx
 0059C84B    pop         ecx
 0059C84C    pop         ebp
 0059C84D    ret
end;*}

//0059C850
constructor TButtonControl.Create(AOwner:TComponent);
begin
{*
 0059C850    push        ebp
 0059C851    mov         ebp,esp
 0059C853    add         esp,0FFFFFFF4
 0059C856    test        dl,dl
>0059C858    je          0059C862
 0059C85A    add         esp,0FFFFFFF0
 0059C85D    call        @ClassCreate
 0059C862    mov         dword ptr [ebp-0C],ecx
 0059C865    mov         byte ptr [ebp-5],dl
 0059C868    mov         dword ptr [ebp-4],eax
 0059C86B    mov         ecx,dword ptr [ebp-0C]
 0059C86E    xor         edx,edx
 0059C870    mov         eax,dword ptr [ebp-4]
 0059C873    call        TWinControl.Create
 0059C878    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 0059C87D    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>0059C881    je          0059C897
 0059C883    mov         eax,[006EA0EC];^gvar_006E498C
 0059C888    cmp         dword ptr [eax],2
>0059C88B    jne         0059C897
 0059C88D    mov         eax,dword ptr [ebp-4]
 0059C890    mov         byte ptr [eax+184],0;TButtonControl.FImeMode:TImeMode
 0059C897    mov         eax,dword ptr [ebp-4]
 0059C89A    cmp         byte ptr [ebp-5],0
>0059C89E    je          0059C8AF
 0059C8A0    call        @AfterConstruction
 0059C8A5    pop         dword ptr fs:[0]
 0059C8AC    add         esp,0C
 0059C8AF    mov         eax,dword ptr [ebp-4]
 0059C8B2    mov         esp,ebp
 0059C8B4    pop         ebp
 0059C8B5    ret
*}
end;

//0059C8B8
{*procedure TButtonControl.sub_0059C8B8(?:?; ?:?);
begin
 0059C8B8    push        ebp
 0059C8B9    mov         ebp,esp
 0059C8BB    add         esp,0FFFFFFF4
 0059C8BE    mov         byte ptr [ebp-9],cl
 0059C8C1    mov         dword ptr [ebp-8],edx
 0059C8C4    mov         dword ptr [ebp-4],eax
 0059C8C7    mov         cl,byte ptr [ebp-9]
 0059C8CA    mov         edx,dword ptr [ebp-8]
 0059C8CD    mov         eax,dword ptr [ebp-4]
 0059C8D0    call        TWinControl.sub_005F61B0
 0059C8D5    mov         eax,dword ptr [ebp-8]
 0059C8D8    mov         edx,dword ptr ds:[58D604];TCustomAction
 0059C8DE    call        @IsClass
 0059C8E3    test        al,al
>0059C8E5    je          0059C90D
 0059C8E7    cmp         byte ptr [ebp-9],0
>0059C8EB    je          0059C8FC
 0059C8ED    mov         eax,dword ptr [ebp-4]
 0059C8F0    mov         edx,dword ptr [eax]
 0059C8F2    call        dword ptr [edx+0C4];TButtonControl.sub_0059C92C
 0059C8F8    test        al,al
>0059C8FA    jne         0059C90D
 0059C8FC    mov         eax,dword ptr [ebp-8]
 0059C8FF    mov         dl,byte ptr [eax+69]
 0059C902    mov         eax,dword ptr [ebp-4]
 0059C905    mov         ecx,dword ptr [eax]
 0059C907    call        dword ptr [ecx+0C8];TButtonControl.sub_0059C974
 0059C90D    mov         esp,ebp
 0059C90F    pop         ebp
 0059C910    ret
end;*}

//0059C914
procedure TButtonControl.sub_0059C914;
begin
{*
 0059C914    push        ebp
 0059C915    mov         ebp,esp
 0059C917    add         esp,0FFFFFFF8
 0059C91A    mov         dword ptr [ebp-4],eax
 0059C91D    mov         eax,[00594410];TButtonActionLink
 0059C922    mov         dword ptr [ebp-8],eax
 0059C925    mov         eax,dword ptr [ebp-8]
 0059C928    pop         ecx
 0059C929    pop         ecx
 0059C92A    pop         ebp
 0059C92B    ret
*}
end;

//0059C92C
{*function sub_0059C92C:?;
begin
 0059C92C    push        ebp
 0059C92D    mov         ebp,esp
 0059C92F    add         esp,0FFFFFFF8
 0059C932    mov         dword ptr [ebp-4],eax
 0059C935    mov         byte ptr [ebp-5],0
 0059C939    mov         al,byte ptr [ebp-5]
 0059C93C    pop         ecx
 0059C93D    pop         ecx
 0059C93E    pop         ebp
 0059C93F    ret
end;*}

//0059C940
function TCheckBox.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 0059C940    push        ebp
 0059C941    mov         ebp,esp
 0059C943    add         esp,0FFFFFFF8
 0059C946    mov         dword ptr [ebp-4],eax
 0059C949    mov         eax,dword ptr [ebp-4]
 0059C94C    cmp         dword ptr [eax+6C],0;TCheckBox.FActionLink:TControlActionLink
>0059C950    je          0059C965
 0059C952    mov         eax,dword ptr [ebp-4]
 0059C955    mov         eax,dword ptr [eax+6C];TCheckBox.FActionLink:TControlActionLink
 0059C958    mov         edx,dword ptr [eax]
 0059C95A    call        dword ptr [edx+24];TControlActionLink.sub_0058E3DC
 0059C95D    test        al,al
>0059C95F    je          0059C965
 0059C961    xor         eax,eax
>0059C963    jmp         0059C967
 0059C965    mov         al,1
 0059C967    mov         byte ptr [ebp-5],al
 0059C96A    mov         al,byte ptr [ebp-5]
 0059C96D    pop         ecx
 0059C96E    pop         ecx
 0059C96F    pop         ebp
 0059C970    ret
*}
end;

//0059C974
{*procedure sub_0059C974(?:?);
begin
 0059C974    push        ebp
 0059C975    mov         ebp,esp
 0059C977    add         esp,0FFFFFFF8
 0059C97A    mov         byte ptr [ebp-5],dl
 0059C97D    mov         dword ptr [ebp-4],eax
 0059C980    pop         ecx
 0059C981    pop         ecx
 0059C982    pop         ebp
 0059C983    ret
end;*}

//0059C984
{*procedure sub_0059C984(?:?);
begin
 0059C984    push        ebp
 0059C985    mov         ebp,esp
 0059C987    add         esp,0FFFFFFF8
 0059C98A    push        esi
 0059C98B    mov         dword ptr [ebp-8],edx
 0059C98E    mov         dword ptr [ebp-4],eax
 0059C991    mov         eax,dword ptr [ebp-8]
 0059C994    mov         eax,dword ptr [eax]
 0059C996    sub         eax,201
>0059C99B    je          0059C9AB
 0059C99D    sub         eax,2
>0059C9A0    je          0059C9AB
 0059C9A2    sub         eax,0BB0E
>0059C9A7    je          0059C9F8
>0059C9A9    jmp         0059CA04
 0059C9AB    mov         eax,dword ptr [ebp-4]
 0059C9AE    test        byte ptr [eax+1C],10;TButtonControl.FComponentState:TComponentState
>0059C9B2    jne         0059CA04
 0059C9B4    mov         eax,dword ptr [ebp-4]
 0059C9B7    mov         si,0FFB5
 0059C9BB    call        @CallDynaInst;TWinControl.sub_005FC040
 0059C9C0    test        al,al
>0059C9C2    jne         0059CA04
 0059C9C4    mov         eax,dword ptr [ebp-4]
 0059C9C7    mov         byte ptr [eax+208],1;TButtonControl...........FClicksDisabled:Boolean
 0059C9CE    mov         eax,dword ptr [ebp-4]
 0059C9D1    call        TWinControl.GetHandle
 0059C9D6    push        eax
 0059C9D7    call        USER32.SetFocus
 0059C9DC    mov         eax,dword ptr [ebp-4]
 0059C9DF    mov         byte ptr [eax+208],0;TButtonControl............FClicksDisabled:Boolean
 0059C9E6    mov         eax,dword ptr [ebp-4]
 0059C9E9    mov         si,0FFB5
 0059C9ED    call        @CallDynaInst;TWinControl.sub_005FC040
 0059C9F2    test        al,al
>0059C9F4    je          0059CA0F
>0059C9F6    jmp         0059CA04
 0059C9F8    mov         eax,dword ptr [ebp-4]
 0059C9FB    cmp         byte ptr [eax+208],0;TButtonControl.............FClicksDisabled:Boolean
>0059CA02    jne         0059CA0F
 0059CA04    mov         edx,dword ptr [ebp-8]
 0059CA07    mov         eax,dword ptr [ebp-4]
 0059CA0A    call        005F8E0C
 0059CA0F    pop         esi
 0059CA10    pop         ecx
 0059CA11    pop         ecx
 0059CA12    pop         ebp
 0059CA13    ret
end;*}

//0059CA14
constructor TButton.Create(AOwner:TComponent);
begin
{*
 0059CA14    push        ebp
 0059CA15    mov         ebp,esp
 0059CA17    add         esp,0FFFFFFF4
 0059CA1A    test        dl,dl
>0059CA1C    je          0059CA26
 0059CA1E    add         esp,0FFFFFFF0
 0059CA21    call        @ClassCreate
 0059CA26    mov         dword ptr [ebp-0C],ecx
 0059CA29    mov         byte ptr [ebp-5],dl
 0059CA2C    mov         dword ptr [ebp-4],eax
 0059CA2F    mov         ecx,dword ptr [ebp-0C]
 0059CA32    xor         edx,edx
 0059CA34    mov         eax,dword ptr [ebp-4]
 0059CA37    call        TButtonControl.Create
 0059CA3C    mov         eax,dword ptr [ebp-4]
 0059CA3F    mov         edx,dword ptr ds:[59CA8C];0xE0 gvar_0059CA8C
 0059CA45    mov         dword ptr [eax+50],edx;TButton.FControlStyle:TControlStyle
 0059CA48    mov         edx,4B
 0059CA4D    mov         eax,dword ptr [ebp-4]
 0059CA50    call        TControl.SetWidth
 0059CA55    mov         edx,19
 0059CA5A    mov         eax,dword ptr [ebp-4]
 0059CA5D    call        TControl.SetHeight
 0059CA62    mov         dl,1
 0059CA64    mov         eax,dword ptr [ebp-4]
 0059CA67    call        TCCalendar.SetTabStop
 0059CA6C    mov         eax,dword ptr [ebp-4]
 0059CA6F    cmp         byte ptr [ebp-5],0
>0059CA73    je          0059CA84
 0059CA75    call        @AfterConstruction
 0059CA7A    pop         dword ptr fs:[0]
 0059CA81    add         esp,0C
 0059CA84    mov         eax,dword ptr [ebp-4]
 0059CA87    mov         esp,ebp
 0059CA89    pop         ebp
 0059CA8A    ret
*}
end;

//0059CA90
procedure TButton.sub_0059CA90;
begin
{*
 0059CA90    push        ebp
 0059CA91    mov         ebp,esp
 0059CA93    add         esp,0FFFFFFF8
 0059CA96    mov         dword ptr [ebp-4],eax
 0059CA99    mov         eax,dword ptr [ebp-4]
 0059CA9C    call        005CD060
 0059CAA1    mov         dword ptr [ebp-8],eax
 0059CAA4    cmp         dword ptr [ebp-8],0
>0059CAA8    je          0059CABC
 0059CAAA    mov         eax,dword ptr [ebp-4]
 0059CAAD    mov         eax,dword ptr [eax+214];TButton.ModalResult:TModalResult
 0059CAB3    mov         edx,dword ptr [ebp-8]
 0059CAB6    mov         dword ptr [edx+24C],eax
 0059CABC    mov         eax,dword ptr [ebp-4]
 0059CABF    call        TControl.sub_005F5478
 0059CAC4    pop         ecx
 0059CAC5    pop         ecx
 0059CAC6    pop         ebp
 0059CAC7    ret
*}
end;

//0059CAC8
procedure TButton.sub_0059CAC8;
begin
{*
 0059CAC8    push        ebp
 0059CAC9    mov         ebp,esp
 0059CACB    add         esp,0FFFFFFF8
 0059CACE    mov         dword ptr [ebp-4],eax
 0059CAD1    mov         byte ptr [ebp-5],0
 0059CAD5    mov         al,byte ptr [ebp-5]
 0059CAD8    pop         ecx
 0059CAD9    pop         ecx
 0059CADA    pop         ebp
 0059CADB    ret
*}
end;

//0059CADC
{*procedure sub_0059CADC(?:?);
begin
 0059CADC    push        ebp
 0059CADD    mov         ebp,esp
 0059CADF    add         esp,0FFFFFFF8
 0059CAE2    mov         byte ptr [ebp-5],dl
 0059CAE5    mov         dword ptr [ebp-4],eax
 0059CAE8    mov         eax,dword ptr [ebp-4]
 0059CAEB    call        TWinControl.HandleAllocated
 0059CAF0    test        al,al
>0059CAF2    je          0059CB3D
 0059CAF4    cmp         byte ptr [ebp-5],0
>0059CAF8    je          0059CB02
 0059CAFA    mov         word ptr [ebp-8],1
>0059CB00    jmp         0059CB08
 0059CB02    mov         word ptr [ebp-8],0
 0059CB08    push        0F0
 0059CB0A    mov         eax,dword ptr [ebp-4]
 0059CB0D    call        TWinControl.GetHandle
 0059CB12    push        eax
 0059CB13    call        USER32.GetWindowLongA
 0059CB18    and         eax,0F
 0059CB1B    movzx       edx,word ptr [ebp-8]
 0059CB1F    cmp         eax,edx
>0059CB21    je          0059CB3D
 0059CB23    push        1
 0059CB25    movzx       eax,word ptr [ebp-8]
 0059CB29    push        eax
 0059CB2A    push        0F4
 0059CB2F    mov         eax,dword ptr [ebp-4]
 0059CB32    call        TWinControl.GetHandle
 0059CB37    push        eax
 0059CB38    call        USER32.SendMessageA
 0059CB3D    pop         ecx
 0059CB3E    pop         ecx
 0059CB3F    pop         ebp
 0059CB40    ret
end;*}

//0059CB44
procedure TButton.SetDefault(Value:Boolean);
begin
{*
 0059CB44    push        ebp
 0059CB45    mov         ebp,esp
 0059CB47    add         esp,0FFFFFFF4
 0059CB4A    mov         byte ptr [ebp-5],dl
 0059CB4D    mov         dword ptr [ebp-4],eax
 0059CB50    mov         al,byte ptr [ebp-5]
 0059CB53    mov         edx,dword ptr [ebp-4]
 0059CB56    mov         byte ptr [edx+210],al;TButton.Default:Boolean
 0059CB5C    mov         eax,dword ptr [ebp-4]
 0059CB5F    call        TWinControl.HandleAllocated
 0059CB64    test        al,al
>0059CB66    je          0059CB92
 0059CB68    mov         eax,dword ptr [ebp-4]
 0059CB6B    call        005CD060
 0059CB70    mov         dword ptr [ebp-0C],eax
 0059CB73    cmp         dword ptr [ebp-0C],0
>0059CB77    je          0059CB92
 0059CB79    mov         eax,dword ptr [ebp-0C]
 0059CB7C    mov         eax,dword ptr [eax+220]
 0059CB82    push        eax
 0059CB83    xor         ecx,ecx
 0059CB85    mov         edx,0B007
 0059CB8A    mov         eax,dword ptr [ebp-0C]
 0059CB8D    call        005F4FA8
 0059CB92    mov         esp,ebp
 0059CB94    pop         ebp
 0059CB95    ret
*}
end;

//0059CB98
{*procedure sub_0059CB98(?:?);
begin
 0059CB98    push        ebp
 0059CB99    mov         ebp,esp
 0059CB9B    add         esp,0FFFFFFF8
 0059CB9E    mov         dword ptr [ebp-8],edx
 0059CBA1    mov         dword ptr [ebp-4],eax
 0059CBA4    mov         edx,dword ptr [ebp-8]
 0059CBA7    mov         eax,dword ptr [ebp-4]
 0059CBAA    call        005F7FC0
 0059CBAF    mov         ecx,59CBDC
 0059CBB4    mov         edx,dword ptr [ebp-8]
 0059CBB7    mov         eax,dword ptr [ebp-4]
 0059CBBA    call        005F7E98
 0059CBBF    mov         eax,dword ptr [ebp-4]
 0059CBC2    movzx       eax,byte ptr [eax+210];TButton.Default:Boolean
 0059CBC9    mov         eax,dword ptr [eax*4+6E3B1C]
 0059CBD0    mov         edx,dword ptr [ebp-8]
 0059CBD3    or          dword ptr [edx+4],eax
 0059CBD6    pop         ecx
 0059CBD7    pop         ecx
 0059CBD8    pop         ebp
 0059CBD9    ret
end;*}

//0059CBE4
procedure TButton.CreateWnd;
begin
{*
 0059CBE4    push        ebp
 0059CBE5    mov         ebp,esp
 0059CBE7    push        ecx
 0059CBE8    mov         dword ptr [ebp-4],eax
 0059CBEB    mov         eax,dword ptr [ebp-4]
 0059CBEE    call        TWinControl.CreateWnd
 0059CBF3    mov         eax,dword ptr [ebp-4]
 0059CBF6    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 0059CBFC    mov         edx,dword ptr [ebp-4]
 0059CBFF    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 0059CC05    pop         ecx
 0059CC06    pop         ebp
 0059CC07    ret
*}
end;

//0059CC08
{*procedure TButton.sub_0059CC08(?:?);
begin
 0059CC08    push        ebp
 0059CC09    mov         ebp,esp
 0059CC0B    add         esp,0FFFFFFF8
 0059CC0E    push        esi
 0059CC0F    mov         dword ptr [ebp-8],edx
 0059CC12    mov         dword ptr [ebp-4],eax
 0059CC15    mov         eax,dword ptr [ebp-8]
 0059CC18    cmp         word ptr [eax+6],0
>0059CC1D    jne         0059CC2B
 0059CC1F    mov         eax,dword ptr [ebp-4]
 0059CC22    mov         si,0FFEB
 0059CC26    call        @CallDynaInst;TButton.sub_0059CA90
 0059CC2B    pop         esi
 0059CC2C    pop         ecx
 0059CC2D    pop         ecx
 0059CC2E    pop         ebp
 0059CC2F    ret
end;*}

//0059CC30
{*procedure TButton.CMDialogKey(?:?);
begin
 0059CC30    push        ebp
 0059CC31    mov         ebp,esp
 0059CC33    add         esp,0FFFFFFF8
 0059CC36    push        esi
 0059CC37    mov         dword ptr [ebp-8],edx
 0059CC3A    mov         dword ptr [ebp-4],eax
 0059CC3D    mov         eax,dword ptr [ebp-8]
 0059CC40    cmp         word ptr [eax+4],0D
>0059CC45    jne         0059CC53
 0059CC47    mov         eax,dword ptr [ebp-4]
 0059CC4A    cmp         byte ptr [eax+212],0;TButton.FActive:Boolean
>0059CC51    jne         0059CC69
 0059CC53    mov         eax,dword ptr [ebp-8]
 0059CC56    cmp         word ptr [eax+4],1B
>0059CC5B    jne         0059CCA6
 0059CC5D    mov         eax,dword ptr [ebp-4]
 0059CC60    cmp         byte ptr [eax+211],0;TButton.Cancel:Boolean
>0059CC67    je          0059CCA6
 0059CC69    mov         eax,dword ptr [ebp-8]
 0059CC6C    mov         eax,dword ptr [eax+8]
 0059CC6F    call        005CCF08
 0059CC74    mov         dl,byte ptr ds:[59CCB8];0x0 gvar_0059CCB8
 0059CC7A    cmp         dl,al
>0059CC7C    jne         0059CCA6
 0059CC7E    mov         eax,dword ptr [ebp-4]
 0059CC81    mov         si,0FFB8
 0059CC85    call        @CallDynaInst;TWinControl.sub_005FBF90
 0059CC8A    test        al,al
>0059CC8C    je          0059CCA6
 0059CC8E    mov         eax,dword ptr [ebp-4]
 0059CC91    mov         si,0FFEB
 0059CC95    call        @CallDynaInst;TButton.sub_0059CA90
 0059CC9A    mov         eax,dword ptr [ebp-8]
 0059CC9D    mov         dword ptr [eax+0C],1
>0059CCA4    jmp         0059CCB1
 0059CCA6    mov         edx,dword ptr [ebp-8]
 0059CCA9    mov         eax,dword ptr [ebp-4]
 0059CCAC    call        TWinControl.CMDialogKey
 0059CCB1    pop         esi
 0059CCB2    pop         ecx
 0059CCB3    pop         ecx
 0059CCB4    pop         ebp
 0059CCB5    ret
end;*}

//0059CCBC
{*procedure TButton.CMDialogChar(?:?);
begin
 0059CCBC    push        ebp
 0059CCBD    mov         ebp,esp
 0059CCBF    add         esp,0FFFFFFF4
 0059CCC2    push        esi
 0059CCC3    xor         ecx,ecx
 0059CCC5    mov         dword ptr [ebp-0C],ecx
 0059CCC8    mov         dword ptr [ebp-8],edx
 0059CCCB    mov         dword ptr [ebp-4],eax
 0059CCCE    xor         eax,eax
 0059CCD0    push        ebp
 0059CCD1    push        59CD43
 0059CCD6    push        dword ptr fs:[eax]
 0059CCD9    mov         dword ptr fs:[eax],esp
 0059CCDC    lea         edx,[ebp-0C]
 0059CCDF    mov         eax,dword ptr [ebp-4]
 0059CCE2    call        TTabPage.GetCaption
 0059CCE7    mov         edx,dword ptr [ebp-0C]
 0059CCEA    mov         eax,dword ptr [ebp-8]
 0059CCED    mov         ax,word ptr [eax+4]
 0059CCF1    call        005CCFE8
 0059CCF6    test        al,al
>0059CCF8    je          0059CD22
 0059CCFA    mov         eax,dword ptr [ebp-4]
 0059CCFD    mov         si,0FFB8
 0059CD01    call        @CallDynaInst;TWinControl.sub_005FBF90
 0059CD06    test        al,al
>0059CD08    je          0059CD22
 0059CD0A    mov         eax,dword ptr [ebp-4]
 0059CD0D    mov         si,0FFEB
 0059CD11    call        @CallDynaInst;TButton.sub_0059CA90
 0059CD16    mov         eax,dword ptr [ebp-8]
 0059CD19    mov         dword ptr [eax+0C],1
>0059CD20    jmp         0059CD2D
 0059CD22    mov         edx,dword ptr [ebp-8]
 0059CD25    mov         eax,dword ptr [ebp-4]
 0059CD28    call        TWinControl.CMDialogChar
 0059CD2D    xor         eax,eax
 0059CD2F    pop         edx
 0059CD30    pop         ecx
 0059CD31    pop         ecx
 0059CD32    mov         dword ptr fs:[eax],edx
 0059CD35    push        59CD4A
 0059CD3A    lea         eax,[ebp-0C]
 0059CD3D    call        @LStrClr
 0059CD42    ret
>0059CD43    jmp         @HandleFinally
>0059CD48    jmp         0059CD3A
 0059CD4A    pop         esi
 0059CD4B    mov         esp,ebp
 0059CD4D    pop         ebp
 0059CD4E    ret
end;*}

//0059CD50
{*procedure TButton.CMFocusChenged(?:?);
begin
 0059CD50    push        ebp
 0059CD51    mov         ebp,esp
 0059CD53    add         esp,0FFFFFFF8
 0059CD56    mov         dword ptr [ebp-8],edx
 0059CD59    mov         dword ptr [ebp-4],eax
 0059CD5C    mov         eax,dword ptr [ebp-8]
 0059CD5F    mov         eax,dword ptr [eax+8]
 0059CD62    mov         edx,dword ptr ds:[594650];TButton
 0059CD68    call        @IsClass
 0059CD6D    test        al,al
>0059CD6F    je          0059CD88
 0059CD71    mov         eax,dword ptr [ebp-8]
 0059CD74    mov         eax,dword ptr [eax+8]
 0059CD77    cmp         eax,dword ptr [ebp-4]
 0059CD7A    sete        al
 0059CD7D    mov         edx,dword ptr [ebp-4]
 0059CD80    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
>0059CD86    jmp         0059CD9A
 0059CD88    mov         eax,dword ptr [ebp-4]
 0059CD8B    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 0059CD91    mov         edx,dword ptr [ebp-4]
 0059CD94    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 0059CD9A    mov         eax,dword ptr [ebp-4]
 0059CD9D    mov         dl,byte ptr [eax+212];TButton.FActive:Boolean
 0059CDA3    mov         eax,dword ptr [ebp-4]
 0059CDA6    mov         ecx,dword ptr [eax]
 0059CDA8    call        dword ptr [ecx+0CC];TButton.sub_0059CADC
 0059CDAE    mov         edx,dword ptr [ebp-8]
 0059CDB1    mov         eax,dword ptr [ebp-4]
 0059CDB4    call        TWinControl.CMFocusChenged
 0059CDB9    pop         ecx
 0059CDBA    pop         ecx
 0059CDBB    pop         ebp
 0059CDBC    ret
end;*}

//0059CDC0
procedure TButton.WMEraseBkgnd(Message:TWMEraseBkgnd);
begin
{*
 0059CDC0    push        ebp
 0059CDC1    mov         ebp,esp
 0059CDC3    add         esp,0FFFFFFF8
 0059CDC6    mov         dword ptr [ebp-8],edx
 0059CDC9    mov         dword ptr [ebp-4],eax
 0059CDCC    mov         edx,dword ptr [ebp-8]
 0059CDCF    mov         eax,dword ptr [ebp-4]
 0059CDD2    mov         ecx,dword ptr [eax]
 0059CDD4    call        dword ptr [ecx-10];TButton.DefaultHandler
 0059CDD7    pop         ecx
 0059CDD8    pop         ecx
 0059CDD9    pop         ebp
 0059CDDA    ret
*}
end;

//0059CDDC
constructor TCustomCheckBox.Create(AOwner:TComponent);
begin
{*
 0059CDDC    push        ebp
 0059CDDD    mov         ebp,esp
 0059CDDF    add         esp,0FFFFFFF4
 0059CDE2    test        dl,dl
>0059CDE4    je          0059CDEE
 0059CDE6    add         esp,0FFFFFFF0
 0059CDE9    call        @ClassCreate
 0059CDEE    mov         dword ptr [ebp-0C],ecx
 0059CDF1    mov         byte ptr [ebp-5],dl
 0059CDF4    mov         dword ptr [ebp-4],eax
 0059CDF7    mov         ecx,dword ptr [ebp-0C]
 0059CDFA    xor         edx,edx
 0059CDFC    mov         eax,dword ptr [ebp-4]
 0059CDFF    call        TButtonControl.Create
 0059CE04    mov         edx,61
 0059CE09    mov         eax,dword ptr [ebp-4]
 0059CE0C    call        TControl.SetWidth
 0059CE11    mov         edx,11
 0059CE16    mov         eax,dword ptr [ebp-4]
 0059CE19    call        TControl.SetHeight
 0059CE1E    mov         dl,1
 0059CE20    mov         eax,dword ptr [ebp-4]
 0059CE23    call        TCCalendar.SetTabStop
 0059CE28    mov         eax,dword ptr [ebp-4]
 0059CE2B    mov         edx,dword ptr ds:[59CE60];0xA0 gvar_0059CE60
 0059CE31    mov         dword ptr [eax+50],edx;TCustomCheckBox.FControlStyle:TControlStyle
 0059CE34    mov         eax,dword ptr [ebp-4]
 0059CE37    mov         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
 0059CE3E    mov         eax,dword ptr [ebp-4]
 0059CE41    cmp         byte ptr [ebp-5],0
>0059CE45    je          0059CE56
 0059CE47    call        @AfterConstruction
 0059CE4C    pop         dword ptr fs:[0]
 0059CE53    add         esp,0C
 0059CE56    mov         eax,dword ptr [ebp-4]
 0059CE59    mov         esp,ebp
 0059CE5B    pop         ebp
 0059CE5C    ret
*}
end;

//0059CE64
procedure TCustomCheckBox.sub_0059CE64;
begin
{*
 0059CE64    push        ebp
 0059CE65    mov         ebp,esp
 0059CE67    add         esp,0FFFFFFF8
 0059CE6A    push        esi
 0059CE6B    mov         dword ptr [ebp-4],eax
 0059CE6E    mov         eax,dword ptr [ebp-4]
 0059CE71    mov         si,0FFC8
 0059CE75    call        @CallDynaInst;TControl.sub_005F40CC
 0059CE7A    test        al,al
>0059CE7C    jne         0059CE84
 0059CE7E    mov         byte ptr [ebp-5],1
>0059CE82    jmp         0059CE9A
 0059CE84    mov         eax,dword ptr [ebp-4]
 0059CE87    cmp         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
>0059CE8E    jne         0059CE96
 0059CE90    mov         byte ptr [ebp-5],0
>0059CE94    jmp         0059CE9A
 0059CE96    mov         byte ptr [ebp-5],1
 0059CE9A    mov         al,byte ptr [ebp-5]
 0059CE9D    pop         esi
 0059CE9E    pop         ecx
 0059CE9F    pop         ecx
 0059CEA0    pop         ebp
 0059CEA1    ret
*}
end;

//0059CEA4
procedure sub_0059CEA4;
begin
{*
 0059CEA4    push        ebp
 0059CEA5    mov         ebp,esp
 0059CEA7    push        ecx
 0059CEA8    mov         dword ptr [ebp-4],eax
 0059CEAB    mov         eax,dword ptr [ebp-4]
 0059CEAE    mov         al,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 0059CEB4    sub         al,1
>0059CEB6    jb          0059CEC0
>0059CEB8    je          0059CEE5
 0059CEBA    dec         al
>0059CEBC    je          0059CEF2
>0059CEBE    jmp         0059CEFC
 0059CEC0    mov         eax,dword ptr [ebp-4]
 0059CEC3    cmp         byte ptr [eax+211],0;TCustomCheckBox.FAllowGrayed:Boolean
>0059CECA    je          0059CED8
 0059CECC    mov         dl,2
 0059CECE    mov         eax,dword ptr [ebp-4]
 0059CED1    call        TCheckBox.SetState
>0059CED6    jmp         0059CEFC
 0059CED8    mov         dl,1
 0059CEDA    mov         eax,dword ptr [ebp-4]
 0059CEDD    call        TCheckBox.SetState
 0059CEE2    pop         ecx
 0059CEE3    pop         ebp
 0059CEE4    ret
 0059CEE5    xor         edx,edx
 0059CEE7    mov         eax,dword ptr [ebp-4]
 0059CEEA    call        TCheckBox.SetState
 0059CEEF    pop         ecx
 0059CEF0    pop         ebp
 0059CEF1    ret
 0059CEF2    mov         dl,1
 0059CEF4    mov         eax,dword ptr [ebp-4]
 0059CEF7    call        TCheckBox.SetState
 0059CEFC    pop         ecx
 0059CEFD    pop         ebp
 0059CEFE    ret
*}
end;

//0059CF00
procedure TCustomCheckBox.sub_0059CF00;
begin
{*
 0059CF00    push        ebp
 0059CF01    mov         ebp,esp
 0059CF03    push        ecx
 0059CF04    mov         dword ptr [ebp-4],eax
 0059CF07    mov         eax,dword ptr [ebp-4]
 0059CF0A    call        005F3158
 0059CF0F    mov         eax,dword ptr [ebp-4]
 0059CF12    call        TControl.sub_005F5478
 0059CF17    pop         ecx
 0059CF18    pop         ebp
 0059CF19    ret
*}
end;

//0059CF1C
function TCheckBox.GetChecked:Boolean;
begin
{*
 0059CF1C    push        ebp
 0059CF1D    mov         ebp,esp
 0059CF1F    add         esp,0FFFFFFF8
 0059CF22    mov         dword ptr [ebp-4],eax
 0059CF25    mov         eax,dword ptr [ebp-4]
 0059CF28    cmp         byte ptr [eax+212],1;TCheckBox.FState:TCheckBoxState
 0059CF2F    sete        byte ptr [ebp-5]
 0059CF33    mov         al,byte ptr [ebp-5]
 0059CF36    pop         ecx
 0059CF37    pop         ecx
 0059CF38    pop         ebp
 0059CF39    ret
*}
end;

//0059CF3C
procedure TCheckBox.SetAlignment(Value:TLeftRight);
begin
{*
 0059CF3C    push        ebp
 0059CF3D    mov         ebp,esp
 0059CF3F    add         esp,0FFFFFFF8
 0059CF42    mov         byte ptr [ebp-5],dl
 0059CF45    mov         dword ptr [ebp-4],eax
 0059CF48    mov         eax,dword ptr [ebp-4]
 0059CF4B    mov         al,byte ptr [eax+210];TCheckBox.FAlignment:TLeftRight
 0059CF51    cmp         al,byte ptr [ebp-5]
>0059CF54    je          0059CF6A
 0059CF56    mov         al,byte ptr [ebp-5]
 0059CF59    mov         edx,dword ptr [ebp-4]
 0059CF5C    mov         byte ptr [edx+210],al;TCheckBox.FAlignment:TLeftRight
 0059CF62    mov         eax,dword ptr [ebp-4]
 0059CF65    call        TWinControl.RecreateWnd
 0059CF6A    pop         ecx
 0059CF6B    pop         ecx
 0059CF6C    pop         ebp
 0059CF6D    ret
*}
end;

//0059CF70
procedure TCheckBox.SetChecked(Value:Boolean);
begin
{*
 0059CF70    push        ebp
 0059CF71    mov         ebp,esp
 0059CF73    add         esp,0FFFFFFF8
 0059CF76    mov         byte ptr [ebp-5],dl
 0059CF79    mov         dword ptr [ebp-4],eax
 0059CF7C    cmp         byte ptr [ebp-5],0
>0059CF80    je          0059CF8E
 0059CF82    mov         dl,1
 0059CF84    mov         eax,dword ptr [ebp-4]
 0059CF87    call        TCheckBox.SetState
>0059CF8C    jmp         0059CF98
 0059CF8E    xor         edx,edx
 0059CF90    mov         eax,dword ptr [ebp-4]
 0059CF93    call        TCheckBox.SetState
 0059CF98    pop         ecx
 0059CF99    pop         ecx
 0059CF9A    pop         ebp
 0059CF9B    ret
*}
end;

//0059CF9C
procedure TCheckBox.SetState(Value:TCheckBoxState);
begin
{*
 0059CF9C    push        ebp
 0059CF9D    mov         ebp,esp
 0059CF9F    add         esp,0FFFFFFF8
 0059CFA2    push        esi
 0059CFA3    mov         byte ptr [ebp-5],dl
 0059CFA6    mov         dword ptr [ebp-4],eax
 0059CFA9    mov         eax,dword ptr [ebp-4]
 0059CFAC    mov         al,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 0059CFB2    cmp         al,byte ptr [ebp-5]
>0059CFB5    je          0059D007
 0059CFB7    mov         al,byte ptr [ebp-5]
 0059CFBA    mov         edx,dword ptr [ebp-4]
 0059CFBD    mov         byte ptr [edx+212],al;TCheckBox.FState:TCheckBoxState
 0059CFC3    mov         eax,dword ptr [ebp-4]
 0059CFC6    call        TWinControl.HandleAllocated
 0059CFCB    test        al,al
>0059CFCD    je          0059CFEF
 0059CFCF    push        0
 0059CFD1    mov         eax,dword ptr [ebp-4]
 0059CFD4    movzx       eax,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 0059CFDB    push        eax
 0059CFDC    push        0F1
 0059CFE1    mov         eax,dword ptr [ebp-4]
 0059CFE4    call        TWinControl.GetHandle
 0059CFE9    push        eax
 0059CFEA    call        USER32.SendMessageA
 0059CFEF    mov         eax,dword ptr [ebp-4]
 0059CFF2    cmp         byte ptr [eax+208],0;TCheckBox..............FClicksDisabled:Boolean
>0059CFF9    jne         0059D007
 0059CFFB    mov         eax,dword ptr [ebp-4]
 0059CFFE    mov         si,0FFEB
 0059D002    call        @CallDynaInst;TCustomCheckBox.sub_0059CF00
 0059D007    pop         esi
 0059D008    pop         ecx
 0059D009    pop         ecx
 0059D00A    pop         ebp
 0059D00B    ret
*}
end;

//0059D00C
{*procedure sub_0059D00C(?:?);
begin
 0059D00C    push        ebp
 0059D00D    mov         ebp,esp
 0059D00F    add         esp,0FFFFFFF8
 0059D012    push        esi
 0059D013    mov         dword ptr [ebp-8],edx
 0059D016    mov         dword ptr [ebp-4],eax
 0059D019    mov         edx,dword ptr [ebp-8]
 0059D01C    mov         eax,dword ptr [ebp-4]
 0059D01F    call        005F7FC0
 0059D024    mov         ecx,59D074
 0059D029    mov         edx,dword ptr [ebp-8]
 0059D02C    mov         eax,dword ptr [ebp-4]
 0059D02F    call        005F7E98
 0059D034    mov         eax,dword ptr [ebp-4]
 0059D037    mov         si,0FFC8
 0059D03B    call        @CallDynaInst;TControl.sub_005F40CC
 0059D040    and         eax,7F
 0059D043    lea         eax,[eax*8+6E3B24]
 0059D04A    mov         edx,dword ptr [ebp-4]
 0059D04D    movzx       edx,byte ptr [edx+210];TCustomCheckBox.FAlignment:TLeftRight
 0059D054    mov         eax,dword ptr [eax+edx*4]
 0059D057    mov         edx,dword ptr [ebp-8]
 0059D05A    mov         edx,dword ptr [edx+4]
 0059D05D    or          edx,5
 0059D060    or          eax,edx
 0059D062    mov         edx,dword ptr [ebp-8]
 0059D065    mov         dword ptr [edx+4],eax
 0059D068    mov         eax,dword ptr [ebp-8]
 0059D06B    and         dword ptr [eax+24],0FFFFFFFC
 0059D06F    pop         esi
 0059D070    pop         ecx
 0059D071    pop         ecx
 0059D072    pop         ebp
 0059D073    ret
end;*}

//0059D07C
procedure TCustomCheckBox.CreateWnd;
begin
{*
 0059D07C    push        ebp
 0059D07D    mov         ebp,esp
 0059D07F    push        ecx
 0059D080    mov         dword ptr [ebp-4],eax
 0059D083    mov         eax,dword ptr [ebp-4]
 0059D086    call        TWinControl.CreateWnd
 0059D08B    push        0
 0059D08D    mov         eax,dword ptr [ebp-4]
 0059D090    movzx       eax,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 0059D097    push        eax
 0059D098    push        0F1
 0059D09D    mov         eax,dword ptr [ebp-4]
 0059D0A0    call        TWinControl.GetHandle
 0059D0A5    push        eax
 0059D0A6    call        USER32.SendMessageA
 0059D0AB    pop         ecx
 0059D0AC    pop         ebp
 0059D0AD    ret
*}
end;

//0059D0B0
{*procedure TCustomCheckBox.WMSize(?:?);
begin
 0059D0B0    push        ebp
 0059D0B1    mov         ebp,esp
 0059D0B3    add         esp,0FFFFFFF8
 0059D0B6    mov         dword ptr [ebp-8],edx
 0059D0B9    mov         dword ptr [ebp-4],eax
 0059D0BC    mov         edx,dword ptr [ebp-8]
 0059D0BF    mov         eax,dword ptr [ebp-4]
 0059D0C2    call        TWinControl.WMSize
 0059D0C7    mov         eax,dword ptr [ebp-4]
 0059D0CA    mov         edx,dword ptr [eax]
 0059D0CC    call        dword ptr [edx+7C];TWinControl.Invalidate
 0059D0CF    pop         ecx
 0059D0D0    pop         ecx
 0059D0D1    pop         ebp
 0059D0D2    ret
end;*}

//0059D0D4
{*procedure TCustomCheckBox.CMCtl3DChanged(?:?);
begin
 0059D0D4    push        ebp
 0059D0D5    mov         ebp,esp
 0059D0D7    add         esp,0FFFFFFF8
 0059D0DA    mov         dword ptr [ebp-8],edx
 0059D0DD    mov         dword ptr [ebp-4],eax
 0059D0E0    mov         eax,dword ptr [ebp-4]
 0059D0E3    call        TWinControl.RecreateWnd
 0059D0E8    pop         ecx
 0059D0E9    pop         ecx
 0059D0EA    pop         ebp
 0059D0EB    ret
end;*}

//0059D0EC
{*procedure TCustomCheckBox.CMDialogChar(?:?);
begin
 0059D0EC    push        ebp
 0059D0ED    mov         ebp,esp
 0059D0EF    add         esp,0FFFFFFF4
 0059D0F2    push        esi
 0059D0F3    xor         ecx,ecx
 0059D0F5    mov         dword ptr [ebp-0C],ecx
 0059D0F8    mov         dword ptr [ebp-8],edx
 0059D0FB    mov         dword ptr [ebp-4],eax
 0059D0FE    xor         eax,eax
 0059D100    push        ebp
 0059D101    push        59D18D
 0059D106    push        dword ptr fs:[eax]
 0059D109    mov         dword ptr fs:[eax],esp
 0059D10C    lea         edx,[ebp-0C]
 0059D10F    mov         eax,dword ptr [ebp-4]
 0059D112    call        TTabPage.GetCaption
 0059D117    mov         edx,dword ptr [ebp-0C]
 0059D11A    mov         eax,dword ptr [ebp-8]
 0059D11D    mov         ax,word ptr [eax+4]
 0059D121    call        005CCFE8
 0059D126    test        al,al
>0059D128    je          0059D16C
 0059D12A    mov         eax,dword ptr [ebp-4]
 0059D12D    mov         si,0FFB8
 0059D131    call        @CallDynaInst;TWinControl.sub_005FBF90
 0059D136    test        al,al
>0059D138    je          0059D16C
 0059D13A    mov         eax,dword ptr [ebp-4]
 0059D13D    mov         edx,dword ptr [eax]
 0059D13F    call        dword ptr [edx+0C0];TCustomCheckBox.sub_005FBFF0
 0059D145    mov         eax,dword ptr [ebp-4]
 0059D148    mov         si,0FFB5
 0059D14C    call        @CallDynaInst;TWinControl.sub_005FC040
 0059D151    test        al,al
>0059D153    je          0059D160
 0059D155    mov         eax,dword ptr [ebp-4]
 0059D158    mov         edx,dword ptr [eax]
 0059D15A    call        dword ptr [edx+0CC];TCustomCheckBox.sub_0059CEA4
 0059D160    mov         eax,dword ptr [ebp-8]
 0059D163    mov         dword ptr [eax+0C],1
>0059D16A    jmp         0059D177
 0059D16C    mov         edx,dword ptr [ebp-8]
 0059D16F    mov         eax,dword ptr [ebp-4]
 0059D172    call        TWinControl.CMDialogChar
 0059D177    xor         eax,eax
 0059D179    pop         edx
 0059D17A    pop         ecx
 0059D17B    pop         ecx
 0059D17C    mov         dword ptr fs:[eax],edx
 0059D17F    push        59D194
 0059D184    lea         eax,[ebp-0C]
 0059D187    call        @LStrClr
 0059D18C    ret
>0059D18D    jmp         @HandleFinally
>0059D192    jmp         0059D184
 0059D194    pop         esi
 0059D195    mov         esp,ebp
 0059D197    pop         ebp
 0059D198    ret
end;*}

//0059D19C
{*procedure TCustomCheckBox.sub_0059D19C(?:?);
begin
 0059D19C    push        ebp
 0059D19D    mov         ebp,esp
 0059D19F    add         esp,0FFFFFFF8
 0059D1A2    mov         dword ptr [ebp-8],edx
 0059D1A5    mov         dword ptr [ebp-4],eax
 0059D1A8    mov         eax,dword ptr [ebp-8]
 0059D1AB    cmp         word ptr [eax+6],0
>0059D1B0    jne         0059D1BD
 0059D1B2    mov         eax,dword ptr [ebp-4]
 0059D1B5    mov         edx,dword ptr [eax]
 0059D1B7    call        dword ptr [edx+0CC];TCustomCheckBox.sub_0059CEA4
 0059D1BD    pop         ecx
 0059D1BE    pop         ecx
 0059D1BF    pop         ebp
 0059D1C0    ret
end;*}

//0059D1C4
constructor TRadioButton.Create(AOwner:TComponent);
begin
{*
 0059D1C4    push        ebp
 0059D1C5    mov         ebp,esp
 0059D1C7    add         esp,0FFFFFFF4
 0059D1CA    test        dl,dl
>0059D1CC    je          0059D1D6
 0059D1CE    add         esp,0FFFFFFF0
 0059D1D1    call        @ClassCreate
 0059D1D6    mov         dword ptr [ebp-0C],ecx
 0059D1D9    mov         byte ptr [ebp-5],dl
 0059D1DC    mov         dword ptr [ebp-4],eax
 0059D1DF    mov         ecx,dword ptr [ebp-0C]
 0059D1E2    xor         edx,edx
 0059D1E4    mov         eax,dword ptr [ebp-4]
 0059D1E7    call        TButtonControl.Create
 0059D1EC    mov         edx,71
 0059D1F1    mov         eax,dword ptr [ebp-4]
 0059D1F4    call        TControl.SetWidth
 0059D1F9    mov         edx,11
 0059D1FE    mov         eax,dword ptr [ebp-4]
 0059D201    call        TControl.SetHeight
 0059D206    mov         eax,dword ptr [ebp-4]
 0059D209    mov         edx,dword ptr ds:[59D23C];0xA0 gvar_0059D23C
 0059D20F    mov         dword ptr [eax+50],edx;TRadioButton.FControlStyle:TControlStyle
 0059D212    mov         eax,dword ptr [ebp-4]
 0059D215    mov         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
 0059D21C    mov         eax,dword ptr [ebp-4]
 0059D21F    cmp         byte ptr [ebp-5],0
>0059D223    je          0059D234
 0059D225    call        @AfterConstruction
 0059D22A    pop         dword ptr fs:[0]
 0059D231    add         esp,0C
 0059D234    mov         eax,dword ptr [ebp-4]
 0059D237    mov         esp,ebp
 0059D239    pop         ebp
 0059D23A    ret
*}
end;

//0059D240
function TRadioButton.GetChecked:Boolean;
begin
{*
 0059D240    push        ebp
 0059D241    mov         ebp,esp
 0059D243    add         esp,0FFFFFFF8
 0059D246    mov         dword ptr [ebp-4],eax
 0059D249    mov         eax,dword ptr [ebp-4]
 0059D24C    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 0059D252    mov         byte ptr [ebp-5],al
 0059D255    mov         al,byte ptr [ebp-5]
 0059D258    pop         ecx
 0059D259    pop         ecx
 0059D25A    pop         ebp
 0059D25B    ret
*}
end;

//0059D25C
procedure TRadioButton.sub_0059D25C;
begin
{*
 0059D25C    push        ebp
 0059D25D    mov         ebp,esp
 0059D25F    add         esp,0FFFFFFF8
 0059D262    push        esi
 0059D263    mov         dword ptr [ebp-4],eax
 0059D266    mov         eax,dword ptr [ebp-4]
 0059D269    mov         si,0FFC8
 0059D26D    call        @CallDynaInst;TControl.sub_005F40CC
 0059D272    test        al,al
>0059D274    jne         0059D27C
 0059D276    mov         byte ptr [ebp-5],1
>0059D27A    jmp         0059D292
 0059D27C    mov         eax,dword ptr [ebp-4]
 0059D27F    cmp         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
>0059D286    jne         0059D28E
 0059D288    mov         byte ptr [ebp-5],0
>0059D28C    jmp         0059D292
 0059D28E    mov         byte ptr [ebp-5],1
 0059D292    mov         al,byte ptr [ebp-5]
 0059D295    pop         esi
 0059D296    pop         ecx
 0059D297    pop         ecx
 0059D298    pop         ebp
 0059D299    ret
*}
end;

//0059D29C
procedure TRadioButton.SetAlignment(Value:TLeftRight);
begin
{*
 0059D29C    push        ebp
 0059D29D    mov         ebp,esp
 0059D29F    add         esp,0FFFFFFF8
 0059D2A2    mov         byte ptr [ebp-5],dl
 0059D2A5    mov         dword ptr [ebp-4],eax
 0059D2A8    mov         eax,dword ptr [ebp-4]
 0059D2AB    mov         al,byte ptr [eax+210];TRadioButton.Alignment:TLeftRight
 0059D2B1    cmp         al,byte ptr [ebp-5]
>0059D2B4    je          0059D2CA
 0059D2B6    mov         al,byte ptr [ebp-5]
 0059D2B9    mov         edx,dword ptr [ebp-4]
 0059D2BC    mov         byte ptr [edx+210],al;TRadioButton.Alignment:TLeftRight
 0059D2C2    mov         eax,dword ptr [ebp-4]
 0059D2C5    call        TWinControl.RecreateWnd
 0059D2CA    pop         ecx
 0059D2CB    pop         ecx
 0059D2CC    pop         ebp
 0059D2CD    ret
*}
end;

//0059D2D0
{*procedure sub_0059D2D0(?:?);
begin
 0059D2D0    push        ebp
 0059D2D1    mov         ebp,esp
 0059D2D3    add         esp,0FFFFFFF0
 0059D2D6    mov         eax,dword ptr [ebp+8]
 0059D2D9    mov         eax,dword ptr [eax-4]
 0059D2DC    cmp         dword ptr [eax+30],0
>0059D2E0    je          0059D395
 0059D2E6    mov         eax,dword ptr [ebp+8]
 0059D2E9    mov         eax,dword ptr [eax-4]
 0059D2EC    mov         eax,dword ptr [eax+30]
 0059D2EF    mov         dword ptr [ebp-0C],eax
 0059D2F2    mov         eax,dword ptr [ebp-0C]
 0059D2F5    call        005F7DC4
 0059D2FA    dec         eax
 0059D2FB    test        eax,eax
>0059D2FD    jl          0059D395
 0059D303    inc         eax
 0059D304    mov         dword ptr [ebp-10],eax
 0059D307    mov         dword ptr [ebp-4],0
 0059D30E    mov         edx,dword ptr [ebp-4]
 0059D311    mov         eax,dword ptr [ebp-0C]
 0059D314    call        005F7D58
 0059D319    mov         dword ptr [ebp-8],eax
 0059D31C    mov         eax,dword ptr [ebp+8]
 0059D31F    mov         eax,dword ptr [eax-4]
 0059D322    cmp         eax,dword ptr [ebp-8]
>0059D325    je          0059D389
 0059D327    mov         eax,dword ptr [ebp-8]
 0059D32A    mov         edx,dword ptr ds:[59560C];TRadioButton
 0059D330    call        @IsClass
 0059D335    test        al,al
>0059D337    je          0059D389
 0059D339    mov         eax,dword ptr [ebp-8]
 0059D33C    mov         edx,dword ptr [eax]
 0059D33E    call        dword ptr [edx+3C]
 0059D341    test        eax,eax
>0059D343    je          0059D37C
 0059D345    mov         eax,dword ptr [ebp-8]
 0059D348    mov         edx,dword ptr [eax]
 0059D34A    call        dword ptr [edx+3C]
 0059D34D    mov         edx,dword ptr ds:[58D604];TCustomAction
 0059D353    call        @IsClass
 0059D358    test        al,al
>0059D35A    je          0059D37C
 0059D35C    mov         eax,dword ptr [ebp-8]
 0059D35F    mov         edx,dword ptr [eax]
 0059D361    call        dword ptr [edx+3C]
 0059D364    cmp         byte ptr [eax+95],0
>0059D36B    je          0059D37C
 0059D36D    mov         eax,dword ptr [ebp-8]
 0059D370    mov         edx,dword ptr [eax]
 0059D372    call        dword ptr [edx+3C]
 0059D375    xor         edx,edx
 0059D377    call        TAction.SetChecked
 0059D37C    xor         edx,edx
 0059D37E    mov         eax,dword ptr [ebp-8]
 0059D381    mov         ecx,dword ptr [eax]
 0059D383    call        dword ptr [ecx+0C8]
 0059D389    inc         dword ptr [ebp-4]
 0059D38C    dec         dword ptr [ebp-10]
>0059D38F    jne         0059D30E
 0059D395    mov         esp,ebp
 0059D397    pop         ebp
 0059D398    ret
end;*}

//0059D39C
procedure TRadioButton.SetChecked(Value:Boolean);
begin
{*
 0059D39C    push        ebp
 0059D39D    mov         ebp,esp
 0059D39F    add         esp,0FFFFFFF8
 0059D3A2    push        esi
 0059D3A3    mov         byte ptr [ebp-5],dl
 0059D3A6    mov         dword ptr [ebp-4],eax
 0059D3A9    mov         eax,dword ptr [ebp-4]
 0059D3AC    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 0059D3B2    cmp         al,byte ptr [ebp-5]
>0059D3B5    je          0059D42B
 0059D3B7    mov         eax,dword ptr [ebp-4]
 0059D3BA    mov         dl,byte ptr [ebp-5]
 0059D3BD    mov         byte ptr [eax+211],dl;TRadioButton.FChecked:Boolean
 0059D3C3    mov         dl,byte ptr [ebp-5]
 0059D3C6    mov         eax,dword ptr [ebp-4]
 0059D3C9    call        TCCalendar.SetTabStop
 0059D3CE    mov         eax,dword ptr [ebp-4]
 0059D3D1    call        TWinControl.HandleAllocated
 0059D3D6    test        al,al
>0059D3D8    je          0059D3FE
 0059D3DA    push        0
 0059D3DC    mov         eax,dword ptr [ebp-4]
 0059D3DF    mov         edx,dword ptr [eax]
 0059D3E1    call        dword ptr [edx+0C4];TRadioButton.GetChecked
 0059D3E7    and         eax,7F
 0059D3EA    push        eax
 0059D3EB    push        0F1
 0059D3F0    mov         eax,dword ptr [ebp-4]
 0059D3F3    call        TWinControl.GetHandle
 0059D3F8    push        eax
 0059D3F9    call        USER32.SendMessageA
 0059D3FE    cmp         byte ptr [ebp-5],0
>0059D402    je          0059D42B
 0059D404    push        ebp
 0059D405    call        0059D2D0
 0059D40A    pop         ecx
 0059D40B    mov         eax,dword ptr [ebp-4]
 0059D40E    call        005F3158
 0059D413    mov         eax,dword ptr [ebp-4]
 0059D416    cmp         byte ptr [eax+208],0;TRadioButton...............FClicksDisabled:Boolean
>0059D41D    jne         0059D42B
 0059D41F    mov         eax,dword ptr [ebp-4]
 0059D422    mov         si,0FFEB
 0059D426    call        @CallDynaInst;TControl.sub_005F5478
 0059D42B    pop         esi
 0059D42C    pop         ecx
 0059D42D    pop         ecx
 0059D42E    pop         ebp
 0059D42F    ret
*}
end;

//0059D430
{*procedure sub_0059D430(?:?);
begin
 0059D430    push        ebp
 0059D431    mov         ebp,esp
 0059D433    add         esp,0FFFFFFF8
 0059D436    push        esi
 0059D437    mov         dword ptr [ebp-8],edx
 0059D43A    mov         dword ptr [ebp-4],eax
 0059D43D    mov         edx,dword ptr [ebp-8]
 0059D440    mov         eax,dword ptr [ebp-4]
 0059D443    call        005F7FC0
 0059D448    mov         ecx,59D494
 0059D44D    mov         edx,dword ptr [ebp-8]
 0059D450    mov         eax,dword ptr [ebp-4]
 0059D453    call        005F7E98
 0059D458    mov         eax,dword ptr [ebp-4]
 0059D45B    mov         si,0FFC8
 0059D45F    call        @CallDynaInst;TControl.sub_005F40CC
 0059D464    and         eax,7F
 0059D467    lea         eax,[eax*8+6E3B34]
 0059D46E    mov         edx,dword ptr [ebp-4]
 0059D471    movzx       edx,byte ptr [edx+210];TRadioButton.Alignment:TLeftRight
 0059D478    mov         eax,dword ptr [eax+edx*4]
 0059D47B    mov         edx,dword ptr [ebp-8]
 0059D47E    mov         edx,dword ptr [edx+4]
 0059D481    or          edx,4
 0059D484    or          eax,edx
 0059D486    mov         edx,dword ptr [ebp-8]
 0059D489    mov         dword ptr [edx+4],eax
 0059D48C    pop         esi
 0059D48D    pop         ecx
 0059D48E    pop         ecx
 0059D48F    pop         ebp
 0059D490    ret
end;*}

//0059D49C
procedure TRadioButton.CreateWnd;
begin
{*
 0059D49C    push        ebp
 0059D49D    mov         ebp,esp
 0059D49F    push        ecx
 0059D4A0    mov         dword ptr [ebp-4],eax
 0059D4A3    mov         eax,dword ptr [ebp-4]
 0059D4A6    call        TWinControl.CreateWnd
 0059D4AB    push        0
 0059D4AD    mov         eax,dword ptr [ebp-4]
 0059D4B0    movzx       eax,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 0059D4B7    push        eax
 0059D4B8    push        0F1
 0059D4BD    mov         eax,dword ptr [ebp-4]
 0059D4C0    call        TWinControl.GetHandle
 0059D4C5    push        eax
 0059D4C6    call        USER32.SendMessageA
 0059D4CB    pop         ecx
 0059D4CC    pop         ebp
 0059D4CD    ret
*}
end;

//0059D4D0
{*procedure TRadioButton.CMCtl3DChanged(?:?);
begin
 0059D4D0    push        ebp
 0059D4D1    mov         ebp,esp
 0059D4D3    add         esp,0FFFFFFF8
 0059D4D6    mov         dword ptr [ebp-8],edx
 0059D4D9    mov         dword ptr [ebp-4],eax
 0059D4DC    mov         eax,dword ptr [ebp-4]
 0059D4DF    call        TWinControl.RecreateWnd
 0059D4E4    pop         ecx
 0059D4E5    pop         ecx
 0059D4E6    pop         ebp
 0059D4E7    ret
end;*}

//0059D4E8
{*procedure TRadioButton.CMDialogChar(?:?);
begin
 0059D4E8    push        ebp
 0059D4E9    mov         ebp,esp
 0059D4EB    add         esp,0FFFFFFF4
 0059D4EE    push        esi
 0059D4EF    xor         ecx,ecx
 0059D4F1    mov         dword ptr [ebp-0C],ecx
 0059D4F4    mov         dword ptr [ebp-8],edx
 0059D4F7    mov         dword ptr [ebp-4],eax
 0059D4FA    xor         eax,eax
 0059D4FC    push        ebp
 0059D4FD    push        59D56E
 0059D502    push        dword ptr fs:[eax]
 0059D505    mov         dword ptr fs:[eax],esp
 0059D508    lea         edx,[ebp-0C]
 0059D50B    mov         eax,dword ptr [ebp-4]
 0059D50E    call        TTabPage.GetCaption
 0059D513    mov         edx,dword ptr [ebp-0C]
 0059D516    mov         eax,dword ptr [ebp-8]
 0059D519    mov         ax,word ptr [eax+4]
 0059D51D    call        005CCFE8
 0059D522    test        al,al
>0059D524    je          0059D54D
 0059D526    mov         eax,dword ptr [ebp-4]
 0059D529    mov         si,0FFB8
 0059D52D    call        @CallDynaInst;TWinControl.sub_005FBF90
 0059D532    test        al,al
>0059D534    je          0059D54D
 0059D536    mov         eax,dword ptr [ebp-4]
 0059D539    mov         edx,dword ptr [eax]
 0059D53B    call        dword ptr [edx+0C0];TRadioButton.sub_005FBFF0
 0059D541    mov         eax,dword ptr [ebp-8]
 0059D544    mov         dword ptr [eax+0C],1
>0059D54B    jmp         0059D558
 0059D54D    mov         edx,dword ptr [ebp-8]
 0059D550    mov         eax,dword ptr [ebp-4]
 0059D553    call        TWinControl.CMDialogChar
 0059D558    xor         eax,eax
 0059D55A    pop         edx
 0059D55B    pop         ecx
 0059D55C    pop         ecx
 0059D55D    mov         dword ptr fs:[eax],edx
 0059D560    push        59D575
 0059D565    lea         eax,[ebp-0C]
 0059D568    call        @LStrClr
 0059D56D    ret
>0059D56E    jmp         @HandleFinally
>0059D573    jmp         0059D565
 0059D575    pop         esi
 0059D576    mov         esp,ebp
 0059D578    pop         ebp
 0059D579    ret
end;*}

//0059D57C
{*procedure TRadioButton.sub_0059D57C(?:?);
begin
 0059D57C    push        ebp
 0059D57D    mov         ebp,esp
 0059D57F    add         esp,0FFFFFFF8
 0059D582    push        esi
 0059D583    mov         dword ptr [ebp-8],edx
 0059D586    mov         dword ptr [ebp-4],eax
 0059D589    mov         eax,dword ptr [ebp-8]
 0059D58C    mov         ax,word ptr [eax+6]
 0059D590    sub         ax,1
>0059D594    jb          0059D59E
 0059D596    sub         ax,4
>0059D59A    je          0059D5AD
>0059D59C    jmp         0059D5B9
 0059D59E    mov         dl,1
 0059D5A0    mov         eax,dword ptr [ebp-4]
 0059D5A3    mov         ecx,dword ptr [eax]
 0059D5A5    call        dword ptr [ecx+0C8];TRadioButton.SetChecked
>0059D5AB    jmp         0059D5B9
 0059D5AD    mov         eax,dword ptr [ebp-4]
 0059D5B0    mov         si,0FFE9
 0059D5B4    call        @CallDynaInst;TControl.sub_005F5508
 0059D5B9    pop         esi
 0059D5BA    pop         ecx
 0059D5BB    pop         ecx
 0059D5BC    pop         ebp
 0059D5BD    ret
end;*}

//0059D5C0
{*function sub_0059D5C0:?;
begin
 0059D5C0    push        ebp
 0059D5C1    mov         ebp,esp
 0059D5C3    add         esp,0FFFFFFF8
 0059D5C6    mov         dword ptr [ebp-4],eax
 0059D5C9    push        0
 0059D5CB    push        0
 0059D5CD    push        18B
 0059D5D2    mov         eax,dword ptr [ebp-4]
 0059D5D5    mov         eax,dword ptr [eax+10];TListBoxStrings...........................................ListBox...
 0059D5D8    call        TWinControl.GetHandle
 0059D5DD    push        eax
 0059D5DE    call        USER32.SendMessageA
 0059D5E3    mov         dword ptr [ebp-8],eax
 0059D5E6    mov         eax,dword ptr [ebp-8]
 0059D5E9    pop         ecx
 0059D5EA    pop         ecx
 0059D5EB    pop         ebp
 0059D5EC    ret
end;*}

//0059D5F0
{*procedure sub_0059D5F0(?:?; ?:?);
begin
 0059D5F0    push        ebp
 0059D5F1    mov         ebp,esp
 0059D5F3    add         esp,0FFFFFFEC
 0059D5F6    push        ebx
 0059D5F7    xor         ebx,ebx
 0059D5F9    mov         dword ptr [ebp-14],ebx
 0059D5FC    mov         dword ptr [ebp-0C],ecx
 0059D5FF    mov         dword ptr [ebp-8],edx
 0059D602    mov         dword ptr [ebp-4],eax
 0059D605    xor         eax,eax
 0059D607    push        ebp
 0059D608    push        59D6D5
 0059D60D    push        dword ptr fs:[eax]
 0059D610    mov         dword ptr fs:[eax],esp
 0059D613    mov         eax,dword ptr [ebp-4]
 0059D616    mov         eax,dword ptr [eax+10];TListBoxStrings............................................ListBo...
 0059D619    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D61F    add         al,0FD
 0059D621    sub         al,2
>0059D623    jae         0059D63B
 0059D625    mov         ecx,dword ptr [ebp-0C]
 0059D628    mov         edx,dword ptr [ebp-8]
 0059D62B    mov         eax,dword ptr [ebp-4]
 0059D62E    mov         eax,dword ptr [eax+10];TListBoxStrings.............................................ListB...
 0059D631    call        0059F974
>0059D636    jmp         0059D6BF
 0059D63B    push        0
 0059D63D    mov         eax,dword ptr [ebp-8]
 0059D640    push        eax
 0059D641    push        18A
 0059D646    mov         eax,dword ptr [ebp-4]
 0059D649    mov         eax,dword ptr [eax+10];TListBoxStrings..............................................List...
 0059D64C    call        TWinControl.GetHandle
 0059D651    push        eax
 0059D652    call        USER32.SendMessageA
 0059D657    mov         dword ptr [ebp-10],eax
 0059D65A    cmp         dword ptr [ebp-10],0FFFFFFFF
>0059D65E    jne         0059D67B
 0059D660    lea         edx,[ebp-14]
 0059D663    mov         eax,[006EA0AC];^gvar_0065504C
 0059D668    call        LoadResString
 0059D66D    mov         edx,dword ptr [ebp-14]
 0059D670    mov         ecx,dword ptr [ebp-8]
 0059D673    mov         eax,dword ptr [ebp-4]
 0059D676    call        0064701C
 0059D67B    mov         eax,dword ptr [ebp-0C]
 0059D67E    mov         edx,dword ptr [ebp-10]
 0059D681    call        @LStrSetLength
 0059D686    cmp         dword ptr [ebp-10],0
>0059D68A    je          0059D6BF
 0059D68C    mov         eax,dword ptr [ebp-0C]
 0059D68F    mov         eax,dword ptr [eax]
 0059D691    call        @LStrToPChar
 0059D696    push        eax
 0059D697    mov         eax,dword ptr [ebp-8]
 0059D69A    push        eax
 0059D69B    push        189
 0059D6A0    mov         eax,dword ptr [ebp-4]
 0059D6A3    mov         eax,dword ptr [eax+10];TListBoxStrings...............................................Lis...
 0059D6A6    call        TWinControl.GetHandle
 0059D6AB    push        eax
 0059D6AC    call        USER32.SendMessageA
 0059D6B1    mov         dword ptr [ebp-10],eax
 0059D6B4    mov         eax,dword ptr [ebp-0C]
 0059D6B7    mov         edx,dword ptr [ebp-10]
 0059D6BA    call        @LStrSetLength
 0059D6BF    xor         eax,eax
 0059D6C1    pop         edx
 0059D6C2    pop         ecx
 0059D6C3    pop         ecx
 0059D6C4    mov         dword ptr fs:[eax],edx
 0059D6C7    push        59D6DC
 0059D6CC    lea         eax,[ebp-14]
 0059D6CF    call        @LStrClr
 0059D6D4    ret
>0059D6D5    jmp         @HandleFinally
>0059D6DA    jmp         0059D6CC
 0059D6DC    pop         ebx
 0059D6DD    mov         esp,ebp
 0059D6DF    pop         ebp
 0059D6E0    ret
end;*}

//0059D6E4
{*function sub_0059D6E4(?:?):?;
begin
 0059D6E4    push        ebp
 0059D6E5    mov         ebp,esp
 0059D6E7    add         esp,0FFFFFFF0
 0059D6EA    push        esi
 0059D6EB    xor         ecx,ecx
 0059D6ED    mov         dword ptr [ebp-10],ecx
 0059D6F0    mov         dword ptr [ebp-8],edx
 0059D6F3    mov         dword ptr [ebp-4],eax
 0059D6F6    xor         eax,eax
 0059D6F8    push        ebp
 0059D6F9    push        59D775
 0059D6FE    push        dword ptr fs:[eax]
 0059D701    mov         dword ptr fs:[eax],esp
 0059D704    mov         eax,dword ptr [ebp-4]
 0059D707    mov         eax,dword ptr [eax+10];TListBoxStrings................................................Li...
 0059D70A    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D710    add         al,0FD
 0059D712    sub         al,2
>0059D714    jae         0059D729
 0059D716    mov         edx,dword ptr [ebp-8]
 0059D719    mov         eax,dword ptr [ebp-4]
 0059D71C    mov         eax,dword ptr [eax+10];TListBoxStrings.................................................L...
 0059D71F    call        0059F9B0
 0059D724    mov         dword ptr [ebp-0C],eax
>0059D727    jmp         0059D75F
 0059D729    mov         edx,dword ptr [ebp-8]
 0059D72C    mov         eax,dword ptr [ebp-4]
 0059D72F    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D732    mov         si,0FFB1
 0059D736    call        @CallDynaInst;TCustomListBox.sub_0059DF10
 0059D73B    mov         dword ptr [ebp-0C],eax
 0059D73E    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0059D742    jne         0059D75F
 0059D744    lea         edx,[ebp-10]
 0059D747    mov         eax,[006EA0AC];^gvar_0065504C
 0059D74C    call        LoadResString
 0059D751    mov         edx,dword ptr [ebp-10]
 0059D754    mov         ecx,dword ptr [ebp-8]
 0059D757    mov         eax,dword ptr [ebp-4]
 0059D75A    call        0064701C
 0059D75F    xor         eax,eax
 0059D761    pop         edx
 0059D762    pop         ecx
 0059D763    pop         ecx
 0059D764    mov         dword ptr fs:[eax],edx
 0059D767    push        59D77C
 0059D76C    lea         eax,[ebp-10]
 0059D76F    call        @LStrClr
 0059D774    ret
>0059D775    jmp         @HandleFinally
>0059D77A    jmp         0059D76C
 0059D77C    mov         eax,dword ptr [ebp-0C]
 0059D77F    pop         esi
 0059D780    mov         esp,ebp
 0059D782    pop         ebp
 0059D783    ret
end;*}

//0059D784
{*procedure sub_0059D784(?:?; ?:?);
begin
 0059D784    push        ebp
 0059D785    mov         ebp,esp
 0059D787    add         esp,0FFFFFFEC
 0059D78A    push        ebx
 0059D78B    push        esi
 0059D78C    mov         dword ptr [ebp-0C],ecx
 0059D78F    mov         dword ptr [ebp-8],edx
 0059D792    mov         dword ptr [ebp-4],eax
 0059D795    mov         eax,dword ptr [ebp-4]
 0059D798    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D79B    mov         edx,dword ptr [eax]
 0059D79D    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059D7A3    mov         dword ptr [ebp-10],eax
 0059D7A6    mov         edx,dword ptr [ebp-8]
 0059D7A9    mov         eax,dword ptr [ebp-4]
 0059D7AC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D7AF    mov         si,0FFB3
 0059D7B3    call        @CallDynaInst;TCustomListBox.sub_0059DF70
 0059D7B8    mov         dword ptr [ebp-14],eax
 0059D7BB    xor         ecx,ecx
 0059D7BD    mov         edx,dword ptr [ebp-8]
 0059D7C0    mov         eax,dword ptr [ebp-4]
 0059D7C3    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D7C6    mov         si,0FFB2
 0059D7CA    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059D7CF    mov         edx,dword ptr [ebp-8]
 0059D7D2    mov         eax,dword ptr [ebp-4]
 0059D7D5    mov         ecx,dword ptr [eax]
 0059D7D7    call        dword ptr [ecx+48];TListBoxStrings.sub_0059D9A4
 0059D7DA    push        0
 0059D7DC    mov         ecx,dword ptr [ebp-0C]
 0059D7DF    mov         edx,dword ptr [ebp-8]
 0059D7E2    mov         eax,dword ptr [ebp-4]
 0059D7E5    mov         ebx,dword ptr [eax]
 0059D7E7    call        dword ptr [ebx+64];TListBoxStrings.sub_0064767C
 0059D7EA    mov         ecx,dword ptr [ebp-14]
 0059D7ED    mov         edx,dword ptr [ebp-8]
 0059D7F0    mov         eax,dword ptr [ebp-4]
 0059D7F3    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D7F6    mov         si,0FFB2
 0059D7FA    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059D7FF    mov         edx,dword ptr [ebp-10]
 0059D802    mov         eax,dword ptr [ebp-4]
 0059D805    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D808    mov         ecx,dword ptr [eax]
 0059D80A    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
 0059D810    pop         esi
 0059D811    pop         ebx
 0059D812    mov         esp,ebp
 0059D814    pop         ebp
 0059D815    ret
end;*}

//0059D818
{*procedure sub_0059D818(?:?; ?:?);
begin
 0059D818    push        ebp
 0059D819    mov         ebp,esp
 0059D81B    add         esp,0FFFFFFF4
 0059D81E    push        esi
 0059D81F    mov         dword ptr [ebp-0C],ecx
 0059D822    mov         dword ptr [ebp-8],edx
 0059D825    mov         dword ptr [ebp-4],eax
 0059D828    cmp         dword ptr [ebp-8],0FFFFFFFF
>0059D82C    je          0059D855
 0059D82E    mov         eax,dword ptr [ebp-4]
 0059D831    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D834    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D83A    add         al,0FD
 0059D83C    sub         al,2
>0059D83E    jb          0059D855
 0059D840    mov         ecx,dword ptr [ebp-0C]
 0059D843    mov         edx,dword ptr [ebp-8]
 0059D846    mov         eax,dword ptr [ebp-4]
 0059D849    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D84C    mov         si,0FFB0
 0059D850    call        @CallDynaInst;TCustomListBox.sub_0059DF40
 0059D855    pop         esi
 0059D856    mov         esp,ebp
 0059D858    pop         ebp
 0059D859    ret
end;*}

//0059D85C
{*function sub_0059D85C(?:?):?;
begin
 0059D85C    push        ebp
 0059D85D    mov         ebp,esp
 0059D85F    add         esp,0FFFFFFF0
 0059D862    xor         ecx,ecx
 0059D864    mov         dword ptr [ebp-10],ecx
 0059D867    mov         dword ptr [ebp-8],edx
 0059D86A    mov         dword ptr [ebp-4],eax
 0059D86D    xor         eax,eax
 0059D86F    push        ebp
 0059D870    push        59D8F5
 0059D875    push        dword ptr fs:[eax]
 0059D878    mov         dword ptr fs:[eax],esp
 0059D87B    mov         dword ptr [ebp-0C],0FFFFFFFF
 0059D882    mov         eax,dword ptr [ebp-4]
 0059D885    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D888    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D88E    add         al,0FD
 0059D890    sub         al,2
>0059D892    jb          0059D8DF
 0059D894    mov         eax,dword ptr [ebp-8]
 0059D897    call        @LStrToPChar
 0059D89C    push        eax
 0059D89D    push        0
 0059D89F    push        180
 0059D8A4    mov         eax,dword ptr [ebp-4]
 0059D8A7    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D8AA    call        TWinControl.GetHandle
 0059D8AF    push        eax
 0059D8B0    call        USER32.SendMessageA
 0059D8B5    mov         dword ptr [ebp-0C],eax
 0059D8B8    cmp         dword ptr [ebp-0C],0
>0059D8BC    jge         0059D8DF
 0059D8BE    lea         edx,[ebp-10]
 0059D8C1    mov         eax,[006E9F84];^gvar_0063CD18
 0059D8C6    call        LoadResString
 0059D8CB    mov         ecx,dword ptr [ebp-10]
 0059D8CE    mov         dl,1
 0059D8D0    mov         eax,[006421E8];EOutOfResources
 0059D8D5    call        Exception.Create;EOutOfResources.Create
 0059D8DA    call        @RaiseExcept
 0059D8DF    xor         eax,eax
 0059D8E1    pop         edx
 0059D8E2    pop         ecx
 0059D8E3    pop         ecx
 0059D8E4    mov         dword ptr fs:[eax],edx
 0059D8E7    push        59D8FC
 0059D8EC    lea         eax,[ebp-10]
 0059D8EF    call        @LStrClr
 0059D8F4    ret
>0059D8F5    jmp         @HandleFinally
>0059D8FA    jmp         0059D8EC
 0059D8FC    mov         eax,dword ptr [ebp-0C]
 0059D8FF    mov         esp,ebp
 0059D901    pop         ebp
 0059D902    ret
end;*}

//0059D904
{*procedure sub_0059D904(?:?; ?:?);
begin
 0059D904    push        ebp
 0059D905    mov         ebp,esp
 0059D907    add         esp,0FFFFFFF0
 0059D90A    push        ebx
 0059D90B    xor         ebx,ebx
 0059D90D    mov         dword ptr [ebp-10],ebx
 0059D910    mov         dword ptr [ebp-0C],ecx
 0059D913    mov         dword ptr [ebp-8],edx
 0059D916    mov         dword ptr [ebp-4],eax
 0059D919    xor         eax,eax
 0059D91B    push        ebp
 0059D91C    push        59D997
 0059D921    push        dword ptr fs:[eax]
 0059D924    mov         dword ptr fs:[eax],esp
 0059D927    mov         eax,dword ptr [ebp-4]
 0059D92A    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D92D    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D933    add         al,0FD
 0059D935    sub         al,2
>0059D937    jb          0059D981
 0059D939    mov         eax,dword ptr [ebp-0C]
 0059D93C    call        @LStrToPChar
 0059D941    push        eax
 0059D942    mov         eax,dword ptr [ebp-8]
 0059D945    push        eax
 0059D946    push        181
 0059D94B    mov         eax,dword ptr [ebp-4]
 0059D94E    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D951    call        TWinControl.GetHandle
 0059D956    push        eax
 0059D957    call        USER32.SendMessageA
 0059D95C    test        eax,eax
>0059D95E    jge         0059D981
 0059D960    lea         edx,[ebp-10]
 0059D963    mov         eax,[006E9F84];^gvar_0063CD18
 0059D968    call        LoadResString
 0059D96D    mov         ecx,dword ptr [ebp-10]
 0059D970    mov         dl,1
 0059D972    mov         eax,[006421E8];EOutOfResources
 0059D977    call        Exception.Create;EOutOfResources.Create
 0059D97C    call        @RaiseExcept
 0059D981    xor         eax,eax
 0059D983    pop         edx
 0059D984    pop         ecx
 0059D985    pop         ecx
 0059D986    mov         dword ptr fs:[eax],edx
 0059D989    push        59D99E
 0059D98E    lea         eax,[ebp-10]
 0059D991    call        @LStrClr
 0059D996    ret
>0059D997    jmp         @HandleFinally
>0059D99C    jmp         0059D98E
 0059D99E    pop         ebx
 0059D99F    mov         esp,ebp
 0059D9A1    pop         ebp
 0059D9A2    ret
end;*}

//0059D9A4
{*procedure sub_0059D9A4(?:?);
begin
 0059D9A4    push        ebp
 0059D9A5    mov         ebp,esp
 0059D9A7    add         esp,0FFFFFFF8
 0059D9AA    push        esi
 0059D9AB    mov         dword ptr [ebp-8],edx
 0059D9AE    mov         dword ptr [ebp-4],eax
 0059D9B1    mov         edx,dword ptr [ebp-8]
 0059D9B4    mov         eax,dword ptr [ebp-4]
 0059D9B7    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D9BA    mov         si,0FFAE
 0059D9BE    call        @CallDynaInst;TCustomListBox.sub_0059DFC0
 0059D9C3    pop         esi
 0059D9C4    pop         ecx
 0059D9C5    pop         ecx
 0059D9C6    pop         ebp
 0059D9C7    ret
end;*}

//0059D9C8
{*procedure sub_0059D9C8(?:?; ?:?);
begin
 0059D9C8    push        ebp
 0059D9C9    mov         ebp,esp
 0059D9CB    add         esp,0FFFFFFE8
 0059D9CE    push        ebx
 0059D9CF    push        esi
 0059D9D0    xor         ebx,ebx
 0059D9D2    mov         dword ptr [ebp-18],ebx
 0059D9D5    mov         dword ptr [ebp-14],ebx
 0059D9D8    mov         dword ptr [ebp-0C],ecx
 0059D9DB    mov         dword ptr [ebp-8],edx
 0059D9DE    mov         dword ptr [ebp-4],eax
 0059D9E1    xor         eax,eax
 0059D9E3    push        ebp
 0059D9E4    push        59DB25
 0059D9E9    push        dword ptr fs:[eax]
 0059D9EC    mov         dword ptr fs:[eax],esp
 0059D9EF    mov         eax,dword ptr [ebp-4]
 0059D9F2    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059D9F5    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059D9FB    add         al,0FD
 0059D9FD    sub         al,2
>0059D9FF    jb          0059DB0A
 0059DA05    mov         eax,dword ptr [ebp-4]
 0059DA08    call        TStrings.BeginUpdate
 0059DA0D    xor         eax,eax
 0059DA0F    push        ebp
 0059DA10    push        59DB03
 0059DA15    push        dword ptr fs:[eax]
 0059DA18    mov         dword ptr fs:[eax],esp
 0059DA1B    lea         ecx,[ebp-14]
 0059DA1E    mov         edx,dword ptr [ebp-8]
 0059DA21    mov         eax,dword ptr [ebp-4]
 0059DA24    mov         ebx,dword ptr [eax]
 0059DA26    call        dword ptr [ebx+0C];TListBoxStrings.sub_0059D5F0
 0059DA29    mov         eax,dword ptr [ebp-4]
 0059DA2C    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DA2F    mov         edx,dword ptr [ebp-8]
 0059DA32    mov         si,0FFB3
 0059DA36    call        @CallDynaInst;TCustomListBox.sub_0059DF70
 0059DA3B    mov         dword ptr [ebp-10],eax
 0059DA3E    lea         ecx,[ebp-18]
 0059DA41    mov         edx,dword ptr [ebp-0C]
 0059DA44    mov         eax,dword ptr [ebp-4]
 0059DA47    mov         ebx,dword ptr [eax]
 0059DA49    call        dword ptr [ebx+0C];TListBoxStrings.sub_0059D5F0
 0059DA4C    mov         ecx,dword ptr [ebp-18]
 0059DA4F    mov         edx,dword ptr [ebp-8]
 0059DA52    mov         eax,dword ptr [ebp-4]
 0059DA55    mov         ebx,dword ptr [eax]
 0059DA57    call        dword ptr [ebx+20];TListBoxStrings.sub_0059D784
 0059DA5A    mov         eax,dword ptr [ebp-4]
 0059DA5D    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DA60    mov         edx,dword ptr [ebp-0C]
 0059DA63    mov         si,0FFB3
 0059DA67    call        @CallDynaInst;TCustomListBox.sub_0059DF70
 0059DA6C    mov         ecx,eax
 0059DA6E    mov         eax,dword ptr [ebp-4]
 0059DA71    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DA74    mov         edx,dword ptr [ebp-8]
 0059DA77    mov         si,0FFB2
 0059DA7B    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059DA80    mov         ecx,dword ptr [ebp-14]
 0059DA83    mov         edx,dword ptr [ebp-0C]
 0059DA86    mov         eax,dword ptr [ebp-4]
 0059DA89    mov         ebx,dword ptr [eax]
 0059DA8B    call        dword ptr [ebx+20];TListBoxStrings.sub_0059D784
 0059DA8E    mov         eax,dword ptr [ebp-4]
 0059DA91    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DA94    mov         ecx,dword ptr [ebp-10]
 0059DA97    mov         edx,dword ptr [ebp-0C]
 0059DA9A    mov         si,0FFB2
 0059DA9E    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059DAA3    mov         eax,dword ptr [ebp-4]
 0059DAA6    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DAA9    mov         edx,dword ptr [eax]
 0059DAAB    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059DAB1    cmp         eax,dword ptr [ebp-8]
>0059DAB4    jne         0059DAC9
 0059DAB6    mov         eax,dword ptr [ebp-4]
 0059DAB9    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DABC    mov         edx,dword ptr [ebp-0C]
 0059DABF    mov         ecx,dword ptr [eax]
 0059DAC1    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
>0059DAC7    jmp         0059DAED
 0059DAC9    mov         eax,dword ptr [ebp-4]
 0059DACC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DACF    mov         edx,dword ptr [eax]
 0059DAD1    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059DAD7    cmp         eax,dword ptr [ebp-0C]
>0059DADA    jne         0059DAED
 0059DADC    mov         eax,dword ptr [ebp-4]
 0059DADF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DAE2    mov         edx,dword ptr [ebp-8]
 0059DAE5    mov         ecx,dword ptr [eax]
 0059DAE7    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
 0059DAED    xor         eax,eax
 0059DAEF    pop         edx
 0059DAF0    pop         ecx
 0059DAF1    pop         ecx
 0059DAF2    mov         dword ptr fs:[eax],edx
 0059DAF5    push        59DB0A
 0059DAFA    mov         eax,dword ptr [ebp-4]
 0059DAFD    call        TStrings.EndUpdate
 0059DB02    ret
>0059DB03    jmp         @HandleFinally
>0059DB08    jmp         0059DAFA
 0059DB0A    xor         eax,eax
 0059DB0C    pop         edx
 0059DB0D    pop         ecx
 0059DB0E    pop         ecx
 0059DB0F    mov         dword ptr fs:[eax],edx
 0059DB12    push        59DB2C
 0059DB17    lea         eax,[ebp-18]
 0059DB1A    mov         edx,2
 0059DB1F    call        @LStrArrayClr
 0059DB24    ret
>0059DB25    jmp         @HandleFinally
>0059DB2A    jmp         0059DB17
 0059DB2C    pop         esi
 0059DB2D    pop         ebx
 0059DB2E    mov         esp,ebp
 0059DB30    pop         ebp
 0059DB31    ret
end;*}

//0059DB34
procedure TListBoxStrings.Clear;
begin
{*
 0059DB34    push        ebp
 0059DB35    mov         ebp,esp
 0059DB37    push        ecx
 0059DB38    push        esi
 0059DB39    mov         dword ptr [ebp-4],eax
 0059DB3C    mov         eax,dword ptr [ebp-4]
 0059DB3F    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DB42    mov         si,0FFAF
 0059DB46    call        @CallDynaInst;TCustomListBox.sub_0059DFEC
 0059DB4B    pop         esi
 0059DB4C    pop         ecx
 0059DB4D    pop         ebp
 0059DB4E    ret
*}
end;

//0059DB50
{*procedure sub_0059DB50(?:?);
begin
 0059DB50    push        ebp
 0059DB51    mov         ebp,esp
 0059DB53    add         esp,0FFFFFFF8
 0059DB56    mov         byte ptr [ebp-5],dl
 0059DB59    mov         dword ptr [ebp-4],eax
 0059DB5C    push        0
 0059DB5E    mov         al,byte ptr [ebp-5]
 0059DB61    xor         al,1
 0059DB63    and         eax,7F
 0059DB66    push        eax
 0059DB67    push        0B
 0059DB69    mov         eax,dword ptr [ebp-4]
 0059DB6C    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DB6F    call        TWinControl.GetHandle
 0059DB74    push        eax
 0059DB75    call        USER32.SendMessageA
 0059DB7A    cmp         byte ptr [ebp-5],0
>0059DB7E    jne         0059DB8B
 0059DB80    mov         eax,dword ptr [ebp-4]
 0059DB83    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DB86    call        TControl.Refresh
 0059DB8B    pop         ecx
 0059DB8C    pop         ecx
 0059DB8D    pop         ebp
 0059DB8E    ret
end;*}

//0059DB90
{*function sub_0059DB90(?:?):?;
begin
 0059DB90    push        ebp
 0059DB91    mov         ebp,esp
 0059DB93    add         esp,0FFFFFFF4
 0059DB96    mov         dword ptr [ebp-8],edx
 0059DB99    mov         dword ptr [ebp-4],eax
 0059DB9C    mov         eax,dword ptr [ebp-4]
 0059DB9F    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DBA2    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059DBA8    add         al,0FD
 0059DBAA    sub         al,2
>0059DBAC    jae         0059DBC1
 0059DBAE    mov         edx,dword ptr [ebp-8]
 0059DBB1    mov         eax,dword ptr [ebp-4]
 0059DBB4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DBB7    call        0059F9EC
 0059DBBC    mov         dword ptr [ebp-0C],eax
>0059DBBF    jmp         0059DBE5
 0059DBC1    mov         eax,dword ptr [ebp-8]
 0059DBC4    call        @LStrToPChar
 0059DBC9    push        eax
 0059DBCA    push        0FF
 0059DBCC    push        1A2
 0059DBD1    mov         eax,dword ptr [ebp-4]
 0059DBD4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DBD7    call        TWinControl.GetHandle
 0059DBDC    push        eax
 0059DBDD    call        USER32.SendMessageA
 0059DBE2    mov         dword ptr [ebp-0C],eax
 0059DBE5    mov         eax,dword ptr [ebp-0C]
 0059DBE8    mov         esp,ebp
 0059DBEA    pop         ebp
 0059DBEB    ret
end;*}

//0059DBEC
{*procedure sub_0059DBEC(?:?; ?:?);
begin
 0059DBEC    push        ebp
 0059DBED    mov         ebp,esp
 0059DBEF    add         esp,0FFFFFFEC
 0059DBF2    push        ebx
 0059DBF3    push        esi
 0059DBF4    xor         ebx,ebx
 0059DBF6    mov         dword ptr [ebp-14],ebx
 0059DBF9    mov         dword ptr [ebp-0C],ecx
 0059DBFC    mov         dword ptr [ebp-8],edx
 0059DBFF    mov         dword ptr [ebp-4],eax
 0059DC02    xor         eax,eax
 0059DC04    push        ebp
 0059DC05    push        59DCF6
 0059DC0A    push        dword ptr fs:[eax]
 0059DC0D    mov         dword ptr fs:[eax],esp
 0059DC10    mov         eax,dword ptr [ebp-4]
 0059DC13    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DC16    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059DC1C    add         al,0FD
 0059DC1E    sub         al,2
>0059DC20    jb          0059DCE0
 0059DC26    mov         eax,dword ptr [ebp-4]
 0059DC29    call        TStrings.BeginUpdate
 0059DC2E    mov         eax,dword ptr [ebp-4]
 0059DC31    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DC34    mov         byte ptr [eax+278],1;TCustomListBox.FMoving:Boolean
 0059DC3B    xor         eax,eax
 0059DC3D    push        ebp
 0059DC3E    push        59DCD9
 0059DC43    push        dword ptr fs:[eax]
 0059DC46    mov         dword ptr fs:[eax],esp
 0059DC49    mov         eax,dword ptr [ebp-8]
 0059DC4C    cmp         eax,dword ptr [ebp-0C]
>0059DC4F    je          0059DCB6
 0059DC51    lea         ecx,[ebp-14]
 0059DC54    mov         edx,dword ptr [ebp-8]
 0059DC57    mov         eax,dword ptr [ebp-4]
 0059DC5A    mov         ebx,dword ptr [eax]
 0059DC5C    call        dword ptr [ebx+0C];TListBoxStrings.sub_0059D5F0
 0059DC5F    mov         eax,dword ptr [ebp-4]
 0059DC62    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DC65    mov         edx,dword ptr [ebp-8]
 0059DC68    mov         si,0FFB3
 0059DC6C    call        @CallDynaInst;TCustomListBox.sub_0059DF70
 0059DC71    mov         dword ptr [ebp-10],eax
 0059DC74    mov         eax,dword ptr [ebp-4]
 0059DC77    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DC7A    xor         ecx,ecx
 0059DC7C    mov         edx,dword ptr [ebp-8]
 0059DC7F    mov         si,0FFB2
 0059DC83    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059DC88    mov         edx,dword ptr [ebp-8]
 0059DC8B    mov         eax,dword ptr [ebp-4]
 0059DC8E    mov         ecx,dword ptr [eax]
 0059DC90    call        dword ptr [ecx+48];TListBoxStrings.sub_0059D9A4
 0059DC93    mov         ecx,dword ptr [ebp-14]
 0059DC96    mov         edx,dword ptr [ebp-0C]
 0059DC99    mov         eax,dword ptr [ebp-4]
 0059DC9C    mov         ebx,dword ptr [eax]
 0059DC9E    call        dword ptr [ebx+60];TListBoxStrings.sub_0059D904
 0059DCA1    mov         eax,dword ptr [ebp-4]
 0059DCA4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DCA7    mov         ecx,dword ptr [ebp-10]
 0059DCAA    mov         edx,dword ptr [ebp-0C]
 0059DCAD    mov         si,0FFB2
 0059DCB1    call        @CallDynaInst;TCustomListBox.sub_0059DF98
 0059DCB6    xor         eax,eax
 0059DCB8    pop         edx
 0059DCB9    pop         ecx
 0059DCBA    pop         ecx
 0059DCBB    mov         dword ptr fs:[eax],edx
 0059DCBE    push        59DCE0
 0059DCC3    mov         eax,dword ptr [ebp-4]
 0059DCC6    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0059DCC9    mov         byte ptr [eax+278],0;TCustomListBox.FMoving:Boolean
 0059DCD0    mov         eax,dword ptr [ebp-4]
 0059DCD3    call        TStrings.EndUpdate
 0059DCD8    ret
>0059DCD9    jmp         @HandleFinally
>0059DCDE    jmp         0059DCC3
 0059DCE0    xor         eax,eax
 0059DCE2    pop         edx
 0059DCE3    pop         ecx
 0059DCE4    pop         ecx
 0059DCE5    mov         dword ptr fs:[eax],edx
 0059DCE8    push        59DCFD
 0059DCED    lea         eax,[ebp-14]
 0059DCF0    call        @LStrClr
 0059DCF5    ret
>0059DCF6    jmp         @HandleFinally
>0059DCFB    jmp         0059DCED
 0059DCFD    pop         esi
 0059DCFE    pop         ebx
 0059DCFF    mov         esp,ebp
 0059DD01    pop         ebp
 0059DD02    ret
end;*}

//0059DD04
constructor TCustomListBox.Create(AOwner:TComponent);
begin
{*
 0059DD04    push        ebp
 0059DD05    mov         ebp,esp
 0059DD07    add         esp,0FFFFFFF4
 0059DD0A    test        dl,dl
>0059DD0C    je          0059DD16
 0059DD0E    add         esp,0FFFFFFF0
 0059DD11    call        @ClassCreate
 0059DD16    mov         dword ptr [ebp-0C],ecx
 0059DD19    mov         byte ptr [ebp-5],dl
 0059DD1C    mov         dword ptr [ebp-4],eax
 0059DD1F    mov         ecx,dword ptr [ebp-0C]
 0059DD22    xor         edx,edx
 0059DD24    mov         eax,dword ptr [ebp-4]
 0059DD27    call        TWinControl.Create
 0059DD2C    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059DD31    cmp         byte ptr [eax],0
>0059DD34    je          0059DD44
 0059DD36    mov         eax,dword ptr [ebp-4]
 0059DD39    mov         edx,dword ptr ds:[59DE20];0xA0 gvar_0059DE20
 0059DD3F    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
>0059DD42    jmp         0059DD50
 0059DD44    mov         eax,dword ptr [ebp-4]
 0059DD47    mov         edx,dword ptr ds:[59DE24];0xB0 gvar_0059DE24
 0059DD4D    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
 0059DD50    mov         edx,79
 0059DD55    mov         eax,dword ptr [ebp-4]
 0059DD58    call        TControl.SetWidth
 0059DD5D    mov         edx,61
 0059DD62    mov         eax,dword ptr [ebp-4]
 0059DD65    call        TControl.SetHeight
 0059DD6A    mov         dl,1
 0059DD6C    mov         eax,dword ptr [ebp-4]
 0059DD6F    call        TCCalendar.SetTabStop
 0059DD74    xor         edx,edx
 0059DD76    mov         eax,dword ptr [ebp-4]
 0059DD79    call        TCCalendar.SetParentColor
 0059DD7E    mov         eax,dword ptr [ebp-4]
 0059DD81    mov         byte ptr [eax+210],1;TCustomListBox.FAutoComplete:Boolean
 0059DD88    mov         dl,1
 0059DD8A    mov         eax,[00597CD0];TListBoxStrings
 0059DD8F    call        TObject.Create;TListBoxStrings.Create
 0059DD94    mov         edx,dword ptr [ebp-4]
 0059DD97    mov         dword ptr [edx+218],eax;TCustomListBox.FItems:TStrings
 0059DD9D    mov         eax,dword ptr [ebp-4]
 0059DDA0    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059DDA6    mov         edx,dword ptr [ebp-4]
 0059DDA9    mov         dword ptr [eax+10],edx
 0059DDAC    mov         dl,1
 0059DDAE    mov         eax,[005ED808];TControlCanvas
 0059DDB3    call        TCanvas.Create;TControlCanvas.Create
 0059DDB8    mov         edx,dword ptr [ebp-4]
 0059DDBB    mov         dword ptr [edx+228],eax;TCustomListBox.FCanvas:TCanvas
 0059DDC1    mov         eax,dword ptr [ebp-4]
 0059DDC4    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059DDCA    mov         edx,dword ptr [ebp-4]
 0059DDCD    call        005F1A7C
 0059DDD2    mov         eax,dword ptr [ebp-4]
 0059DDD5    mov         dword ptr [eax+230],10;TCustomListBox.FItemHeight:Integer
 0059DDDF    mov         eax,dword ptr [ebp-4]
 0059DDE2    mov         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
 0059DDE9    mov         eax,dword ptr [ebp-4]
 0059DDEC    mov         byte ptr [eax+23B],1;TCustomListBox.FExtendedSelect:Boolean
 0059DDF3    mov         eax,dword ptr [ebp-4]
 0059DDF6    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 0059DE00    mov         eax,dword ptr [ebp-4]
 0059DE03    cmp         byte ptr [ebp-5],0
>0059DE07    je          0059DE18
 0059DE09    call        @AfterConstruction
 0059DE0E    pop         dword ptr fs:[0]
 0059DE15    add         esp,0C
 0059DE18    mov         eax,dword ptr [ebp-4]
 0059DE1B    mov         esp,ebp
 0059DE1D    pop         ebp
 0059DE1E    ret
*}
end;

//0059DE28
destructor TCustomListBox.Destroy;
begin
{*
 0059DE28    push        ebp
 0059DE29    mov         ebp,esp
 0059DE2B    add         esp,0FFFFFFF8
 0059DE2E    call        @BeforeDestruction
 0059DE33    mov         byte ptr [ebp-5],dl
 0059DE36    mov         dword ptr [ebp-4],eax
 0059DE39    mov         dl,byte ptr [ebp-5]
 0059DE3C    and         dl,0FC
 0059DE3F    mov         eax,dword ptr [ebp-4]
 0059DE42    call        TWinControl.Destroy
 0059DE47    mov         eax,dword ptr [ebp-4]
 0059DE4A    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059DE50    call        TObject.Free
 0059DE55    mov         eax,dword ptr [ebp-4]
 0059DE58    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059DE5E    call        TObject.Free
 0059DE63    mov         eax,dword ptr [ebp-4]
 0059DE66    mov         eax,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 0059DE6C    call        TObject.Free
 0059DE71    cmp         byte ptr [ebp-5],0
>0059DE75    jle         0059DE7F
 0059DE77    mov         eax,dword ptr [ebp-4]
 0059DE7A    call        @ClassDestroy
 0059DE7F    pop         ecx
 0059DE80    pop         ecx
 0059DE81    pop         ebp
 0059DE82    ret
*}
end;

//0059DE84
{*procedure sub_0059DE84(?:?; ?:?);
begin
 0059DE84    push        ebp
 0059DE85    mov         ebp,esp
 0059DE87    add         esp,0FFFFFFF0
 0059DE8A    push        ebx
 0059DE8B    xor         ebx,ebx
 0059DE8D    mov         dword ptr [ebp-10],ebx
 0059DE90    mov         dword ptr [ebp-0C],ecx
 0059DE93    mov         dword ptr [ebp-8],edx
 0059DE96    mov         dword ptr [ebp-4],eax
 0059DE99    mov         eax,dword ptr [ebp-8]
 0059DE9C    call        @LStrAddRef
 0059DEA1    xor         eax,eax
 0059DEA3    push        ebp
 0059DEA4    push        59DF02
 0059DEA9    push        dword ptr fs:[eax]
 0059DEAC    mov         dword ptr fs:[eax],esp
 0059DEAF    mov         eax,dword ptr [ebp-8]
 0059DEB2    call        @LStrToPChar
 0059DEB7    call        StrLen
 0059DEBC    push        eax
 0059DEBD    mov         eax,dword ptr [ebp-8]
 0059DEC0    call        @LStrToPChar
 0059DEC5    mov         edx,eax
 0059DEC7    lea         eax,[ebp-10]
 0059DECA    pop         ecx
 0059DECB    call        @LStrFromPCharLen
 0059DED0    mov         ecx,dword ptr [ebp-0C]
 0059DED3    mov         edx,dword ptr [ebp-10]
 0059DED6    mov         eax,dword ptr [ebp-4]
 0059DED9    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059DEDF    mov         ebx,dword ptr [eax]
 0059DEE1    call        dword ptr [ebx+3C];TStrings.sub_00646CC4
 0059DEE4    xor         eax,eax
 0059DEE6    pop         edx
 0059DEE7    pop         ecx
 0059DEE8    pop         ecx
 0059DEE9    mov         dword ptr fs:[eax],edx
 0059DEEC    push        59DF09
 0059DEF1    lea         eax,[ebp-10]
 0059DEF4    call        @LStrClr
 0059DEF9    lea         eax,[ebp-8]
 0059DEFC    call        @LStrClr
 0059DF01    ret
>0059DF02    jmp         @HandleFinally
>0059DF07    jmp         0059DEF1
 0059DF09    pop         ebx
 0059DF0A    mov         esp,ebp
 0059DF0C    pop         ebp
 0059DF0D    ret
end;*}

//0059DF10
{*procedure TCustomListBox.sub_0059DF10(?:?);
begin
 0059DF10    push        ebp
 0059DF11    mov         ebp,esp
 0059DF13    add         esp,0FFFFFFF4
 0059DF16    mov         dword ptr [ebp-8],edx
 0059DF19    mov         dword ptr [ebp-4],eax
 0059DF1C    push        0
 0059DF1E    mov         eax,dword ptr [ebp-8]
 0059DF21    push        eax
 0059DF22    push        199
 0059DF27    mov         eax,dword ptr [ebp-4]
 0059DF2A    call        TWinControl.GetHandle
 0059DF2F    push        eax
 0059DF30    call        USER32.SendMessageA
 0059DF35    mov         dword ptr [ebp-0C],eax
 0059DF38    mov         eax,dword ptr [ebp-0C]
 0059DF3B    mov         esp,ebp
 0059DF3D    pop         ebp
 0059DF3E    ret
end;*}

//0059DF40
{*procedure TCustomListBox.sub_0059DF40(?:?; ?:TCheckListBoxDataWrapper);
begin
 0059DF40    push        ebp
 0059DF41    mov         ebp,esp
 0059DF43    add         esp,0FFFFFFF4
 0059DF46    mov         dword ptr [ebp-0C],ecx
 0059DF49    mov         dword ptr [ebp-8],edx
 0059DF4C    mov         dword ptr [ebp-4],eax
 0059DF4F    mov         eax,dword ptr [ebp-0C]
 0059DF52    push        eax
 0059DF53    mov         eax,dword ptr [ebp-8]
 0059DF56    push        eax
 0059DF57    push        19A
 0059DF5C    mov         eax,dword ptr [ebp-4]
 0059DF5F    call        TWinControl.GetHandle
 0059DF64    push        eax
 0059DF65    call        USER32.SendMessageA
 0059DF6A    mov         esp,ebp
 0059DF6C    pop         ebp
 0059DF6D    ret
end;*}

//0059DF70
{*procedure TCustomListBox.sub_0059DF70(?:?);
begin
 0059DF70    push        ebp
 0059DF71    mov         ebp,esp
 0059DF73    add         esp,0FFFFFFF4
 0059DF76    push        esi
 0059DF77    mov         dword ptr [ebp-8],edx
 0059DF7A    mov         dword ptr [ebp-4],eax
 0059DF7D    mov         edx,dword ptr [ebp-8]
 0059DF80    mov         eax,dword ptr [ebp-4]
 0059DF83    mov         si,0FFB1
 0059DF87    call        @CallDynaInst;TCustomListBox.sub_0059DF10
 0059DF8C    mov         dword ptr [ebp-0C],eax
 0059DF8F    mov         eax,dword ptr [ebp-0C]
 0059DF92    pop         esi
 0059DF93    mov         esp,ebp
 0059DF95    pop         ebp
 0059DF96    ret
end;*}

//0059DF98
{*procedure TCustomListBox.sub_0059DF98(?:?; ?:?);
begin
 0059DF98    push        ebp
 0059DF99    mov         ebp,esp
 0059DF9B    add         esp,0FFFFFFF4
 0059DF9E    push        esi
 0059DF9F    mov         dword ptr [ebp-0C],ecx
 0059DFA2    mov         dword ptr [ebp-8],edx
 0059DFA5    mov         dword ptr [ebp-4],eax
 0059DFA8    mov         ecx,dword ptr [ebp-0C]
 0059DFAB    mov         edx,dword ptr [ebp-8]
 0059DFAE    mov         eax,dword ptr [ebp-4]
 0059DFB1    mov         si,0FFB0
 0059DFB5    call        @CallDynaInst;TCustomListBox.sub_0059DF40
 0059DFBA    pop         esi
 0059DFBB    mov         esp,ebp
 0059DFBD    pop         ebp
 0059DFBE    ret
end;*}

//0059DFC0
{*procedure TCustomListBox.sub_0059DFC0(?:?);
begin
 0059DFC0    push        ebp
 0059DFC1    mov         ebp,esp
 0059DFC3    add         esp,0FFFFFFF8
 0059DFC6    mov         dword ptr [ebp-8],edx
 0059DFC9    mov         dword ptr [ebp-4],eax
 0059DFCC    push        0
 0059DFCE    mov         eax,dword ptr [ebp-8]
 0059DFD1    push        eax
 0059DFD2    push        182
 0059DFD7    mov         eax,dword ptr [ebp-4]
 0059DFDA    call        TWinControl.GetHandle
 0059DFDF    push        eax
 0059DFE0    call        USER32.SendMessageA
 0059DFE5    pop         ecx
 0059DFE6    pop         ecx
 0059DFE7    pop         ebp
 0059DFE8    ret
end;*}

//0059DFEC
procedure TCustomListBox.sub_0059DFEC;
begin
{*
 0059DFEC    push        ebp
 0059DFED    mov         ebp,esp
 0059DFEF    push        ecx
 0059DFF0    mov         dword ptr [ebp-4],eax
 0059DFF3    mov         eax,dword ptr [ebp-4]
 0059DFF6    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059DFFC    add         al,0FD
 0059DFFE    sub         al,2
>0059E000    jb          0059E019
 0059E002    push        0
 0059E004    push        0
 0059E006    push        184
 0059E00B    mov         eax,dword ptr [ebp-4]
 0059E00E    call        TWinControl.GetHandle
 0059E013    push        eax
 0059E014    call        USER32.SendMessageA
 0059E019    pop         ecx
 0059E01A    pop         ebp
 0059E01B    ret
*}
end;

//0059E01C
procedure TCustomListBox.Clear;
begin
{*
 0059E01C    push        ebp
 0059E01D    mov         ebp,esp
 0059E01F    push        ecx
 0059E020    mov         dword ptr [ebp-4],eax
 0059E023    mov         eax,dword ptr [ebp-4]
 0059E026    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E02C    mov         edx,dword ptr [eax]
 0059E02E    call        dword ptr [edx+44];TStrings.Clear
 0059E031    pop         ecx
 0059E032    pop         ebp
 0059E033    ret
*}
end;

//0059E034
procedure sub_0059E034;
begin
{*
 0059E034    push        ebp
 0059E035    mov         ebp,esp
 0059E037    add         esp,0FFFFFFF4
 0059E03A    mov         dword ptr [ebp-4],eax
 0059E03D    mov         eax,dword ptr [ebp-4]
 0059E040    cmp         byte ptr [eax+208],0;TCustomListBox..............FMultiSelect:Boolean
>0059E047    je          0059E07E
 0059E049    mov         eax,dword ptr [ebp-4]
 0059E04C    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E052    mov         edx,dword ptr [eax]
 0059E054    call        dword ptr [edx+14];@AbstractError
 0059E057    dec         eax
 0059E058    test        eax,eax
>0059E05A    jl          0059E08C
 0059E05C    inc         eax
 0059E05D    mov         dword ptr [ebp-0C],eax
 0059E060    mov         dword ptr [ebp-8],0
 0059E067    xor         ecx,ecx
 0059E069    mov         edx,dword ptr [ebp-8]
 0059E06C    mov         eax,dword ptr [ebp-4]
 0059E06F    call        0059E630
 0059E074    inc         dword ptr [ebp-8]
 0059E077    dec         dword ptr [ebp-0C]
>0059E07A    jne         0059E067
>0059E07C    jmp         0059E08C
 0059E07E    or          edx,0FFFFFFFF
 0059E081    mov         eax,dword ptr [ebp-4]
 0059E084    mov         ecx,dword ptr [eax]
 0059E086    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
 0059E08C    mov         esp,ebp
 0059E08E    pop         ebp
 0059E08F    ret
*}
end;

//0059E090
{*procedure sub_0059E090(?:?);
begin
 0059E090    push        ebp
 0059E091    mov         ebp,esp
 0059E093    add         esp,0FFFFFFE0
 0059E096    push        ebx
 0059E097    xor         ecx,ecx
 0059E099    mov         dword ptr [ebp-1C],ecx
 0059E09C    mov         dword ptr [ebp-20],ecx
 0059E09F    mov         dword ptr [ebp-14],ecx
 0059E0A2    mov         dword ptr [ebp-18],ecx
 0059E0A5    mov         dword ptr [ebp-8],edx
 0059E0A8    mov         dword ptr [ebp-4],eax
 0059E0AB    xor         eax,eax
 0059E0AD    push        ebp
 0059E0AE    push        59E1D3
 0059E0B3    push        dword ptr fs:[eax]
 0059E0B6    mov         dword ptr fs:[eax],esp
 0059E0B9    mov         eax,dword ptr [ebp-4]
 0059E0BC    cmp         byte ptr [eax+208],0;TCustomListBox...............FMultiSelect:Boolean
>0059E0C3    je          0059E14D
 0059E0C9    mov         eax,dword ptr [ebp-4]
 0059E0CC    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E0D2    mov         edx,dword ptr [eax]
 0059E0D4    call        dword ptr [edx+14];@AbstractError
 0059E0D7    dec         eax
 0059E0D8    test        eax,eax
>0059E0DA    jl          0059E1B8
 0059E0E0    inc         eax
 0059E0E1    mov         dword ptr [ebp-10],eax
 0059E0E4    mov         dword ptr [ebp-0C],0
 0059E0EB    mov         edx,dword ptr [ebp-0C]
 0059E0EE    mov         eax,dword ptr [ebp-4]
 0059E0F1    call        0059E5C8
 0059E0F6    test        al,al
>0059E0F8    je          0059E143
 0059E0FA    lea         ecx,[ebp-18]
 0059E0FD    mov         edx,dword ptr [ebp-0C]
 0059E100    mov         eax,dword ptr [ebp-4]
 0059E103    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E109    mov         ebx,dword ptr [eax]
 0059E10B    call        dword ptr [ebx+0C];@AbstractError
 0059E10E    mov         eax,dword ptr [ebp-18]
 0059E111    call        @LStrToPChar
 0059E116    mov         edx,eax
 0059E118    lea         eax,[ebp-14]
 0059E11B    call        @LStrFromPChar
 0059E120    mov         eax,dword ptr [ebp-14]
 0059E123    push        eax
 0059E124    mov         edx,dword ptr [ebp-0C]
 0059E127    mov         eax,dword ptr [ebp-4]
 0059E12A    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E130    mov         ecx,dword ptr [eax]
 0059E132    call        dword ptr [ecx+18];TStrings.sub_00647284
 0059E135    mov         ecx,eax
 0059E137    mov         eax,dword ptr [ebp-8]
 0059E13A    pop         edx
 0059E13B    mov         ebx,dword ptr [eax]
 0059E13D    call        dword ptr [ebx+0D0]
 0059E143    inc         dword ptr [ebp-0C]
 0059E146    dec         dword ptr [ebp-10]
>0059E149    jne         0059E0EB
>0059E14B    jmp         0059E1B8
 0059E14D    mov         eax,dword ptr [ebp-4]
 0059E150    mov         edx,dword ptr [eax]
 0059E152    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E158    inc         eax
>0059E159    je          0059E1B8
 0059E15B    mov         eax,dword ptr [ebp-4]
 0059E15E    mov         edx,dword ptr [eax]
 0059E160    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E166    mov         edx,eax
 0059E168    lea         ecx,[ebp-20]
 0059E16B    mov         eax,dword ptr [ebp-4]
 0059E16E    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E174    mov         ebx,dword ptr [eax]
 0059E176    call        dword ptr [ebx+0C];@AbstractError
 0059E179    mov         eax,dword ptr [ebp-20]
 0059E17C    call        @LStrToPChar
 0059E181    mov         edx,eax
 0059E183    lea         eax,[ebp-1C]
 0059E186    call        @LStrFromPChar
 0059E18B    mov         eax,dword ptr [ebp-1C]
 0059E18E    push        eax
 0059E18F    mov         eax,dword ptr [ebp-4]
 0059E192    mov         edx,dword ptr [eax]
 0059E194    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E19A    mov         edx,eax
 0059E19C    mov         eax,dword ptr [ebp-4]
 0059E19F    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E1A5    mov         ecx,dword ptr [eax]
 0059E1A7    call        dword ptr [ecx+18];TStrings.sub_00647284
 0059E1AA    mov         ecx,eax
 0059E1AC    mov         eax,dword ptr [ebp-8]
 0059E1AF    pop         edx
 0059E1B0    mov         ebx,dword ptr [eax]
 0059E1B2    call        dword ptr [ebx+0D0]
 0059E1B8    xor         eax,eax
 0059E1BA    pop         edx
 0059E1BB    pop         ecx
 0059E1BC    pop         ecx
 0059E1BD    mov         dword ptr fs:[eax],edx
 0059E1C0    push        59E1DA
 0059E1C5    lea         eax,[ebp-20]
 0059E1C8    mov         edx,4
 0059E1CD    call        @LStrArrayClr
 0059E1D2    ret
>0059E1D3    jmp         @HandleFinally
>0059E1D8    jmp         0059E1C5
 0059E1DA    pop         ebx
 0059E1DB    mov         esp,ebp
 0059E1DD    pop         ebp
 0059E1DE    ret
end;*}

//0059E1E0
procedure sub_0059E1E0;
begin
{*
 0059E1E0    push        ebp
 0059E1E1    mov         ebp,esp
 0059E1E3    add         esp,0FFFFFFF8
 0059E1E6    mov         dword ptr [ebp-4],eax
 0059E1E9    mov         eax,dword ptr [ebp-4]
 0059E1EC    cmp         byte ptr [eax+208],0;TCustomListBox................FMultiSelect:Boolean
>0059E1F3    je          0059E237
 0059E1F5    mov         eax,dword ptr [ebp-4]
 0059E1F8    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E1FE    mov         edx,dword ptr [eax]
 0059E200    call        dword ptr [edx+14];@AbstractError
 0059E203    dec         eax
 0059E204    cmp         eax,0
>0059E207    jl          0059E260
 0059E209    mov         dword ptr [ebp-8],eax
 0059E20C    mov         edx,dword ptr [ebp-8]
 0059E20F    mov         eax,dword ptr [ebp-4]
 0059E212    call        0059E5C8
 0059E217    test        al,al
>0059E219    je          0059E22C
 0059E21B    mov         edx,dword ptr [ebp-8]
 0059E21E    mov         eax,dword ptr [ebp-4]
 0059E221    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E227    mov         ecx,dword ptr [eax]
 0059E229    call        dword ptr [ecx+48];@AbstractError
 0059E22C    dec         dword ptr [ebp-8]
 0059E22F    cmp         dword ptr [ebp-8],0FFFFFFFF
>0059E233    jne         0059E20C
>0059E235    jmp         0059E260
 0059E237    mov         eax,dword ptr [ebp-4]
 0059E23A    mov         edx,dword ptr [eax]
 0059E23C    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E242    inc         eax
>0059E243    je          0059E260
 0059E245    mov         eax,dword ptr [ebp-4]
 0059E248    mov         edx,dword ptr [eax]
 0059E24A    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E250    mov         edx,eax
 0059E252    mov         eax,dword ptr [ebp-4]
 0059E255    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E25B    mov         ecx,dword ptr [eax]
 0059E25D    call        dword ptr [ecx+48];@AbstractError
 0059E260    pop         ecx
 0059E261    pop         ecx
 0059E262    pop         ebp
 0059E263    ret
*}
end;

//0059E264
procedure sub_0059E264(?:TCustomListBox);
begin
{*
 0059E264    push        ebp
 0059E265    mov         ebp,esp
 0059E267    add         esp,0FFFFFFF4
 0059E26A    mov         dword ptr [ebp-4],eax
 0059E26D    mov         eax,dword ptr [ebp-4]
 0059E270    cmp         dword ptr [eax+22C],0
>0059E277    jle         0059E2C9
 0059E279    mov         eax,dword ptr [ebp-4]
 0059E27C    cmp         dword ptr [eax+48],0
>0059E280    jle         0059E2C9
 0059E282    mov         eax,dword ptr [ebp-4]
 0059E285    call        TControl.GetClientWidth
 0059E28A    mov         dword ptr [ebp-0C],eax
 0059E28D    fild        dword ptr [ebp-0C]
 0059E290    mov         eax,dword ptr [ebp-4]
 0059E293    fild        dword ptr [eax+22C]
 0059E299    fdivp       st(1),st
 0059E29B    call        @TRUNC
 0059E2A0    mov         dword ptr [ebp-8],eax
 0059E2A3    cmp         dword ptr [ebp-8],1
>0059E2A7    jge         0059E2B0
 0059E2A9    mov         dword ptr [ebp-8],1
 0059E2B0    push        0
 0059E2B2    mov         eax,dword ptr [ebp-8]
 0059E2B5    push        eax
 0059E2B6    push        195
 0059E2BB    mov         eax,dword ptr [ebp-4]
 0059E2BE    call        TWinControl.GetHandle
 0059E2C3    push        eax
 0059E2C4    call        USER32.SendMessageA
 0059E2C9    mov         esp,ebp
 0059E2CB    pop         ebp
 0059E2CC    ret
*}
end;

//0059E2D0
procedure TCheckListBox.SetColumns(Value:Integer);
begin
{*
 0059E2D0    push        ebp
 0059E2D1    mov         ebp,esp
 0059E2D3    add         esp,0FFFFFFF8
 0059E2D6    mov         dword ptr [ebp-8],edx
 0059E2D9    mov         dword ptr [ebp-4],eax
 0059E2DC    mov         eax,dword ptr [ebp-4]
 0059E2DF    mov         eax,dword ptr [eax+22C];TCheckListBox.FColumns:Integer
 0059E2E5    cmp         eax,dword ptr [ebp-8]
>0059E2E8    je          0059E332
 0059E2EA    mov         eax,dword ptr [ebp-4]
 0059E2ED    cmp         dword ptr [eax+22C],0;TCheckListBox.FColumns:Integer
>0059E2F4    je          0059E2FC
 0059E2F6    cmp         dword ptr [ebp-8],0
>0059E2FA    jne         0059E312
 0059E2FC    mov         eax,dword ptr [ebp-8]
 0059E2FF    mov         edx,dword ptr [ebp-4]
 0059E302    mov         dword ptr [edx+22C],eax;TCheckListBox.FColumns:Integer
 0059E308    mov         eax,dword ptr [ebp-4]
 0059E30B    call        TWinControl.RecreateWnd
>0059E310    jmp         0059E332
 0059E312    mov         eax,dword ptr [ebp-8]
 0059E315    mov         edx,dword ptr [ebp-4]
 0059E318    mov         dword ptr [edx+22C],eax;TCheckListBox.FColumns:Integer
 0059E31E    mov         eax,dword ptr [ebp-4]
 0059E321    call        TWinControl.HandleAllocated
 0059E326    test        al,al
>0059E328    je          0059E332
 0059E32A    mov         eax,dword ptr [ebp-4]
 0059E32D    call        0059E264
 0059E332    pop         ecx
 0059E333    pop         ecx
 0059E334    pop         ebp
 0059E335    ret
*}
end;

//0059E338
{*function sub_0059E338:?;
begin
 0059E338    push        ebp
 0059E339    mov         ebp,esp
 0059E33B    add         esp,0FFFFFFF8
 0059E33E    mov         dword ptr [ebp-4],eax
 0059E341    mov         eax,dword ptr [ebp-4]
 0059E344    cmp         byte ptr [eax+208],0;TCustomListBox.................FMultiSelect:Boolean
>0059E34B    je          0059E369
 0059E34D    push        0
 0059E34F    push        0
 0059E351    push        19F
 0059E356    mov         eax,dword ptr [ebp-4]
 0059E359    call        TWinControl.GetHandle
 0059E35E    push        eax
 0059E35F    call        USER32.SendMessageA
 0059E364    mov         dword ptr [ebp-8],eax
>0059E367    jmp         0059E383
 0059E369    push        0
 0059E36B    push        0
 0059E36D    push        188
 0059E372    mov         eax,dword ptr [ebp-4]
 0059E375    call        TWinControl.GetHandle
 0059E37A    push        eax
 0059E37B    call        USER32.SendMessageA
 0059E380    mov         dword ptr [ebp-8],eax
 0059E383    mov         eax,dword ptr [ebp-8]
 0059E386    pop         ecx
 0059E387    pop         ecx
 0059E388    pop         ebp
 0059E389    ret
end;*}

//0059E38C
{*function sub_0059E38C:?;
begin
 0059E38C    push        ebp
 0059E38D    mov         ebp,esp
 0059E38F    add         esp,0FFFFFFF8
 0059E392    mov         dword ptr [ebp-4],eax
 0059E395    mov         eax,dword ptr [ebp-4]
 0059E398    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059E39E    add         al,0FD
 0059E3A0    sub         al,2
>0059E3A2    jae         0059E3B2
 0059E3A4    mov         eax,dword ptr [ebp-4]
 0059E3A7    mov         eax,dword ptr [eax+214];TCustomListBox.FCount:Integer
 0059E3AD    mov         dword ptr [ebp-8],eax
>0059E3B0    jmp         0059E3C3
 0059E3B2    mov         eax,dword ptr [ebp-4]
 0059E3B5    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059E3BB    mov         edx,dword ptr [eax]
 0059E3BD    call        dword ptr [edx+14];@AbstractError
 0059E3C0    mov         dword ptr [ebp-8],eax
 0059E3C3    mov         eax,dword ptr [ebp-8]
 0059E3C6    pop         ecx
 0059E3C7    pop         ecx
 0059E3C8    pop         ebp
 0059E3C9    ret
end;*}

//0059E3CC
{*function sub_0059E3CC:?;
begin
 0059E3CC    push        ebp
 0059E3CD    mov         ebp,esp
 0059E3CF    add         esp,0FFFFFFF8
 0059E3D2    mov         dword ptr [ebp-4],eax
 0059E3D5    push        0
 0059E3D7    push        0
 0059E3D9    push        190
 0059E3DE    mov         eax,dword ptr [ebp-4]
 0059E3E1    call        TWinControl.GetHandle
 0059E3E6    push        eax
 0059E3E7    call        USER32.SendMessageA
 0059E3EC    mov         dword ptr [ebp-8],eax
 0059E3EF    mov         eax,dword ptr [ebp-8]
 0059E3F2    pop         ecx
 0059E3F3    pop         ecx
 0059E3F4    pop         ebp
 0059E3F5    ret
end;*}

//0059E3F8
{*procedure sub_0059E3F8(?:?);
begin
 0059E3F8    push        ebp
 0059E3F9    mov         ebp,esp
 0059E3FB    add         esp,0FFFFFFF8
 0059E3FE    mov         dword ptr [ebp-8],edx
 0059E401    mov         dword ptr [ebp-4],eax
 0059E404    mov         eax,dword ptr [ebp-4]
 0059E407    mov         edx,dword ptr [eax]
 0059E409    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059E40F    cmp         eax,dword ptr [ebp-8]
>0059E412    je          0059E454
 0059E414    mov         eax,dword ptr [ebp-4]
 0059E417    cmp         byte ptr [eax+208],0;TCustomListBox..................FMultiSelect:Boolean
>0059E41E    je          0059E43B
 0059E420    push        0
 0059E422    mov         eax,dword ptr [ebp-8]
 0059E425    push        eax
 0059E426    push        19E
 0059E42B    mov         eax,dword ptr [ebp-4]
 0059E42E    call        TWinControl.GetHandle
 0059E433    push        eax
 0059E434    call        USER32.SendMessageA
>0059E439    jmp         0059E454
 0059E43B    push        0
 0059E43D    mov         eax,dword ptr [ebp-8]
 0059E440    push        eax
 0059E441    push        186
 0059E446    mov         eax,dword ptr [ebp-4]
 0059E449    call        TWinControl.GetHandle
 0059E44E    push        eax
 0059E44F    call        USER32.SendMessageA
 0059E454    pop         ecx
 0059E455    pop         ecx
 0059E456    pop         ebp
 0059E457    ret
end;*}

//0059E458
procedure TFileListBox.SetExtendedSelect(Value:Boolean);
begin
{*
 0059E458    push        ebp
 0059E459    mov         ebp,esp
 0059E45B    add         esp,0FFFFFFF8
 0059E45E    mov         byte ptr [ebp-5],dl
 0059E461    mov         dword ptr [ebp-4],eax
 0059E464    mov         al,byte ptr [ebp-5]
 0059E467    mov         edx,dword ptr [ebp-4]
 0059E46A    cmp         al,byte ptr [edx+23B];TFileListBox.FExtendedSelect:Boolean
>0059E470    je          0059E486
 0059E472    mov         al,byte ptr [ebp-5]
 0059E475    mov         edx,dword ptr [ebp-4]
 0059E478    mov         byte ptr [edx+23B],al;TFileListBox.FExtendedSelect:Boolean
 0059E47E    mov         eax,dword ptr [ebp-4]
 0059E481    call        TWinControl.RecreateWnd
 0059E486    pop         ecx
 0059E487    pop         ecx
 0059E488    pop         ebp
 0059E489    ret
*}
end;

//0059E48C
procedure TCheckListBox.SetIntegralHeight(Value:Boolean);
begin
{*
 0059E48C    push        ebp
 0059E48D    mov         ebp,esp
 0059E48F    add         esp,0FFFFFFF8
 0059E492    push        esi
 0059E493    mov         byte ptr [ebp-5],dl
 0059E496    mov         dword ptr [ebp-4],eax
 0059E499    mov         al,byte ptr [ebp-5]
 0059E49C    mov         edx,dword ptr [ebp-4]
 0059E49F    cmp         al,byte ptr [edx+239];TCheckListBox.FIntegralHeight:Boolean
>0059E4A5    je          0059E4C7
 0059E4A7    mov         al,byte ptr [ebp-5]
 0059E4AA    mov         edx,dword ptr [ebp-4]
 0059E4AD    mov         byte ptr [edx+239],al;TCheckListBox.FIntegralHeight:Boolean
 0059E4B3    mov         eax,dword ptr [ebp-4]
 0059E4B6    call        TWinControl.RecreateWnd
 0059E4BB    mov         eax,dword ptr [ebp-4]
 0059E4BE    mov         si,0FFD0
 0059E4C2    call        @CallDynaInst;TControl.sub_005F2638
 0059E4C7    pop         esi
 0059E4C8    pop         ecx
 0059E4C9    pop         ecx
 0059E4CA    pop         ebp
 0059E4CB    ret
*}
end;

//0059E4CC
{*function TCheckListBox.GetItemHeight:?;
begin
 0059E4CC    push        ebp
 0059E4CD    mov         ebp,esp
 0059E4CF    add         esp,0FFFFFFE8
 0059E4D2    mov         dword ptr [ebp-4],eax
 0059E4D5    mov         eax,dword ptr [ebp-4]
 0059E4D8    mov         eax,dword ptr [eax+230];TCheckListBox.FItemHeight:Integer
 0059E4DE    mov         dword ptr [ebp-8],eax
 0059E4E1    mov         eax,dword ptr [ebp-4]
 0059E4E4    call        TWinControl.HandleAllocated
 0059E4E9    test        al,al
>0059E4EB    je          0059E515
 0059E4ED    mov         eax,dword ptr [ebp-4]
 0059E4F0    cmp         byte ptr [eax+238],0;TCheckListBox.FStyle:TListBoxStyle
>0059E4F7    jne         0059E515
 0059E4F9    lea         eax,[ebp-18]
 0059E4FC    push        eax
 0059E4FD    xor         ecx,ecx
 0059E4FF    mov         edx,198
 0059E504    mov         eax,dword ptr [ebp-4]
 0059E507    call        005F4FA8
 0059E50C    mov         eax,dword ptr [ebp-0C]
 0059E50F    sub         eax,dword ptr [ebp-14]
 0059E512    mov         dword ptr [ebp-8],eax
 0059E515    mov         eax,dword ptr [ebp-8]
 0059E518    mov         esp,ebp
 0059E51A    pop         ebp
 0059E51B    ret
end;*}

//0059E51C
procedure TCheckListBox.SetItemHeight(Value:Integer);
begin
{*
 0059E51C    push        ebp
 0059E51D    mov         ebp,esp
 0059E51F    add         esp,0FFFFFFF8
 0059E522    mov         dword ptr [ebp-8],edx
 0059E525    mov         dword ptr [ebp-4],eax
 0059E528    mov         eax,dword ptr [ebp-4]
 0059E52B    mov         eax,dword ptr [eax+230];TCheckListBox.FItemHeight:Integer
 0059E531    cmp         eax,dword ptr [ebp-8]
>0059E534    je          0059E550
 0059E536    cmp         dword ptr [ebp-8],0
>0059E53A    jle         0059E550
 0059E53C    mov         eax,dword ptr [ebp-8]
 0059E53F    mov         edx,dword ptr [ebp-4]
 0059E542    mov         dword ptr [edx+230],eax;TCheckListBox.FItemHeight:Integer
 0059E548    mov         eax,dword ptr [ebp-4]
 0059E54B    call        TWinControl.RecreateWnd
 0059E550    pop         ecx
 0059E551    pop         ecx
 0059E552    pop         ebp
 0059E553    ret
*}
end;

//0059E554
procedure TCheckListBox.SetTabWidth(Value:Integer);
begin
{*
 0059E554    push        ebp
 0059E555    mov         ebp,esp
 0059E557    add         esp,0FFFFFFF8
 0059E55A    mov         dword ptr [ebp-8],edx
 0059E55D    mov         dword ptr [ebp-4],eax
 0059E560    cmp         dword ptr [ebp-8],0
>0059E564    jge         0059E56B
 0059E566    xor         eax,eax
 0059E568    mov         dword ptr [ebp-8],eax
 0059E56B    mov         eax,dword ptr [ebp-4]
 0059E56E    mov         eax,dword ptr [eax+23C];TCheckListBox.FTabWidth:Integer
 0059E574    cmp         eax,dword ptr [ebp-8]
>0059E577    je          0059E58D
 0059E579    mov         eax,dword ptr [ebp-8]
 0059E57C    mov         edx,dword ptr [ebp-4]
 0059E57F    mov         dword ptr [edx+23C],eax;TCheckListBox.FTabWidth:Integer
 0059E585    mov         eax,dword ptr [ebp-4]
 0059E588    call        TWinControl.RecreateWnd
 0059E58D    pop         ecx
 0059E58E    pop         ecx
 0059E58F    pop         ebp
 0059E590    ret
*}
end;

//0059E594
procedure TFileListBox.SetMultiSelect(Value:Boolean);
begin
{*
 0059E594    push        ebp
 0059E595    mov         ebp,esp
 0059E597    add         esp,0FFFFFFF8
 0059E59A    mov         byte ptr [ebp-5],dl
 0059E59D    mov         dword ptr [ebp-4],eax
 0059E5A0    mov         eax,dword ptr [ebp-4]
 0059E5A3    mov         al,byte ptr [eax+208];TFileListBox...................FMultiSelect:Boolean
 0059E5A9    cmp         al,byte ptr [ebp-5]
>0059E5AC    je          0059E5C2
 0059E5AE    mov         al,byte ptr [ebp-5]
 0059E5B1    mov         edx,dword ptr [ebp-4]
 0059E5B4    mov         byte ptr [edx+208],al;TFileListBox....................FMultiSelect:Boolean
 0059E5BA    mov         eax,dword ptr [ebp-4]
 0059E5BD    call        TWinControl.RecreateWnd
 0059E5C2    pop         ecx
 0059E5C3    pop         ecx
 0059E5C4    pop         ebp
 0059E5C5    ret
*}
end;

//0059E5C8
{*function sub_0059E5C8(?:TCustomListBox; ?:?):?;
begin
 0059E5C8    push        ebp
 0059E5C9    mov         ebp,esp
 0059E5CB    add         esp,0FFFFFFE8
 0059E5CE    mov         dword ptr [ebp-8],edx
 0059E5D1    mov         dword ptr [ebp-4],eax
 0059E5D4    push        0
 0059E5D6    mov         eax,dword ptr [ebp-8]
 0059E5D9    push        eax
 0059E5DA    push        187
 0059E5DF    mov         eax,dword ptr [ebp-4]
 0059E5E2    call        TWinControl.GetHandle
 0059E5E7    push        eax
 0059E5E8    call        USER32.SendMessageA
 0059E5ED    mov         dword ptr [ebp-10],eax
 0059E5F0    cmp         dword ptr [ebp-10],0FFFFFFFF
>0059E5F4    jne         0059E61D
 0059E5F6    mov         eax,dword ptr [ebp-8]
 0059E5F9    mov         dword ptr [ebp-18],eax
 0059E5FC    mov         byte ptr [ebp-14],0
 0059E600    lea         eax,[ebp-18]
 0059E603    push        eax
 0059E604    push        0
 0059E606    mov         ecx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0059E60C    mov         dl,1
 0059E60E    mov         eax,[0064207C];EListError
 0059E613    call        Exception.CreateResFmt;EListError.Create
 0059E618    call        @RaiseExcept
 0059E61D    cmp         dword ptr [ebp-10],1
 0059E621    sbb         eax,eax
 0059E623    inc         eax
 0059E624    mov         byte ptr [ebp-9],al
 0059E627    mov         al,byte ptr [ebp-9]
 0059E62A    mov         esp,ebp
 0059E62C    pop         ebp
 0059E62D    ret
end;*}

//0059E630
{*procedure sub_0059E630(?:TCustomListBox; ?:?; ?:?);
begin
 0059E630    push        ebp
 0059E631    mov         ebp,esp
 0059E633    add         esp,0FFFFFFEC
 0059E636    mov         byte ptr [ebp-9],cl
 0059E639    mov         dword ptr [ebp-8],edx
 0059E63C    mov         dword ptr [ebp-4],eax
 0059E63F    mov         eax,dword ptr [ebp-4]
 0059E642    cmp         byte ptr [eax+208],0;TCustomListBox.....................FMultiSelect:Boolean
>0059E649    je          0059E698
 0059E64B    mov         eax,dword ptr [ebp-8]
 0059E64E    push        eax
 0059E64F    xor         eax,eax
 0059E651    mov         al,byte ptr [ebp-9]
 0059E654    push        eax
 0059E655    push        185
 0059E65A    mov         eax,dword ptr [ebp-4]
 0059E65D    call        TWinControl.GetHandle
 0059E662    push        eax
 0059E663    call        USER32.SendMessageA
 0059E668    inc         eax
>0059E669    jne         0059E6FA
 0059E66F    mov         eax,dword ptr [ebp-8]
 0059E672    mov         dword ptr [ebp-14],eax
 0059E675    mov         byte ptr [ebp-10],0
 0059E679    lea         eax,[ebp-14]
 0059E67C    push        eax
 0059E67D    push        0
 0059E67F    mov         ecx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0059E685    mov         dl,1
 0059E687    mov         eax,[0064207C];EListError
 0059E68C    call        Exception.CreateResFmt;EListError.Create
 0059E691    call        @RaiseExcept
>0059E696    jmp         0059E6FA
 0059E698    cmp         byte ptr [ebp-9],0
>0059E69C    je          0059E6E3
 0059E69E    push        0
 0059E6A0    mov         eax,dword ptr [ebp-8]
 0059E6A3    push        eax
 0059E6A4    push        186
 0059E6A9    mov         eax,dword ptr [ebp-4]
 0059E6AC    call        TWinControl.GetHandle
 0059E6B1    push        eax
 0059E6B2    call        USER32.SendMessageA
 0059E6B7    inc         eax
>0059E6B8    jne         0059E6FA
 0059E6BA    mov         eax,dword ptr [ebp-8]
 0059E6BD    mov         dword ptr [ebp-14],eax
 0059E6C0    mov         byte ptr [ebp-10],0
 0059E6C4    lea         eax,[ebp-14]
 0059E6C7    push        eax
 0059E6C8    push        0
 0059E6CA    mov         ecx,dword ptr ds:[6EA0AC];^gvar_0065504C
 0059E6D0    mov         dl,1
 0059E6D2    mov         eax,[0064207C];EListError
 0059E6D7    call        Exception.CreateResFmt;EListError.Create
 0059E6DC    call        @RaiseExcept
>0059E6E1    jmp         0059E6FA
 0059E6E3    push        0
 0059E6E5    push        0FF
 0059E6E7    push        186
 0059E6EC    mov         eax,dword ptr [ebp-4]
 0059E6EF    call        TWinControl.GetHandle
 0059E6F4    push        eax
 0059E6F5    call        USER32.SendMessageA
 0059E6FA    mov         esp,ebp
 0059E6FC    pop         ebp
 0059E6FD    ret
end;*}

//0059E700
procedure TCheckListBox.SetSorted(Value:Boolean);
begin
{*
 0059E700    push        ebp
 0059E701    mov         ebp,esp
 0059E703    add         esp,0FFFFFFF8
 0059E706    mov         byte ptr [ebp-5],dl
 0059E709    mov         dword ptr [ebp-4],eax
 0059E70C    mov         eax,dword ptr [ebp-4]
 0059E70F    mov         al,byte ptr [eax+238];TCheckListBox.FStyle:TListBoxStyle
 0059E715    add         al,0FD
 0059E717    sub         al,2
>0059E719    jb          0059E73D
 0059E71B    mov         eax,dword ptr [ebp-4]
 0059E71E    mov         al,byte ptr [eax+23A];TCheckListBox.FSorted:Boolean
 0059E724    cmp         al,byte ptr [ebp-5]
>0059E727    je          0059E73D
 0059E729    mov         al,byte ptr [ebp-5]
 0059E72C    mov         edx,dword ptr [ebp-4]
 0059E72F    mov         byte ptr [edx+23A],al;TCheckListBox.FSorted:Boolean
 0059E735    mov         eax,dword ptr [ebp-4]
 0059E738    call        TWinControl.RecreateWnd
 0059E73D    pop         ecx
 0059E73E    pop         ecx
 0059E73F    pop         ebp
 0059E740    ret
*}
end;

//0059E744
procedure TCheckListBox.SetStyle(Value:TListBoxStyle);
begin
{*
 0059E744    push        ebp
 0059E745    mov         ebp,esp
 0059E747    add         esp,0FFFFFFF8
 0059E74A    mov         byte ptr [ebp-5],dl
 0059E74D    mov         dword ptr [ebp-4],eax
 0059E750    mov         eax,dword ptr [ebp-4]
 0059E753    mov         al,byte ptr [eax+238];TCheckListBox.FStyle:TListBoxStyle
 0059E759    cmp         al,byte ptr [ebp-5]
>0059E75C    je          0059E793
 0059E75E    mov         al,byte ptr [ebp-5]
 0059E761    add         al,0FD
 0059E763    sub         al,2
>0059E765    jae         0059E77F
 0059E767    mov         eax,dword ptr [ebp-4]
 0059E76A    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0059E770    mov         edx,dword ptr [eax]
 0059E772    call        dword ptr [edx+44];TStrings.Clear
 0059E775    xor         edx,edx
 0059E777    mov         eax,dword ptr [ebp-4]
 0059E77A    call        TCheckListBox.SetSorted
 0059E77F    mov         al,byte ptr [ebp-5]
 0059E782    mov         edx,dword ptr [ebp-4]
 0059E785    mov         byte ptr [edx+238],al;TCheckListBox.FStyle:TListBoxStyle
 0059E78B    mov         eax,dword ptr [ebp-4]
 0059E78E    call        TWinControl.RecreateWnd
 0059E793    pop         ecx
 0059E794    pop         ecx
 0059E795    pop         ebp
 0059E796    ret
*}
end;

//0059E798
{*function sub_0059E798(?:TCustomListBox):?;
begin
 0059E798    push        ebp
 0059E799    mov         ebp,esp
 0059E79B    add         esp,0FFFFFFF8
 0059E79E    mov         dword ptr [ebp-4],eax
 0059E7A1    push        0
 0059E7A3    push        0
 0059E7A5    push        18E
 0059E7AA    mov         eax,dword ptr [ebp-4]
 0059E7AD    call        TWinControl.GetHandle
 0059E7B2    push        eax
 0059E7B3    call        USER32.SendMessageA
 0059E7B8    mov         dword ptr [ebp-8],eax
 0059E7BB    mov         eax,dword ptr [ebp-8]
 0059E7BE    pop         ecx
 0059E7BF    pop         ecx
 0059E7C0    pop         ebp
 0059E7C1    ret
end;*}

//0059E7C4
{*procedure TCustomListBox.sub_0059E7C4(?:?);
begin
 0059E7C4    push        ebp
 0059E7C5    mov         ebp,esp
 0059E7C7    add         esp,0FFFFFFF4
 0059E7CA    push        ebx
 0059E7CB    xor         ecx,ecx
 0059E7CD    mov         dword ptr [ebp-0C],ecx
 0059E7D0    mov         dword ptr [ebp-8],edx
 0059E7D3    mov         dword ptr [ebp-4],eax
 0059E7D6    xor         eax,eax
 0059E7D8    push        ebp
 0059E7D9    push        59E892
 0059E7DE    push        dword ptr fs:[eax]
 0059E7E1    mov         dword ptr fs:[eax],esp
 0059E7E4    mov         eax,dword ptr [ebp-4]
 0059E7E7    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059E7ED    add         al,0FD
 0059E7EF    sub         al,2
>0059E7F1    jae         0059E871
 0059E7F3    mov         eax,dword ptr [ebp-4]
 0059E7F6    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>0059E7FE    je          0059E865
 0059E800    mov         eax,dword ptr [ebp-8]
 0059E803    cmp         dword ptr [eax+4],0FFFFFFFF
>0059E807    jle         0059E865
 0059E809    mov         eax,dword ptr [ebp-4]
 0059E80C    mov         edx,dword ptr [eax]
 0059E80E    call        dword ptr [edx+0C4];TCustomListBox.sub_0059E38C
 0059E814    mov         edx,dword ptr [ebp-8]
 0059E817    cmp         eax,dword ptr [edx+4]
>0059E81A    jle         0059E865
 0059E81C    lea         eax,[ebp-0C]
 0059E81F    call        @LStrClr
 0059E824    lea         eax,[ebp-0C]
 0059E827    push        eax
 0059E828    mov         ecx,dword ptr [ebp-8]
 0059E82B    mov         ecx,dword ptr [ecx+4]
 0059E82E    mov         ebx,dword ptr [ebp-4]
 0059E831    mov         edx,dword ptr [ebp-4]
 0059E834    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 0059E83A    call        dword ptr [ebx+260];TCustomListBox.FOnData
 0059E840    mov         eax,dword ptr [ebp-0C]
 0059E843    call        @LStrToPChar
 0059E848    mov         edx,eax
 0059E84A    mov         eax,dword ptr [ebp-8]
 0059E84D    mov         eax,dword ptr [eax+8]
 0059E850    call        StrCopy
 0059E855    mov         eax,dword ptr [ebp-0C]
 0059E858    call        @LStrLen
 0059E85D    mov         edx,dword ptr [ebp-8]
 0059E860    mov         dword ptr [edx+0C],eax
>0059E863    jmp         0059E87C
 0059E865    mov         eax,dword ptr [ebp-8]
 0059E868    mov         dword ptr [eax+0C],0FFFFFFFF
>0059E86F    jmp         0059E87C
 0059E871    mov         edx,dword ptr [ebp-8]
 0059E874    mov         eax,dword ptr [ebp-4]
 0059E877    mov         ecx,dword ptr [eax]
 0059E879    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0059E87C    xor         eax,eax
 0059E87E    pop         edx
 0059E87F    pop         ecx
 0059E880    pop         ecx
 0059E881    mov         dword ptr fs:[eax],edx
 0059E884    push        59E899
 0059E889    lea         eax,[ebp-0C]
 0059E88C    call        @LStrClr
 0059E891    ret
>0059E892    jmp         @HandleFinally
>0059E897    jmp         0059E889
 0059E899    pop         ebx
 0059E89A    mov         esp,ebp
 0059E89C    pop         ebp
 0059E89D    ret
end;*}

//0059E8A0
{*procedure TCustomListBox.sub_0059E8A0(?:?);
begin
 0059E8A0    push        ebp
 0059E8A1    mov         ebp,esp
 0059E8A3    add         esp,0FFFFFFF4
 0059E8A6    push        ebx
 0059E8A7    xor         ecx,ecx
 0059E8A9    mov         dword ptr [ebp-0C],ecx
 0059E8AC    mov         dword ptr [ebp-8],edx
 0059E8AF    mov         dword ptr [ebp-4],eax
 0059E8B2    xor         eax,eax
 0059E8B4    push        ebp
 0059E8B5    push        59E959
 0059E8BA    push        dword ptr fs:[eax]
 0059E8BD    mov         dword ptr fs:[eax],esp
 0059E8C0    mov         eax,dword ptr [ebp-4]
 0059E8C3    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059E8C9    add         al,0FD
 0059E8CB    sub         al,2
>0059E8CD    jae         0059E938
 0059E8CF    mov         eax,dword ptr [ebp-4]
 0059E8D2    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>0059E8DA    je          0059E92C
 0059E8DC    mov         eax,dword ptr [ebp-8]
 0059E8DF    cmp         dword ptr [eax+4],0FFFFFFFF
>0059E8E3    jle         0059E92C
 0059E8E5    mov         eax,dword ptr [ebp-4]
 0059E8E8    mov         edx,dword ptr [eax]
 0059E8EA    call        dword ptr [edx+0C4];TCustomListBox.sub_0059E38C
 0059E8F0    mov         edx,dword ptr [ebp-8]
 0059E8F3    cmp         eax,dword ptr [edx+4]
>0059E8F6    jle         0059E92C
 0059E8F8    lea         eax,[ebp-0C]
 0059E8FB    call        @LStrClr
 0059E900    lea         eax,[ebp-0C]
 0059E903    push        eax
 0059E904    mov         ecx,dword ptr [ebp-8]
 0059E907    mov         ecx,dword ptr [ecx+4]
 0059E90A    mov         ebx,dword ptr [ebp-4]
 0059E90D    mov         edx,dword ptr [ebp-4]
 0059E910    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 0059E916    call        dword ptr [ebx+260];TCustomListBox.FOnData
 0059E91C    mov         eax,dword ptr [ebp-0C]
 0059E91F    call        @LStrLen
 0059E924    mov         edx,dword ptr [ebp-8]
 0059E927    mov         dword ptr [edx+0C],eax
>0059E92A    jmp         0059E943
 0059E92C    mov         eax,dword ptr [ebp-8]
 0059E92F    mov         dword ptr [eax+0C],0FFFFFFFF
>0059E936    jmp         0059E943
 0059E938    mov         edx,dword ptr [ebp-8]
 0059E93B    mov         eax,dword ptr [ebp-4]
 0059E93E    mov         ecx,dword ptr [eax]
 0059E940    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0059E943    xor         eax,eax
 0059E945    pop         edx
 0059E946    pop         ecx
 0059E947    pop         ecx
 0059E948    mov         dword ptr fs:[eax],edx
 0059E94B    push        59E960
 0059E950    lea         eax,[ebp-0C]
 0059E953    call        @LStrClr
 0059E958    ret
>0059E959    jmp         @HandleFinally
>0059E95E    jmp         0059E950
 0059E960    pop         ebx
 0059E961    mov         esp,ebp
 0059E963    pop         ebp
 0059E964    ret
end;*}

//0059E968
procedure TCheckListBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 0059E968    push        ebp
 0059E969    mov         ebp,esp
 0059E96B    add         esp,0FFFFFFF8
 0059E96E    mov         byte ptr [ebp-5],dl
 0059E971    mov         dword ptr [ebp-4],eax
 0059E974    mov         eax,dword ptr [ebp-4]
 0059E977    mov         al,byte ptr [eax+224];TCheckListBox.FBorderStyle:TBorderStyle
 0059E97D    cmp         al,byte ptr [ebp-5]
>0059E980    je          0059E996
 0059E982    mov         al,byte ptr [ebp-5]
 0059E985    mov         edx,dword ptr [ebp-4]
 0059E988    mov         byte ptr [edx+224],al;TCheckListBox.FBorderStyle:TBorderStyle
 0059E98E    mov         eax,dword ptr [ebp-4]
 0059E991    call        TWinControl.RecreateWnd
 0059E996    pop         ecx
 0059E997    pop         ecx
 0059E998    pop         ebp
 0059E999    ret
*}
end;

//0059E99C
procedure sub_0059E99C(?:TCustomListBox; ?:Integer);
begin
{*
 0059E99C    push        ebp
 0059E99D    mov         ebp,esp
 0059E99F    add         esp,0FFFFFFF8
 0059E9A2    mov         dword ptr [ebp-8],edx
 0059E9A5    mov         dword ptr [ebp-4],eax
 0059E9A8    mov         eax,dword ptr [ebp-4]
 0059E9AB    call        0059E798
 0059E9B0    cmp         eax,dword ptr [ebp-8]
>0059E9B3    je          0059E9CE
 0059E9B5    push        0
 0059E9B7    mov         eax,dword ptr [ebp-8]
 0059E9BA    push        eax
 0059E9BB    push        197
 0059E9C0    mov         eax,dword ptr [ebp-4]
 0059E9C3    call        TWinControl.GetHandle
 0059E9C8    push        eax
 0059E9C9    call        USER32.SendMessageA
 0059E9CE    pop         ecx
 0059E9CF    pop         ecx
 0059E9D0    pop         ebp
 0059E9D1    ret
*}
end;

//0059E9D4
procedure TCheckListBox.SetItems(Value:TStrings);
begin
{*
 0059E9D4    push        ebp
 0059E9D5    mov         ebp,esp
 0059E9D7    add         esp,0FFFFFFF8
 0059E9DA    mov         dword ptr [ebp-8],edx
 0059E9DD    mov         dword ptr [ebp-4],eax
 0059E9E0    mov         eax,dword ptr [ebp-4]
 0059E9E3    mov         al,byte ptr [eax+238];TCheckListBox.FStyle:TListBoxStyle
 0059E9E9    add         al,0FD
 0059E9EB    sub         al,2
>0059E9ED    jae         0059EA18
 0059E9EF    mov         eax,dword ptr [ebp-4]
 0059E9F2    mov         al,byte ptr [eax+238];TCheckListBox.FStyle:TListBoxStyle
 0059E9F8    sub         al,3
>0059E9FA    je          0059EA02
 0059E9FC    dec         al
>0059E9FE    je          0059EA0E
>0059EA00    jmp         0059EA18
 0059EA02    xor         edx,edx
 0059EA04    mov         eax,dword ptr [ebp-4]
 0059EA07    call        TCheckListBox.SetStyle
>0059EA0C    jmp         0059EA18
 0059EA0E    mov         dl,1
 0059EA10    mov         eax,dword ptr [ebp-4]
 0059EA13    call        TCheckListBox.SetStyle
 0059EA18    mov         edx,dword ptr [ebp-8]
 0059EA1B    mov         eax,dword ptr [ebp-4]
 0059EA1E    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0059EA24    mov         ecx,dword ptr [eax]
 0059EA26    call        dword ptr [ecx+8];TStrings.Assign
 0059EA29    pop         ecx
 0059EA2A    pop         ecx
 0059EA2B    pop         ebp
 0059EA2C    ret
*}
end;

//0059EA30
{*function sub_0059EA30(?:TCustomListBox; ?:?; ?:?):?;
begin
 0059EA30    push        ebp
 0059EA31    mov         ebp,esp
 0059EA33    add         esp,0FFFFFFC8
 0059EA36    push        esi
 0059EA37    push        edi
 0059EA38    mov         esi,edx
 0059EA3A    lea         edi,[ebp-0C]
 0059EA3D    movs        dword ptr [edi],dword ptr [esi]
 0059EA3E    movs        dword ptr [edi],dword ptr [esi]
 0059EA3F    mov         byte ptr [ebp-0D],cl
 0059EA42    mov         dword ptr [ebp-4],eax
 0059EA45    push        dword ptr [ebp-8]
 0059EA48    push        dword ptr [ebp-0C]
 0059EA4B    lea         edx,[ebp-38]
 0059EA4E    mov         eax,dword ptr [ebp-4]
 0059EA51    mov         ecx,dword ptr [eax]
 0059EA53    call        dword ptr [ecx+44];TCheckListBox.sub_005FC204
 0059EA56    lea         eax,[ebp-38]
 0059EA59    push        eax
 0059EA5A    call        USER32.PtInRect
 0059EA5F    test        eax,eax
>0059EA61    je          0059EABF
 0059EA63    mov         eax,dword ptr [ebp-4]
 0059EA66    call        0059E798
 0059EA6B    mov         dword ptr [ebp-14],eax
 0059EA6E    mov         eax,dword ptr [ebp-4]
 0059EA71    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0059EA77    mov         edx,dword ptr [eax]
 0059EA79    call        dword ptr [edx+14];@AbstractError
 0059EA7C    mov         dword ptr [ebp-18],eax
 0059EA7F    mov         eax,dword ptr [ebp-14]
 0059EA82    cmp         eax,dword ptr [ebp-18]
>0059EA85    jge         0059EAB9
 0059EA87    lea         eax,[ebp-28]
 0059EA8A    push        eax
 0059EA8B    mov         ecx,dword ptr [ebp-14]
 0059EA8E    mov         edx,198
 0059EA93    mov         eax,dword ptr [ebp-4]
 0059EA96    call        005F4FA8
 0059EA9B    push        dword ptr [ebp-8]
 0059EA9E    push        dword ptr [ebp-0C]
 0059EAA1    lea         eax,[ebp-28]
 0059EAA4    push        eax
 0059EAA5    call        USER32.PtInRect
 0059EAAA    test        eax,eax
>0059EAAC    jne         0059EAC6
 0059EAAE    inc         dword ptr [ebp-14]
 0059EAB1    mov         eax,dword ptr [ebp-14]
 0059EAB4    cmp         eax,dword ptr [ebp-18]
>0059EAB7    jl          0059EA87
 0059EAB9    cmp         byte ptr [ebp-0D],0
>0059EABD    je          0059EAC6
 0059EABF    mov         dword ptr [ebp-14],0FFFFFFFF
 0059EAC6    mov         eax,dword ptr [ebp-14]
 0059EAC9    pop         edi
 0059EACA    pop         esi
 0059EACB    mov         esp,ebp
 0059EACD    pop         ebp
 0059EACE    ret
end;*}

//0059EAD0
{*procedure sub_0059EAD0(?:TCheckListBox; ?:?; ?:?);
begin
 0059EAD0    push        ebp
 0059EAD1    mov         ebp,esp
 0059EAD3    add         esp,0FFFFFFF0
 0059EAD6    mov         dword ptr [ebp-0C],ecx
 0059EAD9    mov         dword ptr [ebp-8],edx
 0059EADC    mov         dword ptr [ebp-4],eax
 0059EADF    mov         eax,dword ptr [ebp-4]
 0059EAE2    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0059EAE8    mov         edx,dword ptr [eax]
 0059EAEA    call        dword ptr [edx+14];@AbstractError
 0059EAED    mov         dword ptr [ebp-10],eax
 0059EAF0    cmp         dword ptr [ebp-8],0
>0059EAF4    je          0059EAFE
 0059EAF6    mov         eax,dword ptr [ebp-8]
 0059EAF9    cmp         eax,dword ptr [ebp-10]
>0059EAFC    jge         0059EB14
 0059EAFE    mov         eax,dword ptr [ebp-0C]
 0059EB01    push        eax
 0059EB02    mov         ecx,dword ptr [ebp-8]
 0059EB05    mov         edx,198
 0059EB0A    mov         eax,dword ptr [ebp-4]
 0059EB0D    call        005F4FA8
>0059EB12    jmp         0059EB5A
 0059EB14    mov         eax,dword ptr [ebp-8]
 0059EB17    cmp         eax,dword ptr [ebp-10]
>0059EB1A    jne         0059EB4B
 0059EB1C    mov         eax,dword ptr [ebp-0C]
 0059EB1F    push        eax
 0059EB20    mov         ecx,dword ptr [ebp-8]
 0059EB23    dec         ecx
 0059EB24    mov         edx,198
 0059EB29    mov         eax,dword ptr [ebp-4]
 0059EB2C    call        005F4FA8
 0059EB31    mov         eax,dword ptr [ebp-0C]
 0059EB34    mov         eax,dword ptr [eax+0C]
 0059EB37    mov         edx,dword ptr [ebp-0C]
 0059EB3A    sub         eax,dword ptr [edx+4]
 0059EB3D    push        eax
 0059EB3E    push        0
 0059EB40    mov         eax,dword ptr [ebp-0C]
 0059EB43    push        eax
 0059EB44    call        USER32.OffsetRect
>0059EB49    jmp         0059EB5A
 0059EB4B    mov         eax,dword ptr [ebp-0C]
 0059EB4E    xor         ecx,ecx
 0059EB50    mov         edx,10
 0059EB55    call        @FillChar
 0059EB5A    mov         esp,ebp
 0059EB5C    pop         ebp
 0059EB5D    ret
end;*}

//0059EB60
{*procedure sub_0059EB60(?:?);
begin
 0059EB60    push        ebp
 0059EB61    mov         ebp,esp
 0059EB63    add         esp,0FFFFFFF4
 0059EB66    push        esi
 0059EB67    mov         dword ptr [ebp-8],edx
 0059EB6A    mov         dword ptr [ebp-4],eax
 0059EB6D    mov         edx,dword ptr [ebp-8]
 0059EB70    mov         eax,dword ptr [ebp-4]
 0059EB73    call        005F7FC0
 0059EB78    mov         ecx,59ECB0
 0059EB7D    mov         edx,dword ptr [ebp-8]
 0059EB80    mov         eax,dword ptr [ebp-4]
 0059EB83    call        005F7E98
 0059EB88    mov         eax,6E3B60
 0059EB8D    mov         dword ptr [ebp-0C],eax
 0059EB90    mov         eax,dword ptr [ebp-4]
 0059EB93    cmp         byte ptr [eax+23B],0;TCustomListBox.FExtendedSelect:Boolean
>0059EB9A    je          0059EBA4
 0059EB9C    mov         eax,6E3B68
 0059EBA1    mov         dword ptr [ebp-0C],eax
 0059EBA4    mov         eax,dword ptr [ebp-4]
 0059EBA7    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059EBAD    add         al,0FD
 0059EBAF    sub         al,2
 0059EBB1    setb        al
 0059EBB4    and         eax,7F
 0059EBB7    mov         eax,dword ptr [eax*4+6E3B90]
 0059EBBE    or          eax,300000
 0059EBC3    or          eax,1
 0059EBC6    mov         edx,dword ptr [ebp-8]
 0059EBC9    or          eax,dword ptr [edx+4]
 0059EBCC    mov         edx,dword ptr [ebp-4]
 0059EBCF    movzx       edx,byte ptr [edx+238];TCustomListBox.FStyle:TListBoxStyle
 0059EBD6    or          eax,dword ptr [edx*4+6E3B44]
 0059EBDD    mov         edx,dword ptr [ebp-4]
 0059EBE0    movzx       edx,byte ptr [edx+23A];TCustomListBox.FSorted:Boolean
 0059EBE7    or          eax,dword ptr [edx*4+6E3B58]
 0059EBEE    mov         edx,dword ptr [ebp-4]
 0059EBF1    movzx       edx,byte ptr [edx+208];TCustomListBox......................FMultiSelect:Boolean
 0059EBF8    mov         ecx,dword ptr [ebp-0C]
 0059EBFB    or          eax,dword ptr [ecx+edx*4]
 0059EBFE    mov         edx,dword ptr [ebp-4]
 0059EC01    movzx       edx,byte ptr [edx+239];TCustomListBox.FIntegralHeight:Boolean
 0059EC08    or          eax,dword ptr [edx*4+6E3B70]
 0059EC0F    mov         edx,dword ptr [ebp-4]
 0059EC12    cmp         dword ptr [edx+22C],0;TCustomListBox.FColumns:Integer
 0059EC19    setne       dl
 0059EC1C    and         edx,7F
 0059EC1F    or          eax,dword ptr [edx*4+6E3B78]
 0059EC26    mov         edx,dword ptr [ebp-4]
 0059EC29    movzx       edx,byte ptr [edx+224];TCustomListBox.FBorderStyle:TBorderStyle
 0059EC30    or          eax,dword ptr [edx*4+6E3A44]
 0059EC37    mov         edx,dword ptr [ebp-4]
 0059EC3A    cmp         dword ptr [edx+23C],0;TCustomListBox.FTabWidth:Integer
 0059EC41    setne       dl
 0059EC44    and         edx,7F
 0059EC47    or          eax,dword ptr [edx*4+6E3B80]
 0059EC4E    mov         edx,dword ptr [ebp-8]
 0059EC51    mov         dword ptr [edx+4],eax
 0059EC54    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059EC59    cmp         byte ptr [eax],0
>0059EC5C    je          0059EC8A
 0059EC5E    mov         eax,dword ptr [ebp-4]
 0059EC61    cmp         byte ptr [eax+1A5],0;TCustomListBox.FCtl3D:Boolean
>0059EC68    je          0059EC8A
 0059EC6A    mov         eax,dword ptr [ebp-4]
 0059EC6D    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>0059EC74    jne         0059EC8A
 0059EC76    mov         eax,dword ptr [ebp-8]
 0059EC79    and         dword ptr [eax+4],0FF7FFFFF
 0059EC80    mov         eax,dword ptr [ebp-8]
 0059EC83    or          dword ptr [eax+8],200
 0059EC8A    mov         eax,dword ptr [ebp-4]
 0059EC8D    mov         si,0FFC8
 0059EC91    call        @CallDynaInst;TControl.sub_005F40CC
 0059EC96    and         eax,7F
 0059EC99    mov         eax,dword ptr [eax*4+6E3B88]
 0059ECA0    or          eax,1
 0059ECA3    not         eax
 0059ECA5    mov         edx,dword ptr [ebp-8]
 0059ECA8    and         dword ptr [edx+24],eax
 0059ECAB    pop         esi
 0059ECAC    mov         esp,ebp
 0059ECAE    pop         ebp
 0059ECAF    ret
end;*}

//0059ECB8
procedure TCustomListBox.CreateWnd;
begin
{*
 0059ECB8    push        ebp
 0059ECB9    mov         ebp,esp
 0059ECBB    add         esp,0FFFFFFF4
 0059ECBE    mov         dword ptr [ebp-4],eax
 0059ECC1    mov         eax,dword ptr [ebp-4]
 0059ECC4    mov         eax,dword ptr [eax+48];TCustomListBox.Width:Integer
 0059ECC7    mov         dword ptr [ebp-8],eax
 0059ECCA    mov         eax,dword ptr [ebp-4]
 0059ECCD    mov         eax,dword ptr [eax+4C];TCustomListBox.Height:Integer
 0059ECD0    mov         dword ptr [ebp-0C],eax
 0059ECD3    mov         eax,dword ptr [ebp-4]
 0059ECD6    call        TWinControl.CreateWnd
 0059ECDB    push        14
 0059ECDD    mov         eax,dword ptr [ebp-0C]
 0059ECE0    push        eax
 0059ECE1    mov         eax,dword ptr [ebp-8]
 0059ECE4    push        eax
 0059ECE5    mov         eax,dword ptr [ebp-4]
 0059ECE8    mov         eax,dword ptr [eax+44];TCustomListBox.Top:Integer
 0059ECEB    push        eax
 0059ECEC    mov         eax,dword ptr [ebp-4]
 0059ECEF    mov         eax,dword ptr [eax+40];TCustomListBox.Left:Integer
 0059ECF2    push        eax
 0059ECF3    push        0
 0059ECF5    mov         eax,dword ptr [ebp-4]
 0059ECF8    call        TWinControl.GetHandle
 0059ECFD    push        eax
 0059ECFE    call        USER32.SetWindowPos
 0059ED03    mov         eax,dword ptr [ebp-4]
 0059ED06    cmp         dword ptr [eax+23C],0;TCustomListBox.FTabWidth:Integer
>0059ED0D    je          0059ED2D
 0059ED0F    mov         eax,dword ptr [ebp-4]
 0059ED12    add         eax,23C;TCustomListBox.FTabWidth:Integer
 0059ED17    push        eax
 0059ED18    push        1
 0059ED1A    push        192
 0059ED1F    mov         eax,dword ptr [ebp-4]
 0059ED22    call        TWinControl.GetHandle
 0059ED27    push        eax
 0059ED28    call        USER32.SendMessageA
 0059ED2D    mov         eax,dword ptr [ebp-4]
 0059ED30    call        0059E264
 0059ED35    mov         eax,dword ptr [ebp-4]
 0059ED38    cmp         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
>0059ED3F    jne         0059ED51
 0059ED41    mov         eax,dword ptr [ebp-4]
 0059ED44    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>0059ED4B    je          0059EDD3
 0059ED51    mov         eax,dword ptr [ebp-4]
 0059ED54    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059ED5A    add         al,0FD
 0059ED5C    sub         al,2
>0059ED5E    jae         0059ED71
 0059ED60    mov         eax,dword ptr [ebp-4]
 0059ED63    mov         edx,dword ptr [eax+234];TCustomListBox.FOldCount:Integer
 0059ED69    mov         eax,dword ptr [ebp-4]
 0059ED6C    call        0059F87C
 0059ED71    mov         eax,dword ptr [ebp-4]
 0059ED74    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>0059ED7B    je          0059EDA1
 0059ED7D    mov         eax,dword ptr [ebp-4]
 0059ED80    mov         edx,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 0059ED86    mov         eax,dword ptr [ebp-4]
 0059ED89    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059ED8F    mov         ecx,dword ptr [eax]
 0059ED91    call        dword ptr [ecx+8];TStrings.Assign
 0059ED94    mov         eax,dword ptr [ebp-4]
 0059ED97    add         eax,240;TCustomListBox.FSaveItems:TStringList
 0059ED9C    call        FreeAndNil
 0059EDA1    mov         eax,dword ptr [ebp-4]
 0059EDA4    mov         edx,dword ptr [eax+244];TCustomListBox.FSaveTopIndex:Integer
 0059EDAA    mov         eax,dword ptr [ebp-4]
 0059EDAD    call        0059E99C
 0059EDB2    mov         eax,dword ptr [ebp-4]
 0059EDB5    mov         edx,dword ptr [eax+248];TCustomListBox.FSaveItemIndex:Integer
 0059EDBB    mov         eax,dword ptr [ebp-4]
 0059EDBE    mov         ecx,dword ptr [eax]
 0059EDC0    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
 0059EDC6    mov         eax,dword ptr [ebp-4]
 0059EDC9    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 0059EDD3    mov         esp,ebp
 0059EDD5    pop         ebp
 0059EDD6    ret
*}
end;

//0059EDD8
procedure TCustomListBox.DestroyWnd;
begin
{*
 0059EDD8    push        ebp
 0059EDD9    mov         ebp,esp
 0059EDDB    push        ecx
 0059EDDC    mov         dword ptr [ebp-4],eax
 0059EDDF    mov         eax,dword ptr [ebp-4]
 0059EDE2    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059EDE8    mov         edx,dword ptr [eax]
 0059EDEA    call        dword ptr [edx+14];@AbstractError
 0059EDED    test        eax,eax
>0059EDEF    jle         0059EE6A
 0059EDF1    mov         eax,dword ptr [ebp-4]
 0059EDF4    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059EDFA    add         al,0FD
 0059EDFC    sub         al,2
>0059EDFE    jae         0059EE19
 0059EE00    mov         eax,dword ptr [ebp-4]
 0059EE03    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059EE09    mov         edx,dword ptr [eax]
 0059EE0B    call        dword ptr [edx+14];@AbstractError
 0059EE0E    mov         edx,dword ptr [ebp-4]
 0059EE11    mov         dword ptr [edx+234],eax;TCustomListBox.FOldCount:Integer
>0059EE17    jmp         0059EE45
 0059EE19    mov         dl,1
 0059EE1B    mov         eax,[006428B0];TStringList
 0059EE20    call        TObject.Create;TStringList.Create
 0059EE25    mov         edx,dword ptr [ebp-4]
 0059EE28    mov         dword ptr [edx+240],eax;TCustomListBox.FSaveItems:TStringList
 0059EE2E    mov         eax,dword ptr [ebp-4]
 0059EE31    mov         edx,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059EE37    mov         eax,dword ptr [ebp-4]
 0059EE3A    mov         eax,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 0059EE40    mov         ecx,dword ptr [eax]
 0059EE42    call        dword ptr [ecx+8];TStrings.Assign
 0059EE45    mov         eax,dword ptr [ebp-4]
 0059EE48    call        0059E798
 0059EE4D    mov         edx,dword ptr [ebp-4]
 0059EE50    mov         dword ptr [edx+244],eax;TCustomListBox.FSaveTopIndex:Integer
 0059EE56    mov         eax,dword ptr [ebp-4]
 0059EE59    mov         edx,dword ptr [eax]
 0059EE5B    call        dword ptr [edx+0C8];TCustomListBox.sub_0059E338
 0059EE61    mov         edx,dword ptr [ebp-4]
 0059EE64    mov         dword ptr [edx+248],eax;TCustomListBox.FSaveItemIndex:Integer
 0059EE6A    mov         eax,dword ptr [ebp-4]
 0059EE6D    call        TWinControl.DestroyWnd
 0059EE72    pop         ecx
 0059EE73    pop         ebp
 0059EE74    ret
*}
end;

//0059EE78
{*procedure sub_0059EE78(?:?);
begin
 0059EE78    push        ebp
 0059EE79    mov         ebp,esp
 0059EE7B    add         esp,0FFFFFFF8
 0059EE7E    mov         dword ptr [ebp-8],edx
 0059EE81    mov         dword ptr [ebp-4],eax
 0059EE84    mov         eax,dword ptr [ebp-4]
 0059EE87    test        byte ptr [eax+1C],10;TCustomListBox.FComponentState:TComponentState
>0059EE8B    jne         0059EEE8
 0059EE8D    mov         eax,dword ptr [ebp-8]
 0059EE90    cmp         dword ptr [eax],201
>0059EE96    je          0059EEA3
 0059EE98    mov         eax,dword ptr [ebp-8]
 0059EE9B    cmp         dword ptr [eax],203
>0059EEA1    jne         0059EEE8
 0059EEA3    mov         eax,dword ptr [ebp-4]
 0059EEA6    call        005F4270
 0059EEAB    test        al,al
>0059EEAD    jne         0059EEE8
 0059EEAF    mov         eax,dword ptr [ebp-4]
 0059EEB2    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0059EEB6    jne         0059EEE8
 0059EEB8    mov         edx,dword ptr [ebp-8]
 0059EEBB    mov         eax,dword ptr [ebp-4]
 0059EEBE    call        005F8D4C
 0059EEC3    test        al,al
>0059EEC5    jne         0059EEF3
 0059EEC7    mov         ax,[0059EEF8];0x1 gvar_0059EEF8
 0059EECD    mov         edx,dword ptr [ebp-4]
 0059EED0    or          ax,word ptr [edx+54];TCustomListBox.FControlState:TControlState
 0059EED4    mov         edx,dword ptr [ebp-4]
 0059EED7    mov         word ptr [edx+54],ax;TCustomListBox.FControlState:TControlState
 0059EEDB    mov         edx,dword ptr [ebp-8]
 0059EEDE    mov         eax,dword ptr [ebp-4]
 0059EEE1    mov         ecx,dword ptr [eax]
 0059EEE3    call        dword ptr [ecx-14];TObject.Dispatch
>0059EEE6    jmp         0059EEF3
 0059EEE8    mov         edx,dword ptr [ebp-8]
 0059EEEB    mov         eax,dword ptr [ebp-4]
 0059EEEE    call        005F8E0C
 0059EEF3    pop         ecx
 0059EEF4    pop         ecx
 0059EEF5    pop         ebp
 0059EEF6    ret
end;*}

//0059EEFC
{*procedure TCustomListBox.WMLButtonDown(?:?);
begin
 0059EEFC    push        ebp
 0059EEFD    mov         ebp,esp
 0059EEFF    add         esp,0FFFFFFE8
 0059EF02    mov         dword ptr [ebp-8],edx
 0059EF05    mov         dword ptr [ebp-4],eax
 0059EF08    mov         eax,dword ptr [ebp-8]
 0059EF0B    mov         ax,word ptr [eax+4]
 0059EF0F    call        005CCEAC
 0059EF14    mov         byte ptr [ebp-0D],al
 0059EF17    mov         eax,dword ptr [ebp-4]
 0059EF1A    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0059EF1E    jne         0059EF7A
 0059EF20    mov         eax,dword ptr [ebp-4]
 0059EF23    cmp         byte ptr [eax+208],0;TCustomListBox.......................FMultiSelect:Boolean
>0059EF2A    je          0059EF7A
 0059EF2C    test        byte ptr [ebp-0D],1
>0059EF30    je          0059EF38
 0059EF32    test        byte ptr [ebp-0D],4
>0059EF36    je          0059EF7A
 0059EF38    lea         edx,[ebp-18]
 0059EF3B    mov         eax,dword ptr [ebp-8]
 0059EF3E    mov         eax,dword ptr [eax+8]
 0059EF41    call        0063D050
 0059EF46    lea         edx,[ebp-18]
 0059EF49    mov         cl,1
 0059EF4B    mov         eax,dword ptr [ebp-4]
 0059EF4E    call        0059EA30
 0059EF53    mov         dword ptr [ebp-0C],eax
 0059EF56    cmp         dword ptr [ebp-0C],0
>0059EF5A    jl          0059EF7A
 0059EF5C    mov         edx,dword ptr [ebp-0C]
 0059EF5F    mov         eax,dword ptr [ebp-4]
 0059EF62    call        0059E5C8
 0059EF67    test        al,al
>0059EF69    je          0059EF7A
 0059EF6B    or          ecx,0FFFFFFFF
 0059EF6E    xor         edx,edx
 0059EF70    mov         eax,dword ptr [ebp-4]
 0059EF73    call        005F4150
>0059EF78    jmp         0059EFB3
 0059EF7A    mov         edx,dword ptr [ebp-8]
 0059EF7D    mov         eax,dword ptr [ebp-4]
 0059EF80    call        TControl.WMLButtonDown
 0059EF85    mov         eax,dword ptr [ebp-4]
 0059EF88    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0059EF8C    jne         0059EFB3
 0059EF8E    mov         eax,dword ptr [ebp-4]
 0059EF91    cmp         byte ptr [eax+208],0;TCustomListBox........................FMultiSelect:Boolean
>0059EF98    je          0059EFA6
 0059EF9A    test        byte ptr [ebp-0D],4
>0059EF9E    jne         0059EFB3
 0059EFA0    test        byte ptr [ebp-0D],1
>0059EFA4    jne         0059EFB3
 0059EFA6    or          ecx,0FFFFFFFF
 0059EFA9    xor         edx,edx
 0059EFAB    mov         eax,dword ptr [ebp-4]
 0059EFAE    call        005F4150
 0059EFB3    mov         esp,ebp
 0059EFB5    pop         ebp
 0059EFB6    ret
end;*}

//0059EFB8
{*procedure TCustomListBox.sub_0059EFB8(?:?);
begin
 0059EFB8    push        ebp
 0059EFB9    mov         ebp,esp
 0059EFBB    add         esp,0FFFFFFF8
 0059EFBE    push        esi
 0059EFBF    mov         dword ptr [ebp-8],edx
 0059EFC2    mov         dword ptr [ebp-4],eax
 0059EFC5    mov         eax,dword ptr [ebp-8]
 0059EFC8    mov         ax,word ptr [eax+6]
 0059EFCC    dec         ax
>0059EFCF    je          0059EFD8
 0059EFD1    dec         ax
>0059EFD4    je          0059EFEE
>0059EFD6    jmp         0059EFFA
 0059EFD8    mov         eax,dword ptr [ebp-4]
 0059EFDB    call        005F3158
 0059EFE0    mov         eax,dword ptr [ebp-4]
 0059EFE3    mov         si,0FFEB
 0059EFE7    call        @CallDynaInst;TControl.sub_005F5478
>0059EFEC    jmp         0059EFFA
 0059EFEE    mov         eax,dword ptr [ebp-4]
 0059EFF1    mov         si,0FFE9
 0059EFF5    call        @CallDynaInst;TControl.sub_005F5508
 0059EFFA    pop         esi
 0059EFFB    pop         ecx
 0059EFFC    pop         ecx
 0059EFFD    pop         ebp
 0059EFFE    ret
end;*}

//0059F000
procedure PaintListBox;
begin
{*
 0059F000    push        ebp
 0059F001    mov         ebp,esp
 0059F003    add         esp,0FFFFFF68
 0059F009    push        esi
 0059F00A    push        edi
 0059F00B    mov         dword ptr [ebp-20],0BC2B
 0059F012    lea         eax,[ebp-60]
 0059F015    mov         dword ptr [ebp-18],eax
 0059F018    mov         eax,dword ptr [ebp+8]
 0059F01B    mov         eax,dword ptr [eax-4]
 0059F01E    call        TWinControl.GetHandle
 0059F023    mov         dword ptr [ebp-1C],eax
 0059F026    mov         dword ptr [ebp-60],2
 0059F02D    mov         dword ptr [ebp-54],1
 0059F034    xor         eax,eax
 0059F036    mov         dword ptr [ebp-50],eax
 0059F039    mov         eax,dword ptr [ebp+8]
 0059F03C    mov         eax,dword ptr [eax-8]
 0059F03F    mov         eax,dword ptr [eax+4]
 0059F042    mov         dword ptr [ebp-48],eax
 0059F045    mov         eax,dword ptr [ebp+8]
 0059F048    mov         eax,dword ptr [eax-4]
 0059F04B    call        TWinControl.GetHandle
 0059F050    mov         dword ptr [ebp-5C],eax
 0059F053    mov         eax,dword ptr [ebp+8]
 0059F056    mov         eax,dword ptr [eax-4]
 0059F059    call        TWinControl.GetHandle
 0059F05E    mov         dword ptr [ebp-4C],eax
 0059F061    mov         dword ptr [ebp-30],0BC2C
 0059F068    mov         eax,dword ptr [ebp+8]
 0059F06B    mov         eax,dword ptr [eax-4]
 0059F06E    call        TWinControl.GetHandle
 0059F073    mov         dword ptr [ebp-2C],eax
 0059F076    lea         eax,[ebp-78]
 0059F079    mov         dword ptr [ebp-28],eax
 0059F07C    mov         dword ptr [ebp-78],2
 0059F083    mov         eax,dword ptr [ebp+8]
 0059F086    mov         eax,dword ptr [eax-4]
 0059F089    call        TWinControl.GetHandle
 0059F08E    mov         dword ptr [ebp-74],eax
 0059F091    xor         eax,eax
 0059F093    mov         dword ptr [ebp-4],eax
 0059F096    mov         eax,dword ptr [ebp+8]
 0059F099    mov         eax,dword ptr [eax-4]
 0059F09C    call        0059E798
 0059F0A1    mov         dword ptr [ebp-8],eax
 0059F0A4    lea         eax,[ebp-88]
 0059F0AA    push        eax
 0059F0AB    mov         eax,dword ptr [ebp+8]
 0059F0AE    mov         eax,dword ptr [eax-8]
 0059F0B1    mov         eax,dword ptr [eax+4]
 0059F0B4    push        eax
 0059F0B5    call        GDI32.GetClipBox
 0059F0BA    mov         eax,dword ptr [ebp+8]
 0059F0BD    mov         eax,dword ptr [eax-4]
 0059F0C0    mov         eax,dword ptr [eax+4C]
 0059F0C3    mov         dword ptr [ebp-0C],eax
 0059F0C6    mov         eax,dword ptr [ebp+8]
 0059F0C9    mov         eax,dword ptr [eax-4]
 0059F0CC    mov         eax,dword ptr [eax+48]
 0059F0CF    mov         dword ptr [ebp-10],eax
 0059F0D2    mov         eax,dword ptr [ebp-4]
 0059F0D5    cmp         eax,dword ptr [ebp-0C]
>0059F0D8    jge         0059F1A1
 0059F0DE    mov         eax,dword ptr [ebp-8]
 0059F0E1    mov         dword ptr [ebp-70],eax
 0059F0E4    mov         eax,dword ptr [ebp+8]
 0059F0E7    mov         eax,dword ptr [eax-4]
 0059F0EA    mov         eax,dword ptr [eax+218]
 0059F0F0    mov         edx,dword ptr [eax]
 0059F0F2    call        dword ptr [edx+14]
 0059F0F5    cmp         eax,dword ptr [ebp-8]
>0059F0F8    jle         0059F111
 0059F0FA    mov         eax,dword ptr [ebp+8]
 0059F0FD    mov         eax,dword ptr [eax-4]
 0059F100    mov         eax,dword ptr [eax+218]
 0059F106    mov         edx,dword ptr [ebp-8]
 0059F109    mov         ecx,dword ptr [eax]
 0059F10B    call        dword ptr [ecx+18]
 0059F10E    mov         dword ptr [ebp-64],eax
 0059F111    mov         eax,dword ptr [ebp-10]
 0059F114    mov         dword ptr [ebp-6C],eax
 0059F117    mov         eax,dword ptr [ebp+8]
 0059F11A    mov         eax,dword ptr [eax-4]
 0059F11D    mov         eax,dword ptr [eax+230]
 0059F123    mov         dword ptr [ebp-68],eax
 0059F126    mov         eax,dword ptr [ebp-64]
 0059F129    mov         dword ptr [ebp-34],eax
 0059F12C    mov         eax,dword ptr [ebp-8]
 0059F12F    mov         dword ptr [ebp-58],eax
 0059F132    lea         edx,[ebp-30]
 0059F135    mov         eax,dword ptr [ebp+8]
 0059F138    mov         eax,dword ptr [eax-4]
 0059F13B    mov         ecx,dword ptr [eax]
 0059F13D    call        dword ptr [ecx-14]
 0059F140    mov         eax,dword ptr [ebp-4]
 0059F143    add         eax,dword ptr [ebp-68]
 0059F146    push        eax
 0059F147    lea         eax,[ebp-98]
 0059F14D    push        eax
 0059F14E    mov         ecx,dword ptr [ebp-6C]
 0059F151    mov         edx,dword ptr [ebp-4]
 0059F154    xor         eax,eax
 0059F156    call        Rect
 0059F15B    lea         esi,[ebp-98]
 0059F161    lea         edi,[ebp-44]
 0059F164    movs        dword ptr [edi],dword ptr [esi]
 0059F165    movs        dword ptr [edi],dword ptr [esi]
 0059F166    movs        dword ptr [edi],dword ptr [esi]
 0059F167    movs        dword ptr [edi],dword ptr [esi]
 0059F168    lea         edx,[ebp-20]
 0059F16B    mov         eax,dword ptr [ebp+8]
 0059F16E    mov         eax,dword ptr [eax-4]
 0059F171    mov         ecx,dword ptr [eax]
 0059F173    call        dword ptr [ecx-14]
 0059F176    mov         eax,dword ptr [ebp-68]
 0059F179    add         dword ptr [ebp-4],eax
 0059F17C    inc         dword ptr [ebp-8]
 0059F17F    mov         eax,dword ptr [ebp+8]
 0059F182    mov         eax,dword ptr [eax-4]
 0059F185    mov         eax,dword ptr [eax+218]
 0059F18B    mov         edx,dword ptr [eax]
 0059F18D    call        dword ptr [edx+14]
 0059F190    cmp         eax,dword ptr [ebp-8]
>0059F193    jle         0059F1A1
 0059F195    mov         eax,dword ptr [ebp-4]
 0059F198    cmp         eax,dword ptr [ebp-0C]
>0059F19B    jl          0059F0DE
 0059F1A1    pop         edi
 0059F1A2    pop         esi
 0059F1A3    mov         esp,ebp
 0059F1A5    pop         ebp
 0059F1A6    ret
*}
end;

//0059F1A8
procedure TCustomListBox.WMPaint(var Message:TWMPaint);
begin
{*
 0059F1A8    push        ebp
 0059F1A9    mov         ebp,esp
 0059F1AB    add         esp,0FFFFFFF8
 0059F1AE    mov         dword ptr [ebp-8],edx
 0059F1B1    mov         dword ptr [ebp-4],eax
 0059F1B4    mov         eax,dword ptr [ebp-8]
 0059F1B7    cmp         dword ptr [eax+4],0
>0059F1BB    je          0059F1C6
 0059F1BD    push        ebp
 0059F1BE    call        PaintListBox
 0059F1C3    pop         ecx
>0059F1C4    jmp         0059F1D1
 0059F1C6    mov         edx,dword ptr [ebp-8]
 0059F1C9    mov         eax,dword ptr [ebp-4]
 0059F1CC    call        TWinControl.WMPaint
 0059F1D1    pop         ecx
 0059F1D2    pop         ecx
 0059F1D3    pop         ebp
 0059F1D4    ret
*}
end;

//0059F1D8
{*procedure TCustomListBox.WMSize(?:?);
begin
 0059F1D8    push        ebp
 0059F1D9    mov         ebp,esp
 0059F1DB    add         esp,0FFFFFFF8
 0059F1DE    mov         dword ptr [ebp-8],edx
 0059F1E1    mov         dword ptr [ebp-4],eax
 0059F1E4    mov         edx,dword ptr [ebp-8]
 0059F1E7    mov         eax,dword ptr [ebp-4]
 0059F1EA    call        TWinControl.WMSize
 0059F1EF    mov         eax,dword ptr [ebp-4]
 0059F1F2    call        0059E264
 0059F1F7    pop         ecx
 0059F1F8    pop         ecx
 0059F1F9    pop         ebp
 0059F1FA    ret
end;*}

//0059F1FC
procedure TCustomListBox.sub_0059F1FC;
begin
{*
 0059F1FC    push        ebp
 0059F1FD    mov         ebp,esp
 0059F1FF    add         esp,0FFFFFFDC
 0059F202    mov         dword ptr [ebp-4],eax
 0059F205    mov         dword ptr [ebp-1C],201
 0059F20C    lea         eax,[ebp-0C]
 0059F20F    push        eax
 0059F210    call        USER32.GetCursorPos
 0059F215    lea         ecx,[ebp-24]
 0059F218    lea         edx,[ebp-0C]
 0059F21B    mov         eax,dword ptr [ebp-4]
 0059F21E    call        005F305C
 0059F223    lea         eax,[ebp-24]
 0059F226    call        0063D074
 0059F22B    mov         dword ptr [ebp-14],eax
 0059F22E    xor         eax,eax
 0059F230    mov         dword ptr [ebp-18],eax
 0059F233    xor         eax,eax
 0059F235    mov         dword ptr [ebp-10],eax
 0059F238    lea         edx,[ebp-1C]
 0059F23B    mov         eax,dword ptr [ebp-4]
 0059F23E    mov         ecx,dword ptr [eax]
 0059F240    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0059F243    mov         dword ptr [ebp-1C],202
 0059F24A    lea         edx,[ebp-1C]
 0059F24D    mov         eax,dword ptr [ebp-4]
 0059F250    mov         ecx,dword ptr [eax]
 0059F252    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0059F255    mov         esp,ebp
 0059F257    pop         ebp
 0059F258    ret
*}
end;

//0059F25C
{*procedure sub_0059F25C(?:?; ?:?; ?:?);
begin
 0059F25C    push        ebp
 0059F25D    mov         ebp,esp
 0059F25F    add         esp,0FFFFFFE0
 0059F262    push        ebx
 0059F263    push        esi
 0059F264    push        edi
 0059F265    xor         ebx,ebx
 0059F267    mov         dword ptr [ebp-10],ebx
 0059F26A    mov         esi,ecx
 0059F26C    lea         edi,[ebp-20]
 0059F26F    movs        dword ptr [edi],dword ptr [esi]
 0059F270    movs        dword ptr [edi],dword ptr [esi]
 0059F271    movs        dword ptr [edi],dword ptr [esi]
 0059F272    movs        dword ptr [edi],dword ptr [esi]
 0059F273    mov         dword ptr [ebp-8],edx
 0059F276    mov         dword ptr [ebp-4],eax
 0059F279    xor         eax,eax
 0059F27B    push        ebp
 0059F27C    push        59F385
 0059F281    push        dword ptr fs:[eax]
 0059F284    mov         dword ptr fs:[eax],esp
 0059F287    mov         eax,dword ptr [ebp-4]
 0059F28A    cmp         word ptr [eax+252],0;TCustomListBox.?f252:word
>0059F292    je          0059F2B7
 0059F294    lea         eax,[ebp-20]
 0059F297    push        eax
 0059F298    mov         ax,word ptr [ebp+8]
 0059F29C    push        eax
 0059F29D    mov         ebx,dword ptr [ebp-4]
 0059F2A0    mov         ecx,dword ptr [ebp-8]
 0059F2A3    mov         edx,dword ptr [ebp-4]
 0059F2A6    mov         eax,dword ptr [ebx+254];TCustomListBox.?f254:dword
 0059F2AC    call        dword ptr [ebx+250];TCustomListBox.FOnDrawItem
>0059F2B2    jmp         0059F36F
 0059F2B7    lea         edx,[ebp-20]
 0059F2BA    mov         eax,dword ptr [ebp-4]
 0059F2BD    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F2C3    call        TCanvas.FillRect
 0059F2C8    mov         eax,dword ptr [ebp-4]
 0059F2CB    mov         edx,dword ptr [eax]
 0059F2CD    call        dword ptr [edx+0C4];TCustomListBox.sub_0059E38C
 0059F2D3    cmp         eax,dword ptr [ebp-8]
>0059F2D6    jle         0059F36F
 0059F2DC    mov         edx,824
 0059F2E1    mov         eax,dword ptr [ebp-4]
 0059F2E4    call        005F6724
 0059F2E9    mov         dword ptr [ebp-0C],eax
 0059F2EC    mov         eax,dword ptr [ebp-4]
 0059F2EF    mov         si,0FFC8
 0059F2F3    call        @CallDynaInst;TControl.sub_005F40CC
 0059F2F8    test        al,al
>0059F2FA    jne         0059F302
 0059F2FC    add         dword ptr [ebp-20],2
>0059F300    jmp         0059F306
 0059F302    sub         dword ptr [ebp-18],2
 0059F306    lea         eax,[ebp-10]
 0059F309    call        @LStrClr
 0059F30E    mov         eax,dword ptr [ebp-4]
 0059F311    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059F317    add         al,0FD
 0059F319    sub         al,2
>0059F31B    jae         0059F32D
 0059F31D    lea         ecx,[ebp-10]
 0059F320    mov         edx,dword ptr [ebp-8]
 0059F323    mov         eax,dword ptr [ebp-4]
 0059F326    call        0059F974
>0059F32B    jmp         0059F341
 0059F32D    lea         ecx,[ebp-10]
 0059F330    mov         edx,dword ptr [ebp-8]
 0059F333    mov         eax,dword ptr [ebp-4]
 0059F336    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059F33C    mov         ebx,dword ptr [eax]
 0059F33E    call        dword ptr [ebx+0C];@AbstractError
 0059F341    mov         eax,dword ptr [ebp-0C]
 0059F344    push        eax
 0059F345    lea         eax,[ebp-20]
 0059F348    push        eax
 0059F349    mov         eax,dword ptr [ebp-10]
 0059F34C    call        @LStrLen
 0059F351    push        eax
 0059F352    mov         eax,dword ptr [ebp-10]
 0059F355    call        @LStrToPChar
 0059F35A    push        eax
 0059F35B    mov         eax,dword ptr [ebp-4]
 0059F35E    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F364    call        TCanvas.GetHandle
 0059F369    push        eax
 0059F36A    call        USER32.DrawTextA
 0059F36F    xor         eax,eax
 0059F371    pop         edx
 0059F372    pop         ecx
 0059F373    pop         ecx
 0059F374    mov         dword ptr fs:[eax],edx
 0059F377    push        59F38C
 0059F37C    lea         eax,[ebp-10]
 0059F37F    call        @LStrClr
 0059F384    ret
>0059F385    jmp         @HandleFinally
>0059F38A    jmp         0059F37C
 0059F38C    pop         edi
 0059F38D    pop         esi
 0059F38E    pop         ebx
 0059F38F    mov         esp,ebp
 0059F391    pop         ebp
 0059F392    ret         4
end;*}

//0059F398
{*procedure sub_0059F398(?:?; ?:?);
begin
 0059F398    push        ebp
 0059F399    mov         ebp,esp
 0059F39B    add         esp,0FFFFFFF4
 0059F39E    push        ebx
 0059F39F    mov         dword ptr [ebp-0C],ecx
 0059F3A2    mov         dword ptr [ebp-8],edx
 0059F3A5    mov         dword ptr [ebp-4],eax
 0059F3A8    mov         eax,dword ptr [ebp-4]
 0059F3AB    cmp         word ptr [eax+25A],0;TCustomListBox.?f25A:word
>0059F3B3    je          0059F3CE
 0059F3B5    mov         eax,dword ptr [ebp-0C]
 0059F3B8    push        eax
 0059F3B9    mov         ebx,dword ptr [ebp-4]
 0059F3BC    mov         ecx,dword ptr [ebp-8]
 0059F3BF    mov         edx,dword ptr [ebp-4]
 0059F3C2    mov         eax,dword ptr [ebx+25C];TCustomListBox.?f25C:dword
 0059F3C8    call        dword ptr [ebx+258];TCustomListBox.FOnMeasureItem
 0059F3CE    pop         ebx
 0059F3CF    mov         esp,ebp
 0059F3D1    pop         ebp
 0059F3D2    ret
end;*}

//0059F3D4
{*procedure TCustomListBox.sub_0059F3D4(?:?);
begin
 0059F3D4    push        ebp
 0059F3D5    mov         ebp,esp
 0059F3D7    add         esp,0FFFFFFF0
 0059F3DA    push        ebx
 0059F3DB    mov         dword ptr [ebp-8],edx
 0059F3DE    mov         dword ptr [ebp-4],eax
 0059F3E1    mov         eax,dword ptr [ebp-8]
 0059F3E4    mov         eax,dword ptr [eax+8]
 0059F3E7    mov         dword ptr [ebp-10],eax
 0059F3EA    mov         eax,dword ptr [ebp-10]
 0059F3ED    mov         ax,word ptr [eax+10]
 0059F3F1    mov         word ptr [ebp-0A],ax
 0059F3F5    mov         eax,dword ptr [ebp-10]
 0059F3F8    mov         edx,dword ptr [eax+18]
 0059F3FB    mov         eax,dword ptr [ebp-4]
 0059F3FE    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F404    call        TCanvas.SetHandle
 0059F409    mov         eax,dword ptr [ebp-4]
 0059F40C    mov         edx,dword ptr [eax+68];TCustomListBox.FFont:TFont
 0059F40F    mov         eax,dword ptr [ebp-4]
 0059F412    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F418    call        TCanvas.SetFont
 0059F41D    mov         eax,dword ptr [ebp-4]
 0059F420    mov         edx,dword ptr [eax+170];TCustomListBox.FBrush:TBrush
 0059F426    mov         eax,dword ptr [ebp-4]
 0059F429    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F42F    call        TCanvas.SetBrush
 0059F434    mov         eax,dword ptr [ebp-10]
 0059F437    cmp         dword ptr [eax+8],0
>0059F43B    jl          0059F46F
 0059F43D    test        byte ptr [ebp-0A],1
>0059F441    je          0059F46F
 0059F443    mov         eax,dword ptr [ebp-4]
 0059F446    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F44C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0059F44F    mov         edx,8000000D
 0059F454    call        TBrush.SetColor
 0059F459    mov         eax,dword ptr [ebp-4]
 0059F45C    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F462    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0059F465    mov         edx,8000000E
 0059F46A    call        TFont.SetColor
 0059F46F    mov         eax,dword ptr [ebp-10]
 0059F472    cmp         dword ptr [eax+8],0
>0059F476    jl          0059F496
 0059F478    mov         ax,word ptr [ebp-0A]
 0059F47C    push        eax
 0059F47D    mov         eax,dword ptr [ebp-10]
 0059F480    lea         ecx,[eax+1C]
 0059F483    mov         eax,dword ptr [ebp-10]
 0059F486    mov         edx,dword ptr [eax+8]
 0059F489    mov         eax,dword ptr [ebp-4]
 0059F48C    mov         ebx,dword ptr [eax]
 0059F48E    call        dword ptr [ebx+0F4];TCustomListBox.sub_0059F25C
>0059F494    jmp         0059F4AA
 0059F496    mov         eax,dword ptr [ebp-10]
 0059F499    lea         edx,[eax+1C]
 0059F49C    mov         eax,dword ptr [ebp-4]
 0059F49F    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F4A5    call        TCanvas.FillRect
 0059F4AA    test        byte ptr [ebp-0A],10
>0059F4AE    je          0059F4C3
 0059F4B0    mov         eax,dword ptr [ebp-10]
 0059F4B3    add         eax,1C
 0059F4B6    push        eax
 0059F4B7    mov         eax,dword ptr [ebp-10]
 0059F4BA    mov         eax,dword ptr [eax+18]
 0059F4BD    push        eax
 0059F4BE    call        USER32.DrawFocusRect
 0059F4C3    xor         edx,edx
 0059F4C5    mov         eax,dword ptr [ebp-4]
 0059F4C8    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0059F4CE    call        TCanvas.SetHandle
 0059F4D3    pop         ebx
 0059F4D4    mov         esp,ebp
 0059F4D6    pop         ebp
 0059F4D7    ret
end;*}

//0059F4D8
{*procedure TCustomListBox.sub_0059F4D8(?:?);
begin
 0059F4D8    push        ebp
 0059F4D9    mov         ebp,esp
 0059F4DB    add         esp,0FFFFFFF4
 0059F4DE    push        ebx
 0059F4DF    mov         dword ptr [ebp-8],edx
 0059F4E2    mov         dword ptr [ebp-4],eax
 0059F4E5    mov         eax,dword ptr [ebp-8]
 0059F4E8    mov         eax,dword ptr [eax+8]
 0059F4EB    mov         dword ptr [ebp-0C],eax
 0059F4EE    mov         eax,dword ptr [ebp-4]
 0059F4F1    mov         eax,dword ptr [eax+230];TCustomListBox.FItemHeight:Integer
 0059F4F7    mov         edx,dword ptr [ebp-0C]
 0059F4FA    mov         dword ptr [edx+10],eax
 0059F4FD    mov         eax,dword ptr [ebp-4]
 0059F500    cmp         byte ptr [eax+238],2;TCustomListBox.FStyle:TListBoxStyle
>0059F507    jne         0059F520
 0059F509    mov         eax,dword ptr [ebp-0C]
 0059F50C    lea         ecx,[eax+10]
 0059F50F    mov         eax,dword ptr [ebp-0C]
 0059F512    mov         edx,dword ptr [eax+8]
 0059F515    mov         eax,dword ptr [ebp-4]
 0059F518    mov         ebx,dword ptr [eax]
 0059F51A    call        dword ptr [ebx+0F8];TCustomListBox.sub_0059F398
 0059F520    pop         ebx
 0059F521    mov         esp,ebp
 0059F523    pop         ebp
 0059F524    ret
end;*}

//0059F528
{*procedure TCustomListBox.CMCtl3DChanged(?:?);
begin
 0059F528    push        ebp
 0059F529    mov         ebp,esp
 0059F52B    add         esp,0FFFFFFF8
 0059F52E    mov         dword ptr [ebp-8],edx
 0059F531    mov         dword ptr [ebp-4],eax
 0059F534    mov         eax,[006E9DD8];^gvar_006ECDE0
 0059F539    cmp         byte ptr [eax],0
>0059F53C    je          0059F552
 0059F53E    mov         eax,dword ptr [ebp-4]
 0059F541    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>0059F548    jne         0059F552
 0059F54A    mov         eax,dword ptr [ebp-4]
 0059F54D    call        TWinControl.RecreateWnd
 0059F552    mov         edx,dword ptr [ebp-8]
 0059F555    mov         eax,dword ptr [ebp-4]
 0059F558    call        TWinControl.CMCtl3DChanged
 0059F55D    pop         ecx
 0059F55E    pop         ecx
 0059F55F    pop         ebp
 0059F560    ret
end;*}

//0059F564
procedure sub_0059F564;
begin
{*
 0059F564    push        ebp
 0059F565    mov         ebp,esp
 0059F567    add         esp,0FFFFFFF4
 0059F56A    mov         dword ptr [ebp-4],eax
 0059F56D    mov         eax,dword ptr [ebp-4]
 0059F570    cmp         byte ptr [eax+208],0;TCustomListBox.........................FMultiSelect:Boolean
>0059F577    je          0059F5AC
 0059F579    mov         eax,dword ptr [ebp-4]
 0059F57C    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0059F582    mov         edx,dword ptr [eax]
 0059F584    call        dword ptr [edx+14];@AbstractError
 0059F587    dec         eax
 0059F588    test        eax,eax
>0059F58A    jl          0059F5AC
 0059F58C    inc         eax
 0059F58D    mov         dword ptr [ebp-0C],eax
 0059F590    mov         dword ptr [ebp-8],0
 0059F597    mov         cl,1
 0059F599    mov         edx,dword ptr [ebp-8]
 0059F59C    mov         eax,dword ptr [ebp-4]
 0059F59F    call        0059E630
 0059F5A4    inc         dword ptr [ebp-8]
 0059F5A7    dec         dword ptr [ebp-0C]
>0059F5AA    jne         0059F597
 0059F5AC    mov         esp,ebp
 0059F5AE    pop         ebp
 0059F5AF    ret
*}
end;

//0059F5B0
{*procedure sub_0059F5B0(?:?);
begin
 0059F5B0    push        ebp
 0059F5B1    mov         ebp,esp
 0059F5B3    push        ecx
 0059F5B4    push        esi
 0059F5B5    mov         eax,dword ptr [ebp+8]
 0059F5B8    mov         eax,dword ptr [eax-4]
 0059F5BB    mov         al,byte ptr [eax+238]
 0059F5C1    add         al,0FD
 0059F5C3    sub         al,2
>0059F5C5    jae         0059F5E3
 0059F5C7    mov         eax,dword ptr [ebp+8]
 0059F5CA    mov         eax,dword ptr [eax-4]
 0059F5CD    mov         edx,dword ptr [eax+21C]
 0059F5D3    mov         eax,dword ptr [ebp+8]
 0059F5D6    mov         eax,dword ptr [eax-4]
 0059F5D9    call        0059F9EC
 0059F5DE    mov         dword ptr [ebp-4],eax
>0059F5E1    jmp         0059F610
 0059F5E3    mov         eax,dword ptr [ebp+8]
 0059F5E6    mov         eax,dword ptr [eax-4]
 0059F5E9    mov         eax,dword ptr [eax+21C]
 0059F5EF    call        @LStrToPChar
 0059F5F4    push        eax
 0059F5F5    push        0FF
 0059F5F7    push        18F
 0059F5FC    mov         eax,dword ptr [ebp+8]
 0059F5FF    mov         eax,dword ptr [eax-4]
 0059F602    call        TWinControl.GetHandle
 0059F607    push        eax
 0059F608    call        USER32.SendMessageA
 0059F60D    mov         dword ptr [ebp-4],eax
 0059F610    cmp         dword ptr [ebp-4],0FFFFFFFF
>0059F614    je          0059F679
 0059F616    mov         eax,dword ptr [ebp+8]
 0059F619    mov         eax,dword ptr [eax-4]
 0059F61C    cmp         byte ptr [eax+208],0
>0059F623    je          0059F659
 0059F625    mov         eax,dword ptr [ebp+8]
 0059F628    mov         eax,dword ptr [eax-4]
 0059F62B    mov         edx,dword ptr [eax]
 0059F62D    call        dword ptr [edx+0D8]
 0059F633    mov         dx,word ptr [ebp-4]
 0059F637    mov         ax,word ptr [ebp-4]
 0059F63B    call        0063D0C4
 0059F640    push        eax
 0059F641    push        1
 0059F643    push        19B
 0059F648    mov         eax,dword ptr [ebp+8]
 0059F64B    mov         eax,dword ptr [eax-4]
 0059F64E    call        TWinControl.GetHandle
 0059F653    push        eax
 0059F654    call        USER32.SendMessageA
 0059F659    mov         eax,dword ptr [ebp+8]
 0059F65C    mov         eax,dword ptr [eax-4]
 0059F65F    mov         edx,dword ptr [ebp-4]
 0059F662    mov         ecx,dword ptr [eax]
 0059F664    call        dword ptr [ecx+0CC]
 0059F66A    mov         eax,dword ptr [ebp+8]
 0059F66D    mov         eax,dword ptr [eax-4]
 0059F670    mov         si,0FFEB
 0059F674    call        @CallDynaInst
 0059F679    mov         eax,dword ptr [ebp+8]
 0059F67C    mov         eax,dword ptr [eax-8]
 0059F67F    mov         al,byte ptr [eax]
 0059F681    not         al
 0059F683    sub         al,8
>0059F685    je          0059F68F
 0059F687    sub         al,5
>0059F689    je          0059F68F
 0059F68B    sub         al,0E
>0059F68D    jne         0059F698
 0059F68F    mov         eax,dword ptr [ebp+8]
 0059F692    mov         eax,dword ptr [eax-8]
 0059F695    mov         byte ptr [eax],0
 0059F698    pop         esi
 0059F699    pop         ecx
 0059F69A    pop         ebp
 0059F69B    ret
end;*}

//0059F69C
{*procedure TCustomListBox.sub_0059F69C(?:?);
begin
 0059F69C    push        ebp
 0059F69D    mov         ebp,esp
 0059F69F    add         esp,0FFFFFFD0
 0059F6A2    push        esi
 0059F6A3    xor         ecx,ecx
 0059F6A5    mov         dword ptr [ebp-30],ecx
 0059F6A8    mov         dword ptr [ebp-28],ecx
 0059F6AB    mov         dword ptr [ebp-2C],ecx
 0059F6AE    mov         dword ptr [ebp-8],edx
 0059F6B1    mov         dword ptr [ebp-4],eax
 0059F6B4    xor         eax,eax
 0059F6B6    push        ebp
 0059F6B7    push        59F86D
 0059F6BC    push        dword ptr fs:[eax]
 0059F6BF    mov         dword ptr fs:[eax],esp
 0059F6C2    mov         edx,dword ptr [ebp-8]
 0059F6C5    mov         eax,dword ptr [ebp-4]
 0059F6C8    call        TWinControl.sub_005FAA3C
 0059F6CD    mov         eax,dword ptr [ebp-4]
 0059F6D0    cmp         byte ptr [eax+210],0;TCustomListBox.FAutoComplete:Boolean
>0059F6D7    je          0059F852
 0059F6DD    call        KERNEL32.GetTickCount
 0059F6E2    mov         edx,dword ptr [ebp-4]
 0059F6E5    sub         eax,dword ptr [edx+220]
 0059F6EB    cmp         eax,1F4
>0059F6F0    jb          0059F6FF
 0059F6F2    mov         eax,dword ptr [ebp-4]
 0059F6F5    add         eax,21C;TCustomListBox.FFilter:String
 0059F6FA    call        @LStrClr
 0059F6FF    call        KERNEL32.GetTickCount
 0059F704    mov         edx,dword ptr [ebp-4]
 0059F707    mov         dword ptr [edx+220],eax;TCustomListBox.FLastTime:Cardinal
 0059F70D    mov         eax,dword ptr [ebp-8]
 0059F710    mov         al,byte ptr [eax]
 0059F712    cmp         al,8
>0059F714    je          0059F7DA
 0059F71A    mov         eax,dword ptr [ebp-8]
 0059F71D    mov         al,byte ptr [eax]
 0059F71F    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 0059F725    and         eax,0FF
 0059F72A    bt          dword ptr [edx],eax
>0059F72D    jae         0059F799
 0059F72F    push        1
 0059F731    push        102
 0059F736    push        102
 0059F73B    mov         eax,dword ptr [ebp-4]
 0059F73E    call        TWinControl.GetHandle
 0059F743    push        eax
 0059F744    lea         eax,[ebp-24]
 0059F747    push        eax
 0059F748    call        USER32.PeekMessageA
 0059F74D    test        eax,eax
>0059F74F    je          0059F81E
 0059F755    mov         eax,dword ptr [ebp-4]
 0059F758    push        dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F75E    lea         eax,[ebp-28]
 0059F761    mov         edx,dword ptr [ebp-8]
 0059F764    mov         dl,byte ptr [edx]
 0059F766    call        @LStrFromChar
 0059F76B    push        dword ptr [ebp-28]
 0059F76E    lea         eax,[ebp-2C]
 0059F771    mov         edx,dword ptr [ebp-1C]
 0059F774    call        @LStrFromChar
 0059F779    push        dword ptr [ebp-2C]
 0059F77C    mov         eax,dword ptr [ebp-4]
 0059F77F    add         eax,21C;TCustomListBox.FFilter:String
 0059F784    mov         edx,3
 0059F789    call        @LStrCatN
 0059F78E    mov         eax,dword ptr [ebp-8]
 0059F791    mov         byte ptr [eax],0
>0059F794    jmp         0059F81E
 0059F799    lea         eax,[ebp-30]
 0059F79C    mov         edx,dword ptr [ebp-8]
 0059F79F    mov         dl,byte ptr [edx]
 0059F7A1    call        @LStrFromChar
 0059F7A6    mov         edx,dword ptr [ebp-30]
 0059F7A9    mov         eax,dword ptr [ebp-4]
 0059F7AC    add         eax,21C;TCustomListBox.FFilter:String
 0059F7B1    call        @LStrCat
>0059F7B6    jmp         0059F81E
 0059F7B8    mov         eax,dword ptr [ebp-4]
 0059F7BB    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F7C1    call        @LStrLen
 0059F7C6    mov         edx,eax
 0059F7C8    mov         eax,dword ptr [ebp-4]
 0059F7CB    add         eax,21C;TCustomListBox.FFilter:String
 0059F7D0    mov         ecx,1
 0059F7D5    call        @LStrDelete
 0059F7DA    mov         eax,dword ptr [ebp-4]
 0059F7DD    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F7E3    call        @LStrLen
 0059F7E8    mov         edx,eax
 0059F7EA    mov         eax,dword ptr [ebp-4]
 0059F7ED    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F7F3    call        0065CF98
 0059F7F8    cmp         al,2
>0059F7FA    je          0059F7B8
 0059F7FC    mov         eax,dword ptr [ebp-4]
 0059F7FF    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F805    call        @LStrLen
 0059F80A    mov         edx,eax
 0059F80C    mov         eax,dword ptr [ebp-4]
 0059F80F    add         eax,21C;TCustomListBox.FFilter:String
 0059F814    mov         ecx,1
 0059F819    call        @LStrDelete
 0059F81E    mov         eax,dword ptr [ebp-4]
 0059F821    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0059F827    call        @LStrLen
 0059F82C    test        eax,eax
>0059F82E    jle         0059F839
 0059F830    push        ebp
 0059F831    call        0059F5B0
 0059F836    pop         ecx
>0059F837    jmp         0059F852
 0059F839    xor         edx,edx
 0059F83B    mov         eax,dword ptr [ebp-4]
 0059F83E    mov         ecx,dword ptr [eax]
 0059F840    call        dword ptr [ecx+0CC];TCustomListBox.sub_0059E3F8
 0059F846    mov         eax,dword ptr [ebp-4]
 0059F849    mov         si,0FFEB
 0059F84D    call        @CallDynaInst;TControl.sub_005F5478
 0059F852    xor         eax,eax
 0059F854    pop         edx
 0059F855    pop         ecx
 0059F856    pop         ecx
 0059F857    mov         dword ptr fs:[eax],edx
 0059F85A    push        59F874
 0059F85F    lea         eax,[ebp-30]
 0059F862    mov         edx,3
 0059F867    call        @LStrArrayClr
 0059F86C    ret
>0059F86D    jmp         @HandleFinally
>0059F872    jmp         0059F85F
 0059F874    pop         esi
 0059F875    mov         esp,ebp
 0059F877    pop         ebp
 0059F878    ret
end;*}

//0059F87C
procedure sub_0059F87C(?:TCustomListBox; ?:Integer);
begin
{*
 0059F87C    push        ebp
 0059F87D    mov         ebp,esp
 0059F87F    add         esp,0FFFFFFE4
 0059F882    xor         ecx,ecx
 0059F884    mov         dword ptr [ebp-1C],ecx
 0059F887    mov         dword ptr [ebp-18],ecx
 0059F88A    mov         dword ptr [ebp-8],edx
 0059F88D    mov         dword ptr [ebp-4],eax
 0059F890    xor         eax,eax
 0059F892    push        ebp
 0059F893    push        59F968
 0059F898    push        dword ptr fs:[eax]
 0059F89B    mov         dword ptr fs:[eax],esp
 0059F89E    mov         eax,dword ptr [ebp-4]
 0059F8A1    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0059F8A7    add         al,0FD
 0059F8A9    sub         al,2
>0059F8AB    jae         0059F919
 0059F8AD    push        0
 0059F8AF    mov         eax,dword ptr [ebp-8]
 0059F8B2    push        eax
 0059F8B3    push        1A7
 0059F8B8    mov         eax,dword ptr [ebp-4]
 0059F8BB    call        TWinControl.GetHandle
 0059F8C0    push        eax
 0059F8C1    call        USER32.SendMessageA
 0059F8C6    mov         dword ptr [ebp-0C],eax
 0059F8C9    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0059F8CD    je          0059F8E3
 0059F8CF    cmp         dword ptr [ebp-0C],0FFFFFFFE
>0059F8D3    je          0059F8E3
 0059F8D5    mov         eax,dword ptr [ebp-8]
 0059F8D8    mov         edx,dword ptr [ebp-4]
 0059F8DB    mov         dword ptr [edx+214],eax;TCustomListBox.FCount:Integer
>0059F8E1    jmp         0059F94D
 0059F8E3    mov         eax,dword ptr [ebp-4]
 0059F8E6    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 0059F8E9    mov         dword ptr [ebp-14],eax
 0059F8EC    mov         byte ptr [ebp-10],0B
 0059F8F0    lea         eax,[ebp-14]
 0059F8F3    push        eax
 0059F8F4    push        0
 0059F8F6    lea         edx,[ebp-18]
 0059F8F9    mov         eax,[006E9FF8];^gvar_0063CE00
 0059F8FE    call        LoadResString
 0059F903    mov         ecx,dword ptr [ebp-18]
 0059F906    mov         dl,1
 0059F908    mov         eax,[00656774];Exception
 0059F90D    call        Exception.CreateFmt;Exception.Create
 0059F912    call        @RaiseExcept
>0059F917    jmp         0059F94D
 0059F919    mov         eax,dword ptr [ebp-4]
 0059F91C    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 0059F91F    mov         dword ptr [ebp-14],eax
 0059F922    mov         byte ptr [ebp-10],0B
 0059F926    lea         eax,[ebp-14]
 0059F929    push        eax
 0059F92A    push        0
 0059F92C    lea         edx,[ebp-1C]
 0059F92F    mov         eax,[006E9FFC];^gvar_0063CE08
 0059F934    call        LoadResString
 0059F939    mov         ecx,dword ptr [ebp-1C]
 0059F93C    mov         dl,1
 0059F93E    mov         eax,[00656774];Exception
 0059F943    call        Exception.CreateFmt;Exception.Create
 0059F948    call        @RaiseExcept
 0059F94D    xor         eax,eax
 0059F94F    pop         edx
 0059F950    pop         ecx
 0059F951    pop         ecx
 0059F952    mov         dword ptr fs:[eax],edx
 0059F955    push        59F96F
 0059F95A    lea         eax,[ebp-1C]
 0059F95D    mov         edx,2
 0059F962    call        @LStrArrayClr
 0059F967    ret
>0059F968    jmp         @HandleFinally
>0059F96D    jmp         0059F95A
 0059F96F    mov         esp,ebp
 0059F971    pop         ebp
 0059F972    ret
*}
end;

//0059F974
{*procedure sub_0059F974(?:TCustomListBox; ?:?; ?:AnsiString);
begin
 0059F974    push        ebp
 0059F975    mov         ebp,esp
 0059F977    add         esp,0FFFFFFF4
 0059F97A    push        ebx
 0059F97B    mov         dword ptr [ebp-0C],ecx
 0059F97E    mov         dword ptr [ebp-8],edx
 0059F981    mov         dword ptr [ebp-4],eax
 0059F984    mov         eax,dword ptr [ebp-4]
 0059F987    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>0059F98F    je          0059F9AA
 0059F991    mov         eax,dword ptr [ebp-0C]
 0059F994    push        eax
 0059F995    mov         ebx,dword ptr [ebp-4]
 0059F998    mov         ecx,dword ptr [ebp-8]
 0059F99B    mov         edx,dword ptr [ebp-4]
 0059F99E    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 0059F9A4    call        dword ptr [ebx+260];TCustomListBox.FOnData
 0059F9AA    pop         ebx
 0059F9AB    mov         esp,ebp
 0059F9AD    pop         ebp
 0059F9AE    ret
end;*}

//0059F9B0
{*function sub_0059F9B0(?:TCustomListBox; ?:?):?;
begin
 0059F9B0    push        ebp
 0059F9B1    mov         ebp,esp
 0059F9B3    add         esp,0FFFFFFF4
 0059F9B6    push        ebx
 0059F9B7    mov         dword ptr [ebp-8],edx
 0059F9BA    mov         dword ptr [ebp-4],eax
 0059F9BD    mov         eax,dword ptr [ebp-4]
 0059F9C0    cmp         word ptr [eax+272],0;TCustomListBox.?f272:word
>0059F9C8    je          0059F9E3
 0059F9CA    lea         eax,[ebp-0C]
 0059F9CD    push        eax
 0059F9CE    mov         ebx,dword ptr [ebp-4]
 0059F9D1    mov         ecx,dword ptr [ebp-8]
 0059F9D4    mov         edx,dword ptr [ebp-4]
 0059F9D7    mov         eax,dword ptr [ebx+274];TCustomListBox.?f274:dword
 0059F9DD    call        dword ptr [ebx+270];TCustomListBox.FOnDataObject
 0059F9E3    mov         eax,dword ptr [ebp-0C]
 0059F9E6    pop         ebx
 0059F9E7    mov         esp,ebp
 0059F9E9    pop         ebp
 0059F9EA    ret
end;*}

//0059F9EC
{*function sub_0059F9EC(?:TCustomListBox; ?:?):?;
begin
 0059F9EC    push        ebp
 0059F9ED    mov         ebp,esp
 0059F9EF    add         esp,0FFFFFFF4
 0059F9F2    push        ebx
 0059F9F3    mov         dword ptr [ebp-8],edx
 0059F9F6    mov         dword ptr [ebp-4],eax
 0059F9F9    mov         eax,dword ptr [ebp-4]
 0059F9FC    cmp         word ptr [eax+26A],0;TCustomListBox.?f26A:word
>0059FA04    je          0059FA20
 0059FA06    mov         ebx,dword ptr [ebp-4]
 0059FA09    mov         ecx,dword ptr [ebp-8]
 0059FA0C    mov         edx,dword ptr [ebp-4]
 0059FA0F    mov         eax,dword ptr [ebx+26C];TCustomListBox.?f26C:dword
 0059FA15    call        dword ptr [ebx+268];TCustomListBox.FOnDataFind
 0059FA1B    mov         dword ptr [ebp-0C],eax
>0059FA1E    jmp         0059FA27
 0059FA20    mov         dword ptr [ebp-0C],0FFFFFFFF
 0059FA27    mov         eax,dword ptr [ebp-0C]
 0059FA2A    pop         ebx
 0059FA2B    mov         esp,ebp
 0059FA2D    pop         ebp
 0059FA2E    ret
end;*}

//0059FA30
{*function TListBox.GetScrollWidth:?;
begin
 0059FA30    push        ebp
 0059FA31    mov         ebp,esp
 0059FA33    add         esp,0FFFFFFF8
 0059FA36    mov         dword ptr [ebp-4],eax
 0059FA39    push        0
 0059FA3B    push        0
 0059FA3D    push        193
 0059FA42    mov         eax,dword ptr [ebp-4]
 0059FA45    call        TWinControl.GetHandle
 0059FA4A    push        eax
 0059FA4B    call        USER32.SendMessageA
 0059FA50    mov         dword ptr [ebp-8],eax
 0059FA53    mov         eax,dword ptr [ebp-8]
 0059FA56    pop         ecx
 0059FA57    pop         ecx
 0059FA58    pop         ebp
 0059FA59    ret
end;*}

//0059FA5C
procedure TListBox.SetScrollWidth(Value:Integer);
begin
{*
 0059FA5C    push        ebp
 0059FA5D    mov         ebp,esp
 0059FA5F    add         esp,0FFFFFFF8
 0059FA62    mov         dword ptr [ebp-8],edx
 0059FA65    mov         dword ptr [ebp-4],eax
 0059FA68    mov         eax,dword ptr [ebp-4]
 0059FA6B    call        TListBox.GetScrollWidth
 0059FA70    cmp         eax,dword ptr [ebp-8]
>0059FA73    je          0059FA8E
 0059FA75    push        0
 0059FA77    mov         eax,dword ptr [ebp-8]
 0059FA7A    push        eax
 0059FA7B    push        194
 0059FA80    mov         eax,dword ptr [ebp-4]
 0059FA83    call        TWinControl.GetHandle
 0059FA88    push        eax
 0059FA89    call        USER32.SendMessageA
 0059FA8E    pop         ecx
 0059FA8F    pop         ecx
 0059FA90    pop         ebp
 0059FA91    ret
*}
end;

//0059FA94
constructor TScrollBar.Create(AOwner:TComponent);
begin
{*
 0059FA94    push        ebp
 0059FA95    mov         ebp,esp
 0059FA97    add         esp,0FFFFFFF4
 0059FA9A    test        dl,dl
>0059FA9C    je          0059FAA6
 0059FA9E    add         esp,0FFFFFFF0
 0059FAA1    call        @ClassCreate
 0059FAA6    mov         dword ptr [ebp-0C],ecx
 0059FAA9    mov         byte ptr [ebp-5],dl
 0059FAAC    mov         dword ptr [ebp-4],eax
 0059FAAF    mov         ecx,dword ptr [ebp-0C]
 0059FAB2    xor         edx,edx
 0059FAB4    mov         eax,dword ptr [ebp-4]
 0059FAB7    call        TWinControl.Create
 0059FABC    mov         edx,79
 0059FAC1    mov         eax,dword ptr [ebp-4]
 0059FAC4    call        TControl.SetWidth
 0059FAC9    push        3
 0059FACB    call        USER32.GetSystemMetrics
 0059FAD0    mov         edx,eax
 0059FAD2    mov         eax,dword ptr [ebp-4]
 0059FAD5    call        TControl.SetHeight
 0059FADA    mov         dl,1
 0059FADC    mov         eax,dword ptr [ebp-4]
 0059FADF    call        TCCalendar.SetTabStop
 0059FAE4    mov         eax,dword ptr [ebp-4]
 0059FAE7    mov         edx,dword ptr ds:[59FB74];0xD0 gvar_0059FB74
 0059FAED    mov         dword ptr [eax+50],edx;TScrollBar.FControlStyle:TControlStyle
 0059FAF0    mov         eax,dword ptr [ebp-4]
 0059FAF3    mov         byte ptr [eax+208],0;TScrollBar.Kind:TScrollBarKind
 0059FAFA    mov         eax,dword ptr [ebp-4]
 0059FAFD    xor         edx,edx
 0059FAFF    mov         dword ptr [eax+20C],edx;TScrollBar.Position:Integer
 0059FB05    mov         eax,dword ptr [ebp-4]
 0059FB08    xor         edx,edx
 0059FB0A    mov         dword ptr [eax+210],edx;TScrollBar.Min:Integer
 0059FB10    mov         eax,dword ptr [ebp-4]
 0059FB13    mov         dword ptr [eax+214],64;TScrollBar.Max:Integer
 0059FB1D    mov         eax,dword ptr [ebp-4]
 0059FB20    mov         word ptr [eax+220],1;TScrollBar.SmallChange:TScrollBarInc
 0059FB29    mov         eax,dword ptr [ebp-4]
 0059FB2C    mov         word ptr [eax+222],1;TScrollBar.LargeChange:TScrollBarInc
 0059FB35    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 0059FB3A    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>0059FB3E    je          0059FB54
 0059FB40    mov         eax,[006EA0EC];^gvar_006E498C
 0059FB45    cmp         dword ptr [eax],2
>0059FB48    jne         0059FB54
 0059FB4A    mov         eax,dword ptr [ebp-4]
 0059FB4D    mov         byte ptr [eax+184],0;TScrollBar.FImeMode:TImeMode
 0059FB54    mov         eax,dword ptr [ebp-4]
 0059FB57    cmp         byte ptr [ebp-5],0
>0059FB5B    je          0059FB6C
 0059FB5D    call        @AfterConstruction
 0059FB62    pop         dword ptr fs:[0]
 0059FB69    add         esp,0C
 0059FB6C    mov         eax,dword ptr [ebp-4]
 0059FB6F    mov         esp,ebp
 0059FB71    pop         ebp
 0059FB72    ret
*}
end;

//0059FB78
{*procedure sub_0059FB78(?:?);
begin
 0059FB78    push        ebp
 0059FB79    mov         ebp,esp
 0059FB7B    add         esp,0FFFFFFF8
 0059FB7E    push        esi
 0059FB7F    mov         dword ptr [ebp-8],edx
 0059FB82    mov         dword ptr [ebp-4],eax
 0059FB85    mov         edx,dword ptr [ebp-8]
 0059FB88    mov         eax,dword ptr [ebp-4]
 0059FB8B    call        005F7FC0
 0059FB90    mov         ecx,59FC10
 0059FB95    mov         edx,dword ptr [ebp-8]
 0059FB98    mov         eax,dword ptr [ebp-4]
 0059FB9B    call        005F7E98
 0059FBA0    mov         eax,dword ptr [ebp-4]
 0059FBA3    movzx       eax,byte ptr [eax+208];TScrollBar.Kind:TScrollBarKind
 0059FBAA    mov         eax,dword ptr [eax*4+6E3B98]
 0059FBB1    mov         edx,dword ptr [ebp-8]
 0059FBB4    or          dword ptr [edx+4],eax
 0059FBB7    mov         eax,dword ptr [ebp-4]
 0059FBBA    cmp         byte ptr [eax+208],1;TScrollBar.Kind:TScrollBarKind
>0059FBC1    jne         0059FBE3
 0059FBC3    mov         eax,dword ptr [ebp-4]
 0059FBC6    mov         si,0FFC8
 0059FBCA    call        @CallDynaInst;TControl.sub_005F40CC
 0059FBCF    test        al,al
>0059FBD1    jne         0059FBDC
 0059FBD3    mov         eax,dword ptr [ebp-8]
 0059FBD6    or          dword ptr [eax+4],4
>0059FBDA    jmp         0059FBE3
 0059FBDC    mov         eax,dword ptr [ebp-8]
 0059FBDF    or          dword ptr [eax+4],2
 0059FBE3    mov         eax,dword ptr [ebp-4]
 0059FBE6    call        0059FCEC
 0059FBEB    test        al,al
>0059FBED    je          0059FBFE
 0059FBEF    mov         eax,dword ptr [ebp-4]
 0059FBF2    mov         dword ptr [eax+21C],1;TScrollBar.FRTLFactor:Integer
>0059FBFC    jmp         0059FC0B
 0059FBFE    mov         eax,dword ptr [ebp-4]
 0059FC01    mov         dword ptr [eax+21C],0FFFFFFFF;TScrollBar.FRTLFactor:Integer
 0059FC0B    pop         esi
 0059FC0C    pop         ecx
 0059FC0D    pop         ecx
 0059FC0E    pop         ebp
 0059FC0F    ret
end;*}

//0059FC1C
procedure TScrollBar.CreateWnd;
begin
{*
 0059FC1C    push        ebp
 0059FC1D    mov         ebp,esp
 0059FC1F    add         esp,0FFFFFFD0
 0059FC22    mov         dword ptr [ebp-4],eax
 0059FC25    lea         edx,[ebp-30]
 0059FC28    mov         eax,dword ptr [ebp-4]
 0059FC2B    call        005F2E0C
 0059FC30    mov         eax,dword ptr [ebp-4]
 0059FC33    call        TWinControl.CreateWnd
 0059FC38    lea         edx,[ebp-30]
 0059FC3B    mov         eax,dword ptr [ebp-4]
 0059FC3E    call        005F2E58
 0059FC43    push        0
 0059FC45    mov         eax,dword ptr [ebp-4]
 0059FC48    mov         eax,dword ptr [eax+214];TScrollBar.Max:Integer
 0059FC4E    push        eax
 0059FC4F    mov         eax,dword ptr [ebp-4]
 0059FC52    mov         eax,dword ptr [eax+210];TScrollBar.Min:Integer
 0059FC58    push        eax
 0059FC59    push        2
 0059FC5B    mov         eax,dword ptr [ebp-4]
 0059FC5E    call        TWinControl.GetHandle
 0059FC63    push        eax
 0059FC64    call        USER32.SetScrollRange
 0059FC69    mov         dword ptr [ebp-20],1C
 0059FC70    mov         eax,dword ptr [ebp-4]
 0059FC73    mov         eax,dword ptr [eax+218];TScrollBar.PageSize:Integer
 0059FC79    mov         dword ptr [ebp-10],eax
 0059FC7C    mov         dword ptr [ebp-1C],2
 0059FC83    push        0
 0059FC85    lea         eax,[ebp-20]
 0059FC88    push        eax
 0059FC89    push        2
 0059FC8B    mov         eax,dword ptr [ebp-4]
 0059FC8E    call        TWinControl.GetHandle
 0059FC93    push        eax
 0059FC94    call        USER32.SetScrollInfo
 0059FC99    mov         eax,dword ptr [ebp-4]
 0059FC9C    call        0059FCEC
 0059FCA1    test        al,al
>0059FCA3    je          0059FCC3
 0059FCA5    push        0FF
 0059FCA7    mov         eax,dword ptr [ebp-4]
 0059FCAA    mov         eax,dword ptr [eax+20C];TScrollBar.Position:Integer
 0059FCB0    push        eax
 0059FCB1    push        2
 0059FCB3    mov         eax,dword ptr [ebp-4]
 0059FCB6    call        TWinControl.GetHandle
 0059FCBB    push        eax
 0059FCBC    call        USER32.SetScrollPos
>0059FCC1    jmp         0059FCE8
 0059FCC3    push        0FF
 0059FCC5    mov         eax,dword ptr [ebp-4]
 0059FCC8    mov         eax,dword ptr [eax+214];TScrollBar.Max:Integer
 0059FCCE    mov         edx,dword ptr [ebp-4]
 0059FCD1    sub         eax,dword ptr [edx+20C]
 0059FCD7    push        eax
 0059FCD8    push        2
 0059FCDA    mov         eax,dword ptr [ebp-4]
 0059FCDD    call        TWinControl.GetHandle
 0059FCE2    push        eax
 0059FCE3    call        USER32.SetScrollPos
 0059FCE8    mov         esp,ebp
 0059FCEA    pop         ebp
 0059FCEB    ret
*}
end;

//0059FCEC
{*function sub_0059FCEC(?:TScrollBar):?;
begin
 0059FCEC    push        ebp
 0059FCED    mov         ebp,esp
 0059FCEF    add         esp,0FFFFFFF8
 0059FCF2    mov         dword ptr [ebp-4],eax
 0059FCF5    mov         eax,dword ptr [ebp-4]
 0059FCF8    call        005F406C
 0059FCFD    test        al,al
>0059FCFF    je          0059FD11
 0059FD01    mov         eax,dword ptr [ebp-4]
 0059FD04    cmp         byte ptr [eax+208],1;TScrollBar.Kind:TScrollBarKind
>0059FD0B    je          0059FD11
 0059FD0D    xor         eax,eax
>0059FD0F    jmp         0059FD13
 0059FD11    mov         al,1
 0059FD13    mov         byte ptr [ebp-5],al
 0059FD16    mov         al,byte ptr [ebp-5]
 0059FD19    pop         ecx
 0059FD1A    pop         ecx
 0059FD1B    pop         ebp
 0059FD1C    ret
end;*}

//0059FD20
procedure TScrollBar.SetKind(Value:TScrollBarKind);
begin
{*
 0059FD20    push        ebp
 0059FD21    mov         ebp,esp
 0059FD23    add         esp,0FFFFFFF8
 0059FD26    push        ebx
 0059FD27    mov         byte ptr [ebp-5],dl
 0059FD2A    mov         dword ptr [ebp-4],eax
 0059FD2D    mov         eax,dword ptr [ebp-4]
 0059FD30    mov         al,byte ptr [eax+208];TScrollBar.Kind:TScrollBarKind
 0059FD36    cmp         al,byte ptr [ebp-5]
>0059FD39    je          0059FD7D
 0059FD3B    mov         al,byte ptr [ebp-5]
 0059FD3E    mov         edx,dword ptr [ebp-4]
 0059FD41    mov         byte ptr [edx+208],al;TScrollBar.Kind:TScrollBarKind
 0059FD47    mov         eax,dword ptr [ebp-4]
 0059FD4A    test        byte ptr [eax+1C],1;TScrollBar.FComponentState:TComponentState
>0059FD4E    jne         0059FD75
 0059FD50    mov         eax,dword ptr [ebp-4]
 0059FD53    mov         eax,dword ptr [eax+4C];TScrollBar.Height:Integer
 0059FD56    push        eax
 0059FD57    mov         eax,dword ptr [ebp-4]
 0059FD5A    mov         eax,dword ptr [eax+48];TScrollBar.Width:Integer
 0059FD5D    push        eax
 0059FD5E    mov         eax,dword ptr [ebp-4]
 0059FD61    mov         ecx,dword ptr [eax+44];TScrollBar.Top:Integer
 0059FD64    mov         eax,dword ptr [ebp-4]
 0059FD67    mov         edx,dword ptr [eax+40];TScrollBar.Left:Integer
 0059FD6A    mov         eax,dword ptr [ebp-4]
 0059FD6D    mov         ebx,dword ptr [eax]
 0059FD6F    call        dword ptr [ebx+84];TScrollBar.sub_005FB7F8
 0059FD75    mov         eax,dword ptr [ebp-4]
 0059FD78    call        TWinControl.RecreateWnd
 0059FD7D    pop         ebx
 0059FD7E    pop         ecx
 0059FD7F    pop         ecx
 0059FD80    pop         ebp
 0059FD81    ret
*}
end;

//0059FD84
{*procedure sub_0059FD84(?:TScrollBar; ?:Integer; ?:Integer; ?:?);
begin
 0059FD84    push        ebp
 0059FD85    mov         ebp,esp
 0059FD87    add         esp,0FFFFFFF0
 0059FD8A    push        ebx
 0059FD8B    push        esi
 0059FD8C    xor         ebx,ebx
 0059FD8E    mov         dword ptr [ebp-10],ebx
 0059FD91    mov         dword ptr [ebp-0C],ecx
 0059FD94    mov         dword ptr [ebp-8],edx
 0059FD97    mov         dword ptr [ebp-4],eax
 0059FD9A    xor         eax,eax
 0059FD9C    push        ebp
 0059FD9D    push        59FF08
 0059FDA2    push        dword ptr fs:[eax]
 0059FDA5    mov         dword ptr fs:[eax],esp
 0059FDA8    mov         eax,dword ptr [ebp+8]
 0059FDAB    cmp         eax,dword ptr [ebp-0C]
>0059FDAE    jl          0059FDBE
 0059FDB0    mov         eax,dword ptr [ebp+8]
 0059FDB3    mov         edx,dword ptr [ebp-4]
 0059FDB6    cmp         eax,dword ptr [edx+218]
>0059FDBC    jge         0059FDDF
 0059FDBE    lea         edx,[ebp-10]
 0059FDC1    mov         eax,[006E9E4C];^gvar_0063CAA8
 0059FDC6    call        LoadResString
 0059FDCB    mov         ecx,dword ptr [ebp-10]
 0059FDCE    mov         dl,1
 0059FDD0    mov         eax,[00642244];EInvalidOperation
 0059FDD5    call        Exception.Create;EInvalidOperation.Create
 0059FDDA    call        @RaiseExcept
 0059FDDF    mov         eax,dword ptr [ebp-8]
 0059FDE2    cmp         eax,dword ptr [ebp-0C]
>0059FDE5    jge         0059FDED
 0059FDE7    mov         eax,dword ptr [ebp-0C]
 0059FDEA    mov         dword ptr [ebp-8],eax
 0059FDED    mov         eax,dword ptr [ebp-8]
 0059FDF0    cmp         eax,dword ptr [ebp+8]
>0059FDF3    jle         0059FDFB
 0059FDF5    mov         eax,dword ptr [ebp+8]
 0059FDF8    mov         dword ptr [ebp-8],eax
 0059FDFB    mov         eax,dword ptr [ebp-4]
 0059FDFE    mov         eax,dword ptr [eax+210]
 0059FE04    cmp         eax,dword ptr [ebp-0C]
>0059FE07    jne         0059FE17
 0059FE09    mov         eax,dword ptr [ebp-4]
 0059FE0C    mov         eax,dword ptr [eax+214]
 0059FE12    cmp         eax,dword ptr [ebp+8]
>0059FE15    je          0059FE67
 0059FE17    mov         eax,dword ptr [ebp-0C]
 0059FE1A    mov         edx,dword ptr [ebp-4]
 0059FE1D    mov         dword ptr [edx+210],eax
 0059FE23    mov         eax,dword ptr [ebp+8]
 0059FE26    mov         edx,dword ptr [ebp-4]
 0059FE29    mov         dword ptr [edx+214],eax
 0059FE2F    mov         eax,dword ptr [ebp-4]
 0059FE32    call        TWinControl.HandleAllocated
 0059FE37    test        al,al
>0059FE39    je          0059FE67
 0059FE3B    mov         eax,dword ptr [ebp-4]
 0059FE3E    mov         eax,dword ptr [eax+20C]
 0059FE44    cmp         eax,dword ptr [ebp-8]
 0059FE47    sete        al
 0059FE4A    neg         al
 0059FE4C    sbb         eax,eax
 0059FE4E    push        eax
 0059FE4F    mov         eax,dword ptr [ebp+8]
 0059FE52    push        eax
 0059FE53    mov         eax,dword ptr [ebp-0C]
 0059FE56    push        eax
 0059FE57    push        2
 0059FE59    mov         eax,dword ptr [ebp-4]
 0059FE5C    call        TWinControl.GetHandle
 0059FE61    push        eax
 0059FE62    call        USER32.SetScrollRange
 0059FE67    mov         eax,dword ptr [ebp-4]
 0059FE6A    mov         eax,dword ptr [eax+20C]
 0059FE70    cmp         eax,dword ptr [ebp-8]
>0059FE73    je          0059FEF2
 0059FE75    mov         eax,dword ptr [ebp-8]
 0059FE78    mov         edx,dword ptr [ebp-4]
 0059FE7B    mov         dword ptr [edx+20C],eax
 0059FE81    mov         eax,dword ptr [ebp-4]
 0059FE84    call        TWinControl.HandleAllocated
 0059FE89    test        al,al
>0059FE8B    je          0059FEDC
 0059FE8D    mov         eax,dword ptr [ebp-4]
 0059FE90    call        0059FCEC
 0059FE95    test        al,al
>0059FE97    je          0059FEB7
 0059FE99    push        0FF
 0059FE9B    mov         eax,dword ptr [ebp-4]
 0059FE9E    mov         eax,dword ptr [eax+20C]
 0059FEA4    push        eax
 0059FEA5    push        2
 0059FEA7    mov         eax,dword ptr [ebp-4]
 0059FEAA    call        TWinControl.GetHandle
 0059FEAF    push        eax
 0059FEB0    call        USER32.SetScrollPos
>0059FEB5    jmp         0059FEDC
 0059FEB7    push        0FF
 0059FEB9    mov         eax,dword ptr [ebp-4]
 0059FEBC    mov         eax,dword ptr [eax+214]
 0059FEC2    mov         edx,dword ptr [ebp-4]
 0059FEC5    sub         eax,dword ptr [edx+20C]
 0059FECB    push        eax
 0059FECC    push        2
 0059FECE    mov         eax,dword ptr [ebp-4]
 0059FED1    call        TWinControl.GetHandle
 0059FED6    push        eax
 0059FED7    call        USER32.SetScrollPos
 0059FEDC    mov         dl,1
 0059FEDE    mov         eax,dword ptr [ebp-4]
 0059FEE1    mov         ecx,dword ptr [eax]
 0059FEE3    call        dword ptr [ecx+64]
 0059FEE6    mov         eax,dword ptr [ebp-4]
 0059FEE9    mov         si,0FFB3
 0059FEED    call        @CallDynaInst
 0059FEF2    xor         eax,eax
 0059FEF4    pop         edx
 0059FEF5    pop         ecx
 0059FEF6    pop         ecx
 0059FEF7    mov         dword ptr fs:[eax],edx
 0059FEFA    push        59FF0F
 0059FEFF    lea         eax,[ebp-10]
 0059FF02    call        @LStrClr
 0059FF07    ret
>0059FF08    jmp         @HandleFinally
>0059FF0D    jmp         0059FEFF
 0059FF0F    pop         esi
 0059FF10    pop         ebx
 0059FF11    mov         esp,ebp
 0059FF13    pop         ebp
 0059FF14    ret         4
end;*}

//0059FF18
procedure TScrollBar.SetPosition(Value:Integer);
begin
{*
 0059FF18    push        ebp
 0059FF19    mov         ebp,esp
 0059FF1B    add         esp,0FFFFFFF8
 0059FF1E    mov         dword ptr [ebp-8],edx
 0059FF21    mov         dword ptr [ebp-4],eax
 0059FF24    mov         eax,dword ptr [ebp-4]
 0059FF27    mov         eax,dword ptr [eax+214];TScrollBar.Max:Integer
 0059FF2D    push        eax
 0059FF2E    mov         eax,dword ptr [ebp-4]
 0059FF31    mov         ecx,dword ptr [eax+210];TScrollBar.Min:Integer
 0059FF37    mov         edx,dword ptr [ebp-8]
 0059FF3A    mov         eax,dword ptr [ebp-4]
 0059FF3D    call        0059FD84
 0059FF42    pop         ecx
 0059FF43    pop         ecx
 0059FF44    pop         ebp
 0059FF45    ret
*}
end;

//0059FF48
procedure TScrollBar.SetPageSize(Value:Integer);
begin
{*
 0059FF48    push        ebp
 0059FF49    mov         ebp,esp
 0059FF4B    add         esp,0FFFFFFDC
 0059FF4E    mov         dword ptr [ebp-8],edx
 0059FF51    mov         dword ptr [ebp-4],eax
 0059FF54    mov         eax,dword ptr [ebp-4]
 0059FF57    mov         eax,dword ptr [eax+218];TScrollBar.PageSize:Integer
 0059FF5D    cmp         eax,dword ptr [ebp-8]
>0059FF60    je          0059FFB2
 0059FF62    mov         eax,dword ptr [ebp-8]
 0059FF65    mov         edx,dword ptr [ebp-4]
 0059FF68    cmp         eax,dword ptr [edx+214];TScrollBar.Max:Integer
>0059FF6E    jg          0059FFB2
 0059FF70    mov         eax,dword ptr [ebp-8]
 0059FF73    mov         edx,dword ptr [ebp-4]
 0059FF76    mov         dword ptr [edx+218],eax;TScrollBar.PageSize:Integer
 0059FF7C    mov         dword ptr [ebp-24],1C
 0059FF83    mov         eax,dword ptr [ebp-8]
 0059FF86    mov         dword ptr [ebp-14],eax
 0059FF89    mov         dword ptr [ebp-20],2
 0059FF90    mov         eax,dword ptr [ebp-4]
 0059FF93    call        TWinControl.HandleAllocated
 0059FF98    test        al,al
>0059FF9A    je          0059FFB2
 0059FF9C    push        0FF
 0059FF9E    lea         eax,[ebp-24]
 0059FFA1    push        eax
 0059FFA2    push        2
 0059FFA4    mov         eax,dword ptr [ebp-4]
 0059FFA7    call        TWinControl.GetHandle
 0059FFAC    push        eax
 0059FFAD    call        USER32.SetScrollInfo
 0059FFB2    mov         esp,ebp
 0059FFB4    pop         ebp
 0059FFB5    ret
*}
end;

//0059FFB8
procedure TScrollBar.SetMin(Value:Integer);
begin
{*
 0059FFB8    push        ebp
 0059FFB9    mov         ebp,esp
 0059FFBB    add         esp,0FFFFFFF8
 0059FFBE    mov         dword ptr [ebp-8],edx
 0059FFC1    mov         dword ptr [ebp-4],eax
 0059FFC4    mov         eax,dword ptr [ebp-4]
 0059FFC7    mov         eax,dword ptr [eax+214];TScrollBar.Max:Integer
 0059FFCD    push        eax
 0059FFCE    mov         ecx,dword ptr [ebp-8]
 0059FFD1    mov         eax,dword ptr [ebp-4]
 0059FFD4    mov         edx,dword ptr [eax+20C];TScrollBar.Position:Integer
 0059FFDA    mov         eax,dword ptr [ebp-4]
 0059FFDD    call        0059FD84
 0059FFE2    pop         ecx
 0059FFE3    pop         ecx
 0059FFE4    pop         ebp
 0059FFE5    ret
*}
end;

//0059FFE8
procedure TScrollBar.SetMax(Value:Integer);
begin
{*
 0059FFE8    push        ebp
 0059FFE9    mov         ebp,esp
 0059FFEB    add         esp,0FFFFFFF8
 0059FFEE    mov         dword ptr [ebp-8],edx
 0059FFF1    mov         dword ptr [ebp-4],eax
 0059FFF4    mov         eax,dword ptr [ebp-8]
 0059FFF7    push        eax
 0059FFF8    mov         eax,dword ptr [ebp-4]
 0059FFFB    mov         ecx,dword ptr [eax+210];TScrollBar.Min:Integer
 005A0001    mov         eax,dword ptr [ebp-4]
 005A0004    mov         edx,dword ptr [eax+20C];TScrollBar.Position:Integer
 005A000A    mov         eax,dword ptr [ebp-4]
 005A000D    call        0059FD84
 005A0012    pop         ecx
 005A0013    pop         ecx
 005A0014    pop         ebp
 005A0015    ret
*}
end;

//005A0018
procedure TScrollBar.sub_005A0018;
begin
{*
 005A0018    push        ebp
 005A0019    mov         ebp,esp
 005A001B    push        ecx
 005A001C    push        ebx
 005A001D    mov         dword ptr [ebp-4],eax
 005A0020    mov         eax,dword ptr [ebp-4]
 005A0023    call        005F3158
 005A0028    mov         eax,dword ptr [ebp-4]
 005A002B    cmp         word ptr [eax+22A],0;TScrollBar.?f22A:word
>005A0033    je          005A0047
 005A0035    mov         ebx,dword ptr [ebp-4]
 005A0038    mov         edx,dword ptr [ebp-4]
 005A003B    mov         eax,dword ptr [ebx+22C];TScrollBar.?f22C:dword
 005A0041    call        dword ptr [ebx+228];TScrollBar.OnChange
 005A0047    pop         ebx
 005A0048    pop         ecx
 005A0049    pop         ebp
 005A004A    ret
*}
end;

//005A004C
{*procedure TScrollBar.sub_005A004C(?:?; ?:?);
begin
 005A004C    push        ebp
 005A004D    mov         ebp,esp
 005A004F    add         esp,0FFFFFFF4
 005A0052    push        ebx
 005A0053    mov         dword ptr [ebp-0C],ecx
 005A0056    mov         byte ptr [ebp-5],dl
 005A0059    mov         dword ptr [ebp-4],eax
 005A005C    mov         eax,dword ptr [ebp-4]
 005A005F    cmp         word ptr [eax+232],0;TScrollBar.?f232:word
>005A0067    je          005A0082
 005A0069    mov         eax,dword ptr [ebp-0C]
 005A006C    push        eax
 005A006D    mov         ebx,dword ptr [ebp-4]
 005A0070    mov         cl,byte ptr [ebp-5]
 005A0073    mov         edx,dword ptr [ebp-4]
 005A0076    mov         eax,dword ptr [ebx+234];TScrollBar.?f234:dword
 005A007C    call        dword ptr [ebx+230];TScrollBar.OnScroll
 005A0082    pop         ebx
 005A0083    mov         esp,ebp
 005A0085    pop         ebp
 005A0086    ret
end;*}

//005A0088
{*procedure sub_005A0088(?:TScrollBar; ?:?);
begin
 005A0088    push        ebp
 005A0089    mov         ebp,esp
 005A008B    add         esp,0FFFFFFD4
 005A008E    push        esi
 005A008F    mov         dword ptr [ebp-8],edx
 005A0092    mov         dword ptr [ebp-4],eax
 005A0095    mov         eax,dword ptr [ebp-4]
 005A0098    mov         eax,dword ptr [eax+20C]
 005A009E    mov         dword ptr [ebp-10],eax
 005A00A1    mov         eax,dword ptr [ebp-8]
 005A00A4    movzx       eax,byte ptr [eax+4]
 005A00A8    cmp         eax,7
>005A00AB    ja          005A019D
 005A00B1    jmp         dword ptr [eax*4+5A00B8]
 005A00B1    dd          005A00D8
 005A00B1    dd          005A00F3
 005A00B1    dd          005A010E
 005A00B1    dd          005A0126
 005A00B1    dd          005A013E
 005A00B1    dd          005A013E
 005A00B1    dd          005A0183
 005A00B1    dd          005A0191
 005A00D8    mov         eax,dword ptr [ebp-4]
 005A00DB    movzx       eax,word ptr [eax+220]
 005A00E2    mov         edx,dword ptr [ebp-4]
 005A00E5    imul        dword ptr [edx+21C]
 005A00EB    sub         dword ptr [ebp-10],eax
>005A00EE    jmp         005A019D
 005A00F3    mov         eax,dword ptr [ebp-4]
 005A00F6    movzx       eax,word ptr [eax+220]
 005A00FD    mov         edx,dword ptr [ebp-4]
 005A0100    imul        dword ptr [edx+21C]
 005A0106    add         dword ptr [ebp-10],eax
>005A0109    jmp         005A019D
 005A010E    mov         eax,dword ptr [ebp-4]
 005A0111    movzx       eax,word ptr [eax+222]
 005A0118    mov         edx,dword ptr [ebp-4]
 005A011B    imul        dword ptr [edx+21C]
 005A0121    sub         dword ptr [ebp-10],eax
>005A0124    jmp         005A019D
 005A0126    mov         eax,dword ptr [ebp-4]
 005A0129    movzx       eax,word ptr [eax+222]
 005A0130    mov         edx,dword ptr [ebp-4]
 005A0133    imul        dword ptr [edx+21C]
 005A0139    add         dword ptr [ebp-10],eax
>005A013C    jmp         005A019D
 005A013E    mov         dword ptr [ebp-2C],1C
 005A0145    mov         dword ptr [ebp-28],17
 005A014C    lea         eax,[ebp-2C]
 005A014F    push        eax
 005A0150    push        2
 005A0152    mov         eax,dword ptr [ebp-4]
 005A0155    call        TWinControl.GetHandle
 005A015A    push        eax
 005A015B    call        USER32.GetScrollInfo
 005A0160    mov         eax,dword ptr [ebp-14]
 005A0163    mov         dword ptr [ebp-10],eax
 005A0166    mov         eax,dword ptr [ebp-4]
 005A0169    call        0059FCEC
 005A016E    test        al,al
>005A0170    jne         005A019D
 005A0172    mov         eax,dword ptr [ebp-4]
 005A0175    mov         eax,dword ptr [eax+214]
 005A017B    sub         eax,dword ptr [ebp-10]
 005A017E    mov         dword ptr [ebp-10],eax
>005A0181    jmp         005A019D
 005A0183    mov         eax,dword ptr [ebp-4]
 005A0186    mov         eax,dword ptr [eax+210]
 005A018C    mov         dword ptr [ebp-10],eax
>005A018F    jmp         005A019D
 005A0191    mov         eax,dword ptr [ebp-4]
 005A0194    mov         eax,dword ptr [eax+214]
 005A019A    mov         dword ptr [ebp-10],eax
 005A019D    mov         eax,dword ptr [ebp-10]
 005A01A0    mov         edx,dword ptr [ebp-4]
 005A01A3    cmp         eax,dword ptr [edx+210]
>005A01A9    jge         005A01B7
 005A01AB    mov         eax,dword ptr [ebp-4]
 005A01AE    mov         eax,dword ptr [eax+210]
 005A01B4    mov         dword ptr [ebp-10],eax
 005A01B7    mov         eax,dword ptr [ebp-10]
 005A01BA    mov         edx,dword ptr [ebp-4]
 005A01BD    cmp         eax,dword ptr [edx+214]
>005A01C3    jle         005A01D1
 005A01C5    mov         eax,dword ptr [ebp-4]
 005A01C8    mov         eax,dword ptr [eax+214]
 005A01CE    mov         dword ptr [ebp-10],eax
 005A01D1    mov         eax,dword ptr [ebp-10]
 005A01D4    mov         dword ptr [ebp-0C],eax
 005A01D7    lea         ecx,[ebp-0C]
 005A01DA    mov         edx,dword ptr [ebp-8]
 005A01DD    mov         dl,byte ptr [edx+4]
 005A01E0    mov         eax,dword ptr [ebp-4]
 005A01E3    mov         si,0FFB2
 005A01E7    call        @CallDynaInst
 005A01EC    mov         edx,dword ptr [ebp-0C]
 005A01EF    mov         eax,dword ptr [ebp-4]
 005A01F2    call        TScrollBar.SetPosition
 005A01F7    pop         esi
 005A01F8    mov         esp,ebp
 005A01FA    pop         ebp
 005A01FB    ret
end;*}

//005A01FC
{*procedure TScrollBar.sub_005A01FC(?:?);
begin
 005A01FC    push        ebp
 005A01FD    mov         ebp,esp
 005A01FF    add         esp,0FFFFFFF8
 005A0202    mov         dword ptr [ebp-8],edx
 005A0205    mov         dword ptr [ebp-4],eax
 005A0208    mov         edx,dword ptr [ebp-8]
 005A020B    mov         eax,dword ptr [ebp-4]
 005A020E    call        005A0088
 005A0213    pop         ecx
 005A0214    pop         ecx
 005A0215    pop         ebp
 005A0216    ret
end;*}

//005A0218
{*procedure TScrollBar.sub_005A0218(?:?);
begin
 005A0218    push        ebp
 005A0219    mov         ebp,esp
 005A021B    add         esp,0FFFFFFF8
 005A021E    mov         dword ptr [ebp-8],edx
 005A0221    mov         dword ptr [ebp-4],eax
 005A0224    mov         edx,dword ptr [ebp-8]
 005A0227    mov         eax,dword ptr [ebp-4]
 005A022A    call        005A0088
 005A022F    pop         ecx
 005A0230    pop         ecx
 005A0231    pop         ebp
 005A0232    ret
end;*}

//005A0234
{*procedure TScrollBar.sub_005A0234(?:?);
begin
 005A0234    push        ebp
 005A0235    mov         ebp,esp
 005A0237    add         esp,0FFFFFFF8
 005A023A    mov         dword ptr [ebp-8],edx
 005A023D    mov         dword ptr [ebp-4],eax
 005A0240    mov         eax,dword ptr [ebp-8]
 005A0243    mov         eax,dword ptr [eax+8]
 005A0246    push        eax
 005A0247    mov         eax,dword ptr [ebp-8]
 005A024A    mov         eax,dword ptr [eax+4]
 005A024D    push        eax
 005A024E    mov         eax,dword ptr [ebp-8]
 005A0251    mov         eax,dword ptr [eax]
 005A0253    push        eax
 005A0254    mov         eax,dword ptr [ebp-4]
 005A0257    call        TWinControl.GetHandle
 005A025C    push        eax
 005A025D    mov         eax,dword ptr [ebp-4]
 005A0260    mov         eax,dword ptr [eax+174];TScrollBar.FDefWndProc:Pointer
 005A0266    push        eax
 005A0267    call        USER32.CallWindowProcA
 005A026C    pop         ecx
 005A026D    pop         ecx
 005A026E    pop         ebp
 005A026F    ret
end;*}

//005A0270
procedure TScrollBar.WMEraseBkgnd(Message:TWMEraseBkgnd);
begin
{*
 005A0270    push        ebp
 005A0271    mov         ebp,esp
 005A0273    add         esp,0FFFFFFF8
 005A0276    mov         dword ptr [ebp-8],edx
 005A0279    mov         dword ptr [ebp-4],eax
 005A027C    mov         edx,dword ptr [ebp-8]
 005A027F    mov         eax,dword ptr [ebp-4]
 005A0282    mov         ecx,dword ptr [eax]
 005A0284    call        dword ptr [ecx-10];TScrollBar.DefaultHandler
 005A0287    pop         ecx
 005A0288    pop         ecx
 005A0289    pop         ebp
 005A028A    ret
*}
end;

//005A028C
constructor TCustomStaticText.Create(AOwner:TComponent);
begin
{*
 005A028C    push        ebp
 005A028D    mov         ebp,esp
 005A028F    add         esp,0FFFFFFF4
 005A0292    test        dl,dl
>005A0294    je          005A029E
 005A0296    add         esp,0FFFFFFF0
 005A0299    call        @ClassCreate
 005A029E    mov         dword ptr [ebp-0C],ecx
 005A02A1    mov         byte ptr [ebp-5],dl
 005A02A4    mov         dword ptr [ebp-4],eax
 005A02A7    mov         ecx,dword ptr [ebp-0C]
 005A02AA    xor         edx,edx
 005A02AC    mov         eax,dword ptr [ebp-4]
 005A02AF    call        TWinControl.Create
 005A02B4    mov         eax,dword ptr [ebp-4]
 005A02B7    mov         edx,dword ptr ds:[5A0318];0x8EA gvar_005A0318
 005A02BD    mov         dword ptr [eax+50],edx;TCustomStaticText.FControlStyle:TControlStyle
 005A02C0    mov         edx,41
 005A02C5    mov         eax,dword ptr [ebp-4]
 005A02C8    call        TControl.SetWidth
 005A02CD    mov         edx,11
 005A02D2    mov         eax,dword ptr [ebp-4]
 005A02D5    call        TControl.SetHeight
 005A02DA    mov         eax,dword ptr [ebp-4]
 005A02DD    mov         byte ptr [eax+209],1;TCustomStaticText.FAutoSize:Boolean
 005A02E4    mov         eax,dword ptr [ebp-4]
 005A02E7    mov         byte ptr [eax+210],1;TCustomStaticText.FShowAccelChar:Boolean
 005A02EE    mov         eax,dword ptr [ebp-4]
 005A02F1    call        005A04E0
 005A02F6    mov         eax,dword ptr [ebp-4]
 005A02F9    cmp         byte ptr [ebp-5],0
>005A02FD    je          005A030E
 005A02FF    call        @AfterConstruction
 005A0304    pop         dword ptr fs:[0]
 005A030B    add         esp,0C
 005A030E    mov         eax,dword ptr [ebp-4]
 005A0311    mov         esp,ebp
 005A0313    pop         ebp
 005A0314    ret
*}
end;

//005A031C
{*procedure sub_005A031C(?:?);
begin
 005A031C    push        ebp
 005A031D    mov         ebp,esp
 005A031F    add         esp,0FFFFFFF8
 005A0322    push        esi
 005A0323    mov         dword ptr [ebp-8],edx
 005A0326    mov         dword ptr [ebp-4],eax
 005A0329    mov         edx,dword ptr [ebp-8]
 005A032C    mov         eax,dword ptr [ebp-4]
 005A032F    call        005F7FC0
 005A0334    mov         ecx,5A03B4
 005A0339    mov         edx,dword ptr [ebp-8]
 005A033C    mov         eax,dword ptr [ebp-4]
 005A033F    call        005F7E98
 005A0344    mov         eax,dword ptr [ebp-4]
 005A0347    mov         si,0FFC8
 005A034B    call        @CallDynaInst;TControl.sub_005F40CC
 005A0350    and         eax,7F
 005A0353    lea         eax,[eax+eax*2]
 005A0356    lea         eax,[eax*4+6E3BA0]
 005A035D    mov         edx,dword ptr [ebp-4]
 005A0360    movzx       edx,byte ptr [edx+208];TCustomStaticText.FAlignment:TAlignment
 005A0367    mov         eax,dword ptr [eax+edx*4]
 005A036A    mov         edx,dword ptr [ebp-8]
 005A036D    mov         edx,dword ptr [edx+4]
 005A0370    or          edx,100
 005A0376    or          eax,edx
 005A0378    mov         edx,dword ptr [ebp-4]
 005A037B    movzx       edx,byte ptr [edx+20A];TCustomStaticText.FBorderStyle:TStaticBorderStyle
 005A0382    or          eax,dword ptr [edx*4+6E3BB8]
 005A0389    mov         edx,dword ptr [ebp-8]
 005A038C    mov         dword ptr [edx+4],eax
 005A038F    mov         eax,dword ptr [ebp-4]
 005A0392    cmp         byte ptr [eax+210],0;TCustomStaticText.FShowAccelChar:Boolean
>005A0399    jne         005A03A5
 005A039B    mov         eax,dword ptr [ebp-8]
 005A039E    or          dword ptr [eax+4],80
 005A03A5    mov         eax,dword ptr [ebp-8]
 005A03A8    and         dword ptr [eax+24],0FFFFFFFE
 005A03AC    pop         esi
 005A03AD    pop         ecx
 005A03AE    pop         ecx
 005A03AF    pop         ebp
 005A03B0    ret
end;*}

//005A03BC
{*procedure TCustomStaticText.CMDialogChar(?:?);
begin
 005A03BC    push        ebp
 005A03BD    mov         ebp,esp
 005A03BF    add         esp,0FFFFFFF0
 005A03C2    push        esi
 005A03C3    xor         ecx,ecx
 005A03C5    mov         dword ptr [ebp-10],ecx
 005A03C8    mov         dword ptr [ebp-8],edx
 005A03CB    mov         dword ptr [ebp-4],eax
 005A03CE    xor         eax,eax
 005A03D0    push        ebp
 005A03D1    push        5A0465
 005A03D6    push        dword ptr fs:[eax]
 005A03D9    mov         dword ptr fs:[eax],esp
 005A03DC    mov         eax,dword ptr [ebp-4]
 005A03DF    cmp         dword ptr [eax+20C],0;TCustomStaticText.FFocusControl:TWinControl
>005A03E6    je          005A044F
 005A03E8    mov         eax,dword ptr [ebp-4]
 005A03EB    mov         edx,dword ptr [eax]
 005A03ED    call        dword ptr [edx+50];TCCalendar.GetEnabled
 005A03F0    test        al,al
>005A03F2    je          005A044F
 005A03F4    mov         eax,dword ptr [ebp-4]
 005A03F7    cmp         byte ptr [eax+210],0;TCustomStaticText.FShowAccelChar:Boolean
>005A03FE    je          005A044F
 005A0400    lea         edx,[ebp-10]
 005A0403    mov         eax,dword ptr [ebp-4]
 005A0406    call        TTabPage.GetCaption
 005A040B    mov         edx,dword ptr [ebp-10]
 005A040E    mov         eax,dword ptr [ebp-8]
 005A0411    mov         ax,word ptr [eax+4]
 005A0415    call        005CCFE8
 005A041A    test        al,al
>005A041C    je          005A044F
 005A041E    mov         eax,dword ptr [ebp-4]
 005A0421    mov         eax,dword ptr [eax+20C];TCustomStaticText.FFocusControl:TWinControl
 005A0427    mov         dword ptr [ebp-0C],eax
 005A042A    mov         eax,dword ptr [ebp-0C]
 005A042D    mov         si,0FFB8
 005A0431    call        @CallDynaInst;TWinControl.sub_005FBF90
 005A0436    test        al,al
>005A0438    je          005A044F
 005A043A    mov         eax,dword ptr [ebp-0C]
 005A043D    mov         edx,dword ptr [eax]
 005A043F    call        dword ptr [edx+0C0];TWinControl.sub_005FBFF0
 005A0445    mov         eax,dword ptr [ebp-8]
 005A0448    mov         dword ptr [eax+0C],1
 005A044F    xor         eax,eax
 005A0451    pop         edx
 005A0452    pop         ecx
 005A0453    pop         ecx
 005A0454    mov         dword ptr fs:[eax],edx
 005A0457    push        5A046C
 005A045C    lea         eax,[ebp-10]
 005A045F    call        @LStrClr
 005A0464    ret
>005A0465    jmp         @HandleFinally
>005A046A    jmp         005A045C
 005A046C    pop         esi
 005A046D    mov         esp,ebp
 005A046F    pop         ebp
 005A0470    ret
end;*}

//005A0474
{*procedure TCustomStaticText.CMFontChanged(?:?);
begin
 005A0474    push        ebp
 005A0475    mov         ebp,esp
 005A0477    add         esp,0FFFFFFF8
 005A047A    mov         dword ptr [ebp-8],edx
 005A047D    mov         dword ptr [ebp-4],eax
 005A0480    mov         edx,dword ptr [ebp-8]
 005A0483    mov         eax,dword ptr [ebp-4]
 005A0486    call        TWinControl.CMFontChanged
 005A048B    mov         eax,dword ptr [ebp-4]
 005A048E    call        005A04E0
 005A0493    pop         ecx
 005A0494    pop         ecx
 005A0495    pop         ebp
 005A0496    ret
end;*}

//005A0498
{*procedure TCustomStaticText.CMTextChanged(?:?);
begin
 005A0498    push        ebp
 005A0499    mov         ebp,esp
 005A049B    add         esp,0FFFFFFF8
 005A049E    mov         dword ptr [ebp-8],edx
 005A04A1    mov         dword ptr [ebp-4],eax
 005A04A4    mov         edx,dword ptr [ebp-8]
 005A04A7    mov         eax,dword ptr [ebp-4]
 005A04AA    mov         ecx,dword ptr [eax]
 005A04AC    call        dword ptr [ecx-10];TCustomStaticText.DefaultHandler
 005A04AF    mov         eax,dword ptr [ebp-4]
 005A04B2    call        005A04E0
 005A04B7    mov         eax,dword ptr [ebp-4]
 005A04BA    mov         edx,dword ptr [eax]
 005A04BC    call        dword ptr [edx+7C];TWinControl.Invalidate
 005A04BF    pop         ecx
 005A04C0    pop         ecx
 005A04C1    pop         ebp
 005A04C2    ret
end;*}

//005A04C4
procedure TCustomStaticText.Loaded;
begin
{*
 005A04C4    push        ebp
 005A04C5    mov         ebp,esp
 005A04C7    push        ecx
 005A04C8    mov         dword ptr [ebp-4],eax
 005A04CB    mov         eax,dword ptr [ebp-4]
 005A04CE    call        TControl.Loaded
 005A04D3    mov         eax,dword ptr [ebp-4]
 005A04D6    call        005A04E0
 005A04DB    pop         ecx
 005A04DC    pop         ebp
 005A04DD    ret
*}
end;

//005A04E0
procedure sub_005A04E0(?:TCustomStaticText);
begin
{*
 005A04E0    push        ebp
 005A04E1    mov         ebp,esp
 005A04E3    add         esp,0FFFFFFE4
 005A04E6    push        ebx
 005A04E7    xor         edx,edx
 005A04E9    mov         dword ptr [ebp-1C],edx
 005A04EC    mov         dword ptr [ebp-18],edx
 005A04EF    mov         dword ptr [ebp-4],eax
 005A04F2    xor         eax,eax
 005A04F4    push        ebp
 005A04F5    push        5A05DA
 005A04FA    push        dword ptr fs:[eax]
 005A04FD    mov         dword ptr fs:[eax],esp
 005A0500    mov         eax,dword ptr [ebp-4]
 005A0503    test        byte ptr [eax+1C],2;TCustomStaticText.FComponentState:TComponentState
>005A0507    jne         005A05BF
 005A050D    mov         eax,dword ptr [ebp-4]
 005A0510    cmp         byte ptr [eax+209],0;TCustomStaticText.FAutoSize:Boolean
>005A0517    je          005A05BF
 005A051D    push        0
 005A051F    call        USER32.GetDC
 005A0524    mov         dword ptr [ebp-8],eax
 005A0527    mov         eax,dword ptr [ebp-4]
 005A052A    mov         eax,dword ptr [eax+68];TCustomStaticText.FFont:TFont
 005A052D    call        TFont.GetHandle
 005A0532    push        eax
 005A0533    mov         eax,dword ptr [ebp-8]
 005A0536    push        eax
 005A0537    call        GDI32.SelectObject
 005A053C    mov         dword ptr [ebp-0C],eax
 005A053F    lea         eax,[ebp-14]
 005A0542    push        eax
 005A0543    lea         edx,[ebp-18]
 005A0546    mov         eax,dword ptr [ebp-4]
 005A0549    call        TTabPage.GetCaption
 005A054E    mov         eax,dword ptr [ebp-18]
 005A0551    call        @LStrLen
 005A0556    push        eax
 005A0557    lea         edx,[ebp-1C]
 005A055A    mov         eax,dword ptr [ebp-4]
 005A055D    call        TTabPage.GetCaption
 005A0562    mov         eax,dword ptr [ebp-1C]
 005A0565    call        @LStrToPChar
 005A056A    push        eax
 005A056B    mov         eax,dword ptr [ebp-8]
 005A056E    push        eax
 005A056F    call        GDI32.GetTextExtentPoint32A
 005A0574    mov         eax,dword ptr [ebp-0C]
 005A0577    push        eax
 005A0578    mov         eax,dword ptr [ebp-8]
 005A057B    push        eax
 005A057C    call        GDI32.SelectObject
 005A0581    mov         eax,dword ptr [ebp-8]
 005A0584    push        eax
 005A0585    push        0
 005A0587    call        USER32.ReleaseDC
 005A058C    push        5
 005A058E    call        USER32.GetSystemMetrics
 005A0593    shl         eax,2
 005A0596    add         eax,dword ptr [ebp-14]
 005A0599    push        eax
 005A059A    push        6
 005A059C    call        USER32.GetSystemMetrics
 005A05A1    shl         eax,2
 005A05A4    add         eax,dword ptr [ebp-10]
 005A05A7    push        eax
 005A05A8    mov         eax,dword ptr [ebp-4]
 005A05AB    mov         ecx,dword ptr [eax+44];TCustomStaticText.Top:Integer
 005A05AE    mov         eax,dword ptr [ebp-4]
 005A05B1    mov         edx,dword ptr [eax+40];TCustomStaticText.Left:Integer
 005A05B4    mov         eax,dword ptr [ebp-4]
 005A05B7    mov         ebx,dword ptr [eax]
 005A05B9    call        dword ptr [ebx+84];TCustomStaticText.sub_005FB7F8
 005A05BF    xor         eax,eax
 005A05C1    pop         edx
 005A05C2    pop         ecx
 005A05C3    pop         ecx
 005A05C4    mov         dword ptr fs:[eax],edx
 005A05C7    push        5A05E1
 005A05CC    lea         eax,[ebp-1C]
 005A05CF    mov         edx,2
 005A05D4    call        @LStrArrayClr
 005A05D9    ret
>005A05DA    jmp         @HandleFinally
>005A05DF    jmp         005A05CC
 005A05E1    pop         ebx
 005A05E2    mov         esp,ebp
 005A05E4    pop         ebp
 005A05E5    ret
*}
end;

//005A05E8
procedure TCustomStaticText.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005A05E8    push        ebp
 005A05E9    mov         ebp,esp
 005A05EB    add         esp,0FFFFFFF4
 005A05EE    mov         byte ptr [ebp-9],cl
 005A05F1    mov         dword ptr [ebp-8],edx
 005A05F4    mov         dword ptr [ebp-4],eax
 005A05F7    mov         cl,byte ptr [ebp-9]
 005A05FA    mov         edx,dword ptr [ebp-8]
 005A05FD    mov         eax,dword ptr [ebp-4]
 005A0600    call        TControl.Notification
 005A0605    cmp         byte ptr [ebp-9],1
>005A0609    jne         005A0624
 005A060B    mov         eax,dword ptr [ebp-8]
 005A060E    mov         edx,dword ptr [ebp-4]
 005A0611    cmp         eax,dword ptr [edx+20C];TCustomStaticText.FFocusControl:TWinControl
>005A0617    jne         005A0624
 005A0619    mov         eax,dword ptr [ebp-4]
 005A061C    xor         edx,edx
 005A061E    mov         dword ptr [eax+20C],edx;TCustomStaticText.FFocusControl:TWinControl
 005A0624    mov         esp,ebp
 005A0626    pop         ebp
 005A0627    ret
*}
end;

//005A0628
procedure TStaticText.SetAlignment(Value:TAlignment);
begin
{*
 005A0628    push        ebp
 005A0629    mov         ebp,esp
 005A062B    add         esp,0FFFFFFF8
 005A062E    mov         byte ptr [ebp-5],dl
 005A0631    mov         dword ptr [ebp-4],eax
 005A0634    mov         eax,dword ptr [ebp-4]
 005A0637    mov         al,byte ptr [eax+208];TStaticText.FAlignment:TAlignment
 005A063D    cmp         al,byte ptr [ebp-5]
>005A0640    je          005A0656
 005A0642    mov         al,byte ptr [ebp-5]
 005A0645    mov         edx,dword ptr [ebp-4]
 005A0648    mov         byte ptr [edx+208],al;TStaticText.FAlignment:TAlignment
 005A064E    mov         eax,dword ptr [ebp-4]
 005A0651    call        TWinControl.RecreateWnd
 005A0656    pop         ecx
 005A0657    pop         ecx
 005A0658    pop         ebp
 005A0659    ret
*}
end;

//005A065C
procedure TStaticText.SetAutoSize(Value:Boolean);
begin
{*
 005A065C    push        ebp
 005A065D    mov         ebp,esp
 005A065F    add         esp,0FFFFFFF8
 005A0662    mov         byte ptr [ebp-5],dl
 005A0665    mov         dword ptr [ebp-4],eax
 005A0668    mov         eax,dword ptr [ebp-4]
 005A066B    mov         al,byte ptr [eax+209];TStaticText.FAutoSize:Boolean
 005A0671    cmp         al,byte ptr [ebp-5]
>005A0674    je          005A0690
 005A0676    mov         al,byte ptr [ebp-5]
 005A0679    mov         edx,dword ptr [ebp-4]
 005A067C    mov         byte ptr [edx+209],al;TStaticText.FAutoSize:Boolean
 005A0682    cmp         byte ptr [ebp-5],0
>005A0686    je          005A0690
 005A0688    mov         eax,dword ptr [ebp-4]
 005A068B    call        005A04E0
 005A0690    pop         ecx
 005A0691    pop         ecx
 005A0692    pop         ebp
 005A0693    ret
*}
end;

//005A0694
procedure TStaticText.SetBorderStyle(Value:TStaticBorderStyle);
begin
{*
 005A0694    push        ebp
 005A0695    mov         ebp,esp
 005A0697    add         esp,0FFFFFFF8
 005A069A    mov         byte ptr [ebp-5],dl
 005A069D    mov         dword ptr [ebp-4],eax
 005A06A0    mov         eax,dword ptr [ebp-4]
 005A06A3    mov         al,byte ptr [eax+20A];TStaticText.FBorderStyle:TStaticBorderStyle
 005A06A9    cmp         al,byte ptr [ebp-5]
>005A06AC    je          005A06C2
 005A06AE    mov         al,byte ptr [ebp-5]
 005A06B1    mov         edx,dword ptr [ebp-4]
 005A06B4    mov         byte ptr [edx+20A],al;TStaticText.FBorderStyle:TStaticBorderStyle
 005A06BA    mov         eax,dword ptr [ebp-4]
 005A06BD    call        TWinControl.RecreateWnd
 005A06C2    pop         ecx
 005A06C3    pop         ecx
 005A06C4    pop         ebp
 005A06C5    ret
*}
end;

//005A06C8
procedure TStaticText.SetFocusControl(Value:TWinControl);
begin
{*
 005A06C8    push        ebp
 005A06C9    mov         ebp,esp
 005A06CB    add         esp,0FFFFFFF8
 005A06CE    mov         dword ptr [ebp-8],edx
 005A06D1    mov         dword ptr [ebp-4],eax
 005A06D4    mov         eax,dword ptr [ebp-8]
 005A06D7    mov         edx,dword ptr [ebp-4]
 005A06DA    mov         dword ptr [edx+20C],eax;TStaticText.FFocusControl:TWinControl
 005A06E0    cmp         dword ptr [ebp-8],0
>005A06E4    je          005A06F1
 005A06E6    mov         edx,dword ptr [ebp-4]
 005A06E9    mov         eax,dword ptr [ebp-8]
 005A06EC    call        TComponent.FreeNotification
 005A06F1    pop         ecx
 005A06F2    pop         ecx
 005A06F3    pop         ebp
 005A06F4    ret
*}
end;

//005A06F8
procedure TStaticText.SetShowAccelChar(Value:Boolean);
begin
{*
 005A06F8    push        ebp
 005A06F9    mov         ebp,esp
 005A06FB    add         esp,0FFFFFFF8
 005A06FE    mov         byte ptr [ebp-5],dl
 005A0701    mov         dword ptr [ebp-4],eax
 005A0704    mov         eax,dword ptr [ebp-4]
 005A0707    mov         al,byte ptr [eax+210];TStaticText.FShowAccelChar:Boolean
 005A070D    cmp         al,byte ptr [ebp-5]
>005A0710    je          005A0726
 005A0712    mov         al,byte ptr [ebp-5]
 005A0715    mov         edx,dword ptr [ebp-4]
 005A0718    mov         byte ptr [edx+210],al;TStaticText.FShowAccelChar:Boolean
 005A071E    mov         eax,dword ptr [ebp-4]
 005A0721    call        TWinControl.RecreateWnd
 005A0726    pop         ecx
 005A0727    pop         ecx
 005A0728    pop         ebp
 005A0729    ret
*}
end;

//005A072C
procedure Finalization;
begin
{*
 005A072C    push        ebp
 005A072D    mov         ebp,esp
 005A072F    xor         eax,eax
 005A0731    push        ebp
 005A0732    push        5A0751
 005A0737    push        dword ptr fs:[eax]
 005A073A    mov         dword ptr fs:[eax],esp
 005A073D    inc         dword ptr ds:[6ECCF4]
 005A0743    xor         eax,eax
 005A0745    pop         edx
 005A0746    pop         ecx
 005A0747    pop         ecx
 005A0748    mov         dword ptr fs:[eax],edx
 005A074B    push        5A0758
 005A0750    ret
>005A0751    jmp         @HandleFinally
>005A0756    jmp         005A0750
 005A0758    pop         ebp
 005A0759    ret
*}
end;

end.