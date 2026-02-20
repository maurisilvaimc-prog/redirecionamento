//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit104;

interface

uses
  SysUtils, Classes;

    procedure sub_006703EF;//006703EF
    //function sub_0067043C(?:?):?;//0067043C
    //function sub_00670474(?:?; ?:?):?;//00670474
    //function sub_00670550(?:?; ?:?; ?:?; ?:?):?;//00670550
    //procedure sub_00670660(?:?; ?:?);//00670660
    //procedure sub_00670680(?:?; ?:?);//00670680
    //function sub_006706F4(?:?; ?:?; ?:?):?;//006706F4
    //function sub_00670844(?:?):?;//00670844
    //function sub_006708AC(?:?; ?:TComponent):?;//006708AC
    //function sub_006708C4(?:?; ?:?; ?:?):?;//006708C4
    procedure sub_00670A0C;//00670A0C

implementation

//006703EF
procedure sub_006703EF;
begin
{*
 006703EF    mov         eax,6E4F84
 006703F4    mov         edx,6E52C8
 006703F9    mov         [006EDA34],eax;gvar_006EDA34
 006703FE    mov         dword ptr ds:[6EDA34],edx;gvar_006EDA34
 00670404    mov         ecx,6E4F84
 00670409    mov         eax,6E52DC
 0067040E    mov         dword ptr ds:[6EDE38],ecx;gvar_006EDE38
 00670414    mov         [006EDE38],eax;gvar_006EDE38
 00670419    ret
*}
end;

//0067043C
{*function sub_0067043C(?:?):?;
begin
 0067043C    push        ebp
 0067043D    mov         ebp,esp
 0067043F    push        ebx
 00670440    mov         ebx,dword ptr [ebp+8]
 00670443    test        ebx,ebx
>00670445    jne         0067044F
 00670447    mov         eax,6E53BC
 0067044C    pop         ebx
 0067044D    pop         ebp
 0067044E    ret
 0067044F    cmp         word ptr [ebx+6],0
>00670454    jne         0067046A
 00670456    push        22
 00670458    push        6E53D0
 0067045D    push        6E53C5
 00670462    call        00678AD8
 00670467    add         esp,0C
 0067046A    movzx       eax,word ptr [ebx+6]
 0067046E    add         eax,ebx
 00670470    pop         ebx
 00670471    pop         ebp
 00670472    ret
end;*}

//00670474
{*function sub_00670474(?:?; ?:?):?;
begin
 00670474    push        ebp
 00670475    mov         ebp,esp
 00670477    push        ebx
 00670478    push        esi
 00670479    push        edi
 0067047A    mov         esi,dword ptr [ebp+0C]
 0067047D    mov         ebx,dword ptr [ebp+8]
 00670480    test        ebx,ebx
>00670482    jne         0067049B
 00670484    push        105
 00670489    push        6E53DF
 0067048E    push        6E53DB
 00670493    call        00678AD8
 00670498    add         esp,0C
 0067049B    test        esi,esi
>0067049D    jne         006704B6
 0067049F    push        106
 006704A4    push        6E53EE
 006704A9    push        6E53EA
 006704AE    call        00678AD8
 006704B3    add         esp,0C
 006704B6    cmp         esi,ebx
>006704B8    jne         006704C4
 006704BA    mov         eax,1
>006704BF    jmp         0067054A
 006704C4    mov         dx,word ptr [ebx+4]
 006704C8    cmp         dx,word ptr [esi+4]
>006704CC    jne         006704D4
 006704CE    mov         ecx,dword ptr [ebx]
 006704D0    cmp         ecx,dword ptr [esi]
>006704D2    je          006704D8
 006704D4    xor         eax,eax
>006704D6    jmp         0067054A
 006704D8    mov         dx,word ptr [ebx+4]
 006704DC    or          dx,word ptr [esi+4]
 006704E0    test        dl,80
>006704E3    je          006704E9
 006704E5    xor         eax,eax
>006704E7    jmp         0067054A
 006704E9    movzx       edi,word ptr [ebx+6]
 006704ED    add         edi,ebx
 006704EF    cmp         word ptr [ebx+6],0
>006704F4    jne         0067050D
 006704F6    push        11E
 006704FB    push        6E5405
 00670500    push        6E53F9
 00670505    call        00678AD8
 0067050A    add         esp,0C
 0067050D    movzx       ebx,word ptr [esi+6]
 00670511    add         ebx,esi
 00670513    cmp         word ptr [esi+6],0
>00670518    jne         00670531
 0067051A    push        11F
 0067051F    push        6E541C
 00670524    push        6E5410
 00670529    call        00678AD8
 0067052E    add         esp,0C
 00670531    movsx       eax,byte ptr [edi]
 00670534    movsx       edx,byte ptr [ebx]
 00670537    inc         ebx
 00670538    inc         edi
 00670539    cmp         edx,eax
>0067053B    je          00670541
 0067053D    xor         eax,eax
>0067053F    jmp         0067054A
 00670541    test        eax,eax
>00670543    jne         00670531
 00670545    mov         eax,1
 0067054A    pop         edi
 0067054B    pop         esi
 0067054C    pop         ebx
 0067054D    pop         ebp
 0067054E    ret
end;*}

