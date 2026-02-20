//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit103;

interface

uses
  SysUtils, Classes;

    procedure sub_0066F780;//0066F780
    //procedure sub_0066F7F8(?:?; ?:?);//0066F7F8
    //procedure sub_0066F832(?:?; ?:?; ?:?);//0066F832
    //function sub_0066F874(?:?; ?:?; ?:?):?;//0066F874
    //procedure sub_0066F894(?:?; ?:?; ?:?);//0066F894
    //function sub_0066F8B8(?:?; ?:?; ?:?):?;//0066F8B8
    //function sub_0066F904(?:?; ?:?; ?:?):?;//0066F904
    //function sub_0066F990(?:?; ?:?; ?:?):?;//0066F990
    //function sub_0066F9A8(?:?; ?:?):?;//0066F9A8
    //function sub_0066F9E4(?:?; ?:?):?;//0066F9E4
    //function sub_0066FA38:?;//0066FA38
    //procedure sub_0066FA84(?:?; ?:?);//0066FA84
    //function sub_0066FAB4:?;//0066FAB4
    //function sub_0066FB10(?:?; ?:?; ?:?):?;//0066FB10
    //function sub_0066FB80(?:?; ?:?; ?:?; ?:?):?;//0066FB80
    //function sub_0066FBAD:?;//0066FBAD
    //function sub_0066FBB9:?;//0066FBB9
    //function sub_0066FBC5:?;//0066FBC5
    //function sub_0066FBCC(?:?; ?:?; ?:?):?;//0066FBCC
    //function sub_0066FC38(?:?; ?:?; ?:?):?;//0066FC38
    //function sub_0066FC80(?:?):?;//0066FC80
    //function sub_0066FCB4(?:?; ?:?):?;//0066FCB4
    //function sub_0066FCFC(?:?; ?:?; ?:?):?;//0066FCFC
    //function sub_0066FD78(?:?; ?:?):?;//0066FD78
    //function sub_0066FDCC(?:?; ?:?):?;//0066FDCC
    //procedure sub_0066FE3C(?:?; ?:?);//0066FE3C
    //function sub_0066FE74(?:?):?;//0066FE74
    //function sub_0066FE8C(?:?; ?:?):?;//0066FE8C
    //procedure sub_0066FECC(?:?);//0066FECC
    //function sub_0066FF3C(?:?; ?:?; ?:?; ?:?):?;//0066FF3C
    //function sub_006700E6(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//006700E6
    //function sub_0067034D(?:?; ?:?; ?:?; ?:?):?;//0067034D

implementation

//0066F780
procedure sub_0066F780;
begin
{*
 0066F780    push        ebp
 0066F781    mov         ebp,esp
 0066F783    add         esp,0FFFFFFDC
 0066F786    mov         eax,6E5308
 0066F78B    call        0066FECC
 0066F790    mov         word ptr [ebp-14],8
 0066F796    push        6EDA18
 0066F79B    call        KERNEL32.InitializeCriticalSection
 0066F7A0    mov         dword ptr ds:[6EDA30],1;gvar_006EDA30
 0066F7AA    inc         dword ptr [ebp-8]
 0066F7AD    mov         edx,dword ptr [ebp-24]
 0066F7B0    mov         dword ptr fs:[0],edx
 0066F7B7    mov         esp,ebp
 0066F7B9    pop         ebp
 0066F7BA    ret
*}
end;

//0066F7F8
{*procedure sub_0066F7F8(?:?; ?:?);
begin
 0066F7F8    push        ebp
 0066F7F9    mov         ebp,esp
 0066F7FB    mov         eax,dword ptr [ebp+8]
 0066F7FE    test        eax,eax
>0066F800    je          0066F816
 0066F802    mov         edx,6E4F84
 0066F807    mov         dword ptr [eax],edx
 0066F809    test        byte ptr [ebp+0C],1
>0066F80D    je          0066F816
 0066F80F    push        eax
 0066F810    call        0066EAB0
 0066F815    pop         ecx
 0066F816    pop         ebp
 0066F817    ret
end;*}

//0066F832
{*procedure sub_0066F832(?:?; ?:?; ?:?);
begin
 0066F832    add         byte ptr [ecx+esi+66],dh
 0066F836    mov         dword ptr [ebp-14],98BA0008
 0066F83D    dec         edi
 0066F83E    outs        dl,byte ptr [esi]
 0066F83F    add         byte ptr [ebx+1189084D],cl
 0066F845    dec         dword ptr [ebp-8]
 0066F848    push        0
 0066F84A    mov         eax,dword ptr [ebp+8]
 0066F84D    push        eax
 0066F84E    call        0066F7F8
 0066F853    add         esp,8
 0066F856    test        byte ptr [ebp+0C],1
>0066F85A    je          0066F866
 0066F85C    mov         edx,dword ptr [ebp+8]
 0066F85F    push        edx
 0066F860    call        0066EAB0
 0066F865    pop         ecx
 0066F866    mov         ecx,dword ptr [ebp-24]
 0066F869    mov         dword ptr fs:[0],ecx
 0066F870    mov         esp,ebp
 0066F872    pop         ebp
 0066F873    ret
end;*}

//0066F874
{*function sub_0066F874(?:?; ?:?; ?:?):?;
begin
 0066F874    push        ebp
 0066F875    mov         ebp,esp
 0066F877    push        edi
 0066F878    mov         edi,dword ptr [ebp+8]
 0066F87B    mov         ecx,dword ptr [ebp+10]
 0066F87E    jecxz       0066F88E
 0066F880    mov         al,byte ptr [ebp+0C]
 0066F883    cld
 0066F884    repne scas  byte ptr [edi]
>0066F886    jne         0066F88E
 0066F888    lea         eax,[edi-1]
 0066F88B    pop         edi
 0066F88C    pop         ebp
 0066F88D    ret
 0066F88E    xor         eax,eax
>0066F890    jmp         0066F88B
 0066F892    nop
 0066F893    nop
 0066F894    push        ebp
 0066F895    mov         ebp,esp
 0066F897    push        esi
 0066F898    push        edi
 0066F899    mov         edi,dword ptr [ebp+8]
 0066F89C    mov         eax,edi
 0066F89E    mov         esi,dword ptr [ebp+0C]
 0066F8A1    mov         ecx,dword ptr [ebp+10]
 0066F8A4    mov         edx,ecx
 0066F8A6    shr         ecx,1
 0066F8A8    shr         ecx,1
 0066F8AA    cld
 0066F8AB    rep movs    dword ptr [edi],dword ptr [esi]
 0066F8AD    mov         ecx,edx
 0066F8AF    and         ecx,3
 0066F8B2    rep movs    byte ptr [edi],byte ptr [esi]
 0066F8B4    pop         edi
 0066F8B5    pop         esi
 0066F8B6    pop         ebp
 0066F8B7    ret
end;*}

