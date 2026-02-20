//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit57;

interface

uses
  SysUtils, Classes;

    procedure sub_006024AC;//006024AC

implementation

//006024AC
procedure sub_006024AC;
begin
{*
 006024AC    push        ebp
 006024AD    mov         ebp,esp
 006024AF    xor         eax,eax
 006024B1    push        ebp
 006024B2    push        602532
 006024B7    push        dword ptr fs:[eax]
 006024BA    mov         dword ptr fs:[eax],esp
 006024BD    sub         dword ptr ds:[6ECDE4],1
>006024C4    jae         00602524
 006024C6    call        KERNEL32.GetVersion
 006024CB    and         eax,0FF
 006024D0    cmp         ax,4
 006024D4    setae       byte ptr ds:[6ECDE0];gvar_006ECDE0
 006024DB    call        00602248
 006024E0    mov         eax,[005EE128];TControl
 006024E5    call        00644444
 006024EA    mov         eax,[005EE128];TControl
 006024EF    call        006444EC
 006024F4    mov         edx,dword ptr ds:[5EE128];TControl
 006024FA    mov         eax,[0058B254];TCustomImageList
 006024FF    call        00644494
 00602504    mov         edx,dword ptr ds:[5EE128];TControl
 0060250A    mov         eax,[0058D110];TContainedAction
 0060250F    call        00644494
 00602514    mov         edx,dword ptr ds:[5EE128];TControl
 0060251A    mov         eax,[0058D274];TCustomActionList
 0060251F    call        00644494
 00602524    xor         eax,eax
 00602526    pop         edx
 00602527    pop         ecx
 00602528    pop         ecx
 00602529    mov         dword ptr fs:[eax],edx
 0060252C    push        602539
 00602531    ret
>00602532    jmp         @HandleFinally
>00602537    jmp         00602531
 00602539    pop         ebp
 0060253A    ret
*}
end;

end.