//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Mask;

interface

uses
  SysUtils, Classes;

type
  EDBEditError = class(Exception)
  end;
  TCustomMaskEdit = class(TCustomEdit)
  public
    FEditMask:TEditMask;//f220
    FMaskBlank:Char;//f224
    FMaxChars:Integer;//f228
    FMaskSave:Boolean;//f22C
    FMaskState:TMaskedState;//f22D
    FCaretPos:Integer;//f230
    FBtnDownX:Integer;//f234
    FOldValue:String;//f238
    FSettingCursor:Boolean;//f23C
    constructor Create(AOwner:TComponent); virtual;//v2C//005A9F60
    procedure vDC; virtual;//vDC//005AABE8
    //function vE4:?; virtual;//vE4//005AABFC
    procedure vE8; virtual;//vE8//005AAC10
    //function vEC(?:?; ?:?):?; virtual;//vEC//005ABE08
    procedure vF0; virtual;//vF0//005AB624
    procedure vF4; virtual;//vF4//005AB578
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//005AA248
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//005AA1AC
    //procedure WMLButtonUp(?:?); message WM_LBUTTONUP;//005AA1D8
    //procedure WMCut(?:?); message WM_CUT;//005AA528
    //procedure WMPaste(?:?); message WM_PASTE;//005AA568
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//005AB448
    //procedure CMEnter(?:?); message CM_ENTER;//005AB3A0
    //procedure CMExit(?:?); message CM_EXIT;//005AB534
    //procedure CMWantSpecialKey(?:?); message CM_WANTSPECIALKEY;//005AB4EC
    //procedure sub_005AA158(?:?); dynamic;//005AA158
    //procedure sub_005AA0F4(?:?; ?:?); dynamic;//005AA0F4
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//005A9FCC
  end;
  TMaskEdit = class(TCustomMaskEdit)
    //procedure GetText(?:?);//005AA360
    procedure SetText(Value:TMaskedText);//005AA404
    procedure SetEditMask(Value:TEditMask);//005AA758
    //function GetMaxLength:?;//005AA850
    procedure SetMaxLength(Value:Integer);//005AA86C
  end;
    procedure sub_005A93C0;//005A93C0
    constructor Create(AOwner:TComponent);//005A9F60
    procedure KeyDown(var Key:Word; Shift:TShiftState);//005A9FCC
    //procedure sub_005AA0F4(?:?; ?:?);//005AA0F4
    //procedure sub_005AA158(?:?);//005AA158
    //procedure WMLButtonDown(?:?);//005AA1AC
    //procedure WMLButtonUp(?:?);//005AA1D8
    //procedure WMSetFocus(?:?);//005AA248
    procedure sub_005AA278(?:TCustomMaskEdit; ?:AnsiString);//005AA278
    //procedure sub_005AA2EC(?:TCustomMaskEdit; ?:?);//005AA2EC
    //function sub_005AA308(?:TInplaceEdit):?;//005AA308
    //procedure WMCut(?:?);//005AA528
    //procedure WMPaste(?:?);//005AA568
    //function sub_005AA660(?:TCustomMaskEdit):?;//005AA660
    procedure sub_005AA680(?:TMaskEdit; ?:TEditMask);//005AA680
    //procedure sub_005AA8A8(?:TCustomMaskEdit; ?:?; ?:?);//005AA8A8
    procedure sub_005AA8D8(?:TCustomMaskEdit; ?:Integer; ?:Integer);//005AA8D8
    //procedure sub_005AA908(?:TCustomMaskEdit; ?:?);//005AA908
    procedure sub_005AABA0(?:TCustomMaskEdit);//005AABA0
    procedure sub_005AABE8;//005AABE8
    //function sub_005AABFC:?;//005AABFC
    procedure sub_005AAC10;//005AAC10
    //function sub_005AAC44(?:TCustomMaskEdit; ?:?):?;//005AAC44
    //procedure sub_005AAE40(?:?; ?:?; ?:?);//005AAE40
    //procedure sub_005AB06C(?:TCustomMaskEdit; ?:?; ?:?);//005AB06C
    //procedure sub_005AB0BC(?:TCustomMaskEdit; ?:?);//005AB0BC
    //function sub_005AB0F0(?:TCustomMaskEdit; ?:?):?;//005AB0F0
    //function sub_005AB134(?:?; ?:?):?;//005AB134
    //procedure sub_005AB184(?:?; ?:?; ?:?);//005AB184
    //procedure sub_005AB264(?:TCustomMaskEdit; ?:?);//005AB264
    //procedure CMEnter(?:?);//005AB3A0
    //procedure CMTextChanged(?:?);//005AB448
    //procedure CMWantSpecialKey(?:?);//005AB4EC
    //procedure CMExit(?:?);//005AB534
    procedure sub_005AB578;//005AB578
    procedure sub_005AB624;//005AB624
    //procedure sub_005AB668(?:TMaskEdit; ?:AnsiString; ?:?; ?:?);//005AB668
    //procedure sub_005AB6BC(?:TMaskEdit; ?:?; ?:?);//005AB6BC
    //function sub_005AB8F0(?:TCustomMaskEdit; ?:?; ?:?):?;//005AB8F0
    //function sub_005AB9BC(?:?):?;//005AB9BC
    //function sub_005AB9E8(?:?; ?:?):?;//005AB9E8
    //function sub_005ABAE4(?:TCustomMaskEdit; ?:?; ?:?):?;//005ABAE4
    //function sub_005ABE08(?:?; ?:?):?;//005ABE08
    //function sub_005ABECC(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;//005ABECC
    //function sub_005ABF90(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;//005ABF90
    //function sub_005AC2B8(?:TCustomMaskEdit; ?:?; ?:?):?;//005AC2B8
    procedure Finalization;//005AC340

implementation

//005A93C0
procedure sub_005A93C0;
begin
{*
 005A93C0    sub         dword ptr ds:[6ECD04],1
>005A93C7    jae         005A9444
 005A93C9    mov         eax,5A92BC;_NF__580
 005A93CE    call        @InitResStringImports
 005A93D3    mov         eax,[005EE128];TControl
 005A93D8    call        00644444
 005A93DD    mov         eax,[005EE128];TControl
 005A93E2    call        006444EC
 005A93E7    mov         edx,dword ptr ds:[5EE128];TControl
 005A93ED    mov         eax,[005A1ED0];TMenuItem
 005A93F2    call        00644494
 005A93F7    mov         edx,dword ptr ds:[5EE128];TControl
 005A93FD    mov         eax,[005A22F4];TMenu
 005A9402    call        00644494
 005A9407    mov         eax,[005A1ED0];TMenuItem
 005A940C    call        RegisterClass
 005A9411    mov         dl,1
 005A9413    mov         eax,[00642380];TBits
 005A9418    call        TObject.Create;TBits.Create
 005A941D    mov         [006ECD08],eax;CommandPool:TBits
 005A9422    mov         dl,1
 005A9424    mov         eax,[005A2970];TPopupList
 005A9429    call        TObject.Create;TPopupList.Create
 005A942E    mov         [006ECCFC],eax;PopupList:TPopupList
 005A9433    mov         dl,1
 005A9435    mov         eax,[005A29DC];TMenuItemStack
 005A943A    call        TMenuItemStack.Create;TMenuItemStack.Create
 005A943F    mov         [006ECD00],eax;ShortCutItems:TMenuItemStack
 005A9444    ret
*}
end;

//005A9F60
constructor TCustomMaskEdit.Create(AOwner:TComponent);
begin
{*
 005A9F60    push        ebp
 005A9F61    mov         ebp,esp
 005A9F63    add         esp,0FFFFFFF4
 005A9F66    test        dl,dl
>005A9F68    je          005A9F72
 005A9F6A    add         esp,0FFFFFFF0
 005A9F6D    call        @ClassCreate
 005A9F72    mov         dword ptr [ebp-0C],ecx
 005A9F75    mov         byte ptr [ebp-5],dl
 005A9F78    mov         dword ptr [ebp-4],eax
 005A9F7B    mov         ecx,dword ptr [ebp-0C]
 005A9F7E    xor         edx,edx
 005A9F80    mov         eax,dword ptr [ebp-4]
 005A9F83    call        TCustomEdit.Create
 005A9F88    mov         eax,dword ptr [ebp-4]
 005A9F8B    mov         dl,byte ptr ds:[5A9FC8];0x0 gvar_005A9FC8
 005A9F91    mov         byte ptr [eax+22D],dl;TCustomMaskEdit.FMaskState:TMaskedState
 005A9F97    mov         eax,[006EA024];^gvar_006E47F4
 005A9F9C    mov         al,byte ptr [eax]
 005A9F9E    mov         edx,dword ptr [ebp-4]
 005A9FA1    mov         byte ptr [edx+224],al;TCustomMaskEdit.FMaskBlank:Char
 005A9FA7    mov         eax,dword ptr [ebp-4]
 005A9FAA    cmp         byte ptr [ebp-5],0
>005A9FAE    je          005A9FBF
 005A9FB0    call        @AfterConstruction
 005A9FB5    pop         dword ptr fs:[0]
 005A9FBC    add         esp,0C
 005A9FBF    mov         eax,dword ptr [ebp-4]
 005A9FC2    mov         esp,ebp
 005A9FC4    pop         ebp
 005A9FC5    ret
*}
end;

//005A9FCC
procedure TCustomMaskEdit.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 005A9FCC    push        ebp
 005A9FCD    mov         ebp,esp
 005A9FCF    add         esp,0FFFFFFF4
 005A9FD2    mov         byte ptr [ebp-9],cl
 005A9FD5    mov         dword ptr [ebp-8],edx
 005A9FD8    mov         dword ptr [ebp-4],eax
 005A9FDB    mov         eax,dword ptr [ebp-4]
 005A9FDE    cmp         byte ptr [eax+23C],0
>005A9FE5    jne         005A9FF5
 005A9FE7    mov         edx,dword ptr [ebp-8]
 005A9FEA    mov         cl,byte ptr [ebp-9]
 005A9FED    mov         eax,dword ptr [ebp-4]
 005A9FF0    call        TWinControl.sub_005FA804
 005A9FF5    mov         eax,dword ptr [ebp-4]
 005A9FF8    call        005AA660
 005A9FFD    test        al,al
>005A9FFF    je          005AA0F0
 005AA005    mov         eax,dword ptr [ebp-8]
 005AA008    cmp         word ptr [eax],0
>005AA00C    je          005AA0F0
 005AA012    test        byte ptr [ebp-9],2
>005AA016    jne         005AA0F0
 005AA01C    mov         eax,dword ptr [ebp-8]
 005AA01F    cmp         word ptr [eax],25
>005AA023    je          005AA02E
 005AA025    mov         eax,dword ptr [ebp-8]
 005AA028    cmp         word ptr [eax],27
>005AA02C    jne         005AA060
 005AA02E    mov         edx,dword ptr [ebp-8]
 005AA031    mov         dx,word ptr [edx]
 005AA034    mov         cl,byte ptr [ebp-9]
 005AA037    mov         eax,dword ptr [ebp-4]
 005AA03A    call        005AAE40
 005AA03F    test        byte ptr [ebp-9],1
>005AA043    jne         005AA0F0
 005AA049    test        byte ptr [ebp-9],4
>005AA04D    jne         005AA0F0
 005AA053    mov         eax,dword ptr [ebp-8]
 005AA056    mov         word ptr [eax],0
>005AA05B    jmp         005AA0F0
 005AA060    mov         eax,dword ptr [ebp-8]
 005AA063    cmp         word ptr [eax],26
>005AA067    je          005AA072
 005AA069    mov         eax,dword ptr [ebp-8]
 005AA06C    cmp         word ptr [eax],28
>005AA070    jne         005AA07C
 005AA072    mov         eax,dword ptr [ebp-8]
 005AA075    mov         word ptr [eax],0
>005AA07A    jmp         005AA0F0
 005AA07C    mov         eax,dword ptr [ebp-8]
 005AA07F    cmp         word ptr [eax],24
>005AA083    je          005AA08E
 005AA085    mov         eax,dword ptr [ebp-8]
 005AA088    cmp         word ptr [eax],23
>005AA08C    jne         005AA0A9
 005AA08E    mov         edx,dword ptr [ebp-8]
 005AA091    mov         dx,word ptr [edx]
 005AA094    mov         cl,byte ptr [ebp-9]
 005AA097    mov         eax,dword ptr [ebp-4]
 005AA09A    call        005AB184
 005AA09F    mov         eax,dword ptr [ebp-8]
 005AA0A2    mov         word ptr [eax],0
>005AA0A7    jmp         005AA0F0
 005AA0A9    mov         eax,dword ptr [ebp-8]
 005AA0AC    cmp         word ptr [eax],2E
>005AA0B0    jne         005AA0B8
 005AA0B2    test        byte ptr [ebp-9],1
>005AA0B6    je          005AA0C1
 005AA0B8    mov         eax,dword ptr [ebp-8]
 005AA0BB    cmp         word ptr [eax],8
>005AA0BF    jne         005AA0E8
 005AA0C1    mov         eax,dword ptr [ebp-4]
 005AA0C4    mov         edx,dword ptr [eax]
 005AA0C6    call        dword ptr [edx+0E4]
 005AA0CC    test        al,al
>005AA0CE    je          005AA0DE
 005AA0D0    mov         edx,dword ptr [ebp-8]
 005AA0D3    mov         dx,word ptr [edx]
 005AA0D6    mov         eax,dword ptr [ebp-4]
 005AA0D9    call        005AB264
 005AA0DE    mov         eax,dword ptr [ebp-8]
 005AA0E1    mov         word ptr [eax],0
>005AA0E6    jmp         005AA0F0
 005AA0E8    mov         eax,dword ptr [ebp-4]
 005AA0EB    call        005AABA0
 005AA0F0    mov         esp,ebp
 005AA0F2    pop         ebp
 005AA0F3    ret
*}
end;

//005AA0F4
{*procedure TCustomMaskEdit.sub_005AA0F4(?:?; ?:?);
begin
 005AA0F4    push        ebp
 005AA0F5    mov         ebp,esp
 005AA0F7    add         esp,0FFFFFFF4
 005AA0FA    mov         byte ptr [ebp-9],cl
 005AA0FD    mov         dword ptr [ebp-8],edx
 005AA100    mov         dword ptr [ebp-4],eax
 005AA103    mov         eax,dword ptr [ebp-4]
 005AA106    cmp         byte ptr [eax+23C],0;TCustomMaskEdit.FSettingCursor:Boolean
>005AA10D    jne         005AA11D
 005AA10F    mov         edx,dword ptr [ebp-8]
 005AA112    mov         cl,byte ptr [ebp-9]
 005AA115    mov         eax,dword ptr [ebp-4]
 005AA118    call        TWinControl.sub_005FA920
 005AA11D    mov         eax,dword ptr [ebp-4]
 005AA120    call        005AA660
 005AA125    test        al,al
>005AA127    je          005AA152
 005AA129    mov         eax,dword ptr [ebp-8]
 005AA12C    cmp         word ptr [eax],0
>005AA130    je          005AA152
 005AA132    mov         eax,dword ptr [ebp-8]
 005AA135    cmp         word ptr [eax],25
>005AA139    je          005AA144
 005AA13B    mov         eax,dword ptr [ebp-8]
 005AA13E    cmp         word ptr [eax],27
>005AA142    jne         005AA152
 005AA144    test        byte ptr [ebp-9],4
>005AA148    je          005AA152
 005AA14A    mov         eax,dword ptr [ebp-4]
 005AA14D    call        005AABA0
 005AA152    mov         esp,ebp
 005AA154    pop         ebp
 005AA155    ret
end;*}

//005AA158
{*procedure TCustomMaskEdit.sub_005AA158(?:?);
begin
 005AA158    push        ebp
 005AA159    mov         ebp,esp
 005AA15B    add         esp,0FFFFFFF8
 005AA15E    mov         dword ptr [ebp-8],edx
 005AA161    mov         dword ptr [ebp-4],eax
 005AA164    mov         edx,dword ptr [ebp-8]
 005AA167    mov         eax,dword ptr [ebp-4]
 005AA16A    call        TWinControl.sub_005FAA3C
 005AA16F    mov         eax,dword ptr [ebp-4]
 005AA172    call        005AA660
 005AA177    test        al,al
>005AA179    je          005AA1A5
 005AA17B    mov         eax,dword ptr [ebp-8]
 005AA17E    cmp         byte ptr [eax],0
>005AA181    je          005AA1A5
 005AA183    mov         eax,dword ptr [ebp-8]
 005AA186    mov         al,byte ptr [eax]
 005AA188    sub         al,3
>005AA18A    je          005AA1A5
 005AA18C    sub         al,13
>005AA18E    je          005AA1A5
 005AA190    sub         al,2
>005AA192    je          005AA1A5
 005AA194    mov         edx,dword ptr [ebp-8]
 005AA197    mov         eax,dword ptr [ebp-4]
 005AA19A    call        005AAC44
 005AA19F    mov         eax,dword ptr [ebp-8]
 005AA1A2    mov         byte ptr [eax],0
 005AA1A5    pop         ecx
 005AA1A6    pop         ecx
 005AA1A7    pop         ebp
 005AA1A8    ret
end;*}

//005AA1AC
{*procedure TCustomMaskEdit.WMLButtonDown(?:?);
begin
 005AA1AC    push        ebp
 005AA1AD    mov         ebp,esp
 005AA1AF    add         esp,0FFFFFFF8
 005AA1B2    mov         dword ptr [ebp-8],edx
 005AA1B5    mov         dword ptr [ebp-4],eax
 005AA1B8    mov         edx,dword ptr [ebp-8]
 005AA1BB    mov         eax,dword ptr [ebp-4]
 005AA1BE    call        TControl.WMLButtonDown
 005AA1C3    mov         eax,dword ptr [ebp-8]
 005AA1C6    movsx       eax,word ptr [eax+8]
 005AA1CA    mov         edx,dword ptr [ebp-4]
 005AA1CD    mov         dword ptr [edx+234],eax;TCustomMaskEdit.FBtnDownX:Integer
 005AA1D3    pop         ecx
 005AA1D4    pop         ecx
 005AA1D5    pop         ebp
 005AA1D6    ret
end;*}

//005AA1D8
{*procedure TCustomMaskEdit.WMLButtonUp(?:?);
begin
 005AA1D8    push        ebp
 005AA1D9    mov         ebp,esp
 005AA1DB    add         esp,0FFFFFFF0
 005AA1DE    mov         dword ptr [ebp-8],edx
 005AA1E1    mov         dword ptr [ebp-4],eax
 005AA1E4    mov         edx,dword ptr [ebp-8]
 005AA1E7    mov         eax,dword ptr [ebp-4]
 005AA1EA    call        TControl.WMLButtonUp
 005AA1EF    mov         eax,dword ptr [ebp-4]
 005AA1F2    call        005AA660
 005AA1F7    test        al,al
>005AA1F9    je          005AA243
 005AA1FB    lea         ecx,[ebp-10]
 005AA1FE    lea         edx,[ebp-0C]
 005AA201    mov         eax,dword ptr [ebp-4]
 005AA204    call        005AA8A8
 005AA209    mov         eax,dword ptr [ebp-0C]
 005AA20C    mov         edx,dword ptr [ebp-4]
 005AA20F    mov         dword ptr [edx+230],eax;TCustomMaskEdit.FCaretPos:Integer
 005AA215    mov         eax,dword ptr [ebp-0C]
 005AA218    cmp         eax,dword ptr [ebp-10]
>005AA21B    je          005AA23B
 005AA21D    mov         eax,dword ptr [ebp-8]
 005AA220    movsx       eax,word ptr [eax+8]
 005AA224    mov         edx,dword ptr [ebp-4]
 005AA227    cmp         eax,dword ptr [edx+234];TCustomMaskEdit.FBtnDownX:Integer
>005AA22D    jle         005AA23B
 005AA22F    mov         eax,dword ptr [ebp-10]
 005AA232    mov         edx,dword ptr [ebp-4]
 005AA235    mov         dword ptr [edx+230],eax;TCustomMaskEdit.FCaretPos:Integer
 005AA23B    mov         eax,dword ptr [ebp-4]
 005AA23E    call        005AABA0
 005AA243    mov         esp,ebp
 005AA245    pop         ebp
 005AA246    ret
end;*}

