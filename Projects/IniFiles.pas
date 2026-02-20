//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit IniFiles;

interface

uses
  SysUtils, Classes;

type
  EIniFileException = class(Exception)
  end;
  TCustomIniFile = class(TObject)
  public
    .........FFileName:String;//f4
    procedure v0; virtual; abstract;//v0//0066AC84
    procedure v4; virtual; abstract;//v4//0066AC84
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//00653D4C
    //procedure vC(?:?; ?:?; ?:?); virtual;//vC//00653E18
    //function v10(?:?; ?:?; ?:?):?; virtual;//v10//00653E7C
    //procedure v14(?:?; ?:?; ?:?); virtual;//v14//0065435C
    //function v18(?:?; ?:?; ?:?):?; virtual;//v18//00654390
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//00653EB0
    //procedure v20(?:?; ?:?; ?:?; ?:?); virtual;//v20//00653F6C
    //procedure v24(?:?; ?:?; ?:?; ?:?); virtual;//v24//00654028
    //procedure v28(?:?; ?:?; ?:?; ?:?); virtual;//v28//006540E4
    procedure WriteBinaryStream(const Section:AnsiString; const Name:AnsiString; Value:TStream); virtual;//v2C//00654504
    //procedure v30(?:?; ?:?; ?:?; ?:?); virtual;//v30//006541A0
    //procedure v34(?:?; ?:?; ?:?; ?:?); virtual;//v34//00654208
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//00654270
    //procedure v3C(?:?; ?:?; ?:?; ?:?); virtual;//v3C//006542DC
    procedure v40; virtual; abstract;//v40//0066AC84
    procedure v44; virtual; abstract;//v44//0066AC84
    procedure v48; virtual; abstract;//v48//0066AC84
    procedure v4C; virtual; abstract;//v4C//0066AC84
    procedure v50; virtual; abstract;//v50//0066AC84
    procedure v54; virtual; abstract;//v54//0066AC84
  end;
  TIniFile = class(TCustomIniFile)
  public
    destructor Destroy; virtual;//00654678
    //procedure v0(?:?; ?:?; ?:?; ?:?); virtual;//v0//006546B4
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//00654714
    //procedure v40(?:?; ?:?); virtual;//v40//00654890
    //procedure v44(?:?); virtual;//v44//00654784
    //procedure v48(?:?; ?:?); virtual;//v48//006549A8
    //procedure v4C(?:?); virtual;//v4C//00654AFC
    //procedure v50(?:?; ?:?); virtual;//v50//00654B58
    procedure v54; virtual;//v54//00654B90
  end;
    procedure IniFiles;//00653B24
    constructor sub_00653D04;//00653D04
    //function sub_00653D4C(?:?; ?:?; ?:?):?;//00653D4C
    //procedure sub_00653E18(?:?; ?:?; ?:?);//00653E18
    //function sub_00653E7C(?:?; ?:?; ?:?):?;//00653E7C
    //procedure sub_00653EB0(?:?; ?:?; ?:?; ?:?);//00653EB0
    //procedure sub_00653F6C(?:?; ?:?; ?:?; ?:?);//00653F6C
    //procedure sub_00654028(?:?; ?:?; ?:?; ?:?);//00654028
    //procedure sub_006540E4(?:?; ?:?; ?:?; ?:?);//006540E4
    //procedure sub_006541A0(?:?; ?:?; ?:?; ?:?);//006541A0
    //procedure sub_00654208(?:?; ?:?; ?:?; ?:?);//00654208
    //procedure sub_00654270(?:?; ?:?; ?:?);//00654270
    //procedure sub_006542DC(?:?; ?:?; ?:?; ?:?);//006542DC
    //procedure sub_0065435C(?:?; ?:?; ?:?);//0065435C
    //function sub_00654390(?:?; ?:?; ?:?):?;//00654390
    procedure WriteBinaryStream(const Section:AnsiString; const Name:AnsiString; Value:TStream);//00654504
    destructor Destroy;//00654678
    //procedure sub_006546B4(?:?; ?:?; ?:?; ?:?);//006546B4
    //procedure sub_00654714(?:?; ?:?; ?:?);//00654714
    //procedure sub_00654784(?:?);//00654784
    //procedure sub_00654890(?:?; ?:?);//00654890
    //procedure sub_006549A8(?:?; ?:?);//006549A8
    //procedure sub_00654AFC(?:?);//00654AFC
    //procedure sub_00654B58(?:?; ?:?);//00654B58
    procedure sub_00654B90;//00654B90

implementation

//00653B24
procedure IniFiles;
begin
{*
 00653B24    sub         dword ptr ds:[6ECFE0],1
 00653B2B    ret
*}
end;

//00653D04
constructor sub_00653D04;
begin
{*
 00653D04    push        ebp
 00653D05    mov         ebp,esp
 00653D07    add         esp,0FFFFFFF4
 00653D0A    test        dl,dl
>00653D0C    je          00653D16
 00653D0E    add         esp,0FFFFFFF0
 00653D11    call        @ClassCreate
 00653D16    mov         dword ptr [ebp-0C],ecx
 00653D19    mov         byte ptr [ebp-5],dl
 00653D1C    mov         dword ptr [ebp-4],eax
 00653D1F    mov         eax,dword ptr [ebp-4]
 00653D22    add         eax,4
 00653D25    mov         edx,dword ptr [ebp-0C]
 00653D28    call        @LStrAsg
 00653D2D    mov         eax,dword ptr [ebp-4]
 00653D30    cmp         byte ptr [ebp-5],0
>00653D34    je          00653D45
 00653D36    call        @AfterConstruction
 00653D3B    pop         dword ptr fs:[0]
 00653D42    add         esp,0C
 00653D45    mov         eax,dword ptr [ebp-4]
 00653D48    mov         esp,ebp
 00653D4A    pop         ebp
 00653D4B    ret
*}
end;

//00653D4C
{*function sub_00653D4C(?:?; ?:?; ?:?):?;
begin
 00653D4C    push        ebp
 00653D4D    mov         ebp,esp
 00653D4F    add         esp,0FFFFFFE8
 00653D52    push        ebx
 00653D53    xor         ebx,ebx
 00653D55    mov         dword ptr [ebp-18],ebx
 00653D58    mov         dword ptr [ebp-14],ebx
 00653D5B    mov         dword ptr [ebp-0C],ecx
 00653D5E    mov         dword ptr [ebp-8],edx
 00653D61    mov         dword ptr [ebp-4],eax
 00653D64    xor         eax,eax
 00653D66    push        ebp
 00653D67    push        653DFB
 00653D6C    push        dword ptr fs:[eax]
 00653D6F    mov         dword ptr fs:[eax],esp
 00653D72    push        0
 00653D74    lea         eax,[ebp-14]
 00653D77    push        eax
 00653D78    mov         ecx,dword ptr [ebp-0C]
 00653D7B    mov         edx,dword ptr [ebp-8]
 00653D7E    mov         eax,dword ptr [ebp-4]
 00653D81    mov         ebx,dword ptr [eax]
 00653D83    call        dword ptr [ebx];@AbstractError
 00653D85    mov         eax,dword ptr [ebp-14]
 00653D88    call        @LStrLen
 00653D8D    cmp         eax,2
>00653D90    jle         00653DD2
 00653D92    mov         eax,dword ptr [ebp-14]
 00653D95    cmp         byte ptr [eax],30
>00653D98    jne         00653DD2
 00653D9A    mov         eax,dword ptr [ebp-14]
 00653D9D    cmp         byte ptr [eax+1],58
>00653DA1    je          00653DAC
 00653DA3    mov         eax,dword ptr [ebp-14]
 00653DA6    cmp         byte ptr [eax+1],78
>00653DAA    jne         00653DD2
 00653DAC    lea         eax,[ebp-18]
 00653DAF    push        eax
 00653DB0    mov         ecx,7FFFFFFF
 00653DB5    mov         edx,3
 00653DBA    mov         eax,dword ptr [ebp-14]
 00653DBD    call        @LStrCopy
 00653DC2    mov         ecx,dword ptr [ebp-18]
 00653DC5    lea         eax,[ebp-14]
 00653DC8    mov         edx,653E14;'$'
 00653DCD    call        @LStrCat3
 00653DD2    mov         edx,dword ptr [ebp+8]
 00653DD5    mov         eax,dword ptr [ebp-14]
 00653DD8    call        00657CD8
 00653DDD    mov         dword ptr [ebp-10],eax
 00653DE0    xor         eax,eax
 00653DE2    pop         edx
 00653DE3    pop         ecx
 00653DE4    pop         ecx
 00653DE5    mov         dword ptr fs:[eax],edx
 00653DE8    push        653E02
 00653DED    lea         eax,[ebp-18]
 00653DF0    mov         edx,2
 00653DF5    call        @LStrArrayClr
 00653DFA    ret
>00653DFB    jmp         @HandleFinally
>00653E00    jmp         00653DED
 00653E02    mov         eax,dword ptr [ebp-10]
 00653E05    pop         ebx
 00653E06    mov         esp,ebp
 00653E08    pop         ebp
 00653E09    ret         4
end;*}

