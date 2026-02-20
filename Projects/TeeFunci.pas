//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TeeFunci;

interface

uses
  SysUtils, Classes;

type
  TAddTeeFunction = class(TTeeFunction)
  public
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double; virtual;//v3C//00555A14
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//00555A6C
  end;
  TManySeriesTeeFunction = class(TTeeFunction)
  public
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//00555ADC
    procedure CalculateValue; virtual; abstract;//v48//0066AC84
  end;
  TSubtractTeeFunction = class(TManySeriesTeeFunction)
  public
    function CalculateValue(const AResult:Double; const AValue:Double):Double; virtual;//v48//00555B80
  end;
  TMultiplyTeeFunction = class(TManySeriesTeeFunction)
  public
    function CalculateValue(const AResult:Double; const AValue:Double):Double; virtual;//v48//00555B9C
  end;
  TDivideTeeFunction = class(TManySeriesTeeFunction)
  public
    function CalculateValue(const AResult:Double; const AValue:Double):Double; virtual;//v48//00555BB8
  end;
  THighTeeFunction = class(TTeeFunction)
  public
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double; virtual;//v3C//00555BF4
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//00555C74
  end;
  TLowTeeFunction = class(TTeeFunction)
  public
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double; virtual;//v3C//00555D00
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//00555D80
  end;
  TAverageTeeFunction = class(TTeeFunction)
  public
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double; virtual;//v3C//00555E0C
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double; virtual;//v40//00555EB4
  end;
    procedure sub_0055532C;//0055532C
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;//00555A14
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;//00555A6C
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;//00555ADC
    function CalculateValue(const AResult:Double; const AValue:Double):Double;//00555B80
    function CalculateValue(const AResult:Double; const AValue:Double):Double;//00555B9C
    function CalculateValue(const AResult:Double; const AValue:Double):Double;//00555BB8
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;//00555BF4
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;//00555C74
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;//00555D00
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;//00555D80
    function Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;//00555E0C
    function CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;//00555EB4
    procedure Finalization;//00555F44

implementation

//0055532C
procedure sub_0055532C;
begin
{*
 0055532C    sub         dword ptr ds:[6ECC70],1
>00555333    jae         00555344
 00555335    mov         eax,5552A0;_NF__5B4
 0055533A    call        @InitResStringImports
 0055533F    call        RegisterStandardSeries
 00555344    ret
*}
end;

//00555A14
function TAddTeeFunction.Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;
begin
{*
 00555A14    push        ebp
 00555A15    mov         ebp,esp
 00555A17    add         esp,0FFFFFFF8
 00555A1A    push        ebx
 00555A1B    push        esi
 00555A1C    push        edi
 00555A1D    mov         ebx,ecx
 00555A1F    call        TTeeFunction.ValueList
 00555A24    mov         edi,eax
 00555A26    cmp         ebx,0FFFFFFFF
>00555A29    jne         00555A38
 00555A2B    mov         eax,edi
 00555A2D    call        TChartValueList.GetTotal
 00555A32    fstp        qword ptr [ebp-8]
 00555A35    wait
>00555A36    jmp         00555A5E
 00555A38    xor         eax,eax
 00555A3A    mov         dword ptr [ebp-8],eax
 00555A3D    mov         dword ptr [ebp-4],eax
 00555A40    mov         esi,ebx
 00555A42    mov         ebx,dword ptr [ebp+8]
 00555A45    sub         ebx,esi
>00555A47    jl          00555A5E
 00555A49    inc         ebx
 00555A4A    mov         edx,esi
 00555A4C    mov         eax,edi
 00555A4E    mov         ecx,dword ptr [eax]
 00555A50    call        dword ptr [ecx+0C]
 00555A53    fadd        qword ptr [ebp-8]
 00555A56    fstp        qword ptr [ebp-8]
 00555A59    wait
 00555A5A    inc         esi
 00555A5B    dec         ebx
>00555A5C    jne         00555A4A
 00555A5E    fld         qword ptr [ebp-8]
 00555A61    pop         edi
 00555A62    pop         esi
 00555A63    pop         ebx
 00555A64    pop         ecx
 00555A65    pop         ecx
 00555A66    pop         ebp
 00555A67    ret         4
*}
end;