//005AA248
{*procedure TCustomMaskEdit.WMSetFocus(?:?);
begin
 005AA248    push        ebp
 005AA249    mov         ebp,esp
 005AA24B    add         esp,0FFFFFFF8
 005AA24E    mov         dword ptr [ebp-8],edx
 005AA251    mov         dword ptr [ebp-4],eax
 005AA254    mov         edx,dword ptr [ebp-8]
 005AA257    mov         eax,dword ptr [ebp-4]
 005AA25A    call        TWinControl.WMSetFocus
 005AA25F    mov         eax,dword ptr [ebp-4]
 005AA262    call        005AA660
 005AA267    test        al,al
>005AA269    je          005AA273
 005AA26B    mov         eax,dword ptr [ebp-4]
 005AA26E    call        005AABA0
 005AA273    pop         ecx
 005AA274    pop         ecx
 005AA275    pop         ebp
 005AA276    ret
end;*}

//005AA278
procedure sub_005AA278(?:TCustomMaskEdit; ?:AnsiString);
begin
{*
 005AA278    push        ebp
 005AA279    mov         ebp,esp
 005AA27B    add         esp,0FFFFFFF4
 005AA27E    xor         ecx,ecx
 005AA280    mov         dword ptr [ebp-0C],ecx
 005AA283    mov         dword ptr [ebp-8],edx
 005AA286    mov         dword ptr [ebp-4],eax
 005AA289    xor         eax,eax
 005AA28B    push        ebp
 005AA28C    push        5AA2DF
 005AA291    push        dword ptr fs:[eax]
 005AA294    mov         dword ptr fs:[eax],esp
 005AA297    lea         edx,[ebp-0C]
 005AA29A    mov         eax,dword ptr [ebp-4]
 005AA29D    call        005AA2EC
 005AA2A2    mov         eax,dword ptr [ebp-0C]
 005AA2A5    mov         edx,dword ptr [ebp-8]
 005AA2A8    call        @LStrCmp
>005AA2AD    je          005AA2C9
 005AA2AF    mov         eax,dword ptr [ebp-8]
 005AA2B2    call        @LStrToPChar
 005AA2B7    mov         edx,eax
 005AA2B9    mov         eax,dword ptr [ebp-4]
 005AA2BC    call        005F36C8
 005AA2C1    mov         eax,dword ptr [ebp-4]
 005AA2C4    call        005AABA0
 005AA2C9    xor         eax,eax
 005AA2CB    pop         edx
 005AA2CC    pop         ecx
 005AA2CD    pop         ecx
 005AA2CE    mov         dword ptr fs:[eax],edx
 005AA2D1    push        5AA2E6
 005AA2D6    lea         eax,[ebp-0C]
 005AA2D9    call        @LStrClr
 005AA2DE    ret
>005AA2DF    jmp         @HandleFinally
>005AA2E4    jmp         005AA2D6
 005AA2E6    mov         esp,ebp
 005AA2E8    pop         ebp
 005AA2E9    ret
*}
end;

//005AA2EC
{*procedure sub_005AA2EC(?:TCustomMaskEdit; ?:?);
begin
 005AA2EC    push        ebp
 005AA2ED    mov         ebp,esp
 005AA2EF    add         esp,0FFFFFFF8
 005AA2F2    mov         dword ptr [ebp-8],edx
 005AA2F5    mov         dword ptr [ebp-4],eax
 005AA2F8    mov         edx,dword ptr [ebp-8]
 005AA2FB    mov         eax,dword ptr [ebp-4]
 005AA2FE    call        TTabPage.GetCaption
 005AA303    pop         ecx
 005AA304    pop         ecx
 005AA305    pop         ebp
 005AA306    ret
end;*}

//005AA308
{*function sub_005AA308(?:TInplaceEdit):?;
begin
 005AA308    push        ebp
 005AA309    mov         ebp,esp
 005AA30B    add         esp,0FFFFFFF4
 005AA30E    xor         edx,edx
 005AA310    mov         dword ptr [ebp-0C],edx
 005AA313    mov         dword ptr [ebp-4],eax
 005AA316    xor         eax,eax
 005AA318    push        ebp
 005AA319    push        5AA350
 005AA31E    push        dword ptr fs:[eax]
 005AA321    mov         dword ptr fs:[eax],esp
 005AA324    lea         edx,[ebp-0C]
 005AA327    mov         eax,dword ptr [ebp-4]
 005AA32A    call        TMaskEdit.GetText
 005AA32F    mov         eax,dword ptr [ebp-0C]
 005AA332    call        @LStrLen
 005AA337    mov         dword ptr [ebp-8],eax
 005AA33A    xor         eax,eax
 005AA33C    pop         edx
 005AA33D    pop         ecx
 005AA33E    pop         ecx
 005AA33F    mov         dword ptr fs:[eax],edx
 005AA342    push        5AA357
 005AA347    lea         eax,[ebp-0C]
 005AA34A    call        @LStrClr
 005AA34F    ret
>005AA350    jmp         @HandleFinally
>005AA355    jmp         005AA347
 005AA357    mov         eax,dword ptr [ebp-8]
 005AA35A    mov         esp,ebp
 005AA35C    pop         ebp
 005AA35D    ret
end;*}

//005AA360
{*procedure TMaskEdit.GetText(?:?);
begin
 005AA360    push        ebp
 005AA361    mov         ebp,esp
 005AA363    add         esp,0FFFFFFF0
 005AA366    xor         ecx,ecx
 005AA368    mov         dword ptr [ebp-10],ecx
 005AA36B    mov         dword ptr [ebp-0C],ecx
 005AA36E    mov         dword ptr [ebp-8],edx
 005AA371    mov         dword ptr [ebp-4],eax
 005AA374    xor         eax,eax
 005AA376    push        ebp
 005AA377    push        5AA3F9
 005AA37C    push        dword ptr fs:[eax]
 005AA37F    mov         dword ptr fs:[eax],esp
 005AA382    mov         eax,dword ptr [ebp-4]
 005AA385    call        005AA660
 005AA38A    test        al,al
>005AA38C    jne         005AA39B
 005AA38E    mov         edx,dword ptr [ebp-8]
 005AA391    mov         eax,dword ptr [ebp-4]
 005AA394    call        TTabPage.GetCaption
>005AA399    jmp         005AA3DE
 005AA39B    lea         edx,[ebp-0C]
 005AA39E    mov         eax,dword ptr [ebp-4]
 005AA3A1    call        005AA2EC
 005AA3A6    mov         edx,dword ptr [ebp-0C]
 005AA3A9    mov         ecx,dword ptr [ebp-8]
 005AA3AC    mov         eax,dword ptr [ebp-4]
 005AA3AF    call        005AB6BC
 005AA3B4    mov         eax,dword ptr [ebp-4]
 005AA3B7    cmp         byte ptr [eax+22C],0;TMaskEdit.FMaskSave:Boolean
>005AA3BE    je          005AA3DE
 005AA3C0    lea         eax,[ebp-10]
 005AA3C3    push        eax
 005AA3C4    mov         edx,dword ptr [ebp-8]
 005AA3C7    mov         edx,dword ptr [edx]
 005AA3C9    xor         ecx,ecx
 005AA3CB    mov         eax,dword ptr [ebp-4]
 005AA3CE    call        005AB668
 005AA3D3    mov         edx,dword ptr [ebp-10]
 005AA3D6    mov         eax,dword ptr [ebp-8]
 005AA3D9    call        @LStrAsg
 005AA3DE    xor         eax,eax
 005AA3E0    pop         edx
 005AA3E1    pop         ecx
 005AA3E2    pop         ecx
 005AA3E3    mov         dword ptr fs:[eax],edx
 005AA3E6    push        5AA400
 005AA3EB    lea         eax,[ebp-10]
 005AA3EE    mov         edx,2
 005AA3F3    call        @LStrArrayClr
 005AA3F8    ret
>005AA3F9    jmp         @HandleFinally
>005AA3FE    jmp         005AA3EB
 005AA400    mov         esp,ebp
 005AA402    pop         ebp
 005AA403    ret
end;*}

//005AA404
procedure TMaskEdit.SetText(Value:TMaskedText);
begin
{*
 005AA404    push        ebp
 005AA405    mov         ebp,esp
 005AA407    add         esp,0FFFFFFE8
 005AA40A    push        ebx
 005AA40B    xor         ecx,ecx
 005AA40D    mov         dword ptr [ebp-18],ecx
 005AA410    mov         dword ptr [ebp-14],ecx
 005AA413    mov         dword ptr [ebp-0C],ecx
 005AA416    mov         dword ptr [ebp-8],edx
 005AA419    mov         dword ptr [ebp-4],eax
 005AA41C    xor         eax,eax
 005AA41E    push        ebp
 005AA41F    push        5AA51C
 005AA424    push        dword ptr fs:[eax]
 005AA427    mov         dword ptr fs:[eax],esp
 005AA42A    mov         eax,dword ptr [ebp-4]
 005AA42D    call        005AA660
 005AA432    test        al,al
>005AA434    jne         005AA446
 005AA436    mov         edx,dword ptr [ebp-8]
 005AA439    mov         eax,dword ptr [ebp-4]
 005AA43C    call        TTabPage.SetCaption
>005AA441    jmp         005AA4F9
 005AA446    lea         eax,[ebp-0C]
 005AA449    mov         edx,dword ptr [ebp-8]
 005AA44C    call        @LStrLAsg
 005AA451    mov         eax,dword ptr [ebp-4]
 005AA454    cmp         byte ptr [eax+22C],0;TMaskEdit.FMaskSave:Boolean
>005AA45B    je          005AA488
 005AA45D    lea         eax,[ebp-14]
 005AA460    push        eax
 005AA461    mov         eax,dword ptr [ebp-4]
 005AA464    mov         cl,byte ptr [eax+224];TMaskEdit.FMaskBlank:Char
 005AA46A    mov         edx,dword ptr [ebp-0C]
 005AA46D    mov         eax,dword ptr [ebp-4]
 005AA470    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AA476    call        00641874
 005AA47B    mov         edx,dword ptr [ebp-14]
 005AA47E    lea         eax,[ebp-0C]
 005AA481    call        @LStrLAsg
>005AA486    jmp         005AA4A4
 005AA488    lea         eax,[ebp-18]
 005AA48B    push        eax
 005AA48C    mov         cl,1
 005AA48E    mov         edx,dword ptr [ebp-0C]
 005AA491    mov         eax,dword ptr [ebp-4]
 005AA494    call        005AB668
 005AA499    mov         edx,dword ptr [ebp-18]
 005AA49C    lea         eax,[ebp-0C]
 005AA49F    call        @LStrLAsg
 005AA4A4    mov         eax,dword ptr [ebp-4]
 005AA4A7    test        byte ptr [eax+22D],4;TMaskEdit.FMaskState:TMaskedState
>005AA4AE    jne         005AA4EE
 005AA4B0    mov         eax,dword ptr [ebp-4]
 005AA4B3    test        byte ptr [eax+1C],10;TMaskEdit.FComponentState:TComponentState
>005AA4B7    je          005AA4EE
 005AA4B9    mov         eax,dword ptr [ebp-4]
 005AA4BC    test        byte ptr [eax+1C],1;TMaskEdit.FComponentState:TComponentState
>005AA4C0    jne         005AA4EE
 005AA4C2    lea         ecx,[ebp-10]
 005AA4C5    mov         edx,dword ptr [ebp-0C]
 005AA4C8    mov         eax,dword ptr [ebp-4]
 005AA4CB    mov         ebx,dword ptr [eax]
 005AA4CD    call        dword ptr [ebx+0EC];TMaskEdit.sub_005ABE08
 005AA4D3    test        al,al
>005AA4D5    jne         005AA4EE
 005AA4D7    mov         ecx,dword ptr ds:[6E9ED4];^gvar_0063CBB8
 005AA4DD    mov         dl,1
 005AA4DF    mov         eax,[005A9448];EDBEditError
 005AA4E4    call        Exception.Create;EDBEditError.Create
 005AA4E9    call        @RaiseExcept
 005AA4EE    mov         edx,dword ptr [ebp-0C]
 005AA4F1    mov         eax,dword ptr [ebp-4]
 005AA4F4    call        005AA278
 005AA4F9    xor         eax,eax
 005AA4FB    pop         edx
 005AA4FC    pop         ecx
 005AA4FD    pop         ecx
 005AA4FE    mov         dword ptr fs:[eax],edx
 005AA501    push        5AA523
 005AA506    lea         eax,[ebp-18]
 005AA509    mov         edx,2
 005AA50E    call        @LStrArrayClr
 005AA513    lea         eax,[ebp-0C]
 005AA516    call        @LStrClr
 005AA51B    ret
>005AA51C    jmp         @HandleFinally
>005AA521    jmp         005AA506
 005AA523    pop         ebx
 005AA524    mov         esp,ebp
 005AA526    pop         ebp
 005AA527    ret
*}
end;

//005AA528
{*procedure TCustomMaskEdit.WMCut(?:?);
begin
 005AA528    push        ebp
 005AA529    mov         ebp,esp
 005AA52B    add         esp,0FFFFFFF8
 005AA52E    mov         dword ptr [ebp-8],edx
 005AA531    mov         dword ptr [ebp-4],eax
 005AA534    mov         eax,dword ptr [ebp-4]
 005AA537    call        005AA660
 005AA53C    test        al,al
>005AA53E    jne         005AA54D
 005AA540    mov         edx,dword ptr [ebp-8]
 005AA543    mov         eax,dword ptr [ebp-4]
 005AA546    mov         ecx,dword ptr [eax]
 005AA548    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>005AA54B    jmp         005AA561
 005AA54D    mov         eax,dword ptr [ebp-4]
 005AA550    call        00598F8C
 005AA555    mov         dx,2E
 005AA559    mov         eax,dword ptr [ebp-4]
 005AA55C    call        005AB264
 005AA561    pop         ecx
 005AA562    pop         ecx
 005AA563    pop         ebp
 005AA564    ret
end;*}

//005AA568
{*procedure TCustomMaskEdit.WMPaste(?:?);
begin
 005AA568    push        ebp
 005AA569    mov         ebp,esp
 005AA56B    add         esp,0FFFFFFE8
 005AA56E    xor         ecx,ecx
 005AA570    mov         dword ptr [ebp-0C],ecx
 005AA573    mov         dword ptr [ebp-10],ecx
 005AA576    mov         dword ptr [ebp-8],edx
 005AA579    mov         dword ptr [ebp-4],eax
 005AA57C    xor         eax,eax
 005AA57E    push        ebp
 005AA57F    push        5AA652
 005AA584    push        dword ptr fs:[eax]
 005AA587    mov         dword ptr fs:[eax],esp
 005AA58A    mov         eax,dword ptr [ebp-4]
 005AA58D    call        005AA660
 005AA592    test        al,al
>005AA594    je          005AA5A2
 005AA596    mov         eax,dword ptr [ebp-4]
 005AA599    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>005AA5A0    je          005AA5B2
 005AA5A2    mov         edx,dword ptr [ebp-8]
 005AA5A5    mov         eax,dword ptr [ebp-4]
 005AA5A8    mov         ecx,dword ptr [eax]
 005AA5AA    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
>005AA5AD    jmp         005AA637
 005AA5B2    call        00638BD8
 005AA5B7    mov         edx,dword ptr [eax]
 005AA5B9    call        dword ptr [edx+18]
 005AA5BC    call        00638BD8
 005AA5C1    lea         edx,[ebp-0C]
 005AA5C4    call        006386E4
 005AA5C9    call        00638BD8
 005AA5CE    mov         edx,dword ptr [eax]
 005AA5D0    call        dword ptr [edx+14]
 005AA5D3    lea         ecx,[ebp-18]
 005AA5D6    lea         edx,[ebp-14]
 005AA5D9    mov         eax,dword ptr [ebp-4]
 005AA5DC    call        005AA8A8
 005AA5E1    lea         edx,[ebp-10]
 005AA5E4    mov         eax,dword ptr [ebp-4]
 005AA5E7    call        005AA2EC
 005AA5EC    mov         eax,dword ptr [ebp-18]
 005AA5EF    sub         eax,dword ptr [ebp-14]
 005AA5F2    push        eax
 005AA5F3    lea         edx,[ebp-10]
 005AA5F6    mov         ecx,dword ptr [ebp-14]
 005AA5F9    mov         eax,dword ptr [ebp-4]
 005AA5FC    call        005ABECC
 005AA601    mov         edx,dword ptr [ebp-10]
 005AA604    mov         eax,dword ptr [ebp-4]
 005AA607    call        005AA278
 005AA60C    mov         eax,dword ptr [ebp-14]
 005AA60F    push        eax
 005AA610    lea         edx,[ebp-10]
 005AA613    mov         ecx,dword ptr [ebp-0C]
 005AA616    mov         eax,dword ptr [ebp-4]
 005AA619    call        005ABF90
 005AA61E    mov         dword ptr [ebp-14],eax
 005AA621    mov         edx,dword ptr [ebp-10]
 005AA624    mov         eax,dword ptr [ebp-4]
 005AA627    call        005AA278
 005AA62C    mov         edx,dword ptr [ebp-14]
 005AA62F    mov         eax,dword ptr [ebp-4]
 005AA632    call        005AA908
 005AA637    xor         eax,eax
 005AA639    pop         edx
 005AA63A    pop         ecx
 005AA63B    pop         ecx
 005AA63C    mov         dword ptr fs:[eax],edx
 005AA63F    push        5AA659
 005AA644    lea         eax,[ebp-10]
 005AA647    mov         edx,2
 005AA64C    call        @LStrArrayClr
 005AA651    ret
>005AA652    jmp         @HandleFinally
>005AA657    jmp         005AA644
 005AA659    mov         esp,ebp
 005AA65B    pop         ebp
 005AA65C    ret
end;*}

//005AA660
{*function sub_005AA660(?:TCustomMaskEdit):?;
begin
 005AA660    push        ebp
 005AA661    mov         ebp,esp
 005AA663    add         esp,0FFFFFFF8
 005AA666    mov         dword ptr [ebp-4],eax
 005AA669    mov         eax,dword ptr [ebp-4]
 005AA66C    cmp         dword ptr [eax+220],0;TCustomMaskEdit.FEditMask:TEditMask
 005AA673    setne       byte ptr [ebp-5]
 005AA677    mov         al,byte ptr [ebp-5]
 005AA67A    pop         ecx
 005AA67B    pop         ecx
 005AA67C    pop         ebp
 005AA67D    ret
end;*}

