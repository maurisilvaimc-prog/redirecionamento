//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ListActns;

interface

uses
  SysUtils, Classes, ListActns, ImgList;

type
  TListCompareEvent = function(List:TListControlItems; Item1:TListControlItem; Item2:TListControlItem):Integer of object;;
  TListControlItem = class(TCollectionItem)
  public
    FListControlItems:TListControlItems;//fC
    Caption:String;//f10
    FData:Pointer;//f14
    ImageIndex:TImageIndex;//f18
    procedure Assign(Source:TPersistent); virtual;//v8//005B0674
    //procedure vC(?:?); virtual;//vC//005B0784
    constructor v1C; virtual;//v1C//005B0730
    procedure SetCaption(Value:String); virtual;//v20//005B07C0
    //procedure v24(?:?); virtual;//v24//005B07E8
    procedure SetImageIndex(Value:TImageIndex); virtual;//v28//005B080C
  end;
  TListItemsSortType = (stNone, stData, stText, stBoth);
  TListControlItems = class(TOwnedCollection)
  public
    CaseSensitive:Boolean;//f1C
    SortType:TListItemsSortType;//f1D
    OnCompare:TListCompareEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    //function v28(?:?; ?:?):?; virtual;//v28//005B08D4
    procedure SetSortType(Value:TListItemsSortType);//005B0A98
  end;
  TGetItemCountEvent = procedure(Sender:TCustomListAction; var Count:Integer) of object;;
  TItemSelectedEvent = procedure(Sender:TCustomListAction; Control:TControl) of object;;
  TCustomListAction = class(TCustomAction)
  public
    FActive:Boolean;//fA0
    FActivated:Boolean;//fA1
    FImages:TCustomImageList;//fA4
    FInUpdate:Boolean;//fA8
    FLoadedImages:TCustomImageList;//fAC
    FLoading:Boolean;//fB0
    FOnGetItemCount:TGetItemCountEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnItemSelected:TItemSelectedEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FItemIndex:Integer;//fC8
    procedure Loaded; virtual;//vC//005B0D04
    constructor Create(AOwner:TComponent); virtual;//v2C//005B0AE8
    //function v38(?:?):?; virtual;//v38//005B0CEC
    //procedure v40(?:?); virtual;//v40//005B0B58
    //function v54:?; virtual;//v54//005B0C94
    //procedure v58(?:?; ?:?); virtual;//v58//005B0CD0
    //procedure v5C(?:?; ?:?); virtual;//v5C//005B0F78
  end;
  TGetVirtualItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Value:String; var ImageIndex:Integer; var Data:Pointer) of object;;
  TVirtualListAction = class(TCustomListAction)
  public
    OnGetItem:TGetVirtualItemEvent;//fD0
    procedure SetActive(Value:Boolean);//005B0D50
    procedure SetImages(Value:TCustomImageList);//005B0E58
    procedure SetItemIndex(Value:Integer);//005B0EF8
  end;
  TGetItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Item:TListControlItem) of object;;
  TStaticListItems = class(TListControlItems)
  public
    ..............FStaticListAction:TStaticListAction;//f28
    //procedure v14(?:?; ?:?); virtual;//v14//005B0FEC
    //procedure v1C(?:?); virtual;//v1C//005B11F4
  end;
  TStaticListAction = class(TCustomListAction)
  public
    Items:TStaticListItems;//fD0
    OnGetItem:TGetItemEvent;//fD8
    destructor Destroy; virtual;//005B13D4
    constructor Create(AOwner:TComponent); virtual;//v2C//005B135C
    //function v54:?; virtual;//v54//005B1414
    //procedure v58(?:?; ?:?); virtual;//v58//005B14D4
    //procedure v5C(?:?; ?:?); virtual;//v5C//005B1528
    //function v60:?; virtual;//v60//005B14BC
    procedure SetItems(Value:TStaticListItems);//005B1504
  end;
  TListActionLink = class(TWinControlActionLink)
  public
    //procedure vC(?:?); virtual;//vC//005B15B8
    //function v7C:?; virtual;//v7C//005B1554
    //procedure v80(?:?); virtual;//v80//005B1614
    //function v84:?; virtual;//v84//005B1578
    //procedure v88(?:?); virtual;//v88//005B1698
    //procedure v8C(?:?); virtual;//v8C//005B1888
    //procedure v90(?:?); virtual;//v90//005B1830
    //procedure v94(?:?; ?:?); virtual;//v94//005B1840
  end;
    procedure ListActns;//005AF998
    procedure Assign(Source:TPersistent);//005B0674
    procedure sub_005B070C(?:TListControlItem);//005B070C
    constructor sub_005B0730;//005B0730
    //procedure sub_005B0784(?:?);//005B0784
    procedure SetCaption(Value:String);//005B07C0
    //procedure sub_005B07E8(?:?);//005B07E8
    procedure SetImageIndex(Value:TImageIndex);//005B080C
    //function sub_005B0870(?:TComboExItems):?;//005B0870
    //procedure sub_005B0894(?:TListControlItems; ?:?);//005B0894
    //function sub_005B08D4(?:?; ?:?):?;//005B08D4
    //procedure sub_005B0944(?:?; ?:?; ?:?);//005B0944
    //procedure sub_005B09B0(?:?; ?:?; ?:?; ?:?);//005B09B0
    //function sub_005B0A74(?:TListControlItems; ?:?):?;//005B0A74
    procedure sub_005B0AD0(?:TCollection);//005B0AD0
    constructor Create(AOwner:TComponent);//005B0AE8
    //procedure sub_005B0B58(?:?);//005B0B58
    //function sub_005B0C94:?;//005B0C94
    //procedure sub_005B0CD0(?:?; ?:?);//005B0CD0
    //function sub_005B0CEC(?:?):?;//005B0CEC
    procedure Loaded;//005B0D04
    //procedure sub_005B0F78(?:?; ?:?);//005B0F78
    //function sub_005B0F8C(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;//005B0F8C
    //procedure sub_005B0FEC(?:?; ?:?);//005B0FEC
    //procedure sub_005B11F4(?:?);//005B11F4
    constructor Create(AOwner:TComponent);//005B135C
    destructor Destroy;//005B13D4
    //function sub_005B1414:?;//005B1414
    //function sub_005B1438(?:TStaticListAction; ?:?; ?:?):?;//005B1438
    //function sub_005B14BC:?;//005B14BC
    //procedure sub_005B14D4(?:?; ?:?);//005B14D4
    //procedure sub_005B1528(?:?; ?:?);//005B1528
    //function sub_005B1554:?;//005B1554
    //function sub_005B1578:?;//005B1578
    //procedure sub_005B15B8(?:?);//005B15B8
    //procedure sub_005B1614(?:?);//005B1614
    //procedure sub_005B1698(?:?);//005B1698
    procedure sub_005B16A8(?:TListActionLink);//005B16A8
    //procedure sub_005B1830(?:?);//005B1830
    //procedure sub_005B1840(?:?; ?:?);//005B1840
    //procedure sub_005B1888(?:?);//005B1888
    procedure Finalization;//005B18D0

implementation

//005AF998
procedure ListActns;
begin
{*
 005AF998    sub         dword ptr ds:[6ECD10],1
 005AF99F    ret
*}
end;

//005B0674
procedure TListControlItem.Assign(Source:TPersistent);
begin
{*
 005B0674    push        ebp
 005B0675    mov         ebp,esp
 005B0677    add         esp,0FFFFFFF8
 005B067A    mov         dword ptr [ebp-8],edx
 005B067D    mov         dword ptr [ebp-4],eax
 005B0680    mov         eax,dword ptr [ebp-8]
 005B0683    mov         edx,dword ptr ds:[5AFA38];TListControlItem
 005B0689    call        @IsClass
 005B068E    test        al,al
>005B0690    je          005B0707
 005B0692    mov         eax,dword ptr [ebp-4]
 005B0695    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>005B0699    je          005B06A6
 005B069B    mov         eax,dword ptr [ebp-4]
 005B069E    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 005B06A1    mov         edx,dword ptr [eax]
 005B06A3    call        dword ptr [edx+20];TCollection.sub_00646630
 005B06A6    xor         eax,eax
 005B06A8    push        ebp
 005B06A9    push        5B0700
 005B06AE    push        dword ptr fs:[eax]
 005B06B1    mov         dword ptr fs:[eax],esp
 005B06B4    mov         eax,dword ptr [ebp-8]
 005B06B7    mov         edx,dword ptr [eax+10]
 005B06BA    mov         eax,dword ptr [ebp-4]
 005B06BD    mov         ecx,dword ptr [eax]
 005B06BF    call        dword ptr [ecx+20];TListControlItem.SetCaption
 005B06C2    mov         eax,dword ptr [ebp-8]
 005B06C5    mov         edx,dword ptr [eax+18]
 005B06C8    mov         eax,dword ptr [ebp-4]
 005B06CB    mov         ecx,dword ptr [eax]
 005B06CD    call        dword ptr [ecx+28];TListControlItem.SetImageIndex
 005B06D0    mov         eax,dword ptr [ebp-8]
 005B06D3    mov         edx,dword ptr [eax+14]
 005B06D6    mov         eax,dword ptr [ebp-4]
 005B06D9    mov         ecx,dword ptr [eax]
 005B06DB    call        dword ptr [ecx+24];TListControlItem.sub_005B07E8
 005B06DE    xor         eax,eax
 005B06E0    pop         edx
 005B06E1    pop         ecx
 005B06E2    pop         ecx
 005B06E3    mov         dword ptr fs:[eax],edx
 005B06E6    push        5B0707
 005B06EB    mov         eax,dword ptr [ebp-4]
 005B06EE    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>005B06F2    je          005B06FF
 005B06F4    mov         eax,dword ptr [ebp-4]
 005B06F7    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 005B06FA    mov         edx,dword ptr [eax]
 005B06FC    call        dword ptr [edx+24];TCollection.sub_006466C8
 005B06FF    ret
>005B0700    jmp         @HandleFinally
>005B0705    jmp         005B06EB
 005B0707    pop         ecx
 005B0708    pop         ecx
 005B0709    pop         ebp
 005B070A    ret
*}
end;

//005B070C
procedure sub_005B070C(?:TListControlItem);
begin
{*
 005B070C    push        ebp
 005B070D    mov         ebp,esp
 005B070F    push        ecx
 005B0710    mov         dword ptr [ebp-4],eax
 005B0713    mov         eax,dword ptr [ebp-4]
 005B0716    cmp         dword ptr [eax+0C],0
>005B071A    je          005B072A
 005B071C    mov         edx,dword ptr [ebp-4]
 005B071F    mov         eax,dword ptr [ebp-4]
 005B0722    mov         eax,dword ptr [eax+0C]
 005B0725    mov         ecx,dword ptr [eax]
 005B0727    call        dword ptr [ecx+1C]
 005B072A    pop         ecx
 005B072B    pop         ebp
 005B072C    ret
*}
end;