//00555A6C
function TAddTeeFunction.CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 00555A6C    push        ebx
 00555A6D    push        esi
 00555A6E    push        edi
 00555A6F    push        ebp
 00555A70    add         esp,0FFFFFFF0
 00555A73    mov         ebp,ecx
 00555A75    mov         dword ptr [esp+4],edx
 00555A79    mov         dword ptr [esp],eax
 00555A7C    xor         eax,eax
 00555A7E    mov         dword ptr [esp+8],eax
 00555A82    mov         dword ptr [esp+0C],eax
 00555A86    mov         eax,dword ptr [esp+4]
 00555A8A    mov         esi,dword ptr [eax+8]
 00555A8D    dec         esi
 00555A8E    test        esi,esi
>00555A90    jl          00555ACD
 00555A92    inc         esi
 00555A93    xor         edi,edi
 00555A95    mov         edx,edi
 00555A97    mov         eax,dword ptr [esp+4]
 00555A9B    call        TList.Get
 00555AA0    mov         edx,eax
 00555AA2    mov         eax,dword ptr [esp]
 00555AA5    call        TTeeFunction.ValueList
 00555AAA    mov         ebx,eax
 00555AAC    mov         eax,ebx
 00555AAE    mov         edx,dword ptr [eax]
 00555AB0    call        dword ptr [edx+24]
 00555AB3    cmp         ebp,eax
>00555AB5    jge         00555AC9
 00555AB7    mov         edx,ebp
 00555AB9    mov         eax,ebx
 00555ABB    mov         ecx,dword ptr [eax]
 00555ABD    call        dword ptr [ecx+0C]
 00555AC0    fadd        qword ptr [esp+8]
 00555AC4    fstp        qword ptr [esp+8]
 00555AC8    wait
 00555AC9    inc         edi
 00555ACA    dec         esi
>00555ACB    jne         00555A95
 00555ACD    fld         qword ptr [esp+8]
 00555AD1    add         esp,10
 00555AD4    pop         ebp
 00555AD5    pop         edi
 00555AD6    pop         esi
 00555AD7    pop         ebx
 00555AD8    ret
*}
end;

//00555ADC
function TManySeriesTeeFunction.CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 00555ADC    push        ebx
 00555ADD    push        esi
 00555ADE    push        edi
 00555ADF    push        ebp
 00555AE0    add         esp,0FFFFFFE8
 00555AE3    mov         dword ptr [esp+8],ecx
 00555AE7    mov         dword ptr [esp+4],edx
 00555AEB    mov         dword ptr [esp],eax
 00555AEE    mov         bl,1
 00555AF0    xor         eax,eax
 00555AF2    mov         dword ptr [esp+10],eax
 00555AF6    mov         dword ptr [esp+14],eax
 00555AFA    mov         eax,dword ptr [esp+4]
 00555AFE    mov         esi,dword ptr [eax+8]
 00555B01    dec         esi
 00555B02    test        esi,esi
>00555B04    jl          00555B71
 00555B06    inc         esi
 00555B07    xor         edi,edi
 00555B09    mov         edx,edi
 00555B0B    mov         eax,dword ptr [esp+4]
 00555B0F    call        TList.Get
 00555B14    mov         edx,eax
 00555B16    mov         eax,dword ptr [esp]
 00555B19    call        TTeeFunction.ValueList
 00555B1E    mov         ebp,eax
 00555B20    mov         eax,ebp
 00555B22    mov         edx,dword ptr [eax]
 00555B24    call        dword ptr [edx+24]
 00555B27    cmp         eax,dword ptr [esp+8]
>00555B2B    jle         00555B6D
 00555B2D    test        bl,bl
>00555B2F    je          00555B45
 00555B31    mov         edx,dword ptr [esp+8]
 00555B35    mov         eax,ebp
 00555B37    mov         ecx,dword ptr [eax]
 00555B39    call        dword ptr [ecx+0C]
 00555B3C    fstp        qword ptr [esp+10]
 00555B40    wait
 00555B41    xor         ebx,ebx
