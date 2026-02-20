//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Outline;

interface

uses
  SysUtils, Classes, Outline;

type
  OutlineError = class(TObject)
  end;
  EOutlineError = class(Exception)
  end;
  TOutlineNode = class(TPersistent)
  public
    FList:TList;//f4
    FText:String;//f8
    FData:Pointer;//fC
    FParent:TOutlineNode;//f10
    FIndex:Longint;//f14
    FState:Boolean;//f18
    FOutline:TCustomOutline;//f1C
    FExpandCount:Longint;//f20
    destructor Destroy; virtual;//00571884
    constructor Create;//00571840
  end;
  EOutlineChange = procedure(Sender:TObject; Index:Integer) of object;;
  TOutlineStyle = (osText, osPlusMinusText, osPictureText, osPlusMinusPictureText, osTreeText, osTreePictureText);
  TOutlineOptions = set of TOutlineOption;
  TCustomOutline = class(TCustomGrid)
  public
    FBlockInsert:Boolean;//f298
    FRootNode:TOutlineNode;//f29C
    FGoodNode:TOutlineNode;//f2A0
    UpdateCount:Integer;//f2A4
    FCurItem:TOutlineNode;//f2A8
    FSeparator:String;//f2AC
    FFontSize:Integer;//f2B0
    FStrings:TStrings;//f2B4
    FUserBitmaps:TOutlineBitmaps;//f2B8
    FOldBitmaps:TOutlineBitmaps;//f2B9
    FPictures:TBitmapArray;//f2BC
    FOnExpand:EOutlineChange;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FOnCollapse:EOutlineChange;//f2D8
    f2DA:word;//f2DA
    f2DC:dword;//f2DC
    FOutlineStyle:TOutlineStyle;//f2E0
    FItemHeight:Integer;//f2E4
    FStyle:TOutlineType;//f2E8
    FOptions:TOutlineOptions;//f2E9
    FIgnoreScrollResize:Boolean;//f2EA
    FSelectedItem:TOutlineNode;//f2EC
    FOnDrawItem:TDrawItemEvent;//f2F0
    f2F2:word;//f2F2
    f2F4:dword;//f2F4
    FSettingWidth:Boolean;//f2F8
    FSettingHeight:Boolean;//f2F9
    destructor Destroy; virtual;//00573038
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00573300
    procedure Loaded; virtual;//vC//00575AEC
    constructor Create(AOwner:TComponent); virtual;//v2C//00572F00
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?); virtual;//vD4//00574D4C
    //procedure WMSize(?:?); message WM_SIZE;//00573D9C
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//00574634
    //procedure sub_00575CFC(?:?); dynamic;//00575CFC
    //procedure sub_00575CC8(?:?); dynamic;//00575CC8
    //procedure sub_00573E18(?:?); dynamic;//00573E18
    procedure KeyDown(Key:Word; Shift:TShiftState); dynamic;//00573E8C
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0057415C
    procedure sub_00574120; dynamic;//00574120
    procedure sub_00573D4C; dynamic;//00573D4C
    procedure ReadBinaryData(Stream:TStream);//00573358
    procedure WriteBinaryData(Stream:TStream);//00573380
    procedure DrawText(Node:TOutlineNode; Rect:TRect);//00575560
  end;
  TOutline = class(TCustomOutline)
    procedure SetOutlineStyle(Value:TOutlineStyle);//005745F8
    procedure SetLines(Value:TStrings);//00575C48
    //function GetLines:?;//00575C88
  end;
  TOutlineStrings = class(TStrings)
  public
    ...............Outline:TCustomOutline;//f10
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00572A5C
    //function vC(?:?; ?:?):?; virtual;//vC//005728D4
    //function v14:?; virtual;//v14//00572960
    //function v18(?:?):?; virtual;//v18//00572EB0
    //procedure v24(?:?; ?:?); virtual;//v24//00572E80
    //function v38(?:?):?; virtual;//v38//00572CDC
    procedure Clear; virtual;//v44//00572980
    //procedure v48(?:?); virtual;//v48//00572E38
    //procedure v60(?:?; ?:?); virtual;//v60//00572E58
    procedure ReadData(Reader:TReader);//00572AA8
    procedure WriteData(Writer:TWriter);//00572BB8
  end;
    procedure sub_00570A40;//00570A40
    //function sub_005717B0(?:PChar; ?:?):?;//005717B0
    //function sub_005717E8(?:?; ?:?):?;//005717E8
    destructor Destroy;//00571884
    procedure sub_005719F0(?:TOutlineNode);//005719F0
    //procedure sub_00571A54(?:?);//00571A54
    //function sub_00571A80(?:TOutlineNode):?;//00571A80
    //function sub_00571AB4(?:TOutlineNode; ?:?):?;//00571AB4
    //function sub_00571ADC(?:TOutlineNode):?;//00571ADC
    //procedure sub_00571B1C(?:TOutlineNode; ?:?);//00571B1C
    //procedure sub_00571B8C(?:?; ?:?);//00571B8C
    //function sub_00571BC8(?:TOutlineNode):?;//00571BC8
    //function sub_00571BFC(?:TOutlineNode):?;//00571BFC
    //function sub_00571C34(?:?):?;//00571C34
    //function sub_00571C58(?:?):?;//00571C58
    //function sub_00571C88(?:?):?;//00571C88
    //procedure sub_00571CC0(?:?; ?:?);//00571CC0
    //function sub_00571D68(?:?):?;//00571D68
    //function sub_00571DA4(?:?):?;//00571DA4
    //function sub_00571DE8(?:?; ?:?):?;//00571DE8
    procedure sub_00571E64(?:TOutlineNode);//00571E64
    //function sub_00571EBC(?:TOutlineNode; ?:TOutlineNode; ?:?):?;//00571EBC
    //function sub_00571F34(?:TOutlineNode; ?:?):?;//00571F34
    //function sub_005720D0(?:?):?;//005720D0
    //function sub_0057210C(?:TOutlineNode; ?:?):?;//0057210C
    //procedure sub_00572208(?:TOutlineNode; ?:?);//00572208
    //procedure sub_00572348(?:?);//00572348
    //procedure sub_005723B4(?:?);//005723B4
    procedure sub_005723E4(?:TOutlineNode);//005723E4
    //function sub_00572458(?:?; ?:TOutlineNode):?;//00572458
    //function sub_005724BC(?:?; ?:?; ?:TOutlineNode):?;//005724BC
    procedure sub_00572564(?:TOutlineNode; ?:TOutlineNode; ?:Integer);//00572564
    procedure sub_005725F0(?:TOutlineNode; ?:TOutlineNode);//005725F0
    //procedure sub_00572620(?:?; ?:?; ?:?; ?:?; ?:?);//00572620
    //function sub_005726AC(?:?; ?:?; ?:?):?;//005726AC
    //function sub_00572728(?:TOutlineNode; ?:?):?;//00572728
    //procedure sub_005727A0(?:?; ?:?);//005727A0
    //function sub_005727C4(?:?):?;//005727C4
    //procedure sub_005727E4(?:?; ?:Pointer; ?:?);//005727E4
    //function sub_00572888(?:?; ?:?):?;//00572888
    //function sub_005728D4(?:?; ?:?):?;//005728D4
    //function sub_00572960:?;//00572960
    procedure Clear;//00572980
    function WriteNodes:Boolean;//00572998
    procedure DefineProperties(Filer:TFiler);//00572A5C
    //function sub_00572CDC(?:?):?;//00572CDC
    //procedure sub_00572E38(?:?);//00572E38
    //procedure sub_00572E58(?:?; ?:?);//00572E58
    //procedure sub_00572E80(?:?; ?:?);//00572E80
    //function sub_00572EB0(?:?):?;//00572EB0
    procedure _NF__2AE;//00572ED8
    constructor Create(AOwner:TComponent);//00572F00
    destructor Destroy;//00573038
    procedure sub_005730A8(?:TCustomOutline);//005730A8
    procedure sub_0057312C(?:TCustomOutline);//0057312C
    procedure sub_005731AC(?:TCustomOutline);//005731AC
    procedure sub_00573258(?:TCustomOutline);//00573258
    function WriteOutline:Boolean;//00573288
    procedure DefineProperties(Filer:TFiler);//00573300
    //function sub_005733A8(?:TCustomOutline; ?:?):?;//005733A8
    //function sub_005733D0(?:TCustomOutline):?;//005733D0
    //function sub_005733F4(?:TCustomOutline; ?:?; ?:AnsiString; ?:?; ?:?):?;//005733F4
    //function sub_005735E4(?:TCustomOutline; ?:?):?;//005735E4
    //function sub_005736D0(?:TCustomOutline):?;//005736D0
    procedure sub_00573768(?:TCustomOutline);//00573768
    procedure sub_00573784(?:TCustomOutline; ?:TOutlineNode);//00573784
    //procedure sub_005737CC(?:TCustomOutline; ?:?);//005737CC
    //function sub_00573918(?:TCustomOutline; ?:?; ?:?):?;//00573918
    //function sub_00573944(?:TCustomOutline; ?:?; ?:?; ?:?):?;//00573944
    //function sub_005739F4(?:?; ?:?; ?:?):?;//005739F4
    //function sub_00573A20(?:?; ?:?; ?:?; ?:?):?;//00573A20
    //function sub_00573AD0(?:TCustomOutline; ?:?; ?:AnsiString):?;//00573AD0
    //function sub_00573AFC(?:TCustomOutline; ?:?; ?:AnsiString; ?:?):?;//00573AFC
    //procedure sub_00573B90(?:TCustomOutline; ?:?);//00573B90
    //procedure sub_00573C5C(?:TCustomOutline; ?:TOutlineNode; ?:?);//00573C5C
    procedure sub_00573D4C;//00573D4C
    //procedure WMSize(?:?);//00573D9C
    //procedure sub_00573E18(?:?);//00573E18
    procedure KeyDown(Key:Word; Shift:TShiftState);//00573E8C
    procedure sub_00574120;//00574120
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0057415C
    procedure sub_00574198(?:TCustomOutline);//00574198
    procedure sub_005741B0(?:TCustomOutline);//005741B0
    procedure sub_00574218(?:TCustomOutline; ?:TOutlineNode);//00574218
    //function sub_0057423C(?:TCustomOutline):?;//0057423C
    //function sub_005742F4(?:TCustomOutline; ?:TOutlineNode):?;//005742F4
    //function sub_00574324(?:TCustomOutline; ?:TOutlineNode):?;//00574324
    //function sub_005743CC(?:TOutlineNode; ?:?):?;//005743CC
    //function sub_00574400(?:TCustomOutline; ?:TOutlineNode; ?:TOutlineNode):?;//00574400
    //procedure sub_0057451C(?:TCustomOutline; ?:?);//0057451C
    //procedure CMFontChanged(?:?);//00574634
    //procedure sub_00574660(?:TCustomOutline; ?:?);//00574660
    //function sub_005746C0(?:?; ?:?):?;//005746C0
    //function sub_0057480C(?:TCustomOutline; ?:?):?;//0057480C
    //function sub_00574834(?:?; ?:?):?;//00574834
    procedure DrawFocusCell;//0057485C
    procedure DrawTheText;//005748A4
    //procedure sub_005748F4(?:?);//005748F4
    //procedure sub_00574A14(?:?);//00574A14
    //procedure sub_00574AE0(?:?);//00574AE0
    //procedure sub_00574B94(?:?);//00574B94
    //procedure sub_00574C34(?:?);//00574C34
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?);//00574D4C
    //procedure sub_00575094(?:?; ?:?; ?:?);//00575094
    //procedure sub_0057532C(?:?; ?:?; ?:?; ?:?);//0057532C
    function IsStoredPictureClosed(Value:TBitmap):Boolean;//005755B4
    //procedure sub_005755E4(?:?; ?:Integer; ?:?);//005755E4
    //procedure sub_00575610(?:TCustomOutline; ?:?; ?:TBitmap);//00575610
    //procedure SetPictureClosed(Value:TBitmap; ?:?);//00575674
    //function GetPictureClosed(?:?):?;//00575698
    procedure SetItemHeight(Value:int);//005756D8
    procedure SetStyle(Value:TOutlineType);//00575740
    procedure SetOptions(Value:Set);//00575778
    //function sub_005757AC(?:Pointer; ?:?):?;//005757AC
    //function sub_0057580C(?:Pointer; ?:?):?;//0057580C
    //procedure sub_00575864(?:?; ?:?);//00575864
    procedure Loaded;//00575AEC
    //procedure sub_00575BEC(?:?; ?:?);//00575BEC
    //procedure sub_00575CA4(?:TCustomOutline; ?:?);//00575CA4
    //procedure sub_00575CC8(?:?);//00575CC8
    //procedure sub_00575CFC(?:?);//00575CFC
    procedure Finalization;//00575D30

implementation

//00570A40
procedure sub_00570A40;
begin
{*
 00570A40    push        ebp
 00570A41    mov         ebp,esp
 00570A43    sub         dword ptr ds:[6ECC9C],1
>00570A4A    jae         00570A51
 00570A4C    call        GetCheckSize
 00570A51    pop         ebp
 00570A52    ret
*}
end;

//005717B0
{*function sub_005717B0(?:PChar; ?:?):?;
begin
 005717B0    push        ebp
 005717B1    mov         ebp,esp
 005717B3    add         esp,0FFFFFFF4
 005717B6    mov         dword ptr [ebp-8],edx
 005717B9    mov         dword ptr [ebp-4],eax
 005717BC    mov         eax,dword ptr [ebp-8]
 005717BF    xor         edx,edx
 005717C1    mov         dword ptr [eax],edx
>005717C3    jmp         005717CD
 005717C5    inc         dword ptr [ebp-4]
 005717C8    mov         eax,dword ptr [ebp-8]
 005717CB    inc         dword ptr [eax]
 005717CD    mov         eax,dword ptr [ebp-4]
 005717D0    mov         al,byte ptr [eax]
 005717D2    sub         al,9
>005717D4    je          005717C5
 005717D6    sub         al,17
>005717D8    je          005717C5
 005717DA    mov         eax,dword ptr [ebp-4]
 005717DD    mov         dword ptr [ebp-0C],eax
 005717E0    mov         eax,dword ptr [ebp-0C]
 005717E3    mov         esp,ebp
 005717E5    pop         ebp
 005717E6    ret
end;*}

//005717E8
{*function sub_005717E8(?:?; ?:?):?;
begin
 005717E8    push        ebp
 005717E9    mov         ebp,esp
 005717EB    add         esp,0FFFFFFEC
 005717EE    mov         dword ptr [ebp-8],edx
 005717F1    mov         dword ptr [ebp-4],eax
 005717F4    mov         eax,dword ptr [ebp-8]
 005717F7    call        @LStrLen
 005717FC    test        eax,eax
>005717FE    jle         00571824
 00571800    mov         dword ptr [ebp-14],eax
 00571803    mov         dword ptr [ebp-10],1
 0057180A    mov         eax,dword ptr [ebp-8]
 0057180D    mov         edx,dword ptr [ebp-10]
 00571810    mov         al,byte ptr [eax+edx-1]
 00571814    mov         edx,dword ptr [ebp-4]
 00571817    mov         byte ptr [edx],al
 00571819    inc         dword ptr [ebp-4]
 0057181C    inc         dword ptr [ebp-10]
 0057181F    dec         dword ptr [ebp-14]
>00571822    jne         0057180A
 00571824    mov         eax,dword ptr [ebp-4]
 00571827    mov         word ptr [eax],0A0D
 0057182C    add         dword ptr [ebp-4],2
 00571830    mov         eax,dword ptr [ebp-4]
 00571833    mov         dword ptr [ebp-0C],eax
 00571836    mov         eax,dword ptr [ebp-0C]
 00571839    mov         esp,ebp
 0057183B    pop         ebp
 0057183C    ret
end;*}

//00571840
constructor TOutlineNode.Create;
begin
{*
 00571840    push        ebp
 00571841    mov         ebp,esp
 00571843    add         esp,0FFFFFFF4
 00571846    test        dl,dl
>00571848    je          00571852
 0057184A    add         esp,0FFFFFFF0
 0057184D    call        @ClassCreate
 00571852    mov         dword ptr [ebp-0C],ecx
 00571855    mov         byte ptr [ebp-5],dl
 00571858    mov         dword ptr [ebp-4],eax
 0057185B    mov         eax,dword ptr [ebp-4]
 0057185E    mov         edx,dword ptr [ebp-0C]
 00571861    mov         dword ptr [eax+1C],edx
 00571864    mov         eax,dword ptr [ebp-4]
 00571867    cmp         byte ptr [ebp-5],0
>0057186B    je          0057187C
 0057186D    call        @AfterConstruction
 00571872    pop         dword ptr fs:[0]
 00571879    add         esp,0C
 0057187C    mov         eax,dword ptr [ebp-4]
 0057187F    mov         esp,ebp
 00571881    pop         ebp
 00571882    ret
*}
end;

//00571884
destructor TOutlineNode.Destroy;
begin
{*
 00571884    push        ebp
 00571885    mov         ebp,esp
 00571887    add         esp,0FFFFFFE8
 0057188A    call        @BeforeDestruction
 0057188F    mov         byte ptr [ebp-5],dl
 00571892    mov         dword ptr [ebp-4],eax
 00571895    mov         eax,dword ptr [ebp-4]
 00571898    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057189B    mov         dword ptr [ebp-14],eax
 0057189E    mov         eax,dword ptr [ebp-14]
 005718A1    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005718A7    cmp         eax,dword ptr [ebp-4]
>005718AA    jne         005718B6
 005718AC    mov         eax,dword ptr [ebp-14]
 005718AF    mov         byte ptr [eax+2EA],1;TCustomOutline.FIgnoreScrollResize:Boolean
 005718B6    xor         eax,eax
 005718B8    push        ebp
 005718B9    push        5719C8
 005718BE    push        dword ptr fs:[eax]
 005718C1    mov         dword ptr fs:[eax],esp
 005718C4    xor         eax,eax
 005718C6    mov         dword ptr [ebp-0C],eax
 005718C9    mov         eax,dword ptr [ebp-4]
 005718CC    cmp         dword ptr [eax+10],0;TOutlineNode.FParent:TOutlineNode
>005718D0    je          005718E6
 005718D2    mov         eax,dword ptr [ebp-4]
 005718D5    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 005718D8    mov         eax,dword ptr [eax+2A8];TCustomOutline.FCurItem:TOutlineNode
 005718DE    call        00571BC8
 005718E3    mov         dword ptr [ebp-0C],eax
 005718E6    mov         eax,dword ptr [ebp-4]
 005718E9    cmp         dword ptr [eax+4],0;TOutlineNode.FList:TList
>005718ED    je          005718F7
 005718EF    mov         eax,dword ptr [ebp-4]
 005718F2    call        005719F0
 005718F7    mov         eax,dword ptr [ebp-4]
 005718FA    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 005718FD    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00571903    cmp         eax,dword ptr [ebp-4]
>00571906    jne         00571913
 00571908    mov         eax,dword ptr [ebp-4]
 0057190B    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057190E    call        00573768
 00571913    mov         eax,dword ptr [ebp-4]
 00571916    cmp         dword ptr [eax+10],0;TOutlineNode.FParent:TOutlineNode
>0057191A    je          00571999
 0057191C    mov         eax,dword ptr [ebp-4]
 0057191F    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00571922    call        00571A80
 00571927    call        0064523C
 0057192C    cmp         eax,dword ptr [ebp-4]
 0057192F    sete        byte ptr [ebp-0D]
 00571933    mov         eax,dword ptr [ebp-4]
 00571936    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00571939    mov         edx,dword ptr [ebp-4]
 0057193C    call        005725F0
 00571941    mov         eax,dword ptr [ebp-4]
 00571944    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00571947    call        00571A80
 0057194C    cmp         dword ptr [eax+8],0
>00571950    jne         00571965
 00571952    mov         eax,dword ptr [ebp-4]
 00571955    mov         edx,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00571958    mov         eax,dword ptr [ebp-4]
 0057195B    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057195E    call        00573784
>00571963    jmp         00571988
 00571965    cmp         byte ptr [ebp-0D],0
>00571969    je          00571988
 0057196B    mov         eax,dword ptr [ebp-4]
 0057196E    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00571971    call        00571A80
 00571976    call        0064523C
 0057197B    mov         edx,eax
 0057197D    mov         eax,dword ptr [ebp-4]
 00571980    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 00571983    call        00573784
 00571988    mov         eax,dword ptr [ebp-4]
 0057198B    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057198E    mov         ecx,dword ptr [ebp-0C]
 00571991    mov         edx,dword ptr [ebp-4]
 00571994    call        00573C5C
 00571999    xor         eax,eax
 0057199B    pop         edx
 0057199C    pop         ecx
 0057199D    pop         ecx
 0057199E    mov         dword ptr fs:[eax],edx
 005719A1    push        5719CF
 005719A6    mov         eax,dword ptr [ebp-4]
 005719A9    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 005719AC    mov         dword ptr [ebp-18],eax
 005719AF    mov         eax,dword ptr [ebp-18]
 005719B2    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005719B8    cmp         eax,dword ptr [ebp-4]
>005719BB    jne         005719C7
 005719BD    mov         eax,dword ptr [ebp-18]
 005719C0    mov         byte ptr [eax+2EA],0;TCustomOutline.FIgnoreScrollResize:Boolean
 005719C7    ret
>005719C8    jmp         @HandleFinally
>005719CD    jmp         005719A6
 005719CF    mov         dl,byte ptr [ebp-5]
 005719D2    and         dl,0FC
 005719D5    mov         eax,dword ptr [ebp-4]
 005719D8    call        TPersistent.Destroy
 005719DD    cmp         byte ptr [ebp-5],0
>005719E1    jle         005719EB
 005719E3    mov         eax,dword ptr [ebp-4]
 005719E6    call        @ClassDestroy
 005719EB    mov         esp,ebp
 005719ED    pop         ebp
 005719EE    ret
*}
end;

//005719F0
procedure sub_005719F0(?:TOutlineNode);
begin
{*
 005719F0    push        ebp
 005719F1    mov         ebp,esp
 005719F3    add         esp,0FFFFFFF0
 005719F6    mov         dword ptr [ebp-4],eax
 005719F9    mov         eax,dword ptr [ebp-4]
 005719FC    mov         eax,dword ptr [eax+4];TOutlineNode.FList:TList
 005719FF    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00571A02    dec         eax
 00571A03    test        eax,eax
>00571A05    jl          00571A3D
 00571A07    inc         eax
 00571A08    mov         dword ptr [ebp-10],eax
 00571A0B    mov         dword ptr [ebp-8],0
 00571A12    mov         eax,dword ptr [ebp-4]
 00571A15    mov         eax,dword ptr [eax+4];TOutlineNode.FList:TList
 00571A18    mov         edx,dword ptr [ebp-8]
 00571A1B    call        TList.Get
 00571A20    mov         dword ptr [ebp-0C],eax
 00571A23    mov         eax,dword ptr [ebp-0C]
 00571A26    xor         edx,edx
 00571A28    mov         dword ptr [eax+10],edx
 00571A2B    mov         dl,1
 00571A2D    mov         eax,dword ptr [ebp-0C]
 00571A30    mov         ecx,dword ptr [eax]
 00571A32    call        dword ptr [ecx-4]
 00571A35    inc         dword ptr [ebp-8]
 00571A38    dec         dword ptr [ebp-10]
>00571A3B    jne         00571A12
 00571A3D    mov         eax,dword ptr [ebp-4]
 00571A40    mov         eax,dword ptr [eax+4];TOutlineNode.FList:TList
 00571A43    call        TObject.Free
 00571A48    mov         eax,dword ptr [ebp-4]
 00571A4B    xor         edx,edx
 00571A4D    mov         dword ptr [eax+4],edx;TOutlineNode.FList:TList
 00571A50    mov         esp,ebp
 00571A52    pop         ebp
 00571A53    ret
*}
end;

//00571A54
{*procedure sub_00571A54(?:?);
begin
 00571A54    push        ebp
 00571A55    mov         ebp,esp
 00571A57    push        ecx
 00571A58    mov         dword ptr [ebp-4],eax
 00571A5B    mov         eax,dword ptr [ebp-4]
 00571A5E    cmp         dword ptr [eax+10],0
>00571A62    je          00571A7B
 00571A64    mov         eax,dword ptr [ebp-4]
 00571A67    mov         eax,dword ptr [eax+10]
 00571A6A    cmp         byte ptr [eax+18],0
>00571A6E    je          00571A7B
 00571A70    mov         eax,dword ptr [ebp-4]
 00571A73    mov         eax,dword ptr [eax+1C]
 00571A76    call        005741B0
 00571A7B    pop         ecx
 00571A7C    pop         ebp
 00571A7D    ret
end;*}

//00571A80
{*function sub_00571A80(?:TOutlineNode):?;
begin
 00571A80    push        ebp
 00571A81    mov         ebp,esp
 00571A83    add         esp,0FFFFFFF8
 00571A86    mov         dword ptr [ebp-4],eax
 00571A89    mov         eax,dword ptr [ebp-4]
 00571A8C    cmp         dword ptr [eax+4],0;TOutlineNode.FList:TList
>00571A90    jne         00571AA4
 00571A92    mov         dl,1
 00571A94    mov         eax,[006422A4];TList
 00571A99    call        TObject.Create;TList.Create
 00571A9E    mov         edx,dword ptr [ebp-4]
 00571AA1    mov         dword ptr [edx+4],eax;TOutlineNode.FList:TList
 00571AA4    mov         eax,dword ptr [ebp-4]
 00571AA7    mov         eax,dword ptr [eax+4];TOutlineNode.FList:TList
 00571AAA    mov         dword ptr [ebp-8],eax
 00571AAD    mov         eax,dword ptr [ebp-8]
 00571AB0    pop         ecx
 00571AB1    pop         ecx
 00571AB2    pop         ebp
 00571AB3    ret
end;*}

//00571AB4
{*function sub_00571AB4(?:TOutlineNode; ?:?):?;
begin
 00571AB4    push        ebp
 00571AB5    mov         ebp,esp
 00571AB7    add         esp,0FFFFFFF4
 00571ABA    mov         dword ptr [ebp-8],edx
 00571ABD    mov         dword ptr [ebp-4],eax
 00571AC0    mov         eax,dword ptr [ebp-4]
 00571AC3    call        00571A80
 00571AC8    mov         edx,dword ptr [ebp-8]
 00571ACB    call        TList.Get
 00571AD0    mov         dword ptr [ebp-0C],eax
 00571AD3    mov         eax,dword ptr [ebp-0C]
 00571AD6    mov         esp,ebp
 00571AD8    pop         ebp
 00571AD9    ret
end;*}

//00571ADC
{*function sub_00571ADC(?:TOutlineNode):?;
begin
 00571ADC    push        ebp
 00571ADD    mov         ebp,esp
 00571ADF    add         esp,0FFFFFFF8
 00571AE2    mov         dword ptr [ebp-4],eax
 00571AE5    mov         eax,dword ptr [ebp-4]
 00571AE8    call        00571A80
 00571AED    cmp         dword ptr [eax+8],0
>00571AF1    je          00571B0A
 00571AF3    mov         eax,dword ptr [ebp-4]
 00571AF6    call        00571A80
 00571AFB    call        0064523C
 00571B00    call        00571ADC
 00571B05    mov         dword ptr [ebp-8],eax
>00571B08    jmp         00571B15
 00571B0A    mov         eax,dword ptr [ebp-4]
 00571B0D    call        00571BC8
 00571B12    mov         dword ptr [ebp-8],eax
 00571B15    mov         eax,dword ptr [ebp-8]
 00571B18    pop         ecx
 00571B19    pop         ecx
 00571B1A    pop         ebp
 00571B1B    ret
end;*}

//00571B1C
{*procedure sub_00571B1C(?:TOutlineNode; ?:?);
begin
 00571B1C    push        ebp
 00571B1D    mov         ebp,esp
 00571B1F    add         esp,0FFFFFFF0
 00571B22    mov         dword ptr [ebp-8],edx
 00571B25    mov         dword ptr [ebp-4],eax
 00571B28    mov         eax,dword ptr [ebp-4]
 00571B2B    add         eax,8
 00571B2E    mov         edx,dword ptr [ebp-8]
 00571B31    call        @LStrAsg
 00571B36    mov         eax,dword ptr [ebp-4]
 00571B39    cmp         dword ptr [eax+10],0
>00571B3D    je          00571B85
 00571B3F    mov         eax,dword ptr [ebp-4]
 00571B42    mov         eax,dword ptr [eax+10]
 00571B45    cmp         byte ptr [eax+18],0
>00571B49    je          00571B7D
 00571B4B    xor         eax,eax
 00571B4D    mov         dword ptr [ebp-0C],eax
 00571B50    mov         eax,dword ptr [ebp-4]
 00571B53    mov         eax,dword ptr [eax+1C]
 00571B56    mov         dword ptr [ebp-10],eax
 00571B59    lea         ecx,[ebp-0C]
 00571B5C    mov         edx,dword ptr [ebp-4]
 00571B5F    mov         eax,dword ptr [ebp-10]
 00571B62    mov         eax,dword ptr [eax+29C]
 00571B68    call        00571EBC
 00571B6D    mov         ecx,dword ptr [ebp-0C]
 00571B70    sub         ecx,2
 00571B73    xor         edx,edx
 00571B75    mov         eax,dword ptr [ebp-10]
 00571B78    call        005B7180
 00571B7D    mov         eax,dword ptr [ebp-4]
 00571B80    call        00571A54
 00571B85    mov         esp,ebp
 00571B87    pop         ebp
 00571B88    ret
end;*}

//00571B8C
{*procedure sub_00571B8C(?:?; ?:?);
begin
 00571B8C    push        ebp
 00571B8D    mov         ebp,esp
 00571B8F    add         esp,0FFFFFFF8
 00571B92    mov         dword ptr [ebp-8],edx
 00571B95    mov         dword ptr [ebp-4],eax
 00571B98    mov         eax,dword ptr [ebp-4]
 00571B9B    cmp         byte ptr [eax+18],0
>00571B9F    je          00571BC1
 00571BA1    mov         eax,dword ptr [ebp-8]
 00571BA4    mov         edx,dword ptr [ebp-4]
 00571BA7    add         dword ptr [edx+20],eax
 00571BAA    mov         eax,dword ptr [ebp-4]
 00571BAD    cmp         dword ptr [eax+10],0
>00571BB1    je          00571BC1
 00571BB3    mov         edx,dword ptr [ebp-8]
 00571BB6    mov         eax,dword ptr [ebp-4]
 00571BB9    mov         eax,dword ptr [eax+10]
 00571BBC    call        00571B8C
 00571BC1    pop         ecx
 00571BC2    pop         ecx
 00571BC3    pop         ebp
 00571BC4    ret
end;*}

//00571BC8
{*function sub_00571BC8(?:TOutlineNode):?;
begin
 00571BC8    push        ebp
 00571BC9    mov         ebp,esp
 00571BCB    add         esp,0FFFFFFF8
 00571BCE    mov         dword ptr [ebp-4],eax
 00571BD1    mov         edx,dword ptr [ebp-4]
 00571BD4    mov         eax,dword ptr [ebp-4]
 00571BD7    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 00571BDA    call        005742F4
 00571BDF    test        al,al
>00571BE1    je          00571BEB
 00571BE3    mov         eax,dword ptr [ebp-4]
 00571BE6    call        005723E4
 00571BEB    mov         eax,dword ptr [ebp-4]
 00571BEE    mov         eax,dword ptr [eax+14];TOutlineNode.FIndex:Longint
 00571BF1    mov         dword ptr [ebp-8],eax
 00571BF4    mov         eax,dword ptr [ebp-8]
 00571BF7    pop         ecx
 00571BF8    pop         ecx
 00571BF9    pop         ebp
 00571BFA    ret
end;*}

//00571BFC
{*function sub_00571BFC(?:TOutlineNode):?;
begin
 00571BFC    push        ebp
 00571BFD    mov         ebp,esp
 00571BFF    add         esp,0FFFFFFF4
 00571C02    mov         dword ptr [ebp-4],eax
 00571C05    xor         eax,eax
 00571C07    mov         dword ptr [ebp-8],eax
 00571C0A    mov         eax,dword ptr [ebp-4]
 00571C0D    mov         eax,dword ptr [eax+10]
 00571C10    mov         dword ptr [ebp-0C],eax
 00571C13    cmp         dword ptr [ebp-0C],0
>00571C17    je          00571C2B
 00571C19    inc         dword ptr [ebp-8]
 00571C1C    mov         eax,dword ptr [ebp-0C]
 00571C1F    mov         eax,dword ptr [eax+10]
 00571C22    mov         dword ptr [ebp-0C],eax
 00571C25    cmp         dword ptr [ebp-0C],0
>00571C29    jne         00571C19
 00571C2B    mov         eax,dword ptr [ebp-8]
 00571C2E    mov         esp,ebp
 00571C30    pop         ebp
 00571C31    ret
end;*}

//00571C34
{*function sub_00571C34(?:?):?;
begin
 00571C34    push        ebp
 00571C35    mov         ebp,esp
 00571C37    add         esp,0FFFFFFF8
 00571C3A    mov         dword ptr [ebp-4],eax
 00571C3D    mov         edx,dword ptr [ebp-4]
 00571C40    mov         eax,dword ptr [ebp-4]
 00571C43    mov         eax,dword ptr [eax+1C]
 00571C46    call        005746C0
 00571C4B    mov         dword ptr [ebp-8],eax
 00571C4E    mov         eax,dword ptr [ebp-8]
 00571C51    pop         ecx
 00571C52    pop         ecx
 00571C53    pop         ebp
 00571C54    ret
end;*}

//00571C58
{*function sub_00571C58(?:?):?;
begin
 00571C58    push        ebp
 00571C59    mov         ebp,esp
 00571C5B    add         esp,0FFFFFFF8
 00571C5E    mov         dword ptr [ebp-4],eax
 00571C61    mov         eax,dword ptr [ebp-4]
 00571C64    cmp         dword ptr [eax+10],0
>00571C68    je          00571C76
 00571C6A    mov         eax,dword ptr [ebp-4]
 00571C6D    mov         eax,dword ptr [eax+10]
 00571C70    cmp         byte ptr [eax+18],0
>00571C74    jne         00571C7A
 00571C76    xor         eax,eax
>00571C78    jmp         00571C7C
 00571C7A    mov         al,1
 00571C7C    mov         byte ptr [ebp-5],al
 00571C7F    mov         al,byte ptr [ebp-5]
 00571C82    pop         ecx
 00571C83    pop         ecx
 00571C84    pop         ebp
 00571C85    ret
end;*}

//00571C88
{*function sub_00571C88(?:?):?;
begin
 00571C88    push        ebp
 00571C89    mov         ebp,esp
 00571C8B    add         esp,0FFFFFFF8
 00571C8E    mov         dword ptr [ebp-4],eax
 00571C91    mov         eax,dword ptr [ebp-4]
 00571C94    mov         dword ptr [ebp-8],eax
>00571C97    jmp         00571CA2
 00571C99    mov         eax,dword ptr [ebp-8]
 00571C9C    mov         eax,dword ptr [eax+10]
 00571C9F    mov         dword ptr [ebp-8],eax
 00571CA2    mov         eax,dword ptr [ebp-8]
 00571CA5    cmp         dword ptr [eax+10],0
>00571CA9    je          00571CB7
 00571CAB    mov         eax,dword ptr [ebp-8]
 00571CAE    mov         eax,dword ptr [eax+10]
 00571CB1    cmp         byte ptr [eax+18],0
>00571CB5    je          00571C99
 00571CB7    mov         eax,dword ptr [ebp-8]
 00571CBA    pop         ecx
 00571CBB    pop         ecx
 00571CBC    pop         ebp
 00571CBD    ret
end;*}

//00571CC0
{*procedure sub_00571CC0(?:?; ?:?);
begin
 00571CC0    push        ebp
 00571CC1    mov         ebp,esp
 00571CC3    add         esp,0FFFFFFF4
 00571CC6    xor         ecx,ecx
 00571CC8    mov         dword ptr [ebp-0C],ecx
 00571CCB    mov         dword ptr [ebp-8],edx
 00571CCE    mov         dword ptr [ebp-4],eax
 00571CD1    xor         eax,eax
 00571CD3    push        ebp
 00571CD4    push        571D5C
 00571CD9    push        dword ptr fs:[eax]
 00571CDC    mov         dword ptr fs:[eax],esp
 00571CDF    mov         eax,dword ptr [ebp-4]
 00571CE2    cmp         dword ptr [eax+10],0
>00571CE6    je          00571D36
 00571CE8    mov         eax,dword ptr [ebp-4]
 00571CEB    mov         eax,dword ptr [eax+10]
 00571CEE    cmp         dword ptr [eax+10],0
>00571CF2    je          00571D26
 00571CF4    lea         edx,[ebp-0C]
 00571CF7    mov         eax,dword ptr [ebp-4]
 00571CFA    mov         eax,dword ptr [eax+10]
 00571CFD    call        00571CC0
 00571D02    push        dword ptr [ebp-0C]
 00571D05    mov         eax,dword ptr [ebp-4]
 00571D08    mov         eax,dword ptr [eax+1C]
 00571D0B    push        dword ptr [eax+2AC]
 00571D11    mov         eax,dword ptr [ebp-4]
 00571D14    push        dword ptr [eax+8]
 00571D17    mov         eax,dword ptr [ebp-8]
 00571D1A    mov         edx,3
 00571D1F    call        @LStrCatN
>00571D24    jmp         00571D46
 00571D26    mov         eax,dword ptr [ebp-8]
 00571D29    mov         edx,dword ptr [ebp-4]
 00571D2C    mov         edx,dword ptr [edx+8]
 00571D2F    call        @LStrAsg
>00571D34    jmp         00571D46
 00571D36    mov         eax,dword ptr [ebp-8]
 00571D39    mov         edx,dword ptr ds:[6EA0E8];^gvar_006E4984
 00571D3F    mov         edx,dword ptr [edx]
 00571D41    call        @LStrAsg
 00571D46    xor         eax,eax
 00571D48    pop         edx
 00571D49    pop         ecx
 00571D4A    pop         ecx
 00571D4B    mov         dword ptr fs:[eax],edx
 00571D4E    push        571D63
 00571D53    lea         eax,[ebp-0C]
 00571D56    call        @LStrClr
 00571D5B    ret
>00571D5C    jmp         @HandleFinally
>00571D61    jmp         00571D53
 00571D63    mov         esp,ebp
 00571D65    pop         ebp
 00571D66    ret
end;*}