//0066F894
{*procedure sub_0066F894(?:?; ?:?; ?:?);
begin
 0066F894    push        ebp
 0066F895    mov         ebp,esp
 0066F897    push        esi
 0066F898    push        edi
 0066F899    mov         edi,dword ptr [ebp+8]
 0066F89C    mov         eax,edi
 0066F89E    mov         esi,dword ptr [ebp+0C]
 0066F8A1    mov         ecx,dword ptr [ebp+10]
 0066F8A4    mov         edx,ecx
 0066F8A6    shr         ecx,1
 0066F8A8    shr         ecx,1
 0066F8AA    cld
 0066F8AB    rep movs    dword ptr [edi],dword ptr [esi]
 0066F8AD    mov         ecx,edx
 0066F8AF    and         ecx,3
 0066F8B2    rep movs    byte ptr [edi],byte ptr [esi]
 0066F8B4    pop         edi
 0066F8B5    pop         esi
 0066F8B6    pop         ebp
 0066F8B7    ret
end;*}

//0066F8B8
{*function sub_0066F8B8(?:?; ?:?; ?:?):?;
begin
 0066F8B8    push        ebp
 0066F8B9    mov         ebp,esp
 0066F8BB    push        esi
 0066F8BC    push        edi
 0066F8BD    mov         edi,dword ptr [ebp+8]
 0066F8C0    mov         esi,dword ptr [ebp+0C]
 0066F8C3    mov         ecx,dword ptr [ebp+10]
 0066F8C6    mov         edx,ecx
 0066F8C8    cmp         edi,esi
>0066F8CA    jb          0066F8ED
>0066F8CC    je          0066F8FB
 0066F8CE    std
 0066F8CF    lea         esi,[esi+ecx-1]
 0066F8D3    lea         edi,[edi+ecx-1]
 0066F8D7    and         ecx,3
 0066F8DA    rep movs    byte ptr [edi],byte ptr [esi]
 0066F8DC    mov         ecx,edx
 0066F8DE    shr         ecx,1
 0066F8E0    shr         ecx,1
 0066F8E2    sub         esi,3
 0066F8E5    sub         edi,3
 0066F8E8    rep movs    dword ptr [edi],dword ptr [esi]
 0066F8EA    cld
>0066F8EB    jmp         0066F8FB
 0066F8ED    cld
 0066F8EE    shr         ecx,1
 0066F8F0    shr         ecx,1
 0066F8F2    rep movs    dword ptr [edi],dword ptr [esi]
 0066F8F4    mov         ecx,edx
 0066F8F6    and         ecx,3
 0066F8F9    rep movs    byte ptr [edi],byte ptr [esi]
 0066F8FB    mov         eax,dword ptr [ebp+8]
 0066F8FE    pop         edi
 0066F8FF    pop         esi
 0066F900    pop         ebp
 0066F901    ret
end;*}

//0066F904
{*function sub_0066F904(?:?; ?:?; ?:?):?;
begin
 0066F904    push        ebp
 0066F905    mov         ebp,esp
 0066F907    push        edi
 0066F908    mov         al,byte ptr [ebp+0C]
 0066F90B    mov         edx,dword ptr [ebp+10]
 0066F90E    mov         edi,dword ptr [ebp+8]
 0066F911    mov         ah,al
 0066F913    test        edx,0FFFFFFFC
>0066F919    je          0066F978
 0066F91B    mov         word ptr [edi],ax
 0066F91E    lea         ecx,[edi+edx-4]
 0066F922    mov         word ptr [edi+2],ax
 0066F926    mov         eax,dword ptr [edi]
 0066F928    shr         edx,3
>0066F92B    je          0066F970
 0066F92D    mov         dword ptr [edi],eax
 0066F92F    mov         dword ptr [edi+4],eax
 0066F932    dec         edx
>0066F933    je          0066F965
 0066F935    mov         dword ptr [edi+8],eax
 0066F938    mov         dword ptr [edi+0C],eax
 0066F93B    dec         edx
>0066F93C    je          0066F965
 0066F93E    mov         dword ptr [edi+10],eax
 0066F941    mov         dword ptr [edi+14],eax
 0066F944    dec         edx
>0066F945    je          0066F965
 0066F947    mov         dword ptr [edi+18],eax
 0066F94A    mov         dword ptr [edi+1C],eax
 0066F94D    dec         edx
>0066F94E    je          0066F965
 0066F950    mov         dword ptr [edi+20],eax
 0066F953    mov         dword ptr [edi+24],eax
 0066F956    dec         edx
>0066F957    je          0066F965
 0066F959    mov         dword ptr [edi+28],eax
 0066F95C    mov         dword ptr [edi+2C],eax
 0066F95F    lea         edi,[edi+30]
 0066F962    dec         edx
>0066F963    jne         0066F92D
 0066F965    mov         dword ptr [ecx],eax
 0066F967    mov         dword ptr [ecx-4],eax
 0066F96A    mov         eax,dword ptr [ebp+8]
 0066F96D    pop         edi
 0066F96E    pop         ebp
 0066F96F    ret
 0066F970    mov         dword ptr [ecx],eax
 0066F972    mov         eax,dword ptr [ebp+8]
 0066F975    pop         edi
 0066F976    pop         ebp
 0066F977    ret
 0066F978    and         edx,3
>0066F97B    je          0066F988
 0066F97D    mov         byte ptr [edi],al
 0066F97F    dec         dl
>0066F981    je          0066F988
 0066F983    mov         word ptr [edi+edx-1],ax
 0066F988    mov         eax,dword ptr [ebp+8]
 0066F98B    pop         edi
 0066F98C    pop         ebp
 0066F98D    ret
end;*}

//0066F990
{*function sub_0066F990(?:?; ?:?; ?:?):?;
begin
 0066F990    push        ebp
 0066F991    mov         ebp,esp
 0066F993    push        edi
 0066F994    mov         edi,dword ptr [ebp+8]
 0066F997    mov         ax,word ptr [ebp+0C]
 0066F99B    mov         ecx,dword ptr [ebp+10]
 0066F99E    cld
 0066F99F    rep stos    word ptr [edi]
 0066F9A2    mov         eax,dword ptr [ebp+8]
 0066F9A5    pop         edi
 0066F9A6    pop         ebp
 0066F9A7    ret
end;*}

//0066F9A8
{*function sub_0066F9A8(?:?; ?:?):?;
begin
 0066F9A8    push        ebp
 0066F9A9    mov         ebp,esp
 0066F9AB    push        esi
 0066F9AC    push        edi
 0066F9AD    mov         edi,dword ptr [ebp+8]
 0066F9B0    mov         ecx,0FFFFFFFF
 0066F9B5    xor         al,al
 0066F9B7    cld
 0066F9B8    repne scas  byte ptr [edi]
 0066F9BA    lea         esi,[edi-1]
 0066F9BD    mov         edi,dword ptr [ebp+0C]
 0066F9C0    mov         ecx,0FFFFFFFF
 0066F9C5    repne scas  byte ptr [edi]
 0066F9C7    not         ecx
 0066F9C9    sub         edi,ecx
 0066F9CB    xchg        esi,edi
 0066F9CD    mov         edx,ecx
 0066F9CF    shr         ecx,1
 0066F9D1    shr         ecx,1
 0066F9D3    cld
 0066F9D4    rep movs    dword ptr [edi],dword ptr [esi]
 0066F9D6    mov         ecx,edx
 0066F9D8    and         ecx,3
 0066F9DB    rep movs    byte ptr [edi],byte ptr [esi]
 0066F9DD    mov         eax,dword ptr [ebp+8]
 0066F9E0    pop         edi
 0066F9E1    pop         esi
 0066F9E2    pop         ebp
 0066F9E3    ret
end;*}

