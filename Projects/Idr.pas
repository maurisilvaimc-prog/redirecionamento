//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Idr;

interface

uses
  SysUtils, Classes;

    procedure sub_00691DC0;//00691DC0
    //procedure sub_00691E70(?:?);//00691E70
    //procedure sub_00691F38(?:?);//00691F38
    procedure sub_00692010;//00692010
    //function sub_00692018(?:?):?;//00692018
    //function sub_00692088(?:?; ?:?):?;//00692088
    //procedure sub_006921BC(?:?; ?:?);//006921BC
    //procedure sub_00692220(?:?; ?:?);//00692220
    //function sub_006922FC(?:?):?;//006922FC
    //function sub_00692330(?:?):?;//00692330
    //procedure sub_00692374(?:?; ?:?);//00692374
    //procedure sub_006923BC(?:?; ?:?);//006923BC

implementation

//00691DC0
procedure sub_00691DC0;
begin
{*
 00691DC0    push        ebp
 00691DC1    mov         ebp,esp
 00691DC3    push        0
 00691DC5    push        0
 00691DC7    xor         eax,eax
 00691DC9    push        ebp
 00691DCA    push        691E48
 00691DCF    push        dword ptr fs:[eax]
 00691DD2    mov         dword ptr fs:[eax],esp
 00691DD5    sub         dword ptr ds:[6F12BC],1
>00691DDC    jae         00691E2D
 00691DDE    call        InitDefaults
 00691DE3    mov         eax,[0068F93C];TJPEGImage
 00691DE8    push        eax
 00691DE9    lea         edx,[ebp-4]
 00691DEC    mov         eax,[006EA304];^gvar_00692438
 00691DF1    call        LoadResString
 00691DF6    mov         ecx,dword ptr [ebp-4]
 00691DF9    mov         edx,691E5C;'jpeg'
 00691DFE    mov         eax,[005BEB28];TPicture
 00691E03    call        005C46B8
 00691E08    mov         eax,[0068F93C];TJPEGImage
 00691E0D    push        eax
 00691E0E    lea         edx,[ebp-8]
 00691E11    mov         eax,[006EA304];^gvar_00692438
 00691E16    call        LoadResString
 00691E1B    mov         ecx,dword ptr [ebp-8]
 00691E1E    mov         edx,691E6C;'jpg'
 00691E23    mov         eax,[005BEB28];TPicture
 00691E28    call        005C46B8
 00691E2D    xor         eax,eax
 00691E2F    pop         edx
 00691E30    pop         ecx
 00691E31    pop         ecx
 00691E32    mov         dword ptr fs:[eax],edx
 00691E35    push        691E4F
 00691E3A    lea         eax,[ebp-8]
 00691E3D    mov         edx,2
 00691E42    call        @LStrArrayClr
 00691E47    ret
>00691E48    jmp         @HandleFinally
>00691E4D    jmp         00691E3A
 00691E4F    pop         ecx
 00691E50    pop         ecx
 00691E51    pop         ebp
 00691E52    ret
*}
end;