//005B0730
constructor sub_005B0730;
begin
{*
 005B0730    push        ebp
 005B0731    mov         ebp,esp
 005B0733    add         esp,0FFFFFFF4
 005B0736    test        dl,dl
>005B0738    je          005B0742
 005B073A    add         esp,0FFFFFFF0
 005B073D    call        @ClassCreate
 005B0742    mov         dword ptr [ebp-0C],ecx
 005B0745    mov         byte ptr [ebp-5],dl
 005B0748    mov         dword ptr [ebp-4],eax
 005B074B    mov         ecx,dword ptr [ebp-0C]
 005B074E    xor         edx,edx
 005B0750    mov         eax,dword ptr [ebp-4]
 005B0753    call        006461DC
 005B0758    mov         eax,dword ptr [ebp-4]
 005B075B    mov         dword ptr [eax+18],0FFFFFFFF;TListControlItem.ImageIndex:TImageIndex
 005B0762    mov         eax,dword ptr [ebp-4]
 005B0765    cmp         byte ptr [ebp-5],0
>005B0769    je          005B077A
 005B076B    call        @AfterConstruction
 005B0770    pop         dword ptr fs:[0]
 005B0777    add         esp,0C
 005B077A    mov         eax,dword ptr [ebp-4]
 005B077D    mov         esp,ebp
 005B077F    pop         ebp
 005B0780    ret
*}
end;

//005B0784
{*procedure sub_005B0784(?:?);
begin
 005B0784    push        ebp
 005B0785    mov         ebp,esp
 005B0787    add         esp,0FFFFFFF8
 005B078A    mov         dword ptr [ebp-8],edx
 005B078D    mov         dword ptr [ebp-4],eax
 005B0790    mov         eax,dword ptr [ebp-4]
 005B0793    mov         eax,dword ptr [eax+10];TListControlItem.Caption:String
 005B0796    call        @LStrLen
 005B079B    test        eax,eax
>005B079D    jle         005B07AF
 005B079F    mov         eax,dword ptr [ebp-8]
 005B07A2    mov         edx,dword ptr [ebp-4]
 005B07A5    mov         edx,dword ptr [edx+10];TListControlItem.Caption:String
 005B07A8    call        @LStrAsg
>005B07AD    jmp         005B07BA
 005B07AF    mov         edx,dword ptr [ebp-8]
 005B07B2    mov         eax,dword ptr [ebp-4]
 005B07B5    call        006462E0
 005B07BA    pop         ecx
 005B07BB    pop         ecx
 005B07BC    pop         ebp
 005B07BD    ret
end;*}

//005B07C0
procedure TListControlItem.SetCaption(Value:String);
begin
{*
 005B07C0    push        ebp
 005B07C1    mov         ebp,esp
 005B07C3    add         esp,0FFFFFFF8
 005B07C6    mov         dword ptr [ebp-8],edx
 005B07C9    mov         dword ptr [ebp-4],eax
 005B07CC    mov         eax,dword ptr [ebp-4]
 005B07CF    add         eax,10;TListControlItem.Caption:String
 005B07D2    mov         edx,dword ptr [ebp-8]
 005B07D5    call        @LStrAsg
 005B07DA    mov         eax,dword ptr [ebp-4]
 005B07DD    call        005B070C
 005B07E2    pop         ecx
 005B07E3    pop         ecx
 005B07E4    pop         ebp
 005B07E5    ret
*}
end;

//005B07E8
{*procedure sub_005B07E8(?:?);
begin
 005B07E8    push        ebp
 005B07E9    mov         ebp,esp
 005B07EB    add         esp,0FFFFFFF8
 005B07EE    mov         dword ptr [ebp-8],edx
 005B07F1    mov         dword ptr [ebp-4],eax
 005B07F4    mov         eax,dword ptr [ebp-8]
 005B07F7    mov         edx,dword ptr [ebp-4]
 005B07FA    mov         dword ptr [edx+14],eax;TListControlItem.FData:Pointer
 005B07FD    mov         eax,dword ptr [ebp-4]
 005B0800    call        005B070C
 005B0805    pop         ecx
 005B0806    pop         ecx
 005B0807    pop         ebp
 005B0808    ret
end;*}

//005B080C
procedure TListControlItem.SetImageIndex(Value:TImageIndex);
begin
{*
 005B080C    push        ebp
 005B080D    mov         ebp,esp
 005B080F    add         esp,0FFFFFFF8
 005B0812    mov         dword ptr [ebp-8],edx
 005B0815    mov         dword ptr [ebp-4],eax
 005B0818    mov         eax,dword ptr [ebp-8]
 005B081B    mov         edx,dword ptr [ebp-4]
 005B081E    mov         dword ptr [edx+18],eax;TListControlItem.ImageIndex:TImageIndex
 005B0821    mov         eax,dword ptr [ebp-4]
 005B0824    call        005B070C
 005B0829    pop         ecx
 005B082A    pop         ecx
 005B082B    pop         ebp
 005B082C    ret
*}
end;

//005B0870
{*function sub_005B0870(?:TComboExItems):?;
begin
 005B0870    push        ebp
 005B0871    mov         ebp,esp
 005B0873    add         esp,0FFFFFFF8
 005B0876    mov         dword ptr [ebp-4],eax
 005B0879    mov         eax,dword ptr [ebp-4]
 005B087C    call        00646560
 005B0881    mov         dword ptr [ebp-8],eax
 005B0884    mov         eax,dword ptr [ebp-8]
 005B0887    mov         edx,dword ptr [ebp-4]
 005B088A    mov         dword ptr [eax+0C],edx
 005B088D    mov         eax,dword ptr [ebp-8]
 005B0890    pop         ecx
 005B0891    pop         ecx
 005B0892    pop         ebp
 005B0893    ret
end;*}

//005B0894
{*procedure sub_005B0894(?:TListControlItems; ?:?);
begin
 005B0894    push        ebp
 005B0895    mov         ebp,esp
 005B0897    add         esp,0FFFFFFF8
 005B089A    mov         dword ptr [ebp-8],edx
 005B089D    mov         dword ptr [ebp-4],eax
 005B08A0    mov         eax,dword ptr [ebp-4]
 005B08A3    cmp         byte ptr [eax+1D],0
>005B08A7    je          005B08CD
 005B08A9    mov         eax,dword ptr [ebp-4]
 005B08AC    call        00646794
 005B08B1    dec         eax
>005B08B2    jle         005B08CD
 005B08B4    mov         eax,dword ptr [ebp-8]
 005B08B7    push        eax
 005B08B8    mov         eax,dword ptr [ebp-4]
 005B08BB    call        00646794
 005B08C0    mov         ecx,eax
 005B08C2    dec         ecx
 005B08C3    xor         edx,edx
 005B08C5    mov         eax,dword ptr [ebp-4]
 005B08C8    call        005B09B0
 005B08CD    pop         ecx
 005B08CE    pop         ecx
 005B08CF    pop         ebp
 005B08D0    ret
end;*}

//005B08D4
{*function sub_005B08D4(?:?; ?:?):?;
begin
 005B08D4    push        ebp
 005B08D5    mov         ebp,esp
 005B08D7    add         esp,0FFFFFFF0
 005B08DA    push        ebx
 005B08DB    mov         dword ptr [ebp-0C],ecx
 005B08DE    mov         dword ptr [ebp-8],edx
 005B08E1    mov         dword ptr [ebp-4],eax
 005B08E4    mov         eax,dword ptr [ebp-4]
 005B08E7    cmp         word ptr [eax+22],0;TListControlItems.?f22:word
>005B08EC    je          005B0906
 005B08EE    mov         eax,dword ptr [ebp-0C]
 005B08F1    push        eax
 005B08F2    mov         ebx,dword ptr [ebp-4]
 005B08F5    mov         ecx,dword ptr [ebp-8]
 005B08F8    mov         edx,dword ptr [ebp-4]
 005B08FB    mov         eax,dword ptr [ebx+24];TListControlItems.?f24:dword
 005B08FE    call        dword ptr [ebx+20];TListControlItems.OnCompare
 005B0901    mov         dword ptr [ebp-10],eax
>005B0904    jmp         005B0939
 005B0906    mov         eax,dword ptr [ebp-4]
 005B0909    cmp         byte ptr [eax+1C],0;TListControlItems.CaseSensitive:Boolean
>005B090D    je          005B0925
 005B090F    mov         eax,dword ptr [ebp-0C]
 005B0912    mov         edx,dword ptr [eax+10]
 005B0915    mov         eax,dword ptr [ebp-8]
 005B0918    mov         eax,dword ptr [eax+10]
 005B091B    call        00657738
 005B0920    mov         dword ptr [ebp-10],eax
>005B0923    jmp         005B0939
 005B0925    mov         eax,dword ptr [ebp-0C]
 005B0928    mov         edx,dword ptr [eax+10]
 005B092B    mov         eax,dword ptr [ebp-8]
 005B092E    mov         eax,dword ptr [eax+10]
 005B0931    call        AnsiCompareText
 005B0936    mov         dword ptr [ebp-10],eax
 005B0939    mov         eax,dword ptr [ebp-10]
 005B093C    pop         ebx
 005B093D    mov         esp,ebp
 005B093F    pop         ebp
 005B0940    ret
end;*}

//005B0944
{*procedure sub_005B0944(?:?; ?:?; ?:?);
begin
 005B0944    push        ebp
 005B0945    mov         ebp,esp
 005B0947    add         esp,0FFFFFFE4
 005B094A    mov         dword ptr [ebp-0C],ecx
 005B094D    mov         dword ptr [ebp-8],edx
 005B0950    mov         dword ptr [ebp-4],eax
 005B0953    mov         edx,dword ptr [ebp-8]
 005B0956    mov         eax,dword ptr [ebp-4]
 005B0959    call        005B0A74
 005B095E    mov         dword ptr [ebp-10],eax
 005B0961    mov         edx,dword ptr [ebp-0C]
 005B0964    mov         eax,dword ptr [ebp-4]
 005B0967    call        005B0A74
 005B096C    mov         dword ptr [ebp-14],eax
 005B096F    mov         edx,dword ptr [ebp-8]
 005B0972    mov         eax,dword ptr [ebp-4]
 005B0975    call        005B0A74
 005B097A    call        006462A8
 005B097F    mov         dword ptr [ebp-18],eax
 005B0982    mov         edx,dword ptr [ebp-0C]
 005B0985    mov         eax,dword ptr [ebp-4]
 005B0988    call        005B0A74
 005B098D    call        006462A8
 005B0992    mov         dword ptr [ebp-1C],eax
 005B0995    mov         edx,dword ptr [ebp-1C]
 005B0998    mov         eax,dword ptr [ebp-10]
 005B099B    mov         ecx,dword ptr [eax]
 005B099D    call        dword ptr [ecx+14]
 005B09A0    mov         edx,dword ptr [ebp-18]
 005B09A3    mov         eax,dword ptr [ebp-14]
 005B09A6    mov         ecx,dword ptr [eax]
 005B09A8    call        dword ptr [ecx+14]
 005B09AB    mov         esp,ebp
 005B09AD    pop         ebp
 005B09AE    ret
end;*}