>00555B43    jmp         00555B6D
 00555B45    push        dword ptr [esp+14]
 00555B49    push        dword ptr [esp+14]
 00555B4D    mov         edx,dword ptr [esp+10]
 00555B51    mov         eax,ebp
 00555B53    mov         ecx,dword ptr [eax]
 00555B55    call        dword ptr [ecx+0C]
 00555B58    add         esp,0FFFFFFF8
 00555B5B    fstp        qword ptr [esp]
 00555B5E    wait
 00555B5F    mov         eax,dword ptr [esp+10]
 00555B63    mov         edx,dword ptr [eax]
 00555B65    call        dword ptr [edx+48]
 00555B68    fstp        qword ptr [esp+10]
 00555B6C    wait
 00555B6D    inc         edi
 00555B6E    dec         esi
>00555B6F    jne         00555B09
 00555B71    fld         qword ptr [esp+10]
 00555B75    add         esp,18
 00555B78    pop         ebp
 00555B79    pop         edi
 00555B7A    pop         esi
 00555B7B    pop         ebx
 00555B7C    ret
*}
end;

//00555B80
function TSubtractTeeFunction.CalculateValue(const AResult:Double; const AValue:Double):Double;
begin
{*
 00555B80    push        ebp
 00555B81    mov         ebp,esp
 00555B83    add         esp,0FFFFFFF8
 00555B86    fld         qword ptr [ebp+10]
 00555B89    fsub        qword ptr [ebp+8]
 00555B8C    fstp        qword ptr [ebp-8]
 00555B8F    wait
 00555B90    fld         qword ptr [ebp-8]
 00555B93    pop         ecx
 00555B94    pop         ecx
 00555B95    pop         ebp
 00555B96    ret         10
*}
end;

//00555B9C
function TMultiplyTeeFunction.CalculateValue(const AResult:Double; const AValue:Double):Double;
begin
{*
 00555B9C    push        ebp
 00555B9D    mov         ebp,esp
 00555B9F    add         esp,0FFFFFFF8
 00555BA2    fld         qword ptr [ebp+10]
 00555BA5    fmul        qword ptr [ebp+8]
 00555BA8    fstp        qword ptr [ebp-8]
 00555BAB    wait
 00555BAC    fld         qword ptr [ebp-8]
 00555BAF    pop         ecx
 00555BB0    pop         ecx
 00555BB1    pop         ebp
 00555BB2    ret         10
*}
end;

//00555BB8
function TDivideTeeFunction.CalculateValue(const AResult:Double; const AValue:Double):Double;
begin
{*
 00555BB8    push        ebp
 00555BB9    mov         ebp,esp
 00555BBB    add         esp,0FFFFFFF8
 00555BBE    fld         qword ptr [ebp+8]
 00555BC1    fcomp       dword ptr ds:[555BF0]
 00555BC7    fnstsw      al
 00555BC9    sahf
>00555BCA    jne         00555BDA
 00555BCC    mov         eax,dword ptr [ebp+10]
 00555BCF    mov         dword ptr [ebp-8],eax
 00555BD2    mov         eax,dword ptr [ebp+14]
 00555BD5    mov         dword ptr [ebp-4],eax
>00555BD8    jmp         00555BE4
 00555BDA    fld         qword ptr [ebp+10]
 00555BDD    fdiv        qword ptr [ebp+8]
 00555BE0    fstp        qword ptr [ebp-8]
 00555BE3    wait
 00555BE4    fld         qword ptr [ebp-8]
 00555BE7    pop         ecx
 00555BE8    pop         ecx
 00555BE9    pop         ebp
 00555BEA    ret         10
*}
end;