//00691E70
{*procedure sub_00691E70(?:?);
begin
 00691E70    push        ebp
 00691E71    mov         ebp,esp
 00691E73    add         esp,0FFFFFFD4
 00691E76    mov         eax,6E9BBC
 00691E7B    push        ebx
 00691E7C    push        esi
 00691E7D    mov         esi,dword ptr [ebp+8]
 00691E80    call        0066FECC
 00691E85    mov         ebx,esi
 00691E87    mov         word ptr [ebp-1C],8
 00691E8D    dec         ebx
 00691E8E    push        6E9C28;gvar_006E9C28
 00691E93    shr         ebx,3
 00691E96    shl         ebx,2
 00691E99    add         ebx,6E9BE8
 00691E9F    call        00691F38
 00691EA4    pop         ecx
 00691EA5    inc         dword ptr [ebp-10]
 00691EA8    mov         word ptr [ebp-1C],14
 00691EAE    mov         eax,dword ptr [ebx]
 00691EB0    test        eax,eax
>00691EB2    je          00691EBA
 00691EB4    mov         edx,dword ptr [eax]
 00691EB6    mov         dword ptr [ebx],edx
>00691EB8    jmp         00691EC1
 00691EBA    push        esi
 00691EBB    call        00692018
 00691EC0    pop         ecx
 00691EC1    dec         dword ptr [ebp-10]
 00691EC4    mov         edx,6E9C28;gvar_006E9C28
 00691EC9    xor         ecx,ecx
 00691ECB    mov         dword ptr [edx],ecx
 00691ECD    mov         edx,dword ptr [ebp-2C]
 00691ED0    mov         dword ptr fs:[0],edx
 00691ED7    pop         esi
 00691ED8    pop         ebx
 00691ED9    mov         esp,ebp
 00691EDB    pop         ebp
 00691EDC    ret
end;*}

//00691F38
{*procedure sub_00691F38(?:?);
begin
 00691F38    push        ebp
 00691F39    mov         ebp,esp
 00691F3B    add         esp,0FFFFFFF0
 00691F3E    push        ebx
 00691F3F    push        esi
 00691F40    push        edi
 00691F41    mov         edi,dword ptr [ebp+8]
 00691F44    mov         ebx,edi
 00691F46    push        1
 00691F48    push        ebx
 00691F49    call        KERNEL32.InterlockedExchange
 00691F4E    test        eax,eax
>00691F50    je          00692008
 00691F56    mov         eax,[006E9C2C];0x1E gvar_006E9C2C
 00691F5B    xor         ebx,ebx
 00691F5D    mov         dword ptr [ebp-4],eax
 00691F60    mov         edx,dword ptr ds:[6E9C30];0x0 gvar_006E9C30
 00691F66    mov         dword ptr [ebp-8],edx
 00691F69    mov         dword ptr [ebp-0C],11
 00691F70    cmp         ebx,dword ptr [ebp-4]
>00691F73    jae         00691FD3
 00691F75    mov         eax,dword ptr [ebp-8]
 00691F78    shr         eax,1
 00691F7A    cmp         ebx,eax
>00691F7C    jb          00691F83
 00691F7E    cmp         dword ptr [edi],0
>00691F81    je          00691FAD
 00691F83    mov         edx,dword ptr [ebp-0C]
 00691F86    imul        edx,dword ptr [ebp-0C]
 00691F8A    mov         dword ptr [ebp-0C],edx
 00691F8D    mov         ecx,dword ptr [ebp-0C]
 00691F90    imul        ecx,dword ptr [ebp-0C]
 00691F94    mov         dword ptr [ebp-0C],ecx
 00691F97    mov         eax,dword ptr [ebp-0C]
 00691F9A    imul        eax,dword ptr [ebp-0C]
 00691F9E    mov         dword ptr [ebp-0C],eax
 00691FA1    mov         edx,dword ptr [ebp-0C]
 00691FA4    imul        edx,dword ptr [ebp-0C]
 00691FA8    mov         dword ptr [ebp-0C],edx
>00691FAB    jmp         00691FCD
 00691FAD    mov         esi,edi
 00691FAF    push        1
 00691FB1    push        esi
 00691FB2    call        KERNEL32.InterlockedExchange
 00691FB7    test        eax,eax
>00691FB9    jne         00691FCD
 00691FBB    mov         dword ptr ds:[6E9C30],ebx;gvar_006E9C30
 00691FC1    mov         dword ptr ds:[6E9C2C],3E8;gvar_006E9C2C
>00691FCB    jmp         00692008
 00691FCD    inc         ebx
 00691FCE    cmp         ebx,dword ptr [ebp-4]
>00691FD1    jb          00691F75
 00691FD3    mov         dword ptr ds:[6E9C2C],1E;gvar_006E9C2C
 00691FDD    xor         ebx,ebx
 00691FDF    lea         esi,[ebx+6]
 00691FE2    cmp         esi,1B
>00691FE5    jle         00691FEC
 00691FE7    mov         esi,1B
 00691FEC    mov         dword ptr [ebp-10],edi
 00691FEF    push        1
 00691FF1    mov         eax,dword ptr [ebp-10]
 00691FF4    push        eax
 00691FF5    call        KERNEL32.InterlockedExchange
 00691FFA    test        eax,eax
>00691FFC    je          00692008
 00691FFE    push        esi
 00691FFF    call        00692010
 00692004    pop         ecx
 00692005    inc         ebx
>00692006    jmp         00691FDF
 00692008    pop         edi
 00692009    pop         esi
 0069200A    pop         ebx
 0069200B    mov         esp,ebp
 0069200D    pop         ebp
 0069200E    ret
end;*}

