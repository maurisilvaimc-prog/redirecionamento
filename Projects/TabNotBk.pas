//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TabNotBk;

interface

uses
  SysUtils, Classes, Graphics, TabNotBk;

type
  TPageChangeEvent = procedure(Sender:TObject; NewTab:Integer; var AllowChange:Boolean) of object;;
  TTabPage = class(TWinControl)
  public
    //procedure v14(?:?); virtual;//v14//00576968
    constructor Create(AOwner:TComponent); virtual;//v2C//005768E0
  end;
  TTabbedNotebook = class(TCustomTabControl)
  public
    FPageList:TList;//f268
    Pages:TStrings;//f26C
    PageIndex:Integer;//f270
    TabFont:TFont;//f274
    TabsPerRow:Integer;//f278
    OnClick:TNotifyEvent;//f280
    f282:word;//f282
    f284:dword;//f284
    OnChange:TPageChangeEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    destructor Destroy; virtual;//00576B5C
    procedure Loaded; virtual;//vC//00576D08
    //procedure v14(?:?); virtual;//v14//00576E98
    constructor Create(AOwner:TComponent); virtual;//v2C//005769B8
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//0057743C
    procedure v94; virtual;//v94//00576BB8
    //procedure v98(?:?); virtual;//v98//00576C78
    //procedure vBC(?:?); virtual;//vBC//00576F84
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//00577540
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//00577210
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0057722C
    //procedure sub_00577424(?:?); dynamic;//00577424
    procedure sub_005774E8; dynamic;//005774E8
    //procedure sub_00577318(?:?; ?:?); dynamic;//00577318
    procedure sub_005774BC; dynamic;//005774BC
    procedure sub_00576CA0; dynamic;//00576CA0
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?); dynamic;//00576CB8
    procedure SetPages(Value:TStrings);//00576F34
    procedure SetPageIndex(Value:Integer);//00576FE8
    procedure SetActivePage(Value:String);//00577190
    //procedure GetActivePage(?:?);//005771BC
    procedure SetTabsPerRow(Value:Integer);//005773CC
    procedure SetTabFont(Value:TFont);//00577400
  end;
  TTabPageAccess = class(TStrings)
  public
    PageList:TList;//f10
    Notebook:TTabbedNotebook;//f14
    //procedure vC(?:?; ?:?); virtual;//vC//005765B0
    //function v14:?; virtual;//v14//00576594
    //function v18(?:?):?; virtual;//v18//00576630
    //procedure v20(?:?; ?:?); virtual;//v20//005765DC
    //procedure v30(?:?); virtual;//v30//00576654
    procedure Clear; virtual;//v44//00576664
    //procedure v48(?:?); virtual;//v48//005766E8
    //procedure v60(?:?; ?:?); virtual;//v60//005767AC
    //procedure v70(?:?; ?:?); virtual;//v70//0057684C
    //constructor Create(?:?);//0057653C
  end;
    procedure TabNotBk;//00575D60
    //function sub_00576594:?;//00576594
    //procedure sub_005765B0(?:?; ?:?);//005765B0
    //procedure sub_005765DC(?:?; ?:?);//005765DC
    //function sub_00576630(?:?):?;//00576630
    //procedure sub_00576654(?:?);//00576654
    procedure Clear;//00576664
    //procedure sub_005766E8(?:?);//005766E8
    //procedure sub_005767AC(?:?; ?:?);//005767AC
    //procedure sub_0057684C(?:?; ?:?);//0057684C
    constructor Create(AOwner:TComponent);//005768E0
    //procedure sub_00576968(?:?);//00576968
    constructor Create(AOwner:TComponent);//005769B8
    destructor Destroy;//00576B5C
    procedure sub_00576BB8;//00576BB8
    //procedure sub_00576C78(?:?);//00576C78
    procedure sub_00576CA0;//00576CA0
    //procedure GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);//00576CB8
    procedure Loaded;//00576D08
    //procedure sub_00576E98(?:?);//00576E98
    //procedure sub_00576F84(?:?);//00576F84
    //procedure WMGetDlgCode(?:?);//00577210
    //procedure CMDialogChar(?:?);//0057722C
    //procedure sub_00577318(?:?; ?:?);//00577318
    //procedure sub_00577424(?:?);//00577424
    procedure AlignControls(AControl:TControl; var Rect:TRect);//0057743C
    procedure sub_005774BC;//005774BC
    procedure sub_005774E8;//005774E8
    procedure WMPaint(Message:TWMPaint);//00577540
    procedure Finalization;//0057757C

implementation

//00575D60
procedure TabNotBk;
begin
{*
 00575D60    sub         dword ptr ds:[6ECCA8],1
 00575D67    ret
*}
end;

//0057653C
{*constructor TTabPageAccess.Create(?:?);
begin
 0057653C    push        ebp
 0057653D    mov         ebp,esp
 0057653F    add         esp,0FFFFFFF4
 00576542    test        dl,dl
>00576544    je          0057654E
 00576546    add         esp,0FFFFFFF0
 00576549    call        @ClassCreate
 0057654E    mov         dword ptr [ebp-0C],ecx
 00576551    mov         byte ptr [ebp-5],dl
 00576554    mov         dword ptr [ebp-4],eax
 00576557    xor         edx,edx
 00576559    mov         eax,dword ptr [ebp-4]
 0057655C    call        TObject.Create
 00576561    mov         eax,dword ptr [ebp-4]
 00576564    mov         edx,dword ptr [ebp-0C]
 00576567    mov         dword ptr [eax+10],edx
 0057656A    mov         eax,dword ptr [ebp-4]
 0057656D    mov         edx,dword ptr [ebp+8]
 00576570    mov         dword ptr [eax+14],edx
 00576573    mov         eax,dword ptr [ebp-4]
 00576576    cmp         byte ptr [ebp-5],0
>0057657A    je          0057658B
 0057657C    call        @AfterConstruction
 00576581    pop         dword ptr fs:[0]
 00576588    add         esp,0C
 0057658B    mov         eax,dword ptr [ebp-4]
 0057658E    mov         esp,ebp
 00576590    pop         ebp
 00576591    ret         4
end;*}

//00576594
{*function sub_00576594:?;
begin
 00576594    push        ebp
 00576595    mov         ebp,esp
 00576597    add         esp,0FFFFFFF8
 0057659A    mov         dword ptr [ebp-4],eax
 0057659D    mov         eax,dword ptr [ebp-4]
 005765A0    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005765A3    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005765A6    mov         dword ptr [ebp-8],eax
 005765A9    mov         eax,dword ptr [ebp-8]
 005765AC    pop         ecx
 005765AD    pop         ecx
 005765AE    pop         ebp
 005765AF    ret
end;*}

//005765B0
{*procedure sub_005765B0(?:?; ?:?);
begin
 005765B0    push        ebp
 005765B1    mov         ebp,esp
 005765B3    add         esp,0FFFFFFF4
 005765B6    mov         dword ptr [ebp-0C],ecx
 005765B9    mov         dword ptr [ebp-8],edx
 005765BC    mov         dword ptr [ebp-4],eax
 005765BF    mov         edx,dword ptr [ebp-8]
 005765C2    mov         eax,dword ptr [ebp-4]
 005765C5    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005765C8    call        TList.Get
 005765CD    mov         edx,dword ptr [ebp-0C]
 005765D0    call        TTabPage.GetCaption
 005765D5    mov         esp,ebp
 005765D7    pop         ebp
 005765D8    ret
end;*}

//005765DC
{*procedure sub_005765DC(?:?; ?:?);
begin
 005765DC    push        ebp
 005765DD    mov         ebp,esp
 005765DF    add         esp,0FFFFFFF4
 005765E2    push        ebx
 005765E3    mov         dword ptr [ebp-0C],ecx
 005765E6    mov         dword ptr [ebp-8],edx
 005765E9    mov         dword ptr [ebp-4],eax
 005765EC    mov         edx,dword ptr [ebp-8]
 005765EF    mov         eax,dword ptr [ebp-4]
 005765F2    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005765F5    call        TList.Get
 005765FA    mov         edx,dword ptr [ebp-0C]
 005765FD    call        TTabPage.SetCaption
 00576602    mov         eax,dword ptr [ebp-4]
 00576605    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576608    call        TWinControl.HandleAllocated
 0057660D    test        al,al
>0057660F    je          00576628
 00576611    mov         eax,dword ptr [ebp-4]
 00576614    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576617    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 0057661D    mov         ecx,dword ptr [ebp-0C]
 00576620    mov         edx,dword ptr [ebp-8]
 00576623    mov         ebx,dword ptr [eax]
 00576625    call        dword ptr [ebx+20];TStrings.sub_0064787C
 00576628    pop         ebx
 00576629    mov         esp,ebp
 0057662B    pop         ebp
 0057662C    ret
end;*}

