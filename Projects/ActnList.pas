//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnList;

interface

uses
  SysUtils, Classes, ActnList, ImgList, system;

type
  TContainedAction = class(TBasicAction)
  public
    Category:String;//f58
    FActionList:TCustomActionList;//f5C
    destructor Destroy; virtual;//0058DAE4
    //procedure v14(?:?); virtual;//v14//0058DBD4
    //function v44:?; virtual;//v44//0058DDB8
    procedure sub_0058DD4C; dynamic;//0058DD4C
    procedure sub_0058DBA8; dynamic;//0058DBA8
    procedure sub_0058DB78; dynamic;//0058DB78
    //procedure sub_0058DD14(?:?); dynamic;//0058DD14
    function IsStoredCategory(Value:String):Boolean;//0058DB64
    procedure SetCategory(Value:String);//0058DC8C
  end;
  TActionEvent = procedure(Action:TBasicAction; var Handled:Boolean) of object;;
  TActionListState = (asNormal, asSuspended, asSuspendedEnabled);
  TCustomActionList = class(TComponent)
  public
    FActions:TList;//f30
    FImageChangeLink:TChangeLink;//f34
    FImages:TCustomImageList;//f38
    FOnChange:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnExecute:TActionEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnUpdate:TActionEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FState:TActionListState;//f58
    destructor Destroy; virtual;//0058DEAC
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//0058E06C
    constructor Create(AOwner:TComponent); virtual;//v2C//0058DE24
    procedure v30; virtual;//v30//0058E128
    procedure SetImages(Value:TCustomImageList); virtual;//v34//0058DFEC
    //procedure sub_0058E2BC(?:?); dynamic;//0058E2BC
    //procedure sub_0058E288(?:?); dynamic;//0058E288
    //procedure sub_0058DF70(?:?; ?:?); dynamic;//0058DF70
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?); dynamic;//0058DF14
  end;
  TActionList = class(TCustomActionList)
    procedure SetState(Value:TActionListState);//0058E2F0
  end;
  TShortCutList = class(TStringList)
  public
    //function v38(?:?):?; virtual;//v38//0058F0BC
  end;
  THintEvent = procedure(var HintStr:String; var CanShow:Boolean) of object;;
  TCustomAction = class(TContainedAction)
  public
    FDisableIfNoHandler:Boolean;//f60
    FCaption:String;//f64
    FChecking:Boolean;//f68
    FChecked:Boolean;//f69
    FEnabled:Boolean;//f6A
    FGroupIndex:Integer;//f6C
    FHelpType:THelpType;//f70
    FHelpContext:THelpContext;//f74
    FHelpKeyword:String;//f78
    FHint:String;//f7C
    FImageIndex:TImageIndex;//f80
    FShortCut:TShortCut;//f84
    FVisible:Boolean;//f86
    FOnHint:THintEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    FSecondaryShortCuts:TShortCutList;//f90
    FSavedEnabledState:Boolean;//f94
    FAutoCheck:Boolean;//f95
    FImage:TObject;//f98
    FMask:TObject;//f9C
    destructor Destroy; virtual;//0058E654
    procedure AssignTo(Dest:TPersistent); virtual;//v0//0058E6BC
    //procedure v18(?:?); virtual;//v18//0058EEBC
    constructor Create(AOwner:TComponent); virtual;//v2C//0058E5E4
    procedure SetHelpContext(Value:THelpContext); virtual;//v48//0058EC20
    procedure SetHelpKeyword(Value:String); virtual;//v4C//0058EB94
    //function v50:?; virtual;//v50//0058F098
    //procedure sub_0058EF28(?:?); dynamic;//0058EF28
    procedure sub_0058DD4C; dynamic;//0058EF64
  end;
  TAction = class(TCustomAction)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0058F0F8
    procedure SetAutoCheck(Value:Boolean);//0058E7A0
    procedure SetChecked(Value:Boolean);//0058E8B0
    procedure SetGroupIndex(Value:Integer);//0058EA98
    procedure SetHelpType(Value:THelpType);//0058EB14
  end;
  TActionLink = class(TBasicActionLink)
  public
    //function v20:?; virtual;//v20//0058E3B8
    //function v24:?; virtual;//v24//0058E3DC
    //function v28:?; virtual;//v28//0058E400
    //function v2C:?; virtual;//v2C//0058E424
    //function v30:?; virtual;//v30//0058E448
    //function v34:?; virtual;//v34//0058E46C
    //function v38:?; virtual;//v38//0058E490
    //function v3C:?; virtual;//v3C//0058E4B4
    //function v40:?; virtual;//v40//0058E4D8
    //function v44:?; virtual;//v44//0058E4FC
    //procedure v48(?:?); virtual;//v48//0058E520
    //procedure v4C(?:?); virtual;//v4C//0058E530
    //procedure v50(?:?); virtual;//v50//0058E540
    //procedure v54(?:?); virtual;//v54//0058E550
    //procedure v58(?:?); virtual;//v58//0058E560
    //procedure v5C(?:?); virtual;//v5C//0058E570
    //procedure v60(?:?); virtual;//v60//0058E580
    //procedure v64(?:?); virtual;//v64//0058E590
    //procedure v68(?:?); virtual;//v68//0058E5A0
    //procedure v6C(?:?); virtual;//v6C//0058E5B0
    //procedure v70(?:?); virtual;//v70//0058E5C0
    //procedure v74(?:?); virtual;//v74//0058E5D4
  end;
    procedure sub_0058D090;//0058D090
    destructor Destroy;//0058DAE4
    //function sub_0058DB2C(?:?):?;//0058DB2C
    procedure sub_0058DB78;//0058DB78
    procedure sub_0058DBA8;//0058DBA8
    //procedure sub_0058DBD4(?:?);//0058DBD4
    //procedure sub_0058DC14(?:TContainedAction; ?:?);//0058DC14
    //procedure sub_0058DCD0(?:TContainedAction; ?:?);//0058DCD0
    //procedure sub_0058DD14(?:?);//0058DD14
    procedure sub_0058DD4C;//0058DD4C
    //function sub_0058DDB8:?;//0058DDB8
    constructor Create(AOwner:TComponent);//0058DE24
    destructor Destroy;//0058DEAC
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);//0058DF14
    //procedure sub_0058DF70(?:?; ?:?);//0058DF70
    //function sub_0058DFAC(?:TCustomActionList; ?:?):?;//0058DFAC
    //function sub_0058DFD0(?:TCustomActionList):?;//0058DFD0
    procedure SetImages(Value:TCustomImageList);//0058DFEC
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0058E06C
    //procedure sub_0058E0C8(?:?; ?:TContainedAction);//0058E0C8
    procedure sub_0058E0FC(?:TCustomActionList; ?:TComponent);//0058E0FC
    procedure sub_0058E128;//0058E128
    //function sub_0058E1C0(?:Pointer; ?:?):?;//0058E1C0
    //procedure sub_0058E288(?:?);//0058E288
    //procedure sub_0058E2BC(?:?);//0058E2BC
    //function sub_0058E3B8:?;//0058E3B8
    //function sub_0058E3DC:?;//0058E3DC
    //function sub_0058E400:?;//0058E400
    //function sub_0058E424:?;//0058E424
    //function sub_0058E448:?;//0058E448
    //function sub_0058E46C:?;//0058E46C
    //function sub_0058E490:?;//0058E490
    //function sub_0058E4B4:?;//0058E4B4
    //function sub_0058E4D8:?;//0058E4D8
    //function sub_0058E4FC:?;//0058E4FC
    //procedure sub_0058E520(?:?);//0058E520
    //procedure sub_0058E530(?:?);//0058E530
    //procedure sub_0058E540(?:?);//0058E540
    //procedure sub_0058E550(?:?);//0058E550
    //procedure sub_0058E560(?:?);//0058E560
    //procedure sub_0058E570(?:?);//0058E570
    //procedure sub_0058E580(?:?);//0058E580
    //procedure sub_0058E590(?:?);//0058E590
    //procedure sub_0058E5A0(?:?);//0058E5A0
    //procedure sub_0058E5B0(?:?);//0058E5B0
    //procedure sub_0058E5C0(?:?);//0058E5C0
    //procedure sub_0058E5D4(?:?);//0058E5D4
    constructor Create(AOwner:TComponent);//0058E5E4
    destructor Destroy;//0058E654
    procedure AssignTo(Dest:TPersistent);//0058E6BC
    procedure SetCaption(Value:String);//0058E828
    procedure SetEnabled(Value:Boolean);//0058E9E8
    procedure SetHelpKeyword(Value:String);//0058EB94
    procedure SetHelpContext(Value:THelpContext);//0058EC20
    procedure SetHint(Value:String);//0058EC9C
    procedure SetImageIndex(Value:TImageIndex);//0058ED24
    procedure SetShortCut(Value:TShortCut);//0058EDA8
    procedure SetVisible(Value:Boolean);//0058EE30
    //procedure sub_0058EEBC(?:?);//0058EEBC
    //procedure sub_0058EF28(?:?);//0058EF28
    procedure sub_0058DD4C;//0058EF64
    //function GetSecondaryShortCuts:?;//0058EFDC
    procedure SetSecondaryShortCuts(Value:TShortCutList);//0058F01C
    function IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;//0058F060
    //function sub_0058F098:?;//0058F098
    //function sub_0058F0BC(?:?):?;//0058F0BC
    constructor Create(AOwner:TComponent);//0058F0F8
    //function sub_0058F148(?:?; ?:?):?;//0058F148
    procedure Finalization;//0058F19C

implementation

//0058D090
procedure sub_0058D090;
begin
{*
 0058D090    sub         dword ptr ds:[6ECCE4],1
 0058D097    ret
*}
end;

//0058DAE4
destructor TContainedAction.Destroy;
begin
{*
 0058DAE4    push        ebp
 0058DAE5    mov         ebp,esp
 0058DAE7    add         esp,0FFFFFFF8
 0058DAEA    call        @BeforeDestruction
 0058DAEF    mov         byte ptr [ebp-5],dl
 0058DAF2    mov         dword ptr [ebp-4],eax
 0058DAF5    mov         eax,dword ptr [ebp-4]
 0058DAF8    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DAFC    je          0058DB0C
 0058DAFE    mov         eax,dword ptr [ebp-4]
 0058DB01    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DB04    mov         edx,dword ptr [ebp-4]
 0058DB07    call        0058E0FC
 0058DB0C    mov         dl,byte ptr [ebp-5]
 0058DB0F    and         dl,0FC
 0058DB12    mov         eax,dword ptr [ebp-4]
 0058DB15    call        TBasicAction.Destroy
 0058DB1A    cmp         byte ptr [ebp-5],0
>0058DB1E    jle         0058DB28
 0058DB20    mov         eax,dword ptr [ebp-4]
 0058DB23    call        @ClassDestroy
 0058DB28    pop         ecx
 0058DB29    pop         ecx
 0058DB2A    pop         ebp
 0058DB2B    ret
*}
end;

//0058DB2C
{*function sub_0058DB2C(?:?):?;
begin
 0058DB2C    push        ebp
 0058DB2D    mov         ebp,esp
 0058DB2F    add         esp,0FFFFFFF8
 0058DB32    mov         dword ptr [ebp-4],eax
 0058DB35    mov         eax,dword ptr [ebp-4]
 0058DB38    cmp         dword ptr [eax+5C],0
>0058DB3C    je          0058DB54
 0058DB3E    mov         eax,dword ptr [ebp-4]
 0058DB41    mov         eax,dword ptr [eax+5C]
 0058DB44    mov         eax,dword ptr [eax+30]
 0058DB47    mov         edx,dword ptr [ebp-4]
 0058DB4A    call        TList.IndexOf
 0058DB4F    mov         dword ptr [ebp-8],eax
>0058DB52    jmp         0058DB5B
 0058DB54    mov         dword ptr [ebp-8],0FFFFFFFF
 0058DB5B    mov         eax,dword ptr [ebp-8]
 0058DB5E    pop         ecx
 0058DB5F    pop         ecx
 0058DB60    pop         ebp
 0058DB61    ret
end;*}

//0058DB64
function TContainedAction.IsStoredCategory(Value:String):Boolean;
begin
{*
 0058DB64    push        ebp
 0058DB65    mov         ebp,esp
 0058DB67    add         esp,0FFFFFFF8
 0058DB6A    mov         dword ptr [ebp-4],eax
 0058DB6D    mov         byte ptr [ebp-5],1
 0058DB71    mov         al,byte ptr [ebp-5]
 0058DB74    pop         ecx
 0058DB75    pop         ecx
 0058DB76    pop         ebp
 0058DB77    ret
*}
end;

//0058DB78
procedure TContainedAction.sub_0058DB78;
begin
{*
 0058DB78    push        ebp
 0058DB79    mov         ebp,esp
 0058DB7B    add         esp,0FFFFFFF8
 0058DB7E    mov         dword ptr [ebp-4],eax
 0058DB81    mov         eax,dword ptr [ebp-4]
 0058DB84    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DB88    je          0058DB95
 0058DB8A    mov         eax,dword ptr [ebp-4]
 0058DB8D    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DB90    mov         dword ptr [ebp-8],eax
>0058DB93    jmp         0058DBA0
 0058DB95    mov         eax,dword ptr [ebp-4]
 0058DB98    call        TComponent.sub_00650858
 0058DB9D    mov         dword ptr [ebp-8],eax
 0058DBA0    mov         eax,dword ptr [ebp-8]
 0058DBA3    pop         ecx
 0058DBA4    pop         ecx
 0058DBA5    pop         ebp
 0058DBA6    ret
*}
end;

//0058DBA8
procedure TContainedAction.sub_0058DBA8;
begin
{*
 0058DBA8    push        ebp
 0058DBA9    mov         ebp,esp
 0058DBAB    add         esp,0FFFFFFF8
 0058DBAE    mov         dword ptr [ebp-4],eax
 0058DBB1    mov         eax,dword ptr [ebp-4]
 0058DBB4    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DBB8    je          0058DBC0
 0058DBBA    mov         byte ptr [ebp-5],1
>0058DBBE    jmp         0058DBCB
 0058DBC0    mov         eax,dword ptr [ebp-4]
 0058DBC3    call        TComponent.sub_006507B0
 0058DBC8    mov         byte ptr [ebp-5],al
 0058DBCB    mov         al,byte ptr [ebp-5]
 0058DBCE    pop         ecx
 0058DBCF    pop         ecx
 0058DBD0    pop         ebp
 0058DBD1    ret
*}
end;

