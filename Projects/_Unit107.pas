//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit107;

interface

uses
  SysUtils, Classes;

    procedure sub_00672384;//00672384
    //function sub_006724F0:?;//006724F0
    //function sub_006724FC(?:?):?;//006724FC
    procedure sub_00672568;//00672568
    procedure sub_0067257C;//0067257C
    //function sub_006725B0(?:?):?;//006725B0
    //function sub_0067261C(?:?):?;//0067261C
    //function sub_00672634(?:?; ?:?):?;//00672634
    //function sub_0067271C(?:?; ?:?):?;//0067271C
    //function sub_0067282C(?:?; ?:?; ?:?):?;//0067282C
    //function sub_006728C8(?:?; ?:?; ?:?; ?:?; ?:?):?;//006728C8
    //function sub_00673100(?:?; ?:?; ?:?; ?:?; ?:?):?;//00673100
    //function sub_0067332C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0067332C
    //function sub_006733EC(?:?; ?:?; ?:?; ?:?):?;//006733EC
    //function sub_006734B4(?:?; ?:?; ?:?):?;//006734B4
    //procedure sub_00673530(?:?; ?:?; ?:?);//00673530

implementation

//00672384
procedure sub_00672384;
begin
{*
 00672384    push        ebx
 00672385    push        esi
 00672386    push        edi
 00672387    add         esp,0FFFFFFB4
 0067238A    push        6E5E07
 0067238F    push        6EDFDC;gvar_006EDFDC
 00672394    call        0067A094
 00672399    add         esp,8
 0067239C    mov         eax,[006E5CEC];0x32 gvar_006E5CEC
 006723A1    push        eax
 006723A2    call        KERNEL32.SetHandleCount
 006723A7    mov         ebx,eax
 006723A9    cmp         eax,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>006723AF    jae         006723B7
 006723B1    mov         dword ptr ds:[6E5CEC],ebx;gvar_006E5CEC
 006723B7    mov         dword ptr ds:[6E5830],6722E8
 006723C1    xor         edx,edx
 006723C3    mov         dword ptr [esp+4],edx
 006723C7    lea         ecx,[esp+8]
 006723CB    push        ecx
 006723CC    call        KERNEL32.GetStartupInfoA
 006723D1    movzx       eax,word ptr [esp+3A]
 006723D6    mov         esi,dword ptr [esp+3C]
 006723DA    test        eax,eax
>006723DC    je          0067247C
 006723E2    mov         edx,dword ptr [esi]
 006723E4    mov         dword ptr [esp],edx
 006723E7    add         esi,4
 006723EA    mov         ecx,dword ptr [esp]
 006723ED    lea         ecx,[ecx+ecx*4]
 006723F0    add         ecx,4
 006723F3    cmp         ecx,eax
>006723F5    jne         0067247C
 006723FB    mov         dword ptr [esp+4],1
 00672403    xor         ebx,ebx
 00672405    mov         edi,6E5CF0;gvar_006E5CF0
 0067240A    cmp         ebx,dword ptr [esp]
>0067240D    jge         0067244B
 0067240F    mov         dl,byte ptr [esi]
 00672411    inc         esi
 00672412    xor         eax,eax
 00672414    test        dl,20
>00672417    je          0067241E
 00672419    or          eax,800
 0067241E    test        dl,40
>00672421    je          00672428
 00672423    or          eax,2000
 00672428    test        dl,80
>0067242B    je          00672434
 0067242D    or          eax,4000
>00672432    jmp         00672439
 00672434    or          eax,8000
 00672439    mov         ecx,dword ptr [edi]
 0067243B    inc         ebx
 0067243C    and         ecx,3
 0067243F    or          ecx,eax
 00672441    mov         dword ptr [edi],ecx
 00672443    add         edi,4
 00672446    cmp         ebx,dword ptr [esp]
>00672449    jl          0067240F
 0067244B    mov         ebx,dword ptr [esp]
 0067244E    lea         eax,[ebx*4+6E5CF0];gvar_006E5CF0
>00672455    jmp         0067245F
 00672457    xor         edx,edx
 00672459    inc         ebx
 0067245A    mov         dword ptr [eax],edx
 0067245C    add         eax,4
 0067245F    cmp         ebx,dword ptr ds:[6E5CEC];0x32 gvar_006E5CEC
>00672465    jb          00672457
 00672467    mov         ecx,dword ptr [esp]
 0067246A    shl         ecx,2
 0067246D    push        ecx
 0067246E    push        esi
 0067246F    push        6EDF14;gvar_006EDF14
 00672474    call        0066F8B8
 00672479    add         esp,0C
 0067247C    cmp         dword ptr [esp+4],0
>00672481    jne         006724E8
 00672483    push        0F6
 00672485    call        KERNEL32.GetStdHandle
 0067248A    mov         [006EDF14],eax;gvar_006EDF14
 0067248F    push        0F5
 00672491    call        KERNEL32.GetStdHandle
 00672496    mov         [006EDF18],eax;gvar_006EDF18
 0067249B    push        0F4
 0067249D    call        KERNEL32.GetStdHandle
 006724A2    mov         [006EDF1C],eax;gvar_006EDF1C
 006724A7    xor         ebx,ebx
 006724A9    mov         esi,6E5CF0;gvar_006E5CF0
 006724AE    push        ebx
 006724AF    call        00670F3C
 006724B4    pop         ecx
 006724B5    test        eax,eax
>006724B7    jne         006724C2
 006724B9    cmp         dword ptr ds:[6E7360],0;gvar_006E7360
>006724C0    je          006724D9
 006724C2    or          dword ptr [esi],2000
 006724C8    cmp         dword ptr ds:[6E7360],0;gvar_006E7360
>006724CF    je          006724DF
 006724D1    or          dword ptr [esi],10000
>006724D7    jmp         006724DF
 006724D9    and         dword ptr [esi],0FFFFDFFF
 006724DF    inc         ebx
 006724E0    add         esi,4
 006724E3    cmp         ebx,2
>006724E6    jle         006724AE
 006724E8    add         esp,4C
 006724EB    pop         edi
 006724EC    pop         esi
 006724ED    pop         ebx
 006724EE    ret
*}
end;

//006724F0
{*function sub_006724F0:?;
begin
 006724F0    call        00679ECC
 006724F5    add         eax,10
 006724F8    ret
end;*}

//006724FC
{*function sub_006724FC(?:?):?;
begin
 006724FC    push        ebp
 006724FD    mov         ebp,esp
 006724FF    push        ebx
 00672500    mov         ebx,dword ptr [ebp+8]
 00672503    test        ebx,ebx
>00672505    jl          00672526
 00672507    cmp         ebx,12A
>0067250D    jle         00672514
 0067250F    mov         ebx,1
 00672514    call        006724F0
 00672519    mov         dword ptr [eax],ebx
 0067251B    movsx       eax,byte ptr [ebx+6E5E24]
 00672522    mov         ebx,eax
>00672524    jmp         0067253B
 00672526    neg         ebx
 00672528    cmp         ebx,dword ptr ds:[6E6020];0x31 gvar_006E6020
>0067252E    jge         0067250F
 00672530    call        006724F0
 00672535    mov         dword ptr [eax],0FFFFFFFF
 0067253B    call        00678BF0
 00672540    mov         dword ptr [eax],ebx
 00672542    or          eax,0FFFFFFFF
 00672545    pop         ebx
 00672546    pop         ebp
 00672547    ret
end;*}

//00672568
procedure sub_00672568;
begin
{*
 00672568    call        KERNEL32.GetLastError
 0067256D    and         eax,0FFFF
 00672572    push        eax
 00672573    call        006724FC
 00672578    pop         ecx
 00672579    ret
*}
end;

