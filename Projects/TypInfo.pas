//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TypInfo;

interface

uses
  SysUtils, Classes;

    procedure sub_00651C84;//00651C84
    function GetTypeData(TypeInfo:PTypeInfo):PTypeData;//00651D18
    function GetEnumName(TypeInfo:PTypeInfo; Value:Integer):AnsiString;//00651D24
    function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;//00651E50
    //function sub_00651E9C(?:PPropInfo; ?:?):?;//00651E9C
    function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;//00651F24
    procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);//00651F94
    function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;//00651FE8
    function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;//00652018
    procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);//0065208C
    procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);//006520E8
    procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);//0065212C
    //procedure sub_00652180(?:?; ?:?; ?:?);//00652180
    //procedure sub_006521BC(?:Longint; ?:PPropInfo; ?:?);//006521BC
    procedure AssignLongStr(var Dest:AnsiString; const Source:AnsiString);//006521F8
    procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//00652214
    procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//00652254
    //procedure sub_00652294(?:?; ?:?; ?:?);//00652294
    //procedure sub_006522F4(?:Longint; ?:PPropInfo; ?:?);//006522F4
    //procedure sub_00652354(?:?; ?:?; ?:?);//00652354
    procedure sub_006523B8(?:Longint; ?:PPropInfo; ?:AnsiString);//006523B8
    function GetWideStrProp(Instance:TObject; const PropName:AnsiString):WideString;//00652410
    procedure sub_00652520(?:Longint; ?:PPropInfo; ?:WideString);//00652520
    function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;//00652624
    //procedure sub_00652770(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);//00652770
    procedure AssignVariant(var Dest:Variant; const Source:Variant);//006529C0
    function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;//006529DC
    procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);//00652A1C
    function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;//00652A5C
    procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);//00652A9C
    function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;//00652AD4
    procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);//00652AFC
    function GetInterfaceProp(Instance:TObject; PropInfo:PPropInfo):IInterface;//00652B38
    procedure SetInterfaceProp(Instance:TObject; const PropName:AnsiString; const Value:IInterface);//00652BD4
    procedure Finalization;//00652C70

implementation

//00651C84
procedure sub_00651C84;
begin
{*
 00651C84    push        ebp
 00651C85    mov         ebp,esp
 00651C87    sub         dword ptr ds:[6ECF98],1
>00651C8E    jae         00651CE8
 00651C90    push        6ECFB0;ThreadLock:TRTLCriticalSection
 00651C95    call        KERNEL32.InitializeCriticalSection
 00651C9A    mov         eax,65197C
 00651C9F    call        0066E2A4
 00651CA4    mov         dl,1
 00651CA6    mov         eax,[0065736C];TMultiReadExclusiveWriteSynchronizer
 00651CAB    call        TMultiReadExclusiveWriteSynchronizer.Create;TMultiReadExclusiveWriteSynchronizer.Create
 00651CB0    mov         [006ECF90],eax;GlobalNameSpace:TMultiReadExclusiveWriteSynchronizer
 00651CB5    mov         dl,1
 00651CB7    mov         eax,[006435E0];TRegGroups
 00651CBC    call        TRegGroups.Create;TRegGroups.Create
 00651CC1    mov         [006ECFA0],eax;gvar_006ECFA0:TRegGroups
 00651CC6    mov         dl,1
 00651CC8    mov         eax,[00642328];TThreadList
 00651CCD    call        TThreadList.Create;TThreadList.Create
 00651CD2    mov         [006ECF9C],eax;gvar_006ECF9C:TThreadList
 00651CD7    mov         dl,1
 00651CD9    mov         eax,[00642328];TThreadList
 00651CDE    call        TThreadList.Create;TThreadList.Create
 00651CE3    mov         [006ECFA8],eax;gvar_006ECFA8:TThreadList
 00651CE8    pop         ebp
 00651CE9    ret
*}
end;

//00651D18
function GetTypeData(TypeInfo:PTypeInfo):PTypeData;
begin
{*
 00651D18    xor         edx,edx
 00651D1A    mov         dl,byte ptr [eax+1]
 00651D1D    lea         eax,[eax+edx+2]
 00651D21    ret
*}
end;

//00651D24
function GetEnumName(TypeInfo:PTypeInfo; Value:Integer):AnsiString;
begin
{*
 00651D24    push        ebp
 00651D25    mov         ebp,esp
 00651D27    add         esp,0FFFFFFE8
 00651D2A    push        ebx
 00651D2B    xor         ebx,ebx
 00651D2D    mov         dword ptr [ebp-18],ebx
 00651D30    mov         dword ptr [ebp-0C],ecx
 00651D33    mov         dword ptr [ebp-8],edx
 00651D36    mov         dword ptr [ebp-4],eax
 00651D39    xor         eax,eax
 00651D3B    push        ebp
 00651D3C    push        651E35
 00651D41    push        dword ptr fs:[eax]
 00651D44    mov         dword ptr fs:[eax],esp
 00651D47    mov         eax,dword ptr [ebp-4]
 00651D4A    cmp         byte ptr [eax],1
>00651D4D    jne         00651D5F
 00651D4F    mov         edx,dword ptr [ebp-0C]
 00651D52    mov         eax,dword ptr [ebp-8]
 00651D55    call        IntToStr
>00651D5A    jmp         00651E1F
 00651D5F    mov         eax,dword ptr [ebp-4]
 00651D62    call        GetTypeData
 00651D67    mov         eax,dword ptr [eax+9]
 00651D6A    mov         eax,dword ptr [eax]
 00651D6C    call        GetTypeData
 00651D71    mov         dword ptr [ebp-14],eax
 00651D74    mov         eax,dword ptr [ebp-4]
 00651D77    cmp         eax,dword ptr ds:[668F88];Boolean
>00651D7D    je          00651D88
 00651D7F    mov         eax,dword ptr [ebp-14]
 00651D82    cmp         dword ptr [eax+1],0
>00651D86    jge         00651DF2
 00651D88    mov         eax,dword ptr [ebp-4]
 00651D8B    cmp         eax,dword ptr ds:[668F88];Boolean
>00651D91    jne         00651DAA
 00651D93    mov         eax,dword ptr [ebp-0C]
 00651D96    mov         edx,dword ptr [ebp-8]
 00651D99    and         edx,7F
 00651D9C    mov         edx,dword ptr [edx*4+6E4914];^gvar_00651CF4
 00651DA3    call        @LStrAsg
>00651DA8    jmp         00651DC3
 00651DAA    mov         eax,dword ptr [ebp-0C]
 00651DAD    cmp         dword ptr [ebp-8],0
 00651DB1    setne       dl
 00651DB4    and         edx,7F
 00651DB7    mov         edx,dword ptr [edx*4+6E4914];^gvar_00651CF4
 00651DBE    call        @LStrAsg
 00651DC3    mov         eax,[006EA0FC];^gvar_006E4A14
 00651DC8    mov         eax,dword ptr [eax]
 00651DCA    mov         edx,651E4C;'0x'
 00651DCF    call        SameText
 00651DD4    test        al,al
>00651DD6    je          00651E1F
 00651DD8    lea         edx,[ebp-18]
 00651DDB    mov         eax,dword ptr [ebp-0C]
 00651DDE    mov         eax,dword ptr [eax]
 00651DE0    call        00657574
 00651DE5    mov         edx,dword ptr [ebp-18]
 00651DE8    mov         eax,dword ptr [ebp-0C]
 00651DEB    call        @LStrAsg
>00651DF0    jmp         00651E1F
 00651DF2    mov         eax,dword ptr [ebp-14]
 00651DF5    add         eax,0D
 00651DF8    mov         dword ptr [ebp-10],eax
 00651DFB    cmp         dword ptr [ebp-8],0
>00651DFF    je          00651E14
 00651E01    mov         eax,dword ptr [ebp-10]
 00651E04    movzx       eax,byte ptr [eax]
 00651E07    inc         eax
 00651E08    add         dword ptr [ebp-10],eax
 00651E0B    dec         dword ptr [ebp-8]
 00651E0E    cmp         dword ptr [ebp-8],0
>00651E12    jne         00651E01
 00651E14    mov         eax,dword ptr [ebp-0C]
 00651E17    mov         edx,dword ptr [ebp-10]
 00651E1A    call        @LStrFromString
 00651E1F    xor         eax,eax
 00651E21    pop         edx
 00651E22    pop         ecx
 00651E23    pop         ecx
 00651E24    mov         dword ptr fs:[eax],edx
 00651E27    push        651E3C
 00651E2C    lea         eax,[ebp-18]
 00651E2F    call        @LStrClr
 00651E34    ret
>00651E35    jmp         @HandleFinally
>00651E3A    jmp         00651E2C
 00651E3C    pop         ebx
 00651E3D    mov         esp,ebp
 00651E3F    pop         ebp
 00651E40    ret
*}
end;

