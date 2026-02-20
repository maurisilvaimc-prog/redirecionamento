//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit75;

interface

uses
  SysUtils, Classes;

    procedure sub_0063DDB0;//0063DDB0
    //function sub_0063DDB8(?:?; ?:?; ?:?; ?:?):?;//0063DDB8
    //function sub_0063DDF4(?:?):?;//0063DDF4
    procedure sub_0063DE24;//0063DE24

implementation

//0063DDB0
procedure sub_0063DDB0;
begin
{*
 0063DDB0    sub         dword ptr ds:[6ECF34],1
 0063DDB7    ret
*}
end;

//0063DDB8
{*function sub_0063DDB8(?:?; ?:?; ?:?; ?:?):?;
begin
 0063DDB8    push        ebp
 0063DDB9    mov         ebp,esp
 0063DDBB    push        ecx
 0063DDBC    cmp         dword ptr ds:[6ECF60],0;gvar_006ECF60
>0063DDC3    je          0063DDDF
 0063DDC5    mov         eax,dword ptr [ebp+14]
 0063DDC8    push        eax
 0063DDC9    mov         eax,dword ptr [ebp+10]
 0063DDCC    push        eax
 0063DDCD    mov         eax,dword ptr [ebp+0C]
 0063DDD0    push        eax
 0063DDD1    mov         eax,dword ptr [ebp+8]
 0063DDD4    push        eax
 0063DDD5    call        dword ptr ds:[6ECF60]
 0063DDDB    test        eax,eax
>0063DDDD    jne         0063DDE3
 0063DDDF    xor         eax,eax
>0063DDE1    jmp         0063DDE5
 0063DDE3    mov         al,1
 0063DDE5    neg         al
 0063DDE7    sbb         eax,eax
 0063DDE9    mov         dword ptr [ebp-4],eax
 0063DDEC    mov         eax,dword ptr [ebp-4]
 0063DDEF    pop         ecx
 0063DDF0    pop         ebp
 0063DDF1    ret         10
end;*}

//0063DDF4
{*function sub_0063DDF4(?:?):?;
begin
 0063DDF4    push        ebp
 0063DDF5    mov         ebp,esp
 0063DDF7    push        ecx
 0063DDF8    cmp         dword ptr ds:[6ECF64],0;gvar_006ECF64
>0063DDFF    je          0063DE0F
 0063DE01    mov         eax,dword ptr [ebp+8]
 0063DE04    push        eax
 0063DE05    call        dword ptr ds:[6ECF64]
 0063DE0B    test        eax,eax
>0063DE0D    jne         0063DE13
 0063DE0F    xor         eax,eax
>0063DE11    jmp         0063DE15
 0063DE13    mov         al,1
 0063DE15    neg         al
 0063DE17    sbb         eax,eax
 0063DE19    mov         dword ptr [ebp-4],eax
 0063DE1C    mov         eax,dword ptr [ebp-4]
 0063DE1F    pop         ecx
 0063DE20    pop         ebp
 0063DE21    ret         4
end;*}

