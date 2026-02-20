//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit118;

interface

uses
  SysUtils, Classes;

    procedure sub_006796EC;//006796EC
    //function sub_00679720(?:?):?;//00679720
    //function sub_00679A14(?:?):?;//00679A14
    //procedure sub_00679AA8(?:?);//00679AA8
    //function sub_00679AB8:?;//00679AB8
    //function sub_00679ABC:?;//00679ABC
    //procedure sub_00679AC0(?:?; ?:?);//00679AC0
    procedure sub_00679B94;//00679B94
    procedure sub_00679C00;//00679C00
    procedure sub_00679C10;//00679C10

implementation

//006796EC
procedure sub_006796EC;
begin
{*
 006796EC    call        006795A0
 006796F1    test        eax,eax
>006796F3    jne         00679701
 006796F5    push        6E72B5
 006796FA    call        00678D94
 006796FF    pop         ecx
 00679700    ret
 00679701    mov         eax,[006EE22C];0x0 gvar_006EE22C
 00679706    mov         [006EE244],eax;gvar_006EE244
 0067970B    push        6E72E5
 00679710    push        6EE238;gvar_006EE238
 00679715    call        0067A094
 0067971A    add         esp,8
 0067971D    ret
*}
end;

//00679720
{*function sub_00679720(?:?):?;
begin
 00679720    push        ebp
 00679721    mov         ebp,esp
 00679723    xor         eax,eax
 00679725    mov         edx,6E732C
 0067972A    mov         ecx,dword ptr [ebp+8]
 0067972D    cmp         ecx,dword ptr [edx]
>0067972F    je          0067973D
 00679731    inc         eax
 00679732    add         edx,4
 00679735    cmp         eax,0A
>00679738    jl          0067972D
 0067973A    or          eax,0FFFFFFFF
 0067973D    pop         ebp
 0067973E    ret
end;*}

//00679A14
{*function sub_00679A14(?:?):?;
begin
 00679A14    push        ebp
 00679A15    mov         ebp,esp
 00679A17    push        ebx
 00679A18    push        esi
 00679A19    push        edi
 00679A1A    mov         ebx,dword ptr [ebp+8]
 00679A1D    cmp         ebx,2
>00679A20    je          00679A27
 00679A22    cmp         ebx,15
>00679A25    jne         00679A2E
 00679A27    mov         edi,6E7304
>00679A2C    jmp         00679A47
 00679A2E    call        00679ECC
 00679A33    mov         esi,eax
 00679A35    test        eax,eax
>00679A37    je          00679A40
 00679A39    mov         edi,dword ptr [esi+28]
 00679A3C    test        edi,edi
>00679A3E    jne         00679A47
 00679A40    mov         eax,1
>00679A45    jmp         00679AA3
 00679A47    push        ebx
 00679A48    call        00679720
 00679A4D    pop         ecx
 00679A4E    mov         esi,eax
 00679A50    inc         eax
>00679A51    jne         00679A5A
 00679A53    mov         eax,1
>00679A58    jmp         00679AA3
 00679A5A    mov         eax,dword ptr [edi+esi*4]
 00679A5D    cmp         eax,1
>00679A60    je          00679AA1
 00679A62    test        eax,eax
>00679A64    jne         00679A8B
 00679A66    add         ebx,0FFFFFFF0
 00679A69    sub         ebx,2
>00679A6C    jb          00679AA1
 00679A6E    sub         ebx,2
>00679A71    je          00679AA1
 00679A73    sub         ebx,2
>00679A76    je          00679A7A
>00679A78    jmp         00679A81
 00679A7A    call        00678E38
>00679A7F    jmp         00679AA1
 00679A81    push        3
 00679A83    call        00678EE4
 00679A88    pop         ecx
>00679A89    jmp         00679AA1
 00679A8B    xor         edx,edx
 00679A8D    mov         dword ptr [edi+esi*4],edx
 00679A90    xor         edx,edx
 00679A92    mov         dl,byte ptr [esi+6E7354]
 00679A98    push        0
 00679A9A    push        edx
 00679A9B    push        ebx
 00679A9C    call        eax
 00679A9E    add         esp,0C
 00679AA1    xor         eax,eax
 00679AA3    pop         edi
 00679AA4    pop         esi
 00679AA5    pop         ebx
 00679AA6    pop         ebp
 00679AA7    ret
end;*}

//00679AA8
{*procedure sub_00679AA8(?:?);
begin
 00679AA8    push        ebp
 00679AA9    mov         ebp,esp
 00679AAB    mov         eax,dword ptr [ebp+8]
 00679AAE    push        eax
 00679AAF    call        KERNEL32.ExitProcess
 00679AB4    pop         ebp
 00679AB5    ret
end;*}

//00679AB8
{*function sub_00679AB8:?;
begin
 00679AB8    xor         eax,eax
 00679ABA    ret
end;*}

//00679ABC
{*function sub_00679ABC:?;
begin
 00679ABC    xor         eax,eax
 00679ABE    ret
end;*}

