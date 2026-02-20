//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit85;

interface

uses
  SysUtils, Classes;

type
  ERegistryException = class(Exception)
  end;
  TRegistry = class(TObject)
  public
    f4:dword;//f4
    fC:byte;//fC
    f10:String;//f10
    f18:dword;//f18
    constructor Create;//00653378
  end;
    procedure sub_00653194;//00653194
    //function sub_00653264(?:AnsiString):?;//00653264
    //function sub_0065328C(?:?):?;//0065328C
    //function sub_006532DC(?:?):?;//006532DC
    constructor sub_00653320;//00653320
    procedure sub_00653404(?:TRegistry);//00653404
    //procedure sub_00653450(?:?; ?:?);//00653450
    //procedure sub_00653498(?:TRegistry; ?:?; ?:AnsiString);//00653498
    //function sub_006534CC(?:TRegistry; ?:?):?;//006534CC
    procedure sub_00653504(?:TRegistry; ?:dword);//00653504
    //function sub_00653520(?:TRegistry; ?:?; ?:?):?;//00653520
    //function sub_00653658(?:TRegistry; ?:AnsiString):?;//00653658
    //function sub_006537DC(?:TRegistry; ?:?):?;//006537DC
    //function sub_00653870(?:TRegistry; ?:?; ?:?):?;//00653870
    //procedure sub_006538CC(?:TRegistry; ?:?; ?:?);//006538CC
    //procedure sub_00653900(?:TRegistry; ?:?; ?:PChar; ?:?; ?:?);//00653900
    //function sub_00653970(?:TRegistry; ?:?):?;//00653970
    //function sub_00653994(?:TRegistry; ?:?):?;//00653994

implementation

//00653194
procedure sub_00653194;
begin
{*
 00653194    sub         dword ptr ds:[6ECFD8],1
 0065319B    ret
*}
end;

//00653264
{*function sub_00653264(?:AnsiString):?;
begin
 00653264    push        ebp
 00653265    mov         ebp,esp
 00653267    add         esp,0FFFFFFF8
 0065326A    mov         dword ptr [ebp-4],eax
 0065326D    cmp         dword ptr [ebp-4],0
>00653271    je          0065327F
 00653273    mov         eax,dword ptr [ebp-4]
 00653276    cmp         byte ptr [eax],5C
>00653279    jne         0065327F
 0065327B    xor         eax,eax
>0065327D    jmp         00653281
 0065327F    mov         al,1
 00653281    mov         byte ptr [ebp-5],al
 00653284    mov         al,byte ptr [ebp-5]
 00653287    pop         ecx
 00653288    pop         ecx
 00653289    pop         ebp
 0065328A    ret
end;*}

//0065328C
{*function sub_0065328C(?:?):?;
begin
 0065328C    push        ebp
 0065328D    mov         ebp,esp
 0065328F    add         esp,0FFFFFFF8
 00653292    mov         byte ptr [ebp-1],al
 00653295    mov         al,byte ptr [ebp-1]
 00653298    dec         al
>0065329A    je          006532AA
 0065329C    dec         al
>0065329E    je          006532B3
 006532A0    dec         al
>006532A2    je          006532BC
 006532A4    dec         al
>006532A6    je          006532C5
>006532A8    jmp         006532CE
 006532AA    mov         dword ptr [ebp-8],1
>006532B1    jmp         006532D3
 006532B3    mov         dword ptr [ebp-8],2
>006532BA    jmp         006532D3
 006532BC    mov         dword ptr [ebp-8],4
>006532C3    jmp         006532D3
 006532C5    mov         dword ptr [ebp-8],3
>006532CC    jmp         006532D3
 006532CE    xor         eax,eax
 006532D0    mov         dword ptr [ebp-8],eax
 006532D3    mov         eax,dword ptr [ebp-8]
 006532D6    pop         ecx
 006532D7    pop         ecx
 006532D8    pop         ebp
 006532D9    ret
end;*}

