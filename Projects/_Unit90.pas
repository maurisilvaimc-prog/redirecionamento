//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit90;

interface

uses
  SysUtils, Classes;

type
  EOleError = class(Exception)
  end;
  EOleSysError = class(EOleError)
    //constructor Create(?:?; ?:?);//006552D4
  end;
  EOleException = class(EOleSysError)
  public
    f10:String;//f10
    f14:String;//f14
    //constructor Create(?:?; ?:?; ?:?; ?:?);//006553B0
  end;
    procedure sub_006550F4;//006550F4
    //procedure sub_00655268(?:?; ?:?);//00655268
    //procedure sub_0065545C(?:?);//0065545C
    //procedure sub_00655480(?:?);//00655480
    procedure sub_006554A0;//006554A0
    //procedure sub_006556C0(?:?; ?:?; ?:?; ?:?; ?:?);//006556C0
    //procedure sub_00655A7C(?:?);//00655A7C
    //procedure sub_00655AB0(?:?; ?:?; ?:?; ?:?);//00655AB0
    procedure sub_00655BB4;//00655BB4
    //procedure sub_00655C7C(?:?; ?:Byte; ?:?; ?:?);//00655C7C
    //procedure sub_00655D74(?:?; ?:Byte);//00655D74
    //procedure sub_00655D98(?:?);//00655D98
    //procedure sub_00655DB4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00655DB4

implementation

//006550F4
procedure sub_006550F4;
begin
{*
 006550F4    sub         dword ptr ds:[6ECFEC],1
 006550FB    ret
*}
end;

//00655268
{*procedure sub_00655268(?:?; ?:?);
begin
 00655268    push        ebp
 00655269    mov         ebp,esp
 0065526B    add         esp,0FFFFFFF4
 0065526E    mov         dword ptr [ebp-8],edx
 00655271    mov         dword ptr [ebp-4],eax
 00655274    mov         eax,dword ptr [ebp-8]
 00655277    mov         edx,dword ptr [ebp-4]
 0065527A    call        @LStrAsg
 0065527F    mov         eax,dword ptr [ebp-8]
 00655282    mov         eax,dword ptr [eax]
 00655284    call        00658280
 00655289    mov         dword ptr [ebp-0C],eax
>0065528C    jmp         006552B2
 0065528E    mov         eax,dword ptr [ebp-8]
 00655291    mov         eax,dword ptr [eax]
 00655293    call        @LStrToPChar
 00655298    mov         edx,dword ptr [ebp-0C]
 0065529B    sub         edx,eax
 0065529D    mov         eax,dword ptr [ebp-8]
 006552A0    call        @LStrSetLength
 006552A5    mov         eax,dword ptr [ebp-8]
 006552A8    mov         eax,dword ptr [eax]
 006552AA    call        00658280
 006552AF    mov         dword ptr [ebp-0C],eax
 006552B2    mov         eax,dword ptr [ebp-8]
 006552B5    mov         eax,dword ptr [eax]
 006552B7    call        @LStrLen
 006552BC    test        eax,eax
>006552BE    jle         006552CD
 006552C0    mov         eax,dword ptr [ebp-0C]
 006552C3    mov         al,byte ptr [eax]
 006552C5    sub         al,21
>006552C7    jb          0065528E
 006552C9    sub         al,0D
>006552CB    je          0065528E
 006552CD    mov         esp,ebp
 006552CF    pop         ebp
 006552D0    ret
end;*}

//006552D4
{*constructor EOleSysError.Create(?:?; ?:?);
begin
 006552D4    push        ebp
 006552D5    mov         ebp,esp
 006552D7    add         esp,0FFFFFFE4
 006552DA    push        ebx
 006552DB    xor         ebx,ebx
 006552DD    mov         dword ptr [ebp-14],ebx
 006552E0    mov         dword ptr [ebp-10],ebx
 006552E3    test        dl,dl
>006552E5    je          006552EF
 006552E7    add         esp,0FFFFFFF0
 006552EA    call        @ClassCreate
 006552EF    mov         dword ptr [ebp-0C],ecx
 006552F2    mov         byte ptr [ebp-5],dl
 006552F5    mov         dword ptr [ebp-4],eax
 006552F8    xor         eax,eax
 006552FA    push        ebp
 006552FB    push        655384
 00655300    push        dword ptr fs:[eax]
 00655303    mov         dword ptr fs:[eax],esp
 00655306    lea         eax,[ebp-10]
 00655309    mov         edx,dword ptr [ebp-0C]
 0065530C    call        @LStrLAsg
 00655311    cmp         dword ptr [ebp-10],0
>00655315    jne         0065534F
 00655317    lea         edx,[ebp-10]
 0065531A    mov         eax,dword ptr [ebp+0C]
 0065531D    call        0065BBAC
 00655322    cmp         dword ptr [ebp-10],0
>00655326    jne         0065534F
 00655328    push        0
 0065532A    lea         edx,[ebp-14]
 0065532D    mov         eax,[006EA370];^gvar_006560CC
 00655332    call        LoadResString
 00655337    mov         edx,dword ptr [ebp-14]
 0065533A    mov         eax,dword ptr [ebp+0C]
 0065533D    mov         dword ptr [ebp-1C],eax
 00655340    mov         byte ptr [ebp-18],0
 00655344    lea         ecx,[ebp-1C]
 00655347    lea         eax,[ebp-10]
 0065534A    call        FmtStr
 0065534F    mov         eax,dword ptr [ebp+8]
 00655352    push        eax
 00655353    mov         ecx,dword ptr [ebp-10]
 00655356    xor         edx,edx
 00655358    mov         eax,dword ptr [ebp-4]
 0065535B    call        0065C6B4
 00655360    mov         eax,dword ptr [ebp-4]
 00655363    mov         edx,dword ptr [ebp+0C]
 00655366    mov         dword ptr [eax+0C],edx
 00655369    xor         eax,eax
 0065536B    pop         edx
 0065536C    pop         ecx
 0065536D    pop         ecx
 0065536E    mov         dword ptr fs:[eax],edx
 00655371    push        65538B
 00655376    lea         eax,[ebp-14]
 00655379    mov         edx,2
 0065537E    call        @LStrArrayClr
 00655383    ret
>00655384    jmp         @HandleFinally
>00655389    jmp         00655376
 0065538B    mov         eax,dword ptr [ebp-4]
 0065538E    cmp         byte ptr [ebp-5],0
>00655392    je          006553A3
 00655394    call        @AfterConstruction
 00655399    pop         dword ptr fs:[0]
 006553A0    add         esp,0C
 006553A3    mov         eax,dword ptr [ebp-4]
 006553A6    pop         ebx
 006553A7    mov         esp,ebp
 006553A9    pop         ebp
 006553AA    ret         8
end;*}