//00653E18
{*procedure sub_00653E18(?:?; ?:?; ?:?);
begin
 00653E18    push        ebp
 00653E19    mov         ebp,esp
 00653E1B    add         esp,0FFFFFFF0
 00653E1E    push        ebx
 00653E1F    xor         ebx,ebx
 00653E21    mov         dword ptr [ebp-10],ebx
 00653E24    mov         dword ptr [ebp-0C],ecx
 00653E27    mov         dword ptr [ebp-8],edx
 00653E2A    mov         dword ptr [ebp-4],eax
 00653E2D    xor         eax,eax
 00653E2F    push        ebp
 00653E30    push        653E6E
 00653E35    push        dword ptr fs:[eax]
 00653E38    mov         dword ptr fs:[eax],esp
 00653E3B    lea         edx,[ebp-10]
 00653E3E    mov         eax,dword ptr [ebp+8]
 00653E41    call        IntToStr
 00653E46    mov         eax,dword ptr [ebp-10]
 00653E49    push        eax
 00653E4A    mov         ecx,dword ptr [ebp-0C]
 00653E4D    mov         edx,dword ptr [ebp-8]
 00653E50    mov         eax,dword ptr [ebp-4]
 00653E53    mov         ebx,dword ptr [eax]
 00653E55    call        dword ptr [ebx+4];@AbstractError
 00653E58    xor         eax,eax
 00653E5A    pop         edx
 00653E5B    pop         ecx
 00653E5C    pop         ecx
 00653E5D    mov         dword ptr fs:[eax],edx
 00653E60    push        653E75
 00653E65    lea         eax,[ebp-10]
 00653E68    call        @LStrClr
 00653E6D    ret
>00653E6E    jmp         @HandleFinally
>00653E73    jmp         00653E65
 00653E75    pop         ebx
 00653E76    mov         esp,ebp
 00653E78    pop         ebp
 00653E79    ret         4
end;*}

//00653E7C
{*function sub_00653E7C(?:?; ?:?; ?:?):?;
begin
 00653E7C    push        ebp
 00653E7D    mov         ebp,esp
 00653E7F    add         esp,0FFFFFFF0
 00653E82    push        ebx
 00653E83    mov         dword ptr [ebp-0C],ecx
 00653E86    mov         dword ptr [ebp-8],edx
 00653E89    mov         dword ptr [ebp-4],eax
 00653E8C    xor         eax,eax
 00653E8E    mov         al,byte ptr [ebp+8]
 00653E91    push        eax
 00653E92    mov         ecx,dword ptr [ebp-0C]
 00653E95    mov         edx,dword ptr [ebp-8]
 00653E98    mov         eax,dword ptr [ebp-4]
 00653E9B    mov         ebx,dword ptr [eax]
 00653E9D    call        dword ptr [ebx+8];TCustomIniFile.sub_00653D4C
 00653EA0    test        eax,eax
 00653EA2    setne       byte ptr [ebp-0D]
 00653EA6    mov         al,byte ptr [ebp-0D]
 00653EA9    pop         ebx
 00653EAA    mov         esp,ebp
 00653EAC    pop         ebp
 00653EAD    ret         4
end;*}

//00653EB0
{*procedure sub_00653EB0(?:?; ?:?; ?:?; ?:?);
begin
 00653EB0    push        ebp
 00653EB1    mov         ebp,esp
 00653EB3    add         esp,0FFFFFFE4
 00653EB6    push        ebx
 00653EB7    push        esi
 00653EB8    push        edi
 00653EB9    xor         ebx,ebx
 00653EBB    mov         dword ptr [ebp-1C],ebx
 00653EBE    mov         dword ptr [ebp-0C],ecx
 00653EC1    mov         dword ptr [ebp-8],edx
 00653EC4    mov         dword ptr [ebp-4],eax
 00653EC7    xor         eax,eax
 00653EC9    push        ebp
 00653ECA    push        653F59
 00653ECF    push        dword ptr fs:[eax]
 00653ED2    mov         dword ptr fs:[eax],esp
 00653ED5    push        0
 00653ED7    lea         eax,[ebp-1C]
 00653EDA    push        eax
 00653EDB    mov         ecx,dword ptr [ebp-0C]
 00653EDE    mov         edx,dword ptr [ebp-8]
 00653EE1    mov         eax,dword ptr [ebp-4]
 00653EE4    mov         ebx,dword ptr [eax]
 00653EE6    call        dword ptr [ebx];@AbstractError
 00653EE8    mov         eax,dword ptr [ebp+8]
 00653EEB    mov         dword ptr [ebp-18],eax
 00653EEE    mov         eax,dword ptr [ebp+0C]
 00653EF1    mov         dword ptr [ebp-14],eax
 00653EF4    cmp         dword ptr [ebp-1C],0
>00653EF8    je          00653F43
 00653EFA    xor         eax,eax
 00653EFC    push        ebp
 00653EFD    push        653F1E
 00653F02    push        dword ptr fs:[eax]
 00653F05    mov         dword ptr fs:[eax],esp
 00653F08    mov         eax,dword ptr [ebp-1C]
 00653F0B    call        0065B9E8
 00653F10    fstp        qword ptr [ebp-18]
 00653F13    wait
 00653F14    xor         eax,eax
 00653F16    pop         edx
 00653F17    pop         ecx
 00653F18    pop         ecx
 00653F19    mov         dword ptr fs:[eax],edx
>00653F1C    jmp         00653F43
>00653F1E    jmp         @HandleOnException
 00653F23    dd          2
 00653F27    dd          00656DCC;EConvertError
 00653F2B    dd          00653F3E
 00653F2F    dd          00000000
 00653F33    dd          00653F39
>00653F37    jmp         00653F3E
 00653F39    call        @RaiseAgain
 00653F3E    call        @DoneExcept
 00653F43    xor         eax,eax
 00653F45    pop         edx
 00653F46    pop         ecx
 00653F47    pop         ecx
 00653F48    mov         dword ptr fs:[eax],edx
 00653F4B    push        653F60
 00653F50    lea         eax,[ebp-1C]
 00653F53    call        @LStrClr
 00653F58    ret
>00653F59    jmp         @HandleFinally
>00653F5E    jmp         00653F50
 00653F60    fld         qword ptr [ebp-18]
 00653F63    pop         edi
 00653F64    pop         esi
 00653F65    pop         ebx
 00653F66    mov         esp,ebp
 00653F68    pop         ebp
 00653F69    ret         8
end;*}