//006532DC
{*function sub_006532DC(?:?):?;
begin
 006532DC    push        ebp
 006532DD    mov         ebp,esp
 006532DF    add         esp,0FFFFFFF8
 006532E2    mov         dword ptr [ebp-4],eax
 006532E5    cmp         dword ptr [ebp-4],1
>006532E9    jne         006532F1
 006532EB    mov         byte ptr [ebp-5],1
>006532EF    jmp         00653319
 006532F1    cmp         dword ptr [ebp-4],2
>006532F5    jne         006532FD
 006532F7    mov         byte ptr [ebp-5],2
>006532FB    jmp         00653319
 006532FD    cmp         dword ptr [ebp-4],4
>00653301    jne         00653309
 00653303    mov         byte ptr [ebp-5],3
>00653307    jmp         00653319
 00653309    cmp         dword ptr [ebp-4],3
>0065330D    jne         00653315
 0065330F    mov         byte ptr [ebp-5],4
>00653313    jmp         00653319
 00653315    mov         byte ptr [ebp-5],0
 00653319    mov         al,byte ptr [ebp-5]
 0065331C    pop         ecx
 0065331D    pop         ecx
 0065331E    pop         ebp
 0065331F    ret
end;*}

//00653320
constructor sub_00653320;
begin
{*
 00653320    push        ebp
 00653321    mov         ebp,esp
 00653323    add         esp,0FFFFFFF8
 00653326    test        dl,dl
>00653328    je          00653332
 0065332A    add         esp,0FFFFFFF0
 0065332D    call        @ClassCreate
 00653332    mov         byte ptr [ebp-5],dl
 00653335    mov         dword ptr [ebp-4],eax
 00653338    mov         edx,80000001
 0065333D    mov         eax,dword ptr [ebp-4]
 00653340    call        00653450
 00653345    mov         eax,dword ptr [ebp-4]
 00653348    mov         dword ptr [eax+18],0F003F
 0065334F    mov         eax,dword ptr [ebp-4]
 00653352    mov         byte ptr [eax+0C],1
 00653356    mov         eax,dword ptr [ebp-4]
 00653359    cmp         byte ptr [ebp-5],0
>0065335D    je          0065336E
 0065335F    call        @AfterConstruction
 00653364    pop         dword ptr fs:[0]
 0065336B    add         esp,0C
 0065336E    mov         eax,dword ptr [ebp-4]
 00653371    pop         ecx
 00653372    pop         ecx
 00653373    pop         ebp
 00653374    ret
*}
end;

//00653378
constructor TRegistry.Create;
begin
{*
 00653378    push        ebp
 00653379    mov         ebp,esp
 0065337B    add         esp,0FFFFFFF4
 0065337E    test        dl,dl
>00653380    je          0065338A
 00653382    add         esp,0FFFFFFF0
 00653385    call        @ClassCreate
 0065338A    mov         dword ptr [ebp-0C],ecx
 0065338D    mov         byte ptr [ebp-5],dl
 00653390    mov         dword ptr [ebp-4],eax
 00653393    xor         edx,edx
 00653395    mov         eax,dword ptr [ebp-4]
 00653398    call        00653320
 0065339D    mov         eax,dword ptr [ebp-4]
 006533A0    mov         edx,dword ptr [ebp-0C]
 006533A3    mov         dword ptr [eax+18],edx;TRegistry.?f18:dword
 006533A6    mov         eax,dword ptr [ebp-4]
 006533A9    cmp         byte ptr [ebp-5],0
>006533AD    je          006533BE
 006533AF    call        @AfterConstruction
 006533B4    pop         dword ptr fs:[0]
 006533BB    add         esp,0C
 006533BE    mov         eax,dword ptr [ebp-4]
 006533C1    mov         esp,ebp
 006533C3    pop         ebp
 006533C4    ret
*}
end;

//00653404
procedure sub_00653404(?:TRegistry);
begin
{*
 00653404    push        ebp
 00653405    mov         ebp,esp
 00653407    push        ecx
 00653408    mov         dword ptr [ebp-4],eax
 0065340B    mov         eax,dword ptr [ebp-4]
 0065340E    cmp         dword ptr [eax+4],0;TRegistry.?f4:dword
>00653412    je          0065344A
 00653414    mov         eax,dword ptr [ebp-4]
 00653417    cmp         byte ptr [eax+0C],0;TRegistry.?fC:byte
>0065341B    je          0065342B
 0065341D    mov         eax,dword ptr [ebp-4]
 00653420    mov         eax,dword ptr [eax+4];TRegistry.?f4:dword
 00653423    push        eax
 00653424    call        ADVAPI32.RegCloseKey
>00653429    jmp         00653437
 0065342B    mov         eax,dword ptr [ebp-4]
 0065342E    mov         eax,dword ptr [eax+4];TRegistry.?f4:dword
 00653431    push        eax
 00653432    call        ADVAPI32.RegFlushKey
 00653437    mov         eax,dword ptr [ebp-4]
 0065343A    xor         edx,edx
 0065343C    mov         dword ptr [eax+4],edx;TRegistry.?f4:dword
 0065343F    mov         eax,dword ptr [ebp-4]
 00653442    add         eax,10;TRegistry.?f10:String
 00653445    call        @LStrClr
 0065344A    pop         ecx
 0065344B    pop         ebp
 0065344C    ret
*}
end;

