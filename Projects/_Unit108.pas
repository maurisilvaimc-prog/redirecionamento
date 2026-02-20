//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit108;

interface

uses
  SysUtils, Classes;

    procedure sub_00673578;//00673578
    procedure sub_006736AC;//006736AC
    procedure sub_006736BC;//006736BC
    //procedure sub_006736CC(?:?);//006736CC
    procedure sub_00673770;//00673770
    //procedure sub_00673794(?:?);//00673794
    //procedure sub_006737E8(?:?);//006737E8
    //procedure sub_00673804(?:?);//00673804
    //procedure sub_0067384C(?:?; ?:?);//0067384C
    //procedure sub_00673880(?:?; ?:?);//00673880
    //function sub_006738B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//006738B4
    //function sub_0067425C(?:?):?;//0067425C
    //function sub_00674284(?:?; ?:?; ?:?):?;//00674284
    //function sub_00674548(?:?):?;//00674548
    //function sub_006745C8(?:?):?;//006745C8
    //function sub_006745F4(?:?):?;//006745F4
    //procedure sub_00674660(?:?);//00674660
    //function sub_00674764(?:?):?;//00674764
    //function sub_006747A4(?:?; ?:?):?;//006747A4
    //procedure sub_006747E8(?:?; ?:?);//006747E8
    //function sub_006748F8(?:?; ?:?):?;//006748F8
    procedure sub_00674DF4;//00674DF4
    procedure sub_00674E00;//00674E00

implementation

//00673578
procedure sub_00673578;
begin
{*
 00673578    push        ebx
 00673579    mov         ebx,6E583C;gvar_006E583C
 0067357E    push        6E6460
 00673583    push        6EDFE8;gvar_006EDFE8
 00673588    call        0067A094
 0067358D    add         esp,8
 00673590    xor         eax,eax
 00673592    lea         edx,[ebx+17]
 00673595    mov         ecx,eax
 00673597    inc         eax
 00673598    shl         ecx,3
 0067359B    lea         ecx,[ecx+ecx*2]
 0067359E    add         ecx,ebx
 006735A0    mov         byte ptr [edx],cl
 006735A2    add         edx,18
 006735A5    cmp         eax,3
>006735A8    jl          00673595
 006735AA    mov         eax,3
 006735AF    lea         edx,[ebx+5E]
>006735B2    jmp         006735C8
 006735B4    mov         ecx,eax
 006735B6    mov         byte ptr [edx],0FF
 006735B9    shl         ecx,3
 006735BC    inc         eax
 006735BD    lea         ecx,[ecx+ecx*2]
 006735C0    add         ecx,ebx
 006735C2    mov         byte ptr [edx+1],cl
 006735C5    add         edx,18
 006735C8    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>006735CE    jb          006735B4
 006735D0    movsx       eax,byte ptr [ebx+16]
 006735D4    test        byte ptr [eax*4+6E5CF1],20
>006735DC    jne         006735E4
 006735DE    and         word ptr [ebx+12],0FDFF
 006735E4    push        200
 006735E9    test        byte ptr [ebx+13],2
>006735ED    je          006735F6
 006735EF    mov         edx,1
>006735F4    jmp         006735F8
 006735F6    xor         edx,edx
 006735F8    push        edx
 006735F9    push        0
 006735FB    push        ebx
 006735FC    call        0067161C
 00673601    add         esp,10
 00673604    lea         eax,[ebx+18]
 00673607    movsx       ecx,byte ptr [eax+16]
 0067360B    test        byte ptr [ecx*4+6E5CF1],20
>00673613    jne         0067361E
 00673615    lea         eax,[ebx+18]
 00673618    and         word ptr [eax+12],0FDFF
 0067361E    push        200
 00673623    lea         edx,[ebx+18]
 00673626    test        byte ptr [edx+13],2
>0067362A    je          00673633
 0067362C    mov         ecx,2
>00673631    jmp         00673635
 00673633    xor         ecx,ecx
 00673635    push        ecx
 00673636    push        0
 00673638    lea         eax,[ebx+18]
 0067363B    push        eax
 0067363C    call        0067161C
 00673641    add         esp,10
 00673644    pop         ebx
 00673645    ret
*}
end;

//006736AC
procedure sub_006736AC;
begin
{*
 006736AC    mov         eax,[006EDFE8];0x0 gvar_006EDFE8
 006736B1    push        eax
 006736B2    call        0067A0F8
 006736B7    pop         ecx
 006736B8    ret
*}
end;

//006736BC
procedure sub_006736BC;
begin
{*
 006736BC    mov         eax,[006EDFE8];0x0 gvar_006EDFE8
 006736C1    push        eax
 006736C2    call        0067A108
 006736C7    pop         ecx
 006736C8    ret
*}
end;

//006736CC
{*procedure sub_006736CC(?:?);
begin
 006736CC    push        ebp
 006736CD    mov         ebp,esp
 006736CF    push        ebx
 006736D0    push        esi
 006736D1    mov         eax,dword ptr [ebp+8]
 006736D4    sub         eax,6E583C;gvar_006E583C
 006736DA    mov         ecx,18
 006736DF    cdq
 006736E0    idiv        eax,ecx
 006736E2    mov         ebx,eax
 006736E4    mov         eax,[006EDFEC];0x0 gvar_006EDFEC
 006736E9    test        eax,eax
>006736EB    je          006736F3
 006736ED    cmp         dword ptr [eax+ebx*4],0
>006736F1    jne         0067375C
 006736F3    call        006736AC
 006736F8    cmp         dword ptr ds:[6EDFEC],0;gvar_006EDFEC
>006736FF    jne         00673737
 00673701    mov         esi,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
 00673707    shl         esi,2
 0067370A    push        esi
 0067370B    call        0066F2C8
 00673710    pop         ecx
 00673711    mov         [006EDFEC],eax;gvar_006EDFEC
 00673716    test        eax,eax
>00673718    jne         00673725
 0067371A    push        6E647C
 0067371F    call        0067A118
 00673724    pop         ecx
 00673725    push        esi
 00673726    push        0
 00673728    mov         edx,dword ptr ds:[6EDFEC];0x0 gvar_006EDFEC
 0067372E    push        edx
 0067372F    call        0066F904
 00673734    add         esp,0C
 00673737    mov         eax,[006EDFEC];0x0 gvar_006EDFEC
 0067373C    cmp         dword ptr [eax+ebx*4],0
>00673740    jne         00673757
 00673742    push        6E6499
 00673747    mov         edx,ebx
 00673749    shl         edx,2
 0067374C    add         edx,eax
 0067374E    push        edx
 0067374F    call        0067A094
 00673754    add         esp,8
 00673757    call        006736BC
 0067375C    mov         ecx,dword ptr ds:[6EDFEC];0x0 gvar_006EDFEC
 00673762    mov         eax,dword ptr [ecx+ebx*4]
 00673765    push        eax
 00673766    call        0067A0F8
 0067376B    pop         ecx
 0067376C    pop         esi
 0067376D    pop         ebx
 0067376E    pop         ebp
 0067376F    ret
end;*}

//00673770
procedure sub_00673770;
begin
{*
 00673770    mov         eax,[006EDFEC];0x0 gvar_006EDFEC
 00673775    test        eax,eax
>00673777    je          00673788
 00673779    push        eax
 0067377A    call        0066F2D8
 0067377F    pop         ecx
 00673780    xor         edx,edx
 00673782    mov         dword ptr ds:[6EDFEC],edx;gvar_006EDFEC
 00673788    mov         dword ptr ds:[6E645C],1;gvar_006E645C
 00673792    ret
*}
end;

//00673794
{*procedure sub_00673794(?:?);
begin
 00673794    push        ebp
 00673795    mov         ebp,esp
 00673797    cmp         dword ptr ds:[6EDFEC],0;gvar_006EDFEC
>0067379E    jne         006737B7
 006737A0    push        122
 006737A5    push        6E64B9
 006737AA    push        6E64AE
 006737AF    call        00678AD8
 006737B4    add         esp,0C
 006737B7    mov         eax,dword ptr [ebp+8]
 006737BA    sub         eax,6E583C;gvar_006E583C
 006737C0    mov         ecx,18
 006737C5    cdq
 006737C6    idiv        eax,ecx
 006737C8    mov         edx,dword ptr ds:[6EDFEC];0x0 gvar_006EDFEC
 006737CE    mov         eax,dword ptr [edx+eax*4]
 006737D1    push        eax
 006737D2    call        0067A108
 006737D7    pop         ecx
 006737D8    cmp         dword ptr ds:[6E645C],0;gvar_006E645C
>006737DF    je          006737E6
 006737E1    call        00673770
 006737E6    pop         ebp
 006737E7    ret
end;*}

//006737E8
{*procedure sub_006737E8(?:?);
begin
 006737E8    push        ebp
 006737E9    mov         ebp,esp
 006737EB    mov         eax,dword ptr [ebp+8]
 006737EE    push        eax
 006737EF    call        KERNEL32.DeleteFileA
 006737F4    dec         eax
>006737F5    jne         006737FB
 006737F7    xor         eax,eax
>006737F9    jmp         00673800
 006737FB    call        00672568
 00673800    pop         ebp
 00673801    ret
end;*}

//00673804
{*procedure sub_00673804(?:?);
begin
 00673804    push        ebp
 00673805    mov         ebp,esp
 00673807    push        ebx
 00673808    mov         ebx,dword ptr [ebp+8]
 0067380B    mov         eax,1
 00673810    cmp         dword ptr [ebx+50],0
>00673814    je          00673846
 00673816    mov         edx,dword ptr [ebx+64]
 00673819    test        edx,edx
>0067381B    je          00673826
 0067381D    mov         ecx,dword ptr [edx]
 0067381F    cmp         ecx,dword ptr [ebx+5C]
>00673822    ja          00673826
 00673824    xor         eax,eax
 00673826    push        eax
 00673827    mov         edx,dword ptr [ebx+58]
 0067382A    push        edx
 0067382B    mov         ecx,dword ptr [ebx+50]
 0067382E    push        ecx
 0067382F    push        ebx
 00673830    call        dword ptr [ebx+54]
 00673833    add         esp,10
 00673836    test        eax,eax
>00673838    jne         00673841
 0067383A    mov         dword ptr [ebx+60],1
 00673841    xor         eax,eax
 00673843    mov         dword ptr [ebx+50],eax
 00673846    pop         ebx
 00673847    pop         ebp
 00673848    ret
end;*}