//00653F6C
{*procedure sub_00653F6C(?:?; ?:?; ?:?; ?:?);
begin
 00653F6C    push        ebp
 00653F6D    mov         ebp,esp
 00653F6F    add         esp,0FFFFFFE4
 00653F72    push        ebx
 00653F73    push        esi
 00653F74    push        edi
 00653F75    xor         ebx,ebx
 00653F77    mov         dword ptr [ebp-1C],ebx
 00653F7A    mov         dword ptr [ebp-0C],ecx
 00653F7D    mov         dword ptr [ebp-8],edx
 00653F80    mov         dword ptr [ebp-4],eax
 00653F83    xor         eax,eax
 00653F85    push        ebp
 00653F86    push        654015
 00653F8B    push        dword ptr fs:[eax]
 00653F8E    mov         dword ptr fs:[eax],esp
 00653F91    push        0
 00653F93    lea         eax,[ebp-1C]
 00653F96    push        eax
 00653F97    mov         ecx,dword ptr [ebp-0C]
 00653F9A    mov         edx,dword ptr [ebp-8]
 00653F9D    mov         eax,dword ptr [ebp-4]
 00653FA0    mov         ebx,dword ptr [eax]
 00653FA2    call        dword ptr [ebx];@AbstractError
 00653FA4    mov         eax,dword ptr [ebp+8]
 00653FA7    mov         dword ptr [ebp-18],eax
 00653FAA    mov         eax,dword ptr [ebp+0C]
 00653FAD    mov         dword ptr [ebp-14],eax
 00653FB0    cmp         dword ptr [ebp-1C],0
>00653FB4    je          00653FFF
 00653FB6    xor         eax,eax
 00653FB8    push        ebp
 00653FB9    push        653FDA
 00653FBE    push        dword ptr fs:[eax]
 00653FC1    mov         dword ptr fs:[eax],esp
 00653FC4    mov         eax,dword ptr [ebp-1C]
 00653FC7    call        0065BAE0
 00653FCC    fstp        qword ptr [ebp-18]
 00653FCF    wait
 00653FD0    xor         eax,eax
 00653FD2    pop         edx
 00653FD3    pop         ecx
 00653FD4    pop         ecx
 00653FD5    mov         dword ptr fs:[eax],edx
>00653FD8    jmp         00653FFF
>00653FDA    jmp         @HandleOnException
 00653FDF    dd          2
 00653FE3    dd          00656DCC;EConvertError
 00653FE7    dd          00653FFA
 00653FEB    dd          00000000
 00653FEF    dd          00653FF5
>00653FF3    jmp         00653FFA
 00653FF5    call        @RaiseAgain
 00653FFA    call        @DoneExcept
 00653FFF    xor         eax,eax
 00654001    pop         edx
 00654002    pop         ecx
 00654003    pop         ecx
 00654004    mov         dword ptr fs:[eax],edx
 00654007    push        65401C
 0065400C    lea         eax,[ebp-1C]
 0065400F    call        @LStrClr
 00654014    ret
>00654015    jmp         @HandleFinally
>0065401A    jmp         0065400C
 0065401C    fld         qword ptr [ebp-18]
 0065401F    pop         edi
 00654020    pop         esi
 00654021    pop         ebx
 00654022    mov         esp,ebp
 00654024    pop         ebp
 00654025    ret         8
end;*}

//00654028
{*procedure sub_00654028(?:?; ?:?; ?:?; ?:?);
begin
 00654028    push        ebp
 00654029    mov         ebp,esp
 0065402B    add         esp,0FFFFFFE4
 0065402E    push        ebx
 0065402F    push        esi
 00654030    push        edi
 00654031    xor         ebx,ebx
 00654033    mov         dword ptr [ebp-1C],ebx
 00654036    mov         dword ptr [ebp-0C],ecx
 00654039    mov         dword ptr [ebp-8],edx
 0065403C    mov         dword ptr [ebp-4],eax
 0065403F    xor         eax,eax
 00654041    push        ebp
 00654042    push        6540D1
 00654047    push        dword ptr fs:[eax]
 0065404A    mov         dword ptr fs:[eax],esp
 0065404D    push        0
 0065404F    lea         eax,[ebp-1C]
 00654052    push        eax
 00654053    mov         ecx,dword ptr [ebp-0C]
 00654056    mov         edx,dword ptr [ebp-8]
 00654059    mov         eax,dword ptr [ebp-4]
 0065405C    mov         ebx,dword ptr [eax]
 0065405E    call        dword ptr [ebx];@AbstractError
 00654060    mov         eax,dword ptr [ebp+8]
 00654063    mov         dword ptr [ebp-18],eax
 00654066    mov         eax,dword ptr [ebp+0C]
 00654069    mov         dword ptr [ebp-14],eax
 0065406C    cmp         dword ptr [ebp-1C],0
>00654070    je          006540BB
 00654072    xor         eax,eax
 00654074    push        ebp
 00654075    push        654096
 0065407A    push        dword ptr fs:[eax]
 0065407D    mov         dword ptr fs:[eax],esp
 00654080    mov         eax,dword ptr [ebp-1C]
 00654083    call        00659BAC
 00654088    fstp        qword ptr [ebp-18]
 0065408B    wait
 0065408C    xor         eax,eax
 0065408E    pop         edx
 0065408F    pop         ecx
 00654090    pop         ecx
 00654091    mov         dword ptr fs:[eax],edx
>00654094    jmp         006540BB
>00654096    jmp         @HandleOnException
 0065409B    dd          2
 0065409F    dd          00656DCC;EConvertError
 006540A3    dd          006540B6
 006540A7    dd          00000000
 006540AB    dd          006540B1
>006540AF    jmp         006540B6
 006540B1    call        @RaiseAgain
 006540B6    call        @DoneExcept
 006540BB    xor         eax,eax
 006540BD    pop         edx
 006540BE    pop         ecx
 006540BF    pop         ecx
 006540C0    mov         dword ptr fs:[eax],edx
 006540C3    push        6540D8
 006540C8    lea         eax,[ebp-1C]
 006540CB    call        @LStrClr
 006540D0    ret
>006540D1    jmp         @HandleFinally
>006540D6    jmp         006540C8
 006540D8    fld         qword ptr [ebp-18]
 006540DB    pop         edi
 006540DC    pop         esi
 006540DD    pop         ebx
 006540DE    mov         esp,ebp
 006540E0    pop         ebp
 006540E1    ret         8
end;*}

//006540E4
{*procedure sub_006540E4(?:?; ?:?; ?:?; ?:?);
begin
 006540E4    push        ebp
 006540E5    mov         ebp,esp
 006540E7    add         esp,0FFFFFFE4
 006540EA    push        ebx
 006540EB    push        esi
 006540EC    push        edi
 006540ED    xor         ebx,ebx
 006540EF    mov         dword ptr [ebp-1C],ebx
 006540F2    mov         dword ptr [ebp-0C],ecx
 006540F5    mov         dword ptr [ebp-8],edx
 006540F8    mov         dword ptr [ebp-4],eax
 006540FB    xor         eax,eax
 006540FD    push        ebp
 006540FE    push        65418D
 00654103    push        dword ptr fs:[eax]
 00654106    mov         dword ptr fs:[eax],esp
 00654109    push        0
 0065410B    lea         eax,[ebp-1C]
 0065410E    push        eax
 0065410F    mov         ecx,dword ptr [ebp-0C]
 00654112    mov         edx,dword ptr [ebp-8]
 00654115    mov         eax,dword ptr [ebp-4]
 00654118    mov         ebx,dword ptr [eax]
 0065411A    call        dword ptr [ebx];@AbstractError
 0065411C    mov         eax,dword ptr [ebp+8]
 0065411F    mov         dword ptr [ebp-18],eax
 00654122    mov         eax,dword ptr [ebp+0C]
 00654125    mov         dword ptr [ebp-14],eax
 00654128    cmp         dword ptr [ebp-1C],0
>0065412C    je          00654177
 0065412E    xor         eax,eax
 00654130    push        ebp
 00654131    push        654152
 00654136    push        dword ptr fs:[eax]
 00654139    mov         dword ptr fs:[eax],esp
 0065413C    mov         eax,dword ptr [ebp-1C]
 0065413F    call        0065BA64
 00654144    fstp        qword ptr [ebp-18]
 00654147    wait
 00654148    xor         eax,eax
 0065414A    pop         edx
 0065414B    pop         ecx
 0065414C    pop         ecx
 0065414D    mov         dword ptr fs:[eax],edx
>00654150    jmp         00654177
>00654152    jmp         @HandleOnException
 00654157    dd          2
 0065415B    dd          00656DCC;EConvertError
 0065415F    dd          00654172
 00654163    dd          00000000
 00654167    dd          0065416D
>0065416B    jmp         00654172
 0065416D    call        @RaiseAgain
 00654172    call        @DoneExcept
 00654177    xor         eax,eax
 00654179    pop         edx
 0065417A    pop         ecx
 0065417B    pop         ecx
 0065417C    mov         dword ptr fs:[eax],edx
 0065417F    push        654194
 00654184    lea         eax,[ebp-1C]
 00654187    call        @LStrClr
 0065418C    ret
>0065418D    jmp         @HandleFinally
>00654192    jmp         00654184
 00654194    fld         qword ptr [ebp-18]
 00654197    pop         edi
 00654198    pop         esi
 00654199    pop         ebx
 0065419A    mov         esp,ebp
 0065419C    pop         ebp
 0065419D    ret         8
end;*}