//00555BF4
function THighTeeFunction.Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;
begin
{*
 00555BF4    push        ebp
 00555BF5    mov         ebp,esp
 00555BF7    add         esp,0FFFFFFE8
 00555BFA    push        ebx
 00555BFB    push        esi
 00555BFC    push        edi
 00555BFD    mov         dword ptr [ebp-4],ecx
 00555C00    call        TTeeFunction.ValueList
 00555C05    mov         edi,eax
 00555C07    cmp         dword ptr [ebp-4],0FFFFFFFF
>00555C0B    jne         00555C1A
 00555C0D    mov         eax,edi
 00555C0F    call        TChartValueList.GetMaxValue
 00555C14    fstp        qword ptr [ebp-10]
 00555C17    wait
>00555C18    jmp         00555C68
 00555C1A    xor         eax,eax
 00555C1C    mov         dword ptr [ebp-10],eax
 00555C1F    mov         dword ptr [ebp-0C],eax
 00555C22    mov         ebx,dword ptr [ebp-4]
 00555C25    mov         esi,dword ptr [ebp+8]
 00555C28    sub         esi,ebx
>00555C2A    jl          00555C68
 00555C2C    inc         esi
 00555C2D    mov         edx,ebx
 00555C2F    mov         eax,edi
 00555C31    mov         ecx,dword ptr [eax]
 00555C33    call        dword ptr [ecx+0C]
 00555C36    fstp        qword ptr [ebp-18]
 00555C39    wait
 00555C3A    cmp         ebx,dword ptr [ebp-4]
>00555C3D    jne         00555C4D
 00555C3F    mov         eax,dword ptr [ebp-18]
 00555C42    mov         dword ptr [ebp-10],eax
 00555C45    mov         eax,dword ptr [ebp-14]
 00555C48    mov         dword ptr [ebp-0C],eax
>00555C4B    jmp         00555C64
 00555C4D    fld         qword ptr [ebp-18]
 00555C50    fcomp       qword ptr [ebp-10]
 00555C53    fnstsw      al
 00555C55    sahf
>00555C56    jbe         00555C64
 00555C58    mov         eax,dword ptr [ebp-18]
 00555C5B    mov         dword ptr [ebp-10],eax
 00555C5E    mov         eax,dword ptr [ebp-14]
 00555C61    mov         dword ptr [ebp-0C],eax
 00555C64    inc         ebx
 00555C65    dec         esi
>00555C66    jne         00555C2D
 00555C68    fld         qword ptr [ebp-10]
 00555C6B    pop         edi
 00555C6C    pop         esi
 00555C6D    pop         ebx
 00555C6E    mov         esp,ebp
 00555C70    pop         ebp
 00555C71    ret         4
*}
end;

//00555C74
function THighTeeFunction.CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 00555C74    push        ebx
 00555C75    push        esi
 00555C76    push        edi
 00555C77    push        ebp
 00555C78    add         esp,0FFFFFFE8
 00555C7B    mov         ebp,ecx
 00555C7D    mov         dword ptr [esp+4],edx
 00555C81    mov         dword ptr [esp],eax
 00555C84    xor         eax,eax
 00555C86    mov         dword ptr [esp+8],eax
 00555C8A    mov         dword ptr [esp+0C],eax
 00555C8E    mov         eax,dword ptr [esp+4]
 00555C92    mov         edi,dword ptr [eax+8]
 00555C95    dec         edi
 00555C96    test        edi,edi
>00555C98    jl          00555CF2
 00555C9A    inc         edi
 00555C9B    xor         ebx,ebx
 00555C9D    mov         edx,ebx
 00555C9F    mov         eax,dword ptr [esp+4]
 00555CA3    call        TList.Get
 00555CA8    mov         edx,eax
 00555CAA    mov         eax,dword ptr [esp]
 00555CAD    call        TTeeFunction.ValueList
 00555CB2    mov         esi,eax
 00555CB4    mov         eax,esi
 00555CB6    mov         edx,dword ptr [eax]
 00555CB8    call        dword ptr [edx+24]
 00555CBB    cmp         ebp,eax
>00555CBD    jge         00555CEE
 00555CBF    mov         edx,ebp
 00555CC1    mov         eax,esi
 00555CC3    mov         ecx,dword ptr [eax]
 00555CC5    call        dword ptr [ecx+0C]
 00555CC8    fstp        qword ptr [esp+10]
 00555CCC    wait
 00555CCD    test        ebx,ebx
>00555CCF    je          00555CDE
 00555CD1    fld         qword ptr [esp+10]
 00555CD5    fcomp       qword ptr [esp+8]
 00555CD9    fnstsw      al
 00555CDB    sahf
>00555CDC    jbe         00555CEE
 00555CDE    mov         eax,dword ptr [esp+10]
 00555CE2    mov         dword ptr [esp+8],eax
 00555CE6    mov         eax,dword ptr [esp+14]
 00555CEA    mov         dword ptr [esp+0C],eax
 00555CEE    inc         ebx
 00555CEF    dec         edi