//0058DBD4
{*procedure sub_0058DBD4(?:?);
begin
 0058DBD4    push        ebp
 0058DBD5    mov         ebp,esp
 0058DBD7    add         esp,0FFFFFFF8
 0058DBDA    mov         dword ptr [ebp-8],edx
 0058DBDD    mov         dword ptr [ebp-4],eax
 0058DBE0    mov         edx,dword ptr [ebp-8]
 0058DBE3    mov         eax,dword ptr [ebp-4]
 0058DBE6    call        006508C8
 0058DBEB    mov         eax,dword ptr [ebp-8]
 0058DBEE    mov         eax,dword ptr [eax+2C]
 0058DBF1    mov         edx,dword ptr ds:[58D274];TCustomActionList
 0058DBF7    call        @IsClass
 0058DBFC    test        al,al
>0058DBFE    je          0058DC0E
 0058DC00    mov         eax,dword ptr [ebp-8]
 0058DC03    mov         edx,dword ptr [eax+2C]
 0058DC06    mov         eax,dword ptr [ebp-4]
 0058DC09    call        0058DCD0
 0058DC0E    pop         ecx
 0058DC0F    pop         ecx
 0058DC10    pop         ebp
 0058DC11    ret
end;*}

//0058DC14
{*procedure sub_0058DC14(?:TContainedAction; ?:?);
begin
 0058DC14    push        ebp
 0058DC15    mov         ebp,esp
 0058DC17    add         esp,0FFFFFFF0
 0058DC1A    mov         dword ptr [ebp-8],edx
 0058DC1D    mov         dword ptr [ebp-4],eax
 0058DC20    mov         eax,dword ptr [ebp-4]
 0058DC23    call        0058DB2C
 0058DC28    mov         dword ptr [ebp-0C],eax
 0058DC2B    cmp         dword ptr [ebp-0C],0
>0058DC2F    jl          0058DC87
 0058DC31    mov         eax,dword ptr [ebp-4]
 0058DC34    mov         eax,dword ptr [eax+5C]
 0058DC37    mov         eax,dword ptr [eax+30]
 0058DC3A    mov         eax,dword ptr [eax+8]
 0058DC3D    mov         dword ptr [ebp-10],eax
 0058DC40    cmp         dword ptr [ebp-8],0
>0058DC44    jge         0058DC4B
 0058DC46    xor         eax,eax
 0058DC48    mov         dword ptr [ebp-8],eax
 0058DC4B    mov         eax,dword ptr [ebp-8]
 0058DC4E    cmp         eax,dword ptr [ebp-10]
>0058DC51    jl          0058DC5A
 0058DC53    mov         eax,dword ptr [ebp-10]
 0058DC56    dec         eax
 0058DC57    mov         dword ptr [ebp-8],eax
 0058DC5A    mov         eax,dword ptr [ebp-8]
 0058DC5D    cmp         eax,dword ptr [ebp-0C]
>0058DC60    je          0058DC87
 0058DC62    mov         eax,dword ptr [ebp-4]
 0058DC65    mov         eax,dword ptr [eax+5C]
 0058DC68    mov         eax,dword ptr [eax+30]
 0058DC6B    mov         edx,dword ptr [ebp-0C]
 0058DC6E    call        TList.Delete
 0058DC73    mov         eax,dword ptr [ebp-4]
 0058DC76    mov         eax,dword ptr [eax+5C]
 0058DC79    mov         eax,dword ptr [eax+30]
 0058DC7C    mov         ecx,dword ptr [ebp-4]
 0058DC7F    mov         edx,dword ptr [ebp-8]
 0058DC82    call        TList.Insert
 0058DC87    mov         esp,ebp
 0058DC89    pop         ebp
 0058DC8A    ret
end;*}

//0058DC8C
procedure TContainedAction.SetCategory(Value:String);
begin
{*
 0058DC8C    push        ebp
 0058DC8D    mov         ebp,esp
 0058DC8F    add         esp,0FFFFFFF8
 0058DC92    mov         dword ptr [ebp-8],edx
 0058DC95    mov         dword ptr [ebp-4],eax
 0058DC98    mov         eax,dword ptr [ebp-8]
 0058DC9B    mov         edx,dword ptr [ebp-4]
 0058DC9E    mov         edx,dword ptr [edx+58];TContainedAction.Category:String
 0058DCA1    call        @LStrCmp
>0058DCA6    je          0058DCCA
 0058DCA8    mov         eax,dword ptr [ebp-4]
 0058DCAB    add         eax,58;TContainedAction.Category:String
 0058DCAE    mov         edx,dword ptr [ebp-8]
 0058DCB1    call        @LStrAsg
 0058DCB6    mov         eax,dword ptr [ebp-4]
 0058DCB9    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DCBD    je          0058DCCA
 0058DCBF    mov         eax,dword ptr [ebp-4]
 0058DCC2    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DCC5    mov         edx,dword ptr [eax]
 0058DCC7    call        dword ptr [edx+30];TCustomActionList.sub_0058E128
 0058DCCA    pop         ecx
 0058DCCB    pop         ecx
 0058DCCC    pop         ebp
 0058DCCD    ret
*}
end;

//0058DCD0
{*procedure sub_0058DCD0(?:TContainedAction; ?:?);
begin
 0058DCD0    push        ebp
 0058DCD1    mov         ebp,esp
 0058DCD3    add         esp,0FFFFFFF8
 0058DCD6    mov         dword ptr [ebp-8],edx
 0058DCD9    mov         dword ptr [ebp-4],eax
 0058DCDC    mov         eax,dword ptr [ebp-8]
 0058DCDF    mov         edx,dword ptr [ebp-4]
 0058DCE2    cmp         eax,dword ptr [edx+5C];TContainedAction.FActionList:TCustomActionList
>0058DCE5    je          0058DD0F
 0058DCE7    mov         eax,dword ptr [ebp-4]
 0058DCEA    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DCEE    je          0058DCFE
 0058DCF0    mov         edx,dword ptr [ebp-4]
 0058DCF3    mov         eax,dword ptr [ebp-4]
 0058DCF6    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DCF9    call        0058E0FC
 0058DCFE    cmp         dword ptr [ebp-8],0
>0058DD02    je          0058DD0F
 0058DD04    mov         edx,dword ptr [ebp-4]
 0058DD07    mov         eax,dword ptr [ebp-8]
 0058DD0A    call        0058E0C8
 0058DD0F    pop         ecx
 0058DD10    pop         ecx
 0058DD11    pop         ebp
 0058DD12    ret
end;*}

//0058DD14
{*procedure TContainedAction.sub_0058DD14(?:?);
begin
 0058DD14    push        ebp
 0058DD15    mov         ebp,esp
 0058DD17    add         esp,0FFFFFFF8
 0058DD1A    mov         dword ptr [ebp-8],edx
 0058DD1D    mov         dword ptr [ebp-4],eax
 0058DD20    mov         eax,dword ptr [ebp-4]
 0058DD23    test        byte ptr [eax+1C],1;TContainedAction.FComponentState:TComponentState
>0058DD27    jne         0058DD46
 0058DD29    mov         eax,dword ptr [ebp-8]
 0058DD2C    mov         edx,dword ptr ds:[58D274];TCustomActionList
 0058DD32    call        @IsClass
 0058DD37    test        al,al
>0058DD39    je          0058DD46
 0058DD3B    mov         edx,dword ptr [ebp-8]
 0058DD3E    mov         eax,dword ptr [ebp-4]
 0058DD41    call        0058DCD0
 0058DD46    pop         ecx
 0058DD47    pop         ecx
 0058DD48    pop         ebp
 0058DD49    ret
end;*}

//0058DD4C
procedure TContainedAction.sub_0058DD4C;
begin
{*
 0058DD4C    push        ebp
 0058DD4D    mov         ebp,esp
 0058DD4F    add         esp,0FFFFFFF8
 0058DD52    push        esi
 0058DD53    mov         dword ptr [ebp-4],eax
 0058DD56    mov         eax,dword ptr [ebp-4]
 0058DD59    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DD5D    je          0058DD75
 0058DD5F    mov         edx,dword ptr [ebp-4]
 0058DD62    mov         eax,dword ptr [ebp-4]
 0058DD65    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DD68    mov         si,0FFF3
 0058DD6C    call        @CallDynaInst;TCustomActionList.sub_0058E288
 0058DD71    test        al,al
>0058DD73    jne         0058DDAA
 0058DD75    mov         eax,[006E9DCC];^Application:TApplication
 0058DD7A    mov         eax,dword ptr [eax]
 0058DD7C    mov         edx,dword ptr [ebp-4]
 0058DD7F    call        005D9B18
 0058DD84    test        al,al
>0058DD86    jne         0058DDAA
 0058DD88    mov         eax,dword ptr [ebp-4]
 0058DD8B    call        TBasicAction.sub_006511A4
 0058DD90    test        al,al
>0058DD92    jne         0058DDAA
 0058DD94    mov         ecx,dword ptr [ebp-4]
 0058DD97    xor         edx,edx
 0058DD99    mov         eax,0B040
 0058DD9E    call        005EF7D0
 0058DDA3    dec         eax
>0058DDA4    je          0058DDAA
 0058DDA6    xor         eax,eax
>0058DDA8    jmp         0058DDAC
 0058DDAA    mov         al,1
 0058DDAC    mov         byte ptr [ebp-5],al
 0058DDAF    mov         al,byte ptr [ebp-5]
 0058DDB2    pop         esi
 0058DDB3    pop         ecx
 0058DDB4    pop         ecx
 0058DDB5    pop         ebp
 0058DDB6    ret
*}
end;

//0058DDB8
{*function sub_0058DDB8:?;
begin
 0058DDB8    push        ebp
 0058DDB9    mov         ebp,esp
 0058DDBB    add         esp,0FFFFFFF8
 0058DDBE    push        esi
 0058DDBF    mov         dword ptr [ebp-4],eax
 0058DDC2    mov         eax,dword ptr [ebp-4]
 0058DDC5    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>0058DDC9    je          0058DDE1
 0058DDCB    mov         edx,dword ptr [ebp-4]
 0058DDCE    mov         eax,dword ptr [ebp-4]
 0058DDD1    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 0058DDD4    mov         si,0FFF0
 0058DDD8    call        @CallDynaInst;TCustomActionList.sub_0058E2BC
 0058DDDD    test        al,al
>0058DDDF    jne         0058DE16
 0058DDE1    mov         eax,[006E9DCC];^Application:TApplication
 0058DDE6    mov         eax,dword ptr [eax]
 0058DDE8    mov         edx,dword ptr [ebp-4]
 0058DDEB    call        005D9B54
 0058DDF0    test        al,al
>0058DDF2    jne         0058DE16
 0058DDF4    mov         eax,dword ptr [ebp-4]
 0058DDF7    call        006511D8
 0058DDFC    test        al,al
>0058DDFE    jne         0058DE16
 0058DE00    mov         ecx,dword ptr [ebp-4]
 0058DE03    xor         edx,edx
 0058DE05    mov         eax,0B03F
 0058DE0A    call        005EF7D0
 0058DE0F    dec         eax
>0058DE10    je          0058DE16
 0058DE12    xor         eax,eax
>0058DE14    jmp         0058DE18
 0058DE16    mov         al,1
 0058DE18    mov         byte ptr [ebp-5],al
 0058DE1B    mov         al,byte ptr [ebp-5]
 0058DE1E    pop         esi
 0058DE1F    pop         ecx
 0058DE20    pop         ecx
 0058DE21    pop         ebp
 0058DE22    ret
end;*}

//0058DE24
constructor TCustomActionList.Create(AOwner:TComponent);
begin
{*
 0058DE24    push        ebp
 0058DE25    mov         ebp,esp
 0058DE27    add         esp,0FFFFFFF4
 0058DE2A    test        dl,dl
>0058DE2C    je          0058DE36
 0058DE2E    add         esp,0FFFFFFF0
 0058DE31    call        @ClassCreate
 0058DE36    mov         dword ptr [ebp-0C],ecx
 0058DE39    mov         byte ptr [ebp-5],dl
 0058DE3C    mov         dword ptr [ebp-4],eax
 0058DE3F    mov         ecx,dword ptr [ebp-0C]
 0058DE42    xor         edx,edx
 0058DE44    mov         eax,dword ptr [ebp-4]
 0058DE47    call        TComponent.Create
 0058DE4C    mov         dl,1
 0058DE4E    mov         eax,[006422A4];TList
 0058DE53    call        TObject.Create;TList.Create
 0058DE58    mov         edx,dword ptr [ebp-4]
 0058DE5B    mov         dword ptr [edx+30],eax;TCustomActionList.FActions:TList
 0058DE5E    mov         dl,1
 0058DE60    mov         eax,[0058B150];TChangeLink
 0058DE65    call        TObject.Create;TChangeLink.Create
 0058DE6A    mov         edx,dword ptr [ebp-4]
 0058DE6D    mov         dword ptr [edx+34],eax;TCustomActionList.FImageChangeLink:TChangeLink
 0058DE70    mov         eax,dword ptr [ebp-4]
 0058DE73    mov         eax,dword ptr [eax+34];TCustomActionList.FImageChangeLink:TChangeLink
 0058DE76    mov         edx,dword ptr [ebp-4]
 0058DE79    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomActionList
 0058DE7C    mov         dword ptr [eax+8],58E048;TChangeLink.FOnChange:TNotifyEvent
 0058DE83    mov         eax,dword ptr [ebp-4]
 0058DE86    mov         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
 0058DE8A    mov         eax,dword ptr [ebp-4]
 0058DE8D    cmp         byte ptr [ebp-5],0
>0058DE91    je          0058DEA2
 0058DE93    call        @AfterConstruction
 0058DE98    pop         dword ptr fs:[0]
 0058DE9F    add         esp,0C
 0058DEA2    mov         eax,dword ptr [ebp-4]
 0058DEA5    mov         esp,ebp
 0058DEA7    pop         ebp
 0058DEA8    ret
*}
end;

//0058DEAC
destructor TCustomActionList.Destroy;
begin
{*
 0058DEAC    push        ebp
 0058DEAD    mov         ebp,esp
 0058DEAF    add         esp,0FFFFFFF8
 0058DEB2    call        @BeforeDestruction
 0058DEB7    mov         byte ptr [ebp-5],dl
 0058DEBA    mov         dword ptr [ebp-4],eax
 0058DEBD    mov         eax,dword ptr [ebp-4]
 0058DEC0    mov         eax,dword ptr [eax+34];TCustomActionList.FImageChangeLink:TChangeLink
 0058DEC3    call        TObject.Free
>0058DEC8    jmp         0058DEDA
 0058DECA    mov         eax,dword ptr [ebp-4]
 0058DECD    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DED0    call        0064523C
 0058DED5    call        TObject.Free
 0058DEDA    mov         eax,dword ptr [ebp-4]
 0058DEDD    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DEE0    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0058DEE4    jg          0058DECA
 0058DEE6    mov         eax,dword ptr [ebp-4]
 0058DEE9    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DEEC    call        TObject.Free
 0058DEF1    mov         dl,byte ptr [ebp-5]
 0058DEF4    and         dl,0FC
 0058DEF7    mov         eax,dword ptr [ebp-4]
 0058DEFA    call        TComponent.Destroy
 0058DEFF    cmp         byte ptr [ebp-5],0
>0058DF03    jle         0058DF0D
 0058DF05    mov         eax,dword ptr [ebp-4]
 0058DF08    call        @ClassDestroy
 0058DF0D    pop         ecx
 0058DF0E    pop         ecx
 0058DF0F    pop         ebp
 0058DF10    ret
*}
end;

