//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit5;

interface

uses
  SysUtils, Classes;

    @@Stringinfo@Initialize; stdcall;//0046C51C
    @@Stringinfo@Finalize; stdcall;//0046C52C
    constructor Create(AOwner:TComponent);//0046C53C
    //procedure sub_0046C610(?:?; ?:?; ?:?);//0046C610
    //procedure sub_0046C894(?:TFExplorer_11011981; ?:dword; ?:?);//0046C894
    @System@Comp@$bctr$qv; stdcall;//0046D4F0
    @System@Comp@$basg$qd; stdcall;//0046D514
    @System@Comp@$od$xqv; stdcall;//0046D530
    //procedure sub_0046D558(?:TFExplorer_11011981; ?:?; ?:?);//0046D558
    //function sub_0046D9EC(?:?):?;//0046D9EC
    procedure btnDefCodeClick(Sender:TObject);//0046DA1C
    procedure btnUndefCodeClick(Sender:TObject);//0046DA48
    procedure btnDefStringClick(Sender:TObject);//0046DA74
    procedure rgStringViewStyleClick(Sender:TObject);//0046DAA0
    procedure miCopy2ClipboardClick(Sender:TObject);//0046DAC8
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//0046DBA8
    procedure FormShow(Sender:TObject);//0046DBD4
    procedure rgDataViewStyleClick(Sender:TObject);//0046DBF0
    procedure FormCreate(Sender:TObject);//0046DC18
    destructor Destroy;//0046DCD8

implementation

//0046C53C
constructor TFExplorer_11011981.Create(AOwner:TComponent);
begin
{*
 0046C53C    push        ebp
 0046C53D    mov         ebp,esp
 0046C53F    add         esp,0FFFFFFD0
 0046C542    mov         byte ptr [ebp-8],dl
 0046C545    test        dl,dl
>0046C547    jle         0046C54E
 0046C549    call        0067EF6C
 0046C54E    mov         dword ptr [ebp-30],ecx
 0046C551    mov         byte ptr [ebp-29],dl
 0046C554    mov         dword ptr [ebp-4],eax
 0046C557    mov         eax,6B0D00
 0046C55C    call        0066FECC
 0046C561    mov         word ptr [ebp-18],8
 0046C567    mov         ecx,dword ptr [ebp-30]
 0046C56A    xor         edx,edx
 0046C56C    mov         eax,dword ptr [ebp-4]
 0046C56F    call        0040207C
 0046C574    add         dword ptr [ebp-0C],10
 0046C578    mov         edx,dword ptr [ebp-4]
 0046C57B    xor         ecx,ecx
 0046C57D    mov         dword ptr [edx+348],ecx;TFExplorer_11011981.?f348:dword
 0046C583    mov         eax,dword ptr [ebp-4]
 0046C586    xor         edx,edx
 0046C588    mov         dword ptr [eax+344],edx;TFExplorer_11011981.?f344:dword
 0046C58E    mov         ecx,dword ptr [ebp-4]
 0046C591    xor         eax,eax
 0046C593    mov         dword ptr [ecx+340],eax
 0046C599    mov         edx,dword ptr [ebp-4]
 0046C59C    mov         eax,dword ptr [edx+2FC];TFExplorer_11011981.lbCode:TListBox
 0046C5A2    mov         edx,dword ptr [eax]
 0046C5A4    call        dword ptr [edx+0D4];TCustomListBox.Clear
 0046C5AA    mov         ecx,dword ptr [ebp-4]
 0046C5AD    mov         eax,dword ptr [ecx+300]
 0046C5B3    mov         edx,dword ptr [eax]
 0046C5B5    call        dword ptr [edx+0D4]
 0046C5BB    mov         ecx,dword ptr [ebp-4]
 0046C5BE    mov         eax,dword ptr [ecx+324]
 0046C5C4    mov         edx,dword ptr [eax]
 0046C5C6    call        dword ptr [edx+0DC]
 0046C5CC    mov         ecx,dword ptr [ebp-28]
 0046C5CF    mov         dword ptr fs:[0],ecx
 0046C5D6    mov         eax,dword ptr [ebp-4]
 0046C5D9    mov         dl,byte ptr [ebp-29]
 0046C5DC    test        dl,dl
>0046C5DE    je          0046C5E5
 0046C5E0    call        0067EF79
 0046C5E5    mov         esp,ebp
 0046C5E7    pop         ebp
 0046C5E8    ret
*}
end;

//0046C610
{*procedure sub_0046C610(?:?; ?:?; ?:?);
begin
 0046C610    push        ebp
 0046C611    mov         ebp,esp
 0046C613    add         esp,0FFFFFE80
 0046C619    mov         dword ptr [ebp-50],ecx
 0046C61C    mov         dword ptr [ebp-4C],edx
 0046C61F    mov         dword ptr [ebp-48],eax
 0046C622    mov         eax,6B0D7C
 0046C627    call        0066FECC
 0046C62C    mov         edx,dword ptr [ebp-48]
 0046C62F    mov         eax,dword ptr [edx+2FC]
 0046C635    mov         edx,dword ptr [eax]
 0046C637    call        dword ptr [edx+0D4]
 0046C63D    mov         eax,dword ptr [ebp-4C]
 0046C640    call        005312C8
 0046C645    mov         dword ptr [ebp-54],eax
 0046C648    mov         edx,dword ptr [ebp-54]
 0046C64B    inc         edx
>0046C64C    jne         0046C65F
 0046C64E    mov         ecx,dword ptr [ebp-44]
 0046C651    mov         dword ptr fs:[0],ecx
 0046C658    mov         eax,ecx
>0046C65A    jmp         0046C88D
 0046C65F    mov         edx,dword ptr [ebp-48]
 0046C662    mov         eax,dword ptr [ebp-4C]
 0046C665    mov         dword ptr [edx+340],eax
 0046C66B    mov         edx,dword ptr [ebp-48]
 0046C66E    mov         ecx,dword ptr [edx+340]
 0046C674    mov         dword ptr [ebp-58],ecx
 0046C677    xor         eax,eax
 0046C679    mov         dword ptr [ebp-5C],eax
 0046C67C    mov         edx,dword ptr [ebp-5C]
 0046C67F    mov         ecx,dword ptr [ebp-50]
 0046C682    cmp         edx,ecx
>0046C684    jge         0046C883
 0046C68A    mov         eax,dword ptr [ebp-58]
 0046C68D    xor         edx,edx
 0046C68F    push        edx
 0046C690    push        eax
 0046C691    lea         ecx,[ebp-180]
 0046C697    push        ecx
 0046C698    lea         ecx,[ebp-11C]
 0046C69E    mov         edx,dword ptr ds:[6941D4];0x0 gvar_006941D4
 0046C6A4    mov         eax,dword ptr [ebp-54]
 0046C6A7    add         edx,eax
 0046C6A9    mov         eax,6ECAB0
 0046C6AE    call        004749C0
 0046C6B3    mov         dword ptr [ebp-60],eax
 0046C6B6    mov         edx,dword ptr [ebp-60]
 0046C6B9    test        edx,edx
>0046C6BB    jne         0046C762
 0046C6C1    mov         dword ptr [ebp-60],1
 0046C6C8    mov         ecx,dword ptr [ebp-48]
 0046C6CB    mov         eax,dword ptr [ecx+2FC]
 0046C6D1    add         eax,218
 0046C6D6    mov         dword ptr [ebp-64],eax
 0046C6D9    mov         word ptr [ebp-34],8
 0046C6DF    lea         eax,[ebp-4]
 0046C6E2    call        00401EA8
 0046C6E7    mov         edx,eax
 0046C6E9    inc         dword ptr [ebp-28]
 0046C6EC    mov         eax,dword ptr [ebp-58]
 0046C6EF    call        0053188C
 0046C6F4    lea         edx,[ebp-4]
 0046C6F7    push        edx
 0046C6F8    lea         eax,[ebp-0C]
 0046C6FB    call        00401EA8
 0046C700    push        eax
 0046C701    inc         dword ptr [ebp-28]
 0046C704    mov         edx,6B0CC0
 0046C709    lea         eax,[ebp-8]
 0046C70C    call        0067DAB4
 0046C711    inc         dword ptr [ebp-28]
 0046C714    lea         edx,[ebp-8]
 0046C717    pop         ecx
 0046C718    pop         eax
 0046C719    call        0067DCF8
 0046C71E    lea         edx,[ebp-0C]
 0046C721    mov         edx,dword ptr [edx]
 0046C723    mov         eax,dword ptr [ebp-64]
 0046C726    mov         eax,dword ptr [eax]
 0046C728    mov         ecx,dword ptr [eax]
 0046C72A    call        dword ptr [ecx+38]
 0046C72D    dec         dword ptr [ebp-28]
 0046C730    lea         eax,[ebp-0C]
 0046C733    mov         edx,2
 0046C738    call        0067DCA0
 0046C73D    dec         dword ptr [ebp-28]
 0046C740    lea         eax,[ebp-8]
 0046C743    mov         edx,2
 0046C748    call        0067DCA0
 0046C74D    dec         dword ptr [ebp-28]
 0046C750    lea         eax,[ebp-4]
 0046C753    mov         edx,2
 0046C758    call        0067DCA0
>0046C75D    jmp         0046C842
 0046C762    mov         ecx,dword ptr [ebp-48]
 0046C765    mov         eax,dword ptr [ecx+2FC]
 0046C76B    add         eax,218
 0046C770    mov         dword ptr [ebp-68],eax
 0046C773    mov         word ptr [ebp-34],14
 0046C779    lea         eax,[ebp-10]
 0046C77C    call        00401EA8
 0046C781    mov         edx,eax
 0046C783    inc         dword ptr [ebp-28]
 0046C786    mov         eax,dword ptr [ebp-58]
 0046C789    call        0053188C
 0046C78E    lea         edx,[ebp-10]
 0046C791    push        edx
 0046C792    lea         eax,[ebp-18]
 0046C795    call        00401EA8
 0046C79A    push        eax
 0046C79B    inc         dword ptr [ebp-28]
 0046C79E    mov         edx,6B0CC6
 0046C7A3    lea         eax,[ebp-14]
 0046C7A6    call        0067DAB4
 0046C7AB    inc         dword ptr [ebp-28]
 0046C7AE    lea         edx,[ebp-14]
 0046C7B1    pop         ecx
 0046C7B2    pop         eax
 0046C7B3    call        0067DCF8
 0046C7B8    lea         edx,[ebp-18]
 0046C7BB    push        edx
 0046C7BC    lea         eax,[ebp-20]
 0046C7BF    call        00401EA8
 0046C7C4    push        eax
 0046C7C5    inc         dword ptr [ebp-28]
 0046C7C8    lea         edx,[ebp-180]
 0046C7CE    lea         eax,[ebp-1C]
 0046C7D1    call        0067DAB4
 0046C7D6    inc         dword ptr [ebp-28]
 0046C7D9    lea         edx,[ebp-1C]
 0046C7DC    pop         ecx
 0046C7DD    pop         eax
 0046C7DE    call        0067DCF8
 0046C7E3    lea         edx,[ebp-20]
 0046C7E6    mov         edx,dword ptr [edx]
 0046C7E8    mov         eax,dword ptr [ebp-68]
 0046C7EB    mov         eax,dword ptr [eax]
 0046C7ED    mov         ecx,dword ptr [eax]
 0046C7EF    call        dword ptr [ecx+38]
 0046C7F2    dec         dword ptr [ebp-28]
 0046C7F5    lea         eax,[ebp-20]
 0046C7F8    mov         edx,2
 0046C7FD    call        0067DCA0
 0046C802    dec         dword ptr [ebp-28]
 0046C805    lea         eax,[ebp-1C]
 0046C808    mov         edx,2
 0046C80D    call        0067DCA0
 0046C812    dec         dword ptr [ebp-28]
 0046C815    lea         eax,[ebp-18]
 0046C818    mov         edx,2
 0046C81D    call        0067DCA0
 0046C822    dec         dword ptr [ebp-28]
 0046C825    lea         eax,[ebp-14]
 0046C828    mov         edx,2
 0046C82D    call        0067DCA0
 0046C832    dec         dword ptr [ebp-28]
 0046C835    lea         eax,[ebp-10]
 0046C838    mov         edx,2
 0046C83D    call        0067DCA0
 0046C842    mov         ecx,dword ptr [ebp-5C]
 0046C845    mov         eax,dword ptr [ebp-60]
 0046C848    add         ecx,eax
 0046C84A    mov         edx,dword ptr [ebp-50]
 0046C84D    cmp         ecx,edx
>0046C84F    jg          0046C883
 0046C851    mov         ecx,dword ptr [ebp-54]
 0046C854    mov         eax,dword ptr [ebp-60]
 0046C857    add         ecx,eax
 0046C859    mov         edx,dword ptr ds:[6ECB54];0x0 gvar_006ECB54
 0046C85F    cmp         ecx,edx
>0046C861    jae         0046C883
 0046C863    mov         ecx,dword ptr [ebp-60]
 0046C866    add         dword ptr [ebp-54],ecx
 0046C869    mov         eax,dword ptr [ebp-60]
 0046C86C    add         dword ptr [ebp-58],eax
 0046C86F    mov         edx,dword ptr [ebp-60]
 0046C872    add         dword ptr [ebp-5C],edx
 0046C875    mov         ecx,dword ptr [ebp-5C]
 0046C878    mov         eax,dword ptr [ebp-50]
 0046C87B    cmp         ecx,eax
>0046C87D    jl          0046C68A
 0046C883    mov         edx,dword ptr [ebp-44]
 0046C886    mov         dword ptr fs:[0],edx
 0046C88D    mov         esp,ebp
 0046C88F    pop         ebp
 0046C890    ret
end;*}

