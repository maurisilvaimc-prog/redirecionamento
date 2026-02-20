//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Grids;

interface

uses
  SysUtils, Classes, Grids, StdCtrls, Controls, ValEdit;

type
  EInvalidGridOperation = class(Exception)
  end;
  TInplaceEdit = class(TCustomMaskEdit)
  public
    FGrid:TCustomGrid;//f240
    FClickTime:Longint;//f244
    constructor Create(AOwner:TComponent); virtual;//v2C//005B378C
    //procedure v74(?:?); virtual;//v74//005B3EE8
    //procedure v98(?:?); virtual;//v98//005B3808
    //function vE4:?; virtual;//vE4//005B3974
    procedure vF8; virtual;//vF8//005B4184
    procedure vFC; virtual;//vFC//005B4224
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//005B3858
    //procedure WMCut(?:?); message WM_CUT;//005B38E4
    //procedure WMPaste(?:?); message WM_PASTE;//005B388C
    //procedure WMClear(?:?); message WM_CLEAR;//005B38B8
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//005B3848
    //procedure sub_005AA158(?:?); dynamic;//005B3DA8
    //procedure sub_005AA0F4(?:?; ?:?); dynamic;//005B3EB8
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//005B3B78
    procedure DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint); dynamic;//005B3930
    procedure sub_005B3910; dynamic;//005B3910
    procedure Deselect;//005B3F7C
    procedure Hide;//005B4038
  end;
  TGridOption = (goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing, goTabs, goRowSelect, goAlwaysShowEditor, goThumbTracking);
  TGridOptions = set of TGridOption;
  TEditStyle = (esSimple, esEllipsis, esPickList);
  TSelectCellEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; var CanSelect:Boolean) of object;;
  TDrawCellEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; Rect:TRect; State:TGridDrawState) of object;;
  TCustomGrid = class(TCustomControl)
  public
    FAnchor:TGridCoord;//f210
    FBorderStyle:TBorderStyle;//f218
    FCanEditModify:Boolean;//f219
    FColCount:Longint;//f21C
    FColWidths:Pointer;//f220
    FTabStops:Pointer;//f224
    FCurrent:TGridCoord;//f228
    FCurrent:Longint;//f22C
    FDefaultColWidth:Integer;//f230
    FDefaultRowHeight:Integer;//f234
    FFixedCols:Integer;//f238
    FFixedRows:Integer;//f23C
    FFixedColor:TColor;//f240
    FGridLineWidth:Integer;//f244
    FOptions:TGridOptions;//f248
    f249:byte;//f249
    FRowCount:Longint;//f24C
    FRowHeights:Pointer;//f250
    FScrollBars:TScrollStyle;//f254
    FTopLeft:TGridCoord;//f258
    FTopLeft:Longint;//f25C
    FSizingIndex:Longint;//f260
    FSizingPos:Integer;//f264
    FSizingOfs:Integer;//f268
    FMoveIndex:Longint;//f26C
    FMovePos:Longint;//f270
    FHitTest:TPoint;//f274
    FInplaceEdit:TInplaceEdit;//f27C
    FInplaceCol:Longint;//f280
    FInplaceRow:Longint;//f284
    FColOffset:Integer;//f288
    FDefaultDrawing:Boolean;//f28C
    FEditorMode:Boolean;//f28D
    FGridState:TGridState;//f28E
    FSaveCellExtents:Boolean;//f28F
    DesignOptionsBoost:TGridOptions;//f290
    VirtualView:Boolean;//f292
    destructor Destroy; virtual;//005B44B8
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005B4D34
    constructor Create(AOwner:TComponent); virtual;//v2C//005B430C
    //procedure v98(?:?); virtual;//v98//005B85B0
    procedure vC4; virtual;//vC4//005B57C8
    //procedure vC8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vC8//005B63F0
    //function vCC:?; virtual;//vCC//005B858C
    //function vD0:?; virtual;//vD0//005B490C
    procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%; virtual; abstract;//vD4//0066AC84
    //function vD8(?:?; ?:?):?; virtual;//vD8//005B4FEC
    //procedure vDC(?:?); virtual;//vDC//005BA958
    //procedure vE0(?:?); virtual;//vE0//005BA990
    //procedure WMSize(?:?); message WM_SIZE;//005BA464
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//005BA408
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//005BA254
    //procedure WMCancelMode(?:?); message WM_CANCELMODE;//005BA594
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//005BA338
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005BA2EC
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//005BA204
    //procedure WMChar(?:?); message WM_CHAR;//005BA174
    //procedure WMCommand(?:?); message WM_COMMAND;//005BA1BC
    //procedure WMTimer(?:?); message WM_TIMER;//005BA794
    //procedure WMHScroll(?:?); message WM_HSCROLL;//005BA4D4
    //procedure WMVScroll(?:?); message WM_VSCROLL;//005BA4A4
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//005BA2B0
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//005BA5B8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005BA5F8
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005BA634
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//005BAB88
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//005BA658
    //procedure CMWantSpecialKey(?:?); message CM_WANTSPECIALKEY;//005BA688
    //procedure sub_005BAB6C(?:?; ?:?); dynamic;//005BAB6C
    //procedure sub_005BAB50(?:?; ?:?); dynamic;//005BAB50
    //procedure sub_005BAAFC(?:?; ?:?); dynamic;//005BAAFC
    //procedure sub_005BAAE0(?:?; ?:?); dynamic;//005BAAE0
    //procedure sub_005BAB34(?:?; ?:?); dynamic;//005BAB34
    //procedure sub_005BAB18(?:?; ?:?); dynamic;//005BAB18
    procedure sub_005BA93C; dynamic;//005BA93C
    procedure sub_005BA920; dynamic;//005BA920
    //procedure sub_005BA6C4(?:?); dynamic;//005BA6C4
    procedure sub_005B5080; dynamic;//005B5080
    //procedure sub_005B5008(?:?; ?:?); dynamic;//005B5008
    //procedure sub_005B4FAC(?:?; ?:?); dynamic;//005B4FAC
    //procedure sub_005B4EE8(?:?; ?:?); dynamic;//005B4EE8
    //procedure sub_005B4A6C(?:?; ?:?); dynamic;//005B4A6C
    //procedure sub_005B49FC(?:?; ?:?; ?:?); dynamic;//005B49FC
    procedure sub_005B4A54; dynamic;//005B4A54
    //procedure sub_005B4A3C(?:?; ?:?); dynamic;//005B4A3C
    //procedure sub_005B4A1C(?:?; ?:?; ?:?); dynamic;//005B4A1C
    procedure sub_005B48F0; dynamic;//005B48F0
    //procedure sub_005B48D4(?:?; ?:?); dynamic;//005B48D4
    //procedure sub_005B48BC(?:?); dynamic;//005B48BC
    //procedure sub_005B4660(?:?; ?:?; ?:?); dynamic;//005B4660
    //procedure sub_005B8C50(?:?); dynamic;//005B8C50
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//005B872C
    procedure DoExit; dynamic;//005B4864
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005B928C
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005B9090
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005B8CA4
    procedure DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint); dynamic;//005BAA80
    procedure DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint); dynamic;//005BAA20
    procedure ReadColWidths(Reader:TReader);//005B4B34
    procedure ReadRowHeights(Reader:TReader);//005B4B8C
    procedure WriteColWidths(Writer:TWriter);//005B4BE4
    procedure WriteRowHeights(Writer:TWriter);//005B4C3C
    procedure CalcDrawInfo(var DrawInfo:TGridDrawInfo);//005B5EAC
    procedure CalcDrawInfoXY(var DrawInfo:TGridDrawInfo; UseWidth:Integer; UseHeight:Integer);//005B5F88
    function CalcMaxTopLeft(const Coord:TGridCoord; const DrawInfo:TGridDrawInfo):TGridCoord;//005B61A4
    procedure DrawSizingLine(const DrawInfo:TGridDrawInfo);//005B6AEC
    procedure DrawMove;//005B6C54
    procedure TopLeftMoved(const OldTopLeft:TGridCoord);//005B7F3C
    procedure UpdateScrollPos;//005B8054
    procedure UpdateScrollRange;//005B8444
    function GetColWidths(Index:Longint):Integer;//005B9700
    procedure SetColWidths(Index:Longint; Value:Integer);//005B9944
    procedure HideEdit;//005B9F10
    procedure UpdateText;//005BA0E8
    procedure CancelMode;//005BA500
  end;
  TGetEditEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; var Value:String) of object;;
  TSetEditEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; const Value:String) of object;;
  TMovedEvent = procedure(Sender:TObject; FromIndex:Integer; ToIndex:Integer) of object;;
  TCustomDrawGrid = class(TCustomGrid)
  public
    FOnColumnMoved:TMovedEvent;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    FOnDrawCell:TDrawCellEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    FOnGetEditMask:TGetEditEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FOnGetEditText:TGetEditEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnRowMoved:TMovedEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FOnSelectCell:TSelectCellEvent;//f2C0
    f2C2:word;//f2C2
    f2C4:dword;//f2C4
    FOnSetEditText:TSetEditEvent;//f2C8
    FOnTopLeftChanged:TNotifyEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?); virtual;//vD4//005BAD54
    //function vD8(?:?; ?:?):?; virtual;//vD8//005BACC8
    procedure sub_005B5080; dynamic;//005BAE10
    //procedure sub_005B4FAC(?:?; ?:?); dynamic;//005BAC8C
    //procedure sub_005B4EE8(?:?; ?:?); dynamic;//005BABB8
    //procedure sub_005B49FC(?:?; ?:?; ?:?); dynamic;//005BABF4
    procedure SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString); dynamic;//005BAD10
    //procedure sub_005B4A1C(?:?; ?:?; ?:?); dynamic;//005BAC40
  end;
  TDrawGrid = class(TCustomDrawGrid)
    //function GetVisibleColCount:?;//005B9804
    //function GetVisibleRowCount:?;//005B9830
    procedure SetColCount(Value:Integer);//005B98C4
    procedure SetFixedRows(Value:Integer);//005B9BB0
    procedure SetOptions(Value:TGridOptions);//005B9CD8
    procedure SetRowCount(Value:Integer);//005B9D98
  end;
  TStringGridStrings = class(TStrings)
  public
    FGrid:TStringGrid;//f10
    FIndex:Integer;//f14
    procedure Assign(Source:TPersistent); virtual;//v8//005BBDAC
    //procedure vC(?:?; ?:?); virtual;//vC//005BC0F8
    //function v14:?; virtual;//v14//005BC144
    //function v18(?:?):?; virtual;//v18//005BC190
    //procedure v20(?:?; ?:?); virtual;//v20//005BC234
    //procedure v24(?:?; ?:?); virtual;//v24//005BC270
    //procedure v30(?:?); virtual;//v30//005BC2AC
    //function v38(?:?):?; virtual;//v38//005BBF20
    procedure Clear; virtual;//v44//005BC018
    //procedure v48(?:?); virtual;//v48//005BC0A0
    //procedure v60(?:?; ?:?); virtual;//v60//005BC1D8
    //constructor Create(?:?);//005BBD54
  end;
  TStringGrid = class(TDrawGrid)
  public
    FData:Pointer;//f2D8
    FRows:Pointer;//f2DC
    FCols:Pointer;//f2E0
    FUpdating:Boolean;//f2E4
    FNeedsUpdating:Boolean;//f2E5
    FEditUpdate:Integer;//f2E8
    destructor Destroy; virtual;//005BC33C
    constructor Create(AOwner:TComponent); virtual;//v2C//005BC2CC
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?); virtual;//vD4//005BC5B4
    //procedure sub_005B4FAC(?:?; ?:?); dynamic;//005BC460
    //procedure sub_005B4EE8(?:?; ?:?); dynamic;//005BC424
    procedure SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString); dynamic;//005BC4F4
    //procedure sub_005B4A1C(?:?; ?:?; ?:?); dynamic;//005BC4A0
    procedure DisableEditUpdate;//005BC660
    procedure EnableEditUpdate;//005BC674
    function GetCells(ACol:Integer; ARow:Integer):AnsiString;//005BC8D4
    procedure SetCells(ACol:Integer; ARow:Integer; const Value:AnsiString);//005BC968
  end;
  TInplaceEditList = class(TInplaceEdit)
  public
    FButtonWidth:Integer;//f248
    FPickList:TCustomListBox;//f24C
    FActiveList:TWinControl;//f250
    FEditStyle:TEditStyle;//f254
    FDropDownRows:Integer;//f258
    FListVisible:Boolean;//f25C
    FTracking:Boolean;//f25D
    FPressed:Boolean;//f25E
    FPickListLoaded:Boolean;//f25F
    FOnGetPickListitems:TOnGetPickListItems;//f260
    f262:word;//f262
    f264:TValueListEditor;//f264
    FOnEditButtonClick:TNotifyEvent;//f268
    f26A:word;//f26A
    f26C:dword;//f26C
    constructor Create(AOwner:TComponent); virtual;//v2C//005BCDAC
    //procedure v74(?:?); virtual;//v74//005BDD90
    //procedure vB8(?:?); virtual;//vB8//005BD814
    procedure vF8; virtual;//vF8//005BCE10
    procedure vFC; virtual;//vFC//005BDA48
    //procedure v100(?:?; ?:?); virtual;//v100//005BD0A0
    procedure v104; virtual;//v104//005BD13C
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//005BDB4C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//005BDD04
    //procedure WMCancelMode(?:?); message WM_CANCELMODE;//005BDB28
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//005BDD20
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//005BDCB8
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//005BDAEC
    procedure sub_005BD27C; dynamic;//005BD27C
    procedure sub_005BD170; dynamic;//005BD170
    //procedure sub_005BCECC(?:?); dynamic;//005BCECC
    procedure KeyDown(Key:Word; Shift:TShiftState); dynamic;//005BD558
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005BD7B0
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005BD6D0
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005BD61C
    procedure sub_005B3910; dynamic;//005BDE30
  end;
  TStrItem = TStrItem = record//size=8
f4:String;//f4
end;;
  TSparsePointerArray = class(TObject)
  public
    secDir:PSecDir;//f4
    slotsInDir:Word;//f8
    indexMask:Word;//fA
    secShift:Word;//fC
    FHighBound:Integer;//f10
    FSectionSize:Word;//f14
    cachedIndex:Integer;//f18
    cachedPointer:Pointer;//f1C
    constructor Create;//005BB118
    function ForAll(ApplyFunction:Pointer):Integer;//005BB3EC
    procedure ResetHighBound;//005BB4CC
  end;
  TSparseList = class(TObject)
  public
    FList:TSparsePointerArray;//f4
    FCount:Integer;//f8
    FQuantum:TSPAQuantum;//fC
    constructor Create;//005BB4F8
    function ForAll(ApplyFunction:Pointer):Integer;//005BB66C
  end;
  TStringSparseList = class(TStrings)
  public
    FList:TSparseList;//f10
    FOnChange:TNotifyEvent;//f18
    f1A:word;//f1A
    f1C:dword;//f1C
    destructor Destroy; virtual;//005BB91C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005BBA78
    //procedure vC(?:?; ?:?); virtual;//vC//005BBABC
    //function v14:?; virtual;//v14//005BBB00
    //function v18(?:?):?; virtual;//v18//005BBB1C
    //procedure v20(?:?; ?:?); virtual;//v20//005BBB58
    //procedure v24(?:?; ?:?); virtual;//v24//005BBBE0
    procedure Clear; virtual;//v44//005BBD24
    //procedure v48(?:?); virtual;//v48//005BBC60
    //procedure v4C(?:?; ?:?); virtual;//v4C//005BBCA8
    //procedure v60(?:?; ?:?); virtual;//v60//005BBCCC
    constructor Create;//005BB8C0
  end;
  TPopupListbox = class(TCustomListBox)
  public
    FSearchText:String;//f280
    FSearchTickCount:Longint;//f284
    //procedure v98(?:?); virtual;//v98//005BCBB8
    procedure CreateWnd; virtual;//vA0//005BCC00
    //procedure sub_0059F69C(?:?); dynamic;//005BCC40
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//005BCD48
  end;
    procedure Grids;//005B1900
    //procedure sub_005B30F8(?:?);//005B30F8
    //procedure sub_005B3118(?:TGridCoord; ?:?; ?:?);//005B3118
    //function sub_005B31A0(?:?; ?:?; ?:?):?;//005B31A0
    //function sub_005B31EC(?:?; ?:?; ?:?):?;//005B31EC
    //function sub_005B3238(?:?; ?:?; ?:?):?;//005B3238
    //function sub_005B32A8(?:?; ?:?; ?:?; ?:?; ?:?):?;//005B32A8
    //procedure sub_005B3330(?:?; ?:?; ?:?);//005B3330
    //procedure sub_005B34DC(?:?; ?:?; ?:?; ?:?);//005B34DC
    procedure sub_005B3610(?:Pointer; ?:Longint; ?:Integer);//005B3610
    //procedure sub_005B3650(?:?; ?:?; ?:?);//005B3650
    //function sub_005B36E8(?:?; ?:?):?;//005B36E8
    //procedure sub_005B374C(?:HWND; ?:?);//005B374C
    constructor Create(AOwner:TComponent);//005B378C
    //procedure sub_005B3808(?:?);//005B3808
    procedure sub_005B382C(?:TInplaceEdit; ?:TCustomGrid);//005B382C
    //procedure CMShowingChanged(?:?);//005B3848
    //procedure WMGetDlgCode(?:?);//005B3858
    //procedure WMPaste(?:?);//005B388C
    //procedure WMClear(?:?);//005B38B8
    //procedure WMCut(?:?);//005B38E4
    procedure sub_005B3910;//005B3910
    procedure DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint);//005B3930
    //function sub_005B3974:?;//005B3974
    procedure SendToParent;//005B399C
    procedure ParentEvent;//005B39D0
    function ForwardMovement:Boolean;//005B3A20
    function Ctrl:Boolean;//005B3A44
    //procedure sub_005B3A5C(?:?; ?:?);//005B3A5C
    //function sub_005B3A88(?:?):?;//005B3A88
    function RightSide:Boolean;//005B3AC8
    function LeftSide:Boolean;//005B3B28
    procedure KeyDown(var Key:Word; Shift:TShiftState);//005B3B78
    //procedure sub_005AA158(?:?);//005B3DA8
    //procedure sub_005AA0F4(?:?; ?:?);//005B3EB8
    //procedure sub_005B3EE8(?:?);//005B3EE8
    procedure sub_005B3FA0(?:TInplaceEditList);//005B3FA0
    //procedure sub_005B40AC(?:?; ?:?; ?:?);//005B40AC
    procedure sub_005B4184;//005B4184
    //procedure sub_005B41E4(?:TInplaceEdit; ?:?);//005B41E4
    //procedure sub_005B4204(?:TInplaceEdit; ?:?);//005B4204
    procedure sub_005B4224;//005B4224
    constructor Create(AOwner:TComponent);//005B430C
    destructor Destroy;//005B44B8
    //function sub_005B4524(?:Longint; ?:?; ?:Integer; ?:?; ?:?):?;//005B4524
    //procedure sub_005B4660(?:?; ?:?; ?:?);//005B4660
    //procedure sub_005B4824(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005B4824
    procedure DoExit;//005B4864
    //procedure sub_005B488C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);//005B488C
    //procedure sub_005B48BC(?:?);//005B48BC
    //procedure sub_005B48D4(?:?; ?:?);//005B48D4
    procedure sub_005B48F0;//005B48F0
    //function sub_005B490C:?;//005B490C
    //function sub_005B4984(?:TCustomGrid):?;//005B4984
    //procedure sub_005B49FC(?:?; ?:?; ?:?);//005B49FC
    //procedure sub_005B4A1C(?:?; ?:?; ?:?);//005B4A1C
    //procedure sub_005B4A3C(?:?; ?:?);//005B4A3C
    procedure sub_005B4A54;//005B4A54
    //procedure sub_005B4A6C(?:?; ?:?);//005B4A6C
    procedure sub_005B4A88(?:TCustomGrid);//005B4A88
    procedure sub_005B4AA4(?:TCustomGrid);//005B4AA4
    //procedure sub_005B4AC0(?:TCustomGrid; ?:?);//005B4AC0
    procedure sub_005B4B08(?:TValueListEditor);//005B4B08
    function DoColWidths:Boolean;//005B4C94
    function DoRowHeights:Boolean;//005B4CE4
    procedure DefineProperties(Filer:TFiler);//005B4D34
    procedure sub_005B4DD8(?:TCustomGrid; ?:Longint; ?:Longint);//005B4DD8
    //procedure sub_005B4EE8(?:?; ?:?);//005B4EE8
    procedure sub_005B4EFC(?:TCustomGrid; ?:Longint; ?:Longint);//005B4EFC
    //procedure sub_005B4FAC(?:?; ?:?);//005B4FAC
    //procedure sub_005B4FC0(?:?; ?:?; ?:?; ?:?; ?:?);//005B4FC0
    //function sub_005B4FEC(?:?; ?:?):?;//005B4FEC
    //procedure sub_005B5008(?:?; ?:?);//005B5008
    //function sub_005B501C(?:TCustomGrid; ?:?; ?:?):?;//005B501C
    procedure sub_005B5080;//005B5080
    procedure FillDWord(var Dest:void ; Count:Integer; Value:Integer);//005B50D4
    function StackAlloc(Size:Integer):Pointer;//005B50E0
    procedure StackFree(P:Pointer);//005B5110
    //procedure sub_005B5128(?:?; ?:?; ?:?; ?:?; ?:?);//005B5128
    //procedure sub_005B5360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005B5360
    //procedure sub_005B53F8(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005B53F8
    procedure sub_005B57C8;//005B57C8
    //function sub_005B5D00(?:?; ?:?):?;//005B5D00
    //function sub_005B5D98(?:?; ?:?; ?:?):?;//005B5D98
    //procedure sub_005B5E48(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);//005B5E48
    //procedure sub_005B5EDC(?:?; ?:?);//005B5EDC
    //procedure sub_005B5FC8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005B5FC8
    //procedure sub_005B607C(?:?; ?:?);//005B607C
    //function sub_005B6108(?:?; ?:?):?;//005B6108
    //procedure sub_005B61E8(?:?; ?:?; ?:?; ?:?);//005B61E8
    //function sub_005B6348(?:?):?;//005B6348
    //function sub_005B639C(?:?):?;//005B639C
    //procedure sub_005B63F0(?:?; ?:?; ?:?; ?:?; ?:?);//005B63F0
    //procedure sub_005B64D4(?:TCustomGrid; ?:?);//005B64D4
    //procedure sub_005B6648(?:?; ?:TGridDrawInfo; ?:?; ?:?);//005B6648
    //procedure sub_005B66BC(?:?);//005B66BC
    procedure sub_005B68EC(?:TDrawGrid; ?:Integer; ?:Longint);//005B68EC
    //procedure sub_005B69D8(?:TCustomGrid; ?:?);//005B69D8
    //procedure sub_005B6E0C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);//005B6E0C
    //function sub_005B6E4C(?:?; ?:?):?;//005B6E4C
    //function sub_005B6ED8(?:TGridDrawInfo; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005B6ED8
    //procedure sub_005B6FFC(?:TCustomGrid; ?:Integer; ?:?);//005B6FFC
    procedure sub_005B70F4(?:TCustomGrid);//005B70F4
    procedure sub_005B7180(?:TCustomGrid; ?:TGridCoord; ?:Longint);//005B7180
    procedure sub_005B71B8(?:TCustomGrid);//005B71B8
    procedure sub_005B71CC(?:TCustomGrid; ?:Byte);//005B71CC
    //function sub_005B7218(?:?):?;//005B7218
    //function sub_005B724C(?:?):?;//005B724C
    //function sub_005B7274(?:?):?;//005B7274
    //function sub_005B72E0(?:?):?;//005B72E0
    //function sub_005B7338(?:?; ?:?; ?:?):?;//005B7338
    //procedure sub_005B7490(?:?; ?:?; ?:?);//005B7490
    //procedure sub_005B7674(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);//005B7674
    //procedure sub_005B7874(?:?; ?:?; ?:?; ?:?);//005B7874
    procedure sub_005B78E8(?:TCustomGrid; ?:TGridCoord);//005B78E8
    //procedure sub_005B7990(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?; ?:?);//005B7990
    //procedure sub_005B7B30(?:?; ?:?; ?:?);//005B7B30
    //procedure sub_005B7BA4(?:?; ?:?; ?:?);//005B7BA4
    //procedure sub_005B7BC4(?:TCustomGrid; ?:Longint; ?:?);//005B7BC4
    //procedure sub_005B7BE4(?:TCustomGrid; ?:?);//005B7BE4
    //procedure sub_005B7C64(?:?; ?:?; ?:?; ?:?);//005B7C64
    //procedure sub_005B7E64(?:?; ?:?; ?:?);//005B7E64
    //function sub_005B7E94(?:?; ?:?; ?:?; ?:?; ?:?):?;//005B7E94
    //procedure sub_005B7FC0(?:?; ?:?; ?:?);//005B7FC0
    procedure DoUpdate;//005B81C4
    function ScrollBarVisible(Code:Word):Boolean;//005B81E8
    procedure CalcSizeInfo;//005B8260
    procedure SetAxisRange(var Max:Longint; var Old:Longint; var Current:Longint; Code:Word; Fixeds:Integer);//005B82D8
    procedure SetHorzRange;//005B835C
    procedure SetVertRange;//005B8400
    //function sub_005B858C:?;//005B858C
    //procedure sub_005B85B0(?:?);//005B85B0
    procedure CalcPageExtents;//005B8658
    //procedure sub_005B86C4(?:?; ?:?; ?:?; ?:?; ?:?);//005B86C4
    procedure KeyDown(var Key:Word; Shift:TShiftState);//005B872C
    //procedure sub_005B8C50(?:?);//005B8C50
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005B8CA4
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//005B9090
    //function sub_005B9224(?:TGridDrawInfo; ?:?):?;//005B9224
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005B928C
    //procedure sub_005B9538(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005B9538
    //function sub_005B9750(?:?; ?:?):?;//005B9750
    //procedure sub_005B97A0(?:TCustomGrid; ?:?);//005B97A0
    //function sub_005B97CC(?:?; ?:?):?;//005B97CC
    procedure SetBorderStyle(Value:TFormBorderStyle);//005B985C
    //procedure sub_005B9890(?:TValueListEditor; ?:?);//005B9890
    procedure SetDefaultColWidth(Value:Integer);//005B9A2C
    procedure SetDefaultRowHeight(Value:Integer);//005B9A7C
    procedure SetFixedColor(Value:TColor);//005B9ACC
    procedure SetFixedCols(Value:Integer);//005B9B00
    //procedure sub_005B9C60(?:?; ?:?);//005B9C60
    procedure SetGridLineWidth(Value:int);//005B9CA4
    //procedure sub_005B9D64(?:TCustomGrid; ?:?);//005B9D64
    //procedure sub_005B9DF4(?:TCustomGrid; ?:Longint; ?:?);//005B9DF4
    procedure SetScrollBars(Value:TScrollStyle);//005B9EDC
    //procedure sub_005B9F7C(?:?);//005B9F7C
    procedure sub_005BA008(?:TCustomGrid);//005BA008
    //procedure WMChar(?:?);//005BA174
    //procedure WMCommand(?:?);//005BA1BC
    //procedure WMGetDlgCode(?:?);//005BA204
    //procedure WMKillFocus(?:?);//005BA254
    //procedure WMLButtonDown(?:?);//005BA2B0
    //procedure WMNCHitTest(?:?);//005BA2EC
    //procedure WMSetCursor(?:?);//005BA338
    //procedure WMSetFocus(?:?);//005BA408
    //procedure WMSize(?:?);//005BA464
    //procedure WMVScroll(?:?);//005BA4A4
    //procedure WMHScroll(?:?);//005BA4D4
    //procedure WMCancelMode(?:?);//005BA594
    //procedure CMCancelMode(?:?);//005BA5B8
    //procedure CMFontChanged(?:?);//005BA5F8
    //procedure CMCtl3DChanged(?:?);//005BA634
    //procedure CMDesignHitTest(?:?);//005BA658
    //procedure CMWantSpecialKey(?:?);//005BA688
    //procedure sub_005BA6C4(?:?);//005BA6C4
    //procedure WMTimer(?:?);//005BA794
    procedure sub_005BA920;//005BA920
    procedure sub_005BA93C;//005BA93C
    //procedure sub_005BA958(?:?);//005BA958
    //procedure sub_005BA990(?:?);//005BA990
    procedure sub_005BA9C8(?:TCustomGrid);//005BA9C8
    procedure DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint);//005BAA20
    procedure DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint);//005BAA80
    //procedure sub_005BAAE0(?:?; ?:?);//005BAAE0
    //procedure sub_005BAAFC(?:?; ?:?);//005BAAFC
    //procedure sub_005BAB18(?:?; ?:?);//005BAB18
    //procedure sub_005BAB34(?:?; ?:?);//005BAB34
    //procedure sub_005BAB50(?:?; ?:?);//005BAB50
    //procedure sub_005BAB6C(?:?; ?:?);//005BAB6C
    //procedure CMShowingChanged(?:?);//005BAB88
    //procedure sub_005B4EE8(?:?; ?:?);//005BABB8
    //procedure sub_005B49FC(?:?; ?:?; ?:?);//005BABF4
    //procedure sub_005B4A1C(?:?; ?:?; ?:?);//005BAC40
    //procedure sub_005B4FAC(?:?; ?:?);//005BAC8C
    //function sub_005BACC8(?:?; ?:?):?;//005BACC8
    procedure SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString);//005BAD10
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);//005BAD54
    procedure sub_005B5080;//005BAE10
    //function sub_005BAE64(?:?; ?:?):?;//005BAE64
    //procedure sub_005BAEA0(?:?);//005BAEA0
    //function sub_005BB07C(?:?; ?:?; ?:?):?;//005BB07C
    //function sub_005BB0D8(?:?; ?:?):?;//005BB0D8
    //function sub_005BB240(?:?; ?:?):?;//005BB240
    //function sub_005BB2D8(?:?; ?:?):?;//005BB2D8
    //procedure sub_005BB3A4(?:?; ?:?; ?:?);//005BB3A4
    function Detector(TheIndex:Integer; TheItem:Pointer):Integer;//005BB48C
    procedure sub_005BB57C(?:TSparseList);//005BB57C
    //procedure sub_005BB5AC(?:TSparseList; ?:?);//005BB5AC
    //procedure sub_005BB624(?:TSparseList; ?:?; ?:?);//005BB624
    //function sub_005BB678(?:TSparseList; ?:?):?;//005BB678
    //procedure sub_005BB6F0(?:TSparseList; ?:?; ?:?);//005BB6F0
    //procedure sub_005BB7C0(?:Pointer; ?:?; ?:?);//005BB7C0
    //procedure sub_005BB804(?:?; ?:?);//005BB804
    //procedure sub_005BB834(?:TSparseList; ?:?; ?:TStrings);//005BB834
    destructor Destroy;//005BB91C
    procedure DefineProperties(Filer:TFiler);//005BBA78
    //procedure sub_005BBABC(?:?; ?:?);//005BBABC
    //function sub_005BBB00:?;//005BBB00
    //function sub_005BBB1C(?:?):?;//005BBB1C
    //procedure sub_005BBB58(?:?; ?:?);//005BBB58
    //procedure sub_005BBBE0(?:?; ?:?);//005BBBE0
    procedure sub_005BBC3C(?:TStringSparseList);//005BBC3C
    //procedure sub_005BBC60(?:?);//005BBC60
    //procedure sub_005BBCA8(?:?; ?:?);//005BBCA8
    //procedure sub_005BBCCC(?:?; ?:?);//005BBCCC
    procedure Clear;//005BBD24
    procedure Assign(Source:TPersistent);//005BBDAC
    //procedure sub_005BBEB8(?:TStringGridStrings; ?:?; ?:?; ?:?);//005BBEB8
    //function sub_005BBF20(?:?):?;//005BBF20
    procedure Clear;//005BC018
    //procedure sub_005BC0A0(?:?);//005BC0A0
    //procedure sub_005BC0F8(?:?; ?:?);//005BC0F8
    //function sub_005BC144:?;//005BC144
    //function sub_005BC190(?:?):?;//005BC190
    //procedure sub_005BC1D8(?:?; ?:?);//005BC1D8
    //procedure sub_005BC234(?:?; ?:?);//005BC234
    //procedure sub_005BC270(?:?; ?:?);//005BC270
    //procedure sub_005BC2AC(?:?);//005BC2AC
    constructor Create(AOwner:TComponent);//005BC2CC
    destructor Destroy;//005BC33C
    //procedure sub_005B4EE8(?:?; ?:?);//005BC424
    //procedure sub_005B4FAC(?:?; ?:?);//005BC460
    //procedure sub_005B4A1C(?:?; ?:?; ?:?);//005BC4A0
    procedure SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString);//005BC4F4
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);//005BC5B4
    procedure sub_005BC688(?:TStringGrid);//005BC688
    //procedure sub_005BC734(?:TStringGrid; ?:?);//005BC734
    //procedure sub_005BC774(?:TStringGrid; ?:?; ?:?);//005BC774
    //function sub_005BC7E0(?:TStringGrid; ?:?; ?:?):?;//005BC7E0
    //function sub_005BC868(?:TStringGrid; ?:?):?;//005BC868
    //function sub_005BC920(?:TStringGrid; ?:?; ?:?):?;//005BC920
    //procedure sub_005BC9C0(?:TStringGrid; ?:?; ?:?; ?:?);//005BC9C0
    //procedure sub_005BCBB8(?:?);//005BCBB8
    procedure CreateWnd;//005BCC00
    //procedure sub_0059F69C(?:?);//005BCC40
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005BCD48
    constructor Create(AOwner:TComponent);//005BCDAC
    procedure sub_005BCE10;//005BCE10
    //procedure sub_005BCECC(?:?);//005BCECC
    //procedure sub_005BD0A0(?:?; ?:?);//005BD0A0
    procedure sub_005BD13C;//005BD13C
    procedure sub_005BD170;//005BD170
    //function sub_005BD1F4(?:TInplaceEditList):?;//005BD1F4
    procedure sub_005BD27C;//005BD27C
    procedure KeyDown(Key:Word; Shift:TShiftState);//005BD558
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005BD61C
    procedure MouseMove(Shift:TShiftState; X:Integer; Y:Integer);//005BD6D0
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//005BD7B0
    //procedure sub_005BD814(?:?);//005BD814
    //procedure sub_005BD99C(?:TInplaceEditList; ?:?; ?:TWinControl);//005BD99C
    //procedure sub_005BD9D4(?:TInplaceEditList; ?:?; ?:?);//005BD9D4
    procedure sub_005BDA48;//005BDA48
    //procedure sub_005BDAC8(?:?);//005BDAC8
    //procedure CMCancelMode(?:?);//005BDAEC
    //procedure WMCancelMode(?:?);//005BDB28
    //procedure WMKillFocus(?:?);//005BDB4C
    //procedure sub_005BDC10(?:TInplaceEditList; ?:?);//005BDC10
    //function sub_005BDC80(?:TInplaceEditList; ?:?):?;//005BDC80
    //procedure WMLButtonDblClk(?:?);//005BDCB8
    procedure WMPaint(Message:TWMPaint);//005BDD04
    //procedure WMSetCursor(?:?);//005BDD20
    //procedure sub_005BDD90(?:?);//005BDD90
    procedure sub_005B3910;//005BDE30
    procedure Finalization;//005BDFC4

implementation

//005B1900
procedure Grids;
begin
{*
 005B1900    sub         dword ptr ds:[6ECD14],1
 005B1907    ret
*}
end;

//005B30F8
{*procedure sub_005B30F8(?:?);
begin
 005B30F8    push        ebp
 005B30F9    mov         ebp,esp
 005B30FB    push        ecx
 005B30FC    mov         dword ptr [ebp-4],eax
 005B30FF    mov         ecx,dword ptr [ebp-4]
 005B3102    mov         dl,1
 005B3104    mov         eax,[005B1908];EInvalidGridOperation
 005B3109    call        Exception.Create;EInvalidGridOperation.Create
 005B310E    call        @RaiseExcept
 005B3113    pop         ecx
 005B3114    pop         ebp
 005B3115    ret
end;*}

//005B3118
{*procedure sub_005B3118(?:TGridCoord; ?:?; ?:?);
begin
 005B3118    push        ebp
 005B3119    mov         ebp,esp
 005B311B    add         esp,0FFFFFFEC
 005B311E    push        esi
 005B311F    push        edi
 005B3120    mov         esi,edx
 005B3122    lea         edi,[ebp-10]
 005B3125    movs        dword ptr [edi],dword ptr [esi]
 005B3126    movs        dword ptr [edi],dword ptr [esi]
 005B3127    mov         esi,eax
 005B3129    lea         edi,[ebp-8]
 005B312C    movs        dword ptr [edi],dword ptr [esi]
 005B312D    movs        dword ptr [edi],dword ptr [esi]
 005B312E    mov         dword ptr [ebp-14],ecx
 005B3131    mov         eax,dword ptr [ebp-14]
 005B3134    mov         edx,dword ptr [ebp-10]
 005B3137    mov         dword ptr [eax],edx
 005B3139    mov         eax,dword ptr [ebp-8]
 005B313C    cmp         eax,dword ptr [ebp-10]
>005B313F    jge         005B3149
 005B3141    mov         eax,dword ptr [ebp-14]
 005B3144    mov         edx,dword ptr [ebp-8]
 005B3147    mov         dword ptr [eax],edx
 005B3149    mov         eax,dword ptr [ebp-14]
 005B314C    mov         edx,dword ptr [ebp-8]
 005B314F    mov         dword ptr [eax+8],edx
 005B3152    mov         eax,dword ptr [ebp-8]
 005B3155    cmp         eax,dword ptr [ebp-10]
>005B3158    jge         005B3163
 005B315A    mov         eax,dword ptr [ebp-14]
 005B315D    mov         edx,dword ptr [ebp-10]
 005B3160    mov         dword ptr [eax+8],edx
 005B3163    mov         eax,dword ptr [ebp-14]
 005B3166    mov         edx,dword ptr [ebp-0C]
 005B3169    mov         dword ptr [eax+4],edx
 005B316C    mov         eax,dword ptr [ebp-4]
 005B316F    cmp         eax,dword ptr [ebp-0C]
>005B3172    jge         005B317D
 005B3174    mov         eax,dword ptr [ebp-14]
 005B3177    mov         edx,dword ptr [ebp-4]
 005B317A    mov         dword ptr [eax+4],edx
 005B317D    mov         eax,dword ptr [ebp-14]
 005B3180    mov         edx,dword ptr [ebp-4]
 005B3183    mov         dword ptr [eax+0C],edx
 005B3186    mov         eax,dword ptr [ebp-4]
 005B3189    cmp         eax,dword ptr [ebp-0C]
>005B318C    jge         005B3197
 005B318E    mov         eax,dword ptr [ebp-14]
 005B3191    mov         edx,dword ptr [ebp-0C]
 005B3194    mov         dword ptr [eax+0C],edx
 005B3197    pop         edi
 005B3198    pop         esi
 005B3199    mov         esp,ebp
 005B319B    pop         ebp
 005B319C    ret
end;*}

//005B31A0
{*function sub_005B31A0(?:?; ?:?; ?:?):?;
begin
 005B31A0    push        ebp
 005B31A1    mov         ebp,esp
 005B31A3    add         esp,0FFFFFFF0
 005B31A6    mov         dword ptr [ebp-0C],ecx
 005B31A9    mov         dword ptr [ebp-8],edx
 005B31AC    mov         dword ptr [ebp-4],eax
 005B31AF    mov         eax,dword ptr [ebp-0C]
 005B31B2    mov         eax,dword ptr [eax]
 005B31B4    cmp         eax,dword ptr [ebp-4]
>005B31B7    jg          005B31DA
 005B31B9    mov         eax,dword ptr [ebp-0C]
 005B31BC    mov         eax,dword ptr [eax+8]
 005B31BF    cmp         eax,dword ptr [ebp-4]
>005B31C2    jl          005B31DA
 005B31C4    mov         eax,dword ptr [ebp-0C]
 005B31C7    mov         eax,dword ptr [eax+4]
 005B31CA    cmp         eax,dword ptr [ebp-8]
>005B31CD    jg          005B31DA
 005B31CF    mov         eax,dword ptr [ebp-0C]
 005B31D2    mov         eax,dword ptr [eax+0C]
 005B31D5    cmp         eax,dword ptr [ebp-8]
>005B31D8    jge         005B31DE
 005B31DA    xor         eax,eax
>005B31DC    jmp         005B31E0
 005B31DE    mov         al,1
 005B31E0    mov         byte ptr [ebp-0D],al
 005B31E3    mov         al,byte ptr [ebp-0D]
 005B31E6    mov         esp,ebp
 005B31E8    pop         ebp
 005B31E9    ret
end;*}

//005B31EC
{*function sub_005B31EC(?:?; ?:?; ?:?):?;
begin
 005B31EC    push        ebp
 005B31ED    mov         ebp,esp
 005B31EF    add         esp,0FFFFFFF0
 005B31F2    mov         dword ptr [ebp-0C],ecx
 005B31F5    mov         dword ptr [ebp-8],edx
 005B31F8    mov         dword ptr [ebp-4],eax
 005B31FB    mov         eax,dword ptr [ebp-0C]
 005B31FE    mov         eax,dword ptr [eax]
 005B3200    cmp         eax,dword ptr [ebp-4]
>005B3203    jg          005B3226
 005B3205    mov         eax,dword ptr [ebp-0C]
 005B3208    mov         eax,dword ptr [eax+8]
 005B320B    cmp         eax,dword ptr [ebp-4]
>005B320E    jl          005B3226
 005B3210    mov         eax,dword ptr [ebp-0C]
 005B3213    mov         eax,dword ptr [eax+4]
 005B3216    cmp         eax,dword ptr [ebp-8]
>005B3219    jg          005B3226
 005B321B    mov         eax,dword ptr [ebp-0C]
 005B321E    mov         eax,dword ptr [eax+0C]
 005B3221    cmp         eax,dword ptr [ebp-8]
>005B3224    jge         005B322A
 005B3226    xor         eax,eax
>005B3228    jmp         005B322C
 005B322A    mov         al,1
 005B322C    mov         byte ptr [ebp-0D],al
 005B322F    mov         al,byte ptr [ebp-0D]
 005B3232    mov         esp,ebp
 005B3234    pop         ebp
 005B3235    ret
end;*}

//005B3238
{*function sub_005B3238(?:?; ?:?; ?:?):?;
begin
 005B3238    push        ebp
 005B3239    mov         ebp,esp
 005B323B    add         esp,0FFFFFFF4
 005B323E    mov         dword ptr [ebp-8],edx
 005B3241    mov         dword ptr [ebp-4],eax
 005B3244    mov         eax,dword ptr [ebp+8]
 005B3247    push        eax
 005B3248    mov         eax,dword ptr [ebp+8]
 005B324B    mov         ecx,dword ptr [eax-4]
 005B324E    mov         edx,dword ptr [ebp-4]
 005B3251    mov         edx,dword ptr [edx+4]
 005B3254    mov         eax,dword ptr [ebp-4]
 005B3257    mov         eax,dword ptr [eax]
 005B3259    call        005B31EC
 005B325E    pop         ecx
 005B325F    test        al,al
>005B3261    jne         005B3286
 005B3263    mov         eax,dword ptr [ebp+8]
 005B3266    push        eax
 005B3267    mov         eax,dword ptr [ebp+8]
 005B326A    mov         ecx,dword ptr [eax-8]
 005B326D    mov         edx,dword ptr [ebp-4]
 005B3270    mov         edx,dword ptr [edx+4]
 005B3273    mov         eax,dword ptr [ebp-4]
 005B3276    mov         eax,dword ptr [eax]
 005B3278    call        005B31EC
 005B327D    pop         ecx
 005B327E    test        al,al
>005B3280    jne         005B3286
 005B3282    xor         eax,eax
>005B3284    jmp         005B3288
 005B3286    mov         al,1
 005B3288    mov         byte ptr [ebp-9],al
 005B328B    cmp         byte ptr [ebp-9],0
>005B328F    je          005B32A1
 005B3291    mov         eax,dword ptr [ebp-8]
 005B3294    mov         edx,dword ptr [ebp-4]
 005B3297    mov         ecx,dword ptr [edx]
 005B3299    mov         dword ptr [eax],ecx
 005B329B    mov         ecx,dword ptr [edx+4]
 005B329E    mov         dword ptr [eax+4],ecx
 005B32A1    mov         al,byte ptr [ebp-9]
 005B32A4    mov         esp,ebp
 005B32A6    pop         ebp
 005B32A7    ret
end;*}

//005B32A8
{*function sub_005B32A8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005B32A8    push        ebp
 005B32A9    mov         ebp,esp
 005B32AB    add         esp,0FFFFFFF0
 005B32AE    mov         dword ptr [ebp-0C],ecx
 005B32B1    mov         dword ptr [ebp-8],edx
 005B32B4    mov         dword ptr [ebp-4],eax
 005B32B7    mov         byte ptr [ebp-0D],1
 005B32BB    mov         eax,dword ptr [ebp+0C]
 005B32BE    push        eax
 005B32BF    mov         edx,dword ptr [ebp-4]
 005B32C2    mov         eax,dword ptr [ebp-8]
 005B32C5    call        005B3238
 005B32CA    pop         ecx
 005B32CB    test        al,al
>005B32CD    je          005B32F9
 005B32CF    mov         eax,dword ptr [ebp+0C]
 005B32D2    push        eax
 005B32D3    mov         edx,dword ptr [ebp-4]
 005B32D6    add         edx,8
 005B32D9    mov         eax,dword ptr [ebp+8]
 005B32DC    call        005B3238
 005B32E1    pop         ecx
 005B32E2    test        al,al
>005B32E4    jne         005B3324
 005B32E6    mov         eax,dword ptr [ebp-4]
 005B32E9    mov         edx,dword ptr [ebp-0C]
 005B32EC    mov         ecx,dword ptr [edx]
 005B32EE    mov         dword ptr [eax+8],ecx
 005B32F1    mov         ecx,dword ptr [edx+4]
 005B32F4    mov         dword ptr [eax+0C],ecx
>005B32F7    jmp         005B3324
 005B32F9    mov         eax,dword ptr [ebp+0C]
 005B32FC    push        eax
 005B32FD    mov         edx,dword ptr [ebp-4]
 005B3300    mov         eax,dword ptr [ebp-0C]
 005B3303    call        005B3238
 005B3308    pop         ecx
 005B3309    test        al,al
>005B330B    je          005B3320
 005B330D    mov         eax,dword ptr [ebp-4]
 005B3310    mov         edx,dword ptr [ebp+8]
 005B3313    mov         ecx,dword ptr [edx]
 005B3315    mov         dword ptr [eax+8],ecx
 005B3318    mov         ecx,dword ptr [edx+4]
 005B331B    mov         dword ptr [eax+0C],ecx
>005B331E    jmp         005B3324
 005B3320    mov         byte ptr [ebp-0D],0
 005B3324    mov         al,byte ptr [ebp-0D]
 005B3327    mov         esp,ebp
 005B3329    pop         ebp
 005B332A    ret         4
end;*}

//005B3330
{*procedure sub_005B3330(?:?; ?:?; ?:?);
begin
 005B3330    push        ebp
 005B3331    mov         ebp,esp
 005B3333    add         esp,0FFFFFFBC
 005B3336    push        esi
 005B3337    push        edi
 005B3338    mov         dword ptr [ebp-0C],ecx
 005B333B    mov         dword ptr [ebp-8],edx
 005B333E    mov         dword ptr [ebp-4],eax
 005B3341    mov         eax,dword ptr [ebp-0C]
 005B3344    xor         ecx,ecx
 005B3346    mov         edx,40
 005B334B    call        @FillChar
 005B3350    mov         eax,dword ptr [ebp-8]
 005B3353    push        eax
 005B3354    mov         eax,dword ptr [ebp-4]
 005B3357    push        eax
 005B3358    lea         eax,[ebp-1C]
 005B335B    push        eax
 005B335C    call        USER32.IntersectRect
 005B3361    test        eax,eax
>005B3363    jne         005B3387
 005B3365    mov         eax,dword ptr [ebp-4]
 005B3368    mov         edx,dword ptr [ebp-0C]
 005B336B    mov         esi,eax
 005B336D    mov         edi,edx
 005B336F    movs        dword ptr [edi],dword ptr [esi]
 005B3370    movs        dword ptr [edi],dword ptr [esi]
 005B3371    movs        dword ptr [edi],dword ptr [esi]
 005B3372    movs        dword ptr [edi],dword ptr [esi]
 005B3373    mov         eax,dword ptr [ebp-8]
 005B3376    mov         edx,dword ptr [ebp-0C]
 005B3379    mov         esi,eax
 005B337B    lea         edi,[edx+10]
 005B337E    movs        dword ptr [edi],dword ptr [esi]
 005B337F    movs        dword ptr [edi],dword ptr [esi]
 005B3380    movs        dword ptr [edi],dword ptr [esi]
 005B3381    movs        dword ptr [edi],dword ptr [esi]
>005B3382    jmp         005B34D5
 005B3387    mov         eax,dword ptr [ebp-8]
 005B338A    push        eax
 005B338B    mov         eax,dword ptr [ebp-4]
 005B338E    push        eax
 005B338F    lea         eax,[ebp-2C]
 005B3392    push        eax
 005B3393    call        USER32.UnionRect
 005B3398    push        ebp
 005B3399    lea         ecx,[ebp-34]
 005B339C    mov         edx,dword ptr [ebp-10]
 005B339F    mov         eax,dword ptr [ebp-2C]
 005B33A2    call        Point
 005B33A7    lea         eax,[ebp-34]
 005B33AA    push        eax
 005B33AB    lea         ecx,[ebp-3C]
 005B33AE    mov         edx,dword ptr [ebp-18]
 005B33B1    mov         eax,dword ptr [ebp-2C]
 005B33B4    call        Point
 005B33B9    lea         eax,[ebp-3C]
 005B33BC    push        eax
 005B33BD    lea         ecx,[ebp-44]
 005B33C0    mov         edx,dword ptr [ebp-28]
 005B33C3    mov         eax,dword ptr [ebp-2C]
 005B33C6    call        Point
 005B33CB    lea         edx,[ebp-44]
 005B33CE    mov         eax,dword ptr [ebp-0C]
 005B33D1    pop         ecx
 005B33D2    call        005B32A8
 005B33D7    pop         ecx
 005B33D8    test        al,al
>005B33DA    je          005B33E5
 005B33DC    mov         eax,dword ptr [ebp-0C]
 005B33DF    mov         edx,dword ptr [ebp-1C]
 005B33E2    mov         dword ptr [eax+8],edx
 005B33E5    push        ebp
 005B33E6    lea         ecx,[ebp-34]
 005B33E9    mov         edx,dword ptr [ebp-28]
 005B33EC    mov         eax,dword ptr [ebp-24]
 005B33EF    call        Point
 005B33F4    lea         eax,[ebp-34]
 005B33F7    push        eax
 005B33F8    lea         ecx,[ebp-3C]
 005B33FB    mov         edx,dword ptr [ebp-28]
 005B33FE    mov         eax,dword ptr [ebp-14]
 005B3401    call        Point
 005B3406    lea         eax,[ebp-3C]
 005B3409    push        eax
 005B340A    lea         ecx,[ebp-44]
 005B340D    mov         edx,dword ptr [ebp-28]
 005B3410    mov         eax,dword ptr [ebp-1C]
 005B3413    call        Point
 005B3418    lea         edx,[ebp-44]
 005B341B    mov         eax,dword ptr [ebp-0C]
 005B341E    add         eax,10
 005B3421    pop         ecx
 005B3422    call        005B32A8
 005B3427    pop         ecx
 005B3428    test        al,al
>005B342A    je          005B3435
 005B342C    mov         eax,dword ptr [ebp-0C]
 005B342F    mov         edx,dword ptr [ebp-18]
 005B3432    mov         dword ptr [eax+1C],edx
 005B3435    push        ebp
 005B3436    lea         ecx,[ebp-34]
 005B3439    mov         edx,dword ptr [ebp-20]
 005B343C    mov         eax,dword ptr [ebp-24]
 005B343F    call        Point
 005B3444    lea         eax,[ebp-34]
 005B3447    push        eax
 005B3448    lea         ecx,[ebp-3C]
 005B344B    mov         edx,dword ptr [ebp-10]
 005B344E    mov         eax,dword ptr [ebp-24]
 005B3451    call        Point
 005B3456    lea         eax,[ebp-3C]
 005B3459    push        eax
 005B345A    lea         ecx,[ebp-44]
 005B345D    mov         edx,dword ptr [ebp-18]
 005B3460    mov         eax,dword ptr [ebp-24]
 005B3463    call        Point
 005B3468    lea         edx,[ebp-44]
 005B346B    mov         eax,dword ptr [ebp-0C]
 005B346E    add         eax,20
 005B3471    pop         ecx
 005B3472    call        005B32A8
 005B3477    pop         ecx
 005B3478    test        al,al
>005B347A    je          005B3485
 005B347C    mov         eax,dword ptr [ebp-0C]
 005B347F    mov         edx,dword ptr [ebp-14]
 005B3482    mov         dword ptr [eax+20],edx
 005B3485    push        ebp
 005B3486    lea         ecx,[ebp-34]
 005B3489    mov         edx,dword ptr [ebp-20]
 005B348C    mov         eax,dword ptr [ebp-14]
 005B348F    call        Point
 005B3494    lea         eax,[ebp-34]
 005B3497    push        eax
 005B3498    lea         ecx,[ebp-3C]
 005B349B    mov         edx,dword ptr [ebp-20]
 005B349E    mov         eax,dword ptr [ebp-1C]
 005B34A1    call        Point
 005B34A6    lea         eax,[ebp-3C]
 005B34A9    push        eax
 005B34AA    lea         ecx,[ebp-44]
 005B34AD    mov         edx,dword ptr [ebp-20]
 005B34B0    mov         eax,dword ptr [ebp-2C]
 005B34B3    call        Point
 005B34B8    lea         edx,[ebp-44]
 005B34BB    mov         eax,dword ptr [ebp-0C]
 005B34BE    add         eax,30
 005B34C1    pop         ecx
 005B34C2    call        005B32A8
 005B34C7    pop         ecx
 005B34C8    test        al,al
>005B34CA    je          005B34D5
 005B34CC    mov         eax,dword ptr [ebp-0C]
 005B34CF    mov         edx,dword ptr [ebp-10]
 005B34D2    mov         dword ptr [eax+34],edx
 005B34D5    pop         edi
 005B34D6    pop         esi
 005B34D7    mov         esp,ebp
 005B34D9    pop         ebp
 005B34DA    ret
end;*}

//005B34DC
{*procedure sub_005B34DC(?:?; ?:?; ?:?; ?:?);
begin
 005B34DC    push        ebp
 005B34DD    mov         ebp,esp
 005B34DF    add         esp,0FFFFFFD8
 005B34E2    push        ebx
 005B34E3    xor         ebx,ebx
 005B34E5    mov         dword ptr [ebp-28],ebx
 005B34E8    mov         dword ptr [ebp-24],ebx
 005B34EB    mov         dword ptr [ebp-20],ebx
 005B34EE    mov         dword ptr [ebp-0C],ecx
 005B34F1    mov         dword ptr [ebp-8],edx
 005B34F4    mov         dword ptr [ebp-4],eax
 005B34F7    xor         eax,eax
 005B34F9    push        ebp
 005B34FA    push        5B3602
 005B34FF    push        dword ptr fs:[eax]
 005B3502    mov         dword ptr fs:[eax],esp
 005B3505    cmp         dword ptr [ebp-0C],0
>005B3509    je          005B35E7
 005B350F    mov         eax,dword ptr [ebp-4]
 005B3512    cmp         dword ptr [eax],0
>005B3515    jne         005B351E
 005B3517    xor         eax,eax
 005B3519    mov         dword ptr [ebp-14],eax
>005B351C    jmp         005B3528
 005B351E    mov         eax,dword ptr [ebp-4]
 005B3521    mov         eax,dword ptr [eax]
 005B3523    mov         eax,dword ptr [eax]
 005B3525    mov         dword ptr [ebp-14],eax
 005B3528    cmp         dword ptr [ebp-8],0
>005B352C    jl          005B3536
 005B352E    mov         eax,dword ptr [ebp-14]
 005B3531    cmp         eax,dword ptr [ebp-8]
>005B3534    jge         005B354B
 005B3536    lea         edx,[ebp-20]
 005B3539    mov         eax,[006EA080];^gvar_00654FF4
 005B353E    call        LoadResString
 005B3543    mov         eax,dword ptr [ebp-20]
 005B3546    call        005B30F8
 005B354B    mov         eax,dword ptr [ebp-14]
 005B354E    add         eax,dword ptr [ebp-0C]
 005B3551    mov         dword ptr [ebp-10],eax
 005B3554    cmp         dword ptr [ebp-10],0
>005B3558    jge         005B3571
 005B355A    lea         edx,[ebp-24]
 005B355D    mov         eax,[006EA0D0];^gvar_00655094
 005B3562    call        LoadResString
 005B3567    mov         eax,dword ptr [ebp-24]
 005B356A    call        005B30F8
>005B356F    jmp         005B358F
 005B3571    cmp         dword ptr [ebp-10],7FFFFFE
>005B3578    jl          005B358F
 005B357A    lea         edx,[ebp-28]
 005B357D    mov         eax,[006EA07C];^gvar_00654FEC
 005B3582    call        LoadResString
 005B3587    mov         eax,dword ptr [ebp-28]
 005B358A    call        005B30F8
 005B358F    mov         eax,dword ptr [ebp-10]
 005B3592    mov         dword ptr [ebp-18],eax
 005B3595    cmp         dword ptr [ebp-18],0
>005B3599    jle         005B359E
 005B359B    inc         dword ptr [ebp-18]
 005B359E    mov         edx,dword ptr [ebp-18]
 005B35A1    shl         edx,2
 005B35A4    mov         eax,dword ptr [ebp-4]
 005B35A7    call        @ReallocMem
 005B35AC    mov         eax,dword ptr [ebp-4]
 005B35AF    cmp         dword ptr [eax],0
>005B35B2    je          005B35E7
 005B35B4    mov         eax,dword ptr [ebp-8]
 005B35B7    inc         eax
 005B35B8    mov         dword ptr [ebp-1C],eax
 005B35BB    mov         eax,dword ptr [ebp-1C]
 005B35BE    cmp         eax,dword ptr [ebp-18]
>005B35C1    jge         005B35DC
 005B35C3    mov         eax,dword ptr [ebp-4]
 005B35C6    mov         eax,dword ptr [eax]
 005B35C8    mov         edx,dword ptr [ebp-1C]
 005B35CB    mov         ecx,dword ptr [ebp+8]
 005B35CE    mov         dword ptr [eax+edx*4],ecx
 005B35D1    inc         dword ptr [ebp-1C]
 005B35D4    mov         eax,dword ptr [ebp-1C]
 005B35D7    cmp         eax,dword ptr [ebp-18]
>005B35DA    jl          005B35C3
 005B35DC    mov         eax,dword ptr [ebp-18]
 005B35DF    dec         eax
 005B35E0    mov         edx,dword ptr [ebp-4]
 005B35E3    mov         edx,dword ptr [edx]
 005B35E5    mov         dword ptr [edx],eax
 005B35E7    xor         eax,eax
 005B35E9    pop         edx
 005B35EA    pop         ecx
 005B35EB    pop         ecx
 005B35EC    mov         dword ptr fs:[eax],edx
 005B35EF    push        5B3609
 005B35F4    lea         eax,[ebp-28]
 005B35F7    mov         edx,3
 005B35FC    call        @LStrArrayClr
 005B3601    ret
>005B3602    jmp         @HandleFinally
>005B3607    jmp         005B35F4
 005B3609    pop         ebx
 005B360A    mov         esp,ebp
 005B360C    pop         ebp
 005B360D    ret         4
end;*}

//005B3610
procedure sub_005B3610(?:Pointer; ?:Longint; ?:Integer);
begin
{*
 005B3610    push        ebp
 005B3611    mov         ebp,esp
 005B3613    add         esp,0FFFFFFF0
 005B3616    mov         dword ptr [ebp-0C],ecx
 005B3619    mov         dword ptr [ebp-8],edx
 005B361C    mov         dword ptr [ebp-4],eax
 005B361F    xor         eax,eax
 005B3621    mov         dword ptr [ebp-10],eax
 005B3624    mov         eax,dword ptr [ebp-4]
 005B3627    cmp         dword ptr [eax],0
>005B362A    je          005B3636
 005B362C    mov         eax,dword ptr [ebp-4]
 005B362F    mov         eax,dword ptr [eax]
 005B3631    mov         eax,dword ptr [eax]
 005B3633    mov         dword ptr [ebp-10],eax
 005B3636    mov         eax,dword ptr [ebp-0C]
 005B3639    push        eax
 005B363A    mov         ecx,dword ptr [ebp-8]
 005B363D    sub         ecx,dword ptr [ebp-10]
 005B3640    mov         eax,dword ptr [ebp-4]
 005B3643    mov         edx,dword ptr [ebp-10]
 005B3646    call        005B34DC
 005B364B    mov         esp,ebp
 005B364D    pop         ebp
 005B364E    ret
*}
end;

//005B3650
{*procedure sub_005B3650(?:?; ?:?; ?:?);
begin
 005B3650    push        ebp
 005B3651    mov         ebp,esp
 005B3653    add         esp,0FFFFFFF0
 005B3656    push        ebx
 005B3657    mov         dword ptr [ebp-0C],ecx
 005B365A    mov         dword ptr [ebp-8],edx
 005B365D    mov         dword ptr [ebp-4],eax
 005B3660    mov         eax,dword ptr [ebp-4]
 005B3663    cmp         dword ptr [eax],0
>005B3666    je          005B36E2
 005B3668    mov         eax,dword ptr [ebp-4]
 005B366B    mov         eax,dword ptr [eax]
 005B366D    mov         edx,dword ptr [ebp-8]
 005B3670    mov         eax,dword ptr [eax+edx*4]
 005B3673    mov         dword ptr [ebp-10],eax
 005B3676    mov         eax,dword ptr [ebp-8]
 005B3679    cmp         eax,dword ptr [ebp-0C]
>005B367C    jge         005B36A7
 005B367E    mov         eax,dword ptr [ebp-0C]
 005B3681    sub         eax,dword ptr [ebp-8]
 005B3684    mov         ecx,eax
 005B3686    shl         ecx,2
 005B3689    mov         eax,dword ptr [ebp-4]
 005B368C    mov         eax,dword ptr [eax]
 005B368E    mov         edx,dword ptr [ebp-8]
 005B3691    lea         edx,[eax+edx*4]
 005B3694    mov         eax,dword ptr [ebp-4]
 005B3697    mov         eax,dword ptr [eax]
 005B3699    mov         ebx,dword ptr [ebp-8]
 005B369C    lea         eax,[eax+ebx*4+4]
 005B36A0    call        Move
>005B36A5    jmp         005B36D4
 005B36A7    mov         eax,dword ptr [ebp-8]
 005B36AA    cmp         eax,dword ptr [ebp-0C]
>005B36AD    jle         005B36D4
 005B36AF    mov         eax,dword ptr [ebp-4]
 005B36B2    mov         eax,dword ptr [eax]
 005B36B4    mov         edx,dword ptr [ebp-0C]
 005B36B7    lea         edx,[eax+edx*4+4]
 005B36BB    mov         eax,dword ptr [ebp-4]
 005B36BE    mov         eax,dword ptr [eax]
 005B36C0    mov         ecx,dword ptr [ebp-0C]
 005B36C3    lea         eax,[eax+ecx*4]
 005B36C6    mov         ecx,dword ptr [ebp-8]
 005B36C9    sub         ecx,dword ptr [ebp-0C]
 005B36CC    shl         ecx,2
 005B36CF    call        Move
 005B36D4    mov         eax,dword ptr [ebp-4]
 005B36D7    mov         eax,dword ptr [eax]
 005B36D9    mov         edx,dword ptr [ebp-0C]
 005B36DC    mov         ecx,dword ptr [ebp-10]
 005B36DF    mov         dword ptr [eax+edx*4],ecx
 005B36E2    pop         ebx
 005B36E3    mov         esp,ebp
 005B36E5    pop         ebp
 005B36E6    ret
end;*}

//005B36E8
{*function sub_005B36E8(?:?; ?:?):?;
begin
 005B36E8    push        ebp
 005B36E9    mov         ebp,esp
 005B36EB    add         esp,0FFFFFFEC
 005B36EE    mov         dword ptr [ebp-8],edx
 005B36F1    mov         dword ptr [ebp-4],eax
 005B36F4    mov         byte ptr [ebp-9],0
 005B36F8    cmp         dword ptr [ebp-4],0
>005B36FC    je          005B373A
 005B36FE    cmp         dword ptr [ebp-8],0
>005B3702    je          005B3742
 005B3704    mov         eax,dword ptr [ebp-4]
 005B3707    mov         eax,dword ptr [eax]
 005B3709    test        eax,eax
>005B370B    jl          005B3734
 005B370D    inc         eax
 005B370E    mov         dword ptr [ebp-14],eax
 005B3711    mov         dword ptr [ebp-10],0
 005B3718    mov         eax,dword ptr [ebp-4]
 005B371B    mov         edx,dword ptr [ebp-10]
 005B371E    mov         eax,dword ptr [eax+edx*4]
 005B3721    mov         edx,dword ptr [ebp-8]
 005B3724    mov         ecx,dword ptr [ebp-10]
 005B3727    cmp         eax,dword ptr [edx+ecx*4]
>005B372A    jne         005B3742
 005B372C    inc         dword ptr [ebp-10]
 005B372F    dec         dword ptr [ebp-14]
>005B3732    jne         005B3718
 005B3734    mov         byte ptr [ebp-9],1
>005B3738    jmp         005B3742
 005B373A    cmp         dword ptr [ebp-8],0
 005B373E    sete        byte ptr [ebp-9]
 005B3742    mov         al,byte ptr [ebp-9]
 005B3745    mov         esp,ebp
 005B3747    pop         ebp
 005B3748    ret
end;*}

//005B374C
{*procedure sub_005B374C(?:HWND; ?:?);
begin
 005B374C    push        ebp
 005B374D    mov         ebp,esp
 005B374F    add         esp,0FFFFFFDC
 005B3752    mov         dword ptr [ebp-8],edx
 005B3755    mov         dword ptr [ebp-4],eax
 005B3758    xor         eax,eax
 005B375A    mov         dword ptr [ebp-20],eax
 005B375D    push        1
 005B375F    mov         eax,dword ptr [ebp-8]
 005B3762    push        eax
 005B3763    mov         eax,dword ptr [ebp-8]
 005B3766    push        eax
 005B3767    mov         eax,dword ptr [ebp-4]
 005B376A    push        eax
 005B376B    lea         eax,[ebp-24]
 005B376E    push        eax
 005B376F    call        USER32.PeekMessageA
 005B3774    test        eax,eax
>005B3776    je          005B3787
 005B3778    cmp         dword ptr [ebp-20],12
>005B377C    jne         005B3787
 005B377E    mov         eax,dword ptr [ebp-1C]
 005B3781    push        eax
 005B3782    call        USER32.PostQuitMessage
 005B3787    mov         esp,ebp
 005B3789    pop         ebp
 005B378A    ret
end;*}

//005B378C
constructor TInplaceEdit.Create(AOwner:TComponent);
begin
{*
 005B378C    push        ebp
 005B378D    mov         ebp,esp
 005B378F    add         esp,0FFFFFFF4
 005B3792    test        dl,dl
>005B3794    je          005B379E
 005B3796    add         esp,0FFFFFFF0
 005B3799    call        @ClassCreate
 005B379E    mov         dword ptr [ebp-0C],ecx
 005B37A1    mov         byte ptr [ebp-5],dl
 005B37A4    mov         dword ptr [ebp-4],eax
 005B37A7    mov         ecx,dword ptr [ebp-0C]
 005B37AA    xor         edx,edx
 005B37AC    mov         eax,dword ptr [ebp-4]
 005B37AF    call        TCustomMaskEdit.Create
 005B37B4    xor         edx,edx
 005B37B6    mov         eax,dword ptr [ebp-4]
 005B37B9    call        TCDirectoryOutline.SetParentCtl3D
 005B37BE    xor         edx,edx
 005B37C0    mov         eax,dword ptr [ebp-4]
 005B37C3    call        TCCalendar.SetCtl3D
 005B37C8    xor         edx,edx
 005B37CA    mov         eax,dword ptr [ebp-4]
 005B37CD    call        TCCalendar.SetTabStop
 005B37D2    xor         edx,edx
 005B37D4    mov         eax,dword ptr [ebp-4]
 005B37D7    call        TMemo.SetBorderStyle
 005B37DC    mov         eax,dword ptr [ebp-4]
 005B37DF    mov         byte ptr [eax+1F8],0;TInplaceEdit.FDoubleBuffered:Boolean
 005B37E6    mov         eax,dword ptr [ebp-4]
 005B37E9    cmp         byte ptr [ebp-5],0
>005B37ED    je          005B37FE
 005B37EF    call        @AfterConstruction
 005B37F4    pop         dword ptr fs:[0]
 005B37FB    add         esp,0C
 005B37FE    mov         eax,dword ptr [ebp-4]
 005B3801    mov         esp,ebp
 005B3803    pop         ebp
 005B3804    ret
*}
end;

//005B3808
{*procedure sub_005B3808(?:?);
begin
 005B3808    push        ebp
 005B3809    mov         ebp,esp
 005B380B    add         esp,0FFFFFFF8
 005B380E    mov         dword ptr [ebp-8],edx
 005B3811    mov         dword ptr [ebp-4],eax
 005B3814    mov         edx,dword ptr [ebp-8]
 005B3817    mov         eax,dword ptr [ebp-4]
 005B381A    call        005991BC
 005B381F    mov         eax,dword ptr [ebp-8]
 005B3822    or          dword ptr [eax+4],4
 005B3826    pop         ecx
 005B3827    pop         ecx
 005B3828    pop         ebp
 005B3829    ret
end;*}

//005B382C
procedure sub_005B382C(?:TInplaceEdit; ?:TCustomGrid);
begin
{*
 005B382C    push        ebp
 005B382D    mov         ebp,esp
 005B382F    add         esp,0FFFFFFF8
 005B3832    mov         dword ptr [ebp-8],edx
 005B3835    mov         dword ptr [ebp-4],eax
 005B3838    mov         eax,dword ptr [ebp-8]
 005B383B    mov         edx,dword ptr [ebp-4]
 005B383E    mov         dword ptr [edx+240],eax
 005B3844    pop         ecx
 005B3845    pop         ecx
 005B3846    pop         ebp
 005B3847    ret
*}
end;

//005B3848
{*procedure TInplaceEdit.CMShowingChanged(?:?);
begin
 005B3848    push        ebp
 005B3849    mov         ebp,esp
 005B384B    add         esp,0FFFFFFF8
 005B384E    mov         dword ptr [ebp-8],edx
 005B3851    mov         dword ptr [ebp-4],eax
 005B3854    pop         ecx
 005B3855    pop         ecx
 005B3856    pop         ebp
 005B3857    ret
end;*}

//005B3858
{*procedure TInplaceEdit.WMGetDlgCode(?:?);
begin
 005B3858    push        ebp
 005B3859    mov         ebp,esp
 005B385B    add         esp,0FFFFFFF8
 005B385E    mov         dword ptr [ebp-8],edx
 005B3861    mov         dword ptr [ebp-4],eax
 005B3864    mov         edx,dword ptr [ebp-8]
 005B3867    mov         eax,dword ptr [ebp-4]
 005B386A    mov         ecx,dword ptr [eax]
 005B386C    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 005B386F    mov         eax,dword ptr [ebp-4]
 005B3872    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3878    test        byte ptr [eax+249],8;TCustomGrid.?f249:byte
>005B387F    je          005B3888
 005B3881    mov         eax,dword ptr [ebp-8]
 005B3884    or          dword ptr [eax+0C],2
 005B3888    pop         ecx
 005B3889    pop         ecx
 005B388A    pop         ebp
 005B388B    ret
end;*}

//005B388C
{*procedure TInplaceEdit.WMPaste(?:?);
begin
 005B388C    push        ebp
 005B388D    mov         ebp,esp
 005B388F    add         esp,0FFFFFFF8
 005B3892    mov         dword ptr [ebp-8],edx
 005B3895    mov         dword ptr [ebp-4],eax
 005B3898    mov         eax,dword ptr [ebp-4]
 005B389B    mov         edx,dword ptr [eax]
 005B389D    call        dword ptr [edx+0E4];TInplaceEdit.sub_005B3974
 005B38A3    test        al,al
>005B38A5    je          005B38B2
 005B38A7    mov         edx,dword ptr [ebp-8]
 005B38AA    mov         eax,dword ptr [ebp-4]
 005B38AD    call        TCustomMaskEdit.WMPaste
 005B38B2    pop         ecx
 005B38B3    pop         ecx
 005B38B4    pop         ebp
 005B38B5    ret
end;*}

//005B38B8
{*procedure TInplaceEdit.WMClear(?:?);
begin
 005B38B8    push        ebp
 005B38B9    mov         ebp,esp
 005B38BB    add         esp,0FFFFFFF8
 005B38BE    mov         dword ptr [ebp-8],edx
 005B38C1    mov         dword ptr [ebp-4],eax
 005B38C4    mov         eax,dword ptr [ebp-4]
 005B38C7    mov         edx,dword ptr [eax]
 005B38C9    call        dword ptr [edx+0E4];TInplaceEdit.sub_005B3974
 005B38CF    test        al,al
>005B38D1    je          005B38DE
 005B38D3    mov         edx,dword ptr [ebp-8]
 005B38D6    mov         eax,dword ptr [ebp-4]
 005B38D9    mov         ecx,dword ptr [eax]
 005B38DB    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 005B38DE    pop         ecx
 005B38DF    pop         ecx
 005B38E0    pop         ebp
 005B38E1    ret
end;*}

//005B38E4
{*procedure TInplaceEdit.WMCut(?:?);
begin
 005B38E4    push        ebp
 005B38E5    mov         ebp,esp
 005B38E7    add         esp,0FFFFFFF8
 005B38EA    mov         dword ptr [ebp-8],edx
 005B38ED    mov         dword ptr [ebp-4],eax
 005B38F0    mov         eax,dword ptr [ebp-4]
 005B38F3    mov         edx,dword ptr [eax]
 005B38F5    call        dword ptr [edx+0E4];TInplaceEdit.sub_005B3974
 005B38FB    test        al,al
>005B38FD    je          005B390A
 005B38FF    mov         edx,dword ptr [ebp-8]
 005B3902    mov         eax,dword ptr [ebp-4]
 005B3905    call        TCustomMaskEdit.WMCut
 005B390A    pop         ecx
 005B390B    pop         ecx
 005B390C    pop         ebp
 005B390D    ret
end;*}

//005B3910
procedure TInplaceEdit.sub_005B3910;
begin
{*
 005B3910    push        ebp
 005B3911    mov         ebp,esp
 005B3913    push        ecx
 005B3914    push        esi
 005B3915    mov         dword ptr [ebp-4],eax
 005B3918    mov         eax,dword ptr [ebp-4]
 005B391B    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3921    mov         si,0FFE9
 005B3925    call        @CallDynaInst;TControl.sub_005F5508
 005B392A    pop         esi
 005B392B    pop         ecx
 005B392C    pop         ebp
 005B392D    ret
*}
end;

//005B3930
procedure TInplaceEdit.DoMouseWheel(Shift:TShiftState; WheelDelta:Integer; MousePos:TPoint);
begin
{*
 005B3930    push        ebp
 005B3931    mov         ebp,esp
 005B3933    add         esp,0FFFFFFE8
 005B3936    push        esi
 005B3937    push        edi
 005B3938    mov         esi,dword ptr [ebp+8]
 005B393B    lea         edi,[ebp-14]
 005B393E    movs        dword ptr [edi],dword ptr [esi]
 005B393F    movs        dword ptr [edi],dword ptr [esi]
 005B3940    mov         dword ptr [ebp-0C],ecx
 005B3943    mov         byte ptr [ebp-5],dl
 005B3946    mov         dword ptr [ebp-4],eax
 005B3949    lea         eax,[ebp-14]
 005B394C    push        eax
 005B394D    mov         ecx,dword ptr [ebp-0C]
 005B3950    mov         dl,byte ptr [ebp-5]
 005B3953    mov         eax,dword ptr [ebp-4]
 005B3956    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B395C    mov         si,0FFE2
 005B3960    call        @CallDynaInst;TControl.DoMouseWheel
 005B3965    mov         byte ptr [ebp-15],al
 005B3968    mov         al,byte ptr [ebp-15]
 005B396B    pop         edi
 005B396C    pop         esi
 005B396D    mov         esp,ebp
 005B396F    pop         ebp
 005B3970    ret         4
*}
end;

//005B3974
{*function sub_005B3974:?;
begin
 005B3974    push        ebp
 005B3975    mov         ebp,esp
 005B3977    add         esp,0FFFFFFF8
 005B397A    push        esi
 005B397B    mov         dword ptr [ebp-4],eax
 005B397E    mov         eax,dword ptr [ebp-4]
 005B3981    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3987    mov         si,0FFB0
 005B398B    call        @CallDynaInst;TCustomGrid.sub_005B48F0
 005B3990    mov         byte ptr [ebp-5],al
 005B3993    mov         al,byte ptr [ebp-5]
 005B3996    pop         esi
 005B3997    pop         ecx
 005B3998    pop         ecx
 005B3999    pop         ebp
 005B399A    ret
end;*}

//005B399C
procedure SendToParent;
begin
{*
 005B399C    push        ebp
 005B399D    mov         ebp,esp
 005B399F    push        esi
 005B39A0    mov         eax,dword ptr [ebp+8]
 005B39A3    mov         cl,byte ptr [eax-9]
 005B39A6    mov         eax,dword ptr [ebp+8]
 005B39A9    mov         edx,dword ptr [eax-8]
 005B39AC    mov         eax,dword ptr [ebp+8]
 005B39AF    mov         eax,dword ptr [eax-4]
 005B39B2    mov         eax,dword ptr [eax+240]
 005B39B8    mov         si,0FFBC
 005B39BC    call        @CallDynaInst
 005B39C1    mov         eax,dword ptr [ebp+8]
 005B39C4    mov         eax,dword ptr [eax-8]
 005B39C7    mov         word ptr [eax],0
 005B39CC    pop         esi
 005B39CD    pop         ebp
 005B39CE    ret
*}
end;

//005B39D0
procedure ParentEvent;
begin
{*
 005B39D0    push        ebp
 005B39D1    mov         ebp,esp
 005B39D3    add         esp,0FFFFFFF8
 005B39D6    mov         eax,dword ptr [ebp+8]
 005B39D9    mov         eax,dword ptr [eax-4]
 005B39DC    mov         eax,dword ptr [eax+240]
 005B39E2    mov         edx,dword ptr [eax+1D8]
 005B39E8    mov         dword ptr [ebp-8],edx
 005B39EB    mov         edx,dword ptr [eax+1DC]
 005B39F1    mov         dword ptr [ebp-4],edx
 005B39F4    cmp         word ptr [ebp-6],0
>005B39F9    je          005B3A1A
 005B39FB    mov         eax,dword ptr [ebp+8]
 005B39FE    mov         al,byte ptr [eax-9]
 005B3A01    push        eax
 005B3A02    mov         eax,dword ptr [ebp+8]
 005B3A05    mov         ecx,dword ptr [eax-8]
 005B3A08    mov         eax,dword ptr [ebp+8]
 005B3A0B    mov         eax,dword ptr [eax-4]
 005B3A0E    mov         edx,dword ptr [eax+240]
 005B3A14    mov         eax,dword ptr [ebp-4]
 005B3A17    call        dword ptr [ebp-8]
 005B3A1A    pop         ecx
 005B3A1B    pop         ecx
 005B3A1C    pop         ebp
 005B3A1D    ret
*}
end;

//005B3A20
function ForwardMovement:Boolean;
begin
{*
 005B3A20    push        ebp
 005B3A21    mov         ebp,esp
 005B3A23    push        ecx
 005B3A24    mov         eax,dword ptr [ebp+8]
 005B3A27    mov         eax,dword ptr [eax-4]
 005B3A2A    mov         eax,dword ptr [eax+240]
 005B3A30    test        byte ptr [eax+249],20
 005B3A37    setne       al
 005B3A3A    mov         byte ptr [ebp-1],al
 005B3A3D    mov         al,byte ptr [ebp-1]
 005B3A40    pop         ecx
 005B3A41    pop         ebp
 005B3A42    ret
*}
end;

//005B3A44
function Ctrl:Boolean;
begin
{*
 005B3A44    push        ebp
 005B3A45    mov         ebp,esp
 005B3A47    push        ecx
 005B3A48    mov         eax,dword ptr [ebp+8]
 005B3A4B    test        byte ptr [eax-9],4
 005B3A4F    setne       al
 005B3A52    mov         byte ptr [ebp-1],al
 005B3A55    mov         al,byte ptr [ebp-1]
 005B3A58    pop         ecx
 005B3A59    pop         ebp
 005B3A5A    ret
*}
end;

//005B3A5C
{*procedure sub_005B3A5C(?:?; ?:?);
begin
 005B3A5C    push        ebp
 005B3A5D    mov         ebp,esp
 005B3A5F    push        ecx
 005B3A60    mov         dword ptr [ebp-4],eax
 005B3A63    mov         eax,dword ptr [ebp-4]
 005B3A66    add         eax,4
 005B3A69    push        eax
 005B3A6A    mov         eax,dword ptr [ebp-4]
 005B3A6D    push        eax
 005B3A6E    push        0B0
 005B3A73    mov         eax,dword ptr [ebp+8]
 005B3A76    mov         eax,dword ptr [eax-4]
 005B3A79    call        TWinControl.GetHandle
 005B3A7E    push        eax
 005B3A7F    call        USER32.SendMessageA
 005B3A84    pop         ecx
 005B3A85    pop         ebp
 005B3A86    ret
end;*}

//005B3A88
{*function sub_005B3A88(?:?):?;
begin
 005B3A88    push        ebp
 005B3A89    mov         ebp,esp
 005B3A8B    add         esp,0FFFFFFF4
 005B3A8E    lea         eax,[ebp-0C]
 005B3A91    push        eax
 005B3A92    call        USER32.GetCaretPos
 005B3A97    mov         dx,word ptr [ebp-8]
 005B3A9B    mov         ax,word ptr [ebp-0C]
 005B3A9F    call        0063CEE0
 005B3AA4    push        eax
 005B3AA5    push        0
 005B3AA7    push        0D7
 005B3AAC    mov         eax,dword ptr [ebp+8]
 005B3AAF    mov         eax,dword ptr [eax-4]
 005B3AB2    call        TWinControl.GetHandle
 005B3AB7    push        eax
 005B3AB8    call        USER32.SendMessageA
 005B3ABD    mov         dword ptr [ebp-4],eax
 005B3AC0    mov         eax,dword ptr [ebp-4]
 005B3AC3    mov         esp,ebp
 005B3AC5    pop         ebp
 005B3AC6    ret
end;*}

//005B3AC8
function RightSide:Boolean;
begin
{*
 005B3AC8    push        ebp
 005B3AC9    mov         ebp,esp
 005B3ACB    add         esp,0FFFFFFF4
 005B3ACE    push        ebx
 005B3ACF    mov         eax,dword ptr [ebp+8]
 005B3AD2    push        eax
 005B3AD3    lea         eax,[ebp-0C]
 005B3AD6    call        005B3A5C
 005B3ADB    pop         ecx
 005B3ADC    mov         eax,dword ptr [ebp+8]
 005B3ADF    mov         eax,dword ptr [eax-4]
 005B3AE2    call        005AA308
 005B3AE7    mov         ebx,eax
 005B3AE9    mov         eax,dword ptr [ebp+8]
 005B3AEC    push        eax
 005B3AED    call        005B3A88
 005B3AF2    pop         ecx
 005B3AF3    cmp         ebx,eax
>005B3AF5    jne         005B3B15
 005B3AF7    cmp         dword ptr [ebp-0C],0
>005B3AFB    je          005B3B05
 005B3AFD    mov         eax,dword ptr [ebp-8]
 005B3B00    cmp         eax,dword ptr [ebp-0C]
>005B3B03    jne         005B3B15
 005B3B05    mov         eax,dword ptr [ebp+8]
 005B3B08    mov         eax,dword ptr [eax-4]
 005B3B0B    call        005AA308
 005B3B10    cmp         eax,dword ptr [ebp-8]
>005B3B13    je          005B3B19
 005B3B15    xor         eax,eax
>005B3B17    jmp         005B3B1B
 005B3B19    mov         al,1
 005B3B1B    mov         byte ptr [ebp-1],al
 005B3B1E    mov         al,byte ptr [ebp-1]
 005B3B21    pop         ebx
 005B3B22    mov         esp,ebp
 005B3B24    pop         ebp
 005B3B25    ret
*}
end;

//005B3B28
function LeftSide:Boolean;
begin
{*
 005B3B28    push        ebp
 005B3B29    mov         ebp,esp
 005B3B2B    add         esp,0FFFFFFF4
 005B3B2E    mov         eax,dword ptr [ebp+8]
 005B3B31    push        eax
 005B3B32    lea         eax,[ebp-0C]
 005B3B35    call        005B3A5C
 005B3B3A    pop         ecx
 005B3B3B    mov         eax,dword ptr [ebp+8]
 005B3B3E    push        eax
 005B3B3F    call        005B3A88
 005B3B44    pop         ecx
 005B3B45    test        eax,eax
>005B3B47    jne         005B3B65
 005B3B49    cmp         dword ptr [ebp-0C],0
>005B3B4D    jne         005B3B65
 005B3B4F    cmp         dword ptr [ebp-8],0
>005B3B53    je          005B3B69
 005B3B55    mov         eax,dword ptr [ebp+8]
 005B3B58    mov         eax,dword ptr [eax-4]
 005B3B5B    call        005AA308
 005B3B60    cmp         eax,dword ptr [ebp-8]
>005B3B63    je          005B3B69
 005B3B65    xor         eax,eax
>005B3B67    jmp         005B3B6B
 005B3B69    mov         al,1
 005B3B6B    mov         byte ptr [ebp-1],al
 005B3B6E    mov         al,byte ptr [ebp-1]
 005B3B71    mov         esp,ebp
 005B3B73    pop         ebp
 005B3B74    ret
*}
end;

//005B3B78
procedure TInplaceEdit.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 005B3B78    push        ebp
 005B3B79    mov         ebp,esp
 005B3B7B    add         esp,0FFFFFFF4
 005B3B7E    push        esi
 005B3B7F    mov         byte ptr [ebp-9],cl
 005B3B82    mov         dword ptr [ebp-8],edx
 005B3B85    mov         dword ptr [ebp-4],eax
 005B3B88    mov         eax,dword ptr [ebp-8]
 005B3B8B    movzx       eax,word ptr [eax]
 005B3B8E    cmp         eax,26
>005B3B91    jg          005B3BD0
>005B3B93    je          005B3BFF
 005B3B95    cmp         eax,23
>005B3B98    jg          005B3BBB
>005B3B9A    je          005B3CF5
 005B3BA0    sub         eax,9
>005B3BA3    je          005B3D39
 005B3BA9    sub         eax,12
>005B3BAC    je          005B3BFF
 005B3BAE    add         eax,0FFFFFFFA
 005B3BB1    sub         eax,2
>005B3BB4    jb          005B3BFF
>005B3BB6    jmp         005B3D7A
 005B3BBB    sub         eax,24
>005B3BBE    je          005B3CC0
 005B3BC4    dec         eax
>005B3BC5    je          005B3C56
>005B3BCB    jmp         005B3D7A
 005B3BD0    cmp         eax,2D
>005B3BD3    jg          005B3BE8
>005B3BD5    je          005B3C0B
 005B3BD7    sub         eax,27
>005B3BDA    je          005B3C8B
 005B3BE0    dec         eax
>005B3BE1    je          005B3BFF
>005B3BE3    jmp         005B3D7A
 005B3BE8    sub         eax,2E
>005B3BEB    je          005B3D48
 005B3BF1    sub         eax,43
>005B3BF4    je          005B3D1F
>005B3BFA    jmp         005B3D7A
 005B3BFF    push        ebp
 005B3C00    call        SendToParent
 005B3C05    pop         ecx
>005B3C06    jmp         005B3D7A
 005B3C0B    mov         al,[005B3DA0]
 005B3C10    cmp         al,byte ptr [ebp-9]
>005B3C13    jne         005B3C21
 005B3C15    push        ebp
 005B3C16    call        SendToParent
 005B3C1B    pop         ecx
>005B3C1C    jmp         005B3D7A
 005B3C21    mov         al,[005B3DA4]
 005B3C26    cmp         al,byte ptr [ebp-9]
>005B3C29    jne         005B3D7A
 005B3C2F    mov         eax,dword ptr [ebp-4]
 005B3C32    mov         eax,dword ptr [eax+240]
 005B3C38    mov         si,0FFB0
 005B3C3C    call        @CallDynaInst
 005B3C41    test        al,al
>005B3C43    jne         005B3D7A
 005B3C49    mov         eax,dword ptr [ebp-8]
 005B3C4C    mov         word ptr [eax],0
>005B3C51    jmp         005B3D7A
 005B3C56    push        ebp
 005B3C57    call        ForwardMovement
 005B3C5C    pop         ecx
 005B3C5D    test        al,al
>005B3C5F    je          005B3D7A
 005B3C65    push        ebp
 005B3C66    call        Ctrl
 005B3C6B    pop         ecx
 005B3C6C    test        al,al
>005B3C6E    jne         005B3C7F
 005B3C70    push        ebp
 005B3C71    call        LeftSide
 005B3C76    pop         ecx
 005B3C77    test        al,al
>005B3C79    je          005B3D7A
 005B3C7F    push        ebp
 005B3C80    call        SendToParent
 005B3C85    pop         ecx
>005B3C86    jmp         005B3D7A
 005B3C8B    push        ebp
 005B3C8C    call        ForwardMovement
 005B3C91    pop         ecx
 005B3C92    test        al,al
>005B3C94    je          005B3D7A
 005B3C9A    push        ebp
 005B3C9B    call        Ctrl
 005B3CA0    pop         ecx
 005B3CA1    test        al,al
>005B3CA3    jne         005B3CB4
 005B3CA5    push        ebp
 005B3CA6    call        RightSide
 005B3CAB    pop         ecx
 005B3CAC    test        al,al
>005B3CAE    je          005B3D7A
 005B3CB4    push        ebp
 005B3CB5    call        SendToParent
 005B3CBA    pop         ecx
>005B3CBB    jmp         005B3D7A
 005B3CC0    push        ebp
 005B3CC1    call        ForwardMovement
 005B3CC6    pop         ecx
 005B3CC7    test        al,al
>005B3CC9    je          005B3D7A
 005B3CCF    push        ebp
 005B3CD0    call        Ctrl
 005B3CD5    pop         ecx
 005B3CD6    test        al,al
>005B3CD8    jne         005B3CE9
 005B3CDA    push        ebp
 005B3CDB    call        LeftSide
 005B3CE0    pop         ecx
 005B3CE1    test        al,al
>005B3CE3    je          005B3D7A
 005B3CE9    push        ebp
 005B3CEA    call        SendToParent
 005B3CEF    pop         ecx
>005B3CF0    jmp         005B3D7A
 005B3CF5    push        ebp
 005B3CF6    call        ForwardMovement
 005B3CFB    pop         ecx
 005B3CFC    test        al,al
>005B3CFE    je          005B3D7A
 005B3D00    push        ebp
 005B3D01    call        Ctrl
 005B3D06    pop         ecx
 005B3D07    test        al,al
>005B3D09    jne         005B3D16
 005B3D0B    push        ebp
 005B3D0C    call        RightSide
 005B3D11    pop         ecx
 005B3D12    test        al,al
>005B3D14    je          005B3D7A
 005B3D16    push        ebp
 005B3D17    call        SendToParent
 005B3D1C    pop         ecx
>005B3D1D    jmp         005B3D7A
 005B3D1F    push        ebp
 005B3D20    call        ParentEvent
 005B3D25    pop         ecx
 005B3D26    mov         eax,dword ptr [ebp-8]
 005B3D29    cmp         word ptr [eax],71
>005B3D2D    jne         005B3D7A
 005B3D2F    mov         eax,dword ptr [ebp-4]
 005B3D32    call        TInplaceEdit.Deselect
>005B3D37    jmp         005B3D98
 005B3D39    test        byte ptr [ebp-9],2
>005B3D3D    jne         005B3D7A
 005B3D3F    push        ebp
 005B3D40    call        SendToParent
 005B3D45    pop         ecx
>005B3D46    jmp         005B3D7A
 005B3D48    push        ebp
 005B3D49    call        Ctrl
 005B3D4E    pop         ecx
 005B3D4F    test        al,al
>005B3D51    je          005B3D5C
 005B3D53    push        ebp
 005B3D54    call        SendToParent
 005B3D59    pop         ecx
>005B3D5A    jmp         005B3D7A
 005B3D5C    mov         eax,dword ptr [ebp-4]
 005B3D5F    mov         eax,dword ptr [eax+240]
 005B3D65    mov         si,0FFB0
 005B3D69    call        @CallDynaInst
 005B3D6E    test        al,al
>005B3D70    jne         005B3D7A
 005B3D72    mov         eax,dword ptr [ebp-8]
 005B3D75    mov         word ptr [eax],0
 005B3D7A    mov         eax,dword ptr [ebp-8]
 005B3D7D    cmp         word ptr [eax],0
>005B3D81    je          005B3D98
 005B3D83    push        ebp
 005B3D84    call        ParentEvent
 005B3D89    pop         ecx
 005B3D8A    mov         edx,dword ptr [ebp-8]
 005B3D8D    mov         cl,byte ptr [ebp-9]
 005B3D90    mov         eax,dword ptr [ebp-4]
 005B3D93    call        TCustomMaskEdit.KeyDown
 005B3D98    pop         esi
 005B3D99    mov         esp,ebp
 005B3D9B    pop         ebp
 005B3D9C    ret
*}
end;

//005B3DA8
{*procedure TInplaceEdit.sub_005AA158(?:?);
begin
 005B3DA8    push        ebp
 005B3DA9    mov         ebp,esp
 005B3DAB    add         esp,0FFFFFFF0
 005B3DAE    push        esi
 005B3DAF    mov         dword ptr [ebp-8],edx
 005B3DB2    mov         dword ptr [ebp-4],eax
 005B3DB5    mov         edx,dword ptr [ebp-8]
 005B3DB8    mov         eax,dword ptr [ebp-4]
 005B3DBB    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3DC1    mov         si,0FFBA
 005B3DC5    call        @CallDynaInst;TCustomGrid.sub_005B8C50
 005B3DCA    mov         eax,dword ptr [ebp-8]
 005B3DCD    mov         al,byte ptr [eax]
 005B3DCF    add         al,0E0
 005B3DD1    sub         al,0E0
>005B3DD3    jae         005B3DFD
 005B3DD5    mov         edx,dword ptr [ebp-8]
 005B3DD8    mov         dl,byte ptr [edx]
 005B3DDA    mov         eax,dword ptr [ebp-4]
 005B3DDD    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3DE3    mov         si,0FFB2
 005B3DE7    call        @CallDynaInst;TCustomGrid.sub_005B48BC
 005B3DEC    test        al,al
>005B3DEE    jne         005B3DFD
 005B3DF0    mov         eax,dword ptr [ebp-8]
 005B3DF3    mov         byte ptr [eax],0
 005B3DF6    push        0
 005B3DF8    call        USER32.MessageBeep
 005B3DFD    mov         eax,dword ptr [ebp-8]
 005B3E00    movzx       eax,byte ptr [eax]
 005B3E03    cmp         eax,16
>005B3E06    jg          005B3E1C
>005B3E08    je          005B3E82
 005B3E0A    sub         eax,8
>005B3E0D    je          005B3E82
 005B3E0F    dec         eax
>005B3E10    je          005B3E32
 005B3E12    sub         eax,4
>005B3E15    je          005B3E3A
>005B3E17    jmp         005B3E9E
 005B3E1C    sub         eax,18
>005B3E1F    je          005B3E82
 005B3E21    sub         eax,3
>005B3E24    je          005B3E32
 005B3E26    add         eax,0FFFFFFFB
 005B3E29    sub         eax,0E0
>005B3E2E    jb          005B3E82
>005B3E30    jmp         005B3E9E
 005B3E32    mov         eax,dword ptr [ebp-8]
 005B3E35    mov         byte ptr [eax],0
>005B3E38    jmp         005B3E9E
 005B3E3A    lea         eax,[ebp-0C]
 005B3E3D    push        eax
 005B3E3E    lea         eax,[ebp-10]
 005B3E41    push        eax
 005B3E42    push        0B0
 005B3E47    mov         eax,dword ptr [ebp-4]
 005B3E4A    call        TWinControl.GetHandle
 005B3E4F    push        eax
 005B3E50    call        USER32.SendMessageA
 005B3E55    cmp         dword ptr [ebp-10],0
>005B3E59    jne         005B3E72
 005B3E5B    mov         eax,dword ptr [ebp-4]
 005B3E5E    call        005AA308
 005B3E63    cmp         eax,dword ptr [ebp-0C]
>005B3E66    jne         005B3E72
 005B3E68    mov         eax,dword ptr [ebp-4]
 005B3E6B    call        TInplaceEdit.Deselect
>005B3E70    jmp         005B3E7A
 005B3E72    mov         eax,dword ptr [ebp-4]
 005B3E75    call        0059901C
 005B3E7A    mov         eax,dword ptr [ebp-8]
 005B3E7D    mov         byte ptr [eax],0
>005B3E80    jmp         005B3E9E
 005B3E82    mov         eax,dword ptr [ebp-4]
 005B3E85    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3E8B    mov         si,0FFB0
 005B3E8F    call        @CallDynaInst;TCustomGrid.sub_005B48F0
 005B3E94    test        al,al
>005B3E96    jne         005B3E9E
 005B3E98    mov         eax,dword ptr [ebp-8]
 005B3E9B    mov         byte ptr [eax],0
 005B3E9E    mov         eax,dword ptr [ebp-8]
 005B3EA1    cmp         byte ptr [eax],0
>005B3EA4    je          005B3EB1
 005B3EA6    mov         edx,dword ptr [ebp-8]
 005B3EA9    mov         eax,dword ptr [ebp-4]
 005B3EAC    call        TCustomMaskEdit.sub_005AA158
 005B3EB1    pop         esi
 005B3EB2    mov         esp,ebp
 005B3EB4    pop         ebp
 005B3EB5    ret
end;*}

//005B3EB8
{*procedure TInplaceEdit.sub_005AA0F4(?:?; ?:?);
begin
 005B3EB8    push        ebp
 005B3EB9    mov         ebp,esp
 005B3EBB    add         esp,0FFFFFFF4
 005B3EBE    push        esi
 005B3EBF    mov         byte ptr [ebp-9],cl
 005B3EC2    mov         dword ptr [ebp-8],edx
 005B3EC5    mov         dword ptr [ebp-4],eax
 005B3EC8    mov         edx,dword ptr [ebp-8]
 005B3ECB    mov         cl,byte ptr [ebp-9]
 005B3ECE    mov         eax,dword ptr [ebp-4]
 005B3ED1    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B3ED7    mov         si,0FFBB
 005B3EDB    call        @CallDynaInst;TWinControl.sub_005FA920
 005B3EE0    pop         esi
 005B3EE1    mov         esp,ebp
 005B3EE3    pop         ebp
 005B3EE4    ret
end;*}

//005B3EE8
{*procedure sub_005B3EE8(?:?);
begin
 005B3EE8    push        ebp
 005B3EE9    mov         ebp,esp
 005B3EEB    add         esp,0FFFFFFF8
 005B3EEE    push        ebx
 005B3EEF    mov         dword ptr [ebp-8],edx
 005B3EF2    mov         dword ptr [ebp-4],eax
 005B3EF5    mov         eax,dword ptr [ebp-8]
 005B3EF8    mov         eax,dword ptr [eax]
 005B3EFA    sub         eax,7
>005B3EFD    je          005B3F08
 005B3EFF    sub         eax,1FA
>005B3F04    je          005B3F3E
>005B3F06    jmp         005B3F6B
 005B3F08    mov         eax,dword ptr [ebp-4]
 005B3F0B    call        005CD060
 005B3F10    test        eax,eax
>005B3F12    je          005B3F31
 005B3F14    mov         eax,dword ptr [ebp-4]
 005B3F17    call        005CD060
 005B3F1C    mov         edx,dword ptr [ebp-4]
 005B3F1F    mov         edx,dword ptr [edx+240];TInplaceEdit.FGrid:TCustomGrid
 005B3F25    mov         ecx,dword ptr [eax]
 005B3F27    call        dword ptr [ecx+0E4]
 005B3F2D    test        al,al
>005B3F2F    je          005B3F76
 005B3F31    mov         edx,dword ptr [ebp-8]
 005B3F34    mov         eax,dword ptr [ebp-4]
 005B3F37    mov         ecx,dword ptr [eax]
 005B3F39    call        dword ptr [ecx-14];TObject.Dispatch
>005B3F3C    jmp         005B3F76
 005B3F3E    call        USER32.GetMessageTime
 005B3F43    mov         ebx,eax
 005B3F45    mov         eax,dword ptr [ebp-4]
 005B3F48    sub         ebx,dword ptr [eax+244]
 005B3F4E    call        USER32.GetDoubleClickTime
 005B3F53    cmp         ebx,eax
>005B3F55    jae         005B3F60
 005B3F57    mov         eax,dword ptr [ebp-8]
 005B3F5A    mov         dword ptr [eax],203
 005B3F60    mov         eax,dword ptr [ebp-4]
 005B3F63    xor         edx,edx
 005B3F65    mov         dword ptr [eax+244],edx;TInplaceEdit.FClickTime:Longint
 005B3F6B    mov         edx,dword ptr [ebp-8]
 005B3F6E    mov         eax,dword ptr [ebp-4]
 005B3F71    call        005F8E0C
 005B3F76    pop         ebx
 005B3F77    pop         ecx
 005B3F78    pop         ecx
 005B3F79    pop         ebp
 005B3F7A    ret
end;*}

//005B3F7C
procedure TInplaceEdit.Deselect;
begin
{*
 005B3F7C    push        ebp
 005B3F7D    mov         ebp,esp
 005B3F7F    push        ecx
 005B3F80    mov         dword ptr [ebp-4],eax
 005B3F83    push        0FF
 005B3F85    push        7FFFFFFF
 005B3F8A    push        0B1
 005B3F8F    mov         eax,dword ptr [ebp-4]
 005B3F92    call        TWinControl.GetHandle
 005B3F97    push        eax
 005B3F98    call        USER32.SendMessageA
 005B3F9D    pop         ecx
 005B3F9E    pop         ebp
 005B3F9F    ret
*}
end;

//005B3FA0
procedure sub_005B3FA0(?:TInplaceEditList);
begin
{*
 005B3FA0    push        ebp
 005B3FA1    mov         ebp,esp
 005B3FA3    add         esp,0FFFFFFEC
 005B3FA6    mov         dword ptr [ebp-4],eax
 005B3FA9    push        0
 005B3FAB    mov         eax,dword ptr [ebp-4]
 005B3FAE    call        TWinControl.GetHandle
 005B3FB3    push        eax
 005B3FB4    call        USER32.ValidateRect
 005B3FB9    push        0FF
 005B3FBB    push        0
 005B3FBD    mov         eax,dword ptr [ebp-4]
 005B3FC0    call        TWinControl.GetHandle
 005B3FC5    push        eax
 005B3FC6    call        USER32.InvalidateRect
 005B3FCB    lea         eax,[ebp-14]
 005B3FCE    push        eax
 005B3FCF    mov         eax,dword ptr [ebp-4]
 005B3FD2    call        TWinControl.GetHandle
 005B3FD7    push        eax
 005B3FD8    call        USER32.GetClientRect
 005B3FDD    push        2
 005B3FDF    lea         eax,[ebp-14]
 005B3FE2    push        eax
 005B3FE3    mov         eax,dword ptr [ebp-4]
 005B3FE6    mov         eax,dword ptr [eax+240]
 005B3FEC    call        TWinControl.GetHandle
 005B3FF1    push        eax
 005B3FF2    mov         eax,dword ptr [ebp-4]
 005B3FF5    call        TWinControl.GetHandle
 005B3FFA    push        eax
 005B3FFB    call        USER32.MapWindowPoints
 005B4000    lea         eax,[ebp-14]
 005B4003    push        eax
 005B4004    mov         eax,dword ptr [ebp-4]
 005B4007    mov         eax,dword ptr [eax+240]
 005B400D    call        TWinControl.GetHandle
 005B4012    push        eax
 005B4013    call        USER32.ValidateRect
 005B4018    push        0
 005B401A    lea         eax,[ebp-14]
 005B401D    push        eax
 005B401E    mov         eax,dword ptr [ebp-4]
 005B4021    mov         eax,dword ptr [eax+240]
 005B4027    call        TWinControl.GetHandle
 005B402C    push        eax
 005B402D    call        USER32.InvalidateRect
 005B4032    mov         esp,ebp
 005B4034    pop         ebp
 005B4035    ret
*}
end;

//005B4038
procedure TInplaceEdit.Hide;
begin
{*
 005B4038    push        ebp
 005B4039    mov         ebp,esp
 005B403B    push        ecx
 005B403C    push        esi
 005B403D    mov         dword ptr [ebp-4],eax
 005B4040    mov         eax,dword ptr [ebp-4]
 005B4043    call        TWinControl.HandleAllocated
 005B4048    test        al,al
>005B404A    je          005B40A7
 005B404C    mov         eax,dword ptr [ebp-4]
 005B404F    call        TWinControl.GetHandle
 005B4054    push        eax
 005B4055    call        USER32.IsWindowVisible
 005B405A    test        eax,eax
>005B405C    je          005B40A7
 005B405E    mov         eax,dword ptr [ebp-4]
 005B4061    call        005B3FA0
 005B4066    push        8C
 005B406B    push        0
 005B406D    push        0
 005B406F    push        0
 005B4071    push        0
 005B4073    push        0
 005B4075    mov         eax,dword ptr [ebp-4]
 005B4078    call        TWinControl.GetHandle
 005B407D    push        eax
 005B407E    call        USER32.SetWindowPos
 005B4083    mov         eax,dword ptr [ebp-4]
 005B4086    mov         si,0FFB5
 005B408A    call        @CallDynaInst
 005B408F    test        al,al
>005B4091    je          005B40A7
 005B4093    mov         eax,dword ptr [ebp-4]
 005B4096    mov         eax,dword ptr [eax+240]
 005B409C    call        TWinControl.GetHandle
 005B40A1    push        eax
 005B40A2    call        USER32.SetFocus
 005B40A7    pop         esi
 005B40A8    pop         ecx
 005B40A9    pop         ebp
 005B40AA    ret
*}
end;

//005B40AC
{*procedure sub_005B40AC(?:?; ?:?; ?:?);
begin
 005B40AC    push        ebp
 005B40AD    mov         ebp,esp
 005B40AF    add         esp,0FFFFFFF4
 005B40B2    push        esi
 005B40B3    mov         byte ptr [ebp-9],cl
 005B40B6    mov         dword ptr [ebp-8],edx
 005B40B9    mov         dword ptr [ebp-4],eax
 005B40BC    mov         eax,dword ptr [ebp-8]
 005B40BF    push        eax
 005B40C0    call        USER32.IsRectEmpty
 005B40C5    test        eax,eax
>005B40C7    je          005B40D6
 005B40C9    mov         eax,dword ptr [ebp-4]
 005B40CC    call        TInplaceEdit.Hide
>005B40D1    jmp         005B417F
 005B40D6    mov         eax,dword ptr [ebp-4]
 005B40D9    mov         edx,dword ptr [eax]
 005B40DB    call        dword ptr [edx+94]
 005B40E1    cmp         byte ptr [ebp-9],0
>005B40E5    jne         005B40FD
 005B40E7    mov         eax,dword ptr [ebp-4]
 005B40EA    call        TWinControl.GetHandle
 005B40EF    push        eax
 005B40F0    call        USER32.IsWindowVisible
 005B40F5    test        eax,eax
>005B40F7    je          005B40FD
 005B40F9    xor         eax,eax
>005B40FB    jmp         005B40FF
 005B40FD    mov         al,1
 005B40FF    mov         byte ptr [ebp-9],al
 005B4102    mov         eax,dword ptr [ebp-4]
 005B4105    call        005B3FA0
 005B410A    push        48
 005B410C    mov         eax,dword ptr [ebp-8]
 005B410F    mov         eax,dword ptr [eax+0C]
 005B4112    mov         edx,dword ptr [ebp-8]
 005B4115    sub         eax,dword ptr [edx+4]
 005B4118    push        eax
 005B4119    mov         eax,dword ptr [ebp-8]
 005B411C    mov         eax,dword ptr [eax+8]
 005B411F    mov         edx,dword ptr [ebp-8]
 005B4122    sub         eax,dword ptr [edx]
 005B4124    push        eax
 005B4125    mov         eax,dword ptr [ebp-8]
 005B4128    mov         eax,dword ptr [eax+4]
 005B412B    push        eax
 005B412C    mov         eax,dword ptr [ebp-8]
 005B412F    mov         eax,dword ptr [eax]
 005B4131    push        eax
 005B4132    push        0
 005B4134    mov         eax,dword ptr [ebp-4]
 005B4137    call        TWinControl.GetHandle
 005B413C    push        eax
 005B413D    call        USER32.SetWindowPos
 005B4142    mov         eax,dword ptr [ebp-4]
 005B4145    mov         edx,dword ptr [eax]
 005B4147    call        dword ptr [edx+0F8]
 005B414D    cmp         byte ptr [ebp-9],0
>005B4151    je          005B415B
 005B4153    mov         eax,dword ptr [ebp-4]
 005B4156    call        005B3FA0
 005B415B    mov         eax,dword ptr [ebp-4]
 005B415E    mov         eax,dword ptr [eax+240]
 005B4164    mov         si,0FFB5
 005B4168    call        @CallDynaInst
 005B416D    test        al,al
>005B416F    je          005B417F
 005B4171    mov         eax,dword ptr [ebp-4]
 005B4174    call        TWinControl.GetHandle
 005B4179    push        eax
 005B417A    call        USER32.SetFocus
 005B417F    pop         esi
 005B4180    mov         esp,ebp
 005B4182    pop         ebp
 005B4183    ret
end;*}

//005B4184
procedure sub_005B4184;
begin
{*
 005B4184    push        ebp
 005B4185    mov         ebp,esp
 005B4187    add         esp,0FFFFFFEC
 005B418A    mov         dword ptr [ebp-4],eax
 005B418D    mov         eax,dword ptr [ebp-4]
 005B4190    mov         eax,dword ptr [eax+4C];TInplaceEdit.Height:Integer
 005B4193    push        eax
 005B4194    lea         eax,[ebp-14]
 005B4197    push        eax
 005B4198    mov         eax,dword ptr [ebp-4]
 005B419B    mov         ecx,dword ptr [eax+48];TInplaceEdit.Width:Integer
 005B419E    sub         ecx,2
 005B41A1    mov         edx,2
 005B41A6    mov         eax,2
 005B41AB    call        Rect
 005B41B0    lea         eax,[ebp-14]
 005B41B3    push        eax
 005B41B4    push        0
 005B41B6    push        0B4
 005B41BB    mov         eax,dword ptr [ebp-4]
 005B41BE    call        TWinControl.GetHandle
 005B41C3    push        eax
 005B41C4    call        USER32.SendMessageA
 005B41C9    push        0
 005B41CB    push        0
 005B41CD    push        0B7
 005B41D2    mov         eax,dword ptr [ebp-4]
 005B41D5    call        TWinControl.GetHandle
 005B41DA    push        eax
 005B41DB    call        USER32.SendMessageA
 005B41E0    mov         esp,ebp
 005B41E2    pop         ebp
 005B41E3    ret
*}
end;

//005B41E4
{*procedure sub_005B41E4(?:TInplaceEdit; ?:?);
begin
 005B41E4    push        ebp
 005B41E5    mov         ebp,esp
 005B41E7    add         esp,0FFFFFFF8
 005B41EA    mov         dword ptr [ebp-8],edx
 005B41ED    mov         dword ptr [ebp-4],eax
 005B41F0    mov         edx,dword ptr [ebp-8]
 005B41F3    xor         ecx,ecx
 005B41F5    mov         eax,dword ptr [ebp-4]
 005B41F8    call        005B40AC
 005B41FD    pop         ecx
 005B41FE    pop         ecx
 005B41FF    pop         ebp
 005B4200    ret
end;*}

//005B4204
{*procedure sub_005B4204(?:TInplaceEdit; ?:?);
begin
 005B4204    push        ebp
 005B4205    mov         ebp,esp
 005B4207    add         esp,0FFFFFFF8
 005B420A    mov         dword ptr [ebp-8],edx
 005B420D    mov         dword ptr [ebp-4],eax
 005B4210    mov         edx,dword ptr [ebp-8]
 005B4213    mov         cl,1
 005B4215    mov         eax,dword ptr [ebp-4]
 005B4218    call        005B40AC
 005B421D    pop         ecx
 005B421E    pop         ecx
 005B421F    pop         ebp
 005B4220    ret
end;*}

//005B4224
procedure sub_005B4224;
begin
{*
 005B4224    push        ebp
 005B4225    mov         ebp,esp
 005B4227    push        0
 005B4229    push        0
 005B422B    push        0
 005B422D    push        esi
 005B422E    mov         dword ptr [ebp-4],eax
 005B4231    xor         eax,eax
 005B4233    push        ebp
 005B4234    push        5B42FE
 005B4239    push        dword ptr fs:[eax]
 005B423C    mov         dword ptr fs:[eax],esp
 005B423F    xor         edx,edx
 005B4241    mov         eax,dword ptr [ebp-4]
 005B4244    call        TMaskEdit.SetText
 005B4249    lea         eax,[ebp-8]
 005B424C    push        eax
 005B424D    mov         eax,dword ptr [ebp-4]
 005B4250    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B4256    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B425C    mov         eax,dword ptr [ebp-4]
 005B425F    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B4265    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B426B    mov         eax,dword ptr [ebp-4]
 005B426E    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B4274    mov         si,0FFAC
 005B4278    call        @CallDynaInst;TCustomGrid.sub_005B49FC
 005B427D    mov         edx,dword ptr [ebp-8]
 005B4280    mov         eax,dword ptr [ebp-4]
 005B4283    call        TMaskEdit.SetEditMask
 005B4288    lea         eax,[ebp-0C]
 005B428B    push        eax
 005B428C    mov         eax,dword ptr [ebp-4]
 005B428F    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B4295    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B429B    mov         eax,dword ptr [ebp-4]
 005B429E    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B42A4    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B42AA    mov         eax,dword ptr [ebp-4]
 005B42AD    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B42B3    mov         si,0FFAF
 005B42B7    call        @CallDynaInst;TCustomGrid.sub_005B4A1C
 005B42BC    mov         edx,dword ptr [ebp-0C]
 005B42BF    mov         eax,dword ptr [ebp-4]
 005B42C2    call        TMaskEdit.SetText
 005B42C7    mov         eax,dword ptr [ebp-4]
 005B42CA    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 005B42D0    mov         si,0FFAD
 005B42D4    call        @CallDynaInst;TCustomGrid.sub_005B4A54
 005B42D9    mov         edx,eax
 005B42DB    mov         eax,dword ptr [ebp-4]
 005B42DE    call        TMaskEdit.SetMaxLength
 005B42E3    xor         eax,eax
 005B42E5    pop         edx
 005B42E6    pop         ecx
 005B42E7    pop         ecx
 005B42E8    mov         dword ptr fs:[eax],edx
 005B42EB    push        5B4305
 005B42F0    lea         eax,[ebp-0C]
 005B42F3    mov         edx,2
 005B42F8    call        @LStrArrayClr
 005B42FD    ret
>005B42FE    jmp         @HandleFinally
>005B4303    jmp         005B42F0
 005B4305    pop         esi
 005B4306    mov         esp,ebp
 005B4308    pop         ebp
 005B4309    ret
*}
end;

//005B430C
constructor TCustomGrid.Create(AOwner:TComponent);
begin
{*
 005B430C    push        ebp
 005B430D    mov         ebp,esp
 005B430F    add         esp,0FFFFFFF4
 005B4312    push        ebx
 005B4313    test        dl,dl
>005B4315    je          005B431F
 005B4317    add         esp,0FFFFFFF0
 005B431A    call        @ClassCreate
 005B431F    mov         dword ptr [ebp-0C],ecx
 005B4322    mov         byte ptr [ebp-5],dl
 005B4325    mov         dword ptr [ebp-4],eax
 005B4328    mov         ecx,dword ptr [ebp-0C]
 005B432B    xor         edx,edx
 005B432D    mov         eax,dword ptr [ebp-4]
 005B4330    call        TCustomControl.Create
 005B4335    mov         eax,[006E9DD8];^gvar_006ECDE0
 005B433A    cmp         byte ptr [eax],0
>005B433D    je          005B434D
 005B433F    mov         eax,dword ptr [ebp-4]
 005B4342    mov         edx,dword ptr ds:[5B44A8];0xC2 gvar_005B44A8
 005B4348    mov         dword ptr [eax+50],edx;TCustomGrid.FControlStyle:TControlStyle
>005B434B    jmp         005B4359
 005B434D    mov         eax,dword ptr [ebp-4]
 005B4350    mov         edx,dword ptr ds:[5B44AC];0xD2 gvar_005B44AC
 005B4356    mov         dword ptr [eax+50],edx;TCustomGrid.FControlStyle:TControlStyle
 005B4359    mov         eax,dword ptr [ebp-4]
 005B435C    mov         byte ptr [eax+219],1;TCustomGrid.FCanEditModify:Boolean
 005B4363    mov         eax,dword ptr [ebp-4]
 005B4366    mov         dword ptr [eax+21C],5;TCustomGrid.FColCount:Longint
 005B4370    mov         eax,dword ptr [ebp-4]
 005B4373    mov         dword ptr [eax+24C],5;TCustomGrid.FRowCount:Longint
 005B437D    mov         eax,dword ptr [ebp-4]
 005B4380    mov         dword ptr [eax+238],1;TCustomGrid.FFixedCols:Integer
 005B438A    mov         eax,dword ptr [ebp-4]
 005B438D    mov         dword ptr [eax+23C],1;TCustomGrid.FFixedRows:Integer
 005B4397    mov         eax,dword ptr [ebp-4]
 005B439A    mov         dword ptr [eax+244],1;TCustomGrid.FGridLineWidth:Integer
 005B43A4    mov         eax,dword ptr [ebp-4]
 005B43A7    mov         dx,word ptr ds:[5B44B0];0x1F gvar_005B44B0
 005B43AE    mov         word ptr [eax+248],dx;TCustomGrid.FOptions:TGridOptions
 005B43B5    mov         eax,dword ptr [ebp-4]
 005B43B8    mov         dx,word ptr ds:[5B44B4];0xC0 gvar_005B44B4
 005B43BF    mov         word ptr [eax+290],dx;TCustomGrid.DesignOptionsBoost:TGridOptions
 005B43C6    mov         eax,dword ptr [ebp-4]
 005B43C9    mov         dword ptr [eax+240],8000000F;TCustomGrid.FFixedColor:TColor
 005B43D3    mov         eax,dword ptr [ebp-4]
 005B43D6    mov         byte ptr [eax+254],3;TCustomGrid.FScrollBars:TScrollStyle
 005B43DD    mov         eax,dword ptr [ebp-4]
 005B43E0    mov         byte ptr [eax+218],1;TCustomGrid.FBorderStyle:TBorderStyle
 005B43E7    mov         eax,dword ptr [ebp-4]
 005B43EA    mov         dword ptr [eax+230],40;TCustomGrid.FDefaultColWidth:Integer
 005B43F4    mov         eax,dword ptr [ebp-4]
 005B43F7    mov         dword ptr [eax+234],18;TCustomGrid.FDefaultRowHeight:Integer
 005B4401    mov         eax,dword ptr [ebp-4]
 005B4404    mov         byte ptr [eax+28C],1;TCustomGrid.FDefaultDrawing:Boolean
 005B440B    mov         eax,dword ptr [ebp-4]
 005B440E    mov         byte ptr [eax+28F],1;TCustomGrid.FSaveCellExtents:Boolean
 005B4415    mov         eax,dword ptr [ebp-4]
 005B4418    mov         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
 005B441F    mov         edx,80000005
 005B4424    mov         eax,dword ptr [ebp-4]
 005B4427    call        TControl.SetColor
 005B442C    xor         edx,edx
 005B442E    mov         eax,dword ptr [ebp-4]
 005B4431    call        TCCalendar.SetParentColor
 005B4436    mov         dl,1
 005B4438    mov         eax,dword ptr [ebp-4]
 005B443B    call        TCCalendar.SetTabStop
 005B4440    mov         eax,dword ptr [ebp-4]
 005B4443    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005B4449    mov         edx,dword ptr [ebp-4]
 005B444C    imul        dword ptr [edx+230];TCustomGrid.FDefaultColWidth:Integer
 005B4452    push        eax
 005B4453    mov         eax,dword ptr [ebp-4]
 005B4456    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005B445C    mov         edx,dword ptr [ebp-4]
 005B445F    imul        dword ptr [edx+234];TCustomGrid.FDefaultRowHeight:Integer
 005B4465    push        eax
 005B4466    mov         eax,dword ptr [ebp-4]
 005B4469    mov         ecx,dword ptr [eax+44];TCustomGrid.Top:Integer
 005B446C    mov         eax,dword ptr [ebp-4]
 005B446F    mov         edx,dword ptr [eax+40];TCustomGrid.Left:Integer
 005B4472    mov         eax,dword ptr [ebp-4]
 005B4475    mov         ebx,dword ptr [eax]
 005B4477    call        dword ptr [ebx+84];TCustomGrid.sub_005FB7F8
 005B447D    mov         eax,dword ptr [ebp-4]
 005B4480    call        005B70F4
 005B4485    mov         eax,dword ptr [ebp-4]
 005B4488    cmp         byte ptr [ebp-5],0
>005B448C    je          005B449D
 005B448E    call        @AfterConstruction
 005B4493    pop         dword ptr fs:[0]
 005B449A    add         esp,0C
 005B449D    mov         eax,dword ptr [ebp-4]
 005B44A0    pop         ebx
 005B44A1    mov         esp,ebp
 005B44A3    pop         ebp
 005B44A4    ret
*}
end;

//005B44B8
destructor TCustomGrid.Destroy;
begin
{*
 005B44B8    push        ebp
 005B44B9    mov         ebp,esp
 005B44BB    add         esp,0FFFFFFF8
 005B44BE    call        @BeforeDestruction
 005B44C3    mov         byte ptr [ebp-5],dl
 005B44C6    mov         dword ptr [ebp-4],eax
 005B44C9    mov         eax,dword ptr [ebp-4]
 005B44CC    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005B44D2    call        TObject.Free
 005B44D7    mov         dl,byte ptr [ebp-5]
 005B44DA    and         dl,0FC
 005B44DD    mov         eax,dword ptr [ebp-4]
 005B44E0    call        TCustomControl.Destroy
 005B44E5    mov         eax,dword ptr [ebp-4]
 005B44E8    mov         eax,dword ptr [eax+220];TCustomGrid.FColWidths:Pointer
 005B44EE    call        @FreeMem
 005B44F3    mov         eax,dword ptr [ebp-4]
 005B44F6    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 005B44FC    call        @FreeMem
 005B4501    mov         eax,dword ptr [ebp-4]
 005B4504    mov         eax,dword ptr [eax+224];TCustomGrid.FTabStops:Pointer
 005B450A    call        @FreeMem
 005B450F    cmp         byte ptr [ebp-5],0
>005B4513    jle         005B451D
 005B4515    mov         eax,dword ptr [ebp-4]
 005B4518    call        @ClassDestroy
 005B451D    pop         ecx
 005B451E    pop         ecx
 005B451F    pop         ebp
 005B4520    ret
*}
end;

//005B4524
{*function sub_005B4524(?:Longint; ?:?; ?:Integer; ?:?; ?:?):?;
begin
 005B4524    push        ebp
 005B4525    mov         ebp,esp
 005B4527    add         esp,0FFFFFFE0
 005B452A    push        ebx
 005B452B    xor         ebx,ebx
 005B452D    mov         dword ptr [ebp-20],ebx
 005B4530    mov         dword ptr [ebp-0C],ecx
 005B4533    mov         dword ptr [ebp-8],edx
 005B4536    mov         dword ptr [ebp-4],eax
 005B4539    xor         eax,eax
 005B453B    push        ebp
 005B453C    push        5B464C
 005B4541    push        dword ptr fs:[eax]
 005B4544    mov         dword ptr fs:[eax],esp
 005B4547    mov         eax,dword ptr [ebp-4]
 005B454A    mov         eax,dword ptr [eax]
 005B454C    mov         edx,dword ptr [ebp+0C]
 005B454F    add         eax,dword ptr [edx-4]
 005B4552    mov         dword ptr [ebp-18],eax
 005B4555    mov         eax,dword ptr [ebp+0C]
 005B4558    mov         eax,dword ptr [eax-8]
 005B455B    cmp         eax,dword ptr [ebp-18]
>005B455E    jle         005B4575
 005B4560    lea         edx,[ebp-20]
 005B4563    mov         eax,[006EA0D0];^gvar_00655094
 005B4568    call        LoadResString
 005B456D    mov         eax,dword ptr [ebp-20]
 005B4570    call        005B30F8
 005B4575    mov         eax,dword ptr [ebp+0C]
 005B4578    cmp         dword ptr [eax-4],0
>005B457C    jge         005B45C1
 005B457E    mov         eax,dword ptr [ebp-8]
 005B4581    cmp         dword ptr [eax],0
>005B4584    je          005B45C1
 005B4586    xor         eax,eax
 005B4588    mov         dword ptr [ebp-10],eax
 005B458B    mov         eax,dword ptr [ebp+0C]
 005B458E    mov         eax,dword ptr [eax-8]
 005B4591    mov         edx,dword ptr [ebp+0C]
 005B4594    mov         edx,dword ptr [edx-8]
 005B4597    mov         ecx,dword ptr [ebp+0C]
 005B459A    sub         edx,dword ptr [ecx-4]
 005B459D    dec         edx
 005B459E    sub         edx,eax
>005B45A0    jl          005B45CD
 005B45A2    inc         edx
 005B45A3    mov         dword ptr [ebp-1C],edx
 005B45A6    mov         dword ptr [ebp-14],eax
 005B45A9    mov         eax,dword ptr [ebp-8]
 005B45AC    mov         eax,dword ptr [eax]
 005B45AE    mov         edx,dword ptr [ebp-14]
 005B45B1    mov         eax,dword ptr [eax+edx*4]
 005B45B4    add         dword ptr [ebp-10],eax
 005B45B7    inc         dword ptr [ebp-14]
 005B45BA    dec         dword ptr [ebp-1C]
>005B45BD    jne         005B45A9
>005B45BF    jmp         005B45CD
 005B45C1    mov         eax,dword ptr [ebp+0C]
 005B45C4    mov         eax,dword ptr [eax-4]
 005B45C7    imul        dword ptr [ebp-0C]
 005B45CA    mov         dword ptr [ebp-10],eax
 005B45CD    mov         eax,dword ptr [ebp-8]
 005B45D0    cmp         dword ptr [eax],0
>005B45D3    je          005B45ED
 005B45D5    mov         eax,dword ptr [ebp-0C]
 005B45D8    push        eax
 005B45D9    mov         eax,dword ptr [ebp+0C]
 005B45DC    mov         ecx,dword ptr [eax-4]
 005B45DF    mov         eax,dword ptr [ebp+0C]
 005B45E2    mov         edx,dword ptr [eax-8]
 005B45E5    mov         eax,dword ptr [ebp-8]
 005B45E8    call        005B34DC
 005B45ED    mov         eax,dword ptr [ebp-4]
 005B45F0    mov         edx,dword ptr [ebp-18]
 005B45F3    mov         dword ptr [eax],edx
 005B45F5    mov         eax,dword ptr [ebp+8]
 005B45F8    mov         eax,dword ptr [eax]
 005B45FA    mov         edx,dword ptr [ebp+0C]
 005B45FD    cmp         eax,dword ptr [edx-8]
>005B4600    jl          005B4636
 005B4602    mov         eax,dword ptr [ebp+0C]
 005B4605    cmp         dword ptr [eax-4],0
>005B4609    jge         005B462B
 005B460B    mov         eax,dword ptr [ebp+0C]
 005B460E    mov         eax,dword ptr [eax-8]
 005B4611    mov         edx,dword ptr [ebp+0C]
 005B4614    sub         eax,dword ptr [edx-4]
 005B4617    mov         edx,dword ptr [ebp+8]
 005B461A    cmp         eax,dword ptr [edx]
>005B461C    jle         005B462B
 005B461E    mov         eax,dword ptr [ebp+0C]
 005B4621    mov         eax,dword ptr [eax-8]
 005B4624    mov         edx,dword ptr [ebp+8]
 005B4627    mov         dword ptr [edx],eax
>005B4629    jmp         005B4636
 005B462B    mov         eax,dword ptr [ebp+0C]
 005B462E    mov         eax,dword ptr [eax-4]
 005B4631    mov         edx,dword ptr [ebp+8]
 005B4634    add         dword ptr [edx],eax
 005B4636    xor         eax,eax
 005B4638    pop         edx
 005B4639    pop         ecx
 005B463A    pop         ecx
 005B463B    mov         dword ptr fs:[eax],edx
 005B463E    push        5B4653
 005B4643    lea         eax,[ebp-20]
 005B4646    call        @LStrClr
 005B464B    ret
>005B464C    jmp         @HandleFinally
>005B4651    jmp         005B4643
 005B4653    mov         eax,dword ptr [ebp-10]
 005B4656    pop         ebx
 005B4657    mov         esp,ebp
 005B4659    pop         ebp
 005B465A    ret         4
end;*}

//005B4660
{*procedure TCustomGrid.sub_005B4660(?:?; ?:?; ?:?);
begin
 005B4660    push        ebp
 005B4661    mov         ebp,esp
 005B4663    add         esp,0FFFFFFB8
 005B4666    push        esi
 005B4667    mov         dword ptr [ebp-4],ecx
 005B466A    mov         dword ptr [ebp-8],edx
 005B466D    mov         dword ptr [ebp-0C],eax
 005B4670    cmp         dword ptr [ebp-4],0
>005B4674    je          005B481B
 005B467A    mov         eax,dword ptr [ebp-0C]
 005B467D    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B4683    mov         dword ptr [ebp-14],edx
 005B4686    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B468C    mov         dword ptr [ebp-10],edx
 005B468F    mov         eax,dword ptr [ebp-0C]
 005B4692    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005B4698    mov         dword ptr [ebp-1C],eax
 005B469B    mov         eax,dword ptr [ebp-0C]
 005B469E    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005B46A4    mov         dword ptr [ebp-18],eax
 005B46A7    mov         eax,dword ptr [ebp-0C]
 005B46AA    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B46B0    mov         dword ptr [ebp-38],eax
 005B46B3    mov         eax,dword ptr [ebp-0C]
 005B46B6    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005B46BC    dec         eax
 005B46BD    mov         dword ptr [ebp-30],eax
 005B46C0    mov         eax,dword ptr [ebp-0C]
 005B46C3    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B46C9    mov         dword ptr [ebp-34],eax
 005B46CC    mov         eax,dword ptr [ebp-0C]
 005B46CF    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005B46D5    dec         eax
 005B46D6    mov         dword ptr [ebp-2C],eax
 005B46D9    xor         eax,eax
 005B46DB    mov         dword ptr [ebp-20],eax
 005B46DE    xor         eax,eax
 005B46E0    mov         dword ptr [ebp-24],eax
 005B46E3    mov         eax,dword ptr [ebp-4]
 005B46E6    mov         dword ptr [ebp-28],eax
 005B46E9    cmp         dword ptr [ebp-28],0
>005B46ED    jge         005B46F2
 005B46EF    neg         dword ptr [ebp-28]
 005B46F2    cmp         byte ptr [ebp+8],0
>005B46F6    je          005B4746
 005B46F8    push        ebp
 005B46F9    lea         eax,[ebp-10]
 005B46FC    push        eax
 005B46FD    mov         eax,dword ptr [ebp-0C]
 005B4700    lea         edx,[eax+250];TCustomGrid.FRowHeights:Pointer
 005B4706    mov         eax,dword ptr [ebp-0C]
 005B4709    add         eax,24C;TCustomGrid.FRowCount:Longint
 005B470E    mov         ecx,dword ptr [ebp-0C]
 005B4711    mov         ecx,dword ptr [ecx+234];TCustomGrid.FDefaultRowHeight:Integer
 005B4717    call        005B4524
 005B471C    pop         ecx
 005B471D    mov         dword ptr [ebp-24],eax
 005B4720    mov         eax,dword ptr [ebp-8]
 005B4723    mov         dword ptr [ebp-34],eax
 005B4726    mov         eax,dword ptr [ebp-8]
 005B4729    add         eax,dword ptr [ebp-28]
 005B472C    mov         edx,dword ptr [ebp-0C]
 005B472F    cmp         eax,dword ptr [edx+25C];TCustomGrid.FTopLeft:Longint
>005B4735    jg          005B4792
 005B4737    mov         eax,dword ptr [ebp-0C]
 005B473A    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 005B4740    dec         eax
 005B4741    mov         dword ptr [ebp-2C],eax
>005B4744    jmp         005B4792
 005B4746    push        ebp
 005B4747    lea         eax,[ebp-14]
 005B474A    push        eax
 005B474B    mov         eax,dword ptr [ebp-0C]
 005B474E    lea         edx,[eax+220];TCustomGrid.FColWidths:Pointer
 005B4754    mov         eax,dword ptr [ebp-0C]
 005B4757    add         eax,21C;TCustomGrid.FColCount:Longint
 005B475C    mov         ecx,dword ptr [ebp-0C]
 005B475F    mov         ecx,dword ptr [ecx+230];TCustomGrid.FDefaultColWidth:Integer
 005B4765    call        005B4524
 005B476A    pop         ecx
 005B476B    mov         dword ptr [ebp-20],eax
 005B476E    mov         eax,dword ptr [ebp-8]
 005B4771    mov         dword ptr [ebp-38],eax
 005B4774    mov         eax,dword ptr [ebp-8]
 005B4777    add         eax,dword ptr [ebp-28]
 005B477A    mov         edx,dword ptr [ebp-0C]
 005B477D    cmp         eax,dword ptr [edx+258];TCustomGrid.FTopLeft:TGridCoord
>005B4783    jg          005B4792
 005B4785    mov         eax,dword ptr [ebp-0C]
 005B4788    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 005B478E    dec         eax
 005B478F    mov         dword ptr [ebp-30],eax
 005B4792    push        1
 005B4794    lea         ecx,[ebp-48]
 005B4797    lea         edx,[ebp-38]
 005B479A    mov         eax,dword ptr [ebp-0C]
 005B479D    call        005B6FFC
 005B47A2    lea         eax,[ebp-48]
 005B47A5    push        eax
 005B47A6    call        USER32.IsRectEmpty
 005B47AB    test        eax,eax
>005B47AD    jne         005B47DB
 005B47AF    lea         eax,[ebp-48]
 005B47B2    push        eax
 005B47B3    lea         eax,[ebp-48]
 005B47B6    push        eax
 005B47B7    mov         eax,dword ptr [ebp-24]
 005B47BA    push        eax
 005B47BB    mov         eax,dword ptr [ebp-20]
 005B47BE    push        eax
 005B47BF    mov         eax,dword ptr [ebp-0C]
 005B47C2    call        TWinControl.GetHandle
 005B47C7    push        eax
 005B47C8    call        USER32.ScrollWindow
 005B47CD    mov         eax,dword ptr [ebp-0C]
 005B47D0    call        TWinControl.GetHandle
 005B47D5    push        eax
 005B47D6    call        USER32.UpdateWindow
 005B47DB    mov         ecx,dword ptr [ebp-18]
 005B47DE    mov         edx,dword ptr [ebp-1C]
 005B47E1    mov         eax,dword ptr [ebp-0C]
 005B47E4    mov         si,0FFA8
 005B47E8    call        @CallDynaInst;TCustomGrid.sub_005B5008
 005B47ED    mov         eax,dword ptr [ebp-14]
 005B47F0    mov         edx,dword ptr [ebp-0C]
 005B47F3    cmp         eax,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
>005B47F9    jne         005B4809
 005B47FB    mov         eax,dword ptr [ebp-10]
 005B47FE    mov         edx,dword ptr [ebp-0C]
 005B4801    cmp         eax,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
>005B4807    je          005B481B
 005B4809    push        1
 005B480B    push        1
 005B480D    mov         ecx,dword ptr [ebp-10]
 005B4810    mov         edx,dword ptr [ebp-14]
 005B4813    mov         eax,dword ptr [ebp-0C]
 005B4816    call        005B7990
 005B481B    pop         esi
 005B481C    mov         esp,ebp
 005B481E    pop         ebp
 005B481F    ret         4
end;*}

//005B4824
{*procedure sub_005B4824(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B4824    push        ebp
 005B4825    mov         ebp,esp
 005B4827    add         esp,0FFFFFFE4
 005B482A    mov         dword ptr [ebp-0C],ecx
 005B482D    mov         dword ptr [ebp-8],edx
 005B4830    mov         dword ptr [ebp-4],eax
 005B4833    mov         eax,dword ptr [ebp-8]
 005B4836    mov         dword ptr [ebp-1C],eax
 005B4839    mov         eax,dword ptr [ebp+10]
 005B483C    mov         dword ptr [ebp-14],eax
 005B483F    mov         eax,dword ptr [ebp-0C]
 005B4842    mov         dword ptr [ebp-18],eax
 005B4845    mov         eax,dword ptr [ebp+0C]
 005B4848    mov         dword ptr [ebp-10],eax
 005B484B    push        0
 005B484D    mov         ecx,dword ptr [ebp+8]
 005B4850    lea         edx,[ebp-1C]
 005B4853    mov         eax,dword ptr [ebp-4]
 005B4856    call        005B6FFC
 005B485B    mov         esp,ebp
 005B485D    pop         ebp
 005B485E    ret         0C
end;*}

//005B4864
procedure TCustomGrid.DoExit;
begin
{*
 005B4864    push        ebp
 005B4865    mov         ebp,esp
 005B4867    push        ecx
 005B4868    mov         dword ptr [ebp-4],eax
 005B486B    mov         eax,dword ptr [ebp-4]
 005B486E    call        TWinControl.sub_005FA1D0
 005B4873    mov         eax,dword ptr [ebp-4]
 005B4876    test        byte ptr [eax+249],20
>005B487D    jne         005B4887
 005B487F    mov         eax,dword ptr [ebp-4]
 005B4882    call        005B4A88
 005B4887    pop         ecx
 005B4888    pop         ebp
 005B4889    ret
*}
end;

//005B488C
{*procedure sub_005B488C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);
begin
 005B488C    push        ebp
 005B488D    mov         ebp,esp
 005B488F    add         esp,0FFFFFFF4
 005B4892    mov         dword ptr [ebp-0C],ecx
 005B4895    mov         dword ptr [ebp-8],edx
 005B4898    mov         dword ptr [ebp-4],eax
 005B489B    mov         eax,dword ptr [ebp-8]
 005B489E    push        eax
 005B489F    mov         eax,dword ptr [ebp-0C]
 005B48A2    push        eax
 005B48A3    mov         eax,dword ptr [ebp+8]
 005B48A6    push        eax
 005B48A7    mov         ecx,dword ptr [ebp-0C]
 005B48AA    mov         edx,dword ptr [ebp-8]
 005B48AD    mov         eax,dword ptr [ebp-4]
 005B48B0    call        005B4824
 005B48B5    mov         esp,ebp
 005B48B7    pop         ebp
 005B48B8    ret         4
end;*}

//005B48BC
{*procedure TCustomGrid.sub_005B48BC(?:?);
begin
 005B48BC    push        ebp
 005B48BD    mov         ebp,esp
 005B48BF    add         esp,0FFFFFFF8
 005B48C2    mov         byte ptr [ebp-6],dl
 005B48C5    mov         dword ptr [ebp-4],eax
 005B48C8    mov         byte ptr [ebp-5],1
 005B48CC    mov         al,byte ptr [ebp-5]
 005B48CF    pop         ecx
 005B48D0    pop         ecx
 005B48D1    pop         ebp
 005B48D2    ret
end;*}

//005B48D4
{*procedure TCustomGrid.sub_005B48D4(?:?; ?:?);
begin
 005B48D4    push        ebp
 005B48D5    mov         ebp,esp
 005B48D7    add         esp,0FFFFFFF4
 005B48DA    mov         byte ptr [ebp-9],cl
 005B48DD    mov         word ptr [ebp-8],dx
 005B48E1    mov         dword ptr [ebp-4],eax
 005B48E4    mov         byte ptr [ebp-5],1
 005B48E8    mov         al,byte ptr [ebp-5]
 005B48EB    mov         esp,ebp
 005B48ED    pop         ebp
 005B48EE    ret
end;*}

//005B48F0
procedure TCustomGrid.sub_005B48F0;
begin
{*
 005B48F0    push        ebp
 005B48F1    mov         ebp,esp
 005B48F3    add         esp,0FFFFFFF8
 005B48F6    mov         dword ptr [ebp-4],eax
 005B48F9    mov         eax,dword ptr [ebp-4]
 005B48FC    mov         al,byte ptr [eax+219];TCustomGrid.FCanEditModify:Boolean
 005B4902    mov         byte ptr [ebp-5],al
 005B4905    mov         al,byte ptr [ebp-5]
 005B4908    pop         ecx
 005B4909    pop         ecx
 005B490A    pop         ebp
 005B490B    ret
*}
end;

//005B490C
{*function sub_005B490C:?;
begin
 005B490C    push        ebp
 005B490D    mov         ebp,esp
 005B490F    add         esp,0FFFFFFF8
 005B4912    mov         dword ptr [ebp-4],eax
 005B4915    mov         eax,dword ptr [ebp-4]
 005B4918    mov         ax,word ptr [eax+248];TCustomGrid.FOptions:TGridOptions
 005B491F    and         ax,word ptr ds:[5B497C];0x1400 gvar_005B497C
 005B4926    mov         dx,word ptr ds:[5B4980];0x400 gvar_005B4980
 005B492D    cmp         dx,ax
>005B4930    jne         005B496B
 005B4932    mov         eax,dword ptr [ebp-4]
 005B4935    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>005B493C    je          005B496B
 005B493E    mov         eax,dword ptr [ebp-4]
 005B4941    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>005B4945    jne         005B496B
 005B4947    mov         eax,dword ptr [ebp-4]
 005B494A    call        TWinControl.HandleAllocated
 005B494F    test        al,al
>005B4951    je          005B496B
 005B4953    mov         eax,dword ptr [ebp-4]
 005B4956    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>005B495D    jne         005B496F
 005B495F    mov         eax,dword ptr [ebp-4]
 005B4962    call        005B4984
 005B4967    test        al,al
>005B4969    jne         005B496F
 005B496B    xor         eax,eax
>005B496D    jmp         005B4971
 005B496F    mov         al,1
 005B4971    mov         byte ptr [ebp-5],al
 005B4974    mov         al,byte ptr [ebp-5]
 005B4977    pop         ecx
 005B4978    pop         ecx
 005B4979    pop         ebp
 005B497A    ret
end;*}

//005B4984
{*function sub_005B4984(?:TCustomGrid):?;
begin
 005B4984    push        ebp
 005B4985    mov         ebp,esp
 005B4987    add         esp,0FFFFFFF0
 005B498A    mov         dword ptr [ebp-4],eax
 005B498D    mov         byte ptr [ebp-5],0
 005B4991    mov         eax,dword ptr [ebp-4]
 005B4994    call        005CD060
 005B4999    mov         dword ptr [ebp-10],eax
 005B499C    cmp         dword ptr [ebp-10],0
>005B49A0    je          005B49B6
 005B49A2    mov         eax,dword ptr [ebp-10]
 005B49A5    mov         eax,dword ptr [eax+220]
 005B49AB    cmp         eax,dword ptr [ebp-4]
>005B49AE    jne         005B49F3
 005B49B0    mov         byte ptr [ebp-5],1
>005B49B4    jmp         005B49F3
 005B49B6    call        USER32.GetFocus
 005B49BB    mov         dword ptr [ebp-0C],eax
>005B49BE    jmp         005B49E0
 005B49C0    mov         eax,dword ptr [ebp-0C]
 005B49C3    mov         edx,dword ptr [ebp-4]
 005B49C6    cmp         eax,dword ptr [edx+180];TCustomGrid.FHandle:HWND
>005B49CC    jne         005B49D4
 005B49CE    mov         byte ptr [ebp-5],1
>005B49D2    jmp         005B49E0
 005B49D4    mov         eax,dword ptr [ebp-0C]
 005B49D7    push        eax
 005B49D8    call        USER32.GetParent
 005B49DD    mov         dword ptr [ebp-0C],eax
 005B49E0    mov         eax,dword ptr [ebp-0C]
 005B49E3    push        eax
 005B49E4    call        USER32.IsWindow
 005B49E9    test        eax,eax
>005B49EB    je          005B49F3
 005B49ED    cmp         byte ptr [ebp-5],0
>005B49F1    je          005B49C0
 005B49F3    mov         al,byte ptr [ebp-5]
 005B49F6    mov         esp,ebp
 005B49F8    pop         ebp
 005B49F9    ret
end;*}

//005B49FC
{*procedure TCustomGrid.sub_005B49FC(?:?; ?:?; ?:?);
begin
 005B49FC    push        ebp
 005B49FD    mov         ebp,esp
 005B49FF    add         esp,0FFFFFFF4
 005B4A02    mov         dword ptr [ebp-0C],ecx
 005B4A05    mov         dword ptr [ebp-8],edx
 005B4A08    mov         dword ptr [ebp-4],eax
 005B4A0B    mov         eax,dword ptr [ebp+8]
 005B4A0E    call        @LStrClr
 005B4A13    mov         esp,ebp
 005B4A15    pop         ebp
 005B4A16    ret         4
end;*}

//005B4A1C
{*procedure TCustomGrid.sub_005B4A1C(?:?; ?:?; ?:?);
begin
 005B4A1C    push        ebp
 005B4A1D    mov         ebp,esp
 005B4A1F    add         esp,0FFFFFFF4
 005B4A22    mov         dword ptr [ebp-0C],ecx
 005B4A25    mov         dword ptr [ebp-8],edx
 005B4A28    mov         dword ptr [ebp-4],eax
 005B4A2B    mov         eax,dword ptr [ebp+8]
 005B4A2E    call        @LStrClr
 005B4A33    mov         esp,ebp
 005B4A35    pop         ebp
 005B4A36    ret         4
end;*}

//005B4A3C
{*procedure TCustomGrid.sub_005B4A3C(?:?; ?:?);
begin
 005B4A3C    push        ebp
 005B4A3D    mov         ebp,esp
 005B4A3F    add         esp,0FFFFFFF4
 005B4A42    mov         dword ptr [ebp-0C],ecx
 005B4A45    mov         dword ptr [ebp-8],edx
 005B4A48    mov         dword ptr [ebp-4],eax
 005B4A4B    mov         esp,ebp
 005B4A4D    pop         ebp
 005B4A4E    ret         4
end;*}

//005B4A54
procedure TCustomGrid.sub_005B4A54;
begin
{*
 005B4A54    push        ebp
 005B4A55    mov         ebp,esp
 005B4A57    add         esp,0FFFFFFF8
 005B4A5A    mov         dword ptr [ebp-4],eax
 005B4A5D    xor         eax,eax
 005B4A5F    mov         dword ptr [ebp-8],eax
 005B4A62    mov         eax,dword ptr [ebp-8]
 005B4A65    pop         ecx
 005B4A66    pop         ecx
 005B4A67    pop         ebp
 005B4A68    ret
*}
end;

//005B4A6C
{*procedure TCustomGrid.sub_005B4A6C(?:?; ?:?);
begin
 005B4A6C    push        ebp
 005B4A6D    mov         ebp,esp
 005B4A6F    add         esp,0FFFFFFF0
 005B4A72    mov         dword ptr [ebp-10],ecx
 005B4A75    mov         dword ptr [ebp-0C],edx
 005B4A78    mov         dword ptr [ebp-4],eax
 005B4A7B    mov         byte ptr [ebp-5],0
 005B4A7F    mov         al,byte ptr [ebp-5]
 005B4A82    mov         esp,ebp
 005B4A84    pop         ebp
 005B4A85    ret
end;*}

//005B4A88
procedure sub_005B4A88(?:TCustomGrid);
begin
{*
 005B4A88    push        ebp
 005B4A89    mov         ebp,esp
 005B4A8B    push        ecx
 005B4A8C    mov         dword ptr [ebp-4],eax
 005B4A8F    mov         eax,dword ptr [ebp-4]
 005B4A92    mov         byte ptr [eax+28D],0
 005B4A99    mov         eax,dword ptr [ebp-4]
 005B4A9C    call        TCustomGrid.HideEdit
 005B4AA1    pop         ecx
 005B4AA2    pop         ebp
 005B4AA3    ret
*}
end;

//005B4AA4
procedure sub_005B4AA4(?:TCustomGrid);
begin
{*
 005B4AA4    push        ebp
 005B4AA5    mov         ebp,esp
 005B4AA7    push        ecx
 005B4AA8    mov         dword ptr [ebp-4],eax
 005B4AAB    mov         eax,dword ptr [ebp-4]
 005B4AAE    mov         byte ptr [eax+28D],1
 005B4AB5    mov         eax,dword ptr [ebp-4]
 005B4AB8    call        005BA008
 005B4ABD    pop         ecx
 005B4ABE    pop         ebp
 005B4ABF    ret
*}
end;

//005B4AC0
{*procedure sub_005B4AC0(?:TCustomGrid; ?:?);
begin
 005B4AC0    push        ebp
 005B4AC1    mov         ebp,esp
 005B4AC3    add         esp,0FFFFFFF8
 005B4AC6    mov         byte ptr [ebp-5],dl
 005B4AC9    mov         dword ptr [ebp-4],eax
 005B4ACC    mov         eax,dword ptr [ebp-4]
 005B4ACF    call        005B4AA4
 005B4AD4    mov         eax,dword ptr [ebp-4]
 005B4AD7    cmp         dword ptr [eax+27C],0
>005B4ADE    je          005B4B01
 005B4AE0    push        0
 005B4AE2    xor         eax,eax
 005B4AE4    mov         al,byte ptr [ebp-5]
 005B4AE7    push        eax
 005B4AE8    push        102
 005B4AED    mov         eax,dword ptr [ebp-4]
 005B4AF0    mov         eax,dword ptr [eax+27C]
 005B4AF6    call        TWinControl.GetHandle
 005B4AFB    push        eax
 005B4AFC    call        USER32.PostMessageA
 005B4B01    pop         ecx
 005B4B02    pop         ecx
 005B4B03    pop         ebp
 005B4B04    ret
end;*}

//005B4B08
procedure sub_005B4B08(?:TValueListEditor);
begin
{*
 005B4B08    push        ebp
 005B4B09    mov         ebp,esp
 005B4B0B    push        ecx
 005B4B0C    mov         dword ptr [ebp-4],eax
 005B4B0F    mov         eax,dword ptr [ebp-4]
 005B4B12    mov         dword ptr [eax+280],0FFFFFFFF;TValueListEditor.FInplaceCol:Longint
 005B4B1C    mov         eax,dword ptr [ebp-4]
 005B4B1F    mov         dword ptr [eax+284],0FFFFFFFF;TValueListEditor.FInplaceRow:Longint
 005B4B29    mov         eax,dword ptr [ebp-4]
 005B4B2C    call        005BA008
 005B4B31    pop         ecx
 005B4B32    pop         ebp
 005B4B33    ret
*}
end;

//005B4B34
procedure TCustomGrid.ReadColWidths(Reader:TReader);
begin
{*
 005B4B34    push        ebp
 005B4B35    mov         ebp,esp
 005B4B37    add         esp,0FFFFFFF0
 005B4B3A    mov         dword ptr [ebp-8],edx
 005B4B3D    mov         dword ptr [ebp-4],eax
 005B4B40    mov         eax,dword ptr [ebp-8]
 005B4B43    call        TReader.ReadListBegin
 005B4B48    mov         eax,dword ptr [ebp-4]
 005B4B4B    mov         eax,dword ptr [eax+21C]
 005B4B51    dec         eax
 005B4B52    test        eax,eax
>005B4B54    jl          005B4B7E
 005B4B56    inc         eax
 005B4B57    mov         dword ptr [ebp-10],eax
 005B4B5A    mov         dword ptr [ebp-0C],0
 005B4B61    mov         eax,dword ptr [ebp-8]
 005B4B64    call        TReader.ReadInteger
 005B4B69    mov         ecx,eax
 005B4B6B    mov         edx,dword ptr [ebp-0C]
 005B4B6E    mov         eax,dword ptr [ebp-4]
 005B4B71    call        TCustomGrid.SetColWidths
 005B4B76    inc         dword ptr [ebp-0C]
 005B4B79    dec         dword ptr [ebp-10]
>005B4B7C    jne         005B4B61
 005B4B7E    mov         eax,dword ptr [ebp-8]
 005B4B81    call        TReader.ReadListEnd
 005B4B86    mov         esp,ebp
 005B4B88    pop         ebp
 005B4B89    ret
*}
end;

//005B4B8C
procedure TCustomGrid.ReadRowHeights(Reader:TReader);
begin
{*
 005B4B8C    push        ebp
 005B4B8D    mov         ebp,esp
 005B4B8F    add         esp,0FFFFFFF0
 005B4B92    mov         dword ptr [ebp-8],edx
 005B4B95    mov         dword ptr [ebp-4],eax
 005B4B98    mov         eax,dword ptr [ebp-8]
 005B4B9B    call        TReader.ReadListBegin
 005B4BA0    mov         eax,dword ptr [ebp-4]
 005B4BA3    mov         eax,dword ptr [eax+24C]
 005B4BA9    dec         eax
 005B4BAA    test        eax,eax
>005B4BAC    jl          005B4BD6
 005B4BAE    inc         eax
 005B4BAF    mov         dword ptr [ebp-10],eax
 005B4BB2    mov         dword ptr [ebp-0C],0
 005B4BB9    mov         eax,dword ptr [ebp-8]
 005B4BBC    call        TReader.ReadInteger
 005B4BC1    mov         ecx,eax
 005B4BC3    mov         edx,dword ptr [ebp-0C]
 005B4BC6    mov         eax,dword ptr [ebp-4]
 005B4BC9    call        005B9DF4
 005B4BCE    inc         dword ptr [ebp-0C]
 005B4BD1    dec         dword ptr [ebp-10]
>005B4BD4    jne         005B4BB9
 005B4BD6    mov         eax,dword ptr [ebp-8]
 005B4BD9    call        TReader.ReadListEnd
 005B4BDE    mov         esp,ebp
 005B4BE0    pop         ebp
 005B4BE1    ret
*}
end;

//005B4BE4
procedure TCustomGrid.WriteColWidths(Writer:TWriter);
begin
{*
 005B4BE4    push        ebp
 005B4BE5    mov         ebp,esp
 005B4BE7    add         esp,0FFFFFFF0
 005B4BEA    mov         dword ptr [ebp-8],edx
 005B4BED    mov         dword ptr [ebp-4],eax
 005B4BF0    mov         eax,dword ptr [ebp-8]
 005B4BF3    call        TWriter.WriteListBegin
 005B4BF8    mov         eax,dword ptr [ebp-4]
 005B4BFB    mov         eax,dword ptr [eax+21C]
 005B4C01    dec         eax
 005B4C02    test        eax,eax
>005B4C04    jl          005B4C2E
 005B4C06    inc         eax
 005B4C07    mov         dword ptr [ebp-10],eax
 005B4C0A    mov         dword ptr [ebp-0C],0
 005B4C11    mov         edx,dword ptr [ebp-0C]
 005B4C14    mov         eax,dword ptr [ebp-4]
 005B4C17    call        TCustomGrid.GetColWidths
 005B4C1C    mov         edx,eax
 005B4C1E    mov         eax,dword ptr [ebp-8]
 005B4C21    call        TWriter.WriteInteger
 005B4C26    inc         dword ptr [ebp-0C]
 005B4C29    dec         dword ptr [ebp-10]
>005B4C2C    jne         005B4C11
 005B4C2E    mov         eax,dword ptr [ebp-8]
 005B4C31    call        TWriter.WriteListEnd
 005B4C36    mov         esp,ebp
 005B4C38    pop         ebp
 005B4C39    ret
*}
end;

//005B4C3C
procedure TCustomGrid.WriteRowHeights(Writer:TWriter);
begin
{*
 005B4C3C    push        ebp
 005B4C3D    mov         ebp,esp
 005B4C3F    add         esp,0FFFFFFF0
 005B4C42    mov         dword ptr [ebp-8],edx
 005B4C45    mov         dword ptr [ebp-4],eax
 005B4C48    mov         eax,dword ptr [ebp-8]
 005B4C4B    call        TWriter.WriteListBegin
 005B4C50    mov         eax,dword ptr [ebp-4]
 005B4C53    mov         eax,dword ptr [eax+24C]
 005B4C59    dec         eax
 005B4C5A    test        eax,eax
>005B4C5C    jl          005B4C86
 005B4C5E    inc         eax
 005B4C5F    mov         dword ptr [ebp-10],eax
 005B4C62    mov         dword ptr [ebp-0C],0
 005B4C69    mov         edx,dword ptr [ebp-0C]
 005B4C6C    mov         eax,dword ptr [ebp-4]
 005B4C6F    call        005B9750
 005B4C74    mov         edx,eax
 005B4C76    mov         eax,dword ptr [ebp-8]
 005B4C79    call        TWriter.WriteInteger
 005B4C7E    inc         dword ptr [ebp-0C]
 005B4C81    dec         dword ptr [ebp-10]
>005B4C84    jne         005B4C69
 005B4C86    mov         eax,dword ptr [ebp-8]
 005B4C89    call        TWriter.WriteListEnd
 005B4C8E    mov         esp,ebp
 005B4C90    pop         ebp
 005B4C91    ret
*}
end;

//005B4C94
function DoColWidths:Boolean;
begin
{*
 005B4C94    push        ebp
 005B4C95    mov         ebp,esp
 005B4C97    push        ecx
 005B4C98    mov         eax,dword ptr [ebp+8]
 005B4C9B    mov         eax,dword ptr [eax-4]
 005B4C9E    cmp         dword ptr [eax+20],0
>005B4CA2    je          005B4CCB
 005B4CA4    mov         eax,dword ptr [ebp+8]
 005B4CA7    mov         eax,dword ptr [eax-8]
 005B4CAA    mov         edx,dword ptr [eax+220]
 005B4CB0    mov         eax,dword ptr [ebp+8]
 005B4CB3    mov         eax,dword ptr [eax-4]
 005B4CB6    mov         eax,dword ptr [eax+20]
 005B4CB9    mov         eax,dword ptr [eax+220]
 005B4CBF    call        005B36E8
 005B4CC4    xor         al,1
 005B4CC6    mov         byte ptr [ebp-1],al
>005B4CC9    jmp         005B4CDC
 005B4CCB    mov         eax,dword ptr [ebp+8]
 005B4CCE    mov         eax,dword ptr [eax-8]
 005B4CD1    cmp         dword ptr [eax+220],0
 005B4CD8    setne       byte ptr [ebp-1]
 005B4CDC    mov         al,byte ptr [ebp-1]
 005B4CDF    pop         ecx
 005B4CE0    pop         ebp
 005B4CE1    ret
*}
end;

//005B4CE4
function DoRowHeights:Boolean;
begin
{*
 005B4CE4    push        ebp
 005B4CE5    mov         ebp,esp
 005B4CE7    push        ecx
 005B4CE8    mov         eax,dword ptr [ebp+8]
 005B4CEB    mov         eax,dword ptr [eax-4]
 005B4CEE    cmp         dword ptr [eax+20],0
>005B4CF2    je          005B4D1B
 005B4CF4    mov         eax,dword ptr [ebp+8]
 005B4CF7    mov         eax,dword ptr [eax-8]
 005B4CFA    mov         edx,dword ptr [eax+250]
 005B4D00    mov         eax,dword ptr [ebp+8]
 005B4D03    mov         eax,dword ptr [eax-4]
 005B4D06    mov         eax,dword ptr [eax+20]
 005B4D09    mov         eax,dword ptr [eax+250]
 005B4D0F    call        005B36E8
 005B4D14    xor         al,1
 005B4D16    mov         byte ptr [ebp-1],al
>005B4D19    jmp         005B4D2C
 005B4D1B    mov         eax,dword ptr [ebp+8]
 005B4D1E    mov         eax,dword ptr [eax-8]
 005B4D21    cmp         dword ptr [eax+250],0
 005B4D28    setne       byte ptr [ebp-1]
 005B4D2C    mov         al,byte ptr [ebp-1]
 005B4D2F    pop         ecx
 005B4D30    pop         ebp
 005B4D31    ret
*}
end;

//005B4D34
procedure TCustomGrid.DefineProperties(Filer:TFiler);
begin
{*
 005B4D34    push        ebp
 005B4D35    mov         ebp,esp
 005B4D37    add         esp,0FFFFFFF8
 005B4D3A    push        ebx
 005B4D3B    mov         dword ptr [ebp-4],edx
 005B4D3E    mov         dword ptr [ebp-8],eax
 005B4D41    mov         edx,dword ptr [ebp-4]
 005B4D44    mov         eax,dword ptr [ebp-8]
 005B4D47    call        TWinControl.DefineProperties
 005B4D4C    mov         eax,dword ptr [ebp-8]
 005B4D4F    cmp         byte ptr [eax+28F],0
>005B4D56    je          005B4DA8
 005B4D58    mov         eax,dword ptr [ebp-8]
 005B4D5B    push        eax
 005B4D5C    push        5B4B34;TCustomGrid.ReadColWidths
 005B4D61    mov         eax,dword ptr [ebp-8]
 005B4D64    push        eax
 005B4D65    push        5B4BE4;TCustomGrid.WriteColWidths
 005B4D6A    push        ebp
 005B4D6B    call        DoColWidths
 005B4D70    pop         ecx
 005B4D71    mov         ecx,eax
 005B4D73    mov         edx,5B4DB8;'ColWidths'
 005B4D78    mov         eax,dword ptr [ebp-4]
 005B4D7B    mov         ebx,dword ptr [eax]
 005B4D7D    call        dword ptr [ebx+4]
 005B4D80    mov         eax,dword ptr [ebp-8]
 005B4D83    push        eax
 005B4D84    push        5B4B8C;TCustomGrid.ReadRowHeights
 005B4D89    mov         eax,dword ptr [ebp-8]
 005B4D8C    push        eax
 005B4D8D    push        5B4C3C;TCustomGrid.WriteRowHeights
 005B4D92    push        ebp
 005B4D93    call        DoRowHeights
 005B4D98    pop         ecx
 005B4D99    mov         ecx,eax
 005B4D9B    mov         edx,5B4DCC;'RowHeights'
 005B4DA0    mov         eax,dword ptr [ebp-4]
 005B4DA3    mov         ebx,dword ptr [eax]
 005B4DA5    call        dword ptr [ebx+4]
 005B4DA8    pop         ebx
 005B4DA9    pop         ecx
 005B4DAA    pop         ecx
 005B4DAB    pop         ebp
 005B4DAC    ret
*}
end;

//005B4DD8
procedure sub_005B4DD8(?:TCustomGrid; ?:Longint; ?:Longint);
begin
{*
 005B4DD8    push        ebp
 005B4DD9    mov         ebp,esp
 005B4DDB    add         esp,0FFFFFFE4
 005B4DDE    push        esi
 005B4DDF    mov         dword ptr [ebp-0C],ecx
 005B4DE2    mov         dword ptr [ebp-8],edx
 005B4DE5    mov         dword ptr [ebp-4],eax
 005B4DE8    mov         eax,dword ptr [ebp-8]
 005B4DEB    cmp         eax,dword ptr [ebp-0C]
>005B4DEE    je          005B4EE1
 005B4DF4    mov         eax,dword ptr [ebp-4]
 005B4DF7    cmp         dword ptr [eax+220],0
>005B4DFE    je          005B4E2A
 005B4E00    mov         ecx,dword ptr [ebp-0C]
 005B4E03    inc         ecx
 005B4E04    mov         edx,dword ptr [ebp-8]
 005B4E07    inc         edx
 005B4E08    mov         eax,dword ptr [ebp-4]
 005B4E0B    add         eax,220
 005B4E10    call        005B3650
 005B4E15    mov         ecx,dword ptr [ebp-0C]
 005B4E18    inc         ecx
 005B4E19    mov         edx,dword ptr [ebp-8]
 005B4E1C    inc         edx
 005B4E1D    mov         eax,dword ptr [ebp-4]
 005B4E20    add         eax,224
 005B4E25    call        005B3650
 005B4E2A    mov         eax,dword ptr [ebp-0C]
 005B4E2D    push        eax
 005B4E2E    mov         eax,dword ptr [ebp-4]
 005B4E31    lea         edx,[eax+228]
 005B4E37    mov         ecx,dword ptr [ebp-8]
 005B4E3A    mov         eax,dword ptr [ebp-4]
 005B4E3D    call        005B7874
 005B4E42    mov         eax,dword ptr [ebp-0C]
 005B4E45    push        eax
 005B4E46    mov         eax,dword ptr [ebp-4]
 005B4E49    lea         edx,[eax+210]
 005B4E4F    mov         ecx,dword ptr [ebp-8]
 005B4E52    mov         eax,dword ptr [ebp-4]
 005B4E55    call        005B7874
 005B4E5A    mov         eax,dword ptr [ebp-0C]
 005B4E5D    push        eax
 005B4E5E    mov         eax,dword ptr [ebp-4]
 005B4E61    lea         edx,[eax+280]
 005B4E67    mov         ecx,dword ptr [ebp-8]
 005B4E6A    mov         eax,dword ptr [ebp-4]
 005B4E6D    call        005B7874
 005B4E72    xor         eax,eax
 005B4E74    mov         dword ptr [ebp-18],eax
 005B4E77    mov         eax,dword ptr [ebp-4]
 005B4E7A    call        TDrawGrid.GetVisibleRowCount
 005B4E7F    mov         dword ptr [ebp-10],eax
 005B4E82    mov         eax,dword ptr [ebp-8]
 005B4E85    cmp         eax,dword ptr [ebp-0C]
>005B4E88    jge         005B4E98
 005B4E8A    mov         eax,dword ptr [ebp-8]
 005B4E8D    mov         dword ptr [ebp-1C],eax
 005B4E90    mov         eax,dword ptr [ebp-0C]
 005B4E93    mov         dword ptr [ebp-14],eax
>005B4E96    jmp         005B4EA4
 005B4E98    mov         eax,dword ptr [ebp-0C]
 005B4E9B    mov         dword ptr [ebp-1C],eax
 005B4E9E    mov         eax,dword ptr [ebp-8]
 005B4EA1    mov         dword ptr [ebp-14],eax
 005B4EA4    lea         edx,[ebp-1C]
 005B4EA7    mov         eax,dword ptr [ebp-4]
 005B4EAA    call        005B71CC
 005B4EAF    mov         ecx,dword ptr [ebp-0C]
 005B4EB2    mov         edx,dword ptr [ebp-8]
 005B4EB5    mov         eax,dword ptr [ebp-4]
 005B4EB8    mov         si,0FFAA
 005B4EBC    call        @CallDynaInst
 005B4EC1    mov         eax,dword ptr [ebp-4]
 005B4EC4    cmp         dword ptr [eax+220],0
>005B4ECB    je          005B4ED9
 005B4ECD    mov         eax,dword ptr [ebp-4]
 005B4ED0    mov         si,0FFA5
 005B4ED4    call        @CallDynaInst
 005B4ED9    mov         eax,dword ptr [ebp-4]
 005B4EDC    call        005BA008
 005B4EE1    pop         esi
 005B4EE2    mov         esp,ebp
 005B4EE4    pop         ebp
 005B4EE5    ret
*}
end;

//005B4EE8
{*procedure TCustomGrid.sub_005B4EE8(?:?; ?:?);
begin
 005B4EE8    push        ebp
 005B4EE9    mov         ebp,esp
 005B4EEB    add         esp,0FFFFFFF4
 005B4EEE    mov         dword ptr [ebp-0C],ecx
 005B4EF1    mov         dword ptr [ebp-8],edx
 005B4EF4    mov         dword ptr [ebp-4],eax
 005B4EF7    mov         esp,ebp
 005B4EF9    pop         ebp
 005B4EFA    ret
end;*}

//005B4EFC
procedure sub_005B4EFC(?:TCustomGrid; ?:Longint; ?:Longint);
begin
{*
 005B4EFC    push        ebp
 005B4EFD    mov         ebp,esp
 005B4EFF    add         esp,0FFFFFFF4
 005B4F02    push        esi
 005B4F03    mov         dword ptr [ebp-0C],ecx
 005B4F06    mov         dword ptr [ebp-8],edx
 005B4F09    mov         dword ptr [ebp-4],eax
 005B4F0C    mov         eax,dword ptr [ebp-4]
 005B4F0F    cmp         dword ptr [eax+250],0
>005B4F16    je          005B4F2D
 005B4F18    mov         ecx,dword ptr [ebp-0C]
 005B4F1B    inc         ecx
 005B4F1C    mov         edx,dword ptr [ebp-8]
 005B4F1F    inc         edx
 005B4F20    mov         eax,dword ptr [ebp-4]
 005B4F23    add         eax,250
 005B4F28    call        005B3650
 005B4F2D    mov         eax,dword ptr [ebp-0C]
 005B4F30    push        eax
 005B4F31    mov         eax,dword ptr [ebp-4]
 005B4F34    lea         edx,[eax+22C]
 005B4F3A    mov         ecx,dword ptr [ebp-8]
 005B4F3D    mov         eax,dword ptr [ebp-4]
 005B4F40    call        005B7874
 005B4F45    mov         eax,dword ptr [ebp-0C]
 005B4F48    push        eax
 005B4F49    mov         eax,dword ptr [ebp-4]
 005B4F4C    lea         edx,[eax+214]
 005B4F52    mov         ecx,dword ptr [ebp-8]
 005B4F55    mov         eax,dword ptr [ebp-4]
 005B4F58    call        005B7874
 005B4F5D    mov         eax,dword ptr [ebp-0C]
 005B4F60    push        eax
 005B4F61    mov         eax,dword ptr [ebp-4]
 005B4F64    lea         edx,[eax+284]
 005B4F6A    mov         ecx,dword ptr [ebp-8]
 005B4F6D    mov         eax,dword ptr [ebp-4]
 005B4F70    call        005B7874
 005B4F75    mov         ecx,dword ptr [ebp-0C]
 005B4F78    mov         edx,dword ptr [ebp-8]
 005B4F7B    mov         eax,dword ptr [ebp-4]
 005B4F7E    mov         si,0FFA9
 005B4F82    call        @CallDynaInst
 005B4F87    mov         eax,dword ptr [ebp-4]
 005B4F8A    cmp         dword ptr [eax+250],0
>005B4F91    je          005B4F9F
 005B4F93    mov         eax,dword ptr [ebp-4]
 005B4F96    mov         si,0FFA4
 005B4F9A    call        @CallDynaInst
 005B4F9F    mov         eax,dword ptr [ebp-4]
 005B4FA2    call        005BA008
 005B4FA7    pop         esi
 005B4FA8    mov         esp,ebp
 005B4FAA    pop         ebp
 005B4FAB    ret
*}
end;

//005B4FAC
{*procedure TCustomGrid.sub_005B4FAC(?:?; ?:?);
begin
 005B4FAC    push        ebp
 005B4FAD    mov         ebp,esp
 005B4FAF    add         esp,0FFFFFFF4
 005B4FB2    mov         dword ptr [ebp-0C],ecx
 005B4FB5    mov         dword ptr [ebp-8],edx
 005B4FB8    mov         dword ptr [ebp-4],eax
 005B4FBB    mov         esp,ebp
 005B4FBD    pop         ebp
 005B4FBE    ret
end;*}

//005B4FC0
{*procedure sub_005B4FC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B4FC0    push        ebp
 005B4FC1    mov         ebp,esp
 005B4FC3    add         esp,0FFFFFFF4
 005B4FC6    mov         dword ptr [ebp-0C],ecx
 005B4FC9    mov         dword ptr [ebp-8],edx
 005B4FCC    mov         dword ptr [ebp-4],eax
 005B4FCF    mov         al,byte ptr [ebp+0C]
 005B4FD2    push        eax
 005B4FD3    mov         al,byte ptr [ebp+8]
 005B4FD6    push        eax
 005B4FD7    mov         ecx,dword ptr [ebp-0C]
 005B4FDA    mov         edx,dword ptr [ebp-8]
 005B4FDD    mov         eax,dword ptr [ebp-4]
 005B4FE0    call        005B7990
 005B4FE5    mov         esp,ebp
 005B4FE7    pop         ebp
 005B4FE8    ret         8
end;*}

//005B4FEC
{*function sub_005B4FEC(?:?; ?:?):?;
begin
 005B4FEC    push        ebp
 005B4FED    mov         ebp,esp
 005B4FEF    add         esp,0FFFFFFF0
 005B4FF2    mov         dword ptr [ebp-10],ecx
 005B4FF5    mov         dword ptr [ebp-0C],edx
 005B4FF8    mov         dword ptr [ebp-4],eax
 005B4FFB    mov         byte ptr [ebp-5],1
 005B4FFF    mov         al,byte ptr [ebp-5]
 005B5002    mov         esp,ebp
 005B5004    pop         ebp
 005B5005    ret
end;*}

//005B5008
{*procedure TCustomGrid.sub_005B5008(?:?; ?:?);
begin
 005B5008    push        ebp
 005B5009    mov         ebp,esp
 005B500B    add         esp,0FFFFFFF4
 005B500E    mov         dword ptr [ebp-0C],ecx
 005B5011    mov         dword ptr [ebp-8],edx
 005B5014    mov         dword ptr [ebp-4],eax
 005B5017    mov         esp,ebp
 005B5019    pop         ebp
 005B501A    ret
end;*}

//005B501C
{*function sub_005B501C(?:TCustomGrid; ?:?; ?:?):?;
begin
 005B501C    push        ebp
 005B501D    mov         ebp,esp
 005B501F    add         esp,0FFFFFF80
 005B5022    push        ebx
 005B5023    mov         dword ptr [ebp-0C],ecx
 005B5026    mov         dword ptr [ebp-8],edx
 005B5029    mov         dword ptr [ebp-4],eax
 005B502C    mov         eax,dword ptr [ebp-4]
 005B502F    mov         al,byte ptr [eax+28E]
 005B5035    mov         byte ptr [ebp-0E],al
 005B5038    cmp         byte ptr [ebp-0E],0
>005B503C    jne         005B506E
 005B503E    lea         edx,[ebp-80]
 005B5041    mov         eax,dword ptr [ebp-4]
 005B5044    call        TCustomGrid.CalcDrawInfo
 005B5049    lea         eax,[ebp-0E]
 005B504C    push        eax
 005B504D    lea         eax,[ebp-14]
 005B5050    push        eax
 005B5051    lea         eax,[ebp-18]
 005B5054    push        eax
 005B5055    lea         eax,[ebp-1C]
 005B5058    push        eax
 005B5059    lea         eax,[ebp-80]
 005B505C    push        eax
 005B505D    mov         ecx,dword ptr [ebp-0C]
 005B5060    mov         edx,dword ptr [ebp-8]
 005B5063    mov         eax,dword ptr [ebp-4]
 005B5066    mov         ebx,dword ptr [eax]
 005B5068    call        dword ptr [ebx+0C8]
 005B506E    cmp         byte ptr [ebp-0E],0
 005B5072    setne       byte ptr [ebp-0D]
 005B5076    mov         al,byte ptr [ebp-0D]
 005B5079    pop         ebx
 005B507A    mov         esp,ebp
 005B507C    pop         ebp
 005B507D    ret
end;*}

//005B5080
procedure TCustomGrid.sub_005B5080;
begin
{*
 005B5080    push        ebp
 005B5081    mov         ebp,esp
 005B5083    add         esp,0FFFFFFEC
 005B5086    mov         dword ptr [ebp-4],eax
 005B5089    mov         eax,dword ptr [ebp-4]
 005B508C    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>005B5093    je          005B50D0
 005B5095    mov         eax,dword ptr [ebp-4]
 005B5098    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005B509F    je          005B50D0
 005B50A1    lea         eax,[ebp-14]
 005B50A4    push        eax
 005B50A5    mov         eax,dword ptr [ebp-4]
 005B50A8    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B50AE    mov         eax,dword ptr [ebp-4]
 005B50B1    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B50B7    mov         eax,dword ptr [ebp-4]
 005B50BA    call        005B488C
 005B50BF    lea         edx,[ebp-14]
 005B50C2    mov         eax,dword ptr [ebp-4]
 005B50C5    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005B50CB    call        005B41E4
 005B50D0    mov         esp,ebp
 005B50D2    pop         ebp
 005B50D3    ret
*}
end;

//005B50D4
procedure FillDWord(var Dest:void ; Count:Integer; Value:Integer);
begin
{*
 005B50D4    xchg        edx,ecx
 005B50D6    push        edi
 005B50D7    mov         edi,eax
 005B50D9    mov         eax,edx
 005B50DB    rep stos    dword ptr [edi]
 005B50DD    pop         edi
 005B50DE    ret
*}
end;

//005B50E0
function StackAlloc(Size:Integer):Pointer;
begin
{*
 005B50E0    pop         ecx
 005B50E1    mov         edx,esp
 005B50E3    add         eax,3
 005B50E6    and         eax,0FFFFFFFC
 005B50E9    cmp         eax,0FFC
>005B50EE    jle         005B5103
 005B50F0    sub         esp,0FFC
 005B50F6    push        eax
 005B50F7    sub         eax,1000
>005B50FC    jns         005B50F0
 005B50FE    add         eax,1000
 005B5103    sub         esp,eax
 005B5105    mov         eax,esp
 005B5107    push        edx
 005B5108    mov         edx,esp
 005B510A    sub         edx,4
 005B510D    push        edx
 005B510E    push        ecx
 005B510F    ret
*}
end;

//005B5110
procedure StackFree(P:Pointer);
begin
{*
 005B5110    pop         ecx
 005B5111    mov         edx,dword ptr [esp]
 005B5114    sub         eax,8
 005B5117    cmp         edx,esp
>005B5119    jne         005B5123
 005B511B    cmp         edx,eax
>005B511D    jne         005B5123
 005B511F    mov         esp,dword ptr [esp+4]
 005B5123    push        ecx
 005B5124    ret
*}
end;

//005B5128
{*procedure sub_005B5128(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B5128    push        ebp
 005B5129    mov         ebp,esp
 005B512B    add         esp,0FFFFFFC4
 005B512E    push        ebx
 005B512F    push        esi
 005B5130    mov         dword ptr [ebp-0C],ecx
 005B5133    mov         dword ptr [ebp-8],edx
 005B5136    mov         dword ptr [ebp-4],eax
 005B5139    mov         eax,dword ptr [ebp+0C]
 005B513C    mov         eax,dword ptr [eax+1C]
 005B513F    mov         eax,dword ptr [eax-4]
 005B5142    mov         eax,dword ptr [eax+208]
 005B5148    mov         dword ptr [ebp-30],eax
 005B514B    mov         eax,dword ptr [ebp-4]
 005B514E    cmp         dword ptr [eax],0
>005B5151    je          005B5355
 005B5157    mov         eax,dword ptr [ebp+0C]
 005B515A    mov         eax,dword ptr [eax+1C]
 005B515D    mov         eax,dword ptr [eax-4]
 005B5160    mov         edx,dword ptr [eax+244]
 005B5166    mov         eax,dword ptr [ebp-30]
 005B5169    mov         eax,dword ptr [eax+10]
 005B516C    call        TPen.SetWidth
 005B5171    cmp         byte ptr [ebp+8],0
>005B5175    je          005B518A
 005B5177    mov         eax,dword ptr [ebp+0C]
 005B517A    mov         edx,dword ptr [eax+0C]
 005B517D    mov         eax,dword ptr [ebp-30]
 005B5180    mov         eax,dword ptr [eax+10]
 005B5183    call        TPen.SetColor
>005B5188    jmp         005B519B
 005B518A    mov         eax,dword ptr [ebp+0C]
 005B518D    mov         edx,dword ptr [eax+8]
 005B5190    mov         eax,dword ptr [ebp-30]
 005B5193    mov         eax,dword ptr [eax+10]
 005B5196    call        TPen.SetColor
 005B519B    mov         eax,dword ptr [ebp-30]
 005B519E    mov         eax,dword ptr [eax+10]
 005B51A1    call        TPen.GetWidth
 005B51A6    dec         eax
>005B51A7    jle         005B51EC
 005B51A9    xor         eax,eax
 005B51AB    mov         dword ptr [ebp-3C],eax
 005B51AE    mov         eax,dword ptr [ebp-30]
 005B51B1    mov         eax,dword ptr [eax+10]
 005B51B4    call        TPen.GetColor
 005B51B9    mov         dword ptr [ebp-38],eax
 005B51BC    xor         eax,eax
 005B51BE    mov         dword ptr [ebp-34],eax
 005B51C1    push        0
 005B51C3    push        0
 005B51C5    lea         eax,[ebp-3C]
 005B51C8    push        eax
 005B51C9    mov         eax,dword ptr [ebp-30]
 005B51CC    mov         eax,dword ptr [eax+10]
 005B51CF    call        TPen.GetWidth
 005B51D4    push        eax
 005B51D5    push        12200
 005B51DA    call        GDI32.ExtCreatePen
 005B51DF    mov         edx,eax
 005B51E1    mov         eax,dword ptr [ebp-30]
 005B51E4    mov         eax,dword ptr [eax+10]
 005B51E7    call        TPen.SetHandle
 005B51EC    mov         eax,dword ptr [ebp+0C]
 005B51EF    mov         eax,dword ptr [eax+1C]
 005B51F2    mov         eax,dword ptr [eax-8]
 005B51F5    mov         dword ptr [ebp-18],eax
 005B51F8    mov         ebx,dword ptr [ebp-4]
 005B51FB    mov         edx,dword ptr [ebp-8]
 005B51FE    mov         eax,dword ptr [ebx+2C]
 005B5201    call        dword ptr [ebx+28]
 005B5204    mov         edx,dword ptr [ebp+0C]
 005B5207    mov         edx,dword ptr [edx+14]
 005B520A    mov         ecx,dword ptr [ebp-0C]
 005B520D    mov         edx,dword ptr [edx+ecx*4]
 005B5210    mov         ecx,dword ptr [ebp-4]
 005B5213    mov         ecx,dword ptr [ecx]
 005B5215    shr         ecx,1
 005B5217    add         edx,ecx
 005B5219    add         eax,edx
 005B521B    mov         dword ptr [ebp-10],eax
 005B521E    mov         eax,dword ptr [ebp+0C]
 005B5221    mov         eax,dword ptr [eax+1C]
 005B5224    mov         eax,dword ptr [eax-4]
 005B5227    mov         si,0FFC8
 005B522B    call        @CallDynaInst
 005B5230    test        al,al
>005B5232    je          005B523D
 005B5234    cmp         dword ptr [ebp-0C],0
>005B5238    jne         005B523D
 005B523A    inc         dword ptr [ebp-10]
 005B523D    mov         eax,dword ptr [ebp-0C]
 005B5240    xor         eax,1
 005B5243    mov         edx,dword ptr [ebp+0C]
 005B5246    mov         edx,dword ptr [edx+14]
 005B5249    mov         eax,dword ptr [edx+eax*4]
 005B524C    mov         dword ptr [ebp-20],eax
 005B524F    mov         eax,dword ptr [ebp-0C]
 005B5252    xor         eax,1
 005B5255    add         eax,2
 005B5258    mov         edx,dword ptr [ebp+0C]
 005B525B    mov         edx,dword ptr [edx+14]
 005B525E    mov         eax,dword ptr [edx+eax*4]
 005B5261    mov         dword ptr [ebp-24],eax
 005B5264    mov         eax,dword ptr [ebp-0C]
 005B5267    add         eax,2
 005B526A    mov         edx,dword ptr [ebp+0C]
 005B526D    mov         edx,dword ptr [edx+14]
 005B5270    mov         eax,dword ptr [edx+eax*4]
 005B5273    mov         edx,dword ptr [ebp-4]
 005B5276    add         eax,dword ptr [edx]
 005B5278    mov         dword ptr [ebp-1C],eax
 005B527B    mov         eax,dword ptr [ebp+0C]
 005B527E    mov         eax,dword ptr [eax+1C]
 005B5281    mov         eax,dword ptr [eax-0C]
 005B5284    shl         eax,2
 005B5287    mov         dword ptr [ebp-28],eax
 005B528A    xor         eax,eax
 005B528C    mov         dword ptr [ebp-14],eax
 005B528F    mov         eax,dword ptr [ebp-14]
 005B5292    add         eax,dword ptr [ebp-0C]
 005B5295    mov         edx,dword ptr [ebp-18]
 005B5298    mov         ecx,dword ptr [ebp-10]
 005B529B    mov         dword ptr [edx+eax*4],ecx
 005B529E    mov         eax,dword ptr [ebp-0C]
 005B52A1    xor         eax,1
 005B52A4    add         eax,dword ptr [ebp-14]
 005B52A7    mov         edx,dword ptr [ebp-18]
 005B52AA    mov         ecx,dword ptr [ebp-20]
 005B52AD    mov         dword ptr [edx+eax*4],ecx
 005B52B0    add         dword ptr [ebp-14],2
 005B52B4    mov         eax,dword ptr [ebp-14]
 005B52B7    add         eax,dword ptr [ebp-0C]
 005B52BA    mov         edx,dword ptr [ebp-18]
 005B52BD    mov         ecx,dword ptr [ebp-10]
 005B52C0    mov         dword ptr [edx+eax*4],ecx
 005B52C3    mov         eax,dword ptr [ebp-0C]
 005B52C6    xor         eax,1
 005B52C9    add         eax,dword ptr [ebp-14]
 005B52CC    mov         edx,dword ptr [ebp-18]
 005B52CF    mov         ecx,dword ptr [ebp-24]
 005B52D2    mov         dword ptr [edx+eax*4],ecx
 005B52D5    add         dword ptr [ebp-14],2
 005B52D9    inc         dword ptr [ebp-8]
 005B52DC    mov         ebx,dword ptr [ebp-4]
 005B52DF    mov         edx,dword ptr [ebp-8]
 005B52E2    mov         eax,dword ptr [ebx+2C]
 005B52E5    call        dword ptr [ebx+28]
 005B52E8    mov         edx,dword ptr [ebp-4]
 005B52EB    add         eax,dword ptr [edx]
 005B52ED    mov         dword ptr [ebp-2C],eax
 005B52F0    cmp         dword ptr [ebp-2C],0
>005B52F4    jg          005B5301
 005B52F6    mov         eax,dword ptr [ebp-4]
 005B52F9    mov         eax,dword ptr [eax+10]
 005B52FC    cmp         eax,dword ptr [ebp-8]
>005B52FF    jge         005B52D9
 005B5301    mov         eax,dword ptr [ebp-2C]
 005B5304    add         dword ptr [ebp-10],eax
 005B5307    mov         eax,dword ptr [ebp-10]
 005B530A    cmp         eax,dword ptr [ebp-1C]
>005B530D    jg          005B5326
 005B530F    mov         eax,dword ptr [ebp-4]
 005B5312    mov         eax,dword ptr [eax+10]
 005B5315    cmp         eax,dword ptr [ebp-8]
>005B5318    jl          005B5326
 005B531A    mov         eax,dword ptr [ebp-14]
 005B531D    cmp         eax,dword ptr [ebp-28]
>005B5320    jle         005B528F
 005B5326    mov         eax,dword ptr [ebp-14]
 005B5329    shr         eax,2
 005B532C    push        eax
 005B532D    mov         eax,dword ptr [ebp+0C]
 005B5330    mov         eax,dword ptr [eax+1C]
 005B5333    mov         eax,dword ptr [eax-10]
 005B5336    push        eax
 005B5337    mov         eax,dword ptr [ebp-18]
 005B533A    push        eax
 005B533B    mov         eax,dword ptr [ebp+0C]
 005B533E    mov         eax,dword ptr [eax+1C]
 005B5341    mov         eax,dword ptr [eax-4]
 005B5344    mov         eax,dword ptr [eax+208]
 005B534A    call        TCanvas.GetHandle
 005B534F    push        eax
 005B5350    call        GDI32.PolyPolyline
 005B5355    pop         esi
 005B5356    pop         ebx
 005B5357    mov         esp,ebp
 005B5359    pop         ebp
 005B535A    ret         4
end;*}

//005B5360
{*procedure sub_005B5360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B5360    push        ebp
 005B5361    mov         ebp,esp
 005B5363    add         esp,0FFFFFFF8
 005B5366    mov         dword ptr [ebp-8],ecx
 005B5369    mov         byte ptr [ebp-2],dl
 005B536C    mov         byte ptr [ebp-1],al
 005B536F    mov         eax,dword ptr [ebp+14]
 005B5372    mov         eax,dword ptr [eax]
 005B5374    mov         edx,dword ptr [ebp+14]
 005B5377    cmp         eax,dword ptr [edx+8]
>005B537A    je          005B53F0
 005B537C    mov         eax,dword ptr [ebp+14]
 005B537F    mov         eax,dword ptr [eax+4]
 005B5382    mov         edx,dword ptr [ebp+14]
 005B5385    cmp         eax,dword ptr [edx+0C]
>005B5388    je          005B53F0
 005B538A    cmp         byte ptr [ebp-1],0
>005B538E    jne         005B53C1
 005B5390    push        ebp
 005B5391    mov         al,byte ptr [ebp-1]
 005B5394    push        eax
 005B5395    mov         eax,dword ptr [ebp+1C]
 005B5398    add         eax,0FFFFFFC0
 005B539B    mov         ecx,1
 005B53A0    mov         edx,dword ptr [ebp+18]
 005B53A3    call        005B5128
 005B53A8    pop         ecx
 005B53A9    push        ebp
 005B53AA    mov         al,byte ptr [ebp-2]
 005B53AD    push        eax
 005B53AE    mov         eax,dword ptr [ebp+1C]
 005B53B1    add         eax,0FFFFFF90
 005B53B4    xor         ecx,ecx
 005B53B6    mov         edx,dword ptr [ebp-8]
 005B53B9    call        005B5128
 005B53BE    pop         ecx
>005B53BF    jmp         005B53F0
 005B53C1    push        ebp
 005B53C2    mov         al,byte ptr [ebp-2]
 005B53C5    push        eax
 005B53C6    mov         eax,dword ptr [ebp+1C]
 005B53C9    add         eax,0FFFFFF90
 005B53CC    xor         ecx,ecx
 005B53CE    mov         edx,dword ptr [ebp-8]
 005B53D1    call        005B5128
 005B53D6    pop         ecx
 005B53D7    push        ebp
 005B53D8    mov         al,byte ptr [ebp-1]
 005B53DB    push        eax
 005B53DC    mov         eax,dword ptr [ebp+1C]
 005B53DF    add         eax,0FFFFFFC0
 005B53E2    mov         ecx,1
 005B53E7    mov         edx,dword ptr [ebp+18]
 005B53EA    call        005B5128
 005B53EF    pop         ecx
 005B53F0    pop         ecx
 005B53F1    pop         ecx
 005B53F2    pop         ebp
 005B53F3    ret         14
end;*}

//005B53F8
{*procedure sub_005B53F8(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B53F8    push        ebp
 005B53F9    mov         ebp,esp
 005B53FB    add         esp,0FFFFFFB4
 005B53FE    push        ebx
 005B53FF    push        esi
 005B5400    push        edi
 005B5401    mov         dword ptr [ebp-0C],ecx
 005B5404    mov         dword ptr [ebp-8],edx
 005B5407    mov         dword ptr [ebp-4],eax
 005B540A    mov         eax,dword ptr [ebp-8]
 005B540D    mov         dword ptr [ebp-14],eax
 005B5410    mov         eax,dword ptr [ebp+18]
 005B5413    mov         dword ptr [ebp-38],eax
>005B5416    jmp         005B5796
 005B541B    mov         eax,dword ptr [ebp-4]
 005B541E    mov         dword ptr [ebp-10],eax
 005B5421    mov         eax,dword ptr [ebp-0C]
 005B5424    mov         dword ptr [ebp-3C],eax
 005B5427    mov         eax,dword ptr [ebp+1C]
 005B542A    mov         eax,dword ptr [eax-4]
 005B542D    mov         edx,dword ptr [ebp-14]
 005B5430    call        005B9750
 005B5435    add         eax,dword ptr [ebp-38]
 005B5438    mov         dword ptr [ebp-30],eax
>005B543B    jmp         005B576A
 005B5440    mov         eax,dword ptr [ebp+1C]
 005B5443    mov         eax,dword ptr [eax-4]
 005B5446    mov         edx,dword ptr [ebp-10]
 005B5449    call        TCustomGrid.GetColWidths
 005B544E    add         eax,dword ptr [ebp-3C]
 005B5451    mov         dword ptr [ebp-34],eax
 005B5454    mov         eax,dword ptr [ebp-34]
 005B5457    cmp         eax,dword ptr [ebp-3C]
>005B545A    jle         005B575B
 005B5460    lea         eax,[ebp-3C]
 005B5463    push        eax
 005B5464    mov         eax,dword ptr [ebp+1C]
 005B5467    mov         eax,dword ptr [eax-4]
 005B546A    mov         eax,dword ptr [eax+208]
 005B5470    call        TCanvas.GetHandle
 005B5475    push        eax
 005B5476    call        GDI32.RectVisible
 005B547B    test        eax,eax
>005B547D    je          005B575B
 005B5483    mov         al,byte ptr [ebp+8]
 005B5486    mov         byte ptr [ebp-15],al
 005B5489    mov         eax,dword ptr [ebp+1C]
 005B548C    mov         eax,dword ptr [eax-4]
 005B548F    call        005B4984
 005B5494    mov         byte ptr [ebp-16],al
 005B5497    cmp         byte ptr [ebp-16],0
>005B549B    je          005B54C3
 005B549D    mov         eax,dword ptr [ebp+1C]
 005B54A0    mov         eax,dword ptr [eax-4]
 005B54A3    mov         eax,dword ptr [eax+22C]
 005B54A9    cmp         eax,dword ptr [ebp-14]
>005B54AC    jne         005B54C3
 005B54AE    mov         eax,dword ptr [ebp+1C]
 005B54B1    mov         eax,dword ptr [eax-4]
 005B54B4    mov         eax,dword ptr [eax+228]
 005B54BA    cmp         eax,dword ptr [ebp-10]
>005B54BD    jne         005B54C3
 005B54BF    or          byte ptr [ebp-15],2
 005B54C3    mov         eax,dword ptr [ebp+1C]
 005B54C6    lea         ecx,[eax-80]
 005B54C9    mov         edx,dword ptr [ebp-14]
 005B54CC    mov         eax,dword ptr [ebp-10]
 005B54CF    call        005B31A0
 005B54D4    test        al,al
>005B54D6    je          005B54DC
 005B54D8    or          byte ptr [ebp-15],1
 005B54DC    test        byte ptr [ebp-15],2
>005B54E0    je          005B5510
 005B54E2    mov         eax,dword ptr [ebp+1C]
 005B54E5    mov         eax,dword ptr [eax-4]
 005B54E8    test        byte ptr [eax+249],4
>005B54EF    je          005B5510
 005B54F1    mov         eax,dword ptr [ebp+1C]
 005B54F4    mov         eax,dword ptr [eax-4]
 005B54F7    cmp         byte ptr [eax+28D],0
>005B54FE    je          005B5510
 005B5500    mov         eax,dword ptr [ebp+1C]
 005B5503    mov         eax,dword ptr [eax-4]
 005B5506    test        byte ptr [eax+1C],10
>005B550A    je          005B575B
 005B5510    mov         eax,dword ptr [ebp+1C]
 005B5513    mov         eax,dword ptr [eax-4]
 005B5516    cmp         byte ptr [eax+28C],0
>005B551D    jne         005B552F
 005B551F    mov         eax,dword ptr [ebp+1C]
 005B5522    mov         eax,dword ptr [eax-4]
 005B5525    test        byte ptr [eax+1C],10
>005B5529    je          005B55B6
 005B552F    mov         eax,dword ptr [ebp+1C]
 005B5532    mov         eax,dword ptr [eax-4]
 005B5535    mov         eax,dword ptr [eax+208]
 005B553B    mov         dword ptr [ebp-1C],eax
 005B553E    mov         eax,dword ptr [ebp+1C]
 005B5541    mov         eax,dword ptr [eax-4]
 005B5544    mov         edx,dword ptr [eax+68]
 005B5547    mov         eax,dword ptr [ebp-1C]
 005B554A    call        TCanvas.SetFont
 005B554F    test        byte ptr [ebp-15],1
>005B5553    je          005B559D
 005B5555    test        byte ptr [ebp-15],2
>005B5559    je          005B557B
 005B555B    mov         eax,dword ptr [ebp+1C]
 005B555E    mov         eax,dword ptr [eax-4]
 005B5561    mov         ax,word ptr [eax+248]
 005B5568    and         ax,word ptr ds:[5B57BC];0x1020 gvar_005B57BC
 005B556F    mov         dx,word ptr ds:[5B57C0];0x0 gvar_005B57C0
 005B5576    cmp         dx,ax
>005B5579    je          005B559D
 005B557B    mov         eax,dword ptr [ebp-1C]
 005B557E    mov         eax,dword ptr [eax+14]
 005B5581    mov         edx,8000000D
 005B5586    call        TBrush.SetColor
 005B558B    mov         eax,dword ptr [ebp-1C]
 005B558E    mov         eax,dword ptr [eax+0C]
 005B5591    mov         edx,8000000E
 005B5596    call        TFont.SetColor
>005B559B    jmp         005B55AB
 005B559D    mov         eax,dword ptr [ebp-1C]
 005B55A0    mov         eax,dword ptr [eax+14]
 005B55A3    mov         edx,dword ptr [ebp+0C]
 005B55A6    call        TBrush.SetColor
 005B55AB    lea         edx,[ebp-3C]
 005B55AE    mov         eax,dword ptr [ebp-1C]
 005B55B1    call        TCanvas.FillRect
 005B55B6    lea         eax,[ebp-3C]
 005B55B9    push        eax
 005B55BA    mov         al,byte ptr [ebp-15]
 005B55BD    push        eax
 005B55BE    mov         eax,dword ptr [ebp+1C]
 005B55C1    mov         eax,dword ptr [eax-4]
 005B55C4    mov         ecx,dword ptr [ebp-14]
 005B55C7    mov         edx,dword ptr [ebp-10]
 005B55CA    mov         ebx,dword ptr [eax]
 005B55CC    call        dword ptr [ebx+0D4]
 005B55D2    mov         eax,dword ptr [ebp+1C]
 005B55D5    mov         eax,dword ptr [eax-4]
 005B55D8    cmp         byte ptr [eax+28C],0
>005B55DF    je          005B569E
 005B55E5    test        byte ptr [ebp-15],4
>005B55E9    je          005B569E
 005B55EF    mov         eax,dword ptr [ebp+1C]
 005B55F2    mov         eax,dword ptr [eax-4]
 005B55F5    cmp         byte ptr [eax+1A5],0
>005B55FC    je          005B569E
 005B5602    mov         eax,dword ptr [ebp+1C]
 005B5605    mov         eax,dword ptr [eax-84]
 005B560B    mov         edx,dword ptr [ebp+1C]
 005B560E    or          eax,dword ptr [edx-88]
>005B5614    je          005B569E
 005B561A    lea         esi,[ebp-3C]
 005B561D    lea         edi,[ebp-4C]
 005B5620    movs        dword ptr [edi],dword ptr [esi]
 005B5621    movs        dword ptr [edi],dword ptr [esi]
 005B5622    movs        dword ptr [edi],dword ptr [esi]
 005B5623    movs        dword ptr [edi],dword ptr [esi]
 005B5624    mov         eax,dword ptr [ebp+1C]
 005B5627    test        byte ptr [eax-84],4
>005B562E    jne         005B563B
 005B5630    mov         eax,dword ptr [ebp+1C]
 005B5633    mov         eax,dword ptr [eax-70]
 005B5636    add         dword ptr [ebp-44],eax
>005B5639    jmp         005B5650
 005B563B    mov         eax,dword ptr [ebp+1C]
 005B563E    test        byte ptr [eax-84],8
>005B5645    jne         005B5650
 005B5647    mov         eax,dword ptr [ebp+1C]
 005B564A    mov         eax,dword ptr [eax-40]
 005B564D    add         dword ptr [ebp-40],eax
 005B5650    mov         eax,dword ptr [ebp+1C]
 005B5653    mov         eax,dword ptr [eax-84]
 005B5659    push        eax
 005B565A    push        4
 005B565C    lea         eax,[ebp-4C]
 005B565F    push        eax
 005B5660    mov         eax,dword ptr [ebp+1C]
 005B5663    mov         eax,dword ptr [eax-4]
 005B5666    mov         eax,dword ptr [eax+208]
 005B566C    call        TCanvas.GetHandle
 005B5671    push        eax
 005B5672    call        USER32.DrawEdge
 005B5677    mov         eax,dword ptr [ebp+1C]
 005B567A    mov         eax,dword ptr [eax-88]
 005B5680    push        eax
 005B5681    push        4
 005B5683    lea         eax,[ebp-4C]
 005B5686    push        eax
 005B5687    mov         eax,dword ptr [ebp+1C]
 005B568A    mov         eax,dword ptr [eax-4]
 005B568D    mov         eax,dword ptr [eax+208]
 005B5693    call        TCanvas.GetHandle
 005B5698    push        eax
 005B5699    call        USER32.DrawEdge
 005B569E    mov         eax,dword ptr [ebp+1C]
 005B56A1    mov         eax,dword ptr [eax-4]
 005B56A4    cmp         byte ptr [eax+28C],0
>005B56AB    je          005B575B
 005B56B1    mov         eax,dword ptr [ebp+1C]
 005B56B4    mov         eax,dword ptr [eax-4]
 005B56B7    test        byte ptr [eax+1C],10
>005B56BB    jne         005B575B
 005B56C1    test        byte ptr [ebp-15],2
>005B56C5    je          005B575B
 005B56CB    mov         eax,dword ptr [ebp+1C]
 005B56CE    mov         eax,dword ptr [eax-4]
 005B56D1    mov         ax,word ptr [eax+248]
 005B56D8    and         ax,word ptr ds:[5B57C4];0x2400 gvar_005B57C4
 005B56DF    mov         dx,word ptr ds:[5B57C4];0x2400 gvar_005B57C4
 005B56E6    cmp         dx,ax
>005B56E9    je          005B575B
 005B56EB    mov         eax,dword ptr [ebp+1C]
 005B56EE    mov         eax,dword ptr [eax-4]
 005B56F1    test        byte ptr [eax+249],10
>005B56F8    jne         005B575B
 005B56FA    mov         eax,dword ptr [ebp+1C]
 005B56FD    mov         eax,dword ptr [eax-4]
 005B5700    mov         si,0FFC8
 005B5704    call        @CallDynaInst
 005B5709    test        al,al
>005B570B    jne         005B572A
 005B570D    lea         eax,[ebp-3C]
 005B5710    push        eax
 005B5711    mov         eax,dword ptr [ebp+1C]
 005B5714    mov         eax,dword ptr [eax-4]
 005B5717    mov         eax,dword ptr [eax+208]
 005B571D    call        TCanvas.GetHandle
 005B5722    push        eax
 005B5723    call        USER32.DrawFocusRect
>005B5728    jmp         005B575B
 005B572A    lea         esi,[ebp-3C]
 005B572D    lea         edi,[ebp-2C]
 005B5730    movs        dword ptr [edi],dword ptr [esi]
 005B5731    movs        dword ptr [edi],dword ptr [esi]
 005B5732    movs        dword ptr [edi],dword ptr [esi]
 005B5733    movs        dword ptr [edi],dword ptr [esi]
 005B5734    mov         eax,dword ptr [ebp-34]
 005B5737    mov         dword ptr [ebp-2C],eax
 005B573A    mov         eax,dword ptr [ebp-3C]
 005B573D    mov         dword ptr [ebp-24],eax
 005B5740    lea         eax,[ebp-2C]
 005B5743    push        eax
 005B5744    mov         eax,dword ptr [ebp+1C]
 005B5747    mov         eax,dword ptr [eax-4]
 005B574A    mov         eax,dword ptr [eax+208]
 005B5750    call        TCanvas.GetHandle
 005B5755    push        eax
 005B5756    call        USER32.DrawFocusRect
 005B575B    mov         eax,dword ptr [ebp+1C]
 005B575E    mov         eax,dword ptr [eax-70]
 005B5761    add         eax,dword ptr [ebp-34]
 005B5764    mov         dword ptr [ebp-3C],eax
 005B5767    inc         dword ptr [ebp-10]
 005B576A    mov         eax,dword ptr [ebp-3C]
 005B576D    cmp         eax,dword ptr [ebp+14]
>005B5770    jge         005B5787
 005B5772    mov         eax,dword ptr [ebp+1C]
 005B5775    mov         eax,dword ptr [eax-4]
 005B5778    mov         eax,dword ptr [eax+21C]
 005B577E    cmp         eax,dword ptr [ebp-10]
>005B5781    jg          005B5440
 005B5787    mov         eax,dword ptr [ebp+1C]
 005B578A    mov         eax,dword ptr [eax-40]
 005B578D    add         eax,dword ptr [ebp-30]
 005B5790    mov         dword ptr [ebp-38],eax
 005B5793    inc         dword ptr [ebp-14]
 005B5796    mov         eax,dword ptr [ebp-38]
 005B5799    cmp         eax,dword ptr [ebp+10]
>005B579C    jge         005B57B3
 005B579E    mov         eax,dword ptr [ebp+1C]
 005B57A1    mov         eax,dword ptr [eax-4]
 005B57A4    mov         eax,dword ptr [eax+24C]
 005B57AA    cmp         eax,dword ptr [ebp-14]
>005B57AD    jg          005B541B
 005B57B3    pop         edi
 005B57B4    pop         esi
 005B57B5    pop         ebx
 005B57B6    mov         esp,ebp
 005B57B8    pop         ebp
 005B57B9    ret         14
end;*}

//005B57C8
procedure sub_005B57C8;
begin
{*
 005B57C8    push        ebp
 005B57C9    mov         ebp,esp
 005B57CB    add         esp,0FFFFFF34
 005B57D1    push        esi
 005B57D2    push        edi
 005B57D3    mov         dword ptr [ebp-4],eax
 005B57D6    mov         eax,dword ptr [ebp-4]
 005B57D9    mov         si,0FFC8
 005B57DD    call        @CallDynaInst;TControl.sub_005F40CC
 005B57E2    test        al,al
>005B57E4    je          005B57F0
 005B57E6    mov         dl,1
 005B57E8    mov         eax,dword ptr [ebp-4]
 005B57EB    call        005B64D4
 005B57F0    lea         edx,[ebp-9C]
 005B57F6    mov         eax,dword ptr [ebp-4]
 005B57F9    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B57FF    call        005C1984
 005B5804    lea         edx,[ebp-70]
 005B5807    mov         eax,dword ptr [ebp-4]
 005B580A    call        TCustomGrid.CalcDrawInfo
 005B580F    cmp         dword ptr [ebp-70],0
>005B5813    jg          005B581F
 005B5815    cmp         dword ptr [ebp-40],0
>005B5819    jle         005B5A4F
 005B581F    mov         dword ptr [ebp-8C],0C0C0C0
 005B5829    mov         eax,dword ptr [ebp-4]
 005B582C    mov         edx,dword ptr [ebp-30]
 005B582F    sub         edx,dword ptr [eax+25C]
 005B5835    mov         eax,dword ptr [ebp-4]
 005B5838    add         edx,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B583E    mov         eax,dword ptr [ebp-4]
 005B5841    push        dword ptr [eax+258]
 005B5847    mov         eax,dword ptr [ebp-60]
 005B584A    pop         ecx
 005B584B    sub         eax,ecx
 005B584D    mov         ecx,dword ptr [ebp-4]
 005B5850    add         eax,dword ptr [ecx+238]
 005B5856    call        00653AC8
 005B585B    add         eax,3
 005B585E    mov         dword ptr [ebp-0C],eax
 005B5861    mov         eax,dword ptr [ebp-0C]
 005B5864    shl         eax,3
 005B5867    add         eax,eax
 005B5869    call        StackAlloc
 005B586E    mov         dword ptr [ebp-8],eax
 005B5871    mov         eax,dword ptr [ebp-0C]
 005B5874    shl         eax,2
 005B5877    call        StackAlloc
 005B587C    mov         dword ptr [ebp-10],eax
 005B587F    mov         eax,dword ptr [ebp-10]
 005B5882    mov         ecx,2
 005B5887    mov         edx,dword ptr [ebp-0C]
 005B588A    call        FillDWord
 005B588F    mov         eax,dword ptr [ebp-4]
 005B5892    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 005B5895    call        ColorToRGB
 005B589A    cmp         eax,0C0C0C0
>005B589F    jne         005B58AB
 005B58A1    mov         dword ptr [ebp-8C],808080
 005B58AB    push        ebp
 005B58AC    push        0
 005B58AE    xor         eax,eax
 005B58B0    mov         dword ptr [ebp-0CC],eax
 005B58B6    xor         eax,eax
 005B58B8    mov         dword ptr [ebp-0C8],eax
 005B58BE    mov         eax,dword ptr [ebp-6C]
 005B58C1    mov         dword ptr [ebp-0C4],eax
 005B58C7    mov         eax,dword ptr [ebp-3C]
 005B58CA    mov         dword ptr [ebp-0C0],eax
 005B58D0    lea         eax,[ebp-0CC]
 005B58D6    push        eax
 005B58D7    push        3
 005B58D9    push        0
 005B58DB    mov         eax,dword ptr [ebp-4]
 005B58DE    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B58E4    push        eax
 005B58E5    mov         eax,dword ptr [ebp-4]
 005B58E8    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 005B58EF    setne       dl
 005B58F2    mov         eax,dword ptr [ebp-4]
 005B58F5    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 005B58FC    setne       al
 005B58FF    xor         ecx,ecx
 005B5901    call        005B5360
 005B5906    pop         ecx
 005B5907    push        ebp
 005B5908    push        0
 005B590A    mov         eax,dword ptr [ebp-6C]
 005B590D    mov         dword ptr [ebp-0CC],eax
 005B5913    xor         eax,eax
 005B5915    mov         dword ptr [ebp-0C8],eax
 005B591B    mov         eax,dword ptr [ebp-68]
 005B591E    mov         dword ptr [ebp-0C4],eax
 005B5924    mov         eax,dword ptr [ebp-3C]
 005B5927    mov         dword ptr [ebp-0C0],eax
 005B592D    lea         eax,[ebp-0CC]
 005B5933    push        eax
 005B5934    push        3
 005B5936    push        0
 005B5938    mov         eax,dword ptr [ebp-4]
 005B593B    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B5941    push        eax
 005B5942    mov         eax,dword ptr [ebp-4]
 005B5945    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 005B594C    setne       dl
 005B594F    mov         eax,dword ptr [ebp-4]
 005B5952    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 005B5959    setne       al
 005B595C    mov         ecx,dword ptr [ebp-4]
 005B595F    mov         ecx,dword ptr [ecx+258]
 005B5965    call        005B5360
 005B596A    pop         ecx
 005B596B    push        ebp
 005B596C    mov         eax,dword ptr [ebp-4]
 005B596F    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 005B5975    push        eax
 005B5976    xor         eax,eax
 005B5978    mov         dword ptr [ebp-0CC],eax
 005B597E    mov         eax,dword ptr [ebp-3C]
 005B5981    mov         dword ptr [ebp-0C8],eax
 005B5987    mov         eax,dword ptr [ebp-6C]
 005B598A    mov         dword ptr [ebp-0C4],eax
 005B5990    mov         eax,dword ptr [ebp-38]
 005B5993    mov         dword ptr [ebp-0C0],eax
 005B5999    lea         eax,[ebp-0CC]
 005B599F    push        eax
 005B59A0    push        3
 005B59A2    push        0
 005B59A4    mov         eax,dword ptr [ebp-4]
 005B59A7    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B59AD    push        eax
 005B59AE    mov         eax,dword ptr [ebp-4]
 005B59B1    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 005B59B8    setne       dl
 005B59BB    mov         eax,dword ptr [ebp-4]
 005B59BE    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 005B59C5    setne       al
 005B59C8    xor         ecx,ecx
 005B59CA    call        005B5360
 005B59CF    pop         ecx
 005B59D0    push        ebp
 005B59D1    mov         eax,dword ptr [ebp-4]
 005B59D4    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 005B59DA    push        eax
 005B59DB    mov         eax,dword ptr [ebp-6C]
 005B59DE    mov         dword ptr [ebp-0CC],eax
 005B59E4    mov         eax,dword ptr [ebp-3C]
 005B59E7    mov         dword ptr [ebp-0C8],eax
 005B59ED    mov         eax,dword ptr [ebp-68]
 005B59F0    mov         dword ptr [ebp-0C4],eax
 005B59F6    mov         eax,dword ptr [ebp-38]
 005B59F9    mov         dword ptr [ebp-0C0],eax
 005B59FF    lea         eax,[ebp-0CC]
 005B5A05    push        eax
 005B5A06    push        3
 005B5A08    mov         eax,dword ptr [ebp-8C]
 005B5A0E    push        eax
 005B5A0F    mov         eax,dword ptr [ebp-4]
 005B5A12    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 005B5A15    push        eax
 005B5A16    mov         eax,dword ptr [ebp-4]
 005B5A19    test        byte ptr [eax+248],4;TCustomGrid.FOptions:TGridOptions
 005B5A20    setne       dl
 005B5A23    mov         eax,dword ptr [ebp-4]
 005B5A26    test        byte ptr [eax+248],8;TCustomGrid.FOptions:TGridOptions
 005B5A2D    setne       al
 005B5A30    mov         ecx,dword ptr [ebp-4]
 005B5A33    mov         ecx,dword ptr [ecx+258]
 005B5A39    call        005B5360
 005B5A3E    pop         ecx
 005B5A3F    mov         eax,dword ptr [ebp-10]
 005B5A42    call        StackFree
 005B5A47    mov         eax,dword ptr [ebp-8]
 005B5A4A    call        StackFree
 005B5A4F    lea         edx,[ebp-80]
 005B5A52    mov         eax,dword ptr [ebp-4]
 005B5A55    call        005B97A0
 005B5A5A    xor         eax,eax
 005B5A5C    mov         dword ptr [ebp-84],eax
 005B5A62    xor         eax,eax
 005B5A64    mov         dword ptr [ebp-88],eax
 005B5A6A    mov         eax,dword ptr [ebp-4]
 005B5A6D    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
>005B5A74    je          005B5A8A
 005B5A76    mov         dword ptr [ebp-84],4
 005B5A80    mov         dword ptr [ebp-88],1
 005B5A8A    mov         eax,dword ptr [ebp-4]
 005B5A8D    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
>005B5A94    je          005B5AA4
 005B5A96    or          dword ptr [ebp-84],8
 005B5A9D    or          dword ptr [ebp-88],2
 005B5AA4    push        ebp
 005B5AA5    push        0
 005B5AA7    mov         eax,dword ptr [ebp-6C]
 005B5AAA    push        eax
 005B5AAB    mov         eax,dword ptr [ebp-3C]
 005B5AAE    push        eax
 005B5AAF    mov         eax,dword ptr [ebp-4]
 005B5AB2    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B5AB8    push        eax
 005B5AB9    mov         al,[005B5CF8];0x4 gvar_005B5CF8
 005B5ABE    push        eax
 005B5ABF    xor         ecx,ecx
 005B5AC1    xor         edx,edx
 005B5AC3    xor         eax,eax
 005B5AC5    call        005B53F8
 005B5ACA    pop         ecx
 005B5ACB    push        ebp
 005B5ACC    push        0
 005B5ACE    mov         eax,dword ptr [ebp-68]
 005B5AD1    push        eax
 005B5AD2    mov         eax,dword ptr [ebp-3C]
 005B5AD5    push        eax
 005B5AD6    mov         eax,dword ptr [ebp-4]
 005B5AD9    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B5ADF    push        eax
 005B5AE0    mov         al,[005B5CF8];0x4 gvar_005B5CF8
 005B5AE5    push        eax
 005B5AE6    mov         eax,dword ptr [ebp-4]
 005B5AE9    mov         ecx,dword ptr [ebp-6C]
 005B5AEC    sub         ecx,dword ptr [eax+288]
 005B5AF2    mov         eax,dword ptr [ebp-4]
 005B5AF5    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 005B5AFB    xor         edx,edx
 005B5AFD    call        005B53F8
 005B5B02    pop         ecx
 005B5B03    push        ebp
 005B5B04    mov         eax,dword ptr [ebp-3C]
 005B5B07    push        eax
 005B5B08    mov         eax,dword ptr [ebp-6C]
 005B5B0B    push        eax
 005B5B0C    mov         eax,dword ptr [ebp-38]
 005B5B0F    push        eax
 005B5B10    mov         eax,dword ptr [ebp-4]
 005B5B13    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 005B5B19    push        eax
 005B5B1A    mov         al,[005B5CF8];0x4 gvar_005B5CF8
 005B5B1F    push        eax
 005B5B20    mov         eax,dword ptr [ebp-4]
 005B5B23    mov         edx,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 005B5B29    xor         ecx,ecx
 005B5B2B    xor         eax,eax
 005B5B2D    call        005B53F8
 005B5B32    pop         ecx
 005B5B33    push        ebp
 005B5B34    mov         eax,dword ptr [ebp-3C]
 005B5B37    push        eax
 005B5B38    mov         eax,dword ptr [ebp-68]
 005B5B3B    push        eax
 005B5B3C    mov         eax,dword ptr [ebp-38]
 005B5B3F    push        eax
 005B5B40    mov         eax,dword ptr [ebp-4]
 005B5B43    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 005B5B46    push        eax
 005B5B47    mov         al,[005B5CFC];0x0 gvar_005B5CFC
 005B5B4C    push        eax
 005B5B4D    mov         eax,dword ptr [ebp-4]
 005B5B50    mov         ecx,dword ptr [ebp-6C]
 005B5B53    sub         ecx,dword ptr [eax+288]
 005B5B59    mov         eax,dword ptr [ebp-4]
 005B5B5C    mov         edx,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 005B5B62    mov         eax,dword ptr [ebp-4]
 005B5B65    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 005B5B6B    call        005B53F8
 005B5B70    pop         ecx
 005B5B71    mov         eax,dword ptr [ebp-4]
 005B5B74    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>005B5B78    jne         005B5C3F
 005B5B7E    mov         eax,dword ptr [ebp-4]
 005B5B81    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>005B5B88    je          005B5C3F
 005B5B8E    mov         eax,dword ptr [ebp-4]
 005B5B91    cmp         byte ptr [eax+28C],0;TCustomGrid.FDefaultDrawing:Boolean
>005B5B98    je          005B5C3F
 005B5B9E    mov         eax,dword ptr [ebp-4]
 005B5BA1    mov         si,0FFB5
 005B5BA5    call        @CallDynaInst;TWinControl.sub_005FC040
 005B5BAA    test        al,al
>005B5BAC    je          005B5C3F
 005B5BB2    push        0
 005B5BB4    lea         edx,[ebp-0CC]
 005B5BBA    mov         eax,dword ptr [ebp-4]
 005B5BBD    call        005B97A0
 005B5BC2    lea         edx,[ebp-0CC]
 005B5BC8    lea         ecx,[ebp-0BC]
 005B5BCE    mov         eax,dword ptr [ebp-4]
 005B5BD1    call        005B6FFC
 005B5BD6    mov         eax,dword ptr [ebp-4]
 005B5BD9    mov         si,0FFC8
 005B5BDD    call        @CallDynaInst;TControl.sub_005F40CC
 005B5BE2    test        al,al
>005B5BE4    jne         005B5BFC
 005B5BE6    lea         edx,[ebp-0BC]
 005B5BEC    mov         eax,dword ptr [ebp-4]
 005B5BEF    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5BF5    call        005C113C
>005B5BFA    jmp         005B5C3F
 005B5BFC    lea         esi,[ebp-0BC]
 005B5C02    lea         edi,[ebp-0AC]
 005B5C08    movs        dword ptr [edi],dword ptr [esi]
 005B5C09    movs        dword ptr [edi],dword ptr [esi]
 005B5C0A    movs        dword ptr [edi],dword ptr [esi]
 005B5C0B    movs        dword ptr [edi],dword ptr [esi]
 005B5C0C    mov         eax,dword ptr [ebp-0B4]
 005B5C12    mov         dword ptr [ebp-0AC],eax
 005B5C18    mov         eax,dword ptr [ebp-0BC]
 005B5C1E    mov         dword ptr [ebp-0A4],eax
 005B5C24    lea         eax,[ebp-0AC]
 005B5C2A    push        eax
 005B5C2B    mov         eax,dword ptr [ebp-4]
 005B5C2E    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5C34    call        TCanvas.GetHandle
 005B5C39    push        eax
 005B5C3A    call        USER32.DrawFocusRect
 005B5C3F    mov         eax,dword ptr [ebp-68]
 005B5C42    cmp         eax,dword ptr [ebp-64]
>005B5C45    jge         005B5C8A
 005B5C47    mov         eax,dword ptr [ebp-4]
 005B5C4A    mov         edx,dword ptr [eax+70];TCustomGrid.FColor:TColor
 005B5C4D    mov         eax,dword ptr [ebp-4]
 005B5C50    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5C56    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005B5C59    call        TBrush.SetColor
 005B5C5E    mov         eax,dword ptr [ebp-38]
 005B5C61    push        eax
 005B5C62    lea         eax,[ebp-0CC]
 005B5C68    push        eax
 005B5C69    mov         ecx,dword ptr [ebp-64]
 005B5C6C    xor         edx,edx
 005B5C6E    mov         eax,dword ptr [ebp-68]
 005B5C71    call        Rect
 005B5C76    lea         edx,[ebp-0CC]
 005B5C7C    mov         eax,dword ptr [ebp-4]
 005B5C7F    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5C85    call        TCanvas.FillRect
 005B5C8A    mov         eax,dword ptr [ebp-38]
 005B5C8D    cmp         eax,dword ptr [ebp-34]
>005B5C90    jge         005B5CD5
 005B5C92    mov         eax,dword ptr [ebp-4]
 005B5C95    mov         edx,dword ptr [eax+70];TCustomGrid.FColor:TColor
 005B5C98    mov         eax,dword ptr [ebp-4]
 005B5C9B    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5CA1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005B5CA4    call        TBrush.SetColor
 005B5CA9    mov         eax,dword ptr [ebp-34]
 005B5CAC    push        eax
 005B5CAD    lea         eax,[ebp-0CC]
 005B5CB3    push        eax
 005B5CB4    mov         ecx,dword ptr [ebp-64]
 005B5CB7    mov         edx,dword ptr [ebp-38]
 005B5CBA    xor         eax,eax
 005B5CBC    call        Rect
 005B5CC1    lea         edx,[ebp-0CC]
 005B5CC7    mov         eax,dword ptr [ebp-4]
 005B5CCA    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B5CD0    call        TCanvas.FillRect
 005B5CD5    mov         eax,dword ptr [ebp-4]
 005B5CD8    mov         si,0FFC8
 005B5CDC    call        @CallDynaInst;TControl.sub_005F40CC
 005B5CE1    test        al,al
>005B5CE3    je          005B5CEF
 005B5CE5    xor         edx,edx
 005B5CE7    mov         eax,dword ptr [ebp-4]
 005B5CEA    call        005B64D4
 005B5CEF    pop         edi
 005B5CF0    pop         esi
 005B5CF1    mov         esp,ebp
 005B5CF3    pop         ebp
 005B5CF4    ret
*}
end;

//005B5D00
{*function sub_005B5D00(?:?; ?:?):?;
begin
 005B5D00    push        ebp
 005B5D01    mov         ebp,esp
 005B5D03    add         esp,0FFFFFFE0
 005B5D06    push        ebx
 005B5D07    mov         dword ptr [ebp-8],edx
 005B5D0A    mov         dword ptr [ebp-4],eax
 005B5D0D    mov         eax,dword ptr [ebp-4]
 005B5D10    mov         eax,dword ptr [eax+4]
 005B5D13    cmp         eax,dword ptr [ebp-8]
>005B5D16    jle         005B5D2E
 005B5D18    xor         eax,eax
 005B5D1A    mov         dword ptr [ebp-14],eax
 005B5D1D    mov         eax,dword ptr [ebp-4]
 005B5D20    mov         eax,dword ptr [eax+18]
 005B5D23    dec         eax
 005B5D24    mov         dword ptr [ebp-18],eax
 005B5D27    xor         eax,eax
 005B5D29    mov         dword ptr [ebp-1C],eax
>005B5D2C    jmp         005B5D4A
 005B5D2E    mov         eax,dword ptr [ebp-4]
 005B5D31    mov         eax,dword ptr [eax+1C]
 005B5D34    mov         dword ptr [ebp-14],eax
 005B5D37    mov         eax,dword ptr [ebp-4]
 005B5D3A    mov         eax,dword ptr [eax+20]
 005B5D3D    dec         eax
 005B5D3E    mov         dword ptr [ebp-18],eax
 005B5D41    mov         eax,dword ptr [ebp-4]
 005B5D44    mov         eax,dword ptr [eax+4]
 005B5D47    mov         dword ptr [ebp-1C],eax
 005B5D4A    mov         dword ptr [ebp-0C],0FFFFFFFF
 005B5D51    mov         eax,dword ptr [ebp-14]
 005B5D54    mov         edx,dword ptr [ebp-18]
 005B5D57    sub         edx,eax
>005B5D59    jl          005B5D8E
 005B5D5B    inc         edx
 005B5D5C    mov         dword ptr [ebp-20],edx
 005B5D5F    mov         dword ptr [ebp-10],eax
 005B5D62    mov         ebx,dword ptr [ebp-4]
 005B5D65    mov         edx,dword ptr [ebp-10]
 005B5D68    mov         eax,dword ptr [ebx+2C]
 005B5D6B    call        dword ptr [ebx+28]
 005B5D6E    mov         edx,dword ptr [ebp-4]
 005B5D71    add         eax,dword ptr [edx]
 005B5D73    add         dword ptr [ebp-1C],eax
 005B5D76    mov         eax,dword ptr [ebp-8]
 005B5D79    cmp         eax,dword ptr [ebp-1C]
>005B5D7C    jge         005B5D86
 005B5D7E    mov         eax,dword ptr [ebp-10]
 005B5D81    mov         dword ptr [ebp-0C],eax
>005B5D84    jmp         005B5D8E
 005B5D86    inc         dword ptr [ebp-10]
 005B5D89    dec         dword ptr [ebp-20]
>005B5D8C    jne         005B5D62
 005B5D8E    mov         eax,dword ptr [ebp-0C]
 005B5D91    pop         ebx
 005B5D92    mov         esp,ebp
 005B5D94    pop         ebp
 005B5D95    ret
end;*}

//005B5D98
{*function sub_005B5D98(?:?; ?:?; ?:?):?;
begin
 005B5D98    push        ebp
 005B5D99    mov         ebp,esp
 005B5D9B    add         esp,0FFFFFFE0
 005B5D9E    push        ebx
 005B5D9F    mov         dword ptr [ebp-8],edx
 005B5DA2    mov         dword ptr [ebp-4],eax
 005B5DA5    mov         eax,dword ptr [ebp+8]
 005B5DA8    mov         eax,dword ptr [eax-4]
 005B5DAB    call        TControl.GetClientWidth
 005B5DB0    sub         eax,dword ptr [ebp-8]
 005B5DB3    mov         dword ptr [ebp-8],eax
 005B5DB6    mov         eax,dword ptr [ebp-4]
 005B5DB9    mov         eax,dword ptr [eax+4]
 005B5DBC    cmp         eax,dword ptr [ebp-8]
>005B5DBF    jle         005B5DE0
 005B5DC1    xor         eax,eax
 005B5DC3    mov         dword ptr [ebp-14],eax
 005B5DC6    mov         eax,dword ptr [ebp-4]
 005B5DC9    mov         eax,dword ptr [eax+18]
 005B5DCC    dec         eax
 005B5DCD    mov         dword ptr [ebp-18],eax
 005B5DD0    mov         eax,dword ptr [ebp+8]
 005B5DD3    mov         eax,dword ptr [eax-4]
 005B5DD6    call        TControl.GetClientWidth
 005B5DDB    mov         dword ptr [ebp-1C],eax
>005B5DDE    jmp         005B5DFC
 005B5DE0    mov         eax,dword ptr [ebp-4]
 005B5DE3    mov         eax,dword ptr [eax+1C]
 005B5DE6    mov         dword ptr [ebp-14],eax
 005B5DE9    mov         eax,dword ptr [ebp-4]
 005B5DEC    mov         eax,dword ptr [eax+20]
 005B5DEF    dec         eax
 005B5DF0    mov         dword ptr [ebp-18],eax
 005B5DF3    mov         eax,dword ptr [ebp-4]
 005B5DF6    mov         eax,dword ptr [eax+4]
 005B5DF9    mov         dword ptr [ebp-1C],eax
 005B5DFC    mov         dword ptr [ebp-0C],0FFFFFFFF
 005B5E03    mov         eax,dword ptr [ebp-14]
 005B5E06    mov         edx,dword ptr [ebp-18]
 005B5E09    sub         edx,eax
>005B5E0B    jl          005B5E40
 005B5E0D    inc         edx
 005B5E0E    mov         dword ptr [ebp-20],edx
 005B5E11    mov         dword ptr [ebp-10],eax
 005B5E14    mov         ebx,dword ptr [ebp-4]
 005B5E17    mov         edx,dword ptr [ebp-10]
 005B5E1A    mov         eax,dword ptr [ebx+2C]
 005B5E1D    call        dword ptr [ebx+28]
 005B5E20    mov         edx,dword ptr [ebp-4]
 005B5E23    add         eax,dword ptr [edx]
 005B5E25    add         dword ptr [ebp-1C],eax
 005B5E28    mov         eax,dword ptr [ebp-8]
 005B5E2B    cmp         eax,dword ptr [ebp-1C]
>005B5E2E    jge         005B5E38
 005B5E30    mov         eax,dword ptr [ebp-10]
 005B5E33    mov         dword ptr [ebp-0C],eax
>005B5E36    jmp         005B5E40
 005B5E38    inc         dword ptr [ebp-10]
 005B5E3B    dec         dword ptr [ebp-20]
>005B5E3E    jne         005B5E14
 005B5E40    mov         eax,dword ptr [ebp-0C]
 005B5E43    pop         ebx
 005B5E44    mov         esp,ebp
 005B5E46    pop         ebp
 005B5E47    ret
end;*}

//005B5E48
{*procedure sub_005B5E48(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);
begin
 005B5E48    push        ebp
 005B5E49    mov         ebp,esp
 005B5E4B    add         esp,0FFFFFFF4
 005B5E4E    push        esi
 005B5E4F    mov         dword ptr [ebp-0C],ecx
 005B5E52    mov         dword ptr [ebp-8],edx
 005B5E55    mov         dword ptr [ebp-4],eax
 005B5E58    mov         eax,dword ptr [ebp-4]
 005B5E5B    mov         si,0FFC8
 005B5E5F    call        @CallDynaInst
 005B5E64    test        al,al
>005B5E66    jne         005B5E7C
 005B5E68    push        ebp
 005B5E69    mov         eax,dword ptr [ebp+0C]
 005B5E6C    mov         edx,dword ptr [ebp-8]
 005B5E6F    call        005B5D00
 005B5E74    pop         ecx
 005B5E75    mov         edx,dword ptr [ebp+8]
 005B5E78    mov         dword ptr [edx],eax
>005B5E7A    jmp         005B5E8E
 005B5E7C    push        ebp
 005B5E7D    mov         eax,dword ptr [ebp+0C]
 005B5E80    mov         edx,dword ptr [ebp-8]
 005B5E83    call        005B5D98
 005B5E88    pop         ecx
 005B5E89    mov         edx,dword ptr [ebp+8]
 005B5E8C    mov         dword ptr [edx],eax
 005B5E8E    push        ebp
 005B5E8F    mov         eax,dword ptr [ebp+0C]
 005B5E92    add         eax,30
 005B5E95    mov         edx,dword ptr [ebp-0C]
 005B5E98    call        005B5D00
 005B5E9D    pop         ecx
 005B5E9E    mov         edx,dword ptr [ebp+8]
 005B5EA1    mov         dword ptr [edx+4],eax
 005B5EA4    pop         esi
 005B5EA5    mov         esp,ebp
 005B5EA7    pop         ebp
 005B5EA8    ret         8
end;*}

//005B5EAC
procedure TCustomGrid.CalcDrawInfo(var DrawInfo:TGridDrawInfo);
begin
{*
 005B5EAC    push        ebp
 005B5EAD    mov         ebp,esp
 005B5EAF    add         esp,0FFFFFFF8
 005B5EB2    mov         dword ptr [ebp-8],edx
 005B5EB5    mov         dword ptr [ebp-4],eax
 005B5EB8    mov         eax,dword ptr [ebp-4]
 005B5EBB    call        TControl.GetClientHeight
 005B5EC0    push        eax
 005B5EC1    mov         eax,dword ptr [ebp-4]
 005B5EC4    call        TControl.GetClientWidth
 005B5EC9    mov         ecx,eax
 005B5ECB    mov         edx,dword ptr [ebp-8]
 005B5ECE    mov         eax,dword ptr [ebp-4]
 005B5ED1    call        TCustomGrid.CalcDrawInfoXY
 005B5ED6    pop         ecx
 005B5ED7    pop         ecx
 005B5ED8    pop         ebp
 005B5ED9    ret
*}
end;

//005B5EDC
{*procedure sub_005B5EDC(?:?; ?:?);
begin
 005B5EDC    push        ebp
 005B5EDD    mov         ebp,esp
 005B5EDF    add         esp,0FFFFFFF0
 005B5EE2    push        ebx
 005B5EE3    mov         dword ptr [ebp-8],edx
 005B5EE6    mov         dword ptr [ebp-4],eax
 005B5EE9    mov         eax,dword ptr [ebp-4]
 005B5EEC    mov         edx,dword ptr [ebp-8]
 005B5EEF    mov         dword ptr [eax+0C],edx
 005B5EF2    mov         eax,dword ptr [ebp-4]
 005B5EF5    mov         eax,dword ptr [eax+4]
 005B5EF8    mov         edx,dword ptr [ebp-4]
 005B5EFB    mov         dword ptr [edx+8],eax
 005B5EFE    mov         eax,dword ptr [ebp-4]
 005B5F01    mov         eax,dword ptr [eax+4]
 005B5F04    mov         edx,dword ptr [ebp-4]
 005B5F07    mov         dword ptr [edx+14],eax
 005B5F0A    mov         eax,dword ptr [ebp-4]
 005B5F0D    mov         eax,dword ptr [eax+1C]
 005B5F10    mov         edx,dword ptr [ebp-4]
 005B5F13    mov         dword ptr [edx+10],eax
 005B5F16    mov         eax,dword ptr [ebp-4]
 005B5F19    mov         eax,dword ptr [eax+1C]
 005B5F1C    mov         edx,dword ptr [ebp-4]
 005B5F1F    mov         edx,dword ptr [edx+20]
 005B5F22    dec         edx
 005B5F23    sub         edx,eax
>005B5F25    jl          005B5F83
 005B5F27    inc         edx
 005B5F28    mov         dword ptr [ebp-10],edx
 005B5F2B    mov         dword ptr [ebp-0C],eax
 005B5F2E    mov         ebx,dword ptr [ebp-4]
 005B5F31    mov         edx,dword ptr [ebp-0C]
 005B5F34    mov         eax,dword ptr [ebx+2C]
 005B5F37    call        dword ptr [ebx+28]
 005B5F3A    mov         edx,dword ptr [ebp-4]
 005B5F3D    add         eax,dword ptr [edx]
 005B5F3F    mov         edx,dword ptr [ebp-4]
 005B5F42    add         dword ptr [edx+8],eax
 005B5F45    mov         eax,dword ptr [ebp-4]
 005B5F48    mov         eax,dword ptr [eax+0C]
 005B5F4B    mov         edx,dword ptr [ebp-4]
 005B5F4E    add         eax,dword ptr [edx]
 005B5F50    mov         edx,dword ptr [ebp-4]
 005B5F53    cmp         eax,dword ptr [edx+8]
>005B5F56    jge         005B5F66
 005B5F58    mov         eax,dword ptr [ebp-4]
 005B5F5B    mov         eax,dword ptr [eax+0C]
 005B5F5E    mov         edx,dword ptr [ebp-4]
 005B5F61    mov         dword ptr [edx+8],eax
>005B5F64    jmp         005B5F83
 005B5F66    mov         eax,dword ptr [ebp-4]
 005B5F69    mov         edx,dword ptr [ebp-0C]
 005B5F6C    mov         dword ptr [eax+10],edx
 005B5F6F    mov         eax,dword ptr [ebp-4]
 005B5F72    mov         eax,dword ptr [eax+8]
 005B5F75    mov         edx,dword ptr [ebp-4]
 005B5F78    mov         dword ptr [edx+14],eax
 005B5F7B    inc         dword ptr [ebp-0C]
 005B5F7E    dec         dword ptr [ebp-10]
>005B5F81    jne         005B5F2E
 005B5F83    pop         ebx
 005B5F84    mov         esp,ebp
 005B5F86    pop         ebp
 005B5F87    ret
end;*}

//005B5F88
procedure TCustomGrid.CalcDrawInfoXY(var DrawInfo:TGridDrawInfo; UseWidth:Integer; UseHeight:Integer);
begin
{*
 005B5F88    push        ebp
 005B5F89    mov         ebp,esp
 005B5F8B    add         esp,0FFFFFFF4
 005B5F8E    mov         dword ptr [ebp-0C],ecx
 005B5F91    mov         dword ptr [ebp-8],edx
 005B5F94    mov         dword ptr [ebp-4],eax
 005B5F97    mov         edx,dword ptr [ebp-8]
 005B5F9A    mov         eax,dword ptr [ebp-4]
 005B5F9D    call        005B607C
 005B5FA2    push        ebp
 005B5FA3    mov         eax,dword ptr [ebp-8]
 005B5FA6    mov         edx,dword ptr [ebp-0C]
 005B5FA9    call        005B5EDC
 005B5FAE    pop         ecx
 005B5FAF    push        ebp
 005B5FB0    mov         eax,dword ptr [ebp-8]
 005B5FB3    add         eax,30
 005B5FB6    mov         edx,dword ptr [ebp+8]
 005B5FB9    call        005B5EDC
 005B5FBE    pop         ecx
 005B5FBF    mov         esp,ebp
 005B5FC1    pop         ebp
 005B5FC2    ret         4
*}
end;

//005B5FC8
{*procedure sub_005B5FC8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B5FC8    push        ebp
 005B5FC9    mov         ebp,esp
 005B5FCB    add         esp,0FFFFFFEC
 005B5FCE    mov         dword ptr [ebp-0C],ecx
 005B5FD1    mov         word ptr [ebp-6],dx
 005B5FD5    mov         dword ptr [ebp-4],eax
 005B5FD8    mov         eax,dword ptr [ebp+18]
 005B5FDB    mov         eax,dword ptr [eax-4]
 005B5FDE    mov         ax,word ptr [eax+248]
 005B5FE5    and         ax,word ptr [ebp-6]
 005B5FE9    mov         dx,word ptr ds:[5B6078];0x0 gvar_005B6078
 005B5FF0    cmp         dx,ax
>005B5FF3    jne         005B5FFE
 005B5FF5    mov         eax,dword ptr [ebp-4]
 005B5FF8    xor         edx,edx
 005B5FFA    mov         dword ptr [eax],edx
>005B5FFC    jmp         005B600F
 005B5FFE    mov         eax,dword ptr [ebp+18]
 005B6001    mov         eax,dword ptr [eax-4]
 005B6004    mov         eax,dword ptr [eax+244]
 005B600A    mov         edx,dword ptr [ebp-4]
 005B600D    mov         dword ptr [edx],eax
 005B600F    mov         eax,dword ptr [ebp-4]
 005B6012    xor         edx,edx
 005B6014    mov         dword ptr [eax+4],edx
 005B6017    mov         eax,dword ptr [ebp-0C]
 005B601A    dec         eax
 005B601B    test        eax,eax
>005B601D    jl          005B6046
 005B601F    inc         eax
 005B6020    mov         dword ptr [ebp-14],eax
 005B6023    mov         dword ptr [ebp-10],0
 005B602A    mov         edx,dword ptr [ebp-10]
 005B602D    mov         eax,dword ptr [ebp+0C]
 005B6030    call        dword ptr [ebp+8]
 005B6033    mov         edx,dword ptr [ebp-4]
 005B6036    add         eax,dword ptr [edx]
 005B6038    mov         edx,dword ptr [ebp-4]
 005B603B    add         dword ptr [edx+4],eax
 005B603E    inc         dword ptr [ebp-10]
 005B6041    dec         dword ptr [ebp-14]
>005B6044    jne         005B602A
 005B6046    mov         eax,dword ptr [ebp-4]
 005B6049    mov         edx,dword ptr [ebp-0C]
 005B604C    mov         dword ptr [eax+18],edx
 005B604F    mov         eax,dword ptr [ebp-4]
 005B6052    mov         edx,dword ptr [ebp+14]
 005B6055    mov         dword ptr [eax+1C],edx
 005B6058    mov         eax,dword ptr [ebp-4]
 005B605B    mov         edx,dword ptr [ebp+10]
 005B605E    mov         dword ptr [eax+20],edx
 005B6061    mov         eax,dword ptr [ebp-4]
 005B6064    mov         edx,dword ptr [ebp+8]
 005B6067    mov         dword ptr [eax+28],edx
 005B606A    mov         edx,dword ptr [ebp+0C]
 005B606D    mov         dword ptr [eax+2C],edx
 005B6070    mov         esp,ebp
 005B6072    pop         ebp
 005B6073    ret         10
end;*}

//005B607C
{*procedure sub_005B607C(?:?; ?:?);
begin
 005B607C    push        ebp
 005B607D    mov         ebp,esp
 005B607F    add         esp,0FFFFFFF8
 005B6082    mov         dword ptr [ebp-8],edx
 005B6085    mov         dword ptr [ebp-4],eax
 005B6088    push        ebp
 005B6089    mov         eax,dword ptr [ebp-4]
 005B608C    mov         eax,dword ptr [eax+258]
 005B6092    push        eax
 005B6093    mov         eax,dword ptr [ebp-4]
 005B6096    mov         eax,dword ptr [eax+21C]
 005B609C    push        eax
 005B609D    mov         eax,dword ptr [ebp-4]
 005B60A0    push        eax
 005B60A1    push        5B9700;TCustomGrid.GetColWidths:Integer
 005B60A6    mov         eax,dword ptr [ebp-4]
 005B60A9    mov         ecx,dword ptr [eax+238]
 005B60AF    mov         eax,dword ptr [ebp-8]
 005B60B2    mov         dx,word ptr ds:[5B6100];0x5 gvar_005B6100
 005B60B9    call        005B5FC8
 005B60BE    pop         ecx
 005B60BF    push        ebp
 005B60C0    mov         eax,dword ptr [ebp-4]
 005B60C3    mov         eax,dword ptr [eax+25C]
 005B60C9    push        eax
 005B60CA    mov         eax,dword ptr [ebp-4]
 005B60CD    mov         eax,dword ptr [eax+24C]
 005B60D3    push        eax
 005B60D4    mov         eax,dword ptr [ebp-4]
 005B60D7    push        eax
 005B60D8    push        5B9750;sub_005B9750
 005B60DD    mov         eax,dword ptr [ebp-4]
 005B60E0    mov         ecx,dword ptr [eax+23C]
 005B60E6    mov         eax,dword ptr [ebp-8]
 005B60E9    add         eax,30
 005B60EC    mov         dx,word ptr ds:[5B6104];0xA gvar_005B6104
 005B60F3    call        005B5FC8
 005B60F8    pop         ecx
 005B60F9    pop         ecx
 005B60FA    pop         ecx
 005B60FB    pop         ebp
 005B60FC    ret
end;*}

//005B6108
{*function sub_005B6108(?:?; ?:?):?;
begin
 005B6108    push        ebp
 005B6109    mov         ebp,esp
 005B610B    add         esp,0FFFFFFE4
 005B610E    push        ebx
 005B610F    mov         dword ptr [ebp-8],edx
 005B6112    mov         dword ptr [ebp-4],eax
 005B6115    mov         eax,dword ptr [ebp-8]
 005B6118    mov         dword ptr [ebp-0C],eax
 005B611B    mov         eax,dword ptr [ebp-4]
 005B611E    mov         eax,dword ptr [eax+0C]
 005B6121    mov         edx,dword ptr [ebp-4]
 005B6124    add         eax,dword ptr [edx]
 005B6126    mov         dword ptr [ebp-10],eax
 005B6129    mov         eax,dword ptr [ebp-8]
 005B612C    mov         edx,dword ptr [ebp-4]
 005B612F    mov         edx,dword ptr [edx+18]
 005B6132    sub         edx,eax
>005B6134    jg          005B6199
 005B6136    dec         edx
 005B6137    mov         dword ptr [ebp-1C],edx
 005B613A    mov         dword ptr [ebp-14],eax
 005B613D    mov         ebx,dword ptr [ebp-4]
 005B6140    mov         edx,dword ptr [ebp-14]
 005B6143    mov         eax,dword ptr [ebx+2C]
 005B6146    call        dword ptr [ebx+28]
 005B6149    mov         dword ptr [ebp-18],eax
 005B614C    cmp         dword ptr [ebp-18],0
>005B6150    jle         005B6191
 005B6152    mov         eax,dword ptr [ebp-18]
 005B6155    sub         dword ptr [ebp-10],eax
 005B6158    mov         eax,dword ptr [ebp-4]
 005B615B    mov         eax,dword ptr [eax]
 005B615D    sub         dword ptr [ebp-10],eax
 005B6160    mov         eax,dword ptr [ebp-4]
 005B6163    mov         eax,dword ptr [eax+4]
 005B6166    cmp         eax,dword ptr [ebp-10]
>005B6169    jle         005B618B
 005B616B    mov         eax,dword ptr [ebp-0C]
 005B616E    cmp         eax,dword ptr [ebp-8]
>005B6171    jne         005B6199
 005B6173    mov         ebx,dword ptr [ebp-4]
 005B6176    mov         edx,dword ptr [ebp-8]
 005B6179    mov         eax,dword ptr [ebx+2C]
 005B617C    call        dword ptr [ebx+28]
 005B617F    test        eax,eax
>005B6181    jg          005B6199
 005B6183    mov         eax,dword ptr [ebp-14]
 005B6186    mov         dword ptr [ebp-0C],eax
>005B6189    jmp         005B6199
 005B618B    mov         eax,dword ptr [ebp-14]
 005B618E    mov         dword ptr [ebp-0C],eax
 005B6191    dec         dword ptr [ebp-14]
 005B6194    inc         dword ptr [ebp-1C]
>005B6197    jne         005B613D
 005B6199    mov         eax,dword ptr [ebp-0C]
 005B619C    pop         ebx
 005B619D    mov         esp,ebp
 005B619F    pop         ebp
 005B61A0    ret
end;*}

//005B61A4
function TCustomGrid.CalcMaxTopLeft(const Coord:TGridCoord; const DrawInfo:TGridDrawInfo):TGridCoord;
begin
{*
 005B61A4    push        ebp
 005B61A5    mov         ebp,esp
 005B61A7    add         esp,0FFFFFFF4
 005B61AA    mov         dword ptr [ebp-0C],ecx
 005B61AD    mov         dword ptr [ebp-8],edx
 005B61B0    mov         dword ptr [ebp-4],eax
 005B61B3    push        ebp
 005B61B4    mov         edx,dword ptr [ebp-8]
 005B61B7    mov         edx,dword ptr [edx]
 005B61B9    mov         eax,dword ptr [ebp-0C]
 005B61BC    call        005B6108
 005B61C1    pop         ecx
 005B61C2    mov         edx,dword ptr [ebp+8]
 005B61C5    mov         dword ptr [edx],eax
 005B61C7    push        ebp
 005B61C8    mov         edx,dword ptr [ebp-8]
 005B61CB    mov         edx,dword ptr [edx+4]
 005B61CE    mov         eax,dword ptr [ebp-0C]
 005B61D1    add         eax,30
 005B61D4    call        005B6108
 005B61D9    pop         ecx
 005B61DA    mov         edx,dword ptr [ebp+8]
 005B61DD    mov         dword ptr [edx+4],eax
 005B61E0    mov         esp,ebp
 005B61E2    pop         ebp
 005B61E3    ret         4
*}
end;

//005B61E8
{*procedure sub_005B61E8(?:?; ?:?; ?:?; ?:?);
begin
 005B61E8    push        ebp
 005B61E9    mov         ebp,esp
 005B61EB    add         esp,0FFFFFFE0
 005B61EE    push        ebx
 005B61EF    push        esi
 005B61F0    mov         byte ptr [ebp-9],cl
 005B61F3    mov         dword ptr [ebp-8],edx
 005B61F6    mov         dword ptr [ebp-4],eax
 005B61F9    cmp         byte ptr [ebp-9],3
>005B61FD    jne         005B6223
 005B61FF    mov         eax,dword ptr [ebp+8]
 005B6202    mov         eax,dword ptr [eax-4]
 005B6205    mov         si,0FFC8
 005B6209    call        @CallDynaInst
 005B620E    test        al,al
>005B6210    je          005B6223
 005B6212    mov         eax,dword ptr [ebp+8]
 005B6215    mov         eax,dword ptr [eax-4]
 005B6218    call        TControl.GetClientWidth
 005B621D    sub         eax,dword ptr [ebp-8]
 005B6220    mov         dword ptr [ebp-8],eax
 005B6223    mov         eax,dword ptr [ebp-4]
 005B6226    mov         eax,dword ptr [eax+4]
 005B6229    mov         dword ptr [ebp-14],eax
 005B622C    mov         eax,dword ptr [ebp-4]
 005B622F    mov         eax,dword ptr [eax]
 005B6231    mov         dword ptr [ebp-1C],eax
 005B6234    xor         eax,eax
 005B6236    mov         dword ptr [ebp-18],eax
 005B6239    cmp         dword ptr [ebp-1C],7
>005B623D    jge         005B6253
 005B623F    mov         dword ptr [ebp-1C],7
 005B6246    mov         eax,dword ptr [ebp-4]
 005B6249    mov         edx,dword ptr [ebp-1C]
 005B624C    sub         edx,dword ptr [eax]
 005B624E    shr         edx,1
 005B6250    mov         dword ptr [ebp-18],edx
 005B6253    mov         eax,dword ptr [ebp-4]
 005B6256    mov         eax,dword ptr [eax+1C]
 005B6259    mov         edx,dword ptr [ebp-4]
 005B625C    mov         edx,dword ptr [edx+20]
 005B625F    dec         edx
 005B6260    sub         edx,eax
>005B6262    jl          005B62DF
 005B6264    inc         edx
 005B6265    mov         dword ptr [ebp-20],edx
 005B6268    mov         dword ptr [ebp-10],eax
 005B626B    mov         ebx,dword ptr [ebp-4]
 005B626E    mov         edx,dword ptr [ebp-10]
 005B6271    mov         eax,dword ptr [ebx+2C]
 005B6274    call        dword ptr [ebx+28]
 005B6277    add         dword ptr [ebp-14],eax
 005B627A    mov         eax,dword ptr [ebp-4]
 005B627D    mov         eax,dword ptr [eax+8]
 005B6280    cmp         eax,dword ptr [ebp-14]
>005B6283    jl          005B62DF
 005B6285    mov         eax,dword ptr [ebp-14]
 005B6288    sub         eax,dword ptr [ebp-18]
 005B628B    cmp         eax,dword ptr [ebp-8]
>005B628E    jg          005B62CF
 005B6290    mov         eax,dword ptr [ebp-14]
 005B6293    sub         eax,dword ptr [ebp-18]
 005B6296    add         eax,dword ptr [ebp-1C]
 005B6299    cmp         eax,dword ptr [ebp-8]
>005B629C    jl          005B62CF
 005B629E    mov         eax,dword ptr [ebp+8]
 005B62A1    mov         eax,dword ptr [eax+18]
 005B62A4    mov         dl,byte ptr [ebp-9]
 005B62A7    mov         byte ptr [eax],dl
 005B62A9    mov         eax,dword ptr [ebp+8]
 005B62AC    mov         eax,dword ptr [eax+10]
 005B62AF    mov         edx,dword ptr [ebp-14]
 005B62B2    mov         dword ptr [eax],edx
 005B62B4    mov         eax,dword ptr [ebp-14]
 005B62B7    sub         eax,dword ptr [ebp-8]
 005B62BA    mov         edx,dword ptr [ebp+8]
 005B62BD    mov         edx,dword ptr [edx+0C]
 005B62C0    mov         dword ptr [edx],eax
 005B62C2    mov         eax,dword ptr [ebp+8]
 005B62C5    mov         eax,dword ptr [eax+14]
 005B62C8    mov         edx,dword ptr [ebp-10]
 005B62CB    mov         dword ptr [eax],edx
>005B62CD    jmp         005B633F
 005B62CF    mov         eax,dword ptr [ebp-4]
 005B62D2    mov         eax,dword ptr [eax]
 005B62D4    add         dword ptr [ebp-14],eax
 005B62D7    inc         dword ptr [ebp-10]
 005B62DA    dec         dword ptr [ebp-20]
>005B62DD    jne         005B626B
 005B62DF    mov         eax,dword ptr [ebp-4]
 005B62E2    mov         eax,dword ptr [eax+8]
 005B62E5    mov         edx,dword ptr [ebp-4]
 005B62E8    cmp         eax,dword ptr [edx+0C]
>005B62EB    jne         005B633F
 005B62ED    mov         eax,dword ptr [ebp-4]
 005B62F0    mov         eax,dword ptr [eax+0C]
 005B62F3    sub         eax,dword ptr [ebp-18]
 005B62F6    cmp         eax,dword ptr [ebp-8]
>005B62F9    jg          005B633F
 005B62FB    mov         eax,dword ptr [ebp-4]
 005B62FE    mov         eax,dword ptr [eax+0C]
 005B6301    cmp         eax,dword ptr [ebp-8]
>005B6304    jl          005B633F
 005B6306    mov         eax,dword ptr [ebp+8]
 005B6309    mov         eax,dword ptr [eax+18]
 005B630C    mov         dl,byte ptr [ebp-9]
 005B630F    mov         byte ptr [eax],dl
 005B6311    mov         eax,dword ptr [ebp-4]
 005B6314    mov         eax,dword ptr [eax+0C]
 005B6317    mov         edx,dword ptr [ebp+8]
 005B631A    mov         edx,dword ptr [edx+10]
 005B631D    mov         dword ptr [edx],eax
 005B631F    mov         eax,dword ptr [ebp-4]
 005B6322    mov         eax,dword ptr [eax+0C]
 005B6325    sub         eax,dword ptr [ebp-8]
 005B6328    mov         edx,dword ptr [ebp+8]
 005B632B    mov         edx,dword ptr [edx+0C]
 005B632E    mov         dword ptr [edx],eax
 005B6330    mov         eax,dword ptr [ebp-4]
 005B6333    mov         eax,dword ptr [eax+10]
 005B6336    inc         eax
 005B6337    mov         edx,dword ptr [ebp+8]
 005B633A    mov         edx,dword ptr [edx+14]
 005B633D    mov         dword ptr [edx],eax
 005B633F    pop         esi
 005B6340    pop         ebx
 005B6341    mov         esp,ebp
 005B6343    pop         ebp
 005B6344    ret
end;*}

//005B6348
{*function sub_005B6348(?:?):?;
begin
 005B6348    push        ebp
 005B6349    mov         ebp,esp
 005B634B    push        ecx
 005B634C    push        esi
 005B634D    mov         eax,dword ptr [ebp+8]
 005B6350    mov         eax,dword ptr [eax-4]
 005B6353    mov         si,0FFC8
 005B6357    call        @CallDynaInst
 005B635C    test        al,al
>005B635E    jne         005B6375
 005B6360    mov         eax,dword ptr [ebp+8]
 005B6363    mov         eax,dword ptr [eax-8]
 005B6366    mov         edx,dword ptr [ebp+8]
 005B6369    mov         edx,dword ptr [edx+8]
 005B636C    cmp         eax,dword ptr [edx+4]
 005B636F    setg        byte ptr [ebp-1]
>005B6373    jmp         005B6393
 005B6375    mov         eax,dword ptr [ebp+8]
 005B6378    mov         eax,dword ptr [eax-4]
 005B637B    call        TControl.GetClientWidth
 005B6380    mov         edx,dword ptr [ebp+8]
 005B6383    mov         edx,dword ptr [edx+8]
 005B6386    sub         eax,dword ptr [edx+4]
 005B6389    mov         edx,dword ptr [ebp+8]
 005B638C    cmp         eax,dword ptr [edx-8]
 005B638F    setg        byte ptr [ebp-1]
 005B6393    mov         al,byte ptr [ebp-1]
 005B6396    pop         esi
 005B6397    pop         ecx
 005B6398    pop         ebp
 005B6399    ret
end;*}

//005B639C
{*function sub_005B639C(?:?):?;
begin
 005B639C    push        ebp
 005B639D    mov         ebp,esp
 005B639F    push        ecx
 005B63A0    push        esi
 005B63A1    mov         eax,dword ptr [ebp+8]
 005B63A4    mov         eax,dword ptr [eax-4]
 005B63A7    mov         si,0FFC8
 005B63AB    call        @CallDynaInst
 005B63B0    test        al,al
>005B63B2    jne         005B63C9
 005B63B4    mov         eax,dword ptr [ebp+8]
 005B63B7    mov         eax,dword ptr [eax-8]
 005B63BA    mov         edx,dword ptr [ebp+8]
 005B63BD    mov         edx,dword ptr [edx+8]
 005B63C0    cmp         eax,dword ptr [edx+4]
 005B63C3    setge       byte ptr [ebp-1]
>005B63C7    jmp         005B63E7
 005B63C9    mov         eax,dword ptr [ebp+8]
 005B63CC    mov         eax,dword ptr [eax-4]
 005B63CF    call        TControl.GetClientWidth
 005B63D4    mov         edx,dword ptr [ebp+8]
 005B63D7    mov         edx,dword ptr [edx+8]
 005B63DA    sub         eax,dword ptr [edx+4]
 005B63DD    mov         edx,dword ptr [ebp+8]
 005B63E0    cmp         eax,dword ptr [edx-8]
 005B63E3    setge       byte ptr [ebp-1]
 005B63E7    mov         al,byte ptr [ebp-1]
 005B63EA    pop         esi
 005B63EB    pop         ecx
 005B63EC    pop         ebp
 005B63ED    ret
end;*}

//005B63F0
{*procedure sub_005B63F0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B63F0    push        ebp
 005B63F1    mov         ebp,esp
 005B63F3    add         esp,0FFFFFFF0
 005B63F6    mov         dword ptr [ebp-0C],ecx
 005B63F9    mov         dword ptr [ebp-8],edx
 005B63FC    mov         dword ptr [ebp-4],eax
 005B63FF    mov         eax,dword ptr [ebp+18]
 005B6402    mov         byte ptr [eax],0
 005B6405    mov         eax,dword ptr [ebp+14]
 005B6408    mov         dword ptr [eax],0FFFFFFFF
 005B640E    mov         eax,dword ptr [ebp-4]
 005B6411    mov         ax,word ptr [eax+248];TCustomGrid.FOptions:TGridOptions
 005B6418    mov         word ptr [ebp-0E],ax
 005B641C    mov         eax,dword ptr [ebp-4]
 005B641F    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>005B6423    je          005B6437
 005B6425    mov         eax,dword ptr [ebp-4]
 005B6428    mov         ax,word ptr [eax+290];TCustomGrid.DesignOptionsBoost:TGridOptions
 005B642F    or          ax,word ptr [ebp-0E]
 005B6433    mov         word ptr [ebp-0E],ax
 005B6437    mov         ax,word ptr [ebp-0E]
 005B643B    and         ax,word ptr ds:[5B64CC];0xC0 gvar_005B64CC
 005B6442    mov         dx,word ptr ds:[5B64D0];0x0 gvar_005B64D0
 005B6449    cmp         dx,ax
>005B644C    je          005B64C5
 005B644E    mov         eax,dword ptr [ebp-4]
 005B6451    call        TControl.GetClientHeight
 005B6456    mov         edx,dword ptr [ebp+8]
 005B6459    mov         dword ptr [edx+3C],eax
 005B645C    mov         eax,dword ptr [ebp-4]
 005B645F    call        TControl.GetClientWidth
 005B6464    mov         edx,dword ptr [ebp+8]
 005B6467    mov         dword ptr [edx+0C],eax
 005B646A    push        ebp
 005B646B    call        005B6348
 005B6470    pop         ecx
 005B6471    test        al,al
>005B6473    je          005B6497
 005B6475    test        byte ptr [ebp-0E],80
>005B6479    je          005B6497
 005B647B    mov         eax,dword ptr [ebp+8]
 005B647E    mov         eax,dword ptr [eax+34]
 005B6481    cmp         eax,dword ptr [ebp-0C]
>005B6484    jle         005B64C5
 005B6486    push        ebp
 005B6487    mov         eax,dword ptr [ebp+8]
 005B648A    mov         cl,3
 005B648C    mov         edx,dword ptr [ebp-8]
 005B648F    call        005B61E8
 005B6494    pop         ecx
>005B6495    jmp         005B64C5
 005B6497    mov         eax,dword ptr [ebp+8]
 005B649A    mov         eax,dword ptr [eax+34]
 005B649D    cmp         eax,dword ptr [ebp-0C]
>005B64A0    jge         005B64C5
 005B64A2    test        byte ptr [ebp-0E],40
>005B64A6    je          005B64C5
 005B64A8    push        ebp
 005B64A9    call        005B639C
 005B64AE    pop         ecx
 005B64AF    test        al,al
>005B64B1    jne         005B64C5
 005B64B3    push        ebp
 005B64B4    mov         eax,dword ptr [ebp+8]
 005B64B7    add         eax,30
 005B64BA    mov         cl,2
 005B64BC    mov         edx,dword ptr [ebp-0C]
 005B64BF    call        005B61E8
 005B64C4    pop         ecx
 005B64C5    mov         esp,ebp
 005B64C7    pop         ebp
 005B64C8    ret         14
end;*}

//005B64D4
{*procedure sub_005B64D4(?:TCustomGrid; ?:?);
begin
 005B64D4    push        ebp
 005B64D5    mov         ebp,esp
 005B64D7    add         esp,0FFFFFFE8
 005B64DA    mov         byte ptr [ebp-5],dl
 005B64DD    mov         dword ptr [ebp-4],eax
 005B64E0    cmp         byte ptr [ebp-5],0
>005B64E4    je          005B659B
 005B64EA    mov         eax,dword ptr [ebp-4]
 005B64ED    call        TControl.GetClientWidth
 005B64F2    lea         ecx,[ebp-0D]
 005B64F5    xor         edx,edx
 005B64F7    call        Point
 005B64FC    lea         ecx,[ebp-15]
 005B64FF    mov         edx,1
 005B6504    or          eax,0FFFFFFFF
 005B6507    call        Point
 005B650C    push        8
 005B650E    mov         eax,dword ptr [ebp-4]
 005B6511    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B6517    call        TCanvas.GetHandle
 005B651C    push        eax
 005B651D    call        GDI32.SetMapMode
 005B6522    push        0
 005B6524    mov         eax,dword ptr [ebp-9]
 005B6527    push        eax
 005B6528    mov         eax,dword ptr [ebp-0D]
 005B652B    push        eax
 005B652C    mov         eax,dword ptr [ebp-4]
 005B652F    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B6535    call        TCanvas.GetHandle
 005B653A    push        eax
 005B653B    call        GDI32.SetWindowOrgEx
 005B6540    push        0
 005B6542    mov         eax,dword ptr [ebp-4]
 005B6545    call        TControl.GetClientHeight
 005B654A    push        eax
 005B654B    mov         eax,dword ptr [ebp-4]
 005B654E    call        TControl.GetClientWidth
 005B6553    push        eax
 005B6554    mov         eax,dword ptr [ebp-4]
 005B6557    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B655D    call        TCanvas.GetHandle
 005B6562    push        eax
 005B6563    call        GDI32.SetViewportExtEx
 005B6568    push        0
 005B656A    mov         eax,dword ptr [ebp-4]
 005B656D    call        TControl.GetClientHeight
 005B6572    imul        dword ptr [ebp-11]
 005B6575    push        eax
 005B6576    mov         eax,dword ptr [ebp-4]
 005B6579    call        TControl.GetClientWidth
 005B657E    imul        dword ptr [ebp-15]
 005B6581    push        eax
 005B6582    mov         eax,dword ptr [ebp-4]
 005B6585    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B658B    call        TCanvas.GetHandle
 005B6590    push        eax
 005B6591    call        GDI32.SetWindowExtEx
>005B6596    jmp         005B6643
 005B659B    lea         ecx,[ebp-0D]
 005B659E    xor         edx,edx
 005B65A0    xor         eax,eax
 005B65A2    call        Point
 005B65A7    lea         ecx,[ebp-15]
 005B65AA    mov         edx,1
 005B65AF    mov         eax,1
 005B65B4    call        Point
 005B65B9    push        8
 005B65BB    mov         eax,dword ptr [ebp-4]
 005B65BE    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B65C4    call        TCanvas.GetHandle
 005B65C9    push        eax
 005B65CA    call        GDI32.SetMapMode
 005B65CF    push        0
 005B65D1    mov         eax,dword ptr [ebp-9]
 005B65D4    push        eax
 005B65D5    mov         eax,dword ptr [ebp-0D]
 005B65D8    push        eax
 005B65D9    mov         eax,dword ptr [ebp-4]
 005B65DC    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B65E2    call        TCanvas.GetHandle
 005B65E7    push        eax
 005B65E8    call        GDI32.SetWindowOrgEx
 005B65ED    push        0
 005B65EF    mov         eax,dword ptr [ebp-4]
 005B65F2    call        TControl.GetClientHeight
 005B65F7    push        eax
 005B65F8    mov         eax,dword ptr [ebp-4]
 005B65FB    call        TControl.GetClientWidth
 005B6600    push        eax
 005B6601    mov         eax,dword ptr [ebp-4]
 005B6604    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B660A    call        TCanvas.GetHandle
 005B660F    push        eax
 005B6610    call        GDI32.SetViewportExtEx
 005B6615    push        0
 005B6617    mov         eax,dword ptr [ebp-4]
 005B661A    call        TControl.GetClientHeight
 005B661F    imul        dword ptr [ebp-11]
 005B6622    push        eax
 005B6623    mov         eax,dword ptr [ebp-4]
 005B6626    call        TControl.GetClientWidth
 005B662B    imul        dword ptr [ebp-15]
 005B662E    push        eax
 005B662F    mov         eax,dword ptr [ebp-4]
 005B6632    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B6638    call        TCanvas.GetHandle
 005B663D    push        eax
 005B663E    call        GDI32.SetWindowExtEx
 005B6643    mov         esp,ebp
 005B6645    pop         ebp
 005B6646    ret
end;*}

//005B6648
{*procedure sub_005B6648(?:?; ?:TGridDrawInfo; ?:?; ?:?);
begin
 005B6648    push        ebp
 005B6649    mov         ebp,esp
 005B664B    add         esp,0FFFFFFE0
 005B664E    mov         dword ptr [ebp-0C],ecx
 005B6651    mov         dword ptr [ebp-8],edx
 005B6654    mov         dword ptr [ebp-4],eax
 005B6657    mov         edx,dword ptr [ebp-8]
 005B665A    mov         edx,dword ptr [edx+10]
 005B665D    mov         eax,dword ptr [ebp-4]
 005B6660    mov         eax,dword ptr [eax+10]
 005B6663    call        00653A9C
 005B6668    mov         dword ptr [ebp-10],eax
 005B666B    lea         eax,[ebp-20]
 005B666E    push        eax
 005B666F    mov         ecx,dword ptr [ebp-10]
 005B6672    and         ecx,dword ptr [ebp-0C]
 005B6675    mov         edx,dword ptr [ebp-0C]
 005B6678    not         edx
 005B667A    and         edx,dword ptr [ebp-10]
 005B667D    mov         eax,dword ptr [ebp+8]
 005B6680    mov         eax,dword ptr [eax-4]
 005B6683    call        005B488C
 005B6688    mov         eax,dword ptr [ebp+8]
 005B668B    mov         eax,dword ptr [eax-4]
 005B668E    mov         eax,dword ptr [eax+4C]
 005B6691    mov         dword ptr [ebp-14],eax
 005B6694    mov         eax,dword ptr [ebp+8]
 005B6697    mov         eax,dword ptr [eax-4]
 005B669A    mov         eax,dword ptr [eax+48]
 005B669D    mov         dword ptr [ebp-18],eax
 005B66A0    push        0
 005B66A2    lea         eax,[ebp-20]
 005B66A5    push        eax
 005B66A6    mov         eax,dword ptr [ebp+8]
 005B66A9    mov         eax,dword ptr [eax-4]
 005B66AC    call        TWinControl.GetHandle
 005B66B1    push        eax
 005B66B2    call        USER32.InvalidateRect
 005B66B7    mov         esp,ebp
 005B66B9    pop         ebp
 005B66BA    ret
end;*}

//005B66BC
{*procedure sub_005B66BC(?:?);
begin
 005B66BC    push        ebp
 005B66BD    mov         ebp,esp
 005B66BF    add         esp,0FFFFFF98
 005B66C2    push        esi
 005B66C3    mov         eax,dword ptr [ebp+8]
 005B66C6    mov         eax,dword ptr [eax-4]
 005B66C9    cmp         dword ptr [eax+220],0
>005B66D0    je          005B66FA
 005B66D2    mov         eax,dword ptr [ebp+8]
 005B66D5    mov         eax,dword ptr [eax-4]
 005B66D8    mov         ecx,dword ptr [eax+230]
 005B66DE    mov         eax,dword ptr [ebp+8]
 005B66E1    mov         eax,dword ptr [eax-4]
 005B66E4    mov         edx,dword ptr [eax+21C]
 005B66EA    mov         eax,dword ptr [ebp+8]
 005B66ED    mov         eax,dword ptr [eax-4]
 005B66F0    add         eax,220
 005B66F5    call        005B3610
 005B66FA    mov         eax,dword ptr [ebp+8]
 005B66FD    mov         eax,dword ptr [eax-4]
 005B6700    cmp         dword ptr [eax+224],0
>005B6707    je          005B672A
 005B6709    mov         eax,dword ptr [ebp+8]
 005B670C    mov         eax,dword ptr [eax-4]
 005B670F    mov         edx,dword ptr [eax+21C]
 005B6715    mov         eax,dword ptr [ebp+8]
 005B6718    mov         eax,dword ptr [eax-4]
 005B671B    add         eax,224
 005B6720    mov         ecx,1
 005B6725    call        005B3610
 005B672A    mov         eax,dword ptr [ebp+8]
 005B672D    mov         eax,dword ptr [eax-4]
 005B6730    cmp         dword ptr [eax+250],0
>005B6737    je          005B6761
 005B6739    mov         eax,dword ptr [ebp+8]
 005B673C    mov         eax,dword ptr [eax-4]
 005B673F    mov         ecx,dword ptr [eax+234]
 005B6745    mov         eax,dword ptr [ebp+8]
 005B6748    mov         eax,dword ptr [eax-4]
 005B674B    mov         edx,dword ptr [eax+24C]
 005B6751    mov         eax,dword ptr [ebp+8]
 005B6754    mov         eax,dword ptr [eax-4]
 005B6757    add         eax,250
 005B675C    call        005B3610
 005B6761    mov         eax,dword ptr [ebp+8]
 005B6764    mov         eax,dword ptr [eax-4]
 005B6767    mov         edx,dword ptr [eax+228]
 005B676D    mov         dword ptr [ebp-8],edx
 005B6770    mov         edx,dword ptr [eax+22C]
 005B6776    mov         dword ptr [ebp-4],edx
 005B6779    mov         eax,dword ptr [ebp+8]
 005B677C    mov         eax,dword ptr [eax-4]
 005B677F    mov         eax,dword ptr [eax+22C]
 005B6785    mov         edx,dword ptr [ebp+8]
 005B6788    mov         edx,dword ptr [edx-4]
 005B678B    cmp         eax,dword ptr [edx+24C]
>005B6791    jl          005B67A3
 005B6793    mov         eax,dword ptr [ebp+8]
 005B6796    mov         eax,dword ptr [eax-4]
 005B6799    mov         eax,dword ptr [eax+24C]
 005B679F    dec         eax
 005B67A0    mov         dword ptr [ebp-4],eax
 005B67A3    mov         eax,dword ptr [ebp+8]
 005B67A6    mov         eax,dword ptr [eax-4]
 005B67A9    mov         eax,dword ptr [eax+228]
 005B67AF    mov         edx,dword ptr [ebp+8]
 005B67B2    mov         edx,dword ptr [edx-4]
 005B67B5    cmp         eax,dword ptr [edx+21C]
>005B67BB    jl          005B67CD
 005B67BD    mov         eax,dword ptr [ebp+8]
 005B67C0    mov         eax,dword ptr [eax-4]
 005B67C3    mov         eax,dword ptr [eax+21C]
 005B67C9    dec         eax
 005B67CA    mov         dword ptr [ebp-8],eax
 005B67CD    mov         eax,dword ptr [ebp+8]
 005B67D0    mov         eax,dword ptr [eax-4]
 005B67D3    mov         eax,dword ptr [eax+228]
 005B67D9    cmp         eax,dword ptr [ebp-8]
>005B67DC    jne         005B67EF
 005B67DE    mov         eax,dword ptr [ebp+8]
 005B67E1    mov         eax,dword ptr [eax-4]
 005B67E4    mov         eax,dword ptr [eax+22C]
 005B67EA    cmp         eax,dword ptr [ebp-4]
>005B67ED    je          005B6804
 005B67EF    push        1
 005B67F1    push        1
 005B67F3    mov         eax,dword ptr [ebp+8]
 005B67F6    mov         eax,dword ptr [eax-4]
 005B67F9    mov         ecx,dword ptr [ebp-4]
 005B67FC    mov         edx,dword ptr [ebp-8]
 005B67FF    call        005B7990
 005B6804    mov         eax,dword ptr [ebp+8]
 005B6807    mov         eax,dword ptr [eax-4]
 005B680A    mov         eax,dword ptr [eax+210]
 005B6810    cmp         eax,dword ptr [ebp-8]
>005B6813    jne         005B6826
 005B6815    mov         eax,dword ptr [ebp+8]
 005B6818    mov         eax,dword ptr [eax-4]
 005B681B    mov         eax,dword ptr [eax+214]
 005B6821    cmp         eax,dword ptr [ebp-4]
>005B6824    je          005B6834
 005B6826    lea         edx,[ebp-8]
 005B6829    mov         eax,dword ptr [ebp+8]
 005B682C    mov         eax,dword ptr [eax-4]
 005B682F    call        005B78E8
 005B6834    mov         eax,dword ptr [ebp+8]
 005B6837    mov         eax,dword ptr [eax-4]
 005B683A    cmp         byte ptr [eax+292],0
>005B6841    jne         005B686B
 005B6843    mov         eax,dword ptr [ebp+8]
 005B6846    mov         eax,dword ptr [eax-4]
 005B6849    mov         eax,dword ptr [eax+258]
 005B684F    mov         edx,dword ptr [ebp+8]
 005B6852    cmp         eax,dword ptr [edx-4C]
>005B6855    jne         005B686B
 005B6857    mov         eax,dword ptr [ebp+8]
 005B685A    mov         eax,dword ptr [eax-4]
 005B685D    mov         eax,dword ptr [eax+25C]
 005B6863    mov         edx,dword ptr [ebp+8]
 005B6866    cmp         eax,dword ptr [edx-1C]
>005B6869    je          005B6878
 005B686B    mov         eax,dword ptr [ebp+8]
 005B686E    mov         eax,dword ptr [eax-4]
 005B6871    call        005B71B8
>005B6876    jmp         005B68C0
 005B6878    mov         eax,dword ptr [ebp+8]
 005B687B    mov         eax,dword ptr [eax-4]
 005B687E    call        TWinControl.HandleAllocated
 005B6883    test        al,al
>005B6885    je          005B68C0
 005B6887    lea         edx,[ebp-68]
 005B688A    mov         eax,dword ptr [ebp+8]
 005B688D    mov         eax,dword ptr [eax-4]
 005B6890    call        TCustomGrid.CalcDrawInfo
 005B6895    mov         eax,dword ptr [ebp+8]
 005B6898    push        eax
 005B6899    lea         edx,[ebp-68]
 005B689C    mov         eax,dword ptr [ebp+8]
 005B689F    add         eax,0FFFFFF98
 005B68A2    xor         ecx,ecx
 005B68A4    call        005B6648
 005B68A9    pop         ecx
 005B68AA    mov         eax,dword ptr [ebp+8]
 005B68AD    push        eax
 005B68AE    lea         edx,[ebp-38]
 005B68B1    mov         eax,dword ptr [ebp+8]
 005B68B4    add         eax,0FFFFFFC8
 005B68B7    or          ecx,0FFFFFFFF
 005B68BA    call        005B6648
 005B68BF    pop         ecx
 005B68C0    mov         eax,dword ptr [ebp+8]
 005B68C3    mov         eax,dword ptr [eax-4]
 005B68C6    call        TCustomGrid.UpdateScrollRange
 005B68CB    mov         eax,dword ptr [ebp+8]
 005B68CE    mov         ecx,dword ptr [eax-70]
 005B68D1    mov         eax,dword ptr [ebp+8]
 005B68D4    mov         edx,dword ptr [eax-6C]
 005B68D7    mov         eax,dword ptr [ebp+8]
 005B68DA    mov         eax,dword ptr [eax-4]
 005B68DD    mov         si,0FFA8
 005B68E1    call        @CallDynaInst
 005B68E6    pop         esi
 005B68E7    mov         esp,ebp
 005B68E9    pop         ebp
 005B68EA    ret
end;*}

//005B68EC
procedure sub_005B68EC(?:TDrawGrid; ?:Integer; ?:Longint);
begin
{*
 005B68EC    push        ebp
 005B68ED    mov         ebp,esp
 005B68EF    add         esp,0FFFFFF88
 005B68F2    push        ebx
 005B68F3    push        esi
 005B68F4    push        edi
 005B68F5    mov         dword ptr [ebp-78],ecx
 005B68F8    mov         dword ptr [ebp-74],edx
 005B68FB    mov         dword ptr [ebp-4],eax
 005B68FE    mov         eax,dword ptr [ebp-4]
 005B6901    call        TWinControl.HandleAllocated
 005B6906    test        al,al
>005B6908    je          005B6915
 005B690A    lea         edx,[ebp-68]
 005B690D    mov         eax,dword ptr [ebp-4]
 005B6910    call        TCustomGrid.CalcDrawInfo
 005B6915    mov         eax,dword ptr [ebp-4]
 005B6918    mov         eax,dword ptr [eax+21C]
 005B691E    mov         dword ptr [ebp-6C],eax
 005B6921    mov         eax,dword ptr [ebp-4]
 005B6924    mov         eax,dword ptr [eax+24C]
 005B692A    mov         dword ptr [ebp-70],eax
 005B692D    mov         eax,dword ptr [ebp-4]
 005B6930    mov         edx,dword ptr [ebp-74]
 005B6933    mov         dword ptr [eax+21C],edx
 005B6939    mov         eax,dword ptr [ebp-4]
 005B693C    mov         edx,dword ptr [ebp-78]
 005B693F    mov         dword ptr [eax+24C],edx
 005B6945    mov         eax,dword ptr [ebp-4]
 005B6948    mov         eax,dword ptr [eax+238]
 005B694E    cmp         eax,dword ptr [ebp-74]
>005B6951    jle         005B6960
 005B6953    mov         eax,dword ptr [ebp-74]
 005B6956    dec         eax
 005B6957    mov         edx,dword ptr [ebp-4]
 005B695A    mov         dword ptr [edx+238],eax
 005B6960    mov         eax,dword ptr [ebp-4]
 005B6963    mov         eax,dword ptr [eax+23C]
 005B6969    cmp         eax,dword ptr [ebp-78]
>005B696C    jle         005B697B
 005B696E    mov         eax,dword ptr [ebp-78]
 005B6971    dec         eax
 005B6972    mov         edx,dword ptr [ebp-4]
 005B6975    mov         dword ptr [edx+23C],eax
 005B697B    xor         eax,eax
 005B697D    push        ebp
 005B697E    push        5B699A
 005B6983    push        dword ptr fs:[eax]
 005B6986    mov         dword ptr fs:[eax],esp
 005B6989    push        ebp
 005B698A    call        005B66BC
 005B698F    pop         ecx
 005B6990    xor         eax,eax
 005B6992    pop         edx
 005B6993    pop         ecx
 005B6994    pop         ecx
 005B6995    mov         dword ptr fs:[eax],edx
>005B6998    jmp         005B69D0
>005B699A    jmp         @HandleAnyException
 005B699F    mov         eax,dword ptr [ebp-4]
 005B69A2    mov         edx,dword ptr [ebp-6C]
 005B69A5    mov         dword ptr [eax+21C],edx
 005B69AB    mov         eax,dword ptr [ebp-4]
 005B69AE    mov         edx,dword ptr [ebp-70]
 005B69B1    mov         dword ptr [eax+24C],edx
 005B69B7    push        ebp
 005B69B8    call        005B66BC
 005B69BD    pop         ecx
 005B69BE    mov         eax,dword ptr [ebp-4]
 005B69C1    call        005B71B8
 005B69C6    call        @RaiseAgain
 005B69CB    call        @DoneExcept
 005B69D0    pop         edi
 005B69D1    pop         esi
 005B69D2    pop         ebx
 005B69D3    mov         esp,ebp
 005B69D5    pop         ebp
 005B69D6    ret
*}
end;

//005B69D8
{*procedure sub_005B69D8(?:TCustomGrid; ?:?);
begin
 005B69D8    push        ebp
 005B69D9    mov         ebp,esp
 005B69DB    add         esp,0FFFFFF88
 005B69DE    mov         dword ptr [ebp-8],edx
 005B69E1    mov         dword ptr [ebp-4],eax
 005B69E4    mov         eax,dword ptr [ebp-4]
 005B69E7    call        TWinControl.HandleAllocated
 005B69EC    test        al,al
>005B69EE    je          005B6AE5
 005B69F4    lea         edx,[ebp-78]
 005B69F7    mov         eax,dword ptr [ebp-4]
 005B69FA    call        TCustomGrid.CalcDrawInfo
 005B69FF    mov         eax,dword ptr [ebp-8]
 005B6A02    mov         eax,dword ptr [eax]
 005B6A04    cmp         eax,dword ptr [ebp-68]
>005B6A07    jg          005B6A39
 005B6A09    mov         eax,dword ptr [ebp-8]
 005B6A0C    mov         eax,dword ptr [eax+4]
 005B6A0F    cmp         eax,dword ptr [ebp-38]
>005B6A12    jg          005B6A39
 005B6A14    mov         eax,dword ptr [ebp-8]
 005B6A17    mov         eax,dword ptr [eax]
 005B6A19    mov         edx,dword ptr [ebp-4]
 005B6A1C    cmp         eax,dword ptr [edx+258]
>005B6A22    jl          005B6A39
 005B6A24    mov         eax,dword ptr [ebp-8]
 005B6A27    mov         eax,dword ptr [eax+4]
 005B6A2A    mov         edx,dword ptr [ebp-4]
 005B6A2D    cmp         eax,dword ptr [edx+25C]
>005B6A33    jge         005B6AE5
 005B6A39    mov         eax,dword ptr [ebp-4]
 005B6A3C    mov         edx,dword ptr [eax+258]
 005B6A42    mov         dword ptr [ebp-18],edx
 005B6A45    mov         edx,dword ptr [eax+25C]
 005B6A4B    mov         dword ptr [ebp-14],edx
 005B6A4E    lea         eax,[ebp-10]
 005B6A51    push        eax
 005B6A52    lea         ecx,[ebp-78]
 005B6A55    mov         edx,dword ptr [ebp-8]
 005B6A58    mov         eax,dword ptr [ebp-4]
 005B6A5B    call        TCustomGrid.CalcMaxTopLeft
 005B6A60    mov         eax,dword ptr [ebp-4]
 005B6A63    mov         edx,dword ptr [eax]
 005B6A65    call        dword ptr [edx+88]
 005B6A6B    mov         eax,dword ptr [ebp-8]
 005B6A6E    mov         eax,dword ptr [eax]
 005B6A70    mov         edx,dword ptr [ebp-4]
 005B6A73    cmp         eax,dword ptr [edx+258]
>005B6A79    jge         005B6A8B
 005B6A7B    mov         eax,dword ptr [ebp-8]
 005B6A7E    mov         eax,dword ptr [eax]
 005B6A80    mov         edx,dword ptr [ebp-4]
 005B6A83    mov         dword ptr [edx+258],eax
>005B6A89    jmp         005B6AA1
 005B6A8B    mov         eax,dword ptr [ebp-8]
 005B6A8E    mov         eax,dword ptr [eax]
 005B6A90    cmp         eax,dword ptr [ebp-68]
>005B6A93    jle         005B6AA1
 005B6A95    mov         eax,dword ptr [ebp-10]
 005B6A98    mov         edx,dword ptr [ebp-4]
 005B6A9B    mov         dword ptr [edx+258],eax
 005B6AA1    mov         eax,dword ptr [ebp-8]
 005B6AA4    mov         eax,dword ptr [eax+4]
 005B6AA7    mov         edx,dword ptr [ebp-4]
 005B6AAA    cmp         eax,dword ptr [edx+25C]
>005B6AB0    jge         005B6AC3
 005B6AB2    mov         eax,dword ptr [ebp-8]
 005B6AB5    mov         eax,dword ptr [eax+4]
 005B6AB8    mov         edx,dword ptr [ebp-4]
 005B6ABB    mov         dword ptr [edx+25C],eax
>005B6AC1    jmp         005B6ADA
 005B6AC3    mov         eax,dword ptr [ebp-8]
 005B6AC6    mov         eax,dword ptr [eax+4]
 005B6AC9    cmp         eax,dword ptr [ebp-38]
>005B6ACC    jle         005B6ADA
 005B6ACE    mov         eax,dword ptr [ebp-0C]
 005B6AD1    mov         edx,dword ptr [ebp-4]
 005B6AD4    mov         dword ptr [edx+25C],eax
 005B6ADA    lea         edx,[ebp-18]
 005B6ADD    mov         eax,dword ptr [ebp-4]
 005B6AE0    call        TCustomGrid.TopLeftMoved
 005B6AE5    mov         esp,ebp
 005B6AE7    pop         ebp
 005B6AE8    ret
end;*}

//005B6AEC
procedure TCustomGrid.DrawSizingLine(const DrawInfo:TGridDrawInfo);
begin
{*
 005B6AEC    push        ebp
 005B6AED    mov         ebp,esp
 005B6AEF    add         esp,0FFFFFFF0
 005B6AF2    push        esi
 005B6AF3    mov         dword ptr [ebp-8],edx
 005B6AF6    mov         dword ptr [ebp-4],eax
 005B6AF9    mov         dl,1
 005B6AFB    mov         eax,[005BE614];TPen
 005B6B00    call        TPen.Create
 005B6B05    mov         dword ptr [ebp-0C],eax
 005B6B08    xor         eax,eax
 005B6B0A    push        ebp
 005B6B0B    push        5B6C46
 005B6B10    push        dword ptr fs:[eax]
 005B6B13    mov         dword ptr fs:[eax],esp
 005B6B16    mov         eax,dword ptr [ebp-4]
 005B6B19    mov         eax,dword ptr [eax+208]
 005B6B1F    mov         dword ptr [ebp-10],eax
 005B6B22    mov         eax,dword ptr [ebp-10]
 005B6B25    mov         edx,dword ptr [eax+10]
 005B6B28    mov         eax,dword ptr [ebp-0C]
 005B6B2B    mov         ecx,dword ptr [eax]
 005B6B2D    call        dword ptr [ecx+8]
 005B6B30    mov         eax,dword ptr [ebp-10]
 005B6B33    mov         eax,dword ptr [eax+10]
 005B6B36    mov         dl,2
 005B6B38    call        TPen.SetStyle
 005B6B3D    mov         eax,dword ptr [ebp-10]
 005B6B40    mov         eax,dword ptr [eax+10]
 005B6B43    mov         dl,0E
 005B6B45    call        TPen.SetMode
 005B6B4A    mov         eax,dword ptr [ebp-10]
 005B6B4D    mov         eax,dword ptr [eax+10]
 005B6B50    mov         edx,1
 005B6B55    call        TPen.SetWidth
 005B6B5A    xor         eax,eax
 005B6B5C    push        ebp
 005B6B5D    push        5B6C29
 005B6B62    push        dword ptr fs:[eax]
 005B6B65    mov         dword ptr fs:[eax],esp
 005B6B68    mov         eax,dword ptr [ebp-4]
 005B6B6B    cmp         byte ptr [eax+28E],2
>005B6B72    jne         005B6BE6
 005B6B74    mov         eax,dword ptr [ebp-4]
 005B6B77    mov         si,0FFC8
 005B6B7B    call        @CallDynaInst
 005B6B80    test        al,al
>005B6B82    je          005B6BBA
 005B6B84    mov         eax,dword ptr [ebp-4]
 005B6B87    mov         ecx,dword ptr [eax+264]
 005B6B8D    mov         edx,dword ptr [ebp-8]
 005B6B90    mov         edx,dword ptr [edx+0C]
 005B6B93    mov         eax,dword ptr [ebp-10]
 005B6B96    call        005C12F0
 005B6B9B    mov         edx,dword ptr [ebp-8]
 005B6B9E    mov         edx,dword ptr [edx+0C]
 005B6BA1    mov         eax,dword ptr [ebp-8]
 005B6BA4    sub         edx,dword ptr [eax+8]
 005B6BA7    mov         eax,dword ptr [ebp-4]
 005B6BAA    mov         ecx,dword ptr [eax+264]
 005B6BB0    mov         eax,dword ptr [ebp-10]
 005B6BB3    call        005C1274
>005B6BB8    jmp         005B6C10
 005B6BBA    mov         eax,dword ptr [ebp-4]
 005B6BBD    mov         ecx,dword ptr [eax+264]
 005B6BC3    xor         edx,edx
 005B6BC5    mov         eax,dword ptr [ebp-10]
 005B6BC8    call        005C12F0
 005B6BCD    mov         eax,dword ptr [ebp-4]
 005B6BD0    mov         ecx,dword ptr [eax+264]
 005B6BD6    mov         edx,dword ptr [ebp-8]
 005B6BD9    mov         edx,dword ptr [edx+8]
 005B6BDC    mov         eax,dword ptr [ebp-10]
 005B6BDF    call        005C1274
>005B6BE4    jmp         005B6C10
 005B6BE6    mov         eax,dword ptr [ebp-4]
 005B6BE9    mov         edx,dword ptr [eax+264]
 005B6BEF    xor         ecx,ecx
 005B6BF1    mov         eax,dword ptr [ebp-10]
 005B6BF4    call        005C12F0
 005B6BF9    mov         ecx,dword ptr [ebp-8]
 005B6BFC    mov         ecx,dword ptr [ecx+38]
 005B6BFF    mov         eax,dword ptr [ebp-4]
 005B6C02    mov         edx,dword ptr [eax+264]
 005B6C08    mov         eax,dword ptr [ebp-10]
 005B6C0B    call        005C1274
 005B6C10    xor         eax,eax
 005B6C12    pop         edx
 005B6C13    pop         ecx
 005B6C14    pop         ecx
 005B6C15    mov         dword ptr fs:[eax],edx
 005B6C18    push        5B6C30
 005B6C1D    mov         edx,dword ptr [ebp-0C]
 005B6C20    mov         eax,dword ptr [ebp-10]
 005B6C23    call        TCanvas.SetPen
 005B6C28    ret
>005B6C29    jmp         @HandleFinally
>005B6C2E    jmp         005B6C1D
 005B6C30    xor         eax,eax
 005B6C32    pop         edx
 005B6C33    pop         ecx
 005B6C34    pop         ecx
 005B6C35    mov         dword ptr fs:[eax],edx
 005B6C38    push        5B6C4D
 005B6C3D    mov         eax,dword ptr [ebp-0C]
 005B6C40    call        TObject.Free
 005B6C45    ret
>005B6C46    jmp         @HandleFinally
>005B6C4B    jmp         005B6C3D
 005B6C4D    pop         esi
 005B6C4E    mov         esp,ebp
 005B6C50    pop         ebp
 005B6C51    ret
*}
end;

//005B6C54
procedure TCustomGrid.DrawMove;
begin
{*
 005B6C54    push        ebp
 005B6C55    mov         ebp,esp
 005B6C57    add         esp,0FFFFFFE0
 005B6C5A    push        esi
 005B6C5B    mov         dword ptr [ebp-4],eax
 005B6C5E    mov         dl,1
 005B6C60    mov         eax,[005BE614];TPen
 005B6C65    call        TPen.Create
 005B6C6A    mov         dword ptr [ebp-8],eax
 005B6C6D    xor         eax,eax
 005B6C6F    push        ebp
 005B6C70    push        5B6E00
 005B6C75    push        dword ptr fs:[eax]
 005B6C78    mov         dword ptr fs:[eax],esp
 005B6C7B    mov         eax,dword ptr [ebp-4]
 005B6C7E    mov         eax,dword ptr [eax+208]
 005B6C84    mov         dword ptr [ebp-10],eax
 005B6C87    mov         eax,dword ptr [ebp-10]
 005B6C8A    mov         edx,dword ptr [eax+10]
 005B6C8D    mov         eax,dword ptr [ebp-8]
 005B6C90    mov         ecx,dword ptr [eax]
 005B6C92    call        dword ptr [ecx+8]
 005B6C95    xor         eax,eax
 005B6C97    push        ebp
 005B6C98    push        5B6DE3
 005B6C9D    push        dword ptr fs:[eax]
 005B6CA0    mov         dword ptr fs:[eax],esp
 005B6CA3    mov         eax,dword ptr [ebp-10]
 005B6CA6    mov         eax,dword ptr [eax+10]
 005B6CA9    mov         dl,2
 005B6CAB    call        TPen.SetStyle
 005B6CB0    mov         eax,dword ptr [ebp-10]
 005B6CB3    mov         eax,dword ptr [eax+10]
 005B6CB6    mov         dl,0E
 005B6CB8    call        TPen.SetMode
 005B6CBD    mov         eax,dword ptr [ebp-10]
 005B6CC0    mov         eax,dword ptr [eax+10]
 005B6CC3    mov         edx,5
 005B6CC8    call        TPen.SetWidth
 005B6CCD    mov         eax,dword ptr [ebp-4]
 005B6CD0    cmp         byte ptr [eax+28E],4
>005B6CD7    jne         005B6D39
 005B6CD9    lea         eax,[ebp-20]
 005B6CDC    push        eax
 005B6CDD    mov         eax,dword ptr [ebp-4]
 005B6CE0    mov         ecx,dword ptr [eax+270]
 005B6CE6    xor         edx,edx
 005B6CE8    mov         eax,dword ptr [ebp-4]
 005B6CEB    call        005B488C
 005B6CF0    mov         eax,dword ptr [ebp-4]
 005B6CF3    mov         eax,dword ptr [eax+270]
 005B6CF9    mov         edx,dword ptr [ebp-4]
 005B6CFC    cmp         eax,dword ptr [edx+26C]
>005B6D02    jle         005B6D0C
 005B6D04    mov         eax,dword ptr [ebp-14]
 005B6D07    mov         dword ptr [ebp-0C],eax
>005B6D0A    jmp         005B6D12
 005B6D0C    mov         eax,dword ptr [ebp-1C]
 005B6D0F    mov         dword ptr [ebp-0C],eax
 005B6D12    mov         ecx,dword ptr [ebp-0C]
 005B6D15    xor         edx,edx
 005B6D17    mov         eax,dword ptr [ebp-10]
 005B6D1A    call        005C12F0
 005B6D1F    mov         eax,dword ptr [ebp-4]
 005B6D22    call        TControl.GetClientWidth
 005B6D27    mov         edx,eax
 005B6D29    mov         ecx,dword ptr [ebp-0C]
 005B6D2C    mov         eax,dword ptr [ebp-10]
 005B6D2F    call        005C1274
>005B6D34    jmp         005B6DC4
 005B6D39    lea         eax,[ebp-20]
 005B6D3C    push        eax
 005B6D3D    mov         eax,dword ptr [ebp-4]
 005B6D40    mov         edx,dword ptr [eax+270]
 005B6D46    xor         ecx,ecx
 005B6D48    mov         eax,dword ptr [ebp-4]
 005B6D4B    call        005B488C
 005B6D50    mov         eax,dword ptr [ebp-4]
 005B6D53    mov         eax,dword ptr [eax+270]
 005B6D59    mov         edx,dword ptr [ebp-4]
 005B6D5C    cmp         eax,dword ptr [edx+26C]
>005B6D62    jle         005B6D84
 005B6D64    mov         eax,dword ptr [ebp-4]
 005B6D67    mov         si,0FFC8
 005B6D6B    call        @CallDynaInst
 005B6D70    test        al,al
>005B6D72    jne         005B6D7C
 005B6D74    mov         eax,dword ptr [ebp-18]
 005B6D77    mov         dword ptr [ebp-0C],eax
>005B6D7A    jmp         005B6DA2
 005B6D7C    mov         eax,dword ptr [ebp-20]
 005B6D7F    mov         dword ptr [ebp-0C],eax
>005B6D82    jmp         005B6DA2
 005B6D84    mov         eax,dword ptr [ebp-4]
 005B6D87    mov         si,0FFC8
 005B6D8B    call        @CallDynaInst
 005B6D90    test        al,al
>005B6D92    jne         005B6D9C
 005B6D94    mov         eax,dword ptr [ebp-20]
 005B6D97    mov         dword ptr [ebp-0C],eax
>005B6D9A    jmp         005B6DA2
 005B6D9C    mov         eax,dword ptr [ebp-18]
 005B6D9F    mov         dword ptr [ebp-0C],eax
 005B6DA2    xor         ecx,ecx
 005B6DA4    mov         edx,dword ptr [ebp-0C]
 005B6DA7    mov         eax,dword ptr [ebp-10]
 005B6DAA    call        005C12F0
 005B6DAF    mov         eax,dword ptr [ebp-4]
 005B6DB2    call        TControl.GetClientHeight
 005B6DB7    mov         ecx,eax
 005B6DB9    mov         edx,dword ptr [ebp-0C]
 005B6DBC    mov         eax,dword ptr [ebp-10]
 005B6DBF    call        005C1274
 005B6DC4    xor         eax,eax
 005B6DC6    pop         edx
 005B6DC7    pop         ecx
 005B6DC8    pop         ecx
 005B6DC9    mov         dword ptr fs:[eax],edx
 005B6DCC    push        5B6DEA
 005B6DD1    mov         eax,dword ptr [ebp-4]
 005B6DD4    mov         eax,dword ptr [eax+208]
 005B6DDA    mov         edx,dword ptr [ebp-8]
 005B6DDD    call        TCanvas.SetPen
 005B6DE2    ret
>005B6DE3    jmp         @HandleFinally
>005B6DE8    jmp         005B6DD1
 005B6DEA    xor         eax,eax
 005B6DEC    pop         edx
 005B6DED    pop         ecx
 005B6DEE    pop         ecx
 005B6DEF    mov         dword ptr fs:[eax],edx
 005B6DF2    push        5B6E07
 005B6DF7    mov         eax,dword ptr [ebp-8]
 005B6DFA    call        TObject.Free
 005B6DFF    ret
>005B6E00    jmp         @HandleFinally
>005B6E05    jmp         005B6DF7
 005B6E07    pop         esi
 005B6E08    mov         esp,ebp
 005B6E0A    pop         ebp
 005B6E0B    ret
*}
end;

//005B6E0C
{*procedure sub_005B6E0C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);
begin
 005B6E0C    push        ebp
 005B6E0D    mov         ebp,esp
 005B6E0F    add         esp,0FFFFFFF4
 005B6E12    push        esi
 005B6E13    mov         dword ptr [ebp-0C],ecx
 005B6E16    mov         dword ptr [ebp-8],edx
 005B6E19    mov         dword ptr [ebp-4],eax
 005B6E1C    mov         al,byte ptr [ebp+8]
 005B6E1F    push        eax
 005B6E20    push        1
 005B6E22    mov         ecx,dword ptr [ebp-0C]
 005B6E25    mov         edx,dword ptr [ebp-8]
 005B6E28    mov         eax,dword ptr [ebp-4]
 005B6E2B    call        005B7990
 005B6E30    mov         eax,dword ptr [ebp-4]
 005B6E33    call        005BA008
 005B6E38    mov         eax,dword ptr [ebp-4]
 005B6E3B    mov         si,0FFEB
 005B6E3F    call        @CallDynaInst;TControl.sub_005F5478
 005B6E44    pop         esi
 005B6E45    mov         esp,ebp
 005B6E47    pop         ebp
 005B6E48    ret         4
end;*}

//005B6E4C
{*function sub_005B6E4C(?:?; ?:?):?;
begin
 005B6E4C    push        ebp
 005B6E4D    mov         ebp,esp
 005B6E4F    add         esp,0FFFFFFE8
 005B6E52    push        ebx
 005B6E53    mov         dword ptr [ebp-8],edx
 005B6E56    mov         dword ptr [ebp-4],eax
 005B6E59    xor         eax,eax
 005B6E5B    mov         dword ptr [ebp-0C],eax
 005B6E5E    mov         eax,dword ptr [ebp-4]
 005B6E61    mov         eax,dword ptr [eax+18]
 005B6E64    cmp         eax,dword ptr [ebp-8]
>005B6E67    jle         005B6E70
 005B6E69    xor         eax,eax
 005B6E6B    mov         dword ptr [ebp-10],eax
>005B6E6E    jmp         005B6E8D
 005B6E70    mov         eax,dword ptr [ebp-4]
 005B6E73    mov         eax,dword ptr [eax+1C]
 005B6E76    cmp         eax,dword ptr [ebp-8]
>005B6E79    jg          005B6E84
 005B6E7B    mov         eax,dword ptr [ebp-4]
 005B6E7E    mov         eax,dword ptr [eax+4]
 005B6E81    mov         dword ptr [ebp-0C],eax
 005B6E84    mov         eax,dword ptr [ebp-4]
 005B6E87    mov         eax,dword ptr [eax+1C]
 005B6E8A    mov         dword ptr [ebp-10],eax
 005B6E8D    mov         eax,dword ptr [ebp-10]
 005B6E90    mov         edx,dword ptr [ebp-8]
 005B6E93    dec         edx
 005B6E94    sub         edx,eax
>005B6E96    jl          005B6ECD
 005B6E98    inc         edx
 005B6E99    mov         dword ptr [ebp-18],edx
 005B6E9C    mov         dword ptr [ebp-14],eax
 005B6E9F    mov         ebx,dword ptr [ebp-4]
 005B6EA2    mov         edx,dword ptr [ebp-14]
 005B6EA5    mov         eax,dword ptr [ebx+2C]
 005B6EA8    call        dword ptr [ebx+28]
 005B6EAB    mov         edx,dword ptr [ebp-4]
 005B6EAE    add         eax,dword ptr [edx]
 005B6EB0    add         dword ptr [ebp-0C],eax
 005B6EB3    mov         eax,dword ptr [ebp-4]
 005B6EB6    mov         eax,dword ptr [eax+0C]
 005B6EB9    cmp         eax,dword ptr [ebp-0C]
>005B6EBC    jge         005B6EC5
 005B6EBE    xor         eax,eax
 005B6EC0    mov         dword ptr [ebp-0C],eax
>005B6EC3    jmp         005B6ECD
 005B6EC5    inc         dword ptr [ebp-14]
 005B6EC8    dec         dword ptr [ebp-18]
>005B6ECB    jne         005B6E9F
 005B6ECD    mov         eax,dword ptr [ebp-0C]
 005B6ED0    pop         ebx
 005B6ED1    mov         esp,ebp
 005B6ED3    pop         ebp
 005B6ED4    ret
end;*}

//005B6ED8
{*function sub_005B6ED8(?:TGridDrawInfo; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005B6ED8    push        ebp
 005B6ED9    mov         ebp,esp
 005B6EDB    add         esp,0FFFFFFF0
 005B6EDE    push        ebx
 005B6EDF    mov         dword ptr [ebp-0C],ecx
 005B6EE2    mov         dword ptr [ebp-8],edx
 005B6EE5    mov         dword ptr [ebp-4],eax
 005B6EE8    mov         byte ptr [ebp-0D],0
 005B6EEC    mov         eax,dword ptr [ebp-4]
 005B6EEF    mov         eax,dword ptr [eax+18]
 005B6EF2    cmp         eax,dword ptr [ebp-8]
>005B6EF5    jg          005B6F2D
 005B6EF7    mov         eax,dword ptr [ebp-4]
 005B6EFA    mov         eax,dword ptr [eax+1C]
 005B6EFD    cmp         eax,dword ptr [ebp-8]
>005B6F00    jle         005B6F2D
 005B6F02    mov         eax,dword ptr [ebp-4]
 005B6F05    mov         eax,dword ptr [eax+1C]
 005B6F08    cmp         eax,dword ptr [ebp-0C]
>005B6F0B    jle         005B6F24
 005B6F0D    mov         eax,dword ptr [ebp+10]
 005B6F10    mov         eax,dword ptr [eax-4]
 005B6F13    xor         ecx,ecx
 005B6F15    mov         edx,10
 005B6F1A    call        @FillChar
>005B6F1F    jmp         005B6FF1
 005B6F24    mov         eax,dword ptr [ebp-4]
 005B6F27    mov         eax,dword ptr [eax+1C]
 005B6F2A    mov         dword ptr [ebp-8],eax
 005B6F2D    mov         eax,dword ptr [ebp-4]
 005B6F30    mov         eax,dword ptr [eax+10]
 005B6F33    cmp         eax,dword ptr [ebp-0C]
>005B6F36    jge         005B6F67
 005B6F38    mov         eax,dword ptr [ebp-4]
 005B6F3B    mov         eax,dword ptr [eax+10]
 005B6F3E    mov         dword ptr [ebp-0C],eax
 005B6F41    mov         eax,dword ptr [ebp-4]
 005B6F44    mov         eax,dword ptr [eax+20]
 005B6F47    dec         eax
 005B6F48    cmp         eax,dword ptr [ebp-0C]
>005B6F4B    jle         005B6F50
 005B6F4D    inc         dword ptr [ebp-0C]
 005B6F50    mov         eax,dword ptr [ebp+10]
 005B6F53    push        eax
 005B6F54    mov         eax,dword ptr [ebp-4]
 005B6F57    mov         edx,dword ptr [ebp-0C]
 005B6F5A    call        005B6E4C
 005B6F5F    pop         ecx
 005B6F60    test        eax,eax
>005B6F62    jne         005B6F67
 005B6F64    dec         dword ptr [ebp-0C]
 005B6F67    mov         eax,dword ptr [ebp+10]
 005B6F6A    push        eax
 005B6F6B    mov         eax,dword ptr [ebp-4]
 005B6F6E    mov         edx,dword ptr [ebp-8]
 005B6F71    call        005B6E4C
 005B6F76    pop         ecx
 005B6F77    mov         edx,dword ptr [ebp+0C]
 005B6F7A    mov         dword ptr [edx],eax
 005B6F7C    mov         eax,dword ptr [ebp+10]
 005B6F7F    push        eax
 005B6F80    mov         eax,dword ptr [ebp-4]
 005B6F83    mov         edx,dword ptr [ebp-0C]
 005B6F86    call        005B6E4C
 005B6F8B    pop         ecx
 005B6F8C    mov         edx,dword ptr [ebp+8]
 005B6F8F    mov         dword ptr [edx],eax
 005B6F91    mov         eax,dword ptr [ebp+8]
 005B6F94    cmp         dword ptr [eax],0
>005B6F97    jne         005B6FB1
 005B6F99    mov         ebx,dword ptr [ebp-4]
 005B6F9C    mov         edx,dword ptr [ebp-8]
 005B6F9F    mov         eax,dword ptr [ebx+2C]
 005B6FA2    call        dword ptr [ebx+28]
 005B6FA5    mov         edx,dword ptr [ebp+0C]
 005B6FA8    add         eax,dword ptr [edx]
 005B6FAA    mov         edx,dword ptr [ebp+8]
 005B6FAD    mov         dword ptr [edx],eax
>005B6FAF    jmp         005B6FC2
 005B6FB1    mov         ebx,dword ptr [ebp-4]
 005B6FB4    mov         edx,dword ptr [ebp-0C]
 005B6FB7    mov         eax,dword ptr [ebx+2C]
 005B6FBA    call        dword ptr [ebx+28]
 005B6FBD    mov         edx,dword ptr [ebp+8]
 005B6FC0    add         dword ptr [edx],eax
 005B6FC2    mov         eax,dword ptr [ebp+8]
 005B6FC5    mov         eax,dword ptr [eax]
 005B6FC7    mov         edx,dword ptr [ebp-4]
 005B6FCA    cmp         eax,dword ptr [edx+0C]
>005B6FCD    jle         005B6FDA
 005B6FCF    mov         eax,dword ptr [ebp-4]
 005B6FD2    mov         eax,dword ptr [eax+0C]
 005B6FD5    mov         edx,dword ptr [ebp+8]
 005B6FD8    mov         dword ptr [edx],eax
 005B6FDA    mov         eax,dword ptr [ebp+10]
 005B6FDD    cmp         byte ptr [eax+8],0
>005B6FE1    je          005B6FED
 005B6FE3    mov         eax,dword ptr [ebp-4]
 005B6FE6    mov         eax,dword ptr [eax]
 005B6FE8    mov         edx,dword ptr [ebp+8]
 005B6FEB    add         dword ptr [edx],eax
 005B6FED    mov         byte ptr [ebp-0D],1
 005B6FF1    mov         al,byte ptr [ebp-0D]
 005B6FF4    pop         ebx
 005B6FF5    mov         esp,ebp
 005B6FF7    pop         ebp
 005B6FF8    ret         8
end;*}

//005B6FFC
{*procedure sub_005B6FFC(?:TCustomGrid; ?:Integer; ?:?);
begin
 005B6FFC    push        ebp
 005B6FFD    mov         ebp,esp
 005B6FFF    add         esp,0FFFFFF80
 005B7002    push        esi
 005B7003    push        edi
 005B7004    mov         esi,edx
 005B7006    lea         edi,[ebp-1C]
 005B7009    movs        dword ptr [edi],dword ptr [esi]
 005B700A    movs        dword ptr [edi],dword ptr [esi]
 005B700B    movs        dword ptr [edi],dword ptr [esi]
 005B700C    movs        dword ptr [edi],dword ptr [esi]
 005B700D    mov         dword ptr [ebp-4],ecx
 005B7010    mov         dword ptr [ebp-8],eax
 005B7013    mov         eax,dword ptr [ebp-4]
 005B7016    xor         ecx,ecx
 005B7018    mov         edx,10
 005B701D    call        @FillChar
 005B7022    mov         eax,dword ptr [ebp-1C]
 005B7025    cmp         eax,dword ptr [ebp-14]
>005B7028    jg          005B70EA
 005B702E    mov         eax,dword ptr [ebp-18]
 005B7031    cmp         eax,dword ptr [ebp-10]
>005B7034    jg          005B70EA
 005B703A    lea         edx,[ebp-80]
 005B703D    mov         eax,dword ptr [ebp-8]
 005B7040    call        TCustomGrid.CalcDrawInfo
 005B7045    mov         eax,dword ptr [ebp-70]
 005B7048    inc         eax
 005B7049    cmp         eax,dword ptr [ebp-1C]
>005B704C    jl          005B70EA
 005B7052    mov         eax,dword ptr [ebp-40]
 005B7055    inc         eax
 005B7056    cmp         eax,dword ptr [ebp-18]
>005B7059    jl          005B70EA
 005B705F    push        ebp
 005B7060    mov         eax,dword ptr [ebp-4]
 005B7063    push        eax
 005B7064    mov         eax,dword ptr [ebp-4]
 005B7067    add         eax,8
 005B706A    push        eax
 005B706B    lea         eax,[ebp-80]
 005B706E    mov         ecx,dword ptr [ebp-14]
 005B7071    mov         edx,dword ptr [ebp-1C]
 005B7074    call        005B6ED8
 005B7079    pop         ecx
 005B707A    test        al,al
>005B707C    je          005B709C
 005B707E    push        ebp
 005B707F    mov         eax,dword ptr [ebp-4]
 005B7082    add         eax,4
 005B7085    push        eax
 005B7086    mov         eax,dword ptr [ebp-4]
 005B7089    add         eax,0C
 005B708C    push        eax
 005B708D    lea         eax,[ebp-50]
 005B7090    mov         ecx,dword ptr [ebp-10]
 005B7093    mov         edx,dword ptr [ebp-18]
 005B7096    call        005B6ED8
 005B709B    pop         ecx
 005B709C    mov         eax,dword ptr [ebp-8]
 005B709F    mov         si,0FFC8
 005B70A3    call        @CallDynaInst;TControl.sub_005F40CC
 005B70A8    test        al,al
>005B70AA    je          005B70EA
 005B70AC    mov         eax,dword ptr [ebp-8]
 005B70AF    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 005B70B5    call        005C156C
 005B70BA    test        al,al
>005B70BC    jne         005B70EA
 005B70BE    mov         eax,dword ptr [ebp-4]
 005B70C1    mov         eax,dword ptr [eax]
 005B70C3    mov         dword ptr [ebp-0C],eax
 005B70C6    mov         eax,dword ptr [ebp-8]
 005B70C9    call        TControl.GetClientWidth
 005B70CE    mov         edx,dword ptr [ebp-4]
 005B70D1    sub         eax,dword ptr [edx+8]
 005B70D4    mov         edx,dword ptr [ebp-4]
 005B70D7    mov         dword ptr [edx],eax
 005B70D9    mov         eax,dword ptr [ebp-8]
 005B70DC    call        TControl.GetClientWidth
 005B70E1    sub         eax,dword ptr [ebp-0C]
 005B70E4    mov         edx,dword ptr [ebp-4]
 005B70E7    mov         dword ptr [edx+8],eax
 005B70EA    pop         edi
 005B70EB    pop         esi
 005B70EC    mov         esp,ebp
 005B70EE    pop         ebp
 005B70EF    ret         4
end;*}

//005B70F4
procedure sub_005B70F4(?:TCustomGrid);
begin
{*
 005B70F4    push        ebp
 005B70F5    mov         ebp,esp
 005B70F7    push        ecx
 005B70F8    mov         dword ptr [ebp-4],eax
 005B70FB    mov         eax,dword ptr [ebp-4]
 005B70FE    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B7104    mov         edx,dword ptr [ebp-4]
 005B7107    mov         dword ptr [edx+258],eax;TCustomGrid.FTopLeft:TGridCoord
 005B710D    mov         eax,dword ptr [ebp-4]
 005B7110    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B7116    mov         edx,dword ptr [ebp-4]
 005B7119    mov         dword ptr [edx+25C],eax;TCustomGrid.FTopLeft:Longint
 005B711F    mov         eax,dword ptr [ebp-4]
 005B7122    mov         edx,dword ptr [ebp-4]
 005B7125    mov         ecx,dword ptr [edx+258];TCustomGrid.FTopLeft:TGridCoord
 005B712B    mov         dword ptr [eax+228],ecx;TCustomGrid.FCurrent:TGridCoord
 005B7131    mov         ecx,dword ptr [edx+25C];TCustomGrid.FTopLeft:Longint
 005B7137    mov         dword ptr [eax+22C],ecx;TCustomGrid.FCurrent:Longint
 005B713D    mov         eax,dword ptr [ebp-4]
 005B7140    mov         edx,dword ptr [ebp-4]
 005B7143    mov         ecx,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
 005B7149    mov         dword ptr [eax+210],ecx;TCustomGrid.FAnchor:TGridCoord
 005B714F    mov         ecx,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
 005B7155    mov         dword ptr [eax+214],ecx
 005B715B    mov         eax,dword ptr [ebp-4]
 005B715E    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>005B7165    je          005B717A
 005B7167    mov         eax,dword ptr [ebp-4]
 005B716A    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005B7170    dec         eax
 005B7171    mov         edx,dword ptr [ebp-4]
 005B7174    mov         dword ptr [edx+210],eax;TCustomGrid.FAnchor:TGridCoord
 005B717A    pop         ecx
 005B717B    pop         ebp
 005B717C    ret
*}
end;

//005B7180
procedure sub_005B7180(?:TCustomGrid; ?:TGridCoord; ?:Longint);
begin
{*
 005B7180    push        ebp
 005B7181    mov         ebp,esp
 005B7183    add         esp,0FFFFFFE4
 005B7186    mov         dword ptr [ebp-0C],ecx
 005B7189    mov         dword ptr [ebp-8],edx
 005B718C    mov         dword ptr [ebp-4],eax
 005B718F    mov         eax,dword ptr [ebp-0C]
 005B7192    mov         dword ptr [ebp-18],eax
 005B7195    mov         eax,dword ptr [ebp-8]
 005B7198    mov         dword ptr [ebp-1C],eax
 005B719B    mov         eax,dword ptr [ebp-0C]
 005B719E    mov         dword ptr [ebp-10],eax
 005B71A1    mov         eax,dword ptr [ebp-8]
 005B71A4    mov         dword ptr [ebp-14],eax
 005B71A7    lea         edx,[ebp-1C]
 005B71AA    mov         eax,dword ptr [ebp-4]
 005B71AD    call        005B71CC
 005B71B2    mov         esp,ebp
 005B71B4    pop         ebp
 005B71B5    ret
*}
end;

//005B71B8
procedure sub_005B71B8(?:TCustomGrid);
begin
{*
 005B71B8    push        ebp
 005B71B9    mov         ebp,esp
 005B71BB    push        ecx
 005B71BC    mov         dword ptr [ebp-4],eax
 005B71BF    mov         eax,dword ptr [ebp-4]
 005B71C2    mov         edx,dword ptr [eax]
 005B71C4    call        dword ptr [edx+7C]
 005B71C7    pop         ecx
 005B71C8    pop         ebp
 005B71C9    ret
*}
end;

//005B71CC
procedure sub_005B71CC(?:TCustomGrid; ?:Byte);
begin
{*
 005B71CC    push        ebp
 005B71CD    mov         ebp,esp
 005B71CF    add         esp,0FFFFFFDC
 005B71D2    push        esi
 005B71D3    push        edi
 005B71D4    mov         esi,edx
 005B71D6    lea         edi,[ebp-14]
 005B71D9    movs        dword ptr [edi],dword ptr [esi]
 005B71DA    movs        dword ptr [edi],dword ptr [esi]
 005B71DB    movs        dword ptr [edi],dword ptr [esi]
 005B71DC    movs        dword ptr [edi],dword ptr [esi]
 005B71DD    mov         dword ptr [ebp-4],eax
 005B71E0    mov         eax,dword ptr [ebp-4]
 005B71E3    call        TWinControl.HandleAllocated
 005B71E8    test        al,al
>005B71EA    je          005B7210
 005B71EC    push        1
 005B71EE    lea         ecx,[ebp-24]
 005B71F1    lea         edx,[ebp-14]
 005B71F4    mov         eax,dword ptr [ebp-4]
 005B71F7    call        005B6FFC
 005B71FC    push        0
 005B71FE    lea         eax,[ebp-24]
 005B7201    push        eax
 005B7202    mov         eax,dword ptr [ebp-4]
 005B7205    call        TWinControl.GetHandle
 005B720A    push        eax
 005B720B    call        USER32.InvalidateRect
 005B7210    pop         edi
 005B7211    pop         esi
 005B7212    mov         esp,ebp
 005B7214    pop         ebp
 005B7215    ret
*}
end;

//005B7218
{*function sub_005B7218(?:?):?;
begin
 005B7218    push        ebp
 005B7219    mov         ebp,esp
 005B721B    push        ecx
 005B721C    mov         eax,dword ptr [ebp+8]
 005B721F    cmp         dword ptr [eax-4],0
>005B7223    jne         005B7236
 005B7225    mov         eax,dword ptr [ebp+8]
 005B7228    mov         eax,dword ptr [eax-8]
 005B722B    mov         eax,dword ptr [eax+238]
 005B7231    mov         dword ptr [ebp-4],eax
>005B7234    jmp         005B7245
 005B7236    mov         eax,dword ptr [ebp+8]
 005B7239    mov         eax,dword ptr [eax-8]
 005B723C    mov         eax,dword ptr [eax+23C]
 005B7242    mov         dword ptr [ebp-4],eax
 005B7245    mov         eax,dword ptr [ebp-4]
 005B7248    pop         ecx
 005B7249    pop         ebp
 005B724A    ret
end;*}

//005B724C
{*function sub_005B724C(?:?):?;
begin
 005B724C    push        ebp
 005B724D    mov         ebp,esp
 005B724F    push        ecx
 005B7250    mov         eax,dword ptr [ebp+8]
 005B7253    cmp         dword ptr [eax-4],0
>005B7257    jne         005B7264
 005B7259    mov         eax,dword ptr [ebp+8]
 005B725C    mov         eax,dword ptr [eax-10]
 005B725F    mov         dword ptr [ebp-4],eax
>005B7262    jmp         005B726D
 005B7264    mov         eax,dword ptr [ebp+8]
 005B7267    mov         eax,dword ptr [eax-0C]
 005B726A    mov         dword ptr [ebp-4],eax
 005B726D    mov         eax,dword ptr [ebp-4]
 005B7270    pop         ecx
 005B7271    pop         ebp
 005B7272    ret
end;*}

//005B7274
{*function sub_005B7274(?:?):?;
begin
 005B7274    push        ebp
 005B7275    mov         ebp,esp
 005B7277    add         esp,0FFFFFFF4
 005B727A    lea         eax,[ebp-0C]
 005B727D    push        eax
 005B727E    mov         eax,dword ptr [ebp+8]
 005B7281    lea         ecx,[eax-70]
 005B7284    mov         eax,dword ptr [ebp+8]
 005B7287    mov         eax,dword ptr [eax-8]
 005B728A    lea         edx,[eax+258]
 005B7290    mov         eax,dword ptr [ebp+8]
 005B7293    mov         eax,dword ptr [eax-8]
 005B7296    call        TCustomGrid.CalcMaxTopLeft
 005B729B    mov         eax,dword ptr [ebp+8]
 005B729E    cmp         dword ptr [eax-4],0
>005B72A2    jne         005B72B8
 005B72A4    mov         eax,dword ptr [ebp+8]
 005B72A7    mov         eax,dword ptr [eax-8]
 005B72AA    mov         eax,dword ptr [eax+258]
 005B72B0    sub         eax,dword ptr [ebp-0C]
 005B72B3    mov         dword ptr [ebp-4],eax
>005B72B6    jmp         005B72CA
 005B72B8    mov         eax,dword ptr [ebp+8]
 005B72BB    mov         eax,dword ptr [eax-8]
 005B72BE    mov         eax,dword ptr [eax+25C]
 005B72C4    sub         eax,dword ptr [ebp-8]
 005B72C7    mov         dword ptr [ebp-4],eax
 005B72CA    cmp         dword ptr [ebp-4],1
>005B72CE    jge         005B72D7
 005B72D0    mov         dword ptr [ebp-4],1
 005B72D7    mov         eax,dword ptr [ebp-4]
 005B72DA    mov         esp,ebp
 005B72DC    pop         ebp
 005B72DD    ret
end;*}

//005B72E0
{*function sub_005B72E0(?:?):?;
begin
 005B72E0    push        ebp
 005B72E1    mov         ebp,esp
 005B72E3    add         esp,0FFFFFF98
 005B72E6    lea         edx,[ebp-68]
 005B72E9    mov         eax,dword ptr [ebp+8]
 005B72EC    mov         eax,dword ptr [eax-8]
 005B72EF    call        TCustomGrid.CalcDrawInfo
 005B72F4    mov         eax,dword ptr [ebp+8]
 005B72F7    cmp         dword ptr [eax-4],0
>005B72FB    jne         005B7311
 005B72FD    mov         eax,dword ptr [ebp+8]
 005B7300    mov         eax,dword ptr [eax-8]
 005B7303    mov         edx,dword ptr [ebp-58]
 005B7306    sub         edx,dword ptr [eax+258]
 005B730C    mov         dword ptr [ebp-4],edx
>005B730F    jmp         005B7323
 005B7311    mov         eax,dword ptr [ebp+8]
 005B7314    mov         eax,dword ptr [eax-8]
 005B7317    mov         edx,dword ptr [ebp-28]
 005B731A    sub         edx,dword ptr [eax+25C]
 005B7320    mov         dword ptr [ebp-4],edx
 005B7323    cmp         dword ptr [ebp-4],1
>005B7327    jge         005B7330
 005B7329    mov         dword ptr [ebp-4],1
 005B7330    mov         eax,dword ptr [ebp-4]
 005B7333    mov         esp,ebp
 005B7335    pop         ebp
 005B7336    ret
end;*}

//005B7338
{*function sub_005B7338(?:?; ?:?; ?:?):?;
begin
 005B7338    push        ebp
 005B7339    mov         ebp,esp
 005B733B    add         esp,0FFFFFFF4
 005B733E    push        ebx
 005B733F    push        esi
 005B7340    mov         dword ptr [ebp-8],edx
 005B7343    mov         dword ptr [ebp-4],eax
 005B7346    mov         eax,dword ptr [ebp-4]
 005B7349    mov         dword ptr [ebp-0C],eax
 005B734C    mov         eax,dword ptr [ebp+8]
 005B734F    mov         eax,dword ptr [eax-74]
 005B7352    cmp         eax,7
>005B7355    ja          005B7487
 005B735B    jmp         dword ptr [eax*4+5B7362]
 005B735B    dd          005B7382
 005B735B    dd          005B738D
 005B735B    dd          005B7398
 005B735B    dd          005B73AD
 005B735B    dd          005B73C2
 005B735B    dd          005B73C2
 005B735B    dd          005B747A
 005B735B    dd          005B746B
 005B7382    mov         eax,dword ptr [ebp-8]
 005B7385    sub         dword ptr [ebp-0C],eax
>005B7388    jmp         005B7487
 005B738D    mov         eax,dword ptr [ebp-8]
 005B7390    add         dword ptr [ebp-0C],eax
>005B7393    jmp         005B7487
 005B7398    mov         eax,dword ptr [ebp+8]
 005B739B    push        eax
 005B739C    call        005B7274
 005B73A1    pop         ecx
 005B73A2    imul        dword ptr [ebp-8]
 005B73A5    sub         dword ptr [ebp-0C],eax
>005B73A8    jmp         005B7487
 005B73AD    mov         eax,dword ptr [ebp+8]
 005B73B0    push        eax
 005B73B1    call        005B72E0
 005B73B6    pop         ecx
 005B73B7    imul        dword ptr [ebp-8]
 005B73BA    add         dword ptr [ebp-0C],eax
>005B73BD    jmp         005B7487
 005B73C2    mov         eax,dword ptr [ebp+8]
 005B73C5    mov         eax,dword ptr [eax-8]
 005B73C8    test        byte ptr [eax+249],40
>005B73CF    jne         005B73DE
 005B73D1    mov         eax,dword ptr [ebp+8]
 005B73D4    cmp         dword ptr [eax-74],4
>005B73D8    jne         005B7487
 005B73DE    mov         eax,dword ptr [ebp+8]
 005B73E1    mov         eax,dword ptr [eax-8]
 005B73E4    mov         si,0FFC8
 005B73E8    call        @CallDynaInst
 005B73ED    test        al,al
>005B73EF    je          005B73F7
 005B73F1    cmp         dword ptr [ebp-8],1
>005B73F5    jne         005B7431
 005B73F7    push        7F
 005B73F9    mov         eax,dword ptr [ebp+8]
 005B73FC    push        eax
 005B73FD    call        005B724C
 005B7402    pop         ecx
 005B7403    mov         ebx,eax
 005B7405    mov         eax,dword ptr [ebp+8]
 005B7408    push        eax
 005B7409    call        005B7218
 005B740E    pop         ecx
 005B740F    sub         ebx,eax
 005B7411    push        ebx
 005B7412    mov         eax,dword ptr [ebp+8]
 005B7415    mov         eax,dword ptr [eax+0C]
 005B7418    push        eax
 005B7419    call        KERNEL32.MulDiv
 005B741E    mov         ebx,eax
 005B7420    mov         eax,dword ptr [ebp+8]
 005B7423    push        eax
 005B7424    call        005B7218
 005B7429    pop         ecx
 005B742A    add         ebx,eax
 005B742C    mov         dword ptr [ebp-0C],ebx
>005B742F    jmp         005B7487
 005B7431    push        7F
 005B7433    mov         eax,dword ptr [ebp+8]
 005B7436    push        eax
 005B7437    call        005B724C
 005B743C    pop         ecx
 005B743D    mov         ebx,eax
 005B743F    mov         eax,dword ptr [ebp+8]
 005B7442    push        eax
 005B7443    call        005B7218
 005B7448    pop         ecx
 005B7449    sub         ebx,eax
 005B744B    push        ebx
 005B744C    mov         eax,dword ptr [ebp+8]
 005B744F    mov         eax,dword ptr [eax+0C]
 005B7452    push        eax
 005B7453    call        KERNEL32.MulDiv
 005B7458    push        eax
 005B7459    mov         eax,dword ptr [ebp+8]
 005B745C    push        eax
 005B745D    call        005B724C
 005B7462    pop         ecx
 005B7463    pop         edx
 005B7464    sub         eax,edx
 005B7466    mov         dword ptr [ebp-0C],eax
>005B7469    jmp         005B7487
 005B746B    mov         eax,dword ptr [ebp+8]
 005B746E    push        eax
 005B746F    call        005B724C
 005B7474    pop         ecx
 005B7475    mov         dword ptr [ebp-0C],eax
>005B7478    jmp         005B7487
 005B747A    mov         eax,dword ptr [ebp+8]
 005B747D    push        eax
 005B747E    call        005B7218
 005B7483    pop         ecx
 005B7484    mov         dword ptr [ebp-0C],eax
 005B7487    mov         eax,dword ptr [ebp-0C]
 005B748A    pop         esi
 005B748B    pop         ebx
 005B748C    mov         esp,ebp
 005B748E    pop         ebp
 005B748F    ret
end;*}

//005B7490
{*procedure sub_005B7490(?:?; ?:?; ?:?);
begin
 005B7490    push        ebp
 005B7491    mov         ebp,esp
 005B7493    add         esp,0FFFFFFD8
 005B7496    push        esi
 005B7497    mov         dword ptr [ebp-8],edx
 005B749A    mov         dword ptr [ebp-4],eax
 005B749D    mov         eax,dword ptr [ebp+8]
 005B74A0    mov         eax,dword ptr [eax-8]
 005B74A3    mov         eax,dword ptr [eax+288]
 005B74A9    mov         dword ptr [ebp-0C],eax
 005B74AC    mov         eax,dword ptr [ebp+8]
 005B74AF    mov         edx,dword ptr [eax-54]
 005B74B2    mov         eax,dword ptr [ebp+8]
 005B74B5    mov         eax,dword ptr [eax-8]
 005B74B8    call        TCustomGrid.GetColWidths
 005B74BD    mov         dword ptr [ebp-18],eax
 005B74C0    mov         eax,dword ptr [ebp+8]
 005B74C3    mov         eax,dword ptr [eax-8]
 005B74C6    call        TControl.GetClientWidth
 005B74CB    mov         edx,dword ptr [ebp+8]
 005B74CE    sub         eax,dword ptr [edx-6C]
 005B74D1    mov         dword ptr [ebp-14],eax
 005B74D4    mov         eax,dword ptr [ebp-4]
 005B74D7    cmp         eax,7
>005B74DA    ja          005B75BA
 005B74E0    jmp         dword ptr [eax*4+5B74E7]
 005B74E0    dd          005B7507
 005B74E0    dd          005B752B
 005B74E0    dd          005B754C
 005B74E0    dd          005B755A
 005B74E0    dd          005B7568
 005B74E0    dd          005B7568
 005B74E0    dd          005B75B1
 005B74E0    dd          005B75AA
 005B7507    mov         eax,dword ptr [ebp+8]
 005B750A    mov         eax,dword ptr [eax-8]
 005B750D    mov         eax,dword ptr [eax+208]
 005B7513    mov         edx,5B7670;'0'
 005B7518    call        005C1754
 005B751D    mov         edx,dword ptr [ebp+8]
 005B7520    imul        dword ptr [edx-78]
 005B7523    sub         dword ptr [ebp-0C],eax
>005B7526    jmp         005B75BA
 005B752B    mov         eax,dword ptr [ebp+8]
 005B752E    mov         eax,dword ptr [eax-8]
 005B7531    mov         eax,dword ptr [eax+208]
 005B7537    mov         edx,5B7670;'0'
 005B753C    call        005C1754
 005B7541    mov         edx,dword ptr [ebp+8]
 005B7544    imul        dword ptr [edx-78]
 005B7547    add         dword ptr [ebp-0C],eax
>005B754A    jmp         005B75BA
 005B754C    mov         eax,dword ptr [ebp+8]
 005B754F    mov         eax,dword ptr [eax-78]
 005B7552    imul        dword ptr [ebp-14]
 005B7555    sub         dword ptr [ebp-0C],eax
>005B7558    jmp         005B75BA
 005B755A    mov         eax,dword ptr [ebp+8]
 005B755D    mov         eax,dword ptr [eax-78]
 005B7560    imul        dword ptr [ebp-14]
 005B7563    add         dword ptr [ebp-0C],eax
>005B7566    jmp         005B75BA
 005B7568    mov         eax,dword ptr [ebp+8]
 005B756B    mov         eax,dword ptr [eax-8]
 005B756E    test        byte ptr [eax+249],40
>005B7575    jne         005B757D
 005B7577    cmp         dword ptr [ebp-4],4
>005B757B    jne         005B75BA
 005B757D    mov         eax,dword ptr [ebp+8]
 005B7580    mov         eax,dword ptr [eax-8]
 005B7583    mov         si,0FFC8
 005B7587    call        @CallDynaInst
 005B758C    test        al,al
>005B758E    jne         005B7598
 005B7590    mov         eax,dword ptr [ebp-8]
 005B7593    mov         dword ptr [ebp-0C],eax
>005B7596    jmp         005B75BA
 005B7598    mov         eax,dword ptr [ebp+8]
 005B759B    push        eax
 005B759C    call        005B724C
 005B75A1    pop         ecx
 005B75A2    sub         eax,dword ptr [ebp-8]
 005B75A5    mov         dword ptr [ebp-0C],eax
>005B75A8    jmp         005B75BA
 005B75AA    xor         eax,eax
 005B75AC    mov         dword ptr [ebp-0C],eax
>005B75AF    jmp         005B75BA
 005B75B1    mov         eax,dword ptr [ebp-18]
 005B75B4    sub         eax,dword ptr [ebp-14]
 005B75B7    mov         dword ptr [ebp-0C],eax
 005B75BA    cmp         dword ptr [ebp-0C],0
>005B75BE    jge         005B75C7
 005B75C0    xor         eax,eax
 005B75C2    mov         dword ptr [ebp-0C],eax
>005B75C5    jmp         005B75DB
 005B75C7    mov         eax,dword ptr [ebp-18]
 005B75CA    sub         eax,dword ptr [ebp-14]
 005B75CD    cmp         eax,dword ptr [ebp-0C]
>005B75D0    jg          005B75DB
 005B75D2    mov         eax,dword ptr [ebp-18]
 005B75D5    sub         eax,dword ptr [ebp-14]
 005B75D8    mov         dword ptr [ebp-0C],eax
 005B75DB    mov         eax,dword ptr [ebp+8]
 005B75DE    mov         eax,dword ptr [eax-8]
 005B75E1    mov         eax,dword ptr [eax+288]
 005B75E7    cmp         eax,dword ptr [ebp-0C]
>005B75EA    je          005B7662
 005B75EC    mov         eax,dword ptr [ebp+8]
 005B75EF    mov         eax,dword ptr [eax-8]
 005B75F2    mov         eax,dword ptr [eax+288]
 005B75F8    mov         dword ptr [ebp-10],eax
 005B75FB    mov         eax,dword ptr [ebp+8]
 005B75FE    mov         eax,dword ptr [eax-8]
 005B7601    mov         edx,dword ptr [ebp-0C]
 005B7604    mov         dword ptr [eax+288],edx
 005B760A    mov         edx,dword ptr [ebp-10]
 005B760D    sub         edx,dword ptr [ebp-0C]
 005B7610    mov         eax,dword ptr [ebp+8]
 005B7613    mov         eax,dword ptr [eax-8]
 005B7616    xor         ecx,ecx
 005B7618    call        005B7E64
 005B761D    lea         eax,[ebp-28]
 005B7620    xor         ecx,ecx
 005B7622    mov         edx,10
 005B7627    call        @FillChar
 005B762C    mov         eax,dword ptr [ebp+8]
 005B762F    mov         eax,dword ptr [eax-8]
 005B7632    mov         eax,dword ptr [eax+23C]
 005B7638    mov         dword ptr [ebp-1C],eax
 005B763B    mov         eax,dword ptr [ebp+8]
 005B763E    mov         eax,dword ptr [eax-8]
 005B7641    lea         edx,[ebp-28]
 005B7644    call        005B71CC
 005B7649    mov         eax,dword ptr [ebp+8]
 005B764C    mov         eax,dword ptr [eax-8]
 005B764F    mov         edx,dword ptr [eax]
 005B7651    call        dword ptr [edx+88]
 005B7657    mov         eax,dword ptr [ebp+8]
 005B765A    mov         eax,dword ptr [eax-8]
 005B765D    call        TCustomGrid.UpdateScrollPos
 005B7662    pop         esi
 005B7663    mov         esp,ebp
 005B7665    pop         ebp
 005B7666    ret
end;*}

//005B7674
{*procedure sub_005B7674(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);
begin
 005B7674    push        ebp
 005B7675    mov         ebp,esp
 005B7677    add         esp,0FFFFFF74
 005B767D    push        esi
 005B767E    mov         dword ptr [ebp-74],ecx
 005B7681    mov         dword ptr [ebp-4],edx
 005B7684    mov         dword ptr [ebp-8],eax
 005B7687    mov         eax,dword ptr [ebp-8]
 005B768A    mov         si,0FFC8
 005B768E    call        @CallDynaInst
 005B7693    test        al,al
>005B7695    je          005B769D
 005B7697    cmp         byte ptr [ebp+8],0
>005B769B    jne         005B76A6
 005B769D    mov         dword ptr [ebp-78],1
>005B76A4    jmp         005B76AD
 005B76A6    mov         dword ptr [ebp-78],0FFFFFFFF
 005B76AD    mov         eax,dword ptr [ebp-8]
 005B76B0    cmp         byte ptr [eax+57],0
>005B76B4    je          005B76E6
 005B76B6    mov         eax,dword ptr [ebp-8]
 005B76B9    mov         si,0FFB8
 005B76BD    call        @CallDynaInst
 005B76C2    test        al,al
>005B76C4    je          005B76E6
 005B76C6    mov         eax,dword ptr [ebp-8]
 005B76C9    cmp         byte ptr [eax+1A4],0
>005B76D0    je          005B76E6
 005B76D2    mov         eax,dword ptr [ebp-8]
 005B76D5    test        byte ptr [eax+1C],10
>005B76D9    jne         005B76E6
 005B76DB    mov         eax,dword ptr [ebp-8]
 005B76DE    mov         edx,dword ptr [eax]
 005B76E0    call        dword ptr [edx+0C0]
 005B76E6    lea         edx,[ebp-70]
 005B76E9    mov         eax,dword ptr [ebp-8]
 005B76EC    call        TCustomGrid.CalcDrawInfo
 005B76F1    cmp         dword ptr [ebp-4],0
>005B76F5    jne         005B7715
 005B76F7    mov         eax,dword ptr [ebp-8]
 005B76FA    cmp         dword ptr [eax+21C],1
>005B7701    jne         005B7715
 005B7703    push        ebp
 005B7704    mov         edx,dword ptr [ebp+0C]
 005B7707    mov         eax,dword ptr [ebp-74]
 005B770A    call        005B7490
 005B770F    pop         ecx
>005B7710    jmp         005B786D
 005B7715    mov         eax,dword ptr [ebp-8]
 005B7718    mov         eax,dword ptr [eax+21C]
 005B771E    dec         eax
 005B771F    mov         dword ptr [ebp-10],eax
 005B7722    mov         eax,dword ptr [ebp-8]
 005B7725    mov         eax,dword ptr [eax+24C]
 005B772B    dec         eax
 005B772C    mov         dword ptr [ebp-0C],eax
 005B772F    lea         eax,[ebp-8C]
 005B7735    push        eax
 005B7736    lea         ecx,[ebp-70]
 005B7739    lea         edx,[ebp-10]
 005B773C    mov         eax,dword ptr [ebp-8]
 005B773F    call        TCustomGrid.CalcMaxTopLeft
 005B7744    mov         eax,dword ptr [ebp-8C]
 005B774A    mov         dword ptr [ebp-10],eax
 005B774D    mov         eax,dword ptr [ebp-88]
 005B7753    mov         dword ptr [ebp-0C],eax
 005B7756    mov         eax,dword ptr [ebp-8]
 005B7759    mov         edx,dword ptr [eax+258]
 005B775F    mov         dword ptr [ebp-80],edx
 005B7762    mov         edx,dword ptr [eax+25C]
 005B7768    mov         dword ptr [ebp-7C],edx
 005B776B    cmp         dword ptr [ebp-4],0
>005B776F    jne         005B77BC
 005B7771    mov         eax,dword ptr [ebp-80]
 005B7774    mov         dword ptr [ebp-84],eax
 005B777A    push        ebp
 005B777B    mov         edx,dword ptr [ebp-78]
 005B777E    mov         eax,dword ptr [ebp-80]
 005B7781    call        005B7338
 005B7786    pop         ecx
 005B7787    mov         dword ptr [ebp-80],eax
 005B778A    mov         eax,dword ptr [ebp-8]
 005B778D    mov         eax,dword ptr [eax+238]
 005B7793    cmp         eax,dword ptr [ebp-80]
>005B7796    jge         005B7807
 005B7798    mov         eax,dword ptr [ebp-80]
 005B779B    cmp         eax,dword ptr [ebp-10]
>005B779E    jge         005B7807
 005B77A0    mov         edx,dword ptr [ebp-80]
 005B77A3    mov         eax,dword ptr [ebp-8]
 005B77A6    call        TCustomGrid.GetColWidths
 005B77AB    test        eax,eax
>005B77AD    jg          005B7807
 005B77AF    mov         eax,dword ptr [ebp-84]
 005B77B5    cmp         eax,dword ptr [ebp-80]
>005B77B8    jne         005B7771
>005B77BA    jmp         005B7807
 005B77BC    mov         eax,dword ptr [ebp-7C]
 005B77BF    mov         dword ptr [ebp-84],eax
 005B77C5    push        ebp
 005B77C6    mov         edx,1
 005B77CB    mov         eax,dword ptr [ebp-7C]
 005B77CE    call        005B7338
 005B77D3    pop         ecx
 005B77D4    mov         dword ptr [ebp-7C],eax
 005B77D7    mov         eax,dword ptr [ebp-8]
 005B77DA    mov         eax,dword ptr [eax+23C]
 005B77E0    cmp         eax,dword ptr [ebp-7C]
>005B77E3    jge         005B7807
 005B77E5    mov         eax,dword ptr [ebp-7C]
 005B77E8    cmp         eax,dword ptr [ebp-0C]
>005B77EB    jge         005B7807
 005B77ED    mov         edx,dword ptr [ebp-7C]
 005B77F0    mov         eax,dword ptr [ebp-8]
 005B77F3    call        005B9750
 005B77F8    test        eax,eax
>005B77FA    jg          005B7807
 005B77FC    mov         eax,dword ptr [ebp-84]
 005B7802    cmp         eax,dword ptr [ebp-7C]
>005B7805    jne         005B77BC
 005B7807    mov         edx,dword ptr [ebp-80]
 005B780A    mov         eax,dword ptr [ebp-10]
 005B780D    call        00653A9C
 005B7812    mov         edx,eax
 005B7814    mov         eax,dword ptr [ebp-8]
 005B7817    mov         eax,dword ptr [eax+238]
 005B781D    call        00653AC8
 005B7822    mov         dword ptr [ebp-80],eax
 005B7825    mov         edx,dword ptr [ebp-7C]
 005B7828    mov         eax,dword ptr [ebp-0C]
 005B782B    call        00653A9C
 005B7830    mov         edx,eax
 005B7832    mov         eax,dword ptr [ebp-8]
 005B7835    mov         eax,dword ptr [eax+23C]
 005B783B    call        00653AC8
 005B7840    mov         dword ptr [ebp-7C],eax
 005B7843    mov         eax,dword ptr [ebp-8]
 005B7846    mov         eax,dword ptr [eax+258]
 005B784C    cmp         eax,dword ptr [ebp-80]
>005B784F    jne         005B785F
 005B7851    mov         eax,dword ptr [ebp-8]
 005B7854    mov         eax,dword ptr [eax+25C]
 005B785A    cmp         eax,dword ptr [ebp-7C]
>005B785D    je          005B786D
 005B785F    mov         ecx,dword ptr [ebp-7C]
 005B7862    mov         edx,dword ptr [ebp-80]
 005B7865    mov         eax,dword ptr [ebp-8]
 005B7868    call        005B7B30
 005B786D    pop         esi
 005B786E    mov         esp,ebp
 005B7870    pop         ebp
 005B7871    ret         8
end;*}

//005B7874
{*procedure sub_005B7874(?:?; ?:?; ?:?; ?:?);
begin
 005B7874    push        ebp
 005B7875    mov         ebp,esp
 005B7877    add         esp,0FFFFFFEC
 005B787A    mov         dword ptr [ebp-0C],ecx
 005B787D    mov         dword ptr [ebp-8],edx
 005B7880    mov         dword ptr [ebp-4],eax
 005B7883    mov         eax,dword ptr [ebp-8]
 005B7886    mov         eax,dword ptr [eax]
 005B7888    cmp         eax,dword ptr [ebp-0C]
>005B788B    jne         005B7897
 005B788D    mov         eax,dword ptr [ebp-8]
 005B7890    mov         edx,dword ptr [ebp+8]
 005B7893    mov         dword ptr [eax],edx
>005B7895    jmp         005B78DF
 005B7897    mov         eax,dword ptr [ebp-0C]
 005B789A    mov         dword ptr [ebp-10],eax
 005B789D    mov         eax,dword ptr [ebp+8]
 005B78A0    mov         dword ptr [ebp-14],eax
 005B78A3    mov         eax,dword ptr [ebp-0C]
 005B78A6    cmp         eax,dword ptr [ebp+8]
>005B78A9    jle         005B78B7
 005B78AB    mov         eax,dword ptr [ebp+8]
 005B78AE    mov         dword ptr [ebp-10],eax
 005B78B1    mov         eax,dword ptr [ebp-0C]
 005B78B4    mov         dword ptr [ebp-14],eax
 005B78B7    mov         eax,dword ptr [ebp-8]
 005B78BA    mov         eax,dword ptr [eax]
 005B78BC    cmp         eax,dword ptr [ebp-10]
>005B78BF    jl          005B78DF
 005B78C1    mov         eax,dword ptr [ebp-8]
 005B78C4    mov         eax,dword ptr [eax]
 005B78C6    cmp         eax,dword ptr [ebp-14]
>005B78C9    jg          005B78DF
 005B78CB    mov         eax,dword ptr [ebp-0C]
 005B78CE    cmp         eax,dword ptr [ebp+8]
>005B78D1    jle         005B78DA
 005B78D3    mov         eax,dword ptr [ebp-8]
 005B78D6    inc         dword ptr [eax]
>005B78D8    jmp         005B78DF
 005B78DA    mov         eax,dword ptr [ebp-8]
 005B78DD    dec         dword ptr [eax]
 005B78DF    mov         esp,ebp
 005B78E1    pop         ebp
 005B78E2    ret         4
end;*}

//005B78E8
procedure sub_005B78E8(?:TCustomGrid; ?:TGridCoord);
begin
{*
 005B78E8    push        ebp
 005B78E9    mov         ebp,esp
 005B78EB    add         esp,0FFFFFFE8
 005B78EE    mov         dword ptr [ebp-8],edx
 005B78F1    mov         dword ptr [ebp-4],eax
 005B78F4    mov         eax,dword ptr [ebp-4]
 005B78F7    mov         ax,word ptr [eax+248]
 005B78FE    and         ax,word ptr ds:[5B7988];0x410 gvar_005B7988
 005B7905    mov         dx,word ptr ds:[5B798C];0x10 gvar_005B798C
 005B790C    cmp         dx,ax
>005B790F    jne         005B796A
 005B7911    lea         edx,[ebp-18]
 005B7914    mov         eax,dword ptr [ebp-4]
 005B7917    call        005B97A0
 005B791C    mov         eax,dword ptr [ebp-8]
 005B791F    mov         edx,dword ptr [ebp-4]
 005B7922    mov         ecx,dword ptr [eax]
 005B7924    mov         dword ptr [edx+210],ecx
 005B792A    mov         ecx,dword ptr [eax+4]
 005B792D    mov         dword ptr [edx+214],ecx
 005B7933    mov         eax,dword ptr [ebp-4]
 005B7936    test        byte ptr [eax+249],10
>005B793D    je          005B7952
 005B793F    mov         eax,dword ptr [ebp-4]
 005B7942    mov         eax,dword ptr [eax+21C]
 005B7948    dec         eax
 005B7949    mov         edx,dword ptr [ebp-4]
 005B794C    mov         dword ptr [edx+210],eax
 005B7952    mov         edx,dword ptr [ebp-8]
 005B7955    mov         eax,dword ptr [ebp-4]
 005B7958    call        005B69D8
 005B795D    lea         edx,[ebp-18]
 005B7960    mov         eax,dword ptr [ebp-4]
 005B7963    call        005B7BE4
>005B7968    jmp         005B7981
 005B796A    push        1
 005B796C    push        1
 005B796E    mov         ecx,dword ptr [ebp-8]
 005B7971    mov         ecx,dword ptr [ecx+4]
 005B7974    mov         edx,dword ptr [ebp-8]
 005B7977    mov         edx,dword ptr [edx]
 005B7979    mov         eax,dword ptr [ebp-4]
 005B797C    call        005B7990
 005B7981    mov         esp,ebp
 005B7983    pop         ebp
 005B7984    ret
*}
end;

//005B7990
{*procedure sub_005B7990(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?; ?:?);
begin
 005B7990    push        ebp
 005B7991    mov         ebp,esp
 005B7993    add         esp,0FFFFFFD4
 005B7996    push        ebx
 005B7997    xor         ebx,ebx
 005B7999    mov         dword ptr [ebp-2C],ebx
 005B799C    mov         dword ptr [ebp-0C],ecx
 005B799F    mov         dword ptr [ebp-8],edx
 005B79A2    mov         dword ptr [ebp-4],eax
 005B79A5    xor         eax,eax
 005B79A7    push        ebp
 005B79A8    push        5B7B21
 005B79AD    push        dword ptr fs:[eax]
 005B79B0    mov         dword ptr fs:[eax],esp
 005B79B3    cmp         dword ptr [ebp-8],0
>005B79B7    jl          005B79DB
 005B79B9    cmp         dword ptr [ebp-0C],0
>005B79BD    jl          005B79DB
 005B79BF    mov         eax,dword ptr [ebp-8]
 005B79C2    mov         edx,dword ptr [ebp-4]
 005B79C5    cmp         eax,dword ptr [edx+21C];TCustomGrid.FColCount:Longint
>005B79CB    jge         005B79DB
 005B79CD    mov         eax,dword ptr [ebp-0C]
 005B79D0    mov         edx,dword ptr [ebp-4]
 005B79D3    cmp         eax,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
>005B79D9    jl          005B79F0
 005B79DB    lea         edx,[ebp-2C]
 005B79DE    mov         eax,[006EA080];^gvar_00654FF4
 005B79E3    call        LoadResString
 005B79E8    mov         eax,dword ptr [ebp-2C]
 005B79EB    call        005B30F8
 005B79F0    mov         ecx,dword ptr [ebp-0C]
 005B79F3    mov         edx,dword ptr [ebp-8]
 005B79F6    mov         eax,dword ptr [ebp-4]
 005B79F9    mov         ebx,dword ptr [eax]
 005B79FB    call        dword ptr [ebx+0D8];TCustomGrid.sub_005B4FEC
 005B7A01    test        al,al
>005B7A03    je          005B7B0B
 005B7A09    lea         edx,[ebp-28]
 005B7A0C    mov         eax,dword ptr [ebp-4]
 005B7A0F    call        005B97A0
 005B7A14    mov         eax,dword ptr [ebp-4]
 005B7A17    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B7A1D    mov         dword ptr [ebp-14],edx
 005B7A20    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B7A26    mov         dword ptr [ebp-10],edx
 005B7A29    mov         eax,dword ptr [ebp-8]
 005B7A2C    mov         edx,dword ptr [ebp-4]
 005B7A2F    mov         dword ptr [edx+228],eax;TCustomGrid.FCurrent:TGridCoord
 005B7A35    mov         eax,dword ptr [ebp-0C]
 005B7A38    mov         edx,dword ptr [ebp-4]
 005B7A3B    mov         dword ptr [edx+22C],eax;TCustomGrid.FCurrent:Longint
 005B7A41    mov         eax,dword ptr [ebp-4]
 005B7A44    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>005B7A4B    jne         005B7A55
 005B7A4D    mov         eax,dword ptr [ebp-4]
 005B7A50    call        005B4A88
 005B7A55    cmp         byte ptr [ebp+0C],0
>005B7A59    jne         005B7A67
 005B7A5B    mov         eax,dword ptr [ebp-4]
 005B7A5E    test        byte ptr [eax+248],10;TCustomGrid.FOptions:TGridOptions
>005B7A65    jne         005B7AA4
 005B7A67    mov         eax,dword ptr [ebp-4]
 005B7A6A    mov         edx,dword ptr [ebp-4]
 005B7A6D    mov         ecx,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
 005B7A73    mov         dword ptr [eax+210],ecx;TCustomGrid.FAnchor:TGridCoord
 005B7A79    mov         ecx,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
 005B7A7F    mov         dword ptr [eax+214],ecx
 005B7A85    mov         eax,dword ptr [ebp-4]
 005B7A88    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>005B7A8F    je          005B7AA4
 005B7A91    mov         eax,dword ptr [ebp-4]
 005B7A94    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005B7A9A    dec         eax
 005B7A9B    mov         edx,dword ptr [ebp-4]
 005B7A9E    mov         dword ptr [edx+210],eax;TCustomGrid.FAnchor:TGridCoord
 005B7AA4    mov         eax,dword ptr [ebp-4]
 005B7AA7    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>005B7AAE    je          005B7AC2
 005B7AB0    mov         eax,dword ptr [ebp-4]
 005B7AB3    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B7AB9    mov         edx,dword ptr [ebp-4]
 005B7ABC    mov         dword ptr [edx+228],eax;TCustomGrid.FCurrent:TGridCoord
 005B7AC2    cmp         byte ptr [ebp+8],0
>005B7AC6    je          005B7AD9
 005B7AC8    mov         eax,dword ptr [ebp-4]
 005B7ACB    lea         edx,[eax+228];TCustomGrid.FCurrent:TGridCoord
 005B7AD1    mov         eax,dword ptr [ebp-4]
 005B7AD4    call        005B69D8
 005B7AD9    lea         edx,[ebp-28]
 005B7ADC    mov         eax,dword ptr [ebp-4]
 005B7ADF    call        005B7BE4
 005B7AE4    mov         ecx,dword ptr [ebp-10]
 005B7AE7    mov         edx,dword ptr [ebp-14]
 005B7AEA    mov         eax,dword ptr [ebp-4]
 005B7AED    call        005B7180
 005B7AF2    mov         eax,dword ptr [ebp-4]
 005B7AF5    add         eax,228;TCustomGrid.FCurrent:TGridCoord
 005B7AFA    mov         dword ptr [ebp-18],eax
 005B7AFD    mov         ecx,dword ptr [ebp-0C]
 005B7B00    mov         edx,dword ptr [ebp-8]
 005B7B03    mov         eax,dword ptr [ebp-4]
 005B7B06    call        005B7180
 005B7B0B    xor         eax,eax
 005B7B0D    pop         edx
 005B7B0E    pop         ecx
 005B7B0F    pop         ecx
 005B7B10    mov         dword ptr fs:[eax],edx
 005B7B13    push        5B7B28
 005B7B18    lea         eax,[ebp-2C]
 005B7B1B    call        @LStrClr
 005B7B20    ret
>005B7B21    jmp         @HandleFinally
>005B7B26    jmp         005B7B18
 005B7B28    pop         ebx
 005B7B29    mov         esp,ebp
 005B7B2B    pop         ebp
 005B7B2C    ret         8
end;*}

//005B7B30
{*procedure sub_005B7B30(?:?; ?:?; ?:?);
begin
 005B7B30    push        ebp
 005B7B31    mov         ebp,esp
 005B7B33    add         esp,0FFFFFFEC
 005B7B36    mov         dword ptr [ebp-0C],ecx
 005B7B39    mov         dword ptr [ebp-8],edx
 005B7B3C    mov         dword ptr [ebp-4],eax
 005B7B3F    mov         eax,dword ptr [ebp-8]
 005B7B42    mov         edx,dword ptr [ebp-4]
 005B7B45    cmp         eax,dword ptr [edx+258]
>005B7B4B    jne         005B7B5B
 005B7B4D    mov         eax,dword ptr [ebp-0C]
 005B7B50    mov         edx,dword ptr [ebp-4]
 005B7B53    cmp         eax,dword ptr [edx+25C]
>005B7B59    je          005B7B9E
 005B7B5B    mov         eax,dword ptr [ebp-4]
 005B7B5E    mov         edx,dword ptr [eax]
 005B7B60    call        dword ptr [edx+88]
 005B7B66    mov         eax,dword ptr [ebp-4]
 005B7B69    mov         edx,dword ptr [eax+258]
 005B7B6F    mov         dword ptr [ebp-14],edx
 005B7B72    mov         edx,dword ptr [eax+25C]
 005B7B78    mov         dword ptr [ebp-10],edx
 005B7B7B    mov         eax,dword ptr [ebp-8]
 005B7B7E    mov         edx,dword ptr [ebp-4]
 005B7B81    mov         dword ptr [edx+258],eax
 005B7B87    mov         eax,dword ptr [ebp-0C]
 005B7B8A    mov         edx,dword ptr [ebp-4]
 005B7B8D    mov         dword ptr [edx+25C],eax
 005B7B93    lea         edx,[ebp-14]
 005B7B96    mov         eax,dword ptr [ebp-4]
 005B7B99    call        TCustomGrid.TopLeftMoved
 005B7B9E    mov         esp,ebp
 005B7BA0    pop         ebp
 005B7BA1    ret
end;*}

//005B7BA4
{*procedure sub_005B7BA4(?:?; ?:?; ?:?);
begin
 005B7BA4    push        ebp
 005B7BA5    mov         ebp,esp
 005B7BA7    add         esp,0FFFFFFF4
 005B7BAA    mov         dword ptr [ebp-0C],ecx
 005B7BAD    mov         dword ptr [ebp-8],edx
 005B7BB0    mov         dword ptr [ebp-4],eax
 005B7BB3    mov         eax,dword ptr [ebp-4]
 005B7BB6    call        005B71B8
 005B7BBB    mov         esp,ebp
 005B7BBD    pop         ebp
 005B7BBE    ret         4
end;*}

//005B7BC4
{*procedure sub_005B7BC4(?:TCustomGrid; ?:Longint; ?:?);
begin
 005B7BC4    push        ebp
 005B7BC5    mov         ebp,esp
 005B7BC7    add         esp,0FFFFFFF4
 005B7BCA    mov         dword ptr [ebp-0C],ecx
 005B7BCD    mov         dword ptr [ebp-8],edx
 005B7BD0    mov         dword ptr [ebp-4],eax
 005B7BD3    mov         eax,dword ptr [ebp-4]
 005B7BD6    call        005B71B8
 005B7BDB    mov         esp,ebp
 005B7BDD    pop         ebp
 005B7BDE    ret         4
end;*}

//005B7BE4
{*procedure sub_005B7BE4(?:TCustomGrid; ?:?);
begin
 005B7BE4    push        ebp
 005B7BE5    mov         ebp,esp
 005B7BE7    add         esp,0FFFFFF84
 005B7BEA    mov         dword ptr [ebp-8],edx
 005B7BED    mov         dword ptr [ebp-4],eax
 005B7BF0    mov         eax,dword ptr [ebp-4]
 005B7BF3    call        TWinControl.HandleAllocated
 005B7BF8    test        al,al
>005B7BFA    je          005B7C5D
 005B7BFC    push        1
 005B7BFE    lea         ecx,[ebp-1C]
 005B7C01    mov         edx,dword ptr [ebp-8]
 005B7C04    mov         eax,dword ptr [ebp-4]
 005B7C07    call        005B6FFC
 005B7C0C    push        1
 005B7C0E    lea         edx,[ebp-7C]
 005B7C11    mov         eax,dword ptr [ebp-4]
 005B7C14    call        005B97A0
 005B7C19    lea         edx,[ebp-7C]
 005B7C1C    lea         ecx,[ebp-2C]
 005B7C1F    mov         eax,dword ptr [ebp-4]
 005B7C22    call        005B6FFC
 005B7C27    lea         ecx,[ebp-6C]
 005B7C2A    lea         edx,[ebp-2C]
 005B7C2D    lea         eax,[ebp-1C]
 005B7C30    call        005B3330
 005B7C35    xor         eax,eax
 005B7C37    mov         dword ptr [ebp-0C],eax
 005B7C3A    push        0
 005B7C3C    mov         eax,dword ptr [ebp-0C]
 005B7C3F    add         eax,eax
 005B7C41    lea         eax,[ebp+eax*8-6C]
 005B7C45    push        eax
 005B7C46    mov         eax,dword ptr [ebp-4]
 005B7C49    call        TWinControl.GetHandle
 005B7C4E    push        eax
 005B7C4F    call        USER32.InvalidateRect
 005B7C54    inc         dword ptr [ebp-0C]
 005B7C57    cmp         dword ptr [ebp-0C],4
>005B7C5B    jne         005B7C3A
 005B7C5D    mov         esp,ebp
 005B7C5F    pop         ebp
 005B7C60    ret
end;*}

//005B7C64
{*procedure sub_005B7C64(?:?; ?:?; ?:?; ?:?);
begin
 005B7C64    push        ebp
 005B7C65    mov         ebp,esp
 005B7C67    add         esp,0FFFFFFD0
 005B7C6A    push        esi
 005B7C6B    mov         dword ptr [ebp-0C],ecx
 005B7C6E    mov         dword ptr [ebp-8],edx
 005B7C71    mov         dword ptr [ebp-4],eax
 005B7C74    mov         dword ptr [ebp-10],2
 005B7C7B    mov         eax,dword ptr [ebp-4]
 005B7C7E    cmp         byte ptr [eax+28C],0
>005B7C85    jne         005B7C8B
 005B7C87    or          dword ptr [ebp-10],4
 005B7C8B    cmp         dword ptr [ebp-0C],0
>005B7C8F    jne         005B7D21
 005B7C95    mov         eax,dword ptr [ebp-4]
 005B7C98    mov         si,0FFC8
 005B7C9C    call        @CallDynaInst
 005B7CA1    test        al,al
>005B7CA3    jne         005B7CC5
 005B7CA5    mov         eax,dword ptr [ebp+8]
 005B7CA8    mov         eax,dword ptr [eax+3C]
 005B7CAB    push        eax
 005B7CAC    lea         eax,[ebp-20]
 005B7CAF    push        eax
 005B7CB0    mov         ecx,dword ptr [ebp+8]
 005B7CB3    mov         ecx,dword ptr [ecx+0C]
 005B7CB6    mov         eax,dword ptr [ebp+8]
 005B7CB9    mov         eax,dword ptr [eax+4]
 005B7CBC    xor         edx,edx
 005B7CBE    call        Rect
>005B7CC3    jmp         005B7CF8
 005B7CC5    mov         eax,dword ptr [ebp+8]
 005B7CC8    mov         eax,dword ptr [eax+3C]
 005B7CCB    push        eax
 005B7CCC    lea         eax,[ebp-20]
 005B7CCF    push        eax
 005B7CD0    mov         eax,dword ptr [ebp-4]
 005B7CD3    call        TControl.GetClientWidth
 005B7CD8    mov         edx,dword ptr [ebp+8]
 005B7CDB    sub         eax,dword ptr [edx+4]
 005B7CDE    push        eax
 005B7CDF    mov         eax,dword ptr [ebp-4]
 005B7CE2    call        TControl.GetClientWidth
 005B7CE7    mov         edx,dword ptr [ebp+8]
 005B7CEA    sub         eax,dword ptr [edx+0C]
 005B7CED    xor         edx,edx
 005B7CEF    pop         ecx
 005B7CF0    call        Rect
 005B7CF5    neg         dword ptr [ebp-8]
 005B7CF8    mov         eax,dword ptr [ebp-10]
 005B7CFB    push        eax
 005B7CFC    push        0
 005B7CFE    push        0
 005B7D00    lea         eax,[ebp-20]
 005B7D03    push        eax
 005B7D04    lea         eax,[ebp-20]
 005B7D07    push        eax
 005B7D08    push        0
 005B7D0A    mov         eax,dword ptr [ebp-8]
 005B7D0D    push        eax
 005B7D0E    mov         eax,dword ptr [ebp-4]
 005B7D11    call        TWinControl.GetHandle
 005B7D16    push        eax
 005B7D17    call        USER32.ScrollWindowEx
>005B7D1C    jmp         005B7E3A
 005B7D21    cmp         dword ptr [ebp-8],0
>005B7D25    jne         005B7D6E
 005B7D27    mov         eax,dword ptr [ebp+8]
 005B7D2A    mov         eax,dword ptr [eax+3C]
 005B7D2D    push        eax
 005B7D2E    lea         eax,[ebp-20]
 005B7D31    push        eax
 005B7D32    mov         ecx,dword ptr [ebp+8]
 005B7D35    mov         ecx,dword ptr [ecx+0C]
 005B7D38    mov         edx,dword ptr [ebp+8]
 005B7D3B    mov         edx,dword ptr [edx+34]
 005B7D3E    xor         eax,eax
 005B7D40    call        Rect
 005B7D45    mov         eax,dword ptr [ebp-10]
 005B7D48    push        eax
 005B7D49    push        0
 005B7D4B    push        0
 005B7D4D    lea         eax,[ebp-20]
 005B7D50    push        eax
 005B7D51    lea         eax,[ebp-20]
 005B7D54    push        eax
 005B7D55    mov         eax,dword ptr [ebp-0C]
 005B7D58    push        eax
 005B7D59    push        0
 005B7D5B    mov         eax,dword ptr [ebp-4]
 005B7D5E    call        TWinControl.GetHandle
 005B7D63    push        eax
 005B7D64    call        USER32.ScrollWindowEx
>005B7D69    jmp         005B7E3A
 005B7D6E    mov         eax,dword ptr [ebp+8]
 005B7D71    mov         eax,dword ptr [eax+34]
 005B7D74    push        eax
 005B7D75    lea         eax,[ebp-20]
 005B7D78    push        eax
 005B7D79    mov         ecx,dword ptr [ebp+8]
 005B7D7C    mov         ecx,dword ptr [ecx+0C]
 005B7D7F    mov         eax,dword ptr [ebp+8]
 005B7D82    mov         eax,dword ptr [eax+4]
 005B7D85    xor         edx,edx
 005B7D87    call        Rect
 005B7D8C    mov         eax,dword ptr [ebp-10]
 005B7D8F    push        eax
 005B7D90    push        0
 005B7D92    push        0
 005B7D94    lea         eax,[ebp-20]
 005B7D97    push        eax
 005B7D98    lea         eax,[ebp-20]
 005B7D9B    push        eax
 005B7D9C    push        0
 005B7D9E    mov         eax,dword ptr [ebp-8]
 005B7DA1    push        eax
 005B7DA2    mov         eax,dword ptr [ebp-4]
 005B7DA5    call        TWinControl.GetHandle
 005B7DAA    push        eax
 005B7DAB    call        USER32.ScrollWindowEx
 005B7DB0    mov         eax,dword ptr [ebp+8]
 005B7DB3    mov         eax,dword ptr [eax+3C]
 005B7DB6    push        eax
 005B7DB7    lea         eax,[ebp-20]
 005B7DBA    push        eax
 005B7DBB    mov         ecx,dword ptr [ebp+8]
 005B7DBE    mov         ecx,dword ptr [ecx+4]
 005B7DC1    mov         edx,dword ptr [ebp+8]
 005B7DC4    mov         edx,dword ptr [edx+34]
 005B7DC7    xor         eax,eax
 005B7DC9    call        Rect
 005B7DCE    mov         eax,dword ptr [ebp-10]
 005B7DD1    push        eax
 005B7DD2    push        0
 005B7DD4    push        0
 005B7DD6    lea         eax,[ebp-20]
 005B7DD9    push        eax
 005B7DDA    lea         eax,[ebp-20]
 005B7DDD    push        eax
 005B7DDE    mov         eax,dword ptr [ebp-0C]
 005B7DE1    push        eax
 005B7DE2    push        0
 005B7DE4    mov         eax,dword ptr [ebp-4]
 005B7DE7    call        TWinControl.GetHandle
 005B7DEC    push        eax
 005B7DED    call        USER32.ScrollWindowEx
 005B7DF2    mov         eax,dword ptr [ebp+8]
 005B7DF5    mov         eax,dword ptr [eax+3C]
 005B7DF8    push        eax
 005B7DF9    lea         eax,[ebp-20]
 005B7DFC    push        eax
 005B7DFD    mov         ecx,dword ptr [ebp+8]
 005B7E00    mov         ecx,dword ptr [ecx+0C]
 005B7E03    mov         edx,dword ptr [ebp+8]
 005B7E06    mov         edx,dword ptr [edx+34]
 005B7E09    mov         eax,dword ptr [ebp+8]
 005B7E0C    mov         eax,dword ptr [eax+4]
 005B7E0F    call        Rect
 005B7E14    mov         eax,dword ptr [ebp-10]
 005B7E17    push        eax
 005B7E18    push        0
 005B7E1A    push        0
 005B7E1C    lea         eax,[ebp-20]
 005B7E1F    push        eax
 005B7E20    lea         eax,[ebp-20]
 005B7E23    push        eax
 005B7E24    mov         eax,dword ptr [ebp-0C]
 005B7E27    push        eax
 005B7E28    mov         eax,dword ptr [ebp-8]
 005B7E2B    push        eax
 005B7E2C    mov         eax,dword ptr [ebp-4]
 005B7E2F    call        TWinControl.GetHandle
 005B7E34    push        eax
 005B7E35    call        USER32.ScrollWindowEx
 005B7E3A    mov         eax,dword ptr [ebp-4]
 005B7E3D    test        byte ptr [eax+249],10
>005B7E44    je          005B7E5C
 005B7E46    lea         edx,[ebp-30]
 005B7E49    mov         eax,dword ptr [ebp-4]
 005B7E4C    call        005B97A0
 005B7E51    lea         edx,[ebp-30]
 005B7E54    mov         eax,dword ptr [ebp-4]
 005B7E57    call        005B71CC
 005B7E5C    pop         esi
 005B7E5D    mov         esp,ebp
 005B7E5F    pop         ebp
 005B7E60    ret         4
end;*}

//005B7E64
{*procedure sub_005B7E64(?:?; ?:?; ?:?);
begin
 005B7E64    push        ebp
 005B7E65    mov         ebp,esp
 005B7E67    add         esp,0FFFFFF90
 005B7E6A    mov         dword ptr [ebp-0C],ecx
 005B7E6D    mov         dword ptr [ebp-8],edx
 005B7E70    mov         dword ptr [ebp-4],eax
 005B7E73    lea         edx,[ebp-70]
 005B7E76    mov         eax,dword ptr [ebp-4]
 005B7E79    call        TCustomGrid.CalcDrawInfo
 005B7E7E    lea         eax,[ebp-70]
 005B7E81    push        eax
 005B7E82    mov         ecx,dword ptr [ebp-0C]
 005B7E85    mov         edx,dword ptr [ebp-8]
 005B7E88    mov         eax,dword ptr [ebp-4]
 005B7E8B    call        005B7C64
 005B7E90    mov         esp,ebp
 005B7E92    pop         ebp
 005B7E93    ret
end;*}

//005B7E94
{*function sub_005B7E94(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005B7E94    push        ebp
 005B7E95    mov         ebp,esp
 005B7E97    add         esp,0FFFFFFE0
 005B7E9A    push        ebx
 005B7E9B    mov         dword ptr [ebp-0C],ecx
 005B7E9E    mov         dword ptr [ebp-8],edx
 005B7EA1    mov         dword ptr [ebp-4],eax
 005B7EA4    mov         byte ptr [ebp-0D],0
 005B7EA8    mov         eax,dword ptr [ebp-8]
 005B7EAB    cmp         eax,dword ptr [ebp-0C]
>005B7EAE    jge         005B7EBE
 005B7EB0    mov         eax,dword ptr [ebp-8]
 005B7EB3    mov         dword ptr [ebp-14],eax
 005B7EB6    mov         eax,dword ptr [ebp-0C]
 005B7EB9    mov         dword ptr [ebp-18],eax
>005B7EBC    jmp         005B7ECA
 005B7EBE    mov         eax,dword ptr [ebp-0C]
 005B7EC1    mov         dword ptr [ebp-14],eax
 005B7EC4    mov         eax,dword ptr [ebp-8]
 005B7EC7    mov         dword ptr [ebp-18],eax
 005B7ECA    mov         eax,dword ptr [ebp+8]
 005B7ECD    xor         edx,edx
 005B7ECF    mov         dword ptr [eax],edx
 005B7ED1    mov         eax,dword ptr [ebp-14]
 005B7ED4    mov         edx,dword ptr [ebp-18]
 005B7ED7    dec         edx
 005B7ED8    sub         edx,eax
>005B7EDA    jl          005B7F21
 005B7EDC    inc         edx
 005B7EDD    mov         dword ptr [ebp-20],edx
 005B7EE0    mov         dword ptr [ebp-1C],eax
 005B7EE3    mov         ebx,dword ptr [ebp-4]
 005B7EE6    mov         edx,dword ptr [ebp-1C]
 005B7EE9    mov         eax,dword ptr [ebx+2C]
 005B7EEC    call        dword ptr [ebx+28]
 005B7EEF    mov         edx,dword ptr [ebp-4]
 005B7EF2    add         eax,dword ptr [edx]
 005B7EF4    mov         edx,dword ptr [ebp+8]
 005B7EF7    add         dword ptr [edx],eax
 005B7EF9    mov         eax,dword ptr [ebp-4]
 005B7EFC    mov         eax,dword ptr [eax+8]
 005B7EFF    mov         edx,dword ptr [ebp-4]
 005B7F02    sub         eax,dword ptr [edx+4]
 005B7F05    mov         edx,dword ptr [ebp+8]
 005B7F08    cmp         eax,dword ptr [edx]
>005B7F0A    jge         005B7F19
 005B7F0C    mov         eax,dword ptr [ebp+0C]
 005B7F0F    mov         eax,dword ptr [eax-4]
 005B7F12    call        005B71B8
>005B7F17    jmp         005B7F32
 005B7F19    inc         dword ptr [ebp-1C]
 005B7F1C    dec         dword ptr [ebp-20]
>005B7F1F    jne         005B7EE3
 005B7F21    mov         eax,dword ptr [ebp-8]
 005B7F24    cmp         eax,dword ptr [ebp-0C]
>005B7F27    jge         005B7F2E
 005B7F29    mov         eax,dword ptr [ebp+8]
 005B7F2C    neg         dword ptr [eax]
 005B7F2E    mov         byte ptr [ebp-0D],1
 005B7F32    mov         al,byte ptr [ebp-0D]
 005B7F35    pop         ebx
 005B7F36    mov         esp,ebp
 005B7F38    pop         ebp
 005B7F39    ret         4
end;*}

//005B7F3C
procedure TCustomGrid.TopLeftMoved(const OldTopLeft:TGridCoord);
begin
{*
 005B7F3C    push        ebp
 005B7F3D    mov         ebp,esp
 005B7F3F    add         esp,0FFFFFF90
 005B7F42    push        esi
 005B7F43    mov         dword ptr [ebp-8],edx
 005B7F46    mov         dword ptr [ebp-4],eax
 005B7F49    mov         eax,dword ptr [ebp-4]
 005B7F4C    call        TCustomGrid.UpdateScrollPos
 005B7F51    lea         edx,[ebp-70]
 005B7F54    mov         eax,dword ptr [ebp-4]
 005B7F57    call        TCustomGrid.CalcDrawInfo
 005B7F5C    push        ebp
 005B7F5D    lea         eax,[ebp-10]
 005B7F60    push        eax
 005B7F61    mov         eax,dword ptr [ebp-4]
 005B7F64    mov         ecx,dword ptr [eax+258]
 005B7F6A    mov         edx,dword ptr [ebp-8]
 005B7F6D    mov         edx,dword ptr [edx]
 005B7F6F    lea         eax,[ebp-70]
 005B7F72    call        005B7E94
 005B7F77    pop         ecx
 005B7F78    test        al,al
>005B7F7A    je          005B7FAF
 005B7F7C    push        ebp
 005B7F7D    lea         eax,[ebp-0C]
 005B7F80    push        eax
 005B7F81    mov         eax,dword ptr [ebp-4]
 005B7F84    mov         ecx,dword ptr [eax+25C]
 005B7F8A    mov         edx,dword ptr [ebp-8]
 005B7F8D    mov         edx,dword ptr [edx+4]
 005B7F90    lea         eax,[ebp-40]
 005B7F93    call        005B7E94
 005B7F98    pop         ecx
 005B7F99    test        al,al
>005B7F9B    je          005B7FAF
 005B7F9D    lea         eax,[ebp-70]
 005B7FA0    push        eax
 005B7FA1    mov         ecx,dword ptr [ebp-0C]
 005B7FA4    mov         edx,dword ptr [ebp-10]
 005B7FA7    mov         eax,dword ptr [ebp-4]
 005B7FAA    call        005B7C64
 005B7FAF    mov         eax,dword ptr [ebp-4]
 005B7FB2    mov         si,0FFA7
 005B7FB6    call        @CallDynaInst
 005B7FBB    pop         esi
 005B7FBC    mov         esp,ebp
 005B7FBE    pop         ebp
 005B7FBF    ret
*}
end;

//005B7FC0
{*procedure sub_005B7FC0(?:?; ?:?; ?:?);
begin
 005B7FC0    push        ebp
 005B7FC1    mov         ebp,esp
 005B7FC3    add         esp,0FFFFFFF8
 005B7FC6    push        esi
 005B7FC7    mov         dword ptr [ebp-8],edx
 005B7FCA    mov         word ptr [ebp-2],ax
 005B7FCE    mov         eax,dword ptr [ebp+8]
 005B7FD1    mov         eax,dword ptr [eax-4]
 005B7FD4    mov         si,0FFC8
 005B7FD8    call        @CallDynaInst
 005B7FDD    test        al,al
>005B7FDF    je          005B8016
 005B7FE1    cmp         word ptr [ebp-2],0
>005B7FE6    jne         005B8016
 005B7FE8    mov         eax,dword ptr [ebp+8]
 005B7FEB    mov         eax,dword ptr [eax-4]
 005B7FEE    cmp         dword ptr [eax+21C],1
>005B7FF5    je          005B8004
 005B7FF7    mov         eax,7F
 005B7FFC    sub         eax,dword ptr [ebp-8]
 005B7FFF    mov         dword ptr [ebp-8],eax
>005B8002    jmp         005B8016
 005B8004    mov         eax,dword ptr [ebp+8]
 005B8007    mov         eax,dword ptr [eax-8]
 005B800A    mov         edx,dword ptr [ebp+8]
 005B800D    sub         eax,dword ptr [edx-0C]
 005B8010    sub         eax,dword ptr [ebp-8]
 005B8013    mov         dword ptr [ebp-8],eax
 005B8016    movzx       eax,word ptr [ebp-2]
 005B801A    push        eax
 005B801B    mov         eax,dword ptr [ebp+8]
 005B801E    mov         eax,dword ptr [eax-4]
 005B8021    call        TWinControl.GetHandle
 005B8026    push        eax
 005B8027    call        USER32.GetScrollPos
 005B802C    cmp         eax,dword ptr [ebp-8]
>005B802F    je          005B804D
 005B8031    push        0FF
 005B8033    mov         eax,dword ptr [ebp-8]
 005B8036    push        eax
 005B8037    movzx       eax,word ptr [ebp-2]
 005B803B    push        eax
 005B803C    mov         eax,dword ptr [ebp+8]
 005B803F    mov         eax,dword ptr [eax-4]
 005B8042    call        TWinControl.GetHandle
 005B8047    push        eax
 005B8048    call        USER32.SetScrollPos
 005B804D    pop         esi
 005B804E    pop         ecx
 005B804F    pop         ecx
 005B8050    pop         ebp
 005B8051    ret
end;*}

//005B8054
procedure TCustomGrid.UpdateScrollPos;
begin
{*
 005B8054    push        ebp
 005B8055    mov         ebp,esp
 005B8057    add         esp,0FFFFFF80
 005B805A    mov         dword ptr [ebp-4],eax
 005B805D    mov         eax,dword ptr [ebp-4]
 005B8060    call        TWinControl.HandleAllocated
 005B8065    test        al,al
>005B8067    je          005B81BD
 005B806D    mov         eax,dword ptr [ebp-4]
 005B8070    cmp         byte ptr [eax+254],0
>005B8077    je          005B81BD
 005B807D    lea         edx,[ebp-78]
 005B8080    mov         eax,dword ptr [ebp-4]
 005B8083    call        TCustomGrid.CalcDrawInfo
 005B8088    mov         eax,dword ptr [ebp-4]
 005B808B    mov         eax,dword ptr [eax+21C]
 005B8091    dec         eax
 005B8092    mov         dword ptr [ebp-14],eax
 005B8095    mov         eax,dword ptr [ebp-4]
 005B8098    mov         eax,dword ptr [eax+24C]
 005B809E    dec         eax
 005B809F    mov         dword ptr [ebp-10],eax
 005B80A2    lea         eax,[ebp-80]
 005B80A5    push        eax
 005B80A6    lea         ecx,[ebp-78]
 005B80A9    lea         edx,[ebp-14]
 005B80AC    mov         eax,dword ptr [ebp-4]
 005B80AF    call        TCustomGrid.CalcMaxTopLeft
 005B80B4    mov         eax,dword ptr [ebp-80]
 005B80B7    mov         dword ptr [ebp-14],eax
 005B80BA    mov         eax,dword ptr [ebp-7C]
 005B80BD    mov         dword ptr [ebp-10],eax
 005B80C0    mov         eax,dword ptr [ebp-4]
 005B80C3    mov         al,byte ptr [eax+254]
 005B80C9    sub         al,1
>005B80CB    je          005B80D5
 005B80CD    sub         al,2
>005B80CF    jne         005B817A
 005B80D5    mov         eax,dword ptr [ebp-4]
 005B80D8    cmp         dword ptr [eax+21C],1
>005B80DF    jne         005B8148
 005B80E1    mov         edx,dword ptr [ebp-5C]
 005B80E4    mov         eax,dword ptr [ebp-4]
 005B80E7    call        TCustomGrid.GetColWidths
 005B80EC    mov         dword ptr [ebp-8],eax
 005B80EF    mov         eax,dword ptr [ebp-4]
 005B80F2    call        TControl.GetClientWidth
 005B80F7    sub         eax,dword ptr [ebp-74]
 005B80FA    mov         dword ptr [ebp-0C],eax
 005B80FD    mov         eax,dword ptr [ebp-4]
 005B8100    cmp         dword ptr [eax+288],0
>005B8107    jle         005B8134
 005B8109    mov         eax,dword ptr [ebp-4]
 005B810C    mov         edx,dword ptr [ebp-8]
 005B810F    sub         edx,dword ptr [eax+288]
 005B8115    cmp         edx,dword ptr [ebp-0C]
>005B8118    jge         005B8134
 005B811A    mov         eax,dword ptr [ebp-8]
 005B811D    sub         eax,dword ptr [ebp-0C]
 005B8120    push        eax
 005B8121    push        1
 005B8123    mov         ecx,4
 005B8128    xor         edx,edx
 005B812A    mov         eax,dword ptr [ebp-4]
 005B812D    call        005B7674
>005B8132    jmp         005B817A
 005B8134    push        ebp
 005B8135    mov         eax,dword ptr [ebp-4]
 005B8138    mov         edx,dword ptr [eax+288]
 005B813E    xor         eax,eax
 005B8140    call        005B7FC0
 005B8145    pop         ecx
>005B8146    jmp         005B817A
 005B8148    push        ebp
 005B8149    mov         eax,dword ptr [ebp-4]
 005B814C    mov         edx,dword ptr [ebp-14]
 005B814F    sub         edx,dword ptr [eax+238]
 005B8155    push        edx
 005B8156    push        7F
 005B8158    mov         eax,dword ptr [ebp-4]
 005B815B    mov         eax,dword ptr [eax+258]
 005B8161    mov         edx,dword ptr [ebp-4]
 005B8164    sub         eax,dword ptr [edx+238]
 005B816A    push        eax
 005B816B    call        KERNEL32.MulDiv
 005B8170    mov         edx,eax
 005B8172    xor         eax,eax
 005B8174    call        005B7FC0
 005B8179    pop         ecx
 005B817A    mov         eax,dword ptr [ebp-4]
 005B817D    mov         al,byte ptr [eax+254]
 005B8183    add         al,0FE
 005B8185    sub         al,2
>005B8187    jae         005B81BD
 005B8189    push        ebp
 005B818A    mov         eax,dword ptr [ebp-4]
 005B818D    mov         edx,dword ptr [ebp-10]
 005B8190    sub         edx,dword ptr [eax+23C]
 005B8196    push        edx
 005B8197    push        7F
 005B8199    mov         eax,dword ptr [ebp-4]
 005B819C    mov         eax,dword ptr [eax+25C]
 005B81A2    mov         edx,dword ptr [ebp-4]
 005B81A5    sub         eax,dword ptr [edx+23C]
 005B81AB    push        eax
 005B81AC    call        KERNEL32.MulDiv
 005B81B1    mov         edx,eax
 005B81B3    mov         ax,1
 005B81B7    call        005B7FC0
 005B81BC    pop         ecx
 005B81BD    mov         esp,ebp
 005B81BF    pop         ebp
 005B81C0    ret
*}
end;

//005B81C4
procedure DoUpdate;
begin
{*
 005B81C4    push        ebp
 005B81C5    mov         ebp,esp
 005B81C7    mov         eax,dword ptr [ebp+8]
 005B81CA    cmp         byte ptr [eax-1],0
>005B81CE    jne         005B81E5
 005B81D0    mov         eax,dword ptr [ebp+8]
 005B81D3    mov         eax,dword ptr [eax-8]
 005B81D6    mov         edx,dword ptr [eax]
 005B81D8    call        dword ptr [edx+88]
 005B81DE    mov         eax,dword ptr [ebp+8]
 005B81E1    mov         byte ptr [eax-1],1
 005B81E5    pop         ebp
 005B81E6    ret
*}
end;

//005B81E8
function ScrollBarVisible(Code:Word):Boolean;
begin
{*
 005B81E8    push        ebp
 005B81E9    mov         ebp,esp
 005B81EB    add         esp,0FFFFFFF4
 005B81EE    mov         word ptr [ebp-2],ax
 005B81F2    mov         byte ptr [ebp-3],0
 005B81F6    mov         eax,dword ptr [ebp+8]
 005B81F9    mov         eax,dword ptr [eax-8]
 005B81FC    cmp         byte ptr [eax+254],3
>005B8203    je          005B8231
 005B8205    cmp         word ptr [ebp-2],0
>005B820A    jne         005B821B
 005B820C    mov         eax,dword ptr [ebp+8]
 005B820F    mov         eax,dword ptr [eax-8]
 005B8212    cmp         byte ptr [eax+254],1
>005B8219    je          005B8231
 005B821B    cmp         word ptr [ebp-2],1
>005B8220    jne         005B8259
 005B8222    mov         eax,dword ptr [ebp+8]
 005B8225    mov         eax,dword ptr [eax-8]
 005B8228    cmp         byte ptr [eax+254],2
>005B822F    jne         005B8259
 005B8231    lea         eax,[ebp-0C]
 005B8234    push        eax
 005B8235    lea         eax,[ebp-8]
 005B8238    push        eax
 005B8239    movzx       eax,word ptr [ebp-2]
 005B823D    push        eax
 005B823E    mov         eax,dword ptr [ebp+8]
 005B8241    mov         eax,dword ptr [eax-8]
 005B8244    call        TWinControl.GetHandle
 005B8249    push        eax
 005B824A    call        USER32.GetScrollRange
 005B824F    mov         eax,dword ptr [ebp-8]
 005B8252    cmp         eax,dword ptr [ebp-0C]
 005B8255    setne       byte ptr [ebp-3]
 005B8259    mov         al,byte ptr [ebp-3]
 005B825C    mov         esp,ebp
 005B825E    pop         ebp
 005B825F    ret
*}
end;

//005B8260
procedure CalcSizeInfo;
begin
{*
 005B8260    push        ebp
 005B8261    mov         ebp,esp
 005B8263    add         esp,0FFFFFFF8
 005B8266    mov         eax,dword ptr [ebp+8]
 005B8269    mov         eax,dword ptr [eax-2C]
 005B826C    push        eax
 005B826D    mov         eax,dword ptr [ebp+8]
 005B8270    mov         ecx,dword ptr [eax-5C]
 005B8273    mov         eax,dword ptr [ebp+8]
 005B8276    lea         edx,[eax-68]
 005B8279    mov         eax,dword ptr [ebp+8]
 005B827C    mov         eax,dword ptr [eax-8]
 005B827F    call        TCustomGrid.CalcDrawInfoXY
 005B8284    mov         eax,dword ptr [ebp+8]
 005B8287    mov         eax,dword ptr [eax-8]
 005B828A    mov         eax,dword ptr [eax+21C]
 005B8290    dec         eax
 005B8291    mov         edx,dword ptr [ebp+8]
 005B8294    mov         dword ptr [edx-70],eax
 005B8297    mov         eax,dword ptr [ebp+8]
 005B829A    mov         eax,dword ptr [eax-8]
 005B829D    mov         eax,dword ptr [eax+24C]
 005B82A3    dec         eax
 005B82A4    mov         edx,dword ptr [ebp+8]
 005B82A7    mov         dword ptr [edx-6C],eax
 005B82AA    lea         eax,[ebp-8]
 005B82AD    push        eax
 005B82AE    mov         eax,dword ptr [ebp+8]
 005B82B1    lea         ecx,[eax-68]
 005B82B4    mov         eax,dword ptr [ebp+8]
 005B82B7    lea         edx,[eax-70]
 005B82BA    mov         eax,dword ptr [ebp+8]
 005B82BD    mov         eax,dword ptr [eax-8]
 005B82C0    call        TCustomGrid.CalcMaxTopLeft
 005B82C5    mov         eax,dword ptr [ebp+8]
 005B82C8    mov         edx,dword ptr [ebp-8]
 005B82CB    mov         dword ptr [eax-70],edx
 005B82CE    mov         edx,dword ptr [ebp-4]
 005B82D1    mov         dword ptr [eax-6C],edx
 005B82D4    pop         ecx
 005B82D5    pop         ecx
 005B82D6    pop         ebp
 005B82D7    ret
*}
end;

//005B82D8
procedure SetAxisRange(var Max:Longint; var Old:Longint; var Current:Longint; Code:Word; Fixeds:Integer);
begin
{*
 005B82D8    push        ebp
 005B82D9    mov         ebp,esp
 005B82DB    add         esp,0FFFFFFF4
 005B82DE    mov         dword ptr [ebp-0C],ecx
 005B82E1    mov         dword ptr [ebp-8],edx
 005B82E4    mov         dword ptr [ebp-4],eax
 005B82E7    mov         eax,dword ptr [ebp+10]
 005B82EA    push        eax
 005B82EB    call        CalcSizeInfo
 005B82F0    pop         ecx
 005B82F1    mov         eax,dword ptr [ebp-4]
 005B82F4    mov         eax,dword ptr [eax]
 005B82F6    cmp         eax,dword ptr [ebp+8]
>005B82F9    jle         005B8319
 005B82FB    push        0FF
 005B82FD    push        7F
 005B82FF    push        0
 005B8301    movzx       eax,word ptr [ebp+0C]
 005B8305    push        eax
 005B8306    mov         eax,dword ptr [ebp+10]
 005B8309    mov         eax,dword ptr [eax-8]
 005B830C    call        TWinControl.GetHandle
 005B8311    push        eax
 005B8312    call        USER32.SetScrollRange
>005B8317    jmp         005B8335
 005B8319    push        0FF
 005B831B    push        0
 005B831D    push        0
 005B831F    movzx       eax,word ptr [ebp+0C]
 005B8323    push        eax
 005B8324    mov         eax,dword ptr [ebp+10]
 005B8327    mov         eax,dword ptr [eax-8]
 005B832A    call        TWinControl.GetHandle
 005B832F    push        eax
 005B8330    call        USER32.SetScrollRange
 005B8335    mov         eax,dword ptr [ebp-8]
 005B8338    mov         eax,dword ptr [eax]
 005B833A    mov         edx,dword ptr [ebp-4]
 005B833D    cmp         eax,dword ptr [edx]
>005B833F    jle         005B8355
 005B8341    mov         eax,dword ptr [ebp+10]
 005B8344    push        eax
 005B8345    call        DoUpdate
 005B834A    pop         ecx
 005B834B    mov         eax,dword ptr [ebp-4]
 005B834E    mov         eax,dword ptr [eax]
 005B8350    mov         edx,dword ptr [ebp-0C]
 005B8353    mov         dword ptr [edx],eax
 005B8355    mov         esp,ebp
 005B8357    pop         ebp
 005B8358    ret         8
*}
end;

//005B835C
procedure SetHorzRange;
begin
{*
 005B835C    push        ebp
 005B835D    mov         ebp,esp
 005B835F    push        ecx
 005B8360    push        ebx
 005B8361    mov         eax,dword ptr [ebp+8]
 005B8364    mov         al,byte ptr [eax-79]
 005B8367    sub         al,1
>005B8369    je          005B8373
 005B836B    sub         al,2
>005B836D    jne         005B83FA
 005B8373    mov         eax,dword ptr [ebp+8]
 005B8376    mov         eax,dword ptr [eax-8]
 005B8379    cmp         dword ptr [eax+21C],1
>005B8380    jne         005B83C9
 005B8382    mov         eax,dword ptr [ebp+8]
 005B8385    mov         eax,dword ptr [eax-8]
 005B8388    xor         edx,edx
 005B838A    call        TCustomGrid.GetColWidths
 005B838F    mov         ebx,eax
 005B8391    mov         eax,dword ptr [ebp+8]
 005B8394    mov         eax,dword ptr [eax-8]
 005B8397    call        TControl.GetClientWidth
 005B839C    sub         ebx,eax
 005B839E    mov         dword ptr [ebp-4],ebx
 005B83A1    cmp         dword ptr [ebp-4],0
>005B83A5    jge         005B83AC
 005B83A7    xor         eax,eax
 005B83A9    mov         dword ptr [ebp-4],eax
 005B83AC    push        0FF
 005B83AE    mov         eax,dword ptr [ebp-4]
 005B83B1    push        eax
 005B83B2    push        0
 005B83B4    push        0
 005B83B6    mov         eax,dword ptr [ebp+8]
 005B83B9    mov         eax,dword ptr [eax-8]
 005B83BC    call        TWinControl.GetHandle
 005B83C1    push        eax
 005B83C2    call        USER32.SetScrollRange
>005B83C7    jmp         005B83FA
 005B83C9    mov         eax,dword ptr [ebp+8]
 005B83CC    push        eax
 005B83CD    push        0
 005B83CF    mov         eax,dword ptr [ebp+8]
 005B83D2    mov         eax,dword ptr [eax-8]
 005B83D5    mov         eax,dword ptr [eax+238]
 005B83DB    push        eax
 005B83DC    mov         eax,dword ptr [ebp+8]
 005B83DF    mov         eax,dword ptr [eax-8]
 005B83E2    lea         ecx,[eax+258]
 005B83E8    mov         eax,dword ptr [ebp+8]
 005B83EB    lea         edx,[eax-78]
 005B83EE    mov         eax,dword ptr [ebp+8]
 005B83F1    add         eax,0FFFFFF90
 005B83F4    call        SetAxisRange
 005B83F9    pop         ecx
 005B83FA    pop         ebx
 005B83FB    pop         ecx
 005B83FC    pop         ebp
 005B83FD    ret
*}
end;

//005B8400
procedure SetVertRange;
begin
{*
 005B8400    push        ebp
 005B8401    mov         ebp,esp
 005B8403    mov         eax,dword ptr [ebp+8]
 005B8406    mov         al,byte ptr [eax-79]
 005B8409    add         al,0FE
 005B840B    sub         al,2
>005B840D    jae         005B8440
 005B840F    mov         eax,dword ptr [ebp+8]
 005B8412    push        eax
 005B8413    push        1
 005B8415    mov         eax,dword ptr [ebp+8]
 005B8418    mov         eax,dword ptr [eax-8]
 005B841B    mov         eax,dword ptr [eax+23C]
 005B8421    push        eax
 005B8422    mov         eax,dword ptr [ebp+8]
 005B8425    mov         eax,dword ptr [eax-8]
 005B8428    lea         ecx,[eax+25C]
 005B842E    mov         eax,dword ptr [ebp+8]
 005B8431    lea         edx,[eax-74]
 005B8434    mov         eax,dword ptr [ebp+8]
 005B8437    add         eax,0FFFFFF94
 005B843A    call        SetAxisRange
 005B843F    pop         ecx
 005B8440    pop         ebp
 005B8441    ret
*}
end;

//005B8444
procedure TCustomGrid.UpdateScrollRange;
begin
{*
 005B8444    push        ebp
 005B8445    mov         ebp,esp
 005B8447    add         esp,0FFFFFF84
 005B844A    mov         dword ptr [ebp-8],eax
 005B844D    mov         eax,dword ptr [ebp-8]
 005B8450    cmp         byte ptr [eax+254],0
>005B8457    je          005B8588
 005B845D    mov         eax,dword ptr [ebp-8]
 005B8460    call        TWinControl.HandleAllocated
 005B8465    test        al,al
>005B8467    je          005B8588
 005B846D    mov         eax,dword ptr [ebp-8]
 005B8470    cmp         byte ptr [eax+1A6],0
>005B8477    je          005B8588
 005B847D    mov         eax,dword ptr [ebp-8]
 005B8480    call        TControl.GetClientWidth
 005B8485    mov         dword ptr [ebp-5C],eax
 005B8488    mov         eax,dword ptr [ebp-8]
 005B848B    call        TControl.GetClientHeight
 005B8490    mov         dword ptr [ebp-2C],eax
 005B8493    push        ebp
 005B8494    xor         eax,eax
 005B8496    call        ScrollBarVisible
 005B849B    pop         ecx
 005B849C    test        al,al
>005B849E    je          005B84AA
 005B84A0    push        3
 005B84A2    call        USER32.GetSystemMetrics
 005B84A7    add         dword ptr [ebp-2C],eax
 005B84AA    push        ebp
 005B84AB    mov         ax,1
 005B84AF    call        ScrollBarVisible
 005B84B4    pop         ecx
 005B84B5    test        al,al
>005B84B7    je          005B84C3
 005B84B9    push        2
 005B84BB    call        USER32.GetSystemMetrics
 005B84C0    add         dword ptr [ebp-5C],eax
 005B84C3    mov         eax,dword ptr [ebp-8]
 005B84C6    mov         edx,dword ptr [eax+258]
 005B84CC    mov         dword ptr [ebp-78],edx
 005B84CF    mov         edx,dword ptr [eax+25C]
 005B84D5    mov         dword ptr [ebp-74],edx
 005B84D8    mov         eax,dword ptr [ebp-8]
 005B84DB    mov         al,byte ptr [eax+254]
 005B84E1    mov         byte ptr [ebp-79],al
 005B84E4    mov         eax,dword ptr [ebp-8]
 005B84E7    mov         byte ptr [eax+254],0
 005B84EE    mov         byte ptr [ebp-1],0
 005B84F2    xor         eax,eax
 005B84F4    push        ebp
 005B84F5    push        5B8552
 005B84FA    push        dword ptr fs:[eax]
 005B84FD    mov         dword ptr fs:[eax],esp
 005B8500    push        ebp
 005B8501    call        SetHorzRange
 005B8506    pop         ecx
 005B8507    mov         eax,dword ptr [ebp-8]
 005B850A    call        TControl.GetClientHeight
 005B850F    mov         dword ptr [ebp-2C],eax
 005B8512    push        ebp
 005B8513    call        SetVertRange
 005B8518    pop         ecx
 005B8519    mov         eax,dword ptr [ebp-8]
 005B851C    call        TControl.GetClientWidth
 005B8521    cmp         eax,dword ptr [ebp-5C]
>005B8524    je          005B8538
 005B8526    mov         eax,dword ptr [ebp-8]
 005B8529    call        TControl.GetClientWidth
 005B852E    mov         dword ptr [ebp-5C],eax
 005B8531    push        ebp
 005B8532    call        SetHorzRange
 005B8537    pop         ecx
 005B8538    xor         eax,eax
 005B853A    pop         edx
 005B853B    pop         ecx
 005B853C    pop         ecx
 005B853D    mov         dword ptr fs:[eax],edx
 005B8540    push        5B8559
 005B8545    mov         eax,dword ptr [ebp-8]
 005B8548    mov         dl,byte ptr [ebp-79]
 005B854B    mov         byte ptr [eax+254],dl
 005B8551    ret
>005B8552    jmp         @HandleFinally
>005B8557    jmp         005B8545
 005B8559    mov         eax,dword ptr [ebp-8]
 005B855C    call        TCustomGrid.UpdateScrollPos
 005B8561    mov         eax,dword ptr [ebp-8]
 005B8564    mov         eax,dword ptr [eax+258]
 005B856A    cmp         eax,dword ptr [ebp-78]
>005B856D    jne         005B857D
 005B856F    mov         eax,dword ptr [ebp-8]
 005B8572    mov         eax,dword ptr [eax+25C]
 005B8578    cmp         eax,dword ptr [ebp-74]
>005B857B    je          005B8588
 005B857D    lea         edx,[ebp-78]
 005B8580    mov         eax,dword ptr [ebp-8]
 005B8583    call        TCustomGrid.TopLeftMoved
 005B8588    mov         esp,ebp
 005B858A    pop         ebp
 005B858B    ret
*}
end;

//005B858C
{*function sub_005B858C:?;
begin
 005B858C    push        ebp
 005B858D    mov         ebp,esp
 005B858F    add         esp,0FFFFFFF8
 005B8592    mov         dword ptr [ebp-4],eax
 005B8595    mov         ecx,dword ptr [ebp-4]
 005B8598    mov         dl,1
 005B859A    mov         eax,[005B196C];TInplaceEdit
 005B859F    call        TInplaceEdit.Create;TInplaceEdit.Create
 005B85A4    mov         dword ptr [ebp-8],eax
 005B85A7    mov         eax,dword ptr [ebp-8]
 005B85AA    pop         ecx
 005B85AB    pop         ecx
 005B85AC    pop         ebp
 005B85AD    ret
end;*}

//005B85B0
{*procedure sub_005B85B0(?:?);
begin
 005B85B0    push        ebp
 005B85B1    mov         ebp,esp
 005B85B3    add         esp,0FFFFFFF8
 005B85B6    mov         dword ptr [ebp-8],edx
 005B85B9    mov         dword ptr [ebp-4],eax
 005B85BC    mov         edx,dword ptr [ebp-8]
 005B85BF    mov         eax,dword ptr [ebp-4]
 005B85C2    call        005F7FC0
 005B85C7    mov         eax,dword ptr [ebp-8]
 005B85CA    or          dword ptr [eax+4],10000
 005B85D1    mov         eax,dword ptr [ebp-4]
 005B85D4    mov         al,byte ptr [eax+254];TCustomGrid.FScrollBars:TScrollStyle
 005B85DA    add         al,0FE
 005B85DC    sub         al,2
>005B85DE    jae         005B85EA
 005B85E0    mov         eax,dword ptr [ebp-8]
 005B85E3    or          dword ptr [eax+4],200000
 005B85EA    mov         eax,dword ptr [ebp-4]
 005B85ED    mov         al,byte ptr [eax+254];TCustomGrid.FScrollBars:TScrollStyle
 005B85F3    sub         al,1
>005B85F5    je          005B85FB
 005B85F7    sub         al,2
>005B85F9    jne         005B8605
 005B85FB    mov         eax,dword ptr [ebp-8]
 005B85FE    or          dword ptr [eax+4],100000
 005B8605    mov         eax,dword ptr [ebp-8]
 005B8608    mov         dword ptr [eax+24],8
 005B860F    mov         eax,dword ptr [ebp-4]
 005B8612    cmp         byte ptr [eax+218],1;TCustomGrid.FBorderStyle:TBorderStyle
>005B8619    jne         005B8651
 005B861B    mov         eax,[006E9DD8];^gvar_006ECDE0
 005B8620    cmp         byte ptr [eax],0
>005B8623    je          005B8647
 005B8625    mov         eax,dword ptr [ebp-4]
 005B8628    cmp         byte ptr [eax+1A5],0;TCustomGrid.FCtl3D:Boolean
>005B862F    je          005B8647
 005B8631    mov         eax,dword ptr [ebp-8]
 005B8634    and         dword ptr [eax+4],0FF7FFFFF
 005B863B    mov         eax,dword ptr [ebp-8]
 005B863E    or          dword ptr [eax+8],200
>005B8645    jmp         005B8651
 005B8647    mov         eax,dword ptr [ebp-8]
 005B864A    or          dword ptr [eax+4],800000
 005B8651    pop         ecx
 005B8652    pop         ecx
 005B8653    pop         ebp
 005B8654    ret
end;*}

//005B8658
procedure CalcPageExtents;
begin
{*
 005B8658    push        ebp
 005B8659    mov         ebp,esp
 005B865B    mov         eax,dword ptr [ebp+8]
 005B865E    lea         edx,[eax-60]
 005B8661    mov         eax,dword ptr [ebp+8]
 005B8664    mov         eax,dword ptr [eax-64]
 005B8667    call        TCustomGrid.CalcDrawInfo
 005B866C    mov         eax,dword ptr [ebp+8]
 005B866F    mov         eax,dword ptr [eax-50]
 005B8672    mov         edx,dword ptr [ebp+8]
 005B8675    mov         edx,dword ptr [edx-64]
 005B8678    sub         eax,dword ptr [edx+258]
 005B867E    mov         edx,dword ptr [ebp+8]
 005B8681    mov         dword ptr [edx-68],eax
 005B8684    mov         eax,dword ptr [ebp+8]
 005B8687    cmp         dword ptr [eax-68],1
>005B868B    jge         005B8697
 005B868D    mov         eax,dword ptr [ebp+8]
 005B8690    mov         dword ptr [eax-68],1
 005B8697    mov         eax,dword ptr [ebp+8]
 005B869A    mov         eax,dword ptr [eax-20]
 005B869D    mov         edx,dword ptr [ebp+8]
 005B86A0    mov         edx,dword ptr [edx-64]
 005B86A3    sub         eax,dword ptr [edx+25C]
 005B86A9    mov         edx,dword ptr [ebp+8]
 005B86AC    mov         dword ptr [edx-6C],eax
 005B86AF    mov         eax,dword ptr [ebp+8]
 005B86B2    cmp         dword ptr [eax-6C],1
>005B86B6    jge         005B86C2
 005B86B8    mov         eax,dword ptr [ebp+8]
 005B86BB    mov         dword ptr [eax-6C],1
 005B86C2    pop         ebp
 005B86C3    ret
*}
end;

//005B86C4
{*procedure sub_005B86C4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B86C4    push        ebp
 005B86C5    mov         ebp,esp
 005B86C7    add         esp,0FFFFFFF4
 005B86CA    mov         dword ptr [ebp-0C],ecx
 005B86CD    mov         dword ptr [ebp-8],edx
 005B86D0    mov         dword ptr [ebp-4],eax
 005B86D3    mov         eax,dword ptr [ebp-4]
 005B86D6    mov         eax,dword ptr [eax]
 005B86D8    cmp         eax,dword ptr [ebp+0C]
>005B86DB    jle         005B86E7
 005B86DD    mov         eax,dword ptr [ebp-4]
 005B86E0    mov         edx,dword ptr [ebp+0C]
 005B86E3    mov         dword ptr [eax],edx
>005B86E5    jmp         005B86F9
 005B86E7    mov         eax,dword ptr [ebp-4]
 005B86EA    mov         eax,dword ptr [eax]
 005B86EC    cmp         eax,dword ptr [ebp-8]
>005B86EF    jge         005B86F9
 005B86F1    mov         eax,dword ptr [ebp-4]
 005B86F4    mov         edx,dword ptr [ebp-8]
 005B86F7    mov         dword ptr [eax],edx
 005B86F9    mov         eax,dword ptr [ebp-4]
 005B86FC    mov         eax,dword ptr [eax+4]
 005B86FF    cmp         eax,dword ptr [ebp+8]
>005B8702    jle         005B870F
 005B8704    mov         eax,dword ptr [ebp-4]
 005B8707    mov         edx,dword ptr [ebp+8]
 005B870A    mov         dword ptr [eax+4],edx
>005B870D    jmp         005B8723
 005B870F    mov         eax,dword ptr [ebp-4]
 005B8712    mov         eax,dword ptr [eax+4]
 005B8715    cmp         eax,dword ptr [ebp-0C]
>005B8718    jge         005B8723
 005B871A    mov         eax,dword ptr [ebp-4]
 005B871D    mov         edx,dword ptr [ebp-0C]
 005B8720    mov         dword ptr [eax+4],edx
 005B8723    mov         esp,ebp
 005B8725    pop         ebp
 005B8726    ret         8
end;*}

//005B872C
procedure TCustomGrid.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 005B872C    push        ebp
 005B872D    mov         ebp,esp
 005B872F    add         esp,0FFFFFF64
 005B8735    push        esi
 005B8736    mov         byte ptr [ebp-71],cl
 005B8739    mov         dword ptr [ebp-70],edx
 005B873C    mov         dword ptr [ebp-64],eax
 005B873F    mov         edx,dword ptr [ebp-70]
 005B8742    mov         cl,byte ptr [ebp-71]
 005B8745    mov         eax,dword ptr [ebp-64]
 005B8748    call        TWinControl.sub_005FA804
 005B874D    mov         byte ptr [ebp-91],0
 005B8754    mov         edx,dword ptr [ebp-70]
 005B8757    mov         dx,word ptr [edx]
 005B875A    mov         cl,byte ptr [ebp-71]
 005B875D    mov         eax,dword ptr [ebp-64]
 005B8760    mov         si,0FFB1
 005B8764    call        @CallDynaInst
 005B8769    test        al,al
>005B876B    jne         005B8775
 005B876D    mov         eax,dword ptr [ebp-70]
 005B8770    mov         word ptr [eax],0
 005B8775    mov         eax,dword ptr [ebp-64]
 005B8778    mov         si,0FFC8
 005B877C    call        @CallDynaInst
 005B8781    test        al,al
>005B8783    jne         005B8791
 005B8785    mov         dword ptr [ebp-90],1
>005B878F    jmp         005B879B
 005B8791    mov         dword ptr [ebp-90],0FFFFFFFF
 005B879B    mov         eax,dword ptr [ebp-64]
 005B879E    mov         edx,dword ptr [eax+228]
 005B87A4    mov         dword ptr [ebp-84],edx
 005B87AA    mov         edx,dword ptr [eax+22C]
 005B87B0    mov         dword ptr [ebp-80],edx
 005B87B3    mov         eax,dword ptr [ebp-64]
 005B87B6    mov         edx,dword ptr [eax+258]
 005B87BC    mov         dword ptr [ebp-7C],edx
 005B87BF    mov         edx,dword ptr [eax+25C]
 005B87C5    mov         dword ptr [ebp-78],edx
 005B87C8    push        ebp
 005B87C9    call        CalcPageExtents
 005B87CE    pop         ecx
 005B87CF    test        byte ptr [ebp-71],4
>005B87D3    je          005B8904
 005B87D9    mov         eax,dword ptr [ebp-70]
 005B87DC    movzx       eax,word ptr [eax]
 005B87DF    add         eax,0FFFFFFDF
 005B87E2    cmp         eax,7
>005B87E5    ja          005B8B22
 005B87EB    jmp         dword ptr [eax*4+5B87F2]
 005B87EB    dd          005B8882
 005B87EB    dd          005B8893
 005B87EB    dd          005B88D0
 005B87EB    dd          005B889E
 005B87EB    dd          005B8822
 005B87EB    dd          005B8812
 005B87EB    dd          005B8852
 005B87EB    dd          005B881A
 005B8812    dec         dword ptr [ebp-78]
>005B8815    jmp         005B8B22
 005B881A    inc         dword ptr [ebp-78]
>005B881D    jmp         005B8B22
 005B8822    mov         eax,dword ptr [ebp-64]
 005B8825    test        byte ptr [eax+249],10
>005B882C    jne         005B8B22
 005B8832    mov         eax,dword ptr [ebp-68]
 005B8835    imul        dword ptr [ebp-90]
 005B883B    sub         dword ptr [ebp-84],eax
 005B8841    mov         eax,dword ptr [ebp-68]
 005B8844    imul        dword ptr [ebp-90]
 005B884A    sub         dword ptr [ebp-7C],eax
>005B884D    jmp         005B8B22
 005B8852    mov         eax,dword ptr [ebp-64]
 005B8855    test        byte ptr [eax+249],10
>005B885C    jne         005B8B22
 005B8862    mov         eax,dword ptr [ebp-68]
 005B8865    imul        dword ptr [ebp-90]
 005B886B    add         dword ptr [ebp-84],eax
 005B8871    mov         eax,dword ptr [ebp-68]
 005B8874    imul        dword ptr [ebp-90]
 005B887A    add         dword ptr [ebp-7C],eax
>005B887D    jmp         005B8B22
 005B8882    mov         eax,dword ptr [ebp-64]
 005B8885    mov         eax,dword ptr [eax+25C]
 005B888B    mov         dword ptr [ebp-80],eax
>005B888E    jmp         005B8B22
 005B8893    mov         eax,dword ptr [ebp-20]
 005B8896    mov         dword ptr [ebp-80],eax
>005B8899    jmp         005B8B22
 005B889E    mov         eax,dword ptr [ebp-64]
 005B88A1    mov         eax,dword ptr [eax+238]
 005B88A7    mov         dword ptr [ebp-84],eax
 005B88AD    mov         eax,dword ptr [ebp-64]
 005B88B0    mov         eax,dword ptr [eax+23C]
 005B88B6    mov         dword ptr [ebp-80],eax
 005B88B9    mov         eax,dword ptr [ebp-64]
 005B88BC    mov         si,0FFC8
 005B88C0    call        @CallDynaInst
 005B88C5    mov         byte ptr [ebp-91],al
>005B88CB    jmp         005B8B22
 005B88D0    mov         eax,dword ptr [ebp-64]
 005B88D3    mov         eax,dword ptr [eax+21C]
 005B88D9    dec         eax
 005B88DA    mov         dword ptr [ebp-84],eax
 005B88E0    mov         eax,dword ptr [ebp-64]
 005B88E3    mov         eax,dword ptr [eax+24C]
 005B88E9    dec         eax
 005B88EA    mov         dword ptr [ebp-80],eax
 005B88ED    mov         eax,dword ptr [ebp-64]
 005B88F0    mov         si,0FFC8
 005B88F4    call        @CallDynaInst
 005B88F9    mov         byte ptr [ebp-91],al
>005B88FF    jmp         005B8B22
 005B8904    mov         eax,dword ptr [ebp-70]
 005B8907    movzx       eax,word ptr [eax]
 005B890A    cmp         eax,25
>005B890D    jg          005B8948
>005B890F    je          005B8971
 005B8911    cmp         eax,22
>005B8914    jg          005B8933
>005B8916    je          005B89C7
 005B891C    sub         eax,9
>005B891F    je          005B8A4D
 005B8925    sub         eax,18
>005B8928    je          005B89D8
>005B892E    jmp         005B8B22
 005B8933    sub         eax,23
>005B8936    je          005B8A1A
 005B893C    dec         eax
>005B893D    je          005B89E9
>005B8943    jmp         005B8B22
 005B8948    sub         eax,26
>005B894B    je          005B8961
 005B894D    dec         eax
>005B894E    je          005B899C
 005B8950    dec         eax
>005B8951    je          005B8969
 005B8953    sub         eax,49
>005B8956    je          005B8B18
>005B895C    jmp         005B8B22
 005B8961    dec         dword ptr [ebp-80]
>005B8964    jmp         005B8B22
 005B8969    inc         dword ptr [ebp-80]
>005B896C    jmp         005B8B22
 005B8971    mov         eax,dword ptr [ebp-64]
 005B8974    test        byte ptr [eax+249],10
>005B897B    je          005B898B
 005B897D    mov         eax,dword ptr [ebp-90]
 005B8983    sub         dword ptr [ebp-80],eax
>005B8986    jmp         005B8B22
 005B898B    mov         eax,dword ptr [ebp-90]
 005B8991    sub         dword ptr [ebp-84],eax
>005B8997    jmp         005B8B22
 005B899C    mov         eax,dword ptr [ebp-64]
 005B899F    test        byte ptr [eax+249],10
>005B89A6    je          005B89B6
 005B89A8    mov         eax,dword ptr [ebp-90]
 005B89AE    add         dword ptr [ebp-80],eax
>005B89B1    jmp         005B8B22
 005B89B6    mov         eax,dword ptr [ebp-90]
 005B89BC    add         dword ptr [ebp-84],eax
>005B89C2    jmp         005B8B22
 005B89C7    mov         eax,dword ptr [ebp-6C]
 005B89CA    add         dword ptr [ebp-80],eax
 005B89CD    mov         eax,dword ptr [ebp-6C]
 005B89D0    add         dword ptr [ebp-78],eax
>005B89D3    jmp         005B8B22
 005B89D8    mov         eax,dword ptr [ebp-6C]
 005B89DB    sub         dword ptr [ebp-80],eax
 005B89DE    mov         eax,dword ptr [ebp-6C]
 005B89E1    sub         dword ptr [ebp-78],eax
>005B89E4    jmp         005B8B22
 005B89E9    mov         eax,dword ptr [ebp-64]
 005B89EC    test        byte ptr [eax+249],10
>005B89F3    je          005B8A06
 005B89F5    mov         eax,dword ptr [ebp-64]
 005B89F8    mov         eax,dword ptr [eax+23C]
 005B89FE    mov         dword ptr [ebp-80],eax
>005B8A01    jmp         005B8B22
 005B8A06    mov         eax,dword ptr [ebp-64]
 005B8A09    mov         eax,dword ptr [eax+238]
 005B8A0F    mov         dword ptr [ebp-84],eax
>005B8A15    jmp         005B8B22
 005B8A1A    mov         eax,dword ptr [ebp-64]
 005B8A1D    test        byte ptr [eax+249],10
>005B8A24    je          005B8A38
 005B8A26    mov         eax,dword ptr [ebp-64]
 005B8A29    mov         eax,dword ptr [eax+24C]
 005B8A2F    dec         eax
 005B8A30    mov         dword ptr [ebp-80],eax
>005B8A33    jmp         005B8B22
 005B8A38    mov         eax,dword ptr [ebp-64]
 005B8A3B    mov         eax,dword ptr [eax+21C]
 005B8A41    dec         eax
 005B8A42    mov         dword ptr [ebp-84],eax
>005B8A48    jmp         005B8B22
 005B8A4D    test        byte ptr [ebp-71],2
>005B8A51    jne         005B8B22
 005B8A57    test        byte ptr [ebp-71],1
>005B8A5B    je          005B8AAC
 005B8A5D    dec         dword ptr [ebp-84]
 005B8A63    mov         eax,dword ptr [ebp-64]
 005B8A66    mov         eax,dword ptr [eax+238]
 005B8A6C    cmp         eax,dword ptr [ebp-84]
>005B8A72    jle         005B8AA2
 005B8A74    mov         eax,dword ptr [ebp-64]
 005B8A77    mov         eax,dword ptr [eax+21C]
 005B8A7D    dec         eax
 005B8A7E    mov         dword ptr [ebp-84],eax
 005B8A84    dec         dword ptr [ebp-80]
 005B8A87    mov         eax,dword ptr [ebp-64]
 005B8A8A    mov         eax,dword ptr [eax+23C]
 005B8A90    cmp         eax,dword ptr [ebp-80]
>005B8A93    jle         005B8AA2
 005B8A95    mov         eax,dword ptr [ebp-64]
 005B8A98    mov         eax,dword ptr [eax+24C]
 005B8A9E    dec         eax
 005B8A9F    mov         dword ptr [ebp-80],eax
 005B8AA2    mov         al,[005B8C4C]
 005B8AA7    mov         byte ptr [ebp-71],al
>005B8AAA    jmp         005B8AEF
 005B8AAC    inc         dword ptr [ebp-84]
 005B8AB2    mov         eax,dword ptr [ebp-64]
 005B8AB5    mov         eax,dword ptr [eax+21C]
 005B8ABB    cmp         eax,dword ptr [ebp-84]
>005B8AC1    jg          005B8AEF
 005B8AC3    mov         eax,dword ptr [ebp-64]
 005B8AC6    mov         eax,dword ptr [eax+238]
 005B8ACC    mov         dword ptr [ebp-84],eax
 005B8AD2    inc         dword ptr [ebp-80]
 005B8AD5    mov         eax,dword ptr [ebp-64]
 005B8AD8    mov         eax,dword ptr [eax+24C]
 005B8ADE    cmp         eax,dword ptr [ebp-80]
>005B8AE1    jg          005B8AEF
 005B8AE3    mov         eax,dword ptr [ebp-64]
 005B8AE6    mov         eax,dword ptr [eax+23C]
 005B8AEC    mov         dword ptr [ebp-80],eax
 005B8AEF    mov         edx,dword ptr [ebp-84]
 005B8AF5    mov         eax,dword ptr [ebp-64]
 005B8AF8    call        005B97CC
 005B8AFD    test        al,al
>005B8AFF    jne         005B8B22
 005B8B01    mov         eax,dword ptr [ebp-64]
 005B8B04    mov         eax,dword ptr [eax+228]
 005B8B0A    cmp         eax,dword ptr [ebp-84]
>005B8B10    jne         005B8A57
>005B8B16    jmp         005B8B22
 005B8B18    mov         dl,1
 005B8B1A    mov         eax,dword ptr [ebp-64]
 005B8B1D    call        005B9C60
 005B8B22    mov         eax,dword ptr [ebp-64]
 005B8B25    mov         eax,dword ptr [eax+21C]
 005B8B2B    dec         eax
 005B8B2C    mov         dword ptr [ebp-8C],eax
 005B8B32    mov         eax,dword ptr [ebp-64]
 005B8B35    mov         eax,dword ptr [eax+24C]
 005B8B3B    dec         eax
 005B8B3C    mov         dword ptr [ebp-88],eax
 005B8B42    lea         eax,[ebp-9C]
 005B8B48    push        eax
 005B8B49    lea         ecx,[ebp-60]
 005B8B4C    lea         edx,[ebp-8C]
 005B8B52    mov         eax,dword ptr [ebp-64]
 005B8B55    call        TCustomGrid.CalcMaxTopLeft
 005B8B5A    mov         eax,dword ptr [ebp-9C]
 005B8B60    mov         dword ptr [ebp-8C],eax
 005B8B66    mov         eax,dword ptr [ebp-98]
 005B8B6C    mov         dword ptr [ebp-88],eax
 005B8B72    push        ebp
 005B8B73    mov         eax,dword ptr [ebp-8C]
 005B8B79    push        eax
 005B8B7A    mov         eax,dword ptr [ebp-88]
 005B8B80    push        eax
 005B8B81    mov         eax,dword ptr [ebp-64]
 005B8B84    mov         ecx,dword ptr [eax+23C]
 005B8B8A    mov         eax,dword ptr [ebp-64]
 005B8B8D    mov         edx,dword ptr [eax+238]
 005B8B93    lea         eax,[ebp-7C]
 005B8B96    call        005B86C4
 005B8B9B    pop         ecx
 005B8B9C    mov         eax,dword ptr [ebp-64]
 005B8B9F    mov         eax,dword ptr [eax+258]
 005B8BA5    cmp         eax,dword ptr [ebp-7C]
>005B8BA8    jne         005B8BB8
 005B8BAA    mov         eax,dword ptr [ebp-64]
 005B8BAD    mov         eax,dword ptr [eax+25C]
 005B8BB3    cmp         eax,dword ptr [ebp-78]
>005B8BB6    je          005B8BC6
 005B8BB8    mov         ecx,dword ptr [ebp-78]
 005B8BBB    mov         edx,dword ptr [ebp-7C]
 005B8BBE    mov         eax,dword ptr [ebp-64]
 005B8BC1    call        005B7B30
 005B8BC6    push        ebp
 005B8BC7    mov         eax,dword ptr [ebp-64]
 005B8BCA    mov         eax,dword ptr [eax+21C]
 005B8BD0    dec         eax
 005B8BD1    push        eax
 005B8BD2    mov         eax,dword ptr [ebp-64]
 005B8BD5    mov         eax,dword ptr [eax+24C]
 005B8BDB    dec         eax
 005B8BDC    push        eax
 005B8BDD    mov         eax,dword ptr [ebp-64]
 005B8BE0    mov         ecx,dword ptr [eax+23C]
 005B8BE6    mov         eax,dword ptr [ebp-64]
 005B8BE9    mov         edx,dword ptr [eax+238]
 005B8BEF    lea         eax,[ebp-84]
 005B8BF5    call        005B86C4
 005B8BFA    pop         ecx
 005B8BFB    mov         eax,dword ptr [ebp-64]
 005B8BFE    mov         eax,dword ptr [eax+228]
 005B8C04    cmp         eax,dword ptr [ebp-84]
>005B8C0A    jne         005B8C1A
 005B8C0C    mov         eax,dword ptr [ebp-64]
 005B8C0F    mov         eax,dword ptr [eax+22C]
 005B8C15    cmp         eax,dword ptr [ebp-80]
>005B8C18    je          005B8C35
 005B8C1A    test        byte ptr [ebp-71],1
 005B8C1E    setne       al
 005B8C21    xor         al,1
 005B8C23    push        eax
 005B8C24    mov         ecx,dword ptr [ebp-80]
 005B8C27    mov         edx,dword ptr [ebp-84]
 005B8C2D    mov         eax,dword ptr [ebp-64]
 005B8C30    call        005B6E0C
 005B8C35    cmp         byte ptr [ebp-91],0
>005B8C3C    je          005B8C46
 005B8C3E    mov         eax,dword ptr [ebp-64]
 005B8C41    mov         edx,dword ptr [eax]
 005B8C43    call        dword ptr [edx+7C]
 005B8C46    pop         esi
 005B8C47    mov         esp,ebp
 005B8C49    pop         ebp
 005B8C4A    ret
*}
end;

//005B8C50
{*procedure TCustomGrid.sub_005B8C50(?:?);
begin
 005B8C50    push        ebp
 005B8C51    mov         ebp,esp
 005B8C53    add         esp,0FFFFFFF8
 005B8C56    mov         dword ptr [ebp-8],edx
 005B8C59    mov         dword ptr [ebp-4],eax
 005B8C5C    mov         edx,dword ptr [ebp-8]
 005B8C5F    mov         eax,dword ptr [ebp-4]
 005B8C62    call        TWinControl.sub_005FAA3C
 005B8C67    mov         eax,dword ptr [ebp-4]
 005B8C6A    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>005B8C71    jne         005B8C9F
 005B8C73    mov         eax,dword ptr [ebp-8]
 005B8C76    cmp         byte ptr [eax],0D
>005B8C79    jne         005B8C9F
 005B8C7B    mov         eax,dword ptr [ebp-4]
 005B8C7E    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>005B8C85    je          005B8C91
 005B8C87    mov         eax,dword ptr [ebp-4]
 005B8C8A    call        005B4A88
>005B8C8F    jmp         005B8C99
 005B8C91    mov         eax,dword ptr [ebp-4]
 005B8C94    call        005B4AA4
 005B8C99    mov         eax,dword ptr [ebp-8]
 005B8C9C    mov         byte ptr [eax],0
 005B8C9F    pop         ecx
 005B8CA0    pop         ecx
 005B8CA1    pop         ebp
 005B8CA2    ret
end;*}

//005B8CA4
procedure TCustomGrid.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005B8CA4    push        ebp
 005B8CA5    mov         ebp,esp
 005B8CA7    add         esp,0FFFFFF80
 005B8CAA    push        ebx
 005B8CAB    push        esi
 005B8CAC    push        edi
 005B8CAD    mov         byte ptr [ebp-6],cl
 005B8CB0    mov         byte ptr [ebp-5],dl
 005B8CB3    mov         dword ptr [ebp-4],eax
 005B8CB6    mov         byte ptr [ebp-11],0
 005B8CBA    mov         eax,dword ptr [ebp-4]
 005B8CBD    call        TCustomGrid.HideEdit
 005B8CC2    mov         eax,dword ptr [ebp-4]
 005B8CC5    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>005B8CC9    jne         005B8D0D
 005B8CCB    mov         eax,dword ptr [ebp-4]
 005B8CCE    mov         si,0FFB8
 005B8CD2    call        @CallDynaInst;TWinControl.sub_005FBF90
 005B8CD7    test        al,al
>005B8CD9    jne         005B8CE7
 005B8CDB    mov         eax,dword ptr [ebp-4]
 005B8CDE    call        005CD060
 005B8CE3    test        eax,eax
>005B8CE5    jne         005B8D0D
 005B8CE7    mov         eax,dword ptr [ebp-4]
 005B8CEA    mov         edx,dword ptr [eax]
 005B8CEC    call        dword ptr [edx+0C0];TCustomGrid.sub_005FBFF0
 005B8CF2    mov         eax,dword ptr [ebp-4]
 005B8CF5    call        005B4984
 005B8CFA    test        al,al
>005B8CFC    jne         005B8D0D
 005B8CFE    xor         edx,edx
 005B8D00    mov         eax,dword ptr [ebp-4]
 005B8D03    call        005F3AF0
>005B8D08    jmp         005B9085
 005B8D0D    cmp         byte ptr [ebp-5],0
>005B8D11    jne         005B8D2A
 005B8D13    test        byte ptr [ebp-6],40
>005B8D17    je          005B8D2A
 005B8D19    mov         eax,dword ptr [ebp-4]
 005B8D1C    mov         si,0FFE9
 005B8D20    call        @CallDynaInst;TControl.sub_005F5508
>005B8D25    jmp         005B903F
 005B8D2A    cmp         byte ptr [ebp-5],0
>005B8D2E    jne         005B903F
 005B8D34    lea         edx,[ebp-78]
 005B8D37    mov         eax,dword ptr [ebp-4]
 005B8D3A    call        TCustomGrid.CalcDrawInfo
 005B8D3F    mov         eax,dword ptr [ebp-4]
 005B8D42    add         eax,28E;TCustomGrid.FGridState:TGridState
 005B8D47    push        eax
 005B8D48    mov         eax,dword ptr [ebp-4]
 005B8D4B    add         eax,260;TCustomGrid.FSizingIndex:Longint
 005B8D50    push        eax
 005B8D51    mov         eax,dword ptr [ebp-4]
 005B8D54    add         eax,264;TCustomGrid.FSizingPos:Integer
 005B8D59    push        eax
 005B8D5A    mov         eax,dword ptr [ebp-4]
 005B8D5D    add         eax,268;TCustomGrid.FSizingOfs:Integer
 005B8D62    push        eax
 005B8D63    lea         eax,[ebp-78]
 005B8D66    push        eax
 005B8D67    mov         ecx,dword ptr [ebp+8]
 005B8D6A    mov         edx,dword ptr [ebp+0C]
 005B8D6D    mov         eax,dword ptr [ebp-4]
 005B8D70    mov         ebx,dword ptr [eax]
 005B8D72    call        dword ptr [ebx+0C8];TCustomGrid.sub_005B63F0
 005B8D78    mov         eax,dword ptr [ebp-4]
 005B8D7B    cmp         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
>005B8D82    je          005B8DCA
 005B8D84    mov         eax,dword ptr [ebp-4]
 005B8D87    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>005B8D8E    jne         005B8DBA
 005B8D90    mov         eax,dword ptr [ebp-4]
 005B8D93    mov         si,0FFC8
 005B8D97    call        @CallDynaInst;TControl.sub_005F40CC
 005B8D9C    test        al,al
>005B8D9E    je          005B8DBA
 005B8DA0    mov         eax,dword ptr [ebp-4]
 005B8DA3    call        TControl.GetClientWidth
 005B8DA8    mov         edx,dword ptr [ebp-4]
 005B8DAB    sub         eax,dword ptr [edx+264]
 005B8DB1    mov         edx,dword ptr [ebp-4]
 005B8DB4    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 005B8DBA    lea         edx,[ebp-78]
 005B8DBD    mov         eax,dword ptr [ebp-4]
 005B8DC0    call        TCustomGrid.DrawSizingLine
>005B8DC5    jmp         005B9085
 005B8DCA    lea         eax,[ebp-78]
 005B8DCD    push        eax
 005B8DCE    lea         eax,[ebp-10]
 005B8DD1    push        eax
 005B8DD2    mov         ecx,dword ptr [ebp+8]
 005B8DD5    mov         edx,dword ptr [ebp+0C]
 005B8DD8    mov         eax,dword ptr [ebp-4]
 005B8DDB    call        005B5E48
 005B8DE0    mov         eax,dword ptr [ebp-4]
 005B8DE3    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B8DE9    cmp         eax,dword ptr [ebp-10]
>005B8DEC    jg          005B8EAC
 005B8DF2    mov         eax,dword ptr [ebp-4]
 005B8DF5    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B8DFB    cmp         eax,dword ptr [ebp-0C]
>005B8DFE    jg          005B8EAC
 005B8E04    mov         eax,dword ptr [ebp-4]
 005B8E07    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>005B8E0E    je          005B8E61
 005B8E10    mov         eax,dword ptr [ebp-4]
 005B8E13    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B8E19    cmp         eax,dword ptr [ebp-10]
>005B8E1C    jne         005B8E36
 005B8E1E    mov         eax,dword ptr [ebp-4]
 005B8E21    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B8E27    cmp         eax,dword ptr [ebp-0C]
>005B8E2A    jne         005B8E36
 005B8E2C    mov         eax,dword ptr [ebp-4]
 005B8E2F    call        005B4AA4
>005B8E34    jmp         005B8E50
 005B8E36    push        1
 005B8E38    push        1
 005B8E3A    mov         ecx,dword ptr [ebp-0C]
 005B8E3D    mov         edx,dword ptr [ebp-10]
 005B8E40    mov         eax,dword ptr [ebp-4]
 005B8E43    call        005B7990
 005B8E48    mov         eax,dword ptr [ebp-4]
 005B8E4B    call        005BA008
 005B8E50    mov         eax,dword ptr [ebp-4]
 005B8E53    mov         si,0FFEB
 005B8E57    call        @CallDynaInst;TControl.sub_005F5478
>005B8E5C    jmp         005B903F
 005B8E61    mov         eax,dword ptr [ebp-4]
 005B8E64    mov         byte ptr [eax+28E],1;TCustomGrid.FGridState:TGridState
 005B8E6B    push        0
 005B8E6D    push        3C
 005B8E6F    push        1
 005B8E71    mov         eax,dword ptr [ebp-4]
 005B8E74    call        TWinControl.GetHandle
 005B8E79    push        eax
 005B8E7A    call        USER32.SetTimer
 005B8E7F    test        byte ptr [ebp-6],1
>005B8E83    je          005B8E95
 005B8E85    lea         edx,[ebp-10]
 005B8E88    mov         eax,dword ptr [ebp-4]
 005B8E8B    call        005B78E8
>005B8E90    jmp         005B903F
 005B8E95    push        1
 005B8E97    push        1
 005B8E99    mov         ecx,dword ptr [ebp-0C]
 005B8E9C    mov         edx,dword ptr [ebp-10]
 005B8E9F    mov         eax,dword ptr [ebp-4]
 005B8EA2    call        005B7990
>005B8EA7    jmp         005B903F
 005B8EAC    mov         eax,dword ptr [ebp-4]
 005B8EAF    test        byte ptr [eax+249],1;TCustomGrid.?f249:byte
>005B8EB6    je          005B8F7A
 005B8EBC    cmp         dword ptr [ebp-10],0
>005B8EC0    jl          005B8F7A
 005B8EC6    mov         eax,dword ptr [ebp-4]
 005B8EC9    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B8ECF    cmp         eax,dword ptr [ebp-10]
>005B8ED2    jle         005B8F7A
 005B8ED8    mov         eax,dword ptr [ebp-4]
 005B8EDB    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B8EE1    cmp         eax,dword ptr [ebp-0C]
>005B8EE4    jg          005B8F7A
 005B8EEA    mov         eax,dword ptr [ebp-4]
 005B8EED    mov         edx,dword ptr [ebp-0C]
 005B8EF0    mov         dword ptr [eax+26C],edx;TCustomGrid.FMoveIndex:Longint
 005B8EF6    mov         eax,dword ptr [ebp-4]
 005B8EF9    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B8EFF    mov         edx,dword ptr [ebp-4]
 005B8F02    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 005B8F08    lea         ecx,[ebp-80]
 005B8F0B    mov         edx,dword ptr [ebp+8]
 005B8F0E    mov         eax,dword ptr [ebp+0C]
 005B8F11    call        Point
 005B8F16    lea         eax,[ebp-80]
 005B8F19    push        eax
 005B8F1A    mov         eax,dword ptr [ebp-4]
 005B8F1D    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 005B8F23    mov         eax,dword ptr [ebp-4]
 005B8F26    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B8F2C    mov         eax,dword ptr [ebp-4]
 005B8F2F    mov         si,0FFA2
 005B8F33    call        @CallDynaInst;TCustomGrid.sub_005BAB34
 005B8F38    test        al,al
>005B8F3A    je          005B903F
 005B8F40    mov         eax,dword ptr [ebp-4]
 005B8F43    mov         byte ptr [eax+28E],4;TCustomGrid.FGridState:TGridState
 005B8F4A    mov         eax,dword ptr [ebp-4]
 005B8F4D    mov         edx,dword ptr [eax]
 005B8F4F    call        dword ptr [edx+88];TCustomGrid.sub_005FBF08
 005B8F55    mov         eax,dword ptr [ebp-4]
 005B8F58    call        TCustomGrid.DrawMove
 005B8F5D    mov         byte ptr [ebp-11],1
 005B8F61    push        0
 005B8F63    push        3C
 005B8F65    push        1
 005B8F67    mov         eax,dword ptr [ebp-4]
 005B8F6A    call        TWinControl.GetHandle
 005B8F6F    push        eax
 005B8F70    call        USER32.SetTimer
>005B8F75    jmp         005B903F
 005B8F7A    mov         eax,dword ptr [ebp-4]
 005B8F7D    test        byte ptr [eax+249],2;TCustomGrid.?f249:byte
>005B8F84    je          005B903F
 005B8F8A    cmp         dword ptr [ebp-0C],0
>005B8F8E    jl          005B903F
 005B8F94    mov         eax,dword ptr [ebp-4]
 005B8F97    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 005B8F9D    cmp         eax,dword ptr [ebp-0C]
>005B8FA0    jle         005B903F
 005B8FA6    mov         eax,dword ptr [ebp-4]
 005B8FA9    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 005B8FAF    cmp         eax,dword ptr [ebp-10]
>005B8FB2    jg          005B903F
 005B8FB8    mov         eax,dword ptr [ebp-4]
 005B8FBB    mov         edx,dword ptr [ebp-10]
 005B8FBE    mov         dword ptr [eax+26C],edx;TCustomGrid.FMoveIndex:Longint
 005B8FC4    mov         eax,dword ptr [ebp-4]
 005B8FC7    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B8FCD    mov         edx,dword ptr [ebp-4]
 005B8FD0    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 005B8FD6    lea         ecx,[ebp-80]
 005B8FD9    mov         edx,dword ptr [ebp+8]
 005B8FDC    mov         eax,dword ptr [ebp+0C]
 005B8FDF    call        Point
 005B8FE4    lea         eax,[ebp-80]
 005B8FE7    push        eax
 005B8FE8    mov         eax,dword ptr [ebp-4]
 005B8FEB    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 005B8FF1    mov         eax,dword ptr [ebp-4]
 005B8FF4    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B8FFA    mov         eax,dword ptr [ebp-4]
 005B8FFD    mov         si,0FFA3
 005B9001    call        @CallDynaInst;TCustomGrid.sub_005BAB18
 005B9006    test        al,al
>005B9008    je          005B903F
 005B900A    mov         eax,dword ptr [ebp-4]
 005B900D    mov         byte ptr [eax+28E],5;TCustomGrid.FGridState:TGridState
 005B9014    mov         eax,dword ptr [ebp-4]
 005B9017    mov         edx,dword ptr [eax]
 005B9019    call        dword ptr [edx+88];TCustomGrid.sub_005FBF08
 005B901F    mov         eax,dword ptr [ebp-4]
 005B9022    call        TCustomGrid.DrawMove
 005B9027    mov         byte ptr [ebp-11],1
 005B902B    push        0
 005B902D    push        3C
 005B902F    push        1
 005B9031    mov         eax,dword ptr [ebp-4]
 005B9034    call        TWinControl.GetHandle
 005B9039    push        eax
 005B903A    call        USER32.SetTimer
 005B903F    xor         eax,eax
 005B9041    push        ebp
 005B9042    push        5B906D
 005B9047    push        dword ptr fs:[eax]
 005B904A    mov         dword ptr fs:[eax],esp
 005B904D    mov         eax,dword ptr [ebp+0C]
 005B9050    push        eax
 005B9051    mov         eax,dword ptr [ebp+8]
 005B9054    push        eax
 005B9055    mov         cl,byte ptr [ebp-6]
 005B9058    mov         dl,byte ptr [ebp-5]
 005B905B    mov         eax,dword ptr [ebp-4]
 005B905E    call        TControl.MouseDown
 005B9063    xor         eax,eax
 005B9065    pop         edx
 005B9066    pop         ecx
 005B9067    pop         ecx
 005B9068    mov         dword ptr fs:[eax],edx
>005B906B    jmp         005B9085
>005B906D    jmp         @HandleAnyException
 005B9072    cmp         byte ptr [ebp-11],0
>005B9076    je          005B9080
 005B9078    mov         eax,dword ptr [ebp-4]
 005B907B    call        TCustomGrid.DrawMove
 005B9080    call        @DoneExcept
 005B9085    pop         edi
 005B9086    pop         esi
 005B9087    pop         ebx
 005B9088    mov         esp,ebp
 005B908A    pop         ebp
 005B908B    ret         8
*}
end;

//005B9090
procedure TCustomGrid.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005B9090    push        ebp
 005B9091    mov         ebp,esp
 005B9093    add         esp,0FFFFFF80
 005B9096    mov         dword ptr [ebp-0C],ecx
 005B9099    mov         byte ptr [ebp-5],dl
 005B909C    mov         dword ptr [ebp-4],eax
 005B909F    lea         edx,[ebp-78]
 005B90A2    mov         eax,dword ptr [ebp-4]
 005B90A5    call        TCustomGrid.CalcDrawInfo
 005B90AA    mov         eax,dword ptr [ebp-4]
 005B90AD    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005B90B3    dec         al
>005B90B5    je          005B90C8
 005B90B7    dec         eax
 005B90B8    sub         al,2
>005B90BA    jb          005B91BE
 005B90C0    sub         al,2
>005B90C2    jae         005B920C
 005B90C8    lea         eax,[ebp-78]
 005B90CB    push        eax
 005B90CC    lea         eax,[ebp-14]
 005B90CF    push        eax
 005B90D0    mov         ecx,dword ptr [ebp+8]
 005B90D3    mov         edx,dword ptr [ebp-0C]
 005B90D6    mov         eax,dword ptr [ebp-4]
 005B90D9    call        005B5E48
 005B90DE    mov         eax,dword ptr [ebp-14]
 005B90E1    mov         edx,dword ptr [ebp-4]
 005B90E4    cmp         eax,dword ptr [edx+238];TCustomGrid.FFixedCols:Integer
>005B90EA    jl          005B920C
 005B90F0    mov         eax,dword ptr [ebp-10]
 005B90F3    mov         edx,dword ptr [ebp-4]
 005B90F6    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>005B90FC    jl          005B920C
 005B9102    mov         eax,dword ptr [ebp-68]
 005B9105    inc         eax
 005B9106    cmp         eax,dword ptr [ebp-14]
>005B9109    jl          005B920C
 005B910F    mov         eax,dword ptr [ebp-38]
 005B9112    inc         eax
 005B9113    cmp         eax,dword ptr [ebp-10]
>005B9116    jl          005B920C
 005B911C    mov         eax,dword ptr [ebp-4]
 005B911F    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005B9125    dec         al
>005B9127    je          005B9136
 005B9129    sub         al,3
>005B912B    je          005B9192
 005B912D    dec         al
>005B912F    je          005B9166
>005B9131    jmp         005B920C
 005B9136    mov         eax,dword ptr [ebp-14]
 005B9139    mov         edx,dword ptr [ebp-4]
 005B913C    cmp         eax,dword ptr [edx+210];TCustomGrid.FAnchor:TGridCoord
>005B9142    jne         005B9156
 005B9144    mov         eax,dword ptr [ebp-10]
 005B9147    mov         edx,dword ptr [ebp-4]
 005B914A    cmp         eax,dword ptr [edx+214]
>005B9150    je          005B920C
 005B9156    lea         edx,[ebp-14]
 005B9159    mov         eax,dword ptr [ebp-4]
 005B915C    call        005B78E8
>005B9161    jmp         005B920C
 005B9166    lea         eax,[ebp-78]
 005B9169    push        eax
 005B916A    lea         eax,[ebp-78]
 005B916D    push        eax
 005B916E    push        0
 005B9170    lea         ecx,[ebp-80]
 005B9173    mov         edx,dword ptr [ebp+8]
 005B9176    mov         eax,dword ptr [ebp-0C]
 005B9179    call        Point
 005B917E    lea         eax,[ebp-80]
 005B9181    push        eax
 005B9182    mov         ecx,dword ptr [ebp-14]
 005B9185    mov         edx,dword ptr [ebp-0C]
 005B9188    mov         eax,dword ptr [ebp-4]
 005B918B    call        005B9538
>005B9190    jmp         005B920C
 005B9192    lea         eax,[ebp-78]
 005B9195    push        eax
 005B9196    lea         eax,[ebp-48]
 005B9199    push        eax
 005B919A    push        1
 005B919C    lea         ecx,[ebp-80]
 005B919F    mov         edx,dword ptr [ebp+8]
 005B91A2    mov         eax,dword ptr [ebp-0C]
 005B91A5    call        Point
 005B91AA    lea         eax,[ebp-80]
 005B91AD    push        eax
 005B91AE    mov         ecx,dword ptr [ebp-10]
 005B91B1    mov         edx,dword ptr [ebp+8]
 005B91B4    mov         eax,dword ptr [ebp-4]
 005B91B7    call        005B9538
>005B91BC    jmp         005B920C
 005B91BE    lea         edx,[ebp-78]
 005B91C1    mov         eax,dword ptr [ebp-4]
 005B91C4    call        TCustomGrid.DrawSizingLine
 005B91C9    mov         eax,dword ptr [ebp-4]
 005B91CC    cmp         byte ptr [eax+28E],2;TCustomGrid.FGridState:TGridState
>005B91D3    jne         005B91EC
 005B91D5    mov         eax,dword ptr [ebp+8]
 005B91D8    mov         edx,dword ptr [ebp-4]
 005B91DB    add         eax,dword ptr [edx+268];TCustomGrid.FSizingOfs:Integer
 005B91E1    mov         edx,dword ptr [ebp-4]
 005B91E4    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
>005B91EA    jmp         005B9201
 005B91EC    mov         eax,dword ptr [ebp-0C]
 005B91EF    mov         edx,dword ptr [ebp-4]
 005B91F2    add         eax,dword ptr [edx+268];TCustomGrid.FSizingOfs:Integer
 005B91F8    mov         edx,dword ptr [ebp-4]
 005B91FB    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 005B9201    lea         edx,[ebp-78]
 005B9204    mov         eax,dword ptr [ebp-4]
 005B9207    call        TCustomGrid.DrawSizingLine
 005B920C    mov         eax,dword ptr [ebp+8]
 005B920F    push        eax
 005B9210    mov         ecx,dword ptr [ebp-0C]
 005B9213    mov         dl,byte ptr [ebp-5]
 005B9216    mov         eax,dword ptr [ebp-4]
 005B9219    call        TControl.MouseMove
 005B921E    mov         esp,ebp
 005B9220    pop         ebp
 005B9221    ret         4
*}
end;

//005B9224
{*function sub_005B9224(?:TGridDrawInfo; ?:?):?;
begin
 005B9224    push        ebp
 005B9225    mov         ebp,esp
 005B9227    add         esp,0FFFFFFF0
 005B922A    push        ebx
 005B922B    mov         dword ptr [ebp-4],eax
 005B922E    mov         eax,dword ptr [ebp-4]
 005B9231    mov         eax,dword ptr [eax+4]
 005B9234    mov         dword ptr [ebp-8],eax
 005B9237    mov         eax,dword ptr [ebp-4]
 005B923A    mov         eax,dword ptr [eax+1C]
 005B923D    mov         edx,dword ptr [ebp+8]
 005B9240    mov         edx,dword ptr [edx-4]
 005B9243    mov         edx,dword ptr [edx+260]
 005B9249    dec         edx
 005B924A    sub         edx,eax
>005B924C    jl          005B9271
 005B924E    inc         edx
 005B924F    mov         dword ptr [ebp-10],edx
 005B9252    mov         dword ptr [ebp-0C],eax
 005B9255    mov         ebx,dword ptr [ebp-4]
 005B9258    mov         edx,dword ptr [ebp-0C]
 005B925B    mov         eax,dword ptr [ebx+2C]
 005B925E    call        dword ptr [ebx+28]
 005B9261    mov         edx,dword ptr [ebp-4]
 005B9264    add         eax,dword ptr [edx]
 005B9266    add         dword ptr [ebp-8],eax
 005B9269    inc         dword ptr [ebp-0C]
 005B926C    dec         dword ptr [ebp-10]
>005B926F    jne         005B9255
 005B9271    mov         eax,dword ptr [ebp+8]
 005B9274    mov         eax,dword ptr [eax-4]
 005B9277    mov         eax,dword ptr [eax+264]
 005B927D    sub         eax,dword ptr [ebp-8]
 005B9280    mov         dword ptr [ebp-8],eax
 005B9283    mov         eax,dword ptr [ebp-8]
 005B9286    pop         ebx
 005B9287    mov         esp,ebp
 005B9289    pop         ebp
 005B928A    ret
end;*}

//005B928C
procedure TCustomGrid.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005B928C    push        ebp
 005B928D    mov         ebp,esp
 005B928F    add         esp,0FFFFFF88
 005B9292    push        esi
 005B9293    mov         byte ptr [ebp-6],cl
 005B9296    mov         byte ptr [ebp-5],dl
 005B9299    mov         dword ptr [ebp-4],eax
 005B929C    xor         eax,eax
 005B929E    push        ebp
 005B929F    push        5B9527
 005B92A4    push        dword ptr fs:[eax]
 005B92A7    mov         dword ptr fs:[eax],esp
 005B92AA    mov         eax,dword ptr [ebp-4]
 005B92AD    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005B92B3    dec         al
>005B92B5    je          005B92CF
 005B92B7    dec         eax
 005B92B8    sub         al,2
>005B92BA    jb          005B930E
>005B92BC    je          005B9465
 005B92C2    dec         al
>005B92C4    je          005B93D6
>005B92CA    jmp         005B94F1
 005B92CF    mov         eax,dword ptr [ebp+8]
 005B92D2    push        eax
 005B92D3    mov         ecx,dword ptr [ebp+0C]
 005B92D6    mov         dl,byte ptr [ebp-6]
 005B92D9    mov         eax,dword ptr [ebp-4]
 005B92DC    mov         si,0FFD4
 005B92E0    call        @CallDynaInst;TCustomGrid.MouseMove
 005B92E5    push        1
 005B92E7    mov         eax,dword ptr [ebp-4]
 005B92EA    call        TWinControl.GetHandle
 005B92EF    push        eax
 005B92F0    call        USER32.KillTimer
 005B92F5    mov         eax,dword ptr [ebp-4]
 005B92F8    call        005BA008
 005B92FD    mov         eax,dword ptr [ebp-4]
 005B9300    mov         si,0FFEB
 005B9304    call        @CallDynaInst;TControl.sub_005F5478
>005B9309    jmp         005B94F9
 005B930E    lea         edx,[ebp-70]
 005B9311    mov         eax,dword ptr [ebp-4]
 005B9314    call        TCustomGrid.CalcDrawInfo
 005B9319    lea         edx,[ebp-70]
 005B931C    mov         eax,dword ptr [ebp-4]
 005B931F    call        TCustomGrid.DrawSizingLine
 005B9324    mov         eax,dword ptr [ebp-4]
 005B9327    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>005B932E    jne         005B935A
 005B9330    mov         eax,dword ptr [ebp-4]
 005B9333    mov         si,0FFC8
 005B9337    call        @CallDynaInst;TControl.sub_005F40CC
 005B933C    test        al,al
>005B933E    je          005B935A
 005B9340    mov         eax,dword ptr [ebp-4]
 005B9343    call        TControl.GetClientWidth
 005B9348    mov         edx,dword ptr [ebp-4]
 005B934B    sub         eax,dword ptr [edx+264]
 005B9351    mov         edx,dword ptr [ebp-4]
 005B9354    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 005B935A    mov         eax,dword ptr [ebp-4]
 005B935D    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>005B9364    jne         005B939E
 005B9366    push        ebp
 005B9367    lea         eax,[ebp-70]
 005B936A    call        005B9224
 005B936F    pop         ecx
 005B9370    mov         dword ptr [ebp-0C],eax
 005B9373    cmp         dword ptr [ebp-0C],1
>005B9377    jle         005B94F9
 005B937D    mov         eax,dword ptr [ebp-4]
 005B9380    mov         edx,dword ptr [eax+260];TCustomGrid.FSizingIndex:Longint
 005B9386    mov         ecx,dword ptr [ebp-0C]
 005B9389    mov         eax,dword ptr [ebp-4]
 005B938C    call        TCustomGrid.SetColWidths
 005B9391    mov         eax,dword ptr [ebp-4]
 005B9394    call        005BA9C8
>005B9399    jmp         005B94F9
 005B939E    push        ebp
 005B939F    lea         eax,[ebp-40]
 005B93A2    call        005B9224
 005B93A7    pop         ecx
 005B93A8    mov         dword ptr [ebp-0C],eax
 005B93AB    cmp         dword ptr [ebp-0C],1
>005B93AF    jle         005B94F9
 005B93B5    mov         eax,dword ptr [ebp-4]
 005B93B8    mov         edx,dword ptr [eax+260];TCustomGrid.FSizingIndex:Longint
 005B93BE    mov         ecx,dword ptr [ebp-0C]
 005B93C1    mov         eax,dword ptr [ebp-4]
 005B93C4    call        005B9DF4
 005B93C9    mov         eax,dword ptr [ebp-4]
 005B93CC    call        005BA9C8
>005B93D1    jmp         005B94F9
 005B93D6    mov         eax,dword ptr [ebp-4]
 005B93D9    call        TCustomGrid.DrawMove
 005B93DE    push        1
 005B93E0    mov         eax,dword ptr [ebp-4]
 005B93E3    call        TWinControl.GetHandle
 005B93E8    push        eax
 005B93E9    call        USER32.KillTimer
 005B93EE    lea         ecx,[ebp-78]
 005B93F1    mov         edx,dword ptr [ebp+8]
 005B93F4    mov         eax,dword ptr [ebp+0C]
 005B93F7    call        Point
 005B93FC    lea         eax,[ebp-78]
 005B93FF    push        eax
 005B9400    mov         eax,dword ptr [ebp-4]
 005B9403    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 005B9409    mov         eax,dword ptr [ebp-4]
 005B940C    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B9412    mov         eax,dword ptr [ebp-4]
 005B9415    mov         si,0FF9F
 005B9419    call        @CallDynaInst;TCustomGrid.sub_005BAB50
 005B941E    test        al,al
>005B9420    je          005B9458
 005B9422    mov         eax,dword ptr [ebp-4]
 005B9425    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B942B    mov         edx,dword ptr [ebp-4]
 005B942E    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B9434    je          005B9458
 005B9436    mov         eax,dword ptr [ebp-4]
 005B9439    mov         ecx,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 005B943F    mov         eax,dword ptr [ebp-4]
 005B9442    mov         edx,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B9448    mov         eax,dword ptr [ebp-4]
 005B944B    call        005B4DD8
 005B9450    mov         eax,dword ptr [ebp-4]
 005B9453    call        005BA9C8
 005B9458    mov         eax,dword ptr [ebp-4]
 005B945B    call        005BA008
>005B9460    jmp         005B94F9
 005B9465    mov         eax,dword ptr [ebp-4]
 005B9468    call        TCustomGrid.DrawMove
 005B946D    push        1
 005B946F    mov         eax,dword ptr [ebp-4]
 005B9472    call        TWinControl.GetHandle
 005B9477    push        eax
 005B9478    call        USER32.KillTimer
 005B947D    lea         ecx,[ebp-78]
 005B9480    mov         edx,dword ptr [ebp+8]
 005B9483    mov         eax,dword ptr [ebp+0C]
 005B9486    call        Point
 005B948B    lea         eax,[ebp-78]
 005B948E    push        eax
 005B948F    mov         eax,dword ptr [ebp-4]
 005B9492    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 005B9498    mov         eax,dword ptr [ebp-4]
 005B949B    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B94A1    mov         eax,dword ptr [ebp-4]
 005B94A4    mov         si,0FF9E
 005B94A8    call        @CallDynaInst;TCustomGrid.sub_005BAB6C
 005B94AD    test        al,al
>005B94AF    je          005B94E7
 005B94B1    mov         eax,dword ptr [ebp-4]
 005B94B4    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B94BA    mov         edx,dword ptr [ebp-4]
 005B94BD    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B94C3    je          005B94E7
 005B94C5    mov         eax,dword ptr [ebp-4]
 005B94C8    mov         ecx,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 005B94CE    mov         eax,dword ptr [ebp-4]
 005B94D1    mov         edx,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 005B94D7    mov         eax,dword ptr [ebp-4]
 005B94DA    call        005B4EFC
 005B94DF    mov         eax,dword ptr [ebp-4]
 005B94E2    call        005BA9C8
 005B94E7    mov         eax,dword ptr [ebp-4]
 005B94EA    call        005BA008
>005B94EF    jmp         005B94F9
 005B94F1    mov         eax,dword ptr [ebp-4]
 005B94F4    call        005BA008
 005B94F9    mov         eax,dword ptr [ebp+0C]
 005B94FC    push        eax
 005B94FD    mov         eax,dword ptr [ebp+8]
 005B9500    push        eax
 005B9501    mov         cl,byte ptr [ebp-6]
 005B9504    mov         dl,byte ptr [ebp-5]
 005B9507    mov         eax,dword ptr [ebp-4]
 005B950A    call        TControl.MouseUp
 005B950F    xor         eax,eax
 005B9511    pop         edx
 005B9512    pop         ecx
 005B9513    pop         ecx
 005B9514    mov         dword ptr fs:[eax],edx
 005B9517    push        5B952E
 005B951C    mov         eax,dword ptr [ebp-4]
 005B951F    mov         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
 005B9526    ret
>005B9527    jmp         @HandleFinally
>005B952C    jmp         005B951C
 005B952E    pop         esi
 005B952F    mov         esp,ebp
 005B9531    pop         ebp
 005B9532    ret         8
*}
end;

//005B9538
{*procedure sub_005B9538(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005B9538    push        ebp
 005B9539    mov         ebp,esp
 005B953B    add         esp,0FFFFFFF4
 005B953E    push        esi
 005B953F    mov         dword ptr [ebp-0C],ecx
 005B9542    mov         dword ptr [ebp-8],edx
 005B9545    mov         dword ptr [ebp-4],eax
 005B9548    mov         eax,dword ptr [ebp-4]
 005B954B    mov         si,0FFC8
 005B954F    call        @CallDynaInst;TControl.sub_005F40CC
 005B9554    test        al,al
>005B9556    je          005B956C
 005B9558    cmp         dword ptr [ebp+0C],0
>005B955C    jne         005B956C
 005B955E    mov         eax,dword ptr [ebp-4]
 005B9561    call        TControl.GetClientWidth
 005B9566    sub         eax,dword ptr [ebp-8]
 005B9569    mov         dword ptr [ebp-8],eax
 005B956C    mov         eax,dword ptr [ebp-0C]
 005B956F    mov         edx,dword ptr [ebp-4]
 005B9572    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B9578    je          005B96F6
 005B957E    mov         eax,dword ptr [ebp+10]
 005B9581    mov         eax,dword ptr [eax+18]
 005B9584    mov         edx,dword ptr [ebp-4]
 005B9587    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B958D    jne         005B959E
 005B958F    mov         eax,dword ptr [ebp+10]
 005B9592    mov         eax,dword ptr [eax+4]
 005B9595    cmp         eax,dword ptr [ebp-8]
>005B9598    jg          005B96F6
 005B959E    mov         eax,dword ptr [ebp+10]
 005B95A1    mov         eax,dword ptr [eax+20]
 005B95A4    dec         eax
 005B95A5    mov         edx,dword ptr [ebp-4]
 005B95A8    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B95AE    jne         005B95BF
 005B95B0    mov         eax,dword ptr [ebp+10]
 005B95B3    mov         eax,dword ptr [eax+8]
 005B95B6    cmp         eax,dword ptr [ebp-8]
>005B95B9    jl          005B96F6
 005B95BF    mov         eax,dword ptr [ebp-4]
 005B95C2    call        TCustomGrid.DrawMove
 005B95C7    mov         eax,dword ptr [ebp+10]
 005B95CA    mov         eax,dword ptr [eax+4]
 005B95CD    cmp         eax,dword ptr [ebp-8]
>005B95D0    jle         005B9615
 005B95D2    mov         eax,dword ptr [ebp+10]
 005B95D5    mov         eax,dword ptr [eax+18]
 005B95D8    mov         edx,dword ptr [ebp-4]
 005B95DB    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B95E1    jge         005B960A
 005B95E3    push        0
 005B95E5    push        0
 005B95E7    xor         ecx,ecx
 005B95E9    mov         edx,dword ptr [ebp+0C]
 005B95EC    mov         eax,dword ptr [ebp-4]
 005B95EF    call        005B7674
 005B95F4    mov         eax,dword ptr [ebp-4]
 005B95F7    mov         edx,dword ptr [eax]
 005B95F9    call        dword ptr [edx+88];TCustomGrid.sub_005FBF08
 005B95FF    mov         edx,dword ptr [ebp+14]
 005B9602    mov         eax,dword ptr [ebp-4]
 005B9605    call        TCustomGrid.CalcDrawInfo
 005B960A    mov         eax,dword ptr [ebp+10]
 005B960D    mov         eax,dword ptr [eax+1C]
 005B9610    mov         dword ptr [ebp-0C],eax
>005B9613    jmp         005B968A
 005B9615    mov         eax,dword ptr [ebp+10]
 005B9618    mov         eax,dword ptr [eax+14]
 005B961B    cmp         eax,dword ptr [ebp-8]
>005B961E    jg          005B9678
 005B9620    mov         eax,dword ptr [ebp+10]
 005B9623    mov         eax,dword ptr [eax+10]
 005B9626    mov         edx,dword ptr [ebp-4]
 005B9629    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B962F    jne         005B966D
 005B9631    mov         eax,dword ptr [ebp+10]
 005B9634    mov         eax,dword ptr [eax+20]
 005B9637    dec         eax
 005B9638    mov         edx,dword ptr [ebp-4]
 005B963B    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>005B9641    jle         005B966D
 005B9643    push        0
 005B9645    push        0
 005B9647    mov         ecx,1
 005B964C    mov         edx,dword ptr [ebp+0C]
 005B964F    mov         eax,dword ptr [ebp-4]
 005B9652    call        005B7674
 005B9657    mov         eax,dword ptr [ebp-4]
 005B965A    mov         edx,dword ptr [eax]
 005B965C    call        dword ptr [edx+88];TCustomGrid.sub_005FBF08
 005B9662    mov         edx,dword ptr [ebp+14]
 005B9665    mov         eax,dword ptr [ebp-4]
 005B9668    call        TCustomGrid.CalcDrawInfo
 005B966D    mov         eax,dword ptr [ebp+10]
 005B9670    mov         eax,dword ptr [eax+10]
 005B9673    mov         dword ptr [ebp-0C],eax
>005B9676    jmp         005B968A
 005B9678    cmp         dword ptr [ebp-0C],0
>005B967C    jge         005B968A
 005B967E    mov         eax,dword ptr [ebp-4]
 005B9681    mov         eax,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 005B9687    mov         dword ptr [ebp-0C],eax
 005B968A    mov         eax,dword ptr [ebp-4]
 005B968D    cmp         byte ptr [eax+28E],5;TCustomGrid.FGridState:TGridState
>005B9694    jne         005B96B6
 005B9696    mov         eax,dword ptr [ebp+8]
 005B9699    push        eax
 005B969A    lea         ecx,[ebp-0C]
 005B969D    mov         eax,dword ptr [ebp-4]
 005B96A0    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B96A6    mov         eax,dword ptr [ebp-4]
 005B96A9    mov         si,0FFA1
 005B96AD    call        @CallDynaInst;TCustomGrid.sub_005BAAE0
 005B96B2    test        al,al
>005B96B4    jne         005B96E2
 005B96B6    mov         eax,dword ptr [ebp-4]
 005B96B9    cmp         byte ptr [eax+28E],4;TCustomGrid.FGridState:TGridState
>005B96C0    jne         005B96EE
 005B96C2    mov         eax,dword ptr [ebp+8]
 005B96C5    push        eax
 005B96C6    lea         ecx,[ebp-0C]
 005B96C9    mov         eax,dword ptr [ebp-4]
 005B96CC    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 005B96D2    mov         eax,dword ptr [ebp-4]
 005B96D5    mov         si,0FFA0
 005B96D9    call        @CallDynaInst;TCustomGrid.sub_005BAAFC
 005B96DE    test        al,al
>005B96E0    je          005B96EE
 005B96E2    mov         eax,dword ptr [ebp-0C]
 005B96E5    mov         edx,dword ptr [ebp-4]
 005B96E8    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 005B96EE    mov         eax,dword ptr [ebp-4]
 005B96F1    call        TCustomGrid.DrawMove
 005B96F6    pop         esi
 005B96F7    mov         esp,ebp
 005B96F9    pop         ebp
 005B96FA    ret         10
end;*}

//005B9700
function TCustomGrid.GetColWidths(Index:Longint):Integer;
begin
{*
 005B9700    push        ebp
 005B9701    mov         ebp,esp
 005B9703    add         esp,0FFFFFFF4
 005B9706    mov         dword ptr [ebp-8],edx
 005B9709    mov         dword ptr [ebp-4],eax
 005B970C    mov         eax,dword ptr [ebp-4]
 005B970F    cmp         dword ptr [eax+220],0
>005B9716    je          005B9726
 005B9718    mov         eax,dword ptr [ebp-8]
 005B971B    mov         edx,dword ptr [ebp-4]
 005B971E    cmp         eax,dword ptr [edx+21C]
>005B9724    jl          005B9734
 005B9726    mov         eax,dword ptr [ebp-4]
 005B9729    mov         eax,dword ptr [eax+230]
 005B972F    mov         dword ptr [ebp-0C],eax
>005B9732    jmp         005B9747
 005B9734    mov         eax,dword ptr [ebp-4]
 005B9737    mov         eax,dword ptr [eax+220]
 005B973D    mov         edx,dword ptr [ebp-8]
 005B9740    mov         eax,dword ptr [eax+edx*4+4]
 005B9744    mov         dword ptr [ebp-0C],eax
 005B9747    mov         eax,dword ptr [ebp-0C]
 005B974A    mov         esp,ebp
 005B974C    pop         ebp
 005B974D    ret
*}
end;

//005B9750
{*function sub_005B9750(?:?; ?:?):?;
begin
 005B9750    push        ebp
 005B9751    mov         ebp,esp
 005B9753    add         esp,0FFFFFFF4
 005B9756    mov         dword ptr [ebp-8],edx
 005B9759    mov         dword ptr [ebp-4],eax
 005B975C    mov         eax,dword ptr [ebp-4]
 005B975F    cmp         dword ptr [eax+250],0
>005B9766    je          005B9776
 005B9768    mov         eax,dword ptr [ebp-8]
 005B976B    mov         edx,dword ptr [ebp-4]
 005B976E    cmp         eax,dword ptr [edx+24C]
>005B9774    jl          005B9784
 005B9776    mov         eax,dword ptr [ebp-4]
 005B9779    mov         eax,dword ptr [eax+234]
 005B977F    mov         dword ptr [ebp-0C],eax
>005B9782    jmp         005B9797
 005B9784    mov         eax,dword ptr [ebp-4]
 005B9787    mov         eax,dword ptr [eax+250]
 005B978D    mov         edx,dword ptr [ebp-8]
 005B9790    mov         eax,dword ptr [eax+edx*4+4]
 005B9794    mov         dword ptr [ebp-0C],eax
 005B9797    mov         eax,dword ptr [ebp-0C]
 005B979A    mov         esp,ebp
 005B979C    pop         ebp
 005B979D    ret
end;*}

//005B97A0
{*procedure sub_005B97A0(?:TCustomGrid; ?:?);
begin
 005B97A0    push        ebp
 005B97A1    mov         ebp,esp
 005B97A3    add         esp,0FFFFFFF8
 005B97A6    mov         dword ptr [ebp-8],edx
 005B97A9    mov         dword ptr [ebp-4],eax
 005B97AC    mov         ecx,dword ptr [ebp-8]
 005B97AF    mov         eax,dword ptr [ebp-4]
 005B97B2    lea         edx,[eax+210];TCustomGrid.FAnchor:TGridCoord
 005B97B8    mov         eax,dword ptr [ebp-4]
 005B97BB    add         eax,228;TCustomGrid.FCurrent:TGridCoord
 005B97C0    call        005B3118
 005B97C5    pop         ecx
 005B97C6    pop         ecx
 005B97C7    pop         ebp
 005B97C8    ret
end;*}

//005B97CC
{*function sub_005B97CC(?:?; ?:?):?;
begin
 005B97CC    push        ebp
 005B97CD    mov         ebp,esp
 005B97CF    add         esp,0FFFFFFF4
 005B97D2    mov         dword ptr [ebp-8],edx
 005B97D5    mov         dword ptr [ebp-4],eax
 005B97D8    mov         eax,dword ptr [ebp-4]
 005B97DB    cmp         dword ptr [eax+224],0
>005B97E2    jne         005B97EA
 005B97E4    mov         byte ptr [ebp-9],1
>005B97E8    jmp         005B97FD
 005B97EA    mov         eax,dword ptr [ebp-4]
 005B97ED    mov         eax,dword ptr [eax+224]
 005B97F3    mov         edx,dword ptr [ebp-8]
 005B97F6    mov         eax,dword ptr [eax+edx*4+4]
 005B97FA    mov         byte ptr [ebp-9],al
 005B97FD    mov         al,byte ptr [ebp-9]
 005B9800    mov         esp,ebp
 005B9802    pop         ebp
 005B9803    ret
end;*}

//005B9804
{*function TDrawGrid.GetVisibleColCount:?;
begin
 005B9804    push        ebp
 005B9805    mov         ebp,esp
 005B9807    add         esp,0FFFFFF98
 005B980A    mov         dword ptr [ebp-4],eax
 005B980D    lea         edx,[ebp-68]
 005B9810    mov         eax,dword ptr [ebp-4]
 005B9813    call        TCustomGrid.CalcDrawInfo
 005B9818    mov         eax,dword ptr [ebp-58]
 005B981B    mov         edx,dword ptr [ebp-4]
 005B981E    sub         eax,dword ptr [edx+258]
 005B9824    inc         eax
 005B9825    mov         dword ptr [ebp-8],eax
 005B9828    mov         eax,dword ptr [ebp-8]
 005B982B    mov         esp,ebp
 005B982D    pop         ebp
 005B982E    ret
end;*}

//005B9830
{*function TDrawGrid.GetVisibleRowCount:?;
begin
 005B9830    push        ebp
 005B9831    mov         ebp,esp
 005B9833    add         esp,0FFFFFF98
 005B9836    mov         dword ptr [ebp-4],eax
 005B9839    lea         edx,[ebp-68]
 005B983C    mov         eax,dword ptr [ebp-4]
 005B983F    call        TCustomGrid.CalcDrawInfo
 005B9844    mov         eax,dword ptr [ebp-28]
 005B9847    mov         edx,dword ptr [ebp-4]
 005B984A    sub         eax,dword ptr [edx+25C]
 005B9850    inc         eax
 005B9851    mov         dword ptr [ebp-8],eax
 005B9854    mov         eax,dword ptr [ebp-8]
 005B9857    mov         esp,ebp
 005B9859    pop         ebp
 005B985A    ret
end;*}

//005B985C
procedure TCCalendar.SetBorderStyle(Value:TFormBorderStyle);
begin
{*
 005B985C    push        ebp
 005B985D    mov         ebp,esp
 005B985F    add         esp,0FFFFFFF8
 005B9862    mov         byte ptr [ebp-5],dl
 005B9865    mov         dword ptr [ebp-4],eax
 005B9868    mov         eax,dword ptr [ebp-4]
 005B986B    mov         al,byte ptr [eax+218];TCCalendar.FBorderStyle:TBorderStyle
 005B9871    cmp         al,byte ptr [ebp-5]
>005B9874    je          005B988A
 005B9876    mov         al,byte ptr [ebp-5]
 005B9879    mov         edx,dword ptr [ebp-4]
 005B987C    mov         byte ptr [edx+218],al;TCCalendar.FBorderStyle:TBorderStyle
 005B9882    mov         eax,dword ptr [ebp-4]
 005B9885    call        TWinControl.RecreateWnd
 005B988A    pop         ecx
 005B988B    pop         ecx
 005B988C    pop         ebp
 005B988D    ret
*}
end;

//005B9890
{*procedure sub_005B9890(?:TValueListEditor; ?:?);
begin
 005B9890    push        ebp
 005B9891    mov         ebp,esp
 005B9893    add         esp,0FFFFFFF8
 005B9896    mov         dword ptr [ebp-8],edx
 005B9899    mov         dword ptr [ebp-4],eax
 005B989C    mov         eax,dword ptr [ebp-4]
 005B989F    mov         eax,dword ptr [eax+228];TValueListEditor.FCurrent:TGridCoord
 005B98A5    cmp         eax,dword ptr [ebp-8]
>005B98A8    je          005B98C0
 005B98AA    push        1
 005B98AC    mov         eax,dword ptr [ebp-4]
 005B98AF    mov         ecx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005B98B5    mov         edx,dword ptr [ebp-8]
 005B98B8    mov         eax,dword ptr [ebp-4]
 005B98BB    call        005B6E0C
 005B98C0    pop         ecx
 005B98C1    pop         ecx
 005B98C2    pop         ebp
 005B98C3    ret
end;*}

//005B98C4
procedure TDrawGrid.SetColCount(Value:Integer);
begin
{*
 005B98C4    push        ebp
 005B98C5    mov         ebp,esp
 005B98C7    add         esp,0FFFFFFF8
 005B98CA    mov         dword ptr [ebp-8],edx
 005B98CD    mov         dword ptr [ebp-4],eax
 005B98D0    mov         eax,dword ptr [ebp-4]
 005B98D3    mov         eax,dword ptr [eax+21C];TDrawGrid.FColCount:Longint
 005B98D9    cmp         eax,dword ptr [ebp-8]
>005B98DC    je          005B9940
 005B98DE    cmp         dword ptr [ebp-8],1
>005B98E2    jge         005B98EB
 005B98E4    mov         dword ptr [ebp-8],1
 005B98EB    mov         eax,dword ptr [ebp-8]
 005B98EE    mov         edx,dword ptr [ebp-4]
 005B98F1    cmp         eax,dword ptr [edx+238];TDrawGrid.FFixedCols:Integer
>005B98F7    jg          005B9905
 005B98F9    mov         edx,dword ptr [ebp-8]
 005B98FC    dec         edx
 005B98FD    mov         eax,dword ptr [ebp-4]
 005B9900    call        TValueListEditor.SetFixedCols
 005B9905    mov         eax,dword ptr [ebp-4]
 005B9908    mov         ecx,dword ptr [eax+24C];TDrawGrid.FRowCount:Longint
 005B990E    mov         edx,dword ptr [ebp-8]
 005B9911    mov         eax,dword ptr [ebp-4]
 005B9914    call        005B68EC
 005B9919    mov         eax,dword ptr [ebp-4]
 005B991C    test        byte ptr [eax+249],10;TDrawGrid.?f249:byte
>005B9923    je          005B9940
 005B9925    mov         eax,dword ptr [ebp-4]
 005B9928    mov         eax,dword ptr [eax+21C];TDrawGrid.FColCount:Longint
 005B992E    dec         eax
 005B992F    mov         edx,dword ptr [ebp-4]
 005B9932    mov         dword ptr [edx+210],eax;TDrawGrid.FAnchor:TGridCoord
 005B9938    mov         eax,dword ptr [ebp-4]
 005B993B    mov         edx,dword ptr [eax]
 005B993D    call        dword ptr [edx+7C];TWinControl.Invalidate
 005B9940    pop         ecx
 005B9941    pop         ecx
 005B9942    pop         ebp
 005B9943    ret
*}
end;

//005B9944
procedure TCustomGrid.SetColWidths(Index:Longint; Value:Integer);
begin
{*
 005B9944    push        ebp
 005B9945    mov         ebp,esp
 005B9947    add         esp,0FFFFFFF0
 005B994A    push        ebx
 005B994B    push        esi
 005B994C    xor         ebx,ebx
 005B994E    mov         dword ptr [ebp-10],ebx
 005B9951    mov         dword ptr [ebp-0C],ecx
 005B9954    mov         dword ptr [ebp-8],edx
 005B9957    mov         dword ptr [ebp-4],eax
 005B995A    xor         eax,eax
 005B995C    push        ebp
 005B995D    push        5B9A1F
 005B9962    push        dword ptr fs:[eax]
 005B9965    mov         dword ptr fs:[eax],esp
 005B9968    mov         eax,dword ptr [ebp-4]
 005B996B    cmp         dword ptr [eax+220],0
>005B9972    jne         005B9993
 005B9974    mov         eax,dword ptr [ebp-4]
 005B9977    add         eax,220
 005B997C    mov         edx,dword ptr [ebp-4]
 005B997F    mov         ecx,dword ptr [edx+230]
 005B9985    mov         edx,dword ptr [ebp-4]
 005B9988    mov         edx,dword ptr [edx+21C]
 005B998E    call        005B3610
 005B9993    mov         eax,dword ptr [ebp-8]
 005B9996    mov         edx,dword ptr [ebp-4]
 005B9999    cmp         eax,dword ptr [edx+21C]
>005B999F    jl          005B99B6
 005B99A1    lea         edx,[ebp-10]
 005B99A4    mov         eax,[006EA080];^gvar_00654FF4
 005B99A9    call        LoadResString
 005B99AE    mov         eax,dword ptr [ebp-10]
 005B99B1    call        005B30F8
 005B99B6    mov         eax,dword ptr [ebp-4]
 005B99B9    mov         eax,dword ptr [eax+220]
 005B99BF    mov         edx,dword ptr [ebp-8]
 005B99C2    mov         eax,dword ptr [eax+edx*4+4]
 005B99C6    cmp         eax,dword ptr [ebp-0C]
>005B99C9    je          005B9A09
 005B99CB    mov         eax,dword ptr [ebp-0C]
 005B99CE    push        eax
 005B99CF    mov         eax,dword ptr [ebp-4]
 005B99D2    mov         eax,dword ptr [eax+220]
 005B99D8    mov         edx,dword ptr [ebp-8]
 005B99DB    mov         ecx,dword ptr [eax+edx*4+4]
 005B99DF    mov         edx,dword ptr [ebp-8]
 005B99E2    mov         eax,dword ptr [ebp-4]
 005B99E5    call        005B7BA4
 005B99EA    mov         eax,dword ptr [ebp-4]
 005B99ED    mov         eax,dword ptr [eax+220]
 005B99F3    mov         edx,dword ptr [ebp-8]
 005B99F6    mov         ecx,dword ptr [ebp-0C]
 005B99F9    mov         dword ptr [eax+edx*4+4],ecx
 005B99FD    mov         eax,dword ptr [ebp-4]
 005B9A00    mov         si,0FFA5
 005B9A04    call        @CallDynaInst
 005B9A09    xor         eax,eax
 005B9A0B    pop         edx
 005B9A0C    pop         ecx
 005B9A0D    pop         ecx
 005B9A0E    mov         dword ptr fs:[eax],edx
 005B9A11    push        5B9A26
 005B9A16    lea         eax,[ebp-10]
 005B9A19    call        @LStrClr
 005B9A1E    ret
>005B9A1F    jmp         @HandleFinally
>005B9A24    jmp         005B9A16
 005B9A26    pop         esi
 005B9A27    pop         ebx
 005B9A28    mov         esp,ebp
 005B9A2A    pop         ebp
 005B9A2B    ret
*}
end;

//005B9A2C
procedure TValueListEditor.SetDefaultColWidth(Value:Integer);
begin
{*
 005B9A2C    push        ebp
 005B9A2D    mov         ebp,esp
 005B9A2F    add         esp,0FFFFFFF8
 005B9A32    push        esi
 005B9A33    mov         dword ptr [ebp-8],edx
 005B9A36    mov         dword ptr [ebp-4],eax
 005B9A39    mov         eax,dword ptr [ebp-4]
 005B9A3C    cmp         dword ptr [eax+220],0;TValueListEditor.FColWidths:Pointer
>005B9A43    je          005B9A56
 005B9A45    mov         eax,dword ptr [ebp-4]
 005B9A48    add         eax,220;TValueListEditor.FColWidths:Pointer
 005B9A4D    xor         ecx,ecx
 005B9A4F    xor         edx,edx
 005B9A51    call        005B3610
 005B9A56    mov         eax,dword ptr [ebp-8]
 005B9A59    mov         edx,dword ptr [ebp-4]
 005B9A5C    mov         dword ptr [edx+230],eax;TValueListEditor.FDefaultColWidth:Integer
 005B9A62    mov         eax,dword ptr [ebp-4]
 005B9A65    mov         si,0FFA5
 005B9A69    call        @CallDynaInst;TValueListEditor.sub_005ADF70
 005B9A6E    mov         eax,dword ptr [ebp-4]
 005B9A71    call        005B71B8
 005B9A76    pop         esi
 005B9A77    pop         ecx
 005B9A78    pop         ecx
 005B9A79    pop         ebp
 005B9A7A    ret
*}
end;

//005B9A7C
procedure TValueListEditor.SetDefaultRowHeight(Value:Integer);
begin
{*
 005B9A7C    push        ebp
 005B9A7D    mov         ebp,esp
 005B9A7F    add         esp,0FFFFFFF8
 005B9A82    push        esi
 005B9A83    mov         dword ptr [ebp-8],edx
 005B9A86    mov         dword ptr [ebp-4],eax
 005B9A89    mov         eax,dword ptr [ebp-4]
 005B9A8C    cmp         dword ptr [eax+250],0;TValueListEditor.FRowHeights:Pointer
>005B9A93    je          005B9AA6
 005B9A95    mov         eax,dword ptr [ebp-4]
 005B9A98    add         eax,250;TValueListEditor.FRowHeights:Pointer
 005B9A9D    xor         ecx,ecx
 005B9A9F    xor         edx,edx
 005B9AA1    call        005B3610
 005B9AA6    mov         eax,dword ptr [ebp-8]
 005B9AA9    mov         edx,dword ptr [ebp-4]
 005B9AAC    mov         dword ptr [edx+234],eax;TValueListEditor.FDefaultRowHeight:Integer
 005B9AB2    mov         eax,dword ptr [ebp-4]
 005B9AB5    mov         si,0FFA4
 005B9AB9    call        @CallDynaInst;TCustomGrid.sub_005BA93C
 005B9ABE    mov         eax,dword ptr [ebp-4]
 005B9AC1    call        005B71B8
 005B9AC6    pop         esi
 005B9AC7    pop         ecx
 005B9AC8    pop         ecx
 005B9AC9    pop         ebp
 005B9ACA    ret
*}
end;

//005B9ACC
procedure TValueListEditor.SetFixedColor(Value:TColor);
begin
{*
 005B9ACC    push        ebp
 005B9ACD    mov         ebp,esp
 005B9ACF    add         esp,0FFFFFFF8
 005B9AD2    mov         dword ptr [ebp-8],edx
 005B9AD5    mov         dword ptr [ebp-4],eax
 005B9AD8    mov         eax,dword ptr [ebp-4]
 005B9ADB    mov         eax,dword ptr [eax+240];TValueListEditor.FFixedColor:TColor
 005B9AE1    cmp         eax,dword ptr [ebp-8]
>005B9AE4    je          005B9AFA
 005B9AE6    mov         eax,dword ptr [ebp-8]
 005B9AE9    mov         edx,dword ptr [ebp-4]
 005B9AEC    mov         dword ptr [edx+240],eax;TValueListEditor.FFixedColor:TColor
 005B9AF2    mov         eax,dword ptr [ebp-4]
 005B9AF5    call        005B71B8
 005B9AFA    pop         ecx
 005B9AFB    pop         ecx
 005B9AFC    pop         ebp
 005B9AFD    ret
*}
end;

//005B9B00
procedure TValueListEditor.SetFixedCols(Value:Integer);
begin
{*
 005B9B00    push        ebp
 005B9B01    mov         ebp,esp
 005B9B03    add         esp,0FFFFFFF0
 005B9B06    xor         ecx,ecx
 005B9B08    mov         dword ptr [ebp-10],ecx
 005B9B0B    mov         dword ptr [ebp-0C],ecx
 005B9B0E    mov         dword ptr [ebp-8],edx
 005B9B11    mov         dword ptr [ebp-4],eax
 005B9B14    xor         eax,eax
 005B9B16    push        ebp
 005B9B17    push        5B9BA5
 005B9B1C    push        dword ptr fs:[eax]
 005B9B1F    mov         dword ptr fs:[eax],esp
 005B9B22    mov         eax,dword ptr [ebp-4]
 005B9B25    mov         eax,dword ptr [eax+238];TValueListEditor.FFixedCols:Integer
 005B9B2B    cmp         eax,dword ptr [ebp-8]
>005B9B2E    je          005B9B8A
 005B9B30    cmp         dword ptr [ebp-8],0
>005B9B34    jge         005B9B4B
 005B9B36    lea         edx,[ebp-0C]
 005B9B39    mov         eax,[006EA080];^gvar_00654FF4
 005B9B3E    call        LoadResString
 005B9B43    mov         eax,dword ptr [ebp-0C]
 005B9B46    call        005B30F8
 005B9B4B    mov         eax,dword ptr [ebp-8]
 005B9B4E    mov         edx,dword ptr [ebp-4]
 005B9B51    cmp         eax,dword ptr [edx+21C];TValueListEditor.FColCount:Longint
>005B9B57    jl          005B9B6E
 005B9B59    lea         edx,[ebp-10]
 005B9B5C    mov         eax,[006EA070];^gvar_00654FD4
 005B9B61    call        LoadResString
 005B9B66    mov         eax,dword ptr [ebp-10]
 005B9B69    call        005B30F8
 005B9B6E    mov         eax,dword ptr [ebp-8]
 005B9B71    mov         edx,dword ptr [ebp-4]
 005B9B74    mov         dword ptr [edx+238],eax;TValueListEditor.FFixedCols:Integer
 005B9B7A    mov         eax,dword ptr [ebp-4]
 005B9B7D    call        005B70F4
 005B9B82    mov         eax,dword ptr [ebp-4]
 005B9B85    call        005B71B8
 005B9B8A    xor         eax,eax
 005B9B8C    pop         edx
 005B9B8D    pop         ecx
 005B9B8E    pop         ecx
 005B9B8F    mov         dword ptr fs:[eax],edx
 005B9B92    push        5B9BAC
 005B9B97    lea         eax,[ebp-10]
 005B9B9A    mov         edx,2
 005B9B9F    call        @LStrArrayClr
 005B9BA4    ret
>005B9BA5    jmp         @HandleFinally
>005B9BAA    jmp         005B9B97
 005B9BAC    mov         esp,ebp
 005B9BAE    pop         ebp
 005B9BAF    ret
*}
end;

//005B9BB0
procedure TDrawGrid.SetFixedRows(Value:Integer);
begin
{*
 005B9BB0    push        ebp
 005B9BB1    mov         ebp,esp
 005B9BB3    add         esp,0FFFFFFF0
 005B9BB6    xor         ecx,ecx
 005B9BB8    mov         dword ptr [ebp-10],ecx
 005B9BBB    mov         dword ptr [ebp-0C],ecx
 005B9BBE    mov         dword ptr [ebp-8],edx
 005B9BC1    mov         dword ptr [ebp-4],eax
 005B9BC4    xor         eax,eax
 005B9BC6    push        ebp
 005B9BC7    push        5B9C55
 005B9BCC    push        dword ptr fs:[eax]
 005B9BCF    mov         dword ptr fs:[eax],esp
 005B9BD2    mov         eax,dword ptr [ebp-4]
 005B9BD5    mov         eax,dword ptr [eax+23C];TDrawGrid.FFixedRows:Integer
 005B9BDB    cmp         eax,dword ptr [ebp-8]
>005B9BDE    je          005B9C3A
 005B9BE0    cmp         dword ptr [ebp-8],0
>005B9BE4    jge         005B9BFB
 005B9BE6    lea         edx,[ebp-0C]
 005B9BE9    mov         eax,[006EA080];^gvar_00654FF4
 005B9BEE    call        LoadResString
 005B9BF3    mov         eax,dword ptr [ebp-0C]
 005B9BF6    call        005B30F8
 005B9BFB    mov         eax,dword ptr [ebp-8]
 005B9BFE    mov         edx,dword ptr [ebp-4]
 005B9C01    cmp         eax,dword ptr [edx+24C];TDrawGrid.FRowCount:Longint
>005B9C07    jl          005B9C1E
 005B9C09    lea         edx,[ebp-10]
 005B9C0C    mov         eax,[006EA074];^gvar_00654FDC
 005B9C11    call        LoadResString
 005B9C16    mov         eax,dword ptr [ebp-10]
 005B9C19    call        005B30F8
 005B9C1E    mov         eax,dword ptr [ebp-8]
 005B9C21    mov         edx,dword ptr [ebp-4]
 005B9C24    mov         dword ptr [edx+23C],eax;TDrawGrid.FFixedRows:Integer
 005B9C2A    mov         eax,dword ptr [ebp-4]
 005B9C2D    call        005B70F4
 005B9C32    mov         eax,dword ptr [ebp-4]
 005B9C35    call        005B71B8
 005B9C3A    xor         eax,eax
 005B9C3C    pop         edx
 005B9C3D    pop         ecx
 005B9C3E    pop         ecx
 005B9C3F    mov         dword ptr fs:[eax],edx
 005B9C42    push        5B9C5C
 005B9C47    lea         eax,[ebp-10]
 005B9C4A    mov         edx,2
 005B9C4F    call        @LStrArrayClr
 005B9C54    ret
>005B9C55    jmp         @HandleFinally
>005B9C5A    jmp         005B9C47
 005B9C5C    mov         esp,ebp
 005B9C5E    pop         ebp
 005B9C5F    ret
*}
end;

//005B9C60
{*procedure sub_005B9C60(?:?; ?:?);
begin
 005B9C60    push        ebp
 005B9C61    mov         ebp,esp
 005B9C63    add         esp,0FFFFFFF8
 005B9C66    mov         byte ptr [ebp-5],dl
 005B9C69    mov         dword ptr [ebp-4],eax
 005B9C6C    cmp         byte ptr [ebp-5],0
>005B9C70    jne         005B9C7C
 005B9C72    mov         eax,dword ptr [ebp-4]
 005B9C75    call        005B4A88
>005B9C7A    jmp         005B9C9E
 005B9C7C    mov         eax,dword ptr [ebp-4]
 005B9C7F    call        005B4AA4
 005B9C84    mov         eax,dword ptr [ebp-4]
 005B9C87    cmp         dword ptr [eax+27C],0
>005B9C8E    je          005B9C9E
 005B9C90    mov         eax,dword ptr [ebp-4]
 005B9C93    mov         eax,dword ptr [eax+27C]
 005B9C99    call        TInplaceEdit.Deselect
 005B9C9E    pop         ecx
 005B9C9F    pop         ecx
 005B9CA0    pop         ebp
 005B9CA1    ret
end;*}

//005B9CA4
procedure TCCalendar.SetGridLineWidth(Value:int);
begin
{*
 005B9CA4    push        ebp
 005B9CA5    mov         ebp,esp
 005B9CA7    add         esp,0FFFFFFF8
 005B9CAA    mov         dword ptr [ebp-8],edx
 005B9CAD    mov         dword ptr [ebp-4],eax
 005B9CB0    mov         eax,dword ptr [ebp-4]
 005B9CB3    mov         eax,dword ptr [eax+244];TCCalendar.FGridLineWidth:Integer
 005B9CB9    cmp         eax,dword ptr [ebp-8]
>005B9CBC    je          005B9CD2
 005B9CBE    mov         eax,dword ptr [ebp-8]
 005B9CC1    mov         edx,dword ptr [ebp-4]
 005B9CC4    mov         dword ptr [edx+244],eax;TCCalendar.FGridLineWidth:Integer
 005B9CCA    mov         eax,dword ptr [ebp-4]
 005B9CCD    call        005B71B8
 005B9CD2    pop         ecx
 005B9CD3    pop         ecx
 005B9CD4    pop         ebp
 005B9CD5    ret
*}
end;

//005B9CD8
procedure TDrawGrid.SetOptions(Value:TGridOptions);
begin
{*
 005B9CD8    push        ebp
 005B9CD9    mov         ebp,esp
 005B9CDB    add         esp,0FFFFFFF8
 005B9CDE    mov         word ptr [ebp-6],dx
 005B9CE2    mov         dword ptr [ebp-4],eax
 005B9CE5    mov         ax,word ptr [ebp-6]
 005B9CE9    mov         edx,dword ptr [ebp-4]
 005B9CEC    cmp         ax,word ptr [edx+248];TDrawGrid.FOptions:TGridOptions
>005B9CF3    je          005B9D5F
 005B9CF5    test        byte ptr [ebp-5],10
>005B9CF9    je          005B9D01
 005B9CFB    and         word ptr [ebp-6],0DFFF
 005B9D01    mov         ax,word ptr [ebp-6]
 005B9D05    mov         edx,dword ptr [ebp-4]
 005B9D08    mov         word ptr [edx+248],ax;TDrawGrid.FOptions:TGridOptions
 005B9D0F    mov         eax,dword ptr [ebp-4]
 005B9D12    cmp         byte ptr [eax+28D],0;TDrawGrid.FEditorMode:Boolean
>005B9D19    jne         005B9D33
 005B9D1B    test        byte ptr [ebp-5],20
>005B9D1F    je          005B9D2B
 005B9D21    mov         eax,dword ptr [ebp-4]
 005B9D24    call        005B4AA4
>005B9D29    jmp         005B9D33
 005B9D2B    mov         eax,dword ptr [ebp-4]
 005B9D2E    call        005B4A88
 005B9D33    test        byte ptr [ebp-5],10
>005B9D37    je          005B9D57
 005B9D39    push        1
 005B9D3B    push        0
 005B9D3D    mov         eax,dword ptr [ebp-4]
 005B9D40    mov         ecx,dword ptr [eax+22C];TDrawGrid.FCurrent:Longint
 005B9D46    mov         eax,dword ptr [ebp-4]
 005B9D49    mov         edx,dword ptr [eax+228];TDrawGrid.FCurrent:TGridCoord
 005B9D4F    mov         eax,dword ptr [ebp-4]
 005B9D52    call        005B7990
 005B9D57    mov         eax,dword ptr [ebp-4]
 005B9D5A    call        005B71B8
 005B9D5F    pop         ecx
 005B9D60    pop         ecx
 005B9D61    pop         ebp
 005B9D62    ret
*}
end;

//005B9D64
{*procedure sub_005B9D64(?:TCustomGrid; ?:?);
begin
 005B9D64    push        ebp
 005B9D65    mov         ebp,esp
 005B9D67    add         esp,0FFFFFFF8
 005B9D6A    mov         dword ptr [ebp-8],edx
 005B9D6D    mov         dword ptr [ebp-4],eax
 005B9D70    mov         eax,dword ptr [ebp-4]
 005B9D73    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005B9D79    cmp         eax,dword ptr [ebp-8]
>005B9D7C    je          005B9D94
 005B9D7E    push        1
 005B9D80    mov         ecx,dword ptr [ebp-8]
 005B9D83    mov         eax,dword ptr [ebp-4]
 005B9D86    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005B9D8C    mov         eax,dword ptr [ebp-4]
 005B9D8F    call        005B6E0C
 005B9D94    pop         ecx
 005B9D95    pop         ecx
 005B9D96    pop         ebp
 005B9D97    ret
end;*}

//005B9D98
procedure TDrawGrid.SetRowCount(Value:Integer);
begin
{*
 005B9D98    push        ebp
 005B9D99    mov         ebp,esp
 005B9D9B    add         esp,0FFFFFFF8
 005B9D9E    mov         dword ptr [ebp-8],edx
 005B9DA1    mov         dword ptr [ebp-4],eax
 005B9DA4    mov         eax,dword ptr [ebp-4]
 005B9DA7    mov         eax,dword ptr [eax+24C];TDrawGrid.FRowCount:Longint
 005B9DAD    cmp         eax,dword ptr [ebp-8]
>005B9DB0    je          005B9DED
 005B9DB2    cmp         dword ptr [ebp-8],1
>005B9DB6    jge         005B9DBF
 005B9DB8    mov         dword ptr [ebp-8],1
 005B9DBF    mov         eax,dword ptr [ebp-8]
 005B9DC2    mov         edx,dword ptr [ebp-4]
 005B9DC5    cmp         eax,dword ptr [edx+23C];TDrawGrid.FFixedRows:Integer
>005B9DCB    jg          005B9DD9
 005B9DCD    mov         edx,dword ptr [ebp-8]
 005B9DD0    dec         edx
 005B9DD1    mov         eax,dword ptr [ebp-4]
 005B9DD4    call        TDrawGrid.SetFixedRows
 005B9DD9    mov         ecx,dword ptr [ebp-8]
 005B9DDC    mov         eax,dword ptr [ebp-4]
 005B9DDF    mov         edx,dword ptr [eax+21C];TDrawGrid.FColCount:Longint
 005B9DE5    mov         eax,dword ptr [ebp-4]
 005B9DE8    call        005B68EC
 005B9DED    pop         ecx
 005B9DEE    pop         ecx
 005B9DEF    pop         ebp
 005B9DF0    ret
*}
end;

//005B9DF4
{*procedure sub_005B9DF4(?:TCustomGrid; ?:Longint; ?:?);
begin
 005B9DF4    push        ebp
 005B9DF5    mov         ebp,esp
 005B9DF7    add         esp,0FFFFFFF0
 005B9DFA    push        ebx
 005B9DFB    push        esi
 005B9DFC    xor         ebx,ebx
 005B9DFE    mov         dword ptr [ebp-10],ebx
 005B9E01    mov         dword ptr [ebp-0C],ecx
 005B9E04    mov         dword ptr [ebp-8],edx
 005B9E07    mov         dword ptr [ebp-4],eax
 005B9E0A    xor         eax,eax
 005B9E0C    push        ebp
 005B9E0D    push        5B9ECF
 005B9E12    push        dword ptr fs:[eax]
 005B9E15    mov         dword ptr fs:[eax],esp
 005B9E18    mov         eax,dword ptr [ebp-4]
 005B9E1B    cmp         dword ptr [eax+250],0;TCustomGrid.FRowHeights:Pointer
>005B9E22    jne         005B9E43
 005B9E24    mov         eax,dword ptr [ebp-4]
 005B9E27    add         eax,250;TCustomGrid.FRowHeights:Pointer
 005B9E2C    mov         edx,dword ptr [ebp-4]
 005B9E2F    mov         ecx,dword ptr [edx+234];TCustomGrid.FDefaultRowHeight:Integer
 005B9E35    mov         edx,dword ptr [ebp-4]
 005B9E38    mov         edx,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
 005B9E3E    call        005B3610
 005B9E43    mov         eax,dword ptr [ebp-8]
 005B9E46    mov         edx,dword ptr [ebp-4]
 005B9E49    cmp         eax,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
>005B9E4F    jl          005B9E66
 005B9E51    lea         edx,[ebp-10]
 005B9E54    mov         eax,[006EA080];^gvar_00654FF4
 005B9E59    call        LoadResString
 005B9E5E    mov         eax,dword ptr [ebp-10]
 005B9E61    call        005B30F8
 005B9E66    mov         eax,dword ptr [ebp-4]
 005B9E69    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 005B9E6F    mov         edx,dword ptr [ebp-8]
 005B9E72    mov         eax,dword ptr [eax+edx*4+4]
 005B9E76    cmp         eax,dword ptr [ebp-0C]
>005B9E79    je          005B9EB9
 005B9E7B    mov         eax,dword ptr [ebp-0C]
 005B9E7E    push        eax
 005B9E7F    mov         eax,dword ptr [ebp-4]
 005B9E82    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 005B9E88    mov         edx,dword ptr [ebp-8]
 005B9E8B    mov         ecx,dword ptr [eax+edx*4+4]
 005B9E8F    mov         edx,dword ptr [ebp-8]
 005B9E92    mov         eax,dword ptr [ebp-4]
 005B9E95    call        005B7BC4
 005B9E9A    mov         eax,dword ptr [ebp-4]
 005B9E9D    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 005B9EA3    mov         edx,dword ptr [ebp-8]
 005B9EA6    mov         ecx,dword ptr [ebp-0C]
 005B9EA9    mov         dword ptr [eax+edx*4+4],ecx
 005B9EAD    mov         eax,dword ptr [ebp-4]
 005B9EB0    mov         si,0FFA4
 005B9EB4    call        @CallDynaInst;TCustomGrid.sub_005BA93C
 005B9EB9    xor         eax,eax
 005B9EBB    pop         edx
 005B9EBC    pop         ecx
 005B9EBD    pop         ecx
 005B9EBE    mov         dword ptr fs:[eax],edx
 005B9EC1    push        5B9ED6
 005B9EC6    lea         eax,[ebp-10]
 005B9EC9    call        @LStrClr
 005B9ECE    ret
>005B9ECF    jmp         @HandleFinally
>005B9ED4    jmp         005B9EC6
 005B9ED6    pop         esi
 005B9ED7    pop         ebx
 005B9ED8    mov         esp,ebp
 005B9EDA    pop         ebp
 005B9EDB    ret
end;*}

//005B9EDC
procedure TCDirectoryOutline.SetScrollBars(Value:TScrollStyle);
begin
{*
 005B9EDC    push        ebp
 005B9EDD    mov         ebp,esp
 005B9EDF    add         esp,0FFFFFFF8
 005B9EE2    mov         byte ptr [ebp-5],dl
 005B9EE5    mov         dword ptr [ebp-4],eax
 005B9EE8    mov         eax,dword ptr [ebp-4]
 005B9EEB    mov         al,byte ptr [eax+254];TCDirectoryOutline.FScrollBars:TScrollStyle
 005B9EF1    cmp         al,byte ptr [ebp-5]
>005B9EF4    je          005B9F0A
 005B9EF6    mov         al,byte ptr [ebp-5]
 005B9EF9    mov         edx,dword ptr [ebp-4]
 005B9EFC    mov         byte ptr [edx+254],al;TCDirectoryOutline.FScrollBars:TScrollStyle
 005B9F02    mov         eax,dword ptr [ebp-4]
 005B9F05    call        TWinControl.RecreateWnd
 005B9F0A    pop         ecx
 005B9F0B    pop         ecx
 005B9F0C    pop         ebp
 005B9F0D    ret
*}
end;

//005B9F10
procedure TCustomGrid.HideEdit;
begin
{*
 005B9F10    push        ebp
 005B9F11    mov         ebp,esp
 005B9F13    push        ecx
 005B9F14    mov         dword ptr [ebp-4],eax
 005B9F17    mov         eax,dword ptr [ebp-4]
 005B9F1A    cmp         dword ptr [eax+27C],0
>005B9F21    je          005B9F76
 005B9F23    xor         eax,eax
 005B9F25    push        ebp
 005B9F26    push        5B9F6F
 005B9F2B    push        dword ptr fs:[eax]
 005B9F2E    mov         dword ptr fs:[eax],esp
 005B9F31    mov         eax,dword ptr [ebp-4]
 005B9F34    call        TCustomGrid.UpdateText
 005B9F39    xor         eax,eax
 005B9F3B    pop         edx
 005B9F3C    pop         ecx
 005B9F3D    pop         ecx
 005B9F3E    mov         dword ptr fs:[eax],edx
 005B9F41    push        5B9F76
 005B9F46    mov         eax,dword ptr [ebp-4]
 005B9F49    mov         dword ptr [eax+280],0FFFFFFFF
 005B9F53    mov         eax,dword ptr [ebp-4]
 005B9F56    mov         dword ptr [eax+284],0FFFFFFFF
 005B9F60    mov         eax,dword ptr [ebp-4]
 005B9F63    mov         eax,dword ptr [eax+27C]
 005B9F69    call        TInplaceEdit.Hide
 005B9F6E    ret
>005B9F6F    jmp         @HandleFinally
>005B9F74    jmp         005B9F46
 005B9F76    pop         ecx
 005B9F77    pop         ebp
 005B9F78    ret
*}
end;

//005B9F7C
{*procedure sub_005B9F7C(?:?);
begin
 005B9F7C    push        ebp
 005B9F7D    mov         ebp,esp
 005B9F7F    mov         eax,dword ptr [ebp+8]
 005B9F82    mov         eax,dword ptr [eax-4]
 005B9F85    mov         eax,dword ptr [eax+228]
 005B9F8B    mov         edx,dword ptr [ebp+8]
 005B9F8E    mov         edx,dword ptr [edx-4]
 005B9F91    mov         dword ptr [edx+280],eax
 005B9F97    mov         eax,dword ptr [ebp+8]
 005B9F9A    mov         eax,dword ptr [eax-4]
 005B9F9D    mov         eax,dword ptr [eax+22C]
 005B9FA3    mov         edx,dword ptr [ebp+8]
 005B9FA6    mov         edx,dword ptr [edx-4]
 005B9FA9    mov         dword ptr [edx+284],eax
 005B9FAF    mov         eax,dword ptr [ebp+8]
 005B9FB2    mov         eax,dword ptr [eax-4]
 005B9FB5    mov         eax,dword ptr [eax+27C]
 005B9FBB    mov         edx,dword ptr [eax]
 005B9FBD    call        dword ptr [edx+0FC]
 005B9FC3    mov         eax,dword ptr [ebp+8]
 005B9FC6    mov         eax,dword ptr [eax-4]
 005B9FC9    mov         eax,dword ptr [eax+27C]
 005B9FCF    call        TMaskEdit.GetMaxLength
 005B9FD4    inc         eax
>005B9FD5    jne         005B9FE6
 005B9FD7    mov         eax,dword ptr [ebp+8]
 005B9FDA    mov         eax,dword ptr [eax-4]
 005B9FDD    mov         byte ptr [eax+219],0
>005B9FE4    jmp         005B9FF3
 005B9FE6    mov         eax,dword ptr [ebp+8]
 005B9FE9    mov         eax,dword ptr [eax-4]
 005B9FEC    mov         byte ptr [eax+219],1
 005B9FF3    mov         eax,dword ptr [ebp+8]
 005B9FF6    mov         eax,dword ptr [eax-4]
 005B9FF9    mov         eax,dword ptr [eax+27C]
 005B9FFF    call        0059901C
 005BA004    pop         ebp
 005BA005    ret
end;*}

//005BA008
procedure sub_005BA008(?:TCustomGrid);
begin
{*
 005BA008    push        ebp
 005BA009    mov         ebp,esp
 005BA00B    add         esp,0FFFFFFEC
 005BA00E    mov         dword ptr [ebp-4],eax
 005BA011    mov         eax,dword ptr [ebp-4]
 005BA014    mov         edx,dword ptr [eax]
 005BA016    call        dword ptr [edx+0D0];TCustomGrid.sub_005B490C
 005BA01C    test        al,al
>005BA01E    je          005BA0E4
 005BA024    mov         eax,dword ptr [ebp-4]
 005BA027    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA02E    jne         005BA06F
 005BA030    mov         eax,dword ptr [ebp-4]
 005BA033    mov         edx,dword ptr [eax]
 005BA035    call        dword ptr [edx+0CC];TCustomGrid.sub_005B858C
 005BA03B    mov         edx,dword ptr [ebp-4]
 005BA03E    mov         dword ptr [edx+27C],eax;TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA044    mov         eax,dword ptr [ebp-4]
 005BA047    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA04D    mov         edx,dword ptr [ebp-4]
 005BA050    call        005B382C
 005BA055    mov         eax,dword ptr [ebp-4]
 005BA058    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA05E    mov         edx,dword ptr [ebp-4]
 005BA061    mov         ecx,dword ptr [eax]
 005BA063    call        dword ptr [ecx+68];TInplaceEdit.sub_005F34DC
 005BA066    push        ebp
 005BA067    call        005B9F7C
 005BA06C    pop         ecx
>005BA06D    jmp         005BA0A6
 005BA06F    mov         eax,dword ptr [ebp-4]
 005BA072    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BA078    mov         edx,dword ptr [ebp-4]
 005BA07B    cmp         eax,dword ptr [edx+280];TCustomGrid.FInplaceCol:Longint
>005BA081    jne         005BA097
 005BA083    mov         eax,dword ptr [ebp-4]
 005BA086    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BA08C    mov         edx,dword ptr [ebp-4]
 005BA08F    cmp         eax,dword ptr [edx+284];TCustomGrid.FInplaceRow:Longint
>005BA095    je          005BA0A6
 005BA097    mov         eax,dword ptr [ebp-4]
 005BA09A    call        TCustomGrid.HideEdit
 005BA09F    push        ebp
 005BA0A0    call        005B9F7C
 005BA0A5    pop         ecx
 005BA0A6    mov         eax,dword ptr [ebp-4]
 005BA0A9    mov         edx,dword ptr [eax]
 005BA0AB    call        dword ptr [edx+0D0];TCustomGrid.sub_005B490C
 005BA0B1    test        al,al
>005BA0B3    je          005BA0E4
 005BA0B5    lea         eax,[ebp-14]
 005BA0B8    push        eax
 005BA0B9    mov         eax,dword ptr [ebp-4]
 005BA0BC    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BA0C2    mov         eax,dword ptr [ebp-4]
 005BA0C5    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BA0CB    mov         eax,dword ptr [ebp-4]
 005BA0CE    call        005B488C
 005BA0D3    lea         edx,[ebp-14]
 005BA0D6    mov         eax,dword ptr [ebp-4]
 005BA0D9    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA0DF    call        005B4204
 005BA0E4    mov         esp,ebp
 005BA0E6    pop         ebp
 005BA0E7    ret
*}
end;

//005BA0E8
procedure TCustomGrid.UpdateText;
begin
{*
 005BA0E8    push        ebp
 005BA0E9    mov         ebp,esp
 005BA0EB    add         esp,0FFFFFFF8
 005BA0EE    push        esi
 005BA0EF    xor         edx,edx
 005BA0F1    mov         dword ptr [ebp-8],edx
 005BA0F4    mov         dword ptr [ebp-4],eax
 005BA0F7    xor         eax,eax
 005BA0F9    push        ebp
 005BA0FA    push        5BA166
 005BA0FF    push        dword ptr fs:[eax]
 005BA102    mov         dword ptr fs:[eax],esp
 005BA105    mov         eax,dword ptr [ebp-4]
 005BA108    cmp         dword ptr [eax+280],0FFFFFFFF
>005BA10F    je          005BA150
 005BA111    mov         eax,dword ptr [ebp-4]
 005BA114    cmp         dword ptr [eax+284],0FFFFFFFF
>005BA11B    je          005BA150
 005BA11D    lea         edx,[ebp-8]
 005BA120    mov         eax,dword ptr [ebp-4]
 005BA123    mov         eax,dword ptr [eax+27C]
 005BA129    call        TMaskEdit.GetText
 005BA12E    mov         eax,dword ptr [ebp-8]
 005BA131    push        eax
 005BA132    mov         eax,dword ptr [ebp-4]
 005BA135    mov         ecx,dword ptr [eax+284]
 005BA13B    mov         eax,dword ptr [ebp-4]
 005BA13E    mov         edx,dword ptr [eax+280]
 005BA144    mov         eax,dword ptr [ebp-4]
 005BA147    mov         si,0FFAE
 005BA14B    call        @CallDynaInst
 005BA150    xor         eax,eax
 005BA152    pop         edx
 005BA153    pop         ecx
 005BA154    pop         ecx
 005BA155    mov         dword ptr fs:[eax],edx
 005BA158    push        5BA16D
 005BA15D    lea         eax,[ebp-8]
 005BA160    call        @LStrClr
 005BA165    ret
>005BA166    jmp         @HandleFinally
>005BA16B    jmp         005BA15D
 005BA16D    pop         esi
 005BA16E    pop         ecx
 005BA16F    pop         ecx
 005BA170    pop         ebp
 005BA171    ret
*}
end;

//005BA174
{*procedure TCustomGrid.WMChar(?:?);
begin
 005BA174    push        ebp
 005BA175    mov         ebp,esp
 005BA177    add         esp,0FFFFFFF8
 005BA17A    mov         dword ptr [ebp-8],edx
 005BA17D    mov         dword ptr [ebp-4],eax
 005BA180    mov         eax,dword ptr [ebp-4]
 005BA183    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>005BA18A    je          005BA1AC
 005BA18C    mov         eax,dword ptr [ebp-8]
 005BA18F    mov         al,byte ptr [eax+4]
 005BA192    sub         al,8
>005BA194    je          005BA19C
 005BA196    add         al,0E8
 005BA198    sub         al,0E0
>005BA19A    jae         005BA1AC
 005BA19C    mov         edx,dword ptr [ebp-8]
 005BA19F    mov         dl,byte ptr [edx+4]
 005BA1A2    mov         eax,dword ptr [ebp-4]
 005BA1A5    call        005B4AC0
>005BA1AA    jmp         005BA1B7
 005BA1AC    mov         edx,dword ptr [ebp-8]
 005BA1AF    mov         eax,dword ptr [ebp-4]
 005BA1B2    call        TWinControl.WMChar
 005BA1B7    pop         ecx
 005BA1B8    pop         ecx
 005BA1B9    pop         ebp
 005BA1BA    ret
end;*}

//005BA1BC
{*procedure TCustomGrid.WMCommand(?:?);
begin
 005BA1BC    push        ebp
 005BA1BD    mov         ebp,esp
 005BA1BF    add         esp,0FFFFFFF8
 005BA1C2    mov         dword ptr [ebp-8],edx
 005BA1C5    mov         dword ptr [ebp-4],eax
 005BA1C8    mov         eax,dword ptr [ebp-4]
 005BA1CB    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA1D2    je          005BA1FF
 005BA1D4    mov         eax,dword ptr [ebp-4]
 005BA1D7    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA1DD    call        TWinControl.GetHandle
 005BA1E2    mov         edx,dword ptr [ebp-8]
 005BA1E5    cmp         eax,dword ptr [edx+8]
>005BA1E8    jne         005BA1FF
 005BA1EA    mov         eax,dword ptr [ebp-8]
 005BA1ED    mov         ax,word ptr [eax+6]
 005BA1F1    sub         ax,300
>005BA1F5    jne         005BA1FF
 005BA1F7    mov         eax,dword ptr [ebp-4]
 005BA1FA    call        TCustomGrid.UpdateText
 005BA1FF    pop         ecx
 005BA200    pop         ecx
 005BA201    pop         ebp
 005BA202    ret
end;*}

//005BA204
{*procedure TCustomGrid.WMGetDlgCode(?:?);
begin
 005BA204    push        ebp
 005BA205    mov         ebp,esp
 005BA207    add         esp,0FFFFFFF8
 005BA20A    mov         dword ptr [ebp-8],edx
 005BA20D    mov         dword ptr [ebp-4],eax
 005BA210    mov         eax,dword ptr [ebp-8]
 005BA213    mov         dword ptr [eax+0C],1
 005BA21A    mov         eax,dword ptr [ebp-4]
 005BA21D    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>005BA224    jne         005BA24F
 005BA226    mov         eax,dword ptr [ebp-4]
 005BA229    test        byte ptr [eax+249],8;TCustomGrid.?f249:byte
>005BA230    je          005BA239
 005BA232    mov         eax,dword ptr [ebp-8]
 005BA235    or          dword ptr [eax+0C],2
 005BA239    mov         eax,dword ptr [ebp-4]
 005BA23C    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>005BA243    je          005BA24F
 005BA245    mov         eax,dword ptr [ebp-8]
 005BA248    or          dword ptr [eax+0C],80
 005BA24F    pop         ecx
 005BA250    pop         ecx
 005BA251    pop         ebp
 005BA252    ret
end;*}

//005BA254
{*procedure TCustomGrid.WMKillFocus(?:?);
begin
 005BA254    push        ebp
 005BA255    mov         ebp,esp
 005BA257    add         esp,0FFFFFFE8
 005BA25A    mov         dword ptr [ebp-8],edx
 005BA25D    mov         dword ptr [ebp-4],eax
 005BA260    mov         edx,dword ptr [ebp-8]
 005BA263    mov         eax,dword ptr [ebp-4]
 005BA266    call        TWinControl.WMKillFocus
 005BA26B    lea         edx,[ebp-18]
 005BA26E    mov         eax,dword ptr [ebp-4]
 005BA271    call        005B97A0
 005BA276    lea         edx,[ebp-18]
 005BA279    mov         eax,dword ptr [ebp-4]
 005BA27C    call        005B71CC
 005BA281    mov         eax,dword ptr [ebp-4]
 005BA284    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA28B    je          005BA2AB
 005BA28D    mov         eax,dword ptr [ebp-4]
 005BA290    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA296    call        TWinControl.GetHandle
 005BA29B    mov         edx,dword ptr [ebp-8]
 005BA29E    cmp         eax,dword ptr [edx+4]
>005BA2A1    je          005BA2AB
 005BA2A3    mov         eax,dword ptr [ebp-4]
 005BA2A6    call        TCustomGrid.HideEdit
 005BA2AB    mov         esp,ebp
 005BA2AD    pop         ebp
 005BA2AE    ret
end;*}

//005BA2B0
{*procedure TCustomGrid.WMLButtonDown(?:?);
begin
 005BA2B0    push        ebp
 005BA2B1    mov         ebp,esp
 005BA2B3    add         esp,0FFFFFFF8
 005BA2B6    mov         dword ptr [ebp-8],edx
 005BA2B9    mov         dword ptr [ebp-4],eax
 005BA2BC    mov         edx,dword ptr [ebp-8]
 005BA2BF    mov         eax,dword ptr [ebp-4]
 005BA2C2    call        TControl.WMLButtonDown
 005BA2C7    mov         eax,dword ptr [ebp-4]
 005BA2CA    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA2D1    je          005BA2E7
 005BA2D3    call        USER32.GetMessageTime
 005BA2D8    mov         edx,dword ptr [ebp-4]
 005BA2DB    mov         edx,dword ptr [edx+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA2E1    mov         dword ptr [edx+244],eax;TInplaceEdit.FClickTime:Longint
 005BA2E7    pop         ecx
 005BA2E8    pop         ecx
 005BA2E9    pop         ebp
 005BA2EA    ret
end;*}

//005BA2EC
{*procedure TCustomGrid.WMNCHitTest(?:?);
begin
 005BA2EC    push        ebp
 005BA2ED    mov         ebp,esp
 005BA2EF    add         esp,0FFFFFFE8
 005BA2F2    mov         dword ptr [ebp-8],edx
 005BA2F5    mov         dword ptr [ebp-4],eax
 005BA2F8    mov         edx,dword ptr [ebp-8]
 005BA2FB    mov         eax,dword ptr [ebp-4]
 005BA2FE    mov         ecx,dword ptr [eax]
 005BA300    call        dword ptr [ecx-10];TCustomGrid.DefaultHandler
 005BA303    lea         edx,[ebp-18]
 005BA306    mov         eax,dword ptr [ebp-8]
 005BA309    mov         eax,dword ptr [eax+8]
 005BA30C    call        0063D050
 005BA311    lea         edx,[ebp-18]
 005BA314    lea         ecx,[ebp-10]
 005BA317    mov         eax,dword ptr [ebp-4]
 005BA31A    call        005F305C
 005BA31F    mov         eax,dword ptr [ebp-4]
 005BA322    mov         edx,dword ptr [ebp-10]
 005BA325    mov         dword ptr [eax+274],edx;TCustomGrid.FHitTest:TPoint
 005BA32B    mov         edx,dword ptr [ebp-0C]
 005BA32E    mov         dword ptr [eax+278],edx
 005BA334    mov         esp,ebp
 005BA336    pop         ebp
 005BA337    ret
end;*}

//005BA338
{*procedure TCustomGrid.WMSetCursor(?:?);
begin
 005BA338    push        ebp
 005BA339    mov         ebp,esp
 005BA33B    add         esp,0FFFFFF80
 005BA33E    push        ebx
 005BA33F    mov         dword ptr [ebp-8],edx
 005BA342    mov         dword ptr [ebp-4],eax
 005BA345    xor         eax,eax
 005BA347    mov         dword ptr [ebp-1C],eax
 005BA34A    mov         eax,dword ptr [ebp-8]
 005BA34D    cmp         word ptr [eax+8],1
>005BA352    jne         005BA3E4
 005BA358    mov         eax,dword ptr [ebp-4]
 005BA35B    cmp         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
>005BA362    jne         005BA3A2
 005BA364    lea         edx,[ebp-80]
 005BA367    mov         eax,dword ptr [ebp-4]
 005BA36A    call        TCustomGrid.CalcDrawInfo
 005BA36F    lea         eax,[ebp-9]
 005BA372    push        eax
 005BA373    lea         eax,[ebp-10]
 005BA376    push        eax
 005BA377    lea         eax,[ebp-14]
 005BA37A    push        eax
 005BA37B    lea         eax,[ebp-18]
 005BA37E    push        eax
 005BA37F    lea         eax,[ebp-80]
 005BA382    push        eax
 005BA383    mov         eax,dword ptr [ebp-4]
 005BA386    mov         ecx,dword ptr [eax+278]
 005BA38C    mov         eax,dword ptr [ebp-4]
 005BA38F    mov         edx,dword ptr [eax+274];TCustomGrid.FHitTest:TPoint
 005BA395    mov         eax,dword ptr [ebp-4]
 005BA398    mov         ebx,dword ptr [eax]
 005BA39A    call        dword ptr [ebx+0C8];TCustomGrid.sub_005B63F0
>005BA3A0    jmp         005BA3AE
 005BA3A2    mov         eax,dword ptr [ebp-4]
 005BA3A5    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005BA3AB    mov         byte ptr [ebp-9],al
 005BA3AE    cmp         byte ptr [ebp-9],2
>005BA3B2    jne         005BA3CA
 005BA3B4    mov         eax,[006E9DD0];^Screen:TScreen
 005BA3B9    mov         eax,dword ptr [eax]
 005BA3BB    mov         edx,0FFFFFFF1
 005BA3C0    call        005D5DD0
 005BA3C5    mov         dword ptr [ebp-1C],eax
>005BA3C8    jmp         005BA3E4
 005BA3CA    cmp         byte ptr [ebp-9],3
>005BA3CE    jne         005BA3E4
 005BA3D0    mov         eax,[006E9DD0];^Screen:TScreen
 005BA3D5    mov         eax,dword ptr [eax]
 005BA3D7    mov         edx,0FFFFFFF2
 005BA3DC    call        005D5DD0
 005BA3E1    mov         dword ptr [ebp-1C],eax
 005BA3E4    cmp         dword ptr [ebp-1C],0
>005BA3E8    je          005BA3F5
 005BA3EA    mov         eax,dword ptr [ebp-1C]
 005BA3ED    push        eax
 005BA3EE    call        USER32.SetCursor
>005BA3F3    jmp         005BA400
 005BA3F5    mov         edx,dword ptr [ebp-8]
 005BA3F8    mov         eax,dword ptr [ebp-4]
 005BA3FB    call        TWinControl.WMSetCursor
 005BA400    pop         ebx
 005BA401    mov         esp,ebp
 005BA403    pop         ebp
 005BA404    ret
end;*}

//005BA408
{*procedure TCustomGrid.WMSetFocus(?:?);
begin
 005BA408    push        ebp
 005BA409    mov         ebp,esp
 005BA40B    add         esp,0FFFFFFE8
 005BA40E    mov         dword ptr [ebp-8],edx
 005BA411    mov         dword ptr [ebp-4],eax
 005BA414    mov         edx,dword ptr [ebp-8]
 005BA417    mov         eax,dword ptr [ebp-4]
 005BA41A    call        TWinControl.WMSetFocus
 005BA41F    mov         eax,dword ptr [ebp-4]
 005BA422    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA429    je          005BA441
 005BA42B    mov         eax,dword ptr [ebp-4]
 005BA42E    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA434    call        TWinControl.GetHandle
 005BA439    mov         edx,dword ptr [ebp-8]
 005BA43C    cmp         eax,dword ptr [edx+4]
>005BA43F    je          005BA45F
 005BA441    lea         edx,[ebp-18]
 005BA444    mov         eax,dword ptr [ebp-4]
 005BA447    call        005B97A0
 005BA44C    lea         edx,[ebp-18]
 005BA44F    mov         eax,dword ptr [ebp-4]
 005BA452    call        005B71CC
 005BA457    mov         eax,dword ptr [ebp-4]
 005BA45A    call        005BA008
 005BA45F    mov         esp,ebp
 005BA461    pop         ebp
 005BA462    ret
end;*}

//005BA464
{*procedure TCustomGrid.WMSize(?:?);
begin
 005BA464    push        ebp
 005BA465    mov         ebp,esp
 005BA467    add         esp,0FFFFFFF8
 005BA46A    push        esi
 005BA46B    mov         dword ptr [ebp-8],edx
 005BA46E    mov         dword ptr [ebp-4],eax
 005BA471    mov         edx,dword ptr [ebp-8]
 005BA474    mov         eax,dword ptr [ebp-4]
 005BA477    call        TWinControl.WMSize
 005BA47C    mov         eax,dword ptr [ebp-4]
 005BA47F    call        TCustomGrid.UpdateScrollRange
 005BA484    mov         eax,dword ptr [ebp-4]
 005BA487    mov         si,0FFC8
 005BA48B    call        @CallDynaInst;TControl.sub_005F40CC
 005BA490    test        al,al
>005BA492    je          005BA49C
 005BA494    mov         eax,dword ptr [ebp-4]
 005BA497    mov         edx,dword ptr [eax]
 005BA499    call        dword ptr [edx+7C];TWinControl.Invalidate
 005BA49C    pop         esi
 005BA49D    pop         ecx
 005BA49E    pop         ecx
 005BA49F    pop         ebp
 005BA4A0    ret
end;*}

//005BA4A4
{*procedure TCustomGrid.WMVScroll(?:?);
begin
 005BA4A4    push        ebp
 005BA4A5    mov         ebp,esp
 005BA4A7    add         esp,0FFFFFFF8
 005BA4AA    mov         dword ptr [ebp-8],edx
 005BA4AD    mov         dword ptr [ebp-4],eax
 005BA4B0    mov         eax,dword ptr [ebp-8]
 005BA4B3    movsx       eax,word ptr [eax+6]
 005BA4B7    push        eax
 005BA4B8    push        1
 005BA4BA    mov         ecx,dword ptr [ebp-8]
 005BA4BD    movsx       ecx,word ptr [ecx+4]
 005BA4C1    mov         edx,1
 005BA4C6    mov         eax,dword ptr [ebp-4]
 005BA4C9    call        005B7674
 005BA4CE    pop         ecx
 005BA4CF    pop         ecx
 005BA4D0    pop         ebp
 005BA4D1    ret
end;*}

//005BA4D4
{*procedure TCustomGrid.WMHScroll(?:?);
begin
 005BA4D4    push        ebp
 005BA4D5    mov         ebp,esp
 005BA4D7    add         esp,0FFFFFFF8
 005BA4DA    mov         dword ptr [ebp-8],edx
 005BA4DD    mov         dword ptr [ebp-4],eax
 005BA4E0    mov         eax,dword ptr [ebp-8]
 005BA4E3    movsx       eax,word ptr [eax+6]
 005BA4E7    push        eax
 005BA4E8    push        1
 005BA4EA    mov         ecx,dword ptr [ebp-8]
 005BA4ED    movsx       ecx,word ptr [ecx+4]
 005BA4F1    xor         edx,edx
 005BA4F3    mov         eax,dword ptr [ebp-4]
 005BA4F6    call        005B7674
 005BA4FB    pop         ecx
 005BA4FC    pop         ecx
 005BA4FD    pop         ebp
 005BA4FE    ret
end;*}

//005BA500
procedure TCustomGrid.CancelMode;
begin
{*
 005BA500    push        ebp
 005BA501    mov         ebp,esp
 005BA503    add         esp,0FFFFFF98
 005BA506    mov         dword ptr [ebp-4],eax
 005BA509    xor         eax,eax
 005BA50B    push        ebp
 005BA50C    push        5BA589
 005BA511    push        dword ptr fs:[eax]
 005BA514    mov         dword ptr fs:[eax],esp
 005BA517    mov         eax,dword ptr [ebp-4]
 005BA51A    mov         al,byte ptr [eax+28E]
 005BA520    dec         al
>005BA522    je          005BA52F
 005BA524    dec         eax
 005BA525    sub         al,2
>005BA527    jb          005BA541
 005BA529    sub         al,2
>005BA52B    jb          005BA559
>005BA52D    jmp         005BA571
 005BA52F    push        1
 005BA531    mov         eax,dword ptr [ebp-4]
 005BA534    call        TWinControl.GetHandle
 005BA539    push        eax
 005BA53A    call        USER32.KillTimer
>005BA53F    jmp         005BA571
 005BA541    lea         edx,[ebp-68]
 005BA544    mov         eax,dword ptr [ebp-4]
 005BA547    call        TCustomGrid.CalcDrawInfo
 005BA54C    lea         edx,[ebp-68]
 005BA54F    mov         eax,dword ptr [ebp-4]
 005BA552    call        TCustomGrid.DrawSizingLine
>005BA557    jmp         005BA571
 005BA559    mov         eax,dword ptr [ebp-4]
 005BA55C    call        TCustomGrid.DrawMove
 005BA561    push        1
 005BA563    mov         eax,dword ptr [ebp-4]
 005BA566    call        TWinControl.GetHandle
 005BA56B    push        eax
 005BA56C    call        USER32.KillTimer
 005BA571    xor         eax,eax
 005BA573    pop         edx
 005BA574    pop         ecx
 005BA575    pop         ecx
 005BA576    mov         dword ptr fs:[eax],edx
 005BA579    push        5BA590
 005BA57E    mov         eax,dword ptr [ebp-4]
 005BA581    mov         byte ptr [eax+28E],0
 005BA588    ret
>005BA589    jmp         @HandleFinally
>005BA58E    jmp         005BA57E
 005BA590    mov         esp,ebp
 005BA592    pop         ebp
 005BA593    ret
*}
end;

//005BA594
{*procedure TCustomGrid.WMCancelMode(?:?);
begin
 005BA594    push        ebp
 005BA595    mov         ebp,esp
 005BA597    add         esp,0FFFFFFF8
 005BA59A    mov         dword ptr [ebp-8],edx
 005BA59D    mov         dword ptr [ebp-4],eax
 005BA5A0    mov         edx,dword ptr [ebp-8]
 005BA5A3    mov         eax,dword ptr [ebp-4]
 005BA5A6    call        TControl.WMCancelMode
 005BA5AB    mov         eax,dword ptr [ebp-4]
 005BA5AE    call        TCustomGrid.CancelMode
 005BA5B3    pop         ecx
 005BA5B4    pop         ecx
 005BA5B5    pop         ebp
 005BA5B6    ret
end;*}

//005BA5B8
{*procedure TCustomGrid.CMCancelMode(?:?);
begin
 005BA5B8    push        ebp
 005BA5B9    mov         ebp,esp
 005BA5BB    add         esp,0FFFFFFF8
 005BA5BE    mov         dword ptr [ebp-8],edx
 005BA5C1    mov         dword ptr [ebp-4],eax
 005BA5C4    mov         eax,dword ptr [ebp-4]
 005BA5C7    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA5CE    je          005BA5E1
 005BA5D0    mov         edx,dword ptr [ebp-8]
 005BA5D3    mov         eax,dword ptr [ebp-4]
 005BA5D6    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA5DC    mov         ecx,dword ptr [eax]
 005BA5DE    call        dword ptr [ecx+74];TInplaceEdit.sub_005B3EE8
 005BA5E1    mov         edx,dword ptr [ebp-8]
 005BA5E4    mov         eax,dword ptr [ebp-4]
 005BA5E7    mov         ecx,dword ptr [eax]
 005BA5E9    call        dword ptr [ecx-10];TCustomGrid.DefaultHandler
 005BA5EC    mov         eax,dword ptr [ebp-4]
 005BA5EF    call        TCustomGrid.CancelMode
 005BA5F4    pop         ecx
 005BA5F5    pop         ecx
 005BA5F6    pop         ebp
 005BA5F7    ret
end;*}

//005BA5F8
{*procedure TCustomGrid.CMFontChanged(?:?);
begin
 005BA5F8    push        ebp
 005BA5F9    mov         ebp,esp
 005BA5FB    add         esp,0FFFFFFF8
 005BA5FE    mov         dword ptr [ebp-8],edx
 005BA601    mov         dword ptr [ebp-4],eax
 005BA604    mov         eax,dword ptr [ebp-4]
 005BA607    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>005BA60E    je          005BA624
 005BA610    mov         eax,dword ptr [ebp-4]
 005BA613    mov         edx,dword ptr [eax+68];TCustomGrid.FFont:TFont
 005BA616    mov         eax,dword ptr [ebp-4]
 005BA619    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 005BA61F    call        TCCalendar.SetFont
 005BA624    mov         edx,dword ptr [ebp-8]
 005BA627    mov         eax,dword ptr [ebp-4]
 005BA62A    call        TWinControl.CMFontChanged
 005BA62F    pop         ecx
 005BA630    pop         ecx
 005BA631    pop         ebp
 005BA632    ret
end;*}

//005BA634
{*procedure TCustomGrid.CMCtl3DChanged(?:?);
begin
 005BA634    push        ebp
 005BA635    mov         ebp,esp
 005BA637    add         esp,0FFFFFFF8
 005BA63A    mov         dword ptr [ebp-8],edx
 005BA63D    mov         dword ptr [ebp-4],eax
 005BA640    mov         edx,dword ptr [ebp-8]
 005BA643    mov         eax,dword ptr [ebp-4]
 005BA646    call        TWinControl.CMCtl3DChanged
 005BA64B    mov         eax,dword ptr [ebp-4]
 005BA64E    call        TWinControl.RecreateWnd
 005BA653    pop         ecx
 005BA654    pop         ecx
 005BA655    pop         ebp
 005BA656    ret
end;*}

//005BA658
{*procedure TCustomGrid.CMDesignHitTest(?:?);
begin
 005BA658    push        ebp
 005BA659    mov         ebp,esp
 005BA65B    add         esp,0FFFFFFF8
 005BA65E    mov         dword ptr [ebp-8],edx
 005BA661    mov         dword ptr [ebp-4],eax
 005BA664    mov         ecx,dword ptr [ebp-8]
 005BA667    movsx       ecx,word ptr [ecx+0A]
 005BA66B    mov         edx,dword ptr [ebp-8]
 005BA66E    movsx       edx,word ptr [edx+8]
 005BA672    mov         eax,dword ptr [ebp-4]
 005BA675    call        005B501C
 005BA67A    neg         al
 005BA67C    sbb         eax,eax
 005BA67E    mov         edx,dword ptr [ebp-8]
 005BA681    mov         dword ptr [edx+0C],eax
 005BA684    pop         ecx
 005BA685    pop         ecx
 005BA686    pop         ebp
 005BA687    ret
end;*}

//005BA688
{*procedure TCustomGrid.CMWantSpecialKey(?:?);
begin
 005BA688    push        ebp
 005BA689    mov         ebp,esp
 005BA68B    add         esp,0FFFFFFF8
 005BA68E    mov         dword ptr [ebp-8],edx
 005BA691    mov         dword ptr [ebp-4],eax
 005BA694    mov         edx,dword ptr [ebp-8]
 005BA697    mov         eax,dword ptr [ebp-4]
 005BA69A    mov         ecx,dword ptr [eax]
 005BA69C    call        dword ptr [ecx-10];TCustomGrid.DefaultHandler
 005BA69F    mov         eax,dword ptr [ebp-4]
 005BA6A2    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>005BA6A9    je          005BA6BE
 005BA6AB    mov         eax,dword ptr [ebp-8]
 005BA6AE    cmp         byte ptr [eax+4],0D
>005BA6B2    jne         005BA6BE
 005BA6B4    mov         eax,dword ptr [ebp-8]
 005BA6B7    mov         dword ptr [eax+0C],1
 005BA6BE    pop         ecx
 005BA6BF    pop         ecx
 005BA6C0    pop         ebp
 005BA6C1    ret
end;*}

//005BA6C4
{*procedure TCustomGrid.sub_005BA6C4(?:?);
begin
 005BA6C4    push        ebp
 005BA6C5    mov         ebp,esp
 005BA6C7    add         esp,0FFFFFFE8
 005BA6CA    mov         byte ptr [ebp-5],dl
 005BA6CD    mov         dword ptr [ebp-4],eax
 005BA6D0    mov         eax,dword ptr [ebp-4]
 005BA6D3    mov         edx,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 005BA6D9    mov         dword ptr [ebp-18],edx
 005BA6DC    mov         edx,dword ptr [eax+214]
 005BA6E2    mov         dword ptr [ebp-14],edx
 005BA6E5    mov         eax,dword ptr [ebp-4]
 005BA6E8    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005BA6EE    dec         eax
 005BA6EF    mov         dword ptr [ebp-10],eax
 005BA6F2    mov         eax,dword ptr [ebp-4]
 005BA6F5    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005BA6FB    dec         eax
 005BA6FC    mov         dword ptr [ebp-0C],eax
 005BA6FF    test        byte ptr [ebp-5],1
>005BA703    je          005BA71C
 005BA705    mov         eax,dword ptr [ebp-4]
 005BA708    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 005BA70E    mov         edx,dword ptr [ebp-4]
 005BA711    cmp         eax,dword ptr [edx+238];TCustomGrid.FFixedCols:Integer
>005BA717    jle         005BA71C
 005BA719    dec         dword ptr [ebp-18]
 005BA71C    test        byte ptr [ebp-5],2
>005BA720    je          005BA733
 005BA722    mov         eax,dword ptr [ebp-4]
 005BA725    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 005BA72B    cmp         eax,dword ptr [ebp-10]
>005BA72E    jge         005BA733
 005BA730    inc         dword ptr [ebp-18]
 005BA733    test        byte ptr [ebp-5],4
>005BA737    je          005BA750
 005BA739    mov         eax,dword ptr [ebp-4]
 005BA73C    mov         eax,dword ptr [eax+214]
 005BA742    mov         edx,dword ptr [ebp-4]
 005BA745    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>005BA74B    jle         005BA750
 005BA74D    dec         dword ptr [ebp-14]
 005BA750    test        byte ptr [ebp-5],8
>005BA754    je          005BA767
 005BA756    mov         eax,dword ptr [ebp-4]
 005BA759    mov         eax,dword ptr [eax+214]
 005BA75F    cmp         eax,dword ptr [ebp-0C]
>005BA762    jge         005BA767
 005BA764    inc         dword ptr [ebp-14]
 005BA767    mov         eax,dword ptr [ebp-4]
 005BA76A    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 005BA770    cmp         eax,dword ptr [ebp-18]
>005BA773    jne         005BA783
 005BA775    mov         eax,dword ptr [ebp-4]
 005BA778    mov         eax,dword ptr [eax+214]
 005BA77E    cmp         eax,dword ptr [ebp-14]
>005BA781    je          005BA78E
 005BA783    lea         edx,[ebp-18]
 005BA786    mov         eax,dword ptr [ebp-4]
 005BA789    call        005B78E8
 005BA78E    mov         esp,ebp
 005BA790    pop         ebp
 005BA791    ret
end;*}

//005BA794
{*procedure TCustomGrid.WMTimer(?:?);
begin
 005BA794    push        ebp
 005BA795    mov         ebp,esp
 005BA797    add         esp,0FFFFFF70
 005BA79D    push        esi
 005BA79E    mov         dword ptr [ebp-24],edx
 005BA7A1    mov         dword ptr [ebp-4],eax
 005BA7A4    mov         eax,dword ptr [ebp-4]
 005BA7A7    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005BA7AD    sub         al,1
>005BA7AF    je          005BA7BB
 005BA7B1    add         al,0FD
 005BA7B3    sub         al,2
>005BA7B5    jae         005BA915
 005BA7BB    lea         eax,[ebp-0C]
 005BA7BE    push        eax
 005BA7BF    call        USER32.GetCursorPos
 005BA7C4    lea         ecx,[ebp-90]
 005BA7CA    lea         edx,[ebp-0C]
 005BA7CD    mov         eax,dword ptr [ebp-4]
 005BA7D0    call        005F305C
 005BA7D5    mov         eax,dword ptr [ebp-90]
 005BA7DB    mov         dword ptr [ebp-0C],eax
 005BA7DE    mov         eax,dword ptr [ebp-8C]
 005BA7E4    mov         dword ptr [ebp-8],eax
 005BA7E7    lea         edx,[ebp-88]
 005BA7ED    mov         eax,dword ptr [ebp-4]
 005BA7F0    call        TCustomGrid.CalcDrawInfo
 005BA7F5    mov         al,[005BA91C];0x0 gvar_005BA91C
 005BA7FA    mov         byte ptr [ebp-0D],al
 005BA7FD    lea         eax,[ebp-88]
 005BA803    push        eax
 005BA804    lea         eax,[ebp-18]
 005BA807    push        eax
 005BA808    mov         ecx,dword ptr [ebp-8]
 005BA80B    mov         edx,dword ptr [ebp-0C]
 005BA80E    mov         eax,dword ptr [ebp-4]
 005BA811    call        005B5E48
 005BA816    mov         eax,dword ptr [ebp-4]
 005BA819    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 005BA81F    dec         al
>005BA821    je          005BA87A
 005BA823    sub         al,3
>005BA825    je          005BA856
 005BA827    dec         al
>005BA829    jne         005BA915
 005BA82F    lea         eax,[ebp-88]
 005BA835    push        eax
 005BA836    lea         eax,[ebp-88]
 005BA83C    push        eax
 005BA83D    push        0
 005BA83F    lea         eax,[ebp-0C]
 005BA842    push        eax
 005BA843    mov         ecx,dword ptr [ebp-18]
 005BA846    mov         edx,dword ptr [ebp-0C]
 005BA849    mov         eax,dword ptr [ebp-4]
 005BA84C    call        005B9538
>005BA851    jmp         005BA915
 005BA856    lea         eax,[ebp-88]
 005BA85C    push        eax
 005BA85D    lea         eax,[ebp-58]
 005BA860    push        eax
 005BA861    push        1
 005BA863    lea         eax,[ebp-0C]
 005BA866    push        eax
 005BA867    mov         ecx,dword ptr [ebp-14]
 005BA86A    mov         edx,dword ptr [ebp-8]
 005BA86D    mov         eax,dword ptr [ebp-4]
 005BA870    call        005B9538
>005BA875    jmp         005BA915
 005BA87A    mov         eax,dword ptr [ebp-4]
 005BA87D    mov         si,0FFC8
 005BA881    call        @CallDynaInst;TControl.sub_005F40CC
 005BA886    test        al,al
>005BA888    jne         005BA8A9
 005BA88A    mov         eax,dword ptr [ebp-0C]
 005BA88D    cmp         eax,dword ptr [ebp-84]
>005BA893    jge         005BA89B
 005BA895    or          byte ptr [ebp-0D],1
>005BA899    jmp         005BA8E2
 005BA89B    mov         eax,dword ptr [ebp-0C]
 005BA89E    cmp         eax,dword ptr [ebp-74]
>005BA8A1    jle         005BA8E2
 005BA8A3    or          byte ptr [ebp-0D],2
>005BA8A7    jmp         005BA8E2
 005BA8A9    mov         eax,dword ptr [ebp-4]
 005BA8AC    call        TControl.GetClientWidth
 005BA8B1    sub         eax,dword ptr [ebp-74]
 005BA8B4    mov         dword ptr [ebp-1C],eax
 005BA8B7    mov         eax,dword ptr [ebp-4]
 005BA8BA    call        TControl.GetClientWidth
 005BA8BF    sub         eax,dword ptr [ebp-84]
 005BA8C5    mov         dword ptr [ebp-20],eax
 005BA8C8    mov         eax,dword ptr [ebp-0C]
 005BA8CB    cmp         eax,dword ptr [ebp-1C]
>005BA8CE    jge         005BA8D6
 005BA8D0    or          byte ptr [ebp-0D],2
>005BA8D4    jmp         005BA8E2
 005BA8D6    mov         eax,dword ptr [ebp-0C]
 005BA8D9    cmp         eax,dword ptr [ebp-20]
>005BA8DC    jle         005BA8E2
 005BA8DE    or          byte ptr [ebp-0D],1
 005BA8E2    mov         eax,dword ptr [ebp-8]
 005BA8E5    cmp         eax,dword ptr [ebp-54]
>005BA8E8    jge         005BA8F0
 005BA8EA    or          byte ptr [ebp-0D],4
>005BA8EE    jmp         005BA8FC
 005BA8F0    mov         eax,dword ptr [ebp-8]
 005BA8F3    cmp         eax,dword ptr [ebp-44]
>005BA8F6    jle         005BA8FC
 005BA8F8    or          byte ptr [ebp-0D],8
 005BA8FC    mov         al,[005BA91C];0x0 gvar_005BA91C
 005BA901    cmp         al,byte ptr [ebp-0D]
>005BA904    je          005BA915
 005BA906    mov         dl,byte ptr [ebp-0D]
 005BA909    mov         eax,dword ptr [ebp-4]
 005BA90C    mov         si,0FFA6
 005BA910    call        @CallDynaInst;TCustomGrid.sub_005BA6C4
 005BA915    pop         esi
 005BA916    mov         esp,ebp
 005BA918    pop         ebp
 005BA919    ret
end;*}

//005BA920
procedure TCustomGrid.sub_005BA920;
begin
{*
 005BA920    push        ebp
 005BA921    mov         ebp,esp
 005BA923    push        ecx
 005BA924    mov         dword ptr [ebp-4],eax
 005BA927    mov         eax,dword ptr [ebp-4]
 005BA92A    call        TCustomGrid.UpdateScrollRange
 005BA92F    mov         eax,dword ptr [ebp-4]
 005BA932    call        005BA008
 005BA937    pop         ecx
 005BA938    pop         ebp
 005BA939    ret
*}
end;

//005BA93C
procedure TCustomGrid.sub_005BA93C;
begin
{*
 005BA93C    push        ebp
 005BA93D    mov         ebp,esp
 005BA93F    push        ecx
 005BA940    mov         dword ptr [ebp-4],eax
 005BA943    mov         eax,dword ptr [ebp-4]
 005BA946    call        TCustomGrid.UpdateScrollRange
 005BA94B    mov         eax,dword ptr [ebp-4]
 005BA94E    call        005BA008
 005BA953    pop         ecx
 005BA954    pop         ebp
 005BA955    ret
*}
end;

//005BA958
{*procedure sub_005BA958(?:?);
begin
 005BA958    push        ebp
 005BA959    mov         ebp,esp
 005BA95B    add         esp,0FFFFFFF8
 005BA95E    mov         dword ptr [ebp-8],edx
 005BA961    mov         dword ptr [ebp-4],eax
 005BA964    mov         eax,dword ptr [ebp-4]
 005BA967    mov         ecx,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005BA96D    dec         ecx
 005BA96E    mov         edx,dword ptr [ebp-8]
 005BA971    mov         eax,dword ptr [ebp-4]
 005BA974    call        005B4DD8
 005BA979    mov         eax,dword ptr [ebp-4]
 005BA97C    mov         edx,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 005BA982    dec         edx
 005BA983    mov         eax,dword ptr [ebp-4]
 005BA986    call        TDrawGrid.SetColCount
 005BA98B    pop         ecx
 005BA98C    pop         ecx
 005BA98D    pop         ebp
 005BA98E    ret
end;*}

//005BA990
{*procedure sub_005BA990(?:?);
begin
 005BA990    push        ebp
 005BA991    mov         ebp,esp
 005BA993    add         esp,0FFFFFFF8
 005BA996    mov         dword ptr [ebp-8],edx
 005BA999    mov         dword ptr [ebp-4],eax
 005BA99C    mov         eax,dword ptr [ebp-4]
 005BA99F    mov         ecx,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005BA9A5    dec         ecx
 005BA9A6    mov         edx,dword ptr [ebp-8]
 005BA9A9    mov         eax,dword ptr [ebp-4]
 005BA9AC    call        005B4EFC
 005BA9B1    mov         eax,dword ptr [ebp-4]
 005BA9B4    mov         edx,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005BA9BA    dec         edx
 005BA9BB    mov         eax,dword ptr [ebp-4]
 005BA9BE    call        TDrawGrid.SetRowCount
 005BA9C3    pop         ecx
 005BA9C4    pop         ecx
 005BA9C5    pop         ebp
 005BA9C6    ret
end;*}

//005BA9C8
procedure sub_005BA9C8(?:TCustomGrid);
begin
{*
 005BA9C8    push        ebp
 005BA9C9    mov         ebp,esp
 005BA9CB    add         esp,0FFFFFFF8
 005BA9CE    mov         dword ptr [ebp-4],eax
 005BA9D1    mov         eax,dword ptr [ebp-4]
 005BA9D4    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>005BA9D8    je          005BAA1A
 005BA9DA    mov         eax,dword ptr [ebp-4]
 005BA9DD    call        TWinControl.HandleAllocated
 005BA9E2    test        al,al
>005BA9E4    je          005BAA1A
 005BA9E6    mov         eax,dword ptr [ebp-4]
 005BA9E9    test        byte ptr [eax+1C],40;TCustomGrid.FComponentState:TComponentState
>005BA9ED    jne         005BAA1A
 005BA9EF    mov         eax,dword ptr [ebp-4]
 005BA9F2    call        005CD060
 005BA9F7    mov         dword ptr [ebp-8],eax
 005BA9FA    cmp         dword ptr [ebp-8],0
>005BA9FE    je          005BAA1A
 005BAA00    mov         eax,dword ptr [ebp-8]
 005BAA03    cmp         dword ptr [eax+250],0
>005BAA0A    je          005BAA1A
 005BAA0C    mov         eax,dword ptr [ebp-8]
 005BAA0F    mov         eax,dword ptr [eax+250]
 005BAA15    mov         edx,dword ptr [eax]
 005BAA17    call        dword ptr [edx+0C]
 005BAA1A    pop         ecx
 005BAA1B    pop         ecx
 005BAA1C    pop         ebp
 005BAA1D    ret
*}
end;

//005BAA20
procedure TCustomGrid.DoMouseWheelDown(Shift:TShiftState; MousePos:TPoint);
begin
{*
 005BAA20    push        ebp
 005BAA21    mov         ebp,esp
 005BAA23    add         esp,0FFFFFFF0
 005BAA26    push        esi
 005BAA27    push        edi
 005BAA28    mov         esi,ecx
 005BAA2A    lea         edi,[ebp-0D]
 005BAA2D    movs        dword ptr [edi],dword ptr [esi]
 005BAA2E    movs        dword ptr [edi],dword ptr [esi]
 005BAA2F    mov         byte ptr [ebp-5],dl
 005BAA32    mov         dword ptr [ebp-4],eax
 005BAA35    lea         ecx,[ebp-0D]
 005BAA38    mov         dl,byte ptr [ebp-5]
 005BAA3B    mov         eax,dword ptr [ebp-4]
 005BAA3E    call        TControl.DoMouseWheelDown
 005BAA43    mov         byte ptr [ebp-0E],al
 005BAA46    cmp         byte ptr [ebp-0E],0
>005BAA4A    jne         005BAA77
 005BAA4C    mov         eax,dword ptr [ebp-4]
 005BAA4F    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 005BAA55    dec         eax
 005BAA56    mov         edx,dword ptr [ebp-4]
 005BAA59    cmp         eax,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
>005BAA5F    jle         005BAA73
 005BAA61    mov         eax,dword ptr [ebp-4]
 005BAA64    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BAA6A    inc         edx
 005BAA6B    mov         eax,dword ptr [ebp-4]
 005BAA6E    call        005B9D64
 005BAA73    mov         byte ptr [ebp-0E],1
 005BAA77    mov         al,byte ptr [ebp-0E]
 005BAA7A    pop         edi
 005BAA7B    pop         esi
 005BAA7C    mov         esp,ebp
 005BAA7E    pop         ebp
 005BAA7F    ret
*}
end;

//005BAA80
procedure TCustomGrid.DoMouseWheelUp(Shift:TShiftState; MousePos:TPoint);
begin
{*
 005BAA80    push        ebp
 005BAA81    mov         ebp,esp
 005BAA83    add         esp,0FFFFFFF0
 005BAA86    push        esi
 005BAA87    push        edi
 005BAA88    mov         esi,ecx
 005BAA8A    lea         edi,[ebp-0D]
 005BAA8D    movs        dword ptr [edi],dword ptr [esi]
 005BAA8E    movs        dword ptr [edi],dword ptr [esi]
 005BAA8F    mov         byte ptr [ebp-5],dl
 005BAA92    mov         dword ptr [ebp-4],eax
 005BAA95    lea         ecx,[ebp-0D]
 005BAA98    mov         dl,byte ptr [ebp-5]
 005BAA9B    mov         eax,dword ptr [ebp-4]
 005BAA9E    call        TControl.DoMouseWheelUp
 005BAAA3    mov         byte ptr [ebp-0E],al
 005BAAA6    cmp         byte ptr [ebp-0E],0
>005BAAAA    jne         005BAAD6
 005BAAAC    mov         eax,dword ptr [ebp-4]
 005BAAAF    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BAAB5    mov         edx,dword ptr [ebp-4]
 005BAAB8    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>005BAABE    jle         005BAAD2
 005BAAC0    mov         eax,dword ptr [ebp-4]
 005BAAC3    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BAAC9    dec         edx
 005BAACA    mov         eax,dword ptr [ebp-4]
 005BAACD    call        005B9D64
 005BAAD2    mov         byte ptr [ebp-0E],1
 005BAAD6    mov         al,byte ptr [ebp-0E]
 005BAAD9    pop         edi
 005BAADA    pop         esi
 005BAADB    mov         esp,ebp
 005BAADD    pop         ebp
 005BAADE    ret
*}
end;

//005BAAE0
{*procedure TCustomGrid.sub_005BAAE0(?:?; ?:?);
begin
 005BAAE0    push        ebp
 005BAAE1    mov         ebp,esp
 005BAAE3    add         esp,0FFFFFFF0
 005BAAE6    mov         dword ptr [ebp-10],ecx
 005BAAE9    mov         dword ptr [ebp-0C],edx
 005BAAEC    mov         dword ptr [ebp-4],eax
 005BAAEF    mov         byte ptr [ebp-5],1
 005BAAF3    mov         al,byte ptr [ebp-5]
 005BAAF6    mov         esp,ebp
 005BAAF8    pop         ebp
 005BAAF9    ret         4
end;*}

//005BAAFC
{*procedure TCustomGrid.sub_005BAAFC(?:?; ?:?);
begin
 005BAAFC    push        ebp
 005BAAFD    mov         ebp,esp
 005BAAFF    add         esp,0FFFFFFF0
 005BAB02    mov         dword ptr [ebp-10],ecx
 005BAB05    mov         dword ptr [ebp-0C],edx
 005BAB08    mov         dword ptr [ebp-4],eax
 005BAB0B    mov         byte ptr [ebp-5],1
 005BAB0F    mov         al,byte ptr [ebp-5]
 005BAB12    mov         esp,ebp
 005BAB14    pop         ebp
 005BAB15    ret         4
end;*}

//005BAB18
{*procedure TCustomGrid.sub_005BAB18(?:?; ?:?);
begin
 005BAB18    push        ebp
 005BAB19    mov         ebp,esp
 005BAB1B    add         esp,0FFFFFFF0
 005BAB1E    mov         dword ptr [ebp-10],ecx
 005BAB21    mov         dword ptr [ebp-0C],edx
 005BAB24    mov         dword ptr [ebp-4],eax
 005BAB27    mov         byte ptr [ebp-5],1
 005BAB2B    mov         al,byte ptr [ebp-5]
 005BAB2E    mov         esp,ebp
 005BAB30    pop         ebp
 005BAB31    ret         4
end;*}

//005BAB34
{*procedure TCustomGrid.sub_005BAB34(?:?; ?:?);
begin
 005BAB34    push        ebp
 005BAB35    mov         ebp,esp
 005BAB37    add         esp,0FFFFFFF0
 005BAB3A    mov         dword ptr [ebp-10],ecx
 005BAB3D    mov         dword ptr [ebp-0C],edx
 005BAB40    mov         dword ptr [ebp-4],eax
 005BAB43    mov         byte ptr [ebp-5],1
 005BAB47    mov         al,byte ptr [ebp-5]
 005BAB4A    mov         esp,ebp
 005BAB4C    pop         ebp
 005BAB4D    ret         4
end;*}

//005BAB50
{*procedure TCustomGrid.sub_005BAB50(?:?; ?:?);
begin
 005BAB50    push        ebp
 005BAB51    mov         ebp,esp
 005BAB53    add         esp,0FFFFFFF0
 005BAB56    mov         dword ptr [ebp-10],ecx
 005BAB59    mov         dword ptr [ebp-0C],edx
 005BAB5C    mov         dword ptr [ebp-4],eax
 005BAB5F    mov         byte ptr [ebp-5],1
 005BAB63    mov         al,byte ptr [ebp-5]
 005BAB66    mov         esp,ebp
 005BAB68    pop         ebp
 005BAB69    ret         4
end;*}

//005BAB6C
{*procedure TCustomGrid.sub_005BAB6C(?:?; ?:?);
begin
 005BAB6C    push        ebp
 005BAB6D    mov         ebp,esp
 005BAB6F    add         esp,0FFFFFFF0
 005BAB72    mov         dword ptr [ebp-10],ecx
 005BAB75    mov         dword ptr [ebp-0C],edx
 005BAB78    mov         dword ptr [ebp-4],eax
 005BAB7B    mov         byte ptr [ebp-5],1
 005BAB7F    mov         al,byte ptr [ebp-5]
 005BAB82    mov         esp,ebp
 005BAB84    pop         ebp
 005BAB85    ret         4
end;*}

//005BAB88
{*procedure TCustomGrid.CMShowingChanged(?:?);
begin
 005BAB88    push        ebp
 005BAB89    mov         ebp,esp
 005BAB8B    add         esp,0FFFFFFF8
 005BAB8E    mov         dword ptr [ebp-8],edx
 005BAB91    mov         dword ptr [ebp-4],eax
 005BAB94    mov         edx,dword ptr [ebp-8]
 005BAB97    mov         eax,dword ptr [ebp-4]
 005BAB9A    call        TWinControl.CMShowingChanged
 005BAB9F    mov         eax,dword ptr [ebp-4]
 005BABA2    cmp         byte ptr [eax+1A6],0;TCustomGrid.FShowing:Boolean
>005BABA9    je          005BABB3
 005BABAB    mov         eax,dword ptr [ebp-4]
 005BABAE    call        TCustomGrid.UpdateScrollRange
 005BABB3    pop         ecx
 005BABB4    pop         ecx
 005BABB5    pop         ebp
 005BABB6    ret
end;*}

//005BABB8
{*procedure TCustomDrawGrid.sub_005B4EE8(?:?; ?:?);
begin
 005BABB8    push        ebp
 005BABB9    mov         ebp,esp
 005BABBB    add         esp,0FFFFFFF4
 005BABBE    push        ebx
 005BABBF    mov         dword ptr [ebp-0C],ecx
 005BABC2    mov         dword ptr [ebp-8],edx
 005BABC5    mov         dword ptr [ebp-4],eax
 005BABC8    mov         eax,dword ptr [ebp-4]
 005BABCB    cmp         word ptr [eax+29A],0;TCustomDrawGrid.?f29A:word
>005BABD3    je          005BABEE
 005BABD5    mov         eax,dword ptr [ebp-0C]
 005BABD8    push        eax
 005BABD9    mov         ebx,dword ptr [ebp-4]
 005BABDC    mov         ecx,dword ptr [ebp-8]
 005BABDF    mov         edx,dword ptr [ebp-4]
 005BABE2    mov         eax,dword ptr [ebx+29C];TCustomDrawGrid.?f29C:dword
 005BABE8    call        dword ptr [ebx+298];TCustomDrawGrid.FOnColumnMoved
 005BABEE    pop         ebx
 005BABEF    mov         esp,ebp
 005BABF1    pop         ebp
 005BABF2    ret
end;*}

//005BABF4
{*procedure TCustomDrawGrid.sub_005B49FC(?:?; ?:?; ?:?);
begin
 005BABF4    push        ebp
 005BABF5    mov         ebp,esp
 005BABF7    add         esp,0FFFFFFF4
 005BABFA    push        ebx
 005BABFB    mov         dword ptr [ebp-0C],ecx
 005BABFE    mov         dword ptr [ebp-8],edx
 005BAC01    mov         dword ptr [ebp-4],eax
 005BAC04    mov         eax,dword ptr [ebp+8]
 005BAC07    call        @LStrClr
 005BAC0C    mov         eax,dword ptr [ebp-4]
 005BAC0F    cmp         word ptr [eax+2AA],0;TCustomDrawGrid.?f2AA:word
>005BAC17    je          005BAC36
 005BAC19    mov         eax,dword ptr [ebp-0C]
 005BAC1C    push        eax
 005BAC1D    mov         eax,dword ptr [ebp+8]
 005BAC20    push        eax
 005BAC21    mov         ebx,dword ptr [ebp-4]
 005BAC24    mov         ecx,dword ptr [ebp-8]
 005BAC27    mov         edx,dword ptr [ebp-4]
 005BAC2A    mov         eax,dword ptr [ebx+2AC];TCustomDrawGrid.?f2AC:dword
 005BAC30    call        dword ptr [ebx+2A8];TCustomDrawGrid.FOnGetEditMask
 005BAC36    pop         ebx
 005BAC37    mov         esp,ebp
 005BAC39    pop         ebp
 005BAC3A    ret         4
end;*}

//005BAC40
{*procedure TCustomDrawGrid.sub_005B4A1C(?:?; ?:?; ?:?);
begin
 005BAC40    push        ebp
 005BAC41    mov         ebp,esp
 005BAC43    add         esp,0FFFFFFF4
 005BAC46    push        ebx
 005BAC47    mov         dword ptr [ebp-0C],ecx
 005BAC4A    mov         dword ptr [ebp-8],edx
 005BAC4D    mov         dword ptr [ebp-4],eax
 005BAC50    mov         eax,dword ptr [ebp+8]
 005BAC53    call        @LStrClr
 005BAC58    mov         eax,dword ptr [ebp-4]
 005BAC5B    cmp         word ptr [eax+2B2],0;TCustomDrawGrid.?f2B2:word
>005BAC63    je          005BAC82
 005BAC65    mov         eax,dword ptr [ebp-0C]
 005BAC68    push        eax
 005BAC69    mov         eax,dword ptr [ebp+8]
 005BAC6C    push        eax
 005BAC6D    mov         ebx,dword ptr [ebp-4]
 005BAC70    mov         ecx,dword ptr [ebp-8]
 005BAC73    mov         edx,dword ptr [ebp-4]
 005BAC76    mov         eax,dword ptr [ebx+2B4];TCustomDrawGrid.?f2B4:dword
 005BAC7C    call        dword ptr [ebx+2B0];TCustomDrawGrid.FOnGetEditText
 005BAC82    pop         ebx
 005BAC83    mov         esp,ebp
 005BAC85    pop         ebp
 005BAC86    ret         4
end;*}

//005BAC8C
{*procedure TCustomDrawGrid.sub_005B4FAC(?:?; ?:?);
begin
 005BAC8C    push        ebp
 005BAC8D    mov         ebp,esp
 005BAC8F    add         esp,0FFFFFFF4
 005BAC92    push        ebx
 005BAC93    mov         dword ptr [ebp-0C],ecx
 005BAC96    mov         dword ptr [ebp-8],edx
 005BAC99    mov         dword ptr [ebp-4],eax
 005BAC9C    mov         eax,dword ptr [ebp-4]
 005BAC9F    cmp         word ptr [eax+2BA],0;TCustomDrawGrid.?f2BA:word
>005BACA7    je          005BACC2
 005BACA9    mov         eax,dword ptr [ebp-0C]
 005BACAC    push        eax
 005BACAD    mov         ebx,dword ptr [ebp-4]
 005BACB0    mov         ecx,dword ptr [ebp-8]
 005BACB3    mov         edx,dword ptr [ebp-4]
 005BACB6    mov         eax,dword ptr [ebx+2BC];TCustomDrawGrid.?f2BC:dword
 005BACBC    call        dword ptr [ebx+2B8];TCustomDrawGrid.FOnRowMoved
 005BACC2    pop         ebx
 005BACC3    mov         esp,ebp
 005BACC5    pop         ebp
 005BACC6    ret
end;*}

//005BACC8
{*function sub_005BACC8(?:?; ?:?):?;
begin
 005BACC8    push        ebp
 005BACC9    mov         ebp,esp
 005BACCB    add         esp,0FFFFFFF0
 005BACCE    push        ebx
 005BACCF    mov         dword ptr [ebp-0C],ecx
 005BACD2    mov         dword ptr [ebp-8],edx
 005BACD5    mov         dword ptr [ebp-4],eax
 005BACD8    mov         byte ptr [ebp-0D],1
 005BACDC    mov         eax,dword ptr [ebp-4]
 005BACDF    cmp         word ptr [eax+2C2],0;TCustomDrawGrid.?f2C2:word
>005BACE7    je          005BAD06
 005BACE9    mov         eax,dword ptr [ebp-0C]
 005BACEC    push        eax
 005BACED    lea         eax,[ebp-0D]
 005BACF0    push        eax
 005BACF1    mov         ebx,dword ptr [ebp-4]
 005BACF4    mov         ecx,dword ptr [ebp-8]
 005BACF7    mov         edx,dword ptr [ebp-4]
 005BACFA    mov         eax,dword ptr [ebx+2C4];TCustomDrawGrid.?f2C4:dword
 005BAD00    call        dword ptr [ebx+2C0];TCustomDrawGrid.FOnSelectCell
 005BAD06    mov         al,byte ptr [ebp-0D]
 005BAD09    pop         ebx
 005BAD0A    mov         esp,ebp
 005BAD0C    pop         ebp
 005BAD0D    ret
end;*}

//005BAD10
procedure TCustomDrawGrid.SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString);
begin
{*
 005BAD10    push        ebp
 005BAD11    mov         ebp,esp
 005BAD13    add         esp,0FFFFFFF4
 005BAD16    push        ebx
 005BAD17    mov         dword ptr [ebp-0C],ecx
 005BAD1A    mov         dword ptr [ebp-8],edx
 005BAD1D    mov         dword ptr [ebp-4],eax
 005BAD20    mov         eax,dword ptr [ebp-4]
 005BAD23    cmp         word ptr [eax+2CA],0
>005BAD2B    je          005BAD4A
 005BAD2D    mov         eax,dword ptr [ebp-0C]
 005BAD30    push        eax
 005BAD31    mov         eax,dword ptr [ebp+8]
 005BAD34    push        eax
 005BAD35    mov         ebx,dword ptr [ebp-4]
 005BAD38    mov         ecx,dword ptr [ebp-8]
 005BAD3B    mov         edx,dword ptr [ebp-4]
 005BAD3E    mov         eax,dword ptr [ebx+2CC]
 005BAD44    call        dword ptr [ebx+2C8]
 005BAD4A    pop         ebx
 005BAD4B    mov         esp,ebp
 005BAD4D    pop         ebp
 005BAD4E    ret         4
*}
end;

//005BAD54
{*procedure TCustomDrawGrid.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);
begin
 005BAD54    push        ebp
 005BAD55    mov         ebp,esp
 005BAD57    add         esp,0FFFFFFE0
 005BAD5A    push        ebx
 005BAD5B    push        esi
 005BAD5C    push        edi
 005BAD5D    mov         esi,dword ptr [ebp+0C]
 005BAD60    lea         edi,[ebp-20]
 005BAD63    movs        dword ptr [edi],dword ptr [esi]
 005BAD64    movs        dword ptr [edi],dword ptr [esi]
 005BAD65    movs        dword ptr [edi],dword ptr [esi]
 005BAD66    movs        dword ptr [edi],dword ptr [esi]
 005BAD67    mov         dword ptr [ebp-0C],ecx
 005BAD6A    mov         dword ptr [ebp-8],edx
 005BAD6D    mov         dword ptr [ebp-4],eax
 005BAD70    mov         eax,dword ptr [ebp-4]
 005BAD73    cmp         word ptr [eax+2A2],0;TCustomDrawGrid.?f2A2:word
>005BAD7B    je          005BAE04
 005BAD81    mov         eax,dword ptr [ebp-4]
 005BAD84    mov         si,0FFC8
 005BAD88    call        @CallDynaInst;TControl.sub_005F40CC
 005BAD8D    test        al,al
>005BAD8F    je          005BADC9
 005BAD91    mov         eax,dword ptr [ebp-4]
 005BAD94    call        TControl.GetClientWidth
 005BAD99    sub         eax,dword ptr [ebp-20]
 005BAD9C    mov         dword ptr [ebp-20],eax
 005BAD9F    mov         eax,dword ptr [ebp-4]
 005BADA2    call        TControl.GetClientWidth
 005BADA7    sub         eax,dword ptr [ebp-18]
 005BADAA    mov         dword ptr [ebp-18],eax
 005BADAD    mov         eax,dword ptr [ebp-20]
 005BADB0    mov         dword ptr [ebp-10],eax
 005BADB3    mov         eax,dword ptr [ebp-18]
 005BADB6    mov         dword ptr [ebp-20],eax
 005BADB9    mov         eax,dword ptr [ebp-10]
 005BADBC    mov         dword ptr [ebp-18],eax
 005BADBF    xor         edx,edx
 005BADC1    mov         eax,dword ptr [ebp-4]
 005BADC4    call        005B64D4
 005BADC9    mov         eax,dword ptr [ebp-0C]
 005BADCC    push        eax
 005BADCD    lea         eax,[ebp-20]
 005BADD0    push        eax
 005BADD1    mov         al,byte ptr [ebp+8]
 005BADD4    push        eax
 005BADD5    mov         ebx,dword ptr [ebp-4]
 005BADD8    mov         ecx,dword ptr [ebp-8]
 005BADDB    mov         edx,dword ptr [ebp-4]
 005BADDE    mov         eax,dword ptr [ebx+2A4];TCustomDrawGrid.?f2A4:dword
 005BADE4    call        dword ptr [ebx+2A0];TCustomDrawGrid.FOnDrawCell
 005BADEA    mov         eax,dword ptr [ebp-4]
 005BADED    mov         si,0FFC8
 005BADF1    call        @CallDynaInst;TControl.sub_005F40CC
 005BADF6    test        al,al
>005BADF8    je          005BAE04
 005BADFA    mov         dl,1
 005BADFC    mov         eax,dword ptr [ebp-4]
 005BADFF    call        005B64D4
 005BAE04    pop         edi
 005BAE05    pop         esi
 005BAE06    pop         ebx
 005BAE07    mov         esp,ebp
 005BAE09    pop         ebp
 005BAE0A    ret         8
end;*}

//005BAE10
procedure TCustomDrawGrid.sub_005B5080;
begin
{*
 005BAE10    push        ebp
 005BAE11    mov         ebp,esp
 005BAE13    push        ecx
 005BAE14    push        ebx
 005BAE15    mov         dword ptr [ebp-4],eax
 005BAE18    mov         eax,dword ptr [ebp-4]
 005BAE1B    call        TCustomGrid.sub_005B5080
 005BAE20    mov         eax,dword ptr [ebp-4]
 005BAE23    cmp         word ptr [eax+2D2],0;TCustomDrawGrid.?f2D2:word
>005BAE2B    je          005BAE3F
 005BAE2D    mov         ebx,dword ptr [ebp-4]
 005BAE30    mov         edx,dword ptr [ebp-4]
 005BAE33    mov         eax,dword ptr [ebx+2D4];TCustomDrawGrid.?f2D4:dword
 005BAE39    call        dword ptr [ebx+2D0];TCustomDrawGrid.FOnTopLeftChanged
 005BAE3F    pop         ebx
 005BAE40    pop         ecx
 005BAE41    pop         ebp
 005BAE42    ret
*}
end;

//005BAE64
{*function sub_005BAE64(?:?; ?:?):?;
begin
 005BAE64    push        ebp
 005BAE65    mov         ebp,esp
 005BAE67    add         esp,0FFFFFFF4
 005BAE6A    mov         dword ptr [ebp-8],edx
 005BAE6D    mov         dword ptr [ebp-4],eax
 005BAE70    mov         edx,dword ptr ds:[5BAE44];TStrItem
 005BAE76    mov         eax,8
 005BAE7B    call        @New
 005BAE80    mov         dword ptr [ebp-0C],eax
 005BAE83    mov         eax,dword ptr [ebp-0C]
 005BAE86    mov         edx,dword ptr [ebp-8]
 005BAE89    mov         dword ptr [eax],edx
 005BAE8B    mov         eax,dword ptr [ebp-0C]
 005BAE8E    add         eax,4
 005BAE91    mov         edx,dword ptr [ebp-4]
 005BAE94    call        @LStrAsg
 005BAE99    mov         eax,dword ptr [ebp-0C]
 005BAE9C    mov         esp,ebp
 005BAE9E    pop         ebp
 005BAE9F    ret
end;*}

//005BAEA0
{*procedure sub_005BAEA0(?:?);
begin
 005BAEA0    push        ebp
 005BAEA1    mov         ebp,esp
 005BAEA3    push        ecx
 005BAEA4    mov         dword ptr [ebp-4],eax
 005BAEA7    mov         edx,dword ptr ds:[5BAE44];TStrItem
 005BAEAD    mov         eax,dword ptr [ebp-4]
 005BAEB0    call        @Dispose
 005BAEB5    pop         ecx
 005BAEB6    pop         ebp
 005BAEB7    ret
end;*}

//005BB07C
{*function sub_005BB07C(?:?; ?:?; ?:?):?;
begin
 005BB07C    push        ebp
 005BB07D    mov         ebp,esp
 005BB07F    add         esp,0FFFFFFF0
 005BB082    mov         word ptr [ebp-0A],cx
 005BB086    mov         dword ptr [ebp-8],edx
 005BB089    mov         dword ptr [ebp-4],eax
 005BB08C    mov         eax,dword ptr [ebp-4]
 005BB08F    mov         dword ptr [ebp-10],eax
 005BB092    movzx       eax,word ptr [ebp-0A]
 005BB096    mov         edx,eax
 005BB098    shl         edx,2
 005BB09B    lea         eax,[ebp-10]
 005BB09E    call        @ReallocMem
 005BB0A3    movzx       eax,word ptr [ebp-0A]
 005BB0A7    mov         edx,dword ptr [ebp-8]
 005BB0AA    movzx       edx,word ptr [edx]
 005BB0AD    sub         eax,edx
 005BB0AF    mov         edx,eax
 005BB0B1    shl         edx,2
 005BB0B4    mov         eax,dword ptr [ebp-8]
 005BB0B7    movzx       eax,word ptr [eax]
 005BB0BA    mov         ecx,dword ptr [ebp-10]
 005BB0BD    lea         eax,[ecx+eax*4]
 005BB0C0    xor         ecx,ecx
 005BB0C2    call        @FillChar
 005BB0C7    mov         eax,dword ptr [ebp-8]
 005BB0CA    mov         dx,word ptr [ebp-0A]
 005BB0CE    mov         word ptr [eax],dx
 005BB0D1    mov         eax,dword ptr [ebp-10]
 005BB0D4    mov         esp,ebp
 005BB0D6    pop         ebp
 005BB0D7    ret
end;*}

//005BB0D8
{*function sub_005BB0D8(?:?; ?:?):?;
begin
 005BB0D8    push        ebp
 005BB0D9    mov         ebp,esp
 005BB0DB    add         esp,0FFFFFFEC
 005BB0DE    mov         word ptr [ebp-2],dx
 005BB0E2    mov         dword ptr [ebp-14],eax
 005BB0E5    mov         ax,word ptr [ebp-2]
 005BB0E9    shl         eax,2
 005BB0EC    mov         word ptr [ebp-0E],ax
 005BB0F0    movzx       eax,word ptr [ebp-0E]
 005BB0F4    call        @GetMem
 005BB0F9    mov         dword ptr [ebp-0C],eax
 005BB0FC    movzx       edx,word ptr [ebp-0E]
 005BB100    mov         eax,dword ptr [ebp-0C]
 005BB103    xor         ecx,ecx
 005BB105    call        @FillChar
 005BB10A    mov         eax,dword ptr [ebp-0C]
 005BB10D    mov         dword ptr [ebp-8],eax
 005BB110    mov         eax,dword ptr [ebp-8]
 005BB113    mov         esp,ebp
 005BB115    pop         ebp
 005BB116    ret
end;*}

//005BB118
constructor TSparsePointerArray.Create;
begin
{*
 005BB118    push        ebp
 005BB119    mov         ebp,esp
 005BB11B    add         esp,0FFFFFFF8
 005BB11E    test        dl,dl
>005BB120    je          005BB12A
 005BB122    add         esp,0FFFFFFF0
 005BB125    call        @ClassCreate
 005BB12A    mov         byte ptr [ebp-6],cl
 005BB12D    mov         byte ptr [ebp-5],dl
 005BB130    mov         dword ptr [ebp-4],eax
 005BB133    mov         eax,dword ptr [ebp-4]
 005BB136    xor         edx,edx
 005BB138    mov         dword ptr [eax+4],edx
 005BB13B    mov         eax,dword ptr [ebp-4]
 005BB13E    mov         word ptr [eax+8],0
 005BB144    mov         eax,dword ptr [ebp-4]
 005BB147    mov         dword ptr [eax+10],0FFFFFFFF
 005BB14E    xor         eax,eax
 005BB150    mov         al,byte ptr [ebp-6]
 005BB153    movzx       eax,byte ptr [eax+6E3CB8]
 005BB15A    inc         eax
 005BB15B    mov         edx,dword ptr [ebp-4]
 005BB15E    mov         word ptr [edx+14],ax
 005BB162    xor         eax,eax
 005BB164    mov         al,byte ptr [ebp-6]
 005BB167    movzx       eax,byte ptr [eax+6E3CB8]
 005BB16E    mov         edx,dword ptr [ebp-4]
 005BB171    mov         word ptr [edx+0A],ax
 005BB175    xor         eax,eax
 005BB177    mov         al,byte ptr [ebp-6]
 005BB17A    movzx       eax,byte ptr [eax+6E3CBC]
 005BB181    mov         edx,dword ptr [ebp-4]
 005BB184    mov         word ptr [edx+0C],ax
 005BB188    mov         eax,dword ptr [ebp-4]
 005BB18B    mov         dword ptr [eax+18],0FFFFFFFF
 005BB192    mov         eax,dword ptr [ebp-4]
 005BB195    cmp         byte ptr [ebp-5],0
>005BB199    je          005BB1AA
 005BB19B    call        @AfterConstruction
 005BB1A0    pop         dword ptr fs:[0]
 005BB1A7    add         esp,0C
 005BB1AA    mov         eax,dword ptr [ebp-4]
 005BB1AD    pop         ecx
 005BB1AE    pop         ecx
 005BB1AF    pop         ebp
 005BB1B0    ret
*}
end;

//005BB240
{*function sub_005BB240(?:?; ?:?):?;
begin
 005BB240    push        ebp
 005BB241    mov         ebp,esp
 005BB243    add         esp,0FFFFFFEC
 005BB246    mov         dword ptr [ebp-8],edx
 005BB249    mov         dword ptr [ebp-4],eax
 005BB24C    mov         eax,dword ptr [ebp-8]
 005BB24F    mov         edx,dword ptr [ebp-4]
 005BB252    cmp         eax,dword ptr [edx+18]
>005BB255    jne         005BB262
 005BB257    mov         eax,dword ptr [ebp-4]
 005BB25A    mov         eax,dword ptr [eax+1C]
 005BB25D    mov         dword ptr [ebp-0C],eax
>005BB260    jmp         005BB2D0
 005BB262    mov         eax,dword ptr [ebp-4]
 005BB265    mov         cx,word ptr [eax+0C]
 005BB269    mov         eax,dword ptr [ebp-8]
 005BB26C    shr         eax,cl
 005BB26E    mov         dword ptr [ebp-14],eax
 005BB271    mov         eax,dword ptr [ebp-4]
 005BB274    movzx       eax,word ptr [eax+8]
 005BB278    cmp         eax,dword ptr [ebp-14]
>005BB27B    ja          005BB284
 005BB27D    xor         eax,eax
 005BB27F    mov         dword ptr [ebp-10],eax
>005BB282    jmp         005BB2A9
 005BB284    mov         eax,dword ptr [ebp-4]
 005BB287    mov         eax,dword ptr [eax+4]
 005BB28A    mov         edx,dword ptr [ebp-14]
 005BB28D    mov         eax,dword ptr [eax+edx*4]
 005BB290    mov         dword ptr [ebp-10],eax
 005BB293    cmp         dword ptr [ebp-10],0
>005BB297    je          005BB2A9
 005BB299    mov         eax,dword ptr [ebp-4]
 005BB29C    movzx       eax,word ptr [eax+0A]
 005BB2A0    and         eax,dword ptr [ebp-8]
 005BB2A3    shl         eax,2
 005BB2A6    add         dword ptr [ebp-10],eax
 005BB2A9    cmp         dword ptr [ebp-10],0
>005BB2AD    jne         005BB2B6
 005BB2AF    xor         eax,eax
 005BB2B1    mov         dword ptr [ebp-0C],eax
>005BB2B4    jmp         005BB2BE
 005BB2B6    mov         eax,dword ptr [ebp-10]
 005BB2B9    mov         eax,dword ptr [eax]
 005BB2BB    mov         dword ptr [ebp-0C],eax
 005BB2BE    mov         eax,dword ptr [ebp-8]
 005BB2C1    mov         edx,dword ptr [ebp-4]
 005BB2C4    mov         dword ptr [edx+18],eax
 005BB2C7    mov         eax,dword ptr [ebp-0C]
 005BB2CA    mov         edx,dword ptr [ebp-4]
 005BB2CD    mov         dword ptr [edx+1C],eax
 005BB2D0    mov         eax,dword ptr [ebp-0C]
 005BB2D3    mov         esp,ebp
 005BB2D5    pop         ebp
 005BB2D6    ret
end;*}

//005BB2D8
{*function sub_005BB2D8(?:?; ?:?):?;
begin
 005BB2D8    push        ebp
 005BB2D9    mov         ebp,esp
 005BB2DB    add         esp,0FFFFFFE4
 005BB2DE    mov         dword ptr [ebp-8],edx
 005BB2E1    mov         dword ptr [ebp-4],eax
 005BB2E4    mov         eax,dword ptr [ebp-4]
 005BB2E7    mov         cx,word ptr [eax+0C]
 005BB2EB    mov         eax,dword ptr [ebp-8]
 005BB2EE    shr         eax,cl
 005BB2F0    mov         word ptr [ebp-1A],ax
 005BB2F4    mov         ax,word ptr [ebp-1A]
 005BB2F8    mov         edx,dword ptr [ebp-4]
 005BB2FB    cmp         ax,word ptr [edx+8]
>005BB2FF    jb          005BB31C
 005BB301    mov         cx,word ptr [ebp-1A]
 005BB305    inc         ecx
 005BB306    mov         eax,dword ptr [ebp-4]
 005BB309    lea         edx,[eax+8]
 005BB30C    mov         eax,dword ptr [ebp-4]
 005BB30F    mov         eax,dword ptr [eax+4]
 005BB312    call        005BB07C
 005BB317    mov         dword ptr [ebp-10],eax
>005BB31A    jmp         005BB325
 005BB31C    mov         eax,dword ptr [ebp-4]
 005BB31F    mov         eax,dword ptr [eax+4]
 005BB322    mov         dword ptr [ebp-10],eax
 005BB325    mov         eax,dword ptr [ebp-10]
 005BB328    mov         edx,dword ptr [ebp-4]
 005BB32B    mov         dword ptr [edx+4],eax
 005BB32E    movzx       eax,word ptr [ebp-1A]
 005BB332    mov         edx,dword ptr [ebp-10]
 005BB335    mov         eax,dword ptr [edx+eax*4]
 005BB338    mov         dword ptr [ebp-14],eax
 005BB33B    cmp         dword ptr [ebp-14],0
>005BB33F    jne         005BB361
 005BB341    movzx       eax,word ptr [ebp-1A]
 005BB345    mov         edx,dword ptr [ebp-4]
 005BB348    mov         dx,word ptr [edx+14]
 005BB34C    call        005BB0D8
 005BB351    mov         dword ptr [ebp-14],eax
 005BB354    movzx       eax,word ptr [ebp-1A]
 005BB358    mov         edx,dword ptr [ebp-10]
 005BB35B    mov         ecx,dword ptr [ebp-14]
 005BB35E    mov         dword ptr [edx+eax*4],ecx
 005BB361    mov         eax,dword ptr [ebp-14]
 005BB364    mov         dword ptr [ebp-18],eax
 005BB367    mov         eax,dword ptr [ebp-4]
 005BB36A    movzx       eax,word ptr [eax+0A]
 005BB36E    and         eax,dword ptr [ebp-8]
 005BB371    shl         eax,2
 005BB374    add         dword ptr [ebp-18],eax
 005BB377    mov         eax,dword ptr [ebp-8]
 005BB37A    mov         edx,dword ptr [ebp-4]
 005BB37D    cmp         eax,dword ptr [edx+10]
>005BB380    jle         005BB38B
 005BB382    mov         eax,dword ptr [ebp-8]
 005BB385    mov         edx,dword ptr [ebp-4]
 005BB388    mov         dword ptr [edx+10],eax
 005BB38B    mov         eax,dword ptr [ebp-18]
 005BB38E    mov         dword ptr [ebp-0C],eax
 005BB391    mov         eax,dword ptr [ebp-4]
 005BB394    mov         dword ptr [eax+18],0FFFFFFFF
 005BB39B    mov         eax,dword ptr [ebp-0C]
 005BB39E    mov         esp,ebp
 005BB3A0    pop         ebp
 005BB3A1    ret
end;*}

//005BB3A4
{*procedure sub_005BB3A4(?:?; ?:?; ?:?);
begin
 005BB3A4    push        ebp
 005BB3A5    mov         ebp,esp
 005BB3A7    add         esp,0FFFFFFF4
 005BB3AA    mov         dword ptr [ebp-0C],ecx
 005BB3AD    mov         dword ptr [ebp-8],edx
 005BB3B0    mov         dword ptr [ebp-4],eax
 005BB3B3    cmp         dword ptr [ebp-0C],0
>005BB3B7    jne         005BB3C8
 005BB3B9    mov         edx,dword ptr [ebp-8]
 005BB3BC    mov         eax,dword ptr [ebp-4]
 005BB3BF    call        005BB240
 005BB3C4    test        eax,eax
>005BB3C6    je          005BB3E6
 005BB3C8    mov         edx,dword ptr [ebp-8]
 005BB3CB    mov         eax,dword ptr [ebp-4]
 005BB3CE    call        005BB2D8
 005BB3D3    mov         edx,dword ptr [ebp-0C]
 005BB3D6    mov         dword ptr [eax],edx
 005BB3D8    cmp         dword ptr [ebp-0C],0
>005BB3DC    jne         005BB3E6
 005BB3DE    mov         eax,dword ptr [ebp-4]
 005BB3E1    call        TSparsePointerArray.ResetHighBound
 005BB3E6    mov         esp,ebp
 005BB3E8    pop         ebp
 005BB3E9    ret
end;*}

//005BB3EC
function TSparsePointerArray.ForAll(ApplyFunction:Pointer):Integer;
begin
{*
 005BB3EC    push        ebp
 005BB3ED    mov         ebp,esp
 005BB3EF    add         esp,0FFFFFFDC
 005BB3F2    mov         dword ptr [ebp-10],edx
 005BB3F5    mov         dword ptr [ebp-18],eax
 005BB3F8    xor         eax,eax
 005BB3FA    mov         dword ptr [ebp-14],eax
 005BB3FD    xor         eax,eax
 005BB3FF    mov         dword ptr [ebp-20],eax
 005BB402    mov         eax,dword ptr [ebp]
 005BB405    mov         dword ptr [ebp-4],eax
>005BB408    jmp         005BB472
 005BB40A    mov         eax,dword ptr [ebp-18]
 005BB40D    mov         eax,dword ptr [eax+4]
 005BB410    mov         edx,dword ptr [ebp-20]
 005BB413    mov         eax,dword ptr [eax+edx*4]
 005BB416    mov         dword ptr [ebp-1C],eax
 005BB419    cmp         dword ptr [ebp-1C],0
>005BB41D    je          005BB46F
 005BB41F    xor         eax,eax
 005BB421    mov         dword ptr [ebp-24],eax
 005BB424    mov         eax,dword ptr [ebp-18]
 005BB427    mov         cx,word ptr [eax+0C]
 005BB42B    mov         eax,dword ptr [ebp-20]
 005BB42E    shl         eax,cl
 005BB430    mov         dword ptr [ebp-8],eax
>005BB433    jmp         005BB45D
 005BB435    mov         eax,dword ptr [ebp-1C]
 005BB438    mov         eax,dword ptr [eax]
 005BB43A    mov         dword ptr [ebp-0C],eax
 005BB43D    cmp         dword ptr [ebp-0C],0
>005BB441    je          005BB453
 005BB443    mov         eax,dword ptr [ebp-8]
 005BB446    mov         edx,dword ptr [ebp-0C]
 005BB449    push        dword ptr [ebp-4]
 005BB44C    call        dword ptr [ebp-10]
 005BB44F    pop         ecx
 005BB450    mov         dword ptr [ebp-14],eax
 005BB453    add         dword ptr [ebp-1C],4
 005BB457    inc         dword ptr [ebp-24]
 005BB45A    inc         dword ptr [ebp-8]
 005BB45D    mov         eax,dword ptr [ebp-18]
 005BB460    movzx       eax,word ptr [eax+14]
 005BB464    cmp         eax,dword ptr [ebp-24]
>005BB467    jle         005BB46F
 005BB469    cmp         dword ptr [ebp-14],0
>005BB46D    je          005BB435
 005BB46F    inc         dword ptr [ebp-20]
 005BB472    mov         eax,dword ptr [ebp-18]
 005BB475    movzx       eax,word ptr [eax+8]
 005BB479    cmp         eax,dword ptr [ebp-20]
>005BB47C    jbe         005BB484
 005BB47E    cmp         dword ptr [ebp-14],0
>005BB482    je          005BB40A
 005BB484    mov         eax,dword ptr [ebp-14]
 005BB487    mov         esp,ebp
 005BB489    pop         ebp
 005BB48A    ret
*}
end;

//005BB48C
function Detector(TheIndex:Integer; TheItem:Pointer):Integer;
begin
{*
 005BB48C    push        ebp
 005BB48D    mov         ebp,esp
 005BB48F    add         esp,0FFFFFFF4
 005BB492    mov         dword ptr [ebp-8],edx
 005BB495    mov         dword ptr [ebp-4],eax
 005BB498    mov         eax,dword ptr [ebp+8]
 005BB49B    mov         eax,dword ptr [eax-4]
 005BB49E    mov         eax,dword ptr [eax+10]
 005BB4A1    cmp         eax,dword ptr [ebp-4]
>005BB4A4    jge         005BB4AF
 005BB4A6    mov         dword ptr [ebp-0C],1
>005BB4AD    jmp         005BB4C3
 005BB4AF    xor         eax,eax
 005BB4B1    mov         dword ptr [ebp-0C],eax
 005BB4B4    cmp         dword ptr [ebp-8],0
>005BB4B8    je          005BB4C3
 005BB4BA    mov         eax,dword ptr [ebp+8]
 005BB4BD    mov         edx,dword ptr [ebp-4]
 005BB4C0    mov         dword ptr [eax-8],edx
 005BB4C3    mov         eax,dword ptr [ebp-0C]
 005BB4C6    mov         esp,ebp
 005BB4C8    pop         ebp
 005BB4C9    ret
*}
end;

//005BB4CC
procedure TSparsePointerArray.ResetHighBound;
begin
{*
 005BB4CC    push        ebp
 005BB4CD    mov         ebp,esp
 005BB4CF    add         esp,0FFFFFFF8
 005BB4D2    mov         dword ptr [ebp-4],eax
 005BB4D5    mov         dword ptr [ebp-8],0FFFFFFFF
 005BB4DC    mov         edx,5BB48C;Detector:Integer
 005BB4E1    mov         eax,dword ptr [ebp-4]
 005BB4E4    call        TSparsePointerArray.ForAll
 005BB4E9    mov         eax,dword ptr [ebp-4]
 005BB4EC    mov         edx,dword ptr [ebp-8]
 005BB4EF    mov         dword ptr [eax+10],edx
 005BB4F2    pop         ecx
 005BB4F3    pop         ecx
 005BB4F4    pop         ebp
 005BB4F5    ret
*}
end;

//005BB4F8
constructor TSparseList.Create;
begin
{*
 005BB4F8    push        ebp
 005BB4F9    mov         ebp,esp
 005BB4FB    add         esp,0FFFFFFF8
 005BB4FE    test        dl,dl
>005BB500    je          005BB50A
 005BB502    add         esp,0FFFFFFF0
 005BB505    call        @ClassCreate
 005BB50A    mov         byte ptr [ebp-6],cl
 005BB50D    mov         byte ptr [ebp-5],dl
 005BB510    mov         dword ptr [ebp-4],eax
 005BB513    mov         dl,byte ptr [ebp-6]
 005BB516    mov         eax,dword ptr [ebp-4]
 005BB519    call        005BB804
 005BB51E    mov         eax,dword ptr [ebp-4]
 005BB521    cmp         byte ptr [ebp-5],0
>005BB525    je          005BB536
 005BB527    call        @AfterConstruction
 005BB52C    pop         dword ptr fs:[0]
 005BB533    add         esp,0C
 005BB536    mov         eax,dword ptr [ebp-4]
 005BB539    pop         ecx
 005BB53A    pop         ecx
 005BB53B    pop         ebp
 005BB53C    ret
*}
end;

//005BB57C
procedure sub_005BB57C(?:TSparseList);
begin
{*
 005BB57C    push        ebp
 005BB57D    mov         ebp,esp
 005BB57F    push        ecx
 005BB580    mov         dword ptr [ebp-4],eax
 005BB583    mov         dl,1
 005BB585    mov         eax,dword ptr [ebp-4]
 005BB588    mov         eax,dword ptr [eax+4]
 005BB58B    mov         ecx,dword ptr [eax]
 005BB58D    call        dword ptr [ecx-4]
 005BB590    mov         eax,dword ptr [ebp-4]
 005BB593    mov         dl,byte ptr [eax+0C]
 005BB596    mov         eax,dword ptr [ebp-4]
 005BB599    call        005BB804
 005BB59E    mov         eax,dword ptr [ebp-4]
 005BB5A1    xor         edx,edx
 005BB5A3    mov         dword ptr [eax+8],edx
 005BB5A6    pop         ecx
 005BB5A7    pop         ebp
 005BB5A8    ret
*}
end;

//005BB5AC
{*procedure sub_005BB5AC(?:TSparseList; ?:?);
begin
 005BB5AC    push        ebp
 005BB5AD    mov         ebp,esp
 005BB5AF    add         esp,0FFFFFFF0
 005BB5B2    mov         dword ptr [ebp-8],edx
 005BB5B5    mov         dword ptr [ebp-4],eax
 005BB5B8    cmp         dword ptr [ebp-8],0
>005BB5BC    jl          005BB61E
 005BB5BE    mov         eax,dword ptr [ebp-8]
 005BB5C1    mov         edx,dword ptr [ebp-4]
 005BB5C4    cmp         eax,dword ptr [edx+8]
>005BB5C7    jge         005BB61E
 005BB5C9    mov         eax,dword ptr [ebp-8]
 005BB5CC    mov         edx,dword ptr [ebp-4]
 005BB5CF    mov         edx,dword ptr [edx+8]
 005BB5D2    dec         edx
 005BB5D3    sub         edx,eax
>005BB5D5    jl          005BB605
 005BB5D7    inc         edx
 005BB5D8    mov         dword ptr [ebp-10],edx
 005BB5DB    mov         dword ptr [ebp-0C],eax
 005BB5DE    mov         edx,dword ptr [ebp-0C]
 005BB5E1    inc         edx
 005BB5E2    mov         eax,dword ptr [ebp-4]
 005BB5E5    mov         eax,dword ptr [eax+4]
 005BB5E8    call        005BB240
 005BB5ED    mov         ecx,eax
 005BB5EF    mov         edx,dword ptr [ebp-0C]
 005BB5F2    mov         eax,dword ptr [ebp-4]
 005BB5F5    mov         eax,dword ptr [eax+4]
 005BB5F8    call        005BB3A4
 005BB5FD    inc         dword ptr [ebp-0C]
 005BB600    dec         dword ptr [ebp-10]
>005BB603    jne         005BB5DE
 005BB605    xor         ecx,ecx
 005BB607    mov         eax,dword ptr [ebp-4]
 005BB60A    mov         edx,dword ptr [eax+8]
 005BB60D    mov         eax,dword ptr [ebp-4]
 005BB610    mov         eax,dword ptr [eax+4]
 005BB613    call        005BB3A4
 005BB618    mov         eax,dword ptr [ebp-4]
 005BB61B    dec         dword ptr [eax+8]
 005BB61E    mov         esp,ebp
 005BB620    pop         ebp
 005BB621    ret
end;*}

//005BB624
{*procedure sub_005BB624(?:TSparseList; ?:?; ?:?);
begin
 005BB624    push        ebp
 005BB625    mov         ebp,esp
 005BB627    add         esp,0FFFFFFF0
 005BB62A    mov         dword ptr [ebp-0C],ecx
 005BB62D    mov         dword ptr [ebp-8],edx
 005BB630    mov         dword ptr [ebp-4],eax
 005BB633    mov         edx,dword ptr [ebp-8]
 005BB636    mov         eax,dword ptr [ebp-4]
 005BB639    call        005BB678
 005BB63E    mov         dword ptr [ebp-10],eax
 005BB641    mov         edx,dword ptr [ebp-0C]
 005BB644    mov         eax,dword ptr [ebp-4]
 005BB647    call        005BB678
 005BB64C    mov         ecx,eax
 005BB64E    mov         edx,dword ptr [ebp-8]
 005BB651    mov         eax,dword ptr [ebp-4]
 005BB654    call        005BB834
 005BB659    mov         ecx,dword ptr [ebp-10]
 005BB65C    mov         edx,dword ptr [ebp-0C]
 005BB65F    mov         eax,dword ptr [ebp-4]
 005BB662    call        005BB834
 005BB667    mov         esp,ebp
 005BB669    pop         ebp
 005BB66A    ret
end;*}

//005BB66C
function TSparseList.ForAll(ApplyFunction:Pointer):Integer;
begin
{*
 005BB66C    mov         eax,dword ptr [eax+4]
>005BB66F    jmp         TSparsePointerArray.ForAll
 005BB674    ret
*}
end;

//005BB678
{*function sub_005BB678(?:TSparseList; ?:?):?;
begin
 005BB678    push        ebp
 005BB679    mov         ebp,esp
 005BB67B    add         esp,0FFFFFFF0
 005BB67E    xor         ecx,ecx
 005BB680    mov         dword ptr [ebp-10],ecx
 005BB683    mov         dword ptr [ebp-8],edx
 005BB686    mov         dword ptr [ebp-4],eax
 005BB689    xor         eax,eax
 005BB68B    push        ebp
 005BB68C    push        5BB6E1
 005BB691    push        dword ptr fs:[eax]
 005BB694    mov         dword ptr fs:[eax],esp
 005BB697    cmp         dword ptr [ebp-8],0
>005BB69B    jge         005BB6BA
 005BB69D    lea         edx,[ebp-10]
 005BB6A0    mov         eax,[006EA0AC];^gvar_0065504C
 005BB6A5    call        LoadResString
 005BB6AA    mov         edx,dword ptr [ebp-10]
 005BB6AD    mov         ecx,dword ptr [ebp-8]
 005BB6B0    mov         eax,[006422A4];TList
 005BB6B5    call        00644F20
 005BB6BA    mov         edx,dword ptr [ebp-8]
 005BB6BD    mov         eax,dword ptr [ebp-4]
 005BB6C0    mov         eax,dword ptr [eax+4]
 005BB6C3    call        005BB240
 005BB6C8    mov         dword ptr [ebp-0C],eax
 005BB6CB    xor         eax,eax
 005BB6CD    pop         edx
 005BB6CE    pop         ecx
 005BB6CF    pop         ecx
 005BB6D0    mov         dword ptr fs:[eax],edx
 005BB6D3    push        5BB6E8
 005BB6D8    lea         eax,[ebp-10]
 005BB6DB    call        @LStrClr
 005BB6E0    ret
>005BB6E1    jmp         @HandleFinally
>005BB6E6    jmp         005BB6D8
 005BB6E8    mov         eax,dword ptr [ebp-0C]
 005BB6EB    mov         esp,ebp
 005BB6ED    pop         ebp
 005BB6EE    ret
end;*}

//005BB6F0
{*procedure sub_005BB6F0(?:TSparseList; ?:?; ?:?);
begin
 005BB6F0    push        ebp
 005BB6F1    mov         ebp,esp
 005BB6F3    add         esp,0FFFFFFEC
 005BB6F6    push        ebx
 005BB6F7    xor         ebx,ebx
 005BB6F9    mov         dword ptr [ebp-14],ebx
 005BB6FC    mov         dword ptr [ebp-0C],ecx
 005BB6FF    mov         dword ptr [ebp-8],edx
 005BB702    mov         dword ptr [ebp-4],eax
 005BB705    xor         eax,eax
 005BB707    push        ebp
 005BB708    push        5BB7B2
 005BB70D    push        dword ptr fs:[eax]
 005BB710    mov         dword ptr fs:[eax],esp
 005BB713    cmp         dword ptr [ebp-8],0
>005BB717    jge         005BB736
 005BB719    lea         edx,[ebp-14]
 005BB71C    mov         eax,[006EA0AC];^gvar_0065504C
 005BB721    call        LoadResString
 005BB726    mov         edx,dword ptr [ebp-14]
 005BB729    mov         ecx,dword ptr [ebp-8]
 005BB72C    mov         eax,[006422A4];TList
 005BB731    call        00644F20
 005BB736    mov         eax,dword ptr [ebp-4]
 005BB739    mov         eax,dword ptr [eax+8]
 005BB73C    mov         dword ptr [ebp-10],eax
 005BB73F    mov         eax,dword ptr [ebp-10]
 005BB742    cmp         eax,dword ptr [ebp-8]
>005BB745    jle         005BB771
 005BB747    mov         edx,dword ptr [ebp-10]
 005BB74A    dec         edx
 005BB74B    mov         eax,dword ptr [ebp-4]
 005BB74E    mov         eax,dword ptr [eax+4]
 005BB751    call        005BB240
 005BB756    mov         ecx,eax
 005BB758    mov         edx,dword ptr [ebp-10]
 005BB75B    mov         eax,dword ptr [ebp-4]
 005BB75E    mov         eax,dword ptr [eax+4]
 005BB761    call        005BB3A4
 005BB766    dec         dword ptr [ebp-10]
 005BB769    mov         eax,dword ptr [ebp-10]
 005BB76C    cmp         eax,dword ptr [ebp-8]
>005BB76F    jg          005BB747
 005BB771    mov         ecx,dword ptr [ebp-0C]
 005BB774    mov         edx,dword ptr [ebp-8]
 005BB777    mov         eax,dword ptr [ebp-4]
 005BB77A    mov         eax,dword ptr [eax+4]
 005BB77D    call        005BB3A4
 005BB782    mov         eax,dword ptr [ebp-8]
 005BB785    mov         edx,dword ptr [ebp-4]
 005BB788    cmp         eax,dword ptr [edx+8]
>005BB78B    jle         005BB796
 005BB78D    mov         eax,dword ptr [ebp-8]
 005BB790    mov         edx,dword ptr [ebp-4]
 005BB793    mov         dword ptr [edx+8],eax
 005BB796    mov         eax,dword ptr [ebp-4]
 005BB799    inc         dword ptr [eax+8]
 005BB79C    xor         eax,eax
 005BB79E    pop         edx
 005BB79F    pop         ecx
 005BB7A0    pop         ecx
 005BB7A1    mov         dword ptr fs:[eax],edx
 005BB7A4    push        5BB7B9
 005BB7A9    lea         eax,[ebp-14]
 005BB7AC    call        @LStrClr
 005BB7B1    ret
>005BB7B2    jmp         @HandleFinally
>005BB7B7    jmp         005BB7A9
 005BB7B9    pop         ebx
 005BB7BA    mov         esp,ebp
 005BB7BC    pop         ebp
 005BB7BD    ret
end;*}

//005BB7C0
{*procedure sub_005BB7C0(?:Pointer; ?:?; ?:?);
begin
 005BB7C0    push        ebp
 005BB7C1    mov         ebp,esp
 005BB7C3    add         esp,0FFFFFFF0
 005BB7C6    mov         dword ptr [ebp-0C],ecx
 005BB7C9    mov         dword ptr [ebp-8],edx
 005BB7CC    mov         dword ptr [ebp-4],eax
 005BB7CF    mov         eax,dword ptr [ebp-8]
 005BB7D2    cmp         eax,dword ptr [ebp-0C]
>005BB7D5    je          005BB7FE
 005BB7D7    mov         edx,dword ptr [ebp-8]
 005BB7DA    mov         eax,dword ptr [ebp-4]
 005BB7DD    call        005BB678
 005BB7E2    mov         dword ptr [ebp-10],eax
 005BB7E5    mov         edx,dword ptr [ebp-8]
 005BB7E8    mov         eax,dword ptr [ebp-4]
 005BB7EB    call        005BB5AC
 005BB7F0    mov         ecx,dword ptr [ebp-10]
 005BB7F3    mov         edx,dword ptr [ebp-0C]
 005BB7F6    mov         eax,dword ptr [ebp-4]
 005BB7F9    call        005BB6F0
 005BB7FE    mov         esp,ebp
 005BB800    pop         ebp
 005BB801    ret
end;*}

//005BB804
{*procedure sub_005BB804(?:?; ?:?);
begin
 005BB804    push        ebp
 005BB805    mov         ebp,esp
 005BB807    add         esp,0FFFFFFF8
 005BB80A    mov         byte ptr [ebp-5],dl
 005BB80D    mov         dword ptr [ebp-4],eax
 005BB810    mov         al,byte ptr [ebp-5]
 005BB813    mov         edx,dword ptr [ebp-4]
 005BB816    mov         byte ptr [edx+0C],al
 005BB819    mov         cl,byte ptr [ebp-5]
 005BB81C    mov         dl,1
 005BB81E    mov         eax,[005BAEB8];TSparsePointerArray
 005BB823    call        TSparsePointerArray.Create;TSparsePointerArray.Create
 005BB828    mov         edx,dword ptr [ebp-4]
 005BB82B    mov         dword ptr [edx+4],eax
 005BB82E    pop         ecx
 005BB82F    pop         ecx
 005BB830    pop         ebp
 005BB831    ret
end;*}

//005BB834
{*procedure sub_005BB834(?:TSparseList; ?:?; ?:TStrings);
begin
 005BB834    push        ebp
 005BB835    mov         ebp,esp
 005BB837    add         esp,0FFFFFFF0
 005BB83A    push        ebx
 005BB83B    xor         ebx,ebx
 005BB83D    mov         dword ptr [ebp-10],ebx
 005BB840    mov         dword ptr [ebp-0C],ecx
 005BB843    mov         dword ptr [ebp-8],edx
 005BB846    mov         dword ptr [ebp-4],eax
 005BB849    xor         eax,eax
 005BB84B    push        ebp
 005BB84C    push        5BB8B1
 005BB851    push        dword ptr fs:[eax]
 005BB854    mov         dword ptr fs:[eax],esp
 005BB857    cmp         dword ptr [ebp-8],0
>005BB85B    jge         005BB87A
 005BB85D    lea         edx,[ebp-10]
 005BB860    mov         eax,[006EA0AC];^gvar_0065504C
 005BB865    call        LoadResString
 005BB86A    mov         edx,dword ptr [ebp-10]
 005BB86D    mov         ecx,dword ptr [ebp-8]
 005BB870    mov         eax,[006422A4];TList
 005BB875    call        00644F20
 005BB87A    mov         ecx,dword ptr [ebp-0C]
 005BB87D    mov         edx,dword ptr [ebp-8]
 005BB880    mov         eax,dword ptr [ebp-4]
 005BB883    mov         eax,dword ptr [eax+4]
 005BB886    call        005BB3A4
 005BB88B    mov         eax,dword ptr [ebp-4]
 005BB88E    mov         eax,dword ptr [eax+4]
 005BB891    mov         eax,dword ptr [eax+10]
 005BB894    inc         eax
 005BB895    mov         edx,dword ptr [ebp-4]
 005BB898    mov         dword ptr [edx+8],eax
 005BB89B    xor         eax,eax
 005BB89D    pop         edx
 005BB89E    pop         ecx
 005BB89F    pop         ecx
 005BB8A0    mov         dword ptr fs:[eax],edx
 005BB8A3    push        5BB8B8
 005BB8A8    lea         eax,[ebp-10]
 005BB8AB    call        @LStrClr
 005BB8B0    ret
>005BB8B1    jmp         @HandleFinally
>005BB8B6    jmp         005BB8A8
 005BB8B8    pop         ebx
 005BB8B9    mov         esp,ebp
 005BB8BB    pop         ebp
 005BB8BC    ret
end;*}

//005BB8C0
constructor TStringSparseList.Create;
begin
{*
 005BB8C0    push        ebp
 005BB8C1    mov         ebp,esp
 005BB8C3    add         esp,0FFFFFFF8
 005BB8C6    test        dl,dl
>005BB8C8    je          005BB8D2
 005BB8CA    add         esp,0FFFFFFF0
 005BB8CD    call        @ClassCreate
 005BB8D2    mov         byte ptr [ebp-6],cl
 005BB8D5    mov         byte ptr [ebp-5],dl
 005BB8D8    mov         dword ptr [ebp-4],eax
 005BB8DB    xor         edx,edx
 005BB8DD    mov         eax,dword ptr [ebp-4]
 005BB8E0    call        TObject.Create
 005BB8E5    mov         cl,byte ptr [ebp-6]
 005BB8E8    mov         dl,1
 005BB8EA    mov         eax,[005BAF18];TSparseList
 005BB8EF    call        TSparseList.Create;TSparseList.Create
 005BB8F4    mov         edx,dword ptr [ebp-4]
 005BB8F7    mov         dword ptr [edx+10],eax
 005BB8FA    mov         eax,dword ptr [ebp-4]
 005BB8FD    cmp         byte ptr [ebp-5],0
>005BB901    je          005BB912
 005BB903    call        @AfterConstruction
 005BB908    pop         dword ptr fs:[0]
 005BB90F    add         esp,0C
 005BB912    mov         eax,dword ptr [ebp-4]
 005BB915    pop         ecx
 005BB916    pop         ecx
 005BB917    pop         ebp
 005BB918    ret
*}
end;

//005BB91C
destructor TStringSparseList.Destroy;
begin
{*
 005BB91C    push        ebp
 005BB91D    mov         ebp,esp
 005BB91F    add         esp,0FFFFFFF8
 005BB922    call        @BeforeDestruction
 005BB927    mov         byte ptr [ebp-5],dl
 005BB92A    mov         dword ptr [ebp-4],eax
 005BB92D    mov         eax,dword ptr [ebp-4]
 005BB930    cmp         dword ptr [eax+10],0;TStringSparseList.FList:TSparseList
>005BB934    je          005BB94B
 005BB936    mov         eax,dword ptr [ebp-4]
 005BB939    mov         edx,dword ptr [eax]
 005BB93B    call        dword ptr [edx+44];TStringSparseList.Clear
 005BB93E    mov         eax,dword ptr [ebp-4]
 005BB941    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BB944    mov         dl,1
 005BB946    mov         ecx,dword ptr [eax]
 005BB948    call        dword ptr [ecx-4]
 005BB94B    cmp         byte ptr [ebp-5],0
>005BB94F    jle         005BB959
 005BB951    mov         eax,dword ptr [ebp-4]
 005BB954    call        @ClassDestroy
 005BB959    pop         ecx
 005BB95A    pop         ecx
 005BB95B    pop         ebp
 005BB95C    ret
*}
end;

//005BBA78
procedure TStringSparseList.DefineProperties(Filer:TFiler);
begin
{*
 005BBA78    push        ebp
 005BBA79    mov         ebp,esp
 005BBA7B    add         esp,0FFFFFFF8
 005BBA7E    push        ebx
 005BBA7F    mov         dword ptr [ebp-8],edx
 005BBA82    mov         dword ptr [ebp-4],eax
 005BBA85    mov         eax,dword ptr [ebp-4]
 005BBA88    push        eax
 005BBA89    push        5BB960
 005BBA8E    mov         eax,dword ptr [ebp-4]
 005BBA91    push        eax
 005BBA92    push        5BBA38
 005BBA97    mov         cl,1
 005BBA99    mov         edx,5BBAB4;'List'
 005BBA9E    mov         eax,dword ptr [ebp-8]
 005BBAA1    mov         ebx,dword ptr [eax]
 005BBAA3    call        dword ptr [ebx+4];@AbstractError
 005BBAA6    pop         ebx
 005BBAA7    pop         ecx
 005BBAA8    pop         ecx
 005BBAA9    pop         ebp
 005BBAAA    ret
*}
end;

//005BBABC
{*procedure sub_005BBABC(?:?; ?:?);
begin
 005BBABC    push        ebp
 005BBABD    mov         ebp,esp
 005BBABF    add         esp,0FFFFFFF0
 005BBAC2    mov         dword ptr [ebp-0C],ecx
 005BBAC5    mov         dword ptr [ebp-8],edx
 005BBAC8    mov         dword ptr [ebp-4],eax
 005BBACB    mov         edx,dword ptr [ebp-8]
 005BBACE    mov         eax,dword ptr [ebp-4]
 005BBAD1    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBAD4    call        005BB678
 005BBAD9    mov         dword ptr [ebp-10],eax
 005BBADC    cmp         dword ptr [ebp-10],0
>005BBAE0    jne         005BBAEC
 005BBAE2    mov         eax,dword ptr [ebp-0C]
 005BBAE5    call        @LStrClr
>005BBAEA    jmp         005BBAFA
 005BBAEC    mov         eax,dword ptr [ebp-0C]
 005BBAEF    mov         edx,dword ptr [ebp-10]
 005BBAF2    mov         edx,dword ptr [edx+4]
 005BBAF5    call        @LStrAsg
 005BBAFA    mov         esp,ebp
 005BBAFC    pop         ebp
 005BBAFD    ret
end;*}

//005BBB00
{*function sub_005BBB00:?;
begin
 005BBB00    push        ebp
 005BBB01    mov         ebp,esp
 005BBB03    add         esp,0FFFFFFF8
 005BBB06    mov         dword ptr [ebp-4],eax
 005BBB09    mov         eax,dword ptr [ebp-4]
 005BBB0C    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBB0F    mov         eax,dword ptr [eax+8];TSparseList.FCount:Integer
 005BBB12    mov         dword ptr [ebp-8],eax
 005BBB15    mov         eax,dword ptr [ebp-8]
 005BBB18    pop         ecx
 005BBB19    pop         ecx
 005BBB1A    pop         ebp
 005BBB1B    ret
end;*}

//005BBB1C
{*function sub_005BBB1C(?:?):?;
begin
 005BBB1C    push        ebp
 005BBB1D    mov         ebp,esp
 005BBB1F    add         esp,0FFFFFFF0
 005BBB22    mov         dword ptr [ebp-8],edx
 005BBB25    mov         dword ptr [ebp-4],eax
 005BBB28    mov         edx,dword ptr [ebp-8]
 005BBB2B    mov         eax,dword ptr [ebp-4]
 005BBB2E    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBB31    call        005BB678
 005BBB36    mov         dword ptr [ebp-10],eax
 005BBB39    cmp         dword ptr [ebp-10],0
>005BBB3D    jne         005BBB46
 005BBB3F    xor         eax,eax
 005BBB41    mov         dword ptr [ebp-0C],eax
>005BBB44    jmp         005BBB4E
 005BBB46    mov         eax,dword ptr [ebp-10]
 005BBB49    mov         eax,dword ptr [eax]
 005BBB4B    mov         dword ptr [ebp-0C],eax
 005BBB4E    mov         eax,dword ptr [ebp-0C]
 005BBB51    mov         esp,ebp
 005BBB53    pop         ebp
 005BBB54    ret
end;*}

//005BBB58
{*procedure sub_005BBB58(?:?; ?:?);
begin
 005BBB58    push        ebp
 005BBB59    mov         ebp,esp
 005BBB5B    add         esp,0FFFFFFEC
 005BBB5E    mov         dword ptr [ebp-0C],ecx
 005BBB61    mov         dword ptr [ebp-8],edx
 005BBB64    mov         dword ptr [ebp-4],eax
 005BBB67    mov         edx,dword ptr [ebp-8]
 005BBB6A    mov         eax,dword ptr [ebp-4]
 005BBB6D    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBB70    call        005BB678
 005BBB75    mov         dword ptr [ebp-10],eax
 005BBB78    cmp         dword ptr [ebp-10],0
>005BBB7C    jne         005BBB85
 005BBB7E    xor         eax,eax
 005BBB80    mov         dword ptr [ebp-14],eax
>005BBB83    jmp         005BBB8D
 005BBB85    mov         eax,dword ptr [ebp-10]
 005BBB88    mov         eax,dword ptr [eax]
 005BBB8A    mov         dword ptr [ebp-14],eax
 005BBB8D    cmp         dword ptr [ebp-0C],0
>005BBB91    jne         005BBBAB
 005BBB93    cmp         dword ptr [ebp-14],0
>005BBB97    jne         005BBBAB
 005BBB99    xor         ecx,ecx
 005BBB9B    mov         edx,dword ptr [ebp-8]
 005BBB9E    mov         eax,dword ptr [ebp-4]
 005BBBA1    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBBA4    call        005BB834
>005BBBA9    jmp         005BBBC6
 005BBBAB    mov         edx,dword ptr [ebp-14]
 005BBBAE    mov         eax,dword ptr [ebp-0C]
 005BBBB1    call        005BAE64
 005BBBB6    mov         ecx,eax
 005BBBB8    mov         edx,dword ptr [ebp-8]
 005BBBBB    mov         eax,dword ptr [ebp-4]
 005BBBBE    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBBC1    call        005BB834
 005BBBC6    cmp         dword ptr [ebp-10],0
>005BBBCA    je          005BBBD4
 005BBBCC    mov         eax,dword ptr [ebp-10]
 005BBBCF    call        005BAEA0
 005BBBD4    mov         eax,dword ptr [ebp-4]
 005BBBD7    call        005BBC3C
 005BBBDC    mov         esp,ebp
 005BBBDE    pop         ebp
 005BBBDF    ret
end;*}

//005BBBE0
{*procedure sub_005BBBE0(?:?; ?:?);
begin
 005BBBE0    push        ebp
 005BBBE1    mov         ebp,esp
 005BBBE3    add         esp,0FFFFFFF0
 005BBBE6    mov         dword ptr [ebp-0C],ecx
 005BBBE9    mov         dword ptr [ebp-8],edx
 005BBBEC    mov         dword ptr [ebp-4],eax
 005BBBEF    mov         edx,dword ptr [ebp-8]
 005BBBF2    mov         eax,dword ptr [ebp-4]
 005BBBF5    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBBF8    call        005BB678
 005BBBFD    mov         dword ptr [ebp-10],eax
 005BBC00    cmp         dword ptr [ebp-10],0
>005BBC04    je          005BBC10
 005BBC06    mov         eax,dword ptr [ebp-0C]
 005BBC09    mov         edx,dword ptr [ebp-10]
 005BBC0C    mov         dword ptr [edx],eax
>005BBC0E    jmp         005BBC30
 005BBC10    cmp         dword ptr [ebp-0C],0
>005BBC14    je          005BBC30
 005BBC16    mov         edx,dword ptr [ebp-0C]
 005BBC19    xor         eax,eax
 005BBC1B    call        005BAE64
 005BBC20    mov         ecx,eax
 005BBC22    mov         edx,dword ptr [ebp-8]
 005BBC25    mov         eax,dword ptr [ebp-4]
 005BBC28    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBC2B    call        005BB834
 005BBC30    mov         eax,dword ptr [ebp-4]
 005BBC33    call        005BBC3C
 005BBC38    mov         esp,ebp
 005BBC3A    pop         ebp
 005BBC3B    ret
end;*}

//005BBC3C
procedure sub_005BBC3C(?:TStringSparseList);
begin
{*
 005BBC3C    push        ebp
 005BBC3D    mov         ebp,esp
 005BBC3F    push        ecx
 005BBC40    push        ebx
 005BBC41    mov         dword ptr [ebp-4],eax
 005BBC44    mov         eax,dword ptr [ebp-4]
 005BBC47    cmp         word ptr [eax+1A],0;TStringSparseList.?f1A:word
>005BBC4C    je          005BBC5A
 005BBC4E    mov         ebx,dword ptr [ebp-4]
 005BBC51    mov         edx,dword ptr [ebp-4]
 005BBC54    mov         eax,dword ptr [ebx+1C];TStringSparseList.?f1C:dword
 005BBC57    call        dword ptr [ebx+18];TStringSparseList.FOnChange
 005BBC5A    pop         ebx
 005BBC5B    pop         ecx
 005BBC5C    pop         ebp
 005BBC5D    ret
*}
end;

//005BBC60
{*procedure sub_005BBC60(?:?);
begin
 005BBC60    push        ebp
 005BBC61    mov         ebp,esp
 005BBC63    add         esp,0FFFFFFF4
 005BBC66    mov         dword ptr [ebp-8],edx
 005BBC69    mov         dword ptr [ebp-4],eax
 005BBC6C    mov         edx,dword ptr [ebp-8]
 005BBC6F    mov         eax,dword ptr [ebp-4]
 005BBC72    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBC75    call        005BB678
 005BBC7A    mov         dword ptr [ebp-0C],eax
 005BBC7D    cmp         dword ptr [ebp-0C],0
>005BBC81    je          005BBC8B
 005BBC83    mov         eax,dword ptr [ebp-0C]
 005BBC86    call        005BAEA0
 005BBC8B    mov         edx,dword ptr [ebp-8]
 005BBC8E    mov         eax,dword ptr [ebp-4]
 005BBC91    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBC94    call        005BB5AC
 005BBC99    mov         eax,dword ptr [ebp-4]
 005BBC9C    call        005BBC3C
 005BBCA1    mov         esp,ebp
 005BBCA3    pop         ebp
 005BBCA4    ret
end;*}

//005BBCA8
{*procedure sub_005BBCA8(?:?; ?:?);
begin
 005BBCA8    push        ebp
 005BBCA9    mov         ebp,esp
 005BBCAB    add         esp,0FFFFFFF4
 005BBCAE    mov         dword ptr [ebp-0C],ecx
 005BBCB1    mov         dword ptr [ebp-8],edx
 005BBCB4    mov         dword ptr [ebp-4],eax
 005BBCB7    mov         ecx,dword ptr [ebp-0C]
 005BBCBA    mov         edx,dword ptr [ebp-8]
 005BBCBD    mov         eax,dword ptr [ebp-4]
 005BBCC0    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBCC3    call        005BB624
 005BBCC8    mov         esp,ebp
 005BBCCA    pop         ebp
 005BBCCB    ret
end;*}

//005BBCCC
{*procedure sub_005BBCCC(?:?; ?:?);
begin
 005BBCCC    push        ebp
 005BBCCD    mov         ebp,esp
 005BBCCF    add         esp,0FFFFFFF4
 005BBCD2    mov         dword ptr [ebp-0C],ecx
 005BBCD5    mov         dword ptr [ebp-8],edx
 005BBCD8    mov         dword ptr [ebp-4],eax
 005BBCDB    xor         edx,edx
 005BBCDD    mov         eax,dword ptr [ebp-0C]
 005BBCE0    call        005BAE64
 005BBCE5    mov         ecx,eax
 005BBCE7    mov         edx,dword ptr [ebp-8]
 005BBCEA    mov         eax,dword ptr [ebp-4]
 005BBCED    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBCF0    call        005BB6F0
 005BBCF5    mov         eax,dword ptr [ebp-4]
 005BBCF8    call        005BBC3C
 005BBCFD    mov         esp,ebp
 005BBCFF    pop         ebp
 005BBD00    ret
end;*}

//005BBD24
procedure TStringSparseList.Clear;
begin
{*
 005BBD24    push        ebp
 005BBD25    mov         ebp,esp
 005BBD27    push        ecx
 005BBD28    mov         dword ptr [ebp-4],eax
 005BBD2B    mov         edx,5BBD04
 005BBD30    mov         eax,dword ptr [ebp-4]
 005BBD33    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBD36    call        TSparseList.ForAll
 005BBD3B    mov         eax,dword ptr [ebp-4]
 005BBD3E    mov         eax,dword ptr [eax+10];TStringSparseList.FList:TSparseList
 005BBD41    call        005BB57C
 005BBD46    mov         eax,dword ptr [ebp-4]
 005BBD49    call        005BBC3C
 005BBD4E    pop         ecx
 005BBD4F    pop         ebp
 005BBD50    ret
*}
end;

//005BBD54
{*constructor TStringGridStrings.Create(?:?);
begin
 005BBD54    push        ebp
 005BBD55    mov         ebp,esp
 005BBD57    add         esp,0FFFFFFF4
 005BBD5A    test        dl,dl
>005BBD5C    je          005BBD66
 005BBD5E    add         esp,0FFFFFFF0
 005BBD61    call        @ClassCreate
 005BBD66    mov         dword ptr [ebp-0C],ecx
 005BBD69    mov         byte ptr [ebp-5],dl
 005BBD6C    mov         dword ptr [ebp-4],eax
 005BBD6F    xor         edx,edx
 005BBD71    mov         eax,dword ptr [ebp-4]
 005BBD74    call        TObject.Create
 005BBD79    mov         eax,dword ptr [ebp-4]
 005BBD7C    mov         edx,dword ptr [ebp-0C]
 005BBD7F    mov         dword ptr [eax+10],edx
 005BBD82    mov         eax,dword ptr [ebp-4]
 005BBD85    mov         edx,dword ptr [ebp+8]
 005BBD88    mov         dword ptr [eax+14],edx
 005BBD8B    mov         eax,dword ptr [ebp-4]
 005BBD8E    cmp         byte ptr [ebp-5],0
>005BBD92    je          005BBDA3
 005BBD94    call        @AfterConstruction
 005BBD99    pop         dword ptr fs:[0]
 005BBDA0    add         esp,0C
 005BBDA3    mov         eax,dword ptr [ebp-4]
 005BBDA6    mov         esp,ebp
 005BBDA8    pop         ebp
 005BBDA9    ret         4
end;*}

//005BBDAC
procedure TStringGridStrings.Assign(Source:TPersistent);
begin
{*
 005BBDAC    push        ebp
 005BBDAD    mov         ebp,esp
 005BBDAF    add         esp,0FFFFFFE8
 005BBDB2    push        ebx
 005BBDB3    xor         ecx,ecx
 005BBDB5    mov         dword ptr [ebp-18],ecx
 005BBDB8    mov         dword ptr [ebp-8],edx
 005BBDBB    mov         dword ptr [ebp-4],eax
 005BBDBE    xor         eax,eax
 005BBDC0    push        ebp
 005BBDC1    push        5BBEA9
 005BBDC6    push        dword ptr fs:[eax]
 005BBDC9    mov         dword ptr fs:[eax],esp
 005BBDCC    mov         eax,dword ptr [ebp-8]
 005BBDCF    mov         edx,dword ptr ds:[6427A4];TStrings
 005BBDD5    call        @IsClass
 005BBDDA    test        al,al
>005BBDDC    je          005BBE88
 005BBDE2    mov         eax,dword ptr [ebp-4]
 005BBDE5    call        TStrings.BeginUpdate
 005BBDEA    mov         eax,dword ptr [ebp-8]
 005BBDED    mov         edx,dword ptr [eax]
 005BBDEF    call        dword ptr [edx+14]
 005BBDF2    dec         eax
 005BBDF3    mov         dword ptr [ebp-10],eax
 005BBDF6    mov         eax,dword ptr [ebp-4]
 005BBDF9    mov         edx,dword ptr [eax]
 005BBDFB    call        dword ptr [edx+14];TStringGridStrings.sub_005BC144
 005BBDFE    cmp         eax,dword ptr [ebp-10]
>005BBE01    jg          005BBE0F
 005BBE03    mov         eax,dword ptr [ebp-4]
 005BBE06    mov         edx,dword ptr [eax]
 005BBE08    call        dword ptr [edx+14];TStringGridStrings.sub_005BC144
 005BBE0B    dec         eax
 005BBE0C    mov         dword ptr [ebp-10],eax
 005BBE0F    xor         eax,eax
 005BBE11    push        ebp
 005BBE12    push        5BBE81
 005BBE17    push        dword ptr fs:[eax]
 005BBE1A    mov         dword ptr fs:[eax],esp
 005BBE1D    mov         eax,dword ptr [ebp-10]
 005BBE20    test        eax,eax
>005BBE22    jl          005BBE6B
 005BBE24    inc         eax
 005BBE25    mov         dword ptr [ebp-14],eax
 005BBE28    mov         dword ptr [ebp-0C],0
 005BBE2F    lea         ecx,[ebp-18]
 005BBE32    mov         edx,dword ptr [ebp-0C]
 005BBE35    mov         eax,dword ptr [ebp-8]
 005BBE38    mov         ebx,dword ptr [eax]
 005BBE3A    call        dword ptr [ebx+0C]
 005BBE3D    mov         ecx,dword ptr [ebp-18]
 005BBE40    mov         edx,dword ptr [ebp-0C]
 005BBE43    mov         eax,dword ptr [ebp-4]
 005BBE46    mov         ebx,dword ptr [eax]
 005BBE48    call        dword ptr [ebx+20];TStringGridStrings.sub_005BC234
 005BBE4B    mov         edx,dword ptr [ebp-0C]
 005BBE4E    mov         eax,dword ptr [ebp-8]
 005BBE51    mov         ecx,dword ptr [eax]
 005BBE53    call        dword ptr [ecx+18]
 005BBE56    mov         ecx,eax
 005BBE58    mov         edx,dword ptr [ebp-0C]
 005BBE5B    mov         eax,dword ptr [ebp-4]
 005BBE5E    mov         ebx,dword ptr [eax]
 005BBE60    call        dword ptr [ebx+24];TStringGridStrings.sub_005BC270
 005BBE63    inc         dword ptr [ebp-0C]
 005BBE66    dec         dword ptr [ebp-14]
>005BBE69    jne         005BBE2F
 005BBE6B    xor         eax,eax
 005BBE6D    pop         edx
 005BBE6E    pop         ecx
 005BBE6F    pop         ecx
 005BBE70    mov         dword ptr fs:[eax],edx
 005BBE73    push        5BBE93
 005BBE78    mov         eax,dword ptr [ebp-4]
 005BBE7B    call        TStrings.EndUpdate
 005BBE80    ret
>005BBE81    jmp         @HandleFinally
>005BBE86    jmp         005BBE78
 005BBE88    mov         edx,dword ptr [ebp-8]
 005BBE8B    mov         eax,dword ptr [ebp-4]
 005BBE8E    call        TStrings.Assign
 005BBE93    xor         eax,eax
 005BBE95    pop         edx
 005BBE96    pop         ecx
 005BBE97    pop         ecx
 005BBE98    mov         dword ptr fs:[eax],edx
 005BBE9B    push        5BBEB0
 005BBEA0    lea         eax,[ebp-18]
 005BBEA3    call        @LStrClr
 005BBEA8    ret
>005BBEA9    jmp         @HandleFinally
>005BBEAE    jmp         005BBEA0
 005BBEB0    pop         ebx
 005BBEB1    mov         esp,ebp
 005BBEB3    pop         ebp
 005BBEB4    ret
*}
end;

//005BBEB8
{*procedure sub_005BBEB8(?:TStringGridStrings; ?:?; ?:?; ?:?);
begin
 005BBEB8    push        ebp
 005BBEB9    mov         ebp,esp
 005BBEBB    add         esp,0FFFFFFF4
 005BBEBE    mov         dword ptr [ebp-0C],ecx
 005BBEC1    mov         dword ptr [ebp-8],edx
 005BBEC4    mov         dword ptr [ebp-4],eax
 005BBEC7    mov         eax,dword ptr [ebp-4]
 005BBECA    cmp         dword ptr [eax+14],0
>005BBECE    jne         005BBEE4
 005BBED0    mov         eax,dword ptr [ebp-0C]
 005BBED3    mov         dword ptr [eax],0FFFFFFFF
 005BBED9    mov         eax,dword ptr [ebp+8]
 005BBEDC    mov         dword ptr [eax],0FFFFFFFF
>005BBEE2    jmp         005BBF19
 005BBEE4    mov         eax,dword ptr [ebp-4]
 005BBEE7    cmp         dword ptr [eax+14],0
>005BBEEB    jle         005BBF03
 005BBEED    mov         eax,dword ptr [ebp-0C]
 005BBEF0    mov         edx,dword ptr [ebp-8]
 005BBEF3    mov         dword ptr [eax],edx
 005BBEF5    mov         eax,dword ptr [ebp-4]
 005BBEF8    mov         eax,dword ptr [eax+14]
 005BBEFB    dec         eax
 005BBEFC    mov         edx,dword ptr [ebp+8]
 005BBEFF    mov         dword ptr [edx],eax
>005BBF01    jmp         005BBF19
 005BBF03    mov         eax,dword ptr [ebp-4]
 005BBF06    mov         eax,dword ptr [eax+14]
 005BBF09    neg         eax
 005BBF0B    dec         eax
 005BBF0C    mov         edx,dword ptr [ebp-0C]
 005BBF0F    mov         dword ptr [edx],eax
 005BBF11    mov         eax,dword ptr [ebp+8]
 005BBF14    mov         edx,dword ptr [ebp-8]
 005BBF17    mov         dword ptr [eax],edx
 005BBF19    mov         esp,ebp
 005BBF1B    pop         ebp
 005BBF1C    ret         4
end;*}

//005BBF20
{*function sub_005BBF20(?:?):?;
begin
 005BBF20    push        ebp
 005BBF21    mov         ebp,esp
 005BBF23    add         esp,0FFFFFFE8
 005BBF26    push        ebx
 005BBF27    xor         ecx,ecx
 005BBF29    mov         dword ptr [ebp-18],ecx
 005BBF2C    mov         dword ptr [ebp-8],edx
 005BBF2F    mov         dword ptr [ebp-4],eax
 005BBF32    xor         eax,eax
 005BBF34    push        ebp
 005BBF35    push        5BBFBF
 005BBF3A    push        dword ptr fs:[eax]
 005BBF3D    mov         dword ptr fs:[eax],esp
 005BBF40    mov         eax,dword ptr [ebp-4]
 005BBF43    mov         edx,dword ptr [eax]
 005BBF45    call        dword ptr [edx+14];TStringGridStrings.sub_005BC144
 005BBF48    dec         eax
 005BBF49    test        eax,eax
>005BBF4B    jl          005BBFA2
 005BBF4D    inc         eax
 005BBF4E    mov         dword ptr [ebp-14],eax
 005BBF51    mov         dword ptr [ebp-10],0
 005BBF58    lea         ecx,[ebp-18]
 005BBF5B    mov         edx,dword ptr [ebp-10]
 005BBF5E    mov         eax,dword ptr [ebp-4]
 005BBF61    mov         ebx,dword ptr [eax]
 005BBF63    call        dword ptr [ebx+0C];TStringGridStrings.sub_005BC0F8
 005BBF66    cmp         dword ptr [ebp-18],0
>005BBF6A    jne         005BBF9A
 005BBF6C    cmp         dword ptr [ebp-8],0
>005BBF70    jne         005BBF84
 005BBF72    mov         ecx,5BBFD8;' '
 005BBF77    mov         edx,dword ptr [ebp-10]
 005BBF7A    mov         eax,dword ptr [ebp-4]
 005BBF7D    mov         ebx,dword ptr [eax]
 005BBF7F    call        dword ptr [ebx+20];TStringGridStrings.sub_005BC234
>005BBF82    jmp         005BBF92
 005BBF84    mov         ecx,dword ptr [ebp-8]
 005BBF87    mov         edx,dword ptr [ebp-10]
 005BBF8A    mov         eax,dword ptr [ebp-4]
 005BBF8D    mov         ebx,dword ptr [eax]
 005BBF8F    call        dword ptr [ebx+20];TStringGridStrings.sub_005BC234
 005BBF92    mov         eax,dword ptr [ebp-10]
 005BBF95    mov         dword ptr [ebp-0C],eax
>005BBF98    jmp         005BBFA9
 005BBF9A    inc         dword ptr [ebp-10]
 005BBF9D    dec         dword ptr [ebp-14]
>005BBFA0    jne         005BBF58
 005BBFA2    mov         dword ptr [ebp-0C],0FFFFFFFF
 005BBFA9    xor         eax,eax
 005BBFAB    pop         edx
 005BBFAC    pop         ecx
 005BBFAD    pop         ecx
 005BBFAE    mov         dword ptr fs:[eax],edx
 005BBFB1    push        5BBFC6
 005BBFB6    lea         eax,[ebp-18]
 005BBFB9    call        @LStrClr
 005BBFBE    ret
>005BBFBF    jmp         @HandleFinally
>005BBFC4    jmp         005BBFB6
 005BBFC6    mov         eax,dword ptr [ebp-0C]
 005BBFC9    pop         ebx
 005BBFCA    mov         esp,ebp
 005BBFCC    pop         ebp
 005BBFCD    ret
end;*}

//005BC018
procedure TStringGridStrings.Clear;
begin
{*
 005BC018    push        ebp
 005BC019    mov         ebp,esp
 005BC01B    add         esp,0FFFFFFF4
 005BC01E    push        ebx
 005BC01F    mov         dword ptr [ebp-4],eax
 005BC022    mov         eax,dword ptr [ebp-4]
 005BC025    cmp         dword ptr [eax+14],0;TStringGridStrings.FIndex:Integer
>005BC029    jle         005BC05E
 005BC02B    mov         eax,dword ptr [ebp-4]
 005BC02E    mov         edx,dword ptr [eax+14];TStringGridStrings.FIndex:Integer
 005BC031    dec         edx
 005BC032    mov         eax,dword ptr [ebp-4]
 005BC035    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC038    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC03E    call        005BB678
 005BC043    mov         dword ptr [ebp-8],eax
 005BC046    cmp         dword ptr [ebp-8],0
>005BC04A    je          005BC09B
 005BC04C    mov         edx,5BBFDC
 005BC051    mov         eax,dword ptr [ebp-8]
 005BC054    mov         eax,dword ptr [eax+10]
 005BC057    call        TSparseList.ForAll
>005BC05C    jmp         005BC09B
 005BC05E    mov         eax,dword ptr [ebp-4]
 005BC061    cmp         dword ptr [eax+14],0;TStringGridStrings.FIndex:Integer
>005BC065    jge         005BC09B
 005BC067    mov         eax,dword ptr [ebp-4]
 005BC06A    mov         edx,dword ptr [eax]
 005BC06C    call        dword ptr [edx+14];TStringGridStrings.sub_005BC144
 005BC06F    dec         eax
 005BC070    cmp         eax,0
>005BC073    jl          005BC09B
 005BC075    mov         dword ptr [ebp-0C],eax
 005BC078    xor         ecx,ecx
 005BC07A    mov         edx,dword ptr [ebp-0C]
 005BC07D    mov         eax,dword ptr [ebp-4]
 005BC080    mov         ebx,dword ptr [eax]
 005BC082    call        dword ptr [ebx+24];TStringGridStrings.sub_005BC270
 005BC085    xor         ecx,ecx
 005BC087    mov         edx,dword ptr [ebp-0C]
 005BC08A    mov         eax,dword ptr [ebp-4]
 005BC08D    mov         ebx,dword ptr [eax]
 005BC08F    call        dword ptr [ebx+20];TStringGridStrings.sub_005BC234
 005BC092    dec         dword ptr [ebp-0C]
 005BC095    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005BC099    jne         005BC078
 005BC09B    pop         ebx
 005BC09C    mov         esp,ebp
 005BC09E    pop         ebp
 005BC09F    ret
*}
end;

//005BC0A0
{*procedure sub_005BC0A0(?:?);
begin
 005BC0A0    push        ebp
 005BC0A1    mov         ebp,esp
 005BC0A3    add         esp,0FFFFFFF4
 005BC0A6    xor         ecx,ecx
 005BC0A8    mov         dword ptr [ebp-0C],ecx
 005BC0AB    mov         dword ptr [ebp-8],edx
 005BC0AE    mov         dword ptr [ebp-4],eax
 005BC0B1    xor         eax,eax
 005BC0B3    push        ebp
 005BC0B4    push        5BC0EA
 005BC0B9    push        dword ptr fs:[eax]
 005BC0BC    mov         dword ptr fs:[eax],esp
 005BC0BF    lea         edx,[ebp-0C]
 005BC0C2    mov         eax,[006EA0A0];^gvar_00655034
 005BC0C7    call        LoadResString
 005BC0CC    mov         eax,dword ptr [ebp-0C]
 005BC0CF    call        005B30F8
 005BC0D4    xor         eax,eax
 005BC0D6    pop         edx
 005BC0D7    pop         ecx
 005BC0D8    pop         ecx
 005BC0D9    mov         dword ptr fs:[eax],edx
 005BC0DC    push        5BC0F1
 005BC0E1    lea         eax,[ebp-0C]
 005BC0E4    call        @LStrClr
 005BC0E9    ret
>005BC0EA    jmp         @HandleFinally
>005BC0EF    jmp         005BC0E1
 005BC0F1    mov         esp,ebp
 005BC0F3    pop         ebp
 005BC0F4    ret
end;*}

//005BC0F8
{*procedure sub_005BC0F8(?:?; ?:?);
begin
 005BC0F8    push        ebp
 005BC0F9    mov         ebp,esp
 005BC0FB    add         esp,0FFFFFFEC
 005BC0FE    mov         dword ptr [ebp-0C],ecx
 005BC101    mov         dword ptr [ebp-8],edx
 005BC104    mov         dword ptr [ebp-4],eax
 005BC107    lea         eax,[ebp-14]
 005BC10A    push        eax
 005BC10B    lea         ecx,[ebp-10]
 005BC10E    mov         edx,dword ptr [ebp-8]
 005BC111    mov         eax,dword ptr [ebp-4]
 005BC114    call        005BBEB8
 005BC119    cmp         dword ptr [ebp-10],0
>005BC11D    jge         005BC129
 005BC11F    mov         eax,dword ptr [ebp-0C]
 005BC122    call        @LStrClr
>005BC127    jmp         005BC13E
 005BC129    mov         eax,dword ptr [ebp-0C]
 005BC12C    push        eax
 005BC12D    mov         ecx,dword ptr [ebp-14]
 005BC130    mov         edx,dword ptr [ebp-10]
 005BC133    mov         eax,dword ptr [ebp-4]
 005BC136    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC139    call        TStringGrid.GetCells
 005BC13E    mov         esp,ebp
 005BC140    pop         ebp
 005BC141    ret
end;*}

//005BC144
{*function sub_005BC144:?;
begin
 005BC144    push        ebp
 005BC145    mov         ebp,esp
 005BC147    add         esp,0FFFFFFF8
 005BC14A    mov         dword ptr [ebp-4],eax
 005BC14D    mov         eax,dword ptr [ebp-4]
 005BC150    cmp         dword ptr [eax+14],0;TStringGridStrings.FIndex:Integer
>005BC154    jne         005BC15D
 005BC156    xor         eax,eax
 005BC158    mov         dword ptr [ebp-8],eax
>005BC15B    jmp         005BC186
 005BC15D    mov         eax,dword ptr [ebp-4]
 005BC160    cmp         dword ptr [eax+14],0;TStringGridStrings.FIndex:Integer
>005BC164    jle         005BC177
 005BC166    mov         eax,dword ptr [ebp-4]
 005BC169    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC16C    mov         eax,dword ptr [eax+21C];TStringGrid.FColCount:Longint
 005BC172    mov         dword ptr [ebp-8],eax
>005BC175    jmp         005BC186
 005BC177    mov         eax,dword ptr [ebp-4]
 005BC17A    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC17D    mov         eax,dword ptr [eax+24C];TStringGrid.FRowCount:Longint
 005BC183    mov         dword ptr [ebp-8],eax
 005BC186    mov         eax,dword ptr [ebp-8]
 005BC189    pop         ecx
 005BC18A    pop         ecx
 005BC18B    pop         ebp
 005BC18C    ret
end;*}

//005BC190
{*function sub_005BC190(?:?):?;
begin
 005BC190    push        ebp
 005BC191    mov         ebp,esp
 005BC193    add         esp,0FFFFFFEC
 005BC196    mov         dword ptr [ebp-8],edx
 005BC199    mov         dword ptr [ebp-4],eax
 005BC19C    lea         eax,[ebp-14]
 005BC19F    push        eax
 005BC1A0    lea         ecx,[ebp-10]
 005BC1A3    mov         edx,dword ptr [ebp-8]
 005BC1A6    mov         eax,dword ptr [ebp-4]
 005BC1A9    call        005BBEB8
 005BC1AE    cmp         dword ptr [ebp-10],0
>005BC1B2    jge         005BC1BB
 005BC1B4    xor         eax,eax
 005BC1B6    mov         dword ptr [ebp-0C],eax
>005BC1B9    jmp         005BC1CF
 005BC1BB    mov         ecx,dword ptr [ebp-14]
 005BC1BE    mov         edx,dword ptr [ebp-10]
 005BC1C1    mov         eax,dword ptr [ebp-4]
 005BC1C4    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC1C7    call        005BC920
 005BC1CC    mov         dword ptr [ebp-0C],eax
 005BC1CF    mov         eax,dword ptr [ebp-0C]
 005BC1D2    mov         esp,ebp
 005BC1D4    pop         ebp
 005BC1D5    ret
end;*}

//005BC1D8
{*procedure sub_005BC1D8(?:?; ?:?);
begin
 005BC1D8    push        ebp
 005BC1D9    mov         ebp,esp
 005BC1DB    add         esp,0FFFFFFF0
 005BC1DE    push        ebx
 005BC1DF    xor         ebx,ebx
 005BC1E1    mov         dword ptr [ebp-10],ebx
 005BC1E4    mov         dword ptr [ebp-0C],ecx
 005BC1E7    mov         dword ptr [ebp-8],edx
 005BC1EA    mov         dword ptr [ebp-4],eax
 005BC1ED    xor         eax,eax
 005BC1EF    push        ebp
 005BC1F0    push        5BC226
 005BC1F5    push        dword ptr fs:[eax]
 005BC1F8    mov         dword ptr fs:[eax],esp
 005BC1FB    lea         edx,[ebp-10]
 005BC1FE    mov         eax,[006EA0A0];^gvar_00655034
 005BC203    call        LoadResString
 005BC208    mov         eax,dword ptr [ebp-10]
 005BC20B    call        005B30F8
 005BC210    xor         eax,eax
 005BC212    pop         edx
 005BC213    pop         ecx
 005BC214    pop         ecx
 005BC215    mov         dword ptr fs:[eax],edx
 005BC218    push        5BC22D
 005BC21D    lea         eax,[ebp-10]
 005BC220    call        @LStrClr
 005BC225    ret
>005BC226    jmp         @HandleFinally
>005BC22B    jmp         005BC21D
 005BC22D    pop         ebx
 005BC22E    mov         esp,ebp
 005BC230    pop         ebp
 005BC231    ret
end;*}

//005BC234
{*procedure sub_005BC234(?:?; ?:?);
begin
 005BC234    push        ebp
 005BC235    mov         ebp,esp
 005BC237    add         esp,0FFFFFFEC
 005BC23A    mov         dword ptr [ebp-0C],ecx
 005BC23D    mov         dword ptr [ebp-8],edx
 005BC240    mov         dword ptr [ebp-4],eax
 005BC243    lea         eax,[ebp-14]
 005BC246    push        eax
 005BC247    lea         ecx,[ebp-10]
 005BC24A    mov         edx,dword ptr [ebp-8]
 005BC24D    mov         eax,dword ptr [ebp-4]
 005BC250    call        005BBEB8
 005BC255    mov         eax,dword ptr [ebp-0C]
 005BC258    push        eax
 005BC259    mov         ecx,dword ptr [ebp-14]
 005BC25C    mov         edx,dword ptr [ebp-10]
 005BC25F    mov         eax,dword ptr [ebp-4]
 005BC262    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC265    call        TStringGrid.SetCells
 005BC26A    mov         esp,ebp
 005BC26C    pop         ebp
 005BC26D    ret
end;*}

//005BC270
{*procedure sub_005BC270(?:?; ?:?);
begin
 005BC270    push        ebp
 005BC271    mov         ebp,esp
 005BC273    add         esp,0FFFFFFEC
 005BC276    mov         dword ptr [ebp-0C],ecx
 005BC279    mov         dword ptr [ebp-8],edx
 005BC27C    mov         dword ptr [ebp-4],eax
 005BC27F    lea         eax,[ebp-14]
 005BC282    push        eax
 005BC283    lea         ecx,[ebp-10]
 005BC286    mov         edx,dword ptr [ebp-8]
 005BC289    mov         eax,dword ptr [ebp-4]
 005BC28C    call        005BBEB8
 005BC291    mov         eax,dword ptr [ebp-0C]
 005BC294    push        eax
 005BC295    mov         ecx,dword ptr [ebp-14]
 005BC298    mov         edx,dword ptr [ebp-10]
 005BC29B    mov         eax,dword ptr [ebp-4]
 005BC29E    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC2A1    call        005BC9C0
 005BC2A6    mov         esp,ebp
 005BC2A8    pop         ebp
 005BC2A9    ret
end;*}

//005BC2AC
{*procedure sub_005BC2AC(?:?);
begin
 005BC2AC    push        ebp
 005BC2AD    mov         ebp,esp
 005BC2AF    add         esp,0FFFFFFF8
 005BC2B2    mov         byte ptr [ebp-5],dl
 005BC2B5    mov         dword ptr [ebp-4],eax
 005BC2B8    mov         dl,byte ptr [ebp-5]
 005BC2BB    mov         eax,dword ptr [ebp-4]
 005BC2BE    mov         eax,dword ptr [eax+10];TStringGridStrings.FGrid:TStringGrid
 005BC2C1    call        005BC734
 005BC2C6    pop         ecx
 005BC2C7    pop         ecx
 005BC2C8    pop         ebp
 005BC2C9    ret
end;*}

//005BC2CC
constructor TStringGrid.Create(AOwner:TComponent);
begin
{*
 005BC2CC    push        ebp
 005BC2CD    mov         ebp,esp
 005BC2CF    add         esp,0FFFFFFF4
 005BC2D2    test        dl,dl
>005BC2D4    je          005BC2DE
 005BC2D6    add         esp,0FFFFFFF0
 005BC2D9    call        @ClassCreate
 005BC2DE    mov         dword ptr [ebp-0C],ecx
 005BC2E1    mov         byte ptr [ebp-5],dl
 005BC2E4    mov         dword ptr [ebp-4],eax
 005BC2E7    mov         ecx,dword ptr [ebp-0C]
 005BC2EA    xor         edx,edx
 005BC2EC    mov         eax,dword ptr [ebp-4]
 005BC2EF    call        TCustomGrid.Create
 005BC2F4    mov         eax,dword ptr [ebp-4]
 005BC2F7    call        005BC688
 005BC2FC    mov         eax,dword ptr [ebp-4]
 005BC2FF    cmp         byte ptr [ebp-5],0
>005BC303    je          005BC314
 005BC305    call        @AfterConstruction
 005BC30A    pop         dword ptr fs:[0]
 005BC311    add         esp,0C
 005BC314    mov         eax,dword ptr [ebp-4]
 005BC317    mov         esp,ebp
 005BC319    pop         ebp
 005BC31A    ret
*}
end;

//005BC33C
destructor TStringGrid.Destroy;
begin
{*
 005BC33C    push        ebp
 005BC33D    mov         ebp,esp
 005BC33F    add         esp,0FFFFFFF8
 005BC342    call        @BeforeDestruction
 005BC347    mov         byte ptr [ebp-5],dl
 005BC34A    mov         dword ptr [ebp-4],eax
 005BC34D    mov         eax,dword ptr [ebp-4]
 005BC350    cmp         dword ptr [eax+2DC],0;TStringGrid.FRows:Pointer
>005BC357    je          005BC37A
 005BC359    mov         edx,5BC31C
 005BC35E    mov         eax,dword ptr [ebp-4]
 005BC361    mov         eax,dword ptr [eax+2DC];TStringGrid.FRows:Pointer
 005BC367    call        TSparseList.ForAll
 005BC36C    mov         eax,dword ptr [ebp-4]
 005BC36F    mov         eax,dword ptr [eax+2DC];TStringGrid.FRows:Pointer
 005BC375    call        TObject.Free
 005BC37A    mov         eax,dword ptr [ebp-4]
 005BC37D    cmp         dword ptr [eax+2E0],0;TStringGrid.FCols:Pointer
>005BC384    je          005BC3A7
 005BC386    mov         edx,5BC31C
 005BC38B    mov         eax,dword ptr [ebp-4]
 005BC38E    mov         eax,dword ptr [eax+2E0];TStringGrid.FCols:Pointer
 005BC394    call        TSparseList.ForAll
 005BC399    mov         eax,dword ptr [ebp-4]
 005BC39C    mov         eax,dword ptr [eax+2E0];TStringGrid.FCols:Pointer
 005BC3A2    call        TObject.Free
 005BC3A7    mov         eax,dword ptr [ebp-4]
 005BC3AA    cmp         dword ptr [eax+2D8],0;TStringGrid.FData:Pointer
>005BC3B1    je          005BC3D4
 005BC3B3    mov         edx,5BC31C
 005BC3B8    mov         eax,dword ptr [ebp-4]
 005BC3BB    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC3C1    call        TSparseList.ForAll
 005BC3C6    mov         eax,dword ptr [ebp-4]
 005BC3C9    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC3CF    call        TObject.Free
 005BC3D4    mov         dl,byte ptr [ebp-5]
 005BC3D7    and         dl,0FC
 005BC3DA    mov         eax,dword ptr [ebp-4]
 005BC3DD    call        TCustomGrid.Destroy
 005BC3E2    cmp         byte ptr [ebp-5],0
>005BC3E6    jle         005BC3F0
 005BC3E8    mov         eax,dword ptr [ebp-4]
 005BC3EB    call        @ClassDestroy
 005BC3F0    pop         ecx
 005BC3F1    pop         ecx
 005BC3F2    pop         ebp
 005BC3F3    ret
*}
end;

//005BC424
{*procedure TStringGrid.sub_005B4EE8(?:?; ?:?);
begin
 005BC424    push        ebp
 005BC425    mov         ebp,esp
 005BC427    add         esp,0FFFFFFF4
 005BC42A    mov         dword ptr [ebp-8],ecx
 005BC42D    mov         dword ptr [ebp-4],edx
 005BC430    mov         dword ptr [ebp-0C],eax
 005BC433    mov         edx,5BC3F4
 005BC438    mov         eax,dword ptr [ebp-0C]
 005BC43B    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC441    call        TSparseList.ForAll
 005BC446    mov         eax,dword ptr [ebp-0C]
 005BC449    mov         edx,dword ptr [eax]
 005BC44B    call        dword ptr [edx+7C];TWinControl.Invalidate
 005BC44E    mov         ecx,dword ptr [ebp-8]
 005BC451    mov         edx,dword ptr [ebp-4]
 005BC454    mov         eax,dword ptr [ebp-0C]
 005BC457    call        TCustomDrawGrid.sub_005B4EE8
 005BC45C    mov         esp,ebp
 005BC45E    pop         ebp
 005BC45F    ret
end;*}

//005BC460
{*procedure TStringGrid.sub_005B4FAC(?:?; ?:?);
begin
 005BC460    push        ebp
 005BC461    mov         ebp,esp
 005BC463    add         esp,0FFFFFFF4
 005BC466    mov         dword ptr [ebp-0C],ecx
 005BC469    mov         dword ptr [ebp-8],edx
 005BC46C    mov         dword ptr [ebp-4],eax
 005BC46F    mov         ecx,dword ptr [ebp-0C]
 005BC472    mov         edx,dword ptr [ebp-8]
 005BC475    mov         eax,dword ptr [ebp-4]
 005BC478    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC47E    call        005BB7C0
 005BC483    mov         eax,dword ptr [ebp-4]
 005BC486    mov         edx,dword ptr [eax]
 005BC488    call        dword ptr [edx+7C];TWinControl.Invalidate
 005BC48B    mov         ecx,dword ptr [ebp-0C]
 005BC48E    mov         edx,dword ptr [ebp-8]
 005BC491    mov         eax,dword ptr [ebp-4]
 005BC494    call        TCustomDrawGrid.sub_005B4FAC
 005BC499    mov         esp,ebp
 005BC49B    pop         ebp
 005BC49C    ret
end;*}

//005BC4A0
{*procedure TStringGrid.sub_005B4A1C(?:?; ?:?; ?:?);
begin
 005BC4A0    push        ebp
 005BC4A1    mov         ebp,esp
 005BC4A3    add         esp,0FFFFFFF4
 005BC4A6    push        ebx
 005BC4A7    mov         dword ptr [ebp-0C],ecx
 005BC4AA    mov         dword ptr [ebp-8],edx
 005BC4AD    mov         dword ptr [ebp-4],eax
 005BC4B0    mov         eax,dword ptr [ebp+8]
 005BC4B3    push        eax
 005BC4B4    mov         ecx,dword ptr [ebp-0C]
 005BC4B7    mov         edx,dword ptr [ebp-8]
 005BC4BA    mov         eax,dword ptr [ebp-4]
 005BC4BD    call        TStringGrid.GetCells
 005BC4C2    mov         eax,dword ptr [ebp-4]
 005BC4C5    cmp         word ptr [eax+2B2],0;TStringGrid.?f2B2:word
>005BC4CD    je          005BC4EC
 005BC4CF    mov         eax,dword ptr [ebp-0C]
 005BC4D2    push        eax
 005BC4D3    mov         eax,dword ptr [ebp+8]
 005BC4D6    push        eax
 005BC4D7    mov         ebx,dword ptr [ebp-4]
 005BC4DA    mov         ecx,dword ptr [ebp-8]
 005BC4DD    mov         edx,dword ptr [ebp-4]
 005BC4E0    mov         eax,dword ptr [ebx+2B4];TStringGrid.?f2B4:dword
 005BC4E6    call        dword ptr [ebx+2B0];TStringGrid.FOnGetEditText
 005BC4EC    pop         ebx
 005BC4ED    mov         esp,ebp
 005BC4EF    pop         ebp
 005BC4F0    ret         4
end;*}

//005BC4F4
procedure TStringGrid.SetEditText(ACol:Longint; ARow:Longint; const Value:AnsiString);
begin
{*
 005BC4F4    push        ebp
 005BC4F5    mov         ebp,esp
 005BC4F7    add         esp,0FFFFFFF0
 005BC4FA    push        ebx
 005BC4FB    xor         ebx,ebx
 005BC4FD    mov         dword ptr [ebp-10],ebx
 005BC500    mov         dword ptr [ebp-0C],ecx
 005BC503    mov         dword ptr [ebp-8],edx
 005BC506    mov         dword ptr [ebp-4],eax
 005BC509    xor         eax,eax
 005BC50B    push        ebp
 005BC50C    push        5BC5A3
 005BC511    push        dword ptr fs:[eax]
 005BC514    mov         dword ptr fs:[eax],esp
 005BC517    mov         eax,dword ptr [ebp-4]
 005BC51A    call        TStringGrid.DisableEditUpdate
 005BC51F    xor         eax,eax
 005BC521    push        ebp
 005BC522    push        5BC574
 005BC527    push        dword ptr fs:[eax]
 005BC52A    mov         dword ptr fs:[eax],esp
 005BC52D    lea         eax,[ebp-10]
 005BC530    push        eax
 005BC531    mov         ecx,dword ptr [ebp-0C]
 005BC534    mov         edx,dword ptr [ebp-8]
 005BC537    mov         eax,dword ptr [ebp-4]
 005BC53A    call        TStringGrid.GetCells
 005BC53F    mov         edx,dword ptr [ebp-10]
 005BC542    mov         eax,dword ptr [ebp+8]
 005BC545    call        @LStrCmp
>005BC54A    je          005BC55E
 005BC54C    mov         eax,dword ptr [ebp+8]
 005BC54F    push        eax
 005BC550    mov         ecx,dword ptr [ebp-0C]
 005BC553    mov         edx,dword ptr [ebp-8]
 005BC556    mov         eax,dword ptr [ebp-4]
 005BC559    call        TStringGrid.SetCells
 005BC55E    xor         eax,eax
 005BC560    pop         edx
 005BC561    pop         ecx
 005BC562    pop         ecx
 005BC563    mov         dword ptr fs:[eax],edx
 005BC566    push        5BC57B
 005BC56B    mov         eax,dword ptr [ebp-4]
 005BC56E    call        TStringGrid.EnableEditUpdate
 005BC573    ret
>005BC574    jmp         @HandleFinally
>005BC579    jmp         005BC56B
 005BC57B    mov         eax,dword ptr [ebp+8]
 005BC57E    push        eax
 005BC57F    mov         ecx,dword ptr [ebp-0C]
 005BC582    mov         edx,dword ptr [ebp-8]
 005BC585    mov         eax,dword ptr [ebp-4]
 005BC588    call        TCustomDrawGrid.SetEditText
 005BC58D    xor         eax,eax
 005BC58F    pop         edx
 005BC590    pop         ecx
 005BC591    pop         ecx
 005BC592    mov         dword ptr fs:[eax],edx
 005BC595    push        5BC5AA
 005BC59A    lea         eax,[ebp-10]
 005BC59D    call        @LStrClr
 005BC5A2    ret
>005BC5A3    jmp         @HandleFinally
>005BC5A8    jmp         005BC59A
 005BC5AA    pop         ebx
 005BC5AB    mov         esp,ebp
 005BC5AD    pop         ebp
 005BC5AE    ret         4
*}
end;

//005BC5B4
{*procedure TStringGrid.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);
begin
 005BC5B4    push        ebp
 005BC5B5    mov         ebp,esp
 005BC5B7    add         esp,0FFFFFFE0
 005BC5BA    push        ebx
 005BC5BB    push        esi
 005BC5BC    push        edi
 005BC5BD    xor         ebx,ebx
 005BC5BF    mov         dword ptr [ebp-20],ebx
 005BC5C2    mov         esi,dword ptr [ebp+0C]
 005BC5C5    lea         edi,[ebp-1C]
 005BC5C8    movs        dword ptr [edi],dword ptr [esi]
 005BC5C9    movs        dword ptr [edi],dword ptr [esi]
 005BC5CA    movs        dword ptr [edi],dword ptr [esi]
 005BC5CB    movs        dword ptr [edi],dword ptr [esi]
 005BC5CC    mov         dword ptr [ebp-0C],ecx
 005BC5CF    mov         dword ptr [ebp-8],edx
 005BC5D2    mov         dword ptr [ebp-4],eax
 005BC5D5    xor         eax,eax
 005BC5D7    push        ebp
 005BC5D8    push        5BC64F
 005BC5DD    push        dword ptr fs:[eax]
 005BC5E0    mov         dword ptr fs:[eax],esp
 005BC5E3    mov         eax,dword ptr [ebp-4]
 005BC5E6    cmp         byte ptr [eax+28C],0;TStringGrid.FDefaultDrawing:Boolean
>005BC5ED    je          005BC623
 005BC5EF    mov         eax,dword ptr [ebp-18]
 005BC5F2    add         eax,2
 005BC5F5    push        eax
 005BC5F6    lea         eax,[ebp-20]
 005BC5F9    push        eax
 005BC5FA    mov         ecx,dword ptr [ebp-0C]
 005BC5FD    mov         edx,dword ptr [ebp-8]
 005BC600    mov         eax,dword ptr [ebp-4]
 005BC603    call        TStringGrid.GetCells
 005BC608    mov         eax,dword ptr [ebp-20]
 005BC60B    push        eax
 005BC60C    mov         ecx,dword ptr [ebp-1C]
 005BC60F    add         ecx,2
 005BC612    lea         edx,[ebp-1C]
 005BC615    mov         eax,dword ptr [ebp-4]
 005BC618    mov         eax,dword ptr [eax+208];TStringGrid........................................................
 005BC61E    call        005C1648
 005BC623    lea         eax,[ebp-1C]
 005BC626    push        eax
 005BC627    mov         al,byte ptr [ebp+8]
 005BC62A    push        eax
 005BC62B    mov         ecx,dword ptr [ebp-0C]
 005BC62E    mov         edx,dword ptr [ebp-8]
 005BC631    mov         eax,dword ptr [ebp-4]
 005BC634    call        TCustomDrawGrid.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%
 005BC639    xor         eax,eax
 005BC63B    pop         edx
 005BC63C    pop         ecx
 005BC63D    pop         ecx
 005BC63E    mov         dword ptr fs:[eax],edx
 005BC641    push        5BC656
 005BC646    lea         eax,[ebp-20]
 005BC649    call        @LStrClr
 005BC64E    ret
>005BC64F    jmp         @HandleFinally
>005BC654    jmp         005BC646
 005BC656    pop         edi
 005BC657    pop         esi
 005BC658    pop         ebx
 005BC659    mov         esp,ebp
 005BC65B    pop         ebp
 005BC65C    ret         8
end;*}

//005BC660
procedure TStringGrid.DisableEditUpdate;
begin
{*
 005BC660    push        ebp
 005BC661    mov         ebp,esp
 005BC663    push        ecx
 005BC664    mov         dword ptr [ebp-4],eax
 005BC667    mov         eax,dword ptr [ebp-4]
 005BC66A    inc         dword ptr [eax+2E8]
 005BC670    pop         ecx
 005BC671    pop         ebp
 005BC672    ret
*}
end;

//005BC674
procedure TStringGrid.EnableEditUpdate;
begin
{*
 005BC674    push        ebp
 005BC675    mov         ebp,esp
 005BC677    push        ecx
 005BC678    mov         dword ptr [ebp-4],eax
 005BC67B    mov         eax,dword ptr [ebp-4]
 005BC67E    dec         dword ptr [eax+2E8]
 005BC684    pop         ecx
 005BC685    pop         ebp
 005BC686    ret
*}
end;

//005BC688
procedure sub_005BC688(?:TStringGrid);
begin
{*
 005BC688    push        ebp
 005BC689    mov         ebp,esp
 005BC68B    add         esp,0FFFFFFF8
 005BC68E    mov         dword ptr [ebp-4],eax
 005BC691    mov         eax,dword ptr [ebp-4]
 005BC694    cmp         dword ptr [eax+2E0],0;TStringGrid.FCols:Pointer
>005BC69B    jne         005BC6CE
 005BC69D    mov         eax,dword ptr [ebp-4]
 005BC6A0    cmp         dword ptr [eax+21C],200;TStringGrid.FColCount:Longint
>005BC6AA    jle         005BC6B2
 005BC6AC    mov         byte ptr [ebp-5],1
>005BC6B0    jmp         005BC6B6
 005BC6B2    mov         byte ptr [ebp-5],0
 005BC6B6    mov         cl,byte ptr [ebp-5]
 005BC6B9    mov         dl,1
 005BC6BB    mov         eax,[005BAF18];TSparseList
 005BC6C0    call        TSparseList.Create;TSparseList.Create
 005BC6C5    mov         edx,dword ptr [ebp-4]
 005BC6C8    mov         dword ptr [edx+2E0],eax;TStringGrid.FCols:Pointer
 005BC6CE    mov         eax,dword ptr [ebp-4]
 005BC6D1    cmp         dword ptr [eax+24C],100;TStringGrid.FRowCount:Longint
>005BC6DB    jle         005BC6E3
 005BC6DD    mov         byte ptr [ebp-5],1
>005BC6E1    jmp         005BC6E7
 005BC6E3    mov         byte ptr [ebp-5],0
 005BC6E7    mov         eax,dword ptr [ebp-4]
 005BC6EA    cmp         dword ptr [eax+2DC],0;TStringGrid.FRows:Pointer
>005BC6F1    jne         005BC70B
 005BC6F3    mov         cl,byte ptr [ebp-5]
 005BC6F6    mov         dl,1
 005BC6F8    mov         eax,[005BAF18];TSparseList
 005BC6FD    call        TSparseList.Create;TSparseList.Create
 005BC702    mov         edx,dword ptr [ebp-4]
 005BC705    mov         dword ptr [edx+2DC],eax;TStringGrid.FRows:Pointer
 005BC70B    mov         eax,dword ptr [ebp-4]
 005BC70E    cmp         dword ptr [eax+2D8],0;TStringGrid.FData:Pointer
>005BC715    jne         005BC72F
 005BC717    mov         cl,byte ptr [ebp-5]
 005BC71A    mov         dl,1
 005BC71C    mov         eax,[005BAF18];TSparseList
 005BC721    call        TSparseList.Create;TSparseList.Create
 005BC726    mov         edx,dword ptr [ebp-4]
 005BC729    mov         dword ptr [edx+2D8],eax;TStringGrid.FData:Pointer
 005BC72F    pop         ecx
 005BC730    pop         ecx
 005BC731    pop         ebp
 005BC732    ret
*}
end;

//005BC734
{*procedure sub_005BC734(?:TStringGrid; ?:?);
begin
 005BC734    push        ebp
 005BC735    mov         ebp,esp
 005BC737    add         esp,0FFFFFFF8
 005BC73A    mov         byte ptr [ebp-5],dl
 005BC73D    mov         dword ptr [ebp-4],eax
 005BC740    mov         al,byte ptr [ebp-5]
 005BC743    mov         edx,dword ptr [ebp-4]
 005BC746    mov         byte ptr [edx+2E4],al;TStringGrid.FUpdating:Boolean
 005BC74C    cmp         byte ptr [ebp-5],0
>005BC750    jne         005BC770
 005BC752    mov         eax,dword ptr [ebp-4]
 005BC755    cmp         byte ptr [eax+2E5],0;TStringGrid.FNeedsUpdating:Boolean
>005BC75C    je          005BC770
 005BC75E    mov         eax,dword ptr [ebp-4]
 005BC761    call        005B71B8
 005BC766    mov         eax,dword ptr [ebp-4]
 005BC769    mov         byte ptr [eax+2E5],0;TStringGrid.FNeedsUpdating:Boolean
 005BC770    pop         ecx
 005BC771    pop         ecx
 005BC772    pop         ebp
 005BC773    ret
end;*}

//005BC774
{*procedure sub_005BC774(?:TStringGrid; ?:?; ?:?);
begin
 005BC774    push        ebp
 005BC775    mov         ebp,esp
 005BC777    add         esp,0FFFFFFF4
 005BC77A    mov         dword ptr [ebp-0C],ecx
 005BC77D    mov         dword ptr [ebp-8],edx
 005BC780    mov         dword ptr [ebp-4],eax
 005BC783    mov         eax,dword ptr [ebp-4]
 005BC786    cmp         byte ptr [eax+2E4],0
>005BC78D    jne         005BC79F
 005BC78F    mov         ecx,dword ptr [ebp-0C]
 005BC792    mov         edx,dword ptr [ebp-8]
 005BC795    mov         eax,dword ptr [ebp-4]
 005BC798    call        005B7180
>005BC79D    jmp         005BC7A9
 005BC79F    mov         eax,dword ptr [ebp-4]
 005BC7A2    mov         byte ptr [eax+2E5],1
 005BC7A9    mov         eax,dword ptr [ebp-8]
 005BC7AC    mov         edx,dword ptr [ebp-4]
 005BC7AF    cmp         eax,dword ptr [edx+228]
>005BC7B5    jne         005BC7D9
 005BC7B7    mov         eax,dword ptr [ebp-0C]
 005BC7BA    mov         edx,dword ptr [ebp-4]
 005BC7BD    cmp         eax,dword ptr [edx+22C]
>005BC7C3    jne         005BC7D9
 005BC7C5    mov         eax,dword ptr [ebp-4]
 005BC7C8    cmp         dword ptr [eax+2E8],0
>005BC7CF    jne         005BC7D9
 005BC7D1    mov         eax,dword ptr [ebp-4]
 005BC7D4    call        005B4B08
 005BC7D9    mov         esp,ebp
 005BC7DB    pop         ebp
 005BC7DC    ret
end;*}

//005BC7E0
{*function sub_005BC7E0(?:TStringGrid; ?:?; ?:?):?;
begin
 005BC7E0    push        ebp
 005BC7E1    mov         ebp,esp
 005BC7E3    add         esp,0FFFFFFE8
 005BC7E6    mov         byte ptr [ebp-9],cl
 005BC7E9    mov         dword ptr [ebp-8],edx
 005BC7EC    mov         dword ptr [ebp-4],eax
 005BC7EF    cmp         byte ptr [ebp-9],0
>005BC7F3    je          005BC802
 005BC7F5    mov         eax,dword ptr [ebp-4]
 005BC7F8    add         eax,2E0
 005BC7FD    mov         dword ptr [ebp-18],eax
>005BC800    jmp         005BC80D
 005BC802    mov         eax,dword ptr [ebp-4]
 005BC805    add         eax,2DC
 005BC80A    mov         dword ptr [ebp-18],eax
 005BC80D    mov         eax,dword ptr [ebp-18]
 005BC810    mov         eax,dword ptr [eax]
 005BC812    mov         edx,dword ptr [ebp-8]
 005BC815    call        005BB678
 005BC81A    mov         dword ptr [ebp-10],eax
 005BC81D    cmp         dword ptr [ebp-10],0
>005BC821    jne         005BC861
 005BC823    cmp         byte ptr [ebp-9],0
>005BC827    je          005BC834
 005BC829    mov         eax,dword ptr [ebp-8]
 005BC82C    neg         eax
 005BC82E    dec         eax
 005BC82F    mov         dword ptr [ebp-14],eax
>005BC832    jmp         005BC83B
 005BC834    mov         eax,dword ptr [ebp-8]
 005BC837    inc         eax
 005BC838    mov         dword ptr [ebp-14],eax
 005BC83B    mov         eax,dword ptr [ebp-14]
 005BC83E    push        eax
 005BC83F    mov         ecx,dword ptr [ebp-4]
 005BC842    mov         dl,1
 005BC844    mov         eax,[005B2C8C];TStringGridStrings
 005BC849    call        TStringGridStrings.Create;TStringGridStrings.Create
 005BC84E    mov         dword ptr [ebp-10],eax
 005BC851    mov         eax,dword ptr [ebp-18]
 005BC854    mov         eax,dword ptr [eax]
 005BC856    mov         ecx,dword ptr [ebp-10]
 005BC859    mov         edx,dword ptr [ebp-8]
 005BC85C    call        005BB834
 005BC861    mov         eax,dword ptr [ebp-10]
 005BC864    mov         esp,ebp
 005BC866    pop         ebp
 005BC867    ret
end;*}

//005BC868
{*function sub_005BC868(?:TStringGrid; ?:?):?;
begin
 005BC868    push        ebp
 005BC869    mov         ebp,esp
 005BC86B    add         esp,0FFFFFFF0
 005BC86E    mov         dword ptr [ebp-8],edx
 005BC871    mov         dword ptr [ebp-4],eax
 005BC874    mov         edx,dword ptr [ebp-8]
 005BC877    mov         eax,dword ptr [ebp-4]
 005BC87A    mov         eax,dword ptr [eax+2D8]
 005BC880    call        005BB678
 005BC885    mov         dword ptr [ebp-0C],eax
 005BC888    cmp         dword ptr [ebp-0C],0
>005BC88C    jne         005BC8CD
 005BC88E    mov         eax,dword ptr [ebp-4]
 005BC891    cmp         dword ptr [eax+21C],200
>005BC89B    jle         005BC8A3
 005BC89D    mov         byte ptr [ebp-0D],1
>005BC8A1    jmp         005BC8A7
 005BC8A3    mov         byte ptr [ebp-0D],0
 005BC8A7    mov         cl,byte ptr [ebp-0D]
 005BC8AA    mov         dl,1
 005BC8AC    mov         eax,[005BAF70];TStringSparseList
 005BC8B1    call        TStringSparseList.Create;TStringSparseList.Create
 005BC8B6    mov         dword ptr [ebp-0C],eax
 005BC8B9    mov         ecx,dword ptr [ebp-0C]
 005BC8BC    mov         edx,dword ptr [ebp-8]
 005BC8BF    mov         eax,dword ptr [ebp-4]
 005BC8C2    mov         eax,dword ptr [eax+2D8]
 005BC8C8    call        005BB834
 005BC8CD    mov         eax,dword ptr [ebp-0C]
 005BC8D0    mov         esp,ebp
 005BC8D2    pop         ebp
 005BC8D3    ret
end;*}

//005BC8D4
function TStringGrid.GetCells(ACol:Integer; ARow:Integer):AnsiString;
begin
{*
 005BC8D4    push        ebp
 005BC8D5    mov         ebp,esp
 005BC8D7    add         esp,0FFFFFFF0
 005BC8DA    push        ebx
 005BC8DB    mov         dword ptr [ebp-0C],ecx
 005BC8DE    mov         dword ptr [ebp-8],edx
 005BC8E1    mov         dword ptr [ebp-4],eax
 005BC8E4    mov         edx,dword ptr [ebp-0C]
 005BC8E7    mov         eax,dword ptr [ebp-4]
 005BC8EA    mov         eax,dword ptr [eax+2D8]
 005BC8F0    call        005BB678
 005BC8F5    mov         dword ptr [ebp-10],eax
 005BC8F8    cmp         dword ptr [ebp-10],0
>005BC8FC    jne         005BC908
 005BC8FE    mov         eax,dword ptr [ebp+8]
 005BC901    call        @LStrClr
>005BC906    jmp         005BC916
 005BC908    mov         ecx,dword ptr [ebp+8]
 005BC90B    mov         edx,dword ptr [ebp-8]
 005BC90E    mov         eax,dword ptr [ebp-10]
 005BC911    mov         ebx,dword ptr [eax]
 005BC913    call        dword ptr [ebx+0C]
 005BC916    pop         ebx
 005BC917    mov         esp,ebp
 005BC919    pop         ebp
 005BC91A    ret         4
*}
end;

//005BC920
{*function sub_005BC920(?:TStringGrid; ?:?; ?:?):?;
begin
 005BC920    push        ebp
 005BC921    mov         ebp,esp
 005BC923    add         esp,0FFFFFFEC
 005BC926    mov         dword ptr [ebp-0C],ecx
 005BC929    mov         dword ptr [ebp-8],edx
 005BC92C    mov         dword ptr [ebp-4],eax
 005BC92F    mov         edx,dword ptr [ebp-0C]
 005BC932    mov         eax,dword ptr [ebp-4]
 005BC935    mov         eax,dword ptr [eax+2D8];TStringGrid.FData:Pointer
 005BC93B    call        005BB678
 005BC940    mov         dword ptr [ebp-14],eax
 005BC943    cmp         dword ptr [ebp-14],0
>005BC947    jne         005BC950
 005BC949    xor         eax,eax
 005BC94B    mov         dword ptr [ebp-10],eax
>005BC94E    jmp         005BC95E
 005BC950    mov         edx,dword ptr [ebp-8]
 005BC953    mov         eax,dword ptr [ebp-14]
 005BC956    mov         ecx,dword ptr [eax]
 005BC958    call        dword ptr [ecx+18]
 005BC95B    mov         dword ptr [ebp-10],eax
 005BC95E    mov         eax,dword ptr [ebp-10]
 005BC961    mov         esp,ebp
 005BC963    pop         ebp
 005BC964    ret
end;*}

//005BC968
procedure TStringGrid.SetCells(ACol:Integer; ARow:Integer; const Value:AnsiString);
begin
{*
 005BC968    push        ebp
 005BC969    mov         ebp,esp
 005BC96B    add         esp,0FFFFFFF4
 005BC96E    push        ebx
 005BC96F    mov         dword ptr [ebp-0C],ecx
 005BC972    mov         dword ptr [ebp-8],edx
 005BC975    mov         dword ptr [ebp-4],eax
 005BC978    mov         edx,dword ptr [ebp-0C]
 005BC97B    mov         eax,dword ptr [ebp-4]
 005BC97E    call        005BC868
 005BC983    mov         ecx,dword ptr [ebp+8]
 005BC986    mov         edx,dword ptr [ebp-8]
 005BC989    mov         ebx,dword ptr [eax]
 005BC98B    call        dword ptr [ebx+20]
 005BC98E    mov         cl,1
 005BC990    mov         edx,dword ptr [ebp-8]
 005BC993    mov         eax,dword ptr [ebp-4]
 005BC996    call        005BC7E0
 005BC99B    xor         ecx,ecx
 005BC99D    mov         edx,dword ptr [ebp-0C]
 005BC9A0    mov         eax,dword ptr [ebp-4]
 005BC9A3    call        005BC7E0
 005BC9A8    mov         ecx,dword ptr [ebp-0C]
 005BC9AB    mov         edx,dword ptr [ebp-8]
 005BC9AE    mov         eax,dword ptr [ebp-4]
 005BC9B1    call        005BC774
 005BC9B6    pop         ebx
 005BC9B7    mov         esp,ebp
 005BC9B9    pop         ebp
 005BC9BA    ret         4
*}
end;

//005BC9C0
{*procedure sub_005BC9C0(?:TStringGrid; ?:?; ?:?; ?:?);
begin
 005BC9C0    push        ebp
 005BC9C1    mov         ebp,esp
 005BC9C3    add         esp,0FFFFFFF4
 005BC9C6    push        ebx
 005BC9C7    mov         dword ptr [ebp-0C],ecx
 005BC9CA    mov         dword ptr [ebp-8],edx
 005BC9CD    mov         dword ptr [ebp-4],eax
 005BC9D0    mov         edx,dword ptr [ebp-0C]
 005BC9D3    mov         eax,dword ptr [ebp-4]
 005BC9D6    call        005BC868
 005BC9DB    mov         ecx,dword ptr [ebp+8]
 005BC9DE    mov         edx,dword ptr [ebp-8]
 005BC9E1    mov         ebx,dword ptr [eax]
 005BC9E3    call        dword ptr [ebx+24]
 005BC9E6    mov         cl,1
 005BC9E8    mov         edx,dword ptr [ebp-8]
 005BC9EB    mov         eax,dword ptr [ebp-4]
 005BC9EE    call        005BC7E0
 005BC9F3    xor         ecx,ecx
 005BC9F5    mov         edx,dword ptr [ebp-0C]
 005BC9F8    mov         eax,dword ptr [ebp-4]
 005BC9FB    call        005BC7E0
 005BCA00    mov         ecx,dword ptr [ebp-0C]
 005BCA03    mov         edx,dword ptr [ebp-8]
 005BCA06    mov         eax,dword ptr [ebp-4]
 005BCA09    call        005BC774
 005BCA0E    pop         ebx
 005BCA0F    mov         esp,ebp
 005BCA11    pop         ebp
 005BCA12    ret         4
end;*}

//005BCBB8
{*procedure sub_005BCBB8(?:?);
begin
 005BCBB8    push        ebp
 005BCBB9    mov         ebp,esp
 005BCBBB    add         esp,0FFFFFFF8
 005BCBBE    mov         dword ptr [ebp-8],edx
 005BCBC1    mov         dword ptr [ebp-4],eax
 005BCBC4    mov         edx,dword ptr [ebp-8]
 005BCBC7    mov         eax,dword ptr [ebp-4]
 005BCBCA    call        0059EB60
 005BCBCF    mov         eax,dword ptr [ebp-8]
 005BCBD2    or          dword ptr [eax+4],800000
 005BCBD9    mov         eax,dword ptr [ebp-8]
 005BCBDC    mov         dword ptr [eax+8],88
 005BCBE3    mov         edx,dword ptr [ebp-8]
 005BCBE6    add         edx,8
 005BCBE9    mov         eax,dword ptr [ebp-4]
 005BCBEC    call        005F7F40
 005BCBF1    mov         eax,dword ptr [ebp-8]
 005BCBF4    mov         dword ptr [eax+24],800
 005BCBFB    pop         ecx
 005BCBFC    pop         ecx
 005BCBFD    pop         ebp
 005BCBFE    ret
end;*}

//005BCC00
procedure TPopupListbox.CreateWnd;
begin
{*
 005BCC00    push        ebp
 005BCC01    mov         ebp,esp
 005BCC03    push        ecx
 005BCC04    mov         dword ptr [ebp-4],eax
 005BCC07    mov         eax,dword ptr [ebp-4]
 005BCC0A    call        TCustomListBox.CreateWnd
 005BCC0F    push        0
 005BCC11    mov         eax,dword ptr [ebp-4]
 005BCC14    call        TWinControl.GetHandle
 005BCC19    push        eax
 005BCC1A    call        USER32.SetParent
 005BCC1F    push        0
 005BCC21    push        0
 005BCC23    push        7
 005BCC25    mov         eax,dword ptr [ebp-4]
 005BCC28    call        TWinControl.GetHandle
 005BCC2D    push        eax
 005BCC2E    mov         eax,dword ptr [ebp-4]
 005BCC31    mov         eax,dword ptr [eax+174];TPopupListbox.FDefWndProc:Pointer
 005BCC37    push        eax
 005BCC38    call        USER32.CallWindowProcA
 005BCC3D    pop         ecx
 005BCC3E    pop         ebp
 005BCC3F    ret
*}
end;

//005BCC40
{*procedure TPopupListbox.sub_0059F69C(?:?);
begin
 005BCC40    push        ebp
 005BCC41    mov         ebp,esp
 005BCC43    add         esp,0FFFFFFF0
 005BCC46    xor         ecx,ecx
 005BCC48    mov         dword ptr [ebp-10],ecx
 005BCC4B    mov         dword ptr [ebp-8],edx
 005BCC4E    mov         dword ptr [ebp-4],eax
 005BCC51    xor         eax,eax
 005BCC53    push        ebp
 005BCC54    push        5BCD3B
 005BCC59    push        dword ptr fs:[eax]
 005BCC5C    mov         dword ptr fs:[eax],esp
 005BCC5F    mov         eax,dword ptr [ebp-8]
 005BCC62    mov         al,byte ptr [eax]
 005BCC64    sub         al,8
>005BCC66    je          005BCC77
 005BCC68    sub         al,13
>005BCC6A    je          005BCC77
 005BCC6C    add         al,0FB
 005BCC6E    sub         al,0E0
>005BCC70    jb          005BCC89
>005BCC72    jmp         005BCD1A
 005BCC77    mov         eax,dword ptr [ebp-4]
 005BCC7A    add         eax,280;TPopupListbox.FSearchText:String
 005BCC7F    call        @LStrClr
>005BCC84    jmp         005BCD1A
 005BCC89    call        KERNEL32.GetTickCount
 005BCC8E    mov         dword ptr [ebp-0C],eax
 005BCC91    mov         eax,dword ptr [ebp-0C]
 005BCC94    mov         edx,dword ptr [ebp-4]
 005BCC97    sub         eax,dword ptr [edx+284]
 005BCC9D    cmp         eax,7D0
>005BCCA2    jle         005BCCB1
 005BCCA4    mov         eax,dword ptr [ebp-4]
 005BCCA7    add         eax,280;TPopupListbox.FSearchText:String
 005BCCAC    call        @LStrClr
 005BCCB1    mov         eax,dword ptr [ebp-0C]
 005BCCB4    mov         edx,dword ptr [ebp-4]
 005BCCB7    mov         dword ptr [edx+284],eax;TPopupListbox.FSearchTickCount:Longint
 005BCCBD    mov         eax,dword ptr [ebp-4]
 005BCCC0    mov         eax,dword ptr [eax+280];TPopupListbox.FSearchText:String
 005BCCC6    call        @LStrLen
 005BCCCB    cmp         eax,20
>005BCCCE    jge         005BCCED
 005BCCD0    lea         eax,[ebp-10]
 005BCCD3    mov         edx,dword ptr [ebp-8]
 005BCCD6    mov         dl,byte ptr [edx]
 005BCCD8    call        @LStrFromChar
 005BCCDD    mov         edx,dword ptr [ebp-10]
 005BCCE0    mov         eax,dword ptr [ebp-4]
 005BCCE3    add         eax,280;TPopupListbox.FSearchText:String
 005BCCE8    call        @LStrCat
 005BCCED    mov         eax,dword ptr [ebp-4]
 005BCCF0    mov         eax,dword ptr [eax+280];TPopupListbox.FSearchText:String
 005BCCF6    call        @LStrToPChar
 005BCCFB    push        eax
 005BCCFC    push        0FFFF
 005BCD01    push        18C
 005BCD06    mov         eax,dword ptr [ebp-4]
 005BCD09    call        TWinControl.GetHandle
 005BCD0E    push        eax
 005BCD0F    call        USER32.SendMessageA
 005BCD14    mov         eax,dword ptr [ebp-8]
 005BCD17    mov         byte ptr [eax],0
 005BCD1A    mov         edx,dword ptr [ebp-8]
 005BCD1D    mov         eax,dword ptr [ebp-4]
 005BCD20    call        TCustomListBox.sub_0059F69C
 005BCD25    xor         eax,eax
 005BCD27    pop         edx
 005BCD28    pop         ecx
 005BCD29    pop         ecx
 005BCD2A    mov         dword ptr fs:[eax],edx
 005BCD2D    push        5BCD42
 005BCD32    lea         eax,[ebp-10]
 005BCD35    call        @LStrClr
 005BCD3A    ret
>005BCD3B    jmp         @HandleFinally
>005BCD40    jmp         005BCD32
 005BCD42    mov         esp,ebp
 005BCD44    pop         ebp
 005BCD45    ret
end;*}

//005BCD48
procedure TPopupListbox.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005BCD48    push        ebp
 005BCD49    mov         ebp,esp
 005BCD4B    add         esp,0FFFFFFF8
 005BCD4E    push        esi
 005BCD4F    mov         byte ptr [ebp-6],cl
 005BCD52    mov         byte ptr [ebp-5],dl
 005BCD55    mov         dword ptr [ebp-4],eax
 005BCD58    mov         eax,dword ptr [ebp+0C]
 005BCD5B    push        eax
 005BCD5C    mov         eax,dword ptr [ebp+8]
 005BCD5F    push        eax
 005BCD60    mov         cl,byte ptr [ebp-6]
 005BCD63    mov         dl,byte ptr [ebp-5]
 005BCD66    mov         eax,dword ptr [ebp-4]
 005BCD69    call        TControl.MouseUp
 005BCD6E    cmp         dword ptr [ebp+0C],0
>005BCD72    jl          005BCD90
 005BCD74    cmp         dword ptr [ebp+8],0
>005BCD78    jl          005BCD90
 005BCD7A    mov         eax,dword ptr [ebp+0C]
 005BCD7D    mov         edx,dword ptr [ebp-4]
 005BCD80    cmp         eax,dword ptr [edx+48];TPopupListbox.Width:Integer
>005BCD83    jge         005BCD90
 005BCD85    mov         eax,dword ptr [ebp+8]
 005BCD88    mov         edx,dword ptr [ebp-4]
 005BCD8B    cmp         eax,dword ptr [edx+4C];TPopupListbox.Height:Integer
>005BCD8E    jl          005BCD94
 005BCD90    xor         edx,edx
>005BCD92    jmp         005BCD96
 005BCD94    mov         dl,1
 005BCD96    mov         eax,dword ptr [ebp-4]
 005BCD99    mov         eax,dword ptr [eax+4];TPopupListbox.FOwner:TComponent
 005BCD9C    mov         si,0FFB2
 005BCDA0    call        @CallDynaInst
 005BCDA5    pop         esi
 005BCDA6    pop         ecx
 005BCDA7    pop         ecx
 005BCDA8    pop         ebp
 005BCDA9    ret         8
*}
end;

//005BCDAC
constructor TInplaceEditList.Create(AOwner:TComponent);
begin
{*
 005BCDAC    push        ebp
 005BCDAD    mov         ebp,esp
 005BCDAF    add         esp,0FFFFFFF4
 005BCDB2    test        dl,dl
>005BCDB4    je          005BCDBE
 005BCDB6    add         esp,0FFFFFFF0
 005BCDB9    call        @ClassCreate
 005BCDBE    mov         dword ptr [ebp-0C],ecx
 005BCDC1    mov         byte ptr [ebp-5],dl
 005BCDC4    mov         dword ptr [ebp-4],eax
 005BCDC7    mov         ecx,dword ptr [ebp-0C]
 005BCDCA    xor         edx,edx
 005BCDCC    mov         eax,dword ptr [ebp-4]
 005BCDCF    call        TInplaceEdit.Create
 005BCDD4    push        2
 005BCDD6    call        USER32.GetSystemMetrics
 005BCDDB    mov         edx,dword ptr [ebp-4]
 005BCDDE    mov         dword ptr [edx+248],eax;TInplaceEditList.FButtonWidth:Integer
 005BCDE4    mov         eax,dword ptr [ebp-4]
 005BCDE7    mov         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
 005BCDEE    mov         eax,dword ptr [ebp-4]
 005BCDF1    cmp         byte ptr [ebp-5],0
>005BCDF5    je          005BCE06
 005BCDF7    call        @AfterConstruction
 005BCDFC    pop         dword ptr fs:[0]
 005BCE03    add         esp,0C
 005BCE06    mov         eax,dword ptr [ebp-4]
 005BCE09    mov         esp,ebp
 005BCE0B    pop         ebp
 005BCE0C    ret
*}
end;

//005BCE10
procedure sub_005BCE10;
begin
{*
 005BCE10    push        ebp
 005BCE11    mov         ebp,esp
 005BCE13    add         esp,0FFFFFFEC
 005BCE16    push        esi
 005BCE17    mov         dword ptr [ebp-4],eax
 005BCE1A    mov         eax,dword ptr [ebp-4]
 005BCE1D    mov         eax,dword ptr [eax+4C];TInplaceEditList.Height:Integer
 005BCE20    push        eax
 005BCE21    mov         eax,dword ptr [ebp-4]
 005BCE24    mov         eax,dword ptr [eax+48];TInplaceEditList.Width:Integer
 005BCE27    sub         eax,2
 005BCE2A    push        eax
 005BCE2B    push        2
 005BCE2D    push        2
 005BCE2F    lea         eax,[ebp-14]
 005BCE32    push        eax
 005BCE33    call        USER32.SetRect
 005BCE38    mov         eax,dword ptr [ebp-4]
 005BCE3B    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BCE42    je          005BCE77
 005BCE44    mov         eax,dword ptr [ebp-4]
 005BCE47    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BCE4D    mov         si,0FFC8
 005BCE51    call        @CallDynaInst;TControl.sub_005F40CC
 005BCE56    test        al,al
>005BCE58    jne         005BCE68
 005BCE5A    mov         eax,dword ptr [ebp-4]
 005BCE5D    mov         eax,dword ptr [eax+248];TInplaceEditList.FButtonWidth:Integer
 005BCE63    sub         dword ptr [ebp-0C],eax
>005BCE66    jmp         005BCE77
 005BCE68    mov         eax,dword ptr [ebp-4]
 005BCE6B    mov         eax,dword ptr [eax+248];TInplaceEditList.FButtonWidth:Integer
 005BCE71    sub         eax,2
 005BCE74    add         dword ptr [ebp-14],eax
 005BCE77    lea         eax,[ebp-14]
 005BCE7A    push        eax
 005BCE7B    push        0
 005BCE7D    push        0B4
 005BCE82    mov         eax,dword ptr [ebp-4]
 005BCE85    call        TWinControl.GetHandle
 005BCE8A    push        eax
 005BCE8B    call        USER32.SendMessageA
 005BCE90    push        0
 005BCE92    push        0
 005BCE94    push        0B7
 005BCE99    mov         eax,dword ptr [ebp-4]
 005BCE9C    call        TWinControl.GetHandle
 005BCEA1    push        eax
 005BCEA2    call        USER32.SendMessageA
 005BCEA7    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005BCEAC    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005BCEB0    je          005BCEC7
 005BCEB2    mov         eax,dword ptr [ebp-10]
 005BCEB5    push        eax
 005BCEB6    mov         ecx,dword ptr [ebp-14]
 005BCEB9    mov         eax,dword ptr [ebp-4]
 005BCEBC    mov         edx,dword ptr [eax+68];TInplaceEditList.FFont:TFont
 005BCEBF    mov         eax,dword ptr [ebp-4]
 005BCEC2    call        005F9F34
 005BCEC7    pop         esi
 005BCEC8    mov         esp,ebp
 005BCECA    pop         ebp
 005BCECB    ret
*}
end;

//005BCECC
{*procedure TInplaceEditList.sub_005BCECC(?:?);
begin
 005BCECC    push        ebp
 005BCECD    mov         ebp,esp
 005BCECF    mov         ecx,8
 005BCED4    push        0
 005BCED6    push        0
 005BCED8    dec         ecx
>005BCED9    jne         005BCED4
 005BCEDB    push        ebx
 005BCEDC    push        esi
 005BCEDD    mov         byte ptr [ebp-5],dl
 005BCEE0    mov         dword ptr [ebp-4],eax
 005BCEE3    xor         eax,eax
 005BCEE5    push        ebp
 005BCEE6    push        5BD093
 005BCEEB    push        dword ptr fs:[eax]
 005BCEEE    mov         dword ptr fs:[eax],esp
 005BCEF1    mov         eax,dword ptr [ebp-4]
 005BCEF4    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BCEFB    je          005BD058
 005BCF01    mov         eax,dword ptr [ebp-4]
 005BCF04    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BCF0A    mov         edx,dword ptr [ebp-4]
 005BCF0D    cmp         eax,dword ptr [edx+24C];TInplaceEditList.FPickList:TCustomListBox
>005BCF13    jne         005BD058
 005BCF19    call        USER32.GetCapture
 005BCF1E    test        eax,eax
>005BCF20    je          005BCF33
 005BCF22    push        0
 005BCF24    push        0
 005BCF26    push        1F
 005BCF28    call        USER32.GetCapture
 005BCF2D    push        eax
 005BCF2E    call        USER32.SendMessageA
 005BCF33    mov         eax,dword ptr [ebp-4]
 005BCF36    call        005BD1F4
 005BCF3B    mov         edx,dword ptr [eax]
 005BCF3D    call        dword ptr [edx+0C8]
 005BCF43    inc         eax
>005BCF44    je          005BCF79
 005BCF46    mov         eax,dword ptr [ebp-4]
 005BCF49    call        005BD1F4
 005BCF4E    mov         edx,dword ptr [eax]
 005BCF50    call        dword ptr [edx+0C8]
 005BCF56    push        eax
 005BCF57    mov         eax,dword ptr [ebp-4]
 005BCF5A    call        005BD1F4
 005BCF5F    mov         eax,dword ptr [eax+218]
 005BCF65    lea         ecx,[ebp-24]
 005BCF68    pop         edx
 005BCF69    mov         ebx,dword ptr [eax]
 005BCF6B    call        dword ptr [ebx+0C]
 005BCF6E    mov         edx,dword ptr [ebp-24]
 005BCF71    lea         eax,[ebp-20]
 005BCF74    call        0066D5B0
 005BCF79    push        97
 005BCF7E    push        0
 005BCF80    push        0
 005BCF82    push        0
 005BCF84    push        0
 005BCF86    push        0
 005BCF88    mov         eax,dword ptr [ebp-4]
 005BCF8B    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BCF91    call        TWinControl.GetHandle
 005BCF96    push        eax
 005BCF97    call        USER32.SetWindowPos
 005BCF9C    mov         eax,dword ptr [ebp-4]
 005BCF9F    mov         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
 005BCFA6    mov         eax,dword ptr [ebp-4]
 005BCFA9    call        005B3FA0
 005BCFAE    cmp         byte ptr [ebp-5],0
>005BCFB2    je          005BD058
 005BCFB8    lea         eax,[ebp-20]
 005BCFBB    call        0066745C
 005BCFC0    test        al,al
>005BCFC2    je          005BCFD4
 005BCFC4    lea         eax,[ebp-20]
 005BCFC7    call        0066747C
 005BCFCC    test        al,al
>005BCFCE    je          005BD058
 005BCFD4    lea         edx,[ebp-38]
 005BCFD7    mov         eax,dword ptr [ebp-4]
 005BCFDA    call        TMaskEdit.GetText
 005BCFDF    mov         edx,dword ptr [ebp-38]
 005BCFE2    lea         eax,[ebp-34]
 005BCFE5    call        0066D5B0
 005BCFEA    lea         edx,[ebp-34]
 005BCFED    lea         eax,[ebp-20]
 005BCFF0    call        @VarCmpNE
>005BCFF5    je          005BD058
 005BCFF7    lea         eax,[ebp-3C]
 005BCFFA    lea         edx,[ebp-20]
 005BCFFD    call        0066D554
 005BD002    mov         eax,dword ptr [ebp-3C]
 005BD005    push        eax
 005BD006    xor         ecx,ecx
 005BD008    mov         edx,0C
 005BD00D    mov         eax,dword ptr [ebp-4]
 005BD010    call        005F4FA8
 005BD015    mov         dl,1
 005BD017    mov         eax,dword ptr [ebp-4]
 005BD01A    call        TCustomEdit.SetModified
 005BD01F    mov         eax,dword ptr [ebp-4]
 005BD022    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BD028    mov         dword ptr [ebp-0C],eax
 005BD02B    lea         eax,[ebp-40]
 005BD02E    lea         edx,[ebp-20]
 005BD031    call        0066D554
 005BD036    mov         eax,dword ptr [ebp-40]
 005BD039    push        eax
 005BD03A    mov         eax,dword ptr [ebp-0C]
 005BD03D    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BD043    mov         eax,dword ptr [ebp-0C]
 005BD046    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BD04C    mov         eax,dword ptr [ebp-0C]
 005BD04F    mov         si,0FFAE
 005BD053    call        @CallDynaInst;TCustomGrid.sub_005B4A3C
 005BD058    xor         eax,eax
 005BD05A    pop         edx
 005BD05B    pop         ecx
 005BD05C    pop         ecx
 005BD05D    mov         dword ptr fs:[eax],edx
 005BD060    push        5BD09A
 005BD065    lea         eax,[ebp-40]
 005BD068    mov         edx,2
 005BD06D    call        @LStrArrayClr
 005BD072    lea         eax,[ebp-38]
 005BD075    call        @LStrClr
 005BD07A    lea         eax,[ebp-34]
 005BD07D    call        @VarClr
 005BD082    lea         eax,[ebp-24]
 005BD085    call        @LStrClr
 005BD08A    lea         eax,[ebp-20]
 005BD08D    call        @VarClr
 005BD092    ret
>005BD093    jmp         @HandleFinally
>005BD098    jmp         005BD065
 005BD09A    pop         esi
 005BD09B    pop         ebx
 005BD09C    mov         esp,ebp
 005BD09E    pop         ebp
 005BD09F    ret
end;*}

//005BD0A0
{*procedure sub_005BD0A0(?:?; ?:?);
begin
 005BD0A0    push        ebp
 005BD0A1    mov         ebp,esp
 005BD0A3    add         esp,0FFFFFFF4
 005BD0A6    push        esi
 005BD0A7    mov         byte ptr [ebp-9],cl
 005BD0AA    mov         dword ptr [ebp-8],edx
 005BD0AD    mov         dword ptr [ebp-4],eax
 005BD0B0    mov         eax,dword ptr [ebp-8]
 005BD0B3    mov         ax,word ptr [eax]
 005BD0B6    sub         ax,0D
>005BD0BA    je          005BD106
 005BD0BC    sub         ax,0E
>005BD0C0    je          005BD106
 005BD0C2    sub         ax,0B
>005BD0C6    je          005BD0CE
 005BD0C8    sub         ax,2
>005BD0CC    jne         005BD136
 005BD0CE    test        byte ptr [ebp-9],2
>005BD0D2    je          005BD136
 005BD0D4    mov         eax,dword ptr [ebp-4]
 005BD0D7    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BD0DE    je          005BD0F0
 005BD0E0    mov         dl,1
 005BD0E2    mov         eax,dword ptr [ebp-4]
 005BD0E5    mov         si,0FFB2
 005BD0E9    call        @CallDynaInst;TInplaceEditList.sub_005BCECC
>005BD0EE    jmp         005BD0FC
 005BD0F0    mov         eax,dword ptr [ebp-4]
 005BD0F3    mov         si,0FFB0
 005BD0F7    call        @CallDynaInst;TInplaceEditList.sub_005BD27C
 005BD0FC    mov         eax,dword ptr [ebp-8]
 005BD0FF    mov         word ptr [eax],0
>005BD104    jmp         005BD136
 005BD106    mov         eax,dword ptr [ebp-4]
 005BD109    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BD110    je          005BD136
 005BD112    test        byte ptr [ebp-9],2
>005BD116    jne         005BD136
 005BD118    mov         eax,dword ptr [ebp-8]
 005BD11B    cmp         word ptr [eax],0D
 005BD11F    sete        dl
 005BD122    mov         eax,dword ptr [ebp-4]
 005BD125    mov         si,0FFB2
 005BD129    call        @CallDynaInst;TInplaceEditList.sub_005BCECC
 005BD12E    mov         eax,dword ptr [ebp-8]
 005BD131    mov         word ptr [eax],0
 005BD136    pop         esi
 005BD137    mov         esp,ebp
 005BD139    pop         ebp
 005BD13A    ret
end;*}

//005BD13C
procedure sub_005BD13C;
begin
{*
 005BD13C    push        ebp
 005BD13D    mov         ebp,esp
 005BD13F    push        ecx
 005BD140    push        ebx
 005BD141    mov         dword ptr [ebp-4],eax
 005BD144    mov         eax,dword ptr [ebp-4]
 005BD147    cmp         word ptr [eax+26A],0;TInplaceEditList.?f26A:word
>005BD14F    je          005BD169
 005BD151    mov         ebx,dword ptr [ebp-4]
 005BD154    mov         eax,dword ptr [ebp-4]
 005BD157    mov         edx,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BD15D    mov         eax,dword ptr [ebx+26C];TInplaceEditList.?f26C:dword
 005BD163    call        dword ptr [ebx+268];TInplaceEditList.FOnEditButtonClick
 005BD169    pop         ebx
 005BD16A    pop         ecx
 005BD16B    pop         ebp
 005BD16C    ret
*}
end;

//005BD170
procedure TInplaceEditList.sub_005BD170;
begin
{*
 005BD170    push        ebp
 005BD171    mov         ebp,esp
 005BD173    push        ecx
 005BD174    push        ebx
 005BD175    mov         dword ptr [ebp-4],eax
 005BD178    mov         eax,dword ptr [ebp-4]
 005BD17B    cmp         byte ptr [eax+25F],0;TInplaceEditList.FPickListLoaded:Boolean
>005BD182    jne         005BD1EE
 005BD184    mov         eax,dword ptr [ebp-4]
 005BD187    cmp         word ptr [eax+262],0;TInplaceEditList.?f262:word
>005BD18F    je          005BD1CD
 005BD191    mov         eax,dword ptr [ebp-4]
 005BD194    call        005BD1F4
 005BD199    mov         eax,dword ptr [eax+218]
 005BD19F    push        eax
 005BD1A0    mov         eax,dword ptr [ebp-4]
 005BD1A3    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BD1A9    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BD1AF    mov         eax,dword ptr [ebp-4]
 005BD1B2    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BD1B8    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BD1BE    mov         ebx,dword ptr [ebp-4]
 005BD1C1    mov         eax,dword ptr [ebx+264];TInplaceEditList.?f264:TValueListEditor
 005BD1C7    call        dword ptr [ebx+260];TInplaceEditList.FOnGetPickListitems
 005BD1CD    mov         eax,dword ptr [ebp-4]
 005BD1D0    call        005BD1F4
 005BD1D5    mov         eax,dword ptr [eax+218]
 005BD1DB    mov         edx,dword ptr [eax]
 005BD1DD    call        dword ptr [edx+14]
 005BD1E0    test        eax,eax
 005BD1E2    setg        al
 005BD1E5    mov         edx,dword ptr [ebp-4]
 005BD1E8    mov         byte ptr [edx+25F],al;TInplaceEditList.FPickListLoaded:Boolean
 005BD1EE    pop         ebx
 005BD1EF    pop         ecx
 005BD1F0    pop         ebp
 005BD1F1    ret
*}
end;

//005BD1F4
{*function sub_005BD1F4(?:TInplaceEditList):?;
begin
 005BD1F4    push        ebp
 005BD1F5    mov         ebp,esp
 005BD1F7    add         esp,0FFFFFFF4
 005BD1FA    mov         dword ptr [ebp-4],eax
 005BD1FD    mov         eax,dword ptr [ebp-4]
 005BD200    cmp         dword ptr [eax+24C],0;TInplaceEditList.FPickList:TCustomListBox
>005BD207    jne         005BD269
 005BD209    mov         ecx,dword ptr [ebp-4]
 005BD20C    mov         dl,1
 005BD20E    mov         eax,[005BCA18];TPopupListbox
 005BD213    call        TCustomListBox.Create;TPopupListbox.Create
 005BD218    mov         dword ptr [ebp-0C],eax
 005BD21B    xor         edx,edx
 005BD21D    mov         eax,dword ptr [ebp-0C]
 005BD220    call        TCCalendar.SetVisible
 005BD225    mov         edx,dword ptr [ebp-4]
 005BD228    mov         eax,dword ptr [ebp-0C]
 005BD22B    mov         ecx,dword ptr [eax]
 005BD22D    call        dword ptr [ecx+68];TPopupListbox.sub_005F34DC
 005BD230    mov         eax,dword ptr [ebp-4]
 005BD233    mov         edx,dword ptr [ebp-0C]
 005BD236    mov         dword ptr [edx+0E4],eax;TPopupListbox.?fE4:TInplaceEditList
 005BD23C    mov         dword ptr [edx+0E0],5BD5BC;TPopupListbox.FOnMouseUp:TMouseEvent
 005BD246    mov         dl,1
 005BD248    mov         eax,dword ptr [ebp-0C]
 005BD24B    call        TCheckListBox.SetIntegralHeight
 005BD250    mov         edx,0B
 005BD255    mov         eax,dword ptr [ebp-0C]
 005BD258    call        TCheckListBox.SetItemHeight
 005BD25D    mov         eax,dword ptr [ebp-0C]
 005BD260    mov         edx,dword ptr [ebp-4]
 005BD263    mov         dword ptr [edx+24C],eax;TInplaceEditList.FPickList:TCustomListBox
 005BD269    mov         eax,dword ptr [ebp-4]
 005BD26C    mov         eax,dword ptr [eax+24C];TInplaceEditList.FPickList:TCustomListBox
 005BD272    mov         dword ptr [ebp-8],eax
 005BD275    mov         eax,dword ptr [ebp-8]
 005BD278    mov         esp,ebp
 005BD27A    pop         ebp
 005BD27B    ret
end;*}

//005BD27C
procedure TInplaceEditList.sub_005BD27C;
begin
{*
 005BD27C    push        ebp
 005BD27D    mov         ebp,esp
 005BD27F    add         esp,0FFFFFFD0
 005BD282    push        ebx
 005BD283    push        esi
 005BD284    xor         edx,edx
 005BD286    mov         dword ptr [ebp-28],edx
 005BD289    mov         dword ptr [ebp-24],edx
 005BD28C    mov         dword ptr [ebp-20],edx
 005BD28F    mov         dword ptr [ebp-4],eax
 005BD292    xor         eax,eax
 005BD294    push        ebp
 005BD295    push        5BD54A
 005BD29A    push        dword ptr fs:[eax]
 005BD29D    mov         dword ptr fs:[eax],esp
 005BD2A0    mov         eax,dword ptr [ebp-4]
 005BD2A3    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BD2AA    jne         005BD527
 005BD2B0    mov         eax,dword ptr [ebp-4]
 005BD2B3    mov         edx,dword ptr [eax+48];TInplaceEditList.Width:Integer
 005BD2B6    mov         eax,dword ptr [ebp-4]
 005BD2B9    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD2BF    call        TControl.SetWidth
 005BD2C4    mov         eax,dword ptr [ebp-4]
 005BD2C7    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD2CD    mov         edx,dword ptr [ebp-4]
 005BD2D0    cmp         eax,dword ptr [edx+24C];TInplaceEditList.FPickList:TCustomListBox
>005BD2D6    jne         005BD481
 005BD2DC    mov         eax,dword ptr [ebp-4]
 005BD2DF    mov         si,0FFB1
 005BD2E3    call        @CallDynaInst;TInplaceEditList.sub_005BD170
 005BD2E8    mov         eax,dword ptr [ebp-4]
 005BD2EB    call        005BD1F4
 005BD2F0    mov         edx,dword ptr [ebp-4]
 005BD2F3    mov         edx,dword ptr [edx+70];TInplaceEditList.FColor:TColor
 005BD2F6    call        TControl.SetColor
 005BD2FB    mov         eax,dword ptr [ebp-4]
 005BD2FE    call        005BD1F4
 005BD303    mov         edx,dword ptr [ebp-4]
 005BD306    mov         edx,dword ptr [edx+68];TInplaceEditList.FFont:TFont
 005BD309    call        TCCalendar.SetFont
 005BD30E    mov         eax,dword ptr [ebp-4]
 005BD311    cmp         dword ptr [eax+258],0;TInplaceEditList.FDropDownRows:Integer
>005BD318    jle         005BD362
 005BD31A    mov         eax,dword ptr [ebp-4]
 005BD31D    call        005BD1F4
 005BD322    mov         eax,dword ptr [eax+218]
 005BD328    mov         edx,dword ptr [eax]
 005BD32A    call        dword ptr [edx+14]
 005BD32D    mov         edx,dword ptr [ebp-4]
 005BD330    cmp         eax,dword ptr [edx+258];TInplaceEditList.FDropDownRows:Integer
>005BD336    jl          005BD362
 005BD338    mov         eax,dword ptr [ebp-4]
 005BD33B    call        005BD1F4
 005BD340    call        TCheckListBox.GetItemHeight
 005BD345    mov         edx,dword ptr [ebp-4]
 005BD348    imul        dword ptr [edx+258];TInplaceEditList.FDropDownRows:Integer
 005BD34E    add         eax,4
 005BD351    push        eax
 005BD352    mov         eax,dword ptr [ebp-4]
 005BD355    call        005BD1F4
 005BD35A    pop         edx
 005BD35B    call        TControl.SetHeight
>005BD360    jmp         005BD399
 005BD362    mov         eax,dword ptr [ebp-4]
 005BD365    call        005BD1F4
 005BD36A    mov         eax,dword ptr [eax+218]
 005BD370    mov         edx,dword ptr [eax]
 005BD372    call        dword ptr [edx+14]
 005BD375    mov         ebx,eax
 005BD377    mov         eax,dword ptr [ebp-4]
 005BD37A    call        005BD1F4
 005BD37F    call        TCheckListBox.GetItemHeight
 005BD384    imul        ebx,eax
 005BD387    add         ebx,4
 005BD38A    push        ebx
 005BD38B    mov         eax,dword ptr [ebp-4]
 005BD38E    call        005BD1F4
 005BD393    pop         edx
 005BD394    call        TControl.SetHeight
 005BD399    lea         edx,[ebp-20]
 005BD39C    mov         eax,dword ptr [ebp-4]
 005BD39F    call        TMaskEdit.GetText
 005BD3A4    cmp         dword ptr [ebp-20],0
>005BD3A8    jne         005BD3BF
 005BD3AA    mov         eax,dword ptr [ebp-4]
 005BD3AD    call        005BD1F4
 005BD3B2    or          edx,0FFFFFFFF
 005BD3B5    mov         ecx,dword ptr [eax]
 005BD3B7    call        dword ptr [ecx+0CC]
>005BD3BD    jmp         005BD3F4
 005BD3BF    lea         edx,[ebp-24]
 005BD3C2    mov         eax,dword ptr [ebp-4]
 005BD3C5    call        TMaskEdit.GetText
 005BD3CA    mov         eax,dword ptr [ebp-24]
 005BD3CD    push        eax
 005BD3CE    mov         eax,dword ptr [ebp-4]
 005BD3D1    call        005BD1F4
 005BD3D6    mov         eax,dword ptr [eax+218]
 005BD3DC    pop         edx
 005BD3DD    mov         ecx,dword ptr [eax]
 005BD3DF    call        dword ptr [ecx+54]
 005BD3E2    push        eax
 005BD3E3    mov         eax,dword ptr [ebp-4]
 005BD3E6    call        005BD1F4
 005BD3EB    pop         edx
 005BD3EC    mov         ecx,dword ptr [eax]
 005BD3EE    call        dword ptr [ecx+0CC]
 005BD3F4    mov         eax,dword ptr [ebp-4]
 005BD3F7    call        005BD1F4
 005BD3FC    call        TControl.GetClientWidth
 005BD401    mov         dword ptr [ebp-14],eax
 005BD404    mov         eax,dword ptr [ebp-4]
 005BD407    call        005BD1F4
 005BD40C    mov         eax,dword ptr [eax+218]
 005BD412    mov         edx,dword ptr [eax]
 005BD414    call        dword ptr [edx+14]
 005BD417    dec         eax
 005BD418    test        eax,eax
>005BD41A    jl          005BD471
 005BD41C    inc         eax
 005BD41D    mov         dword ptr [ebp-1C],eax
 005BD420    mov         dword ptr [ebp-10],0
 005BD427    mov         eax,dword ptr [ebp-4]
 005BD42A    call        005BD1F4
 005BD42F    mov         eax,dword ptr [eax+218]
 005BD435    lea         ecx,[ebp-28]
 005BD438    mov         edx,dword ptr [ebp-10]
 005BD43B    mov         ebx,dword ptr [eax]
 005BD43D    call        dword ptr [ebx+0C]
 005BD440    mov         eax,dword ptr [ebp-28]
 005BD443    push        eax
 005BD444    mov         eax,dword ptr [ebp-4]
 005BD447    call        005BD1F4
 005BD44C    mov         eax,dword ptr [eax+228]
 005BD452    pop         edx
 005BD453    call        005C1754
 005BD458    mov         dword ptr [ebp-18],eax
 005BD45B    mov         eax,dword ptr [ebp-18]
 005BD45E    cmp         eax,dword ptr [ebp-14]
>005BD461    jle         005BD469
 005BD463    mov         eax,dword ptr [ebp-18]
 005BD466    mov         dword ptr [ebp-14],eax
 005BD469    inc         dword ptr [ebp-10]
 005BD46C    dec         dword ptr [ebp-1C]
>005BD46F    jne         005BD427
 005BD471    mov         eax,dword ptr [ebp-4]
 005BD474    call        005BD1F4
 005BD479    mov         edx,dword ptr [ebp-14]
 005BD47C    call        005F2EF8
 005BD481    lea         ecx,[ebp-30]
 005BD484    mov         eax,dword ptr [ebp-4]
 005BD487    mov         edx,dword ptr [eax+44];TInplaceEditList.Top:Integer
 005BD48A    mov         eax,dword ptr [ebp-4]
 005BD48D    mov         eax,dword ptr [eax+40];TInplaceEditList.Left:Integer
 005BD490    call        Point
 005BD495    lea         edx,[ebp-30]
 005BD498    lea         ecx,[ebp-0C]
 005BD49B    mov         eax,dword ptr [ebp-4]
 005BD49E    mov         eax,dword ptr [eax+30];TInplaceEditList.FParent:TWinControl
 005BD4A1    call        005F3020
 005BD4A6    mov         eax,dword ptr [ebp-8]
 005BD4A9    mov         edx,dword ptr [ebp-4]
 005BD4AC    add         eax,dword ptr [edx+4C];TInplaceEditList.Height:Integer
 005BD4AF    mov         dword ptr [ebp-18],eax
 005BD4B2    mov         eax,[006E9DD0];^Screen:TScreen
 005BD4B7    mov         eax,dword ptr [eax]
 005BD4B9    call        005D55C0
 005BD4BE    mov         edx,dword ptr [ebp-4]
 005BD4C1    mov         edx,dword ptr [edx+250];TInplaceEditList.FActiveList:TWinControl
 005BD4C7    mov         edx,dword ptr [edx+4C];TWinControl.Height:Integer
 005BD4CA    add         edx,dword ptr [ebp-18]
 005BD4CD    cmp         eax,edx
>005BD4CF    jge         005BD4E3
 005BD4D1    mov         eax,dword ptr [ebp-4]
 005BD4D4    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD4DA    mov         edx,dword ptr [ebp-8]
 005BD4DD    sub         edx,dword ptr [eax+4C]
 005BD4E0    mov         dword ptr [ebp-18],edx
 005BD4E3    push        51
 005BD4E5    push        0
 005BD4E7    push        0
 005BD4E9    mov         eax,dword ptr [ebp-18]
 005BD4EC    push        eax
 005BD4ED    mov         eax,dword ptr [ebp-0C]
 005BD4F0    push        eax
 005BD4F1    push        0
 005BD4F3    mov         eax,dword ptr [ebp-4]
 005BD4F6    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD4FC    call        TWinControl.GetHandle
 005BD501    push        eax
 005BD502    call        USER32.SetWindowPos
 005BD507    mov         eax,dword ptr [ebp-4]
 005BD50A    mov         byte ptr [eax+25C],1;TInplaceEditList.FListVisible:Boolean
 005BD511    mov         eax,dword ptr [ebp-4]
 005BD514    call        005B3FA0
 005BD519    mov         eax,dword ptr [ebp-4]
 005BD51C    call        TWinControl.GetHandle
 005BD521    push        eax
 005BD522    call        USER32.SetFocus
 005BD527    xor         eax,eax
 005BD529    pop         edx
 005BD52A    pop         ecx
 005BD52B    pop         ecx
 005BD52C    mov         dword ptr fs:[eax],edx
 005BD52F    push        5BD551
 005BD534    lea         eax,[ebp-28]
 005BD537    call        @LStrClr
 005BD53C    lea         eax,[ebp-24]
 005BD53F    mov         edx,2
 005BD544    call        @LStrArrayClr
 005BD549    ret
>005BD54A    jmp         @HandleFinally
>005BD54F    jmp         005BD534
 005BD551    pop         esi
 005BD552    pop         ebx
 005BD553    mov         esp,ebp
 005BD555    pop         ebp
 005BD556    ret
*}
end;

//005BD558
procedure TInplaceEditList.KeyDown(Key:Word; Shift:TShiftState);
begin
{*
 005BD558    push        ebp
 005BD559    mov         ebp,esp
 005BD55B    add         esp,0FFFFFFF4
 005BD55E    mov         byte ptr [ebp-9],cl
 005BD561    mov         dword ptr [ebp-8],edx
 005BD564    mov         dword ptr [ebp-4],eax
 005BD567    mov         eax,dword ptr [ebp-4]
 005BD56A    cmp         byte ptr [eax+254],1;TInplaceEditList.FEditStyle:TEditStyle
>005BD571    jne         005BD5A5
 005BD573    mov         eax,dword ptr [ebp-8]
 005BD576    cmp         word ptr [eax],0D
>005BD57A    jne         005BD5A5
 005BD57C    mov         al,[005BD5B8];0x4 gvar_005BD5B8
 005BD581    cmp         al,byte ptr [ebp-9]
>005BD584    jne         005BD5A5
 005BD586    mov         eax,dword ptr [ebp-4]
 005BD589    mov         edx,dword ptr [eax]
 005BD58B    call        dword ptr [edx+104];TInplaceEditList.sub_005BD13C
 005BD591    mov         eax,dword ptr [ebp-4]
 005BD594    call        TWinControl.GetHandle
 005BD599    mov         edx,102
 005BD59E    call        005B374C
>005BD5A3    jmp         005BD5B3
 005BD5A5    mov         edx,dword ptr [ebp-8]
 005BD5A8    mov         cl,byte ptr [ebp-9]
 005BD5AB    mov         eax,dword ptr [ebp-4]
 005BD5AE    call        TInplaceEdit.KeyDown
 005BD5B3    mov         esp,ebp
 005BD5B5    pop         ebp
 005BD5B6    ret
*}
end;

//005BD61C
procedure TInplaceEditList.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005BD61C    push        ebp
 005BD61D    mov         ebp,esp
 005BD61F    add         esp,0FFFFFFF0
 005BD622    push        esi
 005BD623    mov         byte ptr [ebp-6],cl
 005BD626    mov         byte ptr [ebp-5],dl
 005BD629    mov         dword ptr [ebp-4],eax
 005BD62C    cmp         byte ptr [ebp-5],0
>005BD630    jne         005BD6B1
 005BD632    mov         eax,dword ptr [ebp-4]
 005BD635    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BD63C    je          005BD6B1
 005BD63E    lea         ecx,[ebp-10]
 005BD641    mov         edx,dword ptr [ebp+8]
 005BD644    mov         eax,dword ptr [ebp+0C]
 005BD647    call        Point
 005BD64C    lea         edx,[ebp-10]
 005BD64F    mov         eax,dword ptr [ebp-4]
 005BD652    call        005BDC80
 005BD657    test        al,al
>005BD659    je          005BD6B1
 005BD65B    mov         eax,dword ptr [ebp-4]
 005BD65E    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BD665    je          005BD677
 005BD667    xor         edx,edx
 005BD669    mov         eax,dword ptr [ebp-4]
 005BD66C    mov         si,0FFB2
 005BD670    call        @CallDynaInst;TInplaceEditList.sub_005BCECC
>005BD675    jmp         005BD6B1
 005BD677    mov         dl,1
 005BD679    mov         eax,dword ptr [ebp-4]
 005BD67C    call        005F3AF0
 005BD681    mov         eax,dword ptr [ebp-4]
 005BD684    mov         byte ptr [eax+25D],1;TInplaceEditList.FTracking:Boolean
 005BD68B    mov         ecx,dword ptr [ebp+8]
 005BD68E    mov         edx,dword ptr [ebp+0C]
 005BD691    mov         eax,dword ptr [ebp-4]
 005BD694    call        005BD9D4
 005BD699    mov         eax,dword ptr [ebp-4]
 005BD69C    cmp         dword ptr [eax+250],0;TInplaceEditList.FActiveList:TWinControl
>005BD6A3    je          005BD6B1
 005BD6A5    mov         eax,dword ptr [ebp-4]
 005BD6A8    mov         si,0FFB0
 005BD6AC    call        @CallDynaInst;TInplaceEditList.sub_005BD27C
 005BD6B1    mov         eax,dword ptr [ebp+0C]
 005BD6B4    push        eax
 005BD6B5    mov         eax,dword ptr [ebp+8]
 005BD6B8    push        eax
 005BD6B9    mov         cl,byte ptr [ebp-6]
 005BD6BC    mov         dl,byte ptr [ebp-5]
 005BD6BF    mov         eax,dword ptr [ebp-4]
 005BD6C2    call        TControl.MouseDown
 005BD6C7    pop         esi
 005BD6C8    mov         esp,ebp
 005BD6CA    pop         ebp
 005BD6CB    ret         8
*}
end;

//005BD6D0
procedure TInplaceEditList.MouseMove(Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005BD6D0    push        ebp
 005BD6D1    mov         ebp,esp
 005BD6D3    add         esp,0FFFFFFC8
 005BD6D6    mov         dword ptr [ebp-0C],ecx
 005BD6D9    mov         byte ptr [ebp-5],dl
 005BD6DC    mov         dword ptr [ebp-4],eax
 005BD6DF    mov         eax,dword ptr [ebp-4]
 005BD6E2    cmp         byte ptr [eax+25D],0;TInplaceEditList.FTracking:Boolean
>005BD6E9    je          005BD795
 005BD6EF    mov         ecx,dword ptr [ebp+8]
 005BD6F2    mov         edx,dword ptr [ebp-0C]
 005BD6F5    mov         eax,dword ptr [ebp-4]
 005BD6F8    call        005BD9D4
 005BD6FD    mov         eax,dword ptr [ebp-4]
 005BD700    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BD707    je          005BD795
 005BD70D    lea         ecx,[ebp-28]
 005BD710    mov         edx,dword ptr [ebp+8]
 005BD713    mov         eax,dword ptr [ebp-0C]
 005BD716    call        Point
 005BD71B    lea         edx,[ebp-28]
 005BD71E    lea         ecx,[ebp-20]
 005BD721    mov         eax,dword ptr [ebp-4]
 005BD724    call        005F3020
 005BD729    lea         edx,[ebp-20]
 005BD72C    lea         ecx,[ebp-14]
 005BD72F    mov         eax,dword ptr [ebp-4]
 005BD732    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD738    call        005F305C
 005BD73D    push        dword ptr [ebp-10]
 005BD740    push        dword ptr [ebp-14]
 005BD743    lea         edx,[ebp-38]
 005BD746    mov         eax,dword ptr [ebp-4]
 005BD749    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD74F    mov         ecx,dword ptr [eax]
 005BD751    call        dword ptr [ecx+44];TWinControl.sub_005FC204
 005BD754    lea         eax,[ebp-38]
 005BD757    push        eax
 005BD758    call        USER32.PtInRect
 005BD75D    test        eax,eax
>005BD75F    je          005BD795
 005BD761    mov         eax,dword ptr [ebp-4]
 005BD764    call        005BD99C
 005BD769    lea         eax,[ebp-14]
 005BD76C    call        0063D074
 005BD771    mov         dword ptr [ebp-18],eax
 005BD774    mov         eax,dword ptr [ebp-18]
 005BD777    push        eax
 005BD778    push        0
 005BD77A    push        201
 005BD77F    mov         eax,dword ptr [ebp-4]
 005BD782    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BD788    call        TWinControl.GetHandle
 005BD78D    push        eax
 005BD78E    call        USER32.SendMessageA
>005BD793    jmp         005BD7A7
 005BD795    mov         eax,dword ptr [ebp+8]
 005BD798    push        eax
 005BD799    mov         ecx,dword ptr [ebp-0C]
 005BD79C    mov         dl,byte ptr [ebp-5]
 005BD79F    mov         eax,dword ptr [ebp-4]
 005BD7A2    call        TControl.MouseMove
 005BD7A7    mov         esp,ebp
 005BD7A9    pop         ebp
 005BD7AA    ret         4
*}
end;

//005BD7B0
procedure TInplaceEditList.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 005BD7B0    push        ebp
 005BD7B1    mov         ebp,esp
 005BD7B3    add         esp,0FFFFFFF8
 005BD7B6    mov         byte ptr [ebp-6],cl
 005BD7B9    mov         byte ptr [ebp-5],dl
 005BD7BC    mov         dword ptr [ebp-4],eax
 005BD7BF    mov         eax,dword ptr [ebp-4]
 005BD7C2    mov         al,byte ptr [eax+25E];TInplaceEditList.FPressed:Boolean
 005BD7C8    mov         byte ptr [ebp-7],al
 005BD7CB    mov         eax,dword ptr [ebp-4]
 005BD7CE    call        005BD99C
 005BD7D3    cmp         byte ptr [ebp-5],0
>005BD7D7    jne         005BD7F6
 005BD7D9    mov         eax,dword ptr [ebp-4]
 005BD7DC    cmp         byte ptr [eax+254],1;TInplaceEditList.FEditStyle:TEditStyle
>005BD7E3    jne         005BD7F6
 005BD7E5    cmp         byte ptr [ebp-7],0
>005BD7E9    je          005BD7F6
 005BD7EB    mov         eax,dword ptr [ebp-4]
 005BD7EE    mov         edx,dword ptr [eax]
 005BD7F0    call        dword ptr [edx+104];TInplaceEditList.sub_005BD13C
 005BD7F6    mov         eax,dword ptr [ebp+0C]
 005BD7F9    push        eax
 005BD7FA    mov         eax,dword ptr [ebp+8]
 005BD7FD    push        eax
 005BD7FE    mov         cl,byte ptr [ebp-6]
 005BD801    mov         dl,byte ptr [ebp-5]
 005BD804    mov         eax,dword ptr [ebp-4]
 005BD807    call        TControl.MouseUp
 005BD80C    pop         ecx
 005BD80D    pop         ecx
 005BD80E    pop         ebp
 005BD80F    ret         8
*}
end;

//005BD814
{*procedure sub_005BD814(?:?);
begin
 005BD814    push        ebp
 005BD815    mov         ebp,esp
 005BD817    add         esp,0FFFFFFD8
 005BD81A    mov         dword ptr [ebp-8],edx
 005BD81D    mov         dword ptr [ebp-4],eax
 005BD820    mov         eax,dword ptr [ebp-4]
 005BD823    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BD82A    je          005BD98B
 005BD830    lea         edx,[ebp-28]
 005BD833    mov         eax,dword ptr [ebp-4]
 005BD836    call        005BDC10
 005BD83B    xor         eax,eax
 005BD83D    mov         dword ptr [ebp-0C],eax
 005BD840    mov         eax,dword ptr [ebp-4]
 005BD843    mov         al,byte ptr [eax+254];TInplaceEditList.FEditStyle:TEditStyle
 005BD849    dec         al
>005BD84B    je          005BD898
 005BD84D    dec         al
>005BD84F    jne         005BD972
 005BD855    mov         eax,dword ptr [ebp-4]
 005BD858    cmp         dword ptr [eax+250],0;TInplaceEditList.FActiveList:TWinControl
>005BD85F    jne         005BD86A
 005BD861    mov         dword ptr [ebp-0C],100
>005BD868    jmp         005BD87D
 005BD86A    mov         eax,dword ptr [ebp-4]
 005BD86D    cmp         byte ptr [eax+25E],0;TInplaceEditList.FPressed:Boolean
>005BD874    je          005BD87D
 005BD876    mov         dword ptr [ebp-0C],4200
 005BD87D    mov         eax,dword ptr [ebp-0C]
 005BD880    or          eax,5
 005BD883    push        eax
 005BD884    push        3
 005BD886    lea         eax,[ebp-28]
 005BD889    push        eax
 005BD88A    mov         eax,dword ptr [ebp-8]
 005BD88D    push        eax
 005BD88E    call        USER32.DrawFrameControl
>005BD893    jmp         005BD972
 005BD898    mov         eax,dword ptr [ebp-4]
 005BD89B    cmp         byte ptr [eax+25E],0;TInplaceEditList.FPressed:Boolean
>005BD8A2    je          005BD8AB
 005BD8A4    mov         dword ptr [ebp-0C],4000
 005BD8AB    mov         eax,dword ptr [ebp-0C]
 005BD8AE    or          eax,80F
 005BD8B3    push        eax
 005BD8B4    push        5
 005BD8B6    lea         eax,[ebp-28]
 005BD8B9    push        eax
 005BD8BA    mov         eax,dword ptr [ebp-8]
 005BD8BD    push        eax
 005BD8BE    call        USER32.DrawEdge
 005BD8C3    mov         eax,dword ptr [ebp-20]
 005BD8C6    sub         eax,dword ptr [ebp-28]
 005BD8C9    shr         eax,1
 005BD8CB    add         eax,dword ptr [ebp-28]
 005BD8CE    dec         eax
 005BD8CF    mov         edx,dword ptr [ebp-4]
 005BD8D2    movzx       edx,byte ptr [edx+25E];TInplaceEditList.FPressed:Boolean
 005BD8D9    add         eax,edx
 005BD8DB    mov         dword ptr [ebp-14],eax
 005BD8DE    mov         eax,dword ptr [ebp-1C]
 005BD8E1    sub         eax,dword ptr [ebp-24]
 005BD8E4    shr         eax,1
 005BD8E6    add         eax,dword ptr [ebp-24]
 005BD8E9    dec         eax
 005BD8EA    mov         edx,dword ptr [ebp-4]
 005BD8ED    movzx       edx,byte ptr [edx+25E];TInplaceEditList.FPressed:Boolean
 005BD8F4    add         eax,edx
 005BD8F6    mov         dword ptr [ebp-18],eax
 005BD8F9    mov         eax,dword ptr [ebp-4]
 005BD8FC    mov         eax,dword ptr [eax+248];TInplaceEditList.FButtonWidth:Integer
 005BD902    shr         eax,3
 005BD905    mov         dword ptr [ebp-10],eax
 005BD908    cmp         dword ptr [ebp-10],0
>005BD90C    jne         005BD915
 005BD90E    mov         dword ptr [ebp-10],1
 005BD915    push        42
 005BD917    mov         eax,dword ptr [ebp-10]
 005BD91A    push        eax
 005BD91B    mov         eax,dword ptr [ebp-10]
 005BD91E    push        eax
 005BD91F    mov         eax,dword ptr [ebp-18]
 005BD922    push        eax
 005BD923    mov         eax,dword ptr [ebp-14]
 005BD926    push        eax
 005BD927    mov         eax,dword ptr [ebp-8]
 005BD92A    push        eax
 005BD92B    call        GDI32.PatBlt
 005BD930    push        42
 005BD932    mov         eax,dword ptr [ebp-10]
 005BD935    push        eax
 005BD936    mov         eax,dword ptr [ebp-10]
 005BD939    push        eax
 005BD93A    mov         eax,dword ptr [ebp-18]
 005BD93D    push        eax
 005BD93E    mov         eax,dword ptr [ebp-10]
 005BD941    add         eax,eax
 005BD943    mov         edx,dword ptr [ebp-14]
 005BD946    sub         edx,eax
 005BD948    push        edx
 005BD949    mov         eax,dword ptr [ebp-8]
 005BD94C    push        eax
 005BD94D    call        GDI32.PatBlt
 005BD952    push        42
 005BD954    mov         eax,dword ptr [ebp-10]
 005BD957    push        eax
 005BD958    mov         eax,dword ptr [ebp-10]
 005BD95B    push        eax
 005BD95C    mov         eax,dword ptr [ebp-18]
 005BD95F    push        eax
 005BD960    mov         eax,dword ptr [ebp-10]
 005BD963    add         eax,eax
 005BD965    add         eax,dword ptr [ebp-14]
 005BD968    push        eax
 005BD969    mov         eax,dword ptr [ebp-8]
 005BD96C    push        eax
 005BD96D    call        GDI32.PatBlt
 005BD972    mov         eax,dword ptr [ebp-1C]
 005BD975    push        eax
 005BD976    mov         eax,dword ptr [ebp-20]
 005BD979    push        eax
 005BD97A    mov         eax,dword ptr [ebp-24]
 005BD97D    push        eax
 005BD97E    mov         eax,dword ptr [ebp-28]
 005BD981    push        eax
 005BD982    mov         eax,dword ptr [ebp-8]
 005BD985    push        eax
 005BD986    call        GDI32.ExcludeClipRect
 005BD98B    mov         edx,dword ptr [ebp-8]
 005BD98E    mov         eax,dword ptr [ebp-4]
 005BD991    call        005F92E0
 005BD996    mov         esp,ebp
 005BD998    pop         ebp
 005BD999    ret
end;*}

//005BD99C
{*procedure sub_005BD99C(?:TInplaceEditList; ?:?; ?:TWinControl);
begin
 005BD99C    push        ebp
 005BD99D    mov         ebp,esp
 005BD99F    push        ecx
 005BD9A0    mov         dword ptr [ebp-4],eax
 005BD9A3    mov         eax,dword ptr [ebp-4]
 005BD9A6    cmp         byte ptr [eax+25D],0;TInplaceEditList.FTracking:Boolean
>005BD9AD    je          005BD9D1
 005BD9AF    or          ecx,0FFFFFFFF
 005BD9B2    or          edx,0FFFFFFFF
 005BD9B5    mov         eax,dword ptr [ebp-4]
 005BD9B8    call        005BD9D4
 005BD9BD    mov         eax,dword ptr [ebp-4]
 005BD9C0    mov         byte ptr [eax+25D],0;TInplaceEditList.FTracking:Boolean
 005BD9C7    xor         edx,edx
 005BD9C9    mov         eax,dword ptr [ebp-4]
 005BD9CC    call        005F3AF0
 005BD9D1    pop         ecx
 005BD9D2    pop         ebp
 005BD9D3    ret
end;*}

//005BD9D4
{*procedure sub_005BD9D4(?:TInplaceEditList; ?:?; ?:?);
begin
 005BD9D4    push        ebp
 005BD9D5    mov         ebp,esp
 005BD9D7    add         esp,0FFFFFFD8
 005BD9DA    mov         dword ptr [ebp-0C],ecx
 005BD9DD    mov         dword ptr [ebp-8],edx
 005BD9E0    mov         dword ptr [ebp-4],eax
 005BD9E3    lea         edx,[ebp-1D]
 005BD9E6    mov         eax,dword ptr [ebp-4]
 005BD9E9    call        005BDC10
 005BD9EE    lea         ecx,[ebp-28]
 005BD9F1    mov         edx,dword ptr [ebp-0C]
 005BD9F4    mov         eax,dword ptr [ebp-8]
 005BD9F7    call        Point
 005BD9FC    push        dword ptr [ebp-24]
 005BD9FF    push        dword ptr [ebp-28]
 005BDA02    lea         eax,[ebp-1D]
 005BDA05    push        eax
 005BDA06    call        USER32.PtInRect
 005BDA0B    cmp         eax,1
 005BDA0E    sbb         eax,eax
 005BDA10    inc         eax
 005BDA11    mov         byte ptr [ebp-0D],al
 005BDA14    mov         eax,dword ptr [ebp-4]
 005BDA17    mov         al,byte ptr [eax+25E];TInplaceEditList.FPressed:Boolean
 005BDA1D    cmp         al,byte ptr [ebp-0D]
>005BDA20    je          005BDA42
 005BDA22    mov         al,byte ptr [ebp-0D]
 005BDA25    mov         edx,dword ptr [ebp-4]
 005BDA28    mov         byte ptr [edx+25E],al;TInplaceEditList.FPressed:Boolean
 005BDA2E    push        0
 005BDA30    lea         eax,[ebp-1D]
 005BDA33    push        eax
 005BDA34    mov         eax,dword ptr [ebp-4]
 005BDA37    call        TWinControl.GetHandle
 005BDA3C    push        eax
 005BDA3D    call        USER32.InvalidateRect
 005BDA42    mov         esp,ebp
 005BDA44    pop         ebp
 005BDA45    ret
end;*}

//005BDA48
procedure sub_005BDA48;
begin
{*
 005BDA48    push        ebp
 005BDA49    mov         ebp,esp
 005BDA4B    push        ecx
 005BDA4C    push        esi
 005BDA4D    mov         dword ptr [ebp-4],eax
 005BDA50    mov         eax,dword ptr [ebp-4]
 005BDA53    xor         edx,edx
 005BDA55    mov         dword ptr [eax+250],edx;TInplaceEditList.FActiveList:TWinControl
 005BDA5B    mov         eax,dword ptr [ebp-4]
 005BDA5E    mov         byte ptr [eax+25F],0;TInplaceEditList.FPickListLoaded:Boolean
 005BDA65    mov         eax,dword ptr [ebp-4]
 005BDA68    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDA6E    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BDA74    mov         eax,dword ptr [ebp-4]
 005BDA77    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDA7D    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BDA83    mov         eax,dword ptr [ebp-4]
 005BDA86    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDA8C    mov         si,0FFAB
 005BDA90    call        @CallDynaInst;TCustomGrid.sub_005B4A6C
 005BDA95    mov         edx,dword ptr [ebp-4]
 005BDA98    mov         byte ptr [edx+254],al;TInplaceEditList.FEditStyle:TEditStyle
 005BDA9E    mov         eax,dword ptr [ebp-4]
 005BDAA1    cmp         byte ptr [eax+254],2;TInplaceEditList.FEditStyle:TEditStyle
>005BDAA8    jne         005BDABB
 005BDAAA    mov         eax,dword ptr [ebp-4]
 005BDAAD    call        005BD1F4
 005BDAB2    mov         edx,dword ptr [ebp-4]
 005BDAB5    mov         dword ptr [edx+250],eax;TInplaceEditList.FActiveList:TWinControl
 005BDABB    mov         eax,dword ptr [ebp-4]
 005BDABE    call        005B4224
 005BDAC3    pop         esi
 005BDAC4    pop         ecx
 005BDAC5    pop         ebp
 005BDAC6    ret
*}
end;

//005BDAC8
{*procedure sub_005BDAC8(?:?);
begin
 005BDAC8    push        ebp
 005BDAC9    mov         ebp,esp
 005BDACB    push        ecx
 005BDACC    mov         dword ptr [ebp-4],eax
 005BDACF    mov         eax,dword ptr [ebp-4]
 005BDAD2    mov         edx,dword ptr [eax]
 005BDAD4    call        dword ptr [edx+0E8]
 005BDADA    mov         eax,dword ptr [ebp-4]
 005BDADD    mov         eax,dword ptr [eax+240]
 005BDAE3    call        TCustomGrid.UpdateText
 005BDAE8    pop         ecx
 005BDAE9    pop         ebp
 005BDAEA    ret
end;*}

//005BDAEC
{*procedure TInplaceEditList.CMCancelMode(?:?);
begin
 005BDAEC    push        ebp
 005BDAED    mov         ebp,esp
 005BDAEF    add         esp,0FFFFFFF8
 005BDAF2    push        esi
 005BDAF3    mov         dword ptr [ebp-8],edx
 005BDAF6    mov         dword ptr [ebp-4],eax
 005BDAF9    mov         eax,dword ptr [ebp-8]
 005BDAFC    mov         eax,dword ptr [eax+8]
 005BDAFF    cmp         eax,dword ptr [ebp-4]
>005BDB02    je          005BDB23
 005BDB04    mov         eax,dword ptr [ebp-8]
 005BDB07    mov         eax,dword ptr [eax+8]
 005BDB0A    mov         edx,dword ptr [ebp-4]
 005BDB0D    cmp         eax,dword ptr [edx+250];TInplaceEditList.FActiveList:TWinControl
>005BDB13    je          005BDB23
 005BDB15    xor         edx,edx
 005BDB17    mov         eax,dword ptr [ebp-4]
 005BDB1A    mov         si,0FFB2
 005BDB1E    call        @CallDynaInst;TInplaceEditList.sub_005BCECC
 005BDB23    pop         esi
 005BDB24    pop         ecx
 005BDB25    pop         ecx
 005BDB26    pop         ebp
 005BDB27    ret
end;*}

//005BDB28
{*procedure TInplaceEditList.WMCancelMode(?:?);
begin
 005BDB28    push        ebp
 005BDB29    mov         ebp,esp
 005BDB2B    add         esp,0FFFFFFF8
 005BDB2E    mov         dword ptr [ebp-8],edx
 005BDB31    mov         dword ptr [ebp-4],eax
 005BDB34    mov         eax,dword ptr [ebp-4]
 005BDB37    call        005BD99C
 005BDB3C    mov         edx,dword ptr [ebp-8]
 005BDB3F    mov         eax,dword ptr [ebp-4]
 005BDB42    call        TControl.WMCancelMode
 005BDB47    pop         ecx
 005BDB48    pop         ecx
 005BDB49    pop         ebp
 005BDB4A    ret
end;*}

//005BDB4C
{*procedure TInplaceEditList.WMKillFocus(?:?);
begin
 005BDB4C    push        ebp
 005BDB4D    mov         ebp,esp
 005BDB4F    add         esp,0FFFFFFF4
 005BDB52    push        esi
 005BDB53    xor         ecx,ecx
 005BDB55    mov         dword ptr [ebp-0C],ecx
 005BDB58    mov         dword ptr [ebp-8],edx
 005BDB5B    mov         dword ptr [ebp-4],eax
 005BDB5E    xor         eax,eax
 005BDB60    push        ebp
 005BDB61    push        5BDC04
 005BDB66    push        dword ptr fs:[eax]
 005BDB69    mov         dword ptr fs:[eax],esp
 005BDB6C    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005BDB71    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005BDB75    jne         005BDB84
 005BDB77    mov         edx,dword ptr [ebp-8]
 005BDB7A    mov         eax,dword ptr [ebp-4]
 005BDB7D    call        TWinControl.WMKillFocus
>005BDB82    jmp         005BDBE0
 005BDB84    lea         edx,[ebp-0C]
 005BDB87    mov         eax,[006E9DD0];^Screen:TScreen
 005BDB8C    mov         eax,dword ptr [eax]
 005BDB8E    call        005D5D0C
 005BDB93    mov         edx,dword ptr [ebp-0C]
 005BDB96    mov         eax,dword ptr [ebp-4]
 005BDB99    add         eax,188;TInplaceEditList.FImeName:TImeName
 005BDB9E    call        @LStrAsg
 005BDBA3    mov         eax,dword ptr [ebp-4]
 005BDBA6    mov         byte ptr [eax+184],3;TInplaceEditList.FImeMode:TImeMode
 005BDBAD    mov         edx,dword ptr [ebp-8]
 005BDBB0    mov         eax,dword ptr [ebp-4]
 005BDBB3    call        TWinControl.WMKillFocus
 005BDBB8    mov         eax,dword ptr [ebp-4]
 005BDBBB    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDBC1    call        TWinControl.GetHandle
 005BDBC6    mov         edx,dword ptr [ebp-8]
 005BDBC9    cmp         eax,dword ptr [edx+4]
>005BDBCC    je          005BDBE0
 005BDBCE    push        1
 005BDBD0    mov         eax,[006E9DD0];^Screen:TScreen
 005BDBD5    mov         eax,dword ptr [eax]
 005BDBD7    mov         eax,dword ptr [eax+3C];TScreen.FDefaultKbLayout:HKL
 005BDBDA    push        eax
 005BDBDB    call        USER32.ActivateKeyboardLayout
 005BDBE0    xor         edx,edx
 005BDBE2    mov         eax,dword ptr [ebp-4]
 005BDBE5    mov         si,0FFB2
 005BDBE9    call        @CallDynaInst;TInplaceEditList.sub_005BCECC
 005BDBEE    xor         eax,eax
 005BDBF0    pop         edx
 005BDBF1    pop         ecx
 005BDBF2    pop         ecx
 005BDBF3    mov         dword ptr fs:[eax],edx
 005BDBF6    push        5BDC0B
 005BDBFB    lea         eax,[ebp-0C]
 005BDBFE    call        @LStrClr
 005BDC03    ret
>005BDC04    jmp         @HandleFinally
>005BDC09    jmp         005BDBFB
 005BDC0B    pop         esi
 005BDC0C    mov         esp,ebp
 005BDC0E    pop         ebp
 005BDC0F    ret
end;*}

//005BDC10
{*procedure sub_005BDC10(?:TInplaceEditList; ?:?);
begin
 005BDC10    push        ebp
 005BDC11    mov         ebp,esp
 005BDC13    add         esp,0FFFFFFF8
 005BDC16    push        esi
 005BDC17    mov         dword ptr [ebp-8],edx
 005BDC1A    mov         dword ptr [ebp-4],eax
 005BDC1D    mov         eax,dword ptr [ebp-4]
 005BDC20    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDC26    mov         si,0FFC8
 005BDC2A    call        @CallDynaInst;TControl.sub_005F40CC
 005BDC2F    test        al,al
>005BDC31    jne         005BDC5C
 005BDC33    mov         eax,dword ptr [ebp-4]
 005BDC36    mov         eax,dword ptr [eax+4C];TInplaceEditList.Height:Integer
 005BDC39    push        eax
 005BDC3A    mov         eax,dword ptr [ebp-8]
 005BDC3D    push        eax
 005BDC3E    mov         eax,dword ptr [ebp-4]
 005BDC41    mov         eax,dword ptr [eax+48];TInplaceEditList.Width:Integer
 005BDC44    mov         edx,dword ptr [ebp-4]
 005BDC47    sub         eax,dword ptr [edx+248]
 005BDC4D    mov         edx,dword ptr [ebp-4]
 005BDC50    mov         ecx,dword ptr [edx+48];TInplaceEditList.Width:Integer
 005BDC53    xor         edx,edx
 005BDC55    call        Rect
>005BDC5A    jmp         005BDC79
 005BDC5C    mov         eax,dword ptr [ebp-4]
 005BDC5F    mov         eax,dword ptr [eax+4C];TInplaceEditList.Height:Integer
 005BDC62    push        eax
 005BDC63    mov         eax,dword ptr [ebp-8]
 005BDC66    push        eax
 005BDC67    mov         eax,dword ptr [ebp-4]
 005BDC6A    mov         ecx,dword ptr [eax+248];TInplaceEditList.FButtonWidth:Integer
 005BDC70    xor         edx,edx
 005BDC72    xor         eax,eax
 005BDC74    call        Rect
 005BDC79    pop         esi
 005BDC7A    pop         ecx
 005BDC7B    pop         ecx
 005BDC7C    pop         ebp
 005BDC7D    ret
end;*}

//005BDC80
{*function sub_005BDC80(?:TInplaceEditList; ?:?):?;
begin
 005BDC80    push        ebp
 005BDC81    mov         ebp,esp
 005BDC83    add         esp,0FFFFFFE4
 005BDC86    mov         dword ptr [ebp-8],edx
 005BDC89    mov         dword ptr [ebp-4],eax
 005BDC8C    mov         eax,dword ptr [ebp-8]
 005BDC8F    push        dword ptr [eax+4]
 005BDC92    push        dword ptr [eax]
 005BDC94    lea         edx,[ebp-1C]
 005BDC97    mov         eax,dword ptr [ebp-4]
 005BDC9A    call        005BDC10
 005BDC9F    lea         eax,[ebp-1C]
 005BDCA2    push        eax
 005BDCA3    call        USER32.PtInRect
 005BDCA8    cmp         eax,1
 005BDCAB    sbb         eax,eax
 005BDCAD    inc         eax
 005BDCAE    mov         byte ptr [ebp-9],al
 005BDCB1    mov         al,byte ptr [ebp-9]
 005BDCB4    mov         esp,ebp
 005BDCB6    pop         ebp
 005BDCB7    ret
end;*}

//005BDCB8
{*procedure TInplaceEditList.WMLButtonDblClk(?:?);
begin
 005BDCB8    push        ebp
 005BDCB9    mov         ebp,esp
 005BDCBB    add         esp,0FFFFFFF0
 005BDCBE    mov         dword ptr [ebp-8],edx
 005BDCC1    mov         dword ptr [ebp-4],eax
 005BDCC4    mov         eax,dword ptr [ebp-4]
 005BDCC7    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BDCCE    je          005BDCF5
 005BDCD0    lea         ecx,[ebp-10]
 005BDCD3    mov         edx,dword ptr [ebp-8]
 005BDCD6    movsx       edx,word ptr [edx+0A]
 005BDCDA    mov         eax,dword ptr [ebp-8]
 005BDCDD    movsx       eax,word ptr [eax+8]
 005BDCE1    call        Point
 005BDCE6    lea         edx,[ebp-10]
 005BDCE9    mov         eax,dword ptr [ebp-4]
 005BDCEC    call        005BDC80
 005BDCF1    test        al,al
>005BDCF3    jne         005BDD00
 005BDCF5    mov         edx,dword ptr [ebp-8]
 005BDCF8    mov         eax,dword ptr [ebp-4]
 005BDCFB    call        TControl.WMLButtonDblClk
 005BDD00    mov         esp,ebp
 005BDD02    pop         ebp
 005BDD03    ret
end;*}

//005BDD04
procedure TInplaceEditList.WMPaint(Message:TWMPaint);
begin
{*
 005BDD04    push        ebp
 005BDD05    mov         ebp,esp
 005BDD07    add         esp,0FFFFFFF8
 005BDD0A    mov         dword ptr [ebp-8],edx
 005BDD0D    mov         dword ptr [ebp-4],eax
 005BDD10    mov         edx,dword ptr [ebp-8]
 005BDD13    mov         eax,dword ptr [ebp-4]
 005BDD16    call        TWinControl.PaintHandler
 005BDD1B    pop         ecx
 005BDD1C    pop         ecx
 005BDD1D    pop         ebp
 005BDD1E    ret
*}
end;

//005BDD20
{*procedure TInplaceEditList.WMSetCursor(?:?);
begin
 005BDD20    push        ebp
 005BDD21    mov         ebp,esp
 005BDD23    add         esp,0FFFFFFE8
 005BDD26    mov         dword ptr [ebp-8],edx
 005BDD29    mov         dword ptr [ebp-4],eax
 005BDD2C    lea         eax,[ebp-10]
 005BDD2F    push        eax
 005BDD30    call        USER32.GetCursorPos
 005BDD35    lea         ecx,[ebp-18]
 005BDD38    lea         edx,[ebp-10]
 005BDD3B    mov         eax,dword ptr [ebp-4]
 005BDD3E    call        005F305C
 005BDD43    mov         eax,dword ptr [ebp-18]
 005BDD46    mov         dword ptr [ebp-10],eax
 005BDD49    mov         eax,dword ptr [ebp-14]
 005BDD4C    mov         dword ptr [ebp-0C],eax
 005BDD4F    mov         eax,dword ptr [ebp-4]
 005BDD52    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BDD59    je          005BDD7E
 005BDD5B    lea         edx,[ebp-10]
 005BDD5E    mov         eax,dword ptr [ebp-4]
 005BDD61    call        005BDC80
 005BDD66    test        al,al
>005BDD68    je          005BDD7E
 005BDD6A    push        7F00
 005BDD6F    push        0
 005BDD71    call        USER32.LoadCursorA
 005BDD76    push        eax
 005BDD77    call        USER32.SetCursor
>005BDD7C    jmp         005BDD89
 005BDD7E    mov         edx,dword ptr [ebp-8]
 005BDD81    mov         eax,dword ptr [ebp-4]
 005BDD84    call        TWinControl.WMSetCursor
 005BDD89    mov         esp,ebp
 005BDD8B    pop         ebp
 005BDD8C    ret
end;*}

//005BDD90
{*procedure sub_005BDD90(?:?);
begin
 005BDD90    push        ebp
 005BDD91    mov         ebp,esp
 005BDD93    add         esp,0FFFFFFF8
 005BDD96    push        ebx
 005BDD97    mov         dword ptr [ebp-8],edx
 005BDD9A    mov         dword ptr [ebp-4],eax
 005BDD9D    mov         eax,dword ptr [ebp-8]
 005BDDA0    mov         eax,dword ptr [eax]
 005BDDA2    sub         eax,100
>005BDDA7    je          005BDDB3
 005BDDA9    sub         eax,2
>005BDDAC    je          005BDDB3
 005BDDAE    sub         eax,2
>005BDDB1    jne         005BDE1D
 005BDDB3    mov         eax,dword ptr [ebp-4]
 005BDDB6    cmp         byte ptr [eax+254],2;TInplaceEditList.FEditStyle:TEditStyle
>005BDDBD    jne         005BDE1D
 005BDDBF    mov         eax,dword ptr [ebp-8]
 005BDDC2    mov         eax,dword ptr [eax+8]
 005BDDC5    call        005CCF08
 005BDDCA    mov         ecx,eax
 005BDDCC    mov         edx,dword ptr [ebp-8]
 005BDDCF    add         edx,4
 005BDDD2    mov         eax,dword ptr [ebp-4]
 005BDDD5    mov         ebx,dword ptr [eax]
 005BDDD7    call        dword ptr [ebx+100];TInplaceEditList.sub_005BD0A0
 005BDDDD    mov         eax,dword ptr [ebp-8]
 005BDDE0    cmp         word ptr [eax+4],0
>005BDDE5    je          005BDE1D
 005BDDE7    mov         eax,dword ptr [ebp-4]
 005BDDEA    cmp         byte ptr [eax+25C],0;TInplaceEditList.FListVisible:Boolean
>005BDDF1    je          005BDE1D
 005BDDF3    mov         eax,dword ptr [ebp-8]
 005BDDF6    mov         eax,dword ptr [eax+8]
 005BDDF9    push        eax
 005BDDFA    mov         eax,dword ptr [ebp-8]
 005BDDFD    mov         eax,dword ptr [eax+4]
 005BDE00    push        eax
 005BDE01    mov         eax,dword ptr [ebp-8]
 005BDE04    mov         eax,dword ptr [eax]
 005BDE06    push        eax
 005BDE07    mov         eax,dword ptr [ebp-4]
 005BDE0A    mov         eax,dword ptr [eax+250];TInplaceEditList.FActiveList:TWinControl
 005BDE10    call        TWinControl.GetHandle
 005BDE15    push        eax
 005BDE16    call        USER32.SendMessageA
>005BDE1B    jmp         005BDE28
 005BDE1D    mov         edx,dword ptr [ebp-8]
 005BDE20    mov         eax,dword ptr [ebp-4]
 005BDE23    call        005B3EE8
 005BDE28    pop         ebx
 005BDE29    pop         ecx
 005BDE2A    pop         ecx
 005BDE2B    pop         ebp
 005BDE2C    ret
end;*}

//005BDE30
procedure TInplaceEditList.sub_005B3910;
begin
{*
 005BDE30    push        ebp
 005BDE31    mov         ebp,esp
 005BDE33    add         esp,0FFFFFFF0
 005BDE36    push        ebx
 005BDE37    push        esi
 005BDE38    xor         edx,edx
 005BDE3A    mov         dword ptr [ebp-0C],edx
 005BDE3D    mov         dword ptr [ebp-4],eax
 005BDE40    xor         eax,eax
 005BDE42    push        ebp
 005BDE43    push        5BDFB6
 005BDE48    push        dword ptr fs:[eax]
 005BDE4B    mov         dword ptr fs:[eax],esp
 005BDE4E    mov         eax,dword ptr [ebp-4]
 005BDE51    cmp         byte ptr [eax+254],0;TInplaceEditList.FEditStyle:TEditStyle
>005BDE58    je          005BDE6D
 005BDE5A    mov         eax,dword ptr [ebp-4]
 005BDE5D    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDE63    cmp         word ptr [eax+12A],0;TCustomGrid.?f12A:word
>005BDE6B    je          005BDE7A
 005BDE6D    mov         eax,dword ptr [ebp-4]
 005BDE70    call        TInplaceEdit.sub_005B3910
>005BDE75    jmp         005BDFA0
 005BDE7A    mov         eax,dword ptr [ebp-4]
 005BDE7D    cmp         byte ptr [eax+254],2;TInplaceEditList.FEditStyle:TEditStyle
>005BDE84    jne         005BDF89
 005BDE8A    mov         eax,dword ptr [ebp-4]
 005BDE8D    call        005BD1F4
 005BDE92    mov         edx,dword ptr [ebp-4]
 005BDE95    cmp         eax,dword ptr [edx+250];TInplaceEditList.FActiveList:TWinControl
>005BDE9B    jne         005BDF89
 005BDEA1    mov         eax,dword ptr [ebp-4]
 005BDEA4    mov         si,0FFB1
 005BDEA8    call        @CallDynaInst;TInplaceEditList.sub_005BD170
 005BDEAD    mov         eax,dword ptr [ebp-4]
 005BDEB0    call        005BD1F4
 005BDEB5    mov         eax,dword ptr [eax+218]
 005BDEBB    mov         edx,dword ptr [eax]
 005BDEBD    call        dword ptr [edx+14]
 005BDEC0    test        eax,eax
>005BDEC2    jle         005BDFA0
 005BDEC8    mov         eax,dword ptr [ebp-4]
 005BDECB    call        005BD1F4
 005BDED0    mov         edx,dword ptr [eax]
 005BDED2    call        dword ptr [edx+0C8]
 005BDED8    inc         eax
 005BDED9    mov         dword ptr [ebp-8],eax
 005BDEDC    mov         eax,dword ptr [ebp-4]
 005BDEDF    call        005BD1F4
 005BDEE4    mov         eax,dword ptr [eax+218]
 005BDEEA    mov         edx,dword ptr [eax]
 005BDEEC    call        dword ptr [edx+14]
 005BDEEF    cmp         eax,dword ptr [ebp-8]
>005BDEF2    jg          005BDEF9
 005BDEF4    xor         eax,eax
 005BDEF6    mov         dword ptr [ebp-8],eax
 005BDEF9    mov         eax,dword ptr [ebp-4]
 005BDEFC    call        005BD1F4
 005BDF01    mov         edx,dword ptr [ebp-8]
 005BDF04    mov         ecx,dword ptr [eax]
 005BDF06    call        dword ptr [ecx+0CC]
 005BDF0C    mov         eax,dword ptr [ebp-4]
 005BDF0F    call        005BD1F4
 005BDF14    mov         edx,dword ptr [eax]
 005BDF16    call        dword ptr [edx+0C8]
 005BDF1C    push        eax
 005BDF1D    mov         eax,dword ptr [ebp-4]
 005BDF20    call        005BD1F4
 005BDF25    mov         eax,dword ptr [eax+218]
 005BDF2B    lea         ecx,[ebp-0C]
 005BDF2E    pop         edx
 005BDF2F    mov         ebx,dword ptr [eax]
 005BDF31    call        dword ptr [ebx+0C]
 005BDF34    mov         eax,dword ptr [ebp-0C]
 005BDF37    push        eax
 005BDF38    xor         ecx,ecx
 005BDF3A    mov         edx,0C
 005BDF3F    mov         eax,dword ptr [ebp-4]
 005BDF42    call        005F4FA8
 005BDF47    mov         dl,1
 005BDF49    mov         eax,dword ptr [ebp-4]
 005BDF4C    call        TCustomEdit.SetModified
 005BDF51    mov         eax,dword ptr [ebp-4]
 005BDF54    mov         eax,dword ptr [eax+240];TInplaceEditList.FGrid:TCustomGrid
 005BDF5A    mov         dword ptr [ebp-10],eax
 005BDF5D    mov         eax,dword ptr [ebp-0C]
 005BDF60    push        eax
 005BDF61    mov         eax,dword ptr [ebp-10]
 005BDF64    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 005BDF6A    mov         eax,dword ptr [ebp-10]
 005BDF6D    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 005BDF73    mov         eax,dword ptr [ebp-10]
 005BDF76    mov         si,0FFAE
 005BDF7A    call        @CallDynaInst;TCustomGrid.sub_005B4A3C
 005BDF7F    mov         eax,dword ptr [ebp-4]
 005BDF82    call        0059901C
>005BDF87    jmp         005BDFA0
 005BDF89    mov         eax,dword ptr [ebp-4]
 005BDF8C    cmp         byte ptr [eax+254],1;TInplaceEditList.FEditStyle:TEditStyle
>005BDF93    jne         005BDFA0
 005BDF95    mov         eax,dword ptr [ebp-4]
 005BDF98    mov         edx,dword ptr [eax]
 005BDF9A    call        dword ptr [edx+104];TInplaceEditList.sub_005BD13C
 005BDFA0    xor         eax,eax
 005BDFA2    pop         edx
 005BDFA3    pop         ecx
 005BDFA4    pop         ecx
 005BDFA5    mov         dword ptr fs:[eax],edx
 005BDFA8    push        5BDFBD
 005BDFAD    lea         eax,[ebp-0C]
 005BDFB0    call        @LStrClr
 005BDFB5    ret
>005BDFB6    jmp         @HandleFinally
>005BDFBB    jmp         005BDFAD
 005BDFBD    pop         esi
 005BDFBE    pop         ebx
 005BDFBF    mov         esp,ebp
 005BDFC1    pop         ebp
 005BDFC2    ret
*}
end;

//005BDFC4
procedure Finalization;
begin
{*
 005BDFC4    push        ebp
 005BDFC5    mov         ebp,esp
 005BDFC7    xor         eax,eax
 005BDFC9    push        ebp
 005BDFCA    push        5BDFE9
 005BDFCF    push        dword ptr fs:[eax]
 005BDFD2    mov         dword ptr fs:[eax],esp
 005BDFD5    inc         dword ptr ds:[6ECD18]
 005BDFDB    xor         eax,eax
 005BDFDD    pop         edx
 005BDFDE    pop         ecx
 005BDFDF    pop         ecx
 005BDFE0    mov         dword ptr fs:[eax],edx
 005BDFE3    push        5BDFF0
 005BDFE8    ret
>005BDFE9    jmp         @HandleFinally
>005BDFEE    jmp         005BDFE8
 005BDFF0    pop         ebp
 005BDFF1    ret
*}
end;

end.