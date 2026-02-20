//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Tabs;

interface

uses
  SysUtils, Classes, Tabs, Graphics, Controls;

type
  TScroller = class(TCustomControl)
  public
    Min:Integer;//f210
    Max:Integer;//f214
    Position:Integer;//f218
    OnClick:TNotifyEvent;//f220
    f222:word;//f222
    f224:TTabSet;//f224
    Change:Integer;//f228
    Bitmap:TBitmap;//f22C
    Pressed:Boolean;//f230
    Down:Boolean;//f231
    Current:TScrollBtn;//f232
    pWidth:Integer;//f234
    pHeight:Integer;//f238
    destructor Destroy; virtual;//005781D4
    constructor Create(AOwner:TComponent); virtual;//v2C//00578118
    procedure vC4; virtual;//vC4//00578214
    //procedure WMSize(?:?); message WM_SIZE;//005783B8
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//005785F8
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//005785B8
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//005786BC
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//005785D8
    procedure SetMin(Value:Integer);//005783F8
    procedure SetMax(Value:Integer);//00578424
    procedure SetPosition(Value:Integer);//00578450
  end;
  TTabList = class(TStringList)
  public
    ...................Tabs:TTabSet;//f30
    //procedure v20(?:?; ?:?); virtual;//v20//0057884C
    //function v38(?:?):?; virtual;//v38//00578734
    //procedure v40(?:?); virtual;//v40//005788B4
    procedure Clear; virtual;//v44//00578884
    //procedure v48(?:?); virtual;//v48//005787C0
    //procedure v60(?:?; ?:?); virtual;//v60//0057876C
  end;
  TTabStyle = (tsStandard, tsOwnerDraw);
  TMeasureTabEvent = procedure(Sender:TObject; Index:Integer; var TabWidth:Integer) of object;;
  TDrawTabEvent = procedure(Sender:TObject; TabCanvas:TCanvas; R:TRect; Index:Integer; Selected:Boolean) of object;;
  TTabChangeEvent = procedure(Sender:TObject; NewTab:Integer; var AllowChange:Boolean) of object;;
  TTabSet = class(TCustomControl)
  public
    StartMargin:Integer;//f210
    EndMargin:Integer;//f214
    Tabs:TStrings;//f218
    TabIndex:Integer;//f21C
    FFirstIndex:Integer;//f220
    VisibleTabs:Integer;//f224
    SelectedColor:TColor;//f228
    UnselectedColor:TColor;//f22C
    BackgroundColor:TColor;//f230
    DitherBackground:Boolean;//f234
    AutoScroll:Boolean;//f235
    Style:TTabStyle;//f236
    TabHeight:Integer;//f238
    OnMeasureTab:TMeasureTabEvent;//f240
    f242:word;//f242
    f244:dword;//f244
    OnDrawTab:TDrawTabEvent;//f248
    f24A:word;//f24A
    f24C:dword;//f24C
    OnChange:TTabChangeEvent;//f250
    ImageList:TImageList;//f258
    MemBitmap:TBitmap;//f25C
    BrushBitmap:TBitmap;//f260
    TabPositions:TList;//f264
    FTabHeight:Integer;//f268
    FScroller:TScroller;//f26C
    FDoFix:Boolean;//f270
    SoftTop:Boolean;//f271
    destructor Destroy; virtual;//00578BDC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0057AF84
    constructor Create(AOwner:TComponent); virtual;//v2C//00578908
    //procedure v98(?:?); virtual;//v98//00578AFC
    procedure vC4; virtual;//vC4//00578D20
    //procedure vC8(?:?; ?:?; ?:?; ?:?); virtual;//vC8//0057AB68
    //procedure vCC(?:?; ?:?); virtual;//vCC//0057ABCC
    //procedure WMSize(?:?); message WM_SIZE;//0057AD4C
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//0057AEA8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0057AEC4
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0057AE68
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//0057AE1C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0057AC08
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent); dynamic;//0057ABB8
    procedure SetSelectedColor(Value:TColor);//0057A760
    procedure SetUnselectedColor(Value:TColor);//0057A79C
    procedure SetBackgroundColor(Value:TColor);//0057A7D8
    procedure SetDitherBackground(Value:Boolean);//0057A834
    procedure SetAutoScroll(Value:Boolean);//0057A890
    procedure SetStartMargin(Value:Integer);//0057A8E8
    procedure SetEndMargin(Value:Integer);//0057A91C
    procedure SetTabIndex(Value:Integer);//0057A990
    procedure SetTabs(Value:TStrings);//0057AA58
    procedure SetStyle(Value:TTabStyle);//0057AAAC
    procedure SetTabHeight(Value:Integer);//0057AAE8
    procedure SetSoftTop(Value:Boolean);//0057B0D0
  end;
    procedure Tabs;//005775AC
    constructor Create(AOwner:TComponent);//00578118
    destructor Destroy;//005781D4
    procedure sub_00578214;//00578214
    //procedure WMSize(?:?);//005783B8
    //function sub_005784D8(?:TScroller):?;//005784D8
    //function sub_00578500(?:TScroller):?;//00578500
    //procedure sub_00578528(?:TScroller; ?:?);//00578528
    //procedure WMLButtonDown(?:?);//005785B8
    //procedure WMLButtonDblClk(?:?);//005785D8
    //procedure WMMouseMove(?:?);//005785F8
    //procedure WMLButtonUp(?:?);//005786BC
    //function sub_00578734(?:?):?;//00578734
    //procedure sub_0057876C(?:?; ?:?);//0057876C
    //procedure sub_005787C0(?:?);//005787C0
    //procedure sub_0057884C(?:?; ?:?);//0057884C
    procedure Clear;//00578884
    //procedure sub_005788B4(?:?);//005788B4
    constructor Create(AOwner:TComponent);//00578908
    //procedure sub_00578AFC(?:?);//00578AFC
    procedure sub_00578B20(?:TTabSet);//00578B20
    procedure sub_00578BA8(?:TTabSet);//00578BA8
    destructor Destroy;//00578BDC
    procedure sub_00578C34(?:TTabSet);//00578C34
    //function sub_00578C8C(?:TTabSet; ?:?; ?:?; ?:?):?;//00578C8C
    procedure sub_00578D20;//00578D20
    //procedure sub_0057949C(?:TCanvas; ?:?);//0057949C
    //procedure sub_00579780(?:TCanvas; ?:?);//00579780
    //procedure sub_00579A40(?:TCanvas; ?:?);//00579A40
    //procedure sub_00579D6C(?:TCanvas; ?:?);//00579D6C
    procedure sub_0057A018(?:TTabSet);//0057A018
    //procedure sub_0057A240(?:TTabSet; ?:?; ?:?; ?:?);//0057A240
    procedure sub_0057A474(?:TTabSet; ?:TBitmap);//0057A474
    //function sub_0057A550(?:?):?;//0057A550
    //function sub_0057A5B8(?:?; ?:?; ?:TCanvas; ?:?; ?:?):?;//0057A5B8
    procedure sub_0057A6AC(?:TTabSet);//0057A6AC
    //function sub_0057A950(?:TTabSet; ?:Integer):?;//0057A950
    //procedure sub_0057AA18(?:TTabSet; ?:?);//0057AA18
    //procedure sub_0057AB68(?:?; ?:?; ?:?; ?:?);//0057AB68
    procedure GetChildren(Proc:TGetChildProc; Root:TComponent);//0057ABB8
    //procedure sub_0057ABCC(?:?; ?:?);//0057ABCC
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0057AC08
    //function sub_0057ACEC(?:?; ?:?; ?:TCanvas; ?:?; ?:?):?;//0057ACEC
    //procedure WMSize(?:?);//0057AD4C
    //procedure CMSysColorChange(?:?);//0057AE1C
    //procedure CMFontChanged(?:?);//0057AE68
    //procedure WMGetDlgCode(?:?);//0057AEA8
    //procedure CMDialogChar(?:?);//0057AEC4
    procedure DefineProperties(Filer:TFiler);//0057AF84
    //function sub_0057B040(?:?; ?:?):?;//0057B040
    procedure Finalization;//0057B10C

implementation

//005775AC
procedure Tabs;
begin
{*
 005775AC    sub         dword ptr ds:[6ECCAC],1
 005775B3    ret
*}
end;

//00578118
constructor TScroller.Create(AOwner:TComponent);
begin
{*
 00578118    push        ebp
 00578119    mov         ebp,esp
 0057811B    add         esp,0FFFFFFF4
 0057811E    test        dl,dl
>00578120    je          0057812A
 00578122    add         esp,0FFFFFFF0
 00578125    call        @ClassCreate
 0057812A    mov         dword ptr [ebp-0C],ecx
 0057812D    mov         byte ptr [ebp-5],dl
 00578130    mov         dword ptr [ebp-4],eax
 00578133    mov         ecx,dword ptr [ebp-0C]
 00578136    xor         edx,edx
 00578138    mov         eax,dword ptr [ebp-4]
 0057813B    call        TCustomControl.Create
 00578140    mov         eax,dword ptr [ebp-4]
 00578143    mov         eax,dword ptr [eax+50];TScroller.FControlStyle:TControlStyle
 00578146    or          eax,dword ptr ds:[5781D0];0x40 gvar_005781D0
 0057814C    mov         edx,dword ptr [ebp-4]
 0057814F    mov         dword ptr [edx+50],eax;TScroller.FControlStyle:TControlStyle
 00578152    mov         dl,1
 00578154    mov         eax,[005BEDD4];TBitmap
 00578159    call        TBitmap.Create;TBitmap.Create
 0057815E    mov         edx,dword ptr [ebp-4]
 00578161    mov         dword ptr [edx+22C],eax;TScroller.Bitmap:TBitmap
 00578167    mov         eax,dword ptr [ebp-4]
 0057816A    mov         dword ptr [eax+234],18;TScroller.pWidth:Integer
 00578174    mov         eax,dword ptr [ebp-4]
 00578177    mov         dword ptr [eax+238],0D;TScroller.pHeight:Integer
 00578181    mov         eax,dword ptr [ebp-4]
 00578184    xor         edx,edx
 00578186    mov         dword ptr [eax+210],edx;TScroller.Min:Integer
 0057818C    mov         eax,dword ptr [ebp-4]
 0057818F    xor         edx,edx
 00578191    mov         dword ptr [eax+214],edx;TScroller.Max:Integer
 00578197    mov         eax,dword ptr [ebp-4]
 0057819A    xor         edx,edx
 0057819C    mov         dword ptr [eax+218],edx;TScroller.Position:Integer
 005781A2    mov         eax,dword ptr [ebp-4]
 005781A5    mov         dword ptr [eax+228],1;TScroller.Change:Integer
 005781AF    mov         eax,dword ptr [ebp-4]
 005781B2    cmp         byte ptr [ebp-5],0
>005781B6    je          005781C7
 005781B8    call        @AfterConstruction
 005781BD    pop         dword ptr fs:[0]
 005781C4    add         esp,0C
 005781C7    mov         eax,dword ptr [ebp-4]
 005781CA    mov         esp,ebp
 005781CC    pop         ebp
 005781CD    ret
*}
end;

//005781D4
destructor TScroller.Destroy;
begin
{*
 005781D4    push        ebp
 005781D5    mov         ebp,esp
 005781D7    add         esp,0FFFFFFF8
 005781DA    call        @BeforeDestruction
 005781DF    mov         byte ptr [ebp-5],dl
 005781E2    mov         dword ptr [ebp-4],eax
 005781E5    mov         eax,dword ptr [ebp-4]
 005781E8    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 005781EE    call        TObject.Free
 005781F3    mov         dl,byte ptr [ebp-5]
 005781F6    and         dl,0FC
 005781F9    mov         eax,dword ptr [ebp-4]
 005781FC    call        TCustomControl.Destroy
 00578201    cmp         byte ptr [ebp-5],0
>00578205    jle         0057820F
 00578207    mov         eax,dword ptr [ebp-4]
 0057820A    call        @ClassDestroy
 0057820F    pop         ecx
 00578210    pop         ecx
 00578211    pop         ebp
 00578212    ret
*}
end;

//00578214
procedure sub_00578214;
begin
{*
 00578214    push        ebp
 00578215    mov         ebp,esp
 00578217    add         esp,0FFFFFFF8
 0057821A    mov         dword ptr [ebp-4],eax
 0057821D    mov         eax,dword ptr [ebp-4]
 00578220    mov         eax,dword ptr [eax+208];TScroller..........................................................
 00578226    mov         dword ptr [ebp-8],eax
 00578229    mov         eax,dword ptr [ebp-4]
 0057822C    call        005784D8
 00578231    test        al,al
>00578233    je          00578291
 00578235    mov         eax,dword ptr [ebp-4]
 00578238    cmp         byte ptr [eax+231],0;TScroller.Down:Boolean
>0057823F    je          0057826F
 00578241    mov         eax,dword ptr [ebp-4]
 00578244    cmp         byte ptr [eax+232],0;TScroller.Current:TScrollBtn
>0057824B    jne         0057826F
 0057824D    push        578378
 00578252    mov         eax,[006EA390];0x0 gvar_006EA390
 00578257    push        eax
 00578258    call        USER32.LoadBitmapA
 0057825D    mov         edx,eax
 0057825F    mov         eax,dword ptr [ebp-4]
 00578262    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 00578268    call        TBitmap.SetHandle
>0057826D    jmp         005782B1
 0057826F    push        578384
 00578274    mov         eax,[006EA390];0x0 gvar_006EA390
 00578279    push        eax
 0057827A    call        USER32.LoadBitmapA
 0057827F    mov         edx,eax
 00578281    mov         eax,dword ptr [ebp-4]
 00578284    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 0057828A    call        TBitmap.SetHandle
>0057828F    jmp         005782B1
 00578291    push        57838C
 00578296    mov         eax,[006EA390];0x0 gvar_006EA390
 0057829B    push        eax
 0057829C    call        USER32.LoadBitmapA
 005782A1    mov         edx,eax
 005782A3    mov         eax,dword ptr [ebp-4]
 005782A6    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 005782AC    call        TBitmap.SetHandle
 005782B1    mov         eax,dword ptr [ebp-4]
 005782B4    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 005782BA    push        eax
 005782BB    xor         ecx,ecx
 005782BD    xor         edx,edx
 005782BF    mov         eax,dword ptr [ebp-8]
 005782C2    call        005C1078
 005782C7    mov         eax,dword ptr [ebp-4]
 005782CA    call        00578500
 005782CF    test        al,al
>005782D1    je          0057832F
 005782D3    mov         eax,dword ptr [ebp-4]
 005782D6    cmp         byte ptr [eax+231],0;TScroller.Down:Boolean
>005782DD    je          0057830D
 005782DF    mov         eax,dword ptr [ebp-4]
 005782E2    cmp         byte ptr [eax+232],1;TScroller.Current:TScrollBtn
>005782E9    jne         0057830D
 005782EB    push        578398
 005782F0    mov         eax,[006EA390];0x0 gvar_006EA390
 005782F5    push        eax
 005782F6    call        USER32.LoadBitmapA
 005782FB    mov         edx,eax
 005782FD    mov         eax,dword ptr [ebp-4]
 00578300    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 00578306    call        TBitmap.SetHandle
>0057830B    jmp         0057834F
 0057830D    push        5783A4
 00578312    mov         eax,[006EA390];0x0 gvar_006EA390
 00578317    push        eax
 00578318    call        USER32.LoadBitmapA
 0057831D    mov         edx,eax
 0057831F    mov         eax,dword ptr [ebp-4]
 00578322    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 00578328    call        TBitmap.SetHandle
>0057832D    jmp         0057834F
 0057832F    push        5783AC
 00578334    mov         eax,[006EA390];0x0 gvar_006EA390
 00578339    push        eax
 0057833A    call        USER32.LoadBitmapA
 0057833F    mov         edx,eax
 00578341    mov         eax,dword ptr [ebp-4]
 00578344    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 0057834A    call        TBitmap.SetHandle
 0057834F    mov         eax,dword ptr [ebp-4]
 00578352    mov         eax,dword ptr [eax+22C];TScroller.Bitmap:TBitmap
 00578358    push        eax
 00578359    mov         eax,dword ptr [ebp-4]
 0057835C    mov         edx,dword ptr [eax+234];TScroller.pWidth:Integer
 00578362    sar         edx,1
>00578364    jns         00578369
 00578366    adc         edx,0
 00578369    dec         edx
 0057836A    xor         ecx,ecx
 0057836C    mov         eax,dword ptr [ebp-8]
 0057836F    call        005C1078
 00578374    pop         ecx
 00578375    pop         ecx
 00578376    pop         ebp
 00578377    ret
*}
end;

//005783B8
{*procedure TScroller.WMSize(?:?);
begin
 005783B8    push        ebp
 005783B9    mov         ebp,esp
 005783BB    add         esp,0FFFFFFF8
 005783BE    mov         dword ptr [ebp-8],edx
 005783C1    mov         dword ptr [ebp-4],eax
 005783C4    mov         edx,dword ptr [ebp-8]
 005783C7    mov         eax,dword ptr [ebp-4]
 005783CA    call        TWinControl.WMSize
 005783CF    mov         eax,dword ptr [ebp-4]
 005783D2    mov         edx,dword ptr [eax+234];TScroller.pWidth:Integer
 005783D8    dec         edx
 005783D9    mov         eax,dword ptr [ebp-4]
 005783DC    call        TControl.SetWidth
 005783E1    mov         eax,dword ptr [ebp-4]
 005783E4    mov         edx,dword ptr [eax+238];TScroller.pHeight:Integer
 005783EA    mov         eax,dword ptr [ebp-4]
 005783ED    call        TControl.SetHeight
 005783F2    pop         ecx
 005783F3    pop         ecx
 005783F4    pop         ebp
 005783F5    ret
end;*}

//005783F8
procedure TScroller.SetMin(Value:Integer);
begin
{*
 005783F8    push        ebp
 005783F9    mov         ebp,esp
 005783FB    add         esp,0FFFFFFF8
 005783FE    mov         dword ptr [ebp-8],edx
 00578401    mov         dword ptr [ebp-4],eax
 00578404    mov         eax,dword ptr [ebp-8]
 00578407    mov         edx,dword ptr [ebp-4]
 0057840A    cmp         eax,dword ptr [edx+214];TScroller.Max:Integer
>00578410    jge         0057841E
 00578412    mov         eax,dword ptr [ebp-8]
 00578415    mov         edx,dword ptr [ebp-4]
 00578418    mov         dword ptr [edx+210],eax;TScroller.Min:Integer
 0057841E    pop         ecx
 0057841F    pop         ecx
 00578420    pop         ebp
 00578421    ret
*}
end;

//00578424
procedure TScroller.SetMax(Value:Integer);
begin
{*
 00578424    push        ebp
 00578425    mov         ebp,esp
 00578427    add         esp,0FFFFFFF8
 0057842A    mov         dword ptr [ebp-8],edx
 0057842D    mov         dword ptr [ebp-4],eax
 00578430    mov         eax,dword ptr [ebp-8]
 00578433    mov         edx,dword ptr [ebp-4]
 00578436    cmp         eax,dword ptr [edx+210];TScroller.Min:Integer
>0057843C    jle         0057844A
 0057843E    mov         eax,dword ptr [ebp-8]
 00578441    mov         edx,dword ptr [ebp-4]
 00578444    mov         dword ptr [edx+214],eax;TScroller.Max:Integer
 0057844A    pop         ecx
 0057844B    pop         ecx
 0057844C    pop         ebp
 0057844D    ret
*}
end;

//00578450
procedure TScroller.SetPosition(Value:Integer);
begin
{*
 00578450    push        ebp
 00578451    mov         ebp,esp
 00578453    add         esp,0FFFFFFF8
 00578456    push        ebx
 00578457    mov         dword ptr [ebp-8],edx
 0057845A    mov         dword ptr [ebp-4],eax
 0057845D    mov         eax,dword ptr [ebp-8]
 00578460    mov         edx,dword ptr [ebp-4]
 00578463    cmp         eax,dword ptr [edx+218];TScroller.Position:Integer
>00578469    je          005784D2
 0057846B    mov         eax,dword ptr [ebp-8]
 0057846E    mov         edx,dword ptr [ebp-4]
 00578471    cmp         eax,dword ptr [edx+210];TScroller.Min:Integer
>00578477    jge         00578485
 00578479    mov         eax,dword ptr [ebp-4]
 0057847C    mov         eax,dword ptr [eax+210];TScroller.Min:Integer
 00578482    mov         dword ptr [ebp-8],eax
 00578485    mov         eax,dword ptr [ebp-8]
 00578488    mov         edx,dword ptr [ebp-4]
 0057848B    cmp         eax,dword ptr [edx+214];TScroller.Max:Integer
>00578491    jle         0057849F
 00578493    mov         eax,dword ptr [ebp-4]
 00578496    mov         eax,dword ptr [eax+214];TScroller.Max:Integer
 0057849C    mov         dword ptr [ebp-8],eax
 0057849F    mov         eax,dword ptr [ebp-8]
 005784A2    mov         edx,dword ptr [ebp-4]
 005784A5    mov         dword ptr [edx+218],eax;TScroller.Position:Integer
 005784AB    mov         eax,dword ptr [ebp-4]
 005784AE    mov         edx,dword ptr [eax]
 005784B0    call        dword ptr [edx+7C];TWinControl.Invalidate
 005784B3    mov         eax,dword ptr [ebp-4]
 005784B6    cmp         word ptr [eax+222],0;TScroller.?f222:word
>005784BE    je          005784D2
 005784C0    mov         ebx,dword ptr [ebp-4]
 005784C3    mov         edx,dword ptr [ebp-4]
 005784C6    mov         eax,dword ptr [ebx+224];TScroller.?f224:TTabSet
 005784CC    call        dword ptr [ebx+220];TScroller.OnClick
 005784D2    pop         ebx
 005784D3    pop         ecx
 005784D4    pop         ecx
 005784D5    pop         ebp
 005784D6    ret
*}
end;

//005784D8
{*function sub_005784D8(?:TScroller):?;
begin
 005784D8    push        ebp
 005784D9    mov         ebp,esp
 005784DB    add         esp,0FFFFFFF8
 005784DE    mov         dword ptr [ebp-4],eax
 005784E1    mov         eax,dword ptr [ebp-4]
 005784E4    mov         eax,dword ptr [eax+218];TScroller.Position:Integer
 005784EA    mov         edx,dword ptr [ebp-4]
 005784ED    cmp         eax,dword ptr [edx+210];TScroller.Min:Integer
 005784F3    setg        byte ptr [ebp-5]
 005784F7    mov         al,byte ptr [ebp-5]
 005784FA    pop         ecx
 005784FB    pop         ecx
 005784FC    pop         ebp
 005784FD    ret
end;*}

//00578500
{*function sub_00578500(?:TScroller):?;
begin
 00578500    push        ebp
 00578501    mov         ebp,esp
 00578503    add         esp,0FFFFFFF8
 00578506    mov         dword ptr [ebp-4],eax
 00578509    mov         eax,dword ptr [ebp-4]
 0057850C    mov         eax,dword ptr [eax+218];TScroller.Position:Integer
 00578512    mov         edx,dword ptr [ebp-4]
 00578515    cmp         eax,dword ptr [edx+214];TScroller.Max:Integer
 0057851B    setl        byte ptr [ebp-5]
 0057851F    mov         al,byte ptr [ebp-5]
 00578522    pop         ecx
 00578523    pop         ecx
 00578524    pop         ebp
 00578525    ret
end;*}

//00578528
{*procedure sub_00578528(?:TScroller; ?:?);
begin
 00578528    push        ebp
 00578529    mov         ebp,esp
 0057852B    add         esp,0FFFFFFF8
 0057852E    mov         dword ptr [ebp-8],edx
 00578531    mov         dword ptr [ebp-4],eax
 00578534    mov         eax,dword ptr [ebp-4]
 00578537    mov         eax,dword ptr [eax+234]
 0057853D    sar         eax,1
>0057853F    jns         00578544
 00578541    adc         eax,0
 00578544    cmp         eax,dword ptr [ebp-8]
>00578547    jle         00578555
 00578549    mov         eax,dword ptr [ebp-4]
 0057854C    mov         byte ptr [eax+232],0
>00578553    jmp         0057855F
 00578555    mov         eax,dword ptr [ebp-4]
 00578558    mov         byte ptr [eax+232],1
 0057855F    mov         eax,dword ptr [ebp-4]
 00578562    mov         al,byte ptr [eax+232]
 00578568    sub         al,1
>0057856A    jb          00578570
>0057856C    je          0057857E
>0057856E    jmp         0057858A
 00578570    mov         eax,dword ptr [ebp-4]
 00578573    call        005784D8
 00578578    test        al,al
>0057857A    je          005785B4
>0057857C    jmp         0057858A
 0057857E    mov         eax,dword ptr [ebp-4]
 00578581    call        00578500
 00578586    test        al,al
>00578588    je          005785B4
 0057858A    mov         eax,dword ptr [ebp-4]
 0057858D    mov         byte ptr [eax+230],1
 00578594    mov         eax,dword ptr [ebp-4]
 00578597    mov         byte ptr [eax+231],1
 0057859E    mov         eax,dword ptr [ebp-4]
 005785A1    mov         edx,dword ptr [eax]
 005785A3    call        dword ptr [edx+7C]
 005785A6    mov         eax,dword ptr [ebp-4]
 005785A9    call        TWinControl.GetHandle
 005785AE    push        eax
 005785AF    call        USER32.SetCapture
 005785B4    pop         ecx
 005785B5    pop         ecx
 005785B6    pop         ebp
 005785B7    ret
end;*}