//0058DF14
{*procedure TCustomActionList.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);
begin
 0058DF14    push        ebp
 0058DF15    mov         ebp,esp
 0058DF17    add         esp,0FFFFFFEC
 0058DF1A    mov         dword ptr [ebp-8],edx
 0058DF1D    mov         dword ptr [ebp-4],eax
 0058DF20    mov         eax,dword ptr [ebp-4]
 0058DF23    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DF26    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058DF29    dec         eax
 0058DF2A    test        eax,eax
>0058DF2C    jl          0058DF67
 0058DF2E    inc         eax
 0058DF2F    mov         dword ptr [ebp-14],eax
 0058DF32    mov         dword ptr [ebp-0C],0
 0058DF39    mov         eax,dword ptr [ebp-4]
 0058DF3C    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DF3F    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058DF42    mov         edx,dword ptr [ebp-0C]
 0058DF45    mov         eax,dword ptr [eax+edx*4]
 0058DF48    mov         dword ptr [ebp-10],eax
 0058DF4B    mov         eax,dword ptr [ebp-10]
 0058DF4E    mov         eax,dword ptr [eax+4]
 0058DF51    cmp         eax,dword ptr [ebp-8]
>0058DF54    jne         0058DF5F
 0058DF56    mov         edx,dword ptr [ebp-10]
 0058DF59    mov         eax,dword ptr [ebp+0C]
 0058DF5C    call        dword ptr [ebp+8]
 0058DF5F    inc         dword ptr [ebp-0C]
 0058DF62    dec         dword ptr [ebp-14]
>0058DF65    jne         0058DF39
 0058DF67    mov         esp,ebp
 0058DF69    pop         ebp
 0058DF6A    ret         8
end;*}

//0058DF70
{*procedure TCustomActionList.sub_0058DF70(?:?; ?:?);
begin
 0058DF70    push        ebp
 0058DF71    mov         ebp,esp
 0058DF73    add         esp,0FFFFFFF4
 0058DF76    mov         dword ptr [ebp-0C],ecx
 0058DF79    mov         dword ptr [ebp-8],edx
 0058DF7C    mov         dword ptr [ebp-4],eax
 0058DF7F    mov         edx,dword ptr [ebp-8]
 0058DF82    mov         eax,dword ptr [ebp-4]
 0058DF85    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058DF88    call        TList.IndexOf
 0058DF8D    test        eax,eax
>0058DF8F    jl          0058DFA7
 0058DF91    mov         eax,dword ptr [ebp-8]
 0058DF94    mov         edx,dword ptr ds:[58D110];TContainedAction
 0058DF9A    call        @AsClass
 0058DF9F    mov         edx,dword ptr [ebp-0C]
 0058DFA2    call        0058DC14
 0058DFA7    mov         esp,ebp
 0058DFA9    pop         ebp
 0058DFAA    ret
end;*}

//0058DFAC
{*function sub_0058DFAC(?:TCustomActionList; ?:?):?;
begin
 0058DFAC    push        ebp
 0058DFAD    mov         ebp,esp
 0058DFAF    add         esp,0FFFFFFF4
 0058DFB2    mov         dword ptr [ebp-8],edx
 0058DFB5    mov         dword ptr [ebp-4],eax
 0058DFB8    mov         edx,dword ptr [ebp-8]
 0058DFBB    mov         eax,dword ptr [ebp-4]
 0058DFBE    mov         eax,dword ptr [eax+30]
 0058DFC1    call        TList.Get
 0058DFC6    mov         dword ptr [ebp-0C],eax
 0058DFC9    mov         eax,dword ptr [ebp-0C]
 0058DFCC    mov         esp,ebp
 0058DFCE    pop         ebp
 0058DFCF    ret
end;*}

//0058DFD0
{*function sub_0058DFD0(?:TCustomActionList):?;
begin
 0058DFD0    push        ebp
 0058DFD1    mov         ebp,esp
 0058DFD3    add         esp,0FFFFFFF8
 0058DFD6    mov         dword ptr [ebp-4],eax
 0058DFD9    mov         eax,dword ptr [ebp-4]
 0058DFDC    mov         eax,dword ptr [eax+30]
 0058DFDF    mov         eax,dword ptr [eax+8]
 0058DFE2    mov         dword ptr [ebp-8],eax
 0058DFE5    mov         eax,dword ptr [ebp-8]
 0058DFE8    pop         ecx
 0058DFE9    pop         ecx
 0058DFEA    pop         ebp
 0058DFEB    ret
end;*}

//0058DFEC
procedure TActionList.SetImages(Value:TCustomImageList);
begin
{*
 0058DFEC    push        ebp
 0058DFED    mov         ebp,esp
 0058DFEF    add         esp,0FFFFFFF8
 0058DFF2    mov         dword ptr [ebp-8],edx
 0058DFF5    mov         dword ptr [ebp-4],eax
 0058DFF8    mov         eax,dword ptr [ebp-4]
 0058DFFB    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>0058DFFF    je          0058E012
 0058E001    mov         eax,dword ptr [ebp-4]
 0058E004    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 0058E007    mov         eax,dword ptr [ebp-4]
 0058E00A    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 0058E00D    call        0058C770
 0058E012    mov         eax,dword ptr [ebp-8]
 0058E015    mov         edx,dword ptr [ebp-4]
 0058E018    mov         dword ptr [edx+38],eax;TActionList.FImages:TCustomImageList
 0058E01B    mov         eax,dword ptr [ebp-4]
 0058E01E    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>0058E022    je          0058E043
 0058E024    mov         eax,dword ptr [ebp-4]
 0058E027    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 0058E02A    mov         eax,dword ptr [ebp-4]
 0058E02D    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 0058E030    call        0058C7D8
 0058E035    mov         edx,dword ptr [ebp-4]
 0058E038    mov         eax,dword ptr [ebp-4]
 0058E03B    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 0058E03E    call        TComponent.FreeNotification
 0058E043    pop         ecx
 0058E044    pop         ecx
 0058E045    pop         ebp
 0058E046    ret
*}
end;

//0058E06C
procedure TCustomActionList.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0058E06C    push        ebp
 0058E06D    mov         ebp,esp
 0058E06F    add         esp,0FFFFFFF4
 0058E072    mov         byte ptr [ebp-9],cl
 0058E075    mov         dword ptr [ebp-8],edx
 0058E078    mov         dword ptr [ebp-4],eax
 0058E07B    mov         cl,byte ptr [ebp-9]
 0058E07E    mov         edx,dword ptr [ebp-8]
 0058E081    mov         eax,dword ptr [ebp-4]
 0058E084    call        TComponent.Notification
 0058E089    cmp         byte ptr [ebp-9],1
>0058E08D    jne         0058E0C3
 0058E08F    mov         eax,dword ptr [ebp-8]
 0058E092    mov         edx,dword ptr [ebp-4]
 0058E095    cmp         eax,dword ptr [edx+38];TCustomActionList.FImages:TCustomImageList
>0058E098    jne         0058E0A6
 0058E09A    xor         edx,edx
 0058E09C    mov         eax,dword ptr [ebp-4]
 0058E09F    mov         ecx,dword ptr [eax]
 0058E0A1    call        dword ptr [ecx+34];TActionList.SetImages
>0058E0A4    jmp         0058E0C3
 0058E0A6    mov         eax,dword ptr [ebp-8]
 0058E0A9    mov         edx,dword ptr ds:[58D110];TContainedAction
 0058E0AF    call        @IsClass
 0058E0B4    test        al,al
>0058E0B6    je          0058E0C3
 0058E0B8    mov         edx,dword ptr [ebp-8]
 0058E0BB    mov         eax,dword ptr [ebp-4]
 0058E0BE    call        0058E0FC
 0058E0C3    mov         esp,ebp
 0058E0C5    pop         ebp
 0058E0C6    ret
*}
end;

//0058E0C8
{*procedure sub_0058E0C8(?:?; ?:TContainedAction);
begin
 0058E0C8    push        ebp
 0058E0C9    mov         ebp,esp
 0058E0CB    add         esp,0FFFFFFF8
 0058E0CE    mov         dword ptr [ebp-8],edx
 0058E0D1    mov         dword ptr [ebp-4],eax
 0058E0D4    mov         edx,dword ptr [ebp-8]
 0058E0D7    mov         eax,dword ptr [ebp-4]
 0058E0DA    mov         eax,dword ptr [eax+30]
 0058E0DD    call        TList.Add
 0058E0E2    mov         eax,dword ptr [ebp-4]
 0058E0E5    mov         edx,dword ptr [ebp-8]
 0058E0E8    mov         dword ptr [edx+5C],eax;TContainedAction.FActionList:TCustomActionList
 0058E0EB    mov         edx,dword ptr [ebp-4]
 0058E0EE    mov         eax,dword ptr [ebp-8]
 0058E0F1    call        TComponent.FreeNotification
 0058E0F6    pop         ecx
 0058E0F7    pop         ecx
 0058E0F8    pop         ebp
 0058E0F9    ret
end;*}

//0058E0FC
procedure sub_0058E0FC(?:TCustomActionList; ?:TComponent);
begin
{*
 0058E0FC    push        ebp
 0058E0FD    mov         ebp,esp
 0058E0FF    add         esp,0FFFFFFF8
 0058E102    mov         dword ptr [ebp-8],edx
 0058E105    mov         dword ptr [ebp-4],eax
 0058E108    mov         edx,dword ptr [ebp-8]
 0058E10B    mov         eax,dword ptr [ebp-4]
 0058E10E    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058E111    call        TList.Remove
 0058E116    test        eax,eax
>0058E118    jl          0058E122
 0058E11A    mov         eax,dword ptr [ebp-8]
 0058E11D    xor         edx,edx
 0058E11F    mov         dword ptr [eax+5C],edx
 0058E122    pop         ecx
 0058E123    pop         ecx
 0058E124    pop         ebp
 0058E125    ret
*}
end;

//0058E128
procedure sub_0058E128;
begin
{*
 0058E128    push        ebp
 0058E129    mov         ebp,esp
 0058E12B    add         esp,0FFFFFFF4
 0058E12E    push        ebx
 0058E12F    mov         dword ptr [ebp-4],eax
 0058E132    mov         eax,dword ptr [ebp-4]
 0058E135    cmp         word ptr [eax+42],0;TCustomActionList.?f42:word
>0058E13A    je          0058E148
 0058E13C    mov         ebx,dword ptr [ebp-4]
 0058E13F    mov         edx,dword ptr [ebp-4]
 0058E142    mov         eax,dword ptr [ebx+44];TCustomActionList.?f44:dword
 0058E145    call        dword ptr [ebx+40];TCustomActionList.FOnChange
 0058E148    mov         eax,dword ptr [ebp-4]
 0058E14B    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058E14E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058E151    dec         eax
 0058E152    test        eax,eax
>0058E154    jl          0058E17D
 0058E156    inc         eax
 0058E157    mov         dword ptr [ebp-0C],eax
 0058E15A    mov         dword ptr [ebp-8],0
 0058E161    mov         eax,dword ptr [ebp-4]
 0058E164    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 0058E167    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058E16A    mov         edx,dword ptr [ebp-8]
 0058E16D    mov         eax,dword ptr [eax+edx*4]
 0058E170    mov         edx,dword ptr [eax]
 0058E172    call        dword ptr [edx+30]
 0058E175    inc         dword ptr [ebp-8]
 0058E178    dec         dword ptr [ebp-0C]
>0058E17B    jne         0058E161
 0058E17D    mov         eax,dword ptr [ebp-4]
 0058E180    test        byte ptr [eax+1C],10;TCustomActionList.FComponentState:TComponentState
>0058E184    je          0058E1BB
 0058E186    mov         eax,dword ptr [ebp-4]
 0058E189    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 0058E18C    mov         edx,dword ptr ds:[5CC540];TForm
 0058E192    call        @IsClass
 0058E197    test        al,al
>0058E199    je          0058E1BB
 0058E19B    mov         eax,dword ptr [ebp-4]
 0058E19E    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 0058E1A1    cmp         dword ptr [eax+250],0
>0058E1A8    je          0058E1BB
 0058E1AA    mov         eax,dword ptr [ebp-4]
 0058E1AD    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 0058E1B0    mov         eax,dword ptr [eax+250]
 0058E1B6    mov         edx,dword ptr [eax]
 0058E1B8    call        dword ptr [edx+0C]
 0058E1BB    pop         ebx
 0058E1BC    mov         esp,ebp
 0058E1BE    pop         ebp
 0058E1BF    ret
*}
end;

//0058E1C0
{*function sub_0058E1C0(?:Pointer; ?:?):?;
begin
 0058E1C0    push        ebp
 0058E1C1    mov         ebp,esp
 0058E1C3    add         esp,0FFFFFFE4
 0058E1C6    mov         dword ptr [ebp-8],edx
 0058E1C9    mov         dword ptr [ebp-4],eax
 0058E1CC    mov         eax,dword ptr [ebp-8]
 0058E1CF    mov         eax,dword ptr [eax+8]
 0058E1D2    call        005CCF08
 0058E1D7    mov         byte ptr [ebp-13],al
 0058E1DA    mov         eax,dword ptr [ebp-8]
 0058E1DD    mov         ax,word ptr [eax+4]
 0058E1E1    mov         dl,byte ptr [ebp-13]
 0058E1E4    call        005A2AEC
 0058E1E9    mov         word ptr [ebp-12],ax
 0058E1ED    cmp         word ptr [ebp-12],0
>0058E1F2    je          0058E27A
 0058E1F8    mov         eax,dword ptr [ebp-4]
 0058E1FB    mov         eax,dword ptr [eax+30]
 0058E1FE    mov         eax,dword ptr [eax+8]
 0058E201    dec         eax
 0058E202    test        eax,eax
>0058E204    jl          0058E27A
 0058E206    inc         eax
 0058E207    mov         dword ptr [ebp-1C],eax
 0058E20A    mov         dword ptr [ebp-10],0
 0058E211    mov         eax,dword ptr [ebp-4]
 0058E214    mov         eax,dword ptr [eax+30]
 0058E217    mov         eax,dword ptr [eax+4]
 0058E21A    mov         edx,dword ptr [ebp-10]
 0058E21D    mov         eax,dword ptr [eax+edx*4]
 0058E220    mov         dword ptr [ebp-18],eax
 0058E223    mov         eax,dword ptr [ebp-18]
 0058E226    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E22C    call        @IsClass
 0058E231    test        al,al
>0058E233    je          0058E272
 0058E235    mov         eax,dword ptr [ebp-18]
 0058E238    mov         ax,word ptr [eax+84]
 0058E23F    cmp         ax,word ptr [ebp-12]
>0058E243    je          0058E265
 0058E245    mov         eax,dword ptr [ebp-18]
 0058E248    cmp         dword ptr [eax+90],0
>0058E24F    je          0058E272
 0058E251    mov         eax,dword ptr [ebp-18]
 0058E254    call        TOpenPicture.GetSecondaryShortCuts
 0058E259    mov         dx,word ptr [ebp-12]
 0058E25D    call        0058F148
 0058E262    inc         eax
>0058E263    je          0058E272
 0058E265    mov         eax,dword ptr [ebp-18]
 0058E268    mov         edx,dword ptr [eax]
 0058E26A    call        dword ptr [edx+50]
 0058E26D    mov         byte ptr [ebp-9],al
>0058E270    jmp         0058E27E
 0058E272    inc         dword ptr [ebp-10]
 0058E275    dec         dword ptr [ebp-1C]
>0058E278    jne         0058E211
 0058E27A    mov         byte ptr [ebp-9],0
 0058E27E    mov         al,byte ptr [ebp-9]
 0058E281    mov         esp,ebp
 0058E283    pop         ebp
 0058E284    ret
end;*}

