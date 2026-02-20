//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Clipbrd;

interface

uses
  SysUtils, Classes;

type
  TClipboard = class(TPersistent)
  public
    FOpenRefCount:Integer;//f4
    FClipboardWindow:HWND;//f8
    FAllocated:Boolean;//fC
    FEmptied:Boolean;//fD
    procedure AssignTo(Dest:TPersistent); virtual;//v0//00638930
    procedure Assign(Source:TPersistent); virtual;//v8//00638AB0
    //procedure vC(?:?); virtual;//vC//00638594
    procedure Clear; virtual;//v10//00638464
    procedure v14; virtual;//v14//006384D4
    procedure v18; virtual;//v18//00638518
  end;
    procedure sub_006383C0;//006383C0
    procedure Clear;//00638464
    //procedure sub_006384A8(?:?);//006384A8
    procedure sub_006384D4;//006384D4
    procedure sub_00638518;//00638518
    //procedure sub_00638594(?:?);//00638594
    //procedure sub_006385CC(?:?; ?:?; ?:PChar; ?:?);//006385CC
    //procedure sub_006386B8(?:?; ?:?);//006386B8
    //procedure sub_006386E4(?:?; ?:?);//006386E4
    //procedure sub_00638764(?:?; ?:AnsiString);//00638764
    procedure sub_00638794(?:TClipboard; ?:TPersistent);//00638794
    procedure sub_00638858(?:TClipboard; ?:TPersistent);//00638858
    procedure sub_006388C4(?:TClipboard; ?:TPersistent);//006388C4
    procedure AssignTo(Dest:TPersistent);//00638930
    procedure sub_006389A8(?:TClipboard; ?:TPersistent);//006389A8
    procedure sub_00638A2C(?:TClipboard; ?:TPersistent);//00638A2C
    procedure Assign(Source:TPersistent);//00638AB0
    //function sub_00638B0C(?:?):?;//00638B0C
    //function sub_00638B94(?:?; ?:?):?;//00638B94
    //function sub_00638BD8:?;//00638BD8
    procedure Finalization;//00638C68

implementation

//006383C0
procedure sub_006383C0;
begin
{*
 006383C0    push        ebp
 006383C1    mov         ebp,esp
 006383C3    sub         dword ptr ds:[6ECE60],1
 006383CA    pop         ebp
 006383CB    ret
*}
end;

//00638464
procedure TClipboard.Clear;
begin
{*
 00638464    push        ebp
 00638465    mov         ebp,esp
 00638467    push        ecx
 00638468    mov         dword ptr [ebp-4],eax
 0063846B    mov         eax,dword ptr [ebp-4]
 0063846E    mov         edx,dword ptr [eax]
 00638470    call        dword ptr [edx+18]
 00638473    xor         eax,eax
 00638475    push        ebp
 00638476    push        63849C
 0063847B    push        dword ptr fs:[eax]
 0063847E    mov         dword ptr fs:[eax],esp
 00638481    call        USER32.EmptyClipboard
 00638486    xor         eax,eax
 00638488    pop         edx
 00638489    pop         ecx
 0063848A    pop         ecx
 0063848B    mov         dword ptr fs:[eax],edx
 0063848E    push        6384A3
 00638493    mov         eax,dword ptr [ebp-4]
 00638496    mov         edx,dword ptr [eax]
 00638498    call        dword ptr [edx+14]
 0063849B    ret
>0063849C    jmp         @HandleFinally
>006384A1    jmp         00638493
 006384A3    pop         ecx
 006384A4    pop         ebp
 006384A5    ret
*}
end;

//006384A8
{*procedure sub_006384A8(?:?);
begin
 006384A8    push        ebp
 006384A9    mov         ebp,esp
 006384AB    push        ecx
 006384AC    mov         dword ptr [ebp-4],eax
 006384AF    mov         eax,dword ptr [ebp-4]
 006384B2    cmp         dword ptr [eax+4],0
>006384B6    je          006384D0
 006384B8    mov         eax,dword ptr [ebp-4]
 006384BB    cmp         byte ptr [eax+0D],0
>006384BF    jne         006384D0
 006384C1    mov         eax,dword ptr [ebp-4]
 006384C4    mov         edx,dword ptr [eax]
 006384C6    call        dword ptr [edx+10]
 006384C9    mov         eax,dword ptr [ebp-4]
 006384CC    mov         byte ptr [eax+0D],1
 006384D0    pop         ecx
 006384D1    pop         ebp
 006384D2    ret
end;*}