//006541A0
{*procedure sub_006541A0(?:?; ?:?; ?:?; ?:?);
begin
 006541A0    push        ebp
 006541A1    mov         ebp,esp
 006541A3    add         esp,0FFFFFFF0
 006541A6    push        ebx
 006541A7    xor         ebx,ebx
 006541A9    mov         dword ptr [ebp-10],ebx
 006541AC    mov         dword ptr [ebp-0C],ecx
 006541AF    mov         dword ptr [ebp-8],edx
 006541B2    mov         dword ptr [ebp-4],eax
 006541B5    xor         eax,eax
 006541B7    push        ebp
 006541B8    push        6541F9
 006541BD    push        dword ptr fs:[eax]
 006541C0    mov         dword ptr fs:[eax],esp
 006541C3    push        dword ptr [ebp+0C]
 006541C6    push        dword ptr [ebp+8]
 006541C9    lea         eax,[ebp-10]
 006541CC    call        0065B068
 006541D1    mov         eax,dword ptr [ebp-10]
 006541D4    push        eax
 006541D5    mov         ecx,dword ptr [ebp-0C]
 006541D8    mov         edx,dword ptr [ebp-8]
 006541DB    mov         eax,dword ptr [ebp-4]
 006541DE    mov         ebx,dword ptr [eax]
 006541E0    call        dword ptr [ebx+4];@AbstractError
 006541E3    xor         eax,eax
 006541E5    pop         edx
 006541E6    pop         ecx
 006541E7    pop         ecx
 006541E8    mov         dword ptr fs:[eax],edx
 006541EB    push        654200
 006541F0    lea         eax,[ebp-10]
 006541F3    call        @LStrClr
 006541F8    ret
>006541F9    jmp         @HandleFinally
>006541FE    jmp         006541F0
 00654200    pop         ebx
 00654201    mov         esp,ebp
 00654203    pop         ebp
 00654204    ret         8
end;*}

//00654208
{*procedure sub_00654208(?:?; ?:?; ?:?; ?:?);
begin
 00654208    push        ebp
 00654209    mov         ebp,esp
 0065420B    add         esp,0FFFFFFF0
 0065420E    push        ebx
 0065420F    xor         ebx,ebx
 00654211    mov         dword ptr [ebp-10],ebx
 00654214    mov         dword ptr [ebp-0C],ecx
 00654217    mov         dword ptr [ebp-8],edx
 0065421A    mov         dword ptr [ebp-4],eax
 0065421D    xor         eax,eax
 0065421F    push        ebp
 00654220    push        654261
 00654225    push        dword ptr fs:[eax]
 00654228    mov         dword ptr fs:[eax],esp
 0065422B    push        dword ptr [ebp+0C]
 0065422E    push        dword ptr [ebp+8]
 00654231    lea         eax,[ebp-10]
 00654234    call        DateTimeToStr
 00654239    mov         eax,dword ptr [ebp-10]
 0065423C    push        eax
 0065423D    mov         ecx,dword ptr [ebp-0C]
 00654240    mov         edx,dword ptr [ebp-8]
 00654243    mov         eax,dword ptr [ebp-4]
 00654246    mov         ebx,dword ptr [eax]
 00654248    call        dword ptr [ebx+4];@AbstractError
 0065424B    xor         eax,eax
 0065424D    pop         edx
 0065424E    pop         ecx
 0065424F    pop         ecx
 00654250    mov         dword ptr fs:[eax],edx
 00654253    push        654268
 00654258    lea         eax,[ebp-10]
 0065425B    call        @LStrClr
 00654260    ret
>00654261    jmp         @HandleFinally
>00654266    jmp         00654258
 00654268    pop         ebx
 00654269    mov         esp,ebp
 0065426B    pop         ebp
 0065426C    ret         8
end;*}

//00654270
{*procedure sub_00654270(?:?; ?:?; ?:?);
begin
 00654270    push        ebp
 00654271    mov         ebp,esp
 00654273    add         esp,0FFFFFFF0
 00654276    push        ebx
 00654277    xor         ebx,ebx
 00654279    mov         dword ptr [ebp-10],ebx
 0065427C    mov         dword ptr [ebp-0C],ecx
 0065427F    mov         dword ptr [ebp-8],edx
 00654282    mov         dword ptr [ebp-4],eax
 00654285    xor         eax,eax
 00654287    push        ebp
 00654288    push        6542CD
 0065428D    push        dword ptr fs:[eax]
 00654290    mov         dword ptr fs:[eax],esp
 00654293    fld         qword ptr [ebp+8]
 00654296    add         esp,0FFFFFFF4
 00654299    fstp        tbyte ptr [esp]
 0065429C    wait
 0065429D    lea         eax,[ebp-10]
 006542A0    call        FloatToStr
 006542A5    mov         eax,dword ptr [ebp-10]
 006542A8    push        eax
 006542A9    mov         ecx,dword ptr [ebp-0C]
 006542AC    mov         edx,dword ptr [ebp-8]
 006542AF    mov         eax,dword ptr [ebp-4]
 006542B2    mov         ebx,dword ptr [eax]
 006542B4    call        dword ptr [ebx+4];@AbstractError
 006542B7    xor         eax,eax
 006542B9    pop         edx
 006542BA    pop         ecx
 006542BB    pop         ecx
 006542BC    mov         dword ptr fs:[eax],edx
 006542BF    push        6542D4
 006542C4    lea         eax,[ebp-10]
 006542C7    call        @LStrClr
 006542CC    ret
>006542CD    jmp         @HandleFinally
>006542D2    jmp         006542C4
 006542D4    pop         ebx
 006542D5    mov         esp,ebp
 006542D7    pop         ebp
 006542D8    ret         8
end;*}

//006542DC
{*procedure sub_006542DC(?:?; ?:?; ?:?; ?:?);
begin
 006542DC    push        ebp
 006542DD    mov         ebp,esp
 006542DF    add         esp,0FFFFFFF0
 006542E2    push        ebx
 006542E3    xor         ebx,ebx
 006542E5    mov         dword ptr [ebp-10],ebx
 006542E8    mov         dword ptr [ebp-0C],ecx
 006542EB    mov         dword ptr [ebp-8],edx
 006542EE    mov         dword ptr [ebp-4],eax
 006542F1    xor         eax,eax
 006542F3    push        ebp
 006542F4    push        654335
 006542F9    push        dword ptr fs:[eax]
 006542FC    mov         dword ptr fs:[eax],esp
 006542FF    push        dword ptr [ebp+0C]
 00654302    push        dword ptr [ebp+8]
 00654305    lea         eax,[ebp-10]
 00654308    call        0065B088
 0065430D    mov         eax,dword ptr [ebp-10]
 00654310    push        eax
 00654311    mov         ecx,dword ptr [ebp-0C]
 00654314    mov         edx,dword ptr [ebp-8]
 00654317    mov         eax,dword ptr [ebp-4]
 0065431A    mov         ebx,dword ptr [eax]
 0065431C    call        dword ptr [ebx+4];@AbstractError
 0065431F    xor         eax,eax
 00654321    pop         edx
 00654322    pop         ecx
 00654323    pop         ecx
 00654324    mov         dword ptr fs:[eax],edx
 00654327    push        65433C
 0065432C    lea         eax,[ebp-10]
 0065432F    call        @LStrClr
 00654334    ret
>00654335    jmp         @HandleFinally
>0065433A    jmp         0065432C
 0065433C    pop         ebx
 0065433D    mov         esp,ebp
 0065433F    pop         ebp
 00654340    ret         8
end;*}

//0065435C
{*procedure sub_0065435C(?:?; ?:?; ?:?);
begin
 0065435C    push        ebp
 0065435D    mov         ebp,esp
 0065435F    add         esp,0FFFFFFF4
 00654362    push        ebx
 00654363    mov         dword ptr [ebp-0C],ecx
 00654366    mov         dword ptr [ebp-8],edx
 00654369    mov         dword ptr [ebp-4],eax
 0065436C    xor         eax,eax
 0065436E    mov         al,byte ptr [ebp+8]
 00654371    mov         eax,dword ptr [eax*4+6E4948];^'0'
 00654378    push        eax
 00654379    mov         ecx,dword ptr [ebp-0C]
 0065437C    mov         edx,dword ptr [ebp-8]
 0065437F    mov         eax,dword ptr [ebp-4]
 00654382    mov         ebx,dword ptr [eax]
 00654384    call        dword ptr [ebx+4];@AbstractError
 00654387    pop         ebx
 00654388    mov         esp,ebp
 0065438A    pop         ebp
 0065438B    ret         4
end;*}