//00571D68
{*function sub_00571D68(?:?):?;
begin
 00571D68    push        ebp
 00571D69    mov         ebp,esp
 00571D6B    add         esp,0FFFFFFF8
 00571D6E    mov         dword ptr [ebp-4],eax
 00571D71    mov         eax,dword ptr [ebp-4]
 00571D74    call        00571A80
 00571D79    cmp         dword ptr [eax+8],0
>00571D7D    jle         00571D93
 00571D7F    xor         edx,edx
 00571D81    mov         eax,dword ptr [ebp-4]
 00571D84    call        00571AB4
 00571D89    call        00571BC8
 00571D8E    mov         dword ptr [ebp-8],eax
>00571D91    jmp         00571D9A
 00571D93    mov         dword ptr [ebp-8],0FFFFFFFF
 00571D9A    mov         eax,dword ptr [ebp-8]
 00571D9D    pop         ecx
 00571D9E    pop         ecx
 00571D9F    pop         ebp
 00571DA0    ret
end;*}

//00571DA4
{*function sub_00571DA4(?:?):?;
begin
 00571DA4    push        ebp
 00571DA5    mov         ebp,esp
 00571DA7    add         esp,0FFFFFFF8
 00571DAA    mov         dword ptr [ebp-4],eax
 00571DAD    mov         eax,dword ptr [ebp-4]
 00571DB0    call        00571A80
 00571DB5    cmp         dword ptr [eax+8],0
>00571DB9    jle         00571DD9
 00571DBB    mov         eax,dword ptr [ebp-4]
 00571DBE    call        00571A80
 00571DC3    mov         edx,dword ptr [eax+8]
 00571DC6    dec         edx
 00571DC7    mov         eax,dword ptr [ebp-4]
 00571DCA    call        00571AB4
 00571DCF    call        00571BC8
 00571DD4    mov         dword ptr [ebp-8],eax
>00571DD7    jmp         00571DE0
 00571DD9    mov         dword ptr [ebp-8],0FFFFFFFF
 00571DE0    mov         eax,dword ptr [ebp-8]
 00571DE3    pop         ecx
 00571DE4    pop         ecx
 00571DE5    pop         ebp
 00571DE6    ret
end;*}

//00571DE8
{*function sub_00571DE8(?:?; ?:?):?;
begin
 00571DE8    push        ebp
 00571DE9    mov         ebp,esp
 00571DEB    add         esp,0FFFFFFEC
 00571DEE    mov         dword ptr [ebp-8],edx
 00571DF1    mov         dword ptr [ebp-4],eax
 00571DF4    mov         dword ptr [ebp-0C],0FFFFFFFF
 00571DFB    mov         eax,dword ptr [ebp-4]
 00571DFE    call        00571A80
 00571E03    mov         eax,dword ptr [eax+8]
 00571E06    dec         eax
 00571E07    test        eax,eax
>00571E09    jl          00571E5A
 00571E0B    inc         eax
 00571E0C    mov         dword ptr [ebp-14],eax
 00571E0F    mov         dword ptr [ebp-10],0
 00571E16    mov         edx,dword ptr [ebp-10]
 00571E19    mov         eax,dword ptr [ebp-4]
 00571E1C    call        00571AB4
 00571E21    call        00571BC8
 00571E26    cmp         eax,dword ptr [ebp-8]
>00571E29    jne         00571E52
 00571E2B    mov         eax,dword ptr [ebp-4]
 00571E2E    call        00571A80
 00571E33    mov         eax,dword ptr [eax+8]
 00571E36    dec         eax
 00571E37    cmp         eax,dword ptr [ebp-10]
>00571E3A    jle         00571E5A
 00571E3C    mov         edx,dword ptr [ebp-10]
 00571E3F    inc         edx
 00571E40    mov         eax,dword ptr [ebp-4]
 00571E43    call        00571AB4
 00571E48    call        00571BC8
 00571E4D    mov         dword ptr [ebp-0C],eax
>00571E50    jmp         00571E5A
 00571E52    inc         dword ptr [ebp-10]
 00571E55    dec         dword ptr [ebp-14]
>00571E58    jne         00571E16
 00571E5A    mov         eax,dword ptr [ebp-0C]
 00571E5D    mov         esp,ebp
 00571E5F    pop         ebp
 00571E60    ret
end;*}

//00571E64
procedure sub_00571E64(?:TOutlineNode);
begin
{*
 00571E64    push        ebp
 00571E65    mov         ebp,esp
 00571E67    add         esp,0FFFFFFF4
 00571E6A    mov         dword ptr [ebp-4],eax
 00571E6D    mov         eax,dword ptr [ebp-4]
 00571E70    call        005727C4
 00571E75    test        al,al
>00571E77    je          00571EB6
 00571E79    mov         dl,1
 00571E7B    mov         eax,dword ptr [ebp-4]
 00571E7E    call        00572208
 00571E83    mov         eax,dword ptr [ebp-4]
 00571E86    call        00571A80
 00571E8B    mov         eax,dword ptr [eax+8]
 00571E8E    dec         eax
 00571E8F    test        eax,eax
>00571E91    jl          00571EB6
 00571E93    inc         eax
 00571E94    mov         dword ptr [ebp-0C],eax
 00571E97    mov         dword ptr [ebp-8],0
 00571E9E    mov         edx,dword ptr [ebp-8]
 00571EA1    mov         eax,dword ptr [ebp-4]
 00571EA4    call        00571AB4
 00571EA9    call        00571E64
 00571EAE    inc         dword ptr [ebp-8]
 00571EB1    dec         dword ptr [ebp-0C]
>00571EB4    jne         00571E9E
 00571EB6    mov         esp,ebp
 00571EB8    pop         ebp
 00571EB9    ret
*}
end;

//00571EBC
{*function sub_00571EBC(?:TOutlineNode; ?:TOutlineNode; ?:?):?;
begin
 00571EBC    push        ebp
 00571EBD    mov         ebp,esp
 00571EBF    add         esp,0FFFFFFE8
 00571EC2    mov         dword ptr [ebp-0C],ecx
 00571EC5    mov         dword ptr [ebp-8],edx
 00571EC8    mov         dword ptr [ebp-4],eax
 00571ECB    mov         eax,dword ptr [ebp-0C]
 00571ECE    inc         dword ptr [eax]
 00571ED0    mov         eax,dword ptr [ebp-8]
 00571ED3    cmp         eax,dword ptr [ebp-4]
>00571ED6    jne         00571EDE
 00571ED8    mov         byte ptr [ebp-0D],1
>00571EDC    jmp         00571F2D
 00571EDE    mov         byte ptr [ebp-0D],0
 00571EE2    mov         eax,dword ptr [ebp-4]
 00571EE5    cmp         byte ptr [eax+18],0
>00571EE9    je          00571F2D
 00571EEB    mov         eax,dword ptr [ebp-4]
 00571EEE    call        00571A80
 00571EF3    mov         eax,dword ptr [eax+8]
 00571EF6    dec         eax
 00571EF7    test        eax,eax
>00571EF9    jl          00571F2D
 00571EFB    inc         eax
 00571EFC    mov         dword ptr [ebp-18],eax
 00571EFF    mov         dword ptr [ebp-14],0
 00571F06    mov         edx,dword ptr [ebp-14]
 00571F09    mov         eax,dword ptr [ebp-4]
 00571F0C    call        00571AB4
 00571F11    mov         ecx,dword ptr [ebp-0C]
 00571F14    mov         edx,dword ptr [ebp-8]
 00571F17    call        00571EBC
 00571F1C    mov         byte ptr [ebp-0D],al
 00571F1F    cmp         byte ptr [ebp-0D],0
>00571F23    jne         00571F2D
 00571F25    inc         dword ptr [ebp-14]
 00571F28    dec         dword ptr [ebp-18]
>00571F2B    jne         00571F06
 00571F2D    mov         al,byte ptr [ebp-0D]
 00571F30    mov         esp,ebp
 00571F32    pop         ebp
 00571F33    ret
end;*}

//00571F34
{*function sub_00571F34(?:TOutlineNode; ?:?):?;
begin
 00571F34    push        ebp
 00571F35    mov         ebp,esp
 00571F37    add         esp,0FFFFFFD0
 00571F3A    xor         ecx,ecx
 00571F3C    mov         dword ptr [ebp-30],ecx
 00571F3F    mov         dword ptr [ebp-8],edx
 00571F42    mov         dword ptr [ebp-4],eax
 00571F45    xor         eax,eax
 00571F47    push        ebp
 00571F48    push        5720C2
 00571F4D    push        dword ptr fs:[eax]
 00571F50    mov         dword ptr fs:[eax],esp
 00571F53    cmp         dword ptr [ebp-8],0
>00571F57    jne         00571F64
 00571F59    mov         eax,dword ptr [ebp-4]
 00571F5C    mov         dword ptr [ebp-0C],eax
>00571F5F    jmp         005720AC
 00571F64    xor         eax,eax
 00571F66    mov         dword ptr [ebp-0C],eax
 00571F69    mov         eax,dword ptr [ebp-4]
 00571F6C    call        00571A80
 00571F71    mov         eax,dword ptr [eax+8]
 00571F74    mov         dword ptr [ebp-28],eax
 00571F77    xor         eax,eax
 00571F79    mov         dword ptr [ebp-20],eax
 00571F7C    mov         eax,dword ptr [ebp-4]
 00571F7F    mov         eax,dword ptr [eax+20]
 00571F82    cmp         eax,dword ptr [ebp-28]
>00571F85    jne         00571F9B
 00571F87    mov         edx,dword ptr [ebp-8]
 00571F8A    dec         edx
 00571F8B    mov         eax,dword ptr [ebp-4]
 00571F8E    call        00571AB4
 00571F93    mov         dword ptr [ebp-0C],eax
>00571F96    jmp         005720AC
 00571F9B    xor         eax,eax
 00571F9D    mov         dword ptr [ebp-10],eax
>00571FA0    jmp         00572081
 00571FA5    mov         eax,dword ptr [ebp-10]
 00571FA8    mov         edx,dword ptr [ebp-28]
 00571FAB    dec         edx
 00571FAC    sub         edx,eax
>00571FAE    jl          00571FD0
 00571FB0    inc         edx
 00571FB1    mov         dword ptr [ebp-2C],edx
 00571FB4    mov         dword ptr [ebp-14],eax
 00571FB7    mov         edx,dword ptr [ebp-14]
 00571FBA    mov         eax,dword ptr [ebp-4]
 00571FBD    call        00571AB4
 00571FC2    cmp         byte ptr [eax+18],0
>00571FC6    jne         00571FD0
 00571FC8    inc         dword ptr [ebp-14]
 00571FCB    dec         dword ptr [ebp-2C]
>00571FCE    jne         00571FB7
 00571FD0    mov         eax,dword ptr [ebp-14]
 00571FD3    cmp         eax,dword ptr [ebp-10]
>00571FD6    jle         00572003
 00571FD8    mov         eax,dword ptr [ebp-14]
 00571FDB    sub         eax,dword ptr [ebp-10]
 00571FDE    cmp         eax,dword ptr [ebp-8]
>00571FE1    jl          00571FFA
 00571FE3    mov         edx,dword ptr [ebp-10]
 00571FE6    add         edx,dword ptr [ebp-8]
 00571FE9    dec         edx
 00571FEA    mov         eax,dword ptr [ebp-4]
 00571FED    call        00571AB4
 00571FF2    mov         dword ptr [ebp-0C],eax
>00571FF5    jmp         0057208E
 00571FFA    mov         eax,dword ptr [ebp-14]
 00571FFD    sub         eax,dword ptr [ebp-10]
 00572000    sub         dword ptr [ebp-8],eax
 00572003    mov         edx,dword ptr [ebp-14]
 00572006    mov         eax,dword ptr [ebp-4]
 00572009    call        00571AB4
 0057200E    mov         dword ptr [ebp-24],eax
 00572011    mov         eax,dword ptr [ebp-24]
 00572014    mov         eax,dword ptr [eax+20]
 00572017    inc         eax
 00572018    mov         dword ptr [ebp-1C],eax
 0057201B    mov         eax,dword ptr [ebp-1C]
 0057201E    add         eax,dword ptr [ebp-14]
 00572021    sub         eax,dword ptr [ebp-10]
 00572024    mov         dword ptr [ebp-18],eax
 00572027    mov         eax,dword ptr [ebp-18]
 0057202A    add         dword ptr [ebp-20],eax
 0057202D    mov         eax,dword ptr [ebp-1C]
 00572030    cmp         eax,dword ptr [ebp-8]
>00572033    jl          00572046
 00572035    mov         edx,dword ptr [ebp-8]
 00572038    dec         edx
 00572039    mov         eax,dword ptr [ebp-24]
 0057203C    call        00571F34
 00572041    mov         dword ptr [ebp-0C],eax
>00572044    jmp         0057208E
 00572046    mov         eax,dword ptr [ebp-14]
 00572049    inc         eax
 0057204A    mov         edx,dword ptr [ebp-28]
 0057204D    sub         edx,eax
 0057204F    mov         eax,dword ptr [ebp-4]
 00572052    mov         eax,dword ptr [eax+20]
 00572055    sub         eax,dword ptr [ebp-20]
 00572058    cmp         edx,eax
>0057205A    jne         00572072
 0057205C    mov         edx,dword ptr [ebp-8]
 0057205F    sub         edx,dword ptr [ebp-1C]
 00572062    add         edx,dword ptr [ebp-14]
 00572065    mov         eax,dword ptr [ebp-4]
 00572068    call        00571AB4
 0057206D    mov         dword ptr [ebp-0C],eax
>00572070    jmp         005720AC
 00572072    mov         eax,dword ptr [ebp-1C]
 00572075    sub         dword ptr [ebp-8],eax
 00572078    mov         eax,dword ptr [ebp-14]
 0057207B    mov         dword ptr [ebp-10],eax
 0057207E    inc         dword ptr [ebp-10]
 00572081    mov         eax,dword ptr [ebp-28]
 00572084    dec         eax
 00572085    cmp         eax,dword ptr [ebp-10]
>00572088    jge         00571FA5
 0057208E    cmp         dword ptr [ebp-0C],0
>00572092    jne         005720AC
 00572094    lea         edx,[ebp-30]
 00572097    mov         eax,[006E9EC8];^gvar_0063CBA0
 0057209C    call        LoadResString
 005720A1    mov         edx,dword ptr [ebp-30]
 005720A4    mov         eax,dword ptr [ebp-4]
 005720A7    call        005727A0
 005720AC    xor         eax,eax
 005720AE    pop         edx
 005720AF    pop         ecx
 005720B0    pop         ecx
 005720B1    mov         dword ptr fs:[eax],edx
 005720B4    push        5720C9
 005720B9    lea         eax,[ebp-30]
 005720BC    call        @LStrClr
 005720C1    ret
>005720C2    jmp         @HandleFinally
>005720C7    jmp         005720B9
 005720C9    mov         eax,dword ptr [ebp-0C]
 005720CC    mov         esp,ebp
 005720CE    pop         ebp
 005720CF    ret
end;*}

//005720D0
{*function sub_005720D0(?:?):?;
begin
 005720D0    push        ebp
 005720D1    mov         ebp,esp
 005720D3    push        ecx
 005720D4    mov         eax,dword ptr [ebp+8]
 005720D7    mov         eax,dword ptr [eax-4]
 005720DA    call        00571BC8
 005720DF    mov         edx,dword ptr [ebp+8]
 005720E2    cmp         eax,dword ptr [edx-8]
>005720E5    jne         005720F2
 005720E7    mov         eax,dword ptr [ebp+8]
 005720EA    mov         eax,dword ptr [eax-4]
 005720ED    mov         dword ptr [ebp-4],eax
>005720F0    jmp         00572106
 005720F2    mov         eax,dword ptr [ebp+8]
 005720F5    mov         edx,dword ptr [eax-8]
 005720F8    mov         eax,dword ptr [ebp+8]
 005720FB    mov         eax,dword ptr [eax-4]
 005720FE    call        0057210C
 00572103    mov         dword ptr [ebp-4],eax
 00572106    mov         eax,dword ptr [ebp-4]
 00572109    pop         ecx
 0057210A    pop         ebp
 0057210B    ret
end;*}

//0057210C
{*function sub_0057210C(?:TOutlineNode; ?:?):?;
begin
 0057210C    push        ebp
 0057210D    mov         ebp,esp
 0057210F    add         esp,0FFFFFFE4
 00572112    mov         dword ptr [ebp-8],edx
 00572115    mov         dword ptr [ebp-0C],eax
 00572118    mov         eax,dword ptr [ebp-0C]
 0057211B    call        00571BC8
 00572120    cmp         eax,dword ptr [ebp-8]
>00572123    jne         00572130
 00572125    mov         eax,dword ptr [ebp-0C]
 00572128    mov         dword ptr [ebp-10],eax
>0057212B    jmp         00572200
 00572130    xor         eax,eax
 00572132    mov         dword ptr [ebp-18],eax
 00572135    mov         eax,dword ptr [ebp-0C]
 00572138    call        00571A80
 0057213D    mov         eax,dword ptr [eax+8]
 00572140    dec         eax
 00572141    mov         dword ptr [ebp-1C],eax
 00572144    xor         eax,eax
 00572146    mov         dword ptr [ebp-10],eax
 00572149    mov         eax,dword ptr [ebp-1C]
 0057214C    cmp         eax,dword ptr [ebp-18]
>0057214F    jl          005721E9
 00572155    mov         eax,dword ptr [ebp-18]
 00572158    add         eax,dword ptr [ebp-1C]
 0057215B    sar         eax,1
>0057215D    jns         00572162
 0057215F    adc         eax,0
 00572162    mov         dword ptr [ebp-14],eax
 00572165    mov         edx,dword ptr [ebp-14]
 00572168    mov         eax,dword ptr [ebp-0C]
 0057216B    call        00571AB4
 00572170    mov         dword ptr [ebp-4],eax
 00572173    mov         eax,dword ptr [ebp-18]
 00572176    cmp         eax,dword ptr [ebp-1C]
>00572179    jne         00572187
 0057217B    push        ebp
 0057217C    call        005720D0
 00572181    pop         ecx
 00572182    mov         dword ptr [ebp-10],eax
>00572185    jmp         005721E9
 00572187    mov         eax,dword ptr [ebp-4]
 0057218A    call        00571BC8
 0057218F    cmp         eax,dword ptr [ebp-8]
>00572192    jle         0057219D
 00572194    mov         eax,dword ptr [ebp-14]
 00572197    dec         eax
 00572198    mov         dword ptr [ebp-1C],eax
>0057219B    jmp         005721DD
 0057219D    mov         eax,dword ptr [ebp-4]
 005721A0    call        00571BC8
 005721A5    cmp         eax,dword ptr [ebp-8]
>005721A8    jge         005721D1
 005721AA    mov         eax,dword ptr [ebp-14]
 005721AD    cmp         eax,dword ptr [ebp-1C]
>005721B0    jge         005721D1
 005721B2    mov         edx,dword ptr [ebp-14]
 005721B5    inc         edx
 005721B6    mov         eax,dword ptr [ebp-0C]
 005721B9    call        00571AB4
 005721BE    call        00571BC8
 005721C3    cmp         eax,dword ptr [ebp-8]
>005721C6    jg          005721D1
 005721C8    mov         eax,dword ptr [ebp-14]
 005721CB    inc         eax
 005721CC    mov         dword ptr [ebp-18],eax
>005721CF    jmp         005721DD
 005721D1    push        ebp
 005721D2    call        005720D0
 005721D7    pop         ecx
 005721D8    mov         dword ptr [ebp-10],eax
>005721DB    jmp         005721E9
 005721DD    mov         eax,dword ptr [ebp-1C]
 005721E0    cmp         eax,dword ptr [ebp-18]
>005721E3    jge         00572155
 005721E9    cmp         dword ptr [ebp-10],0
>005721ED    jne         00572200
 005721EF    mov         dl,1
 005721F1    mov         eax,[00570A54];OutlineError
 005721F6    call        TObject.Create;OutlineError.Create
 005721FB    call        @RaiseExcept
 00572200    mov         eax,dword ptr [ebp-10]
 00572203    mov         esp,ebp
 00572205    pop         ebp
 00572206    ret
end;*}

//00572208
{*procedure sub_00572208(?:TOutlineNode; ?:?);
begin
 00572208    push        ebp
 00572209    mov         ebp,esp
 0057220B    add         esp,0FFFFFFF0
 0057220E    push        esi
 0057220F    xor         ecx,ecx
 00572211    mov         dword ptr [ebp-10],ecx
 00572214    mov         byte ptr [ebp-5],dl
 00572217    mov         dword ptr [ebp-4],eax
 0057221A    xor         eax,eax
 0057221C    push        ebp
 0057221D    push        57233C
 00572222    push        dword ptr fs:[eax]
 00572225    mov         dword ptr fs:[eax],esp
 00572228    mov         eax,dword ptr [ebp-4]
 0057222B    mov         al,byte ptr [eax+18]
 0057222E    cmp         al,byte ptr [ebp-5]
>00572231    je          00572326
 00572237    cmp         byte ptr [ebp-5],0
>0057223B    je          005722B1
 0057223D    mov         eax,dword ptr [ebp-4]
 00572240    mov         eax,dword ptr [eax+10]
 00572243    mov         dword ptr [ebp-0C],eax
 00572246    cmp         dword ptr [ebp-0C],0
>0057224A    je          0057227C
 0057224C    mov         eax,dword ptr [ebp-0C]
 0057224F    cmp         byte ptr [eax+18],0
>00572253    jne         0057226D
 00572255    lea         edx,[ebp-10]
 00572258    mov         eax,[006E9ECC];^gvar_0063CBA8
 0057225D    call        LoadResString
 00572262    mov         edx,dword ptr [ebp-10]
 00572265    mov         eax,dword ptr [ebp-4]
 00572268    call        005727A0
 0057226D    mov         eax,dword ptr [ebp-0C]
 00572270    mov         eax,dword ptr [eax+10]
 00572273    mov         dword ptr [ebp-0C],eax
 00572276    cmp         dword ptr [ebp-0C],0
>0057227A    jne         0057224C
 0057227C    mov         eax,dword ptr [ebp-4]
 0057227F    call        00571BC8
 00572284    mov         edx,eax
 00572286    mov         eax,dword ptr [ebp-4]
 00572289    mov         eax,dword ptr [eax+1C]
 0057228C    mov         si,0FF9D
 00572290    call        @CallDynaInst
 00572295    mov         eax,dword ptr [ebp-4]
 00572298    mov         byte ptr [eax+18],1
 0057229C    mov         eax,dword ptr [ebp-4]
 0057229F    call        00571A80
 005722A4    mov         edx,dword ptr [eax+8]
 005722A7    mov         eax,dword ptr [ebp-4]
 005722AA    call        00571B8C
>005722AF    jmp         00572316
 005722B1    mov         eax,dword ptr [ebp-4]
 005722B4    call        00572348
 005722B9    mov         eax,dword ptr [ebp-4]
 005722BC    call        00571A80
 005722C1    cmp         dword ptr [eax+8],0
>005722C5    jle         005722DC
 005722C7    mov         eax,dword ptr [ebp-4]
 005722CA    call        00571A80
 005722CF    mov         edx,dword ptr [eax+8]
 005722D2    neg         edx
 005722D4    mov         eax,dword ptr [ebp-4]
 005722D7    call        00571B8C
 005722DC    mov         eax,dword ptr [ebp-4]
 005722DF    mov         eax,dword ptr [eax+1C]
 005722E2    call        0057423C
 005722E7    test        al,al
>005722E9    je          005722F6
 005722EB    mov         eax,dword ptr [ebp-4]
 005722EE    mov         eax,dword ptr [eax+1C]
 005722F1    mov         edx,dword ptr [eax]
 005722F3    call        dword ptr [edx+7C]
 005722F6    mov         eax,dword ptr [ebp-4]
 005722F9    call        00571BC8
 005722FE    mov         edx,eax
 00572300    mov         eax,dword ptr [ebp-4]
 00572303    mov         eax,dword ptr [eax+1C]
 00572306    mov         si,0FF9C
 0057230A    call        @CallDynaInst
 0057230F    mov         eax,dword ptr [ebp-4]
 00572312    mov         byte ptr [eax+18],0
 00572316    mov         eax,dword ptr [ebp-4]
 00572319    call        00571A54
 0057231E    mov         eax,dword ptr [ebp-4]
 00572321    call        005723B4
 00572326    xor         eax,eax
 00572328    pop         edx
 00572329    pop         ecx
 0057232A    pop         ecx
 0057232B    mov         dword ptr fs:[eax],edx
 0057232E    push        572343
 00572333    lea         eax,[ebp-10]
 00572336    call        @LStrClr
 0057233B    ret
>0057233C    jmp         @HandleFinally
>00572341    jmp         00572333
 00572343    pop         esi
 00572344    mov         esp,ebp
 00572346    pop         ebp
 00572347    ret
end;*}

//00572348
{*procedure sub_00572348(?:?);
begin
 00572348    push        ebp
 00572349    mov         ebp,esp
 0057234B    add         esp,0FFFFFFF4
 0057234E    mov         dword ptr [ebp-4],eax
 00572351    mov         eax,dword ptr [ebp-4]
 00572354    call        00571A80
 00572359    mov         eax,dword ptr [eax+8]
 0057235C    dec         eax
 0057235D    test        eax,eax
>0057235F    jl          00572384
 00572361    inc         eax
 00572362    mov         dword ptr [ebp-0C],eax
 00572365    mov         dword ptr [ebp-8],0
 0057236C    mov         edx,dword ptr [ebp-8]
 0057236F    mov         eax,dword ptr [ebp-4]
 00572372    call        00571AB4
 00572377    call        00572348
 0057237C    inc         dword ptr [ebp-8]
 0057237F    dec         dword ptr [ebp-0C]
>00572382    jne         0057236C
 00572384    mov         eax,dword ptr [ebp-4]
 00572387    call        00571A80
 0057238C    cmp         dword ptr [eax+8],0
>00572390    jle         005723A7
 00572392    mov         eax,dword ptr [ebp-4]
 00572395    call        00571A80
 0057239A    mov         edx,dword ptr [eax+8]
 0057239D    neg         edx
 0057239F    mov         eax,dword ptr [ebp-4]
 005723A2    call        00571B8C
 005723A7    mov         eax,dword ptr [ebp-4]
 005723AA    mov         byte ptr [eax+18],0
 005723AE    mov         esp,ebp
 005723B0    pop         ebp
 005723B1    ret
end;*}

//005723B4
{*procedure sub_005723B4(?:?);
begin
 005723B4    push        ebp
 005723B5    mov         ebp,esp
 005723B7    push        ecx
 005723B8    mov         dword ptr [ebp-4],eax
 005723BB    mov         eax,dword ptr [ebp-4]
 005723BE    cmp         dword ptr [eax+1C],0
>005723C2    je          005723DE
 005723C4    mov         eax,dword ptr [ebp-4]
 005723C7    mov         eax,dword ptr [eax+1C]
 005723CA    call        0057423C
 005723CF    test        al,al
>005723D1    je          005723DE
 005723D3    mov         eax,dword ptr [ebp-4]
 005723D6    mov         eax,dword ptr [eax+1C]
 005723D9    mov         edx,dword ptr [eax]
 005723DB    call        dword ptr [edx+7C]
 005723DE    pop         ecx
 005723DF    pop         ebp
 005723E0    ret
end;*}

//005723E4
procedure sub_005723E4(?:TOutlineNode);
begin
{*
 005723E4    push        ebp
 005723E5    mov         ebp,esp
 005723E7    add         esp,0FFFFFFF4
 005723EA    mov         dword ptr [ebp-4],eax
 005723ED    mov         edx,dword ptr [ebp-4]
 005723F0    mov         eax,dword ptr [ebp-4]
 005723F3    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 005723F6    call        00574324
 005723FB    mov         dword ptr [ebp-8],eax
 005723FE    mov         eax,dword ptr [ebp-8]
 00572401    mov         eax,dword ptr [eax+10]
 00572404    mov         dword ptr [ebp-0C],eax
 00572407    cmp         dword ptr [ebp-0C],0
>0057240B    je          00572426
 0057240D    mov         eax,dword ptr [ebp-8]
 00572410    mov         eax,dword ptr [eax+14]
 00572413    push        eax
 00572414    push        1
 00572416    mov         ecx,dword ptr [ebp-4]
 00572419    mov         edx,dword ptr [ebp-8]
 0057241C    mov         eax,dword ptr [ebp-0C]
 0057241F    call        00572620
>00572424    jmp         00572444
 00572426    mov         eax,dword ptr [ebp-4]
 00572429    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057242C    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00572432    cmp         eax,dword ptr [ebp-4]
>00572435    je          00572444
 00572437    mov         eax,dword ptr [ebp-8]
 0057243A    mov         eax,dword ptr [eax+14]
 0057243D    inc         eax
 0057243E    mov         edx,dword ptr [ebp-4]
 00572441    mov         dword ptr [edx+14],eax;TOutlineNode.FIndex:Longint
 00572444    mov         eax,dword ptr [ebp-4]
 00572447    mov         eax,dword ptr [eax+1C];TOutlineNode.FOutline:TCustomOutline
 0057244A    mov         edx,dword ptr [ebp-4]
 0057244D    mov         dword ptr [eax+2A0],edx;TCustomOutline.FGoodNode:TOutlineNode
 00572453    mov         esp,ebp
 00572455    pop         ebp
 00572456    ret
*}
end;

//00572458
{*function sub_00572458(?:?; ?:TOutlineNode):?;
begin
 00572458    push        ebp
 00572459    mov         ebp,esp
 0057245B    add         esp,0FFFFFFF4
 0057245E    mov         dword ptr [ebp-8],edx
 00572461    mov         dword ptr [ebp-4],eax
 00572464    mov         eax,dword ptr [ebp-4]
 00572467    call        00571A80
 0057246C    mov         edx,dword ptr [ebp-8]
 0057246F    call        TList.Add
 00572474    mov         eax,dword ptr [ebp-4]
 00572477    mov         edx,dword ptr [ebp-8]
 0057247A    mov         dword ptr [edx+10],eax
 0057247D    mov         eax,dword ptr [ebp-8]
 00572480    mov         edx,dword ptr [eax+20]
 00572483    inc         edx
 00572484    mov         eax,dword ptr [ebp-4]
 00572487    call        00571B8C
 0057248C    mov         eax,dword ptr [ebp-4]
 0057248F    mov         eax,dword ptr [eax+1C]
 00572492    cmp         byte ptr [eax+298],0
>00572499    jne         005724A3
 0057249B    mov         eax,dword ptr [ebp-8]
 0057249E    call        005723E4
 005724A3    mov         eax,dword ptr [ebp-8]
 005724A6    mov         eax,dword ptr [eax+14]
 005724A9    mov         dword ptr [ebp-0C],eax
 005724AC    mov         eax,dword ptr [ebp-8]
 005724AF    call        00571A54
 005724B4    mov         eax,dword ptr [ebp-0C]
 005724B7    mov         esp,ebp
 005724B9    pop         ebp
 005724BA    ret
end;*}

//005724BC
{*function sub_005724BC(?:?; ?:?; ?:TOutlineNode):?;
begin
 005724BC    push        ebp
 005724BD    mov         ebp,esp
 005724BF    add         esp,0FFFFFFE4
 005724C2    mov         dword ptr [ebp-0C],ecx
 005724C5    mov         dword ptr [ebp-8],edx
 005724C8    mov         dword ptr [ebp-4],eax
 005724CB    mov         eax,dword ptr [ebp-4]
 005724CE    call        00571A80
 005724D3    mov         eax,dword ptr [eax+8]
 005724D6    dec         eax
 005724D7    test        eax,eax
>005724D9    jl          00572525
 005724DB    inc         eax
 005724DC    mov         dword ptr [ebp-1C],eax
 005724DF    mov         dword ptr [ebp-18],0
 005724E6    mov         edx,dword ptr [ebp-18]
 005724E9    mov         eax,dword ptr [ebp-4]
 005724EC    call        00571AB4
 005724F1    mov         eax,dword ptr [eax+14]
 005724F4    mov         dword ptr [ebp-14],eax
 005724F7    mov         eax,dword ptr [ebp-14]
 005724FA    cmp         eax,dword ptr [ebp-8]
>005724FD    jne         0057251D
 005724FF    mov         eax,dword ptr [ebp-4]
 00572502    call        00571A80
 00572507    mov         ecx,dword ptr [ebp-0C]
 0057250A    mov         edx,dword ptr [ebp-18]
 0057250D    call        TList.Insert
 00572512    mov         eax,dword ptr [ebp-0C]
 00572515    mov         edx,dword ptr [ebp-4]
 00572518    mov         dword ptr [eax+10],edx
>0057251B    jmp         00572525
 0057251D    inc         dword ptr [ebp-18]
 00572520    dec         dword ptr [ebp-1C]
>00572523    jne         005724E6
 00572525    mov         eax,dword ptr [ebp-0C]
 00572528    mov         edx,dword ptr [eax+20]
 0057252B    inc         edx
 0057252C    mov         eax,dword ptr [ebp-4]
 0057252F    call        00571B8C
 00572534    mov         eax,dword ptr [ebp-4]
 00572537    mov         eax,dword ptr [eax+1C]
 0057253A    cmp         byte ptr [eax+298],0
>00572541    jne         0057254B
 00572543    mov         eax,dword ptr [ebp-0C]
 00572546    call        005723E4
 0057254B    mov         eax,dword ptr [ebp-0C]
 0057254E    mov         eax,dword ptr [eax+14]
 00572551    mov         dword ptr [ebp-10],eax
 00572554    mov         eax,dword ptr [ebp-0C]
 00572557    call        00571A54
 0057255C    mov         eax,dword ptr [ebp-10]
 0057255F    mov         esp,ebp
 00572561    pop         ebp
 00572562    ret
end;*}

//00572564
procedure sub_00572564(?:TOutlineNode; ?:TOutlineNode; ?:Integer);
begin
{*
 00572564    push        ebp
 00572565    mov         ebp,esp
 00572567    add         esp,0FFFFFFF4
 0057256A    mov         dword ptr [ebp-0C],ecx
 0057256D    mov         dword ptr [ebp-8],edx
 00572570    mov         dword ptr [ebp-4],eax
 00572573    cmp         dword ptr [ebp-0C],0
>00572577    je          00572594
 00572579    mov         edx,dword ptr [ebp-0C]
 0057257C    dec         edx
 0057257D    mov         eax,dword ptr [ebp-4]
 00572580    call        00571AB4
 00572585    mov         edx,eax
 00572587    mov         eax,dword ptr [ebp-4]
 0057258A    mov         eax,dword ptr [eax+1C]
 0057258D    call        00574324
>00572592    jmp         005725A2
 00572594    mov         edx,dword ptr [ebp-4]
 00572597    mov         eax,dword ptr [ebp-4]
 0057259A    mov         eax,dword ptr [eax+1C]
 0057259D    call        00574324
 005725A2    mov         eax,dword ptr [ebp-4]
 005725A5    call        00571A80
 005725AA    mov         edx,dword ptr [ebp-0C]
 005725AD    call        TList.Delete
 005725B2    mov         eax,dword ptr [ebp-8]
 005725B5    mov         edx,dword ptr [eax+20]
 005725B8    inc         edx
 005725B9    neg         edx
 005725BB    mov         eax,dword ptr [ebp-4]
 005725BE    call        00571B8C
 005725C3    mov         eax,dword ptr [ebp-4]
 005725C6    call        00571A80
 005725CB    cmp         dword ptr [eax+8],0
>005725CF    jne         005725E4
 005725D1    mov         eax,dword ptr [ebp-4]
 005725D4    cmp         dword ptr [eax+10],0
>005725D8    je          005725E4
 005725DA    xor         edx,edx
 005725DC    mov         eax,dword ptr [ebp-4]
 005725DF    call        00572208
 005725E4    mov         eax,dword ptr [ebp-4]
 005725E7    call        00571A54
 005725EC    mov         esp,ebp
 005725EE    pop         ebp
 005725EF    ret
*}
end;

//005725F0
procedure sub_005725F0(?:TOutlineNode; ?:TOutlineNode);
begin
{*
 005725F0    push        ebp
 005725F1    mov         ebp,esp
 005725F3    add         esp,0FFFFFFF8
 005725F6    mov         dword ptr [ebp-8],edx
 005725F9    mov         dword ptr [ebp-4],eax
 005725FC    mov         eax,dword ptr [ebp-4]
 005725FF    call        00571A80
 00572604    mov         edx,dword ptr [ebp-8]
 00572607    call        TList.IndexOf
 0057260C    mov         ecx,eax
 0057260E    mov         edx,dword ptr [ebp-8]
 00572611    mov         eax,dword ptr [ebp-4]
 00572614    call        00572564
 00572619    pop         ecx
 0057261A    pop         ecx
 0057261B    pop         ebp
 0057261C    ret
*}
end;