//005B09B0
{*procedure sub_005B09B0(?:?; ?:?; ?:?; ?:?);
begin
 005B09B0    push        ebp
 005B09B1    mov         ebp,esp
 005B09B3    add         esp,0FFFFFFE8
 005B09B6    mov         dword ptr [ebp-0C],ecx
 005B09B9    mov         dword ptr [ebp-8],edx
 005B09BC    mov         dword ptr [ebp-4],eax
 005B09BF    mov         eax,dword ptr [ebp-8]
 005B09C2    mov         dword ptr [ebp-10],eax
 005B09C5    mov         eax,dword ptr [ebp-0C]
 005B09C8    mov         dword ptr [ebp-14],eax
 005B09CB    mov         eax,dword ptr [ebp-8]
 005B09CE    add         eax,dword ptr [ebp-0C]
 005B09D1    shr         eax,1
 005B09D3    mov         dword ptr [ebp-18],eax
>005B09D6    jmp         005B09DB
 005B09D8    inc         dword ptr [ebp-10]
 005B09DB    mov         ecx,dword ptr [ebp-18]
 005B09DE    mov         edx,dword ptr [ebp-10]
 005B09E1    mov         eax,dword ptr [ebp-4]
 005B09E4    call        dword ptr [ebp+8]
 005B09E7    test        eax,eax
>005B09E9    jl          005B09D8
>005B09EB    jmp         005B09F0
 005B09ED    dec         dword ptr [ebp-14]
 005B09F0    mov         ecx,dword ptr [ebp-18]
 005B09F3    mov         edx,dword ptr [ebp-14]
 005B09F6    mov         eax,dword ptr [ebp-4]
 005B09F9    call        dword ptr [ebp+8]
 005B09FC    test        eax,eax
>005B09FE    jg          005B09ED
 005B0A00    mov         eax,dword ptr [ebp-10]
 005B0A03    cmp         eax,dword ptr [ebp-14]
>005B0A06    jg          005B0A3A
 005B0A08    mov         ecx,dword ptr [ebp-14]
 005B0A0B    mov         edx,dword ptr [ebp-10]
 005B0A0E    mov         eax,dword ptr [ebp-4]
 005B0A11    call        005B0944
 005B0A16    mov         eax,dword ptr [ebp-18]
 005B0A19    cmp         eax,dword ptr [ebp-10]
>005B0A1C    jne         005B0A26
 005B0A1E    mov         eax,dword ptr [ebp-14]
 005B0A21    mov         dword ptr [ebp-18],eax
>005B0A24    jmp         005B0A34
 005B0A26    mov         eax,dword ptr [ebp-18]
 005B0A29    cmp         eax,dword ptr [ebp-14]
>005B0A2C    jne         005B0A34
 005B0A2E    mov         eax,dword ptr [ebp-10]
 005B0A31    mov         dword ptr [ebp-18],eax
 005B0A34    inc         dword ptr [ebp-10]
 005B0A37    dec         dword ptr [ebp-14]
 005B0A3A    mov         eax,dword ptr [ebp-10]
 005B0A3D    cmp         eax,dword ptr [ebp-14]
>005B0A40    jle         005B09DB
 005B0A42    mov         eax,dword ptr [ebp-8]
 005B0A45    cmp         eax,dword ptr [ebp-14]
>005B0A48    jge         005B0A5C
 005B0A4A    mov         eax,dword ptr [ebp+8]
 005B0A4D    push        eax
 005B0A4E    mov         ecx,dword ptr [ebp-14]
 005B0A51    mov         edx,dword ptr [ebp-8]
 005B0A54    mov         eax,dword ptr [ebp-4]
 005B0A57    call        005B09B0
 005B0A5C    mov         eax,dword ptr [ebp-10]
 005B0A5F    mov         dword ptr [ebp-8],eax
 005B0A62    mov         eax,dword ptr [ebp-10]
 005B0A65    cmp         eax,dword ptr [ebp-0C]
>005B0A68    jl          005B09BF
 005B0A6E    mov         esp,ebp
 005B0A70    pop         ebp
 005B0A71    ret         4
end;*}

//005B0A74
{*function sub_005B0A74(?:TListControlItems; ?:?):?;
begin
 005B0A74    push        ebp
 005B0A75    mov         ebp,esp
 005B0A77    add         esp,0FFFFFFF4
 005B0A7A    mov         dword ptr [ebp-8],edx
 005B0A7D    mov         dword ptr [ebp-4],eax
 005B0A80    mov         edx,dword ptr [ebp-8]
 005B0A83    mov         eax,dword ptr [ebp-4]
 005B0A86    call        006467B0
 005B0A8B    mov         dword ptr [ebp-0C],eax
 005B0A8E    mov         eax,dword ptr [ebp-0C]
 005B0A91    mov         esp,ebp
 005B0A93    pop         ebp
 005B0A94    ret
end;*}

//005B0A98
procedure TListControlItems.SetSortType(Value:TListItemsSortType);
begin
{*
 005B0A98    push        ebp
 005B0A99    mov         ebp,esp
 005B0A9B    add         esp,0FFFFFFF8
 005B0A9E    mov         byte ptr [ebp-5],dl
 005B0AA1    mov         dword ptr [ebp-4],eax
 005B0AA4    mov         eax,dword ptr [ebp-4]
 005B0AA7    mov         al,byte ptr [eax+1D];TListControlItems.SortType:TListItemsSortType
 005B0AAA    cmp         al,byte ptr [ebp-5]
>005B0AAD    je          005B0ACB
 005B0AAF    mov         al,byte ptr [ebp-5]
 005B0AB2    mov         edx,dword ptr [ebp-4]
 005B0AB5    mov         byte ptr [edx+1D],al;TListControlItems.SortType:TListItemsSortType
 005B0AB8    cmp         byte ptr [ebp-5],0
>005B0ABC    je          005B0ACB
 005B0ABE    mov         edx,5B0830
 005B0AC3    mov         eax,dword ptr [ebp-4]
 005B0AC6    call        005B0894
 005B0ACB    pop         ecx
 005B0ACC    pop         ecx
 005B0ACD    pop         ebp
 005B0ACE    ret
*}
end;

//005B0AD0
procedure sub_005B0AD0(?:TCollection);
begin
{*
 005B0AD0    push        ebp
 005B0AD1    mov         ebp,esp
 005B0AD3    push        ecx
 005B0AD4    mov         dword ptr [ebp-4],eax
 005B0AD7    mov         edx,5B0830
 005B0ADC    mov         eax,dword ptr [ebp-4]
 005B0ADF    call        005B0894
 005B0AE4    pop         ecx
 005B0AE5    pop         ebp
 005B0AE6    ret
*}
end;

//005B0AE8
constructor TCustomListAction.Create(AOwner:TComponent);
begin
{*
 005B0AE8    push        ebp
 005B0AE9    mov         ebp,esp
 005B0AEB    add         esp,0FFFFFFF4
 005B0AEE    test        dl,dl
>005B0AF0    je          005B0AFA
 005B0AF2    add         esp,0FFFFFFF0
 005B0AF5    call        @ClassCreate
 005B0AFA    mov         dword ptr [ebp-0C],ecx
 005B0AFD    mov         byte ptr [ebp-5],dl
 005B0B00    mov         dword ptr [ebp-4],eax
 005B0B03    mov         ecx,dword ptr [ebp-0C]
 005B0B06    xor         edx,edx
 005B0B08    mov         eax,dword ptr [ebp-4]
 005B0B0B    call        TCustomAction.Create
 005B0B10    mov         eax,dword ptr [ebp-4]
 005B0B13    mov         dword ptr [eax+0C8],0FFFFFFFF;TCustomListAction.FItemIndex:Integer
 005B0B1D    mov         eax,dword ptr [ebp-4]
 005B0B20    mov         byte ptr [eax+60],0;TCustomListAction.FDisableIfNoHandler:Boolean
 005B0B24    mov         dl,1
 005B0B26    mov         eax,dword ptr [ebp-4]
 005B0B29    call        TOpenPicture.SetEnabled
 005B0B2E    mov         dl,1
 005B0B30    mov         eax,dword ptr [ebp-4]
 005B0B33    call        TVirtualListAction.SetActive
 005B0B38    mov         eax,dword ptr [ebp-4]
 005B0B3B    cmp         byte ptr [ebp-5],0
>005B0B3F    je          005B0B50
 005B0B41    call        @AfterConstruction
 005B0B46    pop         dword ptr fs:[0]
 005B0B4D    add         esp,0C
 005B0B50    mov         eax,dword ptr [ebp-4]
 005B0B53    mov         esp,ebp
 005B0B55    pop         ebp
 005B0B56    ret
*}
end;

//005B0B58
{*procedure sub_005B0B58(?:?);
begin
 005B0B58    push        ebp
 005B0B59    mov         ebp,esp
 005B0B5B    add         esp,0FFFFFFEC
 005B0B5E    push        ebx
 005B0B5F    mov         dword ptr [ebp-8],edx
 005B0B62    mov         dword ptr [ebp-4],eax
 005B0B65    mov         eax,dword ptr [ebp-4]
 005B0B68    cmp         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
>005B0B6F    jne         005B0C8D
 005B0B75    mov         eax,dword ptr [ebp-4]
 005B0B78    mov         byte ptr [eax+0A8],1;TCustomListAction.FInUpdate:Boolean
 005B0B7F    xor         eax,eax
 005B0B81    push        ebp
 005B0B82    push        5B0C86
 005B0B87    push        dword ptr fs:[eax]
 005B0B8A    mov         dword ptr fs:[eax],esp
 005B0B8D    mov         eax,dword ptr [ebp-8]
 005B0B90    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B0B96    call        @IsClass
 005B0B9B    test        al,al
>005B0B9D    je          005B0C3F
 005B0BA3    mov         eax,dword ptr [ebp-8]
 005B0BA6    mov         edx,dword ptr [eax]
 005B0BA8    call        dword ptr [edx+0C8]
 005B0BAE    mov         edx,dword ptr [ebp-4]
 005B0BB1    mov         dword ptr [edx+0C8],eax;TCustomListAction.FItemIndex:Integer
 005B0BB7    mov         eax,dword ptr [ebp-4]
 005B0BBA    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 005B0BBD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B0BC0    dec         eax
 005B0BC1    test        eax,eax
>005B0BC3    jl          005B0C3F
 005B0BC5    inc         eax
 005B0BC6    mov         dword ptr [ebp-10],eax
 005B0BC9    mov         dword ptr [ebp-0C],0
 005B0BD0    mov         eax,dword ptr [ebp-4]
 005B0BD3    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 005B0BD6    mov         edx,dword ptr [ebp-0C]
 005B0BD9    call        TList.Get
 005B0BDE    mov         edx,dword ptr ds:[5B0580];TListActionLink
 005B0BE4    call        @IsClass
 005B0BE9    test        al,al
>005B0BEB    je          005B0C37
 005B0BED    mov         eax,dword ptr [ebp-4]
 005B0BF0    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 005B0BF3    mov         edx,dword ptr [ebp-0C]
 005B0BF6    call        TList.Get
 005B0BFB    mov         eax,dword ptr [eax+20]
 005B0BFE    cmp         eax,dword ptr [ebp-8]
>005B0C01    je          005B0C37
 005B0C03    mov         eax,dword ptr [ebp-8]
 005B0C06    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B0C0C    call        @AsClass
 005B0C11    mov         dword ptr [ebp-14],eax
 005B0C14    mov         eax,dword ptr [ebp-14]
 005B0C17    mov         edx,dword ptr [eax]
 005B0C19    call        dword ptr [edx+0C8];@AbstractError
 005B0C1F    push        eax
 005B0C20    mov         eax,dword ptr [ebp-4]
 005B0C23    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 005B0C26    mov         edx,dword ptr [ebp-0C]
 005B0C29    call        TList.Get
 005B0C2E    pop         edx
 005B0C2F    mov         ecx,dword ptr [eax]
 005B0C31    call        dword ptr [ecx+8C]
 005B0C37    inc         dword ptr [ebp-0C]
 005B0C3A    dec         dword ptr [ebp-10]
>005B0C3D    jne         005B0BD0
 005B0C3F    mov         eax,dword ptr [ebp-4]
 005B0C42    cmp         word ptr [eax+0C2],0;TCustomListAction.?fC2:word
>005B0C4A    je          005B0C6E
 005B0C4C    mov         eax,dword ptr [ebp-8]
 005B0C4F    mov         edx,dword ptr ds:[5EE128];TControl
 005B0C55    call        @AsClass
 005B0C5A    mov         ecx,eax
 005B0C5C    mov         ebx,dword ptr [ebp-4]
 005B0C5F    mov         edx,dword ptr [ebp-4]
 005B0C62    mov         eax,dword ptr [ebx+0C4];TCustomListAction.?fC4:dword
 005B0C68    call        dword ptr [ebx+0C0];TCustomListAction.FOnItemSelected
 005B0C6E    xor         eax,eax
 005B0C70    pop         edx
 005B0C71    pop         ecx
 005B0C72    pop         ecx
 005B0C73    mov         dword ptr fs:[eax],edx
 005B0C76    push        5B0C8D
 005B0C7B    mov         eax,dword ptr [ebp-4]
 005B0C7E    mov         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
 005B0C85    ret
>005B0C86    jmp         @HandleFinally
>005B0C8B    jmp         005B0C7B
 005B0C8D    pop         ebx
 005B0C8E    mov         esp,ebp
 005B0C90    pop         ebp
 005B0C91    ret
end;*}