//0067384C
{*procedure sub_0067384C(?:?; ?:?);
begin
 0067384C    push        ebp
 0067384D    mov         ebp,esp
 0067384F    push        ebx
 00673850    mov         ebx,dword ptr [ebp+0C]
 00673853    cmp         dword ptr [ebx+50],50
>00673857    jl          00673860
 00673859    push        ebx
 0067385A    call        00673804
 0067385F    pop         ecx
 00673860    mov         eax,dword ptr [ebx+64]
 00673863    test        eax,eax
>00673865    je          0067386E
 00673867    mov         edx,dword ptr [eax]
 00673869    cmp         edx,dword ptr [ebx+5C]
>0067386C    jbe         0067387A
 0067386E    mov         ecx,dword ptr [ebx+50]
 00673871    mov         al,byte ptr [ebp+8]
 00673874    mov         byte ptr [ebx+ecx],al
 00673877    inc         dword ptr [ebx+50]
 0067387A    inc         dword ptr [ebx+5C]
 0067387D    pop         ebx
 0067387E    pop         ebp
 0067387F    ret
end;*}

//00673880
{*procedure sub_00673880(?:?; ?:?);
begin
 00673880    push        ebp
 00673881    mov         ebp,esp
 00673883    push        esi
 00673884    mov         ecx,7
 00673889    mov         eax,dword ptr [ebp+0C]
 0067388C    mov         esi,dword ptr [ebp+8]
 0067388F    add         eax,7
 00673892    mov         edx,esi
 00673894    and         edx,0F
 00673897    cmp         edx,0A
>0067389A    jge         006738A3
 0067389C    add         dl,30
 0067389F    mov         byte ptr [eax],dl
>006738A1    jmp         006738A8
 006738A3    add         dl,37
 006738A6    mov         byte ptr [eax],dl
 006738A8    shr         esi,4
 006738AB    dec         ecx
 006738AC    dec         eax
 006738AD    test        ecx,ecx
>006738AF    jge         00673892
 006738B1    pop         esi
 006738B2    pop         ebp
 006738B3    ret
end;*}