//00572620
{*procedure sub_00572620(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00572620    push        ebp
 00572621    mov         ebp,esp
 00572623    add         esp,0FFFFFFEC
 00572626    mov         dword ptr [ebp-0C],ecx
 00572629    mov         dword ptr [ebp-8],edx
 0057262C    mov         dword ptr [ebp-4],eax
 0057262F    mov         eax,dword ptr [ebp-4]
 00572632    call        00571A80
 00572637    mov         edx,dword ptr [ebp-8]
 0057263A    call        TList.IndexOf
 0057263F    push        eax
 00572640    mov         eax,dword ptr [ebp-4]
 00572643    call        00571A80
 00572648    mov         eax,dword ptr [eax+8]
 0057264B    dec         eax
 0057264C    pop         edx
 0057264D    sub         eax,edx
>0057264F    jl          00572686
 00572651    inc         eax
 00572652    mov         dword ptr [ebp-14],eax
 00572655    mov         dword ptr [ebp-10],edx
 00572658    cmp         byte ptr [ebp+8],0
>0057265C    je          0057267A
 0057265E    mov         edx,dword ptr [ebp-10]
 00572661    mov         eax,dword ptr [ebp-4]
 00572664    call        00571AB4
 00572669    lea         edx,[ebp+0C]
 0057266C    mov         ecx,dword ptr [ebp-0C]
 0057266F    call        005726AC
 00572674    test        al,al
>00572676    jne         005726A6
>00572678    jmp         0057267E
 0057267A    mov         byte ptr [ebp+8],1
 0057267E    inc         dword ptr [ebp-10]
 00572681    dec         dword ptr [ebp-14]
>00572684    jne         00572658
 00572686    mov         eax,dword ptr [ebp-4]
 00572689    cmp         dword ptr [eax+10],0
>0057268D    je          005726A6
 0057268F    mov         eax,dword ptr [ebp+0C]
 00572692    push        eax
 00572693    push        0
 00572695    mov         ecx,dword ptr [ebp-0C]
 00572698    mov         edx,dword ptr [ebp-4]
 0057269B    mov         eax,dword ptr [ebp-4]
 0057269E    mov         eax,dword ptr [eax+10]
 005726A1    call        00572620
 005726A6    mov         esp,ebp
 005726A8    pop         ebp
 005726A9    ret         8
end;*}

//005726AC
{*function sub_005726AC(?:?; ?:?; ?:?):?;
begin
 005726AC    push        ebp
 005726AD    mov         ebp,esp
 005726AF    add         esp,0FFFFFFE8
 005726B2    mov         dword ptr [ebp-0C],ecx
 005726B5    mov         dword ptr [ebp-8],edx
 005726B8    mov         dword ptr [ebp-4],eax
 005726BB    mov         eax,dword ptr [ebp-8]
 005726BE    mov         eax,dword ptr [eax]
 005726C0    mov         edx,dword ptr [ebp-4]
 005726C3    mov         dword ptr [edx+14],eax
 005726C6    mov         eax,dword ptr [ebp-0C]
 005726C9    cmp         eax,dword ptr [ebp-4]
>005726CC    jne         005726D4
 005726CE    mov         byte ptr [ebp-0D],1
>005726D2    jmp         0057271F
 005726D4    mov         byte ptr [ebp-0D],0
 005726D8    mov         eax,dword ptr [ebp-8]
 005726DB    inc         dword ptr [eax]
 005726DD    mov         eax,dword ptr [ebp-4]
 005726E0    call        00571A80
 005726E5    mov         eax,dword ptr [eax+8]
 005726E8    dec         eax
 005726E9    test        eax,eax
>005726EB    jl          0057271F
 005726ED    inc         eax
 005726EE    mov         dword ptr [ebp-18],eax
 005726F1    mov         dword ptr [ebp-14],0
 005726F8    mov         edx,dword ptr [ebp-14]
 005726FB    mov         eax,dword ptr [ebp-4]
 005726FE    call        00571AB4
 00572703    mov         edx,dword ptr [ebp-8]
 00572706    mov         ecx,dword ptr [ebp-0C]
 00572709    call        005726AC
 0057270E    mov         byte ptr [ebp-0D],al
 00572711    cmp         byte ptr [ebp-0D],0
>00572715    jne         0057271F
 00572717    inc         dword ptr [ebp-14]
 0057271A    dec         dword ptr [ebp-18]
>0057271D    jne         005726F8
 0057271F    mov         al,byte ptr [ebp-0D]
 00572722    mov         esp,ebp
 00572724    pop         ebp
 00572725    ret
end;*}

//00572728
{*function sub_00572728(?:TOutlineNode; ?:?):?;
begin
 00572728    push        ebp
 00572729    mov         ebp,esp
 0057272B    add         esp,0FFFFFFE8
 0057272E    mov         dword ptr [ebp-8],edx
 00572731    mov         dword ptr [ebp-4],eax
 00572734    mov         eax,dword ptr [ebp-4]
 00572737    call        00571C34
 0057273C    mov         dword ptr [ebp-14],eax
 0057273F    mov         eax,dword ptr [ebp-14]
 00572742    cmp         eax,dword ptr [ebp-8]
>00572745    jbe         0057274F
 00572747    mov         eax,dword ptr [ebp-14]
 0057274A    mov         dword ptr [ebp-0C],eax
>0057274D    jmp         00572755
 0057274F    mov         eax,dword ptr [ebp-8]
 00572752    mov         dword ptr [ebp-0C],eax
 00572755    mov         eax,dword ptr [ebp-4]
 00572758    cmp         byte ptr [eax+18],0
>0057275C    je          00572797
 0057275E    mov         eax,dword ptr [ebp-4]
 00572761    call        00571A80
 00572766    mov         eax,dword ptr [eax+8]
 00572769    dec         eax
 0057276A    test        eax,eax
>0057276C    jl          00572797
 0057276E    inc         eax
 0057276F    mov         dword ptr [ebp-18],eax
 00572772    mov         dword ptr [ebp-10],0
 00572779    mov         edx,dword ptr [ebp-10]
 0057277C    mov         eax,dword ptr [ebp-4]
 0057277F    call        00571AB4
 00572784    mov         edx,dword ptr [ebp-0C]
 00572787    call        00572728
 0057278C    mov         dword ptr [ebp-0C],eax
 0057278F    inc         dword ptr [ebp-10]
 00572792    dec         dword ptr [ebp-18]
>00572795    jne         00572779
 00572797    mov         eax,dword ptr [ebp-0C]
 0057279A    mov         esp,ebp
 0057279C    pop         ebp
 0057279D    ret
end;*}

//005727A0
{*procedure sub_005727A0(?:?; ?:?);
begin
 005727A0    push        ebp
 005727A1    mov         ebp,esp
 005727A3    add         esp,0FFFFFFF8
 005727A6    mov         dword ptr [ebp-8],edx
 005727A9    mov         dword ptr [ebp-4],eax
 005727AC    mov         ecx,dword ptr [ebp-8]
 005727AF    mov         dl,1
 005727B1    mov         eax,[00570AB0];EOutlineError
 005727B6    call        Exception.Create;EOutlineError.Create
 005727BB    call        @RaiseExcept
 005727C0    pop         ecx
 005727C1    pop         ecx
 005727C2    pop         ebp
 005727C3    ret
end;*}

//005727C4
{*function sub_005727C4(?:?):?;
begin
 005727C4    push        ebp
 005727C5    mov         ebp,esp
 005727C7    add         esp,0FFFFFFF8
 005727CA    mov         dword ptr [ebp-4],eax
 005727CD    mov         eax,dword ptr [ebp-4]
 005727D0    call        00571A80
 005727D5    cmp         dword ptr [eax+8],0
 005727D9    setg        byte ptr [ebp-5]
 005727DD    mov         al,byte ptr [ebp-5]
 005727E0    pop         ecx
 005727E1    pop         ecx
 005727E2    pop         ebp
 005727E3    ret
end;*}

//005727E4
{*procedure sub_005727E4(?:?; ?:Pointer; ?:?);
begin
 005727E4    push        ebp
 005727E5    mov         ebp,esp
 005727E7    add         esp,0FFFFFFE4
 005727EA    mov         dword ptr [ebp-0C],ecx
 005727ED    mov         dword ptr [ebp-8],edx
 005727F0    mov         dword ptr [ebp-4],eax
 005727F3    mov         eax,dword ptr [ebp-4]
 005727F6    cmp         dword ptr [eax+10],0
>005727FA    je          0057284B
 005727FC    mov         eax,dword ptr [ebp-8]
 005727FF    mov         dword ptr [ebp-10],eax
 00572802    mov         eax,dword ptr [ebp-4]
 00572805    call        00571BFC
 0057280A    mov         word ptr [ebp-12],ax
 0057280E    cmp         word ptr [ebp-12],1
>00572813    jbe         00572829
 00572815    mov         eax,dword ptr [ebp-10]
 00572818    mov         byte ptr [eax],9
 0057281B    dec         word ptr [ebp-12]
 0057281F    inc         dword ptr [ebp-10]
 00572822    cmp         word ptr [ebp-12],1
>00572827    ja          00572815
 00572829    mov         eax,dword ptr [ebp-4]
 0057282C    mov         edx,dword ptr [eax+8]
 0057282F    mov         eax,dword ptr [ebp-10]
 00572832    call        005717E8
 00572837    mov         dword ptr [ebp-10],eax
 0057283A    mov         ecx,dword ptr [ebp-10]
 0057283D    sub         ecx,dword ptr [ebp-8]
 00572840    mov         edx,dword ptr [ebp-8]
 00572843    mov         eax,dword ptr [ebp-0C]
 00572846    call        TStream.WriteBuffer
 0057284B    mov         eax,dword ptr [ebp-4]
 0057284E    call        00571A80
 00572853    mov         eax,dword ptr [eax+8]
 00572856    dec         eax
 00572857    test        eax,eax
>00572859    jl          00572884
 0057285B    inc         eax
 0057285C    mov         dword ptr [ebp-1C],eax
 0057285F    mov         dword ptr [ebp-18],0
 00572866    mov         edx,dword ptr [ebp-18]
 00572869    mov         eax,dword ptr [ebp-4]
 0057286C    call        00571AB4
 00572871    mov         ecx,dword ptr [ebp-0C]
 00572874    mov         edx,dword ptr [ebp-8]
 00572877    call        005727E4
 0057287C    inc         dword ptr [ebp-18]
 0057287F    dec         dword ptr [ebp-1C]
>00572882    jne         00572866
 00572884    mov         esp,ebp
 00572886    pop         ebp
 00572887    ret
end;*}

//00572888
{*function sub_00572888(?:?; ?:?):?;
begin
 00572888    push        ebp
 00572889    mov         ebp,esp
 0057288B    add         esp,0FFFFFFF4
 0057288E    mov         dword ptr [ebp-8],edx
 00572891    mov         dword ptr [ebp-4],eax
 00572894    mov         eax,dword ptr [ebp-4]
 00572897    mov         eax,dword ptr [eax+8]
 0057289A    mov         edx,dword ptr [ebp-8]
 0057289D    mov         edx,dword ptr [edx+8]
 005728A0    call        @LStrCmp
>005728A5    jne         005728C3
 005728A7    mov         eax,dword ptr [ebp-4]
 005728AA    mov         eax,dword ptr [eax+0C]
 005728AD    mov         edx,dword ptr [ebp-8]
 005728B0    cmp         eax,dword ptr [edx+0C]
>005728B3    jne         005728C3
 005728B5    mov         eax,dword ptr [ebp-4]
 005728B8    mov         eax,dword ptr [eax+20]
 005728BB    mov         edx,dword ptr [ebp-8]
 005728BE    cmp         eax,dword ptr [edx+20]
>005728C1    je          005728C7
 005728C3    xor         eax,eax
>005728C5    jmp         005728C9
 005728C7    mov         al,1
 005728C9    mov         byte ptr [ebp-9],al
 005728CC    mov         al,byte ptr [ebp-9]
 005728CF    mov         esp,ebp
 005728D1    pop         ebp
 005728D2    ret
end;*}

//005728D4
{*function sub_005728D4(?:?; ?:?):?;
begin
 005728D4    push        ebp
 005728D5    mov         ebp,esp
 005728D7    add         esp,0FFFFFFE4
 005728DA    mov         dword ptr [ebp-0C],ecx
 005728DD    mov         dword ptr [ebp-8],edx
 005728E0    mov         dword ptr [ebp-4],eax
 005728E3    mov         edx,dword ptr [ebp-8]
 005728E6    inc         edx
 005728E7    mov         eax,dword ptr [ebp-4]
 005728EA    mov         eax,dword ptr [eax+10];TOutlineStrings.................Outline:TCustomOutline
 005728ED    call        005735E4
 005728F2    mov         dword ptr [ebp-10],eax
 005728F5    mov         eax,dword ptr [ebp-10]
 005728F8    call        00571BFC
 005728FD    mov         word ptr [ebp-12],ax
 00572901    mov         eax,dword ptr [ebp-0C]
 00572904    mov         edx,dword ptr ds:[6EA0E8];^gvar_006E4984
 0057290A    mov         edx,dword ptr [edx]
 0057290C    call        @LStrAsg
 00572911    movzx       eax,word ptr [ebp-12]
 00572915    sub         eax,2
 00572918    test        eax,eax
>0057291A    jl          0057293F
 0057291C    inc         eax
 0057291D    mov         dword ptr [ebp-1C],eax
 00572920    mov         dword ptr [ebp-18],0
 00572927    mov         eax,dword ptr [ebp-0C]
 0057292A    mov         edx,57295C;#9
 0057292F    call        @LStrCat
 00572934    mov         eax,dword ptr [ebp-0C]
 00572937    inc         dword ptr [ebp-18]
 0057293A    dec         dword ptr [ebp-1C]
>0057293D    jne         00572927
 0057293F    mov         eax,dword ptr [ebp-0C]
 00572942    mov         edx,dword ptr [ebp-10]
 00572945    mov         edx,dword ptr [edx+8]
 00572948    call        @LStrCat
 0057294D    mov         eax,dword ptr [ebp-0C]
 00572950    mov         esp,ebp
 00572952    pop         ebp
 00572953    ret
end;*}

//00572960
{*function sub_00572960:?;
begin
 00572960    push        ebp
 00572961    mov         ebp,esp
 00572963    add         esp,0FFFFFFF8
 00572966    mov         dword ptr [ebp-4],eax
 00572969    mov         eax,dword ptr [ebp-4]
 0057296C    mov         eax,dword ptr [eax+10];TOutlineStrings..................Outline:TCustomOutline
 0057296F    call        005733D0
 00572974    mov         dword ptr [ebp-8],eax
 00572977    mov         eax,dword ptr [ebp-8]
 0057297A    pop         ecx
 0057297B    pop         ecx
 0057297C    pop         ebp
 0057297D    ret
end;*}

//00572980
procedure TOutlineStrings.Clear;
begin
{*
 00572980    push        ebp
 00572981    mov         ebp,esp
 00572983    push        ecx
 00572984    mov         dword ptr [ebp-4],eax
 00572987    mov         eax,dword ptr [ebp-4]
 0057298A    mov         eax,dword ptr [eax+10];TOutlineStrings...................Outline:TCustomOutline
 0057298D    call        00573258
 00572992    pop         ecx
 00572993    pop         ebp
 00572994    ret
*}
end;

//00572998
function WriteNodes:Boolean;
begin
{*
 00572998    push        ebp
 00572999    mov         ebp,esp
 0057299B    add         esp,0FFFFFFF0
 0057299E    push        ebx
 0057299F    mov         eax,dword ptr [ebp+8]
 005729A2    mov         eax,dword ptr [eax-4]
 005729A5    mov         eax,dword ptr [eax+20]
 005729A8    mov         dword ptr [ebp-0C],eax
 005729AB    cmp         dword ptr [ebp-0C],0
>005729AF    je          00572A3F
 005729B5    mov         eax,dword ptr [ebp-0C]
 005729B8    mov         eax,dword ptr [eax+10]
 005729BB    call        005733D0
 005729C0    mov         ebx,eax
 005729C2    mov         eax,dword ptr [ebp+8]
 005729C5    mov         eax,dword ptr [eax-8]
 005729C8    mov         eax,dword ptr [eax+10]
 005729CB    call        005733D0
 005729D0    cmp         ebx,eax
>005729D2    jne         00572A3F
 005729D4    mov         eax,dword ptr [ebp-0C]
 005729D7    mov         eax,dword ptr [eax+10]
 005729DA    call        005733D0
 005729DF    test        eax,eax
>005729E1    jle         00572A3F
 005729E3    mov         byte ptr [ebp-1],0
 005729E7    mov         eax,dword ptr [ebp+8]
 005729EA    mov         eax,dword ptr [eax-8]
 005729ED    mov         eax,dword ptr [eax+10]
 005729F0    call        005733D0
 005729F5    dec         eax
 005729F6    test        eax,eax
>005729F8    jle         00572A53
 005729FA    mov         dword ptr [ebp-10],eax
 005729FD    mov         dword ptr [ebp-8],1
 00572A04    mov         edx,dword ptr [ebp-8]
 00572A07    mov         eax,dword ptr [ebp-0C]
 00572A0A    mov         eax,dword ptr [eax+10]
 00572A0D    call        005735E4
 00572A12    push        eax
 00572A13    mov         eax,dword ptr [ebp+8]
 00572A16    mov         eax,dword ptr [eax-8]
 00572A19    mov         eax,dword ptr [eax+10]
 00572A1C    mov         edx,dword ptr [ebp-8]
 00572A1F    call        005735E4
 00572A24    pop         edx
 00572A25    call        00572888
 00572A2A    xor         al,1
 00572A2C    mov         byte ptr [ebp-1],al
 00572A2F    cmp         byte ptr [ebp-1],0
>00572A33    jne         00572A53
 00572A35    inc         dword ptr [ebp-8]
 00572A38    dec         dword ptr [ebp-10]
>00572A3B    jne         00572A04
>00572A3D    jmp         00572A53
 00572A3F    mov         eax,dword ptr [ebp+8]
 00572A42    mov         eax,dword ptr [eax-8]
 00572A45    mov         eax,dword ptr [eax+10]
 00572A48    call        005733D0
 00572A4D    test        eax,eax
 00572A4F    setg        byte ptr [ebp-1]
 00572A53    mov         al,byte ptr [ebp-1]
 00572A56    pop         ebx
 00572A57    mov         esp,ebp
 00572A59    pop         ebp
 00572A5A    ret
*}
end;

//00572A5C
procedure TOutlineStrings.DefineProperties(Filer:TFiler);
begin
{*
 00572A5C    push        ebp
 00572A5D    mov         ebp,esp
 00572A5F    add         esp,0FFFFFFF8
 00572A62    push        ebx
 00572A63    mov         dword ptr [ebp-4],edx
 00572A66    mov         dword ptr [ebp-8],eax
 00572A69    mov         eax,dword ptr [ebp-8]
 00572A6C    push        eax
 00572A6D    push        572AA8;TOutlineStrings.ReadData
 00572A72    mov         eax,dword ptr [ebp-8]
 00572A75    push        eax
 00572A76    push        572BB8;TOutlineStrings.WriteData
 00572A7B    push        ebp
 00572A7C    call        WriteNodes
 00572A81    pop         ecx
 00572A82    mov         ecx,eax
 00572A84    mov         edx,572AA0;'Nodes'
 00572A89    mov         eax,dword ptr [ebp-4]
 00572A8C    mov         ebx,dword ptr [eax]
 00572A8E    call        dword ptr [ebx+4]
 00572A91    pop         ebx
 00572A92    pop         ecx
 00572A93    pop         ecx
 00572A94    pop         ebp
 00572A95    ret
*}
end;

//00572AA8
procedure TOutlineStrings.ReadData(Reader:TReader);
begin
{*
 00572AA8    push        ebp
 00572AA9    mov         ebp,esp
 00572AAB    add         esp,0FFFFFFEC
 00572AAE    xor         ecx,ecx
 00572AB0    mov         dword ptr [ebp-14],ecx
 00572AB3    mov         dword ptr [ebp-8],edx
 00572AB6    mov         dword ptr [ebp-4],eax
 00572AB9    xor         eax,eax
 00572ABB    push        ebp
 00572ABC    push        572BAA
 00572AC1    push        dword ptr fs:[eax]
 00572AC4    mov         dword ptr fs:[eax],esp
 00572AC7    mov         eax,dword ptr [ebp-8]
 00572ACA    call        TReader.ReadListBegin
 00572ACF    mov         dl,1
 00572AD1    mov         eax,[006428B0];TStringList
 00572AD6    call        TObject.Create
 00572ADB    mov         dword ptr [ebp-0C],eax
 00572ADE    xor         eax,eax
 00572AE0    push        ebp
 00572AE1    push        572B85
 00572AE6    push        dword ptr fs:[eax]
 00572AE9    mov         dword ptr fs:[eax],esp
>00572AEC    jmp         00572B04
 00572AEE    lea         edx,[ebp-14]
 00572AF1    mov         eax,dword ptr [ebp-8]
 00572AF4    call        TReader.ReadString
 00572AF9    mov         edx,dword ptr [ebp-14]
 00572AFC    mov         eax,dword ptr [ebp-0C]
 00572AFF    mov         ecx,dword ptr [eax]
 00572B01    call        dword ptr [ecx+38]
 00572B04    mov         eax,dword ptr [ebp-8]
 00572B07    call        TReader.EndOfList
 00572B0C    test        al,al
>00572B0E    je          00572AEE
 00572B10    mov         dl,1
 00572B12    mov         eax,[00642BA0];TMemoryStream
 00572B17    call        TObject.Create
 00572B1C    mov         dword ptr [ebp-10],eax
 00572B1F    xor         eax,eax
 00572B21    push        ebp
 00572B22    push        572B68
 00572B27    push        dword ptr fs:[eax]
 00572B2A    mov         dword ptr fs:[eax],esp
 00572B2D    mov         edx,dword ptr [ebp-10]
 00572B30    mov         eax,dword ptr [ebp-0C]
 00572B33    mov         ecx,dword ptr [eax]
 00572B35    call        dword ptr [ecx+78]
 00572B38    push        0
 00572B3A    push        0
 00572B3C    mov         eax,dword ptr [ebp-10]
 00572B3F    call        TStream.SetPosition
 00572B44    mov         eax,dword ptr [ebp-4]
 00572B47    mov         eax,dword ptr [eax+10]
 00572B4A    mov         edx,dword ptr [ebp-10]
 00572B4D    call        00575864
 00572B52    xor         eax,eax
 00572B54    pop         edx
 00572B55    pop         ecx
 00572B56    pop         ecx
 00572B57    mov         dword ptr fs:[eax],edx
 00572B5A    push        572B6F
 00572B5F    mov         eax,dword ptr [ebp-10]
 00572B62    call        TObject.Free
 00572B67    ret
>00572B68    jmp         @HandleFinally
>00572B6D    jmp         00572B5F
 00572B6F    xor         eax,eax
 00572B71    pop         edx
 00572B72    pop         ecx
 00572B73    pop         ecx
 00572B74    mov         dword ptr fs:[eax],edx
 00572B77    push        572B8C
 00572B7C    mov         eax,dword ptr [ebp-0C]
 00572B7F    call        TObject.Free
 00572B84    ret
>00572B85    jmp         @HandleFinally
>00572B8A    jmp         00572B7C
 00572B8C    mov         eax,dword ptr [ebp-8]
 00572B8F    call        TReader.ReadListEnd
 00572B94    xor         eax,eax
 00572B96    pop         edx
 00572B97    pop         ecx
 00572B98    pop         ecx
 00572B99    mov         dword ptr fs:[eax],edx
 00572B9C    push        572BB1
 00572BA1    lea         eax,[ebp-14]
 00572BA4    call        @LStrClr
 00572BA9    ret
>00572BAA    jmp         @HandleFinally
>00572BAF    jmp         00572BA1
 00572BB1    mov         esp,ebp
 00572BB3    pop         ebp
 00572BB4    ret
*}
end;

//00572BB8
procedure TOutlineStrings.WriteData(Writer:TWriter);
begin
{*
 00572BB8    push        ebp
 00572BB9    mov         ebp,esp
 00572BBB    add         esp,0FFFFFFE4
 00572BBE    push        ebx
 00572BBF    xor         ecx,ecx
 00572BC1    mov         dword ptr [ebp-1C],ecx
 00572BC4    mov         dword ptr [ebp-8],edx
 00572BC7    mov         dword ptr [ebp-4],eax
 00572BCA    xor         eax,eax
 00572BCC    push        ebp
 00572BCD    push        572CD0
 00572BD2    push        dword ptr fs:[eax]
 00572BD5    mov         dword ptr fs:[eax],esp
 00572BD8    mov         eax,dword ptr [ebp-8]
 00572BDB    call        TWriter.WriteListBegin
 00572BE0    mov         dl,1
 00572BE2    mov         eax,[00642BA0];TMemoryStream
 00572BE7    call        TObject.Create
 00572BEC    mov         dword ptr [ebp-10],eax
 00572BEF    xor         eax,eax
 00572BF1    push        ebp
 00572BF2    push        572CAB
 00572BF7    push        dword ptr fs:[eax]
 00572BFA    mov         dword ptr fs:[eax],esp
 00572BFD    mov         eax,dword ptr [ebp-4]
 00572C00    mov         eax,dword ptr [eax+10]
 00572C03    mov         edx,dword ptr [ebp-10]
 00572C06    call        00575BEC
 00572C0B    push        0
 00572C0D    push        0
 00572C0F    mov         eax,dword ptr [ebp-10]
 00572C12    call        TStream.SetPosition
 00572C17    mov         dl,1
 00572C19    mov         eax,[006428B0];TStringList
 00572C1E    call        TObject.Create
 00572C23    mov         dword ptr [ebp-14],eax
 00572C26    xor         eax,eax
 00572C28    push        ebp
 00572C29    push        572C8E
 00572C2E    push        dword ptr fs:[eax]
 00572C31    mov         dword ptr fs:[eax],esp
 00572C34    mov         edx,dword ptr [ebp-10]
 00572C37    mov         eax,dword ptr [ebp-14]
 00572C3A    mov         ecx,dword ptr [eax]
 00572C3C    call        dword ptr [ecx+6C]
 00572C3F    mov         eax,dword ptr [ebp-14]
 00572C42    mov         edx,dword ptr [eax]
 00572C44    call        dword ptr [edx+14]
 00572C47    dec         eax
 00572C48    test        eax,eax
>00572C4A    jl          00572C78
 00572C4C    inc         eax
 00572C4D    mov         dword ptr [ebp-18],eax
 00572C50    mov         dword ptr [ebp-0C],0
 00572C57    lea         ecx,[ebp-1C]
 00572C5A    mov         edx,dword ptr [ebp-0C]
 00572C5D    mov         eax,dword ptr [ebp-14]
 00572C60    mov         ebx,dword ptr [eax]
 00572C62    call        dword ptr [ebx+0C]
 00572C65    mov         edx,dword ptr [ebp-1C]
 00572C68    mov         eax,dword ptr [ebp-8]
 00572C6B    call        TWriter.WriteString
 00572C70    inc         dword ptr [ebp-0C]
 00572C73    dec         dword ptr [ebp-18]
>00572C76    jne         00572C57
 00572C78    xor         eax,eax
 00572C7A    pop         edx
 00572C7B    pop         ecx
 00572C7C    pop         ecx
 00572C7D    mov         dword ptr fs:[eax],edx
 00572C80    push        572C95
 00572C85    mov         eax,dword ptr [ebp-14]
 00572C88    call        TObject.Free
 00572C8D    ret
>00572C8E    jmp         @HandleFinally
>00572C93    jmp         00572C85
 00572C95    xor         eax,eax
 00572C97    pop         edx
 00572C98    pop         ecx
 00572C99    pop         ecx
 00572C9A    mov         dword ptr fs:[eax],edx
 00572C9D    push        572CB2
 00572CA2    mov         eax,dword ptr [ebp-10]
 00572CA5    call        TObject.Free
 00572CAA    ret
>00572CAB    jmp         @HandleFinally
>00572CB0    jmp         00572CA2
 00572CB2    mov         eax,dword ptr [ebp-8]
 00572CB5    call        TWriter.WriteListEnd
 00572CBA    xor         eax,eax
 00572CBC    pop         edx
 00572CBD    pop         ecx
 00572CBE    pop         ecx
 00572CBF    mov         dword ptr fs:[eax],edx
 00572CC2    push        572CD7
 00572CC7    lea         eax,[ebp-1C]
 00572CCA    call        @LStrClr
 00572CCF    ret
>00572CD0    jmp         @HandleFinally
>00572CD5    jmp         00572CC7
 00572CD7    pop         ebx
 00572CD8    mov         esp,ebp
 00572CDA    pop         ebp
 00572CDB    ret
*}
end;

//00572CDC
{*function sub_00572CDC(?:?):?;
begin
 00572CDC    push        ebp
 00572CDD    mov         ebp,esp
 00572CDF    add         esp,0FFFFFFD0
 00572CE2    xor         ecx,ecx
 00572CE4    mov         dword ptr [ebp-30],ecx
 00572CE7    mov         dword ptr [ebp-2C],ecx
 00572CEA    mov         dword ptr [ebp-1C],ecx
 00572CED    mov         dword ptr [ebp-8],edx
 00572CF0    mov         dword ptr [ebp-4],eax
 00572CF3    xor         eax,eax
 00572CF5    push        ebp
 00572CF6    push        572E2A
 00572CFB    push        dword ptr fs:[eax]
 00572CFE    mov         dword ptr fs:[eax],esp
 00572D01    mov         eax,dword ptr [ebp-8]
 00572D04    call        @LStrToPChar
 00572D09    lea         edx,[ebp-10]
 00572D0C    call        005717B0
 00572D11    mov         edx,eax
 00572D13    lea         eax,[ebp-1C]
 00572D16    call        @LStrFromPChar
 00572D1B    mov         eax,dword ptr [ebp-4]
 00572D1E    mov         eax,dword ptr [eax+10];TOutlineStrings....................Outline:TCustomOutline
 00572D21    call        005733D0
 00572D26    mov         dword ptr [ebp-20],eax
 00572D29    cmp         dword ptr [ebp-20],0
>00572D2D    jle         00572D4C
 00572D2F    mov         eax,dword ptr [ebp-4]
 00572D32    mov         eax,dword ptr [eax+10];TOutlineStrings.....................Outline:TCustomOutline
 00572D35    call        005733D0
 00572D3A    mov         edx,eax
 00572D3C    mov         eax,dword ptr [ebp-4]
 00572D3F    mov         eax,dword ptr [eax+10];TOutlineStrings......................Outline:TCustomOutline
 00572D42    call        005735E4
 00572D47    mov         dword ptr [ebp-24],eax
>00572D4A    jmp         00572D5B
 00572D4C    mov         eax,dword ptr [ebp-4]
 00572D4F    mov         eax,dword ptr [eax+10];TOutlineStrings.......................Outline:TCustomOutline
 00572D52    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00572D58    mov         dword ptr [ebp-24],eax
 00572D5B    mov         eax,dword ptr [ebp-24]
 00572D5E    call        00571BFC
 00572D63    mov         dword ptr [ebp-14],eax
 00572D66    mov         eax,dword ptr [ebp-10]
 00572D69    cmp         eax,dword ptr [ebp-14]
>00572D6C    ja          00572D7F
 00572D6E    mov         eax,dword ptr [ebp-4]
 00572D71    mov         eax,dword ptr [eax+10];TOutlineStrings........................Outline:TCustomOutline
 00572D74    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00572D7A    cmp         eax,dword ptr [ebp-24]
>00572D7D    jne         00572DA7
 00572D7F    mov         eax,dword ptr [ebp-10]
 00572D82    sub         eax,dword ptr [ebp-14]
 00572D85    cmp         eax,1
>00572D88    jbe         00572DEB
 00572D8A    lea         edx,[ebp-2C]
 00572D8D    mov         eax,[006E9EE4];^gvar_0063CBD8
 00572D92    call        LoadResString
 00572D97    mov         edx,dword ptr [ebp-2C]
 00572D9A    mov         eax,dword ptr [ebp-4]
 00572D9D    mov         eax,dword ptr [eax+10];TOutlineStrings.........................Outline:TCustomOutline
 00572DA0    call        00575CA4
>00572DA5    jmp         00572DEB
 00572DA7    mov         eax,dword ptr [ebp-14]
 00572DAA    mov         edx,dword ptr [ebp-10]
 00572DAD    inc         edx
 00572DAE    sub         edx,eax
>00572DB0    ja          00572DEB
 00572DB2    dec         edx
 00572DB3    mov         dword ptr [ebp-28],edx
 00572DB6    mov         dword ptr [ebp-18],eax
 00572DB9    mov         eax,dword ptr [ebp-24]
 00572DBC    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00572DBF    mov         dword ptr [ebp-24],eax
 00572DC2    cmp         dword ptr [ebp-24],0
>00572DC6    jne         00572DE3
 00572DC8    lea         edx,[ebp-30]
 00572DCB    mov         eax,[006E9EE4];^gvar_0063CBD8
 00572DD0    call        LoadResString
 00572DD5    mov         edx,dword ptr [ebp-30]
 00572DD8    mov         eax,dword ptr [ebp-4]
 00572DDB    mov         eax,dword ptr [eax+10];TOutlineStrings..........................Outline:TCustomOutline
 00572DDE    call        00575CA4
 00572DE3    dec         dword ptr [ebp-18]
 00572DE6    inc         dword ptr [ebp-28]
>00572DE9    jne         00572DB9
 00572DEB    mov         eax,dword ptr [ebp-24]
 00572DEE    call        00571BC8
 00572DF3    mov         edx,eax
 00572DF5    mov         ecx,dword ptr [ebp-1C]
 00572DF8    mov         eax,dword ptr [ebp-4]
 00572DFB    mov         eax,dword ptr [eax+10];TOutlineStrings...........................Outline:TCustomOutline
 00572DFE    call        00573AD0
 00572E03    dec         eax
 00572E04    mov         dword ptr [ebp-0C],eax
 00572E07    xor         eax,eax
 00572E09    pop         edx
 00572E0A    pop         ecx
 00572E0B    pop         ecx
 00572E0C    mov         dword ptr fs:[eax],edx
 00572E0F    push        572E31
 00572E14    lea         eax,[ebp-30]
 00572E17    mov         edx,2
 00572E1C    call        @LStrArrayClr
 00572E21    lea         eax,[ebp-1C]
 00572E24    call        @LStrClr
 00572E29    ret
>00572E2A    jmp         @HandleFinally
>00572E2F    jmp         00572E14
 00572E31    mov         eax,dword ptr [ebp-0C]
 00572E34    mov         esp,ebp
 00572E36    pop         ebp
 00572E37    ret
end;*}

//00572E38
{*procedure sub_00572E38(?:?);
begin
 00572E38    push        ebp
 00572E39    mov         ebp,esp
 00572E3B    add         esp,0FFFFFFF8
 00572E3E    mov         dword ptr [ebp-8],edx
 00572E41    mov         dword ptr [ebp-4],eax
 00572E44    mov         edx,dword ptr [ebp-8]
 00572E47    inc         edx
 00572E48    mov         eax,dword ptr [ebp-4]
 00572E4B    mov         eax,dword ptr [eax+10];TOutlineStrings............................Outline:TCustomOutline
 00572E4E    call        00573B90
 00572E53    pop         ecx
 00572E54    pop         ecx
 00572E55    pop         ebp
 00572E56    ret
end;*}

//00572E58
{*procedure sub_00572E58(?:?; ?:?);
begin
 00572E58    push        ebp
 00572E59    mov         ebp,esp
 00572E5B    add         esp,0FFFFFFF4
 00572E5E    mov         dword ptr [ebp-0C],ecx
 00572E61    mov         dword ptr [ebp-8],edx
 00572E64    mov         dword ptr [ebp-4],eax
 00572E67    mov         edx,dword ptr [ebp-8]
 00572E6A    inc         edx
 00572E6B    mov         ecx,dword ptr [ebp-0C]
 00572E6E    mov         eax,dword ptr [ebp-4]
 00572E71    mov         eax,dword ptr [eax+10];TOutlineStrings.............................Outline:TCustomOutlin...
 00572E74    call        00573918
 00572E79    mov         esp,ebp
 00572E7B    pop         ebp
 00572E7C    ret
end;*}

//00572E80
{*procedure sub_00572E80(?:?; ?:?);
begin
 00572E80    push        ebp
 00572E81    mov         ebp,esp
 00572E83    add         esp,0FFFFFFF0
 00572E86    mov         dword ptr [ebp-0C],ecx
 00572E89    mov         dword ptr [ebp-8],edx
 00572E8C    mov         dword ptr [ebp-4],eax
 00572E8F    mov         edx,dword ptr [ebp-8]
 00572E92    inc         edx
 00572E93    mov         eax,dword ptr [ebp-4]
 00572E96    mov         eax,dword ptr [eax+10];TOutlineStrings..............................Outline:TCustomOutli...
 00572E99    call        005735E4
 00572E9E    mov         dword ptr [ebp-10],eax
 00572EA1    mov         eax,dword ptr [ebp-0C]
 00572EA4    mov         edx,dword ptr [ebp-10]
 00572EA7    mov         dword ptr [edx+0C],eax
 00572EAA    mov         esp,ebp
 00572EAC    pop         ebp
 00572EAD    ret
end;*}

//00572EB0
{*function sub_00572EB0(?:?):?;
begin
 00572EB0    push        ebp
 00572EB1    mov         ebp,esp
 00572EB3    add         esp,0FFFFFFF4
 00572EB6    mov         dword ptr [ebp-8],edx
 00572EB9    mov         dword ptr [ebp-4],eax
 00572EBC    mov         edx,dword ptr [ebp-8]
 00572EBF    inc         edx
 00572EC0    mov         eax,dword ptr [ebp-4]
 00572EC3    mov         eax,dword ptr [eax+10];TOutlineStrings...............................Outline:TCustomOutl...
 00572EC6    call        005735E4
 00572ECB    mov         eax,dword ptr [eax+0C]
 00572ECE    mov         dword ptr [ebp-0C],eax
 00572ED1    mov         eax,dword ptr [ebp-0C]
 00572ED4    mov         esp,ebp
 00572ED6    pop         ebp
 00572ED7    ret
end;*}

//00572ED8
procedure _NF__2AE;
begin
{*
 00572ED8    push        eax
 00572ED9    dec         esp
 00572EDA    push        ebp
 00572EDB    push        ebx
 00572EDC    add         byte ptr [eax],al
 00572EDE    add         byte ptr [eax],al
 00572EE0    dec         ebp
 00572EE1    dec         ecx
 00572EE2    dec         esi
 00572EE3    push        ebp
 00572EE4    push        ebx
 00572EE5    add         byte ptr [eax],al
 00572EE7    add         byte ptr [edi+50],cl
 00572EEA    inc         ebp
 00572EEB    dec         esi
 00572EEC    add         byte ptr [eax],al
 00572EEE    add         byte ptr [eax],al
 00572EF0    inc         ebx
 00572EF1    dec         esp
 00572EF2    dec         edi
 00572EF3    push        ebx
 00572EF4    inc         ebp
 00572EF5    inc         esp
 00572EF6    add         byte ptr [eax],al
 00572EF8    dec         esp
 00572EF9    inc         ebp
 00572EFA    inc         ecx
 00572EFB    inc         esi
 00572EFC    add         byte ptr [eax],al
 00572EFE    add         byte ptr [eax],al
*}
end;

//00572F00
constructor TCustomOutline.Create(AOwner:TComponent);
begin
{*
 00572F00    push        ebp
 00572F01    mov         ebp,esp
 00572F03    add         esp,0FFFFFFF4
 00572F06    test        dl,dl
>00572F08    je          00572F12
 00572F0A    add         esp,0FFFFFFF0
 00572F0D    call        @ClassCreate
 00572F12    mov         dword ptr [ebp-0C],ecx
 00572F15    mov         byte ptr [ebp-5],dl
 00572F18    mov         dword ptr [ebp-4],eax
 00572F1B    mov         ecx,dword ptr [ebp-0C]
 00572F1E    xor         edx,edx
 00572F20    mov         eax,dword ptr [ebp-4]
 00572F23    call        TCustomGrid.Create
 00572F28    mov         edx,79
 00572F2D    mov         eax,dword ptr [ebp-4]
 00572F30    call        TControl.SetWidth
 00572F35    mov         edx,61
 00572F3A    mov         eax,dword ptr [ebp-4]
 00572F3D    call        TControl.SetHeight
 00572F42    mov         edx,80000005
 00572F47    mov         eax,dword ptr [ebp-4]
 00572F4A    call        TControl.SetColor
 00572F4F    xor         edx,edx
 00572F51    mov         eax,dword ptr [ebp-4]
 00572F54    call        TCCalendar.SetParentColor
 00572F59    mov         eax,dword ptr [ebp-4]
 00572F5C    call        005731AC
 00572F61    xor         edx,edx
 00572F63    mov         eax,dword ptr [ebp-4]
 00572F66    call        TDrawGrid.SetRowCount
 00572F6B    mov         edx,1
 00572F70    mov         eax,dword ptr [ebp-4]
 00572F73    call        TDrawGrid.SetColCount
 00572F78    xor         edx,edx
 00572F7A    mov         eax,dword ptr [ebp-4]
 00572F7D    call        TValueListEditor.SetFixedCols
 00572F82    xor         edx,edx
 00572F84    mov         eax,dword ptr [ebp-4]
 00572F87    call        TDrawGrid.SetFixedRows
 00572F8C    mov         eax,dword ptr [ebp-4]
 00572F8F    mov         byte ptr [eax+28C],0;TCustomOutline.FDefaultDrawing:Boolean
 00572F96    mov         eax,dword ptr [ebp-4]
 00572F99    call        005730A8
 00572F9E    mov         dl,1
 00572FA0    mov         eax,[005716A8];TOutlineStrings
 00572FA5    call        TObject.Create;TOutlineStrings.Create
 00572FAA    mov         edx,dword ptr [ebp-4]
 00572FAD    mov         dword ptr [edx+2B4],eax;TCustomOutline.FStrings:TStrings
 00572FB3    mov         eax,dword ptr [ebp-4]
 00572FB6    mov         eax,dword ptr [eax+2B4];TCustomOutline.FStrings:TStrings
 00572FBC    mov         edx,dword ptr [ebp-4]
 00572FBF    mov         dword ptr [eax+10],edx
 00572FC2    mov         dx,word ptr ds:[573024];0x0 gvar_00573024
 00572FC9    mov         eax,dword ptr [ebp-4]
 00572FCC    call        TDrawGrid.SetOptions
 00572FD1    mov         dl,byte ptr ds:[573028];0x3 gvar_00573028
 00572FD7    mov         eax,dword ptr [ebp-4]
 00572FDA    call        TCDirectoryOutline.SetOptions
 00572FDF    mov         eax,dword ptr [ebp-4]
 00572FE2    add         eax,2AC;TCustomOutline.FSeparator:String
 00572FE7    mov         edx,573034;'\'
 00572FEC    call        @LStrAsg
 00572FF1    mov         eax,dword ptr [ebp-4]
 00572FF4    mov         byte ptr [eax+2E0],5;TCustomOutline.FOutlineStyle:TOutlineStyle
 00572FFB    mov         eax,dword ptr [ebp-4]
 00572FFE    call        0057312C
 00573003    mov         eax,dword ptr [ebp-4]
 00573006    cmp         byte ptr [ebp-5],0
>0057300A    je          0057301B
 0057300C    call        @AfterConstruction
 00573011    pop         dword ptr fs:[0]
 00573018    add         esp,0C
 0057301B    mov         eax,dword ptr [ebp-4]
 0057301E    mov         esp,ebp
 00573020    pop         ebp
 00573021    ret
*}
end;

//00573038
destructor TCustomOutline.Destroy;
begin
{*
 00573038    push        ebp
 00573039    mov         ebp,esp
 0057303B    add         esp,0FFFFFFF4
 0057303E    call        @BeforeDestruction
 00573043    mov         byte ptr [ebp-5],dl
 00573046    mov         dword ptr [ebp-4],eax
 00573049    mov         eax,dword ptr [ebp-4]
 0057304C    mov         eax,dword ptr [eax+2B4];TCustomOutline.FStrings:TStrings
 00573052    call        TObject.Free
 00573057    mov         eax,dword ptr [ebp-4]
 0057305A    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573060    call        TObject.Free
 00573065    xor         eax,eax
 00573067    mov         dword ptr [ebp-0C],eax
 0057306A    mov         eax,dword ptr [ebp-4]
 0057306D    mov         edx,dword ptr [ebp-0C]
 00573070    mov         eax,dword ptr [eax+edx*4+2BC]
 00573077    call        TObject.Free
 0057307C    inc         dword ptr [ebp-0C]
 0057307F    cmp         dword ptr [ebp-0C],5
>00573083    jne         0057306A
 00573085    mov         dl,byte ptr [ebp-5]
 00573088    and         dl,0FC
 0057308B    mov         eax,dword ptr [ebp-4]
 0057308E    call        TCustomGrid.Destroy
 00573093    cmp         byte ptr [ebp-5],0
>00573097    jle         005730A1
 00573099    mov         eax,dword ptr [ebp-4]
 0057309C    call        @ClassDestroy
 005730A1    mov         esp,ebp
 005730A3    pop         ebp
 005730A4    ret
*}
end;

//005730A8
procedure sub_005730A8(?:TCustomOutline);
begin
{*
 005730A8    push        ebp
 005730A9    mov         ebp,esp
 005730AB    push        ecx
 005730AC    mov         dword ptr [ebp-4],eax
 005730AF    mov         eax,dword ptr [ebp-4]
 005730B2    cmp         dword ptr [eax+29C],0;TCustomOutline.FRootNode:TOutlineNode
>005730B9    jne         005730D3
 005730BB    mov         ecx,dword ptr [ebp-4]
 005730BE    mov         dl,1
 005730C0    mov         eax,[00570B0C];TOutlineNode
 005730C5    call        TOutlineNode.Create;TOutlineNode.Create
 005730CA    mov         edx,dword ptr [ebp-4]
 005730CD    mov         dword ptr [edx+29C],eax;TCustomOutline.FRootNode:TOutlineNode
 005730D3    mov         eax,dword ptr [ebp-4]
 005730D6    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005730DC    mov         byte ptr [eax+18],1;TOutlineNode.FState:Boolean
 005730E0    mov         eax,dword ptr [ebp-4]
 005730E3    call        00573768
 005730E8    mov         eax,dword ptr [ebp-4]
 005730EB    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005730F1    mov         edx,dword ptr [ebp-4]
 005730F4    mov         dword ptr [edx+2A0],eax;TCustomOutline.FGoodNode:TOutlineNode
 005730FA    mov         eax,dword ptr [ebp-4]
 005730FD    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573103    mov         edx,dword ptr [ebp-4]
 00573106    mov         dword ptr [edx+2A8],eax;TCustomOutline.FCurItem:TOutlineNode
 0057310C    mov         eax,dword ptr [ebp-4]
 0057310F    mov         byte ptr [eax+298],0;TCustomOutline.FBlockInsert:Boolean
 00573116    mov         eax,dword ptr [ebp-4]
 00573119    xor         edx,edx
 0057311B    mov         dword ptr [eax+2A4],edx;TCustomOutline.UpdateCount:Integer
 00573121    mov         eax,dword ptr [ebp-4]
 00573124    call        0057423C
 00573129    pop         ecx
 0057312A    pop         ebp
 0057312B    ret
*}
end;

//0057312C
procedure sub_0057312C(?:TCustomOutline);
begin
{*
 0057312C    push        ebp
 0057312D    mov         ebp,esp
 0057312F    add         esp,0FFFFFFF8
 00573132    mov         dword ptr [ebp-4],eax
 00573135    mov         eax,dword ptr [ebp-4]
 00573138    mov         dl,byte ptr ds:[5731A8];0x0 gvar_005731A8
 0057313E    mov         byte ptr [eax+2B8],dl;TCustomOutline.FUserBitmaps:TOutlineBitmaps
 00573144    mov         eax,dword ptr [ebp-4]
 00573147    mov         dl,byte ptr ds:[5731A8];0x0 gvar_005731A8
 0057314D    mov         byte ptr [eax+2B9],dl;TCustomOutline.FOldBitmaps:TOutlineBitmaps
 00573153    xor         eax,eax
 00573155    mov         dword ptr [ebp-8],eax
 00573158    mov         dl,1
 0057315A    mov         eax,[005BEDD4];TBitmap
 0057315F    call        TBitmap.Create;TBitmap.Create
 00573164    mov         edx,dword ptr [ebp-8]
 00573167    mov         ecx,dword ptr [ebp-4]
 0057316A    mov         dword ptr [ecx+edx*4+2BC],eax
 00573171    mov         eax,dword ptr [ebp-8]
 00573174    mov         eax,dword ptr [eax*4+6E3974];^_NF__2AE
 0057317B    push        eax
 0057317C    mov         eax,[006EA390];0x0 gvar_006EA390
 00573181    push        eax
 00573182    call        USER32.LoadBitmapA
 00573187    mov         edx,eax
 00573189    mov         eax,dword ptr [ebp-8]
 0057318C    mov         ecx,dword ptr [ebp-4]
 0057318F    mov         eax,dword ptr [ecx+eax*4+2BC]
 00573196    call        TBitmap.SetHandle
 0057319B    inc         dword ptr [ebp-8]
 0057319E    cmp         dword ptr [ebp-8],5
>005731A2    jne         00573158
 005731A4    pop         ecx
 005731A5    pop         ecx
 005731A6    pop         ebp
 005731A7    ret
*}
end;

//005731AC
procedure sub_005731AC(?:TCustomOutline);
begin
{*
 005731AC    push        ebp
 005731AD    mov         ebp,esp
 005731AF    add         esp,0FFFFFFF8
 005731B2    mov         dword ptr [ebp-4],eax
 005731B5    mov         eax,dword ptr [ebp-4]
 005731B8    cmp         byte ptr [eax+2E8],1;TCustomOutline.FStyle:TOutlineType
>005731BF    je          00573254
 005731C5    push        0
 005731C7    call        USER32.GetDC
 005731CC    mov         dword ptr [ebp-8],eax
 005731CF    xor         eax,eax
 005731D1    push        ebp
 005731D2    push        57324D
 005731D7    push        dword ptr fs:[eax]
 005731DA    mov         dword ptr fs:[eax],esp
 005731DD    push        48
 005731DF    push        5A
 005731E1    mov         eax,dword ptr [ebp-8]
 005731E4    push        eax
 005731E5    call        GDI32.GetDeviceCaps
 005731EA    push        eax
 005731EB    mov         eax,dword ptr [ebp-4]
 005731EE    mov         eax,dword ptr [eax+68];TCustomOutline.FFont:TFont
 005731F1    call        TFont.GetSize
 005731F6    push        eax
 005731F7    call        KERNEL32.MulDiv
 005731FC    mov         edx,dword ptr [ebp-4]
 005731FF    mov         dword ptr [edx+2B0],eax;TCustomOutline.FFontSize:Integer
 00573205    push        64
 00573207    push        78
 00573209    mov         eax,dword ptr [ebp-4]
 0057320C    mov         eax,dword ptr [eax+2B0];TCustomOutline.FFontSize:Integer
 00573212    push        eax
 00573213    call        KERNEL32.MulDiv
 00573218    mov         edx,eax
 0057321A    mov         eax,dword ptr [ebp-4]
 0057321D    call        TValueListEditor.SetDefaultRowHeight
 00573222    mov         eax,dword ptr [ebp-4]
 00573225    mov         eax,dword ptr [eax+234];TCustomOutline.FDefaultRowHeight:Integer
 0057322B    mov         edx,dword ptr [ebp-4]
 0057322E    mov         dword ptr [edx+2E4],eax;TCustomOutline.FItemHeight:Integer
 00573234    xor         eax,eax
 00573236    pop         edx
 00573237    pop         ecx
 00573238    pop         ecx
 00573239    mov         dword ptr fs:[eax],edx
 0057323C    push        573254
 00573241    mov         eax,dword ptr [ebp-8]
 00573244    push        eax
 00573245    push        0
 00573247    call        USER32.ReleaseDC
 0057324C    ret
>0057324D    jmp         @HandleFinally
>00573252    jmp         00573241
 00573254    pop         ecx
 00573255    pop         ecx
 00573256    pop         ebp
 00573257    ret
*}
end;

//00573258
procedure sub_00573258(?:TCustomOutline);
begin
{*
 00573258    push        ebp
 00573259    mov         ebp,esp
 0057325B    push        ecx
 0057325C    mov         dword ptr [ebp-4],eax
 0057325F    mov         dl,1
 00573261    mov         eax,dword ptr [ebp-4]
 00573264    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 0057326A    mov         ecx,dword ptr [eax]
 0057326C    call        dword ptr [ecx-4];TOutlineNode.Destroy
 0057326F    mov         eax,dword ptr [ebp-4]
 00573272    xor         edx,edx
 00573274    mov         dword ptr [eax+29C],edx;TCustomOutline.FRootNode:TOutlineNode
 0057327A    mov         eax,dword ptr [ebp-4]
 0057327D    call        005730A8
 00573282    pop         ecx
 00573283    pop         ebp
 00573284    ret
*}
end;

//00573288
function WriteOutline:Boolean;
begin
{*
 00573288    push        ebp
 00573289    mov         ebp,esp
 0057328B    add         esp,0FFFFFFF8
 0057328E    mov         eax,dword ptr [ebp+8]
 00573291    mov         eax,dword ptr [eax-4]
 00573294    mov         eax,dword ptr [eax+20]
 00573297    mov         dword ptr [ebp-8],eax
 0057329A    cmp         dword ptr [ebp-8],0
>0057329E    je          005732DC
 005732A0    mov         al,[005732FC]
 005732A5    mov         edx,dword ptr [ebp-8]
 005732A8    cmp         al,byte ptr [edx+2B8]
>005732AE    je          005732D1
 005732B0    mov         eax,dword ptr [ebp+8]
 005732B3    mov         eax,dword ptr [eax-8]
 005732B6    mov         al,byte ptr [eax+2B8]
 005732BC    mov         edx,dword ptr [ebp-8]
 005732BF    not         eax
 005732C1    and         al,byte ptr [edx+2B8]
 005732C7    mov         dl,byte ptr ds:[5732FC]
 005732CD    cmp         dl,al
>005732CF    jne         005732D5
 005732D1    xor         eax,eax
>005732D3    jmp         005732D7
 005732D5    mov         al,1
 005732D7    mov         byte ptr [ebp-1],al
>005732DA    jmp         005732F2
 005732DC    mov         eax,dword ptr [ebp+8]
 005732DF    mov         eax,dword ptr [eax-8]
 005732E2    mov         dl,byte ptr ds:[5732FC]
 005732E8    cmp         dl,byte ptr [eax+2B8]
 005732EE    setne       byte ptr [ebp-1]
 005732F2    mov         al,byte ptr [ebp-1]
 005732F5    pop         ecx
 005732F6    pop         ecx
 005732F7    pop         ebp
 005732F8    ret
*}
end;

//00573300
procedure TCustomOutline.DefineProperties(Filer:TFiler);
begin
{*
 00573300    push        ebp
 00573301    mov         ebp,esp
 00573303    add         esp,0FFFFFFF8
 00573306    push        ebx
 00573307    mov         dword ptr [ebp-4],edx
 0057330A    mov         dword ptr [ebp-8],eax
 0057330D    mov         edx,dword ptr [ebp-4]
 00573310    mov         eax,dword ptr [ebp-8]
 00573313    call        TCustomGrid.DefineProperties
 00573318    mov         eax,dword ptr [ebp-8]
 0057331B    push        eax
 0057331C    push        573358;TCustomOutline.ReadBinaryData
 00573321    mov         eax,dword ptr [ebp-8]
 00573324    push        eax
 00573325    push        573380;TCustomOutline.WriteBinaryData
 0057332A    push        ebp
 0057332B    call        WriteOutline
 00573330    pop         ecx
 00573331    mov         ecx,eax
 00573333    mov         edx,573350;'Data'
 00573338    mov         eax,dword ptr [ebp-4]
 0057333B    mov         ebx,dword ptr [eax]
 0057333D    call        dword ptr [ebx+8]
 00573340    pop         ebx
 00573341    pop         ecx
 00573342    pop         ecx
 00573343    pop         ebp
 00573344    ret
*}
end;

//00573358
procedure TCustomOutline.ReadBinaryData(Stream:TStream);
begin
{*
 00573358    push        ebp
 00573359    mov         ebp,esp
 0057335B    add         esp,0FFFFFFF8
 0057335E    mov         dword ptr [ebp-8],edx
 00573361    mov         dword ptr [ebp-4],eax
 00573364    mov         eax,dword ptr [ebp-4]
 00573367    lea         edx,[eax+2B9]
 0057336D    mov         ecx,1
 00573372    mov         eax,dword ptr [ebp-8]
 00573375    call        TStream.ReadBuffer
 0057337A    pop         ecx
 0057337B    pop         ecx
 0057337C    pop         ebp
 0057337D    ret
*}
end;

//00573380
procedure TCustomOutline.WriteBinaryData(Stream:TStream);
begin
{*
 00573380    push        ebp
 00573381    mov         ebp,esp
 00573383    add         esp,0FFFFFFF8
 00573386    mov         dword ptr [ebp-8],edx
 00573389    mov         dword ptr [ebp-4],eax
 0057338C    mov         eax,dword ptr [ebp-4]
 0057338F    lea         edx,[eax+2B8]
 00573395    mov         ecx,1
 0057339A    mov         eax,dword ptr [ebp-8]
 0057339D    call        TStream.WriteBuffer
 005733A2    pop         ecx
 005733A3    pop         ecx
 005733A4    pop         ebp
 005733A5    ret
*}
end;

//005733A8
{*function sub_005733A8(?:TCustomOutline; ?:?):?;
begin
 005733A8    push        ebp
 005733A9    mov         ebp,esp
 005733AB    add         esp,0FFFFFFF4
 005733AE    mov         dword ptr [ebp-8],edx
 005733B1    mov         dword ptr [ebp-4],eax
 005733B4    mov         eax,dword ptr [ebp-4]
 005733B7    mov         eax,dword ptr [eax+2A8]
 005733BD    call        00571BC8
 005733C2    cmp         eax,dword ptr [ebp-8]
 005733C5    sete        byte ptr [ebp-9]
 005733C9    mov         al,byte ptr [ebp-9]
 005733CC    mov         esp,ebp
 005733CE    pop         ebp
 005733CF    ret
end;*}

//005733D0
{*function sub_005733D0(?:TCustomOutline):?;
begin
 005733D0    push        ebp
 005733D1    mov         ebp,esp
 005733D3    add         esp,0FFFFFFF8
 005733D6    mov         dword ptr [ebp-4],eax
 005733D9    mov         eax,dword ptr [ebp-4]
 005733DC    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005733E2    call        00571ADC
 005733E7    mov         dword ptr [ebp-8],eax
 005733EA    mov         eax,dword ptr [ebp-8]
 005733ED    pop         ecx
 005733EE    pop         ecx
 005733EF    pop         ebp
 005733F0    ret
end;*}

//005733F4
{*function sub_005733F4(?:TCustomOutline; ?:?; ?:AnsiString; ?:?; ?:?):?;
begin
 005733F4    push        ebp
 005733F5    mov         ebp,esp
 005733F7    add         esp,0FFFFFFDC
 005733FA    push        ebx
 005733FB    push        esi
 005733FC    push        edi
 005733FD    xor         ebx,ebx
 005733FF    mov         dword ptr [ebp-24],ebx
 00573402    mov         dword ptr [ebp-20],ebx
 00573405    mov         dword ptr [ebp-1C],ebx
 00573408    mov         dword ptr [ebp-0C],ecx
 0057340B    mov         dword ptr [ebp-8],edx
 0057340E    mov         dword ptr [ebp-4],eax
 00573411    mov         eax,dword ptr [ebp-0C]
 00573414    call        @LStrAddRef
 00573419    xor         eax,eax
 0057341B    push        ebp
 0057341C    push        5735D1
 00573421    push        dword ptr fs:[eax]
 00573424    mov         dword ptr fs:[eax],esp
 00573427    xor         eax,eax
 00573429    mov         dword ptr [ebp-10],eax
 0057342C    mov         ecx,dword ptr [ebp-4]
 0057342F    mov         dl,1
 00573431    mov         eax,[00570B0C];TOutlineNode
 00573436    call        TOutlineNode.Create;TOutlineNode.Create
 0057343B    mov         dword ptr [ebp-14],eax
 0057343E    mov         edx,dword ptr [ebp-0C]
 00573441    mov         eax,dword ptr [ebp-14]
 00573444    call        00571B1C
 00573449    mov         eax,dword ptr [ebp-14]
 0057344C    mov         edx,dword ptr [ebp+0C]
 0057344F    mov         dword ptr [eax+0C],edx;TOutlineNode.FData:Pointer
 00573452    mov         eax,dword ptr [ebp-14]
 00573455    mov         dword ptr [eax+14],0FFFFFFFF;TOutlineNode.FIndex:Longint
 0057345C    xor         eax,eax
 0057345E    push        ebp
 0057345F    push        57358B
 00573464    push        dword ptr fs:[eax]
 00573467    mov         dword ptr fs:[eax],esp
 0057346A    mov         eax,dword ptr [ebp-4]
 0057346D    mov         eax,dword ptr [eax+2A8]
 00573473    mov         dword ptr [ebp-18],eax
 00573476    mov         edx,dword ptr [ebp-8]
 00573479    mov         eax,dword ptr [ebp-4]
 0057347C    call        005733A8
 00573481    test        al,al
>00573483    jne         005734DF
 00573485    xor         eax,eax
 00573487    push        ebp
 00573488    push        5734B1
 0057348D    push        dword ptr fs:[eax]
 00573490    mov         dword ptr fs:[eax],esp
 00573493    mov         eax,dword ptr [ebp-4]
 00573496    mov         eax,dword ptr [eax+29C]
 0057349C    mov         edx,dword ptr [ebp-8]
 0057349F    call        0057210C
 005734A4    mov         dword ptr [ebp-18],eax
 005734A7    xor         eax,eax
 005734A9    pop         edx
 005734AA    pop         ecx
 005734AB    pop         ecx
 005734AC    mov         dword ptr fs:[eax],edx
>005734AF    jmp         005734DF
>005734B1    jmp         @HandleOnException
 005734B6    dd          1
 005734BA    dd          00570A54;OutlineError
 005734BE    dd          005734C2
 005734C2    lea         edx,[ebp-1C]
 005734C5    mov         eax,[006E9EC8];^gvar_0063CBA0
 005734CA    call        LoadResString
 005734CF    mov         edx,dword ptr [ebp-1C]
 005734D2    mov         eax,dword ptr [ebp-4]
 005734D5    call        00575CA4
 005734DA    call        @DoneExcept
 005734DF    cmp         byte ptr [ebp+8],0
>005734E3    jne         00573510
 005734E5    mov         eax,dword ptr [ebp-18]
 005734E8    mov         eax,dword ptr [eax+10]
 005734EB    mov         dword ptr [ebp-18],eax
 005734EE    cmp         dword ptr [ebp-18],0
>005734F2    jne         0057350C
 005734F4    lea         edx,[ebp-20]
 005734F7    mov         eax,[006E9EDC];^gvar_0063CBC8
 005734FC    call        LoadResString
 00573501    mov         edx,dword ptr [ebp-20]
 00573504    mov         eax,dword ptr [ebp-4]
 00573507    call        00575CA4
 0057350C    mov         byte ptr [ebp+8],1
 00573510    mov         al,byte ptr [ebp+8]
 00573513    dec         al
>00573515    je          00573538
 00573517    dec         al
>00573519    jne         0057356D
 0057351B    mov         eax,dword ptr [ebp-18]
 0057351E    call        00571BC8
 00573523    mov         edx,eax
 00573525    mov         eax,dword ptr [ebp-18]
 00573528    mov         eax,dword ptr [eax+10]
 0057352B    mov         ecx,dword ptr [ebp-14]
 0057352E    call        005724BC
 00573533    mov         dword ptr [ebp-10],eax
>00573536    jmp         0057356D
 00573538    mov         eax,dword ptr [ebp-18]
 0057353B    call        00571BFC
 00573540    cmp         eax,0FF
>00573545    jbe         0057355F
 00573547    lea         edx,[ebp-24]
 0057354A    mov         eax,[006E9EEC];^gvar_0063CBE8
 0057354F    call        LoadResString
 00573554    mov         edx,dword ptr [ebp-24]
 00573557    mov         eax,dword ptr [ebp-18]
 0057355A    call        005727A0
 0057355F    mov         edx,dword ptr [ebp-14]
 00573562    mov         eax,dword ptr [ebp-18]
 00573565    call        00572458
 0057356A    mov         dword ptr [ebp-10],eax
 0057356D    mov         eax,dword ptr [ebp-4]
 00573570    call        0057423C
 00573575    test        al,al
>00573577    je          00573581
 00573579    mov         eax,dword ptr [ebp-4]
 0057357C    mov         edx,dword ptr [eax]
 0057357E    call        dword ptr [edx+7C]
 00573581    xor         eax,eax
 00573583    pop         edx
 00573584    pop         ecx
 00573585    pop         ecx
 00573586    mov         dword ptr fs:[eax],edx
>00573589    jmp         005735AE
>0057358B    jmp         @HandleAnyException
 00573590    mov         dl,1
 00573592    mov         eax,dword ptr [ebp-14]
 00573595    mov         ecx,dword ptr [eax]
 00573597    call        dword ptr [ecx-4];TOutlineNode.Destroy
 0057359A    mov         eax,[006E9DCC];^Application:TApplication
 0057359F    mov         eax,dword ptr [eax]
 005735A1    mov         edx,dword ptr [ebp-4]
 005735A4    call        TApplication.HandleException
 005735A9    call        @DoneExcept
 005735AE    xor         eax,eax
 005735B0    pop         edx
 005735B1    pop         ecx
 005735B2    pop         ecx
 005735B3    mov         dword ptr fs:[eax],edx
 005735B6    push        5735D8
 005735BB    lea         eax,[ebp-24]
 005735BE    mov         edx,3
 005735C3    call        @LStrArrayClr
 005735C8    lea         eax,[ebp-0C]
 005735CB    call        @LStrClr
 005735D0    ret
>005735D1    jmp         @HandleFinally
>005735D6    jmp         005735BB
 005735D8    mov         eax,dword ptr [ebp-10]
 005735DB    pop         edi
 005735DC    pop         esi
 005735DD    pop         ebx
 005735DE    mov         esp,ebp
 005735E0    pop         ebp
 005735E1    ret         8
end;*}

//005735E4
{*function sub_005735E4(?:TCustomOutline; ?:?):?;
begin
 005735E4    push        ebp
 005735E5    mov         ebp,esp
 005735E7    add         esp,0FFFFFFEC
 005735EA    push        ebx
 005735EB    push        esi
 005735EC    push        edi
 005735ED    xor         ecx,ecx
 005735EF    mov         dword ptr [ebp-14],ecx
 005735F2    mov         dword ptr [ebp-10],ecx
 005735F5    mov         dword ptr [ebp-8],edx
 005735F8    mov         dword ptr [ebp-4],eax
 005735FB    xor         eax,eax
 005735FD    push        ebp
 005735FE    push        5736BF
 00573603    push        dword ptr fs:[eax]
 00573606    mov         dword ptr fs:[eax],esp
 00573609    mov         eax,dword ptr [ebp-4]
 0057360C    mov         eax,dword ptr [eax+2A8];TCustomOutline.FCurItem:TOutlineNode
 00573612    mov         dword ptr [ebp-0C],eax
 00573615    mov         edx,dword ptr [ebp-8]
 00573618    mov         eax,dword ptr [ebp-4]
 0057361B    call        005733A8
 00573620    test        al,al
>00573622    jne         0057367E
 00573624    xor         eax,eax
 00573626    push        ebp
 00573627    push        573650
 0057362C    push        dword ptr fs:[eax]
 0057362F    mov         dword ptr fs:[eax],esp
 00573632    mov         eax,dword ptr [ebp-4]
 00573635    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 0057363B    mov         edx,dword ptr [ebp-8]
 0057363E    call        0057210C
 00573643    mov         dword ptr [ebp-0C],eax
 00573646    xor         eax,eax
 00573648    pop         edx
 00573649    pop         ecx
 0057364A    pop         ecx
 0057364B    mov         dword ptr fs:[eax],edx
>0057364E    jmp         0057367E
>00573650    jmp         @HandleOnException
 00573655    dd          1
 00573659    dd          00570A54;OutlineError
 0057365D    dd          00573661
 00573661    lea         edx,[ebp-10]
 00573664    mov         eax,[006E9EC8];^gvar_0063CBA0
 00573669    call        LoadResString
 0057366E    mov         edx,dword ptr [ebp-10]
 00573671    mov         eax,dword ptr [ebp-4]
 00573674    call        00575CA4
 00573679    call        @DoneExcept
 0057367E    mov         eax,dword ptr [ebp-4]
 00573681    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573687    cmp         eax,dword ptr [ebp-0C]
>0057368A    jne         005736A4
 0057368C    lea         edx,[ebp-14]
 0057368F    mov         eax,[006E9EDC];^gvar_0063CBC8
 00573694    call        LoadResString
 00573699    mov         edx,dword ptr [ebp-14]
 0057369C    mov         eax,dword ptr [ebp-4]
 0057369F    call        00575CA4
 005736A4    xor         eax,eax
 005736A6    pop         edx
 005736A7    pop         ecx
 005736A8    pop         ecx
 005736A9    mov         dword ptr fs:[eax],edx
 005736AC    push        5736C6
 005736B1    lea         eax,[ebp-14]
 005736B4    mov         edx,2
 005736B9    call        @LStrArrayClr
 005736BE    ret
>005736BF    jmp         @HandleFinally
>005736C4    jmp         005736B1
 005736C6    mov         eax,dword ptr [ebp-0C]
 005736C9    pop         edi
 005736CA    pop         esi
 005736CB    pop         ebx
 005736CC    mov         esp,ebp
 005736CE    pop         ebp
 005736CF    ret
end;*}

//005736D0
{*function sub_005736D0(?:TCustomOutline):?;
begin
 005736D0    push        ebp
 005736D1    mov         ebp,esp
 005736D3    add         esp,0FFFFFFF8
 005736D6    mov         dword ptr [ebp-4],eax
 005736D9    mov         eax,dword ptr [ebp-4]
 005736DC    mov         eax,dword ptr [eax+2EC]
 005736E2    mov         edx,dword ptr [ebp-4]
 005736E5    cmp         eax,dword ptr [edx+29C]
>005736EB    je          00573718
 005736ED    mov         eax,dword ptr [ebp-4]
 005736F0    mov         eax,dword ptr [eax+2EC]
 005736F6    call        00571C58
 005736FB    test        al,al
>005736FD    jne         0057374D
 005736FF    mov         eax,dword ptr [ebp-4]
 00573702    mov         eax,dword ptr [eax+2EC]
 00573708    call        00571C88
 0057370D    mov         edx,dword ptr [ebp-4]
 00573710    mov         dword ptr [edx+2EC],eax
>00573716    jmp         0057374D
 00573718    mov         eax,dword ptr [ebp-4]
 0057371B    mov         eax,dword ptr [eax+29C]
 00573721    call        00571A80
 00573726    cmp         dword ptr [eax+8],0
>0057372A    jle         0057374D
 0057372C    mov         eax,dword ptr [ebp-4]
 0057372F    mov         edx,dword ptr [eax+22C]
 00573735    inc         edx
 00573736    mov         eax,dword ptr [ebp-4]
 00573739    mov         eax,dword ptr [eax+29C]
 0057373F    call        00571F34
 00573744    mov         edx,dword ptr [ebp-4]
 00573747    mov         dword ptr [edx+2EC],eax
 0057374D    mov         eax,dword ptr [ebp-4]
 00573750    mov         eax,dword ptr [eax+2EC]
 00573756    call        00571BC8
 0057375B    mov         dword ptr [ebp-8],eax
 0057375E    mov         eax,dword ptr [ebp-8]
 00573761    pop         ecx
 00573762    pop         ecx
 00573763    pop         ebp
 00573764    ret
end;*}

//00573768
procedure sub_00573768(?:TCustomOutline);
begin
{*
 00573768    push        ebp
 00573769    mov         ebp,esp
 0057376B    push        ecx
 0057376C    mov         dword ptr [ebp-4],eax
 0057376F    mov         eax,dword ptr [ebp-4]
 00573772    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573778    mov         edx,dword ptr [ebp-4]
 0057377B    mov         dword ptr [edx+2EC],eax;TCustomOutline.FSelectedItem:TOutlineNode
 00573781    pop         ecx
 00573782    pop         ebp
 00573783    ret
*}
end;

//00573784
procedure sub_00573784(?:TCustomOutline; ?:TOutlineNode);
begin
{*
 00573784    push        ebp
 00573785    mov         ebp,esp
 00573787    add         esp,0FFFFFFF4
 0057378A    mov         dword ptr [ebp-8],edx
 0057378D    mov         dword ptr [ebp-4],eax
 00573790    mov         eax,dword ptr [ebp-8]
 00573793    mov         edx,dword ptr [ebp-4]
 00573796    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>0057379C    je          005737C5
 0057379E    xor         eax,eax
 005737A0    mov         dword ptr [ebp-0C],eax
 005737A3    lea         ecx,[ebp-0C]
 005737A6    mov         edx,dword ptr [ebp-8]
 005737A9    mov         eax,dword ptr [ebp-4]
 005737AC    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005737B2    call        00571EBC
 005737B7    mov         edx,dword ptr [ebp-0C]
 005737BA    sub         edx,2
 005737BD    mov         eax,dword ptr [ebp-4]
 005737C0    call        005B9D64
 005737C5    mov         esp,ebp
 005737C7    pop         ebp
 005737C8    ret
*}
end;

//005737CC
{*procedure sub_005737CC(?:TCustomOutline; ?:?);
begin
 005737CC    push        ebp
 005737CD    mov         ebp,esp
 005737CF    add         esp,0FFFFFFEC
 005737D2    push        ebx
 005737D3    push        esi
 005737D4    push        edi
 005737D5    xor         ecx,ecx
 005737D7    mov         dword ptr [ebp-14],ecx
 005737DA    mov         dword ptr [ebp-10],ecx
 005737DD    mov         dword ptr [ebp-8],edx
 005737E0    mov         dword ptr [ebp-4],eax
 005737E3    xor         eax,eax
 005737E5    push        ebp
 005737E6    push        573908
 005737EB    push        dword ptr fs:[eax]
 005737EE    mov         dword ptr fs:[eax],esp
 005737F1    mov         eax,dword ptr [ebp-4]
 005737F4    cmp         byte ptr [eax+298],0
>005737FB    jne         005738ED
 00573801    cmp         dword ptr [ebp-8],0
>00573805    jne         00573822
 00573807    mov         eax,dword ptr [ebp-4]
 0057380A    mov         eax,dword ptr [eax+29C]
 00573810    call        00571A80
 00573815    cmp         dword ptr [eax+8],0
>00573819    jle         00573822
 0057381B    mov         dword ptr [ebp-8],1
 00573822    cmp         dword ptr [ebp-8],0
>00573826    jle         005738D5
 0057382C    mov         eax,dword ptr [ebp-4]
 0057382F    mov         eax,dword ptr [eax+2EC]
 00573835    mov         dword ptr [ebp-0C],eax
 00573838    mov         eax,dword ptr [ebp-4]
 0057383B    mov         eax,dword ptr [eax+2EC]
 00573841    call        00571BC8
 00573846    cmp         eax,dword ptr [ebp-8]
>00573849    je          005738A5
 0057384B    xor         eax,eax
 0057384D    push        ebp
 0057384E    push        573877
 00573853    push        dword ptr fs:[eax]
 00573856    mov         dword ptr fs:[eax],esp
 00573859    mov         eax,dword ptr [ebp-4]
 0057385C    mov         eax,dword ptr [eax+29C]
 00573862    mov         edx,dword ptr [ebp-8]
 00573865    call        0057210C
 0057386A    mov         dword ptr [ebp-0C],eax
 0057386D    xor         eax,eax
 0057386F    pop         edx
 00573870    pop         ecx
 00573871    pop         ecx
 00573872    mov         dword ptr fs:[eax],edx
>00573875    jmp         005738A5
>00573877    jmp         @HandleOnException
 0057387C    dd          1
 00573880    dd          00570A54;OutlineError
 00573884    dd          00573888
 00573888    lea         edx,[ebp-10]
 0057388B    mov         eax,[006E9EC8];^gvar_0063CBA0
 00573890    call        LoadResString
 00573895    mov         edx,dword ptr [ebp-10]
 00573898    mov         eax,dword ptr [ebp-4]
 0057389B    call        00575CA4
 005738A0    call        @DoneExcept
 005738A5    mov         eax,dword ptr [ebp-0C]
 005738A8    call        00571C58
 005738AD    test        al,al
>005738AF    jne         005738BC
 005738B1    mov         eax,dword ptr [ebp-0C]
 005738B4    call        00571C88
 005738B9    mov         dword ptr [ebp-0C],eax
 005738BC    mov         eax,dword ptr [ebp-4]
 005738BF    mov         edx,dword ptr [ebp-0C]
 005738C2    mov         dword ptr [eax+2EC],edx
 005738C8    mov         edx,dword ptr [ebp-0C]
 005738CB    mov         eax,dword ptr [ebp-4]
 005738CE    call        00573784
>005738D3    jmp         005738ED
 005738D5    lea         edx,[ebp-14]
 005738D8    mov         eax,[006E9EE0];^gvar_0063CBD0
 005738DD    call        LoadResString
 005738E2    mov         edx,dword ptr [ebp-14]
 005738E5    mov         eax,dword ptr [ebp-4]
 005738E8    call        00575CA4
 005738ED    xor         eax,eax
 005738EF    pop         edx
 005738F0    pop         ecx
 005738F1    pop         ecx
 005738F2    mov         dword ptr fs:[eax],edx
 005738F5    push        57390F
 005738FA    lea         eax,[ebp-14]
 005738FD    mov         edx,2
 00573902    call        @LStrArrayClr
 00573907    ret
>00573908    jmp         @HandleFinally
>0057390D    jmp         005738FA
 0057390F    pop         edi
 00573910    pop         esi
 00573911    pop         ebx
 00573912    mov         esp,ebp
 00573914    pop         ebp
 00573915    ret
end;*}

//00573918
{*function sub_00573918(?:TCustomOutline; ?:?; ?:?):?;
begin
 00573918    push        ebp
 00573919    mov         ebp,esp
 0057391B    add         esp,0FFFFFFF0
 0057391E    mov         dword ptr [ebp-0C],ecx
 00573921    mov         dword ptr [ebp-8],edx
 00573924    mov         dword ptr [ebp-4],eax
 00573927    push        0
 00573929    mov         ecx,dword ptr [ebp-0C]
 0057392C    mov         edx,dword ptr [ebp-8]
 0057392F    mov         eax,dword ptr [ebp-4]
 00573932    call        00573944
 00573937    mov         dword ptr [ebp-10],eax
 0057393A    mov         eax,dword ptr [ebp-10]
 0057393D    mov         esp,ebp
 0057393F    pop         ebp
 00573940    ret
end;*}

//00573944
{*function sub_00573944(?:TCustomOutline; ?:?; ?:?; ?:?):?;
begin
 00573944    push        ebp
 00573945    mov         ebp,esp
 00573947    add         esp,0FFFFFFEC
 0057394A    push        ebx
 0057394B    xor         ebx,ebx
 0057394D    mov         dword ptr [ebp-14],ebx
 00573950    mov         dword ptr [ebp-0C],ecx
 00573953    mov         dword ptr [ebp-8],edx
 00573956    mov         dword ptr [ebp-4],eax
 00573959    xor         eax,eax
 0057395B    push        ebp
 0057395C    push        5739E3
 00573961    push        dword ptr fs:[eax]
 00573964    mov         dword ptr fs:[eax],esp
 00573967    mov         dword ptr [ebp-10],0FFFFFFFF
 0057396E    cmp         dword ptr [ebp-8],0
>00573972    jle         0057398D
 00573974    mov         eax,dword ptr [ebp+8]
 00573977    push        eax
 00573978    push        2
 0057397A    mov         ecx,dword ptr [ebp-0C]
 0057397D    mov         edx,dword ptr [ebp-8]
 00573980    mov         eax,dword ptr [ebp-4]
 00573983    call        005733F4
 00573988    mov         dword ptr [ebp-10],eax
>0057398B    jmp         005739C2
 0057398D    cmp         dword ptr [ebp-8],0
>00573991    jne         005739AA
 00573993    mov         eax,dword ptr [ebp+8]
 00573996    push        eax
 00573997    mov         ecx,dword ptr [ebp-0C]
 0057399A    mov         edx,dword ptr [ebp-8]
 0057399D    mov         eax,dword ptr [ebp-4]
 005739A0    call        00573AFC
 005739A5    mov         dword ptr [ebp-10],eax
>005739A8    jmp         005739C2
 005739AA    lea         edx,[ebp-14]
 005739AD    mov         eax,[006E9EDC];^gvar_0063CBC8
 005739B2    call        LoadResString
 005739B7    mov         edx,dword ptr [ebp-14]
 005739BA    mov         eax,dword ptr [ebp-4]
 005739BD    call        00575CA4
 005739C2    mov         edx,dword ptr [ebp-8]
 005739C5    mov         eax,dword ptr [ebp-4]
 005739C8    call        0057451C
 005739CD    xor         eax,eax
 005739CF    pop         edx
 005739D0    pop         ecx
 005739D1    pop         ecx
 005739D2    mov         dword ptr fs:[eax],edx
 005739D5    push        5739EA
 005739DA    lea         eax,[ebp-14]
 005739DD    call        @LStrClr
 005739E2    ret
>005739E3    jmp         @HandleFinally
>005739E8    jmp         005739DA
 005739EA    mov         eax,dword ptr [ebp-10]
 005739ED    pop         ebx
 005739EE    mov         esp,ebp
 005739F0    pop         ebp
 005739F1    ret         4
end;*}

//005739F4
{*function sub_005739F4(?:?; ?:?; ?:?):?;
begin
 005739F4    push        ebp
 005739F5    mov         ebp,esp
 005739F7    add         esp,0FFFFFFF0
 005739FA    mov         dword ptr [ebp-0C],ecx
 005739FD    mov         dword ptr [ebp-8],edx
 00573A00    mov         dword ptr [ebp-4],eax
 00573A03    push        0
 00573A05    mov         ecx,dword ptr [ebp-0C]
 00573A08    mov         edx,dword ptr [ebp-8]
 00573A0B    mov         eax,dword ptr [ebp-4]
 00573A0E    call        00573A20
 00573A13    mov         dword ptr [ebp-10],eax
 00573A16    mov         eax,dword ptr [ebp-10]
 00573A19    mov         esp,ebp
 00573A1B    pop         ebp
 00573A1C    ret
end;*}

//00573A20
{*function sub_00573A20(?:?; ?:?; ?:?; ?:?):?;
begin
 00573A20    push        ebp
 00573A21    mov         ebp,esp
 00573A23    add         esp,0FFFFFFEC
 00573A26    push        ebx
 00573A27    xor         ebx,ebx
 00573A29    mov         dword ptr [ebp-14],ebx
 00573A2C    mov         dword ptr [ebp-0C],ecx
 00573A2F    mov         dword ptr [ebp-8],edx
 00573A32    mov         dword ptr [ebp-4],eax
 00573A35    xor         eax,eax
 00573A37    push        ebp
 00573A38    push        573ABF
 00573A3D    push        dword ptr fs:[eax]
 00573A40    mov         dword ptr fs:[eax],esp
 00573A43    mov         dword ptr [ebp-10],0FFFFFFFF
 00573A4A    cmp         dword ptr [ebp-8],0
>00573A4E    jle         00573A69
 00573A50    mov         eax,dword ptr [ebp+8]
 00573A53    push        eax
 00573A54    push        0
 00573A56    mov         ecx,dword ptr [ebp-0C]
 00573A59    mov         edx,dword ptr [ebp-8]
 00573A5C    mov         eax,dword ptr [ebp-4]
 00573A5F    call        005733F4
 00573A64    mov         dword ptr [ebp-10],eax
>00573A67    jmp         00573A9E
 00573A69    cmp         dword ptr [ebp-8],0
>00573A6D    jne         00573A86
 00573A6F    mov         eax,dword ptr [ebp+8]
 00573A72    push        eax
 00573A73    mov         ecx,dword ptr [ebp-0C]
 00573A76    mov         edx,dword ptr [ebp-8]
 00573A79    mov         eax,dword ptr [ebp-4]
 00573A7C    call        00573AFC
 00573A81    mov         dword ptr [ebp-10],eax
>00573A84    jmp         00573A9E
 00573A86    lea         edx,[ebp-14]
 00573A89    mov         eax,[006E9EDC];^gvar_0063CBC8
 00573A8E    call        LoadResString
 00573A93    mov         edx,dword ptr [ebp-14]
 00573A96    mov         eax,dword ptr [ebp-4]
 00573A99    call        00575CA4
 00573A9E    mov         edx,dword ptr [ebp-8]
 00573AA1    mov         eax,dword ptr [ebp-4]
 00573AA4    call        0057451C
 00573AA9    xor         eax,eax
 00573AAB    pop         edx
 00573AAC    pop         ecx
 00573AAD    pop         ecx
 00573AAE    mov         dword ptr fs:[eax],edx
 00573AB1    push        573AC6
 00573AB6    lea         eax,[ebp-14]
 00573AB9    call        @LStrClr
 00573ABE    ret
>00573ABF    jmp         @HandleFinally
>00573AC4    jmp         00573AB6
 00573AC6    mov         eax,dword ptr [ebp-10]
 00573AC9    pop         ebx
 00573ACA    mov         esp,ebp
 00573ACC    pop         ebp
 00573ACD    ret         4
end;*}

//00573AD0
{*function sub_00573AD0(?:TCustomOutline; ?:?; ?:AnsiString):?;
begin
 00573AD0    push        ebp
 00573AD1    mov         ebp,esp
 00573AD3    add         esp,0FFFFFFF0
 00573AD6    mov         dword ptr [ebp-0C],ecx
 00573AD9    mov         dword ptr [ebp-8],edx
 00573ADC    mov         dword ptr [ebp-4],eax
 00573ADF    push        0
 00573AE1    mov         ecx,dword ptr [ebp-0C]
 00573AE4    mov         edx,dword ptr [ebp-8]
 00573AE7    mov         eax,dword ptr [ebp-4]
 00573AEA    call        00573AFC
 00573AEF    mov         dword ptr [ebp-10],eax
 00573AF2    mov         eax,dword ptr [ebp-10]
 00573AF5    mov         esp,ebp
 00573AF7    pop         ebp
 00573AF8    ret
end;*}

//00573AFC
{*function sub_00573AFC(?:TCustomOutline; ?:?; ?:AnsiString; ?:?):?;
begin
 00573AFC    push        ebp
 00573AFD    mov         ebp,esp
 00573AFF    add         esp,0FFFFFFEC
 00573B02    push        ebx
 00573B03    xor         ebx,ebx
 00573B05    mov         dword ptr [ebp-14],ebx
 00573B08    mov         dword ptr [ebp-0C],ecx
 00573B0B    mov         dword ptr [ebp-8],edx
 00573B0E    mov         dword ptr [ebp-4],eax
 00573B11    xor         eax,eax
 00573B13    push        ebp
 00573B14    push        573B7E
 00573B19    push        dword ptr fs:[eax]
 00573B1C    mov         dword ptr fs:[eax],esp
 00573B1F    mov         dword ptr [ebp-10],0FFFFFFFF
 00573B26    cmp         dword ptr [ebp-8],0
>00573B2A    jl          00573B45
 00573B2C    mov         eax,dword ptr [ebp+8]
 00573B2F    push        eax
 00573B30    push        1
 00573B32    mov         ecx,dword ptr [ebp-0C]
 00573B35    mov         edx,dword ptr [ebp-8]
 00573B38    mov         eax,dword ptr [ebp-4]
 00573B3B    call        005733F4
 00573B40    mov         dword ptr [ebp-10],eax
>00573B43    jmp         00573B5D
 00573B45    lea         edx,[ebp-14]
 00573B48    mov         eax,[006E9EDC];^gvar_0063CBC8
 00573B4D    call        LoadResString
 00573B52    mov         edx,dword ptr [ebp-14]
 00573B55    mov         eax,dword ptr [ebp-4]
 00573B58    call        00575CA4
 00573B5D    mov         edx,dword ptr [ebp-8]
 00573B60    mov         eax,dword ptr [ebp-4]
 00573B63    call        0057451C
 00573B68    xor         eax,eax
 00573B6A    pop         edx
 00573B6B    pop         ecx
 00573B6C    pop         ecx
 00573B6D    mov         dword ptr fs:[eax],edx
 00573B70    push        573B85
 00573B75    lea         eax,[ebp-14]
 00573B78    call        @LStrClr
 00573B7D    ret
>00573B7E    jmp         @HandleFinally
>00573B83    jmp         00573B75
 00573B85    mov         eax,dword ptr [ebp-10]
 00573B88    pop         ebx
 00573B89    mov         esp,ebp
 00573B8B    pop         ebp
 00573B8C    ret         4
end;*}

//00573B90
{*procedure sub_00573B90(?:TCustomOutline; ?:?);
begin
 00573B90    push        ebp
 00573B91    mov         ebp,esp
 00573B93    add         esp,0FFFFFFF0
 00573B96    push        ebx
 00573B97    push        esi
 00573B98    push        edi
 00573B99    xor         ecx,ecx
 00573B9B    mov         dword ptr [ebp-10],ecx
 00573B9E    mov         dword ptr [ebp-0C],ecx
 00573BA1    mov         dword ptr [ebp-8],edx
 00573BA4    mov         dword ptr [ebp-4],eax
 00573BA7    xor         eax,eax
 00573BA9    push        ebp
 00573BAA    push        573C4C
 00573BAF    push        dword ptr fs:[eax]
 00573BB2    mov         dword ptr fs:[eax],esp
 00573BB5    cmp         dword ptr [ebp-8],0
>00573BB9    jle         00573C19
 00573BBB    xor         eax,eax
 00573BBD    push        ebp
 00573BBE    push        573BE9
 00573BC3    push        dword ptr fs:[eax]
 00573BC6    mov         dword ptr fs:[eax],esp
 00573BC9    mov         eax,dword ptr [ebp-4]
 00573BCC    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573BD2    mov         edx,dword ptr [ebp-8]
 00573BD5    call        0057210C
 00573BDA    call        TObject.Free
 00573BDF    xor         eax,eax
 00573BE1    pop         edx
 00573BE2    pop         ecx
 00573BE3    pop         ecx
 00573BE4    mov         dword ptr fs:[eax],edx
>00573BE7    jmp         00573C31
>00573BE9    jmp         @HandleOnException
 00573BEE    dd          1
 00573BF2    dd          00570A54;OutlineError
 00573BF6    dd          00573BFA
 00573BFA    lea         edx,[ebp-0C]
 00573BFD    mov         eax,[006E9EC8];^gvar_0063CBA0
 00573C02    call        LoadResString
 00573C07    mov         edx,dword ptr [ebp-0C]
 00573C0A    mov         eax,dword ptr [ebp-4]
 00573C0D    call        00575CA4
 00573C12    call        @DoneExcept
>00573C17    jmp         00573C31
 00573C19    lea         edx,[ebp-10]
 00573C1C    mov         eax,[006E9EDC];^gvar_0063CBC8
 00573C21    call        LoadResString
 00573C26    mov         edx,dword ptr [ebp-10]
 00573C29    mov         eax,dword ptr [ebp-4]
 00573C2C    call        00575CA4
 00573C31    xor         eax,eax
 00573C33    pop         edx
 00573C34    pop         ecx
 00573C35    pop         ecx
 00573C36    mov         dword ptr fs:[eax],edx
 00573C39    push        573C53
 00573C3E    lea         eax,[ebp-10]
 00573C41    mov         edx,2
 00573C46    call        @LStrArrayClr
 00573C4B    ret
>00573C4C    jmp         @HandleFinally
>00573C51    jmp         00573C3E
 00573C53    pop         edi
 00573C54    pop         esi
 00573C55    pop         ebx
 00573C56    mov         esp,ebp
 00573C58    pop         ebp
 00573C59    ret
end;*}

//00573C5C
{*procedure sub_00573C5C(?:TCustomOutline; ?:TOutlineNode; ?:?);
begin
 00573C5C    push        ebp
 00573C5D    mov         ebp,esp
 00573C5F    add         esp,0FFFFFFF4
 00573C62    push        ebx
 00573C63    push        esi
 00573C64    push        edi
 00573C65    mov         dword ptr [ebp-0C],ecx
 00573C68    mov         dword ptr [ebp-8],edx
 00573C6B    mov         dword ptr [ebp-4],eax
 00573C6E    mov         eax,dword ptr [ebp-4]
 00573C71    mov         eax,dword ptr [eax+2A0];TCustomOutline.FGoodNode:TOutlineNode
 00573C77    mov         edx,dword ptr [ebp-4]
 00573C7A    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>00573C80    jne         00573CAB
 00573C82    mov         eax,dword ptr [ebp-4]
 00573C85    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573C8B    call        00571A80
 00573C90    cmp         dword ptr [eax+8],0
>00573C94    je          00573CAB
 00573C96    mov         eax,dword ptr [ebp-4]
 00573C99    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573C9F    xor         edx,edx
 00573CA1    call        00571AB4
 00573CA6    call        005723E4
 00573CAB    xor         eax,eax
 00573CAD    push        ebp
 00573CAE    push        573CDD
 00573CB3    push        dword ptr fs:[eax]
 00573CB6    mov         dword ptr fs:[eax],esp
 00573CB9    mov         eax,dword ptr [ebp-4]
 00573CBC    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573CC2    mov         edx,dword ptr [ebp-0C]
 00573CC5    call        0057210C
 00573CCA    mov         edx,dword ptr [ebp-4]
 00573CCD    mov         dword ptr [edx+2A8],eax;TCustomOutline.FCurItem:TOutlineNode
 00573CD3    xor         eax,eax
 00573CD5    pop         edx
 00573CD6    pop         ecx
 00573CD7    pop         ecx
 00573CD8    mov         dword ptr fs:[eax],edx
>00573CDB    jmp         00573D05
>00573CDD    jmp         @HandleOnException
 00573CE2    dd          1
 00573CE6    dd          00570A54;OutlineError
 00573CEA    dd          00573CEE
 00573CEE    mov         eax,dword ptr [ebp-4]
 00573CF1    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573CF7    mov         edx,dword ptr [ebp-4]
 00573CFA    mov         dword ptr [edx+2A8],eax;TCustomOutline.FCurItem:TOutlineNode
 00573D00    call        @DoneExcept
 00573D05    mov         eax,dword ptr [ebp-4]
 00573D08    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00573D0E    mov         edx,dword ptr [ebp-4]
 00573D11    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>00573D17    jne         00573D2F
 00573D19    mov         eax,dword ptr [ebp-4]
 00573D1C    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573D22    cmp         eax,dword ptr [ebp-8]
>00573D25    je          00573D2F
 00573D27    mov         eax,dword ptr [ebp-4]
 00573D2A    call        005736D0
 00573D2F    mov         eax,dword ptr [ebp-4]
 00573D32    call        0057423C
 00573D37    test        al,al
>00573D39    je          00573D43
 00573D3B    mov         eax,dword ptr [ebp-4]
 00573D3E    mov         edx,dword ptr [eax]
 00573D40    call        dword ptr [edx+7C];TWinControl.Invalidate
 00573D43    pop         edi
 00573D44    pop         esi
 00573D45    pop         ebx
 00573D46    mov         esp,ebp
 00573D48    pop         ebp
 00573D49    ret
end;*}

//00573D4C
procedure TCustomOutline.sub_00573D4C;
begin
{*
 00573D4C    push        ebp
 00573D4D    mov         ebp,esp
 00573D4F    push        ecx
 00573D50    mov         dword ptr [ebp-4],eax
 00573D53    mov         eax,dword ptr [ebp-4]
 00573D56    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573D5C    call        00571A80
 00573D61    cmp         dword ptr [eax+8],0
>00573D65    jle         00573D8E
 00573D67    mov         eax,dword ptr [ebp-4]
 00573D6A    mov         edx,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 00573D70    inc         edx
 00573D71    mov         eax,dword ptr [ebp-4]
 00573D74    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573D7A    call        00571F34
 00573D7F    call        00571BC8
 00573D84    mov         edx,eax
 00573D86    mov         eax,dword ptr [ebp-4]
 00573D89    call        005737CC
 00573D8E    mov         eax,dword ptr [ebp-4]
 00573D91    call        TControl.sub_005F5478
 00573D96    pop         ecx
 00573D97    pop         ebp
 00573D98    ret
*}
end;

//00573D9C
{*procedure TCustomOutline.WMSize(?:?);
begin
 00573D9C    push        ebp
 00573D9D    mov         ebp,esp
 00573D9F    add         esp,0FFFFFFF8
 00573DA2    mov         dword ptr [ebp-8],edx
 00573DA5    mov         dword ptr [ebp-4],eax
 00573DA8    mov         edx,dword ptr [ebp-8]
 00573DAB    mov         eax,dword ptr [ebp-4]
 00573DAE    call        TCustomGrid.WMSize
 00573DB3    mov         eax,dword ptr [ebp-4]
 00573DB6    cmp         byte ptr [eax+2F8],0;TCustomOutline.FSettingWidth:Boolean
>00573DBD    jne         00573E11
 00573DBF    mov         eax,dword ptr [ebp-4]
 00573DC2    cmp         byte ptr [eax+2F9],0;TCustomOutline.FSettingHeight:Boolean
>00573DC9    jne         00573E11
 00573DCB    mov         eax,dword ptr [ebp-4]
 00573DCE    mov         al,byte ptr [eax+254];TCustomOutline.FScrollBars:TScrollStyle
 00573DD4    test        al,al
>00573DD6    je          00573DF5
 00573DD8    sub         al,2
>00573DDA    je          00573DF5
 00573DDC    mov         eax,dword ptr [ebp-4]
 00573DDF    cmp         byte ptr [eax+2E8],1;TCustomOutline.FStyle:TOutlineType
>00573DE6    jne         00573E09
 00573DE8    mov         eax,dword ptr [ebp-4]
 00573DEB    cmp         word ptr [eax+2F2],0;TCustomOutline.?f2F2:word
>00573DF3    je          00573E09
 00573DF5    mov         eax,dword ptr [ebp-4]
 00573DF8    call        TControl.GetClientWidth
 00573DFD    mov         edx,eax
 00573DFF    mov         eax,dword ptr [ebp-4]
 00573E02    call        TValueListEditor.SetDefaultColWidth
>00573E07    jmp         00573E11
 00573E09    mov         eax,dword ptr [ebp-4]
 00573E0C    call        005741B0
 00573E11    pop         ecx
 00573E12    pop         ecx
 00573E13    pop         ebp
 00573E14    ret
end;*}

//00573E18
{*procedure TCustomOutline.sub_00573E18(?:?);
begin
 00573E18    push        ebp
 00573E19    mov         ebp,esp
 00573E1B    add         esp,0FFFFFFF8
 00573E1E    mov         dword ptr [ebp-8],edx
 00573E21    mov         dword ptr [ebp-4],eax
 00573E24    mov         edx,dword ptr [ebp-8]
 00573E27    mov         eax,dword ptr [ebp-4]
 00573E2A    call        TCustomGrid.sub_005B8C50
 00573E2F    mov         eax,dword ptr [ebp-4]
 00573E32    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00573E38    mov         edx,dword ptr [ebp-4]
 00573E3B    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>00573E41    je          00573E88
 00573E43    mov         eax,dword ptr [ebp-8]
 00573E46    mov         al,byte ptr [eax]
 00573E48    sub         al,2A
>00573E4A    je          00573E7A
 00573E4C    dec         al
>00573E4E    je          00573E56
 00573E50    sub         al,2
>00573E52    je          00573E68
>00573E54    jmp         00573E88
 00573E56    mov         dl,1
 00573E58    mov         eax,dword ptr [ebp-4]
 00573E5B    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00573E61    call        00572208
>00573E66    jmp         00573E88
 00573E68    xor         edx,edx
 00573E6A    mov         eax,dword ptr [ebp-4]
 00573E6D    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00573E73    call        00572208
>00573E78    jmp         00573E88
 00573E7A    mov         eax,dword ptr [ebp-4]
 00573E7D    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 00573E83    call        00571E64
 00573E88    pop         ecx
 00573E89    pop         ecx
 00573E8A    pop         ebp
 00573E8B    ret
end;*}

//00573E8C
procedure TCustomOutline.KeyDown(Key:Word; Shift:TShiftState);
begin
{*
 00573E8C    push        ebp
 00573E8D    mov         ebp,esp
 00573E8F    add         esp,0FFFFFFE8
 00573E92    mov         byte ptr [ebp-9],cl
 00573E95    mov         dword ptr [ebp-8],edx
 00573E98    mov         dword ptr [ebp-4],eax
 00573E9B    mov         edx,dword ptr [ebp-8]
 00573E9E    mov         cl,byte ptr [ebp-9]
 00573EA1    mov         eax,dword ptr [ebp-4]
 00573EA4    call        TCustomGrid.KeyDown
 00573EA9    mov         eax,dword ptr [ebp-4]
 00573EAC    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573EB2    call        00571A80
 00573EB7    cmp         dword ptr [eax+8],0
>00573EBB    je          0057411A
 00573EC1    mov         eax,dword ptr [ebp-4]
 00573EC4    mov         edx,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 00573ECA    inc         edx
 00573ECB    mov         eax,dword ptr [ebp-4]
 00573ECE    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573ED4    call        00571F34
 00573ED9    mov         dword ptr [ebp-10],eax
 00573EDC    mov         eax,dword ptr [ebp-8]
 00573EDF    movzx       eax,word ptr [eax]
 00573EE2    cmp         eax,26
>00573EE5    jg          00573F0A
>00573EE7    je          00574040
 00573EED    sub         eax,0D
>00573EF0    je          00573FA3
 00573EF6    sub         eax,16
>00573EF9    je          00573F4F
 00573EFB    dec         eax
>00573EFC    je          00573F28
 00573EFE    dec         eax
>00573EFF    je          00574009
>00573F05    jmp         005740F3
 00573F0A    sub         eax,27
>00573F0D    je          00573FD0
 00573F13    dec         eax
>00573F14    je          0057409D
 00573F1A    sub         eax,42
>00573F1D    je          00573FB9
>00573F23    jmp         005740F3
 00573F28    mov         eax,dword ptr [ebp-4]
 00573F2B    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573F31    call        00571A80
 00573F36    call        TList.First
 00573F3B    call        00571BC8
 00573F40    mov         edx,eax
 00573F42    mov         eax,dword ptr [ebp-4]
 00573F45    call        005737CC
>00573F4A    jmp         0057411A
 00573F4F    mov         eax,dword ptr [ebp-4]
 00573F52    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00573F58    call        00571A80
 00573F5D    call        0064523C
 00573F62    mov         dword ptr [ebp-10],eax
>00573F65    jmp         00573F77
 00573F67    mov         eax,dword ptr [ebp-10]
 00573F6A    call        00571A80
 00573F6F    call        0064523C
 00573F74    mov         dword ptr [ebp-10],eax
 00573F77    mov         eax,dword ptr [ebp-10]
 00573F7A    cmp         byte ptr [eax+18],0
>00573F7E    je          00573F8C
 00573F80    mov         eax,dword ptr [ebp-10]
 00573F83    call        005727C4
 00573F88    test        al,al
>00573F8A    jne         00573F67
 00573F8C    mov         eax,dword ptr [ebp-10]
 00573F8F    call        00571BC8
 00573F94    mov         edx,eax
 00573F96    mov         eax,dword ptr [ebp-4]
 00573F99    call        005737CC
>00573F9E    jmp         0057411A
 00573FA3    mov         eax,dword ptr [ebp-10]
 00573FA6    mov         dl,byte ptr [eax+18]
 00573FA9    xor         dl,1
 00573FAC    mov         eax,dword ptr [ebp-10]
 00573FAF    call        00572208
>00573FB4    jmp         0057411A
 00573FB9    test        byte ptr [ebp-9],4
>00573FBD    je          005740F3
 00573FC3    mov         eax,dword ptr [ebp-4]
 00573FC6    call        00574198
>00573FCB    jmp         0057411A
 00573FD0    mov         eax,dword ptr [ebp-10]
 00573FD3    call        005727C4
 00573FD8    test        al,al
>00573FDA    je          00573FE5
 00573FDC    mov         eax,dword ptr [ebp-10]
 00573FDF    cmp         byte ptr [eax+18],0
>00573FE3    jne         00573FF1
 00573FE5    push        0
 00573FE7    call        USER32.MessageBeep
>00573FEC    jmp         0057411A
 00573FF1    mov         eax,dword ptr [ebp-4]
 00573FF4    call        005736D0
 00573FF9    mov         edx,eax
 00573FFB    inc         edx
 00573FFC    mov         eax,dword ptr [ebp-4]
 00573FFF    call        005737CC
>00574004    jmp         0057411A
 00574009    mov         eax,dword ptr [ebp-10]
 0057400C    mov         eax,dword ptr [eax+10]
 0057400F    mov         edx,dword ptr [ebp-4]
 00574012    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>00574018    jne         00574026
 0057401A    push        0
 0057401C    call        USER32.MessageBeep
>00574021    jmp         0057411A
 00574026    mov         eax,dword ptr [ebp-10]
 00574029    mov         eax,dword ptr [eax+10]
 0057402C    call        00571BC8
 00574031    mov         edx,eax
 00574033    mov         eax,dword ptr [ebp-4]
 00574036    call        005737CC
>0057403B    jmp         0057411A
 00574040    test        byte ptr [ebp-9],4
>00574044    je          005740F3
 0057404A    mov         eax,dword ptr [ebp-10]
 0057404D    mov         eax,dword ptr [eax+10]
 00574050    mov         dword ptr [ebp-14],eax
 00574053    mov         eax,dword ptr [ebp-14]
 00574056    call        00571A80
 0057405B    call        TList.First
 00574060    cmp         eax,dword ptr [ebp-10]
>00574063    jne         00574071
 00574065    push        0
 00574067    call        USER32.MessageBeep
>0057406C    jmp         0057411A
 00574071    mov         eax,dword ptr [ebp-14]
 00574074    call        00571A80
 00574079    mov         edx,dword ptr [ebp-10]
 0057407C    call        TList.IndexOf
 00574081    mov         edx,eax
 00574083    dec         edx
 00574084    mov         eax,dword ptr [ebp-14]
 00574087    call        00571AB4
 0057408C    call        00571BC8
 00574091    mov         edx,eax
 00574093    mov         eax,dword ptr [ebp-4]
 00574096    call        005737CC
>0057409B    jmp         0057411A
 0057409D    test        byte ptr [ebp-9],4
>005740A1    je          005740F3
 005740A3    mov         eax,dword ptr [ebp-10]
 005740A6    mov         eax,dword ptr [eax+10]
 005740A9    mov         dword ptr [ebp-18],eax
 005740AC    mov         eax,dword ptr [ebp-18]
 005740AF    call        00571A80
 005740B4    call        0064523C
 005740B9    cmp         eax,dword ptr [ebp-10]
>005740BC    jne         005740C7
 005740BE    push        0
 005740C0    call        USER32.MessageBeep
>005740C5    jmp         0057411A
 005740C7    mov         eax,dword ptr [ebp-18]
 005740CA    call        00571A80
 005740CF    mov         edx,dword ptr [ebp-10]
 005740D2    call        TList.IndexOf
 005740D7    mov         edx,eax
 005740D9    inc         edx
 005740DA    mov         eax,dword ptr [ebp-18]
 005740DD    call        00571AB4
 005740E2    call        00571BC8
 005740E7    mov         edx,eax
 005740E9    mov         eax,dword ptr [ebp-4]
 005740EC    call        005737CC
>005740F1    jmp         0057411A
 005740F3    mov         eax,dword ptr [ebp-4]
 005740F6    mov         edx,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 005740FC    inc         edx
 005740FD    mov         eax,dword ptr [ebp-4]
 00574100    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00574106    call        00571F34
 0057410B    call        00571BC8
 00574110    mov         edx,eax
 00574112    mov         eax,dword ptr [ebp-4]
 00574115    call        005737CC
 0057411A    mov         esp,ebp
 0057411C    pop         ebp
 0057411D    ret
*}
end;

//00574120
procedure TCustomOutline.sub_00574120;
begin
{*
 00574120    push        ebp
 00574121    mov         ebp,esp
 00574123    add         esp,0FFFFFFF8
 00574126    mov         dword ptr [ebp-4],eax
 00574129    mov         eax,dword ptr [ebp-4]
 0057412C    call        TControl.sub_005F5508
 00574131    mov         eax,dword ptr [ebp-4]
 00574134    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 0057413A    mov         dword ptr [ebp-8],eax
 0057413D    mov         eax,dword ptr [ebp-8]
 00574140    mov         edx,dword ptr [ebp-4]
 00574143    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>00574149    je          00574156
 0057414B    mov         edx,dword ptr [ebp-8]
 0057414E    mov         eax,dword ptr [ebp-4]
 00574151    call        00574218
 00574156    pop         ecx
 00574157    pop         ecx
 00574158    pop         ebp
 00574159    ret
*}
end;

//0057415C
procedure TCustomOutline.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0057415C    push        ebp
 0057415D    mov         ebp,esp
 0057415F    add         esp,0FFFFFFF8
 00574162    mov         byte ptr [ebp-6],cl
 00574165    mov         byte ptr [ebp-5],dl
 00574168    mov         dword ptr [ebp-4],eax
 0057416B    mov         eax,dword ptr [ebp+0C]
 0057416E    push        eax
 0057416F    mov         eax,dword ptr [ebp+8]
 00574172    push        eax
 00574173    mov         cl,byte ptr [ebp-6]
 00574176    mov         dl,byte ptr [ebp-5]
 00574179    mov         eax,dword ptr [ebp-4]
 0057417C    call        TCustomGrid.MouseDown
 00574181    mov         eax,dword ptr [ebp-4]
 00574184    call        00573768
 00574189    mov         eax,dword ptr [ebp-4]
 0057418C    call        005736D0
 00574191    pop         ecx
 00574192    pop         ecx
 00574193    pop         ebp
 00574194    ret         8
*}
end;

