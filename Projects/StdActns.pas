//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdActns;

interface

uses
  SysUtils, Classes, StdCtrls, Forms, Dialogs, StdActns;

type
  THintAction = class(TCustomAction)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//00589BB8
  end;
  TEditAction = class(TAction)
  public
    ......FControl:TCustomEdit;//fA0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00589C94
    //function v38(?:?):?; virtual;//v38//00589C2C
    //procedure v3C(?:?); virtual;//v3C//00589CD4
    //function v54(?:?):?; virtual;//v54//00589C08
  end;
  TEditCut = class(TEditAction)
  public
    //procedure v40(?:?); virtual;//v40//00589D84
  end;
  TEditCopy = class(TEditAction)
  public
    //procedure v40(?:?); virtual;//v40//00589D64
  end;
  TEditPaste = class(TEditAction)
  public
    //procedure v3C(?:?); virtual;//v3C//00589DC4
    //procedure v40(?:?); virtual;//v40//00589DA4
  end;
  TEditSelectAll = class(TEditAction)
  public
    //procedure v3C(?:?); virtual;//v3C//00589E0C
    //procedure v40(?:?); virtual;//v40//00589DEC
  end;
  TEditUndo = class(TEditAction)
  public
    //procedure v3C(?:?); virtual;//v3C//00589E94
    //procedure v40(?:?); virtual;//v40//00589E74
  end;
  TEditDelete = class(TEditAction)
  public
    //procedure v3C(?:?); virtual;//v3C//00589EE0
    //procedure v40(?:?); virtual;//v40//00589EC0
  end;
  TWindowAction = class(TAction)
  public
    ......FForm:TForm;//fA0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//00589F94
    constructor Create(AOwner:TComponent); virtual;//v2C//0058A040
    //function v38(?:?):?; virtual;//v38//00589F34
    //procedure v3C(?:?); virtual;//v3C//00589FD4
    //function v54(?:?):?; virtual;//v54//00589F10
  end;
  TWindowClose = class(TWindowAction)
  public
    //procedure v3C(?:?); virtual;//v3C//0058A0D8
    //procedure v40(?:?); virtual;//v40//0058A0A0
  end;
  TWindowCascade = class(TWindowAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A108
  end;
  TWindowTileHorizontal = class(TWindowAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A174
  end;
  TWindowTileVertical = class(TWindowAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A198
  end;
  TWindowMinimizeAll = class(TWindowAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A1BC
  end;
  TWindowArrange = class(TWindowAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A208
  end;
  THelpAction = class(TAction)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0058A228
    //function v38(?:?):?; virtual;//v38//0058A288
    //procedure v3C(?:?); virtual;//v3C//0058A2A0
  end;
  THelpContents = class(THelpAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A2C4
  end;
  THelpTopicSearch = class(THelpAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A2E8
  end;
  THelpOnHelp = class(THelpAction)
  public
    //procedure v40(?:?); virtual;//v40//0058A314
  end;
  THelpContextAction = class(THelpAction)
  public
    //procedure v3C(?:?); virtual;//v3C//0058A374
    //procedure v40(?:?); virtual;//v40//0058A340
  end;
  TCommonDialogAction = class(TCustomAction)
  public
    FExecuteResult:Boolean;//fA0
    FOnAccept:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    FOnCancel:TNotifyEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    FBeforeExecute:TNotifyEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FDialog:TCommonDialog;//fC0
    constructor Create(AOwner:TComponent); virtual;//v2C//0058A3BC
    //function v38(?:?):?; virtual;//v38//0058A5A8
    //procedure v40(?:?); virtual;//v40//0058A4E0
    //function v54:?; virtual;//v54//0058A590
  end;
  TFileAction = class(TCommonDialogAction)
  end;
  TFileOpen = class(TFileAction)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0058A5DC
    //function v54:?; virtual;//v54//0058A64C
    //function GetDialog:?;//0058A5C0
  end;
  TFileOpenWith = class(TFileOpen)
  public
    FileName:TFileName;//fC8
    //procedure v40(?:?); virtual;//v40//0058A664
  end;
  TFileSaveAs = class(TFileAction)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0058A78C
    //function v54:?; virtual;//v54//0058A7FC
    //function GetDialog:?;//0058A814
  end;
  TFilePrintSetup = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//0058A84C
    //function GetDialog:?;//0058A830
  end;
  TFileExit = class(TCustomAction)
  public
    //function v38(?:?):?; virtual;//v38//0058A8A4
    //procedure v40(?:?); virtual;//v40//0058A864
  end;
  TSearchAction = class(TCommonDialogAction)
  public
    FControl:TCustomEdit;//fC8
    FFindFirst:Boolean;//fCC
    constructor Create(AOwner:TComponent); virtual;//v2C//0058AA00
    //function v38(?:?):?; virtual;//v38//0058AA90
    //procedure v3C(?:?); virtual;//v3C//0058ABC4
    //procedure v40(?:?); virtual;//v40//0058AA68
    //procedure v58(?:?); virtual;//v58//0058AACC
  end;
  TSearchFind = class(TSearchAction)
  public
    //function v54:?; virtual;//v54//0058AC00
    //function GetDialog:?;//0058AC18
  end;
  TSearchReplace = class(TSearchAction)
  public
    //procedure v40(?:?); virtual;//v40//0058AC34
    //function v54:?; virtual;//v54//0058AC68
    //function GetDialog:?;//0058AC80
  end;
  TSearchFindFirst = class(TSearchFind)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0058AE6C
  end;
  TSearchFindNext = class(TCustomAction)
  public
    SearchFind:TSearchFind;//fA0
    constructor Create(AOwner:TComponent); virtual;//v2C//0058AEC0
    //function v38(?:?):?; virtual;//v38//0058AF50
    //procedure v3C(?:?); virtual;//v3C//0058AFE4
    //procedure v40(?:?); virtual;//v40//0058AF10
  end;
  TFontEdit = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//0058B098
    //function GetDialog:?;//0058B07C
  end;
  TColorSelect = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//0058B0CC
    //function GetDialog:?;//0058B0B0
  end;
  TPrintDlg = class(TCommonDialogAction)
  public
    //function v54:?; virtual;//v54//0058B100
    //function GetDialog:?;//0058B0E4
  end;
    procedure sub_00586BF8;//00586BF8
    constructor Create(AOwner:TComponent);//00589BB8
    //function sub_00589C08(?:?):?;//00589C08
    //function sub_00589C2C(?:?):?;//00589C2C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00589C94
    //procedure sub_00589CD4(?:?);//00589CD4
    //procedure sub_00589D28(?:TEditAction; ?:?);//00589D28
    //procedure sub_00589D64(?:?);//00589D64
    //procedure sub_00589D84(?:?);//00589D84
    //procedure sub_00589DA4(?:?);//00589DA4
    //procedure sub_00589DC4(?:?);//00589DC4
    //procedure sub_00589DEC(?:?);//00589DEC
    //procedure sub_00589E0C(?:?);//00589E0C
    //procedure sub_00589E74(?:?);//00589E74
    //procedure sub_00589E94(?:?);//00589E94
    //procedure sub_00589EC0(?:?);//00589EC0
    //procedure sub_00589EE0(?:?);//00589EE0
    //function sub_00589F10(?:?):?;//00589F10
    //function sub_00589F34(?:?):?;//00589F34
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00589F94
    //procedure sub_00589FD4(?:?);//00589FD4
    //procedure sub_0058A004(?:TWindowAction; ?:?);//0058A004
    constructor Create(AOwner:TComponent);//0058A040
    //procedure sub_0058A0A0(?:?);//0058A0A0
    //procedure sub_0058A0D8(?:?);//0058A0D8
    //procedure sub_0058A108(?:?);//0058A108
    //procedure sub_0058A128(?:?; ?:?);//0058A128
    //procedure sub_0058A174(?:?);//0058A174
    //procedure sub_0058A198(?:?);//0058A198
    //procedure sub_0058A1BC(?:?);//0058A1BC
    //procedure sub_0058A208(?:?);//0058A208
    constructor Create(AOwner:TComponent);//0058A228
    //function sub_0058A288(?:?):?;//0058A288
    //procedure sub_0058A2A0(?:?);//0058A2A0
    //procedure sub_0058A2C4(?:?);//0058A2C4
    //procedure sub_0058A2E8(?:?);//0058A2E8
    //procedure sub_0058A314(?:?);//0058A314
    //procedure sub_0058A340(?:?);//0058A340
    //procedure sub_0058A374(?:?);//0058A374
    constructor Create(AOwner:TComponent);//0058A3BC
    //procedure sub_0058A4E0(?:?);//0058A4E0
    //function sub_0058A590:?;//0058A590
    //function sub_0058A5A8(?:?):?;//0058A5A8
    constructor Create(AOwner:TComponent);//0058A5DC
    //function sub_0058A64C:?;//0058A64C
    //procedure sub_0058A664(?:?);//0058A664
    constructor Create(AOwner:TComponent);//0058A78C
    //function sub_0058A7FC:?;//0058A7FC
    //function sub_0058A84C:?;//0058A84C
    //procedure sub_0058A864(?:?);//0058A864
    //function sub_0058A8A4(?:?):?;//0058A8A4
    //function sub_0058A8BC(?:TCustomEdit; ?:?; ?:?; ?:?):?;//0058A8BC
    constructor Create(AOwner:TComponent);//0058AA00
    //procedure sub_0058AA68(?:?);//0058AA68
    //function sub_0058AA90(?:?):?;//0058AA90
    //procedure sub_0058AACC(?:?);//0058AACC
    //procedure sub_0058ABC4(?:?);//0058ABC4
    //function sub_0058AC00:?;//0058AC00
    //procedure sub_0058AC34(?:?);//0058AC34
    //function sub_0058AC68:?;//0058AC68
    constructor Create(AOwner:TComponent);//0058AE6C
    constructor Create(AOwner:TComponent);//0058AEC0
    //procedure sub_0058AF10(?:?);//0058AF10
    //function sub_0058AF50(?:?):?;//0058AF50
    //procedure sub_0058AFE4(?:?);//0058AFE4
    //function sub_0058B098:?;//0058B098
    //function sub_0058B0CC:?;//0058B0CC
    //function sub_0058B100:?;//0058B100
    procedure Finalization;//0058B118

implementation

//00586BF8
procedure sub_00586BF8;
begin
{*
 00586BF8    push        ebp
 00586BF9    mov         ebp,esp
 00586BFB    sub         dword ptr ds:[6ECCD0],1
 00586C02    pop         ebp
 00586C03    ret
*}
end;

//00589BB8
constructor THintAction.Create(AOwner:TComponent);
begin
{*
 00589BB8    push        ebp
 00589BB9    mov         ebp,esp
 00589BBB    add         esp,0FFFFFFF4
 00589BBE    test        dl,dl
>00589BC0    je          00589BCA
 00589BC2    add         esp,0FFFFFFF0
 00589BC5    call        @ClassCreate
 00589BCA    mov         dword ptr [ebp-0C],ecx
 00589BCD    mov         byte ptr [ebp-5],dl
 00589BD0    mov         dword ptr [ebp-4],eax
 00589BD3    mov         ecx,dword ptr [ebp-0C]
 00589BD6    xor         edx,edx
 00589BD8    mov         eax,dword ptr [ebp-4]
 00589BDB    call        TCustomAction.Create
 00589BE0    mov         eax,dword ptr [ebp-4]
 00589BE3    mov         byte ptr [eax+60],0;THintAction.FDisableIfNoHandler:Boolean
 00589BE7    mov         eax,dword ptr [ebp-4]
 00589BEA    cmp         byte ptr [ebp-5],0
>00589BEE    je          00589BFF
 00589BF0    call        @AfterConstruction
 00589BF5    pop         dword ptr fs:[0]
 00589BFC    add         esp,0C
 00589BFF    mov         eax,dword ptr [ebp-4]
 00589C02    mov         esp,ebp
 00589C04    pop         ebp
 00589C05    ret
*}
end;

//00589C08
{*function sub_00589C08(?:?):?;
begin
 00589C08    push        ebp
 00589C09    mov         ebp,esp
 00589C0B    add         esp,0FFFFFFF4
 00589C0E    mov         dword ptr [ebp-8],edx
 00589C11    mov         dword ptr [ebp-4],eax
 00589C14    mov         eax,dword ptr [ebp-8]
 00589C17    mov         edx,dword ptr ds:[59273C];TCustomEdit
 00589C1D    call        @AsClass
 00589C22    mov         dword ptr [ebp-0C],eax
 00589C25    mov         eax,dword ptr [ebp-0C]
 00589C28    mov         esp,ebp
 00589C2A    pop         ebp
 00589C2B    ret
end;*}

//00589C2C
{*function sub_00589C2C(?:?):?;
begin
 00589C2C    push        ebp
 00589C2D    mov         ebp,esp
 00589C2F    add         esp,0FFFFFFF4
 00589C32    push        esi
 00589C33    mov         dword ptr [ebp-8],edx
 00589C36    mov         dword ptr [ebp-4],eax
 00589C39    mov         eax,dword ptr [ebp-4]
 00589C3C    cmp         dword ptr [eax+0A0],0;TEditAction........FControl:TCustomEdit
>00589C43    je          00589C53
 00589C45    mov         eax,dword ptr [ebp-8]
 00589C48    mov         edx,dword ptr [ebp-4]
 00589C4B    cmp         eax,dword ptr [edx+0A0];TEditAction.........FControl:TCustomEdit
>00589C51    je          00589C71
 00589C53    mov         eax,dword ptr [ebp-4]
 00589C56    cmp         dword ptr [eax+0A0],0;TEditAction..........FControl:TCustomEdit
>00589C5D    jne         00589C81
 00589C5F    mov         eax,dword ptr [ebp-8]
 00589C62    mov         edx,dword ptr ds:[59273C];TCustomEdit
 00589C68    call        @IsClass
 00589C6D    test        al,al
>00589C6F    je          00589C81
 00589C71    mov         eax,dword ptr [ebp-8]
 00589C74    mov         si,0FFB5
 00589C78    call        @CallDynaInst
 00589C7D    test        al,al
>00589C7F    jne         00589C85
 00589C81    xor         eax,eax
>00589C83    jmp         00589C87
 00589C85    mov         al,1
 00589C87    mov         byte ptr [ebp-9],al
 00589C8A    mov         al,byte ptr [ebp-9]
 00589C8D    pop         esi
 00589C8E    mov         esp,ebp
 00589C90    pop         ebp
 00589C91    ret
end;*}

//00589C94
procedure TEditAction.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00589C94    push        ebp
 00589C95    mov         ebp,esp
 00589C97    add         esp,0FFFFFFF4
 00589C9A    mov         byte ptr [ebp-9],cl
 00589C9D    mov         dword ptr [ebp-8],edx
 00589CA0    mov         dword ptr [ebp-4],eax
 00589CA3    mov         cl,byte ptr [ebp-9]
 00589CA6    mov         edx,dword ptr [ebp-8]
 00589CA9    mov         eax,dword ptr [ebp-4]
 00589CAC    call        TBasicAction.Notification
 00589CB1    cmp         byte ptr [ebp-9],1
>00589CB5    jne         00589CCF
 00589CB7    mov         eax,dword ptr [ebp-8]
 00589CBA    mov         edx,dword ptr [ebp-4]
 00589CBD    cmp         eax,dword ptr [edx+0A0];TEditAction...........FControl:TCustomEdit
>00589CC3    jne         00589CCF
 00589CC5    xor         edx,edx
 00589CC7    mov         eax,dword ptr [ebp-4]
 00589CCA    call        00589D28
 00589CCF    mov         esp,ebp
 00589CD1    pop         ebp
 00589CD2    ret
*}
end;

//00589CD4
{*procedure sub_00589CD4(?:?);
begin
 00589CD4    push        ebp
 00589CD5    mov         ebp,esp
 00589CD7    add         esp,0FFFFFFF8
 00589CDA    mov         dword ptr [ebp-8],edx
 00589CDD    mov         dword ptr [ebp-4],eax
 00589CE0    mov         eax,dword ptr [ebp-4]
 00589CE3    mov         edx,dword ptr ds:[586E00];TEditCut
 00589CE9    call        @IsClass
 00589CEE    test        al,al
>00589CF0    jne         00589D04
 00589CF2    mov         eax,dword ptr [ebp-4]
 00589CF5    mov         edx,dword ptr ds:[586ED4];TEditCopy
 00589CFB    call        @IsClass
 00589D00    test        al,al
>00589D02    je          00589D24
 00589D04    mov         edx,dword ptr [ebp-8]
 00589D07    mov         eax,dword ptr [ebp-4]
 00589D0A    mov         ecx,dword ptr [eax]
 00589D0C    call        dword ptr [ecx+54];TEditAction.sub_00589C08
 00589D0F    mov         edx,dword ptr [eax]
 00589D11    call        dword ptr [edx+0C8]
 00589D17    test        eax,eax
 00589D19    setg        dl
 00589D1C    mov         eax,dword ptr [ebp-4]
 00589D1F    call        TOpenPicture.SetEnabled
 00589D24    pop         ecx
 00589D25    pop         ecx
 00589D26    pop         ebp
 00589D27    ret
end;*}

//00589D28
{*procedure sub_00589D28(?:TEditAction; ?:?);
begin
 00589D28    push        ebp
 00589D29    mov         ebp,esp
 00589D2B    add         esp,0FFFFFFF8
 00589D2E    mov         dword ptr [ebp-8],edx
 00589D31    mov         dword ptr [ebp-4],eax
 00589D34    mov         eax,dword ptr [ebp-8]
 00589D37    mov         edx,dword ptr [ebp-4]
 00589D3A    cmp         eax,dword ptr [edx+0A0];TEditAction............FControl:TCustomEdit
>00589D40    je          00589D5F
 00589D42    mov         eax,dword ptr [ebp-8]
 00589D45    mov         edx,dword ptr [ebp-4]
 00589D48    mov         dword ptr [edx+0A0],eax;TEditAction.............FControl:TCustomEdit
 00589D4E    cmp         dword ptr [ebp-8],0
>00589D52    je          00589D5F
 00589D54    mov         edx,dword ptr [ebp-4]
 00589D57    mov         eax,dword ptr [ebp-8]
 00589D5A    call        TComponent.FreeNotification
 00589D5F    pop         ecx
 00589D60    pop         ecx
 00589D61    pop         ebp
 00589D62    ret
end;*}

//00589D64
{*procedure sub_00589D64(?:?);
begin
 00589D64    push        ebp
 00589D65    mov         ebp,esp
 00589D67    add         esp,0FFFFFFF8
 00589D6A    mov         dword ptr [ebp-8],edx
 00589D6D    mov         dword ptr [ebp-4],eax
 00589D70    mov         edx,dword ptr [ebp-8]
 00589D73    mov         eax,dword ptr [ebp-4]
 00589D76    mov         ecx,dword ptr [eax]
 00589D78    call        dword ptr [ecx+54];TEditCopy.sub_00589C08
 00589D7B    call        00598F8C
 00589D80    pop         ecx
 00589D81    pop         ecx
 00589D82    pop         ebp
 00589D83    ret
end;*}

//00589D84
{*procedure sub_00589D84(?:?);
begin
 00589D84    push        ebp
 00589D85    mov         ebp,esp
 00589D87    add         esp,0FFFFFFF8
 00589D8A    mov         dword ptr [ebp-8],edx
 00589D8D    mov         dword ptr [ebp-4],eax
 00589D90    mov         edx,dword ptr [ebp-8]
 00589D93    mov         eax,dword ptr [ebp-4]
 00589D96    mov         ecx,dword ptr [eax]
 00589D98    call        dword ptr [ecx+54];TEditCut.sub_00589C08
 00589D9B    call        00598FB0
 00589DA0    pop         ecx
 00589DA1    pop         ecx
 00589DA2    pop         ebp
 00589DA3    ret
end;*}

//00589DA4
{*procedure sub_00589DA4(?:?);
begin
 00589DA4    push        ebp
 00589DA5    mov         ebp,esp
 00589DA7    add         esp,0FFFFFFF8
 00589DAA    mov         dword ptr [ebp-8],edx
 00589DAD    mov         dword ptr [ebp-4],eax
 00589DB0    mov         edx,dword ptr [ebp-8]
 00589DB3    mov         eax,dword ptr [ebp-4]
 00589DB6    mov         ecx,dword ptr [eax]
 00589DB8    call        dword ptr [ecx+54];TEditPaste.sub_00589C08
 00589DBB    call        00598FD4
 00589DC0    pop         ecx
 00589DC1    pop         ecx
 00589DC2    pop         ebp
 00589DC3    ret
end;*}

//00589DC4
{*procedure sub_00589DC4(?:?);
begin
 00589DC4    push        ebp
 00589DC5    mov         ebp,esp
 00589DC7    add         esp,0FFFFFFF8
 00589DCA    mov         dword ptr [ebp-8],edx
 00589DCD    mov         dword ptr [ebp-4],eax
 00589DD0    call        00638BD8
 00589DD5    mov         dx,1
 00589DD9    call        00638B94
 00589DDE    mov         edx,eax
 00589DE0    mov         eax,dword ptr [ebp-4]
 00589DE3    call        TOpenPicture.SetEnabled
 00589DE8    pop         ecx
 00589DE9    pop         ecx
 00589DEA    pop         ebp
 00589DEB    ret
end;*}

//00589DEC
{*procedure sub_00589DEC(?:?);
begin
 00589DEC    push        ebp
 00589DED    mov         ebp,esp
 00589DEF    add         esp,0FFFFFFF8
 00589DF2    mov         dword ptr [ebp-8],edx
 00589DF5    mov         dword ptr [ebp-4],eax
 00589DF8    mov         edx,dword ptr [ebp-8]
 00589DFB    mov         eax,dword ptr [ebp-4]
 00589DFE    mov         ecx,dword ptr [eax]
 00589E00    call        dword ptr [ecx+54];TEditSelectAll.sub_00589C08
 00589E03    call        0059901C
 00589E08    pop         ecx
 00589E09    pop         ecx
 00589E0A    pop         ebp
 00589E0B    ret
end;*}

//00589E0C
{*procedure sub_00589E0C(?:?);
begin
 00589E0C    push        ebp
 00589E0D    mov         ebp,esp
 00589E0F    add         esp,0FFFFFFF4
 00589E12    xor         ecx,ecx
 00589E14    mov         dword ptr [ebp-0C],ecx
 00589E17    mov         dword ptr [ebp-8],edx
 00589E1A    mov         dword ptr [ebp-4],eax
 00589E1D    xor         eax,eax
 00589E1F    push        ebp
 00589E20    push        589E69
 00589E25    push        dword ptr fs:[eax]
 00589E28    mov         dword ptr fs:[eax],esp
 00589E2B    mov         edx,dword ptr [ebp-8]
 00589E2E    mov         eax,dword ptr [ebp-4]
 00589E31    mov         ecx,dword ptr [eax]
 00589E33    call        dword ptr [ecx+54];TEditSelectAll.sub_00589C08
 00589E36    lea         edx,[ebp-0C]
 00589E39    call        TTabPage.GetCaption
 00589E3E    mov         eax,dword ptr [ebp-0C]
 00589E41    call        @LStrLen
 00589E46    test        eax,eax
 00589E48    setg        dl
 00589E4B    mov         eax,dword ptr [ebp-4]
 00589E4E    call        TOpenPicture.SetEnabled
 00589E53    xor         eax,eax
 00589E55    pop         edx
 00589E56    pop         ecx
 00589E57    pop         ecx
 00589E58    mov         dword ptr fs:[eax],edx
 00589E5B    push        589E70
 00589E60    lea         eax,[ebp-0C]
 00589E63    call        @LStrClr
 00589E68    ret
>00589E69    jmp         @HandleFinally
>00589E6E    jmp         00589E60
 00589E70    mov         esp,ebp
 00589E72    pop         ebp
 00589E73    ret
end;*}

//00589E74
{*procedure sub_00589E74(?:?);
begin
 00589E74    push        ebp
 00589E75    mov         ebp,esp
 00589E77    add         esp,0FFFFFFF8
 00589E7A    mov         dword ptr [ebp-8],edx
 00589E7D    mov         dword ptr [ebp-4],eax
 00589E80    mov         edx,dword ptr [ebp-8]
 00589E83    mov         eax,dword ptr [ebp-4]
 00589E86    mov         ecx,dword ptr [eax]
 00589E88    call        dword ptr [ecx+54];TEditUndo.sub_00589C08
 00589E8B    call        00598FF8
 00589E90    pop         ecx
 00589E91    pop         ecx
 00589E92    pop         ebp
 00589E93    ret
end;*}

//00589E94
{*procedure sub_00589E94(?:?);
begin
 00589E94    push        ebp
 00589E95    mov         ebp,esp
 00589E97    add         esp,0FFFFFFF8
 00589E9A    mov         dword ptr [ebp-8],edx
 00589E9D    mov         dword ptr [ebp-4],eax
 00589EA0    mov         edx,dword ptr [ebp-8]
 00589EA3    mov         eax,dword ptr [ebp-4]
 00589EA6    mov         ecx,dword ptr [eax]
 00589EA8    call        dword ptr [ecx+54];TEditUndo.sub_00589C08
 00589EAB    call        00598CD0
 00589EB0    mov         edx,eax
 00589EB2    mov         eax,dword ptr [ebp-4]
 00589EB5    call        TOpenPicture.SetEnabled
 00589EBA    pop         ecx
 00589EBB    pop         ecx
 00589EBC    pop         ebp
 00589EBD    ret
end;*}

//00589EC0
{*procedure sub_00589EC0(?:?);
begin
 00589EC0    push        ebp
 00589EC1    mov         ebp,esp
 00589EC3    add         esp,0FFFFFFF8
 00589EC6    mov         dword ptr [ebp-8],edx
 00589EC9    mov         dword ptr [ebp-4],eax
 00589ECC    mov         edx,dword ptr [ebp-8]
 00589ECF    mov         eax,dword ptr [ebp-4]
 00589ED2    mov         ecx,dword ptr [eax]
 00589ED4    call        dword ptr [ecx+54];TEditDelete.sub_00589C08
 00589ED7    call        00598F68
 00589EDC    pop         ecx
 00589EDD    pop         ecx
 00589EDE    pop         ebp
 00589EDF    ret
end;*}

//00589EE0
{*procedure sub_00589EE0(?:?);
begin
 00589EE0    push        ebp
 00589EE1    mov         ebp,esp
 00589EE3    add         esp,0FFFFFFF8
 00589EE6    mov         dword ptr [ebp-8],edx
 00589EE9    mov         dword ptr [ebp-4],eax
 00589EEC    mov         edx,dword ptr [ebp-8]
 00589EEF    mov         eax,dword ptr [ebp-4]
 00589EF2    mov         ecx,dword ptr [eax]
 00589EF4    call        dword ptr [ecx+54];TEditDelete.sub_00589C08
 00589EF7    mov         edx,dword ptr [eax]
 00589EF9    call        dword ptr [edx+0C8]
 00589EFF    test        eax,eax
 00589F01    setg        dl
 00589F04    mov         eax,dword ptr [ebp-4]
 00589F07    call        TOpenPicture.SetEnabled
 00589F0C    pop         ecx
 00589F0D    pop         ecx
 00589F0E    pop         ebp
 00589F0F    ret
end;*}

//00589F10
{*function sub_00589F10(?:?):?;
begin
 00589F10    push        ebp
 00589F11    mov         ebp,esp
 00589F13    add         esp,0FFFFFFF4
 00589F16    mov         dword ptr [ebp-8],edx
 00589F19    mov         dword ptr [ebp-4],eax
 00589F1C    mov         eax,dword ptr [ebp-8]
 00589F1F    mov         edx,dword ptr ds:[5CC540];TForm
 00589F25    call        @AsClass
 00589F2A    mov         dword ptr [ebp-0C],eax
 00589F2D    mov         eax,dword ptr [ebp-0C]
 00589F30    mov         esp,ebp
 00589F32    pop         ebp
 00589F33    ret
end;*}

//00589F34
{*function sub_00589F34(?:?):?;
begin
 00589F34    push        ebp
 00589F35    mov         ebp,esp
 00589F37    add         esp,0FFFFFFF4
 00589F3A    mov         dword ptr [ebp-8],edx
 00589F3D    mov         dword ptr [ebp-4],eax
 00589F40    mov         eax,dword ptr [ebp-4]
 00589F43    cmp         dword ptr [eax+0A0],0;TWindowAction........FForm:TForm
>00589F4A    je          00589F5A
 00589F4C    mov         eax,dword ptr [ebp-8]
 00589F4F    mov         edx,dword ptr [ebp-4]
 00589F52    cmp         eax,dword ptr [edx+0A0];TWindowAction.........FForm:TForm
>00589F58    je          00589F78
 00589F5A    mov         eax,dword ptr [ebp-4]
 00589F5D    cmp         dword ptr [eax+0A0],0;TWindowAction..........FForm:TForm
>00589F64    jne         00589F84
 00589F66    mov         eax,dword ptr [ebp-8]
 00589F69    mov         edx,dword ptr ds:[5CC540];TForm
 00589F6F    call        @IsClass
 00589F74    test        al,al
>00589F76    je          00589F84
 00589F78    mov         eax,dword ptr [ebp-8]
 00589F7B    cmp         byte ptr [eax+22F],2
>00589F82    je          00589F88
 00589F84    xor         eax,eax
>00589F86    jmp         00589F8A
 00589F88    mov         al,1
 00589F8A    mov         byte ptr [ebp-9],al
 00589F8D    mov         al,byte ptr [ebp-9]
 00589F90    mov         esp,ebp
 00589F92    pop         ebp
 00589F93    ret
end;*}

//00589F94
procedure TWindowAction.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00589F94    push        ebp
 00589F95    mov         ebp,esp
 00589F97    add         esp,0FFFFFFF4
 00589F9A    mov         byte ptr [ebp-9],cl
 00589F9D    mov         dword ptr [ebp-8],edx
 00589FA0    mov         dword ptr [ebp-4],eax
 00589FA3    mov         cl,byte ptr [ebp-9]
 00589FA6    mov         edx,dword ptr [ebp-8]
 00589FA9    mov         eax,dword ptr [ebp-4]
 00589FAC    call        TBasicAction.Notification
 00589FB1    cmp         byte ptr [ebp-9],1
>00589FB5    jne         00589FCF
 00589FB7    mov         eax,dword ptr [ebp-8]
 00589FBA    mov         edx,dword ptr [ebp-4]
 00589FBD    cmp         eax,dword ptr [edx+0A0];TWindowAction...........FForm:TForm
>00589FC3    jne         00589FCF
 00589FC5    xor         edx,edx
 00589FC7    mov         eax,dword ptr [ebp-4]
 00589FCA    call        0058A004
 00589FCF    mov         esp,ebp
 00589FD1    pop         ebp
 00589FD2    ret
*}
end;

//00589FD4
{*procedure sub_00589FD4(?:?);
begin
 00589FD4    push        ebp
 00589FD5    mov         ebp,esp
 00589FD7    add         esp,0FFFFFFF8
 00589FDA    mov         dword ptr [ebp-8],edx
 00589FDD    mov         dword ptr [ebp-4],eax
 00589FE0    mov         edx,dword ptr [ebp-8]
 00589FE3    mov         eax,dword ptr [ebp-4]
 00589FE6    mov         ecx,dword ptr [eax]
 00589FE8    call        dword ptr [ecx+54];TWindowAction.sub_00589F10
 00589FEB    call        TCustomForm.GetMDIChildCount
 00589FF0    test        eax,eax
 00589FF2    setg        dl
 00589FF5    mov         eax,dword ptr [ebp-4]
 00589FF8    call        TOpenPicture.SetEnabled
 00589FFD    pop         ecx
 00589FFE    pop         ecx
 00589FFF    pop         ebp
 0058A000    ret
end;*}

//0058A004
{*procedure sub_0058A004(?:TWindowAction; ?:?);
begin
 0058A004    push        ebp
 0058A005    mov         ebp,esp
 0058A007    add         esp,0FFFFFFF8
 0058A00A    mov         dword ptr [ebp-8],edx
 0058A00D    mov         dword ptr [ebp-4],eax
 0058A010    mov         eax,dword ptr [ebp-8]
 0058A013    mov         edx,dword ptr [ebp-4]
 0058A016    cmp         eax,dword ptr [edx+0A0];TWindowAction............FForm:TForm
>0058A01C    je          0058A03B
 0058A01E    mov         eax,dword ptr [ebp-8]
 0058A021    mov         edx,dword ptr [ebp-4]
 0058A024    mov         dword ptr [edx+0A0],eax;TWindowAction.............FForm:TForm
 0058A02A    cmp         dword ptr [ebp-8],0
>0058A02E    je          0058A03B
 0058A030    mov         edx,dword ptr [ebp-4]
 0058A033    mov         eax,dword ptr [ebp-8]
 0058A036    call        TComponent.FreeNotification
 0058A03B    pop         ecx
 0058A03C    pop         ecx
 0058A03D    pop         ebp
 0058A03E    ret
end;*}

//0058A040
constructor TWindowAction.Create(AOwner:TComponent);
begin
{*
 0058A040    push        ebp
 0058A041    mov         ebp,esp
 0058A043    add         esp,0FFFFFFF4
 0058A046    test        dl,dl
>0058A048    je          0058A052
 0058A04A    add         esp,0FFFFFFF0
 0058A04D    call        @ClassCreate
 0058A052    mov         dword ptr [ebp-0C],ecx
 0058A055    mov         byte ptr [ebp-5],dl
 0058A058    mov         dword ptr [ebp-4],eax
 0058A05B    mov         ecx,dword ptr [ebp-0C]
 0058A05E    xor         edx,edx
 0058A060    mov         eax,dword ptr [ebp-4]
 0058A063    call        TAction.Create
 0058A068    mov         eax,dword ptr [ebp-4]
 0058A06B    mov         byte ptr [eax+60],0;TWindowAction.FDisableIfNoHandler:Boolean
 0058A06F    mov         eax,dword ptr [ebp-4]
 0058A072    test        byte ptr [eax+1C],10;TWindowAction.FComponentState:TComponentState
 0058A076    setne       dl
 0058A079    mov         eax,dword ptr [ebp-4]
 0058A07C    call        TOpenPicture.SetEnabled
 0058A081    mov         eax,dword ptr [ebp-4]
 0058A084    cmp         byte ptr [ebp-5],0
>0058A088    je          0058A099
 0058A08A    call        @AfterConstruction
 0058A08F    pop         dword ptr fs:[0]
 0058A096    add         esp,0C
 0058A099    mov         eax,dword ptr [ebp-4]
 0058A09C    mov         esp,ebp
 0058A09E    pop         ebp
 0058A09F    ret
*}
end;

//0058A0A0
{*procedure sub_0058A0A0(?:?);
begin
 0058A0A0    push        ebp
 0058A0A1    mov         ebp,esp
 0058A0A3    add         esp,0FFFFFFF4
 0058A0A6    mov         dword ptr [ebp-8],edx
 0058A0A9    mov         dword ptr [ebp-4],eax
 0058A0AC    mov         edx,dword ptr [ebp-8]
 0058A0AF    mov         eax,dword ptr [ebp-4]
 0058A0B2    mov         ecx,dword ptr [eax]
 0058A0B4    call        dword ptr [ecx+54];TWindowClose.sub_00589F10
 0058A0B7    mov         dword ptr [ebp-0C],eax
 0058A0BA    mov         eax,dword ptr [ebp-0C]
 0058A0BD    call        005D0B8C
 0058A0C2    test        eax,eax
>0058A0C4    je          0058A0D3
 0058A0C6    mov         eax,dword ptr [ebp-0C]
 0058A0C9    call        005D0B8C
 0058A0CE    call        005D3F3C
 0058A0D3    mov         esp,ebp
 0058A0D5    pop         ebp
 0058A0D6    ret
end;*}

//0058A0D8
{*procedure sub_0058A0D8(?:?);
begin
 0058A0D8    push        ebp
 0058A0D9    mov         ebp,esp
 0058A0DB    add         esp,0FFFFFFF8
 0058A0DE    mov         dword ptr [ebp-8],edx
 0058A0E1    mov         dword ptr [ebp-4],eax
 0058A0E4    mov         edx,dword ptr [ebp-8]
 0058A0E7    mov         eax,dword ptr [ebp-4]
 0058A0EA    mov         ecx,dword ptr [eax]
 0058A0EC    call        dword ptr [ecx+54];TWindowClose.sub_00589F10
 0058A0EF    call        005D0B8C
 0058A0F4    test        eax,eax
 0058A0F6    setne       dl
 0058A0F9    mov         eax,dword ptr [ebp-4]
 0058A0FC    call        TOpenPicture.SetEnabled
 0058A101    pop         ecx
 0058A102    pop         ecx
 0058A103    pop         ebp
 0058A104    ret
end;*}

//0058A108
{*procedure sub_0058A108(?:?);
begin
 0058A108    push        ebp
 0058A109    mov         ebp,esp
 0058A10B    add         esp,0FFFFFFF8
 0058A10E    mov         dword ptr [ebp-8],edx
 0058A111    mov         dword ptr [ebp-4],eax
 0058A114    mov         edx,dword ptr [ebp-8]
 0058A117    mov         eax,dword ptr [ebp-4]
 0058A11A    mov         ecx,dword ptr [eax]
 0058A11C    call        dword ptr [ecx+54];TWindowCascade.sub_00589F10
 0058A11F    call        005D4C48
 0058A124    pop         ecx
 0058A125    pop         ecx
 0058A126    pop         ebp
 0058A127    ret
end;*}

//0058A128
{*procedure sub_0058A128(?:?; ?:?);
begin
 0058A128    push        ebp
 0058A129    mov         ebp,esp
 0058A12B    add         esp,0FFFFFFF8
 0058A12E    mov         byte ptr [ebp-5],dl
 0058A131    mov         dword ptr [ebp-4],eax
 0058A134    mov         eax,dword ptr [ebp-4]
 0058A137    cmp         byte ptr [eax+22F],2
>0058A13E    jne         0058A170
 0058A140    mov         eax,dword ptr [ebp-4]
 0058A143    cmp         dword ptr [eax+254],0
>0058A14A    je          0058A170
 0058A14C    push        0
 0058A14E    xor         eax,eax
 0058A150    mov         al,byte ptr [ebp-5]
 0058A153    movzx       eax,word ptr [eax*2+6E3A00]
 0058A15B    push        eax
 0058A15C    push        226
 0058A161    mov         eax,dword ptr [ebp-4]
 0058A164    mov         eax,dword ptr [eax+254]
 0058A16A    push        eax
 0058A16B    call        USER32.SendMessageA
 0058A170    pop         ecx
 0058A171    pop         ecx
 0058A172    pop         ebp
 0058A173    ret
end;*}

//0058A174
{*procedure sub_0058A174(?:?);
begin
 0058A174    push        ebp
 0058A175    mov         ebp,esp
 0058A177    add         esp,0FFFFFFF8
 0058A17A    mov         dword ptr [ebp-8],edx
 0058A17D    mov         dword ptr [ebp-4],eax
 0058A180    mov         edx,dword ptr [ebp-8]
 0058A183    mov         eax,dword ptr [ebp-4]
 0058A186    mov         ecx,dword ptr [eax]
 0058A188    call        dword ptr [ecx+54];TWindowTileHorizontal.sub_00589F10
 0058A18B    xor         edx,edx
 0058A18D    call        0058A128
 0058A192    pop         ecx
 0058A193    pop         ecx
 0058A194    pop         ebp
 0058A195    ret
end;*}

//0058A198
{*procedure sub_0058A198(?:?);
begin
 0058A198    push        ebp
 0058A199    mov         ebp,esp
 0058A19B    add         esp,0FFFFFFF8
 0058A19E    mov         dword ptr [ebp-8],edx
 0058A1A1    mov         dword ptr [ebp-4],eax
 0058A1A4    mov         edx,dword ptr [ebp-8]
 0058A1A7    mov         eax,dword ptr [ebp-4]
 0058A1AA    mov         ecx,dword ptr [eax]
 0058A1AC    call        dword ptr [ecx+54];TWindowTileVertical.sub_00589F10
 0058A1AF    mov         dl,1
 0058A1B1    call        0058A128
 0058A1B6    pop         ecx
 0058A1B7    pop         ecx
 0058A1B8    pop         ebp
 0058A1B9    ret
end;*}

//0058A1BC
{*procedure sub_0058A1BC(?:?);
begin
 0058A1BC    push        ebp
 0058A1BD    mov         ebp,esp
 0058A1BF    add         esp,0FFFFFFF0
 0058A1C2    mov         dword ptr [ebp-8],edx
 0058A1C5    mov         dword ptr [ebp-4],eax
 0058A1C8    mov         edx,dword ptr [ebp-8]
 0058A1CB    mov         eax,dword ptr [ebp-4]
 0058A1CE    mov         ecx,dword ptr [eax]
 0058A1D0    call        dword ptr [ecx+54];TWindowMinimizeAll.sub_00589F10
 0058A1D3    mov         dword ptr [ebp-10],eax
 0058A1D6    mov         eax,dword ptr [ebp-10]
 0058A1D9    call        TCustomForm.GetMDIChildCount
 0058A1DE    dec         eax
 0058A1DF    cmp         eax,0
>0058A1E2    jl          0058A202
 0058A1E4    mov         dword ptr [ebp-0C],eax
 0058A1E7    mov         edx,dword ptr [ebp-0C]
 0058A1EA    mov         eax,dword ptr [ebp-10]
 0058A1ED    call        005D0C44
 0058A1F2    mov         dl,1
 0058A1F4    call        TForm.SetWindowState
 0058A1F9    dec         dword ptr [ebp-0C]
 0058A1FC    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0058A200    jne         0058A1E7
 0058A202    mov         esp,ebp
 0058A204    pop         ebp
 0058A205    ret
end;*}

//0058A208
{*procedure sub_0058A208(?:?);
begin
 0058A208    push        ebp
 0058A209    mov         ebp,esp
 0058A20B    add         esp,0FFFFFFF8
 0058A20E    mov         dword ptr [ebp-8],edx
 0058A211    mov         dword ptr [ebp-4],eax
 0058A214    mov         edx,dword ptr [ebp-8]
 0058A217    mov         eax,dword ptr [ebp-4]
 0058A21A    mov         ecx,dword ptr [eax]
 0058A21C    call        dword ptr [ecx+54];TWindowArrange.sub_00589F10
 0058A21F    call        005D4C84
 0058A224    pop         ecx
 0058A225    pop         ecx
 0058A226    pop         ebp
 0058A227    ret
end;*}

//0058A228
constructor THelpAction.Create(AOwner:TComponent);
begin
{*
 0058A228    push        ebp
 0058A229    mov         ebp,esp
 0058A22B    add         esp,0FFFFFFF4
 0058A22E    test        dl,dl
>0058A230    je          0058A23A
 0058A232    add         esp,0FFFFFFF0
 0058A235    call        @ClassCreate
 0058A23A    mov         dword ptr [ebp-0C],ecx
 0058A23D    mov         byte ptr [ebp-5],dl
 0058A240    mov         dword ptr [ebp-4],eax
 0058A243    mov         ecx,dword ptr [ebp-0C]
 0058A246    xor         edx,edx
 0058A248    mov         eax,dword ptr [ebp-4]
 0058A24B    call        TAction.Create
 0058A250    mov         eax,dword ptr [ebp-4]
 0058A253    mov         byte ptr [eax+60],0;THelpAction.FDisableIfNoHandler:Boolean
 0058A257    mov         eax,dword ptr [ebp-4]
 0058A25A    test        byte ptr [eax+1C],10;THelpAction.FComponentState:TComponentState
 0058A25E    setne       dl
 0058A261    mov         eax,dword ptr [ebp-4]
 0058A264    call        TOpenPicture.SetEnabled
 0058A269    mov         eax,dword ptr [ebp-4]
 0058A26C    cmp         byte ptr [ebp-5],0
>0058A270    je          0058A281
 0058A272    call        @AfterConstruction
 0058A277    pop         dword ptr fs:[0]
 0058A27E    add         esp,0C
 0058A281    mov         eax,dword ptr [ebp-4]
 0058A284    mov         esp,ebp
 0058A286    pop         ebp
 0058A287    ret
*}
end;

//0058A288
{*function sub_0058A288(?:?):?;
begin
 0058A288    push        ebp
 0058A289    mov         ebp,esp
 0058A28B    add         esp,0FFFFFFF4
 0058A28E    mov         dword ptr [ebp-0C],edx
 0058A291    mov         dword ptr [ebp-4],eax
 0058A294    mov         byte ptr [ebp-5],1
 0058A298    mov         al,byte ptr [ebp-5]
 0058A29B    mov         esp,ebp
 0058A29D    pop         ebp
 0058A29E    ret
end;*}

//0058A2A0
{*procedure sub_0058A2A0(?:?);
begin
 0058A2A0    push        ebp
 0058A2A1    mov         ebp,esp
 0058A2A3    add         esp,0FFFFFFF8
 0058A2A6    mov         dword ptr [ebp-8],edx
 0058A2A9    mov         dword ptr [ebp-4],eax
 0058A2AC    mov         eax,[006E9DCC];^Application:TApplication
 0058A2B1    cmp         dword ptr [eax],0
 0058A2B4    setne       dl
 0058A2B7    mov         eax,dword ptr [ebp-4]
 0058A2BA    call        TOpenPicture.SetEnabled
 0058A2BF    pop         ecx
 0058A2C0    pop         ecx
 0058A2C1    pop         ebp
 0058A2C2    ret
end;*}

//0058A2C4
{*procedure sub_0058A2C4(?:?);
begin
 0058A2C4    push        ebp
 0058A2C5    mov         ebp,esp
 0058A2C7    add         esp,0FFFFFFF8
 0058A2CA    mov         dword ptr [ebp-8],edx
 0058A2CD    mov         dword ptr [ebp-4],eax
 0058A2D0    mov         eax,[006E9DCC];^Application:TApplication
 0058A2D5    mov         eax,dword ptr [eax]
 0058A2D7    xor         ecx,ecx
 0058A2D9    mov         edx,0B
 0058A2DE    call        005D8A88
 0058A2E3    pop         ecx
 0058A2E4    pop         ecx
 0058A2E5    pop         ebp
 0058A2E6    ret
end;*}

//0058A2E8
{*procedure sub_0058A2E8(?:?);
begin
 0058A2E8    push        ebp
 0058A2E9    mov         ebp,esp
 0058A2EB    add         esp,0FFFFFFF8
 0058A2EE    mov         dword ptr [ebp-8],edx
 0058A2F1    mov         dword ptr [ebp-4],eax
 0058A2F4    mov         ecx,58A310
 0058A2F9    mov         eax,[006E9DCC];^Application:TApplication
 0058A2FE    mov         eax,dword ptr [eax]
 0058A300    mov         edx,0B
 0058A305    call        005D8A88
 0058A30A    pop         ecx
 0058A30B    pop         ecx
 0058A30C    pop         ebp
 0058A30D    ret
end;*}

//0058A314
{*procedure sub_0058A314(?:?);
begin
 0058A314    push        ebp
 0058A315    mov         ebp,esp
 0058A317    add         esp,0FFFFFFF8
 0058A31A    mov         dword ptr [ebp-8],edx
 0058A31D    mov         dword ptr [ebp-4],eax
 0058A320    mov         ecx,58A33C
 0058A325    mov         eax,[006E9DCC];^Application:TApplication
 0058A32A    mov         eax,dword ptr [eax]
 0058A32C    mov         edx,4
 0058A331    call        005D8A88
 0058A336    pop         ecx
 0058A337    pop         ecx
 0058A338    pop         ebp
 0058A339    ret
end;*}

//0058A340
{*procedure sub_0058A340(?:?);
begin
 0058A340    push        ebp
 0058A341    mov         ebp,esp
 0058A343    add         esp,0FFFFFFF8
 0058A346    mov         dword ptr [ebp-8],edx
 0058A349    mov         dword ptr [ebp-4],eax
 0058A34C    mov         eax,[006E9DD0];^Screen:TScreen
 0058A351    mov         eax,dword ptr [eax]
 0058A353    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 0058A356    mov         ecx,dword ptr [eax+158];TWinControl.HelpContext:THelpContext
 0058A35C    mov         eax,[006E9DCC];^Application:TApplication
 0058A361    mov         eax,dword ptr [eax]
 0058A363    mov         edx,1
 0058A368    call        005D8A88
 0058A36D    pop         ecx
 0058A36E    pop         ecx
 0058A36F    pop         ebp
 0058A370    ret
end;*}

//0058A374
{*procedure sub_0058A374(?:?);
begin
 0058A374    push        ebp
 0058A375    mov         ebp,esp
 0058A377    add         esp,0FFFFFFF8
 0058A37A    mov         dword ptr [ebp-8],edx
 0058A37D    mov         dword ptr [ebp-4],eax
 0058A380    mov         eax,[006E9DD0];^Screen:TScreen
 0058A385    cmp         dword ptr [eax],0
>0058A388    je          0058A3AA
 0058A38A    mov         eax,[006E9DD0];^Screen:TScreen
 0058A38F    mov         eax,dword ptr [eax]
 0058A391    cmp         dword ptr [eax+64],0;TScreen.FActiveControl:TWinControl
>0058A395    je          0058A3AA
 0058A397    mov         eax,[006E9DD0];^Screen:TScreen
 0058A39C    mov         eax,dword ptr [eax]
 0058A39E    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 0058A3A1    cmp         dword ptr [eax+158],0;TWinControl.HelpContext:THelpContext
>0058A3A8    jne         0058A3AE
 0058A3AA    xor         edx,edx
>0058A3AC    jmp         0058A3B0
 0058A3AE    mov         dl,1
 0058A3B0    mov         eax,dword ptr [ebp-4]
 0058A3B3    call        TOpenPicture.SetEnabled
 0058A3B8    pop         ecx
 0058A3B9    pop         ecx
 0058A3BA    pop         ebp
 0058A3BB    ret
end;*}

//0058A3BC
constructor TCommonDialogAction.Create(AOwner:TComponent);
begin
{*
 0058A3BC    push        ebp
 0058A3BD    mov         ebp,esp
 0058A3BF    add         esp,0FFFFFCEC
 0058A3C5    push        ebx
 0058A3C6    xor         ebx,ebx
 0058A3C8    mov         dword ptr [ebp-14],ebx
 0058A3CB    test        dl,dl
>0058A3CD    je          0058A3D7
 0058A3CF    add         esp,0FFFFFFF0
 0058A3D2    call        @ClassCreate
 0058A3D7    mov         dword ptr [ebp-0C],ecx
 0058A3DA    mov         byte ptr [ebp-5],dl
 0058A3DD    mov         dword ptr [ebp-4],eax
 0058A3E0    xor         eax,eax
 0058A3E2    push        ebp
 0058A3E3    push        58A4B7
 0058A3E8    push        dword ptr fs:[eax]
 0058A3EB    mov         dword ptr fs:[eax],esp
 0058A3EE    mov         ecx,dword ptr [ebp-0C]
 0058A3F1    xor         edx,edx
 0058A3F3    mov         eax,dword ptr [ebp-4]
 0058A3F6    call        TCustomAction.Create
 0058A3FB    mov         eax,dword ptr [ebp-4]
 0058A3FE    mov         edx,dword ptr [eax]
 0058A400    call        dword ptr [edx+54];TCommonDialogAction.sub_0058A590
 0058A403    mov         dword ptr [ebp-10],eax
 0058A406    cmp         dword ptr [ebp-10],0
>0058A40A    je          0058A490
 0058A410    mov         ecx,dword ptr [ebp-4]
 0058A413    mov         dl,1
 0058A415    mov         eax,dword ptr [ebp-10]
 0058A418    call        dword ptr [eax+2C]
 0058A41B    mov         edx,dword ptr [ebp-4]
 0058A41E    mov         dword ptr [edx+0C0],eax;TCommonDialogAction.FDialog:TCommonDialog
 0058A424    lea         eax,[ebp-114]
 0058A42A    push        eax
 0058A42B    lea         edx,[ebp-214]
 0058A431    mov         eax,dword ptr [ebp-10]
 0058A434    call        TObject.ClassName
 0058A439    xor         eax,eax
 0058A43B    mov         al,byte ptr [ebp-214]
 0058A441    push        eax
 0058A442    lea         edx,[ebp-314]
 0058A448    mov         eax,dword ptr [ebp-10]
 0058A44B    call        TObject.ClassName
 0058A450    lea         eax,[ebp-314]
 0058A456    mov         edx,2
 0058A45B    pop         ecx
 0058A45C    call        @Copy
 0058A461    lea         edx,[ebp-114]
 0058A467    lea         eax,[ebp-14]
 0058A46A    call        @LStrFromString
 0058A46F    mov         edx,dword ptr [ebp-14]
 0058A472    mov         eax,dword ptr [ebp-4]
 0058A475    mov         eax,dword ptr [eax+0C0];TCommonDialogAction.FDialog:TCommonDialog
 0058A47B    mov         ecx,dword ptr [eax]
 0058A47D    call        dword ptr [ecx+18];TComponent.SetName
 0058A480    mov         eax,dword ptr [ebp-4]
 0058A483    mov         eax,dword ptr [eax+0C0];TCommonDialogAction.FDialog:TCommonDialog
 0058A489    mov         dl,1
 0058A48B    call        00650D38
 0058A490    mov         eax,dword ptr [ebp-4]
 0058A493    mov         byte ptr [eax+60],0;TCommonDialogAction.FDisableIfNoHandler:Boolean
 0058A497    mov         dl,1
 0058A499    mov         eax,dword ptr [ebp-4]
 0058A49C    call        TOpenPicture.SetEnabled
 0058A4A1    xor         eax,eax
 0058A4A3    pop         edx
 0058A4A4    pop         ecx
 0058A4A5    pop         ecx
 0058A4A6    mov         dword ptr fs:[eax],edx
 0058A4A9    push        58A4BE
 0058A4AE    lea         eax,[ebp-14]
 0058A4B1    call        @LStrClr
 0058A4B6    ret
>0058A4B7    jmp         @HandleFinally
>0058A4BC    jmp         0058A4AE
 0058A4BE    mov         eax,dword ptr [ebp-4]
 0058A4C1    cmp         byte ptr [ebp-5],0
>0058A4C5    je          0058A4D6
 0058A4C7    call        @AfterConstruction
 0058A4CC    pop         dword ptr fs:[0]
 0058A4D3    add         esp,0C
 0058A4D6    mov         eax,dword ptr [ebp-4]
 0058A4D9    pop         ebx
 0058A4DA    mov         esp,ebp
 0058A4DC    pop         ebp
 0058A4DD    ret
*}
end;

//0058A4E0
{*procedure sub_0058A4E0(?:?);
begin
 0058A4E0    push        ebp
 0058A4E1    mov         ebp,esp
 0058A4E3    add         esp,0FFFFFFF8
 0058A4E6    push        ebx
 0058A4E7    mov         dword ptr [ebp-8],edx
 0058A4EA    mov         dword ptr [ebp-4],eax
 0058A4ED    mov         eax,dword ptr [ebp-4]
 0058A4F0    mov         byte ptr [eax+0A0],0;TCommonDialogAction.FExecuteResult:Boolean
 0058A4F7    mov         eax,dword ptr [ebp-4]
 0058A4FA    cmp         dword ptr [eax+0C0],0;TCommonDialogAction.FDialog:TCommonDialog
>0058A501    je          0058A589
 0058A507    mov         eax,dword ptr [ebp-4]
 0058A50A    cmp         word ptr [eax+0BA],0;TCommonDialogAction.?fBA:word
>0058A512    je          0058A526
 0058A514    mov         ebx,dword ptr [ebp-4]
 0058A517    mov         edx,dword ptr [ebp-4]
 0058A51A    mov         eax,dword ptr [ebx+0BC];TCommonDialogAction.?fBC:dword
 0058A520    call        dword ptr [ebx+0B8];TCommonDialogAction.FBeforeExecute
 0058A526    mov         eax,dword ptr [ebp-4]
 0058A529    mov         eax,dword ptr [eax+0C0];TCommonDialogAction.FDialog:TCommonDialog
 0058A52F    mov         edx,dword ptr [eax]
 0058A531    call        dword ptr [edx+3C];TCommonDialog.Execute
 0058A534    mov         edx,dword ptr [ebp-4]
 0058A537    mov         byte ptr [edx+0A0],al;TCommonDialogAction.FExecuteResult:Boolean
 0058A53D    mov         eax,dword ptr [ebp-4]
 0058A540    cmp         byte ptr [eax+0A0],0;TCommonDialogAction.FExecuteResult:Boolean
>0058A547    je          0058A56A
 0058A549    mov         eax,dword ptr [ebp-4]
 0058A54C    cmp         word ptr [eax+0AA],0;TCommonDialogAction.?fAA:word
>0058A554    je          0058A589
 0058A556    mov         ebx,dword ptr [ebp-4]
 0058A559    mov         edx,dword ptr [ebp-4]
 0058A55C    mov         eax,dword ptr [ebx+0AC];TCommonDialogAction.?fAC:dword
 0058A562    call        dword ptr [ebx+0A8];TCommonDialogAction.FOnAccept
>0058A568    jmp         0058A589
 0058A56A    mov         eax,dword ptr [ebp-4]
 0058A56D    cmp         word ptr [eax+0B2],0;TCommonDialogAction.?fB2:word
>0058A575    je          0058A589
 0058A577    mov         ebx,dword ptr [ebp-4]
 0058A57A    mov         edx,dword ptr [ebp-4]
 0058A57D    mov         eax,dword ptr [ebx+0B4];TCommonDialogAction.?fB4:dword
 0058A583    call        dword ptr [ebx+0B0];TCommonDialogAction.FOnCancel
 0058A589    pop         ebx
 0058A58A    pop         ecx
 0058A58B    pop         ecx
 0058A58C    pop         ebp
 0058A58D    ret
end;*}

//0058A590
{*function sub_0058A590:?;
begin
 0058A590    push        ebp
 0058A591    mov         ebp,esp
 0058A593    add         esp,0FFFFFFF8
 0058A596    mov         dword ptr [ebp-4],eax
 0058A599    xor         eax,eax
 0058A59B    mov         dword ptr [ebp-8],eax
 0058A59E    mov         eax,dword ptr [ebp-8]
 0058A5A1    pop         ecx
 0058A5A2    pop         ecx
 0058A5A3    pop         ebp
 0058A5A4    ret
end;*}

//0058A5A8
{*function sub_0058A5A8(?:?):?;
begin
 0058A5A8    push        ebp
 0058A5A9    mov         ebp,esp
 0058A5AB    add         esp,0FFFFFFF4
 0058A5AE    mov         dword ptr [ebp-0C],edx
 0058A5B1    mov         dword ptr [ebp-4],eax
 0058A5B4    mov         byte ptr [ebp-5],1
 0058A5B8    mov         al,byte ptr [ebp-5]
 0058A5BB    mov         esp,ebp
 0058A5BD    pop         ebp
 0058A5BE    ret
end;*}

//0058A5C0
{*function TFileOpen.GetDialog:?;
begin
 0058A5C0    push        ebp
 0058A5C1    mov         ebp,esp
 0058A5C3    add         esp,0FFFFFFF8
 0058A5C6    mov         dword ptr [ebp-4],eax
 0058A5C9    mov         eax,dword ptr [ebp-4]
 0058A5CC    mov         eax,dword ptr [eax+0C0];TFileOpen.FDialog:TCommonDialog
 0058A5D2    mov         dword ptr [ebp-8],eax
 0058A5D5    mov         eax,dword ptr [ebp-8]
 0058A5D8    pop         ecx
 0058A5D9    pop         ecx
 0058A5DA    pop         ebp
 0058A5DB    ret
end;*}

//0058A5DC
constructor TFileOpen.Create(AOwner:TComponent);
begin
{*
 0058A5DC    push        ebp
 0058A5DD    mov         ebp,esp
 0058A5DF    add         esp,0FFFFFFF4
 0058A5E2    test        dl,dl
>0058A5E4    je          0058A5EE
 0058A5E6    add         esp,0FFFFFFF0
 0058A5E9    call        @ClassCreate
 0058A5EE    mov         dword ptr [ebp-0C],ecx
 0058A5F1    mov         byte ptr [ebp-5],dl
 0058A5F4    mov         dword ptr [ebp-4],eax
 0058A5F7    mov         ecx,dword ptr [ebp-0C]
 0058A5FA    xor         edx,edx
 0058A5FC    mov         eax,dword ptr [ebp-4]
 0058A5FF    call        TCommonDialogAction.Create
 0058A604    mov         eax,dword ptr [ebp-4]
 0058A607    mov         eax,dword ptr [eax+0C0];TFileOpen.FDialog:TCommonDialog
 0058A60D    mov         edx,58A640;'OpenDialog'
 0058A612    mov         ecx,dword ptr [eax]
 0058A614    call        dword ptr [ecx+18];TComponent.SetName
 0058A617    mov         eax,dword ptr [ebp-4]
 0058A61A    cmp         byte ptr [ebp-5],0
>0058A61E    je          0058A62F
 0058A620    call        @AfterConstruction
 0058A625    pop         dword ptr fs:[0]
 0058A62C    add         esp,0C
 0058A62F    mov         eax,dword ptr [ebp-4]
 0058A632    mov         esp,ebp
 0058A634    pop         ebp
 0058A635    ret
*}
end;

//0058A64C
{*function sub_0058A64C:?;
begin
 0058A64C    push        ebp
 0058A64D    mov         ebp,esp
 0058A64F    add         esp,0FFFFFFF8
 0058A652    mov         dword ptr [ebp-4],eax
 0058A655    mov         eax,[005E8920];TOpenDialog
 0058A65A    mov         dword ptr [ebp-8],eax
 0058A65D    mov         eax,dword ptr [ebp-8]
 0058A660    pop         ecx
 0058A661    pop         ecx
 0058A662    pop         ebp
 0058A663    ret
end;*}

//0058A664
{*procedure sub_0058A664(?:?);
begin
 0058A664    push        ebp
 0058A665    mov         ebp,esp
 0058A667    add         esp,0FFFFFFE8
 0058A66A    xor         ecx,ecx
 0058A66C    mov         dword ptr [ebp-10],ecx
 0058A66F    mov         dword ptr [ebp-0C],ecx
 0058A672    mov         dword ptr [ebp-8],edx
 0058A675    mov         dword ptr [ebp-4],eax
 0058A678    xor         eax,eax
 0058A67A    push        ebp
 0058A67B    push        58A740
 0058A680    push        dword ptr fs:[eax]
 0058A683    mov         dword ptr fs:[eax],esp
 0058A686    mov         eax,dword ptr [ebp-4]
 0058A689    mov         eax,dword ptr [eax+0C8];TFileOpenWith.FileName:TFileName
 0058A68F    call        @LStrLen
 0058A694    test        eax,eax
>0058A696    je          0058A6AA
 0058A698    mov         eax,dword ptr [ebp-4]
 0058A69B    mov         eax,dword ptr [eax+0C8];TFileOpenWith.FileName:TFileName
 0058A6A1    call        00658094
 0058A6A6    test        al,al
>0058A6A8    jne         0058A6B5
 0058A6AA    mov         edx,dword ptr [ebp-8]
 0058A6AD    mov         eax,dword ptr [ebp-4]
 0058A6B0    call        0058A4E0
 0058A6B5    mov         eax,dword ptr [ebp-4]
 0058A6B8    call        TFileOpen.GetDialog
 0058A6BD    lea         edx,[ebp-0C]
 0058A6C0    call        TOpenDialog.GetFileName
 0058A6C5    mov         edx,dword ptr [ebp-0C]
 0058A6C8    mov         eax,dword ptr [ebp-4]
 0058A6CB    add         eax,0C8;TFileOpenWith.FileName:TFileName
 0058A6D0    call        @LStrAsg
 0058A6D5    mov         eax,dword ptr [ebp-4]
 0058A6D8    cmp         byte ptr [eax+0A0],0;TFileOpenWith.FExecuteResult:Boolean
>0058A6DF    je          0058A722
 0058A6E1    push        5
 0058A6E3    push        0
 0058A6E5    lea         eax,[ebp-10]
 0058A6E8    push        eax
 0058A6E9    mov         eax,dword ptr [ebp-4]
 0058A6EC    mov         eax,dword ptr [eax+0C8];TFileOpenWith.FileName:TFileName
 0058A6F2    mov         dword ptr [ebp-18],eax
 0058A6F5    mov         byte ptr [ebp-14],0B
 0058A6F9    lea         edx,[ebp-18]
 0058A6FC    xor         ecx,ecx
 0058A6FE    mov         eax,58A754;'shell32.dll,OpenAs_RunDLL %s'
 0058A703    call        00658FBC
 0058A708    mov         eax,dword ptr [ebp-10]
 0058A70B    call        @LStrToPChar
 0058A710    push        eax
 0058A711    push        58A774
 0058A716    push        58A784
 0058A71B    push        0
 0058A71D    call        SHELL32.ShellExecuteA
 0058A722    xor         eax,eax
 0058A724    pop         edx
 0058A725    pop         ecx
 0058A726    pop         ecx
 0058A727    mov         dword ptr fs:[eax],edx
 0058A72A    push        58A747
 0058A72F    lea         eax,[ebp-10]
 0058A732    call        @LStrClr
 0058A737    lea         eax,[ebp-0C]
 0058A73A    call        @LStrClr
 0058A73F    ret
>0058A740    jmp         @HandleFinally
>0058A745    jmp         0058A72F
 0058A747    mov         esp,ebp
 0058A749    pop         ebp
 0058A74A    ret
end;*}

//0058A78C
constructor TFileSaveAs.Create(AOwner:TComponent);
begin
{*
 0058A78C    push        ebp
 0058A78D    mov         ebp,esp
 0058A78F    add         esp,0FFFFFFF4
 0058A792    test        dl,dl
>0058A794    je          0058A79E
 0058A796    add         esp,0FFFFFFF0
 0058A799    call        @ClassCreate
 0058A79E    mov         dword ptr [ebp-0C],ecx
 0058A7A1    mov         byte ptr [ebp-5],dl
 0058A7A4    mov         dword ptr [ebp-4],eax
 0058A7A7    mov         ecx,dword ptr [ebp-0C]
 0058A7AA    xor         edx,edx
 0058A7AC    mov         eax,dword ptr [ebp-4]
 0058A7AF    call        TCommonDialogAction.Create
 0058A7B4    mov         eax,dword ptr [ebp-4]
 0058A7B7    mov         eax,dword ptr [eax+0C0];TFileSaveAs.FDialog:TCommonDialog
 0058A7BD    mov         edx,58A7F0;'SaveDialog'
 0058A7C2    mov         ecx,dword ptr [eax]
 0058A7C4    call        dword ptr [ecx+18];TComponent.SetName
 0058A7C7    mov         eax,dword ptr [ebp-4]
 0058A7CA    cmp         byte ptr [ebp-5],0
>0058A7CE    je          0058A7DF
 0058A7D0    call        @AfterConstruction
 0058A7D5    pop         dword ptr fs:[0]
 0058A7DC    add         esp,0C
 0058A7DF    mov         eax,dword ptr [ebp-4]
 0058A7E2    mov         esp,ebp
 0058A7E4    pop         ebp
 0058A7E5    ret
*}
end;

//0058A7FC
{*function sub_0058A7FC:?;
begin
 0058A7FC    push        ebp
 0058A7FD    mov         ebp,esp
 0058A7FF    add         esp,0FFFFFFF8
 0058A802    mov         dword ptr [ebp-4],eax
 0058A805    mov         eax,[005E8C18];TSaveDialog
 0058A80A    mov         dword ptr [ebp-8],eax
 0058A80D    mov         eax,dword ptr [ebp-8]
 0058A810    pop         ecx
 0058A811    pop         ecx
 0058A812    pop         ebp
 0058A813    ret
end;*}

//0058A814
{*function TFileSaveAs.GetDialog:?;
begin
 0058A814    push        ebp
 0058A815    mov         ebp,esp
 0058A817    add         esp,0FFFFFFF8
 0058A81A    mov         dword ptr [ebp-4],eax
 0058A81D    mov         eax,dword ptr [ebp-4]
 0058A820    mov         eax,dword ptr [eax+0C0];TFileSaveAs.FDialog:TCommonDialog
 0058A826    mov         dword ptr [ebp-8],eax
 0058A829    mov         eax,dword ptr [ebp-8]
 0058A82C    pop         ecx
 0058A82D    pop         ecx
 0058A82E    pop         ebp
 0058A82F    ret
end;*}

//0058A830
{*function TFilePrintSetup.GetDialog:?;
begin
 0058A830    push        ebp
 0058A831    mov         ebp,esp
 0058A833    add         esp,0FFFFFFF8
 0058A836    mov         dword ptr [ebp-4],eax
 0058A839    mov         eax,dword ptr [ebp-4]
 0058A83C    mov         eax,dword ptr [eax+0C0];TFilePrintSetup.FDialog:TCommonDialog
 0058A842    mov         dword ptr [ebp-8],eax
 0058A845    mov         eax,dword ptr [ebp-8]
 0058A848    pop         ecx
 0058A849    pop         ecx
 0058A84A    pop         ebp
 0058A84B    ret
end;*}

//0058A84C
{*function sub_0058A84C:?;
begin
 0058A84C    push        ebp
 0058A84D    mov         ebp,esp
 0058A84F    add         esp,0FFFFFFF8
 0058A852    mov         dword ptr [ebp-4],eax
 0058A855    mov         eax,[005E91DC];TPrinterSetupDialog
 0058A85A    mov         dword ptr [ebp-8],eax
 0058A85D    mov         eax,dword ptr [ebp-8]
 0058A860    pop         ecx
 0058A861    pop         ecx
 0058A862    pop         ebp
 0058A863    ret
end;*}

//0058A864
{*procedure sub_0058A864(?:?);
begin
 0058A864    push        ebp
 0058A865    mov         ebp,esp
 0058A867    add         esp,0FFFFFFF8
 0058A86A    mov         dword ptr [ebp-8],edx
 0058A86D    mov         dword ptr [ebp-4],eax
 0058A870    mov         eax,[006E9DCC];^Application:TApplication
 0058A875    mov         eax,dword ptr [eax]
 0058A877    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>0058A87B    je          0058A89F
 0058A87D    mov         eax,[006E9DCC];^Application:TApplication
 0058A882    mov         eax,dword ptr [eax]
 0058A884    xor         ecx,ecx
 0058A886    mov         edx,2
 0058A88B    call        005D8A88
 0058A890    mov         eax,[006E9DCC];^Application:TApplication
 0058A895    mov         eax,dword ptr [eax]
 0058A897    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 0058A89A    call        005D3F3C
 0058A89F    pop         ecx
 0058A8A0    pop         ecx
 0058A8A1    pop         ebp
 0058A8A2    ret
end;*}

//0058A8A4
{*function sub_0058A8A4(?:?):?;
begin
 0058A8A4    push        ebp
 0058A8A5    mov         ebp,esp
 0058A8A7    add         esp,0FFFFFFF4
 0058A8AA    mov         dword ptr [ebp-0C],edx
 0058A8AD    mov         dword ptr [ebp-4],eax
 0058A8B0    mov         byte ptr [ebp-5],1
 0058A8B4    mov         al,byte ptr [ebp-5]
 0058A8B7    mov         esp,ebp
 0058A8B9    pop         ebp
 0058A8BA    ret
end;*}

//0058A8BC
{*function sub_0058A8BC(?:TCustomEdit; ?:?; ?:?; ?:?):?;
begin
 0058A8BC    push        ebp
 0058A8BD    mov         ebp,esp
 0058A8BF    add         esp,0FFFFFFE8
 0058A8C2    mov         word ptr [ebp-0A],cx
 0058A8C6    mov         dword ptr [ebp-8],edx
 0058A8C9    mov         dword ptr [ebp-4],eax
 0058A8CC    mov         byte ptr [ebp-0B],0
 0058A8D0    mov         eax,dword ptr [ebp-8]
 0058A8D3    call        @LStrLen
 0058A8D8    test        eax,eax
>0058A8DA    je          0058A9F2
 0058A8E0    mov         eax,dword ptr [ebp-4]
 0058A8E3    call        005F35D4
 0058A8E8    mov         word ptr [ebp-16],ax
 0058A8EC    cmp         word ptr [ebp-16],0
>0058A8F1    je          0058A9F2
 0058A8F7    movzx       eax,word ptr [ebp-16]
 0058A8FB    inc         eax
 0058A8FC    call        006589A4
 0058A901    mov         dword ptr [ebp-10],eax
 0058A904    xor         eax,eax
 0058A906    push        ebp
 0058A907    push        58A9EB
 0058A90C    push        dword ptr fs:[eax]
 0058A90F    mov         dword ptr fs:[eax],esp
 0058A912    mov         al,[0058A9FC];0x0 gvar_0058A9FC
 0058A917    mov         byte ptr [ebp-17],al
 0058A91A    test        byte ptr [ebp-0A],1
>0058A91E    je          0058A924
 0058A920    or          byte ptr [ebp-17],1
 0058A924    test        byte ptr [ebp-0A],20
>0058A928    je          0058A92E
 0058A92A    or          byte ptr [ebp-17],2
 0058A92E    test        byte ptr [ebp-9],8
>0058A932    je          0058A938
 0058A934    or          byte ptr [ebp-17],4
 0058A938    movzx       ecx,word ptr [ebp-16]
 0058A93C    inc         ecx
 0058A93D    mov         edx,dword ptr [ebp-10]
 0058A940    mov         eax,dword ptr [ebp-4]
 0058A943    call        005F35F8
 0058A948    cmp         byte ptr [ebp+8],0
>0058A94C    je          0058A975
 0058A94E    mov         eax,dword ptr [ebp-4]
 0058A951    mov         edx,dword ptr [eax]
 0058A953    call        dword ptr [edx+0C8]
 0058A959    push        eax
 0058A95A    mov         eax,dword ptr [ebp-8]
 0058A95D    push        eax
 0058A95E    mov         al,byte ptr [ebp-17]
 0058A961    push        eax
 0058A962    movzx       edx,word ptr [ebp-16]
 0058A966    xor         ecx,ecx
 0058A968    mov         eax,dword ptr [ebp-10]
 0058A96B    call        00652F10
 0058A970    mov         dword ptr [ebp-14],eax
>0058A973    jmp         0058A9A5
 0058A975    mov         eax,dword ptr [ebp-4]
 0058A978    mov         edx,dword ptr [eax]
 0058A97A    call        dword ptr [edx+0C8]
 0058A980    push        eax
 0058A981    mov         eax,dword ptr [ebp-8]
 0058A984    push        eax
 0058A985    mov         al,byte ptr [ebp-17]
 0058A988    push        eax
 0058A989    mov         eax,dword ptr [ebp-4]
 0058A98C    mov         edx,dword ptr [eax]
 0058A98E    call        dword ptr [edx+0CC]
 0058A994    mov         ecx,eax
 0058A996    movzx       edx,word ptr [ebp-16]
 0058A99A    mov         eax,dword ptr [ebp-10]
 0058A99D    call        00652F10
 0058A9A2    mov         dword ptr [ebp-14],eax
 0058A9A5    cmp         dword ptr [ebp-14],0
>0058A9A9    je          0058A9D5
 0058A9AB    mov         edx,dword ptr [ebp-14]
 0058A9AE    sub         edx,dword ptr [ebp-10]
 0058A9B1    mov         eax,dword ptr [ebp-4]
 0058A9B4    mov         ecx,dword ptr [eax]
 0058A9B6    call        dword ptr [ecx+0D8]
 0058A9BC    mov         eax,dword ptr [ebp-8]
 0058A9BF    call        @LStrLen
 0058A9C4    mov         edx,eax
 0058A9C6    mov         eax,dword ptr [ebp-4]
 0058A9C9    mov         ecx,dword ptr [eax]
 0058A9CB    call        dword ptr [ecx+0D4]
 0058A9D1    mov         byte ptr [ebp-0B],1
 0058A9D5    xor         eax,eax
 0058A9D7    pop         edx
 0058A9D8    pop         ecx
 0058A9D9    pop         ecx
 0058A9DA    mov         dword ptr fs:[eax],edx
 0058A9DD    push        58A9F2
 0058A9E2    mov         eax,dword ptr [ebp-10]
 0058A9E5    call        00658A38
 0058A9EA    ret
>0058A9EB    jmp         @HandleFinally
>0058A9F0    jmp         0058A9E2
 0058A9F2    mov         al,byte ptr [ebp-0B]
 0058A9F5    mov         esp,ebp
 0058A9F7    pop         ebp
 0058A9F8    ret         4
end;*}

//0058AA00
constructor TSearchAction.Create(AOwner:TComponent);
begin
{*
 0058AA00    push        ebp
 0058AA01    mov         ebp,esp
 0058AA03    add         esp,0FFFFFFF4
 0058AA06    test        dl,dl
>0058AA08    je          0058AA12
 0058AA0A    add         esp,0FFFFFFF0
 0058AA0D    call        @ClassCreate
 0058AA12    mov         dword ptr [ebp-0C],ecx
 0058AA15    mov         byte ptr [ebp-5],dl
 0058AA18    mov         dword ptr [ebp-4],eax
 0058AA1B    mov         ecx,dword ptr [ebp-0C]
 0058AA1E    xor         edx,edx
 0058AA20    mov         eax,dword ptr [ebp-4]
 0058AA23    call        TCommonDialogAction.Create
 0058AA28    mov         eax,dword ptr [ebp-4]
 0058AA2B    mov         eax,dword ptr [eax+0C0];TSearchAction.FDialog:TCommonDialog
 0058AA31    mov         edx,dword ptr [ebp-4]
 0058AA34    mov         dword ptr [eax+74],edx
 0058AA37    mov         edx,dword ptr [edx]
 0058AA39    mov         edx,dword ptr [edx+58];TSearchAction.Category:String
 0058AA3C    mov         dword ptr [eax+70],edx
 0058AA3F    mov         eax,dword ptr [ebp-4]
 0058AA42    mov         byte ptr [eax+0CC],0;TSearchAction.FFindFirst:Boolean
 0058AA49    mov         eax,dword ptr [ebp-4]
 0058AA4C    cmp         byte ptr [ebp-5],0
>0058AA50    je          0058AA61
 0058AA52    call        @AfterConstruction
 0058AA57    pop         dword ptr fs:[0]
 0058AA5E    add         esp,0C
 0058AA61    mov         eax,dword ptr [ebp-4]
 0058AA64    mov         esp,ebp
 0058AA66    pop         ebp
 0058AA67    ret
*}
end;

//0058AA68
{*procedure sub_0058AA68(?:?);
begin
 0058AA68    push        ebp
 0058AA69    mov         ebp,esp
 0058AA6B    add         esp,0FFFFFFF8
 0058AA6E    mov         dword ptr [ebp-8],edx
 0058AA71    mov         dword ptr [ebp-4],eax
 0058AA74    mov         eax,dword ptr [ebp-8]
 0058AA77    mov         edx,dword ptr [ebp-4]
 0058AA7A    mov         dword ptr [edx+0C8],eax;TSearchAction.FControl:TCustomEdit
 0058AA80    mov         edx,dword ptr [ebp-8]
 0058AA83    mov         eax,dword ptr [ebp-4]
 0058AA86    call        0058A4E0
 0058AA8B    pop         ecx
 0058AA8C    pop         ecx
 0058AA8D    pop         ebp
 0058AA8E    ret
end;*}

//0058AA90
{*function sub_0058AA90(?:?):?;
begin
 0058AA90    push        ebp
 0058AA91    mov         ebp,esp
 0058AA93    add         esp,0FFFFFFF4
 0058AA96    mov         dword ptr [ebp-0C],edx
 0058AA99    mov         dword ptr [ebp-4],eax
 0058AA9C    mov         eax,[006E9DD0];^Screen:TScreen
 0058AAA1    mov         eax,dword ptr [eax]
 0058AAA3    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 0058AAA6    mov         edx,dword ptr ds:[59273C];TCustomEdit
 0058AAAC    call        @IsClass
 0058AAB1    mov         byte ptr [ebp-5],al
 0058AAB4    cmp         byte ptr [ebp-5],0
>0058AAB8    jne         0058AAC4
 0058AABA    xor         edx,edx
 0058AABC    mov         eax,dword ptr [ebp-4]
 0058AABF    call        TOpenPicture.SetEnabled
 0058AAC4    mov         al,byte ptr [ebp-5]
 0058AAC7    mov         esp,ebp
 0058AAC9    pop         ebp
 0058AACA    ret
end;*}

//0058AACC
{*procedure sub_0058AACC(?:?);
begin
 0058AACC    push        ebp
 0058AACD    mov         ebp,esp
 0058AACF    add         esp,0FFFFFFE0
 0058AAD2    xor         ecx,ecx
 0058AAD4    mov         dword ptr [ebp-10],ecx
 0058AAD7    mov         dword ptr [ebp-1C],ecx
 0058AADA    mov         dword ptr [ebp-20],ecx
 0058AADD    mov         dword ptr [ebp-0C],ecx
 0058AAE0    mov         dword ptr [ebp-8],edx
 0058AAE3    mov         dword ptr [ebp-4],eax
 0058AAE6    xor         eax,eax
 0058AAE8    push        ebp
 0058AAE9    push        58ABB7
 0058AAEE    push        dword ptr fs:[eax]
 0058AAF1    mov         dword ptr fs:[eax],esp
 0058AAF4    mov         eax,dword ptr [ebp-4]
 0058AAF7    cmp         dword ptr [eax+0C8],0;TSearchAction.FControl:TCustomEdit
>0058AAFE    je          0058AB84
 0058AB04    mov         eax,dword ptr [ebp-4]
 0058AB07    mov         al,byte ptr [eax+0CC];TSearchAction.FFindFirst:Boolean
 0058AB0D    push        eax
 0058AB0E    lea         edx,[ebp-0C]
 0058AB11    mov         eax,dword ptr [ebp-4]
 0058AB14    mov         eax,dword ptr [eax+0C0];TSearchAction.FDialog:TCommonDialog
 0058AB1A    call        TFindDialog.GetFindText
 0058AB1F    mov         edx,dword ptr [ebp-0C]
 0058AB22    mov         eax,dword ptr [ebp-4]
 0058AB25    mov         eax,dword ptr [eax+0C0];TSearchAction.FDialog:TCommonDialog
 0058AB2B    mov         cx,word ptr [eax+58]
 0058AB2F    mov         eax,dword ptr [ebp-4]
 0058AB32    mov         eax,dword ptr [eax+0C8];TSearchAction.FControl:TCustomEdit
 0058AB38    call        0058A8BC
 0058AB3D    test        al,al
>0058AB3F    jne         0058AB84
 0058AB41    lea         eax,[ebp-10]
 0058AB44    push        eax
 0058AB45    lea         edx,[ebp-1C]
 0058AB48    mov         eax,dword ptr [ebp-4]
 0058AB4B    mov         eax,dword ptr [eax+0C0];TSearchAction.FDialog:TCommonDialog
 0058AB51    call        TFindDialog.GetFindText
 0058AB56    mov         eax,dword ptr [ebp-1C]
 0058AB59    mov         dword ptr [ebp-18],eax
 0058AB5C    mov         byte ptr [ebp-14],0B
 0058AB60    lea         eax,[ebp-18]
 0058AB63    push        eax
 0058AB64    lea         edx,[ebp-20]
 0058AB67    mov         eax,[006E9FD0];^gvar_0063CDB0
 0058AB6C    call        LoadResString
 0058AB71    mov         eax,dword ptr [ebp-20]
 0058AB74    xor         ecx,ecx
 0058AB76    pop         edx
 0058AB77    call        00658FBC
 0058AB7C    mov         eax,dword ptr [ebp-10]
 0058AB7F    call        005ECEB0
 0058AB84    mov         eax,dword ptr [ebp-4]
 0058AB87    xor         edx,edx
 0058AB89    mov         dword ptr [eax+0C8],edx;TSearchAction.FControl:TCustomEdit
 0058AB8F    xor         eax,eax
 0058AB91    pop         edx
 0058AB92    pop         ecx
 0058AB93    pop         ecx
 0058AB94    mov         dword ptr fs:[eax],edx
 0058AB97    push        58ABBE
 0058AB9C    lea         eax,[ebp-20]
 0058AB9F    mov         edx,2
 0058ABA4    call        @LStrArrayClr
 0058ABA9    lea         eax,[ebp-10]
 0058ABAC    mov         edx,2
 0058ABB1    call        @LStrArrayClr
 0058ABB6    ret
>0058ABB7    jmp         @HandleFinally
>0058ABBC    jmp         0058AB9C
 0058ABBE    mov         esp,ebp
 0058ABC0    pop         ebp
 0058ABC1    ret
end;*}

//0058ABC4
{*procedure sub_0058ABC4(?:?);
begin
 0058ABC4    push        ebp
 0058ABC5    mov         ebp,esp
 0058ABC7    add         esp,0FFFFFFF8
 0058ABCA    mov         dword ptr [ebp-8],edx
 0058ABCD    mov         dword ptr [ebp-4],eax
 0058ABD0    mov         eax,dword ptr [ebp-8]
 0058ABD3    mov         edx,dword ptr ds:[59273C];TCustomEdit
 0058ABD9    call        @IsClass
 0058ABDE    test        al,al
>0058ABE0    je          0058ABEE
 0058ABE2    mov         eax,dword ptr [ebp-8]
 0058ABE5    call        005F35D4
 0058ABEA    test        eax,eax
>0058ABEC    jg          0058ABF2
 0058ABEE    xor         edx,edx
>0058ABF0    jmp         0058ABF4
 0058ABF2    mov         dl,1
 0058ABF4    mov         eax,dword ptr [ebp-4]
 0058ABF7    call        TOpenPicture.SetEnabled
 0058ABFC    pop         ecx
 0058ABFD    pop         ecx
 0058ABFE    pop         ebp
 0058ABFF    ret
end;*}

//0058AC00
{*function sub_0058AC00:?;
begin
 0058AC00    push        ebp
 0058AC01    mov         ebp,esp
 0058AC03    add         esp,0FFFFFFF8
 0058AC06    mov         dword ptr [ebp-4],eax
 0058AC09    mov         eax,[005E9660];TFindDialog
 0058AC0E    mov         dword ptr [ebp-8],eax
 0058AC11    mov         eax,dword ptr [ebp-8]
 0058AC14    pop         ecx
 0058AC15    pop         ecx
 0058AC16    pop         ebp
 0058AC17    ret
end;*}

//0058AC18
{*function TSearchFind.GetDialog:?;
begin
 0058AC18    push        ebp
 0058AC19    mov         ebp,esp
 0058AC1B    add         esp,0FFFFFFF8
 0058AC1E    mov         dword ptr [ebp-4],eax
 0058AC21    mov         eax,dword ptr [ebp-4]
 0058AC24    mov         eax,dword ptr [eax+0C0];TSearchFind.FDialog:TCommonDialog
 0058AC2A    mov         dword ptr [ebp-8],eax
 0058AC2D    mov         eax,dword ptr [ebp-8]
 0058AC30    pop         ecx
 0058AC31    pop         ecx
 0058AC32    pop         ebp
 0058AC33    ret
end;*}

//0058AC34
{*procedure sub_0058AC34(?:?);
begin
 0058AC34    push        ebp
 0058AC35    mov         ebp,esp
 0058AC37    add         esp,0FFFFFFF8
 0058AC3A    mov         dword ptr [ebp-8],edx
 0058AC3D    mov         dword ptr [ebp-4],eax
 0058AC40    mov         edx,dword ptr [ebp-8]
 0058AC43    mov         eax,dword ptr [ebp-4]
 0058AC46    call        0058AA68
 0058AC4B    mov         eax,dword ptr [ebp-4]
 0058AC4E    mov         eax,dword ptr [eax+0C0];TSearchReplace.FDialog:TCommonDialog
 0058AC54    mov         edx,dword ptr [ebp-4]
 0058AC57    mov         dword ptr [eax+7C],edx
 0058AC5A    mov         dword ptr [eax+78],58AC9C
 0058AC61    pop         ecx
 0058AC62    pop         ecx
 0058AC63    pop         ebp
 0058AC64    ret
end;*}

//0058AC68
{*function sub_0058AC68:?;
begin
 0058AC68    push        ebp
 0058AC69    mov         ebp,esp
 0058AC6B    add         esp,0FFFFFFF8
 0058AC6E    mov         dword ptr [ebp-4],eax
 0058AC71    mov         eax,[005E9794];TReplaceDialog
 0058AC76    mov         dword ptr [ebp-8],eax
 0058AC79    mov         eax,dword ptr [ebp-8]
 0058AC7C    pop         ecx
 0058AC7D    pop         ecx
 0058AC7E    pop         ebp
 0058AC7F    ret
end;*}

//0058AC80
{*function TSearchReplace.GetDialog:?;
begin
 0058AC80    push        ebp
 0058AC81    mov         ebp,esp
 0058AC83    add         esp,0FFFFFFF8
 0058AC86    mov         dword ptr [ebp-4],eax
 0058AC89    mov         eax,dword ptr [ebp-4]
 0058AC8C    mov         eax,dword ptr [eax+0C0];TSearchReplace.FDialog:TCommonDialog
 0058AC92    mov         dword ptr [ebp-8],eax
 0058AC95    mov         eax,dword ptr [ebp-8]
 0058AC98    pop         ecx
 0058AC99    pop         ecx
 0058AC9A    pop         ebp
 0058AC9B    ret
end;*}

//0058AE6C
constructor TSearchFindFirst.Create(AOwner:TComponent);
begin
{*
 0058AE6C    push        ebp
 0058AE6D    mov         ebp,esp
 0058AE6F    add         esp,0FFFFFFF4
 0058AE72    test        dl,dl
>0058AE74    je          0058AE7E
 0058AE76    add         esp,0FFFFFFF0
 0058AE79    call        @ClassCreate
 0058AE7E    mov         dword ptr [ebp-0C],ecx
 0058AE81    mov         byte ptr [ebp-5],dl
 0058AE84    mov         dword ptr [ebp-4],eax
 0058AE87    mov         ecx,dword ptr [ebp-0C]
 0058AE8A    xor         edx,edx
 0058AE8C    mov         eax,dword ptr [ebp-4]
 0058AE8F    call        TSearchAction.Create
 0058AE94    mov         eax,dword ptr [ebp-4]
 0058AE97    mov         byte ptr [eax+0CC],1;TSearchFindFirst.FFindFirst:Boolean
 0058AE9E    mov         eax,dword ptr [ebp-4]
 0058AEA1    cmp         byte ptr [ebp-5],0
>0058AEA5    je          0058AEB6
 0058AEA7    call        @AfterConstruction
 0058AEAC    pop         dword ptr fs:[0]
 0058AEB3    add         esp,0C
 0058AEB6    mov         eax,dword ptr [ebp-4]
 0058AEB9    mov         esp,ebp
 0058AEBB    pop         ebp
 0058AEBC    ret
*}
end;

//0058AEC0
constructor TSearchFindNext.Create(AOwner:TComponent);
begin
{*
 0058AEC0    push        ebp
 0058AEC1    mov         ebp,esp
 0058AEC3    add         esp,0FFFFFFF4
 0058AEC6    test        dl,dl
>0058AEC8    je          0058AED2
 0058AECA    add         esp,0FFFFFFF0
 0058AECD    call        @ClassCreate
 0058AED2    mov         dword ptr [ebp-0C],ecx
 0058AED5    mov         byte ptr [ebp-5],dl
 0058AED8    mov         dword ptr [ebp-4],eax
 0058AEDB    mov         ecx,dword ptr [ebp-0C]
 0058AEDE    xor         edx,edx
 0058AEE0    mov         eax,dword ptr [ebp-4]
 0058AEE3    call        TCustomAction.Create
 0058AEE8    mov         eax,dword ptr [ebp-4]
 0058AEEB    mov         byte ptr [eax+60],0;TSearchFindNext.FDisableIfNoHandler:Boolean
 0058AEEF    mov         eax,dword ptr [ebp-4]
 0058AEF2    cmp         byte ptr [ebp-5],0
>0058AEF6    je          0058AF07
 0058AEF8    call        @AfterConstruction
 0058AEFD    pop         dword ptr fs:[0]
 0058AF04    add         esp,0C
 0058AF07    mov         eax,dword ptr [ebp-4]
 0058AF0A    mov         esp,ebp
 0058AF0C    pop         ebp
 0058AF0D    ret
*}
end;

//0058AF10
{*procedure sub_0058AF10(?:?);
begin
 0058AF10    push        ebp
 0058AF11    mov         ebp,esp
 0058AF13    add         esp,0FFFFFFF8
 0058AF16    mov         dword ptr [ebp-8],edx
 0058AF19    mov         dword ptr [ebp-4],eax
 0058AF1C    mov         eax,dword ptr [ebp-4]
 0058AF1F    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058AF25    mov         edx,dword ptr [ebp-8]
 0058AF28    mov         dword ptr [eax+0C8],edx;TSearchFind.FControl:TCustomEdit
 0058AF2E    mov         eax,dword ptr [ebp-4]
 0058AF31    cmp         dword ptr [eax+0A0],0;TSearchFindNext.SearchFind:TSearchFind
>0058AF38    je          0058AF4B
 0058AF3A    mov         edx,dword ptr [ebp-8]
 0058AF3D    mov         eax,dword ptr [ebp-4]
 0058AF40    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058AF46    mov         ecx,dword ptr [eax]
 0058AF48    call        dword ptr [ecx+58];TSearchFind.sub_0058AACC
 0058AF4B    pop         ecx
 0058AF4C    pop         ecx
 0058AF4D    pop         ebp
 0058AF4E    ret
end;*}

//0058AF50
{*function sub_0058AF50(?:?):?;
begin
 0058AF50    push        ebp
 0058AF51    mov         ebp,esp
 0058AF53    add         esp,0FFFFFFF0
 0058AF56    xor         ecx,ecx
 0058AF58    mov         dword ptr [ebp-10],ecx
 0058AF5B    mov         dword ptr [ebp-0C],edx
 0058AF5E    mov         dword ptr [ebp-4],eax
 0058AF61    xor         eax,eax
 0058AF63    push        ebp
 0058AF64    push        58AFD6
 0058AF69    push        dword ptr fs:[eax]
 0058AF6C    mov         dword ptr fs:[eax],esp
 0058AF6F    mov         eax,dword ptr [ebp-4]
 0058AF72    cmp         dword ptr [eax+0A0],0;TSearchFindNext.SearchFind:TSearchFind
>0058AF79    je          0058AFAC
 0058AF7B    mov         eax,dword ptr [ebp-4]
 0058AF7E    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058AF84    cmp         byte ptr [eax+6A],0;TSearchFind.FEnabled:Boolean
>0058AF88    je          0058AFAC
 0058AF8A    mov         eax,dword ptr [ebp-4]
 0058AF8D    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058AF93    call        TSearchFind.GetDialog
 0058AF98    lea         edx,[ebp-10]
 0058AF9B    call        TFindDialog.GetFindText
 0058AFA0    mov         eax,dword ptr [ebp-10]
 0058AFA3    call        @LStrLen
 0058AFA8    test        eax,eax
>0058AFAA    jne         0058AFB0
 0058AFAC    xor         eax,eax
>0058AFAE    jmp         0058AFB2
 0058AFB0    mov         al,1
 0058AFB2    mov         byte ptr [ebp-5],al
 0058AFB5    mov         dl,byte ptr [ebp-5]
 0058AFB8    mov         eax,dword ptr [ebp-4]
 0058AFBB    call        TOpenPicture.SetEnabled
 0058AFC0    xor         eax,eax
 0058AFC2    pop         edx
 0058AFC3    pop         ecx
 0058AFC4    pop         ecx
 0058AFC5    mov         dword ptr fs:[eax],edx
 0058AFC8    push        58AFDD
 0058AFCD    lea         eax,[ebp-10]
 0058AFD0    call        @LStrClr
 0058AFD5    ret
>0058AFD6    jmp         @HandleFinally
>0058AFDB    jmp         0058AFCD
 0058AFDD    mov         al,byte ptr [ebp-5]
 0058AFE0    mov         esp,ebp
 0058AFE2    pop         ebp
 0058AFE3    ret
end;*}

//0058AFE4
{*procedure sub_0058AFE4(?:?);
begin
 0058AFE4    push        ebp
 0058AFE5    mov         ebp,esp
 0058AFE7    add         esp,0FFFFFFF4
 0058AFEA    xor         ecx,ecx
 0058AFEC    mov         dword ptr [ebp-0C],ecx
 0058AFEF    mov         dword ptr [ebp-8],edx
 0058AFF2    mov         dword ptr [ebp-4],eax
 0058AFF5    xor         eax,eax
 0058AFF7    push        ebp
 0058AFF8    push        58B070
 0058AFFD    push        dword ptr fs:[eax]
 0058B000    mov         dword ptr fs:[eax],esp
 0058B003    mov         eax,dword ptr [ebp-4]
 0058B006    cmp         dword ptr [eax+0A0],0;TSearchFindNext.SearchFind:TSearchFind
>0058B00D    je          0058B050
 0058B00F    mov         eax,dword ptr [ebp-4]
 0058B012    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058B018    cmp         byte ptr [eax+6A],0;TSearchFind.FEnabled:Boolean
>0058B01C    je          0058B040
 0058B01E    mov         eax,dword ptr [ebp-4]
 0058B021    mov         eax,dword ptr [eax+0A0];TSearchFindNext.SearchFind:TSearchFind
 0058B027    call        TSearchFind.GetDialog
 0058B02C    lea         edx,[ebp-0C]
 0058B02F    call        TFindDialog.GetFindText
 0058B034    mov         eax,dword ptr [ebp-0C]
 0058B037    call        @LStrLen
 0058B03C    test        eax,eax
>0058B03E    jne         0058B044
 0058B040    xor         edx,edx
>0058B042    jmp         0058B046
 0058B044    mov         dl,1
 0058B046    mov         eax,dword ptr [ebp-4]
 0058B049    call        TOpenPicture.SetEnabled
>0058B04E    jmp         0058B05A
 0058B050    xor         edx,edx
 0058B052    mov         eax,dword ptr [ebp-4]
 0058B055    call        TOpenPicture.SetEnabled
 0058B05A    xor         eax,eax
 0058B05C    pop         edx
 0058B05D    pop         ecx
 0058B05E    pop         ecx
 0058B05F    mov         dword ptr fs:[eax],edx
 0058B062    push        58B077
 0058B067    lea         eax,[ebp-0C]
 0058B06A    call        @LStrClr
 0058B06F    ret
>0058B070    jmp         @HandleFinally
>0058B075    jmp         0058B067
 0058B077    mov         esp,ebp
 0058B079    pop         ebp
 0058B07A    ret
end;*}

//0058B07C
{*function TFontEdit.GetDialog:?;
begin
 0058B07C    push        ebp
 0058B07D    mov         ebp,esp
 0058B07F    add         esp,0FFFFFFF8
 0058B082    mov         dword ptr [ebp-4],eax
 0058B085    mov         eax,dword ptr [ebp-4]
 0058B088    mov         eax,dword ptr [eax+0C0];TFontEdit.FDialog:TCommonDialog
 0058B08E    mov         dword ptr [ebp-8],eax
 0058B091    mov         eax,dword ptr [ebp-8]
 0058B094    pop         ecx
 0058B095    pop         ecx
 0058B096    pop         ebp
 0058B097    ret
end;*}

//0058B098
{*function sub_0058B098:?;
begin
 0058B098    push        ebp
 0058B099    mov         ebp,esp
 0058B09B    add         esp,0FFFFFFF8
 0058B09E    mov         dword ptr [ebp-4],eax
 0058B0A1    mov         eax,[005E9044];TFontDialog
 0058B0A6    mov         dword ptr [ebp-8],eax
 0058B0A9    mov         eax,dword ptr [ebp-8]
 0058B0AC    pop         ecx
 0058B0AD    pop         ecx
 0058B0AE    pop         ebp
 0058B0AF    ret
end;*}

//0058B0B0
{*function TColorSelect.GetDialog:?;
begin
 0058B0B0    push        ebp
 0058B0B1    mov         ebp,esp
 0058B0B3    add         esp,0FFFFFFF8
 0058B0B6    mov         dword ptr [ebp-4],eax
 0058B0B9    mov         eax,dword ptr [ebp-4]
 0058B0BC    mov         eax,dword ptr [eax+0C0];TColorSelect.FDialog:TCommonDialog
 0058B0C2    mov         dword ptr [ebp-8],eax
 0058B0C5    mov         eax,dword ptr [ebp-8]
 0058B0C8    pop         ecx
 0058B0C9    pop         ecx
 0058B0CA    pop         ebp
 0058B0CB    ret
end;*}

//0058B0CC
{*function sub_0058B0CC:?;
begin
 0058B0CC    push        ebp
 0058B0CD    mov         ebp,esp
 0058B0CF    add         esp,0FFFFFFF8
 0058B0D2    mov         dword ptr [ebp-4],eax
 0058B0D5    mov         eax,[005E8D5C];TColorDialog
 0058B0DA    mov         dword ptr [ebp-8],eax
 0058B0DD    mov         eax,dword ptr [ebp-8]
 0058B0E0    pop         ecx
 0058B0E1    pop         ecx
 0058B0E2    pop         ebp
 0058B0E3    ret
end;*}

//0058B0E4
{*function TPrintDlg.GetDialog:?;
begin
 0058B0E4    push        ebp
 0058B0E5    mov         ebp,esp
 0058B0E7    add         esp,0FFFFFFF8
 0058B0EA    mov         dword ptr [ebp-4],eax
 0058B0ED    mov         eax,dword ptr [ebp-4]
 0058B0F0    mov         eax,dword ptr [eax+0C0];TPrintDlg.FDialog:TCommonDialog
 0058B0F6    mov         dword ptr [ebp-8],eax
 0058B0F9    mov         eax,dword ptr [ebp-8]
 0058B0FC    pop         ecx
 0058B0FD    pop         ecx
 0058B0FE    pop         ebp
 0058B0FF    ret
end;*}

//0058B100
{*function sub_0058B100:?;
begin
 0058B100    push        ebp
 0058B101    mov         ebp,esp
 0058B103    add         esp,0FFFFFFF8
 0058B106    mov         dword ptr [ebp-4],eax
 0058B109    mov         eax,[005E938C];TPrintDialog
 0058B10E    mov         dword ptr [ebp-8],eax
 0058B111    mov         eax,dword ptr [ebp-8]
 0058B114    pop         ecx
 0058B115    pop         ecx
 0058B116    pop         ebp
 0058B117    ret
end;*}

//0058B118
procedure Finalization;
begin
{*
 0058B118    push        ebp
 0058B119    mov         ebp,esp
 0058B11B    xor         eax,eax
 0058B11D    push        ebp
 0058B11E    push        58B13D
 0058B123    push        dword ptr fs:[eax]
 0058B126    mov         dword ptr fs:[eax],esp
 0058B129    inc         dword ptr ds:[6ECCE0]
 0058B12F    xor         eax,eax
 0058B131    pop         edx
 0058B132    pop         ecx
 0058B133    pop         ecx
 0058B134    mov         dword ptr fs:[eax],edx
 0058B137    push        58B144
 0058B13C    ret
>0058B13D    jmp         @HandleFinally
>0058B142    jmp         0058B13C
 0058B144    pop         ebp
 0058B145    ret
*}
end;

end.