//0046C894
{*procedure sub_0046C894(?:TFExplorer_11011981; ?:dword; ?:?);
begin
 0046C894    push        ebp
 0046C895    mov         ebp,esp
 0046C897    add         esp,0FFFFFED8
 0046C89D    push        ebx
 0046C89E    push        esi
 0046C89F    push        edi
 0046C8A0    mov         dword ptr [ebp-0CC],ecx
 0046C8A6    mov         dword ptr [ebp-0C8],edx
 0046C8AC    mov         dword ptr [ebp-0C4],eax
 0046C8B2    mov         eax,6B0FDC
 0046C8B7    call        0066FECC
 0046C8BC    lea         edx,[ebp-108]
 0046C8C2    push        edx
 0046C8C3    call        @System@Comp@$bctr$qv
 0046C8C8    pop         ecx
 0046C8C9    mov         word ptr [ebp-0B0],8
 0046C8D2    lea         eax,[ebp-8]
 0046C8D5    call        00401EA8
 0046C8DA    inc         dword ptr [ebp-0A4]
 0046C8E0    mov         word ptr [ebp-0B0],14
 0046C8E9    mov         word ptr [ebp-0B0],20
 0046C8F2    lea         eax,[ebp-0C]
 0046C8F5    call        00401EA8
 0046C8FA    inc         dword ptr [ebp-0A4]
 0046C900    mov         word ptr [ebp-0B0],14
 0046C909    mov         edx,dword ptr [ebp-0C4]
 0046C90F    mov         eax,dword ptr [edx+300]
 0046C915    mov         edx,dword ptr [eax]
 0046C917    call        dword ptr [edx+0D4]
 0046C91D    mov         eax,dword ptr [ebp-0C8]
 0046C923    call        005312C8
 0046C928    mov         dword ptr [ebp-0E0],eax
 0046C92E    mov         edx,dword ptr [ebp-0E0]
 0046C934    inc         edx
>0046C935    jne         0046C96F
 0046C937    dec         dword ptr [ebp-0A4]
 0046C93D    lea         eax,[ebp-0C]
 0046C940    mov         edx,2
 0046C945    call        0067DCA0
 0046C94A    dec         dword ptr [ebp-0A4]
 0046C950    lea         eax,[ebp-8]
 0046C953    mov         edx,2
 0046C958    call        0067DCA0
 0046C95D    mov         ecx,dword ptr [ebp-0C0]
 0046C963    mov         dword ptr fs:[0],ecx
>0046C96A    jmp         0046D4E8
 0046C96F    mov         eax,dword ptr [ebp-0C4]
 0046C975    mov         edx,dword ptr [ebp-0C8]
 0046C97B    mov         dword ptr [eax+340],edx
 0046C981    mov         ecx,dword ptr [ebp-0C4]
 0046C987    mov         eax,dword ptr [ecx+340]
 0046C98D    mov         dword ptr [ebp-10C],eax
 0046C993    mov         edx,dword ptr [ebp-0C4]
 0046C999    mov         ecx,dword ptr [edx+320]
 0046C99F    mov         eax,dword ptr [ecx+218]
 0046C9A5    cmp         eax,5
>0046C9A8    ja          0046D4A1
 0046C9AE    jmp         dword ptr [eax*4+46C9B5]
 0046C9AE    dd          0046C9CD
 0046C9AE    dd          0046CD49
 0046C9AE    dd          0046CE98
 0046C9AE    dd          0046CFEE
 0046C9AE    dd          0046D1AF
 0046C9AE    dd          0046D317
 0046C9CD    xor         edx,edx
 0046C9CF    mov         dword ptr [ebp-0D4],edx
 0046C9D5    xor         ecx,ecx
 0046C9D7    mov         dword ptr [ebp-0D8],ecx
 0046C9DD    mov         eax,dword ptr [ebp-0D4]
 0046C9E3    mov         edx,dword ptr [ebp-0CC]
 0046C9E9    cmp         eax,edx
>0046C9EB    jge         0046CC64
 0046C9F1    mov         ecx,dword ptr [ebp-0E0]
 0046C9F7    mov         eax,[006ECB48];0x0 gvar_006ECB48
 0046C9FC    cmp         ecx,eax
>0046C9FE    ja          0046CC64
 0046CA04    mov         edx,dword ptr [ebp-0D8]
 0046CA0A    test        edx,edx
>0046CA0C    jne         0046CAE4
 0046CA12    mov         word ptr [ebp-0B0],2C
 0046CA1B    lea         eax,[ebp-10]
 0046CA1E    call        00401EA8
 0046CA23    mov         edx,eax
 0046CA25    inc         dword ptr [ebp-0A4]
 0046CA2B    mov         eax,dword ptr [ebp-10C]
 0046CA31    call        0053188C
 0046CA36    lea         edx,[ebp-10]
 0046CA39    push        edx
 0046CA3A    lea         eax,[ebp-18]
 0046CA3D    call        00401EA8
 0046CA42    push        eax
 0046CA43    inc         dword ptr [ebp-0A4]
 0046CA49    mov         edx,6B0CC9
 0046CA4E    lea         eax,[ebp-14]
 0046CA51    call        0067DAB4
 0046CA56    inc         dword ptr [ebp-0A4]
 0046CA5C    lea         edx,[ebp-14]
 0046CA5F    pop         ecx
 0046CA60    pop         eax
 0046CA61    call        0067DCF8
 0046CA66    lea         edx,[ebp-18]
 0046CA69    lea         eax,[ebp-8]
 0046CA6C    call        0067DCD0
 0046CA71    dec         dword ptr [ebp-0A4]
 0046CA77    lea         eax,[ebp-18]
 0046CA7A    mov         edx,2
 0046CA7F    call        0067DCA0
 0046CA84    dec         dword ptr [ebp-0A4]
 0046CA8A    lea         eax,[ebp-14]
 0046CA8D    mov         edx,2
 0046CA92    call        0067DCA0
 0046CA97    dec         dword ptr [ebp-0A4]
 0046CA9D    lea         eax,[ebp-10]
 0046CAA0    mov         edx,2
 0046CAA5    call        0067DCA0
 0046CAAA    mov         word ptr [ebp-0B0],38
 0046CAB3    mov         edx,6B0CCB
 0046CAB8    lea         eax,[ebp-1C]
 0046CABB    call        0067DAB4
 0046CAC0    inc         dword ptr [ebp-0A4]
 0046CAC6    lea         edx,[ebp-1C]
 0046CAC9    lea         eax,[ebp-0C]
 0046CACC    call        0067DCD0
 0046CAD1    dec         dword ptr [ebp-0A4]
 0046CAD7    lea         eax,[ebp-1C]
 0046CADA    mov         edx,2
 0046CADF    call        0067DCA0
 0046CAE4    mov         word ptr [ebp-0B0],44
 0046CAED    lea         eax,[ebp-20]
 0046CAF0    call        00401EA8
 0046CAF5    mov         edx,eax
 0046CAF7    inc         dword ptr [ebp-0A4]
 0046CAFD    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046CB03    mov         eax,dword ptr [ebp-0E0]
 0046CB09    movzx       eax,byte ptr [ecx+eax]
 0046CB0D    call        00531730
 0046CB12    lea         edx,[ebp-20]
 0046CB15    push        edx
 0046CB16    lea         eax,[ebp-24]
 0046CB19    call        00401EA8
 0046CB1E    mov         ecx,eax
 0046CB20    inc         dword ptr [ebp-0A4]
 0046CB26    mov         eax,6B0CCE
 0046CB2B    pop         edx
 0046CB2C    call        0067E37C
 0046CB31    lea         edx,[ebp-24]
 0046CB34    lea         eax,[ebp-8]
 0046CB37    call        0067DCE4
 0046CB3C    dec         dword ptr [ebp-0A4]
 0046CB42    lea         eax,[ebp-24]
 0046CB45    mov         edx,2
 0046CB4A    call        0067DCA0
 0046CB4F    dec         dword ptr [ebp-0A4]
 0046CB55    lea         eax,[ebp-20]
 0046CB58    mov         edx,2
 0046CB5D    call        0067DCA0
 0046CB62    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046CB68    mov         eax,dword ptr [ebp-0E0]
 0046CB6E    mov         dl,byte ptr [ecx+eax]
 0046CB71    mov         byte ptr [ebp-0CD],dl
 0046CB77    mov         cl,byte ptr [ebp-0CD]
 0046CB7D    cmp         cl,20
>0046CB80    jae         0046CB89
 0046CB82    mov         byte ptr [ebp-0CD],20
 0046CB89    mov         word ptr [ebp-0B0],50
 0046CB92    lea         eax,[ebp-28]
 0046CB95    mov         dl,byte ptr [ebp-0CD]
 0046CB9B    call        0067DB84
 0046CBA0    mov         edx,eax
 0046CBA2    inc         dword ptr [ebp-0A4]
 0046CBA8    lea         eax,[ebp-0C]
 0046CBAB    call        0067DCE4
 0046CBB0    dec         dword ptr [ebp-0A4]
 0046CBB6    lea         eax,[ebp-28]
 0046CBB9    mov         edx,2
 0046CBBE    call        0067DCA0
 0046CBC3    inc         dword ptr [ebp-0D8]
 0046CBC9    mov         ecx,dword ptr [ebp-0D8]
 0046CBCF    cmp         ecx,10
>0046CBD2    jne         0046CC44
 0046CBD4    mov         eax,dword ptr [ebp-0C4]
 0046CBDA    mov         edx,dword ptr [eax+300]
 0046CBE0    add         edx,218
 0046CBE6    mov         dword ptr [ebp-110],edx
 0046CBEC    mov         word ptr [ebp-0B0],5C
 0046CBF5    lea         eax,[ebp-2C]
 0046CBF8    call        00401EA8
 0046CBFD    mov         ecx,eax
 0046CBFF    inc         dword ptr [ebp-0A4]
 0046CC05    lea         edx,[ebp-0C]
 0046CC08    lea         eax,[ebp-8]
 0046CC0B    call        0067DCF8
 0046CC10    lea         edx,[ebp-2C]
 0046CC13    mov         edx,dword ptr [edx]
 0046CC15    mov         eax,dword ptr [ebp-110]
 0046CC1B    mov         eax,dword ptr [eax]
 0046CC1D    mov         ecx,dword ptr [eax]
 0046CC1F    call        dword ptr [ecx+38]
 0046CC22    dec         dword ptr [ebp-0A4]
 0046CC28    lea         eax,[ebp-2C]
 0046CC2B    mov         edx,2
 0046CC30    call        0067DCA0
 0046CC35    add         dword ptr [ebp-10C],10
 0046CC3C    xor         ecx,ecx
 0046CC3E    mov         dword ptr [ebp-0D8],ecx
 0046CC44    inc         dword ptr [ebp-0E0]
 0046CC4A    inc         dword ptr [ebp-0D4]
 0046CC50    mov         eax,dword ptr [ebp-0D4]
 0046CC56    mov         edx,dword ptr [ebp-0CC]
 0046CC5C    cmp         eax,edx
>0046CC5E    jl          0046C9F1
 0046CC64    mov         ecx,dword ptr [ebp-0D8]
 0046CC6A    test        ecx,ecx
>0046CC6C    jle         0046D4A1
 0046CC72    mov         eax,dword ptr [ebp-0D8]
 0046CC78    cmp         eax,10
>0046CC7B    jge         0046D4A1
 0046CC81    mov         edx,dword ptr [ebp-0D8]
 0046CC87    mov         dword ptr [ebp-0DC],edx
 0046CC8D    mov         ecx,dword ptr [ebp-0DC]
 0046CC93    cmp         ecx,10
>0046CC96    jge         0046CCE3
 0046CC98    mov         word ptr [ebp-0B0],68
 0046CCA1    mov         edx,6B0CD0
 0046CCA6    lea         eax,[ebp-30]
 0046CCA9    call        0067DAB4
 0046CCAE    inc         dword ptr [ebp-0A4]
 0046CCB4    lea         edx,[ebp-30]
 0046CCB7    lea         eax,[ebp-8]
 0046CCBA    call        0067DCE4
 0046CCBF    dec         dword ptr [ebp-0A4]
 0046CCC5    lea         eax,[ebp-30]
 0046CCC8    mov         edx,2
 0046CCCD    call        0067DCA0
 0046CCD2    inc         dword ptr [ebp-0DC]
 0046CCD8    mov         ecx,dword ptr [ebp-0DC]
 0046CCDE    cmp         ecx,10
>0046CCE1    jl          0046CC98
 0046CCE3    mov         eax,dword ptr [ebp-0C4]
 0046CCE9    mov         edx,dword ptr [eax+300]
 0046CCEF    add         edx,218
 0046CCF5    mov         dword ptr [ebp-114],edx
 0046CCFB    mov         word ptr [ebp-0B0],74
 0046CD04    lea         eax,[ebp-34]
 0046CD07    call        00401EA8
 0046CD0C    mov         ecx,eax
 0046CD0E    inc         dword ptr [ebp-0A4]
 0046CD14    lea         edx,[ebp-0C]
 0046CD17    lea         eax,[ebp-8]
 0046CD1A    call        0067DCF8
 0046CD1F    lea         edx,[ebp-34]
 0046CD22    mov         edx,dword ptr [edx]
 0046CD24    mov         eax,dword ptr [ebp-114]
 0046CD2A    mov         eax,dword ptr [eax]
 0046CD2C    mov         ecx,dword ptr [eax]
 0046CD2E    call        dword ptr [ecx+38]
 0046CD31    dec         dword ptr [ebp-0A4]
 0046CD37    lea         eax,[ebp-34]
 0046CD3A    mov         edx,2
 0046CD3F    call        0067DCA0
>0046CD44    jmp         0046D4A1
 0046CD49    xor         ecx,ecx
 0046CD4B    mov         dword ptr [ebp-0E4],ecx
 0046CD51    push        4
 0046CD53    mov         eax,[006941C4];0x0 gvar_006941C4
 0046CD58    mov         edx,dword ptr [ebp-0E0]
 0046CD5E    add         eax,edx
 0046CD60    push        eax
 0046CD61    lea         ecx,[ebp-0E4]
 0046CD67    push        ecx
 0046CD68    call        0066F8B8
 0046CD6D    add         esp,0C
 0046CD70    mov         word ptr [ebp-0B0],80
 0046CD79    lea         eax,[ebp-38]
 0046CD7C    call        00401EA8
 0046CD81    mov         edx,eax
 0046CD83    inc         dword ptr [ebp-0A4]
 0046CD89    mov         eax,dword ptr [ebp-10C]
 0046CD8F    call        0053188C
 0046CD94    lea         edx,[ebp-38]
 0046CD97    push        edx
 0046CD98    lea         eax,[ebp-40]
 0046CD9B    call        00401EA8
 0046CDA0    push        eax
 0046CDA1    inc         dword ptr [ebp-0A4]
 0046CDA7    mov         edx,6B0CD4
 0046CDAC    lea         eax,[ebp-3C]
 0046CDAF    call        0067DAB4
 0046CDB4    inc         dword ptr [ebp-0A4]
 0046CDBA    lea         edx,[ebp-3C]
 0046CDBD    pop         ecx
 0046CDBE    pop         eax
 0046CDBF    call        0067DCF8
 0046CDC4    lea         edx,[ebp-40]
 0046CDC7    push        edx
 0046CDC8    fld         dword ptr [ebp-0E4]
 0046CDCE    add         esp,0FFFFFFF4
 0046CDD1    fstp        tbyte ptr [esp]
 0046CDD4    lea         eax,[ebp-44]
 0046CDD7    call        00401EA8
 0046CDDC    inc         dword ptr [ebp-0A4]
 0046CDE2    call        FloatToStr
 0046CDE7    lea         edx,[ebp-44]
 0046CDEA    push        edx
 0046CDEB    lea         eax,[ebp-48]
 0046CDEE    call        00401EA8
 0046CDF3    mov         ecx,eax
 0046CDF5    inc         dword ptr [ebp-0A4]
 0046CDFB    pop         edx
 0046CDFC    pop         eax
 0046CDFD    call        0067DCF8
 0046CE02    lea         edx,[ebp-48]
 0046CE05    lea         eax,[ebp-8]
 0046CE08    call        0067DCD0
 0046CE0D    dec         dword ptr [ebp-0A4]
 0046CE13    lea         eax,[ebp-48]
 0046CE16    mov         edx,2
 0046CE1B    call        0067DCA0
 0046CE20    dec         dword ptr [ebp-0A4]
 0046CE26    lea         eax,[ebp-44]
 0046CE29    mov         edx,2
 0046CE2E    call        0067DCA0
 0046CE33    dec         dword ptr [ebp-0A4]
 0046CE39    lea         eax,[ebp-40]
 0046CE3C    mov         edx,2
 0046CE41    call        0067DCA0
 0046CE46    dec         dword ptr [ebp-0A4]
 0046CE4C    lea         eax,[ebp-3C]
 0046CE4F    mov         edx,2
 0046CE54    call        0067DCA0
 0046CE59    dec         dword ptr [ebp-0A4]
 0046CE5F    lea         eax,[ebp-38]
 0046CE62    mov         edx,2
 0046CE67    call        0067DCA0
 0046CE6C    mov         ecx,dword ptr [ebp-0C4]
 0046CE72    mov         eax,dword ptr [ecx+300]
 0046CE78    add         eax,218
 0046CE7D    mov         dword ptr [ebp-118],eax
 0046CE83    mov         edx,dword ptr [ebp-118]
 0046CE89    mov         eax,dword ptr [edx]
 0046CE8B    mov         edx,dword ptr [ebp-8]
 0046CE8E    mov         ecx,dword ptr [eax]
 0046CE90    call        dword ptr [ecx+38]
>0046CE93    jmp         0046D4A1
 0046CE98    xor         eax,eax
 0046CE9A    mov         dword ptr [ebp-0EC],eax
 0046CEA0    mov         dword ptr [ebp-0E8],eax
 0046CEA6    push        8
 0046CEA8    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046CEAE    mov         ecx,dword ptr [ebp-0E0]
 0046CEB4    add         edx,ecx
 0046CEB6    push        edx
 0046CEB7    lea         eax,[ebp-0EC]
 0046CEBD    push        eax
 0046CEBE    call        0066F8B8
 0046CEC3    add         esp,0C
 0046CEC6    mov         word ptr [ebp-0B0],8C
 0046CECF    lea         eax,[ebp-4C]
 0046CED2    call        00401EA8
 0046CED7    mov         edx,eax
 0046CED9    inc         dword ptr [ebp-0A4]
 0046CEDF    mov         eax,dword ptr [ebp-10C]
 0046CEE5    call        0053188C
 0046CEEA    lea         edx,[ebp-4C]
 0046CEED    push        edx
 0046CEEE    lea         eax,[ebp-54]
 0046CEF1    call        00401EA8
 0046CEF6    push        eax
 0046CEF7    inc         dword ptr [ebp-0A4]
 0046CEFD    mov         edx,6B0CD7
 0046CF02    lea         eax,[ebp-50]
 0046CF05    call        0067DAB4
 0046CF0A    inc         dword ptr [ebp-0A4]
 0046CF10    lea         edx,[ebp-50]
 0046CF13    pop         ecx
 0046CF14    pop         eax
 0046CF15    call        0067DCF8
 0046CF1A    lea         edx,[ebp-54]
 0046CF1D    push        edx
 0046CF1E    fld         qword ptr [ebp-0EC]
 0046CF24    add         esp,0FFFFFFF4
 0046CF27    fstp        tbyte ptr [esp]
 0046CF2A    lea         eax,[ebp-58]
 0046CF2D    call        00401EA8
 0046CF32    inc         dword ptr [ebp-0A4]
 0046CF38    call        FloatToStr
 0046CF3D    lea         edx,[ebp-58]
 0046CF40    push        edx
 0046CF41    lea         eax,[ebp-5C]
 0046CF44    call        00401EA8
 0046CF49    mov         ecx,eax
 0046CF4B    inc         dword ptr [ebp-0A4]
 0046CF51    pop         edx
 0046CF52    pop         eax
 0046CF53    call        0067DCF8
 0046CF58    lea         edx,[ebp-5C]
 0046CF5B    lea         eax,[ebp-8]
 0046CF5E    call        0067DCD0
 0046CF63    dec         dword ptr [ebp-0A4]
 0046CF69    lea         eax,[ebp-5C]
 0046CF6C    mov         edx,2
 0046CF71    call        0067DCA0
 0046CF76    dec         dword ptr [ebp-0A4]
 0046CF7C    lea         eax,[ebp-58]
 0046CF7F    mov         edx,2
 0046CF84    call        0067DCA0
 0046CF89    dec         dword ptr [ebp-0A4]
 0046CF8F    lea         eax,[ebp-54]
 0046CF92    mov         edx,2
 0046CF97    call        0067DCA0
 0046CF9C    dec         dword ptr [ebp-0A4]
 0046CFA2    lea         eax,[ebp-50]
 0046CFA5    mov         edx,2
 0046CFAA    call        0067DCA0
 0046CFAF    dec         dword ptr [ebp-0A4]
 0046CFB5    lea         eax,[ebp-4C]
 0046CFB8    mov         edx,2
 0046CFBD    call        0067DCA0
 0046CFC2    mov         ecx,dword ptr [ebp-0C4]
 0046CFC8    mov         eax,dword ptr [ecx+300]
 0046CFCE    add         eax,218
 0046CFD3    mov         dword ptr [ebp-11C],eax
 0046CFD9    mov         edx,dword ptr [ebp-11C]
 0046CFDF    mov         eax,dword ptr [edx]
 0046CFE1    mov         edx,dword ptr [ebp-8]
 0046CFE4    mov         ecx,dword ptr [eax]
 0046CFE6    call        dword ptr [ecx+38]
>0046CFE9    jmp         0046D4A1
 0046CFEE    mov         word ptr [ebp-0B0],98
 0046CFF7    xor         eax,eax
 0046CFF9    mov         dword ptr [ebp-0F8],eax
 0046CFFF    mov         dword ptr [ebp-0F4],eax
 0046D005    mov         word ptr [ebp-0F0],ax
 0046D00C    push        0A
 0046D00E    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D014    mov         ecx,dword ptr [ebp-0E0]
 0046D01A    add         edx,ecx
 0046D01C    push        edx
 0046D01D    lea         eax,[ebp-0F8]
 0046D023    push        eax
 0046D024    call        0066F8B8
 0046D029    add         esp,0C
 0046D02C    mov         word ptr [ebp-0B0],0A4
 0046D035    lea         eax,[ebp-60]
 0046D038    call        00401EA8
 0046D03D    mov         edx,eax
 0046D03F    inc         dword ptr [ebp-0A4]
 0046D045    mov         eax,dword ptr [ebp-10C]
 0046D04B    call        0053188C
 0046D050    lea         edx,[ebp-60]
 0046D053    push        edx
 0046D054    lea         eax,[ebp-68]
 0046D057    call        00401EA8
 0046D05C    push        eax
 0046D05D    inc         dword ptr [ebp-0A4]
 0046D063    mov         edx,6B0CDA
 0046D068    lea         eax,[ebp-64]
 0046D06B    call        0067DAB4
 0046D070    inc         dword ptr [ebp-0A4]
 0046D076    lea         edx,[ebp-64]
 0046D079    pop         ecx
 0046D07A    pop         eax
 0046D07B    call        0067DCF8
 0046D080    lea         edx,[ebp-68]
 0046D083    push        edx
 0046D084    mov         cx,word ptr [ebp-0F0]
 0046D08B    push        ecx
 0046D08C    push        dword ptr [ebp-0F4]
 0046D092    push        dword ptr [ebp-0F8]
 0046D098    lea         eax,[ebp-6C]
 0046D09B    call        00401EA8
 0046D0A0    inc         dword ptr [ebp-0A4]
 0046D0A6    call        FloatToStr
 0046D0AB    lea         edx,[ebp-6C]
 0046D0AE    push        edx
 0046D0AF    lea         eax,[ebp-70]
 0046D0B2    call        00401EA8
 0046D0B7    mov         ecx,eax
 0046D0B9    inc         dword ptr [ebp-0A4]
 0046D0BF    pop         edx
 0046D0C0    pop         eax
 0046D0C1    call        0067DCF8
 0046D0C6    lea         edx,[ebp-70]
 0046D0C9    lea         eax,[ebp-8]
 0046D0CC    call        0067DCD0
 0046D0D1    dec         dword ptr [ebp-0A4]
 0046D0D7    lea         eax,[ebp-70]
 0046D0DA    mov         edx,2
 0046D0DF    call        0067DCA0
 0046D0E4    dec         dword ptr [ebp-0A4]
 0046D0EA    lea         eax,[ebp-6C]
 0046D0ED    mov         edx,2
 0046D0F2    call        0067DCA0
 0046D0F7    dec         dword ptr [ebp-0A4]
 0046D0FD    lea         eax,[ebp-68]
 0046D100    mov         edx,2
 0046D105    call        0067DCA0
 0046D10A    dec         dword ptr [ebp-0A4]
 0046D110    lea         eax,[ebp-64]
 0046D113    mov         edx,2
 0046D118    call        0067DCA0
 0046D11D    dec         dword ptr [ebp-0A4]
 0046D123    lea         eax,[ebp-60]
 0046D126    mov         edx,2
 0046D12B    call        0067DCA0
 0046D130    mov         word ptr [ebp-0B0],14
>0046D139    jmp         0046D183
 0046D13B    mov         word ptr [ebp-0B0],0B0
 0046D144    mov         edx,6B0CDD
 0046D149    lea         eax,[ebp-74]
 0046D14C    call        0067DAB4
 0046D151    inc         dword ptr [ebp-0A4]
 0046D157    lea         edx,[ebp-74]
 0046D15A    lea         eax,[ebp-8]
 0046D15D    call        0067DCD0
 0046D162    dec         dword ptr [ebp-0A4]
 0046D168    lea         eax,[ebp-74]
 0046D16B    mov         edx,2
 0046D170    call        0067DCA0
 0046D175    mov         word ptr [ebp-0B0],0A0
 0046D17E    call        0067AF32
 0046D183    mov         ecx,dword ptr [ebp-0C4]
 0046D189    mov         eax,dword ptr [ecx+300]
 0046D18F    add         eax,218
 0046D194    mov         dword ptr [ebp-120],eax
 0046D19A    mov         edx,dword ptr [ebp-120]
 0046D1A0    mov         eax,dword ptr [edx]
 0046D1A2    mov         edx,dword ptr [ebp-8]
 0046D1A5    mov         ecx,dword ptr [eax]
 0046D1A7    call        dword ptr [ecx+38]
>0046D1AA    jmp         0046D4A1
 0046D1AF    xor         eax,eax
 0046D1B1    mov         dword ptr [ebp-100],eax
 0046D1B7    mov         dword ptr [ebp-0FC],eax
 0046D1BD    push        4
 0046D1BF    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D1C5    mov         ecx,dword ptr [ebp-0E0]
 0046D1CB    add         edx,ecx
 0046D1CD    push        edx
 0046D1CE    lea         eax,[ebp-100]
 0046D1D4    push        eax
 0046D1D5    call        0066F8B8
 0046D1DA    add         esp,0C
 0046D1DD    mov         word ptr [ebp-0B0],0BC
 0046D1E6    lea         eax,[ebp-78]
 0046D1E9    call        00401EA8
 0046D1EE    mov         edx,eax
 0046D1F0    inc         dword ptr [ebp-0A4]
 0046D1F6    mov         eax,dword ptr [ebp-10C]
 0046D1FC    call        0053188C
 0046D201    lea         edx,[ebp-78]
 0046D204    push        edx
 0046D205    lea         eax,[ebp-80]
 0046D208    call        00401EA8
 0046D20D    push        eax
 0046D20E    inc         dword ptr [ebp-0A4]
 0046D214    mov         edx,6B0CE9
 0046D219    lea         eax,[ebp-7C]
 0046D21C    call        0067DAB4
 0046D221    inc         dword ptr [ebp-0A4]
 0046D227    lea         edx,[ebp-7C]
 0046D22A    pop         ecx
 0046D22B    pop         eax
 0046D22C    call        0067DCF8
 0046D231    lea         edx,[ebp-80]
 0046D234    push        edx
 0046D235    fld         qword ptr [ebp-100]
 0046D23B    add         esp,0FFFFFFF4
 0046D23E    fstp        tbyte ptr [esp]
 0046D241    lea         eax,[ebp-84]
 0046D247    call        00401EA8
 0046D24C    inc         dword ptr [ebp-0A4]
 0046D252    call        FloatToStr
 0046D257    lea         edx,[ebp-84]
 0046D25D    push        edx
 0046D25E    lea         eax,[ebp-88]
 0046D264    call        00401EA8
 0046D269    mov         ecx,eax
 0046D26B    inc         dword ptr [ebp-0A4]
 0046D271    pop         edx
 0046D272    pop         eax
 0046D273    call        0067DCF8
 0046D278    lea         edx,[ebp-88]
 0046D27E    lea         eax,[ebp-8]
 0046D281    call        0067DCD0
 0046D286    dec         dword ptr [ebp-0A4]
 0046D28C    lea         eax,[ebp-88]
 0046D292    mov         edx,2
 0046D297    call        0067DCA0
 0046D29C    dec         dword ptr [ebp-0A4]
 0046D2A2    lea         eax,[ebp-84]
 0046D2A8    mov         edx,2
 0046D2AD    call        0067DCA0
 0046D2B2    dec         dword ptr [ebp-0A4]
 0046D2B8    lea         eax,[ebp-80]
 0046D2BB    mov         edx,2
 0046D2C0    call        0067DCA0
 0046D2C5    dec         dword ptr [ebp-0A4]
 0046D2CB    lea         eax,[ebp-7C]
 0046D2CE    mov         edx,2
 0046D2D3    call        0067DCA0
 0046D2D8    dec         dword ptr [ebp-0A4]
 0046D2DE    lea         eax,[ebp-78]
 0046D2E1    mov         edx,2
 0046D2E6    call        0067DCA0
 0046D2EB    mov         ecx,dword ptr [ebp-0C4]
 0046D2F1    mov         eax,dword ptr [ecx+300]
 0046D2F7    add         eax,218
 0046D2FC    mov         dword ptr [ebp-124],eax
 0046D302    mov         edx,dword ptr [ebp-124]
 0046D308    mov         eax,dword ptr [edx]
 0046D30A    mov         edx,dword ptr [ebp-8]
 0046D30D    mov         ecx,dword ptr [eax]
 0046D30F    call        dword ptr [ecx+38]
>0046D312    jmp         0046D4A1
 0046D317    push        0
 0046D319    push        0
 0046D31B    lea         eax,[ebp-108]
 0046D321    push        eax
 0046D322    call        @System@Comp@$basg$qd
 0046D327    add         esp,0C
 0046D32A    push        8
 0046D32C    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D332    mov         ecx,dword ptr [ebp-0E0]
 0046D338    add         edx,ecx
 0046D33A    push        edx
 0046D33B    lea         eax,[ebp-108]
 0046D341    push        eax
 0046D342    call        0066F8B8
 0046D347    add         esp,0C
 0046D34A    mov         word ptr [ebp-0B0],0C8
 0046D353    lea         eax,[ebp-8C]
 0046D359    call        00401EA8
 0046D35E    mov         edx,eax
 0046D360    inc         dword ptr [ebp-0A4]
 0046D366    mov         eax,dword ptr [ebp-10C]
 0046D36C    call        0053188C
 0046D371    lea         edx,[ebp-8C]
 0046D377    push        edx
 0046D378    lea         eax,[ebp-94]
 0046D37E    call        00401EA8
 0046D383    push        eax
 0046D384    inc         dword ptr [ebp-0A4]
 0046D38A    mov         edx,6B0CEC
 0046D38F    lea         eax,[ebp-90]
 0046D395    call        0067DAB4
 0046D39A    inc         dword ptr [ebp-0A4]
 0046D3A0    lea         edx,[ebp-90]
 0046D3A6    pop         ecx
 0046D3A7    pop         eax
 0046D3A8    call        0067DCF8
 0046D3AD    lea         edx,[ebp-94]
 0046D3B3    push        edx
 0046D3B4    lea         ecx,[ebp-108]
 0046D3BA    push        ecx
 0046D3BB    call        @System@Comp@$od$xqv
 0046D3C0    pop         ecx
 0046D3C1    add         esp,0FFFFFFF4
 0046D3C4    fstp        tbyte ptr [esp]
 0046D3C7    lea         eax,[ebp-98]
 0046D3CD    call        00401EA8
 0046D3D2    inc         dword ptr [ebp-0A4]
 0046D3D8    call        FloatToStr
 0046D3DD    lea         edx,[ebp-98]
 0046D3E3    push        edx
 0046D3E4    lea         eax,[ebp-9C]
 0046D3EA    call        00401EA8
 0046D3EF    mov         ecx,eax
 0046D3F1    inc         dword ptr [ebp-0A4]
 0046D3F7    pop         edx
 0046D3F8    pop         eax
 0046D3F9    call        0067DCF8
 0046D3FE    lea         edx,[ebp-9C]
 0046D404    lea         eax,[ebp-8]
 0046D407    call        0067DCD0
 0046D40C    dec         dword ptr [ebp-0A4]
 0046D412    lea         eax,[ebp-9C]
 0046D418    mov         edx,2
 0046D41D    call        0067DCA0
 0046D422    dec         dword ptr [ebp-0A4]
 0046D428    lea         eax,[ebp-98]
 0046D42E    mov         edx,2
 0046D433    call        0067DCA0
 0046D438    dec         dword ptr [ebp-0A4]
 0046D43E    lea         eax,[ebp-94]
 0046D444    mov         edx,2
 0046D449    call        0067DCA0
 0046D44E    dec         dword ptr [ebp-0A4]
 0046D454    lea         eax,[ebp-90]
 0046D45A    mov         edx,2
 0046D45F    call        0067DCA0
 0046D464    dec         dword ptr [ebp-0A4]
 0046D46A    lea         eax,[ebp-8C]
 0046D470    mov         edx,2
 0046D475    call        0067DCA0
 0046D47A    mov         ecx,dword ptr [ebp-0C4]
 0046D480    mov         eax,dword ptr [ecx+300]
 0046D486    add         eax,218
 0046D48B    mov         dword ptr [ebp-128],eax
 0046D491    mov         edx,dword ptr [ebp-128]
 0046D497    mov         eax,dword ptr [edx]
 0046D499    mov         edx,dword ptr [ebp-8]
 0046D49C    mov         ecx,dword ptr [eax]
 0046D49E    call        dword ptr [ecx+38]
 0046D4A1    mov         eax,dword ptr [ebp-0C4]
 0046D4A7    mov         eax,dword ptr [eax+300]
 0046D4AD    mov         edx,dword ptr [eax]
 0046D4AF    call        dword ptr [edx+88]
 0046D4B5    dec         dword ptr [ebp-0A4]
 0046D4BB    lea         eax,[ebp-0C]
 0046D4BE    mov         edx,2
 0046D4C3    call        0067DCA0
 0046D4C8    dec         dword ptr [ebp-0A4]
 0046D4CE    lea         eax,[ebp-8]
 0046D4D1    mov         edx,2
 0046D4D6    call        0067DCA0
 0046D4DB    mov         ecx,dword ptr [ebp-0C0]
 0046D4E1    mov         dword ptr fs:[0],ecx
 0046D4E8    pop         edi
 0046D4E9    pop         esi
 0046D4EA    pop         ebx
 0046D4EB    mov         esp,ebp
 0046D4ED    pop         ebp
 0046D4EE    ret
end;*}