//0066F9E4
{*function sub_0066F9E4(?:?; ?:?):?;
begin
 0066F9E4    push        ebp
 0066F9E5    mov         ebp,esp
 0066F9E7    push        ebx
 0066F9E8    mov         edx,dword ptr [ebp+8]
 0066F9EB    mov         ecx,edx
 0066F9ED    mov         al,byte ptr [ebp+0C]
 0066F9F0    cld
 0066F9F1    mov         bl,byte ptr [edx]
 0066F9F3    cmp         al,bl
>0066F9F5    je          0066FA23
 0066F9F7    test        bl,bl
>0066F9F9    je          0066FA1F
 0066F9FB    mov         bl,byte ptr [edx+1]
 0066F9FE    cmp         al,bl
>0066FA00    je          0066FA27
 0066FA02    test        bl,bl
>0066FA04    je          0066FA1F
 0066FA06    mov         bl,byte ptr [edx+2]
 0066FA09    cmp         al,bl
>0066FA0B    je          0066FA2C
 0066FA0D    test        bl,bl
>0066FA0F    je          0066FA1F
 0066FA11    mov         bl,byte ptr [edx+3]
 0066FA14    cmp         al,bl
>0066FA16    je          0066FA31
 0066FA18    add         edx,4
 0066FA1B    test        bl,bl
>0066FA1D    jne         0066F9F1
 0066FA1F    xor         eax,eax
>0066FA21    jmp         0066FA34
 0066FA23    mov         eax,edx
>0066FA25    jmp         0066FA34
 0066FA27    lea         eax,[edx+1]
>0066FA2A    jmp         0066FA34
 0066FA2C    lea         eax,[edx+2]
>0066FA2F    jmp         0066FA34
 0066FA31    lea         eax,[edx+3]
 0066FA34    pop         ebx
 0066FA35    pop         ebp
 0066FA36    ret
end;*}

//0066FA38
{*function sub_0066FA38:?;
begin
 0066FA38    mov         ecx,dword ptr [esp+4]
 0066FA3C    mov         edx,dword ptr [esp+8]
 0066FA40    push        ebx
 0066FA41    xor         eax,eax
 0066FA43    xor         ebx,ebx
 0066FA45    mov         al,byte ptr [ecx]
 0066FA47    mov         bl,byte ptr [edx]
 0066FA49    sub         eax,ebx
>0066FA4B    jne         0066FA81
 0066FA4D    test        bl,bl
>0066FA4F    je          0066FA81
 0066FA51    mov         al,byte ptr [ecx+1]
 0066FA54    mov         bl,byte ptr [edx+1]
 0066FA57    sub         eax,ebx
>0066FA59    jne         0066FA81
 0066FA5B    test        bl,bl
>0066FA5D    je          0066FA81
 0066FA5F    mov         al,byte ptr [ecx+2]
 0066FA62    mov         bl,byte ptr [edx+2]
 0066FA65    sub         eax,ebx
>0066FA67    jne         0066FA81
 0066FA69    test        bl,bl
>0066FA6B    je          0066FA81
 0066FA6D    mov         al,byte ptr [ecx+3]
 0066FA70    mov         bl,byte ptr [edx+3]
 0066FA73    sub         eax,ebx
>0066FA75    jne         0066FA81
 0066FA77    add         ecx,4
 0066FA7A    add         edx,4
 0066FA7D    test        bl,bl
>0066FA7F    jne         0066FA45
 0066FA81    pop         ebx
 0066FA82    ret
end;*}

//0066FA84
{*procedure sub_0066FA84(?:?; ?:?);
begin
 0066FA84    push        ebp
 0066FA85    mov         ebp,esp
 0066FA87    push        esi
 0066FA88    push        edi
 0066FA89    mov         edi,dword ptr [ebp+0C]
 0066FA8C    mov         esi,edi
 0066FA8E    mov         ecx,0FFFFFFFF
 0066FA93    xor         al,al
 0066FA95    cld
 0066FA96    repne scas  byte ptr [edi]
 0066FA98    not         ecx
 0066FA9A    mov         edi,dword ptr [ebp+8]
 0066FA9D    mov         eax,edi
 0066FA9F    mov         edx,ecx
 0066FAA1    shr         ecx,1
 0066FAA3    shr         ecx,1
 0066FAA5    cld
 0066FAA6    rep movs    dword ptr [edi],dword ptr [esi]
 0066FAA8    mov         ecx,edx
 0066FAAA    and         ecx,3
 0066FAAD    rep movs    byte ptr [edi],byte ptr [esi]
 0066FAAF    pop         edi
 0066FAB0    pop         esi
 0066FAB1    pop         ebp
 0066FAB2    ret
end;*}

//0066FAB4
{*function sub_0066FAB4:?;
begin
 0066FAB4    mov         eax,dword ptr [esp+4]
 0066FAB8    test        al,3
>0066FABA    jne         0066FAE9
 0066FABC    mov         edx,dword ptr [eax]
 0066FABE    add         eax,4
 0066FAC1    mov         ecx,edx
 0066FAC3    sub         edx,1010101
 0066FAC9    and         edx,80808080
>0066FACF    je          0066FABC
 0066FAD1    not         ecx
 0066FAD3    and         edx,ecx
>0066FAD5    je          0066FABC
 0066FAD7    test        dl,dl
>0066FAD9    jne         0066FB03
 0066FADB    test        dh,dh
>0066FADD    jne         0066FB04
 0066FADF    test        edx,0FF0000
>0066FAE5    jne         0066FB05
>0066FAE7    jmp         0066FB06
 0066FAE9    add         eax,4
 0066FAEC    test        byte ptr [eax-4],0FF
>0066FAF0    je          0066FB03
 0066FAF2    test        byte ptr [eax-3],0FF
>0066FAF6    je          0066FB04
 0066FAF8    test        byte ptr [eax-2],0FF
>0066FAFC    je          0066FB05
 0066FAFE    dec         eax
 0066FAFF    and         al,0FC
>0066FB01    jmp         0066FABC
 0066FB03    dec         eax
 0066FB04    dec         eax
 0066FB05    dec         eax
 0066FB06    mov         ecx,dword ptr [esp+4]
 0066FB0A    dec         eax
 0066FB0B    sub         eax,ecx
 0066FB0D    ret
end;*}