//005AA680
procedure sub_005AA680(?:TMaskEdit; ?:TEditMask);
begin
{*
 005AA680    push        ebp
 005AA681    mov         ebp,esp
 005AA683    xor         ecx,ecx
 005AA685    push        ecx
 005AA686    push        ecx
 005AA687    push        ecx
 005AA688    push        ecx
 005AA689    push        ecx
 005AA68A    mov         dword ptr [ebp-8],edx
 005AA68D    mov         dword ptr [ebp-4],eax
 005AA690    xor         eax,eax
 005AA692    push        ebp
 005AA693    push        5AA74C
 005AA698    push        dword ptr fs:[eax]
 005AA69B    mov         dword ptr fs:[eax],esp
 005AA69E    lea         edx,[ebp-10]
 005AA6A1    mov         eax,dword ptr [ebp-4]
 005AA6A4    call        005AA2EC
 005AA6A9    mov         edx,dword ptr [ebp-10]
 005AA6AC    lea         ecx,[ebp-0C]
 005AA6AF    mov         eax,dword ptr [ebp-4]
 005AA6B2    call        005AB6BC
 005AA6B7    mov         eax,dword ptr [ebp-4]
 005AA6BA    add         eax,220
 005AA6BF    mov         edx,dword ptr [ebp-8]
 005AA6C2    call        @LStrAsg
 005AA6C7    mov         eax,dword ptr [ebp-8]
 005AA6CA    call        @LStrLen
 005AA6CF    mov         edx,eax
 005AA6D1    mov         eax,dword ptr [ebp-4]
 005AA6D4    mov         eax,dword ptr [eax+220]
 005AA6DA    call        00641590
 005AA6DF    mov         edx,dword ptr [ebp-4]
 005AA6E2    mov         dword ptr [edx+228],eax
 005AA6E8    mov         eax,dword ptr [ebp-8]
 005AA6EB    call        006413B0
 005AA6F0    mov         edx,dword ptr [ebp-4]
 005AA6F3    mov         byte ptr [edx+22C],al
 005AA6F9    mov         eax,dword ptr [ebp-8]
 005AA6FC    call        0064146C
 005AA701    mov         edx,dword ptr [ebp-4]
 005AA704    mov         byte ptr [edx+224],al
 005AA70A    lea         eax,[ebp-14]
 005AA70D    push        eax
 005AA70E    mov         cl,1
 005AA710    mov         edx,dword ptr [ebp-0C]
 005AA713    mov         eax,dword ptr [ebp-4]
 005AA716    call        005AB668
 005AA71B    mov         edx,dword ptr [ebp-14]
 005AA71E    lea         eax,[ebp-0C]
 005AA721    call        @LStrLAsg
 005AA726    mov         edx,dword ptr [ebp-0C]
 005AA729    mov         eax,dword ptr [ebp-4]
 005AA72C    call        005AA278
 005AA731    xor         eax,eax
 005AA733    pop         edx
 005AA734    pop         ecx
 005AA735    pop         ecx
 005AA736    mov         dword ptr fs:[eax],edx
 005AA739    push        5AA753
 005AA73E    lea         eax,[ebp-14]
 005AA741    mov         edx,3
 005AA746    call        @LStrArrayClr
 005AA74B    ret
>005AA74C    jmp         @HandleFinally
>005AA751    jmp         005AA73E
 005AA753    mov         esp,ebp
 005AA755    pop         ebp
 005AA756    ret
*}
end;

//005AA758
procedure TMaskEdit.SetEditMask(Value:TEditMask);
begin
{*
 005AA758    push        ebp
 005AA759    mov         ebp,esp
 005AA75B    add         esp,0FFFFFFF0
 005AA75E    push        ebx
 005AA75F    mov         dword ptr [ebp-8],edx
 005AA762    mov         dword ptr [ebp-4],eax
 005AA765    mov         eax,dword ptr [ebp-8]
 005AA768    mov         edx,dword ptr [ebp-4]
 005AA76B    mov         edx,dword ptr [edx+220];TMaskEdit.FEditMask:TEditMask
 005AA771    call        @LStrCmp
>005AA776    je          005AA849
 005AA77C    mov         eax,dword ptr [ebp-4]
 005AA77F    test        byte ptr [eax+1C],10;TMaskEdit.FComponentState:TComponentState
>005AA783    je          005AA79E
 005AA785    cmp         dword ptr [ebp-8],0
>005AA789    je          005AA79E
 005AA78B    mov         eax,dword ptr [ebp-4]
 005AA78E    test        byte ptr [eax+1C],1;TMaskEdit.FComponentState:TComponentState
>005AA792    jne         005AA79E
 005AA794    xor         edx,edx
 005AA796    mov         eax,dword ptr [ebp-4]
 005AA799    call        005AA278
 005AA79E    mov         eax,dword ptr [ebp-4]
 005AA7A1    call        TWinControl.HandleAllocated
 005AA7A6    test        al,al
>005AA7A8    je          005AA7B8
 005AA7AA    lea         ecx,[ebp-10]
 005AA7AD    lea         edx,[ebp-0C]
 005AA7B0    mov         eax,dword ptr [ebp-4]
 005AA7B3    call        005AA8A8
 005AA7B8    mov         edx,dword ptr [ebp-8]
 005AA7BB    mov         eax,dword ptr [ebp-4]
 005AA7BE    call        005AA680
 005AA7C3    mov         eax,dword ptr [ebp-4]
 005AA7C6    and         byte ptr [eax+22D],0FE;TMaskEdit.FMaskState:TMaskedState
 005AA7CD    mov         eax,dword ptr [ebp-4]
 005AA7D0    cmp         dword ptr [eax+220],0;TMaskEdit.FEditMask:TEditMask
>005AA7D7    je          005AA7E3
 005AA7D9    mov         eax,dword ptr [ebp-4]
 005AA7DC    or          byte ptr [eax+22D],1;TMaskEdit.FMaskState:TMaskedState
 005AA7E3    xor         edx,edx
 005AA7E5    mov         eax,dword ptr [ebp-4]
 005AA7E8    call        TMemo.SetMaxLength
 005AA7ED    mov         eax,dword ptr [ebp-4]
 005AA7F0    call        005AA660
 005AA7F5    test        al,al
>005AA7F7    je          005AA816
 005AA7F9    mov         eax,dword ptr [ebp-4]
 005AA7FC    cmp         dword ptr [eax+228],0;TMaskEdit.FMaxChars:Integer
>005AA803    jle         005AA816
 005AA805    mov         eax,dword ptr [ebp-4]
 005AA808    mov         edx,dword ptr [eax+228];TMaskEdit.FMaxChars:Integer
 005AA80E    mov         eax,dword ptr [ebp-4]
 005AA811    call        TMemo.SetMaxLength
 005AA816    mov         eax,dword ptr [ebp-4]
 005AA819    call        TWinControl.HandleAllocated
 005AA81E    test        al,al
>005AA820    je          005AA849
 005AA822    mov         eax,dword ptr [ebp-4]
 005AA825    call        TWinControl.GetHandle
 005AA82A    mov         ebx,eax
 005AA82C    call        USER32.GetFocus
 005AA831    cmp         ebx,eax
>005AA833    jne         005AA849
 005AA835    mov         eax,dword ptr [ebp-4]
 005AA838    test        byte ptr [eax+1C],10;TMaskEdit.FComponentState:TComponentState
>005AA83C    jne         005AA849
 005AA83E    mov         edx,dword ptr [ebp-0C]
 005AA841    mov         eax,dword ptr [ebp-4]
 005AA844    call        005AA908
 005AA849    pop         ebx
 005AA84A    mov         esp,ebp
 005AA84C    pop         ebp
 005AA84D    ret
*}
end;

//005AA850
{*function TMaskEdit.GetMaxLength:?;
begin
 005AA850    push        ebp
 005AA851    mov         ebp,esp
 005AA853    add         esp,0FFFFFFF8
 005AA856    mov         dword ptr [ebp-4],eax
 005AA859    mov         eax,dword ptr [ebp-4]
 005AA85C    mov         eax,dword ptr [eax+208];TMaskEdit.FMaxLength:Integer
 005AA862    mov         dword ptr [ebp-8],eax
 005AA865    mov         eax,dword ptr [ebp-8]
 005AA868    pop         ecx
 005AA869    pop         ecx
 005AA86A    pop         ebp
 005AA86B    ret
end;*}

//005AA86C
procedure TMaskEdit.SetMaxLength(Value:Integer);
begin
{*
 005AA86C    push        ebp
 005AA86D    mov         ebp,esp
 005AA86F    add         esp,0FFFFFFF8
 005AA872    mov         dword ptr [ebp-8],edx
 005AA875    mov         dword ptr [ebp-4],eax
 005AA878    mov         eax,dword ptr [ebp-4]
 005AA87B    call        005AA660
 005AA880    test        al,al
>005AA882    jne         005AA891
 005AA884    mov         edx,dword ptr [ebp-8]
 005AA887    mov         eax,dword ptr [ebp-4]
 005AA88A    call        TMemo.SetMaxLength
>005AA88F    jmp         005AA8A2
 005AA891    mov         eax,dword ptr [ebp-4]
 005AA894    mov         edx,dword ptr [eax+228];TMaskEdit.FMaxChars:Integer
 005AA89A    mov         eax,dword ptr [ebp-4]
 005AA89D    call        TMemo.SetMaxLength
 005AA8A2    pop         ecx
 005AA8A3    pop         ecx
 005AA8A4    pop         ebp
 005AA8A5    ret
*}
end;

//005AA8A8
{*procedure sub_005AA8A8(?:TCustomMaskEdit; ?:?; ?:?);
begin
 005AA8A8    push        ebp
 005AA8A9    mov         ebp,esp
 005AA8AB    add         esp,0FFFFFFF4
 005AA8AE    mov         dword ptr [ebp-0C],ecx
 005AA8B1    mov         dword ptr [ebp-8],edx
 005AA8B4    mov         dword ptr [ebp-4],eax
 005AA8B7    mov         eax,dword ptr [ebp-0C]
 005AA8BA    push        eax
 005AA8BB    mov         eax,dword ptr [ebp-8]
 005AA8BE    push        eax
 005AA8BF    push        0B0
 005AA8C4    mov         eax,dword ptr [ebp-4]
 005AA8C7    call        TWinControl.GetHandle
 005AA8CC    push        eax
 005AA8CD    call        USER32.SendMessageA
 005AA8D2    mov         esp,ebp
 005AA8D4    pop         ebp
 005AA8D5    ret
end;*}

//005AA8D8
procedure sub_005AA8D8(?:TCustomMaskEdit; ?:Integer; ?:Integer);
begin
{*
 005AA8D8    push        ebp
 005AA8D9    mov         ebp,esp
 005AA8DB    add         esp,0FFFFFFF4
 005AA8DE    mov         dword ptr [ebp-0C],ecx
 005AA8E1    mov         dword ptr [ebp-8],edx
 005AA8E4    mov         dword ptr [ebp-4],eax
 005AA8E7    mov         eax,dword ptr [ebp-0C]
 005AA8EA    push        eax
 005AA8EB    mov         eax,dword ptr [ebp-8]
 005AA8EE    push        eax
 005AA8EF    push        0B1
 005AA8F4    mov         eax,dword ptr [ebp-4]
 005AA8F7    call        TWinControl.GetHandle
 005AA8FC    push        eax
 005AA8FD    call        USER32.SendMessageA
 005AA902    mov         esp,ebp
 005AA904    pop         ebp
 005AA905    ret
*}
end;

//005AA908
{*procedure sub_005AA908(?:TCustomMaskEdit; ?:?);
begin
 005AA908    push        ebp
 005AA909    mov         ebp,esp
 005AA90B    add         esp,0FFFFFDD8
 005AA911    push        esi
 005AA912    xor         ecx,ecx
 005AA914    mov         dword ptr [ebp-228],ecx
 005AA91A    mov         dword ptr [ebp-224],ecx
 005AA920    mov         dword ptr [ebp-220],ecx
 005AA926    mov         dword ptr [ebp-21C],ecx
 005AA92C    mov         dword ptr [ebp-218],ecx
 005AA932    mov         dword ptr [ebp-8],edx
 005AA935    mov         dword ptr [ebp-4],eax
 005AA938    xor         eax,eax
 005AA93A    push        ebp
 005AA93B    push        5AAB93
 005AA940    push        dword ptr fs:[eax]
 005AA943    mov         dword ptr fs:[eax],esp
 005AA946    cmp         dword ptr [ebp-8],1
>005AA94A    jl          005AA96F
 005AA94C    lea         edx,[ebp-218]
 005AA952    mov         eax,dword ptr [ebp-4]
 005AA955    call        005AA2EC
 005AA95A    mov         eax,dword ptr [ebp-218]
 005AA960    mov         edx,dword ptr [ebp-8]
 005AA963    call        0065CF98
 005AA968    cmp         al,1
>005AA96A    jne         005AA96F
 005AA96C    dec         dword ptr [ebp-8]
 005AA96F    mov         eax,dword ptr [ebp-8]
 005AA972    mov         dword ptr [ebp-0C],eax
 005AA975    mov         eax,dword ptr [ebp-4]
 005AA978    call        005AA660
 005AA97D    test        al,al
>005AA97F    je          005AAB22
 005AA985    cmp         dword ptr [ebp-0C],0
>005AA989    jge         005AA990
 005AA98B    xor         eax,eax
 005AA98D    mov         dword ptr [ebp-0C],eax
 005AA990    mov         eax,dword ptr [ebp-0C]
 005AA993    inc         eax
 005AA994    mov         dword ptr [ebp-10],eax
 005AA997    lea         edx,[ebp-21C]
 005AA99D    mov         eax,dword ptr [ebp-4]
 005AA9A0    call        005AA2EC
 005AA9A5    mov         eax,dword ptr [ebp-21C]
 005AA9AB    call        @LStrLen
 005AA9B0    cmp         eax,dword ptr [ebp-10]
>005AA9B3    jle         005AA9E3
 005AA9B5    lea         edx,[ebp-220]
 005AA9BB    mov         eax,dword ptr [ebp-4]
 005AA9BE    call        005AA2EC
 005AA9C3    mov         eax,dword ptr [ebp-220]
 005AA9C9    mov         edx,dword ptr [ebp-10]
 005AA9CC    mov         al,byte ptr [eax+edx-1]
 005AA9D0    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005AA9D6    and         eax,0FF
 005AA9DB    bt          dword ptr [edx],eax
>005AA9DE    jae         005AA9E3
 005AA9E0    inc         dword ptr [ebp-10]
 005AA9E3    mov         eax,dword ptr [ebp-4]
 005AA9E6    mov         eax,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 005AA9EC    cmp         eax,dword ptr [ebp-0C]
>005AA9EF    jg          005AAA03
 005AA9F1    mov         eax,dword ptr [ebp-4]
 005AA9F4    mov         eax,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 005AA9FA    mov         dword ptr [ebp-0C],eax
 005AA9FD    mov         eax,dword ptr [ebp-0C]
 005AAA00    mov         dword ptr [ebp-10],eax
 005AAA03    mov         ecx,dword ptr [ebp-10]
 005AAA06    mov         edx,dword ptr [ebp-10]
 005AAA09    mov         eax,dword ptr [ebp-4]
 005AAA0C    call        005AA8D8
 005AAA11    mov         eax,dword ptr [ebp-0C]
 005AAA14    cmp         eax,dword ptr [ebp-10]
>005AAA17    je          005AAB14
 005AAA1D    lea         eax,[ebp-114]
 005AAA23    push        eax
 005AAA24    call        USER32.GetKeyboardState
 005AAA29    xor         eax,eax
 005AAA2B    mov         dword ptr [ebp-14],eax
 005AAA2E    mov         eax,dword ptr [ebp-14]
 005AAA31    mov         byte ptr [ebp+eax-214],0
 005AAA39    inc         dword ptr [ebp-14]
 005AAA3C    cmp         dword ptr [ebp-14],100
>005AAA43    jne         005AAA2E
 005AAA45    mov         byte ptr [ebp-204],81
 005AAA4C    mov         eax,dword ptr [ebp-4]
 005AAA4F    mov         si,0FFC8
 005AAA53    call        @CallDynaInst;TControl.sub_005F40CC
 005AAA58    and         eax,7F
 005AAA5B    movzx       eax,word ptr [eax*2+6E3CB4]
 005AAA63    mov         byte ptr [ebp+eax-214],81
 005AAA6B    lea         eax,[ebp-214]
 005AAA71    push        eax
 005AAA72    call        USER32.SetKeyboardState
 005AAA77    mov         eax,dword ptr [ebp-4]
 005AAA7A    mov         byte ptr [eax+23C],1;TCustomMaskEdit.FSettingCursor:Boolean
 005AAA81    xor         eax,eax
 005AAA83    push        ebp
 005AAA84    push        5AAB01
 005AAA89    push        dword ptr fs:[eax]
 005AAA8C    mov         dword ptr fs:[eax],esp
 005AAA8F    push        1
 005AAA91    mov         eax,dword ptr [ebp-4]
 005AAA94    mov         si,0FFC8
 005AAA98    call        @CallDynaInst;TControl.sub_005F40CC
 005AAA9D    and         eax,7F
 005AAAA0    movzx       eax,word ptr [eax*2+6E3CB4]
 005AAAA8    push        eax
 005AAAA9    push        100
 005AAAAE    mov         eax,dword ptr [ebp-4]
 005AAAB1    call        TWinControl.GetHandle
 005AAAB6    push        eax
 005AAAB7    call        USER32.SendMessageA
 005AAABC    push        1
 005AAABE    mov         eax,dword ptr [ebp-4]
 005AAAC1    mov         si,0FFC8
 005AAAC5    call        @CallDynaInst;TControl.sub_005F40CC
 005AAACA    and         eax,7F
 005AAACD    movzx       eax,word ptr [eax*2+6E3CB4]
 005AAAD5    push        eax
 005AAAD6    push        101
 005AAADB    mov         eax,dword ptr [ebp-4]
 005AAADE    call        TWinControl.GetHandle
 005AAAE3    push        eax
 005AAAE4    call        USER32.SendMessageA
 005AAAE9    xor         eax,eax
 005AAAEB    pop         edx
 005AAAEC    pop         ecx
 005AAAED    pop         ecx
 005AAAEE    mov         dword ptr fs:[eax],edx
 005AAAF1    push        5AAB08
 005AAAF6    mov         eax,dword ptr [ebp-4]
 005AAAF9    mov         byte ptr [eax+23C],0;TCustomMaskEdit.FSettingCursor:Boolean
 005AAB00    ret
>005AAB01    jmp         @HandleFinally
>005AAB06    jmp         005AAAF6
 005AAB08    lea         eax,[ebp-114]
 005AAB0E    push        eax
 005AAB0F    call        USER32.SetKeyboardState
 005AAB14    mov         eax,dword ptr [ebp-4]
 005AAB17    mov         edx,dword ptr [ebp-0C]
 005AAB1A    mov         dword ptr [eax+230],edx;TCustomMaskEdit.FCaretPos:Integer
>005AAB20    jmp         005AAB75
 005AAB22    cmp         dword ptr [ebp-0C],0
>005AAB26    jge         005AAB2D
 005AAB28    xor         eax,eax
 005AAB2A    mov         dword ptr [ebp-0C],eax
 005AAB2D    lea         edx,[ebp-224]
 005AAB33    mov         eax,dword ptr [ebp-4]
 005AAB36    call        005AA2EC
 005AAB3B    mov         eax,dword ptr [ebp-224]
 005AAB41    call        @LStrLen
 005AAB46    cmp         eax,dword ptr [ebp-0C]
>005AAB49    jg          005AAB67
 005AAB4B    lea         edx,[ebp-228]
 005AAB51    mov         eax,dword ptr [ebp-4]
 005AAB54    call        005AA2EC
 005AAB59    mov         eax,dword ptr [ebp-228]
 005AAB5F    call        @LStrLen
 005AAB64    mov         dword ptr [ebp-0C],eax
 005AAB67    mov         ecx,dword ptr [ebp-0C]
 005AAB6A    mov         edx,dword ptr [ebp-0C]
 005AAB6D    mov         eax,dword ptr [ebp-4]
 005AAB70    call        005AA8D8
 005AAB75    xor         eax,eax
 005AAB77    pop         edx
 005AAB78    pop         ecx
 005AAB79    pop         ecx
 005AAB7A    mov         dword ptr fs:[eax],edx
 005AAB7D    push        5AAB9A
 005AAB82    lea         eax,[ebp-228]
 005AAB88    mov         edx,5
 005AAB8D    call        @LStrArrayClr
 005AAB92    ret
>005AAB93    jmp         @HandleFinally
>005AAB98    jmp         005AAB82
 005AAB9A    pop         esi
 005AAB9B    mov         esp,ebp
 005AAB9D    pop         ebp
 005AAB9E    ret
end;*}

