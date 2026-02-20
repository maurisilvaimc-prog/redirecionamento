//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit23;

interface

uses
  SysUtils, Classes;

    @@Perfgrap@Initialize; stdcall;//0054BA9C
    @@Perfgrap@Finalize; stdcall;//0054BAAC
    @TAngles@$bctr$qqrv; stdcall;//0054BABC
    @TAngles@$bdtr$qqrv; stdcall;//0054BB28
    @TAngles@Assign$qqrp19Classes@TPersistent; stdcall;//0054BB80
    procedure @TAngles@SetStart$qqri(Value:int); stdcall;//0054BBC4
    procedure @TAngles@SetEnd$qqri(Value:int); stdcall;//0054BBF0
    @TAngles@Changed$qqrv; stdcall;//0054BC1C
    @TPie@$bctr$qqrp18Classes@TComponent; stdcall;//0054BC44
    @TPie@$bdtr$qqrv; stdcall;//0054BD98
    procedure StyleChanged; stdcall;//0054BEE8
    procedure SetBrush(Value:TBrush); stdcall;//0054BF00
    procedure SetPen(Value:TPen); stdcall;//0054BF24
    procedure SetAngles(Value:TAngles); stdcall;//0054BF48
    procedure Paint; stdcall;//0054BF74
    @$xp$4TPie; stdcall;//0054C214
    @$xp$7TAngles; stdcall;//0054C490

implementation

//0054BBC4
procedure @TAngles@SetStart$qqri(Value:int); stdcall;
begin
{*
 0054BBC4    push        ebp
 0054BBC5    mov         ebp,esp
 0054BBC7    add         esp,0FFFFFFF8
 0054BBCA    mov         dword ptr [ebp-8],edx
 0054BBCD    mov         dword ptr [ebp-4],eax
 0054BBD0    mov         eax,dword ptr [ebp-8]
 0054BBD3    mov         edx,dword ptr [ebp-4]
 0054BBD6    cmp         eax,dword ptr [edx+4]
>0054BBD9    je          0054BBEC
 0054BBDB    mov         ecx,dword ptr [ebp-8]
 0054BBDE    mov         eax,dword ptr [ebp-4]
 0054BBE1    mov         dword ptr [eax+4],ecx
 0054BBE4    mov         eax,dword ptr [ebp-4]
 0054BBE7    call        @TAngles@Changed$qqrv
 0054BBEC    pop         ecx
 0054BBED    pop         ecx
 0054BBEE    pop         ebp
 0054BBEF    ret
*}
end;

//0054BBF0
procedure @TAngles@SetEnd$qqri(Value:int); stdcall;
begin
{*
 0054BBF0    push        ebp
 0054BBF1    mov         ebp,esp
 0054BBF3    add         esp,0FFFFFFF8
 0054BBF6    mov         dword ptr [ebp-8],edx
 0054BBF9    mov         dword ptr [ebp-4],eax
 0054BBFC    mov         eax,dword ptr [ebp-8]
 0054BBFF    mov         edx,dword ptr [ebp-4]
 0054BC02    cmp         eax,dword ptr [edx+8]
>0054BC05    je          0054BC18
 0054BC07    mov         ecx,dword ptr [ebp-8]
 0054BC0A    mov         eax,dword ptr [ebp-4]
 0054BC0D    mov         dword ptr [eax+8],ecx
 0054BC10    mov         eax,dword ptr [ebp-4]
 0054BC13    call        @TAngles@Changed$qqrv
 0054BC18    pop         ecx
 0054BC19    pop         ecx
 0054BC1A    pop         ebp
 0054BC1B    ret
*}
end;

//0054BEE8
procedure TPie.StyleChanged; stdcall;
begin
{*
 0054BEE8    push        ebp
 0054BEE9    mov         ebp,esp
 0054BEEB    add         esp,0FFFFFFF8
 0054BEEE    mov         dword ptr [ebp-8],edx
 0054BEF1    mov         dword ptr [ebp-4],eax
 0054BEF4    mov         eax,dword ptr [ebp-4]
 0054BEF7    mov         edx,dword ptr [eax]
 0054BEF9    call        dword ptr [edx+7C]
 0054BEFC    pop         ecx
 0054BEFD    pop         ecx
 0054BEFE    pop         ebp
 0054BEFF    ret
*}
end;

