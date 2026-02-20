//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Windows;

interface

uses
  SysUtils, Classes;

    procedure Windows;//0063CEB0
    //function sub_0063CEB8(?:?; ?:?):?;//0063CEB8
    //function sub_0063CEE0(?:THKModifiers; ?:?):?;//0063CEE0
    //function sub_0063CF08(?:DWORD):?;//0063CF08
    //function sub_0063CF24(?:?):?;//0063CF24
    //function sub_0063CF3C:?;//0063CF3C
    //function sub_0063CF50(?:THandle):?;//0063CF50
    function GlobalAllocPtr(Flags:Integer; Bytes:Longint):Pointer;//0063CF68
    function GlobalReAllocPtr(P:Pointer; Bytes:Longint; Flags:Integer):Pointer;//0063CF78
    function GlobalFreePtr(P:Pointer):THandle;//0063CF94
    //function sub_0063CFA8(?:?; ?:?):?;//0063CFA8
    function RGB(r:Byte; g:Byte; b:Byte):DWORD;//0063CFCC
    function GetRValue(rgb:DWORD):Byte;//0063D000
    function GetGValue(rgb:DWORD):Byte;//0063D018
    function GetBValue(rgb:DWORD):Byte;//0063D034
    //procedure sub_0063D050(?:?; ?:word);//0063D050
    //function sub_0063D074(?:word):?;//0063D074
    //function sub_0063D09C(?:?; ?:?):?;//0063D09C
    //function sub_0063D0C4(?:Integer; ?:?):?;//0063D0C4
    //function sub_0063D0EC(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0063D0EC
    //function sub_0063D13C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0063D13C
    procedure Finalization;//0063D250

implementation

//0063CEB0
procedure Windows;
begin
{*
 0063CEB0    sub         dword ptr ds:[6ECED8],1
 0063CEB7    ret
*}
end;

//0063CEB8
{*function sub_0063CEB8(?:?; ?:?):?;
begin
 0063CEB8    push        ebp
 0063CEB9    mov         ebp,esp
 0063CEBB    push        ecx
 0063CEBC    mov         byte ptr [ebp-2],dl
 0063CEBF    mov         byte ptr [ebp-1],al
 0063CEC2    xor         eax,eax
 0063CEC4    mov         al,byte ptr [ebp-1]
 0063CEC7    xor         edx,edx
 0063CEC9    mov         dl,byte ptr [ebp-2]
 0063CECC    shl         edx,8
 0063CECF    or          ax,dx
 0063CED2    mov         word ptr [ebp-4],ax
 0063CED6    mov         ax,word ptr [ebp-4]
 0063CEDA    pop         ecx
 0063CEDB    pop         ebp
 0063CEDC    ret
end;*}

//0063CEE0
{*function sub_0063CEE0(?:THKModifiers; ?:?):?;
begin
 0063CEE0    push        ebp
 0063CEE1    mov         ebp,esp
 0063CEE3    add         esp,0FFFFFFF8
 0063CEE6    mov         word ptr [ebp-4],dx
 0063CEEA    mov         word ptr [ebp-2],ax
 0063CEEE    movzx       eax,word ptr [ebp-2]
 0063CEF2    movzx       edx,word ptr [ebp-4]
 0063CEF6    shl         edx,10
 0063CEF9    or          eax,edx
 0063CEFB    mov         dword ptr [ebp-8],eax
 0063CEFE    mov         eax,dword ptr [ebp-8]
 0063CF01    pop         ecx
 0063CF02    pop         ecx
 0063CF03    pop         ebp
 0063CF04    ret
end;*}

//0063CF08
{*function sub_0063CF08(?:DWORD):?;
begin
 0063CF08    push        ebp
 0063CF09    mov         ebp,esp
 0063CF0B    add         esp,0FFFFFFF8
 0063CF0E    mov         dword ptr [ebp-4],eax
 0063CF11    mov         eax,dword ptr [ebp-4]
 0063CF14    shr         eax,10
 0063CF17    mov         word ptr [ebp-6],ax
 0063CF1B    mov         ax,word ptr [ebp-6]
 0063CF1F    pop         ecx
 0063CF20    pop         ecx
 0063CF21    pop         ebp
 0063CF22    ret
end;*}