//00651E50
function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;
begin
{*
 00651E50    push        ebx
 00651E51    push        esi
 00651E52    push        edi
 00651E53    test        edx,edx
>00651E55    je          00651E92
 00651E57    xor         ecx,ecx
 00651E59    mov         cl,byte ptr [eax+1]
 00651E5C    mov         eax,dword ptr [eax+ecx+0B]
 00651E60    mov         eax,dword ptr [eax]
 00651E62    mov         cl,byte ptr [eax+1]
 00651E65    lea         esi,[eax+ecx+0F]
 00651E69    mov         edi,dword ptr [eax+ecx+7]
 00651E6D    xor         eax,eax
 00651E6F    mov         cl,byte ptr [esi]
 00651E71    cmp         ecx,dword ptr [edx-4]
>00651E74    jne         00651E89
 00651E76    mov         bl,byte ptr [ecx+edx-1]
 00651E7A    xor         bl,byte ptr [ecx+esi]
 00651E7D    test        bl,0DF
>00651E80    jne         00651E87
 00651E82    dec         ecx
>00651E83    jne         00651E76
>00651E85    jmp         00651E95
 00651E87    mov         cl,byte ptr [esi]
 00651E89    inc         eax
 00651E8A    lea         esi,[ecx+esi+1]
 00651E8E    cmp         eax,edi
>00651E90    jle         00651E6F
 00651E92    or          eax,0FFFFFFFF
 00651E95    pop         edi
 00651E96    pop         esi
 00651E97    pop         ebx
 00651E98    ret
*}
end;

//00651E9C
{*function sub_00651E9C(?:PPropInfo; ?:?):?;
begin
 00651E9C    push        ebp
 00651E9D    mov         ebp,esp
 00651E9F    add         esp,0FFFFFFF4
 00651EA2    mov         dword ptr [ebp-8],edx
 00651EA5    mov         dword ptr [ebp-4],eax
 00651EA8    mov         eax,dword ptr [ebp-4]
 00651EAB    cmp         byte ptr [eax],1
>00651EAE    jne         00651EBD
 00651EB0    mov         eax,dword ptr [ebp-8]
 00651EB3    call        StrToInt
 00651EB8    mov         dword ptr [ebp-0C],eax
>00651EBB    jmp         00651F1A
 00651EBD    mov         eax,dword ptr [ebp-4]
 00651EC0    call        GetTypeData
 00651EC5    cmp         dword ptr [eax+1],0
>00651EC9    jge         00651F0C
 00651ECB    mov         edx,dword ptr ds:[6E4914];^gvar_00651CF4
 00651ED1    mov         eax,dword ptr [ebp-8]
 00651ED4    call        SameText
 00651ED9    test        al,al
>00651EDB    je          00651EE4
 00651EDD    xor         eax,eax
 00651EDF    mov         dword ptr [ebp-0C],eax
>00651EE2    jmp         00651F1A
 00651EE4    mov         edx,dword ptr ds:[6E4918];^gvar_00651D04
 00651EEA    mov         eax,dword ptr [ebp-8]
 00651EED    call        SameText
 00651EF2    test        al,al
>00651EF4    je          00651EFF
 00651EF6    mov         dword ptr [ebp-0C],0FFFFFFFF
>00651EFD    jmp         00651F1A
 00651EFF    mov         eax,dword ptr [ebp-8]
 00651F02    call        StrToInt
 00651F07    mov         dword ptr [ebp-0C],eax
>00651F0A    jmp         00651F1A
 00651F0C    mov         edx,dword ptr [ebp-8]
 00651F0F    mov         eax,dword ptr [ebp-4]
 00651F12    call        GetEnumNameValue
 00651F17    mov         dword ptr [ebp-0C],eax
 00651F1A    mov         eax,dword ptr [ebp-0C]
 00651F1D    mov         esp,ebp
 00651F1F    pop         ebp
 00651F20    ret
end;*}

//00651F24
function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;
begin
{*
 00651F24    push        ebx
 00651F25    push        esi
 00651F26    push        edi
 00651F27    test        eax,eax
>00651F29    je          00651F90
 00651F2B    mov         ecx,edx
 00651F2D    or          edx,edx
>00651F2F    je          00651F3C
 00651F31    mov         cl,byte ptr [edx-4]
 00651F34    mov         ch,byte ptr [edx]
 00651F36    and         ecx,0DFFF
 00651F3C    xor         ebx,ebx
 00651F3E    mov         bl,byte ptr [eax+1]
 00651F41    lea         esi,[eax+ebx+2]
 00651F45    mov         bl,byte ptr [esi+0A]
 00651F48    movzx       edi,word ptr [esi+ebx+0B]
 00651F4D    test        edi,edi
>00651F4F    je          00651F69
 00651F51    lea         eax,[esi+ebx+0D]
 00651F55    mov         bx,word ptr [eax+1A]
 00651F59    and         bh,0DF
 00651F5C    cmp         ebx,ecx
>00651F5E    je          00651F7E
 00651F60    mov         bh,0
 00651F62    dec         edi
 00651F63    lea         eax,[eax+ebx+1B]
>00651F67    jne         00651F55
 00651F69    mov         eax,dword ptr [esi+4]
 00651F6C    test        eax,eax
>00651F6E    je          00651F90
 00651F70    mov         eax,dword ptr [eax]
>00651F72    jmp         00651F3C
 00651F74    mov         ch,byte ptr [edx]
 00651F76    and         ch,0DF
 00651F79    mov         bl,byte ptr [eax+1A]
>00651F7C    jmp         00651F60
 00651F7E    mov         bh,0
 00651F80    mov         ch,byte ptr [ebx+edx-1]
 00651F84    xor         ch,byte ptr [eax+ebx+1A]
 00651F88    test        ch,0DF
>00651F8B    jne         00651F74
 00651F8D    dec         ebx
>00651F8E    jne         00651F80
 00651F90    pop         edi
 00651F91    pop         esi
 00651F92    pop         ebx
 00651F93    ret
*}
end;

//00651F94
procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);
begin
{*
 00651F94    push        ebx
 00651F95    push        esi
 00651F96    push        edi
 00651F97    xor         ecx,ecx
 00651F99    mov         esi,eax
 00651F9B    mov         cl,byte ptr [eax+1]
 00651F9E    mov         edi,edx
 00651FA0    xor         eax,eax
 00651FA2    movzx       ecx,word ptr [esi+ecx+0A]
 00651FA7    rep stos    dword ptr [edi]
 00651FA9    mov         cl,byte ptr [esi+1]
 00651FAC    lea         esi,[esi+ecx+2]
 00651FB0    mov         cl,byte ptr [esi+0A]
 00651FB3    movzx       eax,word ptr [esi+ecx+0B]
 00651FB8    test        eax,eax
>00651FBA    je          00651FD7
 00651FBC    lea         edi,[esi+ecx+0D]
 00651FC0    movzx       ebx,word ptr [edi+18]
 00651FC4    mov         cl,byte ptr [edi+1A]
 00651FC7    cmp         dword ptr [edx+ebx*4],0
>00651FCB    jne         00651FD0
 00651FCD    mov         dword ptr [edx+ebx*4],edi
 00651FD0    lea         edi,[edi+ecx+1B]
 00651FD4    dec         eax
>00651FD5    jne         00651FC0
 00651FD7    mov         esi,dword ptr [esi+4]
 00651FDA    xor         ecx,ecx
 00651FDC    test        esi,esi
>00651FDE    je          00651FE4
 00651FE0    mov         esi,dword ptr [esi]
>00651FE2    jmp         00651FA9
 00651FE4    pop         edi
 00651FE5    pop         esi
 00651FE6    pop         ebx
 00651FE7    ret
*}
end;

//00651FE8
function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 00651FE8    mov         ecx,dword ptr [edx+0C]
 00651FEB    test        ecx,0FFFFFF00
>00651FF1    je          00652012
 00651FF3    cmp         byte ptr [edx+0F],0FE
 00651FF7    mov         edx,dword ptr [edx+10]
>00651FFA    jb          00652006
>00651FFC    ja          00652009
 00651FFE    movsx       ecx,cx
 00652001    add         ecx,dword ptr [eax]
 00652003    call        dword ptr [ecx]
 00652005    ret
 00652006    call        ecx
 00652008    ret
 00652009    and         ecx,0FFFFFF
 0065200F    mov         cl,byte ptr [ecx+eax]
 00652012    mov         al,cl
 00652014    ret
*}
end;