//0054BF00
procedure TPie.SetBrush(Value:TBrush); stdcall;
begin
{*
 0054BF00    push        ebp
 0054BF01    mov         ebp,esp
 0054BF03    add         esp,0FFFFFFF8
 0054BF06    mov         dword ptr [ebp-8],edx
 0054BF09    mov         dword ptr [ebp-4],eax
 0054BF0C    mov         edx,dword ptr [ebp-8]
 0054BF0F    mov         eax,dword ptr [ebp-4]
 0054BF12    mov         eax,dword ptr [eax+16C]
 0054BF18    mov         ecx,dword ptr [eax]
 0054BF1A    call        dword ptr [ecx+8]
 0054BF1D    pop         ecx
 0054BF1E    pop         ecx
 0054BF1F    pop         ebp
 0054BF20    ret
*}
end;

//0054BF24
procedure TPie.SetPen(Value:TPen); stdcall;
begin
{*
 0054BF24    push        ebp
 0054BF25    mov         ebp,esp
 0054BF27    add         esp,0FFFFFFF8
 0054BF2A    mov         dword ptr [ebp-8],edx
 0054BF2D    mov         dword ptr [ebp-4],eax
 0054BF30    mov         edx,dword ptr [ebp-8]
 0054BF33    mov         eax,dword ptr [ebp-4]
 0054BF36    mov         eax,dword ptr [eax+168]
 0054BF3C    mov         ecx,dword ptr [eax]
 0054BF3E    call        dword ptr [ecx+8]
 0054BF41    pop         ecx
 0054BF42    pop         ecx
 0054BF43    pop         ebp
 0054BF44    ret
*}
end;

//0054BF48
procedure TPie.SetAngles(Value:TAngles); stdcall;
begin
{*
 0054BF48    push        ebp
 0054BF49    mov         ebp,esp
 0054BF4B    add         esp,0FFFFFFF8
 0054BF4E    mov         dword ptr [ebp-8],edx
 0054BF51    mov         dword ptr [ebp-4],eax
 0054BF54    mov         edx,dword ptr [ebp-8]
 0054BF57    mov         eax,dword ptr [ebp-4]
 0054BF5A    mov         eax,dword ptr [eax+174]
 0054BF60    mov         ecx,dword ptr [eax]
 0054BF62    call        dword ptr [ecx+8]
 0054BF65    mov         eax,dword ptr [ebp-4]
 0054BF68    mov         edx,dword ptr [eax]
 0054BF6A    call        dword ptr [edx+7C]
 0054BF6D    pop         ecx
 0054BF6E    pop         ecx
 0054BF6F    pop         ebp
 0054BF70    ret
*}
end;