//006384D4
procedure sub_006384D4;
begin
{*
 006384D4    push        ebp
 006384D5    mov         ebp,esp
 006384D7    push        ecx
 006384D8    mov         dword ptr [ebp-4],eax
 006384DB    mov         eax,dword ptr [ebp-4]
 006384DE    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>006384E2    je          00638514
 006384E4    mov         eax,dword ptr [ebp-4]
 006384E7    dec         dword ptr [eax+4];TClipboard.FOpenRefCount:Integer
 006384EA    mov         eax,dword ptr [ebp-4]
 006384ED    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>006384F1    jne         00638514
 006384F3    call        USER32.CloseClipboard
 006384F8    mov         eax,dword ptr [ebp-4]
 006384FB    cmp         byte ptr [eax+0C],0;TClipboard.FAllocated:Boolean
>006384FF    je          0063850C
 00638501    mov         eax,dword ptr [ebp-4]
 00638504    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 00638507    call        00651BA4
 0063850C    mov         eax,dword ptr [ebp-4]
 0063850F    xor         edx,edx
 00638511    mov         dword ptr [eax+8],edx;TClipboard.FClipboardWindow:HWND
 00638514    pop         ecx
 00638515    pop         ebp
 00638516    ret
*}
end;

//00638518
procedure sub_00638518;
begin
{*
 00638518    push        ebp
 00638519    mov         ebp,esp
 0063851B    push        ecx
 0063851C    mov         dword ptr [ebp-4],eax
 0063851F    mov         eax,dword ptr [ebp-4]
 00638522    cmp         dword ptr [eax+4],0;TClipboard.FOpenRefCount:Integer
>00638526    jne         0063858A
 00638528    mov         eax,[006E9DCC];^Application:TApplication
 0063852D    mov         eax,dword ptr [eax]
 0063852F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 00638532    mov         edx,dword ptr [ebp-4]
 00638535    mov         dword ptr [edx+8],eax;TClipboard.FClipboardWindow:HWND
 00638538    mov         eax,dword ptr [ebp-4]
 0063853B    cmp         dword ptr [eax+8],0;TClipboard.FClipboardWindow:HWND
>0063853F    jne         0063855C
 00638541    mov         eax,dword ptr [ebp-4]
 00638544    push        eax
 00638545    push        638C04
 0063854A    call        00651AE8
 0063854F    mov         edx,dword ptr [ebp-4]
 00638552    mov         dword ptr [edx+8],eax;TClipboard.FClipboardWindow:HWND
 00638555    mov         eax,dword ptr [ebp-4]
 00638558    mov         byte ptr [eax+0C],1;TClipboard.FAllocated:Boolean
 0063855C    mov         eax,dword ptr [ebp-4]
 0063855F    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 00638562    push        eax
 00638563    call        USER32.OpenClipboard
 00638568    test        eax,eax
>0063856A    jne         00638583
 0063856C    mov         ecx,dword ptr ds:[6E9F90];^gvar_0063CD30
 00638572    mov         dl,1
 00638574    mov         eax,[00656774];Exception
 00638579    call        Exception.Create;Exception.Create
 0063857E    call        @RaiseExcept
 00638583    mov         eax,dword ptr [ebp-4]
 00638586    mov         byte ptr [eax+0D],0;TClipboard.FEmptied:Boolean
 0063858A    mov         eax,dword ptr [ebp-4]
 0063858D    inc         dword ptr [eax+4];TClipboard.FOpenRefCount:Integer
 00638590    pop         ecx
 00638591    pop         ebp
 00638592    ret
*}
end;

//00638594
{*procedure sub_00638594(?:?);
begin
 00638594    push        ebp
 00638595    mov         ebp,esp
 00638597    add         esp,0FFFFFFF8
 0063859A    mov         dword ptr [ebp-8],edx
 0063859D    mov         dword ptr [ebp-4],eax
 006385A0    mov         eax,dword ptr [ebp-8]
 006385A3    mov         eax,dword ptr [eax+8]
 006385A6    push        eax
 006385A7    mov         eax,dword ptr [ebp-8]
 006385AA    mov         eax,dword ptr [eax+4]
 006385AD    push        eax
 006385AE    mov         eax,dword ptr [ebp-8]
 006385B1    mov         eax,dword ptr [eax]
 006385B3    push        eax
 006385B4    mov         eax,dword ptr [ebp-4]
 006385B7    mov         eax,dword ptr [eax+8];TClipboard.FClipboardWindow:HWND
 006385BA    push        eax
 006385BB    call        USER32.DefWindowProcA
 006385C0    mov         edx,dword ptr [ebp-8]
 006385C3    mov         dword ptr [edx+0C],eax
 006385C6    pop         ecx
 006385C7    pop         ecx
 006385C8    pop         ebp
 006385C9    ret
end;*}