//0063CF24
{*function sub_0063CF24(?:?):?;
begin
 0063CF24    push        ebp
 0063CF25    mov         ebp,esp
 0063CF27    push        ecx
 0063CF28    mov         word ptr [ebp-2],ax
 0063CF2C    movzx       eax,word ptr [ebp-2]
 0063CF30    shr         eax,8
 0063CF33    mov         byte ptr [ebp-3],al
 0063CF36    mov         al,byte ptr [ebp-3]
 0063CF39    pop         ecx
 0063CF3A    pop         ebp
 0063CF3B    ret
end;*}

//0063CF3C
{*function sub_0063CF3C:?;
begin
 0063CF3C    push        ebp
 0063CF3D    mov         ebp,esp
 0063CF3F    push        ecx
 0063CF40    call        KERNEL32.GetTickCount
 0063CF45    mov         dword ptr [ebp-4],eax
 0063CF48    mov         eax,dword ptr [ebp-4]
 0063CF4B    pop         ecx
 0063CF4C    pop         ebp
 0063CF4D    ret
end;*}

//0063CF50
{*function sub_0063CF50(?:THandle):?;
begin
 0063CF50    push        ebp
 0063CF51    mov         ebp,esp
 0063CF53    add         esp,0FFFFFFF8
 0063CF56    mov         dword ptr [ebp-8],eax
 0063CF59    xor         eax,eax
 0063CF5B    mov         dword ptr [ebp-4],eax
 0063CF5E    mov         eax,dword ptr [ebp-4]
 0063CF61    pop         ecx
 0063CF62    pop         ecx
 0063CF63    pop         ebp
 0063CF64    ret
end;*}

//0063CF68
function GlobalAllocPtr(Flags:Integer; Bytes:Longint):Pointer;
begin
{*
 0063CF68    push        edx
 0063CF69    push        eax
 0063CF6A    call        KERNEL32.GlobalAlloc
 0063CF6F    push        eax
 0063CF70    call        KERNEL32.GlobalLock
 0063CF75    ret
*}
end;

//0063CF78
function GlobalReAllocPtr(P:Pointer; Bytes:Longint; Flags:Integer):Pointer;
begin
{*
 0063CF78    push        ecx
 0063CF79    push        edx
 0063CF7A    push        eax
 0063CF7B    call        KERNEL32.GlobalHandle
 0063CF80    push        eax
 0063CF81    push        eax
 0063CF82    call        KERNEL32.GlobalUnlock
 0063CF87    call        KERNEL32.GlobalReAlloc
 0063CF8C    push        eax
 0063CF8D    call        KERNEL32.GlobalLock
 0063CF92    ret
*}
end;

//0063CF94
function GlobalFreePtr(P:Pointer):THandle;
begin
{*
 0063CF94    push        eax
 0063CF95    call        KERNEL32.GlobalHandle
 0063CF9A    push        eax
 0063CF9B    push        eax
 0063CF9C    call        KERNEL32.GlobalUnlock
 0063CFA1    call        KERNEL32.GlobalFree
 0063CFA6    ret
*}
end;

//0063CFA8
{*function sub_0063CFA8(?:?; ?:?):?;
begin
 0063CFA8    push        ebp
 0063CFA9    mov         ebp,esp
 0063CFAB    add         esp,0FFFFFFF4
 0063CFAE    mov         dword ptr [ebp-8],edx
 0063CFB1    mov         dword ptr [ebp-4],eax
 0063CFB4    mov         eax,dword ptr [ebp-8]
 0063CFB7    shl         eax,8
 0063CFBA    and         eax,0FF000000
 0063CFBF    or          eax,dword ptr [ebp-4]
 0063CFC2    mov         dword ptr [ebp-0C],eax
 0063CFC5    mov         eax,dword ptr [ebp-0C]
 0063CFC8    mov         esp,ebp
 0063CFCA    pop         ebp
 0063CFCB    ret
end;*}

