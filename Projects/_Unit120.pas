//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit120;

interface

uses
  SysUtils, Classes;

    procedure sub_00679DF0;//00679DF0
    //function sub_00679E90(?:?; ?:?):?;//00679E90
    //function sub_00679ECC:?;//00679ECC
    //function sub_00679EF4:?;//00679EF4
    //function sub_00679F9C(?:?):?;//00679F9C

implementation

//00679DF0
procedure sub_00679DF0;
begin
{*
 00679DF0    push        ebx
 00679DF1    add         esp,0FFFFFF50
 00679DF7    xor         ebx,ebx
 00679DF9    mov         dword ptr [esp+1C],94
 00679E01    lea         eax,[esp+1C]
 00679E05    push        eax
 00679E06    call        KERNEL32.GetVersionExA
 00679E0B    cmp         dword ptr [esp+2C],1
>00679E10    jne         00679E17
 00679E12    mov         ebx,10000
 00679E17    push        1C
 00679E19    lea         eax,[esp+4]
 00679E1D    push        eax
 00679E1E    lea         edx,[esp+8]
 00679E22    push        edx
 00679E23    call        KERNEL32.VirtualQuery
 00679E28    call        @GetTls
 00679E2D    add         ebx,dword ptr [esp+4]
 00679E31    mov         dword ptr [eax+0AC],ebx
 00679E37    add         esp,0B0
 00679E3D    pop         ebx
 00679E3E    ret
*}
end;

//00679E90
{*function sub_00679E90(?:?; ?:?):?;
begin
 00679E90    push        ebp
 00679E91    mov         ebp,esp
 00679E93    push        ebx
 00679E94    push        esi
 00679E95    call        00679ECC
 00679E9A    mov         ebx,eax
 00679E9C    test        eax,eax
>00679E9E    jne         00679EA4
 00679EA0    xor         eax,eax
>00679EA2    jmp         00679EC7
 00679EA4    mov         esi,dword ptr [ebp+8]
 00679EA7    add         esi,ebx
 00679EA9    mov         ebx,dword ptr [esi]
 00679EAB    test        ebx,ebx
>00679EAD    jne         00679EC5
 00679EAF    mov         eax,dword ptr [ebp+0C]
 00679EB2    push        eax
 00679EB3    call        0066F2C8
 00679EB8    pop         ecx
 00679EB9    mov         ebx,eax
 00679EBB    test        eax,eax
>00679EBD    jne         00679EC3
 00679EBF    xor         eax,eax
>00679EC1    jmp         00679EC7
 00679EC3    mov         dword ptr [esi],ebx
 00679EC5    mov         eax,ebx
 00679EC7    pop         esi
 00679EC8    pop         ebx
 00679EC9    pop         ebp
 00679ECA    ret
end;*}

//00679ECC
{*function sub_00679ECC:?;
begin
 00679ECC    push        ebx
 00679ECD    call        @GetTls
 00679ED2    mov         ebx,dword ptr [eax+0B0];{threadvar_176}
 00679ED8    test        ebx,ebx
>00679EDA    jne         00679EEE
 00679EDC    call        00679EF4
 00679EE1    mov         ebx,eax
 00679EE3    call        @GetTls
 00679EE8    mov         dword ptr [eax+0B0],ebx;{threadvar_176}
 00679EEE    mov         eax,ebx
 00679EF0    pop         ebx
 00679EF1    ret
end;*}

//00679EF4
{*function sub_00679EF4:?;
begin
 00679EF4    push        ebx
 00679EF5    mov         eax,[006EE284];0x0 gvar_006EE284
 00679EFA    push        eax
 00679EFB    call        0067A0F8
 00679F00    pop         ecx
 00679F01    mov         ebx,dword ptr ds:[6EE280];0x0 gvar_006EE280
 00679F07    test        ebx,ebx
>00679F09    je          00679F15
 00679F0B    mov         edx,dword ptr [ebx]
 00679F0D    mov         dword ptr ds:[6EE280],edx;gvar_006EE280
>00679F13    jmp         00679F30
 00679F15    push        5C
 00679F17    call        0066F2C8
 00679F1C    pop         ecx
 00679F1D    mov         ebx,eax
 00679F1F    test        eax,eax
>00679F21    je          00679F30
 00679F23    push        5C
 00679F25    push        0
 00679F27    push        ebx
 00679F28    call        0066F904
 00679F2D    add         esp,0C
 00679F30    test        ebx,ebx
>00679F32    je          00679F88
 00679F34    mov         dword ptr [ebx+44],1
 00679F3B    xor         edx,edx
 00679F3D    xor         ecx,ecx
 00679F3F    mov         dword ptr [ebx+48],edx
 00679F42    xor         eax,eax
 00679F44    mov         dword ptr [ebx+54],ecx
 00679F47    xor         edx,edx
 00679F49    mov         dword ptr [ebx+2C],eax
 00679F4C    mov         dword ptr [ebx+58],edx
 00679F4F    cmp         dword ptr [ebx+4C],0
>00679F53    jne         00679F74
 00679F55    mov         ecx,dword ptr ds:[6E57D4];0x9C gvar_006E57D4
 00679F5B    push        ecx
 00679F5C    call        0066F2C8
 00679F61    pop         ecx
 00679F62    mov         dword ptr [ebx+4C],eax
 00679F65    test        eax,eax
>00679F67    jne         00679F74
 00679F69    push        ebx
 00679F6A    call        0066F2D8
 00679F6F    pop         ecx
 00679F70    xor         ebx,ebx
>00679F72    jmp         00679F88
 00679F74    mov         eax,[006E57D4];0x9C gvar_006E57D4
 00679F79    push        eax
 00679F7A    push        0
 00679F7C    mov         edx,dword ptr [ebx+4C]
 00679F7F    push        edx
 00679F80    call        0066F904
 00679F85    add         esp,0C
 00679F88    mov         ecx,dword ptr ds:[6EE284];0x0 gvar_006EE284
 00679F8E    push        ecx
 00679F8F    call        0067A108
 00679F94    pop         ecx
 00679F95    mov         eax,ebx
 00679F97    pop         ebx
 00679F98    ret
end;*}

//00679F9C
{*function sub_00679F9C(?:?):?;
begin
 00679F9C    push        ebp
 00679F9D    mov         ebp,esp
 00679F9F    push        ebx
 00679FA0    mov         ebx,dword ptr [ebp+8]
 00679FA3    mov         eax,[006EE284];0x0 gvar_006EE284
 00679FA8    push        eax
 00679FA9    call        0067A0F8
 00679FAE    pop         ecx
 00679FAF    mov         edx,dword ptr ds:[6EE280];0x0 gvar_006EE280
 00679FB5    mov         dword ptr [ebx],edx
 00679FB7    mov         dword ptr ds:[6EE280],ebx;gvar_006EE280
 00679FBD    mov         ecx,dword ptr ds:[6EE284];0x0 gvar_006EE284
 00679FC3    push        ecx
 00679FC4    call        0067A108
 00679FC9    pop         ecx
 00679FCA    pop         ebx
 00679FCB    pop         ebp
 00679FCC    ret
end;*}

end.