//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit121;

interface

uses
  SysUtils, Classes;

    procedure sub_00679FD0;//00679FD0
    //procedure sub_0067A094(?:?; ?:?);//0067A094
    //procedure sub_0067A0F8(?:?);//0067A0F8
    //procedure sub_0067A108(?:?);//0067A108
    //procedure sub_0067A118(?:?);//0067A118

implementation

//00679FD0
procedure sub_00679FD0;
begin
{*
 00679FD0    push        6E7380
 00679FD5    push        6EE284;gvar_006EE284
 00679FDA    call        0067A094
 00679FDF    add         esp,8
 00679FE2    ret
*}
end;

//0067A094
{*procedure sub_0067A094(?:?; ?:?);
begin
 0067A094    push        ebp
 0067A095    mov         ebp,esp
 0067A097    push        6EE288
 0067A09C    call        KERNEL32.EnterCriticalSection
 0067A0A1    cmp         dword ptr ds:[6F1288],200;gvar_006F1288
>0067A0AB    jl          0067A0B7
 0067A0AD    mov         eax,dword ptr [ebp+0C]
 0067A0B0    push        eax
 0067A0B1    call        0067A118
 0067A0B6    pop         ecx
 0067A0B7    mov         edx,dword ptr ds:[6F1288];0x0 gvar_006F1288
 0067A0BD    shl         edx,3
 0067A0C0    lea         edx,[edx+edx*2]
 0067A0C3    add         edx,6EE288
 0067A0C9    push        edx
 0067A0CA    call        KERNEL32.InitializeCriticalSection
 0067A0CF    mov         ecx,dword ptr ds:[6F1288];0x0 gvar_006F1288
 0067A0D5    mov         eax,dword ptr [ebp+8]
 0067A0D8    shl         ecx,3
 0067A0DB    lea         ecx,[ecx+ecx*2]
 0067A0DE    add         ecx,6EE288
 0067A0E4    mov         dword ptr [eax],ecx
 0067A0E6    push        6EE288
 0067A0EB    inc         dword ptr ds:[6F1288];gvar_006F1288
 0067A0F1    call        KERNEL32.LeaveCriticalSection
 0067A0F6    pop         ebp
 0067A0F7    ret
end;*}

//0067A0F8
{*procedure sub_0067A0F8(?:?);
begin
 0067A0F8    push        ebp
 0067A0F9    mov         ebp,esp
 0067A0FB    mov         eax,dword ptr [ebp+8]
 0067A0FE    push        eax
 0067A0FF    call        KERNEL32.EnterCriticalSection
 0067A104    pop         ebp
 0067A105    ret
end;*}

//0067A108
{*procedure sub_0067A108(?:?);
begin
 0067A108    push        ebp
 0067A109    mov         ebp,esp
 0067A10B    mov         eax,dword ptr [ebp+8]
 0067A10E    push        eax
 0067A10F    call        KERNEL32.LeaveCriticalSection
 0067A114    pop         ebp
 0067A115    ret
end;*}

//0067A118
{*procedure sub_0067A118(?:?);
begin
 0067A118    push        ebp
 0067A119    mov         ebp,esp
 0067A11B    add         esp,0FFFFFFB0
 0067A11E    push        esi
 0067A11F    push        edi
 0067A120    mov         esi,6E739C
 0067A125    lea         edi,[ebp-50]
 0067A128    mov         eax,edi
 0067A12A    mov         ecx,4
 0067A12F    rep movs    dword ptr [edi],dword ptr [esi]
 0067A131    movs        byte ptr [edi],byte ptr [esi]
 0067A132    mov         edx,dword ptr [ebp+8]
 0067A135    push        edx
 0067A136    lea         ecx,[ebp-50]
 0067A139    push        ecx
 0067A13A    call        0066F9A8
 0067A13F    add         esp,8
 0067A142    lea         eax,[ebp-50]
 0067A145    push        eax
 0067A146    call        00678D94
 0067A14B    pop         ecx
 0067A14C    pop         edi
 0067A14D    pop         esi
 0067A14E    mov         esp,ebp
 0067A150    pop         ebp
 0067A151    ret
end;*}

end.