//00654390
{*function sub_00654390(?:?; ?:?; ?:?):?;
begin
 00654390    push        ebp
 00654391    mov         ebp,esp
 00654393    add         esp,0FFFFFFE4
 00654396    push        ebx
 00654397    xor         ebx,ebx
 00654399    mov         dword ptr [ebp-14],ebx
 0065439C    mov         dword ptr [ebp-0C],ecx
 0065439F    mov         dword ptr [ebp-8],edx
 006543A2    mov         dword ptr [ebp-4],eax
 006543A5    xor         eax,eax
 006543A7    push        ebp
 006543A8    push        6544F2
 006543AD    push        dword ptr fs:[eax]
 006543B0    mov         dword ptr fs:[eax],esp
 006543B3    push        0
 006543B5    lea         eax,[ebp-14]
 006543B8    push        eax
 006543B9    mov         ecx,dword ptr [ebp-0C]
 006543BC    mov         edx,dword ptr [ebp-8]
 006543BF    mov         eax,dword ptr [ebp-4]
 006543C2    mov         ebx,dword ptr [eax]
 006543C4    call        dword ptr [ebx];@AbstractError
 006543C6    cmp         dword ptr [ebp-14],0
>006543CA    je          006544D7
 006543D0    mov         eax,dword ptr [ebp+8]
 006543D3    mov         edx,dword ptr ds:[642BA0];TMemoryStream
 006543D9    call        @IsClass
 006543DE    test        al,al
>006543E0    je          006543EA
 006543E2    mov         eax,dword ptr [ebp+8]
 006543E5    mov         dword ptr [ebp-18],eax
>006543E8    jmp         006543F9
 006543EA    mov         dl,1
 006543EC    mov         eax,[00642BA0];TMemoryStream
 006543F1    call        TObject.Create;TMemoryStream.Create
 006543F6    mov         dword ptr [ebp-18],eax
 006543F9    xor         eax,eax
 006543FB    push        ebp
 006543FC    push        6544D0
 00654401    push        dword ptr fs:[eax]
 00654404    mov         dword ptr fs:[eax],esp
 00654407    mov         eax,dword ptr [ebp-18]
 0065440A    call        TStream.GetPosition
 0065440F    mov         dword ptr [ebp-1C],eax
 00654412    mov         eax,dword ptr [ebp-18]
 00654415    call        TStream.GetSize
 0065441A    mov         ebx,eax
 0065441C    mov         eax,dword ptr [ebp-14]
 0065441F    call        @LStrLen
 00654424    sar         eax,1
>00654426    jns         0065442B
 00654428    adc         eax,0
 0065442B    add         ebx,eax
 0065442D    mov         edx,ebx
 0065442F    mov         eax,dword ptr [ebp-18]
 00654432    mov         ecx,dword ptr [eax]
 00654434    call        dword ptr [ecx];TMemoryStream.sub_00649128
 00654436    mov         eax,dword ptr [ebp-14]
 00654439    call        @LStrLen
 0065443E    sar         eax,1
>00654440    jns         00654445
 00654442    adc         eax,0
 00654445    push        eax
 00654446    mov         eax,dword ptr [ebp-18]
 00654449    call        TStream.GetPosition
 0065444E    push        edx
 0065444F    push        eax
 00654450    mov         eax,dword ptr [ebp-18]
 00654453    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00654456    cdq
 00654457    add         eax,dword ptr [esp]
 0065445A    adc         edx,dword ptr [esp+4]
 0065445E    add         esp,8
 00654461    push        eax
 00654462    mov         eax,dword ptr [ebp-14]
 00654465    call        @LStrToPChar
 0065446A    pop         edx
 0065446B    pop         ecx
 0065446C    call        0064EB68
 00654471    mov         eax,dword ptr [ebp-1C]
 00654474    cdq
 00654475    push        edx
 00654476    push        eax
 00654477    mov         eax,dword ptr [ebp-18]
 0065447A    call        TStream.SetPosition
 0065447F    mov         eax,dword ptr [ebp+8]
 00654482    cmp         eax,dword ptr [ebp-18]
>00654485    je          006544A4
 00654487    mov         eax,dword ptr [ebp-14]
 0065448A    call        @LStrLen
 0065448F    sar         eax,1
>00654491    jns         00654496
 00654493    adc         eax,0
 00654496    cdq
 00654497    push        edx
 00654498    push        eax
 00654499    mov         edx,dword ptr [ebp-18]
 0065449C    mov         eax,dword ptr [ebp+8]
 0065449F    call        TStream.CopyFrom
 006544A4    mov         eax,dword ptr [ebp-18]
 006544A7    call        TStream.GetSize
 006544AC    sub         eax,dword ptr [ebp-1C]
 006544AF    mov         dword ptr [ebp-10],eax
 006544B2    xor         eax,eax
 006544B4    pop         edx
 006544B5    pop         ecx
 006544B6    pop         ecx
 006544B7    mov         dword ptr fs:[eax],edx
 006544BA    push        6544DC
 006544BF    mov         eax,dword ptr [ebp+8]
 006544C2    cmp         eax,dword ptr [ebp-18]
>006544C5    je          006544CF
 006544C7    mov         eax,dword ptr [ebp-18]
 006544CA    call        TObject.Free
 006544CF    ret
>006544D0    jmp         @HandleFinally
>006544D5    jmp         006544BF
 006544D7    xor         eax,eax
 006544D9    mov         dword ptr [ebp-10],eax
 006544DC    xor         eax,eax
 006544DE    pop         edx
 006544DF    pop         ecx
 006544E0    pop         ecx
 006544E1    mov         dword ptr fs:[eax],edx
 006544E4    push        6544F9
 006544E9    lea         eax,[ebp-14]
 006544EC    call        @LStrClr
 006544F1    ret
>006544F2    jmp         @HandleFinally
>006544F7    jmp         006544E9
 006544F9    mov         eax,dword ptr [ebp-10]
 006544FC    pop         ebx
 006544FD    mov         esp,ebp
 006544FF    pop         ebp
 00654500    ret         4
end;*}