//005AABA0
procedure sub_005AABA0(?:TCustomMaskEdit);
begin
{*
 005AABA0    push        ebp
 005AABA1    mov         ebp,esp
 005AABA3    add         esp,0FFFFFFF4
 005AABA6    mov         dword ptr [ebp-4],eax
 005AABA9    mov         eax,dword ptr [ebp-4]
 005AABAC    call        TWinControl.HandleAllocated
 005AABB1    test        al,al
>005AABB3    je          005AABE2
 005AABB5    mov         eax,dword ptr [ebp-4]
 005AABB8    call        005AA660
 005AABBD    test        al,al
>005AABBF    je          005AABE2
 005AABC1    lea         ecx,[ebp-0C]
 005AABC4    lea         edx,[ebp-8]
 005AABC7    mov         eax,dword ptr [ebp-4]
 005AABCA    call        005AA8A8
 005AABCF    mov         eax,dword ptr [ebp-8]
 005AABD2    cmp         eax,dword ptr [ebp-0C]
>005AABD5    jne         005AABE2
 005AABD7    mov         edx,dword ptr [ebp-8]
 005AABDA    mov         eax,dword ptr [ebp-4]
 005AABDD    call        005AA908
 005AABE2    mov         esp,ebp
 005AABE4    pop         ebp
 005AABE5    ret
*}
end;

//005AABE8
procedure sub_005AABE8;
begin
{*
 005AABE8    push        ebp
 005AABE9    mov         ebp,esp
 005AABEB    push        ecx
 005AABEC    mov         dword ptr [ebp-4],eax
 005AABEF    xor         edx,edx
 005AABF1    mov         eax,dword ptr [ebp-4]
 005AABF4    call        TMaskEdit.SetText
 005AABF9    pop         ecx
 005AABFA    pop         ebp
 005AABFB    ret
*}
end;

//005AABFC
{*function sub_005AABFC:?;
begin
 005AABFC    push        ebp
 005AABFD    mov         ebp,esp
 005AABFF    add         esp,0FFFFFFF8
 005AAC02    mov         dword ptr [ebp-4],eax
 005AAC05    mov         byte ptr [ebp-5],1
 005AAC09    mov         al,byte ptr [ebp-5]
 005AAC0C    pop         ecx
 005AAC0D    pop         ecx
 005AAC0E    pop         ebp
 005AAC0F    ret
end;*}

//005AAC10
procedure sub_005AAC10;
begin
{*
 005AAC10    push        ebp
 005AAC11    mov         ebp,esp
 005AAC13    push        ecx
 005AAC14    mov         dword ptr [ebp-4],eax
 005AAC17    mov         eax,dword ptr [ebp-4]
 005AAC1A    call        TCustomEdit.GetModified
 005AAC1F    test        al,al
>005AAC21    je          005AAC3E
 005AAC23    mov         eax,dword ptr [ebp-4]
 005AAC26    mov         edx,dword ptr [eax+238];TCustomMaskEdit.FOldValue:String
 005AAC2C    mov         eax,dword ptr [ebp-4]
 005AAC2F    call        005AA278
 005AAC34    xor         edx,edx
 005AAC36    mov         eax,dword ptr [ebp-4]
 005AAC39    call        TCustomEdit.SetModified
 005AAC3E    pop         ecx
 005AAC3F    pop         ebp
 005AAC40    ret
*}
end;

//005AAC44
{*function sub_005AAC44(?:TCustomMaskEdit; ?:?):?;
begin
 005AAC44    push        ebp
 005AAC45    mov         ebp,esp
 005AAC47    add         esp,0FFFFFFC0
 005AAC4A    xor         ecx,ecx
 005AAC4C    mov         dword ptr [ebp-18],ecx
 005AAC4F    mov         dword ptr [ebp-8],edx
 005AAC52    mov         dword ptr [ebp-4],eax
 005AAC55    xor         eax,eax
 005AAC57    push        ebp
 005AAC58    push        5AAE30
 005AAC5D    push        dword ptr fs:[eax]
 005AAC60    mov         dword ptr fs:[eax],esp
 005AAC63    mov         byte ptr [ebp-9],0
 005AAC67    mov         eax,dword ptr [ebp-8]
 005AAC6A    movzx       eax,byte ptr [eax]
 005AAC6D    cmp         ax,1B
>005AAC71    jne         005AAC83
 005AAC73    mov         eax,dword ptr [ebp-4]
 005AAC76    mov         edx,dword ptr [eax]
 005AAC78    call        dword ptr [edx+0E8];TCustomMaskEdit.sub_005AAC10
>005AAC7E    jmp         005AAE1A
 005AAC83    mov         eax,dword ptr [ebp-4]
 005AAC86    mov         edx,dword ptr [eax]
 005AAC88    call        dword ptr [edx+0E4];TCustomMaskEdit.sub_005AABFC
 005AAC8E    test        al,al
>005AAC90    je          005AAE1A
 005AAC96    mov         eax,dword ptr [ebp-4]
 005AAC99    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>005AACA0    jne         005AAE1A
 005AACA6    mov         eax,dword ptr [ebp-8]
 005AACA9    movzx       eax,byte ptr [eax]
 005AACAC    cmp         ax,8
>005AACB0    je          005AAE1A
 005AACB6    mov         eax,dword ptr [ebp-8]
 005AACB9    movzx       eax,byte ptr [eax]
 005AACBC    cmp         ax,0D
>005AACC0    jne         005AACD2
 005AACC2    mov         eax,dword ptr [ebp-4]
 005AACC5    mov         edx,dword ptr [eax]
 005AACC7    call        dword ptr [edx+0F4];TCustomMaskEdit.sub_005AB578
>005AACCD    jmp         005AAE1A
 005AACD2    lea         ecx,[ebp-14]
 005AACD5    lea         edx,[ebp-10]
 005AACD8    mov         eax,dword ptr [ebp-4]
 005AACDB    call        005AA8A8
 005AACE0    mov         eax,dword ptr [ebp-14]
 005AACE3    sub         eax,dword ptr [ebp-10]
 005AACE6    dec         eax
>005AACE7    jle         005AAD0E
 005AACE9    mov         dx,2E
 005AACED    mov         eax,dword ptr [ebp-4]
 005AACF0    call        005AB264
 005AACF5    mov         edx,dword ptr [ebp-10]
 005AACF8    mov         eax,dword ptr [ebp-4]
 005AACFB    call        005AB0F0
 005AAD00    mov         dword ptr [ebp-10],eax
 005AAD03    mov         edx,dword ptr [ebp-10]
 005AAD06    mov         eax,dword ptr [ebp-4]
 005AAD09    call        005AA908
 005AAD0E    mov         eax,dword ptr [ebp-8]
 005AAD11    mov         al,byte ptr [eax]
 005AAD13    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005AAD19    and         eax,0FF
 005AAD1E    bt          dword ptr [edx],eax
>005AAD21    jae         005AAD54
 005AAD23    push        1
 005AAD25    push        102
 005AAD2A    push        102
 005AAD2F    mov         eax,dword ptr [ebp-4]
 005AAD32    call        TWinControl.GetHandle
 005AAD37    push        eax
 005AAD38    lea         eax,[ebp-34]
 005AAD3B    push        eax
 005AAD3C    call        USER32.PeekMessageA
 005AAD41    test        eax,eax
>005AAD43    je          005AAD54
 005AAD45    cmp         dword ptr [ebp-30],12
>005AAD49    jne         005AAD54
 005AAD4B    mov         eax,dword ptr [ebp-2C]
 005AAD4E    push        eax
 005AAD4F    call        USER32.PostQuitMessage
 005AAD54    mov         edx,dword ptr [ebp-8]
 005AAD57    mov         ecx,dword ptr [ebp-10]
 005AAD5A    mov         eax,dword ptr [ebp-4]
 005AAD5D    call        005AB8F0
 005AAD62    mov         byte ptr [ebp-9],al
 005AAD65    cmp         byte ptr [ebp-9],0
>005AAD69    je          005AAE1A
 005AAD6F    mov         eax,dword ptr [ebp-8]
 005AAD72    mov         al,byte ptr [eax]
 005AAD74    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005AAD7A    and         eax,0FF
 005AAD7F    bt          dword ptr [edx],eax
>005AAD82    jae         005AADD4
 005AAD84    lea         eax,[ebp-38]
 005AAD87    mov         edx,dword ptr [ebp-8]
 005AAD8A    mov         dl,byte ptr [edx]
 005AAD8C    mov         byte ptr [eax+1],dl
 005AAD8F    mov         byte ptr [eax],1
 005AAD92    lea         edx,[ebp-38]
 005AAD95    lea         eax,[ebp-3C]
 005AAD98    call        @PStrCpy
 005AAD9D    lea         eax,[ebp-40]
 005AADA0    mov         dl,byte ptr [ebp-2C]
 005AADA3    mov         byte ptr [eax+1],dl
 005AADA6    mov         byte ptr [eax],1
 005AADA9    lea         edx,[ebp-40]
 005AADAC    lea         eax,[ebp-3C]
 005AADAF    mov         cl,2
 005AADB1    call        @PStrNCat
 005AADB6    lea         edx,[ebp-3C]
 005AADB9    lea         eax,[ebp-18]
 005AADBC    call        @LStrFromString
 005AADC1    mov         ecx,dword ptr [ebp-10]
 005AADC4    add         ecx,2
 005AADC7    mov         edx,dword ptr [ebp-10]
 005AADCA    mov         eax,dword ptr [ebp-4]
 005AADCD    call        005AA8D8
>005AADD2    jmp         005AADE1
 005AADD4    lea         eax,[ebp-18]
 005AADD7    mov         edx,dword ptr [ebp-8]
 005AADDA    mov         dl,byte ptr [edx]
 005AADDC    call        @LStrFromChar
 005AADE1    mov         eax,dword ptr [ebp-18]
 005AADE4    call        @LStrToPChar
 005AADE9    push        eax
 005AADEA    push        0
 005AADEC    push        0C2
 005AADF1    mov         eax,dword ptr [ebp-4]
 005AADF4    call        TWinControl.GetHandle
 005AADF9    push        eax
 005AADFA    call        USER32.SendMessageA
 005AADFF    lea         ecx,[ebp-14]
 005AAE02    lea         edx,[ebp-10]
 005AAE05    mov         eax,dword ptr [ebp-4]
 005AAE08    call        005AA8A8
 005AAE0D    xor         ecx,ecx
 005AAE0F    mov         edx,dword ptr [ebp-10]
 005AAE12    mov         eax,dword ptr [ebp-4]
 005AAE15    call        005AB06C
 005AAE1A    xor         eax,eax
 005AAE1C    pop         edx
 005AAE1D    pop         ecx
 005AAE1E    pop         ecx
 005AAE1F    mov         dword ptr fs:[eax],edx
 005AAE22    push        5AAE37
 005AAE27    lea         eax,[ebp-18]
 005AAE2A    call        @LStrClr
 005AAE2F    ret
>005AAE30    jmp         @HandleFinally
>005AAE35    jmp         005AAE27
 005AAE37    mov         al,byte ptr [ebp-9]
 005AAE3A    mov         esp,ebp
 005AAE3C    pop         ebp
 005AAE3D    ret
end;*}

//005AAE40
{*procedure sub_005AAE40(?:?; ?:?; ?:?);
begin
 005AAE40    push        ebp
 005AAE41    mov         ebp,esp
 005AAE43    add         esp,0FFFFFFE8
 005AAE46    push        ebx
 005AAE47    xor         ebx,ebx
 005AAE49    mov         dword ptr [ebp-18],ebx
 005AAE4C    mov         dword ptr [ebp-14],ebx
 005AAE4F    mov         byte ptr [ebp-7],cl
 005AAE52    mov         word ptr [ebp-6],dx
 005AAE56    mov         dword ptr [ebp-4],eax
 005AAE59    xor         eax,eax
 005AAE5B    push        ebp
 005AAE5C    push        5AB05F
 005AAE61    push        dword ptr fs:[eax]
 005AAE64    mov         dword ptr fs:[eax],esp
 005AAE67    test        byte ptr [ebp-7],4
>005AAE6B    jne         005AB044
 005AAE71    lea         ecx,[ebp-10]
 005AAE74    lea         edx,[ebp-0C]
 005AAE77    mov         eax,dword ptr [ebp-4]
 005AAE7A    call        005AA8A8
 005AAE7F    test        byte ptr [ebp-7],1
>005AAE83    je          005AAF43
 005AAE89    cmp         word ptr [ebp-6],27
>005AAE8E    jne         005AAEE8
 005AAE90    mov         eax,dword ptr [ebp-4]
 005AAE93    inc         dword ptr [eax+230]
 005AAE99    mov         eax,dword ptr [ebp-0C]
 005AAE9C    inc         eax
 005AAE9D    cmp         eax,dword ptr [ebp-10]
>005AAEA0    jne         005AAEB9
 005AAEA2    mov         ecx,dword ptr [ebp-10]
 005AAEA5    mov         edx,dword ptr [ebp-0C]
 005AAEA8    mov         eax,dword ptr [ebp-4]
 005AAEAB    call        005AA8D8
 005AAEB0    mov         eax,dword ptr [ebp-4]
 005AAEB3    inc         dword ptr [eax+230]
 005AAEB9    mov         eax,dword ptr [ebp-4]
 005AAEBC    mov         eax,dword ptr [eax+230]
 005AAEC2    mov         edx,dword ptr [ebp-4]
 005AAEC5    cmp         eax,dword ptr [edx+228]
>005AAECB    jle         005AB044
 005AAED1    mov         eax,dword ptr [ebp-4]
 005AAED4    mov         eax,dword ptr [eax+228]
 005AAEDA    mov         edx,dword ptr [ebp-4]
 005AAEDD    mov         dword ptr [edx+230],eax
>005AAEE3    jmp         005AB044
 005AAEE8    mov         eax,dword ptr [ebp-4]
 005AAEEB    dec         dword ptr [eax+230]
 005AAEF1    mov         eax,dword ptr [ebp-0C]
 005AAEF4    add         eax,2
 005AAEF7    cmp         eax,dword ptr [ebp-10]
>005AAEFA    jne         005AAF23
 005AAEFC    mov         eax,dword ptr [ebp-4]
 005AAEFF    mov         eax,dword ptr [eax+230]
 005AAF05    cmp         eax,dword ptr [ebp-0C]
>005AAF08    jle         005AAF23
 005AAF0A    mov         ecx,dword ptr [ebp-0C]
 005AAF0D    inc         ecx
 005AAF0E    mov         edx,dword ptr [ebp-0C]
 005AAF11    inc         edx
 005AAF12    mov         eax,dword ptr [ebp-4]
 005AAF15    call        005AA8D8
 005AAF1A    mov         eax,dword ptr [ebp-4]
 005AAF1D    dec         dword ptr [eax+230]
 005AAF23    mov         eax,dword ptr [ebp-4]
 005AAF26    cmp         dword ptr [eax+230],0
>005AAF2D    jge         005AB044
 005AAF33    mov         eax,dword ptr [ebp-4]
 005AAF36    xor         edx,edx
 005AAF38    mov         dword ptr [eax+230],edx
>005AAF3E    jmp         005AB044
 005AAF43    mov         eax,dword ptr [ebp-10]
 005AAF46    sub         eax,dword ptr [ebp-0C]
 005AAF49    dec         eax
>005AAF4A    jle         005AAFD5
 005AAF50    mov         eax,dword ptr [ebp-10]
 005AAF53    sub         eax,dword ptr [ebp-0C]
 005AAF56    cmp         eax,2
>005AAF59    jne         005AAFAB
 005AAF5B    lea         edx,[ebp-14]
 005AAF5E    mov         eax,dword ptr [ebp-4]
 005AAF61    call        005AA2EC
 005AAF66    mov         eax,dword ptr [ebp-14]
 005AAF69    mov         edx,dword ptr [ebp-0C]
 005AAF6C    mov         al,byte ptr [eax+edx]
 005AAF6F    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005AAF75    and         eax,0FF
 005AAF7A    bt          dword ptr [edx],eax
>005AAF7D    jae         005AAFAB
 005AAF7F    cmp         word ptr [ebp-6],25
>005AAF84    jne         005AAF96
 005AAF86    mov         edx,dword ptr [ebp-0C]
 005AAF89    mov         eax,dword ptr [ebp-4]
 005AAF8C    call        005AB0BC
>005AAF91    jmp         005AB044
 005AAF96    mov         ecx,2
 005AAF9B    mov         edx,dword ptr [ebp-0C]
 005AAF9E    mov         eax,dword ptr [ebp-4]
 005AAFA1    call        005AB06C
>005AAFA6    jmp         005AB044
 005AAFAB    mov         eax,dword ptr [ebp-10]
 005AAFAE    mov         edx,dword ptr [ebp-4]
 005AAFB1    cmp         eax,dword ptr [edx+230]
>005AAFB7    jne         005AAFC2
 005AAFB9    mov         eax,dword ptr [ebp-4]
 005AAFBC    dec         dword ptr [eax+230]
 005AAFC2    mov         eax,dword ptr [ebp-4]
 005AAFC5    mov         edx,dword ptr [eax+230]
 005AAFCB    mov         eax,dword ptr [ebp-4]
 005AAFCE    call        005AA908
>005AAFD3    jmp         005AB044
 005AAFD5    cmp         word ptr [ebp-6],25
>005AAFDA    jne         005AAFE9
 005AAFDC    mov         edx,dword ptr [ebp-0C]
 005AAFDF    mov         eax,dword ptr [ebp-4]
 005AAFE2    call        005AB0BC
>005AAFE7    jmp         005AB044
 005AAFE9    mov         eax,dword ptr [ebp-10]
 005AAFEC    cmp         eax,dword ptr [ebp-0C]
>005AAFEF    jne         005AAFFE
 005AAFF1    mov         edx,dword ptr [ebp-0C]
 005AAFF4    mov         eax,dword ptr [ebp-4]
 005AAFF7    call        005AA908
>005AAFFC    jmp         005AB044
 005AAFFE    lea         edx,[ebp-18]
 005AB001    mov         eax,dword ptr [ebp-4]
 005AB004    call        005AA2EC
 005AB009    mov         eax,dword ptr [ebp-18]
 005AB00C    mov         edx,dword ptr [ebp-0C]
 005AB00F    mov         al,byte ptr [eax+edx]
 005AB012    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005AB018    and         eax,0FF
 005AB01D    bt          dword ptr [edx],eax
>005AB020    jae         005AB034
 005AB022    mov         ecx,2
 005AB027    mov         edx,dword ptr [ebp-0C]
 005AB02A    mov         eax,dword ptr [ebp-4]
 005AB02D    call        005AB06C
>005AB032    jmp         005AB044
 005AB034    mov         ecx,1
 005AB039    mov         edx,dword ptr [ebp-0C]
 005AB03C    mov         eax,dword ptr [ebp-4]
 005AB03F    call        005AB06C
 005AB044    xor         eax,eax
 005AB046    pop         edx
 005AB047    pop         ecx
 005AB048    pop         ecx
 005AB049    mov         dword ptr fs:[eax],edx
 005AB04C    push        5AB066
 005AB051    lea         eax,[ebp-18]
 005AB054    mov         edx,2
 005AB059    call        @LStrArrayClr
 005AB05E    ret
>005AB05F    jmp         @HandleFinally
>005AB064    jmp         005AB051
 005AB066    pop         ebx
 005AB067    mov         esp,ebp
 005AB069    pop         ebp
 005AB06A    ret
end;*}

//005AB06C
{*procedure sub_005AB06C(?:TCustomMaskEdit; ?:?; ?:?);
begin
 005AB06C    push        ebp
 005AB06D    mov         ebp,esp
 005AB06F    add         esp,0FFFFFFF0
 005AB072    mov         dword ptr [ebp-0C],ecx
 005AB075    mov         dword ptr [ebp-8],edx
 005AB078    mov         dword ptr [ebp-4],eax
 005AB07B    mov         eax,dword ptr [ebp-8]
 005AB07E    add         eax,dword ptr [ebp-0C]
 005AB081    mov         dword ptr [ebp-10],eax
 005AB084    mov         edx,dword ptr [ebp-10]
 005AB087    mov         eax,dword ptr [ebp-4]
 005AB08A    call        005AB0F0
 005AB08F    mov         dword ptr [ebp-10],eax
 005AB092    mov         edx,dword ptr [ebp-10]
 005AB095    mov         eax,dword ptr [ebp-4]
 005AB098    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB09E    call        0064166C
 005AB0A3    test        al,al
>005AB0A5    je          005AB0AD
 005AB0A7    mov         eax,dword ptr [ebp-8]
 005AB0AA    mov         dword ptr [ebp-10],eax
 005AB0AD    mov         edx,dword ptr [ebp-10]
 005AB0B0    mov         eax,dword ptr [ebp-4]
 005AB0B3    call        005AA908
 005AB0B8    mov         esp,ebp
 005AB0BA    pop         ebp
 005AB0BB    ret
end;*}