//006553B0
{*constructor EOleException.Create(?:?; ?:?; ?:?; ?:?);
begin
 006553B0    push        ebp
 006553B1    mov         ebp,esp
 006553B3    add         esp,0FFFFFFF0
 006553B6    push        ebx
 006553B7    xor         ebx,ebx
 006553B9    mov         dword ptr [ebp-10],ebx
 006553BC    test        dl,dl
>006553BE    je          006553C8
 006553C0    add         esp,0FFFFFFF0
 006553C3    call        @ClassCreate
 006553C8    mov         dword ptr [ebp-0C],ecx
 006553CB    mov         byte ptr [ebp-5],dl
 006553CE    mov         dword ptr [ebp-4],eax
 006553D1    xor         eax,eax
 006553D3    push        ebp
 006553D4    push        655431
 006553D9    push        dword ptr fs:[eax]
 006553DC    mov         dword ptr fs:[eax],esp
 006553DF    mov         eax,dword ptr [ebp+14]
 006553E2    push        eax
 006553E3    mov         eax,dword ptr [ebp+8]
 006553E6    push        eax
 006553E7    lea         edx,[ebp-10]
 006553EA    mov         eax,dword ptr [ebp-0C]
 006553ED    call        00655268
 006553F2    mov         ecx,dword ptr [ebp-10]
 006553F5    xor         edx,edx
 006553F7    mov         eax,dword ptr [ebp-4]
 006553FA    call        EOleSysError.Create
 006553FF    mov         eax,dword ptr [ebp-4]
 00655402    add         eax,10
 00655405    mov         edx,dword ptr [ebp+10]
 00655408    call        @LStrAsg
 0065540D    mov         eax,dword ptr [ebp-4]
 00655410    add         eax,14
 00655413    mov         edx,dword ptr [ebp+0C]
 00655416    call        @LStrAsg
 0065541B    xor         eax,eax
 0065541D    pop         edx
 0065541E    pop         ecx
 0065541F    pop         ecx
 00655420    mov         dword ptr fs:[eax],edx
 00655423    push        655438
 00655428    lea         eax,[ebp-10]
 0065542B    call        @LStrClr
 00655430    ret
>00655431    jmp         @HandleFinally
>00655436    jmp         00655428
 00655438    mov         eax,dword ptr [ebp-4]
 0065543B    cmp         byte ptr [ebp-5],0
>0065543F    je          00655450
 00655441    call        @AfterConstruction
 00655446    pop         dword ptr fs:[0]
 0065544D    add         esp,0C
 00655450    mov         eax,dword ptr [ebp-4]
 00655453    pop         ebx
 00655454    mov         esp,ebp
 00655456    pop         ebp
 00655457    ret         10
end;*}

//0065545C
{*procedure sub_0065545C(?:?);
begin
 0065545C    push        ebp
 0065545D    mov         ebp,esp
 0065545F    push        ecx
 00655460    mov         dword ptr [ebp-4],eax
 00655463    mov         eax,dword ptr [ebp-4]
 00655466    push        eax
 00655467    push        0
 00655469    xor         ecx,ecx
 0065546B    mov         dl,1
 0065546D    mov         eax,[00655154];EOleSysError
 00655472    call        EOleSysError.Create;EOleSysError.Create
 00655477    call        @RaiseExcept
 0065547C    pop         ecx
 0065547D    pop         ebp
 0065547E    ret
end;*}

//00655480
{*procedure sub_00655480(?:?);
begin
 00655480    push        ebp
 00655481    mov         ebp,esp
 00655483    push        ecx
 00655484    mov         dword ptr [ebp-4],eax
 00655487    mov         eax,dword ptr [ebp-4]
 0065548A    call        0063FBA4
 0065548F    test        al,al
>00655491    jne         0065549B
 00655493    mov         eax,dword ptr [ebp-4]
 00655496    call        0065545C
 0065549B    pop         ecx
 0065549C    pop         ebp
 0065549D    ret
end;*}