//0063CFCC
function RGB(r:Byte; g:Byte; b:Byte):DWORD;
begin
{*
 0063CFCC    push        ebp
 0063CFCD    mov         ebp,esp
 0063CFCF    add         esp,0FFFFFFF8
 0063CFD2    mov         byte ptr [ebp-3],cl
 0063CFD5    mov         byte ptr [ebp-2],dl
 0063CFD8    mov         byte ptr [ebp-1],al
 0063CFDB    xor         eax,eax
 0063CFDD    mov         al,byte ptr [ebp-1]
 0063CFE0    xor         edx,edx
 0063CFE2    mov         dl,byte ptr [ebp-2]
 0063CFE5    shl         edx,8
 0063CFE8    or          eax,edx
 0063CFEA    xor         edx,edx
 0063CFEC    mov         dl,byte ptr [ebp-3]
 0063CFEF    shl         edx,10
 0063CFF2    or          eax,edx
 0063CFF4    mov         dword ptr [ebp-8],eax
 0063CFF7    mov         eax,dword ptr [ebp-8]
 0063CFFA    pop         ecx
 0063CFFB    pop         ecx
 0063CFFC    pop         ebp
 0063CFFD    ret
*}
end;

//0063D000
function GetRValue(rgb:DWORD):Byte;
begin
{*
 0063D000    push        ebp
 0063D001    mov         ebp,esp
 0063D003    add         esp,0FFFFFFF8
 0063D006    mov         dword ptr [ebp-4],eax
 0063D009    mov         al,byte ptr [ebp-4]
 0063D00C    mov         byte ptr [ebp-5],al
 0063D00F    mov         al,byte ptr [ebp-5]
 0063D012    pop         ecx
 0063D013    pop         ecx
 0063D014    pop         ebp
 0063D015    ret
*}
end;

//0063D018
function GetGValue(rgb:DWORD):Byte;
begin
{*
 0063D018    push        ebp
 0063D019    mov         ebp,esp
 0063D01B    add         esp,0FFFFFFF8
 0063D01E    mov         dword ptr [ebp-4],eax
 0063D021    mov         eax,dword ptr [ebp-4]
 0063D024    shr         eax,8
 0063D027    mov         byte ptr [ebp-5],al
 0063D02A    mov         al,byte ptr [ebp-5]
 0063D02D    pop         ecx
 0063D02E    pop         ecx
 0063D02F    pop         ebp
 0063D030    ret
*}
end;

//0063D034
function GetBValue(rgb:DWORD):Byte;
begin
{*
 0063D034    push        ebp
 0063D035    mov         ebp,esp
 0063D037    add         esp,0FFFFFFF8
 0063D03A    mov         dword ptr [ebp-4],eax
 0063D03D    mov         eax,dword ptr [ebp-4]
 0063D040    shr         eax,10
 0063D043    mov         byte ptr [ebp-5],al
 0063D046    mov         al,byte ptr [ebp-5]
 0063D049    pop         ecx
 0063D04A    pop         ecx
 0063D04B    pop         ebp
 0063D04C    ret
*}
end;

//0063D050
{*procedure sub_0063D050(?:?; ?:word);
begin
 0063D050    push        ebp
 0063D051    mov         ebp,esp
 0063D053    add         esp,0FFFFFFF8
 0063D056    mov         dword ptr [ebp-8],edx
 0063D059    mov         dword ptr [ebp-4],eax
 0063D05C    movsx       eax,word ptr [ebp-4]
 0063D060    mov         edx,dword ptr [ebp-8]
 0063D063    mov         dword ptr [edx],eax
 0063D065    movsx       eax,word ptr [ebp-2]
 0063D069    mov         edx,dword ptr [ebp-8]
 0063D06C    mov         dword ptr [edx+4],eax
 0063D06F    pop         ecx
 0063D070    pop         ecx
 0063D071    pop         ebp
 0063D072    ret
end;*}