//0046D558
{*procedure sub_0046D558(?:TFExplorer_11011981; ?:?; ?:?);
begin
 0046D558    push        ebp
 0046D559    mov         ebp,esp
 0046D55B    add         esp,0FFFFFB8C
 0046D561    mov         dword ptr [ebp-54],ecx
 0046D564    mov         dword ptr [ebp-50],edx
 0046D567    mov         dword ptr [ebp-4C],eax
 0046D56A    mov         eax,6B115C
 0046D56F    call        0066FECC
 0046D574    mov         word ptr [ebp-38],8
 0046D57A    lea         eax,[ebp-4]
 0046D57D    call        00401EA8
 0046D582    inc         dword ptr [ebp-2C]
 0046D585    mov         word ptr [ebp-38],14
 0046D58B    mov         word ptr [ebp-38],20
 0046D591    lea         eax,[ebp-8]
 0046D594    call        0046D9EC
 0046D599    inc         dword ptr [ebp-2C]
 0046D59C    mov         word ptr [ebp-38],14
 0046D5A2    mov         edx,dword ptr [ebp-4C]
 0046D5A5    mov         eax,dword ptr [edx+324]
 0046D5AB    mov         edx,dword ptr [eax]
 0046D5AD    call        dword ptr [edx+0DC]
 0046D5B3    mov         eax,dword ptr [ebp-50]
 0046D5B6    call        005312C8
 0046D5BB    mov         dword ptr [ebp-60],eax
 0046D5BE    mov         edx,dword ptr [ebp-60]
 0046D5C1    inc         edx
>0046D5C2    jne         0046D5F3
 0046D5C4    dec         dword ptr [ebp-2C]
 0046D5C7    lea         eax,[ebp-8]
 0046D5CA    mov         edx,2
 0046D5CF    call        0067EE78
 0046D5D4    dec         dword ptr [ebp-2C]
 0046D5D7    lea         eax,[ebp-4]
 0046D5DA    mov         edx,2
 0046D5DF    call        0067DCA0
 0046D5E4    mov         ecx,dword ptr [ebp-48]
 0046D5E7    mov         dword ptr fs:[0],ecx
>0046D5EE    jmp         0046D9E8
 0046D5F3    mov         eax,dword ptr [ebp-4C]
 0046D5F6    mov         edx,dword ptr [eax+308]
 0046D5FC    mov         ecx,dword ptr [edx+218]
 0046D602    cmp         ecx,4
>0046D605    ja          0046D9A0
 0046D60B    jmp         dword ptr [ecx*4+46D612]
 0046D60B    dd          0046D626
 0046D60B    dd          0046D69B
 0046D60B    dd          0046D7A5
 0046D60B    dd          0046D818
 0046D60B    dd          0046D88B
 0046D626    mov         eax,[006941C4];0x0 gvar_006941C4
 0046D62B    mov         edx,dword ptr [ebp-60]
 0046D62E    add         eax,edx
 0046D630    push        eax
 0046D631    call        0066FAB4
 0046D636    pop         ecx
 0046D637    mov         dword ptr [ebp-58],eax
 0046D63A    mov         ecx,dword ptr [ebp-58]
 0046D63D    test        ecx,ecx
>0046D63F    jge         0046D646
 0046D641    xor         eax,eax
 0046D643    mov         dword ptr [ebp-58],eax
 0046D646    mov         edx,dword ptr [ebp-58]
 0046D649    mov         ecx,dword ptr [ebp-54]
 0046D64C    cmp         edx,ecx
>0046D64E    jle         0046D656
 0046D650    mov         eax,dword ptr [ebp-54]
 0046D653    mov         dword ptr [ebp-58],eax
 0046D656    mov         word ptr [ebp-38],2C
 0046D65C    lea         eax,[ebp-0C]
 0046D65F    call        00401EA8
 0046D664    mov         ecx,eax
 0046D666    inc         dword ptr [ebp-2C]
 0046D669    mov         eax,[006941C4];0x0 gvar_006941C4
 0046D66E    mov         edx,dword ptr [ebp-60]
 0046D671    add         eax,edx
 0046D673    mov         edx,dword ptr [ebp-58]
 0046D676    call        005363EC
 0046D67B    lea         edx,[ebp-0C]
 0046D67E    lea         eax,[ebp-4]
 0046D681    call        0067DCD0
 0046D686    dec         dword ptr [ebp-2C]
 0046D689    lea         eax,[ebp-0C]
 0046D68C    mov         edx,2
 0046D691    call        0067DCA0
>0046D696    jmp         0046D9A0
 0046D69B    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D6A1    mov         eax,dword ptr [ebp-60]
 0046D6A4    add         ecx,eax
 0046D6A6    push        ecx
 0046D6A7    call        0066FE74
 0046D6AC    pop         ecx
 0046D6AD    mov         dword ptr [ebp-58],eax
 0046D6B0    mov         edx,dword ptr [ebp-58]
 0046D6B3    test        edx,edx
>0046D6B5    jge         0046D6BC
 0046D6B7    xor         ecx,ecx
 0046D6B9    mov         dword ptr [ebp-58],ecx
 0046D6BC    mov         eax,dword ptr [ebp-58]
 0046D6BF    mov         edx,dword ptr [ebp-54]
 0046D6C2    cmp         eax,edx
>0046D6C4    jle         0046D6CC
 0046D6C6    mov         ecx,dword ptr [ebp-54]
 0046D6C9    mov         dword ptr [ebp-58],ecx
 0046D6CC    mov         word ptr [ebp-38],38
 0046D6D2    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D6D8    mov         eax,dword ptr [ebp-60]
 0046D6DB    add         edx,eax
 0046D6DD    lea         eax,[ebp-10]
 0046D6E0    call        0067EE40
 0046D6E5    mov         edx,eax
 0046D6E7    inc         dword ptr [ebp-2C]
 0046D6EA    lea         eax,[ebp-8]
 0046D6ED    call        0067EEA8
 0046D6F2    dec         dword ptr [ebp-2C]
 0046D6F5    lea         eax,[ebp-10]
 0046D6F8    mov         edx,2
 0046D6FD    call        0067EE78
 0046D702    push        0
 0046D704    push        0
 0046D706    push        0
 0046D708    push        0
 0046D70A    push        dword ptr [ebp-58]
 0046D70D    lea         ecx,[ebp-8]
 0046D710    push        ecx
 0046D711    call        0044E6F0
 0046D716    pop         ecx
 0046D717    push        eax
 0046D718    push        0
 0046D71A    push        0
 0046D71C    call        KERNEL32.WideCharToMultiByte
 0046D721    mov         dword ptr [ebp-5C],eax
 0046D724    mov         eax,dword ptr [ebp-5C]
 0046D727    test        eax,eax
>0046D729    je          0046D9A0
 0046D72F    mov         edx,dword ptr [ebp-5C]
 0046D732    inc         edx
 0046D733    push        edx
 0046D734    call        0066EC88
 0046D739    pop         ecx
 0046D73A    mov         dword ptr [ebp-6C],eax
 0046D73D    push        0
 0046D73F    push        0
 0046D741    push        dword ptr [ebp-5C]
 0046D744    push        dword ptr [ebp-6C]
 0046D747    push        dword ptr [ebp-58]
 0046D74A    lea         ecx,[ebp-8]
 0046D74D    push        ecx
 0046D74E    call        0044E6F0
 0046D753    pop         ecx
 0046D754    push        eax
 0046D755    push        0
 0046D757    push        0
 0046D759    call        KERNEL32.WideCharToMultiByte
 0046D75E    mov         word ptr [ebp-38],44
 0046D764    lea         eax,[ebp-14]
 0046D767    call        00401EA8
 0046D76C    mov         ecx,eax
 0046D76E    inc         dword ptr [ebp-2C]
 0046D771    mov         edx,dword ptr [ebp-5C]
 0046D774    mov         eax,dword ptr [ebp-6C]
 0046D777    call        005363EC
 0046D77C    lea         edx,[ebp-14]
 0046D77F    lea         eax,[ebp-4]
 0046D782    call        0067DCD0
 0046D787    dec         dword ptr [ebp-2C]
 0046D78A    lea         eax,[ebp-14]
 0046D78D    mov         edx,2
 0046D792    call        0067DCA0
 0046D797    push        dword ptr [ebp-6C]
 0046D79A    call        0066EAC0
 0046D79F    pop         ecx
>0046D7A0    jmp         0046D9A0
 0046D7A5    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D7AB    mov         eax,dword ptr [ebp-60]
 0046D7AE    xor         edx,edx
 0046D7B0    mov         dl,byte ptr [ecx+eax]
 0046D7B3    mov         dword ptr [ebp-58],edx
 0046D7B6    mov         ecx,dword ptr [ebp-58]
 0046D7B9    test        ecx,ecx
>0046D7BB    jge         0046D7C2
 0046D7BD    xor         eax,eax
 0046D7BF    mov         dword ptr [ebp-58],eax
 0046D7C2    mov         edx,dword ptr [ebp-58]
 0046D7C5    mov         ecx,dword ptr [ebp-54]
 0046D7C8    cmp         edx,ecx
>0046D7CA    jle         0046D7D2
 0046D7CC    mov         eax,dword ptr [ebp-54]
 0046D7CF    mov         dword ptr [ebp-58],eax
 0046D7D2    mov         word ptr [ebp-38],50
 0046D7D8    lea         eax,[ebp-18]
 0046D7DB    call        00401EA8
 0046D7E0    mov         ecx,eax
 0046D7E2    inc         dword ptr [ebp-2C]
 0046D7E5    mov         eax,[006941C4];0x0 gvar_006941C4
 0046D7EA    mov         edx,dword ptr [ebp-60]
 0046D7ED    add         eax,edx
 0046D7EF    inc         eax
 0046D7F0    mov         edx,dword ptr [ebp-58]
 0046D7F3    call        005363EC
 0046D7F8    lea         edx,[ebp-18]
 0046D7FB    lea         eax,[ebp-4]
 0046D7FE    call        0067DCD0
 0046D803    dec         dword ptr [ebp-2C]
 0046D806    lea         eax,[ebp-18]
 0046D809    mov         edx,2
 0046D80E    call        0067DCA0
>0046D813    jmp         0046D9A0
 0046D818    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D81E    mov         eax,dword ptr [ebp-60]
 0046D821    mov         edx,dword ptr [ecx+eax]
 0046D824    mov         dword ptr [ebp-58],edx
 0046D827    mov         ecx,dword ptr [ebp-58]
 0046D82A    test        ecx,ecx
>0046D82C    jge         0046D833
 0046D82E    xor         eax,eax
 0046D830    mov         dword ptr [ebp-58],eax
 0046D833    mov         edx,dword ptr [ebp-58]
 0046D836    mov         ecx,dword ptr [ebp-54]
 0046D839    cmp         edx,ecx
>0046D83B    jle         0046D843
 0046D83D    mov         eax,dword ptr [ebp-54]
 0046D840    mov         dword ptr [ebp-58],eax
 0046D843    mov         word ptr [ebp-38],5C
 0046D849    lea         eax,[ebp-1C]
 0046D84C    call        00401EA8
 0046D851    mov         ecx,eax
 0046D853    inc         dword ptr [ebp-2C]
 0046D856    mov         eax,[006941C4];0x0 gvar_006941C4
 0046D85B    mov         edx,dword ptr [ebp-60]
 0046D85E    add         eax,edx
 0046D860    add         eax,4
 0046D863    mov         edx,dword ptr [ebp-58]
 0046D866    call        005363EC
 0046D86B    lea         edx,[ebp-1C]
 0046D86E    lea         eax,[ebp-4]
 0046D871    call        0067DCD0
 0046D876    dec         dword ptr [ebp-2C]
 0046D879    lea         eax,[ebp-1C]
 0046D87C    mov         edx,2
 0046D881    call        0067DCA0
>0046D886    jmp         0046D9A0
 0046D88B    mov         ecx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D891    mov         eax,dword ptr [ebp-60]
 0046D894    lea         edx,[ecx+eax]
 0046D897    mov         ecx,dword ptr [ebp-4C]
 0046D89A    mov         eax,dword ptr [ecx+348]
 0046D8A0    mov         edx,dword ptr [edx+eax]
 0046D8A3    mov         dword ptr [ebp-58],edx
 0046D8A6    mov         ecx,dword ptr [ebp-58]
 0046D8A9    test        ecx,ecx
>0046D8AB    jge         0046D8B2
 0046D8AD    xor         eax,eax
 0046D8AF    mov         dword ptr [ebp-58],eax
 0046D8B2    mov         edx,dword ptr [ebp-58]
 0046D8B5    mov         ecx,dword ptr [ebp-54]
 0046D8B8    cmp         edx,ecx
>0046D8BA    jle         0046D8C2
 0046D8BC    mov         eax,dword ptr [ebp-54]
 0046D8BF    mov         dword ptr [ebp-58],eax
 0046D8C2    mov         word ptr [ebp-38],68
 0046D8C8    mov         edx,dword ptr ds:[6941C4];0x0 gvar_006941C4
 0046D8CE    mov         ecx,dword ptr [ebp-60]
 0046D8D1    add         edx,ecx
 0046D8D3    mov         eax,dword ptr [ebp-4C]
 0046D8D6    mov         ecx,dword ptr [eax+348]
 0046D8DC    add         edx,ecx
 0046D8DE    add         edx,4
 0046D8E1    lea         eax,[ebp-20]
 0046D8E4    call        0067EE40
 0046D8E9    mov         edx,eax
 0046D8EB    inc         dword ptr [ebp-2C]
 0046D8EE    lea         eax,[ebp-8]
 0046D8F1    call        0067EEA8
 0046D8F6    dec         dword ptr [ebp-2C]
 0046D8F9    lea         eax,[ebp-20]
 0046D8FC    mov         edx,2
 0046D901    call        0067EE78
 0046D906    push        0
 0046D908    push        0
 0046D90A    push        0
 0046D90C    push        0
 0046D90E    push        dword ptr [ebp-58]
 0046D911    lea         ecx,[ebp-8]
 0046D914    push        ecx
 0046D915    call        0044E6F0
 0046D91A    pop         ecx
 0046D91B    push        eax
 0046D91C    push        0
 0046D91E    push        0
 0046D920    call        KERNEL32.WideCharToMultiByte
 0046D925    mov         dword ptr [ebp-5C],eax
 0046D928    mov         eax,dword ptr [ebp-5C]
 0046D92B    test        eax,eax
>0046D92D    je          0046D9A0
 0046D92F    mov         edx,dword ptr [ebp-5C]
 0046D932    inc         edx
 0046D933    push        edx
 0046D934    call        0066EC88
 0046D939    pop         ecx
 0046D93A    mov         dword ptr [ebp-6C],eax
 0046D93D    push        0
 0046D93F    push        0
 0046D941    push        dword ptr [ebp-5C]
 0046D944    push        dword ptr [ebp-6C]
 0046D947    push        dword ptr [ebp-58]
 0046D94A    lea         ecx,[ebp-8]
 0046D94D    push        ecx
 0046D94E    call        0044E6F0
 0046D953    pop         ecx
 0046D954    push        eax
 0046D955    push        0
 0046D957    push        0
 0046D959    call        KERNEL32.WideCharToMultiByte
 0046D95E    mov         word ptr [ebp-38],74
 0046D964    lea         eax,[ebp-24]
 0046D967    call        00401EA8
 0046D96C    mov         ecx,eax
 0046D96E    inc         dword ptr [ebp-2C]
 0046D971    mov         edx,dword ptr [ebp-5C]
 0046D974    mov         eax,dword ptr [ebp-6C]
 0046D977    call        005363EC
 0046D97C    lea         edx,[ebp-24]
 0046D97F    lea         eax,[ebp-4]
 0046D982    call        0067DCD0
 0046D987    dec         dword ptr [ebp-2C]
 0046D98A    lea         eax,[ebp-24]
 0046D98D    mov         edx,2
 0046D992    call        0067DCA0
 0046D997    push        dword ptr [ebp-6C]
 0046D99A    call        0066EAC0
 0046D99F    pop         ecx
 0046D9A0    mov         ecx,dword ptr [ebp-4C]
 0046D9A3    mov         eax,dword ptr [ecx+324]
 0046D9A9    add         eax,220
 0046D9AE    mov         dword ptr [ebp-74],eax
 0046D9B1    mov         edx,dword ptr [ebp-74]
 0046D9B4    mov         eax,dword ptr [edx]
 0046D9B6    mov         edx,dword ptr [ebp-4]
 0046D9B9    mov         ecx,dword ptr [eax]
 0046D9BB    call        dword ptr [ecx+38]
 0046D9BE    dec         dword ptr [ebp-2C]
 0046D9C1    lea         eax,[ebp-8]
 0046D9C4    mov         edx,2
 0046D9C9    call        0067EE78
 0046D9CE    dec         dword ptr [ebp-2C]
 0046D9D1    lea         eax,[ebp-4]
 0046D9D4    mov         edx,2
 0046D9D9    call        0067DCA0
 0046D9DE    mov         ecx,dword ptr [ebp-48]
 0046D9E1    mov         dword ptr fs:[0],ecx
 0046D9E8    mov         esp,ebp
 0046D9EA    pop         ebp
 0046D9EB    ret
end;*}