//00654504
procedure TCustomIniFile.WriteBinaryStream(const Section:AnsiString; const Name:AnsiString; Value:TStream);
begin
{*
 00654504    push        ebp
 00654505    mov         ebp,esp
 00654507    add         esp,0FFFFFFEC
 0065450A    push        ebx
 0065450B    xor         ebx,ebx
 0065450D    mov         dword ptr [ebp-10],ebx
 00654510    mov         dword ptr [ebp-0C],ecx
 00654513    mov         dword ptr [ebp-8],edx
 00654516    mov         dword ptr [ebp-4],eax
 00654519    xor         eax,eax
 0065451B    push        ebp
 0065451C    push        654667
 00654521    push        dword ptr fs:[eax]
 00654524    mov         dword ptr fs:[eax],esp
 00654527    push        0
 00654529    push        2
 0065452B    mov         eax,dword ptr [ebp+8]
 0065452E    call        TStream.GetSize
 00654533    push        edx
 00654534    push        eax
 00654535    mov         eax,dword ptr [ebp+8]
 00654538    call        TStream.GetPosition
 0065453D    sub         dword ptr [esp],eax
 00654540    sbb         dword ptr [esp+4],edx
 00654544    pop         eax
 00654545    pop         edx
 00654546    call        @_llmul
 0065454B    mov         edx,eax
 0065454D    lea         eax,[ebp-10]
 00654550    call        @LStrSetLength
 00654555    mov         eax,dword ptr [ebp-10]
 00654558    call        @LStrLen
 0065455D    test        eax,eax
>0065455F    jle         0065463F
 00654565    mov         eax,dword ptr [ebp+8]
 00654568    mov         edx,dword ptr ds:[642BA0];TMemoryStream
 0065456E    call        @IsClass
 00654573    test        al,al
>00654575    je          0065457F
 00654577    mov         eax,dword ptr [ebp+8]
 0065457A    mov         dword ptr [ebp-14],eax
>0065457D    jmp         0065458E
 0065457F    mov         dl,1
 00654581    mov         eax,[00642BA0];TMemoryStream
 00654586    call        TObject.Create
 0065458B    mov         dword ptr [ebp-14],eax
 0065458E    xor         eax,eax
 00654590    push        ebp
 00654591    push        654638
 00654596    push        dword ptr fs:[eax]
 00654599    mov         dword ptr fs:[eax],esp
 0065459C    mov         eax,dword ptr [ebp-14]
 0065459F    cmp         eax,dword ptr [ebp+8]
>006545A2    je          006545D8
 006545A4    mov         eax,dword ptr [ebp+8]
 006545A7    call        TStream.GetSize
 006545AC    push        edx
 006545AD    push        eax
 006545AE    mov         eax,dword ptr [ebp+8]
 006545B1    call        TStream.GetPosition
 006545B6    sub         dword ptr [esp],eax
 006545B9    sbb         dword ptr [esp+4],edx
 006545BD    pop         eax
 006545BE    pop         edx
 006545BF    push        edx
 006545C0    push        eax
 006545C1    mov         edx,dword ptr [ebp+8]
 006545C4    mov         eax,dword ptr [ebp-14]
 006545C7    call        TStream.CopyFrom
 006545CC    push        0
 006545CE    push        0
 006545D0    mov         eax,dword ptr [ebp-14]
 006545D3    call        TStream.SetPosition
 006545D8    mov         eax,dword ptr [ebp-14]
 006545DB    call        TStream.GetSize
 006545E0    mov         ebx,eax
 006545E2    mov         eax,dword ptr [ebp-14]
 006545E5    call        TStream.GetPosition
 006545EA    sub         ebx,eax
 006545EC    push        ebx
 006545ED    mov         eax,dword ptr [ebp-14]
 006545F0    call        TStream.GetPosition
 006545F5    push        edx
 006545F6    push        eax
 006545F7    mov         eax,dword ptr [ebp-14]
 006545FA    mov         eax,dword ptr [eax+4]
 006545FD    cdq
 006545FE    add         eax,dword ptr [esp]
 00654601    adc         edx,dword ptr [esp+4]
 00654605    add         esp,8
 00654608    push        eax
 00654609    mov         eax,dword ptr [ebp-10]
 0065460C    call        @LStrToPChar
 00654611    mov         edx,eax
 00654613    pop         eax
 00654614    pop         ecx
 00654615    call        BinToHex
 0065461A    xor         eax,eax
 0065461C    pop         edx
 0065461D    pop         ecx
 0065461E    pop         ecx
 0065461F    mov         dword ptr fs:[eax],edx
 00654622    push        65463F
 00654627    mov         eax,dword ptr [ebp+8]
 0065462A    cmp         eax,dword ptr [ebp-14]
>0065462D    je          00654637
 0065462F    mov         eax,dword ptr [ebp-14]
 00654632    call        TObject.Free
 00654637    ret
>00654638    jmp         @HandleFinally
>0065463D    jmp         00654627
 0065463F    mov         eax,dword ptr [ebp-10]
 00654642    push        eax
 00654643    mov         ecx,dword ptr [ebp-0C]
 00654646    mov         edx,dword ptr [ebp-8]
 00654649    mov         eax,dword ptr [ebp-4]
 0065464C    mov         ebx,dword ptr [eax]
 0065464E    call        dword ptr [ebx+4]
 00654651    xor         eax,eax
 00654653    pop         edx
 00654654    pop         ecx
 00654655    pop         ecx
 00654656    mov         dword ptr fs:[eax],edx
 00654659    push        65466E
 0065465E    lea         eax,[ebp-10]
 00654661    call        @LStrClr
 00654666    ret
>00654667    jmp         @HandleFinally
>0065466C    jmp         0065465E
 0065466E    pop         ebx
 0065466F    mov         esp,ebp
 00654671    pop         ebp
 00654672    ret         4
*}
end;

//00654678
destructor TIniFile.Destroy;
begin
{*
 00654678    push        ebp
 00654679    mov         ebp,esp
 0065467B    add         esp,0FFFFFFF8
 0065467E    call        @BeforeDestruction
 00654683    mov         byte ptr [ebp-5],dl
 00654686    mov         dword ptr [ebp-4],eax
 00654689    mov         eax,dword ptr [ebp-4]
 0065468C    mov         edx,dword ptr [eax]
 0065468E    call        dword ptr [edx+54];TIniFile.sub_00654B90
 00654691    mov         dl,byte ptr [ebp-5]
 00654694    and         dl,0FC
 00654697    mov         eax,dword ptr [ebp-4]
 0065469A    call        TObject.Destroy
 0065469F    cmp         byte ptr [ebp-5],0
>006546A3    jle         006546AD
 006546A5    mov         eax,dword ptr [ebp-4]
 006546A8    call        @ClassDestroy
 006546AD    pop         ecx
 006546AE    pop         ecx
 006546AF    pop         ebp
 006546B0    ret
*}
end;

//006546B4
{*procedure sub_006546B4(?:?; ?:?; ?:?; ?:?);
begin
 006546B4    push        ebp
 006546B5    mov         ebp,esp
 006546B7    add         esp,0FFFFF7F4
 006546BD    mov         dword ptr [ebp-0C],ecx
 006546C0    mov         dword ptr [ebp-8],edx
 006546C3    mov         dword ptr [ebp-4],eax
 006546C6    mov         eax,dword ptr [ebp-4]
 006546C9    mov         eax,dword ptr [eax+4];TIniFile...........FFileName:String
 006546CC    call        @LStrToPChar
 006546D1    push        eax
 006546D2    push        800
 006546D7    lea         eax,[ebp-80C]
 006546DD    push        eax
 006546DE    mov         eax,dword ptr [ebp+0C]
 006546E1    call        @LStrToPChar
 006546E6    push        eax
 006546E7    mov         eax,dword ptr [ebp-0C]
 006546EA    call        @LStrToPChar
 006546EF    push        eax
 006546F0    mov         eax,dword ptr [ebp-8]
 006546F3    call        @LStrToPChar
 006546F8    push        eax
 006546F9    call        KERNEL32.GetPrivateProfileStringA
 006546FE    mov         ecx,eax
 00654700    lea         edx,[ebp-80C]
 00654706    mov         eax,dword ptr [ebp+8]
 00654709    call        @LStrFromPCharLen
 0065470E    mov         esp,ebp
 00654710    pop         ebp
 00654711    ret         8
end;*}

//00654714
{*procedure sub_00654714(?:?; ?:?; ?:?);
begin
 00654714    push        ebp
 00654715    mov         ebp,esp
 00654717    add         esp,0FFFFFFEC
 0065471A    mov         dword ptr [ebp-0C],ecx
 0065471D    mov         dword ptr [ebp-8],edx
 00654720    mov         dword ptr [ebp-4],eax
 00654723    mov         eax,dword ptr [ebp-4]
 00654726    mov         eax,dword ptr [eax+4];TIniFile............FFileName:String
 00654729    call        @LStrToPChar
 0065472E    push        eax
 0065472F    mov         eax,dword ptr [ebp+8]
 00654732    call        @LStrToPChar
 00654737    push        eax
 00654738    mov         eax,dword ptr [ebp-0C]
 0065473B    call        @LStrToPChar
 00654740    push        eax
 00654741    mov         eax,dword ptr [ebp-8]
 00654744    call        @LStrToPChar
 00654749    push        eax
 0065474A    call        KERNEL32.WritePrivateProfileStringA
 0065474F    test        eax,eax
>00654751    jne         0065477D
 00654753    mov         eax,dword ptr [ebp-4]
 00654756    mov         eax,dword ptr [eax+4];TIniFile.............FFileName:String
 00654759    mov         dword ptr [ebp-14],eax
 0065475C    mov         byte ptr [ebp-10],0B
 00654760    lea         eax,[ebp-14]
 00654763    push        eax
 00654764    push        0
 00654766    mov         ecx,dword ptr ds:[6EA084];^gvar_00654FFC
 0065476C    mov         dl,1
 0065476E    mov         eax,[00653B2C];EIniFileException
 00654773    call        Exception.CreateResFmt;EIniFileException.Create
 00654778    call        @RaiseExcept
 0065477D    mov         esp,ebp
 0065477F    pop         ebp
 00654780    ret         4
end;*}