//005AB0BC
{*procedure sub_005AB0BC(?:TCustomMaskEdit; ?:?);
begin
 005AB0BC    push        ebp
 005AB0BD    mov         ebp,esp
 005AB0BF    add         esp,0FFFFFFF4
 005AB0C2    mov         dword ptr [ebp-8],edx
 005AB0C5    mov         dword ptr [ebp-4],eax
 005AB0C8    mov         eax,dword ptr [ebp-8]
 005AB0CB    mov         dword ptr [ebp-0C],eax
 005AB0CE    dec         dword ptr [ebp-0C]
 005AB0D1    mov         edx,dword ptr [ebp-0C]
 005AB0D4    mov         eax,dword ptr [ebp-4]
 005AB0D7    call        005AB134
 005AB0DC    mov         dword ptr [ebp-0C],eax
 005AB0DF    mov         edx,dword ptr [ebp-0C]
 005AB0E2    mov         eax,dword ptr [ebp-4]
 005AB0E5    call        005AA908
 005AB0EA    mov         esp,ebp
 005AB0EC    pop         ebp
 005AB0ED    ret
end;*}

//005AB0F0
{*function sub_005AB0F0(?:TCustomMaskEdit; ?:?):?;
begin
 005AB0F0    push        ebp
 005AB0F1    mov         ebp,esp
 005AB0F3    add         esp,0FFFFFFF4
 005AB0F6    mov         dword ptr [ebp-8],edx
 005AB0F9    mov         dword ptr [ebp-4],eax
 005AB0FC    mov         eax,dword ptr [ebp-8]
 005AB0FF    mov         dword ptr [ebp-0C],eax
>005AB102    jmp         005AB107
 005AB104    inc         dword ptr [ebp-0C]
 005AB107    mov         eax,dword ptr [ebp-0C]
 005AB10A    mov         edx,dword ptr [ebp-4]
 005AB10D    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>005AB113    jge         005AB12A
 005AB115    mov         edx,dword ptr [ebp-0C]
 005AB118    mov         eax,dword ptr [ebp-4]
 005AB11B    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB121    call        0064166C
 005AB126    test        al,al
>005AB128    jne         005AB104
 005AB12A    mov         eax,dword ptr [ebp-0C]
 005AB12D    mov         esp,ebp
 005AB12F    pop         ebp
 005AB130    ret
end;*}

//005AB134
{*function sub_005AB134(?:?; ?:?):?;
begin
 005AB134    push        ebp
 005AB135    mov         ebp,esp
 005AB137    add         esp,0FFFFFFF4
 005AB13A    mov         dword ptr [ebp-8],edx
 005AB13D    mov         dword ptr [ebp-4],eax
 005AB140    mov         eax,dword ptr [ebp-8]
 005AB143    mov         dword ptr [ebp-0C],eax
>005AB146    jmp         005AB14B
 005AB148    dec         dword ptr [ebp-0C]
 005AB14B    cmp         dword ptr [ebp-0C],0
>005AB14F    jl          005AB166
 005AB151    mov         edx,dword ptr [ebp-0C]
 005AB154    mov         eax,dword ptr [ebp-4]
 005AB157    mov         eax,dword ptr [eax+220]
 005AB15D    call        0064166C
 005AB162    test        al,al
>005AB164    jne         005AB148
 005AB166    cmp         dword ptr [ebp-0C],0
>005AB16A    jge         005AB17A
 005AB16C    mov         edx,dword ptr [ebp-0C]
 005AB16F    mov         eax,dword ptr [ebp-4]
 005AB172    call        005AB0F0
 005AB177    mov         dword ptr [ebp-0C],eax
 005AB17A    mov         eax,dword ptr [ebp-0C]
 005AB17D    mov         esp,ebp
 005AB17F    pop         ebp
 005AB180    ret
end;*}

//005AB184
{*procedure sub_005AB184(?:?; ?:?; ?:?);
begin
 005AB184    push        ebp
 005AB185    mov         ebp,esp
 005AB187    add         esp,0FFFFFFF0
 005AB18A    mov         byte ptr [ebp-7],cl
 005AB18D    mov         word ptr [ebp-6],dx
 005AB191    mov         dword ptr [ebp-4],eax
 005AB194    lea         ecx,[ebp-10]
 005AB197    lea         edx,[ebp-0C]
 005AB19A    mov         eax,dword ptr [ebp-4]
 005AB19D    call        005AA8A8
 005AB1A2    cmp         word ptr [ebp-6],24
>005AB1A7    jne         005AB1FB
 005AB1A9    test        byte ptr [ebp-7],1
>005AB1AD    je          005AB1E4
 005AB1AF    mov         eax,dword ptr [ebp-0C]
 005AB1B2    mov         edx,dword ptr [ebp-4]
 005AB1B5    cmp         eax,dword ptr [edx+230]
>005AB1BB    je          005AB1CD
 005AB1BD    mov         eax,dword ptr [ebp-0C]
 005AB1C0    inc         eax
 005AB1C1    cmp         eax,dword ptr [ebp-10]
>005AB1C4    je          005AB1CD
 005AB1C6    mov         eax,dword ptr [ebp-0C]
 005AB1C9    inc         eax
 005AB1CA    mov         dword ptr [ebp-10],eax
 005AB1CD    mov         ecx,dword ptr [ebp-10]
 005AB1D0    xor         edx,edx
 005AB1D2    mov         eax,dword ptr [ebp-4]
 005AB1D5    call        005AA8D8
 005AB1DA    mov         eax,dword ptr [ebp-4]
 005AB1DD    call        005AABA0
>005AB1E2    jmp         005AB1EE
 005AB1E4    xor         edx,edx
 005AB1E6    mov         eax,dword ptr [ebp-4]
 005AB1E9    call        005AA908
 005AB1EE    mov         eax,dword ptr [ebp-4]
 005AB1F1    xor         edx,edx
 005AB1F3    mov         dword ptr [eax+230],edx
>005AB1F9    jmp         005AB260
 005AB1FB    test        byte ptr [ebp-7],1
>005AB1FF    je          005AB23D
 005AB201    mov         eax,dword ptr [ebp-10]
 005AB204    mov         edx,dword ptr [ebp-4]
 005AB207    cmp         eax,dword ptr [edx+230]
>005AB20D    je          005AB21F
 005AB20F    mov         eax,dword ptr [ebp-0C]
 005AB212    inc         eax
 005AB213    cmp         eax,dword ptr [ebp-10]
>005AB216    je          005AB21F
 005AB218    mov         eax,dword ptr [ebp-10]
 005AB21B    dec         eax
 005AB21C    mov         dword ptr [ebp-0C],eax
 005AB21F    mov         eax,dword ptr [ebp-4]
 005AB222    mov         ecx,dword ptr [eax+228]
 005AB228    mov         edx,dword ptr [ebp-0C]
 005AB22B    mov         eax,dword ptr [ebp-4]
 005AB22E    call        005AA8D8
 005AB233    mov         eax,dword ptr [ebp-4]
 005AB236    call        005AABA0
>005AB23B    jmp         005AB24E
 005AB23D    mov         eax,dword ptr [ebp-4]
 005AB240    mov         edx,dword ptr [eax+228]
 005AB246    mov         eax,dword ptr [ebp-4]
 005AB249    call        005AA908
 005AB24E    mov         eax,dword ptr [ebp-4]
 005AB251    mov         eax,dword ptr [eax+228]
 005AB257    mov         edx,dword ptr [ebp-4]
 005AB25A    mov         dword ptr [edx+230],eax
 005AB260    mov         esp,ebp
 005AB262    pop         ebp
 005AB263    ret
end;*}

//005AB264
{*procedure sub_005AB264(?:TCustomMaskEdit; ?:?);
begin
 005AB264    push        ebp
 005AB265    mov         ebp,esp
 005AB267    add         esp,0FFFFFFE8
 005AB26A    xor         ecx,ecx
 005AB26C    mov         dword ptr [ebp-18],ecx
 005AB26F    mov         word ptr [ebp-6],dx
 005AB273    mov         dword ptr [ebp-4],eax
 005AB276    xor         eax,eax
 005AB278    push        ebp
 005AB279    push        5AB392
 005AB27E    push        dword ptr fs:[eax]
 005AB281    mov         dword ptr fs:[eax],esp
 005AB284    mov         eax,dword ptr [ebp-4]
 005AB287    cmp         byte ptr [eax+20E],0;TCustomMaskEdit.FReadOnly:Boolean
>005AB28E    jne         005AB37C
 005AB294    lea         ecx,[ebp-10]
 005AB297    lea         edx,[ebp-0C]
 005AB29A    mov         eax,dword ptr [ebp-4]
 005AB29D    call        005AA8A8
 005AB2A2    mov         eax,dword ptr [ebp-10]
 005AB2A5    sub         eax,dword ptr [ebp-0C]
 005AB2A8    dec         eax
>005AB2A9    jg          005AB2DD
 005AB2AB    cmp         word ptr [ebp-6],8
>005AB2B0    jne         005AB2DD
 005AB2B2    mov         eax,dword ptr [ebp-0C]
 005AB2B5    mov         dword ptr [ebp-14],eax
 005AB2B8    mov         edx,dword ptr [ebp-0C]
 005AB2BB    mov         eax,dword ptr [ebp-4]
 005AB2BE    call        005AB0BC
 005AB2C3    lea         ecx,[ebp-10]
 005AB2C6    lea         edx,[ebp-0C]
 005AB2C9    mov         eax,dword ptr [ebp-4]
 005AB2CC    call        005AA8A8
 005AB2D1    mov         eax,dword ptr [ebp-0C]
 005AB2D4    cmp         eax,dword ptr [ebp-14]
>005AB2D7    je          005AB37C
 005AB2DD    mov         eax,dword ptr [ebp-10]
 005AB2E0    sub         eax,dword ptr [ebp-0C]
 005AB2E3    dec         eax
>005AB2E4    jl          005AB37C
 005AB2EA    lea         edx,[ebp-18]
 005AB2ED    mov         eax,dword ptr [ebp-4]
 005AB2F0    call        005AA2EC
 005AB2F5    mov         eax,dword ptr [ebp-10]
 005AB2F8    sub         eax,dword ptr [ebp-0C]
 005AB2FB    push        eax
 005AB2FC    lea         edx,[ebp-18]
 005AB2FF    mov         ecx,dword ptr [ebp-0C]
 005AB302    mov         eax,dword ptr [ebp-4]
 005AB305    call        005ABECC
 005AB30A    lea         eax,[ebp-18]
 005AB30D    push        eax
 005AB30E    mov         ecx,dword ptr [ebp-10]
 005AB311    sub         ecx,dword ptr [ebp-0C]
 005AB314    mov         edx,dword ptr [ebp-0C]
 005AB317    inc         edx
 005AB318    mov         eax,dword ptr [ebp-18]
 005AB31B    call        @LStrCopy
 005AB320    mov         eax,dword ptr [ebp-18]
 005AB323    call        @LStrToPChar
 005AB328    push        eax
 005AB329    push        0
 005AB32B    push        0C2
 005AB330    mov         eax,dword ptr [ebp-4]
 005AB333    call        TWinControl.GetHandle
 005AB338    push        eax
 005AB339    call        USER32.SendMessageA
 005AB33E    mov         eax,dword ptr [ebp-10]
 005AB341    sub         eax,dword ptr [ebp-0C]
 005AB344    dec         eax
>005AB345    je          005AB362
 005AB347    mov         edx,dword ptr [ebp-0C]
 005AB34A    mov         eax,dword ptr [ebp-4]
 005AB34D    call        005AB0F0
 005AB352    mov         dword ptr [ebp-0C],eax
 005AB355    mov         edx,dword ptr [ebp-0C]
 005AB358    mov         eax,dword ptr [ebp-4]
 005AB35B    call        005AA908
>005AB360    jmp         005AB37C
 005AB362    lea         ecx,[ebp-10]
 005AB365    lea         edx,[ebp-0C]
 005AB368    mov         eax,dword ptr [ebp-4]
 005AB36B    call        005AA8A8
 005AB370    mov         edx,dword ptr [ebp-0C]
 005AB373    dec         edx
 005AB374    mov         eax,dword ptr [ebp-4]
 005AB377    call        005AA908
 005AB37C    xor         eax,eax
 005AB37E    pop         edx
 005AB37F    pop         ecx
 005AB380    pop         ecx
 005AB381    mov         dword ptr fs:[eax],edx
 005AB384    push        5AB399
 005AB389    lea         eax,[ebp-18]
 005AB38C    call        @LStrClr
 005AB391    ret
>005AB392    jmp         @HandleFinally
>005AB397    jmp         005AB389
 005AB399    mov         esp,ebp
 005AB39B    pop         ebp
 005AB39C    ret
end;*}

//005AB3A0
{*procedure TCustomMaskEdit.CMEnter(?:?);
begin
 005AB3A0    push        ebp
 005AB3A1    mov         ebp,esp
 005AB3A3    add         esp,0FFFFFFF4
 005AB3A6    xor         ecx,ecx
 005AB3A8    mov         dword ptr [ebp-0C],ecx
 005AB3AB    mov         dword ptr [ebp-8],edx
 005AB3AE    mov         dword ptr [ebp-4],eax
 005AB3B1    xor         eax,eax
 005AB3B3    push        ebp
 005AB3B4    push        5AB43B
 005AB3B9    push        dword ptr fs:[eax]
 005AB3BC    mov         dword ptr fs:[eax],esp
 005AB3BF    mov         eax,dword ptr [ebp-4]
 005AB3C2    call        005AA660
 005AB3C7    test        al,al
>005AB3C9    je          005AB41A
 005AB3CB    mov         eax,dword ptr [ebp-4]
 005AB3CE    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>005AB3D2    jne         005AB41A
 005AB3D4    mov         eax,dword ptr [ebp-4]
 005AB3D7    test        byte ptr [eax+22D],2;TCustomMaskEdit.FMaskState:TMaskedState
>005AB3DE    jne         005AB406
 005AB3E0    lea         edx,[ebp-0C]
 005AB3E3    mov         eax,dword ptr [ebp-4]
 005AB3E6    call        005AA2EC
 005AB3EB    mov         edx,dword ptr [ebp-0C]
 005AB3EE    mov         eax,dword ptr [ebp-4]
 005AB3F1    add         eax,238;TCustomMaskEdit.FOldValue:String
 005AB3F6    call        @LStrAsg
 005AB3FB    mov         edx,dword ptr [ebp-8]
 005AB3FE    mov         eax,dword ptr [ebp-4]
 005AB401    call        TCustomEdit.CMEnter
 005AB406    mov         eax,dword ptr [ebp-4]
 005AB409    and         byte ptr [eax+22D],0FD;TCustomMaskEdit.FMaskState:TMaskedState
 005AB410    mov         eax,dword ptr [ebp-4]
 005AB413    call        005AABA0
>005AB418    jmp         005AB425
 005AB41A    mov         edx,dword ptr [ebp-8]
 005AB41D    mov         eax,dword ptr [ebp-4]
 005AB420    call        TCustomEdit.CMEnter
 005AB425    xor         eax,eax
 005AB427    pop         edx
 005AB428    pop         ecx
 005AB429    pop         ecx
 005AB42A    mov         dword ptr fs:[eax],edx
 005AB42D    push        5AB442
 005AB432    lea         eax,[ebp-0C]
 005AB435    call        @LStrClr
 005AB43A    ret
>005AB43B    jmp         @HandleFinally
>005AB440    jmp         005AB432
 005AB442    mov         esp,ebp
 005AB444    pop         ebp
 005AB445    ret
end;*}

//005AB448
{*procedure TCustomMaskEdit.CMTextChanged(?:?);
begin
 005AB448    push        ebp
 005AB449    mov         ebp,esp
 005AB44B    add         esp,0FFFFFFE8
 005AB44E    xor         ecx,ecx
 005AB450    mov         dword ptr [ebp-18],ecx
 005AB453    mov         dword ptr [ebp-8],edx
 005AB456    mov         dword ptr [ebp-4],eax
 005AB459    xor         eax,eax
 005AB45B    push        ebp
 005AB45C    push        5AB4DE
 005AB461    push        dword ptr fs:[eax]
 005AB464    mov         dword ptr fs:[eax],esp
 005AB467    mov         edx,dword ptr [ebp-8]
 005AB46A    mov         eax,dword ptr [ebp-4]
 005AB46D    call        TCustomEdit.CMTextChanged
 005AB472    lea         edx,[ebp-18]
 005AB475    mov         eax,dword ptr [ebp-4]
 005AB478    call        005AA2EC
 005AB47D    mov         edx,dword ptr [ebp-18]
 005AB480    mov         eax,dword ptr [ebp-4]
 005AB483    add         eax,238;TCustomMaskEdit.FOldValue:String
 005AB488    call        @LStrAsg
 005AB48D    mov         eax,dword ptr [ebp-4]
 005AB490    call        TWinControl.HandleAllocated
 005AB495    test        al,al
>005AB497    je          005AB4C8
 005AB499    lea         ecx,[ebp-10]
 005AB49C    lea         edx,[ebp-0C]
 005AB49F    mov         eax,dword ptr [ebp-4]
 005AB4A2    call        005AA8A8
 005AB4A7    mov         edx,dword ptr [ebp-0C]
 005AB4AA    mov         eax,dword ptr [ebp-4]
 005AB4AD    call        005AB0F0
 005AB4B2    mov         dword ptr [ebp-14],eax
 005AB4B5    mov         eax,dword ptr [ebp-14]
 005AB4B8    cmp         eax,dword ptr [ebp-0C]
>005AB4BB    je          005AB4C8
 005AB4BD    mov         edx,dword ptr [ebp-14]
 005AB4C0    mov         eax,dword ptr [ebp-4]
 005AB4C3    call        005AA908
 005AB4C8    xor         eax,eax
 005AB4CA    pop         edx
 005AB4CB    pop         ecx
 005AB4CC    pop         ecx
 005AB4CD    mov         dword ptr fs:[eax],edx
 005AB4D0    push        5AB4E5
 005AB4D5    lea         eax,[ebp-18]
 005AB4D8    call        @LStrClr
 005AB4DD    ret
>005AB4DE    jmp         @HandleFinally
>005AB4E3    jmp         005AB4D5
 005AB4E5    mov         esp,ebp
 005AB4E7    pop         ebp
 005AB4E8    ret
end;*}

//005AB4EC
{*procedure TCustomMaskEdit.CMWantSpecialKey(?:?);
begin
 005AB4EC    push        ebp
 005AB4ED    mov         ebp,esp
 005AB4EF    add         esp,0FFFFFFF8
 005AB4F2    mov         dword ptr [ebp-8],edx
 005AB4F5    mov         dword ptr [ebp-4],eax
 005AB4F8    mov         edx,dword ptr [ebp-8]
 005AB4FB    mov         eax,dword ptr [ebp-4]
 005AB4FE    mov         ecx,dword ptr [eax]
 005AB500    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 005AB503    mov         eax,dword ptr [ebp-8]
 005AB506    cmp         word ptr [eax+4],1B
>005AB50B    jne         005AB52F
 005AB50D    mov         eax,dword ptr [ebp-4]
 005AB510    call        005AA660
 005AB515    test        al,al
>005AB517    je          005AB52F
 005AB519    mov         eax,dword ptr [ebp-4]
 005AB51C    call        TCustomEdit.GetModified
 005AB521    test        al,al
>005AB523    je          005AB52F
 005AB525    mov         eax,dword ptr [ebp-8]
 005AB528    mov         dword ptr [eax+0C],1
 005AB52F    pop         ecx
 005AB530    pop         ecx
 005AB531    pop         ebp
 005AB532    ret
end;*}