//0046D9EC
{*function sub_0046D9EC(?:?):?;
begin
 0046D9EC    push        ebp
 0046D9ED    mov         ebp,esp
 0046D9EF    add         esp,0FFFFFFD8
 0046D9F2    mov         dword ptr [ebp-4],eax
 0046D9F5    mov         eax,6B11F4
 0046D9FA    call        0066FECC
 0046D9FF    mov         word ptr [ebp-18],8
 0046DA05    mov         edx,dword ptr [ebp-4]
 0046DA08    xor         ecx,ecx
 0046DA0A    mov         dword ptr [edx],ecx
 0046DA0C    mov         eax,dword ptr [ebp-28]
 0046DA0F    mov         fs:[00000000],eax
 0046DA15    mov         eax,dword ptr [ebp-4]
 0046DA18    mov         esp,ebp
 0046DA1A    pop         ebp
 0046DA1B    ret
end;*}

//0046DA1C
procedure TFExplorer_11011981.btnDefCodeClick(Sender:TObject);
begin
{*
 0046DA1C    push        ebp
 0046DA1D    mov         ebp,esp
 0046DA1F    add         esp,0FFFFFFF8
 0046DA22    mov         dword ptr [ebp-8],edx
 0046DA25    mov         dword ptr [ebp-4],eax
 0046DA28    mov         eax,dword ptr [ebp-4]
 0046DA2B    mov         dword ptr [eax+344],1;TFExplorer_11011981.?f344:dword
 0046DA35    mov         edx,dword ptr [ebp-4]
 0046DA38    mov         dword ptr [edx+24C],1;TFExplorer_11011981.FModalResult:TModalResult
 0046DA42    pop         ecx
 0046DA43    pop         ecx
 0046DA44    pop         ebp
 0046DA45    ret
*}
end;