//0067257C
procedure sub_0067257C;
begin
{*
 0067257C    push        ebx
 0067257D    push        esi
 0067257E    mov         esi,32
 00672583    mov         ebx,6E583C;gvar_006E583C
>00672588    jmp         006725A4
 0067258A    movzx       eax,word ptr [ebx+12]
 0067258E    and         eax,300
 00672593    cmp         eax,300
>00672598    jne         006725A1
 0067259A    push        ebx
 0067259B    call        006718B8
 006725A0    pop         ecx
 006725A1    add         ebx,18
 006725A4    mov         edx,esi
 006725A6    add         esi,0FFFFFFFF
 006725A9    test        edx,edx
>006725AB    jne         0067258A
 006725AD    pop         esi
 006725AE    pop         ebx
 006725AF    ret
*}
end;

//006725B0
{*function sub_006725B0(?:?):?;
begin
 006725B0    push        ebp
 006725B1    mov         ebp,esp
 006725B3    push        ebx
 006725B4    push        esi
 006725B5    mov         ebx,dword ptr [ebp+8]
 006725B8    test        byte ptr [ebx+13],2
>006725BC    je          006725C3
 006725BE    call        0067257C
 006725C3    mov         eax,dword ptr [ebx+0C]
 006725C6    push        eax
 006725C7    mov         edx,dword ptr [ebx+4]
 006725CA    mov         dword ptr [ebx],edx
 006725CC    push        edx
 006725CD    movsx       eax,byte ptr [ebx+16]
 006725D1    push        eax
 006725D2    call        00671278
 006725D7    add         esp,0C
 006725DA    mov         esi,eax
 006725DC    mov         dword ptr [ebx+8],esi
 006725DF    mov         eax,esi
 006725E1    mov         dword ptr [ebx+8],eax
 006725E4    test        eax,eax
>006725E6    jle         006725F2
 006725E8    and         word ptr [ebx+12],0FFDF
 006725EE    xor         eax,eax
>006725F0    jmp         00672618
 006725F2    cmp         dword ptr [ebx+8],0
>006725F6    jne         0067260B
 006725F8    mov         dx,word ptr [ebx+12]
 006725FC    and         dx,0FE7F
 00672601    or          dx,20
 00672605    mov         word ptr [ebx+12],dx
>00672609    jmp         00672615
 0067260B    xor         ecx,ecx
 0067260D    mov         dword ptr [ebx+8],ecx
 00672610    or          word ptr [ebx+12],10
 00672615    or          eax,0FFFFFFFF
 00672618    pop         esi
 00672619    pop         ebx
 0067261A    pop         ebp
 0067261B    ret
end;*}

//0067261C
{*function sub_0067261C(?:?):?;
begin
 0067261C    push        ebp
 0067261D    mov         ebp,esp
 0067261F    mov         eax,dword ptr [ebp+8]
 00672622    mov         edx,dword ptr [eax+8]
 00672625    inc         edx
 00672626    mov         dword ptr [eax+8],edx
 00672629    push        eax
 0067262A    call        0067425C
 0067262F    pop         ecx
 00672630    pop         ebp
 00672631    ret
end;*}

//00672634
{*function sub_00672634(?:?; ?:?):?;
begin
 00672634    push        ebp
 00672635    mov         ebp,esp
 00672637    push        ebx
 00672638    mov         ebx,dword ptr [ebp+8]
 0067263B    test        ebx,ebx
>0067263D    jne         00672645
 0067263F    or          eax,0FFFFFFFF
 00672642    pop         ebx
 00672643    pop         ebp
 00672644    ret
 00672645    mov         eax,dword ptr [ebx+8]
 00672648    test        eax,eax
>0067264A    jle         00672664
 0067264C    dec         eax
 0067264D    mov         dword ptr [ebx+8],eax
 00672650    mov         edx,dword ptr [ebx]
 00672652    inc         dword ptr [ebx]
 00672654    mov         al,byte ptr [edx]
 00672656    xor         edx,edx
 00672658    mov         dl,al
 0067265A    mov         [006EDFE4],al;gvar_006EDFE4
 0067265F    mov         eax,edx
 00672661    pop         ebx
 00672662    pop         ebp
 00672663    ret
 00672664    cmp         dword ptr [ebx+8],0
>00672668    jl          00672678
 0067266A    test        word ptr [ebx+12],110
>00672670    jne         00672678
 00672672    test        byte ptr [ebx+12],1
>00672676    jne         00672683
 00672678    or          word ptr [ebx+12],10
 0067267D    or          eax,0FFFFFFFF
 00672680    pop         ebx
 00672681    pop         ebp
 00672682    ret
 00672683    or          word ptr [ebx+12],80
 00672689    cmp         dword ptr [ebx+0C],0
>0067268D    je          006726BB
 0067268F    push        ebx
 00672690    call        006725B0
 00672695    pop         ecx
 00672696    test        eax,eax
>00672698    je          006726A0
 0067269A    or          eax,0FFFFFFFF
 0067269D    pop         ebx
 0067269E    pop         ebp
 0067269F    ret
 006726A0    mov         edx,dword ptr [ebx+8]
 006726A3    dec         edx
 006726A4    mov         dword ptr [ebx+8],edx
 006726A7    mov         ecx,dword ptr [ebx]
 006726A9    inc         dword ptr [ebx]
 006726AB    xor         edx,edx
 006726AD    mov         al,byte ptr [ecx]
 006726AF    mov         [006EDFE4],al;gvar_006EDFE4
 006726B4    mov         dl,al
 006726B6    mov         eax,edx
 006726B8    pop         ebx
 006726B9    pop         ebp
 006726BA    ret
 006726BB    test        byte ptr [ebx+13],2
>006726BF    je          006726C6
 006726C1    call        0067257C
 006726C6    push        1
 006726C8    push        6EDFE4;gvar_006EDFE4
 006726CD    movsx       ecx,byte ptr [ebx+16]
 006726D1    push        ecx
 006726D2    call        00671278
 006726D7    add         esp,0C
 006726DA    test        eax,eax
>006726DC    jne         0067270A
 006726DE    movsx       eax,byte ptr [ebx+16]
 006726E2    push        eax
 006726E3    call        00670EA4
 006726E8    pop         ecx
 006726E9    dec         eax
>006726EA    je          006726F3
 006726EC    or          word ptr [ebx+12],10
>006726F1    jmp         00672704
 006726F3    mov         dx,word ptr [ebx+12]
 006726F7    and         dx,0FE7F
 006726FC    or          dx,20
 00672700    mov         word ptr [ebx+12],dx
 00672704    or          eax,0FFFFFFFF
 00672707    pop         ebx
 00672708    pop         ebp
 00672709    ret
 0067270A    and         word ptr [ebx+12],0FFDF
 00672710    xor         eax,eax
 00672712    mov         al,[006EDFE4];0x0 gvar_006EDFE4
 00672717    pop         ebx
 00672718    pop         ebp
 00672719    ret
end;*}