//0066FB10
{*function sub_0066FB10(?:?; ?:?; ?:?):?;
begin
 0066FB10    push        ebp
 0066FB11    mov         ebp,esp
 0066FB13    push        edi
 0066FB14    push        ebx
 0066FB15    mov         edi,dword ptr [ebp+8]
 0066FB18    mov         ecx,0FFFFFFFF
 0066FB1D    xor         al,al
 0066FB1F    cld
 0066FB20    repne scas  byte ptr [edi]
 0066FB22    mov         ecx,dword ptr [ebp+10]
 0066FB25    lea         ebx,[edi-1]
 0066FB28    and         ecx,3
 0066FB2B    mov         edx,dword ptr [ebp+0C]
 0066FB2E    jecxz       0066FB3D
 0066FB30    mov         al,byte ptr [edx]
 0066FB32    mov         byte ptr [ebx],al
 0066FB34    test        al,al
>0066FB36    je          0066FB77
 0066FB38    inc         edx
 0066FB39    inc         ebx
 0066FB3A    dec         ecx
>0066FB3B    jne         0066FB30
 0066FB3D    mov         ecx,dword ptr [ebp+10]
 0066FB40    shr         ecx,2
 0066FB43    jecxz       0066FB74
 0066FB45    mov         al,byte ptr [edx]
 0066FB47    mov         byte ptr [ebx],al
 0066FB49    test        al,al
>0066FB4B    je          0066FB77
 0066FB4D    mov         al,byte ptr [edx+1]
 0066FB50    mov         byte ptr [ebx+1],al
 0066FB53    test        al,al
>0066FB55    je          0066FB77
 0066FB57    mov         al,byte ptr [edx+2]
 0066FB5A    mov         byte ptr [ebx+2],al
 0066FB5D    test        al,al
>0066FB5F    je          0066FB77
 0066FB61    mov         al,byte ptr [edx+3]
 0066FB64    add         edx,4
 0066FB67    mov         byte ptr [ebx+3],al
 0066FB6A    add         ebx,4
 0066FB6D    test        al,al
>0066FB6F    je          0066FB77
 0066FB71    dec         ecx
>0066FB72    jne         0066FB45
 0066FB74    mov         byte ptr [ebx],0
 0066FB77    mov         eax,dword ptr [ebp+8]
 0066FB7A    pop         ebx
 0066FB7B    pop         edi
 0066FB7C    pop         ebp
 0066FB7D    ret
end;*}

//0066FB80
{*function sub_0066FB80(?:?; ?:?; ?:?; ?:?):?;
begin
 0066FB80    push        ebp
 0066FB81    mov         ebp,esp
 0066FB83    push        esi
 0066FB84    push        edi
 0066FB85    cld
 0066FB86    mov         esi,dword ptr [ebp+8]
 0066FB89    mov         edi,dword ptr [ebp+0C]
 0066FB8C    mov         ecx,dword ptr [ebp+10]
 0066FB8F    dec         ecx
>0066FB90    js          0066FB9A
 0066FB92    lods        byte ptr [esi]
 0066FB93    scas        byte ptr [edi]
>0066FB94    jne         0066FB9E
 0066FB96    test        al,al
>0066FB98    jne         0066FB8F
 0066FB9A    xor         eax,eax
>0066FB9C    jmp         0066FBA3
 0066FB9E    sbb         eax,eax
 0066FBA0    or          eax,1
 0066FBA3    pop         edi
 0066FBA4    pop         esi
 0066FBA5    pop         ebp
 0066FBA6    ret
end;*}

//0066FBAD
{*function sub_0066FBAD:?;
begin
>0066FBAD    jmp         0066F9E4
end;*}

//0066FBB9
{*function sub_0066FBB9:?;
begin
>0066FBB9    jmp         0066FD4C
end;*}

//0066FBC5
{*function sub_0066FBC5:?;
begin
>0066FBC5    jmp         0066FD78
end;*}

//0066FBCC
{*function sub_0066FBCC(?:?; ?:?; ?:?):?;
begin
 0066FBCC    push        ebp
 0066FBCD    mov         ebp,esp
 0066FBCF    push        esi
 0066FBD0    push        edi
 0066FBD1    mov         edi,dword ptr [ebp+10]
 0066FBD4    mov         ecx,dword ptr [ebp+8]
 0066FBD7    mov         esi,dword ptr [ebp+0C]
 0066FBDA    cmp         edi,4
>0066FBDD    jl          0066FC13
 0066FBDF    mov         al,byte ptr [ecx]
 0066FBE1    mov         dl,byte ptr [esi]
 0066FBE3    cmp         dl,al
>0066FBE5    jne         0066FC13
 0066FBE7    mov         al,byte ptr [ecx+1]
 0066FBEA    mov         dl,byte ptr [esi+1]
 0066FBED    cmp         dl,al
>0066FBEF    jne         0066FC13
 0066FBF1    mov         al,byte ptr [ecx+2]
 0066FBF4    mov         dl,byte ptr [esi+2]
 0066FBF7    cmp         dl,al
>0066FBF9    jne         0066FC13
 0066FBFB    mov         al,byte ptr [ecx+3]
 0066FBFE    mov         dl,byte ptr [esi+3]
 0066FC01    cmp         dl,al
>0066FC03    jne         0066FC13
 0066FC05    sub         edi,4
 0066FC08    add         ecx,4
 0066FC0B    add         esi,4
 0066FC0E    cmp         edi,4
>0066FC11    jge         0066FBDA
 0066FC13    test        edi,edi
>0066FC15    jne         0066FC1B
 0066FC17    xor         eax,eax
>0066FC19    jmp         0066FC34
 0066FC1B    mov         al,byte ptr [ecx]
 0066FC1D    mov         dl,byte ptr [esi]
 0066FC1F    cmp         dl,al
>0066FC21    jne         0066FC28
 0066FC23    inc         ecx
 0066FC24    inc         esi
 0066FC25    dec         edi
>0066FC26    jne         0066FC1B
 0066FC28    xor         ecx,ecx
 0066FC2A    mov         cl,al
 0066FC2C    xor         eax,eax
 0066FC2E    mov         al,dl
 0066FC30    sub         ecx,eax
 0066FC32    mov         eax,ecx
 0066FC34    pop         edi
 0066FC35    pop         esi
 0066FC36    pop         ebp
 0066FC37    ret
end;*}

//0066FC38
{*function sub_0066FC38(?:?; ?:?; ?:?):?;
begin
 0066FC38    push        ebp
 0066FC39    mov         ebp,esp
 0066FC3B    push        ecx
 0066FC3C    push        ebx
 0066FC3D    push        esi
 0066FC3E    push        edi
 0066FC3F    mov         esi,dword ptr [ebp+8]
 0066FC42    mov         ebx,dword ptr [ebp+0C]
>0066FC45    jmp         0066FC6D
 0066FC47    movzx       edi,byte ptr [esi]
 0066FC4A    push        edi
 0066FC4B    call        0067636C
 0066FC50    pop         ecx
 0066FC51    push        eax
 0066FC52    xor         eax,eax
 0066FC54    mov         al,byte ptr [ebx]
 0066FC56    mov         dword ptr [ebp-4],eax
 0066FC59    mov         edx,dword ptr [ebp-4]
 0066FC5C    push        edx
 0066FC5D    call        0067636C
 0066FC62    pop         ecx
 0066FC63    pop         ecx
 0066FC64    xchg        eax,ecx
 0066FC65    sub         eax,ecx
 0066FC67    test        eax,eax
>0066FC69    jne         0066FC7A
 0066FC6B    inc         esi
 0066FC6C    inc         ebx
 0066FC6D    mov         edx,dword ptr [ebp+10]
 0066FC70    add         dword ptr [ebp+10],0FFFFFFFF
 0066FC74    test        edx,edx
>0066FC76    ja          0066FC47
 0066FC78    xor         eax,eax
 0066FC7A    pop         edi
 0066FC7B    pop         esi
 0066FC7C    pop         ebx
 0066FC7D    pop         ecx
 0066FC7E    pop         ebp
 0066FC7F    ret
end;*}