//006554A0
procedure sub_006554A0;
begin
{*
 006554A0    push        ebp
 006554A1    mov         ebp,esp
 006554A3    push        ecx
 006554A4    push        65552C;'ole32.dll'
 006554A9    call        KERNEL32.GetModuleHandleA
 006554AE    mov         dword ptr [ebp-4],eax
 006554B1    cmp         dword ptr [ebp-4],0
>006554B5    je          00655529
 006554B7    push        655538
 006554BC    mov         eax,dword ptr [ebp-4]
 006554BF    push        eax
 006554C0    call        KERNEL32.GetProcAddress
 006554C5    mov         [006E4950],eax;gvar_006E4950
 006554CA    push        65554C
 006554CF    mov         eax,dword ptr [ebp-4]
 006554D2    push        eax
 006554D3    call        KERNEL32.GetProcAddress
 006554D8    mov         [006E4954],eax;gvar_006E4954
 006554DD    push        65555C
 006554E2    mov         eax,dword ptr [ebp-4]
 006554E5    push        eax
 006554E6    call        KERNEL32.GetProcAddress
 006554EB    mov         [006E4958],eax;gvar_006E4958
 006554F0    push        655574
 006554F5    mov         eax,dword ptr [ebp-4]
 006554F8    push        eax
 006554F9    call        KERNEL32.GetProcAddress
 006554FE    mov         [006E495C],eax;gvar_006E495C
 00655503    push        65558C
 00655508    mov         eax,dword ptr [ebp-4]
 0065550B    push        eax
 0065550C    call        KERNEL32.GetProcAddress
 00655511    mov         [006E4960],eax;gvar_006E4960
 00655516    push        6555A4
 0065551B    mov         eax,dword ptr [ebp-4]
 0065551E    push        eax
 0065551F    call        KERNEL32.GetProcAddress
 00655524    mov         [006E4964],eax;gvar_006E4964
 00655529    pop         ecx
 0065552A    pop         ebp
 0065552B    ret
*}
end;