//00692010
procedure sub_00692010;
begin
{*
 00692010    push        ebp
 00692011    mov         ebp,esp
 00692013    pop         ebp
 00692014    ret
*}
end;

//00692018
{*function sub_00692018(?:?):?;
begin
 00692018    push        ebp
 00692019    mov         ebp,esp
 0069201B    add         esp,0FFFFFFF8
 0069201E    push        ebx
 0069201F    push        esi
 00692020    mov         esi,dword ptr [ebp+8]
 00692023    mov         dword ptr [ebp-4],14
 0069202A    add         esi,8
 0069202D    dec         esi
 0069202E    and         esi,0FFFFFFF8
 00692031    lea         eax,[ebp-4]
 00692034    push        eax
 00692035    push        esi
 00692036    call        00692088
 0069203B    add         esp,8
 0069203E    mov         edx,eax
 00692040    cmp         dword ptr [ebp-4],1
>00692044    jne         0069204A
 00692046    mov         eax,edx
>00692048    jmp         00692081
 0069204A    mov         ecx,esi
 0069204C    mov         eax,esi
 0069204E    dec         ecx
 0069204F    mov         dword ptr [ebp-8],edx
 00692052    shr         ecx,3
 00692055    shl         ecx,2
 00692058    add         ecx,6E9BE8
 0069205E    add         eax,edx
 00692060    mov         dword ptr [ecx],eax
 00692062    mov         ecx,1
 00692067    mov         edx,eax
 00692069    mov         ebx,dword ptr [ebp-4]
 0069206C    dec         ebx
 0069206D    add         eax,esi
 0069206F    cmp         ecx,ebx
>00692071    jne         00692079
 00692073    xor         eax,eax
 00692075    mov         dword ptr [edx],eax
>00692077    jmp         0069207E
 00692079    mov         dword ptr [edx],eax
 0069207B    inc         ecx
>0069207C    jmp         00692067
 0069207E    mov         eax,dword ptr [ebp-8]
 00692081    pop         esi
 00692082    pop         ebx
 00692083    pop         ecx
 00692084    pop         ecx
 00692085    pop         ebp
 00692086    ret
end;*}