//0067271C
{*function sub_0067271C(?:?; ?:?):?;
begin
 0067271C    push        ebp
 0067271D    mov         ebp,esp
 0067271F    push        ecx
 00672720    push        ebx
 00672721    push        esi
 00672722    push        edi
 00672723    mov         edi,dword ptr [ebp+0C]
 00672726    mov         bl,byte ptr [ebp+8]
 00672729    mov         byte ptr [ebp-2],bl
 0067272C    mov         esi,1
 00672731    mov         eax,esi
 00672733    neg         eax
 00672735    cmp         eax,dword ptr [edi+8]
>00672738    jle         0067277B
 0067273A    push        esi
 0067273B    lea         edx,[ebp-2]
 0067273E    push        edx
 0067273F    mov         ecx,dword ptr [edi]
 00672741    push        ecx
 00672742    call        0066F894
 00672747    add         esp,0C
 0067274A    add         dword ptr [edi+8],esi
 0067274D    add         dword ptr [edi],esi
 0067274F    test        byte ptr [edi+12],8
>00672753    je          00672772
 00672755    cmp         bl,0A
>00672758    je          0067275F
 0067275A    cmp         bl,0D
>0067275D    jne         00672772
 0067275F    push        edi
 00672760    call        006718B8
 00672765    pop         ecx
 00672766    test        eax,eax
>00672768    je          00672772
 0067276A    or          eax,0FFFFFFFF
>0067276D    jmp         00672826
 00672772    xor         eax,eax
 00672774    mov         al,bl
>00672776    jmp         00672826
 0067277B    mov         ax,word ptr [edi+12]
 0067277F    test        al,90
>00672781    jne         00672787
 00672783    test        al,2
>00672785    jne         00672794
 00672787    or          word ptr [edi+12],10
 0067278C    or          eax,0FFFFFFFF
>0067278F    jmp         00672826
 00672794    or          word ptr [edi+12],100
 0067279A    cmp         dword ptr [edi+0C],0
>0067279E    je          006727FC
 006727A0    cmp         dword ptr [edi+8],0
>006727A4    je          006727B6
 006727A6    push        edi
 006727A7    call        006718B8
 006727AC    pop         ecx
 006727AD    test        eax,eax
>006727AF    je          006727B6
 006727B1    or          eax,0FFFFFFFF
>006727B4    jmp         00672826
 006727B6    mov         edx,dword ptr [edi+0C]
 006727B9    lea         ecx,[ebp-2]
 006727BC    neg         edx
 006727BE    mov         dword ptr [edi+8],edx
 006727C1    push        esi
 006727C2    push        ecx
 006727C3    mov         eax,dword ptr [edi]
 006727C5    push        eax
 006727C6    call        0066F894
 006727CB    add         esp,0C
 006727CE    lea         edx,[esi-1]
 006727D1    add         dword ptr [edi+8],edx
 006727D4    add         dword ptr [edi],esi
 006727D6    test        byte ptr [edi+12],8
>006727DA    je          006727F6
 006727DC    cmp         bl,0A
>006727DF    je          006727E6
 006727E1    cmp         bl,0D
>006727E4    jne         006727F6
 006727E6    push        edi
 006727E7    call        006718B8
 006727EC    pop         ecx
 006727ED    test        eax,eax
>006727EF    je          006727F6
 006727F1    or          eax,0FFFFFFFF
>006727F4    jmp         00672826
 006727F6    xor         eax,eax
 006727F8    mov         al,bl
>006727FA    jmp         00672826
 006727FC    push        esi
 006727FD    lea         edx,[ebp-2]
 00672800    push        edx
 00672801    movsx       ecx,byte ptr [edi+16]
 00672805    push        ecx
 00672806    call        006713C0
 0067280B    add         esp,0C
 0067280E    cmp         esi,eax
>00672810    je          00672822
 00672812    test        byte ptr [edi+13],2
>00672816    jne         00672822
 00672818    or          word ptr [edi+12],10
 0067281D    or          eax,0FFFFFFFF
>00672820    jmp         00672826
 00672822    xor         eax,eax
 00672824    mov         al,bl
 00672826    pop         edi
 00672827    pop         esi
 00672828    pop         ebx
 00672829    pop         ecx
 0067282A    pop         ebp
 0067282B    ret
end;*}

//0067282C
{*function sub_0067282C(?:?; ?:?; ?:?):?;
begin
 0067282C    push        ebp
 0067282D    mov         ebp,esp
 0067282F    push        ebx
 00672830    push        esi
 00672831    mov         esi,dword ptr [ebp+0C]
 00672834    mov         ebx,dword ptr [ebp+8]
 00672837    test        ebx,ebx
>00672839    jne         00672849
 0067283B    push        1A
 0067283D    push        1C
 0067283F    call        00679E90
 00672844    add         esp,8
 00672847    mov         ebx,eax
 00672849    push        0A
 0067284B    test        esi,esi
>0067284D    jne         00672856
 0067284F    mov         eax,6E5F50
>00672854    jmp         00672858
 00672856    mov         eax,esi
 00672858    push        eax
 00672859    push        ebx
 0067285A    call        0066FE3C
 0067285F    add         esp,8
 00672862    push        eax
 00672863    movzx       edx,word ptr [ebp+10]
 00672867    push        edx
 00672868    call        00677184
 0067286D    add         esp,0C
 00672870    push        6E5F54
 00672875    push        ebx
 00672876    call        0066F9A8
 0067287B    add         esp,8
 0067287E    mov         eax,ebx
 00672880    pop         esi
 00672881    pop         ebx
 00672882    pop         ebp
 00672883    ret
end;*}