//00576630
{*function sub_00576630(?:?):?;
begin
 00576630    push        ebp
 00576631    mov         ebp,esp
 00576633    add         esp,0FFFFFFF4
 00576636    mov         dword ptr [ebp-8],edx
 00576639    mov         dword ptr [ebp-4],eax
 0057663C    mov         edx,dword ptr [ebp-8]
 0057663F    mov         eax,dword ptr [ebp-4]
 00576642    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 00576645    call        TList.Get
 0057664A    mov         dword ptr [ebp-0C],eax
 0057664D    mov         eax,dword ptr [ebp-0C]
 00576650    mov         esp,ebp
 00576652    pop         ebp
 00576653    ret
end;*}

//00576654
{*procedure sub_00576654(?:?);
begin
 00576654    push        ebp
 00576655    mov         ebp,esp
 00576657    add         esp,0FFFFFFF8
 0057665A    mov         byte ptr [ebp-5],dl
 0057665D    mov         dword ptr [ebp-4],eax
 00576660    pop         ecx
 00576661    pop         ecx
 00576662    pop         ebp
 00576663    ret
end;*}

//00576664
procedure TTabPageAccess.Clear;
begin
{*
 00576664    push        ebp
 00576665    mov         ebp,esp
 00576667    add         esp,0FFFFFFF4
 0057666A    mov         dword ptr [ebp-4],eax
 0057666D    mov         eax,dword ptr [ebp-4]
 00576670    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 00576673    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00576676    dec         eax
 00576677    test        eax,eax
>00576679    jl          005766AC
 0057667B    inc         eax
 0057667C    mov         dword ptr [ebp-0C],eax
 0057667F    mov         dword ptr [ebp-8],0
 00576686    mov         edx,dword ptr [ebp-8]
 00576689    mov         eax,dword ptr [ebp-4]
 0057668C    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 0057668F    call        TList.Get
 00576694    mov         edx,dword ptr ds:[575DB8];TTabPage
 0057669A    call        @AsClass
 0057669F    call        TObject.Free
 005766A4    inc         dword ptr [ebp-8]
 005766A7    dec         dword ptr [ebp-0C]
>005766AA    jne         00576686
 005766AC    mov         eax,dword ptr [ebp-4]
 005766AF    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005766B2    mov         edx,dword ptr [eax]
 005766B4    call        dword ptr [edx+8];TList.sub_00644E64
 005766B7    mov         eax,dword ptr [ebp-4]
 005766BA    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005766BD    call        TWinControl.HandleAllocated
 005766C2    test        al,al
>005766C4    je          005766D7
 005766C6    mov         eax,dword ptr [ebp-4]
 005766C9    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005766CC    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 005766D2    mov         edx,dword ptr [eax]
 005766D4    call        dword ptr [edx+44];TStrings.Clear
 005766D7    mov         eax,dword ptr [ebp-4]
 005766DA    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005766DD    call        005F7848
 005766E2    mov         esp,ebp
 005766E4    pop         ebp
 005766E5    ret
*}
end;

//005766E8
{*procedure sub_005766E8(?:?);
begin
 005766E8    push        ebp
 005766E9    mov         ebp,esp
 005766EB    add         esp,0FFFFFFF8
 005766EE    mov         dword ptr [ebp-8],edx
 005766F1    mov         dword ptr [ebp-4],eax
 005766F4    mov         edx,dword ptr [ebp-8]
 005766F7    mov         eax,dword ptr [ebp-4]
 005766FA    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005766FD    call        TList.Get
 00576702    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576708    call        @AsClass
 0057670D    call        TObject.Free
 00576712    mov         edx,dword ptr [ebp-8]
 00576715    mov         eax,dword ptr [ebp-4]
 00576718    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 0057671B    call        TList.Delete
 00576720    mov         eax,dword ptr [ebp-4]
 00576723    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576726    call        TWinControl.HandleAllocated
 0057672B    test        al,al
>0057672D    je          00576743
 0057672F    mov         eax,dword ptr [ebp-4]
 00576732    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576735    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 0057673B    mov         edx,dword ptr [ebp-8]
 0057673E    mov         ecx,dword ptr [eax]
 00576740    call        dword ptr [ecx+48];@AbstractError
 00576743    mov         eax,dword ptr [ebp-4]
 00576746    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576749    mov         eax,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 0057674F    cmp         eax,dword ptr [ebp-8]
>00576752    jne         00576773
 00576754    mov         eax,dword ptr [ebp-4]
 00576757    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 0057675A    mov         dword ptr [eax+270],0FFFFFFFF;TTabbedNotebook.PageIndex:Integer
 00576764    xor         edx,edx
 00576766    mov         eax,dword ptr [ebp-4]
 00576769    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 0057676C    call        TTabbedNotebook.SetPageIndex
>00576771    jmp         00576790
 00576773    mov         eax,dword ptr [ebp-4]
 00576776    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576779    mov         eax,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 0057677F    cmp         eax,dword ptr [ebp-8]
>00576782    jle         00576790
 00576784    mov         eax,dword ptr [ebp-4]
 00576787    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 0057678A    dec         dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00576790    mov         eax,dword ptr [ebp-4]
 00576793    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576796    call        005F7848
 0057679B    mov         eax,dword ptr [ebp-4]
 0057679E    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005767A1    mov         edx,dword ptr [eax]
 005767A3    call        dword ptr [edx+7C];TWinControl.Invalidate
 005767A6    pop         ecx
 005767A7    pop         ecx
 005767A8    pop         ebp
 005767A9    ret
end;*}

//005767AC
{*procedure sub_005767AC(?:?; ?:?);
begin
 005767AC    push        ebp
 005767AD    mov         ebp,esp
 005767AF    add         esp,0FFFFFFF0
 005767B2    push        ebx
 005767B3    mov         dword ptr [ebp-0C],ecx
 005767B6    mov         dword ptr [ebp-8],edx
 005767B9    mov         dword ptr [ebp-4],eax
 005767BC    mov         eax,dword ptr [ebp-4]
 005767BF    mov         ecx,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005767C2    mov         dl,1
 005767C4    mov         eax,[00575DB8];TTabPage
 005767C9    call        TTabPage.Create;TTabPage.Create
 005767CE    mov         dword ptr [ebp-10],eax
 005767D1    mov         eax,dword ptr [ebp-4]
 005767D4    mov         edx,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 005767D7    mov         eax,dword ptr [ebp-10]
 005767DA    mov         ecx,dword ptr [eax]
 005767DC    call        dword ptr [ecx+68];TTabPage.sub_005F34DC
 005767DF    mov         edx,dword ptr [ebp-0C]
 005767E2    mov         eax,dword ptr [ebp-10]
 005767E5    call        TTabPage.SetCaption
 005767EA    mov         ecx,dword ptr [ebp-10]
 005767ED    mov         edx,dword ptr [ebp-8]
 005767F0    mov         eax,dword ptr [ebp-4]
 005767F3    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 005767F6    call        TList.Insert
 005767FB    mov         eax,dword ptr [ebp-4]
 005767FE    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576801    call        TWinControl.HandleAllocated
 00576806    test        al,al
>00576808    je          00576821
 0057680A    mov         eax,dword ptr [ebp-4]
 0057680D    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576810    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576816    mov         ecx,dword ptr [ebp-0C]
 00576819    mov         edx,dword ptr [ebp-8]
 0057681C    mov         ebx,dword ptr [eax]
 0057681E    call        dword ptr [ebx+60];@AbstractError
 00576821    mov         edx,dword ptr [ebp-8]
 00576824    mov         eax,dword ptr [ebp-4]
 00576827    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 0057682A    call        TTabbedNotebook.SetPageIndex
 0057682F    mov         eax,dword ptr [ebp-4]
 00576832    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576835    call        005F7848
 0057683A    mov         eax,dword ptr [ebp-4]
 0057683D    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 00576840    mov         edx,dword ptr [eax]
 00576842    call        dword ptr [edx+7C];TWinControl.Invalidate
 00576845    pop         ebx
 00576846    mov         esp,ebp
 00576848    pop         ebp
 00576849    ret
end;*}