//00692088
{*function sub_00692088(?:?; ?:?):?;
begin
 00692088    push        ebp
 00692089    mov         ebp,esp
 0069208B    push        ecx
 0069208C    push        ebx
 0069208D    push        esi
 0069208E    push        edi
 0069208F    mov         ebx,dword ptr [ebp+8]
 00692092    mov         eax,dword ptr [ebp+0C]
 00692095    mov         eax,dword ptr [eax]
 00692097    imul        ebx
 00692099    mov         ecx,dword ptr ds:[6E9C34];0x0 gvar_006E9C34
 0069209F    mov         edx,dword ptr ds:[6E9C38];0x0 gvar_006E9C38
 006920A5    sub         ecx,edx
 006920A7    cmp         eax,ecx
>006920A9    ja          006920B8
 006920AB    add         dword ptr ds:[6E9C38],eax;gvar_006E9C38
 006920B1    mov         eax,edx
>006920B3    jmp         006921B3
 006920B8    cmp         ebx,ecx
>006920BA    ja          006920E0
 006920BC    mov         eax,ecx
 006920BE    xor         edx,edx
 006920C0    div         eax,ebx
 006920C2    mov         esi,eax
 006920C4    mov         eax,dword ptr [ebp+0C]
 006920C7    mov         dword ptr [eax],esi
 006920C9    mov         eax,esi
 006920CB    imul        ebx
 006920CD    mov         edx,dword ptr ds:[6E9C38];0x0 gvar_006E9C38
 006920D3    add         dword ptr ds:[6E9C38],eax;gvar_006E9C38
 006920D9    mov         eax,edx
>006920DB    jmp         006921B3
 006920E0    mov         edx,dword ptr ds:[6E9C3C];0x0 gvar_006E9C3C
 006920E6    add         eax,eax
 006920E8    shr         edx,4
 006920EB    add         edx,8
 006920EE    dec         edx
 006920EF    and         edx,0FFFFFFF8
 006920F2    add         eax,edx
 006920F4    test        ecx,ecx
 006920F6    mov         dword ptr [ebp-4],eax
>006920F9    jbe         00692116
 006920FB    mov         eax,ecx
 006920FD    dec         eax
 006920FE    shr         eax,3
 00692101    shl         eax,2
 00692104    add         eax,6E9BE8
 0069210A    mov         ecx,dword ptr [eax]
 0069210C    mov         edx,dword ptr ds:[6E9C38];0x0 gvar_006E9C38
 00692112    mov         dword ptr [edx],ecx
 00692114    mov         dword ptr [eax],edx
 00692116    mov         esi,dword ptr [ebp-4]
 00692119    push        esi
 0069211A    call        0066EAE4
 0069211F    pop         ecx
 00692120    mov         edi,eax
 00692122    mov         dword ptr ds:[6E9C38],edi;gvar_006E9C38
 00692128    test        edi,edi
>0069212A    jne         0069218E
 0069212C    mov         eax,ebx
 0069212E    cmp         eax,80
>00692133    ja          00692177
 00692135    mov         ecx,eax
 00692137    dec         ecx
 00692138    shr         ecx,3
 0069213B    shl         ecx,2
 0069213E    add         ecx,6E9BE8
 00692144    mov         edx,dword ptr [ecx]
 00692146    test        edx,edx
>00692148    je          0069216D
 0069214A    mov         esi,dword ptr [edx]
 0069214C    mov         dword ptr [ecx],esi
 0069214E    mov         ecx,edx
 00692150    mov         dword ptr ds:[6E9C38],ecx;gvar_006E9C38
 00692156    add         ecx,eax
 00692158    mov         dword ptr ds:[6E9C34],ecx;gvar_006E9C34
 0069215E    mov         eax,dword ptr [ebp+0C]
 00692161    push        eax
 00692162    push        ebx
 00692163    call        00692088
 00692168    add         esp,8
>0069216B    jmp         006921B3
 0069216D    add         eax,8
 00692170    cmp         eax,80
>00692175    jbe         00692135
 00692177    xor         edx,edx
 00692179    mov         dword ptr ds:[6E9C34],edx;gvar_006E9C34
 0069217F    mov         esi,dword ptr [ebp-4]
 00692182    push        esi
 00692183    call        0066EAE4
 00692188    pop         ecx
 00692189    mov         [006E9C38],eax;gvar_006E9C38
 0069218E    mov         eax,dword ptr [ebp-4]
 00692191    add         dword ptr ds:[6E9C3C],eax;gvar_006E9C3C
 00692197    mov         edx,dword ptr ds:[6E9C38];0x0 gvar_006E9C38
 0069219D    add         edx,dword ptr [ebp-4]
 006921A0    mov         dword ptr ds:[6E9C34],edx;gvar_006E9C34
 006921A6    mov         ecx,dword ptr [ebp+0C]
 006921A9    push        ecx
 006921AA    push        ebx
 006921AB    call        00692088
 006921B0    add         esp,8
 006921B3    pop         edi
 006921B4    pop         esi
 006921B5    pop         ebx
 006921B6    pop         ecx
 006921B7    pop         ebp
 006921B8    ret
end;*}