//0058E288
{*procedure TCustomActionList.sub_0058E288(?:?);
begin
 0058E288    push        ebp
 0058E289    mov         ebp,esp
 0058E28B    add         esp,0FFFFFFF4
 0058E28E    push        ebx
 0058E28F    mov         dword ptr [ebp-8],edx
 0058E292    mov         dword ptr [ebp-4],eax
 0058E295    mov         byte ptr [ebp-9],0
 0058E299    mov         eax,dword ptr [ebp-4]
 0058E29C    cmp         word ptr [eax+4A],0;TCustomActionList.?f4A:word
>0058E2A1    je          0058E2B2
 0058E2A3    lea         ecx,[ebp-9]
 0058E2A6    mov         ebx,dword ptr [ebp-4]
 0058E2A9    mov         edx,dword ptr [ebp-8]
 0058E2AC    mov         eax,dword ptr [ebx+4C];TCustomActionList.?f4C:dword
 0058E2AF    call        dword ptr [ebx+48];TCustomActionList.FOnExecute
 0058E2B2    mov         al,byte ptr [ebp-9]
 0058E2B5    pop         ebx
 0058E2B6    mov         esp,ebp
 0058E2B8    pop         ebp
 0058E2B9    ret
end;*}

//0058E2BC
{*procedure TCustomActionList.sub_0058E2BC(?:?);
begin
 0058E2BC    push        ebp
 0058E2BD    mov         ebp,esp
 0058E2BF    add         esp,0FFFFFFF4
 0058E2C2    push        ebx
 0058E2C3    mov         dword ptr [ebp-8],edx
 0058E2C6    mov         dword ptr [ebp-4],eax
 0058E2C9    mov         byte ptr [ebp-9],0
 0058E2CD    mov         eax,dword ptr [ebp-4]
 0058E2D0    cmp         word ptr [eax+52],0;TCustomActionList.?f52:word
>0058E2D5    je          0058E2E6
 0058E2D7    lea         ecx,[ebp-9]
 0058E2DA    mov         ebx,dword ptr [ebp-4]
 0058E2DD    mov         edx,dword ptr [ebp-8]
 0058E2E0    mov         eax,dword ptr [ebx+54];TCustomActionList.?f54:dword
 0058E2E3    call        dword ptr [ebx+50];TCustomActionList.FOnUpdate
 0058E2E6    mov         al,byte ptr [ebp-9]
 0058E2E9    pop         ebx
 0058E2EA    mov         esp,ebp
 0058E2EC    pop         ebp
 0058E2ED    ret
end;*}

//0058E2F0
procedure TActionList.SetState(Value:TActionListState);
begin
{*
 0058E2F0    push        ebp
 0058E2F1    mov         ebp,esp
 0058E2F3    add         esp,0FFFFFFEC
 0058E2F6    mov         byte ptr [ebp-5],dl
 0058E2F9    mov         dword ptr [ebp-4],eax
 0058E2FC    mov         eax,dword ptr [ebp-4]
 0058E2FF    mov         al,byte ptr [eax+58];TActionList.FState:TActionListState
 0058E302    cmp         al,byte ptr [ebp-5]
>0058E305    je          0058E3B4
 0058E30B    mov         al,byte ptr [ebp-5]
 0058E30E    mov         edx,dword ptr [ebp-4]
 0058E311    mov         byte ptr [edx+58],al;TActionList.FState:TActionListState
 0058E314    mov         eax,dword ptr [ebp-4]
 0058E317    cmp         byte ptr [eax+58],1;TActionList.FState:TActionListState
>0058E31B    je          0058E3B4
 0058E321    mov         eax,dword ptr [ebp-4]
 0058E324    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 0058E327    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058E32A    dec         eax
 0058E32B    test        eax,eax
>0058E32D    jl          0058E3B4
 0058E333    inc         eax
 0058E334    mov         dword ptr [ebp-14],eax
 0058E337    mov         dword ptr [ebp-0C],0
 0058E33E    mov         eax,dword ptr [ebp-4]
 0058E341    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 0058E344    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058E347    mov         edx,dword ptr [ebp-0C]
 0058E34A    mov         eax,dword ptr [eax+edx*4]
 0058E34D    mov         dword ptr [ebp-10],eax
 0058E350    mov         al,byte ptr [ebp-5]
 0058E353    sub         al,1
>0058E355    jb          0058E35D
 0058E357    dec         al
>0058E359    je          0058E387
>0058E35B    jmp         0058E3AC
 0058E35D    cmp         dword ptr [ebp-10],0
>0058E361    je          0058E37D
 0058E363    mov         eax,dword ptr [ebp-4]
 0058E366    cmp         byte ptr [eax+58],2;TActionList.FState:TActionListState
>0058E36A    jne         0058E37D
 0058E36C    mov         eax,dword ptr [ebp-10]
 0058E36F    mov         dl,byte ptr [eax+94]
 0058E375    mov         eax,dword ptr [ebp-10]
 0058E378    call        TOpenPicture.SetEnabled
 0058E37D    mov         eax,dword ptr [ebp-10]
 0058E380    mov         edx,dword ptr [eax]
 0058E382    call        dword ptr [edx+44]
>0058E385    jmp         0058E3AC
 0058E387    cmp         dword ptr [ebp-10],0
>0058E38B    je          0058E3AC
 0058E38D    cmp         byte ptr [ebp-5],2
>0058E391    jne         0058E3AC
 0058E393    mov         eax,dword ptr [ebp-10]
 0058E396    mov         al,byte ptr [eax+6A]
 0058E399    mov         edx,dword ptr [ebp-10]
 0058E39C    mov         byte ptr [edx+94],al
 0058E3A2    mov         dl,1
 0058E3A4    mov         eax,dword ptr [ebp-10]
 0058E3A7    call        TOpenPicture.SetEnabled
 0058E3AC    inc         dword ptr [ebp-0C]
 0058E3AF    dec         dword ptr [ebp-14]
>0058E3B2    jne         0058E33E
 0058E3B4    mov         esp,ebp
 0058E3B6    pop         ebp
 0058E3B7    ret
*}
end;

//0058E3B8
{*function sub_0058E3B8:?;
begin
 0058E3B8    push        ebp
 0058E3B9    mov         ebp,esp
 0058E3BB    add         esp,0FFFFFFF8
 0058E3BE    mov         dword ptr [ebp-4],eax
 0058E3C1    mov         eax,dword ptr [ebp-4]
 0058E3C4    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E3C7    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E3CD    call        @IsClass
 0058E3D2    mov         byte ptr [ebp-5],al
 0058E3D5    mov         al,byte ptr [ebp-5]
 0058E3D8    pop         ecx
 0058E3D9    pop         ecx
 0058E3DA    pop         ebp
 0058E3DB    ret
end;*}

//0058E3DC
{*function sub_0058E3DC:?;
begin
 0058E3DC    push        ebp
 0058E3DD    mov         ebp,esp
 0058E3DF    add         esp,0FFFFFFF8
 0058E3E2    mov         dword ptr [ebp-4],eax
 0058E3E5    mov         eax,dword ptr [ebp-4]
 0058E3E8    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E3EB    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E3F1    call        @IsClass
 0058E3F6    mov         byte ptr [ebp-5],al
 0058E3F9    mov         al,byte ptr [ebp-5]
 0058E3FC    pop         ecx
 0058E3FD    pop         ecx
 0058E3FE    pop         ebp
 0058E3FF    ret
end;*}

//0058E400
{*function sub_0058E400:?;
begin
 0058E400    push        ebp
 0058E401    mov         ebp,esp
 0058E403    add         esp,0FFFFFFF8
 0058E406    mov         dword ptr [ebp-4],eax
 0058E409    mov         eax,dword ptr [ebp-4]
 0058E40C    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E40F    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E415    call        @IsClass
 0058E41A    mov         byte ptr [ebp-5],al
 0058E41D    mov         al,byte ptr [ebp-5]
 0058E420    pop         ecx
 0058E421    pop         ecx
 0058E422    pop         ebp
 0058E423    ret
end;*}

//0058E424
{*function sub_0058E424:?;
begin
 0058E424    push        ebp
 0058E425    mov         ebp,esp
 0058E427    add         esp,0FFFFFFF8
 0058E42A    mov         dword ptr [ebp-4],eax
 0058E42D    mov         eax,dword ptr [ebp-4]
 0058E430    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E433    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E439    call        @IsClass
 0058E43E    mov         byte ptr [ebp-5],al
 0058E441    mov         al,byte ptr [ebp-5]
 0058E444    pop         ecx
 0058E445    pop         ecx
 0058E446    pop         ebp
 0058E447    ret
end;*}

//0058E448
{*function sub_0058E448:?;
begin
 0058E448    push        ebp
 0058E449    mov         ebp,esp
 0058E44B    add         esp,0FFFFFFF8
 0058E44E    mov         dword ptr [ebp-4],eax
 0058E451    mov         eax,dword ptr [ebp-4]
 0058E454    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E457    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E45D    call        @IsClass
 0058E462    mov         byte ptr [ebp-5],al
 0058E465    mov         al,byte ptr [ebp-5]
 0058E468    pop         ecx
 0058E469    pop         ecx
 0058E46A    pop         ebp
 0058E46B    ret
end;*}

//0058E46C
{*function sub_0058E46C:?;
begin
 0058E46C    push        ebp
 0058E46D    mov         ebp,esp
 0058E46F    add         esp,0FFFFFFF8
 0058E472    mov         dword ptr [ebp-4],eax
 0058E475    mov         eax,dword ptr [ebp-4]
 0058E478    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E47B    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E481    call        @IsClass
 0058E486    mov         byte ptr [ebp-5],al
 0058E489    mov         al,byte ptr [ebp-5]
 0058E48C    pop         ecx
 0058E48D    pop         ecx
 0058E48E    pop         ebp
 0058E48F    ret
end;*}

//0058E490
{*function sub_0058E490:?;
begin
 0058E490    push        ebp
 0058E491    mov         ebp,esp
 0058E493    add         esp,0FFFFFFF8
 0058E496    mov         dword ptr [ebp-4],eax
 0058E499    mov         eax,dword ptr [ebp-4]
 0058E49C    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E49F    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E4A5    call        @IsClass
 0058E4AA    mov         byte ptr [ebp-5],al
 0058E4AD    mov         al,byte ptr [ebp-5]
 0058E4B0    pop         ecx
 0058E4B1    pop         ecx
 0058E4B2    pop         ebp
 0058E4B3    ret
end;*}

//0058E4B4
{*function sub_0058E4B4:?;
begin
 0058E4B4    push        ebp
 0058E4B5    mov         ebp,esp
 0058E4B7    add         esp,0FFFFFFF8
 0058E4BA    mov         dword ptr [ebp-4],eax
 0058E4BD    mov         eax,dword ptr [ebp-4]
 0058E4C0    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E4C3    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E4C9    call        @IsClass
 0058E4CE    mov         byte ptr [ebp-5],al
 0058E4D1    mov         al,byte ptr [ebp-5]
 0058E4D4    pop         ecx
 0058E4D5    pop         ecx
 0058E4D6    pop         ebp
 0058E4D7    ret
end;*}

//0058E4D8
{*function sub_0058E4D8:?;
begin
 0058E4D8    push        ebp
 0058E4D9    mov         ebp,esp
 0058E4DB    add         esp,0FFFFFFF8
 0058E4DE    mov         dword ptr [ebp-4],eax
 0058E4E1    mov         eax,dword ptr [ebp-4]
 0058E4E4    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E4E7    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E4ED    call        @IsClass
 0058E4F2    mov         byte ptr [ebp-5],al
 0058E4F5    mov         al,byte ptr [ebp-5]
 0058E4F8    pop         ecx
 0058E4F9    pop         ecx
 0058E4FA    pop         ebp
 0058E4FB    ret
end;*}

//0058E4FC
{*function sub_0058E4FC:?;
begin
 0058E4FC    push        ebp
 0058E4FD    mov         ebp,esp
 0058E4FF    add         esp,0FFFFFFF8
 0058E502    mov         dword ptr [ebp-4],eax
 0058E505    mov         eax,dword ptr [ebp-4]
 0058E508    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 0058E50B    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E511    call        @IsClass
 0058E516    mov         byte ptr [ebp-5],al
 0058E519    mov         al,byte ptr [ebp-5]
 0058E51C    pop         ecx
 0058E51D    pop         ecx
 0058E51E    pop         ebp
 0058E51F    ret
end;*}

//0058E520
{*procedure sub_0058E520(?:?);
begin
 0058E520    push        ebp
 0058E521    mov         ebp,esp
 0058E523    add         esp,0FFFFFFF8
 0058E526    mov         byte ptr [ebp-5],dl
 0058E529    mov         dword ptr [ebp-4],eax
 0058E52C    pop         ecx
 0058E52D    pop         ecx
 0058E52E    pop         ebp
 0058E52F    ret
end;*}

//0058E530
{*procedure sub_0058E530(?:?);
begin
 0058E530    push        ebp
 0058E531    mov         ebp,esp
 0058E533    add         esp,0FFFFFFF8
 0058E536    mov         dword ptr [ebp-8],edx
 0058E539    mov         dword ptr [ebp-4],eax
 0058E53C    pop         ecx
 0058E53D    pop         ecx
 0058E53E    pop         ebp
 0058E53F    ret
end;*}

//0058E540
{*procedure sub_0058E540(?:?);
begin
 0058E540    push        ebp
 0058E541    mov         ebp,esp
 0058E543    add         esp,0FFFFFFF8
 0058E546    mov         byte ptr [ebp-5],dl
 0058E549    mov         dword ptr [ebp-4],eax
 0058E54C    pop         ecx
 0058E54D    pop         ecx
 0058E54E    pop         ebp
 0058E54F    ret
end;*}

//0058E550
{*procedure sub_0058E550(?:?);
begin
 0058E550    push        ebp
 0058E551    mov         ebp,esp
 0058E553    add         esp,0FFFFFFF8
 0058E556    mov         byte ptr [ebp-5],dl
 0058E559    mov         dword ptr [ebp-4],eax
 0058E55C    pop         ecx
 0058E55D    pop         ecx
 0058E55E    pop         ebp
 0058E55F    ret
end;*}