//00652018
function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;
begin
{*
 00652018    push        ebx
 00652019    push        edi
 0065201A    mov         edi,dword ptr [edx]
 0065201C    mov         edi,dword ptr [edi]
 0065201E    mov         bl,4
 00652020    cmp         byte ptr [edi],7
>00652023    je          0065202E
 00652025    xor         ecx,ecx
 00652027    mov         cl,byte ptr [edi+1]
 0065202A    mov         bl,byte ptr [edi+ecx+2]
 0065202E    mov         ecx,dword ptr [edx+4]
 00652031    cmp         byte ptr [edx+7],0FE
 00652035    mov         edx,dword ptr [edx+10]
>00652038    jb          00652045
>0065203A    ja          00652049
 0065203C    movsx       ecx,cx
 0065203F    add         ecx,dword ptr [eax]
 00652041    call        dword ptr [ecx]
>00652043    jmp         00652062
 00652045    call        ecx
>00652047    jmp         00652062
 00652049    and         ecx,0FFFFFF
 0065204F    add         ecx,eax
 00652051    mov         al,byte ptr [ecx]
 00652053    cmp         bl,2
>00652056    jb          00652062
 00652058    mov         ax,word ptr [ecx]
 0065205B    cmp         bl,4
>0065205E    jb          00652062
 00652060    mov         eax,dword ptr [ecx]
 00652062    cmp         bl,4
>00652065    jae         00652086
 00652067    cmp         bl,2
>0065206A    jae         0065207C
 0065206C    cmp         bl,0
 0065206F    movsx       eax,al
>00652072    je          00652086
 00652074    and         eax,0FF
 00652079    pop         edi
 0065207A    pop         ebx
 0065207B    ret
 0065207C    movsx       eax,ax
>0065207F    je          00652086
 00652081    and         eax,0FFFF
 00652086    pop         edi
 00652087    pop         ebx
 00652088    ret
*}
end;

//0065208C
procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);
begin
{*
 0065208C    push        ebx
 0065208D    push        esi
 0065208E    push        edi
 0065208F    mov         edi,edx
 00652091    mov         esi,dword ptr [edi]
 00652093    mov         esi,dword ptr [esi]
 00652095    mov         bl,4
 00652097    cmp         byte ptr [esi],7
>0065209A    je          006520A5
 0065209C    xor         ebx,ebx
 0065209E    mov         bl,byte ptr [esi+1]
 006520A1    mov         bl,byte ptr [esi+ebx+2]
 006520A5    mov         edx,dword ptr [edi+10]
 006520A8    cmp         edx,80000000
>006520AE    jne         006520B2
 006520B0    mov         edx,ecx
 006520B2    mov         esi,dword ptr [edi+8]
 006520B5    cmp         byte ptr [edi+0B],0FE
>006520B9    ja          006520CA
>006520BB    jb          006520C6
 006520BD    movsx       esi,si
 006520C0    add         esi,dword ptr [eax]
 006520C2    call        dword ptr [esi]
>006520C4    jmp         006520E3
 006520C6    call        esi
>006520C8    jmp         006520E3
 006520CA    and         esi,0FFFFFF
 006520D0    add         eax,esi
 006520D2    mov         byte ptr [eax],cl
 006520D4    cmp         bl,2
>006520D7    jb          006520E3
 006520D9    mov         word ptr [eax],cx
 006520DC    cmp         bl,4
>006520DF    jb          006520E3
 006520E1    mov         dword ptr [eax],ecx
 006520E3    pop         edi
 006520E4    pop         esi
 006520E5    pop         ebx
 006520E6    ret
*}
end;

//006520E8
procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);
begin
{*
 006520E8    push        ebp
 006520E9    mov         ebp,esp
 006520EB    push        esi
 006520EC    push        edi
 006520ED    mov         edi,edx
 006520EF    mov         edx,dword ptr [edi+10]
 006520F2    cmp         edx,80000000
>006520F8    jne         006520FC
 006520FA    mov         edx,ecx
 006520FC    mov         esi,dword ptr [edi+4]
 006520FF    cmp         byte ptr [edi+7],0FE
>00652103    ja          00652114
>00652105    jb          00652110
 00652107    movsx       esi,si
 0065210A    add         esi,dword ptr [eax]
 0065210C    call        dword ptr [esi]
>0065210E    jmp         00652125
 00652110    call        esi
>00652112    jmp         00652125
 00652114    and         esi,0FFFFFF
 0065211A    add         esi,eax
 0065211C    mov         edi,ecx
 0065211E    xor         ecx,ecx
 00652120    mov         cl,byte ptr [esi]
 00652122    inc         ecx
 00652123    rep movs    byte ptr [edi],byte ptr [esi]
 00652125    pop         edi
 00652126    pop         esi
 00652127    pop         ebp
 00652128    ret         4
*}
end;

//0065212C
procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);
begin
{*
 0065212C    push        esi
 0065212D    push        edi
 0065212E    mov         esi,edx
 00652130    mov         edx,dword ptr [esi+10]
 00652133    cmp         edx,80000000
>00652139    jne         0065213D
 0065213B    mov         edx,ecx
 0065213D    mov         edi,dword ptr [esi+8]
 00652140    cmp         byte ptr [esi+0B],0FE
>00652144    ja          00652157
>00652146    jb          00652152
 00652148    movsx       edi,di
 0065214B    add         edi,dword ptr [eax]
 0065214D    call        dword ptr [edi]
 0065214F    pop         edi
 00652150    pop         esi
 00652151    ret
 00652152    call        edi
 00652154    pop         edi
 00652155    pop         esi
 00652156    ret
 00652157    and         edi,0FFFFFF
 0065215D    add         edi,eax
 0065215F    mov         eax,dword ptr [esi]
 00652161    mov         eax,dword ptr [eax]
 00652163    mov         esi,ecx
 00652165    xor         ecx,ecx
 00652167    mov         cl,byte ptr [eax+1]
 0065216A    mov         cl,byte ptr [eax+ecx+2]
 0065216E    lods        byte ptr [esi]
 0065216F    cmp         al,cl
>00652171    jb          00652175
 00652173    mov         al,cl
 00652175    stos        byte ptr [edi]
 00652176    mov         cl,al
 00652178    rep movs    byte ptr [edi],byte ptr [esi]
 0065217A    pop         edi
 0065217B    pop         esi
 0065217C    ret
*}
end;

//00652180
{*procedure sub_00652180(?:?; ?:?; ?:?);
begin
 00652180    push        ebp
 00652181    mov         ebp,esp
 00652183    add         esp,0FFFFFEF4
 00652189    mov         dword ptr [ebp-0C],ecx
 0065218C    mov         dword ptr [ebp-8],edx
 0065218F    mov         dword ptr [ebp-4],eax
 00652192    push        0FF
 00652197    lea         ecx,[ebp-10C]
 0065219D    mov         edx,dword ptr [ebp-8]
 006521A0    mov         eax,dword ptr [ebp-4]
 006521A3    call        GetShortStrProp
 006521A8    mov         eax,dword ptr [ebp-0C]
 006521AB    lea         edx,[ebp-10C]
 006521B1    call        @LStrFromString
 006521B6    mov         esp,ebp
 006521B8    pop         ebp
 006521B9    ret
end;*}

//006521BC
{*procedure sub_006521BC(?:Longint; ?:PPropInfo; ?:?);
begin
 006521BC    push        ebp
 006521BD    mov         ebp,esp
 006521BF    add         esp,0FFFFFEF4
 006521C5    mov         dword ptr [ebp-0C],ecx
 006521C8    mov         dword ptr [ebp-8],edx
 006521CB    mov         dword ptr [ebp-4],eax
 006521CE    lea         eax,[ebp-10C]
 006521D4    mov         edx,dword ptr [ebp-0C]
 006521D7    mov         ecx,0FF
 006521DC    call        @LStrToString
 006521E1    lea         ecx,[ebp-10C]
 006521E7    mov         edx,dword ptr [ebp-8]
 006521EA    mov         eax,dword ptr [ebp-4]
 006521ED    call        SetShortStrProp
 006521F2    mov         esp,ebp
 006521F4    pop         ebp
 006521F5    ret
end;*}

//006521F8
procedure AssignLongStr(var Dest:AnsiString; const Source:AnsiString);
begin
{*
 006521F8    push        ebp
 006521F9    mov         ebp,esp
 006521FB    add         esp,0FFFFFFF8
 006521FE    mov         dword ptr [ebp-8],edx
 00652201    mov         dword ptr [ebp-4],eax
 00652204    mov         eax,dword ptr [ebp-4]
 00652207    mov         edx,dword ptr [ebp-8]
 0065220A    call        @LStrAsg
 0065220F    pop         ecx
 00652210    pop         ecx
 00652211    pop         ebp
 00652212    ret
*}
end;

//00652214
procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 00652214    push        esi
 00652215    push        edi
 00652216    mov         edi,edx
 00652218    mov         edx,dword ptr [edi+10]
 0065221B    cmp         edx,80000000
>00652221    jne         00652225
 00652223    mov         edx,ecx
 00652225    mov         esi,dword ptr [edi+4]
 00652228    cmp         byte ptr [edi+7],0FE
>0065222C    ja          0065223F
>0065222E    jb          0065223A
 00652230    movsx       esi,si
 00652233    add         esi,dword ptr [eax]
 00652235    call        dword ptr [esi]
 00652237    pop         edi
 00652238    pop         esi
 00652239    ret
 0065223A    call        esi
 0065223C    pop         edi
 0065223D    pop         esi
 0065223E    ret
 0065223F    and         esi,0FFFFFF
 00652245    mov         edx,dword ptr [esi+eax]
 00652248    mov         eax,ecx
 0065224A    call        AssignLongStr
 0065224F    pop         edi
 00652250    pop         esi
 00652251    ret