//005785B8
{*procedure TScroller.WMLButtonDown(?:?);
begin
 005785B8    push        ebp
 005785B9    mov         ebp,esp
 005785BB    add         esp,0FFFFFFF8
 005785BE    mov         dword ptr [ebp-8],edx
 005785C1    mov         dword ptr [ebp-4],eax
 005785C4    mov         edx,dword ptr [ebp-8]
 005785C7    movsx       edx,word ptr [edx+8]
 005785CB    mov         eax,dword ptr [ebp-4]
 005785CE    call        00578528
 005785D3    pop         ecx
 005785D4    pop         ecx
 005785D5    pop         ebp
 005785D6    ret
end;*}

//005785D8
{*procedure TScroller.WMLButtonDblClk(?:?);
begin
 005785D8    push        ebp
 005785D9    mov         ebp,esp
 005785DB    add         esp,0FFFFFFF8
 005785DE    mov         dword ptr [ebp-8],edx
 005785E1    mov         dword ptr [ebp-4],eax
 005785E4    mov         edx,dword ptr [ebp-8]
 005785E7    movsx       edx,word ptr [edx+8]
 005785EB    mov         eax,dword ptr [ebp-4]
 005785EE    call        00578528
 005785F3    pop         ecx
 005785F4    pop         ecx
 005785F5    pop         ebp
 005785F6    ret
end;*}

//005785F8
{*procedure TScroller.WMMouseMove(?:?);
begin
 005785F8    push        ebp
 005785F9    mov         ebp,esp
 005785FB    add         esp,0FFFFFFE0
 005785FE    mov         dword ptr [ebp-8],edx
 00578601    mov         dword ptr [ebp-4],eax
 00578604    mov         eax,dword ptr [ebp-4]
 00578607    cmp         byte ptr [eax+230],0;TScroller.Pressed:Boolean
>0057860E    je          005786B5
 00578614    lea         ecx,[ebp-10]
 00578617    mov         edx,dword ptr [ebp-8]
 0057861A    movsx       edx,word ptr [edx+0A]
 0057861E    mov         eax,dword ptr [ebp-8]
 00578621    movsx       eax,word ptr [eax+8]
 00578625    call        Point
 0057862A    mov         eax,dword ptr [ebp-4]
 0057862D    mov         eax,dword ptr [eax+238];TScroller.pHeight:Integer
 00578633    push        eax
 00578634    lea         eax,[ebp-20]
 00578637    push        eax
 00578638    mov         eax,dword ptr [ebp-4]
 0057863B    mov         ecx,dword ptr [eax+234];TScroller.pWidth:Integer
 00578641    sar         ecx,1
>00578643    jns         00578648
 00578645    adc         ecx,0
 00578648    xor         edx,edx
 0057864A    xor         eax,eax
 0057864C    call        Rect
 00578651    mov         eax,dword ptr [ebp-4]
 00578654    cmp         byte ptr [eax+232],1;TScroller.Current:TScrollBtn
>0057865B    jne         00578679
 0057865D    push        0
 0057865F    mov         eax,dword ptr [ebp-4]
 00578662    mov         eax,dword ptr [eax+234];TScroller.pWidth:Integer
 00578668    sar         eax,1
>0057866A    jns         0057866F
 0057866C    adc         eax,0
 0057866F    push        eax
 00578670    lea         eax,[ebp-20]
 00578673    push        eax
 00578674    call        USER32.OffsetRect
 00578679    push        dword ptr [ebp-0C]
 0057867C    push        dword ptr [ebp-10]
 0057867F    lea         eax,[ebp-20]
 00578682    push        eax
 00578683    call        USER32.PtInRect
 00578688    cmp         eax,1
 0057868B    sbb         eax,eax
 0057868D    inc         eax
 0057868E    mov         edx,dword ptr [ebp-4]
 00578691    cmp         al,byte ptr [edx+231];TScroller.Down:Boolean
>00578697    je          005786B5
 00578699    mov         eax,dword ptr [ebp-4]
 0057869C    mov         al,byte ptr [eax+231];TScroller.Down:Boolean
 005786A2    xor         al,1
 005786A4    mov         edx,dword ptr [ebp-4]
 005786A7    mov         byte ptr [edx+231],al;TScroller.Down:Boolean
 005786AD    mov         eax,dword ptr [ebp-4]
 005786B0    mov         edx,dword ptr [eax]
 005786B2    call        dword ptr [edx+7C];TWinControl.Invalidate
 005786B5    mov         esp,ebp
 005786B7    pop         ebp
 005786B8    ret
end;*}

//005786BC
{*procedure TScroller.WMLButtonUp(?:?);
begin
 005786BC    push        ebp
 005786BD    mov         ebp,esp
 005786BF    add         esp,0FFFFFFF4
 005786C2    mov         dword ptr [ebp-0C],edx
 005786C5    mov         dword ptr [ebp-4],eax
 005786C8    call        USER32.ReleaseCapture
 005786CD    mov         eax,dword ptr [ebp-4]
 005786D0    mov         byte ptr [eax+230],0;TScroller.Pressed:Boolean
 005786D7    mov         eax,dword ptr [ebp-4]
 005786DA    cmp         byte ptr [eax+231],0;TScroller.Down:Boolean
>005786E1    je          0057872F
 005786E3    mov         eax,dword ptr [ebp-4]
 005786E6    mov         byte ptr [eax+231],0;TScroller.Down:Boolean
 005786ED    mov         eax,dword ptr [ebp-4]
 005786F0    mov         eax,dword ptr [eax+218];TScroller.Position:Integer
 005786F6    mov         dword ptr [ebp-8],eax
 005786F9    mov         eax,dword ptr [ebp-4]
 005786FC    mov         al,byte ptr [eax+232];TScroller.Current:TScrollBtn
 00578702    sub         al,1
>00578704    jb          0057870A
>00578706    je          00578718
>00578708    jmp         00578724
 0057870A    mov         eax,dword ptr [ebp-4]
 0057870D    mov         eax,dword ptr [eax+228];TScroller.Change:Integer
 00578713    sub         dword ptr [ebp-8],eax
>00578716    jmp         00578724
 00578718    mov         eax,dword ptr [ebp-4]
 0057871B    mov         eax,dword ptr [eax+228];TScroller.Change:Integer
 00578721    add         dword ptr [ebp-8],eax
 00578724    mov         edx,dword ptr [ebp-8]
 00578727    mov         eax,dword ptr [ebp-4]
 0057872A    call        TScroller.SetPosition
 0057872F    mov         esp,ebp
 00578731    pop         ebp
 00578732    ret
end;*}

//00578734
{*function sub_00578734(?:?):?;
begin
 00578734    push        ebp
 00578735    mov         ebp,esp
 00578737    add         esp,0FFFFFFF4
 0057873A    mov         dword ptr [ebp-8],edx
 0057873D    mov         dword ptr [ebp-4],eax
 00578740    mov         edx,dword ptr [ebp-8]
 00578743    mov         eax,dword ptr [ebp-4]
 00578746    call        00647DC4
 0057874B    mov         dword ptr [ebp-0C],eax
 0057874E    mov         eax,dword ptr [ebp-4]
 00578751    cmp         dword ptr [eax+30],0;TTabList.....................Tabs:TTabSet
>00578755    je          00578762
 00578757    mov         eax,dword ptr [ebp-4]
 0057875A    mov         eax,dword ptr [eax+30];TTabList......................Tabs:TTabSet
 0057875D    mov         edx,dword ptr [eax]
 0057875F    call        dword ptr [edx+7C];TWinControl.Invalidate
 00578762    mov         eax,dword ptr [ebp-0C]
 00578765    mov         esp,ebp
 00578767    pop         ebp
 00578768    ret
end;*}

//0057876C
{*procedure sub_0057876C(?:?; ?:?);
begin
 0057876C    push        ebp
 0057876D    mov         ebp,esp
 0057876F    add         esp,0FFFFFFF4
 00578772    mov         dword ptr [ebp-0C],ecx
 00578775    mov         dword ptr [ebp-8],edx
 00578778    mov         dword ptr [ebp-4],eax
 0057877B    mov         ecx,dword ptr [ebp-0C]
 0057877E    mov         edx,dword ptr [ebp-8]
 00578781    mov         eax,dword ptr [ebp-4]
 00578784    call        006482A0
 00578789    mov         eax,dword ptr [ebp-4]
 0057878C    cmp         dword ptr [eax+30],0;TTabList.......................Tabs:TTabSet
>00578790    je          005787BA
 00578792    mov         eax,dword ptr [ebp-4]
 00578795    mov         eax,dword ptr [eax+30];TTabList........................Tabs:TTabSet
 00578798    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057879E    cmp         eax,dword ptr [ebp-8]
>005787A1    jl          005787AF
 005787A3    mov         eax,dword ptr [ebp-4]
 005787A6    mov         eax,dword ptr [eax+30];TTabList.........................Tabs:TTabSet
 005787A9    inc         dword ptr [eax+21C];TTabSet.TabIndex:Integer
 005787AF    mov         eax,dword ptr [ebp-4]
 005787B2    mov         eax,dword ptr [eax+30];TTabList..........................Tabs:TTabSet
 005787B5    mov         edx,dword ptr [eax]
 005787B7    call        dword ptr [edx+7C];TWinControl.Invalidate
 005787BA    mov         esp,ebp
 005787BC    pop         ebp
 005787BD    ret
end;*}

//005787C0
{*procedure sub_005787C0(?:?);
begin
 005787C0    push        ebp
 005787C1    mov         ebp,esp
 005787C3    add         esp,0FFFFFFF4
 005787C6    push        esi
 005787C7    mov         dword ptr [ebp-8],edx
 005787CA    mov         dword ptr [ebp-4],eax
 005787CD    mov         eax,dword ptr [ebp-4]
 005787D0    mov         eax,dword ptr [eax+30];TTabList...........................Tabs:TTabSet
 005787D3    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 005787D9    mov         dword ptr [ebp-0C],eax
 005787DC    mov         edx,dword ptr [ebp-8]
 005787DF    mov         eax,dword ptr [ebp-4]
 005787E2    call        00647F10
 005787E7    mov         eax,dword ptr [ebp-4]
 005787EA    mov         edx,dword ptr [eax]
 005787EC    call        dword ptr [edx+14];TTabList.sub_00648198
 005787EF    cmp         eax,dword ptr [ebp-0C]
>005787F2    jle         00578805
 005787F4    mov         eax,dword ptr [ebp-4]
 005787F7    mov         eax,dword ptr [eax+30];TTabList............................Tabs:TTabSet
 005787FA    mov         edx,dword ptr [ebp-0C]
 005787FD    mov         dword ptr [eax+21C],edx;TTabSet.TabIndex:Integer
>00578803    jmp         0057881A
 00578805    mov         eax,dword ptr [ebp-4]
 00578808    mov         edx,dword ptr [eax]
 0057880A    call        dword ptr [edx+14];TTabList.sub_00648198
 0057880D    dec         eax
 0057880E    mov         edx,dword ptr [ebp-4]
 00578811    mov         edx,dword ptr [edx+30];TTabList.............................Tabs:TTabSet
 00578814    mov         dword ptr [edx+21C],eax;TTabSet.TabIndex:Integer
 0057881A    mov         eax,dword ptr [ebp-4]
 0057881D    mov         eax,dword ptr [eax+30];TTabList..............................Tabs:TTabSet
 00578820    mov         edx,dword ptr [eax]
 00578822    call        dword ptr [edx+7C];TWinControl.Invalidate
 00578825    mov         eax,dword ptr [ebp-4]
 00578828    mov         eax,dword ptr [eax+30];TTabList...............................Tabs:TTabSet
 0057882B    mov         edx,dword ptr [eax]
 0057882D    call        dword ptr [edx+7C];TWinControl.Invalidate
 00578830    mov         eax,dword ptr [ebp-0C]
 00578833    cmp         eax,dword ptr [ebp-8]
>00578836    jne         00578847
 00578838    mov         eax,dword ptr [ebp-4]
 0057883B    mov         eax,dword ptr [eax+30];TTabList................................Tabs:TTabSet
 0057883E    mov         si,0FFEB
 00578842    call        @CallDynaInst;TControl.sub_005F5478
 00578847    pop         esi
 00578848    mov         esp,ebp
 0057884A    pop         ebp
 0057884B    ret
end;*}

//0057884C
{*procedure sub_0057884C(?:?; ?:?);
begin
 0057884C    push        ebp
 0057884D    mov         ebp,esp
 0057884F    add         esp,0FFFFFFF4
 00578852    mov         dword ptr [ebp-0C],ecx
 00578855    mov         dword ptr [ebp-8],edx
 00578858    mov         dword ptr [ebp-4],eax
 0057885B    mov         ecx,dword ptr [ebp-0C]
 0057885E    mov         edx,dword ptr [ebp-8]
 00578861    mov         eax,dword ptr [ebp-4]
 00578864    call        006483D8
 00578869    mov         eax,dword ptr [ebp-4]
 0057886C    cmp         dword ptr [eax+30],0;TTabList.................................Tabs:TTabSet
>00578870    je          0057887D
 00578872    mov         eax,dword ptr [ebp-4]
 00578875    mov         eax,dword ptr [eax+30];TTabList..................................Tabs:TTabSet
 00578878    mov         edx,dword ptr [eax]
 0057887A    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057887D    mov         esp,ebp
 0057887F    pop         ebp
 00578880    ret
end;*}

//00578884
procedure TTabList.Clear;
begin
{*
 00578884    push        ebp
 00578885    mov         ebp,esp
 00578887    push        ecx
 00578888    mov         dword ptr [ebp-4],eax
 0057888B    mov         eax,dword ptr [ebp-4]
 0057888E    call        TStringList.Clear
 00578893    mov         eax,dword ptr [ebp-4]
 00578896    mov         eax,dword ptr [eax+30];TTabList...................................Tabs:TTabSet
 00578899    mov         dword ptr [eax+21C],0FFFFFFFF;TTabSet.TabIndex:Integer
 005788A3    mov         eax,dword ptr [ebp-4]
 005788A6    mov         eax,dword ptr [eax+30];TTabList....................................Tabs:TTabSet
 005788A9    mov         edx,dword ptr [eax]
 005788AB    call        dword ptr [edx+7C];TWinControl.Invalidate
 005788AE    pop         ecx
 005788AF    pop         ebp
 005788B0    ret
*}
end;

//005788B4
{*procedure sub_005788B4(?:?);
begin
 005788B4    push        ebp
 005788B5    mov         ebp,esp
 005788B7    add         esp,0FFFFFFF8
 005788BA    mov         dword ptr [ebp-8],edx
 005788BD    mov         dword ptr [ebp-4],eax
 005788C0    push        0
 005788C2    push        0
 005788C4    push        0B
 005788C6    mov         eax,dword ptr [ebp-4]
 005788C9    mov         eax,dword ptr [eax+30];TTabList.....................................Tabs:TTabSet
 005788CC    call        TWinControl.GetHandle
 005788D1    push        eax
 005788D2    call        USER32.SendMessageA
 005788D7    mov         edx,dword ptr [ebp-8]
 005788DA    mov         eax,dword ptr [ebp-4]
 005788DD    call        00646D14
 005788E2    push        0
 005788E4    push        1
 005788E6    push        0B
 005788E8    mov         eax,dword ptr [ebp-4]
 005788EB    mov         eax,dword ptr [eax+30];TTabList......................................Tabs:TTabSet
 005788EE    call        TWinControl.GetHandle
 005788F3    push        eax
 005788F4    call        USER32.SendMessageA
 005788F9    mov         eax,dword ptr [ebp-4]
 005788FC    mov         eax,dword ptr [eax+30];TTabList.......................................Tabs:TTabSet
 005788FF    mov         edx,dword ptr [eax]
 00578901    call        dword ptr [edx+7C];TWinControl.Invalidate
 00578904    pop         ecx
 00578905    pop         ecx
 00578906    pop         ebp
 00578907    ret
end;*}

//00578908
constructor TTabSet.Create(AOwner:TComponent);
begin
{*
 00578908    push        ebp
 00578909    mov         ebp,esp
 0057890B    add         esp,0FFFFFFF0
 0057890E    push        ebx
 0057890F    xor         ebx,ebx
 00578911    mov         dword ptr [ebp-10],ebx
 00578914    test        dl,dl
>00578916    je          00578920
 00578918    add         esp,0FFFFFFF0
 0057891B    call        @ClassCreate
 00578920    mov         dword ptr [ebp-0C],ecx
 00578923    mov         byte ptr [ebp-5],dl
 00578926    mov         dword ptr [ebp-4],eax
 00578929    xor         eax,eax
 0057892B    push        ebp
 0057892C    push        578ACC
 00578931    push        dword ptr fs:[eax]
 00578934    mov         dword ptr fs:[eax],esp
 00578937    mov         ecx,dword ptr [ebp-0C]
 0057893A    xor         edx,edx
 0057893C    mov         eax,dword ptr [ebp-4]
 0057893F    call        TCustomControl.Create
 00578944    mov         eax,dword ptr [ebp-4]
 00578947    mov         edx,dword ptr ds:[578AF4];0xC2 gvar_00578AF4
 0057894D    mov         dword ptr [eax+50],edx;TTabSet.FControlStyle:TControlStyle
 00578950    mov         edx,0B9
 00578955    mov         eax,dword ptr [ebp-4]
 00578958    call        TControl.SetWidth
 0057895D    mov         edx,15
 00578962    mov         eax,dword ptr [ebp-4]
 00578965    call        TControl.SetHeight
 0057896A    mov         dl,1
 0057896C    mov         eax,[006422A4];TList
 00578971    call        TObject.Create;TList.Create
 00578976    mov         edx,dword ptr [ebp-4]
 00578979    mov         dword ptr [edx+264],eax;TTabSet.TabPositions:TList
 0057897F    mov         eax,dword ptr [ebp-4]
 00578982    mov         dword ptr [eax+268],14;TTabSet.FTabHeight:Integer
 0057898C    mov         dl,1
 0057898E    mov         eax,[005777B8];TTabList
 00578993    call        TObject.Create;TTabList.Create
 00578998    mov         edx,dword ptr [ebp-4]
 0057899B    mov         dword ptr [edx+218],eax;TTabSet.Tabs:TStrings
 005789A1    mov         eax,dword ptr [ebp-4]
 005789A4    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 005789AA    mov         edx,dword ptr [ebp-4]
 005789AD    mov         dword ptr [eax+30],edx
 005789B0    mov         eax,dword ptr [ebp-4]
 005789B3    call        00578BA8
 005789B8    mov         eax,dword ptr [ebp-4]
 005789BB    call        00578B20
 005789C0    mov         eax,dword ptr [ebp-4]
 005789C3    mov         dword ptr [eax+21C],0FFFFFFFF;TTabSet.TabIndex:Integer
 005789CD    mov         eax,dword ptr [ebp-4]
 005789D0    xor         edx,edx
 005789D2    mov         dword ptr [eax+220],edx;TTabSet.FFirstIndex:Integer
 005789D8    mov         eax,dword ptr [ebp-4]
 005789DB    xor         edx,edx
 005789DD    mov         dword ptr [eax+224],edx;TTabSet.VisibleTabs:Integer
 005789E3    mov         eax,dword ptr [ebp-4]
 005789E6    mov         dword ptr [eax+210],5;TTabSet.StartMargin:Integer
 005789F0    mov         eax,dword ptr [ebp-4]
 005789F3    mov         dword ptr [eax+214],5;TTabSet.EndMargin:Integer
 005789FD    mov         eax,dword ptr [ebp-4]
 00578A00    mov         dword ptr [eax+228],8000000F;TTabSet.SelectedColor:TColor
 00578A0A    mov         eax,dword ptr [ebp-4]
 00578A0D    mov         dword ptr [eax+22C],80000005;TTabSet.UnselectedColor:TColor
 00578A17    mov         eax,dword ptr [ebp-4]
 00578A1A    mov         dword ptr [eax+230],8000000F;TTabSet.BackgroundColor:TColor
 00578A24    mov         eax,dword ptr [ebp-4]
 00578A27    mov         byte ptr [eax+234],1;TTabSet.DitherBackground:Boolean
 00578A2E    mov         eax,dword ptr [ebp-4]
 00578A31    mov         edx,dword ptr [eax+260];TTabSet.BrushBitmap:TBitmap
 00578A37    mov         eax,dword ptr [ebp-4]
 00578A3A    call        0057A474
 00578A3F    mov         eax,dword ptr [ebp-4]
 00578A42    mov         byte ptr [eax+235],1;TTabSet.AutoScroll:Boolean
 00578A49    mov         eax,dword ptr [ebp-4]
 00578A4C    mov         byte ptr [eax+236],0;TTabSet.Style:TTabStyle
 00578A53    mov         eax,dword ptr [ebp-4]
 00578A56    mov         dword ptr [eax+238],14;TTabSet.TabHeight:Integer
 00578A60    xor         edx,edx
 00578A62    mov         eax,dword ptr [ebp-4]
 00578A65    call        TCCalendar.SetParentFont
 00578A6A    lea         eax,[ebp-10]
 00578A6D    mov         edx,dword ptr ds:[6E9DC8];^gvar_006E3CC0
 00578A73    add         edx,0B
 00578A76    call        @LStrFromString
 00578A7B    mov         edx,dword ptr [ebp-10]
 00578A7E    mov         eax,dword ptr [ebp-4]
 00578A81    mov         eax,dword ptr [eax+68];TTabSet.FFont:TFont
 00578A84    call        TFont.SetName
 00578A89    mov         edx,dword ptr ds:[6E9DC8];^gvar_006E3CC0
 00578A8F    mov         edx,dword ptr [edx+4]
 00578A92    mov         eax,dword ptr [ebp-4]
 00578A95    mov         eax,dword ptr [eax+68];TTabSet.FFont:TFont
 00578A98    call        TFont.SetHeight
 00578A9D    mov         eax,dword ptr [ebp-4]
 00578AA0    mov         eax,dword ptr [eax+68];TTabSet.FFont:TFont
 00578AA3    mov         dl,byte ptr ds:[578AF8];0x0 gvar_00578AF8
 00578AA9    call        TFont.SetStyle
 00578AAE    mov         eax,dword ptr [ebp-4]
 00578AB1    call        0057A018
 00578AB6    xor         eax,eax
 00578AB8    pop         edx
 00578AB9    pop         ecx
 00578ABA    pop         ecx
 00578ABB    mov         dword ptr fs:[eax],edx
 00578ABE    push        578AD3
 00578AC3    lea         eax,[ebp-10]
 00578AC6    call        @LStrClr
 00578ACB    ret
>00578ACC    jmp         @HandleFinally
>00578AD1    jmp         00578AC3
 00578AD3    mov         eax,dword ptr [ebp-4]
 00578AD6    cmp         byte ptr [ebp-5],0
>00578ADA    je          00578AEB
 00578ADC    call        @AfterConstruction
 00578AE1    pop         dword ptr fs:[0]
 00578AE8    add         esp,0C
 00578AEB    mov         eax,dword ptr [ebp-4]
 00578AEE    pop         ebx
 00578AEF    mov         esp,ebp
 00578AF1    pop         ebp
 00578AF2    ret
*}
end;

//00578AFC
{*procedure sub_00578AFC(?:?);
begin
 00578AFC    push        ebp
 00578AFD    mov         ebp,esp
 00578AFF    add         esp,0FFFFFFF8
 00578B02    mov         dword ptr [ebp-8],edx
 00578B05    mov         dword ptr [ebp-4],eax
 00578B08    mov         edx,dword ptr [ebp-8]
 00578B0B    mov         eax,dword ptr [ebp-4]
 00578B0E    call        005F7FC0
 00578B13    mov         eax,dword ptr [ebp-8]
 00578B16    and         dword ptr [eax+24],0FFFFFFFC
 00578B1A    pop         ecx
 00578B1B    pop         ecx
 00578B1C    pop         ebp
 00578B1D    ret
end;*}

