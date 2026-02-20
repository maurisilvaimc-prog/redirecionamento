//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit4;

interface

uses
  SysUtils, Classes;

    @@Typeinfo@Initialize; stdcall;//0046C354
    @@Typeinfo@Finalize; stdcall;//0046C364
    constructor Create(AOwner:TComponent);//0046C374
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);//0046C3F4
    procedure FormCreate(Sender:TObject);//0046C420
    destructor Destroy;//0046C4CC

implementation

//0046C374
constructor TFStringInfo_11011981.Create(AOwner:TComponent);
begin
{*
 0046C374    push        ebp
 0046C375    mov         ebp,esp
 0046C377    add         esp,0FFFFFFD0
 0046C37A    mov         byte ptr [ebp-8],dl
 0046C37D    test        dl,dl
>0046C37F    jle         0046C386
 0046C381    call        0067EF6C
 0046C386    mov         dword ptr [ebp-30],ecx
 0046C389    mov         byte ptr [ebp-29],dl
 0046C38C    mov         dword ptr [ebp-4],eax
 0046C38F    mov         eax,6B0B08
 0046C394    call        0066FECC
 0046C399    mov         word ptr [ebp-18],8
 0046C39F    mov         ecx,dword ptr [ebp-30]
 0046C3A2    xor         edx,edx
 0046C3A4    mov         eax,dword ptr [ebp-4]
 0046C3A7    call        0040207C
 0046C3AC    add         dword ptr [ebp-0C],10
 0046C3B0    mov         edx,dword ptr [ebp-28]
 0046C3B3    mov         dword ptr fs:[0],edx
 0046C3BA    mov         eax,dword ptr [ebp-4]
 0046C3BD    mov         dl,byte ptr [ebp-29]
 0046C3C0    test        dl,dl
>0046C3C2    je          0046C3C9
 0046C3C4    call        0067EF79
 0046C3C9    mov         esp,ebp
 0046C3CB    pop         ebp
 0046C3CC    ret
*}
end;

//0046C3F4
procedure TFStringInfo_11011981.FormKeyDown(Sender:TObject; var Key:Word; Shift:TShiftState);
begin
{*
 0046C3F4    push        ebp
 0046C3F5    mov         ebp,esp
 0046C3F7    add         esp,0FFFFFFF4
 0046C3FA    mov         dword ptr [ebp-0C],ecx
 0046C3FD    mov         dword ptr [ebp-8],edx
 0046C400    mov         dword ptr [ebp-4],eax
 0046C403    mov         eax,dword ptr [ebp-0C]
 0046C406    cmp         word ptr [eax],1B
>0046C40A    jne         0046C419
 0046C40C    mov         edx,dword ptr [ebp-4]
 0046C40F    mov         dword ptr [edx+24C],2;TFStringInfo_11011981.FModalResult:TModalResult
 0046C419    mov         esp,ebp
 0046C41B    pop         ebp
 0046C41C    ret         4
*}
end;

//0046C420
procedure TFStringInfo_11011981.FormCreate(Sender:TObject);
begin
{*
 0046C420    push        ebp
 0046C421    mov         ebp,esp
 0046C423    add         esp,0FFFFFFF8
 0046C426    mov         dword ptr [ebp-8],edx
 0046C429    mov         dword ptr [ebp-4],eax
 0046C42C    mov         eax,dword ptr [ebp-4]
 0046C42F    call        00531284
 0046C434    pop         ecx
 0046C435    pop         ecx
 0046C436    pop         ebp
 0046C437    ret
*}
end;

//0046C4CC
destructor TFStringInfo_11011981.Destroy;
begin
{*
 0046C4CC    push        ebp
 0046C4CD    mov         ebp,esp
 0046C4CF    add         esp,0FFFFFFD4
 0046C4D2    call        0067EF81
 0046C4D7    mov         byte ptr [ebp-29],dl
 0046C4DA    mov         dword ptr [ebp-28],eax
 0046C4DD    mov         eax,6B0CB4
 0046C4E2    call        0066FECC
 0046C4E7    mov         dl,byte ptr [ebp-29]
 0046C4EA    test        dl,dl
>0046C4EC    jl          0046C4FC
 0046C4EE    sub         dword ptr [ebp-8],10
 0046C4F2    xor         edx,edx
 0046C4F4    mov         eax,dword ptr [ebp-28]
 0046C4F7    call        0040235C
 0046C4FC    mov         ecx,dword ptr [ebp-24]
 0046C4FF    mov         dword ptr fs:[0],ecx
 0046C506    mov         al,byte ptr [ebp-29]
 0046C509    test        al,al
>0046C50B    jle         0046C515
 0046C50D    mov         eax,dword ptr [ebp-28]
 0046C510    call        0067EF74
 0046C515    mov         esp,ebp
 0046C517    pop         ebp
 0046C518    ret
*}
end;

end.