//006385CC
{*procedure sub_006385CC(?:?; ?:?; ?:PChar; ?:?);
begin
 006385CC    push        ebp
 006385CD    mov         ebp,esp
 006385CF    add         esp,0FFFFFFEC
 006385D2    push        ebx
 006385D3    push        esi
 006385D4    push        edi
 006385D5    mov         dword ptr [ebp-0C],ecx
 006385D8    mov         word ptr [ebp-6],dx
 006385DC    mov         dword ptr [ebp-4],eax
 006385DF    mov         eax,dword ptr [ebp-4]
 006385E2    mov         edx,dword ptr [eax]
 006385E4    call        dword ptr [edx+18]
 006385E7    xor         eax,eax
 006385E9    push        ebp
 006385EA    push        6386A8
 006385EF    push        dword ptr fs:[eax]
 006385F2    mov         dword ptr fs:[eax],esp
 006385F5    mov         eax,dword ptr [ebp+8]
 006385F8    push        eax
 006385F9    push        2002
 006385FE    call        KERNEL32.GlobalAlloc
 00638603    mov         dword ptr [ebp-10],eax
 00638606    xor         eax,eax
 00638608    push        ebp
 00638609    push        63867A
 0063860E    push        dword ptr fs:[eax]
 00638611    mov         dword ptr fs:[eax],esp
 00638614    mov         eax,dword ptr [ebp-10]
 00638617    push        eax
 00638618    call        KERNEL32.GlobalLock
 0063861D    mov         dword ptr [ebp-14],eax
 00638620    xor         eax,eax
 00638622    push        ebp
 00638623    push        638669
 00638628    push        dword ptr fs:[eax]
 0063862B    mov         dword ptr fs:[eax],esp
 0063862E    mov         edx,dword ptr [ebp-14]
 00638631    mov         eax,dword ptr [ebp-0C]
 00638634    mov         ecx,dword ptr [ebp+8]
 00638637    call        Move
 0063863C    mov         eax,dword ptr [ebp-4]
 0063863F    call        006384A8
 00638644    mov         eax,dword ptr [ebp-10]
 00638647    push        eax
 00638648    movzx       eax,word ptr [ebp-6]
 0063864C    push        eax
 0063864D    call        USER32.SetClipboardData
 00638652    xor         eax,eax
 00638654    pop         edx
 00638655    pop         ecx
 00638656    pop         ecx
 00638657    mov         dword ptr fs:[eax],edx
 0063865A    push        638670
 0063865F    mov         eax,dword ptr [ebp-10]
 00638662    push        eax
 00638663    call        KERNEL32.GlobalUnlock
 00638668    ret
>00638669    jmp         @HandleFinally
>0063866E    jmp         0063865F
 00638670    xor         eax,eax
 00638672    pop         edx
 00638673    pop         ecx
 00638674    pop         ecx
 00638675    mov         dword ptr fs:[eax],edx
>00638678    jmp         00638692
>0063867A    jmp         @HandleAnyException
 0063867F    mov         eax,dword ptr [ebp-10]
 00638682    push        eax
 00638683    call        KERNEL32.GlobalFree
 00638688    call        @RaiseAgain
 0063868D    call        @DoneExcept
 00638692    xor         eax,eax
 00638694    pop         edx
 00638695    pop         ecx
 00638696    pop         ecx
 00638697    mov         dword ptr fs:[eax],edx
 0063869A    push        6386AF
 0063869F    mov         eax,dword ptr [ebp-4]
 006386A2    mov         edx,dword ptr [eax]
 006386A4    call        dword ptr [edx+14]
 006386A7    ret
>006386A8    jmp         @HandleFinally
>006386AD    jmp         0063869F
 006386AF    pop         edi
 006386B0    pop         esi
 006386B1    pop         ebx
 006386B2    mov         esp,ebp
 006386B4    pop         ebp
 006386B5    ret         4
end;*}

//006386B8
{*procedure sub_006386B8(?:?; ?:?);
begin
 006386B8    push        ebp
 006386B9    mov         ebp,esp
 006386BB    add         esp,0FFFFFFF8
 006386BE    mov         dword ptr [ebp-8],edx
 006386C1    mov         dword ptr [ebp-4],eax
 006386C4    mov         eax,dword ptr [ebp-8]
 006386C7    call        StrLen
 006386CC    inc         eax
 006386CD    push        eax
 006386CE    mov         ecx,dword ptr [ebp-8]
 006386D1    mov         dx,1
 006386D5    mov         eax,dword ptr [ebp-4]
 006386D8    call        006385CC
 006386DD    pop         ecx
 006386DE    pop         ecx
 006386DF    pop         ebp
 006386E0    ret
end;*}