//005B0C94
{*function sub_005B0C94:?;
begin
 005B0C94    push        ebp
 005B0C95    mov         ebp,esp
 005B0C97    add         esp,0FFFFFFF8
 005B0C9A    push        ebx
 005B0C9B    mov         dword ptr [ebp-4],eax
 005B0C9E    mov         dword ptr [ebp-8],0FFFFFFFF
 005B0CA5    mov         eax,dword ptr [ebp-4]
 005B0CA8    cmp         word ptr [eax+0BA],0;TCustomListAction.?fBA:word
>005B0CB0    je          005B0CC7
 005B0CB2    lea         ecx,[ebp-8]
 005B0CB5    mov         ebx,dword ptr [ebp-4]
 005B0CB8    mov         edx,dword ptr [ebp-4]
 005B0CBB    mov         eax,dword ptr [ebx+0BC];TCustomListAction.?fBC:dword
 005B0CC1    call        dword ptr [ebx+0B8];TCustomListAction.FOnGetItemCount
 005B0CC7    mov         eax,dword ptr [ebp-8]
 005B0CCA    pop         ebx
 005B0CCB    pop         ecx
 005B0CCC    pop         ecx
 005B0CCD    pop         ebp
 005B0CCE    ret
end;*}

//005B0CD0
{*procedure sub_005B0CD0(?:?; ?:?);
begin
 005B0CD0    push        ebp
 005B0CD1    mov         ebp,esp
 005B0CD3    add         esp,0FFFFFFF4
 005B0CD6    mov         dword ptr [ebp-8],ecx
 005B0CD9    mov         dword ptr [ebp-0C],edx
 005B0CDC    mov         dword ptr [ebp-4],eax
 005B0CDF    mov         eax,dword ptr [ebp-8]
 005B0CE2    call        @LStrClr
 005B0CE7    mov         esp,ebp
 005B0CE9    pop         ebp
 005B0CEA    ret
end;*}

//005B0CEC
{*function sub_005B0CEC(?:?):?;
begin
 005B0CEC    push        ebp
 005B0CED    mov         ebp,esp
 005B0CEF    add         esp,0FFFFFFF4
 005B0CF2    mov         dword ptr [ebp-0C],edx
 005B0CF5    mov         dword ptr [ebp-4],eax
 005B0CF8    mov         byte ptr [ebp-5],1
 005B0CFC    mov         al,byte ptr [ebp-5]
 005B0CFF    mov         esp,ebp
 005B0D01    pop         ebp
 005B0D02    ret
end;*}

//005B0D04
procedure TCustomListAction.Loaded;
begin
{*
 005B0D04    push        ebp
 005B0D05    mov         ebp,esp
 005B0D07    push        ecx
 005B0D08    mov         dword ptr [ebp-4],eax
 005B0D0B    mov         eax,dword ptr [ebp-4]
 005B0D0E    call        TComponent.Loaded
 005B0D13    mov         eax,dword ptr [ebp-4]
 005B0D16    cmp         byte ptr [eax+0A1],0;TCustomListAction.FActivated:Boolean
>005B0D1D    je          005B0D30
 005B0D1F    mov         eax,dword ptr [ebp-4]
 005B0D22    mov         dl,byte ptr [eax+0A1];TCustomListAction.FActivated:Boolean
 005B0D28    mov         eax,dword ptr [ebp-4]
 005B0D2B    call        TVirtualListAction.SetActive
 005B0D30    mov         eax,dword ptr [ebp-4]
 005B0D33    cmp         dword ptr [eax+0AC],0;TCustomListAction.FLoadedImages:TCustomImageList
>005B0D3A    je          005B0D4D
 005B0D3C    mov         eax,dword ptr [ebp-4]
 005B0D3F    mov         edx,dword ptr [eax+0AC];TCustomListAction.FLoadedImages:TCustomImageList
 005B0D45    mov         eax,dword ptr [ebp-4]
 005B0D48    call        TVirtualListAction.SetImages
 005B0D4D    pop         ecx
 005B0D4E    pop         ebp
 005B0D4F    ret
*}
end;

//005B0D50
procedure TVirtualListAction.SetActive(Value:Boolean);
begin
{*
 005B0D50    push        ebp
 005B0D51    mov         ebp,esp
 005B0D53    add         esp,0FFFFFFF0
 005B0D56    mov         byte ptr [ebp-5],dl
 005B0D59    mov         dword ptr [ebp-4],eax
 005B0D5C    cmp         byte ptr [ebp-5],0
>005B0D60    je          005B0D7C
 005B0D62    mov         eax,dword ptr [ebp-4]
 005B0D65    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>005B0D69    je          005B0D7C
 005B0D6B    mov         eax,dword ptr [ebp-4]
 005B0D6E    mov         dl,byte ptr [ebp-5]
 005B0D71    mov         byte ptr [eax+0A1],dl;TVirtualListAction.FActivated:Boolean
>005B0D77    jmp         005B0E51
 005B0D7C    mov         eax,dword ptr [ebp-4]
 005B0D7F    mov         al,byte ptr [eax+0A0];TVirtualListAction.FActive:Boolean
 005B0D85    cmp         al,byte ptr [ebp-5]
>005B0D88    je          005B0E51
 005B0D8E    mov         eax,dword ptr [ebp-4]
 005B0D91    mov         dl,byte ptr [ebp-5]
 005B0D94    mov         byte ptr [eax+0A0],dl;TVirtualListAction.FActive:Boolean
 005B0D9A    mov         eax,dword ptr [ebp-4]
 005B0D9D    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0DA0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B0DA3    dec         eax
 005B0DA4    test        eax,eax
>005B0DA6    jl          005B0E2C
 005B0DAC    inc         eax
 005B0DAD    mov         dword ptr [ebp-10],eax
 005B0DB0    mov         dword ptr [ebp-0C],0
 005B0DB7    mov         eax,dword ptr [ebp-4]
 005B0DBA    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0DBD    mov         edx,dword ptr [ebp-0C]
 005B0DC0    call        TList.Get
 005B0DC5    mov         edx,dword ptr ds:[5B0580];TListActionLink
 005B0DCB    call        @IsClass
 005B0DD0    test        al,al
>005B0DD2    je          005B0E24
 005B0DD4    mov         eax,dword ptr [ebp-4]
 005B0DD7    mov         byte ptr [eax+0B0],1;TVirtualListAction.FLoading:Boolean
 005B0DDE    xor         eax,eax
 005B0DE0    push        ebp
 005B0DE1    push        5B0E1D
 005B0DE6    push        dword ptr fs:[eax]
 005B0DE9    mov         dword ptr fs:[eax],esp
 005B0DEC    mov         eax,dword ptr [ebp-4]
 005B0DEF    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0DF2    mov         edx,dword ptr [ebp-0C]
 005B0DF5    call        TList.Get
 005B0DFA    mov         dl,byte ptr [ebp-5]
 005B0DFD    mov         ecx,dword ptr [eax]
 005B0DFF    call        dword ptr [ecx+80]
 005B0E05    xor         eax,eax
 005B0E07    pop         edx
 005B0E08    pop         ecx
 005B0E09    pop         ecx
 005B0E0A    mov         dword ptr fs:[eax],edx
 005B0E0D    push        5B0E24
 005B0E12    mov         eax,dword ptr [ebp-4]
 005B0E15    mov         byte ptr [eax+0B0],0;TVirtualListAction.FLoading:Boolean
 005B0E1C    ret
>005B0E1D    jmp         @HandleFinally
>005B0E22    jmp         005B0E12
 005B0E24    inc         dword ptr [ebp-0C]
 005B0E27    dec         dword ptr [ebp-10]
>005B0E2A    jne         005B0DB7
 005B0E2C    mov         eax,dword ptr [ebp-4]
 005B0E2F    mov         edx,dword ptr [eax]
 005B0E31    call        dword ptr [edx+30];TVirtualListAction.sub_00651284
 005B0E34    mov         eax,dword ptr [ebp-4]
 005B0E37    cmp         dword ptr [eax+0C8],0FFFFFFFF;TVirtualListAction.FItemIndex:Integer
>005B0E3E    je          005B0E51
 005B0E40    mov         eax,dword ptr [ebp-4]
 005B0E43    mov         edx,dword ptr [eax+0C8];TVirtualListAction.FItemIndex:Integer
 005B0E49    mov         eax,dword ptr [ebp-4]
 005B0E4C    call        TVirtualListAction.SetItemIndex
 005B0E51    mov         esp,ebp
 005B0E53    pop         ebp
 005B0E54    ret
*}
end;