//00574198
procedure sub_00574198(?:TCustomOutline);
begin
{*
 00574198    push        ebp
 00574199    mov         ebp,esp
 0057419B    push        ecx
 0057419C    mov         dword ptr [ebp-4],eax
 0057419F    mov         eax,dword ptr [ebp-4]
 005741A2    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005741A8    call        00571E64
 005741AD    pop         ecx
 005741AE    pop         ebp
 005741AF    ret
*}
end;

//005741B0
procedure sub_005741B0(?:TCustomOutline);
begin
{*
 005741B0    push        ebp
 005741B1    mov         ebp,esp
 005741B3    push        ecx
 005741B4    mov         dword ptr [ebp-4],eax
 005741B7    mov         eax,dword ptr [ebp-4]
 005741BA    mov         al,byte ptr [eax+254];TCustomOutline.FScrollBars:TScrollStyle
 005741C0    sub         al,1
>005741C2    je          005741C8
 005741C4    sub         al,2
>005741C6    jne         00574213
 005741C8    mov         eax,dword ptr [ebp-4]
 005741CB    cmp         dword ptr [eax+2A4],0;TCustomOutline.UpdateCount:Integer
>005741D2    jg          00574213
 005741D4    mov         eax,dword ptr [ebp-4]
 005741D7    cmp         byte ptr [eax+2EA],0;TCustomOutline.FIgnoreScrollResize:Boolean
>005741DE    jne         00574213
 005741E0    mov         eax,dword ptr [ebp-4]
 005741E3    cmp         byte ptr [eax+2E8],1;TCustomOutline.FStyle:TOutlineType
>005741EA    jne         005741F9
 005741EC    mov         eax,dword ptr [ebp-4]
 005741EF    cmp         word ptr [eax+2F2],0;TCustomOutline.?f2F2:word
>005741F7    jne         00574213
 005741F9    xor         edx,edx
 005741FB    mov         eax,dword ptr [ebp-4]
 005741FE    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00574204    call        00572728
 00574209    mov         edx,eax
 0057420B    mov         eax,dword ptr [ebp-4]
 0057420E    call        00574660
 00574213    pop         ecx
 00574214    pop         ebp
 00574215    ret
*}
end;