>00555CF0    jne         00555C9D
 00555CF2    fld         qword ptr [esp+8]
 00555CF6    add         esp,18
 00555CF9    pop         ebp
 00555CFA    pop         edi
 00555CFB    pop         esi
 00555CFC    pop         ebx
 00555CFD    ret
*}
end;

//00555D00
function TLowTeeFunction.Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;
begin
{*
 00555D00    push        ebp
 00555D01    mov         ebp,esp
 00555D03    add         esp,0FFFFFFE8
 00555D06    push        ebx
 00555D07    push        esi
 00555D08    push        edi
 00555D09    mov         dword ptr [ebp-4],ecx
 00555D0C    call        TTeeFunction.ValueList
 00555D11    mov         edi,eax
 00555D13    cmp         dword ptr [ebp-4],0FFFFFFFF
>00555D17    jne         00555D26
 00555D19    mov         eax,edi
 00555D1B    call        TChartValueList.GetMinValue
 00555D20    fstp        qword ptr [ebp-10]
 00555D23    wait
>00555D24    jmp         00555D74
 00555D26    xor         eax,eax
 00555D28    mov         dword ptr [ebp-10],eax
 00555D2B    mov         dword ptr [ebp-0C],eax
 00555D2E    mov         ebx,dword ptr [ebp-4]
 00555D31    mov         esi,dword ptr [ebp+8]
 00555D34    sub         esi,ebx
>00555D36    jl          00555D74
 00555D38    inc         esi
 00555D39    mov         edx,ebx
 00555D3B    mov         eax,edi
 00555D3D    mov         ecx,dword ptr [eax]
 00555D3F    call        dword ptr [ecx+0C]
 00555D42    fstp        qword ptr [ebp-18]
 00555D45    wait
 00555D46    cmp         ebx,dword ptr [ebp-4]
>00555D49    jne         00555D59
 00555D4B    mov         eax,dword ptr [ebp-18]
 00555D4E    mov         dword ptr [ebp-10],eax
 00555D51    mov         eax,dword ptr [ebp-14]
 00555D54    mov         dword ptr [ebp-0C],eax
>00555D57    jmp         00555D70
 00555D59    fld         qword ptr [ebp-18]
 00555D5C    fcomp       qword ptr [ebp-10]
 00555D5F    fnstsw      al
 00555D61    sahf
>00555D62    jae         00555D70
 00555D64    mov         eax,dword ptr [ebp-18]
 00555D67    mov         dword ptr [ebp-10],eax
 00555D6A    mov         eax,dword ptr [ebp-14]
 00555D6D    mov         dword ptr [ebp-0C],eax
 00555D70    inc         ebx
 00555D71    dec         esi
>00555D72    jne         00555D39
 00555D74    fld         qword ptr [ebp-10]
 00555D77    pop         edi
 00555D78    pop         esi
 00555D79    pop         ebx
 00555D7A    mov         esp,ebp
 00555D7C    pop         ebp
 00555D7D    ret         4
*}
end;

//00555D80
function TLowTeeFunction.CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 00555D80    push        ebx
 00555D81    push        esi
 00555D82    push        edi
 00555D83    push        ebp
 00555D84    add         esp,0FFFFFFE8
 00555D87    mov         ebp,ecx
 00555D89    mov         dword ptr [esp+4],edx
 00555D8D    mov         dword ptr [esp],eax
 00555D90    xor         eax,eax
 00555D92    mov         dword ptr [esp+8],eax
 00555D96    mov         dword ptr [esp+0C],eax
 00555D9A    mov         eax,dword ptr [esp+4]
 00555D9E    mov         edi,dword ptr [eax+8]
 00555DA1    dec         edi
 00555DA2    test        edi,edi
>00555DA4    jl          00555DFE
 00555DA6    inc         edi
 00555DA7    xor         ebx,ebx
 00555DA9    mov         edx,ebx
 00555DAB    mov         eax,dword ptr [esp+4]
 00555DAF    call        TList.Get
 00555DB4    mov         edx,eax
 00555DB6    mov         eax,dword ptr [esp]
 00555DB9    call        TTeeFunction.ValueList
 00555DBE    mov         esi,eax
 00555DC0    mov         eax,esi
 00555DC2    mov         edx,dword ptr [eax]
 00555DC4    call        dword ptr [edx+24]
 00555DC7    cmp         ebp,eax