//00578B20
procedure sub_00578B20(?:TTabSet);
begin
{*
 00578B20    push        ebp
 00578B21    mov         ebp,esp
 00578B23    add         esp,0FFFFFFF8
 00578B26    mov         dword ptr [ebp-4],eax
 00578B29    mov         ecx,dword ptr [ebp-4]
 00578B2C    mov         dl,1
 00578B2E    mov         eax,[005775B4];TScroller
 00578B33    call        TScroller.Create;TScroller.Create
 00578B38    mov         edx,dword ptr [ebp-4]
 00578B3B    mov         dword ptr [edx+26C],eax;TTabSet.FScroller:TScroller
 00578B41    mov         eax,dword ptr [ebp-4]
 00578B44    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578B4A    mov         dword ptr [ebp-8],eax
 00578B4D    mov         edx,dword ptr [ebp-4]
 00578B50    mov         eax,dword ptr [ebp-8]
 00578B53    mov         ecx,dword ptr [eax]
 00578B55    call        dword ptr [ecx+68];TScroller.sub_005F34DC
 00578B58    mov         edx,3
 00578B5D    mov         eax,dword ptr [ebp-8]
 00578B60    call        TControl.SetTop
 00578B65    xor         edx,edx
 00578B67    mov         eax,dword ptr [ebp-8]
 00578B6A    call        TScroller.SetMin
 00578B6F    xor         edx,edx
 00578B71    mov         eax,dword ptr [ebp-8]
 00578B74    call        TScroller.SetMax
 00578B79    xor         edx,edx
 00578B7B    mov         eax,dword ptr [ebp-8]
 00578B7E    call        TScroller.SetPosition
 00578B83    xor         edx,edx
 00578B85    mov         eax,dword ptr [ebp-8]
 00578B88    call        TCCalendar.SetVisible
 00578B8D    mov         eax,dword ptr [ebp-4]
 00578B90    mov         edx,dword ptr [ebp-8]
 00578B93    mov         dword ptr [edx+224],eax;TScroller.?f224:TTabSet
 00578B99    mov         dword ptr [edx+220],578C68;TScroller.OnClick:TNotifyEvent
 00578BA3    pop         ecx
 00578BA4    pop         ecx
 00578BA5    pop         ebp
 00578BA6    ret
*}
end;

//00578BA8
procedure sub_00578BA8(?:TTabSet);
begin
{*
 00578BA8    push        ebp
 00578BA9    mov         ebp,esp
 00578BAB    push        ecx
 00578BAC    mov         dword ptr [ebp-4],eax
 00578BAF    mov         dl,1
 00578BB1    mov         eax,[005BEDD4];TBitmap
 00578BB6    call        TBitmap.Create;TBitmap.Create
 00578BBB    mov         edx,dword ptr [ebp-4]
 00578BBE    mov         dword ptr [edx+25C],eax;TTabSet.MemBitmap:TBitmap
 00578BC4    mov         dl,1
 00578BC6    mov         eax,[005BEDD4];TBitmap
 00578BCB    call        TBitmap.Create;TBitmap.Create
 00578BD0    mov         edx,dword ptr [ebp-4]
 00578BD3    mov         dword ptr [edx+260],eax;TTabSet.BrushBitmap:TBitmap
 00578BD9    pop         ecx
 00578BDA    pop         ebp
 00578BDB    ret
*}
end;

//00578BDC
destructor TTabSet.Destroy;
begin
{*
 00578BDC    push        ebp
 00578BDD    mov         ebp,esp
 00578BDF    add         esp,0FFFFFFF8
 00578BE2    call        @BeforeDestruction
 00578BE7    mov         byte ptr [ebp-5],dl
 00578BEA    mov         dword ptr [ebp-4],eax
 00578BED    mov         eax,dword ptr [ebp-4]
 00578BF0    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 00578BF6    call        TObject.Free
 00578BFB    mov         eax,dword ptr [ebp-4]
 00578BFE    mov         eax,dword ptr [eax+264];TTabSet.TabPositions:TList
 00578C04    call        TObject.Free
 00578C09    mov         eax,dword ptr [ebp-4]
 00578C0C    call        00578C34
 00578C11    mov         dl,byte ptr [ebp-5]
 00578C14    and         dl,0FC
 00578C17    mov         eax,dword ptr [ebp-4]
 00578C1A    call        TCustomControl.Destroy
 00578C1F    cmp         byte ptr [ebp-5],0
>00578C23    jle         00578C2D
 00578C25    mov         eax,dword ptr [ebp-4]
 00578C28    call        @ClassDestroy
 00578C2D    pop         ecx
 00578C2E    pop         ecx
 00578C2F    pop         ebp
 00578C30    ret
*}
end;

//00578C34
procedure sub_00578C34(?:TTabSet);
begin
{*
 00578C34    push        ebp
 00578C35    mov         ebp,esp
 00578C37    push        ecx
 00578C38    mov         dword ptr [ebp-4],eax
 00578C3B    mov         eax,dword ptr [ebp-4]
 00578C3E    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578C44    call        TObject.Free
 00578C49    mov         eax,dword ptr [ebp-4]
 00578C4C    mov         eax,dword ptr [eax+260];TTabSet.BrushBitmap:TBitmap
 00578C52    call        TObject.Free
 00578C57    mov         eax,dword ptr [ebp-4]
 00578C5A    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 00578C60    call        TObject.Free
 00578C65    pop         ecx
 00578C66    pop         ebp
 00578C67    ret
*}
end;

//00578C8C
{*function sub_00578C8C(?:TTabSet; ?:?; ?:?; ?:?):?;
begin
 00578C8C    push        ebp
 00578C8D    mov         ebp,esp
 00578C8F    add         esp,0FFFFFFE8
 00578C92    mov         dword ptr [ebp-0C],ecx
 00578C95    mov         dword ptr [ebp-8],edx
 00578C98    mov         dword ptr [ebp-4],eax
 00578C9B    xor         edx,edx
 00578C9D    mov         eax,dword ptr [ebp-4]
 00578CA0    mov         eax,dword ptr [eax+264]
 00578CA6    call        00645404
 00578CAB    mov         eax,dword ptr [ebp+8]
 00578CAE    mov         dword ptr [ebp-14],eax
>00578CB1    jmp         00578CF0
 00578CB3    mov         ax,word ptr [ebp-8]
 00578CB7    mov         word ptr [ebp-16],ax
 00578CBB    mov         edx,dword ptr [ebp-14]
 00578CBE    mov         eax,dword ptr [ebp-4]
 00578CC1    call        0057B040
 00578CC6    mov         word ptr [ebp-18],ax
 00578CCA    movzx       eax,word ptr [ebp-18]
 00578CCE    add         eax,9
 00578CD1    add         dword ptr [ebp-8],eax
 00578CD4    mov         eax,dword ptr [ebp-8]
 00578CD7    cmp         eax,dword ptr [ebp-0C]
>00578CDA    jg          00578CF0
 00578CDC    mov         edx,dword ptr [ebp-18]
 00578CDF    mov         eax,dword ptr [ebp-4]
 00578CE2    mov         eax,dword ptr [eax+264]
 00578CE8    call        TList.Add
 00578CED    inc         dword ptr [ebp-14]
 00578CF0    mov         eax,dword ptr [ebp-8]
 00578CF3    cmp         eax,dword ptr [ebp-0C]
>00578CF6    jge         00578D0B
 00578CF8    mov         eax,dword ptr [ebp-4]
 00578CFB    mov         eax,dword ptr [eax+218]
 00578D01    mov         edx,dword ptr [eax]
 00578D03    call        dword ptr [edx+14]
 00578D06    cmp         eax,dword ptr [ebp-14]
>00578D09    jg          00578CB3
 00578D0B    mov         eax,dword ptr [ebp-14]
 00578D0E    sub         eax,dword ptr [ebp+8]
 00578D11    mov         dword ptr [ebp-10],eax
 00578D14    mov         eax,dword ptr [ebp-10]
 00578D17    mov         esp,ebp
 00578D19    pop         ebp
 00578D1A    ret         8
end;*}

//00578D20
procedure sub_00578D20;
begin
{*
 00578D20    push        ebp
 00578D21    mov         ebp,esp
 00578D23    add         esp,0FFFFFFA8
 00578D26    push        ebx
 00578D27    xor         edx,edx
 00578D29    mov         dword ptr [ebp-58],edx
 00578D2C    mov         dword ptr [ebp-54],edx
 00578D2F    mov         dword ptr [ebp-4],eax
 00578D32    xor         eax,eax
 00578D34    push        ebp
 00578D35    push        57948D
 00578D3A    push        dword ptr fs:[eax]
 00578D3D    mov         dword ptr fs:[eax],esp
 00578D40    mov         eax,dword ptr [ebp-4]
 00578D43    call        TWinControl.HandleAllocated
 00578D48    test        al,al
>00578D4A    je          00579472
 00578D50    mov         eax,dword ptr [ebp-4]
 00578D53    call        TControl.GetClientWidth
 00578D58    mov         edx,eax
 00578D5A    mov         eax,dword ptr [ebp-4]
 00578D5D    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578D63    mov         ecx,dword ptr [eax]
 00578D65    call        dword ptr [ecx+40];TBitmap.SetWidth
 00578D68    mov         eax,dword ptr [ebp-4]
 00578D6B    call        TControl.GetClientHeight
 00578D70    mov         edx,dword ptr [ebp-4]
 00578D73    mov         edx,dword ptr [edx+268];TTabSet.FTabHeight:Integer
 00578D79    add         edx,5
 00578D7C    cmp         eax,edx
>00578D7E    jge         00578D9C
 00578D80    mov         eax,dword ptr [ebp-4]
 00578D83    mov         edx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 00578D89    add         edx,5
 00578D8C    mov         eax,dword ptr [ebp-4]
 00578D8F    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578D95    mov         ecx,dword ptr [eax]
 00578D97    call        dword ptr [ecx+34];TBitmap.SetHeight
>00578D9A    jmp         00578DB4
 00578D9C    mov         eax,dword ptr [ebp-4]
 00578D9F    call        TControl.GetClientHeight
 00578DA4    mov         edx,eax
 00578DA6    mov         eax,dword ptr [ebp-4]
 00578DA9    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578DAF    mov         ecx,dword ptr [eax]
 00578DB1    call        dword ptr [ecx+34];TBitmap.SetHeight
 00578DB4    mov         eax,dword ptr [ebp-4]
 00578DB7    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578DBD    call        TBitmap.GetCanvas
 00578DC2    mov         edx,dword ptr [ebp-4]
 00578DC5    mov         edx,dword ptr [edx+208];TTabSet............................................................
 00578DCB    mov         edx,dword ptr [edx+0C];TCanvas.Font:TFont
 00578DCE    call        TCanvas.SetFont
 00578DD3    mov         eax,dword ptr [ebp-4]
 00578DD6    mov         eax,dword ptr [eax+210];TTabSet.StartMargin:Integer
 00578DDC    add         eax,9
 00578DDF    mov         dword ptr [ebp-8],eax
 00578DE2    mov         eax,dword ptr [ebp-4]
 00578DE5    mov         eax,dword ptr [eax+48];TTabSet.Width:Integer
 00578DE8    mov         edx,dword ptr [ebp-4]
 00578DEB    sub         eax,dword ptr [edx+214]
 00578DF1    mov         dword ptr [ebp-0C],eax
 00578DF4    mov         eax,dword ptr [ebp-4]
 00578DF7    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578DFD    mov         edx,dword ptr [ebp-4]
 00578E00    mov         edx,dword ptr [edx+48];TTabSet.Width:Integer
 00578E03    sub         edx,dword ptr [eax+48]
 00578E06    sub         edx,2
 00578E09    mov         eax,dword ptr [ebp-4]
 00578E0C    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578E12    call        TControl.SetLeft
 00578E17    mov         eax,dword ptr [ebp-4]
 00578E1A    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578E20    call        TBitmap.GetCanvas
 00578E25    push        eax
 00578E26    mov         eax,dword ptr [ebp-4]
 00578E29    mov         eax,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 00578E2F    push        eax
 00578E30    mov         ecx,dword ptr [ebp-0C]
 00578E33    mov         edx,dword ptr [ebp-8]
 00578E36    mov         eax,dword ptr [ebp-4]
 00578E39    call        00578C8C
 00578E3E    mov         edx,dword ptr [ebp-4]
 00578E41    mov         dword ptr [edx+224],eax;TTabSet.VisibleTabs:Integer
 00578E47    mov         eax,dword ptr [ebp-4]
 00578E4A    cmp         byte ptr [eax+235],0;TTabSet.AutoScroll:Boolean
>00578E51    je          00578F2C
 00578E57    mov         eax,dword ptr [ebp-4]
 00578E5A    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 00578E60    mov         edx,dword ptr [eax]
 00578E62    call        dword ptr [edx+14];@AbstractError
 00578E65    mov         edx,dword ptr [ebp-4]
 00578E68    cmp         eax,dword ptr [edx+224];TTabSet.VisibleTabs:Integer
>00578E6E    jle         00578F2C
 00578E74    mov         eax,dword ptr [ebp-4]
 00578E77    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578E7D    mov         eax,dword ptr [eax+48];TScroller.Width:Integer
 00578E80    sub         eax,4
 00578E83    sub         dword ptr [ebp-0C],eax
 00578E86    mov         eax,dword ptr [ebp-4]
 00578E89    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578E8F    call        TBitmap.GetCanvas
 00578E94    push        eax
 00578E95    mov         eax,dword ptr [ebp-4]
 00578E98    mov         eax,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 00578E9E    push        eax
 00578E9F    mov         ecx,dword ptr [ebp-0C]
 00578EA2    mov         edx,dword ptr [ebp-8]
 00578EA5    mov         eax,dword ptr [ebp-4]
 00578EA8    call        00578C8C
 00578EAD    mov         edx,dword ptr [ebp-4]
 00578EB0    mov         dword ptr [edx+224],eax;TTabSet.VisibleTabs:Integer
 00578EB6    mov         dl,1
 00578EB8    mov         eax,dword ptr [ebp-4]
 00578EBB    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578EC1    call        TCCalendar.SetVisible
 00578EC6    push        5
 00578EC8    mov         eax,dword ptr [ebp-4]
 00578ECB    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578ED1    call        TWinControl.GetHandle
 00578ED6    push        eax
 00578ED7    call        USER32.ShowWindow
 00578EDC    xor         edx,edx
 00578EDE    mov         eax,dword ptr [ebp-4]
 00578EE1    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578EE7    call        TScroller.SetMin
 00578EEC    mov         eax,dword ptr [ebp-4]
 00578EEF    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 00578EF5    mov         edx,dword ptr [eax]
 00578EF7    call        dword ptr [edx+14];@AbstractError
 00578EFA    mov         edx,eax
 00578EFC    mov         eax,dword ptr [ebp-4]
 00578EFF    sub         edx,dword ptr [eax+224]
 00578F05    mov         eax,dword ptr [ebp-4]
 00578F08    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578F0E    call        TScroller.SetMax
 00578F13    mov         eax,dword ptr [ebp-4]
 00578F16    mov         edx,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 00578F1C    mov         eax,dword ptr [ebp-4]
 00578F1F    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578F25    call        TScroller.SetPosition
>00578F2A    jmp         00578F6B
 00578F2C    mov         eax,dword ptr [ebp-4]
 00578F2F    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 00578F35    mov         edx,dword ptr [eax]
 00578F37    call        dword ptr [edx+14];@AbstractError
 00578F3A    mov         edx,dword ptr [ebp-4]
 00578F3D    cmp         eax,dword ptr [edx+224];TTabSet.VisibleTabs:Integer
>00578F43    jg          00578F6B
 00578F45    xor         edx,edx
 00578F47    mov         eax,dword ptr [ebp-4]
 00578F4A    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578F50    call        TCCalendar.SetVisible
 00578F55    push        0
 00578F57    mov         eax,dword ptr [ebp-4]
 00578F5A    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 00578F60    call        TWinControl.GetHandle
 00578F65    push        eax
 00578F66    call        USER32.ShowWindow
 00578F6B    mov         eax,dword ptr [ebp-4]
 00578F6E    cmp         byte ptr [eax+270],0;TTabSet.FDoFix:Boolean
>00578F75    je          00578FAF
 00578F77    mov         eax,dword ptr [ebp-4]
 00578F7A    call        0057A6AC
 00578F7F    mov         eax,dword ptr [ebp-4]
 00578F82    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578F88    call        TBitmap.GetCanvas
 00578F8D    push        eax
 00578F8E    mov         eax,dword ptr [ebp-4]
 00578F91    mov         eax,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 00578F97    push        eax
 00578F98    mov         ecx,dword ptr [ebp-0C]
 00578F9B    mov         edx,dword ptr [ebp-8]
 00578F9E    mov         eax,dword ptr [ebp-4]
 00578FA1    call        00578C8C
 00578FA6    mov         edx,dword ptr [ebp-4]
 00578FA9    mov         dword ptr [edx+224],eax;TTabSet.VisibleTabs:Integer
 00578FAF    mov         eax,dword ptr [ebp-4]
 00578FB2    mov         byte ptr [eax+270],0;TTabSet.FDoFix:Boolean
 00578FB9    mov         eax,dword ptr [ebp-4]
 00578FBC    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578FC2    call        TBitmap.GetCanvas
 00578FC7    mov         dword ptr [ebp-20],eax
 00578FCA    mov         eax,dword ptr [ebp-20]
 00578FCD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00578FD0    mov         edx,dword ptr [ebp-4]
 00578FD3    mov         edx,dword ptr [edx+260];TTabSet.BrushBitmap:TBitmap
 00578FD9    call        TBrush.SetBitmap
 00578FDE    mov         eax,dword ptr [ebp-4]
 00578FE1    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578FE7    mov         edx,dword ptr [eax]
 00578FE9    call        dword ptr [edx+20];TBitmap.GetHeight
 00578FEC    push        eax
 00578FED    lea         eax,[ebp-50]
 00578FF0    push        eax
 00578FF1    mov         eax,dword ptr [ebp-4]
 00578FF4    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00578FFA    mov         edx,dword ptr [eax]
 00578FFC    call        dword ptr [edx+2C];TBitmap.GetWidth
 00578FFF    mov         ecx,eax
 00579001    xor         edx,edx
 00579003    xor         eax,eax
 00579005    call        Rect
 0057900A    lea         edx,[ebp-50]
 0057900D    mov         eax,dword ptr [ebp-20]
 00579010    call        TCanvas.FillRect
 00579015    mov         eax,dword ptr [ebp-20]
 00579018    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057901B    mov         edx,1
 00579020    call        TPen.SetWidth
 00579025    mov         eax,dword ptr [ebp-20]
 00579028    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057902B    mov         edx,80000010
 00579030    call        TPen.SetColor
 00579035    xor         ecx,ecx
 00579037    xor         edx,edx
 00579039    mov         eax,dword ptr [ebp-20]
 0057903C    call        005C12F0
 00579041    mov         eax,dword ptr [ebp-4]
 00579044    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057904A    mov         edx,dword ptr [eax]
 0057904C    call        dword ptr [edx+2C];TBitmap.GetWidth
 0057904F    mov         edx,eax
 00579051    inc         edx
 00579052    xor         ecx,ecx
 00579054    mov         eax,dword ptr [ebp-20]
 00579057    call        005C1274
 0057905C    mov         eax,dword ptr [ebp-4]
 0057905F    cmp         byte ptr [eax+271],0;TTabSet.SoftTop:Boolean
>00579066    jne         005790A5
 00579068    mov         eax,dword ptr [ebp-20]
 0057906B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057906E    mov         edx,80000006
 00579073    call        TPen.SetColor
 00579078    mov         ecx,1
 0057907D    xor         edx,edx
 0057907F    mov         eax,dword ptr [ebp-20]
 00579082    call        005C12F0
 00579087    mov         eax,dword ptr [ebp-4]
 0057908A    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00579090    mov         edx,dword ptr [eax]
 00579092    call        dword ptr [edx+2C];TBitmap.GetWidth
 00579095    mov         edx,eax
 00579097    inc         edx
 00579098    mov         ecx,1
 0057909D    mov         eax,dword ptr [ebp-20]
 005790A0    call        005C1274
 005790A5    mov         eax,dword ptr [ebp-4]
 005790A8    mov         eax,dword ptr [eax+264];TTabSet.TabPositions:TList
 005790AE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005790B1    dec         eax
 005790B2    test        eax,eax
>005790B4    jl          00579456
 005790BA    inc         eax
 005790BB    mov         dword ptr [ebp-24],eax
 005790BE    mov         dword ptr [ebp-14],0
 005790C5    mov         edx,dword ptr [ebp-14]
 005790C8    mov         eax,dword ptr [ebp-4]
 005790CB    mov         eax,dword ptr [eax+264];TTabSet.TabPositions:TList
 005790D1    call        TList.Get
 005790D6    mov         dword ptr [ebp-10],eax
 005790D9    cmp         dword ptr [ebp-14],0
 005790DD    sete        byte ptr [ebp-17]
 005790E1    mov         eax,dword ptr [ebp-4]
 005790E4    mov         eax,dword ptr [eax+224];TTabSet.VisibleTabs:Integer
 005790EA    dec         eax
 005790EB    cmp         eax,dword ptr [ebp-14]
 005790EE    sete        byte ptr [ebp-18]
 005790F2    mov         eax,dword ptr [ebp-14]
 005790F5    mov         edx,dword ptr [ebp-4]
 005790F8    add         eax,dword ptr [edx+220];TTabSet.FFirstIndex:Integer
 005790FE    mov         edx,dword ptr [ebp-4]
 00579101    cmp         eax,dword ptr [edx+21C];TTabSet.TabIndex:Integer
 00579107    sete        byte ptr [ebp-19]
 0057910B    mov         eax,dword ptr [ebp-14]
 0057910E    mov         edx,dword ptr [ebp-4]
 00579111    add         eax,dword ptr [edx+220];TTabSet.FFirstIndex:Integer
 00579117    dec         eax
 00579118    mov         edx,dword ptr [ebp-4]
 0057911B    cmp         eax,dword ptr [edx+21C];TTabSet.TabIndex:Integer
 00579121    sete        byte ptr [ebp-1A]
 00579125    mov         byte ptr [ebp-16],0
 00579129    cmp         byte ptr [ebp-18],0
>0057912D    je          0057913F
 0057912F    cmp         byte ptr [ebp-19],0
>00579133    je          0057913B
 00579135    mov         byte ptr [ebp-16],3
>00579139    jmp         0057913F
 0057913B    mov         byte ptr [ebp-16],4
 0057913F    cmp         byte ptr [ebp-17],0
>00579143    je          00579157
 00579145    cmp         byte ptr [ebp-19],0
>00579149    je          00579151
 0057914B    mov         byte ptr [ebp-15],1
>0057914F    jmp         00579173
 00579151    mov         byte ptr [ebp-15],2
>00579155    jmp         00579173
 00579157    cmp         byte ptr [ebp-1A],0
>0057915B    je          00579163
 0057915D    mov         byte ptr [ebp-15],6
>00579161    jmp         00579173
 00579163    cmp         byte ptr [ebp-19],0
>00579167    je          0057916F
 00579169    mov         byte ptr [ebp-15],5
>0057916D    jmp         00579173
 0057916F    mov         byte ptr [ebp-15],7
 00579173    cmp         byte ptr [ebp-15],0
>00579177    je          00579199
 00579179    mov         eax,dword ptr [ebp-4]
 0057917C    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 00579182    dec         eax
 00579183    push        eax
 00579184    mov         al,byte ptr [ebp-15]
 00579187    push        eax
 00579188    movzx       edx,word ptr [ebp-0E]
 0057918C    sub         edx,9
 0057918F    xor         ecx,ecx
 00579191    mov         eax,dword ptr [ebp-4]
 00579194    call        0057A240
 00579199    mov         eax,dword ptr [ebp-4]
 0057919C    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 005791A2    push        eax
 005791A3    lea         eax,[ebp-40]
 005791A6    push        eax
 005791A7    movzx       ecx,word ptr [ebp-0E]
 005791AB    movzx       eax,word ptr [ebp-10]
 005791AF    add         ecx,eax
 005791B1    movzx       eax,word ptr [ebp-0E]
 005791B5    xor         edx,edx
 005791B7    call        Rect
 005791BC    mov         eax,dword ptr [ebp-4]
 005791BF    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 005791C5    call        TBitmap.GetCanvas
 005791CA    mov         dword ptr [ebp-28],eax
 005791CD    cmp         byte ptr [ebp-19],0
>005791D1    je          005791E9
 005791D3    mov         eax,dword ptr [ebp-28]
 005791D6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005791D9    mov         edx,dword ptr [ebp-4]
 005791DC    mov         edx,dword ptr [edx+228];TTabSet.SelectedColor:TColor
 005791E2    call        TBrush.SetColor
>005791E7    jmp         005791FD
 005791E9    mov         eax,dword ptr [ebp-28]
 005791EC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005791EF    mov         edx,dword ptr [ebp-4]
 005791F2    mov         edx,dword ptr [edx+22C];TTabSet.UnselectedColor:TColor
 005791F8    call        TBrush.SetColor
 005791FD    push        0
 005791FF    push        0
 00579201    push        0
 00579203    lea         eax,[ebp-40]
 00579206    push        eax
 00579207    push        2
 00579209    push        2
 0057920B    movzx       eax,word ptr [ebp-0E]
 0057920F    push        eax
 00579210    mov         eax,dword ptr [ebp-28]
 00579213    call        TCanvas.GetHandle
 00579218    push        eax
 00579219    call        GDI32.ExtTextOutA
 0057921E    mov         eax,dword ptr [ebp-4]
 00579221    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00579227    call        TBitmap.GetCanvas
 0057922C    mov         edx,dword ptr [ebp-4]
 0057922F    mov         edx,dword ptr [edx+208];TTabSet............................................................
 00579235    mov         edx,dword ptr [edx+0C];TCanvas.Font:TFont
 00579238    call        TCanvas.SetFont
 0057923D    mov         eax,dword ptr [ebp-4]
 00579240    cmp         byte ptr [eax+236],1;TTabSet.Style:TTabStyle
>00579247    jne         0057927A
 00579249    mov         eax,dword ptr [ebp-14]
 0057924C    mov         edx,dword ptr [ebp-4]
 0057924F    add         eax,dword ptr [edx+220];TTabSet.FFirstIndex:Integer
 00579255    push        eax
 00579256    mov         al,byte ptr [ebp-19]
 00579259    push        eax
 0057925A    mov         eax,dword ptr [ebp-4]
 0057925D    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00579263    call        TBitmap.GetCanvas
 00579268    mov         edx,eax
 0057926A    lea         ecx,[ebp-40]
 0057926D    mov         eax,dword ptr [ebp-4]
 00579270    mov         ebx,dword ptr [eax]
 00579272    call        dword ptr [ebx+0C8];TTabSet.sub_0057AB68
>00579278    jmp         005792EF
 0057927A    mov         eax,dword ptr [ebp-4]
 0057927D    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00579283    call        TBitmap.GetCanvas
 00579288    mov         dword ptr [ebp-2C],eax
 0057928B    add         dword ptr [ebp-3C],2
 0057928F    push        1
 00579291    lea         eax,[ebp-40]
 00579294    push        eax
 00579295    lea         ecx,[ebp-54]
 00579298    mov         edx,dword ptr [ebp-14]
 0057929B    mov         eax,dword ptr [ebp-4]
 0057929E    add         edx,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 005792A4    mov         eax,dword ptr [ebp-4]
 005792A7    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 005792AD    mov         ebx,dword ptr [eax]
 005792AF    call        dword ptr [ebx+0C];@AbstractError
 005792B2    mov         eax,dword ptr [ebp-54]
 005792B5    call        @LStrLen
 005792BA    push        eax
 005792BB    lea         ecx,[ebp-58]
 005792BE    mov         edx,dword ptr [ebp-14]
 005792C1    mov         eax,dword ptr [ebp-4]
 005792C4    add         edx,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 005792CA    mov         eax,dword ptr [ebp-4]
 005792CD    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 005792D3    mov         ebx,dword ptr [eax]
 005792D5    call        dword ptr [ebx+0C];@AbstractError
 005792D8    mov         eax,dword ptr [ebp-58]
 005792DB    call        @LStrToPChar
 005792E0    push        eax
 005792E1    mov         eax,dword ptr [ebp-2C]
 005792E4    call        TCanvas.GetHandle
 005792E9    push        eax
 005792EA    call        USER32.DrawTextA
 005792EF    cmp         byte ptr [ebp-16],0
>005792F3    je          00579318
 005792F5    mov         eax,dword ptr [ebp-4]
 005792F8    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 005792FE    dec         eax
 005792FF    push        eax
 00579300    mov         al,byte ptr [ebp-16]
 00579303    push        eax
 00579304    movzx       edx,word ptr [ebp-0E]
 00579308    movzx       eax,word ptr [ebp-10]
 0057930C    add         edx,eax
 0057930E    xor         ecx,ecx
 00579310    mov         eax,dword ptr [ebp-4]
 00579313    call        0057A240
 00579318    mov         eax,dword ptr [ebp-4]
 0057931B    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 00579321    call        TBitmap.GetCanvas
 00579326    mov         dword ptr [ebp-30],eax
 00579329    mov         edx,80000006
 0057932E    mov         eax,dword ptr [ebp-30]
 00579331    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00579334    call        TPen.SetColor
 00579339    mov         eax,dword ptr [ebp-4]
 0057933C    mov         ecx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 00579342    dec         ecx
 00579343    movzx       edx,word ptr [ebp-0E]
 00579347    mov         eax,dword ptr [ebp-30]
 0057934A    call        005C12F0
 0057934F    movzx       edx,word ptr [ebp-0E]
 00579353    movzx       eax,word ptr [ebp-10]
 00579357    add         edx,eax
 00579359    mov         eax,dword ptr [ebp-4]
 0057935C    mov         ecx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 00579362    dec         ecx
 00579363    mov         eax,dword ptr [ebp-30]
 00579366    call        005C1274
 0057936B    cmp         byte ptr [ebp-19],0
>0057936F    je          005793BD
 00579371    mov         edx,80000010
 00579376    mov         eax,dword ptr [ebp-30]
 00579379    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0057937C    call        TPen.SetColor
 00579381    mov         eax,dword ptr [ebp-4]
 00579384    mov         ecx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057938A    sub         ecx,2
 0057938D    movzx       edx,word ptr [ebp-0E]
 00579391    mov         eax,dword ptr [ebp-30]
 00579394    call        005C12F0
 00579399    movzx       edx,word ptr [ebp-0E]
 0057939D    movzx       eax,word ptr [ebp-10]
 005793A1    add         edx,eax
 005793A3    inc         edx
 005793A4    mov         eax,dword ptr [ebp-4]
 005793A7    mov         ecx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 005793AD    sub         ecx,2
 005793B0    mov         eax,dword ptr [ebp-30]
 005793B3    call        005C1274
>005793B8    jmp         0057944A
 005793BD    mov         eax,dword ptr [ebp-4]
 005793C0    cmp         byte ptr [eax+271],0;TTabSet.SoftTop:Boolean
>005793C7    je          005793DF
 005793C9    mov         eax,dword ptr [ebp-4]
 005793CC    mov         edx,dword ptr [eax+230];TTabSet.BackgroundColor:TColor
 005793D2    mov         eax,dword ptr [ebp-30]
 005793D5    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005793D8    call        TPen.SetColor
>005793DD    jmp         005793EF
 005793DF    mov         edx,80000006
 005793E4    mov         eax,dword ptr [ebp-30]
 005793E7    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005793EA    call        TPen.SetColor
 005793EF    movzx       edx,word ptr [ebp-0E]
 005793F3    mov         ecx,1
 005793F8    mov         eax,dword ptr [ebp-30]
 005793FB    call        005C12F0
 00579400    movzx       edx,word ptr [ebp-0E]
 00579404    movzx       eax,word ptr [ebp-10]
 00579408    add         edx,eax
 0057940A    mov         ecx,1
 0057940F    mov         eax,dword ptr [ebp-30]
 00579412    call        005C1274
 00579417    mov         edx,80000010
 0057941C    mov         eax,dword ptr [ebp-30]
 0057941F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00579422    call        TPen.SetColor
 00579427    movzx       edx,word ptr [ebp-0E]
 0057942B    xor         ecx,ecx
 0057942D    mov         eax,dword ptr [ebp-30]
 00579430    call        005C12F0
 00579435    movzx       edx,word ptr [ebp-0E]
 00579439    movzx       eax,word ptr [ebp-10]
 0057943D    add         edx,eax
 0057943F    inc         edx
 00579440    xor         ecx,ecx
 00579442    mov         eax,dword ptr [ebp-30]
 00579445    call        005C1274
 0057944A    inc         dword ptr [ebp-14]
 0057944D    dec         dword ptr [ebp-24]
>00579450    jne         005790C5
 00579456    mov         eax,dword ptr [ebp-4]
 00579459    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057945F    push        eax
 00579460    xor         ecx,ecx
 00579462    xor         edx,edx
 00579464    mov         eax,dword ptr [ebp-4]
 00579467    mov         eax,dword ptr [eax+208];TTabSet............................................................
 0057946D    call        005C1078
 00579472    xor         eax,eax
 00579474    pop         edx
 00579475    pop         ecx
 00579476    pop         ecx
 00579477    mov         dword ptr fs:[eax],edx
 0057947A    push        579494
 0057947F    lea         eax,[ebp-58]
 00579482    mov         edx,2
 00579487    call        @LStrArrayClr
 0057948C    ret
>0057948D    jmp         @HandleFinally
>00579492    jmp         0057947F
 00579494    pop         ebx
 00579495    mov         esp,ebp
 00579497    pop         ebp
 00579498    ret
*}
end;

