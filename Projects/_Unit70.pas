//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit70;

interface

uses
  SysUtils, Classes;

    procedure sub_0063D3C8;//0063D3C8
    procedure sub_0063DB9C;//0063DB9C

implementation

//0063D3C8
procedure sub_0063D3C8;
begin
{*
 0063D3C8    sub         dword ptr ds:[6ECEF0],1
 0063D3CF    ret
*}
end;

//0063DB9C
procedure sub_0063DB9C;
begin
{*
 0063DB9C    push        ebp
 0063DB9D    mov         ebp,esp
 0063DB9F    push        63DC00;'USER32.DLL'
 0063DBA4    call        KERNEL32.GetModuleHandleA
 0063DBA9    mov         [006ECF18],eax;gvar_006ECF18:HMODULE
 0063DBAE    mov         dword ptr ds:[6ECEF4],63D4D0
 0063DBB8    mov         dword ptr ds:[6ECEF8],63D614
 0063DBC2    mov         dword ptr ds:[6ECEFC],63D574
 0063DBCC    mov         dword ptr ds:[6ECF00],63D6C0
 0063DBD6    mov         dword ptr ds:[6ECF04],63D75C
 0063DBE0    mov         dword ptr ds:[6ECF08],63D858
 0063DBEA    mov         dword ptr ds:[6ECF0C],63D954
 0063DBF4    mov         dword ptr ds:[6ECF10],63DA50
 0063DBFE    pop         ebp
 0063DBFF    ret
*}
end;

end.