*}
end;

//00652254
procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 00652254    push        esi
 00652255    push        edi
 00652256    mov         esi,edx
 00652258    mov         edx,dword ptr [esi+10]
 0065225B    cmp         edx,80000000
>00652261    jne         00652265
 00652263    mov         edx,ecx
 00652265    mov         edi,dword ptr [esi+8]
 00652268    cmp         byte ptr [esi+0B],0FE
>0065226C    ja          0065227F
>0065226E    jb          0065227A
 00652270    movsx       edi,di
 00652273    add         edi,dword ptr [eax]
 00652275    call        dword ptr [edi]
 00652277    pop         edi
 00652278    pop         esi
 00652279    ret
 0065227A    call        edi
 0065227C    pop         edi
 0065227D    pop         esi
 0065227E    ret
 0065227F    and         edi,0FFFFFF
 00652285    add         eax,edi
 00652287    mov         edx,ecx
 00652289    call        AssignLongStr
 0065228E    pop         edi
 0065228F    pop         esi
 00652290    ret
*}
end;

//00652294
{*procedure sub_00652294(?:?; ?:?; ?:?);
begin
 00652294    push        ebp
 00652295    mov         ebp,esp
 00652297    add         esp,0FFFFFFF0
 0065229A    push        ebx
 0065229B    xor         ebx,ebx
 0065229D    mov         dword ptr [ebp-10],ebx
 006522A0    mov         dword ptr [ebp-0C],ecx
 006522A3    mov         dword ptr [ebp-8],edx
 006522A6    mov         dword ptr [ebp-4],eax
 006522A9    xor         eax,eax
 006522AB    push        ebp
 006522AC    push        6522E6
 006522B1    push        dword ptr fs:[eax]
 006522B4    mov         dword ptr fs:[eax],esp
 006522B7    lea         ecx,[ebp-10]
 006522BA    mov         edx,dword ptr [ebp-8]
 006522BD    mov         eax,dword ptr [ebp-4]
 006522C0    call        GetWideStrProp
 006522C5    mov         edx,dword ptr [ebp-10]
 006522C8    mov         eax,dword ptr [ebp-0C]
 006522CB    call        @LStrFromWStr
 006522D0    xor         eax,eax
 006522D2    pop         edx
 006522D3    pop         ecx
 006522D4    pop         ecx
 006522D5    mov         dword ptr fs:[eax],edx
 006522D8    push        6522ED
 006522DD    lea         eax,[ebp-10]
 006522E0    call        @WStrClr
 006522E5    ret
>006522E6    jmp         @HandleFinally
>006522EB    jmp         006522DD
 006522ED    pop         ebx
 006522EE    mov         esp,ebp
 006522F0    pop         ebp
 006522F1    ret
end;*}

//006522F4
{*procedure sub_006522F4(?:Longint; ?:PPropInfo; ?:?);
begin
 006522F4    push        ebp
 006522F5    mov         ebp,esp
 006522F7    add         esp,0FFFFFFF0
 006522FA    push        ebx
 006522FB    xor         ebx,ebx
 006522FD    mov         dword ptr [ebp-10],ebx
 00652300    mov         dword ptr [ebp-0C],ecx
 00652303    mov         dword ptr [ebp-8],edx
 00652306    mov         dword ptr [ebp-4],eax
 00652309    xor         eax,eax
 0065230B    push        ebp
 0065230C    push        652346
 00652311    push        dword ptr fs:[eax]
 00652314    mov         dword ptr fs:[eax],esp
 00652317    lea         eax,[ebp-10]
 0065231A    mov         edx,dword ptr [ebp-0C]
 0065231D    call        @WStrFromLStr
 00652322    mov         ecx,dword ptr [ebp-10]
 00652325    mov         edx,dword ptr [ebp-8]
 00652328    mov         eax,dword ptr [ebp-4]
 0065232B    call        00652520
 00652330    xor         eax,eax
 00652332    pop         edx
 00652333    pop         ecx
 00652334    pop         ecx
 00652335    mov         dword ptr fs:[eax],edx
 00652338    push        65234D
 0065233D    lea         eax,[ebp-10]
 00652340    call        @WStrClr
 00652345    ret
>00652346    jmp         @HandleFinally
>0065234B    jmp         0065233D
 0065234D    pop         ebx
 0065234E    mov         esp,ebp
 00652350    pop         ebp
 00652351    ret
end;*}

//00652354
{*procedure sub_00652354(?:?; ?:?; ?:?);
begin
 00652354    push        ebp
 00652355    mov         ebp,esp
 00652357    add         esp,0FFFFFFF4
 0065235A    mov         dword ptr [ebp-0C],ecx
 0065235D    mov         dword ptr [ebp-8],edx
 00652360    mov         dword ptr [ebp-4],eax
 00652363    mov         eax,dword ptr [ebp-8]
 00652366    mov         eax,dword ptr [eax]
 00652368    mov         eax,dword ptr [eax]
 0065236A    mov         al,byte ptr [eax]
 0065236C    sub         al,5
>0065236E    je          0065237A
 00652370    sub         al,5
>00652372    je          0065238A
 00652374    dec         al
>00652376    je          0065239A
>00652378    jmp         006523AA
 0065237A    mov         ecx,dword ptr [ebp-0C]
 0065237D    mov         edx,dword ptr [ebp-8]
 00652380    mov         eax,dword ptr [ebp-4]
 00652383    call        00652180
>00652388    jmp         006523B2
 0065238A    mov         ecx,dword ptr [ebp-0C]
 0065238D    mov         edx,dword ptr [ebp-8]
 00652390    mov         eax,dword ptr [ebp-4]
 00652393    call        GetLongStrProp
>00652398    jmp         006523B2
 0065239A    mov         ecx,dword ptr [ebp-0C]
 0065239D    mov         edx,dword ptr [ebp-8]
 006523A0    mov         eax,dword ptr [ebp-4]
 006523A3    call        00652294
>006523A8    jmp         006523B2
 006523AA    mov         eax,dword ptr [ebp-0C]
 006523AD    call        @LStrClr
 006523B2    mov         esp,ebp
 006523B4    pop         ebp
 006523B5    ret
end;*}

//006523B8
procedure sub_006523B8(?:Longint; ?:PPropInfo; ?:AnsiString);
begin
{*
 006523B8    push        ebp
 006523B9    mov         ebp,esp
 006523BB    add         esp,0FFFFFFF4
 006523BE    mov         dword ptr [ebp-0C],ecx
 006523C1    mov         dword ptr [ebp-8],edx
 006523C4    mov         dword ptr [ebp-4],eax
 006523C7    mov         eax,dword ptr [ebp-8]
 006523CA    mov         eax,dword ptr [eax]
 006523CC    mov         eax,dword ptr [eax]
 006523CE    mov         al,byte ptr [eax]
 006523D0    sub         al,5
>006523D2    je          006523DE
 006523D4    sub         al,5
>006523D6    je          006523EE
 006523D8    dec         al
>006523DA    je          006523FE
>006523DC    jmp         0065240C
 006523DE    mov         ecx,dword ptr [ebp-0C]
 006523E1    mov         edx,dword ptr [ebp-8]
 006523E4    mov         eax,dword ptr [ebp-4]
 006523E7    call        006521BC
>006523EC    jmp         0065240C
 006523EE    mov         ecx,dword ptr [ebp-0C]
 006523F1    mov         edx,dword ptr [ebp-8]
 006523F4    mov         eax,dword ptr [ebp-4]
 006523F7    call        SetLongStrProp
>006523FC    jmp         0065240C
 006523FE    mov         ecx,dword ptr [ebp-0C]
 00652401    mov         edx,dword ptr [ebp-8]
 00652404    mov         eax,dword ptr [ebp-4]
 00652407    call        006522F4
 0065240C    mov         esp,ebp
 0065240E    pop         ebp
 0065240F    ret
*}
end;