//006921BC
{*procedure sub_006921BC(?:?; ?:?);
begin
 006921BC    push        ebp
 006921BD    mov         ebp,esp
 006921BF    add         esp,0FFFFFFD4
 006921C2    mov         eax,6E9C60
 006921C7    push        ebx
 006921C8    push        esi
 006921C9    mov         esi,dword ptr [ebp+8]
 006921CC    call        0066FECC
 006921D1    mov         ebx,dword ptr [ebp+0C]
 006921D4    mov         word ptr [ebp-1C],8
 006921DA    dec         ebx
 006921DB    push        6E9C28;gvar_006E9C28
 006921E0    shr         ebx,3
 006921E3    shl         ebx,2
 006921E6    add         ebx,6E9BE8
 006921EC    call        00691F38
 006921F1    pop         ecx
 006921F2    inc         dword ptr [ebp-10]
 006921F5    mov         word ptr [ebp-1C],14
 006921FB    mov         eax,dword ptr [ebx]
 006921FD    mov         dword ptr [esi],eax
 006921FF    mov         dword ptr [ebx],esi
 00692201    dec         dword ptr [ebp-10]
 00692204    mov         eax,6E9C28;gvar_006E9C28
 00692209    xor         edx,edx
 0069220B    mov         dword ptr [eax],edx
 0069220D    mov         ecx,dword ptr [ebp-2C]
 00692210    mov         dword ptr fs:[0],ecx
 00692217    pop         esi
 00692218    pop         ebx
 00692219    mov         esp,ebp
 0069221B    pop         ebp
 0069221C    ret
end;*}