//00670550
{*function sub_00670550(?:?; ?:?; ?:?; ?:?):?;
begin
 00670550    push        ebp
 00670551    mov         ebp,esp
 00670553    push        ecx
 00670554    push        ebx
 00670555    push        esi
 00670556    push        edi
 00670557    mov         eax,dword ptr [ebp+10]
 0067055A    mov         esi,dword ptr [ebp+0C]
 0067055D    mov         ebx,dword ptr [ebp+8]
 00670560    cmp         esi,ebx
>00670562    jne         0067056E
 00670564    mov         eax,1
>00670569    jmp         00670659
 0067056E    movzx       edi,word ptr [ebx+4]
 00670572    movzx       edx,word ptr [esi+4]
 00670576    mov         dword ptr [ebp-4],edx
 00670579    mov         ecx,dword ptr [ebp-4]
 0067057C    and         ecx,edi
 0067057E    test        cl,10
>00670581    je          006705EB
 00670583    and         edi,300
 00670589    and         dword ptr [ebp-4],300
 00670590    cmp         edi,dword ptr [ebp-4]
>00670593    je          006705DB
 00670595    test        eax,eax
>00670597    jne         006705D7
 00670599    mov         eax,edi
 0067059B    mov         edx,dword ptr [ebp-4]
 0067059E    and         edx,300
 006705A4    and         eax,300
 006705A9    cmp         eax,edx
>006705AB    je          006705D7
 006705AD    mov         eax,dword ptr [ebp-4]
 006705B0    and         eax,300
 006705B5    not         eax
 006705B7    and         eax,edi
 006705B9    test        ah,3
>006705BC    je          006705C5
 006705BE    xor         eax,eax
>006705C0    jmp         00670659
 006705C5    or          edi,300
 006705CB    or          dword ptr [ebp-4],300
 006705D2    cmp         edi,dword ptr [ebp-4]
>006705D5    je          006705DB
 006705D7    xor         eax,eax
>006705D9    jmp         00670659
 006705DB    mov         eax,1
 006705E0    mov         ebx,dword ptr [ebx+8]
 006705E3    mov         esi,dword ptr [esi+8]
>006705E6    jmp         00670560
 006705EB    mov         edx,dword ptr [ebp-4]
 006705EE    and         edx,edi
 006705F0    test        dh,4
>006705F3    je          0067061D
 006705F5    mov         ecx,dword ptr [ebx+0C]
 006705F8    cmp         ecx,dword ptr [esi+0C]
>006705FB    je          0067060D
 006705FD    test        eax,eax
>006705FF    jne         00670609
 00670601    mov         eax,dword ptr [ebx+0C]
 00670604    or          eax,dword ptr [esi+0C]
>00670607    je          0067060D
 00670609    xor         eax,eax
>0067060B    jmp         00670659
 0067060D    mov         eax,1
 00670612    mov         ebx,dword ptr [ebx+8]
 00670615    mov         esi,dword ptr [esi+8]
>00670618    jmp         00670560
 0067061D    push        esi
 0067061E    push        ebx
 0067061F    call        00670474
 00670624    add         esp,8
 00670627    test        eax,eax
>00670629    je          00670632
 0067062B    mov         eax,1
>00670630    jmp         00670659
 00670632    test        edi,2
>00670638    je          00670657
 0067063A    test        byte ptr [ebp-4],1
>0067063E    je          00670657
 00670640    test        byte ptr [ebx+0C],4
>00670644    je          00670657
 00670646    push        1
 00670648    push        dword ptr [ebp+14]
 0067064B    push        esi
 0067064C    push        ebx
 0067064D    call        0066FF3C
 00670652    add         esp,10
>00670655    jmp         00670659
 00670657    xor         eax,eax
 00670659    pop         edi
 0067065A    pop         esi
 0067065B    pop         ebx
 0067065C    pop         ecx
 0067065D    pop         ebp
 0067065E    ret
end;*}