//0057949C
{*procedure sub_0057949C(?:TCanvas; ?:?);
begin
 0057949C    push        ebp
 0057949D    mov         ebp,esp
 0057949F    add         esp,0FFFFFF84
 005794A2    mov         dword ptr [ebp-4],eax
 005794A5    mov         edx,80000010
 005794AA    mov         eax,dword ptr [ebp-4]
 005794AD    mov         eax,dword ptr [eax+10]
 005794B0    call        TPen.SetColor
 005794B5    lea         ecx,[ebp-1C]
 005794B8    xor         edx,edx
 005794BA    xor         eax,eax
 005794BC    call        Point
 005794C1    mov         eax,dword ptr [ebp-1C]
 005794C4    mov         dword ptr [ebp-14],eax
 005794C7    mov         eax,dword ptr [ebp-18]
 005794CA    mov         dword ptr [ebp-10],eax
 005794CD    lea         ecx,[ebp-24]
 005794D0    xor         edx,edx
 005794D2    mov         eax,0A
 005794D7    call        Point
 005794DC    mov         eax,dword ptr [ebp-24]
 005794DF    mov         dword ptr [ebp-0C],eax
 005794E2    mov         eax,dword ptr [ebp-20]
 005794E5    mov         dword ptr [ebp-8],eax
 005794E8    lea         edx,[ebp-14]
 005794EB    mov         ecx,1
 005794F0    mov         eax,dword ptr [ebp-4]
 005794F3    call        005C13DC
 005794F8    mov         eax,dword ptr [ebp+8]
 005794FB    mov         eax,dword ptr [eax-4]
 005794FE    mov         edx,dword ptr [eax+22C]
 00579504    mov         eax,dword ptr [ebp-4]
 00579507    mov         eax,dword ptr [eax+10]
 0057950A    call        TPen.SetColor
 0057950F    mov         eax,dword ptr [ebp+8]
 00579512    mov         eax,dword ptr [eax-4]
 00579515    mov         edx,dword ptr [eax+22C]
 0057951B    mov         eax,dword ptr [ebp-4]
 0057951E    mov         eax,dword ptr [eax+14]
 00579521    call        TBrush.SetColor
 00579526    lea         ecx,[ebp-1C]
 00579529    mov         edx,1
 0057952E    mov         eax,3
 00579533    call        Point
 00579538    mov         eax,dword ptr [ebp-1C]
 0057953B    mov         dword ptr [ebp-4C],eax
 0057953E    mov         eax,dword ptr [ebp-18]
 00579541    mov         dword ptr [ebp-48],eax
 00579544    lea         ecx,[ebp-24]
 00579547    mov         eax,dword ptr [ebp+8]
 0057954A    mov         edx,dword ptr [eax-8]
 0057954D    mov         eax,8
 00579552    call        Point
 00579557    mov         eax,dword ptr [ebp-24]
 0057955A    mov         dword ptr [ebp-44],eax
 0057955D    mov         eax,dword ptr [ebp-20]
 00579560    mov         dword ptr [ebp-40],eax
 00579563    lea         ecx,[ebp-54]
 00579566    mov         eax,dword ptr [ebp+8]
 00579569    mov         edx,dword ptr [eax-8]
 0057956C    mov         eax,9
 00579571    call        Point
 00579576    mov         eax,dword ptr [ebp-54]
 00579579    mov         dword ptr [ebp-3C],eax
 0057957C    mov         eax,dword ptr [ebp-50]
 0057957F    mov         dword ptr [ebp-38],eax
 00579582    lea         ecx,[ebp-5C]
 00579585    mov         edx,1
 0057958A    mov         eax,9
 0057958F    call        Point
 00579594    mov         eax,dword ptr [ebp-5C]
 00579597    mov         dword ptr [ebp-34],eax
 0057959A    mov         eax,dword ptr [ebp-58]
 0057959D    mov         dword ptr [ebp-30],eax
 005795A0    lea         ecx,[ebp-64]
 005795A3    mov         edx,1
 005795A8    mov         eax,3
 005795AD    call        Point
 005795B2    mov         eax,dword ptr [ebp-64]
 005795B5    mov         dword ptr [ebp-2C],eax
 005795B8    mov         eax,dword ptr [ebp-60]
 005795BB    mov         dword ptr [ebp-28],eax
 005795BE    lea         edx,[ebp-4C]
 005795C1    mov         ecx,4
 005795C6    mov         eax,dword ptr [ebp-4]
 005795C9    call        005C1390
 005795CE    mov         eax,dword ptr [ebp+8]
 005795D1    mov         eax,dword ptr [eax-4]
 005795D4    cmp         byte ptr [eax+271],0
>005795DB    je          005796C5
 005795E1    mov         eax,dword ptr [ebp+8]
 005795E4    mov         eax,dword ptr [eax-4]
 005795E7    mov         edx,dword ptr [eax+230]
 005795ED    mov         eax,dword ptr [ebp-4]
 005795F0    mov         eax,dword ptr [eax+10]
 005795F3    call        TPen.SetColor
 005795F8    lea         ecx,[ebp-1C]
 005795FB    mov         edx,1
 00579600    mov         eax,4
 00579605    call        Point
 0057960A    mov         eax,dword ptr [ebp-1C]
 0057960D    mov         dword ptr [ebp-14],eax
 00579610    mov         eax,dword ptr [ebp-18]
 00579613    mov         dword ptr [ebp-10],eax
 00579616    lea         ecx,[ebp-24]
 00579619    mov         edx,1
 0057961E    mov         eax,0A
 00579623    call        Point
 00579628    mov         eax,dword ptr [ebp-24]
 0057962B    mov         dword ptr [ebp-0C],eax
 0057962E    mov         eax,dword ptr [ebp-20]
 00579631    mov         dword ptr [ebp-8],eax
 00579634    lea         edx,[ebp-14]
 00579637    mov         ecx,1
 0057963C    mov         eax,dword ptr [ebp-4]
 0057963F    call        005C13DC
 00579644    mov         edx,80000006
 00579649    mov         eax,dword ptr [ebp-4]
 0057964C    mov         eax,dword ptr [eax+10]
 0057964F    call        TPen.SetColor
 00579654    lea         ecx,[ebp-1C]
 00579657    mov         edx,1
 0057965C    mov         eax,3
 00579661    call        Point
 00579666    mov         eax,dword ptr [ebp-1C]
 00579669    mov         dword ptr [ebp-7C],eax
 0057966C    mov         eax,dword ptr [ebp-18]
 0057966F    mov         dword ptr [ebp-78],eax
 00579672    lea         ecx,[ebp-24]
 00579675    mov         eax,dword ptr [ebp+8]
 00579678    mov         edx,dword ptr [eax-8]
 0057967B    mov         eax,8
 00579680    call        Point
 00579685    mov         eax,dword ptr [ebp-24]
 00579688    mov         dword ptr [ebp-74],eax
 0057968B    mov         eax,dword ptr [ebp-20]
 0057968E    mov         dword ptr [ebp-70],eax
 00579691    lea         ecx,[ebp-54]
 00579694    mov         eax,dword ptr [ebp+8]
 00579697    mov         edx,dword ptr [eax-8]
 0057969A    mov         eax,9
 0057969F    call        Point
 005796A4    mov         eax,dword ptr [ebp-54]
 005796A7    mov         dword ptr [ebp-6C],eax
 005796AA    mov         eax,dword ptr [ebp-50]
 005796AD    mov         dword ptr [ebp-68],eax
 005796B0    lea         edx,[ebp-7C]
 005796B3    mov         ecx,2
 005796B8    mov         eax,dword ptr [ebp-4]
 005796BB    call        005C13DC
>005796C0    jmp         0057977A
 005796C5    mov         edx,80000006
 005796CA    mov         eax,dword ptr [ebp-4]
 005796CD    mov         eax,dword ptr [eax+10]
 005796D0    call        TPen.SetColor
 005796D5    lea         ecx,[ebp-1C]
 005796D8    mov         edx,1
 005796DD    xor         eax,eax
 005796DF    call        Point
 005796E4    mov         eax,dword ptr [ebp-1C]
 005796E7    mov         dword ptr [ebp-4C],eax
 005796EA    mov         eax,dword ptr [ebp-18]
 005796ED    mov         dword ptr [ebp-48],eax
 005796F0    lea         ecx,[ebp-24]
 005796F3    mov         edx,1
 005796F8    mov         eax,0A
 005796FD    call        Point
 00579702    mov         eax,dword ptr [ebp-24]
 00579705    mov         dword ptr [ebp-44],eax
 00579708    mov         eax,dword ptr [ebp-20]
 0057970B    mov         dword ptr [ebp-40],eax
 0057970E    lea         ecx,[ebp-54]
 00579711    mov         edx,1
 00579716    mov         eax,3
 0057971B    call        Point
 00579720    mov         eax,dword ptr [ebp-54]
 00579723    mov         dword ptr [ebp-3C],eax
 00579726    mov         eax,dword ptr [ebp-50]
 00579729    mov         dword ptr [ebp-38],eax
 0057972C    lea         ecx,[ebp-5C]
 0057972F    mov         eax,dword ptr [ebp+8]
 00579732    mov         edx,dword ptr [eax-8]
 00579735    mov         eax,8
 0057973A    call        Point
 0057973F    mov         eax,dword ptr [ebp-5C]
 00579742    mov         dword ptr [ebp-34],eax
 00579745    mov         eax,dword ptr [ebp-58]
 00579748    mov         dword ptr [ebp-30],eax
 0057974B    lea         ecx,[ebp-64]
 0057974E    mov         eax,dword ptr [ebp+8]
 00579751    mov         edx,dword ptr [eax-8]
 00579754    mov         eax,9
 00579759    call        Point
 0057975E    mov         eax,dword ptr [ebp-64]
 00579761    mov         dword ptr [ebp-2C],eax
 00579764    mov         eax,dword ptr [ebp-60]
 00579767    mov         dword ptr [ebp-28],eax
 0057976A    lea         edx,[ebp-4C]
 0057976D    mov         ecx,4
 00579772    mov         eax,dword ptr [ebp-4]
 00579775    call        005C13DC
 0057977A    mov         esp,ebp
 0057977C    pop         ebp
 0057977D    ret
end;*}

//00579780
{*procedure sub_00579780(?:TCanvas; ?:?);
begin
 00579780    push        ebp
 00579781    mov         ebp,esp
 00579783    add         esp,0FFFFFF64
 00579789    mov         dword ptr [ebp-4],eax
 0057978C    mov         eax,dword ptr [ebp+8]
 0057978F    mov         eax,dword ptr [eax-4]
 00579792    mov         edx,dword ptr [eax+228]
 00579798    mov         eax,dword ptr [ebp-4]
 0057979B    mov         eax,dword ptr [eax+10]
 0057979E    call        TPen.SetColor
 005797A3    mov         eax,dword ptr [ebp+8]
 005797A6    mov         eax,dword ptr [eax-4]
 005797A9    mov         edx,dword ptr [eax+228]
 005797AF    mov         eax,dword ptr [ebp-4]
 005797B2    mov         eax,dword ptr [eax+14]
 005797B5    call        TBrush.SetColor
 005797BA    lea         ecx,[ebp-34]
 005797BD    xor         edx,edx
 005797BF    mov         eax,3
 005797C4    call        Point
 005797C9    mov         eax,dword ptr [ebp-34]
 005797CC    mov         dword ptr [ebp-2C],eax
 005797CF    mov         eax,dword ptr [ebp-30]
 005797D2    mov         dword ptr [ebp-28],eax
 005797D5    lea         ecx,[ebp-3C]
 005797D8    mov         eax,dword ptr [ebp+8]
 005797DB    mov         edx,dword ptr [eax-8]
 005797DE    mov         eax,8
 005797E3    call        Point
 005797E8    mov         eax,dword ptr [ebp-3C]
 005797EB    mov         dword ptr [ebp-24],eax
 005797EE    mov         eax,dword ptr [ebp-38]
 005797F1    mov         dword ptr [ebp-20],eax
 005797F4    lea         ecx,[ebp-44]
 005797F7    mov         eax,dword ptr [ebp+8]
 005797FA    mov         edx,dword ptr [eax-8]
 005797FD    mov         eax,9
 00579802    call        Point
 00579807    mov         eax,dword ptr [ebp-44]
 0057980A    mov         dword ptr [ebp-1C],eax
 0057980D    mov         eax,dword ptr [ebp-40]
 00579810    mov         dword ptr [ebp-18],eax
 00579813    lea         ecx,[ebp-4C]
 00579816    xor         edx,edx
 00579818    mov         eax,9
 0057981D    call        Point
 00579822    mov         eax,dword ptr [ebp-4C]
 00579825    mov         dword ptr [ebp-14],eax
 00579828    mov         eax,dword ptr [ebp-48]
 0057982B    mov         dword ptr [ebp-10],eax
 0057982E    lea         ecx,[ebp-54]
 00579831    xor         edx,edx
 00579833    mov         eax,3
 00579838    call        Point
 0057983D    mov         eax,dword ptr [ebp-54]
 00579840    mov         dword ptr [ebp-0C],eax
 00579843    mov         eax,dword ptr [ebp-50]
 00579846    mov         dword ptr [ebp-8],eax
 00579849    lea         edx,[ebp-2C]
 0057984C    mov         ecx,4
 00579851    mov         eax,dword ptr [ebp-4]
 00579854    call        005C1390
 00579859    mov         edx,80000010
 0057985E    mov         eax,dword ptr [ebp-4]
 00579861    mov         eax,dword ptr [eax+10]
 00579864    call        TPen.SetColor
 00579869    lea         ecx,[ebp-34]
 0057986C    xor         edx,edx
 0057986E    xor         eax,eax
 00579870    call        Point
 00579875    mov         eax,dword ptr [ebp-34]
 00579878    mov         dword ptr [ebp-64],eax
 0057987B    mov         eax,dword ptr [ebp-30]
 0057987E    mov         dword ptr [ebp-60],eax
 00579881    lea         ecx,[ebp-3C]
 00579884    xor         edx,edx
 00579886    mov         eax,4
 0057988B    call        Point
 00579890    mov         eax,dword ptr [ebp-3C]
 00579893    mov         dword ptr [ebp-5C],eax
 00579896    mov         eax,dword ptr [ebp-38]
 00579899    mov         dword ptr [ebp-58],eax
 0057989C    lea         edx,[ebp-64]
 0057989F    mov         ecx,1
 005798A4    mov         eax,dword ptr [ebp-4]
 005798A7    call        005C13DC
 005798AC    mov         edx,80000014
 005798B1    mov         eax,dword ptr [ebp-4]
 005798B4    mov         eax,dword ptr [eax+10]
 005798B7    call        TPen.SetColor
 005798BC    lea         ecx,[ebp-34]
 005798BF    mov         edx,1
 005798C4    mov         eax,4
 005798C9    call        Point
 005798CE    mov         eax,dword ptr [ebp-34]
 005798D1    mov         dword ptr [ebp-64],eax
 005798D4    mov         eax,dword ptr [ebp-30]
 005798D7    mov         dword ptr [ebp-60],eax
 005798DA    lea         ecx,[ebp-3C]
 005798DD    mov         eax,dword ptr [ebp+8]
 005798E0    mov         edx,dword ptr [eax-8]
 005798E3    inc         edx
 005798E4    mov         eax,9
 005798E9    call        Point
 005798EE    mov         eax,dword ptr [ebp-3C]
 005798F1    mov         dword ptr [ebp-5C],eax
 005798F4    mov         eax,dword ptr [ebp-38]
 005798F7    mov         dword ptr [ebp-58],eax
 005798FA    lea         edx,[ebp-64]
 005798FD    mov         ecx,1
 00579902    mov         eax,dword ptr [ebp-4]
 00579905    call        005C13DC
 0057990A    mov         edx,80000006
 0057990F    mov         eax,dword ptr [ebp-4]
 00579912    mov         eax,dword ptr [eax+10]
 00579915    call        TPen.SetColor
 0057991A    mov         eax,dword ptr [ebp+8]
 0057991D    mov         eax,dword ptr [eax-4]
 00579920    cmp         byte ptr [eax+271],0
>00579927    je          0057999A
 00579929    lea         ecx,[ebp-34]
 0057992C    mov         edx,1
 00579931    mov         eax,3
 00579936    call        Point
 0057993B    mov         eax,dword ptr [ebp-34]
 0057993E    mov         dword ptr [ebp-7C],eax
 00579941    mov         eax,dword ptr [ebp-30]
 00579944    mov         dword ptr [ebp-78],eax
 00579947    lea         ecx,[ebp-3C]
 0057994A    mov         eax,dword ptr [ebp+8]
 0057994D    mov         edx,dword ptr [eax-8]
 00579950    mov         eax,8
 00579955    call        Point
 0057995A    mov         eax,dword ptr [ebp-3C]
 0057995D    mov         dword ptr [ebp-74],eax
 00579960    mov         eax,dword ptr [ebp-38]
 00579963    mov         dword ptr [ebp-70],eax
 00579966    lea         ecx,[ebp-44]
 00579969    mov         eax,dword ptr [ebp+8]
 0057996C    mov         edx,dword ptr [eax-8]
 0057996F    mov         eax,9
 00579974    call        Point
 00579979    mov         eax,dword ptr [ebp-44]
 0057997C    mov         dword ptr [ebp-6C],eax
 0057997F    mov         eax,dword ptr [ebp-40]
 00579982    mov         dword ptr [ebp-68],eax
 00579985    lea         edx,[ebp-7C]
 00579988    mov         ecx,2
 0057998D    mov         eax,dword ptr [ebp-4]
 00579990    call        005C13DC
>00579995    jmp         00579A39
 0057999A    lea         ecx,[ebp-34]
 0057999D    mov         edx,1
 005799A2    xor         eax,eax
 005799A4    call        Point
 005799A9    mov         eax,dword ptr [ebp-34]
 005799AC    mov         dword ptr [ebp-9C],eax
 005799B2    mov         eax,dword ptr [ebp-30]
 005799B5    mov         dword ptr [ebp-98],eax
 005799BB    lea         ecx,[ebp-3C]
 005799BE    mov         edx,1
 005799C3    mov         eax,3
 005799C8    call        Point
 005799CD    mov         eax,dword ptr [ebp-3C]
 005799D0    mov         dword ptr [ebp-94],eax
 005799D6    mov         eax,dword ptr [ebp-38]
 005799D9    mov         dword ptr [ebp-90],eax
 005799DF    lea         ecx,[ebp-44]
 005799E2    mov         eax,dword ptr [ebp+8]
 005799E5    mov         edx,dword ptr [eax-8]
 005799E8    mov         eax,8
 005799ED    call        Point
 005799F2    mov         eax,dword ptr [ebp-44]
 005799F5    mov         dword ptr [ebp-8C],eax
 005799FB    mov         eax,dword ptr [ebp-40]
 005799FE    mov         dword ptr [ebp-88],eax
 00579A04    lea         ecx,[ebp-4C]
 00579A07    mov         eax,dword ptr [ebp+8]
 00579A0A    mov         edx,dword ptr [eax-8]
 00579A0D    mov         eax,9
 00579A12    call        Point
 00579A17    mov         eax,dword ptr [ebp-4C]
 00579A1A    mov         dword ptr [ebp-84],eax
 00579A20    mov         eax,dword ptr [ebp-48]
 00579A23    mov         dword ptr [ebp-80],eax
 00579A26    lea         edx,[ebp-9C]
 00579A2C    mov         ecx,3
 00579A31    mov         eax,dword ptr [ebp-4]
 00579A34    call        005C13DC
 00579A39    mov         esp,ebp
 00579A3B    pop         ebp
 00579A3C    ret
end;*}