//00574218
procedure sub_00574218(?:TCustomOutline; ?:TOutlineNode);
begin
{*
 00574218    push        ebp
 00574219    mov         ebp,esp
 0057421B    add         esp,0FFFFFFF8
 0057421E    mov         dword ptr [ebp-8],edx
 00574221    mov         dword ptr [ebp-4],eax
 00574224    mov         eax,dword ptr [ebp-8]
 00574227    mov         dl,byte ptr [eax+18];TOutlineNode.FState:Boolean
 0057422A    xor         dl,1
 0057422D    mov         eax,dword ptr [ebp-8]
 00574230    call        00572208
 00574235    pop         ecx
 00574236    pop         ecx
 00574237    pop         ebp
 00574238    ret
*}
end;

//0057423C
{*function sub_0057423C(?:TCustomOutline):?;
begin
 0057423C    push        ebp
 0057423D    mov         ebp,esp
 0057423F    add         esp,0FFFFFFF4
 00574242    mov         dword ptr [ebp-4],eax
 00574245    mov         byte ptr [ebp-5],0
 00574249    mov         eax,dword ptr [ebp-4]
 0057424C    cmp         byte ptr [eax+298],0;TCustomOutline.FBlockInsert:Boolean
>00574253    jne         005742EC
 00574259    mov         eax,dword ptr [ebp-4]
 0057425C    mov         eax,dword ptr [eax+24C];TCustomOutline.FRowCount:Longint
 00574262    mov         dword ptr [ebp-0C],eax
 00574265    mov         eax,dword ptr [ebp-4]
 00574268    mov         byte ptr [eax+2F9],1;TCustomOutline.FSettingHeight:Boolean
 0057426F    xor         eax,eax
 00574271    push        ebp
 00574272    push        5742A9
 00574277    push        dword ptr fs:[eax]
 0057427A    mov         dword ptr fs:[eax],esp
 0057427D    mov         eax,dword ptr [ebp-4]
 00574280    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00574286    mov         edx,dword ptr [eax+20];TOutlineNode.FExpandCount:Longint
 00574289    mov         eax,dword ptr [ebp-4]
 0057428C    call        TDrawGrid.SetRowCount
 00574291    xor         eax,eax
 00574293    pop         edx
 00574294    pop         ecx
 00574295    pop         ecx
 00574296    mov         dword ptr fs:[eax],edx
 00574299    push        5742B0
 0057429E    mov         eax,dword ptr [ebp-4]
 005742A1    mov         byte ptr [eax+2F9],0;TCustomOutline.FSettingHeight:Boolean
 005742A8    ret
>005742A9    jmp         @HandleFinally
>005742AE    jmp         0057429E
 005742B0    mov         eax,dword ptr [ebp-4]
 005742B3    mov         eax,dword ptr [eax+24C];TCustomOutline.FRowCount:Longint
 005742B9    cmp         eax,dword ptr [ebp-0C]
 005742BC    setne       byte ptr [ebp-5]
 005742C0    mov         eax,dword ptr [ebp-4]
 005742C3    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 005742C9    mov         edx,dword ptr [ebp-4]
 005742CC    cmp         eax,dword ptr [edx+29C];TCustomOutline.FRootNode:TOutlineNode
>005742D2    je          005742EC
 005742D4    mov         eax,dword ptr [ebp-4]
 005742D7    mov         eax,dword ptr [eax+2EC];TCustomOutline.FSelectedItem:TOutlineNode
 005742DD    call        00571BC8
 005742E2    mov         edx,eax
 005742E4    mov         eax,dword ptr [ebp-4]
 005742E7    call        005737CC
 005742EC    mov         al,byte ptr [ebp-5]
 005742EF    mov         esp,ebp
 005742F1    pop         ebp
 005742F2    ret
end;*}