//00670660
{*procedure sub_00670660(?:?; ?:?);
begin
 00670660    push        ebp
 00670661    mov         ebp,esp
 00670663    mov         eax,dword ptr [ebp+8]
 00670666    test        eax,eax
>00670668    je          0067067E
 0067066A    mov         edx,6E56F8
 0067066F    mov         dword ptr [eax],edx
 00670671    test        byte ptr [ebp+0C],1
>00670675    je          0067067E
 00670677    push        eax
 00670678    call        0066EAB0
 0067067D    pop         ecx
 0067067E    pop         ebp
 0067067F    ret
end;*}

//00670680
{*procedure sub_00670680(?:?; ?:?);
begin
 00670680    push        ebp
 00670681    mov         ebp,esp
 00670683    push        ebx
 00670684    push        esi
 00670685    mov         esi,dword ptr [ebp+0C]
 00670688    mov         ebx,dword ptr [ebp+8]
 0067068B    mov         eax,dword ptr [ebx+4]
 0067068E    cmp         eax,dword ptr [esi+4]
>00670691    jne         00670697
 00670693    mov         al,1
>00670695    jmp         006706ED
 00670697    cmp         dword ptr [ebx+4],0
>0067069B    je          006706A6
 0067069D    mov         edx,dword ptr [ebx+4]
 006706A0    test        byte ptr [edx+4],80
>006706A4    jne         006706B5
 006706A6    cmp         dword ptr [esi+4],0
>006706AA    je          006706B9
 006706AC    mov         ecx,dword ptr [esi+4]
 006706AF    test        byte ptr [ecx+4],80
>006706B3    je          006706B9
 006706B5    xor         eax,eax
>006706B7    jmp         006706ED
 006706B9    push        ebx
 006706BA    call        00670844
 006706BF    pop         ecx
 006706C0    push        eax
 006706C1    push        esi
 006706C2    call        00670844
 006706C7    pop         ecx
 006706C8    mov         edx,eax
 006706CA    pop         eax
 006706CB    mov         cl,byte ptr [eax]
 006706CD    cmp         cl,byte ptr [edx]
>006706CF    jne         006706E7
 006706D1    test        cl,cl
>006706D3    je          006706E7
 006706D5    mov         cl,byte ptr [eax+1]
 006706D8    cmp         cl,byte ptr [edx+1]
>006706DB    jne         006706E7
 006706DD    add         eax,2
 006706E0    add         edx,2
 006706E3    test        cl,cl
>006706E5    jne         006706CB
 006706E7    sete        al
 006706EA    and         eax,1
 006706ED    pop         esi
 006706EE    pop         ebx
 006706EF    pop         ebp
 006706F0    ret
end;*}