//00679AC0
{*procedure sub_00679AC0(?:?; ?:?);
begin
 00679AC0    push        ebp
 00679AC1    mov         ebp,esp
 00679AC3    add         esp,0FFFFFFEC
 00679AC6    push        ebx
 00679AC7    push        esi
 00679AC8    push        edi
 00679AC9    cmp         dword ptr [ebp+0C],0
>00679ACD    je          00679AE4
 00679ACF    mov         dword ptr [ebp-0C],0FFFFFFFF
 00679AD6    mov         dword ptr [ebp-10],0FFFFFFFF
 00679ADD    mov         eax,0FF
>00679AE2    jmp         00679AF4
 00679AE4    mov         dword ptr [ebp-0C],100
 00679AEB    mov         dword ptr [ebp-10],1
 00679AF2    xor         eax,eax
 00679AF4    mov         esi,eax
 00679AF6    cmp         esi,dword ptr [ebp-0C]
>00679AF9    je          00679B8B
 00679AFF    xor         eax,eax
 00679B01    mov         dword ptr [ebp-8],eax
 00679B04    mov         edx,dword ptr [ebp+8]
 00679B07    lea         ecx,[edx+4]
 00679B0A    mov         dword ptr [ebp-14],ecx
>00679B0D    jmp         00679B75
 00679B0F    mov         eax,dword ptr [ebp-14]
 00679B12    cmp         dword ptr [ebp+0C],0
 00679B16    mov         eax,dword ptr [eax]
>00679B18    je          00679B1F
 00679B1A    mov         edi,dword ptr [eax+8]
>00679B1D    jmp         00679B21
 00679B1F    mov         edi,dword ptr [eax]
 00679B21    cmp         dword ptr [ebp+0C],0
>00679B25    je          00679B2C
 00679B27    mov         edx,dword ptr [eax+0C]
>00679B2A    jmp         00679B2F
 00679B2C    mov         edx,dword ptr [eax+4]
 00679B2F    mov         dword ptr [ebp-4],edx
 00679B32    cmp         dword ptr [ebp+0C],0
>00679B36    jne         00679B53
 00679B38    mov         ebx,edi
 00679B3A    cmp         ebx,dword ptr [ebp-4]
>00679B3D    jae         00679B6E
 00679B3F    mov         eax,esi
 00679B41    cmp         al,byte ptr [ebx+1]
>00679B44    jne         00679B49
 00679B46    call        dword ptr [ebx+2]
 00679B49    add         ebx,6
 00679B4C    cmp         ebx,dword ptr [ebp-4]
>00679B4F    jb          00679B3F
>00679B51    jmp         00679B6E
 00679B53    mov         ebx,dword ptr [ebp-4]
 00679B56    add         ebx,0FFFFFFFA
 00679B59    cmp         edi,ebx
>00679B5B    ja          00679B6E
 00679B5D    mov         eax,esi
 00679B5F    cmp         al,byte ptr [ebx+1]
>00679B62    jne         00679B67
 00679B64    call        dword ptr [ebx+2]
 00679B67    sub         ebx,6
 00679B6A    cmp         edi,ebx
>00679B6C    jbe         00679B5D
 00679B6E    inc         dword ptr [ebp-8]
 00679B71    add         dword ptr [ebp-14],4
 00679B75    mov         edx,dword ptr [ebp+8]
 00679B78    mov         ecx,dword ptr [edx]
 00679B7A    cmp         ecx,dword ptr [ebp-8]
>00679B7D    jg          00679B0F
 00679B7F    add         esi,dword ptr [ebp-10]
 00679B82    cmp         esi,dword ptr [ebp-0C]
>00679B85    jne         00679AFF
 00679B8B    pop         edi
 00679B8C    pop         esi
 00679B8D    pop         ebx
 00679B8E    mov         esp,ebp
 00679B90    pop         ebp
 00679B91    ret
end;*}

//00679B94
procedure sub_00679B94;
begin
{*
 00679B94    push        ebx
 00679B95    push        esi
 00679B96    push        edi
 00679B97    cmp         dword ptr ds:[6E7364],0;gvar_006E7364
>00679B9E    jne         00679BFB
 00679BA0    mov         dword ptr ds:[6E7364],1;gvar_006E7364
 00679BAA    push        1
 00679BAC    push        6EE274;gvar_006EE274
 00679BB1    call        00679AC0
 00679BB6    add         esp,8
 00679BB9    push        1
 00679BBB    push        6EE254
 00679BC0    call        00679AC0
 00679BC5    add         esp,8
 00679BC8    call        00679ABC
 00679BCD    mov         edi,eax
 00679BCF    test        eax,eax
>00679BD1    je          00679BFB
 00679BD3    push        1
 00679BD5    push        edi
 00679BD6    call        00679AC0
 00679BDB    add         esp,8
 00679BDE    xor         esi,esi
 00679BE0    lea         ebx,[edi+4]
>00679BE3    jmp         00679BF7
 00679BE5    mov         eax,dword ptr [ebx]
 00679BE7    mov         edx,dword ptr [eax+14]
 00679BEA    push        edx
 00679BEB    push        1
 00679BED    call        dword ptr [eax+18]
 00679BF0    add         esp,8
 00679BF3    inc         esi
 00679BF4    add         ebx,4
 00679BF7    cmp         esi,dword ptr [edi]
>00679BF9    jl          00679BE5
 00679BFB    pop         edi
 00679BFC    pop         esi
 00679BFD    pop         ebx
 00679BFE    ret
*}
end;

//00679C00
procedure sub_00679C00;
begin
{*
 00679C00    mov         eax,[006EE268];0x0 gvar_006EE268
 00679C05    push        eax
 00679C06    call        0067A0F8
 00679C0B    pop         ecx
 00679C0C    ret
*}
end;

//00679C10
procedure sub_00679C10;
begin
{*
 00679C10    mov         eax,[006EE268];0x0 gvar_006EE268
 00679C15    push        eax
 00679C16    call        0067A108
 00679C1B    pop         ecx
 00679C1C    ret
*}
end;

end.