//005742F4
{*function sub_005742F4(?:TCustomOutline; ?:TOutlineNode):?;
begin
 005742F4    push        ebp
 005742F5    mov         ebp,esp
 005742F7    add         esp,0FFFFFFF4
 005742FA    mov         dword ptr [ebp-8],edx
 005742FD    mov         dword ptr [ebp-4],eax
 00574300    mov         eax,dword ptr [ebp-4]
 00574303    mov         ecx,dword ptr [eax+2A0];TCustomOutline.FGoodNode:TOutlineNode
 00574309    mov         edx,dword ptr [ebp-8]
 0057430C    mov         eax,dword ptr [ebp-4]
 0057430F    call        00574400
 00574314    cmp         al,2
 00574316    sete        byte ptr [ebp-9]
 0057431A    mov         al,byte ptr [ebp-9]
 0057431D    mov         esp,ebp
 0057431F    pop         ebp
 00574320    ret
end;*}

//00574324
{*function sub_00574324(?:TCustomOutline; ?:TOutlineNode):?;
begin
 00574324    push        ebp
 00574325    mov         ebp,esp
 00574327    add         esp,0FFFFFFE8
 0057432A    mov         dword ptr [ebp-8],edx
 0057432D    mov         dword ptr [ebp-4],eax
 00574330    mov         ecx,dword ptr [ebp-8]
 00574333    mov         eax,dword ptr [ebp-4]
 00574336    mov         edx,dword ptr [eax+2A0];TCustomOutline.FGoodNode:TOutlineNode
 0057433C    mov         eax,dword ptr [ebp-4]
 0057433F    call        00574400
 00574344    mov         byte ptr [ebp-15],al
 00574347    mov         al,byte ptr [ebp-15]
 0057434A    sub         al,2
>0057434C    jb          00574356
>0057434E    je          00574364
 00574350    dec         al
>00574352    je          0057439F
>00574354    jmp         005743AD
 00574356    mov         eax,dword ptr [ebp-4]
 00574359    mov         eax,dword ptr [eax+2A0];TCustomOutline.FGoodNode:TOutlineNode
 0057435F    mov         dword ptr [ebp-0C],eax
>00574362    jmp         005743B9
 00574364    mov         eax,dword ptr [ebp-8]
 00574367    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 0057436A    mov         dword ptr [ebp-10],eax
 0057436D    mov         eax,dword ptr [ebp-10]
 00574370    call        00571A80
 00574375    mov         edx,dword ptr [ebp-8]
 00574378    call        TList.IndexOf
 0057437D    mov         dword ptr [ebp-14],eax
 00574380    cmp         dword ptr [ebp-14],0
>00574384    je          00574397
 00574386    mov         edx,dword ptr [ebp-14]
 00574389    dec         edx
 0057438A    mov         eax,dword ptr [ebp-10]
 0057438D    call        00571AB4
 00574392    mov         dword ptr [ebp-0C],eax
>00574395    jmp         005743B9
 00574397    mov         eax,dword ptr [ebp-10]
 0057439A    mov         dword ptr [ebp-0C],eax
>0057439D    jmp         005743B9
 0057439F    mov         eax,dword ptr [ebp-4]
 005743A2    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005743A8    mov         dword ptr [ebp-0C],eax
>005743AB    jmp         005743B9
 005743AD    mov         eax,dword ptr [ebp-4]
 005743B0    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 005743B6    mov         dword ptr [ebp-0C],eax
 005743B9    mov         eax,dword ptr [ebp-0C]
 005743BC    mov         edx,dword ptr [ebp-4]
 005743BF    mov         dword ptr [edx+2A0],eax;TCustomOutline.FGoodNode:TOutlineNode
 005743C5    mov         eax,dword ptr [ebp-0C]
 005743C8    mov         esp,ebp
 005743CA    pop         ebp
 005743CB    ret
end;*}

//005743CC
{*function sub_005743CC(?:TOutlineNode; ?:?):?;
begin
 005743CC    push        ebp
 005743CD    mov         ebp,esp
 005743CF    add         esp,0FFFFFFF4
 005743D2    mov         dword ptr [ebp-8],edx
 005743D5    mov         dword ptr [ebp-4],eax
 005743D8    cmp         dword ptr [ebp-8],0
>005743DC    jle         005743F0
 005743DE    mov         eax,dword ptr [ebp-4]
 005743E1    mov         eax,dword ptr [eax+10]
 005743E4    mov         dword ptr [ebp-4],eax
 005743E7    dec         dword ptr [ebp-8]
 005743EA    cmp         dword ptr [ebp-8],0
>005743EE    jg          005743DE
 005743F0    mov         eax,dword ptr [ebp-4]
 005743F3    mov         dword ptr [ebp-0C],eax
 005743F6    mov         eax,dword ptr [ebp-0C]
 005743F9    mov         esp,ebp
 005743FB    pop         ebp
 005743FC    ret
end;*}

//00574400
{*function sub_00574400(?:TCustomOutline; ?:TOutlineNode; ?:TOutlineNode):?;
begin
 00574400    push        ebp
 00574401    mov         ebp,esp
 00574403    add         esp,0FFFFFFD4
 00574406    mov         dword ptr [ebp-0C],ecx
 00574409    mov         dword ptr [ebp-8],edx
 0057440C    mov         dword ptr [ebp-4],eax
 0057440F    mov         eax,dword ptr [ebp-8]
 00574412    cmp         eax,dword ptr [ebp-0C]
>00574415    jne         00574420
 00574417    mov         byte ptr [ebp-0D],1
>0057441B    jmp         00574513
 00574420    mov         eax,dword ptr [ebp-8]
 00574423    mov         dword ptr [ebp-24],eax
 00574426    mov         eax,dword ptr [ebp-0C]
 00574429    mov         dword ptr [ebp-28],eax
 0057442C    mov         eax,dword ptr [ebp-8]
 0057442F    call        00571BFC
 00574434    mov         dword ptr [ebp-14],eax
 00574437    mov         eax,dword ptr [ebp-0C]
 0057443A    call        00571BFC
 0057443F    mov         dword ptr [ebp-18],eax
 00574442    mov         eax,dword ptr [ebp-14]
 00574445    cmp         eax,dword ptr [ebp-18]
>00574448    jle         0057445F
 0057444A    push        ebp
 0057444B    mov         edx,dword ptr [ebp-14]
 0057444E    sub         edx,dword ptr [ebp-18]
 00574451    mov         eax,dword ptr [ebp-8]
 00574454    call        005743CC
 00574459    pop         ecx
 0057445A    mov         dword ptr [ebp-24],eax
>0057445D    jmp         0057448E
 0057445F    mov         eax,dword ptr [ebp-18]
 00574462    cmp         eax,dword ptr [ebp-14]
>00574465    jle         0057448E
 00574467    push        ebp
 00574468    mov         edx,dword ptr [ebp-18]
 0057446B    sub         edx,dword ptr [ebp-14]
 0057446E    mov         eax,dword ptr [ebp-0C]
 00574471    call        005743CC
 00574476    pop         ecx
 00574477    mov         dword ptr [ebp-28],eax
>0057447A    jmp         0057448E
 0057447C    mov         eax,dword ptr [ebp-24]
 0057447F    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00574482    mov         dword ptr [ebp-24],eax
 00574485    mov         eax,dword ptr [ebp-28]
 00574488    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 0057448B    mov         dword ptr [ebp-28],eax
 0057448E    mov         eax,dword ptr [ebp-24]
 00574491    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 00574494    mov         edx,dword ptr [ebp-28]
 00574497    cmp         eax,dword ptr [edx+10];TOutlineNode.FParent:TOutlineNode
>0057449A    jne         0057447C
 0057449C    mov         eax,dword ptr [ebp-24]
 0057449F    mov         eax,dword ptr [eax+10];TOutlineNode.FParent:TOutlineNode
 005744A2    mov         dword ptr [ebp-2C],eax
 005744A5    cmp         dword ptr [ebp-2C],0
>005744A9    je          0057450F
 005744AB    mov         eax,dword ptr [ebp-2C]
 005744AE    call        00571A80
 005744B3    mov         edx,dword ptr [ebp-24]
 005744B6    call        TList.IndexOf
 005744BB    mov         dword ptr [ebp-1C],eax
 005744BE    mov         eax,dword ptr [ebp-2C]
 005744C1    call        00571A80
 005744C6    mov         edx,dword ptr [ebp-28]
 005744C9    call        TList.IndexOf
 005744CE    mov         dword ptr [ebp-20],eax
 005744D1    mov         eax,dword ptr [ebp-1C]
 005744D4    cmp         eax,dword ptr [ebp-20]
>005744D7    jge         005744DF
 005744D9    mov         byte ptr [ebp-0D],0
>005744DD    jmp         00574513
 005744DF    mov         eax,dword ptr [ebp-20]
 005744E2    cmp         eax,dword ptr [ebp-1C]
>005744E5    jge         005744ED
 005744E7    mov         byte ptr [ebp-0D],2
>005744EB    jmp         00574513
 005744ED    mov         eax,dword ptr [ebp-14]
 005744F0    cmp         eax,dword ptr [ebp-18]
>005744F3    jle         005744FB
 005744F5    mov         byte ptr [ebp-0D],2
>005744F9    jmp         00574513
 005744FB    mov         eax,dword ptr [ebp-14]
 005744FE    cmp         eax,dword ptr [ebp-18]
>00574501    jne         00574509
 00574503    mov         byte ptr [ebp-0D],1
>00574507    jmp         00574513
 00574509    mov         byte ptr [ebp-0D],0
>0057450D    jmp         00574513
 0057450F    mov         byte ptr [ebp-0D],3
 00574513    mov         al,byte ptr [ebp-0D]
 00574516    mov         esp,ebp
 00574518    pop         ebp
 00574519    ret
end;*}

//0057451C
{*procedure sub_0057451C(?:TCustomOutline; ?:?);
begin
 0057451C    push        ebp
 0057451D    mov         ebp,esp
 0057451F    add         esp,0FFFFFFF0
 00574522    push        ebx
 00574523    push        esi
 00574524    push        edi
 00574525    xor         ecx,ecx
 00574527    mov         dword ptr [ebp-10],ecx
 0057452A    mov         dword ptr [ebp-0C],ecx
 0057452D    mov         dword ptr [ebp-8],edx
 00574530    mov         dword ptr [ebp-4],eax
 00574533    xor         eax,eax
 00574535    push        ebp
 00574536    push        5745E9
 0057453B    push        dword ptr fs:[eax]
 0057453E    mov         dword ptr fs:[eax],esp
 00574541    cmp         dword ptr [ebp-8],0
>00574545    jge         0057455F
 00574547    lea         edx,[ebp-0C]
 0057454A    mov         eax,[006E9ED0];^gvar_0063CBB0
 0057454F    call        LoadResString
 00574554    mov         edx,dword ptr [ebp-0C]
 00574557    mov         eax,dword ptr [ebp-4]
 0057455A    call        00575CA4
 0057455F    mov         edx,dword ptr [ebp-8]
 00574562    mov         eax,dword ptr [ebp-4]
 00574565    call        005733A8
 0057456A    test        al,al
>0057456C    jne         005745CE
 0057456E    xor         eax,eax
 00574570    push        ebp
 00574571    push        5745A0
 00574576    push        dword ptr fs:[eax]
 00574579    mov         dword ptr fs:[eax],esp
 0057457C    mov         eax,dword ptr [ebp-4]
 0057457F    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00574585    mov         edx,dword ptr [ebp-8]
 00574588    call        0057210C
 0057458D    mov         edx,dword ptr [ebp-4]
 00574590    mov         dword ptr [edx+2A8],eax;TCustomOutline.FCurItem:TOutlineNode
 00574596    xor         eax,eax
 00574598    pop         edx
 00574599    pop         ecx
 0057459A    pop         ecx
 0057459B    mov         dword ptr fs:[eax],edx
>0057459E    jmp         005745CE
>005745A0    jmp         @HandleOnException
 005745A5    dd          1
 005745A9    dd          00570A54;OutlineError
 005745AD    dd          005745B1
 005745B1    lea         edx,[ebp-10]
 005745B4    mov         eax,[006E9EC8];^gvar_0063CBA0
 005745B9    call        LoadResString
 005745BE    mov         edx,dword ptr [ebp-10]
 005745C1    mov         eax,dword ptr [ebp-4]
 005745C4    call        00575CA4
 005745C9    call        @DoneExcept
 005745CE    xor         eax,eax
 005745D0    pop         edx
 005745D1    pop         ecx
 005745D2    pop         ecx
 005745D3    mov         dword ptr fs:[eax],edx
 005745D6    push        5745F0
 005745DB    lea         eax,[ebp-10]
 005745DE    mov         edx,2
 005745E3    call        @LStrArrayClr
 005745E8    ret
>005745E9    jmp         @HandleFinally
>005745EE    jmp         005745DB
 005745F0    pop         edi
 005745F1    pop         esi
 005745F2    pop         ebx
 005745F3    mov         esp,ebp
 005745F5    pop         ebp
 005745F6    ret
end;*}

//005745F8
procedure TOutline.SetOutlineStyle(Value:TOutlineStyle);
begin
{*
 005745F8    push        ebp
 005745F9    mov         ebp,esp
 005745FB    add         esp,0FFFFFFF8
 005745FE    mov         byte ptr [ebp-5],dl
 00574601    mov         dword ptr [ebp-4],eax
 00574604    mov         eax,dword ptr [ebp-4]
 00574607    mov         al,byte ptr [eax+2E0];TOutline.FOutlineStyle:TOutlineStyle
 0057460D    cmp         al,byte ptr [ebp-5]
>00574610    je          0057462E
 00574612    mov         al,byte ptr [ebp-5]
 00574615    mov         edx,dword ptr [ebp-4]
 00574618    mov         byte ptr [edx+2E0],al;TOutline.FOutlineStyle:TOutlineStyle
 0057461E    mov         eax,dword ptr [ebp-4]
 00574621    call        005741B0
 00574626    mov         eax,dword ptr [ebp-4]
 00574629    mov         edx,dword ptr [eax]
 0057462B    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057462E    pop         ecx
 0057462F    pop         ecx
 00574630    pop         ebp
 00574631    ret
*}
end;

//00574634
{*procedure TCustomOutline.CMFontChanged(?:?);
begin
 00574634    push        ebp
 00574635    mov         ebp,esp
 00574637    add         esp,0FFFFFFF8
 0057463A    mov         dword ptr [ebp-8],edx
 0057463D    mov         dword ptr [ebp-4],eax
 00574640    mov         edx,dword ptr [ebp-8]
 00574643    mov         eax,dword ptr [ebp-4]
 00574646    call        TCustomGrid.CMFontChanged
 0057464B    mov         eax,dword ptr [ebp-4]
 0057464E    call        005731AC
 00574653    mov         eax,dword ptr [ebp-4]
 00574656    call        005741B0
 0057465B    pop         ecx
 0057465C    pop         ecx
 0057465D    pop         ebp
 0057465E    ret
end;*}

//00574660
{*procedure sub_00574660(?:TCustomOutline; ?:?);
begin
 00574660    push        ebp
 00574661    mov         ebp,esp
 00574663    add         esp,0FFFFFFF8
 00574666    mov         dword ptr [ebp-8],edx
 00574669    mov         dword ptr [ebp-4],eax
 0057466C    mov         eax,dword ptr [ebp-4]
 0057466F    mov         byte ptr [eax+2F8],1;TCustomOutline.FSettingWidth:Boolean
 00574676    xor         eax,eax
 00574678    push        ebp
 00574679    push        5746B5
 0057467E    push        dword ptr fs:[eax]
 00574681    mov         dword ptr fs:[eax],esp
 00574684    mov         eax,dword ptr [ebp-4]
 00574687    mov         eax,dword ptr [eax+230];TCustomOutline.FDefaultColWidth:Integer
 0057468D    cmp         eax,dword ptr [ebp-8]
>00574690    je          0057469D
 00574692    mov         edx,dword ptr [ebp-8]
 00574695    mov         eax,dword ptr [ebp-4]
 00574698    call        TValueListEditor.SetDefaultColWidth
 0057469D    xor         eax,eax
 0057469F    pop         edx
 005746A0    pop         ecx
 005746A1    pop         ecx
 005746A2    mov         dword ptr fs:[eax],edx
 005746A5    push        5746BC
 005746AA    mov         eax,dword ptr [ebp-4]
 005746AD    mov         byte ptr [eax+2F8],0;TCustomOutline.FSettingWidth:Boolean
 005746B4    ret
>005746B5    jmp         @HandleFinally
>005746BA    jmp         005746AA
 005746BC    pop         ecx
 005746BD    pop         ecx
 005746BE    pop         ebp
 005746BF    ret
end;*}

//005746C0
{*function sub_005746C0(?:?; ?:?):?;
begin
 005746C0    push        ebp
 005746C1    mov         ebp,esp
 005746C3    add         esp,0FFFFFFE8
 005746C6    mov         dword ptr [ebp-8],edx
 005746C9    mov         dword ptr [ebp-4],eax
 005746CC    xor         eax,eax
 005746CE    mov         dword ptr [ebp-0C],eax
 005746D1    mov         eax,dword ptr [ebp-4]
 005746D4    mov         eax,dword ptr [eax+234]
 005746DA    mov         edx,dword ptr [ebp-4]
 005746DD    sub         eax,dword ptr [edx+2B0]
 005746E3    sar         eax,1
>005746E5    jns         005746EA
 005746E7    adc         eax,0
 005746EA    mov         dword ptr [ebp-10],eax
 005746ED    mov         eax,dword ptr [ebp-4]
 005746F0    mov         eax,dword ptr [eax+208]
 005746F6    mov         dword ptr [ebp-18],eax
 005746F9    mov         eax,dword ptr [ebp-4]
 005746FC    mov         edx,dword ptr [eax+68]
 005746FF    mov         eax,dword ptr [ebp-18]
 00574702    call        TCanvas.SetFont
 00574707    mov         eax,dword ptr [ebp-8]
 0057470A    mov         edx,dword ptr [eax+8]
 0057470D    mov         eax,dword ptr [ebp-18]
 00574710    call        005C1754
 00574715    inc         eax
 00574716    mov         dword ptr [ebp-14],eax
 00574719    mov         eax,dword ptr [ebp-4]
 0057471C    movzx       eax,byte ptr [eax+2E0]
 00574723    cmp         eax,5
>00574726    ja          005747F3
 0057472C    jmp         dword ptr [eax*4+574733]
 0057472C    dd          0057474B
 0057472C    dd          0057477C
 0057472C    dd          0057477C
 0057472C    dd          00574765
 0057472C    dd          00574792
 0057472C    dd          005747C4
 0057474B    mov         eax,dword ptr [ebp-8]
 0057474E    call        00571BFC
 00574753    dec         eax
 00574754    mov         edx,dword ptr [ebp-4]
 00574757    imul        dword ptr [edx+234]
 0057475D    add         dword ptr [ebp-0C],eax
>00574760    jmp         005747F3
 00574765    mov         eax,dword ptr [ebp-8]
 00574768    call        00571BFC
 0057476D    inc         eax
 0057476E    mov         edx,dword ptr [ebp-4]
 00574771    imul        dword ptr [edx+234]
 00574777    add         dword ptr [ebp-0C],eax
>0057477A    jmp         005747F3
 0057477C    mov         eax,dword ptr [ebp-8]
 0057477F    call        00571BFC
 00574784    mov         edx,dword ptr [ebp-4]
 00574787    imul        dword ptr [edx+234]
 0057478D    add         dword ptr [ebp-0C],eax
>00574790    jmp         005747F3
 00574792    mov         eax,dword ptr [ebp-8]
 00574795    call        00571BFC
 0057479A    dec         eax
 0057479B    mov         edx,dword ptr [ebp-4]
 0057479E    imul        dword ptr [edx+234]
 005747A4    sub         eax,dword ptr [ebp-10]
 005747A7    add         dword ptr [ebp-0C],eax
 005747AA    mov         eax,dword ptr [ebp-4]
 005747AD    test        byte ptr [eax+2E9],1
>005747B4    je          005747F3
 005747B6    mov         eax,dword ptr [ebp-4]
 005747B9    mov         eax,dword ptr [eax+234]
 005747BF    add         dword ptr [ebp-0C],eax
>005747C2    jmp         005747F3
 005747C4    mov         eax,dword ptr [ebp-8]
 005747C7    call        00571BFC
 005747CC    mov         edx,dword ptr [ebp-4]
 005747CF    imul        dword ptr [edx+234]
 005747D5    sub         eax,dword ptr [ebp-10]
 005747D8    add         dword ptr [ebp-0C],eax
 005747DB    mov         eax,dword ptr [ebp-4]
 005747DE    test        byte ptr [eax+2E9],1
>005747E5    je          005747F3
 005747E7    mov         eax,dword ptr [ebp-4]
 005747EA    mov         eax,dword ptr [eax+234]
 005747F0    add         dword ptr [ebp-0C],eax
 005747F3    mov         eax,dword ptr [ebp-14]
 005747F6    add         dword ptr [ebp-0C],eax
 005747F9    cmp         dword ptr [ebp-0C],0
>005747FD    jge         00574804
 005747FF    xor         eax,eax
 00574801    mov         dword ptr [ebp-0C],eax
 00574804    mov         eax,dword ptr [ebp-0C]
 00574807    mov         esp,ebp
 00574809    pop         ebp
 0057480A    ret
end;*}

//0057480C
{*function sub_0057480C(?:TCustomOutline; ?:?):?;
begin
 0057480C    push        ebp
 0057480D    mov         ebp,esp
 0057480F    add         esp,0FFFFFFF4
 00574812    mov         dword ptr [ebp-8],edx
 00574815    mov         dword ptr [ebp-4],eax
 00574818    mov         edx,dword ptr [ebp-8]
 0057481B    inc         edx
 0057481C    mov         eax,dword ptr [ebp-4]
 0057481F    mov         eax,dword ptr [eax+29C]
 00574825    call        00571F34
 0057482A    mov         dword ptr [ebp-0C],eax
 0057482D    mov         eax,dword ptr [ebp-0C]
 00574830    mov         esp,ebp
 00574832    pop         ebp
 00574833    ret
end;*}

//00574834
{*function sub_00574834(?:?; ?:?):?;
begin
 00574834    push        ebp
 00574835    mov         ebp,esp
 00574837    add         esp,0FFFFFFF8
 0057483A    mov         byte ptr [ebp-1],al
 0057483D    xor         eax,eax
 0057483F    mov         al,byte ptr [ebp-1]
 00574842    mov         edx,dword ptr [ebp+8]
 00574845    mov         edx,dword ptr [edx-4]
 00574848    mov         eax,dword ptr [edx+eax*4+2BC]
 0057484F    mov         dword ptr [ebp-8],eax
 00574852    mov         eax,dword ptr [ebp-8]
 00574855    pop         ecx
 00574856    pop         ecx
 00574857    pop         ebp
 00574858    ret
end;*}

//0057485C
procedure DrawFocusCell;
begin
{*
 0057485C    push        ebp
 0057485D    mov         ebp,esp
 0057485F    mov         eax,dword ptr [ebp+8]
 00574862    mov         eax,dword ptr [eax-8]
 00574865    mov         edx,dword ptr [ebp+8]
 00574868    add         dword ptr [edx-10],eax
 0057486B    mov         eax,dword ptr [ebp+8]
 0057486E    mov         eax,dword ptr [eax-4]
 00574871    mov         eax,dword ptr [eax+22C]
 00574877    mov         edx,dword ptr [ebp+8]
 0057487A    cmp         eax,dword ptr [edx-1C]
>0057487D    jne         005748A2
 0057487F    mov         eax,dword ptr [ebp+8]
 00574882    mov         eax,dword ptr [eax-20]
 00574885    cmp         dword ptr [eax+8],0
>00574889    je          005748A2
 0057488B    mov         eax,dword ptr [ebp+8]
 0057488E    lea         edx,[eax-18]
 00574891    mov         eax,dword ptr [ebp+8]
 00574894    mov         eax,dword ptr [eax-4]
 00574897    mov         eax,dword ptr [eax+208]
 0057489D    call        TCanvas.FillRect
 005748A2    pop         ebp
 005748A3    ret
*}
end;

//005748A4
procedure DrawTheText;
begin
{*
 005748A4    push        ebp
 005748A5    mov         ebp,esp
 005748A7    mov         eax,dword ptr [ebp+8]
 005748AA    mov         eax,dword ptr [eax-4]
 005748AD    mov         eax,dword ptr [eax+234]
 005748B3    mov         edx,dword ptr [ebp+8]
 005748B6    movzx       edx,word ptr [edx-22]
 005748BA    dec         edx
 005748BB    imul        edx
 005748BD    mov         edx,dword ptr [ebp+8]
 005748C0    add         dword ptr [edx-18],eax
 005748C3    mov         eax,dword ptr [ebp+8]
 005748C6    mov         eax,dword ptr [eax-18]
 005748C9    mov         edx,dword ptr [ebp+8]
 005748CC    mov         dword ptr [edx-10],eax
 005748CF    mov         eax,dword ptr [ebp+8]
 005748D2    push        eax
 005748D3    call        DrawFocusCell
 005748D8    pop         ecx
 005748D9    mov         eax,dword ptr [ebp+8]
 005748DC    lea         ecx,[eax-18]
 005748DF    mov         eax,dword ptr [ebp+8]
 005748E2    mov         edx,dword ptr [eax-20]
 005748E5    mov         eax,dword ptr [ebp+8]
 005748E8    mov         eax,dword ptr [eax-4]
 005748EB    call        TCustomOutline.DrawText
 005748F0    pop         ebp
 005748F1    ret
*}
end;

//005748F4
{*procedure sub_005748F4(?:?);
begin
 005748F4    push        ebp
 005748F5    mov         ebp,esp
 005748F7    add         esp,0FFFFFFF8
 005748FA    mov         eax,dword ptr [ebp+8]
 005748FD    mov         eax,dword ptr [eax-4]
 00574900    mov         eax,dword ptr [eax+234]
 00574906    mov         edx,dword ptr [ebp+8]
 00574909    movzx       edx,word ptr [edx-22]
 0057490D    dec         edx
 0057490E    imul        edx
 00574910    mov         edx,dword ptr [ebp+8]
 00574913    add         dword ptr [edx-18],eax
 00574916    mov         eax,dword ptr [ebp+8]
 00574919    cmp         byte ptr [eax-23],0
>0057491D    je          00574974
 0057491F    mov         eax,dword ptr [ebp+8]
 00574922    cmp         byte ptr [eax-24],0
>00574926    je          0057494E
 00574928    mov         eax,dword ptr [ebp+8]
 0057492B    push        eax
 0057492C    mov         al,1
 0057492E    call        00574834
 00574933    pop         ecx
 00574934    mov         edx,dword ptr [ebp+8]
 00574937    mov         dword ptr [edx-28],eax
 0057493A    mov         eax,dword ptr [ebp+8]
 0057493D    push        eax
 0057493E    mov         al,2
 00574940    call        00574834
 00574945    pop         ecx
 00574946    mov         edx,dword ptr [ebp+8]
 00574949    mov         dword ptr [edx-2C],eax
>0057494C    jmp         0057498E
 0057494E    mov         eax,dword ptr [ebp+8]
 00574951    push        eax
 00574952    xor         eax,eax
 00574954    call        00574834
 00574959    pop         ecx
 0057495A    mov         edx,dword ptr [ebp+8]
 0057495D    mov         dword ptr [edx-28],eax
 00574960    mov         eax,dword ptr [ebp+8]
 00574963    push        eax
 00574964    mov         al,3
 00574966    call        00574834
 0057496B    pop         ecx
 0057496C    mov         edx,dword ptr [ebp+8]
 0057496F    mov         dword ptr [edx-2C],eax
>00574972    jmp         0057498E
 00574974    mov         eax,dword ptr [ebp+8]
 00574977    xor         edx,edx
 00574979    mov         dword ptr [eax-28],edx
 0057497C    mov         eax,dword ptr [ebp+8]
 0057497F    push        eax
 00574980    mov         al,4
 00574982    call        00574834
 00574987    pop         ecx
 00574988    mov         edx,dword ptr [ebp+8]
 0057498B    mov         dword ptr [edx-2C],eax
 0057498E    mov         eax,dword ptr [ebp+8]
 00574991    mov         eax,dword ptr [eax-4]
 00574994    mov         eax,dword ptr [eax+234]
 0057499A    add         eax,eax
 0057499C    mov         edx,dword ptr [ebp+8]
 0057499F    add         dword ptr [edx-18],eax
 005749A2    mov         eax,dword ptr [ebp+8]
 005749A5    mov         eax,dword ptr [eax-18]
 005749A8    mov         edx,dword ptr [ebp+8]
 005749AB    mov         dword ptr [edx-10],eax
 005749AE    mov         eax,dword ptr [ebp+8]
 005749B1    push        eax
 005749B2    call        DrawFocusCell
 005749B7    pop         ecx
 005749B8    mov         eax,dword ptr [ebp+8]
 005749BB    lea         ecx,[eax-18]
 005749BE    mov         eax,dword ptr [ebp+8]
 005749C1    mov         edx,dword ptr [eax-20]
 005749C4    mov         eax,dword ptr [ebp+8]
 005749C7    mov         eax,dword ptr [eax-4]
 005749CA    call        TCustomOutline.DrawText
 005749CF    mov         eax,dword ptr [ebp+8]
 005749D2    mov         eax,dword ptr [eax-4]
 005749D5    mov         eax,dword ptr [eax+234]
 005749DB    add         eax,eax
 005749DD    mov         edx,dword ptr [ebp+8]
 005749E0    sub         dword ptr [edx-18],eax
 005749E3    mov         eax,dword ptr [ebp+8]
 005749E6    add         eax,0FFFFFFE8
 005749E9    push        eax
 005749EA    mov         eax,dword ptr [ebp+8]
 005749ED    mov         eax,dword ptr [eax-28]
 005749F0    mov         dword ptr [ebp-8],eax
 005749F3    mov         eax,dword ptr [ebp+8]
 005749F6    mov         eax,dword ptr [eax-2C]
 005749F9    mov         dword ptr [ebp-4],eax
 005749FC    lea         edx,[ebp-8]
 005749FF    mov         eax,dword ptr [ebp+8]
 00574A02    mov         eax,dword ptr [eax-4]
 00574A05    mov         ecx,1
 00574A0A    call        0057532C
 00574A0F    pop         ecx
 00574A10    pop         ecx
 00574A11    pop         ebp
 00574A12    ret
end;*}

//00574A14
{*procedure sub_00574A14(?:?);
begin
 00574A14    push        ebp
 00574A15    mov         ebp,esp
 00574A17    add         esp,0FFFFFFF8
 00574A1A    mov         eax,dword ptr [ebp+8]
 00574A1D    mov         eax,dword ptr [eax-4]
 00574A20    mov         eax,dword ptr [eax+234]
 00574A26    mov         edx,dword ptr [ebp+8]
 00574A29    movzx       edx,word ptr [edx-22]
 00574A2D    dec         edx
 00574A2E    imul        edx
 00574A30    mov         edx,dword ptr [ebp+8]
 00574A33    add         dword ptr [edx-18],eax
 00574A36    mov         eax,dword ptr [ebp+8]
 00574A39    cmp         byte ptr [eax-23],0
>00574A3D    je          00574A54
 00574A3F    mov         eax,dword ptr [ebp+8]
 00574A42    cmp         byte ptr [eax-24],0
>00574A46    je          00574A4E
 00574A48    mov         byte ptr [ebp-1],2
>00574A4C    jmp         00574A58
 00574A4E    mov         byte ptr [ebp-1],3
>00574A52    jmp         00574A58
 00574A54    mov         byte ptr [ebp-1],4
 00574A58    mov         eax,dword ptr [ebp+8]
 00574A5B    push        eax
 00574A5C    mov         al,byte ptr [ebp-1]
 00574A5F    call        00574834
 00574A64    pop         ecx
 00574A65    mov         edx,dword ptr [ebp+8]
 00574A68    mov         dword ptr [edx-28],eax
 00574A6B    mov         eax,dword ptr [ebp+8]
 00574A6E    mov         eax,dword ptr [eax-4]
 00574A71    mov         eax,dword ptr [eax+234]
 00574A77    mov         edx,dword ptr [ebp+8]
 00574A7A    add         dword ptr [edx-18],eax
 00574A7D    mov         eax,dword ptr [ebp+8]
 00574A80    mov         eax,dword ptr [eax-18]
 00574A83    mov         edx,dword ptr [ebp+8]
 00574A86    mov         dword ptr [edx-10],eax
 00574A89    mov         eax,dword ptr [ebp+8]
 00574A8C    push        eax
 00574A8D    call        DrawFocusCell
 00574A92    pop         ecx
 00574A93    mov         eax,dword ptr [ebp+8]
 00574A96    lea         ecx,[eax-18]
 00574A99    mov         eax,dword ptr [ebp+8]
 00574A9C    mov         edx,dword ptr [eax-20]
 00574A9F    mov         eax,dword ptr [ebp+8]
 00574AA2    mov         eax,dword ptr [eax-4]
 00574AA5    call        TCustomOutline.DrawText
 00574AAA    mov         eax,dword ptr [ebp+8]
 00574AAD    mov         eax,dword ptr [eax-4]
 00574AB0    mov         eax,dword ptr [eax+234]
 00574AB6    mov         edx,dword ptr [ebp+8]
 00574AB9    sub         dword ptr [edx-18],eax
 00574ABC    mov         eax,dword ptr [ebp+8]
 00574ABF    add         eax,0FFFFFFE8
 00574AC2    push        eax
 00574AC3    mov         eax,dword ptr [ebp+8]
 00574AC6    mov         eax,dword ptr [eax-28]
 00574AC9    mov         dword ptr [ebp-8],eax
 00574ACC    lea         edx,[ebp-8]
 00574ACF    mov         eax,dword ptr [ebp+8]
 00574AD2    mov         eax,dword ptr [eax-4]
 00574AD5    xor         ecx,ecx
 00574AD7    call        0057532C
 00574ADC    pop         ecx
 00574ADD    pop         ecx
 00574ADE    pop         ebp
 00574ADF    ret
end;*}

//00574AE0
{*procedure sub_00574AE0(?:?);
begin
 00574AE0    push        ebp
 00574AE1    mov         ebp,esp
 00574AE3    add         esp,0FFFFFFF8
 00574AE6    mov         eax,dword ptr [ebp+8]
 00574AE9    mov         eax,dword ptr [eax-4]
 00574AEC    mov         eax,dword ptr [eax+234]
 00574AF2    mov         edx,dword ptr [ebp+8]
 00574AF5    movzx       edx,word ptr [edx-22]
 00574AF9    imul        edx
 00574AFB    mov         edx,dword ptr [ebp+8]
 00574AFE    add         dword ptr [edx-18],eax
 00574B01    mov         eax,dword ptr [ebp+8]
 00574B04    mov         eax,dword ptr [eax-18]
 00574B07    mov         edx,dword ptr [ebp+8]
 00574B0A    mov         dword ptr [edx-10],eax
 00574B0D    mov         eax,dword ptr [ebp+8]
 00574B10    push        eax
 00574B11    call        DrawFocusCell
 00574B16    pop         ecx
 00574B17    mov         eax,dword ptr [ebp+8]
 00574B1A    lea         ecx,[eax-18]
 00574B1D    mov         eax,dword ptr [ebp+8]
 00574B20    mov         edx,dword ptr [eax-20]
 00574B23    mov         eax,dword ptr [ebp+8]
 00574B26    mov         eax,dword ptr [eax-4]
 00574B29    call        TCustomOutline.DrawText
 00574B2E    mov         eax,dword ptr [ebp+8]
 00574B31    cmp         byte ptr [eax-23],0
>00574B35    je          00574B8F
 00574B37    mov         eax,dword ptr [ebp+8]
 00574B3A    cmp         byte ptr [eax-24],0
>00574B3E    je          00574B46
 00574B40    mov         byte ptr [ebp-1],1
>00574B44    jmp         00574B4A
 00574B46    mov         byte ptr [ebp-1],0
 00574B4A    mov         eax,dword ptr [ebp+8]
 00574B4D    push        eax
 00574B4E    mov         al,byte ptr [ebp-1]
 00574B51    call        00574834
 00574B56    pop         ecx
 00574B57    mov         edx,dword ptr [ebp+8]
 00574B5A    mov         dword ptr [edx-28],eax
 00574B5D    mov         eax,dword ptr [ebp+8]
 00574B60    mov         eax,dword ptr [eax-4]
 00574B63    mov         eax,dword ptr [eax+234]
 00574B69    mov         edx,dword ptr [ebp+8]
 00574B6C    sub         dword ptr [edx-18],eax
 00574B6F    mov         eax,dword ptr [ebp+8]
 00574B72    add         eax,0FFFFFFE8
 00574B75    push        eax
 00574B76    mov         eax,dword ptr [ebp+8]
 00574B79    mov         eax,dword ptr [eax-28]
 00574B7C    mov         dword ptr [ebp-8],eax
 00574B7F    lea         edx,[ebp-8]
 00574B82    mov         eax,dword ptr [ebp+8]
 00574B85    mov         eax,dword ptr [eax-4]
 00574B88    xor         ecx,ecx
 00574B8A    call        0057532C
 00574B8F    pop         ecx
 00574B90    pop         ecx
 00574B91    pop         ebp
 00574B92    ret
end;*}