//00579A40
{*procedure sub_00579A40(?:TCanvas; ?:?);
begin
 00579A40    push        ebp
 00579A41    mov         ebp,esp
 00579A43    add         esp,0FFFFFF84
 00579A46    mov         dword ptr [ebp-4],eax
 00579A49    mov         edx,80000010
 00579A4E    mov         eax,dword ptr [ebp-4]
 00579A51    mov         eax,dword ptr [eax+10]
 00579A54    call        TPen.SetColor
 00579A59    lea         ecx,[ebp-1C]
 00579A5C    xor         edx,edx
 00579A5E    or          eax,0FFFFFFFF
 00579A61    call        Point
 00579A66    mov         eax,dword ptr [ebp-1C]
 00579A69    mov         dword ptr [ebp-14],eax
 00579A6C    mov         eax,dword ptr [ebp-18]
 00579A6F    mov         dword ptr [ebp-10],eax
 00579A72    lea         ecx,[ebp-24]
 00579A75    xor         edx,edx
 00579A77    mov         eax,0A
 00579A7C    call        Point
 00579A81    mov         eax,dword ptr [ebp-24]
 00579A84    mov         dword ptr [ebp-0C],eax
 00579A87    mov         eax,dword ptr [ebp-20]
 00579A8A    mov         dword ptr [ebp-8],eax
 00579A8D    lea         edx,[ebp-14]
 00579A90    mov         ecx,1
 00579A95    mov         eax,dword ptr [ebp-4]
 00579A98    call        005C13DC
 00579A9D    mov         eax,dword ptr [ebp+8]
 00579AA0    mov         eax,dword ptr [eax-4]
 00579AA3    mov         edx,dword ptr [eax+22C]
 00579AA9    mov         eax,dword ptr [ebp-4]
 00579AAC    mov         eax,dword ptr [eax+10]
 00579AAF    call        TPen.SetColor
 00579AB4    mov         eax,dword ptr [ebp+8]
 00579AB7    mov         eax,dword ptr [eax-4]
 00579ABA    mov         edx,dword ptr [eax+22C]
 00579AC0    mov         eax,dword ptr [ebp-4]
 00579AC3    mov         eax,dword ptr [eax+14]
 00579AC6    call        TBrush.SetColor
 00579ACB    lea         ecx,[ebp-1C]
 00579ACE    mov         edx,1
 00579AD3    mov         eax,6
 00579AD8    call        Point
 00579ADD    mov         eax,dword ptr [ebp-1C]
 00579AE0    mov         dword ptr [ebp-4C],eax
 00579AE3    mov         eax,dword ptr [ebp-18]
 00579AE6    mov         dword ptr [ebp-48],eax
 00579AE9    lea         ecx,[ebp-24]
 00579AEC    mov         eax,dword ptr [ebp+8]
 00579AEF    mov         edx,dword ptr [eax-8]
 00579AF2    mov         eax,1
 00579AF7    call        Point
 00579AFC    mov         eax,dword ptr [ebp-24]
 00579AFF    mov         dword ptr [ebp-44],eax
 00579B02    mov         eax,dword ptr [ebp-20]
 00579B05    mov         dword ptr [ebp-40],eax
 00579B08    lea         ecx,[ebp-54]
 00579B0B    mov         eax,dword ptr [ebp+8]
 00579B0E    mov         edx,dword ptr [eax-8]
 00579B11    xor         eax,eax
 00579B13    call        Point
 00579B18    mov         eax,dword ptr [ebp-54]
 00579B1B    mov         dword ptr [ebp-3C],eax
 00579B1E    mov         eax,dword ptr [ebp-50]
 00579B21    mov         dword ptr [ebp-38],eax
 00579B24    lea         ecx,[ebp-5C]
 00579B27    mov         edx,1
 00579B2C    xor         eax,eax
 00579B2E    call        Point
 00579B33    mov         eax,dword ptr [ebp-5C]
 00579B36    mov         dword ptr [ebp-34],eax
 00579B39    mov         eax,dword ptr [ebp-58]
 00579B3C    mov         dword ptr [ebp-30],eax
 00579B3F    lea         ecx,[ebp-64]
 00579B42    mov         edx,1
 00579B47    mov         eax,6
 00579B4C    call        Point
 00579B51    mov         eax,dword ptr [ebp-64]
 00579B54    mov         dword ptr [ebp-2C],eax
 00579B57    mov         eax,dword ptr [ebp-60]
 00579B5A    mov         dword ptr [ebp-28],eax
 00579B5D    lea         edx,[ebp-4C]
 00579B60    mov         ecx,4
 00579B65    mov         eax,dword ptr [ebp-4]
 00579B68    call        005C1390
 00579B6D    mov         edx,80000010
 00579B72    mov         eax,dword ptr [ebp-4]
 00579B75    mov         eax,dword ptr [eax+10]
 00579B78    call        TPen.SetColor
 00579B7D    lea         ecx,[ebp-1C]
 00579B80    xor         edx,edx
 00579B82    or          eax,0FFFFFFFF
 00579B85    call        Point
 00579B8A    mov         eax,dword ptr [ebp-1C]
 00579B8D    mov         dword ptr [ebp-14],eax
 00579B90    mov         eax,dword ptr [ebp-18]
 00579B93    mov         dword ptr [ebp-10],eax
 00579B96    lea         ecx,[ebp-24]
 00579B99    xor         edx,edx
 00579B9B    mov         eax,0A
 00579BA0    call        Point
 00579BA5    mov         eax,dword ptr [ebp-24]
 00579BA8    mov         dword ptr [ebp-0C],eax
 00579BAB    mov         eax,dword ptr [ebp-20]
 00579BAE    mov         dword ptr [ebp-8],eax
 00579BB1    lea         edx,[ebp-14]
 00579BB4    mov         ecx,1
 00579BB9    mov         eax,dword ptr [ebp-4]
 00579BBC    call        005C13DC
 00579BC1    mov         eax,dword ptr [ebp+8]
 00579BC4    mov         eax,dword ptr [eax-4]
 00579BC7    cmp         byte ptr [eax+271],0
>00579BCE    je          00579CB3
 00579BD4    mov         eax,dword ptr [ebp+8]
 00579BD7    mov         eax,dword ptr [eax-4]
 00579BDA    mov         edx,dword ptr [eax+230]
 00579BE0    mov         eax,dword ptr [ebp-4]
 00579BE3    mov         eax,dword ptr [eax+10]
 00579BE6    call        TPen.SetColor
 00579BEB    lea         ecx,[ebp-1C]
 00579BEE    mov         edx,1
 00579BF3    xor         eax,eax
 00579BF5    call        Point
 00579BFA    mov         eax,dword ptr [ebp-1C]
 00579BFD    mov         dword ptr [ebp-14],eax
 00579C00    mov         eax,dword ptr [ebp-18]
 00579C03    mov         dword ptr [ebp-10],eax
 00579C06    lea         ecx,[ebp-24]
 00579C09    mov         edx,1
 00579C0E    mov         eax,8
 00579C13    call        Point
 00579C18    mov         eax,dword ptr [ebp-24]
 00579C1B    mov         dword ptr [ebp-0C],eax
 00579C1E    mov         eax,dword ptr [ebp-20]
 00579C21    mov         dword ptr [ebp-8],eax
 00579C24    lea         edx,[ebp-14]
 00579C27    mov         ecx,1
 00579C2C    mov         eax,dword ptr [ebp-4]
 00579C2F    call        005C13DC
 00579C34    mov         edx,80000006
 00579C39    mov         eax,dword ptr [ebp-4]
 00579C3C    mov         eax,dword ptr [eax+10]
 00579C3F    call        TPen.SetColor
 00579C44    lea         ecx,[ebp-1C]
 00579C47    mov         edx,1
 00579C4C    mov         eax,7
 00579C51    call        Point
 00579C56    mov         eax,dword ptr [ebp-1C]
 00579C59    mov         dword ptr [ebp-7C],eax
 00579C5C    mov         eax,dword ptr [ebp-18]
 00579C5F    mov         dword ptr [ebp-78],eax
 00579C62    lea         ecx,[ebp-24]
 00579C65    mov         eax,dword ptr [ebp+8]
 00579C68    mov         edx,dword ptr [eax-8]
 00579C6B    mov         eax,2
 00579C70    call        Point
 00579C75    mov         eax,dword ptr [ebp-24]
 00579C78    mov         dword ptr [ebp-74],eax
 00579C7B    mov         eax,dword ptr [ebp-20]
 00579C7E    mov         dword ptr [ebp-70],eax
 00579C81    lea         ecx,[ebp-54]
 00579C84    mov         eax,dword ptr [ebp+8]
 00579C87    mov         edx,dword ptr [eax-8]
 00579C8A    or          eax,0FFFFFFFF
 00579C8D    call        Point
 00579C92    mov         eax,dword ptr [ebp-54]
 00579C95    mov         dword ptr [ebp-6C],eax
 00579C98    mov         eax,dword ptr [ebp-50]
 00579C9B    mov         dword ptr [ebp-68],eax
 00579C9E    lea         edx,[ebp-7C]
 00579CA1    mov         ecx,2
 00579CA6    mov         eax,dword ptr [ebp-4]
 00579CA9    call        005C13DC
>00579CAE    jmp         00579D66
 00579CB3    mov         edx,80000006
 00579CB8    mov         eax,dword ptr [ebp-4]
 00579CBB    mov         eax,dword ptr [eax+10]
 00579CBE    call        TPen.SetColor
 00579CC3    lea         ecx,[ebp-1C]
 00579CC6    mov         edx,1
 00579CCB    xor         eax,eax
 00579CCD    call        Point
 00579CD2    mov         eax,dword ptr [ebp-1C]
 00579CD5    mov         dword ptr [ebp-4C],eax
 00579CD8    mov         eax,dword ptr [ebp-18]
 00579CDB    mov         dword ptr [ebp-48],eax
 00579CDE    lea         ecx,[ebp-24]
 00579CE1    mov         edx,1
 00579CE6    mov         eax,0A
 00579CEB    call        Point
 00579CF0    mov         eax,dword ptr [ebp-24]
 00579CF3    mov         dword ptr [ebp-44],eax
 00579CF6    mov         eax,dword ptr [ebp-20]
 00579CF9    mov         dword ptr [ebp-40],eax
 00579CFC    lea         ecx,[ebp-54]
 00579CFF    mov         edx,1
 00579D04    mov         eax,7
 00579D09    call        Point
 00579D0E    mov         eax,dword ptr [ebp-54]
 00579D11    mov         dword ptr [ebp-3C],eax
 00579D14    mov         eax,dword ptr [ebp-50]
 00579D17    mov         dword ptr [ebp-38],eax
 00579D1A    lea         ecx,[ebp-5C]
 00579D1D    mov         eax,dword ptr [ebp+8]
 00579D20    mov         edx,dword ptr [eax-8]
 00579D23    mov         eax,2
 00579D28    call        Point
 00579D2D    mov         eax,dword ptr [ebp-5C]
 00579D30    mov         dword ptr [ebp-34],eax
 00579D33    mov         eax,dword ptr [ebp-58]
 00579D36    mov         dword ptr [ebp-30],eax
 00579D39    lea         ecx,[ebp-64]
 00579D3C    mov         eax,dword ptr [ebp+8]
 00579D3F    mov         edx,dword ptr [eax-8]
 00579D42    or          eax,0FFFFFFFF
 00579D45    call        Point
 00579D4A    mov         eax,dword ptr [ebp-64]
 00579D4D    mov         dword ptr [ebp-2C],eax
 00579D50    mov         eax,dword ptr [ebp-60]
 00579D53    mov         dword ptr [ebp-28],eax
 00579D56    lea         edx,[ebp-4C]
 00579D59    mov         ecx,4
 00579D5E    mov         eax,dword ptr [ebp-4]
 00579D61    call        005C13DC
 00579D66    mov         esp,ebp
 00579D68    pop         ebp
 00579D69    ret
end;*}

//00579D6C
{*procedure sub_00579D6C(?:TCanvas; ?:?);
begin
 00579D6C    push        ebp
 00579D6D    mov         ebp,esp
 00579D6F    add         esp,0FFFFFF74
 00579D75    mov         dword ptr [ebp-4],eax
 00579D78    mov         eax,dword ptr [ebp+8]
 00579D7B    mov         eax,dword ptr [eax-4]
 00579D7E    mov         edx,dword ptr [eax+228]
 00579D84    mov         eax,dword ptr [ebp-4]
 00579D87    mov         eax,dword ptr [eax+10]
 00579D8A    call        TPen.SetColor
 00579D8F    mov         eax,dword ptr [ebp+8]
 00579D92    mov         eax,dword ptr [eax-4]
 00579D95    mov         edx,dword ptr [eax+228]
 00579D9B    mov         eax,dword ptr [ebp-4]
 00579D9E    mov         eax,dword ptr [eax+14]
 00579DA1    call        TBrush.SetColor
 00579DA6    lea         ecx,[ebp-34]
 00579DA9    mov         edx,1
 00579DAE    mov         eax,6
 00579DB3    call        Point
 00579DB8    mov         eax,dword ptr [ebp-34]
 00579DBB    mov         dword ptr [ebp-2C],eax
 00579DBE    mov         eax,dword ptr [ebp-30]
 00579DC1    mov         dword ptr [ebp-28],eax
 00579DC4    lea         ecx,[ebp-3C]
 00579DC7    mov         eax,dword ptr [ebp+8]
 00579DCA    mov         edx,dword ptr [eax-8]
 00579DCD    mov         eax,2
 00579DD2    call        Point
 00579DD7    mov         eax,dword ptr [ebp-3C]
 00579DDA    mov         dword ptr [ebp-24],eax
 00579DDD    mov         eax,dword ptr [ebp-38]
 00579DE0    mov         dword ptr [ebp-20],eax
 00579DE3    lea         ecx,[ebp-44]
 00579DE6    mov         eax,dword ptr [ebp+8]
 00579DE9    mov         edx,dword ptr [eax-8]
 00579DEC    xor         eax,eax
 00579DEE    call        Point
 00579DF3    mov         eax,dword ptr [ebp-44]
 00579DF6    mov         dword ptr [ebp-1C],eax
 00579DF9    mov         eax,dword ptr [ebp-40]
 00579DFC    mov         dword ptr [ebp-18],eax
 00579DFF    lea         ecx,[ebp-4C]
 00579E02    xor         edx,edx
 00579E04    xor         eax,eax
 00579E06    call        Point
 00579E0B    mov         eax,dword ptr [ebp-4C]
 00579E0E    mov         dword ptr [ebp-14],eax
 00579E11    mov         eax,dword ptr [ebp-48]
 00579E14    mov         dword ptr [ebp-10],eax
 00579E17    lea         ecx,[ebp-54]
 00579E1A    xor         edx,edx
 00579E1C    mov         eax,0A
 00579E21    call        Point
 00579E26    mov         eax,dword ptr [ebp-54]
 00579E29    mov         dword ptr [ebp-0C],eax
 00579E2C    mov         eax,dword ptr [ebp-50]
 00579E2F    mov         dword ptr [ebp-8],eax
 00579E32    lea         edx,[ebp-2C]
 00579E35    mov         ecx,4
 00579E3A    mov         eax,dword ptr [ebp-4]
 00579E3D    call        005C1390
 00579E42    mov         edx,80000010
 00579E47    mov         eax,dword ptr [ebp-4]
 00579E4A    mov         eax,dword ptr [eax+10]
 00579E4D    call        TPen.SetColor
 00579E52    lea         ecx,[ebp-34]
 00579E55    xor         edx,edx
 00579E57    mov         eax,0A
 00579E5C    call        Point
 00579E61    mov         eax,dword ptr [ebp-34]
 00579E64    mov         dword ptr [ebp-2C],eax
 00579E67    mov         eax,dword ptr [ebp-30]
 00579E6A    mov         dword ptr [ebp-28],eax
 00579E6D    lea         ecx,[ebp-3C]
 00579E70    xor         edx,edx
 00579E72    mov         eax,6
 00579E77    call        Point
 00579E7C    mov         eax,dword ptr [ebp-3C]
 00579E7F    mov         dword ptr [ebp-24],eax
 00579E82    mov         eax,dword ptr [ebp-38]
 00579E85    mov         dword ptr [ebp-20],eax
 00579E88    lea         ecx,[ebp-44]
 00579E8B    mov         edx,1
 00579E90    mov         eax,6
 00579E95    call        Point
 00579E9A    mov         eax,dword ptr [ebp-44]
 00579E9D    mov         dword ptr [ebp-1C],eax
 00579EA0    mov         eax,dword ptr [ebp-40]
 00579EA3    mov         dword ptr [ebp-18],eax
 00579EA6    lea         ecx,[ebp-4C]
 00579EA9    mov         eax,dword ptr [ebp+8]
 00579EAC    mov         edx,dword ptr [eax-8]
 00579EAF    mov         eax,1
 00579EB4    call        Point
 00579EB9    mov         eax,dword ptr [ebp-4C]
 00579EBC    mov         dword ptr [ebp-14],eax
 00579EBF    mov         eax,dword ptr [ebp-48]
 00579EC2    mov         dword ptr [ebp-10],eax
 00579EC5    lea         ecx,[ebp-54]
 00579EC8    mov         eax,dword ptr [ebp+8]
 00579ECB    mov         edx,dword ptr [eax-8]
 00579ECE    or          eax,0FFFFFFFF
 00579ED1    call        Point
 00579ED6    mov         eax,dword ptr [ebp-54]
 00579ED9    mov         dword ptr [ebp-0C],eax
 00579EDC    mov         eax,dword ptr [ebp-50]
 00579EDF    mov         dword ptr [ebp-8],eax
 00579EE2    lea         edx,[ebp-2C]
 00579EE5    mov         ecx,4
 00579EEA    mov         eax,dword ptr [ebp-4]
 00579EED    call        005C13DC
 00579EF2    mov         edx,80000006
 00579EF7    mov         eax,dword ptr [ebp-4]
 00579EFA    mov         eax,dword ptr [eax+10]
 00579EFD    call        TPen.SetColor
 00579F02    mov         eax,dword ptr [ebp+8]
 00579F05    mov         eax,dword ptr [eax-4]
 00579F08    cmp         byte ptr [eax+271],0
>00579F0F    je          00579F80
 00579F11    lea         ecx,[ebp-34]
 00579F14    mov         edx,1
 00579F19    mov         eax,7
 00579F1E    call        Point
 00579F23    mov         eax,dword ptr [ebp-34]
 00579F26    mov         dword ptr [ebp-6C],eax
 00579F29    mov         eax,dword ptr [ebp-30]
 00579F2C    mov         dword ptr [ebp-68],eax
 00579F2F    lea         ecx,[ebp-3C]
 00579F32    mov         eax,dword ptr [ebp+8]
 00579F35    mov         edx,dword ptr [eax-8]
 00579F38    mov         eax,2
 00579F3D    call        Point
 00579F42    mov         eax,dword ptr [ebp-3C]
 00579F45    mov         dword ptr [ebp-64],eax
 00579F48    mov         eax,dword ptr [ebp-38]
 00579F4B    mov         dword ptr [ebp-60],eax
 00579F4E    lea         ecx,[ebp-44]
 00579F51    mov         eax,dword ptr [ebp+8]
 00579F54    mov         edx,dword ptr [eax-8]
 00579F57    or          eax,0FFFFFFFF
 00579F5A    call        Point
 00579F5F    mov         eax,dword ptr [ebp-44]
 00579F62    mov         dword ptr [ebp-5C],eax
 00579F65    mov         eax,dword ptr [ebp-40]
 00579F68    mov         dword ptr [ebp-58],eax
 00579F6B    lea         edx,[ebp-6C]
 00579F6E    mov         ecx,2
 00579F73    mov         eax,dword ptr [ebp-4]
 00579F76    call        005C13DC
>00579F7B    jmp         0057A014
 00579F80    lea         ecx,[ebp-34]
 00579F83    mov         edx,1
 00579F88    mov         eax,9
 00579F8D    call        Point
 00579F92    mov         eax,dword ptr [ebp-34]
 00579F95    mov         dword ptr [ebp-8C],eax
 00579F9B    mov         eax,dword ptr [ebp-30]
 00579F9E    mov         dword ptr [ebp-88],eax
 00579FA4    lea         ecx,[ebp-3C]
 00579FA7    mov         edx,1
 00579FAC    mov         eax,7
 00579FB1    call        Point
 00579FB6    mov         eax,dword ptr [ebp-3C]
 00579FB9    mov         dword ptr [ebp-84],eax
 00579FBF    mov         eax,dword ptr [ebp-38]
 00579FC2    mov         dword ptr [ebp-80],eax
 00579FC5    lea         ecx,[ebp-44]
 00579FC8    mov         eax,dword ptr [ebp+8]
 00579FCB    mov         edx,dword ptr [eax-8]
 00579FCE    mov         eax,2
 00579FD3    call        Point
 00579FD8    mov         eax,dword ptr [ebp-44]
 00579FDB    mov         dword ptr [ebp-7C],eax
 00579FDE    mov         eax,dword ptr [ebp-40]
 00579FE1    mov         dword ptr [ebp-78],eax
 00579FE4    lea         ecx,[ebp-4C]
 00579FE7    mov         eax,dword ptr [ebp+8]
 00579FEA    mov         edx,dword ptr [eax-8]
 00579FED    or          eax,0FFFFFFFF
 00579FF0    call        Point
 00579FF5    mov         eax,dword ptr [ebp-4C]
 00579FF8    mov         dword ptr [ebp-74],eax
 00579FFB    mov         eax,dword ptr [ebp-48]
 00579FFE    mov         dword ptr [ebp-70],eax
 0057A001    lea         edx,[ebp-8C]
 0057A007    mov         ecx,3
 0057A00C    mov         eax,dword ptr [ebp-4]
 0057A00F    call        005C13DC
 0057A014    mov         esp,ebp
 0057A016    pop         ebp
 0057A017    ret
end;*}