//0058E560
{*procedure sub_0058E560(?:?);
begin
 0058E560    push        ebp
 0058E561    mov         ebp,esp
 0058E563    add         esp,0FFFFFFF8
 0058E566    mov         dword ptr [ebp-8],edx
 0058E569    mov         dword ptr [ebp-4],eax
 0058E56C    pop         ecx
 0058E56D    pop         ecx
 0058E56E    pop         ebp
 0058E56F    ret
end;*}

//0058E570
{*procedure sub_0058E570(?:?);
begin
 0058E570    push        ebp
 0058E571    mov         ebp,esp
 0058E573    add         esp,0FFFFFFF8
 0058E576    mov         dword ptr [ebp-8],edx
 0058E579    mov         dword ptr [ebp-4],eax
 0058E57C    pop         ecx
 0058E57D    pop         ecx
 0058E57E    pop         ebp
 0058E57F    ret
end;*}

//0058E580
{*procedure sub_0058E580(?:?);
begin
 0058E580    push        ebp
 0058E581    mov         ebp,esp
 0058E583    add         esp,0FFFFFFF8
 0058E586    mov         dword ptr [ebp-8],edx
 0058E589    mov         dword ptr [ebp-4],eax
 0058E58C    pop         ecx
 0058E58D    pop         ecx
 0058E58E    pop         ebp
 0058E58F    ret
end;*}

//0058E590
{*procedure sub_0058E590(?:?);
begin
 0058E590    push        ebp
 0058E591    mov         ebp,esp
 0058E593    add         esp,0FFFFFFF8
 0058E596    mov         byte ptr [ebp-5],dl
 0058E599    mov         dword ptr [ebp-4],eax
 0058E59C    pop         ecx
 0058E59D    pop         ecx
 0058E59E    pop         ebp
 0058E59F    ret
end;*}

//0058E5A0
{*procedure sub_0058E5A0(?:?);
begin
 0058E5A0    push        ebp
 0058E5A1    mov         ebp,esp
 0058E5A3    add         esp,0FFFFFFF8
 0058E5A6    mov         dword ptr [ebp-8],edx
 0058E5A9    mov         dword ptr [ebp-4],eax
 0058E5AC    pop         ecx
 0058E5AD    pop         ecx
 0058E5AE    pop         ebp
 0058E5AF    ret
end;*}

//0058E5B0
{*procedure sub_0058E5B0(?:?);
begin
 0058E5B0    push        ebp
 0058E5B1    mov         ebp,esp
 0058E5B3    add         esp,0FFFFFFF8
 0058E5B6    mov         dword ptr [ebp-8],edx
 0058E5B9    mov         dword ptr [ebp-4],eax
 0058E5BC    pop         ecx
 0058E5BD    pop         ecx
 0058E5BE    pop         ebp
 0058E5BF    ret
end;*}

//0058E5C0
{*procedure sub_0058E5C0(?:?);
begin
 0058E5C0    push        ebp
 0058E5C1    mov         ebp,esp
 0058E5C3    add         esp,0FFFFFFF8
 0058E5C6    mov         word ptr [ebp-6],dx
 0058E5CA    mov         dword ptr [ebp-4],eax
 0058E5CD    pop         ecx
 0058E5CE    pop         ecx
 0058E5CF    pop         ebp
 0058E5D0    ret
end;*}

//0058E5D4
{*procedure sub_0058E5D4(?:?);
begin
 0058E5D4    push        ebp
 0058E5D5    mov         ebp,esp
 0058E5D7    add         esp,0FFFFFFF8
 0058E5DA    mov         byte ptr [ebp-5],dl
 0058E5DD    mov         dword ptr [ebp-4],eax
 0058E5E0    pop         ecx
 0058E5E1    pop         ecx
 0058E5E2    pop         ebp
 0058E5E3    ret
end;*}

//0058E5E4
constructor TCustomAction.Create(AOwner:TComponent);
begin
{*
 0058E5E4    push        ebp
 0058E5E5    mov         ebp,esp
 0058E5E7    add         esp,0FFFFFFF4
 0058E5EA    test        dl,dl
>0058E5EC    je          0058E5F6
 0058E5EE    add         esp,0FFFFFFF0
 0058E5F1    call        @ClassCreate
 0058E5F6    mov         dword ptr [ebp-0C],ecx
 0058E5F9    mov         byte ptr [ebp-5],dl
 0058E5FC    mov         dword ptr [ebp-4],eax
 0058E5FF    mov         ecx,dword ptr [ebp-0C]
 0058E602    xor         edx,edx
 0058E604    mov         eax,dword ptr [ebp-4]
 0058E607    call        TBasicAction.Create
 0058E60C    mov         eax,dword ptr [ebp-4]
 0058E60F    mov         byte ptr [eax+6A],1;TCustomAction.FEnabled:Boolean
 0058E613    mov         eax,dword ptr [ebp-4]
 0058E616    mov         dword ptr [eax+80],0FFFFFFFF;TCustomAction.FImageIndex:TImageIndex
 0058E620    mov         eax,dword ptr [ebp-4]
 0058E623    mov         byte ptr [eax+86],1;TCustomAction.FVisible:Boolean
 0058E62A    mov         eax,dword ptr [ebp-4]
 0058E62D    xor         edx,edx
 0058E62F    mov         dword ptr [eax+90],edx;TCustomAction.FSecondaryShortCuts:TShortCutList
 0058E635    mov         eax,dword ptr [ebp-4]
 0058E638    cmp         byte ptr [ebp-5],0
>0058E63C    je          0058E64D
 0058E63E    call        @AfterConstruction
 0058E643    pop         dword ptr fs:[0]
 0058E64A    add         esp,0C
 0058E64D    mov         eax,dword ptr [ebp-4]
 0058E650    mov         esp,ebp
 0058E652    pop         ebp
 0058E653    ret
*}
end;

//0058E654
destructor TCustomAction.Destroy;
begin
{*
 0058E654    push        ebp
 0058E655    mov         ebp,esp
 0058E657    add         esp,0FFFFFFF8
 0058E65A    call        @BeforeDestruction
 0058E65F    mov         byte ptr [ebp-5],dl
 0058E662    mov         dword ptr [ebp-4],eax
 0058E665    mov         eax,dword ptr [ebp-4]
 0058E668    mov         eax,dword ptr [eax+98];TCustomAction.FImage:TObject
 0058E66E    call        TObject.Free
 0058E673    mov         eax,dword ptr [ebp-4]
 0058E676    mov         eax,dword ptr [eax+9C];TCustomAction.FMask:TObject
 0058E67C    call        TObject.Free
 0058E681    mov         eax,dword ptr [ebp-4]
 0058E684    cmp         dword ptr [eax+90],0;TCustomAction.FSecondaryShortCuts:TShortCutList
>0058E68B    je          0058E69A
 0058E68D    mov         eax,dword ptr [ebp-4]
 0058E690    add         eax,90;TCustomAction.FSecondaryShortCuts:TShortCutList
 0058E695    call        FreeAndNil
 0058E69A    mov         dl,byte ptr [ebp-5]
 0058E69D    and         dl,0FC
 0058E6A0    mov         eax,dword ptr [ebp-4]
 0058E6A3    call        TContainedAction.Destroy
 0058E6A8    cmp         byte ptr [ebp-5],0
>0058E6AC    jle         0058E6B6
 0058E6AE    mov         eax,dword ptr [ebp-4]
 0058E6B1    call        @ClassDestroy
 0058E6B6    pop         ecx
 0058E6B7    pop         ecx
 0058E6B8    pop         ebp
 0058E6B9    ret
*}
end;

//0058E6BC
procedure TCustomAction.AssignTo(Dest:TPersistent);
begin
{*
 0058E6BC    push        ebp
 0058E6BD    mov         ebp,esp
 0058E6BF    add         esp,0FFFFFFF8
 0058E6C2    mov         dword ptr [ebp-8],edx
 0058E6C5    mov         dword ptr [ebp-4],eax
 0058E6C8    mov         eax,dword ptr [ebp-8]
 0058E6CB    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E6D1    call        @IsClass
 0058E6D6    test        al,al
>0058E6D8    je          0058E78F
 0058E6DE    mov         eax,dword ptr [ebp-4]
 0058E6E1    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 0058E6E4    mov         eax,dword ptr [ebp-8]
 0058E6E7    call        TOpenPicture.SetCaption
 0058E6EC    mov         eax,dword ptr [ebp-4]
 0058E6EF    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 0058E6F2    mov         eax,dword ptr [ebp-8]
 0058E6F5    call        TAction.SetChecked
 0058E6FA    mov         eax,dword ptr [ebp-4]
 0058E6FD    mov         dl,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 0058E700    mov         eax,dword ptr [ebp-8]
 0058E703    call        TOpenPicture.SetEnabled
 0058E708    mov         eax,dword ptr [ebp-4]
 0058E70B    mov         edx,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 0058E70E    mov         eax,dword ptr [ebp-8]
 0058E711    mov         ecx,dword ptr [eax]
 0058E713    call        dword ptr [ecx+48]
 0058E716    mov         eax,dword ptr [ebp-4]
 0058E719    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 0058E71C    mov         eax,dword ptr [ebp-8]
 0058E71F    call        TOpenPicture.SetHint
 0058E724    mov         eax,dword ptr [ebp-4]
 0058E727    mov         edx,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 0058E72D    mov         eax,dword ptr [ebp-8]
 0058E730    call        TOpenPicture.SetImageIndex
 0058E735    mov         eax,dword ptr [ebp-4]
 0058E738    mov         dx,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 0058E73F    mov         eax,dword ptr [ebp-8]
 0058E742    call        TOpenPicture.SetShortCut
 0058E747    mov         eax,dword ptr [ebp-4]
 0058E74A    mov         dl,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 0058E750    mov         eax,dword ptr [ebp-8]
 0058E753    call        TOpenPicture.SetVisible
 0058E758    mov         eax,dword ptr [ebp-4]
 0058E75B    push        dword ptr [eax+44];TCustomAction.?f44:dword
 0058E75E    push        dword ptr [eax+40];TCustomAction.FOnExecute:TNotifyEvent
 0058E761    mov         eax,dword ptr [ebp-8]
 0058E764    mov         edx,dword ptr [eax]
 0058E766    call        dword ptr [edx+34]
 0058E769    mov         eax,dword ptr [ebp-8]
 0058E76C    mov         edx,dword ptr [ebp-4]
 0058E76F    mov         ecx,dword ptr [edx+48];TCustomAction.FOnUpdate:TNotifyEvent
 0058E772    mov         dword ptr [eax+48],ecx
 0058E775    mov         ecx,dword ptr [edx+4C];TCustomAction.?f4C:dword
 0058E778    mov         dword ptr [eax+4C],ecx
 0058E77B    mov         eax,dword ptr [ebp-8]
 0058E77E    mov         edx,dword ptr [ebp-4]
 0058E781    mov         ecx,dword ptr [edx+38];TCustomAction.FOnChange:TNotifyEvent
 0058E784    mov         dword ptr [eax+38],ecx
 0058E787    mov         ecx,dword ptr [edx+3C];TCustomAction.?f3C:dword
 0058E78A    mov         dword ptr [eax+3C],ecx
>0058E78D    jmp         0058E79A
 0058E78F    mov         edx,dword ptr [ebp-8]
 0058E792    mov         eax,dword ptr [ebp-4]
 0058E795    call        TPersistent.AssignTo
 0058E79A    pop         ecx
 0058E79B    pop         ecx
 0058E79C    pop         ebp
 0058E79D    ret
*}
end;

//0058E7A0
procedure TAction.SetAutoCheck(Value:Boolean);
begin
{*
 0058E7A0    push        ebp
 0058E7A1    mov         ebp,esp
 0058E7A3    add         esp,0FFFFFFF0
 0058E7A6    mov         byte ptr [ebp-5],dl
 0058E7A9    mov         dword ptr [ebp-4],eax
 0058E7AC    mov         al,byte ptr [ebp-5]
 0058E7AF    mov         edx,dword ptr [ebp-4]
 0058E7B2    cmp         al,byte ptr [edx+95];TAction.FAutoCheck:Boolean
>0058E7B8    je          0058E822
 0058E7BA    mov         eax,dword ptr [ebp-4]
 0058E7BD    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058E7C0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058E7C3    dec         eax
 0058E7C4    test        eax,eax
>0058E7C6    jl          0058E80E
 0058E7C8    inc         eax
 0058E7C9    mov         dword ptr [ebp-10],eax
 0058E7CC    mov         dword ptr [ebp-0C],0
 0058E7D3    mov         edx,dword ptr [ebp-0C]
 0058E7D6    mov         eax,dword ptr [ebp-4]
 0058E7D9    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058E7DC    call        TList.Get
 0058E7E1    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058E7E7    call        @IsClass
 0058E7EC    test        al,al
>0058E7EE    je          0058E806
 0058E7F0    mov         edx,dword ptr [ebp-0C]
 0058E7F3    mov         eax,dword ptr [ebp-4]
 0058E7F6    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058E7F9    call        TList.Get
 0058E7FE    mov         dl,byte ptr [ebp-5]
 0058E801    mov         ecx,dword ptr [eax]
 0058E803    call        dword ptr [ecx+48]
 0058E806    inc         dword ptr [ebp-0C]
 0058E809    dec         dword ptr [ebp-10]
>0058E80C    jne         0058E7D3
 0058E80E    mov         al,byte ptr [ebp-5]
 0058E811    mov         edx,dword ptr [ebp-4]
 0058E814    mov         byte ptr [edx+95],al;TAction.FAutoCheck:Boolean
 0058E81A    mov         eax,dword ptr [ebp-4]
 0058E81D    mov         edx,dword ptr [eax]
 0058E81F    call        dword ptr [edx+30];TAction.sub_00651284
 0058E822    mov         esp,ebp
 0058E824    pop         ebp
 0058E825    ret
*}
end;

//0058E828
procedure TOpenPicture.SetCaption(Value:String);
begin
{*
 0058E828    push        ebp
 0058E829    mov         ebp,esp
 0058E82B    add         esp,0FFFFFFEC
 0058E82E    mov         dword ptr [ebp-8],edx
 0058E831    mov         dword ptr [ebp-4],eax
 0058E834    mov         eax,dword ptr [ebp-8]
 0058E837    mov         edx,dword ptr [ebp-4]
 0058E83A    mov         edx,dword ptr [edx+64];TOpenPicture.FCaption:String
 0058E83D    call        @LStrCmp
>0058E842    je          0058E8A9
 0058E844    mov         eax,dword ptr [ebp-4]
 0058E847    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058E84A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058E84D    dec         eax
 0058E84E    test        eax,eax
>0058E850    jl          0058E893
 0058E852    inc         eax
 0058E853    mov         dword ptr [ebp-14],eax
 0058E856    mov         dword ptr [ebp-0C],0
 0058E85D    mov         eax,dword ptr [ebp-4]
 0058E860    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058E863    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058E866    mov         edx,dword ptr [ebp-0C]
 0058E869    mov         eax,dword ptr [eax+edx*4]
 0058E86C    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058E872    call        @AsClass
 0058E877    mov         dword ptr [ebp-10],eax
 0058E87A    cmp         dword ptr [ebp-10],0
>0058E87E    je          0058E88B
 0058E880    mov         edx,dword ptr [ebp-8]
 0058E883    mov         eax,dword ptr [ebp-10]
 0058E886    mov         ecx,dword ptr [eax]
 0058E888    call        dword ptr [ecx+4C];TActionLink.sub_0058E530
 0058E88B    inc         dword ptr [ebp-0C]
 0058E88E    dec         dword ptr [ebp-14]
>0058E891    jne         0058E85D
 0058E893    mov         eax,dword ptr [ebp-4]
 0058E896    add         eax,64;TOpenPicture.FCaption:String
 0058E899    mov         edx,dword ptr [ebp-8]
 0058E89C    call        @LStrAsg
 0058E8A1    mov         eax,dword ptr [ebp-4]
 0058E8A4    mov         edx,dword ptr [eax]
 0058E8A6    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058E8A9    mov         esp,ebp
 0058E8AB    pop         ebp
 0058E8AC    ret
*}
end;