//00653450
{*procedure sub_00653450(?:?; ?:?);
begin
 00653450    push        ebp
 00653451    mov         ebp,esp
 00653453    add         esp,0FFFFFFF8
 00653456    mov         dword ptr [ebp-8],edx
 00653459    mov         dword ptr [ebp-4],eax
 0065345C    mov         eax,dword ptr [ebp-4]
 0065345F    mov         eax,dword ptr [eax+8]
 00653462    cmp         eax,dword ptr [ebp-8]
>00653465    je          00653494
 00653467    mov         eax,dword ptr [ebp-4]
 0065346A    cmp         byte ptr [eax+14],0
>0065346E    je          00653483
 00653470    mov         eax,dword ptr [ebp-4]
 00653473    mov         eax,dword ptr [eax+8]
 00653476    push        eax
 00653477    call        ADVAPI32.RegCloseKey
 0065347C    mov         eax,dword ptr [ebp-4]
 0065347F    mov         byte ptr [eax+14],0
 00653483    mov         eax,dword ptr [ebp-8]
 00653486    mov         edx,dword ptr [ebp-4]
 00653489    mov         dword ptr [edx+8],eax
 0065348C    mov         eax,dword ptr [ebp-4]
 0065348F    call        00653404
 00653494    pop         ecx
 00653495    pop         ecx
 00653496    pop         ebp
 00653497    ret
end;*}

//00653498
{*procedure sub_00653498(?:TRegistry; ?:?; ?:AnsiString);
begin
 00653498    push        ebp
 00653499    mov         ebp,esp
 0065349B    add         esp,0FFFFFFF4
 0065349E    mov         dword ptr [ebp-0C],ecx
 006534A1    mov         dword ptr [ebp-8],edx
 006534A4    mov         dword ptr [ebp-4],eax
 006534A7    mov         eax,dword ptr [ebp-4]
 006534AA    call        00653404
 006534AF    mov         eax,dword ptr [ebp-8]
 006534B2    mov         edx,dword ptr [ebp-4]
 006534B5    mov         dword ptr [edx+4],eax
 006534B8    mov         eax,dword ptr [ebp-4]
 006534BB    add         eax,10
 006534BE    mov         edx,dword ptr [ebp-0C]
 006534C1    call        @LStrAsg
 006534C6    mov         esp,ebp
 006534C8    pop         ebp
 006534C9    ret
end;*}

//006534CC
{*function sub_006534CC(?:TRegistry; ?:?):?;
begin
 006534CC    push        ebp
 006534CD    mov         ebp,esp
 006534CF    add         esp,0FFFFFFF4
 006534D2    mov         byte ptr [ebp-5],dl
 006534D5    mov         dword ptr [ebp-4],eax
 006534D8    mov         eax,dword ptr [ebp-4]
 006534DB    cmp         dword ptr [eax+4],0
>006534DF    je          006534E7
 006534E1    cmp         byte ptr [ebp-5],0
>006534E5    jne         006534F2
 006534E7    mov         eax,dword ptr [ebp-4]
 006534EA    mov         eax,dword ptr [eax+8]
 006534ED    mov         dword ptr [ebp-0C],eax
>006534F0    jmp         006534FB
 006534F2    mov         eax,dword ptr [ebp-4]
 006534F5    mov         eax,dword ptr [eax+4]
 006534F8    mov         dword ptr [ebp-0C],eax
 006534FB    mov         eax,dword ptr [ebp-0C]
 006534FE    mov         esp,ebp
 00653500    pop         ebp
 00653501    ret
end;*}