//00574B94
{*procedure sub_00574B94(?:?);
begin
 00574B94    push        ebp
 00574B95    mov         ebp,esp
 00574B97    mov         eax,dword ptr [ebp+8]
 00574B9A    mov         ecx,dword ptr [eax-20]
 00574B9D    mov         eax,dword ptr [ebp+8]
 00574BA0    lea         edx,[eax-18]
 00574BA3    mov         eax,dword ptr [ebp+8]
 00574BA6    mov         eax,dword ptr [eax-4]
 00574BA9    call        00575094
 00574BAE    mov         eax,dword ptr [ebp+8]
 00574BB1    mov         eax,dword ptr [eax-4]
 00574BB4    mov         eax,dword ptr [eax+234]
 00574BBA    mov         edx,dword ptr [ebp+8]
 00574BBD    movzx       edx,word ptr [edx-22]
 00574BC1    dec         edx
 00574BC2    imul        edx
 00574BC4    mov         edx,dword ptr [ebp+8]
 00574BC7    sub         eax,dword ptr [edx-30]
 00574BCA    mov         edx,dword ptr [ebp+8]
 00574BCD    add         dword ptr [edx-18],eax
 00574BD0    mov         eax,dword ptr [ebp+8]
 00574BD3    mov         eax,dword ptr [eax-4]
 00574BD6    test        byte ptr [eax+2E9],1
>00574BDD    je          00574BF1
 00574BDF    mov         eax,dword ptr [ebp+8]
 00574BE2    mov         eax,dword ptr [eax-4]
 00574BE5    mov         eax,dword ptr [eax+234]
 00574BEB    mov         edx,dword ptr [ebp+8]
 00574BEE    add         dword ptr [edx-18],eax
 00574BF1    mov         eax,dword ptr [ebp+8]
 00574BF4    mov         eax,dword ptr [eax-18]
 00574BF7    mov         edx,dword ptr [ebp+8]
 00574BFA    add         eax,dword ptr [edx-30]
 00574BFD    mov         edx,dword ptr [ebp+8]
 00574C00    mov         dword ptr [edx-10],eax
 00574C03    mov         eax,dword ptr [ebp+8]
 00574C06    push        eax
 00574C07    call        DrawFocusCell
 00574C0C    pop         ecx
 00574C0D    mov         eax,dword ptr [ebp+8]
 00574C10    mov         eax,dword ptr [eax-30]
 00574C13    mov         edx,dword ptr [ebp+8]
 00574C16    add         dword ptr [edx-18],eax
 00574C19    mov         eax,dword ptr [ebp+8]
 00574C1C    lea         ecx,[eax-18]
 00574C1F    mov         eax,dword ptr [ebp+8]
 00574C22    mov         edx,dword ptr [eax-20]
 00574C25    mov         eax,dword ptr [ebp+8]
 00574C28    mov         eax,dword ptr [eax-4]
 00574C2B    call        TCustomOutline.DrawText
 00574C30    pop         ebp
 00574C31    ret
end;*}

//00574C34
{*procedure sub_00574C34(?:?);
begin
 00574C34    push        ebp
 00574C35    mov         ebp,esp
 00574C37    add         esp,0FFFFFFF8
 00574C3A    mov         eax,dword ptr [ebp+8]
 00574C3D    mov         ecx,dword ptr [eax-20]
 00574C40    mov         eax,dword ptr [ebp+8]
 00574C43    lea         edx,[eax-18]
 00574C46    mov         eax,dword ptr [ebp+8]
 00574C49    mov         eax,dword ptr [eax-4]
 00574C4C    call        00575094
 00574C51    mov         eax,dword ptr [ebp+8]
 00574C54    mov         eax,dword ptr [eax-4]
 00574C57    mov         eax,dword ptr [eax+234]
 00574C5D    mov         edx,dword ptr [ebp+8]
 00574C60    movzx       edx,word ptr [edx-22]
 00574C64    dec         edx
 00574C65    imul        edx
 00574C67    mov         edx,dword ptr [ebp+8]
 00574C6A    sub         eax,dword ptr [edx-30]
 00574C6D    mov         edx,dword ptr [ebp+8]
 00574C70    add         dword ptr [edx-18],eax
 00574C73    mov         eax,dword ptr [ebp+8]
 00574C76    mov         eax,dword ptr [eax-4]
 00574C79    test        byte ptr [eax+2E9],1
>00574C80    je          00574C94
 00574C82    mov         eax,dword ptr [ebp+8]
 00574C85    mov         eax,dword ptr [eax-4]
 00574C88    mov         eax,dword ptr [eax+234]
 00574C8E    mov         edx,dword ptr [ebp+8]
 00574C91    add         dword ptr [edx-18],eax
 00574C94    mov         eax,dword ptr [ebp+8]
 00574C97    mov         eax,dword ptr [eax-4]
 00574C9A    mov         eax,dword ptr [eax+234]
 00574CA0    mov         edx,dword ptr [ebp+8]
 00574CA3    add         dword ptr [edx-18],eax
 00574CA6    mov         eax,dword ptr [ebp+8]
 00574CA9    mov         eax,dword ptr [eax-18]
 00574CAC    mov         edx,dword ptr [ebp+8]
 00574CAF    add         eax,dword ptr [edx-30]
 00574CB2    mov         edx,dword ptr [ebp+8]
 00574CB5    mov         dword ptr [edx-10],eax
 00574CB8    mov         eax,dword ptr [ebp+8]
 00574CBB    push        eax
 00574CBC    call        DrawFocusCell
 00574CC1    pop         ecx
 00574CC2    mov         eax,dword ptr [ebp+8]
 00574CC5    lea         ecx,[eax-18]
 00574CC8    mov         eax,dword ptr [ebp+8]
 00574CCB    mov         edx,dword ptr [eax-20]
 00574CCE    mov         eax,dword ptr [ebp+8]
 00574CD1    mov         eax,dword ptr [eax-4]
 00574CD4    call        TCustomOutline.DrawText
 00574CD9    mov         eax,dword ptr [ebp+8]
 00574CDC    mov         eax,dword ptr [eax-4]
 00574CDF    mov         eax,dword ptr [eax+234]
 00574CE5    mov         edx,dword ptr [ebp+8]
 00574CE8    sub         eax,dword ptr [edx-30]
 00574CEB    mov         edx,dword ptr [ebp+8]
 00574CEE    sub         dword ptr [edx-18],eax
 00574CF1    mov         eax,dword ptr [ebp+8]
 00574CF4    cmp         byte ptr [eax-23],0
>00574CF8    je          00574D0F
 00574CFA    mov         eax,dword ptr [ebp+8]
 00574CFD    cmp         byte ptr [eax-24],0
>00574D01    je          00574D09
 00574D03    mov         byte ptr [ebp-1],2
>00574D07    jmp         00574D13
 00574D09    mov         byte ptr [ebp-1],3
>00574D0D    jmp         00574D13
 00574D0F    mov         byte ptr [ebp-1],4
 00574D13    mov         eax,dword ptr [ebp+8]
 00574D16    push        eax
 00574D17    mov         al,byte ptr [ebp-1]
 00574D1A    call        00574834
 00574D1F    pop         ecx
 00574D20    mov         edx,dword ptr [ebp+8]
 00574D23    mov         dword ptr [edx-28],eax
 00574D26    mov         eax,dword ptr [ebp+8]
 00574D29    add         eax,0FFFFFFE8
 00574D2C    push        eax
 00574D2D    mov         eax,dword ptr [ebp+8]
 00574D30    mov         eax,dword ptr [eax-28]
 00574D33    mov         dword ptr [ebp-8],eax
 00574D36    lea         edx,[ebp-8]
 00574D39    mov         eax,dword ptr [ebp+8]
 00574D3C    mov         eax,dword ptr [eax-4]
 00574D3F    xor         ecx,ecx
 00574D41    call        0057532C
 00574D46    pop         ecx
 00574D47    pop         ecx
 00574D48    pop         ebp
 00574D49    ret
end;*}

//00574D4C
{*procedure TCustomOutline.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?);
begin
 00574D4C    push        ebp
 00574D4D    mov         ebp,esp
 00574D4F    add         esp,0FFFFFFC0
 00574D52    push        ebx
 00574D53    push        esi
 00574D54    push        edi
 00574D55    mov         esi,dword ptr [ebp+0C]
 00574D58    lea         edi,[ebp-18]
 00574D5B    movs        dword ptr [edi],dword ptr [esi]
 00574D5C    movs        dword ptr [edi],dword ptr [esi]
 00574D5D    movs        dword ptr [edi],dword ptr [esi]
 00574D5E    movs        dword ptr [edi],dword ptr [esi]
 00574D5F    mov         dword ptr [ebp-1C],ecx
 00574D62    mov         dword ptr [ebp-40],edx
 00574D65    mov         dword ptr [ebp-4],eax
 00574D68    mov         eax,dword ptr [ebp-4]
 00574D6B    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00574D71    call        00571A80
 00574D76    cmp         dword ptr [eax+8],0
>00574D7A    jne         00574DA9
 00574D7C    mov         eax,dword ptr [ebp-4]
 00574D7F    mov         eax,dword ptr [eax+208];TCustomOutline.....................................................
 00574D85    mov         dword ptr [ebp-38],eax
 00574D88    mov         eax,dword ptr [ebp-4]
 00574D8B    mov         edx,dword ptr [eax+70];TCustomOutline.FColor:TColor
 00574D8E    mov         eax,dword ptr [ebp-38]
 00574D91    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00574D94    call        TBrush.SetColor
 00574D99    lea         edx,[ebp-18]
 00574D9C    mov         eax,dword ptr [ebp-38]
 00574D9F    call        TCanvas.FillRect
>00574DA4    jmp         0057507D
 00574DA9    mov         eax,dword ptr [ebp-4]
 00574DAC    cmp         byte ptr [eax+2E8],1;TCustomOutline.FStyle:TOutlineType
>00574DB3    jne         00574E86
 00574DB9    mov         eax,dword ptr [ebp-4]
 00574DBC    cmp         word ptr [eax+2F2],0;TCustomOutline.?f2F2:word
>00574DC4    je          00574E86
 00574DCA    mov         eax,dword ptr [ebp-4]
 00574DCD    mov         eax,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 00574DD3    cmp         eax,dword ptr [ebp-1C]
>00574DD6    jne         00574E61
 00574DDC    mov         eax,dword ptr [ebp-4]
 00574DDF    call        TWinControl.GetHandle
 00574DE4    mov         ebx,eax
 00574DE6    call        USER32.GetFocus
 00574DEB    cmp         ebx,eax
>00574DED    jne         00574E3C
 00574DEF    lea         eax,[ebp-18]
 00574DF2    push        eax
 00574DF3    mov         ax,[00575088];0x11 gvar_00575088
 00574DF9    push        eax
 00574DFA    mov         ebx,dword ptr [ebp-4]
 00574DFD    mov         ecx,dword ptr [ebp-1C]
 00574E00    mov         edx,dword ptr [ebp-4]
 00574E03    mov         eax,dword ptr [ebx+2F4];TCustomOutline.?f2F4:dword
 00574E09    call        dword ptr [ebx+2F0];TCustomOutline.FOnDrawItem
 00574E0F    mov         eax,dword ptr [ebp-4]
 00574E12    test        byte ptr [eax+2E9],2;TCustomOutline.FOptions:TOutlineOptions
>00574E19    je          0057507D
 00574E1F    lea         eax,[ebp-18]
 00574E22    push        eax
 00574E23    mov         eax,dword ptr [ebp-4]
 00574E26    mov         eax,dword ptr [eax+208];TCustomOutline.....................................................
 00574E2C    call        TCanvas.GetHandle
 00574E31    push        eax
 00574E32    call        USER32.DrawFocusRect
>00574E37    jmp         0057507D
 00574E3C    lea         eax,[ebp-18]
 00574E3F    push        eax
 00574E40    mov         ax,[0057508C];0x1 gvar_0057508C
 00574E46    push        eax
 00574E47    mov         ebx,dword ptr [ebp-4]
 00574E4A    mov         ecx,dword ptr [ebp-1C]
 00574E4D    mov         edx,dword ptr [ebp-4]
 00574E50    mov         eax,dword ptr [ebx+2F4];TCustomOutline.?f2F4:dword
 00574E56    call        dword ptr [ebx+2F0];TCustomOutline.FOnDrawItem
>00574E5C    jmp         0057507D
 00574E61    lea         eax,[ebp-18]
 00574E64    push        eax
 00574E65    mov         ax,[00575090];0x0 gvar_00575090
 00574E6B    push        eax
 00574E6C    mov         ebx,dword ptr [ebp-4]
 00574E6F    mov         ecx,dword ptr [ebp-1C]
 00574E72    mov         edx,dword ptr [ebp-4]
 00574E75    mov         eax,dword ptr [ebx+2F4];TCustomOutline.?f2F4:dword
 00574E7B    call        dword ptr [ebx+2F0];TCustomOutline.FOnDrawItem
>00574E81    jmp         0057507D
 00574E86    mov         eax,dword ptr [ebp-18]
 00574E89    mov         dword ptr [ebp-34],eax
 00574E8C    mov         edx,dword ptr [ebp-1C]
 00574E8F    mov         eax,dword ptr [ebp-4]
 00574E92    call        0057480C
 00574E97    mov         dword ptr [ebp-20],eax
 00574E9A    mov         eax,dword ptr [ebp-0C]
 00574E9D    sub         eax,dword ptr [ebp-14]
 00574EA0    mov         edx,dword ptr [ebp-4]
 00574EA3    sub         eax,dword ptr [edx+2B0]
 00574EA9    sar         eax,1
>00574EAB    jns         00574EB0
 00574EAD    adc         eax,0
 00574EB0    mov         dword ptr [ebp-30],eax
 00574EB3    mov         eax,dword ptr [ebp-4]
 00574EB6    mov         eax,dword ptr [eax+208];TCustomOutline.....................................................
 00574EBC    mov         dword ptr [ebp-3C],eax
 00574EBF    mov         eax,dword ptr [ebp-4]
 00574EC2    mov         edx,dword ptr [eax+68];TCustomOutline.FFont:TFont
 00574EC5    mov         eax,dword ptr [ebp-3C]
 00574EC8    call        TCanvas.SetFont
 00574ECD    mov         eax,dword ptr [ebp-4]
 00574ED0    mov         edx,dword ptr [eax+70];TCustomOutline.FColor:TColor
 00574ED3    mov         eax,dword ptr [ebp-3C]
 00574ED6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00574ED9    call        TBrush.SetColor
 00574EDE    lea         edx,[ebp-18]
 00574EE1    mov         eax,dword ptr [ebp-3C]
 00574EE4    call        TCanvas.FillRect
 00574EE9    mov         eax,dword ptr [ebp-20]
 00574EEC    mov         edx,dword ptr [eax+8]
 00574EEF    mov         eax,dword ptr [ebp-3C]
 00574EF2    call        005C1754
 00574EF7    inc         eax
 00574EF8    mov         dword ptr [ebp-8],eax
 00574EFB    mov         eax,dword ptr [ebp-4]
 00574EFE    mov         eax,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 00574F04    cmp         eax,dword ptr [ebp-1C]
>00574F07    jne         00574F29
 00574F09    mov         edx,8000000D
 00574F0E    mov         eax,dword ptr [ebp-3C]
 00574F11    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00574F14    call        TBrush.SetColor
 00574F19    mov         edx,8000000E
 00574F1E    mov         eax,dword ptr [ebp-3C]
 00574F21    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00574F24    call        TFont.SetColor
 00574F29    mov         eax,dword ptr [ebp-20]
 00574F2C    mov         al,byte ptr [eax+18]
 00574F2F    mov         byte ptr [ebp-24],al
 00574F32    mov         eax,dword ptr [ebp-20]
 00574F35    call        005727C4
 00574F3A    mov         byte ptr [ebp-23],al
 00574F3D    mov         eax,dword ptr [ebp-20]
 00574F40    call        00571BFC
 00574F45    mov         word ptr [ebp-22],ax
 00574F49    mov         eax,dword ptr [ebp-4]
 00574F4C    movzx       eax,byte ptr [eax+2E0];TCustomOutline.FOutlineStyle:TOutlineStyle
 00574F53    cmp         eax,5
>00574F56    ja          00574FAB
 00574F58    jmp         dword ptr [eax*4+574F5F]
 00574F58    dd          00574F77
 00574F58    dd          00574F80
 00574F58    dd          00574F92
 00574F58    dd          00574F89
 00574F58    dd          00574F9B
 00574F58    dd          00574FA4
 00574F77    push        ebp
 00574F78    call        DrawTheText
 00574F7D    pop         ecx
>00574F7E    jmp         00574FAB
 00574F80    push        ebp
 00574F81    call        00574AE0
 00574F86    pop         ecx
>00574F87    jmp         00574FAB
 00574F89    push        ebp
 00574F8A    call        005748F4
 00574F8F    pop         ecx
>00574F90    jmp         00574FAB
 00574F92    push        ebp
 00574F93    call        00574A14
 00574F98    pop         ecx
>00574F99    jmp         00574FAB
 00574F9B    push        ebp
 00574F9C    call        00574B94
 00574FA1    pop         ecx
>00574FA2    jmp         00574FAB
 00574FA4    push        ebp
 00574FA5    call        00574C34
 00574FAA    pop         ecx
 00574FAB    mov         eax,dword ptr [ebp-4]
 00574FAE    mov         eax,dword ptr [eax+22C];TCustomOutline.FCurrent:Longint
 00574FB4    cmp         eax,dword ptr [ebp-1C]
>00574FB7    jne         0057507D
 00574FBD    mov         eax,dword ptr [ebp-20]
 00574FC0    cmp         dword ptr [eax+8],0
>00574FC4    je          0057507D
 00574FCA    mov         eax,dword ptr [ebp-4]
 00574FCD    mov         eax,dword ptr [eax+234];TCustomOutline.FDefaultRowHeight:Integer
 00574FD3    movzx       edx,word ptr [ebp-22]
 00574FD7    dec         edx
 00574FD8    imul        edx
 00574FDA    add         eax,dword ptr [ebp-34]
 00574FDD    mov         dword ptr [ebp-18],eax
 00574FE0    mov         eax,dword ptr [ebp-4]
 00574FE3    cmp         byte ptr [eax+2E0],4;TCustomOutline.FOutlineStyle:TOutlineStyle
>00574FEA    jb          0057500A
 00574FEC    mov         eax,dword ptr [ebp-30]
 00574FEF    sub         dword ptr [ebp-18],eax
 00574FF2    mov         eax,dword ptr [ebp-4]
 00574FF5    test        byte ptr [eax+2E9],1;TCustomOutline.FOptions:TOutlineOptions
>00574FFC    je          0057500A
 00574FFE    mov         eax,dword ptr [ebp-4]
 00575001    mov         eax,dword ptr [eax+234];TCustomOutline.FDefaultRowHeight:Integer
 00575007    add         dword ptr [ebp-18],eax
 0057500A    mov         eax,dword ptr [ebp-4]
 0057500D    cmp         byte ptr [eax+2E0],0;TCustomOutline.FOutlineStyle:TOutlineStyle
>00575014    je          0057502E
 00575016    mov         eax,dword ptr [ebp-4]
 00575019    cmp         byte ptr [eax+2E0],4;TCustomOutline.FOutlineStyle:TOutlineStyle
>00575020    je          0057502E
 00575022    mov         eax,dword ptr [ebp-4]
 00575025    mov         eax,dword ptr [eax+234];TCustomOutline.FDefaultRowHeight:Integer
 0057502B    add         dword ptr [ebp-18],eax
 0057502E    mov         eax,dword ptr [ebp-4]
 00575031    cmp         byte ptr [eax+2E0],3;TCustomOutline.FOutlineStyle:TOutlineStyle
>00575038    jne         00575046
 0057503A    mov         eax,dword ptr [ebp-4]
 0057503D    mov         eax,dword ptr [eax+234];TCustomOutline.FDefaultRowHeight:Integer
 00575043    add         dword ptr [ebp-18],eax
 00575046    mov         eax,dword ptr [ebp-4]
 00575049    call        TWinControl.GetHandle
 0057504E    mov         ebx,eax
 00575050    call        USER32.GetFocus
 00575055    cmp         ebx,eax
>00575057    jne         0057507D
 00575059    mov         eax,dword ptr [ebp-4]
 0057505C    test        byte ptr [eax+2E9],2;TCustomOutline.FOptions:TOutlineOptions
>00575063    je          0057507D
 00575065    lea         eax,[ebp-18]
 00575068    push        eax
 00575069    mov         eax,dword ptr [ebp-4]
 0057506C    mov         eax,dword ptr [eax+208];TCustomOutline.....................................................
 00575072    call        TCanvas.GetHandle
 00575077    push        eax
 00575078    call        USER32.DrawFocusRect
 0057507D    pop         edi
 0057507E    pop         esi
 0057507F    pop         ebx
 00575080    mov         esp,ebp
 00575082    pop         ebp
 00575083    ret         8
end;*}

//00575094
{*procedure sub_00575094(?:?; ?:?; ?:?);
begin
 00575094    push        ebp
 00575095    mov         ebp,esp
 00575097    add         esp,0FFFFFFC8
 0057509A    push        ebx
 0057509B    push        esi
 0057509C    push        edi
 0057509D    mov         esi,edx
 0057509F    lea         edi,[ebp-38]
 005750A2    movs        dword ptr [edi],dword ptr [esi]
 005750A3    movs        dword ptr [edi],dword ptr [esi]
 005750A4    movs        dword ptr [edi],dword ptr [esi]
 005750A5    movs        dword ptr [edi],dword ptr [esi]
 005750A6    mov         dword ptr [ebp-8],ecx
 005750A9    mov         dword ptr [ebp-4],eax
 005750AC    mov         eax,dword ptr [ebp-4]
 005750AF    mov         eax,dword ptr [eax+234]
 005750B5    sar         eax,1
>005750B7    jns         005750BC
 005750B9    adc         eax,0
 005750BC    mov         word ptr [ebp-0A],ax
 005750C0    mov         ax,word ptr [ebp-2C]
 005750C4    mov         word ptr [ebp-0C],ax
 005750C8    mov         eax,dword ptr [ebp-8]
 005750CB    call        00571BFC
 005750D0    mov         dword ptr [ebp-1C],eax
 005750D3    mov         eax,dword ptr [ebp-1C]
 005750D6    sub         eax,3
 005750D9    mov         dword ptr [ebp-14],eax
 005750DC    mov         eax,dword ptr [ebp-4]
 005750DF    test        byte ptr [eax+2E9],1
>005750E6    je          005750EB
 005750E8    inc         dword ptr [ebp-14]
 005750EB    mov         dl,1
 005750ED    mov         eax,[005BE614];TPen
 005750F2    call        TPen.Create;TPen.Create
 005750F7    mov         dword ptr [ebp-10],eax
 005750FA    xor         eax,eax
 005750FC    push        ebp
 005750FD    push        57531C
 00575102    push        dword ptr fs:[eax]
 00575105    mov         dword ptr fs:[eax],esp
 00575108    mov         eax,dword ptr [ebp-4]
 0057510B    mov         eax,dword ptr [eax+208]
 00575111    mov         edx,dword ptr [eax+10]
 00575114    mov         eax,dword ptr [ebp-10]
 00575117    mov         ecx,dword ptr [eax]
 00575119    call        dword ptr [ecx+8];TPen.Assign
 0057511C    mov         eax,dword ptr [ebp-4]
 0057511F    mov         eax,dword ptr [eax+208]
 00575125    mov         dword ptr [ebp-20],eax
 00575128    mov         eax,dword ptr [ebp-20]
 0057512B    mov         eax,dword ptr [eax+10]
 0057512E    xor         edx,edx
 00575130    call        TPen.SetColor
 00575135    mov         eax,dword ptr [ebp-20]
 00575138    mov         eax,dword ptr [eax+10]
 0057513B    mov         edx,1
 00575140    call        TPen.SetWidth
 00575145    xor         eax,eax
 00575147    push        ebp
 00575148    push        5752FD
 0057514D    push        dword ptr fs:[eax]
 00575150    mov         dword ptr fs:[eax],esp
 00575153    mov         eax,dword ptr [ebp-8]
 00575156    mov         eax,dword ptr [eax+10]
 00575159    mov         dword ptr [ebp-18],eax
>0057515C    jmp         005751E7
 00575161    mov         eax,dword ptr [ebp-18]
 00575164    mov         eax,dword ptr [eax+10]
 00575167    mov         dword ptr [ebp-24],eax
 0057516A    mov         eax,dword ptr [ebp-24]
 0057516D    call        00571A80
 00575172    mov         edx,dword ptr [ebp-18]
 00575175    call        TList.IndexOf
 0057517A    mov         ebx,eax
 0057517C    mov         eax,dword ptr [ebp-24]
 0057517F    call        00571A80
 00575184    mov         eax,dword ptr [eax+8]
 00575187    dec         eax
 00575188    cmp         ebx,eax
>0057518A    jge         005751DB
 0057518C    mov         eax,dword ptr [ebp-4]
 0057518F    mov         edx,dword ptr [eax+234]
 00575195    imul        edx,dword ptr [ebp-14]
 00575199    add         edx,dword ptr [ebp-38]
 0057519C    movzx       eax,word ptr [ebp-0A]
 005751A0    add         edx,eax
 005751A2    mov         eax,dword ptr [ebp-4]
 005751A5    mov         eax,dword ptr [eax+208]
 005751AB    mov         ecx,dword ptr [ebp-34]
 005751AE    call        005C12F0
 005751B3    mov         eax,dword ptr [ebp-4]
 005751B6    mov         edx,dword ptr [eax+234]
 005751BC    imul        edx,dword ptr [ebp-14]
 005751C0    add         edx,dword ptr [ebp-38]
 005751C3    movzx       eax,word ptr [ebp-0A]
 005751C7    add         edx,eax
 005751C9    movzx       ecx,word ptr [ebp-0C]
 005751CD    mov         eax,dword ptr [ebp-4]
 005751D0    mov         eax,dword ptr [eax+208]
 005751D6    call        005C1274
 005751DB    mov         eax,dword ptr [ebp-18]
 005751DE    mov         eax,dword ptr [eax+10]
 005751E1    mov         dword ptr [ebp-18],eax
 005751E4    dec         dword ptr [ebp-14]
 005751E7    mov         eax,dword ptr [ebp-18]
 005751EA    cmp         dword ptr [eax+10],0
>005751EE    je          00575210
 005751F0    mov         eax,dword ptr [ebp-4]
 005751F3    test        byte ptr [eax+2E9],1
>005751FA    jne         00575161
 00575200    mov         eax,dword ptr [ebp-18]
 00575203    mov         eax,dword ptr [eax+10]
 00575206    cmp         dword ptr [eax+10],0
>0057520A    jne         00575161
 00575210    mov         eax,dword ptr [ebp-8]
 00575213    mov         eax,dword ptr [eax+10]
 00575216    mov         dword ptr [ebp-28],eax
 00575219    mov         eax,dword ptr [ebp-28]
 0057521C    call        00571A80
 00575221    mov         edx,dword ptr [ebp-8]
 00575224    call        TList.IndexOf
 00575229    mov         ebx,eax
 0057522B    mov         eax,dword ptr [ebp-28]
 0057522E    call        00571A80
 00575233    mov         eax,dword ptr [eax+8]
 00575236    dec         eax
 00575237    cmp         ebx,eax
>00575239    jne         00575247
 0057523B    mov         ax,word ptr [ebp-34]
 0057523F    add         ax,word ptr [ebp-0A]
 00575243    mov         word ptr [ebp-0C],ax
 00575247    mov         eax,dword ptr [ebp-4]
 0057524A    test        byte ptr [eax+2E9],1
>00575251    jne         0057525D
 00575253    cmp         dword ptr [ebp-1C],1
>00575257    jle         005752E1
 0057525D    mov         eax,dword ptr [ebp-4]
 00575260    test        byte ptr [eax+2E9],1
>00575267    jne         0057526C
 00575269    dec         dword ptr [ebp-1C]
 0057526C    mov         eax,dword ptr [ebp-4]
 0057526F    mov         eax,dword ptr [eax+234]
 00575275    mov         edx,dword ptr [ebp-1C]
 00575278    dec         edx
 00575279    imul        edx
 0057527B    add         dword ptr [ebp-38],eax
 0057527E    movzx       edx,word ptr [ebp-0A]
 00575282    add         edx,dword ptr [ebp-38]
 00575285    mov         ecx,dword ptr [ebp-34]
 00575288    mov         eax,dword ptr [ebp-20]
 0057528B    call        005C12F0
 00575290    movzx       ecx,word ptr [ebp-0C]
 00575294    movzx       edx,word ptr [ebp-0A]
 00575298    add         edx,dword ptr [ebp-38]
 0057529B    mov         eax,dword ptr [ebp-20]
 0057529E    call        005C1274
 005752A3    movzx       ecx,word ptr [ebp-0A]
 005752A7    add         ecx,dword ptr [ebp-34]
 005752AA    movzx       edx,word ptr [ebp-0A]
 005752AE    add         edx,dword ptr [ebp-38]
 005752B1    mov         eax,dword ptr [ebp-20]
 005752B4    call        005C12F0
 005752B9    movzx       edx,word ptr [ebp-0A]
 005752BD    add         edx,dword ptr [ebp-38]
 005752C0    mov         eax,dword ptr [ebp-4]
 005752C3    mov         eax,dword ptr [eax+2B0]
 005752C9    sar         eax,1
>005752CB    jns         005752D0
 005752CD    adc         eax,0
 005752D0    add         edx,eax
 005752D2    movzx       ecx,word ptr [ebp-0A]
 005752D6    add         ecx,dword ptr [ebp-34]
 005752D9    mov         eax,dword ptr [ebp-20]
 005752DC    call        005C1274
 005752E1    xor         eax,eax
 005752E3    pop         edx
 005752E4    pop         ecx
 005752E5    pop         ecx
 005752E6    mov         dword ptr fs:[eax],edx
 005752E9    push        575304
 005752EE    mov         eax,dword ptr [ebp-20]
 005752F1    mov         eax,dword ptr [eax+10]
 005752F4    mov         edx,dword ptr [ebp-10]
 005752F7    mov         ecx,dword ptr [eax]
 005752F9    call        dword ptr [ecx+8]
 005752FC    ret
>005752FD    jmp         @HandleFinally
>00575302    jmp         005752EE
 00575304    xor         eax,eax
 00575306    pop         edx
 00575307    pop         ecx
 00575308    pop         ecx
 00575309    mov         dword ptr fs:[eax],edx
 0057530C    push        575323
 00575311    mov         dl,1
 00575313    mov         eax,dword ptr [ebp-10]
 00575316    mov         ecx,dword ptr [eax]
 00575318    call        dword ptr [ecx-4];TPen.Destroy
 0057531B    ret
>0057531C    jmp         @HandleFinally
>00575321    jmp         00575311
 00575323    pop         edi
 00575324    pop         esi
 00575325    pop         ebx
 00575326    mov         esp,ebp
 00575328    pop         ebp
 00575329    ret
end;*}

//0057532C
{*procedure sub_0057532C(?:?; ?:?; ?:?; ?:?);
begin
 0057532C    push        ebp
 0057532D    mov         ebp,esp
 0057532F    add         esp,0FFFFFFA8
 00575332    push        ebx
 00575333    push        esi
 00575334    push        edi
 00575335    mov         esi,dword ptr [ebp+8]
 00575338    lea         edi,[ebp-36]
 0057533B    movs        dword ptr [edi],dword ptr [esi]
 0057533C    movs        dword ptr [edi],dword ptr [esi]
 0057533D    movs        dword ptr [edi],dword ptr [esi]
 0057533E    movs        dword ptr [edi],dword ptr [esi]
 0057533F    mov         ebx,ecx
 00575341    test        ebx,ebx
>00575343    js          0057534C
 00575345    mov         esi,dword ptr [edx+ebx*4]
 00575348    dec         ebx
 00575349    push        esi
>0057534A    jns         00575345
 0057534C    mov         edx,esp
 0057534E    mov         dword ptr [ebp-0C],ecx
 00575351    mov         dword ptr [ebp-8],edx
 00575354    mov         dword ptr [ebp-4],eax
 00575357    mov         eax,dword ptr [ebp-4]
 0057535A    mov         eax,dword ptr [eax+208]
 00575360    mov         eax,dword ptr [eax+14]
 00575363    call        TBrush.GetColor
 00575368    mov         dword ptr [ebp-24],eax
 0057536B    mov         eax,dword ptr [ebp-4]
 0057536E    mov         eax,dword ptr [eax+208]
 00575374    mov         eax,dword ptr [eax+14]
 00575377    mov         edx,dword ptr [ebp-4]
 0057537A    mov         edx,dword ptr [edx+70]
 0057537D    call        TBrush.SetColor
 00575382    mov         eax,dword ptr [ebp-4]
 00575385    mov         eax,dword ptr [eax+234]
 0057538B    mov         edx,dword ptr [ebp-4]
 0057538E    sub         eax,dword ptr [edx+2B0]
 00575394    sar         eax,1
>00575396    jns         0057539B
 00575398    adc         eax,0
 0057539B    mov         word ptr [ebp-16],ax
 0057539F    movzx       eax,word ptr [ebp-16]
 005753A3    add         eax,dword ptr [ebp-32]
 005753A6    mov         dword ptr [ebp-42],eax
 005753A9    mov         eax,dword ptr [ebp-42]
 005753AC    mov         edx,dword ptr [ebp-4]
 005753AF    add         eax,dword ptr [edx+2B0]
 005753B5    mov         dword ptr [ebp-3A],eax
 005753B8    mov         ax,word ptr [ebp-0C]
 005753BC    test        ax,ax
>005753BF    jb          0057553C
 005753C5    inc         eax
 005753C6    mov         word ptr [ebp-26],ax
 005753CA    mov         word ptr [ebp-0E],0
 005753D0    movzx       eax,word ptr [ebp-0E]
 005753D4    mov         edx,dword ptr [ebp-8]
 005753D7    mov         eax,dword ptr [edx+eax*4]
 005753DA    mov         dword ptr [ebp-14],eax
 005753DD    movzx       eax,word ptr [ebp-16]
 005753E1    add         eax,dword ptr [ebp-36]
 005753E4    dec         eax
 005753E5    mov         dword ptr [ebp-46],eax
 005753E8    mov         eax,dword ptr [ebp-46]
 005753EB    mov         edx,dword ptr [ebp-4]
 005753EE    add         eax,dword ptr [edx+2B0]
 005753F4    mov         dword ptr [ebp-3E],eax
 005753F7    mov         eax,dword ptr [ebp-4]
 005753FA    mov         eax,dword ptr [eax+234]
 00575400    add         dword ptr [ebp-36],eax
 00575403    cmp         dword ptr [ebp-14],0
>00575407    je          0057552E
 0057540D    mov         eax,dword ptr [ebp-4]
 00575410    test        byte ptr [eax+2E9],4
>00575417    jne         005754ED
 0057541D    mov         eax,dword ptr [ebp-14]
 00575420    mov         edx,dword ptr [eax]
 00575422    call        dword ptr [edx+20]
 00575425    add         eax,dword ptr [ebp-42]
 00575428    cmp         eax,dword ptr [ebp-3A]
>0057542B    jge         0057543B
 0057542D    mov         eax,dword ptr [ebp-14]
 00575430    mov         edx,dword ptr [eax]
 00575432    call        dword ptr [edx+20]
 00575435    add         eax,dword ptr [ebp-42]
 00575438    mov         dword ptr [ebp-3A],eax
 0057543B    mov         eax,dword ptr [ebp-14]
 0057543E    mov         edx,dword ptr [eax]
 00575440    call        dword ptr [edx+2C]
 00575443    add         eax,dword ptr [ebp-46]
 00575446    cmp         eax,dword ptr [ebp-3E]
>00575449    jge         00575459
 0057544B    mov         eax,dword ptr [ebp-14]
 0057544E    mov         edx,dword ptr [eax]
 00575450    call        dword ptr [edx+2C]
 00575453    add         eax,dword ptr [ebp-46]
 00575456    mov         dword ptr [ebp-3E],eax
 00575459    mov         eax,dword ptr [ebp-3A]
 0057545C    sub         eax,dword ptr [ebp-42]
 0057545F    mov         edx,dword ptr [ebp-4]
 00575462    mov         edx,dword ptr [edx+2B0]
 00575468    sub         edx,eax
 0057546A    sar         edx,1
>0057546C    jns         00575471
 0057546E    adc         edx,0
 00575471    mov         dword ptr [ebp-1C],edx
 00575474    cmp         dword ptr [ebp-1C],0
>00575478    jle         005754B0
 0057547A    mov         eax,dword ptr [ebp-3A]
 0057547D    sub         eax,dword ptr [ebp-42]
 00575480    mov         edx,dword ptr [ebp-4]
 00575483    mov         edx,dword ptr [edx+234]
 00575489    sub         edx,eax
 0057548B    sar         edx,1
>0057548D    jns         00575492
 0057548F    adc         edx,0
 00575492    mov         dword ptr [ebp-1C],edx
 00575495    mov         eax,dword ptr [ebp-42]
 00575498    mov         dword ptr [ebp-20],eax
 0057549B    mov         eax,dword ptr [ebp-32]
 0057549E    add         eax,dword ptr [ebp-1C]
 005754A1    mov         dword ptr [ebp-42],eax
 005754A4    mov         eax,dword ptr [ebp-3A]
 005754A7    sub         eax,dword ptr [ebp-20]
 005754AA    add         eax,dword ptr [ebp-42]
 005754AD    mov         dword ptr [ebp-3A],eax
 005754B0    mov         eax,dword ptr [ebp-3A]
 005754B3    sub         eax,dword ptr [ebp-42]
 005754B6    push        eax
 005754B7    lea         eax,[ebp-58]
 005754BA    push        eax
 005754BB    mov         ecx,dword ptr [ebp-3E]
 005754BE    sub         ecx,dword ptr [ebp-46]
 005754C1    xor         edx,edx
 005754C3    xor         eax,eax
 005754C5    call        Bounds
 005754CA    lea         eax,[ebp-58]
 005754CD    push        eax
 005754CE    mov         eax,dword ptr [ebp-14]
 005754D1    call        005C7404
 005754D6    push        eax
 005754D7    lea         edx,[ebp-46]
 005754DA    mov         ecx,dword ptr [ebp-14]
 005754DD    mov         eax,dword ptr [ebp-4]
 005754E0    mov         eax,dword ptr [eax+208]
 005754E6    call        005C0CC4
>005754EB    jmp         0057552E
 005754ED    mov         eax,dword ptr [ebp-14]
 005754F0    mov         edx,dword ptr [eax]
 005754F2    call        dword ptr [edx+20]
 005754F5    push        eax
 005754F6    lea         eax,[ebp-58]
 005754F9    push        eax
 005754FA    mov         eax,dword ptr [ebp-14]
 005754FD    mov         edx,dword ptr [eax]
 005754FF    call        dword ptr [edx+2C]
 00575502    mov         ecx,eax
 00575504    xor         edx,edx
 00575506    xor         eax,eax
 00575508    call        Bounds
 0057550D    lea         eax,[ebp-58]
 00575510    push        eax
 00575511    mov         eax,dword ptr [ebp-14]
 00575514    call        005C7404
 00575519    push        eax
 0057551A    lea         edx,[ebp-46]
 0057551D    mov         ecx,dword ptr [ebp-14]
 00575520    mov         eax,dword ptr [ebp-4]
 00575523    mov         eax,dword ptr [eax+208]
 00575529    call        005C0CC4
 0057552E    inc         word ptr [ebp-0E]
 00575532    dec         word ptr [ebp-26]
>00575536    jne         005753D0
 0057553C    mov         eax,dword ptr [ebp-4]
 0057553F    mov         eax,dword ptr [eax+208]
 00575545    mov         eax,dword ptr [eax+14]
 00575548    mov         edx,dword ptr [ebp-24]
 0057554B    call        TBrush.SetColor
 00575550    mov         edi,dword ptr [ebp-64]
 00575553    mov         esi,dword ptr [ebp-60]
 00575556    mov         ebx,dword ptr [ebp-5C]
 00575559    mov         esp,ebp
 0057555B    pop         ebp
 0057555C    ret         4
end;*}