//0066FC80
{*function sub_0066FC80(?:?):?;
begin
 0066FC80    push        ebp
 0066FC81    mov         ebp,esp
 0066FC83    push        ebx
 0066FC84    push        esi
 0066FC85    push        edi
 0066FC86    mov         edi,dword ptr [ebp+8]
 0066FC89    push        edi
 0066FC8A    call        0066FAB4
 0066FC8F    pop         ecx
 0066FC90    mov         esi,eax
 0066FC92    inc         esi
 0066FC93    push        esi
 0066FC94    call        0066F2C8
 0066FC99    pop         ecx
 0066FC9A    mov         ebx,eax
 0066FC9C    test        eax,eax
>0066FC9E    je          0066FCAB
 0066FCA0    push        esi
 0066FCA1    push        edi
 0066FCA2    push        ebx
 0066FCA3    call        0066F894
 0066FCA8    add         esp,0C
 0066FCAB    mov         eax,ebx
 0066FCAD    pop         edi
 0066FCAE    pop         esi
 0066FCAF    pop         ebx
 0066FCB0    pop         ebp
 0066FCB1    ret
end;*}

//0066FCB4
{*function sub_0066FCB4(?:?; ?:?):?;
begin
 0066FCB4    push        ebp
 0066FCB5    mov         ebp,esp
 0066FCB7    push        ecx
 0066FCB8    push        ebx
 0066FCB9    push        esi
 0066FCBA    push        edi
>0066FCBB    jmp         0066FCC3
 0066FCBD    inc         dword ptr [ebp+8]
 0066FCC0    inc         dword ptr [ebp+0C]
 0066FCC3    mov         eax,dword ptr [ebp+8]
 0066FCC6    movsx       esi,byte ptr [eax]
 0066FCC9    push        esi
 0066FCCA    call        0067636C
 0066FCCF    mov         ebx,eax
 0066FCD1    mov         eax,dword ptr [ebp+0C]
 0066FCD4    pop         ecx
 0066FCD5    movsx       edi,byte ptr [eax]
 0066FCD8    push        edi
 0066FCD9    call        0067636C
 0066FCDE    pop         ecx
 0066FCDF    mov         byte ptr [ebp-1],al
 0066FCE2    cmp         bl,al
>0066FCE4    jne         0066FCEA
 0066FCE6    test        bl,bl
>0066FCE8    jne         0066FCBD
 0066FCEA    xor         eax,eax
 0066FCEC    xor         edx,edx
 0066FCEE    mov         dl,byte ptr [ebp-1]
 0066FCF1    mov         al,bl
 0066FCF3    sub         eax,edx
 0066FCF5    pop         edi
 0066FCF6    pop         esi
 0066FCF7    pop         ebx
 0066FCF8    pop         ecx
 0066FCF9    pop         ebp
 0066FCFA    ret
end;*}

//0066FCFC
{*function sub_0066FCFC(?:?; ?:?; ?:?):?;
begin
 0066FCFC    push        ebp
 0066FCFD    mov         ebp,esp
 0066FCFF    push        ebx
 0066FD00    push        esi
 0066FD01    push        edi
 0066FD02    mov         edi,dword ptr [ebp+0C]
 0066FD05    mov         esi,dword ptr [ebp+8]
 0066FD08    push        edi
 0066FD09    call        0066FAB4
 0066FD0E    pop         ecx
 0066FD0F    mov         ebx,eax
 0066FD11    cmp         ebx,dword ptr [ebp+10]
>0066FD14    jbe         0066FD26
 0066FD16    mov         eax,dword ptr [ebp+10]
 0066FD19    push        eax
 0066FD1A    push        edi
 0066FD1B    push        esi
 0066FD1C    call        0066F894
 0066FD21    add         esp,0C
>0066FD24    jmp         0066FD44
 0066FD26    push        ebx
 0066FD27    push        edi
 0066FD28    push        esi
 0066FD29    call        0066F894
 0066FD2E    add         esp,0C
 0066FD31    mov         edx,dword ptr [ebp+10]
 0066FD34    sub         edx,ebx
 0066FD36    add         ebx,esi
 0066FD38    push        edx
 0066FD39    push        0
 0066FD3B    push        ebx
 0066FD3C    call        0066F904
 0066FD41    add         esp,0C
 0066FD44    mov         eax,esi
 0066FD46    pop         edi
 0066FD47    pop         esi
 0066FD48    pop         ebx
 0066FD49    pop         ebp
 0066FD4A    ret
end;*}

//0066FD78
{*function sub_0066FD78(?:?; ?:?):?;
begin
 0066FD78    push        ebp
 0066FD79    mov         ebp,esp
 0066FD7B    push        ebx
 0066FD7C    push        esi
 0066FD7D    push        edi
 0066FD7E    mov         esi,dword ptr [ebp+0C]
 0066FD81    mov         eax,dword ptr [ebp+8]
 0066FD84    mov         ecx,eax
 0066FD86    cmp         byte ptr [esi],0
>0066FD89    je          0066FDC7
 0066FD8B    cmp         byte ptr [eax],0
>0066FD8E    jne         0066FDC0
 0066FD90    xor         eax,eax
>0066FD92    jmp         0066FDC7
 0066FD94    mov         dl,byte ptr [ecx]
 0066FD96    cmp         dl,byte ptr [esi]
>0066FD98    jne         0066FDBF
 0066FD9A    mov         edx,ecx
 0066FD9C    mov         eax,esi
>0066FD9E    jmp         0066FDA2
 0066FDA0    inc         eax
 0066FDA1    inc         edx
 0066FDA2    cmp         byte ptr [edx],0
>0066FDA5    je          0066FDB6
 0066FDA7    cmp         byte ptr [eax],0
>0066FDAA    je          0066FDB6
 0066FDAC    movsx       ebx,byte ptr [eax]
 0066FDAF    movsx       edi,byte ptr [edx]
 0066FDB2    sub         ebx,edi
>0066FDB4    je          0066FDA0
 0066FDB6    cmp         byte ptr [eax],0
>0066FDB9    jne         0066FDBF
 0066FDBB    mov         eax,ecx
>0066FDBD    jmp         0066FDC7
 0066FDBF    inc         ecx
 0066FDC0    cmp         byte ptr [ecx],0
>0066FDC3    jne         0066FD94
 0066FDC5    xor         eax,eax
 0066FDC7    pop         edi
 0066FDC8    pop         esi
 0066FDC9    pop         ebx
 0066FDCA    pop         ebp
 0066FDCB    ret
end;*}