//0057A018
procedure sub_0057A018(?:TTabSet);
begin
{*
 0057A018    push        ebp
 0057A019    mov         ebp,esp
 0057A01B    add         esp,0FFFFFFD0
 0057A01E    push        ebx
 0057A01F    push        esi
 0057A020    push        edi
 0057A021    mov         dword ptr [ebp-4],eax
 0057A024    mov         eax,dword ptr [ebp-4]
 0057A027    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A02D    call        TBitmap.GetCanvas
 0057A032    mov         edx,dword ptr [ebp-4]
 0057A035    mov         edx,dword ptr [edx+68];TTabSet.FFont:TFont
 0057A038    call        TCanvas.SetFont
 0057A03D    mov         eax,dword ptr [ebp-4]
 0057A040    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057A046    mov         dword ptr [ebp-1C],eax
 0057A049    xor         eax,eax
 0057A04B    push        ebp
 0057A04C    push        57A0D0
 0057A051    push        dword ptr fs:[eax]
 0057A054    mov         dword ptr fs:[eax],esp
 0057A057    mov         eax,dword ptr [ebp-4]
 0057A05A    cmp         byte ptr [eax+236],1;TTabSet.Style:TTabStyle
>0057A061    jne         0057A077
 0057A063    mov         eax,dword ptr [ebp-4]
 0057A066    mov         eax,dword ptr [eax+238];TTabSet.TabHeight:Integer
 0057A06C    mov         edx,dword ptr [ebp-4]
 0057A06F    mov         dword ptr [edx+268],eax;TTabSet.FTabHeight:Integer
>0057A075    jmp         0057A09B
 0057A077    mov         eax,dword ptr [ebp-4]
 0057A07A    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A080    call        TBitmap.GetCanvas
 0057A085    mov         edx,57A23C;'T'
 0057A08A    call        005C177C
 0057A08F    add         eax,4
 0057A092    mov         edx,dword ptr [ebp-4]
 0057A095    mov         dword ptr [edx+268],eax;TTabSet.FTabHeight:Integer
 0057A09B    mov         eax,dword ptr [ebp-4]
 0057A09E    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057A0A4    dec         eax
 0057A0A5    mov         dword ptr [ebp-8],eax
 0057A0A8    mov         eax,dword ptr [ebp-4]
 0057A0AB    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057A0B1    push        eax
 0057A0B2    mov         ecx,9
 0057A0B7    mov         dl,1
 0057A0B9    mov         eax,[005EEF08];TImageList
 0057A0BE    call        TDragImageList.Create;TImageList.Create
 0057A0C3    mov         dword ptr [ebp-18],eax
 0057A0C6    xor         eax,eax
 0057A0C8    pop         edx
 0057A0C9    pop         ecx
 0057A0CA    pop         ecx
 0057A0CB    mov         dword ptr fs:[eax],edx
>0057A0CE    jmp         0057A0EB
>0057A0D0    jmp         @HandleAnyException
 0057A0D5    mov         eax,dword ptr [ebp-4]
 0057A0D8    mov         edx,dword ptr [ebp-1C]
 0057A0DB    mov         dword ptr [eax+268],edx;TTabSet.FTabHeight:Integer
 0057A0E1    call        @RaiseAgain
 0057A0E6    call        @DoneExcept
 0057A0EB    mov         eax,dword ptr [ebp-4]
 0057A0EE    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A0F4    call        TObject.Free
 0057A0F9    mov         eax,dword ptr [ebp-4]
 0057A0FC    mov         edx,dword ptr [ebp-18]
 0057A0FF    mov         dword ptr [eax+258],edx;TTabSet.ImageList:TImageList
 0057A105    mov         dl,1
 0057A107    mov         eax,[005BEDD4];TBitmap
 0057A10C    call        TBitmap.Create;TBitmap.Create
 0057A111    mov         dword ptr [ebp-0C],eax
 0057A114    xor         eax,eax
 0057A116    push        ebp
 0057A117    push        57A224
 0057A11C    push        dword ptr fs:[eax]
 0057A11F    mov         dword ptr fs:[eax],esp
 0057A122    mov         edx,9
 0057A127    mov         eax,dword ptr [ebp-0C]
 0057A12A    mov         ecx,dword ptr [eax]
 0057A12C    call        dword ptr [ecx+40];TBitmap.SetWidth
 0057A12F    mov         eax,dword ptr [ebp-4]
 0057A132    mov         edx,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057A138    mov         eax,dword ptr [ebp-0C]
 0057A13B    mov         ecx,dword ptr [eax]
 0057A13D    call        dword ptr [ecx+34];TBitmap.SetHeight
 0057A140    mov         dword ptr [ebp-14],8080
 0057A147    mov         byte ptr [ebp-0D],0
 0057A14B    mov         eax,dword ptr [ebp-0C]
 0057A14E    call        TBitmap.GetCanvas
 0057A153    mov         dword ptr [ebp-20],eax
 0057A156    mov         eax,dword ptr [ebp-20]
 0057A159    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A15C    mov         edx,dword ptr [ebp-14]
 0057A15F    call        TBrush.SetColor
 0057A164    mov         eax,dword ptr [ebp-20]
 0057A167    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A16A    xor         edx,edx
 0057A16C    call        TBrush.SetStyle
 0057A171    mov         eax,dword ptr [ebp-4]
 0057A174    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057A17A    push        eax
 0057A17B    lea         eax,[ebp-30]
 0057A17E    push        eax
 0057A17F    mov         ecx,9
 0057A184    xor         edx,edx
 0057A186    xor         eax,eax
 0057A188    call        Rect
 0057A18D    lea         edx,[ebp-30]
 0057A190    mov         eax,dword ptr [ebp-20]
 0057A193    call        TCanvas.FillRect
 0057A198    mov         al,byte ptr [ebp-0D]
 0057A19B    sub         al,1
>0057A19D    jb          0057A1AB
>0057A19F    je          0057A1BC
 0057A1A1    dec         al
>0057A1A3    je          0057A1CD
 0057A1A5    dec         al
>0057A1A7    je          0057A1DE
>0057A1A9    jmp         0057A1ED
 0057A1AB    push        ebp
 0057A1AC    mov         eax,dword ptr [ebp-0C]
 0057A1AF    call        TBitmap.GetCanvas
 0057A1B4    call        00579780
 0057A1B9    pop         ecx
>0057A1BA    jmp         0057A1ED
 0057A1BC    push        ebp
 0057A1BD    mov         eax,dword ptr [ebp-0C]
 0057A1C0    call        TBitmap.GetCanvas
 0057A1C5    call        0057949C
 0057A1CA    pop         ecx
>0057A1CB    jmp         0057A1ED
 0057A1CD    push        ebp
 0057A1CE    mov         eax,dword ptr [ebp-0C]
 0057A1D1    call        TBitmap.GetCanvas
 0057A1D6    call        00579D6C
 0057A1DB    pop         ecx
>0057A1DC    jmp         0057A1ED
 0057A1DE    push        ebp
 0057A1DF    mov         eax,dword ptr [ebp-0C]
 0057A1E2    call        TBitmap.GetCanvas
 0057A1E7    call        00579A40
 0057A1EC    pop         ecx
 0057A1ED    mov         eax,dword ptr [ebp-4]
 0057A1F0    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A1F6    mov         ecx,dword ptr [ebp-14]
 0057A1F9    mov         edx,dword ptr [ebp-0C]
 0057A1FC    call        0058BAD4
 0057A201    inc         byte ptr [ebp-0D]
 0057A204    cmp         byte ptr [ebp-0D],4
>0057A208    jne         0057A14B
 0057A20E    xor         eax,eax
 0057A210    pop         edx
 0057A211    pop         ecx
 0057A212    pop         ecx
 0057A213    mov         dword ptr fs:[eax],edx
 0057A216    push        57A22B
 0057A21B    mov         eax,dword ptr [ebp-0C]
 0057A21E    call        TObject.Free
 0057A223    ret
>0057A224    jmp         @HandleFinally
>0057A229    jmp         0057A21B
 0057A22B    pop         edi
 0057A22C    pop         esi
 0057A22D    pop         ebx
 0057A22E    mov         esp,ebp
 0057A230    pop         ebp
 0057A231    ret
*}
end;

//0057A240
{*procedure sub_0057A240(?:TTabSet; ?:?; ?:?; ?:?);
begin
 0057A240    push        ebp
 0057A241    mov         ebp,esp
 0057A243    add         esp,0FFFFFFF4
 0057A246    mov         dword ptr [ebp-0C],ecx
 0057A249    mov         dword ptr [ebp-8],edx
 0057A24C    mov         dword ptr [ebp-4],eax
 0057A24F    mov         eax,dword ptr [ebp-4]
 0057A252    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A258    call        TBitmap.GetCanvas
 0057A25D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A260    mov         edx,0FFFFFF
 0057A265    call        TBrush.SetColor
 0057A26A    mov         eax,dword ptr [ebp-4]
 0057A26D    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A273    call        TBitmap.GetCanvas
 0057A278    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0057A27B    xor         edx,edx
 0057A27D    call        TFont.SetColor
 0057A282    xor         eax,eax
 0057A284    mov         al,byte ptr [ebp+8]
 0057A287    cmp         eax,7
>0057A28A    ja          0057A46C
 0057A290    jmp         dword ptr [eax*4+57A297]
 0057A290    dd          0057A46C
 0057A290    dd          0057A2B7
 0057A290    dd          0057A313
 0057A290    dd          0057A2E5
 0057A290    dd          0057A341
 0057A290    dd          0057A36F
 0057A290    dd          0057A3C6
 0057A290    dd          0057A41A
 0057A2B7    mov         eax,dword ptr [ebp-0C]
 0057A2BA    push        eax
 0057A2BB    push        0
 0057A2BD    push        1
 0057A2BF    mov         eax,dword ptr [ebp-4]
 0057A2C2    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A2C8    call        TBitmap.GetCanvas
 0057A2CD    mov         edx,eax
 0057A2CF    mov         ecx,dword ptr [ebp-8]
 0057A2D2    mov         eax,dword ptr [ebp-4]
 0057A2D5    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A2DB    call        0058C1C8
>0057A2E0    jmp         0057A46C
 0057A2E5    mov         eax,dword ptr [ebp-0C]
 0057A2E8    push        eax
 0057A2E9    push        2
 0057A2EB    push        1
 0057A2ED    mov         eax,dword ptr [ebp-4]
 0057A2F0    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A2F6    call        TBitmap.GetCanvas
 0057A2FB    mov         edx,eax
 0057A2FD    mov         ecx,dword ptr [ebp-8]
 0057A300    mov         eax,dword ptr [ebp-4]
 0057A303    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A309    call        0058C1C8
>0057A30E    jmp         0057A46C
 0057A313    mov         eax,dword ptr [ebp-0C]
 0057A316    push        eax
 0057A317    push        1
 0057A319    push        1
 0057A31B    mov         eax,dword ptr [ebp-4]
 0057A31E    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A324    call        TBitmap.GetCanvas
 0057A329    mov         edx,eax
 0057A32B    mov         ecx,dword ptr [ebp-8]
 0057A32E    mov         eax,dword ptr [ebp-4]
 0057A331    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A337    call        0058C1C8
>0057A33C    jmp         0057A46C
 0057A341    mov         eax,dword ptr [ebp-0C]
 0057A344    push        eax
 0057A345    push        3
 0057A347    push        1
 0057A349    mov         eax,dword ptr [ebp-4]
 0057A34C    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A352    call        TBitmap.GetCanvas
 0057A357    mov         edx,eax
 0057A359    mov         ecx,dword ptr [ebp-8]
 0057A35C    mov         eax,dword ptr [ebp-4]
 0057A35F    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A365    call        0058C1C8
>0057A36A    jmp         0057A46C
 0057A36F    mov         eax,dword ptr [ebp-0C]
 0057A372    push        eax
 0057A373    push        3
 0057A375    push        1
 0057A377    mov         eax,dword ptr [ebp-4]
 0057A37A    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A380    call        TBitmap.GetCanvas
 0057A385    mov         edx,eax
 0057A387    mov         ecx,dword ptr [ebp-8]
 0057A38A    mov         eax,dword ptr [ebp-4]
 0057A38D    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A393    call        0058C1C8
 0057A398    mov         eax,dword ptr [ebp-0C]
 0057A39B    push        eax
 0057A39C    push        0
 0057A39E    push        1
 0057A3A0    mov         eax,dword ptr [ebp-4]
 0057A3A3    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A3A9    call        TBitmap.GetCanvas
 0057A3AE    mov         edx,eax
 0057A3B0    mov         ecx,dword ptr [ebp-8]
 0057A3B3    mov         eax,dword ptr [ebp-4]
 0057A3B6    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A3BC    call        0058C1C8
>0057A3C1    jmp         0057A46C
 0057A3C6    mov         eax,dword ptr [ebp-0C]
 0057A3C9    push        eax
 0057A3CA    push        1
 0057A3CC    push        1
 0057A3CE    mov         eax,dword ptr [ebp-4]
 0057A3D1    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A3D7    call        TBitmap.GetCanvas
 0057A3DC    mov         edx,eax
 0057A3DE    mov         ecx,dword ptr [ebp-8]
 0057A3E1    mov         eax,dword ptr [ebp-4]
 0057A3E4    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A3EA    call        0058C1C8
 0057A3EF    mov         eax,dword ptr [ebp-0C]
 0057A3F2    push        eax
 0057A3F3    push        2
 0057A3F5    push        1
 0057A3F7    mov         eax,dword ptr [ebp-4]
 0057A3FA    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A400    call        TBitmap.GetCanvas
 0057A405    mov         edx,eax
 0057A407    mov         ecx,dword ptr [ebp-8]
 0057A40A    mov         eax,dword ptr [ebp-4]
 0057A40D    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A413    call        0058C1C8
>0057A418    jmp         0057A46C
 0057A41A    mov         eax,dword ptr [ebp-0C]
 0057A41D    push        eax
 0057A41E    push        1
 0057A420    push        1
 0057A422    mov         eax,dword ptr [ebp-4]
 0057A425    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A42B    call        TBitmap.GetCanvas
 0057A430    mov         edx,eax
 0057A432    mov         ecx,dword ptr [ebp-8]
 0057A435    mov         eax,dword ptr [ebp-4]
 0057A438    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A43E    call        0058C1C8
 0057A443    mov         eax,dword ptr [ebp-0C]
 0057A446    push        eax
 0057A447    push        3
 0057A449    push        1
 0057A44B    mov         eax,dword ptr [ebp-4]
 0057A44E    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A454    call        TBitmap.GetCanvas
 0057A459    mov         edx,eax
 0057A45B    mov         ecx,dword ptr [ebp-8]
 0057A45E    mov         eax,dword ptr [ebp-4]
 0057A461    mov         eax,dword ptr [eax+258];TTabSet.ImageList:TImageList
 0057A467    call        0058C1C8
 0057A46C    mov         esp,ebp
 0057A46E    pop         ebp
 0057A46F    ret         8
end;*}

//0057A474
procedure sub_0057A474(?:TTabSet; ?:TBitmap);
begin
{*
 0057A474    push        ebp
 0057A475    mov         ebp,esp
 0057A477    add         esp,0FFFFFFDC
 0057A47A    mov         dword ptr [ebp-8],edx
 0057A47D    mov         dword ptr [ebp-4],eax
 0057A480    mov         edx,8
 0057A485    mov         eax,dword ptr [ebp-8]
 0057A488    mov         ecx,dword ptr [eax]
 0057A48A    call        dword ptr [ecx+40];TBitmap.SetWidth
 0057A48D    mov         edx,8
 0057A492    mov         eax,dword ptr [ebp-8]
 0057A495    mov         ecx,dword ptr [eax]
 0057A497    call        dword ptr [ecx+34];TBitmap.SetHeight
 0057A49A    mov         eax,dword ptr [ebp-8]
 0057A49D    call        TBitmap.GetCanvas
 0057A4A2    mov         dword ptr [ebp-14],eax
 0057A4A5    mov         eax,dword ptr [ebp-14]
 0057A4A8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A4AB    xor         edx,edx
 0057A4AD    call        TBrush.SetStyle
 0057A4B2    mov         eax,dword ptr [ebp-4]
 0057A4B5    mov         edx,dword ptr [eax+230];TTabSet.BackgroundColor:TColor
 0057A4BB    mov         eax,dword ptr [ebp-14]
 0057A4BE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A4C1    call        TBrush.SetColor
 0057A4C6    mov         eax,dword ptr [ebp-4]
 0057A4C9    mov         eax,dword ptr [eax+4C];TTabSet.Height:Integer
 0057A4CC    push        eax
 0057A4CD    lea         eax,[ebp-24]
 0057A4D0    push        eax
 0057A4D1    mov         eax,dword ptr [ebp-4]
 0057A4D4    mov         ecx,dword ptr [eax+48];TTabSet.Width:Integer
 0057A4D7    xor         edx,edx
 0057A4D9    xor         eax,eax
 0057A4DB    call        Rect
 0057A4E0    lea         edx,[ebp-24]
 0057A4E3    mov         eax,dword ptr [ebp-14]
 0057A4E6    call        TCanvas.FillRect
 0057A4EB    mov         eax,dword ptr [ebp-4]
 0057A4EE    cmp         byte ptr [eax+234],0;TTabSet.DitherBackground:Boolean
>0057A4F5    je          0057A549
 0057A4F7    xor         eax,eax
 0057A4F9    mov         dword ptr [ebp-10],eax
 0057A4FC    xor         eax,eax
 0057A4FE    mov         dword ptr [ebp-0C],eax
 0057A501    mov         eax,dword ptr [ebp-10]
 0057A504    and         eax,80000001
>0057A509    jns         0057A510
 0057A50B    dec         eax
 0057A50C    or          eax,0FFFFFFFE
 0057A50F    inc         eax
 0057A510    mov         edx,dword ptr [ebp-0C]
 0057A513    and         edx,80000001
>0057A519    jns         0057A520
 0057A51B    dec         edx
 0057A51C    or          edx,0FFFFFFFE
 0057A51F    inc         edx
 0057A520    cmp         eax,edx
>0057A522    jne         0057A537
 0057A524    push        0FFFFFF
 0057A529    mov         ecx,dword ptr [ebp-10]
 0057A52C    mov         edx,dword ptr [ebp-0C]
 0057A52F    mov         eax,dword ptr [ebp-14]
 0057A532    call        005C1930
 0057A537    inc         dword ptr [ebp-0C]
 0057A53A    cmp         dword ptr [ebp-0C],8
>0057A53E    jne         0057A501
 0057A540    inc         dword ptr [ebp-10]
 0057A543    cmp         dword ptr [ebp-10],8
>0057A547    jne         0057A4FC
 0057A549    mov         esp,ebp
 0057A54B    pop         ebp
 0057A54C    ret
*}
end;

//0057A550
{*function sub_0057A550(?:?):?;
begin
 0057A550    push        ebp
 0057A551    mov         ebp,esp
 0057A553    push        ecx
 0057A554    mov         eax,dword ptr [ebp+8]
 0057A557    mov         eax,dword ptr [eax-4]
 0057A55A    mov         eax,dword ptr [eax+48]
 0057A55D    mov         edx,dword ptr [ebp+8]
 0057A560    mov         edx,dword ptr [edx-4]
 0057A563    sub         eax,dword ptr [edx+214]
 0057A569    mov         dword ptr [ebp-4],eax
 0057A56C    mov         eax,dword ptr [ebp+8]
 0057A56F    mov         eax,dword ptr [eax-4]
 0057A572    cmp         byte ptr [eax+235],0
>0057A579    je          0057A5B0
 0057A57B    mov         eax,dword ptr [ebp+8]
 0057A57E    mov         eax,dword ptr [eax-4]
 0057A581    mov         eax,dword ptr [eax+218]
 0057A587    mov         edx,dword ptr [eax]
 0057A589    call        dword ptr [edx+14]
 0057A58C    dec         eax
 0057A58D    mov         edx,dword ptr [ebp+8]
 0057A590    mov         edx,dword ptr [edx-4]
 0057A593    cmp         eax,dword ptr [edx+224]
>0057A599    jle         0057A5B0
 0057A59B    mov         eax,dword ptr [ebp+8]
 0057A59E    mov         eax,dword ptr [eax-4]
 0057A5A1    mov         eax,dword ptr [eax+26C]
 0057A5A7    mov         eax,dword ptr [eax+48]
 0057A5AA    add         eax,4
 0057A5AD    sub         dword ptr [ebp-4],eax
 0057A5B0    mov         eax,dword ptr [ebp-4]
 0057A5B3    pop         ecx
 0057A5B4    pop         ebp
 0057A5B5    ret
end;*}

//0057A5B8
{*function sub_0057A5B8(?:?; ?:?; ?:TCanvas; ?:?; ?:?):?;
begin
 0057A5B8    push        ebp
 0057A5B9    mov         ebp,esp
 0057A5BB    add         esp,0FFFFFFE8
 0057A5BE    push        ebx
 0057A5BF    xor         ebx,ebx
 0057A5C1    mov         dword ptr [ebp-18],ebx
 0057A5C4    mov         dword ptr [ebp-0C],ecx
 0057A5C7    mov         dword ptr [ebp-8],edx
 0057A5CA    mov         dword ptr [ebp-4],eax
 0057A5CD    xor         eax,eax
 0057A5CF    push        ebp
 0057A5D0    push        57A698
 0057A5D5    push        dword ptr fs:[eax]
 0057A5D8    mov         dword ptr fs:[eax],esp
 0057A5DB    mov         eax,dword ptr [ebp+0C]
 0057A5DE    mov         eax,dword ptr [eax-4]
 0057A5E1    call        TWinControl.HandleAllocated
 0057A5E6    test        al,al
>0057A5E8    je          0057A673
 0057A5EE    mov         eax,dword ptr [ebp+8]
 0057A5F1    mov         dword ptr [ebp-10],eax
>0057A5F4    jmp         0057A652
 0057A5F6    lea         ecx,[ebp-18]
 0057A5F9    mov         eax,dword ptr [ebp+0C]
 0057A5FC    mov         eax,dword ptr [eax-4]
 0057A5FF    mov         eax,dword ptr [eax+218]
 0057A605    mov         edx,dword ptr [ebp-10]
 0057A608    mov         ebx,dword ptr [eax]
 0057A60A    call        dword ptr [ebx+0C]
 0057A60D    mov         edx,dword ptr [ebp-18]
 0057A610    mov         eax,dword ptr [ebp-0C]
 0057A613    call        005C1754
 0057A618    mov         dword ptr [ebp-14],eax
 0057A61B    mov         eax,dword ptr [ebp+0C]
 0057A61E    mov         eax,dword ptr [eax-4]
 0057A621    cmp         byte ptr [eax+236],1
>0057A628    jne         0057A63E
 0057A62A    lea         ecx,[ebp-14]
 0057A62D    mov         eax,dword ptr [ebp+0C]
 0057A630    mov         eax,dword ptr [eax-4]
 0057A633    mov         edx,dword ptr [ebp-10]
 0057A636    mov         ebx,dword ptr [eax]
 0057A638    call        dword ptr [ebx+0CC]
 0057A63E    mov         eax,dword ptr [ebp-14]
 0057A641    add         eax,9
 0057A644    sub         dword ptr [ebp-4],eax
 0057A647    mov         eax,dword ptr [ebp-4]
 0057A64A    cmp         eax,dword ptr [ebp-8]
>0057A64D    jl          0057A652
 0057A64F    dec         dword ptr [ebp-10]
 0057A652    mov         eax,dword ptr [ebp-4]
 0057A655    cmp         eax,dword ptr [ebp-8]
>0057A658    jl          0057A660
 0057A65A    cmp         dword ptr [ebp-10],0
>0057A65E    jge         0057A5F6
 0057A660    mov         eax,dword ptr [ebp-4]
 0057A663    cmp         eax,dword ptr [ebp-8]
>0057A666    jl          0057A66E
 0057A668    cmp         dword ptr [ebp-10],0
>0057A66C    jge         0057A682
 0057A66E    inc         dword ptr [ebp-10]
>0057A671    jmp         0057A682
 0057A673    mov         eax,dword ptr [ebp+0C]
 0057A676    mov         eax,dword ptr [eax-4]
 0057A679    mov         eax,dword ptr [eax+220]
 0057A67F    mov         dword ptr [ebp-10],eax
 0057A682    xor         eax,eax
 0057A684    pop         edx
 0057A685    pop         ecx
 0057A686    pop         ecx
 0057A687    mov         dword ptr fs:[eax],edx
 0057A68A    push        57A69F
 0057A68F    lea         eax,[ebp-18]
 0057A692    call        @LStrClr
 0057A697    ret
>0057A698    jmp         @HandleFinally
>0057A69D    jmp         0057A68F
 0057A69F    mov         eax,dword ptr [ebp-10]
 0057A6A2    pop         ebx
 0057A6A3    mov         esp,ebp
 0057A6A5    pop         ebp
 0057A6A6    ret         4
end;*}

