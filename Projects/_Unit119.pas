//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit119;

interface

uses
  SysUtils, Classes;

    procedure sub_00679C20;//00679C20
    procedure sub_00679DB8;//00679DB8

implementation

//00679C20
procedure sub_00679C20;
begin
{*
 00679C20    push        6E7368
 00679C25    push        6EE268;gvar_006EE268
 00679C2A    call        0067A094
 00679C2F    add         esp,8
 00679C32    ret
*}
end;

//00679DB8
procedure sub_00679DB8;
begin
{*
 00679DB8    add         esp,0FFFFFFBC
 00679DBB    push        esp
 00679DBC    call        KERNEL32.GetStartupInfoA
 00679DC1    test        byte ptr [esp+2C],1
>00679DC6    je          00679DCF
 00679DC8    movzx       eax,word ptr [esp+30]
>00679DCD    jmp         00679DD4
 00679DCF    mov         eax,0A
 00679DD4    add         esp,44
 00679DD7    ret
*}
end;

end.