//0057684C
{*procedure sub_0057684C(?:?; ?:?);
begin
 0057684C    push        ebp
 0057684D    mov         ebp,esp
 0057684F    add         esp,0FFFFFFF0
 00576852    push        ebx
 00576853    mov         dword ptr [ebp-0C],ecx
 00576856    mov         dword ptr [ebp-8],edx
 00576859    mov         dword ptr [ebp-4],eax
 0057685C    mov         eax,dword ptr [ebp-8]
 0057685F    cmp         eax,dword ptr [ebp-0C]
>00576862    je          005768DA
 00576864    mov         eax,dword ptr [ebp-4]
 00576867    mov         eax,dword ptr [eax+10];TTabPageAccess.PageList:TList
 0057686A    mov         ecx,dword ptr [ebp-0C]
 0057686D    mov         edx,dword ptr [ebp-8]
 00576870    call        TList.Exchange
 00576875    mov         eax,dword ptr [ebp-4]
 00576878    mov         eax,dword ptr [eax+14];TTabPageAccess.Notebook:TTabbedNotebook
 0057687B    mov         dword ptr [ebp-10],eax
 0057687E    mov         eax,dword ptr [ebp-10]
 00576881    call        TWinControl.HandleAllocated
 00576886    test        al,al
>00576888    je          0057689E
 0057688A    mov         ecx,dword ptr [ebp-0C]
 0057688D    mov         edx,dword ptr [ebp-8]
 00576890    mov         eax,dword ptr [ebp-10]
 00576893    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576899    mov         ebx,dword ptr [eax]
 0057689B    call        dword ptr [ebx+4C];TStrings.sub_006470BC
 0057689E    mov         eax,dword ptr [ebp-10]
 005768A1    mov         eax,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 005768A7    cmp         eax,dword ptr [ebp-8]
>005768AA    jne         005768B9
 005768AC    mov         edx,dword ptr [ebp-0C]
 005768AF    mov         eax,dword ptr [ebp-10]
 005768B2    call        TTabbedNotebook.SetPageIndex
>005768B7    jmp         005768D2
 005768B9    mov         eax,dword ptr [ebp-10]
 005768BC    mov         eax,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 005768C2    cmp         eax,dword ptr [ebp-0C]
>005768C5    jne         005768D2
 005768C7    mov         edx,dword ptr [ebp-8]
 005768CA    mov         eax,dword ptr [ebp-10]
 005768CD    call        TTabbedNotebook.SetPageIndex
 005768D2    mov         eax,dword ptr [ebp-10]
 005768D5    call        005F7848
 005768DA    pop         ebx
 005768DB    mov         esp,ebp
 005768DD    pop         ebp
 005768DE    ret
end;*}

//005768E0
constructor TTabPage.Create(AOwner:TComponent);
begin
{*
 005768E0    push        ebp
 005768E1    mov         ebp,esp
 005768E3    add         esp,0FFFFFFF4
 005768E6    test        dl,dl
>005768E8    je          005768F2
 005768EA    add         esp,0FFFFFFF0
 005768ED    call        @ClassCreate
 005768F2    mov         dword ptr [ebp-0C],ecx
 005768F5    mov         byte ptr [ebp-5],dl
 005768F8    mov         dword ptr [ebp-4],eax
 005768FB    mov         ecx,dword ptr [ebp-0C]
 005768FE    xor         edx,edx
 00576900    mov         eax,dword ptr [ebp-4]
 00576903    call        TWinControl.Create
 00576908    mov         eax,dword ptr [ebp-4]
 0057690B    mov         eax,dword ptr [eax+50];TTabPage.FControlStyle:TControlStyle
 0057690E    or          eax,dword ptr ds:[576964];0x1 gvar_00576964
 00576914    mov         edx,dword ptr [ebp-4]
 00576917    mov         dword ptr [edx+50],eax;TTabPage.FControlStyle:TControlStyle
 0057691A    mov         dl,5
 0057691C    mov         eax,dword ptr [ebp-4]
 0057691F    call        TCCalendar.SetAlign
 00576924    xor         edx,edx
 00576926    mov         eax,dword ptr [ebp-4]
 00576929    call        TCCalendar.SetTabStop
 0057692E    xor         edx,edx
 00576930    mov         eax,dword ptr [ebp-4]
 00576933    mov         ecx,dword ptr [eax]
 00576935    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00576938    xor         edx,edx
 0057693A    mov         eax,dword ptr [ebp-4]
 0057693D    call        TCCalendar.SetVisible
 00576942    mov         eax,dword ptr [ebp-4]
 00576945    cmp         byte ptr [ebp-5],0
>00576949    je          0057695A
 0057694B    call        @AfterConstruction
 00576950    pop         dword ptr fs:[0]
 00576957    add         esp,0C
 0057695A    mov         eax,dword ptr [ebp-4]
 0057695D    mov         esp,ebp
 0057695F    pop         ebp
 00576960    ret
*}
end;

//00576968
{*procedure sub_00576968(?:?);
begin
 00576968    push        ebp
 00576969    mov         ebp,esp
 0057696B    add         esp,0FFFFFFF8
 0057696E    mov         dword ptr [ebp-8],edx
 00576971    mov         dword ptr [ebp-4],eax
 00576974    mov         eax,dword ptr [ebp-8]
 00576977    mov         eax,dword ptr [eax+2C]
 0057697A    mov         edx,dword ptr ds:[575FC4];TTabbedNotebook
 00576980    call        @IsClass
 00576985    test        al,al
>00576987    je          0057699D
 00576989    mov         eax,dword ptr [ebp-8]
 0057698C    mov         eax,dword ptr [eax+2C]
 0057698F    mov         eax,dword ptr [eax+268]
 00576995    mov         edx,dword ptr [ebp-4]
 00576998    call        TList.Add
 0057699D    mov         edx,dword ptr [ebp-8]
 005769A0    mov         eax,dword ptr [ebp-4]
 005769A3    call        005F6EC4
 005769A8    xor         edx,edx
 005769AA    mov         eax,dword ptr [ebp-4]
 005769AD    call        TCCalendar.SetTabStop
 005769B2    pop         ecx
 005769B3    pop         ecx
 005769B4    pop         ebp
 005769B5    ret
end;*}

//005769B8
constructor TTabbedNotebook.Create(AOwner:TComponent);
begin
{*
 005769B8    push        ebp
 005769B9    mov         ebp,esp
 005769BB    add         esp,0FFFFFFEC
 005769BE    push        ebx
 005769BF    xor         ebx,ebx
 005769C1    mov         dword ptr [ebp-10],ebx
 005769C4    test        dl,dl
>005769C6    je          005769D0
 005769C8    add         esp,0FFFFFFF0
 005769CB    call        @ClassCreate
 005769D0    mov         dword ptr [ebp-0C],ecx
 005769D3    mov         byte ptr [ebp-5],dl
 005769D6    mov         dword ptr [ebp-4],eax
 005769D9    xor         eax,eax
 005769DB    push        ebp
 005769DC    push        576B2A
 005769E1    push        dword ptr fs:[eax]
 005769E4    mov         dword ptr fs:[eax],esp
 005769E7    mov         ecx,dword ptr [ebp-0C]
 005769EA    xor         edx,edx
 005769EC    mov         eax,dword ptr [ebp-4]
 005769EF    call        TCustomTabControl.Create
 005769F4    mov         eax,dword ptr [ebp-4]
 005769F7    and         byte ptr [eax+24],0FE;TTabbedNotebook.FComponentStyle:TComponentStyle
 005769FB    mov         eax,dword ptr [ebp-4]
 005769FE    mov         eax,dword ptr [eax+50];TTabbedNotebook.FControlStyle:TControlStyle
 00576A01    or          eax,dword ptr ds:[576B54];0x8 gvar_00576B54
 00576A07    mov         edx,dword ptr ds:[576B58];0x1 gvar_00576B58
 00576A0D    not         edx
 00576A0F    and         edx,eax
 00576A11    mov         eax,dword ptr [ebp-4]
 00576A14    mov         dword ptr [eax+50],edx;TTabbedNotebook.FControlStyle:TControlStyle
 00576A17    mov         edx,12C
 00576A1C    mov         eax,dword ptr [ebp-4]
 00576A1F    call        TControl.SetWidth
 00576A24    mov         edx,0FA
 00576A29    mov         eax,dword ptr [ebp-4]
 00576A2C    call        TControl.SetHeight
 00576A31    mov         dl,1
 00576A33    mov         eax,dword ptr [ebp-4]
 00576A36    call        TCCalendar.SetTabStop
 00576A3B    mov         dl,1
 00576A3D    mov         eax,[006422A4];TList
 00576A42    call        TObject.Create;TList.Create
 00576A47    mov         edx,dword ptr [ebp-4]
 00576A4A    mov         dword ptr [edx+268],eax;TTabbedNotebook.FPageList:TList
 00576A50    mov         dl,1
 00576A52    mov         eax,[005BE498];TFont
 00576A57    call        TFont.Create;TFont.Create
 00576A5C    mov         edx,dword ptr [ebp-4]
 00576A5F    mov         dword ptr [edx+274],eax;TTabbedNotebook.TabFont:TFont
 00576A65    mov         eax,dword ptr [ebp-4]
 00576A68    mov         eax,dword ptr [eax+274];TTabbedNotebook.TabFont:TFont
 00576A6E    mov         edx,80000012
 00576A73    call        TFont.SetColor
 00576A78    mov         eax,dword ptr [ebp-4]
 00576A7B    mov         eax,dword ptr [eax+274];TTabbedNotebook.TabFont:TFont
 00576A81    mov         edx,dword ptr [ebp-4]
 00576A84    mov         dword ptr [eax+0C],edx;TFont.?fC:TTabbedNotebook
 00576A87    mov         dword ptr [eax+8],577498;TFont.FOnChange:TNotifyEvent
 00576A8E    mov         eax,dword ptr [ebp-4]
 00576A91    mov         dword ptr [eax+278],3;TTabbedNotebook.TabsPerRow:Integer
 00576A9B    mov         eax,dword ptr [ebp-4]
 00576A9E    push        eax
 00576A9F    mov         eax,dword ptr [ebp-4]
 00576AA2    mov         ecx,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576AA8    mov         dl,1
 00576AAA    mov         eax,[00576434];TTabPageAccess
 00576AAF    call        TTabPageAccess.Create;TTabPageAccess.Create
 00576AB4    mov         edx,dword ptr [ebp-4]
 00576AB7    mov         dword ptr [edx+26C],eax;TTabbedNotebook.Pages:TStrings
 00576ABD    mov         eax,dword ptr [ebp-4]
 00576AC0    mov         dword ptr [eax+270],0FFFFFFFF;TTabbedNotebook.PageIndex:Integer
 00576ACA    lea         edx,[ebp-10]
 00576ACD    mov         eax,[006E9F94];^gvar_0063CD38
 00576AD2    call        LoadResString
 00576AD7    mov         edx,dword ptr [ebp-10]
 00576ADA    mov         eax,dword ptr [ebp-4]
 00576ADD    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576AE3    mov         ecx,dword ptr [eax]
 00576AE5    call        dword ptr [ecx+38];TStrings.sub_00646C94
 00576AE8    xor         edx,edx
 00576AEA    mov         eax,dword ptr [ebp-4]
 00576AED    call        TTabbedNotebook.SetPageIndex
 00576AF2    cmp         byte ptr ds:[6E3988],0;gvar_006E3988
>00576AF9    jne         00576B14
 00576AFB    mov         eax,[00575DB8];TTabPage
 00576B00    mov         dword ptr [ebp-14],eax
 00576B03    lea         eax,[ebp-14]
 00576B06    xor         edx,edx
 00576B08    call        006443A8
 00576B0D    mov         byte ptr ds:[6E3988],1;gvar_006E3988
 00576B14    xor         eax,eax
 00576B16    pop         edx
 00576B17    pop         ecx
 00576B18    pop         ecx
 00576B19    mov         dword ptr fs:[eax],edx
 00576B1C    push        576B31
 00576B21    lea         eax,[ebp-10]
 00576B24    call        @LStrClr
 00576B29    ret
>00576B2A    jmp         @HandleFinally
>00576B2F    jmp         00576B21
 00576B31    mov         eax,dword ptr [ebp-4]
 00576B34    cmp         byte ptr [ebp-5],0
>00576B38    je          00576B49
 00576B3A    call        @AfterConstruction
 00576B3F    pop         dword ptr fs:[0]
 00576B46    add         esp,0C
 00576B49    mov         eax,dword ptr [ebp-4]
 00576B4C    pop         ebx
 00576B4D    mov         esp,ebp
 00576B4F    pop         ebp
 00576B50    ret
*}
end;