//0063D074
{*function sub_0063D074(?:word):?;
begin
 0063D074    push        ebp
 0063D075    mov         ebp,esp
 0063D077    add         esp,0FFFFFFF8
 0063D07A    mov         dword ptr [ebp-4],eax
 0063D07D    mov         eax,dword ptr [ebp-4]
 0063D080    mov         ax,word ptr [eax]
 0063D083    mov         word ptr [ebp-8],ax
 0063D087    mov         eax,dword ptr [ebp-4]
 0063D08A    mov         ax,word ptr [eax+4]
 0063D08E    mov         word ptr [ebp-6],ax
 0063D092    mov         eax,dword ptr [ebp-8]
 0063D095    pop         ecx
 0063D096    pop         ecx
 0063D097    pop         ebp
 0063D098    ret
end;*}

//0063D09C
{*function sub_0063D09C(?:?; ?:?):?;
begin
 0063D09C    push        ebp
 0063D09D    mov         ebp,esp
 0063D09F    add         esp,0FFFFFFF8
 0063D0A2    mov         word ptr [ebp-4],dx
 0063D0A6    mov         word ptr [ebp-2],ax
 0063D0AA    mov         dx,word ptr [ebp-4]
 0063D0AE    mov         ax,word ptr [ebp-2]
 0063D0B2    call        0063CEE0
 0063D0B7    mov         dword ptr [ebp-8],eax
 0063D0BA    mov         eax,dword ptr [ebp-8]
 0063D0BD    pop         ecx
 0063D0BE    pop         ecx
 0063D0BF    pop         ebp
 0063D0C0    ret
end;*}

//0063D0C4
{*function sub_0063D0C4(?:Integer; ?:?):?;
begin
 0063D0C4    push        ebp
 0063D0C5    mov         ebp,esp
 0063D0C7    add         esp,0FFFFFFF8
 0063D0CA    mov         word ptr [ebp-4],dx
 0063D0CE    mov         word ptr [ebp-2],ax
 0063D0D2    mov         dx,word ptr [ebp-4]
 0063D0D6    mov         ax,word ptr [ebp-2]
 0063D0DA    call        0063CEE0
 0063D0DF    mov         dword ptr [ebp-8],eax
 0063D0E2    mov         eax,dword ptr [ebp-8]
 0063D0E5    pop         ecx
 0063D0E6    pop         ecx
 0063D0E7    pop         ebp
 0063D0E8    ret
end;*}

