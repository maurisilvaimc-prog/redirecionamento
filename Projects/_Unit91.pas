//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit91;

interface

uses
  SysUtils, Classes;

    procedure sub_00656070;//00656070

implementation

//00656070
procedure sub_00656070;
begin
{*
 00656070    push        ebp
 00656071    mov         ebp,esp
 00656073    sub         dword ptr ds:[6ECFF0],1
>0065607A    jae         006560C7
 0065607C    call        006554A0
 00656081    mov         eax,655BD0
 00656086    mov         edx,dword ptr ds:[6EA2F4];^gvar_006ED14C
 0065608C    mov         dword ptr [edx],eax
 0065608E    mov         eax,[006EA36C];^gvar_006ED2C0
 00656093    mov         dword ptr [eax],655E98
 00656099    mov         eax,6555BC
 0065609E    mov         edx,dword ptr ds:[6EA368];^gvar_006ED2E0
 006560A4    mov         dword ptr [edx],eax
 006560A6    mov         eax,[006EA2D4];^gvar_006ED2FC
 006560AB    cmp         byte ptr [eax],0
>006560AE    jne         006560C7
 006560B0    mov         eax,[006EA2E0];^gvar_006ED308
 006560B5    mov         eax,dword ptr [eax]
 006560B7    mov         [006ECFFC],eax;gvar_006ECFFC
 006560BC    mov         eax,[006EA2E0];^gvar_006ED308
 006560C1    mov         dword ptr [eax],655F74
 006560C7    pop         ebp
 006560C8    ret
*}
end;

end.