//00692220
{*procedure sub_00692220(?:?; ?:?);
begin
 00692220    push        ebp
 00692221    mov         ebp,esp
 00692223    push        ebx
 00692224    push        esi
 00692225    mov         esi,dword ptr [ebp+0C]
 00692228    mov         ebx,dword ptr [ebp+8]
 0069222B    mov         byte ptr [ebx],0
>0069222E    jmp         006922E0
 00692233    mov         eax,dword ptr [ebx+4]
 00692236    mov         edx,dword ptr [eax+4]
 00692239    mov         ecx,dword ptr [edx+8]
 0069223C    cmp         ecx,eax
>0069223E    jne         0069228E
 00692240    mov         eax,dword ptr [edx+0C]
 00692243    test        eax,eax
>00692245    je          00692262
 00692247    cmp         byte ptr [eax],0
>0069224A    jne         00692262
 0069224C    mov         edx,dword ptr [ebx+4]
 0069224F    mov         byte ptr [edx],1
 00692252    mov         byte ptr [eax],1
 00692255    mov         ecx,dword ptr [ebx+4]
 00692258    mov         eax,dword ptr [ecx+4]
 0069225B    mov         byte ptr [eax],0
 0069225E    mov         ebx,eax
>00692260    jmp         006922E0
 00692262    mov         eax,dword ptr [ebx+4]
 00692265    cmp         ebx,dword ptr [eax+0C]
>00692268    jne         00692276
 0069226A    mov         ebx,eax
 0069226C    push        esi
 0069226D    push        ebx
 0069226E    call        00692374
 00692273    add         esp,8
 00692276    mov         eax,dword ptr [ebx+4]
 00692279    mov         byte ptr [eax],1
 0069227C    mov         edx,dword ptr [eax+4]
 0069227F    mov         byte ptr [edx],0
 00692282    push        esi
 00692283    push        edx
 00692284    call        006923BC
 00692289    add         esp,8
>0069228C    jmp         006922E0
 0069228E    mov         ecx,dword ptr [ebx+4]
 00692291    mov         eax,dword ptr [ecx+4]
 00692294    mov         eax,dword ptr [eax+8]
 00692297    test        eax,eax
>00692299    je          006922B6
 0069229B    cmp         byte ptr [eax],0
>0069229E    jne         006922B6
 006922A0    mov         edx,dword ptr [ebx+4]
 006922A3    mov         byte ptr [edx],1
 006922A6    mov         byte ptr [eax],1
 006922A9    mov         ecx,dword ptr [ebx+4]
 006922AC    mov         eax,dword ptr [ecx+4]
 006922AF    mov         byte ptr [eax],0
 006922B2    mov         ebx,eax
>006922B4    jmp         006922E0
 006922B6    mov         eax,dword ptr [ebx+4]
 006922B9    cmp         ebx,dword ptr [eax+8]
>006922BC    jne         006922CA
 006922BE    mov         ebx,eax
 006922C0    push        esi
 006922C1    push        ebx
 006922C2    call        006923BC
 006922C7    add         esp,8
 006922CA    mov         eax,dword ptr [ebx+4]
 006922CD    mov         byte ptr [eax],1
 006922D0    mov         edx,dword ptr [eax+4]
 006922D3    mov         byte ptr [edx],0
 006922D6    push        esi
 006922D7    push        edx
 006922D8    call        00692374
 006922DD    add         esp,8
 006922E0    cmp         ebx,dword ptr [esi]
>006922E2    je          006922F0
 006922E4    mov         ecx,dword ptr [ebx+4]
 006922E7    cmp         byte ptr [ecx],0
>006922EA    je          00692233
 006922F0    mov         eax,dword ptr [esi]
 006922F2    mov         byte ptr [eax],1
 006922F5    pop         esi
 006922F6    pop         ebx
 006922F7    pop         ebp
 006922F8    ret
end;*}

//006922FC
{*function sub_006922FC(?:?):?;
begin
 006922FC    push        ebp
 006922FD    mov         ebp,esp
 006922FF    mov         eax,dword ptr [ebp+8]
 00692302    mov         edx,dword ptr [eax+0C]
 00692305    test        edx,edx
>00692307    je          00692318
 00692309    mov         eax,edx
>0069230B    jmp         0069230F
 0069230D    mov         eax,edx
 0069230F    mov         edx,dword ptr [eax+8]
 00692312    test        edx,edx
>00692314    jne         0069230D
>00692316    jmp         0069232E
 00692318    mov         edx,dword ptr [eax+4]
>0069231B    jmp         00692322
 0069231D    mov         eax,edx
 0069231F    mov         edx,dword ptr [edx+4]
 00692322    cmp         eax,dword ptr [edx+0C]
>00692325    je          0069231D
 00692327    cmp         edx,dword ptr [eax+0C]
>0069232A    je          0069232E
 0069232C    mov         eax,edx
 0069232E    pop         ebp
 0069232F    ret
end;*}