//006386E4
{*procedure sub_006386E4(?:?; ?:?);
begin
 006386E4    push        ebp
 006386E5    mov         ebp,esp
 006386E7    add         esp,0FFFFFFF4
 006386EA    mov         dword ptr [ebp-8],edx
 006386ED    mov         dword ptr [ebp-4],eax
 006386F0    mov         eax,dword ptr [ebp-4]
 006386F3    mov         edx,dword ptr [eax]
 006386F5    call        dword ptr [edx+18]
 006386F8    push        1
 006386FA    call        USER32.GetClipboardData
 006386FF    mov         dword ptr [ebp-0C],eax
 00638702    xor         eax,eax
 00638704    push        ebp
 00638705    push        638758
 0063870A    push        dword ptr fs:[eax]
 0063870D    mov         dword ptr fs:[eax],esp
 00638710    cmp         dword ptr [ebp-0C],0
>00638714    je          0063872B
 00638716    mov         eax,dword ptr [ebp-0C]
 00638719    push        eax
 0063871A    call        KERNEL32.GlobalLock
 0063871F    mov         edx,eax
 00638721    mov         eax,dword ptr [ebp-8]
 00638724    call        @LStrFromPChar
>00638729    jmp         00638733
 0063872B    mov         eax,dword ptr [ebp-8]
 0063872E    call        @LStrClr
 00638733    xor         eax,eax
 00638735    pop         edx
 00638736    pop         ecx
 00638737    pop         ecx
 00638738    mov         dword ptr fs:[eax],edx
 0063873B    push        63875F
 00638740    cmp         dword ptr [ebp-0C],0
>00638744    je          0063874F
 00638746    mov         eax,dword ptr [ebp-0C]
 00638749    push        eax
 0063874A    call        KERNEL32.GlobalUnlock
 0063874F    mov         eax,dword ptr [ebp-4]
 00638752    mov         edx,dword ptr [eax]
 00638754    call        dword ptr [edx+14]
 00638757    ret
>00638758    jmp         @HandleFinally
>0063875D    jmp         00638740
 0063875F    mov         esp,ebp
 00638761    pop         ebp
 00638762    ret
end;*}

//00638764
{*procedure sub_00638764(?:?; ?:AnsiString);
begin
 00638764    push        ebp
 00638765    mov         ebp,esp
 00638767    add         esp,0FFFFFFF8
 0063876A    mov         dword ptr [ebp-8],edx
 0063876D    mov         dword ptr [ebp-4],eax
 00638770    mov         eax,dword ptr [ebp-8]
 00638773    call        @LStrLen
 00638778    inc         eax
 00638779    push        eax
 0063877A    mov         eax,dword ptr [ebp-8]
 0063877D    call        @LStrToPChar
 00638782    mov         ecx,eax
 00638784    mov         dx,1
 00638788    mov         eax,dword ptr [ebp-4]
 0063878B    call        006385CC
 00638790    pop         ecx
 00638791    pop         ecx
 00638792    pop         ebp
 00638793    ret
end;*}

//00638794
procedure sub_00638794(?:TClipboard; ?:TPersistent);
begin
{*
 00638794    push        ebp
 00638795    mov         ebp,esp
 00638797    add         esp,0FFFFFFEC
 0063879A    mov         dword ptr [ebp-8],edx
 0063879D    mov         dword ptr [ebp-4],eax
 006387A0    mov         eax,dword ptr [ebp-4]
 006387A3    mov         edx,dword ptr [eax]
 006387A5    call        dword ptr [edx+18]
 006387A8    xor         eax,eax
 006387AA    push        ebp
 006387AB    push        63884D
 006387B0    push        dword ptr fs:[eax]
 006387B3    mov         dword ptr fs:[eax],esp
 006387B6    push        0
 006387B8    call        USER32.EnumClipboardFormats
 006387BD    mov         word ptr [ebp-0E],ax
 006387C1    cmp         word ptr [ebp-0E],0
>006387C6    je          00638820
 006387C8    mov         dx,word ptr [ebp-0E]
 006387CC    mov         eax,[005BEB28];TPicture
 006387D1    call        005C45E0
 006387D6    test        al,al
>006387D8    je          0063880B
 006387DA    movzx       eax,word ptr [ebp-0E]
 006387DE    push        eax
 006387DF    call        USER32.GetClipboardData
 006387E4    mov         dword ptr [ebp-0C],eax
 006387E7    push        9
 006387E9    call        USER32.GetClipboardData
 006387EE    mov         dword ptr [ebp-14],eax
 006387F1    mov         eax,dword ptr [ebp-14]
 006387F4    push        eax
 006387F5    mov         ecx,dword ptr [ebp-0C]
 006387F8    mov         dx,word ptr [ebp-0E]
 006387FC    mov         eax,dword ptr [ebp-8]
 006387FF    call        005C44C0
 00638804    call        @TryFinallyExit
>00638809    jmp         00638854
 0063880B    movzx       eax,word ptr [ebp-0E]
 0063880F    push        eax
 00638810    call        USER32.EnumClipboardFormats
 00638815    mov         word ptr [ebp-0E],ax
 00638819    cmp         word ptr [ebp-0E],0
>0063881E    jne         006387C8
 00638820    mov         ecx,dword ptr ds:[6E9F88];^gvar_0063CD20
 00638826    mov         dl,1
 00638828    mov         eax,[00656774];Exception
 0063882D    call        Exception.Create;Exception.Create
 00638832    call        @RaiseExcept
 00638837    xor         eax,eax
 00638839    pop         edx
 0063883A    pop         ecx
 0063883B    pop         ecx
 0063883C    mov         dword ptr fs:[eax],edx
 0063883F    push        638854
 00638844    mov         eax,dword ptr [ebp-4]
 00638847    mov         edx,dword ptr [eax]
 00638849    call        dword ptr [edx+14]
 0063884C    ret
>0063884D    jmp         @HandleFinally
>00638852    jmp         00638844
 00638854    mov         esp,ebp
 00638856    pop         ebp
 00638857    ret
*}
end;