//0058E8B0
procedure TAction.SetChecked(Value:Boolean);
begin
{*
 0058E8B0    push        ebp
 0058E8B1    mov         ebp,esp
 0058E8B3    add         esp,0FFFFFFE8
 0058E8B6    mov         byte ptr [ebp-5],dl
 0058E8B9    mov         dword ptr [ebp-4],eax
 0058E8BC    mov         eax,dword ptr [ebp-4]
 0058E8BF    cmp         byte ptr [eax+68],0;TAction.FChecking:Boolean
>0058E8C3    jne         0058E9E1
 0058E8C9    mov         eax,dword ptr [ebp-4]
 0058E8CC    mov         byte ptr [eax+68],1;TAction.FChecking:Boolean
 0058E8D0    xor         eax,eax
 0058E8D2    push        ebp
 0058E8D3    push        58E9DA
 0058E8D8    push        dword ptr fs:[eax]
 0058E8DB    mov         dword ptr fs:[eax],esp
 0058E8DE    mov         eax,dword ptr [ebp-4]
 0058E8E1    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 0058E8E4    cmp         al,byte ptr [ebp-5]
>0058E8E7    je          0058E9C5
 0058E8ED    mov         eax,dword ptr [ebp-4]
 0058E8F0    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058E8F3    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058E8F6    dec         eax
 0058E8F7    test        eax,eax
>0058E8F9    jl          0058E93C
 0058E8FB    inc         eax
 0058E8FC    mov         dword ptr [ebp-18],eax
 0058E8FF    mov         dword ptr [ebp-0C],0
 0058E906    mov         eax,dword ptr [ebp-4]
 0058E909    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058E90C    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058E90F    mov         edx,dword ptr [ebp-0C]
 0058E912    mov         eax,dword ptr [eax+edx*4]
 0058E915    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058E91B    call        @AsClass
 0058E920    mov         dword ptr [ebp-10],eax
 0058E923    cmp         dword ptr [ebp-10],0
>0058E927    je          0058E934
 0058E929    mov         dl,byte ptr [ebp-5]
 0058E92C    mov         eax,dword ptr [ebp-10]
 0058E92F    mov         ecx,dword ptr [eax]
 0058E931    call        dword ptr [ecx+50];TActionLink.sub_0058E540
 0058E934    inc         dword ptr [ebp-0C]
 0058E937    dec         dword ptr [ebp-18]
>0058E93A    jne         0058E906
 0058E93C    mov         eax,dword ptr [ebp-4]
 0058E93F    mov         dl,byte ptr [ebp-5]
 0058E942    mov         byte ptr [eax+69],dl;TAction.FChecked:Boolean
 0058E945    mov         eax,dword ptr [ebp-4]
 0058E948    cmp         dword ptr [eax+6C],0;TAction.FGroupIndex:Integer
>0058E94C    jle         0058E9BD
 0058E94E    mov         eax,dword ptr [ebp-4]
 0058E951    cmp         byte ptr [eax+69],0;TAction.FChecked:Boolean
>0058E955    je          0058E9BD
 0058E957    mov         eax,dword ptr [ebp-4]
 0058E95A    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 0058E95D    call        0058DFD0
 0058E962    dec         eax
 0058E963    test        eax,eax
>0058E965    jl          0058E9BD
 0058E967    inc         eax
 0058E968    mov         dword ptr [ebp-18],eax
 0058E96B    mov         dword ptr [ebp-0C],0
 0058E972    mov         eax,dword ptr [ebp-4]
 0058E975    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 0058E978    mov         edx,dword ptr [ebp-0C]
 0058E97B    call        0058DFAC
 0058E980    mov         dword ptr [ebp-14],eax
 0058E983    mov         eax,dword ptr [ebp-14]
 0058E986    cmp         eax,dword ptr [ebp-4]
>0058E989    je          0058E9B5
 0058E98B    mov         eax,dword ptr [ebp-14]
 0058E98E    mov         edx,dword ptr ds:[58D604];TCustomAction
 0058E994    call        @IsClass
 0058E999    test        al,al
>0058E99B    je          0058E9B5
 0058E99D    mov         eax,dword ptr [ebp-14]
 0058E9A0    mov         eax,dword ptr [eax+6C]
 0058E9A3    mov         edx,dword ptr [ebp-4]
 0058E9A6    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>0058E9A9    jne         0058E9B5
 0058E9AB    xor         edx,edx
 0058E9AD    mov         eax,dword ptr [ebp-14]
 0058E9B0    call        TAction.SetChecked
 0058E9B5    inc         dword ptr [ebp-0C]
 0058E9B8    dec         dword ptr [ebp-18]
>0058E9BB    jne         0058E972
 0058E9BD    mov         eax,dword ptr [ebp-4]
 0058E9C0    mov         edx,dword ptr [eax]
 0058E9C2    call        dword ptr [edx+30];TAction.sub_00651284
 0058E9C5    xor         eax,eax
 0058E9C7    pop         edx
 0058E9C8    pop         ecx
 0058E9C9    pop         ecx
 0058E9CA    mov         dword ptr fs:[eax],edx
 0058E9CD    push        58E9E1
 0058E9D2    mov         eax,dword ptr [ebp-4]
 0058E9D5    mov         byte ptr [eax+68],0;TAction.FChecking:Boolean
 0058E9D9    ret
>0058E9DA    jmp         @HandleFinally
>0058E9DF    jmp         0058E9D2
 0058E9E1    mov         esp,ebp
 0058E9E3    pop         ebp
 0058E9E4    ret
*}
end;

//0058E9E8
procedure TOpenPicture.SetEnabled(Value:Boolean);
begin
{*
 0058E9E8    push        ebp
 0058E9E9    mov         ebp,esp
 0058E9EB    add         esp,0FFFFFFEC
 0058E9EE    mov         byte ptr [ebp-5],dl
 0058E9F1    mov         dword ptr [ebp-4],eax
 0058E9F4    mov         al,byte ptr [ebp-5]
 0058E9F7    mov         edx,dword ptr [ebp-4]
 0058E9FA    cmp         al,byte ptr [edx+6A];TOpenPicture.FEnabled:Boolean
>0058E9FD    je          0058EA93
 0058EA03    mov         eax,dword ptr [ebp-4]
 0058EA06    cmp         dword ptr [eax+5C],0;TOpenPicture.FActionList:TCustomActionList
>0058EA0A    je          0058EA33
 0058EA0C    mov         eax,dword ptr [ebp-4]
 0058EA0F    mov         eax,dword ptr [eax+5C];TOpenPicture.FActionList:TCustomActionList
 0058EA12    cmp         byte ptr [eax+58],1;TCustomActionList.FState:TActionListState
>0058EA16    jne         0058EA23
 0058EA18    mov         al,byte ptr [ebp-5]
 0058EA1B    mov         edx,dword ptr [ebp-4]
 0058EA1E    mov         byte ptr [edx+6A],al;TOpenPicture.FEnabled:Boolean
>0058EA21    jmp         0058EA93
 0058EA23    mov         eax,dword ptr [ebp-4]
 0058EA26    mov         eax,dword ptr [eax+5C];TOpenPicture.FActionList:TCustomActionList
 0058EA29    cmp         byte ptr [eax+58],2;TCustomActionList.FState:TActionListState
>0058EA2D    jne         0058EA33
 0058EA2F    mov         byte ptr [ebp-5],1
 0058EA33    mov         eax,dword ptr [ebp-4]
 0058EA36    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EA39    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EA3C    dec         eax
 0058EA3D    test        eax,eax
>0058EA3F    jl          0058EA82
 0058EA41    inc         eax
 0058EA42    mov         dword ptr [ebp-14],eax
 0058EA45    mov         dword ptr [ebp-0C],0
 0058EA4C    mov         eax,dword ptr [ebp-4]
 0058EA4F    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EA52    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058EA55    mov         edx,dword ptr [ebp-0C]
 0058EA58    mov         eax,dword ptr [eax+edx*4]
 0058EA5B    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EA61    call        @AsClass
 0058EA66    mov         dword ptr [ebp-10],eax
 0058EA69    cmp         dword ptr [ebp-10],0
>0058EA6D    je          0058EA7A
 0058EA6F    mov         dl,byte ptr [ebp-5]
 0058EA72    mov         eax,dword ptr [ebp-10]
 0058EA75    mov         ecx,dword ptr [eax]
 0058EA77    call        dword ptr [ecx+54];TActionLink.sub_0058E550
 0058EA7A    inc         dword ptr [ebp-0C]
 0058EA7D    dec         dword ptr [ebp-14]
>0058EA80    jne         0058EA4C
 0058EA82    mov         al,byte ptr [ebp-5]
 0058EA85    mov         edx,dword ptr [ebp-4]
 0058EA88    mov         byte ptr [edx+6A],al;TOpenPicture.FEnabled:Boolean
 0058EA8B    mov         eax,dword ptr [ebp-4]
 0058EA8E    mov         edx,dword ptr [eax]
 0058EA90    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058EA93    mov         esp,ebp
 0058EA95    pop         ebp
 0058EA96    ret
*}
end;

//0058EA98
procedure TAction.SetGroupIndex(Value:Integer);
begin
{*
 0058EA98    push        ebp
 0058EA99    mov         ebp,esp
 0058EA9B    add         esp,0FFFFFFEC
 0058EA9E    mov         dword ptr [ebp-8],edx
 0058EAA1    mov         dword ptr [ebp-4],eax
 0058EAA4    mov         eax,dword ptr [ebp-8]
 0058EAA7    mov         edx,dword ptr [ebp-4]
 0058EAAA    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>0058EAAD    je          0058EB0F
 0058EAAF    mov         eax,dword ptr [ebp-8]
 0058EAB2    mov         edx,dword ptr [ebp-4]
 0058EAB5    mov         dword ptr [edx+6C],eax;TAction.FGroupIndex:Integer
 0058EAB8    mov         eax,dword ptr [ebp-4]
 0058EABB    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EABE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EAC1    dec         eax
 0058EAC2    test        eax,eax
>0058EAC4    jl          0058EB07
 0058EAC6    inc         eax
 0058EAC7    mov         dword ptr [ebp-14],eax
 0058EACA    mov         dword ptr [ebp-0C],0
 0058EAD1    mov         eax,dword ptr [ebp-4]
 0058EAD4    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EAD7    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058EADA    mov         edx,dword ptr [ebp-0C]
 0058EADD    mov         eax,dword ptr [eax+edx*4]
 0058EAE0    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EAE6    call        @AsClass
 0058EAEB    mov         dword ptr [ebp-10],eax
 0058EAEE    cmp         dword ptr [ebp-10],0
>0058EAF2    je          0058EAFF
 0058EAF4    mov         edx,dword ptr [ebp-8]
 0058EAF7    mov         eax,dword ptr [ebp-10]
 0058EAFA    mov         ecx,dword ptr [eax]
 0058EAFC    call        dword ptr [ecx+58];TActionLink.sub_0058E560
 0058EAFF    inc         dword ptr [ebp-0C]
 0058EB02    dec         dword ptr [ebp-14]
>0058EB05    jne         0058EAD1
 0058EB07    mov         eax,dword ptr [ebp-4]
 0058EB0A    mov         edx,dword ptr [eax]
 0058EB0C    call        dword ptr [edx+30];TAction.sub_00651284
 0058EB0F    mov         esp,ebp
 0058EB11    pop         ebp
 0058EB12    ret
*}
end;

//0058EB14
procedure TAction.SetHelpType(Value:THelpType);
begin
{*
 0058EB14    push        ebp
 0058EB15    mov         ebp,esp
 0058EB17    add         esp,0FFFFFFF0
 0058EB1A    mov         byte ptr [ebp-5],dl
 0058EB1D    mov         dword ptr [ebp-4],eax
 0058EB20    mov         al,byte ptr [ebp-5]
 0058EB23    mov         edx,dword ptr [ebp-4]
 0058EB26    cmp         al,byte ptr [edx+70];TAction.FHelpType:THelpType
>0058EB29    je          0058EB90
 0058EB2B    mov         eax,dword ptr [ebp-4]
 0058EB2E    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EB31    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EB34    dec         eax
 0058EB35    test        eax,eax
>0058EB37    jl          0058EB7F
 0058EB39    inc         eax
 0058EB3A    mov         dword ptr [ebp-10],eax
 0058EB3D    mov         dword ptr [ebp-0C],0
 0058EB44    mov         edx,dword ptr [ebp-0C]
 0058EB47    mov         eax,dword ptr [ebp-4]
 0058EB4A    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EB4D    call        TList.Get
 0058EB52    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EB58    call        @IsClass
 0058EB5D    test        al,al
>0058EB5F    je          0058EB77
 0058EB61    mov         edx,dword ptr [ebp-0C]
 0058EB64    mov         eax,dword ptr [ebp-4]
 0058EB67    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EB6A    call        TList.Get
 0058EB6F    mov         dl,byte ptr [ebp-5]
 0058EB72    mov         ecx,dword ptr [eax]
 0058EB74    call        dword ptr [ecx+64]
 0058EB77    inc         dword ptr [ebp-0C]
 0058EB7A    dec         dword ptr [ebp-10]
>0058EB7D    jne         0058EB44
 0058EB7F    mov         al,byte ptr [ebp-5]
 0058EB82    mov         edx,dword ptr [ebp-4]
 0058EB85    mov         byte ptr [edx+70],al;TAction.FHelpType:THelpType
 0058EB88    mov         eax,dword ptr [ebp-4]
 0058EB8B    mov         edx,dword ptr [eax]
 0058EB8D    call        dword ptr [edx+30];TAction.sub_00651284
 0058EB90    mov         esp,ebp
 0058EB92    pop         ebp
 0058EB93    ret
*}
end;