//00576B5C
destructor TTabbedNotebook.Destroy;
begin
{*
 00576B5C    push        ebp
 00576B5D    mov         ebp,esp
 00576B5F    add         esp,0FFFFFFF8
 00576B62    call        @BeforeDestruction
 00576B67    mov         byte ptr [ebp-5],dl
 00576B6A    mov         dword ptr [ebp-4],eax
 00576B6D    mov         eax,dword ptr [ebp-4]
 00576B70    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576B76    call        TObject.Free
 00576B7B    mov         eax,dword ptr [ebp-4]
 00576B7E    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576B84    call        TObject.Free
 00576B89    mov         eax,dword ptr [ebp-4]
 00576B8C    mov         eax,dword ptr [eax+274];TTabbedNotebook.TabFont:TFont
 00576B92    call        TObject.Free
 00576B97    mov         dl,byte ptr [ebp-5]
 00576B9A    and         dl,0FC
 00576B9D    mov         eax,dword ptr [ebp-4]
 00576BA0    call        TCustomTabControl.Destroy
 00576BA5    cmp         byte ptr [ebp-5],0
>00576BA9    jle         00576BB3
 00576BAB    mov         eax,dword ptr [ebp-4]
 00576BAE    call        @ClassDestroy
 00576BB3    pop         ecx
 00576BB4    pop         ecx
 00576BB5    pop         ebp
 00576BB6    ret
*}
end;

//00576BB8
procedure sub_00576BB8;
begin
{*
 00576BB8    push        ebp
 00576BB9    mov         ebp,esp
 00576BBB    add         esp,0FFFFFFF0
 00576BBE    push        ebx
 00576BBF    xor         edx,edx
 00576BC1    mov         dword ptr [ebp-10],edx
 00576BC4    mov         dword ptr [ebp-4],eax
 00576BC7    xor         eax,eax
 00576BC9    push        ebp
 00576BCA    push        576C6A
 00576BCF    push        dword ptr fs:[eax]
 00576BD2    mov         dword ptr fs:[eax],esp
 00576BD5    mov         eax,dword ptr [ebp-4]
 00576BD8    call        005F8728
 00576BDD    mov         eax,dword ptr [ebp-4]
 00576BE0    test        byte ptr [eax+1C],2;TTabbedNotebook.FComponentState:TComponentState
>00576BE4    jne         00576C54
 00576BE6    mov         eax,dword ptr [ebp-4]
 00576BE9    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576BEF    mov         edx,dword ptr [eax]
 00576BF1    call        dword ptr [edx+14];@AbstractError
 00576BF4    test        eax,eax
>00576BF6    jne         00576C54
 00576BF8    mov         eax,dword ptr [ebp-4]
 00576BFB    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576C01    mov         edx,dword ptr [eax]
 00576C03    call        dword ptr [edx+14];@AbstractError
 00576C06    dec         eax
 00576C07    test        eax,eax
>00576C09    jl          00576C43
 00576C0B    inc         eax
 00576C0C    mov         dword ptr [ebp-0C],eax
 00576C0F    mov         dword ptr [ebp-8],0
 00576C16    lea         ecx,[ebp-10]
 00576C19    mov         edx,dword ptr [ebp-8]
 00576C1C    mov         eax,dword ptr [ebp-4]
 00576C1F    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576C25    mov         ebx,dword ptr [eax]
 00576C27    call        dword ptr [ebx+0C];@AbstractError
 00576C2A    mov         edx,dword ptr [ebp-10]
 00576C2D    mov         eax,dword ptr [ebp-4]
 00576C30    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576C36    mov         ecx,dword ptr [eax]
 00576C38    call        dword ptr [ecx+38];TStrings.sub_00646C94
 00576C3B    inc         dword ptr [ebp-8]
 00576C3E    dec         dword ptr [ebp-0C]
>00576C41    jne         00576C16
 00576C43    mov         eax,dword ptr [ebp-4]
 00576C46    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00576C4C    mov         eax,dword ptr [ebp-4]
 00576C4F    call        TTabControl.SetTabIndex
 00576C54    xor         eax,eax
 00576C56    pop         edx
 00576C57    pop         ecx
 00576C58    pop         ecx
 00576C59    mov         dword ptr fs:[eax],edx
 00576C5C    push        576C71
 00576C61    lea         eax,[ebp-10]
 00576C64    call        @LStrClr
 00576C69    ret
>00576C6A    jmp         @HandleFinally
>00576C6F    jmp         00576C61
 00576C71    pop         ebx
 00576C72    mov         esp,ebp
 00576C74    pop         ebp
 00576C75    ret
*}
end;

//00576C78
{*procedure sub_00576C78(?:?);
begin
 00576C78    push        ebp
 00576C79    mov         ebp,esp
 00576C7B    add         esp,0FFFFFFF8
 00576C7E    mov         dword ptr [ebp-8],edx
 00576C81    mov         dword ptr [ebp-4],eax
 00576C84    mov         edx,dword ptr [ebp-8]
 00576C87    mov         eax,dword ptr [ebp-4]
 00576C8A    call        00612920
 00576C8F    mov         eax,dword ptr [ebp-8]
 00576C92    or          dword ptr [eax+4],2000000
 00576C99    pop         ecx
 00576C9A    pop         ecx
 00576C9B    pop         ebp
 00576C9C    ret
end;*}

//00576CA0
procedure TTabbedNotebook.sub_00576CA0;
begin
{*
 00576CA0    push        ebp
 00576CA1    mov         ebp,esp
 00576CA3    add         esp,0FFFFFFF8
 00576CA6    mov         dword ptr [ebp-4],eax
 00576CA9    mov         eax,dword ptr [ebp-4]
 00576CAC    mov         dword ptr [ebp-8],eax
 00576CAF    mov         eax,dword ptr [ebp-8]
 00576CB2    pop         ecx
 00576CB3    pop         ecx
 00576CB4    pop         ebp
 00576CB5    ret
*}
end;