//0063D0EC
{*function sub_0063D0EC(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0063D0EC    push        ebp
 0063D0ED    mov         ebp,esp
 0063D0EF    add         esp,0FFFFFFF0
 0063D0F2    mov         dword ptr [ebp-0C],ecx
 0063D0F5    mov         dword ptr [ebp-8],edx
 0063D0F8    mov         dword ptr [ebp-4],eax
 0063D0FB    mov         eax,dword ptr [ebp+8]
 0063D0FE    push        eax
 0063D0FF    mov         eax,dword ptr [ebp+0C]
 0063D102    push        eax
 0063D103    mov         eax,dword ptr [ebp+10]
 0063D106    push        eax
 0063D107    mov         eax,dword ptr [ebp+14]
 0063D10A    push        eax
 0063D10B    mov         eax,dword ptr [ebp+18]
 0063D10E    push        eax
 0063D10F    mov         eax,dword ptr [ebp+1C]
 0063D112    push        eax
 0063D113    mov         eax,dword ptr [ebp+20]
 0063D116    push        eax
 0063D117    mov         eax,dword ptr [ebp+24]
 0063D11A    push        eax
 0063D11B    mov         eax,dword ptr [ebp-0C]
 0063D11E    push        eax
 0063D11F    mov         eax,dword ptr [ebp-8]
 0063D122    push        eax
 0063D123    mov         eax,dword ptr [ebp-4]
 0063D126    push        eax
 0063D127    push        0
 0063D129    call        USER32.CreateWindowExA
 0063D12E    mov         dword ptr [ebp-10],eax
 0063D131    mov         eax,dword ptr [ebp-10]
 0063D134    mov         esp,ebp
 0063D136    pop         ebp
 0063D137    ret         20
end;*}

//0063D13C
{*function sub_0063D13C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0063D13C    push        ebp
 0063D13D    mov         ebp,esp
 0063D13F    add         esp,0FFFFFFF0
 0063D142    mov         dword ptr [ebp-0C],ecx
 0063D145    mov         dword ptr [ebp-8],edx
 0063D148    mov         dword ptr [ebp-4],eax
 0063D14B    push        63D1F4;'Magellan MSWHEEL'
 0063D150    push        63D208;'MouseZ'
 0063D155    call        USER32.FindWindowA
 0063D15A    mov         dword ptr [ebp-10],eax
 0063D15D    push        63D210;'MSWHEEL_ROLLMSG'
 0063D162    call        USER32.RegisterWindowMessageA
 0063D167    mov         edx,dword ptr [ebp-4]
 0063D16A    mov         dword ptr [edx],eax
 0063D16C    push        63D220;'MSH_WHEELSUPPORT_MSG'
 0063D171    call        USER32.RegisterWindowMessageA
 0063D176    mov         edx,dword ptr [ebp-8]
 0063D179    mov         dword ptr [edx],eax
 0063D17B    push        63D238;'MSH_SCROLL_LINES_MSG'
 0063D180    call        USER32.RegisterWindowMessageA
 0063D185    mov         edx,dword ptr [ebp-0C]
 0063D188    mov         dword ptr [edx],eax
 0063D18A    mov         eax,dword ptr [ebp-8]
 0063D18D    cmp         dword ptr [eax],0
>0063D190    je          0063D1B2
 0063D192    cmp         dword ptr [ebp-10],0
>0063D196    je          0063D1B2
 0063D198    push        0
 0063D19A    push        0
 0063D19C    mov         eax,dword ptr [ebp-8]
 0063D19F    mov         eax,dword ptr [eax]
 0063D1A1    push        eax
 0063D1A2    mov         eax,dword ptr [ebp-10]
 0063D1A5    push        eax
 0063D1A6    call        USER32.SendMessageA
 0063D1AB    mov         edx,dword ptr [ebp+0C]
 0063D1AE    mov         dword ptr [edx],eax
>0063D1B0    jmp         0063D1B9
 0063D1B2    mov         eax,dword ptr [ebp+0C]
 0063D1B5    xor         edx,edx
 0063D1B7    mov         dword ptr [eax],edx
 0063D1B9    mov         eax,dword ptr [ebp-0C]
 0063D1BC    cmp         dword ptr [eax],0
>0063D1BF    je          0063D1E1
 0063D1C1    cmp         dword ptr [ebp-10],0
>0063D1C5    je          0063D1E1
 0063D1C7    push        0
 0063D1C9    push        0
 0063D1CB    mov         eax,dword ptr [ebp-0C]
 0063D1CE    mov         eax,dword ptr [eax]
 0063D1D0    push        eax
 0063D1D1    mov         eax,dword ptr [ebp-10]
 0063D1D4    push        eax
 0063D1D5    call        USER32.SendMessageA
 0063D1DA    mov         edx,dword ptr [ebp+8]
 0063D1DD    mov         dword ptr [edx],eax
>0063D1DF    jmp         0063D1EA
 0063D1E1    mov         eax,dword ptr [ebp+8]
 0063D1E4    mov         dword ptr [eax],3
 0063D1EA    mov         eax,dword ptr [ebp-10]
 0063D1ED    mov         esp,ebp
 0063D1EF    pop         ebp
 0063D1F0    ret         8
end;*}

//0063D250
procedure Finalization;
begin
{*
 0063D250    push        ebp
 0063D251    mov         ebp,esp
 0063D253    xor         eax,eax
 0063D255    push        ebp
 0063D256    push        63D275
 0063D25B    push        dword ptr fs:[eax]
 0063D25E    mov         dword ptr fs:[eax],esp
 0063D261    inc         dword ptr ds:[6ECEDC]
 0063D267    xor         eax,eax
 0063D269    pop         edx
 0063D26A    pop         ecx
 0063D26B    pop         ecx
 0063D26C    mov         dword ptr fs:[eax],edx
 0063D26F    push        63D27C
 0063D274    ret
>0063D275    jmp         @HandleFinally
>0063D27A    jmp         0063D274
 0063D27C    pop         ebp
 0063D27D    ret
*}
end;

end.