//0058EB94
procedure TAction.SetHelpKeyword(Value:String);
begin
{*
 0058EB94    push        ebp
 0058EB95    mov         ebp,esp
 0058EB97    add         esp,0FFFFFFF0
 0058EB9A    mov         dword ptr [ebp-8],edx
 0058EB9D    mov         dword ptr [ebp-4],eax
 0058EBA0    mov         eax,dword ptr [ebp-8]
 0058EBA3    mov         edx,dword ptr [ebp-4]
 0058EBA6    mov         edx,dword ptr [edx+78];TAction.FHelpKeyword:String
 0058EBA9    call        @LStrCmp
>0058EBAE    je          0058EC1A
 0058EBB0    mov         eax,dword ptr [ebp-4]
 0058EBB3    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EBB6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EBB9    dec         eax
 0058EBBA    test        eax,eax
>0058EBBC    jl          0058EC04
 0058EBBE    inc         eax
 0058EBBF    mov         dword ptr [ebp-10],eax
 0058EBC2    mov         dword ptr [ebp-0C],0
 0058EBC9    mov         edx,dword ptr [ebp-0C]
 0058EBCC    mov         eax,dword ptr [ebp-4]
 0058EBCF    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EBD2    call        TList.Get
 0058EBD7    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EBDD    call        @IsClass
 0058EBE2    test        al,al
>0058EBE4    je          0058EBFC
 0058EBE6    mov         edx,dword ptr [ebp-0C]
 0058EBE9    mov         eax,dword ptr [ebp-4]
 0058EBEC    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 0058EBEF    call        TList.Get
 0058EBF4    mov         edx,dword ptr [ebp-8]
 0058EBF7    mov         ecx,dword ptr [eax]
 0058EBF9    call        dword ptr [ecx+60]
 0058EBFC    inc         dword ptr [ebp-0C]
 0058EBFF    dec         dword ptr [ebp-10]
>0058EC02    jne         0058EBC9
 0058EC04    mov         eax,dword ptr [ebp-4]
 0058EC07    add         eax,78;TAction.FHelpKeyword:String
 0058EC0A    mov         edx,dword ptr [ebp-8]
 0058EC0D    call        @LStrAsg
 0058EC12    mov         eax,dword ptr [ebp-4]
 0058EC15    mov         edx,dword ptr [eax]
 0058EC17    call        dword ptr [edx+30];TAction.sub_00651284
 0058EC1A    mov         esp,ebp
 0058EC1C    pop         ebp
 0058EC1D    ret
*}
end;

//0058EC20
procedure TOpenPicture.SetHelpContext(Value:THelpContext);
begin
{*
 0058EC20    push        ebp
 0058EC21    mov         ebp,esp
 0058EC23    add         esp,0FFFFFFEC
 0058EC26    mov         dword ptr [ebp-8],edx
 0058EC29    mov         dword ptr [ebp-4],eax
 0058EC2C    mov         eax,dword ptr [ebp-8]
 0058EC2F    mov         edx,dword ptr [ebp-4]
 0058EC32    cmp         eax,dword ptr [edx+74];TOpenPicture.FHelpContext:THelpContext
>0058EC35    je          0058EC97
 0058EC37    mov         eax,dword ptr [ebp-4]
 0058EC3A    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EC3D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EC40    dec         eax
 0058EC41    test        eax,eax
>0058EC43    jl          0058EC86
 0058EC45    inc         eax
 0058EC46    mov         dword ptr [ebp-14],eax
 0058EC49    mov         dword ptr [ebp-0C],0
 0058EC50    mov         eax,dword ptr [ebp-4]
 0058EC53    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EC56    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058EC59    mov         edx,dword ptr [ebp-0C]
 0058EC5C    mov         eax,dword ptr [eax+edx*4]
 0058EC5F    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EC65    call        @AsClass
 0058EC6A    mov         dword ptr [ebp-10],eax
 0058EC6D    cmp         dword ptr [ebp-10],0
>0058EC71    je          0058EC7E
 0058EC73    mov         edx,dword ptr [ebp-8]
 0058EC76    mov         eax,dword ptr [ebp-10]
 0058EC79    mov         ecx,dword ptr [eax]
 0058EC7B    call        dword ptr [ecx+5C];TActionLink.sub_0058E570
 0058EC7E    inc         dword ptr [ebp-0C]
 0058EC81    dec         dword ptr [ebp-14]
>0058EC84    jne         0058EC50
 0058EC86    mov         eax,dword ptr [ebp-8]
 0058EC89    mov         edx,dword ptr [ebp-4]
 0058EC8C    mov         dword ptr [edx+74],eax;TOpenPicture.FHelpContext:THelpContext
 0058EC8F    mov         eax,dword ptr [ebp-4]
 0058EC92    mov         edx,dword ptr [eax]
 0058EC94    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058EC97    mov         esp,ebp
 0058EC99    pop         ebp
 0058EC9A    ret
*}
end;

//0058EC9C
procedure TOpenPicture.SetHint(Value:String);
begin
{*
 0058EC9C    push        ebp
 0058EC9D    mov         ebp,esp
 0058EC9F    add         esp,0FFFFFFEC
 0058ECA2    mov         dword ptr [ebp-8],edx
 0058ECA5    mov         dword ptr [ebp-4],eax
 0058ECA8    mov         eax,dword ptr [ebp-8]
 0058ECAB    mov         edx,dword ptr [ebp-4]
 0058ECAE    mov         edx,dword ptr [edx+7C];TOpenPicture.FHint:String
 0058ECB1    call        @LStrCmp
>0058ECB6    je          0058ED1D
 0058ECB8    mov         eax,dword ptr [ebp-4]
 0058ECBB    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058ECBE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058ECC1    dec         eax
 0058ECC2    test        eax,eax
>0058ECC4    jl          0058ED07
 0058ECC6    inc         eax
 0058ECC7    mov         dword ptr [ebp-14],eax
 0058ECCA    mov         dword ptr [ebp-0C],0
 0058ECD1    mov         eax,dword ptr [ebp-4]
 0058ECD4    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058ECD7    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058ECDA    mov         edx,dword ptr [ebp-0C]
 0058ECDD    mov         eax,dword ptr [eax+edx*4]
 0058ECE0    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058ECE6    call        @AsClass
 0058ECEB    mov         dword ptr [ebp-10],eax
 0058ECEE    cmp         dword ptr [ebp-10],0
>0058ECF2    je          0058ECFF
 0058ECF4    mov         edx,dword ptr [ebp-8]
 0058ECF7    mov         eax,dword ptr [ebp-10]
 0058ECFA    mov         ecx,dword ptr [eax]
 0058ECFC    call        dword ptr [ecx+68];TActionLink.sub_0058E5A0
 0058ECFF    inc         dword ptr [ebp-0C]
 0058ED02    dec         dword ptr [ebp-14]
>0058ED05    jne         0058ECD1
 0058ED07    mov         eax,dword ptr [ebp-4]
 0058ED0A    add         eax,7C;TOpenPicture.FHint:String
 0058ED0D    mov         edx,dword ptr [ebp-8]
 0058ED10    call        @LStrAsg
 0058ED15    mov         eax,dword ptr [ebp-4]
 0058ED18    mov         edx,dword ptr [eax]
 0058ED1A    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058ED1D    mov         esp,ebp
 0058ED1F    pop         ebp
 0058ED20    ret
*}
end;

//0058ED24
procedure TOpenPicture.SetImageIndex(Value:TImageIndex);
begin
{*
 0058ED24    push        ebp
 0058ED25    mov         ebp,esp
 0058ED27    add         esp,0FFFFFFEC
 0058ED2A    mov         dword ptr [ebp-8],edx
 0058ED2D    mov         dword ptr [ebp-4],eax
 0058ED30    mov         eax,dword ptr [ebp-8]
 0058ED33    mov         edx,dword ptr [ebp-4]
 0058ED36    cmp         eax,dword ptr [edx+80];TOpenPicture.FImageIndex:TImageIndex
>0058ED3C    je          0058EDA1
 0058ED3E    mov         eax,dword ptr [ebp-4]
 0058ED41    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058ED44    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058ED47    dec         eax
 0058ED48    test        eax,eax
>0058ED4A    jl          0058ED8D
 0058ED4C    inc         eax
 0058ED4D    mov         dword ptr [ebp-14],eax
 0058ED50    mov         dword ptr [ebp-0C],0
 0058ED57    mov         eax,dword ptr [ebp-4]
 0058ED5A    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058ED5D    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058ED60    mov         edx,dword ptr [ebp-0C]
 0058ED63    mov         eax,dword ptr [eax+edx*4]
 0058ED66    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058ED6C    call        @AsClass
 0058ED71    mov         dword ptr [ebp-10],eax
 0058ED74    cmp         dword ptr [ebp-10],0
>0058ED78    je          0058ED85
 0058ED7A    mov         edx,dword ptr [ebp-8]
 0058ED7D    mov         eax,dword ptr [ebp-10]
 0058ED80    mov         ecx,dword ptr [eax]
 0058ED82    call        dword ptr [ecx+6C];TActionLink.sub_0058E5B0
 0058ED85    inc         dword ptr [ebp-0C]
 0058ED88    dec         dword ptr [ebp-14]
>0058ED8B    jne         0058ED57
 0058ED8D    mov         eax,dword ptr [ebp-8]
 0058ED90    mov         edx,dword ptr [ebp-4]
 0058ED93    mov         dword ptr [edx+80],eax;TOpenPicture.FImageIndex:TImageIndex
 0058ED99    mov         eax,dword ptr [ebp-4]
 0058ED9C    mov         edx,dword ptr [eax]
 0058ED9E    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058EDA1    mov         esp,ebp
 0058EDA3    pop         ebp
 0058EDA4    ret
*}
end;

//0058EDA8
procedure TOpenPicture.SetShortCut(Value:TShortCut);
begin
{*
 0058EDA8    push        ebp
 0058EDA9    mov         ebp,esp
 0058EDAB    add         esp,0FFFFFFEC
 0058EDAE    mov         word ptr [ebp-6],dx
 0058EDB2    mov         dword ptr [ebp-4],eax
 0058EDB5    mov         ax,word ptr [ebp-6]
 0058EDB9    mov         edx,dword ptr [ebp-4]
 0058EDBC    cmp         ax,word ptr [edx+84];TOpenPicture.FShortCut:TShortCut
>0058EDC3    je          0058EE2B
 0058EDC5    mov         eax,dword ptr [ebp-4]
 0058EDC8    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EDCB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EDCE    dec         eax
 0058EDCF    test        eax,eax
>0058EDD1    jl          0058EE15
 0058EDD3    inc         eax
 0058EDD4    mov         dword ptr [ebp-14],eax
 0058EDD7    mov         dword ptr [ebp-0C],0
 0058EDDE    mov         eax,dword ptr [ebp-4]
 0058EDE1    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EDE4    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058EDE7    mov         edx,dword ptr [ebp-0C]
 0058EDEA    mov         eax,dword ptr [eax+edx*4]
 0058EDED    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EDF3    call        @AsClass
 0058EDF8    mov         dword ptr [ebp-10],eax
 0058EDFB    cmp         dword ptr [ebp-10],0
>0058EDFF    je          0058EE0D
 0058EE01    mov         dx,word ptr [ebp-6]
 0058EE05    mov         eax,dword ptr [ebp-10]
 0058EE08    mov         ecx,dword ptr [eax]
 0058EE0A    call        dword ptr [ecx+70];TActionLink.sub_0058E5C0
 0058EE0D    inc         dword ptr [ebp-0C]
 0058EE10    dec         dword ptr [ebp-14]
>0058EE13    jne         0058EDDE
 0058EE15    mov         ax,word ptr [ebp-6]
 0058EE19    mov         edx,dword ptr [ebp-4]
 0058EE1C    mov         word ptr [edx+84],ax;TOpenPicture.FShortCut:TShortCut
 0058EE23    mov         eax,dword ptr [ebp-4]
 0058EE26    mov         edx,dword ptr [eax]
 0058EE28    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058EE2B    mov         esp,ebp
 0058EE2D    pop         ebp
 0058EE2E    ret
*}
end;

//0058EE30
procedure TOpenPicture.SetVisible(Value:Boolean);
begin
{*
 0058EE30    push        ebp
 0058EE31    mov         ebp,esp
 0058EE33    add         esp,0FFFFFFEC
 0058EE36    mov         byte ptr [ebp-5],dl
 0058EE39    mov         dword ptr [ebp-4],eax
 0058EE3C    mov         al,byte ptr [ebp-5]
 0058EE3F    mov         edx,dword ptr [ebp-4]
 0058EE42    cmp         al,byte ptr [edx+86];TOpenPicture.FVisible:Boolean
>0058EE48    je          0058EEB8
 0058EE4A    mov         eax,dword ptr [ebp-4]
 0058EE4D    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EE50    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0058EE53    dec         eax
 0058EE54    test        eax,eax
>0058EE56    jl          0058EEA4
 0058EE58    inc         eax
 0058EE59    mov         dword ptr [ebp-14],eax
 0058EE5C    mov         dword ptr [ebp-0C],0
 0058EE63    mov         eax,dword ptr [ebp-4]
 0058EE66    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EE69    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 0058EE6C    mov         edx,dword ptr [ebp-0C]
 0058EE6F    mov         eax,dword ptr [eax+edx*4]
 0058EE72    mov         edx,dword ptr ds:[58DA14];TActionLink
 0058EE78    call        @AsClass
 0058EE7D    mov         dword ptr [ebp-10],eax
 0058EE80    cmp         dword ptr [ebp-10],0
>0058EE84    je          0058EE9C
 0058EE86    mov         edx,dword ptr [ebp-0C]
 0058EE89    mov         eax,dword ptr [ebp-4]
 0058EE8C    mov         eax,dword ptr [eax+50];TOpenPicture.FClients:TList
 0058EE8F    call        TList.Get
 0058EE94    mov         dl,byte ptr [ebp-5]
 0058EE97    mov         ecx,dword ptr [eax]
 0058EE99    call        dword ptr [ecx+74]
 0058EE9C    inc         dword ptr [ebp-0C]
 0058EE9F    dec         dword ptr [ebp-14]
>0058EEA2    jne         0058EE63
 0058EEA4    mov         al,byte ptr [ebp-5]
 0058EEA7    mov         edx,dword ptr [ebp-4]
 0058EEAA    mov         byte ptr [edx+86],al;TOpenPicture.FVisible:Boolean
 0058EEB0    mov         eax,dword ptr [ebp-4]
 0058EEB3    mov         edx,dword ptr [eax]
 0058EEB5    call        dword ptr [edx+30];TOpenPicture.sub_00651284
 0058EEB8    mov         esp,ebp
 0058EEBA    pop         ebp
 0058EEBB    ret
*}
end;