//006556C0
{*procedure sub_006556C0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 006556C0    push        ebp
 006556C1    mov         ebp,esp
 006556C3    add         esp,0FFFFF984
 006556C9    mov         dword ptr [ebp-0C],ecx
 006556CC    mov         dword ptr [ebp-8],edx
 006556CF    mov         dword ptr [ebp-4],eax
 006556D2    lea         eax,[ebp-7C]
 006556D5    mov         edx,dword ptr ds:[63F598];tagEXCEPINFO
 006556DB    call        @InitializeRecord
 006556E0    xor         eax,eax
 006556E2    push        ebp
 006556E3    push        655A6F
 006556E8    push        dword ptr fs:[eax]
 006556EB    mov         dword ptr fs:[eax],esp
 006556EE    xor         eax,eax
 006556F0    mov         dword ptr [ebp-24],eax
 006556F3    xor         eax,eax
 006556F5    push        ebp
 006556F6    push        655A4C
 006556FB    push        dword ptr fs:[eax]
 006556FE    mov         dword ptr fs:[eax],esp
 00655701    mov         eax,dword ptr [ebp-8]
 00655704    movzx       eax,byte ptr [eax+1]
 00655708    mov         dword ptr [ebp-20],eax
 0065570B    cmp         dword ptr [ebp-20],40
>0065570F    jle         00655728
 00655711    mov         ecx,dword ptr ds:[6EA37C];^gvar_006560E4
 00655717    mov         dl,1
 00655719    mov         eax,[006551B0];EOleException
 0065571E    call        Exception.Create;EOleException.Create
 00655723    call        @RaiseExcept
 00655728    cmp         dword ptr [ebp-20],0
>0065572C    je          00655925
 00655732    mov         eax,dword ptr [ebp+0C]
 00655735    mov         dword ptr [ebp-38],eax
 00655738    mov         eax,dword ptr [ebp-20]
 0065573B    add         eax,eax
 0065573D    lea         eax,[ebp+eax*8-67C]
 00655744    mov         dword ptr [ebp-3C],eax
 00655747    xor         eax,eax
 00655749    mov         dword ptr [ebp-10],eax
 0065574C    sub         dword ptr [ebp-3C],10
 00655750    mov         eax,dword ptr [ebp-8]
 00655753    mov         edx,dword ptr [ebp-10]
 00655756    mov         al,byte ptr [eax+edx+3]
 0065575A    and         al,7F
 0065575C    and         eax,0FF
 00655761    mov         dword ptr [ebp-1C],eax
 00655764    mov         eax,dword ptr [ebp-8]
 00655767    mov         edx,dword ptr [ebp-10]
 0065576A    mov         al,byte ptr [eax+edx+3]
 0065576E    and         al,80
 00655770    mov         byte ptr [ebp-31],al
 00655773    cmp         dword ptr [ebp-1C],0A
>00655777    jne         00655791
 00655779    mov         eax,dword ptr [ebp-3C]
 0065577C    mov         dword ptr [eax],0A
 00655782    mov         eax,dword ptr [ebp-3C]
 00655785    mov         dword ptr [eax+8],80020004
>0065578C    jmp         00655916
 00655791    cmp         dword ptr [ebp-1C],48
>00655795    jne         0065580D
 00655797    mov         eax,dword ptr [ebp-24]
 0065579A    lea         eax,[ebp+eax*8-27C]
 006557A1    mov         dword ptr [ebp-44],eax
 006557A4    cmp         byte ptr [ebp-31],0
>006557A8    je          006557DA
 006557AA    mov         eax,dword ptr [ebp-38]
 006557AD    mov         eax,dword ptr [eax]
 006557AF    mov         eax,dword ptr [eax]
 006557B1    call        StringToOleStr
 006557B6    mov         edx,dword ptr [ebp-44]
 006557B9    mov         dword ptr [edx],eax
 006557BB    mov         eax,dword ptr [ebp-38]
 006557BE    mov         eax,dword ptr [eax]
 006557C0    mov         edx,dword ptr [ebp-44]
 006557C3    mov         dword ptr [edx+4],eax
 006557C6    mov         eax,dword ptr [ebp-3C]
 006557C9    mov         dword ptr [eax],4008
 006557CF    mov         eax,dword ptr [ebp-44]
 006557D2    mov         edx,dword ptr [ebp-3C]
 006557D5    mov         dword ptr [edx+8],eax
>006557D8    jmp         00655805
 006557DA    mov         eax,dword ptr [ebp-38]
 006557DD    mov         eax,dword ptr [eax]
 006557DF    call        StringToOleStr
 006557E4    mov         edx,dword ptr [ebp-44]
 006557E7    mov         dword ptr [edx],eax
 006557E9    mov         eax,dword ptr [ebp-44]
 006557EC    xor         edx,edx
 006557EE    mov         dword ptr [eax+4],edx
 006557F1    mov         eax,dword ptr [ebp-3C]
 006557F4    mov         dword ptr [eax],8
 006557FA    mov         eax,dword ptr [ebp-44]
 006557FD    mov         eax,dword ptr [eax]
 006557FF    mov         edx,dword ptr [ebp-3C]
 00655802    mov         dword ptr [edx+8],eax
 00655805    inc         dword ptr [ebp-24]
>00655808    jmp         00655912
 0065580D    cmp         byte ptr [ebp-31],0
>00655811    je          00655858
 00655813    cmp         dword ptr [ebp-1C],0C
>00655817    jne         0065583B
 00655819    mov         eax,dword ptr [ebp-38]
 0065581C    mov         eax,dword ptr [eax]
 0065581E    cmp         word ptr [eax],100
>00655823    jne         0065583B
 00655825    mov         eax,dword ptr [ebp-38]
 00655828    mov         eax,dword ptr [eax]
 0065582A    mov         edx,eax
 0065582C    mov         eax,dword ptr [ebp-38]
 0065582F    mov         eax,dword ptr [eax]
 00655831    mov         ecx,8
 00655836    call        0066D524
 0065583B    mov         eax,dword ptr [ebp-1C]
 0065583E    or          eax,4000
 00655843    mov         edx,dword ptr [ebp-3C]
 00655846    mov         dword ptr [edx],eax
 00655848    mov         eax,dword ptr [ebp-38]
 0065584B    mov         eax,dword ptr [eax]
 0065584D    mov         edx,dword ptr [ebp-3C]
 00655850    mov         dword ptr [edx+8],eax
>00655853    jmp         00655912
 00655858    cmp         dword ptr [ebp-1C],0C
>0065585C    jne         006558E4
 00655862    mov         eax,dword ptr [ebp-38]
 00655865    cmp         word ptr [eax],100
>0065586A    jne         006558AA
 0065586C    mov         eax,dword ptr [ebp-24]
 0065586F    lea         eax,[ebp+eax*8-27C]
 00655876    mov         dword ptr [ebp-48],eax
 00655879    mov         eax,dword ptr [ebp-38]
 0065587C    mov         eax,dword ptr [eax+8]
 0065587F    call        StringToOleStr
 00655884    mov         edx,dword ptr [ebp-48]
 00655887    mov         dword ptr [edx],eax
 00655889    mov         eax,dword ptr [ebp-48]
 0065588C    xor         edx,edx
 0065588E    mov         dword ptr [eax+4],edx
 00655891    mov         eax,dword ptr [ebp-3C]
 00655894    mov         dword ptr [eax],8
 0065589A    mov         eax,dword ptr [ebp-48]
 0065589D    mov         eax,dword ptr [eax]
 0065589F    mov         edx,dword ptr [ebp-3C]
 006558A2    mov         dword ptr [edx+8],eax
 006558A5    inc         dword ptr [ebp-24]
>006558A8    jmp         00655912
 006558AA    mov         eax,dword ptr [ebp-38]
 006558AD    mov         dword ptr [ebp-40],eax
 006558B0    mov         eax,dword ptr [ebp-40]
 006558B3    mov         eax,dword ptr [eax]
 006558B5    mov         edx,dword ptr [ebp-3C]
 006558B8    mov         dword ptr [edx],eax
 006558BA    mov         eax,dword ptr [ebp-40]
 006558BD    mov         eax,dword ptr [eax+4]
 006558C0    mov         edx,dword ptr [ebp-3C]
 006558C3    mov         dword ptr [edx+4],eax
 006558C6    mov         eax,dword ptr [ebp-40]
 006558C9    mov         eax,dword ptr [eax+8]
 006558CC    mov         edx,dword ptr [ebp-3C]
 006558CF    mov         dword ptr [edx+8],eax
 006558D2    mov         eax,dword ptr [ebp-40]
 006558D5    mov         eax,dword ptr [eax+0C]
 006558D8    mov         edx,dword ptr [ebp-3C]
 006558DB    mov         dword ptr [edx+0C],eax
 006558DE    add         dword ptr [ebp-38],0C
>006558E2    jmp         00655912
 006558E4    mov         eax,dword ptr [ebp-3C]
 006558E7    mov         edx,dword ptr [ebp-1C]
 006558EA    mov         dword ptr [eax],edx
 006558EC    mov         eax,dword ptr [ebp-38]
 006558EF    mov         eax,dword ptr [eax]
 006558F1    mov         edx,dword ptr [ebp-3C]
 006558F4    mov         dword ptr [edx+8],eax
 006558F7    cmp         dword ptr [ebp-1C],5
>006558FB    jl          00655912
 006558FD    cmp         dword ptr [ebp-1C],7
>00655901    jg          00655912
 00655903    add         dword ptr [ebp-38],4
 00655907    mov         eax,dword ptr [ebp-38]
 0065590A    mov         eax,dword ptr [eax]
 0065590C    mov         edx,dword ptr [ebp-3C]
 0065590F    mov         dword ptr [edx+0C],eax
 00655912    add         dword ptr [ebp-38],4
 00655916    inc         dword ptr [ebp-10]
 00655919    mov         eax,dword ptr [ebp-10]
 0065591C    cmp         eax,dword ptr [ebp-20]
>0065591F    jne         0065574C
 00655925    lea         eax,[ebp-67C]
 0065592B    mov         dword ptr [ebp-5C],eax
 0065592E    mov         eax,dword ptr [ebp-0C]
 00655931    add         eax,4
 00655934    mov         dword ptr [ebp-58],eax
 00655937    mov         eax,dword ptr [ebp-20]
 0065593A    mov         dword ptr [ebp-54],eax
 0065593D    mov         eax,dword ptr [ebp-8]
 00655940    movzx       eax,byte ptr [eax+2]
 00655944    mov         dword ptr [ebp-50],eax
 00655947    mov         eax,dword ptr [ebp-0C]
 0065594A    mov         eax,dword ptr [eax]
 0065594C    mov         dword ptr [ebp-28],eax
 0065594F    mov         eax,dword ptr [ebp-8]
 00655952    movzx       eax,byte ptr [eax]
 00655955    mov         dword ptr [ebp-2C],eax
 00655958    cmp         dword ptr [ebp-2C],4
>0065595C    jne         00655987
 0065595E    mov         eax,dword ptr [ebp-67C]
 00655964    and         eax,0FFF
 00655969    cmp         eax,9
>0065596C    jne         00655975
 0065596E    mov         dword ptr [ebp-2C],8
 00655975    mov         eax,dword ptr [ebp-0C]
 00655978    mov         dword ptr [eax],0FFFFFFFD
 0065597E    sub         dword ptr [ebp-58],4
 00655982    inc         dword ptr [ebp-50]
>00655985    jmp         006559A0
 00655987    cmp         dword ptr [ebp-2C],1
>0065598B    jne         006559A0
 0065598D    cmp         dword ptr [ebp-20],0
>00655991    jne         006559A0
 00655993    cmp         dword ptr [ebp+8],0
>00655997    je          006559A0
 00655999    mov         dword ptr [ebp-2C],3
 006559A0    push        0
 006559A2    lea         eax,[ebp-7C]
 006559A5    push        eax
 006559A6    mov         eax,dword ptr [ebp+8]
 006559A9    push        eax
 006559AA    lea         eax,[ebp-5C]
 006559AD    push        eax
 006559AE    mov         ax,word ptr [ebp-2C]
 006559B2    push        eax
 006559B3    push        0
 006559B5    mov         eax,[006EA364];^gvar_006E47E4
 006559BA    push        eax
 006559BB    mov         eax,dword ptr [ebp-28]
 006559BE    push        eax
 006559BF    mov         eax,dword ptr [ebp-4]
 006559C2    push        eax
 006559C3    mov         eax,dword ptr [eax]
 006559C5    call        dword ptr [eax+18]
 006559C8    mov         dword ptr [ebp-30],eax
 006559CB    cmp         dword ptr [ebp-30],0
>006559CF    je          006559DC
 006559D1    lea         edx,[ebp-7C]
 006559D4    mov         eax,dword ptr [ebp-30]
 006559D7    call        00655D74
 006559DC    mov         eax,dword ptr [ebp-24]
 006559DF    mov         dword ptr [ebp-14],eax
 006559E2    cmp         dword ptr [ebp-14],0
>006559E6    je          00655A19
 006559E8    dec         dword ptr [ebp-14]
 006559EB    mov         eax,dword ptr [ebp-14]
 006559EE    lea         eax,[ebp+eax*8-27C]
 006559F5    mov         dword ptr [ebp-4C],eax
 006559F8    mov         eax,dword ptr [ebp-4C]
 006559FB    cmp         dword ptr [eax+4],0
>006559FF    je          00655A13
 00655A01    mov         eax,dword ptr [ebp-4C]
 00655A04    mov         eax,dword ptr [eax+4]
 00655A07    mov         edx,eax
 00655A09    mov         eax,dword ptr [ebp-4C]
 00655A0C    mov         eax,dword ptr [eax]
 00655A0E    call        OleStrToStrVar
 00655A13    cmp         dword ptr [ebp-14],0
>00655A17    jne         006559E8
 00655A19    xor         eax,eax
 00655A1B    pop         edx
 00655A1C    pop         ecx
 00655A1D    pop         ecx
 00655A1E    mov         dword ptr fs:[eax],edx
 00655A21    push        655A53
 00655A26    mov         eax,dword ptr [ebp-24]
 00655A29    mov         dword ptr [ebp-18],eax
 00655A2C    cmp         dword ptr [ebp-18],0
>00655A30    je          00655A4B
 00655A32    dec         dword ptr [ebp-18]
 00655A35    mov         eax,dword ptr [ebp-18]
 00655A38    mov         eax,dword ptr [ebp+eax*8-27C]
 00655A3F    push        eax
 00655A40    call        OLEAUT32.6
 00655A45    cmp         dword ptr [ebp-18],0
>00655A49    jne         00655A32
 00655A4B    ret
>00655A4C    jmp         @HandleFinally
>00655A51    jmp         00655A26
 00655A53    xor         eax,eax
 00655A55    pop         edx
 00655A56    pop         ecx
 00655A57    pop         ecx
 00655A58    mov         dword ptr fs:[eax],edx
 00655A5B    push        655A76
 00655A60    lea         eax,[ebp-7C]
 00655A63    mov         edx,dword ptr ds:[63F598];tagEXCEPINFO
 00655A69    call        @FinalizeRecord
 00655A6E    ret
>00655A6F    jmp         @HandleFinally
>00655A74    jmp         00655A60
 00655A76    mov         esp,ebp
 00655A78    pop         ebp
 00655A79    ret         8
end;*}

