//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit116;

interface

uses
  SysUtils, Classes;

    procedure sub_00678F88;//00678F88
    //procedure sub_00679044(?:?; ?:?);//00679044
    //procedure sub_00679268(?:?; ?:?);//00679268
    //procedure sub_0067948C(?:?; ?:?);//0067948C

implementation

//00678F88
procedure sub_00678F88;
begin
{*
 00678F88    push        ebx
 00678F89    cmp         dword ptr ds:[6EE248],0;gvar_006EE248
>00678F90    je          0067900E
 00678F92    xor         eax,eax
 00678F94    xor         edx,edx
 00678F96    mov         [006EE21C],eax;gvar_006EE21C
 00678F9B    mov         [006EE250],eax;gvar_006EE250
 00678FA0    mov         dword ptr ds:[6EE218],edx;gvar_006EE218
 00678FA6    mov         ecx,dword ptr ds:[6E7274];0x0 gvar_006E7274
 00678FAC    push        ecx
 00678FAD    call        0066FC80
 00678FB2    pop         ecx
 00678FB3    mov         ebx,eax
 00678FB5    mov         dword ptr ds:[6EE220],ebx;gvar_006EE220
 00678FBB    push        679044;sub_00679044
 00678FC0    mov         eax,[006EE248];0x0 gvar_006EE248
 00678FC5    push        eax
 00678FC6    push        ebx
 00678FC7    call        dword ptr ds:[6E71BC]
 00678FCD    add         esp,0C
 00678FD0    test        eax,eax
>00678FD2    je          00678FE8
 00678FD4    push        0
 00678FD6    push        0
 00678FD8    call        00679044
 00678FDD    add         esp,8
 00678FE0    dec         dword ptr ds:[6EE250];gvar_006EE250
>00678FE6    jmp         00678FF8
 00678FE8    xor         edx,edx
 00678FEA    xor         ecx,ecx
 00678FEC    mov         dword ptr ds:[6EE218],edx;gvar_006EE218
 00678FF2    mov         dword ptr ds:[6EE250],ecx;gvar_006EE250
 00678FF8    mov         eax,[006EE250];0x0 gvar_006EE250
 00678FFD    mov         [006EE23C],eax;gvar_006EE23C
 00679002    mov         edx,dword ptr ds:[6EE218];0x0 gvar_006EE218
 00679008    mov         dword ptr ds:[6EE240],edx;gvar_006EE240
 0067900E    pop         ebx
 0067900F    ret
*}
end;

//00679044
{*procedure sub_00679044(?:?; ?:?);
begin
 00679044    push        ebp
 00679045    mov         ebp,esp
 00679047    push        ebx
 00679048    push        esi
 00679049    push        edi
 0067904A    mov         esi,dword ptr [ebp+8]
 0067904D    mov         eax,[006EE250];0x0 gvar_006EE250
 00679052    cmp         eax,dword ptr ds:[6EE21C];0x0 gvar_006EE21C
>00679058    jne         0067908E
 0067905A    add         dword ptr ds:[6EE21C],10;gvar_006EE21C
 00679061    mov         edx,dword ptr ds:[6EE21C];0x0 gvar_006EE21C
 00679067    shl         edx,2
 0067906A    push        edx
 0067906B    mov         ecx,dword ptr ds:[6EE218];0x0 gvar_006EE218
 00679071    push        ecx
 00679072    call        0066F2E8
 00679077    add         esp,8
 0067907A    mov         [006EE218],eax;gvar_006EE218
 0067907F    test        eax,eax
>00679081    jne         0067908E
 00679083    push        6E71D0
 00679088    call        00678D94
 0067908D    pop         ecx
 0067908E    cmp         dword ptr [ebp+0C],0
>00679092    je          006790D9
 00679094    push        esi
 00679095    call        0066FAB4
 0067909A    pop         ecx
 0067909B    inc         eax
 0067909C    push        eax
 0067909D    call        0066F2C8
 006790A2    pop         ecx
 006790A3    mov         ebx,eax
 006790A5    test        eax,eax
>006790A7    jne         006790B4
 006790A9    push        6E71FA
 006790AE    call        00678D94
 006790B3    pop         ecx
 006790B4    xor         eax,eax
 006790B6    push        esi
 006790B7    mov         edi,esi
 006790B9    or          ecx,0FFFFFFFF
 006790BC    repne scas  byte ptr [edi]
 006790BE    not         ecx
 006790C0    sub         edi,ecx
 006790C2    mov         esi,ebx
 006790C4    xchg        esi,edi
 006790C6    mov         edx,ecx
 006790C8    mov         eax,edi
 006790CA    shr         ecx,2
 006790CD    rep movs    dword ptr [edi],dword ptr [esi]
 006790CF    mov         ecx,edx
 006790D1    and         ecx,3
 006790D4    rep movs    byte ptr [edi],byte ptr [esi]
 006790D6    pop         esi
>006790D7    jmp         006790DB
 006790D9    mov         ebx,esi
 006790DB    mov         eax,[006EE218];0x0 gvar_006EE218
 006790E0    mov         edx,dword ptr ds:[6EE250];0x0 gvar_006EE250
 006790E6    mov         dword ptr [eax+edx*4],ebx
 006790E9    inc         dword ptr ds:[6EE250];gvar_006EE250
 006790EF    pop         edi
 006790F0    pop         esi
 006790F1    pop         ebx
 006790F2    pop         ebp
 006790F3    ret
end;*}