//00638858
procedure sub_00638858(?:TClipboard; ?:TPersistent);
begin
{*
 00638858    push        ebp
 00638859    mov         ebp,esp
 0063885B    add         esp,0FFFFFFF0
 0063885E    push        ebx
 0063885F    mov         dword ptr [ebp-8],edx
 00638862    mov         dword ptr [ebp-4],eax
 00638865    mov         eax,dword ptr [ebp-4]
 00638868    mov         edx,dword ptr [eax]
 0063886A    call        dword ptr [edx+18]
 0063886D    xor         eax,eax
 0063886F    push        ebp
 00638870    push        6388B8
 00638875    push        dword ptr fs:[eax]
 00638878    mov         dword ptr fs:[eax],esp
 0063887B    push        2
 0063887D    call        USER32.GetClipboardData
 00638882    mov         dword ptr [ebp-0C],eax
 00638885    push        9
 00638887    call        USER32.GetClipboardData
 0063888C    mov         dword ptr [ebp-10],eax
 0063888F    mov         eax,dword ptr [ebp-10]
 00638892    push        eax
 00638893    mov         ecx,dword ptr [ebp-0C]
 00638896    mov         dx,2
 0063889A    mov         eax,dword ptr [ebp-8]
 0063889D    mov         ebx,dword ptr [eax]
 0063889F    call        dword ptr [ebx+5C]
 006388A2    xor         eax,eax
 006388A4    pop         edx
 006388A5    pop         ecx
 006388A6    pop         ecx
 006388A7    mov         dword ptr fs:[eax],edx
 006388AA    push        6388BF
 006388AF    mov         eax,dword ptr [ebp-4]
 006388B2    mov         edx,dword ptr [eax]
 006388B4    call        dword ptr [edx+14]
 006388B7    ret
>006388B8    jmp         @HandleFinally
>006388BD    jmp         006388AF
 006388BF    pop         ebx
 006388C0    mov         esp,ebp
 006388C2    pop         ebp
 006388C3    ret
*}
end;

//006388C4
procedure sub_006388C4(?:TClipboard; ?:TPersistent);
begin
{*
 006388C4    push        ebp
 006388C5    mov         ebp,esp
 006388C7    add         esp,0FFFFFFF0
 006388CA    push        ebx
 006388CB    mov         dword ptr [ebp-8],edx
 006388CE    mov         dword ptr [ebp-4],eax
 006388D1    mov         eax,dword ptr [ebp-4]
 006388D4    mov         edx,dword ptr [eax]
 006388D6    call        dword ptr [edx+18]
 006388D9    xor         eax,eax
 006388DB    push        ebp
 006388DC    push        638924
 006388E1    push        dword ptr fs:[eax]
 006388E4    mov         dword ptr fs:[eax],esp
 006388E7    push        3
 006388E9    call        USER32.GetClipboardData
 006388EE    mov         dword ptr [ebp-0C],eax
 006388F1    push        9
 006388F3    call        USER32.GetClipboardData
 006388F8    mov         dword ptr [ebp-10],eax
 006388FB    mov         eax,dword ptr [ebp-10]
 006388FE    push        eax
 006388FF    mov         ecx,dword ptr [ebp-0C]
 00638902    mov         dx,3
 00638906    mov         eax,dword ptr [ebp-8]
 00638909    mov         ebx,dword ptr [eax]
 0063890B    call        dword ptr [ebx+5C]
 0063890E    xor         eax,eax
 00638910    pop         edx
 00638911    pop         ecx
 00638912    pop         ecx
 00638913    mov         dword ptr fs:[eax],edx
 00638916    push        63892B
 0063891B    mov         eax,dword ptr [ebp-4]
 0063891E    mov         edx,dword ptr [eax]
 00638920    call        dword ptr [edx+14]
 00638923    ret
>00638924    jmp         @HandleFinally
>00638929    jmp         0063891B
 0063892B    pop         ebx
 0063892C    mov         esp,ebp
 0063892E    pop         ebp
 0063892F    ret
*}
end;