//0057A6AC
procedure sub_0057A6AC(?:TTabSet);
begin
{*
 0057A6AC    push        ebp
 0057A6AD    mov         ebp,esp
 0057A6AF    add         esp,0FFFFFFF8
 0057A6B2    mov         dword ptr [ebp-4],eax
 0057A6B5    mov         eax,dword ptr [ebp-4]
 0057A6B8    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057A6BE    mov         edx,dword ptr [eax]
 0057A6C0    call        dword ptr [edx+14];@AbstractError
 0057A6C3    test        eax,eax
>0057A6C5    jle         0057A759
 0057A6CB    mov         eax,dword ptr [ebp-4]
 0057A6CE    mov         eax,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 0057A6D4    mov         edx,dword ptr [ebp-4]
 0057A6D7    add         eax,dword ptr [edx+224];TTabSet.VisibleTabs:Integer
 0057A6DD    dec         eax
 0057A6DE    mov         dword ptr [ebp-8],eax
 0057A6E1    mov         eax,dword ptr [ebp-4]
 0057A6E4    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057A6EA    cmp         eax,dword ptr [ebp-8]
>0057A6ED    jle         0057A727
 0057A6EF    push        ebp
 0057A6F0    mov         eax,dword ptr [ebp-4]
 0057A6F3    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057A6F9    push        eax
 0057A6FA    push        ebp
 0057A6FB    call        0057A550
 0057A700    pop         ecx
 0057A701    mov         edx,dword ptr [ebp-4]
 0057A704    mov         ecx,dword ptr [edx+208];TTabSet............................................................
 0057A70A    mov         edx,dword ptr [ebp-4]
 0057A70D    mov         edx,dword ptr [edx+210];TTabSet.StartMargin:Integer
 0057A713    add         edx,9
 0057A716    call        0057A5B8
 0057A71B    pop         ecx
 0057A71C    mov         edx,dword ptr [ebp-4]
 0057A71F    mov         dword ptr [edx+220],eax;TTabSet.FFirstIndex:Integer
>0057A725    jmp         0057A759
 0057A727    mov         eax,dword ptr [ebp-4]
 0057A72A    cmp         dword ptr [eax+21C],0;TTabSet.TabIndex:Integer
>0057A731    jl          0057A759
 0057A733    mov         eax,dword ptr [ebp-4]
 0057A736    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057A73C    mov         edx,dword ptr [ebp-4]
 0057A73F    cmp         eax,dword ptr [edx+220];TTabSet.FFirstIndex:Integer
>0057A745    jge         0057A759
 0057A747    mov         eax,dword ptr [ebp-4]
 0057A74A    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057A750    mov         edx,dword ptr [ebp-4]
 0057A753    mov         dword ptr [edx+220],eax;TTabSet.FFirstIndex:Integer
 0057A759    pop         ecx
 0057A75A    pop         ecx
 0057A75B    pop         ebp
 0057A75C    ret
*}
end;

//0057A760
procedure TTabSet.SetSelectedColor(Value:TColor);
begin
{*
 0057A760    push        ebp
 0057A761    mov         ebp,esp
 0057A763    add         esp,0FFFFFFF8
 0057A766    mov         dword ptr [ebp-8],edx
 0057A769    mov         dword ptr [ebp-4],eax
 0057A76C    mov         eax,dword ptr [ebp-8]
 0057A76F    mov         edx,dword ptr [ebp-4]
 0057A772    cmp         eax,dword ptr [edx+228];TTabSet.SelectedColor:TColor
>0057A778    je          0057A796
 0057A77A    mov         eax,dword ptr [ebp-8]
 0057A77D    mov         edx,dword ptr [ebp-4]
 0057A780    mov         dword ptr [edx+228],eax;TTabSet.SelectedColor:TColor
 0057A786    mov         eax,dword ptr [ebp-4]
 0057A789    call        0057A018
 0057A78E    mov         eax,dword ptr [ebp-4]
 0057A791    mov         edx,dword ptr [eax]
 0057A793    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A796    pop         ecx
 0057A797    pop         ecx
 0057A798    pop         ebp
 0057A799    ret
*}
end;

//0057A79C
procedure TTabSet.SetUnselectedColor(Value:TColor);
begin
{*
 0057A79C    push        ebp
 0057A79D    mov         ebp,esp
 0057A79F    add         esp,0FFFFFFF8
 0057A7A2    mov         dword ptr [ebp-8],edx
 0057A7A5    mov         dword ptr [ebp-4],eax
 0057A7A8    mov         eax,dword ptr [ebp-8]
 0057A7AB    mov         edx,dword ptr [ebp-4]
 0057A7AE    cmp         eax,dword ptr [edx+22C];TTabSet.UnselectedColor:TColor
>0057A7B4    je          0057A7D2
 0057A7B6    mov         eax,dword ptr [ebp-8]
 0057A7B9    mov         edx,dword ptr [ebp-4]
 0057A7BC    mov         dword ptr [edx+22C],eax;TTabSet.UnselectedColor:TColor
 0057A7C2    mov         eax,dword ptr [ebp-4]
 0057A7C5    call        0057A018
 0057A7CA    mov         eax,dword ptr [ebp-4]
 0057A7CD    mov         edx,dword ptr [eax]
 0057A7CF    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A7D2    pop         ecx
 0057A7D3    pop         ecx
 0057A7D4    pop         ebp
 0057A7D5    ret
*}
end;

//0057A7D8
procedure TTabSet.SetBackgroundColor(Value:TColor);
begin
{*
 0057A7D8    push        ebp
 0057A7D9    mov         ebp,esp
 0057A7DB    add         esp,0FFFFFFF8
 0057A7DE    mov         dword ptr [ebp-8],edx
 0057A7E1    mov         dword ptr [ebp-4],eax
 0057A7E4    mov         eax,dword ptr [ebp-8]
 0057A7E7    mov         edx,dword ptr [ebp-4]
 0057A7EA    cmp         eax,dword ptr [edx+230];TTabSet.BackgroundColor:TColor
>0057A7F0    je          0057A82F
 0057A7F2    mov         eax,dword ptr [ebp-8]
 0057A7F5    mov         edx,dword ptr [ebp-4]
 0057A7F8    mov         dword ptr [edx+230],eax;TTabSet.BackgroundColor:TColor
 0057A7FE    mov         eax,dword ptr [ebp-4]
 0057A801    mov         edx,dword ptr [eax+260];TTabSet.BrushBitmap:TBitmap
 0057A807    mov         eax,dword ptr [ebp-4]
 0057A80A    call        0057A474
 0057A80F    mov         eax,dword ptr [ebp-4]
 0057A812    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A818    call        TBitmap.GetCanvas
 0057A81D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A820    xor         edx,edx
 0057A822    call        TBrush.SetStyle
 0057A827    mov         eax,dword ptr [ebp-4]
 0057A82A    mov         edx,dword ptr [eax]
 0057A82C    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A82F    pop         ecx
 0057A830    pop         ecx
 0057A831    pop         ebp
 0057A832    ret
*}
end;

//0057A834
procedure TTabSet.SetDitherBackground(Value:Boolean);
begin
{*
 0057A834    push        ebp
 0057A835    mov         ebp,esp
 0057A837    add         esp,0FFFFFFF8
 0057A83A    mov         byte ptr [ebp-5],dl
 0057A83D    mov         dword ptr [ebp-4],eax
 0057A840    mov         al,byte ptr [ebp-5]
 0057A843    mov         edx,dword ptr [ebp-4]
 0057A846    cmp         al,byte ptr [edx+234];TTabSet.DitherBackground:Boolean
>0057A84C    je          0057A88B
 0057A84E    mov         al,byte ptr [ebp-5]
 0057A851    mov         edx,dword ptr [ebp-4]
 0057A854    mov         byte ptr [edx+234],al;TTabSet.DitherBackground:Boolean
 0057A85A    mov         eax,dword ptr [ebp-4]
 0057A85D    mov         edx,dword ptr [eax+260];TTabSet.BrushBitmap:TBitmap
 0057A863    mov         eax,dword ptr [ebp-4]
 0057A866    call        0057A474
 0057A86B    mov         eax,dword ptr [ebp-4]
 0057A86E    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057A874    call        TBitmap.GetCanvas
 0057A879    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057A87C    xor         edx,edx
 0057A87E    call        TBrush.SetStyle
 0057A883    mov         eax,dword ptr [ebp-4]
 0057A886    mov         edx,dword ptr [eax]
 0057A888    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A88B    pop         ecx
 0057A88C    pop         ecx
 0057A88D    pop         ebp
 0057A88E    ret
*}
end;

//0057A890
procedure TTabSet.SetAutoScroll(Value:Boolean);
begin
{*
 0057A890    push        ebp
 0057A891    mov         ebp,esp
 0057A893    add         esp,0FFFFFFF8
 0057A896    mov         byte ptr [ebp-5],dl
 0057A899    mov         dword ptr [ebp-4],eax
 0057A89C    mov         al,byte ptr [ebp-5]
 0057A89F    mov         edx,dword ptr [ebp-4]
 0057A8A2    cmp         al,byte ptr [edx+235];TTabSet.AutoScroll:Boolean
>0057A8A8    je          0057A8E4
 0057A8AA    mov         al,byte ptr [ebp-5]
 0057A8AD    mov         edx,dword ptr [ebp-4]
 0057A8B0    mov         byte ptr [edx+235],al;TTabSet.AutoScroll:Boolean
 0057A8B6    xor         edx,edx
 0057A8B8    mov         eax,dword ptr [ebp-4]
 0057A8BB    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 0057A8C1    call        TCCalendar.SetVisible
 0057A8C6    push        0
 0057A8C8    mov         eax,dword ptr [ebp-4]
 0057A8CB    mov         eax,dword ptr [eax+26C];TTabSet.FScroller:TScroller
 0057A8D1    call        TWinControl.GetHandle
 0057A8D6    push        eax
 0057A8D7    call        USER32.ShowWindow
 0057A8DC    mov         eax,dword ptr [ebp-4]
 0057A8DF    mov         edx,dword ptr [eax]
 0057A8E1    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A8E4    pop         ecx
 0057A8E5    pop         ecx
 0057A8E6    pop         ebp
 0057A8E7    ret
*}
end;

//0057A8E8
procedure TTabSet.SetStartMargin(Value:Integer);
begin
{*
 0057A8E8    push        ebp
 0057A8E9    mov         ebp,esp
 0057A8EB    add         esp,0FFFFFFF8
 0057A8EE    mov         dword ptr [ebp-8],edx
 0057A8F1    mov         dword ptr [ebp-4],eax
 0057A8F4    mov         eax,dword ptr [ebp-8]
 0057A8F7    mov         edx,dword ptr [ebp-4]
 0057A8FA    cmp         eax,dword ptr [edx+210];TTabSet.StartMargin:Integer
>0057A900    je          0057A916
 0057A902    mov         eax,dword ptr [ebp-8]
 0057A905    mov         edx,dword ptr [ebp-4]
 0057A908    mov         dword ptr [edx+210],eax;TTabSet.StartMargin:Integer
 0057A90E    mov         eax,dword ptr [ebp-4]
 0057A911    mov         edx,dword ptr [eax]
 0057A913    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A916    pop         ecx
 0057A917    pop         ecx
 0057A918    pop         ebp
 0057A919    ret
*}
end;

//0057A91C
procedure TTabSet.SetEndMargin(Value:Integer);
begin
{*
 0057A91C    push        ebp
 0057A91D    mov         ebp,esp
 0057A91F    add         esp,0FFFFFFF8
 0057A922    mov         dword ptr [ebp-8],edx
 0057A925    mov         dword ptr [ebp-4],eax
 0057A928    mov         eax,dword ptr [ebp-8]
 0057A92B    mov         edx,dword ptr [ebp-4]
 0057A92E    cmp         eax,dword ptr [edx+214];TTabSet.EndMargin:Integer
>0057A934    je          0057A94A
 0057A936    mov         eax,dword ptr [ebp-8]
 0057A939    mov         edx,dword ptr [ebp-4]
 0057A93C    mov         dword ptr [edx+214],eax;TTabSet.EndMargin:Integer
 0057A942    mov         eax,dword ptr [ebp-4]
 0057A945    mov         edx,dword ptr [eax]
 0057A947    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057A94A    pop         ecx
 0057A94B    pop         ecx
 0057A94C    pop         ebp
 0057A94D    ret
*}
end;

//0057A950
{*function sub_0057A950(?:TTabSet; ?:Integer):?;
begin
 0057A950    push        ebp
 0057A951    mov         ebp,esp
 0057A953    add         esp,0FFFFFFF4
 0057A956    push        ebx
 0057A957    mov         dword ptr [ebp-8],edx
 0057A95A    mov         dword ptr [ebp-4],eax
 0057A95D    mov         byte ptr [ebp-9],1
 0057A961    mov         eax,dword ptr [ebp-4]
 0057A964    cmp         word ptr [eax+252],0
>0057A96C    je          0057A987
 0057A96E    lea         eax,[ebp-9]
 0057A971    push        eax
 0057A972    mov         ebx,dword ptr [ebp-4]
 0057A975    mov         ecx,dword ptr [ebp-8]
 0057A978    mov         edx,dword ptr [ebp-4]
 0057A97B    mov         eax,dword ptr [ebx+254]
 0057A981    call        dword ptr [ebx+250]
 0057A987    mov         al,byte ptr [ebp-9]
 0057A98A    pop         ebx
 0057A98B    mov         esp,ebp
 0057A98D    pop         ebp
 0057A98E    ret
end;*}

//0057A990
procedure TTabSet.SetTabIndex(Value:Integer);
begin
{*
 0057A990    push        ebp
 0057A991    mov         ebp,esp
 0057A993    add         esp,0FFFFFFF8
 0057A996    push        esi
 0057A997    mov         dword ptr [ebp-8],edx
 0057A99A    mov         dword ptr [ebp-4],eax
 0057A99D    mov         eax,dword ptr [ebp-8]
 0057A9A0    mov         edx,dword ptr [ebp-4]
 0057A9A3    cmp         eax,dword ptr [edx+21C];TTabSet.TabIndex:Integer
>0057A9A9    je          0057AA12
 0057A9AB    cmp         dword ptr [ebp-8],0FFFFFFFF
>0057A9AF    jl          0057A9C4
 0057A9B1    mov         eax,dword ptr [ebp-4]
 0057A9B4    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057A9BA    mov         edx,dword ptr [eax]
 0057A9BC    call        dword ptr [edx+14];@AbstractError
 0057A9BF    cmp         eax,dword ptr [ebp-8]
>0057A9C2    jg          0057A9DB
 0057A9C4    mov         ecx,dword ptr ds:[6E9DDC];^gvar_0063C9C8
 0057A9CA    mov         dl,1
 0057A9CC    mov         eax,[00656774];Exception
 0057A9D1    call        Exception.Create;Exception.Create
 0057A9D6    call        @RaiseExcept
 0057A9DB    mov         edx,dword ptr [ebp-8]
 0057A9DE    mov         eax,dword ptr [ebp-4]
 0057A9E1    call        0057A950
 0057A9E6    test        al,al
>0057A9E8    je          0057AA12
 0057A9EA    mov         eax,dword ptr [ebp-8]
 0057A9ED    mov         edx,dword ptr [ebp-4]
 0057A9F0    mov         dword ptr [edx+21C],eax;TTabSet.TabIndex:Integer
 0057A9F6    mov         eax,dword ptr [ebp-4]
 0057A9F9    call        0057A6AC
 0057A9FE    mov         eax,dword ptr [ebp-4]
 0057AA01    mov         si,0FFEB
 0057AA05    call        @CallDynaInst;TControl.sub_005F5478
 0057AA0A    mov         eax,dword ptr [ebp-4]
 0057AA0D    mov         edx,dword ptr [eax]
 0057AA0F    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AA12    pop         esi
 0057AA13    pop         ecx
 0057AA14    pop         ecx
 0057AA15    pop         ebp
 0057AA16    ret
*}
end;

//0057AA18
{*procedure sub_0057AA18(?:TTabSet; ?:?);
begin
 0057AA18    push        ebp
 0057AA19    mov         ebp,esp
 0057AA1B    add         esp,0FFFFFFF8
 0057AA1E    mov         dword ptr [ebp-8],edx
 0057AA21    mov         dword ptr [ebp-4],eax
 0057AA24    cmp         dword ptr [ebp-8],0
>0057AA28    jl          0057AA51
 0057AA2A    mov         eax,dword ptr [ebp-4]
 0057AA2D    mov         eax,dword ptr [eax+218]
 0057AA33    mov         edx,dword ptr [eax]
 0057AA35    call        dword ptr [edx+14]
 0057AA38    cmp         eax,dword ptr [ebp-8]
>0057AA3B    jle         0057AA51
 0057AA3D    mov         eax,dword ptr [ebp-8]
 0057AA40    mov         edx,dword ptr [ebp-4]
 0057AA43    mov         dword ptr [edx+220],eax
 0057AA49    mov         eax,dword ptr [ebp-4]
 0057AA4C    mov         edx,dword ptr [eax]
 0057AA4E    call        dword ptr [edx+7C]
 0057AA51    pop         ecx
 0057AA52    pop         ecx
 0057AA53    pop         ebp
 0057AA54    ret
end;*}

//0057AA58
procedure TTabSet.SetTabs(Value:TStrings);
begin
{*
 0057AA58    push        ebp
 0057AA59    mov         ebp,esp
 0057AA5B    add         esp,0FFFFFFF8
 0057AA5E    mov         dword ptr [ebp-8],edx
 0057AA61    mov         dword ptr [ebp-4],eax
 0057AA64    mov         edx,dword ptr [ebp-8]
 0057AA67    mov         eax,dword ptr [ebp-4]
 0057AA6A    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057AA70    mov         ecx,dword ptr [eax]
 0057AA72    call        dword ptr [ecx+8];TStrings.Assign
 0057AA75    mov         eax,dword ptr [ebp-4]
 0057AA78    mov         dword ptr [eax+21C],0FFFFFFFF;TTabSet.TabIndex:Integer
 0057AA82    mov         eax,dword ptr [ebp-4]
 0057AA85    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057AA8B    mov         edx,dword ptr [eax]
 0057AA8D    call        dword ptr [edx+14];@AbstractError
 0057AA90    test        eax,eax
>0057AA92    jle         0057AAA0
 0057AA94    xor         edx,edx
 0057AA96    mov         eax,dword ptr [ebp-4]
 0057AA99    call        TTabSet.SetTabIndex
>0057AA9E    jmp         0057AAA8
 0057AAA0    mov         eax,dword ptr [ebp-4]
 0057AAA3    mov         edx,dword ptr [eax]
 0057AAA5    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AAA8    pop         ecx
 0057AAA9    pop         ecx
 0057AAAA    pop         ebp
 0057AAAB    ret
*}
end;

//0057AAAC
procedure TTabSet.SetStyle(Value:TTabStyle);
begin
{*
 0057AAAC    push        ebp
 0057AAAD    mov         ebp,esp
 0057AAAF    add         esp,0FFFFFFF8
 0057AAB2    mov         byte ptr [ebp-5],dl
 0057AAB5    mov         dword ptr [ebp-4],eax
 0057AAB8    mov         al,byte ptr [ebp-5]
 0057AABB    mov         edx,dword ptr [ebp-4]
 0057AABE    cmp         al,byte ptr [edx+236];TTabSet.Style:TTabStyle
>0057AAC4    je          0057AAE2
 0057AAC6    mov         al,byte ptr [ebp-5]
 0057AAC9    mov         edx,dword ptr [ebp-4]
 0057AACC    mov         byte ptr [edx+236],al;TTabSet.Style:TTabStyle
 0057AAD2    mov         eax,dword ptr [ebp-4]
 0057AAD5    call        0057A018
 0057AADA    mov         eax,dword ptr [ebp-4]
 0057AADD    mov         edx,dword ptr [eax]
 0057AADF    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AAE2    pop         ecx
 0057AAE3    pop         ecx
 0057AAE4    pop         ebp
 0057AAE5    ret
*}
end;

//0057AAE8
procedure TTabSet.SetTabHeight(Value:Integer);
begin
{*
 0057AAE8    push        ebp
 0057AAE9    mov         ebp,esp
 0057AAEB    add         esp,0FFFFFFF4
 0057AAEE    push        ebx
 0057AAEF    push        esi
 0057AAF0    push        edi
 0057AAF1    mov         dword ptr [ebp-8],edx
 0057AAF4    mov         dword ptr [ebp-4],eax
 0057AAF7    mov         eax,dword ptr [ebp-4]
 0057AAFA    mov         eax,dword ptr [eax+238];TTabSet.TabHeight:Integer
 0057AB00    cmp         eax,dword ptr [ebp-8]
>0057AB03    je          0057AB60
 0057AB05    mov         eax,dword ptr [ebp-4]
 0057AB08    mov         eax,dword ptr [eax+238];TTabSet.TabHeight:Integer
 0057AB0E    mov         dword ptr [ebp-0C],eax
 0057AB11    xor         eax,eax
 0057AB13    push        ebp
 0057AB14    push        57AB45
 0057AB19    push        dword ptr fs:[eax]
 0057AB1C    mov         dword ptr fs:[eax],esp
 0057AB1F    mov         eax,dword ptr [ebp-4]
 0057AB22    mov         edx,dword ptr [ebp-8]
 0057AB25    mov         dword ptr [eax+238],edx;TTabSet.TabHeight:Integer
 0057AB2B    mov         eax,dword ptr [ebp-4]
 0057AB2E    call        0057A018
 0057AB33    mov         eax,dword ptr [ebp-4]
 0057AB36    mov         edx,dword ptr [eax]
 0057AB38    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AB3B    xor         eax,eax
 0057AB3D    pop         edx
 0057AB3E    pop         ecx
 0057AB3F    pop         ecx
 0057AB40    mov         dword ptr fs:[eax],edx
>0057AB43    jmp         0057AB60
>0057AB45    jmp         @HandleAnyException
 0057AB4A    mov         eax,dword ptr [ebp-4]
 0057AB4D    mov         edx,dword ptr [ebp-0C]
 0057AB50    mov         dword ptr [eax+238],edx;TTabSet.TabHeight:Integer
 0057AB56    call        @RaiseAgain
 0057AB5B    call        @DoneExcept
 0057AB60    pop         edi
 0057AB61    pop         esi
 0057AB62    pop         ebx
 0057AB63    mov         esp,ebp
 0057AB65    pop         ebp
 0057AB66    ret
*}
end;

//0057AB68
{*procedure sub_0057AB68(?:?; ?:?; ?:?; ?:?);
begin
 0057AB68    push        ebp
 0057AB69    mov         ebp,esp
 0057AB6B    add         esp,0FFFFFFE8
 0057AB6E    push        ebx
 0057AB6F    push        esi
 0057AB70    push        edi
 0057AB71    mov         esi,ecx
 0057AB73    lea         edi,[ebp-18]
 0057AB76    movs        dword ptr [edi],dword ptr [esi]
 0057AB77    movs        dword ptr [edi],dword ptr [esi]
 0057AB78    movs        dword ptr [edi],dword ptr [esi]
 0057AB79    movs        dword ptr [edi],dword ptr [esi]
 0057AB7A    mov         dword ptr [ebp-8],edx
 0057AB7D    mov         dword ptr [ebp-4],eax
 0057AB80    mov         eax,dword ptr [ebp-4]
 0057AB83    cmp         word ptr [eax+24A],0;TTabSet.?f24A:word
>0057AB8B    je          0057ABAE
 0057AB8D    lea         eax,[ebp-18]
 0057AB90    push        eax
 0057AB91    mov         eax,dword ptr [ebp+0C]
 0057AB94    push        eax
 0057AB95    mov         al,byte ptr [ebp+8]
 0057AB98    push        eax
 0057AB99    mov         ebx,dword ptr [ebp-4]
 0057AB9C    mov         ecx,dword ptr [ebp-8]
 0057AB9F    mov         edx,dword ptr [ebp-4]
 0057ABA2    mov         eax,dword ptr [ebx+24C];TTabSet.?f24C:dword
 0057ABA8    call        dword ptr [ebx+248];TTabSet.OnDrawTab
 0057ABAE    pop         edi
 0057ABAF    pop         esi
 0057ABB0    pop         ebx
 0057ABB1    mov         esp,ebp
 0057ABB3    pop         ebp
 0057ABB4    ret         8
end;*}