//0066FDCC
{*function sub_0066FDCC(?:?; ?:?):?;
begin
 0066FDCC    push        ebp
 0066FDCD    mov         ebp,esp
 0066FDCF    push        ebx
 0066FDD0    push        esi
 0066FDD1    push        edi
 0066FDD2    mov         ebx,dword ptr [ebp+8]
 0066FDD5    call        00679ECC
 0066FDDA    mov         esi,eax
 0066FDDC    add         esi,18
 0066FDDF    test        ebx,ebx
>0066FDE1    jne         0066FDFD
 0066FDE3    mov         ebx,dword ptr [esi]
>0066FDE5    jmp         0066FDFD
 0066FDE7    mov         eax,dword ptr [ebp+0C]
>0066FDEA    jmp         0066FDF1
 0066FDEC    cmp         dl,byte ptr [ebx]
>0066FDEE    je          0066FDF7
 0066FDF0    inc         eax
 0066FDF1    mov         dl,byte ptr [eax]
 0066FDF3    test        dl,dl
>0066FDF5    jne         0066FDEC
 0066FDF7    cmp         byte ptr [eax],0
>0066FDFA    je          0066FE02
 0066FDFC    inc         ebx
 0066FDFD    cmp         byte ptr [ebx],0
>0066FE00    jne         0066FDE7
 0066FE02    cmp         byte ptr [ebx],0
>0066FE05    jne         0066FE0D
 0066FE07    mov         dword ptr [esi],ebx
 0066FE09    xor         eax,eax
>0066FE0B    jmp         0066FE35
 0066FE0D    mov         edi,ebx
>0066FE0F    jmp         0066FE2C
 0066FE11    mov         eax,dword ptr [ebp+0C]
>0066FE14    jmp         0066FE25
 0066FE16    cmp         dl,byte ptr [ebx]
>0066FE18    jne         0066FE24
 0066FE1A    mov         byte ptr [ebx],0
 0066FE1D    inc         ebx
 0066FE1E    mov         dword ptr [esi],ebx
 0066FE20    mov         eax,edi
>0066FE22    jmp         0066FE35
 0066FE24    inc         eax
 0066FE25    mov         dl,byte ptr [eax]
 0066FE27    test        dl,dl
>0066FE29    jne         0066FE16
 0066FE2B    inc         ebx
 0066FE2C    cmp         byte ptr [ebx],0
>0066FE2F    jne         0066FE11
 0066FE31    mov         dword ptr [esi],ebx
 0066FE33    mov         eax,edi
 0066FE35    pop         edi
 0066FE36    pop         esi
 0066FE37    pop         ebx
 0066FE38    pop         ebp
 0066FE39    ret
end;*}

//0066FE3C
{*procedure sub_0066FE3C(?:?; ?:?);
begin
 0066FE3C    push        ebp
 0066FE3D    mov         ebp,esp
 0066FE3F    mov         eax,dword ptr [ebp+8]
 0066FE42    mov         edx,dword ptr [ebp+0C]
 0066FE45    mov         cl,byte ptr [edx]
 0066FE47    mov         byte ptr [eax],cl
 0066FE49    test        cl,cl
>0066FE4B    je          0066FE71
 0066FE4D    inc         eax
 0066FE4E    mov         cl,byte ptr [edx+1]
 0066FE51    mov         byte ptr [eax],cl
 0066FE53    test        cl,cl
>0066FE55    je          0066FE71
 0066FE57    inc         eax
 0066FE58    mov         cl,byte ptr [edx+2]
 0066FE5B    mov         byte ptr [eax],cl
 0066FE5D    test        cl,cl
>0066FE5F    je          0066FE71
 0066FE61    inc         eax
 0066FE62    mov         cl,byte ptr [edx+3]
 0066FE65    add         edx,4
 0066FE68    mov         byte ptr [eax],cl
 0066FE6A    test        cl,cl
>0066FE6C    je          0066FE71
 0066FE6E    inc         eax
>0066FE6F    jmp         0066FE45
 0066FE71    pop         ebp
 0066FE72    ret
end;*}

//0066FE74
{*function sub_0066FE74(?:?):?;
begin
 0066FE74    push        ebp
 0066FE75    mov         ebp,esp
 0066FE77    xor         edx,edx
 0066FE79    mov         eax,dword ptr [ebp+8]
>0066FE7C    jmp         0066FE82
 0066FE7E    inc         edx
 0066FE7F    add         eax,2
 0066FE82    cmp         word ptr [eax],0
>0066FE86    jne         0066FE7E
 0066FE88    mov         eax,edx
 0066FE8A    pop         ebp
 0066FE8B    ret
end;*}

//0066FE8C
{*function sub_0066FE8C(?:?; ?:?):?;
begin
 0066FE8C    push        ebp
 0066FE8D    mov         ebp,esp
 0066FE8F    push        ebx
 0066FE90    push        esi
 0066FE91    mov         esi,dword ptr [ebp+0C]
 0066FE94    push        esi
 0066FE95    call        0066FE74
 0066FE9A    pop         ecx
 0066FE9B    mov         ebx,eax
 0066FE9D    xor         ecx,ecx
 0066FE9F    mov         eax,dword ptr [ebp+8]
 0066FEA2    mov         edx,eax
 0066FEA4    mov         eax,esi
 0066FEA6    cmp         ebx,ecx
>0066FEA8    jbe         0066FEBB
 0066FEAA    mov         si,word ptr [eax]
 0066FEAD    mov         word ptr [edx],si
 0066FEB0    inc         ecx
 0066FEB1    add         edx,2
 0066FEB4    add         eax,2
 0066FEB7    cmp         ebx,ecx
>0066FEB9    ja          0066FEAA
 0066FEBB    mov         eax,dword ptr [ebp+8]
 0066FEBE    mov         word ptr [eax+ebx*2],0
 0066FEC4    mov         eax,dword ptr [ebp+8]
 0066FEC7    pop         esi
 0066FEC8    pop         ebx
 0066FEC9    pop         ebp
 0066FECA    ret
end;*}

//0066FECC
{*procedure sub_0066FECC(?:?);
begin
 0066FECC    push        ebx
 0066FECD    mov         ebx,ebp
 0066FECF    add         ebx,dword ptr [eax+4]
 0066FED2    mov         dword ptr [ebx+8],eax
 0066FED5    lea         eax,[esp+8]
 0066FED9    mov         dword ptr [ebx+0C],eax
 0066FEDC    mov         dword ptr [ebx+4],66FF13
 0066FEE3    mov         word ptr [ebx+10],0
 0066FEE9    mov         word ptr [ebx+12],0
 0066FEEF    mov         dword ptr [ebx+1C],0
 0066FEF6    mov         eax,fs:[00000000]
 0066FEFB    mov         dword ptr [ebx],eax
 0066FEFD    mov         dword ptr fs:[0000],ebx
 0066FF03    pop         ebx
 0066FF04    ret
end;*}