//00654784
{*procedure sub_00654784(?:?);
begin
 00654784    push        ebp
 00654785    mov         ebp,esp
 00654787    add         esp,0FFFFFFEC
 0065478A    xor         ecx,ecx
 0065478C    mov         dword ptr [ebp-14],ecx
 0065478F    mov         dword ptr [ebp-8],edx
 00654792    mov         dword ptr [ebp-4],eax
 00654795    xor         eax,eax
 00654797    push        ebp
 00654798    push        654882
 0065479D    push        dword ptr fs:[eax]
 006547A0    mov         dword ptr fs:[eax],esp
 006547A3    mov         eax,4000
 006547A8    call        @GetMem
 006547AD    mov         dword ptr [ebp-0C],eax
 006547B0    xor         eax,eax
 006547B2    push        ebp
 006547B3    push        654865
 006547B8    push        dword ptr fs:[eax]
 006547BB    mov         dword ptr fs:[eax],esp
 006547BE    mov         eax,dword ptr [ebp-8]
 006547C1    call        TStrings.BeginUpdate
 006547C6    xor         eax,eax
 006547C8    push        ebp
 006547C9    push        654848
 006547CE    push        dword ptr fs:[eax]
 006547D1    mov         dword ptr fs:[eax],esp
 006547D4    mov         eax,dword ptr [ebp-8]
 006547D7    mov         edx,dword ptr [eax]
 006547D9    call        dword ptr [edx+44]
 006547DC    mov         eax,dword ptr [ebp-4]
 006547DF    mov         eax,dword ptr [eax+4];TIniFile..............FFileName:String
 006547E2    call        @LStrToPChar
 006547E7    push        eax
 006547E8    push        4000
 006547ED    mov         eax,dword ptr [ebp-0C]
 006547F0    push        eax
 006547F1    push        0
 006547F3    push        0
 006547F5    push        0
 006547F7    call        KERNEL32.GetPrivateProfileStringA
 006547FC    test        eax,eax
>006547FE    je          00654832
 00654800    mov         eax,dword ptr [ebp-0C]
 00654803    mov         dword ptr [ebp-10],eax
>00654806    jmp         0065482A
 00654808    lea         eax,[ebp-14]
 0065480B    mov         edx,dword ptr [ebp-10]
 0065480E    call        @LStrFromPChar
 00654813    mov         edx,dword ptr [ebp-14]
 00654816    mov         eax,dword ptr [ebp-8]
 00654819    mov         ecx,dword ptr [eax]
 0065481B    call        dword ptr [ecx+38]
 0065481E    mov         eax,dword ptr [ebp-10]
 00654821    call        StrLen
 00654826    inc         eax
 00654827    add         dword ptr [ebp-10],eax
 0065482A    mov         eax,dword ptr [ebp-10]
 0065482D    cmp         byte ptr [eax],0
>00654830    jne         00654808
 00654832    xor         eax,eax
 00654834    pop         edx
 00654835    pop         ecx
 00654836    pop         ecx
 00654837    mov         dword ptr fs:[eax],edx
 0065483A    push        65484F
 0065483F    mov         eax,dword ptr [ebp-8]
 00654842    call        TStrings.EndUpdate
 00654847    ret
>00654848    jmp         @HandleFinally
>0065484D    jmp         0065483F
 0065484F    xor         eax,eax
 00654851    pop         edx
 00654852    pop         ecx
 00654853    pop         ecx
 00654854    mov         dword ptr fs:[eax],edx
 00654857    push        65486C
 0065485C    mov         eax,dword ptr [ebp-0C]
 0065485F    call        @FreeMem
 00654864    ret
>00654865    jmp         @HandleFinally
>0065486A    jmp         0065485C
 0065486C    xor         eax,eax
 0065486E    pop         edx
 0065486F    pop         ecx
 00654870    pop         ecx
 00654871    mov         dword ptr fs:[eax],edx
 00654874    push        654889
 00654879    lea         eax,[ebp-14]
 0065487C    call        @LStrClr
 00654881    ret
>00654882    jmp         @HandleFinally
>00654887    jmp         00654879
 00654889    mov         esp,ebp
 0065488B    pop         ebp
 0065488C    ret
end;*}

//00654890
{*procedure sub_00654890(?:?; ?:?);
begin
 00654890    push        ebp
 00654891    mov         ebp,esp
 00654893    add         esp,0FFFFFFE8
 00654896    push        ebx
 00654897    xor         ebx,ebx
 00654899    mov         dword ptr [ebp-18],ebx
 0065489C    mov         dword ptr [ebp-0C],ecx
 0065489F    mov         dword ptr [ebp-8],edx
 006548A2    mov         dword ptr [ebp-4],eax
 006548A5    xor         eax,eax
 006548A7    push        ebp
 006548A8    push        654999
 006548AD    push        dword ptr fs:[eax]
 006548B0    mov         dword ptr fs:[eax],esp
 006548B3    mov         eax,4000
 006548B8    call        @GetMem
 006548BD    mov         dword ptr [ebp-10],eax
 006548C0    xor         eax,eax
 006548C2    push        ebp
 006548C3    push        65497C
 006548C8    push        dword ptr fs:[eax]
 006548CB    mov         dword ptr fs:[eax],esp
 006548CE    mov         eax,dword ptr [ebp-0C]
 006548D1    call        TStrings.BeginUpdate
 006548D6    xor         eax,eax
 006548D8    push        ebp
 006548D9    push        65495F
 006548DE    push        dword ptr fs:[eax]
 006548E1    mov         dword ptr fs:[eax],esp
 006548E4    mov         eax,dword ptr [ebp-0C]
 006548E7    mov         edx,dword ptr [eax]
 006548E9    call        dword ptr [edx+44]
 006548EC    mov         eax,dword ptr [ebp-4]
 006548EF    mov         eax,dword ptr [eax+4];TIniFile...............FFileName:String
 006548F2    call        @LStrToPChar
 006548F7    push        eax
 006548F8    push        4000
 006548FD    mov         eax,dword ptr [ebp-10]
 00654900    push        eax
 00654901    push        0
 00654903    push        0
 00654905    mov         eax,dword ptr [ebp-8]
 00654908    call        @LStrToPChar
 0065490D    push        eax
 0065490E    call        KERNEL32.GetPrivateProfileStringA
 00654913    test        eax,eax
>00654915    je          00654949
 00654917    mov         eax,dword ptr [ebp-10]
 0065491A    mov         dword ptr [ebp-14],eax
>0065491D    jmp         00654941
 0065491F    lea         eax,[ebp-18]
 00654922    mov         edx,dword ptr [ebp-14]
 00654925    call        @LStrFromPChar
 0065492A    mov         edx,dword ptr [ebp-18]
 0065492D    mov         eax,dword ptr [ebp-0C]
 00654930    mov         ecx,dword ptr [eax]
 00654932    call        dword ptr [ecx+38]
 00654935    mov         eax,dword ptr [ebp-14]
 00654938    call        StrLen
 0065493D    inc         eax
 0065493E    add         dword ptr [ebp-14],eax
 00654941    mov         eax,dword ptr [ebp-14]
 00654944    cmp         byte ptr [eax],0
>00654947    jne         0065491F
 00654949    xor         eax,eax
 0065494B    pop         edx
 0065494C    pop         ecx
 0065494D    pop         ecx
 0065494E    mov         dword ptr fs:[eax],edx
 00654951    push        654966
 00654956    mov         eax,dword ptr [ebp-0C]
 00654959    call        TStrings.EndUpdate
 0065495E    ret
>0065495F    jmp         @HandleFinally
>00654964    jmp         00654956
 00654966    xor         eax,eax
 00654968    pop         edx
 00654969    pop         ecx
 0065496A    pop         ecx
 0065496B    mov         dword ptr fs:[eax],edx
 0065496E    push        654983
 00654973    mov         eax,dword ptr [ebp-10]
 00654976    call        @FreeMem
 0065497B    ret
>0065497C    jmp         @HandleFinally
>00654981    jmp         00654973
 00654983    xor         eax,eax
 00654985    pop         edx
 00654986    pop         ecx
 00654987    pop         ecx
 00654988    mov         dword ptr fs:[eax],edx
 0065498B    push        6549A0
 00654990    lea         eax,[ebp-18]
 00654993    call        @LStrClr
 00654998    ret
>00654999    jmp         @HandleFinally
>0065499E    jmp         00654990
 006549A0    pop         ebx
 006549A1    mov         esp,ebp
 006549A3    pop         ebp
 006549A4    ret
end;*}