//00655A7C
{*procedure sub_00655A7C(?:?);
begin
 00655A7C    push        ebp
 00655A7D    mov         ebp,esp
 00655A7F    add         esp,0FFFFFFF8
 00655A82    mov         eax,dword ptr [ebp+8]
 00655A85    mov         eax,dword ptr [eax-4]
 00655A88    mov         dword ptr [ebp-8],eax
 00655A8B    mov         byte ptr [ebp-4],6
 00655A8F    lea         eax,[ebp-8]
 00655A92    push        eax
 00655A93    push        0
 00655A95    mov         ecx,dword ptr ds:[6EA374];^gvar_006560D4
 00655A9B    mov         dl,1
 00655A9D    mov         eax,[006550FC];EOleError
 00655AA2    call        Exception.CreateResFmt;EOleError.Create
 00655AA7    call        @RaiseExcept
 00655AAC    pop         ecx
 00655AAD    pop         ecx
 00655AAE    pop         ebp
 00655AAF    ret
end;*}

//00655AB0
{*procedure sub_00655AB0(?:?; ?:?; ?:?; ?:?);
begin
 00655AB0    push        ebp
 00655AB1    mov         ebp,esp
 00655AB3    add         esp,0FFFFFFD4
 00655AB6    mov         dword ptr [ebp-0C],ecx
 00655AB9    mov         dword ptr [ebp-4],edx
 00655ABC    mov         dword ptr [ebp-1C],eax
 00655ABF    mov         eax,dword ptr [ebp-4]
 00655AC2    mov         dword ptr [ebp-28],eax
 00655AC5    xor         eax,eax
 00655AC7    mov         dword ptr [ebp-20],eax
 00655ACA    mov         dword ptr [ebp-8],esp
 00655ACD    mov         eax,dword ptr [ebp-0C]
 00655AD0    inc         eax
 00655AD1    shl         eax,2
 00655AD4    sub         esp,eax
 00655AD6    lea         eax,[ebp-10]
 00655AD9    mov         dword ptr [eax],esp
 00655ADB    mov         eax,dword ptr [ebp-28]
 00655ADE    call        StrLen
 00655AE3    mov         dword ptr [ebp-24],eax
 00655AE6    push        0
 00655AE8    push        0
 00655AEA    mov         eax,dword ptr [ebp-24]
 00655AED    push        eax
 00655AEE    mov         eax,dword ptr [ebp-28]
 00655AF1    push        eax
 00655AF2    push        0
 00655AF4    push        0
 00655AF6    call        KERNEL32.MultiByteToWideChar
 00655AFB    inc         eax
 00655AFC    mov         dword ptr [ebp-14],eax
 00655AFF    mov         eax,dword ptr [ebp-14]
 00655B02    add         eax,eax
 00655B04    add         eax,3
 00655B07    and         eax,0FFFFFFFC
 00655B0A    sub         esp,eax
 00655B0C    lea         eax,[ebp-18]
 00655B0F    mov         dword ptr [eax],esp
 00655B11    cmp         dword ptr [ebp-20],0
>00655B15    jne         00655B21
 00655B17    mov         eax,dword ptr [ebp-10]
 00655B1A    mov         edx,dword ptr [ebp-18]
 00655B1D    mov         dword ptr [eax],edx
>00655B1F    jmp         00655B30
 00655B21    mov         eax,dword ptr [ebp-0C]
 00655B24    sub         eax,dword ptr [ebp-20]
 00655B27    mov         edx,dword ptr [ebp-10]
 00655B2A    mov         ecx,dword ptr [ebp-18]
 00655B2D    mov         dword ptr [edx+eax*4],ecx
 00655B30    mov         eax,dword ptr [ebp-14]
 00655B33    push        eax
 00655B34    mov         eax,dword ptr [ebp-18]
 00655B37    push        eax
 00655B38    mov         eax,dword ptr [ebp-24]
 00655B3B    push        eax
 00655B3C    mov         eax,dword ptr [ebp-28]
 00655B3F    push        eax
 00655B40    push        0
 00655B42    push        0
 00655B44    call        KERNEL32.MultiByteToWideChar
 00655B49    mov         eax,dword ptr [ebp-18]
 00655B4C    mov         edx,dword ptr [ebp-14]
 00655B4F    mov         word ptr [eax+edx*2-2],0
 00655B56    mov         eax,dword ptr [ebp-24]
 00655B59    inc         eax
 00655B5A    add         dword ptr [ebp-28],eax
 00655B5D    inc         dword ptr [ebp-20]
 00655B60    mov         eax,dword ptr [ebp-20]
 00655B63    cmp         eax,dword ptr [ebp-0C]
>00655B66    jne         00655ADB
 00655B6C    mov         eax,dword ptr [ebp+8]
 00655B6F    push        eax
 00655B70    call        KERNEL32.GetThreadLocale
 00655B75    push        eax
 00655B76    mov         eax,dword ptr [ebp-0C]
 00655B79    push        eax
 00655B7A    mov         eax,dword ptr [ebp-10]
 00655B7D    push        eax
 00655B7E    mov         eax,[006EA364];^gvar_006E47E4
 00655B83    push        eax
 00655B84    mov         eax,dword ptr [ebp-1C]
 00655B87    push        eax
 00655B88    mov         eax,dword ptr [eax]
 00655B8A    call        dword ptr [eax+14]
 00655B8D    mov         dword ptr [ebp-2C],eax
 00655B90    cmp         dword ptr [ebp-2C],80020006
>00655B97    jne         00655BA2
 00655B99    push        ebp
 00655B9A    call        00655A7C
 00655B9F    pop         ecx
>00655BA0    jmp         00655BAA
 00655BA2    mov         eax,dword ptr [ebp-2C]
 00655BA5    call        00655480
 00655BAA    mov         esp,dword ptr [ebp-8]
 00655BAD    mov         esp,ebp
 00655BAF    pop         ebp
 00655BB0    ret         4
end;*}