//005B0E58
procedure TVirtualListAction.SetImages(Value:TCustomImageList);
begin
{*
 005B0E58    push        ebp
 005B0E59    mov         ebp,esp
 005B0E5B    add         esp,0FFFFFFF0
 005B0E5E    mov         dword ptr [ebp-8],edx
 005B0E61    mov         dword ptr [ebp-4],eax
 005B0E64    cmp         dword ptr [ebp-8],0
>005B0E68    je          005B0E81
 005B0E6A    mov         eax,dword ptr [ebp-4]
 005B0E6D    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>005B0E71    je          005B0E81
 005B0E73    mov         eax,dword ptr [ebp-8]
 005B0E76    mov         edx,dword ptr [ebp-4]
 005B0E79    mov         dword ptr [edx+0AC],eax;TVirtualListAction.FLoadedImages:TCustomImageList
>005B0E7F    jmp         005B0EF2
 005B0E81    mov         eax,dword ptr [ebp-4]
 005B0E84    mov         eax,dword ptr [eax+0A4];TVirtualListAction.FImages:TCustomImageList
 005B0E8A    cmp         eax,dword ptr [ebp-8]
>005B0E8D    je          005B0EF2
 005B0E8F    mov         eax,dword ptr [ebp-8]
 005B0E92    mov         edx,dword ptr [ebp-4]
 005B0E95    mov         dword ptr [edx+0A4],eax;TVirtualListAction.FImages:TCustomImageList
 005B0E9B    mov         eax,dword ptr [ebp-4]
 005B0E9E    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0EA1    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B0EA4    dec         eax
 005B0EA5    test        eax,eax
>005B0EA7    jl          005B0EF2
 005B0EA9    inc         eax
 005B0EAA    mov         dword ptr [ebp-10],eax
 005B0EAD    mov         dword ptr [ebp-0C],0
 005B0EB4    mov         edx,dword ptr [ebp-0C]
 005B0EB7    mov         eax,dword ptr [ebp-4]
 005B0EBA    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0EBD    call        TList.Get
 005B0EC2    mov         edx,dword ptr ds:[5B0580];TListActionLink
 005B0EC8    call        @IsClass
 005B0ECD    test        al,al
>005B0ECF    je          005B0EEA
 005B0ED1    mov         edx,dword ptr [ebp-0C]
 005B0ED4    mov         eax,dword ptr [ebp-4]
 005B0ED7    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0EDA    call        TList.Get
 005B0EDF    mov         edx,dword ptr [ebp-8]
 005B0EE2    mov         ecx,dword ptr [eax]
 005B0EE4    call        dword ptr [ecx+88]
 005B0EEA    inc         dword ptr [ebp-0C]
 005B0EED    dec         dword ptr [ebp-10]
>005B0EF0    jne         005B0EB4
 005B0EF2    mov         esp,ebp
 005B0EF4    pop         ebp
 005B0EF5    ret
*}
end;

//005B0EF8
procedure TVirtualListAction.SetItemIndex(Value:Integer);
begin
{*
 005B0EF8    push        ebp
 005B0EF9    mov         ebp,esp
 005B0EFB    add         esp,0FFFFFFF0
 005B0EFE    mov         dword ptr [ebp-8],edx
 005B0F01    mov         dword ptr [ebp-4],eax
 005B0F04    mov         eax,dword ptr [ebp-4]
 005B0F07    cmp         byte ptr [eax+0A0],0;TVirtualListAction.FActive:Boolean
>005B0F0E    je          005B0F73
 005B0F10    mov         eax,dword ptr [ebp-4]
 005B0F13    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0F16    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B0F19    dec         eax
 005B0F1A    test        eax,eax
>005B0F1C    jl          005B0F67
 005B0F1E    inc         eax
 005B0F1F    mov         dword ptr [ebp-10],eax
 005B0F22    mov         dword ptr [ebp-0C],0
 005B0F29    mov         edx,dword ptr [ebp-0C]
 005B0F2C    mov         eax,dword ptr [ebp-4]
 005B0F2F    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0F32    call        TList.Get
 005B0F37    mov         edx,dword ptr ds:[5B0580];TListActionLink
 005B0F3D    call        @IsClass
 005B0F42    test        al,al
>005B0F44    je          005B0F5F
 005B0F46    mov         edx,dword ptr [ebp-0C]
 005B0F49    mov         eax,dword ptr [ebp-4]
 005B0F4C    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 005B0F4F    call        TList.Get
 005B0F54    mov         edx,dword ptr [ebp-8]
 005B0F57    mov         ecx,dword ptr [eax]
 005B0F59    call        dword ptr [ecx+8C]
 005B0F5F    inc         dword ptr [ebp-0C]
 005B0F62    dec         dword ptr [ebp-10]
>005B0F65    jne         005B0F29
 005B0F67    mov         eax,dword ptr [ebp-8]
 005B0F6A    mov         edx,dword ptr [ebp-4]
 005B0F6D    mov         dword ptr [edx+0C8],eax;TVirtualListAction.FItemIndex:Integer
 005B0F73    mov         esp,ebp
 005B0F75    pop         ebp
 005B0F76    ret
*}
end;

//005B0F78
{*procedure sub_005B0F78(?:?; ?:?);
begin
 005B0F78    push        ebp
 005B0F79    mov         ebp,esp
 005B0F7B    add         esp,0FFFFFFF4
 005B0F7E    mov         dword ptr [ebp-0C],ecx
 005B0F81    mov         dword ptr [ebp-8],edx
 005B0F84    mov         dword ptr [ebp-4],eax
 005B0F87    mov         esp,ebp
 005B0F89    pop         ebp
 005B0F8A    ret
end;*}