//0057ABB8
procedure TTabSet.GetChildren(Proc:TGetChildProc; Root:TComponent);
begin
{*
 0057ABB8    push        ebp
 0057ABB9    mov         ebp,esp
 0057ABBB    add         esp,0FFFFFFF8
 0057ABBE    mov         dword ptr [ebp-8],edx
 0057ABC1    mov         dword ptr [ebp-4],eax
 0057ABC4    pop         ecx
 0057ABC5    pop         ecx
 0057ABC6    pop         ebp
 0057ABC7    ret         8
*}
end;

//0057ABCC
{*procedure sub_0057ABCC(?:?; ?:?);
begin
 0057ABCC    push        ebp
 0057ABCD    mov         ebp,esp
 0057ABCF    add         esp,0FFFFFFF4
 0057ABD2    push        ebx
 0057ABD3    mov         dword ptr [ebp-0C],ecx
 0057ABD6    mov         dword ptr [ebp-8],edx
 0057ABD9    mov         dword ptr [ebp-4],eax
 0057ABDC    mov         eax,dword ptr [ebp-4]
 0057ABDF    cmp         word ptr [eax+242],0;TTabSet.?f242:word
>0057ABE7    je          0057AC02
 0057ABE9    mov         eax,dword ptr [ebp-0C]
 0057ABEC    push        eax
 0057ABED    mov         ebx,dword ptr [ebp-4]
 0057ABF0    mov         ecx,dword ptr [ebp-8]
 0057ABF3    mov         edx,dword ptr [ebp-4]
 0057ABF6    mov         eax,dword ptr [ebx+244];TTabSet.?f244:dword
 0057ABFC    call        dword ptr [ebx+240];TTabSet.OnMeasureTab
 0057AC02    pop         ebx
 0057AC03    mov         esp,ebp
 0057AC05    pop         ebp
 0057AC06    ret
end;*}

//0057AC08
procedure TTabSet.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0057AC08    push        ebp
 0057AC09    mov         ebp,esp
 0057AC0B    add         esp,0FFFFFFE0
 0057AC0E    mov         byte ptr [ebp-6],cl
 0057AC11    mov         byte ptr [ebp-5],dl
 0057AC14    mov         dword ptr [ebp-4],eax
 0057AC17    mov         eax,dword ptr [ebp+0C]
 0057AC1A    push        eax
 0057AC1B    mov         eax,dword ptr [ebp+8]
 0057AC1E    push        eax
 0057AC1F    mov         cl,byte ptr [ebp-6]
 0057AC22    mov         dl,byte ptr [ebp-5]
 0057AC25    mov         eax,dword ptr [ebp-4]
 0057AC28    call        TControl.MouseDown
 0057AC2D    cmp         byte ptr [ebp-5],0
>0057AC31    jne         0057ACE6
 0057AC37    mov         eax,dword ptr [ebp+8]
 0057AC3A    mov         edx,dword ptr [ebp-4]
 0057AC3D    cmp         eax,dword ptr [edx+268];TTabSet.FTabHeight:Integer
>0057AC43    jg          0057ACE6
 0057AC49    mov         eax,dword ptr [ebp-4]
 0057AC4C    mov         eax,dword ptr [eax+268];TTabSet.FTabHeight:Integer
 0057AC52    sar         eax,1
>0057AC54    jns         0057AC59
 0057AC56    adc         eax,0
 0057AC59    cmp         eax,dword ptr [ebp+8]
>0057AC5C    jle         0057AC67
 0057AC5E    mov         dword ptr [ebp-14],3
>0057AC65    jmp         0057AC6E
 0057AC67    mov         dword ptr [ebp-14],4
 0057AC6E    mov         eax,dword ptr [ebp-4]
 0057AC71    mov         eax,dword ptr [eax+264];TTabSet.TabPositions:TList
 0057AC77    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0057AC7A    dec         eax
 0057AC7B    test        eax,eax
>0057AC7D    jl          0057ACE6
 0057AC7F    inc         eax
 0057AC80    mov         dword ptr [ebp-20],eax
 0057AC83    mov         dword ptr [ebp-10],0
 0057AC8A    mov         edx,dword ptr [ebp-10]
 0057AC8D    mov         eax,dword ptr [ebp-4]
 0057AC90    mov         eax,dword ptr [eax+264];TTabSet.TabPositions:TList
 0057AC96    call        TList.Get
 0057AC9B    mov         dword ptr [ebp-0A],eax
 0057AC9E    movzx       eax,word ptr [ebp-8]
 0057ACA2    sub         eax,dword ptr [ebp-14]
 0057ACA5    mov         dword ptr [ebp-18],eax
 0057ACA8    movzx       eax,word ptr [ebp-8]
 0057ACAC    movzx       edx,word ptr [ebp-0A]
 0057ACB0    add         eax,edx
 0057ACB2    add         eax,dword ptr [ebp-14]
 0057ACB5    mov         dword ptr [ebp-1C],eax
 0057ACB8    mov         eax,dword ptr [ebp+0C]
 0057ACBB    cmp         eax,dword ptr [ebp-18]
>0057ACBE    jl          0057ACDE
 0057ACC0    mov         eax,dword ptr [ebp+0C]
 0057ACC3    cmp         eax,dword ptr [ebp-1C]
>0057ACC6    jg          0057ACDE
 0057ACC8    mov         eax,dword ptr [ebp-4]
 0057ACCB    mov         edx,dword ptr [eax+220];TTabSet.FFirstIndex:Integer
 0057ACD1    add         edx,dword ptr [ebp-10]
 0057ACD4    mov         eax,dword ptr [ebp-4]
 0057ACD7    call        TTabSet.SetTabIndex
>0057ACDC    jmp         0057ACE6
 0057ACDE    inc         dword ptr [ebp-10]
 0057ACE1    dec         dword ptr [ebp-20]
>0057ACE4    jne         0057AC8A
 0057ACE6    mov         esp,ebp
 0057ACE8    pop         ebp
 0057ACE9    ret         8
*}
end;

//0057ACEC
{*function sub_0057ACEC(?:?; ?:?; ?:TCanvas; ?:?; ?:?):?;
begin
 0057ACEC    push        ebp
 0057ACED    mov         ebp,esp
 0057ACEF    add         esp,0FFFFFFF0
 0057ACF2    mov         dword ptr [ebp-10],ecx
 0057ACF5    mov         dword ptr [ebp-8],edx
 0057ACF8    mov         dword ptr [ebp-4],eax
 0057ACFB    mov         eax,dword ptr [ebp+8]
 0057ACFE    mov         dword ptr [ebp-0C],eax
>0057AD01    jmp         0057AD22
 0057AD03    mov         eax,dword ptr [ebp+0C]
 0057AD06    mov         eax,dword ptr [eax-4]
 0057AD09    mov         edx,dword ptr [ebp-0C]
 0057AD0C    call        0057B040
 0057AD11    add         eax,9
 0057AD14    add         dword ptr [ebp-4],eax
 0057AD17    mov         eax,dword ptr [ebp-4]
 0057AD1A    cmp         eax,dword ptr [ebp-8]
>0057AD1D    jg          0057AD22
 0057AD1F    inc         dword ptr [ebp-0C]
 0057AD22    mov         eax,dword ptr [ebp-4]
 0057AD25    cmp         eax,dword ptr [ebp-8]
>0057AD28    jge         0057AD40
 0057AD2A    mov         eax,dword ptr [ebp+0C]
 0057AD2D    mov         eax,dword ptr [eax-4]
 0057AD30    mov         eax,dword ptr [eax+218]
 0057AD36    mov         edx,dword ptr [eax]
 0057AD38    call        dword ptr [edx+14]
 0057AD3B    cmp         eax,dword ptr [ebp-0C]
>0057AD3E    jg          0057AD03
 0057AD40    mov         eax,dword ptr [ebp-0C]
 0057AD43    mov         esp,ebp
 0057AD45    pop         ebp
 0057AD46    ret         4
end;*}

//0057AD4C
{*procedure TTabSet.WMSize(?:?);
begin
 0057AD4C    push        ebp
 0057AD4D    mov         ebp,esp
 0057AD4F    add         esp,0FFFFFFF0
 0057AD52    mov         dword ptr [ebp-8],edx
 0057AD55    mov         dword ptr [ebp-4],eax
 0057AD58    mov         edx,dword ptr [ebp-8]
 0057AD5B    mov         eax,dword ptr [ebp-4]
 0057AD5E    call        TWinControl.WMSize
 0057AD63    mov         eax,dword ptr [ebp-4]
 0057AD66    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057AD6C    mov         edx,dword ptr [eax]
 0057AD6E    call        dword ptr [edx+14];@AbstractError
 0057AD71    dec         eax
>0057AD72    jle         0057AE0D
 0057AD78    mov         eax,dword ptr [ebp-4]
 0057AD7B    mov         eax,dword ptr [eax+48];TTabSet.Width:Integer
 0057AD7E    mov         edx,dword ptr [ebp-4]
 0057AD81    sub         eax,dword ptr [edx+214]
 0057AD87    mov         dword ptr [ebp-10],eax
 0057AD8A    push        ebp
 0057AD8B    push        0
 0057AD8D    mov         eax,dword ptr [ebp-4]
 0057AD90    mov         ecx,dword ptr [eax+208];TTabSet............................................................
 0057AD96    mov         eax,dword ptr [ebp-4]
 0057AD99    mov         eax,dword ptr [eax+210];TTabSet.StartMargin:Integer
 0057AD9F    add         eax,9
 0057ADA2    mov         edx,dword ptr [ebp-10]
 0057ADA5    call        0057ACEC
 0057ADAA    pop         ecx
 0057ADAB    mov         dword ptr [ebp-0C],eax
 0057ADAE    mov         eax,dword ptr [ebp-4]
 0057ADB1    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057ADB7    mov         edx,dword ptr [eax]
 0057ADB9    call        dword ptr [edx+14];@AbstractError
 0057ADBC    mov         edx,dword ptr [ebp-4]
 0057ADBF    cmp         eax,dword ptr [edx+21C];TTabSet.TabIndex:Integer
>0057ADC5    je          0057ADE8
 0057ADC7    mov         eax,dword ptr [ebp-4]
 0057ADCA    mov         eax,dword ptr [eax+224];TTabSet.VisibleTabs:Integer
 0057ADD0    cmp         eax,dword ptr [ebp-0C]
>0057ADD3    jl          0057ADE8
 0057ADD5    mov         eax,dword ptr [ebp-4]
 0057ADD8    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057ADDE    mov         edx,dword ptr [eax]
 0057ADE0    call        dword ptr [edx+14];@AbstractError
 0057ADE3    cmp         eax,dword ptr [ebp-0C]
>0057ADE6    jne         0057AE03
 0057ADE8    mov         eax,dword ptr [ebp-4]
 0057ADEB    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057ADF1    mov         edx,dword ptr [eax]
 0057ADF3    call        dword ptr [edx+14];@AbstractError
 0057ADF6    mov         edx,eax
 0057ADF8    sub         edx,dword ptr [ebp-0C]
 0057ADFB    mov         eax,dword ptr [ebp-4]
 0057ADFE    call        0057AA18
 0057AE03    mov         eax,dword ptr [ebp-4]
 0057AE06    mov         byte ptr [eax+270],1;TTabSet.FDoFix:Boolean
 0057AE0D    mov         eax,dword ptr [ebp-4]
 0057AE10    mov         edx,dword ptr [eax]
 0057AE12    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AE15    mov         esp,ebp
 0057AE17    pop         ebp
 0057AE18    ret
end;*}

//0057AE1C
{*procedure TTabSet.CMSysColorChange(?:?);
begin
 0057AE1C    push        ebp
 0057AE1D    mov         ebp,esp
 0057AE1F    add         esp,0FFFFFFF8
 0057AE22    mov         dword ptr [ebp-8],edx
 0057AE25    mov         dword ptr [ebp-4],eax
 0057AE28    mov         edx,dword ptr [ebp-8]
 0057AE2B    mov         eax,dword ptr [ebp-4]
 0057AE2E    call        TWinControl.CMSysColorChange
 0057AE33    mov         eax,dword ptr [ebp-4]
 0057AE36    call        0057A018
 0057AE3B    mov         eax,dword ptr [ebp-4]
 0057AE3E    mov         edx,dword ptr [eax+260];TTabSet.BrushBitmap:TBitmap
 0057AE44    mov         eax,dword ptr [ebp-4]
 0057AE47    call        0057A474
 0057AE4C    mov         eax,dword ptr [ebp-4]
 0057AE4F    mov         eax,dword ptr [eax+25C];TTabSet.MemBitmap:TBitmap
 0057AE55    call        TBitmap.GetCanvas
 0057AE5A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0057AE5D    xor         edx,edx
 0057AE5F    call        TBrush.SetStyle
 0057AE64    pop         ecx
 0057AE65    pop         ecx
 0057AE66    pop         ebp
 0057AE67    ret
end;*}

//0057AE68
{*procedure TTabSet.CMFontChanged(?:?);
begin
 0057AE68    push        ebp
 0057AE69    mov         ebp,esp
 0057AE6B    add         esp,0FFFFFFF8
 0057AE6E    mov         dword ptr [ebp-8],edx
 0057AE71    mov         dword ptr [ebp-4],eax
 0057AE74    mov         edx,dword ptr [ebp-8]
 0057AE77    mov         eax,dword ptr [ebp-4]
 0057AE7A    call        TWinControl.CMFontChanged
 0057AE7F    mov         eax,dword ptr [ebp-4]
 0057AE82    mov         edx,dword ptr [eax+68];TTabSet.FFont:TFont
 0057AE85    mov         eax,dword ptr [ebp-4]
 0057AE88    mov         eax,dword ptr [eax+208];TTabSet............................................................
 0057AE8E    call        TCanvas.SetFont
 0057AE93    mov         eax,dword ptr [ebp-4]
 0057AE96    call        0057A018
 0057AE9B    mov         eax,dword ptr [ebp-4]
 0057AE9E    mov         edx,dword ptr [eax]
 0057AEA0    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057AEA3    pop         ecx
 0057AEA4    pop         ecx
 0057AEA5    pop         ebp
 0057AEA6    ret
end;*}

//0057AEA8
{*procedure TTabSet.WMGetDlgCode(?:?);
begin
 0057AEA8    push        ebp
 0057AEA9    mov         ebp,esp
 0057AEAB    add         esp,0FFFFFFF8
 0057AEAE    mov         dword ptr [ebp-8],edx
 0057AEB1    mov         dword ptr [ebp-4],eax
 0057AEB4    mov         eax,dword ptr [ebp-8]
 0057AEB7    mov         dword ptr [eax+0C],4
 0057AEBE    pop         ecx
 0057AEBF    pop         ecx
 0057AEC0    pop         ebp
 0057AEC1    ret
end;*}

//0057AEC4
{*procedure TTabSet.CMDialogChar(?:?);
begin
 0057AEC4    push        ebp
 0057AEC5    mov         ebp,esp
 0057AEC7    add         esp,0FFFFFFEC
 0057AECA    push        ebx
 0057AECB    xor         ecx,ecx
 0057AECD    mov         dword ptr [ebp-14],ecx
 0057AED0    mov         dword ptr [ebp-8],edx
 0057AED3    mov         dword ptr [ebp-4],eax
 0057AED6    xor         eax,eax
 0057AED8    push        ebp
 0057AED9    push        57AF77
 0057AEDE    push        dword ptr fs:[eax]
 0057AEE1    mov         dword ptr fs:[eax],esp
 0057AEE4    mov         eax,dword ptr [ebp-4]
 0057AEE7    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057AEED    mov         edx,dword ptr [eax]
 0057AEEF    call        dword ptr [edx+14];@AbstractError
 0057AEF2    dec         eax
 0057AEF3    test        eax,eax
>0057AEF5    jl          0057AF56
 0057AEF7    inc         eax
 0057AEF8    mov         dword ptr [ebp-10],eax
 0057AEFB    mov         dword ptr [ebp-0C],0
 0057AF02    lea         ecx,[ebp-14]
 0057AF05    mov         edx,dword ptr [ebp-0C]
 0057AF08    mov         eax,dword ptr [ebp-4]
 0057AF0B    mov         eax,dword ptr [eax+218];TTabSet.Tabs:TStrings
 0057AF11    mov         ebx,dword ptr [eax]
 0057AF13    call        dword ptr [ebx+0C];@AbstractError
 0057AF16    mov         edx,dword ptr [ebp-14]
 0057AF19    mov         eax,dword ptr [ebp-8]
 0057AF1C    mov         ax,word ptr [eax+4]
 0057AF20    call        005CCFE8
 0057AF25    test        al,al
>0057AF27    je          0057AF4E
 0057AF29    mov         eax,dword ptr [ebp-8]
 0057AF2C    mov         dword ptr [eax+0C],1
 0057AF33    mov         eax,dword ptr [ebp-4]
 0057AF36    mov         eax,dword ptr [eax+21C];TTabSet.TabIndex:Integer
 0057AF3C    cmp         eax,dword ptr [ebp-0C]
>0057AF3F    je          0057AF61
 0057AF41    mov         edx,dword ptr [ebp-0C]
 0057AF44    mov         eax,dword ptr [ebp-4]
 0057AF47    call        TTabSet.SetTabIndex
>0057AF4C    jmp         0057AF61
 0057AF4E    inc         dword ptr [ebp-0C]
 0057AF51    dec         dword ptr [ebp-10]
>0057AF54    jne         0057AF02
 0057AF56    mov         edx,dword ptr [ebp-8]
 0057AF59    mov         eax,dword ptr [ebp-4]
 0057AF5C    call        TWinControl.CMDialogChar
 0057AF61    xor         eax,eax
 0057AF63    pop         edx
 0057AF64    pop         ecx
 0057AF65    pop         ecx
 0057AF66    mov         dword ptr fs:[eax],edx
 0057AF69    push        57AF7E
 0057AF6E    lea         eax,[ebp-14]
 0057AF71    call        @LStrClr
 0057AF76    ret
>0057AF77    jmp         @HandleFinally
>0057AF7C    jmp         0057AF6E
 0057AF7E    pop         ebx
 0057AF7F    mov         esp,ebp
 0057AF81    pop         ebp
 0057AF82    ret
end;*}

//0057AF84
procedure TTabSet.DefineProperties(Filer:TFiler);
begin
{*
 0057AF84    push        ebp
 0057AF85    mov         ebp,esp
 0057AF87    add         esp,0FFFFFFF8
 0057AF8A    push        ebx
 0057AF8B    mov         dword ptr [ebp-8],edx
 0057AF8E    mov         dword ptr [ebp-4],eax
 0057AF91    mov         eax,dword ptr [ebp-8]
 0057AF94    mov         edx,dword ptr ds:[642F0C];TReader
 0057AF9A    call        @IsClass
 0057AF9F    test        al,al
>0057AFA1    je          0057AFAE
 0057AFA3    mov         edx,dword ptr [ebp-8]
 0057AFA6    mov         eax,dword ptr [ebp-4]
 0057AFA9    call        TWinControl.DefineProperties
 0057AFAE    mov         eax,dword ptr [ebp-4]
 0057AFB1    push        eax
 0057AFB2    push        57B010
 0057AFB7    push        0
 0057AFB9    push        0
 0057AFBB    xor         ecx,ecx
 0057AFBD    mov         edx,57AFF4;'TabOrder'
 0057AFC2    mov         eax,dword ptr [ebp-8]
 0057AFC5    mov         ebx,dword ptr [eax]
 0057AFC7    call        dword ptr [ebx+4];@AbstractError
 0057AFCA    mov         eax,dword ptr [ebp-4]
 0057AFCD    push        eax
 0057AFCE    push        57B028
 0057AFD3    push        0
 0057AFD5    push        0
 0057AFD7    xor         ecx,ecx
 0057AFD9    mov         edx,57B008;'TabStop'
 0057AFDE    mov         eax,dword ptr [ebp-8]
 0057AFE1    mov         ebx,dword ptr [eax]
 0057AFE3    call        dword ptr [ebx+4];@AbstractError
 0057AFE6    pop         ebx
 0057AFE7    pop         ecx
 0057AFE8    pop         ecx
 0057AFE9    pop         ebp
 0057AFEA    ret
*}
end;

//0057B040
{*function sub_0057B040(?:?; ?:?):?;
begin
 0057B040    push        ebp
 0057B041    mov         ebp,esp
 0057B043    add         esp,0FFFFFFEC
 0057B046    push        ebx
 0057B047    xor         ecx,ecx
 0057B049    mov         dword ptr [ebp-14],ecx
 0057B04C    mov         dword ptr [ebp-8],edx
 0057B04F    mov         dword ptr [ebp-4],eax
 0057B052    xor         eax,eax
 0057B054    push        ebp
 0057B055    push        57B0C1
 0057B05A    push        dword ptr fs:[eax]
 0057B05D    mov         dword ptr fs:[eax],esp
 0057B060    mov         eax,dword ptr [ebp-4]
 0057B063    mov         eax,dword ptr [eax+208]
 0057B069    mov         dword ptr [ebp-10],eax
 0057B06C    lea         ecx,[ebp-14]
 0057B06F    mov         edx,dword ptr [ebp-8]
 0057B072    mov         eax,dword ptr [ebp-4]
 0057B075    mov         eax,dword ptr [eax+218]
 0057B07B    mov         ebx,dword ptr [eax]
 0057B07D    call        dword ptr [ebx+0C]
 0057B080    mov         edx,dword ptr [ebp-14]
 0057B083    mov         eax,dword ptr [ebp-10]
 0057B086    call        005C1754
 0057B08B    mov         dword ptr [ebp-0C],eax
 0057B08E    mov         eax,dword ptr [ebp-4]
 0057B091    cmp         byte ptr [eax+236],1
>0057B098    jne         0057B0AB
 0057B09A    lea         ecx,[ebp-0C]
 0057B09D    mov         edx,dword ptr [ebp-8]
 0057B0A0    mov         eax,dword ptr [ebp-4]
 0057B0A3    mov         ebx,dword ptr [eax]
 0057B0A5    call        dword ptr [ebx+0CC]
 0057B0AB    xor         eax,eax
 0057B0AD    pop         edx
 0057B0AE    pop         ecx
 0057B0AF    pop         ecx
 0057B0B0    mov         dword ptr fs:[eax],edx
 0057B0B3    push        57B0C8
 0057B0B8    lea         eax,[ebp-14]
 0057B0BB    call        @LStrClr
 0057B0C0    ret
>0057B0C1    jmp         @HandleFinally
>0057B0C6    jmp         0057B0B8
 0057B0C8    mov         eax,dword ptr [ebp-0C]
 0057B0CB    pop         ebx
 0057B0CC    mov         esp,ebp
 0057B0CE    pop         ebp
 0057B0CF    ret
end;*}

//0057B0D0
procedure TTabSet.SetSoftTop(Value:Boolean);
begin
{*
 0057B0D0    push        ebp
 0057B0D1    mov         ebp,esp
 0057B0D3    add         esp,0FFFFFFF8
 0057B0D6    mov         byte ptr [ebp-5],dl
 0057B0D9    mov         dword ptr [ebp-4],eax
 0057B0DC    mov         al,byte ptr [ebp-5]
 0057B0DF    mov         edx,dword ptr [ebp-4]
 0057B0E2    cmp         al,byte ptr [edx+271];TTabSet.SoftTop:Boolean
>0057B0E8    je          0057B106
 0057B0EA    mov         al,byte ptr [ebp-5]
 0057B0ED    mov         edx,dword ptr [ebp-4]
 0057B0F0    mov         byte ptr [edx+271],al;TTabSet.SoftTop:Boolean
 0057B0F6    mov         eax,dword ptr [ebp-4]
 0057B0F9    call        0057A018
 0057B0FE    mov         eax,dword ptr [ebp-4]
 0057B101    mov         edx,dword ptr [eax]
 0057B103    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057B106    pop         ecx
 0057B107    pop         ecx
 0057B108    pop         ebp
 0057B109    ret
*}
end;

//0057B10C
procedure Finalization;
begin
{*
 0057B10C    push        ebp
 0057B10D    mov         ebp,esp
 0057B10F    xor         eax,eax
 0057B111    push        ebp
 0057B112    push        57B131
 0057B117    push        dword ptr fs:[eax]
 0057B11A    mov         dword ptr fs:[eax],esp
 0057B11D    inc         dword ptr ds:[6ECCB0]
 0057B123    xor         eax,eax
 0057B125    pop         edx
 0057B126    pop         ecx
 0057B127    pop         ecx
 0057B128    mov         dword ptr fs:[eax],edx
 0057B12B    push        57B138
 0057B130    ret
>0057B131    jmp         @HandleFinally
>0057B136    jmp         0057B130
 0057B138    pop         ebp
 0057B139    ret
*}
end;

end.