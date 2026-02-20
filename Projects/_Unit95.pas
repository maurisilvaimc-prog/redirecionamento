//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit95;

interface

uses
  SysUtils, Classes;

    procedure sub_0065EEA4;//0065EEA4

implementation

//0065EEA4
procedure sub_0065EEA4;
begin
{*
 0065EEA4    push        ebp
 0065EEA5    mov         ebp,esp
 0065EEA7    xor         eax,eax
 0065EEA9    push        ebp
 0065EEAA    push        65EF0C
 0065EEAF    push        dword ptr fs:[eax]
 0065EEB2    mov         dword ptr fs:[eax],esp
 0065EEB5    sub         dword ptr ds:[6ED120],1
>0065EEBC    jae         0065EEFE
 0065EEBE    mov         eax,65EA54;_NF__AD4
 0065EEC3    call        @InitResStringImports
 0065EEC8    mov         eax,65EB40;_NF__AD5
 0065EECD    call        @InitImports
 0065EED2    cmp         byte ptr ds:[6EA386],0;gvar_006EA386
>0065EED9    je          0065EEEA
 0065EEDB    mov         eax,6E4A14;gvar_006E4A14
 0065EEE0    mov         edx,65EF20;'0x'
 0065EEE5    call        @LStrAsg
 0065EEEA    call        0065CD40
 0065EEEF    call        0065CE38
 0065EEF4    call        0065E0DC
 0065EEF9    call        0065DAAC
 0065EEFE    xor         eax,eax
 0065EF00    pop         edx
 0065EF01    pop         ecx
 0065EF02    pop         ecx
 0065EF03    mov         dword ptr fs:[eax],edx
 0065EF06    push        65EF13
 0065EF0B    ret
>0065EF0C    jmp         @HandleFinally
>0065EF11    jmp         0065EF0B
 0065EF13    pop         ebp
 0065EF14    ret
*}
end;

end.