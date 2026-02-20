//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Menus;

interface

uses
  SysUtils, Classes, Menus, Graphics, ImgList, ;

type
  EMenuError = class(Exception)
  end;
  TMenuBreak = (mbNone, mbBreak, mbBarBreak);
  TMenuChangeEvent = procedure(Sender:TObject; Source:TMenuItem; Rebuild:Boolean) of object;;
  TMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; Selected:Boolean) of object;;
  TAdvancedMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState) of object;;
  TMenuMeasureItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; var Width:Integer; var Height:Integer) of object;;
  TMenuItemAutoFlag = (maAutomatic, maManual, maParent);
  TMenuAutoFlag = (maAutomatic, maManual);
  TMenuActionLink = class(TActionLink)
  public
    .......................FClient:TMenuItem;//f18
    //procedure v0(?:?); virtual;//v0//005A3104
    //function v8:?; virtual;//v8//005A33F4
    //procedure v10(?:?; ?:?); virtual;//v10//005A35BC
    //function v20:?; virtual;//v20//005A3160
    //function v24:?; virtual;//v24//005A31AC
    //function v28:?; virtual;//v28//005A31F0
    //function v2C:?; virtual;//v2C//005A32C4
    //function v30:?; virtual;//v30//005A3234
    //function v38:?; virtual;//v38//005A3278
    //function v3C:?; virtual;//v3C//005A3318
    //function v40:?; virtual;//v40//005A3360
    //function v44:?; virtual;//v44//005A33AC
    //procedure v48(?:?); virtual;//v48//005A3430
    //procedure v4C(?:?); virtual;//v4C//005A345C
    //procedure v50(?:?); virtual;//v50//005A3488
    //procedure v54(?:?); virtual;//v54//005A34B4
    //procedure v5C(?:?); virtual;//v5C//005A34E0
    //procedure v68(?:?); virtual;//v68//005A3508
    //procedure v6C(?:?); virtual;//v6C//005A3538
    //procedure v70(?:?); virtual;//v70//005A3564
    //procedure v74(?:?); virtual;//v74//005A3590
    //function v78:?; virtual;//v78//005A3128
  end;
  TMenuItem = class(TComponent)
  public
    Caption:String;//f30
    FHandle:HMENU;//f34
    Checked:Boolean;//f38
    Enabled:Boolean;//f39
    Default:Boolean;//f3A
    AutoHotkeys:TMenuItemAutoFlag;//f3B
    AutoLineReduction:TMenuItemAutoFlag;//f3C
    RadioItem:Boolean;//f3D
    Visible:Boolean;//f3E
    GroupIndex:byte;//f3F
    ImageIndex:TImageIndex;//f40
    FActionLink:TMenuActionLink;//f44
    Break:TMenuBreak;//f48
    FBitmap:TBitmap;//f4C
    FCommand:word;//f50
    HelpContext:THelpContext;//f54
    Hint:String;//f58
    FItems:TList;//f5C
    ShortCut:TShortCut;//f60
    FParent:TMenuItem;//f64
    FMerged:TMenuItem;//f68
    FMergedWith:TMenuItem;//f6C
    FMenu:TMenu;//f70
    FStreamedRebuild:Boolean;//f74
    FImageChangeLink:TChangeLink;//f78
    SubMenuImages:TCustomImageList;//f7C
    FOnChange:TMenuChangeEvent;//f80
    f82:word;//f82
    f84:TMenu;//f84
    OnClick:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:TFMain_11011981;//f8C
    OnDrawItem:TMenuDrawItemEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnAdvancedDrawItem:TAdvancedMenuDrawItemEvent;//f98
    OnMeasureItem:TMenuMeasureItemEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    AutoCheck:Boolean;//fA8
    destructor Destroy; virtual;//005A368C
    procedure AssignTo(Dest:TPersistent); virtual;//v0//005A6588
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005A3E0C
    procedure Loaded; virtual;//vC//005A3BCC
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005A6624
    constructor Create(AOwner:TComponent); virtual;//v2C//005A35EC
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean); virtual;//v30//005A5208
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//005A4094
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//005A53D0
    //procedure v3C(?:?); virtual;//v3C//005A5E94
    procedure v40; virtual;//v40//005A5B70
    procedure v44; virtual;//v44//005A5D14
    procedure sub_005A58C0; dynamic;//005A58C0
    //procedure sub_005A61F0(?:?; ?:?); dynamic;//005A61F0
    procedure sub_005A5620; dynamic;//005A5620
    procedure sub_005A60CC; dynamic;//005A60CC
    //procedure sub_005A6108(?:?); dynamic;//005A6108
    //procedure sub_005A5ABC(?:?; ?:?); dynamic;//005A5ABC
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?); dynamic;//005A5A74
    function GetImageList:TCustomImageList;//005A5320
    procedure SetBreak(Value:TMenuBreak);//005A5634
    procedure SetCaption(Value:String);//005A5664
    procedure SetChecked(Value:Boolean);//005A5710
    procedure SetEnabled(Value:Boolean);//005A5788
    procedure SetGroupIndex(Value:Byte);//005A582C
    //function GetAction:?;//005A5894
    procedure SetShortCut(Value:TShortCut);//005A593C
    procedure SetVisible(Value:Boolean);//005A5970
    procedure SetImageIndex(Value:TImageIndex);//005A59A0
    procedure SetDefault(Value:Boolean);//005A5AE8
    //function GetBitmap:?;//005A5F6C
    procedure SetAction(Value:TBasicAction);//005A5FB0
    procedure SetBitmap(Value:TBitmap);//005A6048
    function GetParentMenu:TMenu;//005A6174
    procedure SetRadioItem(Value:Boolean);//005A61A8
    function IsStoredCaption(Value:String):Boolean;//005A63B4
    function IsStoredChecked(Value:Boolean):Boolean;//005A63E8
    function IsStoredEnabled(Value:Boolean):Boolean;//005A641C
    function IsStoredHint(Value:String):Boolean;//005A6450
    function IsStoredHelpContext(Value:THelpContext):Boolean;//005A6484
    function IsStoredImageIndex(Value:TImageIndex):Boolean;//005A64B8
    function IsStoredShortCut(Value:TShortCut):Boolean;//005A64EC
    function IsStoredVisible(Value:Boolean):Boolean;//005A6520
    function IsStoredOnClick(Value:TNotifyEvent):Boolean;//005A6554
    procedure SetSubMenuImages(Value:TCustomImageList);//005A6690
    procedure SetAutoHotkeys(Value:TMenuItemAutoFlag);//005A6F20
    procedure SetAutoLineReduction(Value:TMenuItemAutoFlag);//005A7118
  end;
  TMenu = class(TComponent)
  public
    FBiDiMode:TBiDiMode;//f30
    Items:TMenuItem;//f34
    FWindowHandle:HWND;//f38
    FMenuImage:String;//f3C
    FOwnerDraw:Boolean;//f40
    FParentBiDiMode:Boolean;//f41
    FImageChangeLink:TChangeLink;//f44
    FImages:TCustomImageList;//f48
    FOnChange:TMenuChangeEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    destructor Destroy; virtual;//005A72B4
    procedure Loaded; virtual;//vC//005A7D20
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005A7E10
    constructor Create(AOwner:TComponent); virtual;//v2C//005A71E8
    //procedure v30(?:?; ?:?); virtual;//v30//005A7CEC
    //function v34:?; virtual;//v34//005A7328
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//005A7D40
    //procedure sub_005A786C(?:?); dynamic;//005A786C
    //procedure sub_005A7348(?:?; ?:?); dynamic;//005A7348
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?); dynamic;//005A72FC
    function IsRightToLeft:Boolean;//005A7E4C
  end;
  TMainMenu = class(TMenu)
  public
    FOle2Menu:HMENU;//f58
    AutoMerge:Boolean;//f5C
    //function v34:?; virtual;//v34//005A85B8
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//005A84AC
    function IsStoredBiDiMode(Value:TBiDiMode):Boolean;//005A7994
    procedure SetOwnerDraw(Value:Boolean);//005A7BF0
    procedure SetImages(Value:TCustomImageList);//005A7DAC
    procedure SetBiDiMode(Value:TBiDiMode);//005A82FC
    procedure SetParentBiDiMode(Value:Boolean);//005A8330
    //function GetAutoHotkeys:?;//005A83D8
    procedure SetAutoHotkeys(Value:TMenuAutoFlag);//005A83FC
    //function GetAutoLineReduction:?;//005A8420
    procedure SetAutoLineReduction(Value:TMenuAutoFlag);//005A8444
    procedure SetAutoMerge(Value:Boolean);//005A8468
  end;
  TPopupAlignment = (paLeft, paRight, paCenter);
  TTrackButton = (tbRightButton, tbLeftButton);
  TMenuAnimations = (maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop, maNone);
  TMenuAnimation = set of TMenuAnimations;
  TPopupMenu = class(TMenu)
  public
    FPopupPoint:TPoint;//f58
    Alignment:TPopupAlignment;//f60
    AutoPopup:Boolean;//f61
    FPopupComponent:TComponent;//f64
    TrackButton:TTrackButton;//f68
    MenuAnimation:TMenuAnimation;//f69
    OnPopup:TNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    destructor Destroy; virtual;//005A8D34
    constructor Create(AOwner:TComponent); virtual;//v2C//005A8C98
    //procedure v3C(?:?); virtual;//v3C//005A8D74
    //procedure v40(?:?; ?:?); virtual;//v40//005A8EA8
    //function GetHelpContext:?;//005A8D9C
    procedure SetHelpContext(Value:THelpContext);//005A8DB8
  end;
  TPopupList = class(TList)
  public
    ....FWindow:HWND;//f10
    //procedure v10(?:?); virtual;//v10//005A863C
  end;
  TMenuItemStack = class(TStack)
  end;
    procedure sub_005A1B74;//005A1B74
    //function sub_005A2A74(?:?):?;//005A2A74
    //function sub_005A2AB8:?;//005A2AB8
    //procedure sub_005A2AC4(?:?);//005A2AC4
    //function sub_005A2AEC(?:?; ?:?):?;//005A2AEC
    //procedure sub_005A2B3C(?:?; ?:AnsiString);//005A2B3C
    //procedure sub_005A2B9C(?:?; ?:?);//005A2B9C
    //function sub_005A2DBC(?:?; ?:AnsiString):?;//005A2DBC
    //function sub_005A2E30(?:?):?;//005A2E30
    //function sub_005A2F4C:?;//005A2F4C
    //function sub_005A2F78(?:?; ?:?; ?:?; ?:?):?;//005A2F78
    //procedure sub_005A2FE4(?:?; ?:TMenuItem; ?:?);//005A2FE4
    //procedure sub_005A3104(?:?);//005A3104
    //function sub_005A3128:?;//005A3128
    //function sub_005A3160:?;//005A3160
    //function sub_005A31AC:?;//005A31AC
    //function sub_005A31F0:?;//005A31F0
    //function sub_005A3234:?;//005A3234
    //function sub_005A3278:?;//005A3278
    //function sub_005A32C4:?;//005A32C4
    //function sub_005A3318:?;//005A3318
    //function sub_005A3360:?;//005A3360
    //function sub_005A33AC:?;//005A33AC
    //function sub_005A33F4:?;//005A33F4
    //procedure sub_005A3430(?:?);//005A3430
    //procedure sub_005A345C(?:?);//005A345C
    //procedure sub_005A3488(?:?);//005A3488
    //procedure sub_005A34B4(?:?);//005A34B4
    //procedure sub_005A34E0(?:?);//005A34E0
    //procedure sub_005A3508(?:?);//005A3508
    //procedure sub_005A3538(?:?);//005A3538
    //procedure sub_005A3564(?:?);//005A3564
    //procedure sub_005A3590(?:?);//005A3590
    //procedure sub_005A35BC(?:?; ?:?);//005A35BC
    constructor Create(AOwner:TComponent);//005A35EC
    destructor Destroy;//005A368C
    procedure sub_005A3A84(?:TMenuItem);//005A3A84
    //procedure sub_005A3B58(?:TMenuItem; ?:?);//005A3B58
    procedure Loaded;//005A3BCC
    procedure sub_005A3C18(?:TMenuItem);//005A3C18
    //procedure sub_005A3D20(?:TMenuItem; ?:?; ?:?);//005A3D20
    //function sub_005A3DA0(?:TMenuItem):?;//005A3DA0
    procedure DefineProperties(Filer:TFiler);//005A3E0C
    //procedure sub_005A3E60(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);//005A3E60
    //procedure sub_005A4094(?:?; ?:?; ?:?);//005A4094
    procedure NormalDraw;//005A40E0
    procedure BiDiDraw;//005A4960
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);//005A5208
    procedure GetMenuSize;//005A5384
    //procedure sub_005A53D0(?:?; ?:?; ?:?);//005A53D0
    procedure sub_005A5620;//005A5620
    procedure sub_005A569C(?:TMenuItem);//005A569C
    procedure sub_005A58C0;//005A58C0
    //function sub_005A58D8(?:TMenuItem):?;//005A58D8
    //function sub_005A5904(?:TMenuItem; ?:?):?;//005A5904
    //function sub_005A59D0(?:?):?;//005A59D0
    //procedure sub_005A5A04(?:TMenuItem; ?:?);//005A5A04
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);//005A5A74
    //procedure sub_005A5ABC(?:?; ?:?);//005A5ABC
    procedure sub_005A5B70;//005A5B70
    //procedure sub_005A5B90(?:TMenuItem; ?:?; ?:TMenuItem);//005A5B90
    //procedure sub_005A5C80(?:TMenuItem; ?:?);//005A5C80
    procedure sub_005A5D14;//005A5D14
    //function sub_005A5DFC(?:TMenuItem; ?:TMenuItem):?;//005A5DFC
    procedure sub_005A5E30(?:TMenuItem; ?:TMenuItem);//005A5E30
    procedure sub_005A5E58(?:TMenuItem; ?:TMenuItem);//005A5E58
    //procedure sub_005A5E94(?:?);//005A5E94
    //procedure sub_005A608C(?:?);//005A608C
    procedure sub_005A60CC;//005A60CC
    //procedure sub_005A6108(?:?);//005A6108
    //procedure sub_005A61F0(?:?; ?:?);//005A61F0
    procedure AssignTo(Dest:TPersistent);//005A6588
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005A6624
    procedure sub_005A6750(?:TMenuItem);//005A6750
    procedure sub_005A6770(?:TMenuItem);//005A6770
    //function sub_005A67A8(?:?; ?:?):?;//005A67A8
    //procedure sub_005A67EC(?:?);//005A67EC
    //procedure sub_005A687C(?:AnsiString; ?:?; ?:?);//005A687C
    //function sub_005A6A04(?:TMenuItem; ?:?):?;//005A6A04
    //function sub_005A6F50(?:?):?;//005A6F50
    //function sub_005A6F80(?:TMenuItem; ?:?):?;//005A6F80
    //function sub_005A7148(?:?):?;//005A7148
    //function sub_005A7198(?:?):?;//005A7198
    constructor Create(AOwner:TComponent);//005A71E8
    destructor Destroy;//005A72B4
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);//005A72FC
    //function sub_005A7328:?;//005A7328
    //procedure sub_005A7348(?:?; ?:?);//005A7348
    procedure sub_005A73AC(?:TMainMenu);//005A73AC
    //function sub_005A7480(?:TMenu; ?:Longword; ?:?):?;//005A7480
    //function sub_005A74BC(?:Pointer; ?:?; ?:?):?;//005A74BC
    //function sub_005A7554(?:Pointer; ?:?):?;//005A7554
    //function sub_005A7590(?:Pointer; ?:?):?;//005A7590
    //function sub_005A7690(?:?):?;//005A7690
    //function sub_005A76BC(?:?; ?:?):?;//005A76BC
    //function sub_005A76F0(?:TMenuItem; ?:?; ?:?):?;//005A76F0
    //procedure sub_005A786C(?:?);//005A786C
    procedure sub_005A79B0(?:TMainMenu);//005A79B0
    //procedure sub_005A7A7C(?:?; ?:?);//005A7A7C
    //function sub_005A7B60(?:TMainMenu):?;//005A7B60
    procedure sub_005A7C1C(?:TPopupMenu);//005A7C1C
    procedure sub_005A7C9C(?:TComponent; ?:HWND);//005A7C9C
    //procedure sub_005A7CEC(?:?; ?:?);//005A7CEC
    procedure Loaded;//005A7D20
    //procedure sub_005A7D40(?:?; ?:?; ?:?);//005A7D40
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005A7E10
    //function sub_005A7E7C(?:?; ?:Longword; ?:?; ?:?; ?:?):?;//005A7E7C
    //function sub_005A7F10(?:?; ?:Longword; ?:?; ?:?; ?:?):?;//005A7F10
    //procedure sub_005A8024(?:Pointer; ?:?);//005A8024
    //function sub_005A821C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005A821C
    procedure sub_005A835C(?:TMenu);//005A835C
    procedure sub_005A839C(?:TPopupMenu; ?:TCCalendar);//005A839C
    //procedure sub_005A84AC(?:?; ?:?; ?:?);//005A84AC
    //procedure sub_005A8514(?:?; ?:?);//005A8514
    //procedure sub_005A854C(?:?; ?:?);//005A854C
    //function sub_005A85B8:?;//005A85B8
    //procedure sub_005A863C(?:?);//005A863C
    procedure sub_005A8C30(?:TPopupList; ?:TPopupMenu);//005A8C30
    procedure sub_005A8C68(?:TPopupList; ?:TPopupMenu);//005A8C68
    constructor Create(AOwner:TComponent);//005A8C98
    destructor Destroy;//005A8D34
    //procedure sub_005A8D74(?:?);//005A8D74
    procedure sub_005A8DD4(?:TPopupMenu);//005A8DD4
    //function sub_005A8E3C(?:TPopupMenu):?;//005A8E3C
    //procedure sub_005A8EA8(?:?; ?:?);//005A8EA8
    procedure sub_005A8F84(?:TMenuItemStack; ?:TMenuItem);//005A8F84
    //procedure sub_005A8FDC(?:?; ?:TControlCanvas; ?:?; ?:?);//005A8FDC
    //procedure sub_005A90E0(?:String; ?:?);//005A90E0
    //procedure sub_005A91B4(?:?; ?:?);//005A91B4
    //function sub_005A9248(?:String; ?:String):?;//005A9248
    procedure _NF__580;//005A92BC
    procedure Finalization;//005A9350

implementation

//005A1B74
procedure sub_005A1B74;
begin
{*
 005A1B74    push        ebp
 005A1B75    mov         ebp,esp
 005A1B77    sub         dword ptr ds:[6ECCF8],1
 005A1B7E    pop         ebp
 005A1B7F    ret
*}
end;

//005A2A74
{*function sub_005A2A74(?:?):?;
begin
 005A2A74    push        ebp
 005A2A75    mov         ebp,esp
 005A2A77    add         esp,0FFFFFFF4
 005A2A7A    mov         dword ptr [ebp-4],eax
 005A2A7D    xor         eax,eax
 005A2A7F    mov         dword ptr [ebp-8],eax
 005A2A82    mov         eax,dword ptr [ebp-4]
 005A2A85    call        005F1688
 005A2A8A    mov         dword ptr [ebp-0C],eax
 005A2A8D    cmp         dword ptr [ebp-0C],0
>005A2A91    je          005A2AB1
 005A2A93    push        0
 005A2A95    mov         edx,dword ptr [ebp-4]
 005A2A98    xor         ecx,ecx
 005A2A9A    mov         eax,dword ptr [ebp-0C]
 005A2A9D    call        005F8C90
 005A2AA2    mov         dword ptr [ebp-8],eax
 005A2AA5    cmp         dword ptr [ebp-8],0
>005A2AA9    jne         005A2AB1
 005A2AAB    mov         eax,dword ptr [ebp-0C]
 005A2AAE    mov         dword ptr [ebp-8],eax
 005A2AB1    mov         eax,dword ptr [ebp-8]
 005A2AB4    mov         esp,ebp
 005A2AB6    pop         ebp
 005A2AB7    ret
end;*}

//005A2AB8
{*function sub_005A2AB8:?;
begin
 005A2AB8    push        ebp
 005A2AB9    mov         ebp,esp
 005A2ABB    mov         eax,dword ptr [esp+8]
 005A2ABF    pop         ebp
 005A2AC0    ret
end;*}

//005A2AC4
{*procedure sub_005A2AC4(?:?);
begin
 005A2AC4    push        ebp
 005A2AC5    mov         ebp,esp
 005A2AC7    push        ecx
 005A2AC8    mov         dword ptr [ebp-4],eax
 005A2ACB    push        ebp
 005A2ACC    call        005A2AB8
 005A2AD1    pop         ecx
 005A2AD2    push        eax
 005A2AD3    mov         ecx,dword ptr [ebp-4]
 005A2AD6    mov         dl,1
 005A2AD8    mov         eax,[005A1B80];EMenuError
 005A2ADD    call        Exception.Create;EMenuError.Create
>005A2AE2    jmp         @RaiseExcept
 005A2AE7    pop         ecx
 005A2AE8    pop         ebp
 005A2AE9    ret
end;*}

//005A2AEC
{*function sub_005A2AEC(?:?; ?:?):?;
begin
 005A2AEC    push        ebp
 005A2AED    mov         ebp,esp
 005A2AEF    add         esp,0FFFFFFF8
 005A2AF2    mov         byte ptr [ebp-3],dl
 005A2AF5    mov         word ptr [ebp-2],ax
 005A2AF9    mov         word ptr [ebp-6],0
 005A2AFF    cmp         byte ptr [ebp-1],0
>005A2B03    jne         005A2B31
 005A2B05    mov         ax,word ptr [ebp-2]
 005A2B09    mov         word ptr [ebp-6],ax
 005A2B0D    test        byte ptr [ebp-3],1
>005A2B11    je          005A2B19
 005A2B13    add         word ptr [ebp-6],2000
 005A2B19    test        byte ptr [ebp-3],4
>005A2B1D    je          005A2B25
 005A2B1F    add         word ptr [ebp-6],4000
 005A2B25    test        byte ptr [ebp-3],2
>005A2B29    je          005A2B31
 005A2B2B    add         word ptr [ebp-6],8000
 005A2B31    mov         ax,word ptr [ebp-6]
 005A2B35    pop         ecx
 005A2B36    pop         ecx
 005A2B37    pop         ebp
 005A2B38    ret
end;*}

//005A2B3C
{*procedure sub_005A2B3C(?:?; ?:AnsiString);
begin
 005A2B3C    push        ebp
 005A2B3D    mov         ebp,esp
 005A2B3F    add         esp,0FFFFFEF4
 005A2B45    mov         dword ptr [ebp-8],edx
 005A2B48    mov         word ptr [ebp-2],ax
 005A2B4C    mov         eax,dword ptr [ebp-8]
 005A2B4F    call        @LStrClr
 005A2B54    push        0
 005A2B56    xor         eax,eax
 005A2B58    mov         al,byte ptr [ebp-2]
 005A2B5B    push        eax
 005A2B5C    call        USER32.MapVirtualKeyA
 005A2B61    shl         eax,10
 005A2B64    mov         dword ptr [ebp-0C],eax
 005A2B67    cmp         dword ptr [ebp-0C],0
>005A2B6B    je          005A2B95
 005A2B6D    push        100
 005A2B72    lea         eax,[ebp-10C]
 005A2B78    push        eax
 005A2B79    mov         eax,dword ptr [ebp-0C]
 005A2B7C    push        eax
 005A2B7D    call        USER32.GetKeyNameTextA
 005A2B82    mov         eax,dword ptr [ebp-8]
 005A2B85    lea         edx,[ebp-10C]
 005A2B8B    mov         ecx,100
 005A2B90    call        @LStrFromArray
 005A2B95    mov         esp,ebp
 005A2B97    pop         ebp
 005A2B98    ret
end;*}

//005A2B9C
{*procedure sub_005A2B9C(?:?; ?:?);
begin
 005A2B9C    push        ebp
 005A2B9D    mov         ebp,esp
 005A2B9F    add         esp,0FFFFFFF0
 005A2BA2    xor         ecx,ecx
 005A2BA4    mov         dword ptr [ebp-10],ecx
 005A2BA7    mov         dword ptr [ebp-0C],ecx
 005A2BAA    mov         dword ptr [ebp-8],edx
 005A2BAD    mov         word ptr [ebp-2],ax
 005A2BB1    xor         eax,eax
 005A2BB3    push        ebp
 005A2BB4    push        5A2DA3
 005A2BB9    push        dword ptr fs:[eax]
 005A2BBC    mov         dword ptr fs:[eax],esp
 005A2BBF    xor         eax,eax
 005A2BC1    mov         al,byte ptr [ebp-2]
 005A2BC4    cmp         eax,2D
>005A2BC7    jge         005A2BF0
 005A2BC9    add         eax,0FFFFFFF8
 005A2BCC    sub         eax,2
>005A2BCF    jb          005A2C39
 005A2BD1    sub         eax,3
>005A2BD4    je          005A2C53
 005A2BD6    sub         eax,0E
>005A2BD9    je          005A2C66
 005A2BDF    add         eax,0FFFFFFFB
 005A2BE2    sub         eax,9
>005A2BE5    jb          005A2C79
>005A2BEB    jmp         005A2D11
 005A2BF0    cmp         eax,41
>005A2BF3    jge         005A2C10
 005A2BF5    add         eax,0FFFFFFD3
 005A2BF8    sub         eax,2
>005A2BFB    jb          005A2C96
 005A2C01    dec         eax
 005A2C02    sub         eax,0A
>005A2C05    jb          005A2CB0
>005A2C0B    jmp         005A2D11
 005A2C10    add         eax,0FFFFFFBF
 005A2C13    sub         eax,1A
>005A2C16    jb          005A2CC5
 005A2C1C    add         eax,0FFFFFFFB
 005A2C1F    sub         eax,0A
>005A2C22    jb          005A2CDA
 005A2C28    add         eax,0FFFFFFFA
 005A2C2B    sub         eax,18
>005A2C2E    jb          005A2CEF
>005A2C34    jmp         005A2D11
 005A2C39    lea         eax,[ebp-0C]
 005A2C3C    mov         dl,byte ptr [ebp-2]
 005A2C3F    and         edx,7F
 005A2C42    mov         edx,dword ptr [edx*4+6E3BBC]
 005A2C49    call        @LStrLAsg
>005A2C4E    jmp         005A2D1D
 005A2C53    lea         eax,[ebp-0C]
 005A2C56    mov         edx,dword ptr ds:[6E3BE8];0x0 gvar_006E3BE8
 005A2C5C    call        @LStrLAsg
>005A2C61    jmp         005A2D1D
 005A2C66    lea         eax,[ebp-0C]
 005A2C69    mov         edx,dword ptr ds:[6E3BE4];0x0 gvar_006E3BE4
 005A2C6F    call        @LStrLAsg
>005A2C74    jmp         005A2D1D
 005A2C79    lea         eax,[ebp-0C]
 005A2C7C    mov         dl,byte ptr [ebp-2]
 005A2C7F    add         dl,4
 005A2C82    and         edx,7F
 005A2C85    mov         edx,dword ptr [edx*4+6E3B5C]
 005A2C8C    call        @LStrLAsg
>005A2C91    jmp         005A2D1D
 005A2C96    lea         eax,[ebp-0C]
 005A2C99    mov         dl,byte ptr [ebp-2]
 005A2C9C    add         dl,0D
 005A2C9F    and         edx,7F
 005A2CA2    mov         edx,dword ptr [edx*4+6E3B28]
 005A2CA9    call        @LStrLAsg
>005A2CAE    jmp         005A2D1D
 005A2CB0    lea         eax,[ebp-0C]
 005A2CB3    xor         edx,edx
 005A2CB5    mov         dl,byte ptr [ebp-2]
 005A2CB8    sub         edx,30
 005A2CBB    add         edx,30
 005A2CBE    call        @LStrFromChar
>005A2CC3    jmp         005A2D1D
 005A2CC5    lea         eax,[ebp-0C]
 005A2CC8    xor         edx,edx
 005A2CCA    mov         dl,byte ptr [ebp-2]
 005A2CCD    sub         edx,41
 005A2CD0    add         edx,41
 005A2CD3    call        @LStrFromChar
>005A2CD8    jmp         005A2D1D
 005A2CDA    lea         eax,[ebp-0C]
 005A2CDD    xor         edx,edx
 005A2CDF    mov         dl,byte ptr [ebp-2]
 005A2CE2    sub         edx,60
 005A2CE5    add         edx,30
 005A2CE8    call        @LStrFromChar
>005A2CED    jmp         005A2D1D
 005A2CEF    xor         eax,eax
 005A2CF1    mov         al,byte ptr [ebp-2]
 005A2CF4    sub         eax,6F
 005A2CF7    lea         edx,[ebp-10]
 005A2CFA    call        IntToStr
 005A2CFF    mov         ecx,dword ptr [ebp-10]
 005A2D02    lea         eax,[ebp-0C]
 005A2D05    mov         edx,5A2DB8;'F'
 005A2D0A    call        @LStrCat3
>005A2D0F    jmp         005A2D1D
 005A2D11    lea         edx,[ebp-0C]
 005A2D14    mov         ax,word ptr [ebp-2]
 005A2D18    call        005A2B3C
 005A2D1D    cmp         dword ptr [ebp-0C],0
>005A2D21    je          005A2D80
 005A2D23    mov         eax,dword ptr [ebp-8]
 005A2D26    call        @LStrClr
 005A2D2B    test        byte ptr [ebp-1],20
>005A2D2F    je          005A2D42
 005A2D31    mov         eax,dword ptr [ebp-8]
 005A2D34    mov         edx,dword ptr ds:[6E3C18];0x0 gvar_006E3C18
 005A2D3A    call        @LStrCat
 005A2D3F    mov         eax,dword ptr [ebp-8]
 005A2D42    test        byte ptr [ebp-1],40
>005A2D46    je          005A2D59
 005A2D48    mov         eax,dword ptr [ebp-8]
 005A2D4B    mov         edx,dword ptr ds:[6E3C1C];0x0 gvar_006E3C1C
 005A2D51    call        @LStrCat
 005A2D56    mov         eax,dword ptr [ebp-8]
 005A2D59    test        byte ptr [ebp-1],80
>005A2D5D    je          005A2D70
 005A2D5F    mov         eax,dword ptr [ebp-8]
 005A2D62    mov         edx,dword ptr ds:[6E3C20];0x0 gvar_006E3C20
 005A2D68    call        @LStrCat
 005A2D6D    mov         eax,dword ptr [ebp-8]
 005A2D70    mov         eax,dword ptr [ebp-8]
 005A2D73    mov         edx,dword ptr [ebp-0C]
 005A2D76    call        @LStrCat
 005A2D7B    mov         eax,dword ptr [ebp-8]
>005A2D7E    jmp         005A2D88
 005A2D80    mov         eax,dword ptr [ebp-8]
 005A2D83    call        @LStrClr
 005A2D88    xor         eax,eax
 005A2D8A    pop         edx
 005A2D8B    pop         ecx
 005A2D8C    pop         ecx
 005A2D8D    mov         dword ptr fs:[eax],edx
 005A2D90    push        5A2DAA
 005A2D95    lea         eax,[ebp-10]
 005A2D98    mov         edx,2
 005A2D9D    call        @LStrArrayClr
 005A2DA2    ret
>005A2DA3    jmp         @HandleFinally
>005A2DA8    jmp         005A2D95
 005A2DAA    mov         esp,ebp
 005A2DAC    pop         ebp
 005A2DAD    ret
end;*}

//005A2DBC
{*function sub_005A2DBC(?:?; ?:AnsiString):?;
begin
 005A2DBC    push        ebp
 005A2DBD    mov         ebp,esp
 005A2DBF    add         esp,0FFFFFFF4
 005A2DC2    push        ebx
 005A2DC3    mov         dword ptr [ebp-8],edx
 005A2DC6    mov         dword ptr [ebp-4],eax
 005A2DC9    mov         byte ptr [ebp-9],0
 005A2DCD    mov         eax,dword ptr [ebp-4]
 005A2DD0    mov         eax,dword ptr [eax]
 005A2DD2    call        @LStrLen
 005A2DD7    mov         ebx,eax
 005A2DD9    mov         eax,dword ptr [ebp-8]
 005A2DDC    call        @LStrLen
 005A2DE1    cmp         ebx,eax
>005A2DE3    jl          005A2E27
 005A2DE5    mov         eax,dword ptr [ebp-8]
 005A2DE8    call        @LStrLen
 005A2DED    push        eax
 005A2DEE    mov         eax,dword ptr [ebp-8]
 005A2DF1    call        @LStrToPChar
 005A2DF6    push        eax
 005A2DF7    mov         eax,dword ptr [ebp-4]
 005A2DFA    mov         eax,dword ptr [eax]
 005A2DFC    call        @LStrToPChar
 005A2E01    pop         edx
 005A2E02    pop         ecx
 005A2E03    call        00657818
 005A2E08    test        eax,eax
>005A2E0A    jne         005A2E27
 005A2E0C    mov         byte ptr [ebp-9],1
 005A2E10    mov         eax,dword ptr [ebp-8]
 005A2E13    call        @LStrLen
 005A2E18    mov         ecx,eax
 005A2E1A    mov         eax,dword ptr [ebp-4]
 005A2E1D    mov         edx,1
 005A2E22    call        @LStrDelete
 005A2E27    mov         al,byte ptr [ebp-9]
 005A2E2A    pop         ebx
 005A2E2B    mov         esp,ebp
 005A2E2D    pop         ebp
 005A2E2E    ret
end;*}

//005A2E30
{*function sub_005A2E30(?:?):?;
begin
 005A2E30    push        ebp
 005A2E31    mov         ebp,esp
 005A2E33    add         esp,0FFFFFFF0
 005A2E36    xor         edx,edx
 005A2E38    mov         dword ptr [ebp-10],edx
 005A2E3B    mov         dword ptr [ebp-4],eax
 005A2E3E    mov         eax,dword ptr [ebp-4]
 005A2E41    call        @LStrAddRef
 005A2E46    xor         eax,eax
 005A2E48    push        ebp
 005A2E49    push        5A2F2E
 005A2E4E    push        dword ptr fs:[eax]
 005A2E51    mov         dword ptr fs:[eax],esp
 005A2E54    mov         word ptr [ebp-6],0
 005A2E5A    mov         word ptr [ebp-0A],0
 005A2E60    push        ebp
 005A2E61    lea         eax,[ebp-4]
 005A2E64    mov         edx,dword ptr ds:[6E3C18];0x0 gvar_006E3C18
 005A2E6A    call        005A2DBC
 005A2E6F    pop         ecx
 005A2E70    test        al,al
>005A2E72    je          005A2E7C
 005A2E74    or          word ptr [ebp-0A],2000
>005A2E7A    jmp         005A2E60
 005A2E7C    push        ebp
 005A2E7D    lea         eax,[ebp-4]
 005A2E80    mov         edx,5A2F48;'^'
 005A2E85    call        005A2DBC
 005A2E8A    pop         ecx
 005A2E8B    test        al,al
>005A2E8D    je          005A2E97
 005A2E8F    or          word ptr [ebp-0A],4000
>005A2E95    jmp         005A2E60
 005A2E97    push        ebp
 005A2E98    lea         eax,[ebp-4]
 005A2E9B    mov         edx,dword ptr ds:[6E3C1C];0x0 gvar_006E3C1C
 005A2EA1    call        005A2DBC
 005A2EA6    pop         ecx
 005A2EA7    test        al,al
>005A2EA9    je          005A2EB3
 005A2EAB    or          word ptr [ebp-0A],4000
>005A2EB1    jmp         005A2E60
 005A2EB3    push        ebp
 005A2EB4    lea         eax,[ebp-4]
 005A2EB7    mov         edx,dword ptr ds:[6E3C20];0x0 gvar_006E3C20
 005A2EBD    call        005A2DBC
 005A2EC2    pop         ecx
 005A2EC3    test        al,al
>005A2EC5    je          005A2ECF
 005A2EC7    or          word ptr [ebp-0A],8000
>005A2ECD    jmp         005A2E60
 005A2ECF    cmp         dword ptr [ebp-4],0
>005A2ED3    je          005A2F10
 005A2ED5    mov         word ptr [ebp-8],8
 005A2EDB    lea         edx,[ebp-10]
 005A2EDE    mov         ax,word ptr [ebp-8]
 005A2EE2    call        005A2B9C
 005A2EE7    mov         edx,dword ptr [ebp-10]
 005A2EEA    mov         eax,dword ptr [ebp-4]
 005A2EED    call        AnsiCompareText
 005A2EF2    test        eax,eax
>005A2EF4    jne         005A2F04
 005A2EF6    mov         ax,word ptr [ebp-8]
 005A2EFA    or          ax,word ptr [ebp-0A]
 005A2EFE    mov         word ptr [ebp-6],ax
>005A2F02    jmp         005A2F10
 005A2F04    inc         word ptr [ebp-8]
 005A2F08    cmp         word ptr [ebp-8],256
>005A2F0E    jne         005A2EDB
 005A2F10    xor         eax,eax
 005A2F12    pop         edx
 005A2F13    pop         ecx
 005A2F14    pop         ecx
 005A2F15    mov         dword ptr fs:[eax],edx
 005A2F18    push        5A2F35
 005A2F1D    lea         eax,[ebp-10]
 005A2F20    call        @LStrClr
 005A2F25    lea         eax,[ebp-4]
 005A2F28    call        @LStrClr
 005A2F2D    ret
>005A2F2E    jmp         @HandleFinally
>005A2F33    jmp         005A2F1D
 005A2F35    mov         ax,word ptr [ebp-6]
 005A2F39    mov         esp,ebp
 005A2F3B    pop         ebp
 005A2F3C    ret
end;*}

//005A2F4C
{*function sub_005A2F4C:?;
begin
 005A2F4C    push        ebp
 005A2F4D    mov         ebp,esp
 005A2F4F    push        ecx
 005A2F50    mov         eax,[006ECD08];0x0 CommandPool:TBits
 005A2F55    call        00645CE0
 005A2F5A    mov         word ptr [ebp-2],ax
 005A2F5E    movzx       edx,word ptr [ebp-2]
 005A2F62    mov         cl,1
 005A2F64    mov         eax,[006ECD08];0x0 CommandPool:TBits
 005A2F69    call        TBits.SetBit
 005A2F6E    mov         ax,word ptr [ebp-2]
 005A2F72    pop         ecx
 005A2F73    pop         ebp
 005A2F74    ret
end;*}

//005A2F78
{*function sub_005A2F78(?:?; ?:?; ?:?; ?:?):?;
begin
 005A2F78    push        ebp
 005A2F79    mov         ebp,esp
 005A2F7B    add         esp,0FFFFFFEC
 005A2F7E    mov         dword ptr [ebp-8],ecx
 005A2F81    mov         dword ptr [ebp-14],edx
 005A2F84    mov         dword ptr [ebp-10],eax
 005A2F87    cmp         dword ptr [ebp-14],0
>005A2F8B    je          005A2FDC
 005A2F8D    mov         byte ptr [ebp-9],0
>005A2F91    jmp         005A2FC7
 005A2F93    mov         edx,dword ptr [ebp-10]
 005A2F96    mov         edx,dword ptr [edx]
 005A2F98    mov         eax,dword ptr [ebp-14]
 005A2F9B    call        005A5904
 005A2FA0    mov         dword ptr [ebp-4],eax
 005A2FA3    mov         eax,dword ptr [ebp-4]
 005A2FA6    mov         al,byte ptr [eax+3F]
 005A2FA9    mov         edx,dword ptr [ebp+8]
 005A2FAC    cmp         al,byte ptr [edx-1]
>005A2FAF    ja          005A2FDC
 005A2FB1    mov         eax,dword ptr [ebp-4]
 005A2FB4    mov         edx,dword ptr [ebp+8]
 005A2FB7    push        dword ptr [edx]
 005A2FB9    call        dword ptr [ebp-8]
 005A2FBC    add         esp,4
 005A2FBF    mov         byte ptr [ebp-9],al
 005A2FC2    mov         eax,dword ptr [ebp-10]
 005A2FC5    inc         dword ptr [eax]
 005A2FC7    cmp         byte ptr [ebp-9],0
>005A2FCB    jne         005A2FDC
 005A2FCD    mov         eax,dword ptr [ebp-14]
 005A2FD0    call        005A58D8
 005A2FD5    mov         edx,dword ptr [ebp-10]
 005A2FD8    cmp         eax,dword ptr [edx]
>005A2FDA    jg          005A2F93
 005A2FDC    mov         al,byte ptr [ebp-9]
 005A2FDF    mov         esp,ebp
 005A2FE1    pop         ebp
 005A2FE2    ret
end;*}

//005A2FE4
{*procedure sub_005A2FE4(?:?; ?:TMenuItem; ?:?);
begin
 005A2FE4    push        ebp
 005A2FE5    mov         ebp,esp
 005A2FE7    add         esp,0FFFFFFD8
 005A2FEA    mov         dword ptr [ebp-10],ecx
 005A2FED    mov         dword ptr [ebp-0C],edx
 005A2FF0    mov         dword ptr [ebp-8],eax
 005A2FF3    xor         eax,eax
 005A2FF5    mov         dword ptr [ebp-14],eax
 005A2FF8    xor         eax,eax
 005A2FFA    mov         dword ptr [ebp-18],eax
 005A2FFD    xor         eax,eax
 005A2FFF    mov         dword ptr [ebp-20],eax
 005A3002    xor         eax,eax
 005A3004    mov         dword ptr [ebp-24],eax
 005A3007    cmp         dword ptr [ebp-0C],0
>005A300B    je          005A3018
 005A300D    mov         eax,dword ptr [ebp-0C]
 005A3010    call        005A58D8
 005A3015    mov         dword ptr [ebp-20],eax
 005A3018    cmp         dword ptr [ebp-10],0
>005A301C    je          005A3029
 005A301E    mov         eax,dword ptr [ebp-10]
 005A3021    call        005A58D8
 005A3026    mov         dword ptr [ebp-24],eax
 005A3029    mov         byte ptr [ebp-25],0
>005A302D    jmp         005A30E2
 005A3032    mov         byte ptr [ebp-1],0FF
 005A3036    mov         byte ptr [ebp-19],0FF
 005A303A    mov         eax,dword ptr [ebp-14]
 005A303D    cmp         eax,dword ptr [ebp-20]
>005A3040    jge         005A3053
 005A3042    mov         edx,dword ptr [ebp-14]
 005A3045    mov         eax,dword ptr [ebp-0C]
 005A3048    call        005A5904
 005A304D    mov         al,byte ptr [eax+3F]
 005A3050    mov         byte ptr [ebp-1],al
 005A3053    mov         eax,dword ptr [ebp-18]
 005A3056    cmp         eax,dword ptr [ebp-24]
>005A3059    jge         005A306C
 005A305B    mov         edx,dword ptr [ebp-18]
 005A305E    mov         eax,dword ptr [ebp-10]
 005A3061    call        005A5904
 005A3066    mov         al,byte ptr [eax+3F]
 005A3069    mov         byte ptr [ebp-19],al
 005A306C    mov         al,byte ptr [ebp-1]
 005A306F    cmp         al,byte ptr [ebp-19]
>005A3072    ja          005A3089
 005A3074    push        ebp
 005A3075    lea         eax,[ebp-14]
 005A3078    mov         ecx,dword ptr [ebp-8]
 005A307B    mov         edx,dword ptr [ebp-0C]
 005A307E    call        005A2F78
 005A3083    pop         ecx
 005A3084    mov         byte ptr [ebp-25],al
>005A3087    jmp         005A30A7
 005A3089    mov         al,byte ptr [ebp-19]
 005A308C    mov         byte ptr [ebp-1],al
 005A308F    push        ebp
 005A3090    lea         eax,[ebp-18]
 005A3093    mov         ecx,dword ptr [ebp-8]
 005A3096    mov         edx,dword ptr [ebp-10]
 005A3099    call        005A2F78
 005A309E    pop         ecx
 005A309F    mov         byte ptr [ebp-25],al
>005A30A2    jmp         005A30A7
 005A30A4    inc         dword ptr [ebp-14]
 005A30A7    mov         eax,dword ptr [ebp-14]
 005A30AA    cmp         eax,dword ptr [ebp-20]
>005A30AD    jge         005A30C7
 005A30AF    mov         edx,dword ptr [ebp-14]
 005A30B2    mov         eax,dword ptr [ebp-0C]
 005A30B5    call        005A5904
 005A30BA    mov         al,byte ptr [eax+3F]
 005A30BD    cmp         al,byte ptr [ebp-1]
>005A30C0    jbe         005A30A4
>005A30C2    jmp         005A30C7
 005A30C4    inc         dword ptr [ebp-18]
 005A30C7    mov         eax,dword ptr [ebp-18]
 005A30CA    cmp         eax,dword ptr [ebp-24]
>005A30CD    jge         005A30E2
 005A30CF    mov         edx,dword ptr [ebp-18]
 005A30D2    mov         eax,dword ptr [ebp-10]
 005A30D5    call        005A5904
 005A30DA    mov         al,byte ptr [eax+3F]
 005A30DD    cmp         al,byte ptr [ebp-1]
>005A30E0    jbe         005A30C4
 005A30E2    cmp         byte ptr [ebp-25],0
>005A30E6    jne         005A3100
 005A30E8    mov         eax,dword ptr [ebp-14]
 005A30EB    cmp         eax,dword ptr [ebp-20]
>005A30EE    jl          005A3032
 005A30F4    mov         eax,dword ptr [ebp-18]
 005A30F7    cmp         eax,dword ptr [ebp-24]
>005A30FA    jl          005A3032
 005A3100    mov         esp,ebp
 005A3102    pop         ebp
 005A3103    ret
end;*}

//005A3104
{*procedure sub_005A3104(?:?);
begin
 005A3104    push        ebp
 005A3105    mov         ebp,esp
 005A3107    add         esp,0FFFFFFF8
 005A310A    mov         dword ptr [ebp-8],edx
 005A310D    mov         dword ptr [ebp-4],eax
 005A3110    mov         eax,dword ptr [ebp-8]
 005A3113    mov         edx,dword ptr ds:[5A1ED0];TMenuItem
 005A3119    call        @AsClass
 005A311E    mov         edx,dword ptr [ebp-4]
 005A3121    mov         dword ptr [edx+18],eax;TMenuActionLink.........................FClient:TMenuItem
 005A3124    pop         ecx
 005A3125    pop         ecx
 005A3126    pop         ebp
 005A3127    ret
end;*}

//005A3128
{*function sub_005A3128:?;
begin
 005A3128    push        ebp
 005A3129    mov         ebp,esp
 005A312B    add         esp,0FFFFFFF8
 005A312E    mov         dword ptr [ebp-4],eax
 005A3131    mov         eax,dword ptr [ebp-4]
 005A3134    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A3137    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A313D    call        @AsClass
 005A3142    mov         al,byte ptr [eax+95];TCustomAction.FAutoCheck:Boolean
 005A3148    mov         edx,dword ptr [ebp-4]
 005A314B    mov         edx,dword ptr [edx+18];TMenuActionLink..........................FClient:TMenuItem
 005A314E    cmp         al,byte ptr [edx+0A8];TMenuItem.AutoCheck:Boolean
 005A3154    sete        byte ptr [ebp-5]
 005A3158    mov         al,byte ptr [ebp-5]
 005A315B    pop         ecx
 005A315C    pop         ecx
 005A315D    pop         ebp
 005A315E    ret
end;*}

//005A3160
{*function sub_005A3160:?;
begin
 005A3160    push        ebp
 005A3161    mov         ebp,esp
 005A3163    add         esp,0FFFFFFF8
 005A3166    mov         dword ptr [ebp-4],eax
 005A3169    mov         eax,dword ptr [ebp-4]
 005A316C    call        0058E3B8
 005A3171    test        al,al
>005A3173    je          005A319B
 005A3175    mov         eax,dword ptr [ebp-4]
 005A3178    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A317B    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3181    call        @AsClass
 005A3186    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 005A3189    mov         eax,dword ptr [ebp-4]
 005A318C    mov         eax,dword ptr [eax+18];TMenuActionLink...........................FClient:TMenuItem
 005A318F    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 005A3192    call        005A9248
 005A3197    test        al,al
>005A3199    jne         005A319F
 005A319B    xor         eax,eax
>005A319D    jmp         005A31A1
 005A319F    mov         al,1
 005A31A1    mov         byte ptr [ebp-5],al
 005A31A4    mov         al,byte ptr [ebp-5]
 005A31A7    pop         ecx
 005A31A8    pop         ecx
 005A31A9    pop         ebp
 005A31AA    ret
end;*}

//005A31AC
{*function sub_005A31AC:?;
begin
 005A31AC    push        ebp
 005A31AD    mov         ebp,esp
 005A31AF    add         esp,0FFFFFFF8
 005A31B2    mov         dword ptr [ebp-4],eax
 005A31B5    mov         eax,dword ptr [ebp-4]
 005A31B8    call        0058E3DC
 005A31BD    test        al,al
>005A31BF    je          005A31E0
 005A31C1    mov         eax,dword ptr [ebp-4]
 005A31C4    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A31C7    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A31CD    call        @AsClass
 005A31D2    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 005A31D5    mov         edx,dword ptr [ebp-4]
 005A31D8    mov         edx,dword ptr [edx+18];TMenuActionLink............................FClient:TMenuItem
 005A31DB    cmp         al,byte ptr [edx+38];TMenuItem.Checked:Boolean
>005A31DE    je          005A31E4
 005A31E0    xor         eax,eax
>005A31E2    jmp         005A31E6
 005A31E4    mov         al,1
 005A31E6    mov         byte ptr [ebp-5],al
 005A31E9    mov         al,byte ptr [ebp-5]
 005A31EC    pop         ecx
 005A31ED    pop         ecx
 005A31EE    pop         ebp
 005A31EF    ret
end;*}

//005A31F0
{*function sub_005A31F0:?;
begin
 005A31F0    push        ebp
 005A31F1    mov         ebp,esp
 005A31F3    add         esp,0FFFFFFF8
 005A31F6    mov         dword ptr [ebp-4],eax
 005A31F9    mov         eax,dword ptr [ebp-4]
 005A31FC    call        0058E400
 005A3201    test        al,al
>005A3203    je          005A3224
 005A3205    mov         eax,dword ptr [ebp-4]
 005A3208    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A320B    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3211    call        @AsClass
 005A3216    mov         al,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 005A3219    mov         edx,dword ptr [ebp-4]
 005A321C    mov         edx,dword ptr [edx+18];TMenuActionLink.............................FClient:TMenuItem
 005A321F    cmp         al,byte ptr [edx+39];TMenuItem.Enabled:Boolean
>005A3222    je          005A3228
 005A3224    xor         eax,eax
>005A3226    jmp         005A322A
 005A3228    mov         al,1
 005A322A    mov         byte ptr [ebp-5],al
 005A322D    mov         al,byte ptr [ebp-5]
 005A3230    pop         ecx
 005A3231    pop         ecx
 005A3232    pop         ebp
 005A3233    ret
end;*}

//005A3234
{*function sub_005A3234:?;
begin
 005A3234    push        ebp
 005A3235    mov         ebp,esp
 005A3237    add         esp,0FFFFFFF8
 005A323A    mov         dword ptr [ebp-4],eax
 005A323D    mov         eax,dword ptr [ebp-4]
 005A3240    call        0058E448
 005A3245    test        al,al
>005A3247    je          005A3268
 005A3249    mov         eax,dword ptr [ebp-4]
 005A324C    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A324F    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3255    call        @AsClass
 005A325A    mov         eax,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 005A325D    mov         edx,dword ptr [ebp-4]
 005A3260    mov         edx,dword ptr [edx+18];TMenuActionLink..............................FClient:TMenuItem
 005A3263    cmp         eax,dword ptr [edx+54];TMenuItem.HelpContext:THelpContext
>005A3266    je          005A326C
 005A3268    xor         eax,eax
>005A326A    jmp         005A326E
 005A326C    mov         al,1
 005A326E    mov         byte ptr [ebp-5],al
 005A3271    mov         al,byte ptr [ebp-5]
 005A3274    pop         ecx
 005A3275    pop         ecx
 005A3276    pop         ebp
 005A3277    ret
end;*}

//005A3278
{*function sub_005A3278:?;
begin
 005A3278    push        ebp
 005A3279    mov         ebp,esp
 005A327B    add         esp,0FFFFFFF8
 005A327E    mov         dword ptr [ebp-4],eax
 005A3281    mov         eax,dword ptr [ebp-4]
 005A3284    call        0058E490
 005A3289    test        al,al
>005A328B    je          005A32B1
 005A328D    mov         eax,dword ptr [ebp-4]
 005A3290    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A3293    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3299    call        @AsClass
 005A329E    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 005A32A1    mov         eax,dword ptr [ebp-4]
 005A32A4    mov         eax,dword ptr [eax+18];TMenuActionLink...............................FClient:TMenuItem
 005A32A7    mov         eax,dword ptr [eax+58];TMenuItem.Hint:String
 005A32AA    call        @LStrCmp
>005A32AF    je          005A32B5
 005A32B1    xor         eax,eax
>005A32B3    jmp         005A32B7
 005A32B5    mov         al,1
 005A32B7    mov         byte ptr [ebp-5],al
 005A32BA    mov         al,byte ptr [ebp-5]
 005A32BD    pop         ecx
 005A32BE    pop         ecx
 005A32BF    pop         ebp
 005A32C0    ret
end;*}

//005A32C4
{*function sub_005A32C4:?;
begin
 005A32C4    push        ebp
 005A32C5    mov         ebp,esp
 005A32C7    add         esp,0FFFFFFF8
 005A32CA    mov         dword ptr [ebp-4],eax
 005A32CD    mov         eax,dword ptr [ebp-4]
 005A32D0    mov         eax,dword ptr [eax+18];TMenuActionLink................................FClient:TMenuItem
 005A32D3    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>005A32D7    je          005A3307
 005A32D9    mov         eax,dword ptr [ebp-4]
 005A32DC    call        0058E424
 005A32E1    test        al,al
>005A32E3    je          005A3307
 005A32E5    mov         eax,dword ptr [ebp-4]
 005A32E8    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A32EB    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A32F1    call        @AsClass
 005A32F6    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 005A32F9    mov         edx,dword ptr [ebp-4]
 005A32FC    mov         edx,dword ptr [edx+18];TMenuActionLink.................................FClient:TMenuItem
 005A32FF    movzx       edx,byte ptr [edx+3F];TMenuItem.GroupIndex:byte
 005A3303    cmp         eax,edx
>005A3305    je          005A330B
 005A3307    xor         eax,eax
>005A3309    jmp         005A330D
 005A330B    mov         al,1
 005A330D    mov         byte ptr [ebp-5],al
 005A3310    mov         al,byte ptr [ebp-5]
 005A3313    pop         ecx
 005A3314    pop         ecx
 005A3315    pop         ebp
 005A3316    ret
end;*}

//005A3318
{*function sub_005A3318:?;
begin
 005A3318    push        ebp
 005A3319    mov         ebp,esp
 005A331B    add         esp,0FFFFFFF8
 005A331E    mov         dword ptr [ebp-4],eax
 005A3321    mov         eax,dword ptr [ebp-4]
 005A3324    call        0058E4B4
 005A3329    test        al,al
>005A332B    je          005A334F
 005A332D    mov         eax,dword ptr [ebp-4]
 005A3330    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A3333    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3339    call        @AsClass
 005A333E    mov         eax,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 005A3344    mov         edx,dword ptr [ebp-4]
 005A3347    mov         edx,dword ptr [edx+18];TMenuActionLink..................................FClient:TMenuIte...
 005A334A    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>005A334D    je          005A3353
 005A334F    xor         eax,eax
>005A3351    jmp         005A3355
 005A3353    mov         al,1
 005A3355    mov         byte ptr [ebp-5],al
 005A3358    mov         al,byte ptr [ebp-5]
 005A335B    pop         ecx
 005A335C    pop         ecx
 005A335D    pop         ebp
 005A335E    ret
end;*}

//005A3360
{*function sub_005A3360:?;
begin
 005A3360    push        ebp
 005A3361    mov         ebp,esp
 005A3363    add         esp,0FFFFFFF8
 005A3366    mov         dword ptr [ebp-4],eax
 005A3369    mov         eax,dword ptr [ebp-4]
 005A336C    call        0058E4D8
 005A3371    test        al,al
>005A3373    je          005A3399
 005A3375    mov         eax,dword ptr [ebp-4]
 005A3378    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A337B    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A3381    call        @AsClass
 005A3386    mov         ax,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 005A338D    mov         edx,dword ptr [ebp-4]
 005A3390    mov         edx,dword ptr [edx+18];TMenuActionLink...................................FClient:TMenuIt...
 005A3393    cmp         ax,word ptr [edx+60];TMenuItem.ShortCut:TShortCut
>005A3397    je          005A339D
 005A3399    xor         eax,eax
>005A339B    jmp         005A339F
 005A339D    mov         al,1
 005A339F    mov         byte ptr [ebp-5],al
 005A33A2    mov         al,byte ptr [ebp-5]
 005A33A5    pop         ecx
 005A33A6    pop         ecx
 005A33A7    pop         ebp
 005A33A8    ret
end;*}

//005A33AC
{*function sub_005A33AC:?;
begin
 005A33AC    push        ebp
 005A33AD    mov         ebp,esp
 005A33AF    add         esp,0FFFFFFF8
 005A33B2    mov         dword ptr [ebp-4],eax
 005A33B5    mov         eax,dword ptr [ebp-4]
 005A33B8    call        0058E4FC
 005A33BD    test        al,al
>005A33BF    je          005A33E3
 005A33C1    mov         eax,dword ptr [ebp-4]
 005A33C4    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A33C7    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A33CD    call        @AsClass
 005A33D2    mov         al,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 005A33D8    mov         edx,dword ptr [ebp-4]
 005A33DB    mov         edx,dword ptr [edx+18];TMenuActionLink....................................FClient:TMenuI...
 005A33DE    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>005A33E1    je          005A33E7
 005A33E3    xor         eax,eax
>005A33E5    jmp         005A33E9
 005A33E7    mov         al,1
 005A33E9    mov         byte ptr [ebp-5],al
 005A33EC    mov         al,byte ptr [ebp-5]
 005A33EF    pop         ecx
 005A33F0    pop         ecx
 005A33F1    pop         ebp
 005A33F2    ret
end;*}

//005A33F4
{*function sub_005A33F4:?;
begin
 005A33F4    push        ebp
 005A33F5    mov         ebp,esp
 005A33F7    add         esp,0FFFFFFF8
 005A33FA    mov         dword ptr [ebp-4],eax
 005A33FD    mov         eax,dword ptr [ebp-4]
 005A3400    call        0065101C
 005A3405    test        al,al
>005A3407    je          005A3420
 005A3409    mov         eax,dword ptr [ebp-4]
 005A340C    mov         eax,dword ptr [eax+18];TMenuActionLink.....................................FClient:TMenu...
 005A340F    mov         eax,dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 005A3415    mov         edx,dword ptr [ebp-4]
 005A3418    mov         edx,dword ptr [edx+10];TMenuActionLink.FAction:TBasicAction
 005A341B    cmp         eax,dword ptr [edx+40];TBasicAction.FOnExecute:TNotifyEvent
>005A341E    je          005A3424
 005A3420    xor         eax,eax
>005A3422    jmp         005A3426
 005A3424    mov         al,1
 005A3426    mov         byte ptr [ebp-5],al
 005A3429    mov         al,byte ptr [ebp-5]
 005A342C    pop         ecx
 005A342D    pop         ecx
 005A342E    pop         ebp
 005A342F    ret
end;*}

//005A3430
{*procedure sub_005A3430(?:?);
begin
 005A3430    push        ebp
 005A3431    mov         ebp,esp
 005A3433    add         esp,0FFFFFFF8
 005A3436    mov         byte ptr [ebp-5],dl
 005A3439    mov         dword ptr [ebp-4],eax
 005A343C    mov         eax,dword ptr [ebp-4]
 005A343F    mov         edx,dword ptr [eax]
 005A3441    call        dword ptr [edx+78];TMenuActionLink.sub_005A3128
 005A3444    test        al,al
>005A3446    je          005A3457
 005A3448    mov         eax,dword ptr [ebp-4]
 005A344B    mov         eax,dword ptr [eax+18];TMenuActionLink......................................FClient:TMen...
 005A344E    mov         dl,byte ptr [ebp-5]
 005A3451    mov         byte ptr [eax+0A8],dl;TMenuItem.AutoCheck:Boolean
 005A3457    pop         ecx
 005A3458    pop         ecx
 005A3459    pop         ebp
 005A345A    ret
end;*}

//005A345C
{*procedure sub_005A345C(?:?);
begin
 005A345C    push        ebp
 005A345D    mov         ebp,esp
 005A345F    add         esp,0FFFFFFF8
 005A3462    mov         dword ptr [ebp-8],edx
 005A3465    mov         dword ptr [ebp-4],eax
 005A3468    mov         eax,dword ptr [ebp-4]
 005A346B    mov         edx,dword ptr [eax]
 005A346D    call        dword ptr [edx+20];TMenuActionLink.sub_005A3160
 005A3470    test        al,al
>005A3472    je          005A3482
 005A3474    mov         edx,dword ptr [ebp-8]
 005A3477    mov         eax,dword ptr [ebp-4]
 005A347A    mov         eax,dword ptr [eax+18];TMenuActionLink.......................................FClient:TMe...
 005A347D    call        TMenuItem.SetCaption
 005A3482    pop         ecx
 005A3483    pop         ecx
 005A3484    pop         ebp
 005A3485    ret
end;*}

//005A3488
{*procedure sub_005A3488(?:?);
begin
 005A3488    push        ebp
 005A3489    mov         ebp,esp
 005A348B    add         esp,0FFFFFFF8
 005A348E    mov         byte ptr [ebp-5],dl
 005A3491    mov         dword ptr [ebp-4],eax
 005A3494    mov         eax,dword ptr [ebp-4]
 005A3497    mov         edx,dword ptr [eax]
 005A3499    call        dword ptr [edx+24];TMenuActionLink.sub_005A31AC
 005A349C    test        al,al
>005A349E    je          005A34AE
 005A34A0    mov         dl,byte ptr [ebp-5]
 005A34A3    mov         eax,dword ptr [ebp-4]
 005A34A6    mov         eax,dword ptr [eax+18];TMenuActionLink........................................FClient:TM...
 005A34A9    call        TMenuItem.SetChecked
 005A34AE    pop         ecx
 005A34AF    pop         ecx
 005A34B0    pop         ebp
 005A34B1    ret
end;*}

//005A34B4
{*procedure sub_005A34B4(?:?);
begin
 005A34B4    push        ebp
 005A34B5    mov         ebp,esp
 005A34B7    add         esp,0FFFFFFF8
 005A34BA    mov         byte ptr [ebp-5],dl
 005A34BD    mov         dword ptr [ebp-4],eax
 005A34C0    mov         eax,dword ptr [ebp-4]
 005A34C3    mov         edx,dword ptr [eax]
 005A34C5    call        dword ptr [edx+28];TMenuActionLink.sub_005A31F0
 005A34C8    test        al,al
>005A34CA    je          005A34DA
 005A34CC    mov         dl,byte ptr [ebp-5]
 005A34CF    mov         eax,dword ptr [ebp-4]
 005A34D2    mov         eax,dword ptr [eax+18];TMenuActionLink.........................................FClient:T...
 005A34D5    call        TMenuItem.SetEnabled
 005A34DA    pop         ecx
 005A34DB    pop         ecx
 005A34DC    pop         ebp
 005A34DD    ret
end;*}

//005A34E0
{*procedure sub_005A34E0(?:?);
begin
 005A34E0    push        ebp
 005A34E1    mov         ebp,esp
 005A34E3    add         esp,0FFFFFFF8
 005A34E6    mov         dword ptr [ebp-8],edx
 005A34E9    mov         dword ptr [ebp-4],eax
 005A34EC    mov         eax,dword ptr [ebp-4]
 005A34EF    mov         edx,dword ptr [eax]
 005A34F1    call        dword ptr [edx+30];TMenuActionLink.sub_005A3234
 005A34F4    test        al,al
>005A34F6    je          005A3504
 005A34F8    mov         eax,dword ptr [ebp-4]
 005A34FB    mov         eax,dword ptr [eax+18];TMenuActionLink..........................................FClient:...
 005A34FE    mov         edx,dword ptr [ebp-8]
 005A3501    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 005A3504    pop         ecx
 005A3505    pop         ecx
 005A3506    pop         ebp
 005A3507    ret
end;*}

//005A3508
{*procedure sub_005A3508(?:?);
begin
 005A3508    push        ebp
 005A3509    mov         ebp,esp
 005A350B    add         esp,0FFFFFFF8
 005A350E    mov         dword ptr [ebp-8],edx
 005A3511    mov         dword ptr [ebp-4],eax
 005A3514    mov         eax,dword ptr [ebp-4]
 005A3517    mov         edx,dword ptr [eax]
 005A3519    call        dword ptr [edx+38];TMenuActionLink.sub_005A3278
 005A351C    test        al,al
>005A351E    je          005A3531
 005A3520    mov         eax,dword ptr [ebp-4]
 005A3523    mov         eax,dword ptr [eax+18];TMenuActionLink...........................................FClient...
 005A3526    add         eax,58;TMenuItem.Hint:String
 005A3529    mov         edx,dword ptr [ebp-8]
 005A352C    call        @LStrAsg
 005A3531    pop         ecx
 005A3532    pop         ecx
 005A3533    pop         ebp
 005A3534    ret
end;*}

//005A3538
{*procedure sub_005A3538(?:?);
begin
 005A3538    push        ebp
 005A3539    mov         ebp,esp
 005A353B    add         esp,0FFFFFFF8
 005A353E    mov         dword ptr [ebp-8],edx
 005A3541    mov         dword ptr [ebp-4],eax
 005A3544    mov         eax,dword ptr [ebp-4]
 005A3547    mov         edx,dword ptr [eax]
 005A3549    call        dword ptr [edx+3C];TMenuActionLink.sub_005A3318
 005A354C    test        al,al
>005A354E    je          005A355E
 005A3550    mov         edx,dword ptr [ebp-8]
 005A3553    mov         eax,dword ptr [ebp-4]
 005A3556    mov         eax,dword ptr [eax+18];TMenuActionLink............................................FClien...
 005A3559    call        TMenuItem.SetImageIndex
 005A355E    pop         ecx
 005A355F    pop         ecx
 005A3560    pop         ebp
 005A3561    ret
end;*}

//005A3564
{*procedure sub_005A3564(?:?);
begin
 005A3564    push        ebp
 005A3565    mov         ebp,esp
 005A3567    add         esp,0FFFFFFF8
 005A356A    mov         word ptr [ebp-6],dx
 005A356E    mov         dword ptr [ebp-4],eax
 005A3571    mov         eax,dword ptr [ebp-4]
 005A3574    mov         edx,dword ptr [eax]
 005A3576    call        dword ptr [edx+40];TMenuActionLink.sub_005A3360
 005A3579    test        al,al
>005A357B    je          005A358C
 005A357D    mov         dx,word ptr [ebp-6]
 005A3581    mov         eax,dword ptr [ebp-4]
 005A3584    mov         eax,dword ptr [eax+18];TMenuActionLink.............................................FClie...
 005A3587    call        TMenuItem.SetShortCut
 005A358C    pop         ecx
 005A358D    pop         ecx
 005A358E    pop         ebp
 005A358F    ret
end;*}

//005A3590
{*procedure sub_005A3590(?:?);
begin
 005A3590    push        ebp
 005A3591    mov         ebp,esp
 005A3593    add         esp,0FFFFFFF8
 005A3596    mov         byte ptr [ebp-5],dl
 005A3599    mov         dword ptr [ebp-4],eax
 005A359C    mov         eax,dword ptr [ebp-4]
 005A359F    mov         edx,dword ptr [eax]
 005A35A1    call        dword ptr [edx+44];TMenuActionLink.sub_005A33AC
 005A35A4    test        al,al
>005A35A6    je          005A35B6
 005A35A8    mov         dl,byte ptr [ebp-5]
 005A35AB    mov         eax,dword ptr [ebp-4]
 005A35AE    mov         eax,dword ptr [eax+18];TMenuActionLink..............................................FCli...
 005A35B1    call        TMenuItem.SetVisible
 005A35B6    pop         ecx
 005A35B7    pop         ecx
 005A35B8    pop         ebp
 005A35B9    ret
end;*}

//005A35BC
{*procedure sub_005A35BC(?:?; ?:?);
begin
 005A35BC    push        ebp
 005A35BD    mov         ebp,esp
 005A35BF    push        ecx
 005A35C0    mov         dword ptr [ebp-4],eax
 005A35C3    mov         eax,dword ptr [ebp-4]
 005A35C6    mov         edx,dword ptr [eax]
 005A35C8    call        dword ptr [edx+8];TMenuActionLink.sub_005A33F4
 005A35CB    test        al,al
>005A35CD    je          005A35E7
 005A35CF    mov         eax,dword ptr [ebp-4]
 005A35D2    mov         eax,dword ptr [eax+18];TMenuActionLink...............................................FCl...
 005A35D5    mov         edx,dword ptr [ebp+8]
 005A35D8    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 005A35DE    mov         edx,dword ptr [ebp+0C]
 005A35E1    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TFMain_11011981
 005A35E7    pop         ecx
 005A35E8    pop         ebp
 005A35E9    ret         8
end;*}

//005A35EC
constructor TMenuItem.Create(AOwner:TComponent);
begin
{*
 005A35EC    push        ebp
 005A35ED    mov         ebp,esp
 005A35EF    add         esp,0FFFFFFF4
 005A35F2    test        dl,dl
>005A35F4    je          005A35FE
 005A35F6    add         esp,0FFFFFFF0
 005A35F9    call        @ClassCreate
 005A35FE    mov         dword ptr [ebp-0C],ecx
 005A3601    mov         byte ptr [ebp-5],dl
 005A3604    mov         dword ptr [ebp-4],eax
 005A3607    mov         ecx,dword ptr [ebp-0C]
 005A360A    xor         edx,edx
 005A360C    mov         eax,dword ptr [ebp-4]
 005A360F    call        TComponent.Create
 005A3614    mov         eax,dword ptr [ebp-4]
 005A3617    mov         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
 005A361B    mov         eax,dword ptr [ebp-4]
 005A361E    mov         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
 005A3622    mov         eax,dword ptr [ebp-4]
 005A3625    mov         byte ptr [eax+3B],2;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 005A3629    mov         eax,dword ptr [ebp-4]
 005A362C    mov         byte ptr [eax+3C],2;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 005A3630    call        005A2F4C
 005A3635    mov         edx,dword ptr [ebp-4]
 005A3638    mov         word ptr [edx+50],ax;TMenuItem.FCommand:word
 005A363C    mov         eax,dword ptr [ebp-4]
 005A363F    mov         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
 005A3646    mov         dl,1
 005A3648    mov         eax,[0058B150];TChangeLink
 005A364D    call        TObject.Create;TChangeLink.Create
 005A3652    mov         edx,dword ptr [ebp-4]
 005A3655    mov         dword ptr [edx+78],eax;TMenuItem.FImageChangeLink:TChangeLink
 005A3658    mov         eax,dword ptr [ebp-4]
 005A365B    mov         eax,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 005A365E    mov         edx,dword ptr [ebp-4]
 005A3661    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomActionList
 005A3664    mov         dword ptr [eax+8],5A66F4;TChangeLink.FOnChange:TNotifyEvent
 005A366B    mov         eax,dword ptr [ebp-4]
 005A366E    cmp         byte ptr [ebp-5],0
>005A3672    je          005A3683
 005A3674    call        @AfterConstruction
 005A3679    pop         dword ptr fs:[0]
 005A3680    add         esp,0C
 005A3683    mov         eax,dword ptr [ebp-4]
 005A3686    mov         esp,ebp
 005A3688    pop         ebp
 005A3689    ret
*}
end;

//005A368C
destructor TMenuItem.Destroy;
begin
{*
 005A368C    push        ebp
 005A368D    mov         ebp,esp
 005A368F    add         esp,0FFFFFFF8
 005A3692    call        @BeforeDestruction
 005A3697    mov         byte ptr [ebp-5],dl
 005A369A    mov         dword ptr [ebp-4],eax
 005A369D    mov         edx,dword ptr [ebp-4]
 005A36A0    mov         eax,[006ECD00];0x0 ShortCutItems:TMenuItemStack
 005A36A5    call        005A8F84
 005A36AA    mov         eax,dword ptr [ebp-4]
 005A36AD    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A36B1    je          005A36DA
 005A36B3    mov         eax,dword ptr [ebp-4]
 005A36B6    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A36B9    mov         edx,dword ptr [ebp-4]
 005A36BC    call        005A5E58
 005A36C1    mov         eax,dword ptr [ebp-4]
 005A36C4    xor         edx,edx
 005A36C6    mov         dword ptr [eax+64],edx;TMenuItem.FParent:TMenuItem
>005A36C9    jmp         005A36DA
 005A36CB    xor         edx,edx
 005A36CD    mov         eax,dword ptr [ebp-4]
 005A36D0    call        005A5904
 005A36D5    call        TObject.Free
 005A36DA    mov         eax,dword ptr [ebp-4]
 005A36DD    call        005A58D8
 005A36E2    test        eax,eax
>005A36E4    jg          005A36CB
 005A36E6    mov         eax,dword ptr [ebp-4]
 005A36E9    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>005A36ED    je          005A3705
 005A36EF    xor         edx,edx
 005A36F1    mov         eax,dword ptr [ebp-4]
 005A36F4    call        005A3B58
 005A36F9    mov         eax,dword ptr [ebp-4]
 005A36FC    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 005A36FF    push        eax
 005A3700    call        USER32.DestroyMenu
 005A3705    mov         eax,dword ptr [ebp-4]
 005A3708    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 005A370B    call        TObject.Free
 005A3710    mov         eax,dword ptr [ebp-4]
 005A3713    add         eax,44;TMenuItem.FActionLink:TMenuActionLink
 005A3716    call        FreeAndNil
 005A371B    mov         eax,dword ptr [ebp-4]
 005A371E    add         eax,78;TMenuItem.FImageChangeLink:TChangeLink
 005A3721    call        FreeAndNil
 005A3726    mov         eax,dword ptr [ebp-4]
 005A3729    cmp         word ptr [eax+50],0;TMenuItem.FCommand:word
>005A372E    je          005A3743
 005A3730    mov         eax,dword ptr [ebp-4]
 005A3733    movzx       edx,word ptr [eax+50];TMenuItem.FCommand:word
 005A3737    xor         ecx,ecx
 005A3739    mov         eax,[006ECD08];0x0 CommandPool:TBits
 005A373E    call        TBits.SetBit
 005A3743    mov         eax,dword ptr [ebp-4]
 005A3746    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>005A374A    je          005A3757
 005A374C    mov         eax,dword ptr [ebp-4]
 005A374F    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 005A3752    call        TObject.Free
 005A3757    mov         dl,byte ptr [ebp-5]
 005A375A    and         dl,0FC
 005A375D    mov         eax,dword ptr [ebp-4]
 005A3760    call        TComponent.Destroy
 005A3765    cmp         byte ptr [ebp-5],0
>005A3769    jle         005A3773
 005A376B    mov         eax,dword ptr [ebp-4]
 005A376E    call        @ClassDestroy
 005A3773    pop         ecx
 005A3774    pop         ecx
 005A3775    pop         ebp
 005A3776    ret
*}
end;

//005A3A84
procedure sub_005A3A84(?:TMenuItem);
begin
{*
 005A3A84    push        ebp
 005A3A85    mov         ebp,esp
 005A3A87    add         esp,0FFFFFFF8
 005A3A8A    mov         dword ptr [ebp-4],eax
 005A3A8D    mov         eax,dword ptr [ebp-4]
 005A3A90    cmp         dword ptr [eax+70],0
>005A3A94    je          005A3ABF
 005A3A96    mov         eax,dword ptr [ebp-4]
 005A3A99    mov         eax,dword ptr [eax+70]
 005A3A9C    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 005A3AA2    call        @IsClass
 005A3AA7    test        al,al
>005A3AA9    je          005A3ABF
 005A3AAB    xor         edx,edx
 005A3AAD    mov         eax,dword ptr [ebp-4]
 005A3AB0    call        005A6A04
 005A3AB5    xor         edx,edx
 005A3AB7    mov         eax,dword ptr [ebp-4]
 005A3ABA    call        005A6F80
 005A3ABF    mov         eax,dword ptr [ebp-4]
 005A3AC2    cmp         dword ptr [eax+70],0
>005A3AC6    je          005A3AD7
 005A3AC8    mov         eax,dword ptr [ebp-4]
 005A3ACB    mov         eax,dword ptr [eax+70]
 005A3ACE    call        TMenu.IsRightToLeft
 005A3AD3    test        al,al
>005A3AD5    jne         005A3ADB
 005A3AD7    xor         eax,eax
>005A3AD9    jmp         005A3ADD
 005A3ADB    mov         al,1
 005A3ADD    mov         byte ptr [ebp-5],al
 005A3AE0    mov         eax,dword ptr [ebp-4]
 005A3AE3    mov         edx,dword ptr [eax+68]
 005A3AE6    mov         eax,5A3A58
 005A3AEB    mov         ecx,dword ptr [ebp-4]
 005A3AEE    call        005A2FE4
 005A3AF3    pop         ecx
 005A3AF4    pop         ecx
 005A3AF5    pop         ebp
 005A3AF6    ret
*}
end;

//005A3B58
{*procedure sub_005A3B58(?:TMenuItem; ?:?);
begin
 005A3B58    push        ebp
 005A3B59    mov         ebp,esp
 005A3B5B    add         esp,0FFFFFFF8
 005A3B5E    mov         dword ptr [ebp-8],edx
 005A3B61    mov         dword ptr [ebp-4],eax
 005A3B64    cmp         dword ptr [ebp-8],0
>005A3B68    je          005A3B73
 005A3B6A    mov         eax,dword ptr [ebp-8]
 005A3B6D    test        byte ptr [eax+1C],8
>005A3B71    jne         005A3BC6
 005A3B73    mov         eax,dword ptr [ebp-4]
 005A3B76    mov         eax,dword ptr [eax+68];TMenuItem.FMerged:TMenuItem
 005A3B79    cmp         eax,dword ptr [ebp-8]
>005A3B7C    je          005A3BC6
 005A3B7E    mov         eax,dword ptr [ebp-4]
 005A3B81    cmp         dword ptr [eax+68],0;TMenuItem.FMerged:TMenuItem
>005A3B85    je          005A3B92
 005A3B87    mov         eax,dword ptr [ebp-4]
 005A3B8A    mov         eax,dword ptr [eax+68];TMenuItem.FMerged:TMenuItem
 005A3B8D    xor         edx,edx
 005A3B8F    mov         dword ptr [eax+6C],edx;TMenuItem.FMergedWith:TMenuItem
 005A3B92    mov         eax,dword ptr [ebp-8]
 005A3B95    mov         edx,dword ptr [ebp-4]
 005A3B98    mov         dword ptr [edx+68],eax;TMenuItem.FMerged:TMenuItem
 005A3B9B    mov         eax,dword ptr [ebp-4]
 005A3B9E    cmp         dword ptr [eax+68],0;TMenuItem.FMerged:TMenuItem
>005A3BA2    je          005A3BBE
 005A3BA4    mov         eax,dword ptr [ebp-4]
 005A3BA7    mov         eax,dword ptr [eax+68];TMenuItem.FMerged:TMenuItem
 005A3BAA    mov         edx,dword ptr [ebp-4]
 005A3BAD    mov         dword ptr [eax+6C],edx;TMenuItem.FMergedWith:TMenuItem
 005A3BB0    mov         edx,dword ptr [ebp-4]
 005A3BB3    mov         eax,dword ptr [ebp-4]
 005A3BB6    mov         eax,dword ptr [eax+68];TMenuItem.FMerged:TMenuItem
 005A3BB9    call        TComponent.FreeNotification
 005A3BBE    mov         eax,dword ptr [ebp-4]
 005A3BC1    call        005A3C18
 005A3BC6    pop         ecx
 005A3BC7    pop         ecx
 005A3BC8    pop         ebp
 005A3BC9    ret
end;*}

//005A3BCC
procedure TMenuItem.Loaded;
begin
{*
 005A3BCC    push        ebp
 005A3BCD    mov         ebp,esp
 005A3BCF    push        ecx
 005A3BD0    push        esi
 005A3BD1    mov         dword ptr [ebp-4],eax
 005A3BD4    mov         eax,dword ptr [ebp-4]
 005A3BD7    call        TComponent.Loaded
 005A3BDC    mov         eax,dword ptr [ebp-4]
 005A3BDF    call        TMenuItem.GetAction
 005A3BE4    test        eax,eax
>005A3BE6    je          005A3C00
 005A3BE8    mov         eax,dword ptr [ebp-4]
 005A3BEB    call        TMenuItem.GetAction
 005A3BF0    mov         edx,eax
 005A3BF2    mov         cl,1
 005A3BF4    mov         eax,dword ptr [ebp-4]
 005A3BF7    mov         si,0FFEF
 005A3BFB    call        @CallDynaInst;TMenuItem.sub_005A61F0
 005A3C00    mov         eax,dword ptr [ebp-4]
 005A3C03    cmp         byte ptr [eax+74],0;TMenuItem.FStreamedRebuild:Boolean
>005A3C07    je          005A3C11
 005A3C09    mov         eax,dword ptr [ebp-4]
 005A3C0C    call        005A3C18
 005A3C11    pop         esi
 005A3C12    pop         ecx
 005A3C13    pop         ebp
 005A3C14    ret
*}
end;

//005A3C18
procedure sub_005A3C18(?:TMenuItem);
begin
{*
 005A3C18    push        ebp
 005A3C19    mov         ebp,esp
 005A3C1B    add         esp,0FFFFFFF4
 005A3C1E    mov         dword ptr [ebp-4],eax
 005A3C21    mov         eax,dword ptr [ebp-4]
 005A3C24    test        byte ptr [eax+1C],8;TMenuItem.FComponentState:TComponentState
>005A3C28    jne         005A3D1A
 005A3C2E    mov         eax,dword ptr [ebp-4]
 005A3C31    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>005A3C35    je          005A3C43
 005A3C37    mov         eax,dword ptr [ebp-4]
 005A3C3A    mov         byte ptr [eax+74],1;TMenuItem.FStreamedRebuild:Boolean
>005A3C3E    jmp         005A3D1A
 005A3C43    mov         eax,dword ptr [ebp-4]
 005A3C46    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>005A3C4A    je          005A3C5C
 005A3C4C    mov         eax,dword ptr [ebp-4]
 005A3C4F    mov         eax,dword ptr [eax+6C];TMenuItem.FMergedWith:TMenuItem
 005A3C52    call        005A3C18
>005A3C57    jmp         005A3D1A
 005A3C5C    mov         eax,dword ptr [ebp-4]
 005A3C5F    call        005A3DA0
 005A3C64    push        eax
 005A3C65    call        USER32.GetMenuItemCount
 005A3C6A    mov         dword ptr [ebp-8],eax
 005A3C6D    cmp         dword ptr [ebp-8],0
 005A3C71    sete        byte ptr [ebp-9]
 005A3C75    cmp         dword ptr [ebp-8],0
>005A3C79    jle         005A3CBC
 005A3C7B    push        400
 005A3C80    mov         eax,dword ptr [ebp-8]
 005A3C83    dec         eax
 005A3C84    push        eax
 005A3C85    mov         eax,dword ptr [ebp-4]
 005A3C88    call        005A3DA0
 005A3C8D    push        eax
 005A3C8E    call        USER32.GetMenuState
 005A3C93    test        al,4
>005A3C95    jne         005A3CB3
 005A3C97    push        400
 005A3C9C    mov         eax,dword ptr [ebp-8]
 005A3C9F    dec         eax
 005A3CA0    push        eax
 005A3CA1    mov         eax,dword ptr [ebp-4]
 005A3CA4    call        005A3DA0
 005A3CA9    push        eax
 005A3CAA    call        USER32.RemoveMenu
 005A3CAF    mov         byte ptr [ebp-9],1
 005A3CB3    dec         dword ptr [ebp-8]
 005A3CB6    cmp         dword ptr [ebp-8],0
>005A3CBA    jg          005A3C7B
 005A3CBC    cmp         byte ptr [ebp-9],0
>005A3CC0    je          005A3D1A
 005A3CC2    mov         eax,dword ptr [ebp-4]
 005A3CC5    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A3CC9    jne         005A3D08
 005A3CCB    mov         eax,dword ptr [ebp-4]
 005A3CCE    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 005A3CD1    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 005A3CD7    call        @IsClass
 005A3CDC    test        al,al
>005A3CDE    je          005A3D08
 005A3CE0    mov         eax,dword ptr [ebp-4]
 005A3CE3    call        005A3DA0
 005A3CE8    push        eax
 005A3CE9    call        USER32.GetMenuItemCount
 005A3CEE    test        eax,eax
>005A3CF0    jne         005A3D08
 005A3CF2    mov         eax,dword ptr [ebp-4]
 005A3CF5    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 005A3CF8    push        eax
 005A3CF9    call        USER32.DestroyMenu
 005A3CFE    mov         eax,dword ptr [ebp-4]
 005A3D01    xor         edx,edx
 005A3D03    mov         dword ptr [eax+34],edx;TMenuItem.FHandle:HMENU
>005A3D06    jmp         005A3D10
 005A3D08    mov         eax,dword ptr [ebp-4]
 005A3D0B    call        005A3A84
 005A3D10    xor         edx,edx
 005A3D12    mov         eax,dword ptr [ebp-4]
 005A3D15    mov         ecx,dword ptr [eax]
 005A3D17    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A3D1A    mov         esp,ebp
 005A3D1C    pop         ebp
 005A3D1D    ret
*}
end;

//005A3D20
{*procedure sub_005A3D20(?:TMenuItem; ?:?; ?:?);
begin
 005A3D20    push        ebp
 005A3D21    mov         ebp,esp
 005A3D23    add         esp,0FFFFFFEC
 005A3D26    mov         byte ptr [ebp-9],cl
 005A3D29    mov         dword ptr [ebp-8],edx
 005A3D2C    mov         dword ptr [ebp-4],eax
 005A3D2F    mov         eax,dword ptr [ebp-4]
 005A3D32    call        005A58D8
 005A3D37    dec         eax
 005A3D38    test        eax,eax
>005A3D3A    jl          005A3D9A
 005A3D3C    inc         eax
 005A3D3D    mov         dword ptr [ebp-14],eax
 005A3D40    mov         dword ptr [ebp-10],0
 005A3D47    mov         eax,dword ptr [ebp-10]
 005A3D4A    cmp         eax,dword ptr [ebp-8]
>005A3D4D    jge         005A3D6E
 005A3D4F    mov         edx,dword ptr [ebp-10]
 005A3D52    mov         eax,dword ptr [ebp-4]
 005A3D55    call        005A5904
 005A3D5A    mov         al,byte ptr [eax+3F]
 005A3D5D    cmp         al,byte ptr [ebp-9]
>005A3D60    jbe         005A3D92
 005A3D62    mov         eax,[006E9E74];^gvar_0063CAF8
 005A3D67    call        005A2AC4
>005A3D6C    jmp         005A3D92
 005A3D6E    mov         edx,dword ptr [ebp-10]
 005A3D71    mov         eax,dword ptr [ebp-4]
 005A3D74    call        005A5904
 005A3D79    mov         al,byte ptr [eax+3F]
 005A3D7C    cmp         al,byte ptr [ebp-9]
>005A3D7F    jae         005A3D92
 005A3D81    mov         edx,dword ptr [ebp-10]
 005A3D84    mov         eax,dword ptr [ebp-4]
 005A3D87    call        005A5904
 005A3D8C    mov         dl,byte ptr [ebp-9]
 005A3D8F    mov         byte ptr [eax+3F],dl
 005A3D92    inc         dword ptr [ebp-10]
 005A3D95    dec         dword ptr [ebp-14]
>005A3D98    jne         005A3D47
 005A3D9A    mov         esp,ebp
 005A3D9C    pop         ebp
 005A3D9D    ret
end;*}

//005A3DA0
{*function sub_005A3DA0(?:TMenuItem):?;
begin
 005A3DA0    push        ebp
 005A3DA1    mov         ebp,esp
 005A3DA3    add         esp,0FFFFFFF8
 005A3DA6    mov         dword ptr [ebp-4],eax
 005A3DA9    mov         eax,dword ptr [ebp-4]
 005A3DAC    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>005A3DB0    jne         005A3DFA
 005A3DB2    mov         eax,dword ptr [ebp-4]
 005A3DB5    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 005A3DB8    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A3DBE    call        @IsClass
 005A3DC3    test        al,al
>005A3DC5    je          005A3DD4
 005A3DC7    call        USER32.CreatePopupMenu
 005A3DCC    mov         edx,dword ptr [ebp-4]
 005A3DCF    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
>005A3DD2    jmp         005A3DDF
 005A3DD4    call        USER32.CreateMenu
 005A3DD9    mov         edx,dword ptr [ebp-4]
 005A3DDC    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
 005A3DDF    mov         eax,dword ptr [ebp-4]
 005A3DE2    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>005A3DE6    jne         005A3DF2
 005A3DE8    mov         eax,[006E9E0C];^gvar_0063CA28
 005A3DED    call        005A2AC4
 005A3DF2    mov         eax,dword ptr [ebp-4]
 005A3DF5    call        005A3A84
 005A3DFA    mov         eax,dword ptr [ebp-4]
 005A3DFD    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 005A3E00    mov         dword ptr [ebp-8],eax
 005A3E03    mov         eax,dword ptr [ebp-8]
 005A3E06    pop         ecx
 005A3E07    pop         ecx
 005A3E08    pop         ebp
 005A3E09    ret
end;*}

//005A3E0C
procedure TMenuItem.DefineProperties(Filer:TFiler);
begin
{*
 005A3E0C    push        ebp
 005A3E0D    mov         ebp,esp
 005A3E0F    add         esp,0FFFFFFF8
 005A3E12    push        ebx
 005A3E13    mov         dword ptr [ebp-8],edx
 005A3E16    mov         dword ptr [ebp-4],eax
 005A3E19    mov         edx,dword ptr [ebp-8]
 005A3E1C    mov         eax,dword ptr [ebp-4]
 005A3E1F    call        TComponent.DefineProperties
 005A3E24    mov         eax,dword ptr [ebp-4]
 005A3E27    push        eax
 005A3E28    push        5A3AF8
 005A3E2D    push        0
 005A3E2F    push        0
 005A3E31    xor         ecx,ecx
 005A3E33    mov         edx,5A3E50;'ShortCutText'
 005A3E38    mov         eax,dword ptr [ebp-8]
 005A3E3B    mov         ebx,dword ptr [eax]
 005A3E3D    call        dword ptr [ebx+4];@AbstractError
 005A3E40    pop         ebx
 005A3E41    pop         ecx
 005A3E42    pop         ecx
 005A3E43    pop         ebp
 005A3E44    ret
*}
end;

//005A3E60
{*procedure sub_005A3E60(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
begin
 005A3E60    push        ebp
 005A3E61    mov         ebp,esp
 005A3E63    add         esp,0FFFFFFDC
 005A3E66    push        ebx
 005A3E67    push        esi
 005A3E68    push        edi
 005A3E69    xor         ebx,ebx
 005A3E6B    mov         dword ptr [ebp-10],ebx
 005A3E6E    mov         dword ptr [ebp-0C],ecx
 005A3E71    mov         dword ptr [ebp-8],edx
 005A3E74    mov         dword ptr [ebp-4],eax
 005A3E77    xor         eax,eax
 005A3E79    push        ebp
 005A3E7A    push        5A4066
 005A3E7F    push        dword ptr fs:[eax]
 005A3E82    mov         dword ptr fs:[eax],esp
 005A3E85    mov         eax,dword ptr [ebp-4]
 005A3E88    call        TMenuItem.GetParentMenu
 005A3E8D    mov         dword ptr [ebp-14],eax
 005A3E90    cmp         dword ptr [ebp-14],0
>005A3E94    je          005A3ED4
 005A3E96    mov         eax,dword ptr [ebp-14]
 005A3E99    call        TMenu.IsRightToLeft
 005A3E9E    test        al,al
>005A3EA0    je          005A3ED4
 005A3EA2    test        byte ptr [ebp+8],0
>005A3EA6    jne         005A3EB6
 005A3EA8    mov         eax,dword ptr [ebp+8]
 005A3EAB    and         eax,0FFFFFFFF
 005A3EAE    or          eax,2
 005A3EB1    mov         dword ptr [ebp+8],eax
>005A3EB4    jmp         005A3ECD
 005A3EB6    mov         eax,dword ptr [ebp+8]
 005A3EB9    and         eax,2
 005A3EBC    cmp         eax,2
>005A3EBF    jne         005A3ECD
 005A3EC1    mov         eax,dword ptr [ebp+8]
 005A3EC4    and         eax,0FFFFFFFD
 005A3EC7    or          eax,0
 005A3ECA    mov         dword ptr [ebp+8],eax
 005A3ECD    or          dword ptr [ebp+8],20000
 005A3ED4    lea         eax,[ebp-10]
 005A3ED7    mov         edx,dword ptr [ebp-0C]
 005A3EDA    call        @LStrLAsg
 005A3EDF    test        byte ptr [ebp+9],4
>005A3EE3    je          005A3F09
 005A3EE5    cmp         dword ptr [ebp-10],0
>005A3EE9    je          005A3EFC
 005A3EEB    mov         eax,dword ptr [ebp-10]
 005A3EEE    cmp         byte ptr [eax],26
>005A3EF1    jne         005A3F09
 005A3EF3    mov         eax,dword ptr [ebp-10]
 005A3EF6    cmp         byte ptr [eax+1],0
>005A3EFA    jne         005A3F09
 005A3EFC    lea         eax,[ebp-10]
 005A3EFF    mov         edx,5A4080;' '
 005A3F04    call        @LStrCat
 005A3F09    mov         eax,dword ptr [ebp-10]
 005A3F0C    mov         edx,5A408C;'-'
 005A3F11    call        @LStrCmp
>005A3F16    jne         005A3F4D
 005A3F18    test        byte ptr [ebp+9],4
>005A3F1C    jne         005A4050
 005A3F22    mov         eax,dword ptr [ebp+10]
 005A3F25    mov         esi,eax
 005A3F27    lea         edi,[ebp-24]
 005A3F2A    movs        dword ptr [edi],dword ptr [esi]
 005A3F2B    movs        dword ptr [edi],dword ptr [esi]
 005A3F2C    movs        dword ptr [edi],dword ptr [esi]
 005A3F2D    movs        dword ptr [edi],dword ptr [esi]
 005A3F2E    add         dword ptr [ebp-20],4
 005A3F32    push        2
 005A3F34    push        6
 005A3F36    lea         eax,[ebp-24]
 005A3F39    push        eax
 005A3F3A    mov         eax,dword ptr [ebp-8]
 005A3F3D    call        TCanvas.GetHandle
 005A3F42    push        eax
 005A3F43    call        USER32.DrawEdge
>005A3F48    jmp         005A4050
 005A3F4D    mov         eax,dword ptr [ebp-8]
 005A3F50    mov         eax,dword ptr [eax+14]
 005A3F53    mov         dl,1
 005A3F55    call        TBrush.SetStyle
 005A3F5A    mov         eax,dword ptr [ebp-4]
 005A3F5D    cmp         byte ptr [eax+3A],0
>005A3F61    je          005A3F81
 005A3F63    mov         eax,dword ptr [ebp-8]
 005A3F66    mov         eax,dword ptr [eax+0C]
 005A3F69    call        TFont.GetStyle
 005A3F6E    mov         edx,eax
 005A3F70    or          dl,byte ptr ds:[5A4090];0x1 gvar_005A4090
 005A3F76    mov         eax,dword ptr [ebp-8]
 005A3F79    mov         eax,dword ptr [eax+0C]
 005A3F7C    call        TFont.SetStyle
 005A3F81    mov         eax,dword ptr [ebp-4]
 005A3F84    cmp         byte ptr [eax+39],0
>005A3F88    jne         005A4028
 005A3F8E    cmp         byte ptr [ebp+0C],0
>005A3F92    jne         005A3FE6
 005A3F94    push        1
 005A3F96    push        1
 005A3F98    mov         eax,dword ptr [ebp+10]
 005A3F9B    push        eax
 005A3F9C    call        USER32.OffsetRect
 005A3FA1    mov         eax,dword ptr [ebp-8]
 005A3FA4    mov         eax,dword ptr [eax+0C]
 005A3FA7    mov         edx,80000014
 005A3FAC    call        TFont.SetColor
 005A3FB1    mov         eax,dword ptr [ebp+8]
 005A3FB4    push        eax
 005A3FB5    mov         eax,dword ptr [ebp+10]
 005A3FB8    push        eax
 005A3FB9    mov         eax,dword ptr [ebp-10]
 005A3FBC    call        @LStrLen
 005A3FC1    push        eax
 005A3FC2    mov         eax,dword ptr [ebp-10]
 005A3FC5    call        @LStrToPChar
 005A3FCA    push        eax
 005A3FCB    mov         eax,dword ptr [ebp-8]
 005A3FCE    call        TCanvas.GetHandle
 005A3FD3    push        eax
 005A3FD4    call        USER32.DrawTextA
 005A3FD9    push        0FF
 005A3FDB    push        0FF
 005A3FDD    mov         eax,dword ptr [ebp+10]
 005A3FE0    push        eax
 005A3FE1    call        USER32.OffsetRect
 005A3FE6    cmp         byte ptr [ebp+0C],0
>005A3FEA    je          005A4018
 005A3FEC    mov         eax,8000000D
 005A3FF1    call        ColorToRGB
 005A3FF6    mov         ebx,eax
 005A3FF8    mov         eax,80000010
 005A3FFD    call        ColorToRGB
 005A4002    cmp         ebx,eax
>005A4004    jne         005A4018
 005A4006    mov         eax,dword ptr [ebp-8]
 005A4009    mov         eax,dword ptr [eax+0C]
 005A400C    mov         edx,80000014
 005A4011    call        TFont.SetColor
>005A4016    jmp         005A4028
 005A4018    mov         eax,dword ptr [ebp-8]
 005A401B    mov         eax,dword ptr [eax+0C]
 005A401E    mov         edx,80000010
 005A4023    call        TFont.SetColor
 005A4028    mov         eax,dword ptr [ebp+8]
 005A402B    push        eax
 005A402C    mov         eax,dword ptr [ebp+10]
 005A402F    push        eax
 005A4030    mov         eax,dword ptr [ebp-10]
 005A4033    call        @LStrLen
 005A4038    push        eax
 005A4039    mov         eax,dword ptr [ebp-10]
 005A403C    call        @LStrToPChar
 005A4041    push        eax
 005A4042    mov         eax,dword ptr [ebp-8]
 005A4045    call        TCanvas.GetHandle
 005A404A    push        eax
 005A404B    call        USER32.DrawTextA
 005A4050    xor         eax,eax
 005A4052    pop         edx
 005A4053    pop         ecx
 005A4054    pop         ecx
 005A4055    mov         dword ptr fs:[eax],edx
 005A4058    push        5A406D
 005A405D    lea         eax,[ebp-10]
 005A4060    call        @LStrClr
 005A4065    ret
>005A4066    jmp         @HandleFinally
>005A406B    jmp         005A405D
 005A406D    pop         edi
 005A406E    pop         esi
 005A406F    pop         ebx
 005A4070    mov         esp,ebp
 005A4072    pop         ebp
 005A4073    ret         0C
end;*}

//005A4094
{*procedure sub_005A4094(?:?; ?:?; ?:?);
begin
 005A4094    push        ebp
 005A4095    mov         ebp,esp
 005A4097    add         esp,0FFFFFFE8
 005A409A    push        ebx
 005A409B    push        esi
 005A409C    push        edi
 005A409D    mov         esi,ecx
 005A409F    lea         edi,[ebp-18]
 005A40A2    movs        dword ptr [edi],dword ptr [esi]
 005A40A3    movs        dword ptr [edi],dword ptr [esi]
 005A40A4    movs        dword ptr [edi],dword ptr [esi]
 005A40A5    movs        dword ptr [edi],dword ptr [esi]
 005A40A6    mov         dword ptr [ebp-8],edx
 005A40A9    mov         dword ptr [ebp-4],eax
 005A40AC    mov         eax,dword ptr [ebp-4]
 005A40AF    cmp         word ptr [eax+92],0;TMenuItem.?f92:word
>005A40B7    je          005A40D6
 005A40B9    lea         eax,[ebp-18]
 005A40BC    push        eax
 005A40BD    mov         al,byte ptr [ebp+8]
 005A40C0    push        eax
 005A40C1    mov         ebx,dword ptr [ebp-4]
 005A40C4    mov         ecx,dword ptr [ebp-8]
 005A40C7    mov         edx,dword ptr [ebp-4]
 005A40CA    mov         eax,dword ptr [ebx+94];TMenuItem.?f94:dword
 005A40D0    call        dword ptr [ebx+90];TMenuItem.OnDrawItem
 005A40D6    pop         edi
 005A40D7    pop         esi
 005A40D8    pop         ebx
 005A40D9    mov         esp,ebp
 005A40DB    pop         ebp
 005A40DC    ret         4
end;*}

//005A40E0
procedure NormalDraw;
begin
{*
 005A40E0    push        ebp
 005A40E1    mov         ebp,esp
 005A40E3    push        0
 005A40E5    push        esi
 005A40E6    push        edi
 005A40E7    xor         eax,eax
 005A40E9    push        ebp
 005A40EA    push        5A4942
 005A40EF    push        dword ptr fs:[eax]
 005A40F2    mov         dword ptr fs:[eax],esp
 005A40F5    mov         eax,dword ptr [ebp+8]
 005A40F8    cmp         byte ptr [eax-21],0
>005A40FC    jne         005A410F
 005A40FE    mov         eax,dword ptr [ebp+8]
 005A4101    lea         edx,[eax-20]
 005A4104    mov         eax,dword ptr [ebp+8]
 005A4107    mov         eax,dword ptr [eax-28]
 005A410A    call        TCanvas.FillRect
 005A410F    mov         eax,dword ptr [ebp+8]
 005A4112    cmp         dword ptr [eax-2C],0
>005A4116    je          005A4121
 005A4118    mov         eax,dword ptr [ebp+8]
 005A411B    mov         byte ptr [eax-2D],0
>005A411F    jmp         005A414E
 005A4121    mov         eax,dword ptr [ebp+8]
 005A4124    mov         eax,dword ptr [eax-2C]
 005A4127    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A412D    call        @IsClass
 005A4132    test        al,al
>005A4134    je          005A4147
 005A4136    mov         eax,dword ptr [ebp+8]
 005A4139    mov         eax,dword ptr [eax-2C]
 005A413C    mov         al,byte ptr [eax+60]
 005A413F    mov         edx,dword ptr [ebp+8]
 005A4142    mov         byte ptr [edx-2D],al
>005A4145    jmp         005A414E
 005A4147    mov         eax,dword ptr [ebp+8]
 005A414A    mov         byte ptr [eax-2D],0
 005A414E    mov         eax,dword ptr [ebp+8]
 005A4151    mov         eax,dword ptr [eax-20]
 005A4154    inc         eax
 005A4155    mov         edx,dword ptr [ebp+8]
 005A4158    mov         dword ptr [edx-10],eax
 005A415B    mov         eax,dword ptr [ebp+8]
 005A415E    mov         eax,dword ptr [eax-1C]
 005A4161    inc         eax
 005A4162    mov         edx,dword ptr [ebp+8]
 005A4165    mov         dword ptr [edx-0C],eax
 005A4168    mov         eax,dword ptr [ebp+8]
 005A416B    mov         eax,dword ptr [eax-34]
 005A416E    mov         eax,dword ptr [eax+30]
 005A4171    mov         edx,5A4958;'-'
 005A4176    call        @LStrCmp
>005A417B    jne         005A41AC
 005A417D    mov         eax,dword ptr [ebp+8]
 005A4180    lea         edx,[eax-20]
 005A4183    mov         eax,dword ptr [ebp+8]
 005A4186    mov         eax,dword ptr [eax-28]
 005A4189    call        TCanvas.FillRect
 005A418E    mov         eax,dword ptr [ebp+8]
 005A4191    xor         edx,edx
 005A4193    mov         dword ptr [eax-10],edx
 005A4196    mov         eax,dword ptr [ebp+8]
 005A4199    mov         dword ptr [eax-8],0FFFFFFFC
 005A41A0    mov         eax,dword ptr [ebp+8]
 005A41A3    mov         byte ptr [eax-35],0
>005A41A7    jmp         005A4641
 005A41AC    mov         eax,dword ptr [ebp+8]
 005A41AF    cmp         dword ptr [eax-3C],0
>005A41B3    je          005A4201
 005A41B5    mov         eax,dword ptr [ebp+8]
 005A41B8    mov         eax,dword ptr [eax-34]
 005A41BB    cmp         dword ptr [eax+40],0FFFFFFFF
>005A41BF    jle         005A41D7
 005A41C1    mov         eax,dword ptr [ebp+8]
 005A41C4    mov         eax,dword ptr [eax-3C]
 005A41C7    call        0058BBF4
 005A41CC    mov         edx,dword ptr [ebp+8]
 005A41CF    mov         edx,dword ptr [edx-34]
 005A41D2    cmp         eax,dword ptr [edx+40]
>005A41D5    jg          005A4205
 005A41D7    mov         eax,dword ptr [ebp+8]
 005A41DA    mov         eax,dword ptr [eax-34]
 005A41DD    cmp         byte ptr [eax+38],0
>005A41E1    je          005A4201
 005A41E3    mov         eax,dword ptr [ebp+8]
 005A41E6    mov         eax,dword ptr [eax-34]
 005A41E9    cmp         dword ptr [eax+4C],0
>005A41ED    je          005A4205
 005A41EF    mov         eax,dword ptr [ebp+8]
 005A41F2    mov         eax,dword ptr [eax-34]
 005A41F5    mov         eax,dword ptr [eax+4C]
 005A41F8    mov         edx,dword ptr [eax]
 005A41FA    call        dword ptr [edx+1C]
 005A41FD    test        al,al
>005A41FF    jne         005A4205
 005A4201    xor         eax,eax
>005A4203    jmp         005A4207
 005A4205    mov         al,1
 005A4207    mov         edx,dword ptr [ebp+8]
 005A420A    mov         byte ptr [edx-3D],al
 005A420D    mov         eax,dword ptr [ebp+8]
 005A4210    cmp         byte ptr [eax-3D],0
>005A4214    jne         005A423C
 005A4216    mov         eax,dword ptr [ebp+8]
 005A4219    mov         eax,dword ptr [eax-34]
 005A421C    cmp         dword ptr [eax+4C],0
>005A4220    je          005A45E4
 005A4226    mov         eax,dword ptr [ebp+8]
 005A4229    mov         eax,dword ptr [eax-34]
 005A422C    mov         eax,dword ptr [eax+4C]
 005A422F    mov         edx,dword ptr [eax]
 005A4231    call        dword ptr [edx+1C]
 005A4234    test        al,al
>005A4236    jne         005A45E4
 005A423C    mov         eax,dword ptr [ebp+8]
 005A423F    mov         byte ptr [eax-35],1
 005A4243    mov         eax,dword ptr [ebp+8]
 005A4246    cmp         byte ptr [eax-3D],0
>005A424A    je          005A4278
 005A424C    mov         eax,dword ptr [ebp+8]
 005A424F    mov         eax,dword ptr [eax-10]
 005A4252    mov         edx,dword ptr [ebp+8]
 005A4255    mov         edx,dword ptr [edx-3C]
 005A4258    add         eax,dword ptr [edx+34]
 005A425B    mov         edx,dword ptr [ebp+8]
 005A425E    mov         dword ptr [edx-8],eax
 005A4261    mov         eax,dword ptr [ebp+8]
 005A4264    mov         eax,dword ptr [eax-0C]
 005A4267    mov         edx,dword ptr [ebp+8]
 005A426A    mov         edx,dword ptr [edx-3C]
 005A426D    add         eax,dword ptr [edx+30]
 005A4270    mov         edx,dword ptr [ebp+8]
 005A4273    mov         dword ptr [edx-4],eax
>005A4276    jmp         005A4296
 005A4278    mov         eax,dword ptr [ebp+8]
 005A427B    mov         eax,dword ptr [eax-10]
 005A427E    add         eax,10
 005A4281    mov         edx,dword ptr [ebp+8]
 005A4284    mov         dword ptr [edx-8],eax
 005A4287    mov         eax,dword ptr [ebp+8]
 005A428A    mov         eax,dword ptr [eax-0C]
 005A428D    add         eax,10
 005A4290    mov         edx,dword ptr [ebp+8]
 005A4293    mov         dword ptr [edx-4],eax
 005A4296    mov         eax,dword ptr [ebp+8]
 005A4299    mov         eax,dword ptr [eax-34]
 005A429C    cmp         byte ptr [eax+38],0
>005A42A0    je          005A4359
 005A42A6    mov         eax,dword ptr [ebp+8]
 005A42A9    inc         dword ptr [eax-8]
 005A42AC    mov         eax,dword ptr [ebp+8]
 005A42AF    inc         dword ptr [eax-4]
 005A42B2    mov         eax,dword ptr [ebp+8]
 005A42B5    mov         eax,dword ptr [eax-28]
 005A42B8    mov         eax,dword ptr [eax+14]
 005A42BB    call        TBrush.GetColor
 005A42C0    mov         edx,dword ptr [ebp+8]
 005A42C3    mov         dword ptr [edx-44],eax
 005A42C6    mov         eax,dword ptr [ebp+8]
 005A42C9    test        byte ptr [eax+0C],1
>005A42CD    jne         005A4315
 005A42CF    mov         eax,dword ptr [ebp+8]
 005A42D2    mov         eax,dword ptr [eax-28]
 005A42D5    mov         eax,dword ptr [eax+14]
 005A42D8    call        TBrush.GetColor
 005A42DD    mov         edx,dword ptr [ebp+8]
 005A42E0    mov         dword ptr [edx-44],eax
 005A42E3    mov         edx,80000014
 005A42E8    mov         eax,8000000F
 005A42ED    call        005C98A0
 005A42F2    mov         edx,eax
 005A42F4    mov         eax,dword ptr [ebp+8]
 005A42F7    mov         eax,dword ptr [eax-28]
 005A42FA    mov         eax,dword ptr [eax+14]
 005A42FD    call        TBrush.SetBitmap
 005A4302    mov         eax,dword ptr [ebp+8]
 005A4305    lea         edx,[eax-10]
 005A4308    mov         eax,dword ptr [ebp+8]
 005A430B    mov         eax,dword ptr [eax-28]
 005A430E    call        TCanvas.FillRect
>005A4313    jmp         005A4339
 005A4315    mov         eax,dword ptr [ebp+8]
 005A4318    mov         eax,dword ptr [eax-28]
 005A431B    mov         eax,dword ptr [eax+14]
 005A431E    mov         edx,8000000F
 005A4323    call        TBrush.SetColor
 005A4328    mov         eax,dword ptr [ebp+8]
 005A432B    lea         edx,[eax-10]
 005A432E    mov         eax,dword ptr [ebp+8]
 005A4331    mov         eax,dword ptr [eax-28]
 005A4334    call        TCanvas.FillRect
 005A4339    mov         eax,dword ptr [ebp+8]
 005A433C    mov         edx,dword ptr [eax-44]
 005A433F    mov         eax,dword ptr [ebp+8]
 005A4342    mov         eax,dword ptr [eax-28]
 005A4345    mov         eax,dword ptr [eax+14]
 005A4348    call        TBrush.SetColor
 005A434D    mov         eax,dword ptr [ebp+8]
 005A4350    inc         dword ptr [eax-10]
 005A4353    mov         eax,dword ptr [ebp+8]
 005A4356    inc         dword ptr [eax-0C]
 005A4359    mov         eax,dword ptr [ebp+8]
 005A435C    cmp         byte ptr [eax-3D],0
>005A4360    je          005A44C0
 005A4366    mov         eax,dword ptr [ebp+8]
 005A4369    mov         eax,dword ptr [eax-34]
 005A436C    cmp         dword ptr [eax+40],0FFFFFFFF
>005A4370    jle         005A43BF
 005A4372    mov         eax,dword ptr [ebp+8]
 005A4375    mov         eax,dword ptr [eax-3C]
 005A4378    call        0058BBF4
 005A437D    mov         edx,dword ptr [ebp+8]
 005A4380    mov         edx,dword ptr [edx-34]
 005A4383    cmp         eax,dword ptr [edx+40]
>005A4386    jle         005A43BF
 005A4388    mov         eax,dword ptr [ebp+8]
 005A438B    mov         eax,dword ptr [eax-0C]
 005A438E    push        eax
 005A438F    mov         eax,dword ptr [ebp+8]
 005A4392    mov         eax,dword ptr [eax-34]
 005A4395    mov         eax,dword ptr [eax+40]
 005A4398    push        eax
 005A4399    mov         eax,dword ptr [ebp+8]
 005A439C    mov         eax,dword ptr [eax-34]
 005A439F    mov         al,byte ptr [eax+39]
 005A43A2    push        eax
 005A43A3    mov         eax,dword ptr [ebp+8]
 005A43A6    mov         ecx,dword ptr [eax-10]
 005A43A9    mov         eax,dword ptr [ebp+8]
 005A43AC    mov         edx,dword ptr [eax-28]
 005A43AF    mov         eax,dword ptr [ebp+8]
 005A43B2    mov         eax,dword ptr [eax-3C]
 005A43B5    call        0058C1C8
>005A43BA    jmp         005A45CA
 005A43BF    mov         dl,1
 005A43C1    mov         eax,[005BEDD4];TBitmap
 005A43C6    call        TBitmap.Create
 005A43CB    mov         edx,dword ptr [ebp+8]
 005A43CE    mov         dword ptr [edx-48],eax
 005A43D1    xor         eax,eax
 005A43D3    push        ebp
 005A43D4    push        5A44B9
 005A43D9    push        dword ptr fs:[eax]
 005A43DC    mov         dword ptr fs:[eax],esp
 005A43DF    mov         eax,dword ptr [ebp+8]
 005A43E2    mov         eax,dword ptr [eax-48]
 005A43E5    mov         dl,1
 005A43E7    mov         ecx,dword ptr [eax]
 005A43E9    call        dword ptr [ecx+3C]
 005A43EC    push        7FF8
 005A43F1    push        0
 005A43F3    call        USER32.LoadBitmapA
 005A43F8    mov         edx,eax
 005A43FA    mov         eax,dword ptr [ebp+8]
 005A43FD    mov         eax,dword ptr [eax-48]
 005A4400    call        TBitmap.SetHandle
 005A4405    mov         eax,dword ptr [ebp+8]
 005A4408    mov         eax,dword ptr [eax-28]
 005A440B    mov         eax,dword ptr [eax+0C]
 005A440E    mov         eax,dword ptr [eax+18]
 005A4411    mov         edx,dword ptr [ebp+8]
 005A4414    mov         dword ptr [edx-44],eax
 005A4417    mov         eax,dword ptr [ebp+8]
 005A441A    mov         eax,dword ptr [eax-28]
 005A441D    mov         eax,dword ptr [eax+0C]
 005A4420    mov         edx,80000012
 005A4425    call        TFont.SetColor
 005A442A    mov         eax,dword ptr [ebp+8]
 005A442D    mov         eax,dword ptr [eax-48]
 005A4430    push        eax
 005A4431    mov         eax,dword ptr [ebp+8]
 005A4434    mov         eax,dword ptr [eax-48]
 005A4437    mov         edx,dword ptr [eax]
 005A4439    call        dword ptr [edx+20]
 005A443C    mov         edx,dword ptr [ebp+8]
 005A443F    mov         edx,dword ptr [edx-4]
 005A4442    mov         ecx,dword ptr [ebp+8]
 005A4445    sub         edx,dword ptr [ecx-0C]
 005A4448    sub         edx,eax
 005A444A    sar         edx,1
>005A444C    jns         005A4451
 005A444E    adc         edx,0
 005A4451    mov         eax,dword ptr [ebp+8]
 005A4454    add         edx,dword ptr [eax-0C]
 005A4457    inc         edx
 005A4458    push        edx
 005A4459    mov         eax,dword ptr [ebp+8]
 005A445C    mov         eax,dword ptr [eax-48]
 005A445F    mov         edx,dword ptr [eax]
 005A4461    call        dword ptr [edx+2C]
 005A4464    mov         edx,dword ptr [ebp+8]
 005A4467    mov         edx,dword ptr [edx-8]
 005A446A    mov         ecx,dword ptr [ebp+8]
 005A446D    sub         edx,dword ptr [ecx-10]
 005A4470    sub         edx,eax
 005A4472    sar         edx,1
>005A4474    jns         005A4479
 005A4476    adc         edx,0
 005A4479    mov         eax,dword ptr [ebp+8]
 005A447C    add         edx,dword ptr [eax-10]
 005A447F    inc         edx
 005A4480    mov         eax,dword ptr [ebp+8]
 005A4483    mov         eax,dword ptr [eax-28]
 005A4486    pop         ecx
 005A4487    call        005C1078
 005A448C    mov         eax,dword ptr [ebp+8]
 005A448F    mov         edx,dword ptr [eax-44]
 005A4492    mov         eax,dword ptr [ebp+8]
 005A4495    mov         eax,dword ptr [eax-28]
 005A4498    mov         eax,dword ptr [eax+0C]
 005A449B    call        TFont.SetColor
 005A44A0    xor         eax,eax
 005A44A2    pop         edx
 005A44A3    pop         ecx
 005A44A4    pop         ecx
 005A44A5    mov         dword ptr fs:[eax],edx
 005A44A8    push        5A45CA
 005A44AD    mov         eax,dword ptr [ebp+8]
 005A44B0    mov         eax,dword ptr [eax-48]
 005A44B3    call        TObject.Free
 005A44B8    ret
>005A44B9    jmp         @HandleFinally
>005A44BE    jmp         005A44AD
 005A44C0    mov         eax,dword ptr [ebp+8]
 005A44C3    mov         edx,dword ptr [ebp+8]
 005A44C6    lea         esi,[eax-10]
 005A44C9    lea         edi,[edx-58]
 005A44CC    movs        dword ptr [edi],dword ptr [esi]
 005A44CD    movs        dword ptr [edi],dword ptr [esi]
 005A44CE    movs        dword ptr [edi],dword ptr [esi]
 005A44CF    movs        dword ptr [edi],dword ptr [esi]
 005A44D0    mov         eax,dword ptr [ebp+8]
 005A44D3    mov         eax,dword ptr [eax-34]
 005A44D6    mov         eax,dword ptr [eax+4C]
 005A44D9    mov         edx,dword ptr [eax]
 005A44DB    call        dword ptr [edx+2C]
 005A44DE    mov         edx,dword ptr [ebp+8]
 005A44E1    mov         edx,dword ptr [edx-8]
 005A44E4    mov         ecx,dword ptr [ebp+8]
 005A44E7    sub         edx,dword ptr [ecx-10]
 005A44EA    cmp         eax,edx
>005A44EC    jge         005A4538
 005A44EE    mov         eax,dword ptr [ebp+8]
 005A44F1    mov         eax,dword ptr [eax-34]
 005A44F4    mov         eax,dword ptr [eax+4C]
 005A44F7    mov         edx,dword ptr [eax]
 005A44F9    call        dword ptr [edx+2C]
 005A44FC    mov         edx,dword ptr [ebp+8]
 005A44FF    mov         edx,dword ptr [edx-8]
 005A4502    mov         ecx,dword ptr [ebp+8]
 005A4505    sub         edx,dword ptr [ecx-10]
 005A4508    sub         edx,eax
 005A450A    sar         edx,1
>005A450C    jns         005A4511
 005A450E    adc         edx,0
 005A4511    mov         eax,dword ptr [ebp+8]
 005A4514    add         edx,dword ptr [eax-10]
 005A4517    inc         edx
 005A4518    mov         eax,dword ptr [ebp+8]
 005A451B    mov         dword ptr [eax-10],edx
 005A451E    mov         eax,dword ptr [ebp+8]
 005A4521    mov         eax,dword ptr [eax-34]
 005A4524    mov         eax,dword ptr [eax+4C]
 005A4527    mov         edx,dword ptr [eax]
 005A4529    call        dword ptr [edx+2C]
 005A452C    mov         edx,dword ptr [ebp+8]
 005A452F    add         eax,dword ptr [edx-10]
 005A4532    mov         edx,dword ptr [ebp+8]
 005A4535    mov         dword ptr [edx-8],eax
 005A4538    mov         eax,dword ptr [ebp+8]
 005A453B    mov         eax,dword ptr [eax-34]
 005A453E    mov         eax,dword ptr [eax+4C]
 005A4541    mov         edx,dword ptr [eax]
 005A4543    call        dword ptr [edx+20]
 005A4546    mov         edx,dword ptr [ebp+8]
 005A4549    mov         edx,dword ptr [edx-4]
 005A454C    mov         ecx,dword ptr [ebp+8]
 005A454F    sub         edx,dword ptr [ecx-0C]
 005A4552    cmp         eax,edx
>005A4554    jge         005A45A0
 005A4556    mov         eax,dword ptr [ebp+8]
 005A4559    mov         eax,dword ptr [eax-34]
 005A455C    mov         eax,dword ptr [eax+4C]
 005A455F    mov         edx,dword ptr [eax]
 005A4561    call        dword ptr [edx+20]
 005A4564    mov         edx,dword ptr [ebp+8]
 005A4567    mov         edx,dword ptr [edx-4]
 005A456A    mov         ecx,dword ptr [ebp+8]
 005A456D    sub         edx,dword ptr [ecx-0C]
 005A4570    sub         edx,eax
 005A4572    sar         edx,1
>005A4574    jns         005A4579
 005A4576    adc         edx,0
 005A4579    mov         eax,dword ptr [ebp+8]
 005A457C    add         edx,dword ptr [eax-0C]
 005A457F    inc         edx
 005A4580    mov         eax,dword ptr [ebp+8]
 005A4583    mov         dword ptr [eax-0C],edx
 005A4586    mov         eax,dword ptr [ebp+8]
 005A4589    mov         eax,dword ptr [eax-34]
 005A458C    mov         eax,dword ptr [eax+4C]
 005A458F    mov         edx,dword ptr [eax]
 005A4591    call        dword ptr [edx+20]
 005A4594    mov         edx,dword ptr [ebp+8]
 005A4597    add         eax,dword ptr [edx-0C]
 005A459A    mov         edx,dword ptr [ebp+8]
 005A459D    mov         dword ptr [edx-4],eax
 005A45A0    mov         eax,dword ptr [ebp+8]
 005A45A3    mov         eax,dword ptr [eax-34]
 005A45A6    mov         ecx,dword ptr [eax+4C]
 005A45A9    mov         eax,dword ptr [ebp+8]
 005A45AC    lea         edx,[eax-10]
 005A45AF    mov         eax,dword ptr [ebp+8]
 005A45B2    mov         eax,dword ptr [eax-28]
 005A45B5    call        TCanvas.StretchDraw
 005A45BA    mov         eax,dword ptr [ebp+8]
 005A45BD    mov         edx,dword ptr [ebp+8]
 005A45C0    lea         esi,[eax-58]
 005A45C3    lea         edi,[edx-10]
 005A45C6    movs        dword ptr [edi],dword ptr [esi]
 005A45C7    movs        dword ptr [edi],dword ptr [esi]
 005A45C8    movs        dword ptr [edi],dword ptr [esi]
 005A45C9    movs        dword ptr [edi],dword ptr [esi]
 005A45CA    mov         eax,dword ptr [ebp+8]
 005A45CD    mov         eax,dword ptr [eax-34]
 005A45D0    cmp         byte ptr [eax+38],0
>005A45D4    je          005A4641
 005A45D6    mov         eax,dword ptr [ebp+8]
 005A45D9    dec         dword ptr [eax-8]
 005A45DC    mov         eax,dword ptr [ebp+8]
 005A45DF    dec         dword ptr [eax-4]
>005A45E2    jmp         005A4641
 005A45E4    mov         eax,dword ptr [ebp+8]
 005A45E7    cmp         dword ptr [eax-3C],0
>005A45EB    je          005A4622
 005A45ED    mov         eax,dword ptr [ebp+8]
 005A45F0    cmp         byte ptr [eax+8],0
>005A45F4    jne         005A4622
 005A45F6    mov         eax,dword ptr [ebp+8]
 005A45F9    mov         eax,dword ptr [eax-10]
 005A45FC    mov         edx,dword ptr [ebp+8]
 005A45FF    mov         edx,dword ptr [edx-3C]
 005A4602    add         eax,dword ptr [edx+34]
 005A4605    mov         edx,dword ptr [ebp+8]
 005A4608    mov         dword ptr [edx-8],eax
 005A460B    mov         eax,dword ptr [ebp+8]
 005A460E    mov         eax,dword ptr [eax-0C]
 005A4611    mov         edx,dword ptr [ebp+8]
 005A4614    mov         edx,dword ptr [edx-3C]
 005A4617    add         eax,dword ptr [edx+30]
 005A461A    mov         edx,dword ptr [ebp+8]
 005A461D    mov         dword ptr [edx-4],eax
>005A4620    jmp         005A463A
 005A4622    mov         eax,dword ptr [ebp+8]
 005A4625    mov         eax,dword ptr [eax-10]
 005A4628    mov         edx,dword ptr [ebp+8]
 005A462B    mov         dword ptr [edx-8],eax
 005A462E    mov         eax,dword ptr [ebp+8]
 005A4631    mov         eax,dword ptr [eax-0C]
 005A4634    mov         edx,dword ptr [ebp+8]
 005A4637    mov         dword ptr [edx-4],eax
 005A463A    mov         eax,dword ptr [ebp+8]
 005A463D    mov         byte ptr [eax-35],0
 005A4641    mov         eax,dword ptr [ebp+8]
 005A4644    dec         dword ptr [eax-10]
 005A4647    mov         eax,dword ptr [ebp+8]
 005A464A    dec         dword ptr [eax-0C]
 005A464D    mov         eax,dword ptr [ebp+8]
 005A4650    add         dword ptr [eax-8],2
 005A4654    mov         eax,dword ptr [ebp+8]
 005A4657    add         dword ptr [eax-4],2
 005A465B    mov         eax,dword ptr [ebp+8]
 005A465E    mov         eax,dword ptr [eax-34]
 005A4661    cmp         byte ptr [eax+38],0
>005A4665    jne         005A4679
 005A4667    mov         eax,dword ptr [ebp+8]
 005A466A    cmp         byte ptr [eax-21],0
>005A466E    je          005A46A5
 005A4670    mov         eax,dword ptr [ebp+8]
 005A4673    cmp         byte ptr [eax-35],0
>005A4677    je          005A46A5
 005A4679    push        0F
 005A467B    mov         eax,dword ptr [ebp+8]
 005A467E    mov         eax,dword ptr [eax-34]
 005A4681    movzx       eax,byte ptr [eax+38]
 005A4685    mov         eax,dword ptr [eax*4+6E3C94]
 005A468C    push        eax
 005A468D    mov         eax,dword ptr [ebp+8]
 005A4690    add         eax,0FFFFFFF0
 005A4693    push        eax
 005A4694    mov         eax,dword ptr [ebp+8]
 005A4697    mov         eax,dword ptr [eax-28]
 005A469A    call        TCanvas.GetHandle
 005A469F    push        eax
 005A46A0    call        USER32.DrawEdge
 005A46A5    mov         eax,dword ptr [ebp+8]
 005A46A8    cmp         byte ptr [eax-21],0
>005A46AC    je          005A46FA
 005A46AE    mov         eax,dword ptr [ebp+8]
 005A46B1    cmp         byte ptr [eax-35],0
>005A46B5    je          005A46C4
 005A46B7    mov         eax,dword ptr [ebp+8]
 005A46BA    mov         eax,dword ptr [eax-8]
 005A46BD    inc         eax
 005A46BE    mov         edx,dword ptr [ebp+8]
 005A46C1    mov         dword ptr [edx-20],eax
 005A46C4    mov         eax,dword ptr [ebp+8]
 005A46C7    cmp         byte ptr [eax-59],0
>005A46CB    je          005A46D6
 005A46CD    mov         eax,dword ptr [ebp+8]
 005A46D0    cmp         byte ptr [eax+8],0
>005A46D4    jne         005A46E9
 005A46D6    mov         eax,dword ptr [ebp+8]
 005A46D9    mov         eax,dword ptr [eax-28]
 005A46DC    mov         eax,dword ptr [eax+14]
 005A46DF    mov         edx,8000000D
 005A46E4    call        TBrush.SetColor
 005A46E9    mov         eax,dword ptr [ebp+8]
 005A46EC    lea         edx,[eax-20]
 005A46EF    mov         eax,dword ptr [ebp+8]
 005A46F2    mov         eax,dword ptr [eax-28]
 005A46F5    call        TCanvas.FillRect
 005A46FA    mov         eax,dword ptr [ebp+8]
 005A46FD    cmp         byte ptr [eax+8],0
>005A4701    je          005A4771
 005A4703    mov         eax,dword ptr [ebp+8]
 005A4706    cmp         byte ptr [eax-59],0
>005A470A    je          005A4771
 005A470C    mov         eax,dword ptr [ebp+8]
 005A470F    cmp         byte ptr [eax-21],0
>005A4713    je          005A4733
 005A4715    push        0F
 005A4717    push        2
 005A4719    mov         eax,dword ptr [ebp+8]
 005A471C    add         eax,0FFFFFFE0
 005A471F    push        eax
 005A4720    mov         eax,dword ptr [ebp+8]
 005A4723    mov         eax,dword ptr [eax-28]
 005A4726    call        TCanvas.GetHandle
 005A472B    push        eax
 005A472C    call        USER32.DrawEdge
>005A4731    jmp         005A4758
 005A4733    mov         eax,dword ptr [ebp+8]
 005A4736    test        byte ptr [eax+0C],40
>005A473A    je          005A4758
 005A473C    push        0F
 005A473E    push        4
 005A4740    mov         eax,dword ptr [ebp+8]
 005A4743    add         eax,0FFFFFFE0
 005A4746    push        eax
 005A4747    mov         eax,dword ptr [ebp+8]
 005A474A    mov         eax,dword ptr [eax-28]
 005A474D    call        TCanvas.GetHandle
 005A4752    push        eax
 005A4753    call        USER32.DrawEdge
 005A4758    mov         eax,dword ptr [ebp+8]
 005A475B    cmp         byte ptr [eax-21],0
>005A475F    jne         005A4771
 005A4761    push        0FF
 005A4763    push        0
 005A4765    mov         eax,dword ptr [ebp+8]
 005A4768    add         eax,0FFFFFFE0
 005A476B    push        eax
 005A476C    call        USER32.OffsetRect
 005A4771    mov         eax,dword ptr [ebp+8]
 005A4774    cmp         byte ptr [eax-21],0
>005A4778    je          005A4783
 005A477A    mov         eax,dword ptr [ebp+8]
 005A477D    cmp         byte ptr [eax-35],0
>005A4781    jne         005A4790
 005A4783    mov         eax,dword ptr [ebp+8]
 005A4786    mov         eax,dword ptr [eax-8]
 005A4789    inc         eax
 005A478A    mov         edx,dword ptr [ebp+8]
 005A478D    mov         dword ptr [edx-20],eax
 005A4790    mov         eax,dword ptr [ebp+8]
 005A4793    add         dword ptr [eax-20],2
 005A4797    mov         eax,dword ptr [ebp+8]
 005A479A    dec         dword ptr [eax-18]
 005A479D    mov         eax,dword ptr [ebp+8]
 005A47A0    movzx       eax,byte ptr [eax-2D]
 005A47A4    mov         ax,word ptr [eax*2+6E3C8C]
 005A47AC    or          ax,60
 005A47B0    movzx       eax,ax
 005A47B3    mov         edx,dword ptr [ebp+8]
 005A47B6    mov         dword ptr [edx-60],eax
 005A47B9    mov         eax,dword ptr [ebp+8]
 005A47BC    cmp         byte ptr [eax-61],0
>005A47C0    je          005A47D5
 005A47C2    mov         eax,dword ptr [ebp+8]
 005A47C5    test        byte ptr [eax+0D],1
>005A47C9    je          005A47D5
 005A47CB    mov         eax,dword ptr [ebp+8]
 005A47CE    or          dword ptr [eax-60],100000
 005A47D5    mov         eax,dword ptr [ebp+8]
 005A47D8    mov         edx,dword ptr [ebp+8]
 005A47DB    lea         esi,[eax-20]
 005A47DE    lea         edi,[edx-58]
 005A47E1    movs        dword ptr [edi],dword ptr [esi]
 005A47E2    movs        dword ptr [edi],dword ptr [esi]
 005A47E3    movs        dword ptr [edi],dword ptr [esi]
 005A47E4    movs        dword ptr [edi],dword ptr [esi]
 005A47E5    mov         eax,dword ptr [ebp+8]
 005A47E8    test        byte ptr [eax+0C],20
>005A47EC    je          005A4802
 005A47EE    mov         eax,dword ptr [ebp+8]
 005A47F1    mov         eax,dword ptr [eax-28]
 005A47F4    mov         eax,dword ptr [eax+0C]
 005A47F7    mov         dl,byte ptr ds:[5A495C]
 005A47FD    call        TFont.SetStyle
 005A4802    mov         eax,dword ptr [ebp+8]
 005A4805    add         eax,0FFFFFFE0
 005A4808    push        eax
 005A4809    mov         eax,dword ptr [ebp+8]
 005A480C    mov         al,byte ptr [eax-21]
 005A480F    push        eax
 005A4810    mov         eax,dword ptr [ebp+8]
 005A4813    mov         eax,dword ptr [eax-60]
 005A4816    or          eax,400
 005A481B    or          eax,100
 005A4820    push        eax
 005A4821    mov         eax,dword ptr [ebp+8]
 005A4824    mov         eax,dword ptr [eax-34]
 005A4827    mov         ecx,dword ptr [eax+30]
 005A482A    mov         eax,dword ptr [ebp+8]
 005A482D    mov         edx,dword ptr [eax-28]
 005A4830    mov         eax,dword ptr [ebp+8]
 005A4833    mov         eax,dword ptr [eax-34]
 005A4836    call        005A3E60
 005A483B    mov         eax,dword ptr [ebp+8]
 005A483E    mov         eax,dword ptr [eax-4C]
 005A4841    mov         edx,dword ptr [ebp+8]
 005A4844    sub         eax,dword ptr [edx-54]
 005A4847    mov         edx,dword ptr [ebp+8]
 005A484A    mov         edx,dword ptr [edx-14]
 005A484D    mov         ecx,dword ptr [ebp+8]
 005A4850    sub         edx,dword ptr [ecx-1C]
 005A4853    sub         eax,edx
 005A4855    sar         eax,1
>005A4857    jns         005A485C
 005A4859    adc         eax,0
 005A485C    push        eax
 005A485D    push        0
 005A485F    mov         eax,dword ptr [ebp+8]
 005A4862    add         eax,0FFFFFFE0
 005A4865    push        eax
 005A4866    call        USER32.OffsetRect
 005A486B    mov         eax,dword ptr [ebp+8]
 005A486E    cmp         byte ptr [eax+8],0
>005A4872    je          005A4896
 005A4874    mov         eax,dword ptr [ebp+8]
 005A4877    cmp         byte ptr [eax-21],0
>005A487B    je          005A4896
 005A487D    mov         eax,dword ptr [ebp+8]
 005A4880    cmp         byte ptr [eax-59],0
>005A4884    je          005A4896
 005A4886    push        0
 005A4888    push        1
 005A488A    mov         eax,dword ptr [ebp+8]
 005A488D    add         eax,0FFFFFFE0
 005A4890    push        eax
 005A4891    call        USER32.OffsetRect
 005A4896    mov         eax,dword ptr [ebp+8]
 005A4899    add         eax,0FFFFFFE0
 005A489C    push        eax
 005A489D    mov         eax,dword ptr [ebp+8]
 005A48A0    mov         al,byte ptr [eax-21]
 005A48A3    push        eax
 005A48A4    mov         eax,dword ptr [ebp+8]
 005A48A7    mov         eax,dword ptr [eax-60]
 005A48AA    push        eax
 005A48AB    mov         eax,dword ptr [ebp+8]
 005A48AE    mov         eax,dword ptr [eax-34]
 005A48B1    mov         ecx,dword ptr [eax+30]
 005A48B4    mov         eax,dword ptr [ebp+8]
 005A48B7    mov         edx,dword ptr [eax-28]
 005A48BA    mov         eax,dword ptr [ebp+8]
 005A48BD    mov         eax,dword ptr [eax-34]
 005A48C0    call        005A3E60
 005A48C5    mov         eax,dword ptr [ebp+8]
 005A48C8    mov         eax,dword ptr [eax-34]
 005A48CB    cmp         word ptr [eax+60],0
>005A48D0    je          005A492C
 005A48D2    mov         eax,dword ptr [ebp+8]
 005A48D5    cmp         byte ptr [eax+8],0
>005A48D9    jne         005A492C
 005A48DB    mov         eax,dword ptr [ebp+8]
 005A48DE    mov         eax,dword ptr [eax-18]
 005A48E1    mov         edx,dword ptr [ebp+8]
 005A48E4    mov         dword ptr [edx-20],eax
 005A48E7    mov         eax,dword ptr [ebp+8]
 005A48EA    mov         eax,dword ptr [eax-50]
 005A48ED    sub         eax,0A
 005A48F0    mov         edx,dword ptr [ebp+8]
 005A48F3    mov         dword ptr [edx-18],eax
 005A48F6    mov         eax,dword ptr [ebp+8]
 005A48F9    add         eax,0FFFFFFE0
 005A48FC    push        eax
 005A48FD    mov         eax,dword ptr [ebp+8]
 005A4900    mov         al,byte ptr [eax-21]
 005A4903    push        eax
 005A4904    push        2
 005A4906    lea         edx,[ebp-4]
 005A4909    mov         eax,dword ptr [ebp+8]
 005A490C    mov         eax,dword ptr [eax-34]
 005A490F    mov         ax,word ptr [eax+60]
 005A4913    call        005A2B9C
 005A4918    mov         ecx,dword ptr [ebp-4]
 005A491B    mov         eax,dword ptr [ebp+8]
 005A491E    mov         edx,dword ptr [eax-28]
 005A4921    mov         eax,dword ptr [ebp+8]
 005A4924    mov         eax,dword ptr [eax-34]
 005A4927    call        005A3E60
 005A492C    xor         eax,eax
 005A492E    pop         edx
 005A492F    pop         ecx
 005A4930    pop         ecx
 005A4931    mov         dword ptr fs:[eax],edx
 005A4934    push        5A4949
 005A4939    lea         eax,[ebp-4]
 005A493C    call        @LStrClr
 005A4941    ret
>005A4942    jmp         @HandleFinally
>005A4947    jmp         005A4939
 005A4949    pop         edi
 005A494A    pop         esi
 005A494B    pop         ecx
 005A494C    pop         ebp
 005A494D    ret
*}
end;

//005A4960
procedure BiDiDraw;
begin
{*
 005A4960    push        ebp
 005A4961    mov         ebp,esp
 005A4963    push        0
 005A4965    push        esi
 005A4966    push        edi
 005A4967    xor         eax,eax
 005A4969    push        ebp
 005A496A    push        5A51EC
 005A496F    push        dword ptr fs:[eax]
 005A4972    mov         dword ptr fs:[eax],esp
 005A4975    mov         eax,dword ptr [ebp+8]
 005A4978    cmp         byte ptr [eax-21],0
>005A497C    jne         005A498F
 005A497E    mov         eax,dword ptr [ebp+8]
 005A4981    lea         edx,[eax-20]
 005A4984    mov         eax,dword ptr [ebp+8]
 005A4987    mov         eax,dword ptr [eax-28]
 005A498A    call        TCanvas.FillRect
 005A498F    mov         eax,dword ptr [ebp+8]
 005A4992    cmp         dword ptr [eax-2C],0
>005A4996    je          005A49A1
 005A4998    mov         eax,dword ptr [ebp+8]
 005A499B    mov         byte ptr [eax-2D],0
>005A499F    jmp         005A49CE
 005A49A1    mov         eax,dword ptr [ebp+8]
 005A49A4    mov         eax,dword ptr [eax-2C]
 005A49A7    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A49AD    call        @IsClass
 005A49B2    test        al,al
>005A49B4    je          005A49C7
 005A49B6    mov         eax,dword ptr [ebp+8]
 005A49B9    mov         eax,dword ptr [eax-2C]
 005A49BC    mov         al,byte ptr [eax+60]
 005A49BF    mov         edx,dword ptr [ebp+8]
 005A49C2    mov         byte ptr [edx-2D],al
>005A49C5    jmp         005A49CE
 005A49C7    mov         eax,dword ptr [ebp+8]
 005A49CA    mov         byte ptr [eax-2D],0
 005A49CE    mov         eax,dword ptr [ebp+8]
 005A49D1    mov         eax,dword ptr [eax-18]
 005A49D4    dec         eax
 005A49D5    mov         edx,dword ptr [ebp+8]
 005A49D8    mov         dword ptr [edx-8],eax
 005A49DB    mov         eax,dword ptr [ebp+8]
 005A49DE    mov         eax,dword ptr [eax-1C]
 005A49E1    inc         eax
 005A49E2    mov         edx,dword ptr [ebp+8]
 005A49E5    mov         dword ptr [edx-0C],eax
 005A49E8    mov         eax,dword ptr [ebp+8]
 005A49EB    mov         eax,dword ptr [eax-34]
 005A49EE    mov         eax,dword ptr [eax+30]
 005A49F1    mov         edx,5A5200;'-'
 005A49F6    call        @LStrCmp
>005A49FB    jne         005A4A31
 005A49FD    mov         eax,dword ptr [ebp+8]
 005A4A00    lea         edx,[eax-20]
 005A4A03    mov         eax,dword ptr [ebp+8]
 005A4A06    mov         eax,dword ptr [eax-28]
 005A4A09    call        TCanvas.FillRect
 005A4A0E    mov         eax,dword ptr [ebp+8]
 005A4A11    mov         eax,dword ptr [eax-8]
 005A4A14    add         eax,2
 005A4A17    mov         edx,dword ptr [ebp+8]
 005A4A1A    mov         dword ptr [edx-10],eax
 005A4A1D    mov         eax,dword ptr [ebp+8]
 005A4A20    xor         edx,edx
 005A4A22    mov         dword ptr [eax-8],edx
 005A4A25    mov         eax,dword ptr [ebp+8]
 005A4A28    mov         byte ptr [eax-35],0
>005A4A2C    jmp         005A4ECA
 005A4A31    mov         eax,dword ptr [ebp+8]
 005A4A34    cmp         dword ptr [eax-3C],0
>005A4A38    je          005A4A86
 005A4A3A    mov         eax,dword ptr [ebp+8]
 005A4A3D    mov         eax,dword ptr [eax-34]
 005A4A40    cmp         dword ptr [eax+40],0FFFFFFFF
>005A4A44    jle         005A4A5C
 005A4A46    mov         eax,dword ptr [ebp+8]
 005A4A49    mov         eax,dword ptr [eax-3C]
 005A4A4C    call        0058BBF4
 005A4A51    mov         edx,dword ptr [ebp+8]
 005A4A54    mov         edx,dword ptr [edx-34]
 005A4A57    cmp         eax,dword ptr [edx+40]
>005A4A5A    jg          005A4A8A
 005A4A5C    mov         eax,dword ptr [ebp+8]
 005A4A5F    mov         eax,dword ptr [eax-34]
 005A4A62    cmp         byte ptr [eax+38],0
>005A4A66    je          005A4A86
 005A4A68    mov         eax,dword ptr [ebp+8]
 005A4A6B    mov         eax,dword ptr [eax-34]
 005A4A6E    cmp         dword ptr [eax+4C],0
>005A4A72    je          005A4A8A
 005A4A74    mov         eax,dword ptr [ebp+8]
 005A4A77    mov         eax,dword ptr [eax-34]
 005A4A7A    mov         eax,dword ptr [eax+4C]
 005A4A7D    mov         edx,dword ptr [eax]
 005A4A7F    call        dword ptr [edx+1C]
 005A4A82    test        al,al
>005A4A84    jne         005A4A8A
 005A4A86    xor         eax,eax
>005A4A88    jmp         005A4A8C
 005A4A8A    mov         al,1
 005A4A8C    mov         edx,dword ptr [ebp+8]
 005A4A8F    mov         byte ptr [edx-3D],al
 005A4A92    mov         eax,dword ptr [ebp+8]
 005A4A95    cmp         byte ptr [eax-3D],0
>005A4A99    jne         005A4AC1
 005A4A9B    mov         eax,dword ptr [ebp+8]
 005A4A9E    mov         eax,dword ptr [eax-34]
 005A4AA1    cmp         dword ptr [eax+4C],0
>005A4AA5    je          005A4E6D
 005A4AAB    mov         eax,dword ptr [ebp+8]
 005A4AAE    mov         eax,dword ptr [eax-34]
 005A4AB1    mov         eax,dword ptr [eax+4C]
 005A4AB4    mov         edx,dword ptr [eax]
 005A4AB6    call        dword ptr [edx+1C]
 005A4AB9    test        al,al
>005A4ABB    jne         005A4E6D
 005A4AC1    mov         eax,dword ptr [ebp+8]
 005A4AC4    mov         byte ptr [eax-35],1
 005A4AC8    mov         eax,dword ptr [ebp+8]
 005A4ACB    cmp         byte ptr [eax-3D],0
>005A4ACF    je          005A4AFD
 005A4AD1    mov         eax,dword ptr [ebp+8]
 005A4AD4    mov         eax,dword ptr [eax-8]
 005A4AD7    mov         edx,dword ptr [ebp+8]
 005A4ADA    mov         edx,dword ptr [edx-3C]
 005A4ADD    sub         eax,dword ptr [edx+34]
 005A4AE0    mov         edx,dword ptr [ebp+8]
 005A4AE3    mov         dword ptr [edx-10],eax
 005A4AE6    mov         eax,dword ptr [ebp+8]
 005A4AE9    mov         eax,dword ptr [eax-0C]
 005A4AEC    mov         edx,dword ptr [ebp+8]
 005A4AEF    mov         edx,dword ptr [edx-3C]
 005A4AF2    add         eax,dword ptr [edx+30]
 005A4AF5    mov         edx,dword ptr [ebp+8]
 005A4AF8    mov         dword ptr [edx-4],eax
>005A4AFB    jmp         005A4B1B
 005A4AFD    mov         eax,dword ptr [ebp+8]
 005A4B00    mov         eax,dword ptr [eax-8]
 005A4B03    sub         eax,10
 005A4B06    mov         edx,dword ptr [ebp+8]
 005A4B09    mov         dword ptr [edx-10],eax
 005A4B0C    mov         eax,dword ptr [ebp+8]
 005A4B0F    mov         eax,dword ptr [eax-0C]
 005A4B12    add         eax,10
 005A4B15    mov         edx,dword ptr [ebp+8]
 005A4B18    mov         dword ptr [edx-4],eax
 005A4B1B    mov         eax,dword ptr [ebp+8]
 005A4B1E    mov         eax,dword ptr [eax-34]
 005A4B21    cmp         byte ptr [eax+38],0
>005A4B25    je          005A4BDE
 005A4B2B    mov         eax,dword ptr [ebp+8]
 005A4B2E    dec         dword ptr [eax-10]
 005A4B31    mov         eax,dword ptr [ebp+8]
 005A4B34    inc         dword ptr [eax-4]
 005A4B37    mov         eax,dword ptr [ebp+8]
 005A4B3A    mov         eax,dword ptr [eax-28]
 005A4B3D    mov         eax,dword ptr [eax+14]
 005A4B40    call        TBrush.GetColor
 005A4B45    mov         edx,dword ptr [ebp+8]
 005A4B48    mov         dword ptr [edx-44],eax
 005A4B4B    mov         eax,dword ptr [ebp+8]
 005A4B4E    cmp         byte ptr [eax-21],0
>005A4B52    jne         005A4B9A
 005A4B54    mov         eax,dword ptr [ebp+8]
 005A4B57    mov         eax,dword ptr [eax-28]
 005A4B5A    mov         eax,dword ptr [eax+14]
 005A4B5D    call        TBrush.GetColor
 005A4B62    mov         edx,dword ptr [ebp+8]
 005A4B65    mov         dword ptr [edx-44],eax
 005A4B68    mov         edx,80000014
 005A4B6D    mov         eax,8000000F
 005A4B72    call        005C98A0
 005A4B77    mov         edx,eax
 005A4B79    mov         eax,dword ptr [ebp+8]
 005A4B7C    mov         eax,dword ptr [eax-28]
 005A4B7F    mov         eax,dword ptr [eax+14]
 005A4B82    call        TBrush.SetBitmap
 005A4B87    mov         eax,dword ptr [ebp+8]
 005A4B8A    lea         edx,[eax-10]
 005A4B8D    mov         eax,dword ptr [ebp+8]
 005A4B90    mov         eax,dword ptr [eax-28]
 005A4B93    call        TCanvas.FillRect
>005A4B98    jmp         005A4BBE
 005A4B9A    mov         eax,dword ptr [ebp+8]
 005A4B9D    mov         eax,dword ptr [eax-28]
 005A4BA0    mov         eax,dword ptr [eax+14]
 005A4BA3    mov         edx,8000000F
 005A4BA8    call        TBrush.SetColor
 005A4BAD    mov         eax,dword ptr [ebp+8]
 005A4BB0    lea         edx,[eax-10]
 005A4BB3    mov         eax,dword ptr [ebp+8]
 005A4BB6    mov         eax,dword ptr [eax-28]
 005A4BB9    call        TCanvas.FillRect
 005A4BBE    mov         eax,dword ptr [ebp+8]
 005A4BC1    mov         edx,dword ptr [eax-44]
 005A4BC4    mov         eax,dword ptr [ebp+8]
 005A4BC7    mov         eax,dword ptr [eax-28]
 005A4BCA    mov         eax,dword ptr [eax+14]
 005A4BCD    call        TBrush.SetColor
 005A4BD2    mov         eax,dword ptr [ebp+8]
 005A4BD5    dec         dword ptr [eax-8]
 005A4BD8    mov         eax,dword ptr [ebp+8]
 005A4BDB    inc         dword ptr [eax-0C]
 005A4BDE    mov         eax,dword ptr [ebp+8]
 005A4BE1    cmp         byte ptr [eax-3D],0
>005A4BE5    je          005A4D45
 005A4BEB    mov         eax,dword ptr [ebp+8]
 005A4BEE    mov         eax,dword ptr [eax-34]
 005A4BF1    cmp         dword ptr [eax+40],0FFFFFFFF
>005A4BF5    jle         005A4C44
 005A4BF7    mov         eax,dword ptr [ebp+8]
 005A4BFA    mov         eax,dword ptr [eax-3C]
 005A4BFD    call        0058BBF4
 005A4C02    mov         edx,dword ptr [ebp+8]
 005A4C05    mov         edx,dword ptr [edx-34]
 005A4C08    cmp         eax,dword ptr [edx+40]
>005A4C0B    jle         005A4C44
 005A4C0D    mov         eax,dword ptr [ebp+8]
 005A4C10    mov         eax,dword ptr [eax-0C]
 005A4C13    push        eax
 005A4C14    mov         eax,dword ptr [ebp+8]
 005A4C17    mov         eax,dword ptr [eax-34]
 005A4C1A    mov         eax,dword ptr [eax+40]
 005A4C1D    push        eax
 005A4C1E    mov         eax,dword ptr [ebp+8]
 005A4C21    mov         eax,dword ptr [eax-34]
 005A4C24    mov         al,byte ptr [eax+39]
 005A4C27    push        eax
 005A4C28    mov         eax,dword ptr [ebp+8]
 005A4C2B    mov         ecx,dword ptr [eax-10]
 005A4C2E    mov         eax,dword ptr [ebp+8]
 005A4C31    mov         edx,dword ptr [eax-28]
 005A4C34    mov         eax,dword ptr [ebp+8]
 005A4C37    mov         eax,dword ptr [eax-3C]
 005A4C3A    call        0058C1C8
>005A4C3F    jmp         005A4E53
 005A4C44    mov         dl,1
 005A4C46    mov         eax,[005BEDD4];TBitmap
 005A4C4B    call        TBitmap.Create
 005A4C50    mov         edx,dword ptr [ebp+8]
 005A4C53    mov         dword ptr [edx-48],eax
 005A4C56    xor         eax,eax
 005A4C58    push        ebp
 005A4C59    push        5A4D3E
 005A4C5E    push        dword ptr fs:[eax]
 005A4C61    mov         dword ptr fs:[eax],esp
 005A4C64    mov         eax,dword ptr [ebp+8]
 005A4C67    mov         eax,dword ptr [eax-48]
 005A4C6A    mov         dl,1
 005A4C6C    mov         ecx,dword ptr [eax]
 005A4C6E    call        dword ptr [ecx+3C]
 005A4C71    push        7FF8
 005A4C76    push        0
 005A4C78    call        USER32.LoadBitmapA
 005A4C7D    mov         edx,eax
 005A4C7F    mov         eax,dword ptr [ebp+8]
 005A4C82    mov         eax,dword ptr [eax-48]
 005A4C85    call        TBitmap.SetHandle
 005A4C8A    mov         eax,dword ptr [ebp+8]
 005A4C8D    mov         eax,dword ptr [eax-28]
 005A4C90    mov         eax,dword ptr [eax+0C]
 005A4C93    mov         eax,dword ptr [eax+18]
 005A4C96    mov         edx,dword ptr [ebp+8]
 005A4C99    mov         dword ptr [edx-44],eax
 005A4C9C    mov         eax,dword ptr [ebp+8]
 005A4C9F    mov         eax,dword ptr [eax-28]
 005A4CA2    mov         eax,dword ptr [eax+0C]
 005A4CA5    mov         edx,80000012
 005A4CAA    call        TFont.SetColor
 005A4CAF    mov         eax,dword ptr [ebp+8]
 005A4CB2    mov         eax,dword ptr [eax-48]
 005A4CB5    push        eax
 005A4CB6    mov         eax,dword ptr [ebp+8]
 005A4CB9    mov         eax,dword ptr [eax-48]
 005A4CBC    mov         edx,dword ptr [eax]
 005A4CBE    call        dword ptr [edx+20]
 005A4CC1    mov         edx,dword ptr [ebp+8]
 005A4CC4    mov         edx,dword ptr [edx-4]
 005A4CC7    mov         ecx,dword ptr [ebp+8]
 005A4CCA    sub         edx,dword ptr [ecx-0C]
 005A4CCD    sub         edx,eax
 005A4CCF    sar         edx,1
>005A4CD1    jns         005A4CD6
 005A4CD3    adc         edx,0
 005A4CD6    mov         eax,dword ptr [ebp+8]
 005A4CD9    add         edx,dword ptr [eax-0C]
 005A4CDC    inc         edx
 005A4CDD    push        edx
 005A4CDE    mov         eax,dword ptr [ebp+8]
 005A4CE1    mov         eax,dword ptr [eax-48]
 005A4CE4    mov         edx,dword ptr [eax]
 005A4CE6    call        dword ptr [edx+2C]
 005A4CE9    mov         edx,dword ptr [ebp+8]
 005A4CEC    mov         edx,dword ptr [edx-8]
 005A4CEF    mov         ecx,dword ptr [ebp+8]
 005A4CF2    sub         edx,dword ptr [ecx-10]
 005A4CF5    sub         edx,eax
 005A4CF7    sar         edx,1
>005A4CF9    jns         005A4CFE
 005A4CFB    adc         edx,0
 005A4CFE    mov         eax,dword ptr [ebp+8]
 005A4D01    add         edx,dword ptr [eax-10]
 005A4D04    inc         edx
 005A4D05    mov         eax,dword ptr [ebp+8]
 005A4D08    mov         eax,dword ptr [eax-28]
 005A4D0B    pop         ecx
 005A4D0C    call        005C1078
 005A4D11    mov         eax,dword ptr [ebp+8]
 005A4D14    mov         edx,dword ptr [eax-44]
 005A4D17    mov         eax,dword ptr [ebp+8]
 005A4D1A    mov         eax,dword ptr [eax-28]
 005A4D1D    mov         eax,dword ptr [eax+0C]
 005A4D20    call        TFont.SetColor
 005A4D25    xor         eax,eax
 005A4D27    pop         edx
 005A4D28    pop         ecx
 005A4D29    pop         ecx
 005A4D2A    mov         dword ptr fs:[eax],edx
 005A4D2D    push        5A4E53
 005A4D32    mov         eax,dword ptr [ebp+8]
 005A4D35    mov         eax,dword ptr [eax-48]
 005A4D38    call        TObject.Free
 005A4D3D    ret
>005A4D3E    jmp         @HandleFinally
>005A4D43    jmp         005A4D32
 005A4D45    mov         eax,dword ptr [ebp+8]
 005A4D48    mov         edx,dword ptr [ebp+8]
 005A4D4B    lea         esi,[eax-10]
 005A4D4E    lea         edi,[edx-58]
 005A4D51    movs        dword ptr [edi],dword ptr [esi]
 005A4D52    movs        dword ptr [edi],dword ptr [esi]
 005A4D53    movs        dword ptr [edi],dword ptr [esi]
 005A4D54    movs        dword ptr [edi],dword ptr [esi]
 005A4D55    mov         eax,dword ptr [ebp+8]
 005A4D58    mov         eax,dword ptr [eax-34]
 005A4D5B    mov         eax,dword ptr [eax+4C]
 005A4D5E    mov         edx,dword ptr [eax]
 005A4D60    call        dword ptr [edx+2C]
 005A4D63    mov         edx,dword ptr [ebp+8]
 005A4D66    mov         edx,dword ptr [edx-8]
 005A4D69    mov         ecx,dword ptr [ebp+8]
 005A4D6C    sub         edx,dword ptr [ecx-10]
 005A4D6F    cmp         eax,edx
>005A4D71    jge         005A4DC1
 005A4D73    mov         eax,dword ptr [ebp+8]
 005A4D76    mov         eax,dword ptr [eax-34]
 005A4D79    mov         eax,dword ptr [eax+4C]
 005A4D7C    mov         edx,dword ptr [eax]
 005A4D7E    call        dword ptr [edx+2C]
 005A4D81    mov         edx,dword ptr [ebp+8]
 005A4D84    mov         edx,dword ptr [edx-8]
 005A4D87    mov         ecx,dword ptr [ebp+8]
 005A4D8A    sub         edx,dword ptr [ecx-10]
 005A4D8D    sub         edx,eax
 005A4D8F    sar         edx,1
>005A4D91    jns         005A4D96
 005A4D93    adc         edx,0
 005A4D96    mov         eax,dword ptr [ebp+8]
 005A4D99    mov         eax,dword ptr [eax-8]
 005A4D9C    sub         eax,edx
 005A4D9E    inc         eax
 005A4D9F    mov         edx,dword ptr [ebp+8]
 005A4DA2    mov         dword ptr [edx-8],eax
 005A4DA5    mov         eax,dword ptr [ebp+8]
 005A4DA8    mov         eax,dword ptr [eax-34]
 005A4DAB    mov         eax,dword ptr [eax+4C]
 005A4DAE    mov         edx,dword ptr [eax]
 005A4DB0    call        dword ptr [edx+2C]
 005A4DB3    mov         edx,dword ptr [ebp+8]
 005A4DB6    mov         edx,dword ptr [edx-8]
 005A4DB9    sub         edx,eax
 005A4DBB    mov         eax,dword ptr [ebp+8]
 005A4DBE    mov         dword ptr [eax-10],edx
 005A4DC1    mov         eax,dword ptr [ebp+8]
 005A4DC4    mov         eax,dword ptr [eax-34]
 005A4DC7    mov         eax,dword ptr [eax+4C]
 005A4DCA    mov         edx,dword ptr [eax]
 005A4DCC    call        dword ptr [edx+20]
 005A4DCF    mov         edx,dword ptr [ebp+8]
 005A4DD2    mov         edx,dword ptr [edx-4]
 005A4DD5    mov         ecx,dword ptr [ebp+8]
 005A4DD8    sub         edx,dword ptr [ecx-0C]
 005A4DDB    cmp         eax,edx
>005A4DDD    jge         005A4E29
 005A4DDF    mov         eax,dword ptr [ebp+8]
 005A4DE2    mov         eax,dword ptr [eax-34]
 005A4DE5    mov         eax,dword ptr [eax+4C]
 005A4DE8    mov         edx,dword ptr [eax]
 005A4DEA    call        dword ptr [edx+20]
 005A4DED    mov         edx,dword ptr [ebp+8]
 005A4DF0    mov         edx,dword ptr [edx-4]
 005A4DF3    mov         ecx,dword ptr [ebp+8]
 005A4DF6    sub         edx,dword ptr [ecx-0C]
 005A4DF9    sub         edx,eax
 005A4DFB    sar         edx,1
>005A4DFD    jns         005A4E02
 005A4DFF    adc         edx,0
 005A4E02    mov         eax,dword ptr [ebp+8]
 005A4E05    add         edx,dword ptr [eax-0C]
 005A4E08    inc         edx
 005A4E09    mov         eax,dword ptr [ebp+8]
 005A4E0C    mov         dword ptr [eax-0C],edx
 005A4E0F    mov         eax,dword ptr [ebp+8]
 005A4E12    mov         eax,dword ptr [eax-34]
 005A4E15    mov         eax,dword ptr [eax+4C]
 005A4E18    mov         edx,dword ptr [eax]
 005A4E1A    call        dword ptr [edx+20]
 005A4E1D    mov         edx,dword ptr [ebp+8]
 005A4E20    add         eax,dword ptr [edx-0C]
 005A4E23    mov         edx,dword ptr [ebp+8]
 005A4E26    mov         dword ptr [edx-4],eax
 005A4E29    mov         eax,dword ptr [ebp+8]
 005A4E2C    mov         eax,dword ptr [eax-34]
 005A4E2F    mov         ecx,dword ptr [eax+4C]
 005A4E32    mov         eax,dword ptr [ebp+8]
 005A4E35    lea         edx,[eax-10]
 005A4E38    mov         eax,dword ptr [ebp+8]
 005A4E3B    mov         eax,dword ptr [eax-28]
 005A4E3E    call        TCanvas.StretchDraw
 005A4E43    mov         eax,dword ptr [ebp+8]
 005A4E46    mov         edx,dword ptr [ebp+8]
 005A4E49    lea         esi,[eax-58]
 005A4E4C    lea         edi,[edx-10]
 005A4E4F    movs        dword ptr [edi],dword ptr [esi]
 005A4E50    movs        dword ptr [edi],dword ptr [esi]
 005A4E51    movs        dword ptr [edi],dword ptr [esi]
 005A4E52    movs        dword ptr [edi],dword ptr [esi]
 005A4E53    mov         eax,dword ptr [ebp+8]
 005A4E56    mov         eax,dword ptr [eax-34]
 005A4E59    cmp         byte ptr [eax+38],0
>005A4E5D    je          005A4ECA
 005A4E5F    mov         eax,dword ptr [ebp+8]
 005A4E62    dec         dword ptr [eax-8]
 005A4E65    mov         eax,dword ptr [ebp+8]
 005A4E68    dec         dword ptr [eax-4]
>005A4E6B    jmp         005A4ECA
 005A4E6D    mov         eax,dword ptr [ebp+8]
 005A4E70    cmp         dword ptr [eax-3C],0
>005A4E74    je          005A4EAB
 005A4E76    mov         eax,dword ptr [ebp+8]
 005A4E79    cmp         byte ptr [eax+8],0
>005A4E7D    jne         005A4EAB
 005A4E7F    mov         eax,dword ptr [ebp+8]
 005A4E82    mov         eax,dword ptr [eax-8]
 005A4E85    mov         edx,dword ptr [ebp+8]
 005A4E88    mov         edx,dword ptr [edx-3C]
 005A4E8B    sub         eax,dword ptr [edx+34]
 005A4E8E    mov         edx,dword ptr [ebp+8]
 005A4E91    mov         dword ptr [edx-10],eax
 005A4E94    mov         eax,dword ptr [ebp+8]
 005A4E97    mov         eax,dword ptr [eax-0C]
 005A4E9A    mov         edx,dword ptr [ebp+8]
 005A4E9D    mov         edx,dword ptr [edx-3C]
 005A4EA0    add         eax,dword ptr [edx+30]
 005A4EA3    mov         edx,dword ptr [ebp+8]
 005A4EA6    mov         dword ptr [edx-4],eax
>005A4EA9    jmp         005A4EC3
 005A4EAB    mov         eax,dword ptr [ebp+8]
 005A4EAE    mov         eax,dword ptr [eax-8]
 005A4EB1    mov         edx,dword ptr [ebp+8]
 005A4EB4    mov         dword ptr [edx-10],eax
 005A4EB7    mov         eax,dword ptr [ebp+8]
 005A4EBA    mov         eax,dword ptr [eax-0C]
 005A4EBD    mov         edx,dword ptr [ebp+8]
 005A4EC0    mov         dword ptr [edx-4],eax
 005A4EC3    mov         eax,dword ptr [ebp+8]
 005A4EC6    mov         byte ptr [eax-35],0
 005A4ECA    mov         eax,dword ptr [ebp+8]
 005A4ECD    dec         dword ptr [eax-10]
 005A4ED0    mov         eax,dword ptr [ebp+8]
 005A4ED3    dec         dword ptr [eax-0C]
 005A4ED6    mov         eax,dword ptr [ebp+8]
 005A4ED9    add         dword ptr [eax-8],2
 005A4EDD    mov         eax,dword ptr [ebp+8]
 005A4EE0    add         dword ptr [eax-4],2
 005A4EE4    mov         eax,dword ptr [ebp+8]
 005A4EE7    mov         eax,dword ptr [eax-34]
 005A4EEA    cmp         byte ptr [eax+38],0
>005A4EEE    jne         005A4F02
 005A4EF0    mov         eax,dword ptr [ebp+8]
 005A4EF3    cmp         byte ptr [eax-21],0
>005A4EF7    je          005A4F2E
 005A4EF9    mov         eax,dword ptr [ebp+8]
 005A4EFC    cmp         byte ptr [eax-35],0
>005A4F00    je          005A4F2E
 005A4F02    push        0F
 005A4F04    mov         eax,dword ptr [ebp+8]
 005A4F07    mov         eax,dword ptr [eax-34]
 005A4F0A    movzx       eax,byte ptr [eax+38]
 005A4F0E    mov         eax,dword ptr [eax*4+6E3C94]
 005A4F15    push        eax
 005A4F16    mov         eax,dword ptr [ebp+8]
 005A4F19    add         eax,0FFFFFFF0
 005A4F1C    push        eax
 005A4F1D    mov         eax,dword ptr [ebp+8]
 005A4F20    mov         eax,dword ptr [eax-28]
 005A4F23    call        TCanvas.GetHandle
 005A4F28    push        eax
 005A4F29    call        USER32.DrawEdge
 005A4F2E    mov         eax,dword ptr [ebp+8]
 005A4F31    cmp         byte ptr [eax-21],0
>005A4F35    je          005A4F83
 005A4F37    mov         eax,dword ptr [ebp+8]
 005A4F3A    cmp         byte ptr [eax-35],0
>005A4F3E    je          005A4F4D
 005A4F40    mov         eax,dword ptr [ebp+8]
 005A4F43    mov         eax,dword ptr [eax-10]
 005A4F46    dec         eax
 005A4F47    mov         edx,dword ptr [ebp+8]
 005A4F4A    mov         dword ptr [edx-18],eax
 005A4F4D    mov         eax,dword ptr [ebp+8]
 005A4F50    cmp         byte ptr [eax-59],0
>005A4F54    je          005A4F5F
 005A4F56    mov         eax,dword ptr [ebp+8]
 005A4F59    cmp         byte ptr [eax+8],0
>005A4F5D    jne         005A4F72
 005A4F5F    mov         eax,dword ptr [ebp+8]
 005A4F62    mov         eax,dword ptr [eax-28]
 005A4F65    mov         eax,dword ptr [eax+14]
 005A4F68    mov         edx,8000000D
 005A4F6D    call        TBrush.SetColor
 005A4F72    mov         eax,dword ptr [ebp+8]
 005A4F75    lea         edx,[eax-20]
 005A4F78    mov         eax,dword ptr [ebp+8]
 005A4F7B    mov         eax,dword ptr [eax-28]
 005A4F7E    call        TCanvas.FillRect
 005A4F83    mov         eax,dword ptr [ebp+8]
 005A4F86    cmp         byte ptr [eax+8],0
>005A4F8A    je          005A4FFA
 005A4F8C    mov         eax,dword ptr [ebp+8]
 005A4F8F    cmp         byte ptr [eax-59],0
>005A4F93    je          005A4FFA
 005A4F95    mov         eax,dword ptr [ebp+8]
 005A4F98    cmp         byte ptr [eax-21],0
>005A4F9C    je          005A4FBC
 005A4F9E    push        0F
 005A4FA0    push        2
 005A4FA2    mov         eax,dword ptr [ebp+8]
 005A4FA5    add         eax,0FFFFFFE0
 005A4FA8    push        eax
 005A4FA9    mov         eax,dword ptr [ebp+8]
 005A4FAC    mov         eax,dword ptr [eax-28]
 005A4FAF    call        TCanvas.GetHandle
 005A4FB4    push        eax
 005A4FB5    call        USER32.DrawEdge
>005A4FBA    jmp         005A4FE1
 005A4FBC    mov         eax,dword ptr [ebp+8]
 005A4FBF    test        byte ptr [eax+0C],40
>005A4FC3    je          005A4FE1
 005A4FC5    push        0F
 005A4FC7    push        4
 005A4FC9    mov         eax,dword ptr [ebp+8]
 005A4FCC    add         eax,0FFFFFFE0
 005A4FCF    push        eax
 005A4FD0    mov         eax,dword ptr [ebp+8]
 005A4FD3    mov         eax,dword ptr [eax-28]
 005A4FD6    call        TCanvas.GetHandle
 005A4FDB    push        eax
 005A4FDC    call        USER32.DrawEdge
 005A4FE1    mov         eax,dword ptr [ebp+8]
 005A4FE4    cmp         byte ptr [eax-21],0
>005A4FE8    jne         005A4FFA
 005A4FEA    push        0FF
 005A4FEC    push        0
 005A4FEE    mov         eax,dword ptr [ebp+8]
 005A4FF1    add         eax,0FFFFFFE0
 005A4FF4    push        eax
 005A4FF5    call        USER32.OffsetRect
 005A4FFA    mov         eax,dword ptr [ebp+8]
 005A4FFD    cmp         byte ptr [eax-21],0
>005A5001    je          005A500C
 005A5003    mov         eax,dword ptr [ebp+8]
 005A5006    cmp         byte ptr [eax-35],0
>005A500A    jne         005A5019
 005A500C    mov         eax,dword ptr [ebp+8]
 005A500F    mov         eax,dword ptr [eax-10]
 005A5012    dec         eax
 005A5013    mov         edx,dword ptr [ebp+8]
 005A5016    mov         dword ptr [edx-18],eax
 005A5019    mov         eax,dword ptr [ebp+8]
 005A501C    add         dword ptr [eax-20],2
 005A5020    mov         eax,dword ptr [ebp+8]
 005A5023    dec         dword ptr [eax-18]
 005A5026    mov         eax,dword ptr [ebp+8]
 005A5029    movzx       eax,byte ptr [eax-2D]
 005A502D    mov         ax,word ptr [eax*2+6E3C8C]
 005A5035    or          ax,60
 005A5039    movzx       eax,ax
 005A503C    mov         edx,dword ptr [ebp+8]
 005A503F    mov         dword ptr [edx-60],eax
 005A5042    mov         eax,dword ptr [ebp+8]
 005A5045    cmp         byte ptr [eax-61],0
>005A5049    je          005A505E
 005A504B    mov         eax,dword ptr [ebp+8]
 005A504E    test        byte ptr [eax+0D],1
>005A5052    je          005A505E
 005A5054    mov         eax,dword ptr [ebp+8]
 005A5057    or          dword ptr [eax-60],100000
 005A505E    mov         eax,dword ptr [ebp+8]
 005A5061    mov         edx,dword ptr [ebp+8]
 005A5064    lea         esi,[eax-20]
 005A5067    lea         edi,[edx-58]
 005A506A    movs        dword ptr [edi],dword ptr [esi]
 005A506B    movs        dword ptr [edi],dword ptr [esi]
 005A506C    movs        dword ptr [edi],dword ptr [esi]
 005A506D    movs        dword ptr [edi],dword ptr [esi]
 005A506E    mov         eax,dword ptr [ebp+8]
 005A5071    test        byte ptr [eax+0C],20
>005A5075    je          005A508B
 005A5077    mov         eax,dword ptr [ebp+8]
 005A507A    mov         eax,dword ptr [eax-28]
 005A507D    mov         eax,dword ptr [eax+0C]
 005A5080    mov         dl,byte ptr ds:[5A5204]
 005A5086    call        TFont.SetStyle
 005A508B    mov         eax,dword ptr [ebp+8]
 005A508E    add         eax,0FFFFFFE0
 005A5091    push        eax
 005A5092    mov         eax,dword ptr [ebp+8]
 005A5095    mov         al,byte ptr [eax-21]
 005A5098    push        eax
 005A5099    mov         eax,dword ptr [ebp+8]
 005A509C    mov         eax,dword ptr [eax-60]
 005A509F    or          eax,400
 005A50A4    or          eax,100
 005A50A9    push        eax
 005A50AA    mov         eax,dword ptr [ebp+8]
 005A50AD    mov         eax,dword ptr [eax-34]
 005A50B0    mov         ecx,dword ptr [eax+30]
 005A50B3    mov         eax,dword ptr [ebp+8]
 005A50B6    mov         edx,dword ptr [eax-28]
 005A50B9    mov         eax,dword ptr [ebp+8]
 005A50BC    mov         eax,dword ptr [eax-34]
 005A50BF    call        005A3E60
 005A50C4    mov         eax,dword ptr [ebp+8]
 005A50C7    mov         eax,dword ptr [eax-58]
 005A50CA    mov         edx,dword ptr [ebp+8]
 005A50CD    mov         dword ptr [edx-20],eax
 005A50D0    mov         eax,dword ptr [ebp+8]
 005A50D3    mov         eax,dword ptr [eax-50]
 005A50D6    mov         edx,dword ptr [ebp+8]
 005A50D9    mov         dword ptr [edx-18],eax
 005A50DC    mov         eax,dword ptr [ebp+8]
 005A50DF    mov         eax,dword ptr [eax-4C]
 005A50E2    mov         edx,dword ptr [ebp+8]
 005A50E5    sub         eax,dword ptr [edx-54]
 005A50E8    mov         edx,dword ptr [ebp+8]
 005A50EB    mov         edx,dword ptr [edx-14]
 005A50EE    mov         ecx,dword ptr [ebp+8]
 005A50F1    sub         edx,dword ptr [ecx-1C]
 005A50F4    sub         eax,edx
 005A50F6    sar         eax,1
>005A50F8    jns         005A50FD
 005A50FA    adc         eax,0
 005A50FD    push        eax
 005A50FE    push        0
 005A5100    mov         eax,dword ptr [ebp+8]
 005A5103    add         eax,0FFFFFFE0
 005A5106    push        eax
 005A5107    call        USER32.OffsetRect
 005A510C    mov         eax,dword ptr [ebp+8]
 005A510F    cmp         byte ptr [eax+8],0
>005A5113    je          005A5137
 005A5115    mov         eax,dword ptr [ebp+8]
 005A5118    cmp         byte ptr [eax-21],0
>005A511C    je          005A5137
 005A511E    mov         eax,dword ptr [ebp+8]
 005A5121    cmp         byte ptr [eax-59],0
>005A5125    je          005A5137
 005A5127    push        0
 005A5129    push        1
 005A512B    mov         eax,dword ptr [ebp+8]
 005A512E    add         eax,0FFFFFFE0
 005A5131    push        eax
 005A5132    call        USER32.OffsetRect
 005A5137    mov         eax,dword ptr [ebp+8]
 005A513A    add         eax,0FFFFFFE0
 005A513D    push        eax
 005A513E    mov         eax,dword ptr [ebp+8]
 005A5141    mov         al,byte ptr [eax-21]
 005A5144    push        eax
 005A5145    mov         eax,dword ptr [ebp+8]
 005A5148    mov         eax,dword ptr [eax-60]
 005A514B    push        eax
 005A514C    mov         eax,dword ptr [ebp+8]
 005A514F    mov         eax,dword ptr [eax-34]
 005A5152    mov         ecx,dword ptr [eax+30]
 005A5155    mov         eax,dword ptr [ebp+8]
 005A5158    mov         edx,dword ptr [eax-28]
 005A515B    mov         eax,dword ptr [ebp+8]
 005A515E    mov         eax,dword ptr [eax-34]
 005A5161    call        005A3E60
 005A5166    mov         eax,dword ptr [ebp+8]
 005A5169    mov         eax,dword ptr [eax-34]
 005A516C    cmp         word ptr [eax+60],0
>005A5171    je          005A51D6
 005A5173    mov         eax,dword ptr [ebp+8]
 005A5176    cmp         byte ptr [eax+8],0
>005A517A    jne         005A51D6
 005A517C    lea         edx,[ebp-4]
 005A517F    mov         eax,dword ptr [ebp+8]
 005A5182    mov         eax,dword ptr [eax-34]
 005A5185    mov         ax,word ptr [eax+60]
 005A5189    call        005A2B9C
 005A518E    mov         eax,dword ptr [ebp+8]
 005A5191    mov         dword ptr [eax-20],0A
 005A5198    mov         eax,dword ptr [ebp+8]
 005A519B    mov         eax,dword ptr [eax-28]
 005A519E    mov         edx,dword ptr [ebp-4]
 005A51A1    call        005C1754
 005A51A6    mov         edx,dword ptr [ebp+8]
 005A51A9    add         eax,dword ptr [edx-20]
 005A51AC    mov         edx,dword ptr [ebp+8]
 005A51AF    mov         dword ptr [edx-18],eax
 005A51B2    mov         eax,dword ptr [ebp+8]
 005A51B5    add         eax,0FFFFFFE0
 005A51B8    push        eax
 005A51B9    mov         eax,dword ptr [ebp+8]
 005A51BC    mov         al,byte ptr [eax-21]
 005A51BF    push        eax
 005A51C0    push        2
 005A51C2    mov         eax,dword ptr [ebp+8]
 005A51C5    mov         edx,dword ptr [eax-28]
 005A51C8    mov         eax,dword ptr [ebp+8]
 005A51CB    mov         eax,dword ptr [eax-34]
 005A51CE    mov         ecx,dword ptr [ebp-4]
 005A51D1    call        005A3E60
 005A51D6    xor         eax,eax
 005A51D8    pop         edx
 005A51D9    pop         ecx
 005A51DA    pop         ecx
 005A51DB    mov         dword ptr fs:[eax],edx
 005A51DE    push        5A51F3
 005A51E3    lea         eax,[ebp-4]
 005A51E6    call        @LStrClr
 005A51EB    ret
>005A51EC    jmp         @HandleFinally
>005A51F1    jmp         005A51E3
 005A51F3    pop         edi
 005A51F4    pop         esi
 005A51F5    pop         ecx
 005A51F6    pop         ebp
 005A51F7    ret
*}
end;

//005A5208
procedure TMenuItem.AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);
begin
{*
 005A5208    push        ebp
 005A5209    mov         ebp,esp
 005A520B    add         esp,0FFFFFF9C
 005A520E    push        ebx
 005A520F    push        esi
 005A5210    push        edi
 005A5211    mov         esi,ecx
 005A5213    lea         edi,[ebp-20]
 005A5216    movs        dword ptr [edi],dword ptr [esi]
 005A5217    movs        dword ptr [edi],dword ptr [esi]
 005A5218    movs        dword ptr [edi],dword ptr [esi]
 005A5219    movs        dword ptr [edi],dword ptr [esi]
 005A521A    mov         dword ptr [ebp-28],edx
 005A521D    mov         dword ptr [ebp-34],eax
 005A5220    mov         eax,dword ptr [ebp-34]
 005A5223    call        TMenuItem.GetParentMenu
 005A5228    mov         dword ptr [ebp-2C],eax
 005A522B    mov         eax,dword ptr [ebp-34]
 005A522E    call        TMenuItem.GetImageList
 005A5233    mov         dword ptr [ebp-3C],eax
 005A5236    test        byte ptr [ebp+0C],1
 005A523A    setne       al
 005A523D    mov         byte ptr [ebp-21],al
 005A5240    mov         eax,[006EA0F0];^gvar_006E4990
 005A5245    cmp         dword ptr [eax],4
>005A5248    jg          005A5262
 005A524A    mov         eax,[006EA0F0];^gvar_006E4990
 005A524F    cmp         dword ptr [eax],4
>005A5252    jne         005A525E
 005A5254    mov         eax,[006EA0F4];^gvar_006E4994
 005A5259    cmp         dword ptr [eax],0
>005A525C    jg          005A5262
 005A525E    xor         eax,eax
>005A5260    jmp         005A5264
 005A5262    mov         al,1
 005A5264    mov         byte ptr [ebp-59],al
 005A5267    mov         eax,[006EA0F0];^gvar_006E4990
 005A526C    cmp         dword ptr [eax],4
>005A526F    jle         005A527B
 005A5271    mov         eax,[006EA0EC];^gvar_006E498C
 005A5276    cmp         dword ptr [eax],2
>005A5279    je          005A527F
 005A527B    xor         eax,eax
>005A527D    jmp         005A5281
 005A527F    mov         al,1
 005A5281    mov         byte ptr [ebp-61],al
 005A5284    cmp         dword ptr [ebp-2C],0
>005A5288    je          005A52F2
 005A528A    mov         eax,dword ptr [ebp-2C]
 005A528D    cmp         byte ptr [eax+40],0
>005A5291    jne         005A5299
 005A5293    cmp         dword ptr [ebp-3C],0
>005A5297    je          005A52F2
 005A5299    mov         eax,dword ptr [ebp-34]
 005A529C    cmp         word ptr [eax+9A],0
>005A52A4    jne         005A52B3
 005A52A6    mov         eax,dword ptr [ebp-34]
 005A52A9    cmp         word ptr [eax+92],0
>005A52B1    je          005A52F2
 005A52B3    mov         al,byte ptr [ebp-21]
 005A52B6    push        eax
 005A52B7    lea         ecx,[ebp-20]
 005A52BA    mov         edx,dword ptr [ebp-28]
 005A52BD    mov         eax,dword ptr [ebp-34]
 005A52C0    mov         ebx,dword ptr [eax]
 005A52C2    call        dword ptr [ebx+34]
 005A52C5    mov         eax,dword ptr [ebp-34]
 005A52C8    cmp         word ptr [eax+9A],0
>005A52D0    je          005A5314
 005A52D2    lea         eax,[ebp-20]
 005A52D5    push        eax
 005A52D6    mov         ax,word ptr [ebp+0C]
 005A52DA    push        eax
 005A52DB    mov         ebx,dword ptr [ebp-34]
 005A52DE    mov         ecx,dword ptr [ebp-28]
 005A52E1    mov         edx,dword ptr [ebp-34]
 005A52E4    mov         eax,dword ptr [ebx+9C]
 005A52EA    call        dword ptr [ebx+98]
>005A52F0    jmp         005A5314
 005A52F2    cmp         dword ptr [ebp-2C],0
>005A52F6    je          005A530D
 005A52F8    mov         eax,dword ptr [ebp-2C]
 005A52FB    call        TMenu.IsRightToLeft
 005A5300    test        al,al
>005A5302    jne         005A530D
 005A5304    push        ebp
 005A5305    call        NormalDraw
 005A530A    pop         ecx
>005A530B    jmp         005A5314
 005A530D    push        ebp
 005A530E    call        BiDiDraw
 005A5313    pop         ecx
 005A5314    pop         edi
 005A5315    pop         esi
 005A5316    pop         ebx
 005A5317    mov         esp,ebp
 005A5319    pop         ebp
 005A531A    ret         8
*}
end;

//005A5320
function TMenuItem.GetImageList:TCustomImageList;
begin
{*
 005A5320    push        ebp
 005A5321    mov         ebp,esp
 005A5323    add         esp,0FFFFFFF0
 005A5326    mov         dword ptr [ebp-4],eax
 005A5329    xor         eax,eax
 005A532B    mov         dword ptr [ebp-8],eax
 005A532E    mov         eax,dword ptr [ebp-4]
 005A5331    mov         eax,dword ptr [eax+64]
 005A5334    mov         dword ptr [ebp-0C],eax
>005A5337    jmp         005A5342
 005A5339    mov         eax,dword ptr [ebp-0C]
 005A533C    mov         eax,dword ptr [eax+64]
 005A533F    mov         dword ptr [ebp-0C],eax
 005A5342    cmp         dword ptr [ebp-0C],0
>005A5346    je          005A5351
 005A5348    mov         eax,dword ptr [ebp-0C]
 005A534B    cmp         dword ptr [eax+7C],0
>005A534F    je          005A5339
 005A5351    cmp         dword ptr [ebp-0C],0
>005A5355    je          005A5362
 005A5357    mov         eax,dword ptr [ebp-0C]
 005A535A    mov         eax,dword ptr [eax+7C]
 005A535D    mov         dword ptr [ebp-8],eax
>005A5360    jmp         005A537C
 005A5362    mov         eax,dword ptr [ebp-4]
 005A5365    call        TMenuItem.GetParentMenu
 005A536A    mov         dword ptr [ebp-10],eax
 005A536D    cmp         dword ptr [ebp-10],0
>005A5371    je          005A537C
 005A5373    mov         eax,dword ptr [ebp-10]
 005A5376    mov         eax,dword ptr [eax+48]
 005A5379    mov         dword ptr [ebp-8],eax
 005A537C    mov         eax,dword ptr [ebp-8]
 005A537F    mov         esp,ebp
 005A5381    pop         ebp
 005A5382    ret
*}
end;

//005A5384
procedure GetMenuSize;
begin
{*
 005A5384    push        ebp
 005A5385    mov         ebp,esp
 005A5387    add         esp,0FFFFFEAC
 005A538D    mov         dword ptr [ebp-154],154
 005A5397    push        0
 005A5399    lea         eax,[ebp-154]
 005A539F    push        eax
 005A53A0    push        0
 005A53A2    push        29
 005A53A4    call        USER32.SystemParametersInfoA
 005A53A9    test        eax,eax
>005A53AB    je          005A53C9
 005A53AD    mov         eax,dword ptr [ebp+8]
 005A53B0    mov         eax,dword ptr [eax-4]
 005A53B3    mov         edx,dword ptr [ebp-0BC]
 005A53B9    mov         dword ptr [eax],edx
 005A53BB    mov         eax,dword ptr [ebp+8]
 005A53BE    mov         eax,dword ptr [eax+8]
 005A53C1    mov         edx,dword ptr [ebp-0B8]
 005A53C7    mov         dword ptr [eax],edx
 005A53C9    mov         esp,ebp
 005A53CB    pop         ebp
 005A53CC    ret
*}
end;

//005A53D0
{*procedure sub_005A53D0(?:?; ?:?; ?:?);
begin
 005A53D0    push        ebp
 005A53D1    mov         ebp,esp
 005A53D3    add         esp,0FFFFFFC8
 005A53D6    push        ebx
 005A53D7    push        esi
 005A53D8    xor         ebx,ebx
 005A53DA    mov         dword ptr [ebp-38],ebx
 005A53DD    mov         dword ptr [ebp-24],ebx
 005A53E0    mov         dword ptr [ebp-4],ecx
 005A53E3    mov         dword ptr [ebp-0C],edx
 005A53E6    mov         dword ptr [ebp-8],eax
 005A53E9    xor         eax,eax
 005A53EB    push        ebp
 005A53EC    push        5A5602
 005A53F1    push        dword ptr fs:[eax]
 005A53F4    mov         dword ptr fs:[eax],esp
 005A53F7    mov         eax,dword ptr [ebp-8]
 005A53FA    mov         si,0FFF2
 005A53FE    call        @CallDynaInst;TMenuItem.sub_005A60CC
 005A5403    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 005A5409    call        @IsClass
 005A540E    test        al,al
>005A5410    je          005A541F
 005A5412    mov         byte ptr [ebp-1A],1
 005A5416    push        ebp
 005A5417    call        GetMenuSize
 005A541C    pop         ecx
>005A541D    jmp         005A5423
 005A541F    mov         byte ptr [ebp-1A],0
 005A5423    mov         eax,dword ptr [ebp-8]
 005A5426    call        TMenuItem.GetParentMenu
 005A542B    mov         dword ptr [ebp-18],eax
 005A542E    mov         eax,dword ptr [ebp-8]
 005A5431    call        TMenuItem.GetImageList
 005A5436    mov         dword ptr [ebp-14],eax
 005A5439    mov         eax,dword ptr [ebp-8]
 005A543C    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 005A543F    mov         edx,5A561C;'-'
 005A5444    call        @LStrCmp
>005A5449    jne         005A5463
 005A544B    mov         eax,dword ptr [ebp+8]
 005A544E    mov         dword ptr [eax],5
 005A5454    mov         eax,dword ptr [ebp-4]
 005A5457    mov         dword ptr [eax],0FFFFFFFE
 005A545D    mov         byte ptr [ebp-19],0
>005A5461    jmp         005A54DD
 005A5463    cmp         dword ptr [ebp-14],0
>005A5467    je          005A549A
 005A5469    mov         eax,dword ptr [ebp-8]
 005A546C    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>005A5470    jg          005A5478
 005A5472    cmp         byte ptr [ebp-1A],0
>005A5476    jne         005A549A
 005A5478    mov         eax,dword ptr [ebp-14]
 005A547B    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 005A547E    mov         edx,dword ptr [ebp-4]
 005A5481    mov         dword ptr [edx],eax
 005A5483    cmp         byte ptr [ebp-1A],0
>005A5487    jne         005A5494
 005A5489    mov         eax,dword ptr [ebp-14]
 005A548C    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 005A548F    mov         edx,dword ptr [ebp+8]
 005A5492    mov         dword ptr [edx],eax
 005A5494    mov         byte ptr [ebp-19],1
>005A5498    jmp         005A54DD
 005A549A    mov         eax,dword ptr [ebp-8]
 005A549D    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>005A54A1    je          005A54D0
 005A54A3    mov         eax,dword ptr [ebp-8]
 005A54A6    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 005A54A9    mov         edx,dword ptr [eax]
 005A54AB    call        dword ptr [edx+1C];TBitmap.GetEmpty
 005A54AE    test        al,al
>005A54B0    jne         005A54D0
 005A54B2    mov         eax,dword ptr [ebp-4]
 005A54B5    mov         dword ptr [eax],10
 005A54BB    cmp         byte ptr [ebp-1A],0
>005A54BF    jne         005A54CA
 005A54C1    mov         eax,dword ptr [ebp+8]
 005A54C4    mov         dword ptr [eax],10
 005A54CA    mov         byte ptr [ebp-19],1
>005A54CE    jmp         005A54DD
 005A54D0    mov         eax,dword ptr [ebp-4]
 005A54D3    mov         dword ptr [eax],0FFFFFFF9
 005A54D9    mov         byte ptr [ebp-19],0
 005A54DD    cmp         byte ptr [ebp-19],0
>005A54E1    je          005A54EF
 005A54E3    cmp         byte ptr [ebp-1A],0
>005A54E7    jne         005A54EF
 005A54E9    mov         eax,dword ptr [ebp-4]
 005A54EC    add         dword ptr [eax],0F
 005A54EF    cmp         byte ptr [ebp-1A],0
>005A54F3    jne         005A54FB
 005A54F5    mov         eax,dword ptr [ebp+8]
 005A54F8    add         dword ptr [eax],3
 005A54FB    lea         eax,[ebp-34]
 005A54FE    xor         ecx,ecx
 005A5500    mov         edx,10
 005A5505    call        @FillChar
 005A550A    cmp         dword ptr [ebp-18],0
>005A550E    je          005A5516
 005A5510    mov         byte ptr [ebp-0D],0
>005A5514    jmp         005A5537
 005A5516    mov         eax,dword ptr [ebp-18]
 005A5519    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A551F    call        @IsClass
 005A5524    test        al,al
>005A5526    je          005A5533
 005A5528    mov         eax,dword ptr [ebp-18]
 005A552B    mov         al,byte ptr [eax+60]
 005A552E    mov         byte ptr [ebp-0D],al
>005A5531    jmp         005A5537
 005A5533    mov         byte ptr [ebp-0D],0
 005A5537    mov         eax,dword ptr [ebp-8]
 005A553A    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>005A553F    je          005A5563
 005A5541    lea         edx,[ebp-38]
 005A5544    mov         eax,dword ptr [ebp-8]
 005A5547    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 005A554B    call        005A2B9C
 005A5550    mov         ecx,dword ptr [ebp-38]
 005A5553    lea         eax,[ebp-24]
 005A5556    mov         edx,dword ptr [ebp-8]
 005A5559    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 005A555C    call        @LStrCat3
>005A5561    jmp         005A5571
 005A5563    lea         eax,[ebp-24]
 005A5566    mov         edx,dword ptr [ebp-8]
 005A5569    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 005A556C    call        @LStrLAsg
 005A5571    xor         eax,eax
 005A5573    mov         al,byte ptr [ebp-0D]
 005A5576    mov         ax,word ptr [eax*2+6E3C9C]
 005A557E    or          ax,40
 005A5582    or          ax,20
 005A5586    or          ax,100
 005A558A    or          ax,400
 005A558E    movzx       eax,ax
 005A5591    mov         dword ptr [ebp-20],eax
 005A5594    lea         eax,[ebp-34]
 005A5597    push        eax
 005A5598    push        0
 005A559A    mov         eax,dword ptr [ebp-20]
 005A559D    push        eax
 005A559E    mov         ecx,dword ptr [ebp-24]
 005A55A1    mov         edx,dword ptr [ebp-0C]
 005A55A4    mov         eax,dword ptr [ebp-8]
 005A55A7    call        005A3E60
 005A55AC    mov         eax,dword ptr [ebp-2C]
 005A55AF    sub         eax,dword ptr [ebp-34]
 005A55B2    add         eax,7
 005A55B5    mov         edx,dword ptr [ebp-4]
 005A55B8    add         dword ptr [edx],eax
 005A55BA    mov         eax,dword ptr [ebp-8]
 005A55BD    cmp         word ptr [eax+0A2],0;TMenuItem.?fA2:word
>005A55C5    je          005A55E4
 005A55C7    mov         eax,dword ptr [ebp-4]
 005A55CA    push        eax
 005A55CB    mov         eax,dword ptr [ebp+8]
 005A55CE    push        eax
 005A55CF    mov         ebx,dword ptr [ebp-8]
 005A55D2    mov         ecx,dword ptr [ebp-0C]
 005A55D5    mov         edx,dword ptr [ebp-8]
 005A55D8    mov         eax,dword ptr [ebx+0A4];TMenuItem.?fA4:dword
 005A55DE    call        dword ptr [ebx+0A0];TMenuItem.OnMeasureItem
 005A55E4    xor         eax,eax
 005A55E6    pop         edx
 005A55E7    pop         ecx
 005A55E8    pop         ecx
 005A55E9    mov         dword ptr fs:[eax],edx
 005A55EC    push        5A5609
 005A55F1    lea         eax,[ebp-38]
 005A55F4    call        @LStrClr
 005A55F9    lea         eax,[ebp-24]
 005A55FC    call        @LStrClr
 005A5601    ret
>005A5602    jmp         @HandleFinally
>005A5607    jmp         005A55F1
 005A5609    pop         esi
 005A560A    pop         ebx
 005A560B    mov         esp,ebp
 005A560D    pop         ebp
 005A560E    ret         4
end;*}

//005A5620
procedure TMenuItem.sub_005A5620;
begin
{*
 005A5620    push        ebp
 005A5621    mov         ebp,esp
 005A5623    add         esp,0FFFFFFF8
 005A5626    mov         dword ptr [ebp-4],eax
 005A5629    mov         byte ptr [ebp-5],1
 005A562D    mov         al,byte ptr [ebp-5]
 005A5630    pop         ecx
 005A5631    pop         ecx
 005A5632    pop         ebp
 005A5633    ret
*}
end;

//005A5634
procedure TMenuItem.SetBreak(Value:TMenuBreak);
begin
{*
 005A5634    push        ebp
 005A5635    mov         ebp,esp
 005A5637    add         esp,0FFFFFFF8
 005A563A    mov         byte ptr [ebp-5],dl
 005A563D    mov         dword ptr [ebp-4],eax
 005A5640    mov         eax,dword ptr [ebp-4]
 005A5643    mov         al,byte ptr [eax+48];TMenuItem.Break:TMenuBreak
 005A5646    cmp         al,byte ptr [ebp-5]
>005A5649    je          005A565E
 005A564B    mov         al,byte ptr [ebp-5]
 005A564E    mov         edx,dword ptr [ebp-4]
 005A5651    mov         byte ptr [edx+48],al;TMenuItem.Break:TMenuBreak
 005A5654    mov         dl,1
 005A5656    mov         eax,dword ptr [ebp-4]
 005A5659    mov         ecx,dword ptr [eax]
 005A565B    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A565E    pop         ecx
 005A565F    pop         ecx
 005A5660    pop         ebp
 005A5661    ret
*}
end;

//005A5664
procedure TMenuItem.SetCaption(Value:String);
begin
{*
 005A5664    push        ebp
 005A5665    mov         ebp,esp
 005A5667    add         esp,0FFFFFFF8
 005A566A    mov         dword ptr [ebp-8],edx
 005A566D    mov         dword ptr [ebp-4],eax
 005A5670    mov         eax,dword ptr [ebp-4]
 005A5673    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 005A5676    mov         edx,dword ptr [ebp-8]
 005A5679    call        @LStrCmp
>005A567E    je          005A5698
 005A5680    mov         eax,dword ptr [ebp-4]
 005A5683    add         eax,30;TMenuItem.Caption:String
 005A5686    mov         edx,dword ptr [ebp-8]
 005A5689    call        @LStrAsg
 005A568E    mov         dl,1
 005A5690    mov         eax,dword ptr [ebp-4]
 005A5693    mov         ecx,dword ptr [eax]
 005A5695    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A5698    pop         ecx
 005A5699    pop         ecx
 005A569A    pop         ebp
 005A569B    ret
*}
end;

//005A569C
procedure sub_005A569C(?:TMenuItem);
begin
{*
 005A569C    push        ebp
 005A569D    mov         ebp,esp
 005A569F    add         esp,0FFFFFFF0
 005A56A2    mov         dword ptr [ebp-4],eax
 005A56A5    mov         eax,dword ptr [ebp-4]
 005A56A8    cmp         dword ptr [eax+64],0
>005A56AC    je          005A570B
 005A56AE    mov         eax,dword ptr [ebp-4]
 005A56B1    mov         eax,dword ptr [eax+64]
 005A56B4    call        005A58D8
 005A56B9    dec         eax
 005A56BA    test        eax,eax
>005A56BC    jl          005A570B
 005A56BE    inc         eax
 005A56BF    mov         dword ptr [ebp-10],eax
 005A56C2    mov         dword ptr [ebp-8],0
 005A56C9    mov         edx,dword ptr [ebp-8]
 005A56CC    mov         eax,dword ptr [ebp-4]
 005A56CF    mov         eax,dword ptr [eax+64]
 005A56D2    call        005A5904
 005A56D7    mov         dword ptr [ebp-0C],eax
 005A56DA    mov         eax,dword ptr [ebp-0C]
 005A56DD    cmp         eax,dword ptr [ebp-4]
>005A56E0    je          005A5703
 005A56E2    mov         eax,dword ptr [ebp-0C]
 005A56E5    cmp         byte ptr [eax+3D],0
>005A56E9    je          005A5703
 005A56EB    mov         eax,dword ptr [ebp-0C]
 005A56EE    mov         al,byte ptr [eax+3F]
 005A56F1    mov         edx,dword ptr [ebp-4]
 005A56F4    cmp         al,byte ptr [edx+3F]
>005A56F7    jne         005A5703
 005A56F9    xor         edx,edx
 005A56FB    mov         eax,dword ptr [ebp-0C]
 005A56FE    call        TMenuItem.SetChecked
 005A5703    inc         dword ptr [ebp-8]
 005A5706    dec         dword ptr [ebp-10]
>005A5709    jne         005A56C9
 005A570B    mov         esp,ebp
 005A570D    pop         ebp
 005A570E    ret
*}
end;

//005A5710
procedure TMenuItem.SetChecked(Value:Boolean);
begin
{*
 005A5710    push        ebp
 005A5711    mov         ebp,esp
 005A5713    add         esp,0FFFFFFF8
 005A5716    mov         byte ptr [ebp-5],dl
 005A5719    mov         dword ptr [ebp-4],eax
 005A571C    mov         eax,dword ptr [ebp-4]
 005A571F    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005A5722    cmp         al,byte ptr [ebp-5]
>005A5725    je          005A5782
 005A5727    mov         al,byte ptr [ebp-5]
 005A572A    mov         edx,dword ptr [ebp-4]
 005A572D    mov         byte ptr [edx+38],al;TMenuItem.Checked:Boolean
 005A5730    mov         eax,dword ptr [ebp-4]
 005A5733    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A5737    je          005A576B
 005A5739    mov         eax,dword ptr [ebp-4]
 005A573C    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>005A5740    jne         005A576B
 005A5742    xor         eax,eax
 005A5744    mov         al,byte ptr [ebp-5]
 005A5747    mov         eax,dword ptr [eax*4+6E3C24]
 005A574E    or          eax,0
 005A5751    push        eax
 005A5752    mov         eax,dword ptr [ebp-4]
 005A5755    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 005A5759    push        eax
 005A575A    mov         eax,dword ptr [ebp-4]
 005A575D    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5760    call        005A3DA0
 005A5765    push        eax
 005A5766    call        USER32.CheckMenuItem
 005A576B    cmp         byte ptr [ebp-5],0
>005A576F    je          005A5782
 005A5771    mov         eax,dword ptr [ebp-4]
 005A5774    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>005A5778    je          005A5782
 005A577A    mov         eax,dword ptr [ebp-4]
 005A577D    call        005A569C
 005A5782    pop         ecx
 005A5783    pop         ecx
 005A5784    pop         ebp
 005A5785    ret
*}
end;

//005A5788
procedure TMenuItem.SetEnabled(Value:Boolean);
begin
{*
 005A5788    push        ebp
 005A5789    mov         ebp,esp
 005A578B    add         esp,0FFFFFFF8
 005A578E    mov         byte ptr [ebp-5],dl
 005A5791    mov         dword ptr [ebp-4],eax
 005A5794    mov         eax,dword ptr [ebp-4]
 005A5797    mov         al,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 005A579A    cmp         al,byte ptr [ebp-5]
>005A579D    je          005A5828
 005A57A3    mov         al,byte ptr [ebp-5]
 005A57A6    mov         edx,dword ptr [ebp-4]
 005A57A9    mov         byte ptr [edx+39],al;TMenuItem.Enabled:Boolean
 005A57AC    mov         eax,[006EA0EC];^gvar_006E498C
 005A57B1    cmp         dword ptr [eax],2
>005A57B4    jne         005A57C2
 005A57B6    mov         eax,dword ptr [ebp-4]
 005A57B9    call        005A58D8
 005A57BE    test        eax,eax
>005A57C0    jne         005A57D7
 005A57C2    mov         eax,dword ptr [ebp-4]
 005A57C5    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A57C9    je          005A57E3
 005A57CB    mov         eax,dword ptr [ebp-4]
 005A57CE    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A57D1    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>005A57D5    je          005A57E3
 005A57D7    mov         dl,1
 005A57D9    mov         eax,dword ptr [ebp-4]
 005A57DC    mov         ecx,dword ptr [eax]
 005A57DE    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
>005A57E1    jmp         005A5828
 005A57E3    mov         eax,dword ptr [ebp-4]
 005A57E6    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A57EA    je          005A581E
 005A57EC    mov         eax,dword ptr [ebp-4]
 005A57EF    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>005A57F3    jne         005A581E
 005A57F5    xor         eax,eax
 005A57F7    mov         al,byte ptr [ebp-5]
 005A57FA    mov         eax,dword ptr [eax*4+6E3C2C]
 005A5801    or          eax,0
 005A5804    push        eax
 005A5805    mov         eax,dword ptr [ebp-4]
 005A5808    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 005A580C    push        eax
 005A580D    mov         eax,dword ptr [ebp-4]
 005A5810    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5813    call        005A3DA0
 005A5818    push        eax
 005A5819    call        USER32.EnableMenuItem
 005A581E    xor         edx,edx
 005A5820    mov         eax,dword ptr [ebp-4]
 005A5823    mov         ecx,dword ptr [eax]
 005A5825    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A5828    pop         ecx
 005A5829    pop         ecx
 005A582A    pop         ebp
 005A582B    ret
*}
end;

//005A582C
procedure TMenuItem.SetGroupIndex(Value:Byte);
begin
{*
 005A582C    push        ebp
 005A582D    mov         ebp,esp
 005A582F    add         esp,0FFFFFFF8
 005A5832    mov         byte ptr [ebp-5],dl
 005A5835    mov         dword ptr [ebp-4],eax
 005A5838    mov         eax,dword ptr [ebp-4]
 005A583B    mov         al,byte ptr [eax+3F];TMenuItem.GroupIndex:byte
 005A583E    cmp         al,byte ptr [ebp-5]
>005A5841    je          005A588D
 005A5843    mov         eax,dword ptr [ebp-4]
 005A5846    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A584A    je          005A586A
 005A584C    mov         edx,dword ptr [ebp-4]
 005A584F    mov         eax,dword ptr [ebp-4]
 005A5852    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5855    call        005A5DFC
 005A585A    mov         edx,eax
 005A585C    mov         cl,byte ptr [ebp-5]
 005A585F    mov         eax,dword ptr [ebp-4]
 005A5862    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5865    call        005A3D20
 005A586A    mov         al,byte ptr [ebp-5]
 005A586D    mov         edx,dword ptr [ebp-4]
 005A5870    mov         byte ptr [edx+3F],al;TMenuItem.GroupIndex:byte
 005A5873    mov         eax,dword ptr [ebp-4]
 005A5876    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>005A587A    je          005A588D
 005A587C    mov         eax,dword ptr [ebp-4]
 005A587F    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>005A5883    je          005A588D
 005A5885    mov         eax,dword ptr [ebp-4]
 005A5888    call        005A569C
 005A588D    pop         ecx
 005A588E    pop         ecx
 005A588F    pop         ebp
 005A5890    ret
*}
end;

//005A5894
{*function TMenuItem.GetAction:?;
begin
 005A5894    push        ebp
 005A5895    mov         ebp,esp
 005A5897    add         esp,0FFFFFFF8
 005A589A    mov         dword ptr [ebp-4],eax
 005A589D    mov         eax,dword ptr [ebp-4]
 005A58A0    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A58A4    je          005A58B4
 005A58A6    mov         eax,dword ptr [ebp-4]
 005A58A9    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A58AC    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 005A58AF    mov         dword ptr [ebp-8],eax
>005A58B2    jmp         005A58B9
 005A58B4    xor         eax,eax
 005A58B6    mov         dword ptr [ebp-8],eax
 005A58B9    mov         eax,dword ptr [ebp-8]
 005A58BC    pop         ecx
 005A58BD    pop         ecx
 005A58BE    pop         ebp
 005A58BF    ret
end;*}

//005A58C0
procedure TMenuItem.sub_005A58C0;
begin
{*
 005A58C0    push        ebp
 005A58C1    mov         ebp,esp
 005A58C3    add         esp,0FFFFFFF8
 005A58C6    mov         dword ptr [ebp-4],eax
 005A58C9    mov         eax,[005A1DF8];TMenuActionLink
 005A58CE    mov         dword ptr [ebp-8],eax
 005A58D1    mov         eax,dword ptr [ebp-8]
 005A58D4    pop         ecx
 005A58D5    pop         ecx
 005A58D6    pop         ebp
 005A58D7    ret
*}
end;

//005A58D8
{*function sub_005A58D8(?:TMenuItem):?;
begin
 005A58D8    push        ebp
 005A58D9    mov         ebp,esp
 005A58DB    add         esp,0FFFFFFF8
 005A58DE    mov         dword ptr [ebp-4],eax
 005A58E1    mov         eax,dword ptr [ebp-4]
 005A58E4    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>005A58E8    jne         005A58F1
 005A58EA    xor         eax,eax
 005A58EC    mov         dword ptr [ebp-8],eax
>005A58EF    jmp         005A58FD
 005A58F1    mov         eax,dword ptr [ebp-4]
 005A58F4    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 005A58F7    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005A58FA    mov         dword ptr [ebp-8],eax
 005A58FD    mov         eax,dword ptr [ebp-8]
 005A5900    pop         ecx
 005A5901    pop         ecx
 005A5902    pop         ebp
 005A5903    ret
end;*}

//005A5904
{*function sub_005A5904(?:TMenuItem; ?:?):?;
begin
 005A5904    push        ebp
 005A5905    mov         ebp,esp
 005A5907    add         esp,0FFFFFFF4
 005A590A    mov         dword ptr [ebp-8],edx
 005A590D    mov         dword ptr [ebp-4],eax
 005A5910    mov         eax,dword ptr [ebp-4]
 005A5913    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>005A5917    jne         005A5923
 005A5919    mov         eax,[006E9E54];^gvar_0063CAB8
 005A591E    call        005A2AC4
 005A5923    mov         edx,dword ptr [ebp-8]
 005A5926    mov         eax,dword ptr [ebp-4]
 005A5929    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 005A592C    call        TList.Get
 005A5931    mov         dword ptr [ebp-0C],eax
 005A5934    mov         eax,dword ptr [ebp-0C]
 005A5937    mov         esp,ebp
 005A5939    pop         ebp
 005A593A    ret
end;*}

//005A593C
procedure TMenuItem.SetShortCut(Value:TShortCut);
begin
{*
 005A593C    push        ebp
 005A593D    mov         ebp,esp
 005A593F    add         esp,0FFFFFFF8
 005A5942    mov         word ptr [ebp-6],dx
 005A5946    mov         dword ptr [ebp-4],eax
 005A5949    mov         eax,dword ptr [ebp-4]
 005A594C    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 005A5950    cmp         ax,word ptr [ebp-6]
>005A5954    je          005A596B
 005A5956    mov         ax,word ptr [ebp-6]
 005A595A    mov         edx,dword ptr [ebp-4]
 005A595D    mov         word ptr [edx+60],ax;TMenuItem.ShortCut:TShortCut
 005A5961    mov         dl,1
 005A5963    mov         eax,dword ptr [ebp-4]
 005A5966    mov         ecx,dword ptr [eax]
 005A5968    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A596B    pop         ecx
 005A596C    pop         ecx
 005A596D    pop         ebp
 005A596E    ret
*}
end;

//005A5970
procedure TMenuItem.SetVisible(Value:Boolean);
begin
{*
 005A5970    push        ebp
 005A5971    mov         ebp,esp
 005A5973    add         esp,0FFFFFFF8
 005A5976    mov         byte ptr [ebp-5],dl
 005A5979    mov         dword ptr [ebp-4],eax
 005A597C    mov         al,byte ptr [ebp-5]
 005A597F    mov         edx,dword ptr [ebp-4]
 005A5982    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>005A5985    je          005A599A
 005A5987    mov         al,byte ptr [ebp-5]
 005A598A    mov         edx,dword ptr [ebp-4]
 005A598D    mov         byte ptr [edx+3E],al;TMenuItem.Visible:Boolean
 005A5990    mov         dl,1
 005A5992    mov         eax,dword ptr [ebp-4]
 005A5995    mov         ecx,dword ptr [eax]
 005A5997    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A599A    pop         ecx
 005A599B    pop         ecx
 005A599C    pop         ebp
 005A599D    ret
*}
end;

//005A59A0
procedure TMenuItem.SetImageIndex(Value:TImageIndex);
begin
{*
 005A59A0    push        ebp
 005A59A1    mov         ebp,esp
 005A59A3    add         esp,0FFFFFFF8
 005A59A6    mov         dword ptr [ebp-8],edx
 005A59A9    mov         dword ptr [ebp-4],eax
 005A59AC    mov         eax,dword ptr [ebp-8]
 005A59AF    mov         edx,dword ptr [ebp-4]
 005A59B2    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>005A59B5    je          005A59CA
 005A59B7    mov         eax,dword ptr [ebp-8]
 005A59BA    mov         edx,dword ptr [ebp-4]
 005A59BD    mov         dword ptr [edx+40],eax;TMenuItem.ImageIndex:TImageIndex
 005A59C0    mov         dl,1
 005A59C2    mov         eax,dword ptr [ebp-4]
 005A59C5    mov         ecx,dword ptr [eax]
 005A59C7    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A59CA    pop         ecx
 005A59CB    pop         ecx
 005A59CC    pop         ebp
 005A59CD    ret
*}
end;

//005A59D0
{*function sub_005A59D0(?:?):?;
begin
 005A59D0    push        ebp
 005A59D1    mov         ebp,esp
 005A59D3    add         esp,0FFFFFFF8
 005A59D6    mov         dword ptr [ebp-4],eax
 005A59D9    mov         dword ptr [ebp-8],0FFFFFFFF
 005A59E0    mov         eax,dword ptr [ebp-4]
 005A59E3    cmp         dword ptr [eax+64],0
>005A59E7    je          005A59FA
 005A59E9    mov         edx,dword ptr [ebp-4]
 005A59EC    mov         eax,dword ptr [ebp-4]
 005A59EF    mov         eax,dword ptr [eax+64]
 005A59F2    call        005A5DFC
 005A59F7    mov         dword ptr [ebp-8],eax
 005A59FA    mov         eax,dword ptr [ebp-8]
 005A59FD    pop         ecx
 005A59FE    pop         ecx
 005A59FF    pop         ebp
 005A5A00    ret
end;*}

//005A5A04
{*procedure sub_005A5A04(?:TMenuItem; ?:?);
begin
 005A5A04    push        ebp
 005A5A05    mov         ebp,esp
 005A5A07    add         esp,0FFFFFFF0
 005A5A0A    mov         dword ptr [ebp-8],edx
 005A5A0D    mov         dword ptr [ebp-4],eax
 005A5A10    mov         eax,dword ptr [ebp-4]
 005A5A13    cmp         dword ptr [eax+64],0
>005A5A17    je          005A5A70
 005A5A19    mov         eax,dword ptr [ebp-4]
 005A5A1C    mov         eax,dword ptr [eax+64]
 005A5A1F    call        005A58D8
 005A5A24    mov         dword ptr [ebp-10],eax
 005A5A27    cmp         dword ptr [ebp-8],0
>005A5A2B    jge         005A5A32
 005A5A2D    xor         eax,eax
 005A5A2F    mov         dword ptr [ebp-8],eax
 005A5A32    mov         eax,dword ptr [ebp-8]
 005A5A35    cmp         eax,dword ptr [ebp-10]
>005A5A38    jl          005A5A41
 005A5A3A    mov         eax,dword ptr [ebp-10]
 005A5A3D    dec         eax
 005A5A3E    mov         dword ptr [ebp-8],eax
 005A5A41    mov         eax,dword ptr [ebp-4]
 005A5A44    call        005A59D0
 005A5A49    cmp         eax,dword ptr [ebp-8]
>005A5A4C    je          005A5A70
 005A5A4E    mov         eax,dword ptr [ebp-4]
 005A5A51    mov         eax,dword ptr [eax+64]
 005A5A54    mov         dword ptr [ebp-0C],eax
 005A5A57    mov         edx,dword ptr [ebp-4]
 005A5A5A    mov         eax,dword ptr [ebp-0C]
 005A5A5D    call        005A5E58
 005A5A62    mov         ecx,dword ptr [ebp-4]
 005A5A65    mov         edx,dword ptr [ebp-8]
 005A5A68    mov         eax,dword ptr [ebp-0C]
 005A5A6B    call        005A5B90
 005A5A70    mov         esp,ebp
 005A5A72    pop         ebp
 005A5A73    ret
end;*}

//005A5A74
{*procedure TMenuItem.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);
begin
 005A5A74    push        ebp
 005A5A75    mov         ebp,esp
 005A5A77    add         esp,0FFFFFFF0
 005A5A7A    mov         dword ptr [ebp-10],edx
 005A5A7D    mov         dword ptr [ebp-4],eax
 005A5A80    mov         eax,dword ptr [ebp-4]
 005A5A83    call        005A58D8
 005A5A88    dec         eax
 005A5A89    test        eax,eax
>005A5A8B    jl          005A5AB3
 005A5A8D    inc         eax
 005A5A8E    mov         dword ptr [ebp-0C],eax
 005A5A91    mov         dword ptr [ebp-8],0
 005A5A98    mov         edx,dword ptr [ebp-8]
 005A5A9B    mov         eax,dword ptr [ebp-4]
 005A5A9E    call        005A5904
 005A5AA3    mov         edx,eax
 005A5AA5    mov         eax,dword ptr [ebp+0C]
 005A5AA8    call        dword ptr [ebp+8]
 005A5AAB    inc         dword ptr [ebp-8]
 005A5AAE    dec         dword ptr [ebp-0C]
>005A5AB1    jne         005A5A98
 005A5AB3    mov         esp,ebp
 005A5AB5    pop         ebp
 005A5AB6    ret         8
end;*}

//005A5ABC
{*procedure TMenuItem.sub_005A5ABC(?:?; ?:?);
begin
 005A5ABC    push        ebp
 005A5ABD    mov         ebp,esp
 005A5ABF    add         esp,0FFFFFFF4
 005A5AC2    mov         dword ptr [ebp-0C],ecx
 005A5AC5    mov         dword ptr [ebp-8],edx
 005A5AC8    mov         dword ptr [ebp-4],eax
 005A5ACB    mov         eax,dword ptr [ebp-8]
 005A5ACE    mov         edx,dword ptr ds:[5A1ED0];TMenuItem
 005A5AD4    call        @AsClass
 005A5AD9    mov         edx,dword ptr [ebp-0C]
 005A5ADC    call        005A5A04
 005A5AE1    mov         esp,ebp
 005A5AE3    pop         ebp
 005A5AE4    ret
end;*}

//005A5AE8
procedure TMenuItem.SetDefault(Value:Boolean);
begin
{*
 005A5AE8    push        ebp
 005A5AE9    mov         ebp,esp
 005A5AEB    add         esp,0FFFFFFF0
 005A5AEE    mov         byte ptr [ebp-5],dl
 005A5AF1    mov         dword ptr [ebp-4],eax
 005A5AF4    mov         eax,dword ptr [ebp-4]
 005A5AF7    mov         al,byte ptr [eax+3A];TMenuItem.Default:Boolean
 005A5AFA    cmp         al,byte ptr [ebp-5]
>005A5AFD    je          005A5B6A
 005A5AFF    cmp         byte ptr [ebp-5],0
>005A5B03    je          005A5B57
 005A5B05    mov         eax,dword ptr [ebp-4]
 005A5B08    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A5B0C    je          005A5B57
 005A5B0E    mov         eax,dword ptr [ebp-4]
 005A5B11    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5B14    call        005A58D8
 005A5B19    dec         eax
 005A5B1A    test        eax,eax
>005A5B1C    jl          005A5B57
 005A5B1E    inc         eax
 005A5B1F    mov         dword ptr [ebp-10],eax
 005A5B22    mov         dword ptr [ebp-0C],0
 005A5B29    mov         edx,dword ptr [ebp-0C]
 005A5B2C    mov         eax,dword ptr [ebp-4]
 005A5B2F    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5B32    call        005A5904
 005A5B37    cmp         byte ptr [eax+3A],0
>005A5B3B    je          005A5B4F
 005A5B3D    mov         edx,dword ptr [ebp-0C]
 005A5B40    mov         eax,dword ptr [ebp-4]
 005A5B43    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A5B46    call        005A5904
 005A5B4B    mov         byte ptr [eax+3A],0
 005A5B4F    inc         dword ptr [ebp-0C]
 005A5B52    dec         dword ptr [ebp-10]
>005A5B55    jne         005A5B29
 005A5B57    mov         al,byte ptr [ebp-5]
 005A5B5A    mov         edx,dword ptr [ebp-4]
 005A5B5D    mov         byte ptr [edx+3A],al;TMenuItem.Default:Boolean
 005A5B60    mov         dl,1
 005A5B62    mov         eax,dword ptr [ebp-4]
 005A5B65    mov         ecx,dword ptr [eax]
 005A5B67    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A5B6A    mov         esp,ebp
 005A5B6C    pop         ebp
 005A5B6D    ret
*}
end;

//005A5B70
procedure sub_005A5B70;
begin
{*
 005A5B70    push        ebp
 005A5B71    mov         ebp,esp
 005A5B73    push        ecx
 005A5B74    mov         dword ptr [ebp-4],eax
 005A5B77    mov         eax,dword ptr [ebp-4]
 005A5B7A    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A5B7E    je          005A5B8B
 005A5B80    mov         eax,dword ptr [ebp-4]
 005A5B83    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A5B86    mov         edx,dword ptr [eax]
 005A5B88    call        dword ptr [edx+1C];TMenuActionLink.sub_0065103C
 005A5B8B    pop         ecx
 005A5B8C    pop         ebp
 005A5B8D    ret
*}
end;

//005A5B90
{*procedure sub_005A5B90(?:TMenuItem; ?:?; ?:TMenuItem);
begin
 005A5B90    push        ebp
 005A5B91    mov         ebp,esp
 005A5B93    add         esp,0FFFFFFF4
 005A5B96    mov         dword ptr [ebp-0C],ecx
 005A5B99    mov         dword ptr [ebp-8],edx
 005A5B9C    mov         dword ptr [ebp-4],eax
 005A5B9F    mov         eax,dword ptr [ebp-0C]
 005A5BA2    cmp         dword ptr [eax+64],0
>005A5BA6    je          005A5BB2
 005A5BA8    mov         eax,[006E9E58];^gvar_0063CAC0
 005A5BAD    call        005A2AC4
 005A5BB2    mov         eax,dword ptr [ebp-4]
 005A5BB5    cmp         dword ptr [eax+5C],0
>005A5BB9    jne         005A5BCD
 005A5BBB    mov         dl,1
 005A5BBD    mov         eax,[006422A4];TList
 005A5BC2    call        TObject.Create;TList.Create
 005A5BC7    mov         edx,dword ptr [ebp-4]
 005A5BCA    mov         dword ptr [edx+5C],eax
 005A5BCD    mov         eax,dword ptr [ebp-8]
 005A5BD0    dec         eax
>005A5BD1    js          005A5C16
 005A5BD3    mov         eax,dword ptr [ebp-8]
 005A5BD6    dec         eax
 005A5BD7    mov         edx,dword ptr [ebp-4]
 005A5BDA    mov         edx,dword ptr [edx+5C]
 005A5BDD    cmp         eax,dword ptr [edx+8]
>005A5BE0    jge         005A5C16
 005A5BE2    mov         edx,dword ptr [ebp-8]
 005A5BE5    dec         edx
 005A5BE6    mov         eax,dword ptr [ebp-4]
 005A5BE9    mov         eax,dword ptr [eax+5C]
 005A5BEC    call        TList.Get
 005A5BF1    mov         al,byte ptr [eax+3F]
 005A5BF4    mov         edx,dword ptr [ebp-0C]
 005A5BF7    cmp         al,byte ptr [edx+3F]
>005A5BFA    jbe         005A5C16
 005A5BFC    mov         edx,dword ptr [ebp-8]
 005A5BFF    dec         edx
 005A5C00    mov         eax,dword ptr [ebp-4]
 005A5C03    mov         eax,dword ptr [eax+5C]
 005A5C06    call        TList.Get
 005A5C0B    mov         dl,byte ptr [eax+3F]
 005A5C0E    mov         eax,dword ptr [ebp-0C]
 005A5C11    call        TMenuItem.SetGroupIndex
 005A5C16    mov         eax,dword ptr [ebp-0C]
 005A5C19    mov         cl,byte ptr [eax+3F]
 005A5C1C    mov         edx,dword ptr [ebp-8]
 005A5C1F    mov         eax,dword ptr [ebp-4]
 005A5C22    call        005A3D20
 005A5C27    mov         ecx,dword ptr [ebp-0C]
 005A5C2A    mov         edx,dword ptr [ebp-8]
 005A5C2D    mov         eax,dword ptr [ebp-4]
 005A5C30    mov         eax,dword ptr [eax+5C]
 005A5C33    call        TList.Insert
 005A5C38    mov         eax,dword ptr [ebp-4]
 005A5C3B    mov         edx,dword ptr [ebp-0C]
 005A5C3E    mov         dword ptr [edx+64],eax
 005A5C41    mov         eax,dword ptr [ebp-4]
 005A5C44    mov         edx,dword ptr [ebp-0C]
 005A5C47    mov         dword ptr [edx+84],eax
 005A5C4D    mov         dword ptr [edx+80],5A5EF8
 005A5C57    mov         eax,dword ptr [ebp-4]
 005A5C5A    cmp         dword ptr [eax+34],0
>005A5C5E    je          005A5C68
 005A5C60    mov         eax,dword ptr [ebp-4]
 005A5C63    call        005A3C18
 005A5C68    mov         eax,dword ptr [ebp-4]
 005A5C6B    call        005A58D8
 005A5C70    dec         eax
 005A5C71    sete        dl
 005A5C74    mov         eax,dword ptr [ebp-4]
 005A5C77    mov         ecx,dword ptr [eax]
 005A5C79    call        dword ptr [ecx+3C]
 005A5C7C    mov         esp,ebp
 005A5C7E    pop         ebp
 005A5C7F    ret
end;*}

//005A5C80
{*procedure sub_005A5C80(?:TMenuItem; ?:?);
begin
 005A5C80    push        ebp
 005A5C81    mov         ebp,esp
 005A5C83    add         esp,0FFFFFFF4
 005A5C86    mov         dword ptr [ebp-8],edx
 005A5C89    mov         dword ptr [ebp-4],eax
 005A5C8C    cmp         dword ptr [ebp-8],0
>005A5C90    jl          005A5CA8
 005A5C92    mov         eax,dword ptr [ebp-4]
 005A5C95    cmp         dword ptr [eax+5C],0
>005A5C99    je          005A5CA8
 005A5C9B    mov         eax,dword ptr [ebp-4]
 005A5C9E    call        005A58D8
 005A5CA3    cmp         eax,dword ptr [ebp-8]
>005A5CA6    jg          005A5CB2
 005A5CA8    mov         eax,[006E9E54];^gvar_0063CAB8
 005A5CAD    call        005A2AC4
 005A5CB2    mov         edx,dword ptr [ebp-8]
 005A5CB5    mov         eax,dword ptr [ebp-4]
 005A5CB8    mov         eax,dword ptr [eax+5C]
 005A5CBB    call        TList.Get
 005A5CC0    mov         dword ptr [ebp-0C],eax
 005A5CC3    mov         edx,dword ptr [ebp-8]
 005A5CC6    mov         eax,dword ptr [ebp-4]
 005A5CC9    mov         eax,dword ptr [eax+5C]
 005A5CCC    call        TList.Delete
 005A5CD1    mov         eax,dword ptr [ebp-0C]
 005A5CD4    xor         edx,edx
 005A5CD6    mov         dword ptr [eax+64],edx
 005A5CD9    mov         eax,dword ptr [ebp-0C]
 005A5CDC    xor         edx,edx
 005A5CDE    mov         dword ptr [eax+80],edx
 005A5CE4    mov         dword ptr [eax+84],edx
 005A5CEA    mov         eax,dword ptr [ebp-4]
 005A5CED    cmp         dword ptr [eax+34],0
>005A5CF1    je          005A5CFB
 005A5CF3    mov         eax,dword ptr [ebp-4]
 005A5CF6    call        005A3C18
 005A5CFB    mov         eax,dword ptr [ebp-4]
 005A5CFE    call        005A58D8
 005A5D03    test        eax,eax
 005A5D05    sete        dl
 005A5D08    mov         eax,dword ptr [ebp-4]
 005A5D0B    mov         ecx,dword ptr [eax]
 005A5D0D    call        dword ptr [ecx+3C]
 005A5D10    mov         esp,ebp
 005A5D12    pop         ebp
 005A5D13    ret
end;*}

//005A5D14
procedure sub_005A5D14;
begin
{*
 005A5D14    push        ebp
 005A5D15    mov         ebp,esp
 005A5D17    push        ecx
 005A5D18    push        ebx
 005A5D19    mov         dword ptr [ebp-4],eax
 005A5D1C    mov         eax,dword ptr [ebp-4]
 005A5D1F    cmp         byte ptr [eax+39],0;TMenuItem.Enabled:Boolean
>005A5D23    je          005A5DF7
 005A5D29    mov         eax,dword ptr [ebp-4]
 005A5D2C    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A5D30    jne         005A5D3E
 005A5D32    mov         eax,dword ptr [ebp-4]
 005A5D35    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>005A5D3C    jne         005A5D62
 005A5D3E    mov         eax,dword ptr [ebp-4]
 005A5D41    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A5D45    je          005A5D73
 005A5D47    mov         eax,dword ptr [ebp-4]
 005A5D4A    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A5D4D    mov         edx,dword ptr [eax]
 005A5D4F    call        dword ptr [edx+78];TMenuActionLink.sub_005A3128
 005A5D52    test        al,al
>005A5D54    jne         005A5D73
 005A5D56    mov         eax,dword ptr [ebp-4]
 005A5D59    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>005A5D60    je          005A5D73
 005A5D62    mov         eax,dword ptr [ebp-4]
 005A5D65    mov         dl,byte ptr [eax+38];TMenuItem.Checked:Boolean
 005A5D68    xor         dl,1
 005A5D6B    mov         eax,dword ptr [ebp-4]
 005A5D6E    call        TMenuItem.SetChecked
 005A5D73    mov         eax,dword ptr [ebp-4]
 005A5D76    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>005A5D7E    je          005A5DB6
 005A5D80    mov         eax,dword ptr [ebp-4]
 005A5D83    call        TMenuItem.GetAction
 005A5D88    test        eax,eax
>005A5D8A    je          005A5DB6
 005A5D8C    mov         eax,dword ptr [ebp-4]
 005A5D8F    call        TMenuItem.GetAction
 005A5D94    mov         eax,dword ptr [eax+40]
 005A5D97    mov         edx,dword ptr [ebp-4]
 005A5D9A    cmp         eax,dword ptr [edx+88];TMenuItem.OnClick:TNotifyEvent
>005A5DA0    je          005A5DB6
 005A5DA2    mov         ebx,dword ptr [ebp-4]
 005A5DA5    mov         edx,dword ptr [ebp-4]
 005A5DA8    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TFMain_11011981
 005A5DAE    call        dword ptr [ebx+88];TMenuItem.OnClick
>005A5DB4    jmp         005A5DF7
 005A5DB6    mov         eax,dword ptr [ebp-4]
 005A5DB9    test        byte ptr [eax+1C],10;TMenuItem.FComponentState:TComponentState
>005A5DBD    jne         005A5DD8
 005A5DBF    mov         eax,dword ptr [ebp-4]
 005A5DC2    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A5DC6    je          005A5DD8
 005A5DC8    mov         edx,dword ptr [ebp-4]
 005A5DCB    mov         eax,dword ptr [ebp-4]
 005A5DCE    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A5DD1    mov         ecx,dword ptr [eax]
 005A5DD3    call        dword ptr [ecx+18];TMenuActionLink.sub_00650F58
>005A5DD6    jmp         005A5DF7
 005A5DD8    mov         eax,dword ptr [ebp-4]
 005A5DDB    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>005A5DE3    je          005A5DF7
 005A5DE5    mov         ebx,dword ptr [ebp-4]
 005A5DE8    mov         edx,dword ptr [ebp-4]
 005A5DEB    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TFMain_11011981
 005A5DF1    call        dword ptr [ebx+88];TMenuItem.OnClick
 005A5DF7    pop         ebx
 005A5DF8    pop         ecx
 005A5DF9    pop         ebp
 005A5DFA    ret
*}
end;

//005A5DFC
{*function sub_005A5DFC(?:TMenuItem; ?:TMenuItem):?;
begin
 005A5DFC    push        ebp
 005A5DFD    mov         ebp,esp
 005A5DFF    add         esp,0FFFFFFF4
 005A5E02    mov         dword ptr [ebp-8],edx
 005A5E05    mov         dword ptr [ebp-4],eax
 005A5E08    mov         dword ptr [ebp-0C],0FFFFFFFF
 005A5E0F    mov         eax,dword ptr [ebp-4]
 005A5E12    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>005A5E16    je          005A5E29
 005A5E18    mov         edx,dword ptr [ebp-8]
 005A5E1B    mov         eax,dword ptr [ebp-4]
 005A5E1E    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 005A5E21    call        TList.IndexOf
 005A5E26    mov         dword ptr [ebp-0C],eax
 005A5E29    mov         eax,dword ptr [ebp-0C]
 005A5E2C    mov         esp,ebp
 005A5E2E    pop         ebp
 005A5E2F    ret
end;*}

//005A5E30
procedure sub_005A5E30(?:TMenuItem; ?:TMenuItem);
begin
{*
 005A5E30    push        ebp
 005A5E31    mov         ebp,esp
 005A5E33    add         esp,0FFFFFFF8
 005A5E36    mov         dword ptr [ebp-8],edx
 005A5E39    mov         dword ptr [ebp-4],eax
 005A5E3C    mov         eax,dword ptr [ebp-4]
 005A5E3F    call        005A58D8
 005A5E44    mov         edx,eax
 005A5E46    mov         ecx,dword ptr [ebp-8]
 005A5E49    mov         eax,dword ptr [ebp-4]
 005A5E4C    call        005A5B90
 005A5E51    pop         ecx
 005A5E52    pop         ecx
 005A5E53    pop         ebp
 005A5E54    ret
*}
end;

//005A5E58
procedure sub_005A5E58(?:TMenuItem; ?:TMenuItem);
begin
{*
 005A5E58    push        ebp
 005A5E59    mov         ebp,esp
 005A5E5B    add         esp,0FFFFFFF4
 005A5E5E    mov         dword ptr [ebp-8],edx
 005A5E61    mov         dword ptr [ebp-4],eax
 005A5E64    mov         edx,dword ptr [ebp-8]
 005A5E67    mov         eax,dword ptr [ebp-4]
 005A5E6A    call        005A5DFC
 005A5E6F    mov         dword ptr [ebp-0C],eax
 005A5E72    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005A5E76    jne         005A5E82
 005A5E78    mov         eax,[006E9E5C];^gvar_0063CAC8
 005A5E7D    call        005A2AC4
 005A5E82    mov         edx,dword ptr [ebp-0C]
 005A5E85    mov         eax,dword ptr [ebp-4]
 005A5E88    call        005A5C80
 005A5E8D    mov         esp,ebp
 005A5E8F    pop         ebp
 005A5E90    ret
*}
end;

//005A5E94
{*procedure sub_005A5E94(?:?);
begin
 005A5E94    push        ebp
 005A5E95    mov         ebp,esp
 005A5E97    add         esp,0FFFFFFF4
 005A5E9A    push        ebx
 005A5E9B    mov         byte ptr [ebp-5],dl
 005A5E9E    mov         dword ptr [ebp-4],eax
 005A5EA1    mov         eax,dword ptr [ebp-4]
 005A5EA4    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A5EA8    jne         005A5EC6
 005A5EAA    mov         eax,dword ptr [ebp-4]
 005A5EAD    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 005A5EB0    mov         edx,dword ptr ds:[5A22F4];TMenu
 005A5EB6    call        @IsClass
 005A5EBB    test        al,al
>005A5EBD    je          005A5EC6
 005A5EBF    xor         eax,eax
 005A5EC1    mov         dword ptr [ebp-0C],eax
>005A5EC4    jmp         005A5ECC
 005A5EC6    mov         eax,dword ptr [ebp-4]
 005A5EC9    mov         dword ptr [ebp-0C],eax
 005A5ECC    mov         eax,dword ptr [ebp-4]
 005A5ECF    cmp         word ptr [eax+82],0;TMenuItem.?f82:word
>005A5ED7    je          005A5EF2
 005A5ED9    mov         al,byte ptr [ebp-5]
 005A5EDC    push        eax
 005A5EDD    mov         ebx,dword ptr [ebp-4]
 005A5EE0    mov         ecx,dword ptr [ebp-0C]
 005A5EE3    mov         edx,dword ptr [ebp-4]
 005A5EE6    mov         eax,dword ptr [ebx+84];TMenuItem.?f84:TMenu
 005A5EEC    call        dword ptr [ebx+80];TMenuItem.FOnChange
 005A5EF2    pop         ebx
 005A5EF3    mov         esp,ebp
 005A5EF5    pop         ebp
 005A5EF6    ret
end;*}

//005A5F6C
{*function TMenuItem.GetBitmap:?;
begin
 005A5F6C    push        ebp
 005A5F6D    mov         ebp,esp
 005A5F6F    add         esp,0FFFFFFF8
 005A5F72    mov         dword ptr [ebp-4],eax
 005A5F75    mov         eax,dword ptr [ebp-4]
 005A5F78    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>005A5F7C    jne         005A5F90
 005A5F7E    mov         dl,1
 005A5F80    mov         eax,[005BEDD4];TBitmap
 005A5F85    call        TBitmap.Create;TBitmap.Create
 005A5F8A    mov         edx,dword ptr [ebp-4]
 005A5F8D    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 005A5F90    mov         dl,1
 005A5F92    mov         eax,dword ptr [ebp-4]
 005A5F95    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 005A5F98    mov         ecx,dword ptr [eax]
 005A5F9A    call        dword ptr [ecx+3C];TBitmap.sub_005C3748
 005A5F9D    mov         eax,dword ptr [ebp-4]
 005A5FA0    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 005A5FA3    mov         dword ptr [ebp-8],eax
 005A5FA6    mov         eax,dword ptr [ebp-8]
 005A5FA9    pop         ecx
 005A5FAA    pop         ecx
 005A5FAB    pop         ebp
 005A5FAC    ret
end;*}

//005A5FB0
procedure TMenuItem.SetAction(Value:TBasicAction);
begin
{*
 005A5FB0    push        ebp
 005A5FB1    mov         ebp,esp
 005A5FB3    add         esp,0FFFFFFF8
 005A5FB6    push        esi
 005A5FB7    mov         dword ptr [ebp-8],edx
 005A5FBA    mov         dword ptr [ebp-4],eax
 005A5FBD    cmp         dword ptr [ebp-8],0
>005A5FC1    jne         005A5FD8
 005A5FC3    mov         eax,dword ptr [ebp-4]
 005A5FC6    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A5FC9    call        TObject.Free
 005A5FCE    mov         eax,dword ptr [ebp-4]
 005A5FD1    xor         edx,edx
 005A5FD3    mov         dword ptr [eax+44],edx;TMenuItem.FActionLink:TMenuActionLink
>005A5FD6    jmp         005A6040
 005A5FD8    mov         eax,dword ptr [ebp-4]
 005A5FDB    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A5FDF    jne         005A5FFB
 005A5FE1    mov         eax,dword ptr [ebp-4]
 005A5FE4    mov         si,0FFEE
 005A5FE8    call        @CallDynaInst;TMenuItem.sub_005A58C0
 005A5FED    mov         ecx,dword ptr [ebp-4]
 005A5FF0    mov         dl,1
 005A5FF2    call        dword ptr [eax+14]
 005A5FF5    mov         edx,dword ptr [ebp-4]
 005A5FF8    mov         dword ptr [edx+44],eax;TMenuItem.FActionLink:TMenuActionLink
 005A5FFB    mov         edx,dword ptr [ebp-8]
 005A5FFE    mov         eax,dword ptr [ebp-4]
 005A6001    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6004    mov         ecx,dword ptr [eax]
 005A6006    call        dword ptr [ecx+0C];TMenuActionLink.sub_00650FD0
 005A6009    mov         eax,dword ptr [ebp-4]
 005A600C    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A600F    mov         edx,dword ptr [ebp-4]
 005A6012    mov         dword ptr [eax+0C],edx;TMenuActionLink.?fC:TMenuItem
 005A6015    mov         dword ptr [eax+8],5A6384;TMenuActionLink.FOnChange:TNotifyEvent
 005A601C    mov         eax,dword ptr [ebp-8]
 005A601F    test        byte ptr [eax+1C],1;TBasicAction.FComponentState:TComponentState
 005A6023    setne       cl
 005A6026    mov         edx,dword ptr [ebp-8]
 005A6029    mov         eax,dword ptr [ebp-4]
 005A602C    mov         si,0FFEF
 005A6030    call        @CallDynaInst;TMenuItem.sub_005A61F0
 005A6035    mov         edx,dword ptr [ebp-4]
 005A6038    mov         eax,dword ptr [ebp-8]
 005A603B    call        TComponent.FreeNotification
 005A6040    pop         esi
 005A6041    pop         ecx
 005A6042    pop         ecx
 005A6043    pop         ebp
 005A6044    ret
*}
end;

//005A6048
procedure TMenuItem.SetBitmap(Value:TBitmap);
begin
{*
 005A6048    push        ebp
 005A6049    mov         ebp,esp
 005A604B    add         esp,0FFFFFFF8
 005A604E    mov         dword ptr [ebp-8],edx
 005A6051    mov         dword ptr [ebp-4],eax
 005A6054    mov         eax,dword ptr [ebp-4]
 005A6057    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>005A605B    jne         005A606F
 005A605D    mov         dl,1
 005A605F    mov         eax,[005BEDD4];TBitmap
 005A6064    call        TBitmap.Create;TBitmap.Create
 005A6069    mov         edx,dword ptr [ebp-4]
 005A606C    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 005A606F    mov         edx,dword ptr [ebp-8]
 005A6072    mov         eax,dword ptr [ebp-4]
 005A6075    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 005A6078    mov         ecx,dword ptr [eax]
 005A607A    call        dword ptr [ecx+8];TBitmap.Assign
 005A607D    mov         dl,1
 005A607F    mov         eax,dword ptr [ebp-4]
 005A6082    mov         ecx,dword ptr [eax]
 005A6084    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A6087    pop         ecx
 005A6088    pop         ecx
 005A6089    pop         ebp
 005A608A    ret
*}
end;

//005A608C
{*procedure sub_005A608C(?:?);
begin
 005A608C    push        ebp
 005A608D    mov         ebp,esp
 005A608F    add         esp,0FFFFFFF4
 005A6092    mov         dword ptr [ebp-4],eax
 005A6095    mov         eax,dword ptr [ebp-4]
 005A6098    call        005A58D8
 005A609D    dec         eax
 005A609E    test        eax,eax
>005A60A0    jl          005A60C5
 005A60A2    inc         eax
 005A60A3    mov         dword ptr [ebp-0C],eax
 005A60A6    mov         dword ptr [ebp-8],0
 005A60AD    mov         edx,dword ptr [ebp-8]
 005A60B0    mov         eax,dword ptr [ebp-4]
 005A60B3    call        005A5904
 005A60B8    mov         edx,dword ptr [eax]
 005A60BA    call        dword ptr [edx+40]
 005A60BD    inc         dword ptr [ebp-8]
 005A60C0    dec         dword ptr [ebp-0C]
>005A60C3    jne         005A60AD
 005A60C5    mov         esp,ebp
 005A60C7    pop         ebp
 005A60C8    ret
end;*}

//005A60CC
procedure TMenuItem.sub_005A60CC;
begin
{*
 005A60CC    push        ebp
 005A60CD    mov         ebp,esp
 005A60CF    add         esp,0FFFFFFF8
 005A60D2    mov         dword ptr [ebp-4],eax
 005A60D5    mov         eax,dword ptr [ebp-4]
 005A60D8    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A60DC    je          005A60F8
 005A60DE    mov         eax,dword ptr [ebp-4]
 005A60E1    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A60E4    cmp         dword ptr [eax+70],0;TMenuItem.FMenu:TMenu
>005A60E8    je          005A60F8
 005A60EA    mov         eax,dword ptr [ebp-4]
 005A60ED    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A60F0    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 005A60F3    mov         dword ptr [ebp-8],eax
>005A60F6    jmp         005A6101
 005A60F8    mov         eax,dword ptr [ebp-4]
 005A60FB    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A60FE    mov         dword ptr [ebp-8],eax
 005A6101    mov         eax,dword ptr [ebp-8]
 005A6104    pop         ecx
 005A6105    pop         ecx
 005A6106    pop         ebp
 005A6107    ret
*}
end;

//005A6108
{*procedure TMenuItem.sub_005A6108(?:?);
begin
 005A6108    push        ebp
 005A6109    mov         ebp,esp
 005A610B    add         esp,0FFFFFFF8
 005A610E    mov         dword ptr [ebp-8],edx
 005A6111    mov         dword ptr [ebp-4],eax
 005A6114    mov         eax,dword ptr [ebp-4]
 005A6117    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>005A611B    je          005A612B
 005A611D    mov         edx,dword ptr [ebp-4]
 005A6120    mov         eax,dword ptr [ebp-4]
 005A6123    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 005A6126    call        005A5E58
 005A612B    cmp         dword ptr [ebp-8],0
>005A612F    je          005A6170
 005A6131    mov         eax,dword ptr [ebp-8]
 005A6134    mov         edx,dword ptr ds:[5A22F4];TMenu
 005A613A    call        @IsClass
 005A613F    test        al,al
>005A6141    je          005A6153
 005A6143    mov         eax,dword ptr [ebp-8]
 005A6146    mov         eax,dword ptr [eax+34]
 005A6149    mov         edx,dword ptr [ebp-4]
 005A614C    call        005A5E30
>005A6151    jmp         005A6170
 005A6153    mov         eax,dword ptr [ebp-8]
 005A6156    mov         edx,dword ptr ds:[5A1ED0];TMenuItem
 005A615C    call        @IsClass
 005A6161    test        al,al
>005A6163    je          005A6170
 005A6165    mov         edx,dword ptr [ebp-4]
 005A6168    mov         eax,dword ptr [ebp-8]
 005A616B    call        005A5E30
 005A6170    pop         ecx
 005A6171    pop         ecx
 005A6172    pop         ebp
 005A6173    ret
end;*}

//005A6174
function TMenuItem.GetParentMenu:TMenu;
begin
{*
 005A6174    push        ebp
 005A6175    mov         ebp,esp
 005A6177    add         esp,0FFFFFFF4
 005A617A    mov         dword ptr [ebp-4],eax
 005A617D    mov         eax,dword ptr [ebp-4]
 005A6180    mov         dword ptr [ebp-0C],eax
>005A6183    jmp         005A618E
 005A6185    mov         eax,dword ptr [ebp-0C]
 005A6188    mov         eax,dword ptr [eax+64]
 005A618B    mov         dword ptr [ebp-0C],eax
 005A618E    mov         eax,dword ptr [ebp-0C]
 005A6191    cmp         dword ptr [eax+64],0
>005A6195    jne         005A6185
 005A6197    mov         eax,dword ptr [ebp-0C]
 005A619A    mov         eax,dword ptr [eax+70]
 005A619D    mov         dword ptr [ebp-8],eax
 005A61A0    mov         eax,dword ptr [ebp-8]
 005A61A3    mov         esp,ebp
 005A61A5    pop         ebp
 005A61A6    ret
*}
end;

//005A61A8
procedure TMenuItem.SetRadioItem(Value:Boolean);
begin
{*
 005A61A8    push        ebp
 005A61A9    mov         ebp,esp
 005A61AB    add         esp,0FFFFFFF8
 005A61AE    mov         byte ptr [ebp-5],dl
 005A61B1    mov         dword ptr [ebp-4],eax
 005A61B4    mov         eax,dword ptr [ebp-4]
 005A61B7    mov         al,byte ptr [eax+3D];TMenuItem.RadioItem:Boolean
 005A61BA    cmp         al,byte ptr [ebp-5]
>005A61BD    je          005A61EC
 005A61BF    mov         al,byte ptr [ebp-5]
 005A61C2    mov         edx,dword ptr [ebp-4]
 005A61C5    mov         byte ptr [edx+3D],al;TMenuItem.RadioItem:Boolean
 005A61C8    mov         eax,dword ptr [ebp-4]
 005A61CB    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>005A61CF    je          005A61E2
 005A61D1    mov         eax,dword ptr [ebp-4]
 005A61D4    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>005A61D8    je          005A61E2
 005A61DA    mov         eax,dword ptr [ebp-4]
 005A61DD    call        005A569C
 005A61E2    mov         dl,1
 005A61E4    mov         eax,dword ptr [ebp-4]
 005A61E7    mov         ecx,dword ptr [eax]
 005A61E9    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A61EC    pop         ecx
 005A61ED    pop         ecx
 005A61EE    pop         ebp
 005A61EF    ret
*}
end;

//005A61F0
{*procedure TMenuItem.sub_005A61F0(?:?; ?:?);
begin
 005A61F0    push        ebp
 005A61F1    mov         ebp,esp
 005A61F3    add         esp,0FFFFFFF4
 005A61F6    mov         byte ptr [ebp-9],cl
 005A61F9    mov         dword ptr [ebp-8],edx
 005A61FC    mov         dword ptr [ebp-4],eax
 005A61FF    mov         eax,dword ptr [ebp-8]
 005A6202    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A6208    call        @IsClass
 005A620D    test        al,al
>005A620F    je          005A637E
 005A6215    cmp         byte ptr [ebp-9],0
>005A6219    je          005A6227
 005A621B    mov         eax,dword ptr [ebp-4]
 005A621E    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>005A6225    jne         005A6239
 005A6227    mov         eax,dword ptr [ebp-8]
 005A622A    mov         al,byte ptr [eax+95]
 005A6230    mov         edx,dword ptr [ebp-4]
 005A6233    mov         byte ptr [edx+0A8],al;TMenuItem.AutoCheck:Boolean
 005A6239    cmp         byte ptr [ebp-9],0
>005A623D    je          005A6248
 005A623F    mov         eax,dword ptr [ebp-4]
 005A6242    cmp         dword ptr [eax+30],0;TMenuItem.Caption:String
>005A6246    jne         005A6256
 005A6248    mov         eax,dword ptr [ebp-8]
 005A624B    mov         edx,dword ptr [eax+64]
 005A624E    mov         eax,dword ptr [ebp-4]
 005A6251    call        TMenuItem.SetCaption
 005A6256    cmp         byte ptr [ebp-9],0
>005A625A    je          005A6265
 005A625C    mov         eax,dword ptr [ebp-4]
 005A625F    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>005A6263    jne         005A6273
 005A6265    mov         eax,dword ptr [ebp-8]
 005A6268    mov         dl,byte ptr [eax+69]
 005A626B    mov         eax,dword ptr [ebp-4]
 005A626E    call        TMenuItem.SetChecked
 005A6273    cmp         byte ptr [ebp-9],0
>005A6277    je          005A6282
 005A6279    mov         eax,dword ptr [ebp-4]
 005A627C    cmp         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
>005A6280    jne         005A6290
 005A6282    mov         eax,dword ptr [ebp-8]
 005A6285    mov         dl,byte ptr [eax+6A]
 005A6288    mov         eax,dword ptr [ebp-4]
 005A628B    call        TMenuItem.SetEnabled
 005A6290    cmp         byte ptr [ebp-9],0
>005A6294    je          005A629F
 005A6296    mov         eax,dword ptr [ebp-4]
 005A6299    cmp         dword ptr [eax+54],0;TMenuItem.HelpContext:THelpContext
>005A629D    jne         005A62AB
 005A629F    mov         eax,dword ptr [ebp-8]
 005A62A2    mov         eax,dword ptr [eax+74]
 005A62A5    mov         edx,dword ptr [ebp-4]
 005A62A8    mov         dword ptr [edx+54],eax;TMenuItem.HelpContext:THelpContext
 005A62AB    cmp         byte ptr [ebp-9],0
>005A62AF    je          005A62BA
 005A62B1    mov         eax,dword ptr [ebp-4]
 005A62B4    cmp         dword ptr [eax+58],0;TMenuItem.Hint:String
>005A62B8    jne         005A62CB
 005A62BA    mov         eax,dword ptr [ebp-4]
 005A62BD    add         eax,58;TMenuItem.Hint:String
 005A62C0    mov         edx,dword ptr [ebp-8]
 005A62C3    mov         edx,dword ptr [edx+7C]
 005A62C6    call        @LStrAsg
 005A62CB    mov         eax,dword ptr [ebp-4]
 005A62CE    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>005A62D2    je          005A62F1
 005A62D4    cmp         byte ptr [ebp-9],0
>005A62D8    je          005A62E3
 005A62DA    mov         eax,dword ptr [ebp-4]
 005A62DD    cmp         byte ptr [eax+3F],0;TMenuItem.GroupIndex:byte
>005A62E1    jne         005A62F1
 005A62E3    mov         eax,dword ptr [ebp-8]
 005A62E6    mov         dl,byte ptr [eax+6C]
 005A62E9    mov         eax,dword ptr [ebp-4]
 005A62EC    call        TMenuItem.SetGroupIndex
 005A62F1    cmp         byte ptr [ebp-9],0
>005A62F5    je          005A6300
 005A62F7    mov         eax,dword ptr [ebp-4]
 005A62FA    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>005A62FE    jne         005A6311
 005A6300    mov         eax,dword ptr [ebp-8]
 005A6303    mov         edx,dword ptr [eax+80]
 005A6309    mov         eax,dword ptr [ebp-4]
 005A630C    call        TMenuItem.SetImageIndex
 005A6311    cmp         byte ptr [ebp-9],0
>005A6315    je          005A6321
 005A6317    mov         eax,dword ptr [ebp-4]
 005A631A    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>005A631F    jne         005A6333
 005A6321    mov         eax,dword ptr [ebp-8]
 005A6324    mov         dx,word ptr [eax+84]
 005A632B    mov         eax,dword ptr [ebp-4]
 005A632E    call        TMenuItem.SetShortCut
 005A6333    cmp         byte ptr [ebp-9],0
>005A6337    je          005A6342
 005A6339    mov         eax,dword ptr [ebp-4]
 005A633C    cmp         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
>005A6340    jne         005A6353
 005A6342    mov         eax,dword ptr [ebp-8]
 005A6345    mov         dl,byte ptr [eax+86]
 005A634B    mov         eax,dword ptr [ebp-4]
 005A634E    call        TMenuItem.SetVisible
 005A6353    cmp         byte ptr [ebp-9],0
>005A6357    je          005A6366
 005A6359    mov         eax,dword ptr [ebp-4]
 005A635C    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>005A6364    jne         005A637E
 005A6366    mov         eax,dword ptr [ebp-8]
 005A6369    mov         edx,dword ptr [ebp-4]
 005A636C    mov         ecx,dword ptr [eax+40]
 005A636F    mov         dword ptr [edx+88],ecx;TMenuItem.OnClick:TNotifyEvent
 005A6375    mov         ecx,dword ptr [eax+44]
 005A6378    mov         dword ptr [edx+8C],ecx;TMenuItem.?f8C:TFMain_11011981
 005A637E    mov         esp,ebp
 005A6380    pop         ebp
 005A6381    ret
end;*}

//005A63B4
function TMenuItem.IsStoredCaption(Value:String):Boolean;
begin
{*
 005A63B4    push        ebp
 005A63B5    mov         ebp,esp
 005A63B7    add         esp,0FFFFFFF8
 005A63BA    mov         dword ptr [ebp-4],eax
 005A63BD    mov         eax,dword ptr [ebp-4]
 005A63C0    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A63C4    je          005A63D9
 005A63C6    mov         eax,dword ptr [ebp-4]
 005A63C9    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A63CC    mov         edx,dword ptr [eax]
 005A63CE    call        dword ptr [edx+20];TMenuActionLink.sub_005A3160
 005A63D1    test        al,al
>005A63D3    je          005A63D9
 005A63D5    xor         eax,eax
>005A63D7    jmp         005A63DB
 005A63D9    mov         al,1
 005A63DB    mov         byte ptr [ebp-5],al
 005A63DE    mov         al,byte ptr [ebp-5]
 005A63E1    pop         ecx
 005A63E2    pop         ecx
 005A63E3    pop         ebp
 005A63E4    ret
*}
end;

//005A63E8
function TMenuItem.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 005A63E8    push        ebp
 005A63E9    mov         ebp,esp
 005A63EB    add         esp,0FFFFFFF8
 005A63EE    mov         dword ptr [ebp-4],eax
 005A63F1    mov         eax,dword ptr [ebp-4]
 005A63F4    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A63F8    je          005A640D
 005A63FA    mov         eax,dword ptr [ebp-4]
 005A63FD    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6400    mov         edx,dword ptr [eax]
 005A6402    call        dword ptr [edx+24];TMenuActionLink.sub_005A31AC
 005A6405    test        al,al
>005A6407    je          005A640D
 005A6409    xor         eax,eax
>005A640B    jmp         005A640F
 005A640D    mov         al,1
 005A640F    mov         byte ptr [ebp-5],al
 005A6412    mov         al,byte ptr [ebp-5]
 005A6415    pop         ecx
 005A6416    pop         ecx
 005A6417    pop         ebp
 005A6418    ret
*}
end;

//005A641C
function TMenuItem.IsStoredEnabled(Value:Boolean):Boolean;
begin
{*
 005A641C    push        ebp
 005A641D    mov         ebp,esp
 005A641F    add         esp,0FFFFFFF8
 005A6422    mov         dword ptr [ebp-4],eax
 005A6425    mov         eax,dword ptr [ebp-4]
 005A6428    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A642C    je          005A6441
 005A642E    mov         eax,dword ptr [ebp-4]
 005A6431    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6434    mov         edx,dword ptr [eax]
 005A6436    call        dword ptr [edx+28];TMenuActionLink.sub_005A31F0
 005A6439    test        al,al
>005A643B    je          005A6441
 005A643D    xor         eax,eax
>005A643F    jmp         005A6443
 005A6441    mov         al,1
 005A6443    mov         byte ptr [ebp-5],al
 005A6446    mov         al,byte ptr [ebp-5]
 005A6449    pop         ecx
 005A644A    pop         ecx
 005A644B    pop         ebp
 005A644C    ret
*}
end;

//005A6450
function TMenuItem.IsStoredHint(Value:String):Boolean;
begin
{*
 005A6450    push        ebp
 005A6451    mov         ebp,esp
 005A6453    add         esp,0FFFFFFF8
 005A6456    mov         dword ptr [ebp-4],eax
 005A6459    mov         eax,dword ptr [ebp-4]
 005A645C    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A6460    je          005A6475
 005A6462    mov         eax,dword ptr [ebp-4]
 005A6465    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6468    mov         edx,dword ptr [eax]
 005A646A    call        dword ptr [edx+38];TMenuActionLink.sub_005A3278
 005A646D    test        al,al
>005A646F    je          005A6475
 005A6471    xor         eax,eax
>005A6473    jmp         005A6477
 005A6475    mov         al,1
 005A6477    mov         byte ptr [ebp-5],al
 005A647A    mov         al,byte ptr [ebp-5]
 005A647D    pop         ecx
 005A647E    pop         ecx
 005A647F    pop         ebp
 005A6480    ret
*}
end;

//005A6484
function TMenuItem.IsStoredHelpContext(Value:THelpContext):Boolean;
begin
{*
 005A6484    push        ebp
 005A6485    mov         ebp,esp
 005A6487    add         esp,0FFFFFFF8
 005A648A    mov         dword ptr [ebp-4],eax
 005A648D    mov         eax,dword ptr [ebp-4]
 005A6490    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A6494    je          005A64A9
 005A6496    mov         eax,dword ptr [ebp-4]
 005A6499    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A649C    mov         edx,dword ptr [eax]
 005A649E    call        dword ptr [edx+30];TMenuActionLink.sub_005A3234
 005A64A1    test        al,al
>005A64A3    je          005A64A9
 005A64A5    xor         eax,eax
>005A64A7    jmp         005A64AB
 005A64A9    mov         al,1
 005A64AB    mov         byte ptr [ebp-5],al
 005A64AE    mov         al,byte ptr [ebp-5]
 005A64B1    pop         ecx
 005A64B2    pop         ecx
 005A64B3    pop         ebp
 005A64B4    ret
*}
end;

//005A64B8
function TMenuItem.IsStoredImageIndex(Value:TImageIndex):Boolean;
begin
{*
 005A64B8    push        ebp
 005A64B9    mov         ebp,esp
 005A64BB    add         esp,0FFFFFFF8
 005A64BE    mov         dword ptr [ebp-4],eax
 005A64C1    mov         eax,dword ptr [ebp-4]
 005A64C4    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A64C8    je          005A64DD
 005A64CA    mov         eax,dword ptr [ebp-4]
 005A64CD    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A64D0    mov         edx,dword ptr [eax]
 005A64D2    call        dword ptr [edx+3C];TMenuActionLink.sub_005A3318
 005A64D5    test        al,al
>005A64D7    je          005A64DD
 005A64D9    xor         eax,eax
>005A64DB    jmp         005A64DF
 005A64DD    mov         al,1
 005A64DF    mov         byte ptr [ebp-5],al
 005A64E2    mov         al,byte ptr [ebp-5]
 005A64E5    pop         ecx
 005A64E6    pop         ecx
 005A64E7    pop         ebp
 005A64E8    ret
*}
end;

//005A64EC
function TMenuItem.IsStoredShortCut(Value:TShortCut):Boolean;
begin
{*
 005A64EC    push        ebp
 005A64ED    mov         ebp,esp
 005A64EF    add         esp,0FFFFFFF8
 005A64F2    mov         dword ptr [ebp-4],eax
 005A64F5    mov         eax,dword ptr [ebp-4]
 005A64F8    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A64FC    je          005A6511
 005A64FE    mov         eax,dword ptr [ebp-4]
 005A6501    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6504    mov         edx,dword ptr [eax]
 005A6506    call        dword ptr [edx+40];TMenuActionLink.sub_005A3360
 005A6509    test        al,al
>005A650B    je          005A6511
 005A650D    xor         eax,eax
>005A650F    jmp         005A6513
 005A6511    mov         al,1
 005A6513    mov         byte ptr [ebp-5],al
 005A6516    mov         al,byte ptr [ebp-5]
 005A6519    pop         ecx
 005A651A    pop         ecx
 005A651B    pop         ebp
 005A651C    ret
*}
end;

//005A6520
function TMenuItem.IsStoredVisible(Value:Boolean):Boolean;
begin
{*
 005A6520    push        ebp
 005A6521    mov         ebp,esp
 005A6523    add         esp,0FFFFFFF8
 005A6526    mov         dword ptr [ebp-4],eax
 005A6529    mov         eax,dword ptr [ebp-4]
 005A652C    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A6530    je          005A6545
 005A6532    mov         eax,dword ptr [ebp-4]
 005A6535    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A6538    mov         edx,dword ptr [eax]
 005A653A    call        dword ptr [edx+44];TMenuActionLink.sub_005A33AC
 005A653D    test        al,al
>005A653F    je          005A6545
 005A6541    xor         eax,eax
>005A6543    jmp         005A6547
 005A6545    mov         al,1
 005A6547    mov         byte ptr [ebp-5],al
 005A654A    mov         al,byte ptr [ebp-5]
 005A654D    pop         ecx
 005A654E    pop         ecx
 005A654F    pop         ebp
 005A6550    ret
*}
end;

//005A6554
function TMenuItem.IsStoredOnClick(Value:TNotifyEvent):Boolean;
begin
{*
 005A6554    push        ebp
 005A6555    mov         ebp,esp
 005A6557    add         esp,0FFFFFFF8
 005A655A    mov         dword ptr [ebp-4],eax
 005A655D    mov         eax,dword ptr [ebp-4]
 005A6560    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>005A6564    je          005A6579
 005A6566    mov         eax,dword ptr [ebp-4]
 005A6569    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 005A656C    mov         edx,dword ptr [eax]
 005A656E    call        dword ptr [edx+8];TMenuActionLink.sub_005A33F4
 005A6571    test        al,al
>005A6573    je          005A6579
 005A6575    xor         eax,eax
>005A6577    jmp         005A657B
 005A6579    mov         al,1
 005A657B    mov         byte ptr [ebp-5],al
 005A657E    mov         al,byte ptr [ebp-5]
 005A6581    pop         ecx
 005A6582    pop         ecx
 005A6583    pop         ebp
 005A6584    ret
*}
end;

//005A6588
procedure TMenuItem.AssignTo(Dest:TPersistent);
begin
{*
 005A6588    push        ebp
 005A6589    mov         ebp,esp
 005A658B    add         esp,0FFFFFFF8
 005A658E    mov         dword ptr [ebp-8],edx
 005A6591    mov         dword ptr [ebp-4],eax
 005A6594    mov         eax,dword ptr [ebp-8]
 005A6597    mov         edx,dword ptr ds:[58D604];TCustomAction
 005A659D    call        @IsClass
 005A65A2    test        al,al
>005A65A4    je          005A6613
 005A65A6    mov         eax,dword ptr [ebp-4]
 005A65A9    mov         dl,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 005A65AC    mov         eax,dword ptr [ebp-8]
 005A65AF    call        TOpenPicture.SetEnabled
 005A65B4    mov         eax,dword ptr [ebp-4]
 005A65B7    mov         edx,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 005A65BA    mov         eax,dword ptr [ebp-8]
 005A65BD    mov         ecx,dword ptr [eax]
 005A65BF    call        dword ptr [ecx+48]
 005A65C2    mov         eax,dword ptr [ebp-4]
 005A65C5    mov         edx,dword ptr [eax+58];TMenuItem.Hint:String
 005A65C8    mov         eax,dword ptr [ebp-8]
 005A65CB    call        TOpenPicture.SetHint
 005A65D0    mov         eax,dword ptr [ebp-4]
 005A65D3    mov         edx,dword ptr [eax+40];TMenuItem.ImageIndex:TImageIndex
 005A65D6    mov         eax,dword ptr [ebp-8]
 005A65D9    call        TOpenPicture.SetImageIndex
 005A65DE    mov         eax,dword ptr [ebp-4]
 005A65E1    mov         edx,dword ptr [eax+30];TMenuItem.Caption:String
 005A65E4    mov         eax,dword ptr [ebp-8]
 005A65E7    call        TOpenPicture.SetCaption
 005A65EC    mov         eax,dword ptr [ebp-4]
 005A65EF    mov         dl,byte ptr [eax+3E];TMenuItem.Visible:Boolean
 005A65F2    mov         eax,dword ptr [ebp-8]
 005A65F5    call        TOpenPicture.SetVisible
 005A65FA    mov         eax,dword ptr [ebp-4]
 005A65FD    push        dword ptr [eax+8C];TMenuItem.?f8C:TFMain_11011981
 005A6603    push        dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 005A6609    mov         eax,dword ptr [ebp-8]
 005A660C    mov         edx,dword ptr [eax]
 005A660E    call        dword ptr [edx+34]
>005A6611    jmp         005A661E
 005A6613    mov         edx,dword ptr [ebp-8]
 005A6616    mov         eax,dword ptr [ebp-4]
 005A6619    call        TPersistent.AssignTo
 005A661E    pop         ecx
 005A661F    pop         ecx
 005A6620    pop         ebp
 005A6621    ret
*}
end;

//005A6624
procedure TMenuItem.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005A6624    push        ebp
 005A6625    mov         ebp,esp
 005A6627    add         esp,0FFFFFFF4
 005A662A    mov         byte ptr [ebp-9],cl
 005A662D    mov         dword ptr [ebp-8],edx
 005A6630    mov         dword ptr [ebp-4],eax
 005A6633    mov         cl,byte ptr [ebp-9]
 005A6636    mov         edx,dword ptr [ebp-8]
 005A6639    mov         eax,dword ptr [ebp-4]
 005A663C    call        TComponent.Notification
 005A6641    cmp         byte ptr [ebp-9],1
>005A6645    jne         005A668C
 005A6647    mov         eax,dword ptr [ebp-4]
 005A664A    call        TMenuItem.GetAction
 005A664F    cmp         eax,dword ptr [ebp-8]
>005A6652    jne         005A6660
 005A6654    xor         edx,edx
 005A6656    mov         eax,dword ptr [ebp-4]
 005A6659    call        TMenuItem.SetAction
>005A665E    jmp         005A668C
 005A6660    mov         eax,dword ptr [ebp-8]
 005A6663    mov         edx,dword ptr [ebp-4]
 005A6666    cmp         eax,dword ptr [edx+7C];TMenuItem.SubMenuImages:TCustomImageList
>005A6669    jne         005A6677
 005A666B    xor         edx,edx
 005A666D    mov         eax,dword ptr [ebp-4]
 005A6670    call        TMenuItem.SetSubMenuImages
>005A6675    jmp         005A668C
 005A6677    mov         eax,dword ptr [ebp-8]
 005A667A    mov         edx,dword ptr [ebp-4]
 005A667D    cmp         eax,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
>005A6680    jne         005A668C
 005A6682    xor         edx,edx
 005A6684    mov         eax,dword ptr [ebp-4]
 005A6687    call        005A3B58
 005A668C    mov         esp,ebp
 005A668E    pop         ebp
 005A668F    ret
*}
end;

//005A6690
procedure TMenuItem.SetSubMenuImages(Value:TCustomImageList);
begin
{*
 005A6690    push        ebp
 005A6691    mov         ebp,esp
 005A6693    add         esp,0FFFFFFF8
 005A6696    mov         dword ptr [ebp-8],edx
 005A6699    mov         dword ptr [ebp-4],eax
 005A669C    mov         eax,dword ptr [ebp-4]
 005A669F    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>005A66A3    je          005A66B6
 005A66A5    mov         eax,dword ptr [ebp-4]
 005A66A8    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 005A66AB    mov         eax,dword ptr [ebp-4]
 005A66AE    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 005A66B1    call        0058C770
 005A66B6    mov         eax,dword ptr [ebp-8]
 005A66B9    mov         edx,dword ptr [ebp-4]
 005A66BC    mov         dword ptr [edx+7C],eax;TMenuItem.SubMenuImages:TCustomImageList
 005A66BF    mov         eax,dword ptr [ebp-4]
 005A66C2    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>005A66C6    je          005A66E7
 005A66C8    mov         eax,dword ptr [ebp-4]
 005A66CB    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 005A66CE    mov         eax,dword ptr [ebp-4]
 005A66D1    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 005A66D4    call        0058C7D8
 005A66D9    mov         edx,dword ptr [ebp-4]
 005A66DC    mov         eax,dword ptr [ebp-4]
 005A66DF    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 005A66E2    call        TComponent.FreeNotification
 005A66E7    mov         eax,dword ptr [ebp-4]
 005A66EA    call        005A6750
 005A66EF    pop         ecx
 005A66F0    pop         ecx
 005A66F1    pop         ebp
 005A66F2    ret
*}
end;

//005A6750
procedure sub_005A6750(?:TMenuItem);
begin
{*
 005A6750    push        ebp
 005A6751    mov         ebp,esp
 005A6753    push        ecx
 005A6754    mov         dword ptr [ebp-4],eax
 005A6757    mov         eax,5A6718
 005A675C    mov         ecx,dword ptr [ebp-4]
 005A675F    mov         edx,dword ptr [ebp-4]
 005A6762    mov         edx,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
 005A6765    call        005A2FE4
 005A676A    pop         ecx
 005A676B    pop         ebp
 005A676C    ret
*}
end;

//005A6770
procedure sub_005A6770(?:TMenuItem);
begin
{*
 005A6770    push        ebp
 005A6771    mov         ebp,esp
 005A6773    add         esp,0FFFFFFF8
 005A6776    mov         dword ptr [ebp-4],eax
 005A6779    mov         eax,dword ptr [ebp-4]
 005A677C    call        005A58D8
 005A6781    dec         eax
 005A6782    cmp         eax,0
>005A6785    jl          005A67A3
 005A6787    mov         dword ptr [ebp-8],eax
 005A678A    mov         edx,dword ptr [ebp-8]
 005A678D    mov         eax,dword ptr [ebp-4]
 005A6790    call        005A5904
 005A6795    call        TObject.Free
 005A679A    dec         dword ptr [ebp-8]
 005A679D    cmp         dword ptr [ebp-8],0FFFFFFFF
>005A67A1    jne         005A678A
 005A67A3    pop         ecx
 005A67A4    pop         ecx
 005A67A5    pop         ebp
 005A67A6    ret
*}
end;

//005A67A8
{*function sub_005A67A8(?:?; ?:?):?;
begin
 005A67A8    push        ebp
 005A67A9    mov         ebp,esp
 005A67AB    add         esp,0FFFFFFF4
 005A67AE    mov         dword ptr [ebp-4],eax
 005A67B1    mov         eax,dword ptr [ebp+8]
 005A67B4    mov         edx,dword ptr [eax-4]
 005A67B7    mov         eax,dword ptr [ebp-4]
 005A67BA    call        AnsiPos
 005A67BF    mov         dword ptr [ebp-0C],eax
 005A67C2    cmp         dword ptr [ebp-0C],0
 005A67C6    setne       byte ptr [ebp-5]
 005A67CA    cmp         byte ptr [ebp-5],0
>005A67CE    je          005A67E3
 005A67D0    mov         eax,dword ptr [ebp+8]
 005A67D3    add         eax,0FFFFFFFC
 005A67D6    mov         ecx,1
 005A67DB    mov         edx,dword ptr [ebp-0C]
 005A67DE    call        @LStrDelete
 005A67E3    mov         al,byte ptr [ebp-5]
 005A67E6    mov         esp,ebp
 005A67E8    pop         ebp
 005A67E9    ret
end;*}

//005A67EC
{*procedure sub_005A67EC(?:?);
begin
 005A67EC    push        ebp
 005A67ED    mov         ebp,esp
 005A67EF    add         esp,0FFFFFFF8
 005A67F2    push        ebx
 005A67F3    mov         eax,dword ptr [ebp+8]
 005A67F6    mov         edx,dword ptr [eax-0C]
 005A67F9    mov         eax,dword ptr [ebp+8]
 005A67FC    mov         eax,dword ptr [eax-8]
 005A67FF    mov         ecx,dword ptr [eax]
 005A6801    call        dword ptr [ecx+8]
 005A6804    mov         eax,dword ptr [ebp+8]
 005A6807    mov         eax,dword ptr [eax-0C]
 005A680A    mov         edx,dword ptr [eax]
 005A680C    call        dword ptr [edx+14]
 005A680F    mov         edx,dword ptr [ebp+8]
 005A6812    mov         dword ptr [edx-10],eax
 005A6815    mov         eax,dword ptr [ebp+8]
 005A6818    mov         eax,dword ptr [eax-14]
 005A681B    mov         edx,dword ptr [eax]
 005A681D    call        dword ptr [edx+14]
 005A6820    dec         eax
 005A6821    test        eax,eax
>005A6823    jl          005A6864
 005A6825    inc         eax
 005A6826    mov         dword ptr [ebp-8],eax
 005A6829    mov         dword ptr [ebp-4],0
 005A6830    mov         eax,dword ptr [ebp+8]
 005A6833    mov         eax,dword ptr [eax-14]
 005A6836    mov         edx,dword ptr [ebp-4]
 005A6839    mov         ecx,dword ptr [eax]
 005A683B    call        dword ptr [ecx+18]
 005A683E    push        eax
 005A683F    mov         eax,dword ptr [ebp+8]
 005A6842    mov         eax,dword ptr [eax-14]
 005A6845    mov         edx,dword ptr [ebp-4]
 005A6848    mov         ecx,dword ptr [eax]
 005A684A    call        dword ptr [ecx+18]
 005A684D    mov         edx,dword ptr [eax+30]
 005A6850    mov         eax,dword ptr [ebp+8]
 005A6853    mov         eax,dword ptr [eax-8]
 005A6856    pop         ecx
 005A6857    mov         ebx,dword ptr [eax]
 005A6859    call        dword ptr [ebx+3C]
 005A685C    inc         dword ptr [ebp-4]
 005A685F    dec         dword ptr [ebp-8]
>005A6862    jne         005A6830
 005A6864    mov         eax,dword ptr [ebp+8]
 005A6867    add         eax,0FFFFFFE8
 005A686A    mov         edx,dword ptr [ebp+8]
 005A686D    mov         edx,dword ptr [edx-4]
 005A6870    call        @LStrLAsg
 005A6875    pop         ebx
 005A6876    pop         ecx
 005A6877    pop         ecx
 005A6878    pop         ebp
 005A6879    ret
end;*}

//005A687C
{*procedure sub_005A687C(?:AnsiString; ?:?; ?:?);
begin
 005A687C    push        ebp
 005A687D    mov         ebp,esp
 005A687F    add         esp,0FFFFFFE0
 005A6882    push        ebx
 005A6883    xor         ebx,ebx
 005A6885    mov         dword ptr [ebp-20],ebx
 005A6888    mov         dword ptr [ebp-1C],ebx
 005A688B    mov         dword ptr [ebp-0C],ecx
 005A688E    mov         dword ptr [ebp-8],edx
 005A6891    mov         dword ptr [ebp-4],eax
 005A6894    xor         eax,eax
 005A6896    push        ebp
 005A6897    push        5A69C6
 005A689C    push        dword ptr fs:[eax]
 005A689F    mov         dword ptr fs:[eax],esp
 005A68A2    mov         byte ptr [ebp-11],0
 005A68A6    mov         eax,dword ptr [ebp-4]
 005A68A9    mov         eax,dword ptr [eax]
 005A68AB    call        @LStrLen
 005A68B0    test        eax,eax
>005A68B2    jle         005A68E8
 005A68B4    mov         dword ptr [ebp-18],eax
 005A68B7    mov         dword ptr [ebp-10],1
 005A68BE    mov         eax,dword ptr [ebp-4]
 005A68C1    mov         eax,dword ptr [eax]
 005A68C3    mov         edx,dword ptr [ebp-10]
 005A68C6    mov         al,byte ptr [eax+edx-1]
 005A68CA    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005A68D0    and         eax,0FF
 005A68D5    bt          dword ptr [edx],eax
>005A68D8    jae         005A68E0
 005A68DA    mov         byte ptr [ebp-11],1
>005A68DE    jmp         005A68E8
 005A68E0    inc         dword ptr [ebp-10]
 005A68E3    dec         dword ptr [ebp-18]
>005A68E6    jne         005A68BE
 005A68E8    cmp         byte ptr [ebp-11],0
>005A68EC    je          005A6995
 005A68F2    lea         eax,[ebp-1C]
 005A68F5    push        eax
 005A68F6    mov         eax,dword ptr [ebp-4]
 005A68F9    mov         eax,dword ptr [eax]
 005A68FB    call        @LStrLen
 005A6900    mov         edx,eax
 005A6902    sub         edx,3
 005A6905    inc         edx
 005A6906    mov         eax,dword ptr [ebp-4]
 005A6909    mov         eax,dword ptr [eax]
 005A690B    mov         ecx,3
 005A6910    call        @LStrCopy
 005A6915    mov         eax,dword ptr [ebp-1C]
 005A6918    mov         edx,5A69DC;'...'
 005A691D    call        @LStrCmp
>005A6922    jne         005A696F
 005A6924    lea         eax,[ebp-20]
 005A6927    push        eax
 005A6928    mov         eax,dword ptr [ebp-4]
 005A692B    mov         eax,dword ptr [eax]
 005A692D    call        @LStrLen
 005A6932    mov         ecx,eax
 005A6934    sub         ecx,3
 005A6937    mov         eax,dword ptr [ebp-4]
 005A693A    mov         eax,dword ptr [eax]
 005A693C    mov         edx,1
 005A6941    call        @LStrCopy
 005A6946    push        dword ptr [ebp-20]
 005A6949    push        5A69E8;'('
 005A694E    push        5A69F4;'&'
 005A6953    push        dword ptr [ebp-8]
 005A6956    push        5A6A00;')'
 005A695B    push        5A69DC;'...'
 005A6960    mov         eax,dword ptr [ebp-4]
 005A6963    mov         edx,6
 005A6968    call        @LStrCatN
>005A696D    jmp         005A69AB
 005A696F    mov         eax,dword ptr [ebp-4]
 005A6972    push        dword ptr [eax]
 005A6974    push        5A69E8;'('
 005A6979    push        5A69F4;'&'
 005A697E    push        dword ptr [ebp-8]
 005A6981    push        5A6A00;')'
 005A6986    mov         eax,dword ptr [ebp-4]
 005A6989    mov         edx,5
 005A698E    call        @LStrCatN
>005A6993    jmp         005A69AB
 005A6995    cmp         dword ptr [ebp-0C],0
>005A6999    je          005A69AB
 005A699B    mov         edx,dword ptr [ebp-4]
 005A699E    mov         ecx,dword ptr [ebp-0C]
 005A69A1    mov         eax,5A69F4;'&'
 005A69A6    call        @LStrInsert
 005A69AB    xor         eax,eax
 005A69AD    pop         edx
 005A69AE    pop         ecx
 005A69AF    pop         ecx
 005A69B0    mov         dword ptr fs:[eax],edx
 005A69B3    push        5A69CD
 005A69B8    lea         eax,[ebp-20]
 005A69BB    mov         edx,2
 005A69C0    call        @LStrArrayClr
 005A69C5    ret
>005A69C6    jmp         @HandleFinally
>005A69CB    jmp         005A69B8
 005A69CD    pop         ebx
 005A69CE    mov         esp,ebp
 005A69D0    pop         ebp
 005A69D1    ret
end;*}

//005A6A04
{*function sub_005A6A04(?:TMenuItem; ?:?):?;
begin
 005A6A04    push        ebp
 005A6A05    mov         ebp,esp
 005A6A07    add         esp,0FFFFFFA8
 005A6A0A    push        ebx
 005A6A0B    xor         ecx,ecx
 005A6A0D    mov         dword ptr [ebp-58],ecx
 005A6A10    mov         dword ptr [ebp-54],ecx
 005A6A13    mov         dword ptr [ebp-50],ecx
 005A6A16    mov         dword ptr [ebp-4C],ecx
 005A6A19    mov         dword ptr [ebp-38],ecx
 005A6A1C    mov         dword ptr [ebp-3C],ecx
 005A6A1F    mov         dword ptr [ebp-40],ecx
 005A6A22    mov         dword ptr [ebp-4],ecx
 005A6A25    mov         dword ptr [ebp-18],ecx
 005A6A28    mov         byte ptr [ebp-1D],dl
 005A6A2B    mov         dword ptr [ebp-1C],eax
 005A6A2E    xor         eax,eax
 005A6A30    push        ebp
 005A6A31    push        5A6EF8
 005A6A36    push        dword ptr fs:[eax]
 005A6A39    mov         dword ptr fs:[eax],esp
 005A6A3C    mov         byte ptr [ebp-1E],0
 005A6A40    cmp         byte ptr [ebp-1D],0
>005A6A44    jne         005A6A63
 005A6A46    mov         eax,dword ptr [ebp-1C]
 005A6A49    test        byte ptr [eax+1C],10
>005A6A4D    jne         005A6EC0
 005A6A53    mov         eax,dword ptr [ebp-1C]
 005A6A56    call        005A7148
 005A6A5B    test        al,al
>005A6A5D    je          005A6EC0
 005A6A63    lea         eax,[ebp-4]
 005A6A66    mov         edx,dword ptr ds:[6E3BC8];^gvar_005A2A4C
 005A6A6C    call        @LStrLAsg
 005A6A71    xor         eax,eax
 005A6A73    mov         dword ptr [ebp-0C],eax
 005A6A76    xor         eax,eax
 005A6A78    mov         dword ptr [ebp-14],eax
 005A6A7B    xor         eax,eax
 005A6A7D    mov         dword ptr [ebp-24],eax
 005A6A80    xor         eax,eax
 005A6A82    mov         dword ptr [ebp-8],eax
 005A6A85    xor         eax,eax
 005A6A87    mov         dword ptr [ebp-10],eax
 005A6A8A    xor         eax,eax
 005A6A8C    push        ebp
 005A6A8D    push        5A6EB9
 005A6A92    push        dword ptr fs:[eax]
 005A6A95    mov         dword ptr fs:[eax],esp
 005A6A98    mov         dl,1
 005A6A9A    mov         eax,[006428B0];TStringList
 005A6A9F    call        TObject.Create;TStringList.Create
 005A6AA4    mov         dword ptr [ebp-0C],eax
 005A6AA7    mov         dl,1
 005A6AA9    mov         eax,[006428B0];TStringList
 005A6AAE    call        TObject.Create;TStringList.Create
 005A6AB3    mov         dword ptr [ebp-14],eax
 005A6AB6    mov         dl,1
 005A6AB8    mov         eax,[006428B0];TStringList
 005A6ABD    call        TObject.Create;TStringList.Create
 005A6AC2    mov         dword ptr [ebp-24],eax
 005A6AC5    mov         dl,1
 005A6AC7    mov         eax,[006428B0];TStringList
 005A6ACC    call        TObject.Create;TStringList.Create
 005A6AD1    mov         dword ptr [ebp-8],eax
 005A6AD4    mov         eax,dword ptr [ebp-1C]
 005A6AD7    call        005A58D8
 005A6ADC    dec         eax
 005A6ADD    test        eax,eax
>005A6ADF    jl          005A6C03
 005A6AE5    inc         eax
 005A6AE6    mov         dword ptr [ebp-44],eax
 005A6AE9    mov         dword ptr [ebp-28],0
 005A6AF0    mov         edx,dword ptr [ebp-28]
 005A6AF3    mov         eax,dword ptr [ebp-1C]
 005A6AF6    call        005A5904
 005A6AFB    cmp         byte ptr [eax+3E],0
>005A6AFF    je          005A6BF7
 005A6B05    mov         edx,dword ptr [ebp-28]
 005A6B08    mov         eax,dword ptr [ebp-1C]
 005A6B0B    call        005A5904
 005A6B10    mov         eax,dword ptr [eax+30]
 005A6B13    mov         edx,5A6F10;'-'
 005A6B18    call        @LStrCmp
>005A6B1D    je          005A6BF7
 005A6B23    mov         edx,dword ptr [ebp-28]
 005A6B26    mov         eax,dword ptr [ebp-1C]
 005A6B29    call        005A5904
 005A6B2E    cmp         dword ptr [eax+30],0
>005A6B32    je          005A6BF7
 005A6B38    mov         edx,dword ptr [ebp-28]
 005A6B3B    mov         eax,dword ptr [ebp-1C]
 005A6B3E    call        005A5904
 005A6B43    mov         eax,dword ptr [eax+30]
 005A6B46    lea         edx,[ebp-4C]
 005A6B49    call        005A91B4
 005A6B4E    mov         eax,dword ptr [ebp-4C]
 005A6B51    lea         edx,[ebp-38]
 005A6B54    call        00657508
 005A6B59    cmp         dword ptr [ebp-38],0
>005A6B5D    jne         005A6B85
 005A6B5F    mov         edx,dword ptr [ebp-28]
 005A6B62    mov         eax,dword ptr [ebp-1C]
 005A6B65    call        005A5904
 005A6B6A    push        eax
 005A6B6B    mov         edx,dword ptr [ebp-28]
 005A6B6E    mov         eax,dword ptr [ebp-1C]
 005A6B71    call        005A5904
 005A6B76    mov         ecx,dword ptr [eax+30]
 005A6B79    xor         edx,edx
 005A6B7B    mov         eax,dword ptr [ebp-24]
 005A6B7E    mov         ebx,dword ptr [eax]
 005A6B80    call        dword ptr [ebx+64];TStringList.sub_006482C8
>005A6B83    jmp         005A6BF7
 005A6B85    mov         edx,dword ptr ds:[6E3BC8];^gvar_005A2A4C
 005A6B8B    mov         eax,dword ptr [ebp-38]
 005A6B8E    call        AnsiPos
 005A6B93    test        eax,eax
>005A6B95    je          005A6BF7
 005A6B97    push        ebp
 005A6B98    mov         eax,dword ptr [ebp-38]
 005A6B9B    call        005A67A8
 005A6BA0    pop         ecx
 005A6BA1    test        al,al
>005A6BA3    jne         005A6BF7
 005A6BA5    mov         edx,dword ptr [ebp-28]
 005A6BA8    mov         eax,dword ptr [ebp-1C]
 005A6BAB    call        005A5904
 005A6BB0    add         eax,30
 005A6BB3    push        eax
 005A6BB4    mov         edx,dword ptr [ebp-28]
 005A6BB7    mov         eax,dword ptr [ebp-1C]
 005A6BBA    call        005A5904
 005A6BBF    mov         eax,dword ptr [eax+30]
 005A6BC2    lea         edx,[ebp-50]
 005A6BC5    call        005A90E0
 005A6BCA    mov         edx,dword ptr [ebp-50]
 005A6BCD    pop         eax
 005A6BCE    call        @LStrAsg
 005A6BD3    mov         edx,dword ptr [ebp-28]
 005A6BD6    mov         eax,dword ptr [ebp-1C]
 005A6BD9    call        005A5904
 005A6BDE    push        eax
 005A6BDF    mov         edx,dword ptr [ebp-28]
 005A6BE2    mov         eax,dword ptr [ebp-1C]
 005A6BE5    call        005A5904
 005A6BEA    mov         ecx,dword ptr [eax+30]
 005A6BED    xor         edx,edx
 005A6BEF    mov         eax,dword ptr [ebp-24]
 005A6BF2    mov         ebx,dword ptr [eax]
 005A6BF4    call        dword ptr [ebx+64];TStringList.sub_006482C8
 005A6BF7    inc         dword ptr [ebp-28]
 005A6BFA    dec         dword ptr [ebp-44]
>005A6BFD    jne         005A6AF0
 005A6C03    lea         eax,[ebp-40]
 005A6C06    mov         edx,dword ptr [ebp-4]
 005A6C09    call        @LStrLAsg
 005A6C0E    mov         eax,dword ptr [ebp-24]
 005A6C11    mov         edx,dword ptr [eax]
 005A6C13    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6C16    dec         eax
 005A6C17    test        eax,eax
>005A6C19    jl          005A6DB0
 005A6C1F    inc         eax
 005A6C20    mov         dword ptr [ebp-44],eax
 005A6C23    mov         dword ptr [ebp-2C],0
 005A6C2A    lea         eax,[ebp-4]
 005A6C2D    mov         edx,dword ptr [ebp-40]
 005A6C30    call        @LStrLAsg
 005A6C35    mov         edx,dword ptr [ebp-24]
 005A6C38    mov         eax,dword ptr [ebp-14]
 005A6C3B    mov         ecx,dword ptr [eax]
 005A6C3D    call        dword ptr [ecx+8];TStrings.Assign
 005A6C40    mov         eax,dword ptr [ebp-0C]
 005A6C43    mov         edx,dword ptr [eax]
 005A6C45    call        dword ptr [edx+44];TStringList.Clear
 005A6C48    mov         eax,dword ptr [ebp-14]
 005A6C4B    mov         edx,dword ptr [eax]
 005A6C4D    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6C50    dec         eax
 005A6C51    cmp         eax,0
>005A6C54    jl          005A6D36
 005A6C5A    mov         dword ptr [ebp-28],eax
 005A6C5D    lea         ecx,[ebp-3C]
 005A6C60    mov         edx,dword ptr [ebp-28]
 005A6C63    mov         eax,dword ptr [ebp-14]
 005A6C66    mov         ebx,dword ptr [eax]
 005A6C68    call        dword ptr [ebx+0C];TStringList.sub_00648130
 005A6C6B    mov         dword ptr [ebp-30],1
>005A6C72    jmp         005A6D18
 005A6C77    mov         eax,dword ptr [ebp-3C]
 005A6C7A    mov         edx,dword ptr [ebp-30]
 005A6C7D    mov         al,byte ptr [eax+edx-1]
 005A6C81    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005A6C87    and         eax,0FF
 005A6C8C    bt          dword ptr [edx],eax
>005A6C8F    jae         005A6C96
 005A6C91    inc         dword ptr [ebp-30]
>005A6C94    jmp         005A6D15
 005A6C96    lea         eax,[ebp-54]
 005A6C99    push        eax
 005A6C9A    mov         ecx,1
 005A6C9F    mov         edx,dword ptr [ebp-30]
 005A6CA2    mov         eax,dword ptr [ebp-3C]
 005A6CA5    call        @LStrCopy
 005A6CAA    mov         eax,dword ptr [ebp-54]
 005A6CAD    lea         edx,[ebp-38]
 005A6CB0    call        00657508
 005A6CB5    push        ebp
 005A6CB6    mov         eax,dword ptr [ebp-38]
 005A6CB9    call        005A67A8
 005A6CBE    pop         ecx
 005A6CBF    test        al,al
>005A6CC1    je          005A6D15
 005A6CC3    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A6CC8    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005A6CCC    je          005A6CE0
 005A6CCE    push        ebp
 005A6CCF    lea         eax,[ebp-3C]
 005A6CD2    mov         ecx,dword ptr [ebp-30]
 005A6CD5    mov         edx,dword ptr [ebp-38]
 005A6CD8    call        005A687C
 005A6CDD    pop         ecx
>005A6CDE    jmp         005A6CF0
 005A6CE0    lea         edx,[ebp-3C]
 005A6CE3    mov         ecx,dword ptr [ebp-30]
 005A6CE6    mov         eax,5A6F1C;'&'
 005A6CEB    call        @LStrInsert
 005A6CF0    mov         edx,dword ptr [ebp-28]
 005A6CF3    mov         eax,dword ptr [ebp-14]
 005A6CF6    mov         ecx,dword ptr [eax]
 005A6CF8    call        dword ptr [ecx+18];TStringList.sub_006481B4
 005A6CFB    mov         ecx,eax
 005A6CFD    mov         edx,dword ptr [ebp-3C]
 005A6D00    mov         eax,dword ptr [ebp-0C]
 005A6D03    mov         ebx,dword ptr [eax]
 005A6D05    call        dword ptr [ebx+3C];TStringList.sub_00647DEC
 005A6D08    mov         edx,dword ptr [ebp-28]
 005A6D0B    mov         eax,dword ptr [ebp-14]
 005A6D0E    mov         ecx,dword ptr [eax]
 005A6D10    call        dword ptr [ecx+48];TStringList.sub_00647F10
>005A6D13    jmp         005A6D29
 005A6D15    inc         dword ptr [ebp-30]
 005A6D18    mov         eax,dword ptr [ebp-3C]
 005A6D1B    call        @LStrLen
 005A6D20    cmp         eax,dword ptr [ebp-30]
>005A6D23    jge         005A6C77
 005A6D29    dec         dword ptr [ebp-28]
 005A6D2C    cmp         dword ptr [ebp-28],0FFFFFFFF
>005A6D30    jne         005A6C5D
 005A6D36    mov         eax,dword ptr [ebp-0C]
 005A6D39    mov         edx,dword ptr [eax]
 005A6D3B    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6D3E    cmp         eax,dword ptr [ebp-10]
>005A6D41    jle         005A6D4A
 005A6D43    push        ebp
 005A6D44    call        005A67EC
 005A6D49    pop         ecx
 005A6D4A    mov         eax,dword ptr [ebp-14]
 005A6D4D    mov         edx,dword ptr [eax]
 005A6D4F    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6D52    test        eax,eax
>005A6D54    jle         005A6DB0
 005A6D56    mov         eax,dword ptr [ebp-14]
 005A6D59    mov         edx,dword ptr [eax]
 005A6D5B    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6D5E    dec         eax
 005A6D5F    test        eax,eax
>005A6D61    jl          005A6DA4
 005A6D63    inc         eax
 005A6D64    mov         dword ptr [ebp-48],eax
 005A6D67    mov         dword ptr [ebp-28],0
 005A6D6E    mov         edx,dword ptr [ebp-28]
 005A6D71    mov         eax,dword ptr [ebp-14]
 005A6D74    mov         ecx,dword ptr [eax]
 005A6D76    call        dword ptr [ecx+18];TStringList.sub_006481B4
 005A6D79    mov         edx,eax
 005A6D7B    mov         eax,dword ptr [ebp-24]
 005A6D7E    mov         ecx,dword ptr [eax]
 005A6D80    call        dword ptr [ecx+5C];TStringList.sub_00647630
 005A6D83    mov         dword ptr [ebp-34],eax
 005A6D86    mov         eax,dword ptr [ebp-24]
 005A6D89    mov         edx,dword ptr [eax]
 005A6D8B    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6D8E    mov         ecx,eax
 005A6D90    dec         ecx
 005A6D91    mov         edx,dword ptr [ebp-34]
 005A6D94    mov         eax,dword ptr [ebp-24]
 005A6D97    mov         ebx,dword ptr [eax]
 005A6D99    call        dword ptr [ebx+70];TStringList.sub_006477C0
 005A6D9C    inc         dword ptr [ebp-28]
 005A6D9F    dec         dword ptr [ebp-48]
>005A6DA2    jne         005A6D6E
 005A6DA4    inc         dword ptr [ebp-2C]
 005A6DA7    dec         dword ptr [ebp-44]
>005A6DAA    jne         005A6C2A
 005A6DB0    cmp         dword ptr [ebp-10],0
>005A6DB4    jne         005A6DBD
 005A6DB6    push        ebp
 005A6DB7    call        005A67EC
 005A6DBC    pop         ecx
 005A6DBD    mov         eax,dword ptr [ebp-8]
 005A6DC0    mov         edx,dword ptr [eax]
 005A6DC2    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6DC5    test        eax,eax
 005A6DC7    setg        byte ptr [ebp-1E]
 005A6DCB    mov         eax,dword ptr [ebp-8]
 005A6DCE    mov         edx,dword ptr [eax]
 005A6DD0    call        dword ptr [edx+14];TStringList.sub_00648198
 005A6DD3    dec         eax
 005A6DD4    test        eax,eax
>005A6DD6    jl          005A6E8B
 005A6DDC    inc         eax
 005A6DDD    mov         dword ptr [ebp-44],eax
 005A6DE0    mov         dword ptr [ebp-28],0
 005A6DE7    lea         ecx,[ebp-3C]
 005A6DEA    mov         edx,dword ptr [ebp-28]
 005A6DED    mov         eax,dword ptr [ebp-8]
 005A6DF0    mov         ebx,dword ptr [eax]
 005A6DF2    call        dword ptr [ebx+0C];TStringList.sub_00648130
 005A6DF5    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A6DFA    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005A6DFE    je          005A6E69
 005A6E00    mov         edx,dword ptr [ebp-3C]
 005A6E03    mov         eax,5A6F1C;'&'
 005A6E08    call        AnsiPos
 005A6E0D    test        eax,eax
>005A6E0F    jne         005A6E69
 005A6E11    cmp         dword ptr [ebp-18],0
>005A6E15    je          005A6E69
 005A6E17    mov         edx,dword ptr [ebp-3C]
 005A6E1A    mov         eax,5A6F1C;'&'
 005A6E1F    call        AnsiPos
 005A6E24    test        eax,eax
>005A6E26    jne         005A6E69
 005A6E28    push        ebp
 005A6E29    lea         eax,[ebp-58]
 005A6E2C    push        eax
 005A6E2D    mov         eax,dword ptr [ebp-18]
 005A6E30    call        @LStrLen
 005A6E35    mov         edx,eax
 005A6E37    mov         ecx,1
 005A6E3C    mov         eax,dword ptr [ebp-18]
 005A6E3F    call        @LStrCopy
 005A6E44    mov         edx,dword ptr [ebp-58]
 005A6E47    lea         eax,[ebp-3C]
 005A6E4A    xor         ecx,ecx
 005A6E4C    call        005A687C
 005A6E51    pop         ecx
 005A6E52    mov         eax,dword ptr [ebp-18]
 005A6E55    call        @LStrLen
 005A6E5A    mov         edx,eax
 005A6E5C    lea         eax,[ebp-18]
 005A6E5F    mov         ecx,1
 005A6E64    call        @LStrDelete
 005A6E69    mov         edx,dword ptr [ebp-28]
 005A6E6C    mov         eax,dword ptr [ebp-8]
 005A6E6F    mov         ecx,dword ptr [eax]
 005A6E71    call        dword ptr [ecx+18];TStringList.sub_006481B4
 005A6E74    add         eax,30
 005A6E77    mov         edx,dword ptr [ebp-3C]
 005A6E7A    call        @LStrAsg
 005A6E7F    inc         dword ptr [ebp-28]
 005A6E82    dec         dword ptr [ebp-44]
>005A6E85    jne         005A6DE7
 005A6E8B    xor         eax,eax
 005A6E8D    pop         edx
 005A6E8E    pop         ecx
 005A6E8F    pop         ecx
 005A6E90    mov         dword ptr fs:[eax],edx
 005A6E93    push        5A6EC0
 005A6E98    mov         eax,dword ptr [ebp-8]
 005A6E9B    call        TObject.Free
 005A6EA0    mov         eax,dword ptr [ebp-24]
 005A6EA3    call        TObject.Free
 005A6EA8    mov         eax,dword ptr [ebp-14]
 005A6EAB    call        TObject.Free
 005A6EB0    mov         eax,dword ptr [ebp-0C]
 005A6EB3    call        TObject.Free
 005A6EB8    ret
>005A6EB9    jmp         @HandleFinally
>005A6EBE    jmp         005A6E98
 005A6EC0    xor         eax,eax
 005A6EC2    pop         edx
 005A6EC3    pop         ecx
 005A6EC4    pop         ecx
 005A6EC5    mov         dword ptr fs:[eax],edx
 005A6EC8    push        5A6EFF
 005A6ECD    lea         eax,[ebp-58]
 005A6ED0    mov         edx,4
 005A6ED5    call        @LStrArrayClr
 005A6EDA    lea         eax,[ebp-40]
 005A6EDD    mov         edx,3
 005A6EE2    call        @LStrArrayClr
 005A6EE7    lea         eax,[ebp-18]
 005A6EEA    call        @LStrClr
 005A6EEF    lea         eax,[ebp-4]
 005A6EF2    call        @LStrClr
 005A6EF7    ret
>005A6EF8    jmp         @HandleFinally
>005A6EFD    jmp         005A6ECD
 005A6EFF    mov         al,byte ptr [ebp-1E]
 005A6F02    pop         ebx
 005A6F03    mov         esp,ebp
 005A6F05    pop         ebp
 005A6F06    ret
end;*}

//005A6F20
procedure TMenuItem.SetAutoHotkeys(Value:TMenuItemAutoFlag);
begin
{*
 005A6F20    push        ebp
 005A6F21    mov         ebp,esp
 005A6F23    add         esp,0FFFFFFF8
 005A6F26    mov         byte ptr [ebp-5],dl
 005A6F29    mov         dword ptr [ebp-4],eax
 005A6F2C    mov         al,byte ptr [ebp-5]
 005A6F2F    mov         edx,dword ptr [ebp-4]
 005A6F32    cmp         al,byte ptr [edx+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
>005A6F35    je          005A6F4A
 005A6F37    mov         al,byte ptr [ebp-5]
 005A6F3A    mov         edx,dword ptr [ebp-4]
 005A6F3D    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 005A6F40    mov         dl,1
 005A6F42    mov         eax,dword ptr [ebp-4]
 005A6F45    mov         ecx,dword ptr [eax]
 005A6F47    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A6F4A    pop         ecx
 005A6F4B    pop         ecx
 005A6F4C    pop         ebp
 005A6F4D    ret
*}
end;

//005A6F50
{*function sub_005A6F50(?:?):?;
begin
 005A6F50    push        ebp
 005A6F51    mov         ebp,esp
 005A6F53    add         esp,0FFFFFFF8
 005A6F56    mov         dword ptr [ebp-4],eax
 005A6F59    mov         eax,dword ptr [ebp-4]
 005A6F5C    mov         eax,dword ptr [eax+30]
 005A6F5F    mov         edx,5A6F7C;'-'
 005A6F64    call        @LStrCmp
 005A6F69    sete        byte ptr [ebp-5]
 005A6F6D    mov         al,byte ptr [ebp-5]
 005A6F70    pop         ecx
 005A6F71    pop         ecx
 005A6F72    pop         ebp
 005A6F73    ret
end;*}

//005A6F80
{*function sub_005A6F80(?:TMenuItem; ?:?):?;
begin
 005A6F80    push        ebp
 005A6F81    mov         ebp,esp
 005A6F83    add         esp,0FFFFFFE8
 005A6F86    mov         byte ptr [ebp-5],dl
 005A6F89    mov         dword ptr [ebp-4],eax
 005A6F8C    mov         byte ptr [ebp-6],0
 005A6F90    cmp         byte ptr [ebp-5],0
>005A6F94    jne         005A6FB3
 005A6F96    mov         eax,dword ptr [ebp-4]
 005A6F99    test        byte ptr [eax+1C],10
>005A6F9D    jne         005A7110
 005A6FA3    mov         eax,dword ptr [ebp-4]
 005A6FA6    call        005A7198
 005A6FAB    test        al,al
>005A6FAD    je          005A7110
 005A6FB3    xor         eax,eax
 005A6FB5    mov         dword ptr [ebp-10],eax
 005A6FB8    xor         eax,eax
 005A6FBA    mov         dword ptr [ebp-14],eax
 005A6FBD    mov         eax,dword ptr [ebp-10]
 005A6FC0    push        eax
 005A6FC1    mov         eax,dword ptr [ebp-4]
 005A6FC4    call        005A58D8
 005A6FC9    dec         eax
 005A6FCA    pop         edx
 005A6FCB    sub         eax,edx
>005A6FCD    jl          005A7020
 005A6FCF    inc         eax
 005A6FD0    mov         dword ptr [ebp-18],eax
 005A6FD3    mov         dword ptr [ebp-0C],edx
 005A6FD6    mov         edx,dword ptr [ebp-0C]
 005A6FD9    mov         eax,dword ptr [ebp-4]
 005A6FDC    call        005A5904
 005A6FE1    cmp         byte ptr [eax+3E],0
>005A6FE5    je          005A7018
 005A6FE7    mov         edx,dword ptr [ebp-0C]
 005A6FEA    mov         eax,dword ptr [ebp-4]
 005A6FED    call        005A5904
 005A6FF2    call        005A6F50
 005A6FF7    test        al,al
>005A6FF9    je          005A7010
 005A6FFB    mov         edx,dword ptr [ebp-0C]
 005A6FFE    mov         eax,dword ptr [ebp-4]
 005A7001    call        005A5904
 005A7006    mov         byte ptr [eax+3E],0
 005A700A    mov         byte ptr [ebp-6],1
>005A700E    jmp         005A7018
 005A7010    mov         eax,dword ptr [ebp-0C]
 005A7013    mov         dword ptr [ebp-10],eax
>005A7016    jmp         005A7020
 005A7018    inc         dword ptr [ebp-0C]
 005A701B    dec         dword ptr [ebp-18]
>005A701E    jne         005A6FD6
 005A7020    mov         eax,dword ptr [ebp-10]
 005A7023    push        eax
 005A7024    mov         eax,dword ptr [ebp-4]
 005A7027    call        005A58D8
 005A702C    dec         eax
 005A702D    pop         edx
 005A702E    sub         eax,edx
>005A7030    jl          005A70B9
 005A7036    inc         eax
 005A7037    mov         dword ptr [ebp-18],eax
 005A703A    mov         dword ptr [ebp-0C],edx
 005A703D    mov         edx,dword ptr [ebp-0C]
 005A7040    mov         eax,dword ptr [ebp-4]
 005A7043    call        005A5904
 005A7048    call        005A6F50
 005A704D    test        al,al
>005A704F    je          005A707B
 005A7051    cmp         dword ptr [ebp-14],0
>005A7055    je          005A706B
 005A7057    mov         eax,dword ptr [ebp-14]
 005A705A    cmp         byte ptr [eax+3E],0
>005A705E    je          005A706B
 005A7060    mov         eax,dword ptr [ebp-14]
 005A7063    mov         byte ptr [eax+3E],0
 005A7067    mov         byte ptr [ebp-6],1
 005A706B    mov         edx,dword ptr [ebp-0C]
 005A706E    mov         eax,dword ptr [ebp-4]
 005A7071    call        005A5904
 005A7076    mov         dword ptr [ebp-14],eax
>005A7079    jmp         005A70B1
 005A707B    mov         edx,dword ptr [ebp-0C]
 005A707E    mov         eax,dword ptr [ebp-4]
 005A7081    call        005A5904
 005A7086    cmp         byte ptr [eax+3E],0
>005A708A    je          005A70B1
 005A708C    cmp         dword ptr [ebp-14],0
>005A7090    je          005A70A6
 005A7092    mov         eax,dword ptr [ebp-14]
 005A7095    cmp         byte ptr [eax+3E],0
>005A7099    jne         005A70A6
 005A709B    mov         eax,dword ptr [ebp-14]
 005A709E    mov         byte ptr [eax+3E],1
 005A70A2    mov         byte ptr [ebp-6],1
 005A70A6    xor         eax,eax
 005A70A8    mov         dword ptr [ebp-14],eax
 005A70AB    mov         eax,dword ptr [ebp-0C]
 005A70AE    mov         dword ptr [ebp-10],eax
 005A70B1    inc         dword ptr [ebp-0C]
 005A70B4    dec         dword ptr [ebp-18]
>005A70B7    jne         005A703D
 005A70B9    mov         eax,dword ptr [ebp-4]
 005A70BC    call        005A58D8
 005A70C1    dec         eax
 005A70C2    mov         edx,dword ptr [ebp-10]
 005A70C5    sub         edx,eax
>005A70C7    jg          005A7110
 005A70C9    dec         edx
 005A70CA    mov         dword ptr [ebp-18],edx
 005A70CD    mov         dword ptr [ebp-0C],eax
 005A70D0    mov         edx,dword ptr [ebp-0C]
 005A70D3    mov         eax,dword ptr [ebp-4]
 005A70D6    call        005A5904
 005A70DB    cmp         byte ptr [eax+3E],0
>005A70DF    je          005A7108
 005A70E1    mov         edx,dword ptr [ebp-0C]
 005A70E4    mov         eax,dword ptr [ebp-4]
 005A70E7    call        005A5904
 005A70EC    call        005A6F50
 005A70F1    test        al,al
>005A70F3    je          005A7110
 005A70F5    mov         edx,dword ptr [ebp-0C]
 005A70F8    mov         eax,dword ptr [ebp-4]
 005A70FB    call        005A5904
 005A7100    mov         byte ptr [eax+3E],0
 005A7104    mov         byte ptr [ebp-6],1
 005A7108    dec         dword ptr [ebp-0C]
 005A710B    inc         dword ptr [ebp-18]
>005A710E    jne         005A70D0
 005A7110    mov         al,byte ptr [ebp-6]
 005A7113    mov         esp,ebp
 005A7115    pop         ebp
 005A7116    ret
end;*}

//005A7118
procedure TMenuItem.SetAutoLineReduction(Value:TMenuItemAutoFlag);
begin
{*
 005A7118    push        ebp
 005A7119    mov         ebp,esp
 005A711B    add         esp,0FFFFFFF8
 005A711E    mov         byte ptr [ebp-5],dl
 005A7121    mov         dword ptr [ebp-4],eax
 005A7124    mov         al,byte ptr [ebp-5]
 005A7127    mov         edx,dword ptr [ebp-4]
 005A712A    cmp         al,byte ptr [edx+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
>005A712D    je          005A7142
 005A712F    mov         al,byte ptr [ebp-5]
 005A7132    mov         edx,dword ptr [ebp-4]
 005A7135    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 005A7138    mov         dl,1
 005A713A    mov         eax,dword ptr [ebp-4]
 005A713D    mov         ecx,dword ptr [eax]
 005A713F    call        dword ptr [ecx+3C];TMenuItem.sub_005A5E94
 005A7142    pop         ecx
 005A7143    pop         ecx
 005A7144    pop         ebp
 005A7145    ret
*}
end;

//005A7148
{*function sub_005A7148(?:?):?;
begin
 005A7148    push        ebp
 005A7149    mov         ebp,esp
 005A714B    add         esp,0FFFFFFF8
 005A714E    mov         dword ptr [ebp-4],eax
 005A7151    mov         eax,dword ptr [ebp-4]
 005A7154    mov         al,byte ptr [eax+3B]
 005A7157    mov         byte ptr [ebp-6],al
 005A715A    cmp         byte ptr [ebp-6],2
>005A715E    jne         005A7180
 005A7160    mov         eax,dword ptr [ebp-4]
 005A7163    cmp         dword ptr [eax+64],0
>005A7167    je          005A7180
 005A7169    mov         eax,dword ptr [ebp-4]
 005A716C    mov         eax,dword ptr [eax+64]
 005A716F    call        005A7148
 005A7174    and         eax,7F
 005A7177    mov         al,byte ptr [eax+6E3BD4]
 005A717D    mov         byte ptr [ebp-6],al
 005A7180    xor         eax,eax
 005A7182    mov         al,byte ptr [ebp-6]
 005A7185    mov         al,byte ptr [eax+6E3BD8]
 005A718B    mov         byte ptr [ebp-5],al
 005A718E    mov         al,byte ptr [ebp-5]
 005A7191    pop         ecx
 005A7192    pop         ecx
 005A7193    pop         ebp
 005A7194    ret
end;*}

//005A7198
{*function sub_005A7198(?:?):?;
begin
 005A7198    push        ebp
 005A7199    mov         ebp,esp
 005A719B    add         esp,0FFFFFFF8
 005A719E    mov         dword ptr [ebp-4],eax
 005A71A1    mov         eax,dword ptr [ebp-4]
 005A71A4    mov         al,byte ptr [eax+3C]
 005A71A7    mov         byte ptr [ebp-6],al
 005A71AA    cmp         byte ptr [ebp-6],2
>005A71AE    jne         005A71D0
 005A71B0    mov         eax,dword ptr [ebp-4]
 005A71B3    cmp         dword ptr [eax+64],0
>005A71B7    je          005A71D0
 005A71B9    mov         eax,dword ptr [ebp-4]
 005A71BC    mov         eax,dword ptr [eax+64]
 005A71BF    call        005A7198
 005A71C4    and         eax,7F
 005A71C7    mov         al,byte ptr [eax+6E3BD4]
 005A71CD    mov         byte ptr [ebp-6],al
 005A71D0    xor         eax,eax
 005A71D2    mov         al,byte ptr [ebp-6]
 005A71D5    mov         al,byte ptr [eax+6E3BD8]
 005A71DB    mov         byte ptr [ebp-5],al
 005A71DE    mov         al,byte ptr [ebp-5]
 005A71E1    pop         ecx
 005A71E2    pop         ecx
 005A71E3    pop         ebp
 005A71E4    ret
end;*}

//005A71E8
constructor TMenu.Create(AOwner:TComponent);
begin
{*
 005A71E8    push        ebp
 005A71E9    mov         ebp,esp
 005A71EB    add         esp,0FFFFFFF4
 005A71EE    test        dl,dl
>005A71F0    je          005A71FA
 005A71F2    add         esp,0FFFFFFF0
 005A71F5    call        @ClassCreate
 005A71FA    mov         dword ptr [ebp-0C],ecx
 005A71FD    mov         byte ptr [ebp-5],dl
 005A7200    mov         dword ptr [ebp-4],eax
 005A7203    mov         ecx,dword ptr [ebp-4]
 005A7206    mov         dl,1
 005A7208    mov         eax,[005A1ED0];TMenuItem
 005A720D    call        TMenuItem.Create;TMenuItem.Create
 005A7212    mov         edx,dword ptr [ebp-4]
 005A7215    mov         dword ptr [edx+34],eax;TMenu.Items:TMenuItem
 005A7218    mov         eax,dword ptr [ebp-4]
 005A721B    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A721E    mov         edx,dword ptr [ebp-4]
 005A7221    mov         dword ptr [eax+84],edx;TMenuItem.?f84:TMenu
 005A7227    mov         edx,dword ptr [edx]
 005A7229    mov         edx,dword ptr [edx+38];TMenu.FWindowHandle:HWND
 005A722C    mov         dword ptr [eax+80],edx;TMenuItem.FOnChange:TMenuChangeEvent
 005A7232    mov         eax,dword ptr [ebp-4]
 005A7235    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A7238    mov         edx,dword ptr [ebp-4]
 005A723B    mov         dword ptr [eax+70],edx;TMenuItem.FMenu:TMenu
 005A723E    mov         dl,1
 005A7240    mov         eax,[0058B150];TChangeLink
 005A7245    call        TObject.Create;TChangeLink.Create
 005A724A    mov         edx,dword ptr [ebp-4]
 005A724D    mov         dword ptr [edx+44],eax;TMenu.FImageChangeLink:TChangeLink
 005A7250    mov         eax,dword ptr [ebp-4]
 005A7253    mov         eax,dword ptr [eax+44];TMenu.FImageChangeLink:TChangeLink
 005A7256    mov         edx,dword ptr [ebp-4]
 005A7259    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomActionList
 005A725C    mov         dword ptr [eax+8],5A7D88;TChangeLink.FOnChange:TNotifyEvent
 005A7263    mov         eax,dword ptr [ebp-4]
 005A7266    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 005A726A    mov         ecx,dword ptr [ebp-0C]
 005A726D    xor         edx,edx
 005A726F    mov         eax,dword ptr [ebp-4]
 005A7272    call        TComponent.Create
 005A7277    mov         eax,dword ptr [ebp-4]
 005A727A    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A727D    mov         byte ptr [eax+3B],0;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 005A7281    mov         eax,dword ptr [ebp-4]
 005A7284    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A7287    mov         byte ptr [eax+3C],0;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 005A728B    mov         eax,dword ptr [ebp-4]
 005A728E    call        005A835C
 005A7293    mov         eax,dword ptr [ebp-4]
 005A7296    cmp         byte ptr [ebp-5],0
>005A729A    je          005A72AB
 005A729C    call        @AfterConstruction
 005A72A1    pop         dword ptr fs:[0]
 005A72A8    add         esp,0C
 005A72AB    mov         eax,dword ptr [ebp-4]
 005A72AE    mov         esp,ebp
 005A72B0    pop         ebp
 005A72B1    ret
*}
end;

//005A72B4
destructor TMenu.Destroy;
begin
{*
 005A72B4    push        ebp
 005A72B5    mov         ebp,esp
 005A72B7    add         esp,0FFFFFFF8
 005A72BA    call        @BeforeDestruction
 005A72BF    mov         byte ptr [ebp-5],dl
 005A72C2    mov         dword ptr [ebp-4],eax
 005A72C5    mov         eax,dword ptr [ebp-4]
 005A72C8    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A72CB    call        TObject.Free
 005A72D0    mov         eax,dword ptr [ebp-4]
 005A72D3    mov         eax,dword ptr [eax+44];TMenu.FImageChangeLink:TChangeLink
 005A72D6    call        TObject.Free
 005A72DB    mov         dl,byte ptr [ebp-5]
 005A72DE    and         dl,0FC
 005A72E1    mov         eax,dword ptr [ebp-4]
 005A72E4    call        TComponent.Destroy
 005A72E9    cmp         byte ptr [ebp-5],0
>005A72ED    jle         005A72F7
 005A72EF    mov         eax,dword ptr [ebp-4]
 005A72F2    call        @ClassDestroy
 005A72F7    pop         ecx
 005A72F8    pop         ecx
 005A72F9    pop         ebp
 005A72FA    ret
*}
end;

//005A72FC
{*procedure TMenu.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?; ?:?);
begin
 005A72FC    push        ebp
 005A72FD    mov         ebp,esp
 005A72FF    add         esp,0FFFFFFF8
 005A7302    push        esi
 005A7303    mov         dword ptr [ebp-8],edx
 005A7306    mov         dword ptr [ebp-4],eax
 005A7309    push        dword ptr [ebp+0C]
 005A730C    push        dword ptr [ebp+8]
 005A730F    mov         edx,dword ptr [ebp-8]
 005A7312    mov         eax,dword ptr [ebp-4]
 005A7315    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A7318    mov         si,0FFFD
 005A731C    call        @CallDynaInst;TMenuItem.GetChildren
 005A7321    pop         esi
 005A7322    pop         ecx
 005A7323    pop         ecx
 005A7324    pop         ebp
 005A7325    ret         8
end;*}

//005A7328
{*function sub_005A7328:?;
begin
 005A7328    push        ebp
 005A7329    mov         ebp,esp
 005A732B    add         esp,0FFFFFFF8
 005A732E    mov         dword ptr [ebp-4],eax
 005A7331    mov         eax,dword ptr [ebp-4]
 005A7334    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A7337    call        005A3DA0
 005A733C    mov         dword ptr [ebp-8],eax
 005A733F    mov         eax,dword ptr [ebp-8]
 005A7342    pop         ecx
 005A7343    pop         ecx
 005A7344    pop         ebp
 005A7345    ret
end;*}

//005A7348
{*procedure TMenu.sub_005A7348(?:?; ?:?);
begin
 005A7348    push        ebp
 005A7349    mov         ebp,esp
 005A734B    add         esp,0FFFFFFF4
 005A734E    push        esi
 005A734F    mov         dword ptr [ebp-0C],ecx
 005A7352    mov         dword ptr [ebp-8],edx
 005A7355    mov         dword ptr [ebp-4],eax
 005A7358    mov         ecx,dword ptr [ebp-0C]
 005A735B    mov         edx,dword ptr [ebp-8]
 005A735E    mov         eax,dword ptr [ebp-4]
 005A7361    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A7364    mov         si,0FFF9
 005A7368    call        @CallDynaInst;TMenuItem.sub_005A5ABC
 005A736D    pop         esi
 005A736E    mov         esp,ebp
 005A7370    pop         ebp
 005A7371    ret
end;*}

//005A73AC
procedure sub_005A73AC(?:TMainMenu);
begin
{*
 005A73AC    push        ebp
 005A73AD    mov         ebp,esp
 005A73AF    push        ecx
 005A73B0    mov         dword ptr [ebp-4],eax
 005A73B3    mov         eax,dword ptr [ebp-4]
 005A73B6    mov         eax,dword ptr [eax+34]
 005A73B9    mov         edx,dword ptr [eax+68]
 005A73BC    mov         eax,5A7374
 005A73C1    mov         ecx,dword ptr [ebp-4]
 005A73C4    mov         ecx,dword ptr [ecx+34]
 005A73C7    call        005A2FE4
 005A73CC    pop         ecx
 005A73CD    pop         ebp
 005A73CE    ret
*}
end;

//005A7480
{*function sub_005A7480(?:TMenu; ?:Longword; ?:?):?;
begin
 005A7480    push        ebp
 005A7481    mov         ebp,esp
 005A7483    add         esp,0FFFFFFEC
 005A7486    mov         byte ptr [ebp-1],cl
 005A7489    mov         dword ptr [ebp-8],edx
 005A748C    mov         dword ptr [ebp-10],eax
 005A748F    xor         eax,eax
 005A7491    mov         dword ptr [ebp-0C],eax
 005A7494    mov         eax,dword ptr [ebp-10]
 005A7497    mov         eax,dword ptr [eax+34]
 005A749A    mov         edx,dword ptr [eax+68]
 005A749D    mov         eax,5A73D0
 005A74A2    mov         ecx,dword ptr [ebp-10]
 005A74A5    mov         ecx,dword ptr [ecx+34]
 005A74A8    call        005A2FE4
 005A74AD    mov         eax,dword ptr [ebp-0C]
 005A74B0    mov         dword ptr [ebp-14],eax
 005A74B3    mov         eax,dword ptr [ebp-14]
 005A74B6    mov         esp,ebp
 005A74B8    pop         ebp
 005A74B9    ret
end;*}

//005A74BC
{*function sub_005A74BC(?:Pointer; ?:?; ?:?):?;
begin
 005A74BC    push        ebp
 005A74BD    mov         ebp,esp
 005A74BF    add         esp,0FFFFFFE8
 005A74C2    mov         byte ptr [ebp-9],cl
 005A74C5    mov         dword ptr [ebp-8],edx
 005A74C8    mov         dword ptr [ebp-4],eax
 005A74CB    xor         eax,eax
 005A74CD    mov         dword ptr [ebp-10],eax
 005A74D0    mov         byte ptr [ebp-15],1
 005A74D4    cmp         byte ptr [ebp-9],0
>005A74D8    je          005A74DE
 005A74DA    mov         byte ptr [ebp-15],0
 005A74DE    cmp         byte ptr [ebp-15],1
>005A74E2    jne         005A7510
 005A74E4    mov         eax,dword ptr [ebp-4]
 005A74E7    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A74ED    call        @IsClass
 005A74F2    test        al,al
>005A74F4    je          005A7510
 005A74F6    mov         eax,dword ptr [ebp-4]
 005A74F9    mov         edx,dword ptr [eax]
 005A74FB    call        dword ptr [edx+34]
 005A74FE    cmp         eax,dword ptr [ebp-8]
>005A7501    jne         005A7510
 005A7503    mov         eax,dword ptr [ebp-4]
 005A7506    call        TPopupMenu.GetHelpContext
 005A750B    mov         dword ptr [ebp-10],eax
>005A750E    jmp         005A754A
 005A7510    mov         cl,byte ptr [ebp-15]
 005A7513    mov         edx,dword ptr [ebp-8]
 005A7516    mov         eax,dword ptr [ebp-4]
 005A7519    call        005A7480
 005A751E    mov         dword ptr [ebp-14],eax
>005A7521    jmp         005A752C
 005A7523    mov         eax,dword ptr [ebp-14]
 005A7526    mov         eax,dword ptr [eax+64]
 005A7529    mov         dword ptr [ebp-14],eax
 005A752C    cmp         dword ptr [ebp-14],0
>005A7530    je          005A753B
 005A7532    mov         eax,dword ptr [ebp-14]
 005A7535    cmp         dword ptr [eax+54],0
>005A7539    je          005A7523
 005A753B    cmp         dword ptr [ebp-14],0
>005A753F    je          005A754A
 005A7541    mov         eax,dword ptr [ebp-14]
 005A7544    mov         eax,dword ptr [eax+54]
 005A7547    mov         dword ptr [ebp-10],eax
 005A754A    mov         eax,dword ptr [ebp-10]
 005A754D    mov         esp,ebp
 005A754F    pop         ebp
 005A7550    ret
end;*}

//005A7554
{*function sub_005A7554(?:Pointer; ?:?):?;
begin
 005A7554    push        ebp
 005A7555    mov         ebp,esp
 005A7557    add         esp,0FFFFFFF4
 005A755A    mov         word ptr [ebp-6],dx
 005A755E    mov         dword ptr [ebp-4],eax
 005A7561    mov         byte ptr [ebp-7],0
 005A7565    movzx       edx,word ptr [ebp-6]
 005A7569    xor         ecx,ecx
 005A756B    mov         eax,dword ptr [ebp-4]
 005A756E    call        005A7480
 005A7573    mov         dword ptr [ebp-0C],eax
 005A7576    cmp         dword ptr [ebp-0C],0
>005A757A    je          005A7588
 005A757C    mov         eax,dword ptr [ebp-0C]
 005A757F    mov         edx,dword ptr [eax]
 005A7581    call        dword ptr [edx+44]
 005A7584    mov         byte ptr [ebp-7],1
 005A7588    mov         al,byte ptr [ebp-7]
 005A758B    mov         esp,ebp
 005A758D    pop         ebp
 005A758E    ret
end;*}

//005A7590
{*function sub_005A7590(?:Pointer; ?:?):?;
begin
 005A7590    push        ebp
 005A7591    mov         ebp,esp
 005A7593    add         esp,0FFFFFFE8
 005A7596    mov         dword ptr [ebp-8],edx
 005A7599    mov         dword ptr [ebp-4],eax
 005A759C    mov         byte ptr [ebp-9],0
 005A75A0    mov         cl,1
 005A75A2    mov         edx,dword ptr [ebp-8]
 005A75A5    mov         eax,dword ptr [ebp-4]
 005A75A8    call        005A7480
 005A75AD    mov         dword ptr [ebp-10],eax
 005A75B0    cmp         dword ptr [ebp-10],0
>005A75B4    je          005A7662
 005A75BA    mov         eax,dword ptr [ebp-10]
 005A75BD    test        byte ptr [eax+1C],10
>005A75C1    jne         005A75CB
 005A75C3    mov         eax,dword ptr [ebp-10]
 005A75C6    call        005A608C
 005A75CB    mov         eax,dword ptr [ebp-10]
 005A75CE    mov         edx,dword ptr [eax]
 005A75D0    call        dword ptr [edx+44]
 005A75D3    xor         edx,edx
 005A75D5    mov         eax,dword ptr [ebp-10]
 005A75D8    call        005A6A04
 005A75DD    mov         byte ptr [ebp-11],al
 005A75E0    xor         edx,edx
 005A75E2    mov         eax,dword ptr [ebp-10]
 005A75E5    call        005A6F80
 005A75EA    or          al,byte ptr [ebp-11]
 005A75ED    mov         byte ptr [ebp-11],al
 005A75F0    cmp         byte ptr [ebp-11],0
>005A75F4    je          005A75FE
 005A75F6    mov         eax,dword ptr [ebp-10]
 005A75F9    call        005A3C18
 005A75FE    mov         eax,[006E9DCC];^Application:TApplication
 005A7603    mov         eax,dword ptr [eax]
 005A7605    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>005A7609    je          005A765C
 005A760B    mov         eax,[006E9DCC];^Application:TApplication
 005A7610    mov         eax,dword ptr [eax]
 005A7612    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 005A7615    mov         dword ptr [ebp-18],eax
 005A7618    mov         eax,dword ptr [ebp-18]
 005A761B    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>005A7622    jne         005A765C
 005A7624    mov         eax,dword ptr [ebp-18]
 005A7627    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 005A762D    cmp         eax,dword ptr [ebp-10]
>005A7630    jne         005A765C
 005A7632    push        0
 005A7634    push        0
 005A7636    push        234
 005A763B    mov         eax,dword ptr [ebp-18]
 005A763E    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 005A7644    push        eax
 005A7645    call        USER32.SendMessageA
 005A764A    test        eax,eax
>005A764C    je          005A765C
 005A764E    mov         eax,dword ptr [ebp-18]
 005A7651    call        TWinControl.GetHandle
 005A7656    push        eax
 005A7657    call        USER32.DrawMenuBar
 005A765C    mov         byte ptr [ebp-9],1
>005A7660    jmp         005A7688
 005A7662    mov         eax,dword ptr [ebp-4]
 005A7665    test        byte ptr [eax+1C],10
>005A7669    jne         005A7688
 005A766B    mov         eax,dword ptr [ebp-4]
 005A766E    mov         edx,dword ptr ds:[5A26CC];TPopupMenu
 005A7674    call        @IsClass
 005A7679    test        al,al
>005A767B    je          005A7688
 005A767D    mov         eax,dword ptr [ebp-4]
 005A7680    mov         eax,dword ptr [eax+34]
 005A7683    call        005A608C
 005A7688    mov         al,byte ptr [ebp-9]
 005A768B    mov         esp,ebp
 005A768D    pop         ebp
 005A768E    ret
end;*}

//005A7690
{*function sub_005A7690(?:?):?;
begin
 005A7690    push        ebp
 005A7691    mov         ebp,esp
 005A7693    add         esp,0FFFFFFF8
 005A7696    mov         dword ptr [ebp-4],eax
 005A7699    mov         eax,dword ptr [ebp-4]
 005A769C    cmp         byte ptr [eax+40],0
>005A76A0    jne         005A76AF
 005A76A2    mov         eax,dword ptr [ebp-4]
 005A76A5    cmp         dword ptr [eax+48],0
>005A76A9    jne         005A76AF
 005A76AB    xor         eax,eax
>005A76AD    jmp         005A76B1
 005A76AF    mov         al,1
 005A76B1    mov         byte ptr [ebp-5],al
 005A76B4    mov         al,byte ptr [ebp-5]
 005A76B7    pop         ecx
 005A76B8    pop         ecx
 005A76B9    pop         ebp
 005A76BA    ret
end;*}

//005A76BC
{*function sub_005A76BC(?:?; ?:?):?;
begin
 005A76BC    push        ebp
 005A76BD    mov         ebp,esp
 005A76BF    add         esp,0FFFFFFF4
 005A76C2    mov         dword ptr [ebp-8],edx
 005A76C5    mov         dword ptr [ebp-4],eax
 005A76C8    mov         eax,dword ptr [ebp-4]
 005A76CB    mov         dword ptr [ebp-0C],eax
>005A76CE    jmp         005A76DC
 005A76D0    mov         eax,dword ptr [ebp-0C]
 005A76D3    mov         eax,dword ptr [eax+64]
 005A76D6    mov         dword ptr [ebp-0C],eax
 005A76D9    dec         dword ptr [ebp-8]
 005A76DC    cmp         dword ptr [ebp-8],0
>005A76E0    jle         005A76E8
 005A76E2    cmp         dword ptr [ebp-0C],0
>005A76E6    jne         005A76D0
 005A76E8    mov         eax,dword ptr [ebp-0C]
 005A76EB    mov         esp,ebp
 005A76ED    pop         ebp
 005A76EE    ret
end;*}

//005A76F0
{*function sub_005A76F0(?:TMenuItem; ?:?; ?:?):?;
begin
 005A76F0    push        ebp
 005A76F1    mov         ebp,esp
 005A76F3    add         esp,0FFFFFFF0
 005A76F6    push        ebx
 005A76F7    push        esi
 005A76F8    push        edi
 005A76F9    mov         dword ptr [ebp-8],edx
 005A76FC    mov         dword ptr [ebp-4],eax
 005A76FF    mov         byte ptr [ebp-9],1
 005A7703    mov         eax,dword ptr [ebp-4]
 005A7706    mov         eax,dword ptr [eax]
 005A7708    mov         eax,dword ptr [eax+64]
 005A770B    mov         dword ptr [ebp-10],eax
 005A770E    cmp         dword ptr [ebp-10],0
>005A7712    je          005A7728
 005A7714    mov         eax,dword ptr [ebp+8]
 005A7717    push        eax
 005A7718    mov         edx,dword ptr [ebp-8]
 005A771B    inc         edx
 005A771C    lea         eax,[ebp-10]
 005A771F    call        005A76F0
 005A7724    pop         ecx
 005A7725    mov         byte ptr [ebp-9],al
 005A7728    mov         al,byte ptr [ebp-9]
 005A772B    test        al,al
>005A772D    je          005A7862
 005A7733    sub         al,3
>005A7735    je          005A7862
 005A773B    cmp         byte ptr [ebp-9],2
>005A773F    jne         005A77CC
 005A7745    mov         eax,dword ptr [ebp+8]
 005A7748    cmp         dword ptr [eax-4],0
>005A774C    je          005A7761
 005A774E    mov         eax,dword ptr [ebp+8]
 005A7751    mov         eax,dword ptr [eax-4]
 005A7754    mov         ax,word ptr [eax+60]
 005A7758    mov         edx,dword ptr [ebp+8]
 005A775B    cmp         ax,word ptr [edx-6]
>005A775F    je          005A778D
 005A7761    mov         eax,dword ptr [ebp+8]
 005A7764    movzx       edx,word ptr [eax-6]
 005A7768    mov         eax,dword ptr [ebp+8]
 005A776B    mov         eax,dword ptr [eax-0C]
 005A776E    mov         cl,2
 005A7770    call        005A7480
 005A7775    mov         edx,dword ptr [ebp+8]
 005A7778    mov         dword ptr [edx-4],eax
 005A777B    mov         eax,dword ptr [ebp+8]
 005A777E    cmp         dword ptr [eax-4],0
>005A7782    jne         005A778D
 005A7784    mov         byte ptr [ebp-9],3
>005A7788    jmp         005A7862
 005A778D    mov         eax,dword ptr [ebp+8]
 005A7790    push        eax
 005A7791    mov         eax,dword ptr [ebp+8]
 005A7794    mov         eax,dword ptr [eax-4]
 005A7797    mov         edx,dword ptr [ebp-8]
 005A779A    call        005A76BC
 005A779F    pop         ecx
 005A77A0    mov         edx,dword ptr [ebp-4]
 005A77A3    mov         dword ptr [edx],eax
 005A77A5    mov         eax,dword ptr [ebp-4]
 005A77A8    cmp         dword ptr [eax],0
>005A77AB    je          005A7862
 005A77B1    mov         eax,dword ptr [ebp-4]
 005A77B4    mov         eax,dword ptr [eax]
 005A77B6    mov         eax,dword ptr [eax+64]
 005A77B9    cmp         eax,dword ptr [ebp-10]
>005A77BC    jne         005A7862
 005A77C2    cmp         dword ptr [ebp-8],0
>005A77C6    jne         005A77CC
 005A77C8    mov         byte ptr [ebp-9],1
 005A77CC    mov         eax,dword ptr [ebp-4]
 005A77CF    mov         eax,dword ptr [eax]
 005A77D1    cmp         byte ptr [eax+39],0
>005A77D5    je          005A785E
 005A77DB    xor         eax,eax
 005A77DD    push        ebp
 005A77DE    push        5A7840
 005A77E3    push        dword ptr fs:[eax]
 005A77E6    mov         dword ptr fs:[eax],esp
 005A77E9    mov         eax,dword ptr [ebp+8]
 005A77EC    mov         eax,dword ptr [eax-0C]
 005A77EF    test        byte ptr [eax+1C],10
>005A77F3    jne         005A77FF
 005A77F5    mov         eax,dword ptr [ebp-4]
 005A77F8    mov         eax,dword ptr [eax]
 005A77FA    call        005A608C
 005A77FF    mov         eax,dword ptr [ebp-4]
 005A7802    mov         eax,dword ptr [eax]
 005A7804    mov         edx,dword ptr [eax]
 005A7806    call        dword ptr [edx+44]
 005A7809    mov         eax,dword ptr [ebp+8]
 005A780C    cmp         dword ptr [eax-4],0
>005A7810    je          005A7832
 005A7812    mov         eax,dword ptr [ebp-4]
 005A7815    mov         eax,dword ptr [eax]
 005A7817    mov         edx,dword ptr [ebp+8]
 005A781A    cmp         eax,dword ptr [edx-4]
>005A781D    je          005A7836
 005A781F    mov         eax,dword ptr [ebp+8]
 005A7822    mov         eax,dword ptr [eax-4]
 005A7825    mov         ax,word ptr [eax+60]
 005A7829    mov         edx,dword ptr [ebp+8]
 005A782C    cmp         ax,word ptr [edx-6]
>005A7830    je          005A7836
 005A7832    mov         byte ptr [ebp-9],2
 005A7836    xor         eax,eax
 005A7838    pop         edx
 005A7839    pop         ecx
 005A783A    pop         ecx
 005A783B    mov         dword ptr fs:[eax],edx
>005A783E    jmp         005A7862
>005A7840    jmp         @HandleAnyException
 005A7845    mov         eax,dword ptr [ebp+8]
 005A7848    mov         edx,dword ptr [eax-0C]
 005A784B    mov         eax,[006E9DCC];^Application:TApplication
 005A7850    mov         eax,dword ptr [eax]
 005A7852    call        TApplication.HandleException
 005A7857    call        @DoneExcept
>005A785C    jmp         005A7862
 005A785E    mov         byte ptr [ebp-9],0
 005A7862    mov         al,byte ptr [ebp-9]
 005A7865    pop         edi
 005A7866    pop         esi
 005A7867    pop         ebx
 005A7868    mov         esp,ebp
 005A786A    pop         ebp
 005A786B    ret
end;*}

//005A786C
{*procedure TMenu.sub_005A786C(?:?);
begin
 005A786C    push        ebp
 005A786D    mov         ebp,esp
 005A786F    add         esp,0FFFFFFE8
 005A7872    mov         dword ptr [ebp-10],edx
 005A7875    mov         dword ptr [ebp-0C],eax
 005A7878    mov         byte ptr [ebp-11],0
 005A787C    mov         eax,dword ptr [ebp-10]
 005A787F    movzx       eax,byte ptr [eax+4]
 005A7883    mov         word ptr [ebp-6],ax
 005A7887    cmp         word ptr [ebp-6],0
>005A788C    je          005A798D
 005A7892    push        10
 005A7894    call        USER32.GetKeyState
 005A7899    test        ax,ax
>005A789C    jge         005A78A4
 005A789E    add         word ptr [ebp-6],2000
 005A78A4    push        11
 005A78A6    call        USER32.GetKeyState
 005A78AB    test        ax,ax
>005A78AE    jge         005A78B6
 005A78B0    add         word ptr [ebp-6],4000
 005A78B6    mov         eax,dword ptr [ebp-10]
 005A78B9    test        byte ptr [eax+0B],20
>005A78BD    je          005A78C5
 005A78BF    add         word ptr [ebp-6],8000
 005A78C5    mov         eax,dword ptr [ebp-0C]
 005A78C8    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 005A78CB    mov         dword ptr [ebp-18],eax
 005A78CE    lea         edx,[ebp-18]
 005A78D1    mov         eax,[006ECD00];0x0 ShortCutItems:TMenuItemStack
 005A78D6    call        00654E18
 005A78DB    xor         eax,eax
 005A78DD    push        ebp
 005A78DE    push        5A7971
 005A78E3    push        dword ptr fs:[eax]
 005A78E6    mov         dword ptr fs:[eax],esp
 005A78E9    mov         byte ptr [ebp-12],0
 005A78ED    movzx       edx,word ptr [ebp-6]
 005A78F1    mov         cl,2
 005A78F3    mov         eax,dword ptr [ebp-0C]
 005A78F6    call        005A7480
 005A78FB    mov         dword ptr [ebp-4],eax
 005A78FE    cmp         dword ptr [ebp-4],0
>005A7902    je          005A794D
 005A7904    lea         edx,[ebp-4]
 005A7907    mov         eax,[006ECD00];0x0 ShortCutItems:TMenuItemStack
 005A790C    call        00654E18
 005A7911    xor         eax,eax
 005A7913    push        ebp
 005A7914    push        5A7946
 005A7919    push        dword ptr fs:[eax]
 005A791C    mov         dword ptr fs:[eax],esp
 005A791F    push        ebp
 005A7920    lea         eax,[ebp-4]
 005A7923    xor         edx,edx
 005A7925    call        005A76F0
 005A792A    pop         ecx
 005A792B    mov         byte ptr [ebp-12],al
 005A792E    xor         eax,eax
 005A7930    pop         edx
 005A7931    pop         ecx
 005A7932    pop         ecx
 005A7933    mov         dword ptr fs:[eax],edx
 005A7936    push        5A794D
 005A793B    mov         eax,[006ECD00];0x0 ShortCutItems:TMenuItemStack
 005A7940    call        00654DFC
 005A7945    ret
>005A7946    jmp         @HandleFinally
>005A794B    jmp         005A793B
 005A794D    cmp         dword ptr [ebp-18],0
>005A7951    je          005A7959
 005A7953    cmp         byte ptr [ebp-12],2
>005A7957    je          005A78E9
 005A7959    xor         eax,eax
 005A795B    pop         edx
 005A795C    pop         ecx
 005A795D    pop         ecx
 005A795E    mov         dword ptr fs:[eax],edx
 005A7961    push        5A7978
 005A7966    mov         eax,[006ECD00];0x0 ShortCutItems:TMenuItemStack
 005A796B    call        00654DFC
 005A7970    ret
>005A7971    jmp         @HandleFinally
>005A7976    jmp         005A7966
 005A7978    cmp         dword ptr [ebp-4],0
>005A797C    jne         005A7988
 005A797E    cmp         dword ptr [ebp-18],0
>005A7982    je          005A7988
 005A7984    xor         eax,eax
>005A7986    jmp         005A798A
 005A7988    mov         al,1
 005A798A    mov         byte ptr [ebp-11],al
 005A798D    mov         al,byte ptr [ebp-11]
 005A7990    mov         esp,ebp
 005A7992    pop         ebp
 005A7993    ret
end;*}

//005A7994
function TMainMenu.IsStoredBiDiMode(Value:TBiDiMode):Boolean;
begin
{*
 005A7994    push        ebp
 005A7995    mov         ebp,esp
 005A7997    add         esp,0FFFFFFF8
 005A799A    mov         dword ptr [ebp-4],eax
 005A799D    mov         eax,dword ptr [ebp-4]
 005A79A0    mov         al,byte ptr [eax+41];TMainMenu.FParentBiDiMode:Boolean
 005A79A3    xor         al,1
 005A79A5    mov         byte ptr [ebp-5],al
 005A79A8    mov         al,byte ptr [ebp-5]
 005A79AB    pop         ecx
 005A79AC    pop         ecx
 005A79AD    pop         ebp
 005A79AE    ret
*}
end;

//005A79B0
procedure sub_005A79B0(?:TMainMenu);
begin
{*
 005A79B0    push        ebp
 005A79B1    mov         ebp,esp
 005A79B3    add         esp,0FFFFFF78
 005A79B9    mov         dword ptr [ebp-4],eax
 005A79BC    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A79C1    cmp         byte ptr [eax+0D],0
>005A79C5    je          005A7A78
 005A79CB    mov         eax,dword ptr [ebp-4]
 005A79CE    cmp         dword ptr [eax+38],0
>005A79D2    je          005A7A78
 005A79D8    mov         eax,dword ptr [ebp-4]
 005A79DB    mov         edx,dword ptr [eax]
 005A79DD    call        dword ptr [edx+34]
 005A79E0    mov         dword ptr [ebp-8],eax
 005A79E3    mov         dword ptr [ebp-38],2C
 005A79EA    mov         dword ptr [ebp-34],10
 005A79F1    lea         eax,[ebp-88]
 005A79F7    mov         dword ptr [ebp-14],eax
 005A79FA    mov         dword ptr [ebp-10],50
 005A7A01    lea         eax,[ebp-38]
 005A7A04    push        eax
 005A7A05    push        0FF
 005A7A07    push        0
 005A7A09    mov         eax,dword ptr [ebp-8]
 005A7A0C    push        eax
 005A7A0D    call        USER32.GetMenuItemInfoA
 005A7A12    test        eax,eax
>005A7A14    je          005A7A78
 005A7A16    mov         eax,dword ptr [ebp-4]
 005A7A19    call        TMenu.IsRightToLeft
 005A7A1E    mov         edx,dword ptr [ebp-30]
 005A7A21    and         edx,6000
 005A7A27    cmp         edx,1
 005A7A2A    sbb         edx,edx
 005A7A2C    inc         edx
 005A7A2D    cmp         al,dl
>005A7A2F    je          005A7A78
 005A7A31    mov         eax,dword ptr [ebp-4]
 005A7A34    call        TMenu.IsRightToLeft
 005A7A39    and         eax,7F
 005A7A3C    shl         eax,0D
 005A7A3F    lea         eax,[eax+eax*2]
 005A7A42    mov         edx,dword ptr [ebp-30]
 005A7A45    and         edx,0FFFF9FFF
 005A7A4B    or          eax,edx
 005A7A4D    mov         dword ptr [ebp-30],eax
 005A7A50    mov         dword ptr [ebp-34],10
 005A7A57    lea         eax,[ebp-38]
 005A7A5A    push        eax
 005A7A5B    push        0FF
 005A7A5D    push        0
 005A7A5F    mov         eax,dword ptr [ebp-8]
 005A7A62    push        eax
 005A7A63    call        USER32.SetMenuItemInfoA
 005A7A68    test        eax,eax
>005A7A6A    je          005A7A78
 005A7A6C    mov         eax,dword ptr [ebp-4]
 005A7A6F    mov         eax,dword ptr [eax+38]
 005A7A72    push        eax
 005A7A73    call        USER32.DrawMenuBar
 005A7A78    mov         esp,ebp
 005A7A7A    pop         ebp
 005A7A7B    ret
*}
end;

//005A7A7C
{*procedure sub_005A7A7C(?:?; ?:?);
begin
 005A7A7C    push        ebp
 005A7A7D    mov         ebp,esp
 005A7A7F    add         esp,0FFFFFFE8
 005A7A82    mov         dword ptr [ebp-4],eax
 005A7A85    mov         eax,dword ptr [ebp-4]
 005A7A88    push        eax
 005A7A89    call        USER32.GetMenuItemCount
 005A7A8E    mov         dword ptr [ebp-14],eax
 005A7A91    mov         eax,dword ptr [ebp+8]
 005A7A94    add         eax,0FFFFFE00
 005A7A99    mov         dword ptr [ebp-8],eax
 005A7A9C    mov         eax,dword ptr [ebp+8]
 005A7A9F    add         eax,0FFFFFFFB
 005A7AA2    mov         dword ptr [ebp-0C],eax
 005A7AA5    xor         eax,eax
 005A7AA7    mov         dword ptr [ebp-10],eax
>005A7AAA    jmp         005A7B45
 005A7AAF    mov         eax,dword ptr [ebp-8]
 005A7AB2    push        eax
 005A7AB3    mov         eax,dword ptr [ebp-0C]
 005A7AB6    sub         eax,dword ptr [ebp-8]
 005A7AB9    push        eax
 005A7ABA    push        400
 005A7ABF    mov         eax,dword ptr [ebp+8]
 005A7AC2    mov         eax,dword ptr [eax-204]
 005A7AC8    mov         ecx,dword ptr [ebp-10]
 005A7ACB    mov         edx,dword ptr [ebp-4]
 005A7ACE    call        005A821C
 005A7AD3    mov         eax,dword ptr [ebp-8]
 005A7AD6    call        StrEnd
 005A7ADB    mov         dword ptr [ebp-8],eax
 005A7ADE    push        400
 005A7AE3    mov         eax,dword ptr [ebp-10]
 005A7AE6    push        eax
 005A7AE7    mov         eax,dword ptr [ebp-4]
 005A7AEA    push        eax
 005A7AEB    call        USER32.GetMenuState
 005A7AF0    mov         word ptr [ebp-16],ax
 005A7AF4    test        byte ptr [ebp-16],2
>005A7AF8    je          005A7B09
 005A7AFA    mov         eax,dword ptr [ebp-8]
 005A7AFD    mov         byte ptr [eax],24
 005A7B00    inc         dword ptr [ebp-8]
 005A7B03    mov         eax,dword ptr [ebp-8]
 005A7B06    mov         byte ptr [eax],0
 005A7B09    test        byte ptr [ebp-16],40
>005A7B0D    je          005A7B1E
 005A7B0F    mov         eax,dword ptr [ebp-8]
 005A7B12    mov         byte ptr [eax],40
 005A7B15    inc         dword ptr [ebp-8]
 005A7B18    mov         eax,dword ptr [ebp-8]
 005A7B1B    mov         byte ptr [eax],0
 005A7B1E    test        byte ptr [ebp-16],1
>005A7B22    je          005A7B33
 005A7B24    mov         eax,dword ptr [ebp-8]
 005A7B27    mov         byte ptr [eax],23
 005A7B2A    inc         dword ptr [ebp-8]
 005A7B2D    mov         eax,dword ptr [ebp-8]
 005A7B30    mov         byte ptr [eax],0
 005A7B33    mov         eax,dword ptr [ebp-8]
 005A7B36    mov         byte ptr [eax],3B
 005A7B39    inc         dword ptr [ebp-8]
 005A7B3C    mov         eax,dword ptr [ebp-8]
 005A7B3F    mov         byte ptr [eax],0
 005A7B42    inc         dword ptr [ebp-10]
 005A7B45    mov         eax,dword ptr [ebp-10]
 005A7B48    cmp         eax,dword ptr [ebp-14]
>005A7B4B    jge         005A7B59
 005A7B4D    mov         eax,dword ptr [ebp-8]
 005A7B50    cmp         eax,dword ptr [ebp-0C]
>005A7B53    jb          005A7AAF
 005A7B59    mov         esp,ebp
 005A7B5B    pop         ebp
 005A7B5C    ret
end;*}

//005A7B60
{*function sub_005A7B60(?:TMainMenu):?;
begin
 005A7B60    push        ebp
 005A7B61    mov         ebp,esp
 005A7B63    add         esp,0FFFFFDF8
 005A7B69    mov         dword ptr [ebp-204],eax
 005A7B6F    mov         byte ptr [ebp-205],0
 005A7B76    mov         byte ptr [ebp-200],0
 005A7B7D    mov         eax,dword ptr [ebp-204]
 005A7B83    cmp         dword ptr [eax+38],0
>005A7B87    je          005A7B9B
 005A7B89    push        ebp
 005A7B8A    mov         eax,dword ptr [ebp-204]
 005A7B90    mov         edx,dword ptr [eax]
 005A7B92    call        dword ptr [edx+34]
 005A7B95    call        005A7A7C
 005A7B9A    pop         ecx
 005A7B9B    mov         eax,dword ptr [ebp-204]
 005A7BA1    cmp         dword ptr [eax+3C],0
>005A7BA5    je          005A7BC4
 005A7BA7    mov         eax,dword ptr [ebp-204]
 005A7BAD    mov         eax,dword ptr [eax+3C]
 005A7BB0    call        @LStrToPChar
 005A7BB5    lea         edx,[ebp-200]
 005A7BBB    call        StrComp
 005A7BC0    test        eax,eax
>005A7BC2    je          005A7BE4
 005A7BC4    mov         byte ptr [ebp-205],1
 005A7BCB    mov         eax,dword ptr [ebp-204]
 005A7BD1    add         eax,3C
 005A7BD4    lea         edx,[ebp-200]
 005A7BDA    mov         ecx,200
 005A7BDF    call        @LStrFromArray
 005A7BE4    mov         al,byte ptr [ebp-205]
 005A7BEA    mov         esp,ebp
 005A7BEC    pop         ebp
 005A7BED    ret
end;*}

//005A7BF0
procedure TMainMenu.SetOwnerDraw(Value:Boolean);
begin
{*
 005A7BF0    push        ebp
 005A7BF1    mov         ebp,esp
 005A7BF3    add         esp,0FFFFFFF8
 005A7BF6    mov         byte ptr [ebp-5],dl
 005A7BF9    mov         dword ptr [ebp-4],eax
 005A7BFC    mov         al,byte ptr [ebp-5]
 005A7BFF    mov         edx,dword ptr [ebp-4]
 005A7C02    cmp         al,byte ptr [edx+40];TMainMenu.FOwnerDraw:Boolean
>005A7C05    je          005A7C18
 005A7C07    mov         al,byte ptr [ebp-5]
 005A7C0A    mov         edx,dword ptr [ebp-4]
 005A7C0D    mov         byte ptr [edx+40],al;TMainMenu.FOwnerDraw:Boolean
 005A7C10    mov         eax,dword ptr [ebp-4]
 005A7C13    call        005A73AC
 005A7C18    pop         ecx
 005A7C19    pop         ecx
 005A7C1A    pop         ebp
 005A7C1B    ret
*}
end;

//005A7C1C
procedure sub_005A7C1C(?:TPopupMenu);
begin
{*
 005A7C1C    push        ebp
 005A7C1D    mov         ebp,esp
 005A7C1F    add         esp,0FFFFFFF8
 005A7C22    mov         dword ptr [ebp-4],eax
 005A7C25    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A7C2A    cmp         byte ptr [eax+0D],0
>005A7C2E    je          005A7C98
 005A7C30    mov         eax,dword ptr [ebp-4]
 005A7C33    mov         al,byte ptr [eax+30]
 005A7C36    mov         byte ptr [ebp-5],al
 005A7C39    mov         eax,dword ptr [ebp-4]
 005A7C3C    mov         al,byte ptr [eax+41]
 005A7C3F    mov         byte ptr [ebp-6],al
 005A7C42    xor         eax,eax
 005A7C44    push        ebp
 005A7C45    push        5A7C91
 005A7C4A    push        dword ptr fs:[eax]
 005A7C4D    mov         dword ptr fs:[eax],esp
 005A7C50    mov         eax,dword ptr [ebp-4]
 005A7C53    cmp         byte ptr [eax+30],0
>005A7C57    jne         005A7C65
 005A7C59    mov         dl,1
 005A7C5B    mov         eax,dword ptr [ebp-4]
 005A7C5E    call        TMainMenu.SetBiDiMode
>005A7C63    jmp         005A7C6F
 005A7C65    xor         edx,edx
 005A7C67    mov         eax,dword ptr [ebp-4]
 005A7C6A    call        TMainMenu.SetBiDiMode
 005A7C6F    xor         eax,eax
 005A7C71    pop         edx
 005A7C72    pop         ecx
 005A7C73    pop         ecx
 005A7C74    mov         dword ptr fs:[eax],edx
 005A7C77    push        5A7C98
 005A7C7C    mov         dl,byte ptr [ebp-5]
 005A7C7F    mov         eax,dword ptr [ebp-4]
 005A7C82    call        TMainMenu.SetBiDiMode
 005A7C87    mov         eax,dword ptr [ebp-4]
 005A7C8A    mov         dl,byte ptr [ebp-6]
 005A7C8D    mov         byte ptr [eax+41],dl
 005A7C90    ret
>005A7C91    jmp         @HandleFinally
>005A7C96    jmp         005A7C7C
 005A7C98    pop         ecx
 005A7C99    pop         ecx
 005A7C9A    pop         ebp
 005A7C9B    ret
*}
end;

//005A7C9C
procedure sub_005A7C9C(?:TComponent; ?:HWND);
begin
{*
 005A7C9C    push        ebp
 005A7C9D    mov         ebp,esp
 005A7C9F    add         esp,0FFFFFFF8
 005A7CA2    mov         dword ptr [ebp-8],edx
 005A7CA5    mov         dword ptr [ebp-4],eax
 005A7CA8    mov         eax,dword ptr [ebp-8]
 005A7CAB    mov         edx,dword ptr [ebp-4]
 005A7CAE    mov         dword ptr [edx+38],eax
 005A7CB1    mov         eax,dword ptr [ebp-4]
 005A7CB4    call        005A7B60
 005A7CB9    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A7CBE    cmp         byte ptr [eax+0D],0
>005A7CC2    je          005A7CE5
 005A7CC4    cmp         dword ptr [ebp-8],0
>005A7CC8    je          005A7CE5
 005A7CCA    mov         eax,dword ptr [ebp-4]
 005A7CCD    cmp         byte ptr [eax+41],0
>005A7CD1    je          005A7CDD
 005A7CD3    mov         eax,dword ptr [ebp-4]
 005A7CD6    call        005A835C
>005A7CDB    jmp         005A7CE5
 005A7CDD    mov         eax,dword ptr [ebp-4]
 005A7CE0    call        005A7C1C
 005A7CE5    pop         ecx
 005A7CE6    pop         ecx
 005A7CE7    pop         ebp
 005A7CE8    ret
*}
end;

//005A7CEC
{*procedure sub_005A7CEC(?:?; ?:?);
begin
 005A7CEC    push        ebp
 005A7CED    mov         ebp,esp
 005A7CEF    add         esp,0FFFFFFF4
 005A7CF2    push        ebx
 005A7CF3    mov         byte ptr [ebp-9],cl
 005A7CF6    mov         dword ptr [ebp-8],edx
 005A7CF9    mov         dword ptr [ebp-4],eax
 005A7CFC    mov         eax,dword ptr [ebp-4]
 005A7CFF    cmp         word ptr [eax+52],0;TMenu.?f52:word
>005A7D04    je          005A7D19
 005A7D06    mov         al,byte ptr [ebp-9]
 005A7D09    push        eax
 005A7D0A    mov         ebx,dword ptr [ebp-4]
 005A7D0D    mov         ecx,dword ptr [ebp-8]
 005A7D10    mov         edx,dword ptr [ebp-4]
 005A7D13    mov         eax,dword ptr [ebx+54];TMenu.?f54:dword
 005A7D16    call        dword ptr [ebx+50];TMenu.FOnChange
 005A7D19    pop         ebx
 005A7D1A    mov         esp,ebp
 005A7D1C    pop         ebp
 005A7D1D    ret
end;*}

//005A7D20
procedure TMenu.Loaded;
begin
{*
 005A7D20    push        ebp
 005A7D21    mov         ebp,esp
 005A7D23    push        ecx
 005A7D24    push        ebx
 005A7D25    mov         dword ptr [ebp-4],eax
 005A7D28    mov         eax,dword ptr [ebp-4]
 005A7D2B    call        TComponent.Loaded
 005A7D30    xor         ecx,ecx
 005A7D32    xor         edx,edx
 005A7D34    mov         eax,dword ptr [ebp-4]
 005A7D37    mov         ebx,dword ptr [eax]
 005A7D39    call        dword ptr [ebx+30];TMenu.sub_005A7CEC
 005A7D3C    pop         ebx
 005A7D3D    pop         ecx
 005A7D3E    pop         ebp
 005A7D3F    ret
*}
end;

//005A7D40
{*procedure sub_005A7D40(?:?; ?:?; ?:?);
begin
 005A7D40    push        ebp
 005A7D41    mov         ebp,esp
 005A7D43    add         esp,0FFFFFFF4
 005A7D46    push        ebx
 005A7D47    mov         dword ptr [ebp-8],ecx
 005A7D4A    mov         dword ptr [ebp-0C],edx
 005A7D4D    mov         dword ptr [ebp-4],eax
 005A7D50    mov         ax,[005A7D80];0x9 gvar_005A7D80
 005A7D56    mov         edx,dword ptr [ebp-4]
 005A7D59    and         ax,word ptr [edx+1C];TMenu.FComponentState:TComponentState
 005A7D5D    mov         dx,word ptr ds:[5A7D84];0x0 gvar_005A7D84
 005A7D64    cmp         dx,ax
>005A7D67    jne         005A7D77
 005A7D69    mov         cl,byte ptr [ebp+8]
 005A7D6C    mov         edx,dword ptr [ebp-8]
 005A7D6F    mov         eax,dword ptr [ebp-4]
 005A7D72    mov         ebx,dword ptr [eax]
 005A7D74    call        dword ptr [ebx+30];TMenu.sub_005A7CEC
 005A7D77    pop         ebx
 005A7D78    mov         esp,ebp
 005A7D7A    pop         ebp
 005A7D7B    ret         4
end;*}

//005A7DAC
procedure TMainMenu.SetImages(Value:TCustomImageList);
begin
{*
 005A7DAC    push        ebp
 005A7DAD    mov         ebp,esp
 005A7DAF    add         esp,0FFFFFFF8
 005A7DB2    mov         dword ptr [ebp-8],edx
 005A7DB5    mov         dword ptr [ebp-4],eax
 005A7DB8    mov         eax,dword ptr [ebp-4]
 005A7DBB    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>005A7DBF    je          005A7DD2
 005A7DC1    mov         eax,dword ptr [ebp-4]
 005A7DC4    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 005A7DC7    mov         eax,dword ptr [ebp-4]
 005A7DCA    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 005A7DCD    call        0058C770
 005A7DD2    mov         eax,dword ptr [ebp-8]
 005A7DD5    mov         edx,dword ptr [ebp-4]
 005A7DD8    mov         dword ptr [edx+48],eax;TMainMenu.FImages:TCustomImageList
 005A7DDB    mov         eax,dword ptr [ebp-4]
 005A7DDE    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>005A7DE2    je          005A7E03
 005A7DE4    mov         eax,dword ptr [ebp-4]
 005A7DE7    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 005A7DEA    mov         eax,dword ptr [ebp-4]
 005A7DED    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 005A7DF0    call        0058C7D8
 005A7DF5    mov         edx,dword ptr [ebp-4]
 005A7DF8    mov         eax,dword ptr [ebp-4]
 005A7DFB    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 005A7DFE    call        TComponent.FreeNotification
 005A7E03    mov         eax,dword ptr [ebp-4]
 005A7E06    call        005A73AC
 005A7E0B    pop         ecx
 005A7E0C    pop         ecx
 005A7E0D    pop         ebp
 005A7E0E    ret
*}
end;

//005A7E10
procedure TMenu.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005A7E10    push        ebp
 005A7E11    mov         ebp,esp
 005A7E13    add         esp,0FFFFFFF4
 005A7E16    mov         byte ptr [ebp-9],cl
 005A7E19    mov         dword ptr [ebp-8],edx
 005A7E1C    mov         dword ptr [ebp-4],eax
 005A7E1F    mov         cl,byte ptr [ebp-9]
 005A7E22    mov         edx,dword ptr [ebp-8]
 005A7E25    mov         eax,dword ptr [ebp-4]
 005A7E28    call        TComponent.Notification
 005A7E2D    mov         eax,dword ptr [ebp-8]
 005A7E30    mov         edx,dword ptr [ebp-4]
 005A7E33    cmp         eax,dword ptr [edx+48];TMenu.FImages:TCustomImageList
>005A7E36    jne         005A7E48
 005A7E38    cmp         byte ptr [ebp-9],1
>005A7E3C    jne         005A7E48
 005A7E3E    xor         edx,edx
 005A7E40    mov         eax,dword ptr [ebp-4]
 005A7E43    call        TMainMenu.SetImages
 005A7E48    mov         esp,ebp
 005A7E4A    pop         ebp
 005A7E4B    ret
*}
end;

//005A7E4C
function TMenu.IsRightToLeft:Boolean;
begin
{*
 005A7E4C    push        ebp
 005A7E4D    mov         ebp,esp
 005A7E4F    add         esp,0FFFFFFF8
 005A7E52    mov         dword ptr [ebp-4],eax
 005A7E55    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A7E5A    cmp         byte ptr [eax+0D],0
>005A7E5E    je          005A7E69
 005A7E60    mov         eax,dword ptr [ebp-4]
 005A7E63    cmp         byte ptr [eax+30],0
>005A7E67    jne         005A7E6D
 005A7E69    xor         eax,eax
>005A7E6B    jmp         005A7E6F
 005A7E6D    mov         al,1
 005A7E6F    mov         byte ptr [ebp-5],al
 005A7E72    mov         al,byte ptr [ebp-5]
 005A7E75    pop         ecx
 005A7E76    pop         ecx
 005A7E77    pop         ebp
 005A7E78    ret
*}
end;

//005A7E7C
{*function sub_005A7E7C(?:?; ?:Longword; ?:?; ?:?; ?:?):?;
begin
 005A7E7C    push        ebp
 005A7E7D    mov         ebp,esp
 005A7E7F    add         esp,0FFFFFFE8
 005A7E82    mov         dword ptr [ebp-0C],ecx
 005A7E85    mov         word ptr [ebp-6],dx
 005A7E89    mov         dword ptr [ebp-4],eax
 005A7E8C    xor         eax,eax
 005A7E8E    mov         dword ptr [ebp-14],eax
 005A7E91    test        byte ptr [ebp-6],10
>005A7E95    je          005A7EBC
 005A7E97    mov         eax,dword ptr [ebp-0C]
 005A7E9A    push        eax
 005A7E9B    mov         eax,dword ptr [ebp-4]
 005A7E9E    push        eax
 005A7E9F    call        USER32.GetSubMenu
 005A7EA4    mov         dword ptr [ebp-4],eax
 005A7EA7    mov         eax,dword ptr [ebp+0C]
 005A7EAA    mov         eax,dword ptr [eax-4]
 005A7EAD    mov         cl,1
 005A7EAF    mov         edx,dword ptr [ebp-4]
 005A7EB2    call        005A7480
 005A7EB7    mov         dword ptr [ebp-14],eax
>005A7EBA    jmp         005A7EE5
 005A7EBC    mov         eax,dword ptr [ebp-0C]
 005A7EBF    push        eax
 005A7EC0    mov         eax,dword ptr [ebp-4]
 005A7EC3    push        eax
 005A7EC4    call        USER32.GetMenuItemID
 005A7EC9    mov         dword ptr [ebp-18],eax
 005A7ECC    cmp         dword ptr [ebp-18],0FFFFFFFF
>005A7ED0    je          005A7EE5
 005A7ED2    mov         eax,dword ptr [ebp+0C]
 005A7ED5    mov         eax,dword ptr [eax-4]
 005A7ED8    xor         ecx,ecx
 005A7EDA    mov         edx,dword ptr [ebp-18]
 005A7EDD    call        005A7480
 005A7EE2    mov         dword ptr [ebp-14],eax
 005A7EE5    cmp         dword ptr [ebp-14],0
>005A7EE9    je          005A7F00
 005A7EEB    xor         eax,eax
 005A7EED    mov         al,byte ptr [ebp+8]
 005A7EF0    mov         edx,dword ptr [ebp-14]
 005A7EF3    mov         edx,dword ptr [edx+30]
 005A7EF6    call        005CCFE8
 005A7EFB    mov         byte ptr [ebp-0D],al
>005A7EFE    jmp         005A7F04
 005A7F00    mov         byte ptr [ebp-0D],0
 005A7F04    mov         al,byte ptr [ebp-0D]
 005A7F07    mov         esp,ebp
 005A7F09    pop         ebp
 005A7F0A    ret         4
end;*}

//005A7F10
{*function sub_005A7F10(?:?; ?:Longword; ?:?; ?:?; ?:?):?;
begin
 005A7F10    push        ebp
 005A7F11    mov         ebp,esp
 005A7F13    add         esp,0FFFFFFE0
 005A7F16    push        ebx
 005A7F17    xor         ebx,ebx
 005A7F19    mov         dword ptr [ebp-20],ebx
 005A7F1C    mov         dword ptr [ebp-18],ebx
 005A7F1F    mov         dword ptr [ebp-1C],ebx
 005A7F22    mov         dword ptr [ebp-0C],ecx
 005A7F25    mov         word ptr [ebp-6],dx
 005A7F29    mov         dword ptr [ebp-4],eax
 005A7F2C    xor         eax,eax
 005A7F2E    push        ebp
 005A7F2F    push        5A8012
 005A7F34    push        dword ptr fs:[eax]
 005A7F37    mov         dword ptr fs:[eax],esp
 005A7F3A    test        byte ptr [ebp-6],10
>005A7F3E    je          005A7F65
 005A7F40    mov         eax,dword ptr [ebp-0C]
 005A7F43    push        eax
 005A7F44    mov         eax,dword ptr [ebp-4]
 005A7F47    push        eax
 005A7F48    call        USER32.GetSubMenu
 005A7F4D    mov         dword ptr [ebp-4],eax
 005A7F50    mov         eax,dword ptr [ebp+0C]
 005A7F53    mov         eax,dword ptr [eax-4]
 005A7F56    mov         cl,1
 005A7F58    mov         edx,dword ptr [ebp-4]
 005A7F5B    call        005A7480
 005A7F60    mov         dword ptr [ebp-14],eax
>005A7F63    jmp         005A7F99
 005A7F65    mov         eax,dword ptr [ebp+0C]
 005A7F68    mov         eax,dword ptr [eax-4]
 005A7F6B    mov         cl,1
 005A7F6D    mov         edx,dword ptr [ebp-4]
 005A7F70    call        005A7480
 005A7F75    mov         dword ptr [ebp-14],eax
 005A7F78    cmp         dword ptr [ebp-14],0
>005A7F7C    je          005A7F99
 005A7F7E    mov         eax,dword ptr [ebp-14]
 005A7F81    call        005A58D8
 005A7F86    cmp         eax,dword ptr [ebp-0C]
>005A7F89    jle         005A7F99
 005A7F8B    mov         edx,dword ptr [ebp-0C]
 005A7F8E    mov         eax,dword ptr [ebp-14]
 005A7F91    call        005A5904
 005A7F96    mov         dword ptr [ebp-14],eax
 005A7F99    cmp         dword ptr [ebp-14],0
>005A7F9D    je          005A7FF3
 005A7F9F    mov         eax,dword ptr [ebp-14]
 005A7FA2    cmp         dword ptr [eax+30],0
>005A7FA6    je          005A7FF3
 005A7FA8    lea         eax,[ebp-18]
 005A7FAB    mov         dl,byte ptr [ebp+8]
 005A7FAE    call        @LStrFromChar
 005A7FB3    mov         eax,dword ptr [ebp-18]
 005A7FB6    push        eax
 005A7FB7    lea         eax,[ebp-1C]
 005A7FBA    mov         edx,dword ptr [ebp-14]
 005A7FBD    mov         edx,dword ptr [edx+30]
 005A7FC0    mov         dl,byte ptr [edx]
 005A7FC2    call        @LStrFromChar
 005A7FC7    mov         eax,dword ptr [ebp-1C]
 005A7FCA    pop         edx
 005A7FCB    call        AnsiCompareText
 005A7FD0    test        eax,eax
>005A7FD2    jne         005A7FE8
 005A7FD4    lea         edx,[ebp-20]
 005A7FD7    mov         eax,dword ptr [ebp-14]
 005A7FDA    mov         eax,dword ptr [eax+30]
 005A7FDD    call        005A91B4
 005A7FE2    cmp         dword ptr [ebp-20],0
>005A7FE6    je          005A7FEC
 005A7FE8    xor         eax,eax
>005A7FEA    jmp         005A7FEE
 005A7FEC    mov         al,1
 005A7FEE    mov         byte ptr [ebp-0D],al
>005A7FF1    jmp         005A7FF7
 005A7FF3    mov         byte ptr [ebp-0D],0
 005A7FF7    xor         eax,eax
 005A7FF9    pop         edx
 005A7FFA    pop         ecx
 005A7FFB    pop         ecx
 005A7FFC    mov         dword ptr fs:[eax],edx
 005A7FFF    push        5A8019
 005A8004    lea         eax,[ebp-20]
 005A8007    mov         edx,3
 005A800C    call        @LStrArrayClr
 005A8011    ret
>005A8012    jmp         @HandleFinally
>005A8017    jmp         005A8004
 005A8019    mov         al,byte ptr [ebp-0D]
 005A801C    pop         ebx
 005A801D    mov         esp,ebp
 005A801F    pop         ebp
 005A8020    ret         4
end;*}

//005A8024
{*procedure sub_005A8024(?:Pointer; ?:?);
begin
 005A8024    push        ebp
 005A8025    mov         ebp,esp
 005A8027    add         esp,0FFFFFFDC
 005A802A    mov         dword ptr [ebp-8],edx
 005A802D    mov         dword ptr [ebp-4],eax
 005A8030    mov         eax,dword ptr [ebp-8]
 005A8033    xor         edx,edx
 005A8035    mov         dword ptr [eax+0C],edx
 005A8038    mov         dword ptr [ebp-14],0FFFFFFFF
 005A803F    mov         dword ptr [ebp-18],0FFFFFFFF
 005A8046    mov         dword ptr [ebp-1C],0FFFFFFFF
 005A804D    mov         eax,dword ptr [ebp-8]
 005A8050    mov         eax,dword ptr [eax+8]
 005A8053    push        eax
 005A8054    call        USER32.GetMenuItemCount
 005A8059    mov         dword ptr [ebp-0C],eax
 005A805C    mov         eax,dword ptr [ebp-0C]
 005A805F    dec         eax
 005A8060    test        eax,eax
>005A8062    jl          005A8108
 005A8068    inc         eax
 005A8069    mov         dword ptr [ebp-24],eax
 005A806C    mov         dword ptr [ebp-10],0
 005A8073    push        400
 005A8078    mov         eax,dword ptr [ebp-10]
 005A807B    push        eax
 005A807C    mov         eax,dword ptr [ebp-8]
 005A807F    mov         eax,dword ptr [eax+8]
 005A8082    push        eax
 005A8083    call        USER32.GetMenuState
 005A8088    mov         word ptr [ebp-1E],ax
 005A808C    push        ebp
 005A808D    mov         eax,dword ptr [ebp-8]
 005A8090    mov         al,byte ptr [eax+4]
 005A8093    push        eax
 005A8094    mov         eax,dword ptr [ebp-8]
 005A8097    mov         eax,dword ptr [eax+8]
 005A809A    mov         ecx,dword ptr [ebp-10]
 005A809D    mov         dx,word ptr [ebp-1E]
 005A80A1    call        005A7E7C
 005A80A6    pop         ecx
 005A80A7    test        al,al
>005A80A9    je          005A80FC
 005A80AB    test        byte ptr [ebp-1E],2
>005A80AF    je          005A80C0
 005A80B1    cmp         dword ptr [ebp-14],0
>005A80B5    jge         005A80FC
 005A80B7    mov         dword ptr [ebp-14],0FFFFFFFE
>005A80BE    jmp         005A80FC
 005A80C0    cmp         dword ptr [ebp-14],0
>005A80C4    jge         005A80D8
 005A80C6    mov         eax,dword ptr [ebp-10]
 005A80C9    mov         dword ptr [ebp-14],eax
 005A80CC    mov         eax,dword ptr [ebp-8]
 005A80CF    mov         dword ptr [eax+0C],2
>005A80D6    jmp         005A80E2
 005A80D8    mov         eax,dword ptr [ebp-8]
 005A80DB    mov         dword ptr [eax+0C],3
 005A80E2    test        byte ptr [ebp-1E],80
>005A80E6    je          005A80F0
 005A80E8    mov         eax,dword ptr [ebp-10]
 005A80EB    mov         dword ptr [ebp-18],eax
>005A80EE    jmp         005A80FC
 005A80F0    cmp         dword ptr [ebp-18],0
>005A80F4    jl          005A80FC
 005A80F6    mov         eax,dword ptr [ebp-10]
 005A80F9    mov         dword ptr [ebp-1C],eax
 005A80FC    inc         dword ptr [ebp-10]
 005A80FF    dec         dword ptr [ebp-24]
>005A8102    jne         005A8073
 005A8108    cmp         dword ptr [ebp-14],0FFFFFFFF
>005A810C    jge         005A811D
 005A810E    mov         eax,dword ptr [ebp-8]
 005A8111    mov         dword ptr [eax+0C],10000
>005A8118    jmp         005A8217
 005A811D    cmp         dword ptr [ebp-14],0
>005A8121    jge         005A81D3
 005A8127    mov         eax,dword ptr [ebp-0C]
 005A812A    dec         eax
 005A812B    test        eax,eax
>005A812D    jl          005A81D3
 005A8133    inc         eax
 005A8134    mov         dword ptr [ebp-24],eax
 005A8137    mov         dword ptr [ebp-10],0
 005A813E    push        400
 005A8143    mov         eax,dword ptr [ebp-10]
 005A8146    push        eax
 005A8147    mov         eax,dword ptr [ebp-8]
 005A814A    mov         eax,dword ptr [eax+8]
 005A814D    push        eax
 005A814E    call        USER32.GetMenuState
 005A8153    mov         word ptr [ebp-1E],ax
 005A8157    push        ebp
 005A8158    mov         eax,dword ptr [ebp-8]
 005A815B    mov         al,byte ptr [eax+4]
 005A815E    push        eax
 005A815F    mov         eax,dword ptr [ebp-8]
 005A8162    mov         eax,dword ptr [eax+8]
 005A8165    mov         ecx,dword ptr [ebp-10]
 005A8168    mov         dx,word ptr [ebp-1E]
 005A816C    call        005A7F10
 005A8171    pop         ecx
 005A8172    test        al,al
>005A8174    je          005A81C7
 005A8176    test        byte ptr [ebp-1E],2
>005A817A    je          005A818B
 005A817C    mov         eax,dword ptr [ebp-8]
 005A817F    mov         dword ptr [eax+0C],10000
>005A8186    jmp         005A8217
 005A818B    cmp         dword ptr [ebp-14],0
>005A818F    jge         005A81A3
 005A8191    mov         eax,dword ptr [ebp-10]
 005A8194    mov         dword ptr [ebp-14],eax
 005A8197    mov         eax,dword ptr [ebp-8]
 005A819A    mov         dword ptr [eax+0C],2
>005A81A1    jmp         005A81AD
 005A81A3    mov         eax,dword ptr [ebp-8]
 005A81A6    mov         dword ptr [eax+0C],3
 005A81AD    test        byte ptr [ebp-1E],80
>005A81B1    je          005A81BB
 005A81B3    mov         eax,dword ptr [ebp-10]
 005A81B6    mov         dword ptr [ebp-18],eax
>005A81B9    jmp         005A81C7
 005A81BB    cmp         dword ptr [ebp-18],0
>005A81BF    jl          005A81C7
 005A81C1    mov         eax,dword ptr [ebp-10]
 005A81C4    mov         dword ptr [ebp-1C],eax
 005A81C7    inc         dword ptr [ebp-10]
 005A81CA    dec         dword ptr [ebp-24]
>005A81CD    jne         005A813E
 005A81D3    mov         eax,dword ptr [ebp-8]
 005A81D6    cmp         dword ptr [eax+0C],2
>005A81DA    jne         005A81F0
 005A81DC    mov         eax,dword ptr [ebp-8]
 005A81DF    mov         eax,dword ptr [eax+0C]
 005A81E2    shl         eax,10
 005A81E5    or          eax,dword ptr [ebp-14]
 005A81E8    mov         edx,dword ptr [ebp-8]
 005A81EB    mov         dword ptr [edx+0C],eax
>005A81EE    jmp         005A8217
 005A81F0    mov         eax,dword ptr [ebp-8]
 005A81F3    cmp         dword ptr [eax+0C],3
>005A81F7    jne         005A8217
 005A81F9    cmp         dword ptr [ebp-1C],0
>005A81FD    jge         005A8205
 005A81FF    mov         eax,dword ptr [ebp-14]
 005A8202    mov         dword ptr [ebp-1C],eax
 005A8205    mov         eax,dword ptr [ebp-8]
 005A8208    mov         eax,dword ptr [eax+0C]
 005A820B    shl         eax,10
 005A820E    or          eax,dword ptr [ebp-1C]
 005A8211    mov         edx,dword ptr [ebp-8]
 005A8214    mov         dword ptr [edx+0C],eax
 005A8217    mov         esp,ebp
 005A8219    pop         ebp
 005A821A    ret
end;*}

//005A821C
{*function sub_005A821C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005A821C    push        ebp
 005A821D    mov         ebp,esp
 005A821F    add         esp,0FFFFFFE8
 005A8222    mov         dword ptr [ebp-0C],ecx
 005A8225    mov         dword ptr [ebp-8],edx
 005A8228    mov         dword ptr [ebp-4],eax
 005A822B    mov         eax,dword ptr [ebp-4]
 005A822E    call        005A7690
 005A8233    test        al,al
>005A8235    je          005A82D4
 005A823B    xor         eax,eax
 005A823D    mov         dword ptr [ebp-14],eax
 005A8240    mov         eax,dword ptr [ebp+8]
 005A8243    push        eax
 005A8244    mov         eax,dword ptr [ebp-0C]
 005A8247    push        eax
 005A8248    mov         eax,dword ptr [ebp-8]
 005A824B    push        eax
 005A824C    call        USER32.GetMenuState
 005A8251    mov         word ptr [ebp-16],ax
 005A8255    test        byte ptr [ebp-16],10
>005A8259    je          005A827D
 005A825B    mov         eax,dword ptr [ebp-0C]
 005A825E    push        eax
 005A825F    mov         eax,dword ptr [ebp-8]
 005A8262    push        eax
 005A8263    call        USER32.GetSubMenu
 005A8268    mov         dword ptr [ebp-8],eax
 005A826B    mov         cl,1
 005A826D    mov         edx,dword ptr [ebp-8]
 005A8270    mov         eax,dword ptr [ebp-4]
 005A8273    call        005A7480
 005A8278    mov         dword ptr [ebp-14],eax
>005A827B    jmp         005A82A3
 005A827D    mov         eax,dword ptr [ebp-0C]
 005A8280    push        eax
 005A8281    mov         eax,dword ptr [ebp-8]
 005A8284    push        eax
 005A8285    call        USER32.GetMenuItemID
 005A828A    mov         dword ptr [ebp-0C],eax
 005A828D    cmp         dword ptr [ebp-0C],0FFFFFFFF
>005A8291    je          005A82A3
 005A8293    xor         ecx,ecx
 005A8295    mov         edx,dword ptr [ebp-0C]
 005A8298    mov         eax,dword ptr [ebp-4]
 005A829B    call        005A7480
 005A82A0    mov         dword ptr [ebp-14],eax
 005A82A3    cmp         dword ptr [ebp-14],0
>005A82A7    je          005A82CD
 005A82A9    mov         eax,dword ptr [ebp+10]
 005A82AC    mov         byte ptr [eax],0
 005A82AF    mov         eax,dword ptr [ebp-14]
 005A82B2    mov         edx,dword ptr [eax+30]
 005A82B5    mov         ecx,dword ptr [ebp+0C]
 005A82B8    mov         eax,dword ptr [ebp+10]
 005A82BB    call        0065883C
 005A82C0    mov         eax,dword ptr [ebp+10]
 005A82C3    call        StrLen
 005A82C8    mov         dword ptr [ebp-10],eax
>005A82CB    jmp         005A82F0
 005A82CD    xor         eax,eax
 005A82CF    mov         dword ptr [ebp-10],eax
>005A82D2    jmp         005A82F0
 005A82D4    mov         eax,dword ptr [ebp+8]
 005A82D7    push        eax
 005A82D8    mov         eax,dword ptr [ebp+0C]
 005A82DB    push        eax
 005A82DC    mov         eax,dword ptr [ebp+10]
 005A82DF    push        eax
 005A82E0    mov         eax,dword ptr [ebp-0C]
 005A82E3    push        eax
 005A82E4    mov         eax,dword ptr [ebp-8]
 005A82E7    push        eax
 005A82E8    call        USER32.GetMenuStringA
 005A82ED    mov         dword ptr [ebp-10],eax
 005A82F0    mov         eax,dword ptr [ebp-10]
 005A82F3    mov         esp,ebp
 005A82F5    pop         ebp
 005A82F6    ret         0C
end;*}

//005A82FC
procedure TMainMenu.SetBiDiMode(Value:TBiDiMode);
begin
{*
 005A82FC    push        ebp
 005A82FD    mov         ebp,esp
 005A82FF    add         esp,0FFFFFFF8
 005A8302    mov         byte ptr [ebp-5],dl
 005A8305    mov         dword ptr [ebp-4],eax
 005A8308    mov         eax,dword ptr [ebp-4]
 005A830B    mov         al,byte ptr [eax+30];TMainMenu.FBiDiMode:TBiDiMode
 005A830E    cmp         al,byte ptr [ebp-5]
>005A8311    je          005A832B
 005A8313    mov         al,byte ptr [ebp-5]
 005A8316    mov         edx,dword ptr [ebp-4]
 005A8319    mov         byte ptr [edx+30],al;TMainMenu.FBiDiMode:TBiDiMode
 005A831C    mov         eax,dword ptr [ebp-4]
 005A831F    mov         byte ptr [eax+41],0;TMainMenu.FParentBiDiMode:Boolean
 005A8323    mov         eax,dword ptr [ebp-4]
 005A8326    call        005A79B0
 005A832B    pop         ecx
 005A832C    pop         ecx
 005A832D    pop         ebp
 005A832E    ret
*}
end;

//005A8330
procedure TMainMenu.SetParentBiDiMode(Value:Boolean);
begin
{*
 005A8330    push        ebp
 005A8331    mov         ebp,esp
 005A8333    add         esp,0FFFFFFF8
 005A8336    mov         byte ptr [ebp-5],dl
 005A8339    mov         dword ptr [ebp-4],eax
 005A833C    mov         al,byte ptr [ebp-5]
 005A833F    mov         edx,dword ptr [ebp-4]
 005A8342    cmp         al,byte ptr [edx+41];TMainMenu.FParentBiDiMode:Boolean
>005A8345    je          005A8358
 005A8347    mov         al,byte ptr [ebp-5]
 005A834A    mov         edx,dword ptr [ebp-4]
 005A834D    mov         byte ptr [edx+41],al;TMainMenu.FParentBiDiMode:Boolean
 005A8350    mov         eax,dword ptr [ebp-4]
 005A8353    call        005A835C
 005A8358    pop         ecx
 005A8359    pop         ecx
 005A835A    pop         ebp
 005A835B    ret
*}
end;

//005A835C
procedure sub_005A835C(?:TMenu);
begin
{*
 005A835C    push        ebp
 005A835D    mov         ebp,esp
 005A835F    add         esp,0FFFFFFF8
 005A8362    mov         dword ptr [ebp-4],eax
 005A8365    mov         eax,dword ptr [ebp-4]
 005A8368    cmp         byte ptr [eax+41],0;TMenu.FParentBiDiMode:Boolean
>005A836C    je          005A8397
 005A836E    mov         eax,dword ptr [ebp-4]
 005A8371    mov         eax,dword ptr [eax+38];TMenu.FWindowHandle:HWND
 005A8374    call        005EF778
 005A8379    mov         dword ptr [ebp-8],eax
 005A837C    cmp         dword ptr [ebp-8],0
>005A8380    je          005A8397
 005A8382    mov         eax,dword ptr [ebp-8]
 005A8385    mov         dl,byte ptr [eax+5F]
 005A8388    mov         eax,dword ptr [ebp-4]
 005A838B    call        TMainMenu.SetBiDiMode
 005A8390    mov         eax,dword ptr [ebp-4]
 005A8393    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 005A8397    pop         ecx
 005A8398    pop         ecx
 005A8399    pop         ebp
 005A839A    ret
*}
end;

//005A839C
procedure sub_005A839C(?:TPopupMenu; ?:TCCalendar);
begin
{*
 005A839C    push        ebp
 005A839D    mov         ebp,esp
 005A839F    add         esp,0FFFFFFF8
 005A83A2    mov         dword ptr [ebp-8],edx
 005A83A5    mov         dword ptr [ebp-4],eax
 005A83A8    mov         eax,dword ptr [ebp-4]
 005A83AB    cmp         byte ptr [eax+41],0
>005A83AF    je          005A83D1
 005A83B1    mov         eax,dword ptr [ebp-8]
 005A83B4    mov         edx,dword ptr ds:[5EE128];TControl
 005A83BA    call        @AsClass
 005A83BF    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 005A83C2    mov         eax,dword ptr [ebp-4]
 005A83C5    call        TMainMenu.SetBiDiMode
 005A83CA    mov         eax,dword ptr [ebp-4]
 005A83CD    mov         byte ptr [eax+41],1
 005A83D1    pop         ecx
 005A83D2    pop         ecx
 005A83D3    pop         ebp
 005A83D4    ret
*}
end;

//005A83D8
{*function TMainMenu.GetAutoHotkeys:?;
begin
 005A83D8    push        ebp
 005A83D9    mov         ebp,esp
 005A83DB    add         esp,0FFFFFFF8
 005A83DE    mov         dword ptr [ebp-4],eax
 005A83E1    mov         eax,dword ptr [ebp-4]
 005A83E4    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 005A83E7    movzx       eax,byte ptr [eax+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 005A83EB    mov         al,byte ptr [eax+6E3BD0]
 005A83F1    mov         byte ptr [ebp-5],al
 005A83F4    mov         al,byte ptr [ebp-5]
 005A83F7    pop         ecx
 005A83F8    pop         ecx
 005A83F9    pop         ebp
 005A83FA    ret
end;*}

//005A83FC
procedure TMainMenu.SetAutoHotkeys(Value:TMenuAutoFlag);
begin
{*
 005A83FC    push        ebp
 005A83FD    mov         ebp,esp
 005A83FF    add         esp,0FFFFFFF8
 005A8402    mov         byte ptr [ebp-5],dl
 005A8405    mov         dword ptr [ebp-4],eax
 005A8408    xor         eax,eax
 005A840A    mov         al,byte ptr [ebp-5]
 005A840D    mov         al,byte ptr [eax+6E3BCC]
 005A8413    mov         edx,dword ptr [ebp-4]
 005A8416    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 005A8419    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 005A841C    pop         ecx
 005A841D    pop         ecx
 005A841E    pop         ebp
 005A841F    ret
*}
end;

//005A8420
{*function TMainMenu.GetAutoLineReduction:?;
begin
 005A8420    push        ebp
 005A8421    mov         ebp,esp
 005A8423    add         esp,0FFFFFFF8
 005A8426    mov         dword ptr [ebp-4],eax
 005A8429    mov         eax,dword ptr [ebp-4]
 005A842C    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 005A842F    movzx       eax,byte ptr [eax+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 005A8433    mov         al,byte ptr [eax+6E3BD0]
 005A8439    mov         byte ptr [ebp-5],al
 005A843C    mov         al,byte ptr [ebp-5]
 005A843F    pop         ecx
 005A8440    pop         ecx
 005A8441    pop         ebp
 005A8442    ret
end;*}

//005A8444
procedure TMainMenu.SetAutoLineReduction(Value:TMenuAutoFlag);
begin
{*
 005A8444    push        ebp
 005A8445    mov         ebp,esp
 005A8447    add         esp,0FFFFFFF8
 005A844A    mov         byte ptr [ebp-5],dl
 005A844D    mov         dword ptr [ebp-4],eax
 005A8450    xor         eax,eax
 005A8452    mov         al,byte ptr [ebp-5]
 005A8455    mov         al,byte ptr [eax+6E3BCC]
 005A845B    mov         edx,dword ptr [ebp-4]
 005A845E    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 005A8461    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 005A8464    pop         ecx
 005A8465    pop         ecx
 005A8466    pop         ebp
 005A8467    ret
*}
end;

//005A8468
procedure TMainMenu.SetAutoMerge(Value:Boolean);
begin
{*
 005A8468    push        ebp
 005A8469    mov         ebp,esp
 005A846B    add         esp,0FFFFFFF8
 005A846E    mov         byte ptr [ebp-5],dl
 005A8471    mov         dword ptr [ebp-4],eax
 005A8474    mov         eax,dword ptr [ebp-4]
 005A8477    mov         al,byte ptr [eax+5C];TMainMenu.AutoMerge:Boolean
 005A847A    cmp         al,byte ptr [ebp-5]
>005A847D    je          005A84A6
 005A847F    mov         al,byte ptr [ebp-5]
 005A8482    mov         edx,dword ptr [ebp-4]
 005A8485    mov         byte ptr [edx+5C],al;TMainMenu.AutoMerge:Boolean
 005A8488    mov         eax,dword ptr [ebp-4]
 005A848B    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>005A848F    je          005A84A6
 005A8491    push        0
 005A8493    push        0
 005A8495    push        0B015
 005A849A    mov         eax,dword ptr [ebp-4]
 005A849D    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 005A84A0    push        eax
 005A84A1    call        USER32.SendMessageA
 005A84A6    pop         ecx
 005A84A7    pop         ecx
 005A84A8    pop         ebp
 005A84A9    ret
*}
end;

//005A84AC
{*procedure sub_005A84AC(?:?; ?:?; ?:?);
begin
 005A84AC    push        ebp
 005A84AD    mov         ebp,esp
 005A84AF    add         esp,0FFFFFFF0
 005A84B2    mov         dword ptr [ebp-0C],ecx
 005A84B5    mov         dword ptr [ebp-8],edx
 005A84B8    mov         dword ptr [ebp-4],eax
 005A84BB    mov         eax,dword ptr [ebp-4]
 005A84BE    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>005A84C2    je          005A84FC
 005A84C4    mov         eax,dword ptr [ebp-4]
 005A84C7    call        005A7B60
 005A84CC    mov         byte ptr [ebp-0D],al
 005A84CF    cmp         dword ptr [ebp-0C],0
>005A84D3    jne         005A84EA
 005A84D5    push        0
 005A84D7    push        0
 005A84D9    push        0B015
 005A84DE    mov         eax,dword ptr [ebp-4]
 005A84E1    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 005A84E4    push        eax
 005A84E5    call        USER32.SendMessageA
 005A84EA    cmp         byte ptr [ebp-0D],0
>005A84EE    je          005A84FC
 005A84F0    mov         eax,dword ptr [ebp-4]
 005A84F3    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 005A84F6    push        eax
 005A84F7    call        USER32.DrawMenuBar
 005A84FC    mov         al,byte ptr [ebp+8]
 005A84FF    push        eax
 005A8500    mov         ecx,dword ptr [ebp-0C]
 005A8503    mov         edx,dword ptr [ebp-8]
 005A8506    mov         eax,dword ptr [ebp-4]
 005A8509    call        005A7D40
 005A850E    mov         esp,ebp
 005A8510    pop         ebp
 005A8511    ret         4
end;*}

//005A8514
{*procedure sub_005A8514(?:?; ?:?);
begin
 005A8514    push        ebp
 005A8515    mov         ebp,esp
 005A8517    add         esp,0FFFFFFF8
 005A851A    mov         dword ptr [ebp-8],edx
 005A851D    mov         dword ptr [ebp-4],eax
 005A8520    cmp         dword ptr [ebp-8],0
>005A8524    je          005A8539
 005A8526    mov         eax,dword ptr [ebp-8]
 005A8529    mov         edx,dword ptr [eax+34]
 005A852C    mov         eax,dword ptr [ebp-4]
 005A852F    mov         eax,dword ptr [eax+34]
 005A8532    call        005A3B58
>005A8537    jmp         005A8546
 005A8539    xor         edx,edx
 005A853B    mov         eax,dword ptr [ebp-4]
 005A853E    mov         eax,dword ptr [eax+34]
 005A8541    call        005A3B58
 005A8546    pop         ecx
 005A8547    pop         ecx
 005A8548    pop         ebp
 005A8549    ret
end;*}

//005A854C
{*procedure sub_005A854C(?:?; ?:?);
begin
 005A854C    push        ebp
 005A854D    mov         ebp,esp
 005A854F    add         esp,0FFFFFFF8
 005A8552    mov         dword ptr [ebp-8],edx
 005A8555    mov         dword ptr [ebp-4],eax
 005A8558    cmp         dword ptr [ebp-8],0
>005A855C    je          005A857C
 005A855E    mov         eax,dword ptr [ebp-4]
 005A8561    mov         eax,dword ptr [eax+34]
 005A8564    mov         eax,dword ptr [eax+68]
 005A8567    mov         edx,dword ptr [ebp-8]
 005A856A    cmp         eax,dword ptr [edx+34]
>005A856D    jne         005A857C
 005A856F    xor         edx,edx
 005A8571    mov         eax,dword ptr [ebp-4]
 005A8574    mov         eax,dword ptr [eax+34]
 005A8577    call        005A3B58
 005A857C    pop         ecx
 005A857D    pop         ecx
 005A857E    pop         ebp
 005A857F    ret
end;*}

//005A85B8
{*function sub_005A85B8:?;
begin
 005A85B8    push        ebp
 005A85B9    mov         ebp,esp
 005A85BB    add         esp,0FFFFFFF8
 005A85BE    mov         dword ptr [ebp-4],eax
 005A85C1    mov         eax,dword ptr [ebp-4]
 005A85C4    cmp         dword ptr [eax+58],0;TMainMenu.FOle2Menu:HMENU
>005A85C8    je          005A85D5
 005A85CA    mov         eax,dword ptr [ebp-4]
 005A85CD    mov         eax,dword ptr [eax+58];TMainMenu.FOle2Menu:HMENU
 005A85D0    mov         dword ptr [ebp-8],eax
>005A85D3    jmp         005A85E0
 005A85D5    mov         eax,dword ptr [ebp-4]
 005A85D8    call        005A7328
 005A85DD    mov         dword ptr [ebp-8],eax
 005A85E0    mov         eax,dword ptr [ebp-8]
 005A85E3    pop         ecx
 005A85E4    pop         ecx
 005A85E5    pop         ebp
 005A85E6    ret
end;*}

//005A863C
{*procedure sub_005A863C(?:?);
begin
 005A863C    push        ebp
 005A863D    mov         ebp,esp
 005A863F    add         esp,0FFFFFFC0
 005A8642    push        ebx
 005A8643    xor         ecx,ecx
 005A8645    mov         dword ptr [ebp-40],ecx
 005A8648    mov         dword ptr [ebp-8],edx
 005A864B    mov         dword ptr [ebp-4],eax
 005A864E    xor         eax,eax
 005A8650    push        ebp
 005A8651    push        5A8C23
 005A8656    push        dword ptr fs:[eax]
 005A8659    mov         dword ptr fs:[eax],esp
 005A865C    mov         eax,dword ptr [ebp-8]
 005A865F    mov         eax,dword ptr [eax]
 005A8661    cmp         eax,111
>005A8666    jg          005A8688
>005A8668    je          005A86A4
 005A866A    sub         eax,2B
>005A866D    je          005A891F
 005A8673    dec         eax
>005A8674    je          005A8A3A
 005A867A    sub         eax,27
>005A867D    je          005A87F5
>005A8683    jmp         005A8BE7
 005A8688    sub         eax,117
>005A868D    je          005A86EA
 005A868F    sub         eax,8
>005A8692    je          005A872F
 005A8698    dec         eax
>005A8699    je          005A8B8A
>005A869F    jmp         005A8BE7
 005A86A4    mov         eax,dword ptr [ebp-4]
 005A86A7    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A86AA    dec         eax
 005A86AB    test        eax,eax
>005A86AD    jl          005A8BE7
 005A86B3    inc         eax
 005A86B4    mov         dword ptr [ebp-2C],eax
 005A86B7    mov         dword ptr [ebp-0C],0
 005A86BE    mov         edx,dword ptr [ebp-0C]
 005A86C1    mov         eax,dword ptr [ebp-4]
 005A86C4    call        TList.Get
 005A86C9    mov         edx,dword ptr [ebp-8]
 005A86CC    mov         dx,word ptr [edx+4]
 005A86D0    call        005A7554
 005A86D5    test        al,al
>005A86D7    jne         005A8C0D
 005A86DD    inc         dword ptr [ebp-0C]
 005A86E0    dec         dword ptr [ebp-2C]
>005A86E3    jne         005A86BE
>005A86E5    jmp         005A8BE7
 005A86EA    mov         eax,dword ptr [ebp-4]
 005A86ED    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A86F0    dec         eax
 005A86F1    test        eax,eax
>005A86F3    jl          005A8BE7
 005A86F9    inc         eax
 005A86FA    mov         dword ptr [ebp-2C],eax
 005A86FD    mov         dword ptr [ebp-0C],0
 005A8704    mov         edx,dword ptr [ebp-0C]
 005A8707    mov         eax,dword ptr [ebp-4]
 005A870A    call        TList.Get
 005A870F    mov         edx,dword ptr [ebp-8]
 005A8712    mov         edx,dword ptr [edx+4]
 005A8715    call        005A7590
 005A871A    test        al,al
>005A871C    jne         005A8C0D
 005A8722    inc         dword ptr [ebp-0C]
 005A8725    dec         dword ptr [ebp-2C]
>005A8728    jne         005A8704
>005A872A    jmp         005A8BE7
 005A872F    mov         byte ptr [ebp-15],0
 005A8733    mov         eax,dword ptr [ebp-8]
 005A8736    test        byte ptr [eax+6],10
>005A873A    je          005A8740
 005A873C    mov         byte ptr [ebp-15],1
 005A8740    mov         eax,dword ptr [ebp-4]
 005A8743    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A8746    dec         eax
 005A8747    test        eax,eax
>005A8749    jl          005A87E2
 005A874F    inc         eax
 005A8750    mov         dword ptr [ebp-2C],eax
 005A8753    mov         dword ptr [ebp-0C],0
 005A875A    cmp         byte ptr [ebp-15],1
>005A875E    jne         005A878B
 005A8760    mov         eax,dword ptr [ebp-8]
 005A8763    cmp         dword ptr [eax+8],0
>005A8767    je          005A8782
 005A8769    mov         eax,dword ptr [ebp-8]
 005A876C    movzx       eax,word ptr [eax+4]
 005A8770    push        eax
 005A8771    mov         eax,dword ptr [ebp-8]
 005A8774    mov         eax,dword ptr [eax+8]
 005A8777    push        eax
 005A8778    call        USER32.GetSubMenu
 005A877D    mov         dword ptr [ebp-10],eax
>005A8780    jmp         005A8795
 005A8782    mov         dword ptr [ebp-10],0FFFFFFFF
>005A8789    jmp         005A8795
 005A878B    mov         eax,dword ptr [ebp-8]
 005A878E    movzx       eax,word ptr [eax+4]
 005A8792    mov         dword ptr [ebp-10],eax
 005A8795    mov         edx,dword ptr [ebp-0C]
 005A8798    mov         eax,dword ptr [ebp-4]
 005A879B    call        TList.Get
 005A87A0    mov         cl,byte ptr [ebp-15]
 005A87A3    mov         edx,dword ptr [ebp-10]
 005A87A6    call        005A7480
 005A87AB    mov         dword ptr [ebp-14],eax
 005A87AE    cmp         dword ptr [ebp-14],0
>005A87B2    je          005A87D6
 005A87B4    lea         edx,[ebp-40]
 005A87B7    mov         eax,dword ptr [ebp-14]
 005A87BA    mov         eax,dword ptr [eax+58]
 005A87BD    call        005EFA5C
 005A87C2    mov         edx,dword ptr [ebp-40]
 005A87C5    mov         eax,[006E9DCC];^Application:TApplication
 005A87CA    mov         eax,dword ptr [eax]
 005A87CC    call        005D8E74
>005A87D1    jmp         005A8C0D
 005A87D6    inc         dword ptr [ebp-0C]
 005A87D9    dec         dword ptr [ebp-2C]
>005A87DC    jne         005A875A
 005A87E2    mov         eax,[006E9DCC];^Application:TApplication
 005A87E7    mov         eax,dword ptr [eax]
 005A87E9    xor         edx,edx
 005A87EB    call        005D8E74
>005A87F0    jmp         005A8BE7
 005A87F5    mov         eax,dword ptr [ebp-8]
 005A87F8    mov         eax,dword ptr [eax+8]
 005A87FB    mov         dword ptr [ebp-30],eax
 005A87FE    mov         eax,dword ptr [ebp-4]
 005A8801    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A8804    dec         eax
 005A8805    test        eax,eax
>005A8807    jl          005A8BE7
 005A880D    inc         eax
 005A880E    mov         dword ptr [ebp-2C],eax
 005A8811    mov         dword ptr [ebp-0C],0
 005A8818    mov         edx,dword ptr [ebp-0C]
 005A881B    mov         eax,dword ptr [ebp-4]
 005A881E    call        TList.Get
 005A8823    mov         edx,dword ptr [eax]
 005A8825    call        dword ptr [edx+34]
 005A8828    mov         edx,dword ptr [ebp-30]
 005A882B    cmp         eax,dword ptr [edx+0C]
>005A882E    jne         005A8843
 005A8830    mov         edx,dword ptr [ebp-0C]
 005A8833    mov         eax,dword ptr [ebp-4]
 005A8836    call        TList.Get
 005A883B    mov         eax,dword ptr [eax+34]
 005A883E    mov         dword ptr [ebp-14],eax
>005A8841    jmp         005A885E
 005A8843    mov         edx,dword ptr [ebp-0C]
 005A8846    mov         eax,dword ptr [ebp-4]
 005A8849    call        TList.Get
 005A884E    mov         edx,dword ptr [ebp-30]
 005A8851    mov         edx,dword ptr [edx+0C]
 005A8854    mov         cl,1
 005A8856    call        005A7480
 005A885B    mov         dword ptr [ebp-14],eax
 005A885E    cmp         dword ptr [ebp-14],0
>005A8862    je          005A890E
 005A8868    mov         edx,dword ptr [ebp-0C]
 005A886B    mov         eax,dword ptr [ebp-4]
 005A886E    call        TList.Get
 005A8873    mov         edx,dword ptr [ebp-30]
 005A8876    mov         edx,dword ptr [edx+8]
 005A8879    mov         cl,1
 005A887B    call        005A74BC
 005A8880    mov         dword ptr [ebp-1C],eax
 005A8883    cmp         dword ptr [ebp-1C],0
>005A8887    jne         005A88A4
 005A8889    mov         edx,dword ptr [ebp-0C]
 005A888C    mov         eax,dword ptr [ebp-4]
 005A888F    call        TList.Get
 005A8894    mov         edx,dword ptr [ebp-30]
 005A8897    mov         edx,dword ptr [edx+0C]
 005A889A    xor         ecx,ecx
 005A889C    call        005A74BC
 005A88A1    mov         dword ptr [ebp-1C],eax
 005A88A4    mov         eax,[006E9DD0];^Screen:TScreen
 005A88A9    mov         eax,dword ptr [eax]
 005A88AB    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>005A88AF    je          005A8C0D
 005A88B5    cmp         dword ptr [ebp-1C],0
>005A88B9    jne         005A88CE
 005A88BB    mov         eax,[006E9DD0];^Screen:TScreen
 005A88C0    mov         eax,dword ptr [eax]
 005A88C2    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005A88C5    mov         eax,dword ptr [eax+158];TForm.HelpContext:THelpContext
 005A88CB    mov         dword ptr [ebp-1C],eax
 005A88CE    mov         eax,[006E9DD0];^Screen:TScreen
 005A88D3    mov         eax,dword ptr [eax]
 005A88D5    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005A88D8    test        byte ptr [eax+228],8;TForm.FBorderIcons:TBorderIcons
>005A88DF    je          005A88FA
 005A88E1    mov         eax,[006E9DCC];^Application:TApplication
 005A88E6    mov         eax,dword ptr [eax]
 005A88E8    mov         ecx,dword ptr [ebp-1C]
 005A88EB    mov         edx,8
 005A88F0    call        005D8A88
>005A88F5    jmp         005A8C0D
 005A88FA    mov         eax,[006E9DCC];^Application:TApplication
 005A88FF    mov         eax,dword ptr [eax]
 005A8901    mov         edx,dword ptr [ebp-1C]
 005A8904    call        005D8A10
>005A8909    jmp         005A8C0D
 005A890E    inc         dword ptr [ebp-0C]
 005A8911    dec         dword ptr [ebp-2C]
>005A8914    jne         005A8818
>005A891A    jmp         005A8BE7
 005A891F    mov         eax,dword ptr [ebp-8]
 005A8922    mov         eax,dword ptr [eax+8]
 005A8925    mov         dword ptr [ebp-34],eax
 005A8928    mov         eax,dword ptr [ebp-4]
 005A892B    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A892E    dec         eax
 005A892F    test        eax,eax
>005A8931    jl          005A8BE7
 005A8937    inc         eax
 005A8938    mov         dword ptr [ebp-2C],eax
 005A893B    mov         dword ptr [ebp-0C],0
 005A8942    mov         edx,dword ptr [ebp-0C]
 005A8945    mov         eax,dword ptr [ebp-4]
 005A8948    call        TList.Get
 005A894D    mov         edx,dword ptr [ebp-34]
 005A8950    mov         edx,dword ptr [edx+8]
 005A8953    xor         ecx,ecx
 005A8955    call        005A7480
 005A895A    mov         dword ptr [ebp-14],eax
 005A895D    cmp         dword ptr [ebp-14],0
>005A8961    je          005A8A29
 005A8967    mov         dl,1
 005A8969    mov         eax,[005ED808];TControlCanvas
 005A896E    call        TCanvas.Create;TControlCanvas.Create
 005A8973    mov         dword ptr [ebp-20],eax
 005A8976    xor         eax,eax
 005A8978    push        ebp
 005A8979    push        5A8A22
 005A897E    push        dword ptr fs:[eax]
 005A8981    mov         dword ptr fs:[eax],esp
 005A8984    mov         eax,dword ptr [ebp-34]
 005A8987    mov         eax,dword ptr [eax+18]
 005A898A    push        eax
 005A898B    call        GDI32.SaveDC
 005A8990    mov         dword ptr [ebp-24],eax
 005A8993    xor         eax,eax
 005A8995    push        ebp
 005A8996    push        5A8A05
 005A899B    push        dword ptr fs:[eax]
 005A899E    mov         dword ptr fs:[eax],esp
 005A89A1    mov         eax,dword ptr [ebp-34]
 005A89A4    mov         edx,dword ptr [eax+18]
 005A89A7    mov         eax,dword ptr [ebp-20]
 005A89AA    call        TCanvas.SetHandle
 005A89AF    mov         eax,[006E9DD0];^Screen:TScreen
 005A89B4    mov         eax,dword ptr [eax]
 005A89B6    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005A89BC    mov         eax,dword ptr [ebp-20]
 005A89BF    call        TCanvas.SetFont
 005A89C4    mov         eax,dword ptr [ebp-34]
 005A89C7    mov         ax,word ptr [eax+10]
 005A89CB    push        eax
 005A89CC    mov         eax,dword ptr [ebp-34]
 005A89CF    lea         ecx,[eax+1C]
 005A89D2    mov         edx,dword ptr [ebp-20]
 005A89D5    mov         eax,dword ptr [ebp-14]
 005A89D8    call        005A8FDC
 005A89DD    xor         eax,eax
 005A89DF    pop         edx
 005A89E0    pop         ecx
 005A89E1    pop         ecx
 005A89E2    mov         dword ptr fs:[eax],edx
 005A89E5    push        5A8A0C
 005A89EA    xor         edx,edx
 005A89EC    mov         eax,dword ptr [ebp-20]
 005A89EF    call        TCanvas.SetHandle
 005A89F4    mov         eax,dword ptr [ebp-24]
 005A89F7    push        eax
 005A89F8    mov         eax,dword ptr [ebp-34]
 005A89FB    mov         eax,dword ptr [eax+18]
 005A89FE    push        eax
 005A89FF    call        GDI32.RestoreDC
 005A8A04    ret
>005A8A05    jmp         @HandleFinally
>005A8A0A    jmp         005A89EA
 005A8A0C    xor         eax,eax
 005A8A0E    pop         edx
 005A8A0F    pop         ecx
 005A8A10    pop         ecx
 005A8A11    mov         dword ptr fs:[eax],edx
 005A8A14    push        5A8C0D
 005A8A19    mov         eax,dword ptr [ebp-20]
 005A8A1C    call        TObject.Free
 005A8A21    ret
>005A8A22    jmp         @HandleFinally
>005A8A27    jmp         005A8A19
 005A8A29    inc         dword ptr [ebp-0C]
 005A8A2C    dec         dword ptr [ebp-2C]
>005A8A2F    jne         005A8942
>005A8A35    jmp         005A8BE7
 005A8A3A    mov         eax,dword ptr [ebp-8]
 005A8A3D    mov         eax,dword ptr [eax+8]
 005A8A40    mov         dword ptr [ebp-38],eax
 005A8A43    mov         eax,dword ptr [ebp-4]
 005A8A46    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A8A49    dec         eax
 005A8A4A    test        eax,eax
>005A8A4C    jl          005A8BE7
 005A8A52    inc         eax
 005A8A53    mov         dword ptr [ebp-2C],eax
 005A8A56    mov         dword ptr [ebp-0C],0
 005A8A5D    mov         edx,dword ptr [ebp-0C]
 005A8A60    mov         eax,dword ptr [ebp-4]
 005A8A63    call        TList.Get
 005A8A68    mov         edx,dword ptr [ebp-38]
 005A8A6B    mov         edx,dword ptr [edx+8]
 005A8A6E    xor         ecx,ecx
 005A8A70    call        005A7480
 005A8A75    mov         dword ptr [ebp-14],eax
 005A8A78    cmp         dword ptr [ebp-14],0
>005A8A7C    je          005A8B7C
 005A8A82    mov         eax,dword ptr [ebp-4]
 005A8A85    mov         eax,dword ptr [eax+10];TPopupList......FWindow:HWND
 005A8A88    push        eax
 005A8A89    call        USER32.GetWindowDC
 005A8A8E    mov         dword ptr [ebp-28],eax
 005A8A91    xor         eax,eax
 005A8A93    push        ebp
 005A8A94    push        5A8B75
 005A8A99    push        dword ptr fs:[eax]
 005A8A9C    mov         dword ptr fs:[eax],esp
 005A8A9F    mov         dl,1
 005A8AA1    mov         eax,[005ED808];TControlCanvas
 005A8AA6    call        TCanvas.Create;TControlCanvas.Create
 005A8AAB    mov         dword ptr [ebp-20],eax
 005A8AAE    xor         eax,eax
 005A8AB0    push        ebp
 005A8AB1    push        5A8B50
 005A8AB6    push        dword ptr fs:[eax]
 005A8AB9    mov         dword ptr fs:[eax],esp
 005A8ABC    mov         eax,dword ptr [ebp-28]
 005A8ABF    push        eax
 005A8AC0    call        GDI32.SaveDC
 005A8AC5    mov         dword ptr [ebp-24],eax
 005A8AC8    xor         eax,eax
 005A8ACA    push        ebp
 005A8ACB    push        5A8B33
 005A8AD0    push        dword ptr fs:[eax]
 005A8AD3    mov         dword ptr fs:[eax],esp
 005A8AD6    mov         edx,dword ptr [ebp-28]
 005A8AD9    mov         eax,dword ptr [ebp-20]
 005A8ADC    call        TCanvas.SetHandle
 005A8AE1    mov         eax,[006E9DD0];^Screen:TScreen
 005A8AE6    mov         eax,dword ptr [eax]
 005A8AE8    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005A8AEE    mov         eax,dword ptr [ebp-20]
 005A8AF1    call        TCanvas.SetFont
 005A8AF6    mov         eax,dword ptr [ebp-38]
 005A8AF9    add         eax,10
 005A8AFC    push        eax
 005A8AFD    mov         eax,dword ptr [ebp-38]
 005A8B00    lea         ecx,[eax+0C]
 005A8B03    mov         edx,dword ptr [ebp-20]
 005A8B06    mov         eax,dword ptr [ebp-14]
 005A8B09    mov         ebx,dword ptr [eax]
 005A8B0B    call        dword ptr [ebx+38]
 005A8B0E    xor         eax,eax
 005A8B10    pop         edx
 005A8B11    pop         ecx
 005A8B12    pop         ecx
 005A8B13    mov         dword ptr fs:[eax],edx
 005A8B16    push        5A8B3A
 005A8B1B    xor         edx,edx
 005A8B1D    mov         eax,dword ptr [ebp-20]
 005A8B20    call        TCanvas.SetHandle
 005A8B25    mov         eax,dword ptr [ebp-24]
 005A8B28    push        eax
 005A8B29    mov         eax,dword ptr [ebp-28]
 005A8B2C    push        eax
 005A8B2D    call        GDI32.RestoreDC
 005A8B32    ret
>005A8B33    jmp         @HandleFinally
>005A8B38    jmp         005A8B1B
 005A8B3A    xor         eax,eax
 005A8B3C    pop         edx
 005A8B3D    pop         ecx
 005A8B3E    pop         ecx
 005A8B3F    mov         dword ptr fs:[eax],edx
 005A8B42    push        5A8B57
 005A8B47    mov         eax,dword ptr [ebp-20]
 005A8B4A    call        TObject.Free
 005A8B4F    ret
>005A8B50    jmp         @HandleFinally
>005A8B55    jmp         005A8B47
 005A8B57    xor         eax,eax
 005A8B59    pop         edx
 005A8B5A    pop         ecx
 005A8B5B    pop         ecx
 005A8B5C    mov         dword ptr fs:[eax],edx
 005A8B5F    push        5A8C0D
 005A8B64    mov         eax,dword ptr [ebp-28]
 005A8B67    push        eax
 005A8B68    mov         eax,dword ptr [ebp-4]
 005A8B6B    mov         eax,dword ptr [eax+10];TPopupList.......FWindow:HWND
 005A8B6E    push        eax
 005A8B6F    call        USER32.ReleaseDC
 005A8B74    ret
>005A8B75    jmp         @HandleFinally
>005A8B7A    jmp         005A8B64
 005A8B7C    inc         dword ptr [ebp-0C]
 005A8B7F    dec         dword ptr [ebp-2C]
>005A8B82    jne         005A8A5D
>005A8B88    jmp         005A8BE7
 005A8B8A    mov         eax,dword ptr [ebp-4]
 005A8B8D    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 005A8B90    dec         eax
 005A8B91    test        eax,eax
>005A8B93    jl          005A8BE7
 005A8B95    inc         eax
 005A8B96    mov         dword ptr [ebp-2C],eax
 005A8B99    mov         dword ptr [ebp-0C],0
 005A8BA0    mov         edx,dword ptr [ebp-0C]
 005A8BA3    mov         eax,dword ptr [ebp-4]
 005A8BA6    call        TList.Get
 005A8BAB    mov         dword ptr [ebp-3C],eax
 005A8BAE    mov         eax,dword ptr [ebp-3C]
 005A8BB1    mov         edx,dword ptr [eax]
 005A8BB3    call        dword ptr [edx+34]
 005A8BB6    mov         edx,dword ptr [ebp-8]
 005A8BB9    cmp         eax,dword ptr [edx+8]
>005A8BBC    je          005A8BD2
 005A8BBE    mov         edx,dword ptr [ebp-8]
 005A8BC1    mov         edx,dword ptr [edx+8]
 005A8BC4    mov         cl,1
 005A8BC6    mov         eax,dword ptr [ebp-3C]
 005A8BC9    call        005A7480
 005A8BCE    test        eax,eax
>005A8BD0    je          005A8BDF
 005A8BD2    mov         edx,dword ptr [ebp-8]
 005A8BD5    mov         eax,dword ptr [ebp-3C]
 005A8BD8    call        005A8024
>005A8BDD    jmp         005A8C0D
 005A8BDF    inc         dword ptr [ebp-0C]
 005A8BE2    dec         dword ptr [ebp-2C]
>005A8BE5    jne         005A8BA0
 005A8BE7    mov         eax,dword ptr [ebp-8]
 005A8BEA    mov         eax,dword ptr [eax+8]
 005A8BED    push        eax
 005A8BEE    mov         eax,dword ptr [ebp-8]
 005A8BF1    mov         eax,dword ptr [eax+4]
 005A8BF4    push        eax
 005A8BF5    mov         eax,dword ptr [ebp-8]
 005A8BF8    mov         eax,dword ptr [eax]
 005A8BFA    push        eax
 005A8BFB    mov         eax,dword ptr [ebp-4]
 005A8BFE    mov         eax,dword ptr [eax+10];TPopupList........FWindow:HWND
 005A8C01    push        eax
 005A8C02    call        USER32.DefWindowProcA
 005A8C07    mov         edx,dword ptr [ebp-8]
 005A8C0A    mov         dword ptr [edx+0C],eax
 005A8C0D    xor         eax,eax
 005A8C0F    pop         edx
 005A8C10    pop         ecx
 005A8C11    pop         ecx
 005A8C12    mov         dword ptr fs:[eax],edx
 005A8C15    push        5A8C2A
 005A8C1A    lea         eax,[ebp-40]
 005A8C1D    call        @LStrClr
 005A8C22    ret
>005A8C23    jmp         @HandleFinally
>005A8C28    jmp         005A8C1A
 005A8C2A    pop         ebx
 005A8C2B    mov         esp,ebp
 005A8C2D    pop         ebp
 005A8C2E    ret
end;*}

//005A8C30
procedure sub_005A8C30(?:TPopupList; ?:TPopupMenu);
begin
{*
 005A8C30    push        ebp
 005A8C31    mov         ebp,esp
 005A8C33    add         esp,0FFFFFFF8
 005A8C36    mov         dword ptr [ebp-8],edx
 005A8C39    mov         dword ptr [ebp-4],eax
 005A8C3C    mov         eax,dword ptr [ebp-4]
 005A8C3F    cmp         dword ptr [eax+8],0
>005A8C43    jne         005A8C59
 005A8C45    mov         eax,dword ptr [ebp-4]
 005A8C48    push        eax
 005A8C49    push        5A85E8
 005A8C4E    call        00651AE8
 005A8C53    mov         edx,dword ptr [ebp-4]
 005A8C56    mov         dword ptr [edx+10],eax
 005A8C59    mov         edx,dword ptr [ebp-8]
 005A8C5C    mov         eax,dword ptr [ebp-4]
 005A8C5F    call        TList.Add
 005A8C64    pop         ecx
 005A8C65    pop         ecx
 005A8C66    pop         ebp
 005A8C67    ret
*}
end;

//005A8C68
procedure sub_005A8C68(?:TPopupList; ?:TPopupMenu);
begin
{*
 005A8C68    push        ebp
 005A8C69    mov         ebp,esp
 005A8C6B    add         esp,0FFFFFFF8
 005A8C6E    mov         dword ptr [ebp-8],edx
 005A8C71    mov         dword ptr [ebp-4],eax
 005A8C74    mov         edx,dword ptr [ebp-8]
 005A8C77    mov         eax,dword ptr [ebp-4]
 005A8C7A    call        TList.Remove
 005A8C7F    mov         eax,dword ptr [ebp-4]
 005A8C82    cmp         dword ptr [eax+8],0
>005A8C86    jne         005A8C93
 005A8C88    mov         eax,dword ptr [ebp-4]
 005A8C8B    mov         eax,dword ptr [eax+10]
 005A8C8E    call        00651BA4
 005A8C93    pop         ecx
 005A8C94    pop         ecx
 005A8C95    pop         ebp
 005A8C96    ret
*}
end;

//005A8C98
constructor TPopupMenu.Create(AOwner:TComponent);
begin
{*
 005A8C98    push        ebp
 005A8C99    mov         ebp,esp
 005A8C9B    add         esp,0FFFFFFF4
 005A8C9E    test        dl,dl
>005A8CA0    je          005A8CAA
 005A8CA2    add         esp,0FFFFFFF0
 005A8CA5    call        @ClassCreate
 005A8CAA    mov         dword ptr [ebp-0C],ecx
 005A8CAD    mov         byte ptr [ebp-5],dl
 005A8CB0    mov         dword ptr [ebp-4],eax
 005A8CB3    mov         ecx,dword ptr [ebp-0C]
 005A8CB6    xor         edx,edx
 005A8CB8    mov         eax,dword ptr [ebp-4]
 005A8CBB    call        TMenu.Create
 005A8CC0    mov         eax,dword ptr [ebp-4]
 005A8CC3    mov         dword ptr [eax+58],0FFFFFFFF;TPopupMenu.FPopupPoint:TPoint
 005A8CCA    mov         eax,dword ptr [ebp-4]
 005A8CCD    mov         dword ptr [eax+5C],0FFFFFFFF
 005A8CD4    mov         eax,dword ptr [ebp-4]
 005A8CD7    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8CDA    mov         edx,dword ptr [ebp-4]
 005A8CDD    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TFMain_11011981
 005A8CE3    mov         edx,dword ptr [edx]
 005A8CE5    mov         edx,dword ptr [edx+3C];TPopupMenu.FMenuImage:String
 005A8CE8    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 005A8CEE    mov         eax,[006E9DCC];^Application:TApplication
 005A8CF3    mov         eax,dword ptr [eax]
 005A8CF5    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 005A8CF8    mov         edx,dword ptr [ebp-4]
 005A8CFB    mov         dword ptr [edx+38],eax;TPopupMenu.FWindowHandle:HWND
 005A8CFE    mov         eax,dword ptr [ebp-4]
 005A8D01    mov         byte ptr [eax+61],1;TPopupMenu.AutoPopup:Boolean
 005A8D05    mov         edx,dword ptr [ebp-4]
 005A8D08    mov         eax,[006ECCFC];0x0 PopupList:TPopupList
 005A8D0D    call        005A8C30
 005A8D12    mov         eax,dword ptr [ebp-4]
 005A8D15    cmp         byte ptr [ebp-5],0
>005A8D19    je          005A8D2A
 005A8D1B    call        @AfterConstruction
 005A8D20    pop         dword ptr fs:[0]
 005A8D27    add         esp,0C
 005A8D2A    mov         eax,dword ptr [ebp-4]
 005A8D2D    mov         esp,ebp
 005A8D2F    pop         ebp
 005A8D30    ret
*}
end;

//005A8D34
destructor TPopupMenu.Destroy;
begin
{*
 005A8D34    push        ebp
 005A8D35    mov         ebp,esp
 005A8D37    add         esp,0FFFFFFF8
 005A8D3A    call        @BeforeDestruction
 005A8D3F    mov         byte ptr [ebp-5],dl
 005A8D42    mov         dword ptr [ebp-4],eax
 005A8D45    mov         edx,dword ptr [ebp-4]
 005A8D48    mov         eax,[006ECCFC];0x0 PopupList:TPopupList
 005A8D4D    call        005A8C68
 005A8D52    mov         dl,byte ptr [ebp-5]
 005A8D55    and         dl,0FC
 005A8D58    mov         eax,dword ptr [ebp-4]
 005A8D5B    call        TMenu.Destroy
 005A8D60    cmp         byte ptr [ebp-5],0
>005A8D64    jle         005A8D6E
 005A8D66    mov         eax,dword ptr [ebp-4]
 005A8D69    call        @ClassDestroy
 005A8D6E    pop         ecx
 005A8D6F    pop         ecx
 005A8D70    pop         ebp
 005A8D71    ret
*}
end;

//005A8D74
{*procedure sub_005A8D74(?:?);
begin
 005A8D74    push        ebp
 005A8D75    mov         ebp,esp
 005A8D77    add         esp,0FFFFFFF8
 005A8D7A    push        ebx
 005A8D7B    mov         dword ptr [ebp-8],edx
 005A8D7E    mov         dword ptr [ebp-4],eax
 005A8D81    mov         eax,dword ptr [ebp-4]
 005A8D84    cmp         word ptr [eax+72],0;TPopupMenu.?f72:word
>005A8D89    je          005A8D97
 005A8D8B    mov         ebx,dword ptr [ebp-4]
 005A8D8E    mov         edx,dword ptr [ebp-8]
 005A8D91    mov         eax,dword ptr [ebx+74];TPopupMenu.?f74:dword
 005A8D94    call        dword ptr [ebx+70];TPopupMenu.OnPopup
 005A8D97    pop         ebx
 005A8D98    pop         ecx
 005A8D99    pop         ecx
 005A8D9A    pop         ebp
 005A8D9B    ret
end;*}

//005A8D9C
{*function TPopupMenu.GetHelpContext:?;
begin
 005A8D9C    push        ebp
 005A8D9D    mov         ebp,esp
 005A8D9F    add         esp,0FFFFFFF8
 005A8DA2    mov         dword ptr [ebp-4],eax
 005A8DA5    mov         eax,dword ptr [ebp-4]
 005A8DA8    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8DAB    mov         eax,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 005A8DAE    mov         dword ptr [ebp-8],eax
 005A8DB1    mov         eax,dword ptr [ebp-8]
 005A8DB4    pop         ecx
 005A8DB5    pop         ecx
 005A8DB6    pop         ebp
 005A8DB7    ret
end;*}

//005A8DB8
procedure TPopupMenu.SetHelpContext(Value:THelpContext);
begin
{*
 005A8DB8    push        ebp
 005A8DB9    mov         ebp,esp
 005A8DBB    add         esp,0FFFFFFF8
 005A8DBE    mov         dword ptr [ebp-8],edx
 005A8DC1    mov         dword ptr [ebp-4],eax
 005A8DC4    mov         eax,dword ptr [ebp-4]
 005A8DC7    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8DCA    mov         edx,dword ptr [ebp-8]
 005A8DCD    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 005A8DD0    pop         ecx
 005A8DD1    pop         ecx
 005A8DD2    pop         ebp
 005A8DD3    ret
*}
end;

//005A8DD4
procedure sub_005A8DD4(?:TPopupMenu);
begin
{*
 005A8DD4    push        ebp
 005A8DD5    mov         ebp,esp
 005A8DD7    add         esp,0FFFFFFF8
 005A8DDA    mov         dword ptr [ebp-4],eax
 005A8DDD    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A8DE2    cmp         byte ptr [eax+0D],0
>005A8DE6    je          005A8E35
 005A8DE8    mov         eax,dword ptr [ebp-4]
 005A8DEB    cmp         byte ptr [eax+41],0
>005A8DEF    je          005A8E35
 005A8DF1    mov         eax,dword ptr [ebp-4]
 005A8DF4    add         eax,58
 005A8DF7    call        005A2A74
 005A8DFC    mov         dword ptr [ebp-8],eax
 005A8DFF    cmp         dword ptr [ebp-8],0
>005A8E03    je          005A8E1C
 005A8E05    mov         eax,dword ptr [ebp-8]
 005A8E08    mov         dl,byte ptr [eax+5F]
 005A8E0B    mov         eax,dword ptr [ebp-4]
 005A8E0E    call        TMainMenu.SetBiDiMode
 005A8E13    mov         eax,dword ptr [ebp-4]
 005A8E16    mov         byte ptr [eax+41],1
>005A8E1A    jmp         005A8E35
 005A8E1C    mov         eax,[006E9DCC];^Application:TApplication
 005A8E21    mov         eax,dword ptr [eax]
 005A8E23    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 005A8E26    mov         eax,dword ptr [ebp-4]
 005A8E29    call        TMainMenu.SetBiDiMode
 005A8E2E    mov         eax,dword ptr [ebp-4]
 005A8E31    mov         byte ptr [eax+41],1
 005A8E35    pop         ecx
 005A8E36    pop         ecx
 005A8E37    pop         ebp
 005A8E38    ret
*}
end;

//005A8E3C
{*function sub_005A8E3C(?:TPopupMenu):?;
begin
 005A8E3C    push        ebp
 005A8E3D    mov         ebp,esp
 005A8E3F    add         esp,0FFFFFFF4
 005A8E42    push        esi
 005A8E43    mov         dword ptr [ebp-4],eax
 005A8E46    mov         byte ptr [ebp-5],0
 005A8E4A    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A8E4F    cmp         byte ptr [eax+0D],0
>005A8E53    je          005A8E9F
 005A8E55    mov         eax,dword ptr [ebp-4]
 005A8E58    cmp         byte ptr [eax+41],0
>005A8E5C    je          005A8E94
 005A8E5E    mov         eax,dword ptr [ebp-4]
 005A8E61    add         eax,58
 005A8E64    call        005A2A74
 005A8E69    mov         dword ptr [ebp-0C],eax
 005A8E6C    cmp         dword ptr [ebp-0C],0
>005A8E70    je          005A8E83
 005A8E72    mov         eax,dword ptr [ebp-0C]
 005A8E75    mov         si,0FFC8
 005A8E79    call        @CallDynaInst
 005A8E7E    mov         byte ptr [ebp-5],al
>005A8E81    jmp         005A8E9F
 005A8E83    mov         eax,[006E9DCC];^Application:TApplication
 005A8E88    mov         eax,dword ptr [eax]
 005A8E8A    call        005D72EC
 005A8E8F    mov         byte ptr [ebp-5],al
>005A8E92    jmp         005A8E9F
 005A8E94    mov         eax,dword ptr [ebp-4]
 005A8E97    cmp         byte ptr [eax+30],1
 005A8E9B    sete        byte ptr [ebp-5]
 005A8E9F    mov         al,byte ptr [ebp-5]
 005A8EA2    pop         esi
 005A8EA3    mov         esp,ebp
 005A8EA5    pop         ebp
 005A8EA6    ret
end;*}

//005A8EA8
{*procedure sub_005A8EA8(?:?; ?:?);
begin
 005A8EA8    push        ebp
 005A8EA9    mov         ebp,esp
 005A8EAB    add         esp,0FFFFFFE8
 005A8EAE    mov         dword ptr [ebp-0C],ecx
 005A8EB1    mov         dword ptr [ebp-8],edx
 005A8EB4    mov         dword ptr [ebp-4],eax
 005A8EB7    lea         ecx,[ebp-18]
 005A8EBA    mov         edx,dword ptr [ebp-0C]
 005A8EBD    mov         eax,dword ptr [ebp-8]
 005A8EC0    call        Point
 005A8EC5    mov         eax,dword ptr [ebp-4]
 005A8EC8    mov         edx,dword ptr [ebp-18]
 005A8ECB    mov         dword ptr [eax+58],edx;TPopupMenu.FPopupPoint:TPoint
 005A8ECE    mov         edx,dword ptr [ebp-14]
 005A8ED1    mov         dword ptr [eax+5C],edx
 005A8ED4    mov         eax,dword ptr [ebp-4]
 005A8ED7    call        005A8DD4
 005A8EDC    mov         edx,dword ptr [ebp-4]
 005A8EDF    mov         eax,dword ptr [ebp-4]
 005A8EE2    mov         ecx,dword ptr [eax]
 005A8EE4    call        dword ptr [ecx+3C];TPopupMenu.sub_005A8D74
 005A8EE7    xor         edx,edx
 005A8EE9    mov         eax,dword ptr [ebp-4]
 005A8EEC    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8EEF    call        005A6A04
 005A8EF4    xor         edx,edx
 005A8EF6    mov         eax,dword ptr [ebp-4]
 005A8EF9    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8EFC    call        005A6F80
 005A8F01    mov         eax,dword ptr [ebp-4]
 005A8F04    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8F07    call        005A3C18
 005A8F0C    mov         eax,dword ptr [ebp-4]
 005A8F0F    call        005A7C1C
 005A8F14    mov         eax,dword ptr [ebp-4]
 005A8F17    call        005A8E3C
 005A8F1C    and         eax,7F
 005A8F1F    lea         eax,[eax+eax*2]
 005A8F22    lea         eax,[eax*2+6E3CA4]
 005A8F29    mov         edx,dword ptr [ebp-4]
 005A8F2C    movzx       edx,byte ptr [edx+60];TPopupMenu.Alignment:TPopupAlignment
 005A8F30    mov         ax,word ptr [eax+edx*2]
 005A8F34    mov         edx,dword ptr [ebp-4]
 005A8F37    movzx       edx,byte ptr [edx+68];TPopupMenu.TrackButton:TTrackButton
 005A8F3B    or          ax,word ptr [edx*2+6E3CB0]
 005A8F43    movzx       eax,ax
 005A8F46    mov         edx,dword ptr [ebp-4]
 005A8F49    movzx       edx,byte ptr [edx+69];TPopupMenu.MenuAnimation:TMenuAnimation
 005A8F4D    shl         edx,0A
 005A8F50    or          eax,edx
 005A8F52    mov         dword ptr [ebp-10],eax
 005A8F55    push        0
 005A8F57    mov         eax,[006ECCFC];0x0 PopupList:TPopupList
 005A8F5C    mov         eax,dword ptr [eax+10];TPopupList.........FWindow:HWND
 005A8F5F    push        eax
 005A8F60    push        0
 005A8F62    mov         eax,dword ptr [ebp-0C]
 005A8F65    push        eax
 005A8F66    mov         eax,dword ptr [ebp-8]
 005A8F69    push        eax
 005A8F6A    mov         eax,dword ptr [ebp-10]
 005A8F6D    push        eax
 005A8F6E    mov         eax,dword ptr [ebp-4]
 005A8F71    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 005A8F74    call        005A3DA0
 005A8F79    push        eax
 005A8F7A    call        USER32.TrackPopupMenu
 005A8F7F    mov         esp,ebp
 005A8F81    pop         ebp
 005A8F82    ret
end;*}

//005A8F84
procedure sub_005A8F84(?:TMenuItemStack; ?:TMenuItem);
begin
{*
 005A8F84    push        ebp
 005A8F85    mov         ebp,esp
 005A8F87    add         esp,0FFFFFFF0
 005A8F8A    mov         dword ptr [ebp-8],edx
 005A8F8D    mov         dword ptr [ebp-4],eax
 005A8F90    mov         eax,dword ptr [ebp-4]
 005A8F93    mov         eax,dword ptr [eax+4];TMenuItemStack..........:TList
 005A8F96    mov         eax,dword ptr [eax+8]
 005A8F99    dec         eax
 005A8F9A    test        eax,eax
>005A8F9C    jl          005A8FD8
 005A8F9E    inc         eax
 005A8F9F    mov         dword ptr [ebp-10],eax
 005A8FA2    mov         dword ptr [ebp-0C],0
 005A8FA9    mov         eax,dword ptr [ebp-4]
 005A8FAC    mov         eax,dword ptr [eax+4];TMenuItemStack...........:TList
 005A8FAF    mov         edx,dword ptr [ebp-0C]
 005A8FB2    call        TList.Get
 005A8FB7    mov         eax,dword ptr [eax]
 005A8FB9    cmp         eax,dword ptr [ebp-8]
>005A8FBC    jne         005A8FD0
 005A8FBE    mov         eax,dword ptr [ebp-4]
 005A8FC1    mov         eax,dword ptr [eax+4];TMenuItemStack............:TList
 005A8FC4    mov         edx,dword ptr [ebp-0C]
 005A8FC7    call        TList.Get
 005A8FCC    xor         edx,edx
 005A8FCE    mov         dword ptr [eax],edx
 005A8FD0    inc         dword ptr [ebp-0C]
 005A8FD3    dec         dword ptr [ebp-10]
>005A8FD6    jne         005A8FA9
 005A8FD8    mov         esp,ebp
 005A8FDA    pop         ebp
 005A8FDB    ret
*}
end;

//005A8FDC
{*procedure sub_005A8FDC(?:?; ?:TControlCanvas; ?:?; ?:?);
begin
 005A8FDC    push        ebp
 005A8FDD    mov         ebp,esp
 005A8FDF    add         esp,0FFFFFFE4
 005A8FE2    push        ebx
 005A8FE3    push        esi
 005A8FE4    push        edi
 005A8FE5    mov         esi,ecx
 005A8FE7    lea         edi,[ebp-1A]
 005A8FEA    movs        dword ptr [edi],dword ptr [esi]
 005A8FEB    movs        dword ptr [edi],dword ptr [esi]
 005A8FEC    movs        dword ptr [edi],dword ptr [esi]
 005A8FED    movs        dword ptr [edi],dword ptr [esi]
 005A8FEE    mov         dword ptr [ebp-8],edx
 005A8FF1    mov         dword ptr [ebp-4],eax
 005A8FF4    mov         eax,[006EA0F0];^gvar_006E4990
 005A8FF9    cmp         dword ptr [eax],4
>005A8FFC    jg          005A9016
 005A8FFE    mov         eax,[006EA0F0];^gvar_006E4990
 005A9003    cmp         dword ptr [eax],4
>005A9006    jne         005A9012
 005A9008    mov         eax,[006EA0F4];^gvar_006E4994
 005A900D    cmp         dword ptr [eax],0
>005A9010    jg          005A9016
 005A9012    xor         eax,eax
>005A9014    jmp         005A9018
 005A9016    mov         al,1
 005A9018    mov         byte ptr [ebp-0A],al
 005A901B    mov         eax,dword ptr [ebp-4]
 005A901E    mov         si,0FFF2
 005A9022    call        @CallDynaInst
 005A9027    mov         edx,dword ptr ds:[5A23E8];TMainMenu
 005A902D    call        @IsClass
 005A9032    mov         byte ptr [ebp-9],al
 005A9035    test        byte ptr [ebp+8],1
>005A9039    je          005A906F
 005A903B    cmp         byte ptr [ebp-9],0
>005A903F    je          005A904D
 005A9041    cmp         byte ptr [ebp-9],0
>005A9045    je          005A906F
 005A9047    cmp         byte ptr [ebp-0A],0
>005A904B    jne         005A906F
 005A904D    mov         edx,8000000D
 005A9052    mov         eax,dword ptr [ebp-8]
 005A9055    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 005A9058    call        TBrush.SetColor
 005A905D    mov         edx,8000000E
 005A9062    mov         eax,dword ptr [ebp-8]
 005A9065    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 005A9068    call        TFont.SetColor
>005A906D    jmp         005A90BD
 005A906F    cmp         byte ptr [ebp-0A],0
>005A9073    je          005A909D
 005A9075    test        byte ptr [ebp+8],80
>005A9079    je          005A909D
 005A907B    mov         edx,80000004
 005A9080    mov         eax,dword ptr [ebp-8]
 005A9083    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 005A9086    call        TBrush.SetColor
 005A908B    mov         edx,80000011
 005A9090    mov         eax,dword ptr [ebp-8]
 005A9093    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 005A9096    call        TFont.SetColor
>005A909B    jmp         005A90BD
 005A909D    mov         edx,80000004
 005A90A2    mov         eax,dword ptr [ebp-8]
 005A90A5    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 005A90A8    call        TBrush.SetColor
 005A90AD    mov         edx,80000007
 005A90B2    mov         eax,dword ptr [ebp-8]
 005A90B5    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 005A90B8    call        TFont.SetColor
 005A90BD    mov         ax,word ptr [ebp+8]
 005A90C1    push        eax
 005A90C2    mov         al,byte ptr [ebp-9]
 005A90C5    push        eax
 005A90C6    lea         ecx,[ebp-1A]
 005A90C9    mov         edx,dword ptr [ebp-8]
 005A90CC    mov         eax,dword ptr [ebp-4]
 005A90CF    mov         ebx,dword ptr [eax]
 005A90D1    call        dword ptr [ebx+30]
 005A90D4    pop         edi
 005A90D5    pop         esi
 005A90D6    pop         ebx
 005A90D7    mov         esp,ebp
 005A90D9    pop         ebp
 005A90DA    ret         4
end;*}

//005A90E0
{*procedure sub_005A90E0(?:String; ?:?);
begin
 005A90E0    push        ebp
 005A90E1    mov         ebp,esp
 005A90E3    add         esp,0FFFFFFF4
 005A90E6    mov         dword ptr [ebp-8],edx
 005A90E9    mov         dword ptr [ebp-4],eax
 005A90EC    mov         eax,dword ptr [ebp-8]
 005A90EF    mov         edx,dword ptr [ebp-4]
 005A90F2    call        @LStrAsg
 005A90F7    mov         dword ptr [ebp-0C],1
>005A90FE    jmp         005A919A
 005A9103    mov         eax,dword ptr [ebp-8]
 005A9106    mov         eax,dword ptr [eax]
 005A9108    mov         edx,dword ptr [ebp-0C]
 005A910B    mov         al,byte ptr [eax+edx-1]
 005A910F    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005A9115    and         eax,0FF
 005A911A    bt          dword ptr [edx],eax
>005A911D    jae         005A9124
 005A911F    inc         dword ptr [ebp-0C]
>005A9122    jmp         005A9197
 005A9124    mov         eax,dword ptr [ebp-8]
 005A9127    mov         eax,dword ptr [eax]
 005A9129    mov         edx,dword ptr [ebp-0C]
 005A912C    cmp         byte ptr [eax+edx-1],26
>005A9131    jne         005A9197
 005A9133    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005A9138    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005A913C    je          005A9187
 005A913E    cmp         dword ptr [ebp-0C],1
>005A9142    jle         005A9187
 005A9144    mov         eax,dword ptr [ebp-8]
 005A9147    mov         eax,dword ptr [eax]
 005A9149    call        @LStrLen
 005A914E    sub         eax,dword ptr [ebp-0C]
 005A9151    cmp         eax,2
>005A9154    jl          005A9187
 005A9156    mov         eax,dword ptr [ebp-8]
 005A9159    mov         eax,dword ptr [eax]
 005A915B    mov         edx,dword ptr [ebp-0C]
 005A915E    cmp         byte ptr [eax+edx-2],28
>005A9163    jne         005A9187
 005A9165    mov         eax,dword ptr [ebp-8]
 005A9168    mov         eax,dword ptr [eax]
 005A916A    mov         edx,dword ptr [ebp-0C]
 005A916D    cmp         byte ptr [eax+edx+1],29
>005A9172    jne         005A9187
 005A9174    mov         edx,dword ptr [ebp-0C]
 005A9177    dec         edx
 005A9178    mov         eax,dword ptr [ebp-8]
 005A917B    mov         ecx,4
 005A9180    call        @LStrDelete
>005A9185    jmp         005A9197
 005A9187    mov         eax,dword ptr [ebp-8]
 005A918A    mov         ecx,1
 005A918F    mov         edx,dword ptr [ebp-0C]
 005A9192    call        @LStrDelete
 005A9197    inc         dword ptr [ebp-0C]
 005A919A    mov         eax,dword ptr [ebp-8]
 005A919D    mov         eax,dword ptr [eax]
 005A919F    call        @LStrLen
 005A91A4    cmp         eax,dword ptr [ebp-0C]
>005A91A7    jge         005A9103
 005A91AD    mov         esp,ebp
 005A91AF    pop         ebp
 005A91B0    ret
end;*}

//005A91B4
{*procedure sub_005A91B4(?:?; ?:?);
begin
 005A91B4    push        ebp
 005A91B5    mov         ebp,esp
 005A91B7    add         esp,0FFFFFFF0
 005A91BA    mov         dword ptr [ebp-8],edx
 005A91BD    mov         dword ptr [ebp-4],eax
 005A91C0    mov         eax,dword ptr [ebp-8]
 005A91C3    call        @LStrClr
 005A91C8    mov         dword ptr [ebp-0C],1
 005A91CF    mov         eax,dword ptr [ebp-4]
 005A91D2    call        @LStrLen
 005A91D7    mov         dword ptr [ebp-10],eax
 005A91DA    mov         eax,dword ptr [ebp-0C]
 005A91DD    cmp         eax,dword ptr [ebp-10]
>005A91E0    jg          005A9244
 005A91E2    mov         eax,[006EA0F8];^gvar_006E49F4
 005A91E7    mov         edx,dword ptr [ebp-0C]
 005A91EA    mov         ecx,dword ptr [ebp-4]
 005A91ED    mov         dl,byte ptr [ecx+edx-1]
 005A91F1    and         edx,0FF
 005A91F7    bt          dword ptr [eax],edx
>005A91FA    jae         005A9201
 005A91FC    inc         dword ptr [ebp-0C]
>005A91FF    jmp         005A9239
 005A9201    mov         eax,dword ptr [ebp-0C]
 005A9204    mov         edx,dword ptr [ebp-4]
 005A9207    cmp         byte ptr [edx+eax-1],26
>005A920C    jne         005A9239
 005A920E    mov         eax,dword ptr [ebp-10]
 005A9211    sub         eax,dword ptr [ebp-0C]
 005A9214    dec         eax
>005A9215    jl          005A9239
 005A9217    inc         dword ptr [ebp-0C]
 005A921A    mov         eax,dword ptr [ebp-0C]
 005A921D    mov         edx,dword ptr [ebp-4]
 005A9220    cmp         byte ptr [edx+eax-1],26
>005A9225    je          005A9239
 005A9227    mov         eax,dword ptr [ebp-8]
 005A922A    mov         edx,dword ptr [ebp-0C]
 005A922D    mov         ecx,dword ptr [ebp-4]
 005A9230    mov         dl,byte ptr [ecx+edx-1]
 005A9234    call        @LStrFromChar
 005A9239    inc         dword ptr [ebp-0C]
 005A923C    mov         eax,dword ptr [ebp-0C]
 005A923F    cmp         eax,dword ptr [ebp-10]
>005A9242    jle         005A91E2
 005A9244    mov         esp,ebp
 005A9246    pop         ebp
 005A9247    ret
end;*}

//005A9248
{*function sub_005A9248(?:String; ?:String):?;
begin
 005A9248    push        ebp
 005A9249    mov         ebp,esp
 005A924B    add         esp,0FFFFFFEC
 005A924E    xor         ecx,ecx
 005A9250    mov         dword ptr [ebp-10],ecx
 005A9253    mov         dword ptr [ebp-14],ecx
 005A9256    mov         dword ptr [ebp-8],edx
 005A9259    mov         dword ptr [ebp-4],eax
 005A925C    xor         eax,eax
 005A925E    push        ebp
 005A925F    push        5A92AB
 005A9264    push        dword ptr fs:[eax]
 005A9267    mov         dword ptr fs:[eax],esp
 005A926A    lea         edx,[ebp-10]
 005A926D    mov         eax,dword ptr [ebp-8]
 005A9270    call        005A90E0
 005A9275    mov         eax,dword ptr [ebp-10]
 005A9278    push        eax
 005A9279    lea         edx,[ebp-14]
 005A927C    mov         eax,dword ptr [ebp-4]
 005A927F    call        005A90E0
 005A9284    mov         eax,dword ptr [ebp-14]
 005A9287    pop         edx
 005A9288    call        006577F4
 005A928D    mov         byte ptr [ebp-9],al
 005A9290    xor         eax,eax
 005A9292    pop         edx
 005A9293    pop         ecx
 005A9294    pop         ecx
 005A9295    mov         dword ptr fs:[eax],edx
 005A9298    push        5A92B2
 005A929D    lea         eax,[ebp-14]
 005A92A0    mov         edx,2
 005A92A5    call        @LStrArrayClr
 005A92AA    ret
>005A92AB    jmp         @HandleFinally
>005A92B0    jmp         005A929D
 005A92B2    mov         al,byte ptr [ebp-9]
 005A92B5    mov         esp,ebp
 005A92B7    pop         ebp
 005A92B8    ret
end;*}

//005A92BC
procedure _NF__580;
begin
{*
 005A92BC    adc         al,byte ptr [eax]
 005A92BE    add         byte ptr [eax],al
 005A92C0    and         byte ptr [esi+ebp*2],bh
 005A92C3    add         byte ptr [eax-61],dh
 005A92C6    outs        dl,byte ptr [esi]
 005A92C7    add         byte ptr [esp+edi],bl
 005A92CA    outs        dl,byte ptr [esi]
 005A92CB    add         byte ptr [edi+ebx*4+6E],ch
 005A92CF    add         byte ptr [eax],bl
 005A92D1    cmp         al,6E
 005A92D3    add         byte ptr [eax-61],ch
 005A92D6    outs        dl,byte ptr [esi]
 005A92D7    add         byte ptr [esp+edi],dl
 005A92DA    outs        dl,byte ptr [esi]
 005A92DB    add         byte ptr [edi+ebx*4+6E],ah
 005A92DF    add         byte ptr [eax],dl
 005A92E1    cmp         al,6E
 005A92E3    add         byte ptr [eax-61],ah
 005A92E6    outs        dl,byte ptr [esi]
 005A92E7    add         byte ptr [esp+edi],cl
 005A92EA    outs        dl,byte ptr [esi]
 005A92EB    add         byte ptr [edi+ebx*4+6E],bl
 005A92EF    add         byte ptr [eax],cl
 005A92F1    cmp         al,6E
 005A92F3    add         byte ptr [eax-61],bl
 005A92F6    outs        dl,byte ptr [esi]
 005A92F7    add         byte ptr [esp+edi],al
 005A92FA    outs        dl,byte ptr [esi]
 005A92FB    add         byte ptr [edi+ebx*4+6E],dl
 005A92FF    add         byte ptr [eax],al
 005A9301    cmp         al,6E
 005A9303    add         byte ptr [eax-61],dl
 005A9306    outs        dl,byte ptr [esi]
 005A9307    add         ah,bh
 005A9309    cmp         ebp,dword ptr [esi]
 005A930C    dec         esp
 005A930D    lahf
 005A930E    outs        dl,byte ptr [esi]
 005A930F    add         al,bh
 005A9311    cmp         ebp,dword ptr [esi]
 005A9314    dec         eax
 005A9315    lahf
 005A9316    outs        dl,byte ptr [esi]
 005A9317    add         ah,dh
 005A9319    cmp         ebp,dword ptr [esi]
 005A931C    inc         esp
 005A931D    lahf
 005A931E    outs        dl,byte ptr [esi]
 005A931F    add         al,dh
 005A9321    cmp         ebp,dword ptr [esi]
 005A9324    inc         eax
 005A9325    lahf
 005A9326    outs        dl,byte ptr [esi]
 005A9327    add         ah,ch
 005A9329    cmp         ebp,dword ptr [esi]
 005A932C    cmp         al,9F
 005A932E    outs        dl,byte ptr [esi]
 005A932F    add         al,ch
 005A9331    cmp         ebp,dword ptr [esi]
 005A9334    cmp         byte ptr [edi+3BE4006E],bl
 005A933A    outs        dl,byte ptr [esi]
 005A933B    add         byte ptr [edi+ebx*4],dh
 005A933E    outs        dl,byte ptr [esi]
 005A933F    add         al,ah
 005A9341    cmp         ebp,dword ptr [esi]
 005A9344    xor         byte ptr [edi+3BDC006E],bl
 005A934A    outs        dl,byte ptr [esi]
 005A934B    add         byte ptr [edi+ebx*4],ch
 005A934E    outs        dl,byte ptr [esi]
 005A934F    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

//005A9350
procedure Finalization;
begin
{*
 005A9350    push        ebp
 005A9351    mov         ebp,esp
 005A9353    xor         eax,eax
 005A9355    push        ebp
 005A9356    push        5A93B4
 005A935B    push        dword ptr fs:[eax]
 005A935E    mov         dword ptr fs:[eax],esp
 005A9361    inc         dword ptr ds:[6ECD04]
>005A9367    jne         005A93A6
 005A9369    mov         eax,[006ECD00];ShortCutItems:TMenuItemStack
 005A936E    call        TObject.Free
 005A9373    mov         eax,[006ECCFC];PopupList:TPopupList
 005A9378    call        TObject.Free
 005A937D    mov         eax,[006ECD08];CommandPool:TBits
 005A9382    call        TObject.Free
 005A9387    mov         eax,6E3BDC
 005A938C    mov         ecx,12
 005A9391    mov         edx,dword ptr ds:[668E7C];String
 005A9397    call        @FinalizeArray
 005A939C    mov         eax,6E3BC8;^gvar_005A2A4C
 005A93A1    call        @LStrClr
 005A93A6    xor         eax,eax
 005A93A8    pop         edx
 005A93A9    pop         ecx
 005A93AA    pop         ecx
 005A93AB    mov         dword ptr fs:[eax],edx
 005A93AE    push        5A93BB
 005A93B3    ret
>005A93B4    jmp         @HandleFinally
>005A93B9    jmp         005A93B3
 005A93BB    pop         ebp
 005A93BC    ret
*}
end;

end.