//00653504
procedure sub_00653504(?:TRegistry; ?:dword);
begin
{*
 00653504    push        ebp
 00653505    mov         ebp,esp
 00653507    add         esp,0FFFFFFF8
 0065350A    mov         dword ptr [ebp-8],edx
 0065350D    mov         dword ptr [ebp-4],eax
 00653510    mov         eax,dword ptr [ebp-8]
 00653513    mov         edx,dword ptr [ebp-4]
 00653516    mov         dword ptr [edx+4],eax
 00653519    pop         ecx
 0065351A    pop         ecx
 0065351B    pop         ebp
 0065351C    ret
*}
end;

//00653520
{*function sub_00653520(?:TRegistry; ?:?; ?:?):?;
begin
 00653520    push        ebp
 00653521    mov         ebp,esp
 00653523    add         esp,0FFFFFFE4
 00653526    push        ebx
 00653527    xor         ebx,ebx
 00653529    mov         dword ptr [ebp-14],ebx
 0065352C    mov         byte ptr [ebp-9],cl
 0065352F    mov         dword ptr [ebp-8],edx
 00653532    mov         dword ptr [ebp-4],eax
 00653535    xor         eax,eax
 00653537    push        ebp
 00653538    push        65363C
 0065353D    push        dword ptr fs:[eax]
 00653540    mov         dword ptr fs:[eax],esp
 00653543    lea         eax,[ebp-14]
 00653546    mov         edx,dword ptr [ebp-8]
 00653549    call        @LStrLAsg
 0065354E    mov         eax,dword ptr [ebp-14]
 00653551    call        00653264
 00653556    mov         byte ptr [ebp-19],al
 00653559    cmp         byte ptr [ebp-19],0
>0065355D    jne         00653571
 0065355F    lea         eax,[ebp-14]
 00653562    mov         ecx,1
 00653567    mov         edx,1
 0065356C    call        @LStrDelete
 00653571    xor         eax,eax
 00653573    mov         dword ptr [ebp-10],eax
 00653576    cmp         byte ptr [ebp-9],0
>0065357A    je          00653582
 0065357C    cmp         dword ptr [ebp-14],0
>00653580    jne         006535B1
 00653582    lea         eax,[ebp-10]
 00653585    push        eax
 00653586    mov         eax,dword ptr [ebp-4]
 00653589    mov         eax,dword ptr [eax+18];TRegistry.?f18:dword
 0065358C    push        eax
 0065358D    push        0
 0065358F    mov         eax,dword ptr [ebp-14]
 00653592    call        @LStrToPChar
 00653597    push        eax
 00653598    mov         dl,byte ptr [ebp-19]
 0065359B    mov         eax,dword ptr [ebp-4]
 0065359E    call        006534CC
 006535A3    push        eax
 006535A4    call        ADVAPI32.RegOpenKeyExA
 006535A9    test        eax,eax
 006535AB    sete        byte ptr [ebp-0A]
>006535AF    jmp         006535E8
 006535B1    lea         eax,[ebp-18]
 006535B4    push        eax
 006535B5    lea         eax,[ebp-10]
 006535B8    push        eax
 006535B9    push        0
 006535BB    mov         eax,dword ptr [ebp-4]
 006535BE    mov         eax,dword ptr [eax+18];TRegistry.?f18:dword
 006535C1    push        eax
 006535C2    push        0
 006535C4    push        0
 006535C6    push        0
 006535C8    mov         eax,dword ptr [ebp-14]
 006535CB    call        @LStrToPChar
 006535D0    push        eax
 006535D1    mov         dl,byte ptr [ebp-19]
 006535D4    mov         eax,dword ptr [ebp-4]
 006535D7    call        006534CC
 006535DC    push        eax
 006535DD    call        ADVAPI32.RegCreateKeyExA
 006535E2    test        eax,eax
 006535E4    sete        byte ptr [ebp-0A]
 006535E8    cmp         byte ptr [ebp-0A],0
>006535EC    je          00653626
 006535EE    mov         eax,dword ptr [ebp-4]
 006535F1    cmp         dword ptr [eax+4],0;TRegistry.?f4:dword
 006535F5    setne       al
 006535F8    and         al,byte ptr [ebp-19]
>006535FB    je          00653618
 006535FD    mov         eax,dword ptr [ebp-4]
 00653600    push        dword ptr [eax+10];TRegistry.?f10:String
 00653603    push        653654;'\'
 00653608    push        dword ptr [ebp-14]
 0065360B    lea         eax,[ebp-14]
 0065360E    mov         edx,3
 00653613    call        @LStrCatN
 00653618    mov         ecx,dword ptr [ebp-14]
 0065361B    mov         edx,dword ptr [ebp-10]
 0065361E    mov         eax,dword ptr [ebp-4]
 00653621    call        00653498
 00653626    xor         eax,eax
 00653628    pop         edx
 00653629    pop         ecx
 0065362A    pop         ecx
 0065362B    mov         dword ptr fs:[eax],edx
 0065362E    push        653643
 00653633    lea         eax,[ebp-14]
 00653636    call        @LStrClr
 0065363B    ret
>0065363C    jmp         @HandleFinally
>00653641    jmp         00653633
 00653643    mov         al,byte ptr [ebp-0A]
 00653646    pop         ebx
 00653647    mov         esp,ebp
 00653649    pop         ebp
 0065364A    ret
end;*}