//0046DA48
procedure TFExplorer_11011981.btnUndefCodeClick(Sender:TObject);
begin
{*
 0046DA48    push        ebp
 0046DA49    mov         ebp,esp
 0046DA4B    add         esp,0FFFFFFF8
 0046DA4E    mov         dword ptr [ebp-8],edx
 0046DA51    mov         dword ptr [ebp-4],eax
 0046DA54    mov         eax,dword ptr [ebp-4]
 0046DA57    mov         dword ptr [eax+344],3;TFExplorer_11011981.?f344:dword
 0046DA61    mov         edx,dword ptr [ebp-4]
 0046DA64    mov         dword ptr [edx+24C],2;TFExplorer_11011981.FModalResult:TModalResult
 0046DA6E    pop         ecx
 0046DA6F    pop         ecx
 0046DA70    pop         ebp
 0046DA71    ret
*}
end;

//0046DA74
procedure TFExplorer_11011981.btnDefStringClick(Sender:TObject);
begin
{*
 0046DA74    push        ebp
 0046DA75    mov         ebp,esp
 0046DA77    add         esp,0FFFFFFF8
 0046DA7A    mov         dword ptr [ebp-8],edx
 0046DA7D    mov         dword ptr [ebp-4],eax
 0046DA80    mov         eax,dword ptr [ebp-4]
 0046DA83    mov         dword ptr [eax+344],2;TFExplorer_11011981.?f344:dword
 0046DA8D    mov         edx,dword ptr [ebp-4]
 0046DA90    mov         dword ptr [edx+24C],1;TFExplorer_11011981.FModalResult:TModalResult
 0046DA9A    pop         ecx
 0046DA9B    pop         ecx
 0046DA9C    pop         ebp
 0046DA9D    ret
*}
end;