//0066FF3C
{*function sub_0066FF3C(?:?; ?:?; ?:?; ?:?):?;
begin
 0066FF3C    push        ebp
 0066FF3D    mov         ebp,esp
 0066FF3F    add         esp,0FFFFFFF8
 0066FF42    push        ebx
 0066FF43    push        esi
 0066FF44    push        edi
 0066FF45    mov         edi,dword ptr [ebp+0C]
 0066FF48    test        byte ptr [edi+4],1
>0066FF4C    jne         0066FF65
 0066FF4E    push        13B
 0066FF53    push        6E543E
 0066FF58    push        6E5427
 0066FF5D    call        00678AD8
 0066FF62    add         esp,0C
 0066FF65    mov         eax,dword ptr [ebp+8]
 0066FF68    test        byte ptr [eax+4],1
>0066FF6C    jne         0066FF85
 0066FF6E    push        13C
 0066FF73    push        6E5460
 0066FF78    push        6E5449
 0066FF7D    call        00678AD8
 0066FF82    add         esp,0C
 0066FF85    mov         edx,dword ptr [ebp+8]
 0066FF88    test        byte ptr [edx+0C],4
>0066FF8C    jne         0066FFA5
 0066FF8E    push        13E
 0066FF93    push        6E5491
 0066FF98    push        6E546B
 0066FF9D    call        00678AD8
 0066FFA2    add         esp,0C
 0066FFA5    mov         ecx,dword ptr [ebp+8]
 0066FFA8    movzx       ebx,word ptr [ecx+12]
 0066FFAC    add         ebx,dword ptr [ebp+8]
 0066FFAF    mov         esi,dword ptr [ebx]
 0066FFB1    test        esi,esi
>0066FFB3    je          0067001C
 0066FFB5    test        byte ptr [ebx+8],8
>0066FFB9    jne         00670017
 0066FFBB    cmp         dword ptr [ebp+14],0
>0066FFBF    je          0066FFCC
 0066FFC1    mov         eax,dword ptr [ebx+8]
 0066FFC4    and         eax,3
 0066FFC7    cmp         eax,3
>0066FFCA    je          0066FFD0
 0066FFCC    xor         edx,edx
>0066FFCE    jmp         0066FFD5
 0066FFD0    mov         edx,1
 0066FFD5    mov         dword ptr [ebp-4],edx
 0066FFD8    push        esi
 0066FFD9    push        edi
 0066FFDA    call        00670474
 0066FFDF    add         esp,8
 0066FFE2    test        eax,eax
>0066FFE4    je          0066FFF6
 0066FFE6    cmp         dword ptr [ebp-4],0
>0066FFEA    je          0066FFF6
 0066FFEC    mov         eax,1
>0066FFF1    jmp         0067008C
 0066FFF6    test        byte ptr [esi+0C],4
>0066FFFA    je          00670017
 0066FFFC    push        dword ptr [ebp-4]
 0066FFFF    push        dword ptr [ebp+10]
 00670002    push        edi
 00670003    push        esi
 00670004    call        0066FF3C
 00670009    add         esp,10
 0067000C    test        eax,eax
>0067000E    je          00670017
 00670010    mov         eax,1
>00670015    jmp         0067008C
 00670017    add         ebx,0C
>0067001A    jmp         0066FFAF
 0067001C    mov         edx,dword ptr [ebp+8]
 0067001F    movzx       ebx,word ptr [edx+10]
 00670023    add         ebx,dword ptr [ebp+8]
 00670026    mov         esi,dword ptr [ebx]
 00670028    test        esi,esi
>0067002A    je          0067008A
 0067002C    cmp         dword ptr [ebp+14],0
>00670030    je          0067003D
 00670032    mov         eax,dword ptr [ebx+8]
 00670035    and         eax,3
 00670038    cmp         eax,3
>0067003B    je          00670041
 0067003D    xor         edx,edx
>0067003F    jmp         00670046
 00670041    mov         edx,1
 00670046    mov         dword ptr [ebp-8],edx
 00670049    push        esi
 0067004A    push        edi
 0067004B    call        00670474
 00670050    add         esp,8
 00670053    test        eax,eax
>00670055    je          00670064
 00670057    cmp         dword ptr [ebp-8],0
>0067005B    je          00670064
 0067005D    mov         eax,1
>00670062    jmp         0067008C
 00670064    test        byte ptr [esi+0C],4
>00670068    je          00670085
 0067006A    push        dword ptr [ebp-8]
 0067006D    push        dword ptr [ebp+10]
 00670070    push        edi
 00670071    push        esi
 00670072    call        0066FF3C
 00670077    add         esp,10
 0067007A    test        eax,eax
>0067007C    je          00670085
 0067007E    mov         eax,1
>00670083    jmp         0067008C
 00670085    add         ebx,0C
>00670088    jmp         00670026
 0067008A    xor         eax,eax
 0067008C    pop         edi
 0067008D    pop         esi
 0067008E    pop         ebx
 0067008F    pop         ecx
 00670090    pop         ecx
 00670091    pop         ebp
 00670092    ret
end;*}