//006728C8
{*function sub_006728C8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006728C8    push        ebp
 006728C9    mov         ebp,esp
 006728CB    add         esp,0FFFFFEDC
 006728D1    xor         eax,eax
 006728D3    xor         edx,edx
 006728D5    push        ebx
 006728D6    push        esi
 006728D7    push        edi
 006728D8    mov         edi,dword ptr [ebp+14]
 006728DB    mov         dword ptr [ebp-4],eax
 006728DE    mov         dword ptr [ebp-8],edx
 006728E1    mov         cl,byte ptr [edi]
 006728E3    inc         edi
 006728E4    mov         byte ptr [ebp-19],cl
 006728E7    test        cl,cl
>006728E9    jne         006728F3
 006728EB    mov         eax,dword ptr [ebp-4]
>006728EE    jmp         006730F9
 006728F3    cmp         byte ptr [ebp-19],25
>006728F7    jne         00672908
 006728F9    mov         dl,byte ptr [edi]
 006728FB    inc         edi
 006728FC    mov         byte ptr [ebp-19],dl
 006728FF    cmp         dl,25
>00672902    jne         006729FB
 00672908    inc         dword ptr [ebp-8]
 0067290B    mov         eax,dword ptr [ebp+10]
 0067290E    push        eax
 0067290F    call        dword ptr [ebp+8]
 00672912    pop         ecx
 00672913    mov         dword ptr [ebp-20],eax
 00672916    cmp         dword ptr [ebp-20],0FFFFFFFF
 0067291A    mov         ebx,eax
>0067291C    je          006730DF
 00672922    test        byte ptr [ebp-19],80
>00672926    jne         0067297E
 00672928    movsx       eax,byte ptr [ebp-19]
 0067292C    and         eax,7F
 0067292F    cmp         byte ptr [eax+6E63D8],1
>00672936    jne         0067297E
>00672938    jmp         00672954
 0067293A    inc         dword ptr [ebp-8]
 0067293D    mov         edx,dword ptr [ebp+10]
 00672940    push        edx
 00672941    call        dword ptr [ebp+8]
 00672944    pop         ecx
 00672945    mov         dword ptr [ebp-20],eax
 00672948    cmp         dword ptr [ebp-20],0FFFFFFFF
 0067294C    mov         ebx,eax
>0067294E    je          006730DF
 00672954    test        bl,80
>00672957    jne         00672968
 00672959    movsx       eax,bl
 0067295C    and         eax,7F
 0067295F    cmp         byte ptr [eax+6E63D8],1
>00672966    je          0067293A
 00672968    movsx       ecx,bl
 0067296B    mov         edx,dword ptr [ebp+10]
 0067296E    push        edx
 0067296F    push        ecx
 00672970    call        dword ptr [ebp+0C]
 00672973    add         esp,8
 00672976    dec         dword ptr [ebp-8]
>00672979    jmp         006728E1
 0067297E    cmp         bl,byte ptr [ebp-19]
>00672981    je          00672996
 00672983    movsx       edx,bl
 00672986    mov         eax,dword ptr [ebp+10]
 00672989    push        eax
 0067298A    push        edx
 0067298B    call        dword ptr [ebp+0C]
 0067298E    add         esp,8
>00672991    jmp         006730F6
 00672996    xor         ecx,ecx
 00672998    mov         cl,bl
 0067299A    test        byte ptr [ecx+6EDFF1],4
>006729A1    je          006728E1
 006729A7    cmp         byte ptr [edi],0
>006729AA    je          006728E1
 006729B0    mov         eax,dword ptr [ebp+10]
 006729B3    push        eax
 006729B4    call        dword ptr [ebp+8]
 006729B7    pop         ecx
 006729B8    mov         dword ptr [ebp-20],eax
 006729BB    mov         byte ptr [ebp-19],al
 006729BE    cmp         dword ptr [ebp-20],0FFFFFFFF
>006729C2    je          006730DF
 006729C8    mov         dl,byte ptr [edi]
 006729CA    inc         edi
 006729CB    cmp         dl,byte ptr [ebp-19]
>006729CE    je          006729F3
 006729D0    mov         ecx,dword ptr [ebp+10]
 006729D3    push        ecx
 006729D4    movsx       eax,byte ptr [ebp-19]
 006729D8    push        eax
 006729D9    mov         esi,dword ptr [ebp+0C]
 006729DC    call        esi
 006729DE    movsx       edx,bl
 006729E1    add         esp,8
 006729E4    mov         eax,dword ptr [ebp+10]
 006729E7    push        eax
 006729E8    push        edx
 006729E9    call        esi
 006729EB    add         esp,8
>006729EE    jmp         006730F6
 006729F3    inc         dword ptr [ebp-8]
>006729F6    jmp         006728E1
 006729FB    mov         dword ptr [ebp-10],0FFFFFFFF
 00672A02    xor         eax,eax
 00672A04    mov         esi,20
 00672A09    mov         dword ptr [ebp-3C],eax
 00672A0C    test        byte ptr [ebp-19],80
>00672A10    je          00672A19
 00672A12    mov         eax,2
>00672A17    jmp         00672A27
 00672A19    movsx       edx,byte ptr [ebp-19]
 00672A1D    and         edx,7F
 00672A20    movsx       eax,byte ptr [edx+6E63D8]
 00672A27    mov         edx,eax
 00672A29    cmp         edx,18
>00672A2C    ja          00672BA3
 00672A32    jmp         dword ptr [edx*4+672A39]
 00672A32    dd          00672BA3
 00672A32    dd          00672BA3
 00672A32    dd          006730F6
 00672A32    dd          00672BA3
 00672A32    dd          00672A9D
 00672A32    dd          00672AD5
 00672A32    dd          00672EA5
 00672A32    dd          00672EA5
 00672A32    dd          00672B75
 00672A32    dd          00672B75
 00672A32    dd          00672B90
 00672A32    dd          00672CCE
 00672A32    dd          00672AC7
 00672A32    dd          00672AAB
 00672A32    dd          00672AB9
 00672A32    dd          00672B7E
 00672A32    dd          00672D38
 00672A32    dd          00672D38
 00672A32    dd          00672F90
 00672A32    dd          00672B97
 00672A32    dd          00672B87
 00672A32    dd          00672C7B
 00672A32    dd          00672B03
 00672A32    dd          00672B11
 00672A32    dd          00672B1F
 00672A9D    or          esi,1
 00672AA0    mov         cl,byte ptr [edi]
 00672AA2    mov         byte ptr [ebp-19],cl
 00672AA5    inc         edi
>00672AA6    jmp         00672A0C
 00672AAB    or          esi,2
 00672AAE    mov         al,byte ptr [edi]
 00672AB0    mov         byte ptr [ebp-19],al
 00672AB3    inc         edi
>00672AB4    jmp         00672A0C
 00672AB9    or          esi,4
 00672ABC    mov         dl,byte ptr [edi]
 00672ABE    mov         byte ptr [ebp-19],dl
 00672AC1    inc         edi
>00672AC2    jmp         00672A0C
 00672AC7    or          esi,8
 00672ACA    mov         cl,byte ptr [edi]
 00672ACC    mov         byte ptr [ebp-19],cl
 00672ACF    inc         edi
>00672AD0    jmp         00672A0C
 00672AD5    cmp         dword ptr [ebp-10],0
>00672AD9    jge         00672AE4
 00672ADB    movsx       eax,byte ptr [ebp-19]
 00672ADF    add         eax,0FFFFFFD0
>00672AE2    jmp         00672AF5
 00672AE4    mov         eax,dword ptr [ebp-10]
 00672AE7    add         eax,eax
 00672AE9    lea         eax,[eax+eax*4]
 00672AEC    movsx       edx,byte ptr [ebp-19]
 00672AF0    add         eax,edx
 00672AF2    add         eax,0FFFFFFD0
 00672AF5    mov         dword ptr [ebp-10],eax
 00672AF8    mov         cl,byte ptr [edi]
 00672AFA    inc         edi
 00672AFB    mov         byte ptr [ebp-19],cl
>00672AFE    jmp         00672A0C
 00672B03    and         esi,0FFFFFFDF
 00672B06    mov         al,byte ptr [edi]
 00672B08    mov         byte ptr [ebp-19],al
 00672B0B    inc         edi
>00672B0C    jmp         00672A0C
 00672B11    or          esi,20
 00672B14    mov         dl,byte ptr [edi]
 00672B16    mov         byte ptr [ebp-19],dl
 00672B19    inc         edi
>00672B1A    jmp         00672A0C
 00672B1F    cmp         byte ptr [edi],36
>00672B22    jne         00672B35
 00672B24    cmp         byte ptr [edi+1],34
>00672B28    jne         00672B35
 00672B2A    and         esi,0FFFFFFF9
 00672B2D    or          esi,8
 00672B30    add         edi,2
>00672B33    jmp         00672B6A
 00672B35    cmp         byte ptr [edi],33
>00672B38    jne         00672B4B
 00672B3A    cmp         byte ptr [edi+1],32
>00672B3E    jne         00672B4B
 00672B40    and         esi,0FFFFFFF5
 00672B43    or          esi,4
 00672B46    add         edi,2
>00672B49    jmp         00672B6A
 00672B4B    cmp         byte ptr [edi],31
>00672B4E    jne         00672B61
 00672B50    cmp         byte ptr [edi+1],36
>00672B54    jne         00672B61
 00672B56    and         esi,0FFFFFFF3
 00672B59    or          esi,2
 00672B5C    add         edi,2
>00672B5F    jmp         00672B6A
 00672B61    cmp         byte ptr [edi],38
>00672B64    jne         00672B6A
 00672B66    and         esi,0FFFFFFF1
 00672B69    inc         edi
 00672B6A    mov         cl,byte ptr [edi]
 00672B6C    inc         edi
 00672B6D    mov         byte ptr [ebp-19],cl
>00672B70    jmp         00672A0C
 00672B75    mov         dword ptr [ebp-14],0A
>00672B7C    jmp         00672BA3
 00672B7E    mov         dword ptr [ebp-14],8
>00672B85    jmp         00672BA3
 00672B87    mov         dword ptr [ebp-14],10
>00672B8E    jmp         00672BA3
 00672B90    xor         eax,eax
 00672B92    mov         dword ptr [ebp-14],eax
>00672B95    jmp         00672BA3
 00672B97    mov         eax,dword ptr [ebp-8]
 00672B9A    cdq
 00672B9B    mov         dword ptr [ebp-28],eax
 00672B9E    mov         dword ptr [ebp-24],edx
>00672BA1    jmp         00672BE7
 00672BA3    lea         ecx,[ebp-0C]
 00672BA6    lea         eax,[ebp-8]
 00672BA9    push        ecx
 00672BAA    push        eax
 00672BAB    mov         edx,dword ptr [ebp-10]
 00672BAE    and         edx,7FFF
 00672BB4    push        edx
 00672BB5    mov         ecx,dword ptr [ebp-14]
 00672BB8    push        ecx
 00672BB9    mov         eax,dword ptr [ebp+10]
 00672BBC    push        eax
 00672BBD    mov         edx,dword ptr [ebp+0C]
 00672BC0    push        edx
 00672BC1    mov         ecx,dword ptr [ebp+8]
 00672BC4    push        ecx
 00672BC5    call        00673100
 00672BCA    add         esp,1C
 00672BCD    mov         dword ptr [ebp-28],eax
 00672BD0    mov         dword ptr [ebp-24],edx
 00672BD3    cmp         dword ptr [ebp-0C],0
>00672BD7    jl          006730DF
 00672BDD    cmp         dword ptr [ebp-0C],0
>00672BE1    je          006730F6
 00672BE7    cmp         byte ptr [ebp-19],41
>00672BEB    jl          00672BFC
 00672BED    cmp         byte ptr [ebp-19],5A
>00672BF1    jg          00672BFC
 00672BF3    cmp         byte ptr [ebp-19],58
>00672BF7    je          00672BFC
 00672BF9    or          esi,4
 00672BFC    test        esi,1
>00672C02    jne         006728E1
 00672C08    test        esi,8
>00672C0E    je          00672C27
 00672C10    add         dword ptr [ebp+18],4
 00672C14    mov         eax,dword ptr [ebp+18]
 00672C17    mov         edx,dword ptr [eax-4]
 00672C1A    mov         ecx,dword ptr [ebp-28]
 00672C1D    mov         dword ptr [edx],ecx
 00672C1F    mov         ecx,dword ptr [ebp-24]
 00672C22    mov         dword ptr [edx+4],ecx
>00672C25    jmp         00672C69
 00672C27    test        esi,4
>00672C2D    je          00672C40
 00672C2F    mov         eax,dword ptr [ebp-28]
 00672C32    add         dword ptr [ebp+18],4
 00672C36    mov         edx,dword ptr [ebp+18]
 00672C39    mov         ecx,dword ptr [edx-4]
 00672C3C    mov         dword ptr [ecx],eax
>00672C3E    jmp         00672C69
 00672C40    test        esi,2
>00672C46    je          00672C5A
 00672C48    mov         eax,dword ptr [ebp-28]
 00672C4B    add         dword ptr [ebp+18],4
 00672C4F    mov         edx,dword ptr [ebp+18]
 00672C52    mov         ecx,dword ptr [edx-4]
 00672C55    mov         word ptr [ecx],ax
>00672C58    jmp         00672C69
 00672C5A    mov         eax,dword ptr [ebp-28]
 00672C5D    add         dword ptr [ebp+18],4
 00672C61    mov         edx,dword ptr [ebp+18]
 00672C64    mov         ecx,dword ptr [edx-4]
 00672C67    mov         dword ptr [ecx],eax
 00672C69    cmp         byte ptr [ebp-19],6E
>00672C6D    je          006728E1
 00672C73    inc         dword ptr [ebp-4]
>00672C76    jmp         006728E1
 00672C7B    lea         eax,[ebp-0C]
 00672C7E    lea         edx,[ebp-8]
 00672C81    push        eax
 00672C82    push        edx
 00672C83    push        8
 00672C85    push        10
 00672C87    mov         ecx,dword ptr [ebp+10]
 00672C8A    push        ecx
 00672C8B    mov         eax,dword ptr [ebp+0C]
 00672C8E    push        eax
 00672C8F    mov         edx,dword ptr [ebp+8]
 00672C92    push        edx
 00672C93    call        00673100
 00672C98    add         esp,1C
 00672C9B    mov         dword ptr [ebp-28],eax
 00672C9E    mov         dword ptr [ebp-24],edx
 00672CA1    cmp         dword ptr [ebp-0C],0
>00672CA5    jle         006730F6
 00672CAB    test        esi,1
>00672CB1    jne         006728E1
 00672CB7    mov         eax,dword ptr [ebp-28]
 00672CBA    add         dword ptr [ebp+18],4
 00672CBE    mov         edx,dword ptr [ebp+18]
 00672CC1    mov         ecx,dword ptr [edx-4]
 00672CC4    mov         dword ptr [ecx],eax
 00672CC6    inc         dword ptr [ebp-4]
>00672CC9    jmp         006728E1
 00672CCE    lea         eax,[ebp-0C]
 00672CD1    lea         edx,[ebp-8]
 00672CD4    push        eax
 00672CD5    push        edx
 00672CD6    mov         ecx,dword ptr [ebp-10]
 00672CD9    and         ecx,7FFF
 00672CDF    push        ecx
 00672CE0    mov         eax,dword ptr [ebp+10]
 00672CE3    push        eax
 00672CE4    lea         eax,[ebp-34]
 00672CE7    mov         edx,dword ptr [ebp+0C]
 00672CEA    push        edx
 00672CEB    mov         ecx,dword ptr [ebp+8]
 00672CEE    push        ecx
 00672CEF    push        eax
 00672CF0    call        00676DF4
 00672CF5    add         esp,1C
 00672CF8    cmp         dword ptr [ebp-0C],0
>00672CFC    jl          006730DF
 00672D02    cmp         dword ptr [ebp-0C],0
>00672D06    je          006730F6
 00672D0C    test        esi,1
>00672D12    jne         006728E1
 00672D18    push        esi
 00672D19    add         dword ptr [ebp+18],4
 00672D1D    mov         edx,dword ptr [ebp+18]
 00672D20    mov         ecx,dword ptr [edx-4]
 00672D23    push        ecx
 00672D24    lea         eax,[ebp-34]
 00672D27    push        eax
 00672D28    call        00676DFA
 00672D2D    add         esp,0C
 00672D30    inc         dword ptr [ebp-4]
>00672D33    jmp         006728E1
 00672D38    test        esi,4
>00672D3E    je          00672D49
 00672D40    mov         dword ptr [ebp-3C],1
>00672D47    jmp         00672D6A
 00672D49    test        esi,2
>00672D4F    je          00672D58
 00672D51    xor         edx,edx
 00672D53    mov         dword ptr [ebp-3C],edx
>00672D56    jmp         00672D6A
 00672D58    cmp         eax,11
>00672D5B    jne         00672D6A
 00672D5D    mov         ecx,dword ptr [ebp-3C]
 00672D60    cmp         ecx,1
 00672D63    sbb         eax,eax
 00672D65    neg         eax
 00672D67    mov         dword ptr [ebp-3C],eax
 00672D6A    inc         dword ptr [ebp-8]
 00672D6D    mov         edx,dword ptr [ebp+10]
 00672D70    push        edx
 00672D71    call        dword ptr [ebp+8]
 00672D74    pop         ecx
 00672D75    mov         dword ptr [ebp-20],eax
 00672D78    cmp         dword ptr [ebp-20],0FFFFFFFF
 00672D7C    mov         ebx,eax
>00672D7E    je          006730DF
 00672D84    test        bl,80
>00672D87    jne         00672D98
 00672D89    movsx       eax,bl
 00672D8C    and         eax,7F
 00672D8F    cmp         byte ptr [eax+6E63D8],1
>00672D96    je          00672D6A
 00672D98    test        esi,1
>00672D9E    jne         00672DC5
 00672DA0    cmp         dword ptr [ebp-3C],0
>00672DA4    je          00672DB5
 00672DA6    add         dword ptr [ebp+18],4
 00672DAA    mov         edx,dword ptr [ebp+18]
 00672DAD    mov         ecx,dword ptr [edx-4]
 00672DB0    mov         dword ptr [ebp-40],ecx
>00672DB3    jmp         00672DC2
 00672DB5    add         dword ptr [ebp+18],4
 00672DB9    mov         eax,dword ptr [ebp+18]
 00672DBC    mov         edx,dword ptr [eax-4]
 00672DBF    mov         dword ptr [ebp-40],edx
 00672DC2    inc         dword ptr [ebp-4]
 00672DC5    cmp         dword ptr [ebp-10],0FFFFFFFF
>00672DC9    jne         00672DD2
 00672DCB    mov         dword ptr [ebp-10],7FFF
 00672DD2    test        esi,1
>00672DD8    jne         00672E2E
 00672DDA    cmp         dword ptr [ebp-3C],0
>00672DDE    jne         00672DEA
 00672DE0    mov         ecx,dword ptr [ebp-40]
 00672DE3    inc         dword ptr [ebp-40]
 00672DE6    mov         byte ptr [ecx],bl
>00672DE8    jmp         00672E2E
 00672DEA    mov         ax,[006E6458];0x0 gvar_006E6458
 00672DF0    mov         edx,dword ptr ds:[6E69CC];0x1 gvar_006E69CC:Integer
 00672DF6    mov         word ptr [ebp-100],ax
 00672DFD    mov         byte ptr [ebp-100],bl
 00672E03    push        edx
 00672E04    lea         ecx,[ebp-100]
 00672E0A    push        ecx
 00672E0B    lea         eax,[ebp-42]
 00672E0E    push        eax
 00672E0F    call        0067643C
 00672E14    add         esp,0C
 00672E17    test        eax,eax
>00672E19    jle         00672E2B
 00672E1B    mov         edx,dword ptr [ebp-40]
 00672E1E    add         dword ptr [ebp-40],2
 00672E22    mov         cx,word ptr [ebp-42]
 00672E26    mov         word ptr [edx],cx
>00672E29    jmp         00672E2E
 00672E2B    dec         dword ptr [ebp-8]
 00672E2E    inc         dword ptr [ebp-8]
 00672E31    mov         eax,dword ptr [ebp+10]
 00672E34    push        eax
 00672E35    call        dword ptr [ebp+8]
 00672E38    pop         ecx
 00672E39    mov         dword ptr [ebp-20],eax
 00672E3C    cmp         dword ptr [ebp-20],0FFFFFFFF
 00672E40    mov         ebx,eax
>00672E42    je          00672E6A
 00672E44    test        bl,bl
>00672E46    je          00672E6A
 00672E48    test        bl,80
>00672E4B    jne         00672E5C
 00672E4D    movsx       eax,bl
 00672E50    and         eax,7F
 00672E53    cmp         byte ptr [eax+6E63D8],1
>00672E5A    je          00672E6A
 00672E5C    dec         dword ptr [ebp-10]
 00672E5F    mov         edx,dword ptr [ebp-10]
 00672E62    test        edx,edx
>00672E64    jg          00672DD2
 00672E6A    movsx       eax,bl
 00672E6D    mov         ecx,dword ptr [ebp+10]
 00672E70    push        ecx
 00672E71    push        eax
 00672E72    call        dword ptr [ebp+0C]
 00672E75    add         esp,8
 00672E78    dec         dword ptr [ebp-8]
 00672E7B    test        esi,1
>00672E81    jne         006728E1
 00672E87    cmp         dword ptr [ebp-3C],0
>00672E8B    je          00672E9A
 00672E8D    mov         edx,dword ptr [ebp-40]
 00672E90    mov         word ptr [edx],0
>00672E95    jmp         006728E1
 00672E9A    mov         ecx,dword ptr [ebp-40]
 00672E9D    mov         byte ptr [ecx],0
>00672EA0    jmp         006728E1
 00672EA5    test        esi,4
>00672EAB    je          00672EB6
 00672EAD    mov         dword ptr [ebp-3C],1
>00672EB4    jmp         00672ED7
 00672EB6    test        esi,2
>00672EBC    je          00672EC5
 00672EBE    xor         eax,eax
 00672EC0    mov         dword ptr [ebp-3C],eax
>00672EC3    jmp         00672ED7
 00672EC5    cmp         eax,7
>00672EC8    jne         00672ED7
 00672ECA    mov         edx,dword ptr [ebp-3C]
 00672ECD    cmp         edx,1
 00672ED0    sbb         ecx,ecx
 00672ED2    neg         ecx
 00672ED4    mov         dword ptr [ebp-3C],ecx
 00672ED7    test        esi,1
>00672EDD    jne         00672F01
 00672EDF    cmp         dword ptr [ebp-3C],0
>00672EE3    je          00672EF4
 00672EE5    add         dword ptr [ebp+18],4
 00672EE9    mov         eax,dword ptr [ebp+18]
 00672EEC    mov         edx,dword ptr [eax-4]
 00672EEF    mov         dword ptr [ebp-40],edx
>00672EF2    jmp         00672F01
 00672EF4    add         dword ptr [ebp+18],4
 00672EF8    mov         ecx,dword ptr [ebp+18]
 00672EFB    mov         eax,dword ptr [ecx-4]
 00672EFE    mov         dword ptr [ebp-40],eax
 00672F01    cmp         dword ptr [ebp-10],0
>00672F05    jge         00672F0E
 00672F07    mov         dword ptr [ebp-10],1
 00672F0E    cmp         dword ptr [ebp-10],0
>00672F12    je          00672F7C
 00672F14    inc         dword ptr [ebp-8]
 00672F17    mov         edx,dword ptr [ebp+10]
 00672F1A    push        edx
 00672F1B    call        dword ptr [ebp+8]
 00672F1E    pop         ecx
 00672F1F    mov         dword ptr [ebp-20],eax
 00672F22    cmp         dword ptr [ebp-20],0FFFFFFFF
 00672F26    mov         ebx,eax
>00672F28    je          006730DF
 00672F2E    test        esi,1
>00672F34    jne         00672F72
 00672F36    cmp         dword ptr [ebp-3C],0
>00672F3A    jne         00672F46
 00672F3C    mov         eax,dword ptr [ebp-40]
 00672F3F    inc         dword ptr [ebp-40]
 00672F42    mov         byte ptr [eax],bl
>00672F44    jmp         00672F72
 00672F46    mov         edx,dword ptr ds:[6E69CC];0x1 gvar_006E69CC:Integer
 00672F4C    push        edx
 00672F4D    mov         ecx,dword ptr [ebp-40]
 00672F50    push        ecx
 00672F51    lea         eax,[ebp-102]
 00672F57    push        eax
 00672F58    call        0067643C
 00672F5D    add         esp,0C
 00672F60    test        eax,eax
>00672F62    jle         00672F72
 00672F64    mov         dl,byte ptr [ebp-102]
 00672F6A    mov         ecx,dword ptr [ebp-40]
 00672F6D    inc         dword ptr [ebp-40]
 00672F70    mov         byte ptr [ecx],dl
 00672F72    dec         dword ptr [ebp-10]
 00672F75    mov         eax,dword ptr [ebp-10]
 00672F78    test        eax,eax
>00672F7A    jg          00672F14
 00672F7C    test        esi,1
>00672F82    jne         006728E1
 00672F88    inc         dword ptr [ebp-4]
>00672F8B    jmp         006728E1
 00672F90    push        20
 00672F92    push        0
 00672F94    lea         edx,[ebp-124]
 00672F9A    push        edx
 00672F9B    call        0066F904
 00672FA0    add         esp,0C
 00672FA3    xor         ecx,ecx
 00672FA5    mov         dword ptr [ebp-18],ecx
 00672FA8    mov         bl,byte ptr [edi]
 00672FAA    inc         edi
 00672FAB    cmp         bl,5E
>00672FAE    jne         00672FBA
 00672FB0    mov         dword ptr [ebp-18],1
 00672FB7    mov         bl,byte ptr [edi]
 00672FB9    inc         edi
 00672FBA    mov         byte ptr [ebp-19],bl
 00672FBD    test        bl,bl
>00672FBF    je          006730F6
 00672FC5    movsx       eax,bl
 00672FC8    mov         ecx,eax
 00672FCA    and         ecx,7
 00672FCD    mov         dl,1
 00672FCF    shl         dl,cl
 00672FD1    sar         eax,3
 00672FD4    and         eax,1F
 00672FD7    or          byte ptr [ebp+eax-124],dl
 00672FDE    mov         bl,byte ptr [edi]
 00672FE0    inc         edi
 00672FE1    cmp         bl,5D
>00672FE4    je          00673022
 00672FE6    cmp         bl,2D
>00672FE9    jne         00672FBA
 00672FEB    mov         al,byte ptr [edi]
 00672FED    cmp         al,byte ptr [ebp-19]
>00672FF0    jle         00672FBA
 00672FF2    cmp         byte ptr [edi],5D
>00672FF5    je          00672FBA
 00672FF7    mov         bl,byte ptr [edi]
 00672FF9    inc         edi
>00672FFA    jmp         00673016
 00672FFC    movsx       eax,byte ptr [ebp-19]
 00673000    mov         ecx,eax
 00673002    and         ecx,7
 00673005    mov         dl,1
 00673007    shl         dl,cl
 00673009    sar         eax,3
 0067300C    and         eax,1F
 0067300F    or          byte ptr [ebp+eax-124],dl
 00673016    inc         byte ptr [ebp-19]
 00673019    mov         al,byte ptr [ebp-19]
 0067301C    cmp         bl,al
>0067301E    jg          00672FFC
>00673020    jmp         00672FBA
 00673022    cmp         dword ptr [ebp-10],0FFFFFFFF
>00673026    jne         0067302F
 00673028    mov         dword ptr [ebp-10],7FFF
 0067302F    test        esi,1
>00673035    jne         00673044
 00673037    add         dword ptr [ebp+18],4
 0067303B    mov         edx,dword ptr [ebp+18]
 0067303E    mov         ecx,dword ptr [edx-4]
 00673041    mov         dword ptr [ebp-40],ecx
 00673044    xor         eax,eax
 00673046    mov         dword ptr [ebp-38],eax
>00673049    jmp         0067309E
 0067304B    inc         dword ptr [ebp-8]
 0067304E    mov         edx,dword ptr [ebp+10]
 00673051    push        edx
 00673052    call        dword ptr [ebp+8]
 00673055    pop         ecx
 00673056    mov         dword ptr [ebp-20],eax
 00673059    cmp         dword ptr [ebp-20],0FFFFFFFF
 0067305D    mov         ebx,eax
>0067305F    je          006730A3
 00673061    movsx       eax,bl
 00673064    mov         ecx,eax
 00673066    mov         edx,1
 0067306B    sar         eax,3
 0067306E    and         ecx,7
 00673071    and         eax,1F
 00673074    shl         edx,cl
 00673076    movsx       eax,byte ptr [ebp+eax-124]
 0067307E    and         edx,eax
 00673080    setne       dl
 00673083    and         edx,1
 00673086    cmp         edx,dword ptr [ebp-18]
>00673089    je          006730A3
 0067308B    inc         dword ptr [ebp-38]
 0067308E    test        esi,1
>00673094    jne         0067309E
 00673096    mov         ecx,dword ptr [ebp-40]
 00673099    inc         dword ptr [ebp-40]
 0067309C    mov         byte ptr [ecx],bl
 0067309E    dec         dword ptr [ebp-10]
>006730A1    jns         0067304B
 006730A3    cmp         dword ptr [ebp-10],0
>006730A7    jl          006730BA
 006730A9    movsx       edx,bl
 006730AC    mov         eax,dword ptr [ebp+10]
 006730AF    push        eax
 006730B0    push        edx
 006730B1    call        dword ptr [ebp+0C]
 006730B4    add         esp,8
 006730B7    dec         dword ptr [ebp-8]
 006730BA    cmp         dword ptr [ebp-38],0
>006730BE    je          006730D4
 006730C0    test        esi,1
>006730C6    jne         006730D4
 006730C8    mov         ecx,dword ptr [ebp-40]
 006730CB    inc         dword ptr [ebp-40]
 006730CE    mov         byte ptr [ecx],0
 006730D1    inc         dword ptr [ebp-4]
 006730D4    cmp         dword ptr [ebp-20],0FFFFFFFF
>006730D8    je          006730DF
>006730DA    jmp         006728E1
 006730DF    mov         eax,dword ptr [ebp+10]
 006730E2    push        eax
 006730E3    push        0FF
 006730E5    call        dword ptr [ebp+0C]
 006730E8    add         esp,8
 006730EB    cmp         dword ptr [ebp-4],0
>006730EF    jne         006730F6
 006730F1    or          eax,0FFFFFFFF
>006730F4    jmp         006730F9
 006730F6    mov         eax,dword ptr [ebp-4]
 006730F9    pop         edi
 006730FA    pop         esi
 006730FB    pop         ebx
 006730FC    mov         esp,ebp
 006730FE    pop         ebp
 006730FF    ret
end;*}

