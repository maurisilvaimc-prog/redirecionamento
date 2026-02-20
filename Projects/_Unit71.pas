//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit71;

interface

uses
  SysUtils, Classes;

    procedure sub_0063DC3C;//0063DC3C
    //function sub_0063DC50(?:?):?;//0063DC50
    //function sub_0063DC68(?:?):?;//0063DC68
    //function sub_0063DC84(?:?):?;//0063DC84

implementation

//0063DC3C
procedure sub_0063DC3C;
begin
{*
 0063DC3C    push        ebp
 0063DC3D    mov         ebp,esp
 0063DC3F    sub         dword ptr ds:[6ECF14],1
>0063DC46    jae         0063DC4D
 0063DC48    call        0063DB9C
 0063DC4D    pop         ebp
 0063DC4E    ret
*}
end;

//0063DC50
{*function sub_0063DC50(?:?):?;
begin
 0063DC50    push        ebp
 0063DC51    mov         ebp,esp
 0063DC53    add         esp,0FFFFFFF8
 0063DC56    mov         dword ptr [ebp-4],eax
 0063DC59    mov         al,byte ptr [ebp-4]
 0063DC5C    mov         byte ptr [ebp-5],al
 0063DC5F    mov         al,byte ptr [ebp-5]
 0063DC62    pop         ecx
 0063DC63    pop         ecx
 0063DC64    pop         ebp
 0063DC65    ret
end;*}

//0063DC68
{*function sub_0063DC68(?:?):?;
begin
 0063DC68    push        ebp
 0063DC69    mov         ebp,esp
 0063DC6B    add         esp,0FFFFFFF8
 0063DC6E    mov         dword ptr [ebp-4],eax
 0063DC71    mov         ax,word ptr [ebp-4]
 0063DC75    call        0063CF24
 0063DC7A    mov         byte ptr [ebp-5],al
 0063DC7D    mov         al,byte ptr [ebp-5]
 0063DC80    pop         ecx
 0063DC81    pop         ecx
 0063DC82    pop         ebp
 0063DC83    ret
end;*}

//0063DC84
{*function sub_0063DC84(?:?):?;
begin
 0063DC84    push        ebp
 0063DC85    mov         ebp,esp
 0063DC87    add         esp,0FFFFFFF8
 0063DC8A    mov         dword ptr [ebp-4],eax
 0063DC8D    mov         eax,dword ptr [ebp-4]
 0063DC90    call        0063CF08
 0063DC95    mov         byte ptr [ebp-5],al
 0063DC98    mov         al,byte ptr [ebp-5]
 0063DC9B    pop         ecx
 0063DC9C    pop         ecx
 0063DC9D    pop         ebp
 0063DC9E    ret
end;*}

end.