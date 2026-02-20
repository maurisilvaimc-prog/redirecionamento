//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit113;

interface

uses
  SysUtils, Classes;

    procedure sub_006782A0;//006782A0
    //function sub_006782B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//006782B8
    //function sub_006782F8(?:?; ?:?; ?:?; ?:?; ?:?):?;//006782F8
    //function sub_006785CC(?:?; ?:?; ?:?; ?:?; ?:?):?;//006785CC
    //function sub_006788C0(?:?):?;//006788C0

implementation

//006782A0
procedure sub_006782A0;
begin
{*
 006782A0    mov         dword ptr ds:[6E6EF8],677DD8
 006782AA    mov         dword ptr ds:[6E6EFC],678220
 006782B4    ret
*}
end;

//006782B8
{*function sub_006782B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006782B8    push        ebp
 006782B9    mov         ebp,esp
 006782BB    push        ebx
 006782BC    fld         qword ptr [ebp+8]
 006782BF    mov         ax,7FF0
 006782C3    and         ax,word ptr [ebp+0E]
 006782C7    cmp         ax,4340
>006782CB    jae         006782D2
 006782CD    fsin
 006782CF    pop         ebx
 006782D0    pop         ebp
 006782D1    ret
 006782D2    fstp        st(0)
 006782D4    push        dword ptr ds:[6E70BC]
 006782DA    push        dword ptr ds:[6E70B8]
 006782E0    push        0
 006782E2    lea         eax,[ebp+8]
 006782E5    push        eax
 006782E6    push        6E70C0
 006782EB    push        5
 006782ED    call        00676A98
 006782F2    add         esp,18
>006782F5    jmp         006782CF
 006782F7    nop
 006782F8    push        ebp
 006782F9    mov         ebp,esp
 006782FB    add         esp,0FFFFFFD8
 006782FE    push        ebx
 006782FF    push        esi
 00678300    push        edi
 00678301    mov         word ptr [ebp-2],0A
 00678307    mov         eax,dword ptr [ebp+18]
 0067830A    sub         eax,2
>0067830D    je          0067831B
 0067830F    sub         eax,4
>00678312    je          00678326
 00678314    sub         eax,2
>00678317    je          00678331
>00678319    jmp         00678347
 0067831B    mov         edx,dword ptr [ebp+8]
 0067831E    fld         dword ptr [edx]
 00678320    fstp        tbyte ptr [ebp-0C]
 00678323    wait
>00678324    jmp         00678347
 00678326    mov         ecx,dword ptr [ebp+8]
 00678329    fld         qword ptr [ecx]
 0067832B    fstp        tbyte ptr [ebp-0C]
 0067832E    wait
>0067832F    jmp         00678347
 00678331    mov         eax,dword ptr [ebp+8]
 00678334    mov         edx,dword ptr [eax]
 00678336    mov         dword ptr [ebp-0C],edx
 00678339    mov         edx,dword ptr [eax+4]
 0067833C    mov         dword ptr [ebp-8],edx
 0067833F    mov         dx,word ptr [eax+8]
 00678343    mov         word ptr [ebp-4],dx
 00678347    lea         eax,[ebp-0C]
 0067834A    lea         edx,[ebp-0C]
 0067834D    mov         dword ptr [ebp-10],edx
 00678350    mov         bx,word ptr [eax+8]
 00678354    mov         edx,ebx
 00678356    and         dx,7FFF
 0067835B    mov         word ptr [eax+8],dx
 0067835F    test        bh,80
 00678362    setne       al
 00678365    and         eax,1
 00678368    mov         ecx,dword ptr [ebp+10]
 0067836B    mov         dword ptr [ecx],eax
 0067836D    lea         eax,[ebp-0C]
 00678370    push        eax
 00678371    call        00676EE4
 00678376    and         ax,4700
 0067837A    pop         ecx
 0067837B    cmp         ax,4000
>0067837F    jne         006783B5
 00678381    mov         ebx,dword ptr [ebp+0C]
 00678384    test        ebx,ebx
>00678386    jg          0067838B
 00678388    neg         ebx
 0067838A    inc         ebx
 0067838B    cmp         ebx,28
>0067838E    jle         00678395
 00678390    mov         ebx,28
 00678395    push        ebx
 00678396    push        30
 00678398    mov         eax,dword ptr [ebp+14]
 0067839B    push        eax
 0067839C    call        0066F904
 006783A1    add         esp,0C
 006783A4    mov         edx,dword ptr [ebp+14]
 006783A7    mov         byte ptr [edx+ebx],0
 006783AB    mov         eax,1
>006783B0    jmp         006785C3
 006783B5    cmp         ax,500
>006783B9    jne         006783C5
 006783BB    mov         eax,7FFF
>006783C0    jmp         006785C3
 006783C5    cmp         ax,100
>006783C9    jne         006783D5
 006783CB    mov         eax,7FFE
>006783D0    jmp         006785C3
 006783D5    movzx       eax,bx
 006783D8    and         eax,7FFF
 006783DD    mov         ecx,dword ptr [ebp-10]
 006783E0    add         eax,0FFFFC001
 006783E5    imul        edx,eax,4D10
 006783EB    mov         eax,edx
 006783ED    xor         edx,edx
 006783EF    mov         dl,byte ptr [ecx+7]
 006783F2    add         edx,edx
 006783F4    and         edx,0FF
 006783FA    mov         ecx,edx
 006783FC    lea         edx,[ecx+edx*8]
 006783FF    lea         edx,[ecx+edx*2]
 00678402    lea         edx,[ecx+edx*4]
 00678405    movsx       edx,dx
 00678408    and         edx,0FFFF
 0067840E    add         eax,edx
 00678410    mov         ecx,eax
 00678412    sar         ecx,10
 00678415    test        eax,0FFFF
 0067841A    mov         dword ptr [ebp-14],ecx
>0067841D    je          00678422
 0067841F    inc         dword ptr [ebp-14]
 00678422    mov         edi,dword ptr [ebp+0C]
 00678425    test        edi,edi
>00678427    jg          00678437
 00678429    mov         edi,dword ptr [ebp-14]
 0067842C    sub         edi,dword ptr [ebp+0C]
 0067842F    test        edi,edi
>00678431    jl          00678381
 00678437    cmp         edi,13
>0067843A    jle         00678441
 0067843C    mov         edi,13
 00678441    mov         esi,edi
 00678443    sub         esi,dword ptr [ebp-14]
 00678446    test        esi,esi
>00678448    je          00678492
 0067844A    mov         ebx,esi
 0067844C    test        esi,esi
>0067844E    jge         00678454
 00678450    mov         ebx,esi
 00678452    neg         ebx
 00678454    cmp         ebx,1344
>0067845A    jle         00678461
 0067845C    mov         ebx,1344
 00678461    push        ebx
 00678462    call        00676B48
 00678467    pop         ecx
 00678468    fstp        tbyte ptr [ebp-20]
 0067846B    wait
 0067846C    test        esi,esi
>0067846E    jge         00678480
 00678470    fld         tbyte ptr [ebp-20]
 00678473    fld         tbyte ptr [ebp-0C]
 00678476    fdivrp      st(1),st
 00678478    fstp        tbyte ptr [ebp-0C]
 0067847B    wait
 0067847C    add         esi,ebx
>0067847E    jmp         0067848E
 00678480    fld         tbyte ptr [ebp-20]
 00678483    fld         tbyte ptr [ebp-0C]
 00678486    fmulp       st(1),st
 00678488    fstp        tbyte ptr [ebp-0C]
 0067848B    wait
 0067848C    sub         esi,ebx
 0067848E    test        esi,esi
>00678490    jne         0067844A
 00678492    push        edi
 00678493    call        00676B48
 00678498    pop         ecx
 00678499    fstp        tbyte ptr [ebp-20]
 0067849C    wait
 0067849D    fld         tbyte ptr [ebp-0C]
 006784A0    fld         tbyte ptr [ebp-20]
 006784A3    fcompp
 006784A5    fnstsw      al
 006784A7    sahf
>006784A8    jae         006784CF
 006784AA    inc         dword ptr [ebp-14]
 006784AD    inc         edi
 006784AE    cmp         edi,13
>006784B1    jg          00678508
 006784B3    cmp         dword ptr [ebp+0C],0
>006784B7    jle         00678508
 006784B9    movsx       edx,word ptr [ebp-2]
 006784BD    mov         dword ptr [ebp-28],edx
 006784C0    fild        dword ptr [ebp-28]
 006784C3    fld         tbyte ptr [ebp-0C]
 006784C6    fdivrp      st(1),st
 006784C8    fstp        tbyte ptr [ebp-0C]
 006784CB    wait
 006784CC    dec         edi
>006784CD    jmp         00678508
 006784CF    lea         ecx,[edi-1]
 006784D2    push        ecx
 006784D3    call        00676B48
 006784D8    pop         ecx
 006784D9    fstp        tbyte ptr [ebp-20]
 006784DC    wait
 006784DD    fld         tbyte ptr [ebp-0C]
 006784E0    fld         tbyte ptr [ebp-20]
 006784E3    fcompp
 006784E5    fnstsw      al
 006784E7    sahf
>006784E8    jbe         00678508
 006784EA    dec         dword ptr [ebp-14]
 006784ED    dec         edi
 006784EE    cmp         dword ptr [ebp+0C],0
>006784F2    jle         00678508
 006784F4    movsx       edx,word ptr [ebp-2]
 006784F8    mov         dword ptr [ebp-28],edx
 006784FB    fild        dword ptr [ebp-28]
 006784FE    fld         tbyte ptr [ebp-0C]
 00678501    fmulp       st(1),st
 00678503    fstp        tbyte ptr [ebp-0C]
 00678506    wait
 00678507    inc         edi
 00678508    test        edi,edi
>0067850A    jl          00678381
 00678510    lea         ecx,[ebp-0C]
 00678513    push        ecx
 00678514    lea         eax,[ebp-0C]
 00678517    push        eax
 00678518    call        00676EC0
 0067851D    mov         edx,dword ptr [ebp+14]
 00678520    add         esp,8
 00678523    add         edx,edi
 00678525    xor         esi,esi
 00678527    mov         ebx,edx
 00678529    mov         dword ptr [ebp-24],edx
 0067852C    mov         byte ptr [ebx],0
 0067852F    dec         ebx
 00678530    test        edi,edi
>00678532    jne         0067854D
 00678534    mov         eax,dword ptr [ebp-10]
 00678537    movzx       esi,byte ptr [eax]
 0067853A    and         esi,0FF
 00678540    xor         esi,1
 00678543    test        esi,esi
>00678545    jne         00678381
>0067854B    jmp         00678567
 0067854D    lea         eax,[ebp-0C]
 00678550    push        eax
 00678551    call        00677240
 00678556    pop         ecx
 00678557    movsx       edx,al
 0067855A    or          esi,edx
 0067855C    add         eax,30
 0067855F    mov         byte ptr [ebx],al
 00678561    dec         ebx
 00678562    dec         edi
>00678563    je          00678567
>00678565    jmp         0067854D
 00678567    test        esi,esi
>00678569    jne         00678581
 0067856B    inc         dword ptr [ebp-14]
 0067856E    cmp         dword ptr [ebp+0C],0
>00678572    jg          0067857A
 00678574    mov         edx,dword ptr [ebp-24]
 00678577    mov         byte ptr [edx],30
 0067857A    inc         dword ptr [ebp-24]
 0067857D    mov         byte ptr [ebx+1],31
 00678581    mov         ebx,dword ptr [ebp+0C]
 00678584    test        ebx,ebx
>00678586    jg          0067858E
 00678588    mov         ebx,dword ptr [ebp-14]
 0067858B    sub         ebx,dword ptr [ebp+0C]
 0067858E    cmp         ebx,28
>00678591    jle         00678598
 00678593    mov         ebx,28
 00678598    mov         eax,dword ptr [ebp-24]
 0067859B    mov         byte ptr [eax],0
 0067859E    mov         edx,dword ptr [ebp-24]
 006785A1    sub         edx,dword ptr [ebp+14]
 006785A4    sub         ebx,edx
 006785A6    test        ebx,ebx
>006785A8    jle         006785C0
 006785AA    push        ebx
 006785AB    push        30
 006785AD    mov         ecx,dword ptr [ebp-24]
 006785B0    push        ecx
 006785B1    call        0066F904
 006785B6    add         esp,0C
 006785B9    mov         eax,dword ptr [ebp-24]
 006785BC    mov         byte ptr [eax+ebx],0
 006785C0    mov         eax,dword ptr [ebp-14]
 006785C3    pop         edi
 006785C4    pop         esi
 006785C5    pop         ebx
 006785C6    mov         esp,ebp
 006785C8    pop         ebp
 006785C9    ret
end;*}