//006738B4
{*function sub_006738B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006738B4    push        ebp
 006738B5    mov         ebp,esp
 006738B7    add         esp,0FFFFFAE0
 006738BD    xor         eax,eax
 006738BF    push        ebx
 006738C0    push        esi
 006738C1    push        edi
 006738C2    mov         esi,dword ptr [ebp+10]
 006738C5    mov         dword ptr [ebp-4C0],eax
 006738CB    mov         dword ptr [ebp-4C4],eax
 006738D1    mov         dword ptr [ebp-4D0],eax
 006738D7    mov         edx,dword ptr [ebp+8]
 006738DA    mov         dword ptr [ebp-4CC],edx
 006738E0    mov         ecx,dword ptr [ebp+0C]
 006738E3    mov         dword ptr [ebp-4C8],ecx
 006738E9    cmp         dword ptr [ebp+14],0
>006738ED    je          006738F4
 006738EF    lea         eax,[ebp+18]
>006738F2    jmp         006738F6
 006738F4    xor         eax,eax
 006738F6    mov         dword ptr [ebp-4BC],eax
 006738FC    mov         bl,byte ptr [esi]
 006738FE    inc         esi
 006738FF    test        bl,bl
>00673901    je          006741C8
 00673907    cmp         bl,25
>0067390A    jne         00673914
 0067390C    mov         bl,byte ptr [esi]
 0067390E    cmp         bl,25
>00673911    jne         0067394B
 00673913    inc         esi
 00673914    xor         eax,eax
 00673916    mov         al,bl
 00673918    test        byte ptr [eax+6EDFF1],4
>0067391F    je          00673939
 00673921    cmp         byte ptr [esi],0
>00673924    je          00673939
 00673926    lea         edx,[ebp-520]
 0067392C    push        edx
 0067392D    push        ebx
 0067392E    call        0067384C
 00673933    add         esp,8
 00673936    mov         bl,byte ptr [esi]
 00673938    inc         esi
 00673939    lea         eax,[ebp-520]
 0067393F    push        eax
 00673940    push        ebx
 00673941    call        0067384C
 00673946    add         esp,8
>00673949    jmp         006738FC
 0067394B    lea         edx,[esi-1]
 0067394E    xor         eax,eax
 00673950    mov         dword ptr [ebp-14],edx
 00673953    xor         edx,edx
 00673955    mov         dword ptr [ebp-10],edx
 00673958    or          edx,0FFFFFFFF
 0067395B    mov         byte ptr [ebp-9],0
 0067395F    mov         dword ptr [ebp-8],edx
 00673962    mov         dword ptr [ebp-4],edx
 00673965    xor         ecx,ecx
 00673967    mov         edi,20
 0067396C    mov         dword ptr [ebp-1C],ecx
 0067396F    mov         bl,byte ptr [esi]
 00673971    inc         esi
 00673972    cmp         bl,20
>00673975    jl          006741BC
 0067397B    movsx       edx,bl
 0067397E    cmp         edx,7F
>00673981    jg          006741BC
 00673987    mov         ecx,ebx
 00673989    add         cl,0E0
 0067398C    xor         edx,edx
 0067398E    mov         dl,cl
 00673990    xor         ecx,ecx
 00673992    mov         cl,byte ptr [edx+6E64DA]
 00673998    cmp         ecx,1A
>0067399B    ja          0067396F
 0067399D    jmp         dword ptr [ecx*4+6739A4]
 0067399D    dd          00673A30
 0067399D    dd          00673A10
 0067399D    dd          00673A81
 0067399D    dd          00673A20
 0067399D    dd          00673ACB
 0067399D    dd          00673AE1
 0067399D    dd          00673B32
 0067399D    dd          00673B3F
 0067399D    dd          00673B52
 0067399D    dd          00673A64
 0067399D    dd          00673C0F
 0067399D    dd          00673BE8
 0067399D    dd          00673BF1
 0067399D    dd          00673BFA
 0067399D    dd          00673D5E
 0067399D    dd          00673ED1
 0067399D    dd          00673DA1
 0067399D    dd          00673E1C
 0067399D    dd          00673D96
 0067399D    dd          00673E11
 0067399D    dd          0067415D
 0067399D    dd          006741BC
 0067399D    dd          006741BC
 0067399D    dd          006741BC
 0067399D    dd          00673A4A
 0067399D    dd          00673A57
 0067399D    dd          00673B65
 00673A10    test        eax,eax
>00673A12    jg          006741BC
 00673A18    or          edi,1
>00673A1B    jmp         0067396F
 00673A20    test        eax,eax
>00673A22    jg          006741BC
 00673A28    or          edi,2
>00673A2B    jmp         0067396F
 00673A30    test        eax,eax
>00673A32    jg          006741BC
 00673A38    cmp         byte ptr [ebp-9],2B
>00673A3C    je          0067396F
 00673A42    mov         byte ptr [ebp-9],bl
>00673A45    jmp         0067396F
 00673A4A    and         edi,0FFFFFFDF
 00673A4D    mov         eax,5
>00673A52    jmp         0067396F
 00673A57    or          edi,20
 00673A5A    mov         eax,5
>00673A5F    jmp         0067396F
 00673A64    test        eax,eax
>00673A66    jg          00673AE1
 00673A68    test        edi,2
>00673A6E    jne         0067396F
 00673A74    or          edi,8
 00673A77    mov         eax,1
>00673A7C    jmp         0067396F
 00673A81    add         dword ptr [ebp+1C],4
 00673A85    mov         edx,dword ptr [ebp+1C]
 00673A88    cmp         eax,2
 00673A8B    mov         ecx,dword ptr [edx-4]
 00673A8E    mov         dword ptr [ebp-30],ecx
>00673A91    jge         00673AB6
 00673A93    cmp         dword ptr [ebp-30],0
>00673A97    jge         00673AA6
 00673A99    mov         eax,dword ptr [ebp-30]
 00673A9C    neg         eax
 00673A9E    mov         dword ptr [ebp-4],eax
 00673AA1    or          edi,2
>00673AA4    jmp         00673AAC
 00673AA6    mov         edx,dword ptr [ebp-30]
 00673AA9    mov         dword ptr [ebp-4],edx
 00673AAC    mov         eax,3
>00673AB1    jmp         0067396F
 00673AB6    cmp         eax,4
>00673AB9    jne         006741BC
 00673ABF    mov         edx,dword ptr [ebp-30]
 00673AC2    inc         eax
 00673AC3    mov         dword ptr [ebp-8],edx
>00673AC6    jmp         0067396F
 00673ACB    cmp         eax,4
>00673ACE    jge         006741BC
 00673AD4    mov         eax,4
 00673AD9    inc         dword ptr [ebp-8]
>00673ADC    jmp         0067396F
 00673AE1    add         bl,0D0
 00673AE4    cmp         eax,2
>00673AE7    jg          00673B14
 00673AE9    cmp         dword ptr [ebp-4],0FFFFFFFF
 00673AED    mov         eax,2
>00673AF2    jne         00673AFF
 00673AF4    movsx       edx,bl
 00673AF7    mov         dword ptr [ebp-4],edx
>00673AFA    jmp         0067396F
 00673AFF    mov         ecx,dword ptr [ebp-4]
 00673B02    add         ecx,ecx
 00673B04    lea         ecx,[ecx+ecx*4]
 00673B07    movsx       edx,bl
 00673B0A    add         ecx,edx
 00673B0C    mov         dword ptr [ebp-4],ecx
>00673B0F    jmp         0067396F
 00673B14    cmp         eax,4
>00673B17    jne         006741BC
 00673B1D    mov         ecx,dword ptr [ebp-8]
 00673B20    add         ecx,ecx
 00673B22    lea         ecx,[ecx+ecx*4]
 00673B25    movsx       edx,bl
 00673B28    add         ecx,edx
 00673B2A    mov         dword ptr [ebp-8],ecx
>00673B2D    jmp         0067396F
 00673B32    or          edi,10
 00673B35    mov         eax,5
>00673B3A    jmp         0067396F
 00673B3F    or          edi,100
 00673B45    mov         eax,5
 00673B4A    and         edi,0FFFFFFEF
>00673B4D    jmp         0067396F
 00673B52    or          edi,200
 00673B58    mov         eax,5
 00673B5D    and         edi,0FFFFFFEF
>00673B60    jmp         0067396F
 00673B65    cmp         byte ptr [esi],36
>00673B68    jne         00673B89
 00673B6A    cmp         byte ptr [esi+1],34
>00673B6E    jne         00673B89
 00673B70    add         esi,2
 00673B73    or          edi,100
 00673B79    and         edi,0FFFFFDEF
 00673B7F    mov         eax,5
>00673B84    jmp         0067396F
 00673B89    cmp         byte ptr [esi],33
>00673B8C    jne         00673BAA
 00673B8E    cmp         byte ptr [esi+1],32
>00673B92    jne         00673BAA
 00673B94    add         esi,2
 00673B97    or          edi,10
 00673B9A    and         edi,0FFFFFCFF
 00673BA0    mov         eax,5
>00673BA5    jmp         0067396F
 00673BAA    cmp         byte ptr [esi],31
>00673BAD    jne         00673BCE
 00673BAF    cmp         byte ptr [esi+1],36
>00673BB3    jne         00673BCE
 00673BB5    add         esi,2
 00673BB8    or          edi,200
 00673BBE    and         edi,0FFFFFEEF
 00673BC4    mov         eax,5
>00673BC9    jmp         0067396F
 00673BCE    cmp         byte ptr [esi],38
>00673BD1    jne         0067396F
 00673BD7    inc         esi
 00673BD8    and         edi,0FFFFFCEF
 00673BDE    mov         eax,5
>00673BE3    jmp         0067396F
 00673BE8    mov         dword ptr [ebp-38],8
>00673BEF    jmp         00673C07
 00673BF1    mov         dword ptr [ebp-38],0A
>00673BF8    jmp         00673C07
 00673BFA    mov         dword ptr [ebp-38],10
 00673C01    lea         edx,[ebx-17]
 00673C04    mov         byte ptr [ebp-1D],dl
 00673C07    mov         byte ptr [ebp-9],0
 00673C0B    xor         ecx,ecx
>00673C0D    jmp         00673C18
 00673C0F    mov         dword ptr [ebp-38],0A
 00673C16    mov         cl,1
 00673C18    test        edi,100
>00673C1E    je          00673C38
 00673C20    add         dword ptr [ebp+1C],8
 00673C24    mov         eax,dword ptr [ebp+1C]
 00673C27    mov         edx,dword ptr [eax-8]
 00673C2A    mov         dword ptr [ebp-28],edx
 00673C2D    mov         edx,dword ptr [eax-4]
 00673C30    mov         dword ptr [ebp-24],edx
>00673C33    jmp         00673CC8
 00673C38    test        edi,10
>00673C3E    je          00673C6A
 00673C40    add         dword ptr [ebp+1C],4
 00673C44    mov         eax,dword ptr [ebp+1C]
 00673C47    test        cl,cl
 00673C49    mov         edx,dword ptr [eax-4]
 00673C4C    mov         dword ptr [ebp-2C],edx
>00673C4F    je          00673C5D
 00673C51    mov         eax,dword ptr [ebp-2C]
 00673C54    cdq
 00673C55    mov         dword ptr [ebp-28],eax
 00673C58    mov         dword ptr [ebp-24],edx
>00673C5B    jmp         00673CC8
 00673C5D    mov         eax,dword ptr [ebp-2C]
 00673C60    xor         edx,edx
 00673C62    mov         dword ptr [ebp-28],eax
 00673C65    mov         dword ptr [ebp-24],edx
>00673C68    jmp         00673CC8
 00673C6A    test        edi,200
>00673C70    je          00673CA0
 00673C72    add         dword ptr [ebp+1C],4
 00673C76    mov         eax,dword ptr [ebp+1C]
 00673C79    test        cl,cl
 00673C7B    mov         dx,word ptr [eax-4]
 00673C7F    mov         word ptr [ebp-32],dx
>00673C83    je          00673C92
 00673C85    movsx       eax,word ptr [ebp-32]
 00673C89    cdq
 00673C8A    mov         dword ptr [ebp-28],eax
 00673C8D    mov         dword ptr [ebp-24],edx
>00673C90    jmp         00673CC8
 00673C92    movzx       eax,word ptr [ebp-32]
 00673C96    xor         edx,edx
 00673C98    mov         dword ptr [ebp-28],eax
 00673C9B    mov         dword ptr [ebp-24],edx
>00673C9E    jmp         00673CC8
 00673CA0    add         dword ptr [ebp+1C],4
 00673CA4    mov         eax,dword ptr [ebp+1C]
 00673CA7    test        cl,cl
 00673CA9    mov         edx,dword ptr [eax-4]
 00673CAC    mov         dword ptr [ebp-30],edx
>00673CAF    je          00673CBD
 00673CB1    mov         eax,dword ptr [ebp-30]
 00673CB4    cdq
 00673CB5    mov         dword ptr [ebp-28],eax
 00673CB8    mov         dword ptr [ebp-24],edx
>00673CBB    jmp         00673CC8
 00673CBD    mov         eax,dword ptr [ebp-30]
 00673CC0    xor         edx,edx
 00673CC2    mov         dword ptr [ebp-28],eax
 00673CC5    mov         dword ptr [ebp-24],edx
 00673CC8    lea         eax,[ebp-0B7]
 00673CCE    mov         dword ptr [ebp-18],eax
 00673CD1    cmp         dword ptr [ebp-24],0
>00673CD5    jne         00673CEB
 00673CD7    cmp         dword ptr [ebp-28],0
>00673CDB    jne         00673CEB
 00673CDD    cmp         dword ptr [ebp-8],0
>00673CE1    jne         00673CEE
 00673CE3    mov         edx,dword ptr [ebp-18]
 00673CE6    mov         byte ptr [edx],0
>00673CE9    jmp         00673D09
 00673CEB    or          edi,4
 00673CEE    mov         al,byte ptr [ebp-1D]
 00673CF1    push        eax
 00673CF2    push        ecx
 00673CF3    mov         edx,dword ptr [ebp-38]
 00673CF6    push        edx
 00673CF7    mov         ecx,dword ptr [ebp-18]
 00673CFA    push        ecx
 00673CFB    push        dword ptr [ebp-24]
 00673CFE    push        dword ptr [ebp-28]
 00673D01    call        00676EF8
 00673D06    add         esp,18
 00673D09    cmp         dword ptr [ebp-8],0
>00673D0D    jl          00673F2C
 00673D13    mov         edx,dword ptr [ebp-18]
 00673D16    push        edx
 00673D17    call        0066FAB4
 00673D1C    pop         ecx
 00673D1D    mov         dword ptr [ebp-3C],eax
 00673D20    mov         dword ptr [ebp-40],eax
 00673D23    mov         edx,dword ptr [ebp-18]
 00673D26    cmp         byte ptr [edx],2D
>00673D29    jne         00673D30
 00673D2B    dec         dword ptr [ebp-3C]
>00673D2E    jmp         00673D44
 00673D30    cmp         byte ptr [ebp-9],0
>00673D34    je          00673D44
 00673D36    inc         dword ptr [ebp-40]
 00673D39    dec         dword ptr [ebp-18]
 00673D3C    mov         ecx,dword ptr [ebp-18]
 00673D3F    mov         al,byte ptr [ebp-9]
 00673D42    mov         byte ptr [ecx],al
 00673D44    mov         edx,dword ptr [ebp-8]
 00673D47    cmp         edx,dword ptr [ebp-3C]
>00673D4A    jle         00673F9A
 00673D50    mov         ecx,dword ptr [ebp-8]
 00673D53    sub         ecx,dword ptr [ebp-3C]
 00673D56    mov         dword ptr [ebp-10],ecx
>00673D59    jmp         00673F9A
 00673D5E    add         dword ptr [ebp+1C],4
 00673D62    mov         eax,dword ptr [ebp+1C]
 00673D65    lea         ecx,[ebp-0B8]
 00673D6B    mov         edx,dword ptr [eax-4]
 00673D6E    mov         dword ptr [ebp-18],edx
 00673D71    push        ecx
 00673D72    mov         eax,dword ptr [ebp-18]
 00673D75    push        eax
 00673D76    call        00673880
 00673D7B    add         esp,8
 00673D7E    mov         byte ptr [ebp-0B0],0
 00673D85    and         edi,0FFFFFFFB
 00673D88    lea         edx,[ebp-0B8]
 00673D8E    mov         dword ptr [ebp-18],edx
>00673D91    jmp         00673F2C
 00673D96    test        edi,210
>00673D9C    jne         00673DA1
 00673D9E    or          edi,10
 00673DA1    test        edi,10
>00673DA7    je          00673DE0
 00673DA9    add         dword ptr [ebp+1C],4
 00673DAD    mov         ecx,dword ptr [ebp+1C]
 00673DB0    lea         edx,[ebp-0B8]
 00673DB6    mov         ax,word ptr [ecx-4]
 00673DBA    mov         word ptr [ebp-0B8],ax
 00673DC1    mov         word ptr [ebp-0B6],0
 00673DCA    mov         dword ptr [ebp-1C],1
 00673DD1    mov         dword ptr [ebp-18],edx
 00673DD4    mov         dword ptr [ebp-40],1
>00673DDB    jmp         00673F9A
 00673DE0    add         dword ptr [ebp+1C],4
 00673DE4    mov         ecx,dword ptr [ebp+1C]
 00673DE7    lea         edx,[ebp-0B8]
 00673DED    mov         al,byte ptr [ecx-4]
 00673DF0    xor         ecx,ecx
 00673DF2    mov         byte ptr [ebp-0B8],al
 00673DF8    mov         byte ptr [ebp-0B7],0
 00673DFF    mov         dword ptr [ebp-18],edx
 00673E02    mov         dword ptr [ebp-1C],ecx
 00673E05    mov         dword ptr [ebp-40],1
>00673E0C    jmp         00673F9A
 00673E11    test        edi,210
>00673E17    jne         00673E1C
 00673E19    or          edi,10
 00673E1C    test        edi,10
>00673E22    je          00673E47
 00673E24    add         dword ptr [ebp+1C],4
 00673E28    mov         eax,dword ptr [ebp+1C]
 00673E2B    mov         edx,dword ptr [eax-4]
 00673E2E    mov         dword ptr [ebp-18],edx
 00673E31    mov         dword ptr [ebp-1C],1
 00673E38    cmp         dword ptr [ebp-18],0
>00673E3C    jne         00673E66
 00673E3E    mov         dword ptr [ebp-18],6E64CC
>00673E45    jmp         00673E66
 00673E47    add         dword ptr [ebp+1C],4
 00673E4B    mov         ecx,dword ptr [ebp+1C]
 00673E4E    xor         edx,edx
 00673E50    mov         eax,dword ptr [ecx-4]
 00673E53    mov         dword ptr [ebp-18],eax
 00673E56    mov         dword ptr [ebp-1C],edx
 00673E59    cmp         dword ptr [ebp-18],0
>00673E5D    jne         00673E66
 00673E5F    mov         dword ptr [ebp-18],6E64C4
 00673E66    cmp         dword ptr [ebp-1C],0
>00673E6A    je          00673EA0
 00673E6C    cmp         dword ptr [ebp-8],0
>00673E70    jl          00673E77
 00673E72    mov         eax,dword ptr [ebp-8]
>00673E75    jmp         00673E7C
 00673E77    mov         eax,7FFFFFFF
 00673E7C    mov         edx,dword ptr [ebp-18]
 00673E7F    xor         ecx,ecx
 00673E81    mov         dword ptr [ebp-40],ecx
>00673E84    jmp         00673E8D
 00673E86    dec         eax
 00673E87    inc         dword ptr [ebp-40]
 00673E8A    add         edx,2
 00673E8D    test        eax,eax
>00673E8F    je          00673F9A
 00673E95    cmp         word ptr [edx],0
>00673E99    jne         00673E86
>00673E9B    jmp         00673F9A
 00673EA0    cmp         dword ptr [ebp-8],0
>00673EA4    jl          00673EAB
 00673EA6    mov         eax,dword ptr [ebp-8]
>00673EA9    jmp         00673EB0
 00673EAB    mov         eax,7FFFFFFF
 00673EB0    mov         edx,dword ptr [ebp-18]
 00673EB3    xor         ecx,ecx
 00673EB5    mov         dword ptr [ebp-40],ecx
>00673EB8    jmp         00673EBF
 00673EBA    dec         eax
 00673EBB    inc         dword ptr [ebp-40]
 00673EBE    inc         edx
 00673EBF    test        eax,eax
>00673EC1    je          00673F9A
 00673EC7    cmp         byte ptr [edx],0
>00673ECA    jne         00673EBA
>00673ECC    jmp         00673F9A
 00673ED1    test        edi,100
>00673ED7    je          00673EE0
 00673ED9    mov         eax,8
>00673EDE    jmp         00673EE5
 00673EE0    mov         eax,6
 00673EE5    mov         edx,edi
 00673EE7    push        eax
 00673EE8    and         dl,1
 00673EEB    lea         ecx,[ebp-0B7]
 00673EF1    push        edx
 00673EF2    push        ebx
 00673EF3    mov         dword ptr [ebp-18],ecx
 00673EF6    push        ecx
 00673EF7    cmp         dword ptr [ebp-8],0
>00673EFB    jge         00673F04
 00673EFD    mov         eax,6
>00673F02    jmp         00673F07
 00673F04    mov         eax,dword ptr [ebp-8]
 00673F07    push        eax
 00673F08    mov         edx,dword ptr [ebp+1C]
 00673F0B    push        edx
 00673F0C    call        00676DE8
 00673F11    add         esp,18
 00673F14    mov         ecx,edi
 00673F16    and         ecx,100
 00673F1C    push        ecx
 00673F1D    mov         eax,dword ptr [ebp+1C]
 00673F20    push        eax
 00673F21    call        00676DEE
 00673F26    add         esp,8
 00673F29    mov         dword ptr [ebp+1C],eax
 00673F2C    test        edi,8
>00673F32    je          00673F63
 00673F34    cmp         dword ptr [ebp-4],0
>00673F38    jle         00673F63
 00673F3A    mov         edx,dword ptr [ebp-18]
 00673F3D    push        edx
 00673F3E    call        0066FAB4
 00673F43    pop         ecx
 00673F44    mov         dword ptr [ebp-40],eax
 00673F47    mov         ecx,dword ptr [ebp-18]
 00673F4A    cmp         byte ptr [ecx],2D
>00673F4D    jne         00673F52
 00673F4F    dec         dword ptr [ebp-40]
 00673F52    mov         eax,dword ptr [ebp-4]
 00673F55    cmp         eax,dword ptr [ebp-40]
>00673F58    jle         00673F63
 00673F5A    mov         edx,dword ptr [ebp-4]
 00673F5D    sub         edx,dword ptr [ebp-40]
 00673F60    mov         dword ptr [ebp-10],edx
 00673F63    mov         ecx,dword ptr [ebp-18]
 00673F66    cmp         byte ptr [ecx],2D
>00673F69    je          00673F71
 00673F6B    cmp         byte ptr [ebp-9],0
>00673F6F    je          00673F8D
 00673F71    mov         eax,dword ptr [ebp-18]
 00673F74    cmp         byte ptr [eax],2D
>00673F77    je          00673F84
 00673F79    dec         dword ptr [ebp-18]
 00673F7C    mov         edx,dword ptr [ebp-18]
 00673F7F    mov         cl,byte ptr [ebp-9]
 00673F82    mov         byte ptr [edx],cl
 00673F84    cmp         dword ptr [ebp-10],0
>00673F88    jle         00673F8D
 00673F8A    dec         dword ptr [ebp-10]
 00673F8D    mov         eax,dword ptr [ebp-18]
 00673F90    push        eax
 00673F91    call        0066FAB4
 00673F96    pop         ecx
 00673F97    mov         dword ptr [ebp-40],eax
 00673F9A    test        edi,1
>00673FA0    je          00673FD2
 00673FA2    cmp         bl,6F
>00673FA5    jne         00673FB6
 00673FA7    cmp         dword ptr [ebp-10],0
>00673FAB    jg          00673FD2
 00673FAD    mov         dword ptr [ebp-10],1
>00673FB4    jmp         00673FD2
 00673FB6    cmp         bl,78
>00673FB9    je          00673FC0
 00673FBB    cmp         bl,58
>00673FBE    jne         00673FD2
 00673FC0    or          edi,40
 00673FC3    sub         dword ptr [ebp-4],2
 00673FC7    sub         dword ptr [ebp-10],2
>00673FCB    jns         00673FD2
 00673FCD    xor         edx,edx
 00673FCF    mov         dword ptr [ebp-10],edx
 00673FD2    mov         ecx,dword ptr [ebp-10]
 00673FD5    add         dword ptr [ebp-40],ecx
 00673FD8    test        edi,2
>00673FDE    jne         00674004
 00673FE0    mov         eax,dword ptr [ebp-4]
 00673FE3    cmp         eax,dword ptr [ebp-40]
>00673FE6    jle         00674004
 00673FE8    lea         edx,[ebp-520]
 00673FEE    push        edx
 00673FEF    push        20
 00673FF1    call        0067384C
 00673FF6    add         esp,8
 00673FF9    dec         dword ptr [ebp-4]
 00673FFC    mov         ecx,dword ptr [ebp-4]
 00673FFF    cmp         ecx,dword ptr [ebp-40]
>00674002    jg          00673FE8
 00674004    test        edi,40
>0067400A    je          0067402D
 0067400C    lea         eax,[ebp-520]
 00674012    push        eax
 00674013    push        30
 00674015    call        0067384C
 0067401A    add         esp,8
 0067401D    lea         edx,[ebp-520]
 00674023    push        edx
 00674024    push        ebx
 00674025    call        0067384C
 0067402A    add         esp,8
 0067402D    cmp         dword ptr [ebp-10],0
>00674031    jle         00674093
 00674033    mov         ecx,dword ptr [ebp-10]
 00674036    sub         dword ptr [ebp-40],ecx
 00674039    mov         eax,dword ptr [ebp-10]
 0067403C    sub         dword ptr [ebp-4],eax
 0067403F    mov         edx,dword ptr [ebp-18]
 00674042    cmp         byte ptr [edx],2D
>00674045    je          00674057
 00674047    mov         ecx,dword ptr [ebp-18]
 0067404A    cmp         byte ptr [ecx],20
>0067404D    je          00674057
 0067404F    mov         eax,dword ptr [ebp-18]
 00674052    cmp         byte ptr [eax],2B
>00674055    jne         00674088
 00674057    lea         edx,[ebp-520]
 0067405D    push        edx
 0067405E    mov         ecx,dword ptr [ebp-18]
 00674061    inc         dword ptr [ebp-18]
 00674064    mov         al,byte ptr [ecx]
 00674066    push        eax
 00674067    call        0067384C
 0067406C    add         esp,8
 0067406F    dec         dword ptr [ebp-40]
 00674072    dec         dword ptr [ebp-4]
>00674075    jmp         00674088
 00674077    lea         edx,[ebp-520]
 0067407D    push        edx
 0067407E    push        30
 00674080    call        0067384C
 00674085    add         esp,8
 00674088    mov         ecx,dword ptr [ebp-10]
 0067408B    add         dword ptr [ebp-10],0FFFFFFFF
 0067408F    test        ecx,ecx
>00674091    jne         00674077
 00674093    cmp         dword ptr [ebp-1C],0
>00674097    je          00674109
 00674099    mov         eax,dword ptr [ebp-18]
 0067409C    xor         edx,edx
 0067409E    mov         dword ptr [ebp-44],eax
 006740A1    mov         dword ptr [ebp-4C],edx
 006740A4    mov         ecx,dword ptr [ebp-40]
 006740A7    mov         dword ptr [ebp-54],ecx
>006740AA    jmp         006740EF
 006740AC    mov         eax,dword ptr [ebp-44]
 006740AF    add         dword ptr [ebp-44],2
 006740B3    mov         dx,word ptr [eax]
 006740B6    push        edx
 006740B7    lea         ecx,[ebp-56]
 006740BA    push        ecx
 006740BB    call        00676510
 006740C0    add         esp,8
 006740C3    mov         dword ptr [ebp-50],eax
 006740C6    cmp         dword ptr [ebp-50],0
>006740CA    jle         006740FA
 006740CC    xor         ecx,ecx
 006740CE    mov         eax,dword ptr [ebp-4C]
 006740D1    lea         edx,[ebp+eax-4B8]
 006740D8    lea         eax,[ebp-56]
 006740DB    cmp         ecx,dword ptr [ebp-50]
>006740DE    jge         006740EF
 006740E0    mov         bl,byte ptr [eax]
 006740E2    inc         eax
 006740E3    mov         byte ptr [edx],bl
 006740E5    inc         edx
 006740E6    inc         dword ptr [ebp-4C]
 006740E9    inc         ecx
 006740EA    cmp         ecx,dword ptr [ebp-50]
>006740ED    jl          006740E0
 006740EF    mov         eax,dword ptr [ebp-54]
 006740F2    add         dword ptr [ebp-54],0FFFFFFFF
 006740F6    test        eax,eax
>006740F8    jg          006740AC
 006740FA    lea         edx,[ebp-4B8]
 00674100    mov         dword ptr [ebp-18],edx
 00674103    mov         ecx,dword ptr [ebp-4C]
 00674106    mov         dword ptr [ebp-40],ecx
 00674109    cmp         dword ptr [ebp-40],0
>0067410D    je          0067414D
 0067410F    mov         eax,dword ptr [ebp-40]
 00674112    sub         dword ptr [ebp-4],eax
>00674115    jmp         0067412F
 00674117    lea         edx,[ebp-520]
 0067411D    push        edx
 0067411E    mov         ecx,dword ptr [ebp-18]
 00674121    inc         dword ptr [ebp-18]
 00674124    mov         al,byte ptr [ecx]
 00674126    push        eax
 00674127    call        0067384C
 0067412C    add         esp,8
 0067412F    mov         edx,dword ptr [ebp-40]
 00674132    add         dword ptr [ebp-40],0FFFFFFFF
 00674136    test        edx,edx
>00674138    jne         00674117
>0067413A    jmp         0067414D
 0067413C    lea         ecx,[ebp-520]
 00674142    push        ecx
 00674143    push        20
 00674145    call        0067384C
 0067414A    add         esp,8
 0067414D    mov         eax,dword ptr [ebp-4]
 00674150    add         dword ptr [ebp-4],0FFFFFFFF
 00674154    test        eax,eax
>00674156    jg          0067413C
>00674158    jmp         006738FC
 0067415D    add         dword ptr [ebp+1C],4
 00674161    mov         edx,dword ptr [ebp+1C]
 00674164    test        edi,10
 0067416A    mov         ecx,dword ptr [edx-4]
 0067416D    mov         dword ptr [ebp-18],ecx
>00674170    je          00674182
 00674172    mov         eax,dword ptr [ebp-18]
 00674175    mov         edx,dword ptr [ebp-4C4]
 0067417B    mov         dword ptr [eax],edx
>0067417D    jmp         006738FC
 00674182    test        edi,200
>00674188    je          0067419C
 0067418A    mov         ecx,dword ptr [ebp-18]
 0067418D    mov         ax,word ptr [ebp-4C4]
 00674194    mov         word ptr [ecx],ax
>00674197    jmp         006738FC
 0067419C    mov         edx,dword ptr [ebp-18]
 0067419F    mov         ecx,dword ptr [ebp-4C4]
 006741A5    mov         dword ptr [edx],ecx
>006741A7    jmp         006738FC
 006741AC    lea         edx,[ebp-520]
 006741B2    push        edx
 006741B3    push        eax
 006741B4    call        0067384C
 006741B9    add         esp,8
 006741BC    mov         eax,dword ptr [ebp-14]
 006741BF    inc         dword ptr [ebp-14]
 006741C2    mov         al,byte ptr [eax]
 006741C4    test        al,al
>006741C6    jne         006741AC
 006741C8    lea         ecx,[ebp-520]
 006741CE    push        ecx
 006741CF    call        00673804
 006741D4    cmp         dword ptr [ebp-4C0],0
 006741DB    pop         ecx
>006741DC    je          006741E3
 006741DE    or          eax,0FFFFFFFF
>006741E1    jmp         006741E9
 006741E3    mov         eax,dword ptr [ebp-4C4]
 006741E9    pop         edi
 006741EA    pop         esi
 006741EB    pop         ebx
 006741EC    mov         esp,ebp
 006741EE    pop         ebp
 006741EF    ret
end;*}