//006700E6
{*function sub_006700E6(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 006700E6    push        ebp
 006700E7    mov         ebp,esp
 006700E9    add         esp,0FFFFFFE8
 006700EC    xor         eax,eax
 006700EE    xor         edx,edx
 006700F0    xor         ecx,ecx
 006700F2    push        ebx
 006700F3    push        esi
 006700F4    push        edi
 006700F5    mov         dword ptr [ebp-8],eax
 006700F8    mov         dword ptr [ebp-0C],edx
 006700FB    mov         dword ptr [ebp-10],ecx
 006700FE    cmp         dword ptr [ebp+0C],0
>00670102    je          0067010D
 00670104    mov         eax,dword ptr [ebp+0C]
 00670107    test        byte ptr [eax+4],1
>0067010B    jne         00670124
 0067010D    push        34F
 00670112    push        6E5505
 00670117    push        6E54D7
 0067011C    call        00678AD8
 00670121    add         esp,0C
 00670124    cmp         dword ptr [ebp+14],0
>00670128    je          00670133
 0067012A    mov         edx,dword ptr [ebp+14]
 0067012D    test        byte ptr [edx+4],1
>00670131    jne         0067014A
 00670133    push        350
 00670138    push        6E553E
 0067013D    push        6E5510
 00670142    call        00678AD8
 00670147    add         esp,0C
 0067014A    cmp         dword ptr [ebp+1C],0
>0067014E    je          00670170
 00670150    mov         ecx,dword ptr [ebp+1C]
 00670153    test        byte ptr [ecx+4],1
>00670157    jne         00670170
 00670159    push        351
 0067015E    push        6E5577
 00670163    push        6E5549
 00670168    call        00678AD8
 0067016D    add         esp,0C
 00670170    cmp         dword ptr [ebp+1C],0
>00670174    je          006701B8
 00670176    push        dword ptr [ebp+14]
 00670179    push        dword ptr [ebp+1C]
 0067017C    call        00670474
 00670181    add         esp,8
 00670184    test        eax,eax
>00670186    je          0067019F
 00670188    push        355
 0067018D    push        6E55AC
 00670192    push        6E5582
 00670197    call        00678AD8
 0067019C    add         esp,0C
 0067019F    push        dword ptr [ebp+0C]
 006701A2    push        dword ptr [ebp+1C]
 006701A5    call        00670474
 006701AA    add         esp,8
 006701AD    test        eax,eax
>006701AF    je          006701B8
 006701B1    xor         eax,eax
>006701B3    jmp         00670346
 006701B8    cmp         dword ptr [ebp+14],0
>006701BC    je          006701D0
 006701BE    push        dword ptr [ebp+14]
 006701C1    push        dword ptr [ebp+0C]
 006701C4    call        00670474
 006701C9    add         esp,8
 006701CC    test        eax,eax
>006701CE    je          006701E7
 006701D0    push        35B
 006701D5    push        6E55F3
 006701DA    push        6E55B7
 006701DF    call        00678AD8
 006701E4    add         esp,0C
 006701E7    mov         edx,dword ptr [ebp+0C]
 006701EA    test        byte ptr [edx+0C],4
>006701EE    jne         006701F7
 006701F0    xor         eax,eax
>006701F2    jmp         00670346
 006701F7    xor         edx,edx
 006701F9    mov         dword ptr [ebp-4],edx
 006701FC    mov         ecx,dword ptr [ebp+0C]
 006701FF    movzx       ebx,word ptr [ecx+12]
 00670203    add         ebx,dword ptr [ebp+0C]
 00670206    mov         edi,dword ptr [ebx]
 00670208    test        edi,edi
>0067020A    je          00670318
 00670210    test        byte ptr [ebx+8],8
>00670214    jne         00670310
 0067021A    cmp         dword ptr [ebp+24],0
>0067021E    je          0067022B
 00670220    mov         eax,dword ptr [ebx+8]
 00670223    and         eax,3
 00670226    cmp         eax,3
>00670229    je          0067022F
 0067022B    xor         edx,edx
>0067022D    jmp         00670234
 0067022F    mov         edx,1
 00670234    mov         dword ptr [ebp-14],edx
 00670237    mov         esi,dword ptr [ebp+8]
 0067023A    mov         eax,dword ptr [ebp+28]
 0067023D    add         esi,dword ptr [ebx+4]
 00670240    mov         dword ptr [ebp-18],eax
 00670243    test        byte ptr [ebx+8],4
>00670247    je          0067024E
 00670249    mov         esi,dword ptr [esi]
 0067024B    mov         dword ptr [ebp-18],edi
 0067024E    push        edi
 0067024F    push        dword ptr [ebp+14]
 00670252    call        00670474
 00670257    add         esp,8
 0067025A    test        eax,eax
>0067025C    jne         0067029D
 0067025E    test        byte ptr [edi+0C],4
>00670262    je          00670310
 00670268    push        dword ptr [ebp-18]
 0067026B    push        dword ptr [ebp-14]
 0067026E    push        dword ptr [ebp+20]
 00670271    push        dword ptr [ebp+1C]
 00670274    push        dword ptr [ebp+18]
 00670277    push        dword ptr [ebp+14]
 0067027A    push        dword ptr [ebp+10]
 0067027D    push        edi
 0067027E    push        esi
 0067027F    call        006700E6
 00670284    add         esp,24
 00670287    test        eax,eax
>00670289    je          00670310
 0067028F    mov         esi,eax
 00670291    mov         eax,dword ptr [ebp+20]
 00670294    mov         edx,dword ptr [eax]
 00670296    mov         dword ptr [ebp-14],edx
>00670299    jmp         006702F1
>0067029B    jmp         00670310
 0067029D    cmp         dword ptr [ebp+10],0
>006702A1    je          006702AF
 006702A3    cmp         esi,dword ptr [ebp+10]
>006702A6    jne         00670310
 006702A8    mov         eax,esi
>006702AA    jmp         00670346
 006702AF    cmp         dword ptr [ebp+18],0
>006702B3    je          006702F1
 006702B5    cmp         dword ptr [ebp+1C],0
>006702B9    jne         006702D2
 006702BB    push        3D0
 006702C0    push        6E5608
 006702C5    push        6E55FE
 006702CA    call        00678AD8
 006702CF    add         esp,0C
 006702D2    push        0
 006702D4    push        0
 006702D6    push        dword ptr [ebp+20]
 006702D9    push        0
 006702DB    push        0
 006702DD    push        dword ptr [ebp+1C]
 006702E0    push        dword ptr [ebp+18]
 006702E3    push        edi
 006702E4    push        esi
 006702E5    call        006700E6
 006702EA    add         esp,24
 006702ED    test        eax,eax
>006702EF    je          00670310
 006702F1    cmp         dword ptr [ebp-10],0
>006702F5    je          00670304
 006702F7    cmp         esi,dword ptr [ebp-0C]
>006702FA    jne         00670304
 006702FC    mov         edx,dword ptr [ebp-14]
 006702FF    or          dword ptr [ebp-8],edx
>00670302    jmp         00670310
 00670304    inc         dword ptr [ebp-10]
 00670307    mov         dword ptr [ebp-0C],esi
 0067030A    mov         ecx,dword ptr [ebp-14]
 0067030D    mov         dword ptr [ebp-8],ecx
 00670310    add         ebx,0C
>00670313    jmp         00670206
 00670318    cmp         dword ptr [ebp-4],0
>0067031C    jne         00670330
 0067031E    inc         dword ptr [ebp-4]
 00670321    mov         eax,dword ptr [ebp+0C]
 00670324    movzx       ebx,word ptr [eax+10]
 00670328    add         ebx,dword ptr [ebp+0C]
>0067032B    jmp         00670206
 00670330    mov         eax,dword ptr [ebp+20]
 00670333    mov         edx,dword ptr [ebp-8]
 00670336    mov         dword ptr [eax],edx
 00670338    cmp         dword ptr [ebp-10],1
>0067033C    je          00670343
 0067033E    xor         ecx,ecx
 00670340    mov         dword ptr [ebp-0C],ecx
 00670343    mov         eax,dword ptr [ebp-0C]
 00670346    pop         edi
 00670347    pop         esi
 00670348    pop         ebx
 00670349    mov         esp,ebp
 0067034B    pop         ebp
 0067034C    ret
end;*}

//0067034D
{*function sub_0067034D(?:?; ?:?; ?:?; ?:?):?;
begin
 0067034D    push        ebp
 0067034E    mov         ebp,esp
 00670350    push        ecx
 00670351    push        ebx
 00670352    push        esi
 00670353    push        edi
 00670354    mov         edi,dword ptr [ebp+14]
 00670357    mov         esi,dword ptr [ebp+8]
 0067035A    cmp         dword ptr [edi],0
>0067035D    jne         00670376
 0067035F    push        515
 00670364    push        6E564A
 00670369    push        6E5645
 0067036E    call        00678AD8
 00670373    add         esp,0C
 00670376    mov         ebx,dword ptr [esi]
 00670378    test        ebx,ebx
>0067037A    jne         00670380
 0067037C    xor         eax,eax
>0067037E    jmp         006703E9
 00670380    mov         edx,dword ptr [edi]
 00670382    add         edx,dword ptr [esi+4]
 00670385    mov         dword ptr [ebp-4],edx
 00670388    cmp         dword ptr [ebp+0C],0
>0067038C    je          00670396
 0067038E    mov         ecx,dword ptr [ebp-4]
 00670391    mov         eax,dword ptr [ecx]
 00670393    mov         dword ptr [ebp-4],eax
 00670396    push        dword ptr [ebp+10]
 00670399    push        ebx
 0067039A    call        00670474
 0067039F    add         esp,8
 006703A2    test        eax,eax
>006703A4    je          006703B2
 006703A6    mov         edx,dword ptr [ebp-4]
 006703A9    mov         eax,1
 006703AE    mov         dword ptr [edi],edx
>006703B0    jmp         006703E9
 006703B2    test        byte ptr [ebx+4],2
>006703B6    je          006703E4
 006703B8    movzx       eax,word ptr [ebx+10]
 006703BC    add         eax,ebx
 006703BE    test        eax,eax
>006703C0    je          006703E4
 006703C2    lea         edx,[ebp-4]
 006703C5    push        edx
 006703C6    push        dword ptr [ebp+10]
 006703C9    push        0
 006703CB    push        eax
 006703CC    call        0067034D
 006703D1    add         esp,10
 006703D4    test        eax,eax
>006703D6    je          006703E4
 006703D8    mov         ecx,dword ptr [ebp-4]
 006703DB    mov         eax,1
 006703E0    mov         dword ptr [edi],ecx
>006703E2    jmp         006703E9
 006703E4    add         esi,0C
>006703E7    jmp         00670376
 006703E9    pop         edi
 006703EA    pop         esi
 006703EB    pop         ebx
 006703EC    pop         ecx
 006703ED    pop         ebp
 006703EE    ret
end;*}

end.