//005AB534
{*procedure TCustomMaskEdit.CMExit(?:?);
begin
 005AB534    push        ebp
 005AB535    mov         ebp,esp
 005AB537    add         esp,0FFFFFFF8
 005AB53A    mov         dword ptr [ebp-8],edx
 005AB53D    mov         dword ptr [ebp-4],eax
 005AB540    mov         eax,dword ptr [ebp-4]
 005AB543    call        005AA660
 005AB548    test        al,al
>005AB54A    je          005AB568
 005AB54C    mov         eax,dword ptr [ebp-4]
 005AB54F    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>005AB553    jne         005AB568
 005AB555    mov         eax,dword ptr [ebp-4]
 005AB558    mov         edx,dword ptr [eax]
 005AB55A    call        dword ptr [edx+0F4];TCustomMaskEdit.sub_005AB578
 005AB560    mov         eax,dword ptr [ebp-4]
 005AB563    call        005AABA0
 005AB568    mov         edx,dword ptr [ebp-8]
 005AB56B    mov         eax,dword ptr [ebp-4]
 005AB56E    call        TWinControl.CMExit
 005AB573    pop         ecx
 005AB574    pop         ecx
 005AB575    pop         ebp
 005AB576    ret
end;*}

//005AB578
procedure sub_005AB578;
begin
{*
 005AB578    push        ebp
 005AB579    mov         ebp,esp
 005AB57B    add         esp,0FFFFFFF4
 005AB57E    push        ebx
 005AB57F    xor         edx,edx
 005AB581    mov         dword ptr [ebp-8],edx
 005AB584    mov         dword ptr [ebp-4],eax
 005AB587    xor         eax,eax
 005AB589    push        ebp
 005AB58A    push        5AB617
 005AB58F    push        dword ptr fs:[eax]
 005AB592    mov         dword ptr fs:[eax],esp
 005AB595    lea         edx,[ebp-8]
 005AB598    mov         eax,dword ptr [ebp-4]
 005AB59B    call        005AA2EC
 005AB5A0    mov         eax,dword ptr [ebp-4]
 005AB5A3    call        005AA660
 005AB5A8    test        al,al
>005AB5AA    je          005AB601
 005AB5AC    mov         eax,dword ptr [ebp-4]
 005AB5AF    call        TCustomEdit.GetModified
 005AB5B4    test        al,al
>005AB5B6    je          005AB601
 005AB5B8    lea         ecx,[ebp-0C]
 005AB5BB    mov         edx,dword ptr [ebp-8]
 005AB5BE    mov         eax,dword ptr [ebp-4]
 005AB5C1    mov         ebx,dword ptr [eax]
 005AB5C3    call        dword ptr [ebx+0EC];TCustomMaskEdit.sub_005ABE08
 005AB5C9    test        al,al
>005AB5CB    jne         005AB601
 005AB5CD    mov         eax,dword ptr [ebp-4]
 005AB5D0    test        byte ptr [eax+1C],10;TCustomMaskEdit.FComponentState:TComponentState
>005AB5D4    jne         005AB5EB
 005AB5D6    mov         eax,dword ptr [ebp-4]
 005AB5D9    or          byte ptr [eax+22D],2;TCustomMaskEdit.FMaskState:TMaskedState
 005AB5E0    mov         eax,dword ptr [ebp-4]
 005AB5E3    mov         edx,dword ptr [eax]
 005AB5E5    call        dword ptr [edx+0C0];TCustomMaskEdit.sub_005FBFF0
 005AB5EB    mov         edx,dword ptr [ebp-0C]
 005AB5EE    mov         eax,dword ptr [ebp-4]
 005AB5F1    call        005AA908
 005AB5F6    mov         eax,dword ptr [ebp-4]
 005AB5F9    mov         edx,dword ptr [eax]
 005AB5FB    call        dword ptr [edx+0F0];TCustomMaskEdit.sub_005AB624
 005AB601    xor         eax,eax
 005AB603    pop         edx
 005AB604    pop         ecx
 005AB605    pop         ecx
 005AB606    mov         dword ptr fs:[eax],edx
 005AB609    push        5AB61E
 005AB60E    lea         eax,[ebp-8]
 005AB611    call        @LStrClr
 005AB616    ret
>005AB617    jmp         @HandleFinally
>005AB61C    jmp         005AB60E
 005AB61E    pop         ebx
 005AB61F    mov         esp,ebp
 005AB621    pop         ebp
 005AB622    ret
*}
end;

//005AB624
procedure sub_005AB624;
begin
{*
 005AB624    push        ebp
 005AB625    mov         ebp,esp
 005AB627    add         esp,0FFFFFFF4
 005AB62A    mov         dword ptr [ebp-4],eax
 005AB62D    push        0
 005AB62F    call        USER32.MessageBeep
 005AB634    mov         eax,dword ptr [ebp-4]
 005AB637    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB63D    mov         dword ptr [ebp-0C],eax
 005AB640    mov         byte ptr [ebp-8],0B
 005AB644    lea         eax,[ebp-0C]
 005AB647    push        eax
 005AB648    push        0
 005AB64A    mov         ecx,dword ptr ds:[6E9ED8];^gvar_0063CBC0
 005AB650    mov         dl,1
 005AB652    mov         eax,[005A9448];EDBEditError
 005AB657    call        Exception.CreateResFmt;EDBEditError.Create
 005AB65C    call        @RaiseExcept
 005AB661    mov         esp,ebp
 005AB663    pop         ebp
 005AB664    ret
*}
end;

//005AB668
{*procedure sub_005AB668(?:TMaskEdit; ?:AnsiString; ?:?; ?:?);
begin
 005AB668    push        ebp
 005AB669    mov         ebp,esp
 005AB66B    add         esp,0FFFFFFF4
 005AB66E    mov         byte ptr [ebp-9],cl
 005AB671    mov         dword ptr [ebp-8],edx
 005AB674    mov         dword ptr [ebp-4],eax
 005AB677    cmp         byte ptr [ebp-9],0
>005AB67B    jne         005AB696
 005AB67D    mov         eax,dword ptr [ebp+8]
 005AB680    push        eax
 005AB681    mov         cl,20
 005AB683    mov         edx,dword ptr [ebp-8]
 005AB686    mov         eax,dword ptr [ebp-4]
 005AB689    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AB68F    call        00641150
>005AB694    jmp         005AB6B4
 005AB696    mov         eax,dword ptr [ebp+8]
 005AB699    push        eax
 005AB69A    mov         eax,dword ptr [ebp-4]
 005AB69D    mov         cl,byte ptr [eax+224];TMaskEdit.FMaskBlank:Char
 005AB6A3    mov         edx,dword ptr [ebp-8]
 005AB6A6    mov         eax,dword ptr [ebp-4]
 005AB6A9    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AB6AF    call        00641150
 005AB6B4    mov         esp,ebp
 005AB6B6    pop         ebp
 005AB6B7    ret         4
end;*}

//005AB6BC
{*procedure sub_005AB6BC(?:TMaskEdit; ?:?; ?:?);
begin
 005AB6BC    push        ebp
 005AB6BD    mov         ebp,esp
 005AB6BF    add         esp,0FFFFFFD4
 005AB6C2    push        ebx
 005AB6C3    xor         ebx,ebx
 005AB6C5    mov         dword ptr [ebp-28],ebx
 005AB6C8    mov         dword ptr [ebp-2C],ebx
 005AB6CB    mov         dword ptr [ebp-0C],ecx
 005AB6CE    mov         dword ptr [ebp-8],edx
 005AB6D1    mov         dword ptr [ebp-4],eax
 005AB6D4    xor         eax,eax
 005AB6D6    push        ebp
 005AB6D7    push        5AB8E2
 005AB6DC    push        dword ptr fs:[eax]
 005AB6DF    mov         dword ptr fs:[eax],esp
 005AB6E2    mov         dword ptr [ebp-18],1
 005AB6E9    mov         eax,dword ptr [ebp-0C]
 005AB6EC    mov         edx,dword ptr [ebp-8]
 005AB6EF    call        @LStrAsg
 005AB6F4    mov         eax,dword ptr [ebp-4]
 005AB6F7    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AB6FD    call        @LStrLen
 005AB702    test        eax,eax
>005AB704    jle         005AB78C
 005AB70A    mov         dword ptr [ebp-24],eax
 005AB70D    mov         dword ptr [ebp-1C],1
 005AB714    mov         eax,dword ptr [ebp-4]
 005AB717    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AB71D    mov         edx,dword ptr [ebp-1C]
 005AB720    call        00640ED0
 005AB725    mov         byte ptr [ebp-1D],al
 005AB728    mov         al,byte ptr [ebp-1D]
 005AB72B    dec         eax
 005AB72C    sub         al,2
>005AB72E    jae         005AB778
 005AB730    lea         eax,[ebp-28]
 005AB733    push        eax
 005AB734    mov         eax,dword ptr [ebp-0C]
 005AB737    mov         eax,dword ptr [eax]
 005AB739    call        @LStrLen
 005AB73E    mov         ecx,eax
 005AB740    sub         ecx,dword ptr [ebp-18]
 005AB743    mov         edx,dword ptr [ebp-18]
 005AB746    inc         edx
 005AB747    mov         eax,dword ptr [ebp-0C]
 005AB74A    mov         eax,dword ptr [eax]
 005AB74C    call        @LStrCopy
 005AB751    mov         eax,dword ptr [ebp-28]
 005AB754    push        eax
 005AB755    lea         eax,[ebp-2C]
 005AB758    push        eax
 005AB759    mov         ecx,dword ptr [ebp-18]
 005AB75C    dec         ecx
 005AB75D    mov         eax,dword ptr [ebp-0C]
 005AB760    mov         eax,dword ptr [eax]
 005AB762    mov         edx,1
 005AB767    call        @LStrCopy
 005AB76C    mov         edx,dword ptr [ebp-2C]
 005AB76F    mov         eax,dword ptr [ebp-0C]
 005AB772    pop         ecx
 005AB773    call        @LStrCat3
 005AB778    mov         al,byte ptr [ebp-1D]
 005AB77B    add         al,0FC
 005AB77D    sub         al,2
>005AB77F    jae         005AB784
 005AB781    inc         dword ptr [ebp-18]
 005AB784    inc         dword ptr [ebp-1C]
 005AB787    dec         dword ptr [ebp-24]
>005AB78A    jne         005AB714
 005AB78C    mov         eax,dword ptr [ebp-4]
 005AB78F    mov         eax,dword ptr [eax+220];TMaskEdit.FEditMask:TEditMask
 005AB795    mov         edx,1
 005AB79A    call        00641070
 005AB79F    mov         byte ptr [ebp-1E],al
 005AB7A2    test        byte ptr [ebp-1E],1
>005AB7A6    je          005AB812
 005AB7A8    mov         dword ptr [ebp-18],1
 005AB7AF    mov         eax,dword ptr [ebp-0C]
 005AB7B2    mov         eax,dword ptr [eax]
 005AB7B4    call        @LStrLen
 005AB7B9    test        eax,eax
>005AB7BB    jle         005AB7E9
 005AB7BD    mov         dword ptr [ebp-24],eax
 005AB7C0    mov         dword ptr [ebp-10],1
 005AB7C7    mov         eax,dword ptr [ebp-0C]
 005AB7CA    mov         eax,dword ptr [eax]
 005AB7CC    mov         edx,dword ptr [ebp-10]
 005AB7CF    mov         al,byte ptr [eax+edx-1]
 005AB7D3    mov         edx,dword ptr [ebp-4]
 005AB7D6    cmp         al,byte ptr [edx+224];TMaskEdit.FMaskBlank:Char
>005AB7DC    jne         005AB7E9
 005AB7DE    inc         dword ptr [ebp-18]
 005AB7E1    inc         dword ptr [ebp-10]
 005AB7E4    dec         dword ptr [ebp-24]
>005AB7E7    jne         005AB7C7
 005AB7E9    cmp         dword ptr [ebp-18],1
>005AB7ED    je          005AB866
 005AB7EF    mov         eax,dword ptr [ebp-0C]
 005AB7F2    push        eax
 005AB7F3    mov         eax,dword ptr [ebp-0C]
 005AB7F6    mov         eax,dword ptr [eax]
 005AB7F8    call        @LStrLen
 005AB7FD    mov         ecx,eax
 005AB7FF    sub         ecx,dword ptr [ebp-18]
 005AB802    inc         ecx
 005AB803    mov         eax,dword ptr [ebp-0C]
 005AB806    mov         eax,dword ptr [eax]
 005AB808    mov         edx,dword ptr [ebp-18]
 005AB80B    call        @LStrCopy
>005AB810    jmp         005AB866
 005AB812    mov         eax,dword ptr [ebp-0C]
 005AB815    mov         eax,dword ptr [eax]
 005AB817    call        @LStrLen
 005AB81C    mov         dword ptr [ebp-14],eax
 005AB81F    mov         eax,dword ptr [ebp-14]
 005AB822    test        eax,eax
>005AB824    jle         005AB866
 005AB826    mov         dword ptr [ebp-24],eax
 005AB829    mov         dword ptr [ebp-10],1
 005AB830    mov         eax,dword ptr [ebp-14]
 005AB833    sub         eax,dword ptr [ebp-10]
 005AB836    mov         edx,dword ptr [ebp-0C]
 005AB839    mov         edx,dword ptr [edx]
 005AB83B    mov         al,byte ptr [edx+eax]
 005AB83E    mov         edx,dword ptr [ebp-4]
 005AB841    cmp         al,byte ptr [edx+224];TMaskEdit.FMaskBlank:Char
>005AB847    jne         005AB866
 005AB849    mov         eax,dword ptr [ebp-0C]
 005AB84C    mov         eax,dword ptr [eax]
 005AB84E    call        @LStrLen
 005AB853    mov         edx,eax
 005AB855    dec         edx
 005AB856    mov         eax,dword ptr [ebp-0C]
 005AB859    call        @LStrSetLength
 005AB85E    inc         dword ptr [ebp-10]
 005AB861    dec         dword ptr [ebp-24]
>005AB864    jne         005AB830
 005AB866    mov         eax,dword ptr [ebp-4]
 005AB869    cmp         byte ptr [eax+224],20;TMaskEdit.FMaskBlank:Char
>005AB870    je          005AB8C7
 005AB872    mov         eax,dword ptr [ebp-0C]
 005AB875    mov         eax,dword ptr [eax]
 005AB877    call        @LStrLen
 005AB87C    mov         dword ptr [ebp-14],eax
 005AB87F    mov         eax,dword ptr [ebp-14]
 005AB882    test        eax,eax
>005AB884    jle         005AB8C7
 005AB886    mov         dword ptr [ebp-24],eax
 005AB889    mov         dword ptr [ebp-10],1
 005AB890    mov         eax,dword ptr [ebp-0C]
 005AB893    mov         eax,dword ptr [eax]
 005AB895    mov         edx,dword ptr [ebp-10]
 005AB898    mov         al,byte ptr [eax+edx-1]
 005AB89C    mov         edx,dword ptr [ebp-4]
 005AB89F    cmp         al,byte ptr [edx+224];TMaskEdit.FMaskBlank:Char
>005AB8A5    jne         005AB8B7
 005AB8A7    mov         eax,dword ptr [ebp-0C]
 005AB8AA    call        @UniqueStringA
 005AB8AF    mov         edx,dword ptr [ebp-10]
 005AB8B2    mov         byte ptr [eax+edx-1],20
 005AB8B7    mov         eax,dword ptr [ebp-10]
 005AB8BA    cmp         eax,dword ptr [ebp-14]
>005AB8BD    jg          005AB8C7
 005AB8BF    inc         dword ptr [ebp-10]
 005AB8C2    dec         dword ptr [ebp-24]
>005AB8C5    jne         005AB890
 005AB8C7    xor         eax,eax
 005AB8C9    pop         edx
 005AB8CA    pop         ecx
 005AB8CB    pop         ecx
 005AB8CC    mov         dword ptr fs:[eax],edx
 005AB8CF    push        5AB8E9
 005AB8D4    lea         eax,[ebp-2C]
 005AB8D7    mov         edx,2
 005AB8DC    call        @LStrArrayClr
 005AB8E1    ret
>005AB8E2    jmp         @HandleFinally
>005AB8E7    jmp         005AB8D4
 005AB8E9    pop         ebx
 005AB8EA    mov         esp,ebp
 005AB8EC    pop         ebp
 005AB8ED    ret
end;*}