//00655BB4
procedure sub_00655BB4;
begin
{*
 00655BB4    push        ebp
 00655BB5    mov         ebp,esp
 00655BB7    mov         ecx,dword ptr ds:[6EA378];^gvar_006560DC
 00655BBD    mov         dl,1
 00655BBF    mov         eax,[006550FC];EOleError
 00655BC4    call        Exception.Create;EOleError.Create
 00655BC9    call        @RaiseExcept
 00655BCE    pop         ebp
 00655BCF    ret
*}
end;

//00655C7C
{*procedure sub_00655C7C(?:?; ?:Byte; ?:?; ?:?);
begin
 00655C7C    push        ebp
 00655C7D    mov         ebp,esp
 00655C7F    add         esp,0FFFFFFE4
 00655C82    push        ebx
 00655C83    xor         ebx,ebx
 00655C85    mov         dword ptr [ebp-14],ebx
 00655C88    mov         dword ptr [ebp-18],ebx
 00655C8B    mov         dword ptr [ebp-1C],ebx
 00655C8E    mov         dword ptr [ebp-0C],ecx
 00655C91    mov         dword ptr [ebp-8],edx
 00655C94    mov         dword ptr [ebp-4],eax
 00655C97    xor         eax,eax
 00655C99    push        ebp
 00655C9A    push        655D63
 00655C9F    push        dword ptr fs:[eax]
 00655CA2    mov         dword ptr fs:[eax],esp
 00655CA5    cmp         dword ptr [ebp-4],80020009
>00655CAC    jne         00655D16
 00655CAE    mov         eax,dword ptr [ebp-8]
 00655CB1    mov         eax,dword ptr [eax+1C]
 00655CB4    push        eax
 00655CB5    lea         eax,[ebp-14]
 00655CB8    mov         edx,dword ptr [ebp-8]
 00655CBB    mov         edx,dword ptr [edx+4]
 00655CBE    call        @LStrFromWStr
 00655CC3    mov         eax,dword ptr [ebp-14]
 00655CC6    push        eax
 00655CC7    lea         eax,[ebp-18]
 00655CCA    mov         edx,dword ptr [ebp-8]
 00655CCD    mov         edx,dword ptr [edx+0C]
 00655CD0    call        @LStrFromWStr
 00655CD5    mov         eax,dword ptr [ebp-18]
 00655CD8    push        eax
 00655CD9    mov         eax,dword ptr [ebp-8]
 00655CDC    mov         eax,dword ptr [eax+10]
 00655CDF    push        eax
 00655CE0    lea         eax,[ebp-1C]
 00655CE3    mov         edx,dword ptr [ebp-8]
 00655CE6    mov         edx,dword ptr [edx+8]
 00655CE9    call        @LStrFromWStr
 00655CEE    mov         ecx,dword ptr [ebp-1C]
 00655CF1    mov         dl,1
 00655CF3    mov         eax,[006551B0];EOleException
 00655CF8    call        EOleException.Create;EOleException.Create
 00655CFD    mov         dword ptr [ebp-10],eax
 00655D00    cmp         byte ptr [ebp+8],0
>00655D04    je          00655D2D
 00655D06    mov         eax,dword ptr [ebp-8]
 00655D09    mov         edx,dword ptr ds:[63F598];tagEXCEPINFO
 00655D0F    call        @Finalize
>00655D14    jmp         00655D2D
 00655D16    mov         eax,dword ptr [ebp-4]
 00655D19    push        eax
 00655D1A    push        0
 00655D1C    xor         ecx,ecx
 00655D1E    mov         dl,1
 00655D20    mov         eax,[00655154];EOleSysError
 00655D25    call        EOleSysError.Create;EOleSysError.Create
 00655D2A    mov         dword ptr [ebp-10],eax
 00655D2D    cmp         dword ptr [ebp-0C],0
>00655D31    je          00655D40
 00655D33    push        dword ptr [ebp-0C]
 00655D36    mov         eax,dword ptr [ebp-10]
>00655D39    jmp         @RaiseExcept
>00655D3E    jmp         00655D48
 00655D40    mov         eax,dword ptr [ebp-10]
 00655D43    call        @RaiseExcept
 00655D48    xor         eax,eax
 00655D4A    pop         edx
 00655D4B    pop         ecx
 00655D4C    pop         ecx
 00655D4D    mov         dword ptr fs:[eax],edx
 00655D50    push        655D6A
 00655D55    lea         eax,[ebp-1C]
 00655D58    mov         edx,3
 00655D5D    call        @LStrArrayClr
 00655D62    ret
>00655D63    jmp         @HandleFinally
>00655D68    jmp         00655D55
 00655D6A    pop         ebx
 00655D6B    mov         esp,ebp
 00655D6D    pop         ebp
 00655D6E    ret         4
end;*}