//00638930
procedure TClipboard.AssignTo(Dest:TPersistent);
begin
{*
 00638930    push        ebp
 00638931    mov         ebp,esp
 00638933    add         esp,0FFFFFFF8
 00638936    mov         dword ptr [ebp-8],edx
 00638939    mov         dword ptr [ebp-4],eax
 0063893C    mov         eax,dword ptr [ebp-8]
 0063893F    mov         edx,dword ptr ds:[5BEB28];TPicture
 00638945    call        @IsClass
 0063894A    test        al,al
>0063894C    je          0063895B
 0063894E    mov         edx,dword ptr [ebp-8]
 00638951    mov         eax,dword ptr [ebp-4]
 00638954    call        00638794
>00638959    jmp         006389A4
 0063895B    mov         eax,dword ptr [ebp-8]
 0063895E    mov         edx,dword ptr ds:[5BEDD4];TBitmap
 00638964    call        @IsClass
 00638969    test        al,al
>0063896B    je          0063897A
 0063896D    mov         edx,dword ptr [ebp-8]
 00638970    mov         eax,dword ptr [ebp-4]
 00638973    call        00638858
>00638978    jmp         006389A4
 0063897A    mov         eax,dword ptr [ebp-8]
 0063897D    mov         edx,dword ptr ds:[5BEC94];TMetafile
 00638983    call        @IsClass
 00638988    test        al,al
>0063898A    je          00638999
 0063898C    mov         edx,dword ptr [ebp-8]
 0063898F    mov         eax,dword ptr [ebp-4]
 00638992    call        006388C4
>00638997    jmp         006389A4
 00638999    mov         edx,dword ptr [ebp-8]
 0063899C    mov         eax,dword ptr [ebp-4]
 0063899F    call        TPersistent.AssignTo
 006389A4    pop         ecx
 006389A5    pop         ecx
 006389A6    pop         ebp
 006389A7    ret
*}
end;

//006389A8
procedure sub_006389A8(?:TClipboard; ?:TPersistent);
begin
{*
 006389A8    push        ebp
 006389A9    mov         ebp,esp
 006389AB    add         esp,0FFFFFFEC
 006389AE    mov         dword ptr [ebp-8],edx
 006389B1    mov         dword ptr [ebp-4],eax
 006389B4    mov         eax,dword ptr [ebp-4]
 006389B7    mov         edx,dword ptr [eax]
 006389B9    call        dword ptr [edx+18]
 006389BC    xor         eax,eax
 006389BE    push        ebp
 006389BF    push        638A1E
 006389C4    push        dword ptr fs:[eax]
 006389C7    mov         dword ptr fs:[eax],esp
 006389CA    mov         eax,dword ptr [ebp-4]
 006389CD    call        006384A8
 006389D2    xor         eax,eax
 006389D4    mov         dword ptr [ebp-14],eax
 006389D7    lea         eax,[ebp-14]
 006389DA    push        eax
 006389DB    lea         ecx,[ebp-0C]
 006389DE    lea         edx,[ebp-0E]
 006389E1    mov         eax,dword ptr [ebp-8]
 006389E4    call        005C45A8
 006389E9    mov         eax,dword ptr [ebp-0C]
 006389EC    push        eax
 006389ED    movzx       eax,word ptr [ebp-0E]
 006389F1    push        eax
 006389F2    call        USER32.SetClipboardData
 006389F7    cmp         dword ptr [ebp-14],0
>006389FB    je          00638A08
 006389FD    mov         eax,dword ptr [ebp-14]
 00638A00    push        eax
 00638A01    push        9
 00638A03    call        USER32.SetClipboardData
 00638A08    xor         eax,eax
 00638A0A    pop         edx
 00638A0B    pop         ecx
 00638A0C    pop         ecx
 00638A0D    mov         dword ptr fs:[eax],edx
 00638A10    push        638A25
 00638A15    mov         eax,dword ptr [ebp-4]
 00638A18    mov         edx,dword ptr [eax]
 00638A1A    call        dword ptr [edx+14]
 00638A1D    ret
>00638A1E    jmp         @HandleFinally
>00638A23    jmp         00638A15
 00638A25    mov         esp,ebp
 00638A27    pop         ebp
 00638A28    ret
*}
end;