//0046DAA0
procedure TFExplorer_11011981.rgStringViewStyleClick(Sender:TObject);
begin
{*
 0046DAA0    push        ebp
 0046DAA1    mov         ebp,esp
 0046DAA3    add         esp,0FFFFFFF8
 0046DAA6    mov         dword ptr [ebp-8],edx
 0046DAA9    mov         dword ptr [ebp-4],eax
 0046DAAC    mov         ecx,400
 0046DAB1    mov         eax,dword ptr [ebp-4]
 0046DAB4    mov         edx,dword ptr [eax+340];TFExplorer_11011981.?f340:dword
 0046DABA    mov         eax,dword ptr [ebp-4]
 0046DABD    call        0046D558
 0046DAC2    pop         ecx
 0046DAC3    pop         ecx
 0046DAC4    pop         ebp
 0046DAC5    ret
*}
end;

//0046DAC8
procedure TFExplorer_11011981.miCopy2ClipboardClick(Sender:TObject);
begin
{*
 0046DAC8    push        ebp
 0046DAC9    mov         ebp,esp
 0046DACB    add         esp,0FFFFFFF4
 0046DACE    mov         dword ptr [ebp-8],edx
 0046DAD1    mov         dword ptr [ebp-4],eax
 0046DAD4    mov         eax,dword ptr [ebp-4]
 0046DAD7    mov         edx,dword ptr [eax+2F0];TFExplorer_11011981.pc1:TPageControl
 0046DADD    mov         ecx,dword ptr [edx+26C];TPageControl.ActivePage:TTabSheet
 0046DAE3    mov         eax,dword ptr [ebp-4]
 0046DAE6    mov         edx,dword ptr [eax+2F4];TFExplorer_11011981.tsCode:TTabSheet
 0046DAEC    cmp         ecx,edx
>0046DAEE    jne         0046DB07
 0046DAF0    mov         ecx,dword ptr [ebp-4]
 0046DAF3    mov         eax,dword ptr [ecx+2FC]
 0046DAF9    mov         edx,dword ptr [eax+218]
 0046DAFF    mov         dword ptr [ebp-0C],edx
>0046DB02    jmp         0046DB95
 0046DB07    mov         ecx,dword ptr [ebp-4]
 0046DB0A    mov         eax,dword ptr [ecx+2F0]
 0046DB10    mov         edx,dword ptr [eax+26C]
 0046DB16    mov         ecx,dword ptr [ebp-4]
 0046DB19    mov         eax,dword ptr [ecx+2F8]
 0046DB1F    cmp         edx,eax
>0046DB21    jne         0046DB37
 0046DB23    mov         edx,dword ptr [ebp-4]
 0046DB26    mov         ecx,dword ptr [edx+300];TFExplorer_11011981.lbData:TListBox
 0046DB2C    mov         eax,dword ptr [ecx+218];TListBox.FItems:TStrings
 0046DB32    mov         dword ptr [ebp-0C],eax
>0046DB35    jmp         0046DB95
 0046DB37    mov         edx,dword ptr [ebp-4]
 0046DB3A    mov         ecx,dword ptr [edx+2F0];TFExplorer_11011981.pc1:TPageControl
 0046DB40    mov         eax,dword ptr [ecx+26C];TPageControl.ActivePage:TTabSheet
 0046DB46    mov         edx,dword ptr [ebp-4]
 0046DB49    mov         ecx,dword ptr [edx+304];TFExplorer_11011981.tsString:TTabSheet
 0046DB4F    cmp         eax,ecx
>0046DB51    jne         0046DB67
 0046DB53    mov         eax,dword ptr [ebp-4]
 0046DB56    mov         edx,dword ptr [eax+324];TFExplorer_11011981.lbString:TMemo
 0046DB5C    mov         ecx,dword ptr [edx+220];TMemo.FLines:TStrings
 0046DB62    mov         dword ptr [ebp-0C],ecx
>0046DB65    jmp         0046DB95
 0046DB67    mov         eax,dword ptr [ebp-4]
 0046DB6A    mov         edx,dword ptr [eax+2F0];TFExplorer_11011981.pc1:TPageControl
 0046DB70    mov         ecx,dword ptr [edx+26C];TPageControl.ActivePage:TTabSheet
 0046DB76    mov         eax,dword ptr [ebp-4]
 0046DB79    mov         edx,dword ptr [eax+30C];TFExplorer_11011981.tsText:TTabSheet
 0046DB7F    cmp         ecx,edx
>0046DB81    jne         0046DB95
 0046DB83    mov         ecx,dword ptr [ebp-4]
 0046DB86    mov         eax,dword ptr [ecx+310]
 0046DB8C    mov         edx,dword ptr [eax+218]
 0046DB92    mov         dword ptr [ebp-0C],edx
 0046DB95    xor         ecx,ecx
 0046DB97    xor         edx,edx
 0046DB99    mov         eax,dword ptr [ebp-0C]
 0046DB9C    call        0053C7C8
 0046DBA1    mov         esp,ebp
 0046DBA3    pop         ebp
 0046DBA4    ret
*}
end;