//00679268
{*procedure sub_00679268(?:?; ?:?);
begin
 00679268    push        ebp
 00679269    mov         ebp,esp
 0067926B    push        ebx
 0067926C    push        esi
 0067926D    mov         eax,dword ptr [ebp+0C]
 00679270    mov         edx,dword ptr [ebp+8]
 00679273    mov         ecx,dword ptr [eax]
 00679275    cmp         byte ptr [ecx],5C
>00679278    jne         0067928A
 0067927A    cmp         byte ptr [ecx+1],22
>0067927E    jne         0067928A
 00679280    mov         ecx,dword ptr [edx]
 00679282    mov         byte ptr [ecx],22
 00679285    add         dword ptr [eax],2
>00679288    jmp         006792D3
 0067928A    cmp         dword ptr ds:[6E7220],0;gvar_006E7220
>00679291    je          006792AA
 00679293    mov         ecx,dword ptr [eax]
 00679295    cmp         byte ptr [ecx],5C
>00679298    jne         006792AA
 0067929A    cmp         byte ptr [ecx+1],5C
>0067929E    jne         006792AA
 006792A0    mov         ecx,dword ptr [edx]
 006792A2    mov         byte ptr [ecx],5C
 006792A5    add         dword ptr [eax],2
>006792A8    jmp         006792D3
 006792AA    mov         esi,dword ptr [eax]
 006792AC    mov         cl,byte ptr [esi]
 006792AE    xor         ebx,ebx
 006792B0    mov         bl,cl
 006792B2    test        byte ptr [ebx+6EDFF1],4
>006792B9    je          006792C9
 006792BB    cmp         byte ptr [esi+1],0
>006792BF    je          006792C9
 006792C1    mov         ebx,dword ptr [edx]
 006792C3    mov         byte ptr [ebx],cl
 006792C5    inc         dword ptr [eax]
 006792C7    inc         dword ptr [edx]
 006792C9    mov         ecx,dword ptr [eax]
 006792CB    mov         ebx,dword ptr [edx]
 006792CD    mov         cl,byte ptr [ecx]
 006792CF    mov         byte ptr [ebx],cl
 006792D1    inc         dword ptr [eax]
 006792D3    inc         dword ptr [edx]
 006792D5    pop         esi
 006792D6    pop         ebx
 006792D7    pop         ebp
 006792D8    ret
end;*}

//0067948C
{*procedure sub_0067948C(?:?; ?:?);
begin
 0067948C    push        ebp
 0067948D    mov         ebp,esp
 0067948F    push        ebx
 00679490    mov         eax,dword ptr [ebp+0C]
 00679493    mov         edx,dword ptr [ebp+8]
 00679496    mov         ecx,dword ptr [eax]
 00679498    cmp         word ptr [ecx],5C
>0067949C    jne         006794B1
 0067949E    cmp         word ptr [ecx+2],22
>006794A3    jne         006794B1
 006794A5    mov         ecx,dword ptr [edx]
 006794A7    mov         word ptr [ecx],22
 006794AC    add         dword ptr [eax],4
>006794AF    jmp         006794FD
 006794B1    cmp         dword ptr ds:[6E7220],0;gvar_006E7220
>006794B8    je          006794F0
 006794BA    mov         ecx,dword ptr [eax]
 006794BC    cmp         word ptr [ecx],5C
>006794C0    jne         006794F0
 006794C2    cmp         word ptr [ecx+2],5C
>006794C7    jne         006794F0
 006794C9    mov         ecx,dword ptr [edx]
 006794CB    mov         word ptr [ecx],5C
 006794D0    add         dword ptr [eax],4
>006794D3    jmp         006794FD
>006794D5    jmp         006794F0
 006794D7    mov         ecx,dword ptr [eax]
 006794D9    cmp         word ptr [ecx+2],0
>006794DE    je          006794F0
 006794E0    mov         ecx,dword ptr [eax]
 006794E2    mov         ebx,dword ptr [edx]
 006794E4    mov         cx,word ptr [ecx]
 006794E7    mov         word ptr [ebx],cx
 006794EA    add         dword ptr [eax],2
 006794ED    add         dword ptr [edx],2
 006794F0    mov         ecx,dword ptr [eax]
 006794F2    mov         ebx,dword ptr [edx]
 006794F4    mov         cx,word ptr [ecx]
 006794F7    mov         word ptr [ebx],cx
 006794FA    add         dword ptr [eax],2
 006794FD    add         dword ptr [edx],2
 00679500    pop         ebx
 00679501    pop         ebp
 00679502    ret
end;*}

end.