//00576CB8
{*procedure TTabbedNotebook.GetChildren(Proc:TGetChildProc; Root:TComponent; ?:?);
begin
 00576CB8    push        ebp
 00576CB9    mov         ebp,esp
 00576CBB    add         esp,0FFFFFFF0
 00576CBE    mov         dword ptr [ebp-10],edx
 00576CC1    mov         dword ptr [ebp-4],eax
 00576CC4    mov         eax,dword ptr [ebp-4]
 00576CC7    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576CCD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00576CD0    dec         eax
 00576CD1    test        eax,eax
>00576CD3    jl          00576D01
 00576CD5    inc         eax
 00576CD6    mov         dword ptr [ebp-0C],eax
 00576CD9    mov         dword ptr [ebp-8],0
 00576CE0    mov         eax,dword ptr [ebp-4]
 00576CE3    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576CE9    mov         edx,dword ptr [ebp-8]
 00576CEC    call        TList.Get
 00576CF1    mov         edx,eax
 00576CF3    mov         eax,dword ptr [ebp+0C]
 00576CF6    call        dword ptr [ebp+8]
 00576CF9    inc         dword ptr [ebp-8]
 00576CFC    dec         dword ptr [ebp-0C]
>00576CFF    jne         00576CE0
 00576D01    mov         esp,ebp
 00576D03    pop         ebp
 00576D04    ret         8
end;*}

//00576D08
procedure TTabbedNotebook.Loaded;
begin
{*
 00576D08    push        ebp
 00576D09    mov         ebp,esp
 00576D0B    add         esp,0FFFFFFF0
 00576D0E    push        ebx
 00576D0F    xor         edx,edx
 00576D11    mov         dword ptr [ebp-10],edx
 00576D14    mov         dword ptr [ebp-4],eax
 00576D17    xor         eax,eax
 00576D19    push        ebp
 00576D1A    push        576E89
 00576D1F    push        dword ptr fs:[eax]
 00576D22    mov         dword ptr fs:[eax],esp
 00576D25    mov         eax,dword ptr [ebp-4]
 00576D28    call        TCustomTabControl.Loaded
 00576D2D    mov         eax,dword ptr [ebp-4]
 00576D30    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576D36    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00576D39    dec         eax
 00576D3A    test        eax,eax
>00576D3C    jl          00576DF5
 00576D42    inc         eax
 00576D43    mov         dword ptr [ebp-0C],eax
 00576D46    mov         dword ptr [ebp-8],0
 00576D4D    mov         eax,dword ptr [ebp-8]
 00576D50    mov         edx,dword ptr [ebp-4]
 00576D53    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>00576D59    je          00576DA3
 00576D5B    mov         edx,dword ptr [ebp-8]
 00576D5E    mov         eax,dword ptr [ebp-4]
 00576D61    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576D67    call        TList.Get
 00576D6C    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576D72    call        @AsClass
 00576D77    xor         edx,edx
 00576D79    mov         ecx,dword ptr [eax]
 00576D7B    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00576D7E    mov         edx,dword ptr [ebp-8]
 00576D81    mov         eax,dword ptr [ebp-4]
 00576D84    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576D8A    call        TList.Get
 00576D8F    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576D95    call        @AsClass
 00576D9A    xor         edx,edx
 00576D9C    call        TCCalendar.SetVisible
>00576DA1    jmp         00576DE9
 00576DA3    mov         edx,dword ptr [ebp-8]
 00576DA6    mov         eax,dword ptr [ebp-4]
 00576DA9    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576DAF    call        TList.Get
 00576DB4    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576DBA    call        @AsClass
 00576DBF    mov         dl,1
 00576DC1    mov         ecx,dword ptr [eax]
 00576DC3    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00576DC6    mov         edx,dword ptr [ebp-8]
 00576DC9    mov         eax,dword ptr [ebp-4]
 00576DCC    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576DD2    call        TList.Get
 00576DD7    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576DDD    call        @AsClass
 00576DE2    mov         dl,1
 00576DE4    call        TCCalendar.SetVisible
 00576DE9    inc         dword ptr [ebp-8]
 00576DEC    dec         dword ptr [ebp-0C]
>00576DEF    jne         00576D4D
 00576DF5    mov         eax,dword ptr [ebp-4]
 00576DF8    call        TWinControl.HandleAllocated
 00576DFD    test        al,al
>00576DFF    je          00576E6B
 00576E01    mov         eax,dword ptr [ebp-4]
 00576E04    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576E0A    mov         edx,dword ptr [eax]
 00576E0C    call        dword ptr [edx+44];TStrings.Clear
 00576E0F    mov         eax,dword ptr [ebp-4]
 00576E12    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576E18    mov         edx,dword ptr [eax]
 00576E1A    call        dword ptr [edx+14];@AbstractError
 00576E1D    dec         eax
 00576E1E    test        eax,eax
>00576E20    jl          00576E5A
 00576E22    inc         eax
 00576E23    mov         dword ptr [ebp-0C],eax
 00576E26    mov         dword ptr [ebp-8],0
 00576E2D    lea         ecx,[ebp-10]
 00576E30    mov         edx,dword ptr [ebp-8]
 00576E33    mov         eax,dword ptr [ebp-4]
 00576E36    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576E3C    mov         ebx,dword ptr [eax]
 00576E3E    call        dword ptr [ebx+0C];@AbstractError
 00576E41    mov         edx,dword ptr [ebp-10]
 00576E44    mov         eax,dword ptr [ebp-4]
 00576E47    mov         eax,dword ptr [eax+228];TTabbedNotebook.FTabs:TStrings
 00576E4D    mov         ecx,dword ptr [eax]
 00576E4F    call        dword ptr [ecx+38];TStrings.sub_00646C94
 00576E52    inc         dword ptr [ebp-8]
 00576E55    dec         dword ptr [ebp-0C]
>00576E58    jne         00576E2D
 00576E5A    mov         eax,dword ptr [ebp-4]
 00576E5D    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00576E63    mov         eax,dword ptr [ebp-4]
 00576E66    call        TTabControl.SetTabIndex
 00576E6B    mov         eax,dword ptr [ebp-4]
 00576E6E    call        005F7848
 00576E73    xor         eax,eax
 00576E75    pop         edx
 00576E76    pop         ecx
 00576E77    pop         ecx
 00576E78    mov         dword ptr fs:[eax],edx
 00576E7B    push        576E90
 00576E80    lea         eax,[ebp-10]
 00576E83    call        @LStrClr
 00576E88    ret
>00576E89    jmp         @HandleFinally
>00576E8E    jmp         00576E80
 00576E90    pop         ebx
 00576E91    mov         esp,ebp
 00576E93    pop         ebp
 00576E94    ret
*}
end;

//00576E98
{*procedure sub_00576E98(?:?);
begin
 00576E98    push        ebp
 00576E99    mov         ebp,esp
 00576E9B    add         esp,0FFFFFFF4
 00576E9E    mov         dword ptr [ebp-8],edx
 00576EA1    mov         dword ptr [ebp-4],eax
 00576EA4    mov         eax,dword ptr [ebp-4]
 00576EA7    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576EAD    mov         edx,dword ptr [eax]
 00576EAF    call        dword ptr [edx+44];TStrings.Clear
 00576EB2    mov         edx,dword ptr [ebp-8]
 00576EB5    mov         eax,dword ptr [ebp-4]
 00576EB8    call        005F6EC4
 00576EBD    mov         eax,dword ptr [ebp-4]
 00576EC0    cmp         dword ptr [eax+270],0;TTabbedNotebook.PageIndex:Integer
>00576EC7    jl          00576F23
 00576EC9    mov         eax,dword ptr [ebp-4]
 00576ECC    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576ED2    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00576ED5    mov         edx,dword ptr [ebp-4]
 00576ED8    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>00576EDE    jle         00576F23
 00576EE0    mov         eax,dword ptr [ebp-4]
 00576EE3    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00576EE9    mov         eax,dword ptr [ebp-4]
 00576EEC    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576EF2    call        TList.Get
 00576EF7    mov         edx,dword ptr ds:[575DB8];TTabPage
 00576EFD    call        @AsClass
 00576F02    mov         dword ptr [ebp-0C],eax
 00576F05    mov         dl,1
 00576F07    mov         eax,dword ptr [ebp-0C]
 00576F0A    mov         ecx,dword ptr [eax]
 00576F0C    call        dword ptr [ecx+64];TCCalendar.SetEnabled
 00576F0F    mov         eax,dword ptr [ebp-0C]
 00576F12    call        005F3B24
 00576F17    mov         dl,5
 00576F19    mov         eax,dword ptr [ebp-0C]
 00576F1C    call        TCCalendar.SetAlign
>00576F21    jmp         00576F30
 00576F23    mov         eax,dword ptr [ebp-4]
 00576F26    mov         dword ptr [eax+270],0FFFFFFFF;TTabbedNotebook.PageIndex:Integer
 00576F30    mov         esp,ebp
 00576F32    pop         ebp
 00576F33    ret
end;*}