//0046DBA8
procedure TFExplorer_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 0046DBA8    push        ebp
 0046DBA9    mov         ebp,esp
 0046DBAB    add         esp,0FFFFFFF4
 0046DBAE    mov         dword ptr [ebp-0C],ecx
 0046DBB1    mov         dword ptr [ebp-8],edx
 0046DBB4    mov         dword ptr [ebp-4],eax
 0046DBB7    mov         eax,dword ptr [ebp-0C]
 0046DBBA    cmp         word ptr [eax],1B
>0046DBBE    jne         0046DBCD
 0046DBC0    mov         edx,dword ptr [ebp-4]
 0046DBC3    mov         dword ptr [edx+24C],2;TFExplorer_11011981.FModalResult:TModalResult
 0046DBCD    mov         esp,ebp
 0046DBCF    pop         ebp
 0046DBD0    ret         4
*}
end;

//0046DBD4
procedure TFExplorer_11011981.FormShow(Sender:TObject);
begin
{*
 0046DBD4    push        ebp
 0046DBD5    mov         ebp,esp
 0046DBD7    add         esp,0FFFFFFF8
 0046DBDA    mov         dword ptr [ebp-8],edx
 0046DBDD    mov         dword ptr [ebp-4],eax
 0046DBE0    mov         eax,dword ptr [ebp-4]
 0046DBE3    xor         edx,edx
 0046DBE5    mov         dword ptr [eax+344],edx;TFExplorer_11011981.?f344:dword
 0046DBEB    pop         ecx
 0046DBEC    pop         ecx
 0046DBED    pop         ebp
 0046DBEE    ret
*}
end;