//005AB8F0
{*function sub_005AB8F0(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 005AB8F0    push        ebp
 005AB8F1    mov         ebp,esp
 005AB8F3    add         esp,0FFFFFFE8
 005AB8F6    mov         dword ptr [ebp-0C],ecx
 005AB8F9    mov         dword ptr [ebp-8],edx
 005AB8FC    mov         dword ptr [ebp-4],eax
 005AB8FF    mov         byte ptr [ebp-0D],1
 005AB903    mov         eax,dword ptr [ebp-4]
 005AB906    cmp         dword ptr [eax+220],0;TCustomMaskEdit.FEditMask:TEditMask
>005AB90D    je          005AB9A5
 005AB913    mov         byte ptr [ebp-0D],0
 005AB917    mov         edx,dword ptr [ebp-0C]
 005AB91A    mov         eax,dword ptr [ebp-4]
 005AB91D    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB923    call        006415EC
 005AB928    mov         dword ptr [ebp-14],eax
 005AB92B    cmp         dword ptr [ebp-14],0
>005AB92F    jl          005AB9A5
 005AB931    mov         edx,dword ptr [ebp-14]
 005AB934    mov         eax,dword ptr [ebp-4]
 005AB937    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB93D    call        00640ED0
 005AB942    mov         byte ptr [ebp-15],al
 005AB945    mov         eax,dword ptr [ebp-8]
 005AB948    mov         al,byte ptr [eax]
 005AB94A    mov         byte ptr [ebp-16],al
 005AB94D    mov         edx,dword ptr [ebp-8]
 005AB950    mov         ecx,dword ptr [ebp-14]
 005AB953    mov         eax,dword ptr [ebp-4]
 005AB956    call        005ABAE4
 005AB95B    mov         byte ptr [ebp-0D],al
 005AB95E    cmp         byte ptr [ebp-0D],0
>005AB962    jne         005AB9A5
 005AB964    mov         al,byte ptr [ebp-15]
 005AB967    add         al,0FC
 005AB969    sub         al,2
>005AB96B    jae         005AB9A5
 005AB96D    mov         cl,byte ptr [ebp-16]
 005AB970    mov         edx,dword ptr [ebp-14]
 005AB973    mov         eax,dword ptr [ebp-4]
 005AB976    call        005AC2B8
 005AB97B    mov         dword ptr [ebp-14],eax
 005AB97E    cmp         dword ptr [ebp-14],0
>005AB982    jle         005AB9A5
 005AB984    mov         edx,dword ptr [ebp-14]
 005AB987    mov         eax,dword ptr [ebp-4]
 005AB98A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AB990    call        00641590
 005AB995    mov         dword ptr [ebp-14],eax
 005AB998    mov         edx,dword ptr [ebp-14]
 005AB99B    mov         eax,dword ptr [ebp-4]
 005AB99E    call        005AA908
>005AB9A3    jmp         005AB9B2
 005AB9A5    cmp         byte ptr [ebp-0D],0
>005AB9A9    jne         005AB9B2
 005AB9AB    push        0
 005AB9AD    call        USER32.MessageBeep
 005AB9B2    mov         al,byte ptr [ebp-0D]
 005AB9B5    mov         esp,ebp
 005AB9B7    pop         ebp
 005AB9B8    ret
end;*}

//005AB9BC
{*function sub_005AB9BC(?:?):?;
begin
 005AB9BC    push        ebp
 005AB9BD    mov         ebp,esp
 005AB9BF    push        ecx
 005AB9C0    mov         byte ptr [ebp-1],al
 005AB9C3    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 005AB9C8    cmp         dword ptr [eax+4],11;TSysLocale.PriLangID:Integer
>005AB9CC    jne         005AB9D7
 005AB9CE    mov         al,byte ptr [ebp-1]
 005AB9D1    add         al,5F
 005AB9D3    sub         al,3F
>005AB9D5    jb          005AB9DB
 005AB9D7    xor         eax,eax
>005AB9D9    jmp         005AB9DD
 005AB9DB    mov         al,1
 005AB9DD    mov         byte ptr [ebp-2],al
 005AB9E0    mov         al,byte ptr [ebp-2]
 005AB9E3    pop         ecx
 005AB9E4    pop         ebp
 005AB9E5    ret
end;*}

//005AB9E8
{*function sub_005AB9E8(?:?; ?:?):?;
begin
 005AB9E8    push        ebp
 005AB9E9    mov         ebp,esp
 005AB9EB    add         esp,0FFFFFFEC
 005AB9EE    push        ebx
 005AB9EF    xor         edx,edx
 005AB9F1    mov         dword ptr [ebp-14],edx
 005AB9F4    mov         dword ptr [ebp-10],edx
 005AB9F7    mov         byte ptr [ebp-9],al
 005AB9FA    xor         eax,eax
 005AB9FC    push        ebp
 005AB9FD    push        5ABAD5
 005ABA02    push        dword ptr fs:[eax]
 005ABA05    mov         dword ptr fs:[eax],esp
 005ABA08    mov         eax,dword ptr [ebp+8]
 005ABA0B    mov         edx,dword ptr [eax-8]
 005ABA0E    mov         eax,dword ptr [ebp+8]
 005ABA11    mov         eax,dword ptr [eax-4]
 005ABA14    mov         eax,dword ptr [eax+220]
 005ABA1A    call        00641590
 005ABA1F    mov         dword ptr [ebp-8],eax
 005ABA22    mov         eax,dword ptr [ebp+8]
 005ABA25    mov         eax,dword ptr [eax-4]
 005ABA28    mov         eax,dword ptr [eax+220]
 005ABA2E    call        @LStrLen
 005ABA33    mov         edx,dword ptr [ebp+8]
 005ABA36    cmp         eax,dword ptr [edx-8]
>005ABA39    jle         005ABAB5
 005ABA3B    mov         eax,dword ptr [ebp+8]
 005ABA3E    mov         eax,dword ptr [eax-8]
 005ABA41    mov         edx,dword ptr [ebp+8]
 005ABA44    mov         edx,dword ptr [edx-4]
 005ABA47    mov         edx,dword ptr [edx+220]
 005ABA4D    mov         al,byte ptr [edx+eax-1]
 005ABA51    call        UpCase
 005ABA56    mov         ebx,eax
 005ABA58    mov         eax,dword ptr [ebp+8]
 005ABA5B    mov         eax,dword ptr [eax-8]
 005ABA5E    mov         edx,dword ptr [ebp+8]
 005ABA61    mov         edx,dword ptr [edx-4]
 005ABA64    mov         edx,dword ptr [edx+220]
 005ABA6A    mov         al,byte ptr [edx+eax]
 005ABA6D    call        UpCase
 005ABA72    cmp         bl,al
>005ABA74    jne         005ABAB5
 005ABA76    lea         edx,[ebp-10]
 005ABA79    mov         eax,dword ptr [ebp+8]
 005ABA7C    mov         eax,dword ptr [eax-4]
 005ABA7F    call        005AA2EC
 005ABA84    mov         eax,dword ptr [ebp-10]
 005ABA87    mov         edx,dword ptr [ebp-8]
 005ABA8A    call        0065CF98
 005ABA8F    cmp         al,2
>005ABA91    je          005ABAB5
 005ABA93    lea         edx,[ebp-14]
 005ABA96    mov         eax,dword ptr [ebp+8]
 005ABA99    mov         eax,dword ptr [eax-4]
 005ABA9C    call        005AA2EC
 005ABAA1    mov         eax,dword ptr [ebp-14]
 005ABAA4    mov         edx,dword ptr [ebp-8]
 005ABAA7    inc         edx
 005ABAA8    call        0065CF98
 005ABAAD    cmp         al,1
>005ABAAF    je          005ABAB5
 005ABAB1    xor         eax,eax
>005ABAB3    jmp         005ABAB7
 005ABAB5    mov         al,1
 005ABAB7    mov         byte ptr [ebp-1],al
 005ABABA    xor         eax,eax
 005ABABC    pop         edx
 005ABABD    pop         ecx
 005ABABE    pop         ecx
 005ABABF    mov         dword ptr fs:[eax],edx
 005ABAC2    push        5ABADC
 005ABAC7    lea         eax,[ebp-14]
 005ABACA    mov         edx,2
 005ABACF    call        @LStrArrayClr
 005ABAD4    ret
>005ABAD5    jmp         @HandleFinally
>005ABADA    jmp         005ABAC7
 005ABADC    mov         al,byte ptr [ebp-1]
 005ABADF    pop         ebx
 005ABAE0    mov         esp,ebp
 005ABAE2    pop         ebp
 005ABAE3    ret
end;*}

//005ABAE4
{*function sub_005ABAE4(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 005ABAE4    push        ebp
 005ABAE5    mov         ebp,esp
 005ABAE7    add         esp,0FFFFFFD8
 005ABAEA    push        ebx
 005ABAEB    xor         ebx,ebx
 005ABAED    mov         dword ptr [ebp-28],ebx
 005ABAF0    mov         dword ptr [ebp-24],ebx
 005ABAF3    mov         dword ptr [ebp-20],ebx
 005ABAF6    mov         dword ptr [ebp-1C],ebx
 005ABAF9    mov         dword ptr [ebp-14],ebx
 005ABAFC    mov         dword ptr [ebp-8],ecx
 005ABAFF    mov         dword ptr [ebp-0C],edx
 005ABB02    mov         dword ptr [ebp-4],eax
 005ABB05    xor         eax,eax
 005ABB07    push        ebp
 005ABB08    push        5ABDEA
 005ABB0D    push        dword ptr fs:[eax]
 005ABB10    mov         dword ptr fs:[eax],esp
 005ABB13    mov         byte ptr [ebp-0D],1
 005ABB17    mov         eax,dword ptr [ebp-4]
 005ABB1A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABB20    mov         edx,dword ptr [ebp-8]
 005ABB23    call        00640ED0
 005ABB28    mov         byte ptr [ebp-15],al
 005ABB2B    mov         al,byte ptr [ebp-15]
 005ABB2E    dec         eax
 005ABB2F    sub         al,2
>005ABB31    jae         005ABB52
 005ABB33    mov         eax,dword ptr [ebp-4]
 005ABB36    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABB3C    mov         edx,dword ptr [ebp-8]
 005ABB3F    mov         al,byte ptr [eax+edx-1]
 005ABB43    call        0064111C
 005ABB48    mov         edx,dword ptr [ebp-0C]
 005ABB4B    mov         byte ptr [edx],al
>005ABB4D    jmp         005ABDC7
 005ABB52    mov         eax,dword ptr [ebp-4]
 005ABB55    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABB5B    mov         edx,dword ptr [ebp-8]
 005ABB5E    call        00641070
 005ABB63    mov         byte ptr [ebp-0E],al
 005ABB66    mov         eax,dword ptr [ebp-4]
 005ABB69    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABB6F    mov         edx,dword ptr [ebp-8]
 005ABB72    movzx       eax,byte ptr [eax+edx-1]
 005ABB77    cmp         eax,43
>005ABB7A    jg          005ABB9F
>005ABB7C    je          005ABC22
 005ABB82    sub         eax,23
>005ABB85    je          005ABBE1
 005ABB87    sub         eax,0D
>005ABB8A    je          005ABBC4
 005ABB8C    sub         eax,9
>005ABB8F    je          005ABBC4
 005ABB91    sub         eax,8
>005ABB94    je          005ABCC8
>005ABB9A    jmp         005ABDC7
 005ABB9F    sub         eax,4C
>005ABBA2    je          005ABCC8
 005ABBA8    sub         eax,15
>005ABBAB    je          005ABCC8
 005ABBB1    sub         eax,2
>005ABBB4    je          005ABC22
 005ABBB6    sub         eax,9
>005ABBB9    je          005ABCC8
>005ABBBF    jmp         005ABDC7
 005ABBC4    mov         eax,dword ptr [ebp-0C]
 005ABBC7    cmp         byte ptr [eax],30
>005ABBCA    jb          005ABBD8
 005ABBCC    mov         eax,dword ptr [ebp-0C]
 005ABBCF    cmp         byte ptr [eax],39
>005ABBD2    jbe         005ABDC7
 005ABBD8    mov         byte ptr [ebp-0D],0
>005ABBDC    jmp         005ABDC7
 005ABBE1    mov         eax,dword ptr [ebp-0C]
 005ABBE4    cmp         byte ptr [eax],30
>005ABBE7    jb          005ABBF5
 005ABBE9    mov         eax,dword ptr [ebp-0C]
 005ABBEC    cmp         byte ptr [eax],39
>005ABBEF    jbe         005ABDC7
 005ABBF5    mov         eax,dword ptr [ebp-0C]
 005ABBF8    cmp         byte ptr [eax],20
>005ABBFB    je          005ABDC7
 005ABC01    mov         eax,dword ptr [ebp-0C]
 005ABC04    cmp         byte ptr [eax],2B
>005ABC07    je          005ABDC7
 005ABC0D    mov         eax,dword ptr [ebp-0C]
 005ABC10    cmp         byte ptr [eax],2D
>005ABC13    je          005ABDC7
 005ABC19    mov         byte ptr [ebp-0D],0
>005ABC1D    jmp         005ABDC7
 005ABC22    mov         eax,dword ptr [ebp-0C]
 005ABC25    mov         al,byte ptr [eax]
 005ABC27    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005ABC2D    and         eax,0FF
 005ABC32    bt          dword ptr [edx],eax
>005ABC35    jae         005ABC50
 005ABC37    push        ebp
 005ABC38    mov         eax,dword ptr [ebp-0C]
 005ABC3B    mov         al,byte ptr [eax]
 005ABC3D    call        005AB9E8
 005ABC42    pop         ecx
 005ABC43    test        al,al
>005ABC45    je          005ABC50
 005ABC47    mov         byte ptr [ebp-0D],0
>005ABC4B    jmp         005ABDC7
 005ABC50    mov         eax,dword ptr [ebp-0C]
 005ABC53    mov         al,byte ptr [eax]
 005ABC55    push        eax
 005ABC56    call        USER32.IsCharAlphaA
 005ABC5B    test        eax,eax
>005ABC5D    je          005ABDC7
 005ABC63    lea         eax,[ebp-14]
 005ABC66    mov         edx,5ABE04;' '
 005ABC6B    call        @LStrLAsg
 005ABC70    lea         eax,[ebp-14]
 005ABC73    call        @UniqueStringA
 005ABC78    mov         edx,dword ptr [ebp-0C]
 005ABC7B    mov         dl,byte ptr [edx]
 005ABC7D    mov         byte ptr [eax],dl
 005ABC7F    test        byte ptr [ebp-0E],2
>005ABC83    je          005ABC9D
 005ABC85    lea         edx,[ebp-1C]
 005ABC88    mov         eax,dword ptr [ebp-14]
 005ABC8B    call        AnsiUpperCase
 005ABC90    mov         edx,dword ptr [ebp-1C]
 005ABC93    lea         eax,[ebp-14]
 005ABC96    call        @LStrLAsg
>005ABC9B    jmp         005ABCB9
 005ABC9D    test        byte ptr [ebp-0E],4
>005ABCA1    je          005ABCB9
 005ABCA3    lea         edx,[ebp-20]
 005ABCA6    mov         eax,dword ptr [ebp-14]
 005ABCA9    call        006576F0
 005ABCAE    mov         edx,dword ptr [ebp-20]
 005ABCB1    lea         eax,[ebp-14]
 005ABCB4    call        @LStrLAsg
 005ABCB9    mov         eax,dword ptr [ebp-14]
 005ABCBC    mov         al,byte ptr [eax]
 005ABCBE    mov         edx,dword ptr [ebp-0C]
 005ABCC1    mov         byte ptr [edx],al
>005ABCC3    jmp         005ABDC7
 005ABCC8    mov         eax,dword ptr [ebp-0C]
 005ABCCB    mov         al,byte ptr [eax]
 005ABCCD    mov         edx,dword ptr ds:[6EA0F8];^gvar_006E49F4
 005ABCD3    and         eax,0FF
 005ABCD8    bt          dword ptr [edx],eax
>005ABCDB    jae         005ABCFA
 005ABCDD    push        ebp
 005ABCDE    mov         eax,dword ptr [ebp-0C]
 005ABCE1    mov         al,byte ptr [eax]
 005ABCE3    call        005AB9E8
 005ABCE8    pop         ecx
 005ABCE9    test        al,al
>005ABCEB    je          005ABDC7
 005ABCF1    mov         byte ptr [ebp-0D],0
>005ABCF5    jmp         005ABDC7
 005ABCFA    lea         eax,[ebp-14]
 005ABCFD    mov         edx,5ABE04;' '
 005ABD02    call        @LStrLAsg
 005ABD07    lea         eax,[ebp-14]
 005ABD0A    call        @UniqueStringA
 005ABD0F    mov         edx,dword ptr [ebp-0C]
 005ABD12    mov         dl,byte ptr [edx]
 005ABD14    mov         byte ptr [eax],dl
 005ABD16    push        ebp
 005ABD17    mov         eax,dword ptr [ebp-0C]
 005ABD1A    mov         al,byte ptr [eax]
 005ABD1C    call        005AB9BC
 005ABD21    pop         ecx
 005ABD22    test        al,al
>005ABD24    je          005ABD35
 005ABD26    mov         eax,dword ptr [ebp-14]
 005ABD29    mov         al,byte ptr [eax]
 005ABD2B    mov         edx,dword ptr [ebp-0C]
 005ABD2E    mov         byte ptr [edx],al
>005ABD30    jmp         005ABDC7
 005ABD35    mov         eax,dword ptr [ebp-0C]
 005ABD38    mov         al,byte ptr [eax]
 005ABD3A    push        eax
 005ABD3B    call        USER32.IsCharAlphaA
 005ABD40    test        eax,eax
>005ABD42    jne         005ABD83
 005ABD44    mov         byte ptr [ebp-0D],0
 005ABD48    mov         eax,dword ptr [ebp-4]
 005ABD4B    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABD51    mov         edx,dword ptr [ebp-8]
 005ABD54    cmp         byte ptr [eax+edx-1],41
>005ABD59    je          005ABD6E
 005ABD5B    mov         eax,dword ptr [ebp-4]
 005ABD5E    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABD64    mov         edx,dword ptr [ebp-8]
 005ABD67    cmp         byte ptr [eax+edx-1],61
>005ABD6C    jne         005ABDBD
 005ABD6E    mov         eax,dword ptr [ebp-0C]
 005ABD71    mov         al,byte ptr [eax]
 005ABD73    push        eax
 005ABD74    call        USER32.IsCharAlphaNumericA
 005ABD79    test        eax,eax
>005ABD7B    je          005ABDBD
 005ABD7D    mov         byte ptr [ebp-0D],1
>005ABD81    jmp         005ABDBD
 005ABD83    test        byte ptr [ebp-0E],2
>005ABD87    je          005ABDA1
 005ABD89    lea         edx,[ebp-24]
 005ABD8C    mov         eax,dword ptr [ebp-14]
 005ABD8F    call        AnsiUpperCase
 005ABD94    mov         edx,dword ptr [ebp-24]
 005ABD97    lea         eax,[ebp-14]
 005ABD9A    call        @LStrLAsg
>005ABD9F    jmp         005ABDBD
 005ABDA1    test        byte ptr [ebp-0E],4
>005ABDA5    je          005ABDBD
 005ABDA7    lea         edx,[ebp-28]
 005ABDAA    mov         eax,dword ptr [ebp-14]
 005ABDAD    call        006576F0
 005ABDB2    mov         edx,dword ptr [ebp-28]
 005ABDB5    lea         eax,[ebp-14]
 005ABDB8    call        @LStrLAsg
 005ABDBD    mov         eax,dword ptr [ebp-14]
 005ABDC0    mov         al,byte ptr [eax]
 005ABDC2    mov         edx,dword ptr [ebp-0C]
 005ABDC5    mov         byte ptr [edx],al
 005ABDC7    xor         eax,eax
 005ABDC9    pop         edx
 005ABDCA    pop         ecx
 005ABDCB    pop         ecx
 005ABDCC    mov         dword ptr fs:[eax],edx
 005ABDCF    push        5ABDF1
 005ABDD4    lea         eax,[ebp-28]
 005ABDD7    mov         edx,4
 005ABDDC    call        @LStrArrayClr
 005ABDE1    lea         eax,[ebp-14]
 005ABDE4    call        @LStrClr
 005ABDE9    ret
>005ABDEA    jmp         @HandleFinally
>005ABDEF    jmp         005ABDD4
 005ABDF1    mov         al,byte ptr [ebp-0D]
 005ABDF4    pop         ebx
 005ABDF5    mov         esp,ebp
 005ABDF7    pop         ebp
 005ABDF8    ret
end;*}

//005ABE08
{*function sub_005ABE08(?:?; ?:?):?;
begin
 005ABE08    push        ebp
 005ABE09    mov         ebp,esp
 005ABE0B    add         esp,0FFFFFFE0
 005ABE0E    mov         dword ptr [ebp-0C],ecx
 005ABE11    mov         dword ptr [ebp-8],edx
 005ABE14    mov         dword ptr [ebp-4],eax
 005ABE17    mov         byte ptr [ebp-0D],1
 005ABE1B    mov         dword ptr [ebp-14],1
 005ABE22    mov         eax,dword ptr [ebp-4]
 005ABE25    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABE2B    call        @LStrLen
 005ABE30    test        eax,eax
>005ABE32    jle         005ABEC2
 005ABE38    mov         dword ptr [ebp-20],eax
 005ABE3B    mov         dword ptr [ebp-18],1
 005ABE42    mov         eax,dword ptr [ebp-4]
 005ABE45    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABE4B    mov         edx,dword ptr [ebp-18]
 005ABE4E    call        00640ED0
 005ABE53    mov         byte ptr [ebp-19],al
 005ABE56    mov         al,byte ptr [ebp-19]
 005ABE59    dec         eax
 005ABE5A    sub         al,2
>005ABE5C    jb          005ABE62
 005ABE5E    sub         al,2
>005ABE60    jne         005ABE67
 005ABE62    inc         dword ptr [ebp-14]
>005ABE65    jmp         005ABEBA
 005ABE67    cmp         byte ptr [ebp-19],4
>005ABE6B    jne         005ABEBA
 005ABE6D    cmp         dword ptr [ebp-8],0
>005ABE71    je          005ABEBA
 005ABE73    mov         eax,dword ptr [ebp-8]
 005ABE76    mov         edx,dword ptr [ebp-14]
 005ABE79    mov         al,byte ptr [eax+edx-1]
 005ABE7D    mov         edx,dword ptr [ebp-4]
 005ABE80    cmp         al,byte ptr [edx+224];TCustomMaskEdit.FMaskBlank:Char
>005ABE86    je          005ABEA8
 005ABE88    mov         eax,dword ptr [ebp-8]
 005ABE8B    mov         edx,dword ptr [ebp-14]
 005ABE8E    cmp         byte ptr [eax+edx-1],20
>005ABE93    jne         005ABEB7
 005ABE95    mov         eax,dword ptr [ebp-4]
 005ABE98    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABE9E    mov         edx,dword ptr [ebp-18]
 005ABEA1    cmp         byte ptr [eax+edx-1],43
>005ABEA6    je          005ABEB7
 005ABEA8    mov         byte ptr [ebp-0D],0
 005ABEAC    mov         eax,dword ptr [ebp-14]
 005ABEAF    dec         eax
 005ABEB0    mov         edx,dword ptr [ebp-0C]
 005ABEB3    mov         dword ptr [edx],eax
>005ABEB5    jmp         005ABEC2
 005ABEB7    inc         dword ptr [ebp-14]
 005ABEBA    inc         dword ptr [ebp-18]
 005ABEBD    dec         dword ptr [ebp-20]
>005ABEC0    jne         005ABE42
 005ABEC2    mov         al,byte ptr [ebp-0D]
 005ABEC5    mov         esp,ebp
 005ABEC7    pop         ebp
 005ABEC8    ret
end;*}

//005ABECC
{*function sub_005ABECC(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;
begin
 005ABECC    push        ebp
 005ABECD    mov         ebp,esp
 005ABECF    add         esp,0FFFFFFD8
 005ABED2    mov         dword ptr [ebp-0C],ecx
 005ABED5    mov         dword ptr [ebp-8],edx
 005ABED8    mov         dword ptr [ebp-4],eax
 005ABEDB    mov         byte ptr [ebp-0D],1
 005ABEDF    cmp         dword ptr [ebp+8],0
>005ABEE3    je          005ABF86
 005ABEE9    mov         eax,dword ptr [ebp-0C]
 005ABEEC    inc         eax
 005ABEED    mov         dword ptr [ebp-18],eax
 005ABEF0    mov         eax,dword ptr [ebp-18]
 005ABEF3    add         eax,dword ptr [ebp+8]
 005ABEF6    mov         dword ptr [ebp-14],eax
 005ABEF9    mov         eax,dword ptr [ebp-4]
 005ABEFC    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABF02    mov         edx,dword ptr [ebp-0C]
 005ABF05    call        006415EC
 005ABF0A    mov         dword ptr [ebp-20],eax
 005ABF0D    cmp         dword ptr [ebp-20],0
>005ABF11    jl          005ABF86
 005ABF13    mov         eax,dword ptr [ebp-20]
 005ABF16    push        eax
 005ABF17    mov         eax,dword ptr [ebp-4]
 005ABF1A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABF20    call        @LStrLen
 005ABF25    pop         edx
 005ABF26    sub         eax,edx
>005ABF28    jl          005ABF86
 005ABF2A    inc         eax
 005ABF2B    mov         dword ptr [ebp-28],eax
 005ABF2E    mov         dword ptr [ebp-1C],edx
 005ABF31    mov         eax,dword ptr [ebp-4]
 005ABF34    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABF3A    mov         edx,dword ptr [ebp-1C]
 005ABF3D    call        00640ED0
 005ABF42    mov         byte ptr [ebp-21],al
 005ABF45    mov         al,byte ptr [ebp-21]
 005ABF48    dec         eax
 005ABF49    sub         al,2
>005ABF4B    jae         005ABF52
 005ABF4D    inc         dword ptr [ebp-18]
>005ABF50    jmp         005ABF76
 005ABF52    mov         al,byte ptr [ebp-21]
 005ABF55    add         al,0FC
 005ABF57    sub         al,2
>005ABF59    jae         005ABF76
 005ABF5B    mov         eax,dword ptr [ebp-8]
 005ABF5E    call        @UniqueStringA
 005ABF63    mov         edx,dword ptr [ebp-18]
 005ABF66    mov         ecx,dword ptr [ebp-4]
 005ABF69    mov         cl,byte ptr [ecx+224]
 005ABF6F    mov         byte ptr [eax+edx-1],cl
 005ABF73    inc         dword ptr [ebp-18]
 005ABF76    mov         eax,dword ptr [ebp-18]
 005ABF79    cmp         eax,dword ptr [ebp-14]
>005ABF7C    jge         005ABF86
 005ABF7E    inc         dword ptr [ebp-1C]
 005ABF81    dec         dword ptr [ebp-28]
>005ABF84    jne         005ABF31
 005ABF86    mov         al,byte ptr [ebp-0D]
 005ABF89    mov         esp,ebp
 005ABF8B    pop         ebp
 005ABF8C    ret         4
end;*}

//005ABF90
{*function sub_005ABF90(?:TCustomMaskEdit; ?:?; ?:?; ?:?):?;
begin
 005ABF90    push        ebp
 005ABF91    mov         ebp,esp
 005ABF93    add         esp,0FFFFFFB8
 005ABF96    push        ebx
 005ABF97    xor         ebx,ebx
 005ABF99    mov         dword ptr [ebp-44],ebx
 005ABF9C    mov         dword ptr [ebp-48],ebx
 005ABF9F    mov         dword ptr [ebp-3C],ebx
 005ABFA2    mov         dword ptr [ebp-40],ebx
 005ABFA5    mov         dword ptr [ebp-38],ebx
 005ABFA8    mov         dword ptr [ebp-2C],ebx
 005ABFAB    mov         dword ptr [ebp-30],ebx
 005ABFAE    mov         dword ptr [ebp-34],ebx
 005ABFB1    mov         dword ptr [ebp-24],ebx
 005ABFB4    mov         dword ptr [ebp-0C],ecx
 005ABFB7    mov         dword ptr [ebp-8],edx
 005ABFBA    mov         dword ptr [ebp-4],eax
 005ABFBD    xor         eax,eax
 005ABFBF    push        ebp
 005ABFC0    push        5AC2A6
 005ABFC5    push        dword ptr fs:[eax]
 005ABFC8    mov         dword ptr fs:[eax],esp
 005ABFCB    mov         eax,dword ptr [ebp+8]
 005ABFCE    mov         dword ptr [ebp-10],eax
 005ABFD1    cmp         dword ptr [ebp-0C],0
>005ABFD5    je          005AC283
 005ABFDB    mov         dword ptr [ebp-14],1
 005ABFE2    lea         eax,[ebp-24]
 005ABFE5    mov         edx,dword ptr [ebp-0C]
 005ABFE8    call        @LStrLAsg
 005ABFED    mov         edx,dword ptr [ebp+8]
 005ABFF0    mov         eax,dword ptr [ebp-4]
 005ABFF3    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005ABFF9    call        006415EC
 005ABFFE    mov         dword ptr [ebp-1C],eax
 005AC001    cmp         dword ptr [ebp-1C],0
>005AC005    jl          005AC283
 005AC00B    mov         eax,dword ptr [ebp-1C]
 005AC00E    mov         dword ptr [ebp-18],eax
>005AC011    jmp         005AC147
 005AC016    mov         edx,dword ptr [ebp-18]
 005AC019    mov         eax,dword ptr [ebp-4]
 005AC01C    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AC022    call        00640ED0
 005AC027    mov         byte ptr [ebp-1D],al
 005AC02A    mov         al,byte ptr [ebp-1D]
 005AC02D    dec         eax
 005AC02E    sub         al,2
>005AC030    jb          005AC03B
 005AC032    dec         eax
 005AC033    sub         al,2
>005AC035    jae         005AC126
 005AC03B    mov         eax,dword ptr [ebp-24]
 005AC03E    mov         edx,dword ptr [ebp-14]
 005AC041    mov         al,byte ptr [eax+edx-1]
 005AC045    mov         byte ptr [ebp-25],al
 005AC048    lea         edx,[ebp-25]
 005AC04B    mov         ecx,dword ptr [ebp-18]
 005AC04E    mov         eax,dword ptr [ebp-4]
 005AC051    call        005ABAE4
 005AC056    test        al,al
>005AC058    jne         005AC090
 005AC05A    mov         eax,[006EA0F8];^gvar_006E49F4
 005AC05F    mov         dl,byte ptr [ebp-25]
 005AC062    and         edx,0FF
 005AC068    bt          dword ptr [eax],edx
>005AC06B    jae         005AC084
 005AC06D    lea         eax,[ebp-24]
 005AC070    call        @UniqueStringA
 005AC075    mov         edx,dword ptr [ebp-14]
 005AC078    mov         ecx,dword ptr [ebp-4]
 005AC07B    mov         cl,byte ptr [ecx+224]
 005AC081    mov         byte ptr [eax+edx],cl
 005AC084    mov         eax,dword ptr [ebp-4]
 005AC087    mov         al,byte ptr [eax+224];TCustomMaskEdit.FMaskBlank:Char
 005AC08D    mov         byte ptr [ebp-25],al
 005AC090    mov         al,byte ptr [ebp-1D]
 005AC093    dec         eax
 005AC094    sub         al,2
>005AC096    jae         005AC0A7
 005AC098    mov         eax,dword ptr [ebp-24]
 005AC09B    mov         edx,dword ptr [ebp-14]
 005AC09E    mov         al,byte ptr [eax+edx-1]
 005AC0A2    cmp         al,byte ptr [ebp-25]
>005AC0A5    jne         005AC0D4
 005AC0A7    lea         eax,[ebp-24]
 005AC0AA    call        @UniqueStringA
 005AC0AF    mov         edx,dword ptr [ebp-14]
 005AC0B2    mov         cl,byte ptr [ebp-25]
 005AC0B5    mov         byte ptr [eax+edx-1],cl
 005AC0B9    mov         eax,[006EA0F8];^gvar_006E49F4
 005AC0BE    mov         dl,byte ptr [ebp-25]
 005AC0C1    and         edx,0FF
 005AC0C7    bt          dword ptr [eax],edx
>005AC0CA    jae         005AC123
 005AC0CC    inc         dword ptr [ebp-14]
 005AC0CF    inc         dword ptr [ebp-18]
>005AC0D2    jmp         005AC123
 005AC0D4    lea         eax,[ebp-2C]
 005AC0D7    push        eax
 005AC0D8    mov         ecx,dword ptr [ebp-14]
 005AC0DB    dec         ecx
 005AC0DC    mov         edx,1
 005AC0E1    mov         eax,dword ptr [ebp-24]
 005AC0E4    call        @LStrCopy
 005AC0E9    push        dword ptr [ebp-2C]
 005AC0EC    lea         eax,[ebp-30]
 005AC0EF    mov         dl,byte ptr [ebp-25]
 005AC0F2    call        @LStrFromChar
 005AC0F7    push        dword ptr [ebp-30]
 005AC0FA    lea         eax,[ebp-34]
 005AC0FD    push        eax
 005AC0FE    mov         eax,dword ptr [ebp-24]
 005AC101    call        @LStrLen
 005AC106    mov         ecx,eax
 005AC108    mov         edx,dword ptr [ebp-14]
 005AC10B    mov         eax,dword ptr [ebp-24]
 005AC10E    call        @LStrCopy
 005AC113    push        dword ptr [ebp-34]
 005AC116    lea         eax,[ebp-24]
 005AC119    mov         edx,3
 005AC11E    call        @LStrCatN
 005AC123    inc         dword ptr [ebp-14]
 005AC126    mov         eax,dword ptr [ebp-14]
 005AC129    add         eax,dword ptr [ebp+8]
 005AC12C    mov         edx,dword ptr [ebp-4]
 005AC12F    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>005AC135    jg          005AC15E
 005AC137    mov         eax,dword ptr [ebp-24]
 005AC13A    call        @LStrLen
 005AC13F    cmp         eax,dword ptr [ebp-14]
>005AC142    jl          005AC15E
 005AC144    inc         dword ptr [ebp-18]
 005AC147    mov         eax,dword ptr [ebp-4]
 005AC14A    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AC150    call        @LStrLen
 005AC155    cmp         eax,dword ptr [ebp-18]
>005AC158    jge         005AC016
 005AC15E    mov         eax,dword ptr [ebp-24]
 005AC161    call        @LStrLen
 005AC166    add         eax,dword ptr [ebp+8]
 005AC169    mov         edx,dword ptr [ebp-4]
 005AC16C    cmp         eax,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
>005AC172    jge         005AC215
 005AC178    mov         eax,dword ptr [ebp-24]
 005AC17B    call        @LStrLen
 005AC180    mov         edx,eax
 005AC182    add         edx,dword ptr [ebp+8]
 005AC185    inc         edx
 005AC186    mov         eax,dword ptr [ebp-8]
 005AC189    mov         eax,dword ptr [eax]
 005AC18B    call        0065CF98
 005AC190    cmp         al,2
>005AC192    jne         005AC1B3
 005AC194    lea         eax,[ebp-38]
 005AC197    mov         edx,dword ptr [ebp-4]
 005AC19A    mov         dl,byte ptr [edx+224];TCustomMaskEdit.FMaskBlank:Char
 005AC1A0    call        @LStrFromChar
 005AC1A5    mov         edx,dword ptr [ebp-38]
 005AC1A8    lea         eax,[ebp-24]
 005AC1AB    call        @LStrCat
 005AC1B0    inc         dword ptr [ebp-14]
 005AC1B3    lea         eax,[ebp-3C]
 005AC1B6    push        eax
 005AC1B7    mov         eax,dword ptr [ebp-8]
 005AC1BA    mov         eax,dword ptr [eax]
 005AC1BC    mov         ecx,dword ptr [ebp+8]
 005AC1BF    mov         edx,1
 005AC1C4    call        @LStrCopy
 005AC1C9    push        dword ptr [ebp-3C]
 005AC1CC    push        dword ptr [ebp-24]
 005AC1CF    lea         eax,[ebp-40]
 005AC1D2    push        eax
 005AC1D3    mov         eax,dword ptr [ebp-24]
 005AC1D6    call        @LStrLen
 005AC1DB    add         eax,dword ptr [ebp+8]
 005AC1DE    mov         edx,dword ptr [ebp-4]
 005AC1E1    mov         edx,dword ptr [edx+228];TCustomMaskEdit.FMaxChars:Integer
 005AC1E7    sub         edx,eax
 005AC1E9    push        edx
 005AC1EA    mov         eax,dword ptr [ebp-24]
 005AC1ED    call        @LStrLen
 005AC1F2    mov         edx,eax
 005AC1F4    add         edx,dword ptr [ebp+8]
 005AC1F7    inc         edx
 005AC1F8    mov         eax,dword ptr [ebp-8]
 005AC1FB    mov         eax,dword ptr [eax]
 005AC1FD    pop         ecx
 005AC1FE    call        @LStrCopy
 005AC203    push        dword ptr [ebp-40]
 005AC206    mov         eax,dword ptr [ebp-8]
 005AC209    mov         edx,3
 005AC20E    call        @LStrCatN
>005AC213    jmp         005AC279
 005AC215    mov         eax,dword ptr [ebp+8]
 005AC218    mov         dword ptr [ebp-1C],eax
 005AC21B    mov         eax,dword ptr [ebp-4]
 005AC21E    mov         edx,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 005AC224    sub         edx,dword ptr [ebp+8]
 005AC227    mov         eax,dword ptr [ebp-24]
 005AC22A    call        0065CF98
 005AC22F    cmp         al,1
>005AC231    jne         005AC236
 005AC233    inc         dword ptr [ebp-1C]
 005AC236    lea         eax,[ebp-44]
 005AC239    push        eax
 005AC23A    mov         eax,dword ptr [ebp-4]
 005AC23D    mov         ecx,dword ptr [eax+228];TCustomMaskEdit.FMaxChars:Integer
 005AC243    sub         ecx,dword ptr [ebp-1C]
 005AC246    mov         edx,1
 005AC24B    mov         eax,dword ptr [ebp-24]
 005AC24E    call        @LStrCopy
 005AC253    mov         eax,dword ptr [ebp-44]
 005AC256    push        eax
 005AC257    lea         eax,[ebp-48]
 005AC25A    push        eax
 005AC25B    mov         eax,dword ptr [ebp-8]
 005AC25E    mov         eax,dword ptr [eax]
 005AC260    mov         ecx,dword ptr [ebp+8]
 005AC263    mov         edx,1
 005AC268    call        @LStrCopy
 005AC26D    mov         edx,dword ptr [ebp-48]
 005AC270    mov         eax,dword ptr [ebp-8]
 005AC273    pop         ecx
 005AC274    call        @LStrCat3
 005AC279    mov         eax,dword ptr [ebp-14]
 005AC27C    add         eax,dword ptr [ebp+8]
 005AC27F    dec         eax
 005AC280    mov         dword ptr [ebp-10],eax
 005AC283    xor         eax,eax
 005AC285    pop         edx
 005AC286    pop         ecx
 005AC287    pop         ecx
 005AC288    mov         dword ptr fs:[eax],edx
 005AC28B    push        5AC2AD
 005AC290    lea         eax,[ebp-48]
 005AC293    mov         edx,8
 005AC298    call        @LStrArrayClr
 005AC29D    lea         eax,[ebp-24]
 005AC2A0    call        @LStrClr
 005AC2A5    ret
>005AC2A6    jmp         @HandleFinally
>005AC2AB    jmp         005AC290
 005AC2AD    mov         eax,dword ptr [ebp-10]
 005AC2B0    pop         ebx
 005AC2B1    mov         esp,ebp
 005AC2B3    pop         ebp
 005AC2B4    ret         4
end;*}

//005AC2B8
{*function sub_005AC2B8(?:TCustomMaskEdit; ?:?; ?:?):?;
begin
 005AC2B8    push        ebp
 005AC2B9    mov         ebp,esp
 005AC2BB    add         esp,0FFFFFFEC
 005AC2BE    mov         byte ptr [ebp-9],cl
 005AC2C1    mov         dword ptr [ebp-8],edx
 005AC2C4    mov         dword ptr [ebp-4],eax
 005AC2C7    mov         dword ptr [ebp-10],0FFFFFFFF
>005AC2CE    jmp         005AC323
 005AC2D0    inc         dword ptr [ebp-8]
 005AC2D3    mov         edx,dword ptr [ebp-8]
 005AC2D6    mov         eax,dword ptr [ebp-4]
 005AC2D9    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AC2DF    call        00640ED0
 005AC2E4    mov         byte ptr [ebp-11],al
 005AC2E7    mov         al,byte ptr [ebp-11]
 005AC2EA    dec         eax
 005AC2EB    sub         al,2
>005AC2ED    jae         005AC323
 005AC2EF    mov         eax,dword ptr [ebp-4]
 005AC2F2    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AC2F8    mov         edx,dword ptr [ebp-8]
 005AC2FB    mov         al,byte ptr [eax+edx-1]
 005AC2FF    mov         byte ptr [ebp-12],al
 005AC302    cmp         byte ptr [ebp-11],2
>005AC306    jne         005AC313
 005AC308    mov         al,byte ptr [ebp-12]
 005AC30B    call        0064111C
 005AC310    mov         byte ptr [ebp-12],al
 005AC313    mov         al,byte ptr [ebp-12]
 005AC316    cmp         al,byte ptr [ebp-9]
>005AC319    jne         005AC336
 005AC31B    mov         eax,dword ptr [ebp-8]
 005AC31E    mov         dword ptr [ebp-10],eax
>005AC321    jmp         005AC336
 005AC323    mov         eax,dword ptr [ebp-4]
 005AC326    mov         eax,dword ptr [eax+220];TCustomMaskEdit.FEditMask:TEditMask
 005AC32C    call        @LStrLen
 005AC331    cmp         eax,dword ptr [ebp-8]
>005AC334    jg          005AC2D0
 005AC336    mov         eax,dword ptr [ebp-10]
 005AC339    mov         esp,ebp
 005AC33B    pop         ebp
 005AC33C    ret
end;*}

//005AC340
procedure Finalization;
begin
{*
 005AC340    push        ebp
 005AC341    mov         ebp,esp
 005AC343    xor         eax,eax
 005AC345    push        ebp
 005AC346    push        5AC365
 005AC34B    push        dword ptr fs:[eax]
 005AC34E    mov         dword ptr fs:[eax],esp
 005AC351    inc         dword ptr ds:[6ECD0C]
 005AC357    xor         eax,eax
 005AC359    pop         edx
 005AC35A    pop         ecx
 005AC35B    pop         ecx
 005AC35C    mov         dword ptr fs:[eax],edx
 005AC35F    push        5AC36C
 005AC364    ret
>005AC365    jmp         @HandleFinally
>005AC36A    jmp         005AC364
 005AC36C    pop         ebp
 005AC36D    ret
*}
end;

end.