>00555DC9    jge         00555DFA
 00555DCB    mov         edx,ebp
 00555DCD    mov         eax,esi
 00555DCF    mov         ecx,dword ptr [eax]
 00555DD1    call        dword ptr [ecx+0C]
 00555DD4    fstp        qword ptr [esp+10]
 00555DD8    wait
 00555DD9    test        ebx,ebx
>00555DDB    je          00555DEA
 00555DDD    fld         qword ptr [esp+10]
 00555DE1    fcomp       qword ptr [esp+8]
 00555DE5    fnstsw      al
 00555DE7    sahf
>00555DE8    jae         00555DFA
 00555DEA    mov         eax,dword ptr [esp+10]
 00555DEE    mov         dword ptr [esp+8],eax
 00555DF2    mov         eax,dword ptr [esp+14]
 00555DF6    mov         dword ptr [esp+0C],eax
 00555DFA    inc         ebx
 00555DFB    dec         edi
>00555DFC    jne         00555DA9
 00555DFE    fld         qword ptr [esp+8]
 00555E02    add         esp,18
 00555E05    pop         ebp
 00555E06    pop         edi
 00555E07    pop         esi
 00555E08    pop         ebx
 00555E09    ret
*}
end;

//00555E0C
function TAverageTeeFunction.Calculate(SourceSeries:TChartSeries; FirstIndex:Integer; LastIndex:Integer):Double;
begin
{*
 00555E0C    push        ebp
 00555E0D    mov         ebp,esp
 00555E0F    add         esp,0FFFFFFE4
 00555E12    push        ebx
 00555E13    push        esi
 00555E14    push        edi
 00555E15    mov         dword ptr [ebp-4],ecx
 00555E18    mov         esi,edx
 00555E1A    mov         ebx,eax
 00555E1C    cmp         dword ptr [ebp-4],0FFFFFFFF
>00555E20    jne         00555E5F
 00555E22    mov         eax,esi
 00555E24    call        TChartSeries.Count
 00555E29    test        eax,eax
>00555E2B    jle         00555E55
 00555E2D    mov         edx,esi
 00555E2F    mov         eax,ebx
 00555E31    call        TTeeFunction.ValueList
 00555E36    call        TChartValueList.GetTotal
 00555E3B    fstp        qword ptr [ebp-18]
 00555E3E    wait
 00555E3F    mov         eax,esi
 00555E41    call        TChartSeries.Count
 00555E46    mov         dword ptr [ebp-1C],eax
 00555E49    fild        dword ptr [ebp-1C]
 00555E4C    fdivr       qword ptr [ebp-18]
 00555E4F    fstp        qword ptr [ebp-10]
 00555E52    wait
>00555E53    jmp         00555EA5
 00555E55    xor         eax,eax
 00555E57    mov         dword ptr [ebp-10],eax
 00555E5A    mov         dword ptr [ebp-0C],eax
>00555E5D    jmp         00555EA5
 00555E5F    xor         eax,eax
 00555E61    mov         dword ptr [ebp-10],eax
 00555E64    mov         dword ptr [ebp-0C],eax
 00555E67    mov         edx,esi
 00555E69    mov         eax,ebx
 00555E6B    call        TTeeFunction.ValueList
 00555E70    mov         edi,eax
 00555E72    mov         esi,dword ptr [ebp-4]
 00555E75    mov         ebx,dword ptr [ebp+8]
 00555E78    sub         ebx,esi
>00555E7A    jl          00555E91
 00555E7C    inc         ebx
 00555E7D    mov         edx,esi
 00555E7F    mov         eax,edi
 00555E81    mov         ecx,dword ptr [eax]
 00555E83    call        dword ptr [ecx+0C]
 00555E86    fadd        qword ptr [ebp-10]
 00555E89    fstp        qword ptr [ebp-10]
 00555E8C    wait
 00555E8D    inc         esi
 00555E8E    dec         ebx
>00555E8F    jne         00555E7D
 00555E91    mov         eax,dword ptr [ebp+8]
 00555E94    sub         eax,dword ptr [ebp-4]
 00555E97    inc         eax
 00555E98    mov         dword ptr [ebp-1C],eax
 00555E9B    fild        dword ptr [ebp-1C]
 00555E9E    fdivr       qword ptr [ebp-10]
 00555EA1    fstp        qword ptr [ebp-10]
 00555EA4    wait
 00555EA5    fld         qword ptr [ebp-10]
 00555EA8    pop         edi
 00555EA9    pop         esi
 00555EAA    pop         ebx
 00555EAB    mov         esp,ebp
 00555EAD    pop         ebp
 00555EAE    ret         4
*}
end;