//0067425C
{*function sub_0067425C(?:?):?;
begin
 0067425C    push        ebp
 0067425D    mov         ebp,esp
 0067425F    push        ebx
 00674260    push        esi
 00674261    mov         ebx,dword ptr [ebp+8]
 00674264    push        ebx
 00674265    call        006736CC
 0067426A    pop         ecx
 0067426B    push        ebx
 0067426C    call        00672634
 00674271    pop         ecx
 00674272    mov         esi,eax
 00674274    push        ebx
 00674275    call        00673794
 0067427A    pop         ecx
 0067427B    mov         eax,esi
 0067427D    pop         esi
 0067427E    pop         ebx
 0067427F    pop         ebp
 00674280    ret
end;*}

//00674284
{*function sub_00674284(?:?; ?:?; ?:?):?;
begin
 00674284    push        ebp
 00674285    mov         ebp,esp
 00674287    push        ebx
 00674288    push        esi
 00674289    push        edi
 0067428A    mov         edi,dword ptr [ebp+0C]
 0067428D    mov         ebx,dword ptr [ebp+8]
 00674290    xor         esi,esi
 00674292    mov         eax,dword ptr [ebp+10]
 00674295    push        eax
 00674296    push        0
 00674298    mov         edx,dword ptr [ebp+0C]
 0067429B    push        edx
 0067429C    call        0066F904
 006742A1    add         esp,0C
>006742A4    jmp         00674535
 006742A9    movsx       ecx,al
 006742AC    cmp         ecx,68
>006742AF    jg          006742E8
>006742B1    je          00674329
 006742B3    cmp         ecx,4D
>006742B6    jg          006742D5
>006742B8    je          0067446D
 006742BE    sub         ecx,27
>006742C1    je          00674532
 006742C7    sub         ecx,21
>006742CA    je          006743B0
>006742D0    jmp         00674526
 006742D5    sub         ecx,64
>006742D8    je          006743FC
 006742DE    sub         ecx,3
>006742E1    je          0067430B
>006742E3    jmp         00674526
 006742E8    sub         ecx,6D
>006742EB    je          00674356
 006742ED    sub         ecx,6
>006742F0    je          00674383
 006742F6    dec         ecx
>006742F7    je          006743DD
 006742FD    sub         ecx,5
>00674300    je          006744D8
>00674306    jmp         00674526
 0067430B    cmp         byte ptr [ebx+1],67
>0067430F    jne         00674532
 00674315    push        6E677C
 0067431A    push        edi
 0067431B    call        0066F9A8
 00674320    add         esp,8
 00674323    inc         ebx
>00674324    jmp         00674532
 00674329    cmp         byte ptr [ebx+1],68
>0067432D    jne         00674343
 0067432F    push        6E677F
 00674334    push        edi
 00674335    call        0066F9A8
 0067433A    add         esp,8
 0067433D    inc         ebx
>0067433E    jmp         00674532
 00674343    push        6E6784
 00674348    push        edi
 00674349    call        0066F9A8
 0067434E    add         esp,8
>00674351    jmp         00674532
 00674356    cmp         byte ptr [ebx+1],6D
>0067435A    jne         00674370
 0067435C    push        6E6787
 00674361    push        edi
 00674362    call        0066F9A8
 00674367    add         esp,8
 0067436A    inc         ebx
>0067436B    jmp         00674532
 00674370    push        6E678C
 00674375    push        edi
 00674376    call        0066F9A8
 0067437B    add         esp,8
>0067437E    jmp         00674532
 00674383    cmp         byte ptr [ebx+1],73
>00674387    jne         0067439D
 00674389    push        6E678F
 0067438E    push        edi
 0067438F    call        0066F9A8
 00674394    add         esp,8
 00674397    inc         ebx
>00674398    jmp         00674532
 0067439D    push        6E6794
 006743A2    push        edi
 006743A3    call        0066F9A8
 006743A8    add         esp,8
>006743AB    jmp         00674532
 006743B0    cmp         byte ptr [ebx+1],48
>006743B4    jne         006743CA
 006743B6    push        6E6797
 006743BB    push        edi
 006743BC    call        0066F9A8
 006743C1    add         esp,8
 006743C4    inc         ebx
>006743C5    jmp         00674532
 006743CA    push        6E679C
 006743CF    push        edi
 006743D0    call        0066F9A8
 006743D5    add         esp,8
>006743D8    jmp         00674532
 006743DD    cmp         byte ptr [ebx+1],74
>006743E1    jne         006743E9
 006743E3    inc         ebx
>006743E4    jmp         00674532
 006743E9    push        6E679F
 006743EE    push        edi
 006743EF    call        0066F9A8
 006743F4    add         esp,8
>006743F7    jmp         00674532
 006743FC    mov         eax,ebx
>006743FE    jmp         00674401
 00674400    inc         esi
 00674401    mov         dl,byte ptr [eax]
 00674403    inc         eax
 00674404    cmp         dl,64
>00674407    je          00674400
 00674409    dec         esi
>0067440A    je          0067441A
 0067440C    dec         esi
>0067440D    je          0067442D
 0067440F    dec         esi
>00674410    je          00674441
 00674412    dec         esi
>00674413    je          00674457
>00674415    jmp         00674532
 0067441A    push        6E67A2
 0067441F    push        edi
 00674420    call        0066F9A8
 00674425    add         esp,8
>00674428    jmp         00674532
 0067442D    inc         ebx
 0067442E    push        6E67A5
 00674433    push        edi
 00674434    call        0066F9A8
 00674439    add         esp,8
>0067443C    jmp         00674532
 00674441    add         ebx,2
 00674444    push        6E67AA
 00674449    push        edi
 0067444A    call        0066F9A8
 0067444F    add         esp,8
>00674452    jmp         00674532
 00674457    add         ebx,3
 0067445A    push        6E67AD
 0067445F    push        edi
 00674460    call        0066F9A8
 00674465    add         esp,8
>00674468    jmp         00674532
 0067446D    mov         eax,ebx
>0067446F    jmp         00674472
 00674471    inc         esi
 00674472    mov         dl,byte ptr [eax]
 00674474    inc         eax
 00674475    cmp         dl,4D
>00674478    je          00674471
 0067447A    dec         esi
>0067447B    je          0067448B
 0067447D    dec         esi
>0067447E    je          0067449E
 00674480    dec         esi
>00674481    je          006744B2
 00674483    dec         esi
>00674484    je          006744C5
>00674486    jmp         00674532
 0067448B    push        6E67B0
 00674490    push        edi
 00674491    call        0066F9A8
 00674496    add         esp,8
>00674499    jmp         00674532
 0067449E    inc         ebx
 0067449F    push        6E67B3
 006744A4    push        edi
 006744A5    call        0066F9A8
 006744AA    add         esp,8
>006744AD    jmp         00674532
 006744B2    add         ebx,2
 006744B5    push        6E67B8
 006744BA    push        edi
 006744BB    call        0066F9A8
 006744C0    add         esp,8
>006744C3    jmp         00674532
 006744C5    add         ebx,3
 006744C8    push        6E67BB
 006744CD    push        edi
 006744CE    call        0066F9A8
 006744D3    add         esp,8
>006744D6    jmp         00674532
 006744D8    mov         eax,ebx
>006744DA    jmp         006744DD
 006744DC    inc         esi
 006744DD    mov         dl,byte ptr [eax]
 006744DF    inc         eax
 006744E0    cmp         dl,79
>006744E3    je          006744DC
 006744E5    dec         esi
>006744E6    je          006744F2
 006744E8    dec         esi
>006744E9    je          00674502
 006744EB    sub         esi,2
>006744EE    je          00674513
>006744F0    jmp         00674532
 006744F2    push        6E67BE
 006744F7    push        edi
 006744F8    call        0066F9A8
 006744FD    add         esp,8
>00674500    jmp         00674532
 00674502    inc         ebx
 00674503    push        6E67C1
 00674508    push        edi
 00674509    call        0066F9A8
 0067450E    add         esp,8
>00674511    jmp         00674532
 00674513    add         ebx,3
 00674516    push        6E67C6
 0067451B    push        edi
 0067451C    call        0066F9A8
 00674521    add         esp,8
>00674524    jmp         00674532
 00674526    push        1
 00674528    push        ebx
 00674529    push        edi
 0067452A    call        0066FB10
 0067452F    add         esp,0C
 00674532    xor         esi,esi
 00674534    inc         ebx
 00674535    mov         al,byte ptr [ebx]
 00674537    test        al,al
>00674539    jne         006742A9
 0067453F    mov         eax,dword ptr [ebp+0C]
 00674542    pop         edi
 00674543    pop         esi
 00674544    pop         ebx
 00674545    pop         ebp
 00674546    ret
end;*}