//0063DE24
procedure sub_0063DE24;
begin
{*
 0063DE24    push        ebp
 0063DE25    mov         ebp,esp
 0063DE27    push        ecx
 0063DE28    push        63DFC0;'comctl32.dll'
 0063DE2D    call        KERNEL32.GetModuleHandleA
 0063DE32    mov         dword ptr [ebp-4],eax
 0063DE35    cmp         dword ptr [ebp-4],0
>0063DE39    je          0063DFBB
 0063DE3F    push        63DFD0
 0063DE44    mov         eax,dword ptr [ebp-4]
 0063DE47    push        eax
 0063DE48    call        KERNEL32.GetProcAddress
 0063DE4D    mov         [006ECF64],eax;gvar_006ECF64
 0063DE52    push        63DFE4
 0063DE57    mov         eax,dword ptr [ebp-4]
 0063DE5A    push        eax
 0063DE5B    call        KERNEL32.GetProcAddress
 0063DE60    mov         [006ECF68],eax;gvar_006ECF68
 0063DE65    push        63DFF8
 0063DE6A    mov         eax,dword ptr [ebp-4]
 0063DE6D    push        eax
 0063DE6E    call        KERNEL32.GetProcAddress
 0063DE73    mov         [006ECF5C],eax;gvar_006ECF5C
 0063DE78    push        63E010
 0063DE7D    mov         eax,dword ptr [ebp-4]
 0063DE80    push        eax
 0063DE81    call        KERNEL32.GetProcAddress
 0063DE86    mov         [006ECF60],eax;gvar_006ECF60
 0063DE8B    push        63E028
 0063DE90    mov         eax,dword ptr [ebp-4]
 0063DE93    push        eax
 0063DE94    call        KERNEL32.GetProcAddress
 0063DE99    mov         [006ECF38],eax;gvar_006ECF38
 0063DE9E    cmp         dword ptr ds:[6ECF38],0;gvar_006ECF38
>0063DEA5    jne         0063DEB1
 0063DEA7    mov         eax,692C06;USER32.EnableScrollBar
 0063DEAC    mov         [006ECF38],eax;gvar_006ECF38
 0063DEB1    push        63E040
 0063DEB6    mov         eax,dword ptr [ebp-4]
 0063DEB9    push        eax
 0063DEBA    call        KERNEL32.GetProcAddress
 0063DEBF    mov         [006ECF3C],eax;gvar_006ECF3C:LongBool
 0063DEC4    cmp         dword ptr ds:[6ECF3C],0;gvar_006ECF3C:LongBool
>0063DECB    jne         0063DED7
 0063DECD    mov         eax,692F24;USER32.ShowScrollBar:LongBool
 0063DED2    mov         [006ECF3C],eax;gvar_006ECF3C:LongBool
 0063DED7    push        63E058
 0063DEDC    mov         eax,dword ptr [ebp-4]
 0063DEDF    push        eax
 0063DEE0    call        KERNEL32.GetProcAddress
 0063DEE5    mov         [006ECF40],eax;gvar_006ECF40:LongBool
 0063DEEA    cmp         dword ptr ds:[6ECF40],0;gvar_006ECF40:LongBool
>0063DEF1    jne         0063DEFD
 0063DEF3    mov         eax,692D20;USER32.GetScrollRange:LongBool
 0063DEF8    mov         [006ECF40],eax;gvar_006ECF40:LongBool
 0063DEFD    push        63E070
 0063DF02    mov         eax,dword ptr [ebp-4]
 0063DF05    push        eax
 0063DF06    call        KERNEL32.GetProcAddress
 0063DF0B    mov         [006ECF44],eax;gvar_006ECF44:LongBool
 0063DF10    cmp         dword ptr ds:[6ECF44],0;gvar_006ECF44:LongBool
>0063DF17    jne         0063DF23
 0063DF19    mov         eax,692D14;USER32.GetScrollInfo:LongBool
 0063DF1E    mov         [006ECF44],eax;gvar_006ECF44:LongBool
 0063DF23    push        63E088
 0063DF28    mov         eax,dword ptr [ebp-4]
 0063DF2B    push        eax
 0063DF2C    call        KERNEL32.GetProcAddress
 0063DF31    mov         [006ECF48],eax;gvar_006ECF48
 0063DF36    cmp         dword ptr ds:[6ECF48],0;gvar_006ECF48
>0063DF3D    jne         0063DF49
 0063DF3F    mov         eax,692D1A;USER32.GetScrollPos
 0063DF44    mov         [006ECF48],eax;gvar_006ECF48
 0063DF49    push        63E09C
 0063DF4E    mov         eax,dword ptr [ebp-4]
 0063DF51    push        eax
 0063DF52    call        KERNEL32.GetProcAddress
 0063DF57    mov         [006ECF4C],eax;gvar_006ECF4C:Integer
 0063DF5C    cmp         dword ptr ds:[6ECF4C],0;gvar_006ECF4C:Integer
>0063DF63    jne         0063DF6F
 0063DF65    mov         eax,692EE8;USER32.SetScrollPos:Integer
 0063DF6A    mov         [006ECF4C],eax;gvar_006ECF4C:Integer
 0063DF6F    push        63E0B0
 0063DF74    mov         eax,dword ptr [ebp-4]
 0063DF77    push        eax
 0063DF78    call        KERNEL32.GetProcAddress
 0063DF7D    mov         [006ECF50],eax;gvar_006ECF50
 0063DF82    cmp         dword ptr ds:[6ECF50],0;gvar_006ECF50
>0063DF89    jne         0063DF95
 0063DF8B    mov         eax,692EE2;USER32.SetScrollInfo
 0063DF90    mov         [006ECF50],eax;gvar_006ECF50
 0063DF95    push        63E0C8
 0063DF9A    mov         eax,dword ptr [ebp-4]
 0063DF9D    push        eax
 0063DF9E    call        KERNEL32.GetProcAddress
 0063DFA3    mov         [006ECF54],eax;gvar_006ECF54
 0063DFA8    cmp         dword ptr ds:[6ECF54],0;gvar_006ECF54
>0063DFAF    jne         0063DFBB
 0063DFB1    mov         eax,692EEE;USER32.SetScrollRange
 0063DFB6    mov         [006ECF54],eax;gvar_006ECF54
 0063DFBB    pop         ecx
 0063DFBC    pop         ebp
 0063DFBD    ret
*}
end;

end.