//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit111;

interface

uses
  SysUtils, Classes;

    procedure sub_006778B0;//006778B0
    procedure sub_006778C8;//006778C8

implementation

//006778B0
procedure sub_006778B0;
begin
{*
 006778B0    mov         dword ptr ds:[6E6EF0],6775E0
 006778BA    mov         dword ptr ds:[6E6EF4],677898
 006778C4    ret
*}
end;

//006778C8
procedure sub_006778C8;
begin
{*
 006778C8    push        ebp
 006778C9    mov         ebp,esp
 006778CB    lea         esp,[ebp-2]
 006778CE    wait
 006778CF    fnstcw      word ptr [ebp-2]
 006778D2    mov         ax,0F3FF
 006778D6    wait
 006778D7    mov         dx,word ptr [ebp-2]
 006778DB    and         ax,dx
 006778DE    or          ah,ch
 006778E0    mov         word ptr [ebp-2],ax
 006778E4    fldcw       word ptr [ebp-2]
 006778E7    frndint
 006778E9    mov         word ptr [ebp-2],dx
 006778ED    fldcw       word ptr [ebp-2]
 006778F0    mov         esp,ebp
 006778F2    pop         ebp
 006778F3    ret
*}
end;

end.