//006782F8
{*function sub_006782F8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006782F8    push        ebp
 006782F9    mov         ebp,esp
 006782FB    add         esp,0FFFFFFD8
 006782FE    push        ebx
 006782FF    push        esi
 00678300    push        edi
 00678301    mov         word ptr [ebp-2],0A
 00678307    mov         eax,dword ptr [ebp+18]
 0067830A    sub         eax,2
>0067830D    je          0067831B
 0067830F    sub         eax,4
>00678312    je          00678326
 00678314    sub         eax,2
>00678317    je          00678331
>00678319    jmp         00678347
 0067831B    mov         edx,dword ptr [ebp+8]
 0067831E    fld         dword ptr [edx]
 00678320    fstp        tbyte ptr [ebp-0C]
 00678323    wait
>00678324    jmp         00678347
 00678326    mov         ecx,dword ptr [ebp+8]
 00678329    fld         qword ptr [ecx]
 0067832B    fstp        tbyte ptr [ebp-0C]
 0067832E    wait
>0067832F    jmp         00678347
 00678331    mov         eax,dword ptr [ebp+8]
 00678334    mov         edx,dword ptr [eax]
 00678336    mov         dword ptr [ebp-0C],edx
 00678339    mov         edx,dword ptr [eax+4]
 0067833C    mov         dword ptr [ebp-8],edx
 0067833F    mov         dx,word ptr [eax+8]
 00678343    mov         word ptr [ebp-4],dx
 00678347    lea         eax,[ebp-0C]
 0067834A    lea         edx,[ebp-0C]
 0067834D    mov         dword ptr [ebp-10],edx
 00678350    mov         bx,word ptr [eax+8]
 00678354    mov         edx,ebx
 00678356    and         dx,7FFF
 0067835B    mov         word ptr [eax+8],dx
 0067835F    test        bh,80
 00678362    setne       al
 00678365    and         eax,1
 00678368    mov         ecx,dword ptr [ebp+10]
 0067836B    mov         dword ptr [ecx],eax
 0067836D    lea         eax,[ebp-0C]
 00678370    push        eax
 00678371    call        00676EE4
 00678376    and         ax,4700
 0067837A    pop         ecx
 0067837B    cmp         ax,4000
>0067837F    jne         006783B5
 00678381    mov         ebx,dword ptr [ebp+0C]
 00678384    test        ebx,ebx
>00678386    jg          0067838B
 00678388    neg         ebx
 0067838A    inc         ebx
 0067838B    cmp         ebx,28
>0067838E    jle         00678395
 00678390    mov         ebx,28
 00678395    push        ebx
 00678396    push        30
 00678398    mov         eax,dword ptr [ebp+14]
 0067839B    push        eax
 0067839C    call        0066F904
 006783A1    add         esp,0C
 006783A4    mov         edx,dword ptr [ebp+14]
 006783A7    mov         byte ptr [edx+ebx],0
 006783AB    mov         eax,1
>006783B0    jmp         006785C3
 006783B5    cmp         ax,500
>006783B9    jne         006783C5
 006783BB    mov         eax,7FFF
>006783C0    jmp         006785C3
 006783C5    cmp         ax,100
>006783C9    jne         006783D5
 006783CB    mov         eax,7FFE
>006783D0    jmp         006785C3
 006783D5    movzx       eax,bx
 006783D8    and         eax,7FFF
 006783DD    mov         ecx,dword ptr [ebp-10]
 006783E0    add         eax,0FFFFC001
 006783E5    imul        edx,eax,4D10
 006783EB    mov         eax,edx
 006783ED    xor         edx,edx
 006783EF    mov         dl,byte ptr [ecx+7]
 006783F2    add         edx,edx
 006783F4    and         edx,0FF
 006783FA    mov         ecx,edx
 006783FC    lea         edx,[ecx+edx*8]
 006783FF    lea         edx,[ecx+edx*2]
 00678402    lea         edx,[ecx+edx*4]
 00678405    movsx       edx,dx
 00678408    and         edx,0FFFF
 0067840E    add         eax,edx
 00678410    mov         ecx,eax
 00678412    sar         ecx,10
 00678415    test        eax,0FFFF
 0067841A    mov         dword ptr [ebp-14],ecx
>0067841D    je          00678422
 0067841F    inc         dword ptr [ebp-14]
 00678422    mov         edi,dword ptr [ebp+0C]
 00678425    test        edi,edi
>00678427    jg          00678437
 00678429    mov         edi,dword ptr [ebp-14]
 0067842C    sub         edi,dword ptr [ebp+0C]
 0067842F    test        edi,edi
>00678431    jl          00678381
 00678437    cmp         edi,13
>0067843A    jle         00678441
 0067843C    mov         edi,13
 00678441    mov         esi,edi
 00678443    sub         esi,dword ptr [ebp-14]
 00678446    test        esi,esi
>00678448    je          00678492
 0067844A    mov         ebx,esi
 0067844C    test        esi,esi
>0067844E    jge         00678454
 00678450    mov         ebx,esi
 00678452    neg         ebx
 00678454    cmp         ebx,1344
>0067845A    jle         00678461
 0067845C    mov         ebx,1344
 00678461    push        ebx
 00678462    call        00676B48
 00678467    pop         ecx
 00678468    fstp        tbyte ptr [ebp-20]
 0067846B    wait
 0067846C    test        esi,esi
>0067846E    jge         00678480
 00678470    fld         tbyte ptr [ebp-20]
 00678473    fld         tbyte ptr [ebp-0C]
 00678476    fdivrp      st(1),st
 00678478    fstp        tbyte ptr [ebp-0C]
 0067847B    wait
 0067847C    add         esi,ebx
>0067847E    jmp         0067848E
 00678480    fld         tbyte ptr [ebp-20]
 00678483    fld         tbyte ptr [ebp-0C]
 00678486    fmulp       st(1),st
 00678488    fstp        tbyte ptr [ebp-0C]
 0067848B    wait
 0067848C    sub         esi,ebx
 0067848E    test        esi,esi
>00678490    jne         0067844A
 00678492    push        edi
 00678493    call        00676B48
 00678498    pop         ecx
 00678499    fstp        tbyte ptr [ebp-20]
 0067849C    wait
 0067849D    fld         tbyte ptr [ebp-0C]
 006784A0    fld         tbyte ptr [ebp-20]
 006784A3    fcompp
 006784A5    fnstsw      al
 006784A7    sahf
>006784A8    jae         006784CF
 006784AA    inc         dword ptr [ebp-14]
 006784AD    inc         edi
 006784AE    cmp         edi,13
>006784B1    jg          00678508
 006784B3    cmp         dword ptr [ebp+0C],0
>006784B7    jle         00678508
 006784B9    movsx       edx,word ptr [ebp-2]
 006784BD    mov         dword ptr [ebp-28],edx
 006784C0    fild        dword ptr [ebp-28]
 006784C3    fld         tbyte ptr [ebp-0C]
 006784C6    fdivrp      st(1),st
 006784C8    fstp        tbyte ptr [ebp-0C]
 006784CB    wait
 006784CC    dec         edi
>006784CD    jmp         00678508
 006784CF    lea         ecx,[edi-1]
 006784D2    push        ecx
 006784D3    call        00676B48
 006784D8    pop         ecx
 006784D9    fstp        tbyte ptr [ebp-20]
 006784DC    wait
 006784DD    fld         tbyte ptr [ebp-0C]
 006784E0    fld         tbyte ptr [ebp-20]
 006784E3    fcompp
 006784E5    fnstsw      al
 006784E7    sahf
>006784E8    jbe         00678508
 006784EA    dec         dword ptr [ebp-14]
 006784ED    dec         edi
 006784EE    cmp         dword ptr [ebp+0C],0
>006784F2    jle         00678508
 006784F4    movsx       edx,word ptr [ebp-2]
 006784F8    mov         dword ptr [ebp-28],edx
 006784FB    fild        dword ptr [ebp-28]
 006784FE    fld         tbyte ptr [ebp-0C]
 00678501    fmulp       st(1),st
 00678503    fstp        tbyte ptr [ebp-0C]
 00678506    wait
 00678507    inc         edi
 00678508    test        edi,edi
>0067850A    jl          00678381
 00678510    lea         ecx,[ebp-0C]
 00678513    push        ecx
 00678514    lea         eax,[ebp-0C]
 00678517    push        eax
 00678518    call        00676EC0
 0067851D    mov         edx,dword ptr [ebp+14]
 00678520    add         esp,8
 00678523    add         edx,edi
 00678525    xor         esi,esi
 00678527    mov         ebx,edx
 00678529    mov         dword ptr [ebp-24],edx
 0067852C    mov         byte ptr [ebx],0
 0067852F    dec         ebx
 00678530    test        edi,edi
>00678532    jne         0067854D
 00678534    mov         eax,dword ptr [ebp-10]
 00678537    movzx       esi,byte ptr [eax]
 0067853A    and         esi,0FF
 00678540    xor         esi,1
 00678543    test        esi,esi
>00678545    jne         00678381
>0067854B    jmp         00678567
 0067854D    lea         eax,[ebp-0C]
 00678550    push        eax
 00678551    call        00677240
 00678556    pop         ecx
 00678557    movsx       edx,al
 0067855A    or          esi,edx
 0067855C    add         eax,30
 0067855F    mov         byte ptr [ebx],al
 00678561    dec         ebx
 00678562    dec         edi
>00678563    je          00678567
>00678565    jmp         0067854D
 00678567    test        esi,esi
>00678569    jne         00678581
 0067856B    inc         dword ptr [ebp-14]
 0067856E    cmp         dword ptr [ebp+0C],0
>00678572    jg          0067857A
 00678574    mov         edx,dword ptr [ebp-24]
 00678577    mov         byte ptr [edx],30
 0067857A    inc         dword ptr [ebp-24]
 0067857D    mov         byte ptr [ebx+1],31
 00678581    mov         ebx,dword ptr [ebp+0C]
 00678584    test        ebx,ebx
>00678586    jg          0067858E
 00678588    mov         ebx,dword ptr [ebp-14]
 0067858B    sub         ebx,dword ptr [ebp+0C]
 0067858E    cmp         ebx,28
>00678591    jle         00678598
 00678593    mov         ebx,28
 00678598    mov         eax,dword ptr [ebp-24]
 0067859B    mov         byte ptr [eax],0
 0067859E    mov         edx,dword ptr [ebp-24]
 006785A1    sub         edx,dword ptr [ebp+14]
 006785A4    sub         ebx,edx
 006785A6    test        ebx,ebx
>006785A8    jle         006785C0
 006785AA    push        ebx
 006785AB    push        30
 006785AD    mov         ecx,dword ptr [ebp-24]
 006785B0    push        ecx
 006785B1    call        0066F904
 006785B6    add         esp,0C
 006785B9    mov         eax,dword ptr [ebp-24]
 006785BC    mov         byte ptr [eax+ebx],0
 006785C0    mov         eax,dword ptr [ebp-14]
 006785C3    pop         edi
 006785C4    pop         esi
 006785C5    pop         ebx
 006785C6    mov         esp,ebp
 006785C8    pop         ebp
 006785C9    ret
end;*}