//005B0F8C
{*function sub_005B0F8C(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;
begin
 005B0F8C    push        ebp
 005B0F8D    mov         ebp,esp
 005B0F8F    add         esp,0FFFFFFF0
 005B0F92    push        ebx
 005B0F93    mov         dword ptr [ebp-0C],ecx
 005B0F96    mov         dword ptr [ebp-8],edx
 005B0F99    mov         dword ptr [ebp-4],eax
 005B0F9C    mov         byte ptr [ebp-0D],0
 005B0FA0    mov         eax,dword ptr [ebp-4]
 005B0FA3    mov         edx,dword ptr [eax]
 005B0FA5    call        dword ptr [edx+54]
 005B0FA8    test        eax,eax
>005B0FAA    jle         005B0FE2
 005B0FAC    mov         eax,dword ptr [ebp-4]
 005B0FAF    cmp         word ptr [eax+0D2],0
 005B0FB7    setne       byte ptr [ebp-0D]
 005B0FBB    cmp         byte ptr [ebp-0D],0
>005B0FBF    je          005B0FE2
 005B0FC1    mov         eax,dword ptr [ebp-0C]
 005B0FC4    push        eax
 005B0FC5    mov         eax,dword ptr [ebp+0C]
 005B0FC8    push        eax
 005B0FC9    mov         eax,dword ptr [ebp+8]
 005B0FCC    push        eax
 005B0FCD    mov         ebx,dword ptr [ebp-4]
 005B0FD0    mov         ecx,dword ptr [ebp-8]
 005B0FD3    mov         edx,dword ptr [ebp-4]
 005B0FD6    mov         eax,dword ptr [ebx+0D4]
 005B0FDC    call        dword ptr [ebx+0D0]
 005B0FE2    mov         al,byte ptr [ebp-0D]
 005B0FE5    pop         ebx
 005B0FE6    mov         esp,ebp
 005B0FE8    pop         ebp
 005B0FE9    ret         8
end;*}

//005B0FEC
{*procedure sub_005B0FEC(?:?; ?:?);
begin
 005B0FEC    push        ebp
 005B0FED    mov         ebp,esp
 005B0FEF    add         esp,0FFFFFFD8
 005B0FF2    mov         byte ptr [ebp-9],cl
 005B0FF5    mov         dword ptr [ebp-8],edx
 005B0FF8    mov         dword ptr [ebp-4],eax
 005B0FFB    mov         al,byte ptr [ebp-9]
 005B0FFE    sub         al,1
>005B1000    jb          005B100F
 005B1002    dec         al
>005B1004    je          005B112F
>005B100A    jmp         005B11ED
 005B100F    mov         eax,dword ptr [ebp-4]
 005B1012    cmp         dword ptr [eax+28],0;TStaticListItems................FStaticListAction:TStaticListAction
>005B1016    je          005B11ED
 005B101C    mov         eax,dword ptr [ebp-4]
 005B101F    mov         eax,dword ptr [eax+28];TStaticListItems.................FStaticListAction:TStaticListAct...
 005B1022    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>005B1029    je          005B11ED
 005B102F    mov         eax,dword ptr [ebp-4]
 005B1032    mov         eax,dword ptr [eax+28];TStaticListItems..................FStaticListAction:TStaticListAc...
 005B1035    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1038    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B103B    dec         eax
 005B103C    test        eax,eax
>005B103E    jl          005B11ED
 005B1044    inc         eax
 005B1045    mov         dword ptr [ebp-14],eax
 005B1048    mov         dword ptr [ebp-10],0
 005B104F    mov         eax,dword ptr [ebp-4]
 005B1052    mov         eax,dword ptr [eax+28];TStaticListItems...................FStaticListAction:TStaticListA...
 005B1055    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1058    mov         edx,dword ptr [ebp-10]
 005B105B    call        TList.Get
 005B1060    mov         dword ptr [ebp-18],eax
 005B1063    mov         eax,dword ptr [ebp-18]
 005B1066    mov         eax,dword ptr [eax+20]
 005B1069    mov         edx,dword ptr ds:[6112B0];TCustomComboBoxEx
 005B106F    call        @IsClass
 005B1074    test        al,al
>005B1076    je          005B10C9
 005B1078    mov         eax,dword ptr [ebp-18]
 005B107B    mov         eax,dword ptr [eax+20]
 005B107E    mov         edx,dword ptr ds:[6112B0];TCustomComboBoxEx
 005B1084    call        @AsClass
 005B1089    mov         dword ptr [ebp-1C],eax
 005B108C    mov         eax,dword ptr [ebp-1C]
 005B108F    mov         eax,dword ptr [eax+284];TCustomComboBoxEx.FItemsEx:TComboExItems
 005B1095    call        00636C70
 005B109A    mov         dword ptr [ebp-20],eax
 005B109D    mov         eax,dword ptr [ebp-8]
 005B10A0    mov         edx,dword ptr [eax+10]
 005B10A3    mov         eax,dword ptr [ebp-20]
 005B10A6    mov         ecx,dword ptr [eax]
 005B10A8    call        dword ptr [ecx+20]
 005B10AB    mov         eax,dword ptr [ebp-8]
 005B10AE    mov         edx,dword ptr [eax+18]
 005B10B1    mov         eax,dword ptr [ebp-20]
 005B10B4    mov         ecx,dword ptr [eax]
 005B10B6    call        dword ptr [ecx+28]
 005B10B9    mov         eax,dword ptr [ebp-8]
 005B10BC    mov         edx,dword ptr [eax+14]
 005B10BF    mov         eax,dword ptr [ebp-20]
 005B10C2    mov         ecx,dword ptr [eax]
 005B10C4    call        dword ptr [ecx+24]
>005B10C7    jmp         005B111E
 005B10C9    mov         eax,dword ptr [ebp-18]
 005B10CC    mov         eax,dword ptr [eax+20]
 005B10CF    mov         edx,dword ptr ds:[60B3E0];TCustomListView
 005B10D5    call        @IsClass
 005B10DA    test        al,al
>005B10DC    je          005B111E
 005B10DE    mov         eax,dword ptr [ebp-18]
 005B10E1    mov         eax,dword ptr [eax+20]
 005B10E4    mov         eax,dword ptr [eax+22C]
 005B10EA    call        00624364
 005B10EF    mov         dword ptr [ebp-24],eax
 005B10F2    mov         eax,dword ptr [ebp-8]
 005B10F5    mov         edx,dword ptr [eax+10]
 005B10F8    mov         eax,dword ptr [ebp-24]
 005B10FB    call        00623C3C
 005B1100    mov         eax,dword ptr [ebp-8]
 005B1103    mov         ecx,dword ptr [eax+18]
 005B1106    xor         edx,edx
 005B1108    mov         eax,dword ptr [ebp-24]
 005B110B    call        00623E78
 005B1110    mov         eax,dword ptr [ebp-8]
 005B1113    mov         edx,dword ptr [eax+14]
 005B1116    mov         eax,dword ptr [ebp-24]
 005B1119    call        00623D08
 005B111E    inc         dword ptr [ebp-10]
 005B1121    dec         dword ptr [ebp-14]
>005B1124    jne         005B104F
>005B112A    jmp         005B11ED
 005B112F    mov         eax,dword ptr [ebp-4]
 005B1132    cmp         dword ptr [eax+28],0;TStaticListItems....................FStaticListAction:TStaticListAc...
>005B1136    je          005B11ED
 005B113C    mov         eax,dword ptr [ebp-4]
 005B113F    mov         eax,dword ptr [eax+28];TStaticListItems.....................FStaticListAction:TStaticLis...
 005B1142    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>005B1149    je          005B11ED
 005B114F    mov         eax,dword ptr [ebp-4]
 005B1152    mov         eax,dword ptr [eax+28];TStaticListItems......................FStaticListAction:TStaticLi...
 005B1155    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1158    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B115B    dec         eax
 005B115C    test        eax,eax
>005B115E    jl          005B11ED
 005B1164    inc         eax
 005B1165    mov         dword ptr [ebp-14],eax
 005B1168    mov         dword ptr [ebp-10],0
 005B116F    mov         eax,dword ptr [ebp-4]
 005B1172    mov         eax,dword ptr [eax+28];TStaticListItems.......................FStaticListAction:TStaticL...
 005B1175    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1178    mov         edx,dword ptr [ebp-10]
 005B117B    call        TList.Get
 005B1180    mov         dword ptr [ebp-28],eax
 005B1183    mov         eax,dword ptr [ebp-28]
 005B1186    mov         eax,dword ptr [eax+20]
 005B1189    mov         edx,dword ptr ds:[6112B0];TCustomComboBoxEx
 005B118F    call        @IsClass
 005B1194    test        al,al
>005B1196    je          005B11B5
 005B1198    mov         eax,dword ptr [ebp-8]
 005B119B    call        006462A8
 005B11A0    mov         edx,eax
 005B11A2    mov         eax,dword ptr [ebp-28]
 005B11A5    mov         eax,dword ptr [eax+20]
 005B11A8    mov         eax,dword ptr [eax+23C]
 005B11AE    mov         ecx,dword ptr [eax]
 005B11B0    call        dword ptr [ecx+48]
>005B11B3    jmp         005B11E5
 005B11B5    mov         eax,dword ptr [ebp-28]
 005B11B8    mov         eax,dword ptr [eax+20]
 005B11BB    mov         edx,dword ptr ds:[60B3E0];TCustomListView
 005B11C1    call        @IsClass
 005B11C6    test        al,al
>005B11C8    je          005B11E5
 005B11CA    mov         eax,dword ptr [ebp-8]
 005B11CD    call        006462A8
 005B11D2    mov         edx,eax
 005B11D4    mov         eax,dword ptr [ebp-28]
 005B11D7    mov         eax,dword ptr [eax+20]
 005B11DA    mov         eax,dword ptr [eax+22C]
 005B11E0    call        00624E68
 005B11E5    inc         dword ptr [ebp-10]
 005B11E8    dec         dword ptr [ebp-14]
>005B11EB    jne         005B116F
 005B11ED    mov         esp,ebp
 005B11EF    pop         ebp
 005B11F0    ret
end;*}

//005B11F4
{*procedure sub_005B11F4(?:?);
begin
 005B11F4    push        ebp
 005B11F5    mov         ebp,esp
 005B11F7    add         esp,0FFFFFFE0
 005B11FA    mov         dword ptr [ebp-8],edx
 005B11FD    mov         dword ptr [ebp-4],eax
 005B1200    mov         edx,dword ptr [ebp-8]
 005B1203    mov         eax,dword ptr [ebp-4]
 005B1206    call        00646B1C
 005B120B    mov         eax,dword ptr [ebp-4]
 005B120E    cmp         dword ptr [eax+28],0;TStaticListItems........................FStaticListAction:TStaticLi...
>005B1212    je          005B1357
 005B1218    cmp         dword ptr [ebp-8],0
>005B121C    je          005B1357
 005B1222    mov         eax,dword ptr [ebp-4]
 005B1225    mov         eax,dword ptr [eax+28];TStaticListItems.........................FStaticListAction:TStati...
 005B1228    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>005B122F    je          005B1357
 005B1235    mov         eax,dword ptr [ebp-4]
 005B1238    mov         eax,dword ptr [eax+28];TStaticListItems..........................FStaticListAction:TStat...
 005B123B    cmp         byte ptr [eax+0B0],0;TStaticListAction.FLoading:Boolean
>005B1242    jne         005B1357
 005B1248    mov         eax,dword ptr [ebp-4]
 005B124B    mov         eax,dword ptr [eax+28];TStaticListItems...........................FStaticListAction:TSta...
 005B124E    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1251    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005B1254    dec         eax
 005B1255    test        eax,eax
>005B1257    jl          005B1357
 005B125D    inc         eax
 005B125E    mov         dword ptr [ebp-10],eax
 005B1261    mov         dword ptr [ebp-0C],0
 005B1268    mov         eax,dword ptr [ebp-4]
 005B126B    mov         eax,dword ptr [eax+28];TStaticListItems............................FStaticListAction:TSt...
 005B126E    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 005B1271    mov         edx,dword ptr [ebp-0C]
 005B1274    call        TList.Get
 005B1279    mov         dword ptr [ebp-14],eax
 005B127C    mov         eax,dword ptr [ebp-14]
 005B127F    mov         eax,dword ptr [eax+20]
 005B1282    mov         edx,dword ptr ds:[6112B0];TCustomComboBoxEx
 005B1288    call        @IsClass
 005B128D    test        al,al
>005B128F    je          005B12EC
 005B1291    mov         eax,dword ptr [ebp-14]
 005B1294    mov         eax,dword ptr [eax+20]
 005B1297    mov         edx,dword ptr ds:[6112B0];TCustomComboBoxEx
 005B129D    call        @AsClass
 005B12A2    mov         dword ptr [ebp-18],eax
 005B12A5    mov         eax,dword ptr [ebp-8]
 005B12A8    call        006462A8
 005B12AD    mov         edx,eax
 005B12AF    mov         eax,dword ptr [ebp-18]
 005B12B2    mov         eax,dword ptr [eax+284];TCustomComboBoxEx.FItemsEx:TComboExItems
 005B12B8    call        005B0A74
 005B12BD    mov         dword ptr [ebp-1C],eax
 005B12C0    mov         eax,dword ptr [ebp-8]
 005B12C3    mov         edx,dword ptr [eax+10]
 005B12C6    mov         eax,dword ptr [ebp-1C]
 005B12C9    mov         ecx,dword ptr [eax]
 005B12CB    call        dword ptr [ecx+20]
 005B12CE    mov         eax,dword ptr [ebp-8]
 005B12D1    mov         edx,dword ptr [eax+18]
 005B12D4    mov         eax,dword ptr [ebp-1C]
 005B12D7    mov         ecx,dword ptr [eax]
 005B12D9    call        dword ptr [ecx+28]
 005B12DC    mov         eax,dword ptr [ebp-8]
 005B12DF    mov         edx,dword ptr [eax+14]
 005B12E2    mov         eax,dword ptr [ebp-1C]
 005B12E5    mov         ecx,dword ptr [eax]
 005B12E7    call        dword ptr [ecx+24]
>005B12EA    jmp         005B134B
 005B12EC    mov         eax,dword ptr [ebp-14]
 005B12EF    mov         eax,dword ptr [eax+20]
 005B12F2    mov         edx,dword ptr ds:[60B3E0];TCustomListView
 005B12F8    call        @IsClass
 005B12FD    test        al,al
>005B12FF    je          005B134B
 005B1301    mov         eax,dword ptr [ebp-8]
 005B1304    call        006462A8
 005B1309    mov         edx,eax
 005B130B    mov         eax,dword ptr [ebp-14]
 005B130E    mov         eax,dword ptr [eax+20]
 005B1311    mov         eax,dword ptr [eax+22C]
 005B1317    call        00624448
 005B131C    mov         dword ptr [ebp-20],eax
 005B131F    mov         eax,dword ptr [ebp-8]
 005B1322    mov         edx,dword ptr [eax+10]
 005B1325    mov         eax,dword ptr [ebp-20]
 005B1328    call        00623C3C
 005B132D    mov         eax,dword ptr [ebp-8]
 005B1330    mov         ecx,dword ptr [eax+18]
 005B1333    xor         edx,edx
 005B1335    mov         eax,dword ptr [ebp-20]
 005B1338    call        00623E78
 005B133D    mov         eax,dword ptr [ebp-8]
 005B1340    mov         edx,dword ptr [eax+14]
 005B1343    mov         eax,dword ptr [ebp-20]
 005B1346    call        00623D08
 005B134B    inc         dword ptr [ebp-0C]
 005B134E    dec         dword ptr [ebp-10]
>005B1351    jne         005B1268
 005B1357    mov         esp,ebp
 005B1359    pop         ebp
 005B135A    ret
end;*}

//005B135C
constructor TStaticListAction.Create(AOwner:TComponent);
begin
{*
 005B135C    push        ebp
 005B135D    mov         ebp,esp
 005B135F    add         esp,0FFFFFFF4
 005B1362    test        dl,dl
>005B1364    je          005B136E
 005B1366    add         esp,0FFFFFFF0
 005B1369    call        @ClassCreate
 005B136E    mov         dword ptr [ebp-0C],ecx
 005B1371    mov         byte ptr [ebp-5],dl
 005B1374    mov         dword ptr [ebp-4],eax
 005B1377    mov         ecx,dword ptr [ebp-0C]
 005B137A    xor         edx,edx
 005B137C    mov         eax,dword ptr [ebp-4]
 005B137F    call        TCustomListAction.Create
 005B1384    mov         eax,dword ptr [ebp-4]
 005B1387    mov         edx,dword ptr [eax]
 005B1389    call        dword ptr [edx+60];TStaticListAction.sub_005B14BC
 005B138C    push        eax
 005B138D    mov         ecx,dword ptr [ebp-4]
 005B1390    mov         dl,1
 005B1392    mov         eax,[005B01F0];TStaticListItems
 005B1397    call        TWorkAreas.Create;TStaticListItems.Create
 005B139C    mov         edx,dword ptr [ebp-4]
 005B139F    mov         dword ptr [edx+0D0],eax;TStaticListAction.Items:TStaticListItems
 005B13A5    mov         eax,dword ptr [ebp-4]
 005B13A8    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B13AE    mov         edx,dword ptr [ebp-4]
 005B13B1    mov         dword ptr [eax+28],edx;TStaticListItems.............................FStaticListAction:TS...
 005B13B4    mov         eax,dword ptr [ebp-4]
 005B13B7    cmp         byte ptr [ebp-5],0
>005B13BB    je          005B13CC
 005B13BD    call        @AfterConstruction
 005B13C2    pop         dword ptr fs:[0]
 005B13C9    add         esp,0C
 005B13CC    mov         eax,dword ptr [ebp-4]
 005B13CF    mov         esp,ebp
 005B13D1    pop         ebp
 005B13D2    ret
*}
end;

//005B13D4
destructor TStaticListAction.Destroy;
begin
{*
 005B13D4    push        ebp
 005B13D5    mov         ebp,esp
 005B13D7    add         esp,0FFFFFFF8
 005B13DA    call        @BeforeDestruction
 005B13DF    mov         byte ptr [ebp-5],dl
 005B13E2    mov         dword ptr [ebp-4],eax
 005B13E5    mov         eax,dword ptr [ebp-4]
 005B13E8    add         eax,0D0;TStaticListAction.Items:TStaticListItems
 005B13ED    call        FreeAndNil
 005B13F2    mov         dl,byte ptr [ebp-5]
 005B13F5    and         dl,0FC
 005B13F8    mov         eax,dword ptr [ebp-4]
 005B13FB    call        TCustomAction.Destroy
 005B1400    cmp         byte ptr [ebp-5],0
>005B1404    jle         005B140E
 005B1406    mov         eax,dword ptr [ebp-4]
 005B1409    call        @ClassDestroy
 005B140E    pop         ecx
 005B140F    pop         ecx
 005B1410    pop         ebp
 005B1411    ret
*}
end;

//005B1414
{*function sub_005B1414:?;
begin
 005B1414    push        ebp
 005B1415    mov         ebp,esp
 005B1417    add         esp,0FFFFFFF8
 005B141A    mov         dword ptr [ebp-4],eax
 005B141D    mov         eax,dword ptr [ebp-4]
 005B1420    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B1426    call        00646794
 005B142B    mov         dword ptr [ebp-8],eax
 005B142E    mov         eax,dword ptr [ebp-8]
 005B1431    pop         ecx
 005B1432    pop         ecx
 005B1433    pop         ebp
 005B1434    ret
end;*}

//005B1438
{*function sub_005B1438(?:TStaticListAction; ?:?; ?:?):?;
begin
 005B1438    push        ebp
 005B1439    mov         ebp,esp
 005B143B    add         esp,0FFFFFFF0
 005B143E    push        ebx
 005B143F    mov         dword ptr [ebp-0C],ecx
 005B1442    mov         dword ptr [ebp-8],edx
 005B1445    mov         dword ptr [ebp-4],eax
 005B1448    cmp         dword ptr [ebp-8],0
>005B144C    jl          005B1461
 005B144E    mov         eax,dword ptr [ebp-4]
 005B1451    mov         eax,dword ptr [eax+0D0]
 005B1457    call        00646794
 005B145C    cmp         eax,dword ptr [ebp-8]
>005B145F    jg          005B1465
 005B1461    xor         eax,eax
>005B1463    jmp         005B1467
 005B1465    mov         al,1
 005B1467    mov         byte ptr [ebp-0D],al
 005B146A    cmp         byte ptr [ebp-0D],0
>005B146E    je          005B14B1
 005B1470    mov         edx,dword ptr [ebp-8]
 005B1473    mov         eax,dword ptr [ebp-4]
 005B1476    mov         eax,dword ptr [eax+0D0]
 005B147C    call        005B0A74
 005B1481    mov         edx,eax
 005B1483    mov         eax,dword ptr [ebp-0C]
 005B1486    mov         ecx,dword ptr [eax]
 005B1488    call        dword ptr [ecx+8]
 005B148B    mov         eax,dword ptr [ebp-4]
 005B148E    cmp         word ptr [eax+0DA],0
>005B1496    je          005B14B1
 005B1498    lea         eax,[ebp-0C]
 005B149B    push        eax
 005B149C    mov         ebx,dword ptr [ebp-4]
 005B149F    mov         ecx,dword ptr [ebp-8]
 005B14A2    mov         edx,dword ptr [ebp-4]
 005B14A5    mov         eax,dword ptr [ebx+0DC]
 005B14AB    call        dword ptr [ebx+0D8]
 005B14B1    mov         al,byte ptr [ebp-0D]
 005B14B4    pop         ebx
 005B14B5    mov         esp,ebp
 005B14B7    pop         ebp
 005B14B8    ret
end;*}

//005B14BC
{*function sub_005B14BC:?;
begin
 005B14BC    push        ebp
 005B14BD    mov         ebp,esp
 005B14BF    add         esp,0FFFFFFF8
 005B14C2    mov         dword ptr [ebp-4],eax
 005B14C5    mov         eax,[005AFA38];TListControlItem
 005B14CA    mov         dword ptr [ebp-8],eax
 005B14CD    mov         eax,dword ptr [ebp-8]
 005B14D0    pop         ecx
 005B14D1    pop         ecx
 005B14D2    pop         ebp
 005B14D3    ret
end;*}

//005B14D4
{*procedure sub_005B14D4(?:?; ?:?);
begin
 005B14D4    push        ebp
 005B14D5    mov         ebp,esp
 005B14D7    add         esp,0FFFFFFF4
 005B14DA    mov         dword ptr [ebp-0C],ecx
 005B14DD    mov         dword ptr [ebp-8],edx
 005B14E0    mov         dword ptr [ebp-4],eax
 005B14E3    mov         edx,dword ptr [ebp-8]
 005B14E6    mov         eax,dword ptr [ebp-4]
 005B14E9    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B14EF    call        005B0A74
 005B14F4    mov         edx,dword ptr [eax+10]
 005B14F7    mov         eax,dword ptr [ebp-0C]
 005B14FA    call        @LStrAsg
 005B14FF    mov         esp,ebp
 005B1501    pop         ebp
 005B1502    ret
end;*}

//005B1504
procedure TStaticListAction.SetItems(Value:TStaticListItems);
begin
{*
 005B1504    push        ebp
 005B1505    mov         ebp,esp
 005B1507    add         esp,0FFFFFFF8
 005B150A    mov         dword ptr [ebp-8],edx
 005B150D    mov         dword ptr [ebp-4],eax
 005B1510    mov         edx,dword ptr [ebp-8]
 005B1513    mov         eax,dword ptr [ebp-4]
 005B1516    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B151C    mov         ecx,dword ptr [eax]
 005B151E    call        dword ptr [ecx+8];TCollection.Assign
 005B1521    pop         ecx
 005B1522    pop         ecx
 005B1523    pop         ebp
 005B1524    ret
*}
end;

//005B1528
{*procedure sub_005B1528(?:?; ?:?);
begin
 005B1528    push        ebp
 005B1529    mov         ebp,esp
 005B152B    add         esp,0FFFFFFF4
 005B152E    mov         dword ptr [ebp-0C],ecx
 005B1531    mov         dword ptr [ebp-8],edx
 005B1534    mov         dword ptr [ebp-4],eax
 005B1537    mov         edx,dword ptr [ebp-8]
 005B153A    mov         eax,dword ptr [ebp-4]
 005B153D    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B1543    call        005B0A74
 005B1548    mov         edx,dword ptr [ebp-0C]
 005B154B    mov         ecx,dword ptr [eax]
 005B154D    call        dword ptr [ecx+20]
 005B1550    mov         esp,ebp
 005B1552    pop         ebp
 005B1553    ret
end;*}

//005B1554
{*function sub_005B1554:?;
begin
 005B1554    push        ebp
 005B1555    mov         ebp,esp
 005B1557    add         esp,0FFFFFFF8
 005B155A    mov         dword ptr [ebp-4],eax
 005B155D    mov         eax,dword ptr [ebp-4]
 005B1560    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B1563    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B1569    call        @IsClass
 005B156E    mov         byte ptr [ebp-5],al
 005B1571    mov         al,byte ptr [ebp-5]
 005B1574    pop         ecx
 005B1575    pop         ecx
 005B1576    pop         ebp
 005B1577    ret
end;*}

//005B1578
{*function sub_005B1578:?;
begin
 005B1578    push        ebp
 005B1579    mov         ebp,esp
 005B157B    add         esp,0FFFFFFF8
 005B157E    mov         dword ptr [ebp-4],eax
 005B1581    mov         eax,dword ptr [ebp-4]
 005B1584    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B1587    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B158D    call        @IsClass
 005B1592    test        al,al
>005B1594    je          005B15A5
 005B1596    mov         eax,dword ptr [ebp-4]
 005B1599    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B159C    cmp         dword ptr [eax+0A4],0
>005B15A3    jne         005B15A9
 005B15A5    xor         eax,eax
>005B15A7    jmp         005B15AB
 005B15A9    mov         al,1
 005B15AB    mov         byte ptr [ebp-5],al
 005B15AE    mov         al,byte ptr [ebp-5]
 005B15B1    pop         ecx
 005B15B2    pop         ecx
 005B15B3    pop         ebp
 005B15B4    ret
end;*}

//005B15B8
{*procedure sub_005B15B8(?:?);
begin
 005B15B8    push        ebp
 005B15B9    mov         ebp,esp
 005B15BB    add         esp,0FFFFFFF8
 005B15BE    mov         dword ptr [ebp-8],edx
 005B15C1    mov         dword ptr [ebp-4],eax
 005B15C4    mov         edx,dword ptr [ebp-8]
 005B15C7    mov         eax,dword ptr [ebp-4]
 005B15CA    call        00650FD0
 005B15CF    mov         eax,dword ptr [ebp-4]
 005B15D2    mov         eax,dword ptr [eax+20];TListActionLink................FClient:TWinControl
 005B15D5    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B15DB    call        @IsClass
 005B15E0    test        al,al
>005B15E2    je          005B1610
 005B15E4    mov         eax,dword ptr [ebp-4]
 005B15E7    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B15EA    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B15F0    call        @IsClass
 005B15F5    test        al,al
>005B15F7    je          005B1610
 005B15F9    mov         eax,dword ptr [ebp-4]
 005B15FC    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B15FF    cmp         byte ptr [eax+0A0],0
>005B1606    je          005B1610
 005B1608    mov         eax,dword ptr [ebp-4]
 005B160B    call        005B16A8
 005B1610    pop         ecx
 005B1611    pop         ecx
 005B1612    pop         ebp
 005B1613    ret
end;*}

//005B1614
{*procedure sub_005B1614(?:?);
begin
 005B1614    push        ebp
 005B1615    mov         ebp,esp
 005B1617    add         esp,0FFFFFFF8
 005B161A    mov         byte ptr [ebp-5],dl
 005B161D    mov         dword ptr [ebp-4],eax
 005B1620    cmp         byte ptr [ebp-5],0
>005B1624    jne         005B164B
 005B1626    mov         eax,dword ptr [ebp-4]
 005B1629    mov         eax,dword ptr [eax+20];TListActionLink.................FClient:TWinControl
 005B162C    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B1632    call        @IsClass
 005B1637    test        al,al
>005B1639    je          005B1692
 005B163B    mov         eax,dword ptr [ebp-4]
 005B163E    mov         eax,dword ptr [eax+20];TListActionLink..................FClient:TWinControl
 005B1641    mov         edx,dword ptr [eax]
 005B1643    call        dword ptr [edx+0D4]
>005B1649    jmp         005B1692
 005B164B    cmp         byte ptr [ebp-5],0
>005B164F    je          005B1675
 005B1651    mov         eax,dword ptr [ebp-4]
 005B1654    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B1657    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B165D    call        @IsClass
 005B1662    test        al,al
>005B1664    je          005B1675
 005B1666    mov         eax,dword ptr [ebp-4]
 005B1669    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B166C    cmp         byte ptr [eax+0A0],0
>005B1673    je          005B1692
 005B1675    mov         eax,dword ptr [ebp-4]
 005B1678    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B167B    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B1681    call        @IsClass
 005B1686    test        al,al
>005B1688    je          005B1692
 005B168A    mov         eax,dword ptr [ebp-4]
 005B168D    call        005B16A8
 005B1692    pop         ecx
 005B1693    pop         ecx
 005B1694    pop         ebp
 005B1695    ret
end;*}

//005B1698
{*procedure sub_005B1698(?:?);
begin
 005B1698    push        ebp
 005B1699    mov         ebp,esp
 005B169B    add         esp,0FFFFFFF8
 005B169E    mov         dword ptr [ebp-8],edx
 005B16A1    mov         dword ptr [ebp-4],eax
 005B16A4    pop         ecx
 005B16A5    pop         ecx
 005B16A6    pop         ebp
 005B16A7    ret
end;*}

//005B16A8
procedure sub_005B16A8(?:TListActionLink);
begin
{*
 005B16A8    push        ebp
 005B16A9    mov         ebp,esp
 005B16AB    add         esp,0FFFFFFE0
 005B16AE    push        ebx
 005B16AF    xor         edx,edx
 005B16B1    mov         dword ptr [ebp-0C],edx
 005B16B4    mov         dword ptr [ebp-4],eax
 005B16B7    xor         eax,eax
 005B16B9    push        ebp
 005B16BA    push        5B1821
 005B16BF    push        dword ptr fs:[eax]
 005B16C2    mov         dword ptr fs:[eax],esp
 005B16C5    mov         eax,dword ptr [ebp-4]
 005B16C8    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B16CB    mov         edx,dword ptr ds:[5AFD48];TCustomListAction
 005B16D1    call        @IsClass
 005B16D6    test        al,al
>005B16D8    je          005B180B
 005B16DE    mov         eax,dword ptr [ebp-4]
 005B16E1    mov         eax,dword ptr [eax+20];TListActionLink...................FClient:TWinControl
 005B16E4    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B16EA    call        @IsClass
 005B16EF    test        al,al
>005B16F1    je          005B1701
 005B16F3    mov         eax,dword ptr [ebp-4]
 005B16F6    mov         eax,dword ptr [eax+20];TListActionLink....................FClient:TWinControl
 005B16F9    mov         edx,dword ptr [eax]
 005B16FB    call        dword ptr [edx+0D4]
 005B1701    mov         eax,dword ptr [ebp-4]
 005B1704    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B1707    mov         edx,dword ptr ds:[5B027C];TStaticListAction
 005B170D    call        @IsClass
 005B1712    test        al,al
>005B1714    je          005B1790
 005B1716    mov         eax,dword ptr [ebp-4]
 005B1719    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B171C    mov         edx,dword ptr ds:[5B027C];TStaticListAction
 005B1722    call        @AsClass
 005B1727    mov         dword ptr [ebp-18],eax
 005B172A    mov         eax,dword ptr [ebp-18]
 005B172D    mov         edx,dword ptr [eax]
 005B172F    call        dword ptr [edx+54];TStaticListAction.sub_005B1414
 005B1732    dec         eax
 005B1733    test        eax,eax
>005B1735    jl          005B180B
 005B173B    inc         eax
 005B173C    mov         dword ptr [ebp-1C],eax
 005B173F    mov         dword ptr [ebp-8],0
 005B1746    mov         eax,dword ptr [ebp-18]
 005B1749    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B174F    mov         edx,dword ptr [ebp-8]
 005B1752    call        005B0A74
 005B1757    mov         ecx,eax
 005B1759    mov         edx,dword ptr [ebp-8]
 005B175C    mov         eax,dword ptr [ebp-18]
 005B175F    call        005B1438
 005B1764    test        al,al
>005B1766    je          005B1786
 005B1768    mov         eax,dword ptr [ebp-18]
 005B176B    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 005B1771    mov         edx,dword ptr [ebp-8]
 005B1774    call        005B0A74
 005B1779    mov         edx,eax
 005B177B    mov         eax,dword ptr [ebp-4]
 005B177E    mov         ecx,dword ptr [eax]
 005B1780    call        dword ptr [ecx+90];TListActionLink.sub_005B1830
 005B1786    inc         dword ptr [ebp-8]
 005B1789    dec         dword ptr [ebp-1C]
>005B178C    jne         005B1746
>005B178E    jmp         005B180B
 005B1790    mov         eax,dword ptr [ebp-4]
 005B1793    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B1796    mov         edx,dword ptr ds:[5AFEB0];TVirtualListAction
 005B179C    call        @IsClass
 005B17A1    test        al,al
>005B17A3    je          005B180B
 005B17A5    mov         eax,dword ptr [ebp-4]
 005B17A8    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B17AB    mov         edx,dword ptr [eax]
 005B17AD    call        dword ptr [edx+54]
 005B17B0    dec         eax
 005B17B1    test        eax,eax
>005B17B3    jl          005B180B
 005B17B5    inc         eax
 005B17B6    mov         dword ptr [ebp-1C],eax
 005B17B9    mov         dword ptr [ebp-8],0
 005B17C0    mov         eax,dword ptr [ebp-4]
 005B17C3    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 005B17C6    mov         edx,dword ptr ds:[5AFEB0];TVirtualListAction
 005B17CC    call        @AsClass
 005B17D1    mov         dword ptr [ebp-20],eax
 005B17D4    lea         eax,[ebp-10]
 005B17D7    push        eax
 005B17D8    lea         eax,[ebp-14]
 005B17DB    push        eax
 005B17DC    lea         ecx,[ebp-0C]
 005B17DF    mov         edx,dword ptr [ebp-8]
 005B17E2    mov         eax,dword ptr [ebp-20]
 005B17E5    call        005B0F8C
 005B17EA    test        al,al
>005B17EC    je          005B1803
 005B17EE    mov         eax,dword ptr [ebp-14]
 005B17F1    push        eax
 005B17F2    mov         ecx,dword ptr [ebp-10]
 005B17F5    mov         edx,dword ptr [ebp-0C]
 005B17F8    mov         eax,dword ptr [ebp-4]
 005B17FB    mov         ebx,dword ptr [eax]
 005B17FD    call        dword ptr [ebx+94];TListActionLink.sub_005B1840
 005B1803    inc         dword ptr [ebp-8]
 005B1806    dec         dword ptr [ebp-1C]
>005B1809    jne         005B17C0
 005B180B    xor         eax,eax
 005B180D    pop         edx
 005B180E    pop         ecx
 005B180F    pop         ecx
 005B1810    mov         dword ptr fs:[eax],edx
 005B1813    push        5B1828
 005B1818    lea         eax,[ebp-0C]
 005B181B    call        @LStrClr
 005B1820    ret
>005B1821    jmp         @HandleFinally
>005B1826    jmp         005B1818
 005B1828    pop         ebx
 005B1829    mov         esp,ebp
 005B182B    pop         ebp
 005B182C    ret
*}
end;

//005B1830
{*procedure sub_005B1830(?:?);
begin
 005B1830    push        ebp
 005B1831    mov         ebp,esp
 005B1833    add         esp,0FFFFFFF8
 005B1836    mov         dword ptr [ebp-8],edx
 005B1839    mov         dword ptr [ebp-4],eax
 005B183C    pop         ecx
 005B183D    pop         ecx
 005B183E    pop         ebp
 005B183F    ret
end;*}

//005B1840
{*procedure sub_005B1840(?:?; ?:?);
begin
 005B1840    push        ebp
 005B1841    mov         ebp,esp
 005B1843    add         esp,0FFFFFFF4
 005B1846    mov         dword ptr [ebp-0C],ecx
 005B1849    mov         dword ptr [ebp-8],edx
 005B184C    mov         dword ptr [ebp-4],eax
 005B184F    mov         eax,dword ptr [ebp-8]
 005B1852    call        @LStrAddRef
 005B1857    xor         eax,eax
 005B1859    push        ebp
 005B185A    push        5B187B
 005B185F    push        dword ptr fs:[eax]
 005B1862    mov         dword ptr fs:[eax],esp
 005B1865    xor         eax,eax
 005B1867    pop         edx
 005B1868    pop         ecx
 005B1869    pop         ecx
 005B186A    mov         dword ptr fs:[eax],edx
 005B186D    push        5B1882
 005B1872    lea         eax,[ebp-8]
 005B1875    call        @LStrClr
 005B187A    ret
>005B187B    jmp         @HandleFinally
>005B1880    jmp         005B1872
 005B1882    mov         esp,ebp
 005B1884    pop         ebp
 005B1885    ret         4
end;*}

//005B1888
{*procedure sub_005B1888(?:?);
begin
 005B1888    push        ebp
 005B1889    mov         ebp,esp
 005B188B    add         esp,0FFFFFFF4
 005B188E    mov         dword ptr [ebp-8],edx
 005B1891    mov         dword ptr [ebp-4],eax
 005B1894    mov         eax,dword ptr [ebp-4]
 005B1897    mov         eax,dword ptr [eax+20];TListActionLink.....................FClient:TWinControl
 005B189A    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B18A0    call        @IsClass
 005B18A5    test        al,al
>005B18A7    je          005B18CB
 005B18A9    mov         eax,dword ptr [ebp-4]
 005B18AC    mov         eax,dword ptr [eax+20];TListActionLink......................FClient:TWinControl
 005B18AF    mov         edx,dword ptr ds:[5EF344];TCustomListControl
 005B18B5    call        @AsClass
 005B18BA    mov         dword ptr [ebp-0C],eax
 005B18BD    mov         edx,dword ptr [ebp-8]
 005B18C0    mov         eax,dword ptr [ebp-0C]
 005B18C3    mov         ecx,dword ptr [eax]
 005B18C5    call        dword ptr [ecx+0CC];@AbstractError
 005B18CB    mov         esp,ebp
 005B18CD    pop         ebp
 005B18CE    ret
end;*}

//005B18D0
procedure Finalization;
begin
{*
 005B18D0    push        ebp
 005B18D1    mov         ebp,esp
 005B18D3    xor         eax,eax
 005B18D5    push        ebp
 005B18D6    push        5B18F5
 005B18DB    push        dword ptr fs:[eax]
 005B18DE    mov         dword ptr fs:[eax],esp
 005B18E1    inc         dword ptr ds:[6ECD14]
 005B18E7    xor         eax,eax
 005B18E9    pop         edx
 005B18EA    pop         ecx
 005B18EB    pop         ecx
 005B18EC    mov         dword ptr fs:[eax],edx
 005B18EF    push        5B18FC
 005B18F4    ret
>005B18F5    jmp         @HandleFinally
>005B18FA    jmp         005B18F4
 005B18FC    pop         ebp
 005B18FD    ret
*}
end;

end.