//00652410
function GetWideStrProp(Instance:TObject; const PropName:AnsiString):WideString;
begin
{*
 00652410    push        ebp
 00652411    mov         ebp,esp
 00652413    add         esp,0FFFFFFE0
 00652416    push        ebx
 00652417    xor         ebx,ebx
 00652419    mov         dword ptr [ebp-20],ebx
 0065241C    mov         dword ptr [ebp-0C],ecx
 0065241F    mov         dword ptr [ebp-8],edx
 00652422    mov         dword ptr [ebp-4],eax
 00652425    xor         eax,eax
 00652427    push        ebp
 00652428    push        652513
 0065242D    push        dword ptr fs:[eax]
 00652430    mov         dword ptr fs:[eax],esp
 00652433    mov         eax,dword ptr [ebp-8]
 00652436    mov         eax,dword ptr [eax]
 00652438    mov         eax,dword ptr [eax]
 0065243A    mov         al,byte ptr [eax]
 0065243C    sub         al,5
>0065243E    je          0065244D
 00652440    sub         al,5
>00652442    je          0065244D
 00652444    dec         al
>00652446    je          0065246B
>00652448    jmp         006524F5
 0065244D    lea         ecx,[ebp-20]
 00652450    mov         edx,dword ptr [ebp-8]
 00652453    mov         eax,dword ptr [ebp-4]
 00652456    call        00652354
 0065245B    mov         edx,dword ptr [ebp-20]
 0065245E    mov         eax,dword ptr [ebp-0C]
 00652461    call        @WStrFromLStr
>00652466    jmp         006524FD
 0065246B    mov         eax,dword ptr [ebp-8]
 0065246E    mov         eax,dword ptr [eax+4]
 00652471    mov         dword ptr [ebp-1C],eax
 00652474    mov         eax,dword ptr [ebp-1C]
 00652477    and         eax,0FF000000
 0065247C    cmp         eax,0FF000000
>00652481    jne         006524A0
 00652483    mov         eax,dword ptr [ebp-1C]
 00652486    and         eax,0FFFFFF
 0065248B    add         eax,dword ptr [ebp-4]
 0065248E    mov         dword ptr [ebp-10],eax
 00652491    mov         eax,dword ptr [ebp-0C]
 00652494    mov         edx,dword ptr [ebp-10]
 00652497    mov         edx,dword ptr [edx]
 00652499    call        @WStrAsg
>0065249E    jmp         006524FD
 006524A0    mov         eax,dword ptr [ebp-1C]
 006524A3    and         eax,0FF000000
 006524A8    cmp         eax,0FE000000
>006524AD    jne         006524C1
 006524AF    mov         eax,dword ptr [ebp-4]
 006524B2    mov         eax,dword ptr [eax]
 006524B4    movsx       edx,word ptr [ebp-1C]
 006524B8    add         eax,edx
 006524BA    mov         eax,dword ptr [eax]
 006524BC    mov         dword ptr [ebp-18],eax
>006524BF    jmp         006524C7
 006524C1    mov         eax,dword ptr [ebp-1C]
 006524C4    mov         dword ptr [ebp-18],eax
 006524C7    mov         eax,dword ptr [ebp-4]
 006524CA    mov         dword ptr [ebp-14],eax
 006524CD    mov         eax,dword ptr [ebp-8]
 006524D0    cmp         dword ptr [eax+10],80000000
>006524D7    jne         006524E4
 006524D9    mov         edx,dword ptr [ebp-0C]
 006524DC    mov         eax,dword ptr [ebp-14]
 006524DF    call        dword ptr [ebp-18]
>006524E2    jmp         006524FD
 006524E4    mov         ecx,dword ptr [ebp-0C]
 006524E7    mov         eax,dword ptr [ebp-8]
 006524EA    mov         edx,dword ptr [eax+10]
 006524ED    mov         eax,dword ptr [ebp-14]
 006524F0    call        dword ptr [ebp-18]
>006524F3    jmp         006524FD
 006524F5    mov         eax,dword ptr [ebp-0C]
 006524F8    call        @WStrClr
 006524FD    xor         eax,eax
 006524FF    pop         edx
 00652500    pop         ecx
 00652501    pop         ecx
 00652502    mov         dword ptr fs:[eax],edx
 00652505    push        65251A
 0065250A    lea         eax,[ebp-20]
 0065250D    call        @LStrClr
 00652512    ret
>00652513    jmp         @HandleFinally
>00652518    jmp         0065250A
 0065251A    pop         ebx
 0065251B    mov         esp,ebp
 0065251D    pop         ebp
 0065251E    ret
*}
end;

//00652520
procedure sub_00652520(?:Longint; ?:PPropInfo; ?:WideString);
begin
{*
 00652520    push        ebp
 00652521    mov         ebp,esp
 00652523    add         esp,0FFFFFFE0
 00652526    push        ebx
 00652527    xor         ebx,ebx
 00652529    mov         dword ptr [ebp-20],ebx
 0065252C    mov         dword ptr [ebp-0C],ecx
 0065252F    mov         dword ptr [ebp-8],edx
 00652532    mov         dword ptr [ebp-4],eax
 00652535    xor         eax,eax
 00652537    push        ebp
 00652538    push        652617
 0065253D    push        dword ptr fs:[eax]
 00652540    mov         dword ptr fs:[eax],esp
 00652543    mov         eax,dword ptr [ebp-8]
 00652546    mov         eax,dword ptr [eax]
 00652548    mov         eax,dword ptr [eax]
 0065254A    mov         al,byte ptr [eax]
 0065254C    sub         al,5
>0065254E    je          0065255D
 00652550    sub         al,5
>00652552    je          0065255D
 00652554    dec         al
>00652556    je          0065257B
>00652558    jmp         00652601
 0065255D    lea         eax,[ebp-20]
 00652560    mov         edx,dword ptr [ebp-0C]
 00652563    call        @LStrFromWStr
 00652568    mov         ecx,dword ptr [ebp-20]
 0065256B    mov         edx,dword ptr [ebp-8]
 0065256E    mov         eax,dword ptr [ebp-4]
 00652571    call        006523B8
>00652576    jmp         00652601
 0065257B    mov         eax,dword ptr [ebp-8]
 0065257E    mov         eax,dword ptr [eax+8]
 00652581    mov         dword ptr [ebp-1C],eax
 00652584    mov         eax,dword ptr [ebp-1C]
 00652587    and         eax,0FF000000
 0065258C    cmp         eax,0FF000000
>00652591    jne         006525AE
 00652593    mov         eax,dword ptr [ebp-1C]
 00652596    and         eax,0FFFFFF
 0065259B    add         eax,dword ptr [ebp-4]
 0065259E    mov         dword ptr [ebp-10],eax
 006525A1    mov         eax,dword ptr [ebp-10]
 006525A4    mov         edx,dword ptr [ebp-0C]
 006525A7    call        @WStrAsg
>006525AC    jmp         00652601
 006525AE    mov         eax,dword ptr [ebp-1C]
 006525B1    and         eax,0FF000000
 006525B6    cmp         eax,0FE000000
>006525BB    jne         006525CF
 006525BD    mov         eax,dword ptr [ebp-4]
 006525C0    mov         eax,dword ptr [eax]
 006525C2    movsx       edx,word ptr [ebp-1C]
 006525C6    add         eax,edx
 006525C8    mov         eax,dword ptr [eax]
 006525CA    mov         dword ptr [ebp-18],eax
>006525CD    jmp         006525D5
 006525CF    mov         eax,dword ptr [ebp-1C]
 006525D2    mov         dword ptr [ebp-18],eax
 006525D5    mov         eax,dword ptr [ebp-4]
 006525D8    mov         dword ptr [ebp-14],eax
 006525DB    mov         eax,dword ptr [ebp-8]
 006525DE    cmp         dword ptr [eax+10],80000000
>006525E5    jne         006525F2
 006525E7    mov         edx,dword ptr [ebp-0C]
 006525EA    mov         eax,dword ptr [ebp-14]
 006525ED    call        dword ptr [ebp-18]
>006525F0    jmp         00652601
 006525F2    mov         ecx,dword ptr [ebp-0C]
 006525F5    mov         eax,dword ptr [ebp-8]
 006525F8    mov         edx,dword ptr [eax+10]
 006525FB    mov         eax,dword ptr [ebp-14]
 006525FE    call        dword ptr [ebp-18]
 00652601    xor         eax,eax
 00652603    pop         edx
 00652604    pop         ecx
 00652605    pop         ecx
 00652606    mov         dword ptr fs:[eax],edx
 00652609    push        65261E
 0065260E    lea         eax,[ebp-20]
 00652611    call        @LStrClr
 00652616    ret
>00652617    jmp         @HandleFinally
>0065261C    jmp         0065260E
 0065261E    pop         ebx
 0065261F    mov         esp,ebp
 00652621    pop         ebp
 00652622    ret
*}
end;