//00653658
{*function sub_00653658(?:TRegistry; ?:AnsiString):?;
begin
 00653658    push        ebp
 00653659    mov         ebp,esp
 0065365B    add         esp,0FFFFFFB8
 0065365E    xor         ecx,ecx
 00653660    mov         dword ptr [ebp-48],ecx
 00653663    mov         dword ptr [ebp-1C],ecx
 00653666    mov         dword ptr [ebp-20],ecx
 00653669    mov         dword ptr [ebp-8],edx
 0065366C    mov         dword ptr [ebp-4],eax
 0065366F    xor         eax,eax
 00653671    push        ebp
 00653672    push        6537CD
 00653677    push        dword ptr fs:[eax]
 0065367A    mov         dword ptr fs:[eax],esp
 0065367D    lea         eax,[ebp-1C]
 00653680    mov         edx,dword ptr [ebp-8]
 00653683    call        @LStrLAsg
 00653688    mov         eax,dword ptr [ebp-1C]
 0065368B    call        00653264
 00653690    mov         byte ptr [ebp-15],al
 00653693    cmp         byte ptr [ebp-15],0
>00653697    jne         006536AB
 00653699    lea         eax,[ebp-1C]
 0065369C    mov         ecx,1
 006536A1    mov         edx,1
 006536A6    call        @LStrDelete
 006536AB    mov         eax,dword ptr [ebp-4]
 006536AE    mov         eax,dword ptr [eax+4];TRegistry.?f4:dword
 006536B1    mov         dword ptr [ebp-24],eax
 006536B4    mov         edx,dword ptr [ebp-8]
 006536B7    mov         eax,dword ptr [ebp-4]
 006536BA    call        00653994
 006536BF    mov         dword ptr [ebp-28],eax
 006536C2    cmp         dword ptr [ebp-28],0
>006536C6    je          0065378A
 006536CC    xor         eax,eax
 006536CE    push        ebp
 006536CF    push        653783
 006536D4    push        dword ptr fs:[eax]
 006536D7    mov         dword ptr fs:[eax],esp
 006536DA    mov         edx,dword ptr [ebp-28]
 006536DD    mov         eax,dword ptr [ebp-4]
 006536E0    call        00653504
 006536E5    lea         edx,[ebp-44]
 006536E8    mov         eax,dword ptr [ebp-4]
 006536EB    call        006537DC
 006536F0    test        al,al
>006536F2    je          00653761
 006536F4    mov         ecx,dword ptr [ebp-40]
 006536F7    inc         ecx
 006536F8    lea         eax,[ebp-20]
 006536FB    xor         edx,edx
 006536FD    call        @LStrFromPCharLen
 00653702    mov         eax,dword ptr [ebp-44]
 00653705    dec         eax
 00653706    cmp         eax,0
>00653709    jl          00653761
 0065370B    mov         dword ptr [ebp-14],eax
 0065370E    mov         eax,dword ptr [ebp-40]
 00653711    inc         eax
 00653712    mov         dword ptr [ebp-10],eax
 00653715    push        0
 00653717    push        0
 00653719    push        0
 0065371B    push        0
 0065371D    lea         eax,[ebp-10]
 00653720    push        eax
 00653721    mov         eax,dword ptr [ebp-20]
 00653724    call        @LStrToPChar
 00653729    push        eax
 0065372A    mov         eax,dword ptr [ebp-14]
 0065372D    push        eax
 0065372E    mov         eax,dword ptr [ebp-28]
 00653731    push        eax
 00653732    call        ADVAPI32.RegEnumKeyExA
 00653737    test        eax,eax
>00653739    jne         00653758
 0065373B    mov         eax,dword ptr [ebp-20]
 0065373E    call        @LStrToPChar
 00653743    mov         edx,eax
 00653745    lea         eax,[ebp-48]
 00653748    call        @LStrFromPChar
 0065374D    mov         edx,dword ptr [ebp-48]
 00653750    mov         eax,dword ptr [ebp-4]
 00653753    call        00653658
 00653758    dec         dword ptr [ebp-14]
 0065375B    cmp         dword ptr [ebp-14],0FFFFFFFF
>0065375F    jne         0065370E
 00653761    xor         eax,eax
 00653763    pop         edx
 00653764    pop         ecx
 00653765    pop         ecx
 00653766    mov         dword ptr fs:[eax],edx
 00653769    push        65378A
 0065376E    mov         edx,dword ptr [ebp-24]
 00653771    mov         eax,dword ptr [ebp-4]
 00653774    call        00653504
 00653779    mov         eax,dword ptr [ebp-28]
 0065377C    push        eax
 0065377D    call        ADVAPI32.RegCloseKey
 00653782    ret
>00653783    jmp         @HandleFinally
>00653788    jmp         0065376E
 0065378A    mov         eax,dword ptr [ebp-1C]
 0065378D    call        @LStrToPChar
 00653792    push        eax
 00653793    mov         dl,byte ptr [ebp-15]
 00653796    mov         eax,dword ptr [ebp-4]
 00653799    call        006534CC
 0065379E    push        eax
 0065379F    call        ADVAPI32.RegDeleteKeyA
 006537A4    test        eax,eax
 006537A6    sete        byte ptr [ebp-9]
 006537AA    xor         eax,eax
 006537AC    pop         edx
 006537AD    pop         ecx
 006537AE    pop         ecx
 006537AF    mov         dword ptr fs:[eax],edx
 006537B2    push        6537D4
 006537B7    lea         eax,[ebp-48]
 006537BA    call        @LStrClr
 006537BF    lea         eax,[ebp-20]
 006537C2    mov         edx,2
 006537C7    call        @LStrArrayClr
 006537CC    ret
>006537CD    jmp         @HandleFinally
>006537D2    jmp         006537B7
 006537D4    mov         al,byte ptr [ebp-9]
 006537D7    mov         esp,ebp
 006537D9    pop         ebp
 006537DA    ret
end;*}