//00674548
{*function sub_00674548(?:?):?;
begin
 00674548    push        ebp
 00674549    mov         ebp,esp
 0067454B    mov         eax,[006E6C20];^gvar_006E6BF4
 00674550    mov         edx,dword ptr [ebp+8]
 00674553    cmp         edx,10
>00674556    jg          00674564
>00674558    je          0067457D
 0067455A    sub         edx,0E
>0067455D    je          0067456E
 0067455F    dec         edx
>00674560    je          00674576
>00674562    jmp         00674595
 00674564    sub         edx,50
>00674567    je          00674585
 00674569    dec         edx
>0067456A    je          0067458D
>0067456C    jmp         00674595
 0067456E    mov         ecx,dword ptr [eax+18]
 00674571    mov         eax,dword ptr [ecx+4]
 00674574    pop         ebp
 00674575    ret
 00674576    mov         eax,dword ptr [eax+18]
 00674579    mov         eax,dword ptr [eax]
 0067457B    pop         ebp
 0067457C    ret
 0067457D    mov         edx,dword ptr [eax+18]
 00674580    mov         eax,dword ptr [edx+8]
 00674583    pop         ebp
 00674584    ret
 00674585    mov         ecx,dword ptr [eax+18]
 00674588    mov         eax,dword ptr [ecx+0C]
 0067458B    pop         ebp
 0067458C    ret
 0067458D    mov         eax,dword ptr [eax+18]
 00674590    mov         eax,dword ptr [eax+10]
 00674593    pop         ebp
 00674594    ret
 00674595    xor         eax,eax
 00674597    pop         ebp
 00674598    ret
end;*}