//00576F34
procedure TTabbedNotebook.SetPages(Value:TStrings);
begin
{*
 00576F34    push        ebp
 00576F35    mov         ebp,esp
 00576F37    add         esp,0FFFFFFF8
 00576F3A    mov         dword ptr [ebp-8],edx
 00576F3D    mov         dword ptr [ebp-4],eax
 00576F40    mov         edx,dword ptr [ebp-8]
 00576F43    mov         eax,dword ptr [ebp-4]
 00576F46    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576F4C    mov         ecx,dword ptr [eax]
 00576F4E    call        dword ptr [ecx+8];TStrings.Assign
 00576F51    mov         eax,dword ptr [ebp-4]
 00576F54    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 00576F5A    mov         edx,dword ptr [eax]
 00576F5C    call        dword ptr [edx+14];@AbstractError
 00576F5F    test        eax,eax
>00576F61    jle         00576F70
 00576F63    mov         eax,dword ptr [ebp-4]
 00576F66    xor         edx,edx
 00576F68    mov         dword ptr [eax+270],edx;TTabbedNotebook.PageIndex:Integer
>00576F6E    jmp         00576F7D
 00576F70    mov         eax,dword ptr [ebp-4]
 00576F73    mov         dword ptr [eax+270],0FFFFFFFF;TTabbedNotebook.PageIndex:Integer
 00576F7D    pop         ecx
 00576F7E    pop         ecx
 00576F7F    pop         ebp
 00576F80    ret
*}
end;

//00576F84
{*procedure sub_00576F84(?:?);
begin
 00576F84    push        ebp
 00576F85    mov         ebp,esp
 00576F87    add         esp,0FFFFFFF0
 00576F8A    mov         dword ptr [ebp-8],edx
 00576F8D    mov         dword ptr [ebp-4],eax
 00576F90    mov         eax,dword ptr [ebp-4]
 00576F93    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576F99    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00576F9C    dec         eax
 00576F9D    test        eax,eax
>00576F9F    jl          00576FD7
 00576FA1    inc         eax
 00576FA2    mov         dword ptr [ebp-10],eax
 00576FA5    mov         dword ptr [ebp-0C],0
 00576FAC    mov         eax,dword ptr [ebp-4]
 00576FAF    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00576FB5    mov         edx,dword ptr [ebp-0C]
 00576FB8    call        TList.Get
 00576FBD    cmp         eax,dword ptr [ebp-8]
>00576FC0    jne         00576FCF
 00576FC2    mov         edx,dword ptr [ebp-0C]
 00576FC5    mov         eax,dword ptr [ebp-4]
 00576FC8    call        TTabbedNotebook.SetPageIndex
>00576FCD    jmp         00576FE2
 00576FCF    inc         dword ptr [ebp-0C]
 00576FD2    dec         dword ptr [ebp-10]
>00576FD5    jne         00576FAC
 00576FD7    mov         edx,dword ptr [ebp-8]
 00576FDA    mov         eax,dword ptr [ebp-4]
 00576FDD    call        005FBBE4
 00576FE2    mov         esp,ebp
 00576FE4    pop         ebp
 00576FE5    ret
end;*}

//00576FE8
procedure TTabbedNotebook.SetPageIndex(Value:Integer);
begin
{*
 00576FE8    push        ebp
 00576FE9    mov         ebp,esp
 00576FEB    add         esp,0FFFFFFE8
 00576FEE    push        ebx
 00576FEF    mov         dword ptr [ebp-8],edx
 00576FF2    mov         dword ptr [ebp-4],eax
 00576FF5    mov         eax,dword ptr [ebp-4]
 00576FF8    test        byte ptr [eax+1C],1;TTabbedNotebook.FComponentState:TComponentState
>00576FFC    je          0057700F
 00576FFE    mov         eax,dword ptr [ebp-8]
 00577001    mov         edx,dword ptr [ebp-4]
 00577004    mov         dword ptr [edx+270],eax;TTabbedNotebook.PageIndex:Integer
>0057700A    jmp         00577189
 0057700F    mov         eax,dword ptr [ebp-8]
 00577012    mov         edx,dword ptr [ebp-4]
 00577015    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>0057701B    je          00577189
 00577021    cmp         dword ptr [ebp-8],0
>00577025    jl          00577189
 0057702B    mov         eax,dword ptr [ebp-4]
 0057702E    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577034    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00577037    cmp         eax,dword ptr [ebp-8]
>0057703A    jle         00577189
 00577040    mov         eax,dword ptr [ebp-4]
 00577043    cmp         word ptr [eax+28A],0;TTabbedNotebook.?f28A:word
>0057704B    je          00577074
 0057704D    mov         byte ptr [ebp-9],1
 00577051    lea         eax,[ebp-9]
 00577054    push        eax
 00577055    mov         ebx,dword ptr [ebp-4]
 00577058    mov         ecx,dword ptr [ebp-8]
 0057705B    mov         edx,dword ptr [ebp-4]
 0057705E    mov         eax,dword ptr [ebx+28C];TTabbedNotebook.?f28C:dword
 00577064    call        dword ptr [ebx+288];TTabbedNotebook.OnChange
 0057706A    cmp         byte ptr [ebp-9],0
>0057706E    je          00577189
 00577074    mov         eax,dword ptr [ebp-4]
 00577077    call        005CD060
 0057707C    mov         dword ptr [ebp-10],eax
 0057707F    cmp         dword ptr [ebp-10],0
>00577083    je          005770A5
 00577085    mov         eax,dword ptr [ebp-10]
 00577088    mov         edx,dword ptr [eax+220]
 0057708E    mov         eax,dword ptr [ebp-4]
 00577091    call        005F7AB8
 00577096    test        al,al
>00577098    je          005770A5
 0057709A    mov         edx,dword ptr [ebp-4]
 0057709D    mov         eax,dword ptr [ebp-10]
 005770A0    call        TForm.SetActiveControl
 005770A5    mov         eax,dword ptr [ebp-4]
 005770A8    call        TWinControl.HandleAllocated
 005770AD    test        al,al
>005770AF    je          005770BC
 005770B1    mov         edx,dword ptr [ebp-8]
 005770B4    mov         eax,dword ptr [ebp-4]
 005770B7    call        TTabControl.SetTabIndex
 005770BC    mov         edx,dword ptr [ebp-8]
 005770BF    mov         eax,dword ptr [ebp-4]
 005770C2    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 005770C8    call        TList.Get
 005770CD    mov         dword ptr [ebp-14],eax
 005770D0    mov         eax,dword ptr [ebp-14]
 005770D3    call        005F3B24
 005770D8    mov         dl,1
 005770DA    mov         eax,dword ptr [ebp-14]
 005770DD    call        TCCalendar.SetVisible
 005770E2    mov         dl,1
 005770E4    mov         eax,dword ptr [ebp-14]
 005770E7    mov         ecx,dword ptr [eax]
 005770E9    call        dword ptr [ecx+64]
 005770EC    mov         eax,dword ptr [ebp-4]
 005770EF    cmp         dword ptr [eax+270],0;TTabbedNotebook.PageIndex:Integer
>005770F6    jl          0057713D
 005770F8    mov         eax,dword ptr [ebp-4]
 005770FB    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577101    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00577104    mov         edx,dword ptr [ebp-4]
 00577107    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>0057710D    jle         0057713D
 0057710F    mov         eax,dword ptr [ebp-4]
 00577112    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00577118    mov         eax,dword ptr [ebp-4]
 0057711B    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577121    call        TList.Get
 00577126    mov         dword ptr [ebp-18],eax
 00577129    xor         edx,edx
 0057712B    mov         eax,dword ptr [ebp-18]
 0057712E    call        TCCalendar.SetVisible
 00577133    xor         edx,edx
 00577135    mov         eax,dword ptr [ebp-18]
 00577138    mov         ecx,dword ptr [eax]
 0057713A    call        dword ptr [ecx+64]
 0057713D    mov         eax,dword ptr [ebp-4]
 00577140    mov         eax,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00577146    mov         edx,dword ptr [ebp-4]
 00577149    mov         ecx,dword ptr [edx+278];TTabbedNotebook.TabsPerRow:Integer
 0057714F    cdq
 00577150    idiv        eax,ecx
 00577152    mov         ecx,eax
 00577154    mov         eax,dword ptr [ebp-8]
 00577157    mov         edx,dword ptr [ebp-4]
 0057715A    mov         ebx,dword ptr [edx+278];TTabbedNotebook.TabsPerRow:Integer
 00577160    cdq
 00577161    idiv        eax,ebx
 00577163    cmp         ecx,eax
>00577165    je          0057717D
 00577167    mov         eax,dword ptr [ebp-8]
 0057716A    mov         edx,dword ptr [ebp-4]
 0057716D    mov         dword ptr [edx+270],eax;TTabbedNotebook.PageIndex:Integer
 00577173    mov         eax,dword ptr [ebp-4]
 00577176    call        005F7848
>0057717B    jmp         00577189
 0057717D    mov         eax,dword ptr [ebp-8]
 00577180    mov         edx,dword ptr [ebp-4]
 00577183    mov         dword ptr [edx+270],eax;TTabbedNotebook.PageIndex:Integer
 00577189    pop         ebx
 0057718A    mov         esp,ebp
 0057718C    pop         ebp
 0057718D    ret
*}
end;