//006537DC
{*function sub_006537DC(?:TRegistry; ?:?):?;
begin
 006537DC    push        ebp
 006537DD    mov         ebp,esp
 006537DF    add         esp,0FFFFFFF4
 006537E2    mov         dword ptr [ebp-8],edx
 006537E5    mov         dword ptr [ebp-4],eax
 006537E8    mov         eax,dword ptr [ebp-8]
 006537EB    xor         ecx,ecx
 006537ED    mov         edx,1C
 006537F2    call        @FillChar
 006537F7    mov         eax,dword ptr [ebp-8]
 006537FA    add         eax,14
 006537FD    push        eax
 006537FE    push        0
 00653800    mov         eax,dword ptr [ebp-8]
 00653803    add         eax,10
 00653806    push        eax
 00653807    mov         eax,dword ptr [ebp-8]
 0065380A    add         eax,0C
 0065380D    push        eax
 0065380E    mov         eax,dword ptr [ebp-8]
 00653811    add         eax,8
 00653814    push        eax
 00653815    push        0
 00653817    mov         eax,dword ptr [ebp-8]
 0065381A    add         eax,4
 0065381D    push        eax
 0065381E    mov         eax,dword ptr [ebp-8]
 00653821    push        eax
 00653822    push        0
 00653824    push        0
 00653826    push        0
 00653828    mov         eax,dword ptr [ebp-4]
 0065382B    mov         eax,dword ptr [eax+4];TRegistry.?f4:dword
 0065382E    push        eax
 0065382F    call        ADVAPI32.RegQueryInfoKeyA
 00653834    test        eax,eax
 00653836    sete        byte ptr [ebp-9]
 0065383A    mov         eax,[006EA118];^gvar_006ED0D0:Integer
 0065383F    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>00653843    je          00653867
 00653845    mov         eax,[006EA0EC];^gvar_006E498C
 0065384A    cmp         dword ptr [eax],2
>0065384D    jne         00653867
 0065384F    mov         eax,dword ptr [ebp-8]
 00653852    mov         eax,dword ptr [eax+4]
 00653855    mov         edx,dword ptr [ebp-8]
 00653858    add         dword ptr [edx+4],eax
 0065385B    mov         eax,dword ptr [ebp-8]
 0065385E    mov         eax,dword ptr [eax+0C]
 00653861    mov         edx,dword ptr [ebp-8]
 00653864    add         dword ptr [edx+0C],eax
 00653867    mov         al,byte ptr [ebp-9]
 0065386A    mov         esp,ebp
 0065386C    pop         ebp
 0065386D    ret
end;*}

