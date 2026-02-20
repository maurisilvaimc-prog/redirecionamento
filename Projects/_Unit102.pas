//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit102;

interface

uses
  SysUtils, Classes;

    procedure sub_0066F4F8;//0066F4F8

implementation

//0066F4F8
procedure sub_0066F4F8;
begin
{*
 0066F4F8    push        ebp
 0066F4F9    mov         ebp,esp
 0066F4FB    add         esp,0FFFFFFDC
 0066F4FE    mov         eax,6E5284
 0066F503    call        0066FECC
 0066F508    mov         word ptr [ebp-14],8
 0066F50E    push        6ED9F4
 0066F513    call        KERNEL32.InitializeCriticalSection
 0066F518    inc         dword ptr [ebp-8]
 0066F51B    inc         dword ptr [ebp-8]
 0066F51E    inc         dword ptr [ebp-8]
 0066F521    inc         dword ptr [ebp-8]
 0066F524    mov         dword ptr ds:[6EDA0C],1;gvar_006EDA0C
 0066F52E    mov         edx,6E4F84
 0066F533    mov         ecx,6E52DC
 0066F538    mov         dword ptr ds:[6EDA10],edx;gvar_006EDA10
 0066F53E    mov         dword ptr ds:[6EDA10],ecx;gvar_006EDA10
 0066F544    inc         dword ptr [ebp-8]
 0066F547    mov         eax,6E4F84
 0066F54C    mov         [006EDA14],eax;gvar_006EDA14
 0066F551    mov         edx,6E52C8
 0066F556    mov         dword ptr ds:[6EDA14],edx;gvar_006EDA14
 0066F55C    mov         ecx,dword ptr [ebp-24]
 0066F55F    mov         dword ptr fs:[0],ecx
 0066F566    mov         esp,ebp
 0066F568    pop         ebp
 0066F569    ret
*}
end;

end.