//00577190
procedure TTabbedNotebook.SetActivePage(Value:String);
begin
{*
 00577190    push        ebp
 00577191    mov         ebp,esp
 00577193    add         esp,0FFFFFFF8
 00577196    mov         dword ptr [ebp-8],edx
 00577199    mov         dword ptr [ebp-4],eax
 0057719C    mov         edx,dword ptr [ebp-8]
 0057719F    mov         eax,dword ptr [ebp-4]
 005771A2    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 005771A8    mov         ecx,dword ptr [eax]
 005771AA    call        dword ptr [ecx+54];TStrings.sub_006474D4
 005771AD    mov         edx,eax
 005771AF    mov         eax,dword ptr [ebp-4]
 005771B2    call        TTabbedNotebook.SetPageIndex
 005771B7    pop         ecx
 005771B8    pop         ecx
 005771B9    pop         ebp
 005771BA    ret
*}
end;

//005771BC
{*procedure TTabbedNotebook.GetActivePage(?:?);
begin
 005771BC    push        ebp
 005771BD    mov         ebp,esp
 005771BF    add         esp,0FFFFFFF8
 005771C2    push        ebx
 005771C3    mov         dword ptr [ebp-8],edx
 005771C6    mov         dword ptr [ebp-4],eax
 005771C9    mov         eax,dword ptr [ebp-4]
 005771CC    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 005771D2    mov         edx,dword ptr [eax]
 005771D4    call        dword ptr [edx+14];@AbstractError
 005771D7    test        eax,eax
>005771D9    jle         00577203
 005771DB    mov         eax,dword ptr [ebp-4]
 005771DE    cmp         dword ptr [eax+270],0;TTabbedNotebook.PageIndex:Integer
>005771E5    jl          00577203
 005771E7    mov         ecx,dword ptr [ebp-8]
 005771EA    mov         eax,dword ptr [ebp-4]
 005771ED    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 005771F3    mov         eax,dword ptr [ebp-4]
 005771F6    mov         eax,dword ptr [eax+26C];TTabbedNotebook.Pages:TStrings
 005771FC    mov         ebx,dword ptr [eax]
 005771FE    call        dword ptr [ebx+0C];@AbstractError
>00577201    jmp         0057720B
 00577203    mov         eax,dword ptr [ebp-8]
 00577206    call        @LStrClr
 0057720B    pop         ebx
 0057720C    pop         ecx
 0057720D    pop         ecx
 0057720E    pop         ebp
 0057720F    ret
end;*}

//00577210
{*procedure TTabbedNotebook.WMGetDlgCode(?:?);
begin
 00577210    push        ebp
 00577211    mov         ebp,esp
 00577213    add         esp,0FFFFFFF8
 00577216    mov         dword ptr [ebp-8],edx
 00577219    mov         dword ptr [ebp-4],eax
 0057721C    mov         eax,dword ptr [ebp-8]
 0057721F    mov         dword ptr [eax+0C],1
 00577226    pop         ecx
 00577227    pop         ecx
 00577228    pop         ebp
 00577229    ret
end;*}

//0057722C
{*procedure TTabbedNotebook.CMDialogChar(?:?);
begin
 0057722C    push        ebp
 0057722D    mov         ebp,esp
 0057722F    add         esp,0FFFFFFEC
 00577232    push        esi
 00577233    xor         ecx,ecx
 00577235    mov         dword ptr [ebp-14],ecx
 00577238    mov         dword ptr [ebp-8],edx
 0057723B    mov         dword ptr [ebp-4],eax
 0057723E    xor         eax,eax
 00577240    push        ebp
 00577241    push        57730B
 00577246    push        dword ptr fs:[eax]
 00577249    mov         dword ptr fs:[eax],esp
 0057724C    mov         eax,dword ptr [ebp-4]
 0057724F    cmp         dword ptr [eax+268],0;TTabbedNotebook.FPageList:TList
>00577256    je          005772EA
 0057725C    mov         eax,dword ptr [ebp-4]
 0057725F    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577265    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00577268    dec         eax
 00577269    test        eax,eax
>0057726B    jl          005772EA
 0057726D    inc         eax
 0057726E    mov         dword ptr [ebp-10],eax
 00577271    mov         dword ptr [ebp-0C],0
 00577278    mov         edx,dword ptr [ebp-0C]
 0057727B    mov         eax,dword ptr [ebp-4]
 0057727E    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577284    call        TList.Get
 00577289    lea         edx,[ebp-14]
 0057728C    call        TTabPage.GetCaption
 00577291    mov         edx,dword ptr [ebp-14]
 00577294    mov         eax,dword ptr [ebp-8]
 00577297    mov         ax,word ptr [eax+4]
 0057729B    call        005CCFE8
 005772A0    test        al,al
>005772A2    je          005772E2
 005772A4    mov         eax,dword ptr [ebp-4]
 005772A7    mov         edx,dword ptr [eax]
 005772A9    call        dword ptr [edx+0C0];TTabbedNotebook.sub_005FBFF0
 005772AF    mov         eax,dword ptr [ebp-4]
 005772B2    mov         si,0FFB5
 005772B6    call        @CallDynaInst;TWinControl.sub_005FC040
 005772BB    test        al,al
>005772BD    je          005772D6
 005772BF    mov         edx,dword ptr [ebp-0C]
 005772C2    mov         eax,dword ptr [ebp-4]
 005772C5    call        TTabbedNotebook.SetPageIndex
 005772CA    mov         eax,dword ptr [ebp-4]
 005772CD    mov         si,0FFEB
 005772D1    call        @CallDynaInst;TTabbedNotebook.sub_005774BC
 005772D6    mov         eax,dword ptr [ebp-8]
 005772D9    mov         dword ptr [eax+0C],1
>005772E0    jmp         005772F5
 005772E2    inc         dword ptr [ebp-0C]
 005772E5    dec         dword ptr [ebp-10]
>005772E8    jne         00577278
 005772EA    mov         edx,dword ptr [ebp-8]
 005772ED    mov         eax,dword ptr [ebp-4]
 005772F0    call        TCustomTabControl.CMDialogChar
 005772F5    xor         eax,eax
 005772F7    pop         edx
 005772F8    pop         ecx
 005772F9    pop         ecx
 005772FA    mov         dword ptr fs:[eax],edx
 005772FD    push        577312
 00577302    lea         eax,[ebp-14]
 00577305    call        @LStrClr
 0057730A    ret
>0057730B    jmp         @HandleFinally
>00577310    jmp         00577302
 00577312    pop         esi
 00577313    mov         esp,ebp
 00577315    pop         ebp
 00577316    ret
end;*}

//00577318
{*procedure TTabbedNotebook.sub_00577318(?:?; ?:?);
begin
 00577318    push        ebp
 00577319    mov         ebp,esp
 0057731B    add         esp,0FFFFFFF4
 0057731E    push        esi
 0057731F    mov         byte ptr [ebp-9],cl
 00577322    mov         dword ptr [ebp-8],edx
 00577325    mov         dword ptr [ebp-4],eax
 00577328    mov         eax,dword ptr [ebp-8]
 0057732B    mov         ax,word ptr [eax]
 0057732E    add         eax,0FFFFFFDB
 00577331    sub         ax,2
>00577335    jb          00577385
 00577337    sub         ax,2
>0057733B    jae         005773C6
 00577341    mov         eax,dword ptr [ebp-4]
 00577344    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 0057734A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0057734D    dec         eax
 0057734E    mov         edx,dword ptr [ebp-4]
 00577351    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>00577357    jg          00577365
 00577359    xor         edx,edx
 0057735B    mov         eax,dword ptr [ebp-4]
 0057735E    call        TTabbedNotebook.SetPageIndex
>00577363    jmp         00577377
 00577365    mov         eax,dword ptr [ebp-4]
 00577368    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 0057736E    inc         edx
 0057736F    mov         eax,dword ptr [ebp-4]
 00577372    call        TTabbedNotebook.SetPageIndex
 00577377    mov         eax,dword ptr [ebp-4]
 0057737A    mov         si,0FFEB
 0057737E    call        @CallDynaInst;TTabbedNotebook.sub_005774BC
>00577383    jmp         005773C6
 00577385    mov         eax,dword ptr [ebp-4]
 00577388    cmp         dword ptr [eax+270],0;TTabbedNotebook.PageIndex:Integer
>0057738F    jle         005773A5
 00577391    mov         eax,dword ptr [ebp-4]
 00577394    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 0057739A    dec         edx
 0057739B    mov         eax,dword ptr [ebp-4]
 0057739E    call        TTabbedNotebook.SetPageIndex
>005773A3    jmp         005773BA
 005773A5    mov         eax,dword ptr [ebp-4]
 005773A8    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 005773AE    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 005773B1    dec         edx
 005773B2    mov         eax,dword ptr [ebp-4]
 005773B5    call        TTabbedNotebook.SetPageIndex
 005773BA    mov         eax,dword ptr [ebp-4]
 005773BD    mov         si,0FFEB
 005773C1    call        @CallDynaInst;TTabbedNotebook.sub_005774BC
 005773C6    pop         esi
 005773C7    mov         esp,ebp
 005773C9    pop         ebp
 005773CA    ret
end;*}