//006706F4
{*function sub_006706F4(?:?; ?:?; ?:?):?;
begin
 006706F4    push        ebp
 006706F5    mov         ebp,esp
 006706F7    add         esp,0FFFFFFC4
 006706FA    mov         eax,6E56D4
 006706FF    push        ebx
 00670700    push        esi
 00670701    push        edi
 00670702    mov         esi,dword ptr [ebp+0C]
 00670705    call        0066FECC
 0067070A    cmp         dword ptr [ebp+8],0
 0067070E    mov         ebx,dword ptr [ebp+10]
>00670711    jne         00670747
 00670713    lea         eax,[ebp-24]
 00670716    mov         edx,6E4F84
 0067071B    push        eax
 0067071C    push        0
 0067071E    push        0
 00670720    push        0
 00670722    push        1
 00670724    push        67082C
 00670729    push        0
 0067072B    mov         dword ptr [ebp-2C],edx
 0067072E    mov         ecx,6E52C8
 00670733    lea         eax,[ebp-2C]
 00670736    mov         dword ptr [ebp-2C],ecx
 00670739    push        eax
 0067073A    push        66F62C
 0067073F    call        0067AD11
 00670744    add         esp,24
 00670747    test        esi,esi
>00670749    je          0067077A
 0067074B    test        byte ptr [ebx+0C],80
>0067074F    je          00670755
 00670751    xor         edi,edi
>00670753    jmp         0067077C
 00670755    sub         esi,dword ptr [esi-4]
 00670758    cmp         dword ptr [esi-4],0
>0067075C    je          00670775
 0067075E    push        29E
 00670763    push        6E54C3
 00670768    push        6E549C
 0067076D    call        00678AD8
 00670772    add         esp,0C
 00670775    mov         edi,dword ptr [esi-0C]
>00670778    jmp         0067077C
 0067077A    mov         edi,ebx
 0067077C    mov         eax,esi
 0067077E    add         eax,edi
 00670780    sar         eax,4
 00670783    and         eax,0FF
 00670788    mov         dword ptr [ebp-28],eax
 0067078B    mov         edx,dword ptr [ebp-28]
 0067078E    mov         ebx,dword ptr [edx*4+6EDA38]
 00670795    test        ebx,ebx
>00670797    je          006707AA
 00670799    cmp         edi,dword ptr [ebx+4]
>0067079C    jne         006707A3
 0067079E    cmp         esi,dword ptr [ebx+8]
>006707A1    je          006707AA
 006707A3    mov         ebx,dword ptr [ebx+0C]
 006707A6    test        ebx,ebx
>006707A8    jne         00670799
 006707AA    test        ebx,ebx
>006707AC    jne         00670819
 006707AE    push        14
 006707B0    call        0066EAE4
 006707B5    pop         ecx
 006707B6    mov         dword ptr [ebp-30],eax
 006707B9    test        eax,eax
>006707BB    je          0067080C
 006707BD    mov         edx,dword ptr [ebp-28]
 006707C0    mov         ecx,dword ptr [edx*4+6EDA38]
 006707C7    mov         dword ptr [ebp-34],ecx
 006707CA    mov         dword ptr [ebp-38],esi
 006707CD    mov         dword ptr [ebp-3C],edi
 006707D0    mov         eax,6E56F8
 006707D5    mov         edx,dword ptr [ebp-30]
 006707D8    mov         dword ptr [edx],eax
 006707DA    mov         ecx,dword ptr [ebp-30]
 006707DD    mov         eax,dword ptr [ebp-3C]
 006707E0    mov         dword ptr [ecx+4],eax
 006707E3    mov         edx,6E56E8
 006707E8    mov         ecx,dword ptr [ebp-30]
 006707EB    mov         dword ptr [ecx],edx
 006707ED    mov         eax,dword ptr [ebp-30]
 006707F0    mov         edx,dword ptr [ebp-38]
 006707F3    mov         dword ptr [eax+8],edx
 006707F6    mov         ecx,dword ptr [ebp-30]
 006707F9    mov         eax,dword ptr [ebp-34]
 006707FC    mov         dword ptr [ecx+0C],eax
 006707FF    mov         edx,dword ptr [ebp-30]
 00670802    xor         ecx,ecx
 00670804    mov         dword ptr [edx+10],ecx
 00670807    mov         ebx,dword ptr [ebp-30]
>0067080A    jmp         0067080F
 0067080C    mov         ebx,dword ptr [ebp-30]
 0067080F    mov         eax,dword ptr [ebp-28]
 00670812    mov         dword ptr [eax*4+6EDA38],ebx
 00670819    mov         eax,ebx
 0067081B    mov         edx,dword ptr [ebp-24]
 0067081E    mov         dword ptr fs:[0],edx
 00670825    pop         edi
 00670826    pop         esi
 00670827    pop         ebx
 00670828    mov         esp,ebp
 0067082A    pop         ebp
 0067082B    ret
end;*}