//006549A8
{*procedure sub_006549A8(?:?; ?:?);
begin
 006549A8    push        ebp
 006549A9    mov         ebp,esp
 006549AB    add         esp,0FFFFFFD8
 006549AE    push        ebx
 006549AF    xor         ebx,ebx
 006549B1    mov         dword ptr [ebp-1C],ebx
 006549B4    mov         dword ptr [ebp-20],ebx
 006549B7    mov         dword ptr [ebp-24],ebx
 006549BA    mov         dword ptr [ebp-28],ebx
 006549BD    mov         dword ptr [ebp-0C],ecx
 006549C0    mov         dword ptr [ebp-8],edx
 006549C3    mov         dword ptr [ebp-4],eax
 006549C6    xor         eax,eax
 006549C8    push        ebp
 006549C9    push        654AE4
 006549CE    push        dword ptr fs:[eax]
 006549D1    mov         dword ptr fs:[eax],esp
 006549D4    mov         dl,1
 006549D6    mov         eax,[006428B0];TStringList
 006549DB    call        TObject.Create;TStringList.Create
 006549E0    mov         dword ptr [ebp-10],eax
 006549E3    xor         eax,eax
 006549E5    push        ebp
 006549E6    push        654AC2
 006549EB    push        dword ptr fs:[eax]
 006549EE    mov         dword ptr fs:[eax],esp
 006549F1    mov         ecx,dword ptr [ebp-10]
 006549F4    mov         edx,dword ptr [ebp-8]
 006549F7    mov         eax,dword ptr [ebp-4]
 006549FA    mov         ebx,dword ptr [eax]
 006549FC    call        dword ptr [ebx+40];TIniFile.sub_00654890
 006549FF    mov         eax,dword ptr [ebp-0C]
 00654A02    call        TStrings.BeginUpdate
 00654A07    xor         eax,eax
 00654A09    push        ebp
 00654A0A    push        654AA5
 00654A0F    push        dword ptr fs:[eax]
 00654A12    mov         dword ptr fs:[eax],esp
 00654A15    mov         eax,dword ptr [ebp-0C]
 00654A18    mov         edx,dword ptr [eax]
 00654A1A    call        dword ptr [edx+44]
 00654A1D    mov         eax,dword ptr [ebp-10]
 00654A20    mov         edx,dword ptr [eax]
 00654A22    call        dword ptr [edx+14];TStringList.sub_00648198
 00654A25    dec         eax
 00654A26    test        eax,eax
>00654A28    jl          00654A8F
 00654A2A    inc         eax
 00654A2B    mov         dword ptr [ebp-18],eax
 00654A2E    mov         dword ptr [ebp-14],0
 00654A35    lea         ecx,[ebp-20]
 00654A38    mov         edx,dword ptr [ebp-14]
 00654A3B    mov         eax,dword ptr [ebp-10]
 00654A3E    mov         ebx,dword ptr [eax]
 00654A40    call        dword ptr [ebx+0C];TStringList.sub_00648130
 00654A43    push        dword ptr [ebp-20]
 00654A46    push        654AF8;'='
 00654A4B    push        0
 00654A4D    lea         eax,[ebp-24]
 00654A50    push        eax
 00654A51    lea         ecx,[ebp-28]
 00654A54    mov         edx,dword ptr [ebp-14]
 00654A57    mov         eax,dword ptr [ebp-10]
 00654A5A    mov         ebx,dword ptr [eax]
 00654A5C    call        dword ptr [ebx+0C];TStringList.sub_00648130
 00654A5F    mov         ecx,dword ptr [ebp-28]
 00654A62    mov         edx,dword ptr [ebp-8]
 00654A65    mov         eax,dword ptr [ebp-4]
 00654A68    mov         ebx,dword ptr [eax]
 00654A6A    call        dword ptr [ebx];TIniFile.sub_006546B4
 00654A6C    push        dword ptr [ebp-24]
 00654A6F    lea         eax,[ebp-1C]
 00654A72    mov         edx,3
 00654A77    call        @LStrCatN
 00654A7C    mov         edx,dword ptr [ebp-1C]
 00654A7F    mov         eax,dword ptr [ebp-0C]
 00654A82    mov         ecx,dword ptr [eax]
 00654A84    call        dword ptr [ecx+38]
 00654A87    inc         dword ptr [ebp-14]
 00654A8A    dec         dword ptr [ebp-18]
>00654A8D    jne         00654A35
 00654A8F    xor         eax,eax
 00654A91    pop         edx
 00654A92    pop         ecx
 00654A93    pop         ecx
 00654A94    mov         dword ptr fs:[eax],edx
 00654A97    push        654AAC
 00654A9C    mov         eax,dword ptr [ebp-0C]
 00654A9F    call        TStrings.EndUpdate
 00654AA4    ret
>00654AA5    jmp         @HandleFinally
>00654AAA    jmp         00654A9C
 00654AAC    xor         eax,eax
 00654AAE    pop         edx
 00654AAF    pop         ecx
 00654AB0    pop         ecx
 00654AB1    mov         dword ptr fs:[eax],edx
 00654AB4    push        654AC9
 00654AB9    mov         eax,dword ptr [ebp-10]
 00654ABC    call        TObject.Free
 00654AC1    ret
>00654AC2    jmp         @HandleFinally
>00654AC7    jmp         00654AB9
 00654AC9    xor         eax,eax
 00654ACB    pop         edx
 00654ACC    pop         ecx
 00654ACD    pop         ecx
 00654ACE    mov         dword ptr fs:[eax],edx
 00654AD1    push        654AEB
 00654AD6    lea         eax,[ebp-28]
 00654AD9    mov         edx,4
 00654ADE    call        @LStrArrayClr
 00654AE3    ret
>00654AE4    jmp         @HandleFinally
>00654AE9    jmp         00654AD6
 00654AEB    pop         ebx
 00654AEC    mov         esp,ebp
 00654AEE    pop         ebp
 00654AEF    ret
end;*}

//00654AFC
{*procedure sub_00654AFC(?:?);
begin
 00654AFC    push        ebp
 00654AFD    mov         ebp,esp
 00654AFF    add         esp,0FFFFFFF0
 00654B02    mov         dword ptr [ebp-8],edx
 00654B05    mov         dword ptr [ebp-4],eax
 00654B08    mov         eax,dword ptr [ebp-4]
 00654B0B    mov         eax,dword ptr [eax+4];TIniFile................FFileName:String
 00654B0E    call        @LStrToPChar
 00654B13    push        eax
 00654B14    push        0
 00654B16    push        0
 00654B18    mov         eax,dword ptr [ebp-8]
 00654B1B    call        @LStrToPChar
 00654B20    push        eax
 00654B21    call        KERNEL32.WritePrivateProfileStringA
 00654B26    test        eax,eax
>00654B28    jne         00654B54
 00654B2A    mov         eax,dword ptr [ebp-4]
 00654B2D    mov         eax,dword ptr [eax+4];TIniFile.................FFileName:String
 00654B30    mov         dword ptr [ebp-10],eax
 00654B33    mov         byte ptr [ebp-0C],0B
 00654B37    lea         eax,[ebp-10]
 00654B3A    push        eax
 00654B3B    push        0
 00654B3D    mov         ecx,dword ptr ds:[6EA084];^gvar_00654FFC
 00654B43    mov         dl,1
 00654B45    mov         eax,[00653B2C];EIniFileException
 00654B4A    call        Exception.CreateResFmt;EIniFileException.Create
 00654B4F    call        @RaiseExcept
 00654B54    mov         esp,ebp
 00654B56    pop         ebp
 00654B57    ret
end;*}

//00654B58
{*procedure sub_00654B58(?:?; ?:?);
begin
 00654B58    push        ebp
 00654B59    mov         ebp,esp
 00654B5B    add         esp,0FFFFFFF4
 00654B5E    mov         dword ptr [ebp-0C],ecx
 00654B61    mov         dword ptr [ebp-8],edx
 00654B64    mov         dword ptr [ebp-4],eax
 00654B67    mov         eax,dword ptr [ebp-4]
 00654B6A    mov         eax,dword ptr [eax+4];TIniFile..................FFileName:String
 00654B6D    call        @LStrToPChar
 00654B72    push        eax
 00654B73    push        0
 00654B75    mov         eax,dword ptr [ebp-0C]
 00654B78    call        @LStrToPChar
 00654B7D    push        eax
 00654B7E    mov         eax,dword ptr [ebp-8]
 00654B81    call        @LStrToPChar
 00654B86    push        eax
 00654B87    call        KERNEL32.WritePrivateProfileStringA
 00654B8C    mov         esp,ebp
 00654B8E    pop         ebp
 00654B8F    ret
end;*}

//00654B90
procedure sub_00654B90;
begin
{*
 00654B90    push        ebp
 00654B91    mov         ebp,esp
 00654B93    push        ecx
 00654B94    mov         dword ptr [ebp-4],eax
 00654B97    mov         eax,dword ptr [ebp-4]
 00654B9A    mov         eax,dword ptr [eax+4];TIniFile...................FFileName:String
 00654B9D    call        @LStrToPChar
 00654BA2    push        eax
 00654BA3    push        0
 00654BA5    push        0
 00654BA7    push        0
 00654BA9    call        KERNEL32.WritePrivateProfileStringA
 00654BAE    pop         ecx
 00654BAF    pop         ebp
 00654BB0    ret
*}
end;

end.