//00575560
procedure TCustomOutline.DrawText(Node:TOutlineNode; Rect:TRect);
begin
{*
 00575560    push        ebp
 00575561    mov         ebp,esp
 00575563    add         esp,0FFFFFFE8
 00575566    push        esi
 00575567    push        edi
 00575568    mov         esi,ecx
 0057556A    lea         edi,[ebp-18]
 0057556D    movs        dword ptr [edi],dword ptr [esi]
 0057556E    movs        dword ptr [edi],dword ptr [esi]
 0057556F    movs        dword ptr [edi],dword ptr [esi]
 00575570    movs        dword ptr [edi],dword ptr [esi]
 00575571    mov         dword ptr [ebp-8],edx
 00575574    mov         dword ptr [ebp-4],eax
 00575577    push        824
 0057557C    lea         eax,[ebp-18]
 0057557F    push        eax
 00575580    mov         eax,dword ptr [ebp-8]
 00575583    mov         eax,dword ptr [eax+8]
 00575586    call        @LStrLen
 0057558B    push        eax
 0057558C    mov         eax,dword ptr [ebp-8]
 0057558F    mov         eax,dword ptr [eax+8]
 00575592    call        @LStrToPChar
 00575597    push        eax
 00575598    mov         eax,dword ptr [ebp-4]
 0057559B    mov         eax,dword ptr [eax+208]
 005755A1    call        TCanvas.GetHandle
 005755A6    push        eax
 005755A7    call        USER32.DrawTextA
 005755AC    pop         edi
 005755AD    pop         esi
 005755AE    mov         esp,ebp
 005755B0    pop         ebp
 005755B1    ret
*}
end;

//005755B4
function TCDirectoryOutline.IsStoredPictureClosed(Value:TBitmap):Boolean;
begin
{*
 005755B4    push        ebp
 005755B5    mov         ebp,esp
 005755B7    add         esp,0FFFFFFF4
 005755BA    mov         dword ptr [ebp-8],edx
 005755BD    mov         dword ptr [ebp-4],eax
 005755C0    mov         al,byte ptr [ebp-8]
 005755C3    mov         edx,dword ptr [ebp-4]
 005755C6    cmp         al,7
>005755C8    ja          005755D4
 005755CA    and         eax,7F
 005755CD    bt          dword ptr [edx+2B8],eax;TCDirectoryOutline.FUserBitmaps:TOutlineBitmaps
 005755D4    setb        al
 005755D7    mov         byte ptr [ebp-9],al
 005755DA    mov         al,byte ptr [ebp-9]
 005755DD    mov         esp,ebp
 005755DF    pop         ebp
 005755E0    ret
*}
end;

//005755E4
{*procedure sub_005755E4(?:?; ?:Integer; ?:?);
begin
 005755E4    push        ebp
 005755E5    mov         ebp,esp
 005755E7    add         esp,0FFFFFFF4
 005755EA    mov         byte ptr [ebp-9],cl
 005755ED    mov         dword ptr [ebp-8],edx
 005755F0    mov         dword ptr [ebp-4],eax
 005755F3    mov         eax,dword ptr [ebp-8]
 005755F6    cmp         dword ptr [eax],0
>005755F9    je          0057560C
 005755FB    mov         eax,dword ptr [ebp-8]
 005755FE    mov         eax,dword ptr [eax]
 00575600    call        TObject.Free
 00575605    mov         eax,dword ptr [ebp-8]
 00575608    xor         edx,edx
 0057560A    mov         dword ptr [eax],edx
 0057560C    mov         esp,ebp
 0057560E    pop         ebp
 0057560F    ret
end;*}

//00575610
{*procedure sub_00575610(?:TCustomOutline; ?:?; ?:TBitmap);
begin
 00575610    push        ebp
 00575611    mov         ebp,esp
 00575613    add         esp,0FFFFFFF0
 00575616    mov         byte ptr [ebp-9],cl
 00575619    mov         dword ptr [ebp-8],edx
 0057561C    mov         dword ptr [ebp-4],eax
 0057561F    xor         eax,eax
 00575621    mov         al,byte ptr [ebp-9]
 00575624    mov         edx,dword ptr [ebp-4]
 00575627    lea         eax,[edx+eax*4+2BC]
 0057562E    mov         dword ptr [ebp-10],eax
 00575631    mov         al,byte ptr [ebp-9]
 00575634    mov         edx,dword ptr [ebp-4]
 00575637    cmp         al,7
>00575639    ja          00575645
 0057563B    and         eax,7F
 0057563E    bts         dword ptr [edx+2B8],eax
 00575645    cmp         dword ptr [ebp-8],0
>00575649    jne         0057565B
 0057564B    mov         edx,dword ptr [ebp-10]
 0057564E    mov         cl,byte ptr [ebp-9]
 00575651    mov         eax,dword ptr [ebp-4]
 00575654    call        005755E4
>00575659    jmp         00575668
 0057565B    mov         eax,dword ptr [ebp-10]
 0057565E    mov         eax,dword ptr [eax]
 00575660    mov         edx,dword ptr [ebp-8]
 00575663    mov         ecx,dword ptr [eax]
 00575665    call        dword ptr [ecx+8]
 00575668    mov         eax,dword ptr [ebp-4]
 0057566B    mov         edx,dword ptr [eax]
 0057566D    call        dword ptr [edx+7C]
 00575670    mov         esp,ebp
 00575672    pop         ebp
 00575673    ret
end;*}

//00575674
{*procedure TCDirectoryOutline.SetPictureClosed(Value:TBitmap; ?:?);
begin
 00575674    push        ebp
 00575675    mov         ebp,esp
 00575677    add         esp,0FFFFFFF4
 0057567A    mov         dword ptr [ebp-0C],ecx
 0057567D    mov         dword ptr [ebp-8],edx
 00575680    mov         dword ptr [ebp-4],eax
 00575683    mov         cl,byte ptr [ebp-8]
 00575686    mov         edx,dword ptr [ebp-0C]
 00575689    mov         eax,dword ptr [ebp-4]
 0057568C    call        00575610
 00575691    mov         esp,ebp
 00575693    pop         ebp
 00575694    ret
end;*}

//00575698
{*function TCDirectoryOutline.GetPictureClosed(?:?):?;
begin
 00575698    push        ebp
 00575699    mov         ebp,esp
 0057569B    add         esp,0FFFFFFF4
 0057569E    mov         dword ptr [ebp-8],edx
 005756A1    mov         dword ptr [ebp-4],eax
 005756A4    mov         eax,dword ptr [ebp-4]
 005756A7    test        byte ptr [eax+1C],1;TCDirectoryOutline.FComponentState:TComponentState
>005756AB    je          005756C1
 005756AD    mov         al,byte ptr [ebp-8]
 005756B0    mov         edx,dword ptr [ebp-4]
 005756B3    cmp         al,7
>005756B5    ja          005756C1
 005756B7    and         eax,7F
 005756BA    bts         dword ptr [edx+2B8],eax;TCDirectoryOutline.FUserBitmaps:TOutlineBitmaps
 005756C1    mov         eax,dword ptr [ebp-8]
 005756C4    mov         edx,dword ptr [ebp-4]
 005756C7    mov         eax,dword ptr [edx+eax*4+2BC]
 005756CE    mov         dword ptr [ebp-0C],eax
 005756D1    mov         eax,dword ptr [ebp-0C]
 005756D4    mov         esp,ebp
 005756D6    pop         ebp
 005756D7    ret
end;*}

//005756D8
procedure TCDirectoryOutline.SetItemHeight(Value:int);
begin
{*
 005756D8    push        ebp
 005756D9    mov         ebp,esp
 005756DB    add         esp,0FFFFFFF8
 005756DE    mov         dword ptr [ebp-8],edx
 005756E1    mov         dword ptr [ebp-4],eax
 005756E4    mov         eax,dword ptr [ebp-8]
 005756E7    mov         edx,dword ptr [ebp-4]
 005756EA    mov         dword ptr [edx+2E4],eax;TCDirectoryOutline.FItemHeight:Integer
 005756F0    mov         eax,dword ptr [ebp-4]
 005756F3    cmp         byte ptr [eax+2E8],1;TCDirectoryOutline.FStyle:TOutlineType
>005756FA    je          00575706
 005756FC    mov         eax,dword ptr [ebp-4]
 005756FF    call        005731AC
>00575704    jmp         0057573B
 00575706    mov         eax,dword ptr [ebp-4]
 00575709    mov         edx,dword ptr [eax+2E4];TCDirectoryOutline.FItemHeight:Integer
 0057570F    mov         eax,dword ptr [ebp-4]
 00575712    call        TValueListEditor.SetDefaultRowHeight
 00575717    push        78
 00575719    push        64
 0057571B    mov         eax,dword ptr [ebp-4]
 0057571E    mov         eax,dword ptr [eax+2E4];TCDirectoryOutline.FItemHeight:Integer
 00575724    push        eax
 00575725    call        KERNEL32.MulDiv
 0057572A    mov         edx,dword ptr [ebp-4]
 0057572D    mov         dword ptr [edx+2B0],eax;TCDirectoryOutline.FFontSize:Integer
 00575733    mov         eax,dword ptr [ebp-4]
 00575736    mov         edx,dword ptr [eax]
 00575738    call        dword ptr [edx+7C];TWinControl.Invalidate
 0057573B    pop         ecx
 0057573C    pop         ecx
 0057573D    pop         ebp
 0057573E    ret
*}
end;

//00575740
procedure TCDirectoryOutline.SetStyle(Value:TOutlineType);
begin
{*
 00575740    push        ebp
 00575741    mov         ebp,esp
 00575743    add         esp,0FFFFFFF8
 00575746    mov         byte ptr [ebp-5],dl
 00575749    mov         dword ptr [ebp-4],eax
 0057574C    mov         eax,dword ptr [ebp-4]
 0057574F    mov         al,byte ptr [eax+2E8];TCDirectoryOutline.FStyle:TOutlineType
 00575755    cmp         al,byte ptr [ebp-5]
>00575758    je          00575774
 0057575A    mov         al,byte ptr [ebp-5]
 0057575D    mov         edx,dword ptr [ebp-4]
 00575760    mov         byte ptr [edx+2E8],al;TCDirectoryOutline.FStyle:TOutlineType
 00575766    cmp         byte ptr [ebp-5],0
>0057576A    jne         00575774
 0057576C    mov         eax,dword ptr [ebp-4]
 0057576F    call        005731AC
 00575774    pop         ecx
 00575775    pop         ecx
 00575776    pop         ebp
 00575777    ret
*}
end;

//00575778
procedure TCDirectoryOutline.SetOptions(Value:Set);
begin
{*
 00575778    push        ebp
 00575779    mov         ebp,esp
 0057577B    add         esp,0FFFFFFF8
 0057577E    mov         byte ptr [ebp-5],dl
 00575781    mov         dword ptr [ebp-4],eax
 00575784    mov         eax,dword ptr [ebp-4]
 00575787    mov         al,byte ptr [eax+2E9];TCDirectoryOutline.FOptions:TOutlineOptions
 0057578D    cmp         al,byte ptr [ebp-5]
>00575790    je          005757A6
 00575792    mov         al,byte ptr [ebp-5]
 00575795    mov         edx,dword ptr [ebp-4]
 00575798    mov         byte ptr [edx+2E9],al;TCDirectoryOutline.FOptions:TOutlineOptions
 0057579E    mov         eax,dword ptr [ebp-4]
 005757A1    mov         edx,dword ptr [eax]
 005757A3    call        dword ptr [edx+7C];TWinControl.Invalidate
 005757A6    pop         ecx
 005757A7    pop         ecx
 005757A8    pop         ebp
 005757A9    ret
*}
end;

//005757AC
{*function sub_005757AC(?:Pointer; ?:?):?;
begin
 005757AC    push        ebp
 005757AD    mov         ebp,esp
 005757AF    add         esp,0FFFFFFF4
 005757B2    mov         dword ptr [ebp-8],edx
 005757B5    mov         dword ptr [ebp-4],eax
 005757B8    mov         eax,dword ptr [ebp-8]
 005757BB    sub         eax,dword ptr [ebp-4]
 005757BE    sub         eax,2
 005757C1    test        eax,eax
>005757C3    jle         005757FC
 005757C5    sub         dword ptr [ebp-8],2
>005757C9    jmp         005757CE
 005757CB    dec         dword ptr [ebp-8]
 005757CE    mov         eax,dword ptr [ebp-8]
 005757D1    cmp         byte ptr [eax],0D
>005757D4    je          005757DE
 005757D6    mov         eax,dword ptr [ebp-8]
 005757D9    cmp         eax,dword ptr [ebp-4]
>005757DC    ja          005757CB
 005757DE    mov         eax,dword ptr [ebp-8]
 005757E1    cmp         eax,dword ptr [ebp-4]
>005757E4    jbe         005757F4
 005757E6    inc         dword ptr [ebp-8]
 005757E9    mov         eax,dword ptr [ebp-8]
 005757EC    cmp         byte ptr [eax],0A
>005757EF    jne         005757F4
 005757F1    inc         dword ptr [ebp-8]
 005757F4    mov         eax,dword ptr [ebp-8]
 005757F7    mov         dword ptr [ebp-0C],eax
>005757FA    jmp         00575802
 005757FC    mov         eax,dword ptr [ebp-4]
 005757FF    mov         dword ptr [ebp-0C],eax
 00575802    mov         eax,dword ptr [ebp-0C]
 00575805    mov         esp,ebp
 00575807    pop         ebp
 00575808    ret
end;*}

//0057580C
{*function sub_0057580C(?:Pointer; ?:?):?;
begin
 0057580C    push        ebp
 0057580D    mov         ebp,esp
 0057580F    add         esp,0FFFFFFF0
 00575812    mov         dword ptr [ebp-8],edx
 00575815    mov         dword ptr [ebp-4],eax
 00575818    mov         eax,dword ptr [ebp-4]
 0057581B    mov         dword ptr [ebp-10],eax
>0057581E    jmp         00575823
 00575820    inc         dword ptr [ebp-4]
 00575823    mov         eax,dword ptr [ebp-4]
 00575826    mov         al,byte ptr [eax]
 00575828    sub         al,0D
>0057582A    je          00575830
 0057582C    sub         al,0D
>0057582E    jne         00575820
 00575830    mov         ecx,dword ptr [ebp-4]
 00575833    sub         ecx,dword ptr [ebp-10]
 00575836    mov         eax,dword ptr [ebp-8]
 00575839    mov         edx,dword ptr [ebp-10]
 0057583C    call        @LStrFromPCharLen
 00575841    mov         eax,dword ptr [ebp-4]
 00575844    cmp         byte ptr [eax],0D
>00575847    jne         0057584C
 00575849    inc         dword ptr [ebp-4]
 0057584C    mov         eax,dword ptr [ebp-4]
 0057584F    cmp         byte ptr [eax],0A
>00575852    jne         00575857
 00575854    inc         dword ptr [ebp-4]
 00575857    mov         eax,dword ptr [ebp-4]
 0057585A    mov         dword ptr [ebp-0C],eax
 0057585D    mov         eax,dword ptr [ebp-0C]
 00575860    mov         esp,ebp
 00575862    pop         ebp
 00575863    ret
end;*}

//00575864
{*procedure sub_00575864(?:?; ?:?);
begin
 00575864    push        ebp
 00575865    mov         ebp,esp
 00575867    add         esp,0FFFFFFBC
 0057586A    push        ebx
 0057586B    push        esi
 0057586C    push        edi
 0057586D    xor         ecx,ecx
 0057586F    mov         dword ptr [ebp-44],ecx
 00575872    mov         dword ptr [ebp-40],ecx
 00575875    mov         dword ptr [ebp-3C],ecx
 00575878    mov         dword ptr [ebp-28],ecx
 0057587B    mov         dword ptr [ebp-8],edx
 0057587E    mov         dword ptr [ebp-4],eax
 00575881    xor         eax,eax
 00575883    push        ebp
 00575884    push        575ADC
 00575889    push        dword ptr fs:[eax]
 0057588C    mov         dword ptr fs:[eax],esp
 0057588F    mov         eax,1000
 00575894    call        @GetMem
 00575899    mov         dword ptr [ebp-10],eax
 0057589C    xor         eax,eax
 0057589E    push        ebp
 0057589F    push        575AB2
 005758A4    push        dword ptr fs:[eax]
 005758A7    mov         dword ptr fs:[eax],esp
 005758AA    xor         eax,eax
 005758AC    mov         dword ptr [ebp-30],eax
 005758AF    mov         eax,dword ptr [ebp-4]
 005758B2    call        00573258
 005758B7    mov         eax,dword ptr [ebp-4]
 005758BA    mov         eax,dword ptr [eax+29C]
 005758C0    mov         dword ptr [ebp-20],eax
 005758C3    mov         eax,dword ptr [ebp-10]
 005758C6    add         eax,1000
 005758CB    mov         dword ptr [ebp-18],eax
 005758CE    mov         eax,dword ptr [ebp-18]
 005758D1    mov         dword ptr [ebp-1C],eax
 005758D4    mov         eax,dword ptr [ebp-18]
 005758D7    sub         eax,dword ptr [ebp-1C]
 005758DA    mov         dword ptr [ebp-0C],eax
 005758DD    cmp         dword ptr [ebp-0C],0
>005758E1    je          005758F1
 005758E3    mov         edx,dword ptr [ebp-10]
 005758E6    mov         eax,dword ptr [ebp-1C]
 005758E9    mov         ecx,dword ptr [ebp-0C]
 005758EC    call        Move
 005758F1    mov         eax,dword ptr [ebp-10]
 005758F4    add         eax,dword ptr [ebp-0C]
 005758F7    mov         dword ptr [ebp-1C],eax
 005758FA    mov         ecx,dword ptr [ebp-18]
 005758FD    sub         ecx,dword ptr [ebp-1C]
 00575900    mov         edx,dword ptr [ebp-1C]
 00575903    mov         eax,dword ptr [ebp-8]
 00575906    mov         ebx,dword ptr [eax]
 00575908    call        dword ptr [ebx+8]
 0057590B    add         dword ptr [ebp-1C],eax
 0057590E    mov         eax,dword ptr [ebp-1C]
 00575911    cmp         eax,dword ptr [ebp-18]
>00575914    jae         0057591E
 00575916    mov         eax,dword ptr [ebp-1C]
 00575919    mov         byte ptr [eax],1A
>0057591C    jmp         0057594C
 0057591E    mov         edx,dword ptr [ebp-1C]
 00575921    mov         eax,dword ptr [ebp-10]
 00575924    call        005757AC
 00575929    mov         dword ptr [ebp-1C],eax
 0057592C    mov         eax,dword ptr [ebp-1C]
 0057592F    cmp         eax,dword ptr [ebp-10]
>00575932    jne         0057594C
 00575934    lea         edx,[ebp-3C]
 00575937    mov         eax,[006E9EE8];^gvar_0063CBE0
 0057593C    call        LoadResString
 00575941    mov         edx,dword ptr [ebp-3C]
 00575944    mov         eax,dword ptr [ebp-4]
 00575947    call        00575CA4
 0057594C    mov         eax,dword ptr [ebp-10]
 0057594F    mov         dword ptr [ebp-14],eax
>00575952    jmp         00575A5F
 00575957    lea         edx,[ebp-2C]
 0057595A    mov         eax,dword ptr [ebp-14]
 0057595D    call        005717B0
 00575962    mov         dword ptr [ebp-14],eax
 00575965    lea         edx,[ebp-28]
 00575968    mov         eax,dword ptr [ebp-14]
 0057596B    call        0057580C
 00575970    mov         dword ptr [ebp-14],eax
 00575973    mov         ecx,dword ptr [ebp-4]
 00575976    mov         dl,1
 00575978    mov         eax,[00570B0C];TOutlineNode
 0057597D    call        TOutlineNode.Create;TOutlineNode.Create
 00575982    mov         dword ptr [ebp-24],eax
 00575985    xor         eax,eax
 00575987    push        ebp
 00575988    push        575A48
 0057598D    push        dword ptr fs:[eax]
 00575990    mov         dword ptr fs:[eax],esp
 00575993    mov         edx,dword ptr [ebp-28]
 00575996    mov         eax,dword ptr [ebp-24]
 00575999    call        00571B1C
 0057599E    mov         eax,dword ptr [ebp-2C]
 005759A1    cmp         eax,dword ptr [ebp-30]
>005759A4    ja          005759B4
 005759A6    mov         eax,dword ptr [ebp-4]
 005759A9    mov         eax,dword ptr [eax+29C]
 005759AF    cmp         eax,dword ptr [ebp-20]
>005759B2    jne         005759D9
 005759B4    mov         eax,dword ptr [ebp-2C]
 005759B7    sub         eax,dword ptr [ebp-30]
 005759BA    cmp         eax,1
>005759BD    jbe         00575A19
 005759BF    lea         edx,[ebp-40]
 005759C2    mov         eax,[006E9EE4];^gvar_0063CBD8
 005759C7    call        LoadResString
 005759CC    mov         edx,dword ptr [ebp-40]
 005759CF    mov         eax,dword ptr [ebp-4]
 005759D2    call        00575CA4
>005759D7    jmp         00575A19
 005759D9    mov         eax,dword ptr [ebp-30]
 005759DC    mov         edx,dword ptr [ebp-2C]
 005759DF    sub         edx,eax
>005759E1    jg          00575A19
 005759E3    dec         edx
 005759E4    mov         dword ptr [ebp-38],edx
 005759E7    mov         dword ptr [ebp-34],eax
 005759EA    mov         eax,dword ptr [ebp-20]
 005759ED    mov         eax,dword ptr [eax+10]
 005759F0    mov         dword ptr [ebp-20],eax
 005759F3    cmp         dword ptr [ebp-20],0
>005759F7    jne         00575A11
 005759F9    lea         edx,[ebp-44]
 005759FC    mov         eax,[006E9EE4];^gvar_0063CBD8
 00575A01    call        LoadResString
 00575A06    mov         edx,dword ptr [ebp-44]
 00575A09    mov         eax,dword ptr [ebp-4]
 00575A0C    call        00575CA4
 00575A11    dec         dword ptr [ebp-34]
 00575A14    inc         dword ptr [ebp-38]
>00575A17    jne         005759EA
 00575A19    mov         eax,dword ptr [ebp-20]
 00575A1C    call        00571A80
 00575A21    mov         edx,dword ptr [ebp-24]
 00575A24    call        TList.Add
 00575A29    mov         eax,dword ptr [ebp-24]
 00575A2C    mov         edx,dword ptr [ebp-20]
 00575A2F    mov         dword ptr [eax+10],edx;TOutlineNode.FParent:TOutlineNode
 00575A32    mov         eax,dword ptr [ebp-24]
 00575A35    mov         dword ptr [ebp-20],eax
 00575A38    mov         eax,dword ptr [ebp-2C]
 00575A3B    mov         dword ptr [ebp-30],eax
 00575A3E    xor         eax,eax
 00575A40    pop         edx
 00575A41    pop         ecx
 00575A42    pop         ecx
 00575A43    mov         dword ptr fs:[eax],edx
>00575A46    jmp         00575A5F
>00575A48    jmp         @HandleAnyException
 00575A4D    mov         eax,dword ptr [ebp-24]
 00575A50    call        TObject.Free
 00575A55    call        @RaiseAgain
 00575A5A    call        @DoneExcept
 00575A5F    mov         eax,dword ptr [ebp-14]
 00575A62    cmp         eax,dword ptr [ebp-1C]
>00575A65    jae         00575A73
 00575A67    mov         eax,dword ptr [ebp-14]
 00575A6A    cmp         byte ptr [eax],1A
>00575A6D    jne         00575957
 00575A73    mov         eax,dword ptr [ebp-14]
 00575A76    cmp         eax,dword ptr [ebp-18]
>00575A79    jae         005758D4
 00575A7F    mov         eax,dword ptr [ebp-14]
 00575A82    cmp         byte ptr [eax],1A
>00575A85    jne         005758D4
 00575A8B    xor         eax,eax
 00575A8D    pop         edx
 00575A8E    pop         ecx
 00575A8F    pop         ecx
 00575A90    mov         dword ptr fs:[eax],edx
 00575A93    push        575AB9
 00575A98    mov         eax,dword ptr [ebp-10]
 00575A9B    call        @FreeMem
 00575AA0    mov         eax,dword ptr [ebp-4]
 00575AA3    test        byte ptr [eax+1C],1
>00575AA7    jne         00575AB1
 00575AA9    mov         eax,dword ptr [ebp-4]
 00575AAC    mov         edx,dword ptr [eax]
 00575AAE    call        dword ptr [edx+0C]
 00575AB1    ret
>00575AB2    jmp         @HandleFinally
>00575AB7    jmp         00575A98
 00575AB9    xor         eax,eax
 00575ABB    pop         edx
 00575ABC    pop         ecx
 00575ABD    pop         ecx
 00575ABE    mov         dword ptr fs:[eax],edx
 00575AC1    push        575AE3
 00575AC6    lea         eax,[ebp-44]
 00575AC9    mov         edx,3
 00575ACE    call        @LStrArrayClr
 00575AD3    lea         eax,[ebp-28]
 00575AD6    call        @LStrClr
 00575ADB    ret
>00575ADC    jmp         @HandleFinally
>00575AE1    jmp         00575AC6
 00575AE3    pop         edi
 00575AE4    pop         esi
 00575AE5    pop         ebx
 00575AE6    mov         esp,ebp
 00575AE8    pop         ebp
 00575AE9    ret
end;*}

//00575AEC
procedure TCustomOutline.Loaded;
begin
{*
 00575AEC    push        ebp
 00575AED    mov         ebp,esp
 00575AEF    add         esp,0FFFFFFF4
 00575AF2    mov         dword ptr [ebp-4],eax
 00575AF5    mov         eax,dword ptr [ebp-4]
 00575AF8    call        TControl.Loaded
 00575AFD    mov         eax,dword ptr [ebp-4]
 00575B00    mov         eax,dword ptr [eax+29C];TCustomOutline.FRootNode:TOutlineNode
 00575B06    mov         dword ptr [ebp-0C],eax
 00575B09    mov         eax,dword ptr [ebp-0C]
 00575B0C    call        00571A80
 00575B11    mov         eax,dword ptr [eax+8]
 00575B14    mov         edx,dword ptr [ebp-0C]
 00575B17    mov         dword ptr [edx+20],eax;TOutlineNode.FExpandCount:Longint
 00575B1A    xor         edx,edx
 00575B1C    mov         eax,dword ptr [ebp-4]
 00575B1F    call        005B9D64
 00575B24    mov         eax,dword ptr [ebp-4]
 00575B27    call        00573768
 00575B2C    mov         eax,dword ptr [ebp-4]
 00575B2F    call        0057423C
 00575B34    test        al,al
>00575B36    je          00575B40
 00575B38    mov         eax,dword ptr [ebp-4]
 00575B3B    mov         edx,dword ptr [eax]
 00575B3D    call        dword ptr [edx+7C];TWinControl.Invalidate
 00575B40    mov         eax,dword ptr [ebp-0C]
 00575B43    call        00571A80
 00575B48    cmp         dword ptr [eax+8],0
>00575B4C    jle         00575B76
 00575B4E    mov         eax,dword ptr [ebp-0C]
 00575B51    call        00571A80
 00575B56    call        TList.First
 00575B5B    call        005723E4
 00575B60    mov         eax,dword ptr [ebp-0C]
 00575B63    call        00571A80
 00575B68    call        TList.First
 00575B6D    mov         edx,dword ptr [ebp-4]
 00575B70    mov         dword ptr [edx+2EC],eax;TCustomOutline.FSelectedItem:TOutlineNode
 00575B76    mov         eax,dword ptr [ebp-4]
 00575B79    test        byte ptr [eax+1C],10;TCustomOutline.FComponentState:TComponentState
>00575B7D    je          00575B87
 00575B7F    mov         eax,dword ptr [ebp-0C]
 00575B82    call        00571E64
 00575B87    mov         byte ptr [ebp-5],0
 00575B8B    mov         al,byte ptr [ebp-5]
 00575B8E    mov         edx,dword ptr [ebp-4]
 00575B91    cmp         al,7
>00575B93    ja          00575B9F
 00575B95    and         eax,7F
 00575B98    bt          dword ptr [edx+2B9],eax;TCustomOutline.FOldBitmaps:TOutlineBitmaps
>00575B9F    jae         00575BC4
 00575BA1    mov         al,byte ptr [ebp-5]
 00575BA4    mov         edx,dword ptr [ebp-4]
 00575BA7    cmp         al,7
>00575BA9    ja          00575BB5
 00575BAB    and         eax,7F
 00575BAE    bt          dword ptr [edx+2B8],eax;TCustomOutline.FUserBitmaps:TOutlineBitmaps
>00575BB5    jb          00575BC4
 00575BB7    mov         cl,byte ptr [ebp-5]
 00575BBA    xor         edx,edx
 00575BBC    mov         eax,dword ptr [ebp-4]
 00575BBF    call        00575610
 00575BC4    inc         byte ptr [ebp-5]
 00575BC7    cmp         byte ptr [ebp-5],5
>00575BCB    jne         00575B8B
 00575BCD    mov         eax,dword ptr [ebp-4]
 00575BD0    mov         dl,byte ptr ds:[575BE8];0x0 gvar_00575BE8
 00575BD6    mov         byte ptr [eax+2B9],dl;TCustomOutline.FOldBitmaps:TOutlineBitmaps
 00575BDC    mov         eax,dword ptr [ebp-4]
 00575BDF    call        005741B0
 00575BE4    mov         esp,ebp
 00575BE6    pop         ebp
 00575BE7    ret
*}
end;

//00575BEC
{*procedure sub_00575BEC(?:?; ?:?);
begin
 00575BEC    push        ebp
 00575BED    mov         ebp,esp
 00575BEF    add         esp,0FFFFFFF4
 00575BF2    mov         dword ptr [ebp-8],edx
 00575BF5    mov         dword ptr [ebp-4],eax
 00575BF8    mov         eax,1000
 00575BFD    call        @GetMem
 00575C02    mov         dword ptr [ebp-0C],eax
 00575C05    xor         eax,eax
 00575C07    push        ebp
 00575C08    push        575C3D
 00575C0D    push        dword ptr fs:[eax]
 00575C10    mov         dword ptr fs:[eax],esp
 00575C13    mov         eax,dword ptr [ebp-4]
 00575C16    mov         eax,dword ptr [eax+29C]
 00575C1C    mov         ecx,dword ptr [ebp-8]
 00575C1F    mov         edx,dword ptr [ebp-0C]
 00575C22    call        005727E4
 00575C27    xor         eax,eax
 00575C29    pop         edx
 00575C2A    pop         ecx
 00575C2B    pop         ecx
 00575C2C    mov         dword ptr fs:[eax],edx
 00575C2F    push        575C44
 00575C34    mov         eax,dword ptr [ebp-0C]
 00575C37    call        @FreeMem
 00575C3C    ret
>00575C3D    jmp         @HandleFinally
>00575C42    jmp         00575C34
 00575C44    mov         esp,ebp
 00575C46    pop         ebp
 00575C47    ret
end;*}

//00575C48
procedure TOutline.SetLines(Value:TStrings);
begin
{*
 00575C48    push        ebp
 00575C49    mov         ebp,esp
 00575C4B    add         esp,0FFFFFFF8
 00575C4E    mov         dword ptr [ebp-8],edx
 00575C51    mov         dword ptr [ebp-4],eax
 00575C54    mov         edx,dword ptr [ebp-8]
 00575C57    mov         eax,dword ptr [ebp-4]
 00575C5A    mov         eax,dword ptr [eax+2B4];TOutline.FStrings:TStrings
 00575C60    mov         ecx,dword ptr [eax]
 00575C62    call        dword ptr [ecx+8];TStrings.Assign
 00575C65    mov         eax,dword ptr [ebp-4]
 00575C68    test        byte ptr [eax+1C],10;TOutline.FComponentState:TComponentState
>00575C6C    je          00575C7C
 00575C6E    mov         eax,dword ptr [ebp-4]
 00575C71    mov         eax,dword ptr [eax+29C];TOutline.FRootNode:TOutlineNode
 00575C77    call        00571E64
 00575C7C    mov         eax,dword ptr [ebp-4]
 00575C7F    call        005741B0
 00575C84    pop         ecx
 00575C85    pop         ecx
 00575C86    pop         ebp
 00575C87    ret
*}
end;

//00575C88
{*function TOutline.GetLines:?;
begin
 00575C88    push        ebp
 00575C89    mov         ebp,esp
 00575C8B    add         esp,0FFFFFFF8
 00575C8E    mov         dword ptr [ebp-4],eax
 00575C91    mov         eax,dword ptr [ebp-4]
 00575C94    mov         eax,dword ptr [eax+2B4];TOutline.FStrings:TStrings
 00575C9A    mov         dword ptr [ebp-8],eax
 00575C9D    mov         eax,dword ptr [ebp-8]
 00575CA0    pop         ecx
 00575CA1    pop         ecx
 00575CA2    pop         ebp
 00575CA3    ret
end;*}

//00575CA4
{*procedure sub_00575CA4(?:TCustomOutline; ?:?);
begin
 00575CA4    push        ebp
 00575CA5    mov         ebp,esp
 00575CA7    add         esp,0FFFFFFF8
 00575CAA    mov         dword ptr [ebp-8],edx
 00575CAD    mov         dword ptr [ebp-4],eax
 00575CB0    mov         ecx,dword ptr [ebp-8]
 00575CB3    mov         dl,1
 00575CB5    mov         eax,[00570AB0];EOutlineError
 00575CBA    call        Exception.Create;EOutlineError.Create
 00575CBF    call        @RaiseExcept
 00575CC4    pop         ecx
 00575CC5    pop         ecx
 00575CC6    pop         ebp
 00575CC7    ret
end;*}

//00575CC8
{*procedure TCustomOutline.sub_00575CC8(?:?);
begin
 00575CC8    push        ebp
 00575CC9    mov         ebp,esp
 00575CCB    add         esp,0FFFFFFF8
 00575CCE    push        ebx
 00575CCF    mov         dword ptr [ebp-8],edx
 00575CD2    mov         dword ptr [ebp-4],eax
 00575CD5    mov         eax,dword ptr [ebp-4]
 00575CD8    cmp         word ptr [eax+2D2],0;TCustomOutline.?f2D2:word
>00575CE0    je          00575CF7
 00575CE2    mov         ebx,dword ptr [ebp-4]
 00575CE5    mov         ecx,dword ptr [ebp-8]
 00575CE8    mov         edx,dword ptr [ebp-4]
 00575CEB    mov         eax,dword ptr [ebx+2D4];TCustomOutline.?f2D4:dword
 00575CF1    call        dword ptr [ebx+2D0];TCustomOutline.FOnExpand
 00575CF7    pop         ebx
 00575CF8    pop         ecx
 00575CF9    pop         ecx
 00575CFA    pop         ebp
 00575CFB    ret
end;*}

//00575CFC
{*procedure TCustomOutline.sub_00575CFC(?:?);
begin
 00575CFC    push        ebp
 00575CFD    mov         ebp,esp
 00575CFF    add         esp,0FFFFFFF8
 00575D02    push        ebx
 00575D03    mov         dword ptr [ebp-8],edx
 00575D06    mov         dword ptr [ebp-4],eax
 00575D09    mov         eax,dword ptr [ebp-4]
 00575D0C    cmp         word ptr [eax+2DA],0;TCustomOutline.?f2DA:word
>00575D14    je          00575D2B
 00575D16    mov         ebx,dword ptr [ebp-4]
 00575D19    mov         ecx,dword ptr [ebp-8]
 00575D1C    mov         edx,dword ptr [ebp-4]
 00575D1F    mov         eax,dword ptr [ebx+2DC];TCustomOutline.?f2DC:dword
 00575D25    call        dword ptr [ebx+2D8];TCustomOutline.FOnCollapse
 00575D2B    pop         ebx
 00575D2C    pop         ecx
 00575D2D    pop         ecx
 00575D2E    pop         ebp
 00575D2F    ret
end;*}

//00575D30
procedure Finalization;
begin
{*
 00575D30    push        ebp
 00575D31    mov         ebp,esp
 00575D33    xor         eax,eax
 00575D35    push        ebp
 00575D36    push        575D55
 00575D3B    push        dword ptr fs:[eax]
 00575D3E    mov         dword ptr fs:[eax],esp
 00575D41    inc         dword ptr ds:[6ECCA8]
 00575D47    xor         eax,eax
 00575D49    pop         edx
 00575D4A    pop         ecx
 00575D4B    pop         ecx
 00575D4C    mov         dword ptr fs:[eax],edx
 00575D4F    push        575D5C
 00575D54    ret
>00575D55    jmp         @HandleFinally
>00575D5A    jmp         00575D54
 00575D5C    pop         ebp
 00575D5D    ret
*}
end;

end.