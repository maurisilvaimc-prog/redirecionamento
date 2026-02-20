//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ValEdit;

interface

uses
  SysUtils, Classes, ValEdit, Grids;

type
  TDisplayOption = (doColumnTitles, doAutoColResize, doKeyColFixed);
  TDisplayOptions = set of TDisplayOption;
  TKeyOption = (keyEdit, keyAdd, keyDelete, keyUnique);
  TKeyOptions = set of TKeyOption;
  TGetPickListEvent = procedure(Sender:TObject; const KeyName:String; Values:TStrings) of object;;
  TOnValidateEvent = procedure(Sender:TObject; ACol:Integer; ARow:Integer; const KeyName:String; const KeyValue:String) of object;;
  TValueListEditor = class(TCustomDrawGrid)
  public
    TitleCaptions:TStrings;//f2D8
    FStrings:TValueListStrings;//f2DC
    KeyOptions:TKeyOptions;//f2E0
    DisplayOptions:TDisplayOptions;//f2E1
    DropDownRows:Integer;//f2E4
    FDupKeySave:String;//f2E8
    FDeleting:Boolean;//f2EC
    FAdjustingColWidths:Boolean;//f2ED
    FEditUpdate:Integer;//f2F0
    FCountSave:Integer;//f2F4
    FEditList:TInplaceEditList;//f2F8
    OnGetPickList:TGetPickListEvent;//f300
    f302:word;//f302
    f304:dword;//f304
    OnEditButtonClick:TNotifyEvent;//f308
    f30C:dword;//f30C
    OnValidate:TOnValidateEvent;//f310
    f312:word;//f312
    f314:dword;//f314
    destructor Destroy; virtual;//005AD4BC
    constructor Create(AOwner:TComponent); virtual;//v2C//005AD338
    procedure CreateWnd; virtual;//vA0//005AED38
    //function vCC:?; virtual;//vCC//005AD50C
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?); virtual;//vD4//005ADC44
    //function vD8(?:?; ?:?):?; virtual;//vD8//005AEA14
    //procedure vE0(?:?); virtual;//vE0//005AE75C
    procedure AdjustColWidths; virtual;//vE4//005ADD74
    procedure vE8; virtual;//vE8//005ADEB0
    procedure vEC; virtual;//vEC//005AE94C
    //procedure vF0(?:?; ?:?; ?:?); virtual;//vF0//005AD6C0
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//005AD7B0
    procedure SetStrings(Value:TStrings); virtual;//vF8//005AD9F4
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//005AEDC0
    procedure sub_005ADFC4; dynamic;//005ADFC4
    procedure sub_005ADF70; dynamic;//005ADF70
    //procedure sub_005AE914(?:?; ?:?); dynamic;//005AE914
    //procedure sub_005AE1B4(?:?; ?:?); dynamic;//005AE1B4
    //procedure sub_005AE0E8(?:?; ?:?; ?:?); dynamic;//005AE0E8
    procedure SetEditText(ACol:Longint; ARow:Longint; Value:AnsiString); dynamic;//005AE2DC
    //procedure sub_005AE284(?:?; ?:?; ?:?); dynamic;//005AE284
    procedure sub_005ADFD8; dynamic;//005ADFD8
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//005AEB80
    procedure DoExit; dynamic;//005AED60
    procedure sub_005ADF50; dynamic;//005ADF50
    function GetRowCount:Integer;//005AD6A4
    procedure SetDropDownRows(Value:Integer);//005AD898
    procedure SetTitleCaptions(Value:TStrings);//005AD900
    function IsStoredTitleCaptions(Value:TStrings):Boolean;//005AD92C
    //function GetStrings:?;//005AD9D8
    procedure SetDisplayOptions(Value:TDisplayOptions);//005ADA68
    procedure SetKeyOptions(Value:TKeyOptions);//005ADAC0
    //procedure GetOnStringsChange(?:?);//005ADB58
    //procedure GetOnStringsChanging(?:?);//005ADB80
    //procedure SetOnStringsChange(Value:TNotifyEvent; ?:?; ?:?);//005ADBA8
    //procedure SetOnStringsChanging(Value:TNotifyEvent; ?:?; ?:?);//005ADBCC
    //procedure SetOnEditButtonClick(Value:TNotifyEvent; ?:?; ?:?);//005ADBF0
    function InsertRow(const KeyName:AnsiString; const Value:AnsiString; Append:Boolean):Integer;//005AE610
    function RestoreCurrentRow:Boolean;//005AE8D0
    //function GetOptions:?;//005AECDC
    procedure SetOptions(Value:TGridOptions);//005AECFC
  end;
  TItemProps = array of ?;
//elSize = 4;
  TValueListStrings = class(TStringList)
  public
    FItemProps:TItemProps;//f30
    FEditor:TValueListEditor;//f34
    procedure Assign(Source:TPersistent); virtual;//v8//005AEE44
    //procedure v20(?:?; ?:?); virtual;//v20//005AF5AC
    procedure Clear; virtual;//v44//005AF0CC
    //procedure v48(?:?); virtual;//v48//005AF29C
    //procedure v4C(?:?; ?:?); virtual;//v4C//005AF340
    procedure v80; virtual;//v80//005AEFE8
    procedure v84; virtual;//v84//005AEFA4
    //procedure v88(?:?; ?:?; ?:?); virtual;//v88//005AF4B4
    //procedure v94(?:?); virtual;//v94//005AF130
    constructor Create;//005AEDF4
  end;
  TItemProp = class(TPersistent)
  public
    FEditor:TValueListEditor;//f4
    EditMask:String;//f8
    EditStyle:TEditStyle;//fC
    FPickList:TStrings;//f10
    MaxLength:Integer;//f14
    ReadOnly:Boolean;//f18
    KeyDesc:String;//f1C
    destructor Destroy; virtual;//005AF698
    procedure AssignTo(Dest:TPersistent); virtual;//v0//005AF6D4
    constructor Create;//005AF654
    procedure SetEditMask(Value:String);//005AF774
    procedure SetEditStyle(Value:TEditStyle);//005AF79C
    procedure SetKeyDesc(Value:String);//005AF7C0
    procedure SetMaxLength(Value:Integer);//005AF7E0
    //function GetPickList:?;//005AF838
    procedure SetPickList(Value:TStrings);//005AF880
    procedure SetReadOnly(Value:Boolean);//005AF8A8
  end;
    procedure ValEdit;//005AC370
    constructor Create(AOwner:TComponent);//005AD338
    destructor Destroy;//005AD4BC
    //function sub_005AD50C:?;//005AD50C
    //procedure sub_005AD598(?:?; ?:?; ?:?);//005AD598
    //function sub_005AD5E8(?:TValueListEditor):?;//005AD5E8
    //procedure sub_005AD6C0(?:?; ?:?; ?:?);//005AD6C0
    //procedure sub_005AD7B0(?:?; ?:?; ?:?);//005AD7B0
    //procedure sub_005AD8D4(?:TValueListEditor; ?:Longint; ?:?);//005AD8D4
    procedure SetStrings(Value:TStrings);//005AD9F4
    //procedure sub_005ADA18(?:?; ?:?);//005ADA18
    //procedure @TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);//005ADC44
    procedure AdjustColWidths;//005ADD74
    procedure sub_005ADEB0;//005ADEB0
    procedure sub_005ADF50;//005ADF50
    procedure sub_005ADF70;//005ADF70
    procedure sub_005ADF90(?:TValueListEditor);//005ADF90
    procedure sub_005ADFC4;//005ADFC4
    procedure sub_005ADFD8;//005ADFD8
    procedure sub_005AE070(?:TValueListEditor);//005AE070
    procedure sub_005AE0A8(?:TValueListEditor);//005AE0A8
    //procedure sub_005AE0E8(?:?; ?:?; ?:?);//005AE0E8
    //procedure sub_005AE1B4(?:?; ?:?);//005AE1B4
    //procedure sub_005AE284(?:?; ?:?; ?:?);//005AE284
    procedure SetEditText(ACol:Longint; ARow:Longint; Value:AnsiString);//005AE2DC
    //function sub_005AE4FC(?:TValueListEditor; ?:?; ?:?):?;//005AE4FC
    //procedure sub_005AE75C(?:?);//005AE75C
    //function sub_005AE808(?:?):?;//005AE808
    //procedure sub_005AE914(?:?; ?:?);//005AE914
    procedure sub_005AE94C;//005AE94C
    //function sub_005AEA14(?:?; ?:?):?;//005AEA14
    function InsertOK:Boolean;//005AEAD8
    procedure SetRow(NewRow:Integer);//005AEB5C
    procedure KeyDown(var Key:Word; Shift:TShiftState);//005AEB80
    procedure CreateWnd;//005AED38
    procedure DoExit;//005AED60
    //procedure CMShowingChanged(?:?);//005AEDC0
    procedure Assign(Source:TPersistent);//005AEE44
    procedure sub_005AEFA4;//005AEFA4
    procedure sub_005AEFE8;//005AEFE8
    //function sub_005AF018(?:TValueListStrings; ?:?; ?:?):?;//005AF018
    procedure Clear;//005AF0CC
    //procedure sub_005AF130(?:?);//005AF130
    //procedure sub_005AF29C(?:?);//005AF29C
    //procedure sub_005AF340(?:?; ?:?);//005AF340
    //function sub_005AF3B0(?:TPersistent; ?:?; ?:?):?;//005AF3B0
    //procedure sub_005AF4B4(?:?; ?:?; ?:?);//005AF4B4
    //procedure sub_005AF5AC(?:?; ?:?);//005AF5AC
    //procedure sub_005AF62C(?:TValueListStrings; ?:?; ?:?);//005AF62C
    destructor Destroy;//005AF698
    procedure AssignTo(Dest:TPersistent);//005AF6D4
    procedure sub_005AF8CC(?:TItemProp);//005AF8CC
    procedure Finalization;//005AF968

implementation

//005AC370
procedure ValEdit;
begin
{*
 005AC370    sub         dword ptr ds:[6ECD0C],1
 005AC377    ret
*}
end;

//005AD338
constructor TValueListEditor.Create(AOwner:TComponent);
begin
{*
 005AD338    push        ebp
 005AD339    mov         ebp,esp
 005AD33B    add         esp,0FFFFFFEC
 005AD33E    push        ebx
 005AD33F    xor         ebx,ebx
 005AD341    mov         dword ptr [ebp-14],ebx
 005AD344    mov         dword ptr [ebp-10],ebx
 005AD347    test        dl,dl
>005AD349    je          005AD353
 005AD34B    add         esp,0FFFFFFF0
 005AD34E    call        @ClassCreate
 005AD353    mov         dword ptr [ebp-0C],ecx
 005AD356    mov         byte ptr [ebp-5],dl
 005AD359    mov         dword ptr [ebp-4],eax
 005AD35C    xor         eax,eax
 005AD35E    push        ebp
 005AD35F    push        5AD48B
 005AD364    push        dword ptr fs:[eax]
 005AD367    mov         dword ptr fs:[eax],esp
 005AD36A    mov         ecx,dword ptr [ebp-0C]
 005AD36D    xor         edx,edx
 005AD36F    mov         eax,dword ptr [ebp-4]
 005AD372    call        TCustomGrid.Create
 005AD377    mov         ecx,dword ptr [ebp-4]
 005AD37A    mov         dl,1
 005AD37C    mov         eax,[005AD090];TValueListStrings
 005AD381    call        TValueListStrings.Create;TValueListStrings.Create
 005AD386    mov         edx,dword ptr [ebp-4]
 005AD389    mov         dword ptr [edx+2DC],eax;TValueListEditor.FStrings:TValueListStrings
 005AD38F    mov         dl,1
 005AD391    mov         eax,[006428B0];TStringList
 005AD396    call        TObject.Create;TStringList.Create
 005AD39B    mov         edx,dword ptr [ebp-4]
 005AD39E    mov         dword ptr [edx+2D8],eax;TValueListEditor.TitleCaptions:TStrings
 005AD3A4    lea         edx,[ebp-10]
 005AD3A7    mov         eax,[006E9FDC];^gvar_0063CDC8
 005AD3AC    call        LoadResString
 005AD3B1    mov         edx,dword ptr [ebp-10]
 005AD3B4    mov         eax,dword ptr [ebp-4]
 005AD3B7    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD3BD    mov         ecx,dword ptr [eax]
 005AD3BF    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005AD3C2    lea         edx,[ebp-14]
 005AD3C5    mov         eax,[006E9FE0];^gvar_0063CDD0
 005AD3CA    call        LoadResString
 005AD3CF    mov         edx,dword ptr [ebp-14]
 005AD3D2    mov         eax,dword ptr [ebp-4]
 005AD3D5    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD3DB    mov         ecx,dword ptr [eax]
 005AD3DD    call        dword ptr [ecx+38];TStrings.sub_00646C94
 005AD3E0    mov         edx,2
 005AD3E5    mov         eax,dword ptr [ebp-4]
 005AD3E8    call        TDrawGrid.SetColCount
 005AD3ED    mov         edx,2
 005AD3F2    mov         eax,dword ptr [ebp-4]
 005AD3F5    call        TDrawGrid.SetRowCount
 005AD3FA    xor         edx,edx
 005AD3FC    mov         eax,dword ptr [ebp-4]
 005AD3FF    call        TValueListEditor.SetFixedCols
 005AD404    mov         edx,96
 005AD409    mov         eax,dword ptr [ebp-4]
 005AD40C    call        TValueListEditor.SetDefaultColWidth
 005AD411    mov         edx,12
 005AD416    mov         eax,dword ptr [ebp-4]
 005AD419    call        TValueListEditor.SetDefaultRowHeight
 005AD41E    mov         edx,132
 005AD423    mov         eax,dword ptr [ebp-4]
 005AD426    call        TControl.SetWidth
 005AD42B    mov         edx,12C
 005AD430    mov         eax,dword ptr [ebp-4]
 005AD433    call        TControl.SetHeight
 005AD438    mov         dx,word ptr ds:[5AD4B4];0x648F gvar_005AD4B4
 005AD43F    mov         eax,dword ptr [ebp-4]
 005AD442    call        TValueListEditor.SetOptions
 005AD447    mov         eax,dword ptr [ebp-4]
 005AD44A    mov         dl,byte ptr ds:[5AD4B8];0x7 gvar_005AD4B8
 005AD450    mov         byte ptr [eax+2E1],dl;TValueListEditor.DisplayOptions:TDisplayOptions
 005AD456    mov         edx,1
 005AD45B    mov         eax,dword ptr [ebp-4]
 005AD45E    call        005B9890
 005AD463    mov         eax,dword ptr [ebp-4]
 005AD466    mov         dword ptr [eax+2E4],8;TValueListEditor.DropDownRows:Integer
 005AD470    xor         eax,eax
 005AD472    pop         edx
 005AD473    pop         ecx
 005AD474    pop         ecx
 005AD475    mov         dword ptr fs:[eax],edx
 005AD478    push        5AD492
 005AD47D    lea         eax,[ebp-14]
 005AD480    mov         edx,2
 005AD485    call        @LStrArrayClr
 005AD48A    ret
>005AD48B    jmp         @HandleFinally
>005AD490    jmp         005AD47D
 005AD492    mov         eax,dword ptr [ebp-4]
 005AD495    cmp         byte ptr [ebp-5],0
>005AD499    je          005AD4AA
 005AD49B    call        @AfterConstruction
 005AD4A0    pop         dword ptr fs:[0]
 005AD4A7    add         esp,0C
 005AD4AA    mov         eax,dword ptr [ebp-4]
 005AD4AD    pop         ebx
 005AD4AE    mov         esp,ebp
 005AD4B0    pop         ebp
 005AD4B1    ret
*}
end;

//005AD4BC
destructor TValueListEditor.Destroy;
begin
{*
 005AD4BC    push        ebp
 005AD4BD    mov         ebp,esp
 005AD4BF    add         esp,0FFFFFFF8
 005AD4C2    call        @BeforeDestruction
 005AD4C7    mov         byte ptr [ebp-5],dl
 005AD4CA    mov         dword ptr [ebp-4],eax
 005AD4CD    mov         dl,byte ptr [ebp-5]
 005AD4D0    and         dl,0FC
 005AD4D3    mov         eax,dword ptr [ebp-4]
 005AD4D6    call        TCustomGrid.Destroy
 005AD4DB    mov         eax,dword ptr [ebp-4]
 005AD4DE    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD4E4    call        TObject.Free
 005AD4E9    mov         eax,dword ptr [ebp-4]
 005AD4EC    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AD4F2    call        TObject.Free
 005AD4F7    cmp         byte ptr [ebp-5],0
>005AD4FB    jle         005AD505
 005AD4FD    mov         eax,dword ptr [ebp-4]
 005AD500    call        @ClassDestroy
 005AD505    pop         ecx
 005AD506    pop         ecx
 005AD507    pop         ebp
 005AD508    ret
*}
end;

//005AD50C
{*function sub_005AD50C:?;
begin
 005AD50C    push        ebp
 005AD50D    mov         ebp,esp
 005AD50F    add         esp,0FFFFFFF8
 005AD512    mov         dword ptr [ebp-4],eax
 005AD515    mov         ecx,dword ptr [ebp-4]
 005AD518    mov         dl,1
 005AD51A    mov         eax,[005B2F14];TInplaceEditList
 005AD51F    call        TInplaceEditList.Create;TInplaceEditList.Create
 005AD524    mov         edx,dword ptr [ebp-4]
 005AD527    mov         dword ptr [edx+2F8],eax;TValueListEditor.FEditList:TInplaceEditList
 005AD52D    mov         eax,dword ptr [ebp-4]
 005AD530    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AD536    mov         edx,dword ptr [ebp-4]
 005AD539    mov         edx,dword ptr [edx+2E4];TValueListEditor.DropDownRows:Integer
 005AD53F    mov         dword ptr [eax+258],edx;TInplaceEditList.FDropDownRows:Integer
 005AD545    mov         eax,dword ptr [ebp-4]
 005AD548    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AD54E    mov         edx,dword ptr [ebp-4]
 005AD551    mov         ecx,dword ptr [edx+308];TValueListEditor.OnEditButtonClick:TNotifyEvent
 005AD557    mov         dword ptr [eax+268],ecx;TInplaceEditList.FOnEditButtonClick:TNotifyEvent
 005AD55D    mov         ecx,dword ptr [edx+30C];TValueListEditor.?f30C:dword
 005AD563    mov         dword ptr [eax+26C],ecx;TInplaceEditList.?f26C:dword
 005AD569    mov         eax,dword ptr [ebp-4]
 005AD56C    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AD572    mov         edx,dword ptr [ebp-4]
 005AD575    mov         dword ptr [eax+264],edx;TInplaceEditList.?f264:TValueListEditor
 005AD57B    mov         dword ptr [eax+260],5AE438;TInplaceEditList.FOnGetPickListitems:TOnGetPickListItems
 005AD585    mov         eax,dword ptr [ebp-4]
 005AD588    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AD58E    mov         dword ptr [ebp-8],eax
 005AD591    mov         eax,dword ptr [ebp-8]
 005AD594    pop         ecx
 005AD595    pop         ecx
 005AD596    pop         ebp
 005AD597    ret
end;*}

//005AD598
{*procedure sub_005AD598(?:?; ?:?; ?:?);
begin
 005AD598    push        ebp
 005AD599    mov         ebp,esp
 005AD59B    add         esp,0FFFFFFE4
 005AD59E    mov         dword ptr [ebp-0C],ecx
 005AD5A1    mov         dword ptr [ebp-8],edx
 005AD5A4    mov         dword ptr [ebp-4],eax
 005AD5A7    mov         eax,dword ptr [ebp-0C]
 005AD5AA    push        eax
 005AD5AB    mov         eax,dword ptr [ebp-4]
 005AD5AE    mov         dword ptr [ebp-1C],eax
 005AD5B1    mov         byte ptr [ebp-18],0B
 005AD5B5    mov         eax,dword ptr [ebp-8]
 005AD5B8    mov         dword ptr [ebp-14],eax
 005AD5BB    mov         byte ptr [ebp-10],0B
 005AD5BF    lea         edx,[ebp-1C]
 005AD5C2    mov         ecx,1
 005AD5C7    mov         eax,5AD5E0;'%s=%s'
 005AD5CC    call        00658FBC
 005AD5D1    mov         esp,ebp
 005AD5D3    pop         ebp
 005AD5D4    ret
end;*}

//005AD5E8
{*function sub_005AD5E8(?:TValueListEditor):?;
begin
 005AD5E8    push        ebp
 005AD5E9    mov         ebp,esp
 005AD5EB    add         esp,0FFFFFFF0
 005AD5EE    push        ebx
 005AD5EF    xor         edx,edx
 005AD5F1    mov         dword ptr [ebp-0C],edx
 005AD5F4    mov         dword ptr [ebp-10],edx
 005AD5F7    mov         dword ptr [ebp-4],eax
 005AD5FA    xor         eax,eax
 005AD5FC    push        ebp
 005AD5FD    push        5AD692
 005AD602    push        dword ptr fs:[eax]
 005AD605    mov         dword ptr fs:[eax],esp
 005AD608    mov         eax,dword ptr [ebp-4]
 005AD60B    call        TValueListEditor.GetStrings
 005AD610    mov         edx,dword ptr [eax]
 005AD612    call        dword ptr [edx+14]
 005AD615    mov         edx,dword ptr [ebp-4]
 005AD618    mov         edx,dword ptr [edx+22C]
 005AD61E    mov         ecx,dword ptr [ebp-4]
 005AD621    sub         edx,dword ptr [ecx+23C]
 005AD627    cmp         eax,edx
>005AD629    jle         005AD66E
 005AD62B    lea         eax,[ebp-0C]
 005AD62E    push        eax
 005AD62F    mov         eax,dword ptr [ebp-4]
 005AD632    mov         ecx,dword ptr [eax+22C]
 005AD638    xor         edx,edx
 005AD63A    mov         eax,dword ptr [ebp-4]
 005AD63D    mov         ebx,dword ptr [eax]
 005AD63F    call        dword ptr [ebx+0F0]
 005AD645    cmp         dword ptr [ebp-0C],0
>005AD649    jne         005AD66E
 005AD64B    lea         eax,[ebp-10]
 005AD64E    push        eax
 005AD64F    mov         eax,dword ptr [ebp-4]
 005AD652    mov         ecx,dword ptr [eax+22C]
 005AD658    mov         edx,1
 005AD65D    mov         eax,dword ptr [ebp-4]
 005AD660    mov         ebx,dword ptr [eax]
 005AD662    call        dword ptr [ebx+0F0]
 005AD668    cmp         dword ptr [ebp-10],0
>005AD66C    je          005AD672
 005AD66E    xor         eax,eax
>005AD670    jmp         005AD674
 005AD672    mov         al,1
 005AD674    mov         byte ptr [ebp-5],al
 005AD677    xor         eax,eax
 005AD679    pop         edx
 005AD67A    pop         ecx
 005AD67B    pop         ecx
 005AD67C    mov         dword ptr fs:[eax],edx
 005AD67F    push        5AD699
 005AD684    lea         eax,[ebp-10]
 005AD687    mov         edx,2
 005AD68C    call        @LStrArrayClr
 005AD691    ret
>005AD692    jmp         @HandleFinally
>005AD697    jmp         005AD684
 005AD699    mov         al,byte ptr [ebp-5]
 005AD69C    pop         ebx
 005AD69D    mov         esp,ebp
 005AD69F    pop         ebp
 005AD6A0    ret
end;*}

