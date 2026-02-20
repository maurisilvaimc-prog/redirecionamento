//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit99;

interface

uses
  SysUtils, Classes;

    procedure sub_0066E9FC;//0066E9FC
    //function sub_0066EA84(?:?; ?:?):?;//0066EA84
    //function sub_0066EAB0(?:?):?;//0066EAB0
    //procedure sub_0066EAC0(?:?);//0066EAC0
    //procedure sub_0066EAD0(?:?);//0066EAD0
    //function sub_0066EAE4(?:?):?;//0066EAE4
    //function sub_0066EC88(?:?):?;//0066EC88

implementation

//0066E9FC
procedure sub_0066E9FC;
begin
{*
 0066E9FC    sub         dword ptr ds:[6ED884],1
>0066EA03    jae         0066EA82
 0066EA05    mov         byte ptr ds:[6E4E7C],2;gvar_006E4E7C
 0066EA0C    mov         dword ptr ds:[6ED2D4],6926E0
 0066EA16    mov         dword ptr ds:[6ED2D8],6926FE
 0066EA20    mov         byte ptr ds:[6ED312],2;gvar_006ED312
 0066EA27    mov         dword ptr ds:[6ED2C0],66D600
 0066EA31    call        @isNECWindows
 0066EA36    test        al,al
>0066EA38    je          0066EA3F
 0066EA3A    call        @FpuMaskInit
 0066EA3F    call        @FpuInit
 0066EA44    mov         word ptr ds:[6ED318],0D7B0;gvar_006ED318
 0066EA4D    mov         word ptr ds:[6ED4E4],0D7B0;gvar_006ED4E4
 0066EA56    mov         word ptr ds:[6ED6B0],0D7B0;gvar_006ED6B0
 0066EA5F    call        InitVariantManager
 0066EA64    call        KERNEL32.GetCommandLineA
 0066EA69    mov         [006ED304],eax;gvar_006ED304
 0066EA6E    call        GetCmdShow
 0066EA73    mov         [006ED300],eax;gvar_006ED300:Integer
 0066EA78    call        KERNEL32.GetCurrentThreadId
 0066EA7D    mov         [006ED2F8],eax;gvar_006ED2F8:DWORD
 0066EA82    ret
*}
end;

//0066EA84
{*function sub_0066EA84(?:?; ?:?):?;
begin
 0066EA84    push        ebp
 0066EA85    mov         ebp,esp
 0066EA87    push        ebx
 0066EA88    push        esi
 0066EA89    mov         esi,dword ptr [ebp+8]
 0066EA8C    imul        esi,dword ptr [ebp+0C]
 0066EA90    push        esi
 0066EA91    call        0066F2C8
 0066EA96    pop         ecx
 0066EA97    mov         ebx,eax
 0066EA99    test        eax,eax
>0066EA9B    je          0066EAA9
 0066EA9D    push        esi
 0066EA9E    push        0
 0066EAA0    push        ebx
 0066EAA1    call        0066F904
 0066EAA6    add         esp,0C
 0066EAA9    mov         eax,ebx
 0066EAAB    pop         esi
 0066EAAC    pop         ebx
 0066EAAD    pop         ebp
 0066EAAE    ret
end;*}

//0066EAB0
{*function sub_0066EAB0(?:?):?;
begin
 0066EAB0    push        ebp
 0066EAB1    mov         ebp,esp
 0066EAB3    mov         eax,dword ptr [ebp+8]
 0066EAB6    push        eax
 0066EAB7    call        0066F2D8
 0066EABC    pop         ecx
 0066EABD    pop         ebp
 0066EABE    ret
end;*}

//0066EAC0
{*procedure sub_0066EAC0(?:?);
begin
 0066EAC0    push        ebp
 0066EAC1    mov         ebp,esp
 0066EAC3    mov         eax,dword ptr [ebp+8]
 0066EAC6    push        eax
 0066EAC7    call        0066EAB0
 0066EACC    pop         ecx
 0066EACD    pop         ebp
 0066EACE    ret
end;*}

//0066EAD0
{*procedure sub_0066EAD0(?:?);
begin
 0066EAD0    push        ebp
 0066EAD1    mov         ebp,esp
 0066EAD3    mov         eax,[006ED9D4];0x0 gvar_006ED9D4
 0066EAD8    mov         edx,dword ptr [ebp+8]
 0066EADB    mov         dword ptr ds:[6ED9D4],edx;gvar_006ED9D4
 0066EAE1    pop         ebp
 0066EAE2    ret
end;*}

//0066EAE4
{*function sub_0066EAE4(?:?):?;
begin
 0066EAE4    push        ebp
 0066EAE5    mov         ebp,esp
 0066EAE7    add         esp,0FFFFFFD8
 0066EAEA    mov         eax,6E4F40
 0066EAEF    push        ebx
 0066EAF0    push        esi
 0066EAF1    push        edi
 0066EAF2    lea         edi,[ebp-4]
 0066EAF5    mov         ebx,dword ptr [ebp+8]
 0066EAF8    call        0066FECC
 0066EAFD    test        ebx,ebx
>0066EAFF    jne         0066EB54
 0066EB01    mov         ebx,1
>0066EB06    jmp         0066EB54
 0066EB08    cmp         dword ptr ds:[6ED9D4],0;gvar_006ED9D4
>0066EB0F    je          0066EB19
 0066EB11    call        dword ptr ds:[6ED9D4]
>0066EB17    jmp         0066EB54
 0066EB19    lea         eax,[ebp-28]
 0066EB1C    mov         edx,6E4F84
 0066EB21    push        eax
 0066EB22    push        0
 0066EB24    push        0
 0066EB26    push        0
 0066EB28    push        1
 0066EB2A    push        66EBCC
 0066EB2F    push        0
 0066EB31    mov         ecx,6E4F98
 0066EB36    mov         word ptr [ebp-18],8
 0066EB3C    mov         dword ptr [edi],edx
 0066EB3E    inc         dword ptr [ebp-0C]
 0066EB41    mov         dword ptr [edi],ecx
 0066EB43    inc         dword ptr [ebp-0C]
 0066EB46    push        edi
 0066EB47    push        66EB74
 0066EB4C    call        0067AD11
 0066EB51    add         esp,24
 0066EB54    push        ebx
 0066EB55    call        0066F2C8
 0066EB5A    pop         ecx
 0066EB5B    mov         esi,eax
 0066EB5D    test        eax,eax
>0066EB5F    je          0066EB08
 0066EB61    mov         eax,esi
 0066EB63    mov         edx,dword ptr [ebp-28]
 0066EB66    mov         dword ptr fs:[0],edx
 0066EB6D    pop         edi
 0066EB6E    pop         esi
 0066EB6F    pop         ebx
 0066EB70    mov         esp,ebp
 0066EB72    pop         ebp
 0066EB73    ret
end;*}

//0066EC88
{*function sub_0066EC88(?:?):?;
begin
 0066EC88    push        ebp
 0066EC89    mov         ebp,esp
 0066EC8B    mov         eax,dword ptr [ebp+8]
 0066EC8E    push        eax
 0066EC8F    call        0066EAE4
 0066EC94    pop         ecx
 0066EC95    pop         ebp
 0066EC96    ret
end;*}

end.