//006745C8
{*function sub_006745C8(?:?):?;
begin
 006745C8    push        ebp
 006745C9    mov         ebp,esp
 006745CB    push        100
 006745D0    mov         eax,dword ptr [ebp+8]
 006745D3    push        eax
 006745D4    call        006747A4
 006745D9    add         esp,8
 006745DC    pop         ebp
 006745DD    ret
end;*}

//006745F4
{*function sub_006745F4(?:?):?;
begin
 006745F4    push        ebp
 006745F5    mov         ebp,esp
 006745F7    push        4
 006745F9    mov         eax,dword ptr [ebp+8]
 006745FC    push        eax
 006745FD    call        006747A4
 00674602    add         esp,8
 00674605    pop         ebp
 00674606    ret
end;*}

//00674660
{*procedure sub_00674660(?:?);
begin
 00674660    push        ebp
 00674661    mov         ebp,esp
 00674663    push        8
 00674665    mov         eax,dword ptr [ebp+8]
 00674668    push        eax
 00674669    call        006747A4
 0067466E    add         esp,8
 00674671    pop         ebp
 00674672    ret
end;*}

//00674764
{*function sub_00674764(?:?):?;
begin
 00674764    push        ebp
 00674765    mov         ebp,esp
 00674767    push        8
 00674769    movzx       eax,word ptr [ebp+8]
 0067476D    push        eax
 0067476E    call        006747E8
 00674773    add         esp,8
 00674776    pop         ebp
 00674777    ret
end;*}

//006747A4
{*function sub_006747A4(?:?; ?:?):?;
begin
 006747A4    push        ebp
 006747A5    mov         ebp,esp
 006747A7    mov         ecx,dword ptr [ebp+0C]
 006747AA    mov         edx,dword ptr [ebp+8]
 006747AD    cmp         edx,0FF
>006747B3    jbe         006747B9
 006747B5    xor         eax,eax
 006747B7    pop         ebp
 006747B8    ret
 006747B9    mov         eax,[006E6C20];^gvar_006E6BF4
 006747BE    cmp         dword ptr [eax+8],0
>006747C2    jne         006747CA
 006747C4    cmp         dword ptr [eax+10],0
>006747C8    jne         006747D9
 006747CA    movsx       edx,dx
 006747CD    movzx       eax,word ptr [edx*2+6E653E]
 006747D5    and         eax,ecx
 006747D7    pop         ebp
 006747D8    ret
 006747D9    mov         eax,dword ptr [eax+10]
 006747DC    movzx       edx,word ptr [eax+edx*2+2]
 006747E1    and         ecx,edx
 006747E3    mov         eax,ecx
 006747E5    pop         ebp
 006747E6    ret
end;*}

//006747E8
{*procedure sub_006747E8(?:?; ?:?);
begin
 006747E8    push        ebp
 006747E9    mov         ebp,esp
 006747EB    push        ecx
 006747EC    push        ebx
 006747ED    cmp         dword ptr [ebp+8],0FFFF
 006747F4    mov         ebx,dword ptr [ebp+0C]
>006747F7    jne         006747FD
 006747F9    xor         eax,eax
>006747FB    jmp         00674839
 006747FD    mov         edx,dword ptr ds:[6E6C20];^gvar_006E6BF4
 00674803    cmp         dword ptr [edx+8],0
>00674807    je          00674822
 00674809    cmp         dword ptr [ebp+8],100
>00674810    jge         00674822
 00674812    movsx       ecx,word ptr [ebp+8]
 00674816    movzx       eax,word ptr [ecx*2+6E653E]
 0067481E    and         eax,ebx
>00674820    jmp         00674839
 00674822    lea         edx,[ebp-2]
 00674825    lea         ecx,[ebp+8]
 00674828    push        edx
 00674829    push        1
 0067482B    push        ecx
 0067482C    push        1
 0067482E    call        KERNEL32.GetStringTypeW
 00674833    movzx       eax,word ptr [ebp-2]
 00674837    and         eax,ebx
 00674839    pop         ebx
 0067483A    pop         ecx
 0067483B    pop         ebp
 0067483C    ret
end;*}