//00652624
function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;
begin
{*
 00652624    push        ebp
 00652625    mov         ebp,esp
 00652627    add         esp,0FFFFFFD8
 0065262A    mov         dword ptr [ebp-8],edx
 0065262D    mov         dword ptr [ebp-4],eax
 00652630    mov         eax,dword ptr [ebp-8]
 00652633    mov         eax,dword ptr [eax+4]
 00652636    mov         dword ptr [ebp-28],eax
 00652639    mov         eax,dword ptr [ebp-28]
 0065263C    and         eax,0FF000000
 00652641    cmp         eax,0FF000000
>00652646    jne         006526F0
 0065264C    mov         eax,dword ptr [ebp-28]
 0065264F    and         eax,0FFFFFF
 00652654    add         eax,dword ptr [ebp-4]
 00652657    mov         dword ptr [ebp-1C],eax
 0065265A    mov         eax,dword ptr [ebp-8]
 0065265D    mov         eax,dword ptr [eax]
 0065265F    mov         eax,dword ptr [eax]
 00652661    call        GetTypeData
 00652666    movzx       eax,byte ptr [eax]
 00652669    cmp         eax,4
>0065266C    ja          006526E2
 0065266E    jmp         dword ptr [eax*4+652675]
 0065266E    dd          00652689
 0065266E    dd          00652697
 0065266E    dd          006526A5
 0065266E    dd          006526C0
 0065266E    dd          006526CE
 00652689    mov         eax,dword ptr [ebp-1C]
 0065268C    fld         dword ptr [eax]
 0065268E    fstp        tbyte ptr [ebp-18]
 00652691    wait
>00652692    jmp         00652763
 00652697    mov         eax,dword ptr [ebp-1C]
 0065269A    fld         qword ptr [eax]
 0065269C    fstp        tbyte ptr [ebp-18]
 0065269F    wait
>006526A0    jmp         00652763
 006526A5    mov         eax,dword ptr [ebp-1C]
 006526A8    mov         edx,dword ptr [eax]
 006526AA    mov         dword ptr [ebp-18],edx
 006526AD    mov         edx,dword ptr [eax+4]
 006526B0    mov         dword ptr [ebp-14],edx
 006526B3    mov         dx,word ptr [eax+8]
 006526B7    mov         word ptr [ebp-10],dx
>006526BB    jmp         00652763
 006526C0    mov         eax,dword ptr [ebp-1C]
 006526C3    fild        qword ptr [eax]
 006526C5    fstp        tbyte ptr [ebp-18]
 006526C8    wait
>006526C9    jmp         00652763
 006526CE    mov         eax,dword ptr [ebp-1C]
 006526D1    fild        qword ptr [eax]
 006526D3    fdiv        dword ptr ds:[65276C]
 006526D9    fstp        tbyte ptr [ebp-18]
 006526DC    wait
>006526DD    jmp         00652763
 006526E2    xor         eax,eax
 006526E4    mov         dword ptr [ebp-18],eax
 006526E7    mov         dword ptr [ebp-14],eax
 006526EA    mov         word ptr [ebp-10],ax
>006526EE    jmp         00652763
 006526F0    mov         eax,dword ptr [ebp-28]
 006526F3    and         eax,0FF000000
 006526F8    cmp         eax,0FE000000
>006526FD    jne         00652711
 006526FF    mov         eax,dword ptr [ebp-4]
 00652702    mov         eax,dword ptr [eax]
 00652704    movsx       edx,word ptr [ebp-28]
 00652708    add         eax,edx
 0065270A    mov         eax,dword ptr [eax]
 0065270C    mov         dword ptr [ebp-24],eax
>0065270F    jmp         00652717
 00652711    mov         eax,dword ptr [ebp-28]
 00652714    mov         dword ptr [ebp-24],eax
 00652717    mov         eax,dword ptr [ebp-4]
 0065271A    mov         dword ptr [ebp-20],eax
 0065271D    mov         eax,dword ptr [ebp-8]
 00652720    cmp         dword ptr [eax+10],80000000
>00652727    jne         00652735
 00652729    mov         eax,dword ptr [ebp-20]
 0065272C    call        dword ptr [ebp-24]
 0065272F    fstp        tbyte ptr [ebp-18]
 00652732    wait
>00652733    jmp         00652745
 00652735    mov         eax,dword ptr [ebp-8]
 00652738    mov         edx,dword ptr [eax+10]
 0065273B    mov         eax,dword ptr [ebp-20]
 0065273E    call        dword ptr [ebp-24]
 00652741    fstp        tbyte ptr [ebp-18]
 00652744    wait
 00652745    mov         eax,dword ptr [ebp-8]
 00652748    mov         eax,dword ptr [eax]
 0065274A    mov         eax,dword ptr [eax]
 0065274C    call        GetTypeData
 00652751    cmp         byte ptr [eax],4
>00652754    jne         00652763
 00652756    fld         tbyte ptr [ebp-18]
 00652759    fdiv        dword ptr ds:[65276C]
 0065275F    fstp        tbyte ptr [ebp-18]
 00652762    wait
 00652763    fld         tbyte ptr [ebp-18]
 00652766    mov         esp,ebp
 00652768    pop         ebp
 00652769    ret
*}
end;

//00652770
{*procedure sub_00652770(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);
begin
 00652770    push        ebp
 00652771    mov         ebp,esp
 00652773    add         esp,0FFFFFFE4
 00652776    mov         dword ptr [ebp-8],edx
 00652779    mov         dword ptr [ebp-4],eax
 0065277C    mov         eax,dword ptr [ebp-8]
 0065277F    mov         eax,dword ptr [eax+8]
 00652782    mov         dword ptr [ebp-18],eax
 00652785    mov         eax,dword ptr [ebp-8]
 00652788    mov         eax,dword ptr [eax]
 0065278A    mov         eax,dword ptr [eax]
 0065278C    call        GetTypeData
 00652791    mov         al,byte ptr [eax]
 00652793    mov         byte ptr [ebp-19],al
 00652796    mov         eax,dword ptr [ebp-18]
 00652799    and         eax,0FF000000
 0065279E    cmp         eax,0FF000000
>006527A3    jne         00652839
 006527A9    mov         eax,dword ptr [ebp-18]
 006527AC    and         eax,0FFFFFF
 006527B1    add         eax,dword ptr [ebp-4]
 006527B4    mov         dword ptr [ebp-0C],eax
 006527B7    xor         eax,eax
 006527B9    mov         al,byte ptr [ebp-19]
 006527BC    cmp         eax,4
>006527BF    ja          006529B5
 006527C5    jmp         dword ptr [eax*4+6527CC]
 006527C5    dd          006527E0
 006527C5    dd          006527EE
 006527C5    dd          006527FC
 006527C5    dd          00652817
 006527C5    dd          00652825
 006527E0    fld         tbyte ptr [ebp+8]
 006527E3    mov         eax,dword ptr [ebp-0C]
 006527E6    fstp        dword ptr [eax]
 006527E8    wait
>006527E9    jmp         006529B5
 006527EE    fld         tbyte ptr [ebp+8]
 006527F1    mov         eax,dword ptr [ebp-0C]
 006527F4    fstp        qword ptr [eax]
 006527F6    wait
>006527F7    jmp         006529B5
 006527FC    mov         eax,dword ptr [ebp-0C]
 006527FF    mov         edx,dword ptr [ebp+8]
 00652802    mov         dword ptr [eax],edx
 00652804    mov         edx,dword ptr [ebp+0C]
 00652807    mov         dword ptr [eax+4],edx
 0065280A    mov         dx,word ptr [ebp+10]
 0065280E    mov         word ptr [eax+8],dx
>00652812    jmp         006529B5
 00652817    fld         tbyte ptr [ebp+8]
 0065281A    mov         eax,dword ptr [ebp-0C]
 0065281D    fistp       qword ptr [eax]
 0065281F    wait
>00652820    jmp         006529B5
 00652825    fld         tbyte ptr [ebp+8]
 00652828    fmul        dword ptr ds:[6529BC];10000:Single
 0065282E    mov         eax,dword ptr [ebp-0C]
 00652831    fistp       qword ptr [eax]
 00652833    wait
>00652834    jmp         006529B5
 00652839    mov         eax,dword ptr [ebp-18]
 0065283C    and         eax,0FF000000
 00652841    cmp         eax,0FE000000
>00652846    jne         0065285A
 00652848    mov         eax,dword ptr [ebp-4]
 0065284B    mov         eax,dword ptr [eax]
 0065284D    movsx       edx,word ptr [ebp-18]
 00652851    add         eax,edx
 00652853    mov         eax,dword ptr [eax]
 00652855    mov         dword ptr [ebp-14],eax
>00652858    jmp         00652860
 0065285A    mov         eax,dword ptr [ebp-18]
 0065285D    mov         dword ptr [ebp-14],eax
 00652860    mov         eax,dword ptr [ebp-4]
 00652863    mov         dword ptr [ebp-10],eax
 00652866    mov         eax,dword ptr [ebp-8]
 00652869    cmp         dword ptr [eax+10],80000000
>00652870    jne         0065290F
 00652876    xor         eax,eax
 00652878    mov         al,byte ptr [ebp-19]
 0065287B    cmp         eax,4
>0065287E    ja          006529B5
 00652884    jmp         dword ptr [eax*4+65288B]
 00652884    dd          0065289F
 00652884    dd          006528B4
 00652884    dd          006528C9
 00652884    dd          006528DF
 00652884    dd          006528F4
 0065289F    fld         tbyte ptr [ebp+8]
 006528A2    add         esp,0FFFFFFFC
 006528A5    fstp        dword ptr [esp]
 006528A8    wait
 006528A9    mov         eax,dword ptr [ebp-10]
 006528AC    call        dword ptr [ebp-14]
>006528AF    jmp         006529B5
 006528B4    fld         tbyte ptr [ebp+8]
 006528B7    add         esp,0FFFFFFF8
 006528BA    fstp        qword ptr [esp]
 006528BD    wait
 006528BE    mov         eax,dword ptr [ebp-10]
 006528C1    call        dword ptr [ebp-14]
>006528C4    jmp         006529B5
 006528C9    mov         ax,word ptr [ebp+10]
 006528CD    push        eax
 006528CE    push        dword ptr [ebp+0C]
 006528D1    push        dword ptr [ebp+8]
 006528D4    mov         eax,dword ptr [ebp-10]
 006528D7    call        dword ptr [ebp-14]
>006528DA    jmp         006529B5
 006528DF    fld         tbyte ptr [ebp+8]
 006528E2    add         esp,0FFFFFFF8
 006528E5    fistp       qword ptr [esp]
 006528E8    wait
 006528E9    mov         eax,dword ptr [ebp-10]
 006528EC    call        dword ptr [ebp-14]
>006528EF    jmp         006529B5
 006528F4    fld         tbyte ptr [ebp+8]
 006528F7    fmul        dword ptr ds:[6529BC];10000:Single
 006528FD    add         esp,0FFFFFFF8
 00652900    fistp       qword ptr [esp]
 00652903    wait
 00652904    mov         eax,dword ptr [ebp-10]
 00652907    call        dword ptr [ebp-14]
>0065290A    jmp         006529B5
 0065290F    xor         eax,eax
 00652911    mov         al,byte ptr [ebp-19]
 00652914    cmp         eax,4
>00652917    ja          006529B5
 0065291D    jmp         dword ptr [eax*4+652924]
 0065291D    dd          00652938
 0065291D    dd          00652950
 0065291D    dd          00652968
 0065291D    dd          00652981
 0065291D    dd          00652999
 00652938    fld         tbyte ptr [ebp+8]
 0065293B    add         esp,0FFFFFFFC
 0065293E    fstp        dword ptr [esp]
 00652941    wait
 00652942    mov         eax,dword ptr [ebp-8]
 00652945    mov         edx,dword ptr [eax+10]
 00652948    mov         eax,dword ptr [ebp-10]
 0065294B    call        dword ptr [ebp-14]
>0065294E    jmp         006529B5
 00652950    fld         tbyte ptr [ebp+8]
 00652953    add         esp,0FFFFFFF8
 00652956    fstp        qword ptr [esp]
 00652959    wait
 0065295A    mov         eax,dword ptr [ebp-8]
 0065295D    mov         edx,dword ptr [eax+10]
 00652960    mov         eax,dword ptr [ebp-10]
 00652963    call        dword ptr [ebp-14]
>00652966    jmp         006529B5
 00652968    mov         ax,word ptr [ebp+10]
 0065296C    push        eax
 0065296D    push        dword ptr [ebp+0C]
 00652970    push        dword ptr [ebp+8]
 00652973    mov         eax,dword ptr [ebp-8]
 00652976    mov         edx,dword ptr [eax+10]
 00652979    mov         eax,dword ptr [ebp-10]
 0065297C    call        dword ptr [ebp-14]
>0065297F    jmp         006529B5
 00652981    fld         tbyte ptr [ebp+8]
 00652984    add         esp,0FFFFFFF8
 00652987    fistp       qword ptr [esp]
 0065298A    wait
 0065298B    mov         eax,dword ptr [ebp-8]
 0065298E    mov         edx,dword ptr [eax+10]
 00652991    mov         eax,dword ptr [ebp-10]
 00652994    call        dword ptr [ebp-14]
>00652997    jmp         006529B5
 00652999    fld         tbyte ptr [ebp+8]
 0065299C    fmul        dword ptr ds:[6529BC];10000:Single
 006529A2    add         esp,0FFFFFFF8
 006529A5    fistp       qword ptr [esp]
 006529A8    wait
 006529A9    mov         eax,dword ptr [ebp-8]
 006529AC    mov         edx,dword ptr [eax+10]
 006529AF    mov         eax,dword ptr [ebp-10]
 006529B2    call        dword ptr [ebp-14]
 006529B5    mov         esp,ebp
 006529B7    pop         ebp
 006529B8    ret         0C
end;*}