//00555EB4
function TAverageTeeFunction.CalculateMany(SourceSeriesList:TList; ValueIndex:Integer):Double;
begin
{*
 00555EB4    push        ebx
 00555EB5    push        esi
 00555EB6    push        edi
 00555EB7    push        ebp
 00555EB8    add         esp,0FFFFFFEC
 00555EBB    mov         dword ptr [esp+4],ecx
 00555EBF    mov         ebp,edx
 00555EC1    mov         dword ptr [esp],eax
 00555EC4    xor         eax,eax
 00555EC6    mov         dword ptr [esp+8],eax
 00555ECA    mov         dword ptr [esp+0C],eax
 00555ECE    mov         eax,dword ptr [ebp+8]
 00555ED1    test        eax,eax
>00555ED3    jle         00555F37
 00555ED5    xor         edx,edx
 00555ED7    mov         dword ptr [esp+10],edx
 00555EDB    mov         esi,eax
 00555EDD    dec         esi
 00555EDE    test        esi,esi
>00555EE0    jl          00555F23
 00555EE2    inc         esi
 00555EE3    xor         edi,edi
 00555EE5    mov         edx,edi
 00555EE7    mov         eax,ebp
 00555EE9    call        TList.Get
 00555EEE    mov         edx,eax
 00555EF0    mov         eax,dword ptr [esp]
 00555EF3    call        TTeeFunction.ValueList
 00555EF8    mov         ebx,eax
 00555EFA    mov         eax,ebx
 00555EFC    mov         edx,dword ptr [eax]
 00555EFE    call        dword ptr [edx+24]
 00555F01    cmp         eax,dword ptr [esp+4]
>00555F05    jle         00555F1F
 00555F07    inc         dword ptr [esp+10]
 00555F0B    mov         edx,dword ptr [esp+4]
 00555F0F    mov         eax,ebx
 00555F11    mov         ecx,dword ptr [eax]
 00555F13    call        dword ptr [ecx+0C]
 00555F16    fadd        qword ptr [esp+8]
 00555F1A    fstp        qword ptr [esp+8]
 00555F1E    wait
 00555F1F    inc         edi
 00555F20    dec         esi
>00555F21    jne         00555EE5
 00555F23    cmp         dword ptr [esp+10],0
>00555F28    jle         00555F37
 00555F2A    fild        dword ptr [esp+10]
 00555F2E    fdivr       qword ptr [esp+8]
 00555F32    fstp        qword ptr [esp+8]
 00555F36    wait
 00555F37    fld         qword ptr [esp+8]
 00555F3B    add         esp,14
 00555F3E    pop         ebp
 00555F3F    pop         edi
 00555F40    pop         esi
 00555F41    pop         ebx
 00555F42    ret
*}
end;

//00555F44
procedure Finalization;
begin
{*
 00555F44    push        ebp
 00555F45    mov         ebp,esp
 00555F47    xor         eax,eax
 00555F49    push        ebp
 00555F4A    push        555F69
 00555F4F    push        dword ptr fs:[eax]
 00555F52    mov         dword ptr fs:[eax],esp
 00555F55    inc         dword ptr ds:[6ECC74]
 00555F5B    xor         eax,eax
 00555F5D    pop         edx
 00555F5E    pop         ecx
 00555F5F    pop         ecx
 00555F60    mov         dword ptr fs:[eax],edx
 00555F63    push        555F70
 00555F68    ret
>00555F69    jmp         @HandleFinally
>00555F6E    jmp         00555F68
 00555F70    pop         ebp
 00555F71    ret
*}
end;

end.