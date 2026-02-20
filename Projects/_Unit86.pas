//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit86;

interface

uses
  SysUtils, Classes;

    procedure sub_00653A94;//00653A94
    //function sub_00653A9C(?:TGridCoord; ?:?):?;//00653A9C
    //function sub_00653AC8(?:Integer; ?:Integer):?;//00653AC8

implementation

//00653A94
procedure sub_00653A94;
begin
{*
 00653A94    sub         dword ptr ds:[6ECFDC],1
 00653A9B    ret
*}
end;

//00653A9C
{*function sub_00653A9C(?:TGridCoord; ?:?):?;
begin
 00653A9C    push        ebp
 00653A9D    mov         ebp,esp
 00653A9F    add         esp,0FFFFFFF4
 00653AA2    mov         dword ptr [ebp-8],edx
 00653AA5    mov         dword ptr [ebp-4],eax
 00653AA8    mov         eax,dword ptr [ebp-4]
 00653AAB    cmp         eax,dword ptr [ebp-8]
>00653AAE    jge         00653AB8
 00653AB0    mov         eax,dword ptr [ebp-4]
 00653AB3    mov         dword ptr [ebp-0C],eax
>00653AB6    jmp         00653ABE
 00653AB8    mov         eax,dword ptr [ebp-8]
 00653ABB    mov         dword ptr [ebp-0C],eax
 00653ABE    mov         eax,dword ptr [ebp-0C]
 00653AC1    mov         esp,ebp
 00653AC3    pop         ebp
 00653AC4    ret
end;*}

//00653AC8
{*function sub_00653AC8(?:Integer; ?:Integer):?;
begin
 00653AC8    push        ebp
 00653AC9    mov         ebp,esp
 00653ACB    add         esp,0FFFFFFF4
 00653ACE    mov         dword ptr [ebp-8],edx
 00653AD1    mov         dword ptr [ebp-4],eax
 00653AD4    mov         eax,dword ptr [ebp-4]
 00653AD7    cmp         eax,dword ptr [ebp-8]
>00653ADA    jle         00653AE4
 00653ADC    mov         eax,dword ptr [ebp-4]
 00653ADF    mov         dword ptr [ebp-0C],eax
>00653AE2    jmp         00653AEA
 00653AE4    mov         eax,dword ptr [ebp-8]
 00653AE7    mov         dword ptr [ebp-0C],eax
 00653AEA    mov         eax,dword ptr [ebp-0C]
 00653AED    mov         esp,ebp
 00653AEF    pop         ebp
 00653AF0    ret
end;*}

end.