//006529C0
procedure AssignVariant(var Dest:Variant; const Source:Variant);
begin
{*
 006529C0    push        ebp
 006529C1    mov         ebp,esp
 006529C3    add         esp,0FFFFFFF8
 006529C6    mov         dword ptr [ebp-8],edx
 006529C9    mov         dword ptr [ebp-4],eax
 006529CC    mov         eax,dword ptr [ebp-4]
 006529CF    mov         edx,dword ptr [ebp-8]
 006529D2    call        @VarCopy
 006529D7    pop         ecx
 006529D8    pop         ecx
 006529D9    pop         ebp
 006529DA    ret
*}
end;

//006529DC
function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;
begin
{*
 006529DC    push        esi
 006529DD    push        edi
 006529DE    mov         edi,edx
 006529E0    mov         edx,dword ptr [edi+10]
 006529E3    cmp         edx,80000000
>006529E9    jne         006529ED
 006529EB    mov         edx,ecx
 006529ED    mov         esi,dword ptr [edi+4]
 006529F0    cmp         byte ptr [edi+7],0FE
>006529F4    ja          00652A07
>006529F6    jb          00652A02
 006529F8    movsx       esi,si
 006529FB    add         esi,dword ptr [eax]
 006529FD    call        dword ptr [esi]
 006529FF    pop         edi
 00652A00    pop         esi
 00652A01    ret
 00652A02    call        esi
 00652A04    pop         edi
 00652A05    pop         esi
 00652A06    ret
 00652A07    and         esi,0FFFFFF
 00652A0D    lea         edx,[esi+eax]
 00652A10    mov         eax,ecx
 00652A12    call        AssignVariant
 00652A17    pop         edi
 00652A18    pop         esi
 00652A19    ret
*}
end;

//00652A1C
procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);
begin
{*
 00652A1C    push        esi
 00652A1D    push        edi
 00652A1E    mov         esi,edx
 00652A20    mov         edx,dword ptr [esi+10]
 00652A23    cmp         edx,80000000
>00652A29    jne         00652A2D
 00652A2B    mov         edx,ecx
 00652A2D    mov         edi,dword ptr [esi+8]
 00652A30    cmp         byte ptr [esi+0B],0FE
>00652A34    ja          00652A47
>00652A36    jb          00652A42
 00652A38    movsx       edi,di
 00652A3B    add         edi,dword ptr [eax]
 00652A3D    call        dword ptr [edi]
 00652A3F    pop         edi
 00652A40    pop         esi
 00652A41    ret
 00652A42    call        edi
 00652A44    pop         edi
 00652A45    pop         esi
 00652A46    ret
 00652A47    and         edi,0FFFFFF
 00652A4D    add         eax,edi
 00652A4F    mov         edx,ecx
 00652A51    call        AssignVariant
 00652A56    pop         edi
 00652A57    pop         esi
 00652A58    ret
*}
end;

//00652A5C
function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;
begin
{*
 00652A5C    push        ebx
 00652A5D    push        esi
 00652A5E    mov         esi,edx
 00652A60    mov         edx,dword ptr [esi+10]
 00652A63    cmp         edx,80000000
>00652A69    jne         00652A6D
 00652A6B    mov         edx,ecx
 00652A6D    mov         ebx,dword ptr [esi+4]
 00652A70    cmp         byte ptr [esi+7],0FE
>00652A74    ja          00652A87
>00652A76    jb          00652A82
 00652A78    movsx       ebx,bx
 00652A7B    add         ebx,dword ptr [eax]
 00652A7D    call        dword ptr [ebx]
 00652A7F    pop         esi
 00652A80    pop         ebx
 00652A81    ret
 00652A82    call        ebx
 00652A84    pop         esi
 00652A85    pop         ebx
 00652A86    ret
 00652A87    and         ebx,0FFFFFF
 00652A8D    add         eax,ebx
 00652A8F    mov         edx,dword ptr [eax]
 00652A91    mov         ebx,dword ptr [eax+4]
 00652A94    mov         dword ptr [ecx],edx
 00652A96    mov         dword ptr [ecx+4],ebx
 00652A99    pop         esi
 00652A9A    pop         ebx
 00652A9B    ret
*}
end;

//00652A9C
procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);
begin
{*
 00652A9C    push        ebx
 00652A9D    mov         ebx,dword ptr [edx+8]
 00652AA0    cmp         byte ptr [edx+0B],0FE
>00652AA4    ja          00652ABD
 00652AA6    mov         edx,dword ptr [edx+10]
 00652AA9    push        dword ptr [ecx+4]
 00652AAC    push        dword ptr [ecx]
>00652AAE    jb          00652AB9
 00652AB0    movsx       ebx,bx
 00652AB3    add         ebx,dword ptr [eax]
 00652AB5    call        dword ptr [ebx]
 00652AB7    pop         ebx
 00652AB8    ret
 00652AB9    call        ebx
 00652ABB    pop         ebx
 00652ABC    ret
 00652ABD    and         ebx,0FFFFFF
 00652AC3    add         eax,ebx
 00652AC5    mov         edx,dword ptr [ecx]
 00652AC7    mov         ebx,dword ptr [ecx+4]
 00652ACA    mov         dword ptr [eax],edx
 00652ACC    mov         dword ptr [eax+4],ebx
 00652ACF    pop         ebx
 00652AD0    ret
*}
end;