//0054BF74
procedure TPie.Paint; stdcall;
begin
{*
 0054BF74    push        ebp
 0054BF75    mov         ebp,esp
 0054BF77    add         esp,0FFFFFFCC
 0054BF7A    mov         dword ptr [ebp-4],eax
 0054BF7D    mov         eax,dword ptr [ebp-4]
 0054BF80    mov         edx,dword ptr [eax+174]
 0054BF86    mov         ecx,dword ptr [edx+4]
 0054BF89    mov         dword ptr [ebp-8],ecx
 0054BF8C    mov         eax,dword ptr [ebp-4]
 0054BF8F    mov         edx,dword ptr [eax+174]
 0054BF95    mov         ecx,dword ptr [edx+8]
 0054BF98    mov         dword ptr [ebp-0C],ecx
 0054BF9B    mov         eax,dword ptr [ebp-4]
 0054BF9E    mov         edx,dword ptr [eax+48]
 0054BFA1    sar         edx,1
>0054BFA3    jns         0054BFA8
 0054BFA5    adc         edx,0
 0054BFA8    mov         dword ptr [ebp-10],edx
 0054BFAB    mov         ecx,dword ptr [ebp-4]
 0054BFAE    mov         eax,dword ptr [ecx+4C]
 0054BFB1    sar         eax,1
>0054BFB3    jns         0054BFB8
 0054BFB5    adc         eax,0
 0054BFB8    mov         dword ptr [ebp-14],eax
 0054BFBB    fild        dword ptr [ebp-8]
 0054BFBE    fld         tbyte ptr ds:[54C12C]
 0054BFC4    fmulp       st(1),st
 0054BFC6    fmul        qword ptr ds:[54C138]
 0054BFCC    add         esp,0FFFFFFF8
 0054BFCF    fstp        qword ptr [esp]
 0054BFD2    call        00676D78
 0054BFD7    add         esp,8
 0054BFDA    fstp        dword ptr [ebp-28]
 0054BFDD    fild        dword ptr [ebp-8]
 0054BFE0    fld         tbyte ptr ds:[54C12C]
 0054BFE6    fmulp       st(1),st
 0054BFE8    fmul        qword ptr ds:[54C138]
 0054BFEE    add         esp,0FFFFFFF8
 0054BFF1    fstp        qword ptr [esp]
 0054BFF4    call        006782B8
 0054BFF9    add         esp,8
 0054BFFC    fstp        dword ptr [ebp-2C]
 0054BFFF    fild        dword ptr [ebp-0C]
 0054C002    fld         tbyte ptr ds:[54C12C]
 0054C008    fmulp       st(1),st
 0054C00A    fmul        qword ptr ds:[54C138]
 0054C010    add         esp,0FFFFFFF8
 0054C013    fstp        qword ptr [esp]
 0054C016    call        00676D78
 0054C01B    add         esp,8
 0054C01E    fstp        dword ptr [ebp-30]
 0054C021    fild        dword ptr [ebp-0C]
 0054C024    fld         tbyte ptr ds:[54C12C]
 0054C02A    fmulp       st(1),st
 0054C02C    fmul        qword ptr ds:[54C138]
 0054C032    add         esp,0FFFFFFF8
 0054C035    fstp        qword ptr [esp]
 0054C038    call        006782B8
 0054C03D    add         esp,8
 0054C040    fstp        dword ptr [ebp-34]
 0054C043    fld         dword ptr [ebp-28]
 0054C046    fmul        dword ptr ds:[54C140]
 0054C04C    add         esp,0FFFFFFF8
 0054C04F    fstp        qword ptr [esp]
 0054C052    call        00676E30
 0054C057    add         esp,8
 0054C05A    call        00676E64
 0054C05F    mov         dword ptr [ebp-18],eax
 0054C062    fld         dword ptr [ebp-2C]
 0054C065    fmul        dword ptr ds:[54C140]
 0054C06B    add         esp,0FFFFFFF8
 0054C06E    fstp        qword ptr [esp]
 0054C071    call        00676E30
 0054C076    add         esp,8
 0054C079    call        00676E64
 0054C07E    mov         dword ptr [ebp-1C],eax
 0054C081    fld         dword ptr [ebp-30]
 0054C084    fmul        dword ptr ds:[54C140]
 0054C08A    add         esp,0FFFFFFF8
 0054C08D    fstp        qword ptr [esp]
 0054C090    call        00676D48
 0054C095    add         esp,8
 0054C098    call        00676E64
 0054C09D    mov         dword ptr [ebp-20],eax
 0054C0A0    fld         dword ptr [ebp-34]
 0054C0A3    fmul        dword ptr ds:[54C140]
 0054C0A9    add         esp,0FFFFFFF8
 0054C0AC    fstp        qword ptr [esp]
 0054C0AF    call        00676D48
 0054C0B4    add         esp,8
 0054C0B7    call        00676E64
 0054C0BC    mov         dword ptr [ebp-24],eax
 0054C0BF    mov         edx,dword ptr [ebp-4]
 0054C0C2    mov         edx,dword ptr [edx+168]
 0054C0C8    mov         eax,dword ptr [ebp-4]
 0054C0CB    mov         eax,dword ptr [eax+160]
 0054C0D1    call        TCanvas.SetPen
 0054C0D6    mov         edx,dword ptr [ebp-4]
 0054C0D9    mov         edx,dword ptr [edx+16C]
 0054C0DF    mov         eax,dword ptr [ebp-4]
 0054C0E2    mov         eax,dword ptr [eax+160]
 0054C0E8    call        TCanvas.SetBrush
 0054C0ED    mov         edx,dword ptr [ebp-4]
 0054C0F0    push        dword ptr [edx+48]
 0054C0F3    mov         ecx,dword ptr [ebp-4]
 0054C0F6    push        dword ptr [ecx+4C]
 0054C0F9    mov         eax,dword ptr [ebp-10]
 0054C0FC    add         eax,dword ptr [ebp-18]
 0054C0FF    push        eax
 0054C100    mov         edx,dword ptr [ebp-14]
 0054C103    sub         edx,dword ptr [ebp-1C]
 0054C106    push        edx
 0054C107    mov         ecx,dword ptr [ebp-10]
 0054C10A    add         ecx,dword ptr [ebp-20]
 0054C10D    push        ecx
 0054C10E    mov         eax,dword ptr [ebp-14]
 0054C111    sub         eax,dword ptr [ebp-24]
 0054C114    push        eax
 0054C115    xor         ecx,ecx
 0054C117    xor         edx,edx
 0054C119    mov         eax,dword ptr [ebp-4]
 0054C11C    mov         eax,dword ptr [eax+160]
 0054C122    call        005C132C
 0054C127    mov         esp,ebp
 0054C129    pop         ebp
 0054C12A    ret
*}
end;

end.