//00670844
{*function sub_00670844(?:?):?;
begin
 00670844    push        ebp
 00670845    mov         ebp,esp
 00670847    push        ebx
 00670848    push        esi
 00670849    push        edi
 0067084A    mov         eax,dword ptr [ebp+8]
 0067084D    mov         ebx,eax
 0067084F    cmp         dword ptr [ebx+4],0
>00670853    jne         0067089D
 00670855    cmp         dword ptr [ebx+10],0
>00670859    je          00670860
 0067085B    mov         eax,dword ptr [ebx+10]
>0067085E    jmp         006708A6
 00670860    cmp         dword ptr [ebx+8],0
>00670864    jne         0067086D
 00670866    mov         eax,6E54CE
>0067086B    jmp         006708A6
 0067086D    mov         edx,dword ptr [ebx+8]
 00670870    mov         edi,dword ptr [edx-2C]
 00670873    movzx       esi,byte ptr [edi]
 00670876    lea         eax,[esi+1]
 00670879    push        eax
 0067087A    call        0066EC88
 0067087F    pop         ecx
 00670880    mov         dword ptr [ebx+10],eax
 00670883    push        esi
 00670884    inc         edi
 00670885    push        edi
 00670886    push        dword ptr [ebx+10]
 00670889    call        0066F894
 0067088E    add         esp,0C
 00670891    mov         eax,dword ptr [ebx+10]
 00670894    mov         byte ptr [eax+esi],0
 00670898    mov         eax,dword ptr [ebx+10]
>0067089B    jmp         006708A6
 0067089D    push        dword ptr [eax+4]
 006708A0    call        0067043C
 006708A5    pop         ecx
 006708A6    pop         edi
 006708A7    pop         esi
 006708A8    pop         ebx
 006708A9    pop         ebp
 006708AA    ret
end;*}

//006708AC
{*function sub_006708AC(?:?; ?:TComponent):?;
begin
 006708AC    test        eax,eax
>006708AE    je          006708C1
 006708B0    mov         ecx,dword ptr [eax]
 006708B2    cmp         edx,ecx
>006708B4    je          006708C3
 006708B6    mov         ecx,dword ptr [ecx-24]
 006708B9    test        ecx,ecx
>006708BB    je          006708C1
 006708BD    mov         ecx,dword ptr [ecx]
>006708BF    jmp         006708B2
 006708C1    xor         eax,eax
 006708C3    ret
end;*}

//006708C4
{*function sub_006708C4(?:?; ?:?; ?:?):?;
begin
 006708C4    push        ebp
 006708C5    mov         ebp,esp
 006708C7    push        ebx
 006708C8    push        esi
 006708C9    mov         esi,dword ptr [ebp+10]
 006708CC    mov         ebx,dword ptr [ebp+0C]
 006708CF    cmp         dword ptr [ebp+8],0
>006708D3    jne         006708DA
 006708D5    mov         eax,dword ptr [ebp+8]
>006708D8    jmp         0067093A
 006708DA    movzx       eax,word ptr [ebx+10]
 006708DE    add         eax,ebx
 006708E0    lea         edx,[ebp+8]
 006708E3    push        edx
 006708E4    push        esi
 006708E5    push        0
 006708E7    push        eax
 006708E8    call        0067034D
 006708ED    add         esp,10
 006708F0    test        eax,eax
>006708F2    je          006708F9
 006708F4    mov         eax,dword ptr [ebp+8]
>006708F7    jmp         0067093A
 006708F9    movzx       eax,word ptr [ebx+12]
 006708FD    add         eax,ebx
 006708FF    lea         edx,[ebp+8]
 00670902    push        edx
 00670903    push        esi
 00670904    push        1
 00670906    push        eax
 00670907    call        0067034D
 0067090C    add         esp,10
 0067090F    test        eax,eax
>00670911    je          00670918
 00670913    mov         eax,dword ptr [ebp+8]
>00670916    jmp         0067093A
 00670918    mov         edx,6E5655
 0067091D    test        edx,edx
>0067091F    je          00670938
 00670921    push        57E
 00670926    push        6E56C6
 0067092B    push        6E568C
 00670930    call        00678AD8
 00670935    add         esp,0C
 00670938    xor         eax,eax
 0067093A    pop         esi
 0067093B    pop         ebx
 0067093C    pop         ebp
 0067093D    ret
end;*}

//00670A0C
procedure sub_00670A0C;
begin
{*
 00670A0C    cmp         dword ptr ds:[6E56FC],0;gvar_006E56FC
>00670A13    jne         00670A1F
 00670A15    mov         dword ptr ds:[6E56FC],670A34
 00670A1F    cmp         dword ptr ds:[6E5700],0;gvar_006E5700
>00670A26    jne         00670A32
 00670A28    mov         dword ptr ds:[6E5700],670A84
 00670A32    ret
*}
end;

end.