//005AD6A4
function TValueListEditor.GetRowCount:Integer;
begin
{*
 005AD6A4    push        ebp
 005AD6A5    mov         ebp,esp
 005AD6A7    add         esp,0FFFFFFF8
 005AD6AA    mov         dword ptr [ebp-4],eax
 005AD6AD    mov         eax,dword ptr [ebp-4]
 005AD6B0    mov         eax,dword ptr [eax+24C]
 005AD6B6    mov         dword ptr [ebp-8],eax
 005AD6B9    mov         eax,dword ptr [ebp-8]
 005AD6BC    pop         ecx
 005AD6BD    pop         ecx
 005AD6BE    pop         ebp
 005AD6BF    ret
*}
end;

//005AD6C0
{*procedure sub_005AD6C0(?:?; ?:?; ?:?);
begin
 005AD6C0    push        ebp
 005AD6C1    mov         ebp,esp
 005AD6C3    add         esp,0FFFFFFEC
 005AD6C6    push        ebx
 005AD6C7    mov         dword ptr [ebp-0C],ecx
 005AD6CA    mov         dword ptr [ebp-8],edx
 005AD6CD    mov         dword ptr [ebp-4],eax
 005AD6D0    cmp         dword ptr [ebp-0C],0
>005AD6D4    jne         005AD71B
 005AD6D6    mov         eax,dword ptr [ebp-4]
 005AD6D9    test        byte ptr [eax+2E1],1;TValueListEditor.DisplayOptions:TDisplayOptions
>005AD6E0    je          005AD71B
 005AD6E2    mov         eax,dword ptr [ebp-4]
 005AD6E5    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD6EB    mov         edx,dword ptr [eax]
 005AD6ED    call        dword ptr [edx+14];@AbstractError
 005AD6F0    cmp         eax,dword ptr [ebp-8]
>005AD6F3    jle         005AD70E
 005AD6F5    mov         ecx,dword ptr [ebp+8]
 005AD6F8    mov         edx,dword ptr [ebp-8]
 005AD6FB    mov         eax,dword ptr [ebp-4]
 005AD6FE    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD704    mov         ebx,dword ptr [eax]
 005AD706    call        dword ptr [ebx+0C];@AbstractError
>005AD709    jmp         005AD79B
 005AD70E    mov         eax,dword ptr [ebp+8]
 005AD711    call        @LStrClr
>005AD716    jmp         005AD79B
 005AD71B    mov         eax,dword ptr [ebp-4]
 005AD71E    call        TValueListEditor.GetStrings
 005AD723    mov         edx,dword ptr [eax]
 005AD725    call        dword ptr [edx+14]
 005AD728    test        eax,eax
>005AD72A    jne         005AD736
 005AD72C    mov         eax,dword ptr [ebp+8]
 005AD72F    call        @LStrClr
>005AD734    jmp         005AD79B
 005AD736    mov         eax,dword ptr [ebp-0C]
 005AD739    mov         edx,dword ptr [ebp-4]
 005AD73C    sub         eax,dword ptr [edx+23C]
 005AD742    mov         dword ptr [ebp-10],eax
 005AD745    cmp         dword ptr [ebp-8],0
>005AD749    jne         005AD760
 005AD74B    mov         eax,dword ptr [ebp-4]
 005AD74E    call        TValueListEditor.GetStrings
 005AD753    mov         ecx,dword ptr [ebp+8]
 005AD756    mov         edx,dword ptr [ebp-10]
 005AD759    call        00647220
>005AD75E    jmp         005AD79B
 005AD760    mov         eax,dword ptr [ebp-4]
 005AD763    call        TValueListEditor.GetStrings
 005AD768    mov         ecx,dword ptr [ebp+8]
 005AD76B    mov         edx,dword ptr [ebp-10]
 005AD76E    mov         ebx,dword ptr [eax]
 005AD770    call        dword ptr [ebx+0C]
 005AD773    mov         edx,dword ptr [ebp+8]
 005AD776    mov         edx,dword ptr [edx]
 005AD778    mov         eax,5AD7AC;'='
 005AD77D    call        @LStrPos
 005AD782    mov         dword ptr [ebp-14],eax
 005AD785    cmp         dword ptr [ebp-14],0
>005AD789    jle         005AD79B
 005AD78B    mov         eax,dword ptr [ebp+8]
 005AD78E    mov         ecx,dword ptr [ebp-14]
 005AD791    mov         edx,1
 005AD796    call        @LStrDelete
 005AD79B    pop         ebx
 005AD79C    mov         esp,ebp
 005AD79E    pop         ebp
 005AD79F    ret         4
end;*}

//005AD7B0
{*procedure sub_005AD7B0(?:?; ?:?; ?:?);
begin
 005AD7B0    push        ebp
 005AD7B1    mov         ebp,esp
 005AD7B3    add         esp,0FFFFFFE4
 005AD7B6    push        ebx
 005AD7B7    xor         ebx,ebx
 005AD7B9    mov         dword ptr [ebp-1C],ebx
 005AD7BC    mov         dword ptr [ebp-18],ebx
 005AD7BF    mov         dword ptr [ebp-14],ebx
 005AD7C2    mov         dword ptr [ebp-0C],ecx
 005AD7C5    mov         dword ptr [ebp-8],edx
 005AD7C8    mov         dword ptr [ebp-4],eax
 005AD7CB    xor         eax,eax
 005AD7CD    push        ebp
 005AD7CE    push        5AD889
 005AD7D3    push        dword ptr fs:[eax]
 005AD7D6    mov         dword ptr fs:[eax],esp
 005AD7D9    mov         eax,dword ptr [ebp-0C]
 005AD7DC    mov         edx,dword ptr [ebp-4]
 005AD7DF    sub         eax,dword ptr [edx+23C]
 005AD7E5    mov         dword ptr [ebp-10],eax
 005AD7E8    cmp         dword ptr [ebp-8],0
>005AD7EC    jne         005AD815
 005AD7EE    lea         eax,[ebp-18]
 005AD7F1    push        eax
 005AD7F2    mov         ecx,dword ptr [ebp-0C]
 005AD7F5    mov         edx,1
 005AD7FA    mov         eax,dword ptr [ebp-4]
 005AD7FD    mov         ebx,dword ptr [eax]
 005AD7FF    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AD805    mov         edx,dword ptr [ebp-18]
 005AD808    lea         ecx,[ebp-14]
 005AD80B    mov         eax,dword ptr [ebp+8]
 005AD80E    call        005AD598
>005AD813    jmp         005AD837
 005AD815    lea         eax,[ebp-1C]
 005AD818    push        eax
 005AD819    mov         ecx,dword ptr [ebp-0C]
 005AD81C    xor         edx,edx
 005AD81E    mov         eax,dword ptr [ebp-4]
 005AD821    mov         ebx,dword ptr [eax]
 005AD823    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AD829    mov         eax,dword ptr [ebp-1C]
 005AD82C    lea         ecx,[ebp-14]
 005AD82F    mov         edx,dword ptr [ebp+8]
 005AD832    call        005AD598
 005AD837    mov         eax,dword ptr [ebp-4]
 005AD83A    call        TValueListEditor.GetStrings
 005AD83F    mov         edx,dword ptr [eax]
 005AD841    call        dword ptr [edx+14]
 005AD844    cmp         eax,dword ptr [ebp-10]
>005AD847    jg          005AD85B
 005AD849    mov         eax,dword ptr [ebp-4]
 005AD84C    call        TValueListEditor.GetStrings
 005AD851    mov         edx,dword ptr [ebp-14]
 005AD854    mov         ecx,dword ptr [eax]
 005AD856    call        dword ptr [ecx+38]
>005AD859    jmp         005AD86E
 005AD85B    mov         eax,dword ptr [ebp-4]
 005AD85E    call        TValueListEditor.GetStrings
 005AD863    mov         ecx,dword ptr [ebp-14]
 005AD866    mov         edx,dword ptr [ebp-10]
 005AD869    mov         ebx,dword ptr [eax]
 005AD86B    call        dword ptr [ebx+20]
 005AD86E    xor         eax,eax
 005AD870    pop         edx
 005AD871    pop         ecx
 005AD872    pop         ecx
 005AD873    mov         dword ptr fs:[eax],edx
 005AD876    push        5AD890
 005AD87B    lea         eax,[ebp-1C]
 005AD87E    mov         edx,3
 005AD883    call        @LStrArrayClr
 005AD888    ret
>005AD889    jmp         @HandleFinally
>005AD88E    jmp         005AD87B
 005AD890    pop         ebx
 005AD891    mov         esp,ebp
 005AD893    pop         ebp
 005AD894    ret         4
end;*}

//005AD898
procedure TValueListEditor.SetDropDownRows(Value:Integer);
begin
{*
 005AD898    push        ebp
 005AD899    mov         ebp,esp
 005AD89B    add         esp,0FFFFFFF8
 005AD89E    mov         dword ptr [ebp-8],edx
 005AD8A1    mov         dword ptr [ebp-4],eax
 005AD8A4    mov         eax,dword ptr [ebp-8]
 005AD8A7    mov         edx,dword ptr [ebp-4]
 005AD8AA    mov         dword ptr [edx+2E4],eax;TValueListEditor.DropDownRows:Integer
 005AD8B0    mov         eax,dword ptr [ebp-4]
 005AD8B3    cmp         dword ptr [eax+2F8],0;TValueListEditor.FEditList:TInplaceEditList
>005AD8BA    je          005AD8CE
 005AD8BC    mov         eax,dword ptr [ebp-4]
 005AD8BF    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AD8C5    mov         edx,dword ptr [ebp-8]
 005AD8C8    mov         dword ptr [eax+258],edx;TInplaceEditList.FDropDownRows:Integer
 005AD8CE    pop         ecx
 005AD8CF    pop         ecx
 005AD8D0    pop         ebp
 005AD8D1    ret
*}
end;

//005AD8D4
{*procedure sub_005AD8D4(?:TValueListEditor; ?:Longint; ?:?);
begin
 005AD8D4    push        ebp
 005AD8D5    mov         ebp,esp
 005AD8D7    add         esp,0FFFFFFF4
 005AD8DA    push        ebx
 005AD8DB    mov         dword ptr [ebp-0C],ecx
 005AD8DE    mov         dword ptr [ebp-8],edx
 005AD8E1    mov         dword ptr [ebp-4],eax
 005AD8E4    mov         eax,dword ptr [ebp-0C]
 005AD8E7    push        eax
 005AD8E8    mov         ecx,dword ptr [ebp-8]
 005AD8EB    xor         edx,edx
 005AD8ED    mov         eax,dword ptr [ebp-4]
 005AD8F0    mov         ebx,dword ptr [eax]
 005AD8F2    call        dword ptr [ebx+0F0]
 005AD8F8    pop         ebx
 005AD8F9    mov         esp,ebp
 005AD8FB    pop         ebp
 005AD8FC    ret
end;*}

//005AD900
procedure TValueListEditor.SetTitleCaptions(Value:TStrings);
begin
{*
 005AD900    push        ebp
 005AD901    mov         ebp,esp
 005AD903    add         esp,0FFFFFFF8
 005AD906    mov         dword ptr [ebp-8],edx
 005AD909    mov         dword ptr [ebp-4],eax
 005AD90C    mov         edx,dword ptr [ebp-8]
 005AD90F    mov         eax,dword ptr [ebp-4]
 005AD912    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD918    mov         ecx,dword ptr [eax]
 005AD91A    call        dword ptr [ecx+8];TStrings.Assign
 005AD91D    mov         eax,dword ptr [ebp-4]
 005AD920    call        005ADF90
 005AD925    pop         ecx
 005AD926    pop         ecx
 005AD927    pop         ebp
 005AD928    ret
*}
end;

//005AD92C
function TValueListEditor.IsStoredTitleCaptions(Value:TStrings):Boolean;
begin
{*
 005AD92C    push        ebp
 005AD92D    mov         ebp,esp
 005AD92F    xor         ecx,ecx
 005AD931    push        ecx
 005AD932    push        ecx
 005AD933    push        ecx
 005AD934    push        ecx
 005AD935    push        ecx
 005AD936    push        ecx
 005AD937    mov         dword ptr [ebp-4],eax
 005AD93A    xor         eax,eax
 005AD93C    push        ebp
 005AD93D    push        5AD9BC
 005AD942    push        dword ptr fs:[eax]
 005AD945    mov         dword ptr fs:[eax],esp
 005AD948    lea         edx,[ebp-0C]
 005AD94B    mov         eax,dword ptr [ebp-4]
 005AD94E    mov         eax,dword ptr [eax+2D8];TValueListEditor.TitleCaptions:TStrings
 005AD954    mov         ecx,dword ptr [eax]
 005AD956    call        dword ptr [ecx+1C];TStrings.sub_006472F8
 005AD959    mov         eax,dword ptr [ebp-0C]
 005AD95C    push        eax
 005AD95D    lea         edx,[ebp-14]
 005AD960    mov         eax,[006E9FDC];^gvar_0063CDC8
 005AD965    call        LoadResString
 005AD96A    push        dword ptr [ebp-14]
 005AD96D    push        5AD9D4;#13+#10
 005AD972    lea         edx,[ebp-18]
 005AD975    mov         eax,[006E9FE0];^gvar_0063CDD0
 005AD97A    call        LoadResString
 005AD97F    push        dword ptr [ebp-18]
 005AD982    push        5AD9D4;#13+#10
 005AD987    lea         eax,[ebp-10]
 005AD98A    mov         edx,4
 005AD98F    call        @LStrCatN
 005AD994    mov         edx,dword ptr [ebp-10]
 005AD997    pop         eax
 005AD998    call        @LStrCmp
 005AD99D    setne       byte ptr [ebp-5]
 005AD9A1    xor         eax,eax
 005AD9A3    pop         edx
 005AD9A4    pop         ecx
 005AD9A5    pop         ecx
 005AD9A6    mov         dword ptr fs:[eax],edx
 005AD9A9    push        5AD9C3
 005AD9AE    lea         eax,[ebp-18]
 005AD9B1    mov         edx,4
 005AD9B6    call        @LStrArrayClr
 005AD9BB    ret
>005AD9BC    jmp         @HandleFinally
>005AD9C1    jmp         005AD9AE
 005AD9C3    mov         al,byte ptr [ebp-5]
 005AD9C6    mov         esp,ebp
 005AD9C8    pop         ebp
 005AD9C9    ret
*}
end;

//005AD9D8
{*function TValueListEditor.GetStrings:?;
begin
 005AD9D8    push        ebp
 005AD9D9    mov         ebp,esp
 005AD9DB    add         esp,0FFFFFFF8
 005AD9DE    mov         dword ptr [ebp-4],eax
 005AD9E1    mov         eax,dword ptr [ebp-4]
 005AD9E4    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AD9EA    mov         dword ptr [ebp-8],eax
 005AD9ED    mov         eax,dword ptr [ebp-8]
 005AD9F0    pop         ecx
 005AD9F1    pop         ecx
 005AD9F2    pop         ebp
 005AD9F3    ret
end;*}

//005AD9F4
procedure TValueListEditor.SetStrings(Value:TStrings);
begin
{*
 005AD9F4    push        ebp
 005AD9F5    mov         ebp,esp
 005AD9F7    add         esp,0FFFFFFF8
 005AD9FA    mov         dword ptr [ebp-8],edx
 005AD9FD    mov         dword ptr [ebp-4],eax
 005ADA00    mov         edx,dword ptr [ebp-8]
 005ADA03    mov         eax,dword ptr [ebp-4]
 005ADA06    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADA0C    mov         ecx,dword ptr [eax]
 005ADA0E    call        dword ptr [ecx+8];TValueListStrings.Assign
 005ADA11    pop         ecx
 005ADA12    pop         ecx
 005ADA13    pop         ebp
 005ADA14    ret
*}
end;

//005ADA18
{*procedure sub_005ADA18(?:?; ?:?);
begin
 005ADA18    push        ebp
 005ADA19    mov         ebp,esp
 005ADA1B    push        ecx
 005ADA1C    mov         byte ptr [ebp-1],al
 005ADA1F    cmp         byte ptr [ebp-1],0
>005ADA23    je          005ADA58
 005ADA25    mov         eax,dword ptr [ebp+8]
 005ADA28    mov         eax,dword ptr [eax-4]
 005ADA2B    call        TValueListEditor.GetRowCount
 005ADA30    cmp         eax,2
>005ADA33    jge         005ADA45
 005ADA35    mov         eax,dword ptr [ebp+8]
 005ADA38    mov         eax,dword ptr [eax-4]
 005ADA3B    mov         edx,2
 005ADA40    call        TDrawGrid.SetRowCount
 005ADA45    mov         eax,dword ptr [ebp+8]
 005ADA48    mov         eax,dword ptr [eax-4]
 005ADA4B    mov         edx,1
 005ADA50    call        TDrawGrid.SetFixedRows
 005ADA55    pop         ecx
 005ADA56    pop         ebp
 005ADA57    ret
 005ADA58    mov         eax,dword ptr [ebp+8]
 005ADA5B    mov         eax,dword ptr [eax-4]
 005ADA5E    xor         edx,edx
 005ADA60    call        TDrawGrid.SetFixedRows
 005ADA65    pop         ecx
 005ADA66    pop         ebp
 005ADA67    ret
end;*}

//005ADA68
procedure TValueListEditor.SetDisplayOptions(Value:TDisplayOptions);
begin
{*
 005ADA68    push        ebp
 005ADA69    mov         ebp,esp
 005ADA6B    add         esp,0FFFFFFF8
 005ADA6E    mov         byte ptr [ebp-5],dl
 005ADA71    mov         dword ptr [ebp-4],eax
 005ADA74    mov         eax,dword ptr [ebp-4]
 005ADA77    test        byte ptr [eax+2E1],1;TValueListEditor.DisplayOptions:TDisplayOptions
 005ADA7E    setne       al
 005ADA81    test        byte ptr [ebp-5],1
 005ADA85    setne       dl
 005ADA88    cmp         al,dl
>005ADA8A    je          005ADA9A
 005ADA8C    push        ebp
 005ADA8D    test        byte ptr [ebp-5],1
 005ADA91    setne       al
 005ADA94    call        005ADA18
 005ADA99    pop         ecx
 005ADA9A    mov         eax,dword ptr [ebp-4]
 005ADA9D    mov         dl,byte ptr [ebp-5]
 005ADAA0    mov         byte ptr [eax+2E1],dl;TValueListEditor.DisplayOptions:TDisplayOptions
 005ADAA6    mov         eax,dword ptr [ebp-4]
 005ADAA9    mov         edx,dword ptr [eax]
 005ADAAB    call        dword ptr [edx+0E4];TValueListEditor.AdjustColWidths
 005ADAB1    mov         eax,dword ptr [ebp-4]
 005ADAB4    call        005ADF90
 005ADAB9    pop         ecx
 005ADABA    pop         ecx
 005ADABB    pop         ebp
 005ADABC    ret
*}
end;

//005ADAC0
procedure TValueListEditor.SetKeyOptions(Value:TKeyOptions);
begin
{*
 005ADAC0    push        ebp
 005ADAC1    mov         ebp,esp
 005ADAC3    add         esp,0FFFFFFF8
 005ADAC6    mov         byte ptr [ebp-5],dl
 005ADAC9    mov         dword ptr [ebp-4],eax
 005ADACC    test        byte ptr [ebp-5],1
>005ADAD0    jne         005ADAEB
 005ADAD2    mov         eax,dword ptr [ebp-4]
 005ADAD5    test        byte ptr [eax+2E0],1;TValueListEditor.KeyOptions:TKeyOptions
>005ADADC    je          005ADAEB
 005ADADE    mov         al,[005ADB50];0x2 gvar_005ADB50
 005ADAE3    not         eax
 005ADAE5    and         al,byte ptr [ebp-5]
 005ADAE8    mov         byte ptr [ebp-5],al
 005ADAEB    test        byte ptr [ebp-5],2
>005ADAEF    je          005ADB08
 005ADAF1    mov         eax,dword ptr [ebp-4]
 005ADAF4    test        byte ptr [eax+2E0],2;TValueListEditor.KeyOptions:TKeyOptions
>005ADAFB    jne         005ADB08
 005ADAFD    mov         al,[005ADB54];0x1 gvar_005ADB54
 005ADB02    or          al,byte ptr [ebp-5]
 005ADB05    mov         byte ptr [ebp-5],al
 005ADB08    test        byte ptr [ebp-5],1
>005ADB0C    jne         005ADB27
 005ADB0E    mov         eax,dword ptr [ebp-4]
 005ADB11    cmp         dword ptr [eax+228],0;TValueListEditor.FCurrent:TGridCoord
>005ADB18    jne         005ADB27
 005ADB1A    mov         edx,1
 005ADB1F    mov         eax,dword ptr [ebp-4]
 005ADB22    call        005B9890
 005ADB27    mov         al,byte ptr [ebp-5]
 005ADB2A    mov         edx,dword ptr [ebp-4]
 005ADB2D    mov         byte ptr [edx+2E0],al;TValueListEditor.KeyOptions:TKeyOptions
 005ADB33    test        byte ptr [ebp-5],1
>005ADB37    je          005ADB4C
 005ADB39    mov         eax,dword ptr [ebp-4]
 005ADB3C    test        byte ptr [eax+1C],1;TValueListEditor.FComponentState:TComponentState
>005ADB40    je          005ADB4C
 005ADB42    xor         edx,edx
 005ADB44    mov         eax,dword ptr [ebp-4]
 005ADB47    call        005B9890
 005ADB4C    pop         ecx
 005ADB4D    pop         ecx
 005ADB4E    pop         ebp
 005ADB4F    ret
*}
end;