//00653870
{*function sub_00653870(?:TRegistry; ?:?; ?:?):?;
begin
 00653870    push        ebp
 00653871    mov         ebp,esp
 00653873    add         esp,0FFFFFFEC
 00653876    mov         dword ptr [ebp-0C],ecx
 00653879    mov         dword ptr [ebp-8],edx
 0065387C    mov         dword ptr [ebp-4],eax
 0065387F    mov         eax,dword ptr [ebp-0C]
 00653882    xor         ecx,ecx
 00653884    mov         edx,8
 00653889    call        @FillChar
 0065388E    mov         eax,dword ptr [ebp-0C]
 00653891    add         eax,4
 00653894    push        eax
 00653895    push        0
 00653897    lea         eax,[ebp-14]
 0065389A    push        eax
 0065389B    push        0
 0065389D    mov         eax,dword ptr [ebp-8]
 006538A0    call        @LStrToPChar
 006538A5    push        eax
 006538A6    mov         eax,dword ptr [ebp-4]
 006538A9    mov         eax,dword ptr [eax+4]
 006538AC    push        eax
 006538AD    call        ADVAPI32.RegQueryValueExA
 006538B2    test        eax,eax
 006538B4    sete        byte ptr [ebp-0D]
 006538B8    mov         eax,dword ptr [ebp-14]
 006538BB    call        006532DC
 006538C0    mov         edx,dword ptr [ebp-0C]
 006538C3    mov         byte ptr [edx],al
 006538C5    mov         al,byte ptr [ebp-0D]
 006538C8    mov         esp,ebp
 006538CA    pop         ebp
 006538CB    ret
end;*}

//006538CC
{*procedure sub_006538CC(?:TRegistry; ?:?; ?:?);
begin
 006538CC    push        ebp
 006538CD    mov         ebp,esp
 006538CF    add         esp,0FFFFFFF4
 006538D2    mov         dword ptr [ebp-0C],ecx
 006538D5    mov         dword ptr [ebp-8],edx
 006538D8    mov         dword ptr [ebp-4],eax
 006538DB    mov         eax,dword ptr [ebp-0C]
 006538DE    call        @LStrLen
 006538E3    inc         eax
 006538E4    push        eax
 006538E5    push        1
 006538E7    mov         eax,dword ptr [ebp-0C]
 006538EA    call        @LStrToPChar
 006538EF    mov         ecx,eax
 006538F1    mov         edx,dword ptr [ebp-8]
 006538F4    mov         eax,dword ptr [ebp-4]
 006538F7    call        00653900
 006538FC    mov         esp,ebp
 006538FE    pop         ebp
 006538FF    ret
end;*}