//006748F8
{*function sub_006748F8(?:?; ?:?):?;
begin
 006748F8    push        ebp
 006748F9    mov         ebp,esp
 006748FB    add         esp,0FFFFFFD8
 006748FE    xor         eax,eax
 00674900    push        ebx
 00674901    push        esi
 00674902    push        edi
 00674903    xor         ebx,ebx
 00674905    mov         esi,dword ptr [ebp+0C]
 00674908    mov         dword ptr [ebp-0C],eax
 0067490B    xor         eax,eax
 0067490D    test        esi,esi
 0067490F    mov         dword ptr [ebp-10],eax
 00674912    mov         edi,6E6C20;^gvar_006E6BF4
>00674917    je          00674922
 00674919    push        esi
 0067491A    call        0066FC80
 0067491F    pop         ecx
 00674920    mov         ebx,eax
 00674922    call        00674DF4
 00674927    mov         eax,dword ptr [edi]
 00674929    test        eax,eax
>0067492B    je          00674934
 0067492D    cmp         eax,6E6BF4;gvar_006E6BF4
>00674932    jne         0067496E
 00674934    cmp         eax,6E6BF4;gvar_006E6BF4
>00674939    jne         00674942
 0067493B    mov         dword ptr [ebp-0C],1
 00674942    push        2C
 00674944    push        1
 00674946    call        0066EA84
 0067494B    add         esp,8
 0067494E    mov         dword ptr [edi],eax
 00674950    test        eax,eax
>00674952    jne         0067496E
 00674954    push        0E
 00674956    call        KERNEL32.SetLastError
 0067495B    push        ebx
 0067495C    call        0066F2D8
 00674961    pop         ecx
 00674962    call        00674E00
 00674967    xor         eax,eax
>00674969    jmp         00674DEA
 0067496E    mov         edx,dword ptr [edi]
 00674970    mov         eax,dword ptr [edx+24]
 00674973    test        eax,eax
>00674975    je          00674985
 00674977    push        eax
 00674978    call        0066F2D8
 0067497D    pop         ecx
 0067497E    mov         edx,dword ptr [edi]
 00674980    xor         ecx,ecx
 00674982    mov         dword ptr [edx+24],ecx
 00674985    test        ebx,ebx
>00674987    je          00674992
 00674989    cmp         byte ptr [ebx],0
>0067498C    jne         00674A8B
 00674992    test        ebx,ebx
>00674994    jne         00674A5A
 0067499A    cmp         dword ptr [ebp-0C],0
>0067499E    je          006749BD
 006749A0    mov         eax,dword ptr [edi]
 006749A2    push        eax
 006749A3    call        006752C0
 006749A8    pop         ecx
 006749A9    mov         edx,dword ptr [edi]
 006749AB    push        edx
 006749AC    call        0066F2D8
 006749B1    pop         ecx
 006749B2    mov         dword ptr [edi],6E6BF4;gvar_006E6BF4
>006749B8    jmp         00674CC4
 006749BD    movsx       esi,word ptr [ebp+8]
 006749C1    mov         eax,esi
 006749C3    and         eax,4
 006749C6    cmp         eax,4
>006749C9    jne         006749DB
 006749CB    push        6E6A18
 006749D0    mov         edx,dword ptr [edi]
 006749D2    push        edx
 006749D3    call        006758A0
 006749D8    add         esp,8
 006749DB    mov         ecx,esi
 006749DD    and         ecx,10
 006749E0    cmp         ecx,10
>006749E3    jne         006749F5
 006749E5    push        6E6A24
 006749EA    mov         eax,dword ptr [edi]
 006749EC    push        eax
 006749ED    call        006758A0
 006749F2    add         esp,8
 006749F5    mov         edx,esi
 006749F7    and         edx,20
 006749FA    cmp         edx,20
>006749FD    jne         00674A0F
 006749FF    push        6E6A2F
 00674A04    mov         ecx,dword ptr [edi]
 00674A06    push        ecx
 00674A07    call        006758A0
 00674A0C    add         esp,8
 00674A0F    mov         eax,esi
 00674A11    and         eax,1
 00674A14    dec         eax
>00674A15    jne         00674A27
 00674A17    push        6E6A37
 00674A1C    mov         edx,dword ptr [edi]
 00674A1E    push        edx
 00674A1F    call        006758A0
 00674A24    add         esp,8
 00674A27    and         esi,2
 00674A2A    cmp         esi,2
>00674A2D    jne         00674A3F
 00674A2F    push        6E6A42
 00674A34    mov         ecx,dword ptr [edi]
 00674A36    push        ecx
 00674A37    call        006758A0
 00674A3C    add         esp,8
 00674A3F    push        ebx
 00674A40    call        0066F2D8
 00674A45    pop         ecx
 00674A46    call        00676250
 00674A4B    call        00674E00
 00674A50    mov         eax,dword ptr [edi]
 00674A52    mov         eax,dword ptr [eax+24]
>00674A55    jmp         00674DEA
 00674A5A    call        KERNEL32.GetUserDefaultLCID
 00674A5F    mov         dword ptr [ebp-10],eax
 00674A62    push        7
 00674A64    lea         edx,[ebp-8]
 00674A67    push        edx
 00674A68    push        0B
 00674A6A    mov         ecx,dword ptr [ebp-10]
 00674A6D    push        ecx
 00674A6E    call        KERNEL32.GetLocaleInfoA
 00674A73    lea         eax,[ebp-8]
 00674A76    push        eax
 00674A77    call        00676CD0
 00674A7C    pop         ecx
 00674A7D    mov         esi,dword ptr [edi]
 00674A7F    mov         dword ptr [esi],eax
 00674A81    xor         eax,eax
 00674A83    mov         dword ptr [esi+8],eax
>00674A86    jmp         00674CC4
 00674A8B    push        6E6A4B
 00674A90    push        esi
 00674A91    call        0066FD78
 00674A96    add         esp,8
 00674A99    test        eax,eax
>00674A9B    je          00674AF1
 00674A9D    push        esi
 00674A9E    push        edi
 00674A9F    mov         esi,6E6A51
 00674AA4    mov         edi,ebx
 00674AA6    mov         eax,edi
 00674AA8    movs        dword ptr [edi],dword ptr [esi]
 00674AA9    pop         edi
 00674AAA    pop         esi
 00674AAB    push        2E
 00674AAD    push        esi
 00674AAE    call        0066F9E4
 00674AB3    add         esp,8
 00674AB6    mov         dword ptr [ebp-14],eax
 00674AB9    test        eax,eax
>00674ABB    je          00674C17
 00674AC1    mov         ecx,dword ptr [ebp-14]
 00674AC4    push        esi
 00674AC5    push        edi
 00674AC6    mov         edi,ecx
 00674AC8    xor         eax,eax
 00674ACA    or          ecx,0FFFFFFFF
 00674ACD    repne scas  byte ptr [edi]
 00674ACF    not         ecx
 00674AD1    lea         edx,[ebx+3]
 00674AD4    sub         edi,ecx
 00674AD6    mov         esi,edx
 00674AD8    mov         edx,ecx
 00674ADA    xchg        esi,edi
 00674ADC    shr         ecx,2
 00674ADF    mov         eax,edi
 00674AE1    rep movs    dword ptr [edi],dword ptr [esi]
 00674AE3    mov         ecx,edx
 00674AE5    and         ecx,3
 00674AE8    rep movs    byte ptr [edi],byte ptr [esi]
 00674AEA    pop         edi
 00674AEB    pop         esi
>00674AEC    jmp         00674C17
 00674AF1    push        6E6A55
 00674AF6    push        esi
 00674AF7    call        0066FD78
 00674AFC    add         esp,8
 00674AFF    test        eax,eax
>00674B01    je          00674B57
 00674B03    push        esi
 00674B04    push        edi
 00674B05    mov         esi,6E6A5B
 00674B0A    mov         edi,ebx
 00674B0C    mov         eax,edi
 00674B0E    movs        dword ptr [edi],dword ptr [esi]
 00674B0F    pop         edi
 00674B10    pop         esi
 00674B11    push        2E
 00674B13    push        esi
 00674B14    call        0066F9E4
 00674B19    add         esp,8
 00674B1C    mov         dword ptr [ebp-14],eax
 00674B1F    test        eax,eax
>00674B21    je          00674C17
 00674B27    mov         ecx,dword ptr [ebp-14]
 00674B2A    push        esi
 00674B2B    push        edi
 00674B2C    mov         edi,ecx
 00674B2E    xor         eax,eax
 00674B30    or          ecx,0FFFFFFFF
 00674B33    repne scas  byte ptr [edi]
 00674B35    not         ecx
 00674B37    lea         edx,[ebx+3]
 00674B3A    sub         edi,ecx
 00674B3C    mov         esi,edx
 00674B3E    mov         edx,ecx
 00674B40    xchg        esi,edi
 00674B42    shr         ecx,2
 00674B45    mov         eax,edi
 00674B47    rep movs    dword ptr [edi],dword ptr [esi]
 00674B49    mov         ecx,edx
 00674B4B    and         ecx,3
 00674B4E    rep movs    byte ptr [edi],byte ptr [esi]
 00674B50    pop         edi
 00674B51    pop         esi
>00674B52    jmp         00674C17
 00674B57    push        6E6A5F
 00674B5C    push        esi
 00674B5D    call        0066FD78
 00674B62    add         esp,8
 00674B65    test        eax,eax
>00674B67    je          00674BBA
 00674B69    push        esi
 00674B6A    push        edi
 00674B6B    mov         esi,6E6A65
 00674B70    mov         edi,ebx
 00674B72    mov         eax,edi
 00674B74    movs        dword ptr [edi],dword ptr [esi]
 00674B75    pop         edi
 00674B76    pop         esi
 00674B77    push        2E
 00674B79    push        esi
 00674B7A    call        0066F9E4
 00674B7F    add         esp,8
 00674B82    mov         dword ptr [ebp-14],eax
 00674B85    test        eax,eax
>00674B87    je          00674C17
 00674B8D    mov         ecx,dword ptr [ebp-14]
 00674B90    push        esi
 00674B91    push        edi
 00674B92    mov         edi,ecx
 00674B94    xor         eax,eax
 00674B96    or          ecx,0FFFFFFFF
 00674B99    repne scas  byte ptr [edi]
 00674B9B    not         ecx
 00674B9D    lea         edx,[ebx+3]
 00674BA0    sub         edi,ecx
 00674BA2    mov         esi,edx
 00674BA4    mov         edx,ecx
 00674BA6    xchg        esi,edi
 00674BA8    shr         ecx,2
 00674BAB    mov         eax,edi
 00674BAD    rep movs    dword ptr [edi],dword ptr [esi]
 00674BAF    mov         ecx,edx
 00674BB1    and         ecx,3
 00674BB4    rep movs    byte ptr [edi],byte ptr [esi]
 00674BB6    pop         edi
 00674BB7    pop         esi
>00674BB8    jmp         00674C17
 00674BBA    push        6E6A69
 00674BBF    push        esi
 00674BC0    call        0066FD78
 00674BC5    add         esp,8
 00674BC8    test        eax,eax
>00674BCA    je          00674C17
 00674BCC    push        esi
 00674BCD    push        edi
 00674BCE    mov         esi,6E6A6F
 00674BD3    mov         edi,ebx
 00674BD5    mov         eax,edi
 00674BD7    movs        dword ptr [edi],dword ptr [esi]
 00674BD8    pop         edi
 00674BD9    pop         esi
 00674BDA    push        2E
 00674BDC    push        esi
 00674BDD    call        0066F9E4
 00674BE2    add         esp,8
 00674BE5    mov         dword ptr [ebp-14],eax
 00674BE8    test        eax,eax
>00674BEA    je          00674C17
 00674BEC    mov         ecx,dword ptr [ebp-14]
 00674BEF    push        esi
 00674BF0    push        edi
 00674BF1    mov         edi,ecx
 00674BF3    xor         eax,eax
 00674BF5    or          ecx,0FFFFFFFF
 00674BF8    repne scas  byte ptr [edi]
 00674BFA    not         ecx
 00674BFC    lea         edx,[ebx+3]
 00674BFF    sub         edi,ecx
 00674C01    mov         esi,edx
 00674C03    mov         edx,ecx
 00674C05    xchg        esi,edi
 00674C07    shr         ecx,2
 00674C0A    mov         eax,edi
 00674C0C    rep movs    dword ptr [edi],dword ptr [esi]
 00674C0E    mov         ecx,edx
 00674C10    and         ecx,3
 00674C13    rep movs    byte ptr [edi],byte ptr [esi]
 00674C15    pop         edi
 00674C16    pop         esi
 00674C17    mov         eax,esi
 00674C19    mov         edx,6E6A73
 00674C1E    mov         cl,byte ptr [eax]
 00674C20    cmp         cl,byte ptr [edx]
>00674C22    jne         00674C56
 00674C24    test        cl,cl
>00674C26    je          00674C3A
 00674C28    mov         cl,byte ptr [eax+1]
 00674C2B    cmp         cl,byte ptr [edx+1]
>00674C2E    jne         00674C56
 00674C30    add         eax,2
 00674C33    add         edx,2
 00674C36    test        cl,cl
>00674C38    jne         00674C1E
>00674C3A    jne         00674C56
 00674C3C    mov         eax,dword ptr [edi]
 00674C3E    push        eax
 00674C3F    call        006752C0
 00674C44    pop         ecx
 00674C45    mov         edx,dword ptr [edi]
 00674C47    push        edx
 00674C48    call        0066F2D8
 00674C4D    pop         ecx
 00674C4E    mov         dword ptr [edi],6E6BF4;gvar_006E6BF4
>00674C54    jmp         00674CC4
 00674C56    cmp         byte ptr [ebx],4C
>00674C59    jne         00674C84
 00674C5B    cmp         byte ptr [ebx+1],43
>00674C5F    jne         00674C84
 00674C61    cmp         byte ptr [ebx+2],5F
>00674C65    jne         00674C84
 00674C67    push        ebx
 00674C68    call        0066F2D8
 00674C6D    pop         ecx
 00674C6E    call        00674E00
 00674C73    push        esi
 00674C74    mov         ecx,dword ptr [edi]
 00674C76    push        ecx
 00674C77    call        0067566C
 00674C7C    add         esp,8
>00674C7F    jmp         00674DEA
 00674C84    mov         esi,dword ptr [edi]
 00674C86    xor         eax,eax
 00674C88    mov         dword ptr [esi+8],eax
 00674C8B    push        ebx
 00674C8C    push        esi
 00674C8D    call        00674EAC
 00674C92    add         esp,8
 00674C95    mov         dword ptr [ebp-10],eax
 00674C98    test        eax,eax
>00674C9A    jne         00674CC4
 00674C9C    cmp         dword ptr [ebp-0C],0
>00674CA0    je          00674CB1
 00674CA2    mov         edx,dword ptr [edi]
 00674CA4    push        edx
 00674CA5    call        0066F2D8
 00674CAA    pop         ecx
 00674CAB    mov         dword ptr [edi],6E6BF4;gvar_006E6BF4
 00674CB1    call        00674E00
 00674CB6    push        ebx
 00674CB7    call        0066F2D8
 00674CBC    pop         ecx
 00674CBD    xor         eax,eax
>00674CBF    jmp         00674DEA
 00674CC4    mov         edx,dword ptr [edi]
 00674CC6    mov         ecx,dword ptr [ebp-10]
 00674CC9    mov         dword ptr [edx+4],ecx
 00674CCC    push        ebx
 00674CCD    call        0066F2D8
 00674CD2    pop         ecx
 00674CD3    push        1
 00674CD5    mov         eax,dword ptr [edi]
 00674CD7    mov         edx,dword ptr [eax+4]
 00674CDA    push        edx
 00674CDB    call        KERNEL32.IsValidLocale
 00674CE0    test        eax,eax
>00674CE2    jne         00674D20
 00674CE4    mov         ecx,dword ptr [edi]
 00674CE6    cmp         dword ptr [ecx+8],0
>00674CEA    jne         00674D20
 00674CEC    push        20000103
 00674CF1    call        KERNEL32.SetLastError
 00674CF6    cmp         dword ptr [ebp-0C],0
>00674CFA    je          00674D14
 00674CFC    mov         eax,dword ptr [edi]
 00674CFE    push        eax
 00674CFF    call        006752C0
 00674D04    pop         ecx
 00674D05    mov         edx,dword ptr [edi]
 00674D07    push        edx
 00674D08    call        0066F2D8
 00674D0D    pop         ecx
 00674D0E    mov         dword ptr [edi],6E6BF4;gvar_006E6BF4
 00674D14    call        00674E00
 00674D19    xor         eax,eax
>00674D1B    jmp         00674DEA
 00674D20    mov         edx,dword ptr [edi]
 00674D22    mov         ecx,dword ptr [edx+4]
 00674D25    push        ecx
 00674D26    call        KERNEL32.SetThreadLocale
 00674D2B    mov         eax,dword ptr [edi]
 00674D2D    cmp         dword ptr [eax+8],0
>00674D31    jne         00674DD1
 00674D37    push        eax
 00674D38    call        006752C0
 00674D3D    mov         dx,word ptr [ebp+8]
 00674D41    pop         ecx
 00674D42    push        edx
 00674D43    mov         ecx,dword ptr [edi]
 00674D45    push        ecx
 00674D46    call        00675104
 00674D4B    add         esp,8
 00674D4E    test        eax,eax
>00674D50    jne         00674D83
 00674D52    push        20000102
 00674D57    call        KERNEL32.SetLastError
 00674D5C    cmp         dword ptr [ebp-0C],0
>00674D60    je          00674D7A
 00674D62    mov         eax,dword ptr [edi]
 00674D64    push        eax
 00674D65    call        006752C0
 00674D6A    pop         ecx
 00674D6B    mov         edx,dword ptr [edi]
 00674D6D    push        edx
 00674D6E    call        0066F2D8
 00674D73    pop         ecx
 00674D74    mov         dword ptr [edi],6E6BF4;gvar_006E6BF4
 00674D7A    call        00674E00
 00674D7F    xor         eax,eax
>00674D81    jmp         00674DEA
 00674D83    mov         edx,dword ptr [edi]
 00674D85    mov         ecx,dword ptr [edx]
 00674D87    push        ecx
 00674D88    call        006788C0
 00674D8D    pop         ecx
 00674D8E    test        eax,eax
>00674D90    jne         00674DA4
 00674D92    lea         eax,[ebp-28]
 00674D95    push        eax
 00674D96    mov         edx,dword ptr [edi]
 00674D98    mov         ecx,dword ptr [edx]
 00674D9A    push        ecx
 00674D9B    call        KERNEL32.GetCPInfo
 00674DA0    test        eax,eax
>00674DA2    jne         00674DB7
 00674DA4    call        00674E00
 00674DA9    push        20000106
 00674DAE    call        KERNEL32.SetLastError
 00674DB3    xor         eax,eax
>00674DB5    jmp         00674DEA
 00674DB7    mov         edx,dword ptr [ebp-28]
 00674DBA    mov         dword ptr ds:[6E69CC],edx;gvar_006E69CC:Integer
 00674DC0    call        00676250
 00674DC5    call        00674E00
 00674DCA    mov         ecx,dword ptr [edi]
 00674DCC    mov         eax,dword ptr [ecx+24]
>00674DCF    jmp         00674DEA
 00674DD1    mov         dword ptr ds:[6E69CC],1;gvar_006E69CC:Integer
 00674DDB    call        00676250
 00674DE0    call        00674E00
 00674DE5    mov         edx,dword ptr [edi]
 00674DE7    mov         eax,dword ptr [edx+24]
 00674DEA    pop         edi
 00674DEB    pop         esi
 00674DEC    pop         ebx
 00674DED    mov         esp,ebp
 00674DEF    pop         ebp
 00674DF0    ret
end;*}

//00674DF4
procedure sub_00674DF4;
begin
{*
 00674DF4    mov         eax,[006E69D0];0x0 gvar_006E69D0
 00674DF9    push        eax
 00674DFA    call        KERNEL32.EnterCriticalSection
 00674DFF    ret
*}
end;

//00674E00
procedure sub_00674E00;
begin
{*
 00674E00    mov         eax,[006E69D0];0x0 gvar_006E69D0
 00674E05    push        eax
 00674E06    call        KERNEL32.LeaveCriticalSection
 00674E0B    ret
*}
end;

end.