//0046DBF0
procedure TFExplorer_11011981.rgDataViewStyleClick(Sender:TObject);
begin
{*
 0046DBF0    push        ebp
 0046DBF1    mov         ebp,esp
 0046DBF3    add         esp,0FFFFFFF8
 0046DBF6    mov         dword ptr [ebp-8],edx
 0046DBF9    mov         dword ptr [ebp-4],eax
 0046DBFC    mov         ecx,400
 0046DC01    mov         eax,dword ptr [ebp-4]
 0046DC04    mov         edx,dword ptr [eax+340];TFExplorer_11011981.?f340:dword
 0046DC0A    mov         eax,dword ptr [ebp-4]
 0046DC0D    call        0046C894
 0046DC12    pop         ecx
 0046DC13    pop         ecx
 0046DC14    pop         ebp
 0046DC15    ret
*}
end;

//0046DC18
procedure TFExplorer_11011981.FormCreate(Sender:TObject);
begin
{*
 0046DC18    push        ebp
 0046DC19    mov         ebp,esp
 0046DC1B    add         esp,0FFFFFFF8
 0046DC1E    mov         dword ptr [ebp-8],edx
 0046DC21    mov         dword ptr [ebp-4],eax
 0046DC24    mov         eax,dword ptr [ebp-4]
 0046DC27    call        00531284
 0046DC2C    pop         ecx
 0046DC2D    pop         ecx
 0046DC2E    pop         ebp
 0046DC2F    ret
*}
end;

//0046DCD8
destructor TFExplorer_11011981.Destroy;
begin
{*
 0046DCD8    push        ebp
 0046DCD9    mov         ebp,esp
 0046DCDB    add         esp,0FFFFFFD4
 0046DCDE    call        0067EF81
 0046DCE3    mov         byte ptr [ebp-29],dl
 0046DCE6    mov         dword ptr [ebp-28],eax
 0046DCE9    mov         eax,6B158C
 0046DCEE    call        0066FECC
 0046DCF3    mov         dl,byte ptr [ebp-29]
 0046DCF6    test        dl,dl
>0046DCF8    jl          0046DD08
 0046DCFA    sub         dword ptr [ebp-8],10
 0046DCFE    xor         edx,edx
 0046DD00    mov         eax,dword ptr [ebp-28]
 0046DD03    call        0040235C
 0046DD08    mov         ecx,dword ptr [ebp-24]
 0046DD0B    mov         dword ptr fs:[0],ecx
 0046DD12    mov         al,byte ptr [ebp-29]
 0046DD15    test        al,al
>0046DD17    jle         0046DD21
 0046DD19    mov         eax,dword ptr [ebp-28]
 0046DD1C    call        0067EF74
 0046DD21    mov         esp,ebp
 0046DD23    pop         ebp
 0046DD24    ret
*}
end;

end.