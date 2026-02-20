//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit101;

interface

uses
  SysUtils, Classes;

    procedure sub_0066ECF8;//0066ECF8
    //procedure sub_0066ED6C(?:?; ?:?; ?:?; ?:?; ?:?);//0066ED6C
    //procedure sub_0066ED90(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0066ED90
    //destructor sub_0066EECC(?:?; ?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0066EECC
    procedure sub_0066F088;//0066F088
    //function sub_0066F0A8(?:?; ?:?; ?:?):?;//0066F0A8
    //function sub_0066F124:?;//0066F124
    //function sub_0066F2C8(?:?):?;//0066F2C8
    //procedure sub_0066F2D8(?:?);//0066F2D8
    //function sub_0066F2E8(?:?; ?:?):?;//0066F2E8
    //procedure sub_0066F300(?:?);//0066F300
    //procedure sub_0066F498(?:?; ?:?; ?:?);//0066F498

implementation

//0066ECF8
procedure sub_0066ECF8;
begin
{*
 0066ECF8    push        ebp
 0066ECF9    mov         ebp,esp
 0066ECFB    add         esp,0FFFFFFDC
 0066ECFE    mov         eax,6E4FF8
 0066ED03    call        0066FECC
 0066ED08    mov         word ptr [ebp-14],8
 0066ED0E    inc         dword ptr [ebp-8]
 0066ED11    inc         dword ptr [ebp-8]
 0066ED14    mov         edx,6E4F84
 0066ED19    mov         dword ptr ds:[6ED9D8],edx;gvar_006ED9D8
 0066ED1F    mov         ecx,6E4F98
 0066ED24    mov         dword ptr ds:[6ED9D8],ecx;gvar_006ED9D8
 0066ED2A    mov         eax,dword ptr [ebp-24]
 0066ED2D    mov         fs:[00000000],eax
 0066ED33    mov         esp,ebp
 0066ED35    pop         ebp
 0066ED36    ret
*}
end;

//0066ED6C
{*procedure sub_0066ED6C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0066ED6C    push        ebp
 0066ED6D    mov         ebp,esp
 0066ED6F    xor         eax,eax
 0066ED71    push        eax
 0066ED72    mov         edx,dword ptr [ebp+18]
 0066ED75    push        edx
 0066ED76    mov         ecx,dword ptr [ebp+14]
 0066ED79    push        ecx
 0066ED7A    mov         eax,dword ptr [ebp+10]
 0066ED7D    push        eax
 0066ED7E    mov         edx,dword ptr [ebp+0C]
 0066ED81    push        edx
 0066ED82    mov         ecx,dword ptr [ebp+8]
 0066ED85    push        ecx
 0066ED86    call        0066ED90
 0066ED8B    add         esp,18
 0066ED8E    pop         ebp
 0066ED8F    ret
end;*}