//00638A2C
procedure sub_00638A2C(?:TClipboard; ?:TPersistent);
begin
{*
 00638A2C    push        ebp
 00638A2D    mov         ebp,esp
 00638A2F    add         esp,0FFFFFFEC
 00638A32    push        ebx
 00638A33    mov         dword ptr [ebp-8],edx
 00638A36    mov         dword ptr [ebp-4],eax
 00638A39    mov         eax,dword ptr [ebp-4]
 00638A3C    mov         edx,dword ptr [eax]
 00638A3E    call        dword ptr [edx+18]
 00638A41    xor         eax,eax
 00638A43    push        ebp
 00638A44    push        638AA3
 00638A49    push        dword ptr fs:[eax]
 00638A4C    mov         dword ptr fs:[eax],esp
 00638A4F    mov         eax,dword ptr [ebp-4]
 00638A52    call        006384A8
 00638A57    xor         eax,eax
 00638A59    mov         dword ptr [ebp-14],eax
 00638A5C    lea         eax,[ebp-14]
 00638A5F    push        eax
 00638A60    lea         ecx,[ebp-0C]
 00638A63    lea         edx,[ebp-0E]
 00638A66    mov         eax,dword ptr [ebp-8]
 00638A69    mov         ebx,dword ptr [eax]
 00638A6B    call        dword ptr [ebx+60]
 00638A6E    mov         eax,dword ptr [ebp-0C]
 00638A71    push        eax
 00638A72    movzx       eax,word ptr [ebp-0E]
 00638A76    push        eax
 00638A77    call        USER32.SetClipboardData
 00638A7C    cmp         dword ptr [ebp-14],0
>00638A80    je          00638A8D
 00638A82    mov         eax,dword ptr [ebp-14]
 00638A85    push        eax
 00638A86    push        9
 00638A88    call        USER32.SetClipboardData
 00638A8D    xor         eax,eax
 00638A8F    pop         edx
 00638A90    pop         ecx
 00638A91    pop         ecx
 00638A92    mov         dword ptr fs:[eax],edx
 00638A95    push        638AAA
 00638A9A    mov         eax,dword ptr [ebp-4]
 00638A9D    mov         edx,dword ptr [eax]
 00638A9F    call        dword ptr [edx+14]
 00638AA2    ret
>00638AA3    jmp         @HandleFinally
>00638AA8    jmp         00638A9A
 00638AAA    pop         ebx
 00638AAB    mov         esp,ebp
 00638AAD    pop         ebp
 00638AAE    ret
*}
end;

//00638AB0
procedure TClipboard.Assign(Source:TPersistent);
begin
{*
 00638AB0    push        ebp
 00638AB1    mov         ebp,esp
 00638AB3    add         esp,0FFFFFFF8
 00638AB6    mov         dword ptr [ebp-8],edx
 00638AB9    mov         dword ptr [ebp-4],eax
 00638ABC    mov         eax,dword ptr [ebp-8]
 00638ABF    mov         edx,dword ptr ds:[5BEB28];TPicture
 00638AC5    call        @IsClass
 00638ACA    test        al,al
>00638ACC    je          00638ADB
 00638ACE    mov         edx,dword ptr [ebp-8]
 00638AD1    mov         eax,dword ptr [ebp-4]
 00638AD4    call        006389A8
>00638AD9    jmp         00638B05
 00638ADB    mov         eax,dword ptr [ebp-8]
 00638ADE    mov         edx,dword ptr ds:[5BE9D4];TGraphic
 00638AE4    call        @IsClass
 00638AE9    test        al,al
>00638AEB    je          00638AFA
 00638AED    mov         edx,dword ptr [ebp-8]
 00638AF0    mov         eax,dword ptr [ebp-4]
 00638AF3    call        00638A2C
>00638AF8    jmp         00638B05
 00638AFA    mov         edx,dword ptr [ebp-8]
 00638AFD    mov         eax,dword ptr [ebp-4]
 00638B00    call        TPersistent.Assign
 00638B05    pop         ecx
 00638B06    pop         ecx
 00638B07    pop         ebp
 00638B08    ret
*}
end;