//00673100
{*function sub_00673100(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00673100    push        ebp
 00673101    mov         ebp,esp
 00673103    add         esp,0FFFFFFDC
 00673106    xor         eax,eax
 00673108    xor         edx,edx
 0067310A    push        ebx
 0067310B    push        esi
 0067310C    push        edi
 0067310D    mov         esi,dword ptr [ebp+14]
 00673110    xor         edi,edi
 00673112    mov         byte ptr [ebp-1],0
 00673116    mov         dword ptr [ebp-8],eax
 00673119    mov         dword ptr [ebp-0C],1
 00673120    mov         dword ptr [ebp-10],edx
 00673123    mov         dword ptr [ebp-18],0
 0067312A    mov         dword ptr [ebp-14],0
 00673131    inc         dword ptr [ebp-8]
 00673134    mov         eax,dword ptr [ebp+10]
 00673137    push        eax
 00673138    call        dword ptr [ebp+8]
 0067313B    pop         ecx
 0067313C    mov         ebx,eax
 0067313E    test        edi,edi
>00673140    jne         0067315E
 00673142    test        ebx,ebx
>00673144    jl          00673159
 00673146    cmp         ebx,80
>0067314C    jge         00673159
 0067314E    push        ebx
 0067314F    call        006789FC
 00673154    pop         ecx
 00673155    test        eax,eax
>00673157    jne         00673131
 00673159    mov         edi,1
 0067315E    dec         dword ptr [ebp+18]
>00673161    js          006732D5
 00673167    cmp         edi,1
>0067316A    jne         00673189
 0067316C    mov         edi,2
 00673171    cmp         ebx,2B
>00673174    je          0067317B
 00673176    cmp         ebx,2D
>00673179    jne         00673189
 0067317B    cmp         ebx,2D
 0067317E    sete        al
 00673181    and         eax,1
 00673184    mov         byte ptr [ebp-1],al
>00673187    jmp         00673131
 00673189    cmp         edi,2
>0067318C    jne         006731F8
 0067318E    mov         edi,3
 00673193    cmp         ebx,30
>00673196    jne         006731DB
 00673198    mov         dword ptr [ebp-10],1
 0067319F    test        esi,esi
>006731A1    je          006731A8
 006731A3    cmp         esi,10
>006731A6    jne         006731DB
 006731A8    inc         dword ptr [ebp-8]
 006731AB    mov         eax,dword ptr [ebp+10]
 006731AE    push        eax
 006731AF    call        dword ptr [ebp+8]
 006731B2    pop         ecx
 006731B3    mov         ebx,eax
 006731B5    dec         dword ptr [ebp+18]
>006731B8    js          006732D5
 006731BE    cmp         ebx,78
>006731C1    je          006731C8
 006731C3    cmp         ebx,58
>006731C6    jne         006731D2
 006731C8    mov         esi,10
>006731CD    jmp         00673131
 006731D2    test        esi,esi
>006731D4    jne         006731DB
 006731D6    mov         esi,8
 006731DB    test        esi,esi
>006731DD    jne         006731E6
 006731DF    mov         esi,0A
>006731E4    jmp         006731F8
 006731E6    cmp         esi,1
>006731E9    jl          006732D5
 006731EF    cmp         esi,24
>006731F2    jg          006732D5
 006731F8    cmp         edi,3
>006731FB    jne         00673131
 00673201    cmp         ebx,30
>00673204    jl          00673213
 00673206    cmp         ebx,39
>00673209    jg          00673213
 0067320B    lea         eax,[ebx-30]
 0067320E    mov         dword ptr [ebp-1C],eax
>00673211    jmp         0067323D
 00673213    cmp         ebx,61
>00673216    jl          00673225
 00673218    cmp         ebx,7A
>0067321B    jg          00673225
 0067321D    lea         edx,[ebx-57]
 00673220    mov         dword ptr [ebp-1C],edx
>00673223    jmp         0067323D
 00673225    cmp         ebx,41
>00673228    jl          006732D5
 0067322E    cmp         ebx,5A
>00673231    jg          006732D5
 00673237    lea         ecx,[ebx-37]
 0067323A    mov         dword ptr [ebp-1C],ecx
 0067323D    cmp         esi,dword ptr [ebp-1C]
>00673240    jle         006732D5
 00673246    inc         dword ptr [ebp-10]
 00673249    mov         eax,dword ptr [ebp-18]
 0067324C    mov         dword ptr [ebp-24],eax
 0067324F    mov         eax,dword ptr [ebp-14]
 00673252    mov         dword ptr [ebp-20],eax
 00673255    mov         eax,esi
 00673257    cdq
 00673258    push        edx
 00673259    push        eax
 0067325A    mov         eax,dword ptr [ebp-18]
 0067325D    mov         edx,dword ptr [ebp-14]
 00673260    call        00676890
 00673265    push        edx
 00673266    push        eax
 00673267    mov         eax,dword ptr [ebp-1C]
 0067326A    cdq
 0067326B    add         eax,dword ptr [esp]
 0067326E    adc         edx,dword ptr [esp+4]
 00673272    add         esp,8
 00673275    mov         dword ptr [ebp-18],eax
 00673278    mov         dword ptr [ebp-14],edx
 0067327B    mov         eax,esi
 0067327D    cdq
 0067327E    push        edx
 0067327F    push        eax
 00673280    mov         eax,dword ptr [ebp-18]
 00673283    mov         edx,dword ptr [ebp-14]
 00673286    push        edx
 00673287    push        eax
 00673288    mov         eax,dword ptr [ebp-1C]
 0067328B    cdq
 0067328C    sub         dword ptr [esp],eax
 0067328F    sbb         dword ptr [esp+4],edx
 00673293    pop         eax
 00673294    pop         edx
 00673295    call        0067692B
 0067329A    cmp         edx,dword ptr [ebp-20]
>0067329D    jne         006732A2
 0067329F    cmp         eax,dword ptr [ebp-24]
>006732A2    je          00673131
 006732A8    mov         dword ptr [ebp-0C],2
 006732AF    cmp         byte ptr [ebp-1],0
>006732B3    je          006732BE
 006732B5    xor         eax,eax
 006732B7    mov         edx,80000000
>006732BC    jmp         006732C8
 006732BE    mov         eax,0FFFFFFFF
 006732C3    mov         edx,7FFFFFFF
 006732C8    mov         dword ptr [ebp-18],eax
 006732CB    mov         dword ptr [ebp-14],edx
>006732CE    jmp         006732D5
>006732D0    jmp         00673131
 006732D5    cmp         dword ptr [ebp-0C],2
>006732D9    je          006732FB
 006732DB    mov         ecx,dword ptr [ebp+10]
 006732DE    push        ecx
 006732DF    push        ebx
 006732E0    call        dword ptr [ebp+0C]
 006732E3    add         esp,8
 006732E6    dec         dword ptr [ebp-8]
 006732E9    cmp         byte ptr [ebp-1],0
>006732ED    je          006732FB
 006732EF    mov         eax,dword ptr [ebp-18]
 006732F2    neg         eax
 006732F4    cdq
 006732F5    mov         dword ptr [ebp-18],eax
 006732F8    mov         dword ptr [ebp-14],edx
 006732FB    cmp         dword ptr [ebp-10],0
>006732FF    jne         0067330E
 00673301    inc         ebx
>00673302    jne         00673309
 00673304    or          ecx,0FFFFFFFF
>00673307    jmp         0067330B
 00673309    xor         ecx,ecx
 0067330B    mov         dword ptr [ebp-0C],ecx
 0067330E    mov         eax,dword ptr [ebp+20]
 00673311    mov         edx,dword ptr [ebp-0C]
 00673314    mov         dword ptr [eax],edx
 00673316    mov         eax,dword ptr [ebp+1C]
 00673319    mov         edx,dword ptr [ebp-8]
 0067331C    add         dword ptr [eax],edx
 0067331E    mov         eax,dword ptr [ebp-18]
 00673321    mov         edx,dword ptr [ebp-14]
 00673324    pop         edi
 00673325    pop         esi
 00673326    pop         ebx
 00673327    mov         esp,ebp
 00673329    pop         ebp
 0067332A    ret
end;*}

//0067332C
{*function sub_0067332C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0067332C    push        ebp
 0067332D    mov         ebp,esp
 0067332F    push        ebx
 00673330    push        esi
 00673331    push        edi
 00673332    mov         edi,dword ptr [ebp+14]
 00673335    mov         esi,dword ptr [ebp+10]
 00673338    mov         ebx,dword ptr [ebp+8]
 0067333B    cmp         bl,byte ptr [ebx+17]
>0067333E    jne         0067334D
 00673340    cmp         esi,2
>00673343    jg          0067334D
 00673345    cmp         edi,7FFFFFFF
>0067334B    jbe         00673352
 0067334D    or          eax,0FFFFFFFF
>00673350    jmp         00673386
 00673352    push        ebx
 00673353    call        006736CC
 00673358    cmp         dword ptr [ebx+8],0
 0067335C    pop         ecx
>0067335D    je          0067336C
 0067335F    push        1
 00673361    push        0
 00673363    push        ebx
 00673364    call        00671FD8
 00673369    add         esp,0C
 0067336C    push        edi
 0067336D    push        esi
 0067336E    mov         edx,dword ptr [ebp+0C]
 00673371    push        edx
 00673372    push        ebx
 00673373    call        0067161C
 00673378    add         esp,10
 0067337B    mov         esi,eax
 0067337D    push        ebx
 0067337E    call        00673794
 00673383    pop         ecx
 00673384    mov         eax,esi
 00673386    pop         edi
 00673387    pop         esi
 00673388    pop         ebx
 00673389    pop         ebp
 0067338A    ret
end;*}

//006733EC
{*function sub_006733EC(?:?; ?:?; ?:?; ?:?):?;
begin
 006733EC    push        ebp
 006733ED    mov         ebp,esp
 006733EF    mov         eax,dword ptr [ebp+0C]
 006733F2    cmp         eax,1
>006733F5    jb          006733FD
 006733F7    mov         edx,dword ptr [ebp+8]
 006733FA    mov         byte ptr [edx],0
 006733FD    mov         ecx,dword ptr [ebp+14]
 00673400    push        ecx
 00673401    push        eax
 00673402    push        1
 00673404    mov         eax,dword ptr [ebp+10]
 00673407    push        eax
 00673408    lea         eax,[ebp+8]
 0067340B    push        eax
 0067340C    push        67338C
 00673411    call        006738B4
 00673416    add         esp,18
 00673419    pop         ebp
 0067341A    ret
end;*}

//006734B4
{*function sub_006734B4(?:?; ?:?; ?:?):?;
begin
 006734B4    push        ebp
 006734B5    mov         ebp,esp
 006734B7    mov         eax,dword ptr [ebp+8]
 006734BA    lea         ecx,[ebp+8]
 006734BD    mov         byte ptr [eax],0
 006734C0    lea         eax,[ebp+10]
 006734C3    push        eax
 006734C4    push        0
 006734C6    push        0
 006734C8    mov         edx,dword ptr [ebp+0C]
 006734CB    push        edx
 006734CC    push        ecx
 006734CD    push        67348C
 006734D2    call        006738B4
 006734D7    add         esp,18
 006734DA    pop         ebp
 006734DB    ret
end;*}

//00673530
{*procedure sub_00673530(?:?; ?:?; ?:?);
begin
 00673530    push        ebp
 00673531    mov         ebp,esp
 00673533    lea         eax,[ebp+10]
 00673536    push        eax
 00673537    mov         edx,dword ptr [ebp+0C]
 0067353A    push        edx
 0067353B    lea         ecx,[ebp+8]
 0067353E    push        ecx
 0067353F    push        673524
 00673544    push        673504
 00673549    call        006728C8
 0067354E    add         esp,14
 00673551    pop         ebp
 00673552    ret
end;*}

end.