//0066ED90
{*procedure sub_0066ED90(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0066ED90    push        ebp
 0066ED91    mov         ebp,esp
 0066ED93    add         esp,0FFFFFFDC
 0066ED96    mov         eax,6E5034
 0066ED9B    push        ebx
 0066ED9C    push        esi
 0066ED9D    push        edi
 0066ED9E    call        0066FECC
 0066EDA3    mov         edi,dword ptr [ebp+14]
 0066EDA6    mov         esi,dword ptr [ebp+14]
 0066EDA9    mov         word ptr [ebp-14],8
 0066EDAF    and         esi,10
 0066EDB2    and         edi,8
 0066EDB5    cmp         dword ptr [ebp+8],0
>0066EDB9    jne         0066EDCC
 0066EDBB    xor         eax,eax
 0066EDBD    mov         edx,dword ptr [ebp-24]
 0066EDC0    mov         dword ptr fs:[0],edx
>0066EDC7    jmp         0066EEC4
 0066EDCC    test        esi,esi
>0066EDCE    je          0066EDD9
 0066EDD0    mov         ecx,dword ptr [ebp+8]
 0066EDD3    mov         eax,dword ptr [ecx-4]
 0066EDD6    mov         dword ptr [ebp+10],eax
 0066EDD9    and         dword ptr [ebp+14],7
 0066EDDD    mov         ebx,dword ptr [ebp+10]
 0066EDE0    dec         ebx
 0066EDE1    imul        ebx,dword ptr [ebp+0C]
 0066EDE5    add         ebx,dword ptr [ebp+8]
 0066EDE8    mov         word ptr [ebp-14],8
>0066EDEE    jmp         0066EE38
 0066EDF0    mov         eax,dword ptr [ebp+14]
 0066EDF3    dec         eax
>0066EDF4    je          0066EE03
 0066EDF6    dec         eax
>0066EDF7    je          0066EE0E
 0066EDF9    dec         eax
>0066EDFA    je          0066EE16
 0066EDFC    sub         eax,2
>0066EDFF    je          0066EE22
>0066EE01    jmp         0066EE2A
 0066EE03    push        2
 0066EE05    push        ebx
 0066EE06    call        dword ptr [ebp+18]
 0066EE09    add         esp,8
>0066EE0C    jmp         0066EE35
 0066EE0E    push        2
 0066EE10    push        ebx
 0066EE11    call        dword ptr [ebp+18]
>0066EE14    jmp         0066EE35
 0066EE16    mov         edx,2
 0066EE1B    mov         eax,ebx
 0066EE1D    call        dword ptr [ebp+18]
>0066EE20    jmp         0066EE35
 0066EE22    push        2
 0066EE24    push        ebx
 0066EE25    call        dword ptr [ebp+18]
>0066EE28    jmp         0066EE35
 0066EE2A    push        6E5048
 0066EE2F    call        00678D94
 0066EE34    pop         ecx
 0066EE35    sub         ebx,dword ptr [ebp+0C]
 0066EE38    mov         edx,dword ptr [ebp+10]
 0066EE3B    add         dword ptr [ebp+10],0FFFFFFFF
 0066EE3F    test        edx,edx
>0066EE41    ja          0066EDF0
 0066EE43    test        esi,esi
>0066EE45    je          0066EE4B
 0066EE47    add         dword ptr [ebp+8],0FFFFFFFC
 0066EE4B    test        edi,edi
>0066EE4D    je          0066EE5B
 0066EE4F    mov         ecx,dword ptr [ebp+8]
 0066EE52    push        ecx
 0066EE53    call        0066EAC0
 0066EE58    pop         ecx
>0066EE59    jmp         0066EE6A
 0066EE5B    mov         eax,dword ptr [ebp+8]
 0066EE5E    mov         edx,dword ptr [ebp-24]
 0066EE61    mov         dword ptr fs:[0],edx
>0066EE68    jmp         0066EEC4
 0066EE6A    mov         word ptr [ebp-14],0
>0066EE70    jmp         0066EEB8
 0066EE72    mov         ecx,dword ptr [ebp+1C]
 0066EE75    inc         dword ptr [ebp+1C]
 0066EE78    test        ecx,ecx
>0066EE7A    jle         0066EE81
 0066EE7C    call        00670AD8
 0066EE81    mov         eax,dword ptr [ebp+1C]
 0066EE84    push        eax
 0066EE85    mov         edx,dword ptr [ebp+18]
 0066EE88    push        edx
 0066EE89    mov         ecx,dword ptr [ebp+14]
 0066EE8C    push        ecx
 0066EE8D    mov         eax,dword ptr [ebp+10]
 0066EE90    push        eax
 0066EE91    mov         edx,dword ptr [ebp+0C]
 0066EE94    push        edx
 0066EE95    mov         ecx,dword ptr [ebp+8]
 0066EE98    push        ecx
 0066EE99    call        0066ED90
 0066EE9E    add         esp,18
 0066EEA1    push        0
 0066EEA3    push        0
 0066EEA5    call        0067AD46
 0066EEAA    add         esp,8
 0066EEAD    mov         word ptr [ebp-14],10
 0066EEB3    call        0067AF32
 0066EEB8    xor         eax,eax
 0066EEBA    mov         edx,dword ptr [ebp-24]
 0066EEBD    mov         dword ptr fs:[0],edx
 0066EEC4    pop         edi
 0066EEC5    pop         esi
 0066EEC6    pop         ebx
 0066EEC7    mov         esp,ebp
 0066EEC9    pop         ebp
 0066EECA    ret
end;*}

//0066EECC
{*destructor sub_0066EECC(?:?; ?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0066EECC    push        ebp
 0066EECD    mov         ebp,esp
 0066EECF    add         esp,0FFFFFFD4
 0066EED2    push        ebx
 0066EED3    push        esi
 0066EED4    push        edi
 0066EED5    mov         edi,dword ptr [ebp+18]
 0066EED8    mov         esi,dword ptr [ebp+14]
 0066EEDB    mov         eax,6E5088
 0066EEE0    call        0066FECC
 0066EEE5    mov         word ptr [ebp-14],8
 0066EEEB    cmp         dword ptr [ebp+8],0
>0066EEEF    jne         0066EF35
 0066EEF1    mov         edx,dword ptr [ebp+0C]
 0066EEF4    imul        edx,dword ptr [ebp+10]
 0066EEF8    test        esi,10
>0066EEFE    je          0066EF07
 0066EF00    mov         ecx,4
>0066EF05    jmp         0066EF09
 0066EF07    xor         ecx,ecx
 0066EF09    add         edx,ecx
 0066EF0B    push        edx
 0066EF0C    call        0066EC88
 0066EF11    pop         ecx
 0066EF12    mov         dword ptr [ebp+8],eax
 0066EF15    cmp         dword ptr [ebp+8],0
>0066EF19    jne         0066EF2C
 0066EF1B    xor         eax,eax
 0066EF1D    mov         edx,dword ptr [ebp-24]
 0066EF20    mov         dword ptr fs:[0],edx
>0066EF27    jmp         0066F080
 0066EF2C    mov         dword ptr [ebp-2C],1
>0066EF33    jmp         0066EF3A
 0066EF35    xor         eax,eax
 0066EF37    mov         dword ptr [ebp-2C],eax
 0066EF3A    test        esi,10
>0066EF40    je          0066EF4E
 0066EF42    mov         edx,dword ptr [ebp+8]
 0066EF45    mov         ecx,dword ptr [ebp+10]
 0066EF48    mov         dword ptr [edx],ecx
 0066EF4A    add         dword ptr [ebp+8],4
 0066EF4E    test        edi,edi
>0066EF50    jne         0066EF64
 0066EF52    mov         eax,dword ptr [ebp+8]
 0066EF55    mov         edx,dword ptr [ebp-24]
 0066EF58    mov         dword ptr fs:[0],edx
>0066EF5F    jmp         0066F080
 0066EF64    mov         ecx,dword ptr [ebp+10]
 0066EF67    mov         dword ptr [ebp-28],ecx
 0066EF6A    mov         ebx,dword ptr [ebp+8]
 0066EF6D    mov         word ptr [ebp-14],8
>0066EF73    jmp         0066EFB4
 0066EF75    mov         eax,esi
 0066EF77    and         eax,7
 0066EF7A    mov         word ptr [ebp-14],8
 0066EF80    dec         eax
>0066EF81    je          0066EF90
 0066EF83    dec         eax
>0066EF84    je          0066EF96
 0066EF86    dec         eax
>0066EF87    je          0066EF9B
 0066EF89    sub         eax,2
>0066EF8C    je          0066EFA1
>0066EF8E    jmp         0066EFA6
 0066EF90    push        ebx
 0066EF91    call        edi
 0066EF93    pop         ecx
>0066EF94    jmp         0066EFB1
 0066EF96    push        ebx
 0066EF97    call        edi
>0066EF99    jmp         0066EFB1
 0066EF9B    mov         eax,ebx
 0066EF9D    call        edi
>0066EF9F    jmp         0066EFB1
 0066EFA1    push        ebx
 0066EFA2    call        edi
>0066EFA4    jmp         0066EFB1
 0066EFA6    push        6E509C
 0066EFAB    call        00678D94
 0066EFB0    pop         ecx
 0066EFB1    add         ebx,dword ptr [ebp+0C]
 0066EFB4    mov         edx,dword ptr [ebp-28]
 0066EFB7    add         dword ptr [ebp-28],0FFFFFFFF
 0066EFBB    test        edx,edx
>0066EFBD    jg          0066EF75
 0066EFBF    mov         word ptr [ebp-14],0
>0066EFC5    jmp         0066F073
 0066EFCA    mov         edi,dword ptr [ebp+1C]
 0066EFCD    mov         word ptr [ebp-14],10
 0066EFD3    mov         esi,dword ptr [ebp+10]
 0066EFD6    and         edi,7
 0066EFD9    sub         esi,dword ptr [ebp-28]
 0066EFDC    dec         esi
 0066EFDD    lea         ebx,[esi-1]
 0066EFE0    imul        ebx,dword ptr [ebp+0C]
 0066EFE4    add         ebx,dword ptr [ebp+8]
>0066EFE7    jmp         0066F043
 0066EFE9    mov         eax,edi
 0066EFEB    cmp         eax,5
>0066EFEE    ja          0066F035
 0066EFF0    jmp         dword ptr [eax*4+66EFF7]
 0066EFF0    dd          0066F040
 0066EFF0    dd          0066F011
 0066EFF0    dd          0066F01C
 0066EFF0    dd          0066F024
 0066EFF0    dd          0066F035
 0066EFF0    dd          0066F02D
 0066EFF0    dd          006A2FEB
 0066F013    push        ebx
 0066F014    call        dword ptr [ebp+20]
 0066F017    add         esp,8
>0066F01A    jmp         0066F040
 0066F01C    push        ebx
 0066F01D    push        0
 0066F01F    call        dword ptr [ebp+20]
>0066F022    jmp         0066F040
 0066F024    xor         edx,edx
 0066F026    mov         eax,ebx
 0066F028    call        dword ptr [ebp+20]
>0066F02B    jmp         0066F040
 0066F02D    push        0
 0066F02F    push        ebx
 0066F030    call        dword ptr [ebp+20]
>0066F033    jmp         0066F040
 0066F035    push        6E50B9
 0066F03A    call        00678D94
 0066F03F    pop         ecx
 0066F040    sub         ebx,dword ptr [ebp+0C]
 0066F043    mov         edx,esi
 0066F045    add         esi,0FFFFFFFF
 0066F048    test        edx,edx
>0066F04A    jg          0066EFE9
 0066F04C    cmp         dword ptr [ebp-2C],0
>0066F050    je          0066F05C
 0066F052    mov         ecx,dword ptr [ebp+8]
 0066F055    push        ecx
 0066F056    call        0066EAC0
 0066F05B    pop         ecx
 0066F05C    push        0
 0066F05E    push        0
 0066F060    call        0067AD46
 0066F065    add         esp,8
 0066F068    mov         word ptr [ebp-14],10
 0066F06E    call        0067AF32
 0066F073    mov         eax,dword ptr [ebp+8]
 0066F076    mov         edx,dword ptr [ebp-24]
 0066F079    mov         dword ptr fs:[0],edx
 0066F080    pop         edi
 0066F081    pop         esi
 0066F082    pop         ebx
 0066F083    mov         esp,ebp
 0066F085    pop         ebp
 0066F086    ret
end;*}

//0066F088
procedure sub_0066F088;
begin
{*
 0066F088    push        6E50DC
 0066F08D    call        KERNEL32.LoadLibraryA
 0066F092    cmp         eax,dword ptr ds:[6ED9F0];0x0 gvar_006ED9F0:HMODULE
>0066F098    je          0066F0A5
 0066F09A    push        6E50E5
 0066F09F    call        00678D94
 0066F0A4    pop         ecx
 0066F0A5    ret
*}
end;

//0066F0A8
{*function sub_0066F0A8(?:?; ?:?; ?:?):?;
begin
 0066F0A8    push        ebp
 0066F0A9    mov         ebp,esp
 0066F0AB    push        ebx
 0066F0AC    push        esi
 0066F0AD    push        edi
 0066F0AE    mov         edi,dword ptr [ebp+0C]
 0066F0B1    mov         esi,dword ptr [ebp+8]
 0066F0B4    test        esi,esi
>0066F0B6    je          0066F0C2
 0066F0B8    test        edi,edi
>0066F0BA    je          0066F0C2
 0066F0BC    cmp         dword ptr [ebp+10],0
>0066F0C0    jne         0066F0C6
 0066F0C2    xor         eax,eax
>0066F0C4    jmp         0066F11F
 0066F0C6    push        6E5115;'borlndmm'
 0066F0CB    call        KERNEL32.GetModuleHandleA
 0066F0D0    mov         ebx,eax
 0066F0D2    test        ebx,ebx
>0066F0D4    jne         0066F0DA
 0066F0D6    xor         eax,eax
>0066F0D8    jmp         0066F11F
 0066F0DA    push        6E511E
 0066F0DF    push        ebx
 0066F0E0    call        KERNEL32.GetProcAddress
 0066F0E5    mov         dword ptr [esi],eax
 0066F0E7    push        6E5137
 0066F0EC    push        ebx
 0066F0ED    call        KERNEL32.GetProcAddress
 0066F0F2    mov         dword ptr [edi],eax
 0066F0F4    push        6E5152
 0066F0F9    push        ebx
 0066F0FA    call        KERNEL32.GetProcAddress
 0066F0FF    mov         edx,dword ptr [ebp+10]
 0066F102    mov         dword ptr [edx],eax
 0066F104    cmp         dword ptr [esi],0
>0066F107    je          0066F116
 0066F109    cmp         dword ptr [edi],0
>0066F10C    je          0066F116
 0066F10E    mov         ecx,dword ptr [ebp+10]
 0066F111    cmp         dword ptr [ecx],0
>0066F114    jne         0066F11A
 0066F116    xor         eax,eax
>0066F118    jmp         0066F11F
 0066F11A    mov         eax,1
 0066F11F    pop         edi
 0066F120    pop         esi
 0066F121    pop         ebx
 0066F122    pop         ebp
 0066F123    ret
end;*}

//0066F124
{*function sub_0066F124:?;
begin
 0066F124    push        ebx
 0066F125    push        esi
 0066F126    mov         esi,6E5240
 0066F12B    push        6E5171;'borlndmm'
 0066F130    call        KERNEL32.GetModuleHandleA
 0066F135    mov         ebx,eax
 0066F137    mov         dword ptr ds:[6ED9F0],ebx;gvar_006ED9F0:HMODULE
 0066F13D    test        ebx,ebx
>0066F13F    jne         0066F146
 0066F141    xor         eax,eax
 0066F143    pop         esi
 0066F144    pop         ebx
 0066F145    ret
 0066F146    call        0066F088
 0066F14B    push        6ED9E4;gvar_006ED9E4
 0066F150    push        6ED9DC;gvar_006ED9DC
 0066F155    push        6ED9E0;gvar_006ED9E0
 0066F15A    call        0066F0A8
 0066F15F    add         esp,0C
 0066F162    push        6E517A
 0066F167    mov         edx,dword ptr ds:[6ED9F0];0x0 gvar_006ED9F0:HMODULE
 0066F16D    push        edx
 0066F16E    call        KERNEL32.GetProcAddress
 0066F173    mov         [006ED9E8],eax;gvar_006ED9E8
 0066F178    push        6E5194
 0066F17D    mov         ecx,dword ptr ds:[6ED9F0];0x0 gvar_006ED9F0:HMODULE
 0066F183    push        ecx
 0066F184    call        KERNEL32.GetProcAddress
 0066F189    mov         [006ED9EC],eax;gvar_006ED9EC
 0066F18E    cmp         dword ptr ds:[6ED9E8],0;gvar_006ED9E8
>0066F195    je          0066F1A0
 0066F197    cmp         dword ptr ds:[6ED9EC],0;gvar_006ED9EC
>0066F19E    jne         0066F1CB
 0066F1A0    mov         dword ptr [esi+0C],66F3DC
 0066F1A7    mov         dword ptr [esi+10],66F3C0
 0066F1AE    mov         dword ptr [esi+14],66F400
 0066F1B5    mov         dword ptr [esi+18],66F450
 0066F1BC    mov         dword ptr [esi+8],3
 0066F1C3    mov         eax,1
 0066F1C8    pop         esi
 0066F1C9    pop         ebx
 0066F1CA    ret
 0066F1CB    cmp         dword ptr ds:[6ED9E0],0;gvar_006ED9E0
>0066F1D2    je          0066F1E6
 0066F1D4    cmp         dword ptr ds:[6ED9DC],0;gvar_006ED9DC
>0066F1DB    je          0066F1E6
 0066F1DD    cmp         dword ptr ds:[6ED9E4],0;gvar_006ED9E4
>0066F1E4    jne         0066F1F1
 0066F1E6    push        6E51AF
 0066F1EB    call        00678D94
 0066F1F0    pop         ecx
 0066F1F1    cmp         dword ptr [esi+4],0
>0066F1F5    jne         0066F1FD
 0066F1F7    cmp         dword ptr [esi+8],0
>0066F1FB    je          0066F208
 0066F1FD    push        6E51EF
 0066F202    call        00678D94
 0066F207    pop         ecx
 0066F208    mov         dword ptr [esi+0C],66F258
 0066F20F    mov         dword ptr [esi+10],66F26C
 0066F216    mov         dword ptr [esi+14],66F284
 0066F21D    mov         dword ptr [esi+18],66F2C0
 0066F224    mov         dword ptr [esi+8],2
 0066F22B    mov         edx,dword ptr ds:[6ED9E4];0x0 gvar_006ED9E4
 0066F231    push        edx
 0066F232    mov         ecx,dword ptr ds:[6ED9DC];0x0 gvar_006ED9DC
 0066F238    push        ecx
 0066F239    mov         eax,[006ED9E0];0x0 gvar_006ED9E0
 0066F23E    push        eax
 0066F23F    call        0066F498
 0066F244    add         esp,0C
 0066F247    call        dword ptr ds:[6ED9E8]
 0066F24D    mov         eax,1
 0066F252    pop         esi
 0066F253    pop         ebx
 0066F254    ret
end;*}

//0066F2C8
{*function sub_0066F2C8(?:?):?;
begin
 0066F2C8    push        ebp
 0066F2C9    mov         ebp,esp
 0066F2CB    mov         eax,dword ptr [ebp+8]
 0066F2CE    push        eax
 0066F2CF    call        dword ptr ds:[6E5250]
 0066F2D5    pop         ecx
 0066F2D6    pop         ebp
 0066F2D7    ret
end;*}

//0066F2D8
{*procedure sub_0066F2D8(?:?);
begin
 0066F2D8    push        ebp
 0066F2D9    mov         ebp,esp
 0066F2DB    mov         eax,dword ptr [ebp+8]
 0066F2DE    push        eax
 0066F2DF    call        dword ptr ds:[6E524C]
 0066F2E5    pop         ecx
 0066F2E6    pop         ebp
 0066F2E7    ret
end;*}

//0066F2E8
{*function sub_0066F2E8(?:?; ?:?):?;
begin
 0066F2E8    push        ebp
 0066F2E9    mov         ebp,esp
 0066F2EB    mov         eax,dword ptr [ebp+0C]
 0066F2EE    push        eax
 0066F2EF    mov         edx,dword ptr [ebp+8]
 0066F2F2    push        edx
 0066F2F3    call        dword ptr ds:[6E5254]
 0066F2F9    add         esp,8
 0066F2FC    pop         ebp
 0066F2FD    ret
end;*}

//0066F300
{*procedure sub_0066F300(?:?);
begin
 0066F300    push        ebp
 0066F301    mov         ebp,esp
 0066F303    call        0066F124
 0066F308    test        eax,eax
>0066F30A    jne         0066F33E
 0066F30C    mov         dword ptr ds:[6E524C],66F3DC
 0066F316    mov         dword ptr ds:[6E5250],66F3C0
 0066F320    mov         dword ptr ds:[6E5254],66F400
 0066F32A    mov         dword ptr ds:[6E5258],66F450
 0066F334    mov         dword ptr ds:[6E5248],4;gvar_006E5248
 0066F33E    mov         eax,dword ptr [ebp+8]
 0066F341    mov         [006E5244],eax;gvar_006E5244
 0066F346    pop         ebp
 0066F347    ret
end;*}

//0066F498
{*procedure sub_0066F498(?:?; ?:?; ?:?);
begin
 0066F498    push        ebp
 0066F499    mov         ebp,esp
 0066F49B    add         esp,0FFFFFFF4
 0066F49E    call        IsMemoryManagerSet
 0066F4A3    test        al,al
>0066F4A5    jne         0066F4C1
 0066F4A7    mov         eax,dword ptr [ebp+8]
 0066F4AA    mov         dword ptr [ebp-0C],eax
 0066F4AD    lea         eax,[ebp-0C]
 0066F4B0    mov         edx,dword ptr [ebp+0C]
 0066F4B3    mov         dword ptr [ebp-8],edx
 0066F4B6    mov         ecx,dword ptr [ebp+10]
 0066F4B9    mov         dword ptr [ebp-4],ecx
 0066F4BC    call        SetMemoryManager
 0066F4C1    mov         esp,ebp
 0066F4C3    pop         ebp
 0066F4C4    ret
end;*}

end.