//00638B0C
{*function sub_00638B0C(?:?):?;
begin
 00638B0C    push        ebp
 00638B0D    mov         ebp,esp
 00638B0F    push        ecx
 00638B10    mov         eax,dword ptr [ebp+8]
 00638B13    mov         eax,dword ptr [eax-4]
 00638B16    mov         edx,dword ptr [eax]
 00638B18    call        dword ptr [edx+18]
 00638B1B    xor         eax,eax
 00638B1D    push        ebp
 00638B1E    push        638B85
 00638B23    push        dword ptr fs:[eax]
 00638B26    mov         dword ptr fs:[eax],esp
 00638B29    mov         byte ptr [ebp-1],0
 00638B2D    push        0
 00638B2F    call        USER32.EnumClipboardFormats
 00638B34    mov         word ptr [ebp-4],ax
 00638B38    cmp         word ptr [ebp-4],0
>00638B3D    je          00638B6C
 00638B3F    mov         dx,word ptr [ebp-4]
 00638B43    mov         eax,[005BEB28];TPicture
 00638B48    call        005C45E0
 00638B4D    test        al,al
>00638B4F    je          00638B57
 00638B51    mov         byte ptr [ebp-1],1
>00638B55    jmp         00638B6C
 00638B57    movzx       eax,word ptr [ebp-4]
 00638B5B    push        eax
 00638B5C    call        USER32.EnumClipboardFormats
 00638B61    mov         word ptr [ebp-4],ax
 00638B65    cmp         word ptr [ebp-4],0
>00638B6A    jne         00638B3F
 00638B6C    xor         eax,eax
 00638B6E    pop         edx
 00638B6F    pop         ecx
 00638B70    pop         ecx
 00638B71    mov         dword ptr fs:[eax],edx
 00638B74    push        638B8C
 00638B79    mov         eax,dword ptr [ebp+8]
 00638B7C    mov         eax,dword ptr [eax-4]
 00638B7F    mov         edx,dword ptr [eax]
 00638B81    call        dword ptr [edx+14]
 00638B84    ret
>00638B85    jmp         @HandleFinally
>00638B8A    jmp         00638B79
 00638B8C    mov         al,byte ptr [ebp-1]
 00638B8F    pop         ecx
 00638B90    pop         ebp
 00638B91    ret
end;*}

//00638B94
{*function sub_00638B94(?:?; ?:?):?;
begin
 00638B94    push        ebp
 00638B95    mov         ebp,esp
 00638B97    add         esp,0FFFFFFF8
 00638B9A    mov         word ptr [ebp-6],dx
 00638B9E    mov         dword ptr [ebp-4],eax
 00638BA1    movzx       eax,word ptr [ebp-6]
 00638BA5    push        eax
 00638BA6    call        USER32.IsClipboardFormatAvailable
 00638BAB    test        eax,eax
>00638BAD    jne         00638BCB
 00638BAF    mov         ax,word ptr [ebp-6]
 00638BB3    cmp         ax,word ptr ds:[6ECE94];0x0 gvar_006ECE94
>00638BBA    jne         00638BC7
 00638BBC    push        ebp
 00638BBD    call        00638B0C
 00638BC2    pop         ecx
 00638BC3    test        al,al
>00638BC5    jne         00638BCB
 00638BC7    xor         eax,eax
>00638BC9    jmp         00638BCD
 00638BCB    mov         al,1
 00638BCD    mov         byte ptr [ebp-7],al
 00638BD0    mov         al,byte ptr [ebp-7]
 00638BD3    pop         ecx
 00638BD4    pop         ecx
 00638BD5    pop         ebp
 00638BD6    ret
end;*}

//00638BD8
{*function sub_00638BD8:?;
begin
 00638BD8    push        ebp
 00638BD9    mov         ebp,esp
 00638BDB    push        ecx
 00638BDC    cmp         dword ptr ds:[6ECE9C],0;FClipboard:TClipboard
>00638BE3    jne         00638BF6
 00638BE5    mov         dl,1
 00638BE7    mov         eax,[006383CC];TClipboard
 00638BEC    call        TObject.Create;TClipboard.Create
 00638BF1    mov         [006ECE9C],eax;FClipboard:TClipboard
 00638BF6    mov         eax,[006ECE9C];0x0 FClipboard:TClipboard
 00638BFB    mov         dword ptr [ebp-4],eax
 00638BFE    mov         eax,dword ptr [ebp-4]
 00638C01    pop         ecx
 00638C02    pop         ebp
 00638C03    ret
end;*}

//00638C68
procedure Finalization;
begin
{*
 00638C68    push        ebp
 00638C69    mov         ebp,esp
 00638C6B    xor         eax,eax
 00638C6D    push        ebp
 00638C6E    push        638C99
 00638C73    push        dword ptr fs:[eax]
 00638C76    mov         dword ptr fs:[eax],esp
 00638C79    inc         dword ptr ds:[6ECE98]
>00638C7F    jne         00638C8B
 00638C81    mov         eax,[006ECE9C];FClipboard:TClipboard
 00638C86    call        TObject.Free
 00638C8B    xor         eax,eax
 00638C8D    pop         edx
 00638C8E    pop         ecx
 00638C8F    pop         ecx
 00638C90    mov         dword ptr fs:[eax],edx
 00638C93    push        638CA0
 00638C98    ret
>00638C99    jmp         @HandleFinally
>00638C9E    jmp         00638C98
 00638CA0    pop         ebp
 00638CA1    ret
*}
end;

end.