//00655D74
{*procedure sub_00655D74(?:?; ?:Byte);
begin
 00655D74    push        ebp
 00655D75    mov         ebp,esp
 00655D77    add         esp,0FFFFFFF8
 00655D7A    mov         dword ptr [ebp-8],edx
 00655D7D    mov         dword ptr [ebp-4],eax
 00655D80    push        0
 00655D82    mov         eax,dword ptr [ebp-8]
 00655D85    mov         edx,eax
 00655D87    xor         ecx,ecx
 00655D89    mov         eax,dword ptr [ebp-4]
 00655D8C    call        00655C7C
 00655D91    pop         ecx
 00655D92    pop         ecx
 00655D93    pop         ebp
 00655D94    ret
end;*}

//00655D98
{*procedure sub_00655D98(?:?);
begin
 00655D98    push        ebp
 00655D99    mov         ebp,esp
 00655D9B    push        ecx
 00655D9C    mov         dword ptr [ebp-4],eax
 00655D9F    mov         eax,dword ptr [ebp-4]
 00655DA2    xor         ecx,ecx
 00655DA4    mov         edx,20
 00655DA9    call        @FillChar
 00655DAE    pop         ecx
 00655DAF    pop         ebp
 00655DB0    ret
end;*}

//00655DB4
{*procedure sub_00655DB4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00655DB4    push        ebp
 00655DB5    mov         ebp,esp
 00655DB7    add         esp,0FFFFFFD0
 00655DBA    push        ebx
 00655DBB    push        esi
 00655DBC    push        edi
 00655DBD    mov         ebx,dword ptr [ebp+0C]
 00655DC0    xor         edx,edx
 00655DC2    mov         edi,esp
 00655DC4    movzx       ecx,byte ptr [ebx+1]
 00655DC8    mov         dword ptr [ebp-8],ecx
 00655DCB    test        ecx,ecx
>00655DCD    je          00655E1A
 00655DCF    add         ebx,3
 00655DD2    mov         esi,dword ptr [ebp+18]
 00655DD5    movzx       eax,byte ptr [ebx]
 00655DD8    test        al,80
>00655DDA    jne         00655E04
 00655DDC    cmp         al,0C
>00655DDE    je          00655DF4
 00655DE0    cmp         al,5
>00655DE2    jb          00655E0B
 00655DE4    cmp         al,7
>00655DE6    ja          00655E0B
 00655DE8    push        dword ptr [esi+4]
 00655DEB    push        dword ptr [esi]
 00655DED    push        edx
 00655DEE    push        eax
 00655DEF    add         esi,8
>00655DF2    jmp         00655E13
 00655DF4    push        dword ptr [esi+0C]
 00655DF7    push        dword ptr [esi+8]
 00655DFA    push        dword ptr [esi+4]
 00655DFD    push        dword ptr [esi]
 00655DFF    add         esi,10
>00655E02    jmp         00655E13
 00655E04    and         al,7F
 00655E06    or          eax,4000
 00655E0B    push        edx
 00655E0C    push        dword ptr [esi]
 00655E0E    push        edx
 00655E0F    push        eax
 00655E10    add         esi,4
 00655E13    inc         ebx
 00655E14    dec         ecx
>00655E15    jne         00655DD5
 00655E17    mov         ebx,dword ptr [ebp+0C]
 00655E1A    mov         dword ptr [ebp-10],esp
 00655E1D    movzx       eax,byte ptr [ebx+2]
 00655E21    mov         dword ptr [ebp-4],eax
 00655E24    test        eax,eax
>00655E26    je          00655E32
 00655E28    mov         esi,dword ptr [ebp+14]
 00655E2B    push        dword ptr [esi+eax*4-4]
 00655E2F    dec         eax
>00655E30    jne         00655E2B
 00655E32    movzx       ecx,byte ptr [ebx]
 00655E35    cmp         ecx,4
>00655E38    jne         00655E50
 00655E3A    push        0FD
 00655E3C    inc         dword ptr [ebp-4]
 00655E3F    cmp         byte ptr [ebx+3],9
>00655E43    je          00655E4B
 00655E45    cmp         byte ptr [ebx+3],0D
>00655E49    jne         00655E50
 00655E4B    mov         ecx,8
 00655E50    mov         dword ptr [ebp-0C],esp
 00655E53    push        edx
 00655E54    lea         eax,[ebp-30]
 00655E57    push        eax
 00655E58    push        ecx
 00655E59    push        edx
 00655E5A    call        00655D98
 00655E5F    pop         edx
 00655E60    pop         ecx
 00655E61    push        dword ptr [ebp+1C]
 00655E64    lea         eax,[ebp-10]
 00655E67    push        eax
 00655E68    push        ecx
 00655E69    push        edx
 00655E6A    push        6EA364;^gvar_006E47E4
 00655E6F    push        dword ptr [ebp+10]
 00655E72    mov         eax,dword ptr [ebp+8]
 00655E75    push        eax
 00655E76    mov         eax,dword ptr [eax]
 00655E78    call        dword ptr [eax+18]
 00655E7B    test        eax,eax
>00655E7D    je          00655E8D
 00655E7F    lea         edx,[ebp-30]
 00655E82    mov         cl,1
 00655E84    push        ecx
 00655E85    mov         ecx,dword ptr [ebp+4]
>00655E88    jmp         00655C7C
 00655E8D    mov         esp,edi
 00655E8F    pop         edi
 00655E90    pop         esi
 00655E91    pop         ebx
 00655E92    mov         esp,ebp
 00655E94    pop         ebp
 00655E95    ret         18
end;*}

end.