//005773CC
procedure TTabbedNotebook.SetTabsPerRow(Value:Integer);
begin
{*
 005773CC    push        ebp
 005773CD    mov         ebp,esp
 005773CF    add         esp,0FFFFFFF8
 005773D2    mov         dword ptr [ebp-8],edx
 005773D5    mov         dword ptr [ebp-4],eax
 005773D8    cmp         dword ptr [ebp-8],3
>005773DC    jl          005773FA
 005773DE    mov         eax,dword ptr [ebp-8]
 005773E1    mov         edx,dword ptr [ebp-4]
 005773E4    mov         dword ptr [edx+278],eax;TTabbedNotebook.TabsPerRow:Integer
 005773EA    mov         eax,dword ptr [ebp-4]
 005773ED    call        005F7848
 005773F2    mov         eax,dword ptr [ebp-4]
 005773F5    mov         edx,dword ptr [eax]
 005773F7    call        dword ptr [edx+7C];TWinControl.Invalidate
 005773FA    pop         ecx
 005773FB    pop         ecx
 005773FC    pop         ebp
 005773FD    ret
*}
end;

//00577400
procedure TTabbedNotebook.SetTabFont(Value:TFont);
begin
{*
 00577400    push        ebp
 00577401    mov         ebp,esp
 00577403    add         esp,0FFFFFFF8
 00577406    mov         dword ptr [ebp-8],edx
 00577409    mov         dword ptr [ebp-4],eax
 0057740C    mov         edx,dword ptr [ebp-8]
 0057740F    mov         eax,dword ptr [ebp-4]
 00577412    mov         eax,dword ptr [eax+274];TTabbedNotebook.TabFont:TFont
 00577418    mov         ecx,dword ptr [eax]
 0057741A    call        dword ptr [ecx+8];TFont.Assign
 0057741D    pop         ecx
 0057741E    pop         ecx
 0057741F    pop         ebp
 00577420    ret
*}
end;

//00577424
{*procedure TTabbedNotebook.sub_00577424(?:?);
begin
 00577424    push        ebp
 00577425    mov         ebp,esp
 00577427    add         esp,0FFFFFFF8
 0057742A    mov         dword ptr [ebp-8],edx
 0057742D    mov         dword ptr [ebp-4],eax
 00577430    mov         eax,dword ptr [ebp-4]
 00577433    mov         edx,dword ptr [eax]
 00577435    call        dword ptr [edx+7C];TWinControl.Invalidate
 00577438    pop         ecx
 00577439    pop         ecx
 0057743A    pop         ebp
 0057743B    ret
end;*}

//0057743C
procedure TTabbedNotebook.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 0057743C    push        ebp
 0057743D    mov         ebp,esp
 0057743F    add         esp,0FFFFFFF4
 00577442    mov         dword ptr [ebp-8],ecx
 00577445    mov         dword ptr [ebp-0C],edx
 00577448    mov         dword ptr [ebp-4],eax
 0057744B    mov         eax,dword ptr [ebp-4]
 0057744E    cmp         dword ptr [eax+270],0;TTabbedNotebook.PageIndex:Integer
>00577455    jl          00577492
 00577457    mov         eax,dword ptr [ebp-4]
 0057745A    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577460    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00577463    mov         edx,dword ptr [ebp-4]
 00577466    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>0057746C    jle         00577492
 0057746E    mov         eax,dword ptr [ebp-4]
 00577471    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00577477    mov         eax,dword ptr [ebp-4]
 0057747A    mov         eax,dword ptr [eax+268];TTabbedNotebook.FPageList:TList
 00577480    call        TList.Get
 00577485    mov         edx,eax
 00577487    mov         ecx,dword ptr [ebp-8]
 0057748A    mov         eax,dword ptr [ebp-4]
 0057748D    call        TWinControl.AlignControls
 00577492    mov         esp,ebp
 00577494    pop         ebp
 00577495    ret
*}
end;

//005774BC
procedure TTabbedNotebook.sub_005774BC;
begin
{*
 005774BC    push        ebp
 005774BD    mov         ebp,esp
 005774BF    push        ecx
 005774C0    push        ebx
 005774C1    mov         dword ptr [ebp-4],eax
 005774C4    mov         eax,dword ptr [ebp-4]
 005774C7    cmp         word ptr [eax+282],0;TTabbedNotebook.?f282:word
>005774CF    je          005774E3
 005774D1    mov         ebx,dword ptr [ebp-4]
 005774D4    mov         edx,dword ptr [ebp-4]
 005774D7    mov         eax,dword ptr [ebx+284];TTabbedNotebook.?f284:dword
 005774DD    call        dword ptr [ebx+280];TTabbedNotebook.OnClick
 005774E3    pop         ebx
 005774E4    pop         ecx
 005774E5    pop         ebp
 005774E6    ret
*}
end;

//005774E8
procedure TTabbedNotebook.sub_005774E8;
begin
{*
 005774E8    push        ebp
 005774E9    mov         ebp,esp
 005774EB    push        ecx
 005774EC    mov         dword ptr [ebp-4],eax
 005774EF    mov         eax,dword ptr [ebp-4]
 005774F2    call        TTabControl.GetTabIndex
 005774F7    test        eax,eax
>005774F9    jl          0057750D
 005774FB    mov         eax,dword ptr [ebp-4]
 005774FE    call        TTabControl.GetTabIndex
 00577503    mov         edx,eax
 00577505    mov         eax,dword ptr [ebp-4]
 00577508    call        TTabbedNotebook.SetPageIndex
 0057750D    mov         eax,dword ptr [ebp-4]
 00577510    call        TTabControl.GetTabIndex
 00577515    mov         edx,dword ptr [ebp-4]
 00577518    cmp         eax,dword ptr [edx+270];TTabbedNotebook.PageIndex:Integer
>0057751E    jne         0057752B
 00577520    mov         eax,dword ptr [ebp-4]
 00577523    call        TCustomTabControl.sub_006128F4
 00577528    pop         ecx
 00577529    pop         ebp
 0057752A    ret
 0057752B    mov         eax,dword ptr [ebp-4]
 0057752E    mov         edx,dword ptr [eax+270];TTabbedNotebook.PageIndex:Integer
 00577534    mov         eax,dword ptr [ebp-4]
 00577537    call        TTabControl.SetTabIndex
 0057753C    pop         ecx
 0057753D    pop         ebp
 0057753E    ret
*}
end;

//00577540
procedure TTabbedNotebook.WMPaint(Message:TWMPaint);
begin
{*
 00577540    push        ebp
 00577541    mov         ebp,esp
 00577543    add         esp,0FFFFFFF8
 00577546    mov         dword ptr [ebp-8],edx
 00577549    mov         dword ptr [ebp-4],eax
 0057754C    push        0
 0057754E    mov         eax,dword ptr [ebp-4]
 00577551    mov         eax,dword ptr [eax+274];TTabbedNotebook.TabFont:TFont
 00577557    call        TFont.GetHandle
 0057755C    push        eax
 0057755D    push        30
 0057755F    mov         eax,dword ptr [ebp-4]
 00577562    call        TWinControl.GetHandle
 00577567    push        eax
 00577568    call        USER32.SendMessageA
 0057756D    mov         edx,dword ptr [ebp-8]
 00577570    mov         eax,dword ptr [ebp-4]
 00577573    call        TWinControl.WMPaint
 00577578    pop         ecx
 00577579    pop         ecx
 0057757A    pop         ebp
 0057757B    ret
*}
end;

//0057757C
procedure Finalization;
begin
{*
 0057757C    push        ebp
 0057757D    mov         ebp,esp
 0057757F    xor         eax,eax
 00577581    push        ebp
 00577582    push        5775A1
 00577587    push        dword ptr fs:[eax]
 0057758A    mov         dword ptr fs:[eax],esp
 0057758D    inc         dword ptr ds:[6ECCAC]
 00577593    xor         eax,eax
 00577595    pop         edx
 00577596    pop         ecx
 00577597    pop         ecx
 00577598    mov         dword ptr fs:[eax],edx
 0057759B    push        5775A8
 005775A0    ret
>005775A1    jmp         @HandleFinally
>005775A6    jmp         005775A0
 005775A8    pop         ebp
 005775A9    ret
*}
end;

end.