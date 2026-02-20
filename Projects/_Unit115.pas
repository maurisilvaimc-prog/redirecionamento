//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit115;

interface

uses
  SysUtils, Classes;

    procedure sub_00678DAC;//00678DAC
    procedure sub_00678E38;//00678E38
    procedure sub_00678E4C;//00678E4C
    //procedure sub_00678E60(?:?; ?:?; ?:?);//00678E60
    //procedure sub_00678ECC(?:?);//00678ECC
    //procedure sub_00678EE4(?:?);//00678EE4
    //procedure sub_00678F1C(?:?; ?:?);//00678F1C
    //procedure sub_00678F60(?:?; ?:?; ?:?; ?:?);//00678F60

implementation

//00678DAC
procedure sub_00678DAC;
begin
{*
 00678DAC    push        ebx
 00678DAD    add         esp,0FFFFFF6C
 00678DB3    push        6E7164;'kernel32.dll'
 00678DB8    call        KERNEL32.GetModuleHandleA
 00678DBD    mov         ebx,eax
 00678DBF    push        6E7171
 00678DC4    push        ebx
 00678DC5    call        KERNEL32.GetProcAddress
 00678DCA    push        6E7180
 00678DCF    push        ebx
 00678DD0    call        eax
 00678DD2    test        eax,eax
>00678DD4    je          00678DE2
 00678DD6    mov         dword ptr ds:[6EE214],1;gvar_006EE214
>00678DE0    jmp         00678E2D
 00678DE2    mov         dword ptr [esp],94
 00678DE9    push        esp
 00678DEA    call        KERNEL32.GetVersionExA
 00678DEF    mov         eax,dword ptr [esp+10]
 00678DF3    sub         eax,1
>00678DF6    jb          00678DFF
>00678DF8    je          00678E0B
 00678DFA    dec         eax
>00678DFB    je          00678E17
>00678DFD    jmp         00678E23
 00678DFF    mov         dword ptr ds:[6EE214],2;gvar_006EE214
>00678E09    jmp         00678E2D
 00678E0B    mov         dword ptr ds:[6EE214],8;gvar_006EE214
>00678E15    jmp         00678E2D
 00678E17    mov         dword ptr ds:[6EE214],4;gvar_006EE214
>00678E21    jmp         00678E2D
 00678E23    mov         dword ptr ds:[6EE214],2;gvar_006EE214
 00678E2D    add         esp,94
 00678E33    pop         ebx
 00678E34    ret
*}
end;

//00678E38
procedure sub_00678E38;
begin
{*
 00678E38    push        6E718C
 00678E3D    call        00678C68
 00678E42    pop         ecx
 00678E43    push        3
 00678E45    call        00678EE4
 00678E4A    pop         ecx
 00678E4B    ret
*}
end;

//00678E4C
procedure sub_00678E4C;
begin
{*
 00678E4C    push        16
 00678E4E    call        00679A14
 00678E53    pop         ecx
 00678E54    call        00678E38
 00678E59    ret
*}
end;

//00678E60
{*procedure sub_00678E60(?:?; ?:?; ?:?);
begin
 00678E60    push        ebp
 00678E61    mov         ebp,esp
 00678E63    push        ebx
 00678E64    mov         ebx,dword ptr [ebp+8]
 00678E67    call        00679C00
 00678E6C    test        ebx,ebx
>00678E6E    jne         00678E8C
 00678E70    cmp         dword ptr ds:[6E71AC],0;gvar_006E71AC
>00678E77    je          00678E7F
 00678E79    call        dword ptr ds:[6E71AC]
 00678E7F    call        00679B94
 00678E84    call        dword ptr ds:[6E71B0]
>00678E8A    jmp         00678E93
 00678E8C    xor         eax,eax
 00678E8E    mov         [006E71AC],eax;gvar_006E71AC
 00678E93    cmp         dword ptr [ebp+0C],0
>00678E97    jne         00678EC2
 00678E99    test        ebx,ebx
>00678E9B    jne         00678EA9
 00678E9D    call        dword ptr ds:[6E71B4]
 00678EA3    call        dword ptr ds:[6E71B8]
 00678EA9    call        00679C10
 00678EAE    call        00672114
 00678EB3    call        00673770
 00678EB8    mov         edx,dword ptr [ebp+10]
 00678EBB    push        edx
 00678EBC    call        00679AA8
 00678EC1    pop         ecx
 00678EC2    call        00679C10
 00678EC7    pop         ebx
 00678EC8    pop         ebp
 00678EC9    ret
end;*}

//00678ECC
{*procedure sub_00678ECC(?:?);
begin
 00678ECC    push        ebp
 00678ECD    mov         ebp,esp
 00678ECF    mov         eax,dword ptr [ebp+8]
 00678ED2    push        eax
 00678ED3    push        0
 00678ED5    push        0
 00678ED7    call        00678E60
 00678EDC    add         esp,0C
 00678EDF    pop         ebp
 00678EE0    ret
end;*}

//00678EE4
{*procedure sub_00678EE4(?:?);
begin
 00678EE4    push        ebp
 00678EE5    mov         ebp,esp
 00678EE7    mov         eax,dword ptr [ebp+8]
 00678EEA    push        eax
 00678EEB    push        0
 00678EED    push        1
 00678EEF    call        00678E60
 00678EF4    add         esp,0C
 00678EF7    pop         ebp
 00678EF8    ret
end;*}

//00678F1C
{*procedure sub_00678F1C(?:?; ?:?);
begin
 00678F1C    push        ebp
 00678F1D    mov         ebp,esp
 00678F1F    mov         eax,dword ptr [ebp+8]
 00678F22    mov         ecx,dword ptr [ebp+0C]
 00678F25    mov         edx,dword ptr [eax]
 00678F27    mov         dword ptr ds:[6E726C],edx;gvar_006E726C
 00678F2D    mov         eax,dword ptr [ecx]
 00678F2F    mov         [006E7270],eax;gvar_006E7270:Extended
 00678F34    pop         ebp
 00678F35    ret
end;*}

//00678F60
{*procedure sub_00678F60(?:?; ?:?; ?:?; ?:?);
begin
 00678F60    push        ebp
 00678F61    mov         ebp,esp
 00678F63    mov         eax,dword ptr [ebp+8]
 00678F66    mov         edx,dword ptr [ebp+0C]
 00678F69    mov         [006E71BC],eax;gvar_006E71BC
 00678F6E    mov         dword ptr ds:[6E71C0],edx;gvar_006E71C0:Extended
 00678F74    mov         ecx,dword ptr [ebp+10]
 00678F77    mov         eax,dword ptr [ebp+14]
 00678F7A    mov         dword ptr ds:[6E71C4],ecx;gvar_006E71C4
 00678F80    mov         [006E71C8],eax;gvar_006E71C8
 00678F85    pop         ebp
 00678F86    ret
end;*}

end.