//00652AD4
function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;
begin
{*
 00652AD4    cmp         byte ptr [edx+7],0FE
 00652AD8    mov         ecx,dword ptr [edx+4]
 00652ADB    mov         edx,dword ptr [edx+10]
>00652ADE    ja          00652AED
>00652AE0    jb          00652AEA
 00652AE2    movsx       ecx,cx
 00652AE5    add         ecx,dword ptr [eax]
 00652AE7    call        dword ptr [ecx]
 00652AE9    ret
 00652AEA    call        ecx
 00652AEC    ret
 00652AED    and         ecx,0FFFFFF
 00652AF3    add         eax,ecx
 00652AF5    mov         edx,dword ptr [eax+4]
 00652AF8    mov         eax,dword ptr [eax]
 00652AFA    ret
*}
end;

//00652AFC
procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);
begin
{*
 00652AFC    push        ebp
 00652AFD    mov         ebp,esp
 00652AFF    cmp         byte ptr [edx+0B],0FE
 00652B03    mov         ecx,dword ptr [edx+8]
>00652B06    ja          00652B20
 00652B08    mov         edx,dword ptr [edx+10]
 00652B0B    push        dword ptr [ebp+0C]
 00652B0E    push        dword ptr [ebp+8]
>00652B11    jb          00652B1C
 00652B13    movsx       ecx,cx
 00652B16    add         ecx,dword ptr [eax]
 00652B18    call        dword ptr [ecx]
>00652B1A    jmp         00652B33
 00652B1C    call        ecx
>00652B1E    jmp         00652B33
 00652B20    and         ecx,0FFFFFF
 00652B26    add         eax,ecx
 00652B28    mov         edx,dword ptr [ebp+8]
 00652B2B    mov         ecx,dword ptr [ebp+0C]
 00652B2E    mov         dword ptr [eax],edx
 00652B30    mov         dword ptr [eax+4],ecx
 00652B33    pop         ebp
 00652B34    ret         8
*}
end;

//00652B38
function GetInterfaceProp(Instance:TObject; PropInfo:PPropInfo):IInterface;
begin
{*
 00652B38    push        ebp
 00652B39    mov         ebp,esp
 00652B3B    add         esp,0FFFFFFE4
 00652B3E    mov         dword ptr [ebp-0C],ecx
 00652B41    mov         dword ptr [ebp-8],edx
 00652B44    mov         dword ptr [ebp-4],eax
 00652B47    mov         eax,dword ptr [ebp-8]
 00652B4A    mov         eax,dword ptr [eax+4]
 00652B4D    mov         dword ptr [ebp-1C],eax
 00652B50    mov         eax,dword ptr [ebp-1C]
 00652B53    and         eax,0FF000000
 00652B58    cmp         eax,0FF000000
>00652B5D    jne         00652B7C
 00652B5F    mov         eax,dword ptr [ebp-1C]
 00652B62    and         eax,0FFFFFF
 00652B67    add         eax,dword ptr [ebp-4]
 00652B6A    mov         dword ptr [ebp-10],eax
 00652B6D    mov         eax,dword ptr [ebp-0C]
 00652B70    mov         edx,dword ptr [ebp-10]
 00652B73    mov         edx,dword ptr [edx]
 00652B75    call        @IntfCopy
>00652B7A    jmp         00652BCF
 00652B7C    mov         eax,dword ptr [ebp-1C]
 00652B7F    and         eax,0FF000000
 00652B84    cmp         eax,0FE000000
>00652B89    jne         00652B9D
 00652B8B    mov         eax,dword ptr [ebp-4]
 00652B8E    mov         eax,dword ptr [eax]
 00652B90    movsx       edx,word ptr [ebp-1C]
 00652B94    add         eax,edx
 00652B96    mov         eax,dword ptr [eax]
 00652B98    mov         dword ptr [ebp-18],eax
>00652B9B    jmp         00652BA3
 00652B9D    mov         eax,dword ptr [ebp-1C]
 00652BA0    mov         dword ptr [ebp-18],eax
 00652BA3    mov         eax,dword ptr [ebp-4]
 00652BA6    mov         dword ptr [ebp-14],eax
 00652BA9    mov         eax,dword ptr [ebp-8]
 00652BAC    cmp         dword ptr [eax+10],80000000
>00652BB3    jne         00652BC0
 00652BB5    mov         edx,dword ptr [ebp-0C]
 00652BB8    mov         eax,dword ptr [ebp-14]
 00652BBB    call        dword ptr [ebp-18]
>00652BBE    jmp         00652BCF
 00652BC0    mov         ecx,dword ptr [ebp-0C]
 00652BC3    mov         eax,dword ptr [ebp-8]
 00652BC6    mov         edx,dword ptr [eax+10]
 00652BC9    mov         eax,dword ptr [ebp-14]
 00652BCC    call        dword ptr [ebp-18]
 00652BCF    mov         esp,ebp
 00652BD1    pop         ebp
 00652BD2    ret
*}
end;

//00652BD4
procedure SetInterfaceProp(Instance:TObject; const PropName:AnsiString; const Value:IInterface);
begin
{*
 00652BD4    push        ebp
 00652BD5    mov         ebp,esp
 00652BD7    add         esp,0FFFFFFE4
 00652BDA    mov         dword ptr [ebp-0C],ecx
 00652BDD    mov         dword ptr [ebp-8],edx
 00652BE0    mov         dword ptr [ebp-4],eax
 00652BE3    mov         eax,dword ptr [ebp-8]
 00652BE6    mov         eax,dword ptr [eax+8]
 00652BE9    mov         dword ptr [ebp-1C],eax
 00652BEC    mov         eax,dword ptr [ebp-1C]
 00652BEF    and         eax,0FF000000
 00652BF4    cmp         eax,0FF000000
>00652BF9    jne         00652C16
 00652BFB    mov         eax,dword ptr [ebp-1C]
 00652BFE    and         eax,0FFFFFF
 00652C03    add         eax,dword ptr [ebp-4]
 00652C06    mov         dword ptr [ebp-10],eax
 00652C09    mov         eax,dword ptr [ebp-10]
 00652C0C    mov         edx,dword ptr [ebp-0C]
 00652C0F    call        @IntfCopy
>00652C14    jmp         00652C69
 00652C16    mov         eax,dword ptr [ebp-1C]
 00652C19    and         eax,0FF000000
 00652C1E    cmp         eax,0FE000000
>00652C23    jne         00652C37
 00652C25    mov         eax,dword ptr [ebp-4]
 00652C28    mov         eax,dword ptr [eax]
 00652C2A    movsx       edx,word ptr [ebp-1C]
 00652C2E    add         eax,edx
 00652C30    mov         eax,dword ptr [eax]
 00652C32    mov         dword ptr [ebp-18],eax
>00652C35    jmp         00652C3D
 00652C37    mov         eax,dword ptr [ebp-1C]
 00652C3A    mov         dword ptr [ebp-18],eax
 00652C3D    mov         eax,dword ptr [ebp-4]
 00652C40    mov         dword ptr [ebp-14],eax
 00652C43    mov         eax,dword ptr [ebp-8]
 00652C46    cmp         dword ptr [eax+10],80000000
>00652C4D    jne         00652C5A
 00652C4F    mov         edx,dword ptr [ebp-0C]
 00652C52    mov         eax,dword ptr [ebp-14]
 00652C55    call        dword ptr [ebp-18]
>00652C58    jmp         00652C69
 00652C5A    mov         ecx,dword ptr [ebp-0C]
 00652C5D    mov         eax,dword ptr [ebp-8]
 00652C60    mov         edx,dword ptr [eax+10]
 00652C63    mov         eax,dword ptr [ebp-14]
 00652C66    call        dword ptr [ebp-18]
 00652C69    mov         esp,ebp
 00652C6B    pop         ebp
 00652C6C    ret
*}
end;

//00652C70
procedure Finalization;
begin
{*
 00652C70    push        ebp
 00652C71    mov         ebp,esp
 00652C73    xor         eax,eax
 00652C75    push        ebp
 00652C76    push        652CB6
 00652C7B    push        dword ptr fs:[eax]
 00652C7E    mov         dword ptr fs:[eax],esp
 00652C81    inc         dword ptr ds:[6ECFD4]
>00652C87    jne         00652CA8
 00652C89    mov         eax,6E491C;gvar_006E491C
 00652C8E    call        @LStrClr
 00652C93    mov         eax,6E4914;^gvar_00651CF4
 00652C98    mov         ecx,2
 00652C9D    mov         edx,dword ptr ds:[668E7C];String
 00652CA3    call        @FinalizeArray
 00652CA8    xor         eax,eax
 00652CAA    pop         edx
 00652CAB    pop         ecx
 00652CAC    pop         ecx
 00652CAD    mov         dword ptr fs:[eax],edx
 00652CB0    push        652CBD
 00652CB5    ret
>00652CB6    jmp         @HandleFinally
>00652CBB    jmp         00652CB5
 00652CBD    pop         ebp
 00652CBE    ret
*}
end;

end.