//006785CC
{*function sub_006785CC(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006785CC    push        ebp
 006785CD    mov         ebp,esp
 006785CF    add         esp,0FFFFFFD8
 006785D2    push        ebx
 006785D3    push        esi
 006785D4    push        edi
 006785D5    mov         word ptr [ebp-2],0A
 006785DB    mov         eax,dword ptr [ebp+18]
 006785DE    sub         eax,2
>006785E1    je          006785EF
 006785E3    sub         eax,4
>006785E6    je          006785FA
 006785E8    sub         eax,2
>006785EB    je          00678605
>006785ED    jmp         0067861B
 006785EF    mov         edx,dword ptr [ebp+8]
 006785F2    fld         dword ptr [edx]
 006785F4    fstp        tbyte ptr [ebp-0C]
 006785F7    wait
>006785F8    jmp         0067861B
 006785FA    mov         ecx,dword ptr [ebp+8]
 006785FD    fld         qword ptr [ecx]
 006785FF    fstp        tbyte ptr [ebp-0C]
 00678602    wait
>00678603    jmp         0067861B
 00678605    mov         eax,dword ptr [ebp+8]
 00678608    mov         edx,dword ptr [eax]
 0067860A    mov         dword ptr [ebp-0C],edx
 0067860D    mov         edx,dword ptr [eax+4]
 00678610    mov         dword ptr [ebp-8],edx
 00678613    mov         dx,word ptr [eax+8]
 00678617    mov         word ptr [ebp-4],dx
 0067861B    lea         eax,[ebp-0C]
 0067861E    lea         edx,[ebp-0C]
 00678621    mov         dword ptr [ebp-10],edx
 00678624    mov         bx,word ptr [eax+8]
 00678628    mov         edx,ebx
 0067862A    and         dx,7FFF
 0067862F    mov         word ptr [eax+8],dx
 00678633    test        bh,80
 00678636    setne       al
 00678639    and         eax,1
 0067863C    mov         ecx,dword ptr [ebp+10]
 0067863F    mov         dword ptr [ecx],eax
 00678641    lea         eax,[ebp-0C]
 00678644    push        eax
 00678645    call        00676EE4
 0067864A    and         ax,4700
 0067864E    pop         ecx
 0067864F    cmp         ax,4000
>00678653    jne         0067868B
 00678655    mov         ebx,dword ptr [ebp+0C]
 00678658    test        ebx,ebx
>0067865A    jg          0067865F
 0067865C    neg         ebx
 0067865E    inc         ebx
 0067865F    cmp         ebx,28
>00678662    jle         00678669
 00678664    mov         ebx,28
 00678669    push        ebx
 0067866A    push        30
 0067866C    mov         eax,dword ptr [ebp+14]
 0067866F    push        eax
 00678670    call        0066F990
 00678675    mov         edx,dword ptr [ebp+14]
 00678678    add         esp,0C
 0067867B    mov         eax,1
 00678680    mov         word ptr [edx+ebx*2],0
>00678686    jmp         006788B6
 0067868B    cmp         ax,500
>0067868F    jne         0067869B
 00678691    mov         eax,7FFF
>00678696    jmp         006788B6
 0067869B    cmp         ax,100
>0067869F    jne         006786AB
 006786A1    mov         eax,7FFE
>006786A6    jmp         006788B6
 006786AB    movzx       eax,bx
 006786AE    and         eax,7FFF
 006786B3    mov         ecx,dword ptr [ebp-10]
 006786B6    add         eax,0FFFFC001
 006786BB    imul        edx,eax,4D10
 006786C1    mov         eax,edx
 006786C3    xor         edx,edx
 006786C5    mov         dl,byte ptr [ecx+7]
 006786C8    add         edx,edx
 006786CA    and         edx,0FF
 006786D0    mov         ecx,edx
 006786D2    lea         edx,[ecx+edx*8]
 006786D5    lea         edx,[ecx+edx*2]
 006786D8    lea         edx,[ecx+edx*4]
 006786DB    movsx       edx,dx
 006786DE    and         edx,0FFFF
 006786E4    add         eax,edx
 006786E6    mov         ecx,eax
 006786E8    sar         ecx,10
 006786EB    test        eax,0FFFF
 006786F0    mov         dword ptr [ebp-14],ecx
>006786F3    je          006786F8
 006786F5    inc         dword ptr [ebp-14]
 006786F8    mov         edi,dword ptr [ebp+0C]
 006786FB    test        edi,edi
>006786FD    jg          0067870D
 006786FF    mov         edi,dword ptr [ebp-14]
 00678702    sub         edi,dword ptr [ebp+0C]
 00678705    test        edi,edi
>00678707    jl          00678655
 0067870D    cmp         edi,13
>00678710    jle         00678717
 00678712    mov         edi,13
 00678717    mov         esi,edi
 00678719    sub         esi,dword ptr [ebp-14]
 0067871C    test        esi,esi
>0067871E    je          00678768
 00678720    mov         ebx,esi
 00678722    test        esi,esi
>00678724    jge         0067872A
 00678726    mov         ebx,esi
 00678728    neg         ebx
 0067872A    cmp         ebx,1344
>00678730    jle         00678737
 00678732    mov         ebx,1344
 00678737    push        ebx
 00678738    call        00676B48
 0067873D    pop         ecx
 0067873E    fstp        tbyte ptr [ebp-20]
 00678741    wait
 00678742    test        esi,esi
>00678744    jge         00678756
 00678746    fld         tbyte ptr [ebp-20]
 00678749    fld         tbyte ptr [ebp-0C]
 0067874C    fdivrp      st(1),st
 0067874E    fstp        tbyte ptr [ebp-0C]
 00678751    wait
 00678752    add         esi,ebx
>00678754    jmp         00678764
 00678756    fld         tbyte ptr [ebp-20]
 00678759    fld         tbyte ptr [ebp-0C]
 0067875C    fmulp       st(1),st
 0067875E    fstp        tbyte ptr [ebp-0C]
 00678761    wait
 00678762    sub         esi,ebx
 00678764    test        esi,esi
>00678766    jne         00678720
 00678768    push        edi
 00678769    call        00676B48
 0067876E    pop         ecx
 0067876F    fstp        tbyte ptr [ebp-20]
 00678772    wait
 00678773    fld         tbyte ptr [ebp-0C]
 00678776    fld         tbyte ptr [ebp-20]
 00678779    fcompp
 0067877B    fnstsw      al
 0067877D    sahf
>0067877E    jae         006787A5
 00678780    inc         dword ptr [ebp-14]
 00678783    inc         edi
 00678784    cmp         edi,13
>00678787    jg          006787DE
 00678789    cmp         dword ptr [ebp+0C],0
>0067878D    jle         006787DE
 0067878F    movsx       edx,word ptr [ebp-2]
 00678793    mov         dword ptr [ebp-28],edx
 00678796    fild        dword ptr [ebp-28]
 00678799    fld         tbyte ptr [ebp-0C]
 0067879C    fdivrp      st(1),st
 0067879E    fstp        tbyte ptr [ebp-0C]
 006787A1    wait
 006787A2    dec         edi
>006787A3    jmp         006787DE
 006787A5    lea         ecx,[edi-1]
 006787A8    push        ecx
 006787A9    call        00676B48
 006787AE    pop         ecx
 006787AF    fstp        tbyte ptr [ebp-20]
 006787B2    wait
 006787B3    fld         tbyte ptr [ebp-0C]
 006787B6    fld         tbyte ptr [ebp-20]
 006787B9    fcompp
 006787BB    fnstsw      al
 006787BD    sahf
>006787BE    jbe         006787DE
 006787C0    dec         dword ptr [ebp-14]
 006787C3    dec         edi
 006787C4    cmp         dword ptr [ebp+0C],0
>006787C8    jle         006787DE
 006787CA    movsx       edx,word ptr [ebp-2]
 006787CE    mov         dword ptr [ebp-28],edx
 006787D1    fild        dword ptr [ebp-28]
 006787D4    fld         tbyte ptr [ebp-0C]
 006787D7    fmulp       st(1),st
 006787D9    fstp        tbyte ptr [ebp-0C]
 006787DC    wait
 006787DD    inc         edi
 006787DE    test        edi,edi
>006787E0    jl          00678655
 006787E6    lea         ecx,[ebp-0C]
 006787E9    push        ecx
 006787EA    lea         eax,[ebp-0C]
 006787ED    push        eax
 006787EE    call        00676EC0
 006787F3    mov         edx,edi
 006787F5    add         esp,8
 006787F8    add         edx,edx
 006787FA    xor         esi,esi
 006787FC    add         edx,dword ptr [ebp+14]
 006787FF    mov         ebx,edx
 00678801    mov         dword ptr [ebp-24],edx
 00678804    mov         word ptr [ebx],0
 00678809    sub         ebx,2
 0067880C    test        edi,edi
>0067880E    jne         00678829
 00678810    mov         eax,dword ptr [ebp-10]
 00678813    movzx       esi,byte ptr [eax]
 00678816    and         esi,0FF
 0067881C    xor         esi,1
 0067881F    test        esi,esi
>00678821    jne         00678655
>00678827    jmp         0067884A
 00678829    lea         eax,[ebp-0C]
 0067882C    push        eax
 0067882D    call        00677240
 00678832    pop         ecx
 00678833    movsx       edx,al
 00678836    or          esi,edx
 00678838    movsx       ecx,al
 0067883B    add         cx,30
 0067883F    mov         word ptr [ebx],cx
 00678842    sub         ebx,2
 00678845    dec         edi
>00678846    je          0067884A
>00678848    jmp         00678829
 0067884A    test        esi,esi
>0067884C    jne         00678869
 0067884E    inc         dword ptr [ebp-14]
 00678851    cmp         dword ptr [ebp+0C],0
>00678855    jg          0067885F
 00678857    mov         eax,dword ptr [ebp-24]
 0067885A    mov         word ptr [eax],30
 0067885F    add         dword ptr [ebp-24],2
 00678863    mov         word ptr [ebx+2],31
 00678869    mov         ebx,dword ptr [ebp+0C]
 0067886C    test        ebx,ebx
>0067886E    jg          00678876
 00678870    mov         ebx,dword ptr [ebp-14]
 00678873    sub         ebx,dword ptr [ebp+0C]
 00678876    cmp         ebx,28
>00678879    jle         00678880
 0067887B    mov         ebx,28
 00678880    mov         eax,dword ptr [ebp-24]
 00678883    mov         word ptr [eax],0
 00678888    mov         edx,dword ptr [ebp-24]
 0067888B    sub         edx,dword ptr [ebp+14]
 0067888E    sar         edx,1
>00678890    jns         00678895
 00678892    adc         edx,0
 00678895    sub         ebx,edx
 00678897    test        ebx,ebx
>00678899    jle         006788B3
 0067889B    push        ebx
 0067889C    push        30
 0067889E    mov         ecx,dword ptr [ebp-24]
 006788A1    push        ecx
 006788A2    call        0066F990
 006788A7    add         esp,0C
 006788AA    mov         eax,dword ptr [ebp-24]
 006788AD    mov         word ptr [eax+ebx*2],0
 006788B3    mov         eax,dword ptr [ebp-14]
 006788B6    pop         edi
 006788B7    pop         esi
 006788B8    pop         ebx
 006788B9    mov         esp,ebp
 006788BB    pop         ebp
 006788BC    ret
end;*}

//006788C0
{*function sub_006788C0(?:?):?;
begin
 006788C0    push        ebp
 006788C1    mov         ebp,esp
 006788C3    add         esp,0FFFFFFEC
 006788C6    push        ebx
 006788C7    push        esi
 006788C8    mov         esi,dword ptr [ebp+8]
 006788CB    cmp         esi,0FFFFFFFE
>006788CE    jne         006788D9
 006788D0    call        KERNEL32.GetOEMCP
 006788D5    mov         esi,eax
>006788D7    jmp         006788F3
 006788D9    cmp         esi,0FFFFFFFD
>006788DC    jne         006788E7
 006788DE    call        KERNEL32.GetACP
 006788E3    mov         esi,eax
>006788E5    jmp         006788F3
 006788E7    cmp         esi,0FFFFFFFC
>006788EA    jne         006788F3
 006788EC    mov         eax,[006E6C20];^gvar_006E6BF4
 006788F1    mov         esi,dword ptr [eax]
 006788F3    test        esi,esi
>006788F5    je          00678918
 006788F7    lea         eax,[ebp-14]
 006788FA    push        eax
 006788FB    push        esi
 006788FC    call        KERNEL32.GetCPInfo
 00678901    test        eax,eax
>00678903    jne         00678918
 00678905    push        6E70C8
 0067890A    call        00678C68
 0067890F    pop         ecx
 00678910    or          eax,0FFFFFFFF
>00678913    jmp         006789DB
 00678918    xor         eax,eax
 0067891A    mov         edx,6EDFF0;gvar_006EDFF0
 0067891F    mov         byte ptr [edx],0
 00678922    inc         eax
 00678923    inc         edx
 00678924    cmp         eax,101
>00678929    jl          0067891F
 0067892B    test        esi,esi
>0067892D    je          006789D2
 00678933    cmp         dword ptr [ebp-14],1
>00678937    jbe         006789D2
 0067893D    lea         ecx,[ebp-0E]
>00678940    jmp         00678960
 00678942    and         eax,0FF
 00678947    lea         edx,[eax+6EDFF1]
>0067894D    jmp         00678954
 0067894F    mov         byte ptr [edx],4
 00678952    inc         eax
 00678953    inc         edx
 00678954    xor         ebx,ebx
 00678956    mov         bl,byte ptr [ecx+1]
 00678959    cmp         eax,ebx
>0067895B    jle         0067894F
 0067895D    add         ecx,2
 00678960    mov         al,byte ptr [ecx]
 00678962    test        al,al
>00678964    je          0067896C
 00678966    cmp         byte ptr [ecx+1],0
>0067896A    jne         00678942
 0067896C    mov         eax,1
 00678971    mov         edx,6EDFF2;gvar_006EDFF2
 00678976    or          byte ptr [edx],8
 00678979    inc         eax
 0067897A    inc         edx
 0067897B    cmp         eax,0FF
>00678980    jl          00678976
 00678982    cmp         esi,3A4
>00678988    jne         006789CA
 0067898A    xor         eax,eax
 0067898C    mov         al,[006E70C4];0xA6 gvar_006E70C4
 00678991    lea         edx,[eax+6EDFF1]
>00678997    jmp         0067899E
 00678999    or          byte ptr [edx],1
 0067899C    inc         eax
 0067899D    inc         edx
 0067899E    xor         ecx,ecx
 006789A0    mov         cl,byte ptr ds:[6E70C5];0xDF gvar_006E70C5
 006789A6    cmp         eax,ecx
>006789A8    jle         00678999
 006789AA    xor         eax,eax
 006789AC    mov         al,[006E70C6];0xA1 gvar_006E70C6
 006789B1    lea         edx,[eax+6EDFF1]
>006789B7    jmp         006789BE
 006789B9    or          byte ptr [edx],2
 006789BC    inc         eax
 006789BD    inc         edx
 006789BE    xor         ecx,ecx
 006789C0    mov         cl,byte ptr ds:[6E70C7];0xA5 gvar_006E70C7
 006789C6    cmp         eax,ecx
>006789C8    jle         006789B9
 006789CA    mov         dword ptr ds:[6EE0F4],esi;gvar_006EE0F4
>006789D0    jmp         006789D9
 006789D2    xor         eax,eax
 006789D4    mov         [006EE0F4],eax;gvar_006EE0F4
 006789D9    xor         eax,eax
 006789DB    pop         esi
 006789DC    pop         ebx
 006789DD    mov         esp,ebp
 006789DF    pop         ebp
 006789E0    ret
end;*}

end.