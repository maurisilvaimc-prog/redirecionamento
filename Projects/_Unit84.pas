//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit84;

interface

uses
  SysUtils, Classes;

    procedure sub_00652CC0;//00652CC0
    //function sub_00652CC8(?:AnsiString; ?:dword):?;//00652CC8
    //procedure sub_00652D3C(?:AnsiString; ?:?; ?:?; ?:?);//00652D3C
    //function sub_00652D70(?:?; ?:?):?;//00652D70
    //function sub_00652E34(?:?; ?:?):?;//00652E34
    //function sub_00652F10(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00652F10

implementation

//00652CC0
procedure sub_00652CC0;
begin
{*
 00652CC0    sub         dword ptr ds:[6ECFD4],1
 00652CC7    ret
*}
end;

//00652CC8
{*function sub_00652CC8(?:AnsiString; ?:dword):?;
begin
 00652CC8    push        ebp
 00652CC9    mov         ebp,esp
 00652CCB    add         esp,0FFFFFFEC
 00652CCE    xor         ecx,ecx
 00652CD0    mov         dword ptr [ebp-10],ecx
 00652CD3    mov         dword ptr [ebp-14],ecx
 00652CD6    mov         dword ptr [ebp-8],edx
 00652CD9    mov         dword ptr [ebp-4],eax
 00652CDC    xor         eax,eax
 00652CDE    push        ebp
 00652CDF    push        652D2E
 00652CE4    push        dword ptr fs:[eax]
 00652CE7    mov         dword ptr fs:[eax],esp
 00652CEA    lea         edx,[ebp-10]
 00652CED    mov         eax,dword ptr [ebp-4]
 00652CF0    call        AnsiUpperCase
 00652CF5    mov         eax,dword ptr [ebp-10]
 00652CF8    push        eax
 00652CF9    lea         edx,[ebp-14]
 00652CFC    mov         eax,dword ptr [ebp-8]
 00652CFF    call        AnsiUpperCase
 00652D04    mov         eax,dword ptr [ebp-14]
 00652D07    pop         edx
 00652D08    call        AnsiPos
 00652D0D    test        eax,eax
 00652D0F    setg        byte ptr [ebp-9]
 00652D13    xor         eax,eax
 00652D15    pop         edx
 00652D16    pop         ecx
 00652D17    pop         ecx
 00652D18    mov         dword ptr fs:[eax],edx
 00652D1B    push        652D35
 00652D20    lea         eax,[ebp-14]
 00652D23    mov         edx,2
 00652D28    call        @LStrArrayClr
 00652D2D    ret
>00652D2E    jmp         @HandleFinally
>00652D33    jmp         00652D20
 00652D35    mov         al,byte ptr [ebp-9]
 00652D38    mov         esp,ebp
 00652D3A    pop         ebp
 00652D3B    ret
end;*}

//00652D3C
{*procedure sub_00652D3C(?:AnsiString; ?:?; ?:?; ?:?);
begin
 00652D3C    push        ebp
 00652D3D    mov         ebp,esp
 00652D3F    add         esp,0FFFFFFF4
 00652D42    mov         dword ptr [ebp-0C],ecx
 00652D45    mov         dword ptr [ebp-8],edx
 00652D48    mov         dword ptr [ebp-4],eax
 00652D4B    mov         al,[00652D6C];0x3 gvar_00652D6C
 00652D50    push        eax
 00652D51    mov         eax,dword ptr [ebp+8]
 00652D54    push        eax
 00652D55    mov         ecx,dword ptr [ebp-0C]
 00652D58    mov         edx,dword ptr [ebp-8]
 00652D5B    mov         eax,dword ptr [ebp-4]
 00652D5E    call        0065DE40
 00652D63    mov         esp,ebp
 00652D65    pop         ebp
 00652D66    ret         4
end;*}

//00652D70
{*function sub_00652D70(?:?; ?:?):?;
begin
 00652D70    push        ebp
 00652D71    mov         ebp,esp
 00652D73    add         esp,0FFFFFFF4
 00652D76    mov         dword ptr [ebp-8],edx
 00652D79    mov         dword ptr [ebp-4],eax
 00652D7C    mov         edx,dword ptr [ebp-4]
 00652D7F    mov         eax,dword ptr [ebp-8]
 00652D82    call        AnsiPos
 00652D87    test        eax,eax
 00652D89    setg        byte ptr [ebp-9]
 00652D8D    mov         al,byte ptr [ebp-9]
 00652D90    mov         esp,ebp
 00652D92    pop         ebp
 00652D93    ret
end;*}