//0058EEBC
{*procedure sub_0058EEBC(?:?);
begin
 0058EEBC    push        ebp
 0058EEBD    mov         ebp,esp
 0058EEBF    add         esp,0FFFFFFF4
 0058EEC2    mov         dword ptr [ebp-8],edx
 0058EEC5    mov         dword ptr [ebp-4],eax
 0058EEC8    mov         eax,dword ptr [ebp-4]
 0058EECB    mov         eax,dword ptr [eax+8];TCustomAction.Name:TComponentName
 0058EECE    mov         edx,dword ptr [ebp-4]
 0058EED1    mov         edx,dword ptr [edx+64];TCustomAction.FCaption:String
 0058EED4    call        @LStrCmp
>0058EED9    jne         0058EEF0
 0058EEDB    mov         eax,dword ptr [ebp-4]
 0058EEDE    cmp         dword ptr [eax+4],0;TCustomAction.FOwner:TComponent
>0058EEE2    je          0058EEF4
 0058EEE4    mov         eax,dword ptr [ebp-4]
 0058EEE7    mov         eax,dword ptr [eax+4];TCustomAction.FOwner:TComponent
 0058EEEA    test        byte ptr [eax+1C],1;TComponent.FComponentState:TComponentState
>0058EEEE    je          0058EEF4
 0058EEF0    xor         eax,eax
>0058EEF2    jmp         0058EEF6
 0058EEF4    mov         al,1
 0058EEF6    mov         byte ptr [ebp-9],al
 0058EEF9    mov         edx,dword ptr [ebp-8]
 0058EEFC    mov         eax,dword ptr [ebp-4]
 0058EEFF    call        TComponent.SetName
 0058EF04    cmp         byte ptr [ebp-9],0
>0058EF08    je          0058EF21
 0058EF0A    mov         eax,dword ptr [ebp-4]
 0058EF0D    mov         eax,dword ptr [eax+50];TCustomAction.FClients:TList
 0058EF10    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0058EF14    jne         0058EF21
 0058EF16    mov         edx,dword ptr [ebp-8]
 0058EF19    mov         eax,dword ptr [ebp-4]
 0058EF1C    call        TOpenPicture.SetCaption
 0058EF21    mov         esp,ebp
 0058EF23    pop         ebp
 0058EF24    ret
end;*}

//0058EF28
{*procedure TCustomAction.sub_0058EF28(?:?);
begin
 0058EF28    push        ebp
 0058EF29    mov         ebp,esp
 0058EF2B    add         esp,0FFFFFFF4
 0058EF2E    push        ebx
 0058EF2F    mov         dword ptr [ebp-8],edx
 0058EF32    mov         dword ptr [ebp-4],eax
 0058EF35    mov         byte ptr [ebp-9],1
 0058EF39    mov         eax,dword ptr [ebp-4]
 0058EF3C    cmp         word ptr [eax+8A],0;TCustomAction.?f8A:word
>0058EF44    je          0058EF5B
 0058EF46    lea         ecx,[ebp-9]
 0058EF49    mov         edx,dword ptr [ebp-8]
 0058EF4C    mov         ebx,dword ptr [ebp-4]
 0058EF4F    mov         eax,dword ptr [ebx+8C];TCustomAction.?f8C:dword
 0058EF55    call        dword ptr [ebx+88];TCustomAction.FOnHint
 0058EF5B    mov         al,byte ptr [ebp-9]
 0058EF5E    pop         ebx
 0058EF5F    mov         esp,ebp
 0058EF61    pop         ebp
 0058EF62    ret
end;*}

//0058EF64
procedure TCustomAction.sub_0058DD4C;
begin
{*
 0058EF64    push        ebp
 0058EF65    mov         ebp,esp
 0058EF67    add         esp,0FFFFFFF8
 0058EF6A    mov         dword ptr [ebp-4],eax
 0058EF6D    mov         byte ptr [ebp-5],0
 0058EF71    mov         eax,dword ptr [ebp-4]
 0058EF74    cmp         dword ptr [eax+5C],0;TCustomAction.FActionList:TCustomActionList
>0058EF78    je          0058EF86
 0058EF7A    mov         eax,dword ptr [ebp-4]
 0058EF7D    mov         eax,dword ptr [eax+5C];TCustomAction.FActionList:TCustomActionList
 0058EF80    cmp         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
>0058EF84    jne         0058EFD2
 0058EF86    mov         eax,dword ptr [ebp-4]
 0058EF89    mov         edx,dword ptr [eax]
 0058EF8B    call        dword ptr [edx+44];TCustomAction.sub_0058DDB8
 0058EF8E    mov         eax,dword ptr [ebp-4]
 0058EF91    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>0058EF95    je          0058EFB4
 0058EF97    mov         eax,dword ptr [ebp-4]
 0058EF9A    cmp         byte ptr [eax+95],0;TCustomAction.FAutoCheck:Boolean
>0058EFA1    je          0058EFB4
 0058EFA3    mov         eax,dword ptr [ebp-4]
 0058EFA6    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 0058EFA9    xor         dl,1
 0058EFAC    mov         eax,dword ptr [ebp-4]
 0058EFAF    call        TAction.SetChecked
 0058EFB4    mov         eax,dword ptr [ebp-4]
 0058EFB7    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>0058EFBB    je          0058EFC9
 0058EFBD    mov         eax,dword ptr [ebp-4]
 0058EFC0    call        TContainedAction.sub_0058DD4C
 0058EFC5    test        al,al
>0058EFC7    jne         0058EFCD
 0058EFC9    xor         eax,eax
>0058EFCB    jmp         0058EFCF
 0058EFCD    mov         al,1
 0058EFCF    mov         byte ptr [ebp-5],al
 0058EFD2    mov         al,byte ptr [ebp-5]
 0058EFD5    pop         ecx
 0058EFD6    pop         ecx
 0058EFD7    pop         ebp
 0058EFD8    ret
*}
end;

//0058EFDC
{*function TOpenPicture.GetSecondaryShortCuts:?;
begin
 0058EFDC    push        ebp
 0058EFDD    mov         ebp,esp
 0058EFDF    add         esp,0FFFFFFF8
 0058EFE2    mov         dword ptr [ebp-4],eax
 0058EFE5    mov         eax,dword ptr [ebp-4]
 0058EFE8    cmp         dword ptr [eax+90],0;TOpenPicture.FSecondaryShortCuts:TShortCutList
>0058EFEF    jne         0058F006
 0058EFF1    mov         dl,1
 0058EFF3    mov         eax,[0058D4B4];TShortCutList
 0058EFF8    call        TObject.Create;TShortCutList.Create
 0058EFFD    mov         edx,dword ptr [ebp-4]
 0058F000    mov         dword ptr [edx+90],eax;TOpenPicture.FSecondaryShortCuts:TShortCutList
 0058F006    mov         eax,dword ptr [ebp-4]
 0058F009    mov         eax,dword ptr [eax+90];TOpenPicture.FSecondaryShortCuts:TShortCutList
 0058F00F    mov         dword ptr [ebp-8],eax
 0058F012    mov         eax,dword ptr [ebp-8]
 0058F015    pop         ecx
 0058F016    pop         ecx
 0058F017    pop         ebp
 0058F018    ret
end;*}

//0058F01C
procedure TOpenPicture.SetSecondaryShortCuts(Value:TShortCutList);
begin
{*
 0058F01C    push        ebp
 0058F01D    mov         ebp,esp
 0058F01F    add         esp,0FFFFFFF8
 0058F022    mov         dword ptr [ebp-8],edx
 0058F025    mov         dword ptr [ebp-4],eax
 0058F028    mov         eax,dword ptr [ebp-4]
 0058F02B    cmp         dword ptr [eax+90],0;TOpenPicture.FSecondaryShortCuts:TShortCutList
>0058F032    jne         0058F049
 0058F034    mov         dl,1
 0058F036    mov         eax,[0058D4B4];TShortCutList
 0058F03B    call        TObject.Create;TShortCutList.Create
 0058F040    mov         edx,dword ptr [ebp-4]
 0058F043    mov         dword ptr [edx+90],eax;TOpenPicture.FSecondaryShortCuts:TShortCutList
 0058F049    mov         edx,dword ptr [ebp-8]
 0058F04C    mov         eax,dword ptr [ebp-4]
 0058F04F    mov         eax,dword ptr [eax+90];TOpenPicture.FSecondaryShortCuts:TShortCutList
 0058F055    mov         ecx,dword ptr [eax]
 0058F057    call        dword ptr [ecx+8];TStrings.Assign
 0058F05A    pop         ecx
 0058F05B    pop         ecx
 0058F05C    pop         ebp
 0058F05D    ret
*}
end;

//0058F060
function TOpenPicture.IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;
begin
{*
 0058F060    push        ebp
 0058F061    mov         ebp,esp
 0058F063    add         esp,0FFFFFFF8
 0058F066    mov         dword ptr [ebp-4],eax
 0058F069    mov         eax,dword ptr [ebp-4]
 0058F06C    cmp         dword ptr [eax+90],0;TOpenPicture.FSecondaryShortCuts:TShortCutList
>0058F073    je          0058F087
 0058F075    mov         eax,dword ptr [ebp-4]
 0058F078    mov         eax,dword ptr [eax+90];TOpenPicture.FSecondaryShortCuts:TShortCutList
 0058F07E    mov         edx,dword ptr [eax]
 0058F080    call        dword ptr [edx+14];TShortCutList.sub_00648198
 0058F083    test        eax,eax
>0058F085    jg          0058F08B
 0058F087    xor         eax,eax
>0058F089    jmp         0058F08D
 0058F08B    mov         al,1
 0058F08D    mov         byte ptr [ebp-5],al
 0058F090    mov         al,byte ptr [ebp-5]
 0058F093    pop         ecx
 0058F094    pop         ecx
 0058F095    pop         ebp
 0058F096    ret
*}
end;

//0058F098
{*function sub_0058F098:?;
begin
 0058F098    push        ebp
 0058F099    mov         ebp,esp
 0058F09B    add         esp,0FFFFFFF8
 0058F09E    push        esi
 0058F09F    mov         dword ptr [ebp-4],eax
 0058F0A2    mov         eax,dword ptr [ebp-4]
 0058F0A5    mov         si,0FFEF
 0058F0A9    call        @CallDynaInst;TCustomAction.sub_0058DD4C
 0058F0AE    mov         byte ptr [ebp-5],al
 0058F0B1    mov         al,byte ptr [ebp-5]
 0058F0B4    pop         esi
 0058F0B5    pop         ecx
 0058F0B6    pop         ecx
 0058F0B7    pop         ebp
 0058F0B8    ret
end;*}

//0058F0BC
{*function sub_0058F0BC(?:?):?;
begin
 0058F0BC    push        ebp
 0058F0BD    mov         ebp,esp
 0058F0BF    add         esp,0FFFFFFF4
 0058F0C2    push        ebx
 0058F0C3    mov         dword ptr [ebp-8],edx
 0058F0C6    mov         dword ptr [ebp-4],eax
 0058F0C9    mov         edx,dword ptr [ebp-8]
 0058F0CC    mov         eax,dword ptr [ebp-4]
 0058F0CF    call        00647DC4
 0058F0D4    mov         dword ptr [ebp-0C],eax
 0058F0D7    mov         eax,dword ptr [ebp-8]
 0058F0DA    call        005A2E30
 0058F0DF    movzx       ecx,ax
 0058F0E2    mov         edx,dword ptr [ebp-0C]
 0058F0E5    mov         eax,dword ptr [ebp-4]
 0058F0E8    mov         ebx,dword ptr [eax]
 0058F0EA    call        dword ptr [ebx+24];TShortCutList.sub_00648450
 0058F0ED    mov         eax,dword ptr [ebp-0C]
 0058F0F0    pop         ebx
 0058F0F1    mov         esp,ebp
 0058F0F3    pop         ebp
 0058F0F4    ret
end;*}

//0058F0F8
constructor TAction.Create(AOwner:TComponent);
begin
{*
 0058F0F8    push        ebp
 0058F0F9    mov         ebp,esp
 0058F0FB    add         esp,0FFFFFFF4
 0058F0FE    test        dl,dl
>0058F100    je          0058F10A
 0058F102    add         esp,0FFFFFFF0
 0058F105    call        @ClassCreate
 0058F10A    mov         dword ptr [ebp-0C],ecx
 0058F10D    mov         byte ptr [ebp-5],dl
 0058F110    mov         dword ptr [ebp-4],eax
 0058F113    mov         ecx,dword ptr [ebp-0C]
 0058F116    xor         edx,edx
 0058F118    mov         eax,dword ptr [ebp-4]
 0058F11B    call        TCustomAction.Create
 0058F120    mov         eax,dword ptr [ebp-4]
 0058F123    mov         byte ptr [eax+60],1;TAction.FDisableIfNoHandler:Boolean
 0058F127    mov         eax,dword ptr [ebp-4]
 0058F12A    cmp         byte ptr [ebp-5],0
>0058F12E    je          0058F13F
 0058F130    call        @AfterConstruction
 0058F135    pop         dword ptr fs:[0]
 0058F13C    add         esp,0C
 0058F13F    mov         eax,dword ptr [ebp-4]
 0058F142    mov         esp,ebp
 0058F144    pop         ebp
 0058F145    ret
*}
end;

//0058F148
{*function sub_0058F148(?:?; ?:?):?;
begin
 0058F148    push        ebp
 0058F149    mov         ebp,esp
 0058F14B    add         esp,0FFFFFFEC
 0058F14E    mov         word ptr [ebp-6],dx
 0058F152    mov         dword ptr [ebp-4],eax
 0058F155    mov         dword ptr [ebp-0C],0FFFFFFFF
 0058F15C    mov         eax,dword ptr [ebp-4]
 0058F15F    mov         edx,dword ptr [eax]
 0058F161    call        dword ptr [edx+14]
 0058F164    dec         eax
 0058F165    test        eax,eax
>0058F167    jl          0058F195
 0058F169    inc         eax
 0058F16A    mov         dword ptr [ebp-14],eax
 0058F16D    mov         dword ptr [ebp-10],0
 0058F174    mov         edx,dword ptr [ebp-10]
 0058F177    mov         eax,dword ptr [ebp-4]
 0058F17A    mov         ecx,dword ptr [eax]
 0058F17C    call        dword ptr [ecx+18]
 0058F17F    cmp         ax,word ptr [ebp-6]
>0058F183    jne         0058F18D
 0058F185    mov         eax,dword ptr [ebp-10]
 0058F188    mov         dword ptr [ebp-0C],eax
>0058F18B    jmp         0058F195
 0058F18D    inc         dword ptr [ebp-10]
 0058F190    dec         dword ptr [ebp-14]
>0058F193    jne         0058F174
 0058F195    mov         eax,dword ptr [ebp-0C]
 0058F198    mov         esp,ebp
 0058F19A    pop         ebp
 0058F19B    ret
end;*}

//0058F19C
procedure Finalization;
begin
{*
 0058F19C    push        ebp
 0058F19D    mov         ebp,esp
 0058F19F    xor         eax,eax
 0058F1A1    push        ebp
 0058F1A2    push        58F1C1
 0058F1A7    push        dword ptr fs:[eax]
 0058F1AA    mov         dword ptr fs:[eax],esp
 0058F1AD    inc         dword ptr ds:[6ECCE8]
 0058F1B3    xor         eax,eax
 0058F1B5    pop         edx
 0058F1B6    pop         ecx
 0058F1B7    pop         ecx
 0058F1B8    mov         dword ptr fs:[eax],edx
 0058F1BB    push        58F1C8
 0058F1C0    ret
>0058F1C1    jmp         @HandleFinally
>0058F1C6    jmp         0058F1C0
 0058F1C8    pop         ebp
 0058F1C9    ret
*}
end;

end.