//005ADB58
{*procedure TValueListEditor.GetOnStringsChange(?:?);
begin
 005ADB58    push        ebp
 005ADB59    mov         ebp,esp
 005ADB5B    add         esp,0FFFFFFF8
 005ADB5E    mov         dword ptr [ebp-8],edx
 005ADB61    mov         dword ptr [ebp-4],eax
 005ADB64    mov         eax,dword ptr [ebp-8]
 005ADB67    mov         edx,dword ptr [ebp-4]
 005ADB6A    mov         edx,dword ptr [edx+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADB70    mov         ecx,dword ptr [edx+20];TValueListStrings.FOnChange:TNotifyEvent
 005ADB73    mov         dword ptr [eax],ecx
 005ADB75    mov         ecx,dword ptr [edx+24];TValueListStrings.?f24:dword
 005ADB78    mov         dword ptr [eax+4],ecx
 005ADB7B    pop         ecx
 005ADB7C    pop         ecx
 005ADB7D    pop         ebp
 005ADB7E    ret
end;*}

//005ADB80
{*procedure TValueListEditor.GetOnStringsChanging(?:?);
begin
 005ADB80    push        ebp
 005ADB81    mov         ebp,esp
 005ADB83    add         esp,0FFFFFFF8
 005ADB86    mov         dword ptr [ebp-8],edx
 005ADB89    mov         dword ptr [ebp-4],eax
 005ADB8C    mov         eax,dword ptr [ebp-8]
 005ADB8F    mov         edx,dword ptr [ebp-4]
 005ADB92    mov         edx,dword ptr [edx+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADB98    mov         ecx,dword ptr [edx+28];TValueListStrings.FOnChanging:TNotifyEvent
 005ADB9B    mov         dword ptr [eax],ecx
 005ADB9D    mov         ecx,dword ptr [edx+2C];TValueListStrings.?f2C:dword
 005ADBA0    mov         dword ptr [eax+4],ecx
 005ADBA3    pop         ecx
 005ADBA4    pop         ecx
 005ADBA5    pop         ebp
 005ADBA6    ret
end;*}

//005ADBA8
{*procedure TValueListEditor.SetOnStringsChange(Value:TNotifyEvent; ?:?; ?:?);
begin
 005ADBA8    push        ebp
 005ADBA9    mov         ebp,esp
 005ADBAB    push        ecx
 005ADBAC    mov         dword ptr [ebp-4],eax
 005ADBAF    mov         eax,dword ptr [ebp-4]
 005ADBB2    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADBB8    mov         edx,dword ptr [ebp+8]
 005ADBBB    mov         dword ptr [eax+20],edx;TValueListStrings.FOnChange:TNotifyEvent
 005ADBBE    mov         edx,dword ptr [ebp+0C]
 005ADBC1    mov         dword ptr [eax+24],edx;TValueListStrings.?f24:dword
 005ADBC4    pop         ecx
 005ADBC5    pop         ebp
 005ADBC6    ret         8
end;*}

//005ADBCC
{*procedure TValueListEditor.SetOnStringsChanging(Value:TNotifyEvent; ?:?; ?:?);
begin
 005ADBCC    push        ebp
 005ADBCD    mov         ebp,esp
 005ADBCF    push        ecx
 005ADBD0    mov         dword ptr [ebp-4],eax
 005ADBD3    mov         eax,dword ptr [ebp-4]
 005ADBD6    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADBDC    mov         edx,dword ptr [ebp+8]
 005ADBDF    mov         dword ptr [eax+28],edx;TValueListStrings.FOnChanging:TNotifyEvent
 005ADBE2    mov         edx,dword ptr [ebp+0C]
 005ADBE5    mov         dword ptr [eax+2C],edx;TValueListStrings.?f2C:dword
 005ADBE8    pop         ecx
 005ADBE9    pop         ebp
 005ADBEA    ret         8
end;*}

//005ADBF0
{*procedure TValueListEditor.SetOnEditButtonClick(Value:TNotifyEvent; ?:?; ?:?);
begin
 005ADBF0    push        ebp
 005ADBF1    mov         ebp,esp
 005ADBF3    push        ecx
 005ADBF4    mov         dword ptr [ebp-4],eax
 005ADBF7    mov         eax,dword ptr [ebp-4]
 005ADBFA    mov         edx,dword ptr [ebp+8]
 005ADBFD    mov         dword ptr [eax+308],edx;TValueListEditor.OnEditButtonClick:TNotifyEvent
 005ADC03    mov         edx,dword ptr [ebp+0C]
 005ADC06    mov         dword ptr [eax+30C],edx;TValueListEditor.?f30C:dword
 005ADC0C    mov         eax,dword ptr [ebp-4]
 005ADC0F    cmp         dword ptr [eax+2F8],0;TValueListEditor.FEditList:TInplaceEditList
>005ADC16    je          005ADC3C
 005ADC18    mov         eax,dword ptr [ebp-4]
 005ADC1B    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005ADC21    mov         edx,dword ptr [ebp-4]
 005ADC24    mov         ecx,dword ptr [edx+308];TValueListEditor.OnEditButtonClick:TNotifyEvent
 005ADC2A    mov         dword ptr [eax+268],ecx;TInplaceEditList.FOnEditButtonClick:TNotifyEvent
 005ADC30    mov         ecx,dword ptr [edx+30C];TValueListEditor.?f30C:dword
 005ADC36    mov         dword ptr [eax+26C],ecx;TInplaceEditList.?f26C:dword
 005ADC3C    pop         ecx
 005ADC3D    pop         ebp
 005ADC3E    ret         8
end;*}

//005ADC44
{*procedure TValueListEditor.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%(?:?; ?:?; ?:?; ?:?);
begin
 005ADC44    push        ebp
 005ADC45    mov         ebp,esp
 005ADC47    add         esp,0FFFFFFCC
 005ADC4A    push        ebx
 005ADC4B    push        esi
 005ADC4C    push        edi
 005ADC4D    xor         ebx,ebx
 005ADC4F    mov         dword ptr [ebp-34],ebx
 005ADC52    mov         dword ptr [ebp-30],ebx
 005ADC55    mov         dword ptr [ebp-2C],ebx
 005ADC58    mov         dword ptr [ebp-28],ebx
 005ADC5B    mov         dword ptr [ebp-10],ebx
 005ADC5E    mov         esi,dword ptr [ebp+0C]
 005ADC61    lea         edi,[ebp-24]
 005ADC64    movs        dword ptr [edi],dword ptr [esi]
 005ADC65    movs        dword ptr [edi],dword ptr [esi]
 005ADC66    movs        dword ptr [edi],dword ptr [esi]
 005ADC67    movs        dword ptr [edi],dword ptr [esi]
 005ADC68    mov         dword ptr [ebp-0C],ecx
 005ADC6B    mov         dword ptr [ebp-8],edx
 005ADC6E    mov         dword ptr [ebp-4],eax
 005ADC71    xor         eax,eax
 005ADC73    push        ebp
 005ADC74    push        5ADD61
 005ADC79    push        dword ptr fs:[eax]
 005ADC7C    mov         dword ptr fs:[eax],esp
 005ADC7F    mov         eax,dword ptr [ebp-4]
 005ADC82    cmp         byte ptr [eax+28C],0;TValueListEditor.FDefaultDrawing:Boolean
>005ADC89    je          005ADD2D
 005ADC8F    cmp         dword ptr [ebp-8],0
>005ADC93    jne         005ADCD2
 005ADC95    mov         eax,dword ptr [ebp-4]
 005ADC98    mov         eax,dword ptr [eax+23C];TValueListEditor.FFixedRows:Integer
 005ADC9E    dec         eax
 005ADC9F    cmp         eax,dword ptr [ebp-0C]
>005ADCA2    jge         005ADCD2
 005ADCA4    lea         eax,[ebp-34]
 005ADCA7    mov         edx,dword ptr [ebp-0C]
 005ADCAA    mov         ecx,dword ptr [ebp-4]
 005ADCAD    sub         edx,dword ptr [ecx+23C]
 005ADCB3    mov         cl,0FC
 005ADCB5    call        0066D574
 005ADCBA    lea         edx,[ebp-34]
 005ADCBD    xor         ecx,ecx
 005ADCBF    mov         eax,dword ptr [ebp-4]
 005ADCC2    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005ADCC8    call        005AF3B0
 005ADCCD    mov         dword ptr [ebp-14],eax
>005ADCD0    jmp         005ADCD7
 005ADCD2    xor         eax,eax
 005ADCD4    mov         dword ptr [ebp-14],eax
 005ADCD7    cmp         dword ptr [ebp-14],0
>005ADCDB    je          005ADCF6
 005ADCDD    mov         eax,dword ptr [ebp-14]
 005ADCE0    cmp         dword ptr [eax+1C],0
>005ADCE4    je          005ADCF6
 005ADCE6    lea         eax,[ebp-10]
 005ADCE9    mov         edx,dword ptr [ebp-14]
 005ADCEC    mov         edx,dword ptr [edx+1C]
 005ADCEF    call        @LStrLAsg
>005ADCF4    jmp         005ADD0B
 005ADCF6    lea         eax,[ebp-10]
 005ADCF9    push        eax
 005ADCFA    mov         ecx,dword ptr [ebp-0C]
 005ADCFD    mov         edx,dword ptr [ebp-8]
 005ADD00    mov         eax,dword ptr [ebp-4]
 005ADD03    mov         ebx,dword ptr [eax]
 005ADD05    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005ADD0B    mov         eax,dword ptr [ebp-20]
 005ADD0E    add         eax,2
 005ADD11    push        eax
 005ADD12    mov         eax,dword ptr [ebp-10]
 005ADD15    push        eax
 005ADD16    mov         ecx,dword ptr [ebp-24]
 005ADD19    add         ecx,2
 005ADD1C    lea         edx,[ebp-24]
 005ADD1F    mov         eax,dword ptr [ebp-4]
 005ADD22    mov         eax,dword ptr [eax+208];TValueListEditor...................................................
 005ADD28    call        005C1648
 005ADD2D    lea         eax,[ebp-24]
 005ADD30    push        eax
 005ADD31    mov         al,byte ptr [ebp+8]
 005ADD34    push        eax
 005ADD35    mov         ecx,dword ptr [ebp-0C]
 005ADD38    mov         edx,dword ptr [ebp-8]
 005ADD3B    mov         eax,dword ptr [ebp-4]
 005ADD3E    call        TCustomDrawGrid.@TCCalendar@DrawCell$qqriirx11Types@TRect42System@%Set$t14Grids@Grids__3$iuc$0$iuc$2%
 005ADD43    xor         eax,eax
 005ADD45    pop         edx
 005ADD46    pop         ecx
 005ADD47    pop         ecx
 005ADD48    mov         dword ptr fs:[eax],edx
 005ADD4B    push        5ADD68
 005ADD50    lea         eax,[ebp-34]
 005ADD53    call        @VarClr
 005ADD58    lea         eax,[ebp-10]
 005ADD5B    call        @LStrClr
 005ADD60    ret
>005ADD61    jmp         @HandleFinally
>005ADD66    jmp         005ADD50
 005ADD68    pop         edi
 005ADD69    pop         esi
 005ADD6A    pop         ebx
 005ADD6B    mov         esp,ebp
 005ADD6D    pop         ebp
 005ADD6E    ret         8
end;*}

//005ADD74
procedure TValueListEditor.AdjustColWidths;
begin
{*
 005ADD74    push        ebp
 005ADD75    mov         ebp,esp
 005ADD77    push        ecx
 005ADD78    push        ebx
 005ADD79    mov         dword ptr [ebp-4],eax
 005ADD7C    mov         eax,dword ptr [ebp-4]
 005ADD7F    cmp         byte ptr [eax+2ED],0
>005ADD86    jne         005ADEA9
 005ADD8C    mov         eax,dword ptr [ebp-4]
 005ADD8F    call        TWinControl.HandleAllocated
 005ADD94    test        al,al
>005ADD96    je          005ADEA9
 005ADD9C    mov         eax,dword ptr [ebp-4]
 005ADD9F    cmp         byte ptr [eax+1A6],0
>005ADDA6    je          005ADEA9
 005ADDAC    mov         eax,dword ptr [ebp-4]
 005ADDAF    test        byte ptr [eax+2E1],2
>005ADDB6    je          005ADEA9
 005ADDBC    mov         eax,dword ptr [ebp-4]
 005ADDBF    mov         byte ptr [eax+2ED],1
 005ADDC6    xor         eax,eax
 005ADDC8    push        ebp
 005ADDC9    push        5ADEA2
 005ADDCE    push        dword ptr fs:[eax]
 005ADDD1    mov         dword ptr fs:[eax],esp
 005ADDD4    xor         edx,edx
 005ADDD6    mov         eax,dword ptr [ebp-4]
 005ADDD9    call        TCustomGrid.GetColWidths
 005ADDDE    mov         ebx,eax
 005ADDE0    mov         edx,1
 005ADDE5    mov         eax,dword ptr [ebp-4]
 005ADDE8    call        TCustomGrid.GetColWidths
 005ADDED    add         ebx,eax
 005ADDEF    mov         eax,dword ptr [ebp-4]
 005ADDF2    call        TControl.GetClientWidth
 005ADDF7    sub         eax,2
 005ADDFA    cmp         ebx,eax
>005ADDFC    je          005ADE8A
 005ADE02    mov         eax,dword ptr [ebp-4]
 005ADE05    test        byte ptr [eax+2E1],4
>005ADE0C    je          005ADE38
 005ADE0E    xor         edx,edx
 005ADE10    mov         eax,dword ptr [ebp-4]
 005ADE13    call        TCustomGrid.GetColWidths
 005ADE18    push        eax
 005ADE19    mov         eax,dword ptr [ebp-4]
 005ADE1C    call        TControl.GetClientWidth
 005ADE21    mov         ecx,eax
 005ADE23    pop         eax
 005ADE24    sub         ecx,eax
 005ADE26    sub         ecx,2
 005ADE29    mov         edx,1
 005ADE2E    mov         eax,dword ptr [ebp-4]
 005ADE31    call        TCustomGrid.SetColWidths
>005ADE36    jmp         005ADE8A
 005ADE38    mov         eax,dword ptr [ebp-4]
 005ADE3B    call        TControl.GetClientWidth
 005ADE40    mov         ecx,eax
 005ADE42    sub         ecx,2
 005ADE45    sar         ecx,1
>005ADE47    jns         005ADE4C
 005ADE49    adc         ecx,0
 005ADE4C    xor         edx,edx
 005ADE4E    mov         eax,dword ptr [ebp-4]
 005ADE51    call        TCustomGrid.SetColWidths
 005ADE56    xor         edx,edx
 005ADE58    mov         eax,dword ptr [ebp-4]
 005ADE5B    call        TCustomGrid.GetColWidths
 005ADE60    mov         ebx,eax
 005ADE62    mov         eax,dword ptr [ebp-4]
 005ADE65    call        TControl.GetClientWidth
 005ADE6A    sub         eax,2
 005ADE6D    and         eax,80000001
>005ADE72    jns         005ADE79
 005ADE74    dec         eax
 005ADE75    or          eax,0FFFFFFFE
 005ADE78    inc         eax
 005ADE79    add         ebx,eax
 005ADE7B    mov         ecx,ebx
 005ADE7D    mov         edx,1
 005ADE82    mov         eax,dword ptr [ebp-4]
 005ADE85    call        TCustomGrid.SetColWidths
 005ADE8A    xor         eax,eax
 005ADE8C    pop         edx
 005ADE8D    pop         ecx
 005ADE8E    pop         ecx
 005ADE8F    mov         dword ptr fs:[eax],edx
 005ADE92    push        5ADEA9
 005ADE97    mov         eax,dword ptr [ebp-4]
 005ADE9A    mov         byte ptr [eax+2ED],0
 005ADEA1    ret
>005ADEA2    jmp         @HandleFinally
>005ADEA7    jmp         005ADE97
 005ADEA9    pop         ebx
 005ADEAA    pop         ecx
 005ADEAB    pop         ebp
 005ADEAC    ret
*}
end;

//005ADEB0
procedure sub_005ADEB0;
begin
{*
 005ADEB0    push        ebp
 005ADEB1    mov         ebp,esp
 005ADEB3    add         esp,0FFFFFFF8
 005ADEB6    mov         dword ptr [ebp-4],eax
 005ADEB9    mov         eax,dword ptr [ebp-4]
 005ADEBC    call        TValueListEditor.GetStrings
 005ADEC1    mov         edx,dword ptr [eax]
 005ADEC3    call        dword ptr [edx+14]
 005ADEC6    test        eax,eax
>005ADEC8    jle         005ADEE5
 005ADECA    mov         eax,dword ptr [ebp-4]
 005ADECD    call        TValueListEditor.GetStrings
 005ADED2    mov         edx,dword ptr [eax]
 005ADED4    call        dword ptr [edx+14]
 005ADED7    mov         edx,dword ptr [ebp-4]
 005ADEDA    add         eax,dword ptr [edx+23C];TValueListEditor.FFixedRows:Integer
 005ADEE0    mov         dword ptr [ebp-8],eax
>005ADEE3    jmp         005ADEF2
 005ADEE5    mov         eax,dword ptr [ebp-4]
 005ADEE8    mov         eax,dword ptr [eax+23C];TValueListEditor.FFixedRows:Integer
 005ADEEE    inc         eax
 005ADEEF    mov         dword ptr [ebp-8],eax
 005ADEF2    mov         eax,dword ptr [ebp-4]
 005ADEF5    call        TValueListEditor.GetRowCount
 005ADEFA    cmp         eax,dword ptr [ebp-8]
>005ADEFD    je          005ADF49
 005ADEFF    mov         eax,dword ptr [ebp-8]
 005ADF02    mov         edx,dword ptr [ebp-4]
 005ADF05    cmp         eax,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
>005ADF0B    jge         005ADF19
 005ADF0D    mov         edx,dword ptr [ebp-8]
 005ADF10    dec         edx
 005ADF11    mov         eax,dword ptr [ebp-4]
 005ADF14    call        005B9D64
 005ADF19    mov         eax,dword ptr [ebp-4]
 005ADF1C    test        byte ptr [eax+2E1],1;TValueListEditor.DisplayOptions:TDisplayOptions
>005ADF23    je          005ADF3E
 005ADF25    mov         eax,dword ptr [ebp-4]
 005ADF28    cmp         dword ptr [eax+22C],0;TValueListEditor.FCurrent:Longint
>005ADF2F    jne         005ADF3E
 005ADF31    mov         edx,1
 005ADF36    mov         eax,dword ptr [ebp-4]
 005ADF39    call        005B9D64
 005ADF3E    mov         edx,dword ptr [ebp-8]
 005ADF41    mov         eax,dword ptr [ebp-4]
 005ADF44    call        TDrawGrid.SetRowCount
 005ADF49    pop         ecx
 005ADF4A    pop         ecx
 005ADF4B    pop         ebp
 005ADF4C    ret
*}
end;

//005ADF50
procedure TValueListEditor.sub_005ADF50;
begin
{*
 005ADF50    push        ebp
 005ADF51    mov         ebp,esp
 005ADF53    push        ecx
 005ADF54    mov         dword ptr [ebp-4],eax
 005ADF57    mov         eax,dword ptr [ebp-4]
 005ADF5A    call        TControl.sub_005F265C
 005ADF5F    mov         eax,dword ptr [ebp-4]
 005ADF62    mov         edx,dword ptr [eax]
 005ADF64    call        dword ptr [edx+0E4];TValueListEditor.AdjustColWidths
 005ADF6A    pop         ecx
 005ADF6B    pop         ebp
 005ADF6C    ret
*}
end;

//005ADF70
procedure TValueListEditor.sub_005ADF70;
begin
{*
 005ADF70    push        ebp
 005ADF71    mov         ebp,esp
 005ADF73    push        ecx
 005ADF74    mov         dword ptr [ebp-4],eax
 005ADF77    mov         eax,dword ptr [ebp-4]
 005ADF7A    mov         edx,dword ptr [eax]
 005ADF7C    call        dword ptr [edx+0E4];TValueListEditor.AdjustColWidths
 005ADF82    mov         eax,dword ptr [ebp-4]
 005ADF85    call        TCustomGrid.sub_005BA920
 005ADF8A    pop         ecx
 005ADF8B    pop         ebp
 005ADF8C    ret
*}
end;

//005ADF90
procedure sub_005ADF90(?:TValueListEditor);
begin
{*
 005ADF90    push        ebp
 005ADF91    mov         ebp,esp
 005ADF93    push        ecx
 005ADF94    mov         dword ptr [ebp-4],eax
 005ADF97    mov         eax,dword ptr [ebp-4]
 005ADF9A    cmp         dword ptr [eax+2F0],0;TValueListEditor.FEditUpdate:Integer
>005ADFA1    jne         005ADFBE
 005ADFA3    mov         eax,dword ptr [ebp-4]
 005ADFA6    mov         edx,dword ptr [eax]
 005ADFA8    call        dword ptr [edx+0E8];TValueListEditor.sub_005ADEB0
 005ADFAE    mov         eax,dword ptr [ebp-4]
 005ADFB1    mov         edx,dword ptr [eax]
 005ADFB3    call        dword ptr [edx+7C];TWinControl.Invalidate
 005ADFB6    mov         eax,dword ptr [ebp-4]
 005ADFB9    call        005B4B08
 005ADFBE    pop         ecx
 005ADFBF    pop         ebp
 005ADFC0    ret
*}
end;

//005ADFC4
procedure TValueListEditor.sub_005ADFC4;
begin
{*
 005ADFC4    push        ebp
 005ADFC5    mov         ebp,esp
 005ADFC7    push        ecx
 005ADFC8    mov         dword ptr [ebp-4],eax
 005ADFCB    mov         eax,dword ptr [ebp-4]
 005ADFCE    call        TCustomGrid.HideEdit
 005ADFD3    pop         ecx
 005ADFD4    pop         ebp
 005ADFD5    ret
*}
end;

//005ADFD8
procedure TValueListEditor.sub_005ADFD8;
begin
{*
 005ADFD8    push        ebp
 005ADFD9    mov         ebp,esp
 005ADFDB    xor         ecx,ecx
 005ADFDD    push        ecx
 005ADFDE    push        ecx
 005ADFDF    push        ecx
 005ADFE0    push        ecx
 005ADFE1    push        ecx
 005ADFE2    push        ecx
 005ADFE3    push        ecx
 005ADFE4    mov         dword ptr [ebp-4],eax
 005ADFE7    xor         eax,eax
 005ADFE9    push        ebp
 005ADFEA    push        5AE05F
 005ADFEF    push        dword ptr fs:[eax]
 005ADFF2    mov         dword ptr fs:[eax],esp
 005ADFF5    mov         eax,dword ptr [ebp-4]
 005ADFF8    call        TCustomGrid.sub_005B48F0
 005ADFFD    mov         byte ptr [ebp-5],al
 005AE000    cmp         byte ptr [ebp-5],0
>005AE004    je          005AE049
 005AE006    lea         eax,[ebp-1C]
 005AE009    mov         edx,dword ptr [ebp-4]
 005AE00C    mov         edx,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
 005AE012    mov         ecx,dword ptr [ebp-4]
 005AE015    sub         edx,dword ptr [ecx+23C]
 005AE01B    mov         cl,0FC
 005AE01D    call        0066D574
 005AE022    lea         edx,[ebp-1C]
 005AE025    xor         ecx,ecx
 005AE027    mov         eax,dword ptr [ebp-4]
 005AE02A    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AE030    call        005AF3B0
 005AE035    mov         dword ptr [ebp-0C],eax
 005AE038    cmp         dword ptr [ebp-0C],0
>005AE03C    je          005AE049
 005AE03E    mov         eax,dword ptr [ebp-0C]
 005AE041    mov         al,byte ptr [eax+18]
 005AE044    xor         al,1
 005AE046    mov         byte ptr [ebp-5],al
 005AE049    xor         eax,eax
 005AE04B    pop         edx
 005AE04C    pop         ecx
 005AE04D    pop         ecx
 005AE04E    mov         dword ptr fs:[eax],edx
 005AE051    push        5AE066
 005AE056    lea         eax,[ebp-1C]
 005AE059    call        @VarClr
 005AE05E    ret
>005AE05F    jmp         @HandleFinally
>005AE064    jmp         005AE056
 005AE066    mov         al,byte ptr [ebp-5]
 005AE069    mov         esp,ebp
 005AE06B    pop         ebp
 005AE06C    ret
*}
end;

//005AE070
procedure sub_005AE070(?:TValueListEditor);
begin
{*
 005AE070    push        ebp
 005AE071    mov         ebp,esp
 005AE073    push        ecx
 005AE074    mov         dword ptr [ebp-4],eax
 005AE077    mov         eax,dword ptr [ebp-4]
 005AE07A    cmp         dword ptr [eax+2F0],0
>005AE081    jne         005AE099
 005AE083    mov         eax,dword ptr [ebp-4]
 005AE086    call        TValueListEditor.GetStrings
 005AE08B    mov         edx,dword ptr [eax]
 005AE08D    call        dword ptr [edx+14]
 005AE090    mov         edx,dword ptr [ebp-4]
 005AE093    mov         dword ptr [edx+2F4],eax
 005AE099    mov         eax,dword ptr [ebp-4]
 005AE09C    inc         dword ptr [eax+2F0]
 005AE0A2    pop         ecx
 005AE0A3    pop         ebp
 005AE0A4    ret
*}
end;

//005AE0A8
procedure sub_005AE0A8(?:TValueListEditor);
begin
{*
 005AE0A8    push        ebp
 005AE0A9    mov         ebp,esp
 005AE0AB    push        ecx
 005AE0AC    mov         dword ptr [ebp-4],eax
 005AE0AF    mov         eax,dword ptr [ebp-4]
 005AE0B2    dec         dword ptr [eax+2F0]
 005AE0B8    mov         eax,dword ptr [ebp-4]
 005AE0BB    cmp         dword ptr [eax+2F0],0
>005AE0C2    jne         005AE0E4
 005AE0C4    mov         eax,dword ptr [ebp-4]
 005AE0C7    call        TValueListEditor.GetStrings
 005AE0CC    mov         edx,dword ptr [eax]
 005AE0CE    call        dword ptr [edx+14]
 005AE0D1    mov         edx,dword ptr [ebp-4]
 005AE0D4    cmp         eax,dword ptr [edx+2F4]
>005AE0DA    je          005AE0E4
 005AE0DC    mov         eax,dword ptr [ebp-4]
 005AE0DF    call        005ADF90
 005AE0E4    pop         ecx
 005AE0E5    pop         ebp
 005AE0E6    ret
*}
end;

//005AE0E8
{*procedure TValueListEditor.sub_005AE0E8(?:?; ?:?; ?:?);
begin
 005AE0E8    push        ebp
 005AE0E9    mov         ebp,esp
 005AE0EB    add         esp,0FFFFFFE0
 005AE0EE    push        ebx
 005AE0EF    xor         ebx,ebx
 005AE0F1    mov         dword ptr [ebp-20],ebx
 005AE0F4    mov         dword ptr [ebp-1C],ebx
 005AE0F7    mov         dword ptr [ebp-18],ebx
 005AE0FA    mov         dword ptr [ebp-14],ebx
 005AE0FD    mov         dword ptr [ebp-0C],ecx
 005AE100    mov         dword ptr [ebp-8],edx
 005AE103    mov         dword ptr [ebp-4],eax
 005AE106    xor         eax,eax
 005AE108    push        ebp
 005AE109    push        5AE1A4
 005AE10E    push        dword ptr fs:[eax]
 005AE111    mov         dword ptr fs:[eax],esp
 005AE114    lea         eax,[ebp-20]
 005AE117    mov         edx,dword ptr [ebp-4]
 005AE11A    mov         edx,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
 005AE120    mov         ecx,dword ptr [ebp-4]
 005AE123    sub         edx,dword ptr [ecx+23C]
 005AE129    mov         cl,0FC
 005AE12B    call        0066D574
 005AE130    lea         edx,[ebp-20]
 005AE133    xor         ecx,ecx
 005AE135    mov         eax,dword ptr [ebp-4]
 005AE138    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AE13E    call        005AF3B0
 005AE143    mov         dword ptr [ebp-10],eax
 005AE146    cmp         dword ptr [ebp-10],0
>005AE14A    je          005AE15C
 005AE14C    mov         eax,dword ptr [ebp+8]
 005AE14F    mov         edx,dword ptr [ebp-10]
 005AE152    mov         edx,dword ptr [edx+8]
 005AE155    call        @LStrAsg
>005AE15A    jmp         005AE164
 005AE15C    mov         eax,dword ptr [ebp+8]
 005AE15F    call        @LStrClr
 005AE164    mov         eax,dword ptr [ebp-4]
 005AE167    cmp         word ptr [eax+2AA],0;TValueListEditor.?f2AA:word
>005AE16F    je          005AE18E
 005AE171    mov         eax,dword ptr [ebp-0C]
 005AE174    push        eax
 005AE175    mov         eax,dword ptr [ebp+8]
 005AE178    push        eax
 005AE179    mov         ebx,dword ptr [ebp-4]
 005AE17C    mov         ecx,dword ptr [ebp-8]
 005AE17F    mov         edx,dword ptr [ebp-4]
 005AE182    mov         eax,dword ptr [ebx+2AC];TValueListEditor.?f2AC:dword
 005AE188    call        dword ptr [ebx+2A8];TValueListEditor.FOnGetEditMask
 005AE18E    xor         eax,eax
 005AE190    pop         edx
 005AE191    pop         ecx
 005AE192    pop         ecx
 005AE193    mov         dword ptr fs:[eax],edx
 005AE196    push        5AE1AB
 005AE19B    lea         eax,[ebp-20]
 005AE19E    call        @VarClr
 005AE1A3    ret
>005AE1A4    jmp         @HandleFinally
>005AE1A9    jmp         005AE19B
 005AE1AB    pop         ebx
 005AE1AC    mov         esp,ebp
 005AE1AE    pop         ebp
 005AE1AF    ret         4
end;*}

//005AE1B4
{*procedure TValueListEditor.sub_005AE1B4(?:?; ?:?);
begin
 005AE1B4    push        ebp
 005AE1B5    mov         ebp,esp
 005AE1B7    add         esp,0FFFFFFDC
 005AE1BA    push        ebx
 005AE1BB    xor         ebx,ebx
 005AE1BD    mov         dword ptr [ebp-24],ebx
 005AE1C0    mov         dword ptr [ebp-20],ebx
 005AE1C3    mov         dword ptr [ebp-1C],ebx
 005AE1C6    mov         dword ptr [ebp-18],ebx
 005AE1C9    mov         dword ptr [ebp-14],ecx
 005AE1CC    mov         dword ptr [ebp-8],edx
 005AE1CF    mov         dword ptr [ebp-4],eax
 005AE1D2    xor         eax,eax
 005AE1D4    push        ebp
 005AE1D5    push        5AE272
 005AE1DA    push        dword ptr fs:[eax]
 005AE1DD    mov         dword ptr fs:[eax],esp
 005AE1E0    mov         byte ptr [ebp-9],0
 005AE1E4    cmp         dword ptr [ebp-8],0
>005AE1E8    je          005AE25C
 005AE1EA    lea         eax,[ebp-24]
 005AE1ED    mov         edx,dword ptr [ebp-4]
 005AE1F0    mov         edx,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
 005AE1F6    mov         ecx,dword ptr [ebp-4]
 005AE1F9    sub         edx,dword ptr [ecx+23C]
 005AE1FF    mov         cl,0FC
 005AE201    call        0066D574
 005AE206    lea         edx,[ebp-24]
 005AE209    xor         ecx,ecx
 005AE20B    mov         eax,dword ptr [ebp-4]
 005AE20E    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AE214    call        005AF3B0
 005AE219    mov         dword ptr [ebp-10],eax
 005AE21C    cmp         dword ptr [ebp-10],0
>005AE220    je          005AE236
 005AE222    mov         eax,dword ptr [ebp-10]
 005AE225    cmp         byte ptr [eax+0C],0
>005AE229    je          005AE236
 005AE22B    mov         eax,dword ptr [ebp-10]
 005AE22E    mov         al,byte ptr [eax+0C]
 005AE231    mov         byte ptr [ebp-9],al
>005AE234    jmp         005AE25C
 005AE236    mov         eax,dword ptr [ebp-4]
 005AE239    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AE23F    call        005BD1F4
 005AE244    mov         edx,dword ptr [eax+218]
 005AE24A    mov         cl,1
 005AE24C    mov         eax,dword ptr [ebp-4]
 005AE24F    call        005AE4FC
 005AE254    test        al,al
>005AE256    je          005AE25C
 005AE258    mov         byte ptr [ebp-9],2
 005AE25C    xor         eax,eax
 005AE25E    pop         edx
 005AE25F    pop         ecx
 005AE260    pop         ecx
 005AE261    mov         dword ptr fs:[eax],edx
 005AE264    push        5AE279
 005AE269    lea         eax,[ebp-24]
 005AE26C    call        @VarClr
 005AE271    ret
>005AE272    jmp         @HandleFinally
>005AE277    jmp         005AE269
 005AE279    mov         al,byte ptr [ebp-9]
 005AE27C    pop         ebx
 005AE27D    mov         esp,ebp
 005AE27F    pop         ebp
 005AE280    ret
end;*}

//005AE284
{*procedure TValueListEditor.sub_005AE284(?:?; ?:?; ?:?);
begin
 005AE284    push        ebp
 005AE285    mov         ebp,esp
 005AE287    add         esp,0FFFFFFF4
 005AE28A    push        ebx
 005AE28B    mov         dword ptr [ebp-0C],ecx
 005AE28E    mov         dword ptr [ebp-8],edx
 005AE291    mov         dword ptr [ebp-4],eax
 005AE294    mov         eax,dword ptr [ebp+8]
 005AE297    push        eax
 005AE298    mov         ecx,dword ptr [ebp-0C]
 005AE29B    mov         edx,dword ptr [ebp-8]
 005AE29E    mov         eax,dword ptr [ebp-4]
 005AE2A1    mov         ebx,dword ptr [eax]
 005AE2A3    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AE2A9    mov         eax,dword ptr [ebp-4]
 005AE2AC    cmp         word ptr [eax+2B2],0;TValueListEditor.?f2B2:word
>005AE2B4    je          005AE2D3
 005AE2B6    mov         eax,dword ptr [ebp-0C]
 005AE2B9    push        eax
 005AE2BA    mov         eax,dword ptr [ebp+8]
 005AE2BD    push        eax
 005AE2BE    mov         ebx,dword ptr [ebp-4]
 005AE2C1    mov         ecx,dword ptr [ebp-8]
 005AE2C4    mov         edx,dword ptr [ebp-4]
 005AE2C7    mov         eax,dword ptr [ebx+2B4];TValueListEditor.?f2B4:dword
 005AE2CD    call        dword ptr [ebx+2B0];TValueListEditor.FOnGetEditText
 005AE2D3    pop         ebx
 005AE2D4    mov         esp,ebp
 005AE2D6    pop         ebp
 005AE2D7    ret         4
end;*}

//005AE2DC
procedure TValueListEditor.SetEditText(ACol:Longint; ARow:Longint; Value:AnsiString);
begin
{*
 005AE2DC    push        ebp
 005AE2DD    mov         ebp,esp
 005AE2DF    add         esp,0FFFFFFF0
 005AE2E2    push        ebx
 005AE2E3    xor         ebx,ebx
 005AE2E5    mov         dword ptr [ebp-10],ebx
 005AE2E8    mov         dword ptr [ebp-0C],ecx
 005AE2EB    mov         dword ptr [ebp-8],edx
 005AE2EE    mov         dword ptr [ebp-4],eax
 005AE2F1    xor         eax,eax
 005AE2F3    push        ebp
 005AE2F4    push        5AE429
 005AE2F9    push        dword ptr fs:[eax]
 005AE2FC    mov         dword ptr fs:[eax],esp
 005AE2FF    mov         eax,dword ptr [ebp+8]
 005AE302    push        eax
 005AE303    mov         ecx,dword ptr [ebp-0C]
 005AE306    mov         edx,dword ptr [ebp-8]
 005AE309    mov         eax,dword ptr [ebp-4]
 005AE30C    call        TCustomDrawGrid.SetEditText
 005AE311    mov         eax,dword ptr [ebp-4]
 005AE314    call        005AE070
 005AE319    xor         eax,eax
 005AE31B    push        ebp
 005AE31C    push        5AE40C
 005AE321    push        dword ptr fs:[eax]
 005AE324    mov         dword ptr fs:[eax],esp
 005AE327    mov         eax,dword ptr [ebp-4]
 005AE32A    call        TValueListEditor.GetStrings
 005AE32F    mov         edx,dword ptr [eax]
 005AE331    call        dword ptr [edx+14]
 005AE334    mov         edx,dword ptr [ebp-4]
 005AE337    mov         ecx,dword ptr [ebp-0C]
 005AE33A    sub         ecx,dword ptr [edx+23C]
 005AE340    cmp         eax,ecx
>005AE342    jg          005AE370
 005AE344    cmp         dword ptr [ebp+8],0
>005AE348    je          005AE370
 005AE34A    mov         eax,dword ptr [ebp-4]
 005AE34D    call        TValueListEditor.GetStrings
 005AE352    xor         edx,edx
 005AE354    call        00646CF8
 005AE359    mov         eax,dword ptr [ebp-4]
 005AE35C    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AE362    mov         edx,dword ptr [eax]
 005AE364    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AE367    mov         edx,dword ptr [ebp-4]
 005AE36A    mov         dword ptr [edx+2F4],eax;TValueListEditor.FCountSave:Integer
 005AE370    lea         eax,[ebp-10]
 005AE373    push        eax
 005AE374    mov         ecx,dword ptr [ebp-0C]
 005AE377    mov         edx,dword ptr [ebp-8]
 005AE37A    mov         eax,dword ptr [ebp-4]
 005AE37D    mov         ebx,dword ptr [eax]
 005AE37F    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AE385    mov         edx,dword ptr [ebp-10]
 005AE388    mov         eax,dword ptr [ebp+8]
 005AE38B    call        @LStrCmp
>005AE390    je          005AE3F6
 005AE392    cmp         dword ptr [ebp-8],0
>005AE396    jne         005AE3D4
 005AE398    mov         eax,dword ptr [ebp-4]
 005AE39B    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AE3A1    xor         ecx,ecx
 005AE3A3    mov         edx,dword ptr [ebp+8]
 005AE3A6    call        005AF018
 005AE3AB    test        al,al
>005AE3AD    jne         005AE3D4
 005AE3AF    mov         eax,dword ptr [ebp-4]
 005AE3B2    mov         eax,dword ptr [eax+2E8];TValueListEditor.FDupKeySave:String
 005AE3B8    mov         edx,dword ptr [ebp+8]
 005AE3BB    call        @LStrCmp
>005AE3C0    je          005AE3D4
 005AE3C2    mov         eax,dword ptr [ebp-4]
 005AE3C5    add         eax,2E8;TValueListEditor.FDupKeySave:String
 005AE3CA    mov         edx,dword ptr [ebp+8]
 005AE3CD    call        @LStrAsg
>005AE3D2    jmp         005AE3F6
 005AE3D4    mov         eax,dword ptr [ebp-4]
 005AE3D7    add         eax,2E8;TValueListEditor.FDupKeySave:String
 005AE3DC    call        @LStrClr
 005AE3E1    mov         eax,dword ptr [ebp+8]
 005AE3E4    push        eax
 005AE3E5    mov         ecx,dword ptr [ebp-0C]
 005AE3E8    mov         edx,dword ptr [ebp-8]
 005AE3EB    mov         eax,dword ptr [ebp-4]
 005AE3EE    mov         ebx,dword ptr [eax]
 005AE3F0    call        dword ptr [ebx+0F4];TValueListEditor.sub_005AD7B0
 005AE3F6    xor         eax,eax
 005AE3F8    pop         edx
 005AE3F9    pop         ecx
 005AE3FA    pop         ecx
 005AE3FB    mov         dword ptr fs:[eax],edx
 005AE3FE    push        5AE413
 005AE403    mov         eax,dword ptr [ebp-4]
 005AE406    call        005AE0A8
 005AE40B    ret
>005AE40C    jmp         @HandleFinally
>005AE411    jmp         005AE403
 005AE413    xor         eax,eax
 005AE415    pop         edx
 005AE416    pop         ecx
 005AE417    pop         ecx
 005AE418    mov         dword ptr fs:[eax],edx
 005AE41B    push        5AE430
 005AE420    lea         eax,[ebp-10]
 005AE423    call        @LStrClr
 005AE428    ret
>005AE429    jmp         @HandleFinally
>005AE42E    jmp         005AE420
 005AE430    pop         ebx
 005AE431    mov         esp,ebp
 005AE433    pop         ebp
 005AE434    ret         4
*}
end;

//005AE4FC
{*function sub_005AE4FC(?:TValueListEditor; ?:?; ?:?):?;
begin
 005AE4FC    push        ebp
 005AE4FD    mov         ebp,esp
 005AE4FF    add         esp,0FFFFFFEC
 005AE502    push        ebx
 005AE503    xor         ebx,ebx
 005AE505    mov         dword ptr [ebp-14],ebx
 005AE508    mov         dword ptr [ebp-10],ebx
 005AE50B    mov         byte ptr [ebp-9],cl
 005AE50E    mov         dword ptr [ebp-8],edx
 005AE511    mov         dword ptr [ebp-4],eax
 005AE514    xor         eax,eax
 005AE516    push        ebp
 005AE517    push        5AE5FE
 005AE51C    push        dword ptr fs:[eax]
 005AE51F    mov         dword ptr fs:[eax],esp
 005AE522    mov         eax,dword ptr [ebp-4]
 005AE525    cmp         word ptr [eax+302],0;TValueListEditor.?f302:word
>005AE52D    je          005AE5DF
 005AE533    lea         ecx,[ebp-10]
 005AE536    mov         eax,dword ptr [ebp-4]
 005AE539    mov         edx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE53F    mov         eax,dword ptr [ebp-4]
 005AE542    call        005AD8D4
 005AE547    cmp         dword ptr [ebp-10],0
>005AE54B    je          005AE5DF
 005AE551    mov         eax,dword ptr [ebp-8]
 005AE554    call        TStrings.BeginUpdate
 005AE559    xor         eax,eax
 005AE55B    push        ebp
 005AE55C    push        5AE5D8
 005AE561    push        dword ptr fs:[eax]
 005AE564    mov         dword ptr fs:[eax],esp
 005AE567    cmp         byte ptr [ebp-9],0
>005AE56B    je          005AE575
 005AE56D    mov         eax,dword ptr [ebp-8]
 005AE570    mov         edx,dword ptr [eax]
 005AE572    call        dword ptr [edx+44]
 005AE575    mov         eax,dword ptr [ebp-8]
 005AE578    push        eax
 005AE579    lea         ecx,[ebp-14]
 005AE57C    mov         eax,dword ptr [ebp-4]
 005AE57F    mov         edx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE585    mov         eax,dword ptr [ebp-4]
 005AE588    call        005AD8D4
 005AE58D    mov         ecx,dword ptr [ebp-14]
 005AE590    mov         ebx,dword ptr [ebp-4]
 005AE593    mov         edx,dword ptr [ebp-4]
 005AE596    mov         eax,dword ptr [ebx+304];TValueListEditor.?f304:dword
 005AE59C    call        dword ptr [ebx+300];TValueListEditor.OnGetPickList
 005AE5A2    mov         eax,dword ptr [ebp-8]
 005AE5A5    mov         edx,dword ptr [eax]
 005AE5A7    call        dword ptr [edx+14]
 005AE5AA    test        eax,eax
 005AE5AC    setg        byte ptr [ebp-0A]
 005AE5B0    mov         eax,dword ptr [ebp-4]
 005AE5B3    mov         eax,dword ptr [eax+2F8];TValueListEditor.FEditList:TInplaceEditList
 005AE5B9    mov         dl,byte ptr [ebp-0A]
 005AE5BC    mov         byte ptr [eax+25F],dl;TInplaceEditList.FPickListLoaded:Boolean
 005AE5C2    xor         eax,eax
 005AE5C4    pop         edx
 005AE5C5    pop         ecx
 005AE5C6    pop         ecx
 005AE5C7    mov         dword ptr fs:[eax],edx
 005AE5CA    push        5AE5E3
 005AE5CF    mov         eax,dword ptr [ebp-8]
 005AE5D2    call        TStrings.EndUpdate
 005AE5D7    ret
>005AE5D8    jmp         @HandleFinally
>005AE5DD    jmp         005AE5CF
 005AE5DF    mov         byte ptr [ebp-0A],0
 005AE5E3    xor         eax,eax
 005AE5E5    pop         edx
 005AE5E6    pop         ecx
 005AE5E7    pop         ecx
 005AE5E8    mov         dword ptr fs:[eax],edx
 005AE5EB    push        5AE605
 005AE5F0    lea         eax,[ebp-14]
 005AE5F3    mov         edx,2
 005AE5F8    call        @LStrArrayClr
 005AE5FD    ret
>005AE5FE    jmp         @HandleFinally
>005AE603    jmp         005AE5F0
 005AE605    mov         al,byte ptr [ebp-0A]
 005AE608    pop         ebx
 005AE609    mov         esp,ebp
 005AE60B    pop         ebp
 005AE60C    ret
end;*}

//005AE610
function TValueListEditor.InsertRow(const KeyName:AnsiString; const Value:AnsiString; Append:Boolean):Integer;
begin
{*
 005AE610    push        ebp
 005AE611    mov         ebp,esp
 005AE613    add         esp,0FFFFFFE8
 005AE616    push        ebx
 005AE617    xor         ebx,ebx
 005AE619    mov         dword ptr [ebp-18],ebx
 005AE61C    mov         dword ptr [ebp-14],ebx
 005AE61F    mov         dword ptr [ebp-0C],ecx
 005AE622    mov         dword ptr [ebp-8],edx
 005AE625    mov         dword ptr [ebp-4],eax
 005AE628    xor         eax,eax
 005AE62A    push        ebp
 005AE62B    push        5AE74A
 005AE630    push        dword ptr fs:[eax]
 005AE633    mov         dword ptr fs:[eax],esp
 005AE636    mov         eax,dword ptr [ebp-4]
 005AE639    mov         eax,dword ptr [eax+22C]
 005AE63F    mov         dword ptr [ebp-10],eax
 005AE642    mov         eax,dword ptr [ebp-4]
 005AE645    call        TValueListEditor.GetStrings
 005AE64A    mov         edx,dword ptr [eax]
 005AE64C    call        dword ptr [edx+14]
 005AE64F    cmp         eax,dword ptr [ebp-10]
>005AE652    jl          005AE664
 005AE654    mov         eax,dword ptr [ebp-4]
 005AE657    call        005AD5E8
 005AE65C    test        al,al
>005AE65E    jne         005AE704
 005AE664    mov         eax,dword ptr [ebp-4]
 005AE667    call        TValueListEditor.GetStrings
 005AE66C    call        TStrings.BeginUpdate
 005AE671    xor         eax,eax
 005AE673    push        ebp
 005AE674    push        5AE6FD
 005AE679    push        dword ptr fs:[eax]
 005AE67C    mov         dword ptr fs:[eax],esp
 005AE67F    cmp         byte ptr [ebp+8],0
>005AE683    je          005AE6B3
 005AE685    lea         ecx,[ebp-14]
 005AE688    mov         edx,dword ptr [ebp-0C]
 005AE68B    mov         eax,dword ptr [ebp-8]
 005AE68E    call        005AD598
 005AE693    mov         eax,dword ptr [ebp-14]
 005AE696    push        eax
 005AE697    mov         eax,dword ptr [ebp-4]
 005AE69A    call        TValueListEditor.GetStrings
 005AE69F    pop         edx
 005AE6A0    mov         ecx,dword ptr [eax]
 005AE6A2    call        dword ptr [ecx+38]
 005AE6A5    mov         edx,dword ptr [ebp-4]
 005AE6A8    add         eax,dword ptr [edx+23C]
 005AE6AE    mov         dword ptr [ebp-10],eax
>005AE6B1    jmp         005AE6E2
 005AE6B3    lea         ecx,[ebp-18]
 005AE6B6    mov         edx,dword ptr [ebp-0C]
 005AE6B9    mov         eax,dword ptr [ebp-8]
 005AE6BC    call        005AD598
 005AE6C1    mov         eax,dword ptr [ebp-18]
 005AE6C4    push        eax
 005AE6C5    mov         eax,dword ptr [ebp-4]
 005AE6C8    call        TValueListEditor.GetStrings
 005AE6CD    mov         edx,dword ptr [ebp-4]
 005AE6D0    push        dword ptr [edx+23C]
 005AE6D6    mov         edx,dword ptr [ebp-10]
 005AE6D9    pop         ecx
 005AE6DA    sub         edx,ecx
 005AE6DC    pop         ecx
 005AE6DD    mov         ebx,dword ptr [eax]
 005AE6DF    call        dword ptr [ebx+60]
 005AE6E2    xor         eax,eax
 005AE6E4    pop         edx
 005AE6E5    pop         ecx
 005AE6E6    pop         ecx
 005AE6E7    mov         dword ptr fs:[eax],edx
 005AE6EA    push        5AE72F
 005AE6EF    mov         eax,dword ptr [ebp-4]
 005AE6F2    call        TValueListEditor.GetStrings
 005AE6F7    call        TStrings.EndUpdate
 005AE6FC    ret
>005AE6FD    jmp         @HandleFinally
>005AE702    jmp         005AE6EF
 005AE704    mov         eax,dword ptr [ebp-8]
 005AE707    push        eax
 005AE708    mov         ecx,dword ptr [ebp-10]
 005AE70B    xor         edx,edx
 005AE70D    mov         eax,dword ptr [ebp-4]
 005AE710    mov         ebx,dword ptr [eax]
 005AE712    call        dword ptr [ebx+0F4]
 005AE718    mov         eax,dword ptr [ebp-0C]
 005AE71B    push        eax
 005AE71C    mov         ecx,dword ptr [ebp-10]
 005AE71F    mov         edx,1
 005AE724    mov         eax,dword ptr [ebp-4]
 005AE727    mov         ebx,dword ptr [eax]
 005AE729    call        dword ptr [ebx+0F4]
 005AE72F    xor         eax,eax
 005AE731    pop         edx
 005AE732    pop         ecx
 005AE733    pop         ecx
 005AE734    mov         dword ptr fs:[eax],edx
 005AE737    push        5AE751
 005AE73C    lea         eax,[ebp-18]
 005AE73F    mov         edx,2
 005AE744    call        @LStrArrayClr
 005AE749    ret
>005AE74A    jmp         @HandleFinally
>005AE74F    jmp         005AE73C
 005AE751    mov         eax,dword ptr [ebp-10]
 005AE754    pop         ebx
 005AE755    mov         esp,ebp
 005AE757    pop         ebp
 005AE758    ret         4
*}
end;

//005AE75C
{*procedure sub_005AE75C(?:?);
begin
 005AE75C    push        ebp
 005AE75D    mov         ebp,esp
 005AE75F    add         esp,0FFFFFFF8
 005AE762    mov         dword ptr [ebp-8],edx
 005AE765    mov         dword ptr [ebp-4],eax
 005AE768    mov         eax,dword ptr [ebp-4]
 005AE76B    cmp         byte ptr [eax+2EC],0;TValueListEditor.FDeleting:Boolean
>005AE772    jne         005AE801
 005AE778    mov         eax,dword ptr [ebp-4]
 005AE77B    mov         byte ptr [eax+2EC],1;TValueListEditor.FDeleting:Boolean
 005AE782    xor         eax,eax
 005AE784    push        ebp
 005AE785    push        5AE7FA
 005AE78A    push        dword ptr fs:[eax]
 005AE78D    mov         dword ptr fs:[eax],esp
 005AE790    mov         eax,dword ptr [ebp-4]
 005AE793    call        TValueListEditor.GetRowCount
 005AE798    dec         eax
 005AE799    mov         edx,dword ptr [ebp-4]
 005AE79C    cmp         eax,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
>005AE7A2    jg          005AE7C6
 005AE7A4    mov         eax,dword ptr [ebp-4]
 005AE7A7    call        TValueListEditor.GetStrings
 005AE7AC    mov         edx,dword ptr [eax]
 005AE7AE    call        dword ptr [edx+14]
 005AE7B1    dec         eax
>005AE7B2    jle         005AE7C6
 005AE7B4    mov         eax,dword ptr [ebp-4]
 005AE7B7    mov         edx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE7BD    dec         edx
 005AE7BE    mov         eax,dword ptr [ebp-4]
 005AE7C1    call        005B9D64
 005AE7C6    mov         eax,dword ptr [ebp-4]
 005AE7C9    call        TValueListEditor.GetStrings
 005AE7CE    mov         edx,dword ptr [ebp-4]
 005AE7D1    push        dword ptr [edx+23C]
 005AE7D7    mov         edx,dword ptr [ebp-8]
 005AE7DA    pop         ecx
 005AE7DB    sub         edx,ecx
 005AE7DD    mov         ecx,dword ptr [eax]
 005AE7DF    call        dword ptr [ecx+48]
 005AE7E2    xor         eax,eax
 005AE7E4    pop         edx
 005AE7E5    pop         ecx
 005AE7E6    pop         ecx
 005AE7E7    mov         dword ptr fs:[eax],edx
 005AE7EA    push        5AE801
 005AE7EF    mov         eax,dword ptr [ebp-4]
 005AE7F2    mov         byte ptr [eax+2EC],0;TValueListEditor.FDeleting:Boolean
 005AE7F9    ret
>005AE7FA    jmp         @HandleFinally
>005AE7FF    jmp         005AE7EF
 005AE801    pop         ecx
 005AE802    pop         ecx
 005AE803    pop         ebp
 005AE804    ret
end;*}

//005AE808
{*function sub_005AE808(?:?):?;
begin
 005AE808    push        ebp
 005AE809    mov         ebp,esp
 005AE80B    push        0
 005AE80D    push        0
 005AE80F    push        0
 005AE811    xor         eax,eax
 005AE813    push        ebp
 005AE814    push        5AE8C1
 005AE819    push        dword ptr fs:[eax]
 005AE81C    mov         dword ptr fs:[eax],esp
 005AE81F    mov         byte ptr [ebp-1],0
 005AE823    mov         eax,dword ptr [ebp+8]
 005AE826    mov         eax,dword ptr [eax-4]
 005AE829    cmp         dword ptr [eax+2F8],0
>005AE830    je          005AE8A6
 005AE832    mov         eax,dword ptr [ebp+8]
 005AE835    mov         eax,dword ptr [eax-4]
 005AE838    mov         eax,dword ptr [eax+2F8]
 005AE83E    call        TCustomEdit.GetModified
 005AE843    test        al,al
>005AE845    je          005AE8A6
 005AE847    lea         edx,[ebp-8]
 005AE84A    mov         eax,dword ptr [ebp+8]
 005AE84D    mov         eax,dword ptr [eax-4]
 005AE850    mov         eax,dword ptr [eax+2F8]
 005AE856    call        005AA2EC
 005AE85B    mov         eax,dword ptr [ebp+8]
 005AE85E    mov         eax,dword ptr [eax-4]
 005AE861    mov         eax,dword ptr [eax+2F8]
 005AE867    call        005BDAC8
 005AE86C    lea         edx,[ebp-0C]
 005AE86F    mov         eax,dword ptr [ebp+8]
 005AE872    mov         eax,dword ptr [eax-4]
 005AE875    mov         eax,dword ptr [eax+2F8]
 005AE87B    call        005AA2EC
 005AE880    mov         edx,dword ptr [ebp-0C]
 005AE883    mov         eax,dword ptr [ebp-8]
 005AE886    call        @LStrCmp
 005AE88B    setne       byte ptr [ebp-1]
 005AE88F    cmp         byte ptr [ebp-1],0
>005AE893    je          005AE8A6
 005AE895    mov         eax,dword ptr [ebp+8]
 005AE898    mov         eax,dword ptr [eax-4]
 005AE89B    mov         eax,dword ptr [eax+2F8]
 005AE8A1    call        0059901C
 005AE8A6    xor         eax,eax
 005AE8A8    pop         edx
 005AE8A9    pop         ecx
 005AE8AA    pop         ecx
 005AE8AB    mov         dword ptr fs:[eax],edx
 005AE8AE    push        5AE8C8
 005AE8B3    lea         eax,[ebp-0C]
 005AE8B6    mov         edx,2
 005AE8BB    call        @LStrArrayClr
 005AE8C0    ret
>005AE8C1    jmp         @HandleFinally
>005AE8C6    jmp         005AE8B3
 005AE8C8    mov         al,byte ptr [ebp-1]
 005AE8CB    mov         esp,ebp
 005AE8CD    pop         ebp
 005AE8CE    ret
end;*}

//005AE8D0
function TValueListEditor.RestoreCurrentRow:Boolean;
begin
{*
 005AE8D0    push        ebp
 005AE8D1    mov         ebp,esp
 005AE8D3    add         esp,0FFFFFFF8
 005AE8D6    mov         dword ptr [ebp-4],eax
 005AE8D9    push        ebp
 005AE8DA    call        005AE808
 005AE8DF    pop         ecx
 005AE8E0    mov         byte ptr [ebp-5],al
 005AE8E3    cmp         byte ptr [ebp-5],0
>005AE8E7    jne         005AE90D
 005AE8E9    mov         eax,dword ptr [ebp-4]
 005AE8EC    call        005AD5E8
 005AE8F1    test        al,al
>005AE8F3    je          005AE90D
 005AE8F5    mov         eax,dword ptr [ebp-4]
 005AE8F8    mov         edx,dword ptr [eax+22C]
 005AE8FE    mov         eax,dword ptr [ebp-4]
 005AE901    mov         ecx,dword ptr [eax]
 005AE903    call        dword ptr [ecx+0E0]
 005AE909    mov         byte ptr [ebp-5],1
 005AE90D    mov         al,byte ptr [ebp-5]
 005AE910    pop         ecx
 005AE911    pop         ecx
 005AE912    pop         ebp
 005AE913    ret
*}
end;

//005AE914
{*procedure TValueListEditor.sub_005AE914(?:?; ?:?);
begin
 005AE914    push        ebp
 005AE915    mov         ebp,esp
 005AE917    add         esp,0FFFFFFF4
 005AE91A    push        ebx
 005AE91B    mov         dword ptr [ebp-0C],ecx
 005AE91E    mov         dword ptr [ebp-8],edx
 005AE921    mov         dword ptr [ebp-4],eax
 005AE924    mov         eax,dword ptr [ebp-4]
 005AE927    call        TValueListEditor.GetStrings
 005AE92C    mov         ecx,dword ptr [ebp-0C]
 005AE92F    mov         edx,dword ptr [ebp-8]
 005AE932    mov         ebx,dword ptr [eax]
 005AE934    call        dword ptr [ebx+70]
 005AE937    mov         ecx,dword ptr [ebp-0C]
 005AE93A    mov         edx,dword ptr [ebp-8]
 005AE93D    mov         eax,dword ptr [ebp-4]
 005AE940    call        TCustomDrawGrid.sub_005B4FAC
 005AE945    pop         ebx
 005AE946    mov         esp,ebp
 005AE948    pop         ebp
 005AE949    ret
end;*}

//005AE94C
procedure sub_005AE94C;
begin
{*
 005AE94C    push        ebp
 005AE94D    mov         ebp,esp
 005AE94F    push        0
 005AE951    push        0
 005AE953    push        0
 005AE955    push        ebx
 005AE956    mov         dword ptr [ebp-4],eax
 005AE959    xor         eax,eax
 005AE95B    push        ebp
 005AE95C    push        5AEA05
 005AE961    push        dword ptr fs:[eax]
 005AE964    mov         dword ptr fs:[eax],esp
 005AE967    mov         eax,dword ptr [ebp-4]
 005AE96A    cmp         word ptr [eax+312],0;TValueListEditor.?f312:word
>005AE972    je          005AE9EA
 005AE974    mov         eax,dword ptr [ebp-4]
 005AE977    mov         eax,dword ptr [eax+27C];TValueListEditor.FInplaceEdit:TInplaceEdit
 005AE97D    call        TCustomEdit.GetModified
 005AE982    test        al,al
>005AE984    je          005AE9EA
 005AE986    mov         eax,dword ptr [ebp-4]
 005AE989    mov         eax,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE98F    push        eax
 005AE990    lea         eax,[ebp-8]
 005AE993    push        eax
 005AE994    mov         eax,dword ptr [ebp-4]
 005AE997    mov         ecx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE99D    xor         edx,edx
 005AE99F    mov         eax,dword ptr [ebp-4]
 005AE9A2    mov         ebx,dword ptr [eax]
 005AE9A4    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AE9AA    mov         eax,dword ptr [ebp-8]
 005AE9AD    push        eax
 005AE9AE    lea         eax,[ebp-0C]
 005AE9B1    push        eax
 005AE9B2    mov         eax,dword ptr [ebp-4]
 005AE9B5    mov         ecx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AE9BB    mov         edx,1
 005AE9C0    mov         eax,dword ptr [ebp-4]
 005AE9C3    mov         ebx,dword ptr [eax]
 005AE9C5    call        dword ptr [ebx+0F0];TValueListEditor.sub_005AD6C0
 005AE9CB    mov         eax,dword ptr [ebp-0C]
 005AE9CE    push        eax
 005AE9CF    mov         ebx,dword ptr [ebp-4]
 005AE9D2    mov         eax,dword ptr [ebp-4]
 005AE9D5    mov         ecx,dword ptr [eax+228];TValueListEditor.FCurrent:TGridCoord
 005AE9DB    mov         edx,dword ptr [ebp-4]
 005AE9DE    mov         eax,dword ptr [ebx+314];TValueListEditor.?f314:dword
 005AE9E4    call        dword ptr [ebx+310];TValueListEditor.OnValidate
 005AE9EA    xor         eax,eax
 005AE9EC    pop         edx
 005AE9ED    pop         ecx
 005AE9EE    pop         ecx
 005AE9EF    mov         dword ptr fs:[eax],edx
 005AE9F2    push        5AEA0C
 005AE9F7    lea         eax,[ebp-0C]
 005AE9FA    mov         edx,2
 005AE9FF    call        @LStrArrayClr
 005AEA04    ret
>005AEA05    jmp         @HandleFinally
>005AEA0A    jmp         005AE9F7
 005AEA0C    pop         ebx
 005AEA0D    mov         esp,ebp
 005AEA0F    pop         ebp
 005AEA10    ret
*}
end;

//005AEA14
{*function sub_005AEA14(?:?; ?:?):?;
begin
 005AEA14    push        ebp
 005AEA15    mov         ebp,esp
 005AEA17    add         esp,0FFFFFFF0
 005AEA1A    mov         dword ptr [ebp-0C],ecx
 005AEA1D    mov         dword ptr [ebp-8],edx
 005AEA20    mov         dword ptr [ebp-4],eax
 005AEA23    mov         eax,dword ptr [ebp-0C]
 005AEA26    mov         edx,dword ptr [ebp-4]
 005AEA29    cmp         eax,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
>005AEA2F    je          005AEA97
 005AEA31    mov         eax,dword ptr [ebp-4]
 005AEA34    call        TValueListEditor.GetStrings
 005AEA39    mov         edx,dword ptr [eax]
 005AEA3B    call        dword ptr [edx+14]
 005AEA3E    test        eax,eax
>005AEA40    jle         005AEA97
 005AEA42    mov         eax,dword ptr [ebp-4]
 005AEA45    call        005AD5E8
 005AEA4A    test        al,al
>005AEA4C    je          005AEA97
 005AEA4E    mov         eax,dword ptr [ebp-4]
 005AEA51    cmp         byte ptr [eax+2EC],0;TValueListEditor.FDeleting:Boolean
>005AEA58    jne         005AEA97
 005AEA5A    mov         eax,dword ptr [ebp-0C]
 005AEA5D    mov         edx,dword ptr [ebp-4]
 005AEA60    cmp         eax,dword ptr [edx+22C];TValueListEditor.FCurrent:Longint
 005AEA66    setl        byte ptr [ebp-0D]
 005AEA6A    mov         eax,dword ptr [ebp-4]
 005AEA6D    mov         edx,dword ptr [eax+22C];TValueListEditor.FCurrent:Longint
 005AEA73    mov         eax,dword ptr [ebp-4]
 005AEA76    mov         ecx,dword ptr [eax]
 005AEA78    call        dword ptr [ecx+0E0];TValueListEditor.sub_005AE75C
 005AEA7E    cmp         byte ptr [ebp-0D],0
>005AEA82    jne         005AEACF
 005AEA84    push        1
 005AEA86    mov         ecx,dword ptr [ebp-0C]
 005AEA89    dec         ecx
 005AEA8A    mov         edx,dword ptr [ebp-8]
 005AEA8D    mov         eax,dword ptr [ebp-4]
 005AEA90    call        005B6E0C
>005AEA95    jmp         005AEACF
 005AEA97    mov         eax,dword ptr [ebp-4]
 005AEA9A    mov         edx,dword ptr [eax]
 005AEA9C    call        dword ptr [edx+0EC];TValueListEditor.sub_005AE94C
 005AEAA2    mov         ecx,dword ptr [ebp-0C]
 005AEAA5    mov         edx,dword ptr [ebp-8]
 005AEAA8    mov         eax,dword ptr [ebp-4]
 005AEAAB    call        005BACC8
 005AEAB0    test        al,al
>005AEAB2    je          005AEAC6
 005AEAB4    mov         eax,dword ptr [ebp-4]
 005AEAB7    test        byte ptr [eax+2E0],1;TValueListEditor.KeyOptions:TKeyOptions
>005AEABE    jne         005AEACA
 005AEAC0    cmp         dword ptr [ebp-8],0
>005AEAC4    jg          005AEACA
 005AEAC6    xor         eax,eax
>005AEAC8    jmp         005AEACC
 005AEACA    mov         al,1
 005AEACC    mov         byte ptr [ebp-0D],al
 005AEACF    mov         al,byte ptr [ebp-0D]
 005AEAD2    mov         esp,ebp
 005AEAD4    pop         ebp
 005AEAD5    ret
end;*}

//005AEAD8
function InsertOK:Boolean;
begin
{*
 005AEAD8    push        ebp
 005AEAD9    mov         ebp,esp
 005AEADB    add         esp,0FFFFFFF8
 005AEADE    push        ebx
 005AEADF    xor         eax,eax
 005AEAE1    mov         dword ptr [ebp-8],eax
 005AEAE4    xor         eax,eax
 005AEAE6    push        ebp
 005AEAE7    push        5AEB4C
 005AEAEC    push        dword ptr fs:[eax]
 005AEAEF    mov         dword ptr fs:[eax],esp
 005AEAF2    lea         eax,[ebp-8]
 005AEAF5    push        eax
 005AEAF6    mov         eax,dword ptr [ebp+8]
 005AEAF9    mov         eax,dword ptr [eax-4]
 005AEAFC    mov         ecx,dword ptr [eax+22C]
 005AEB02    mov         eax,dword ptr [ebp+8]
 005AEB05    mov         eax,dword ptr [eax-4]
 005AEB08    xor         edx,edx
 005AEB0A    mov         ebx,dword ptr [eax]
 005AEB0C    call        dword ptr [ebx+0F0]
 005AEB12    mov         eax,dword ptr [ebp-8]
 005AEB15    call        @LStrLen
 005AEB1A    test        eax,eax
>005AEB1C    jle         005AEB2D
 005AEB1E    mov         eax,dword ptr [ebp+8]
 005AEB21    mov         eax,dword ptr [eax-4]
 005AEB24    test        byte ptr [eax+2E0],2
>005AEB2B    jne         005AEB31
 005AEB2D    xor         eax,eax
>005AEB2F    jmp         005AEB33
 005AEB31    mov         al,1
 005AEB33    mov         byte ptr [ebp-1],al
 005AEB36    xor         eax,eax
 005AEB38    pop         edx
 005AEB39    pop         ecx
 005AEB3A    pop         ecx
 005AEB3B    mov         dword ptr fs:[eax],edx
 005AEB3E    push        5AEB53
 005AEB43    lea         eax,[ebp-8]
 005AEB46    call        @LStrClr
 005AEB4B    ret
>005AEB4C    jmp         @HandleFinally
>005AEB51    jmp         005AEB43
 005AEB53    mov         al,byte ptr [ebp-1]
 005AEB56    pop         ebx
 005AEB57    pop         ecx
 005AEB58    pop         ecx
 005AEB59    pop         ebp
 005AEB5A    ret
*}
end;

//005AEB5C
procedure SetRow(NewRow:Integer);
begin
{*
 005AEB5C    push        ebp
 005AEB5D    mov         ebp,esp
 005AEB5F    push        ecx
 005AEB60    mov         dword ptr [ebp-4],eax
 005AEB63    mov         eax,dword ptr [ebp+8]
 005AEB66    mov         eax,dword ptr [eax-4]
 005AEB69    mov         edx,dword ptr [ebp-4]
 005AEB6C    call        005B9D64
 005AEB71    mov         eax,dword ptr [ebp+8]
 005AEB74    mov         eax,dword ptr [eax-8]
 005AEB77    mov         word ptr [eax],0
 005AEB7C    pop         ecx
 005AEB7D    pop         ebp
 005AEB7E    ret
*}
end;

//005AEB80
procedure TValueListEditor.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 005AEB80    push        ebp
 005AEB81    mov         ebp,esp
 005AEB83    add         esp,0FFFFFFF4
 005AEB86    mov         byte ptr [ebp-9],cl
 005AEB89    mov         dword ptr [ebp-8],edx
 005AEB8C    mov         dword ptr [ebp-4],eax
 005AEB8F    mov         eax,dword ptr [ebp-8]
 005AEB92    movzx       eax,word ptr [eax]
 005AEB95    add         eax,0FFFFFFE5
 005AEB98    cmp         eax,13
>005AEB9B    ja          005AECBF
 005AEBA1    mov         al,byte ptr [eax+5AEBAE]
 005AEBA7    jmp         dword ptr [eax*4+5AEBC2]
 005AEBA7    db          5
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          2
 005AEBA7    db          0
 005AEBA7    db          1
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          0
 005AEBA7    db          3
 005AEBA7    db          4
 005AEBA7    dd          005AECBF
 005AEBA7    dd          005AEBDA
 005AEBA7    dd          005AEC45
 005AEBA7    dd          005AEC61
 005AEBA7    dd          005AEC83
 005AEBA7    dd          005AECB7
 005AEBDA    mov         al,[005AECD4]
 005AEBDF    cmp         al,byte ptr [ebp-9]
>005AEBE2    jne         005AEBF9
 005AEBE4    push        ebp
 005AEBE5    mov         eax,dword ptr [ebp-4]
 005AEBE8    call        TValueListEditor.GetRowCount
 005AEBED    dec         eax
 005AEBEE    call        SetRow
 005AEBF3    pop         ecx
>005AEBF4    jmp         005AECBF
 005AEBF9    mov         al,[005AECD8]
 005AEBFE    cmp         al,byte ptr [ebp-9]
>005AEC01    jne         005AECBF
 005AEC07    mov         eax,dword ptr [ebp-4]
 005AEC0A    call        TValueListEditor.GetRowCount
 005AEC0F    dec         eax
 005AEC10    mov         edx,dword ptr [ebp-4]
 005AEC13    cmp         eax,dword ptr [edx+22C]
>005AEC19    jne         005AECBF
 005AEC1F    push        ebp
 005AEC20    call        InsertOK
 005AEC25    pop         ecx
 005AEC26    test        al,al
>005AEC28    je          005AECBF
 005AEC2E    push        ebp
 005AEC2F    push        1
 005AEC31    xor         ecx,ecx
 005AEC33    xor         edx,edx
 005AEC35    mov         eax,dword ptr [ebp-4]
 005AEC38    call        TValueListEditor.InsertRow
 005AEC3D    call        SetRow
 005AEC42    pop         ecx
>005AEC43    jmp         005AECBF
 005AEC45    mov         al,[005AECD4]
 005AEC4A    cmp         al,byte ptr [ebp-9]
>005AEC4D    jne         005AECBF
 005AEC4F    push        ebp
 005AEC50    mov         eax,dword ptr [ebp-4]
 005AEC53    mov         eax,dword ptr [eax+23C]
 005AEC59    call        SetRow
 005AEC5E    pop         ecx
>005AEC5F    jmp         005AECBF
 005AEC61    push        ebp
 005AEC62    call        InsertOK
 005AEC67    pop         ecx
 005AEC68    test        al,al
>005AEC6A    je          005AECBF
 005AEC6C    push        ebp
 005AEC6D    push        0
 005AEC6F    xor         ecx,ecx
 005AEC71    xor         edx,edx
 005AEC73    mov         eax,dword ptr [ebp-4]
 005AEC76    call        TValueListEditor.InsertRow
 005AEC7B    call        SetRow
 005AEC80    pop         ecx
>005AEC81    jmp         005AECBF
 005AEC83    mov         al,[005AECD4]
 005AEC88    cmp         al,byte ptr [ebp-9]
>005AEC8B    jne         005AECBF
 005AEC8D    mov         eax,dword ptr [ebp-4]
 005AEC90    test        byte ptr [eax+2E0],4
>005AEC97    je          005AECBF
 005AEC99    mov         eax,dword ptr [ebp-4]
 005AEC9C    mov         edx,dword ptr [eax+22C]
 005AECA2    mov         eax,dword ptr [ebp-4]
 005AECA5    mov         ecx,dword ptr [eax]
 005AECA7    call        dword ptr [ecx+0E0]
 005AECAD    mov         eax,dword ptr [ebp-8]
 005AECB0    mov         word ptr [eax],0
>005AECB5    jmp         005AECBF
 005AECB7    mov         eax,dword ptr [ebp-4]
 005AECBA    call        TValueListEditor.RestoreCurrentRow
 005AECBF    mov         edx,dword ptr [ebp-8]
 005AECC2    mov         cl,byte ptr [ebp-9]
 005AECC5    mov         eax,dword ptr [ebp-4]
 005AECC8    call        TCustomGrid.KeyDown
 005AECCD    mov         esp,ebp
 005AECCF    pop         ebp
 005AECD0    ret
*}
end;

//005AECDC
{*function TValueListEditor.GetOptions:?;
begin
 005AECDC    push        ebp
 005AECDD    mov         ebp,esp
 005AECDF    add         esp,0FFFFFFF8
 005AECE2    mov         dword ptr [ebp-4],eax
 005AECE5    mov         eax,dword ptr [ebp-4]
 005AECE8    mov         ax,word ptr [eax+248];TValueListEditor.FOptions:TGridOptions
 005AECEF    mov         word ptr [ebp-6],ax
 005AECF3    mov         ax,word ptr [ebp-6]
 005AECF7    pop         ecx
 005AECF8    pop         ecx
 005AECF9    pop         ebp
 005AECFA    ret
end;*}

//005AECFC
procedure TValueListEditor.SetOptions(Value:TGridOptions);
begin
{*
 005AECFC    push        ebp
 005AECFD    mov         ebp,esp
 005AECFF    add         esp,0FFFFFFF8
 005AED02    mov         word ptr [ebp-6],dx
 005AED06    mov         dword ptr [ebp-4],eax
 005AED09    test        byte ptr [ebp-5],2
>005AED0D    je          005AED26
 005AED0F    mov         ecx,dword ptr ds:[6E9FEC];^gvar_0063CDE8
 005AED15    mov         dl,1
 005AED17    mov         eax,[00656774];Exception
 005AED1C    call        Exception.Create;Exception.Create
 005AED21    call        @RaiseExcept
 005AED26    mov         dx,word ptr [ebp-6]
 005AED2A    mov         eax,dword ptr [ebp-4]
 005AED2D    call        TDrawGrid.SetOptions
 005AED32    pop         ecx
 005AED33    pop         ecx
 005AED34    pop         ebp
 005AED35    ret
*}
end;

//005AED38
procedure TValueListEditor.CreateWnd;
begin
{*
 005AED38    push        ebp
 005AED39    mov         ebp,esp
 005AED3B    push        ecx
 005AED3C    mov         dword ptr [ebp-4],eax
 005AED3F    mov         eax,dword ptr [ebp-4]
 005AED42    call        TWinControl.CreateWnd
 005AED47    push        0
 005AED49    push        0
 005AED4B    push        0
 005AED4D    push        1
 005AED4F    mov         eax,dword ptr [ebp-4]
 005AED52    call        TWinControl.GetHandle
 005AED57    push        eax
 005AED58    call        USER32.SetScrollRange
 005AED5D    pop         ecx
 005AED5E    pop         ebp
 005AED5F    ret
*}
end;

//005AED60
procedure TValueListEditor.DoExit;
begin
{*
 005AED60    push        ebp
 005AED61    mov         ebp,esp
 005AED63    push        ecx
 005AED64    push        ebx
 005AED65    push        esi
 005AED66    push        edi
 005AED67    mov         dword ptr [ebp-4],eax
 005AED6A    xor         eax,eax
 005AED6C    push        ebp
 005AED6D    push        5AED8D
 005AED72    push        dword ptr fs:[eax]
 005AED75    mov         dword ptr fs:[eax],esp
 005AED78    mov         eax,dword ptr [ebp-4]
 005AED7B    mov         edx,dword ptr [eax]
 005AED7D    call        dword ptr [edx+0EC]
 005AED83    xor         eax,eax
 005AED85    pop         edx
 005AED86    pop         ecx
 005AED87    pop         ecx
 005AED88    mov         dword ptr fs:[eax],edx
>005AED8B    jmp         005AEDA7
>005AED8D    jmp         @HandleAnyException
 005AED92    mov         eax,dword ptr [ebp-4]
 005AED95    mov         edx,dword ptr [eax]
 005AED97    call        dword ptr [edx+0C0]
 005AED9D    call        @RaiseAgain
 005AEDA2    call        @DoneExcept
 005AEDA7    mov         eax,dword ptr [ebp-4]
 005AEDAA    call        TCustomGrid.DoExit
 005AEDAF    mov         eax,dword ptr [ebp-4]
 005AEDB2    call        TCustomGrid.HideEdit
 005AEDB7    pop         edi
 005AEDB8    pop         esi
 005AEDB9    pop         ebx
 005AEDBA    pop         ecx
 005AEDBB    pop         ebp
 005AEDBC    ret
*}
end;

//005AEDC0
{*procedure TValueListEditor.CMShowingChanged(?:?);
begin
 005AEDC0    push        ebp
 005AEDC1    mov         ebp,esp
 005AEDC3    add         esp,0FFFFFFF8
 005AEDC6    mov         dword ptr [ebp-8],edx
 005AEDC9    mov         dword ptr [ebp-4],eax
 005AEDCC    mov         edx,dword ptr [ebp-8]
 005AEDCF    mov         eax,dword ptr [ebp-4]
 005AEDD2    call        TCustomGrid.CMShowingChanged
 005AEDD7    mov         eax,dword ptr [ebp-4]
 005AEDDA    cmp         byte ptr [eax+1A6],0;TValueListEditor.FShowing:Boolean
>005AEDE1    je          005AEDEE
 005AEDE3    mov         eax,dword ptr [ebp-4]
 005AEDE6    mov         edx,dword ptr [eax]
 005AEDE8    call        dword ptr [edx+0E4];TValueListEditor.AdjustColWidths
 005AEDEE    pop         ecx
 005AEDEF    pop         ecx
 005AEDF0    pop         ebp
 005AEDF1    ret
end;*}

//005AEDF4
constructor TValueListStrings.Create;
begin
{*
 005AEDF4    push        ebp
 005AEDF5    mov         ebp,esp
 005AEDF7    add         esp,0FFFFFFF4
 005AEDFA    test        dl,dl
>005AEDFC    je          005AEE06
 005AEDFE    add         esp,0FFFFFFF0
 005AEE01    call        @ClassCreate
 005AEE06    mov         dword ptr [ebp-0C],ecx
 005AEE09    mov         byte ptr [ebp-5],dl
 005AEE0C    mov         dword ptr [ebp-4],eax
 005AEE0F    mov         eax,dword ptr [ebp-4]
 005AEE12    mov         edx,dword ptr [ebp-0C]
 005AEE15    mov         dword ptr [eax+34],edx;TValueListStrings.FEditor:TValueListEditor
 005AEE18    xor         edx,edx
 005AEE1A    mov         eax,dword ptr [ebp-4]
 005AEE1D    call        TObject.Create
 005AEE22    mov         eax,dword ptr [ebp-4]
 005AEE25    cmp         byte ptr [ebp-5],0
>005AEE29    je          005AEE3A
 005AEE2B    call        @AfterConstruction
 005AEE30    pop         dword ptr fs:[0]
 005AEE37    add         esp,0C
 005AEE3A    mov         eax,dword ptr [ebp-4]
 005AEE3D    mov         esp,ebp
 005AEE3F    pop         ebp
 005AEE40    ret
*}
end;

//005AEE44
procedure TValueListStrings.Assign(Source:TPersistent);
begin
{*
 005AEE44    push        ebp
 005AEE45    mov         ebp,esp
 005AEE47    mov         ecx,9
 005AEE4C    push        0
 005AEE4E    push        0
 005AEE50    dec         ecx
>005AEE51    jne         005AEE4C
 005AEE53    push        ecx
 005AEE54    mov         dword ptr [ebp-8],edx
 005AEE57    mov         dword ptr [ebp-4],eax
 005AEE5A    xor         eax,eax
 005AEE5C    push        ebp
 005AEE5D    push        5AEF99
 005AEE62    push        dword ptr fs:[eax]
 005AEE65    mov         dword ptr fs:[eax],esp
 005AEE68    mov         edx,dword ptr [ebp-8]
 005AEE6B    mov         eax,dword ptr [ebp-4]
 005AEE6E    call        TStrings.Assign
 005AEE73    mov         eax,dword ptr [ebp-8]
 005AEE76    mov         edx,dword ptr ds:[5AD090];TValueListStrings
 005AEE7C    call        @IsClass
 005AEE81    test        al,al
>005AEE83    je          005AEEF2
 005AEE85    mov         eax,dword ptr [ebp-8]
 005AEE88    mov         dword ptr [ebp-18],eax
 005AEE8B    mov         eax,dword ptr [ebp-4]
 005AEE8E    mov         edx,dword ptr [eax]
 005AEE90    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AEE93    dec         eax
 005AEE94    test        eax,eax
>005AEE96    jl          005AEF78
 005AEE9C    inc         eax
 005AEE9D    mov         dword ptr [ebp-1C],eax
 005AEEA0    mov         dword ptr [ebp-0C],0
 005AEEA7    lea         eax,[ebp-2C]
 005AEEAA    mov         edx,dword ptr [ebp-0C]
 005AEEAD    mov         cl,0FC
 005AEEAF    call        0066D574
 005AEEB4    lea         edx,[ebp-2C]
 005AEEB7    xor         ecx,ecx
 005AEEB9    mov         eax,dword ptr [ebp-18]
 005AEEBC    call        005AF3B0
 005AEEC1    mov         dword ptr [ebp-10],eax
 005AEEC4    cmp         dword ptr [ebp-10],0
>005AEEC8    je          005AEEE5
 005AEECA    lea         eax,[ebp-3C]
 005AEECD    mov         edx,dword ptr [ebp-0C]
 005AEED0    mov         cl,0FC
 005AEED2    call        0066D574
 005AEED7    lea         edx,[ebp-3C]
 005AEEDA    mov         ecx,dword ptr [ebp-10]
 005AEEDD    mov         eax,dword ptr [ebp-4]
 005AEEE0    call        005AF62C
 005AEEE5    inc         dword ptr [ebp-0C]
 005AEEE8    dec         dword ptr [ebp-1C]
>005AEEEB    jne         005AEEA7
>005AEEED    jmp         005AEF78
 005AEEF2    mov         eax,dword ptr [ebp-8]
 005AEEF5    mov         edx,dword ptr ds:[6427A4];TStrings
 005AEEFB    call        @IsClass
 005AEF00    test        al,al
>005AEF02    je          005AEF78
 005AEF04    mov         eax,dword ptr [ebp-8]
 005AEF07    mov         dword ptr [ebp-14],eax
 005AEF0A    mov         eax,dword ptr [ebp-4]
 005AEF0D    mov         edx,dword ptr [eax]
 005AEF0F    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AEF12    dec         eax
 005AEF13    test        eax,eax
>005AEF15    jl          005AEF78
 005AEF17    inc         eax
 005AEF18    mov         dword ptr [ebp-1C],eax
 005AEF1B    mov         dword ptr [ebp-0C],0
 005AEF22    mov         edx,dword ptr [ebp-0C]
 005AEF25    mov         eax,dword ptr [ebp-14]
 005AEF28    mov         ecx,dword ptr [eax]
 005AEF2A    call        dword ptr [ecx+18]
 005AEF2D    test        eax,eax
>005AEF2F    je          005AEF70
 005AEF31    mov         edx,dword ptr [ebp-0C]
 005AEF34    mov         eax,dword ptr [ebp-14]
 005AEF37    mov         ecx,dword ptr [eax]
 005AEF39    call        dword ptr [ecx+18]
 005AEF3C    mov         edx,dword ptr ds:[5AD1C4];TItemProp
 005AEF42    call        @IsClass
 005AEF47    test        al,al
>005AEF49    je          005AEF70
 005AEF4B    mov         edx,dword ptr [ebp-0C]
 005AEF4E    mov         eax,dword ptr [ebp-14]
 005AEF51    mov         ecx,dword ptr [eax]
 005AEF53    call        dword ptr [ecx+18]
 005AEF56    push        eax
 005AEF57    lea         eax,[ebp-4C]
 005AEF5A    mov         edx,dword ptr [ebp-0C]
 005AEF5D    mov         cl,0FC
 005AEF5F    call        0066D574
 005AEF64    lea         edx,[ebp-4C]
 005AEF67    mov         eax,dword ptr [ebp-4]
 005AEF6A    pop         ecx
 005AEF6B    call        005AF62C
 005AEF70    inc         dword ptr [ebp-0C]
 005AEF73    dec         dword ptr [ebp-1C]
>005AEF76    jne         005AEF22
 005AEF78    xor         eax,eax
 005AEF7A    pop         edx
 005AEF7B    pop         ecx
 005AEF7C    pop         ecx
 005AEF7D    mov         dword ptr fs:[eax],edx
 005AEF80    push        5AEFA0
 005AEF85    lea         eax,[ebp-4C]
 005AEF88    mov         edx,dword ptr ds:[66903C];Variant
 005AEF8E    mov         ecx,3
 005AEF93    call        @FinalizeArray
 005AEF98    ret
>005AEF99    jmp         @HandleFinally
>005AEF9E    jmp         005AEF85
 005AEFA0    mov         esp,ebp
 005AEFA2    pop         ebp
 005AEFA3    ret
*}
end;

//005AEFA4
procedure sub_005AEFA4;
begin
{*
 005AEFA4    push        ebp
 005AEFA5    mov         ebp,esp
 005AEFA7    push        ecx
 005AEFA8    push        esi
 005AEFA9    mov         dword ptr [ebp-4],eax
 005AEFAC    mov         eax,dword ptr [ebp-4]
 005AEFAF    call        00647E90
 005AEFB4    mov         eax,dword ptr [ebp-4]
 005AEFB7    cmp         dword ptr [eax+8],0;TValueListStrings.FUpdateCount:Integer
>005AEFBB    jne         005AEFE4
 005AEFBD    mov         eax,dword ptr [ebp-4]
 005AEFC0    cmp         dword ptr [eax+34],0;TValueListStrings.FEditor:TValueListEditor
>005AEFC4    je          005AEFE4
 005AEFC6    mov         eax,dword ptr [ebp-4]
 005AEFC9    mov         eax,dword ptr [eax+34];TValueListStrings.FEditor:TValueListEditor
 005AEFCC    cmp         dword ptr [eax+2F0],0;TValueListEditor.FEditUpdate:Integer
>005AEFD3    jne         005AEFE4
 005AEFD5    mov         eax,dword ptr [ebp-4]
 005AEFD8    mov         eax,dword ptr [eax+34];TValueListStrings.FEditor:TValueListEditor
 005AEFDB    mov         si,0FF9D
 005AEFDF    call        @CallDynaInst;TValueListEditor.sub_005ADFC4
 005AEFE4    pop         esi
 005AEFE5    pop         ecx
 005AEFE6    pop         ebp
 005AEFE7    ret
*}
end;

//005AEFE8
procedure sub_005AEFE8;
begin
{*
 005AEFE8    push        ebp
 005AEFE9    mov         ebp,esp
 005AEFEB    push        ecx
 005AEFEC    mov         dword ptr [ebp-4],eax
 005AEFEF    mov         eax,dword ptr [ebp-4]
 005AEFF2    call        00647E64
 005AEFF7    mov         eax,dword ptr [ebp-4]
 005AEFFA    cmp         dword ptr [eax+8],0;TValueListStrings.FUpdateCount:Integer
>005AEFFE    jne         005AF014
 005AF000    mov         eax,dword ptr [ebp-4]
 005AF003    cmp         dword ptr [eax+34],0;TValueListStrings.FEditor:TValueListEditor
>005AF007    je          005AF014
 005AF009    mov         eax,dword ptr [ebp-4]
 005AF00C    mov         eax,dword ptr [eax+34];TValueListStrings.FEditor:TValueListEditor
 005AF00F    call        005ADF90
 005AF014    pop         ecx
 005AF015    pop         ebp
 005AF016    ret
*}
end;

//005AF018
{*function sub_005AF018(?:TValueListStrings; ?:?; ?:?):?;
begin
 005AF018    push        ebp
 005AF019    mov         ebp,esp
 005AF01B    add         esp,0FFFFFFE8
 005AF01E    mov         byte ptr [ebp-9],cl
 005AF021    mov         dword ptr [ebp-8],edx
 005AF024    mov         dword ptr [ebp-4],eax
 005AF027    mov         byte ptr [ebp-0A],1
 005AF02B    mov         edx,dword ptr [ebp-8]
 005AF02E    mov         eax,5AF0C8;'='
 005AF033    call        @LStrPos
 005AF038    test        eax,eax
>005AF03A    je          005AF053
 005AF03C    mov         ecx,dword ptr ds:[6E9FF0];^gvar_0063CDF0
 005AF042    mov         dl,1
 005AF044    mov         eax,[00656774];Exception
 005AF049    call        Exception.Create;Exception.Create
 005AF04E    call        @RaiseExcept
 005AF053    mov         eax,dword ptr [ebp-4]
 005AF056    cmp         dword ptr [eax+34],0;TValueListStrings.FEditor:TValueListEditor
>005AF05A    je          005AF0B8
 005AF05C    mov         eax,dword ptr [ebp-4]
 005AF05F    mov         eax,dword ptr [eax+34];TValueListStrings.FEditor:TValueListEditor
 005AF062    test        byte ptr [eax+2E0],8;TValueListEditor.KeyOptions:TKeyOptions
>005AF069    je          005AF0B8
 005AF06B    cmp         dword ptr [ebp-8],0
>005AF06F    je          005AF0B8
 005AF071    mov         edx,dword ptr [ebp-8]
 005AF074    mov         eax,dword ptr [ebp-4]
 005AF077    mov         ecx,dword ptr [eax]
 005AF079    call        dword ptr [ecx+58];TValueListStrings.sub_00647560
 005AF07C    mov         dword ptr [ebp-10],eax
 005AF07F    cmp         dword ptr [ebp-10],0FFFFFFFF
 005AF083    sete        byte ptr [ebp-0A]
 005AF087    mov         al,byte ptr [ebp-0A]
 005AF08A    xor         al,1
 005AF08C    and         al,byte ptr [ebp-9]
>005AF08F    je          005AF0B8
 005AF091    mov         eax,dword ptr [ebp-8]
 005AF094    mov         dword ptr [ebp-18],eax
 005AF097    mov         byte ptr [ebp-14],0B
 005AF09B    lea         eax,[ebp-18]
 005AF09E    push        eax
 005AF09F    push        0
 005AF0A1    mov         ecx,dword ptr ds:[6E9FE4];^gvar_0063CDD8
 005AF0A7    mov         dl,1
 005AF0A9    mov         eax,[00656774];Exception
 005AF0AE    call        Exception.CreateResFmt;Exception.Create
 005AF0B3    call        @RaiseExcept
 005AF0B8    mov         al,byte ptr [ebp-0A]
 005AF0BB    mov         esp,ebp
 005AF0BD    pop         ebp
 005AF0BE    ret
end;*}

//005AF0CC
procedure TValueListStrings.Clear;
begin
{*
 005AF0CC    push        ebp
 005AF0CD    mov         ebp,esp
 005AF0CF    add         esp,0FFFFFFF4
 005AF0D2    mov         dword ptr [ebp-4],eax
 005AF0D5    mov         eax,dword ptr [ebp-4]
 005AF0D8    call        TStringList.Clear
 005AF0DD    mov         eax,dword ptr [ebp-4]
 005AF0E0    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF0E3    call        @DynArrayLength
 005AF0E8    dec         eax
 005AF0E9    test        eax,eax
>005AF0EB    jl          005AF111
 005AF0ED    inc         eax
 005AF0EE    mov         dword ptr [ebp-0C],eax
 005AF0F1    mov         dword ptr [ebp-8],0
 005AF0F8    mov         eax,dword ptr [ebp-4]
 005AF0FB    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF0FE    mov         edx,dword ptr [ebp-8]
 005AF101    mov         eax,dword ptr [eax+edx*4]
 005AF104    call        TObject.Free
 005AF109    inc         dword ptr [ebp-8]
 005AF10C    dec         dword ptr [ebp-0C]
>005AF10F    jne         005AF0F8
 005AF111    push        0
 005AF113    mov         eax,dword ptr [ebp-4]
 005AF116    add         eax,30;TValueListStrings.FItemProps:TItemProps
 005AF119    mov         ecx,1
 005AF11E    mov         edx,dword ptr ds:[5AD068];TItemProps
 005AF124    call        @DynArraySetLength
 005AF129    add         esp,4
 005AF12C    mov         esp,ebp
 005AF12E    pop         ebp
 005AF12F    ret
*}
end;

//005AF130
{*procedure sub_005AF130(?:?);
begin
 005AF130    push        ebp
 005AF131    mov         ebp,esp
 005AF133    add         esp,0FFFFFFDC
 005AF136    push        ebx
 005AF137    xor         ecx,ecx
 005AF139    mov         dword ptr [ebp-24],ecx
 005AF13C    mov         dword ptr [ebp-20],ecx
 005AF13F    mov         dword ptr [ebp-18],ecx
 005AF142    mov         dword ptr [ebp-8],edx
 005AF145    mov         dword ptr [ebp-4],eax
 005AF148    xor         eax,eax
 005AF14A    push        ebp
 005AF14B    push        5AF28E
 005AF150    push        dword ptr fs:[eax]
 005AF153    mov         dword ptr fs:[eax],esp
 005AF156    mov         dl,1
 005AF158    mov         eax,[006422A4];TList
 005AF15D    call        TObject.Create;TList.Create
 005AF162    mov         dword ptr [ebp-14],eax
 005AF165    xor         eax,eax
 005AF167    push        ebp
 005AF168    push        5AF253
 005AF16D    push        dword ptr fs:[eax]
 005AF170    mov         dword ptr fs:[eax],esp
 005AF173    mov         eax,dword ptr [ebp-4]
 005AF176    mov         edx,dword ptr [eax]
 005AF178    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF17B    mov         edx,eax
 005AF17D    mov         eax,dword ptr [ebp-14]
 005AF180    call        00645404
 005AF185    mov         eax,dword ptr [ebp-4]
 005AF188    mov         edx,dword ptr [eax]
 005AF18A    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF18D    push        eax
 005AF18E    lea         eax,[ebp-18]
 005AF191    push        eax
 005AF192    mov         eax,dword ptr [ebp-4]
 005AF195    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF198    xor         ecx,ecx
 005AF19A    mov         edx,dword ptr ds:[5AD068];TItemProps
 005AF1A0    call        @DynArrayCopyRange
 005AF1A5    mov         eax,dword ptr [ebp-4]
 005AF1A8    mov         edx,dword ptr [eax]
 005AF1AA    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF1AD    dec         eax
 005AF1AE    test        eax,eax
>005AF1B0    jl          005AF1E1
 005AF1B2    inc         eax
 005AF1B3    mov         dword ptr [ebp-1C],eax
 005AF1B6    mov         dword ptr [ebp-0C],0
 005AF1BD    lea         ecx,[ebp-20]
 005AF1C0    mov         edx,dword ptr [ebp-0C]
 005AF1C3    mov         eax,dword ptr [ebp-4]
 005AF1C6    mov         ebx,dword ptr [eax]
 005AF1C8    call        dword ptr [ebx+0C];TValueListStrings.sub_00648130
 005AF1CB    mov         ecx,dword ptr [ebp-20]
 005AF1CE    mov         edx,dword ptr [ebp-0C]
 005AF1D1    mov         eax,dword ptr [ebp-14]
 005AF1D4    call        TList.Put
 005AF1D9    inc         dword ptr [ebp-0C]
 005AF1DC    dec         dword ptr [ebp-1C]
>005AF1DF    jne         005AF1BD
 005AF1E1    mov         edx,dword ptr [ebp-8]
 005AF1E4    mov         eax,dword ptr [ebp-4]
 005AF1E7    call        0064865C
 005AF1EC    mov         eax,dword ptr [ebp-4]
 005AF1EF    mov         edx,dword ptr [eax]
 005AF1F1    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF1F4    dec         eax
 005AF1F5    test        eax,eax
>005AF1F7    jl          005AF23D
 005AF1F9    inc         eax
 005AF1FA    mov         dword ptr [ebp-1C],eax
 005AF1FD    mov         dword ptr [ebp-0C],0
 005AF204    lea         ecx,[ebp-24]
 005AF207    mov         edx,dword ptr [ebp-0C]
 005AF20A    mov         eax,dword ptr [ebp-4]
 005AF20D    mov         ebx,dword ptr [eax]
 005AF20F    call        dword ptr [ebx+0C];TValueListStrings.sub_00648130
 005AF212    mov         edx,dword ptr [ebp-24]
 005AF215    mov         eax,dword ptr [ebp-14]
 005AF218    call        TList.IndexOf
 005AF21D    mov         dword ptr [ebp-10],eax
 005AF220    mov         eax,dword ptr [ebp-18]
 005AF223    mov         edx,dword ptr [ebp-10]
 005AF226    mov         eax,dword ptr [eax+edx*4]
 005AF229    mov         edx,dword ptr [ebp-4]
 005AF22C    mov         edx,dword ptr [edx+30];TValueListStrings.FItemProps:TItemProps
 005AF22F    mov         ecx,dword ptr [ebp-0C]
 005AF232    mov         dword ptr [edx+ecx*4],eax
 005AF235    inc         dword ptr [ebp-0C]
 005AF238    dec         dword ptr [ebp-1C]
>005AF23B    jne         005AF204
 005AF23D    xor         eax,eax
 005AF23F    pop         edx
 005AF240    pop         ecx
 005AF241    pop         ecx
 005AF242    mov         dword ptr fs:[eax],edx
 005AF245    push        5AF25A
 005AF24A    mov         eax,dword ptr [ebp-14]
 005AF24D    call        TObject.Free
 005AF252    ret
>005AF253    jmp         @HandleFinally
>005AF258    jmp         005AF24A
 005AF25A    mov         eax,dword ptr [ebp-4]
 005AF25D    mov         eax,dword ptr [eax+34];TValueListStrings.FEditor:TValueListEditor
 005AF260    call        005B4B08
 005AF265    xor         eax,eax
 005AF267    pop         edx
 005AF268    pop         ecx
 005AF269    pop         ecx
 005AF26A    mov         dword ptr fs:[eax],edx
 005AF26D    push        5AF295
 005AF272    lea         eax,[ebp-24]
 005AF275    mov         edx,2
 005AF27A    call        @LStrArrayClr
 005AF27F    lea         eax,[ebp-18]
 005AF282    mov         edx,dword ptr ds:[5AD068];TItemProps
 005AF288    call        @DynArrayClear
 005AF28D    ret
>005AF28E    jmp         @HandleFinally
>005AF293    jmp         005AF272
 005AF295    pop         ebx
 005AF296    mov         esp,ebp
 005AF298    pop         ebp
 005AF299    ret
end;*}

//005AF29C
{*procedure sub_005AF29C(?:?);
begin
 005AF29C    push        ebp
 005AF29D    mov         ebp,esp
 005AF29F    add         esp,0FFFFFFF8
 005AF2A2    push        ebx
 005AF2A3    mov         dword ptr [ebp-8],edx
 005AF2A6    mov         dword ptr [ebp-4],eax
 005AF2A9    mov         eax,dword ptr [ebp-4]
 005AF2AC    mov         edx,dword ptr [eax]
 005AF2AE    call        dword ptr [edx+84];TValueListStrings.sub_005AEFA4
 005AF2B4    mov         edx,dword ptr [ebp-8]
 005AF2B7    mov         eax,dword ptr [ebp-4]
 005AF2BA    call        00647F10
 005AF2BF    mov         eax,dword ptr [ebp-4]
 005AF2C2    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF2C5    mov         edx,dword ptr [ebp-8]
 005AF2C8    mov         eax,dword ptr [eax+edx*4]
 005AF2CB    call        TObject.Free
 005AF2D0    mov         eax,dword ptr [ebp-4]
 005AF2D3    mov         edx,dword ptr [eax]
 005AF2D5    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF2D8    cmp         eax,dword ptr [ebp-8]
>005AF2DB    jle         005AF30B
 005AF2DD    mov         eax,dword ptr [ebp-4]
 005AF2E0    mov         edx,dword ptr [eax]
 005AF2E2    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF2E5    sub         eax,dword ptr [ebp-8]
 005AF2E8    mov         ecx,eax
 005AF2EA    shl         ecx,2
 005AF2ED    mov         eax,dword ptr [ebp-4]
 005AF2F0    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF2F3    mov         edx,dword ptr [ebp-8]
 005AF2F6    lea         edx,[eax+edx*4]
 005AF2F9    mov         eax,dword ptr [ebp-4]
 005AF2FC    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF2FF    mov         ebx,dword ptr [ebp-8]
 005AF302    lea         eax,[eax+ebx*4+4]
 005AF306    call        Move
 005AF30B    mov         eax,dword ptr [ebp-4]
 005AF30E    mov         edx,dword ptr [eax]
 005AF310    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF313    push        eax
 005AF314    mov         eax,dword ptr [ebp-4]
 005AF317    add         eax,30;TValueListStrings.FItemProps:TItemProps
 005AF31A    mov         ecx,1
 005AF31F    mov         edx,dword ptr ds:[5AD068];TItemProps
 005AF325    call        @DynArraySetLength
 005AF32A    add         esp,4
 005AF32D    mov         eax,dword ptr [ebp-4]
 005AF330    mov         edx,dword ptr [eax]
 005AF332    call        dword ptr [edx+80];TValueListStrings.sub_005AEFE8
 005AF338    pop         ebx
 005AF339    pop         ecx
 005AF33A    pop         ecx
 005AF33B    pop         ebp
 005AF33C    ret
end;*}

//005AF340
{*procedure sub_005AF340(?:?; ?:?);
begin
 005AF340    push        ebp
 005AF341    mov         ebp,esp
 005AF343    add         esp,0FFFFFFF0
 005AF346    mov         dword ptr [ebp-0C],ecx
 005AF349    mov         dword ptr [ebp-8],edx
 005AF34C    mov         dword ptr [ebp-4],eax
 005AF34F    mov         eax,dword ptr [ebp-4]
 005AF352    mov         edx,dword ptr [eax]
 005AF354    call        dword ptr [edx+84];TValueListStrings.sub_005AEFA4
 005AF35A    mov         ecx,dword ptr [ebp-0C]
 005AF35D    mov         edx,dword ptr [ebp-8]
 005AF360    mov         eax,dword ptr [ebp-4]
 005AF363    call        00647FB0
 005AF368    mov         eax,dword ptr [ebp-4]
 005AF36B    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF36E    mov         edx,dword ptr [ebp-8]
 005AF371    mov         eax,dword ptr [eax+edx*4]
 005AF374    mov         dword ptr [ebp-10],eax
 005AF377    mov         eax,dword ptr [ebp-4]
 005AF37A    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF37D    mov         edx,dword ptr [ebp-0C]
 005AF380    mov         eax,dword ptr [eax+edx*4]
 005AF383    mov         edx,dword ptr [ebp-4]
 005AF386    mov         edx,dword ptr [edx+30];TValueListStrings.FItemProps:TItemProps
 005AF389    mov         ecx,dword ptr [ebp-8]
 005AF38C    mov         dword ptr [edx+ecx*4],eax
 005AF38F    mov         eax,dword ptr [ebp-4]
 005AF392    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF395    mov         edx,dword ptr [ebp-0C]
 005AF398    mov         ecx,dword ptr [ebp-10]
 005AF39B    mov         dword ptr [eax+edx*4],ecx
 005AF39E    mov         eax,dword ptr [ebp-4]
 005AF3A1    mov         edx,dword ptr [eax]
 005AF3A3    call        dword ptr [edx+80];TValueListStrings.sub_005AEFE8
 005AF3A9    mov         esp,ebp
 005AF3AB    pop         ebp
 005AF3AC    ret
end;*}

//005AF3B0
{*function sub_005AF3B0(?:TPersistent; ?:?; ?:?):?;
begin
 005AF3B0    push        ebp
 005AF3B1    mov         ebp,esp
 005AF3B3    add         esp,0FFFFFFE0
 005AF3B6    push        ebx
 005AF3B7    xor         ebx,ebx
 005AF3B9    mov         dword ptr [ebp-18],ebx
 005AF3BC    mov         byte ptr [ebp-9],cl
 005AF3BF    mov         dword ptr [ebp-8],edx
 005AF3C2    mov         dword ptr [ebp-4],eax
 005AF3C5    xor         eax,eax
 005AF3C7    push        ebp
 005AF3C8    push        5AF4A4
 005AF3CD    push        dword ptr fs:[eax]
 005AF3D0    mov         dword ptr fs:[eax],esp
 005AF3D3    mov         eax,dword ptr [ebp-4]
 005AF3D6    mov         edx,dword ptr [eax]
 005AF3D8    call        dword ptr [edx+14]
 005AF3DB    test        eax,eax
>005AF3DD    jle         005AF489
 005AF3E3    mov         eax,dword ptr [ebp-8]
 005AF3E6    call        00667438
 005AF3EB    test        al,al
>005AF3ED    je          005AF3FC
 005AF3EF    mov         eax,dword ptr [ebp-8]
 005AF3F2    call        0066D52C
 005AF3F7    mov         dword ptr [ebp-14],eax
>005AF3FA    jmp         005AF448
 005AF3FC    lea         eax,[ebp-18]
 005AF3FF    mov         edx,dword ptr [ebp-8]
 005AF402    call        0066D554
 005AF407    mov         edx,dword ptr [ebp-18]
 005AF40A    mov         eax,dword ptr [ebp-4]
 005AF40D    mov         ecx,dword ptr [eax]
 005AF40F    call        dword ptr [ecx+58]
 005AF412    mov         dword ptr [ebp-14],eax
 005AF415    cmp         byte ptr [ebp-9],0
>005AF419    je          005AF448
 005AF41B    cmp         dword ptr [ebp-14],0FFFFFFFF
>005AF41F    jne         005AF448
 005AF421    mov         eax,dword ptr [ebp-8]
 005AF424    mov         dword ptr [ebp-20],eax
 005AF427    mov         byte ptr [ebp-1C],0D
 005AF42B    lea         eax,[ebp-20]
 005AF42E    push        eax
 005AF42F    push        0
 005AF431    mov         ecx,dword ptr ds:[6E9FE8];^gvar_0063CDE0
 005AF437    mov         dl,1
 005AF439    mov         eax,[00656774];Exception
 005AF43E    call        Exception.CreateResFmt;Exception.Create
 005AF443    call        @RaiseExcept
 005AF448    mov         eax,dword ptr [ebp-4]
 005AF44B    mov         eax,dword ptr [eax+30]
 005AF44E    mov         edx,dword ptr [ebp-14]
 005AF451    mov         eax,dword ptr [eax+edx*4]
 005AF454    mov         dword ptr [ebp-10],eax
 005AF457    cmp         byte ptr [ebp-9],0
>005AF45B    je          005AF48E
 005AF45D    cmp         dword ptr [ebp-10],0
>005AF461    jne         005AF48E
 005AF463    mov         eax,dword ptr [ebp-4]
 005AF466    mov         ecx,dword ptr [eax+34]
 005AF469    mov         dl,1
 005AF46B    mov         eax,[005AD1C4];TItemProp
 005AF470    call        TItemProp.Create;TItemProp.Create
 005AF475    mov         dword ptr [ebp-10],eax
 005AF478    mov         eax,dword ptr [ebp-4]
 005AF47B    mov         eax,dword ptr [eax+30]
 005AF47E    mov         edx,dword ptr [ebp-14]
 005AF481    mov         ecx,dword ptr [ebp-10]
 005AF484    mov         dword ptr [eax+edx*4],ecx
>005AF487    jmp         005AF48E
 005AF489    xor         eax,eax
 005AF48B    mov         dword ptr [ebp-10],eax
 005AF48E    xor         eax,eax
 005AF490    pop         edx
 005AF491    pop         ecx
 005AF492    pop         ecx
 005AF493    mov         dword ptr fs:[eax],edx
 005AF496    push        5AF4AB
 005AF49B    lea         eax,[ebp-18]
 005AF49E    call        @LStrClr
 005AF4A3    ret
>005AF4A4    jmp         @HandleFinally
>005AF4A9    jmp         005AF49B
 005AF4AB    mov         eax,dword ptr [ebp-10]
 005AF4AE    pop         ebx
 005AF4AF    mov         esp,ebp
 005AF4B1    pop         ebp
 005AF4B2    ret
end;*}

//005AF4B4
{*procedure sub_005AF4B4(?:?; ?:?; ?:?);
begin
 005AF4B4    push        ebp
 005AF4B5    mov         ebp,esp
 005AF4B7    add         esp,0FFFFFFEC
 005AF4BA    push        ebx
 005AF4BB    xor         ebx,ebx
 005AF4BD    mov         dword ptr [ebp-14],ebx
 005AF4C0    mov         dword ptr [ebp-0C],ecx
 005AF4C3    mov         dword ptr [ebp-8],edx
 005AF4C6    mov         dword ptr [ebp-4],eax
 005AF4C9    xor         eax,eax
 005AF4CB    push        ebp
 005AF4CC    push        5AF59D
 005AF4D1    push        dword ptr fs:[eax]
 005AF4D4    mov         dword ptr fs:[eax],esp
 005AF4D7    lea         ecx,[ebp-14]
 005AF4DA    mov         edx,dword ptr [ebp-0C]
 005AF4DD    mov         eax,dword ptr [ebp-4]
 005AF4E0    call        006471A8
 005AF4E5    mov         edx,dword ptr [ebp-14]
 005AF4E8    mov         cl,1
 005AF4EA    mov         eax,dword ptr [ebp-4]
 005AF4ED    call        005AF018
 005AF4F2    mov         eax,dword ptr [ebp-4]
 005AF4F5    mov         edx,dword ptr [eax]
 005AF4F7    call        dword ptr [edx+84];TValueListStrings.sub_005AEFA4
 005AF4FD    mov         eax,dword ptr [ebp-4]
 005AF500    mov         edx,dword ptr [eax]
 005AF502    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF505    mov         dword ptr [ebp-10],eax
 005AF508    mov         eax,dword ptr [ebp-4]
 005AF50B    mov         edx,dword ptr [eax]
 005AF50D    call        dword ptr [edx+14];TValueListStrings.sub_00648198
 005AF510    inc         eax
 005AF511    push        eax
 005AF512    mov         eax,dword ptr [ebp-4]
 005AF515    add         eax,30;TValueListStrings.FItemProps:TItemProps
 005AF518    mov         ecx,1
 005AF51D    mov         edx,dword ptr ds:[5AD068];TItemProps
 005AF523    call        @DynArraySetLength
 005AF528    add         esp,4
 005AF52B    mov         eax,dword ptr [ebp+8]
 005AF52E    push        eax
 005AF52F    mov         ecx,dword ptr [ebp-0C]
 005AF532    mov         edx,dword ptr [ebp-8]
 005AF535    mov         eax,dword ptr [ebp-4]
 005AF538    call        00648330
 005AF53D    mov         eax,dword ptr [ebp-8]
 005AF540    cmp         eax,dword ptr [ebp-10]
>005AF543    jge         005AF56E
 005AF545    mov         eax,dword ptr [ebp-10]
 005AF548    sub         eax,dword ptr [ebp-8]
 005AF54B    mov         ecx,eax
 005AF54D    shl         ecx,2
 005AF550    mov         eax,dword ptr [ebp-4]
 005AF553    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF556    mov         edx,dword ptr [ebp-8]
 005AF559    lea         edx,[eax+edx*4+4]
 005AF55D    mov         eax,dword ptr [ebp-4]
 005AF560    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF563    mov         ebx,dword ptr [ebp-8]
 005AF566    lea         eax,[eax+ebx*4]
 005AF569    call        Move
 005AF56E    mov         eax,dword ptr [ebp-4]
 005AF571    mov         eax,dword ptr [eax+30];TValueListStrings.FItemProps:TItemProps
 005AF574    mov         edx,dword ptr [ebp-8]
 005AF577    xor         ecx,ecx
 005AF579    mov         dword ptr [eax+edx*4],ecx
 005AF57C    mov         eax,dword ptr [ebp-4]
 005AF57F    mov         edx,dword ptr [eax]
 005AF581    call        dword ptr [edx+80];TValueListStrings.sub_005AEFE8
 005AF587    xor         eax,eax
 005AF589    pop         edx
 005AF58A    pop         ecx
 005AF58B    pop         ecx
 005AF58C    mov         dword ptr fs:[eax],edx
 005AF58F    push        5AF5A4
 005AF594    lea         eax,[ebp-14]
 005AF597    call        @LStrClr
 005AF59C    ret
>005AF59D    jmp         @HandleFinally
>005AF5A2    jmp         005AF594
 005AF5A4    pop         ebx
 005AF5A5    mov         esp,ebp
 005AF5A7    pop         ebp
 005AF5A8    ret         4
end;*}

//005AF5AC
{*procedure sub_005AF5AC(?:?; ?:?);
begin
 005AF5AC    push        ebp
 005AF5AD    mov         ebp,esp
 005AF5AF    add         esp,0FFFFFFF0
 005AF5B2    push        ebx
 005AF5B3    xor         ebx,ebx
 005AF5B5    mov         dword ptr [ebp-10],ebx
 005AF5B8    mov         dword ptr [ebp-0C],ecx
 005AF5BB    mov         dword ptr [ebp-8],edx
 005AF5BE    mov         dword ptr [ebp-4],eax
 005AF5C1    xor         eax,eax
 005AF5C3    push        ebp
 005AF5C4    push        5AF61D
 005AF5C9    push        dword ptr fs:[eax]
 005AF5CC    mov         dword ptr fs:[eax],esp
 005AF5CF    lea         ecx,[ebp-10]
 005AF5D2    mov         edx,dword ptr [ebp-0C]
 005AF5D5    mov         eax,dword ptr [ebp-4]
 005AF5D8    call        006471A8
 005AF5DD    mov         edx,dword ptr [ebp-10]
 005AF5E0    mov         eax,dword ptr [ebp-4]
 005AF5E3    mov         ecx,dword ptr [eax]
 005AF5E5    call        dword ptr [ecx+58];TValueListStrings.sub_00647560
 005AF5E8    cmp         eax,dword ptr [ebp-8]
 005AF5EB    setne       cl
 005AF5EE    mov         edx,dword ptr [ebp-10]
 005AF5F1    mov         eax,dword ptr [ebp-4]
 005AF5F4    call        005AF018
 005AF5F9    mov         ecx,dword ptr [ebp-0C]
 005AF5FC    mov         edx,dword ptr [ebp-8]
 005AF5FF    mov         eax,dword ptr [ebp-4]
 005AF602    call        006483D8
 005AF607    xor         eax,eax
 005AF609    pop         edx
 005AF60A    pop         ecx
 005AF60B    pop         ecx
 005AF60C    mov         dword ptr fs:[eax],edx
 005AF60F    push        5AF624
 005AF614    lea         eax,[ebp-10]
 005AF617    call        @LStrClr
 005AF61C    ret
>005AF61D    jmp         @HandleFinally
>005AF622    jmp         005AF614
 005AF624    pop         ebx
 005AF625    mov         esp,ebp
 005AF627    pop         ebp
 005AF628    ret
end;*}

//005AF62C
{*procedure sub_005AF62C(?:TValueListStrings; ?:?; ?:?);
begin
 005AF62C    push        ebp
 005AF62D    mov         ebp,esp
 005AF62F    add         esp,0FFFFFFF4
 005AF632    mov         dword ptr [ebp-0C],ecx
 005AF635    mov         dword ptr [ebp-8],edx
 005AF638    mov         dword ptr [ebp-4],eax
 005AF63B    mov         edx,dword ptr [ebp-8]
 005AF63E    mov         cl,1
 005AF640    mov         eax,dword ptr [ebp-4]
 005AF643    call        005AF3B0
 005AF648    mov         edx,dword ptr [ebp-0C]
 005AF64B    mov         ecx,dword ptr [eax]
 005AF64D    call        dword ptr [ecx+8]
 005AF650    mov         esp,ebp
 005AF652    pop         ebp
 005AF653    ret
end;*}

//005AF654
constructor TItemProp.Create;
begin
{*
 005AF654    push        ebp
 005AF655    mov         ebp,esp
 005AF657    add         esp,0FFFFFFF4
 005AF65A    test        dl,dl
>005AF65C    je          005AF666
 005AF65E    add         esp,0FFFFFFF0
 005AF661    call        @ClassCreate
 005AF666    mov         dword ptr [ebp-0C],ecx
 005AF669    mov         byte ptr [ebp-5],dl
 005AF66C    mov         dword ptr [ebp-4],eax
 005AF66F    mov         eax,dword ptr [ebp-4]
 005AF672    mov         edx,dword ptr [ebp-0C]
 005AF675    mov         dword ptr [eax+4],edx;TItemProp.FEditor:TValueListEditor
 005AF678    mov         eax,dword ptr [ebp-4]
 005AF67B    cmp         byte ptr [ebp-5],0
>005AF67F    je          005AF690
 005AF681    call        @AfterConstruction
 005AF686    pop         dword ptr fs:[0]
 005AF68D    add         esp,0C
 005AF690    mov         eax,dword ptr [ebp-4]
 005AF693    mov         esp,ebp
 005AF695    pop         ebp
 005AF696    ret
*}
end;

//005AF698
destructor TItemProp.Destroy;
begin
{*
 005AF698    push        ebp
 005AF699    mov         ebp,esp
 005AF69B    add         esp,0FFFFFFF8
 005AF69E    call        @BeforeDestruction
 005AF6A3    mov         byte ptr [ebp-5],dl
 005AF6A6    mov         dword ptr [ebp-4],eax
 005AF6A9    mov         dl,byte ptr [ebp-5]
 005AF6AC    and         dl,0FC
 005AF6AF    mov         eax,dword ptr [ebp-4]
 005AF6B2    call        TPersistent.Destroy
 005AF6B7    mov         eax,dword ptr [ebp-4]
 005AF6BA    mov         eax,dword ptr [eax+10];TItemProp.FPickList:TStrings
 005AF6BD    call        TObject.Free
 005AF6C2    cmp         byte ptr [ebp-5],0
>005AF6C6    jle         005AF6D0
 005AF6C8    mov         eax,dword ptr [ebp-4]
 005AF6CB    call        @ClassDestroy
 005AF6D0    pop         ecx
 005AF6D1    pop         ecx
 005AF6D2    pop         ebp
 005AF6D3    ret
*}
end;

//005AF6D4
procedure TItemProp.AssignTo(Dest:TPersistent);
begin
{*
 005AF6D4    push        ebp
 005AF6D5    mov         ebp,esp
 005AF6D7    add         esp,0FFFFFFF4
 005AF6DA    mov         dword ptr [ebp-8],edx
 005AF6DD    mov         dword ptr [ebp-4],eax
 005AF6E0    mov         eax,dword ptr [ebp-8]
 005AF6E3    mov         edx,dword ptr ds:[5AD1C4];TItemProp
 005AF6E9    call        @IsClass
 005AF6EE    test        al,al
>005AF6F0    je          005AF762
 005AF6F2    mov         eax,dword ptr [ebp-8]
 005AF6F5    mov         edx,dword ptr ds:[5AD1C4];TItemProp
 005AF6FB    call        @AsClass
 005AF700    mov         dword ptr [ebp-0C],eax
 005AF703    mov         eax,dword ptr [ebp-4]
 005AF706    mov         edx,dword ptr [eax+8];TItemProp.EditMask:String
 005AF709    mov         eax,dword ptr [ebp-0C]
 005AF70C    call        TItemProp.SetEditMask
 005AF711    mov         eax,dword ptr [ebp-4]
 005AF714    mov         dl,byte ptr [eax+0C];TItemProp.EditStyle:TEditStyle
 005AF717    mov         eax,dword ptr [ebp-0C]
 005AF71A    call        TItemProp.SetEditStyle
 005AF71F    mov         eax,dword ptr [ebp-4]
 005AF722    call        TItemProp.GetPickList
 005AF727    push        eax
 005AF728    mov         eax,dword ptr [ebp-0C]
 005AF72B    call        TItemProp.GetPickList
 005AF730    pop         edx
 005AF731    mov         ecx,dword ptr [eax]
 005AF733    call        dword ptr [ecx+8]
 005AF736    mov         eax,dword ptr [ebp-4]
 005AF739    mov         edx,dword ptr [eax+14];TItemProp.MaxLength:Integer
 005AF73C    mov         eax,dword ptr [ebp-0C]
 005AF73F    call        TItemProp.SetMaxLength
 005AF744    mov         eax,dword ptr [ebp-4]
 005AF747    mov         dl,byte ptr [eax+18];TItemProp.ReadOnly:Boolean
 005AF74A    mov         eax,dword ptr [ebp-0C]
 005AF74D    call        TItemProp.SetReadOnly
 005AF752    mov         eax,dword ptr [ebp-4]
 005AF755    mov         edx,dword ptr [eax+1C];TItemProp.KeyDesc:String
 005AF758    mov         eax,dword ptr [ebp-0C]
 005AF75B    call        TItemProp.SetKeyDesc
>005AF760    jmp         005AF76D
 005AF762    mov         edx,dword ptr [ebp-8]
 005AF765    mov         eax,dword ptr [ebp-4]
 005AF768    call        TPersistent.AssignTo
 005AF76D    mov         esp,ebp
 005AF76F    pop         ebp
 005AF770    ret
*}
end;

//005AF774
procedure TItemProp.SetEditMask(Value:String);
begin
{*
 005AF774    push        ebp
 005AF775    mov         ebp,esp
 005AF777    add         esp,0FFFFFFF8
 005AF77A    mov         dword ptr [ebp-8],edx
 005AF77D    mov         dword ptr [ebp-4],eax
 005AF780    mov         eax,dword ptr [ebp-4]
 005AF783    add         eax,8;TItemProp.EditMask:String
 005AF786    mov         edx,dword ptr [ebp-8]
 005AF789    call        @LStrAsg
 005AF78E    mov         eax,dword ptr [ebp-4]
 005AF791    call        005AF8CC
 005AF796    pop         ecx
 005AF797    pop         ecx
 005AF798    pop         ebp
 005AF799    ret
*}
end;

//005AF79C
procedure TItemProp.SetEditStyle(Value:TEditStyle);
begin
{*
 005AF79C    push        ebp
 005AF79D    mov         ebp,esp
 005AF79F    add         esp,0FFFFFFF8
 005AF7A2    mov         byte ptr [ebp-5],dl
 005AF7A5    mov         dword ptr [ebp-4],eax
 005AF7A8    mov         al,byte ptr [ebp-5]
 005AF7AB    mov         edx,dword ptr [ebp-4]
 005AF7AE    mov         byte ptr [edx+0C],al;TItemProp.EditStyle:TEditStyle
 005AF7B1    mov         eax,dword ptr [ebp-4]
 005AF7B4    call        005AF8CC
 005AF7B9    pop         ecx
 005AF7BA    pop         ecx
 005AF7BB    pop         ebp
 005AF7BC    ret
*}
end;

//005AF7C0
procedure TItemProp.SetKeyDesc(Value:String);
begin
{*
 005AF7C0    push        ebp
 005AF7C1    mov         ebp,esp
 005AF7C3    add         esp,0FFFFFFF8
 005AF7C6    mov         dword ptr [ebp-8],edx
 005AF7C9    mov         dword ptr [ebp-4],eax
 005AF7CC    mov         eax,dword ptr [ebp-4]
 005AF7CF    add         eax,1C;TItemProp.KeyDesc:String
 005AF7D2    mov         edx,dword ptr [ebp-8]
 005AF7D5    call        @LStrAsg
 005AF7DA    pop         ecx
 005AF7DB    pop         ecx
 005AF7DC    pop         ebp
 005AF7DD    ret
*}
end;

//005AF7E0
procedure TItemProp.SetMaxLength(Value:Integer);
begin
{*
 005AF7E0    push        ebp
 005AF7E1    mov         ebp,esp
 005AF7E3    add         esp,0FFFFFFF8
 005AF7E6    mov         dword ptr [ebp-8],edx
 005AF7E9    mov         dword ptr [ebp-4],eax
 005AF7EC    mov         eax,dword ptr [ebp-8]
 005AF7EF    mov         edx,dword ptr [ebp-4]
 005AF7F2    mov         dword ptr [edx+14],eax;TItemProp.MaxLength:Integer
 005AF7F5    mov         eax,dword ptr [ebp-4]
 005AF7F8    call        005AF8CC
 005AF7FD    pop         ecx
 005AF7FE    pop         ecx
 005AF7FF    pop         ebp
 005AF800    ret
*}
end;

//005AF838
{*function TItemProp.GetPickList:?;
begin
 005AF838    push        ebp
 005AF839    mov         ebp,esp
 005AF83B    add         esp,0FFFFFFF8
 005AF83E    mov         dword ptr [ebp-4],eax
 005AF841    mov         eax,dword ptr [ebp-4]
 005AF844    cmp         dword ptr [eax+10],0;TItemProp.FPickList:TStrings
>005AF848    jne         005AF86F
 005AF84A    mov         dl,1
 005AF84C    mov         eax,[006428B0];TStringList
 005AF851    call        TObject.Create;TStringList.Create
 005AF856    mov         edx,dword ptr [ebp-4]
 005AF859    mov         dword ptr [edx+10],eax;TItemProp.FPickList:TStrings
 005AF85C    mov         eax,dword ptr [ebp-4]
 005AF85F    mov         eax,dword ptr [eax+10];TItemProp.FPickList:TStrings
 005AF862    mov         edx,dword ptr [ebp-4]
 005AF865    mov         dword ptr [eax+24],edx
 005AF868    mov         dword ptr [eax+20],5AF90C
 005AF86F    mov         eax,dword ptr [ebp-4]
 005AF872    mov         eax,dword ptr [eax+10];TItemProp.FPickList:TStrings
 005AF875    mov         dword ptr [ebp-8],eax
 005AF878    mov         eax,dword ptr [ebp-8]
 005AF87B    pop         ecx
 005AF87C    pop         ecx
 005AF87D    pop         ebp
 005AF87E    ret
end;*}

//005AF880
procedure TItemProp.SetPickList(Value:TStrings);
begin
{*
 005AF880    push        ebp
 005AF881    mov         ebp,esp
 005AF883    add         esp,0FFFFFFF8
 005AF886    mov         dword ptr [ebp-8],edx
 005AF889    mov         dword ptr [ebp-4],eax
 005AF88C    mov         eax,dword ptr [ebp-4]
 005AF88F    call        TItemProp.GetPickList
 005AF894    mov         edx,dword ptr [ebp-8]
 005AF897    mov         ecx,dword ptr [eax]
 005AF899    call        dword ptr [ecx+8]
 005AF89C    mov         eax,dword ptr [ebp-4]
 005AF89F    call        005AF8CC
 005AF8A4    pop         ecx
 005AF8A5    pop         ecx
 005AF8A6    pop         ebp
 005AF8A7    ret
*}
end;

//005AF8A8
procedure TItemProp.SetReadOnly(Value:Boolean);
begin
{*
 005AF8A8    push        ebp
 005AF8A9    mov         ebp,esp
 005AF8AB    add         esp,0FFFFFFF8
 005AF8AE    mov         byte ptr [ebp-5],dl
 005AF8B1    mov         dword ptr [ebp-4],eax
 005AF8B4    mov         al,byte ptr [ebp-5]
 005AF8B7    mov         edx,dword ptr [ebp-4]
 005AF8BA    mov         byte ptr [edx+18],al;TItemProp.ReadOnly:Boolean
 005AF8BD    mov         eax,dword ptr [ebp-4]
 005AF8C0    call        005AF8CC
 005AF8C5    pop         ecx
 005AF8C6    pop         ecx
 005AF8C7    pop         ebp
 005AF8C8    ret
*}
end;

//005AF8CC
procedure sub_005AF8CC(?:TItemProp);
begin
{*
 005AF8CC    push        ebp
 005AF8CD    mov         ebp,esp
 005AF8CF    push        ecx
 005AF8D0    mov         dword ptr [ebp-4],eax
 005AF8D3    mov         eax,dword ptr [ebp-4]
 005AF8D6    cmp         dword ptr [eax+4],0;TItemProp.FEditor:TValueListEditor
>005AF8DA    je          005AF908
 005AF8DC    mov         eax,dword ptr [ebp-4]
 005AF8DF    mov         eax,dword ptr [eax+4];TItemProp.FEditor:TValueListEditor
 005AF8E2    cmp         byte ptr [eax+28D],0;TValueListEditor.FEditorMode:Boolean
>005AF8E9    je          005AF908
 005AF8EB    mov         eax,dword ptr [ebp-4]
 005AF8EE    mov         eax,dword ptr [eax+4];TItemProp.FEditor:TValueListEditor
 005AF8F1    mov         eax,dword ptr [eax+2DC];TValueListEditor.FStrings:TValueListStrings
 005AF8F7    cmp         dword ptr [eax+8],0;TValueListStrings.FUpdateCount:Integer
>005AF8FB    jne         005AF908
 005AF8FD    mov         eax,dword ptr [ebp-4]
 005AF900    mov         eax,dword ptr [eax+4];TItemProp.FEditor:TValueListEditor
 005AF903    call        005B4B08
 005AF908    pop         ecx
 005AF909    pop         ebp
 005AF90A    ret
*}
end;

//005AF968
procedure Finalization;
begin
{*
 005AF968    push        ebp
 005AF969    mov         ebp,esp
 005AF96B    xor         eax,eax
 005AF96D    push        ebp
 005AF96E    push        5AF98D
 005AF973    push        dword ptr fs:[eax]
 005AF976    mov         dword ptr fs:[eax],esp
 005AF979    inc         dword ptr ds:[6ECD10]
 005AF97F    xor         eax,eax
 005AF981    pop         edx
 005AF982    pop         ecx
 005AF983    pop         ecx
 005AF984    mov         dword ptr fs:[eax],edx
 005AF987    push        5AF994
 005AF98C    ret
>005AF98D    jmp         @HandleFinally
>005AF992    jmp         005AF98C
 005AF994    pop         ebp
 005AF995    ret
*}
end;

end.