//00652E34
{*function sub_00652E34(?:?; ?:?):?;
begin
 00652E34    push        ebp
 00652E35    mov         ebp,esp
 00652E37    add         esp,0FFFFFFF8
 00652E3A    mov         dword ptr [ebp-4],eax
>00652E3D    jmp         00652E57
 00652E3F    mov         eax,dword ptr [ebp+8]
 00652E42    movsx       eax,byte ptr [eax-109]
 00652E49    mov         edx,dword ptr [ebp-4]
 00652E4C    add         dword ptr [edx],eax
 00652E4E    mov         eax,dword ptr [ebp+8]
 00652E51    dec         dword ptr [eax-108]
 00652E57    mov         eax,dword ptr [ebp+8]
 00652E5A    cmp         dword ptr [eax-108],0
>00652E61    jle         00652EA4
 00652E63    mov         eax,dword ptr [ebp-4]
 00652E66    mov         eax,dword ptr [eax]
 00652E68    mov         al,byte ptr [eax]
 00652E6A    and         eax,0FF
 00652E6F    bt          dword ptr ds:[6E4920],eax;gvar_006E4920
 00652E76    setb        al
 00652E79    mov         edx,dword ptr [ebp+8]
 00652E7C    cmp         byte ptr [edx-109],1
 00652E83    sete        dl
 00652E86    xor         al,dl
>00652E88    jne         00652E3F
>00652E8A    jmp         00652EA4
 00652E8C    mov         eax,dword ptr [ebp+8]
 00652E8F    movsx       eax,byte ptr [eax-109]
 00652E96    mov         edx,dword ptr [ebp-4]
 00652E99    add         dword ptr [edx],eax
 00652E9B    mov         eax,dword ptr [ebp+8]
 00652E9E    dec         dword ptr [eax-108]
 00652EA4    mov         eax,dword ptr [ebp+8]
 00652EA7    cmp         dword ptr [eax-108],0
>00652EAE    jle         00652ED7
 00652EB0    mov         eax,dword ptr [ebp-4]
 00652EB3    mov         eax,dword ptr [eax]
 00652EB5    mov         al,byte ptr [eax]
 00652EB7    and         eax,0FF
 00652EBC    bt          dword ptr ds:[6E4920],eax;gvar_006E4920
 00652EC3    setb        al
 00652EC6    mov         edx,dword ptr [ebp+8]
 00652EC9    cmp         byte ptr [edx-109],0FF
 00652ED0    sete        dl
 00652ED3    xor         al,dl
>00652ED5    jne         00652E8C
 00652ED7    mov         eax,dword ptr [ebp+8]
 00652EDA    cmp         dword ptr [eax-108],0
 00652EE1    setg        byte ptr [ebp-5]
 00652EE5    mov         eax,dword ptr [ebp+8]
 00652EE8    cmp         byte ptr [eax-109],0FF
>00652EEF    jne         00652F09
 00652EF1    mov         eax,dword ptr [ebp+8]
 00652EF4    movsx       eax,byte ptr [eax-109]
 00652EFB    mov         edx,dword ptr [ebp-4]
 00652EFE    sub         dword ptr [edx],eax
 00652F00    mov         eax,dword ptr [ebp+8]
 00652F03    inc         dword ptr [eax-108]
 00652F09    mov         al,byte ptr [ebp-5]
 00652F0C    pop         ecx
 00652F0D    pop         ecx
 00652F0E    pop         ebp
 00652F0F    ret
end;*}

