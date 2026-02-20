//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit105;

interface

uses
  SysUtils, Classes;

    procedure sub_00670AAC;//00670AAC
    procedure sub_00670AD8;//00670AD8
    procedure sub_00670B4C;//00670B4C
    //procedure sub_00670BD0(?:?);//00670BD0
    //procedure sub_00670CF4(?:?);//00670CF4
    //procedure sub_00670D10(?:?);//00670D10

implementation

//00670AAC
procedure sub_00670AAC;
begin
{*
 00670AAC    push        6E57D8
 00670AB1    push        0
 00670AB3    call        KERNEL32.GetModuleHandleA
 00670AB8    push        eax
 00670AB9    call        KERNEL32.GetProcAddress
 00670ABE    mov         [006EDE40],eax;gvar_006EDE40
 00670AC3    cmp         dword ptr ds:[6EDE40],0;gvar_006EDE40
>00670ACA    jne         00670AD6
 00670ACC    mov         dword ptr ds:[6EDE40],694098
 00670AD6    ret
*}
end;

//00670AD8
procedure sub_00670AD8;
begin
{*
 00670AD8    push        ebp
 00670AD9    mov         ebp,esp
 00670ADB    add         esp,0FFFFFFDC
 00670ADE    mov         eax,6E5808
 00670AE3    push        ebx
 00670AE4    push        esi
 00670AE5    push        edi
 00670AE6    call        0066FECC
 00670AEB    call        @GetTls
 00670AF0    and         dword ptr [eax+14],0FFFFFFFD;{threadvar_20}
 00670AF7    mov         edx,dword ptr ds:[6EDE40];0x0 gvar_006EDE40
 00670AFD    cmp         dword ptr [edx],2
>00670B00    jne         00670B14
 00670B02    push        dword ptr ds:[6E56FC];gvar_006E56FC
 00670B08    push        1
 00670B0A    push        4
 00670B0C    call        0067A8D5
 00670B11    add         esp,0C
 00670B14    call        00671508
 00670B19    mov         eax,[006E56FC];0x0 gvar_006E56FC
 00670B1E    mov         word ptr [ebp-14],8
 00670B24    call        eax
 00670B26    mov         word ptr [ebp-14],0
>00670B2C    jmp         00670B33
 00670B2E    call        0067AF32
 00670B33    call        00678E4C
 00670B38    mov         edx,dword ptr [ebp-24]
 00670B3B    mov         dword ptr fs:[0],edx
 00670B42    pop         edi
 00670B43    pop         esi
 00670B44    pop         ebx
 00670B45    mov         esp,ebp
 00670B47    pop         ebp
 00670B48    ret
*}
end;

//00670B4C
procedure sub_00670B4C;
begin
{*
 00670B4C    call        @GetTls
 00670B51    and         dword ptr [eax+14],0FFFFFFFD;{threadvar_20}
 00670B58    mov         eax,[006EDE40];0x0 gvar_006EDE40
 00670B5D    cmp         dword ptr [eax],2
>00670B60    jne         00670B74
 00670B62    push        dword ptr ds:[6E5700];gvar_006E5700
 00670B68    push        1
 00670B6A    push        5
 00670B6C    call        0067A8D5
 00670B71    add         esp,0C
 00670B74    mov         eax,[006E5700];0x0 gvar_006E5700
 00670B79    call        eax
 00670B7B    call        00678E4C
 00670B80    ret
*}
end;

//00670BD0
{*procedure sub_00670BD0(?:?);
begin
 00670BD0    push        ebp
 00670BD1    mov         ebp,esp
 00670BD3    push        ebx
 00670BD4    mov         ebx,dword ptr [ebp+8]
 00670BD7    call        @GetTls
 00670BDC    add         eax,2C
 00670BE2    mov         [006E574C],eax;gvar_006E574C
 00670BE7    mov         dword ptr [ebx],82727349
 00670BED    mov         dword ptr [ebx+4],6E5738
 00670BF4    pop         ebx
 00670BF5    pop         ebp
 00670BF6    ret
end;*}

//00670CF4
{*procedure sub_00670CF4(?:?);
begin
 00670CF4    push        ebp
 00670CF5    mov         ebp,esp
 00670CF7    mov         eax,dword ptr [ebp+8]
 00670CFA    xor         edx,edx
 00670CFC    mov         dword ptr [eax],edx
 00670CFE    mov         dword ptr [eax+4],670C04
 00670D05    push        eax
 00670D06    call        00670D80
 00670D0B    pop         ecx
 00670D0C    pop         ebp
 00670D0D    ret
end;*}

//00670D10
{*procedure sub_00670D10(?:?);
begin
 00670D10    push        ebp
 00670D11    mov         ebp,esp
 00670D13    mov         eax,dword ptr [ebp+8]
 00670D16    push        eax
 00670D17    call        00670D95
 00670D1C    pop         ecx
 00670D1D    pop         ebp
 00670D1E    ret
end;*}

end.