//00653900
{*procedure sub_00653900(?:TRegistry; ?:?; ?:PChar; ?:?; ?:?);
begin
 00653900    push        ebp
 00653901    mov         ebp,esp
 00653903    add         esp,0FFFFFFE8
 00653906    mov         dword ptr [ebp-0C],ecx
 00653909    mov         dword ptr [ebp-8],edx
 0065390C    mov         dword ptr [ebp-4],eax
 0065390F    mov         al,byte ptr [ebp+8]
 00653912    call        0065328C
 00653917    mov         dword ptr [ebp-10],eax
 0065391A    mov         eax,dword ptr [ebp+0C]
 0065391D    push        eax
 0065391E    mov         eax,dword ptr [ebp-0C]
 00653921    push        eax
 00653922    mov         eax,dword ptr [ebp-10]
 00653925    push        eax
 00653926    push        0
 00653928    mov         eax,dword ptr [ebp-8]
 0065392B    call        @LStrToPChar
 00653930    push        eax
 00653931    mov         eax,dword ptr [ebp-4]
 00653934    mov         eax,dword ptr [eax+4];TRegistry.?f4:dword
 00653937    push        eax
 00653938    call        ADVAPI32.RegSetValueExA
 0065393D    test        eax,eax
>0065393F    je          00653968
 00653941    mov         eax,dword ptr [ebp-8]
 00653944    mov         dword ptr [ebp-18],eax
 00653947    mov         byte ptr [ebp-14],0B
 0065394B    lea         eax,[ebp-18]
 0065394E    push        eax
 0065394F    push        0
 00653951    mov         ecx,dword ptr ds:[6EA0C0];^gvar_00655074
 00653957    mov         dl,1
 00653959    mov         eax,[0065319C];ERegistryException
 0065395E    call        Exception.CreateResFmt;ERegistryException.Create
 00653963    call        @RaiseExcept
 00653968    mov         esp,ebp
 0065396A    pop         ebp
 0065396B    ret         8
end;*}

//00653970
{*function sub_00653970(?:TRegistry; ?:?):?;
begin
 00653970    push        ebp
 00653971    mov         ebp,esp
 00653973    add         esp,0FFFFFFEC
 00653976    mov         dword ptr [ebp-8],edx
 00653979    mov         dword ptr [ebp-4],eax
 0065397C    lea         ecx,[ebp-14]
 0065397F    mov         edx,dword ptr [ebp-8]
 00653982    mov         eax,dword ptr [ebp-4]
 00653985    call        00653870
 0065398A    mov         byte ptr [ebp-9],al
 0065398D    mov         al,byte ptr [ebp-9]
 00653990    mov         esp,ebp
 00653992    pop         ebp
 00653993    ret
end;*}

//00653994
{*function sub_00653994(?:TRegistry; ?:?):?;
begin
 00653994    push        ebp
 00653995    mov         ebp,esp
 00653997    add         esp,0FFFFFFEC
 0065399A    xor         ecx,ecx
 0065399C    mov         dword ptr [ebp-10],ecx
 0065399F    mov         dword ptr [ebp-8],edx
 006539A2    mov         dword ptr [ebp-4],eax
 006539A5    xor         eax,eax
 006539A7    push        ebp
 006539A8    push        653A23
 006539AD    push        dword ptr fs:[eax]
 006539B0    mov         dword ptr fs:[eax],esp
 006539B3    lea         eax,[ebp-10]
 006539B6    mov         edx,dword ptr [ebp-8]
 006539B9    call        @LStrLAsg
 006539BE    mov         eax,dword ptr [ebp-10]
 006539C1    call        00653264
 006539C6    mov         byte ptr [ebp-11],al
 006539C9    cmp         byte ptr [ebp-11],0
>006539CD    jne         006539E1
 006539CF    lea         eax,[ebp-10]
 006539D2    mov         ecx,1
 006539D7    mov         edx,1
 006539DC    call        @LStrDelete
 006539E1    xor         eax,eax
 006539E3    mov         dword ptr [ebp-0C],eax
 006539E6    lea         eax,[ebp-0C]
 006539E9    push        eax
 006539EA    mov         eax,dword ptr [ebp-4]
 006539ED    mov         eax,dword ptr [eax+18];TRegistry.?f18:dword
 006539F0    push        eax
 006539F1    push        0
 006539F3    mov         eax,dword ptr [ebp-10]
 006539F6    call        @LStrToPChar
 006539FB    push        eax
 006539FC    mov         dl,byte ptr [ebp-11]
 006539FF    mov         eax,dword ptr [ebp-4]
 00653A02    call        006534CC
 00653A07    push        eax
 00653A08    call        ADVAPI32.RegOpenKeyExA
 00653A0D    xor         eax,eax
 00653A0F    pop         edx
 00653A10    pop         ecx
 00653A11    pop         ecx
 00653A12    mov         dword ptr fs:[eax],edx
 00653A15    push        653A2A
 00653A1A    lea         eax,[ebp-10]
 00653A1D    call        @LStrClr
 00653A22    ret
>00653A23    jmp         @HandleFinally
>00653A28    jmp         00653A1A
 00653A2A    mov         eax,dword ptr [ebp-0C]
 00653A2D    mov         esp,ebp
 00653A2F    pop         ebp
 00653A30    ret
end;*}

end.