//00652F10
{*function sub_00652F10(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00652F10    push        ebp
 00652F11    mov         ebp,esp
 00652F13    add         esp,0FFFFFEDC
 00652F19    mov         dword ptr [ebp-118],ecx
 00652F1F    mov         dword ptr [ebp-114],edx
 00652F25    mov         dword ptr [ebp-110],eax
 00652F2B    mov         eax,dword ptr [ebp+0C]
 00652F2E    call        @LStrAddRef
 00652F33    xor         eax,eax
 00652F35    push        ebp
 00652F36    push        653151
 00652F3B    push        dword ptr fs:[eax]
 00652F3E    mov         dword ptr fs:[eax],esp
 00652F41    xor         eax,eax
 00652F43    mov         dword ptr [ebp-11C],eax
 00652F49    cmp         dword ptr [ebp-114],0
>00652F50    jle         0065313B
 00652F56    test        byte ptr [ebp+8],1
>00652F5A    je          00652FB0
 00652F5C    mov         byte ptr [ebp-109],1
 00652F63    mov         eax,dword ptr [ebp+10]
 00652F66    add         dword ptr [ebp-118],eax
 00652F6C    mov         eax,dword ptr [ebp+0C]
 00652F6F    call        @LStrLen
 00652F74    mov         edx,dword ptr [ebp-114]
 00652F7A    sub         edx,dword ptr [ebp-118]
 00652F80    sub         edx,eax
 00652F82    inc         edx
 00652F83    mov         dword ptr [ebp-108],edx
 00652F89    cmp         dword ptr [ebp-108],0
>00652F90    jl          0065313B
 00652F96    mov         eax,dword ptr [ebp-118]
 00652F9C    add         eax,dword ptr [ebp-108]
 00652FA2    cmp         eax,dword ptr [ebp-114]
>00652FA8    jg          0065313B
>00652FAE    jmp         00652FD2
 00652FB0    mov         byte ptr [ebp-109],0FF
 00652FB7    mov         eax,dword ptr [ebp+0C]
 00652FBA    call        @LStrLen
 00652FBF    sub         dword ptr [ebp-118],eax
 00652FC5    mov         eax,dword ptr [ebp-118]
 00652FCB    inc         eax
 00652FCC    mov         dword ptr [ebp-108],eax
 00652FD2    cmp         dword ptr [ebp-118],0
>00652FD9    jl          0065313B
 00652FDF    mov         eax,dword ptr [ebp-118]
 00652FE5    cmp         eax,dword ptr [ebp-114]
>00652FEB    jg          0065313B
 00652FF1    mov         eax,dword ptr [ebp-110]
 00652FF7    mov         edx,dword ptr [ebp-118]
 00652FFD    add         eax,edx
 00652FFF    mov         dword ptr [ebp-11C],eax
 00653005    mov         byte ptr [ebp-121],0
 0065300C    xor         eax,eax
 0065300E    mov         al,byte ptr [ebp-121]
 00653014    mov         dl,byte ptr [ebp-121]
 0065301A    mov         byte ptr [ebp+eax-101],dl
 00653021    inc         byte ptr [ebp-121]
 00653027    cmp         byte ptr [ebp-121],0
>0065302E    jne         0065300C
 00653030    mov         byte ptr [ebp-1],0
 00653034    test        byte ptr [ebp+8],2
>00653038    jne         00653062
 0065303A    push        100
 0065303F    lea         eax,[ebp-101]
 00653045    push        eax
 00653046    call        USER32.CharUpperBuffA
 0065304B    mov         eax,dword ptr [ebp+0C]
 0065304E    call        @LStrLen
 00653053    push        eax
 00653054    lea         eax,[ebp+0C]
 00653057    call        @UniqueStringA
 0065305C    push        eax
 0065305D    call        USER32.CharUpperBuffA
 00653062    cmp         dword ptr [ebp-108],0
>00653069    jle         00653133
 0065306F    test        byte ptr [ebp+8],4
>00653073    je          006530A0
 00653075    mov         eax,dword ptr [ebp-110]
 0065307B    mov         edx,dword ptr [ebp-118]
 00653081    add         eax,edx
 00653083    cmp         eax,dword ptr [ebp-11C]
>00653089    je          006530A0
 0065308B    push        ebp
 0065308C    lea         eax,[ebp-11C]
 00653092    call        00652E34
 00653097    pop         ecx
 00653098    test        al,al
>0065309A    je          00653133
 006530A0    xor         eax,eax
 006530A2    mov         dword ptr [ebp-120],eax
>006530A8    jmp         006530EE
 006530AA    inc         dword ptr [ebp-120]
 006530B0    mov         eax,dword ptr [ebp+0C]
 006530B3    call        @LStrLen
 006530B8    cmp         eax,dword ptr [ebp-120]
>006530BE    jg          006530EE
 006530C0    test        byte ptr [ebp+8],4
>006530C4    je          0065313B
 006530C6    cmp         dword ptr [ebp-108],0
>006530CD    je          0065313B
 006530CF    mov         eax,dword ptr [ebp-11C]
 006530D5    mov         edx,dword ptr [ebp-120]
 006530DB    mov         al,byte ptr [eax+edx]
 006530DE    and         eax,0FF
 006530E3    bt          dword ptr ds:[6E4920],eax;gvar_006E4920
>006530EA    jb          0065313B
>006530EC    jmp         00653113
 006530EE    mov         eax,dword ptr [ebp-11C]
 006530F4    mov         edx,dword ptr [ebp-120]
 006530FA    movzx       eax,byte ptr [eax+edx]
 006530FE    mov         al,byte ptr [ebp+eax-101]
 00653105    mov         edx,dword ptr [ebp+0C]
 00653108    mov         ecx,dword ptr [ebp-120]
 0065310E    cmp         al,byte ptr [edx+ecx]
>00653111    je          006530AA
 00653113    movsx       eax,byte ptr [ebp-109]
 0065311A    add         dword ptr [ebp-11C],eax
 00653120    dec         dword ptr [ebp-108]
 00653126    cmp         dword ptr [ebp-108],0
>0065312D    jg          0065306F
 00653133    xor         eax,eax
 00653135    mov         dword ptr [ebp-11C],eax
 0065313B    xor         eax,eax
 0065313D    pop         edx
 0065313E    pop         ecx
 0065313F    pop         ecx
 00653140    mov         dword ptr fs:[eax],edx
 00653143    push        653158
 00653148    lea         eax,[ebp+0C]
 0065314B    call        @LStrClr
 00653150    ret
>00653151    jmp         @HandleFinally
>00653156    jmp         00653148
 00653158    mov         eax,dword ptr [ebp-11C]
 0065315E    mov         esp,ebp
 00653160    pop         ebp
 00653161    ret         0C
end;*}

end.