//00692330
{*function sub_00692330(?:?):?;
begin
 00692330    push        ebp
 00692331    mov         ebp,esp
 00692333    mov         edx,dword ptr [ebp+8]
 00692336    cmp         byte ptr [edx],0
>00692339    jne         00692348
 0069233B    mov         eax,dword ptr [edx+4]
 0069233E    cmp         edx,dword ptr [eax+4]
>00692341    jne         00692348
 00692343    mov         edx,dword ptr [edx+0C]
>00692346    jmp         0069236F
 00692348    mov         eax,dword ptr [edx+8]
 0069234B    test        eax,eax
>0069234D    je          0069235E
>0069234F    jmp         00692353
 00692351    mov         eax,edx
 00692353    mov         edx,dword ptr [eax+0C]
 00692356    test        edx,edx
>00692358    jne         00692351
 0069235A    mov         edx,eax
>0069235C    jmp         0069236F
 0069235E    mov         eax,dword ptr [edx+4]
>00692361    jmp         00692368
 00692363    mov         edx,eax
 00692365    mov         eax,dword ptr [eax+4]
 00692368    cmp         edx,dword ptr [eax+8]
>0069236B    je          00692363
 0069236D    mov         edx,eax
 0069236F    mov         eax,edx
 00692371    pop         ebp
 00692372    ret
end;*}

//00692374
{*procedure sub_00692374(?:?; ?:?);
begin
 00692374    push        ebp
 00692375    mov         ebp,esp
 00692377    push        ebx
 00692378    mov         ecx,dword ptr [ebp+0C]
 0069237B    mov         eax,dword ptr [ebp+8]
 0069237E    mov         edx,dword ptr [eax+0C]
 00692381    mov         ebx,dword ptr [edx+8]
 00692384    mov         dword ptr [eax+0C],ebx
 00692387    mov         ebx,dword ptr [edx+8]
 0069238A    test        ebx,ebx
>0069238C    je          00692391
 0069238E    mov         dword ptr [ebx+4],eax
 00692391    mov         ebx,dword ptr [eax+4]
 00692394    mov         dword ptr [edx+4],ebx
 00692397    cmp         eax,dword ptr [ecx]
>00692399    jne         0069239F
 0069239B    mov         dword ptr [ecx],edx
>0069239D    jmp         006923B2
 0069239F    mov         ecx,dword ptr [eax+4]
 006923A2    cmp         eax,dword ptr [ecx+8]
>006923A5    jne         006923AC
 006923A7    mov         dword ptr [ecx+8],edx
>006923AA    jmp         006923B2
 006923AC    mov         ecx,dword ptr [eax+4]
 006923AF    mov         dword ptr [ecx+0C],edx
 006923B2    mov         dword ptr [edx+8],eax
 006923B5    mov         dword ptr [eax+4],edx
 006923B8    pop         ebx
 006923B9    pop         ebp
 006923BA    ret
end;*}

//006923BC
{*procedure sub_006923BC(?:?; ?:?);
begin
 006923BC    push        ebp
 006923BD    mov         ebp,esp
 006923BF    push        ebx
 006923C0    mov         ecx,dword ptr [ebp+0C]
 006923C3    mov         eax,dword ptr [ebp+8]
 006923C6    mov         edx,dword ptr [eax+8]
 006923C9    mov         ebx,dword ptr [edx+0C]
 006923CC    mov         dword ptr [eax+8],ebx
 006923CF    mov         ebx,dword ptr [edx+0C]
 006923D2    test        ebx,ebx
>006923D4    je          006923D9
 006923D6    mov         dword ptr [ebx+4],eax
 006923D9    mov         ebx,dword ptr [eax+4]
 006923DC    mov         dword ptr [edx+4],ebx
 006923DF    cmp         eax,dword ptr [ecx]
>006923E1    jne         006923E7
 006923E3    mov         dword ptr [ecx],edx
>006923E5    jmp         006923FA
 006923E7    mov         ecx,dword ptr [eax+4]
 006923EA    cmp         eax,dword ptr [ecx+0C]
>006923ED    jne         006923F4
 006923EF    mov         dword ptr [ecx+0C],edx
>006923F2    jmp         006923FA
 006923F4    mov         ecx,dword ptr [eax+4]
 006923F7    mov         dword ptr [ecx+8],edx
 006923FA    mov         dword ptr [edx+0C],eax
 006923FD    mov         dword ptr [eax+4],edx
 00692400    pop         ebx
 00692401    pop         ebp
 00692402    ret
end;*}

end.